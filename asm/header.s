.section .data

.word 0x80371240       /* PI BSB Domain 1 register */
.word 0x0000000F       /* Clockrate setting */
.word 0x80000400       /* Entrypoint address */
.word 0x00001449       /* Revision */
.word 0xDEE596AB       /* Checksum 1 */
.word 0xAF3B7AE7       /* Checksum 2 */
.word 0x00000000       /* Unknown 1 */
.word 0x00000000       /* Unknown 2 */
.ascii "WCW / nWo  REVENGE  " /* Internal name */
.word 0x00000000       /* Unknown 3 */
.word 0x0000004E       /* Cartridge */
.ascii "W2"            /* Cartridge ID */
.ascii "E"             /* Country code */
.byte 0x00             /* Version */
