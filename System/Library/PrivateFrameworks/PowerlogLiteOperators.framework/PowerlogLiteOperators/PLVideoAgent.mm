@interface PLVideoAgent
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitionGroupSession;
+ (id)entryEventIntervalDefinitions;
+ (id)stateEnumForStateString:(id)string;
+ (void)load;
- (PLVideoAgent)init;
- (int)convertPlaybackTypetoInt:(id)int;
- (void)initOperatorDependancies;
- (void)logEventBackwardCMVideoPlaybackWithEntry:(id)entry;
- (void)logEventBackwardCMVideoQueueWithEntry:(id)entry;
- (void)logEventBackwardVTSessionWithEntry:(id)entry;
- (void)logEventBackwardVTTileWithEntry:(id)entry;
- (void)logEventForwardVideoWithEntry:(id)entry;
- (void)logEventIntervalGroupSession:(id)session;
@end

@implementation PLVideoAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLVideoAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventForwardDefinitions
{
  v22[1] = *MEMORY[0x277D85DE8];
  v21 = @"Video";
  v19[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v17[0] = *MEMORY[0x277D3F568];
  v17[1] = v2;
  v18[0] = &unk_282C1C4F8;
  v18[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F4A0];
  v17[2] = *MEMORY[0x277D3F550];
  v17[3] = v3;
  v18[2] = MEMORY[0x277CBEC28];
  v18[3] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v20[0] = v4;
  v19[1] = *MEMORY[0x277D3F540];
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v16[0] = commonTypeDict_IntegerFormat;
  v15[1] = @"clientDisplayID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v16[1] = commonTypeDict_StringFormat_withBundleID;
  v15[2] = @"State";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v16[2] = commonTypeDict_IntegerFormat2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v20[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v22[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  return v13;
}

+ (id)entryEventBackwardDefinitions
{
  v122[4] = *MEMORY[0x277D85DE8];
  v121[0] = @"VTSession";
  v118 = *MEMORY[0x277D3F4E8];
  v2 = v118;
  v4 = *MEMORY[0x277D3F4F8];
  v115[0] = *MEMORY[0x277D3F568];
  v3 = v115[0];
  v115[1] = v4;
  v117[0] = &unk_282C1C508;
  v117[1] = MEMORY[0x277CBEC28];
  v116 = *MEMORY[0x277D3F550];
  v5 = v116;
  v117[2] = MEMORY[0x277CBEC28];
  v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v115 count:3];
  v120[0] = v93;
  v119 = *MEMORY[0x277D3F540];
  v6 = v119;
  v113[0] = @"logID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v114[0] = commonTypeDict_StringFormat;
  v113[1] = @"videoCodecType";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v114[1] = commonTypeDict_IntegerFormat;
  v113[2] = @"resHeight";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v114[2] = commonTypeDict_IntegerFormat2;
  v113[3] = @"numFramesDecoded";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v114[3] = commonTypeDict_IntegerFormat3;
  v113[4] = @"numFramesEncoded";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v114[4] = commonTypeDict_IntegerFormat4;
  v113[5] = @"resWidth";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v114[5] = commonTypeDict_IntegerFormat5;
  v113[6] = @"isHDR";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]7 commonTypeDict_BoolFormat];
  v114[6] = commonTypeDict_BoolFormat;
  v113[7] = @"processID";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v114[7] = commonTypeDict_IntegerFormat6;
  v113[8] = @"BundleID";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]9 commonTypeDict_StringFormat_withBundleID];
  v114[8] = commonTypeDict_StringFormat_withBundleID;
  v113[9] = @"numFramesDropped";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v114[9] = commonTypeDict_IntegerFormat7;
  v113[10] = @"sessionDuration";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v114[10] = commonTypeDict_IntegerFormat8;
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:11];
  v120[1] = v70;
  v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:&v118 count:2];
  v122[0] = v69;
  v121[1] = @"VTTile";
  v111[0] = v2;
  v108[0] = v3;
  v108[1] = v4;
  v110[0] = &unk_282C1C4F8;
  v110[1] = MEMORY[0x277CBEC28];
  v109 = *MEMORY[0x277D3F4A0];
  v7 = v109;
  v8 = MEMORY[0x277CBEC38];
  v110[2] = MEMORY[0x277CBEC38];
  v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v108 count:3];
  v112[0] = v68;
  v111[1] = v6;
  v106[0] = @"videoCodecType";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v107[0] = commonTypeDict_IntegerFormat9;
  v106[1] = @"resHeight";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v107[1] = commonTypeDict_IntegerFormat10;
  v106[2] = @"numFramesDecoded";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v107[2] = commonTypeDict_IntegerFormat11;
  v106[3] = @"numFramesEncoded";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
  v107[3] = commonTypeDict_IntegerFormat12;
  v106[4] = @"resWidth";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v107[4] = commonTypeDict_IntegerFormat13;
  v106[5] = @"isHDR";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]17 commonTypeDict_BoolFormat];
  v107[5] = commonTypeDict_BoolFormat2;
  v106[6] = @"processID";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v107[6] = commonTypeDict_IntegerFormat14;
  v106[7] = @"BundleID";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID2 = [mEMORY[0x277D3F198]19 commonTypeDict_StringFormat_withBundleID];
  v107[7] = commonTypeDict_StringFormat_withBundleID2;
  v106[8] = @"numFramesDropped";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
  v107[8] = commonTypeDict_IntegerFormat15;
  v106[9] = @"sessionDuration";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
  v107[9] = commonTypeDict_IntegerFormat16;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:10];
  v112[1] = v47;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:2];
  v122[1] = v46;
  v121[2] = @"CMVideoPlayback";
  v104[0] = v2;
  v102[0] = v3;
  v102[1] = v5;
  v103[0] = &unk_282C1C4F8;
  v103[1] = MEMORY[0x277CBEC28];
  v9 = *MEMORY[0x277D3F4F0];
  v102[2] = v7;
  v102[3] = v9;
  v103[2] = v8;
  v103[3] = &unk_282C14BF8;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:4];
  v105[0] = v45;
  v104[1] = v6;
  v100[0] = @"AuOn";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]22 commonTypeDict_BoolFormat];
  v101[0] = commonTypeDict_BoolFormat3;
  v100[1] = @"IfTy";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat];
  v101[1] = commonTypeDict_IntegerFormat17;
  v100[2] = @"logID";
  mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]24 commonTypeDict_StringFormat];
  v101[2] = commonTypeDict_StringFormat2;
  v100[3] = @"PlayTimeWC";
  mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat];
  v101[3] = commonTypeDict_IntegerFormat18;
  v100[4] = @"ProcessName";
  mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]26 commonTypeDict_StringFormat_withProcessName];
  v101[4] = commonTypeDict_StringFormat_withProcessName;
  v100[5] = @"StallCount";
  mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
  v101[5] = commonTypeDict_IntegerFormat19;
  v100[6] = @"TWIABR";
  mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]28 commonTypeDict_IntegerFormat];
  v101[6] = commonTypeDict_IntegerFormat20;
  v100[7] = @"TWIBR";
  mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
  v101[7] = commonTypeDict_IntegerFormat21;
  v100[8] = @"TWOBR";
  mEMORY[0x277D3F198]30 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]30 commonTypeDict_IntegerFormat];
  v101[8] = commonTypeDict_IntegerFormat22;
  v100[9] = @"TWVaRk";
  mEMORY[0x277D3F198]31 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]31 commonTypeDict_IntegerFormat];
  v101[9] = commonTypeDict_IntegerFormat23;
  v100[10] = @"PlaybackType";
  mEMORY[0x277D3F198]32 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]32 commonTypeDict_IntegerFormat];
  v101[10] = commonTypeDict_IntegerFormat24;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:11];
  v105[1] = v22;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:2];
  v122[2] = v21;
  v121[3] = @"CMVideoQueue";
  v98[0] = v2;
  v96[0] = v3;
  v96[1] = v7;
  v97[0] = &unk_282C1C4F8;
  v97[1] = MEMORY[0x277CBEC38];
  v96[2] = v9;
  v97[2] = &unk_282C14C10;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:3];
  v99[0] = v10;
  v98[1] = v6;
  v94[0] = @"logID";
  mEMORY[0x277D3F198]33 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]33 commonTypeDict_StringFormat];
  v95[0] = commonTypeDict_StringFormat3;
  v94[1] = @"PlayTimeWC";
  mEMORY[0x277D3F198]34 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat25 = [mEMORY[0x277D3F198]34 commonTypeDict_IntegerFormat];
  v95[1] = commonTypeDict_IntegerFormat25;
  v94[2] = @"ProcessName";
  mEMORY[0x277D3F198]35 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName2 = [mEMORY[0x277D3F198]35 commonTypeDict_StringFormat_withProcessName];
  v95[2] = commonTypeDict_StringFormat_withProcessName2;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:3];
  v99[1] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:2];
  v122[3] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:4];

  return v19;
}

