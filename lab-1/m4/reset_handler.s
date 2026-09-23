.syntax unified
.cpu cortex-m7
.fpu softvfp
.thumb

.global vector_table
.global reset_handler

.type vector_table, %object
vector_table:
    .word _estack
    .word reset_handler
.size vector_table, .-vector_table

.type reset_handler, %function
reset_handler:
    ldr r0, =_estack
    mov sp, r0

    ldr r7, =0x00FACADE

    movs r1, #0

main_loop:
    adds r1, #1

    b main_loop

.size reset_handler, .-reset_handler