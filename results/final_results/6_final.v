module spi_top (clk,
    cpha,
    cpol,
    done,
    newd,
    rst,
    master_din,
    master_dout,
    slave_din,
    slave_dout);
 input clk;
 input cpha;
 input cpol;
 output done;
 input newd;
 input rst;
 input [11:0] master_din;
 output [11:0] master_dout;
 input [11:0] slave_din;
 output [11:0] slave_dout;

 wire \MASTER.bit_cnt[0] ;
 wire \MASTER.bit_cnt[1] ;
 wire \MASTER.bit_cnt[2] ;
 wire \MASTER.bit_cnt[3] ;
 wire \MASTER.clk_div[0] ;
 wire \MASTER.clk_div[1] ;
 wire \MASTER.clk_div[2] ;
 wire \MASTER.clk_div[3] ;
 wire \MASTER.clk_div[4] ;
 wire \MASTER.cs ;
 wire \MASTER.miso ;
 wire \MASTER.mosi ;
 wire \MASTER.rx_shift[0] ;
 wire \MASTER.rx_shift[10] ;
 wire \MASTER.rx_shift[11] ;
 wire \MASTER.rx_shift[1] ;
 wire \MASTER.rx_shift[2] ;
 wire \MASTER.rx_shift[3] ;
 wire \MASTER.rx_shift[4] ;
 wire \MASTER.rx_shift[5] ;
 wire \MASTER.rx_shift[6] ;
 wire \MASTER.rx_shift[7] ;
 wire \MASTER.rx_shift[8] ;
 wire \MASTER.rx_shift[9] ;
 wire \MASTER.sclk ;
 wire \MASTER.sclk_d ;
 wire \MASTER.sclk_en ;
 wire \MASTER.state[0] ;
 wire \MASTER.state[1] ;
 wire \MASTER.state[2] ;
 wire \MASTER.state[3] ;
 wire \MASTER.tx_shift[0] ;
 wire \MASTER.tx_shift[10] ;
 wire \MASTER.tx_shift[11] ;
 wire \MASTER.tx_shift[1] ;
 wire \MASTER.tx_shift[2] ;
 wire \MASTER.tx_shift[3] ;
 wire \MASTER.tx_shift[4] ;
 wire \MASTER.tx_shift[5] ;
 wire \MASTER.tx_shift[6] ;
 wire \MASTER.tx_shift[7] ;
 wire \MASTER.tx_shift[8] ;
 wire \MASTER.tx_shift[9] ;
 wire \SLAVE.bit_cnt[0] ;
 wire \SLAVE.bit_cnt[1] ;
 wire \SLAVE.bit_cnt[2] ;
 wire \SLAVE.bit_cnt[3] ;
 wire \SLAVE.rx_shift[0] ;
 wire \SLAVE.rx_shift[10] ;
 wire \SLAVE.rx_shift[11] ;
 wire \SLAVE.rx_shift[1] ;
 wire \SLAVE.rx_shift[2] ;
 wire \SLAVE.rx_shift[3] ;
 wire \SLAVE.rx_shift[4] ;
 wire \SLAVE.rx_shift[5] ;
 wire \SLAVE.rx_shift[6] ;
 wire \SLAVE.rx_shift[7] ;
 wire \SLAVE.rx_shift[8] ;
 wire \SLAVE.rx_shift[9] ;
 wire \SLAVE.sclk_d ;
 wire \SLAVE.state ;
 wire \SLAVE.tx_shift[0] ;
 wire \SLAVE.tx_shift[10] ;
 wire \SLAVE.tx_shift[11] ;
 wire \SLAVE.tx_shift[1] ;
 wire \SLAVE.tx_shift[2] ;
 wire \SLAVE.tx_shift[3] ;
 wire \SLAVE.tx_shift[4] ;
 wire \SLAVE.tx_shift[5] ;
 wire \SLAVE.tx_shift[6] ;
 wire \SLAVE.tx_shift[7] ;
 wire \SLAVE.tx_shift[8] ;
 wire \SLAVE.tx_shift[9] ;
 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _088_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _101_;
 wire _104_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _152_;
 wire _153_;
 wire _155_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _163_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire _201_;
 wire _202_;
 wire _203_;
 wire _204_;
 wire _205_;
 wire _206_;
 wire _207_;
 wire _208_;
 wire _209_;
 wire _210_;
 wire _211_;
 wire _212_;
 wire _213_;
 wire _214_;
 wire _215_;
 wire _216_;
 wire _217_;
 wire _218_;
 wire _219_;
 wire _220_;
 wire _221_;
 wire _222_;
 wire _223_;
 wire _224_;
 wire _225_;
 wire _226_;
 wire _227_;
 wire _228_;
 wire _229_;
 wire _230_;
 wire _231_;
 wire _232_;
 wire _233_;
 wire _234_;
 wire _235_;
 wire _236_;
 wire _237_;
 wire _238_;
 wire _239_;
 wire _240_;
 wire _241_;
 wire _242_;
 wire _243_;
 wire _244_;
 wire net1;
 wire net2;
 wire net29;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net67;
 wire net68;
 wire net70;
 wire net65;
 wire net69;
 wire clknet_0_clk;
 wire net63;
 wire net64;
 wire net66;
 wire clknet_2_0__leaf_clk;
 wire clknet_2_1__leaf_clk;
 wire clknet_2_2__leaf_clk;
 wire clknet_2_3__leaf_clk;

 sky130_fd_sc_hd__dfrtp_1 \MASTER.bit_cnt[0]$_DFFE_PP0P_  (.D(_033_),
    .Q(\MASTER.bit_cnt[0] ),
    .RESET_B(net68),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.bit_cnt[1]$_DFFE_PP0P_  (.D(_034_),
    .Q(\MASTER.bit_cnt[1] ),
    .RESET_B(net68),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.bit_cnt[2]$_DFFE_PP0P_  (.D(_035_),
    .Q(\MASTER.bit_cnt[2] ),
    .RESET_B(net68),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.bit_cnt[3]$_DFFE_PP0P_  (.D(_036_),
    .Q(\MASTER.bit_cnt[3] ),
    .RESET_B(net68),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.clk_div[0]$_DFF_PP0_  (.D(_007_),
    .Q(\MASTER.clk_div[0] ),
    .RESET_B(net68),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.clk_div[1]$_DFF_PP0_  (.D(_008_),
    .Q(\MASTER.clk_div[1] ),
    .RESET_B(net68),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.clk_div[2]$_DFF_PP0_  (.D(_009_),
    .Q(\MASTER.clk_div[2] ),
    .RESET_B(net68),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.clk_div[3]$_DFF_PP0_  (.D(_010_),
    .Q(\MASTER.clk_div[3] ),
    .RESET_B(net68),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.clk_div[4]$_DFF_PP0_  (.D(_011_),
    .Q(\MASTER.clk_div[4] ),
    .RESET_B(net68),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfstp_2 \MASTER.cs$_DFFE_PP1P_  (.D(_037_),
    .Q(\MASTER.cs ),
    .SET_B(net68),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.done$_DFFE_PP0N_  (.D(_038_),
    .Q(net29),
    .RESET_B(net68),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.dout[0]$_DFFE_PP0P_  (.D(_039_),
    .Q(net30),
    .RESET_B(net68),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.dout[10]$_DFFE_PP0P_  (.D(_040_),
    .Q(net31),
    .RESET_B(net68),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.dout[11]$_DFFE_PP0P_  (.D(_041_),
    .Q(net32),
    .RESET_B(net68),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.dout[1]$_DFFE_PP0P_  (.D(_042_),
    .Q(net33),
    .RESET_B(net68),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.dout[2]$_DFFE_PP0P_  (.D(_043_),
    .Q(net34),
    .RESET_B(net68),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.dout[3]$_DFFE_PP0P_  (.D(_044_),
    .Q(net35),
    .RESET_B(net68),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.dout[4]$_DFFE_PP0P_  (.D(_045_),
    .Q(net36),
    .RESET_B(net68),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.dout[5]$_DFFE_PP0P_  (.D(_046_),
    .Q(net37),
    .RESET_B(net68),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.dout[6]$_DFFE_PP0P_  (.D(_047_),
    .Q(net38),
    .RESET_B(net68),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.dout[7]$_DFFE_PP0P_  (.D(_048_),
    .Q(net39),
    .RESET_B(net68),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.dout[8]$_DFFE_PP0P_  (.D(_049_),
    .Q(net40),
    .RESET_B(net68),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.dout[9]$_DFFE_PP0P_  (.D(_050_),
    .Q(net41),
    .RESET_B(net68),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.mosi$_DFFE_PP0P_  (.D(_051_),
    .Q(\MASTER.mosi ),
    .RESET_B(net68),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.rx_shift[0]$_DFFE_PP0P_  (.D(_052_),
    .Q(\MASTER.rx_shift[0] ),
    .RESET_B(net68),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.rx_shift[10]$_DFFE_PP0P_  (.D(_053_),
    .Q(\MASTER.rx_shift[10] ),
    .RESET_B(net68),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.rx_shift[11]$_DFFE_PP0P_  (.D(_054_),
    .Q(\MASTER.rx_shift[11] ),
    .RESET_B(net68),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.rx_shift[1]$_DFFE_PP0P_  (.D(_055_),
    .Q(\MASTER.rx_shift[1] ),
    .RESET_B(net68),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.rx_shift[2]$_DFFE_PP0P_  (.D(_056_),
    .Q(\MASTER.rx_shift[2] ),
    .RESET_B(net68),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.rx_shift[3]$_DFFE_PP0P_  (.D(_057_),
    .Q(\MASTER.rx_shift[3] ),
    .RESET_B(net68),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.rx_shift[4]$_DFFE_PP0P_  (.D(_058_),
    .Q(\MASTER.rx_shift[4] ),
    .RESET_B(net68),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.rx_shift[5]$_DFFE_PP0P_  (.D(_059_),
    .Q(\MASTER.rx_shift[5] ),
    .RESET_B(net68),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.rx_shift[6]$_DFFE_PP0P_  (.D(_060_),
    .Q(\MASTER.rx_shift[6] ),
    .RESET_B(net68),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.rx_shift[7]$_DFFE_PP0P_  (.D(_061_),
    .Q(\MASTER.rx_shift[7] ),
    .RESET_B(net68),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.rx_shift[8]$_DFFE_PP0P_  (.D(_062_),
    .Q(\MASTER.rx_shift[8] ),
    .RESET_B(net68),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.rx_shift[9]$_DFFE_PP0P_  (.D(_063_),
    .Q(\MASTER.rx_shift[9] ),
    .RESET_B(net68),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.sclk$_DFFE_PP0P_  (.D(_064_),
    .Q(\MASTER.sclk ),
    .RESET_B(net68),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.sclk_d$_DFF_PP0_  (.D(net70),
    .Q(\MASTER.sclk_d ),
    .RESET_B(net68),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.sclk_en$_DFFE_PP0P_  (.D(_065_),
    .Q(\MASTER.sclk_en ),
    .RESET_B(net68),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfstp_2 \MASTER.state[0]$_DFF_PP1_  (.D(_002_),
    .Q(\MASTER.state[0] ),
    .SET_B(net68),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.state[1]$_DFF_PP0_  (.D(_003_),
    .Q(\MASTER.state[1] ),
    .RESET_B(net68),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.state[2]$_DFF_PP0_  (.D(_000_),
    .Q(\MASTER.state[2] ),
    .RESET_B(net68),
    .CLK(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.state[3]$_DFF_PP0_  (.D(_001_),
    .Q(\MASTER.state[3] ),
    .RESET_B(net68),
    .CLK(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.tx_shift[0]$_DFFE_PP0P_  (.D(_066_),
    .Q(\MASTER.tx_shift[0] ),
    .RESET_B(net68),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.tx_shift[10]$_DFFE_PP0P_  (.D(_067_),
    .Q(\MASTER.tx_shift[10] ),
    .RESET_B(net68),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.tx_shift[11]$_DFFE_PP0P_  (.D(_068_),
    .Q(\MASTER.tx_shift[11] ),
    .RESET_B(net68),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.tx_shift[1]$_DFFE_PP0P_  (.D(_069_),
    .Q(\MASTER.tx_shift[1] ),
    .RESET_B(net68),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.tx_shift[2]$_DFFE_PP0P_  (.D(_070_),
    .Q(\MASTER.tx_shift[2] ),
    .RESET_B(net68),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.tx_shift[3]$_DFFE_PP0P_  (.D(_071_),
    .Q(\MASTER.tx_shift[3] ),
    .RESET_B(net68),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.tx_shift[4]$_DFFE_PP0P_  (.D(_072_),
    .Q(\MASTER.tx_shift[4] ),
    .RESET_B(net68),
    .CLK(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.tx_shift[5]$_DFFE_PP0P_  (.D(_073_),
    .Q(\MASTER.tx_shift[5] ),
    .RESET_B(net68),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.tx_shift[6]$_DFFE_PP0P_  (.D(_074_),
    .Q(\MASTER.tx_shift[6] ),
    .RESET_B(net68),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.tx_shift[7]$_DFFE_PP0P_  (.D(_075_),
    .Q(\MASTER.tx_shift[7] ),
    .RESET_B(net68),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.tx_shift[8]$_DFFE_PP0P_  (.D(_076_),
    .Q(\MASTER.tx_shift[8] ),
    .RESET_B(net68),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \MASTER.tx_shift[9]$_DFFE_PP0P_  (.D(_077_),
    .Q(\MASTER.tx_shift[9] ),
    .RESET_B(net68),
    .CLK(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__dfxtp_1 \SLAVE.bit_cnt[0]$_SDFFE_PP0P_  (.D(_078_),
    .Q(\SLAVE.bit_cnt[0] ),
    .CLK(net70));
 sky130_fd_sc_hd__dfxtp_1 \SLAVE.bit_cnt[1]$_SDFFE_PP0P_  (.D(_079_),
    .Q(\SLAVE.bit_cnt[1] ),
    .CLK(net70));
 sky130_fd_sc_hd__dfxtp_1 \SLAVE.bit_cnt[2]$_SDFFE_PP0P_  (.D(_080_),
    .Q(\SLAVE.bit_cnt[2] ),
    .CLK(net70));
 sky130_fd_sc_hd__dfxtp_1 \SLAVE.bit_cnt[3]$_SDFFE_PP0P_  (.D(_081_),
    .Q(\SLAVE.bit_cnt[3] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.dout[0]$_DFFE_PP_  (.D(\SLAVE.rx_shift[0] ),
    .DE(net63),
    .Q(net42),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.dout[10]$_DFFE_PP_  (.D(\SLAVE.rx_shift[10] ),
    .DE(net63),
    .Q(net43),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.dout[11]$_DFFE_PP_  (.D(\SLAVE.rx_shift[11] ),
    .DE(net63),
    .Q(net44),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.dout[1]$_DFFE_PP_  (.D(\SLAVE.rx_shift[1] ),
    .DE(net63),
    .Q(net45),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.dout[2]$_DFFE_PP_  (.D(\SLAVE.rx_shift[2] ),
    .DE(net63),
    .Q(net46),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.dout[3]$_DFFE_PP_  (.D(\SLAVE.rx_shift[3] ),
    .DE(net63),
    .Q(net47),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.dout[4]$_DFFE_PP_  (.D(\SLAVE.rx_shift[4] ),
    .DE(net63),
    .Q(net48),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.dout[5]$_DFFE_PP_  (.D(\SLAVE.rx_shift[5] ),
    .DE(net63),
    .Q(net49),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.dout[6]$_DFFE_PP_  (.D(\SLAVE.rx_shift[6] ),
    .DE(net63),
    .Q(net50),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.dout[7]$_DFFE_PP_  (.D(\SLAVE.rx_shift[7] ),
    .DE(net63),
    .Q(net51),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.dout[8]$_DFFE_PP_  (.D(\SLAVE.rx_shift[8] ),
    .DE(net63),
    .Q(net52),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.dout[9]$_DFFE_PP_  (.D(\SLAVE.rx_shift[9] ),
    .DE(net63),
    .Q(net53),
    .CLK(net70));
 sky130_fd_sc_hd__dfxtp_1 \SLAVE.miso$_SDFFE_PP0P_  (.D(_082_),
    .Q(\MASTER.miso ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.rx_shift[0]$_DFFE_PP_  (.D(\MASTER.mosi ),
    .DE(_004_),
    .Q(\SLAVE.rx_shift[0] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.rx_shift[10]$_DFFE_PP_  (.D(\SLAVE.rx_shift[9] ),
    .DE(_004_),
    .Q(\SLAVE.rx_shift[10] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.rx_shift[11]$_DFFE_PP_  (.D(\SLAVE.rx_shift[10] ),
    .DE(_004_),
    .Q(\SLAVE.rx_shift[11] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.rx_shift[1]$_DFFE_PP_  (.D(\SLAVE.rx_shift[0] ),
    .DE(_004_),
    .Q(\SLAVE.rx_shift[1] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.rx_shift[2]$_DFFE_PP_  (.D(\SLAVE.rx_shift[1] ),
    .DE(_004_),
    .Q(\SLAVE.rx_shift[2] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.rx_shift[3]$_DFFE_PP_  (.D(\SLAVE.rx_shift[2] ),
    .DE(_004_),
    .Q(\SLAVE.rx_shift[3] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.rx_shift[4]$_DFFE_PP_  (.D(\SLAVE.rx_shift[3] ),
    .DE(_004_),
    .Q(\SLAVE.rx_shift[4] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.rx_shift[5]$_DFFE_PP_  (.D(\SLAVE.rx_shift[4] ),
    .DE(_004_),
    .Q(\SLAVE.rx_shift[5] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.rx_shift[6]$_DFFE_PP_  (.D(\SLAVE.rx_shift[5] ),
    .DE(_004_),
    .Q(\SLAVE.rx_shift[6] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.rx_shift[7]$_DFFE_PP_  (.D(\SLAVE.rx_shift[6] ),
    .DE(_004_),
    .Q(\SLAVE.rx_shift[7] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.rx_shift[8]$_DFFE_PP_  (.D(\SLAVE.rx_shift[7] ),
    .DE(_004_),
    .Q(\SLAVE.rx_shift[8] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.rx_shift[9]$_DFFE_PP_  (.D(\SLAVE.rx_shift[8] ),
    .DE(_004_),
    .Q(\SLAVE.rx_shift[9] ),
    .CLK(net70));
 sky130_fd_sc_hd__dfxtp_1 \SLAVE.sclk_d$_DFF_P_  (.D(net70),
    .Q(\SLAVE.sclk_d ),
    .CLK(net70));
 sky130_fd_sc_hd__dfxtp_1 \SLAVE.state$_SDFF_PP0_  (.D(_083_),
    .Q(\SLAVE.state ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.tx_shift[0]$_DFFE_PP_  (.D(_012_),
    .DE(_005_),
    .Q(\SLAVE.tx_shift[0] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.tx_shift[10]$_DFFE_PP_  (.D(_013_),
    .DE(_005_),
    .Q(\SLAVE.tx_shift[10] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.tx_shift[11]$_DFFE_PP_  (.D(_014_),
    .DE(_005_),
    .Q(\SLAVE.tx_shift[11] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.tx_shift[1]$_DFFE_PP_  (.D(_015_),
    .DE(_005_),
    .Q(\SLAVE.tx_shift[1] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.tx_shift[2]$_DFFE_PP_  (.D(_016_),
    .DE(_005_),
    .Q(\SLAVE.tx_shift[2] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.tx_shift[3]$_DFFE_PP_  (.D(_017_),
    .DE(_005_),
    .Q(\SLAVE.tx_shift[3] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.tx_shift[4]$_DFFE_PP_  (.D(_018_),
    .DE(_005_),
    .Q(\SLAVE.tx_shift[4] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.tx_shift[5]$_DFFE_PP_  (.D(_019_),
    .DE(_005_),
    .Q(\SLAVE.tx_shift[5] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.tx_shift[6]$_DFFE_PP_  (.D(_020_),
    .DE(_005_),
    .Q(\SLAVE.tx_shift[6] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.tx_shift[7]$_DFFE_PP_  (.D(_021_),
    .DE(_005_),
    .Q(\SLAVE.tx_shift[7] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.tx_shift[8]$_DFFE_PP_  (.D(_022_),
    .DE(_005_),
    .Q(\SLAVE.tx_shift[8] ),
    .CLK(net70));
 sky130_fd_sc_hd__edfxtp_1 \SLAVE.tx_shift[9]$_DFFE_PP_  (.D(_023_),
    .DE(_005_),
    .Q(\SLAVE.tx_shift[9] ),
    .CLK(net70));
 sky130_fd_sc_hd__inv_1 _245_ (.A(net69),
    .Y(_084_));
 sky130_fd_sc_hd__nor4bb_4 _246_ (.A(\MASTER.clk_div[2] ),
    .B(\MASTER.clk_div[4] ),
    .C_N(_027_),
    .D_N(\MASTER.clk_div[3] ),
    .Y(_085_));
 sky130_fd_sc_hd__nand4b_1 _249_ (.A_N(\MASTER.bit_cnt[2] ),
    .B(\MASTER.bit_cnt[3] ),
    .C(_030_),
    .D(net64),
    .Y(_088_));
 sky130_fd_sc_hd__nor2_1 _250_ (.A(_084_),
    .B(_088_),
    .Y(_001_));
 sky130_fd_sc_hd__and2_1 _252_ (.A(net15),
    .B(\MASTER.state[0] ),
    .X(_000_));
 sky130_fd_sc_hd__nand4b_1 _253_ (.A_N(\SLAVE.bit_cnt[2] ),
    .B(\SLAVE.bit_cnt[3] ),
    .C(_024_),
    .D(\SLAVE.state ),
    .Y(_090_));
 sky130_fd_sc_hd__nor2_1 _254_ (.A(\MASTER.cs ),
    .B(_090_),
    .Y(_006_));
 sky130_fd_sc_hd__nand2b_1 _255_ (.A_N(net70),
    .B(\SLAVE.sclk_d ),
    .Y(_091_));
 sky130_fd_sc_hd__nand2b_1 _256_ (.A_N(\SLAVE.sclk_d ),
    .B(net70),
    .Y(_092_));
 sky130_fd_sc_hd__xor2_2 _257_ (.A(net1),
    .B(net2),
    .X(_093_));
 sky130_fd_sc_hd__mux2i_1 _258_ (.A0(_091_),
    .A1(_092_),
    .S(_093_),
    .Y(_094_));
 sky130_fd_sc_hd__or3b_2 _259_ (.A(\MASTER.cs ),
    .B(_094_),
    .C_N(\SLAVE.state ),
    .X(_005_));
 sky130_fd_sc_hd__inv_1 _260_ (.A(\MASTER.cs ),
    .Y(_095_));
 sky130_fd_sc_hd__nand3b_1 _261_ (.A_N(\SLAVE.sclk_d ),
    .B(\SLAVE.state ),
    .C(net70),
    .Y(_096_));
 sky130_fd_sc_hd__nand3b_1 _262_ (.A_N(net70),
    .B(\SLAVE.state ),
    .C(\SLAVE.sclk_d ),
    .Y(_097_));
 sky130_fd_sc_hd__mux2i_1 _263_ (.A0(_096_),
    .A1(_097_),
    .S(_093_),
    .Y(_098_));
 sky130_fd_sc_hd__and2_1 _264_ (.A(_095_),
    .B(_098_),
    .X(_004_));
 sky130_fd_sc_hd__a21o_1 _267_ (.A1(net69),
    .A2(_088_),
    .B1(\MASTER.state[2] ),
    .X(_003_));
 sky130_fd_sc_hd__inv_1 _268_ (.A(net15),
    .Y(_101_));
 sky130_fd_sc_hd__a21o_1 _271_ (.A1(_101_),
    .A2(\MASTER.state[0] ),
    .B1(\MASTER.state[3] ),
    .X(_002_));
 sky130_fd_sc_hd__nor2b_1 _272_ (.A(\MASTER.cs ),
    .B_N(\SLAVE.state ),
    .Y(_104_));
 sky130_fd_sc_hd__nor2b_1 _274_ (.A(net67),
    .B_N(net17),
    .Y(_012_));
 sky130_fd_sc_hd__mux2_2 _275_ (.A0(net20),
    .A1(\SLAVE.tx_shift[0] ),
    .S(net67),
    .X(_015_));
 sky130_fd_sc_hd__mux2_2 _276_ (.A0(net21),
    .A1(\SLAVE.tx_shift[1] ),
    .S(net67),
    .X(_016_));
 sky130_fd_sc_hd__mux2_2 _277_ (.A0(net22),
    .A1(\SLAVE.tx_shift[2] ),
    .S(net67),
    .X(_017_));
 sky130_fd_sc_hd__mux2_2 _278_ (.A0(net23),
    .A1(\SLAVE.tx_shift[3] ),
    .S(net67),
    .X(_018_));
 sky130_fd_sc_hd__mux2_2 _279_ (.A0(net24),
    .A1(\SLAVE.tx_shift[4] ),
    .S(net67),
    .X(_019_));
 sky130_fd_sc_hd__mux2_2 _280_ (.A0(net25),
    .A1(\SLAVE.tx_shift[5] ),
    .S(net67),
    .X(_020_));
 sky130_fd_sc_hd__mux2_2 _281_ (.A0(net26),
    .A1(\SLAVE.tx_shift[6] ),
    .S(net67),
    .X(_021_));
 sky130_fd_sc_hd__mux2_2 _282_ (.A0(net27),
    .A1(\SLAVE.tx_shift[7] ),
    .S(net67),
    .X(_022_));
 sky130_fd_sc_hd__mux2_2 _283_ (.A0(net28),
    .A1(\SLAVE.tx_shift[8] ),
    .S(net67),
    .X(_023_));
 sky130_fd_sc_hd__mux2_2 _284_ (.A0(net18),
    .A1(\SLAVE.tx_shift[9] ),
    .S(net67),
    .X(_013_));
 sky130_fd_sc_hd__mux2_2 _285_ (.A0(net19),
    .A1(\SLAVE.tx_shift[10] ),
    .S(net67),
    .X(_014_));
 sky130_fd_sc_hd__nor2_1 _287_ (.A(\MASTER.clk_div[0] ),
    .B(net64),
    .Y(_007_));
 sky130_fd_sc_hd__nor2_1 _288_ (.A(_028_),
    .B(net64),
    .Y(_008_));
 sky130_fd_sc_hd__xnor2_1 _289_ (.A(\MASTER.clk_div[2] ),
    .B(_029_),
    .Y(_107_));
 sky130_fd_sc_hd__nor2_1 _290_ (.A(net64),
    .B(_107_),
    .Y(_009_));
 sky130_fd_sc_hd__nand3_1 _291_ (.A(\MASTER.clk_div[2] ),
    .B(\MASTER.clk_div[0] ),
    .C(\MASTER.clk_div[1] ),
    .Y(_108_));
 sky130_fd_sc_hd__xor2_1 _292_ (.A(\MASTER.clk_div[3] ),
    .B(_108_),
    .X(_109_));
 sky130_fd_sc_hd__nor2_1 _293_ (.A(net64),
    .B(_109_),
    .Y(_010_));
 sky130_fd_sc_hd__nand3_1 _294_ (.A(\MASTER.clk_div[2] ),
    .B(\MASTER.clk_div[3] ),
    .C(_029_),
    .Y(_110_));
 sky130_fd_sc_hd__xnor2_1 _295_ (.A(\MASTER.clk_div[4] ),
    .B(_110_),
    .Y(_011_));
 sky130_fd_sc_hd__inv_2 _296_ (.A(net16),
    .Y(_032_));
 sky130_fd_sc_hd__inv_1 _297_ (.A(\MASTER.clk_div[1] ),
    .Y(_026_));
 sky130_fd_sc_hd__nor2_1 _300_ (.A(net69),
    .B(\MASTER.state[0] ),
    .Y(_113_));
 sky130_fd_sc_hd__or4bb_4 _301_ (.A(\MASTER.clk_div[2] ),
    .B(\MASTER.clk_div[4] ),
    .C_N(_027_),
    .D_N(\MASTER.clk_div[3] ),
    .X(_114_));
 sky130_fd_sc_hd__or3_1 _302_ (.A(_084_),
    .B(\MASTER.bit_cnt[0] ),
    .C(_114_),
    .X(_115_));
 sky130_fd_sc_hd__nand2_1 _303_ (.A(net69),
    .B(\MASTER.bit_cnt[0] ),
    .Y(_116_));
 sky130_fd_sc_hd__nor2b_1 _304_ (.A(\MASTER.sclk_d ),
    .B_N(\MASTER.sclk ),
    .Y(_117_));
 sky130_fd_sc_hd__nor2b_1 _305_ (.A(\MASTER.sclk ),
    .B_N(\MASTER.sclk_d ),
    .Y(_118_));
 sky130_fd_sc_hd__mux2i_4 _306_ (.A0(_117_),
    .A1(_118_),
    .S(_093_),
    .Y(_119_));
 sky130_fd_sc_hd__mux2i_1 _307_ (.A0(_115_),
    .A1(_116_),
    .S(_119_),
    .Y(_120_));
 sky130_fd_sc_hd__nor2_1 _308_ (.A(net64),
    .B(_116_),
    .Y(_121_));
 sky130_fd_sc_hd__a211o_1 _309_ (.A1(\MASTER.bit_cnt[0] ),
    .A2(_113_),
    .B1(_120_),
    .C1(_121_),
    .X(_033_));
 sky130_fd_sc_hd__nand3_1 _310_ (.A(net69),
    .B(_031_),
    .C(net64),
    .Y(_122_));
 sky130_fd_sc_hd__nand2_1 _311_ (.A(net69),
    .B(\MASTER.bit_cnt[1] ),
    .Y(_123_));
 sky130_fd_sc_hd__mux2i_1 _312_ (.A0(_122_),
    .A1(_123_),
    .S(_119_),
    .Y(_124_));
 sky130_fd_sc_hd__nor2_1 _313_ (.A(net64),
    .B(_123_),
    .Y(_125_));
 sky130_fd_sc_hd__a211o_1 _314_ (.A1(\MASTER.bit_cnt[1] ),
    .A2(_113_),
    .B1(_124_),
    .C1(_125_),
    .X(_034_));
 sky130_fd_sc_hd__nand4b_1 _315_ (.A_N(\MASTER.bit_cnt[2] ),
    .B(_030_),
    .C(net64),
    .D(net69),
    .Y(_126_));
 sky130_fd_sc_hd__nand2_1 _317_ (.A(net69),
    .B(\MASTER.bit_cnt[2] ),
    .Y(_128_));
 sky130_fd_sc_hd__mux2i_1 _318_ (.A0(_126_),
    .A1(_128_),
    .S(_119_),
    .Y(_129_));
 sky130_fd_sc_hd__nor2_1 _319_ (.A(net64),
    .B(_128_),
    .Y(_130_));
 sky130_fd_sc_hd__nand2_1 _320_ (.A(_084_),
    .B(\MASTER.bit_cnt[2] ),
    .Y(_131_));
 sky130_fd_sc_hd__o22ai_1 _321_ (.A1(\MASTER.state[0] ),
    .A2(_131_),
    .B1(_128_),
    .B2(_030_),
    .Y(_132_));
 sky130_fd_sc_hd__or3_1 _322_ (.A(_129_),
    .B(_130_),
    .C(_132_),
    .X(_035_));
 sky130_fd_sc_hd__inv_1 _323_ (.A(\MASTER.state[0] ),
    .Y(_133_));
 sky130_fd_sc_hd__and3_1 _324_ (.A(\MASTER.bit_cnt[2] ),
    .B(\MASTER.bit_cnt[0] ),
    .C(\MASTER.bit_cnt[1] ),
    .X(_134_));
 sky130_fd_sc_hd__nand4b_1 _325_ (.A_N(\MASTER.bit_cnt[3] ),
    .B(net64),
    .C(_134_),
    .D(net69),
    .Y(_135_));
 sky130_fd_sc_hd__nand2_1 _326_ (.A(net69),
    .B(\MASTER.bit_cnt[3] ),
    .Y(_136_));
 sky130_fd_sc_hd__mux2i_1 _327_ (.A0(_135_),
    .A1(_136_),
    .S(_119_),
    .Y(_137_));
 sky130_fd_sc_hd__a21oi_1 _328_ (.A1(net64),
    .A2(_134_),
    .B1(_136_),
    .Y(_138_));
 sky130_fd_sc_hd__a311o_1 _329_ (.A1(_084_),
    .A2(\MASTER.bit_cnt[3] ),
    .A3(_133_),
    .B1(_137_),
    .C1(_138_),
    .X(_036_));
 sky130_fd_sc_hd__nor2_1 _330_ (.A(\MASTER.state[0] ),
    .B(\MASTER.state[3] ),
    .Y(_139_));
 sky130_fd_sc_hd__o21ai_0 _331_ (.A1(\MASTER.state[2] ),
    .A2(_095_),
    .B1(_139_),
    .Y(_037_));
 sky130_fd_sc_hd__mux2_2 _332_ (.A0(net30),
    .A1(\MASTER.rx_shift[0] ),
    .S(\MASTER.state[3] ),
    .X(_039_));
 sky130_fd_sc_hd__mux2_2 _333_ (.A0(net31),
    .A1(\MASTER.rx_shift[10] ),
    .S(\MASTER.state[3] ),
    .X(_040_));
 sky130_fd_sc_hd__mux2_2 _334_ (.A0(net32),
    .A1(\MASTER.rx_shift[11] ),
    .S(\MASTER.state[3] ),
    .X(_041_));
 sky130_fd_sc_hd__mux2_2 _335_ (.A0(net33),
    .A1(\MASTER.rx_shift[1] ),
    .S(\MASTER.state[3] ),
    .X(_042_));
 sky130_fd_sc_hd__mux2_2 _336_ (.A0(net34),
    .A1(\MASTER.rx_shift[2] ),
    .S(\MASTER.state[3] ),
    .X(_043_));
 sky130_fd_sc_hd__mux2_2 _337_ (.A0(net35),
    .A1(\MASTER.rx_shift[3] ),
    .S(\MASTER.state[3] ),
    .X(_044_));
 sky130_fd_sc_hd__mux2_2 _338_ (.A0(net36),
    .A1(\MASTER.rx_shift[4] ),
    .S(\MASTER.state[3] ),
    .X(_045_));
 sky130_fd_sc_hd__mux2_2 _339_ (.A0(net37),
    .A1(\MASTER.rx_shift[5] ),
    .S(\MASTER.state[3] ),
    .X(_046_));
 sky130_fd_sc_hd__mux2_2 _340_ (.A0(net38),
    .A1(\MASTER.rx_shift[6] ),
    .S(\MASTER.state[3] ),
    .X(_047_));
 sky130_fd_sc_hd__mux2_2 _341_ (.A0(net39),
    .A1(\MASTER.rx_shift[7] ),
    .S(\MASTER.state[3] ),
    .X(_048_));
 sky130_fd_sc_hd__mux2_2 _342_ (.A0(net40),
    .A1(\MASTER.rx_shift[8] ),
    .S(\MASTER.state[3] ),
    .X(_049_));
 sky130_fd_sc_hd__mux2_2 _343_ (.A0(net41),
    .A1(\MASTER.rx_shift[9] ),
    .S(\MASTER.state[3] ),
    .X(_050_));
 sky130_fd_sc_hd__nor2_1 _344_ (.A(net69),
    .B(\MASTER.state[3] ),
    .Y(_140_));
 sky130_fd_sc_hd__nand4b_1 _345_ (.A_N(\MASTER.state[3] ),
    .B(\MASTER.tx_shift[11] ),
    .C(net64),
    .D(net69),
    .Y(_141_));
 sky130_fd_sc_hd__nand2_1 _346_ (.A(net69),
    .B(\MASTER.mosi ),
    .Y(_142_));
 sky130_fd_sc_hd__mux2i_1 _347_ (.A0(_118_),
    .A1(_117_),
    .S(_093_),
    .Y(_143_));
 sky130_fd_sc_hd__mux2i_1 _348_ (.A0(_141_),
    .A1(_142_),
    .S(net66),
    .Y(_144_));
 sky130_fd_sc_hd__nor2_1 _349_ (.A(net64),
    .B(_142_),
    .Y(_145_));
 sky130_fd_sc_hd__a211o_1 _350_ (.A1(\MASTER.mosi ),
    .A2(_140_),
    .B1(_144_),
    .C1(_145_),
    .X(_051_));
 sky130_fd_sc_hd__nor3_4 _351_ (.A(_084_),
    .B(_114_),
    .C(_119_),
    .Y(_146_));
 sky130_fd_sc_hd__mux2_2 _353_ (.A0(\MASTER.rx_shift[0] ),
    .A1(\MASTER.miso ),
    .S(_146_),
    .X(_052_));
 sky130_fd_sc_hd__mux2_2 _354_ (.A0(\MASTER.rx_shift[10] ),
    .A1(\MASTER.rx_shift[9] ),
    .S(_146_),
    .X(_053_));
 sky130_fd_sc_hd__mux2_2 _355_ (.A0(\MASTER.rx_shift[11] ),
    .A1(\MASTER.rx_shift[10] ),
    .S(_146_),
    .X(_054_));
 sky130_fd_sc_hd__mux2_2 _356_ (.A0(\MASTER.rx_shift[1] ),
    .A1(\MASTER.rx_shift[0] ),
    .S(_146_),
    .X(_055_));
 sky130_fd_sc_hd__mux2_2 _357_ (.A0(\MASTER.rx_shift[2] ),
    .A1(\MASTER.rx_shift[1] ),
    .S(_146_),
    .X(_056_));
 sky130_fd_sc_hd__mux2_2 _358_ (.A0(\MASTER.rx_shift[3] ),
    .A1(\MASTER.rx_shift[2] ),
    .S(_146_),
    .X(_057_));
 sky130_fd_sc_hd__mux2_2 _359_ (.A0(\MASTER.rx_shift[4] ),
    .A1(\MASTER.rx_shift[3] ),
    .S(_146_),
    .X(_058_));
 sky130_fd_sc_hd__mux2_2 _360_ (.A0(\MASTER.rx_shift[5] ),
    .A1(\MASTER.rx_shift[4] ),
    .S(_146_),
    .X(_059_));
 sky130_fd_sc_hd__mux2_2 _361_ (.A0(\MASTER.rx_shift[6] ),
    .A1(\MASTER.rx_shift[5] ),
    .S(_146_),
    .X(_060_));
 sky130_fd_sc_hd__mux2_2 _362_ (.A0(\MASTER.rx_shift[7] ),
    .A1(\MASTER.rx_shift[6] ),
    .S(_146_),
    .X(_061_));
 sky130_fd_sc_hd__mux2_2 _363_ (.A0(\MASTER.rx_shift[8] ),
    .A1(\MASTER.rx_shift[7] ),
    .S(_146_),
    .X(_062_));
 sky130_fd_sc_hd__mux2_2 _364_ (.A0(\MASTER.rx_shift[9] ),
    .A1(\MASTER.rx_shift[8] ),
    .S(_146_),
    .X(_063_));
 sky130_fd_sc_hd__xnor2_1 _365_ (.A(net70),
    .B(net64),
    .Y(_148_));
 sky130_fd_sc_hd__nor2_1 _366_ (.A(net2),
    .B(\MASTER.sclk_en ),
    .Y(_149_));
 sky130_fd_sc_hd__a21oi_1 _367_ (.A1(\MASTER.sclk_en ),
    .A2(_148_),
    .B1(_149_),
    .Y(_064_));
 sky130_fd_sc_hd__o21a_1 _368_ (.A1(\MASTER.state[2] ),
    .A2(\MASTER.sclk_en ),
    .B1(_139_),
    .X(_065_));
 sky130_fd_sc_hd__a22oi_1 _369_ (.A1(_133_),
    .A2(\MASTER.tx_shift[0] ),
    .B1(_000_),
    .B2(net3),
    .Y(_150_));
 sky130_fd_sc_hd__o211ai_1 _371_ (.A1(_114_),
    .A2(net66),
    .B1(net69),
    .C1(\MASTER.tx_shift[0] ),
    .Y(_152_));
 sky130_fd_sc_hd__nand3_1 _372_ (.A(_101_),
    .B(\MASTER.state[0] ),
    .C(\MASTER.tx_shift[0] ),
    .Y(_153_));
 sky130_fd_sc_hd__o211ai_1 _373_ (.A1(net69),
    .A2(_150_),
    .B1(_152_),
    .C1(_153_),
    .Y(_066_));
 sky130_fd_sc_hd__mux2_2 _375_ (.A0(net69),
    .A1(net15),
    .S(\MASTER.state[0] ),
    .X(_155_));
 sky130_fd_sc_hd__mux2i_1 _377_ (.A0(net4),
    .A1(\MASTER.tx_shift[9] ),
    .S(net69),
    .Y(_157_));
 sky130_fd_sc_hd__nand3_1 _378_ (.A(net64),
    .B(_155_),
    .C(_157_),
    .Y(_158_));
 sky130_fd_sc_hd__nand2b_1 _379_ (.A_N(\MASTER.tx_shift[10] ),
    .B(net69),
    .Y(_159_));
 sky130_fd_sc_hd__mux2i_1 _380_ (.A0(_158_),
    .A1(_159_),
    .S(net66),
    .Y(_160_));
 sky130_fd_sc_hd__a21oi_1 _381_ (.A1(net69),
    .A2(_133_),
    .B1(_000_),
    .Y(_161_));
 sky130_fd_sc_hd__nor3_1 _383_ (.A(net69),
    .B(net4),
    .C(net65),
    .Y(_163_));
 sky130_fd_sc_hd__o22ai_1 _385_ (.A1(\MASTER.tx_shift[10] ),
    .A2(_155_),
    .B1(_159_),
    .B2(net64),
    .Y(_165_));
 sky130_fd_sc_hd__nor3_1 _386_ (.A(_160_),
    .B(_163_),
    .C(_165_),
    .Y(_067_));
 sky130_fd_sc_hd__mux2i_1 _387_ (.A0(net5),
    .A1(\MASTER.tx_shift[10] ),
    .S(net69),
    .Y(_166_));
 sky130_fd_sc_hd__nand3_1 _388_ (.A(net64),
    .B(_155_),
    .C(_166_),
    .Y(_167_));
 sky130_fd_sc_hd__nand2b_1 _389_ (.A_N(\MASTER.tx_shift[11] ),
    .B(net69),
    .Y(_168_));
 sky130_fd_sc_hd__mux2i_1 _390_ (.A0(_167_),
    .A1(_168_),
    .S(net66),
    .Y(_169_));
 sky130_fd_sc_hd__nor3_1 _391_ (.A(net69),
    .B(net5),
    .C(net65),
    .Y(_170_));
 sky130_fd_sc_hd__o22ai_1 _392_ (.A1(\MASTER.tx_shift[11] ),
    .A2(_155_),
    .B1(_168_),
    .B2(net64),
    .Y(_171_));
 sky130_fd_sc_hd__nor3_1 _393_ (.A(_169_),
    .B(_170_),
    .C(_171_),
    .Y(_068_));
 sky130_fd_sc_hd__mux2i_1 _394_ (.A0(net6),
    .A1(\MASTER.tx_shift[0] ),
    .S(net69),
    .Y(_172_));
 sky130_fd_sc_hd__nand3_1 _395_ (.A(net64),
    .B(_155_),
    .C(_172_),
    .Y(_173_));
 sky130_fd_sc_hd__nand2b_1 _396_ (.A_N(\MASTER.tx_shift[1] ),
    .B(net69),
    .Y(_174_));
 sky130_fd_sc_hd__mux2i_1 _397_ (.A0(_173_),
    .A1(_174_),
    .S(net66),
    .Y(_175_));
 sky130_fd_sc_hd__nor3_1 _398_ (.A(net69),
    .B(net6),
    .C(net65),
    .Y(_176_));
 sky130_fd_sc_hd__o22ai_1 _399_ (.A1(\MASTER.tx_shift[1] ),
    .A2(_155_),
    .B1(_174_),
    .B2(net64),
    .Y(_177_));
 sky130_fd_sc_hd__nor3_1 _400_ (.A(_175_),
    .B(_176_),
    .C(_177_),
    .Y(_069_));
 sky130_fd_sc_hd__mux2i_1 _401_ (.A0(net7),
    .A1(\MASTER.tx_shift[1] ),
    .S(net69),
    .Y(_178_));
 sky130_fd_sc_hd__nand3_1 _402_ (.A(net64),
    .B(_155_),
    .C(_178_),
    .Y(_179_));
 sky130_fd_sc_hd__nand2b_1 _403_ (.A_N(\MASTER.tx_shift[2] ),
    .B(net69),
    .Y(_180_));
 sky130_fd_sc_hd__mux2i_1 _404_ (.A0(_179_),
    .A1(_180_),
    .S(net66),
    .Y(_181_));
 sky130_fd_sc_hd__nor3_1 _405_ (.A(net69),
    .B(net7),
    .C(net65),
    .Y(_182_));
 sky130_fd_sc_hd__o22ai_1 _406_ (.A1(\MASTER.tx_shift[2] ),
    .A2(_155_),
    .B1(_180_),
    .B2(net64),
    .Y(_183_));
 sky130_fd_sc_hd__nor3_1 _407_ (.A(_181_),
    .B(_182_),
    .C(_183_),
    .Y(_070_));
 sky130_fd_sc_hd__mux2i_1 _408_ (.A0(net8),
    .A1(\MASTER.tx_shift[2] ),
    .S(net69),
    .Y(_184_));
 sky130_fd_sc_hd__nand3_1 _409_ (.A(net64),
    .B(_155_),
    .C(_184_),
    .Y(_185_));
 sky130_fd_sc_hd__nand2b_1 _410_ (.A_N(\MASTER.tx_shift[3] ),
    .B(net69),
    .Y(_186_));
 sky130_fd_sc_hd__mux2i_1 _411_ (.A0(_185_),
    .A1(_186_),
    .S(net66),
    .Y(_187_));
 sky130_fd_sc_hd__nor3_1 _412_ (.A(net69),
    .B(net8),
    .C(net65),
    .Y(_188_));
 sky130_fd_sc_hd__o22ai_1 _413_ (.A1(\MASTER.tx_shift[3] ),
    .A2(_155_),
    .B1(_186_),
    .B2(net64),
    .Y(_189_));
 sky130_fd_sc_hd__nor3_1 _414_ (.A(_187_),
    .B(_188_),
    .C(_189_),
    .Y(_071_));
 sky130_fd_sc_hd__mux2i_1 _415_ (.A0(net9),
    .A1(\MASTER.tx_shift[3] ),
    .S(net69),
    .Y(_190_));
 sky130_fd_sc_hd__nand3_1 _416_ (.A(net64),
    .B(_155_),
    .C(_190_),
    .Y(_191_));
 sky130_fd_sc_hd__nand2b_1 _417_ (.A_N(\MASTER.tx_shift[4] ),
    .B(net69),
    .Y(_192_));
 sky130_fd_sc_hd__mux2i_1 _418_ (.A0(_191_),
    .A1(_192_),
    .S(net66),
    .Y(_193_));
 sky130_fd_sc_hd__nor3_1 _419_ (.A(net69),
    .B(net9),
    .C(net65),
    .Y(_194_));
 sky130_fd_sc_hd__o22ai_1 _420_ (.A1(\MASTER.tx_shift[4] ),
    .A2(_155_),
    .B1(_192_),
    .B2(net64),
    .Y(_195_));
 sky130_fd_sc_hd__nor3_1 _421_ (.A(_193_),
    .B(_194_),
    .C(_195_),
    .Y(_072_));
 sky130_fd_sc_hd__mux2i_1 _422_ (.A0(net10),
    .A1(\MASTER.tx_shift[4] ),
    .S(net69),
    .Y(_196_));
 sky130_fd_sc_hd__nand3_1 _423_ (.A(net64),
    .B(_155_),
    .C(_196_),
    .Y(_197_));
 sky130_fd_sc_hd__nand2b_1 _424_ (.A_N(\MASTER.tx_shift[5] ),
    .B(net69),
    .Y(_198_));
 sky130_fd_sc_hd__mux2i_1 _425_ (.A0(_197_),
    .A1(_198_),
    .S(net66),
    .Y(_199_));
 sky130_fd_sc_hd__nor3_1 _426_ (.A(net69),
    .B(net10),
    .C(net65),
    .Y(_200_));
 sky130_fd_sc_hd__o22ai_1 _427_ (.A1(\MASTER.tx_shift[5] ),
    .A2(_155_),
    .B1(_198_),
    .B2(net64),
    .Y(_201_));
 sky130_fd_sc_hd__nor3_1 _428_ (.A(_199_),
    .B(_200_),
    .C(_201_),
    .Y(_073_));
 sky130_fd_sc_hd__mux2i_1 _429_ (.A0(net11),
    .A1(\MASTER.tx_shift[5] ),
    .S(net69),
    .Y(_202_));
 sky130_fd_sc_hd__nand3_1 _430_ (.A(net64),
    .B(_155_),
    .C(_202_),
    .Y(_203_));
 sky130_fd_sc_hd__nand2b_1 _431_ (.A_N(\MASTER.tx_shift[6] ),
    .B(net69),
    .Y(_204_));
 sky130_fd_sc_hd__mux2i_1 _432_ (.A0(_203_),
    .A1(_204_),
    .S(net66),
    .Y(_205_));
 sky130_fd_sc_hd__nor3_1 _433_ (.A(net69),
    .B(net11),
    .C(net65),
    .Y(_206_));
 sky130_fd_sc_hd__o22ai_1 _434_ (.A1(\MASTER.tx_shift[6] ),
    .A2(_155_),
    .B1(_204_),
    .B2(net64),
    .Y(_207_));
 sky130_fd_sc_hd__nor3_1 _435_ (.A(_205_),
    .B(_206_),
    .C(_207_),
    .Y(_074_));
 sky130_fd_sc_hd__mux2i_1 _436_ (.A0(net12),
    .A1(\MASTER.tx_shift[6] ),
    .S(net69),
    .Y(_208_));
 sky130_fd_sc_hd__nand3_1 _437_ (.A(net64),
    .B(_155_),
    .C(_208_),
    .Y(_209_));
 sky130_fd_sc_hd__nand2b_1 _438_ (.A_N(\MASTER.tx_shift[7] ),
    .B(net69),
    .Y(_210_));
 sky130_fd_sc_hd__mux2i_1 _439_ (.A0(_209_),
    .A1(_210_),
    .S(net66),
    .Y(_211_));
 sky130_fd_sc_hd__nor3_1 _440_ (.A(net69),
    .B(net12),
    .C(net65),
    .Y(_212_));
 sky130_fd_sc_hd__o22ai_1 _441_ (.A1(\MASTER.tx_shift[7] ),
    .A2(_155_),
    .B1(_210_),
    .B2(net64),
    .Y(_213_));
 sky130_fd_sc_hd__nor3_1 _442_ (.A(_211_),
    .B(_212_),
    .C(_213_),
    .Y(_075_));
 sky130_fd_sc_hd__mux2i_1 _443_ (.A0(net13),
    .A1(\MASTER.tx_shift[7] ),
    .S(net69),
    .Y(_214_));
 sky130_fd_sc_hd__nand3_1 _444_ (.A(net64),
    .B(_155_),
    .C(_214_),
    .Y(_215_));
 sky130_fd_sc_hd__nand2b_1 _445_ (.A_N(\MASTER.tx_shift[8] ),
    .B(net69),
    .Y(_216_));
 sky130_fd_sc_hd__mux2i_1 _446_ (.A0(_215_),
    .A1(_216_),
    .S(net66),
    .Y(_217_));
 sky130_fd_sc_hd__nor3_1 _447_ (.A(net69),
    .B(net13),
    .C(net65),
    .Y(_218_));
 sky130_fd_sc_hd__o22ai_1 _448_ (.A1(\MASTER.tx_shift[8] ),
    .A2(_155_),
    .B1(_216_),
    .B2(net64),
    .Y(_219_));
 sky130_fd_sc_hd__nor3_1 _449_ (.A(_217_),
    .B(_218_),
    .C(_219_),
    .Y(_076_));
 sky130_fd_sc_hd__mux2i_1 _450_ (.A0(net14),
    .A1(\MASTER.tx_shift[8] ),
    .S(net69),
    .Y(_220_));
 sky130_fd_sc_hd__nand3_1 _451_ (.A(net64),
    .B(_155_),
    .C(_220_),
    .Y(_221_));
 sky130_fd_sc_hd__nand2b_1 _452_ (.A_N(\MASTER.tx_shift[9] ),
    .B(net69),
    .Y(_222_));
 sky130_fd_sc_hd__mux2i_1 _453_ (.A0(_221_),
    .A1(_222_),
    .S(net66),
    .Y(_223_));
 sky130_fd_sc_hd__nor3_1 _454_ (.A(net69),
    .B(net14),
    .C(net65),
    .Y(_224_));
 sky130_fd_sc_hd__o22ai_1 _455_ (.A1(\MASTER.tx_shift[9] ),
    .A2(_155_),
    .B1(_222_),
    .B2(net64),
    .Y(_225_));
 sky130_fd_sc_hd__nor3_1 _456_ (.A(_223_),
    .B(_224_),
    .C(_225_),
    .Y(_077_));
 sky130_fd_sc_hd__a21o_1 _457_ (.A1(_133_),
    .A2(net29),
    .B1(\MASTER.state[3] ),
    .X(_038_));
 sky130_fd_sc_hd__nand2_1 _458_ (.A(\SLAVE.bit_cnt[0] ),
    .B(_090_),
    .Y(_226_));
 sky130_fd_sc_hd__nand2_1 _459_ (.A(\SLAVE.bit_cnt[3] ),
    .B(_024_),
    .Y(_227_));
 sky130_fd_sc_hd__o21bai_1 _460_ (.A1(\SLAVE.bit_cnt[2] ),
    .A2(_227_),
    .B1_N(\SLAVE.bit_cnt[0] ),
    .Y(_228_));
 sky130_fd_sc_hd__mux2_2 _461_ (.A0(_226_),
    .A1(_228_),
    .S(_098_),
    .X(_229_));
 sky130_fd_sc_hd__nor2_1 _462_ (.A(\MASTER.cs ),
    .B(_229_),
    .Y(_078_));
 sky130_fd_sc_hd__nand2_1 _463_ (.A(_095_),
    .B(_025_),
    .Y(_230_));
 sky130_fd_sc_hd__nand2_1 _464_ (.A(_095_),
    .B(\SLAVE.bit_cnt[1] ),
    .Y(_231_));
 sky130_fd_sc_hd__nor3b_1 _465_ (.A(\SLAVE.bit_cnt[2] ),
    .B(_227_),
    .C_N(\SLAVE.state ),
    .Y(_232_));
 sky130_fd_sc_hd__nor2_1 _466_ (.A(_232_),
    .B(_098_),
    .Y(_233_));
 sky130_fd_sc_hd__mux2i_1 _467_ (.A0(_230_),
    .A1(_231_),
    .S(_233_),
    .Y(_079_));
 sky130_fd_sc_hd__nor3_1 _468_ (.A(\SLAVE.bit_cnt[2] ),
    .B(\SLAVE.bit_cnt[3] ),
    .C(\MASTER.cs ),
    .Y(_234_));
 sky130_fd_sc_hd__nand2_1 _469_ (.A(\SLAVE.bit_cnt[2] ),
    .B(_095_),
    .Y(_235_));
 sky130_fd_sc_hd__a21oi_1 _470_ (.A1(_024_),
    .A2(_098_),
    .B1(_235_),
    .Y(_236_));
 sky130_fd_sc_hd__a31o_2 _471_ (.A1(_024_),
    .A2(_098_),
    .A3(_234_),
    .B1(_236_),
    .X(_080_));
 sky130_fd_sc_hd__nand2_1 _472_ (.A(\SLAVE.bit_cnt[0] ),
    .B(\SLAVE.bit_cnt[1] ),
    .Y(_237_));
 sky130_fd_sc_hd__xor2_1 _473_ (.A(\SLAVE.bit_cnt[3] ),
    .B(_237_),
    .X(_238_));
 sky130_fd_sc_hd__inv_1 _474_ (.A(_024_),
    .Y(_239_));
 sky130_fd_sc_hd__a21oi_1 _475_ (.A1(\SLAVE.bit_cnt[3] ),
    .A2(_239_),
    .B1(\SLAVE.bit_cnt[2] ),
    .Y(_240_));
 sky130_fd_sc_hd__a21oi_1 _476_ (.A1(\SLAVE.bit_cnt[2] ),
    .A2(_238_),
    .B1(_240_),
    .Y(_241_));
 sky130_fd_sc_hd__o221a_2 _477_ (.A1(\SLAVE.bit_cnt[3] ),
    .A2(_098_),
    .B1(_233_),
    .B2(_241_),
    .C1(_095_),
    .X(_081_));
 sky130_fd_sc_hd__nand2_1 _478_ (.A(_095_),
    .B(\MASTER.miso ),
    .Y(_242_));
 sky130_fd_sc_hd__a21oi_1 _479_ (.A1(\SLAVE.state ),
    .A2(_094_),
    .B1(_242_),
    .Y(_243_));
 sky130_fd_sc_hd__a41o_1 _480_ (.A1(\SLAVE.state ),
    .A2(_095_),
    .A3(\SLAVE.tx_shift[11] ),
    .A4(_094_),
    .B1(_243_),
    .X(_082_));
 sky130_fd_sc_hd__nor2_1 _481_ (.A(\MASTER.cs ),
    .B(_232_),
    .Y(_083_));
 sky130_fd_sc_hd__ha_1 _482_ (.A(\SLAVE.bit_cnt[0] ),
    .B(\SLAVE.bit_cnt[1] ),
    .COUT(_024_),
    .SUM(_025_));
 sky130_fd_sc_hd__ha_1 _483_ (.A(\MASTER.clk_div[0] ),
    .B(_026_),
    .COUT(_027_),
    .SUM(_028_));
 sky130_fd_sc_hd__ha_1 _484_ (.A(\MASTER.clk_div[0] ),
    .B(\MASTER.clk_div[1] ),
    .COUT(_029_),
    .SUM(_244_));
 sky130_fd_sc_hd__ha_1 _485_ (.A(\MASTER.bit_cnt[0] ),
    .B(\MASTER.bit_cnt[1] ),
    .COUT(_030_),
    .SUM(_031_));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_2_0__f_clk (.A(clknet_0_clk),
    .X(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_2_1__f_clk (.A(clknet_0_clk),
    .X(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_2_2__f_clk (.A(clknet_0_clk),
    .X(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_2_3__f_clk (.A(clknet_0_clk),
    .X(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__bufinv_16 clkload0 (.A(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__inv_6 clkload1 (.A(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkinv_4 clkload2 (.A(clknet_2_3__leaf_clk));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input1 (.A(cpha),
    .X(net1));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input10 (.A(master_din[5]),
    .X(net10));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input11 (.A(master_din[6]),
    .X(net11));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input12 (.A(master_din[7]),
    .X(net12));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input13 (.A(master_din[8]),
    .X(net13));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input14 (.A(master_din[9]),
    .X(net14));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input15 (.A(newd),
    .X(net15));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input16 (.A(rst),
    .X(net16));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input17 (.A(slave_din[0]),
    .X(net17));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input18 (.A(slave_din[10]),
    .X(net18));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input19 (.A(slave_din[11]),
    .X(net19));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input2 (.A(cpol),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input20 (.A(slave_din[1]),
    .X(net20));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input21 (.A(slave_din[2]),
    .X(net21));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input22 (.A(slave_din[3]),
    .X(net22));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input23 (.A(slave_din[4]),
    .X(net23));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input24 (.A(slave_din[5]),
    .X(net24));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input25 (.A(slave_din[6]),
    .X(net25));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input26 (.A(slave_din[7]),
    .X(net26));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input27 (.A(slave_din[8]),
    .X(net27));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input28 (.A(slave_din[9]),
    .X(net28));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input3 (.A(master_din[0]),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input4 (.A(master_din[10]),
    .X(net4));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input5 (.A(master_din[11]),
    .X(net5));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input6 (.A(master_din[1]),
    .X(net6));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input7 (.A(master_din[2]),
    .X(net7));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input8 (.A(master_din[3]),
    .X(net8));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input9 (.A(master_din[4]),
    .X(net9));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output29 (.A(net29),
    .X(done));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output30 (.A(net30),
    .X(master_dout[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output31 (.A(net31),
    .X(master_dout[10]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output32 (.A(net32),
    .X(master_dout[11]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output33 (.A(net33),
    .X(master_dout[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output34 (.A(net34),
    .X(master_dout[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output35 (.A(net35),
    .X(master_dout[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output36 (.A(net36),
    .X(master_dout[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output37 (.A(net37),
    .X(master_dout[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output38 (.A(net38),
    .X(master_dout[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output39 (.A(net39),
    .X(master_dout[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output40 (.A(net40),
    .X(master_dout[8]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output41 (.A(net41),
    .X(master_dout[9]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output42 (.A(net42),
    .X(slave_dout[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output43 (.A(net43),
    .X(slave_dout[10]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output44 (.A(net44),
    .X(slave_dout[11]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output45 (.A(net45),
    .X(slave_dout[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output46 (.A(net46),
    .X(slave_dout[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output47 (.A(net47),
    .X(slave_dout[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output48 (.A(net48),
    .X(slave_dout[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output49 (.A(net49),
    .X(slave_dout[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output50 (.A(net50),
    .X(slave_dout[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output51 (.A(net51),
    .X(slave_dout[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output52 (.A(net52),
    .X(slave_dout[8]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output53 (.A(net53),
    .X(slave_dout[9]));
 sky130_fd_sc_hd__buf_4 place63 (.A(_006_),
    .X(net63));
 sky130_fd_sc_hd__buf_4 place64 (.A(_085_),
    .X(net64));
 sky130_fd_sc_hd__buf_4 place65 (.A(_161_),
    .X(net65));
 sky130_fd_sc_hd__buf_4 place66 (.A(_143_),
    .X(net66));
 sky130_fd_sc_hd__buf_4 place67 (.A(_104_),
    .X(net67));
 sky130_fd_sc_hd__buf_4 place68 (.A(_032_),
    .X(net68));
 sky130_fd_sc_hd__buf_4 place69 (.A(\MASTER.state[1] ),
    .X(net69));
 sky130_fd_sc_hd__buf_4 place70 (.A(\MASTER.sclk ),
    .X(net70));
endmodule
