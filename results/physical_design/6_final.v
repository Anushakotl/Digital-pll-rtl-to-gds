module pll_digital_top (DOWN,
    UP,
    ctrl_clk,
    error_valid,
    feedback_clk,
    locked,
    loop_enable,
    ref_clk,
    reset_n,
    sat_high,
    sat_low,
    start,
    tdc_clk,
    vco_clk,
    controller_state,
    divide_value,
    ki_debug,
    kp_debug,
    phase_error,
    tuning_word);
 output DOWN;
 output UP;
 input ctrl_clk;
 output error_valid;
 output feedback_clk;
 output locked;
 output loop_enable;
 input ref_clk;
 input reset_n;
 output sat_high;
 output sat_low;
 input start;
 input tdc_clk;
 input vco_clk;
 output [2:0] controller_state;
 input [7:0] divide_value;
 output [7:0] ki_debug;
 output [7:0] kp_debug;
 output [7:0] phase_error;
 output [9:0] tuning_word;

 wire net143_144;
 wire net141_142;
 wire net139_140;
 wire net137_138;
 wire net135_136;
 wire net133_134;
 wire net131_132;
 wire net129_130;
 wire net127_128;
 wire net125_126;
 wire net123_124;
 wire net121_122;
 wire net119_120;
 wire net117_118;
 wire net115_116;
 wire net113_114;
 wire net111_112;
 wire net109_110;
 wire net107_108;
 wire net105_106;
 wire net103_104;
 wire net101_102;
 wire net99_100;
 wire net97_98;
 wire net95_96;
 wire net93_94;
 wire net91_92;
 wire net89_90;
 wire net87_88;
 wire net85_86;
 wire net83_84;
 wire net81_82;
 wire net79_80;
 wire net77_78;
 wire net75_76;
 wire net73_74;
 wire net71_72;
 wire net69_70;
 wire net67_68;
 wire net_53;
 wire net_52;
 wire net_51;
 wire net_50;
 wire net_49;
 wire net_48;
 wire net_47;
 wire net_46;
 wire net_45;
 wire net_44;
 wire net_43;
 wire net_42;
 wire net_41;
 wire net_40;
 wire net_39;
 wire net_38;
 wire net_37;
 wire net_36;
 wire net_35;
 wire net_34;
 wire net_33;
 wire net_32;
 wire net_31;
 wire net_30;
 wire net_29;
 wire net_28;
 wire net_27;
 wire net_26;
 wire net_25;
 wire net_24;
 wire net_23;
 wire net_22;
 wire net_21;
 wire net_20;
 wire net_19;
 wire net_18;
 wire net_17;
 wire net_16;
 wire net_15;
 wire net_14;
 wire net_13;
 wire net_12;
 wire net_11;
 wire net_10;
 wire net_9;
 wire net_8;
 wire net_7;
 wire net_6;
 wire net_5;
 wire net_4;
 wire net_3;
 wire net_2;
 wire net_1;
 wire _0657_;
 wire _0658_;
 wire _0659_;
 wire _0660_;
 wire _0661_;
 wire _0662_;
 wire _0664_;
 wire _0665_;
 wire _0666_;
 wire _0667_;
 wire _0668_;
 wire _0669_;
 wire _0671_;
 wire _0672_;
 wire _0673_;
 wire _0674_;
 wire _0676_;
 wire _0677_;
 wire _0678_;
 wire _0679_;
 wire _0680_;
 wire _0681_;
 wire _0682_;
 wire _0683_;
 wire _0521_;
 wire _0527_;
 wire _0528_;
 wire _0529_;
 wire _0530_;
 wire _0531_;
 wire _0532_;
 wire _0533_;
 wire _0534_;
 wire _0535_;
 wire _0522_;
 wire _0523_;
 wire _0524_;
 wire _0525_;
 wire _0526_;
 wire _0323_;
 wire _0324_;
 wire _0325_;
 wire _0326_;
 wire _0327_;
 wire _0328_;
 wire _0329_;
 wire _0330_;
 wire _0331_;
 wire _0537_;
 wire _0504_;
 wire _0512_;
 wire _0513_;
 wire _0514_;
 wire _0515_;
 wire _0516_;
 wire _0517_;
 wire _0518_;
 wire _0519_;
 wire _0520_;
 wire _0505_;
 wire _0506_;
 wire _0507_;
 wire _0508_;
 wire _0509_;
 wire _0510_;
 wire _0511_;
 wire _0541_;
 wire _0552_;
 wire _0557_;
 wire _0558_;
 wire _0559_;
 wire _0560_;
 wire _0561_;
 wire _0562_;
 wire _0563_;
 wire _0564_;
 wire _0542_;
 wire _0543_;
 wire _0544_;
 wire _0545_;
 wire _0546_;
 wire _0547_;
 wire _0548_;
 wire _0549_;
 wire _0550_;
 wire _0551_;
 wire _0553_;
 wire _0554_;
 wire _0555_;
 wire _0556_;
 wire _0436_;
 wire _0437_;
 wire _0438_;
 wire _0439_;
 wire _0440_;
 wire _0441_;
 wire _0442_;
 wire _0443_;
 wire _0444_;
 wire _0445_;
 wire _0446_;
 wire _0447_;
 wire _0448_;
 wire _0449_;
 wire _0450_;
 wire _0451_;
 wire _0452_;
 wire _0453_;
 wire _0454_;
 wire _0455_;
 wire _0456_;
 wire _0457_;
 wire _0458_;
 wire _0322_;
 wire _0623_;
 wire _0624_;
 wire _0625_;
 wire _0626_;
 wire _0627_;
 wire _0629_;
 wire _0630_;
 wire _0631_;
 wire _0503_;
 wire _0482_;
 wire _0481_;
 wire _0480_;
 wire _0479_;
 wire _0478_;
 wire _0477_;
 wire _0476_;
 wire _0475_;
 wire _0474_;
 wire _0473_;
 wire _0472_;
 wire _0471_;
 wire _0470_;
 wire _0469_;
 wire _0468_;
 wire _0540_;
 wire _0501_;
 wire _0502_;
 wire _0500_;
 wire _0072_;
 wire _0083_;
 wire _0088_;
 wire _0089_;
 wire _0090_;
 wire _0091_;
 wire _0092_;
 wire _0093_;
 wire _0094_;
 wire _0095_;
 wire _0073_;
 wire _0074_;
 wire _0075_;
 wire _0076_;
 wire _0077_;
 wire _0078_;
 wire _0079_;
 wire _0080_;
 wire _0081_;
 wire _0082_;
 wire _0084_;
 wire _0085_;
 wire _0086_;
 wire _0087_;
 wire _0000_;
 wire _0011_;
 wire _0016_;
 wire _0017_;
 wire _0018_;
 wire _0019_;
 wire _0020_;
 wire _0021_;
 wire _0022_;
 wire _0023_;
 wire _0001_;
 wire _0002_;
 wire _0003_;
 wire _0004_;
 wire _0005_;
 wire _0006_;
 wire _0007_;
 wire _0008_;
 wire _0009_;
 wire _0010_;
 wire _0012_;
 wire _0013_;
 wire _0014_;
 wire _0015_;
 wire _0498_;
 wire _0499_;
 wire _0497_;
 wire _0048_;
 wire _0059_;
 wire _0064_;
 wire _0065_;
 wire _0066_;
 wire _0067_;
 wire _0068_;
 wire _0069_;
 wire _0070_;
 wire _0071_;
 wire _0049_;
 wire _0050_;
 wire _0051_;
 wire _0052_;
 wire _0053_;
 wire _0054_;
 wire _0055_;
 wire _0056_;
 wire _0057_;
 wire _0058_;
 wire _0060_;
 wire _0061_;
 wire _0062_;
 wire _0063_;
 wire _0024_;
 wire _0035_;
 wire _0040_;
 wire _0041_;
 wire _0042_;
 wire _0043_;
 wire _0044_;
 wire _0045_;
 wire _0046_;
 wire _0047_;
 wire _0025_;
 wire _0026_;
 wire _0027_;
 wire _0028_;
 wire _0029_;
 wire _0030_;
 wire _0031_;
 wire _0032_;
 wire _0033_;
 wire _0034_;
 wire _0036_;
 wire _0037_;
 wire _0038_;
 wire _0039_;
 wire net156;
 wire net157;
 wire _0096_;
 wire _0097_;
 wire _0098_;
 wire _0099_;
 wire _0100_;
 wire _0101_;
 wire _0102_;
 wire _0103_;
 wire _0104_;
 wire _0105_;
 wire _0106_;
 wire _0107_;
 wire _0108_;
 wire _0109_;
 wire _0110_;
 wire _0111_;
 wire _0112_;
 wire _0113_;
 wire _0114_;
 wire _0115_;
 wire _0116_;
 wire _0117_;
 wire _0118_;
 wire _0119_;
 wire _0120_;
 wire _0121_;
 wire _0122_;
 wire _0123_;
 wire _0124_;
 wire _0125_;
 wire _0126_;
 wire _0127_;
 wire _0128_;
 wire _0129_;
 wire _0130_;
 wire _0131_;
 wire _0132_;
 wire _0133_;
 wire _0134_;
 wire _0135_;
 wire _0136_;
 wire _0137_;
 wire _0138_;
 wire _0139_;
 wire _0140_;
 wire _0141_;
 wire _0142_;
 wire _0143_;
 wire _0144_;
 wire _0145_;
 wire _0146_;
 wire _0147_;
 wire _0148_;
 wire _0149_;
 wire _0150_;
 wire _0151_;
 wire _0152_;
 wire _0153_;
 wire _0154_;
 wire _0155_;
 wire _0156_;
 wire _0157_;
 wire _0158_;
 wire _0159_;
 wire _0160_;
 wire _0161_;
 wire _0162_;
 wire _0163_;
 wire _0164_;
 wire _0165_;
 wire _0166_;
 wire _0167_;
 wire _0168_;
 wire _0169_;
 wire _0170_;
 wire _0171_;
 wire _0172_;
 wire _0173_;
 wire _0174_;
 wire _0175_;
 wire _0176_;
 wire _0177_;
 wire _0178_;
 wire _0179_;
 wire _0180_;
 wire _0181_;
 wire _0182_;
 wire _0183_;
 wire _0184_;
 wire _0185_;
 wire _0186_;
 wire _0187_;
 wire _0188_;
 wire _0189_;
 wire _0190_;
 wire _0191_;
 wire _0192_;
 wire _0193_;
 wire _0194_;
 wire _0195_;
 wire _0196_;
 wire _0197_;
 wire _0198_;
 wire _0199_;
 wire _0200_;
 wire _0201_;
 wire _0202_;
 wire _0203_;
 wire _0204_;
 wire _0205_;
 wire _0206_;
 wire _0207_;
 wire _0208_;
 wire _0209_;
 wire _0210_;
 wire _0211_;
 wire _0212_;
 wire _0213_;
 wire _0214_;
 wire _0215_;
 wire _0216_;
 wire _0217_;
 wire _0218_;
 wire _0219_;
 wire _0220_;
 wire _0221_;
 wire _0222_;
 wire _0223_;
 wire _0224_;
 wire _0225_;
 wire _0226_;
 wire _0227_;
 wire _0228_;
 wire _0229_;
 wire _0230_;
 wire _0231_;
 wire _0232_;
 wire _0233_;
 wire _0234_;
 wire _0235_;
 wire _0236_;
 wire _0237_;
 wire _0238_;
 wire _0239_;
 wire _0240_;
 wire _0241_;
 wire _0242_;
 wire _0243_;
 wire _0244_;
 wire _0245_;
 wire _0246_;
 wire _0247_;
 wire _0248_;
 wire _0249_;
 wire _0250_;
 wire _0251_;
 wire _0252_;
 wire _0253_;
 wire _0254_;
 wire _0255_;
 wire _0256_;
 wire _0257_;
 wire _0258_;
 wire _0259_;
 wire _0260_;
 wire _0261_;
 wire _0262_;
 wire _0263_;
 wire _0264_;
 wire _0265_;
 wire _0266_;
 wire _0267_;
 wire _0268_;
 wire _0269_;
 wire _0270_;
 wire _0271_;
 wire _0272_;
 wire _0273_;
 wire _0274_;
 wire _0275_;
 wire _0276_;
 wire _0277_;
 wire _0278_;
 wire _0279_;
 wire _0280_;
 wire _0281_;
 wire _0282_;
 wire _0283_;
 wire _0284_;
 wire _0285_;
 wire _0286_;
 wire _0287_;
 wire _0288_;
 wire _0289_;
 wire _0290_;
 wire _0291_;
 wire _0292_;
 wire _0293_;
 wire _0294_;
 wire _0295_;
 wire _0296_;
 wire _0297_;
 wire _0298_;
 wire _0299_;
 wire _0300_;
 wire _0301_;
 wire _0302_;
 wire _0305_;
 wire _0306_;
 wire _0307_;
 wire _0308_;
 wire _0309_;
 wire _0310_;
 wire _0311_;
 wire _0312_;
 wire _0313_;
 wire _0314_;
 wire _0315_;
 wire _0316_;
 wire _0317_;
 wire _0318_;
 wire _0319_;
 wire _0320_;
 wire _0321_;
 wire _0332_;
 wire _0333_;
 wire _0334_;
 wire _0335_;
 wire _0336_;
 wire _0337_;
 wire _0338_;
 wire _0339_;
 wire _0340_;
 wire _0341_;
 wire _0342_;
 wire _0343_;
 wire _0344_;
 wire _0345_;
 wire _0346_;
 wire _0347_;
 wire _0348_;
 wire _0349_;
 wire _0350_;
 wire _0351_;
 wire _0352_;
 wire _0353_;
 wire _0354_;
 wire _0355_;
 wire _0356_;
 wire _0357_;
 wire _0358_;
 wire _0359_;
 wire _0360_;
 wire _0361_;
 wire _0362_;
 wire _0363_;
 wire _0364_;
 wire _0365_;
 wire _0366_;
 wire _0367_;
 wire _0368_;
 wire _0369_;
 wire _0370_;
 wire _0371_;
 wire _0372_;
 wire _0373_;
 wire _0374_;
 wire _0375_;
 wire _0376_;
 wire _0377_;
 wire _0378_;
 wire _0379_;
 wire _0380_;
 wire _0381_;
 wire _0382_;
 wire _0383_;
 wire _0384_;
 wire _0385_;
 wire _0386_;
 wire _0387_;
 wire _0388_;
 wire _0389_;
 wire _0390_;
 wire _0391_;
 wire _0392_;
 wire _0393_;
 wire _0394_;
 wire _0395_;
 wire _0396_;
 wire _0397_;
 wire _0398_;
 wire _0399_;
 wire _0400_;
 wire _0401_;
 wire _0402_;
 wire _0403_;
 wire _0404_;
 wire _0405_;
 wire _0406_;
 wire _0407_;
 wire _0408_;
 wire _0409_;
 wire _0410_;
 wire _0411_;
 wire _0412_;
 wire _0413_;
 wire _0414_;
 wire _0415_;
 wire _0416_;
 wire _0417_;
 wire _0418_;
 wire _0419_;
 wire _0420_;
 wire _0421_;
 wire _0422_;
 wire _0423_;
 wire _0424_;
 wire _0425_;
 wire _0426_;
 wire _0427_;
 wire _0428_;
 wire _0429_;
 wire _0430_;
 wire _0431_;
 wire _0432_;
 wire _0433_;
 wire _0434_;
 wire _0435_;
 wire _0459_;
 wire _0460_;
 wire _0461_;
 wire _0462_;
 wire _0463_;
 wire _0464_;
 wire _0465_;
 wire _0466_;
 wire _0467_;
 wire _0483_;
 wire _0484_;
 wire _0485_;
 wire _0486_;
 wire _0487_;
 wire _0488_;
 wire _0489_;
 wire _0490_;
 wire _0491_;
 wire _0492_;
 wire _0493_;
 wire _0494_;
 wire _0495_;
 wire _0496_;
 wire _0536_;
 wire _0538_;
 wire _0539_;
 wire _0565_;
 wire _0566_;
 wire _0567_;
 wire _0568_;
 wire _0569_;
 wire _0570_;
 wire _0571_;
 wire _0572_;
 wire _0573_;
 wire _0574_;
 wire _0575_;
 wire _0576_;
 wire _0577_;
 wire _0578_;
 wire _0579_;
 wire _0580_;
 wire _0581_;
 wire _0582_;
 wire _0583_;
 wire _0584_;
 wire _0585_;
 wire _0586_;
 wire _0587_;
 wire _0588_;
 wire _0589_;
 wire _0590_;
 wire _0591_;
 wire _0592_;
 wire _0593_;
 wire _0594_;
 wire _0595_;
 wire _0596_;
 wire _0597_;
 wire _0598_;
 wire _0599_;
 wire _0600_;
 wire _0601_;
 wire _0602_;
 wire _0603_;
 wire _0604_;
 wire _0605_;
 wire _0606_;
 wire _0607_;
 wire _0608_;
 wire _0609_;
 wire _0610_;
 wire _0611_;
 wire _0612_;
 wire _0613_;
 wire _0614_;
 wire _0615_;
 wire _0616_;
 wire _0617_;
 wire _0618_;
 wire _0619_;
 wire _0620_;
 wire _0621_;
 wire _0622_;
 wire _0628_;
 wire _0632_;
 wire _0633_;
 wire _0634_;
 wire _0635_;
 wire _0636_;
 wire _0637_;
 wire _0638_;
 wire _0639_;
 wire _0640_;
 wire _0641_;
 wire _0642_;
 wire _0643_;
 wire _0644_;
 wire _0645_;
 wire _0646_;
 wire _0647_;
 wire _0648_;
 wire _0649_;
 wire _0650_;
 wire _0651_;
 wire _0652_;
 wire _0653_;
 wire _0654_;
 wire _0655_;
 wire _0656_;
 wire _0663_;
 wire _0670_;
 wire _0675_;
 wire _0684_;
 wire _0685_;
 wire _0686_;
 wire _0687_;
 wire _0688_;
 wire _0689_;
 wire _0690_;
 wire _0691_;
 wire _0692_;
 wire _0693_;
 wire _0694_;
 wire _0695_;
 wire _0696_;
 wire _0697_;
 wire _0698_;
 wire _0699_;
 wire _0700_;
 wire _0701_;
 wire _0702_;
 wire _0703_;
 wire _0704_;
 wire _0705_;
 wire _0706_;
 wire _0707_;
 wire _0708_;
 wire _0709_;
 wire _0710_;
 wire _0711_;
 wire _0712_;
 wire _0713_;
 wire _0714_;
 wire _0715_;
 wire _0716_;
 wire _0717_;
 wire _0718_;
 wire _0719_;
 wire _0720_;
 wire _0721_;
 wire _0722_;
 wire _0723_;
 wire _0724_;
 wire _0725_;
 wire _0726_;
 wire _0727_;
 wire _0728_;
 wire _0729_;
 wire _0730_;
 wire _0731_;
 wire _0732_;
 wire _0733_;
 wire _0734_;
 wire _0735_;
 wire _0736_;
 wire _0737_;
 wire _0738_;
 wire _0739_;
 wire _0740_;
 wire _0741_;
 wire _0742_;
 wire _0743_;
 wire _0744_;
 wire _0745_;
 wire _0746_;
 wire _0747_;
 wire _0748_;
 wire _0749_;
 wire _0750_;
 wire _0751_;
 wire _0752_;
 wire _0753_;
 wire _0754_;
 wire _0755_;
 wire _0756_;
 wire _0757_;
 wire _0758_;
 wire _0759_;
 wire _0760_;
 wire _0761_;
 wire _0762_;
 wire _0763_;
 wire _0764_;
 wire _0765_;
 wire _0766_;
 wire _0767_;
 wire _0768_;
 wire _0769_;
 wire _0770_;
 wire _0771_;
 wire _0772_;
 wire _0773_;
 wire _0774_;
 wire _0775_;
 wire _0776_;
 wire _0777_;
 wire _0778_;
 wire _0779_;
 wire _0780_;
 wire _0781_;
 wire _0782_;
 wire _0783_;
 wire _0784_;
 wire _0785_;
 wire _0786_;
 wire _0787_;
 wire _0788_;
 wire _0789_;
 wire _0790_;
 wire _0791_;
 wire _0792_;
 wire _0793_;
 wire _0794_;
 wire _0795_;
 wire _0796_;
 wire _0797_;
 wire _0798_;
 wire _0799_;
 wire _0800_;
 wire _0801_;
 wire _0802_;
 wire _0803_;
 wire _0804_;
 wire _0805_;
 wire _0806_;
 wire _0807_;
 wire _0808_;
 wire _0809_;
 wire _0810_;
 wire _0811_;
 wire _0812_;
 wire _0813_;
 wire _0814_;
 wire _0815_;
 wire _0816_;
 wire _0817_;
 wire _0818_;
 wire _0819_;
 wire _0820_;
 wire _0821_;
 wire _0822_;
 wire _0823_;
 wire _0824_;
 wire _0825_;
 wire _0826_;
 wire _0827_;
 wire _0828_;
 wire _0829_;
 wire _0830_;
 wire _0831_;
 wire _0832_;
 wire _0833_;
 wire _0834_;
 wire _0835_;
 wire _0836_;
 wire _0837_;
 wire _0838_;
 wire _0839_;
 wire _0840_;
 wire _0841_;
 wire _0842_;
 wire _0843_;
 wire _0844_;
 wire _0845_;
 wire _0846_;
 wire _0847_;
 wire _0848_;
 wire _0849_;
 wire _0850_;
 wire _0851_;
 wire _0852_;
 wire _0853_;
 wire _0854_;
 wire _0855_;
 wire _0856_;
 wire _0857_;
 wire _0858_;
 wire _0859_;
 wire _0860_;
 wire _0861_;
 wire _0862_;
 wire _0863_;
 wire _0864_;
 wire _0865_;
 wire _0866_;
 wire _0867_;
 wire _0868_;
 wire _0869_;
 wire _0870_;
 wire _0871_;
 wire _0872_;
 wire _0873_;
 wire _0874_;
 wire _0875_;
 wire _0876_;
 wire _0877_;
 wire _0878_;
 wire _0879_;
 wire _0880_;
 wire _0881_;
 wire _0882_;
 wire _0883_;
 wire _0884_;
 wire _0885_;
 wire _0886_;
 wire _0887_;
 wire _0888_;
 wire _0889_;
 wire _0890_;
 wire _0891_;
 wire _0892_;
 wire _0893_;
 wire _0894_;
 wire _0895_;
 wire _0896_;
 wire _0897_;
 wire _0898_;
 wire _0899_;
 wire _0900_;
 wire _0901_;
 wire _0902_;
 wire _0903_;
 wire _0904_;
 wire _0905_;
 wire _0906_;
 wire _0907_;
 wire _0908_;
 wire _0909_;
 wire _0910_;
 wire _0911_;
 wire _0912_;
 wire _0913_;
 wire _0914_;
 wire _0915_;
 wire _0916_;
 wire _0917_;
 wire _0918_;
 wire _0919_;
 wire _0920_;
 wire _0921_;
 wire _0922_;
 wire _0923_;
 wire _0924_;
 wire _0925_;
 wire _0926_;
 wire _0927_;
 wire _0928_;
 wire _0929_;
 wire _0930_;
 wire _0931_;
 wire _0932_;
 wire _0933_;
 wire _0934_;
 wire _0935_;
 wire _0936_;
 wire _0937_;
 wire _0938_;
 wire _0939_;
 wire _0940_;
 wire _0941_;
 wire _0942_;
 wire _0943_;
 wire _0944_;
 wire _0945_;
 wire _0946_;
 wire _0947_;
 wire _0948_;
 wire _0949_;
 wire _0950_;
 wire _0951_;
 wire _0952_;
 wire _0953_;
 wire _0954_;
 wire _0955_;
 wire _0956_;
 wire _0957_;
 wire _0958_;
 wire _0959_;
 wire _0960_;
 wire _0961_;
 wire _0962_;
 wire _0963_;
 wire _0964_;
 wire _0965_;
 wire _0966_;
 wire _0967_;
 wire _0968_;
 wire _0969_;
 wire _0970_;
 wire _0971_;
 wire _0972_;
 wire _0973_;
 wire _0974_;
 wire _0975_;
 wire _0976_;
 wire _0977_;
 wire _0978_;
 wire _0979_;
 wire _0980_;
 wire _0981_;
 wire _0982_;
 wire _0983_;
 wire _0984_;
 wire _0985_;
 wire _0986_;
 wire _0987_;
 wire _0988_;
 wire _0989_;
 wire _0990_;
 wire _0991_;
 wire _0992_;
 wire _0993_;
 wire _0994_;
 wire _0995_;
 wire _0996_;
 wire _0997_;
 wire _0998_;
 wire _0999_;
 wire _1000_;
 wire _1001_;
 wire _1002_;
 wire _1003_;
 wire _1004_;
 wire _1005_;
 wire _1006_;
 wire _1007_;
 wire _1008_;
 wire _1009_;
 wire _1010_;
 wire _1011_;
 wire _1012_;
 wire _1013_;
 wire _1014_;
 wire _1015_;
 wire _1016_;
 wire _1017_;
 wire _1018_;
 wire _1019_;
 wire _1020_;
 wire _1021_;
 wire _1022_;
 wire _1023_;
 wire _1024_;
 wire _1025_;
 wire _1026_;
 wire _1027_;
 wire _1028_;
 wire _1029_;
 wire _1030_;
 wire _1031_;
 wire _1032_;
 wire _1033_;
 wire _1034_;
 wire _1035_;
 wire _1036_;
 wire _1037_;
 wire _1038_;
 wire _1039_;
 wire _1040_;
 wire _1041_;
 wire _1042_;
 wire _1043_;
 wire _1044_;
 wire _1045_;
 wire _1046_;
 wire _1047_;
 wire _1048_;
 wire _1049_;
 wire _1050_;
 wire _1051_;
 wire _1052_;
 wire _1053_;
 wire _1054_;
 wire _1055_;
 wire _1056_;
 wire _1057_;
 wire _1058_;
 wire _1059_;
 wire _1060_;
 wire _1061_;
 wire _1062_;
 wire _1063_;
 wire _1064_;
 wire _1065_;
 wire _1066_;
 wire _1067_;
 wire _1068_;
 wire _1069_;
 wire _1070_;
 wire _1071_;
 wire _1072_;
 wire _1073_;
 wire _1074_;
 wire _1075_;
 wire _1076_;
 wire _1077_;
 wire _1078_;
 wire _1079_;
 wire _1080_;
 wire _1081_;
 wire _1082_;
 wire _1083_;
 wire _1084_;
 wire _1085_;
 wire _1086_;
 wire _1087_;
 wire _1088_;
 wire _1089_;
 wire _1090_;
 wire _1091_;
 wire _1092_;
 wire _1093_;
 wire _1094_;
 wire _1095_;
 wire _1096_;
 wire _1097_;
 wire _1098_;
 wire _1099_;
 wire _1100_;
 wire _1101_;
 wire _1102_;
 wire _1103_;
 wire _1104_;
 wire _1105_;
 wire _1106_;
 wire _1107_;
 wire _1108_;
 wire _1109_;
 wire _1110_;
 wire _1111_;
 wire _1112_;
 wire _1113_;
 wire _1114_;
 wire _1115_;
 wire _1116_;
 wire _1117_;
 wire _1118_;
 wire _1119_;
 wire _1120_;
 wire _1121_;
 wire _1122_;
 wire _1123_;
 wire _1124_;
 wire _1125_;
 wire _1126_;
 wire _1127_;
 wire _1128_;
 wire _1129_;
 wire _1130_;
 wire _1131_;
 wire _1132_;
 wire _1133_;
 wire _1134_;
 wire _1135_;
 wire _1136_;
 wire _1137_;
 wire _1138_;
 wire _1139_;
 wire _1140_;
 wire _1141_;
 wire _1142_;
 wire _1143_;
 wire _1144_;
 wire _1145_;
 wire _1146_;
 wire _1147_;
 wire _1148_;
 wire _1149_;
 wire _1150_;
 wire _1151_;
 wire _1152_;
 wire _1153_;
 wire _1154_;
 wire _1155_;
 wire _1156_;
 wire _1157_;
 wire _1158_;
 wire _1159_;
 wire _1160_;
 wire _1161_;
 wire _1162_;
 wire _1163_;
 wire _1164_;
 wire _1165_;
 wire _1166_;
 wire _1167_;
 wire _1168_;
 wire _1169_;
 wire _1170_;
 wire _1171_;
 wire _1172_;
 wire _1173_;
 wire _1174_;
 wire _1175_;
 wire _1176_;
 wire _1177_;
 wire _1178_;
 wire _1179_;
 wire _1180_;
 wire _1181_;
 wire _1182_;
 wire _1183_;
 wire _1184_;
 wire _1185_;
 wire _1186_;
 wire _1187_;
 wire _1188_;
 wire _1189_;
 wire _1190_;
 wire _1191_;
 wire _1192_;
 wire _1193_;
 wire _1194_;
 wire _1195_;
 wire _1196_;
 wire _1197_;
 wire _1198_;
 wire _1199_;
 wire _1200_;
 wire _1201_;
 wire _1202_;
 wire _1203_;
 wire _1204_;
 wire _1205_;
 wire _1206_;
 wire _1207_;
 wire _1208_;
 wire _1209_;
 wire _1210_;
 wire _1211_;
 wire _1212_;
 wire _1213_;
 wire _1214_;
 wire _1215_;
 wire _1216_;
 wire _1217_;
 wire _1218_;
 wire _1219_;
 wire _1220_;
 wire _1221_;
 wire _1222_;
 wire _1223_;
 wire _1224_;
 wire _1225_;
 wire _1226_;
 wire _1227_;
 wire _1228_;
 wire _1229_;
 wire _1230_;
 wire _1231_;
 wire _1232_;
 wire _1233_;
 wire _1234_;
 wire _1235_;
 wire _1236_;
 wire _1237_;
 wire _1238_;
 wire _1239_;
 wire _1240_;
 wire _1241_;
 wire _1242_;
 wire _1243_;
 wire _1244_;
 wire _1245_;
 wire _1246_;
 wire _1247_;
 wire _1248_;
 wire _1249_;
 wire _1250_;
 wire _1251_;
 wire _1252_;
 wire _1253_;
 wire _1254_;
 wire _1255_;
 wire _1256_;
 wire _1257_;
 wire _1258_;
 wire _1259_;
 wire _1260_;
 wire _1261_;
 wire _1262_;
 wire _1263_;
 wire _1264_;
 wire _1265_;
 wire _1266_;
 wire _1267_;
 wire _1268_;
 wire _1269_;
 wire _1270_;
 wire _1271_;
 wire _1272_;
 wire _1273_;
 wire _1274_;
 wire _1275_;
 wire _1276_;
 wire _1277_;
 wire _1278_;
 wire _1279_;
 wire _1280_;
 wire _1281_;
 wire _1282_;
 wire _1283_;
 wire _1284_;
 wire _1285_;
 wire _1286_;
 wire _1287_;
 wire _1288_;
 wire _1289_;
 wire _1290_;
 wire _1291_;
 wire _1292_;
 wire _1293_;
 wire _1294_;
 wire _1295_;
 wire _1296_;
 wire _1297_;
 wire _1298_;
 wire _1299_;
 wire _1300_;
 wire _1301_;
 wire _1302_;
 wire _1303_;
 wire _1304_;
 wire _1305_;
 wire _1306_;
 wire _1307_;
 wire _1308_;
 wire _1309_;
 wire _1310_;
 wire _1311_;
 wire _1312_;
 wire _1313_;
 wire _1314_;
 wire _1315_;
 wire _1316_;
 wire _1317_;
 wire _1318_;
 wire _1319_;
 wire _1320_;
 wire _1321_;
 wire _1322_;
 wire _1323_;
 wire _1324_;
 wire _1325_;
 wire _1326_;
 wire _1327_;
 wire _1328_;
 wire _1329_;
 wire _1330_;
 wire _1331_;
 wire _1332_;
 wire _1333_;
 wire _1334_;
 wire _1335_;
 wire _1336_;
 wire _1337_;
 wire _1338_;
 wire _1339_;
 wire _1340_;
 wire _1341_;
 wire _1342_;
 wire _1343_;
 wire _1344_;
 wire _1345_;
 wire _1346_;
 wire _1347_;
 wire _1348_;
 wire _1349_;
 wire _1350_;
 wire _1351_;
 wire _1352_;
 wire _1353_;
 wire _1354_;
 wire _1355_;
 wire _1356_;
 wire _1357_;
 wire _1358_;
 wire _1359_;
 wire _1360_;
 wire _1361_;
 wire _1362_;
 wire _1363_;
 wire _1364_;
 wire _1365_;
 wire _1366_;
 wire _1367_;
 wire _1368_;
 wire _1369_;
 wire _1370_;
 wire _1371_;
 wire _1372_;
 wire _1373_;
 wire _1374_;
 wire _1375_;
 wire _1376_;
 wire _1377_;
 wire _1378_;
 wire _1379_;
 wire _1380_;
 wire _1381_;
 wire _1382_;
 wire _1383_;
 wire _1384_;
 wire _1385_;
 wire _1386_;
 wire _1387_;
 wire net158;
 wire net159;
 wire net160;
 wire ctrl_freq_valid;
 wire net147;
 wire net148;
 wire net149;
 wire net150;
 wire net151;
 wire net152;
 wire net153;
 wire net161;
 wire net162;
 wire freq_locked_internal;
 wire net163;
 wire net164;
 wire net165;
 wire net166;
 wire net167;
 wire net168;
 wire net169;
 wire net170;
 wire net171;
 wire net172;
 wire raw_freq_valid;
 wire net154;
 wire net173;
 wire net174;
 wire net155;
 wire tdc_error_valid;
 wire net175;
 wire net176;
 wire net177;
 wire net178;
 wire net179;
 wire net180;
 wire net181;
 wire net182;
 wire net183;
 wire net184;
 wire \u_frequency_detector.fb_sync1 ;
 wire \u_frequency_detector.fb_sync2 ;
 wire \u_frequency_detector.fb_sync2_d ;
 wire \u_frequency_detector.ref_sync1 ;
 wire \u_frequency_detector.ref_sync2 ;
 wire \u_frequency_detector.ref_sync2_d ;
 wire \u_frequency_error_cdc.ack_sync1 ;
 wire \u_frequency_error_cdc.ack_sync2 ;
 wire \u_frequency_error_cdc.ack_toggle ;
 wire \u_frequency_error_cdc.req_sync1 ;
 wire \u_frequency_error_cdc.req_sync2 ;
 wire \u_frequency_error_cdc.req_toggle ;
 wire \u_phase_error_cdc.ack_sync1 ;
 wire \u_phase_error_cdc.ack_sync2 ;
 wire \u_phase_error_cdc.ack_toggle ;
 wire \u_phase_error_cdc.req_sync1 ;
 wire \u_phase_error_cdc.req_sync2 ;
 wire \u_phase_error_cdc.req_toggle ;
 wire net145;
 wire net146;
 wire net201;
 wire net203;
 wire net204;
 wire net209;
 wire net199;
 wire net205;
 wire net207;
 wire ref_clk_regs;
 wire net202;
 wire net206;
 wire net208;
 wire net210;
 wire net211;
 wire net212;
 wire clknet_0_ref_clk;
 wire clknet_1_0__leaf_ref_clk;
 wire clknet_0_ref_clk_regs;
 wire clknet_1_0__leaf_ref_clk_regs;
 wire clknet_0_tdc_clk;
 wire clknet_3_0__leaf_tdc_clk;
 wire clknet_3_1__leaf_tdc_clk;
 wire clknet_3_2__leaf_tdc_clk;
 wire clknet_3_3__leaf_tdc_clk;
 wire clknet_3_4__leaf_tdc_clk;
 wire clknet_3_5__leaf_tdc_clk;
 wire clknet_3_6__leaf_tdc_clk;
 wire clknet_3_7__leaf_tdc_clk;
 wire clknet_0_ctrl_clk;
 wire clknet_4_0_0_ctrl_clk;
 wire clknet_4_1_0_ctrl_clk;
 wire clknet_4_2_0_ctrl_clk;
 wire clknet_4_3_0_ctrl_clk;
 wire clknet_4_4_0_ctrl_clk;
 wire clknet_4_5_0_ctrl_clk;
 wire clknet_4_6_0_ctrl_clk;
 wire clknet_4_7_0_ctrl_clk;
 wire clknet_4_8_0_ctrl_clk;
 wire clknet_4_9_0_ctrl_clk;
 wire clknet_4_10_0_ctrl_clk;
 wire clknet_4_11_0_ctrl_clk;
 wire clknet_4_12_0_ctrl_clk;
 wire clknet_4_13_0_ctrl_clk;
 wire clknet_4_14_0_ctrl_clk;
 wire clknet_4_15_0_ctrl_clk;
 wire clknet_0_vco_clk;
 wire clknet_1_0__leaf_vco_clk;
 wire clknet_1_1__leaf_vco_clk;

 \ALU_24_1_15_1_24_unused_CO[21:0]_Y[22:0]_HAN_CARLSON  _1388_ (.A({_0039_,
    _0038_,
    _0037_,
    _0036_,
    _0034_,
    _0033_,
    _0032_,
    _0031_,
    _0030_,
    _0029_,
    _0028_,
    _0027_,
    _0026_,
    _0025_,
    _0047_,
    _0046_,
    _0045_,
    _0044_,
    _0043_,
    _0042_,
    _0041_,
    _0040_,
    _0035_,
    _0024_}),
    .B({net_2,
    net75_76,
    net73_74,
    net71_72,
    net69_70,
    net87_88,
    net85_86,
    net83_84,
    net81_82,
    net79_80,
    net77_78,
    net_5,
    net_4,
    net_3,
    net_1}),
    .BI(net67_68),
    .CI(net89_90),
    .X({_0063_,
    _0062_,
    _0061_,
    _0060_,
    _0058_,
    _0057_,
    _0056_,
    _0055_,
    _0054_,
    _0053_,
    _0052_,
    _0051_,
    _0050_,
    _0049_,
    _0071_,
    _0070_,
    _0069_,
    _0068_,
    _0067_,
    _0066_,
    _0065_,
    _0064_,
    _0059_,
    _0048_}),
    .\Y[23] (_0497_),
    .\CO[23:22] ({_0499_,
    _0498_}));
 sky130_fd_sc_hd__conb_1 _1388__1 (.LO(net_1));
 sky130_fd_sc_hd__conb_1 _1388__2 (.LO(net_2));
 sky130_fd_sc_hd__conb_1 _1388__3 (.LO(net_3));
 sky130_fd_sc_hd__conb_1 _1388__4 (.LO(net_4));
 sky130_fd_sc_hd__conb_1 _1388__5 (.LO(net_5));
 sky130_fd_sc_hd__conb_1 _1388__68 (.HI(net67_68));
 sky130_fd_sc_hd__conb_1 _1388__69 (.HI(net69_70));
 sky130_fd_sc_hd__conb_1 _1388__70 (.HI(net71_72));
 sky130_fd_sc_hd__conb_1 _1388__71 (.HI(net73_74));
 sky130_fd_sc_hd__conb_1 _1388__72 (.HI(net75_76));
 sky130_fd_sc_hd__conb_1 _1388__73 (.HI(net77_78));
 sky130_fd_sc_hd__conb_1 _1388__74 (.HI(net79_80));
 sky130_fd_sc_hd__conb_1 _1388__75 (.HI(net81_82));
 sky130_fd_sc_hd__conb_1 _1388__76 (.HI(net83_84));
 sky130_fd_sc_hd__conb_1 _1388__77 (.HI(net85_86));
 sky130_fd_sc_hd__conb_1 _1388__78 (.HI(net87_88));
 sky130_fd_sc_hd__conb_1 _1388__79 (.HI(net89_90));
 \ALU_24_1_15_1_24_unused_CO[21:0]_Y[22:0]_HAN_CARLSON__1389_  _1389_ (.A({_0015_,
    _0014_,
    _0013_,
    _0012_,
    _0010_,
    _0009_,
    _0008_,
    _0007_,
    _0006_,
    _0005_,
    _0004_,
    _0003_,
    _0002_,
    _0001_,
    _0023_,
    _0022_,
    _0021_,
    _0020_,
    _0019_,
    _0018_,
    _0017_,
    _0016_,
    _0011_,
    _0000_}),
    .B({net_7,
    net99_100,
    net97_98,
    net95_96,
    net93_94,
    net111_112,
    net109_110,
    net107_108,
    net105_106,
    net103_104,
    net101_102,
    net_10,
    net_9,
    net_8,
    net_6}),
    .BI(net91_92),
    .CI(net113_114),
    .X({_0087_,
    _0086_,
    _0085_,
    _0084_,
    _0082_,
    _0081_,
    _0080_,
    _0079_,
    _0078_,
    _0077_,
    _0076_,
    _0075_,
    _0074_,
    _0073_,
    _0095_,
    _0094_,
    _0093_,
    _0092_,
    _0091_,
    _0090_,
    _0089_,
    _0088_,
    _0083_,
    _0072_}),
    .\Y[23] (_0500_),
    .\CO[23:22] ({_0502_,
    _0501_}));
 sky130_fd_sc_hd__conb_1 _1389__10 (.LO(net_10));
 sky130_fd_sc_hd__conb_1 _1389__6 (.LO(net_6));
 sky130_fd_sc_hd__conb_1 _1389__7 (.LO(net_7));
 sky130_fd_sc_hd__conb_1 _1389__8 (.LO(net_8));
 sky130_fd_sc_hd__conb_1 _1389__80 (.HI(net91_92));
 sky130_fd_sc_hd__conb_1 _1389__81 (.HI(net93_94));
 sky130_fd_sc_hd__conb_1 _1389__82 (.HI(net95_96));
 sky130_fd_sc_hd__conb_1 _1389__83 (.HI(net97_98));
 sky130_fd_sc_hd__conb_1 _1389__84 (.HI(net99_100));
 sky130_fd_sc_hd__conb_1 _1389__85 (.HI(net101_102));
 sky130_fd_sc_hd__conb_1 _1389__86 (.HI(net103_104));
 sky130_fd_sc_hd__conb_1 _1389__87 (.HI(net105_106));
 sky130_fd_sc_hd__conb_1 _1389__88 (.HI(net107_108));
 sky130_fd_sc_hd__conb_1 _1389__89 (.HI(net109_110));
 sky130_fd_sc_hd__conb_1 _1389__9 (.LO(net_9));
 sky130_fd_sc_hd__conb_1 _1389__90 (.HI(net111_112));
 sky130_fd_sc_hd__conb_1 _1389__91 (.HI(net113_114));
 \ALU_16_0_11_0_16_unused_CO[14:0]_X_Y_HAN_CARLSON  _1390_ (.A({_0540_,
    _0468_,
    _0469_,
    _0470_,
    _0471_,
    _0472_,
    _0473_,
    _0474_,
    _0475_,
    _0476_,
    _0477_,
    _0478_,
    _0479_,
    _0480_,
    _0481_,
    _0482_}),
    .B({net119_120,
    net133_134,
    net131_132,
    net129_130,
    net127_128,
    net_12,
    net_11,
    net125_126,
    net123_124,
    net121_122,
    net117_118}),
    .BI(net115_116),
    .CI(net135_136),
    .\CO[15] (_0503_));
 sky130_fd_sc_hd__conb_1 _1390__100 (.HI(net131_132));
 sky130_fd_sc_hd__conb_1 _1390__101 (.HI(net133_134));
 sky130_fd_sc_hd__conb_1 _1390__102 (.HI(net135_136));
 sky130_fd_sc_hd__conb_1 _1390__11 (.LO(net_11));
 sky130_fd_sc_hd__conb_1 _1390__12 (.LO(net_12));
 sky130_fd_sc_hd__conb_1 _1390__92 (.HI(net115_116));
 sky130_fd_sc_hd__conb_1 _1390__93 (.HI(net117_118));
 sky130_fd_sc_hd__conb_1 _1390__94 (.HI(net119_120));
 sky130_fd_sc_hd__conb_1 _1390__95 (.HI(net121_122));
 sky130_fd_sc_hd__conb_1 _1390__96 (.HI(net123_124));
 sky130_fd_sc_hd__conb_1 _1390__97 (.HI(net125_126));
 sky130_fd_sc_hd__conb_1 _1390__98 (.HI(net127_128));
 sky130_fd_sc_hd__conb_1 _1390__99 (.HI(net129_130));
 ALU_16_1_24_1_24_unused_CO_X_HAN_CARLSON _1391_ (.A({_0631_,
    _0631_,
    _0631_,
    _0631_,
    _0631_,
    _0631_,
    _0631_,
    _0631_,
    _0631_,
    _0630_,
    _0629_,
    _0627_,
    _0626_,
    _0625_,
    _0624_,
    _0623_}),
    .B({_0322_,
    _0458_,
    _0457_,
    _0456_,
    _0455_,
    _0454_,
    _0453_,
    _0452_,
    _0451_,
    _0450_,
    _0449_,
    _0448_,
    _0447_,
    _0446_,
    _0445_,
    _0444_,
    _0443_,
    _0442_,
    _0441_,
    _0440_,
    _0439_,
    _0438_,
    _0437_,
    _0436_}),
    .BI(net_13),
    .CI(net_14),
    .Y({_0556_,
    _0555_,
    _0554_,
    _0553_,
    _0551_,
    _0550_,
    _0549_,
    _0548_,
    _0547_,
    _0546_,
    _0545_,
    _0544_,
    _0543_,
    _0542_,
    _0564_,
    _0563_,
    _0562_,
    _0561_,
    _0560_,
    _0559_,
    _0558_,
    _0557_,
    _0552_,
    _0541_}));
 sky130_fd_sc_hd__conb_1 _1391__13 (.LO(net_13));
 sky130_fd_sc_hd__conb_1 _1391__14 (.LO(net_14));
 ALU_15_1_16_1_17_unused_CO_X_HAN_CARLSON _1392_ (.A({net_19,
    net137_138,
    net_18,
    net_17,
    net_16,
    net_28,
    net_27,
    net_26,
    net_25,
    net_24,
    net_23,
    net_22,
    net_21,
    net_20,
    net_15}),
    .B({_0631_,
    _0631_,
    _0631_,
    _0631_,
    _0631_,
    _0631_,
    _0631_,
    _0630_,
    _0629_,
    _0627_,
    _0626_,
    _0625_,
    _0624_,
    _0623_,
    net_31,
    net_30}),
    .BI(net_29),
    .CI(net_32),
    .Y({_0511_,
    _0510_,
    _0509_,
    _0508_,
    _0507_,
    _0506_,
    _0505_,
    _0520_,
    _0519_,
    _0518_,
    _0517_,
    _0516_,
    _0515_,
    _0514_,
    _0513_,
    _0512_,
    _0504_}));
 sky130_fd_sc_hd__conb_1 _1392__103 (.HI(net137_138));
 sky130_fd_sc_hd__conb_1 _1392__15 (.LO(net_15));
 sky130_fd_sc_hd__conb_1 _1392__16 (.LO(net_16));
 sky130_fd_sc_hd__conb_1 _1392__17 (.LO(net_17));
 sky130_fd_sc_hd__conb_1 _1392__18 (.LO(net_18));
 sky130_fd_sc_hd__conb_1 _1392__19 (.LO(net_19));
 sky130_fd_sc_hd__conb_1 _1392__20 (.LO(net_20));
 sky130_fd_sc_hd__conb_1 _1392__21 (.LO(net_21));
 sky130_fd_sc_hd__conb_1 _1392__22 (.LO(net_22));
 sky130_fd_sc_hd__conb_1 _1392__23 (.LO(net_23));
 sky130_fd_sc_hd__conb_1 _1392__24 (.LO(net_24));
 sky130_fd_sc_hd__conb_1 _1392__25 (.LO(net_25));
 sky130_fd_sc_hd__conb_1 _1392__26 (.LO(net_26));
 sky130_fd_sc_hd__conb_1 _1392__27 (.LO(net_27));
 sky130_fd_sc_hd__conb_1 _1392__28 (.LO(net_28));
 sky130_fd_sc_hd__conb_1 _1392__29 (.LO(net_29));
 sky130_fd_sc_hd__conb_1 _1392__30 (.LO(net_30));
 sky130_fd_sc_hd__conb_1 _1392__31 (.LO(net_31));
 sky130_fd_sc_hd__conb_1 _1392__32 (.LO(net_32));
 ALU_24_1_24_1_24_unused_CO_X_HAN_CARLSON _1393_ (.A({_0511_,
    _0511_,
    _0511_,
    _0511_,
    _0511_,
    _0511_,
    _0511_,
    _0511_,
    _0510_,
    _0509_,
    _0508_,
    _0507_,
    _0506_,
    _0505_,
    _0520_,
    _0519_,
    _0518_,
    _0517_,
    _0516_,
    _0515_,
    _0514_,
    _0513_,
    _0512_,
    _0504_}),
    .B({_0556_,
    _0555_,
    _0554_,
    _0553_,
    _0551_,
    _0550_,
    _0549_,
    _0548_,
    _0547_,
    _0546_,
    _0545_,
    _0544_,
    _0543_,
    _0542_,
    _0564_,
    _0563_,
    _0562_,
    _0561_,
    _0560_,
    _0559_,
    _0558_,
    _0557_,
    _0552_,
    _0541_}),
    .BI(net_33),
    .CI(net_34),
    .Y({_0015_,
    _0014_,
    _0013_,
    _0012_,
    _0010_,
    _0009_,
    _0008_,
    _0007_,
    _0006_,
    _0005_,
    _0004_,
    _0003_,
    _0002_,
    _0001_,
    _0023_,
    _0022_,
    _0021_,
    _0020_,
    _0019_,
    _0018_,
    _0017_,
    _0016_,
    _0011_,
    _0000_}));
 sky130_fd_sc_hd__conb_1 _1393__33 (.LO(net_33));
 sky130_fd_sc_hd__conb_1 _1393__34 (.LO(net_34));
 ALU_14_0_14_0_15_unused_CO_X_HAN_CARLSON _1394_ (.A({_0537_,
    _0331_,
    _0330_,
    _0329_,
    _0328_,
    _0327_,
    _0326_,
    _0325_,
    _0324_,
    _0323_,
    net_38,
    net_37,
    net_36,
    net_35}),
    .B({net141_142,
    net_42,
    net_41,
    net_40,
    net_51,
    net_50,
    net_49,
    net_48,
    net_47,
    net_46,
    net_45,
    net_44,
    net_43,
    net_39}),
    .BI(net139_140),
    .CI(net143_144),
    .Y({_0526_,
    _0525_,
    _0524_,
    _0523_,
    _0522_,
    _0535_,
    _0534_,
    _0533_,
    _0532_,
    _0531_,
    _0530_,
    _0529_,
    _0528_,
    _0527_,
    _0521_}));
 sky130_fd_sc_hd__conb_1 _1394__104 (.HI(net139_140));
 sky130_fd_sc_hd__conb_1 _1394__105 (.HI(net141_142));
 sky130_fd_sc_hd__conb_1 _1394__106 (.HI(net143_144));
 sky130_fd_sc_hd__conb_1 _1394__35 (.LO(net_35));
 sky130_fd_sc_hd__conb_1 _1394__36 (.LO(net_36));
 sky130_fd_sc_hd__conb_1 _1394__37 (.LO(net_37));
 sky130_fd_sc_hd__conb_1 _1394__38 (.LO(net_38));
 sky130_fd_sc_hd__conb_1 _1394__39 (.LO(net_39));
 sky130_fd_sc_hd__conb_1 _1394__40 (.LO(net_40));
 sky130_fd_sc_hd__conb_1 _1394__41 (.LO(net_41));
 sky130_fd_sc_hd__conb_1 _1394__42 (.LO(net_42));
 sky130_fd_sc_hd__conb_1 _1394__43 (.LO(net_43));
 sky130_fd_sc_hd__conb_1 _1394__44 (.LO(net_44));
 sky130_fd_sc_hd__conb_1 _1394__45 (.LO(net_45));
 sky130_fd_sc_hd__conb_1 _1394__46 (.LO(net_46));
 sky130_fd_sc_hd__conb_1 _1394__47 (.LO(net_47));
 sky130_fd_sc_hd__conb_1 _1394__48 (.LO(net_48));
 sky130_fd_sc_hd__conb_1 _1394__49 (.LO(net_49));
 sky130_fd_sc_hd__conb_1 _1394__50 (.LO(net_50));
 sky130_fd_sc_hd__conb_1 _1394__51 (.LO(net_51));
 ALU_24_1_24_1_24_unused_CO_X_HAN_CARLSON__1395_ _1395_ (.A({_0683_,
    _0682_,
    _0681_,
    _0680_,
    _0679_,
    _0678_,
    _0677_,
    _0676_,
    _0674_,
    _0673_,
    _0672_,
    _0671_,
    _0669_,
    _0668_,
    _0667_,
    _0666_,
    _0665_,
    _0664_,
    _0662_,
    _0661_,
    _0660_,
    _0659_,
    _0658_,
    _0657_}),
    .B({_0511_,
    _0511_,
    _0511_,
    _0511_,
    _0511_,
    _0511_,
    _0511_,
    _0511_,
    _0510_,
    _0509_,
    _0508_,
    _0507_,
    _0506_,
    _0505_,
    _0520_,
    _0519_,
    _0518_,
    _0517_,
    _0516_,
    _0515_,
    _0514_,
    _0513_,
    _0512_,
    _0504_}),
    .BI(net_52),
    .CI(net_53),
    .Y({_0039_,
    _0038_,
    _0037_,
    _0036_,
    _0034_,
    _0033_,
    _0032_,
    _0031_,
    _0030_,
    _0029_,
    _0028_,
    _0027_,
    _0026_,
    _0025_,
    _0047_,
    _0046_,
    _0045_,
    _0044_,
    _0043_,
    _0042_,
    _0041_,
    _0040_,
    _0035_,
    _0024_}));
 sky130_fd_sc_hd__conb_1 _1395__52 (.LO(net_52));
 sky130_fd_sc_hd__conb_1 _1395__53 (.LO(net_53));
 sky130_fd_sc_hd__fa_1 _1396_ (.A(_0885_),
    .B(_0689_),
    .CIN(_0410_),
    .COUT(_0096_),
    .SUM(_0097_));
 sky130_fd_sc_hd__fa_1 _1397_ (.A(_0898_),
    .B(_0685_),
    .CIN(_0408_),
    .COUT(_0098_),
    .SUM(_0099_));
 sky130_fd_sc_hd__fa_1 _1398_ (.A(_0912_),
    .B(_0100_),
    .CIN(_0406_),
    .COUT(_0101_),
    .SUM(_0102_));
 sky130_fd_sc_hd__fa_1 _1399_ (.A(_0919_),
    .B(_0103_),
    .CIN(_0405_),
    .COUT(_0100_),
    .SUM(_0104_));
 sky130_fd_sc_hd__fa_1 _1400_ (.A(_0761_),
    .B(_0764_),
    .CIN(_0766_),
    .COUT(_0105_),
    .SUM(_0106_));
 sky130_fd_sc_hd__fa_1 _1401_ (.A(_0744_),
    .B(_0750_),
    .CIN(_0754_),
    .COUT(_0107_),
    .SUM(_0108_));
 sky130_fd_sc_hd__fa_1 _1402_ (.A(_0716_),
    .B(_0721_),
    .CIN(_0752_),
    .COUT(_0109_),
    .SUM(_0110_));
 sky130_fd_sc_hd__fa_1 _1403_ (.A(_0728_),
    .B(_0734_),
    .CIN(_0111_),
    .COUT(_0112_),
    .SUM(_0113_));
 sky130_fd_sc_hd__fa_1 _1404_ (.A(_0738_),
    .B(_0741_),
    .CIN(_0114_),
    .COUT(_0111_),
    .SUM(_0115_));
 sky130_fd_sc_hd__fa_1 _1405_ (.A(_0338_),
    .B(_0331_),
    .CIN(_0597_),
    .COUT(_0116_),
    .SUM(_0463_));
 sky130_fd_sc_hd__fa_1 _1406_ (.A(_0336_),
    .B(_0329_),
    .CIN(_0117_),
    .COUT(_0118_),
    .SUM(_0464_));
 sky130_fd_sc_hd__fa_1 _1407_ (.A(_0335_),
    .B(_0328_),
    .CIN(_0119_),
    .COUT(_0117_),
    .SUM(_0459_));
 sky130_fd_sc_hd__ha_1 _1408_ (.A(_0470_),
    .B(_0588_),
    .COUT(_0120_),
    .SUM(_0121_));
 sky130_fd_sc_hd__ha_1 _1409_ (.A(_0474_),
    .B(_0586_),
    .COUT(_0122_),
    .SUM(_0123_));
 sky130_fd_sc_hd__ha_1 _1410_ (.A(_0642_),
    .B(_0568_),
    .COUT(_0124_),
    .SUM(_0125_));
 sky130_fd_sc_hd__ha_1 _1411_ (.A(_0493_),
    .B(_0129_),
    .COUT(_0130_),
    .SUM(_0131_));
 sky130_fd_sc_hd__ha_1 _1412_ (.A(_1273_),
    .B(_0617_),
    .COUT(_0132_),
    .SUM(_0133_));
 sky130_fd_sc_hd__ha_1 _1413_ (.A(_0305_),
    .B(_0616_),
    .COUT(_0134_),
    .SUM(_0135_));
 sky130_fd_sc_hd__ha_1 _1414_ (.A(_0709_),
    .B(_0713_),
    .COUT(_0136_),
    .SUM(_0137_));
 sky130_fd_sc_hd__ha_1 _1415_ (.A(_0359_),
    .B(_0704_),
    .COUT(_0141_),
    .SUM(_0142_));
 sky130_fd_sc_hd__ha_1 _1416_ (.A(_0898_),
    .B(_0632_),
    .COUT(_0143_),
    .SUM(_0144_));
 sky130_fd_sc_hd__ha_1 _1417_ (.A(net167),
    .B(_0762_),
    .COUT(_0145_),
    .SUM(_0128_));
 sky130_fd_sc_hd__ha_1 _1418_ (.A(_0368_),
    .B(_0703_),
    .COUT(_0146_),
    .SUM(_0147_));
 sky130_fd_sc_hd__ha_1 _1419_ (.A(_0482_),
    .B(_0481_),
    .COUT(_0148_),
    .SUM(_0149_));
 sky130_fd_sc_hd__ha_1 _1420_ (.A(net170),
    .B(_0737_),
    .COUT(_0150_),
    .SUM(_0151_));
 sky130_fd_sc_hd__ha_1 _1421_ (.A(_0366_),
    .B(_0702_),
    .COUT(_0152_),
    .SUM(_0153_));
 sky130_fd_sc_hd__ha_1 _1422_ (.A(_0926_),
    .B(_0404_),
    .COUT(_0103_),
    .SUM(_0154_));
 sky130_fd_sc_hd__ha_1 _1423_ (.A(net168),
    .B(_0756_),
    .COUT(_0155_),
    .SUM(_0156_));
 sky130_fd_sc_hd__ha_1 _1424_ (.A(_0484_),
    .B(_0618_),
    .COUT(_0157_),
    .SUM(_0158_));
 sky130_fd_sc_hd__ha_1 _1425_ (.A(_0729_),
    .B(_0733_),
    .COUT(_0159_),
    .SUM(_0140_));
 sky130_fd_sc_hd__ha_1 _1426_ (.A(_0378_),
    .B(_0160_),
    .COUT(_0161_),
    .SUM(_0162_));
 sky130_fd_sc_hd__ha_1 _1427_ (.A(_0912_),
    .B(_0163_),
    .COUT(_0164_),
    .SUM(_0165_));
 sky130_fd_sc_hd__ha_1 _1428_ (.A(_0577_),
    .B(_0590_),
    .COUT(_0166_),
    .SUM(_0167_));
 sky130_fd_sc_hd__ha_1 _1429_ (.A(_1090_),
    .B(_0614_),
    .COUT(_0168_),
    .SUM(_0169_));
 sky130_fd_sc_hd__ha_1 _1430_ (.A(_0645_),
    .B(_0591_),
    .COUT(_0170_),
    .SUM(_0171_));
 sky130_fd_sc_hd__ha_1 _1431_ (.A(_0362_),
    .B(_0363_),
    .COUT(_0172_),
    .SUM(_0173_));
 sky130_fd_sc_hd__ha_1 _1432_ (.A(_0488_),
    .B(_0174_),
    .COUT(_0175_),
    .SUM(_0176_));
 sky130_fd_sc_hd__ha_1 _1433_ (.A(_0635_),
    .B(_0628_),
    .COUT(_0177_),
    .SUM(_0178_));
 sky130_fd_sc_hd__ha_1 _1434_ (.A(_0434_),
    .B(_0435_),
    .COUT(_0179_),
    .SUM(_0180_));
 sky130_fd_sc_hd__ha_1 _1435_ (.A(_0361_),
    .B(_0705_),
    .COUT(_0181_),
    .SUM(_0182_));
 sky130_fd_sc_hd__ha_1 _1436_ (.A(_0357_),
    .B(_0183_),
    .COUT(_0184_),
    .SUM(_0185_));
 sky130_fd_sc_hd__ha_1 _1437_ (.A(_0336_),
    .B(_0329_),
    .COUT(_0186_),
    .SUM(_0187_));
 sky130_fd_sc_hd__ha_1 _1438_ (.A(_1120_),
    .B(_0333_),
    .COUT(_0188_),
    .SUM(_0189_));
 sky130_fd_sc_hd__ha_1 _1439_ (.A(_0332_),
    .B(_0333_),
    .COUT(_0190_),
    .SUM(_0191_));
 sky130_fd_sc_hd__ha_1 _1440_ (.A(_0476_),
    .B(_0585_),
    .COUT(_0192_),
    .SUM(_0193_));
 sky130_fd_sc_hd__ha_1 _1441_ (.A(_0490_),
    .B(_0594_),
    .COUT(_0194_),
    .SUM(_0195_));
 sky130_fd_sc_hd__ha_1 _1442_ (.A(_0493_),
    .B(_0196_),
    .COUT(_0197_),
    .SUM(_0198_));
 sky130_fd_sc_hd__ha_1 _1443_ (.A(_0486_),
    .B(_0199_),
    .COUT(_0200_),
    .SUM(_0201_));
 sky130_fd_sc_hd__ha_1 _1444_ (.A(_1382_),
    .B(_1383_),
    .COUT(_0202_),
    .SUM(_0203_));
 sky130_fd_sc_hd__ha_1 _1445_ (.A(_1386_),
    .B(_0487_),
    .COUT(_0204_),
    .SUM(_0174_));
 sky130_fd_sc_hd__ha_1 _1446_ (.A(_0488_),
    .B(_0487_),
    .COUT(_0199_),
    .SUM(_0205_));
 sky130_fd_sc_hd__ha_1 _1447_ (.A(_0401_),
    .B(_0698_),
    .COUT(_0206_),
    .SUM(_0207_));
 sky130_fd_sc_hd__ha_1 _1448_ (.A(_0539_),
    .B(_1384_),
    .COUT(_0208_),
    .SUM(_0209_));
 sky130_fd_sc_hd__ha_1 _1449_ (.A(_0602_),
    .B(_0611_),
    .COUT(_0210_),
    .SUM(_0211_));
 sky130_fd_sc_hd__ha_1 _1450_ (.A(_1097_),
    .B(_0212_),
    .COUT(_0213_),
    .SUM(_0214_));
 sky130_fd_sc_hd__ha_1 _1451_ (.A(_0885_),
    .B(_0633_),
    .COUT(_0215_),
    .SUM(_0216_));
 sky130_fd_sc_hd__ha_1 _1452_ (.A(_0489_),
    .B(_0593_),
    .COUT(_0217_),
    .SUM(_0218_));
 sky130_fd_sc_hd__ha_1 _1453_ (.A(_0491_),
    .B(_0167_),
    .COUT(_0219_),
    .SUM(_0220_));
 sky130_fd_sc_hd__ha_1 _1454_ (.A(_0963_),
    .B(_0958_),
    .COUT(_0221_),
    .SUM(_0222_));
 sky130_fd_sc_hd__ha_1 _1455_ (.A(_0376_),
    .B(_0377_),
    .COUT(_0160_),
    .SUM(_0223_));
 sky130_fd_sc_hd__ha_1 _1456_ (.A(_0567_),
    .B(_0224_),
    .COUT(_0225_),
    .SUM(_0196_));
 sky130_fd_sc_hd__ha_1 _1457_ (.A(_0811_),
    .B(_0804_),
    .COUT(_0226_),
    .SUM(_0227_));
 sky130_fd_sc_hd__ha_1 _1458_ (.A(_0397_),
    .B(_0804_),
    .COUT(_0228_),
    .SUM(_0229_));
 sky130_fd_sc_hd__ha_1 _1459_ (.A(_0397_),
    .B(_0398_),
    .COUT(_0230_),
    .SUM(_0231_));
 sky130_fd_sc_hd__ha_1 _1460_ (.A(net210),
    .B(_0215_),
    .COUT(_0460_),
    .SUM(_0232_));
 sky130_fd_sc_hd__ha_1 _1461_ (.A(_0491_),
    .B(_0592_),
    .COUT(_0233_),
    .SUM(_0234_));
 sky130_fd_sc_hd__ha_1 _1462_ (.A(_0307_),
    .B(_0235_),
    .COUT(_0465_),
    .SUM(_0236_));
 sky130_fd_sc_hd__ha_1 _1463_ (.A(_1084_),
    .B(_0613_),
    .COUT(_0235_),
    .SUM(_0237_));
 sky130_fd_sc_hd__ha_1 _1464_ (.A(_0723_),
    .B(_0725_),
    .COUT(_0238_),
    .SUM(_0239_));
 sky130_fd_sc_hd__ha_1 _1465_ (.A(_0640_),
    .B(_0566_),
    .COUT(_0240_),
    .SUM(_0241_));
 sky130_fd_sc_hd__ha_1 _1466_ (.A(_1263_),
    .B(_0582_),
    .COUT(_0242_),
    .SUM(_0243_));
 sky130_fd_sc_hd__ha_1 _1467_ (.A(_0757_),
    .B(_0759_),
    .COUT(_0244_),
    .SUM(_0245_));
 sky130_fd_sc_hd__ha_1 _1468_ (.A(_0472_),
    .B(_0587_),
    .COUT(_0246_),
    .SUM(_0247_));
 sky130_fd_sc_hd__ha_1 _1469_ (.A(net169),
    .B(_0748_),
    .COUT(_0248_),
    .SUM(_0127_));
 sky130_fd_sc_hd__ha_1 _1470_ (.A(_0338_),
    .B(_0331_),
    .COUT(_0249_),
    .SUM(_0250_));
 sky130_fd_sc_hd__ha_1 _1471_ (.A(_0339_),
    .B(_0537_),
    .COUT(_0251_),
    .SUM(_0252_));
 sky130_fd_sc_hd__ha_1 _1472_ (.A(_0334_),
    .B(_0327_),
    .COUT(_0119_),
    .SUM(_0496_));
 sky130_fd_sc_hd__ha_1 _1473_ (.A(_0492_),
    .B(_0595_),
    .COUT(_0253_),
    .SUM(_0254_));
 sky130_fd_sc_hd__ha_1 _1474_ (.A(_0489_),
    .B(_0171_),
    .COUT(_0255_),
    .SUM(_0256_));
 sky130_fd_sc_hd__ha_1 _1475_ (.A(_0380_),
    .B(_0700_),
    .COUT(_0257_),
    .SUM(_0258_));
 sky130_fd_sc_hd__ha_1 _1476_ (.A(_1103_),
    .B(_1109_),
    .COUT(_0212_),
    .SUM(_0259_));
 sky130_fd_sc_hd__ha_1 _1477_ (.A(_1228_),
    .B(_0637_),
    .COUT(_0260_),
    .SUM(_0261_));
 sky130_fd_sc_hd__ha_1 _1478_ (.A(net210),
    .B(_0636_),
    .COUT(_0462_),
    .SUM(_0262_));
 sky130_fd_sc_hd__ha_1 _1479_ (.A(net210),
    .B(_1206_),
    .COUT(_0263_),
    .SUM(_0264_));
 sky130_fd_sc_hd__ha_1 _1480_ (.A(_0480_),
    .B(_0148_),
    .COUT(_0265_),
    .SUM(_0266_));
 sky130_fd_sc_hd__ha_1 _1481_ (.A(_0468_),
    .B(_0589_),
    .COUT(_0267_),
    .SUM(_0268_));
 sky130_fd_sc_hd__ha_1 _1482_ (.A(_0403_),
    .B(_0699_),
    .COUT(_0269_),
    .SUM(_0270_));
 sky130_fd_sc_hd__ha_1 _1483_ (.A(_0399_),
    .B(_0230_),
    .COUT(_0271_),
    .SUM(_0272_));
 sky130_fd_sc_hd__ha_1 _1484_ (.A(_1382_),
    .B(_1385_),
    .COUT(_0224_),
    .SUM(_0273_));
 sky130_fd_sc_hd__ha_1 _1485_ (.A(_0494_),
    .B(_0273_),
    .COUT(_0274_),
    .SUM(_0275_));
 sky130_fd_sc_hd__ha_1 _1486_ (.A(_0099_),
    .B(_0687_),
    .COUT(_0276_),
    .SUM(_0277_));
 sky130_fd_sc_hd__ha_1 _1487_ (.A(net171),
    .B(_0730_),
    .COUT(_0278_),
    .SUM(_0126_));
 sky130_fd_sc_hd__ha_1 _1488_ (.A(_0478_),
    .B(_0584_),
    .COUT(_0279_),
    .SUM(_0280_));
 sky130_fd_sc_hd__ha_1 _1489_ (.A(_0495_),
    .B(_0494_),
    .COUT(_0129_),
    .SUM(_0281_));
 sky130_fd_sc_hd__ha_1 _1490_ (.A(_0735_),
    .B(_0736_),
    .COUT(_0114_),
    .SUM(_0282_));
 sky130_fd_sc_hd__ha_1 _1491_ (.A(_0102_),
    .B(_0283_),
    .COUT(_0284_),
    .SUM(_0285_));
 sky130_fd_sc_hd__ha_1 _1492_ (.A(_0364_),
    .B(_0172_),
    .COUT(_0286_),
    .SUM(_0287_));
 sky130_fd_sc_hd__ha_1 _1493_ (.A(_0355_),
    .B(_0356_),
    .COUT(_0183_),
    .SUM(_0288_));
 sky130_fd_sc_hd__ha_1 _1494_ (.A(_0104_),
    .B(_0154_),
    .COUT(_0283_),
    .SUM(_0289_));
 sky130_fd_sc_hd__ha_1 _1495_ (.A(_0745_),
    .B(_0749_),
    .COUT(_0290_),
    .SUM(_0138_));
 sky130_fd_sc_hd__ha_1 _1496_ (.A(_0926_),
    .B(_0919_),
    .COUT(_0163_),
    .SUM(_0291_));
 sky130_fd_sc_hd__ha_1 _1497_ (.A(_0695_),
    .B(_0697_),
    .COUT(_0466_),
    .SUM(_0292_));
 sky130_fd_sc_hd__ha_1 _1498_ (.A(_0175_),
    .B(_0565_),
    .COUT(_0293_),
    .SUM(_0294_));
 sky130_fd_sc_hd__ha_1 _1499_ (.A(_0337_),
    .B(_0330_),
    .COUT(_0295_),
    .SUM(_0296_));
 sky130_fd_sc_hd__ha_1 _1500_ (.A(_0340_),
    .B(_0599_),
    .COUT(_0297_),
    .SUM(_0461_));
 sky130_fd_sc_hd__ha_1 _1501_ (.A(_0382_),
    .B(_0701_),
    .COUT(_0298_),
    .SUM(_0299_));
 sky130_fd_sc_hd__ha_1 _1502_ (.A(_0097_),
    .B(_0691_),
    .COUT(_0300_),
    .SUM(_0301_));
 sky130_fd_sc_hd__ha_1 _1503_ (.A(_0717_),
    .B(_0720_),
    .COUT(_0302_),
    .SUM(_0139_));
 sky130_fd_sc_hd__conb_1 _1507__54 (.LO(ki_debug[1]));
 sky130_fd_sc_hd__conb_1 _1508__55 (.LO(ki_debug[2]));
 sky130_fd_sc_hd__conb_1 _1509__56 (.LO(ki_debug[3]));
 sky130_fd_sc_hd__conb_1 _1510__57 (.LO(ki_debug[4]));
 sky130_fd_sc_hd__conb_1 _1511__58 (.LO(ki_debug[5]));
 sky130_fd_sc_hd__conb_1 _1512__59 (.LO(ki_debug[6]));
 sky130_fd_sc_hd__conb_1 _1513__60 (.LO(ki_debug[7]));
 sky130_fd_sc_hd__conb_1 _1514__61 (.LO(kp_debug[0]));
 sky130_fd_sc_hd__conb_1 _1515__62 (.LO(kp_debug[1]));
 sky130_fd_sc_hd__conb_1 _1517__63 (.LO(kp_debug[3]));
 sky130_fd_sc_hd__conb_1 _1518__64 (.LO(kp_debug[4]));
 sky130_fd_sc_hd__conb_1 _1519__65 (.LO(kp_debug[5]));
 sky130_fd_sc_hd__conb_1 _1520__66 (.LO(kp_debug[6]));
 sky130_fd_sc_hd__conb_1 _1521__67 (.LO(kp_debug[7]));
 sky130_fd_sc_hd__clkinv_1 _1522_ (.A(_0201_),
    .Y(_0565_));
 sky130_fd_sc_hd__clkinv_1 _1523_ (.A(_0158_),
    .Y(_0566_));
 sky130_fd_sc_hd__clkinv_1 _1524_ (.A(net149),
    .Y(_0567_));
 sky130_fd_sc_hd__clkinv_1 _1525_ (.A(_0133_),
    .Y(_0568_));
 sky130_fd_sc_hd__clkinv_1 _1526_ (.A(_0056_),
    .Y(_0569_));
 sky130_fd_sc_hd__clkinv_1 _1527_ (.A(_0063_),
    .Y(_0570_));
 sky130_fd_sc_hd__clkinv_1 _1528_ (.A(_0263_),
    .Y(_0571_));
 sky130_fd_sc_hd__clkinv_1 _1529_ (.A(_0126_),
    .Y(_0572_));
 sky130_fd_sc_hd__clkinv_1 _1530_ (.A(_0127_),
    .Y(_0573_));
 sky130_fd_sc_hd__clkinv_1 _1531_ (.A(_0128_),
    .Y(_0574_));
 sky130_fd_sc_hd__clkinv_1 _1532_ (.A(_0226_),
    .Y(_0575_));
 sky130_fd_sc_hd__clkinv_1 _1533_ (.A(_0206_),
    .Y(_0576_));
 sky130_fd_sc_hd__clkinv_1 _1534_ (.A(net151),
    .Y(_0577_));
 sky130_fd_sc_hd__clkinv_1 _1535_ (.A(_0139_),
    .Y(_0578_));
 sky130_fd_sc_hd__clkinv_1 _1536_ (.A(_0111_),
    .Y(_0579_));
 sky130_fd_sc_hd__clkinv_1 _1537_ (.A(_0138_),
    .Y(_0580_));
 sky130_fd_sc_hd__clkinv_1 _1538_ (.A(_0105_),
    .Y(_0581_));
 sky130_fd_sc_hd__clkinv_1 _1539_ (.A(_0190_),
    .Y(_0582_));
 sky130_fd_sc_hd__clkinv_1 _1540_ (.A(_0243_),
    .Y(_0583_));
 sky130_fd_sc_hd__and3_1 _1541_ (.A(_0480_),
    .B(_0479_),
    .C(_0148_),
    .X(_0584_));
 sky130_fd_sc_hd__and3_1 _1542_ (.A(_0478_),
    .B(_0477_),
    .C(_0584_),
    .X(_0585_));
 sky130_fd_sc_hd__and3_1 _1543_ (.A(_0476_),
    .B(_0475_),
    .C(_0585_),
    .X(_0586_));
 sky130_fd_sc_hd__and3_1 _1544_ (.A(_0474_),
    .B(_0473_),
    .C(_0586_),
    .X(_0587_));
 sky130_fd_sc_hd__and3_1 _1545_ (.A(_0472_),
    .B(_0471_),
    .C(_0587_),
    .X(_0588_));
 sky130_fd_sc_hd__and3_1 _1546_ (.A(_0470_),
    .B(_0469_),
    .C(_0588_),
    .X(_0589_));
 sky130_fd_sc_hd__nor3b_1 _1547_ (.A(net149),
    .B(net150),
    .C_N(_0224_),
    .Y(_0590_));
 sky130_fd_sc_hd__nor3b_1 _1548_ (.A(net151),
    .B(net152),
    .C_N(_0590_),
    .Y(_0591_));
 sky130_fd_sc_hd__and3_1 _1549_ (.A(_0493_),
    .B(_0492_),
    .C(_0129_),
    .X(_0592_));
 sky130_fd_sc_hd__and3_1 _1550_ (.A(_0491_),
    .B(_0490_),
    .C(_0592_),
    .X(_0593_));
 sky130_fd_sc_hd__xnor2_1 _1551_ (.A(net152),
    .B(_0166_),
    .Y(_0594_));
 sky130_fd_sc_hd__xnor2_1 _1552_ (.A(net150),
    .B(_0225_),
    .Y(_0595_));
 sky130_fd_sc_hd__a21o_1 _1553_ (.A1(_0187_),
    .A2(_0117_),
    .B1(_0186_),
    .X(_0596_));
 sky130_fd_sc_hd__a21o_1 _1554_ (.A1(_0296_),
    .A2(_0596_),
    .B1(_0295_),
    .X(_0597_));
 sky130_fd_sc_hd__a21o_1 _1555_ (.A1(_0597_),
    .A2(_0250_),
    .B1(_0249_),
    .X(_0598_));
 sky130_fd_sc_hd__a21o_1 _1556_ (.A1(_0252_),
    .A2(_0598_),
    .B1(_0251_),
    .X(_0599_));
 sky130_fd_sc_hd__nand2_1 _1557_ (.A(_0340_),
    .B(_0599_),
    .Y(_0600_));
 sky130_fd_sc_hd__and2_0 _1558_ (.A(_0307_),
    .B(_0600_),
    .X(_0601_));
 sky130_fd_sc_hd__clkinv_1 _1559_ (.A(_0601_),
    .Y(_0602_));
 sky130_fd_sc_hd__xor2_1 _1560_ (.A(_0307_),
    .B(_0297_),
    .X(_0603_));
 sky130_fd_sc_hd__nor2_1 _1561_ (.A(_0461_),
    .B(_0603_),
    .Y(_0604_));
 sky130_fd_sc_hd__xor2_1 _1562_ (.A(_0252_),
    .B(_0116_),
    .X(_0605_));
 sky130_fd_sc_hd__xor2_1 _1563_ (.A(_0296_),
    .B(_0118_),
    .X(_0606_));
 sky130_fd_sc_hd__nand4_1 _1564_ (.A(_0326_),
    .B(_0325_),
    .C(_0324_),
    .D(_0464_),
    .Y(_0607_));
 sky130_fd_sc_hd__nand4_1 _1565_ (.A(_0323_),
    .B(_0496_),
    .C(_0459_),
    .D(_0463_),
    .Y(_0608_));
 sky130_fd_sc_hd__nor2_1 _1566_ (.A(_0607_),
    .B(_0608_),
    .Y(_0609_));
 sky130_fd_sc_hd__nand4_1 _1567_ (.A(_0604_),
    .B(_0605_),
    .C(_0606_),
    .D(_0609_),
    .Y(_0610_));
 sky130_fd_sc_hd__nand2_1 _1568_ (.A(_0604_),
    .B(_0610_),
    .Y(_0611_));
 sky130_fd_sc_hd__or4_1 _1569_ (.A(_0339_),
    .B(_0338_),
    .C(_0337_),
    .D(_0336_),
    .X(_0612_));
 sky130_fd_sc_hd__nor2_1 _1570_ (.A(_1387_),
    .B(_0612_),
    .Y(_0613_));
 sky130_fd_sc_hd__nor3_1 _1571_ (.A(_0337_),
    .B(_0336_),
    .C(_1387_),
    .Y(_0614_));
 sky130_fd_sc_hd__and4_1 _1572_ (.A(_0486_),
    .B(_0485_),
    .C(_0484_),
    .D(_0483_),
    .X(_0615_));
 sky130_fd_sc_hd__clkinv_1 _1573_ (.A(_0617_),
    .Y(_0616_));
 sky130_fd_sc_hd__nand2_1 _1574_ (.A(_0199_),
    .B(_0615_),
    .Y(_0617_));
 sky130_fd_sc_hd__and3_1 _1575_ (.A(_0486_),
    .B(_0485_),
    .C(_0199_),
    .X(_0618_));
 sky130_fd_sc_hd__nand2_1 _1576_ (.A(net158),
    .B(_1246_),
    .Y(_0619_));
 sky130_fd_sc_hd__nand3b_1 _1577_ (.A_N(net160),
    .B(net158),
    .C(net159),
    .Y(_0620_));
 sky130_fd_sc_hd__or3b_1 _1578_ (.A(net159),
    .B(net158),
    .C_N(net160),
    .X(_0621_));
 sky130_fd_sc_hd__and2_1 _1579_ (.A(_0620_),
    .B(_0621_),
    .X(_0622_));
 sky130_fd_sc_hd__clkinv_1 _1580_ (.A(net206),
    .Y(net164));
 sky130_fd_sc_hd__nor2_1 _1581_ (.A(_0926_),
    .B(net206),
    .Y(_0623_));
 sky130_fd_sc_hd__a21oi_1 _1582_ (.A1(_0620_),
    .A2(_0621_),
    .B1(_0919_),
    .Y(_0624_));
 sky130_fd_sc_hd__a21oi_1 _1583_ (.A1(_0620_),
    .A2(_0621_),
    .B1(_0912_),
    .Y(_0625_));
 sky130_fd_sc_hd__nor2_1 _1584_ (.A(_0905_),
    .B(net206),
    .Y(_0626_));
 sky130_fd_sc_hd__nor2_1 _1585_ (.A(_0898_),
    .B(net206),
    .Y(_0627_));
 sky130_fd_sc_hd__clkinv_1 _1586_ (.A(_0435_),
    .Y(_0628_));
 sky130_fd_sc_hd__and2_0 _1587_ (.A(net170),
    .B(net164),
    .X(_0629_));
 sky130_fd_sc_hd__nor2_1 _1588_ (.A(_0885_),
    .B(net206),
    .Y(_0630_));
 sky130_fd_sc_hd__nor2_4 _1589_ (.A(_1228_),
    .B(net206),
    .Y(_0631_));
 sky130_fd_sc_hd__and3_1 _1590_ (.A(_0905_),
    .B(_0912_),
    .C(_0163_),
    .X(_0632_));
 sky130_fd_sc_hd__nor3b_1 _1591_ (.A(net170),
    .B(net169),
    .C_N(_0632_),
    .Y(_0633_));
 sky130_fd_sc_hd__nor2_1 _1592_ (.A(net171),
    .B(net210),
    .Y(_0634_));
 sky130_fd_sc_hd__clkinv_1 _1593_ (.A(_0434_),
    .Y(_0635_));
 sky130_fd_sc_hd__and2_0 _1594_ (.A(_0633_),
    .B(_0634_),
    .X(_0636_));
 sky130_fd_sc_hd__clkinv_1 _1595_ (.A(_0636_),
    .Y(_0637_));
 sky130_fd_sc_hd__xor2_1 _1596_ (.A(_0485_),
    .B(_0200_),
    .X(_0638_));
 sky130_fd_sc_hd__nand2_1 _1597_ (.A(_0565_),
    .B(_0175_),
    .Y(_0639_));
 sky130_fd_sc_hd__nor2_1 _1598_ (.A(_0638_),
    .B(_0639_),
    .Y(_0640_));
 sky130_fd_sc_hd__xor2_1 _1599_ (.A(_0483_),
    .B(_0157_),
    .X(_0641_));
 sky130_fd_sc_hd__nor4_1 _1600_ (.A(_0158_),
    .B(_0638_),
    .C(_0639_),
    .D(_0641_),
    .Y(_0642_));
 sky130_fd_sc_hd__xor2_1 _1601_ (.A(_0501_),
    .B(_0502_),
    .X(_0643_));
 sky130_fd_sc_hd__xnor2_1 _1602_ (.A(_0500_),
    .B(_0643_),
    .Y(_0644_));
 sky130_fd_sc_hd__clkinv_1 _1603_ (.A(net153),
    .Y(_0645_));
 sky130_fd_sc_hd__nand4_1 _1604_ (.A(_0075_),
    .B(_0080_),
    .C(_0082_),
    .D(_0084_),
    .Y(_0646_));
 sky130_fd_sc_hd__nand4_1 _1605_ (.A(_0076_),
    .B(_0077_),
    .C(_0078_),
    .D(_0079_),
    .Y(_0647_));
 sky130_fd_sc_hd__nand4_1 _1606_ (.A(_0072_),
    .B(_0083_),
    .C(_0088_),
    .D(_0089_),
    .Y(_0648_));
 sky130_fd_sc_hd__nand4_1 _1607_ (.A(_0081_),
    .B(_0085_),
    .C(_0086_),
    .D(_0087_),
    .Y(_0649_));
 sky130_fd_sc_hd__nor4_1 _1608_ (.A(_0646_),
    .B(_0647_),
    .C(_0648_),
    .D(_0649_),
    .Y(_0650_));
 sky130_fd_sc_hd__nand4_1 _1609_ (.A(_0091_),
    .B(_0094_),
    .C(_0095_),
    .D(_0073_),
    .Y(_0651_));
 sky130_fd_sc_hd__nand4_1 _1610_ (.A(_0090_),
    .B(_0092_),
    .C(_0093_),
    .D(_0074_),
    .Y(_0652_));
 sky130_fd_sc_hd__nor2_1 _1611_ (.A(_0651_),
    .B(_0652_),
    .Y(_0653_));
 sky130_fd_sc_hd__nand2_1 _1612_ (.A(_0650_),
    .B(_0653_),
    .Y(_0654_));
 sky130_fd_sc_hd__clkinv_1 _1613_ (.A(_0426_),
    .Y(_0655_));
 sky130_fd_sc_hd__a32oi_2 _1614_ (.A1(_0260_),
    .A2(_0644_),
    .A3(_0654_),
    .B1(_0015_),
    .B2(net210),
    .Y(_0656_));
 sky130_fd_sc_hd__mux2_1 _1615_ (.A0(_0436_),
    .A1(_0541_),
    .S(net199),
    .X(_0657_));
 sky130_fd_sc_hd__mux2_1 _1616_ (.A0(_0437_),
    .A1(_0552_),
    .S(net199),
    .X(_0658_));
 sky130_fd_sc_hd__mux2_1 _1617_ (.A0(_0438_),
    .A1(_0557_),
    .S(net199),
    .X(_0659_));
 sky130_fd_sc_hd__mux2_1 _1618_ (.A0(_0439_),
    .A1(_0558_),
    .S(net199),
    .X(_0660_));
 sky130_fd_sc_hd__mux2_1 _1619_ (.A0(_0440_),
    .A1(_0559_),
    .S(net199),
    .X(_0661_));
 sky130_fd_sc_hd__mux2_1 _1620_ (.A0(_0441_),
    .A1(_0560_),
    .S(net199),
    .X(_0662_));
 sky130_fd_sc_hd__clkinv_1 _1621_ (.A(_0424_),
    .Y(_0663_));
 sky130_fd_sc_hd__mux2_1 _1622_ (.A0(_0442_),
    .A1(_0561_),
    .S(net199),
    .X(_0664_));
 sky130_fd_sc_hd__mux2_1 _1623_ (.A0(_0443_),
    .A1(_0562_),
    .S(net199),
    .X(_0665_));
 sky130_fd_sc_hd__mux2_1 _1624_ (.A0(_0444_),
    .A1(_0563_),
    .S(net199),
    .X(_0666_));
 sky130_fd_sc_hd__mux2_1 _1625_ (.A0(_0445_),
    .A1(_0564_),
    .S(net199),
    .X(_0667_));
 sky130_fd_sc_hd__mux2_1 _1626_ (.A0(_0446_),
    .A1(_0542_),
    .S(net199),
    .X(_0668_));
 sky130_fd_sc_hd__mux2_1 _1627_ (.A0(_0447_),
    .A1(_0543_),
    .S(net199),
    .X(_0669_));
 sky130_fd_sc_hd__clkinv_1 _1628_ (.A(_0422_),
    .Y(_0670_));
 sky130_fd_sc_hd__mux2_1 _1629_ (.A0(_0448_),
    .A1(_0544_),
    .S(net199),
    .X(_0671_));
 sky130_fd_sc_hd__mux2_1 _1630_ (.A0(_0449_),
    .A1(_0545_),
    .S(net199),
    .X(_0672_));
 sky130_fd_sc_hd__mux2_1 _1631_ (.A0(_0450_),
    .A1(_0546_),
    .S(net199),
    .X(_0673_));
 sky130_fd_sc_hd__mux2_1 _1632_ (.A0(_0451_),
    .A1(_0547_),
    .S(net199),
    .X(_0674_));
 sky130_fd_sc_hd__clkinv_1 _1633_ (.A(_0421_),
    .Y(_0675_));
 sky130_fd_sc_hd__mux2_1 _1634_ (.A0(_0452_),
    .A1(_0548_),
    .S(net199),
    .X(_0676_));
 sky130_fd_sc_hd__mux2_1 _1635_ (.A0(_0453_),
    .A1(_0549_),
    .S(net199),
    .X(_0677_));
 sky130_fd_sc_hd__mux2_1 _1636_ (.A0(_0454_),
    .A1(_0550_),
    .S(net199),
    .X(_0678_));
 sky130_fd_sc_hd__mux2_1 _1637_ (.A0(_0455_),
    .A1(_0551_),
    .S(net199),
    .X(_0679_));
 sky130_fd_sc_hd__mux2_1 _1638_ (.A0(_0456_),
    .A1(_0553_),
    .S(net199),
    .X(_0680_));
 sky130_fd_sc_hd__mux2_1 _1639_ (.A0(_0457_),
    .A1(_0554_),
    .S(net199),
    .X(_0681_));
 sky130_fd_sc_hd__mux2_1 _1640_ (.A0(_0458_),
    .A1(_0555_),
    .S(net199),
    .X(_0682_));
 sky130_fd_sc_hd__mux2_1 _1641_ (.A0(_0322_),
    .A1(_0556_),
    .S(net199),
    .X(_0683_));
 sky130_fd_sc_hd__o21bai_1 _1642_ (.A1(_0100_),
    .A2(_0574_),
    .B1_N(_0145_),
    .Y(_0684_));
 sky130_fd_sc_hd__a21oi_1 _1643_ (.A1(_0156_),
    .A2(_0684_),
    .B1(_0155_),
    .Y(_0685_));
 sky130_fd_sc_hd__xor2_1 _1644_ (.A(_0156_),
    .B(_0101_),
    .X(_0686_));
 sky130_fd_sc_hd__and3_1 _1645_ (.A(_0283_),
    .B(_0102_),
    .C(_0686_),
    .X(_0687_));
 sky130_fd_sc_hd__o21bai_1 _1646_ (.A1(_0573_),
    .A2(_0685_),
    .B1_N(_0248_),
    .Y(_0688_));
 sky130_fd_sc_hd__a21oi_1 _1647_ (.A1(_0151_),
    .A2(_0688_),
    .B1(_0150_),
    .Y(_0689_));
 sky130_fd_sc_hd__xor2_1 _1648_ (.A(_0151_),
    .B(_0098_),
    .X(_0690_));
 sky130_fd_sc_hd__and3_1 _1649_ (.A(_0099_),
    .B(_0687_),
    .C(_0690_),
    .X(_0691_));
 sky130_fd_sc_hd__nor2_1 _1650_ (.A(_0263_),
    .B(_0278_),
    .Y(_0692_));
 sky130_fd_sc_hd__o211ai_1 _1651_ (.A1(_0572_),
    .A2(_0689_),
    .B1(_0692_),
    .C1(_0264_),
    .Y(_0693_));
 sky130_fd_sc_hd__o21a_1 _1652_ (.A1(_0571_),
    .A2(_0264_),
    .B1(_0693_),
    .X(_0694_));
 sky130_fd_sc_hd__clkinv_1 _1653_ (.A(_0694_),
    .Y(_0695_));
 sky130_fd_sc_hd__xnor2_1 _1654_ (.A(_0264_),
    .B(_0096_),
    .Y(_0696_));
 sky130_fd_sc_hd__and3b_1 _1655_ (.A_N(_0696_),
    .B(_0691_),
    .C(_0097_),
    .X(_0697_));
 sky130_fd_sc_hd__and3_1 _1656_ (.A(_0400_),
    .B(_0399_),
    .C(_0230_),
    .X(_0698_));
 sky130_fd_sc_hd__and3_1 _1657_ (.A(_0402_),
    .B(_0401_),
    .C(_0698_),
    .X(_0699_));
 sky130_fd_sc_hd__and3_1 _1658_ (.A(_0379_),
    .B(_0378_),
    .C(_0160_),
    .X(_0700_));
 sky130_fd_sc_hd__and3_1 _1659_ (.A(_0381_),
    .B(_0380_),
    .C(_0700_),
    .X(_0701_));
 sky130_fd_sc_hd__and3_1 _1660_ (.A(_0365_),
    .B(_0364_),
    .C(_0172_),
    .X(_0702_));
 sky130_fd_sc_hd__and3_1 _1661_ (.A(_0367_),
    .B(_0366_),
    .C(_0702_),
    .X(_0703_));
 sky130_fd_sc_hd__and3_1 _1662_ (.A(_0358_),
    .B(_0357_),
    .C(_0183_),
    .X(_0704_));
 sky130_fd_sc_hd__and3_1 _1663_ (.A(_0360_),
    .B(_0359_),
    .C(_0704_),
    .X(_0705_));
 sky130_fd_sc_hd__nor2b_1 _1664_ (.A(\u_frequency_detector.ref_sync2_d ),
    .B_N(\u_frequency_detector.ref_sync2 ),
    .Y(_0706_));
 sky130_fd_sc_hd__nand2b_1 _1665_ (.A_N(\u_frequency_detector.ref_sync2_d ),
    .B(\u_frequency_detector.ref_sync2 ),
    .Y(_0707_));
 sky130_fd_sc_hd__nand2_1 _1666_ (.A(_0141_),
    .B(net208),
    .Y(_0708_));
 sky130_fd_sc_hd__xnor2_1 _1667_ (.A(_0360_),
    .B(_0708_),
    .Y(_0709_));
 sky130_fd_sc_hd__nor2b_1 _1668_ (.A(\u_frequency_detector.fb_sync2_d ),
    .B_N(\u_frequency_detector.fb_sync2 ),
    .Y(_0710_));
 sky130_fd_sc_hd__nand2b_1 _1669_ (.A_N(\u_frequency_detector.fb_sync2_d ),
    .B(\u_frequency_detector.fb_sync2 ),
    .Y(_0711_));
 sky130_fd_sc_hd__nand2_1 _1670_ (.A(_0152_),
    .B(net207),
    .Y(_0712_));
 sky130_fd_sc_hd__xor2_1 _1671_ (.A(_0367_),
    .B(_0712_),
    .X(_0713_));
 sky130_fd_sc_hd__nand2_1 _1672_ (.A(_0142_),
    .B(net208),
    .Y(_0714_));
 sky130_fd_sc_hd__nand2_1 _1673_ (.A(_0359_),
    .B(_0707_),
    .Y(_0715_));
 sky130_fd_sc_hd__and2_0 _1674_ (.A(_0714_),
    .B(_0715_),
    .X(_0716_));
 sky130_fd_sc_hd__clkinv_1 _1675_ (.A(_0716_),
    .Y(_0717_));
 sky130_fd_sc_hd__nand2_1 _1676_ (.A(_0153_),
    .B(net207),
    .Y(_0718_));
 sky130_fd_sc_hd__nand2_1 _1677_ (.A(_0366_),
    .B(_0711_),
    .Y(_0719_));
 sky130_fd_sc_hd__clkinv_1 _1678_ (.A(_0721_),
    .Y(_0720_));
 sky130_fd_sc_hd__nand2_1 _1679_ (.A(_0718_),
    .B(_0719_),
    .Y(_0721_));
 sky130_fd_sc_hd__nand2_1 _1680_ (.A(_0184_),
    .B(net208),
    .Y(_0722_));
 sky130_fd_sc_hd__xnor2_1 _1681_ (.A(_0358_),
    .B(_0722_),
    .Y(_0723_));
 sky130_fd_sc_hd__nand2_1 _1682_ (.A(_0286_),
    .B(net207),
    .Y(_0724_));
 sky130_fd_sc_hd__xor2_1 _1683_ (.A(_0365_),
    .B(_0724_),
    .X(_0725_));
 sky130_fd_sc_hd__nand2_1 _1684_ (.A(_0185_),
    .B(_0706_),
    .Y(_0726_));
 sky130_fd_sc_hd__nand2_1 _1685_ (.A(_0357_),
    .B(_0707_),
    .Y(_0727_));
 sky130_fd_sc_hd__and2_0 _1686_ (.A(_0726_),
    .B(_0727_),
    .X(_0728_));
 sky130_fd_sc_hd__clkinv_1 _1687_ (.A(_0728_),
    .Y(_0729_));
 sky130_fd_sc_hd__clkinv_1 _1688_ (.A(_0410_),
    .Y(_0730_));
 sky130_fd_sc_hd__nand2_1 _1689_ (.A(_0287_),
    .B(_0710_),
    .Y(_0731_));
 sky130_fd_sc_hd__nand2_1 _1690_ (.A(_0364_),
    .B(_0711_),
    .Y(_0732_));
 sky130_fd_sc_hd__clkinv_1 _1691_ (.A(_0734_),
    .Y(_0733_));
 sky130_fd_sc_hd__nand2_1 _1692_ (.A(_0731_),
    .B(_0732_),
    .Y(_0734_));
 sky130_fd_sc_hd__xnor2_1 _1693_ (.A(_0355_),
    .B(_0706_),
    .Y(_0735_));
 sky130_fd_sc_hd__xnor2_1 _1694_ (.A(_0362_),
    .B(_0711_),
    .Y(_0736_));
 sky130_fd_sc_hd__clkinv_1 _1695_ (.A(_0409_),
    .Y(_0737_));
 sky130_fd_sc_hd__mux2i_1 _1696_ (.A0(_0356_),
    .A1(_0288_),
    .S(_0706_),
    .Y(_0738_));
 sky130_fd_sc_hd__nand2_1 _1697_ (.A(_0173_),
    .B(_0710_),
    .Y(_0739_));
 sky130_fd_sc_hd__nand2_1 _1698_ (.A(_0363_),
    .B(_0711_),
    .Y(_0740_));
 sky130_fd_sc_hd__nand2_1 _1699_ (.A(_0739_),
    .B(_0740_),
    .Y(_0741_));
 sky130_fd_sc_hd__nand2_1 _1700_ (.A(_0182_),
    .B(net208),
    .Y(_0742_));
 sky130_fd_sc_hd__nand2_1 _1701_ (.A(_0361_),
    .B(_0707_),
    .Y(_0743_));
 sky130_fd_sc_hd__clkinv_1 _1702_ (.A(_0745_),
    .Y(_0744_));
 sky130_fd_sc_hd__nand2_1 _1703_ (.A(_0742_),
    .B(_0743_),
    .Y(_0745_));
 sky130_fd_sc_hd__nand2_1 _1704_ (.A(_0147_),
    .B(net207),
    .Y(_0746_));
 sky130_fd_sc_hd__nand2_1 _1705_ (.A(_0368_),
    .B(_0711_),
    .Y(_0747_));
 sky130_fd_sc_hd__clkinv_1 _1706_ (.A(_0408_),
    .Y(_0748_));
 sky130_fd_sc_hd__and2_0 _1707_ (.A(_0746_),
    .B(_0747_),
    .X(_0749_));
 sky130_fd_sc_hd__clkinv_1 _1708_ (.A(_0749_),
    .Y(_0750_));
 sky130_fd_sc_hd__a21o_1 _1709_ (.A1(_0140_),
    .A2(_0579_),
    .B1(_0159_),
    .X(_0751_));
 sky130_fd_sc_hd__a21oi_1 _1710_ (.A1(_0239_),
    .A2(_0751_),
    .B1(_0238_),
    .Y(_0752_));
 sky130_fd_sc_hd__o21bai_1 _1711_ (.A1(_0578_),
    .A2(_0752_),
    .B1_N(_0302_),
    .Y(_0753_));
 sky130_fd_sc_hd__a21oi_1 _1712_ (.A1(_0137_),
    .A2(_0753_),
    .B1(_0136_),
    .Y(_0754_));
 sky130_fd_sc_hd__nand2_1 _1713_ (.A(_0181_),
    .B(net208),
    .Y(_0755_));
 sky130_fd_sc_hd__clkinv_1 _1714_ (.A(_0407_),
    .Y(_0756_));
 sky130_fd_sc_hd__xnor2_1 _1715_ (.A(_0310_),
    .B(_0755_),
    .Y(_0757_));
 sky130_fd_sc_hd__nand2_1 _1716_ (.A(_0146_),
    .B(net207),
    .Y(_0758_));
 sky130_fd_sc_hd__xor2_1 _1717_ (.A(_0311_),
    .B(_0758_),
    .X(_0759_));
 sky130_fd_sc_hd__and3_1 _1718_ (.A(_0361_),
    .B(_0310_),
    .C(_0705_),
    .X(_0760_));
 sky130_fd_sc_hd__nand2_1 _1719_ (.A(net208),
    .B(_0760_),
    .Y(_0761_));
 sky130_fd_sc_hd__clkinv_1 _1720_ (.A(_0406_),
    .Y(_0762_));
 sky130_fd_sc_hd__nand3_1 _1721_ (.A(_0368_),
    .B(_0311_),
    .C(_0703_),
    .Y(_0763_));
 sky130_fd_sc_hd__nor2_1 _1722_ (.A(_0711_),
    .B(_0763_),
    .Y(_0764_));
 sky130_fd_sc_hd__o21bai_1 _1723_ (.A1(_0754_),
    .A2(_0580_),
    .B1_N(_0290_),
    .Y(_0765_));
 sky130_fd_sc_hd__a21oi_1 _1724_ (.A1(_0245_),
    .A2(_0765_),
    .B1(_0244_),
    .Y(_0766_));
 sky130_fd_sc_hd__xnor2_1 _1725_ (.A(\u_phase_error_cdc.req_sync2 ),
    .B(\u_phase_error_cdc.ack_toggle ),
    .Y(_0767_));
 sky130_fd_sc_hd__clkinv_1 _1726_ (.A(_0767_),
    .Y(_0768_));
 sky130_fd_sc_hd__a21boi_0 _1727_ (.A1(net157),
    .A2(net156),
    .B1_N(net212),
    .Y(_0769_));
 sky130_fd_sc_hd__a21oi_1 _1728_ (.A1(_0467_),
    .A2(_0710_),
    .B1(_0536_),
    .Y(_0770_));
 sky130_fd_sc_hd__nand2_1 _1729_ (.A(_0538_),
    .B(_0710_),
    .Y(_0771_));
 sky130_fd_sc_hd__o21ai_0 _1730_ (.A1(_0707_),
    .A2(_0770_),
    .B1(_0771_),
    .Y(_0772_));
 sky130_fd_sc_hd__xnor2_1 _1731_ (.A(\u_frequency_error_cdc.req_sync2 ),
    .B(\u_frequency_error_cdc.ack_toggle ),
    .Y(_0773_));
 sky130_fd_sc_hd__clkinv_1 _1732_ (.A(_0773_),
    .Y(_0774_));
 sky130_fd_sc_hd__nor2_1 _1733_ (.A(_0798_),
    .B(net201),
    .Y(_0775_));
 sky130_fd_sc_hd__nand2b_1 _1734_ (.A_N(net201),
    .B(net155),
    .Y(_0776_));
 sky130_fd_sc_hd__xnor2_1 _1735_ (.A(_0540_),
    .B(_0267_),
    .Y(_0777_));
 sky130_fd_sc_hd__nor2_1 _1736_ (.A(_0776_),
    .B(_0777_),
    .Y(_0778_));
 sky130_fd_sc_hd__and2_0 _1737_ (.A(net155),
    .B(net201),
    .X(_0779_));
 sky130_fd_sc_hd__nand2b_1 _1738_ (.A_N(_0203_),
    .B(_0202_),
    .Y(_0780_));
 sky130_fd_sc_hd__a21oi_1 _1739_ (.A1(_0275_),
    .A2(_0780_),
    .B1(_0274_),
    .Y(_0781_));
 sky130_fd_sc_hd__nor2b_1 _1740_ (.A(_0781_),
    .B_N(_0198_),
    .Y(_0782_));
 sky130_fd_sc_hd__o21ai_0 _1741_ (.A1(_0197_),
    .A2(_0782_),
    .B1(_0254_),
    .Y(_0783_));
 sky130_fd_sc_hd__nand2b_1 _1742_ (.A_N(_0253_),
    .B(_0783_),
    .Y(_0784_));
 sky130_fd_sc_hd__a21oi_1 _1743_ (.A1(_0220_),
    .A2(_0784_),
    .B1(_0219_),
    .Y(_0785_));
 sky130_fd_sc_hd__nor2b_1 _1744_ (.A(_0785_),
    .B_N(_0195_),
    .Y(_0786_));
 sky130_fd_sc_hd__o21ai_0 _1745_ (.A1(_0194_),
    .A2(_0786_),
    .B1(_0256_),
    .Y(_0787_));
 sky130_fd_sc_hd__nand2b_1 _1746_ (.A_N(_0255_),
    .B(_0787_),
    .Y(_0788_));
 sky130_fd_sc_hd__a21oi_1 _1747_ (.A1(_0209_),
    .A2(_0788_),
    .B1(_0208_),
    .Y(_0789_));
 sky130_fd_sc_hd__nand2_1 _1748_ (.A(_1384_),
    .B(_0789_),
    .Y(_0790_));
 sky130_fd_sc_hd__xnor2_1 _1749_ (.A(_0539_),
    .B(_0217_),
    .Y(_0791_));
 sky130_fd_sc_hd__nor2_1 _1750_ (.A(_0790_),
    .B(_0791_),
    .Y(_0792_));
 sky130_fd_sc_hd__nand2_1 _1751_ (.A(_0467_),
    .B(_0706_),
    .Y(_0793_));
 sky130_fd_sc_hd__a21oi_1 _1752_ (.A1(_0467_),
    .A2(_0706_),
    .B1(_0538_),
    .Y(_0794_));
 sky130_fd_sc_hd__nor2_1 _1753_ (.A(_0710_),
    .B(_0794_),
    .Y(_0795_));
 sky130_fd_sc_hd__nor3b_1 _1754_ (.A(net158),
    .B(net160),
    .C_N(net159),
    .Y(_0796_));
 sky130_fd_sc_hd__nor2b_1 _1755_ (.A(net159),
    .B_N(net158),
    .Y(_0797_));
 sky130_fd_sc_hd__clkinv_1 _1756_ (.A(net155),
    .Y(_0798_));
 sky130_fd_sc_hd__a21oi_1 _1757_ (.A1(net160),
    .A2(_0797_),
    .B1(_0796_),
    .Y(_0799_));
 sky130_fd_sc_hd__a21o_1 _1758_ (.A1(net160),
    .A2(_0797_),
    .B1(_0796_),
    .X(_0800_));
 sky130_fd_sc_hd__nand2b_1 _1759_ (.A_N(ctrl_freq_valid),
    .B(_0800_),
    .Y(_0801_));
 sky130_fd_sc_hd__o22a_1 _1760_ (.A1(_0337_),
    .A2(_0213_),
    .B1(_0168_),
    .B2(_0339_),
    .X(_0802_));
 sky130_fd_sc_hd__nor4_1 _1761_ (.A(_0259_),
    .B(_0214_),
    .C(_0237_),
    .D(_0169_),
    .Y(_0803_));
 sky130_fd_sc_hd__clkinv_1 _1762_ (.A(_0398_),
    .Y(_0804_));
 sky130_fd_sc_hd__a221o_1 _1763_ (.A1(_0337_),
    .A2(_0213_),
    .B1(_0168_),
    .B2(_0339_),
    .C1(_0465_),
    .X(_0805_));
 sky130_fd_sc_hd__nor4_1 _1764_ (.A(_0340_),
    .B(_0335_),
    .C(_0307_),
    .D(_0612_),
    .Y(_0806_));
 sky130_fd_sc_hd__a31oi_1 _1765_ (.A1(_0307_),
    .A2(_0802_),
    .A3(_0803_),
    .B1(_0806_),
    .Y(_0807_));
 sky130_fd_sc_hd__clkinv_1 _1766_ (.A(_0809_),
    .Y(_0808_));
 sky130_fd_sc_hd__or3_1 _1767_ (.A(net205),
    .B(_0805_),
    .C(_0807_),
    .X(_0809_));
 sky130_fd_sc_hd__and2_0 _1768_ (.A(_0801_),
    .B(_0809_),
    .X(_0810_));
 sky130_fd_sc_hd__clkinv_1 _1769_ (.A(_0397_),
    .Y(_0811_));
 sky130_fd_sc_hd__nor2_1 _1770_ (.A(_0537_),
    .B(_0810_),
    .Y(_0812_));
 sky130_fd_sc_hd__nor2_1 _1771_ (.A(_0601_),
    .B(net205),
    .Y(_0813_));
 sky130_fd_sc_hd__o21ai_0 _1772_ (.A1(_0605_),
    .A2(_0210_),
    .B1(_0813_),
    .Y(_0814_));
 sky130_fd_sc_hd__nand2_1 _1773_ (.A(_0318_),
    .B(net205),
    .Y(_0815_));
 sky130_fd_sc_hd__a31oi_1 _1774_ (.A1(_0810_),
    .A2(_0814_),
    .A3(_0815_),
    .B1(_0812_),
    .Y(_0816_));
 sky130_fd_sc_hd__nor2_1 _1775_ (.A(_0706_),
    .B(_0770_),
    .Y(_0817_));
 sky130_fd_sc_hd__nor2_1 _1776_ (.A(_0495_),
    .B(_0790_),
    .Y(_0818_));
 sky130_fd_sc_hd__and3_1 _1777_ (.A(_1384_),
    .B(_0281_),
    .C(_0789_),
    .X(_0819_));
 sky130_fd_sc_hd__and3_1 _1778_ (.A(_1384_),
    .B(_0131_),
    .C(_0789_),
    .X(_0820_));
 sky130_fd_sc_hd__xnor2_1 _1779_ (.A(_0492_),
    .B(_0130_),
    .Y(_0821_));
 sky130_fd_sc_hd__nor2_1 _1780_ (.A(_0790_),
    .B(_0821_),
    .Y(_0822_));
 sky130_fd_sc_hd__and3_1 _1781_ (.A(_1384_),
    .B(_0234_),
    .C(_0789_),
    .X(_0823_));
 sky130_fd_sc_hd__xnor2_1 _1782_ (.A(_0490_),
    .B(_0233_),
    .Y(_0824_));
 sky130_fd_sc_hd__nor2_1 _1783_ (.A(_0790_),
    .B(_0824_),
    .Y(_0825_));
 sky130_fd_sc_hd__and3_1 _1784_ (.A(_1384_),
    .B(_0218_),
    .C(_0789_),
    .X(_0826_));
 sky130_fd_sc_hd__a22oi_1 _1785_ (.A1(_0536_),
    .A2(_0707_),
    .B1(_0711_),
    .B2(_0538_),
    .Y(_0827_));
 sky130_fd_sc_hd__xnor2_1 _1786_ (.A(_1386_),
    .B(_0134_),
    .Y(_0828_));
 sky130_fd_sc_hd__nor2_1 _1787_ (.A(_0827_),
    .B(_0828_),
    .Y(_0829_));
 sky130_fd_sc_hd__nor2_1 _1788_ (.A(_0134_),
    .B(_0174_),
    .Y(_0830_));
 sky130_fd_sc_hd__a21oi_1 _1789_ (.A1(_0487_),
    .A2(_0134_),
    .B1(_0830_),
    .Y(_0831_));
 sky130_fd_sc_hd__nor2_1 _1790_ (.A(_0827_),
    .B(_0831_),
    .Y(_0832_));
 sky130_fd_sc_hd__nor2_1 _1791_ (.A(_0134_),
    .B(_0565_),
    .Y(_0833_));
 sky130_fd_sc_hd__a21oi_1 _1792_ (.A1(_0486_),
    .A2(_0134_),
    .B1(_0833_),
    .Y(_0834_));
 sky130_fd_sc_hd__nor2_1 _1793_ (.A(_0827_),
    .B(_0834_),
    .Y(_0835_));
 sky130_fd_sc_hd__nor2b_1 _1794_ (.A(_0134_),
    .B_N(_0200_),
    .Y(_0836_));
 sky130_fd_sc_hd__xnor2_1 _1795_ (.A(_0485_),
    .B(_0836_),
    .Y(_0837_));
 sky130_fd_sc_hd__nor2_1 _1796_ (.A(_0827_),
    .B(_0837_),
    .Y(_0838_));
 sky130_fd_sc_hd__mux2i_1 _1797_ (.A0(_0158_),
    .A1(_0484_),
    .S(_0134_),
    .Y(_0839_));
 sky130_fd_sc_hd__nor2_1 _1798_ (.A(_0827_),
    .B(_0839_),
    .Y(_0840_));
 sky130_fd_sc_hd__nor2b_1 _1799_ (.A(_0134_),
    .B_N(_0157_),
    .Y(_0841_));
 sky130_fd_sc_hd__xnor2_1 _1800_ (.A(_0483_),
    .B(_0841_),
    .Y(_0842_));
 sky130_fd_sc_hd__nor2_1 _1801_ (.A(_0827_),
    .B(_0842_),
    .Y(_0843_));
 sky130_fd_sc_hd__nor2_1 _1802_ (.A(_0482_),
    .B(_0776_),
    .Y(_0844_));
 sky130_fd_sc_hd__and2_0 _1803_ (.A(_0149_),
    .B(_0775_),
    .X(_0845_));
 sky130_fd_sc_hd__and2_0 _1804_ (.A(_0266_),
    .B(_0775_),
    .X(_0846_));
 sky130_fd_sc_hd__xnor2_1 _1805_ (.A(_0479_),
    .B(_0265_),
    .Y(_0847_));
 sky130_fd_sc_hd__nor2_1 _1806_ (.A(_0776_),
    .B(_0847_),
    .Y(_0848_));
 sky130_fd_sc_hd__and2_0 _1807_ (.A(_0280_),
    .B(_0775_),
    .X(_0849_));
 sky130_fd_sc_hd__xnor2_1 _1808_ (.A(_0477_),
    .B(_0279_),
    .Y(_0850_));
 sky130_fd_sc_hd__nor2_1 _1809_ (.A(_0776_),
    .B(_0850_),
    .Y(_0851_));
 sky130_fd_sc_hd__and2_0 _1810_ (.A(_0193_),
    .B(_0775_),
    .X(_0852_));
 sky130_fd_sc_hd__xnor2_1 _1811_ (.A(_0475_),
    .B(_0192_),
    .Y(_0853_));
 sky130_fd_sc_hd__nor2_1 _1812_ (.A(_0776_),
    .B(_0853_),
    .Y(_0854_));
 sky130_fd_sc_hd__and2_0 _1813_ (.A(_0123_),
    .B(_0775_),
    .X(_0855_));
 sky130_fd_sc_hd__xnor2_1 _1814_ (.A(_0473_),
    .B(_0122_),
    .Y(_0856_));
 sky130_fd_sc_hd__nor2_1 _1815_ (.A(_0776_),
    .B(_0856_),
    .Y(_0857_));
 sky130_fd_sc_hd__and2_0 _1816_ (.A(_0247_),
    .B(_0775_),
    .X(_0858_));
 sky130_fd_sc_hd__xnor2_1 _1817_ (.A(_0471_),
    .B(_0246_),
    .Y(_0859_));
 sky130_fd_sc_hd__nor2_1 _1818_ (.A(_0776_),
    .B(_0859_),
    .Y(_0860_));
 sky130_fd_sc_hd__and2_0 _1819_ (.A(_0121_),
    .B(_0775_),
    .X(_0861_));
 sky130_fd_sc_hd__xnor2_1 _1820_ (.A(_0469_),
    .B(_0120_),
    .Y(_0862_));
 sky130_fd_sc_hd__nor2_1 _1821_ (.A(_0776_),
    .B(_0862_),
    .Y(_0863_));
 sky130_fd_sc_hd__and2_0 _1822_ (.A(_0268_),
    .B(_0775_),
    .X(_0864_));
 sky130_fd_sc_hd__a31o_1 _1823_ (.A1(_0467_),
    .A2(_0707_),
    .A3(_0711_),
    .B1(_0772_),
    .X(_0865_));
 sky130_fd_sc_hd__and2_0 _1824_ (.A(net161),
    .B(net164),
    .X(_0866_));
 sky130_fd_sc_hd__and2_0 _1825_ (.A(freq_locked_internal),
    .B(_0800_),
    .X(_0867_));
 sky130_fd_sc_hd__and2_0 _1826_ (.A(_0526_),
    .B(net204),
    .X(_0868_));
 sky130_fd_sc_hd__nor2_2 _1827_ (.A(net203),
    .B(net204),
    .Y(_0869_));
 sky130_fd_sc_hd__a221o_1 _1828_ (.A1(_0682_),
    .A2(net203),
    .B1(net202),
    .B2(_0458_),
    .C1(_0868_),
    .X(_0870_));
 sky130_fd_sc_hd__a221o_1 _1829_ (.A1(_0681_),
    .A2(net203),
    .B1(net202),
    .B2(_0457_),
    .C1(_0868_),
    .X(_0871_));
 sky130_fd_sc_hd__a221o_1 _1830_ (.A1(_0680_),
    .A2(net203),
    .B1(net202),
    .B2(_0456_),
    .C1(_0868_),
    .X(_0872_));
 sky130_fd_sc_hd__a221o_1 _1831_ (.A1(_0679_),
    .A2(net203),
    .B1(net202),
    .B2(_0455_),
    .C1(_0868_),
    .X(_0873_));
 sky130_fd_sc_hd__a221o_1 _1832_ (.A1(_0678_),
    .A2(net203),
    .B1(net202),
    .B2(_0454_),
    .C1(_0868_),
    .X(_0874_));
 sky130_fd_sc_hd__a221o_1 _1833_ (.A1(_0677_),
    .A2(net203),
    .B1(net202),
    .B2(_0453_),
    .C1(_0868_),
    .X(_0875_));
 sky130_fd_sc_hd__a221o_1 _1834_ (.A1(_0676_),
    .A2(net203),
    .B1(net202),
    .B2(_0452_),
    .C1(_0868_),
    .X(_0876_));
 sky130_fd_sc_hd__a221o_1 _1835_ (.A1(_0674_),
    .A2(net203),
    .B1(net202),
    .B2(_0451_),
    .C1(_0868_),
    .X(_0877_));
 sky130_fd_sc_hd__a221o_1 _1836_ (.A1(_0673_),
    .A2(net203),
    .B1(net202),
    .B2(_0450_),
    .C1(_0868_),
    .X(_0878_));
 sky130_fd_sc_hd__a22oi_1 _1837_ (.A1(_0525_),
    .A2(net204),
    .B1(net202),
    .B2(_0449_),
    .Y(_0879_));
 sky130_fd_sc_hd__nand2_1 _1838_ (.A(_0672_),
    .B(net203),
    .Y(_0880_));
 sky130_fd_sc_hd__nand2_1 _1839_ (.A(_0879_),
    .B(_0880_),
    .Y(_0881_));
 sky130_fd_sc_hd__a22oi_1 _1840_ (.A1(_0524_),
    .A2(net204),
    .B1(net202),
    .B2(_0448_),
    .Y(_0882_));
 sky130_fd_sc_hd__nand2_1 _1841_ (.A(_0671_),
    .B(net203),
    .Y(_0883_));
 sky130_fd_sc_hd__nand2_1 _1842_ (.A(_0882_),
    .B(_0883_),
    .Y(_0884_));
 sky130_fd_sc_hd__clkinv_1 _1843_ (.A(net171),
    .Y(_0885_));
 sky130_fd_sc_hd__a22oi_1 _1844_ (.A1(_0523_),
    .A2(net204),
    .B1(net202),
    .B2(_0447_),
    .Y(_0886_));
 sky130_fd_sc_hd__nand2_1 _1845_ (.A(_0669_),
    .B(net203),
    .Y(_0887_));
 sky130_fd_sc_hd__nand2_1 _1846_ (.A(_0886_),
    .B(_0887_),
    .Y(_0888_));
 sky130_fd_sc_hd__a22oi_1 _1847_ (.A1(_0522_),
    .A2(net204),
    .B1(net202),
    .B2(_0446_),
    .Y(_0889_));
 sky130_fd_sc_hd__nand2_1 _1848_ (.A(_0668_),
    .B(net203),
    .Y(_0890_));
 sky130_fd_sc_hd__nand2_1 _1849_ (.A(_0889_),
    .B(_0890_),
    .Y(_0891_));
 sky130_fd_sc_hd__a22oi_1 _1850_ (.A1(_0535_),
    .A2(net204),
    .B1(net202),
    .B2(_0445_),
    .Y(_0892_));
 sky130_fd_sc_hd__nand2_1 _1851_ (.A(_0667_),
    .B(net203),
    .Y(_0893_));
 sky130_fd_sc_hd__nand2_1 _1852_ (.A(_0892_),
    .B(_0893_),
    .Y(_0894_));
 sky130_fd_sc_hd__a22oi_1 _1853_ (.A1(_0534_),
    .A2(net204),
    .B1(net202),
    .B2(_0444_),
    .Y(_0895_));
 sky130_fd_sc_hd__nand2_1 _1854_ (.A(_0666_),
    .B(net203),
    .Y(_0896_));
 sky130_fd_sc_hd__nand2_1 _1855_ (.A(_0895_),
    .B(_0896_),
    .Y(_0897_));
 sky130_fd_sc_hd__clkinv_1 _1856_ (.A(net169),
    .Y(_0898_));
 sky130_fd_sc_hd__a22oi_1 _1857_ (.A1(_0533_),
    .A2(net204),
    .B1(net202),
    .B2(_0443_),
    .Y(_0899_));
 sky130_fd_sc_hd__nand2_1 _1858_ (.A(_0665_),
    .B(net203),
    .Y(_0900_));
 sky130_fd_sc_hd__nand2_1 _1859_ (.A(_0899_),
    .B(_0900_),
    .Y(_0901_));
 sky130_fd_sc_hd__a22oi_1 _1860_ (.A1(_0532_),
    .A2(net204),
    .B1(net202),
    .B2(_0442_),
    .Y(_0902_));
 sky130_fd_sc_hd__nand2_1 _1861_ (.A(_0664_),
    .B(net203),
    .Y(_0903_));
 sky130_fd_sc_hd__nand2_1 _1862_ (.A(_0902_),
    .B(_0903_),
    .Y(_0904_));
 sky130_fd_sc_hd__clkinv_1 _1863_ (.A(net168),
    .Y(_0905_));
 sky130_fd_sc_hd__a22oi_1 _1864_ (.A1(_0531_),
    .A2(net204),
    .B1(net202),
    .B2(_0441_),
    .Y(_0906_));
 sky130_fd_sc_hd__nand2_1 _1865_ (.A(_0662_),
    .B(net203),
    .Y(_0907_));
 sky130_fd_sc_hd__nand2_1 _1866_ (.A(_0906_),
    .B(_0907_),
    .Y(_0908_));
 sky130_fd_sc_hd__a22oi_1 _1867_ (.A1(_0530_),
    .A2(net204),
    .B1(net202),
    .B2(_0440_),
    .Y(_0909_));
 sky130_fd_sc_hd__nand2_1 _1868_ (.A(_0661_),
    .B(net203),
    .Y(_0910_));
 sky130_fd_sc_hd__nand2_1 _1869_ (.A(_0909_),
    .B(_0910_),
    .Y(_0911_));
 sky130_fd_sc_hd__clkinv_1 _1870_ (.A(net167),
    .Y(_0912_));
 sky130_fd_sc_hd__a22oi_1 _1871_ (.A1(_0529_),
    .A2(net204),
    .B1(_0869_),
    .B2(_0439_),
    .Y(_0913_));
 sky130_fd_sc_hd__nand2_1 _1872_ (.A(_0660_),
    .B(net203),
    .Y(_0914_));
 sky130_fd_sc_hd__nand2_1 _1873_ (.A(_0913_),
    .B(_0914_),
    .Y(_0915_));
 sky130_fd_sc_hd__a22oi_1 _1874_ (.A1(_0528_),
    .A2(net204),
    .B1(_0869_),
    .B2(_0438_),
    .Y(_0916_));
 sky130_fd_sc_hd__nand2_1 _1875_ (.A(_0659_),
    .B(net203),
    .Y(_0917_));
 sky130_fd_sc_hd__nand2_1 _1876_ (.A(_0916_),
    .B(_0917_),
    .Y(_0918_));
 sky130_fd_sc_hd__clkinv_1 _1877_ (.A(net166),
    .Y(_0919_));
 sky130_fd_sc_hd__a22oi_1 _1878_ (.A1(_0527_),
    .A2(net204),
    .B1(_0869_),
    .B2(_0437_),
    .Y(_0920_));
 sky130_fd_sc_hd__nand2_1 _1879_ (.A(_0658_),
    .B(net203),
    .Y(_0921_));
 sky130_fd_sc_hd__nand2_1 _1880_ (.A(_0920_),
    .B(_0921_),
    .Y(_0922_));
 sky130_fd_sc_hd__a22oi_1 _1881_ (.A1(_0521_),
    .A2(net204),
    .B1(_0869_),
    .B2(_0436_),
    .Y(_0923_));
 sky130_fd_sc_hd__nand2_1 _1882_ (.A(_0657_),
    .B(net203),
    .Y(_0924_));
 sky130_fd_sc_hd__nand2_1 _1883_ (.A(_0923_),
    .B(_0924_),
    .Y(_0925_));
 sky130_fd_sc_hd__clkinv_1 _1884_ (.A(net165),
    .Y(_0926_));
 sky130_fd_sc_hd__nor2b_1 _1885_ (.A(_0321_),
    .B_N(net209),
    .Y(_0927_));
 sky130_fd_sc_hd__nor2_1 _1886_ (.A(_0628_),
    .B(_0927_),
    .Y(_0928_));
 sky130_fd_sc_hd__a21oi_1 _1887_ (.A1(_0178_),
    .A2(_0927_),
    .B1(_0928_),
    .Y(_0929_));
 sky130_fd_sc_hd__nor2_1 _1888_ (.A(net206),
    .B(_0929_),
    .Y(_0930_));
 sky130_fd_sc_hd__xnor2_1 _1889_ (.A(_0434_),
    .B(_0927_),
    .Y(_0931_));
 sky130_fd_sc_hd__nor2_1 _1890_ (.A(net206),
    .B(_0931_),
    .Y(_0932_));
 sky130_fd_sc_hd__mux2i_1 _1891_ (.A0(_0433_),
    .A1(net171),
    .S(net209),
    .Y(_0933_));
 sky130_fd_sc_hd__nor2_1 _1892_ (.A(net206),
    .B(_0933_),
    .Y(_0934_));
 sky130_fd_sc_hd__mux2i_1 _1893_ (.A0(_0432_),
    .A1(net170),
    .S(net209),
    .Y(_0935_));
 sky130_fd_sc_hd__nor2_1 _1894_ (.A(net206),
    .B(_0935_),
    .Y(_0936_));
 sky130_fd_sc_hd__mux2i_1 _1895_ (.A0(_0431_),
    .A1(net169),
    .S(net209),
    .Y(_0937_));
 sky130_fd_sc_hd__nor2_1 _1896_ (.A(net206),
    .B(_0937_),
    .Y(_0938_));
 sky130_fd_sc_hd__mux2i_1 _1897_ (.A0(_0430_),
    .A1(net168),
    .S(net209),
    .Y(_0939_));
 sky130_fd_sc_hd__nor2_1 _1898_ (.A(net206),
    .B(_0939_),
    .Y(_0940_));
 sky130_fd_sc_hd__mux2i_1 _1899_ (.A0(_0429_),
    .A1(net167),
    .S(net209),
    .Y(_0941_));
 sky130_fd_sc_hd__nor2_1 _1900_ (.A(net206),
    .B(_0941_),
    .Y(_0942_));
 sky130_fd_sc_hd__mux2i_1 _1901_ (.A0(_0428_),
    .A1(net166),
    .S(net209),
    .Y(_0943_));
 sky130_fd_sc_hd__nor2_1 _1902_ (.A(net206),
    .B(_0943_),
    .Y(_0944_));
 sky130_fd_sc_hd__mux2i_1 _1903_ (.A0(_0427_),
    .A1(net165),
    .S(net209),
    .Y(_0945_));
 sky130_fd_sc_hd__nor2_1 _1904_ (.A(net206),
    .B(_0945_),
    .Y(_0946_));
 sky130_fd_sc_hd__nand2_1 _1905_ (.A(_0536_),
    .B(_0706_),
    .Y(_0947_));
 sky130_fd_sc_hd__nor2_1 _1906_ (.A(_0538_),
    .B(_0467_),
    .Y(_0948_));
 sky130_fd_sc_hd__nor2_1 _1907_ (.A(_0536_),
    .B(_0467_),
    .Y(_0949_));
 sky130_fd_sc_hd__o21ai_0 _1908_ (.A1(_0706_),
    .A2(_0949_),
    .B1(_0538_),
    .Y(_0950_));
 sky130_fd_sc_hd__a21oi_1 _1909_ (.A1(_0793_),
    .A2(_0950_),
    .B1(_0711_),
    .Y(_0951_));
 sky130_fd_sc_hd__a31oi_1 _1910_ (.A1(_0536_),
    .A2(_0706_),
    .A3(_0948_),
    .B1(_0951_),
    .Y(_0952_));
 sky130_fd_sc_hd__o211ai_1 _1911_ (.A1(_0487_),
    .A2(_0204_),
    .B1(_0615_),
    .C1(_0305_),
    .Y(_0953_));
 sky130_fd_sc_hd__and2_0 _1912_ (.A(_0536_),
    .B(_0953_),
    .X(_0954_));
 sky130_fd_sc_hd__nand2_1 _1913_ (.A(_0568_),
    .B(_0953_),
    .Y(_0955_));
 sky130_fd_sc_hd__a221oi_1 _1914_ (.A1(_0125_),
    .A2(_0954_),
    .B1(_0955_),
    .B2(_0538_),
    .C1(_0952_),
    .Y(_0956_));
 sky130_fd_sc_hd__a21oi_1 _1915_ (.A1(_0655_),
    .A2(_0952_),
    .B1(_0956_),
    .Y(_0957_));
 sky130_fd_sc_hd__clkinv_1 _1916_ (.A(_0377_),
    .Y(_0958_));
 sky130_fd_sc_hd__xnor2_1 _1917_ (.A(_0641_),
    .B(_0240_),
    .Y(_0959_));
 sky130_fd_sc_hd__nand2b_1 _1918_ (.A_N(_0641_),
    .B(_0953_),
    .Y(_0960_));
 sky130_fd_sc_hd__a22oi_1 _1919_ (.A1(_0954_),
    .A2(_0959_),
    .B1(_0960_),
    .B2(_0538_),
    .Y(_0961_));
 sky130_fd_sc_hd__nand2_1 _1920_ (.A(_0425_),
    .B(_0952_),
    .Y(_0962_));
 sky130_fd_sc_hd__clkinv_1 _1921_ (.A(_0376_),
    .Y(_0963_));
 sky130_fd_sc_hd__o21ai_0 _1922_ (.A1(_0952_),
    .A2(_0961_),
    .B1(_0962_),
    .Y(_0964_));
 sky130_fd_sc_hd__nand2_1 _1923_ (.A(_0566_),
    .B(_0953_),
    .Y(_0965_));
 sky130_fd_sc_hd__a221oi_1 _1924_ (.A1(_0241_),
    .A2(_0954_),
    .B1(_0965_),
    .B2(_0538_),
    .C1(_0952_),
    .Y(_0966_));
 sky130_fd_sc_hd__a21oi_1 _1925_ (.A1(_0663_),
    .A2(_0952_),
    .B1(_0966_),
    .Y(_0967_));
 sky130_fd_sc_hd__xnor2_1 _1926_ (.A(_0638_),
    .B(_0293_),
    .Y(_0968_));
 sky130_fd_sc_hd__nand2b_1 _1927_ (.A_N(_0638_),
    .B(_0953_),
    .Y(_0969_));
 sky130_fd_sc_hd__a22oi_1 _1928_ (.A1(_0954_),
    .A2(_0968_),
    .B1(_0969_),
    .B2(_0538_),
    .Y(_0970_));
 sky130_fd_sc_hd__nand2_1 _1929_ (.A(_0423_),
    .B(_0952_),
    .Y(_0971_));
 sky130_fd_sc_hd__o21ai_0 _1930_ (.A1(_0952_),
    .A2(_0970_),
    .B1(_0971_),
    .Y(_0972_));
 sky130_fd_sc_hd__nand2_1 _1931_ (.A(_0565_),
    .B(_0953_),
    .Y(_0973_));
 sky130_fd_sc_hd__a221oi_1 _1932_ (.A1(_0294_),
    .A2(_0954_),
    .B1(_0973_),
    .B2(_0538_),
    .C1(_0952_),
    .Y(_0974_));
 sky130_fd_sc_hd__a21oi_1 _1933_ (.A1(_0670_),
    .A2(_0952_),
    .B1(_0974_),
    .Y(_0975_));
 sky130_fd_sc_hd__nand2_1 _1934_ (.A(_0174_),
    .B(_0953_),
    .Y(_0976_));
 sky130_fd_sc_hd__a221oi_1 _1935_ (.A1(_0176_),
    .A2(_0954_),
    .B1(_0976_),
    .B2(_0538_),
    .C1(_0952_),
    .Y(_0977_));
 sky130_fd_sc_hd__a21oi_1 _1936_ (.A1(_0675_),
    .A2(_0952_),
    .B1(_0977_),
    .Y(_0978_));
 sky130_fd_sc_hd__a21oi_1 _1937_ (.A1(_0947_),
    .A2(_0950_),
    .B1(_0711_),
    .Y(_0979_));
 sky130_fd_sc_hd__a31oi_1 _1938_ (.A1(_0536_),
    .A2(_0706_),
    .A3(_0948_),
    .B1(_0979_),
    .Y(_0980_));
 sky130_fd_sc_hd__a21oi_1 _1939_ (.A1(_0488_),
    .A2(_0953_),
    .B1(_0980_),
    .Y(_0981_));
 sky130_fd_sc_hd__a21o_1 _1940_ (.A1(_0420_),
    .A2(_0952_),
    .B1(_0981_),
    .X(_0982_));
 sky130_fd_sc_hd__xor2_1 _1941_ (.A(_0498_),
    .B(_0499_),
    .X(_0983_));
 sky130_fd_sc_hd__xnor2_1 _1942_ (.A(_0497_),
    .B(_0983_),
    .Y(_0984_));
 sky130_fd_sc_hd__nand4_1 _1943_ (.A(_0048_),
    .B(_0066_),
    .C(_0067_),
    .D(_0068_),
    .Y(_0985_));
 sky130_fd_sc_hd__nand2_1 _1944_ (.A(_0069_),
    .B(_0052_),
    .Y(_0986_));
 sky130_fd_sc_hd__nand4_1 _1945_ (.A(_0070_),
    .B(_0071_),
    .C(_0049_),
    .D(_0051_),
    .Y(_0987_));
 sky130_fd_sc_hd__nor4_1 _1946_ (.A(_0570_),
    .B(_0985_),
    .C(_0986_),
    .D(_0987_),
    .Y(_0988_));
 sky130_fd_sc_hd__and4_1 _1947_ (.A(_0053_),
    .B(_0058_),
    .C(_0060_),
    .D(_0061_),
    .X(_0989_));
 sky130_fd_sc_hd__nand4_1 _1948_ (.A(_0057_),
    .B(_0062_),
    .C(_0988_),
    .D(_0989_),
    .Y(_0990_));
 sky130_fd_sc_hd__nand4_1 _1949_ (.A(_0059_),
    .B(_0065_),
    .C(_0054_),
    .D(_0055_),
    .Y(_0991_));
 sky130_fd_sc_hd__nor3_1 _1950_ (.A(_0569_),
    .B(_0990_),
    .C(_0991_),
    .Y(_0992_));
 sky130_fd_sc_hd__nand3_1 _1951_ (.A(_0064_),
    .B(_0050_),
    .C(_0992_),
    .Y(_0993_));
 sky130_fd_sc_hd__nand2_1 _1952_ (.A(_0984_),
    .B(_0993_),
    .Y(_0994_));
 sky130_fd_sc_hd__nand3_1 _1953_ (.A(net203),
    .B(_0984_),
    .C(_0993_),
    .Y(_0995_));
 sky130_fd_sc_hd__nor2b_1 _1954_ (.A(_0039_),
    .B_N(net203),
    .Y(_0996_));
 sky130_fd_sc_hd__nand2_1 _1955_ (.A(_0419_),
    .B(net202),
    .Y(_0997_));
 sky130_fd_sc_hd__a22oi_1 _1956_ (.A1(_0331_),
    .A2(net204),
    .B1(_0996_),
    .B2(_0027_),
    .Y(_0998_));
 sky130_fd_sc_hd__nand3_1 _1957_ (.A(_0995_),
    .B(_0997_),
    .C(_0998_),
    .Y(_0999_));
 sky130_fd_sc_hd__nand2_1 _1958_ (.A(_0418_),
    .B(net202),
    .Y(_1000_));
 sky130_fd_sc_hd__a22oi_1 _1959_ (.A1(_0330_),
    .A2(net204),
    .B1(_0996_),
    .B2(_0026_),
    .Y(_1001_));
 sky130_fd_sc_hd__nand3_1 _1960_ (.A(_0995_),
    .B(_1000_),
    .C(_1001_),
    .Y(_1002_));
 sky130_fd_sc_hd__nand2_1 _1961_ (.A(_0417_),
    .B(net202),
    .Y(_1003_));
 sky130_fd_sc_hd__a22oi_1 _1962_ (.A1(_0329_),
    .A2(net204),
    .B1(_0996_),
    .B2(_0025_),
    .Y(_1004_));
 sky130_fd_sc_hd__nand3_1 _1963_ (.A(_0995_),
    .B(_1003_),
    .C(_1004_),
    .Y(_1005_));
 sky130_fd_sc_hd__nand2_1 _1964_ (.A(_0416_),
    .B(net202),
    .Y(_1006_));
 sky130_fd_sc_hd__a22oi_1 _1965_ (.A1(_0328_),
    .A2(net204),
    .B1(_0996_),
    .B2(_0047_),
    .Y(_1007_));
 sky130_fd_sc_hd__nand3_1 _1966_ (.A(_0995_),
    .B(_1006_),
    .C(_1007_),
    .Y(_1008_));
 sky130_fd_sc_hd__nand2_1 _1967_ (.A(_0415_),
    .B(net202),
    .Y(_1009_));
 sky130_fd_sc_hd__a22oi_1 _1968_ (.A1(_0327_),
    .A2(net204),
    .B1(_0996_),
    .B2(_0046_),
    .Y(_1010_));
 sky130_fd_sc_hd__nand3_1 _1969_ (.A(_0995_),
    .B(_1009_),
    .C(_1010_),
    .Y(_1011_));
 sky130_fd_sc_hd__nand2_1 _1970_ (.A(_0414_),
    .B(net202),
    .Y(_1012_));
 sky130_fd_sc_hd__a22oi_1 _1971_ (.A1(_0326_),
    .A2(net204),
    .B1(_0996_),
    .B2(_0045_),
    .Y(_1013_));
 sky130_fd_sc_hd__nand3_1 _1972_ (.A(_0995_),
    .B(_1012_),
    .C(_1013_),
    .Y(_1014_));
 sky130_fd_sc_hd__nand2_1 _1973_ (.A(_0413_),
    .B(net202),
    .Y(_1015_));
 sky130_fd_sc_hd__a22oi_1 _1974_ (.A1(_0325_),
    .A2(net204),
    .B1(_0996_),
    .B2(_0044_),
    .Y(_1016_));
 sky130_fd_sc_hd__nand3_1 _1975_ (.A(_0995_),
    .B(_1015_),
    .C(_1016_),
    .Y(_1017_));
 sky130_fd_sc_hd__nand2_1 _1976_ (.A(_0412_),
    .B(net202),
    .Y(_1018_));
 sky130_fd_sc_hd__a22oi_1 _1977_ (.A1(_0324_),
    .A2(net204),
    .B1(_0996_),
    .B2(_0043_),
    .Y(_1019_));
 sky130_fd_sc_hd__nand3_1 _1978_ (.A(_0995_),
    .B(_1018_),
    .C(_1019_),
    .Y(_1020_));
 sky130_fd_sc_hd__nand2_1 _1979_ (.A(_0411_),
    .B(net202),
    .Y(_1021_));
 sky130_fd_sc_hd__a22oi_1 _1980_ (.A1(_0323_),
    .A2(net204),
    .B1(_0996_),
    .B2(_0042_),
    .Y(_1022_));
 sky130_fd_sc_hd__nand3_1 _1981_ (.A(_0995_),
    .B(_1021_),
    .C(_1022_),
    .Y(_1023_));
 sky130_fd_sc_hd__mux2i_1 _1982_ (.A0(_0410_),
    .A1(_0389_),
    .S(net209),
    .Y(_1024_));
 sky130_fd_sc_hd__nor2_1 _1983_ (.A(net206),
    .B(_1024_),
    .Y(_1025_));
 sky130_fd_sc_hd__mux2i_1 _1984_ (.A0(_0409_),
    .A1(_0388_),
    .S(net209),
    .Y(_1026_));
 sky130_fd_sc_hd__nor2_1 _1985_ (.A(net206),
    .B(_1026_),
    .Y(_1027_));
 sky130_fd_sc_hd__mux2i_1 _1986_ (.A0(_0408_),
    .A1(_0387_),
    .S(net209),
    .Y(_1028_));
 sky130_fd_sc_hd__nor2_1 _1987_ (.A(net206),
    .B(_1028_),
    .Y(_1029_));
 sky130_fd_sc_hd__mux2i_1 _1988_ (.A0(_0407_),
    .A1(_0386_),
    .S(net209),
    .Y(_1030_));
 sky130_fd_sc_hd__nor2_1 _1989_ (.A(net206),
    .B(_1030_),
    .Y(_1031_));
 sky130_fd_sc_hd__mux2i_1 _1990_ (.A0(_0406_),
    .A1(_0385_),
    .S(net209),
    .Y(_1032_));
 sky130_fd_sc_hd__nor2_1 _1991_ (.A(net206),
    .B(_1032_),
    .Y(_1033_));
 sky130_fd_sc_hd__mux2i_1 _1992_ (.A0(_0405_),
    .A1(_0384_),
    .S(net209),
    .Y(_1034_));
 sky130_fd_sc_hd__nor2_1 _1993_ (.A(net206),
    .B(_1034_),
    .Y(_1035_));
 sky130_fd_sc_hd__mux2i_1 _1994_ (.A0(_0404_),
    .A1(_0383_),
    .S(net209),
    .Y(_1036_));
 sky130_fd_sc_hd__nor2_1 _1995_ (.A(net206),
    .B(_1036_),
    .Y(_1037_));
 sky130_fd_sc_hd__nor2_1 _1996_ (.A(net161),
    .B(net206),
    .Y(_1038_));
 sky130_fd_sc_hd__nand2_1 _1997_ (.A(_0403_),
    .B(_1038_),
    .Y(_1039_));
 sky130_fd_sc_hd__nor4_1 _1998_ (.A(_0403_),
    .B(_0402_),
    .C(_0401_),
    .D(_0316_),
    .Y(_1040_));
 sky130_fd_sc_hd__o31ai_1 _1999_ (.A1(_0399_),
    .A2(_0575_),
    .A3(_0228_),
    .B1(_0400_),
    .Y(_1041_));
 sky130_fd_sc_hd__nand2_1 _2000_ (.A(_1040_),
    .B(_1041_),
    .Y(_1042_));
 sky130_fd_sc_hd__xnor2_1 _2001_ (.A(_0300_),
    .B(_0696_),
    .Y(_1043_));
 sky130_fd_sc_hd__or3_1 _2002_ (.A(_0285_),
    .B(_0277_),
    .C(_0301_),
    .X(_1044_));
 sky130_fd_sc_hd__nor3_1 _2003_ (.A(_0694_),
    .B(_1043_),
    .C(_1044_),
    .Y(_1045_));
 sky130_fd_sc_hd__nand4b_1 _2004_ (.A_N(_0696_),
    .B(_0097_),
    .C(_0099_),
    .D(_0102_),
    .Y(_1046_));
 sky130_fd_sc_hd__nor2_1 _2005_ (.A(_0695_),
    .B(_1046_),
    .Y(_1047_));
 sky130_fd_sc_hd__nor2_1 _2006_ (.A(_0104_),
    .B(_0695_),
    .Y(_1048_));
 sky130_fd_sc_hd__a21oi_1 _2007_ (.A1(_0289_),
    .A2(_0695_),
    .B1(_1048_),
    .Y(_1049_));
 sky130_fd_sc_hd__nor2_1 _2008_ (.A(net170),
    .B(_0143_),
    .Y(_1050_));
 sky130_fd_sc_hd__nor2_1 _2009_ (.A(_0144_),
    .B(_1050_),
    .Y(_1051_));
 sky130_fd_sc_hd__nor2_1 _2010_ (.A(_1228_),
    .B(_1051_),
    .Y(_1052_));
 sky130_fd_sc_hd__a2111oi_0 _2011_ (.A1(net170),
    .A2(_0143_),
    .B1(_0462_),
    .C1(_1052_),
    .D1(_0460_),
    .Y(_1053_));
 sky130_fd_sc_hd__nor4_1 _2012_ (.A(net171),
    .B(net170),
    .C(net169),
    .D(net210),
    .Y(_1054_));
 sky130_fd_sc_hd__nor2_1 _2013_ (.A(_1228_),
    .B(_0216_),
    .Y(_1055_));
 sky130_fd_sc_hd__o21ai_0 _2014_ (.A1(_1054_),
    .A2(_1055_),
    .B1(_1053_),
    .Y(_1056_));
 sky130_fd_sc_hd__nor2_1 _2015_ (.A(_1228_),
    .B(_0291_),
    .Y(_1057_));
 sky130_fd_sc_hd__a21oi_1 _2016_ (.A1(_0919_),
    .A2(_1228_),
    .B1(_1057_),
    .Y(_1058_));
 sky130_fd_sc_hd__nor2_1 _2017_ (.A(net165),
    .B(_1058_),
    .Y(_1059_));
 sky130_fd_sc_hd__nor2_1 _2018_ (.A(_0912_),
    .B(net210),
    .Y(_1060_));
 sky130_fd_sc_hd__a21oi_1 _2019_ (.A1(net210),
    .A2(_0165_),
    .B1(_1060_),
    .Y(_1061_));
 sky130_fd_sc_hd__nand2b_1 _2020_ (.A_N(_0164_),
    .B(net210),
    .Y(_1062_));
 sky130_fd_sc_hd__xnor2_1 _2021_ (.A(net168),
    .B(_1062_),
    .Y(_1063_));
 sky130_fd_sc_hd__nand2_1 _2022_ (.A(_0276_),
    .B(_0690_),
    .Y(_1064_));
 sky130_fd_sc_hd__or2_0 _2023_ (.A(_0276_),
    .B(_0690_),
    .X(_1065_));
 sky130_fd_sc_hd__a2111oi_0 _2024_ (.A1(_1064_),
    .A2(_1065_),
    .B1(_0284_),
    .C1(_0686_),
    .D1(_0694_),
    .Y(_1066_));
 sky130_fd_sc_hd__o21ai_0 _2025_ (.A1(_0694_),
    .A2(_1065_),
    .B1(_1064_),
    .Y(_1067_));
 sky130_fd_sc_hd__a22o_1 _2026_ (.A1(_0690_),
    .A2(_0694_),
    .B1(_1067_),
    .B2(_0284_),
    .X(_1068_));
 sky130_fd_sc_hd__a21oi_1 _2027_ (.A1(_0686_),
    .A2(_1068_),
    .B1(_1066_),
    .Y(_1069_));
 sky130_fd_sc_hd__nor4b_1 _2028_ (.A(net163),
    .B(_0466_),
    .C(_1063_),
    .D_N(_0321_),
    .Y(_1070_));
 sky130_fd_sc_hd__o211ai_1 _2029_ (.A1(_1059_),
    .A2(_1061_),
    .B1(_1070_),
    .C1(net164),
    .Y(_1071_));
 sky130_fd_sc_hd__o22ai_1 _2030_ (.A1(_1045_),
    .A2(_1047_),
    .B1(_1049_),
    .B2(_0154_),
    .Y(_1072_));
 sky130_fd_sc_hd__or4_1 _2031_ (.A(_1056_),
    .B(_1069_),
    .C(_1071_),
    .D(_1072_),
    .X(_1073_));
 sky130_fd_sc_hd__nor2_1 _2032_ (.A(_1042_),
    .B(_1073_),
    .Y(_1074_));
 sky130_fd_sc_hd__nand2_1 _2033_ (.A(_0270_),
    .B(_1074_),
    .Y(_1075_));
 sky130_fd_sc_hd__o21ai_0 _2034_ (.A1(_1038_),
    .A2(_1075_),
    .B1(_1039_),
    .Y(_1076_));
 sky130_fd_sc_hd__nand2_1 _2035_ (.A(_0402_),
    .B(_1038_),
    .Y(_1077_));
 sky130_fd_sc_hd__o21ai_0 _2036_ (.A1(net209),
    .A2(net206),
    .B1(_1074_),
    .Y(_1078_));
 sky130_fd_sc_hd__o21ai_0 _2037_ (.A1(_0576_),
    .A2(_1078_),
    .B1(_1077_),
    .Y(_1079_));
 sky130_fd_sc_hd__nand2_1 _2038_ (.A(_0401_),
    .B(_1038_),
    .Y(_1080_));
 sky130_fd_sc_hd__nand2_1 _2039_ (.A(_0207_),
    .B(_1074_),
    .Y(_1081_));
 sky130_fd_sc_hd__o21ai_0 _2040_ (.A1(_1038_),
    .A2(_1081_),
    .B1(_1080_),
    .Y(_1082_));
 sky130_fd_sc_hd__nor3_1 _2041_ (.A(_0271_),
    .B(_1042_),
    .C(_1073_),
    .Y(_1083_));
 sky130_fd_sc_hd__clkinv_1 _2042_ (.A(_0340_),
    .Y(_1084_));
 sky130_fd_sc_hd__o21ai_0 _2043_ (.A1(_1038_),
    .A2(_1083_),
    .B1(_0400_),
    .Y(_1085_));
 sky130_fd_sc_hd__nand2b_1 _2044_ (.A_N(_0400_),
    .B(_0271_),
    .Y(_1086_));
 sky130_fd_sc_hd__o21ai_0 _2045_ (.A1(_1078_),
    .A2(_1086_),
    .B1(_1085_),
    .Y(_1087_));
 sky130_fd_sc_hd__nand2_1 _2046_ (.A(_0399_),
    .B(_1038_),
    .Y(_1088_));
 sky130_fd_sc_hd__nand2_1 _2047_ (.A(_0272_),
    .B(_1074_),
    .Y(_1089_));
 sky130_fd_sc_hd__clkinv_1 _2048_ (.A(_0338_),
    .Y(_1090_));
 sky130_fd_sc_hd__o21ai_0 _2049_ (.A1(_1038_),
    .A2(_1089_),
    .B1(_1088_),
    .Y(_1091_));
 sky130_fd_sc_hd__nand2_1 _2050_ (.A(_0398_),
    .B(_1038_),
    .Y(_1092_));
 sky130_fd_sc_hd__nand2_1 _2051_ (.A(_0227_),
    .B(_1074_),
    .Y(_1093_));
 sky130_fd_sc_hd__o21ai_0 _2052_ (.A1(_1038_),
    .A2(_1093_),
    .B1(_1092_),
    .Y(_1094_));
 sky130_fd_sc_hd__nand2_1 _2053_ (.A(_0397_),
    .B(_1038_),
    .Y(_1095_));
 sky130_fd_sc_hd__o21ai_0 _2054_ (.A1(_0397_),
    .A2(_1078_),
    .B1(_1095_),
    .Y(_1096_));
 sky130_fd_sc_hd__clkinv_1 _2055_ (.A(_0336_),
    .Y(_1097_));
 sky130_fd_sc_hd__xnor2_1 _2056_ (.A(\u_phase_error_cdc.ack_sync2 ),
    .B(\u_phase_error_cdc.req_toggle ),
    .Y(_1098_));
 sky130_fd_sc_hd__nand2_1 _2057_ (.A(tdc_error_valid),
    .B(_1098_),
    .Y(_1099_));
 sky130_fd_sc_hd__nand2_1 _2058_ (.A(_0396_),
    .B(_1099_),
    .Y(_1100_));
 sky130_fd_sc_hd__o21ai_0 _2059_ (.A1(_0655_),
    .A2(_1099_),
    .B1(_1100_),
    .Y(_1101_));
 sky130_fd_sc_hd__mux2_1 _2060_ (.A0(_0425_),
    .A1(_0395_),
    .S(_1099_),
    .X(_1102_));
 sky130_fd_sc_hd__clkinv_1 _2061_ (.A(_0335_),
    .Y(_1103_));
 sky130_fd_sc_hd__nand2_1 _2062_ (.A(_0394_),
    .B(_1099_),
    .Y(_1104_));
 sky130_fd_sc_hd__o21ai_0 _2063_ (.A1(_0663_),
    .A2(_1099_),
    .B1(_1104_),
    .Y(_1105_));
 sky130_fd_sc_hd__mux2_1 _2064_ (.A0(_0423_),
    .A1(_0393_),
    .S(_1099_),
    .X(_1106_));
 sky130_fd_sc_hd__nand2_1 _2065_ (.A(_0392_),
    .B(_1099_),
    .Y(_1107_));
 sky130_fd_sc_hd__o21ai_0 _2066_ (.A1(_0670_),
    .A2(_1099_),
    .B1(_1107_),
    .Y(_1108_));
 sky130_fd_sc_hd__clkinv_1 _2067_ (.A(_0334_),
    .Y(_1109_));
 sky130_fd_sc_hd__nand2_1 _2068_ (.A(_0391_),
    .B(_1099_),
    .Y(_1110_));
 sky130_fd_sc_hd__o21ai_0 _2069_ (.A1(_0675_),
    .A2(_1099_),
    .B1(_1110_),
    .Y(_1111_));
 sky130_fd_sc_hd__mux2_1 _2070_ (.A0(_0420_),
    .A1(_0390_),
    .S(_1099_),
    .X(_1112_));
 sky130_fd_sc_hd__mux2i_1 _2071_ (.A0(_0389_),
    .A1(_0375_),
    .S(net209),
    .Y(_1113_));
 sky130_fd_sc_hd__nor2_1 _2072_ (.A(net206),
    .B(_1113_),
    .Y(_1114_));
 sky130_fd_sc_hd__mux2i_1 _2073_ (.A0(_0388_),
    .A1(_0374_),
    .S(net209),
    .Y(_1115_));
 sky130_fd_sc_hd__nor2_1 _2074_ (.A(net206),
    .B(_1115_),
    .Y(_1116_));
 sky130_fd_sc_hd__mux2i_1 _2075_ (.A0(_0387_),
    .A1(_0373_),
    .S(net209),
    .Y(_1117_));
 sky130_fd_sc_hd__nor2_1 _2076_ (.A(net206),
    .B(_1117_),
    .Y(_1118_));
 sky130_fd_sc_hd__mux2i_1 _2077_ (.A0(_0386_),
    .A1(_0372_),
    .S(net209),
    .Y(_1119_));
 sky130_fd_sc_hd__clkinv_1 _2078_ (.A(_0332_),
    .Y(_1120_));
 sky130_fd_sc_hd__nor2_1 _2079_ (.A(net206),
    .B(_1119_),
    .Y(_1121_));
 sky130_fd_sc_hd__mux2i_1 _2080_ (.A0(_0385_),
    .A1(_0371_),
    .S(net209),
    .Y(_1122_));
 sky130_fd_sc_hd__nor2_1 _2081_ (.A(net206),
    .B(_1122_),
    .Y(_1123_));
 sky130_fd_sc_hd__mux2i_1 _2082_ (.A0(_0384_),
    .A1(_0370_),
    .S(net209),
    .Y(_1124_));
 sky130_fd_sc_hd__nor2_1 _2083_ (.A(net206),
    .B(_1124_),
    .Y(_1125_));
 sky130_fd_sc_hd__mux2i_1 _2084_ (.A0(_0383_),
    .A1(_0369_),
    .S(net209),
    .Y(_1126_));
 sky130_fd_sc_hd__nor2_1 _2085_ (.A(net206),
    .B(_1126_),
    .Y(_1127_));
 sky130_fd_sc_hd__mux2_1 _2086_ (.A0(_0396_),
    .A1(net171),
    .S(_0767_),
    .X(_1128_));
 sky130_fd_sc_hd__mux2_1 _2087_ (.A0(_0395_),
    .A1(net170),
    .S(_0767_),
    .X(_1129_));
 sky130_fd_sc_hd__mux2_1 _2088_ (.A0(_0394_),
    .A1(net169),
    .S(_0767_),
    .X(_1130_));
 sky130_fd_sc_hd__mux2_1 _2089_ (.A0(_0393_),
    .A1(net168),
    .S(_0767_),
    .X(_1131_));
 sky130_fd_sc_hd__mux2_1 _2090_ (.A0(_0392_),
    .A1(net167),
    .S(_0767_),
    .X(_1132_));
 sky130_fd_sc_hd__mux2_1 _2091_ (.A0(_0391_),
    .A1(net166),
    .S(_0767_),
    .X(_1133_));
 sky130_fd_sc_hd__mux2_1 _2092_ (.A0(_0390_),
    .A1(net165),
    .S(_0767_),
    .X(_1134_));
 sky130_fd_sc_hd__a31oi_1 _2093_ (.A1(net210),
    .A2(_0164_),
    .A3(_0165_),
    .B1(_1060_),
    .Y(_1135_));
 sky130_fd_sc_hd__nand2_1 _2094_ (.A(_0905_),
    .B(_0165_),
    .Y(_1136_));
 sky130_fd_sc_hd__o22ai_1 _2095_ (.A1(_0905_),
    .A2(_1135_),
    .B1(_1136_),
    .B2(_1062_),
    .Y(_1137_));
 sky130_fd_sc_hd__o21ai_0 _2096_ (.A1(_1056_),
    .A2(_1137_),
    .B1(net161),
    .Y(_1138_));
 sky130_fd_sc_hd__nor2_1 _2097_ (.A(_0382_),
    .B(_0381_),
    .Y(_1139_));
 sky130_fd_sc_hd__nor4_1 _2098_ (.A(_0380_),
    .B(_0379_),
    .C(_0378_),
    .D(_0313_),
    .Y(_1140_));
 sky130_fd_sc_hd__nand2_1 _2099_ (.A(_1139_),
    .B(_1140_),
    .Y(_1141_));
 sky130_fd_sc_hd__nand2_1 _2100_ (.A(net163),
    .B(net164),
    .Y(_1142_));
 sky130_fd_sc_hd__nor3_1 _2101_ (.A(_1138_),
    .B(_1141_),
    .C(_1142_),
    .Y(_1143_));
 sky130_fd_sc_hd__a22o_1 _2102_ (.A1(_0382_),
    .A2(_1038_),
    .B1(_1143_),
    .B2(_0299_),
    .X(_1144_));
 sky130_fd_sc_hd__nor2_1 _2103_ (.A(_1038_),
    .B(_1143_),
    .Y(_1145_));
 sky130_fd_sc_hd__a21oi_1 _2104_ (.A1(_0257_),
    .A2(_1143_),
    .B1(_0381_),
    .Y(_1146_));
 sky130_fd_sc_hd__nor2_1 _2105_ (.A(_1145_),
    .B(_1146_),
    .Y(_1147_));
 sky130_fd_sc_hd__a22o_1 _2106_ (.A1(_0380_),
    .A2(_1038_),
    .B1(_1143_),
    .B2(_0258_),
    .X(_1148_));
 sky130_fd_sc_hd__a22o_1 _2107_ (.A1(_0379_),
    .A2(_1038_),
    .B1(_1143_),
    .B2(_0161_),
    .X(_1149_));
 sky130_fd_sc_hd__a22o_1 _2108_ (.A1(_0378_),
    .A2(_1038_),
    .B1(_1143_),
    .B2(_0162_),
    .X(_1150_));
 sky130_fd_sc_hd__a22o_1 _2109_ (.A1(_0377_),
    .A2(_1038_),
    .B1(_1143_),
    .B2(_0222_),
    .X(_1151_));
 sky130_fd_sc_hd__mux2_1 _2110_ (.A0(_1038_),
    .A1(_1143_),
    .S(_0963_),
    .X(_1152_));
 sky130_fd_sc_hd__mux2i_1 _2111_ (.A0(_0375_),
    .A1(_0433_),
    .S(net209),
    .Y(_1153_));
 sky130_fd_sc_hd__nor2_1 _2112_ (.A(net206),
    .B(_1153_),
    .Y(_1154_));
 sky130_fd_sc_hd__mux2i_1 _2113_ (.A0(_0374_),
    .A1(_0432_),
    .S(net209),
    .Y(_1155_));
 sky130_fd_sc_hd__nor2_1 _2114_ (.A(net206),
    .B(_1155_),
    .Y(_1156_));
 sky130_fd_sc_hd__mux2i_1 _2115_ (.A0(_0373_),
    .A1(_0431_),
    .S(net209),
    .Y(_1157_));
 sky130_fd_sc_hd__nor2_1 _2116_ (.A(net206),
    .B(_1157_),
    .Y(_1158_));
 sky130_fd_sc_hd__mux2i_1 _2117_ (.A0(_0372_),
    .A1(_0430_),
    .S(net209),
    .Y(_1159_));
 sky130_fd_sc_hd__nor2_1 _2118_ (.A(net206),
    .B(_1159_),
    .Y(_1160_));
 sky130_fd_sc_hd__mux2i_1 _2119_ (.A0(_0371_),
    .A1(_0429_),
    .S(net209),
    .Y(_1161_));
 sky130_fd_sc_hd__nor2_1 _2120_ (.A(net206),
    .B(_1161_),
    .Y(_1162_));
 sky130_fd_sc_hd__mux2i_1 _2121_ (.A0(_0370_),
    .A1(_0428_),
    .S(net209),
    .Y(_1163_));
 sky130_fd_sc_hd__nor2_1 _2122_ (.A(net206),
    .B(_1163_),
    .Y(_1164_));
 sky130_fd_sc_hd__mux2i_1 _2123_ (.A0(_0369_),
    .A1(_0427_),
    .S(net209),
    .Y(_1165_));
 sky130_fd_sc_hd__nor2_1 _2124_ (.A(net206),
    .B(_1165_),
    .Y(_1166_));
 sky130_fd_sc_hd__a31oi_1 _2125_ (.A1(_0368_),
    .A2(_0311_),
    .A3(_0703_),
    .B1(_0711_),
    .Y(_1167_));
 sky130_fd_sc_hd__mux2i_1 _2126_ (.A0(_0368_),
    .A1(_0147_),
    .S(_1167_),
    .Y(_1168_));
 sky130_fd_sc_hd__nor2_1 _2127_ (.A(_0776_),
    .B(_1168_),
    .Y(_1169_));
 sky130_fd_sc_hd__and4_1 _2128_ (.A(_0367_),
    .B(_0152_),
    .C(net207),
    .D(_0763_),
    .X(_1170_));
 sky130_fd_sc_hd__a21oi_1 _2129_ (.A1(_0152_),
    .A2(net207),
    .B1(_0367_),
    .Y(_1171_));
 sky130_fd_sc_hd__nor3_1 _2130_ (.A(_0776_),
    .B(_1170_),
    .C(_1171_),
    .Y(_1172_));
 sky130_fd_sc_hd__mux2i_1 _2131_ (.A0(_0366_),
    .A1(_0153_),
    .S(_1167_),
    .Y(_1173_));
 sky130_fd_sc_hd__nor2_1 _2132_ (.A(_0776_),
    .B(_1173_),
    .Y(_1174_));
 sky130_fd_sc_hd__and4_1 _2133_ (.A(_0365_),
    .B(_0286_),
    .C(net207),
    .D(_0763_),
    .X(_1175_));
 sky130_fd_sc_hd__a21oi_1 _2134_ (.A1(_0286_),
    .A2(net207),
    .B1(_0365_),
    .Y(_1176_));
 sky130_fd_sc_hd__nor3_1 _2135_ (.A(_0776_),
    .B(_1175_),
    .C(_1176_),
    .Y(_1177_));
 sky130_fd_sc_hd__mux2i_1 _2136_ (.A0(_0364_),
    .A1(_0287_),
    .S(_1167_),
    .Y(_1178_));
 sky130_fd_sc_hd__nor2_1 _2137_ (.A(_0776_),
    .B(_1178_),
    .Y(_1179_));
 sky130_fd_sc_hd__mux2i_1 _2138_ (.A0(_0363_),
    .A1(_0173_),
    .S(_1167_),
    .Y(_1180_));
 sky130_fd_sc_hd__nor2_1 _2139_ (.A(_0776_),
    .B(_1180_),
    .Y(_1181_));
 sky130_fd_sc_hd__xnor2_1 _2140_ (.A(_0362_),
    .B(_1167_),
    .Y(_1182_));
 sky130_fd_sc_hd__nor2_1 _2141_ (.A(_0776_),
    .B(_1182_),
    .Y(_1183_));
 sky130_fd_sc_hd__nor2_1 _2142_ (.A(_0707_),
    .B(_0760_),
    .Y(_1184_));
 sky130_fd_sc_hd__mux2i_1 _2143_ (.A0(_0361_),
    .A1(_0182_),
    .S(_1184_),
    .Y(_1185_));
 sky130_fd_sc_hd__clkinv_1 _2144_ (.A(_0319_),
    .Y(_1186_));
 sky130_fd_sc_hd__nor2_1 _2145_ (.A(_0776_),
    .B(_1185_),
    .Y(_1187_));
 sky130_fd_sc_hd__nor3b_1 _2146_ (.A(_0760_),
    .B(_0708_),
    .C_N(_0360_),
    .Y(_1188_));
 sky130_fd_sc_hd__a21oi_1 _2147_ (.A1(_0141_),
    .A2(net208),
    .B1(_0360_),
    .Y(_1189_));
 sky130_fd_sc_hd__nor3_1 _2148_ (.A(_0776_),
    .B(_1188_),
    .C(_1189_),
    .Y(_1190_));
 sky130_fd_sc_hd__mux2i_1 _2149_ (.A0(_0359_),
    .A1(_0142_),
    .S(_1184_),
    .Y(_1191_));
 sky130_fd_sc_hd__nor2_1 _2150_ (.A(_0776_),
    .B(_1191_),
    .Y(_1192_));
 sky130_fd_sc_hd__nor3b_1 _2151_ (.A(_0760_),
    .B(_0722_),
    .C_N(_0358_),
    .Y(_1193_));
 sky130_fd_sc_hd__a21oi_1 _2152_ (.A1(_0184_),
    .A2(net208),
    .B1(_0358_),
    .Y(_1194_));
 sky130_fd_sc_hd__nor3_1 _2153_ (.A(_0776_),
    .B(_1193_),
    .C(_1194_),
    .Y(_1195_));
 sky130_fd_sc_hd__mux2i_1 _2154_ (.A0(_0357_),
    .A1(_0185_),
    .S(_1184_),
    .Y(_1196_));
 sky130_fd_sc_hd__nor2_1 _2155_ (.A(_0776_),
    .B(_1196_),
    .Y(_1197_));
 sky130_fd_sc_hd__mux2i_1 _2156_ (.A0(_0356_),
    .A1(_0288_),
    .S(_1184_),
    .Y(_1198_));
 sky130_fd_sc_hd__nor2_1 _2157_ (.A(_0776_),
    .B(_1198_),
    .Y(_1199_));
 sky130_fd_sc_hd__xnor2_1 _2158_ (.A(_0355_),
    .B(_1184_),
    .Y(_1200_));
 sky130_fd_sc_hd__nor2_1 _2159_ (.A(_0776_),
    .B(_1200_),
    .Y(_1201_));
 sky130_fd_sc_hd__xor2_1 _2160_ (.A(_0137_),
    .B(_0109_),
    .X(_1202_));
 sky130_fd_sc_hd__xnor2_1 _2161_ (.A(_0239_),
    .B(_0112_),
    .Y(_1203_));
 sky130_fd_sc_hd__nand3_1 _2162_ (.A(_0282_),
    .B(_0115_),
    .C(_0113_),
    .Y(_1204_));
 sky130_fd_sc_hd__nor3b_1 _2163_ (.A(_1203_),
    .B(_1204_),
    .C_N(_0110_),
    .Y(_1205_));
 sky130_fd_sc_hd__clkinv_1 _2164_ (.A(_0317_),
    .Y(_1206_));
 sky130_fd_sc_hd__xor2_1 _2165_ (.A(_0107_),
    .B(_0245_),
    .X(_1207_));
 sky130_fd_sc_hd__a311oi_1 _2166_ (.A1(_0108_),
    .A2(_1202_),
    .A3(_1205_),
    .B1(_1207_),
    .C1(_0106_),
    .Y(_1208_));
 sky130_fd_sc_hd__nor2_1 _2167_ (.A(_0581_),
    .B(_1208_),
    .Y(_1209_));
 sky130_fd_sc_hd__nor2b_1 _2168_ (.A(_1209_),
    .B_N(_0779_),
    .Y(_1210_));
 sky130_fd_sc_hd__nand2_1 _2169_ (.A(_0106_),
    .B(_1207_),
    .Y(_1211_));
 sky130_fd_sc_hd__nand2_1 _2170_ (.A(_0581_),
    .B(_1211_),
    .Y(_1212_));
 sky130_fd_sc_hd__nand2_1 _2171_ (.A(_0108_),
    .B(_1212_),
    .Y(_1213_));
 sky130_fd_sc_hd__a22o_1 _2172_ (.A1(_0354_),
    .A2(_0775_),
    .B1(_1210_),
    .B2(_1213_),
    .X(_1214_));
 sky130_fd_sc_hd__o211ai_1 _2173_ (.A1(_1202_),
    .A2(_1209_),
    .B1(_1212_),
    .C1(net201),
    .Y(_1215_));
 sky130_fd_sc_hd__o21ai_0 _2174_ (.A1(_0353_),
    .A2(net201),
    .B1(_1215_),
    .Y(_1216_));
 sky130_fd_sc_hd__nor2_1 _2175_ (.A(_0798_),
    .B(_1216_),
    .Y(_1217_));
 sky130_fd_sc_hd__nand2_1 _2176_ (.A(_0110_),
    .B(_1212_),
    .Y(_1218_));
 sky130_fd_sc_hd__a22o_1 _2177_ (.A1(_0352_),
    .A2(_0775_),
    .B1(_1210_),
    .B2(_1218_),
    .X(_1219_));
 sky130_fd_sc_hd__o21ai_0 _2178_ (.A1(_0581_),
    .A2(_1208_),
    .B1(_1203_),
    .Y(_1220_));
 sky130_fd_sc_hd__o21ai_0 _2179_ (.A1(_0351_),
    .A2(net201),
    .B1(net155),
    .Y(_1221_));
 sky130_fd_sc_hd__a31oi_1 _2180_ (.A1(net201),
    .A2(_1212_),
    .A3(_1220_),
    .B1(_1221_),
    .Y(_1222_));
 sky130_fd_sc_hd__clkinv_1 _2181_ (.A(\u_phase_error_cdc.req_toggle ),
    .Y(_1223_));
 sky130_fd_sc_hd__nand2_1 _2182_ (.A(_0113_),
    .B(_1212_),
    .Y(_1224_));
 sky130_fd_sc_hd__a22o_1 _2183_ (.A1(_0350_),
    .A2(_0775_),
    .B1(_1210_),
    .B2(_1224_),
    .X(_1225_));
 sky130_fd_sc_hd__nand2_1 _2184_ (.A(_0115_),
    .B(_1212_),
    .Y(_1226_));
 sky130_fd_sc_hd__a22o_1 _2185_ (.A1(_0349_),
    .A2(_0775_),
    .B1(_1210_),
    .B2(_1226_),
    .X(_1227_));
 sky130_fd_sc_hd__clkinv_1 _2186_ (.A(net210),
    .Y(_1228_));
 sky130_fd_sc_hd__nand2_1 _2187_ (.A(_0282_),
    .B(_1212_),
    .Y(_1229_));
 sky130_fd_sc_hd__nor2_1 _2188_ (.A(_1209_),
    .B(_1229_),
    .Y(_1230_));
 sky130_fd_sc_hd__o21ai_0 _2189_ (.A1(_0348_),
    .A2(net201),
    .B1(net155),
    .Y(_1231_));
 sky130_fd_sc_hd__a21oi_1 _2190_ (.A1(net201),
    .A2(_1230_),
    .B1(_1231_),
    .Y(_1232_));
 sky130_fd_sc_hd__nor4_1 _2191_ (.A(net170),
    .B(net169),
    .C(net166),
    .D(net210),
    .Y(_1233_));
 sky130_fd_sc_hd__o221a_1 _2192_ (.A1(_0634_),
    .A2(_1055_),
    .B1(_1057_),
    .B2(_1233_),
    .C1(_0926_),
    .X(_1234_));
 sky130_fd_sc_hd__a31oi_1 _2193_ (.A1(_1053_),
    .A2(_1137_),
    .A3(_1234_),
    .B1(_1138_),
    .Y(_1235_));
 sky130_fd_sc_hd__nand2_1 _2194_ (.A(net155),
    .B(net159),
    .Y(_1236_));
 sky130_fd_sc_hd__nor4_1 _2195_ (.A(net163),
    .B(_0619_),
    .C(_1235_),
    .D(_1236_),
    .Y(_1237_));
 sky130_fd_sc_hd__nor2_1 _2196_ (.A(net158),
    .B(net163),
    .Y(_1238_));
 sky130_fd_sc_hd__a21oi_1 _2197_ (.A1(net158),
    .A2(freq_locked_internal),
    .B1(_1238_),
    .Y(_1239_));
 sky130_fd_sc_hd__nor2_1 _2198_ (.A(net155),
    .B(_0619_),
    .Y(_1240_));
 sky130_fd_sc_hd__a31oi_1 _2199_ (.A1(net155),
    .A2(net160),
    .A3(_1239_),
    .B1(_1240_),
    .Y(_1241_));
 sky130_fd_sc_hd__nor2_1 _2200_ (.A(net159),
    .B(_1241_),
    .Y(_1242_));
 sky130_fd_sc_hd__nor4_1 _2201_ (.A(net158),
    .B(freq_locked_internal),
    .C(net160),
    .D(_1236_),
    .Y(_1243_));
 sky130_fd_sc_hd__nor3_1 _2202_ (.A(_1237_),
    .B(_1242_),
    .C(_1243_),
    .Y(_1244_));
 sky130_fd_sc_hd__a21oi_1 _2203_ (.A1(_0797_),
    .A2(_1244_),
    .B1(_0796_),
    .Y(_1245_));
 sky130_fd_sc_hd__clkinv_1 _2204_ (.A(net160),
    .Y(_1246_));
 sky130_fd_sc_hd__o21ai_0 _2205_ (.A1(_1237_),
    .A2(_1243_),
    .B1(net159),
    .Y(_1247_));
 sky130_fd_sc_hd__o21ai_0 _2206_ (.A1(_0798_),
    .A2(_1245_),
    .B1(_1247_),
    .Y(_1248_));
 sky130_fd_sc_hd__nor2_1 _2207_ (.A(net158),
    .B(_1244_),
    .Y(_1249_));
 sky130_fd_sc_hd__and3_1 _2208_ (.A(net155),
    .B(net158),
    .C(net163),
    .X(_1250_));
 sky130_fd_sc_hd__o21ai_0 _2209_ (.A1(net160),
    .A2(_1250_),
    .B1(net159),
    .Y(_1251_));
 sky130_fd_sc_hd__o21ai_0 _2210_ (.A1(net159),
    .A2(_0619_),
    .B1(_1251_),
    .Y(_1252_));
 sky130_fd_sc_hd__a21oi_1 _2211_ (.A1(_1244_),
    .A2(_1252_),
    .B1(_1249_),
    .Y(_1253_));
 sky130_fd_sc_hd__xnor2_1 _2212_ (.A(\u_frequency_error_cdc.req_toggle ),
    .B(\u_frequency_error_cdc.ack_sync2 ),
    .Y(_1254_));
 sky130_fd_sc_hd__nand2_1 _2213_ (.A(raw_freq_valid),
    .B(_1254_),
    .Y(_1255_));
 sky130_fd_sc_hd__mux2_1 _2214_ (.A0(_0354_),
    .A1(_0347_),
    .S(_1255_),
    .X(_1256_));
 sky130_fd_sc_hd__mux2_1 _2215_ (.A0(_0353_),
    .A1(_0346_),
    .S(_1255_),
    .X(_1257_));
 sky130_fd_sc_hd__mux2_1 _2216_ (.A0(_0352_),
    .A1(_0345_),
    .S(_1255_),
    .X(_1258_));
 sky130_fd_sc_hd__mux2_1 _2217_ (.A0(_0351_),
    .A1(_0344_),
    .S(_1255_),
    .X(_1259_));
 sky130_fd_sc_hd__mux2_1 _2218_ (.A0(_0350_),
    .A1(_0343_),
    .S(_1255_),
    .X(_1260_));
 sky130_fd_sc_hd__mux2_1 _2219_ (.A0(_0349_),
    .A1(_0342_),
    .S(_1255_),
    .X(_1261_));
 sky130_fd_sc_hd__mux2_1 _2220_ (.A0(_0348_),
    .A1(_0341_),
    .S(_1255_),
    .X(_1262_));
 sky130_fd_sc_hd__clkinv_1 _2221_ (.A(_0306_),
    .Y(_1263_));
 sky130_fd_sc_hd__mux2_1 _2222_ (.A0(_0347_),
    .A1(_0340_),
    .S(_0773_),
    .X(_1264_));
 sky130_fd_sc_hd__mux2_1 _2223_ (.A0(_0346_),
    .A1(_0339_),
    .S(_0773_),
    .X(_1265_));
 sky130_fd_sc_hd__mux2_1 _2224_ (.A0(_0345_),
    .A1(_0338_),
    .S(_0773_),
    .X(_1266_));
 sky130_fd_sc_hd__mux2_1 _2225_ (.A0(_0344_),
    .A1(_0337_),
    .S(_0773_),
    .X(_1267_));
 sky130_fd_sc_hd__mux2_1 _2226_ (.A0(_0343_),
    .A1(_0336_),
    .S(_0773_),
    .X(_1268_));
 sky130_fd_sc_hd__mux2_1 _2227_ (.A0(_0342_),
    .A1(_0335_),
    .S(_0773_),
    .X(_1269_));
 sky130_fd_sc_hd__mux2_1 _2228_ (.A0(_0341_),
    .A1(_0334_),
    .S(_0773_),
    .X(_1270_));
 sky130_fd_sc_hd__o21ai_0 _2229_ (.A1(_0242_),
    .A2(_0809_),
    .B1(_0801_),
    .Y(_1271_));
 sky130_fd_sc_hd__nand2_1 _2230_ (.A(_0333_),
    .B(_1271_),
    .Y(_1272_));
 sky130_fd_sc_hd__clkinv_1 _2231_ (.A(_0305_),
    .Y(_1273_));
 sky130_fd_sc_hd__nand3_1 _2232_ (.A(_0242_),
    .B(_0801_),
    .C(_0808_),
    .Y(_1274_));
 sky130_fd_sc_hd__o21ai_0 _2233_ (.A1(_0189_),
    .A2(_1274_),
    .B1(_1272_),
    .Y(_1275_));
 sky130_fd_sc_hd__nand2_1 _2234_ (.A(_0332_),
    .B(_1271_),
    .Y(_1276_));
 sky130_fd_sc_hd__o21ai_0 _2235_ (.A1(_0332_),
    .A2(_1274_),
    .B1(_1276_),
    .Y(_1277_));
 sky130_fd_sc_hd__nor2_1 _2236_ (.A(_0331_),
    .B(_0810_),
    .Y(_1278_));
 sky130_fd_sc_hd__o21ai_0 _2237_ (.A1(_0463_),
    .A2(_0210_),
    .B1(_0813_),
    .Y(_1279_));
 sky130_fd_sc_hd__nand2_1 _2238_ (.A(_0419_),
    .B(net205),
    .Y(_1280_));
 sky130_fd_sc_hd__a31oi_1 _2239_ (.A1(_0810_),
    .A2(_1279_),
    .A3(_1280_),
    .B1(_1278_),
    .Y(_1281_));
 sky130_fd_sc_hd__nor2_1 _2240_ (.A(_0330_),
    .B(_0810_),
    .Y(_1282_));
 sky130_fd_sc_hd__o21ai_0 _2241_ (.A1(_0606_),
    .A2(_0210_),
    .B1(_0813_),
    .Y(_1283_));
 sky130_fd_sc_hd__nand2_1 _2242_ (.A(_0418_),
    .B(net205),
    .Y(_1284_));
 sky130_fd_sc_hd__a31oi_1 _2243_ (.A1(_0810_),
    .A2(_1283_),
    .A3(_1284_),
    .B1(_1282_),
    .Y(_1285_));
 sky130_fd_sc_hd__nor2_1 _2244_ (.A(_0329_),
    .B(_0810_),
    .Y(_1286_));
 sky130_fd_sc_hd__o21a_1 _2245_ (.A1(_0601_),
    .A2(_0610_),
    .B1(_0210_),
    .X(_1287_));
 sky130_fd_sc_hd__o21ai_0 _2246_ (.A1(_0464_),
    .A2(_1287_),
    .B1(_0813_),
    .Y(_1288_));
 sky130_fd_sc_hd__nand2_1 _2247_ (.A(_0417_),
    .B(net205),
    .Y(_1289_));
 sky130_fd_sc_hd__a31oi_1 _2248_ (.A1(_0810_),
    .A2(_1288_),
    .A3(_1289_),
    .B1(_1286_),
    .Y(_1290_));
 sky130_fd_sc_hd__nor2_1 _2249_ (.A(_0328_),
    .B(_0810_),
    .Y(_1291_));
 sky130_fd_sc_hd__o21ai_0 _2250_ (.A1(_0459_),
    .A2(_1287_),
    .B1(_0813_),
    .Y(_1292_));
 sky130_fd_sc_hd__nand2_1 _2251_ (.A(_0416_),
    .B(net205),
    .Y(_1293_));
 sky130_fd_sc_hd__a31oi_1 _2252_ (.A1(_0810_),
    .A2(_1292_),
    .A3(_1293_),
    .B1(_1291_),
    .Y(_1294_));
 sky130_fd_sc_hd__nor2_1 _2253_ (.A(_0327_),
    .B(_0810_),
    .Y(_1295_));
 sky130_fd_sc_hd__o21ai_0 _2254_ (.A1(_0496_),
    .A2(_1287_),
    .B1(_0813_),
    .Y(_1296_));
 sky130_fd_sc_hd__nand2_1 _2255_ (.A(_0415_),
    .B(net205),
    .Y(_1297_));
 sky130_fd_sc_hd__a31oi_1 _2256_ (.A1(_0810_),
    .A2(_1296_),
    .A3(_1297_),
    .B1(_1295_),
    .Y(_1298_));
 sky130_fd_sc_hd__o21a_1 _2257_ (.A1(net205),
    .A2(_1287_),
    .B1(_0810_),
    .X(_1299_));
 sky130_fd_sc_hd__nor2_1 _2258_ (.A(_0326_),
    .B(_1299_),
    .Y(_1300_));
 sky130_fd_sc_hd__nand2_1 _2259_ (.A(_0601_),
    .B(_0800_),
    .Y(_1301_));
 sky130_fd_sc_hd__o21ai_0 _2260_ (.A1(_0414_),
    .A2(_0800_),
    .B1(_1301_),
    .Y(_1302_));
 sky130_fd_sc_hd__a21oi_1 _2261_ (.A1(_0810_),
    .A2(_1302_),
    .B1(_1300_),
    .Y(_1303_));
 sky130_fd_sc_hd__nor2_1 _2262_ (.A(_0325_),
    .B(_1299_),
    .Y(_1304_));
 sky130_fd_sc_hd__o21ai_0 _2263_ (.A1(_0413_),
    .A2(_0800_),
    .B1(_1301_),
    .Y(_1305_));
 sky130_fd_sc_hd__a21oi_1 _2264_ (.A1(_0810_),
    .A2(_1305_),
    .B1(_1304_),
    .Y(_1306_));
 sky130_fd_sc_hd__nor2_1 _2265_ (.A(_0324_),
    .B(_1299_),
    .Y(_1307_));
 sky130_fd_sc_hd__o21ai_0 _2266_ (.A1(_0412_),
    .A2(_0800_),
    .B1(_1301_),
    .Y(_1308_));
 sky130_fd_sc_hd__a21oi_1 _2267_ (.A1(_0810_),
    .A2(_1308_),
    .B1(_1307_),
    .Y(_1309_));
 sky130_fd_sc_hd__nor2_1 _2268_ (.A(_0323_),
    .B(_1299_),
    .Y(_1310_));
 sky130_fd_sc_hd__o21ai_0 _2269_ (.A1(_0411_),
    .A2(_0800_),
    .B1(_1301_),
    .Y(_1311_));
 sky130_fd_sc_hd__a21oi_1 _2270_ (.A1(_0810_),
    .A2(_1311_),
    .B1(_1310_),
    .Y(_1312_));
 sky130_fd_sc_hd__a221o_1 _2271_ (.A1(_0683_),
    .A2(net203),
    .B1(net202),
    .B2(_0322_),
    .C1(_0868_),
    .X(_1313_));
 sky130_fd_sc_hd__xor2_1 _2272_ (.A(net162),
    .B(_0789_),
    .X(_1314_));
 sky130_fd_sc_hd__nor2_1 _2273_ (.A(_0170_),
    .B(_1314_),
    .Y(_1315_));
 sky130_fd_sc_hd__a21oi_1 _2274_ (.A1(net209),
    .A2(_0179_),
    .B1(_0321_),
    .Y(_1316_));
 sky130_fd_sc_hd__nor2_1 _2275_ (.A(net206),
    .B(_1316_),
    .Y(_1317_));
 sky130_fd_sc_hd__nand2b_1 _2276_ (.A_N(_1138_),
    .B(_1141_),
    .Y(_1318_));
 sky130_fd_sc_hd__nand3_1 _2277_ (.A(net163),
    .B(net164),
    .C(_1318_),
    .Y(_1319_));
 sky130_fd_sc_hd__nand2_1 _2278_ (.A(net161),
    .B(_1042_),
    .Y(_1320_));
 sky130_fd_sc_hd__o21ai_0 _2279_ (.A1(_1073_),
    .A2(_1320_),
    .B1(_1319_),
    .Y(_1321_));
 sky130_fd_sc_hd__mux2i_1 _2280_ (.A0(_0320_),
    .A1(net210),
    .S(net161),
    .Y(_1322_));
 sky130_fd_sc_hd__nor2_1 _2281_ (.A(net206),
    .B(_1322_),
    .Y(_1323_));
 sky130_fd_sc_hd__a22o_1 _2282_ (.A1(_0536_),
    .A2(_0124_),
    .B1(_0953_),
    .B2(_0538_),
    .X(_1324_));
 sky130_fd_sc_hd__o21ai_0 _2283_ (.A1(_0134_),
    .A2(_0124_),
    .B1(_0953_),
    .Y(_1325_));
 sky130_fd_sc_hd__a221oi_1 _2284_ (.A1(_0134_),
    .A2(_1324_),
    .B1(_1325_),
    .B2(_0536_),
    .C1(_0952_),
    .Y(_1326_));
 sky130_fd_sc_hd__a21oi_1 _2285_ (.A1(_1186_),
    .A2(_0952_),
    .B1(_1326_),
    .Y(_1327_));
 sky130_fd_sc_hd__or3_1 _2286_ (.A(_0333_),
    .B(_0306_),
    .C(_0188_),
    .X(_1328_));
 sky130_fd_sc_hd__a21oi_1 _2287_ (.A1(_0801_),
    .A2(_1328_),
    .B1(freq_locked_internal),
    .Y(_1329_));
 sky130_fd_sc_hd__nor2_1 _2288_ (.A(_0810_),
    .B(_1329_),
    .Y(_1330_));
 sky130_fd_sc_hd__a32o_1 _2289_ (.A1(_0039_),
    .A2(net203),
    .A3(_0994_),
    .B1(net202),
    .B2(net174),
    .X(_1331_));
 sky130_fd_sc_hd__nand2_1 _2290_ (.A(_0318_),
    .B(net202),
    .Y(_1332_));
 sky130_fd_sc_hd__a22oi_1 _2291_ (.A1(_0537_),
    .A2(net204),
    .B1(_0996_),
    .B2(_0028_),
    .Y(_1333_));
 sky130_fd_sc_hd__nand3_1 _2292_ (.A(_0995_),
    .B(_1332_),
    .C(_1333_),
    .Y(_1334_));
 sky130_fd_sc_hd__nand2_1 _2293_ (.A(net173),
    .B(net202),
    .Y(_1335_));
 sky130_fd_sc_hd__nand2_1 _2294_ (.A(_0995_),
    .B(_1335_),
    .Y(_1336_));
 sky130_fd_sc_hd__mux2i_1 _2295_ (.A0(_0317_),
    .A1(_0314_),
    .S(net161),
    .Y(_1337_));
 sky130_fd_sc_hd__nor2_1 _2296_ (.A(net206),
    .B(_1337_),
    .Y(_1338_));
 sky130_fd_sc_hd__nand2_1 _2297_ (.A(_0316_),
    .B(_1038_),
    .Y(_1339_));
 sky130_fd_sc_hd__nand2_1 _2298_ (.A(_0269_),
    .B(_1074_),
    .Y(_1340_));
 sky130_fd_sc_hd__o21ai_0 _2299_ (.A1(_1038_),
    .A2(_1340_),
    .B1(_1339_),
    .Y(_1341_));
 sky130_fd_sc_hd__nand2_1 _2300_ (.A(_0315_),
    .B(_1099_),
    .Y(_1342_));
 sky130_fd_sc_hd__o21ai_0 _2301_ (.A1(_1186_),
    .A2(_1099_),
    .B1(_1342_),
    .Y(_1343_));
 sky130_fd_sc_hd__mux2i_1 _2302_ (.A0(_0314_),
    .A1(_0312_),
    .S(net161),
    .Y(_1344_));
 sky130_fd_sc_hd__nor2_1 _2303_ (.A(net206),
    .B(_1344_),
    .Y(_1345_));
 sky130_fd_sc_hd__mux2i_1 _2304_ (.A0(_1223_),
    .A1(\u_phase_error_cdc.ack_sync2 ),
    .S(tdc_error_valid),
    .Y(_1346_));
 sky130_fd_sc_hd__mux2_1 _2305_ (.A0(_0315_),
    .A1(net210),
    .S(_0767_),
    .X(_1347_));
 sky130_fd_sc_hd__a22o_1 _2306_ (.A1(_0313_),
    .A2(_1038_),
    .B1(_1143_),
    .B2(_0298_),
    .X(_1348_));
 sky130_fd_sc_hd__mux2i_1 _2307_ (.A0(_0312_),
    .A1(_0320_),
    .S(net161),
    .Y(_1349_));
 sky130_fd_sc_hd__nor2_1 _2308_ (.A(net206),
    .B(_1349_),
    .Y(_1350_));
 sky130_fd_sc_hd__nand2_1 _2309_ (.A(_0311_),
    .B(_0763_),
    .Y(_1351_));
 sky130_fd_sc_hd__mux2i_1 _2310_ (.A0(_1351_),
    .A1(_0311_),
    .S(_0758_),
    .Y(_1352_));
 sky130_fd_sc_hd__nor2_1 _2311_ (.A(_0776_),
    .B(_1352_),
    .Y(_1353_));
 sky130_fd_sc_hd__nor3b_1 _2312_ (.A(_0760_),
    .B(_0755_),
    .C_N(_0310_),
    .Y(_1354_));
 sky130_fd_sc_hd__a21oi_1 _2313_ (.A1(_0181_),
    .A2(net208),
    .B1(_0310_),
    .Y(_1355_));
 sky130_fd_sc_hd__nor3_1 _2314_ (.A(_0776_),
    .B(_1354_),
    .C(_1355_),
    .Y(_1356_));
 sky130_fd_sc_hd__mux2i_1 _2315_ (.A0(_0309_),
    .A1(_0105_),
    .S(net201),
    .Y(_1357_));
 sky130_fd_sc_hd__nor2_1 _2316_ (.A(_0798_),
    .B(_1357_),
    .Y(_1358_));
 sky130_fd_sc_hd__nand3_1 _2317_ (.A(net155),
    .B(net164),
    .C(_1244_),
    .Y(_1359_));
 sky130_fd_sc_hd__o21ai_0 _2318_ (.A1(_1246_),
    .A2(_1244_),
    .B1(_1359_),
    .Y(_1360_));
 sky130_fd_sc_hd__mux2_1 _2319_ (.A0(_0309_),
    .A1(_0308_),
    .S(_1255_),
    .X(_1361_));
 sky130_fd_sc_hd__nor2_1 _2320_ (.A(raw_freq_valid),
    .B(\u_frequency_error_cdc.req_toggle ),
    .Y(_1362_));
 sky130_fd_sc_hd__a21oi_1 _2321_ (.A1(raw_freq_valid),
    .A2(\u_frequency_error_cdc.ack_sync2 ),
    .B1(_1362_),
    .Y(_1363_));
 sky130_fd_sc_hd__mux2_1 _2322_ (.A0(_0308_),
    .A1(_0307_),
    .S(_0773_),
    .X(_1364_));
 sky130_fd_sc_hd__nand2_1 _2323_ (.A(_0306_),
    .B(_1271_),
    .Y(_1365_));
 sky130_fd_sc_hd__o21ai_0 _2324_ (.A1(_0583_),
    .A2(_1274_),
    .B1(_1365_),
    .Y(_1366_));
 sky130_fd_sc_hd__nor2_1 _2325_ (.A(_0132_),
    .B(_0827_),
    .Y(_1367_));
 sky130_fd_sc_hd__nand2_1 _2326_ (.A(_0411_),
    .B(net205),
    .Y(_1368_));
 sky130_fd_sc_hd__nand2_1 _2327_ (.A(_0323_),
    .B(_0800_),
    .Y(_1369_));
 sky130_fd_sc_hd__nand2_1 _2328_ (.A(_1368_),
    .B(_1369_),
    .Y(net175));
 sky130_fd_sc_hd__nand2_1 _2329_ (.A(_0412_),
    .B(net205),
    .Y(_1370_));
 sky130_fd_sc_hd__nand2_1 _2330_ (.A(_0324_),
    .B(_0800_),
    .Y(_1371_));
 sky130_fd_sc_hd__nand2_1 _2331_ (.A(_1370_),
    .B(_1371_),
    .Y(net176));
 sky130_fd_sc_hd__nand2_1 _2332_ (.A(_0413_),
    .B(net205),
    .Y(_1372_));
 sky130_fd_sc_hd__nand2_1 _2333_ (.A(_0325_),
    .B(_0800_),
    .Y(_1373_));
 sky130_fd_sc_hd__nand2_1 _2334_ (.A(_1372_),
    .B(_1373_),
    .Y(net177));
 sky130_fd_sc_hd__nand2_1 _2335_ (.A(_0414_),
    .B(net205),
    .Y(_1374_));
 sky130_fd_sc_hd__nand2_1 _2336_ (.A(_0326_),
    .B(_0800_),
    .Y(_1375_));
 sky130_fd_sc_hd__nand2_1 _2337_ (.A(_1374_),
    .B(_1375_),
    .Y(net178));
 sky130_fd_sc_hd__nand2_1 _2338_ (.A(_0327_),
    .B(_0800_),
    .Y(_1376_));
 sky130_fd_sc_hd__nand2_1 _2339_ (.A(_1297_),
    .B(_1376_),
    .Y(net179));
 sky130_fd_sc_hd__nand2_1 _2340_ (.A(_0328_),
    .B(_0800_),
    .Y(_1377_));
 sky130_fd_sc_hd__nand2_1 _2341_ (.A(_1293_),
    .B(_1377_),
    .Y(net180));
 sky130_fd_sc_hd__nand2_1 _2342_ (.A(_0329_),
    .B(_0800_),
    .Y(_1378_));
 sky130_fd_sc_hd__nand2_1 _2343_ (.A(_1289_),
    .B(_1378_),
    .Y(net181));
 sky130_fd_sc_hd__nand2_1 _2344_ (.A(_0330_),
    .B(_0800_),
    .Y(_1379_));
 sky130_fd_sc_hd__nand2_1 _2345_ (.A(_1284_),
    .B(_1379_),
    .Y(net182));
 sky130_fd_sc_hd__nand2_1 _2346_ (.A(_0331_),
    .B(_0800_),
    .Y(_1380_));
 sky130_fd_sc_hd__nand2_1 _2347_ (.A(_1280_),
    .B(_1380_),
    .Y(net183));
 sky130_fd_sc_hd__nand2_1 _2348_ (.A(_0537_),
    .B(_0800_),
    .Y(_1381_));
 sky130_fd_sc_hd__nand2_1 _2349_ (.A(_0815_),
    .B(_1381_),
    .Y(net184));
 sky130_fd_sc_hd__clkinv_1 _2350_ (.A(net147),
    .Y(_1382_));
 sky130_fd_sc_hd__clkinv_1 _2351_ (.A(_0495_),
    .Y(_1383_));
 sky130_fd_sc_hd__clkinv_1 _2352_ (.A(_0170_),
    .Y(_1384_));
 sky130_fd_sc_hd__clkinv_1 _2353_ (.A(net148),
    .Y(_1385_));
 sky130_fd_sc_hd__clkinv_1 _2354_ (.A(_0488_),
    .Y(_1386_));
 sky130_fd_sc_hd__clkinv_1 _2355_ (.A(_0212_),
    .Y(_1387_));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_ctrl_clk (.A(ctrl_clk),
    .X(clknet_0_ctrl_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_ref_clk (.A(ref_clk),
    .X(clknet_0_ref_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_ref_clk_regs (.A(ref_clk_regs),
    .X(clknet_0_ref_clk_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_tdc_clk (.A(tdc_clk),
    .X(clknet_0_tdc_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_vco_clk (.A(vco_clk),
    .X(clknet_0_vco_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_ref_clk (.A(clknet_0_ref_clk),
    .X(clknet_1_0__leaf_ref_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_ref_clk_regs (.A(clknet_0_ref_clk_regs),
    .X(clknet_1_0__leaf_ref_clk_regs));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_vco_clk (.A(clknet_0_vco_clk),
    .X(clknet_1_0__leaf_vco_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_vco_clk (.A(clknet_0_vco_clk),
    .X(clknet_1_1__leaf_vco_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_0__f_tdc_clk (.A(clknet_0_tdc_clk),
    .X(clknet_3_0__leaf_tdc_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_1__f_tdc_clk (.A(clknet_0_tdc_clk),
    .X(clknet_3_1__leaf_tdc_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_2__f_tdc_clk (.A(clknet_0_tdc_clk),
    .X(clknet_3_2__leaf_tdc_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_3__f_tdc_clk (.A(clknet_0_tdc_clk),
    .X(clknet_3_3__leaf_tdc_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_4__f_tdc_clk (.A(clknet_0_tdc_clk),
    .X(clknet_3_4__leaf_tdc_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_5__f_tdc_clk (.A(clknet_0_tdc_clk),
    .X(clknet_3_5__leaf_tdc_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_6__f_tdc_clk (.A(clknet_0_tdc_clk),
    .X(clknet_3_6__leaf_tdc_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_7__f_tdc_clk (.A(clknet_0_tdc_clk),
    .X(clknet_3_7__leaf_tdc_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_0_0_ctrl_clk (.A(clknet_0_ctrl_clk),
    .X(clknet_4_0_0_ctrl_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_10_0_ctrl_clk (.A(clknet_0_ctrl_clk),
    .X(clknet_4_10_0_ctrl_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_11_0_ctrl_clk (.A(clknet_0_ctrl_clk),
    .X(clknet_4_11_0_ctrl_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_12_0_ctrl_clk (.A(clknet_0_ctrl_clk),
    .X(clknet_4_12_0_ctrl_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_13_0_ctrl_clk (.A(clknet_0_ctrl_clk),
    .X(clknet_4_13_0_ctrl_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_14_0_ctrl_clk (.A(clknet_0_ctrl_clk),
    .X(clknet_4_14_0_ctrl_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_15_0_ctrl_clk (.A(clknet_0_ctrl_clk),
    .X(clknet_4_15_0_ctrl_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_1_0_ctrl_clk (.A(clknet_0_ctrl_clk),
    .X(clknet_4_1_0_ctrl_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_2_0_ctrl_clk (.A(clknet_0_ctrl_clk),
    .X(clknet_4_2_0_ctrl_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_3_0_ctrl_clk (.A(clknet_0_ctrl_clk),
    .X(clknet_4_3_0_ctrl_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_4_0_ctrl_clk (.A(clknet_0_ctrl_clk),
    .X(clknet_4_4_0_ctrl_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_5_0_ctrl_clk (.A(clknet_0_ctrl_clk),
    .X(clknet_4_5_0_ctrl_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_6_0_ctrl_clk (.A(clknet_0_ctrl_clk),
    .X(clknet_4_6_0_ctrl_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_7_0_ctrl_clk (.A(clknet_0_ctrl_clk),
    .X(clknet_4_7_0_ctrl_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_8_0_ctrl_clk (.A(clknet_0_ctrl_clk),
    .X(clknet_4_8_0_ctrl_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_4_9_0_ctrl_clk (.A(clknet_0_ctrl_clk),
    .X(clknet_4_9_0_ctrl_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_regs_0_ref_clk (.A(ref_clk),
    .X(ref_clk_regs));
 sky130_fd_sc_hd__clkinvlp_4 clkload0 (.A(clknet_3_0__leaf_tdc_clk));
 sky130_fd_sc_hd__clkinv_4 clkload1 (.A(clknet_3_1__leaf_tdc_clk));
 sky130_fd_sc_hd__inv_6 clkload10 (.A(clknet_4_4_0_ctrl_clk));
 sky130_fd_sc_hd__inv_6 clkload11 (.A(clknet_4_5_0_ctrl_clk));
 sky130_fd_sc_hd__inv_8 clkload12 (.A(clknet_4_6_0_ctrl_clk));
 sky130_fd_sc_hd__clkinv_8 clkload13 (.A(clknet_4_7_0_ctrl_clk));
 sky130_fd_sc_hd__inv_8 clkload14 (.A(clknet_4_8_0_ctrl_clk));
 sky130_fd_sc_hd__inv_6 clkload15 (.A(clknet_4_9_0_ctrl_clk));
 sky130_fd_sc_hd__clkinv_8 clkload16 (.A(clknet_4_10_0_ctrl_clk));
 sky130_fd_sc_hd__inv_6 clkload17 (.A(clknet_4_11_0_ctrl_clk));
 sky130_fd_sc_hd__clkinv_8 clkload18 (.A(clknet_4_12_0_ctrl_clk));
 sky130_fd_sc_hd__clkinv_8 clkload19 (.A(clknet_4_13_0_ctrl_clk));
 sky130_fd_sc_hd__bufinv_16 clkload2 (.A(clknet_3_3__leaf_tdc_clk));
 sky130_fd_sc_hd__clkinv_8 clkload20 (.A(clknet_4_14_0_ctrl_clk));
 sky130_fd_sc_hd__clkinv_8 clkload21 (.A(clknet_4_15_0_ctrl_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload22 (.A(clknet_1_1__leaf_vco_clk));
 sky130_fd_sc_hd__clkinv_4 clkload3 (.A(clknet_3_4__leaf_tdc_clk));
 sky130_fd_sc_hd__clkinv_4 clkload4 (.A(clknet_3_5__leaf_tdc_clk));
 sky130_fd_sc_hd__inv_6 clkload5 (.A(clknet_3_6__leaf_tdc_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload6 (.A(clknet_3_7__leaf_tdc_clk));
 sky130_fd_sc_hd__inv_6 clkload7 (.A(clknet_4_1_0_ctrl_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload8 (.A(clknet_4_2_0_ctrl_clk));
 sky130_fd_sc_hd__inv_8 clkload9 (.A(clknet_4_3_0_ctrl_clk));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input109 (.A(divide_value[1]),
    .X(net147));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input110 (.A(divide_value[2]),
    .X(net148));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input111 (.A(divide_value[3]),
    .X(net149));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input112 (.A(divide_value[4]),
    .X(net150));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input113 (.A(divide_value[5]),
    .X(net151));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input114 (.A(divide_value[6]),
    .X(net152));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input115 (.A(divide_value[7]),
    .X(net153));
 sky130_fd_sc_hd__buf_8 input116 (.A(reset_n),
    .X(net154));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input117 (.A(start),
    .X(net155));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output118 (.A(net156),
    .X(DOWN));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output119 (.A(net157),
    .X(UP));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output120 (.A(net158),
    .X(controller_state[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output121 (.A(net159),
    .X(controller_state[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output122 (.A(net160),
    .X(controller_state[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output123 (.A(net209),
    .X(error_valid));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output124 (.A(net162),
    .X(feedback_clk));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output125 (.A(net164),
    .X(ki_debug[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output126 (.A(net164),
    .X(kp_debug[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output127 (.A(net163),
    .X(locked));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output128 (.A(net164),
    .X(loop_enable));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output129 (.A(net165),
    .X(phase_error[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output130 (.A(net166),
    .X(phase_error[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output131 (.A(net167),
    .X(phase_error[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output132 (.A(net168),
    .X(phase_error[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output133 (.A(net169),
    .X(phase_error[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output134 (.A(net170),
    .X(phase_error[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output135 (.A(net171),
    .X(phase_error[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output136 (.A(net210),
    .X(phase_error[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output137 (.A(net173),
    .X(sat_high));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output138 (.A(net174),
    .X(sat_low));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output139 (.A(net175),
    .X(tuning_word[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output140 (.A(net176),
    .X(tuning_word[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output141 (.A(net177),
    .X(tuning_word[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output142 (.A(net178),
    .X(tuning_word[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output143 (.A(net179),
    .X(tuning_word[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output144 (.A(net180),
    .X(tuning_word[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output145 (.A(net181),
    .X(tuning_word[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output146 (.A(net182),
    .X(tuning_word[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output147 (.A(net183),
    .X(tuning_word[8]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output148 (.A(net184),
    .X(tuning_word[9]));
 sky130_fd_sc_hd__buf_4 place162 (.A(_0656_),
    .X(net199));
 sky130_fd_sc_hd__buf_4 place164 (.A(_0503_),
    .X(net201));
 sky130_fd_sc_hd__buf_4 place165 (.A(_0869_),
    .X(net202));
 sky130_fd_sc_hd__buf_4 place166 (.A(_0866_),
    .X(net203));
 sky130_fd_sc_hd__buf_4 place167 (.A(_0867_),
    .X(net204));
 sky130_fd_sc_hd__buf_4 place168 (.A(_0799_),
    .X(net205));
 sky130_fd_sc_hd__buf_4 place169 (.A(_0622_),
    .X(net206));
 sky130_fd_sc_hd__buf_4 place170 (.A(_0710_),
    .X(net207));
 sky130_fd_sc_hd__buf_4 place171 (.A(_0706_),
    .X(net208));
 sky130_fd_sc_hd__buf_4 place172 (.A(net161),
    .X(net209));
 sky130_fd_sc_hd__buf_4 place173 (.A(net172),
    .X(net210));
 sky130_fd_sc_hd__buf_4 place174 (.A(net212),
    .X(net211));
 sky130_fd_sc_hd__buf_4 place175 (.A(net154),
    .X(net212));
 sky130_fd_sc_hd__dfrtp_1 \u_controller.state[0]$_DFFE_PN0P_  (.D(_1253_),
    .Q(net158),
    .RESET_B(net154),
    .CLK(clknet_4_3_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_controller.state[1]$_DFFE_PN0P_  (.D(_1248_),
    .Q(net159),
    .RESET_B(net154),
    .CLK(clknet_4_3_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_controller.state[2]$_DFFE_PN0P_  (.D(_1360_),
    .Q(net160),
    .RESET_B(net154),
    .CLK(clknet_4_6_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_feedback_divider.div_count[0]$_DFF_PN0_  (.D(_0818_),
    .Q(_0495_),
    .RESET_B(net212),
    .CLK(clknet_1_1__leaf_vco_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_feedback_divider.div_count[1]$_DFF_PN0_  (.D(_0819_),
    .Q(_0494_),
    .RESET_B(net212),
    .CLK(clknet_1_1__leaf_vco_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_feedback_divider.div_count[2]$_DFF_PN0_  (.D(_0820_),
    .Q(_0493_),
    .RESET_B(net212),
    .CLK(clknet_1_1__leaf_vco_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_feedback_divider.div_count[3]$_DFF_PN0_  (.D(_0822_),
    .Q(_0492_),
    .RESET_B(net212),
    .CLK(clknet_1_1__leaf_vco_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_feedback_divider.div_count[4]$_DFF_PN0_  (.D(_0823_),
    .Q(_0491_),
    .RESET_B(net212),
    .CLK(clknet_1_0__leaf_vco_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_feedback_divider.div_count[5]$_DFF_PN0_  (.D(_0825_),
    .Q(_0490_),
    .RESET_B(net212),
    .CLK(clknet_1_0__leaf_vco_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_feedback_divider.div_count[6]$_DFF_PN0_  (.D(_0826_),
    .Q(_0489_),
    .RESET_B(net212),
    .CLK(clknet_1_0__leaf_vco_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_feedback_divider.div_count[7]$_DFF_PN0_  (.D(_0792_),
    .Q(_0539_),
    .RESET_B(net212),
    .CLK(clknet_1_0__leaf_vco_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_feedback_divider.feedback_clk$_DFFE_PN0P_  (.D(_1315_),
    .Q(net162),
    .RESET_B(net212),
    .CLK(clknet_1_0__leaf_vco_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_acquisition.freq_locked$_DFFE_PN0P_  (.D(_1330_),
    .Q(freq_locked_internal),
    .RESET_B(net154),
    .CLK(clknet_4_3_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_acquisition.lock_count[0]$_DFFE_PN0P_  (.D(_1277_),
    .Q(_0332_),
    .RESET_B(net212),
    .CLK(clknet_4_3_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_acquisition.lock_count[1]$_DFFE_PN0P_  (.D(_1275_),
    .Q(_0333_),
    .RESET_B(net212),
    .CLK(clknet_4_2_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_acquisition.lock_count[2]$_DFFE_PN0P_  (.D(_1366_),
    .Q(_0306_),
    .RESET_B(net212),
    .CLK(clknet_4_2_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_acquisition.tuning_word[0]$_DFFE_PN0P_  (.D(_1312_),
    .Q(_0323_),
    .RESET_B(net211),
    .CLK(clknet_4_8_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_acquisition.tuning_word[1]$_DFFE_PN0P_  (.D(_1309_),
    .Q(_0324_),
    .RESET_B(net211),
    .CLK(clknet_4_8_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_acquisition.tuning_word[2]$_DFFE_PN0P_  (.D(_1306_),
    .Q(_0325_),
    .RESET_B(net211),
    .CLK(clknet_4_8_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_acquisition.tuning_word[3]$_DFFE_PN0P_  (.D(_1303_),
    .Q(_0326_),
    .RESET_B(net211),
    .CLK(clknet_4_10_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_acquisition.tuning_word[4]$_DFFE_PN0P_  (.D(_1298_),
    .Q(_0327_),
    .RESET_B(net211),
    .CLK(clknet_4_10_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_acquisition.tuning_word[5]$_DFFE_PN0P_  (.D(_1294_),
    .Q(_0328_),
    .RESET_B(net211),
    .CLK(clknet_4_11_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_acquisition.tuning_word[6]$_DFFE_PN0P_  (.D(_1290_),
    .Q(_0329_),
    .RESET_B(net211),
    .CLK(clknet_4_11_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_acquisition.tuning_word[7]$_DFFE_PN0P_  (.D(_1285_),
    .Q(_0330_),
    .RESET_B(net211),
    .CLK(clknet_4_11_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_acquisition.tuning_word[8]$_DFFE_PN0P_  (.D(_1281_),
    .Q(_0331_),
    .RESET_B(net211),
    .CLK(clknet_4_11_0_ctrl_clk));
 sky130_fd_sc_hd__dfstp_2 \u_frequency_acquisition.tuning_word[9]$_DFFE_PN1P_  (.D(_0816_),
    .Q(_0537_),
    .SET_B(net211),
    .CLK(clknet_4_11_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.fb_edge_count[0]$_DFFE_PN0P_  (.D(_1183_),
    .Q(_0362_),
    .RESET_B(net212),
    .CLK(clknet_3_4__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.fb_edge_count[1]$_DFFE_PN0P_  (.D(_1181_),
    .Q(_0363_),
    .RESET_B(net212),
    .CLK(clknet_3_1__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.fb_edge_count[2]$_DFFE_PN0P_  (.D(_1179_),
    .Q(_0364_),
    .RESET_B(net212),
    .CLK(clknet_3_4__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.fb_edge_count[3]$_DFFE_PN0P_  (.D(_1177_),
    .Q(_0365_),
    .RESET_B(net212),
    .CLK(clknet_3_4__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.fb_edge_count[4]$_DFFE_PN0P_  (.D(_1174_),
    .Q(_0366_),
    .RESET_B(net212),
    .CLK(clknet_3_4__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.fb_edge_count[5]$_DFFE_PN0P_  (.D(_1172_),
    .Q(_0367_),
    .RESET_B(net212),
    .CLK(clknet_3_4__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.fb_edge_count[6]$_DFFE_PN0P_  (.D(_1169_),
    .Q(_0368_),
    .RESET_B(net212),
    .CLK(clknet_3_4__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.fb_edge_count[7]$_DFFE_PN0P_  (.D(_1353_),
    .Q(_0311_),
    .RESET_B(net212),
    .CLK(clknet_3_7__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.fb_sync1$_DFF_PN0_  (.D(net162),
    .Q(\u_frequency_detector.fb_sync1 ),
    .RESET_B(net212),
    .CLK(clknet_3_4__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.fb_sync2$_DFF_PN0_  (.D(\u_frequency_detector.fb_sync1 ),
    .Q(\u_frequency_detector.fb_sync2 ),
    .RESET_B(net212),
    .CLK(clknet_3_4__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.fb_sync2_d$_DFF_PN0_  (.D(\u_frequency_detector.fb_sync2 ),
    .Q(\u_frequency_detector.fb_sync2_d ),
    .RESET_B(net212),
    .CLK(clknet_3_4__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.freq_error[0]$_DFFE_PN0P_  (.D(_1232_),
    .Q(_0348_),
    .RESET_B(net211),
    .CLK(clknet_3_6__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.freq_error[1]$_DFFE_PN0P_  (.D(_1227_),
    .Q(_0349_),
    .RESET_B(net211),
    .CLK(clknet_3_7__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.freq_error[2]$_DFFE_PN0P_  (.D(_1225_),
    .Q(_0350_),
    .RESET_B(net211),
    .CLK(clknet_3_6__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.freq_error[3]$_DFFE_PN0P_  (.D(_1222_),
    .Q(_0351_),
    .RESET_B(net211),
    .CLK(clknet_3_6__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.freq_error[4]$_DFFE_PN0P_  (.D(_1219_),
    .Q(_0352_),
    .RESET_B(net211),
    .CLK(clknet_3_6__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.freq_error[5]$_DFFE_PN0P_  (.D(_1217_),
    .Q(_0353_),
    .RESET_B(net211),
    .CLK(clknet_3_3__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.freq_error[6]$_DFFE_PN0P_  (.D(_1214_),
    .Q(_0354_),
    .RESET_B(net211),
    .CLK(clknet_3_6__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.freq_error[7]$_DFFE_PN0P_  (.D(_1358_),
    .Q(_0309_),
    .RESET_B(net211),
    .CLK(clknet_3_3__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.freq_valid$_DFF_PN0_  (.D(_0779_),
    .Q(raw_freq_valid),
    .RESET_B(net211),
    .CLK(clknet_3_3__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.ref_edge_count[0]$_DFFE_PN0P_  (.D(_1201_),
    .Q(_0355_),
    .RESET_B(net212),
    .CLK(clknet_3_1__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.ref_edge_count[1]$_DFFE_PN0P_  (.D(_1199_),
    .Q(_0356_),
    .RESET_B(net212),
    .CLK(clknet_3_1__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.ref_edge_count[2]$_DFFE_PN0P_  (.D(_1197_),
    .Q(_0357_),
    .RESET_B(net212),
    .CLK(clknet_3_1__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.ref_edge_count[3]$_DFFE_PN0P_  (.D(_1195_),
    .Q(_0358_),
    .RESET_B(net211),
    .CLK(clknet_3_1__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.ref_edge_count[4]$_DFFE_PN0P_  (.D(_1192_),
    .Q(_0359_),
    .RESET_B(net211),
    .CLK(clknet_3_1__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.ref_edge_count[5]$_DFFE_PN0P_  (.D(_1190_),
    .Q(_0360_),
    .RESET_B(net211),
    .CLK(clknet_3_1__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.ref_edge_count[6]$_DFFE_PN0P_  (.D(_1187_),
    .Q(_0361_),
    .RESET_B(net211),
    .CLK(clknet_3_3__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.ref_edge_count[7]$_DFFE_PN0P_  (.D(_1356_),
    .Q(_0310_),
    .RESET_B(net211),
    .CLK(clknet_3_3__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.ref_sync1$_DFF_PN0_  (.D(clknet_1_0__leaf_ref_clk),
    .Q(\u_frequency_detector.ref_sync1 ),
    .RESET_B(net212),
    .CLK(clknet_3_5__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.ref_sync2$_DFF_PN0_  (.D(\u_frequency_detector.ref_sync1 ),
    .Q(\u_frequency_detector.ref_sync2 ),
    .RESET_B(net212),
    .CLK(clknet_3_1__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.ref_sync2_d$_DFF_PN0_  (.D(\u_frequency_detector.ref_sync2 ),
    .Q(\u_frequency_detector.ref_sync2_d ),
    .RESET_B(net212),
    .CLK(clknet_3_1__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.window_count[0]$_DFF_PN0_  (.D(_0844_),
    .Q(_0482_),
    .RESET_B(net212),
    .CLK(clknet_3_5__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.window_count[10]$_DFF_PN0_  (.D(_0858_),
    .Q(_0472_),
    .RESET_B(net212),
    .CLK(clknet_3_7__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.window_count[11]$_DFF_PN0_  (.D(_0860_),
    .Q(_0471_),
    .RESET_B(net212),
    .CLK(clknet_3_7__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.window_count[12]$_DFF_PN0_  (.D(_0861_),
    .Q(_0470_),
    .RESET_B(net212),
    .CLK(clknet_3_7__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.window_count[13]$_DFF_PN0_  (.D(_0863_),
    .Q(_0469_),
    .RESET_B(net212),
    .CLK(clknet_3_7__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.window_count[14]$_DFF_PN0_  (.D(_0864_),
    .Q(_0468_),
    .RESET_B(net212),
    .CLK(clknet_3_5__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.window_count[15]$_DFF_PN0_  (.D(_0778_),
    .Q(_0540_),
    .RESET_B(net212),
    .CLK(clknet_3_7__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.window_count[1]$_DFF_PN0_  (.D(_0845_),
    .Q(_0481_),
    .RESET_B(net212),
    .CLK(clknet_3_7__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.window_count[2]$_DFF_PN0_  (.D(_0846_),
    .Q(_0480_),
    .RESET_B(net212),
    .CLK(clknet_3_4__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.window_count[3]$_DFF_PN0_  (.D(_0848_),
    .Q(_0479_),
    .RESET_B(net212),
    .CLK(clknet_3_5__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.window_count[4]$_DFF_PN0_  (.D(_0849_),
    .Q(_0478_),
    .RESET_B(net212),
    .CLK(clknet_3_5__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.window_count[5]$_DFF_PN0_  (.D(_0851_),
    .Q(_0477_),
    .RESET_B(net212),
    .CLK(clknet_3_5__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.window_count[6]$_DFF_PN0_  (.D(_0852_),
    .Q(_0476_),
    .RESET_B(net212),
    .CLK(clknet_3_5__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.window_count[7]$_DFF_PN0_  (.D(_0854_),
    .Q(_0475_),
    .RESET_B(net212),
    .CLK(clknet_3_5__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.window_count[8]$_DFF_PN0_  (.D(_0855_),
    .Q(_0474_),
    .RESET_B(net212),
    .CLK(clknet_3_5__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_detector.window_count[9]$_DFF_PN0_  (.D(_0857_),
    .Q(_0473_),
    .RESET_B(net212),
    .CLK(clknet_3_5__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.ack_sync1$_DFF_PN0_  (.D(\u_frequency_error_cdc.ack_toggle ),
    .Q(\u_frequency_error_cdc.ack_sync1 ),
    .RESET_B(net211),
    .CLK(clknet_3_3__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.ack_sync2$_DFF_PN0_  (.D(\u_frequency_error_cdc.ack_sync1 ),
    .Q(\u_frequency_error_cdc.ack_sync2 ),
    .RESET_B(net211),
    .CLK(clknet_3_3__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.ack_toggle$_DFFE_PN0P_  (.D(\u_frequency_error_cdc.req_sync2 ),
    .Q(\u_frequency_error_cdc.ack_toggle ),
    .RESET_B(net211),
    .CLK(clknet_4_3_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.dst_phase_error[0]$_DFFE_PN0P_  (.D(_1270_),
    .Q(_0334_),
    .RESET_B(net211),
    .CLK(clknet_4_8_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.dst_phase_error[1]$_DFFE_PN0P_  (.D(_1269_),
    .Q(_0335_),
    .RESET_B(net211),
    .CLK(clknet_4_10_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.dst_phase_error[2]$_DFFE_PN0P_  (.D(_1268_),
    .Q(_0336_),
    .RESET_B(net211),
    .CLK(clknet_4_10_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.dst_phase_error[3]$_DFFE_PN0P_  (.D(_1267_),
    .Q(_0337_),
    .RESET_B(net211),
    .CLK(clknet_4_8_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.dst_phase_error[4]$_DFFE_PN0P_  (.D(_1266_),
    .Q(_0338_),
    .RESET_B(net211),
    .CLK(clknet_4_10_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.dst_phase_error[5]$_DFFE_PN0P_  (.D(_1265_),
    .Q(_0339_),
    .RESET_B(net211),
    .CLK(clknet_4_2_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.dst_phase_error[6]$_DFFE_PN0P_  (.D(_1264_),
    .Q(_0340_),
    .RESET_B(net211),
    .CLK(clknet_4_10_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.dst_phase_error[7]$_DFFE_PN0P_  (.D(_1364_),
    .Q(_0307_),
    .RESET_B(net211),
    .CLK(clknet_4_8_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.dst_valid$_DFF_PN0_  (.D(_0774_),
    .Q(ctrl_freq_valid),
    .RESET_B(net211),
    .CLK(clknet_4_2_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.req_sync1$_DFF_PN0_  (.D(\u_frequency_error_cdc.req_toggle ),
    .Q(\u_frequency_error_cdc.req_sync1 ),
    .RESET_B(net211),
    .CLK(clknet_4_2_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.req_sync2$_DFF_PN0_  (.D(\u_frequency_error_cdc.req_sync1 ),
    .Q(\u_frequency_error_cdc.req_sync2 ),
    .RESET_B(net211),
    .CLK(clknet_4_2_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.req_toggle$_DFFE_PN0P_  (.D(_1363_),
    .Q(\u_frequency_error_cdc.req_toggle ),
    .RESET_B(net211),
    .CLK(clknet_3_3__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.src_data_hold[0]$_DFFE_PN0P_  (.D(_1262_),
    .Q(_0341_),
    .RESET_B(net211),
    .CLK(clknet_3_6__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.src_data_hold[1]$_DFFE_PN0P_  (.D(_1261_),
    .Q(_0342_),
    .RESET_B(net211),
    .CLK(clknet_3_7__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.src_data_hold[2]$_DFFE_PN0P_  (.D(_1260_),
    .Q(_0343_),
    .RESET_B(net211),
    .CLK(clknet_3_7__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.src_data_hold[3]$_DFFE_PN0P_  (.D(_1259_),
    .Q(_0344_),
    .RESET_B(net211),
    .CLK(clknet_3_6__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.src_data_hold[4]$_DFFE_PN0P_  (.D(_1258_),
    .Q(_0345_),
    .RESET_B(net211),
    .CLK(clknet_3_7__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.src_data_hold[5]$_DFFE_PN0P_  (.D(_1257_),
    .Q(_0346_),
    .RESET_B(net211),
    .CLK(clknet_3_3__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.src_data_hold[6]$_DFFE_PN0P_  (.D(_1256_),
    .Q(_0347_),
    .RESET_B(net211),
    .CLK(clknet_3_6__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_frequency_error_cdc.src_data_hold[7]$_DFFE_PN0P_  (.D(_1361_),
    .Q(_0308_),
    .RESET_B(net211),
    .CLK(clknet_3_3__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.history_count[0]$_DFFE_PN0P_  (.D(_0932_),
    .Q(_0434_),
    .RESET_B(net154),
    .CLK(clknet_4_4_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.history_count[1]$_DFFE_PN0P_  (.D(_0930_),
    .Q(_0435_),
    .RESET_B(net154),
    .CLK(clknet_4_4_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.history_count[2]$_DFFE_PN0P_  (.D(_1317_),
    .Q(_0321_),
    .RESET_B(net154),
    .CLK(clknet_4_4_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.lock_count[0]$_DFFE_PN0P_  (.D(_1096_),
    .Q(_0397_),
    .RESET_B(net154),
    .CLK(clknet_4_5_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.lock_count[1]$_DFFE_PN0P_  (.D(_1094_),
    .Q(_0398_),
    .RESET_B(net154),
    .CLK(clknet_4_4_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.lock_count[2]$_DFFE_PN0P_  (.D(_1091_),
    .Q(_0399_),
    .RESET_B(net154),
    .CLK(clknet_4_5_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.lock_count[3]$_DFFE_PN0P_  (.D(_1087_),
    .Q(_0400_),
    .RESET_B(net154),
    .CLK(clknet_4_5_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.lock_count[4]$_DFFE_PN0P_  (.D(_1082_),
    .Q(_0401_),
    .RESET_B(net154),
    .CLK(clknet_4_5_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.lock_count[5]$_DFFE_PN0P_  (.D(_1079_),
    .Q(_0402_),
    .RESET_B(net154),
    .CLK(clknet_4_5_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.lock_count[6]$_DFFE_PN0P_  (.D(_1076_),
    .Q(_0403_),
    .RESET_B(net154),
    .CLK(clknet_4_5_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.lock_count[7]$_DFFE_PN0P_  (.D(_1341_),
    .Q(_0316_),
    .RESET_B(net154),
    .CLK(clknet_4_5_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.locked$_DFFE_PN0P_  (.D(_1321_),
    .Q(net163),
    .RESET_B(net154),
    .CLK(clknet_4_5_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.loss_count[0]$_DFFE_PN0P_  (.D(_1152_),
    .Q(_0376_),
    .RESET_B(net154),
    .CLK(clknet_4_7_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.loss_count[1]$_DFFE_PN0P_  (.D(_1151_),
    .Q(_0377_),
    .RESET_B(net154),
    .CLK(clknet_4_5_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.loss_count[2]$_DFFE_PN0P_  (.D(_1150_),
    .Q(_0378_),
    .RESET_B(net154),
    .CLK(clknet_4_7_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.loss_count[3]$_DFFE_PN0P_  (.D(_1149_),
    .Q(_0379_),
    .RESET_B(net154),
    .CLK(clknet_4_7_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.loss_count[4]$_DFFE_PN0P_  (.D(_1148_),
    .Q(_0380_),
    .RESET_B(net154),
    .CLK(clknet_4_6_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.loss_count[5]$_DFFE_PN0P_  (.D(_1147_),
    .Q(_0381_),
    .RESET_B(net154),
    .CLK(clknet_4_6_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.loss_count[6]$_DFFE_PN0P_  (.D(_1144_),
    .Q(_0382_),
    .RESET_B(net154),
    .CLK(clknet_4_7_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.loss_count[7]$_DFFE_PN0P_  (.D(_1348_),
    .Q(_0313_),
    .RESET_B(net154),
    .CLK(clknet_4_6_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_1[0]$_DFFE_PN0P_  (.D(_0946_),
    .Q(_0427_),
    .RESET_B(net154),
    .CLK(clknet_4_0_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_1[1]$_DFFE_PN0P_  (.D(_0944_),
    .Q(_0428_),
    .RESET_B(net154),
    .CLK(clknet_4_1_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_1[2]$_DFFE_PN0P_  (.D(_0942_),
    .Q(_0429_),
    .RESET_B(net154),
    .CLK(clknet_4_0_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_1[3]$_DFFE_PN0P_  (.D(_0940_),
    .Q(_0430_),
    .RESET_B(net154),
    .CLK(clknet_4_0_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_1[4]$_DFFE_PN0P_  (.D(_0938_),
    .Q(_0431_),
    .RESET_B(net154),
    .CLK(clknet_4_0_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_1[5]$_DFFE_PN0P_  (.D(_0936_),
    .Q(_0432_),
    .RESET_B(net154),
    .CLK(clknet_4_2_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_1[6]$_DFFE_PN0P_  (.D(_0934_),
    .Q(_0433_),
    .RESET_B(net154),
    .CLK(clknet_4_4_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_1[7]$_DFFE_PN0P_  (.D(_1323_),
    .Q(_0320_),
    .RESET_B(net154),
    .CLK(clknet_4_6_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_2[0]$_DFFE_PN0P_  (.D(_1166_),
    .Q(_0369_),
    .RESET_B(net154),
    .CLK(clknet_4_0_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_2[1]$_DFFE_PN0P_  (.D(_1164_),
    .Q(_0370_),
    .RESET_B(net154),
    .CLK(clknet_4_1_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_2[2]$_DFFE_PN0P_  (.D(_1162_),
    .Q(_0371_),
    .RESET_B(net154),
    .CLK(clknet_4_0_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_2[3]$_DFFE_PN0P_  (.D(_1160_),
    .Q(_0372_),
    .RESET_B(net154),
    .CLK(clknet_4_0_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_2[4]$_DFFE_PN0P_  (.D(_1158_),
    .Q(_0373_),
    .RESET_B(net154),
    .CLK(clknet_4_0_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_2[5]$_DFFE_PN0P_  (.D(_1156_),
    .Q(_0374_),
    .RESET_B(net154),
    .CLK(clknet_4_0_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_2[6]$_DFFE_PN0P_  (.D(_1154_),
    .Q(_0375_),
    .RESET_B(net154),
    .CLK(clknet_4_4_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_2[7]$_DFFE_PN0P_  (.D(_1350_),
    .Q(_0312_),
    .RESET_B(net154),
    .CLK(clknet_4_7_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_3[0]$_DFFE_PN0P_  (.D(_1127_),
    .Q(_0383_),
    .RESET_B(net154),
    .CLK(clknet_4_1_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_3[1]$_DFFE_PN0P_  (.D(_1125_),
    .Q(_0384_),
    .RESET_B(net154),
    .CLK(clknet_4_1_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_3[2]$_DFFE_PN0P_  (.D(_1123_),
    .Q(_0385_),
    .RESET_B(net154),
    .CLK(clknet_4_0_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_3[3]$_DFFE_PN0P_  (.D(_1121_),
    .Q(_0386_),
    .RESET_B(net154),
    .CLK(clknet_4_0_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_3[4]$_DFFE_PN0P_  (.D(_1118_),
    .Q(_0387_),
    .RESET_B(net154),
    .CLK(clknet_4_0_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_3[5]$_DFFE_PN0P_  (.D(_1116_),
    .Q(_0388_),
    .RESET_B(net154),
    .CLK(clknet_4_1_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_3[6]$_DFFE_PN0P_  (.D(_1114_),
    .Q(_0389_),
    .RESET_B(net154),
    .CLK(clknet_4_4_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_3[7]$_DFFE_PN0P_  (.D(_1345_),
    .Q(_0314_),
    .RESET_B(net154),
    .CLK(clknet_4_6_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_4[0]$_DFFE_PN0P_  (.D(_1037_),
    .Q(_0404_),
    .RESET_B(net154),
    .CLK(clknet_4_1_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_4[1]$_DFFE_PN0P_  (.D(_1035_),
    .Q(_0405_),
    .RESET_B(net154),
    .CLK(clknet_4_4_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_4[2]$_DFFE_PN0P_  (.D(_1033_),
    .Q(_0406_),
    .RESET_B(net154),
    .CLK(clknet_4_1_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_4[3]$_DFFE_PN0P_  (.D(_1031_),
    .Q(_0407_),
    .RESET_B(net154),
    .CLK(clknet_4_1_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_4[4]$_DFFE_PN0P_  (.D(_1029_),
    .Q(_0408_),
    .RESET_B(net154),
    .CLK(clknet_4_1_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_4[5]$_DFFE_PN0P_  (.D(_1027_),
    .Q(_0409_),
    .RESET_B(net154),
    .CLK(clknet_4_6_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_4[6]$_DFFE_PN0P_  (.D(_1025_),
    .Q(_0410_),
    .RESET_B(net154),
    .CLK(clknet_4_4_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_lock_detector.phase_delay_4[7]$_DFFE_PN0P_  (.D(_1338_),
    .Q(_0317_),
    .RESET_B(net154),
    .CLK(clknet_4_4_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pfd.DOWN$_DFF_PP0_  (.D(net145),
    .Q(net156),
    .RESET_B(_0769_),
    .CLK(net162));
 sky130_fd_sc_hd__conb_1 \u_pfd.DOWN$_DFF_PP0__107  (.HI(net145));
 sky130_fd_sc_hd__dfrtp_1 \u_pfd.UP$_DFF_PP0_  (.D(net146),
    .Q(net157),
    .RESET_B(_0769_),
    .CLK(clknet_1_0__leaf_ref_clk_regs));
 sky130_fd_sc_hd__conb_1 \u_pfd.UP$_DFF_PP0__108  (.HI(net146));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.ack_sync1$_DFF_PN0_  (.D(\u_phase_error_cdc.ack_toggle ),
    .Q(\u_phase_error_cdc.ack_sync1 ),
    .RESET_B(net212),
    .CLK(clknet_3_2__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.ack_sync2$_DFF_PN0_  (.D(\u_phase_error_cdc.ack_sync1 ),
    .Q(\u_phase_error_cdc.ack_sync2 ),
    .RESET_B(net212),
    .CLK(clknet_3_3__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.ack_toggle$_DFFE_PN0P_  (.D(\u_phase_error_cdc.req_sync2 ),
    .Q(\u_phase_error_cdc.ack_toggle ),
    .RESET_B(net212),
    .CLK(clknet_4_2_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.dst_phase_error[0]$_DFFE_PN0P_  (.D(_1134_),
    .Q(net165),
    .RESET_B(net154),
    .CLK(clknet_4_0_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.dst_phase_error[1]$_DFFE_PN0P_  (.D(_1133_),
    .Q(net166),
    .RESET_B(net154),
    .CLK(clknet_4_0_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.dst_phase_error[2]$_DFFE_PN0P_  (.D(_1132_),
    .Q(net167),
    .RESET_B(net154),
    .CLK(clknet_4_0_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.dst_phase_error[3]$_DFFE_PN0P_  (.D(_1131_),
    .Q(net168),
    .RESET_B(net154),
    .CLK(clknet_4_0_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.dst_phase_error[4]$_DFFE_PN0P_  (.D(_1130_),
    .Q(net169),
    .RESET_B(net154),
    .CLK(clknet_4_0_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.dst_phase_error[5]$_DFFE_PN0P_  (.D(_1129_),
    .Q(net170),
    .RESET_B(net154),
    .CLK(clknet_4_2_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.dst_phase_error[6]$_DFFE_PN0P_  (.D(_1128_),
    .Q(net171),
    .RESET_B(net154),
    .CLK(clknet_4_2_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.dst_phase_error[7]$_DFFE_PN0P_  (.D(_1347_),
    .Q(net172),
    .RESET_B(net212),
    .CLK(clknet_4_2_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_2 \u_phase_error_cdc.dst_valid$_DFF_PN0_  (.D(_0768_),
    .Q(net161),
    .RESET_B(net154),
    .CLK(clknet_4_1_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.req_sync1$_DFF_PN0_  (.D(\u_phase_error_cdc.req_toggle ),
    .Q(\u_phase_error_cdc.req_sync1 ),
    .RESET_B(net212),
    .CLK(clknet_4_2_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.req_sync2$_DFF_PN0_  (.D(\u_phase_error_cdc.req_sync1 ),
    .Q(\u_phase_error_cdc.req_sync2 ),
    .RESET_B(net212),
    .CLK(clknet_4_3_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.req_toggle$_DFFE_PN0P_  (.D(_1346_),
    .Q(\u_phase_error_cdc.req_toggle ),
    .RESET_B(net212),
    .CLK(clknet_3_3__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.src_data_hold[0]$_DFFE_PN0P_  (.D(_1112_),
    .Q(_0390_),
    .RESET_B(net154),
    .CLK(clknet_3_2__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.src_data_hold[1]$_DFFE_PN0P_  (.D(_1111_),
    .Q(_0391_),
    .RESET_B(net154),
    .CLK(clknet_3_2__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.src_data_hold[2]$_DFFE_PN0P_  (.D(_1108_),
    .Q(_0392_),
    .RESET_B(net154),
    .CLK(clknet_3_2__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.src_data_hold[3]$_DFFE_PN0P_  (.D(_1106_),
    .Q(_0393_),
    .RESET_B(net154),
    .CLK(clknet_3_2__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.src_data_hold[4]$_DFFE_PN0P_  (.D(_1105_),
    .Q(_0394_),
    .RESET_B(net154),
    .CLK(clknet_3_2__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.src_data_hold[5]$_DFFE_PN0P_  (.D(_1102_),
    .Q(_0395_),
    .RESET_B(net154),
    .CLK(clknet_3_2__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.src_data_hold[6]$_DFFE_PN0P_  (.D(_1101_),
    .Q(_0396_),
    .RESET_B(net154),
    .CLK(clknet_3_2__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_phase_error_cdc.src_data_hold[7]$_DFFE_PN0P_  (.D(_1343_),
    .Q(_0315_),
    .RESET_B(net154),
    .CLK(clknet_3_2__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[0]$_DFFE_PN0P_  (.D(_0925_),
    .Q(_0436_),
    .RESET_B(net154),
    .CLK(clknet_4_6_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[10]$_DFFE_PN0P_  (.D(_0891_),
    .Q(_0446_),
    .RESET_B(net154),
    .CLK(clknet_4_13_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[11]$_DFFE_PN0P_  (.D(_0888_),
    .Q(_0447_),
    .RESET_B(net154),
    .CLK(clknet_4_13_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[12]$_DFFE_PN0P_  (.D(_0884_),
    .Q(_0448_),
    .RESET_B(net154),
    .CLK(clknet_4_13_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[13]$_DFFE_PN0P_  (.D(_0881_),
    .Q(_0449_),
    .RESET_B(net154),
    .CLK(clknet_4_14_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[14]$_DFFE_PN0P_  (.D(_0878_),
    .Q(_0450_),
    .RESET_B(net154),
    .CLK(clknet_4_15_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[15]$_DFFE_PN0P_  (.D(_0877_),
    .Q(_0451_),
    .RESET_B(net154),
    .CLK(clknet_4_15_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[16]$_DFFE_PN0P_  (.D(_0876_),
    .Q(_0452_),
    .RESET_B(net154),
    .CLK(clknet_4_14_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[17]$_DFFE_PN0P_  (.D(_0875_),
    .Q(_0453_),
    .RESET_B(net154),
    .CLK(clknet_4_15_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[18]$_DFFE_PN0P_  (.D(_0874_),
    .Q(_0454_),
    .RESET_B(net154),
    .CLK(clknet_4_15_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[19]$_DFFE_PN0P_  (.D(_0873_),
    .Q(_0455_),
    .RESET_B(net154),
    .CLK(clknet_4_14_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[1]$_DFFE_PN0P_  (.D(_0922_),
    .Q(_0437_),
    .RESET_B(net154),
    .CLK(clknet_4_3_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[20]$_DFFE_PN0P_  (.D(_0872_),
    .Q(_0456_),
    .RESET_B(net154),
    .CLK(clknet_4_14_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[21]$_DFFE_PN0P_  (.D(_0871_),
    .Q(_0457_),
    .RESET_B(net154),
    .CLK(clknet_4_14_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[22]$_DFFE_PN0P_  (.D(_0870_),
    .Q(_0458_),
    .RESET_B(net154),
    .CLK(clknet_4_15_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[23]$_DFFE_PN0P_  (.D(_1313_),
    .Q(_0322_),
    .RESET_B(net154),
    .CLK(clknet_4_15_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[2]$_DFFE_PN0P_  (.D(_0918_),
    .Q(_0438_),
    .RESET_B(net154),
    .CLK(clknet_4_9_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[3]$_DFFE_PN0P_  (.D(_0915_),
    .Q(_0439_),
    .RESET_B(net154),
    .CLK(clknet_4_9_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[4]$_DFFE_PN0P_  (.D(_0911_),
    .Q(_0440_),
    .RESET_B(net154),
    .CLK(clknet_4_9_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[5]$_DFFE_PN0P_  (.D(_0908_),
    .Q(_0441_),
    .RESET_B(net154),
    .CLK(clknet_4_9_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[6]$_DFFE_PN0P_  (.D(_0904_),
    .Q(_0442_),
    .RESET_B(net154),
    .CLK(clknet_4_13_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[7]$_DFFE_PN0P_  (.D(_0901_),
    .Q(_0443_),
    .RESET_B(net154),
    .CLK(clknet_4_9_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[8]$_DFFE_PN0P_  (.D(_0897_),
    .Q(_0444_),
    .RESET_B(net154),
    .CLK(clknet_4_13_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.integrator[9]$_DFFE_PN0P_  (.D(_0894_),
    .Q(_0445_),
    .RESET_B(net154),
    .CLK(clknet_4_9_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.sat_high$_DFFE_PN0P_  (.D(_1336_),
    .Q(net173),
    .RESET_B(net211),
    .CLK(clknet_4_11_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.sat_low$_DFFE_PN0P_  (.D(_1331_),
    .Q(net174),
    .RESET_B(net211),
    .CLK(clknet_4_12_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.tuning_word[0]$_DFFE_PN0P_  (.D(_1023_),
    .Q(_0411_),
    .RESET_B(net211),
    .CLK(clknet_4_9_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.tuning_word[1]$_DFFE_PN0P_  (.D(_1020_),
    .Q(_0412_),
    .RESET_B(net211),
    .CLK(clknet_4_8_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.tuning_word[2]$_DFFE_PN0P_  (.D(_1017_),
    .Q(_0413_),
    .RESET_B(net211),
    .CLK(clknet_4_9_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.tuning_word[3]$_DFFE_PN0P_  (.D(_1014_),
    .Q(_0414_),
    .RESET_B(net211),
    .CLK(clknet_4_9_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.tuning_word[4]$_DFFE_PN0P_  (.D(_1011_),
    .Q(_0415_),
    .RESET_B(net211),
    .CLK(clknet_4_12_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.tuning_word[5]$_DFFE_PN0P_  (.D(_1008_),
    .Q(_0416_),
    .RESET_B(net211),
    .CLK(clknet_4_12_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.tuning_word[6]$_DFFE_PN0P_  (.D(_1005_),
    .Q(_0417_),
    .RESET_B(net211),
    .CLK(clknet_4_12_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.tuning_word[7]$_DFFE_PN0P_  (.D(_1002_),
    .Q(_0418_),
    .RESET_B(net211),
    .CLK(clknet_4_11_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_pi_filter.tuning_word[8]$_DFFE_PN0P_  (.D(_0999_),
    .Q(_0419_),
    .RESET_B(net211),
    .CLK(clknet_4_11_0_ctrl_clk));
 sky130_fd_sc_hd__dfstp_2 \u_pi_filter.tuning_word[9]$_DFFE_PN1P_  (.D(_1334_),
    .Q(_0318_),
    .SET_B(net211),
    .CLK(clknet_4_11_0_ctrl_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_tdc.error_valid$_DFF_PN0_  (.D(_0772_),
    .Q(tdc_error_valid),
    .RESET_B(net212),
    .CLK(clknet_3_1__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_tdc.phase_count[0]$_DFF_PN0_  (.D(_0829_),
    .Q(_0488_),
    .RESET_B(net212),
    .CLK(clknet_3_0__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_tdc.phase_count[1]$_DFF_PN0_  (.D(_0832_),
    .Q(_0487_),
    .RESET_B(net212),
    .CLK(clknet_3_0__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_tdc.phase_count[2]$_DFF_PN0_  (.D(_0835_),
    .Q(_0486_),
    .RESET_B(net212),
    .CLK(clknet_3_0__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_tdc.phase_count[3]$_DFF_PN0_  (.D(_0838_),
    .Q(_0485_),
    .RESET_B(net154),
    .CLK(clknet_3_0__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_tdc.phase_count[4]$_DFF_PN0_  (.D(_0840_),
    .Q(_0484_),
    .RESET_B(net154),
    .CLK(clknet_3_0__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_tdc.phase_count[5]$_DFF_PN0_  (.D(_0843_),
    .Q(_0483_),
    .RESET_B(net154),
    .CLK(clknet_3_0__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_tdc.phase_count[6]$_DFF_PN0_  (.D(_1367_),
    .Q(_0305_),
    .RESET_B(net212),
    .CLK(clknet_3_0__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_tdc.phase_error[0]$_DFFE_PN0P_  (.D(_0982_),
    .Q(_0420_),
    .RESET_B(net154),
    .CLK(clknet_3_2__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_tdc.phase_error[1]$_DFFE_PN0P_  (.D(_0978_),
    .Q(_0421_),
    .RESET_B(net154),
    .CLK(clknet_3_2__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_tdc.phase_error[2]$_DFFE_PN0P_  (.D(_0975_),
    .Q(_0422_),
    .RESET_B(net154),
    .CLK(clknet_3_0__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_tdc.phase_error[3]$_DFFE_PN0P_  (.D(_0972_),
    .Q(_0423_),
    .RESET_B(net154),
    .CLK(clknet_3_2__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_tdc.phase_error[4]$_DFFE_PN0P_  (.D(_0967_),
    .Q(_0424_),
    .RESET_B(net154),
    .CLK(clknet_3_2__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_tdc.phase_error[5]$_DFFE_PN0P_  (.D(_0964_),
    .Q(_0425_),
    .RESET_B(net154),
    .CLK(clknet_3_2__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_tdc.phase_error[6]$_DFFE_PN0P_  (.D(_0957_),
    .Q(_0426_),
    .RESET_B(net154),
    .CLK(clknet_3_2__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_tdc.phase_error[7]$_DFFE_PN0P_  (.D(_1327_),
    .Q(_0319_),
    .RESET_B(net212),
    .CLK(clknet_3_2__leaf_tdc_clk));
 sky130_fd_sc_hd__dfstp_2 \u_tdc.state[0]$_DFF_PN1_  (.D(_0865_),
    .Q(_0467_),
    .SET_B(net212),
    .CLK(clknet_3_0__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_tdc.state[1]$_DFF_PN0_  (.D(_0817_),
    .Q(_0536_),
    .RESET_B(net212),
    .CLK(clknet_3_0__leaf_tdc_clk));
 sky130_fd_sc_hd__dfrtp_1 \u_tdc.state[2]$_DFF_PN0_  (.D(_0795_),
    .Q(_0538_),
    .RESET_B(net212),
    .CLK(clknet_3_0__leaf_tdc_clk));
endmodule
module ALU_14_0_14_0_15_unused_CO_X_HAN_CARLSON (A,
    B,
    BI,
    CI,
    Y);
 input [13:0] A;
 input [13:0] B;
 input BI;
 input CI;
 output [14:0] Y;

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

 sky130_fd_sc_hd__fa_1 _073_ (.A(A[12]),
    .B(_064_),
    .CIN(_065_),
    .COUT(_028_),
    .SUM(Y[12]));
 sky130_fd_sc_hd__fa_1 _074_ (.A(A[10]),
    .B(_057_),
    .CIN(_058_),
    .COUT(_017_),
    .SUM(Y[10]));
 sky130_fd_sc_hd__fa_1 _075_ (.A(A[8]),
    .B(_049_),
    .CIN(_050_),
    .COUT(_019_),
    .SUM(Y[8]));
 sky130_fd_sc_hd__fa_1 _076_ (.A(A[6]),
    .B(_043_),
    .CIN(_044_),
    .COUT(_021_),
    .SUM(Y[6]));
 sky130_fd_sc_hd__fa_1 _077_ (.A(A[4]),
    .B(_037_),
    .CIN(_039_),
    .COUT(_022_),
    .SUM(Y[4]));
 sky130_fd_sc_hd__fa_1 _078_ (.A(A[2]),
    .B(_016_),
    .CIN(_034_),
    .COUT(_020_),
    .SUM(Y[2]));
 sky130_fd_sc_hd__fa_1 _079_ (.A(A[1]),
    .B(_024_),
    .CIN(_033_),
    .COUT(_016_),
    .SUM(Y[1]));
 sky130_fd_sc_hd__fa_1 _080_ (.A(A[0]),
    .B(CI),
    .CIN(_032_),
    .COUT(_024_),
    .SUM(Y[0]));
 sky130_fd_sc_hd__ha_1 _081_ (.A(A[13]),
    .B(_066_),
    .COUT(_000_),
    .SUM(_030_));
 sky130_fd_sc_hd__ha_1 _082_ (.A(A[7]),
    .B(_045_),
    .COUT(_001_),
    .SUM(_012_));
 sky130_fd_sc_hd__ha_1 _083_ (.A(A[3]),
    .B(_035_),
    .COUT(_002_),
    .SUM(_025_));
 sky130_fd_sc_hd__ha_1 _084_ (.A(A[9]),
    .B(_051_),
    .COUT(_003_),
    .SUM(_013_));
 sky130_fd_sc_hd__ha_1 _085_ (.A(A[12]),
    .B(_065_),
    .COUT(_004_),
    .SUM(_027_));
 sky130_fd_sc_hd__ha_1 _086_ (.A(A[6]),
    .B(_044_),
    .COUT(_005_),
    .SUM(_023_));
 sky130_fd_sc_hd__ha_1 _087_ (.A(A[8]),
    .B(_050_),
    .COUT(_006_),
    .SUM(_031_));
 sky130_fd_sc_hd__ha_1 _088_ (.A(A[2]),
    .B(_034_),
    .COUT(_007_),
    .SUM(_026_));
 sky130_fd_sc_hd__ha_1 _089_ (.A(A[11]),
    .B(_059_),
    .COUT(_008_),
    .SUM(_018_));
 sky130_fd_sc_hd__ha_1 _090_ (.A(A[5]),
    .B(_040_),
    .COUT(_009_),
    .SUM(_015_));
 sky130_fd_sc_hd__ha_1 _091_ (.A(A[10]),
    .B(_058_),
    .COUT(_010_),
    .SUM(_014_));
 sky130_fd_sc_hd__ha_1 _092_ (.A(A[4]),
    .B(_039_),
    .COUT(_011_),
    .SUM(_029_));
 sky130_fd_sc_hd__xor2_1 _093_ (.A(BI),
    .B(B[0]),
    .X(_032_));
 sky130_fd_sc_hd__xor2_1 _094_ (.A(BI),
    .B(B[1]),
    .X(_033_));
 sky130_fd_sc_hd__xor2_1 _095_ (.A(BI),
    .B(B[2]),
    .X(_034_));
 sky130_fd_sc_hd__xor2_1 _096_ (.A(BI),
    .B(B[3]),
    .X(_035_));
 sky130_fd_sc_hd__a21o_1 _097_ (.A1(_025_),
    .A2(_007_),
    .B1(_002_),
    .X(_036_));
 sky130_fd_sc_hd__clkinv_1 _098_ (.A(_038_),
    .Y(_037_));
 sky130_fd_sc_hd__a31oi_1 _099_ (.A1(_016_),
    .A2(_025_),
    .A3(_026_),
    .B1(_036_),
    .Y(_038_));
 sky130_fd_sc_hd__xor2_1 _100_ (.A(BI),
    .B(B[4]),
    .X(_039_));
 sky130_fd_sc_hd__xor2_1 _101_ (.A(BI),
    .B(B[5]),
    .X(_040_));
 sky130_fd_sc_hd__a21oi_1 _102_ (.A1(_015_),
    .A2(_011_),
    .B1(_009_),
    .Y(_041_));
 sky130_fd_sc_hd__nand2_1 _103_ (.A(_015_),
    .B(_029_),
    .Y(_042_));
 sky130_fd_sc_hd__o21ai_0 _104_ (.A1(_038_),
    .A2(_042_),
    .B1(_041_),
    .Y(_043_));
 sky130_fd_sc_hd__xor2_1 _105_ (.A(BI),
    .B(B[6]),
    .X(_044_));
 sky130_fd_sc_hd__xor2_1 _106_ (.A(BI),
    .B(B[7]),
    .X(_045_));
 sky130_fd_sc_hd__a21oi_1 _107_ (.A1(_012_),
    .A2(_005_),
    .B1(_001_),
    .Y(_046_));
 sky130_fd_sc_hd__nand2_1 _108_ (.A(_012_),
    .B(_023_),
    .Y(_047_));
 sky130_fd_sc_hd__o21a_1 _109_ (.A1(_041_),
    .A2(_047_),
    .B1(_046_),
    .X(_048_));
 sky130_fd_sc_hd__o31ai_1 _110_ (.A1(_038_),
    .A2(_042_),
    .A3(_047_),
    .B1(_048_),
    .Y(_049_));
 sky130_fd_sc_hd__xor2_1 _111_ (.A(BI),
    .B(B[8]),
    .X(_050_));
 sky130_fd_sc_hd__xor2_1 _112_ (.A(BI),
    .B(B[9]),
    .X(_051_));
 sky130_fd_sc_hd__a21oi_1 _113_ (.A1(_013_),
    .A2(_006_),
    .B1(_003_),
    .Y(_052_));
 sky130_fd_sc_hd__nand2_1 _114_ (.A(_013_),
    .B(_031_),
    .Y(_053_));
 sky130_fd_sc_hd__o21ai_0 _115_ (.A1(_046_),
    .A2(_053_),
    .B1(_052_),
    .Y(_054_));
 sky130_fd_sc_hd__clkinv_1 _116_ (.A(_056_),
    .Y(_055_));
 sky130_fd_sc_hd__nand4_1 _117_ (.A(_012_),
    .B(_023_),
    .C(_013_),
    .D(_031_),
    .Y(_056_));
 sky130_fd_sc_hd__a21o_1 _118_ (.A1(_043_),
    .A2(_055_),
    .B1(_054_),
    .X(_057_));
 sky130_fd_sc_hd__xor2_1 _119_ (.A(BI),
    .B(B[10]),
    .X(_058_));
 sky130_fd_sc_hd__xor2_1 _120_ (.A(BI),
    .B(B[11]),
    .X(_059_));
 sky130_fd_sc_hd__a21oi_1 _121_ (.A1(_018_),
    .A2(_010_),
    .B1(_008_),
    .Y(_060_));
 sky130_fd_sc_hd__nand2_1 _122_ (.A(_018_),
    .B(_014_),
    .Y(_061_));
 sky130_fd_sc_hd__o21ai_0 _123_ (.A1(_052_),
    .A2(_061_),
    .B1(_060_),
    .Y(_062_));
 sky130_fd_sc_hd__nor2_1 _124_ (.A(_053_),
    .B(_061_),
    .Y(_063_));
 sky130_fd_sc_hd__a21o_1 _125_ (.A1(_049_),
    .A2(_063_),
    .B1(_062_),
    .X(_064_));
 sky130_fd_sc_hd__xor2_1 _126_ (.A(BI),
    .B(B[12]),
    .X(_065_));
 sky130_fd_sc_hd__xor2_1 _127_ (.A(BI),
    .B(B[13]),
    .X(_066_));
 sky130_fd_sc_hd__xor2_1 _128_ (.A(_020_),
    .B(_025_),
    .X(Y[3]));
 sky130_fd_sc_hd__xor2_1 _129_ (.A(_022_),
    .B(_015_),
    .X(Y[5]));
 sky130_fd_sc_hd__xor2_1 _130_ (.A(_021_),
    .B(_012_),
    .X(Y[7]));
 sky130_fd_sc_hd__xor2_1 _131_ (.A(_019_),
    .B(_013_),
    .X(Y[9]));
 sky130_fd_sc_hd__xor2_1 _132_ (.A(_017_),
    .B(_018_),
    .X(Y[11]));
 sky130_fd_sc_hd__xor2_1 _133_ (.A(_028_),
    .B(_030_),
    .X(Y[13]));
 sky130_fd_sc_hd__nand2_1 _134_ (.A(_030_),
    .B(_027_),
    .Y(_067_));
 sky130_fd_sc_hd__nor2_1 _135_ (.A(_061_),
    .B(_067_),
    .Y(_068_));
 sky130_fd_sc_hd__nand2_1 _136_ (.A(_054_),
    .B(_068_),
    .Y(_069_));
 sky130_fd_sc_hd__a21oi_1 _137_ (.A1(_030_),
    .A2(_004_),
    .B1(_000_),
    .Y(_070_));
 sky130_fd_sc_hd__o211ai_1 _138_ (.A1(_060_),
    .A2(_067_),
    .B1(_069_),
    .C1(_070_),
    .Y(_071_));
 sky130_fd_sc_hd__a31oi_1 _139_ (.A1(_043_),
    .A2(_055_),
    .A3(_068_),
    .B1(_071_),
    .Y(_072_));
 sky130_fd_sc_hd__xnor2_1 _140_ (.A(BI),
    .B(_072_),
    .Y(Y[14]));
endmodule
module ALU_15_1_16_1_17_unused_CO_X_HAN_CARLSON (A,
    B,
    BI,
    CI,
    Y);
 input [14:0] A;
 input [15:0] B;
 input BI;
 input CI;
 output [16:0] Y;

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
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;

 sky130_fd_sc_hd__fa_1 _090_ (.A(A[14]),
    .B(_080_),
    .CIN(_081_),
    .COUT(_030_),
    .SUM(Y[14]));
 sky130_fd_sc_hd__fa_1 _091_ (.A(A[12]),
    .B(_073_),
    .CIN(_074_),
    .COUT(_032_),
    .SUM(Y[12]));
 sky130_fd_sc_hd__fa_1 _092_ (.A(A[10]),
    .B(_066_),
    .CIN(_067_),
    .COUT(_015_),
    .SUM(Y[10]));
 sky130_fd_sc_hd__fa_1 _093_ (.A(A[8]),
    .B(_058_),
    .CIN(_059_),
    .COUT(_031_),
    .SUM(Y[8]));
 sky130_fd_sc_hd__fa_1 _094_ (.A(A[6]),
    .B(_051_),
    .CIN(_052_),
    .COUT(_016_),
    .SUM(Y[6]));
 sky130_fd_sc_hd__fa_1 _095_ (.A(A[4]),
    .B(_043_),
    .CIN(_045_),
    .COUT(_027_),
    .SUM(Y[4]));
 sky130_fd_sc_hd__fa_1 _096_ (.A(A[2]),
    .B(_026_),
    .CIN(_039_),
    .COUT(_028_),
    .SUM(Y[2]));
 sky130_fd_sc_hd__fa_1 _097_ (.A(A[1]),
    .B(_034_),
    .CIN(_038_),
    .COUT(_026_),
    .SUM(Y[1]));
 sky130_fd_sc_hd__fa_1 _098_ (.A(A[0]),
    .B(CI),
    .CIN(_037_),
    .COUT(_034_),
    .SUM(Y[0]));
 sky130_fd_sc_hd__ha_1 _099_ (.A(A[14]),
    .B(_082_),
    .COUT(_000_),
    .SUM(_017_));
 sky130_fd_sc_hd__ha_1 _100_ (.A(A[5]),
    .B(_046_),
    .COUT(_001_),
    .SUM(_029_));
 sky130_fd_sc_hd__ha_1 _101_ (.A(A[14]),
    .B(_081_),
    .COUT(_002_),
    .SUM(_036_));
 sky130_fd_sc_hd__ha_1 _102_ (.A(A[8]),
    .B(_059_),
    .COUT(_003_),
    .SUM(_020_));
 sky130_fd_sc_hd__ha_1 _103_ (.A(A[10]),
    .B(_067_),
    .COUT(_004_),
    .SUM(_014_));
 sky130_fd_sc_hd__ha_1 _104_ (.A(A[2]),
    .B(_039_),
    .COUT(_005_),
    .SUM(_019_));
 sky130_fd_sc_hd__ha_1 _105_ (.A(A[4]),
    .B(_045_),
    .COUT(_006_),
    .SUM(_022_));
 sky130_fd_sc_hd__ha_1 _106_ (.A(A[3]),
    .B(_040_),
    .COUT(_007_),
    .SUM(_033_));
 sky130_fd_sc_hd__ha_1 _107_ (.A(A[13]),
    .B(_075_),
    .COUT(_008_),
    .SUM(_024_));
 sky130_fd_sc_hd__ha_1 _108_ (.A(A[6]),
    .B(_052_),
    .COUT(_009_),
    .SUM(_025_));
 sky130_fd_sc_hd__ha_1 _109_ (.A(A[11]),
    .B(_068_),
    .COUT(_010_),
    .SUM(_023_));
 sky130_fd_sc_hd__ha_1 _110_ (.A(A[7]),
    .B(_053_),
    .COUT(_011_),
    .SUM(_021_));
 sky130_fd_sc_hd__ha_1 _111_ (.A(A[9]),
    .B(_060_),
    .COUT(_012_),
    .SUM(_018_));
 sky130_fd_sc_hd__ha_1 _112_ (.A(A[12]),
    .B(_074_),
    .COUT(_013_),
    .SUM(_035_));
 sky130_fd_sc_hd__xor2_1 _113_ (.A(BI),
    .B(B[0]),
    .X(_037_));
 sky130_fd_sc_hd__xor2_1 _114_ (.A(BI),
    .B(B[1]),
    .X(_038_));
 sky130_fd_sc_hd__xor2_1 _115_ (.A(BI),
    .B(B[2]),
    .X(_039_));
 sky130_fd_sc_hd__xor2_1 _116_ (.A(BI),
    .B(B[3]),
    .X(_040_));
 sky130_fd_sc_hd__a21oi_1 _117_ (.A1(_033_),
    .A2(_005_),
    .B1(_007_),
    .Y(_041_));
 sky130_fd_sc_hd__and2_0 _118_ (.A(_033_),
    .B(_019_),
    .X(_042_));
 sky130_fd_sc_hd__clkinv_1 _119_ (.A(_044_),
    .Y(_043_));
 sky130_fd_sc_hd__a21boi_0 _120_ (.A1(_026_),
    .A2(_042_),
    .B1_N(_041_),
    .Y(_044_));
 sky130_fd_sc_hd__xor2_1 _121_ (.A(BI),
    .B(B[4]),
    .X(_045_));
 sky130_fd_sc_hd__xor2_1 _122_ (.A(BI),
    .B(B[5]),
    .X(_046_));
 sky130_fd_sc_hd__a21oi_1 _123_ (.A1(_029_),
    .A2(_006_),
    .B1(_001_),
    .Y(_047_));
 sky130_fd_sc_hd__nand2_1 _124_ (.A(_029_),
    .B(_022_),
    .Y(_048_));
 sky130_fd_sc_hd__o21ai_0 _125_ (.A1(_041_),
    .A2(_048_),
    .B1(_047_),
    .Y(_049_));
 sky130_fd_sc_hd__and4_1 _126_ (.A(_033_),
    .B(_019_),
    .C(_029_),
    .D(_022_),
    .X(_050_));
 sky130_fd_sc_hd__o21ai_0 _127_ (.A1(_044_),
    .A2(_048_),
    .B1(_047_),
    .Y(_051_));
 sky130_fd_sc_hd__xor2_1 _128_ (.A(BI),
    .B(B[6]),
    .X(_052_));
 sky130_fd_sc_hd__xor2_1 _129_ (.A(BI),
    .B(B[7]),
    .X(_053_));
 sky130_fd_sc_hd__nand2_1 _130_ (.A(_021_),
    .B(_025_),
    .Y(_054_));
 sky130_fd_sc_hd__nand4_1 _131_ (.A(_029_),
    .B(_022_),
    .C(_021_),
    .D(_025_),
    .Y(_055_));
 sky130_fd_sc_hd__a21oi_1 _132_ (.A1(_021_),
    .A2(_009_),
    .B1(_011_),
    .Y(_056_));
 sky130_fd_sc_hd__o221a_1 _133_ (.A1(_047_),
    .A2(_054_),
    .B1(_055_),
    .B2(_044_),
    .C1(_056_),
    .X(_057_));
 sky130_fd_sc_hd__clkinv_1 _134_ (.A(_057_),
    .Y(_058_));
 sky130_fd_sc_hd__xor2_1 _135_ (.A(BI),
    .B(B[8]),
    .X(_059_));
 sky130_fd_sc_hd__xor2_1 _136_ (.A(BI),
    .B(B[9]),
    .X(_060_));
 sky130_fd_sc_hd__a21oi_1 _137_ (.A1(_018_),
    .A2(_003_),
    .B1(_012_),
    .Y(_061_));
 sky130_fd_sc_hd__nand2_1 _138_ (.A(_018_),
    .B(_020_),
    .Y(_062_));
 sky130_fd_sc_hd__o21ai_0 _139_ (.A1(_056_),
    .A2(_062_),
    .B1(_061_),
    .Y(_063_));
 sky130_fd_sc_hd__and4_1 _140_ (.A(_021_),
    .B(_025_),
    .C(_018_),
    .D(_020_),
    .X(_064_));
 sky130_fd_sc_hd__and3_1 _141_ (.A(_026_),
    .B(_050_),
    .C(_064_),
    .X(_065_));
 sky130_fd_sc_hd__a211o_1 _142_ (.A1(_049_),
    .A2(_064_),
    .B1(_065_),
    .C1(_063_),
    .X(_066_));
 sky130_fd_sc_hd__xor2_1 _143_ (.A(BI),
    .B(B[10]),
    .X(_067_));
 sky130_fd_sc_hd__xor2_1 _144_ (.A(BI),
    .B(B[11]),
    .X(_068_));
 sky130_fd_sc_hd__a21oi_1 _145_ (.A1(_023_),
    .A2(_004_),
    .B1(_010_),
    .Y(_069_));
 sky130_fd_sc_hd__nand2_1 _146_ (.A(_023_),
    .B(_014_),
    .Y(_070_));
 sky130_fd_sc_hd__o21a_1 _147_ (.A1(_061_),
    .A2(_070_),
    .B1(_069_),
    .X(_071_));
 sky130_fd_sc_hd__nand4_1 _148_ (.A(_018_),
    .B(_020_),
    .C(_023_),
    .D(_014_),
    .Y(_072_));
 sky130_fd_sc_hd__o21ai_0 _149_ (.A1(_057_),
    .A2(_072_),
    .B1(_071_),
    .Y(_073_));
 sky130_fd_sc_hd__xor2_1 _150_ (.A(BI),
    .B(B[12]),
    .X(_074_));
 sky130_fd_sc_hd__xor2_1 _151_ (.A(BI),
    .B(B[13]),
    .X(_075_));
 sky130_fd_sc_hd__a21oi_1 _152_ (.A1(_024_),
    .A2(_013_),
    .B1(_008_),
    .Y(_076_));
 sky130_fd_sc_hd__nand2_1 _153_ (.A(_024_),
    .B(_035_),
    .Y(_077_));
 sky130_fd_sc_hd__o21ai_0 _154_ (.A1(_069_),
    .A2(_077_),
    .B1(_076_),
    .Y(_078_));
 sky130_fd_sc_hd__nor2_1 _155_ (.A(_070_),
    .B(_077_),
    .Y(_079_));
 sky130_fd_sc_hd__a21o_1 _156_ (.A1(_066_),
    .A2(_079_),
    .B1(_078_),
    .X(_080_));
 sky130_fd_sc_hd__xor2_1 _157_ (.A(BI),
    .B(B[14]),
    .X(_081_));
 sky130_fd_sc_hd__xor2_1 _158_ (.A(BI),
    .B(B[15]),
    .X(_082_));
 sky130_fd_sc_hd__xor2_1 _159_ (.A(_028_),
    .B(_033_),
    .X(Y[3]));
 sky130_fd_sc_hd__xor2_1 _160_ (.A(_027_),
    .B(_029_),
    .X(Y[5]));
 sky130_fd_sc_hd__xor2_1 _161_ (.A(_016_),
    .B(_021_),
    .X(Y[7]));
 sky130_fd_sc_hd__xor2_1 _162_ (.A(_031_),
    .B(_018_),
    .X(Y[9]));
 sky130_fd_sc_hd__xor2_1 _163_ (.A(_015_),
    .B(_023_),
    .X(Y[11]));
 sky130_fd_sc_hd__xor2_1 _164_ (.A(_032_),
    .B(_024_),
    .X(Y[13]));
 sky130_fd_sc_hd__xor2_1 _165_ (.A(_030_),
    .B(_017_),
    .X(Y[15]));
 sky130_fd_sc_hd__nand2_1 _166_ (.A(_017_),
    .B(_036_),
    .Y(_083_));
 sky130_fd_sc_hd__nand4_1 _167_ (.A(_024_),
    .B(_035_),
    .C(_017_),
    .D(_036_),
    .Y(_084_));
 sky130_fd_sc_hd__nor3_1 _168_ (.A(_057_),
    .B(_072_),
    .C(_084_),
    .Y(_085_));
 sky130_fd_sc_hd__nor2_1 _169_ (.A(_071_),
    .B(_084_),
    .Y(_086_));
 sky130_fd_sc_hd__a21oi_1 _170_ (.A1(_017_),
    .A2(_002_),
    .B1(_000_),
    .Y(_087_));
 sky130_fd_sc_hd__o21ai_0 _171_ (.A1(_076_),
    .A2(_083_),
    .B1(_087_),
    .Y(_088_));
 sky130_fd_sc_hd__nor3_1 _172_ (.A(_085_),
    .B(_086_),
    .C(_088_),
    .Y(_089_));
 sky130_fd_sc_hd__xnor2_2 _173_ (.A(_017_),
    .B(_089_),
    .Y(Y[16]));
endmodule
module \ALU_16_0_11_0_16_unused_CO[14:0]_X_Y_HAN_CARLSON  (A,
    B,
    BI,
    CI,
    \CO[15] );
 input [15:0] A;
 input [10:0] B;
 input BI;
 input CI;
 output \CO[15] ;

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

 sky130_fd_sc_hd__ha_1 _064_ (.A(A[6]),
    .B(_036_),
    .COUT(_000_),
    .SUM(_020_));
 sky130_fd_sc_hd__ha_1 _065_ (.A(A[5]),
    .B(_037_),
    .COUT(_001_),
    .SUM(_030_));
 sky130_fd_sc_hd__ha_1 _066_ (.A(A[4]),
    .B(_038_),
    .COUT(_002_),
    .SUM(_021_));
 sky130_fd_sc_hd__ha_1 _067_ (.A(A[3]),
    .B(_039_),
    .COUT(_003_),
    .SUM(_027_));
 sky130_fd_sc_hd__ha_1 _068_ (.A(A[2]),
    .B(_040_),
    .COUT(_004_),
    .SUM(_025_));
 sky130_fd_sc_hd__ha_1 _069_ (.A(A[1]),
    .B(_041_),
    .COUT(_005_),
    .SUM(_022_));
 sky130_fd_sc_hd__ha_1 _070_ (.A(A[0]),
    .B(_042_),
    .COUT(_006_),
    .SUM(_026_));
 sky130_fd_sc_hd__ha_1 _071_ (.A(A[13]),
    .B(BI),
    .COUT(_007_),
    .SUM(_028_));
 sky130_fd_sc_hd__ha_1 _072_ (.A(A[12]),
    .B(BI),
    .COUT(_008_),
    .SUM(_019_));
 sky130_fd_sc_hd__ha_1 _073_ (.A(A[11]),
    .B(BI),
    .COUT(_009_),
    .SUM(_017_));
 sky130_fd_sc_hd__ha_1 _074_ (.A(A[10]),
    .B(_032_),
    .COUT(_010_),
    .SUM(_018_));
 sky130_fd_sc_hd__ha_1 _075_ (.A(A[9]),
    .B(_033_),
    .COUT(_011_),
    .SUM(_029_));
 sky130_fd_sc_hd__ha_1 _076_ (.A(A[8]),
    .B(_034_),
    .COUT(_012_),
    .SUM(_031_));
 sky130_fd_sc_hd__ha_1 _077_ (.A(A[14]),
    .B(BI),
    .COUT(_013_),
    .SUM(_024_));
 sky130_fd_sc_hd__ha_1 _078_ (.A(A[15]),
    .B(BI),
    .COUT(_014_),
    .SUM(_023_));
 sky130_fd_sc_hd__ha_1 _079_ (.A(A[7]),
    .B(_035_),
    .COUT(_015_),
    .SUM(_016_));
 sky130_fd_sc_hd__xor2_1 _080_ (.A(BI),
    .B(B[10]),
    .X(_032_));
 sky130_fd_sc_hd__xor2_1 _081_ (.A(BI),
    .B(B[9]),
    .X(_033_));
 sky130_fd_sc_hd__xor2_1 _082_ (.A(BI),
    .B(B[8]),
    .X(_034_));
 sky130_fd_sc_hd__xor2_1 _083_ (.A(BI),
    .B(B[7]),
    .X(_035_));
 sky130_fd_sc_hd__xor2_1 _084_ (.A(BI),
    .B(B[6]),
    .X(_036_));
 sky130_fd_sc_hd__xor2_1 _085_ (.A(BI),
    .B(B[5]),
    .X(_037_));
 sky130_fd_sc_hd__xor2_1 _086_ (.A(BI),
    .B(B[4]),
    .X(_038_));
 sky130_fd_sc_hd__xor2_1 _087_ (.A(BI),
    .B(B[3]),
    .X(_039_));
 sky130_fd_sc_hd__xor2_1 _088_ (.A(BI),
    .B(B[2]),
    .X(_040_));
 sky130_fd_sc_hd__xor2_1 _089_ (.A(BI),
    .B(B[1]),
    .X(_041_));
 sky130_fd_sc_hd__xor2_1 _090_ (.A(BI),
    .B(B[0]),
    .X(_042_));
 sky130_fd_sc_hd__nand2_1 _091_ (.A(_023_),
    .B(_024_),
    .Y(_043_));
 sky130_fd_sc_hd__nand4_1 _092_ (.A(_023_),
    .B(_024_),
    .C(_028_),
    .D(_019_),
    .Y(_044_));
 sky130_fd_sc_hd__a21oi_1 _093_ (.A1(_017_),
    .A2(_010_),
    .B1(_009_),
    .Y(_045_));
 sky130_fd_sc_hd__a21o_1 _094_ (.A1(_029_),
    .A2(_012_),
    .B1(_011_),
    .X(_046_));
 sky130_fd_sc_hd__nand3_1 _095_ (.A(_017_),
    .B(_018_),
    .C(_046_),
    .Y(_047_));
 sky130_fd_sc_hd__a21oi_1 _096_ (.A1(_045_),
    .A2(_047_),
    .B1(_044_),
    .Y(_048_));
 sky130_fd_sc_hd__a21oi_1 _097_ (.A1(_028_),
    .A2(_008_),
    .B1(_007_),
    .Y(_049_));
 sky130_fd_sc_hd__nor2_1 _098_ (.A(_043_),
    .B(_049_),
    .Y(_050_));
 sky130_fd_sc_hd__a2111oi_0 _099_ (.A1(_023_),
    .A2(_013_),
    .B1(_048_),
    .C1(_050_),
    .D1(_014_),
    .Y(_051_));
 sky130_fd_sc_hd__a21o_1 _100_ (.A1(CI),
    .A2(_026_),
    .B1(_006_),
    .X(_052_));
 sky130_fd_sc_hd__a21oi_1 _101_ (.A1(_022_),
    .A2(_052_),
    .B1(_005_),
    .Y(_053_));
 sky130_fd_sc_hd__nand2_1 _102_ (.A(_027_),
    .B(_025_),
    .Y(_054_));
 sky130_fd_sc_hd__a21oi_1 _103_ (.A1(_027_),
    .A2(_004_),
    .B1(_003_),
    .Y(_055_));
 sky130_fd_sc_hd__o21ai_0 _104_ (.A1(_053_),
    .A2(_054_),
    .B1(_055_),
    .Y(_056_));
 sky130_fd_sc_hd__nand2_1 _105_ (.A(_016_),
    .B(_020_),
    .Y(_057_));
 sky130_fd_sc_hd__and3_1 _106_ (.A(_016_),
    .B(_020_),
    .C(_021_),
    .X(_058_));
 sky130_fd_sc_hd__a21oi_1 _107_ (.A1(_030_),
    .A2(_002_),
    .B1(_001_),
    .Y(_059_));
 sky130_fd_sc_hd__a21oi_1 _108_ (.A1(_016_),
    .A2(_000_),
    .B1(_015_),
    .Y(_060_));
 sky130_fd_sc_hd__o21ai_0 _109_ (.A1(_057_),
    .A2(_059_),
    .B1(_060_),
    .Y(_061_));
 sky130_fd_sc_hd__a31oi_1 _110_ (.A1(_030_),
    .A2(_056_),
    .A3(_058_),
    .B1(_061_),
    .Y(_062_));
 sky130_fd_sc_hd__nand4_1 _111_ (.A(_017_),
    .B(_018_),
    .C(_029_),
    .D(_031_),
    .Y(_063_));
 sky130_fd_sc_hd__o31ai_1 _112_ (.A1(_044_),
    .A2(_062_),
    .A3(_063_),
    .B1(_051_),
    .Y(\CO[15] ));
endmodule
module ALU_16_1_24_1_24_unused_CO_X_HAN_CARLSON (A,
    B,
    BI,
    CI,
    Y);
 input [15:0] A;
 input [23:0] B;
 input BI;
 input CI;
 output [23:0] Y;

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
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
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
 wire _127_;
 wire _128_;

 sky130_fd_sc_hd__fa_1 _129_ (.A(A[15]),
    .B(_125_),
    .CIN(_126_),
    .COUT(_048_),
    .SUM(Y[22]));
 sky130_fd_sc_hd__fa_1 _130_ (.A(A[15]),
    .B(_117_),
    .CIN(_118_),
    .COUT(_047_),
    .SUM(Y[20]));
 sky130_fd_sc_hd__fa_1 _131_ (.A(A[15]),
    .B(_109_),
    .CIN(_110_),
    .COUT(_051_),
    .SUM(Y[18]));
 sky130_fd_sc_hd__fa_1 _132_ (.A(A[15]),
    .B(_100_),
    .CIN(_101_),
    .COUT(_046_),
    .SUM(Y[16]));
 sky130_fd_sc_hd__fa_1 _133_ (.A(A[14]),
    .B(_094_),
    .CIN(_095_),
    .COUT(_040_),
    .SUM(Y[14]));
 sky130_fd_sc_hd__fa_1 _134_ (.A(A[12]),
    .B(_086_),
    .CIN(_087_),
    .COUT(_039_),
    .SUM(Y[12]));
 sky130_fd_sc_hd__fa_1 _135_ (.A(A[10]),
    .B(_078_),
    .CIN(_079_),
    .COUT(_035_),
    .SUM(Y[10]));
 sky130_fd_sc_hd__fa_1 _136_ (.A(A[8]),
    .B(_071_),
    .CIN(_072_),
    .COUT(_034_),
    .SUM(Y[8]));
 sky130_fd_sc_hd__fa_1 _137_ (.A(A[6]),
    .B(_065_),
    .CIN(_066_),
    .COUT(_033_),
    .SUM(Y[6]));
 sky130_fd_sc_hd__fa_1 _138_ (.A(A[4]),
    .B(_060_),
    .CIN(_061_),
    .COUT(_031_),
    .SUM(Y[4]));
 sky130_fd_sc_hd__fa_1 _139_ (.A(A[2]),
    .B(_050_),
    .CIN(_055_),
    .COUT(_030_),
    .SUM(Y[2]));
 sky130_fd_sc_hd__fa_1 _140_ (.A(A[1]),
    .B(_029_),
    .CIN(_054_),
    .COUT(_050_),
    .SUM(Y[1]));
 sky130_fd_sc_hd__fa_1 _141_ (.A(A[0]),
    .B(CI),
    .CIN(_053_),
    .COUT(_029_),
    .SUM(Y[0]));
 sky130_fd_sc_hd__ha_1 _142_ (.A(A[15]),
    .B(_119_),
    .COUT(_000_),
    .SUM(_020_));
 sky130_fd_sc_hd__ha_1 _143_ (.A(A[15]),
    .B(_118_),
    .COUT(_001_),
    .SUM(_024_));
 sky130_fd_sc_hd__ha_1 _144_ (.A(A[15]),
    .B(_111_),
    .COUT(_002_),
    .SUM(_028_));
 sky130_fd_sc_hd__ha_1 _145_ (.A(A[15]),
    .B(_110_),
    .COUT(_003_),
    .SUM(_032_));
 sky130_fd_sc_hd__ha_1 _146_ (.A(A[15]),
    .B(_102_),
    .COUT(_004_),
    .SUM(_036_));
 sky130_fd_sc_hd__ha_1 _147_ (.A(A[15]),
    .B(_101_),
    .COUT(_005_),
    .SUM(_037_));
 sky130_fd_sc_hd__ha_1 _148_ (.A(A[15]),
    .B(_096_),
    .COUT(_006_),
    .SUM(_038_));
 sky130_fd_sc_hd__ha_1 _149_ (.A(A[14]),
    .B(_095_),
    .COUT(_007_),
    .SUM(_041_));
 sky130_fd_sc_hd__ha_1 _150_ (.A(A[13]),
    .B(_088_),
    .COUT(_008_),
    .SUM(_042_));
 sky130_fd_sc_hd__ha_1 _151_ (.A(A[12]),
    .B(_087_),
    .COUT(_009_),
    .SUM(_043_));
 sky130_fd_sc_hd__ha_1 _152_ (.A(A[11]),
    .B(_080_),
    .COUT(_010_),
    .SUM(_044_));
 sky130_fd_sc_hd__ha_1 _153_ (.A(A[10]),
    .B(_079_),
    .COUT(_011_),
    .SUM(_045_));
 sky130_fd_sc_hd__ha_1 _154_ (.A(A[9]),
    .B(_073_),
    .COUT(_012_),
    .SUM(_027_));
 sky130_fd_sc_hd__ha_1 _155_ (.A(A[8]),
    .B(_072_),
    .COUT(_013_),
    .SUM(_049_));
 sky130_fd_sc_hd__ha_1 _156_ (.A(A[7]),
    .B(_067_),
    .COUT(_014_),
    .SUM(_052_));
 sky130_fd_sc_hd__ha_1 _157_ (.A(A[6]),
    .B(_066_),
    .COUT(_015_),
    .SUM(_026_));
 sky130_fd_sc_hd__ha_1 _158_ (.A(A[5]),
    .B(_062_),
    .COUT(_016_),
    .SUM(_021_));
 sky130_fd_sc_hd__ha_1 _159_ (.A(A[4]),
    .B(_061_),
    .COUT(_017_),
    .SUM(_022_));
 sky130_fd_sc_hd__ha_1 _160_ (.A(A[3]),
    .B(_056_),
    .COUT(_018_),
    .SUM(_023_));
 sky130_fd_sc_hd__ha_1 _161_ (.A(A[2]),
    .B(_055_),
    .COUT(_019_),
    .SUM(_025_));
 sky130_fd_sc_hd__xor2_1 _162_ (.A(BI),
    .B(B[0]),
    .X(_053_));
 sky130_fd_sc_hd__xor2_1 _163_ (.A(BI),
    .B(B[1]),
    .X(_054_));
 sky130_fd_sc_hd__xor2_1 _164_ (.A(BI),
    .B(B[2]),
    .X(_055_));
 sky130_fd_sc_hd__xor2_1 _165_ (.A(BI),
    .B(B[3]),
    .X(_056_));
 sky130_fd_sc_hd__and2_0 _166_ (.A(_023_),
    .B(_025_),
    .X(_057_));
 sky130_fd_sc_hd__a21oi_1 _167_ (.A1(_023_),
    .A2(_019_),
    .B1(_018_),
    .Y(_058_));
 sky130_fd_sc_hd__a21boi_0 _168_ (.A1(_050_),
    .A2(_057_),
    .B1_N(_058_),
    .Y(_059_));
 sky130_fd_sc_hd__clkinv_1 _169_ (.A(_059_),
    .Y(_060_));
 sky130_fd_sc_hd__xor2_1 _170_ (.A(BI),
    .B(B[4]),
    .X(_061_));
 sky130_fd_sc_hd__xor2_1 _171_ (.A(BI),
    .B(B[5]),
    .X(_062_));
 sky130_fd_sc_hd__a21oi_1 _172_ (.A1(_021_),
    .A2(_017_),
    .B1(_016_),
    .Y(_063_));
 sky130_fd_sc_hd__nand2_1 _173_ (.A(_021_),
    .B(_022_),
    .Y(_064_));
 sky130_fd_sc_hd__o21ai_0 _174_ (.A1(_059_),
    .A2(_064_),
    .B1(_063_),
    .Y(_065_));
 sky130_fd_sc_hd__xor2_1 _175_ (.A(BI),
    .B(B[6]),
    .X(_066_));
 sky130_fd_sc_hd__xor2_1 _176_ (.A(BI),
    .B(B[7]),
    .X(_067_));
 sky130_fd_sc_hd__nand2_1 _177_ (.A(_052_),
    .B(_026_),
    .Y(_068_));
 sky130_fd_sc_hd__a21oi_1 _178_ (.A1(_052_),
    .A2(_015_),
    .B1(_014_),
    .Y(_069_));
 sky130_fd_sc_hd__o21a_1 _179_ (.A1(_063_),
    .A2(_068_),
    .B1(_069_),
    .X(_070_));
 sky130_fd_sc_hd__o31ai_1 _180_ (.A1(_059_),
    .A2(_064_),
    .A3(_068_),
    .B1(_070_),
    .Y(_071_));
 sky130_fd_sc_hd__xor2_1 _181_ (.A(BI),
    .B(B[8]),
    .X(_072_));
 sky130_fd_sc_hd__xor2_1 _182_ (.A(BI),
    .B(B[9]),
    .X(_073_));
 sky130_fd_sc_hd__a21oi_1 _183_ (.A1(_027_),
    .A2(_013_),
    .B1(_012_),
    .Y(_074_));
 sky130_fd_sc_hd__nand2_1 _184_ (.A(_027_),
    .B(_049_),
    .Y(_075_));
 sky130_fd_sc_hd__o21ai_0 _185_ (.A1(_069_),
    .A2(_075_),
    .B1(_074_),
    .Y(_076_));
 sky130_fd_sc_hd__nor2_1 _186_ (.A(_068_),
    .B(_075_),
    .Y(_077_));
 sky130_fd_sc_hd__a21o_1 _187_ (.A1(_065_),
    .A2(_077_),
    .B1(_076_),
    .X(_078_));
 sky130_fd_sc_hd__xor2_1 _188_ (.A(BI),
    .B(B[10]),
    .X(_079_));
 sky130_fd_sc_hd__xor2_1 _189_ (.A(BI),
    .B(B[11]),
    .X(_080_));
 sky130_fd_sc_hd__a21oi_1 _190_ (.A1(_044_),
    .A2(_011_),
    .B1(_010_),
    .Y(_081_));
 sky130_fd_sc_hd__nand2_1 _191_ (.A(_044_),
    .B(_045_),
    .Y(_082_));
 sky130_fd_sc_hd__o21ai_0 _192_ (.A1(_074_),
    .A2(_082_),
    .B1(_081_),
    .Y(_083_));
 sky130_fd_sc_hd__nor2_1 _193_ (.A(_075_),
    .B(_082_),
    .Y(_084_));
 sky130_fd_sc_hd__a21oi_1 _194_ (.A1(_071_),
    .A2(_084_),
    .B1(_083_),
    .Y(_085_));
 sky130_fd_sc_hd__clkinv_1 _195_ (.A(_085_),
    .Y(_086_));
 sky130_fd_sc_hd__xor2_1 _196_ (.A(BI),
    .B(B[12]),
    .X(_087_));
 sky130_fd_sc_hd__xor2_1 _197_ (.A(BI),
    .B(B[13]),
    .X(_088_));
 sky130_fd_sc_hd__nand2_1 _198_ (.A(_042_),
    .B(_043_),
    .Y(_089_));
 sky130_fd_sc_hd__nor2_1 _199_ (.A(_082_),
    .B(_089_),
    .Y(_090_));
 sky130_fd_sc_hd__a21oi_1 _200_ (.A1(_042_),
    .A2(_009_),
    .B1(_008_),
    .Y(_091_));
 sky130_fd_sc_hd__o21a_1 _201_ (.A1(_081_),
    .A2(_089_),
    .B1(_091_),
    .X(_092_));
 sky130_fd_sc_hd__a21bo_1 _202_ (.A1(_076_),
    .A2(_090_),
    .B1_N(_092_),
    .X(_093_));
 sky130_fd_sc_hd__a31o_1 _203_ (.A1(_065_),
    .A2(_077_),
    .A3(_090_),
    .B1(_093_),
    .X(_094_));
 sky130_fd_sc_hd__xor2_1 _204_ (.A(BI),
    .B(B[14]),
    .X(_095_));
 sky130_fd_sc_hd__xor2_1 _205_ (.A(BI),
    .B(B[15]),
    .X(_096_));
 sky130_fd_sc_hd__a21oi_1 _206_ (.A1(_038_),
    .A2(_007_),
    .B1(_006_),
    .Y(_097_));
 sky130_fd_sc_hd__nand2_1 _207_ (.A(_038_),
    .B(_041_),
    .Y(_098_));
 sky130_fd_sc_hd__o21a_1 _208_ (.A1(_091_),
    .A2(_098_),
    .B1(_097_),
    .X(_099_));
 sky130_fd_sc_hd__o31ai_1 _209_ (.A1(_085_),
    .A2(_089_),
    .A3(_098_),
    .B1(_099_),
    .Y(_100_));
 sky130_fd_sc_hd__xor2_1 _210_ (.A(BI),
    .B(B[16]),
    .X(_101_));
 sky130_fd_sc_hd__xor2_1 _211_ (.A(BI),
    .B(B[17]),
    .X(_102_));
 sky130_fd_sc_hd__nand2_1 _212_ (.A(_036_),
    .B(_037_),
    .Y(_103_));
 sky130_fd_sc_hd__nor2_1 _213_ (.A(_098_),
    .B(_103_),
    .Y(_104_));
 sky130_fd_sc_hd__nand4_1 _214_ (.A(_038_),
    .B(_041_),
    .C(_036_),
    .D(_037_),
    .Y(_105_));
 sky130_fd_sc_hd__a21oi_1 _215_ (.A1(_036_),
    .A2(_005_),
    .B1(_004_),
    .Y(_106_));
 sky130_fd_sc_hd__o21a_1 _216_ (.A1(_097_),
    .A2(_103_),
    .B1(_106_),
    .X(_107_));
 sky130_fd_sc_hd__o21ai_0 _217_ (.A1(_092_),
    .A2(_105_),
    .B1(_107_),
    .Y(_108_));
 sky130_fd_sc_hd__a31o_1 _218_ (.A1(_078_),
    .A2(_090_),
    .A3(_104_),
    .B1(_108_),
    .X(_109_));
 sky130_fd_sc_hd__xor2_1 _219_ (.A(BI),
    .B(B[18]),
    .X(_110_));
 sky130_fd_sc_hd__xor2_1 _220_ (.A(BI),
    .B(B[19]),
    .X(_111_));
 sky130_fd_sc_hd__nand2_1 _221_ (.A(_028_),
    .B(_032_),
    .Y(_112_));
 sky130_fd_sc_hd__nor3_1 _222_ (.A(_099_),
    .B(_103_),
    .C(_112_),
    .Y(_113_));
 sky130_fd_sc_hd__a21oi_1 _223_ (.A1(_028_),
    .A2(_003_),
    .B1(_002_),
    .Y(_114_));
 sky130_fd_sc_hd__o21ai_0 _224_ (.A1(_106_),
    .A2(_112_),
    .B1(_114_),
    .Y(_115_));
 sky130_fd_sc_hd__nor4_1 _225_ (.A(_089_),
    .B(_098_),
    .C(_103_),
    .D(_112_),
    .Y(_116_));
 sky130_fd_sc_hd__a211o_1 _226_ (.A1(_086_),
    .A2(_116_),
    .B1(_115_),
    .C1(_113_),
    .X(_117_));
 sky130_fd_sc_hd__xor2_1 _227_ (.A(BI),
    .B(B[20]),
    .X(_118_));
 sky130_fd_sc_hd__xor2_1 _228_ (.A(BI),
    .B(B[21]),
    .X(_119_));
 sky130_fd_sc_hd__nand2_1 _229_ (.A(_020_),
    .B(_024_),
    .Y(_120_));
 sky130_fd_sc_hd__nor3_1 _230_ (.A(_107_),
    .B(_112_),
    .C(_120_),
    .Y(_121_));
 sky130_fd_sc_hd__a21oi_1 _231_ (.A1(_020_),
    .A2(_001_),
    .B1(_000_),
    .Y(_122_));
 sky130_fd_sc_hd__o21ai_0 _232_ (.A1(_114_),
    .A2(_120_),
    .B1(_122_),
    .Y(_123_));
 sky130_fd_sc_hd__nor3_1 _233_ (.A(_105_),
    .B(_112_),
    .C(_120_),
    .Y(_124_));
 sky130_fd_sc_hd__a211o_1 _234_ (.A1(_094_),
    .A2(_124_),
    .B1(_123_),
    .C1(_121_),
    .X(_125_));
 sky130_fd_sc_hd__xor2_1 _235_ (.A(BI),
    .B(B[22]),
    .X(_126_));
 sky130_fd_sc_hd__xor2_1 _236_ (.A(_030_),
    .B(_023_),
    .X(Y[3]));
 sky130_fd_sc_hd__xor2_1 _237_ (.A(_031_),
    .B(_021_),
    .X(Y[5]));
 sky130_fd_sc_hd__xor2_1 _238_ (.A(_033_),
    .B(_052_),
    .X(Y[7]));
 sky130_fd_sc_hd__xor2_1 _239_ (.A(_034_),
    .B(_027_),
    .X(Y[9]));
 sky130_fd_sc_hd__xor2_1 _240_ (.A(_035_),
    .B(_044_),
    .X(Y[11]));
 sky130_fd_sc_hd__xor2_1 _241_ (.A(_039_),
    .B(_042_),
    .X(Y[13]));
 sky130_fd_sc_hd__xor2_1 _242_ (.A(_040_),
    .B(_038_),
    .X(Y[15]));
 sky130_fd_sc_hd__xor2_1 _243_ (.A(_046_),
    .B(_036_),
    .X(Y[17]));
 sky130_fd_sc_hd__xor2_1 _244_ (.A(_051_),
    .B(_028_),
    .X(Y[19]));
 sky130_fd_sc_hd__xor2_1 _245_ (.A(_047_),
    .B(_020_),
    .X(Y[21]));
 sky130_fd_sc_hd__xor2_1 _246_ (.A(BI),
    .B(B[23]),
    .X(_127_));
 sky130_fd_sc_hd__xnor2_1 _247_ (.A(A[15]),
    .B(_127_),
    .Y(_128_));
 sky130_fd_sc_hd__xnor2_1 _248_ (.A(_048_),
    .B(_128_),
    .Y(Y[23]));
endmodule
module \ALU_24_1_15_1_24_unused_CO[21:0]_Y[22:0]_HAN_CARLSON  (A,
    B,
    BI,
    CI,
    X,
    \Y[23] ,
    \CO[23:22] );
 input [23:0] A;
 input [14:0] B;
 input BI;
 input CI;
 output [23:0] X;
 output \Y[23] ;
 output [1:0] \CO[23:22] ;

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

 sky130_fd_sc_hd__ha_1 _078_ (.A(A[0]),
    .B(_038_),
    .COUT(_000_),
    .SUM(X[0]));
 sky130_fd_sc_hd__ha_1 _079_ (.A(A[1]),
    .B(_037_),
    .COUT(_001_),
    .SUM(X[1]));
 sky130_fd_sc_hd__ha_1 _080_ (.A(A[2]),
    .B(_036_),
    .COUT(_002_),
    .SUM(X[2]));
 sky130_fd_sc_hd__ha_1 _081_ (.A(A[3]),
    .B(_035_),
    .COUT(_003_),
    .SUM(X[3]));
 sky130_fd_sc_hd__ha_1 _082_ (.A(A[4]),
    .B(_034_),
    .COUT(_004_),
    .SUM(X[4]));
 sky130_fd_sc_hd__ha_1 _083_ (.A(A[5]),
    .B(_033_),
    .COUT(_005_),
    .SUM(X[5]));
 sky130_fd_sc_hd__ha_1 _084_ (.A(A[6]),
    .B(_032_),
    .COUT(_006_),
    .SUM(X[6]));
 sky130_fd_sc_hd__ha_1 _085_ (.A(A[7]),
    .B(_031_),
    .COUT(_007_),
    .SUM(X[7]));
 sky130_fd_sc_hd__ha_1 _086_ (.A(A[8]),
    .B(_030_),
    .COUT(_008_),
    .SUM(X[8]));
 sky130_fd_sc_hd__ha_1 _087_ (.A(A[9]),
    .B(_029_),
    .COUT(_009_),
    .SUM(X[9]));
 sky130_fd_sc_hd__ha_1 _088_ (.A(A[10]),
    .B(_028_),
    .COUT(_010_),
    .SUM(X[10]));
 sky130_fd_sc_hd__ha_1 _089_ (.A(A[11]),
    .B(_027_),
    .COUT(_011_),
    .SUM(X[11]));
 sky130_fd_sc_hd__ha_1 _090_ (.A(A[12]),
    .B(_026_),
    .COUT(_012_),
    .SUM(X[12]));
 sky130_fd_sc_hd__ha_1 _091_ (.A(A[13]),
    .B(_025_),
    .COUT(_013_),
    .SUM(X[13]));
 sky130_fd_sc_hd__ha_1 _092_ (.A(A[14]),
    .B(_024_),
    .COUT(_014_),
    .SUM(X[14]));
 sky130_fd_sc_hd__ha_1 _093_ (.A(A[15]),
    .B(_024_),
    .COUT(_015_),
    .SUM(X[15]));
 sky130_fd_sc_hd__ha_1 _094_ (.A(A[16]),
    .B(_024_),
    .COUT(_016_),
    .SUM(X[16]));
 sky130_fd_sc_hd__ha_1 _095_ (.A(A[17]),
    .B(_024_),
    .COUT(_017_),
    .SUM(X[17]));
 sky130_fd_sc_hd__ha_1 _096_ (.A(A[18]),
    .B(_024_),
    .COUT(_018_),
    .SUM(X[18]));
 sky130_fd_sc_hd__ha_1 _097_ (.A(A[19]),
    .B(_024_),
    .COUT(_019_),
    .SUM(X[19]));
 sky130_fd_sc_hd__ha_1 _098_ (.A(A[20]),
    .B(_024_),
    .COUT(_020_),
    .SUM(X[20]));
 sky130_fd_sc_hd__ha_1 _099_ (.A(A[21]),
    .B(_024_),
    .COUT(_021_),
    .SUM(X[21]));
 sky130_fd_sc_hd__ha_1 _100_ (.A(A[22]),
    .B(_024_),
    .COUT(_022_),
    .SUM(X[22]));
 sky130_fd_sc_hd__ha_1 _101_ (.A(A[23]),
    .B(_024_),
    .COUT(_023_),
    .SUM(X[23]));
 sky130_fd_sc_hd__xor2_1 _102_ (.A(BI),
    .B(B[14]),
    .X(_024_));
 sky130_fd_sc_hd__xor2_1 _103_ (.A(BI),
    .B(B[13]),
    .X(_025_));
 sky130_fd_sc_hd__xor2_1 _104_ (.A(BI),
    .B(B[12]),
    .X(_026_));
 sky130_fd_sc_hd__xor2_1 _105_ (.A(BI),
    .B(B[11]),
    .X(_027_));
 sky130_fd_sc_hd__xor2_1 _106_ (.A(BI),
    .B(B[10]),
    .X(_028_));
 sky130_fd_sc_hd__xor2_1 _107_ (.A(BI),
    .B(B[9]),
    .X(_029_));
 sky130_fd_sc_hd__xor2_1 _108_ (.A(BI),
    .B(B[8]),
    .X(_030_));
 sky130_fd_sc_hd__xor2_1 _109_ (.A(BI),
    .B(B[7]),
    .X(_031_));
 sky130_fd_sc_hd__xor2_1 _110_ (.A(BI),
    .B(B[6]),
    .X(_032_));
 sky130_fd_sc_hd__xor2_1 _111_ (.A(BI),
    .B(B[5]),
    .X(_033_));
 sky130_fd_sc_hd__xor2_1 _112_ (.A(BI),
    .B(B[4]),
    .X(_034_));
 sky130_fd_sc_hd__xor2_1 _113_ (.A(BI),
    .B(B[3]),
    .X(_035_));
 sky130_fd_sc_hd__xor2_1 _114_ (.A(BI),
    .B(B[2]),
    .X(_036_));
 sky130_fd_sc_hd__xor2_1 _115_ (.A(BI),
    .B(B[1]),
    .X(_037_));
 sky130_fd_sc_hd__xor2_1 _116_ (.A(BI),
    .B(B[0]),
    .X(_038_));
 sky130_fd_sc_hd__nand2_1 _117_ (.A(X[21]),
    .B(X[20]),
    .Y(_039_));
 sky130_fd_sc_hd__a21oi_1 _118_ (.A1(X[19]),
    .A2(_018_),
    .B1(_019_),
    .Y(_040_));
 sky130_fd_sc_hd__a21oi_1 _119_ (.A1(X[21]),
    .A2(_020_),
    .B1(_021_),
    .Y(_041_));
 sky130_fd_sc_hd__nand4_1 _120_ (.A(X[21]),
    .B(X[20]),
    .C(X[19]),
    .D(X[18]),
    .Y(_042_));
 sky130_fd_sc_hd__a21oi_1 _121_ (.A1(X[17]),
    .A2(_016_),
    .B1(_017_),
    .Y(_043_));
 sky130_fd_sc_hd__a21o_1 _122_ (.A1(X[15]),
    .A2(_014_),
    .B1(_015_),
    .X(_044_));
 sky130_fd_sc_hd__nand2_1 _123_ (.A(X[17]),
    .B(X[16]),
    .Y(_045_));
 sky130_fd_sc_hd__nor2_1 _124_ (.A(_042_),
    .B(_045_),
    .Y(_046_));
 sky130_fd_sc_hd__o221ai_1 _125_ (.A1(_039_),
    .A2(_040_),
    .B1(_042_),
    .B2(_043_),
    .C1(_041_),
    .Y(_047_));
 sky130_fd_sc_hd__a21oi_1 _126_ (.A1(_044_),
    .A2(_046_),
    .B1(_047_),
    .Y(_048_));
 sky130_fd_sc_hd__nand2_1 _127_ (.A(X[13]),
    .B(X[12]),
    .Y(_049_));
 sky130_fd_sc_hd__a21oi_1 _128_ (.A1(X[11]),
    .A2(_010_),
    .B1(_011_),
    .Y(_050_));
 sky130_fd_sc_hd__a21oi_1 _129_ (.A1(X[13]),
    .A2(_012_),
    .B1(_013_),
    .Y(_051_));
 sky130_fd_sc_hd__nand4_1 _130_ (.A(X[13]),
    .B(X[12]),
    .C(X[11]),
    .D(X[10]),
    .Y(_052_));
 sky130_fd_sc_hd__a21oi_1 _131_ (.A1(X[9]),
    .A2(_008_),
    .B1(_009_),
    .Y(_053_));
 sky130_fd_sc_hd__a21o_1 _132_ (.A1(X[7]),
    .A2(_006_),
    .B1(_007_),
    .X(_054_));
 sky130_fd_sc_hd__nand2_1 _133_ (.A(X[9]),
    .B(X[8]),
    .Y(_055_));
 sky130_fd_sc_hd__nor2_1 _134_ (.A(_052_),
    .B(_055_),
    .Y(_056_));
 sky130_fd_sc_hd__o221ai_1 _135_ (.A1(_049_),
    .A2(_050_),
    .B1(_052_),
    .B2(_053_),
    .C1(_051_),
    .Y(_057_));
 sky130_fd_sc_hd__a21oi_1 _136_ (.A1(_054_),
    .A2(_056_),
    .B1(_057_),
    .Y(_058_));
 sky130_fd_sc_hd__nand3_1 _137_ (.A(X[15]),
    .B(X[14]),
    .C(_046_),
    .Y(_059_));
 sky130_fd_sc_hd__o21ai_0 _138_ (.A1(_058_),
    .A2(_059_),
    .B1(_048_),
    .Y(_060_));
 sky130_fd_sc_hd__a21oi_1 _139_ (.A1(X[5]),
    .A2(_004_),
    .B1(_005_),
    .Y(_061_));
 sky130_fd_sc_hd__a21oi_1 _140_ (.A1(X[3]),
    .A2(_002_),
    .B1(_003_),
    .Y(_062_));
 sky130_fd_sc_hd__nand2_1 _141_ (.A(X[5]),
    .B(X[4]),
    .Y(_063_));
 sky130_fd_sc_hd__a21o_1 _142_ (.A1(CI),
    .A2(X[0]),
    .B1(_000_),
    .X(_064_));
 sky130_fd_sc_hd__a21oi_1 _143_ (.A1(X[1]),
    .A2(_064_),
    .B1(_001_),
    .Y(_065_));
 sky130_fd_sc_hd__nand2_1 _144_ (.A(X[3]),
    .B(X[2]),
    .Y(_066_));
 sky130_fd_sc_hd__o211ai_1 _145_ (.A1(_065_),
    .A2(_066_),
    .B1(_061_),
    .C1(_062_),
    .Y(_067_));
 sky130_fd_sc_hd__nand2_1 _146_ (.A(_061_),
    .B(_063_),
    .Y(_068_));
 sky130_fd_sc_hd__nand3_1 _147_ (.A(X[7]),
    .B(X[6]),
    .C(_068_),
    .Y(_069_));
 sky130_fd_sc_hd__nor4_1 _148_ (.A(_052_),
    .B(_055_),
    .C(_059_),
    .D(_069_),
    .Y(_070_));
 sky130_fd_sc_hd__a21o_1 _149_ (.A1(_067_),
    .A2(_070_),
    .B1(_060_),
    .X(_071_));
 sky130_fd_sc_hd__a21o_1 _150_ (.A1(X[22]),
    .A2(_071_),
    .B1(_022_),
    .X(\CO[23:22] [0]));
 sky130_fd_sc_hd__xor2_1 _151_ (.A(X[23]),
    .B(\CO[23:22] [0]),
    .X(\Y[23] ));
 sky130_fd_sc_hd__nand2_1 _152_ (.A(X[23]),
    .B(X[22]),
    .Y(_072_));
 sky130_fd_sc_hd__nand4_1 _153_ (.A(X[15]),
    .B(X[14]),
    .C(_046_),
    .D(_057_),
    .Y(_073_));
 sky130_fd_sc_hd__a21oi_1 _154_ (.A1(_048_),
    .A2(_073_),
    .B1(_072_),
    .Y(_074_));
 sky130_fd_sc_hd__a211oi_1 _155_ (.A1(X[23]),
    .A2(_022_),
    .B1(_074_),
    .C1(_023_),
    .Y(_075_));
 sky130_fd_sc_hd__a41oi_1 _156_ (.A1(X[7]),
    .A2(X[6]),
    .A3(_067_),
    .A4(_068_),
    .B1(_054_),
    .Y(_076_));
 sky130_fd_sc_hd__or3_1 _157_ (.A(_052_),
    .B(_055_),
    .C(_072_),
    .X(_077_));
 sky130_fd_sc_hd__o31ai_1 _158_ (.A1(_059_),
    .A2(_076_),
    .A3(_077_),
    .B1(_075_),
    .Y(\CO[23:22] [1]));
endmodule
module \ALU_24_1_15_1_24_unused_CO[21:0]_Y[22:0]_HAN_CARLSON__1389_  (A,
    B,
    BI,
    CI,
    X,
    \Y[23] ,
    \CO[23:22] );
 input [23:0] A;
 input [14:0] B;
 input BI;
 input CI;
 output [23:0] X;
 output \Y[23] ;
 output [1:0] \CO[23:22] ;

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

 sky130_fd_sc_hd__ha_1 _078_ (.A(A[0]),
    .B(_038_),
    .COUT(_000_),
    .SUM(X[0]));
 sky130_fd_sc_hd__ha_1 _079_ (.A(A[1]),
    .B(_037_),
    .COUT(_001_),
    .SUM(X[1]));
 sky130_fd_sc_hd__ha_1 _080_ (.A(A[2]),
    .B(_036_),
    .COUT(_002_),
    .SUM(X[2]));
 sky130_fd_sc_hd__ha_1 _081_ (.A(A[3]),
    .B(_035_),
    .COUT(_003_),
    .SUM(X[3]));
 sky130_fd_sc_hd__ha_1 _082_ (.A(A[4]),
    .B(_034_),
    .COUT(_004_),
    .SUM(X[4]));
 sky130_fd_sc_hd__ha_1 _083_ (.A(A[5]),
    .B(_033_),
    .COUT(_005_),
    .SUM(X[5]));
 sky130_fd_sc_hd__ha_1 _084_ (.A(A[6]),
    .B(_032_),
    .COUT(_006_),
    .SUM(X[6]));
 sky130_fd_sc_hd__ha_1 _085_ (.A(A[7]),
    .B(_031_),
    .COUT(_007_),
    .SUM(X[7]));
 sky130_fd_sc_hd__ha_1 _086_ (.A(A[8]),
    .B(_030_),
    .COUT(_008_),
    .SUM(X[8]));
 sky130_fd_sc_hd__ha_1 _087_ (.A(A[9]),
    .B(_029_),
    .COUT(_009_),
    .SUM(X[9]));
 sky130_fd_sc_hd__ha_1 _088_ (.A(A[10]),
    .B(_028_),
    .COUT(_010_),
    .SUM(X[10]));
 sky130_fd_sc_hd__ha_1 _089_ (.A(A[11]),
    .B(_027_),
    .COUT(_011_),
    .SUM(X[11]));
 sky130_fd_sc_hd__ha_1 _090_ (.A(A[12]),
    .B(_026_),
    .COUT(_012_),
    .SUM(X[12]));
 sky130_fd_sc_hd__ha_1 _091_ (.A(A[13]),
    .B(_025_),
    .COUT(_013_),
    .SUM(X[13]));
 sky130_fd_sc_hd__ha_1 _092_ (.A(A[14]),
    .B(_024_),
    .COUT(_014_),
    .SUM(X[14]));
 sky130_fd_sc_hd__ha_1 _093_ (.A(A[15]),
    .B(_024_),
    .COUT(_015_),
    .SUM(X[15]));
 sky130_fd_sc_hd__ha_1 _094_ (.A(A[16]),
    .B(_024_),
    .COUT(_016_),
    .SUM(X[16]));
 sky130_fd_sc_hd__ha_1 _095_ (.A(A[17]),
    .B(_024_),
    .COUT(_017_),
    .SUM(X[17]));
 sky130_fd_sc_hd__ha_1 _096_ (.A(A[18]),
    .B(_024_),
    .COUT(_018_),
    .SUM(X[18]));
 sky130_fd_sc_hd__ha_1 _097_ (.A(A[19]),
    .B(_024_),
    .COUT(_019_),
    .SUM(X[19]));
 sky130_fd_sc_hd__ha_1 _098_ (.A(A[20]),
    .B(_024_),
    .COUT(_020_),
    .SUM(X[20]));
 sky130_fd_sc_hd__ha_1 _099_ (.A(A[21]),
    .B(_024_),
    .COUT(_021_),
    .SUM(X[21]));
 sky130_fd_sc_hd__ha_1 _100_ (.A(A[22]),
    .B(_024_),
    .COUT(_022_),
    .SUM(X[22]));
 sky130_fd_sc_hd__ha_1 _101_ (.A(A[23]),
    .B(_024_),
    .COUT(_023_),
    .SUM(X[23]));
 sky130_fd_sc_hd__xor2_1 _102_ (.A(BI),
    .B(B[14]),
    .X(_024_));
 sky130_fd_sc_hd__xor2_1 _103_ (.A(BI),
    .B(B[13]),
    .X(_025_));
 sky130_fd_sc_hd__xor2_1 _104_ (.A(BI),
    .B(B[12]),
    .X(_026_));
 sky130_fd_sc_hd__xor2_1 _105_ (.A(BI),
    .B(B[11]),
    .X(_027_));
 sky130_fd_sc_hd__xor2_1 _106_ (.A(BI),
    .B(B[10]),
    .X(_028_));
 sky130_fd_sc_hd__xor2_1 _107_ (.A(BI),
    .B(B[9]),
    .X(_029_));
 sky130_fd_sc_hd__xor2_1 _108_ (.A(BI),
    .B(B[8]),
    .X(_030_));
 sky130_fd_sc_hd__xor2_1 _109_ (.A(BI),
    .B(B[7]),
    .X(_031_));
 sky130_fd_sc_hd__xor2_1 _110_ (.A(BI),
    .B(B[6]),
    .X(_032_));
 sky130_fd_sc_hd__xor2_1 _111_ (.A(BI),
    .B(B[5]),
    .X(_033_));
 sky130_fd_sc_hd__xor2_1 _112_ (.A(BI),
    .B(B[4]),
    .X(_034_));
 sky130_fd_sc_hd__xor2_1 _113_ (.A(BI),
    .B(B[3]),
    .X(_035_));
 sky130_fd_sc_hd__xor2_1 _114_ (.A(BI),
    .B(B[2]),
    .X(_036_));
 sky130_fd_sc_hd__xor2_1 _115_ (.A(BI),
    .B(B[1]),
    .X(_037_));
 sky130_fd_sc_hd__xor2_1 _116_ (.A(BI),
    .B(B[0]),
    .X(_038_));
 sky130_fd_sc_hd__nand2_1 _117_ (.A(X[21]),
    .B(X[20]),
    .Y(_039_));
 sky130_fd_sc_hd__a21oi_1 _118_ (.A1(X[19]),
    .A2(_018_),
    .B1(_019_),
    .Y(_040_));
 sky130_fd_sc_hd__a21oi_1 _119_ (.A1(X[21]),
    .A2(_020_),
    .B1(_021_),
    .Y(_041_));
 sky130_fd_sc_hd__nand4_1 _120_ (.A(X[21]),
    .B(X[20]),
    .C(X[19]),
    .D(X[18]),
    .Y(_042_));
 sky130_fd_sc_hd__a21oi_1 _121_ (.A1(X[17]),
    .A2(_016_),
    .B1(_017_),
    .Y(_043_));
 sky130_fd_sc_hd__a21o_1 _122_ (.A1(X[15]),
    .A2(_014_),
    .B1(_015_),
    .X(_044_));
 sky130_fd_sc_hd__nand2_1 _123_ (.A(X[17]),
    .B(X[16]),
    .Y(_045_));
 sky130_fd_sc_hd__nor2_1 _124_ (.A(_042_),
    .B(_045_),
    .Y(_046_));
 sky130_fd_sc_hd__o221ai_1 _125_ (.A1(_039_),
    .A2(_040_),
    .B1(_042_),
    .B2(_043_),
    .C1(_041_),
    .Y(_047_));
 sky130_fd_sc_hd__a21oi_1 _126_ (.A1(_044_),
    .A2(_046_),
    .B1(_047_),
    .Y(_048_));
 sky130_fd_sc_hd__nand2_1 _127_ (.A(X[13]),
    .B(X[12]),
    .Y(_049_));
 sky130_fd_sc_hd__a21oi_1 _128_ (.A1(X[11]),
    .A2(_010_),
    .B1(_011_),
    .Y(_050_));
 sky130_fd_sc_hd__a21oi_1 _129_ (.A1(X[13]),
    .A2(_012_),
    .B1(_013_),
    .Y(_051_));
 sky130_fd_sc_hd__nand4_1 _130_ (.A(X[13]),
    .B(X[12]),
    .C(X[11]),
    .D(X[10]),
    .Y(_052_));
 sky130_fd_sc_hd__a21oi_1 _131_ (.A1(X[9]),
    .A2(_008_),
    .B1(_009_),
    .Y(_053_));
 sky130_fd_sc_hd__a21o_1 _132_ (.A1(X[7]),
    .A2(_006_),
    .B1(_007_),
    .X(_054_));
 sky130_fd_sc_hd__nand2_1 _133_ (.A(X[9]),
    .B(X[8]),
    .Y(_055_));
 sky130_fd_sc_hd__nor2_1 _134_ (.A(_052_),
    .B(_055_),
    .Y(_056_));
 sky130_fd_sc_hd__o221ai_1 _135_ (.A1(_049_),
    .A2(_050_),
    .B1(_052_),
    .B2(_053_),
    .C1(_051_),
    .Y(_057_));
 sky130_fd_sc_hd__a21oi_1 _136_ (.A1(_054_),
    .A2(_056_),
    .B1(_057_),
    .Y(_058_));
 sky130_fd_sc_hd__nand3_1 _137_ (.A(X[15]),
    .B(X[14]),
    .C(_046_),
    .Y(_059_));
 sky130_fd_sc_hd__o21ai_0 _138_ (.A1(_058_),
    .A2(_059_),
    .B1(_048_),
    .Y(_060_));
 sky130_fd_sc_hd__a21oi_1 _139_ (.A1(X[5]),
    .A2(_004_),
    .B1(_005_),
    .Y(_061_));
 sky130_fd_sc_hd__a21oi_1 _140_ (.A1(X[3]),
    .A2(_002_),
    .B1(_003_),
    .Y(_062_));
 sky130_fd_sc_hd__nand2_1 _141_ (.A(X[5]),
    .B(X[4]),
    .Y(_063_));
 sky130_fd_sc_hd__a21o_1 _142_ (.A1(CI),
    .A2(X[0]),
    .B1(_000_),
    .X(_064_));
 sky130_fd_sc_hd__a21oi_1 _143_ (.A1(X[1]),
    .A2(_064_),
    .B1(_001_),
    .Y(_065_));
 sky130_fd_sc_hd__nand2_1 _144_ (.A(X[3]),
    .B(X[2]),
    .Y(_066_));
 sky130_fd_sc_hd__o211ai_1 _145_ (.A1(_065_),
    .A2(_066_),
    .B1(_061_),
    .C1(_062_),
    .Y(_067_));
 sky130_fd_sc_hd__nand2_1 _146_ (.A(_061_),
    .B(_063_),
    .Y(_068_));
 sky130_fd_sc_hd__nand3_1 _147_ (.A(X[7]),
    .B(X[6]),
    .C(_068_),
    .Y(_069_));
 sky130_fd_sc_hd__nor4_1 _148_ (.A(_052_),
    .B(_055_),
    .C(_059_),
    .D(_069_),
    .Y(_070_));
 sky130_fd_sc_hd__a21o_1 _149_ (.A1(_067_),
    .A2(_070_),
    .B1(_060_),
    .X(_071_));
 sky130_fd_sc_hd__a21o_1 _150_ (.A1(X[22]),
    .A2(_071_),
    .B1(_022_),
    .X(\CO[23:22] [0]));
 sky130_fd_sc_hd__xor2_1 _151_ (.A(X[23]),
    .B(\CO[23:22] [0]),
    .X(\Y[23] ));
 sky130_fd_sc_hd__nand2_1 _152_ (.A(X[23]),
    .B(X[22]),
    .Y(_072_));
 sky130_fd_sc_hd__nand4_1 _153_ (.A(X[15]),
    .B(X[14]),
    .C(_046_),
    .D(_057_),
    .Y(_073_));
 sky130_fd_sc_hd__a21oi_1 _154_ (.A1(_048_),
    .A2(_073_),
    .B1(_072_),
    .Y(_074_));
 sky130_fd_sc_hd__a211oi_1 _155_ (.A1(X[23]),
    .A2(_022_),
    .B1(_074_),
    .C1(_023_),
    .Y(_075_));
 sky130_fd_sc_hd__a41oi_1 _156_ (.A1(X[7]),
    .A2(X[6]),
    .A3(_067_),
    .A4(_068_),
    .B1(_054_),
    .Y(_076_));
 sky130_fd_sc_hd__or3_1 _157_ (.A(_052_),
    .B(_055_),
    .C(_072_),
    .X(_077_));
 sky130_fd_sc_hd__o31ai_1 _158_ (.A1(_059_),
    .A2(_076_),
    .A3(_077_),
    .B1(_075_),
    .Y(\CO[23:22] [1]));
endmodule
module ALU_24_1_24_1_24_unused_CO_X_HAN_CARLSON (A,
    B,
    BI,
    CI,
    Y);
 input [23:0] A;
 input [23:0] B;
 input BI;
 input CI;
 output [23:0] Y;

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
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
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
 wire _127_;
 wire _128_;
 wire net200;

 sky130_fd_sc_hd__fa_1 _129_ (.A(net200),
    .B(_125_),
    .CIN(_126_),
    .COUT(_048_),
    .SUM(Y[22]));
 sky130_fd_sc_hd__fa_1 _130_ (.A(net200),
    .B(_117_),
    .CIN(_118_),
    .COUT(_047_),
    .SUM(Y[20]));
 sky130_fd_sc_hd__fa_1 _131_ (.A(net200),
    .B(_109_),
    .CIN(_110_),
    .COUT(_051_),
    .SUM(Y[18]));
 sky130_fd_sc_hd__fa_1 _132_ (.A(net200),
    .B(_100_),
    .CIN(_101_),
    .COUT(_046_),
    .SUM(Y[16]));
 sky130_fd_sc_hd__fa_1 _133_ (.A(A[14]),
    .B(_094_),
    .CIN(_095_),
    .COUT(_040_),
    .SUM(Y[14]));
 sky130_fd_sc_hd__fa_1 _134_ (.A(A[12]),
    .B(_086_),
    .CIN(_087_),
    .COUT(_039_),
    .SUM(Y[12]));
 sky130_fd_sc_hd__fa_1 _135_ (.A(A[10]),
    .B(_078_),
    .CIN(_079_),
    .COUT(_035_),
    .SUM(Y[10]));
 sky130_fd_sc_hd__fa_1 _136_ (.A(A[8]),
    .B(_071_),
    .CIN(_072_),
    .COUT(_034_),
    .SUM(Y[8]));
 sky130_fd_sc_hd__fa_1 _137_ (.A(A[6]),
    .B(_065_),
    .CIN(_066_),
    .COUT(_033_),
    .SUM(Y[6]));
 sky130_fd_sc_hd__fa_1 _138_ (.A(A[4]),
    .B(_060_),
    .CIN(_061_),
    .COUT(_031_),
    .SUM(Y[4]));
 sky130_fd_sc_hd__fa_1 _139_ (.A(A[2]),
    .B(_050_),
    .CIN(_055_),
    .COUT(_030_),
    .SUM(Y[2]));
 sky130_fd_sc_hd__fa_1 _140_ (.A(A[1]),
    .B(_029_),
    .CIN(_054_),
    .COUT(_050_),
    .SUM(Y[1]));
 sky130_fd_sc_hd__fa_1 _141_ (.A(A[0]),
    .B(CI),
    .CIN(_053_),
    .COUT(_029_),
    .SUM(Y[0]));
 sky130_fd_sc_hd__ha_1 _142_ (.A(net200),
    .B(_119_),
    .COUT(_000_),
    .SUM(_020_));
 sky130_fd_sc_hd__ha_1 _143_ (.A(net200),
    .B(_118_),
    .COUT(_001_),
    .SUM(_024_));
 sky130_fd_sc_hd__ha_1 _144_ (.A(net200),
    .B(_111_),
    .COUT(_002_),
    .SUM(_028_));
 sky130_fd_sc_hd__ha_1 _145_ (.A(net200),
    .B(_110_),
    .COUT(_003_),
    .SUM(_032_));
 sky130_fd_sc_hd__ha_1 _146_ (.A(net200),
    .B(_102_),
    .COUT(_004_),
    .SUM(_036_));
 sky130_fd_sc_hd__ha_1 _147_ (.A(net200),
    .B(_101_),
    .COUT(_005_),
    .SUM(_037_));
 sky130_fd_sc_hd__ha_1 _148_ (.A(A[15]),
    .B(_096_),
    .COUT(_006_),
    .SUM(_038_));
 sky130_fd_sc_hd__ha_1 _149_ (.A(A[14]),
    .B(_095_),
    .COUT(_007_),
    .SUM(_041_));
 sky130_fd_sc_hd__ha_1 _150_ (.A(A[13]),
    .B(_088_),
    .COUT(_008_),
    .SUM(_042_));
 sky130_fd_sc_hd__ha_1 _151_ (.A(A[12]),
    .B(_087_),
    .COUT(_009_),
    .SUM(_043_));
 sky130_fd_sc_hd__ha_1 _152_ (.A(A[11]),
    .B(_080_),
    .COUT(_010_),
    .SUM(_044_));
 sky130_fd_sc_hd__ha_1 _153_ (.A(A[10]),
    .B(_079_),
    .COUT(_011_),
    .SUM(_045_));
 sky130_fd_sc_hd__ha_1 _154_ (.A(A[9]),
    .B(_073_),
    .COUT(_012_),
    .SUM(_027_));
 sky130_fd_sc_hd__ha_1 _155_ (.A(A[8]),
    .B(_072_),
    .COUT(_013_),
    .SUM(_049_));
 sky130_fd_sc_hd__ha_1 _156_ (.A(A[7]),
    .B(_067_),
    .COUT(_014_),
    .SUM(_052_));
 sky130_fd_sc_hd__ha_1 _157_ (.A(A[6]),
    .B(_066_),
    .COUT(_015_),
    .SUM(_026_));
 sky130_fd_sc_hd__ha_1 _158_ (.A(A[5]),
    .B(_062_),
    .COUT(_016_),
    .SUM(_021_));
 sky130_fd_sc_hd__ha_1 _159_ (.A(A[4]),
    .B(_061_),
    .COUT(_017_),
    .SUM(_022_));
 sky130_fd_sc_hd__ha_1 _160_ (.A(A[3]),
    .B(_056_),
    .COUT(_018_),
    .SUM(_023_));
 sky130_fd_sc_hd__ha_1 _161_ (.A(A[2]),
    .B(_055_),
    .COUT(_019_),
    .SUM(_025_));
 sky130_fd_sc_hd__xor2_1 _162_ (.A(BI),
    .B(B[0]),
    .X(_053_));
 sky130_fd_sc_hd__xor2_1 _163_ (.A(BI),
    .B(B[1]),
    .X(_054_));
 sky130_fd_sc_hd__xor2_1 _164_ (.A(BI),
    .B(B[2]),
    .X(_055_));
 sky130_fd_sc_hd__xor2_1 _165_ (.A(BI),
    .B(B[3]),
    .X(_056_));
 sky130_fd_sc_hd__and2_0 _166_ (.A(_023_),
    .B(_025_),
    .X(_057_));
 sky130_fd_sc_hd__a21oi_1 _167_ (.A1(_023_),
    .A2(_019_),
    .B1(_018_),
    .Y(_058_));
 sky130_fd_sc_hd__a21boi_0 _168_ (.A1(_050_),
    .A2(_057_),
    .B1_N(_058_),
    .Y(_059_));
 sky130_fd_sc_hd__clkinv_1 _169_ (.A(_059_),
    .Y(_060_));
 sky130_fd_sc_hd__xor2_1 _170_ (.A(BI),
    .B(B[4]),
    .X(_061_));
 sky130_fd_sc_hd__xor2_1 _171_ (.A(BI),
    .B(B[5]),
    .X(_062_));
 sky130_fd_sc_hd__a21oi_1 _172_ (.A1(_021_),
    .A2(_017_),
    .B1(_016_),
    .Y(_063_));
 sky130_fd_sc_hd__nand2_1 _173_ (.A(_021_),
    .B(_022_),
    .Y(_064_));
 sky130_fd_sc_hd__o21ai_0 _174_ (.A1(_059_),
    .A2(_064_),
    .B1(_063_),
    .Y(_065_));
 sky130_fd_sc_hd__xor2_1 _175_ (.A(BI),
    .B(B[6]),
    .X(_066_));
 sky130_fd_sc_hd__xor2_1 _176_ (.A(BI),
    .B(B[7]),
    .X(_067_));
 sky130_fd_sc_hd__nand2_1 _177_ (.A(_052_),
    .B(_026_),
    .Y(_068_));
 sky130_fd_sc_hd__a21oi_1 _178_ (.A1(_052_),
    .A2(_015_),
    .B1(_014_),
    .Y(_069_));
 sky130_fd_sc_hd__o21a_1 _179_ (.A1(_063_),
    .A2(_068_),
    .B1(_069_),
    .X(_070_));
 sky130_fd_sc_hd__o31ai_1 _180_ (.A1(_059_),
    .A2(_064_),
    .A3(_068_),
    .B1(_070_),
    .Y(_071_));
 sky130_fd_sc_hd__xor2_1 _181_ (.A(BI),
    .B(B[8]),
    .X(_072_));
 sky130_fd_sc_hd__xor2_1 _182_ (.A(BI),
    .B(B[9]),
    .X(_073_));
 sky130_fd_sc_hd__a21oi_1 _183_ (.A1(_027_),
    .A2(_013_),
    .B1(_012_),
    .Y(_074_));
 sky130_fd_sc_hd__nand2_1 _184_ (.A(_027_),
    .B(_049_),
    .Y(_075_));
 sky130_fd_sc_hd__o21ai_0 _185_ (.A1(_069_),
    .A2(_075_),
    .B1(_074_),
    .Y(_076_));
 sky130_fd_sc_hd__nor2_1 _186_ (.A(_068_),
    .B(_075_),
    .Y(_077_));
 sky130_fd_sc_hd__a21o_1 _187_ (.A1(_065_),
    .A2(_077_),
    .B1(_076_),
    .X(_078_));
 sky130_fd_sc_hd__xor2_1 _188_ (.A(BI),
    .B(B[10]),
    .X(_079_));
 sky130_fd_sc_hd__xor2_1 _189_ (.A(BI),
    .B(B[11]),
    .X(_080_));
 sky130_fd_sc_hd__a21oi_1 _190_ (.A1(_044_),
    .A2(_011_),
    .B1(_010_),
    .Y(_081_));
 sky130_fd_sc_hd__nand2_1 _191_ (.A(_044_),
    .B(_045_),
    .Y(_082_));
 sky130_fd_sc_hd__o21ai_0 _192_ (.A1(_074_),
    .A2(_082_),
    .B1(_081_),
    .Y(_083_));
 sky130_fd_sc_hd__nor2_1 _193_ (.A(_075_),
    .B(_082_),
    .Y(_084_));
 sky130_fd_sc_hd__a21oi_1 _194_ (.A1(_071_),
    .A2(_084_),
    .B1(_083_),
    .Y(_085_));
 sky130_fd_sc_hd__clkinv_1 _195_ (.A(_085_),
    .Y(_086_));
 sky130_fd_sc_hd__xor2_1 _196_ (.A(BI),
    .B(B[12]),
    .X(_087_));
 sky130_fd_sc_hd__xor2_1 _197_ (.A(BI),
    .B(B[13]),
    .X(_088_));
 sky130_fd_sc_hd__nand2_1 _198_ (.A(_042_),
    .B(_043_),
    .Y(_089_));
 sky130_fd_sc_hd__nor2_1 _199_ (.A(_082_),
    .B(_089_),
    .Y(_090_));
 sky130_fd_sc_hd__a21oi_1 _200_ (.A1(_042_),
    .A2(_009_),
    .B1(_008_),
    .Y(_091_));
 sky130_fd_sc_hd__o21a_1 _201_ (.A1(_081_),
    .A2(_089_),
    .B1(_091_),
    .X(_092_));
 sky130_fd_sc_hd__a21bo_1 _202_ (.A1(_076_),
    .A2(_090_),
    .B1_N(_092_),
    .X(_093_));
 sky130_fd_sc_hd__a31o_1 _203_ (.A1(_065_),
    .A2(_077_),
    .A3(_090_),
    .B1(_093_),
    .X(_094_));
 sky130_fd_sc_hd__xor2_1 _204_ (.A(BI),
    .B(B[14]),
    .X(_095_));
 sky130_fd_sc_hd__xor2_1 _205_ (.A(BI),
    .B(B[15]),
    .X(_096_));
 sky130_fd_sc_hd__a21oi_1 _206_ (.A1(_038_),
    .A2(_007_),
    .B1(_006_),
    .Y(_097_));
 sky130_fd_sc_hd__nand2_1 _207_ (.A(_038_),
    .B(_041_),
    .Y(_098_));
 sky130_fd_sc_hd__o21a_1 _208_ (.A1(_091_),
    .A2(_098_),
    .B1(_097_),
    .X(_099_));
 sky130_fd_sc_hd__o31ai_1 _209_ (.A1(_085_),
    .A2(_089_),
    .A3(_098_),
    .B1(_099_),
    .Y(_100_));
 sky130_fd_sc_hd__xor2_1 _210_ (.A(BI),
    .B(B[16]),
    .X(_101_));
 sky130_fd_sc_hd__xor2_1 _211_ (.A(BI),
    .B(B[17]),
    .X(_102_));
 sky130_fd_sc_hd__nand2_1 _212_ (.A(_036_),
    .B(_037_),
    .Y(_103_));
 sky130_fd_sc_hd__nor2_1 _213_ (.A(_098_),
    .B(_103_),
    .Y(_104_));
 sky130_fd_sc_hd__nand4_1 _214_ (.A(_038_),
    .B(_041_),
    .C(_036_),
    .D(_037_),
    .Y(_105_));
 sky130_fd_sc_hd__a21oi_1 _215_ (.A1(_036_),
    .A2(_005_),
    .B1(_004_),
    .Y(_106_));
 sky130_fd_sc_hd__o21a_1 _216_ (.A1(_097_),
    .A2(_103_),
    .B1(_106_),
    .X(_107_));
 sky130_fd_sc_hd__o21ai_0 _217_ (.A1(_092_),
    .A2(_105_),
    .B1(_107_),
    .Y(_108_));
 sky130_fd_sc_hd__a31o_1 _218_ (.A1(_078_),
    .A2(_090_),
    .A3(_104_),
    .B1(_108_),
    .X(_109_));
 sky130_fd_sc_hd__xor2_1 _219_ (.A(BI),
    .B(B[18]),
    .X(_110_));
 sky130_fd_sc_hd__xor2_1 _220_ (.A(BI),
    .B(B[19]),
    .X(_111_));
 sky130_fd_sc_hd__nand2_1 _221_ (.A(_028_),
    .B(_032_),
    .Y(_112_));
 sky130_fd_sc_hd__nor3_1 _222_ (.A(_099_),
    .B(_103_),
    .C(_112_),
    .Y(_113_));
 sky130_fd_sc_hd__a21oi_1 _223_ (.A1(_028_),
    .A2(_003_),
    .B1(_002_),
    .Y(_114_));
 sky130_fd_sc_hd__o21ai_0 _224_ (.A1(_106_),
    .A2(_112_),
    .B1(_114_),
    .Y(_115_));
 sky130_fd_sc_hd__nor4_1 _225_ (.A(_089_),
    .B(_098_),
    .C(_103_),
    .D(_112_),
    .Y(_116_));
 sky130_fd_sc_hd__a211o_1 _226_ (.A1(_086_),
    .A2(_116_),
    .B1(_115_),
    .C1(_113_),
    .X(_117_));
 sky130_fd_sc_hd__xor2_1 _227_ (.A(BI),
    .B(B[20]),
    .X(_118_));
 sky130_fd_sc_hd__xor2_1 _228_ (.A(BI),
    .B(B[21]),
    .X(_119_));
 sky130_fd_sc_hd__nand2_1 _229_ (.A(_020_),
    .B(_024_),
    .Y(_120_));
 sky130_fd_sc_hd__nor3_1 _230_ (.A(_107_),
    .B(_112_),
    .C(_120_),
    .Y(_121_));
 sky130_fd_sc_hd__a21oi_1 _231_ (.A1(_020_),
    .A2(_001_),
    .B1(_000_),
    .Y(_122_));
 sky130_fd_sc_hd__o21ai_0 _232_ (.A1(_114_),
    .A2(_120_),
    .B1(_122_),
    .Y(_123_));
 sky130_fd_sc_hd__nor3_1 _233_ (.A(_105_),
    .B(_112_),
    .C(_120_),
    .Y(_124_));
 sky130_fd_sc_hd__a211o_1 _234_ (.A1(_094_),
    .A2(_124_),
    .B1(_123_),
    .C1(_121_),
    .X(_125_));
 sky130_fd_sc_hd__xor2_1 _235_ (.A(BI),
    .B(B[22]),
    .X(_126_));
 sky130_fd_sc_hd__xor2_1 _236_ (.A(_030_),
    .B(_023_),
    .X(Y[3]));
 sky130_fd_sc_hd__xor2_1 _237_ (.A(_031_),
    .B(_021_),
    .X(Y[5]));
 sky130_fd_sc_hd__xor2_1 _238_ (.A(_033_),
    .B(_052_),
    .X(Y[7]));
 sky130_fd_sc_hd__xor2_1 _239_ (.A(_034_),
    .B(_027_),
    .X(Y[9]));
 sky130_fd_sc_hd__xor2_1 _240_ (.A(_035_),
    .B(_044_),
    .X(Y[11]));
 sky130_fd_sc_hd__xor2_1 _241_ (.A(_039_),
    .B(_042_),
    .X(Y[13]));
 sky130_fd_sc_hd__xor2_1 _242_ (.A(_040_),
    .B(_038_),
    .X(Y[15]));
 sky130_fd_sc_hd__xor2_1 _243_ (.A(_046_),
    .B(_036_),
    .X(Y[17]));
 sky130_fd_sc_hd__xor2_1 _244_ (.A(_051_),
    .B(_028_),
    .X(Y[19]));
 sky130_fd_sc_hd__xor2_1 _245_ (.A(_047_),
    .B(_020_),
    .X(Y[21]));
 sky130_fd_sc_hd__xor2_1 _246_ (.A(BI),
    .B(B[23]),
    .X(_127_));
 sky130_fd_sc_hd__xnor2_1 _247_ (.A(net200),
    .B(_127_),
    .Y(_128_));
 sky130_fd_sc_hd__xnor2_1 _248_ (.A(_048_),
    .B(_128_),
    .Y(Y[23]));
 sky130_fd_sc_hd__buf_4 place163 (.A(A[23]),
    .X(net200));
endmodule
module ALU_24_1_24_1_24_unused_CO_X_HAN_CARLSON__1395_ (A,
    B,
    BI,
    CI,
    Y);
 input [23:0] A;
 input [23:0] B;
 input BI;
 input CI;
 output [23:0] Y;

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
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
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
 wire _127_;
 wire _128_;

 sky130_fd_sc_hd__fa_1 _129_ (.A(A[22]),
    .B(_125_),
    .CIN(_126_),
    .COUT(_048_),
    .SUM(Y[22]));
 sky130_fd_sc_hd__fa_1 _130_ (.A(A[20]),
    .B(_117_),
    .CIN(_118_),
    .COUT(_047_),
    .SUM(Y[20]));
 sky130_fd_sc_hd__fa_1 _131_ (.A(A[18]),
    .B(_109_),
    .CIN(_110_),
    .COUT(_051_),
    .SUM(Y[18]));
 sky130_fd_sc_hd__fa_1 _132_ (.A(A[16]),
    .B(_100_),
    .CIN(_101_),
    .COUT(_046_),
    .SUM(Y[16]));
 sky130_fd_sc_hd__fa_1 _133_ (.A(A[14]),
    .B(_094_),
    .CIN(_095_),
    .COUT(_040_),
    .SUM(Y[14]));
 sky130_fd_sc_hd__fa_1 _134_ (.A(A[12]),
    .B(_086_),
    .CIN(_087_),
    .COUT(_039_),
    .SUM(Y[12]));
 sky130_fd_sc_hd__fa_1 _135_ (.A(A[10]),
    .B(_078_),
    .CIN(_079_),
    .COUT(_035_),
    .SUM(Y[10]));
 sky130_fd_sc_hd__fa_1 _136_ (.A(A[8]),
    .B(_071_),
    .CIN(_072_),
    .COUT(_034_),
    .SUM(Y[8]));
 sky130_fd_sc_hd__fa_1 _137_ (.A(A[6]),
    .B(_065_),
    .CIN(_066_),
    .COUT(_033_),
    .SUM(Y[6]));
 sky130_fd_sc_hd__fa_1 _138_ (.A(A[4]),
    .B(_060_),
    .CIN(_061_),
    .COUT(_031_),
    .SUM(Y[4]));
 sky130_fd_sc_hd__fa_1 _139_ (.A(A[2]),
    .B(_050_),
    .CIN(_055_),
    .COUT(_030_),
    .SUM(Y[2]));
 sky130_fd_sc_hd__fa_1 _140_ (.A(A[1]),
    .B(_029_),
    .CIN(_054_),
    .COUT(_050_),
    .SUM(Y[1]));
 sky130_fd_sc_hd__fa_1 _141_ (.A(A[0]),
    .B(CI),
    .CIN(_053_),
    .COUT(_029_),
    .SUM(Y[0]));
 sky130_fd_sc_hd__ha_1 _142_ (.A(A[21]),
    .B(_119_),
    .COUT(_000_),
    .SUM(_020_));
 sky130_fd_sc_hd__ha_1 _143_ (.A(A[20]),
    .B(_118_),
    .COUT(_001_),
    .SUM(_024_));
 sky130_fd_sc_hd__ha_1 _144_ (.A(A[19]),
    .B(_111_),
    .COUT(_002_),
    .SUM(_028_));
 sky130_fd_sc_hd__ha_1 _145_ (.A(A[18]),
    .B(_110_),
    .COUT(_003_),
    .SUM(_032_));
 sky130_fd_sc_hd__ha_1 _146_ (.A(A[17]),
    .B(_102_),
    .COUT(_004_),
    .SUM(_036_));
 sky130_fd_sc_hd__ha_1 _147_ (.A(A[16]),
    .B(_101_),
    .COUT(_005_),
    .SUM(_037_));
 sky130_fd_sc_hd__ha_1 _148_ (.A(A[15]),
    .B(_096_),
    .COUT(_006_),
    .SUM(_038_));
 sky130_fd_sc_hd__ha_1 _149_ (.A(A[14]),
    .B(_095_),
    .COUT(_007_),
    .SUM(_041_));
 sky130_fd_sc_hd__ha_1 _150_ (.A(A[13]),
    .B(_088_),
    .COUT(_008_),
    .SUM(_042_));
 sky130_fd_sc_hd__ha_1 _151_ (.A(A[12]),
    .B(_087_),
    .COUT(_009_),
    .SUM(_043_));
 sky130_fd_sc_hd__ha_1 _152_ (.A(A[11]),
    .B(_080_),
    .COUT(_010_),
    .SUM(_044_));
 sky130_fd_sc_hd__ha_1 _153_ (.A(A[10]),
    .B(_079_),
    .COUT(_011_),
    .SUM(_045_));
 sky130_fd_sc_hd__ha_1 _154_ (.A(A[9]),
    .B(_073_),
    .COUT(_012_),
    .SUM(_027_));
 sky130_fd_sc_hd__ha_1 _155_ (.A(A[8]),
    .B(_072_),
    .COUT(_013_),
    .SUM(_049_));
 sky130_fd_sc_hd__ha_1 _156_ (.A(A[7]),
    .B(_067_),
    .COUT(_014_),
    .SUM(_052_));
 sky130_fd_sc_hd__ha_1 _157_ (.A(A[6]),
    .B(_066_),
    .COUT(_015_),
    .SUM(_026_));
 sky130_fd_sc_hd__ha_1 _158_ (.A(A[5]),
    .B(_062_),
    .COUT(_016_),
    .SUM(_021_));
 sky130_fd_sc_hd__ha_1 _159_ (.A(A[4]),
    .B(_061_),
    .COUT(_017_),
    .SUM(_022_));
 sky130_fd_sc_hd__ha_1 _160_ (.A(A[3]),
    .B(_056_),
    .COUT(_018_),
    .SUM(_023_));
 sky130_fd_sc_hd__ha_1 _161_ (.A(A[2]),
    .B(_055_),
    .COUT(_019_),
    .SUM(_025_));
 sky130_fd_sc_hd__xor2_1 _162_ (.A(BI),
    .B(B[0]),
    .X(_053_));
 sky130_fd_sc_hd__xor2_1 _163_ (.A(BI),
    .B(B[1]),
    .X(_054_));
 sky130_fd_sc_hd__xor2_1 _164_ (.A(BI),
    .B(B[2]),
    .X(_055_));
 sky130_fd_sc_hd__xor2_1 _165_ (.A(BI),
    .B(B[3]),
    .X(_056_));
 sky130_fd_sc_hd__and2_0 _166_ (.A(_023_),
    .B(_025_),
    .X(_057_));
 sky130_fd_sc_hd__a21oi_1 _167_ (.A1(_023_),
    .A2(_019_),
    .B1(_018_),
    .Y(_058_));
 sky130_fd_sc_hd__a21boi_0 _168_ (.A1(_050_),
    .A2(_057_),
    .B1_N(_058_),
    .Y(_059_));
 sky130_fd_sc_hd__clkinv_1 _169_ (.A(_059_),
    .Y(_060_));
 sky130_fd_sc_hd__xor2_1 _170_ (.A(BI),
    .B(B[4]),
    .X(_061_));
 sky130_fd_sc_hd__xor2_1 _171_ (.A(BI),
    .B(B[5]),
    .X(_062_));
 sky130_fd_sc_hd__a21oi_1 _172_ (.A1(_021_),
    .A2(_017_),
    .B1(_016_),
    .Y(_063_));
 sky130_fd_sc_hd__nand2_1 _173_ (.A(_021_),
    .B(_022_),
    .Y(_064_));
 sky130_fd_sc_hd__o21ai_0 _174_ (.A1(_059_),
    .A2(_064_),
    .B1(_063_),
    .Y(_065_));
 sky130_fd_sc_hd__xor2_1 _175_ (.A(BI),
    .B(B[6]),
    .X(_066_));
 sky130_fd_sc_hd__xor2_1 _176_ (.A(BI),
    .B(B[7]),
    .X(_067_));
 sky130_fd_sc_hd__nand2_1 _177_ (.A(_052_),
    .B(_026_),
    .Y(_068_));
 sky130_fd_sc_hd__a21oi_1 _178_ (.A1(_052_),
    .A2(_015_),
    .B1(_014_),
    .Y(_069_));
 sky130_fd_sc_hd__o21a_1 _179_ (.A1(_063_),
    .A2(_068_),
    .B1(_069_),
    .X(_070_));
 sky130_fd_sc_hd__o31ai_1 _180_ (.A1(_059_),
    .A2(_064_),
    .A3(_068_),
    .B1(_070_),
    .Y(_071_));
 sky130_fd_sc_hd__xor2_1 _181_ (.A(BI),
    .B(B[8]),
    .X(_072_));
 sky130_fd_sc_hd__xor2_1 _182_ (.A(BI),
    .B(B[9]),
    .X(_073_));
 sky130_fd_sc_hd__a21oi_1 _183_ (.A1(_027_),
    .A2(_013_),
    .B1(_012_),
    .Y(_074_));
 sky130_fd_sc_hd__nand2_1 _184_ (.A(_027_),
    .B(_049_),
    .Y(_075_));
 sky130_fd_sc_hd__o21ai_0 _185_ (.A1(_069_),
    .A2(_075_),
    .B1(_074_),
    .Y(_076_));
 sky130_fd_sc_hd__nor2_1 _186_ (.A(_068_),
    .B(_075_),
    .Y(_077_));
 sky130_fd_sc_hd__a21o_1 _187_ (.A1(_065_),
    .A2(_077_),
    .B1(_076_),
    .X(_078_));
 sky130_fd_sc_hd__xor2_1 _188_ (.A(BI),
    .B(B[10]),
    .X(_079_));
 sky130_fd_sc_hd__xor2_1 _189_ (.A(BI),
    .B(B[11]),
    .X(_080_));
 sky130_fd_sc_hd__a21oi_1 _190_ (.A1(_044_),
    .A2(_011_),
    .B1(_010_),
    .Y(_081_));
 sky130_fd_sc_hd__nand2_1 _191_ (.A(_044_),
    .B(_045_),
    .Y(_082_));
 sky130_fd_sc_hd__o21ai_0 _192_ (.A1(_074_),
    .A2(_082_),
    .B1(_081_),
    .Y(_083_));
 sky130_fd_sc_hd__nor2_1 _193_ (.A(_075_),
    .B(_082_),
    .Y(_084_));
 sky130_fd_sc_hd__a21oi_1 _194_ (.A1(_071_),
    .A2(_084_),
    .B1(_083_),
    .Y(_085_));
 sky130_fd_sc_hd__clkinv_1 _195_ (.A(_085_),
    .Y(_086_));
 sky130_fd_sc_hd__xor2_1 _196_ (.A(BI),
    .B(B[12]),
    .X(_087_));
 sky130_fd_sc_hd__xor2_1 _197_ (.A(BI),
    .B(B[13]),
    .X(_088_));
 sky130_fd_sc_hd__nand2_1 _198_ (.A(_042_),
    .B(_043_),
    .Y(_089_));
 sky130_fd_sc_hd__nor2_1 _199_ (.A(_082_),
    .B(_089_),
    .Y(_090_));
 sky130_fd_sc_hd__a21oi_1 _200_ (.A1(_042_),
    .A2(_009_),
    .B1(_008_),
    .Y(_091_));
 sky130_fd_sc_hd__o21a_1 _201_ (.A1(_081_),
    .A2(_089_),
    .B1(_091_),
    .X(_092_));
 sky130_fd_sc_hd__a21bo_1 _202_ (.A1(_076_),
    .A2(_090_),
    .B1_N(_092_),
    .X(_093_));
 sky130_fd_sc_hd__a31o_1 _203_ (.A1(_065_),
    .A2(_077_),
    .A3(_090_),
    .B1(_093_),
    .X(_094_));
 sky130_fd_sc_hd__xor2_1 _204_ (.A(BI),
    .B(B[14]),
    .X(_095_));
 sky130_fd_sc_hd__xor2_1 _205_ (.A(BI),
    .B(B[15]),
    .X(_096_));
 sky130_fd_sc_hd__a21oi_1 _206_ (.A1(_038_),
    .A2(_007_),
    .B1(_006_),
    .Y(_097_));
 sky130_fd_sc_hd__nand2_1 _207_ (.A(_038_),
    .B(_041_),
    .Y(_098_));
 sky130_fd_sc_hd__o21a_1 _208_ (.A1(_091_),
    .A2(_098_),
    .B1(_097_),
    .X(_099_));
 sky130_fd_sc_hd__o31ai_1 _209_ (.A1(_085_),
    .A2(_089_),
    .A3(_098_),
    .B1(_099_),
    .Y(_100_));
 sky130_fd_sc_hd__xor2_1 _210_ (.A(BI),
    .B(B[16]),
    .X(_101_));
 sky130_fd_sc_hd__xor2_1 _211_ (.A(BI),
    .B(B[17]),
    .X(_102_));
 sky130_fd_sc_hd__nand2_1 _212_ (.A(_036_),
    .B(_037_),
    .Y(_103_));
 sky130_fd_sc_hd__nor2_1 _213_ (.A(_098_),
    .B(_103_),
    .Y(_104_));
 sky130_fd_sc_hd__nand4_1 _214_ (.A(_038_),
    .B(_041_),
    .C(_036_),
    .D(_037_),
    .Y(_105_));
 sky130_fd_sc_hd__a21oi_1 _215_ (.A1(_036_),
    .A2(_005_),
    .B1(_004_),
    .Y(_106_));
 sky130_fd_sc_hd__o21a_1 _216_ (.A1(_097_),
    .A2(_103_),
    .B1(_106_),
    .X(_107_));
 sky130_fd_sc_hd__o21ai_0 _217_ (.A1(_092_),
    .A2(_105_),
    .B1(_107_),
    .Y(_108_));
 sky130_fd_sc_hd__a31o_1 _218_ (.A1(_078_),
    .A2(_090_),
    .A3(_104_),
    .B1(_108_),
    .X(_109_));
 sky130_fd_sc_hd__xor2_1 _219_ (.A(BI),
    .B(B[18]),
    .X(_110_));
 sky130_fd_sc_hd__xor2_1 _220_ (.A(BI),
    .B(B[19]),
    .X(_111_));
 sky130_fd_sc_hd__nand2_1 _221_ (.A(_028_),
    .B(_032_),
    .Y(_112_));
 sky130_fd_sc_hd__nor3_1 _222_ (.A(_099_),
    .B(_103_),
    .C(_112_),
    .Y(_113_));
 sky130_fd_sc_hd__a21oi_1 _223_ (.A1(_028_),
    .A2(_003_),
    .B1(_002_),
    .Y(_114_));
 sky130_fd_sc_hd__o21ai_0 _224_ (.A1(_106_),
    .A2(_112_),
    .B1(_114_),
    .Y(_115_));
 sky130_fd_sc_hd__nor4_1 _225_ (.A(_089_),
    .B(_098_),
    .C(_103_),
    .D(_112_),
    .Y(_116_));
 sky130_fd_sc_hd__a211o_1 _226_ (.A1(_086_),
    .A2(_116_),
    .B1(_115_),
    .C1(_113_),
    .X(_117_));
 sky130_fd_sc_hd__xor2_1 _227_ (.A(BI),
    .B(B[20]),
    .X(_118_));
 sky130_fd_sc_hd__xor2_1 _228_ (.A(BI),
    .B(B[21]),
    .X(_119_));
 sky130_fd_sc_hd__nand2_1 _229_ (.A(_020_),
    .B(_024_),
    .Y(_120_));
 sky130_fd_sc_hd__nor3_1 _230_ (.A(_107_),
    .B(_112_),
    .C(_120_),
    .Y(_121_));
 sky130_fd_sc_hd__a21oi_1 _231_ (.A1(_020_),
    .A2(_001_),
    .B1(_000_),
    .Y(_122_));
 sky130_fd_sc_hd__o21ai_0 _232_ (.A1(_114_),
    .A2(_120_),
    .B1(_122_),
    .Y(_123_));
 sky130_fd_sc_hd__nor3_1 _233_ (.A(_105_),
    .B(_112_),
    .C(_120_),
    .Y(_124_));
 sky130_fd_sc_hd__a211o_1 _234_ (.A1(_094_),
    .A2(_124_),
    .B1(_123_),
    .C1(_121_),
    .X(_125_));
 sky130_fd_sc_hd__xor2_1 _235_ (.A(BI),
    .B(B[22]),
    .X(_126_));
 sky130_fd_sc_hd__xor2_1 _236_ (.A(_030_),
    .B(_023_),
    .X(Y[3]));
 sky130_fd_sc_hd__xor2_1 _237_ (.A(_031_),
    .B(_021_),
    .X(Y[5]));
 sky130_fd_sc_hd__xor2_1 _238_ (.A(_033_),
    .B(_052_),
    .X(Y[7]));
 sky130_fd_sc_hd__xor2_1 _239_ (.A(_034_),
    .B(_027_),
    .X(Y[9]));
 sky130_fd_sc_hd__xor2_1 _240_ (.A(_035_),
    .B(_044_),
    .X(Y[11]));
 sky130_fd_sc_hd__xor2_1 _241_ (.A(_039_),
    .B(_042_),
    .X(Y[13]));
 sky130_fd_sc_hd__xor2_1 _242_ (.A(_040_),
    .B(_038_),
    .X(Y[15]));
 sky130_fd_sc_hd__xor2_1 _243_ (.A(_046_),
    .B(_036_),
    .X(Y[17]));
 sky130_fd_sc_hd__xor2_1 _244_ (.A(_051_),
    .B(_028_),
    .X(Y[19]));
 sky130_fd_sc_hd__xor2_1 _245_ (.A(_047_),
    .B(_020_),
    .X(Y[21]));
 sky130_fd_sc_hd__xor2_1 _246_ (.A(BI),
    .B(B[23]),
    .X(_127_));
 sky130_fd_sc_hd__xnor2_1 _247_ (.A(A[23]),
    .B(_127_),
    .Y(_128_));
 sky130_fd_sc_hd__xnor2_1 _248_ (.A(_048_),
    .B(_128_),
    .Y(Y[23]));
endmodule
