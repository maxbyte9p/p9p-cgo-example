export CC=gcc
export CGO_CFLAGS="-O2 \
	-Wall \
	-Wno-parentheses \
	-Wno-missing-braces \
	-Wno-switch -Wno-comment \
	-Wno-sign-compare -Wno-unknown-pragmas \
	-Wno-misleading-indentation \
	-Wno-stringop-truncation \
	-Wno-stringop-overflow \
	-Wno-format-truncation \
	-fno-omit-frame-pointer \
	-fcommon -ggdb -I${PLAN9}/include"
export CGO_LDFLAGS="-L${PLAN9}/lib -l9 -lm -lutil -lresolv -lpthread"

go build

