# inet6_hashfn-sim: Testing out some sims for Linux's inet6_hashfn()

All trying to make https://lore.kernel.org/netdev/CANn89i+6d9K1VwNK1Joc-Yb_4jAfV_YFzk=z_K2_Oy+xJHSn_g@mail.gmail.com/T/ result in the right decision.

Idea is to use `llvm-mca` to simulate what a processor is going to do, to save the pain of having to do a lot of real-world work first.

`llvm-mca` will for a given set of assembly, simulate what a particular core will do, giving an idea on the number of cycles that could be involved.

Obviously a lot better for code that is a static sequence rather than dependent on input that cannot be modelled here.

# Where is this code from?

This is nearly all copy&paste from torvalds/linux.git circa v6.4

# Running it

./doit.sh was used to generate the output 
