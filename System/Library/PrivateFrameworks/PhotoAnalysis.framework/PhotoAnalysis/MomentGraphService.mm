@interface MomentGraphService
- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)debugValidationFromQueryTemplate:(NSString *)template person:(NSString *)person city:(NSString *)city place:(NSString *)place time:(NSString *)time reply:(id)reply;
- (void)fetchUnvalidatedPromptSuggestionsWithFetchLimit:(int64_t)limit reply:(id)reply;
- (void)generateContextualPromptSuggestionsWithReply:(id)reply;
- (void)generateMagicSlotSuggestionsWithOptions:(NSDictionary *)options reply:(id)reply;
- (void)generateWhimsicalPromptSuggestionsWithReply:(id)reply;
- (void)performGraphIncrementalUpdateWithOptions:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply;
- (void)performGraphRebuildWithOptions:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply;
- (void)performGraphSearchEntityRankingDonationWithOperationID:(NSString *)d reply:(id)reply;
- (void)performLibraryUnderstandingWithOperationID:(NSString *)d reply:(id)reply;
- (void)performLocalMemoryEnrichmentForMemoryCategory:(int64_t)category reply:(id)reply;
- (void)performLocalMemoryEnrichmentForUUIDs:(id)ds reply:(id)reply;
- (void)performLocalMemoryEventElectionWithElectionMode:(NSString *)mode operationID:(NSString *)d reply:(id)reply;
- (void)performMemoryNodesRebuildForCategory:(int64_t)category operationID:(NSString *)d reply:(id)reply;
- (void)performPromptSuggestionCachingWithOperationID:(NSString *)d reply:(id)reply;
- (void)performPublicEventCachingTaskWithOptions:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply;
- (void)requestAssetSearchKeywordsForAssetCollectionUUIDs:(NSArray *)ds ofType:(unint64_t)type operationID:(NSString *)d reply:(id)reply;
- (void)requestCharacterCurationInfoForCharacterUUIDs:(NSSet *)ds operationID:(NSString *)d reply:(id)reply;
- (void)requestExtendedTokenCollectionFromQueryTokensAsData:(NSData *)data representativeMomentUUIDByAssetUUID:(NSDictionary *)d personOrPetUUIDsWithNegativeFeedback:(NSSet *)feedback sharingFilter:(int64_t)filter operationID:(NSString *)iD reply:(id)reply;
- (void)requestFilterLocationsByMomentLocationHierarchyForRecipeAsData:(NSData *)data operationID:(NSString *)d reply:(id)reply;
- (void)requestGraphIsAvailableWithReply:(id)reply;
- (void)requestGraphSearchMetadataWithOptions:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply;
- (void)requestGraphStatusWithReply:(id)reply;
- (void)requestMeaningsForMomentUUIDs:(NSSet *)ds operationID:(NSString *)d reply:(id)reply;
- (void)requestPersonGroundingForPersonQuery:(NSString *)query operationID:(NSString *)d reply:(id)reply;
- (void)requestPersonalEventMomentsForQueryTokenAsData:(NSData *)data associatedPersonUUID:(NSString *)d scopedMomentUUIDs:(NSSet *)ds momentUUIDByAssetUUID:(NSDictionary *)iD operationID:(NSString *)operationID reply:(id)reply;
- (void)requestPersonalTraitsForAssetUUIDs:(NSArray *)ds momentUUIDByAssetUUID:(NSDictionary *)d extendedTokenCollectionAsData:(NSData *)data configurationAsData:(NSData *)asData sharingFilter:(int64_t)filter operationID:(NSString *)iD reply:(id)reply;
- (void)requestPersonalTraitsForAssetUUIDs:(NSArray *)ds operationID:(NSString *)d reply:(id)reply;
- (void)requestPersonalTraitsForHighlightUUIDs:(NSArray *)ds operationID:(NSString *)d reply:(id)reply;
- (void)requestPrewarmQueryAnnotatorForOriginatorPID:(int64_t)d operationID:(NSString *)iD reply:(id)reply;
- (void)requestPublicEventDataForAssetUUID:(NSString *)d operationID:(NSString *)iD reply:(id)reply;
- (void)requestPublicEventDataForMomentUUID:(NSString *)d operationID:(NSString *)iD reply:(id)reply;
- (void)requestQueryAnnotationForQuery:(NSString *)query originatorPID:(int64_t)d operationID:(NSString *)iD reply:(id)reply;
- (void)requestSearchIndexKeywordsForAssetCollectionUUIDs:(NSArray *)ds ofType:(unint64_t)type operationID:(NSString *)d reply:(id)reply;
- (void)requestSearchableAssetUUIDsBySocialGroupForAssetCollectionUUIDs:(NSArray *)ds ofType:(unint64_t)type isFullAnalysis:(BOOL)analysis operationID:(NSString *)d reply:(id)reply;
- (void)requestSynonymsDictionariesWithOperationID:(NSString *)d reply:(id)reply;
- (void)validatePromptSuggestionsWithSuggestionUUIDs:(NSArray *)ds operationID:(NSString *)d reply:(id)reply;
- (void)warmupMomentGraphWorkerForDuration:(double)duration operationID:(NSString *)d reply:(id)reply;
@end

