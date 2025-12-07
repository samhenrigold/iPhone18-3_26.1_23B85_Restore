@interface IdentityManagementSessionProxy
- (void)clearDataAfterTerminalProofingStateWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)deleteBoundACLWithCompletionHandler:(id)handler;
- (void)fetchAnalyticsSessionIDWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)fetchBioBindingDetailsWithCompletionHandler:(id)handler;
- (void)fetchBiomeFedStatsUIWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler;
- (void)fetchExtendedReviewDisplayInfoWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)fetchImageQualitySettingsWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler;
- (void)fetchLivenessConsentOptinUIWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler;
- (void)fetchTermsAndConditionsWithCompletionHandler:(id)handler;
- (void)getLivenessConfigWithCompletionHandler:(id)handler;
- (void)getPendingCommandsStatusWithCompletionHandler:(id)handler;
- (void)getPendingCommandsWithResponseAPDUs:(_TtC13CoreIDVShared18NFCPendingCommands *)us completionHandler:(id)handler;
- (void)globalAuthACLInfoWithCompletionHandler:(id)handler;
- (void)initiatePartialProofingWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingSessionID:(NSString *)d completionHandler:(id)handler;
- (void)isWatchPairedWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler;
- (void)prepareForProofingDisplayWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)prepareForProofingIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingSessionID:(NSString *)d completionHandler:(id)handler;
- (void)proofIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration authCode:(NSString *)code proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)proofIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingOptions:(unint64_t)options shouldScheduleUploads:(BOOL)uploads totalUploadAssetsFileSizeInBytes:(int64_t)bytes completionHandler:(id)handler;
- (void)proofingCancelledWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)proofingFlowAvailabilityWithCompletionHandler:(id)handler;
- (void)proofingStatusFor:(NSString *)for country:(NSString *)country completionHandler:(id)handler;
- (void)provisionIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration sessionLookupIdentifier:(NSString *)identifier proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)retrieveBioBindingUnboundACLWithCompletionHandler:(id)handler;
- (void)retrieveBoundACLWithCompletionHandler:(id)handler;
- (void)retrievePasscodeBindingUnboundACLWithCompletionHandler:(id)handler;
- (void)saveIdentityProofingDataSharingUserConsentWithDocumentType:(int64_t)type axSettings:(NSArray *)settings consent:(BOOL)consent consentType:(int64_t)consentType proofingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)setGlobalBoundACLWithData:(NSData *)data type:(int64_t)type completionHandler:(id)handler;
- (void)setModifiedGlobalBoundACLWithData:(NSData *)data externalizedLAContext:(NSData *)context completionHandler:(id)handler;
- (void)triggerAssetsUploadWithProofingOptions:(unint64_t)options canUploadOnExpensiveNetwork:(BOOL)network completionHandler:(id)handler;
- (void)uploadLivenessVideoWithLivenessVideoURL:(_TtC13CoreIDVShared32IdentityProofingLivenessVideoURL *)l shouldScheduleUploads:(BOOL)uploads completionHandler:(id)handler;
- (void)watchIdentityPassesCountWithCompletionHandler:(id)handler;
@end

@implementation IdentityManagementSessionProxy

- (void)triggerAssetsUploadWithProofingOptions:(unint64_t)options canUploadOnExpensiveNetwork:(BOOL)network completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = options;
  *(v13 + 24) = network;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E5EB8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5EC0;
  v16[5] = v15;

  sub_100500D54(0, 0, v11, &unk_1006E5EC8, v16);
}

- (void)prepareForProofingDisplayWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = configuration;
  v13[3] = options;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E5E98;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5EA0;
  v16[5] = v15;
  configurationCopy = configuration;

  sub_100500D54(0, 0, v11, &unk_1006E5EA8, v16);
}

