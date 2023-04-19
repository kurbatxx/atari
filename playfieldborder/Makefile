all:
	mkdir -p build
	dasm *.asm -f3 -v0 -obuild/cart.bin -lbuild/cart.lst -sbuild/cart.sym

run:
	stella build/cart.bin