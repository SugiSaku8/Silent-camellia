/* Automatically generated by parse_opcodes */
wire dec_beq                = (s1_instr & 32'h707f) == 32'h63;
wire dec_bne                = (s1_instr & 32'h707f) == 32'h1063;
wire dec_blt                = (s1_instr & 32'h707f) == 32'h4063;
wire dec_bge                = (s1_instr & 32'h707f) == 32'h5063;
wire dec_bltu               = (s1_instr & 32'h707f) == 32'h6063;
wire dec_bgeu               = (s1_instr & 32'h707f) == 32'h7063;
wire dec_jalr               = (s1_instr & 32'h707f) == 32'h67;
wire dec_jal                = (s1_instr & 32'h7f) == 32'h6f;
wire dec_lui                = (s1_instr & 32'h7f) == 32'h37;
wire dec_auipc              = (s1_instr & 32'h7f) == 32'h17;
wire dec_addi               = (s1_instr & 32'h707f) == 32'h13;
wire dec_slli               = (s1_instr & 32'hfc00707f) == 32'h1013;
wire dec_slti               = (s1_instr & 32'h707f) == 32'h2013;
wire dec_sltiu              = (s1_instr & 32'h707f) == 32'h3013;
wire dec_xori               = (s1_instr & 32'h707f) == 32'h4013;
wire dec_srli               = (s1_instr & 32'hfc00707f) == 32'h5013;
wire dec_srai               = (s1_instr & 32'hfc00707f) == 32'h40005013;
wire dec_ori                = (s1_instr & 32'h707f) == 32'h6013;
wire dec_andi               = (s1_instr & 32'h707f) == 32'h7013;
wire dec_add                = (s1_instr & 32'hfe00707f) == 32'h33;
wire dec_sub                = (s1_instr & 32'hfe00707f) == 32'h40000033;
wire dec_sll                = (s1_instr & 32'hfe00707f) == 32'h1033;
wire dec_slt                = (s1_instr & 32'hfe00707f) == 32'h2033;
wire dec_sltu               = (s1_instr & 32'hfe00707f) == 32'h3033;
wire dec_xor                = (s1_instr & 32'hfe00707f) == 32'h4033;
wire dec_srl                = (s1_instr & 32'hfe00707f) == 32'h5033;
wire dec_sra                = (s1_instr & 32'hfe00707f) == 32'h40005033;
wire dec_or                 = (s1_instr & 32'hfe00707f) == 32'h6033;
wire dec_and                = (s1_instr & 32'hfe00707f) == 32'h7033;
wire dec_addiw              = (s1_instr & 32'h707f) == 32'h1b;
wire dec_slliw              = (s1_instr & 32'hfe00707f) == 32'h101b;
wire dec_srliw              = (s1_instr & 32'hfe00707f) == 32'h501b;
wire dec_sraiw              = (s1_instr & 32'hfe00707f) == 32'h4000501b;
wire dec_addw               = (s1_instr & 32'hfe00707f) == 32'h3b;
wire dec_subw               = (s1_instr & 32'hfe00707f) == 32'h4000003b;
wire dec_sllw               = (s1_instr & 32'hfe00707f) == 32'h103b;
wire dec_srlw               = (s1_instr & 32'hfe00707f) == 32'h503b;
wire dec_sraw               = (s1_instr & 32'hfe00707f) == 32'h4000503b;
wire dec_lb                 = (s1_instr & 32'h707f) == 32'h3;
wire dec_lh                 = (s1_instr & 32'h707f) == 32'h1003;
wire dec_lw                 = (s1_instr & 32'h707f) == 32'h2003;
wire dec_ld                 = (s1_instr & 32'h707f) == 32'h3003;
wire dec_lbu                = (s1_instr & 32'h707f) == 32'h4003;
wire dec_lhu                = (s1_instr & 32'h707f) == 32'h5003;
wire dec_lwu                = (s1_instr & 32'h707f) == 32'h6003;
wire dec_sb                 = (s1_instr & 32'h707f) == 32'h23;
wire dec_sh                 = (s1_instr & 32'h707f) == 32'h1023;
wire dec_sw                 = (s1_instr & 32'h707f) == 32'h2023;
wire dec_sd                 = (s1_instr & 32'h707f) == 32'h3023;
wire dec_fence              = (s1_instr & 32'h707f) == 32'hf;
wire dec_fence_i            = (s1_instr & 32'h707f) == 32'h100f;
wire dec_mul                = (s1_instr & 32'hfe00707f) == 32'h2000033;
wire dec_mulh               = (s1_instr & 32'hfe00707f) == 32'h2001033;
wire dec_mulhsu             = (s1_instr & 32'hfe00707f) == 32'h2002033;
wire dec_mulhu              = (s1_instr & 32'hfe00707f) == 32'h2003033;
wire dec_div                = (s1_instr & 32'hfe00707f) == 32'h2004033;
wire dec_divu               = (s1_instr & 32'hfe00707f) == 32'h2005033;
wire dec_rem                = (s1_instr & 32'hfe00707f) == 32'h2006033;
wire dec_remu               = (s1_instr & 32'hfe00707f) == 32'h2007033;
wire dec_mulw               = (s1_instr & 32'hfe00707f) == 32'h200003b;
wire dec_divw               = (s1_instr & 32'hfe00707f) == 32'h200403b;
wire dec_divuw              = (s1_instr & 32'hfe00707f) == 32'h200503b;
wire dec_remw               = (s1_instr & 32'hfe00707f) == 32'h200603b;
wire dec_remuw              = (s1_instr & 32'hfe00707f) == 32'h200703b;
wire dec_ecall              = (s1_instr & 32'hffffffff) == 32'h73;
wire dec_ebreak             = (s1_instr & 32'hffffffff) == 32'h100073;
wire dec_mret               = (s1_instr & 32'hffffffff) == 32'h30200073;
wire dec_wfi                = (s1_instr & 32'hffffffff) == 32'h10500073;
wire dec_csrrw              = (s1_instr & 32'h707f) == 32'h1073;
wire dec_csrrs              = (s1_instr & 32'h707f) == 32'h2073;
wire dec_csrrc              = (s1_instr & 32'h707f) == 32'h3073;
wire dec_csrrwi             = (s1_instr & 32'h707f) == 32'h5073;
wire dec_csrrsi             = (s1_instr & 32'h707f) == 32'h6073;
wire dec_csrrci             = (s1_instr & 32'h707f) == 32'h7073;
wire dec_c_addi4spn         = (s1_instr & 32'he003) == 32'h0;
wire dec_c_addi16sp = s1_instr[1:0] == 2'd1 && s1_instr[15:13] == 3'd3 && s1_instr[11:7] == 5'd2;
wire dec_c_lw               = (s1_instr & 32'he003) == 32'h4000;
wire dec_c_ld               = (s1_instr & 32'he003) == 32'h6000;
wire dec_c_sw               = (s1_instr & 32'he003) == 32'hc000;
wire dec_c_sd               = (s1_instr & 32'he003) == 32'he000;
wire dec_c_addi             = (s1_instr & 32'he003) == 32'h0001 && s1_instr[11:7]!=0;
wire dec_c_addiw            = (s1_instr & 32'he003) == 32'h2001 && s1_instr[11:7]!=0;
wire dec_c_jalr     = s1_instr[1:0] == 2'd2 && s1_instr[15:13] == 3'd4 && s1_instr[12:12] == 1'd1 && s1_instr[6:2] == 5'd0 && s1_instr[11:7] != 0;
wire dec_c_li               = (s1_instr & 32'he003) == 32'h4001;
wire dec_c_lui              = (s1_instr & 32'he003) == 32'h6001 && s1_instr[11:7] != 0 && s1_instr[11:7] != 2;
wire dec_c_srli             = (s1_instr & 32'hec03) == 32'h8001;
wire dec_c_srai             = (s1_instr & 32'hec03) == 32'h8401;
wire dec_c_andi             = (s1_instr & 32'hec03) == 32'h8801;
wire dec_c_sub              = (s1_instr & 32'hfc63) == 32'h8c01;
wire dec_c_xor              = (s1_instr & 32'hfc63) == 32'h8c21;
wire dec_c_or               = (s1_instr & 32'hfc63) == 32'h8c41;
wire dec_c_and              = (s1_instr & 32'hfc63) == 32'h8c61;
wire dec_c_subw             = (s1_instr & 32'hfc63) == 32'h9c01;
wire dec_c_addw             = (s1_instr & 32'hfc63) == 32'h9c21;
wire dec_c_j                = (s1_instr & 32'he003) == 32'ha001;
wire dec_c_jr       = s1_instr[1:0] == 2'd2 && s1_instr[15:13] == 3'd4 && s1_instr[12:12] == 1'd0 && s1_instr[6:2] == 5'd0 && s1_instr[11:7] != 0;
wire dec_c_beqz             = (s1_instr & 32'he003) == 32'hc001;
wire dec_c_bnez             = (s1_instr & 32'he003) == 32'he001;
wire dec_c_slli             = (s1_instr & 32'he003) == 32'h2;
wire dec_c_lwsp             = (s1_instr & 32'he003) == 32'h4002;
wire dec_c_ldsp             = (s1_instr & 32'he003) == 32'h6002 && s1_instr[11:7] != 0;
wire dec_c_mv               = (s1_instr & 32'hf003) == 32'h8002;
wire dec_c_add              = (s1_instr & 32'hf003) == 32'h9002;
wire dec_c_swsp             = (s1_instr & 32'he003) == 32'hc002;
wire dec_c_sdsp             = (s1_instr & 32'he003) == 32'he002;
wire [ 4:0] dec_rd                 = s1_instr[11: 7];
wire [ 4:0] dec_rs1                = s1_instr[19:15];
wire [ 4:0] dec_rs2                = s1_instr[24:20];
wire [ 4:0] dec_rs3                = s1_instr[31:27];
wire [ 1:0] dec_aqrl               = s1_instr[26:25];
wire [ 3:0] dec_fm                 = s1_instr[31:28];
wire [ 3:0] dec_pred               = s1_instr[27:24];
wire [ 3:0] dec_succ               = s1_instr[23:20];
wire [ 2:0] dec_rm                 = s1_instr[14:12];
wire [ 2:0] dec_funct3             = s1_instr[14:12];
wire [19:0] dec_imm20              = s1_instr[31:12];
wire [19:0] dec_jimm20             = s1_instr[31:12];
wire [11:0] dec_imm12              = s1_instr[31:20];
wire [ 6:0] dec_imm12hi            = s1_instr[31:25];
wire [ 6:0] dec_bimm12hi           = s1_instr[31:25];
wire [ 4:0] dec_imm12lo            = s1_instr[11: 7];
wire [ 4:0] dec_bimm12lo           = s1_instr[11: 7];
wire [ 4:0] dec_zimm               = s1_instr[19:15];
wire [ 5:0] dec_shamt              = s1_instr[25:20];
wire [ 4:0] dec_shamtw             = s1_instr[24:20];
