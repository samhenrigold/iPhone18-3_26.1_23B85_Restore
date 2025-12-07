@interface PLPushAgent
+ (BOOL)isHighPriorityPushEntry:(id)entry;
+ (id)bundleIdFromTopic:(id)topic;
+ (id)entryAggregateDefinitionAPSDConnected;
+ (id)entryAggregateDefinitionSentKeepAlive;
+ (id)entryAggregateDefinitionSentPushes;
+ (id)entryAggregateDefinitionSuppressedPushes;
+ (id)entryAggregateDefinitions;
+ (id)entryEventPointDefinitionIncomingPushProxyMessages;
+ (id)entryEventPointDefinitionMessage;
+ (id)entryEventPointDefinitionOutgoingPushProxyMessages;
+ (id)entryEventPointDefinitions;
+ (id)entryEventPointDefinitionsAPSDConnectedEvent;
+ (id)entryEventPointDefinitionsReceivedKeepAlive;
+ (id)entryEventPointDefinitionsReceivedPush;
+ (id)entryEventPointDefinitionsSentKeepAlive;
+ (id)entryEventPointDefinitionsSentPush;
+ (id)replaceConnectionTypeWithEnum:(id)enum;
+ (void)load;
- (PLPushAgent)init;
- (unint64_t)convertMessageProtocol:(id)protocol;
- (void)accountReceivedPushWithEntry:(id)entry;
- (void)checkPushUsage:(id)usage withPLEntry:(id)entry;
- (void)handleMessageEvent:(id)event isSentEvent:(BOOL)sentEvent;
- (void)initOperatorDependancies;
- (void)logAggregateSentKeepAlive:(id)alive;
- (void)logAggregateSuppressedPushes:(id)pushes;
- (void)logEventPointReceivedKeepAlive:(id)alive;
- (void)logPushProxyMessages:(id)messages forMessageType:(id)type;
- (void)sendEnergyIssueSignatureNotification:(id)notification withThreshold:(double)threshold;
@end

@implementation PLPushAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLPushAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v15[9] = *MEMORY[0x277D85DE8];
  entryEventPointDefinitionsReceivedPush = [self entryEventPointDefinitionsReceivedPush];
  v15[0] = entryEventPointDefinitionsReceivedPush;
  v14[1] = @"SentPush";
  entryEventPointDefinitionsSentPush = [self entryEventPointDefinitionsSentPush];
  v15[1] = entryEventPointDefinitionsSentPush;
  v14[2] = @"APSDConnectedEvent";
  entryEventPointDefinitionsAPSDConnectedEvent = [self entryEventPointDefinitionsAPSDConnectedEvent];
  v15[2] = entryEventPointDefinitionsAPSDConnectedEvent;
  v14[3] = @"SentKeepAlive";
  entryEventPointDefinitionsSentKeepAlive = [self entryEventPointDefinitionsSentKeepAlive];
  v15[3] = entryEventPointDefinitionsSentKeepAlive;
  v14[4] = @"ReceivedKeepAlive";
  entryEventPointDefinitionsReceivedKeepAlive = [self entryEventPointDefinitionsReceivedKeepAlive];
  v15[4] = entryEventPointDefinitionsReceivedKeepAlive;
  v14[5] = @"MessageSent";
  entryEventPointDefinitionMessageSent = [self entryEventPointDefinitionMessageSent];
  v15[5] = entryEventPointDefinitionMessageSent;
  v14[6] = @"MessageReceived";
  entryEventPointDefinitionMessageReceived = [self entryEventPointDefinitionMessageReceived];
  v15[6] = entryEventPointDefinitionMessageReceived;
  v14[7] = @"IncomingProxyMessages";
  entryEventPointDefinitionIncomingPushProxyMessages = [self entryEventPointDefinitionIncomingPushProxyMessages];
  v15[7] = entryEventPointDefinitionIncomingPushProxyMessages;
  v14[8] = @"OutgoingProxyMessages";
  entryEventPointDefinitionOutgoingPushProxyMessages = [self entryEventPointDefinitionOutgoingPushProxyMessages];
  v15[8] = entryEventPointDefinitionOutgoingPushProxyMessages;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:9];

  return v12;
}

