/* End of the stack */
_estack = 0x24080000;

MEMORY {
    /* Flash memory (position and size) */
    FLASH  (rx): ORIGIN = 0x08000000, LENGTH = 1024K
    RAM    (rw): ORIGIN = 0x24000000, LENGTH = 512K 
}