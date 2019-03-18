#!/bin/sh

# Note: be careful to adjust the bitrate in the GRC script as well.
if [ ! -f stream.fifo ]; then
    mkfifo stream.fifo
fi

while true; do
    mpg123 -r 44100 -b 10  -s  http://maxxima.mine.nu:8000 > stream.fifo
done