- (void)prepareForProofingIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingSessionID:(NSString *)d completionHandler:(id)handler
{
  v11 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = configuration;
  v15[3] = documents;
  v15[4] = d;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006E5E70;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1006E5E78;
  v18[5] = v17;
  configurationCopy = configuration;
  documentsCopy = documents;
  dCopy = d;

  sub_100500D54(0, 0, v13, &unk_1006E5E80, v18);
}

- (void)fetchImageQualitySettingsWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = configuration;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E5E50;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E5E58;
  v14[5] = v13;
  configurationCopy = configuration;

  sub_100500D54(0, 0, v9, &unk_1006E5E60, v14);
}

- (void)fetchExtendedReviewDisplayInfoWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = configuration;
  v13[3] = options;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E5E28;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5E30;
  v16[5] = v15;
  configurationCopy = configuration;

  sub_100500D54(0, 0, v11, &unk_1006E5E38, v16);
}

- (void)provisionIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration sessionLookupIdentifier:(NSString *)identifier proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v11 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = configuration;
  v15[3] = identifier;
  v15[4] = options;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006E5E08;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1006E5E10;
  v18[5] = v17;
  configurationCopy = configuration;
  identifierCopy = identifier;

  sub_100500D54(0, 0, v13, &unk_1006E5E18, v18);
}

- (void)proofIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingOptions:(unint64_t)options shouldScheduleUploads:(BOOL)uploads totalUploadAssetsFileSizeInBytes:(int64_t)bytes completionHandler:(id)handler
{
  v15 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v25 - v16;
  v18 = _Block_copy(handler);
  v19 = swift_allocObject();
  *(v19 + 16) = configuration;
  *(v19 + 24) = documents;
  *(v19 + 32) = options;
  *(v19 + 40) = uploads;
  *(v19 + 48) = bytes;
  *(v19 + 56) = v18;
  *(v19 + 64) = self;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1006E5DE8;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1006E5DF0;
  v22[5] = v21;
  configurationCopy = configuration;
  documentsCopy = documents;

  sub_100500D54(0, 0, v17, &unk_1006E5DF8, v22);
}

- (void)initiatePartialProofingWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingSessionID:(NSString *)d completionHandler:(id)handler
{
  v11 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = configuration;
  v15[3] = documents;
  v15[4] = d;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006E5DC8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1006E5DD0;
  v18[5] = v17;
  configurationCopy = configuration;
  documentsCopy = documents;
  dCopy = d;

  sub_100500D54(0, 0, v13, &unk_1006E5DD8, v18);
}

- (void)getPendingCommandsStatusWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1006E5DA8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5DB0;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E5DB8, v12);
}

- (void)getPendingCommandsWithResponseAPDUs:(_TtC13CoreIDVShared18NFCPendingCommands *)us completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = us;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E5D88;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E5D90;
  v14[5] = v13;
  usCopy = us;

  sub_100500D54(0, 0, v9, &unk_1006E5D98, v14);
}

- (void)fetchTermsAndConditionsWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1006E5D68;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5D70;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E5D78, v12);
}

- (void)proofIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration authCode:(NSString *)code proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v11 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = configuration;
  v15[3] = code;
  v15[4] = options;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1006E5D48;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1006E5D50;
  v18[5] = v17;
  configurationCopy = configuration;
  codeCopy = code;

  sub_100500D54(0, 0, v13, &unk_1006E5D58, v18);
}

- (void)proofingCancelledWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = configuration;
  v13[3] = options;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E5D20;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5D28;
  v16[5] = v15;
  configurationCopy = configuration;

  sub_100500D54(0, 0, v11, &unk_1006E5D30, v16);
}

- (void)proofingStatusFor:(NSString *)for country:(NSString *)country completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = for;
  v13[3] = country;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E5D00;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5D08;
  v16[5] = v15;
  forCopy = for;
  countryCopy = country;

  sub_100500D54(0, 0, v11, &unk_1006E5D10, v16);
}

- (void)proofingFlowAvailabilityWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1006E5CE0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5CE8;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E5CF0, v12);
}

