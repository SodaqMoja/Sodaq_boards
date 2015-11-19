# SODAQ boards

These are the files to integrate the SODAQ boards into the Arduino Boards
Manager.  As of Arduino IDE version 1.6.4 you can add them at File >
Preferences > Additional Boards Manager URLs.  Add the following URL
`http://downloads.sodaq.net/package_sodaq_index.json`

In this package we have the following boards
* SODAQ Autonomo
* SODAQ Mbili
* SODAQ Ndogo
* SODAQ Tatu
* SODAQ Moja (obsolete, just added for completeness)

The repository is mainly to manage the JSON file.  There are two extra
repositories (see below) for a SAMD and AVR Core files.

# SodaqCore-samd

The Core files for the SAMD boards is maintained in a separate GIT
repository at
`http://github.com/SodaqMoja/SodaqCore-samd.git`

# SodaqCore-avr

The Core files for the AVR boards is maintained in a separate GIT
repository at
`http://github.com/SodaqMoja/SodaqCore-avr.git`