+ (id)entryEventIntervalDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"GroupSession";
  entryEventIntervalDefinitionGroupSession = [self entryEventIntervalDefinitionGroupSession];
  v6[0] = entryEventIntervalDefinitionGroupSession;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventIntervalDefinitionGroupSession
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_282C1C4F8;
  v14[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"timestampEnd";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v11[1] = @"BundleID";
  v12[0] = commonTypeDict_DateFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v12[1] = commonTypeDict_StringFormat_withBundleID;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

- (PLVideoAgent)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLVideoAgent;
    self = [(PLAgent *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F270]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __40__PLVideoAgent_initOperatorDependancies__block_invoke;
  v20[3] = &unk_27825A1D8;
  v20[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_282C184E0 withBlock:v20];
  [(PLVideoAgent *)self setNotification:v4];

  v5 = objc_alloc(MEMORY[0x277D3F270]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __40__PLVideoAgent_initOperatorDependancies__block_invoke_133;
  v19[3] = &unk_27825A1D8;
  v19[4] = self;
  v6 = [v5 initWithOperator:self withRegistration:&unk_282C18508 withBlock:v19];
  [(PLVideoAgent *)self setCMVideoPlaybackListener:v6];

  v7 = objc_alloc(MEMORY[0x277D3F270]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__PLVideoAgent_initOperatorDependancies__block_invoke_141;
  v18[3] = &unk_27825A1D8;
  v18[4] = self;
  v8 = [v7 initWithOperator:self withRegistration:&unk_282C18530 withBlock:v18];
  [(PLVideoAgent *)self setCMVideoQueueListener:v8];

  v9 = objc_alloc(MEMORY[0x277D3F270]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __40__PLVideoAgent_initOperatorDependancies__block_invoke_149;
  v17[3] = &unk_27825A1D8;
  v17[4] = self;
  v10 = [v9 initWithOperator:self withRegistration:&unk_282C18558 withBlock:v17];
  [(PLVideoAgent *)self setVTSessionListener:v10];

  v11 = objc_alloc(MEMORY[0x277D3F270]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __40__PLVideoAgent_initOperatorDependancies__block_invoke_157;
  v16[3] = &unk_27825A1D8;
  v16[4] = self;
  v12 = [v11 initWithOperator:self withRegistration:&unk_282C18580 withBlock:v16];
  [(PLVideoAgent *)self setVTTileListener:v12];

  v13 = objc_alloc(MEMORY[0x277D3F270]);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__PLVideoAgent_initOperatorDependancies__block_invoke_167;
  v15[3] = &unk_27825A1D8;
  v15[4] = self;
  v14 = [v13 initWithOperator:self withRegistration:&unk_282C185A8 withBlock:v15];
  [(PLVideoAgent *)self setGroupSessionListener:v14];
}

void __40__PLVideoAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogVideo();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentRegistrationVideo: payload=%@", &v13, 0xCu);
  }

  v8 = [(PLOperator *)PLVideoAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Video"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  v10 = objc_opt_class();
  v11 = [v9 objectForKeyedSubscript:@"State"];
  v12 = [v10 stateEnumForStateString:v11];
  [v9 setObject:v12 forKeyedSubscript:@"State"];

  [*(a1 + 32) logEventForwardVideoWithEntry:v9];
}

void __40__PLVideoAgent_initOperatorDependancies__block_invoke_133(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentRegistrationCMVideoPlayback: payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventBackwardCMVideoPlaybackWithEntry:v6];
}

void __40__PLVideoAgent_initOperatorDependancies__block_invoke_141(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentRegistrationCMVideoQueue: payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventBackwardCMVideoQueueWithEntry:v6];
}

void __40__PLVideoAgent_initOperatorDependancies__block_invoke_149(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogVideo();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentRegistrationVTSession: payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventBackwardVTSessionWithEntry:v6];
}

void __40__PLVideoAgent_initOperatorDependancies__block_invoke_157(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogVideo();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideAgentEventBackwardVTTile: payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventBackwardVTTileWithEntry:v6];
}