@implementation MomentGraphService

- (void)requestPersonalTraitsForAssetUUIDs:(NSArray *)ds operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = ds;
  v14[3] = d;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA688;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDA690;
  v17[5] = v16;
  dsCopy = ds;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCDA698, v17);
}

- (void)cancelOperationsWithIdentifiers:(id)identifiers reply:(id)reply
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(reply);
  v11 = sub_22FCC8C44();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22FA7F81C;
  *(v13 + 24) = v12;
  v14 = sub_22FCC8D14();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = v11;
  v15[6] = sub_22FA7F824;
  v15[7] = v13;

  sub_22FC3EE08(0, 0, v9, &unk_22FCDAA20, v15);
}

- (void)warmupMomentGraphWorkerForDuration:(double)duration operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v19 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  *(v14 + 16) = duration;
  *(v14 + 24) = d;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDAA08;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDAA10;
  v17[5] = v16;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCDAA18, v17);
}

- (void)performGraphRebuildWithOptions:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = options;
  v14[3] = d;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA9E8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDA9F0;
  v17[5] = v16;
  optionsCopy = options;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCDA9F8, v17);
}

- (void)performGraphIncrementalUpdateWithOptions:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = options;
  v14[3] = d;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA9C8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDA9D0;
  v17[5] = v16;
  optionsCopy = options;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCDA9D8, v17);
}

- (void)performMemoryNodesRebuildForCategory:(int64_t)category operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v19 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = category;
  v14[3] = d;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA9A8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDA9B0;
  v17[5] = v16;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCDA9B8, v17);
}

- (void)performLocalMemoryEventElectionWithElectionMode:(NSString *)mode operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = mode;
  v14[3] = d;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA988;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDA990;
  v17[5] = v16;
  modeCopy = mode;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCDA998, v17);
}

- (void)performLocalMemoryEnrichmentForUUIDs:(id)ds reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = sub_22FCC8C44();
  _Block_copy(v5);

  sub_22FBA522C(v6, self, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)performLocalMemoryEnrichmentForMemoryCategory:(int64_t)category reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);

  sub_22FBA5424(category, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)requestGraphStatusWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(reply);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22FCC8D14();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22FCDA968;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FCDA970;
  v13[5] = v12;

  sub_22FC0D8B4(0, 0, v8, &unk_22FCDA978, v13);
}

- (void)requestGraphIsAvailableWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(reply);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22FCC8D14();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22FCDA948;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FCDA950;
  v13[5] = v12;

  sub_22FC0D8B4(0, 0, v8, &unk_22FCDA958, v13);
}

- (void)generateMagicSlotSuggestionsWithOptions:(NSDictionary *)options reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  v12[2] = options;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22FCC8D14();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCDA928;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA930;
  v15[5] = v14;
  optionsCopy = options;

  sub_22FC0D8B4(0, 0, v10, &unk_22FCDA938, v15);
}

- (void)requestSynonymsDictionariesWithOperationID:(NSString *)d reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22FCC8D14();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCDA908;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA910;
  v15[5] = v14;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v10, &unk_22FCDA918, v15);
}

- (void)requestGraphSearchMetadataWithOptions:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = options;
  v14[3] = d;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA8E8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDA8F0;
  v17[5] = v16;
  optionsCopy = options;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCDA8F8, v17);
}

- (void)requestSearchIndexKeywordsForAssetCollectionUUIDs:(NSArray *)ds ofType:(unint64_t)type operationID:(NSString *)d reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v22 - v13;
  v15 = _Block_copy(reply);
  v16 = swift_allocObject();
  v16[2] = ds;
  v16[3] = type;
  v16[4] = d;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_22FCC8D14();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22FCDA8C0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_22FCDA8C8;
  v19[5] = v18;
  dsCopy = ds;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v14, &unk_22FCDA8D0, v19);
}