- (void)isWatchPairedWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = configuration;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E5CC0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E5CC8;
  v14[5] = v13;
  configurationCopy = configuration;

  sub_100500D54(0, 0, v9, &unk_1006E5CD0, v14);
}

- (void)watchIdentityPassesCountWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1006E5CA0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5CA8;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E5CB0, v12);
}

- (void)setGlobalBoundACLWithData:(NSData *)data type:(int64_t)type completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = data;
  v13[3] = type;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E5C80;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5C88;
  v16[5] = v15;
  dataCopy = data;

  sub_100500D54(0, 0, v11, &unk_1006E5C90, v16);
}

- (void)setModifiedGlobalBoundACLWithData:(NSData *)data externalizedLAContext:(NSData *)context completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = data;
  v13[3] = context;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E5C60;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5C68;
  v16[5] = v15;
  dataCopy = data;
  contextCopy = context;

  sub_100500D54(0, 0, v11, &unk_1006E5C70, v16);
}

- (void)retrieveBioBindingUnboundACLWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1006E5C40;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5C48;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E5C50, v12);
}

- (void)retrievePasscodeBindingUnboundACLWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1006E5C20;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5C28;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E5C30, v12);
}

- (void)retrieveBoundACLWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1006E5C00;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5C08;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E5C10, v12);
}

- (void)deleteBoundACLWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1006E5BE0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5BE8;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E5BF0, v12);
}

- (void)fetchBioBindingDetailsWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1006E5BC0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5BC8;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E5BD0, v12);
}

- (void)getLivenessConfigWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1006E5BA0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5BA8;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E5BB0, v12);
}

- (void)uploadLivenessVideoWithLivenessVideoURL:(_TtC13CoreIDVShared32IdentityProofingLivenessVideoURL *)l shouldScheduleUploads:(BOOL)uploads completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = l;
  *(v13 + 24) = uploads;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E5B80;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5B88;
  v16[5] = v15;
  lCopy = l;

  sub_100500D54(0, 0, v11, &unk_1006E5B90, v16);
}

- (void)saveIdentityProofingDataSharingUserConsentWithDocumentType:(int64_t)type axSettings:(NSArray *)settings consent:(BOOL)consent consentType:(int64_t)consentType proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v15 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v24 - v16;
  v18 = _Block_copy(handler);
  v19 = swift_allocObject();
  *(v19 + 16) = type;
  *(v19 + 24) = settings;
  *(v19 + 32) = consent;
  *(v19 + 40) = consentType;
  *(v19 + 48) = options;
  *(v19 + 56) = v18;
  *(v19 + 64) = self;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1006E5B58;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1006E5B60;
  v22[5] = v21;
  settingsCopy = settings;

  sub_100500D54(0, 0, v17, &unk_1006E5B68, v22);
}

- (void)fetchBiomeFedStatsUIWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = configuration;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E5B38;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E5B40;
  v14[5] = v13;
  configurationCopy = configuration;

  sub_100500D54(0, 0, v9, &unk_1006E5B48, v14);
}

- (void)fetchLivenessConsentOptinUIWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = configuration;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E5B10;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E5B18;
  v14[5] = v13;
  configurationCopy = configuration;

  sub_100500D54(0, 0, v9, &unk_1006E5B20, v14);
}

- (void)clearDataAfterTerminalProofingStateWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = configuration;
  v13[3] = options;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E5AF0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006E5AF8;
  v16[5] = v15;
  configurationCopy = configuration;

  sub_100500D54(0, 0, v11, &unk_1006E5B00, v16);
}

- (void)globalAuthACLInfoWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1006E5AD0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006E5AD8;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E5AE0, v12);
}

- (void)fetchAnalyticsSessionIDWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = configuration;
  v13[3] = options;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1006E5AC0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1006D9180;
  v16[5] = v15;
  configurationCopy = configuration;

  sub_100500D54(0, 0, v11, &unk_1006E13D0, v16);
}

@end