+ (id)entryEventPointDefinitionsReceivedPush
{
  v45[2] = *MEMORY[0x277D85DE8];
  v44[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v42[0] = *MEMORY[0x277D3F568];
  v42[1] = v2;
  v43[0] = &unk_28714B458;
  v43[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F4A0];
  v42[2] = *MEMORY[0x277D3F4D8];
  v42[3] = v3;
  v43[2] = MEMORY[0x277CBEC38];
  v43[3] = MEMORY[0x277CBEC38];
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:4];
  v45[0] = v39;
  v44[1] = *MEMORY[0x277D3F540];
  v40[0] = @"ConnectionType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v41[0] = commonTypeDict_StringFormat;
  v40[1] = @"ServerHostname";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v41[1] = commonTypeDict_StringFormat2;
  v40[2] = @"ServerIP";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v41[2] = commonTypeDict_StringFormat3;
  v40[3] = @"LinkQuality";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v41[3] = commonTypeDict_IntegerFormat;
  v40[4] = @"MessageIdentifier";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v41[4] = commonTypeDict_IntegerFormat2;
  v40[5] = @"Topic";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v41[5] = commonTypeDict_StringFormat4;
  v40[6] = @"BundleID";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat_withBundleID];
  v41[6] = commonTypeDict_StringFormat_withBundleID;
  v40[7] = @"IsDropped";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v41[7] = commonTypeDict_IntegerFormat3;
  v40[8] = @"Priority";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v41[8] = commonTypeDict_IntegerFormat4;
  v40[9] = @"StorageFlag";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]10 commonTypeDict_BoolFormat];
  v41[9] = commonTypeDict_BoolFormat;
  v40[10] = @"Size";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v41[10] = commonTypeDict_IntegerFormat5;
  v40[11] = @"FilterList";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v41[11] = commonTypeDict_IntegerFormat6;
  v40[12] = @"DidWake";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]13 commonTypeDict_BoolFormat];
  v41[12] = commonTypeDict_BoolFormat2;
  v40[13] = @"PushType";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v41[13] = commonTypeDict_IntegerFormat7;
  v40[14] = @"IsOffloadEvent";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]15 commonTypeDict_BoolFormat];
  v41[14] = commonTypeDict_BoolFormat3;
  v40[15] = @"TimestampEvent";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]16 commonTypeDict_DateFormat];
  v41[15] = commonTypeDict_DateFormat;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:16];
  v45[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];

  return v13;
}

+ (id)entryEventPointDefinitionsSentPush
{
  v32[2] = *MEMORY[0x277D85DE8];
  v31[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v29[0] = *MEMORY[0x277D3F568];
  v29[1] = v2;
  v30[0] = &unk_28714B468;
  v30[1] = MEMORY[0x277CBEC38];
  v29[2] = *MEMORY[0x277D3F550];
  v30[2] = MEMORY[0x277CBEC28];
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v32[0] = v26;
  v31[1] = *MEMORY[0x277D3F540];
  v27[0] = @"ConnectionType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v28[0] = commonTypeDict_IntegerFormat;
  v27[1] = @"ServerHostname";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v28[1] = commonTypeDict_StringFormat;
  v27[2] = @"ServerIP";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v28[2] = commonTypeDict_StringFormat2;
  v27[3] = @"LinkQuality";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v28[3] = commonTypeDict_IntegerFormat2;
  v27[4] = @"MessageIdentifier";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v28[4] = commonTypeDict_IntegerFormat3;
  v27[5] = @"Topic";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v28[5] = commonTypeDict_StringFormat3;
  v27[6] = @"Priority";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v28[6] = commonTypeDict_IntegerFormat4;
  v27[7] = @"Size";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v28[7] = commonTypeDict_IntegerFormat5;
  v27[8] = @"IsOffloadEvent";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]9 commonTypeDict_BoolFormat];
  v28[8] = commonTypeDict_BoolFormat;
  v27[9] = @"TimestampEvent";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]10 commonTypeDict_DateFormat];
  v28[9] = commonTypeDict_DateFormat;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:10];
  v32[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

  return v12;
}

+ (id)entryEventPointDefinitionsAPSDConnectedEvent
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v19[0] = *MEMORY[0x277D3F568];
  v19[1] = v2;
  v20[0] = &unk_28714B478;
  v20[1] = MEMORY[0x277CBEC38];
  v19[2] = *MEMORY[0x277D3F550];
  v20[2] = MEMORY[0x277CBEC28];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v22[0] = v16;
  v21[1] = *MEMORY[0x277D3F540];
  v17[0] = @"ConnectionType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v18[0] = commonTypeDict_IntegerFormat;
  v17[1] = @"ServerHostname";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v18[1] = commonTypeDict_StringFormat;
  v17[2] = @"ServerIP";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v18[2] = commonTypeDict_StringFormat2;
  v17[3] = @"LinkQuality";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v18[3] = commonTypeDict_IntegerFormat2;
  v17[4] = @"ExperimentID";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v18[4] = commonTypeDict_IntegerFormat3;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v22[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  return v12;
}

+ (id)entryEventPointDefinitionsSentKeepAlive
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v17[0] = *MEMORY[0x277D3F568];
  v17[1] = v2;
  v18[0] = &unk_28714B488;
  v18[1] = MEMORY[0x277CBEC38];
  v17[2] = *MEMORY[0x277D3F550];
  v18[2] = MEMORY[0x277CBEC28];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v20[0] = v14;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"ConnectionType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v16[0] = commonTypeDict_IntegerFormat;
  v15[1] = @"LinkQuality";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v16[1] = commonTypeDict_IntegerFormat2;
  v15[2] = @"IsOffloadEvent";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]3 commonTypeDict_BoolFormat];
  v16[2] = commonTypeDict_BoolFormat;
  v15[3] = @"TimestampEvent";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]4 commonTypeDict_DateFormat];
  v16[3] = commonTypeDict_DateFormat;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  return v12;
}

+ (id)entryEventPointDefinitionsReceivedKeepAlive
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v22[0] = &unk_28714B488;
  v22[1] = MEMORY[0x277CBEC38];
  v21[2] = *MEMORY[0x277D3F550];
  v22[2] = MEMORY[0x277CBEC28];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"ConnectionType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v20[0] = commonTypeDict_IntegerFormat;
  v19[1] = @"DidWake";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
  v20[1] = commonTypeDict_BoolFormat;
  v19[2] = @"Environment";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v20[2] = commonTypeDict_IntegerFormat2;
  v19[3] = @"LinkQuality";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v20[3] = commonTypeDict_IntegerFormat3;
  v19[4] = @"IsOffloadEvent";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_BoolFormat];
  v20[4] = commonTypeDict_BoolFormat2;
  v19[5] = @"TimestampEvent";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]6 commonTypeDict_DateFormat];
  v20[5] = commonTypeDict_DateFormat;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  return v12;
}

