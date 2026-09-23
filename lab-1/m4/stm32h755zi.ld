/* End of the stack */
_estack = 0x30020000;

MEMORY {
    /* Flash memory (position and size) */
    FLASH  (rx): ORIGIN = 0x08100000, LENGTH = 1024K
    RAM    (rw): ORIGIN = 0x30000000, LENGTH = 128K
}