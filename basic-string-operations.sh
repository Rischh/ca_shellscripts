#!/bin/zsh

BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."

ISAY=${BUFFETT}
ISAY=${ISAY[@]/snow/foot}
ISAY=${ISAY[@]/snow/}
ISAY=${ISAY[@]/finding/getting} 

WORD='w'

#With expr index command (not possible on zsh)            
#POS=`expr index "$ISAY" "$WORD"`

POS=${ISAY[(i)[$WORD]]}

DELETED_CHARACTER=${ISAY:$POS+3}

ISAY=${ISAY[@]/$DELETED_CHARACTER/}

echo "Warren Buffett said:"
echo $BUFFETT
echo
echo "and I say:"
echo $ISAY