+ (id)entryEventPointDefinitionMessage
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v22[0] = &unk_28714B488;
  v22[1] = MEMORY[0x277CBEC38];
  v21[2] = *MEMORY[0x277D3F550];
  v22[2] = MEMORY[0x277CBEC28];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"MessageType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v20[0] = commonTypeDict_IntegerFormat;
  v19[1] = @"ConversationType";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v20[1] = commonTypeDict_IntegerFormat2;
  v19[2] = @"Protocol";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v20[2] = commonTypeDict_IntegerFormat3;
  v19[3] = @"Target";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v20[3] = commonTypeDict_IntegerFormat4;
  v19[4] = @"Source";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v20[4] = commonTypeDict_IntegerFormat5;
  v19[5] = @"MessageGUID";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v20[5] = commonTypeDict_StringFormat;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  return v12;
}

+ (id)entryEventPointDefinitionIncomingPushProxyMessages
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v12 = *MEMORY[0x277D3F568];
  v13 = &unk_28714B498;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[0] = v2;
  v14[1] = *MEMORY[0x277D3F540];
  v10[0] = @"ProxyCommand";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10[1] = @"Count";
  v11[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v11[1] = commonTypeDict_IntegerFormat2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

+ (id)entryEventPointDefinitionOutgoingPushProxyMessages
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v12 = *MEMORY[0x277D3F568];
  v13 = &unk_28714B498;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[0] = v2;
  v14[1] = *MEMORY[0x277D3F540];
  v10[0] = @"ProxyCommand";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10[1] = @"Count";
  v11[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v11[1] = commonTypeDict_IntegerFormat2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

+ (id)entryAggregateDefinitions
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"SentPushes";
  entryAggregateDefinitionSentPushes = [self entryAggregateDefinitionSentPushes];
  v10[0] = entryAggregateDefinitionSentPushes;
  v9[1] = @"SuppressedPushes";
  entryAggregateDefinitionSuppressedPushes = [self entryAggregateDefinitionSuppressedPushes];
  v10[1] = entryAggregateDefinitionSuppressedPushes;
  v9[2] = @"APSDConnected";
  entryAggregateDefinitionAPSDConnected = [self entryAggregateDefinitionAPSDConnected];
  v10[2] = entryAggregateDefinitionAPSDConnected;
  v9[3] = @"SentKeepAlive";
  entryAggregateDefinitionSentKeepAlive = [self entryAggregateDefinitionSentKeepAlive];
  v10[3] = entryAggregateDefinitionSentKeepAlive;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

+ (id)entryAggregateDefinitionSentPushes
{
  v31[4] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_28714B488;
  v29[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F590];
  v28[2] = *MEMORY[0x277D3F4D8];
  v28[3] = v3;
  v29[2] = MEMORY[0x277CBEC38];
  v29[3] = &unk_287145EE0;
  v28[4] = *MEMORY[0x277D3F588];
  v29[4] = &unk_28714B4A8;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:5];
  v31[0] = v20;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"ConnectionType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v27[0] = commonTypeDict_IntegerFormat;
  v26[1] = @"Topic";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v27[1] = commonTypeDict_StringFormat;
  v26[2] = @"Priority";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v27[2] = commonTypeDict_IntegerFormat2;
  v26[3] = @"Count";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v27[3] = commonTypeDict_IntegerFormat3;
  v26[4] = @"Size";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v27[4] = commonTypeDict_IntegerFormat4;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:5];
  v31[1] = v9;
  v30[2] = *MEMORY[0x277D3F478];
  v24 = &unk_28714B4B8;
  v22 = *MEMORY[0x277D3F470];
  v23 = &unk_28714B4C8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v25 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v31[2] = v11;
  v30[3] = *MEMORY[0x277D3F488];
  v21[0] = @"Count";
  v21[1] = @"Size";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v31[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];

  return v13;
}

