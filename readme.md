# GK environment configuration files

## Dependencies
 - VirtualBox
 - __GK-DEV.ova__ VM image with the environment

## Directoty structure
 - `clone` 4 theme repositories form `jelocartel/...`

## Running in VBOX
 - go to `Settings` -> `Network` and set `Attached to` to `Bridged Adapter`
 - add all 4 directories to `Shared Folders` with __exact same names__ as their repo names
 - turn __VBox__ off, it will not be needed anymore
 - run `./runGK.sh` script from the command line
 - log into the dev environment
 - run `./zamontuj` script to mount shared folders from local machine
