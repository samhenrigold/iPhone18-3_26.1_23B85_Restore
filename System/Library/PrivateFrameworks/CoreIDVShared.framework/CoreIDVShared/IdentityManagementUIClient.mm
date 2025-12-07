@interface IdentityManagementUIClient
- (_TtC13CoreIDVShared26IdentityManagementUIClient)init;
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
- (void)invalidate;
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

@implementation IdentityManagementUIClient

- (void)triggerAssetsUploadWithProofingOptions:(unint64_t)options canUploadOnExpensiveNetwork:(BOOL)network completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = options;
  *(v13 + 24) = network;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_225CCE994();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_225D02A48;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225D02A50;
  v16[5] = v15;
  selfCopy = self;
  sub_225CBCC70(0, 0, v11, &unk_225D02A58, v16);
}

- (void)prepareForProofingDisplayWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = configuration;
  v13[3] = options;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_225CCE994();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_225D02A28;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225D02A30;
  v16[5] = v15;
  configurationCopy = configuration;
  selfCopy = self;
  sub_225CBCC70(0, 0, v11, &unk_225D02A38, v16);
}

- (void)prepareForProofingIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingSessionID:(NSString *)d completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = configuration;
  v15[3] = documents;
  v15[4] = d;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_225CCE994();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_225D02A08;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_225D02A10;
  v18[5] = v17;
  configurationCopy = configuration;
  documentsCopy = documents;
  dCopy = d;
  selfCopy = self;
  sub_225CBCC70(0, 0, v13, &unk_225D02A18, v18);
}

- (void)provisionIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration sessionLookupIdentifier:(NSString *)identifier proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = configuration;
  v15[3] = identifier;
  v15[4] = options;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_225CCE994();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_225D029E8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_225D029F0;
  v18[5] = v17;
  configurationCopy = configuration;
  identifierCopy = identifier;
  selfCopy = self;
  sub_225CBCC70(0, 0, v13, &unk_225D029F8, v18);
}

- (void)fetchImageQualitySettingsWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = configuration;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_225CCE994();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225D029C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_225D029D0;
  v14[5] = v13;
  configurationCopy = configuration;
  selfCopy = self;
  sub_225CBCC70(0, 0, v9, &unk_225D029D8, v14);
}

- (void)proofIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingOptions:(unint64_t)options shouldScheduleUploads:(BOOL)uploads totalUploadAssetsFileSizeInBytes:(int64_t)bytes completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - v16;
  v18 = _Block_copy(handler);
  v19 = swift_allocObject();
  *(v19 + 16) = configuration;
  *(v19 + 24) = documents;
  *(v19 + 32) = options;
  *(v19 + 40) = uploads;
  *(v19 + 48) = bytes;
  *(v19 + 56) = v18;
  *(v19 + 64) = self;
  v20 = sub_225CCE994();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_225D029A8;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_225D029B0;
  v22[5] = v21;
  configurationCopy = configuration;
  documentsCopy = documents;
  selfCopy = self;
  sub_225CBCC70(0, 0, v17, &unk_225D029B8, v22);
}

- (void)proofIdentityWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration authCode:(NSString *)code proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = configuration;
  v15[3] = code;
  v15[4] = options;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_225CCE994();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_225D02988;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_225D02990;
  v18[5] = v17;
  configurationCopy = configuration;
  codeCopy = code;
  selfCopy = self;
  sub_225CBCC70(0, 0, v13, &unk_225D02998, v18);
}

- (void)initiatePartialProofingWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration documents:(_TtC13CoreIDVShared25IdentityProofingDocuments *)documents proofingSessionID:(NSString *)d completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = configuration;
  v15[3] = documents;
  v15[4] = d;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_225CCE994();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_225D02968;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_225D02970;
  v18[5] = v17;
  configurationCopy = configuration;
  documentsCopy = documents;
  dCopy = d;
  selfCopy = self;
  sub_225CBCC70(0, 0, v13, &unk_225D02978, v18);
}