+ (id)entryAggregateDefinitionSuppressedPushes
{
  v26[4] = *MEMORY[0x277D85DE8];
  v25[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v23[0] = *MEMORY[0x277D3F568];
  v23[1] = v2;
  v24[0] = &unk_28714B498;
  v24[1] = MEMORY[0x277CBEC38];
  v23[2] = *MEMORY[0x277D3F4A0];
  v24[2] = MEMORY[0x277CBEC38];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v26[0] = v15;
  v25[1] = *MEMORY[0x277D3F540];
  v21[0] = @"BundleID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withBundleID];
  v22[0] = commonTypeDict_StringFormat_withBundleID;
  v21[1] = @"InterruptionSuppression";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v22[1] = commonTypeDict_IntegerFormat;
  v21[2] = @"Count";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v22[2] = commonTypeDict_IntegerFormat2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v26[1] = v8;
  v25[2] = *MEMORY[0x277D3F478];
  v19 = &unk_28714B4D8;
  v17 = *MEMORY[0x277D3F470];
  v18 = &unk_28714B4C8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v26[2] = v10;
  v25[3] = *MEMORY[0x277D3F488];
  v16 = @"Count";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v26[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];

  return v12;
}

+ (id)entryAggregateDefinitionAPSDConnected
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v19[0] = *MEMORY[0x277D3F568];
  v19[1] = v2;
  v20[0] = &unk_28714B498;
  v20[1] = MEMORY[0x277CBEC38];
  v19[2] = *MEMORY[0x277D3F550];
  v20[2] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v22[0] = v3;
  v21[1] = *MEMORY[0x277D3F540];
  v17 = @"Count";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v18 = commonTypeDict_IntegerFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v22[1] = v6;
  v21[2] = *MEMORY[0x277D3F478];
  v15 = &unk_28714B4D8;
  v13 = *MEMORY[0x277D3F470];
  v14 = &unk_28714B4C8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v22[2] = v8;
  v21[3] = *MEMORY[0x277D3F488];
  v12 = @"Count";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v22[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  return v10;
}

+ (id)entryAggregateDefinitionSentKeepAlive
{
  v24[4] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v22[0] = &unk_28714B498;
  v22[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v24[0] = v3;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"ConnectionType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v19[1] = @"Count";
  v20[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v20[1] = commonTypeDict_IntegerFormat2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v24[1] = v8;
  v23[2] = *MEMORY[0x277D3F478];
  v17 = &unk_28714B4E8;
  v15 = *MEMORY[0x277D3F470];
  v16 = &unk_28714B4C8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v24[2] = v10;
  v23[3] = *MEMORY[0x277D3F488];
  v14 = @"Count";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v24[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];

  return v12;
}

- (PLPushAgent)init
{
  v3.receiver = self;
  v3.super_class = PLPushAgent;
  result = [(PLAgent *)&v3 init];
  if (result)
  {
    result->_numKeepAlives = 0;
  }

  return result;
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F270]);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke;
  v42[3] = &unk_279A5BCB8;
  v42[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_2871488D8 withBlock:v42];
  [(PLPushAgent *)self setReceivedPushListener:v4];

  v5 = objc_alloc(MEMORY[0x277D3F270]);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_201;
  v41[3] = &unk_279A5BCB8;
  v41[4] = self;
  v6 = [v5 initWithOperator:self withRegistration:&unk_287148900 withBlock:v41];
  [(PLPushAgent *)self setSentPushListener:v6];

  v7 = objc_alloc(MEMORY[0x277D3F270]);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_210;
  v40[3] = &unk_279A5BCB8;
  v40[4] = self;
  v8 = [v7 initWithOperator:self withRegistration:&unk_287148928 withBlock:v40];
  [(PLPushAgent *)self setSuppressedPushesListener:v8];

  v9 = objc_alloc(MEMORY[0x277D3F270]);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_218;
  v39[3] = &unk_279A5BCB8;
  v39[4] = self;
  v10 = [v9 initWithOperator:self withRegistration:&unk_287148950 withBlock:v39];
  [(PLPushAgent *)self setApsdConnectedListener:v10];

  v11 = objc_alloc(MEMORY[0x277D3F270]);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_226;
  v38[3] = &unk_279A5BCB8;
  v38[4] = self;
  v12 = [v11 initWithOperator:self withRegistration:&unk_287148978 withBlock:v38];
  [(PLPushAgent *)self setPushProxyIncomingListener:v12];

  v13 = objc_alloc(MEMORY[0x277D3F270]);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_234;
  v37[3] = &unk_279A5BCB8;
  v37[4] = self;
  v14 = [v13 initWithOperator:self withRegistration:&unk_2871489A0 withBlock:v37];
  [(PLPushAgent *)self setPushProxyOutgoingListener:v14];

  v15 = objc_alloc(MEMORY[0x277D3F270]);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_242;
  v36[3] = &unk_279A5BCB8;
  v36[4] = self;
  v16 = [v15 initWithOperator:self withRegistration:&unk_2871489C8 withBlock:v36];
  [(PLPushAgent *)self setSentKeepAliveListener:v16];

  [(PLOperator *)self defaultDoubleForKey:@"RunTimeAggregatorTimerCadence"];
  v18 = v17;
  v19 = objc_alloc(MEMORY[0x277D3F250]);
  v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v18];
  workQueue = [(PLOperator *)self workQueue];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_244;
  v35[3] = &unk_279A5D088;
  v35[4] = self;
  v22 = [v19 initWithFireDate:v20 withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v35 withQueue:v18 withBlock:0.0];
  runTimeAggregatorTimer = self->_runTimeAggregatorTimer;
  self->_runTimeAggregatorTimer = v22;

  v24 = objc_alloc(MEMORY[0x277D3F270]);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_2;
  v34[3] = &unk_279A5BCB8;
  v34[4] = self;
  v25 = [v24 initWithOperator:self withRegistration:&unk_2871489F0 withBlock:v34];
  [(PLPushAgent *)self setReceivedKeepAliveListener:v25];

  v26 = objc_opt_new();
  pushUsageDict = self->_pushUsageDict;
  self->_pushUsageDict = v26;

  v28 = objc_alloc(MEMORY[0x277D3F270]);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_263;
  v33[3] = &unk_279A5BCB8;
  v33[4] = self;
  v29 = [v28 initWithOperator:self withRegistration:&unk_287148A18 withBlock:v33];
  [(PLPushAgent *)self setMessageSentListener:v29];

  v30 = objc_alloc(MEMORY[0x277D3F270]);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __39__PLPushAgent_initOperatorDependancies__block_invoke_271;
  v32[3] = &unk_279A5BCB8;
  v32[4] = self;
  v31 = [v30 initWithOperator:self withRegistration:&unk_287148A40 withBlock:v32];
  [(PLPushAgent *)self setMessageReceivedListener:v31];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_cold_1();
  }

  v8 = [(PLOperator *)PLPushAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ReceivedPush"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  v10 = [v9 objectForKeyedSubscript:@"Topic"];
  if ([v10 containsString:@"com.apple.Safari"])
  {
    v11 = [v9 objectForKeyedSubscript:@"Topic"];
    v12 = [v11 containsString:@"https://"];

    if (v12)
    {
      [v9 setObject:@"com.apple.Safari" forKeyedSubscript:@"Topic"];
    }
  }

  else
  {
  }

  v13 = objc_opt_class();
  v14 = [v9 objectForKeyedSubscript:@"Topic"];
  v15 = [v13 bundleIdFromTopic:v14];
  [v9 setObject:v15 forKeyedSubscript:@"BundleID"];

  v16 = [v6 objectForKeyedSubscript:@"IsWakingMessage"];
  [v9 setObject:v16 forKeyedSubscript:@"DidWake"];

  v17 = MEMORY[0x277CCABB0];
  v18 = [v9 objectForKeyedSubscript:@"Size"];
  v19 = [v17 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v18, "intValue"), 2)}];
  [v9 setObject:v19 forKeyedSubscript:@"Size"];

  if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
  {
    v20 = MEMORY[0x277CBEAA8];
    v21 = [v9 entryDate];
    [v21 timeIntervalSince1970];
    v23 = [v20 dateWithTimeIntervalSince1970:round(v22 / 60.0) * 60.0];
    [v9 setEntryDate:v23];
  }

  [*(a1 + 32) logEntry:v9];
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v24 = *(a1 + 32);
    v25 = [v9 entryDate];
    [v24 checkPushUsage:v25 withPLEntry:v9];
  }

  [*(a1 + 32) accountReceivedPushWithEntry:v9];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_201(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_201_cold_1();
  }

  v8 = [v6 mutableCopy];
  v9 = objc_opt_class();
  v10 = [v6 objectForKeyedSubscript:@"ConnectionType"];
  v11 = [v9 replaceConnectionTypeWithEnum:v10];
  [v8 setObject:v11 forKeyedSubscript:@"ConnectionType"];

  v12 = 0x277CCA000;
  if ([MEMORY[0x277D3F180] fullMode])
  {
    v13 = [(PLOperator *)PLPushAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SentPush"];
    v14 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13 withRawData:v8];
    v15 = MEMORY[0x277CCABB0];
    v16 = [v14 objectForKeyedSubscript:@"Size"];
    v17 = [v15 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v16, "intValue"), 2)}];
    [v14 setObject:v17 forKeyedSubscript:@"Size"];

    v12 = 0x277CCA000uLL;
    [*(a1 + 32) logEntry:v14];
  }

  v18 = [(PLOperator *)PLPushAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"SentPushes"];
  v19 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v18 withRawData:v8];
  v20 = *(v12 + 2992);
  v21 = [v19 objectForKeyedSubscript:@"Size"];
  v22 = [v20 numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", objc_msgSend(v21, "intValue"), 2)}];
  [v19 setObject:v22 forKeyedSubscript:@"Size"];

  [v19 setObject:&unk_287145F10 forKeyedSubscript:@"Count"];
  [*(a1 + 32) logEntry:v19];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_210_cold_1();
  }

  [*(a1 + 32) logAggregateSuppressedPushes:v6];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_218_cold_1();
  }

  v8 = [v6 mutableCopy];
  v9 = objc_opt_class();
  v10 = [v6 objectForKeyedSubscript:@"ConnectionType"];
  v11 = [v9 replaceConnectionTypeWithEnum:v10];
  [v8 setObject:v11 forKeyedSubscript:@"ConnectionType"];

  v12 = [(PLOperator *)PLPushAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"APSDConnectedEvent"];
  v13 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12 withRawData:v8];
  [*(a1 + 32) logEntry:v13];
  v14 = [(PLOperator *)PLPushAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"APSDConnected"];
  v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14 withRawData:v8];
  [v15 setObject:&unk_287145F10 forKeyedSubscript:@"Count"];
  [*(a1 + 32) logEntry:v15];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_226(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_226_cold_1();
  }

  [*(a1 + 32) logPushProxyMessages:v6 forMessageType:@"IncomingProxyMessages"];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_234_cold_1();
  }

  [*(a1 + 32) logPushProxyMessages:v6 forMessageType:@"OutgoingProxyMessages"];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_242(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_242_cold_1();
  }

  v8 = [(PLOperator *)PLPushAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SentKeepAlive"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  v10 = *(a1 + 32);
  v11 = v10[12];
  if (v11 == 1)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:500];
    [v9 setObject:v12 forKeyedSubscript:@"ConnectionType"];

    v10 = *(a1 + 32);
  }

  else if (v11)
  {
    goto LABEL_8;
  }

  [v10 logEntry:v9];
