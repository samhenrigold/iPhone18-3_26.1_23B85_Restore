@interface HomeEnergyProxy
- (_TtC16HomeEnergyDaemon15HomeEnergyProxy)init;
- (void)addGuidanceTokenWithGridID:(NSString *)d siteID:(NSUUID *)iD completionHandler:(id)handler;
- (void)clearCacheWithCompletionHandler:(id)handler;
- (void)clearEnergyKitDataForAllHomesWithCompletionHandler:(id)handler;
- (void)completedOnboardingWithId:(NSString *)id completionHandler:(id)handler;
- (void)createUtilitySubscriptionWithSiteID:(NSString *)d utilityID:(NSString *)iD serviceLocationID:(NSString *)locationID accessToken:(NSString *)token accessTokenExpirationDate:(NSDate *)date refreshToken:(NSString *)refreshToken address:(NSString *)address utilityCustomerName:(NSString *)self0 completionHandler:(id)self1;
- (void)createUtilitySubscriptionWithSiteID:(NSString *)d utilityID:(NSString *)iD serviceLocationID:(NSString *)locationID accessToken:(NSString *)token accessTokenExpirationDate:(NSDate *)date refreshToken:(NSString *)refreshToken utilityCustomerName:(NSString *)name completionHandler:(id)self0;
- (void)createUtilitySubscriptionWithSiteID:(NSString *)d utilityID:(NSString *)iD serviceLocationID:(NSString *)locationID accessToken:(NSString *)token refreshToken:(NSString *)refreshToken completionHandler:(id)handler;
- (void)deleteAllDeviceInsightsBefore:(NSDate *)before completionHandler:(id)handler;
- (void)deleteAllGuidanceTrackersWithCompletionHandler:(id)handler;
- (void)deleteAllHistoricalWithCompletionHandler:(id)handler;
- (void)deleteEnergySiteWithSite:(_TtC19EnergyKitFoundation12EKEnergySite *)site completionHandler:(id)handler;
- (void)deleteGuidanceTokenWithSiteID:(NSUUID *)d completionHandler:(id)handler;
- (void)disableAllNextCleanEnergyWindowNotificationsWithCompletionHandler:(id)handler;
- (void)disableGuidanceCollectionWithCompletionHandler:(id)handler;
- (void)disableGuidanceCollectionWithGridID:(NSString *)d completionHandler:(id)handler;
- (void)disableNextCleanEnergyWindowNotificationsForGridID:(NSString *)d completionHandler:(id)handler;
- (void)disableNextCleanEnergyWindowNotificationsForGridID:(NSString *)d homeID:(NSString *)iD completionHandler:(id)handler;
- (void)downloadLoadEventsWithSite:(NSUUID *)site range:(NSDateInterval *)range limit:(int64_t)limit completionHandler:(id)handler;
- (void)dumpAllDataWithCompletionHandler:(id)handler;
- (void)enableGuidanceCollectionWithGridID:(NSString *)d completionHandler:(id)handler;
- (void)enableNextCleanEnergyWindowNotificationsForGridID:(NSString *)d notificationContext:(NSDictionary *)context completionHandler:(id)handler;
- (void)energyGuidanceFor:(NSString *)for guidanceType:(signed __int16)type ratePlan:(NSString *)plan utilityID:(NSString *)d timeZone:(NSString *)zone withCaching:(BOOL)caching completionHandler:(id)handler;
- (void)forceIndependentTokenRotateWithToken:(NSString *)token utility:(NSString *)utility completionHandler:(id)handler;
- (void)generateMockAMIDataWithSiteID:(NSString *)d startDate:(NSString *)date endDate:(NSString *)endDate forceAllReadingsToConstant:(BOOL)constant recordInterval:(int64_t)interval batchSize:(int64_t)size rateSchedule:(NSString *)schedule netMetering:(BOOL)self0 direction:(int64_t)self1 randomization:(BOOL)self2 completionHandler:(id)self3;
- (void)generateMultipleMeterMockAMIDataWithSiteID:(NSString *)d startDate:(NSString *)date endDate:(NSString *)endDate recordInterval:(int64_t)interval rateSchedule:(NSString *)schedule multipleMeters:(int64_t)meters completionHandler:(id)handler;
- (void)getAllSiteIDsWithCompletionHandler:(id)handler;
- (void)getAllUtilitiesWithCountryCode:(NSString *)code completionHandler:(id)handler;
- (void)getCurrentLocationWithCompletionHandler:(id)handler;
- (void)getGridIDWithToken:(NSUUID *)token completionHandler:(id)handler;
- (void)getGuidanceTokenWithGridID:(NSString *)d siteID:(NSUUID *)iD completionHandler:(id)handler;
- (void)getKVSDictionaryWithKey:(NSString *)key completionHandler:(id)handler;
- (void)getMockOptionsWithCompletionHandler:(id)handler;
- (void)gridIDLookupWithCoordinate:(CLLocationCoordinate2D)coordinate completionHandler:(id)handler;
- (void)historicalEnergyUsageWithInterval:(NSString *)interval start:(NSDate *)start timezone:(NSString *)timezone utilityID:(NSString *)d subscriptionID:(NSString *)iD completionHandler:(id)handler;
- (void)historicalGridQualityFor:(NSString *)for from:(NSDateInterval *)from withCaching:(BOOL)caching completionHandler:(id)handler;
- (void)intervalReadingWithSubscriptionID:(NSString *)d utilityID:(NSString *)iD interval:(NSString *)interval start:(NSDate *)start end:(NSDate *)end timeZone:(NSTimeZone *)zone flowDirection:(NSString *)direction completionHandler:(id)self0;
- (void)isDataAvailableWithSiteID:(NSString *)d completionHandler:(id)handler;
- (void)isNextCleanEnergyWindowNotificationEnabledForGridID:(NSString *)d homeID:(NSString *)iD completionHandler:(id)handler;
- (void)isTAFEnabledWithUtilityID:(NSString *)d completionHandler:(id)handler;
- (void)leanHistoricalEnergyUsageWithInterval:(NSString *)interval start:(NSDate *)start end:(NSDate *)end subscriptionID:(NSString *)d utilityID:(NSString *)iD timeZone:(NSTimeZone *)zone flowDirection:(int64_t)direction siteID:(NSString *)self0 completionHandler:(id)self1;
- (void)processAllEventDataWithCompletionHandler:(id)handler;
- (void)processDailyDigestsWithSiteID:(NSUUID *)d sourceID:(NSString *)iD deviceID:(NSString *)deviceID between:(NSDateInterval *)between completionHandler:(id)handler;
- (void)processSiteRawLoadEventsWithSiteID:(NSUUID *)d after:(NSDate *)after completionHandler:(id)handler;
- (void)refreshCurrentUtilityPeakPeriodsWithSiteID:(NSString *)d start:(NSDate *)start completionHandler:(id)handler;
- (void)registerEnergySiteWithSite:(_TtC19EnergyKitFoundation12EKEnergySite *)site completionHandler:(id)handler;
- (void)renewUtilityAccessTokenWithSiteID:(NSString *)d completionHandler:(id)handler;
- (void)requestAddToShareForHomeUUID:(NSUUID *)d siteID:(NSString *)iD completionHandler:(id)handler;
- (void)resetUtilityDataWithCompletionHandler:(id)handler;
- (void)revokeUtilitySubscriptionWithSiteID:(NSString *)d completionHandler:(id)handler;
- (void)saveAllHistoricalWithGridID:(NSString *)d untilDate:(NSDate *)date mockCompleteSession:(BOOL)session deterministicMock:(BOOL)mock completionHandler:(id)handler;
- (void)setKVSDictionaryWithKey:(NSString *)key dict:(NSDictionary *)dict completionHandler:(id)handler;
- (void)setMockOptionsWithOptions:(int64_t)options completionHandler:(id)handler;
- (void)siteWithSiteID:(NSString *)d completionHandler:(id)handler;
- (void)submitTestTaskWithTaskID:(NSString *)d delay:(int64_t)delay withRetry:(BOOL)retry taskDuration:(int64_t)duration cancelOnly:(BOOL)only completionHandler:(id)handler;
- (void)testDelegateForGridIds:(NSSet *)ids completionHandler:(id)handler;
- (void)testNotificationsForGridID:(NSString *)d notificationContext:(NSDictionary *)context completionHandler:(id)handler;
- (void)testSetMockURLSessionWithCompletionHandler:(id)handler;
- (void)triggerAMIFetchFromDropboxWithCompletionHandler:(id)handler;
- (void)updateCompletedOnboardingWithId:(NSString *)id value:(BOOL)value completionHandler:(id)handler;
- (void)updateFieldsWithSiteID:(NSString *)d from:(NSDictionary *)from completionHandler:(id)handler;
- (void)updateLocationWithSiteID:(NSString *)d location:(CLLocation *)location completionHandler:(id)handler;
- (void)updateRatePlanInclusionInGuidanceWithSiteID:(NSString *)d toggle:(BOOL)toggle completionHandler:(id)handler;
- (void)updateStateWithSiteID:(NSString *)d state:(NSString *)state completionHandler:(id)handler;
- (void)updateSubscriptionWithSiteID:(NSString *)d utilityID:(NSString *)iD subscriptionID:(NSString *)subscriptionID accessToken:(NSString *)token refreshToken:(NSString *)refreshToken ckFunctionToken:(NSString *)functionToken accountName:(NSString *)name accountNumber:(NSString *)self0 address:(NSString *)self1 serviceLocationID:(NSString *)self2 alternateSupplier:(NSString *)self3 accessTokenExpirationDate:(NSDate *)self4 completionHandler:(id)self5;
- (void)updateTimezoneWithSiteID:(NSString *)d timezone:(NSString *)timezone completionHandler:(id)handler;
- (void)useMockDataWithFilePath:(NSString *)path disableMock:(BOOL)mock validityDate:(NSDate *)date completionHandler:(id)handler;
- (void)utilitiesNearLocationWithLocation:(CLLocationCoordinate2D)location completionHandler:(id)handler;
- (void)utilityInformationWithUtilityID:(NSString *)d completionHandler:(id)handler;
@end