- (void)getPendingCommandsStatusWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_225CCE994();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_225D02948;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D02950;
  v12[5] = v11;
  selfCopy = self;
  sub_225CBCC70(0, 0, v7, &unk_225D02958, v12);
}

- (void)getPendingCommandsWithResponseAPDUs:(_TtC13CoreIDVShared18NFCPendingCommands *)us completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = us;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_225CCE994();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225D02928;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_225D02930;
  v14[5] = v13;
  usCopy = us;
  selfCopy = self;
  sub_225CBCC70(0, 0, v9, &unk_225D02938, v14);
}

- (void)proofingFlowAvailabilityWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_225CCE994();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_225D02908;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D02910;
  v12[5] = v11;
  selfCopy = self;
  sub_225CBCC70(0, 0, v7, &unk_225D02918, v12);
}

- (void)proofingStatusFor:(NSString *)for country:(NSString *)country completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = for;
  v13[3] = country;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_225CCE994();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_225D028E8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225D028F0;
  v16[5] = v15;
  forCopy = for;
  countryCopy = country;
  selfCopy = self;
  sub_225CBCC70(0, 0, v11, &unk_225D028F8, v16);
}

- (void)isWatchPairedWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = configuration;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_225CCE994();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225D028C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_225D028D0;
  v14[5] = v13;
  configurationCopy = configuration;
  selfCopy = self;
  sub_225CBCC70(0, 0, v9, &unk_225D028D8, v14);
}

- (void)watchIdentityPassesCountWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_225CCE994();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_225D028A8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D028B0;
  v12[5] = v11;
  selfCopy = self;
  sub_225CBCC70(0, 0, v7, &unk_225D028B8, v12);
}

- (void)proofingCancelledWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = configuration;
  v13[3] = options;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_225CCE994();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_225D02888;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225D02890;
  v16[5] = v15;
  configurationCopy = configuration;
  selfCopy = self;
  sub_225CBCC70(0, 0, v11, &unk_225D02898, v16);
}

- (void)setGlobalBoundACLWithData:(NSData *)data type:(int64_t)type completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = data;
  v13[3] = type;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_225CCE994();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_225D02868;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225D02870;
  v16[5] = v15;
  dataCopy = data;
  selfCopy = self;
  sub_225CBCC70(0, 0, v11, &unk_225D02878, v16);
}

- (void)setModifiedGlobalBoundACLWithData:(NSData *)data externalizedLAContext:(NSData *)context completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = data;
  v13[3] = context;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_225CCE994();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_225D02848;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225D02850;
  v16[5] = v15;
  dataCopy = data;
  contextCopy = context;
  selfCopy = self;
  sub_225CBCC70(0, 0, v11, &unk_225D02858, v16);
}

- (void)retrieveBioBindingUnboundACLWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_225CCE994();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_225D02828;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D02830;
  v12[5] = v11;
  selfCopy = self;
  sub_225CBCC70(0, 0, v7, &unk_225D02838, v12);
}

- (void)retrievePasscodeBindingUnboundACLWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_225CCE994();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_225D02808;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D02810;
  v12[5] = v11;
  selfCopy = self;
  sub_225CBCC70(0, 0, v7, &unk_225D02818, v12);
}

- (void)retrieveBoundACLWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_225CCE994();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_225D027E8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D027F0;
  v12[5] = v11;
  selfCopy = self;
  sub_225CBCC70(0, 0, v7, &unk_225D027F8, v12);
}

- (void)deleteBoundACLWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_225CCE994();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_225D027C8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D027D0;
  v12[5] = v11;
  selfCopy = self;
  sub_225CBCC70(0, 0, v7, &unk_225D027D8, v12);
}

- (void)fetchBioBindingDetailsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_225CCE994();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_225D027A8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D027B0;
  v12[5] = v11;
  selfCopy = self;
  sub_225CBCC70(0, 0, v7, &unk_225D027B8, v12);
}

