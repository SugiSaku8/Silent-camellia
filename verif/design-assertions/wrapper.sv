
`include "defines.svh"
`include "rvfi_macros.vh"

//
// module: design_assertions_wrapper
//
//  Wraps the core in the required assumptions and trivial logic needed to
//  interface with the designer assertions proof environment.
//
module design_assertions_wrapper (
	input clock,
	input reset,
);

//
// Common core parameters and constants.
`include "core_common.svh"

// Base address of the memory mapped IO region.
parameter   MMIO_BASE_ADDR  = 64'h0000_0000_0000_1000;
parameter   MMIO_BASE_MASK  = 64'h0000_0000_0000_1FFF;

(*keep*)      wire                 g_resetn     = !reset;
(*keep*)      
(*keep*)      wire                 imem_req     ; // Mem request
(*keep*)      wire [ MEM_ADDR_R:0] imem_addr    ; // Mem request address
(*keep*)      wire                 imem_wen     ; // Mem request write enable
(*keep*)      wire [ MEM_STRB_R:0] imem_strb    ; // Mem request write strobe
(*keep*)      wire [ MEM_DATA_R:0] imem_wdata   ; // Mem write data.
(*keep*) rand reg                  imem_gnt     ; // Mem response valid
(*keep*) rand reg                  imem_err     ; // Mem response error
(*keep*) rand reg  [ MEM_DATA_R:0] imem_rdata   ; // Mem response read data

(*keep*)      wire                 dmem_req     ; // Mem request
(*keep*)      wire [ MEM_ADDR_R:0] dmem_addr    ; // Mem request address
(*keep*)      wire                 dmem_wen     ; // Mem request write enable
(*keep*)      wire [ MEM_STRB_R:0] dmem_strb    ; // Mem request write strobe
(*keep*)      wire [ MEM_DATA_R:0] dmem_wdata   ; // Mem write data.
(*keep*) rand reg                  dmem_gnt     ; // Mem response valid
(*keep*) rand reg                  dmem_err     ; // Mem response error
(*keep*) rand reg  [ MEM_DATA_R:0] dmem_rdata   ; // Mem response read data

(*keep*)      wire                 trs_valid    ; // Instruction trace valid
(*keep*)      wire [         31:0] trs_instr    ; // Instruction trace data
(*keep*)      wire [         XL:0] trs_pc       ; // Instruction trace PC


//
// Fairness and assumptions
// ------------------------------------------------------------

design_assertions_fairness #(
.MMIO_BASE_ADDR(MMIO_BASE_ADDR),
.MMIO_BASE_MASK(MMIO_BASE_MASK)
) i_design_assertions_fairness (
.g_clk        (clock        ), // Global clock
.g_resetn     (g_resetn     ), // Global active low sync reset.
.imem_req     (imem_req     ), // Memory request
.imem_addr    (imem_addr    ), // Memory request address
.imem_wen     (imem_wen     ), // Memory request write enable
.imem_strb    (imem_strb    ), // Memory request write strobe
.imem_wdata   (imem_wdata   ), // Memory write data.
.imem_gnt     (imem_gnt     ), // Memory response valid
.imem_err     (imem_err     ), // Memory response error
.imem_rdata   (imem_rdata   ), // Memory response read data
.dmem_req     (dmem_req     ), // Memory request
.dmem_addr    (dmem_addr    ), // Memory request address
.dmem_wen     (dmem_wen     ), // Memory request write enable
.dmem_strb    (dmem_strb    ), // Memory request write strobe
.dmem_wdata   (dmem_wdata   ), // Memory write data.
.dmem_gnt     (dmem_gnt     ), // Memory response valid
.dmem_err     (dmem_err     ), // Memory response error
.dmem_rdata   (dmem_rdata   ), // Memory response read data
.trs_valid    (trs_valid    ), // Instruction trace valid
.trs_instr    (trs_instr    ), // Instruction trace data
.trs_pc       (trs_pc       )  // Instruction trace PC
);

//
// Assertions
// ------------------------------------------------------------

`ifdef DESIGNER_ASSERTION_INSTRUCTION_MEMORY_INTERFACE
assert_memory_if i_assert_memory_if(
.g_clk        (clock        ), // Global clock
.g_resetn     (g_resetn     ), // Global active low sync reset.
.mem_req      (imem_req     ), // Memory request
.mem_addr     (imem_addr    ), // Memory request address
.mem_wen      (imem_wen     ), // Memory request write enable
.mem_strb     (imem_strb    ), // Memory request write strobe
.mem_wdata    (imem_wdata   ), // Memory write data.
.mem_gnt      (imem_gnt     ), // Memory response valid
.mem_err      (imem_err     ), // Memory response error
.mem_rdata    (imem_rdata   )  // Memory response read data
);
`endif

`ifdef DESIGNER_ASSERTION_DATA_MEMORY_INTERFACE
assert_memory_if i_assert_memory_if(
.g_clk        (clock        ), // Global clock
.g_resetn     (g_resetn     ), // Global active low sync reset.
.mem_req      (dmem_req     ), // Memory request
.mem_addr     (dmem_addr    ), // Memory request address
.mem_wen      (dmem_wen     ), // Memory request write enable
.mem_strb     (dmem_strb    ), // Memory request write strobe
.mem_wdata    (dmem_wdata   ), // Memory write data.
.mem_gnt      (dmem_gnt     ), // Memory response valid
.mem_err      (dmem_err     ), // Memory response error
.mem_rdata    (dmem_rdata   )  // Memory response read data
);
`endif


//
// DUT Instance
// ------------------------------------------------------------


core_top #(
.MMIO_BASE_ADDR(MMIO_BASE_ADDR),
.MMIO_BASE_MASK(MMIO_BASE_MASK)
) i_dut (
.g_clk        (clock        ), // Global clock
.g_resetn     (g_resetn     ), // Global active low sync reset.
.imem_req     (imem_req     ), // Memory request
.imem_addr    (imem_addr    ), // Memory request address
.imem_wen     (imem_wen     ), // Memory request write enable
.imem_strb    (imem_strb    ), // Memory request write strobe
.imem_wdata   (imem_wdata   ), // Memory write data.
.imem_gnt     (imem_gnt     ), // Memory response valid
.imem_err     (imem_err     ), // Memory response error
.imem_rdata   (imem_rdata   ), // Memory response read data
.dmem_req     (dmem_req     ), // Memory request
.dmem_addr    (dmem_addr    ), // Memory request address
.dmem_wen     (dmem_wen     ), // Memory request write enable
.dmem_strb    (dmem_strb    ), // Memory request write strobe
.dmem_wdata   (dmem_wdata   ), // Memory write data.
.dmem_gnt     (dmem_gnt     ), // Memory response valid
.dmem_err     (dmem_err     ), // Memory response error
.dmem_rdata   (dmem_rdata   ), // Memory response read data
.trs_valid    (trs_valid    ), // Instruction trace valid
.trs_instr    (trs_instr    ), // Instruction trace data
.trs_pc       (trs_pc       )  // Instruction trace PC
);

endmodule