@implementation HomeEnergyProxy

- (void)disableGuidanceCollectionWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22B360B6C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22B3645F0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B3645F8;
  v12[5] = v11;
  selfCopy = self;
  sub_22B1818A0(0, 0, v7, &unk_22B364600, v12);
}

- (void)disableGuidanceCollectionWithGridID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B3645D0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B3645D8;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v9, &unk_22B3645E0, v14);
}

- (void)enableGuidanceCollectionWithGridID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B3645B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B3645B8;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v9, &unk_22B3645C0, v14);
}

- (void)dumpAllDataWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22B360B6C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22B364590;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B364598;
  v12[5] = v11;
  selfCopy = self;
  sub_22B1818A0(0, 0, v7, &unk_22B3645A0, v12);
}

- (void)useMockDataWithFilePath:(NSString *)path disableMock:(BOOL)mock validityDate:(NSDate *)date completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = path;
  *(v15 + 24) = mock;
  *(v15 + 32) = date;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = sub_22B360B6C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B364570;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22B364578;
  v18[5] = v17;
  pathCopy = path;
  dateCopy = date;
  selfCopy = self;
  sub_22B1818A0(0, 0, v13, &unk_22B364580, v18);
}

- (void)testNotificationsForGridID:(NSString *)d notificationContext:(NSDictionary *)context completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = context;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B364550;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B364558;
  v16[5] = v15;
  dCopy = d;
  contextCopy = context;
  selfCopy = self;
  sub_22B1818A0(0, 0, v11, &unk_22B364560, v16);
}