void __40__PLVideoAgent_initOperatorDependancies__block_invoke_167(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogVideo();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentRegistrationGroupSession: payload=%@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventIntervalGroupSession:v6];
}

- (void)logEventForwardVideoWithEntry:(id)entry
{
  v24[1] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v5 = entryCopy;
  if (entryCopy)
  {
    v6 = [entryCopy objectForKeyedSubscript:@"State"];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 objectForKeyedSubscript:@"clientDisplayID"];

      if (v8)
      {
        [(PLOperator *)self logEntry:v5];
        monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
        v10 = [v5 objectForKeyedSubscript:@"State"];
        integerValue = [v10 integerValue];

        if (integerValue == 1)
        {
          v12 = 0;
          v13 = monotonicDate;
        }

        else
        {
          v14 = [v5 objectForKeyedSubscript:@"State"];
          integerValue2 = [v14 integerValue];

          if (integerValue2 != 2)
          {
LABEL_12:

            goto LABEL_13;
          }

          v13 = 0;
          v12 = monotonicDate;
        }

        v16 = monotonicDate;
        v17 = [v5 objectForKeyedSubscript:@"clientDisplayID"];
        v18 = v17;
        v19 = @"video-unknown";
        if (v17 && [(__CFString *)v17 length])
        {
          v19 = v18;
        }

        v20 = v19;

        mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
        v23 = v20;
        v24[0] = &unk_282C1C4F8;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];

        [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:9 withChildNodeNameToWeight:v22 withStartDate:v16];
        goto LABEL_12;
      }
    }
  }