LABEL_8:
  ++*(*(a1 + 32) + 96);
  [*(a1 + 32) logAggregateSentKeepAlive:v6];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_2_cold_1();
  }

  [*(a1 + 32) logEventPointReceivedKeepAlive:v6];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_263(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_263_cold_1();
  }

  [*(a1 + 32) handleMessageEvent:v6 isSentEvent:1];
}

void __39__PLPushAgent_initOperatorDependancies__block_invoke_271(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogPush(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __39__PLPushAgent_initOperatorDependancies__block_invoke_271_cold_1();
  }

  [*(a1 + 32) handleMessageEvent:v6 isSentEvent:0];
}

- (void)logPushProxyMessages:(id)messages forMessageType:(id)type
{
  v37 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  typeCopy = type;
  if ([messagesCopy count])
  {
    selfCopy = self;
    v29 = objc_opt_new();
    v26 = typeCopy;
    v8 = [(PLOperator *)PLPushAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:typeCopy];
    [MEMORY[0x277CBEAA8] monotonicDate];
    v28 = v27 = messagesCopy;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = messagesCopy;
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            intValue = [v14 intValue];
            v16 = [v9 objectForKeyedSubscript:v14];
            null = [MEMORY[0x277CBEB68] null];

            if (v16 != null)
            {
              v18 = [v9 objectForKeyedSubscript:v14];
              intValue2 = [v18 intValue];

              v20 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withDate:v28];
              v21 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
              [v20 setObject:v21 forKeyedSubscript:@"ProxyCommand"];

              v22 = [MEMORY[0x277CCABB0] numberWithInt:intValue2];
              [v20 setObject:v22 forKeyedSubscript:@"Count"];

              [v29 addObject:v20];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v11);
    }

    v23 = v29;
    if ([v29 count])
    {
      v34 = v8;
      v35 = v29;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      [(PLOperator *)selfCopy logEntries:v24 withGroupID:v8];
    }

    typeCopy = v26;
    messagesCopy = v27;
  }

  else
  {
    v23 = PLLogPush(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [PLPushAgent logPushProxyMessages:forMessageType:];
    }
  }
}