- (void)testDelegateForGridIds:(NSSet *)ids completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = ids;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B364530;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364538;
  v14[5] = v13;
  idsCopy = ids;
  selfCopy = self;
  sub_22B1818A0(0, 0, v9, &unk_22B364540, v14);
}

- (void)testSetMockURLSessionWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22B360B6C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22B364510;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B364518;
  v12[5] = v11;
  selfCopy = self;
  sub_22B1818A0(0, 0, v7, &unk_22B364520, v12);
}

- (void)isNextCleanEnergyWindowNotificationEnabledForGridID:(NSString *)d homeID:(NSString *)iD completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = iD;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B3644F0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B3644F8;
  v16[5] = v15;
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  sub_22B1818A0(0, 0, v11, &unk_22B364500, v16);
}

- (void)enableNextCleanEnergyWindowNotificationsForGridID:(NSString *)d notificationContext:(NSDictionary *)context completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = context;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B3644D0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B3644D8;
  v16[5] = v15;
  dCopy = d;
  contextCopy = context;
  selfCopy = self;
  sub_22B1818A0(0, 0, v11, &unk_22B3644E0, v16);
}

- (void)disableNextCleanEnergyWindowNotificationsForGridID:(NSString *)d homeID:(NSString *)iD completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = iD;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B3644B0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B3644B8;
  v16[5] = v15;
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  sub_22B1818A0(0, 0, v11, &unk_22B3644C0, v16);
}

- (void)disableNextCleanEnergyWindowNotificationsForGridID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B364490;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364498;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v9, &unk_22B3644A0, v14);
}

- (void)disableAllNextCleanEnergyWindowNotificationsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22B360B6C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22B364470;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B364478;
  v12[5] = v11;
  selfCopy = self;
  sub_22B1818A0(0, 0, v7, &unk_22B364480, v12);
}

- (void)energyGuidanceFor:(NSString *)for guidanceType:(signed __int16)type ratePlan:(NSString *)plan utilityID:(NSString *)d timeZone:(NSString *)zone withCaching:(BOOL)caching completionHandler:(id)handler
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v29 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = for;
  *(v20 + 24) = type;
  *(v20 + 32) = plan;
  *(v20 + 40) = d;
  *(v20 + 48) = zone;
  *(v20 + 56) = caching;
  *(v20 + 64) = v19;
  *(v20 + 72) = self;
  v21 = sub_22B360B6C();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22B364440;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22B364448;
  v23[5] = v22;
  forCopy = for;
  planCopy = plan;
  dCopy = d;
  zoneCopy = zone;
  selfCopy = self;
  sub_22B1818A0(0, 0, v18, &unk_22B364450, v23);
}

