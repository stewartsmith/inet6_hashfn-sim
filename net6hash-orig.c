/* for rand */
#include <stdlib.h>

/* For struct in6_addr */
#include <linux/in6.h>

#define __force

#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))

typedef unsigned short __u16;
typedef __u16 u16;
typedef __u16 __be16;
typedef unsigned int   u32;
typedef unsigned int   __u32;
typedef __u32 __be32;
/* Pretend config... matching x86-64 and arm64 */
#define CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
#define BITS_PER_LONG 64

/* From include/linux/bitops.h */
/**
 * rol32 - rotate a 32-bit value left
 * @word: value to rotate
 * @shift: bits to roll
 */
static inline __u32 rol32(__u32 word, unsigned int shift)
{
	return (word << (shift & 31)) | (word >> ((-shift) & 31));
}

/* from include/linux/jhash.h */
/* __jhash_mix -- mix 3 32-bit values reversibly. */
#define __jhash_mix(a, b, c)			\
{						\
	a -= c;  a ^= rol32(c, 4);  c += b;	\
	b -= a;  b ^= rol32(a, 6);  a += c;	\
	c -= b;  c ^= rol32(b, 8);  b += a;	\
	a -= c;  a ^= rol32(c, 16); c += b;	\
	b -= a;  b ^= rol32(a, 19); a += c;	\
	c -= b;  c ^= rol32(b, 4);  b += a;	\
}
/* __jhash_final - final mixing of 3 32-bit values (a,b,c) into c */
#define __jhash_final(a, b, c)			\
{						\
	c ^= b; c -= rol32(b, 14);		\
	a ^= c; a -= rol32(c, 11);		\
	b ^= a; b -= rol32(a, 25);		\
	c ^= b; c -= rol32(b, 16);		\
	a ^= c; a -= rol32(c, 4);		\
	b ^= a; b -= rol32(a, 14);		\
	c ^= b; c -= rol32(b, 24);		\
}

/* An arbitrary initial parameter */
#define JHASH_INITVAL		0xdeadbeef

/* __jhash_nwords - hash exactly 3, 2 or 1 word(s) */
static inline u32 __jhash_nwords(u32 a, u32 b, u32 c, u32 initval)
{
	a += initval;
	b += initval;
	c += initval;

	__jhash_final(a, b, c);

	return c;
}

static inline u32 jhash_3words(u32 a, u32 b, u32 c, u32 initval)
{
	return __jhash_nwords(a, b, c, initval + JHASH_INITVAL + (3 << 2));
}


/* Pretend struct net from include/net/net_namespace.h */
struct net {
  u32 hash_mix;
};

#define get_random_once(a,b) if (!*a) *a = rand()

/* From include/linux/net.h */
#define net_get_random_once(buf, nbytes)			\
	get_random_once((buf), (nbytes))

/* From include/linux/cache.h */
#ifndef __read_mostly
#define __read_mostly
#endif


/* From include/net/netns/hash.h */
static inline u32 net_hash_mix(const struct net *net)
{
	return net->hash_mix;
}

/* From include/net/inet_sock.h */

/* From include/net/inet6_hashtables.h */
static inline unsigned int __inet6_ehashfn(const u32 lhash,
				    const u16 lport,
				    const u32 fhash,
				    const __be16 fport,
				    const u32 initval)
{
	const u32 ports = (((u32)lport) << 16) | (__force u32)fport;
	return jhash_3words(lhash, fhash, ports, initval);
}

/* From include/net/ipv6.h */
/* more secured version of ipv6_addr_hash() */
static inline u32 __ipv6_addr_jhash(const struct in6_addr *a, const u32 initval)
{
	u32 v = (__force u32)a->s6_addr32[0] ^ (__force u32)a->s6_addr32[1];

	return jhash_3words(v,
			    (__force u32)a->s6_addr32[2],
			    (__force u32)a->s6_addr32[3],
			    initval);
}

u32 inet6_ehashfn(const struct net *net,
 const u32 inet6_ehash_secret, const u32 ipv6_hash_secret,
		  const struct in6_addr *laddr, const u16 lport,
		  const struct in6_addr *faddr, const __be16 fport);

/* From net/ipv6/inet6_hashtables.c */
u32 inet6_ehashfn(const struct net *net,
 const u32 inet6_ehash_secret, const u32 ipv6_hash_secret,
		  const struct in6_addr *laddr, const u16 lport,
		  const struct in6_addr *faddr, const __be16 fport)
{
	u32 lhash, fhash;

	lhash = (__force u32)laddr->s6_addr32[3];
	fhash = __ipv6_addr_jhash(faddr, ipv6_hash_secret);

	return __inet6_ehashfn(lhash, lport, fhash, fport,
			       inet6_ehash_secret + net_hash_mix(net));
}
