.PHONY: clean all checker

OCB=ocamlbuild
OCB_OPT=-use-ocamlfind -j 4

all: checker votour

checker:
	$(OCB) $(OCB_OPT) main.native

votour:
	$(OCB) $(OCB_OPT) votour.native

clean:
	$(OCB) $(OCB_OPT) -clean