- (void)saveAllHistoricalWithGridID:(NSString *)d untilDate:(NSDate *)date mockCompleteSession:(BOOL)session deterministicMock:(BOOL)mock completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  *(v17 + 16) = d;
  *(v17 + 24) = date;
  *(v17 + 32) = session;
  *(v17 + 33) = mock;
  *(v17 + 40) = v16;
  *(v17 + 48) = self;
  v18 = sub_22B360B6C();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_22B364418;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_22B364420;
  v20[5] = v19;
  dCopy = d;
  dateCopy = date;
  selfCopy = self;
  sub_22B1818A0(0, 0, v15, &unk_22B364428, v20);
}

- (void)deleteAllHistoricalWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22B360B6C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22B3643F8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B364400;
  v12[5] = v11;
  selfCopy = self;
  sub_22B1818A0(0, 0, v7, &unk_22B364408, v12);
}

- (void)deleteAllGuidanceTrackersWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22B360B6C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22B3643D8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B3643E0;
  v12[5] = v11;
  selfCopy = self;
  sub_22B1818A0(0, 0, v7, &unk_22B3643E8, v12);
}

- (void)historicalGridQualityFor:(NSString *)for from:(NSDateInterval *)from withCaching:(BOOL)caching completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = for;
  *(v15 + 24) = from;
  *(v15 + 32) = caching;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = sub_22B360B6C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B3643B8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22B3643C0;
  v18[5] = v17;
  forCopy = for;
  fromCopy = from;
  selfCopy = self;
  sub_22B1818A0(0, 0, v13, &unk_22B3643C8, v18);
}

- (void)gridIDLookupWithCoordinate:(CLLocationCoordinate2D)coordinate completionHandler:(id)handler
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = latitude;
  v12[3] = longitude;
  *(v12 + 4) = v11;
  *(v12 + 5) = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364398;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B3643A0;
  v15[5] = v14;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B3643A8, v15);
}

- (_TtC16HomeEnergyDaemon15HomeEnergyProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)registerEnergySiteWithSite:(_TtC19EnergyKitFoundation12EKEnergySite *)site completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = site;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B364378;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364380;
  v14[5] = v13;
  siteCopy = site;
  selfCopy = self;
  sub_22B1818A0(0, 0, v9, &unk_22B364388, v14);
}

- (void)getAllSiteIDsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22B360B6C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22B364358;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B364360;
  v12[5] = v11;
  selfCopy = self;
  sub_22B1818A0(0, 0, v7, &unk_22B364368, v12);
}

- (void)deleteEnergySiteWithSite:(_TtC19EnergyKitFoundation12EKEnergySite *)site completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = site;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B364338;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364340;
  v14[5] = v13;
  siteCopy = site;
  selfCopy = self;
  sub_22B1818A0(0, 0, v9, &unk_22B364348, v14);
}

- (void)siteWithSiteID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B364318;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364320;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v9, &unk_22B364328, v14);
}

- (void)updateLocationWithSiteID:(NSString *)d location:(CLLocation *)location completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = location;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B3642F8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B364300;
  v16[5] = v15;
  dCopy = d;
  locationCopy = location;
  selfCopy = self;
  sub_22B1818A0(0, 0, v11, &unk_22B364308, v16);
}

- (void)updateTimezoneWithSiteID:(NSString *)d timezone:(NSString *)timezone completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = timezone;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B3642D8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B3642E0;
  v16[5] = v15;
  dCopy = d;
  timezoneCopy = timezone;
  selfCopy = self;
  sub_22B1818A0(0, 0, v11, &unk_22B3642E8, v16);
}

- (void)updateStateWithSiteID:(NSString *)d state:(NSString *)state completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = state;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B3642B8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B3642C0;
  v16[5] = v15;
  dCopy = d;
  stateCopy = state;
  selfCopy = self;
  sub_22B1818A0(0, 0, v11, &unk_22B3642C8, v16);
}

- (void)updateFieldsWithSiteID:(NSString *)d from:(NSDictionary *)from completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = from;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B364298;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B3642A0;
  v16[5] = v15;
  dCopy = d;
  fromCopy = from;
  selfCopy = self;
  sub_22B1818A0(0, 0, v11, &unk_22B3642A8, v16);
}

