@802A6710

lis r3, 0x817F
ori r3, r3, 0x0100
li r0, 0
stw r0, 12(r3)
li r0, 1
stb r0, 1(r3)
lwz r5, -0x6060(r13)
lbz r4, 0x12(r31)
cmpwi r4, 1
bgt- done
stb r0, 0(r3)

checkNextStage:

lbz r4, 7(r5)
andi. r0, r4, 0x1
beq+ 0xC
li r4, 0x3400
b loadStage
lbz r4, 6(r5)
andi. r0, r4, 0x80
beq+ 0xC
li r4, 0x906
b loadStage
andi. r0, r4, 0x40
beq+ 0xC
li r4, 0x905
b loadStage
andi. r0, r4, 0x20
beq+ 0xC
li r4, 0x904
b loadStage
andi. r0, r4, 0x10
beq+ 0xC
li r4, 0x903
b loadStage
andi. r0, r4, 0x8
beq+ 0xC
li r4, 0x902
b loadStage
andi. r0, r4, 0x4
beq+ 0xC
li r4, 0x901
b loadStage
lbz r4, 5(r5)
andi. r0, r4, 0x40
beq+ 0xC
li r4, 0x900
b loadStage
andi. r0, r4, 0x20
beq+ 0xC
li r4, 0x606
b loadStage
andi. r0, r4, 0x10
beq+ 0xC
li r4, 0x605
b loadStage
andi. r0, r4, 0x8
beq+ 0xC
li r4, 0x604
b loadStage
andi. r0, r4, 0x4
beq+ 0xC
li r4, 0x603
b loadStage
andi. r0, r4, 0x2
beq+ 0xC
li r4, 0x602
b loadStage
andi. r0, r4, 0x1
beq+ 0xC
li r4, 0x601
b loadStage
lbz r4, 0(r5)
andi. r0, r4, 0x40
beq+ 0xC
li r4, 0x600
b loadStage
andi. r0, r4, 0x20
beq+ 0xC
li r4, 0x206
b loadStage
lbz r4, 2(r5)
andi. r0, r4, 0x1
beq+ 0xC
li r4, 0x205
b loadStage
lbz r4, 1(r5)
andi. r0, r4, 0x80
beq+ 0xC
li r4, 0x306
b loadStage
andi. r0, r4, 0x40
beq+ 0xC
li r4, 0x305
b loadStage
andi. r0, r4, 0x20
beq+ 0xC
li r4, 0x304
b loadStage
andi. r0, r4, 0x10
beq+ 0xC
li r4, 0x303
b loadStage
andi. r0, r4, 0x8
beq+ 0xC
li r4, 0x302
b loadStage
andi. r0, r4, 0x4
beq+ 0xC
li r4, 0x301
b loadStage
lbz r4, 4(r5)
andi. r0, r4, 0x10
beq+ 0xC
li r4, 0x300
b loadStage
andi. r0, r4, 0x8
beq+ 0xC
li r4, 0x506
b loadStage
andi. r0, r4, 0x2
beq+ 0xC
li r4, 0x502
b loadStage
andi. r0, r4, 0x1
beq+ 0xC
li r4, 0x503
b loadStage
lbz r4, 3(r5)
andi. r0, r4, 0x80
beq+ 0xC
li r4, 0x502
b loadStage
andi. r0, r4, 0x40
beq+ 0xC
li r4, 0x501
b loadStage
lbz r4, 8(r5)
andi. r0, r4, 0x4
beq+ 0xC
li r4, 0x500
b loadStage
lbz r4, 7(r5)
andi. r0, r4, 0x80
beq+ 0xC
li r4, 0x806
b loadStage
lbz r4, 8(r5)
andi. r0, r4, 0x1
beq+ 0xC
li r4, 0x805
b loadStage
lbz r4, 7(r5)
andi. r0, r4, 0x20
beq+ 0xC
li r4, 0x804
b loadStage
andi. r0, r4, 0x40
beq+ 0xC
li r4, 0x803
b loadStage
lbz r4, 8(r5)
andi. r0, r4, 0x2
beq+ 0xC
li r4, 0x802
b loadStage
lbz r4, 7(r5)
andi. r0, r4, 0x10
beq+ 0xC
li r4, 0x801
b loadStage
lbz r4, 3(r5)
andi. r0, r4, 0x4
beq+ 0xC
li r4, 0x800
b loadStage
andi. r0, r4, 0x8
beq+ 0xC
li r4, 0x406
b loadStage
lbz r4, 0(r5)
andi. r0, r4, 0x10
beq+ 0xC
li r4, 0x400
b loadStage
andi. r0, r4, 0x8
beq+ 0xC
li r4, 0x204
b loadStage
andi. r0, r4, 0x4
beq+ 0xC
li r4, 0x203
b loadStage
andi. r0, r4, 0x2
beq+ 0xC
li r4, 0x202
b loadStage
li r4, 0x200

loadStage:

sth r4, 0x12(r31)
stb r4, 0xDF(r5)

done:

lwz r3,32(r31)