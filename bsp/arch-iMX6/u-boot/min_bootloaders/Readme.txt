The i.MX6DQ Sabre-Lite can only boot from a SPI NOR as the boot mode is fixed by fuses instead of boot pins.

The SPI NOR to uSDHC loader is a tiny piece of code that makes the i.MX6DQ re-boot in SD mode from the default SPI NOR.
Therefore, this transparent step makes the Sabre-Lite bootable from SD. 

***************************
*** Program the SPI NOR ***
***************************

(1) Program the SPI NOR with the appropriate binary (uSDHC3 or uSDHC4) like programming a u-boot.
This first step is typically done only once as later only SD boot is used.
(2) Program a u-boot in a SD card (micro SD for slot 3 or normal size for slot 4).
(3) Set the boot mode to 00 - fuse boot.
(4) Power on the board, and that's all.