- (void)updateSubscriptionWithSiteID:(NSString *)d utilityID:(NSString *)iD subscriptionID:(NSString *)subscriptionID accessToken:(NSString *)token refreshToken:(NSString *)refreshToken ckFunctionToken:(NSString *)functionToken accountName:(NSString *)name accountNumber:(NSString *)self0 address:(NSString *)self1 serviceLocationID:(NSString *)self2 alternateSupplier:(NSString *)self3 accessTokenExpirationDate:(NSDate *)self4 completionHandler:(id)self5
{
  functionTokenCopy = functionToken;
  selfCopy = self;
  refreshTokenCopy = refreshToken;
  dateCopy = date;
  supplierCopy = supplier;
  dCopy = d;
  nameCopy = name;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v19 - 8);
  v43 = &v43 - v20;
  v21 = _Block_copy(handler);
  v22 = swift_allocObject();
  v22[2] = d;
  v22[3] = iD;
  v22[4] = subscriptionID;
  v22[5] = token;
  v23 = functionTokenCopy;
  v22[6] = refreshTokenCopy;
  v22[7] = v23;
  v22[8] = name;
  v22[9] = number;
  v22[10] = address;
  v22[11] = locationID;
  v24 = dateCopy;
  v22[12] = supplierCopy;
  v22[13] = v24;
  v25 = selfCopy;
  v22[14] = v21;
  v22[15] = v25;
  v26 = sub_22B360B6C();
  v27 = v43;
  (*(*(v26 - 8) + 56))(v43, 1, 1, v26);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = &unk_22B364260;
  v28[5] = v22;
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = &unk_22B364268;
  v29[5] = v28;
  v30 = dCopy;
  iDCopy = iD;
  subscriptionIDCopy = subscriptionID;
  tokenCopy = token;
  v34 = refreshTokenCopy;
  v35 = functionTokenCopy;
  v36 = nameCopy;
  numberCopy = number;
  addressCopy = address;
  locationIDCopy = locationID;
  v40 = supplierCopy;
  v41 = dateCopy;
  v42 = selfCopy;
  sub_22B1818A0(0, 0, v27, &unk_22B364270, v29);
}

- (void)getCurrentLocationWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22B360B6C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22B364238;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B364240;
  v12[5] = v11;
  selfCopy = self;
  sub_22B1818A0(0, 0, v7, &unk_22B364248, v12);
}

- (void)leanHistoricalEnergyUsageWithInterval:(NSString *)interval start:(NSDate *)start end:(NSDate *)end subscriptionID:(NSString *)d utilityID:(NSString *)iD timeZone:(NSTimeZone *)zone flowDirection:(int64_t)direction siteID:(NSString *)self0 completionHandler:(id)self1
{
  directionCopy = direction;
  zoneCopy = zone;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &directionCopy - v18;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  v21[2] = interval;
  v21[3] = start;
  v21[4] = end;
  v21[5] = d;
  v22 = directionCopy;
  v23 = zoneCopy;
  v21[6] = iD;
  v21[7] = v23;
  v21[8] = v22;
  v21[9] = siteID;
  v21[10] = v20;
  v21[11] = self;
  v24 = sub_22B360B6C();
  (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_22B364208;
  v25[5] = v21;
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_22B364210;
  v26[5] = v25;
  intervalCopy = interval;
  startCopy = start;
  endCopy = end;
  dCopy = d;
  iDCopy = iD;
  v32 = zoneCopy;
  siteIDCopy = siteID;
  selfCopy = self;
  sub_22B1818A0(0, 0, v19, &unk_22B364218, v26);
}

- (void)historicalEnergyUsageWithInterval:(NSString *)interval start:(NSDate *)start timezone:(NSString *)timezone utilityID:(NSString *)d subscriptionID:(NSString *)iD completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v29 - v16;
  v18 = _Block_copy(handler);
  v19 = swift_allocObject();
  v19[2] = interval;
  v19[3] = start;
  v19[4] = timezone;
  v19[5] = d;
  v19[6] = iD;
  v19[7] = v18;
  v19[8] = self;
  v20 = sub_22B360B6C();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_22B3641E8;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22B3641F0;
  v22[5] = v21;
  intervalCopy = interval;
  startCopy = start;
  timezoneCopy = timezone;
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  sub_22B1818A0(0, 0, v17, &unk_22B3641F8, v22);
}

- (void)isDataAvailableWithSiteID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B3641C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B3641D0;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v9, &unk_22B3641D8, v14);
}

- (void)createUtilitySubscriptionWithSiteID:(NSString *)d utilityID:(NSString *)iD serviceLocationID:(NSString *)locationID accessToken:(NSString *)token refreshToken:(NSString *)refreshToken completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v29 - v16;
  v18 = _Block_copy(handler);
  v19 = swift_allocObject();
  v19[2] = d;
  v19[3] = iD;
  v19[4] = locationID;
  v19[5] = token;
  v19[6] = refreshToken;
  v19[7] = v18;
  v19[8] = self;
  v20 = sub_22B360B6C();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_22B3641A8;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22B3641B0;
  v22[5] = v21;
  dCopy = d;
  iDCopy = iD;
  locationIDCopy = locationID;
  tokenCopy = token;
  refreshTokenCopy = refreshToken;
  selfCopy = self;
  sub_22B1818A0(0, 0, v17, &unk_22B3641B8, v22);
}