LABEL_13:
}

- (int)convertPlaybackTypetoInt:(id)int
{
  v10 = *MEMORY[0x277D85DE8];
  intCopy = int;
  v4 = PLLogVideo();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = intCopy;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentRegistrationCMVideoPlayback converting playbackType %@ to an enum", &v8, 0xCu);
  }

  if ([intCopy isEqualToString:@"HLS"])
  {
    v5 = 0;
  }

  else if ([intCopy isEqualToString:@"FILE"])
  {
    v5 = 1;
  }

  else if ([intCopy isEqualToString:@"CRABS"])
  {
    v5 = 2;
  }

  else
  {
    v6 = PLLogVideo();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = intCopy;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentRegistrationCMVideoPlayback playbackType %@ does not fall in any enum", &v8, 0xCu);
    }

    v5 = 3;
  }

  return v5;
}

- (void)logEventBackwardCMVideoPlaybackWithEntry:(id)entry
{
  v44 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v5 = [(PLOperator *)PLVideoAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CMVideoPlayback"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:entryCopy];
  v7 = [entryCopy objectForKeyedSubscript:@"TWIABR"];

  if (v7)
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = MEMORY[0x277D3F258];
    v10 = [v6 objectForKeyedSubscript:@"TWIABR"];
    v11 = [v8 numberWithInt:{objc_msgSend(v9, "roundToSigFig:withSigFig:", objc_msgSend(v10, "intValue"), 2)}];
    [v6 setObject:v11 forKeyedSubscript:@"TWIABR"];
  }

  v12 = [entryCopy objectForKeyedSubscript:@"TWIBR"];

  if (v12)
  {
    v13 = MEMORY[0x277CCABB0];
    v14 = MEMORY[0x277D3F258];
    v15 = [v6 objectForKeyedSubscript:@"TWIBR"];
    v16 = [v13 numberWithInt:{objc_msgSend(v14, "roundToSigFig:withSigFig:", objc_msgSend(v15, "intValue"), 2)}];
    [v6 setObject:v16 forKeyedSubscript:@"TWIBR"];
  }

  v17 = [entryCopy objectForKeyedSubscript:@"TWOBR"];

  if (v17)
  {
    v18 = MEMORY[0x277CCABB0];
    v19 = MEMORY[0x277D3F258];
    v20 = [v6 objectForKeyedSubscript:@"TWOBR"];
    v21 = [v18 numberWithInt:{objc_msgSend(v19, "roundToSigFig:withSigFig:", objc_msgSend(v20, "intValue"), 2)}];
    [v6 setObject:v21 forKeyedSubscript:@"TWOBR"];
  }

  v22 = [entryCopy objectForKeyedSubscript:@"TWIABR"];

  if (v22)
  {
    v23 = MEMORY[0x277CCABB0];
    v24 = MEMORY[0x277D3F258];
    v25 = [v6 objectForKeyedSubscript:@"TWIABR"];
    v26 = [v23 numberWithInt:{objc_msgSend(v24, "roundToSigFig:withSigFig:", objc_msgSend(v25, "intValue"), 2)}];
    [v6 setObject:v26 forKeyedSubscript:@"TWIABR"];
  }

  v27 = [entryCopy objectForKeyedSubscript:@"VideoPlaybackType"];

  if (v27)
  {
    v28 = MEMORY[0x277CCABB0];
    v29 = [entryCopy objectForKeyedSubscript:@"VideoPlaybackType"];
    v30 = [v28 numberWithUnsignedInt:{-[PLVideoAgent convertPlaybackTypetoInt:](self, "convertPlaybackTypetoInt:", v29)}];
    [v6 setObject:v30 forKeyedSubscript:@"PlaybackType"];

    v31 = PLLogVideo();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v41 = [v6 objectForKeyedSubscript:@"PlaybackType"];
      v42 = 138412290;
      v43 = v41;
      _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentEventBackwardCMVideoPlayback playbackType enum: %@", &v42, 0xCu);
    }
  }

  v32 = [entryCopy objectForKeyedSubscript:@"PlayTimeWC"];
  if (v32)
  {
    v33 = v32;
    v34 = [entryCopy objectForKeyedSubscript:@"PlayTimeWC"];
    intValue = [v34 intValue];

    if (intValue >= 1001)
    {
      v36 = MEMORY[0x277CCABB0];
      v37 = MEMORY[0x277D3F258];
      v38 = [v6 objectForKeyedSubscript:@"PlayTimeWC"];
      v39 = [v36 numberWithInt:{objc_msgSend(v37, "roundToSigFig:withSigFig:", objc_msgSend(v38, "intValue"), 1)}];
      [v6 setObject:v39 forKeyedSubscript:@"PlayTimeWC"];

      v40 = PLLogVideo();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v42 = 138412290;
        v43 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentEventBackwardCMVideoPlayback logging payload: %@", &v42, 0xCu);
      }

      [(PLOperator *)self logEntry:v6];
    }
  }
}

