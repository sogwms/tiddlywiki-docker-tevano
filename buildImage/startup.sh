#!/usr/bin/env sh

wikiDataDirPath=/wiki


if [ ! -f "${wikiDataDirPath}/tiddlywiki.info" ]; then
    echo "Deteced empty wiki. Init..."
    tiddlywiki $wikiDataDirPath --init server
fi


mtw="tiddlywiki ${wikiDataDirPath}"
cmd=""

if [ "$CUSTOM" ]; then
    echo "Using custom(part) way to startup..."
    cmd="${mtw} --listen host=0.0.0.0 $CUSTOM"
elif [ "$CUSTOM_ALL" ]; then
    echo "Using custom(all) way to startup..."
    cmd="${mtw} $CUSTOM_ALL "
else
    echo "Using default way to startup..."
    cmd="${mtw} --listen host=0.0.0.0"
fi


echo "Run: ${cmd}"
$cmd