- (void)createUtilitySubscriptionWithSiteID:(NSString *)d utilityID:(NSString *)iD serviceLocationID:(NSString *)locationID accessToken:(NSString *)token accessTokenExpirationDate:(NSDate *)date refreshToken:(NSString *)refreshToken utilityCustomerName:(NSString *)name completionHandler:(id)self0
{
  nameCopy = name;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v17 - 8);
  v33 = &v33 - v18;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  v20[2] = d;
  v20[3] = iD;
  v20[4] = locationID;
  v20[5] = token;
  v20[6] = date;
  v20[7] = refreshToken;
  v20[8] = name;
  v20[9] = v19;
  v20[10] = self;
  v21 = sub_22B360B6C();
  v22 = v33;
  (*(*(v21 - 8) + 56))(v33, 1, 1, v21);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22B364188;
  v23[5] = v20;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_22B364190;
  v24[5] = v23;
  dCopy = d;
  iDCopy = iD;
  locationIDCopy = locationID;
  tokenCopy = token;
  dateCopy = date;
  refreshTokenCopy = refreshToken;
  v31 = nameCopy;
  selfCopy = self;
  sub_22B1818A0(0, 0, v22, &unk_22B364198, v24);
}

- (void)createUtilitySubscriptionWithSiteID:(NSString *)d utilityID:(NSString *)iD serviceLocationID:(NSString *)locationID accessToken:(NSString *)token accessTokenExpirationDate:(NSDate *)date refreshToken:(NSString *)refreshToken address:(NSString *)address utilityCustomerName:(NSString *)self0 completionHandler:(id)self1
{
  selfCopy = self;
  refreshTokenCopy = refreshToken;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &selfCopy - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  v20[2] = d;
  v20[3] = iD;
  v20[4] = locationID;
  v20[5] = token;
  v21 = selfCopy;
  v22 = refreshTokenCopy;
  v20[6] = date;
  v20[7] = v22;
  v20[8] = address;
  v20[9] = name;
  v20[10] = v19;
  v20[11] = v21;
  v23 = sub_22B360B6C();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_22B364168;
  v24[5] = v20;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_22B364170;
  v25[5] = v24;
  dCopy = d;
  iDCopy = iD;
  locationIDCopy = locationID;
  tokenCopy = token;
  dateCopy = date;
  v31 = refreshTokenCopy;
  addressCopy = address;
  nameCopy = name;
  v34 = selfCopy;
  sub_22B1818A0(0, 0, v18, &unk_22B364178, v25);
}

- (void)revokeUtilitySubscriptionWithSiteID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B364148;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364150;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v9, &unk_22B364158, v14);
}

- (void)renewUtilityAccessTokenWithSiteID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B364128;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364130;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v9, &unk_22B364138, v14);
}

- (void)completedOnboardingWithId:(NSString *)id completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = id;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B364108;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364110;
  v14[5] = v13;
  idCopy = id;
  selfCopy = self;
  sub_22B1818A0(0, 0, v9, &unk_22B364118, v14);
}

- (void)updateCompletedOnboardingWithId:(NSString *)id value:(BOOL)value completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = id;
  *(v13 + 24) = value;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B3640E8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B3640F0;
  v16[5] = v15;
  idCopy = id;
  selfCopy = self;
  sub_22B1818A0(0, 0, v11, &unk_22B3640F8, v16);
}

- (void)utilitiesNearLocationWithLocation:(CLLocationCoordinate2D)location completionHandler:(id)handler
{
  longitude = location.longitude;
  latitude = location.latitude;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = latitude;
  v12[3] = longitude;
  *(v12 + 4) = v11;
  *(v12 + 5) = self;
  v13 = sub_22B360B6C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B3640C8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B3640D0;
  v15[5] = v14;
  selfCopy = self;
  sub_22B1818A0(0, 0, v10, &unk_22B3640D8, v15);
}

- (void)utilityInformationWithUtilityID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B3640A8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B3640B0;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v9, &unk_22B3640B8, v14);
}

- (void)isTAFEnabledWithUtilityID:(NSString *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B364088;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364090;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v9, &unk_22B364098, v14);
}

- (void)getAllUtilitiesWithCountryCode:(NSString *)code completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = code;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B364068;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364070;
  v14[5] = v13;
  codeCopy = code;
  selfCopy = self;
  sub_22B1818A0(0, 0, v9, &unk_22B364078, v14);
}

- (void)clearCacheWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22B360B6C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22B364048;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B364050;
  v12[5] = v11;
  selfCopy = self;
  sub_22B1818A0(0, 0, v7, &unk_22B364058, v12);
}

- (void)intervalReadingWithSubscriptionID:(NSString *)d utilityID:(NSString *)iD interval:(NSString *)interval start:(NSDate *)start end:(NSDate *)end timeZone:(NSTimeZone *)zone flowDirection:(NSString *)direction completionHandler:(id)self0
{
  directionCopy = direction;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v17 - 8);
  v33 = &v33 - v18;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  v20[2] = d;
  v20[3] = iD;
  v20[4] = interval;
  v20[5] = start;
  v20[6] = end;
  v20[7] = zone;
  v20[8] = direction;
  v20[9] = v19;
  v20[10] = self;
  v21 = sub_22B360B6C();
  v22 = v33;
  (*(*(v21 - 8) + 56))(v33, 1, 1, v21);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22B364000;
  v23[5] = v20;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_22B364008;
  v24[5] = v23;
  dCopy = d;
  iDCopy = iD;
  intervalCopy = interval;
  startCopy = start;
  endCopy = end;
  zoneCopy = zone;
  v31 = directionCopy;
  selfCopy = self;
  sub_22B1818A0(0, 0, v22, &unk_22B364010, v24);
}