- (void)logEventBackwardCMVideoQueueWithEntry:(id)entry
{
  entryCopy = entry;
  v5 = [(PLOperator *)PLVideoAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CMVideoQueue"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:entryCopy];
  v7 = [entryCopy objectForKeyedSubscript:@"PlayTimeWC"];
  if (v7 && (v8 = v7, [entryCopy objectForKeyedSubscript:@"PlayTimeWC"], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "intValue"), v9, v8, v10 >= 1001))
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = MEMORY[0x277D3F258];
    v13 = [v6 objectForKeyedSubscript:@"PlayTimeWC"];
    v14 = [v11 numberWithInt:{objc_msgSend(v12, "roundToSigFig:withSigFig:", objc_msgSend(v13, "intValue"), 1)}];
    [v6 setObject:v14 forKeyedSubscript:@"PlayTimeWC"];

    [(PLOperator *)self logEntry:v6];
  }

  else
  {
    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *v16 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "PLVideoAgent::kPLVideoAgentRegistrationCMVideoQueue PlayTimeWC is smaller than one second, skipping this log", v16, 2u);
    }
  }
}

- (void)logEventBackwardVTSessionWithEntry:(id)entry
{
  v21 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v5 = [(PLOperator *)PLVideoAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"VTSession"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:entryCopy];
  v7 = [entryCopy objectForKeyedSubscript:@"processID"];
  intValue = [v7 intValue];

  v9 = [MEMORY[0x277D3F258] bundleIDFromPid:intValue];
  if (([MEMORY[0x277D3F180] liteMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "taskMode"))
  {
    if (([v9 hasPrefix:@"com.apple"] & 1) != 0 || objc_msgSend(&unk_282C14C28, "containsObject:", v9))
    {
      [v6 setObject:v9 forKeyedSubscript:@"BundleID"];
      v10 = MEMORY[0x277CCABB0];
      v11 = MEMORY[0x277D3F258];
      v12 = [entryCopy objectForKeyedSubscript:@"numFramesDecoded"];
      v13 = [v10 numberWithLong:{objc_msgSend(v11, "roundToSigFig:withSigFig:", objc_msgSend(v12, "intValue"), 3)}];
      [v6 setObject:v13 forKeyedSubscript:@"numFramesDecoded"];

      v14 = MEMORY[0x277CCABB0];
      v15 = MEMORY[0x277D3F258];
      v16 = [entryCopy objectForKeyedSubscript:@"numFramesEncoded"];
      v17 = [v14 numberWithLong:{objc_msgSend(v15, "roundToSigFig:withSigFig:", objc_msgSend(v16, "intValue"), 3)}];
      [v6 setObject:v17 forKeyedSubscript:@"numFramesEncoded"];
    }

    else
    {
      v19 = PLLogVideo();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20[0] = 67109120;
        v20[1] = intValue;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "the appBundleID is not approved and pid is %d", v20, 8u);
      }
    }
  }

  else
  {
    v18 = [MEMORY[0x277D3F258] bundleIDFromPid:intValue];
    [v6 setObject:v18 forKeyedSubscript:@"BundleID"];
  }

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventBackwardVTTileWithEntry:(id)entry
{
  v4 = *MEMORY[0x277D3F5C8];
  entryCopy = entry;
  v7 = [(PLOperator *)PLVideoAgent entryKeyForType:v4 andName:@"VTTile"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:entryCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventIntervalGroupSession:(id)session
{
  v4 = *MEMORY[0x277D3F5D8];
  sessionCopy = session;
  v14 = [(PLOperator *)PLVideoAgent entryKeyForType:v4 andName:@"GroupSession"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14 withRawData:sessionCopy];
  v7 = [sessionCopy objectForKeyedSubscript:@"timestamp"];
  convertFromSystemToMonotonic = [v7 convertFromSystemToMonotonic];
  [v6 setEntryDate:convertFromSystemToMonotonic];

  v9 = [sessionCopy objectForKeyedSubscript:@"timestampEnd"];
  convertFromSystemToMonotonic2 = [v9 convertFromSystemToMonotonic];
  [v6 setObject:convertFromSystemToMonotonic2 forKeyedSubscript:@"timestampEnd"];

  v11 = [sessionCopy objectForKeyedSubscript:@"bundleID"];

  [v6 setObject:v11 forKeyedSubscript:@"BundleID"];
  v12 = [v6 objectForKeyedSubscript:@"timestampEnd"];

  if (!v12)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [v6 setObject:monotonicDate forKeyedSubscript:@"timestampEnd"];
  }

  [(PLOperator *)self logEntry:v6];
}

+ (id)stateEnumForStateString:(id)string
{
  v3 = qword_2811F4D68;
  stringCopy = string;
  if (v3 != -1)
  {
    dispatch_once(&qword_2811F4D68, &__block_literal_global_231);
  }

  v5 = [qword_2811F4D60 objectForKeyedSubscript:stringCopy];

  return v5;
}

void __40__PLVideoAgent_stateEnumForStateString___block_invoke()
{
  v0 = qword_2811F4D60;
  qword_2811F4D60 = &unk_282C185D0;
}

@end