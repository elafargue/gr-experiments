# gr-experiments

A set of GNURadio programs

Dependencies:

- gr-rds
- gr-ncrs5

## stream.sh

This creates a fifo and streams a radio station to this fifo. The audio data can then be consumed by the GNURadio flow graphs below:

## fm-stereo-rds-tx.grc

A full featured broadcast FM transmitter including stereo and RDS encoding.

Note that the RDS encoding is not very sophisticated at this stage, but you can update the name of the station during broadcasting. Note that it takes a long time (up to 20 seconds) for the updated PS to actually be broadcast.

## fm-stereo-tx.grc

A simple FM stereo transmitter, without RDS.

## hdradio-tx.grc

A HD Radio transmitter.

## Notes

If you find the GUI flickering on MacOS Mojave, edit ~/.gnuradio/config.conf and add:

`
[qtgui]
style = native
`