- (void)logEventPointReceivedKeepAlive:(id)alive
{
  v4 = *MEMORY[0x277D3F5E8];
  aliveCopy = alive;
  v7 = [(PLOperator *)PLPushAgent entryKeyForType:v4 andName:@"ReceivedKeepAlive"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:aliveCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logAggregateSuppressedPushes:(id)pushes
{
  v4 = *MEMORY[0x277D3F5B8];
  pushesCopy = pushes;
  v7 = [(PLOperator *)PLPushAgent entryKeyForType:v4 andName:@"SuppressedPushes"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:pushesCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logAggregateSentKeepAlive:(id)alive
{
  v4 = *MEMORY[0x277D3F5B8];
  aliveCopy = alive;
  v6 = [(PLOperator *)PLPushAgent entryKeyForType:v4 andName:@"SentKeepAlive"];
  v7 = [aliveCopy mutableCopy];

  v8 = PLLogPush([v7 setObject:&unk_287145F10 forKeyedSubscript:@"Count"]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLPushAgent logAggregateSentKeepAlive:];
  }

  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withRawData:v7];
  [(PLOperator *)self logEntry:v9];
}

- (void)accountReceivedPushWithEntry:(id)entry
{
  v40[1] = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v4 = PLLogPush(entryCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLPushAgent accountReceivedPushWithEntry:];
  }

  isHomePod = [MEMORY[0x277D3F208] isHomePod];
  if (entryCopy && (isHomePod & 1) == 0)
  {
    v6 = [entryCopy objectForKeyedSubscript:@"BundleID"];
    if ([v6 hasPrefix:@"com.apple.icloud-container.clouddocs."])
    {
      v7 = 37;
    }

    else
    {
      if (![v6 hasPrefix:@"com.apple.icloud-container."])
      {
        goto LABEL_10;
      }

      v7 = 27;
    }

    v8 = [v6 substringFromIndex:v7];

    v6 = v8;
LABEL_10:
    v9 = [entryCopy objectForKeyedSubscript:@"ConnectionType"];
    if ([v9 isEqualToString:@"wifi"])
    {
      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      v39 = v6;
      v40[0] = &unk_28714B498;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      entryDate = [entryCopy entryDate];
      v13 = mEMORY[0x277D3F0C0];
      v14 = 4;
    }

    else
    {
      if (![v9 isEqualToString:@"wwan"])
      {
LABEL_15:
        v15 = [entryCopy objectForKeyedSubscript:@"DidWake"];
        bOOLValue = [v15 BOOLValue];

        v18 = PLLogPush(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [(PLPushAgent *)bOOLValue accountReceivedPushWithEntry:v18];
        }

        if (bOOLValue)
        {
          v20 = PLLogPush(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            entryDate2 = [entryCopy entryDate];
            *buf = 138412546;
            v34 = entryCopy;
            v35 = 2112;
            v36 = entryDate2;
            _os_log_impl(&dword_25EE51000, v20, OS_LOG_TYPE_INFO, "Waking push with entry=%@, entry.entryDate=%@", buf, 0x16u);
          }

          mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
          entryDate3 = [entryCopy entryDate];
          entryDate4 = [entryCopy entryDate];
          v25 = [entryDate4 dateByAddingTimeInterval:10.0];
          [mEMORY[0x277D3F0C0]2 createPowerEventIntervalWithRootNodeID:60 withPower:entryDate3 withStartDate:v25 withEndDate:150.0];

          mEMORY[0x277D3F0C0]3 = [MEMORY[0x277D3F0C0] sharedInstance];
          v31 = v6;
          v32 = &unk_28714B498;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
          entryDate5 = [entryCopy entryDate];
          entryDate6 = [entryCopy entryDate];
          v30 = [entryDate6 dateByAddingTimeInterval:10.0];
          [mEMORY[0x277D3F0C0]3 createDistributionEventIntervalWithDistributionID:48 withChildNodeNameToWeight:v27 withStartDate:entryDate5 withEndDate:v30];
        }

        goto LABEL_22;
      }

      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      v37 = v6;
      v38 = &unk_28714B498;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      entryDate = [entryCopy entryDate];
      v13 = mEMORY[0x277D3F0C0];
      v14 = 5;
    }

    [v13 createDistributionEventPointWithDistributionID:v14 withChildNodeNameToWeight:v11 withStartDate:entryDate];

    goto LABEL_15;
  }

LABEL_22:
}

+ (id)bundleIdFromTopic:(id)topic
{
  v23[9] = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  v4 = topicCopy;
  if (topicCopy)
  {
    if ([topicCopy length])
    {
      v22[0] = @"com.apple.madrid";
      v22[1] = @"com.apple.calendar";
      v23[0] = &__block_literal_global_295;
      v23[1] = &__block_literal_global_303;
      v22[2] = @"com.me.cal";
      v22[3] = @"com.me.bookmarks";
      v23[2] = &__block_literal_global_311;
      v23[3] = &__block_literal_global_316_0;
      v22[4] = @"com.me.contacts";
      v22[5] = @"com.apple.mobilemail";
      v23[4] = &__block_literal_global_324;
      v23[5] = &__block_literal_global_332;
      v22[6] = @"com.apple.sharedstreams";
      v22[7] = @"com.apple.private.alloy.sms";
      v23[6] = &__block_literal_global_337;
      v23[7] = &__block_literal_global_345;
      v22[8] = @"com.apple.Safari";
      v23[8] = &__block_literal_global_347;
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:9];
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__10;
      v20 = __Block_byref_object_dispose__10;
      v21 = v4;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __33__PLPushAgent_bundleIdFromTopic___block_invoke_351;
      v13[3] = &unk_279A5D3F0;
      v6 = v21;
      v14 = v6;
      v15 = &v16;
      [v5 enumerateKeysAndObjectsUsingBlock:v13];
      v7 = [v6 rangeOfString:@".voip"];
      v8 = [v6 length];
      if (v7 == v8 - [@".voip" length])
      {
        v9 = [v6 substringToIndex:v7];
        v10 = v17[5];
        v17[5] = v9;
      }

      v11 = v17[5];

      _Block_object_dispose(&v16, 8);
    }

    else
    {
      v11 = &stru_287103958;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __33__PLPushAgent_bundleIdFromTopic___block_invoke_351(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  if (![*(a1 + 32) rangeOfString:a2])
  {
    v7 = v10[2](v10, *(a1 + 32));
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

+ (id)replaceConnectionTypeWithEnum:(id)enum
{
  enumCopy = enum;
  if ([enumCopy isEqual:@"wwan"])
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = 1;
  }

  else if ([enumCopy isEqual:@"wifi"])
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = 2;
  }

  else
  {
    v6 = [enumCopy isEqual:@"proxy"];
    v4 = MEMORY[0x277CCABB0];
    if (v6)
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }
  }

  v7 = [v4 numberWithInteger:v5];

  return v7;
}

+ (BOOL)isHighPriorityPushEntry:(id)entry
{
  v3 = [entry objectForKeyedSubscript:@"Priority"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue] == 10;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)sendEnergyIssueSignatureNotification:(id)notification withThreshold:(double)threshold
{
  v19[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v6 = objc_alloc_init(MEMORY[0x277D6AFC8]);
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", *&threshold];
    v8 = [v6 signatureWithDomain:@"Energy" type:@"Push" subType:@"PushStorm" subtypeContext:&stru_287103958 detectedProcess:notificationCopy triggerThresholdValues:v7];

    v18 = *MEMORY[0x277D6B130];
    v16 = @"com.apple.PowerlogCore.DESysLogFilterProcess";
    v13 = notificationCopy;
    v14 = @"processNames";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    v15 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v17 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v19[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

    [v6 snapshotWithSignature:v8 duration:0 events:v12 payload:0 actions:&__block_literal_global_381 reply:120.0];
  }
}

void __66__PLPushAgent_sendEnergyIssueSignatureNotification_withThreshold___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6B198]];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v6 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6B188]];
    v7 = PLLogPush(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __66__PLPushAgent_sendEnergyIssueSignatureNotification_withThreshold___block_invoke_cold_2();
    }
  }

  else
  {
    v6 = PLLogPush(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __66__PLPushAgent_sendEnergyIssueSignatureNotification_withThreshold___block_invoke_cold_1(v6);
    }
  }
}

