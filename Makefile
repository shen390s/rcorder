#       $NetBSD: Makefile,v 1.1 1999/11/23 05:28:20 mrg Exp $
# $FreeBSD: stable/8/sbin/rcorder/Makefile 154821 2006-01-25 16:34:33Z dougb $

PROG=   rcorder
SRCS=   ealloc.c hash.c rcorder.c
MAN=	rcorder.8

.c.o:
	$(CC) -g -c -o $@ `./scripts/genflags compile` $<

$(PROG): $(SRCS:.c=.o)
	$(CC) -g -o $@ `./scripts/genflags link` $(SRCS:.c=.o)

clean:
	$(RM) -Rf *.o *~ $(PROG)