- (void)requestAssetSearchKeywordsForAssetCollectionUUIDs:(NSArray *)ds ofType:(unint64_t)type operationID:(NSString *)d reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v22 - v13;
  v15 = _Block_copy(reply);
  v16 = swift_allocObject();
  v16[2] = ds;
  v16[3] = type;
  v16[4] = d;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_22FCC8D14();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22FCDA898;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_22FCDA8A0;
  v19[5] = v18;
  dsCopy = ds;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v14, &unk_22FCDA8A8, v19);
}

- (void)requestSearchableAssetUUIDsBySocialGroupForAssetCollectionUUIDs:(NSArray *)ds ofType:(unint64_t)type isFullAnalysis:(BOOL)analysis operationID:(NSString *)d reply:(id)reply
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v24 - v15;
  v17 = _Block_copy(reply);
  v18 = swift_allocObject();
  *(v18 + 16) = ds;
  *(v18 + 24) = type;
  *(v18 + 32) = analysis;
  *(v18 + 40) = d;
  *(v18 + 48) = v17;
  *(v18 + 56) = self;
  v19 = sub_22FCC8D14();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_22FCDA878;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_22FCDA880;
  v21[5] = v20;
  dsCopy = ds;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v16, &unk_22FCDA888, v21);
}

- (void)performGraphSearchEntityRankingDonationWithOperationID:(NSString *)d reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22FCC8D14();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCDA858;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA860;
  v15[5] = v14;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v10, &unk_22FCDA868, v15);
}

- (void)performLibraryUnderstandingWithOperationID:(NSString *)d reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22FCC8D14();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCDA838;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA840;
  v15[5] = v14;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v10, &unk_22FCDA848, v15);
}

- (void)requestPublicEventDataForMomentUUID:(NSString *)d operationID:(NSString *)iD reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = iD;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA818;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDA820;
  v17[5] = v16;
  dCopy = d;
  iDCopy = iD;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCDA828, v17);
}

- (void)requestPublicEventDataForAssetUUID:(NSString *)d operationID:(NSString *)iD reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = iD;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA7F8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDA800;
  v17[5] = v16;
  dCopy = d;
  iDCopy = iD;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCDA808, v17);
}

- (void)performPublicEventCachingTaskWithOptions:(NSDictionary *)options operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = options;
  v14[3] = d;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA7D8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDA7E0;
  v17[5] = v16;
  optionsCopy = options;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCDA7E8, v17);
}

- (void)requestExtendedTokenCollectionFromQueryTokensAsData:(NSData *)data representativeMomentUUIDByAssetUUID:(NSDictionary *)d personOrPetUUIDsWithNegativeFeedback:(NSSet *)feedback sharingFilter:(int64_t)filter operationID:(NSString *)iD reply:(id)reply
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v28 - v17;
  v19 = _Block_copy(reply);
  v20 = swift_allocObject();
  v20[2] = data;
  v20[3] = d;
  v20[4] = feedback;
  v20[5] = filter;
  v20[6] = iD;
  v20[7] = v19;
  v20[8] = self;
  v21 = sub_22FCC8D14();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22FCDA7B8;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22FCDA7C0;
  v23[5] = v22;
  dataCopy = data;
  dCopy = d;
  feedbackCopy = feedback;
  iDCopy = iD;

  sub_22FC0D8B4(0, 0, v18, &unk_22FCDA7C8, v23);
}

- (void)requestMeaningsForMomentUUIDs:(NSSet *)ds operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = ds;
  v14[3] = d;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA798;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDA7A0;
  v17[5] = v16;
  dsCopy = ds;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCDA7A8, v17);
}

- (void)requestPersonalTraitsForAssetUUIDs:(NSArray *)ds momentUUIDByAssetUUID:(NSDictionary *)d extendedTokenCollectionAsData:(NSData *)data configurationAsData:(NSData *)asData sharingFilter:(int64_t)filter operationID:(NSString *)iD reply:(id)reply
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v30 - v18;
  v20 = _Block_copy(reply);
  v21 = swift_allocObject();
  v21[2] = ds;
  v21[3] = d;
  v21[4] = data;
  v21[5] = asData;
  v21[6] = filter;
  v21[7] = iD;
  v21[8] = v20;
  v21[9] = self;
  v22 = sub_22FCC8D14();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22FCDA778;
  v23[5] = v21;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_22FCDA780;
  v24[5] = v23;
  dsCopy = ds;
  dCopy = d;
  dataCopy = data;
  asDataCopy = asData;
  iDCopy = iD;

  sub_22FC0D8B4(0, 0, v19, &unk_22FCDA788, v24);
}