- (void)checkPushUsage:(id)usage withPLEntry:(id)entry
{
  usageCopy = usage;
  entryCopy = entry;
  if (self->_detectionStartTime)
  {
    [usageCopy timeIntervalSinceDate:?];
    if (v9 <= 86400.0)
    {
      v11 = [entryCopy objectForKeyedSubscript:@"BundleID"];
      v12 = [(NSMutableDictionary *)self->_pushUsageDict objectForKey:v11];

      if (v12)
      {
        v13 = MEMORY[0x277CCABB0];
        v14 = [(NSMutableDictionary *)self->_pushUsageDict objectForKeyedSubscript:v11];
        v15 = [v13 numberWithInt:{objc_msgSend(v14, "intValue") + 1}];
        [(NSMutableDictionary *)self->_pushUsageDict setObject:v15 forKeyedSubscript:v11];
      }

      else
      {
        [(NSMutableDictionary *)self->_pushUsageDict setObject:&unk_287145F10 forKeyedSubscript:v11];
      }

      v16 = [(NSMutableDictionary *)self->_pushUsageDict objectForKeyedSubscript:v11];
      intValue = [v16 intValue];

      if (intValue >= 1001)
      {
        [(NSMutableDictionary *)self->_pushUsageDict setObject:0 forKeyedSubscript:v11];
        if ([v11 isEqualToString:@"com.apple.private.alloy.willow"])
        {
          [(PLPushAgent *)self sendEnergyIssueSignatureNotification:v11 withThreshold:1000.0];
        }
      }
    }

    else
    {
      removeAllObjects = [(NSMutableDictionary *)self->_pushUsageDict removeAllObjects];
    }
  }

  else
  {
    objc_storeStrong(&self->_detectionStartTime, usage);
  }

  v18 = PLLogPush(removeAllObjects);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [PLPushAgent checkPushUsage:v18 withPLEntry:?];
  }
}