- (void)generateMockAMIDataWithSiteID:(NSString *)d startDate:(NSString *)date endDate:(NSString *)endDate forceAllReadingsToConstant:(BOOL)constant recordInterval:(int64_t)interval batchSize:(int64_t)size rateSchedule:(NSString *)schedule netMetering:(BOOL)self0 direction:(int64_t)self1 randomization:(BOOL)self2 completionHandler:(id)self3
{
  sizeCopy = size;
  dateCopy = date;
  intervalCopy = interval;
  selfCopy = self;
  endDateCopy = endDate;
  HIDWORD(v32) = randomization;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v32 - v18;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  *(v21 + 16) = d;
  *(v21 + 24) = date;
  *(v21 + 32) = endDate;
  *(v21 + 40) = constant;
  v22 = selfCopy;
  v23 = sizeCopy;
  *(v21 + 48) = intervalCopy;
  *(v21 + 56) = v23;
  *(v21 + 64) = schedule;
  *(v21 + 72) = metering;
  *(v21 + 80) = direction;
  *(v21 + 88) = BYTE4(v32);
  *(v21 + 96) = v20;
  *(v21 + 104) = v22;
  v24 = sub_22B360B6C();
  (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_22B363FE0;
  v25[5] = v21;
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_22B363FE8;
  v26[5] = v25;
  dCopy = d;
  v28 = dateCopy;
  v29 = endDateCopy;
  scheduleCopy = schedule;
  v31 = v22;
  sub_22B1818A0(0, 0, v19, &unk_22B363FF0, v26);
}

- (void)generateMultipleMeterMockAMIDataWithSiteID:(NSString *)d startDate:(NSString *)date endDate:(NSString *)endDate recordInterval:(int64_t)interval rateSchedule:(NSString *)schedule multipleMeters:(int64_t)meters completionHandler:(id)handler
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v29 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  v20[2] = d;
  v20[3] = date;
  v20[4] = endDate;
  v20[5] = interval;
  v20[6] = schedule;
  v20[7] = meters;
  v20[8] = v19;
  v20[9] = self;
  v21 = sub_22B360B6C();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22B363FC0;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22B363FC8;
  v23[5] = v22;
  dCopy = d;
  dateCopy = date;
  endDateCopy = endDate;
  scheduleCopy = schedule;
  selfCopy = self;
  sub_22B1818A0(0, 0, v18, &unk_22B363FD0, v23);
}

- (void)refreshCurrentUtilityPeakPeriodsWithSiteID:(NSString *)d start:(NSDate *)start completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = start;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B363F90;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B363F98;
  v16[5] = v15;
  dCopy = d;
  startCopy = start;
  selfCopy = self;
  sub_22B1818A0(0, 0, v11, &unk_22B363FA0, v16);
}

- (void)triggerAMIFetchFromDropboxWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22B360B6C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22B363F58;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B363F60;
  v12[5] = v11;
  selfCopy = self;
  sub_22B1818A0(0, 0, v7, &unk_22B363F68, v12);
}

- (void)requestAddToShareForHomeUUID:(NSUUID *)d siteID:(NSString *)iD completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = iD;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B363F20;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B363F28;
  v16[5] = v15;
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  sub_22B1818A0(0, 0, v11, &unk_22B363F30, v16);
}

- (void)resetUtilityDataWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22B360B6C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22B363EE0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B363EE8;
  v12[5] = v11;
  selfCopy = self;
  sub_22B1818A0(0, 0, v7, &unk_22B363EF0, v12);
}

- (void)submitTestTaskWithTaskID:(NSString *)d delay:(int64_t)delay withRetry:(BOOL)retry taskDuration:(int64_t)duration cancelOnly:(BOOL)only completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v25 - v16;
  v18 = _Block_copy(handler);
  v19 = swift_allocObject();
  *(v19 + 16) = d;
  *(v19 + 24) = delay;
  *(v19 + 32) = retry;
  *(v19 + 40) = duration;
  *(v19 + 48) = only;
  *(v19 + 56) = v18;
  *(v19 + 64) = self;
  v20 = sub_22B360B6C();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_22B363E98;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22B363EA0;
  v22[5] = v21;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v17, &unk_22B363EA8, v22);
}