- (void)fetchTermsAndConditionsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_225CCE994();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_225D02788;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D02790;
  v12[5] = v11;
  selfCopy = self;
  sub_225CBCC70(0, 0, v7, &unk_225D02798, v12);
}

- (void)uploadLivenessVideoWithLivenessVideoURL:(_TtC13CoreIDVShared32IdentityProofingLivenessVideoURL *)l shouldScheduleUploads:(BOOL)uploads completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = l;
  *(v13 + 24) = uploads;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_225CCE994();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_225D02768;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225D02770;
  v16[5] = v15;
  lCopy = l;
  selfCopy = self;
  sub_225CBCC70(0, 0, v11, &unk_225D02778, v16);
}

- (void)getLivenessConfigWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_225CCE994();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_225D02748;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D02750;
  v12[5] = v11;
  selfCopy = self;
  sub_225CBCC70(0, 0, v7, &unk_225D02758, v12);
}

- (void)fetchExtendedReviewDisplayInfoWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = configuration;
  v13[3] = options;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_225CCE994();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_225D02728;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225D02730;
  v16[5] = v15;
  configurationCopy = configuration;
  selfCopy = self;
  sub_225CBCC70(0, 0, v11, &unk_225D02738, v16);
}

- (void)fetchBiomeFedStatsUIWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = configuration;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_225CCE994();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225D02708;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_225D02710;
  v14[5] = v13;
  configurationCopy = configuration;
  selfCopy = self;
  sub_225CBCC70(0, 0, v9, &unk_225D02718, v14);
}

- (void)fetchLivenessConsentOptinUIWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = configuration;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_225CCE994();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225D026E8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_225D026F0;
  v14[5] = v13;
  configurationCopy = configuration;
  selfCopy = self;
  sub_225CBCC70(0, 0, v9, &unk_225D026F8, v14);
}

- (void)saveIdentityProofingDataSharingUserConsentWithDocumentType:(int64_t)type axSettings:(NSArray *)settings consent:(BOOL)consent consentType:(int64_t)consentType proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v25 - v16;
  v18 = _Block_copy(handler);
  v19 = swift_allocObject();
  *(v19 + 16) = type;
  *(v19 + 24) = settings;
  *(v19 + 32) = consent;
  *(v19 + 40) = consentType;
  *(v19 + 48) = options;
  *(v19 + 56) = v18;
  *(v19 + 64) = self;
  v20 = sub_225CCE994();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_225D026C8;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_225D026D0;
  v22[5] = v21;
  settingsCopy = settings;
  selfCopy = self;
  sub_225CBCC70(0, 0, v17, &unk_225D026D8, v22);
}

- (void)clearDataAfterTerminalProofingStateWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = configuration;
  v13[3] = options;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_225CCE994();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_225D026A8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225D026B0;
  v16[5] = v15;
  configurationCopy = configuration;
  selfCopy = self;
  sub_225CBCC70(0, 0, v11, &unk_225D026B8, v16);
}

- (void)invalidate
{
  selfCopy = self;
  sub_225CAEDAC();
}

- (void)globalAuthACLInfoWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_225CCE994();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_225D02688;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D02690;
  v12[5] = v11;
  selfCopy = self;
  sub_225CBCC70(0, 0, v7, &unk_225D02698, v12);
}

- (void)fetchAnalyticsSessionIDWithConfiguration:(_TtC13CoreIDVShared29IdentityProofingConfiguration *)configuration proofingOptions:(unint64_t)options completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = configuration;
  v13[3] = options;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_225CCE994();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_225D02678;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_225CF9CD0;
  v16[5] = v15;
  configurationCopy = configuration;
  selfCopy = self;
  sub_225CBCC70(0, 0, v11, &unk_225D02030, v16);
}

- (_TtC13CoreIDVShared26IdentityManagementUIClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end