- (void)requestPersonalEventMomentsForQueryTokenAsData:(NSData *)data associatedPersonUUID:(NSString *)d scopedMomentUUIDs:(NSSet *)ds momentUUIDByAssetUUID:(NSDictionary *)iD operationID:(NSString *)operationID reply:(id)reply
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v29 - v17;
  v19 = _Block_copy(reply);
  v20 = swift_allocObject();
  v20[2] = data;
  v20[3] = d;
  v20[4] = ds;
  v20[5] = iD;
  v20[6] = operationID;
  v20[7] = v19;
  v20[8] = self;
  v21 = sub_22FCC8D14();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22FCDA758;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22FCDA760;
  v23[5] = v22;
  dataCopy = data;
  dCopy = d;
  dsCopy = ds;
  iDCopy = iD;
  operationIDCopy = operationID;

  sub_22FC0D8B4(0, 0, v18, &unk_22FCDA768, v23);
}

- (void)requestFilterLocationsByMomentLocationHierarchyForRecipeAsData:(NSData *)data operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = data;
  v14[3] = d;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA738;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDA740;
  v17[5] = v16;
  dataCopy = data;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCDA748, v17);
}

- (void)requestCharacterCurationInfoForCharacterUUIDs:(NSSet *)ds operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = ds;
  v14[3] = d;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA718;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDA720;
  v17[5] = v16;
  dsCopy = ds;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCDA728, v17);
}

- (void)requestPrewarmQueryAnnotatorForOriginatorPID:(int64_t)d operationID:(NSString *)iD reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v19 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = iD;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA6F8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDA700;
  v17[5] = v16;
  iDCopy = iD;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCDA708, v17);
}

- (void)requestQueryAnnotationForQuery:(NSString *)query originatorPID:(int64_t)d operationID:(NSString *)iD reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v22 - v13;
  v15 = _Block_copy(reply);
  v16 = swift_allocObject();
  v16[2] = query;
  v16[3] = d;
  v16[4] = iD;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_22FCC8D14();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22FCDA6D8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_22FCDA6E0;
  v19[5] = v18;
  queryCopy = query;
  iDCopy = iD;

  sub_22FC0D8B4(0, 0, v14, &unk_22FCDA6E8, v19);
}

- (void)requestPersonGroundingForPersonQuery:(NSString *)query operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = query;
  v14[3] = d;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA6A8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDA6B0;
  v17[5] = v16;
  queryCopy = query;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCDA6B8, v17);
}

- (void)requestPersonalTraitsForHighlightUUIDs:(NSArray *)ds operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = ds;
  v14[3] = d;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA660;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDA668;
  v17[5] = v16;
  dsCopy = ds;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCDA670, v17);
}

- (void)performPromptSuggestionCachingWithOperationID:(NSString *)d reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22FCC8D14();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCDA640;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA648;
  v15[5] = v14;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v10, &unk_22FCDA650, v15);
}

- (void)generateWhimsicalPromptSuggestionsWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(reply);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22FCC8D14();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22FCDA620;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FCDA628;
  v13[5] = v12;

  sub_22FC0D8B4(0, 0, v8, &unk_22FCDA630, v13);
}

- (void)generateContextualPromptSuggestionsWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(reply);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22FCC8D14();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22FCDA600;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22FCDA608;
  v13[5] = v12;

  sub_22FC0D8B4(0, 0, v8, &unk_22FCDA610, v13);
}

- (void)fetchUnvalidatedPromptSuggestionsWithFetchLimit:(int64_t)limit reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v16 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  v12[2] = limit;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22FCC8D14();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22FCDA5E0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22FCDA5E8;
  v15[5] = v14;

  sub_22FC0D8B4(0, 0, v10, &unk_22FCDA5F0, v15);
}

- (void)validatePromptSuggestionsWithSuggestionUUIDs:(NSArray *)ds operationID:(NSString *)d reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = ds;
  v14[3] = d;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22FCDA5A0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22FCDA5A8;
  v17[5] = v16;
  dsCopy = ds;
  dCopy = d;

  sub_22FC0D8B4(0, 0, v12, &unk_22FCDA5B0, v17);
}

- (void)debugValidationFromQueryTemplate:(NSString *)template person:(NSString *)person city:(NSString *)city place:(NSString *)place time:(NSString *)time reply:(id)reply
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v29 - v17;
  v19 = _Block_copy(reply);
  v20 = swift_allocObject();
  v20[2] = template;
  v20[3] = person;
  v20[4] = city;
  v20[5] = place;
  v20[6] = time;
  v20[7] = v19;
  v20[8] = self;
  v21 = sub_22FCC8D14();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22FCDA580;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22FCD2CA0;
  v23[5] = v22;
  templateCopy = template;
  personCopy = person;
  cityCopy = city;
  placeCopy = place;
  timeCopy = time;

  sub_22FC0D8B4(0, 0, v18, &unk_22FCDA590, v23);
}

@end