- (void)setKVSDictionaryWithKey:(NSString *)key dict:(NSDictionary *)dict completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = key;
  v13[3] = dict;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B363E70;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B363E78;
  v16[5] = v15;
  keyCopy = key;
  dictCopy = dict;
  selfCopy = self;
  sub_22B1818A0(0, 0, v11, &unk_22B363E80, v16);
}

- (void)getKVSDictionaryWithKey:(NSString *)key completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = key;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B363E48;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B363E50;
  v14[5] = v13;
  keyCopy = key;
  selfCopy = self;
  sub_22B1818A0(0, 0, v9, &unk_22B363E58, v14);
}

- (void)forceIndependentTokenRotateWithToken:(NSString *)token utility:(NSString *)utility completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = token;
  v13[3] = utility;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B363E20;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B363E28;
  v16[5] = v15;
  tokenCopy = token;
  utilityCopy = utility;
  selfCopy = self;
  sub_22B1818A0(0, 0, v11, &unk_22B363E30, v16);
}

- (void)addGuidanceTokenWithGridID:(NSString *)d siteID:(NSUUID *)iD completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = iD;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B363E00;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B363E08;
  v16[5] = v15;
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  sub_22B1818A0(0, 0, v11, &unk_22B363E10, v16);
}

- (void)deleteGuidanceTokenWithSiteID:(NSUUID *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B363DE0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B363DE8;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v9, &unk_22B363DF0, v14);
}

- (void)getGuidanceTokenWithGridID:(NSString *)d siteID:(NSUUID *)iD completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = iD;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B363DB8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B363DC0;
  v16[5] = v15;
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  sub_22B1818A0(0, 0, v11, &unk_22B363DC8, v16);
}

- (void)getGridIDWithToken:(NSUUID *)token completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = token;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B363D98;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B363DA0;
  v14[5] = v13;
  tokenCopy = token;
  selfCopy = self;
  sub_22B1818A0(0, 0, v9, &unk_22B363DA8, v14);
}

- (void)downloadLoadEventsWithSite:(NSUUID *)site range:(NSDateInterval *)range limit:(int64_t)limit completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = site;
  v15[3] = range;
  v15[4] = limit;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_22B360B6C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22B363D78;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22B363D80;
  v18[5] = v17;
  siteCopy = site;
  rangeCopy = range;
  selfCopy = self;
  sub_22B1818A0(0, 0, v13, &unk_22B363D88, v18);
}

- (void)updateRatePlanInclusionInGuidanceWithSiteID:(NSString *)d toggle:(BOOL)toggle completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = d;
  *(v13 + 24) = toggle;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B363D50;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B363D58;
  v16[5] = v15;
  dCopy = d;
  selfCopy = self;
  sub_22B1818A0(0, 0, v11, &unk_22B363D60, v16);
}

- (void)processDailyDigestsWithSiteID:(NSUUID *)d sourceID:(NSString *)iD deviceID:(NSString *)deviceID between:(NSDateInterval *)between completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = d;
  v17[3] = iD;
  v17[4] = deviceID;
  v17[5] = between;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_22B360B6C();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_22B363D28;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_22B363D30;
  v20[5] = v19;
  dCopy = d;
  iDCopy = iD;
  deviceIDCopy = deviceID;
  betweenCopy = between;
  selfCopy = self;
  sub_22B1818A0(0, 0, v15, &unk_22B363D38, v20);
}

- (void)processSiteRawLoadEventsWithSiteID:(NSUUID *)d after:(NSDate *)after completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = after;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B363D00;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22B363D08;
  v16[5] = v15;
  dCopy = d;
  afterCopy = after;
  selfCopy = self;
  sub_22B1818A0(0, 0, v11, &unk_22B363D10, v16);
}

- (void)processAllEventDataWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22B360B6C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22B363CD8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B363CE0;
  v12[5] = v11;
  selfCopy = self;
  sub_22B1818A0(0, 0, v7, &unk_22B363CE8, v12);
}

- (void)deleteAllDeviceInsightsBefore:(NSDate *)before completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = before;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B363CB8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B363CC0;
  v14[5] = v13;
  beforeCopy = before;
  selfCopy = self;
  sub_22B1818A0(0, 0, v9, &unk_22B363CC8, v14);
}

- (void)clearEnergyKitDataForAllHomesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22B360B6C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22B363C98;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B363CA0;
  v12[5] = v11;
  selfCopy = self;
  sub_22B1818A0(0, 0, v7, &unk_22B363CA8, v12);
}

- (void)setMockOptionsWithOptions:(int64_t)options completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = options;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22B364800;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B364808;
  v14[5] = v13;
  selfCopy = self;
  sub_22B1818A0(0, 0, v9, &unk_22B364810, v14);
}

- (void)getMockOptionsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22B360B6C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22B3647C8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B363CA0;
  v12[5] = v11;
  selfCopy = self;
  sub_22B1818A0(0, 0, v7, &unk_22B363CA8, v12);
}

@end