- (unint64_t)convertMessageProtocol:(id)protocol
{
  protocolCopy = protocol;
  if ([protocolCopy isEqualToString:@"iMessage"])
  {
    v4 = 0;
  }

  else if ([protocolCopy isEqualToString:@"iMessageLite"])
  {
    v4 = 1;
  }

  else if ([protocolCopy isEqualToString:@"RCS"])
  {
    v4 = 3;
  }

  else if ([protocolCopy isEqualToString:@"SMS"])
  {
    v4 = 4;
  }

  else if ([protocolCopy isEqualToString:@"SatelliteSMS"])
  {
    v4 = 5;
  }

  else
  {
    v5 = [protocolCopy isEqualToString:@"Unknown"];
    if (v5)
    {
      v4 = 6;
    }

    else
    {
      v6 = PLLogPush(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [PLPushAgent convertMessageProtocol:];
      }

      v4 = 2;
    }
  }

  return v4;
}

- (void)handleMessageEvent:(id)event isSentEvent:(BOOL)sentEvent
{
  sentEventCopy = sentEvent;
  eventCopy = event;
  v7 = PLLogPush(eventCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(PLPushAgent *)sentEventCopy handleMessageEvent:eventCopy isSentEvent:v7];
  }

  v8 = @"MessageReceived";
  if (sentEventCopy)
  {
    v8 = @"MessageSent";
  }

  v9 = v8;
  v10 = [(PLOperator *)PLPushAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:v9];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v12 = [eventCopy objectForKeyedSubscript:@"MessageType"];
  [v11 setObject:v12 forKeyedSubscript:@"MessageType"];

  v13 = [eventCopy objectForKeyedSubscript:@"ConversationType"];
  [v11 setObject:v13 forKeyedSubscript:@"ConversationType"];

  v14 = MEMORY[0x277CCABB0];
  v15 = [eventCopy objectForKeyedSubscript:@"Protocol"];
  v16 = [v14 numberWithUnsignedInteger:{-[PLPushAgent convertMessageProtocol:](self, "convertMessageProtocol:", v15)}];
  [v11 setObject:v16 forKeyedSubscript:@"Protocol"];

  if ([MEMORY[0x277D3F180] fullMode])
  {
    v17 = MEMORY[0x277CCABB0];
    v18 = [eventCopy objectForKeyedSubscript:@"Target"];
    v19 = [PLUtilities hashString:v18];
    v20 = [v17 numberWithUnsignedInteger:{objc_msgSend(v19, "hash")}];
    [v11 setObject:v20 forKeyedSubscript:@"Target"];

    v21 = MEMORY[0x277CCABB0];
    v22 = [eventCopy objectForKeyedSubscript:@"Source"];
    v23 = [PLUtilities hashString:v22];
    v24 = [v21 numberWithUnsignedInteger:{objc_msgSend(v23, "hash")}];
    [v11 setObject:v24 forKeyedSubscript:@"Source"];

    v25 = [eventCopy objectForKeyedSubscript:@"MessageGUID"];
    [v11 setObject:v25 forKeyedSubscript:@"MessageGUID"];
  }

  [(PLOperator *)self logEntry:v11];
}

- (void)accountReceivedPushWithEntry:(char)a1 .cold.2(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_25EE51000, a2, OS_LOG_TYPE_DEBUG, "didWake = %d", v2, 8u);
}

void __66__PLPushAgent_sendEnergyIssueSignatureNotification_withThreshold___block_invoke_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_25EE51000, v1, OS_LOG_TYPE_DEBUG, "SDRDiagnosticReporter response = %@, sessionID = %@", v2, 0x16u);
}

- (void)handleMessageEvent:(NSObject *)a3 isSentEvent:.cold.1(char a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_25EE51000, a3, OS_LOG_TYPE_DEBUG, "Received messages update, isSentEvent: %@, payload: %@", v6, 0x16u);
}

@end