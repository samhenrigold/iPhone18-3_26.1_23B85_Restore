@interface STBlueprint
+ (BOOL)_isStateChangeValid:(int64_t)valid forState:(int64_t)state;
+ (BOOL)_updateConfiguration:(id)configuration withDeclaration:(id)declaration context:(id)context error:(id *)error;
+ (BOOL)deleteManagedUserBlueprintForUser:(id)user error:(id *)error;
+ (BOOL)deleteUsageLimitWithIdentifier:(id)identifier user:(id)user managedObjectContext:(id)context error:(id *)error;
+ (BOOL)disableManagedUserBlueprintForUser:(id)user error:(id *)error;
+ (BOOL)disableRestrictionsBlueprintForUser:(id)user error:(id *)error;
+ (BOOL)removeFixedDurationOnDemandDowntimeForUserID:(id)d context:(id)context error:(id *)error;
+ (BOOL)saveAlwaysAllowListForUser:(id)user withBundleIDs:(id)ds overwriteExistingList:(BOOL)list error:(id *)error;
+ (BOOL)saveDefaultAlwaysAllowListIfNecessaryForUser:(id)user error:(id *)error;
+ (BOOL)saveDowntimeForUser:(id)user startTime:(id)time endTime:(id)endTime scheduleByWeekdayIndex:(id)index enabled:(BOOL)enabled behaviorType:(unint64_t)type error:(id *)error;
+ (BOOL)saveManagedUserBlueprintForUser:(id)user error:(id *)error;
+ (BOOL)saveRestrictionsBlueprintWithValuesForPresetRestrictions:(id)restrictions forUser:(id)user error:(id *)error;
+ (BOOL)saveUsageLimitWithIdentifier:(id)identifier user:(id)user bundleIdentifiers:(id)identifiers webDomains:(id)domains categoryIdentifiers:(id)categoryIdentifiers dailyBudgetLimit:(double)limit budgetLimitByWeekday:(id)weekday enabled:(BOOL)self0 behaviorType:(unint64_t)self1 error:(id *)self2;
+ (BOOL)shouldUseGracePeriodForDowntimeOverride:(id)override configuration:(id)configuration;
+ (NSDateComponents)defaultEndTime;
+ (NSDateComponents)defaultStartTime;
+ (id)_buildConfigurationsByDeclarationIdentifierFromBlueprint:(id)blueprint error:(id *)error;
+ (id)_buildDeclarationsFromConfigurationsByDeclarationIdentifier:(id)identifier predicate:(id)predicate identifier:(id)a5;
+ (id)_buildPredicateForDisablingBlueprint:(id)blueprint;
+ (id)_buildPredicateForUnspecializedBlueprint:(id)blueprint usingDateFormatter:(id)formatter calendar:(id)calendar;
+ (id)_cemPredicateWithDowntimeOverride:(id)override shouldUseGracePeriod:(BOOL)period dateFormater:(id)formater calendar:(id)calendar;
+ (id)_configurationForDowntime:(id)downtime context:(id)context;
+ (id)_createDowntimeForUser:(id)user organization:(id)organization context:(id)context;
+ (id)_declarationForDowntime:(id)downtime user:(id)user configuration:(id)configuration behaviorType:(unint64_t)type context:(id)context error:(id *)error;
+ (id)_declarationModeForBehaviorType:(unint64_t)type;
+ (id)_downtimeForUser:(id)user inContext:(id)context error:(id *)error;
+ (id)_fetchOrCreateDowntimeForUserID:(id)d inContext:(id)context error:(id *)error;
+ (id)_fetchRequestMatchingBlueprintsForUserWithDSID:(id)d;
+ (id)_getDisplayNameAndAddCategories:(id)categories toItemNames:(id)names remainingItems:(unint64_t *)items;
+ (id)_organizationIdentifierForUser:(id)user context:(id)context;
+ (id)_predicateForAlwaysAllowedAppsBlueprint:(id)blueprint withDateFormatter:(id)formatter calendar:(id)calendar;
+ (id)_predicateForDowntimeBlueprint:(id)blueprint withDateFormatter:(id)formatter calendar:(id)calendar;
+ (id)_predicateForManagedUserBlueprint:(id)blueprint withDateFormatter:(id)formatter calendar:(id)calendar;
+ (id)_predicateForRestrictionsBlueprint:(id)blueprint withDateFormatter:(id)formatter calendar:(id)calendar;
+ (id)_predicateForUsageLimitBlueprint:(id)blueprint withDateFormatter:(id)formatter calendar:(id)calendar;
+ (id)_predicateForUsageLimitOverrideBlueprint:(id)blueprint withDateFormatter:(id)formatter calendar:(id)calendar;
+ (id)_updatedDowntimeForUser:(id)user startTime:(id)time endTime:(id)endTime scheduleByWeekdayIndex:(id)index enabled:(BOOL)enabled behaviorType:(unint64_t)type error:(id *)error;
+ (id)_updatedScheduleFromSchedule:(id)schedule withStartTime:(id)time endTime:(id)endTime scheduleByWeekdayIndex:(id)index context:(id)context;
+ (id)_userDSIDStringForUser:(id)user context:(id)context;
+ (id)_userForUserID:(id)d inContext:(id)context error:(id *)error;
+ (id)alwaysAllowBundleIdentifiersForUser:(id)user error:(id *)error;
+ (id)appExceptionsDeclarationForBlueprint:(id)blueprint usingCache:(id)cache;
+ (id)applyAutomaticOnDemandDowntimeStateChange:(int64_t)change forUserID:(id)d context:(id)context error:(id *)error;
+ (id)applyOnDemandDowntimeStateChange:(int64_t)change withFixedDuration:(double)duration forUserID:(id)d context:(id)context error:(id *)error;
+ (id)applyScheduleStateChange:(int64_t)change forUserID:(id)d context:(id)context error:(id *)error;
+ (id)blueprintIdentifierForUser:(id)user;
+ (id)blueprintTypeForDeclarationType:(id)type;
+ (id)createBlueprintWithType:(id)type user:(id)user;
+ (id)createManagedUserBlueprintForUser:(id)user error:(id *)error;
+ (id)customScheduleTimeRangeWithLocale:(id)locale startTimeComponents:(id)components endTimeComponents:(id)timeComponents;
+ (id)displayNameForUsageLimitWithCategoryIdentifiers:(id)identifiers bundleIdentifiers:(id)bundleIdentifiers webDomains:(id)domains;
+ (id)downtimeConfigurationForUserID:(id)d context:(id)context error:(id *)error;
+ (id)fetchOrCreateWithDictionaryRepresentation:(id)representation inContext:(id)context error:(id *)error;
+ (id)fetchRequest;
+ (id)fetchRequestForBlueprintsOfType:(id)type;
+ (id)fetchRequestMatchingBlueprintsForUser:(id)user fromOrganization:(id)organization includeTombstones:(BOOL)tombstones;
+ (id)fetchRequestMatchingBlueprintsForUser:(id)user ofType:(id)type fromOrganization:(id)organization includeTombstones:(BOOL)tombstones;
+ (id)fetchRequestMatchingBlueprintsForUser:(id)user ofType:(id)type withIdentifier:(id)identifier fromOrganization:(id)organization includeTombstones:(BOOL)tombstones;
+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)d fromOrganization:(id)organization;
+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)d ofType:(id)type;
+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)d ofType:(id)type fromOrganization:(id)organization;
+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)d ofType:(id)type withIdentifier:(id)identifier fromOrganization:(id)organization;
+ (id)fetchRequestMatchingExpiredBlueprints;
+ (id)fetchRequestMatchingOrphanedBlueprints;
+ (id)fetchRequestMatchingUnexpiredOneMoreMinuteBlueprintsForUserWithDSID:(id)d;
+ (id)fetchResultsRequestsForChangesToBlueprints;
+ (id)fetchResultsRequestsForChangesToBlueprintsForUserWithDSID:(id)d;
+ (id)scheduleTextWithLocale:(id)locale weekdayScheduleComparator:(id)comparator scheduleTimeGetter:(id)getter;
+ (id)simpleScheduleTimeRangeWithStartTimeComponents:(id)components endTimeComponents:(id)timeComponents;
+ (void)_addCommonPredicatesForBlueprint:(id)blueprint toAllPredicates:(id)predicates usingDateFormatter:(id)formatter calendar:(id)calendar;
+ (void)_addExpirationPredicateForBlueprint:(id)blueprint toAllPredicates:(id)predicates usingDateFormatter:(id)formatter;
+ (void)_addMinimumInstallationDatePredicateForBlueprint:(id)blueprint toAllPredicates:(id)predicates usingDateFormatter:(id)formatter;
+ (void)_addSchedulePredicatesForBlueprintScheudle:(id)scheudle toAllPredicates:(id)predicates usingDateFormatter:(id)formatter calendar:(id)calendar;
+ (void)_addUserPredicateForBlueprint:(id)blueprint toAllPredicates:(id)predicates;
+ (void)_addWebDomains:(id)domains toItemNames:(id)names remainingItems:(unint64_t)items totalCount:(unint64_t)count completionHandler:(id)handler;
+ (void)_createDisplayNameWithItemNames:(id)names itemCount:(unint64_t)count completionHandler:(id)handler;
+ (void)fetchDisplayNameForUsageLimitWithCategoryIdentifiers:(id)identifiers bundleIdentifiers:(id)bundleIdentifiers webDomains:(id)domains completionHandler:(id)handler;
- (BOOL)_validateBlueprintConfiguration:(id)configuration;
- (BOOL)_validateBlueprintIdentifier:(id)identifier;
- (BOOL)_validateNumberOfBlueprints:(id)blueprints;
- (BOOL)_validateType:(id)type;
- (BOOL)_validateUsersOnBlueprint:(id)blueprint;
- (BOOL)permitWebFilterURL:(id)l pageTitle:(id)title error:(id *)error;
- (BOOL)removeFixedDurationOnDemandDowntimeWithError:(id *)error;
- (BOOL)updateWithDictionaryRepresentation:(id)representation;
- (BOOL)validateForDelete:(id *)delete;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (NSString)downtimeScheduleText;
- (NSString)limitDisplayName;
- (NSString)limitScheduleText;
- (STDowntimeConfiguration)downtimeConfiguration;
- (id)_applyAutomaticOnDemandDowntimeStateChange:(int64_t)change atDate:(id)date inCalendar:(id)calendar error:(id *)error;
- (id)_applyOnDemandDowntimeStateChange:(int64_t)change withFixedDuration:(double)duration atDate:(id)date inCalendar:(id)calendar error:(id *)error;
- (id)_applyScheduleStateChange:(int64_t)change atDate:(id)date inCalendar:(id)calendar error:(id *)error;
- (id)_downtimeConfigurationAtDate:(id)date inCalendar:(id)calendar;
- (id)_webFilterBlacklistStringsForURL:(id)l;
- (id)activeOverride;
- (id)alwaysAllowBundleIdentifiersWithError:(id *)error;
- (id)applyAutomaticOnDemandDowntimeStateChange:(int64_t)change error:(id *)error;
- (id)applyOnDemandDowntimeStateChange:(int64_t)change withFixedDuration:(double)duration error:(id *)error;
- (id)applyScheduleStateChange:(int64_t)change error:(id *)error;
- (id)computeUniqueIdentifier;
- (id)declarationsWithError:(id *)error;
- (id)dictionaryRepresentation;
- (void)_reportCoreAnalyticsEventForDowntimeOverride:(id)override currentDate:(id)date;
- (void)_updateActiveOverrideAfterScheduleChange;
- (void)awakeFromInsert;
- (void)didChangeValueForKey:(id)key;
- (void)disableDowntimeForDay:(unint64_t)day;
- (void)migrateToVersion2CategoriesIfNeeded;
- (void)setDowntimeEnabled:(BOOL)enabled;
- (void)setStartTime:(id)time endTime:(id)endTime;
- (void)setStartTime:(id)time endTime:(id)endTime forDay:(unint64_t)day;
- (void)setUsageLimitEnabled:(BOOL)enabled;
- (void)tombstone;
- (void)updateUsageLimitWithAlwaysAllowBundleIdentifiers:(id)identifiers;
@end

@implementation STBlueprint

- (void)tombstone
{
  [(STBlueprint *)self setEnabled:0];
  [(STBlueprint *)self setLimitEnabled:0];
  [(STBlueprint *)self setIsTombstoned:1];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  [(STBlueprint *)self setExpiration:distantPast];
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = STBlueprint;
  [(STUniquedManagedObject *)&v4 awakeFromInsert];
  v3 = [MEMORY[0x1E695DF00] now];
  [(STBlueprint *)self setPrimitiveValue:v3 forKey:@"modificationDate"];
}

+ (id)fetchRequest
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___STBlueprint;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

+ (id)fetchRequestMatchingExpiredBlueprints
{
  fetchRequest = [self fetchRequest];
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = MEMORY[0x1E696AE18];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [currentCalendar startOfDayForDate:v3];
  v7 = [v4 predicateWithFormat:@"(%K < %@) OR ((%K < %@) AND (NOT %K BEGINSWITH %@))", @"expiration", v6, @"expiration", v3, @"identifier", @"one_more_minute"];
  [fetchRequest setPredicate:v7];

  return fetchRequest;
}

+ (id)fetchRequestMatchingOrphanedBlueprints
{
  fetchRequest = [self fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.@count == 0", @"users"];
  [fetchRequest setPredicate:v3];

  return fetchRequest;
}

+ (id)fetchRequestMatchingUnexpiredOneMoreMinuteBlueprintsForUserWithDSID:(id)d
{
  dCopy = d;
  fetchRequest = [self fetchRequest];
  v6 = MEMORY[0x1E696AE18];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [MEMORY[0x1E695DF00] now];
  v9 = [currentCalendar startOfDayForDate:v8];
  v10 = [v6 predicateWithFormat:@"(ANY %K == %@) AND (%K BEGINSWITH %@) AND (%K >= %@)", @"users.dsid", dCopy, @"identifier", @"one_more_minute", @"expiration", v9];

  [fetchRequest setPredicate:v10];

  return fetchRequest;
}

+ (id)_fetchRequestMatchingBlueprintsForUserWithDSID:(id)d
{
  dCopy = d;
  fetchRequest = [self fetchRequest];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K == %@ AND %K == NO", @"users.dsid", dCopy, @"isTombstoned"];

  [fetchRequest setPredicate:v6];

  return fetchRequest;
}

+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)d ofType:(id)type
{
  typeCopy = type;
  dCopy = d;
  fetchRequest = [self fetchRequest];
  v9 = &unk_1F3059AE0;
  if (dCopy)
  {
    v9 = dCopy;
  }

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == NO", v9, @"users.dsid", @"type", typeCopy, @"isTombstoned"];

  [fetchRequest setPredicate:v10];

  return fetchRequest;
}

+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)d fromOrganization:(id)organization
{
  organizationCopy = organization;
  dCopy = d;
  fetchRequest = [self fetchRequest];
  v9 = &unk_1F3059AE0;
  if (dCopy)
  {
    v9 = dCopy;
  }

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == NO", v9, @"users.dsid", @"organization", organizationCopy, @"isTombstoned"];

  [fetchRequest setPredicate:v10];

  return fetchRequest;
}

+ (id)fetchRequestMatchingBlueprintsForUser:(id)user fromOrganization:(id)organization includeTombstones:(BOOL)tombstones
{
  tombstonesCopy = tombstones;
  organizationCopy = organization;
  userCopy = user;
  fetchRequest = [self fetchRequest];
  if (tombstonesCopy)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@", userCopy, @"users", @"organization", organizationCopy, v13];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == NO", userCopy, @"users", @"organization", organizationCopy, @"isTombstoned"];
  }
  v11 = ;

  [fetchRequest setPredicate:v11];

  return fetchRequest;
}

+ (id)fetchRequestForBlueprintsOfType:(id)type
{
  typeCopy = type;
  fetchRequest = [self fetchRequest];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ AND %K == NO", @"type", typeCopy, @"isTombstoned"];

  [fetchRequest setPredicate:v6];

  return fetchRequest;
}

+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)d ofType:(id)type fromOrganization:(id)organization
{
  organizationCopy = organization;
  typeCopy = type;
  dCopy = d;
  fetchRequest = [self fetchRequest];
  v12 = &unk_1F3059AE0;
  if (dCopy)
  {
    v12 = dCopy;
  }

  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == %@ AND %K == NO", v12, @"users.dsid", @"type", typeCopy, @"organization", organizationCopy, @"isTombstoned"];

  [fetchRequest setPredicate:v13];

  return fetchRequest;
}

+ (id)fetchRequestMatchingBlueprintsForUserWithDSID:(id)d ofType:(id)type withIdentifier:(id)identifier fromOrganization:(id)organization
{
  organizationCopy = organization;
  identifierCopy = identifier;
  typeCopy = type;
  dCopy = d;
  fetchRequest = [self fetchRequest];
  v15 = &unk_1F3059AE0;
  if (dCopy)
  {
    v15 = dCopy;
  }

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == %@ AND %K == %@ AND %K == NO", v15, @"users.dsid", @"type", typeCopy, @"identifier", identifierCopy, @"organization", organizationCopy, @"isTombstoned"];

  [fetchRequest setPredicate:v16];

  return fetchRequest;
}

+ (id)fetchRequestMatchingBlueprintsForUser:(id)user ofType:(id)type fromOrganization:(id)organization includeTombstones:(BOOL)tombstones
{
  tombstonesCopy = tombstones;
  organizationCopy = organization;
  typeCopy = type;
  userCopy = user;
  fetchRequest = [self fetchRequest];
  if (tombstonesCopy)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == %@", userCopy, @"users", @"type", typeCopy, @"organization", organizationCopy, v16];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == %@ AND %K == NO", userCopy, @"users", @"type", typeCopy, @"organization", organizationCopy, @"isTombstoned"];
  }
  v14 = ;

  [fetchRequest setPredicate:v14];

  return fetchRequest;
}

+ (id)fetchRequestMatchingBlueprintsForUser:(id)user ofType:(id)type withIdentifier:(id)identifier fromOrganization:(id)organization includeTombstones:(BOOL)tombstones
{
  tombstonesCopy = tombstones;
  organizationCopy = organization;
  identifierCopy = identifier;
  typeCopy = type;
  userCopy = user;
  fetchRequest = [self fetchRequest];
  if (tombstonesCopy)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == %@ AND %K == %@", userCopy, @"users", @"type", typeCopy, @"identifier", identifierCopy, @"organization", organizationCopy, v19];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K AND %K == %@ AND %K == %@ AND %K == %@ AND %K == NO", userCopy, @"users", @"type", typeCopy, @"identifier", identifierCopy, @"organization", organizationCopy, @"isTombstoned"];
  }
  v17 = ;

  [fetchRequest setPredicate:v17];

  return fetchRequest;
}

+ (id)fetchResultsRequestsForChangesToBlueprints
{
  v14[5] = *MEMORY[0x1E69E9840];
  fetchRequest = [self fetchRequest];
  v2 = [STFetchResultsRequest requestWithFetchRequest:fetchRequest];
  v14[0] = v2;
  v3 = +[STBlueprintSchedule fetchRequest];
  v4 = [STFetchResultsRequest requestWithFetchRequest:v3];
  v14[1] = v4;
  v5 = +[STBlueprintUsageLimit fetchRequest];
  v6 = [STFetchResultsRequest requestWithFetchRequest:v5];
  v14[2] = v6;
  v7 = +[STBlueprintConfiguration fetchRequest];
  v8 = [STFetchResultsRequest requestWithFetchRequest:v7];
  v14[3] = v8;
  v9 = +[STCoreOrganizationSettings fetchRequest];
  v10 = [STFetchResultsRequest requestWithFetchRequest:v9];
  v14[4] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:5];

  return v11;
}

+ (id)fetchResultsRequestsForChangesToBlueprintsForUserWithDSID:(id)d
{
  v22[6] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AE18];
  if (d)
  {
    dCopy = d;
  }

  else
  {
    dCopy = &unk_1F3059AE0;
  }

  dCopy2 = d;
  v7 = [v4 predicateWithFormat:@"%@ IN %K", dCopy, @"blueprint.users.dsid"];
  v21 = +[STBlueprintSchedule fetchRequest];
  [v21 setPredicate:v7];
  v20 = +[STBlueprintUsageLimit fetchRequest];
  [v20 setPredicate:v7];
  v8 = +[STBlueprintConfiguration fetchRequest];
  [v8 setPredicate:v7];
  v19 = +[STCoreOrganizationSettings fetchRequest];
  v18 = +[STCoreDowntimeOverride fetchRequest];
  v9 = [self _fetchRequestMatchingBlueprintsForUserWithDSID:dCopy2];

  v10 = [STFetchResultsRequest requestWithFetchRequest:v9];
  v22[0] = v10;
  v11 = [STFetchResultsRequest requestWithFetchRequest:v21];
  v22[1] = v11;
  v12 = [STFetchResultsRequest requestWithFetchRequest:v20];
  v22[2] = v12;
  v13 = [STFetchResultsRequest requestWithFetchRequest:v8];
  v22[3] = v13;
  v14 = [STFetchResultsRequest requestWithFetchRequest:v19];
  v22[4] = v14;
  v15 = [STFetchResultsRequest requestWithFetchRequest:v18];
  v22[5] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:6];

  return v17;
}

+ (id)createBlueprintWithType:(id)type user:(id)user
{
  userCopy = user;
  typeCopy = type;
  managedObjectContext = [userCopy managedObjectContext];
  v9 = [[STBlueprint alloc] initWithContext:managedObjectContext];
  v10 = objc_opt_new();
  [(STBlueprint *)v9 setCreationDate:v10];

  [(STBlueprint *)v9 setType:typeCopy];
  v11 = [self blueprintIdentifierForUser:userCopy];
  [(STBlueprint *)v9 setIdentifier:v11];

  v12 = MEMORY[0x1E695DFD8];
  objectID = [userCopy objectID];
  v14 = [managedObjectContext objectWithID:objectID];
  v15 = [v12 setWithObject:v14];
  [(STBlueprint *)v9 setUsers:v15];

  managingOrganization = [userCopy managingOrganization];

  [(STBlueprint *)v9 setOrganization:managingOrganization];

  return v9;
}

+ (id)blueprintIdentifierForUser:(id)user
{
  userCopy = user;
  organizationIdentifier = [userCopy organizationIdentifier];
  if ([organizationIdentifier isEqualToString:@"family"])
  {
    v5 = MEMORY[0x1E696AEC0];
    dsid = [userCopy dsid];
    v7 = [v5 stringWithFormat:@"%@.%@", @"digital_health_restrictions", dsid];
  }

  else
  {
    v7 = @"digital_health_restrictions";
  }

  return v7;
}

- (id)declarationsWithError:(id *)error
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = objc_opt_new();
  timeZone = [currentCalendar timeZone];
  [v5 setTimeZone:timeZone];

  type = [(STBlueprint *)self type];
  if ([type isEqualToString:@"downtime"])
  {
    v8 = [STBlueprint _predicateForDowntimeBlueprint:self withDateFormatter:v5 calendar:currentCalendar];
  }

  else if ([type isEqualToString:@"usage-limit"])
  {
    v8 = [STBlueprint _predicateForUsageLimitBlueprint:self withDateFormatter:v5 calendar:currentCalendar];
  }

  else if ([type isEqualToString:@"usage-limit-override"])
  {
    v8 = [STBlueprint _predicateForUsageLimitOverrideBlueprint:self withDateFormatter:v5 calendar:currentCalendar];
  }

  else if ([type isEqualToString:@"always-allowed-apps"])
  {
    v8 = [STBlueprint _predicateForAlwaysAllowedAppsBlueprint:self withDateFormatter:v5 calendar:currentCalendar];
  }

  else if ([type isEqualToString:@"restrictions"])
  {
    v8 = [STBlueprint _predicateForRestrictionsBlueprint:self withDateFormatter:v5 calendar:currentCalendar];
  }

  else
  {
    if (![type isEqualToString:@"managed-user"])
    {
      v9 = +[STLog blueprint];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [STBlueprint declarationsWithError:];
      }

      goto LABEL_18;
    }

    v8 = [STBlueprint _predicateForManagedUserBlueprint:self withDateFormatter:v5 calendar:currentCalendar];
  }

  v9 = v8;
  if (v8)
  {
    v15 = 0;
    v10 = [STBlueprint _buildConfigurationsByDeclarationIdentifierFromBlueprint:self error:&v15];
    v11 = v15;
    if (v10)
    {
      identifier = [(STBlueprint *)self identifier];
      v13 = [STBlueprint _buildDeclarationsFromConfigurationsByDeclarationIdentifier:v10 predicate:v9 identifier:identifier];
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_21;
  }

  v9 = +[STLog blueprint];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [STBlueprint declarationsWithError:?];
  }

LABEL_18:
  v11 = 0;
  v13 = 0;
LABEL_21:

  return v13;
}

+ (id)_predicateForDowntimeBlueprint:(id)blueprint withDateFormatter:(id)formatter calendar:(id)calendar
{
  v29 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  formatterCopy = formatter;
  calendarCopy = calendar;
  type = [blueprintCopy type];
  v12 = [type isEqualToString:@"downtime"];

  if (v12)
  {
    v13 = objc_opt_new();
    v14 = objc_opt_new();
    [self _addCommonPredicatesForBlueprint:blueprintCopy toAllPredicates:v13 usingDateFormatter:formatterCopy calendar:calendarCopy];
    activeOverride = [blueprintCopy activeOverride];
    if (!activeOverride)
    {
LABEL_18:
      v24 = [MEMORY[0x1E6996258] buildWithPredicates:v13];
      if ([v14 count])
      {
        if ([v13 count])
        {
          [v14 addObject:v24];
        }

        v25 = [MEMORY[0x1E6996260] buildWithPredicates:v14];
      }

      else
      {
        v25 = v24;
      }

      v20 = v25;

      goto LABEL_24;
    }

    configurations = [blueprintCopy configurations];
    anyObject = [configurations anyObject];

    v18 = [STBlueprint _cemPredicateWithDowntimeOverride:activeOverride shouldUseGracePeriod:[STBlueprint shouldUseGracePeriodForDowntimeOverride:activeOverride configuration:anyObject] dateFormater:formatterCopy calendar:calendarCopy];
    if (v18)
    {
      state = [activeOverride state];
      if (state)
      {
        if (state == 1)
        {
          [v14 addObject:v18];
        }

        goto LABEL_17;
      }

      schedule = [blueprintCopy schedule];
      enabled = [schedule enabled];

      if (enabled)
      {
        [MEMORY[0x1E6996298] buildWithPredicate:v18];
      }

      else
      {
        [MEMORY[0x1E6996290] build];
      }
      v21 = ;
      [v13 addObject:v21];
    }

    else
    {
      v21 = +[STLog blueprint];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138543362;
        v28 = activeOverride;
        _os_log_impl(&dword_1B831F000, v21, OS_LOG_TYPE_DEFAULT, "Did not create CEM predicate for downtime override: %{public}@", &v27, 0xCu);
      }
    }

LABEL_17:
    goto LABEL_18;
  }

  v13 = +[STLog blueprint];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [STBlueprint _predicateForDowntimeBlueprint:blueprintCopy withDateFormatter:? calendar:?];
  }

  v20 = 0;
LABEL_24:

  return v20;
}

+ (id)_predicateForUsageLimitBlueprint:(id)blueprint withDateFormatter:(id)formatter calendar:(id)calendar
{
  v111 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  formatterCopy = formatter;
  calendarCopy = calendar;
  type = [blueprintCopy type];
  v12 = [type isEqualToString:@"usage-limit"];

  if (v12)
  {
    v13 = [self _buildPredicateForDisablingBlueprint:blueprintCopy];
    v14 = v13;
    if (v13)
    {
      v14 = v13;
      v15 = v14;
    }

    else
    {
      if ([blueprintCopy limitEnabled])
      {
        build = objc_opt_new();
        [self _addCommonPredicatesForBlueprint:blueprintCopy toAllPredicates:build usingDateFormatter:formatterCopy calendar:calendarCopy];
        if (_os_feature_enabled_impl())
        {
          v99 = 0;
          v17 = [blueprintCopy alwaysAllowBundleIdentifiersWithError:&v99];
          v18 = v99;
          if (!v17)
          {
            v19 = +[STLog blueprint];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              +[STBlueprint _predicateForUsageLimitBlueprint:withDateFormatter:calendar:];
            }

            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
          v18 = 0;
        }

        usageLimit = [blueprintCopy usageLimit];
        v24 = usageLimit;
        if (usageLimit)
        {
          v81 = v18;
          v82 = build;
          v83 = formatterCopy;
          v87 = calendarCopy;
          v84 = blueprintCopy;
          budgetLimitScheduleRepresentation = [usageLimit budgetLimitScheduleRepresentation];
          applicationIdentifiers = [v24 applicationIdentifiers];
          categoryIdentifiers = [v24 categoryIdentifiers];
          categoryIdentifiersVersion2 = [v24 categoryIdentifiersVersion2];
          v86 = v24;
          websiteIdentifiers = [v24 websiteIdentifiers];
          v85 = v17;
          v79 = applicationIdentifiers;
          v80 = budgetLimitScheduleRepresentation;
          v77 = categoryIdentifiersVersion2;
          v78 = categoryIdentifiers;
          v76 = websiteIdentifiers;
          if ([applicationIdentifiers count] || objc_msgSend(categoryIdentifiers, "count") || objc_msgSend(categoryIdentifiersVersion2, "count") || objc_msgSend(websiteIdentifiers, "count"))
          {
            v74 = [MEMORY[0x1E6996280] buildWithApps:applicationIdentifiers withWebSites:websiteIdentifiers withCategories:categoryIdentifiers withCategoriesVersion2:categoryIdentifiersVersion2 withExemptApps:v17];
            v30 = objc_alloc(MEMORY[0x1E695DF70]);
            customScheduleItems = [budgetLimitScheduleRepresentation customScheduleItems];
            v32 = [v30 initWithCapacity:{objc_msgSend(customScheduleItems, "count")}];

            v97 = 0u;
            v98 = 0u;
            v95 = 0u;
            v96 = 0u;
            obj = [budgetLimitScheduleRepresentation customScheduleItems];
            v33 = [obj countByEnumeratingWithState:&v95 objects:v107 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v96;
              do
              {
                for (i = 0; i != v34; ++i)
                {
                  if (*v96 != v35)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v37 = *(*(&v95 + 1) + 8 * i);
                  v38 = MEMORY[0x1E6996288];
                  v39 = MEMORY[0x1E696AD98];
                  [v37 budgetLimit];
                  v40 = [v39 numberWithDouble:?];
                  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v37, "day")}];
                  v106 = v41;
                  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
                  v43 = [v38 buildWithSeconds:v40 withDays:v42];

                  [v32 addObject:v43];
                }

                v34 = [obj countByEnumeratingWithState:&v95 objects:v107 count:16];
              }

              while (v34);
            }

            v44 = MEMORY[0x1E6996278];
            calendarIdentifier = [v87 calendarIdentifier];
            v46 = MEMORY[0x1E696AD98];
            notificationTimeInterval = [v86 notificationTimeInterval];
            usageItemType = [v46 numberWithInteger:{objc_msgSend(notificationTimeInterval, "integerValue")}];
            v105 = usageItemType;
            v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
            v50 = v74;
            v51 = [v44 buildWithCalendarIdentifier:calendarIdentifier withMonitors:v74 withNotificationTimes:v49 withTimeBudget:v32];
          }

          else
          {
            v54 = *MEMORY[0x1E69961D0];
            v103[0] = @"app";
            v103[1] = @"webdomain";
            v55 = *MEMORY[0x1E69961E0];
            v104[0] = v54;
            v104[1] = v55;
            v103[2] = @"category";
            v104[2] = *MEMORY[0x1E69961D8];
            v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:3];
            v56 = objc_alloc(MEMORY[0x1E695DF70]);
            customScheduleItems2 = [budgetLimitScheduleRepresentation customScheduleItems];
            v58 = [v56 initWithCapacity:{objc_msgSend(customScheduleItems2, "count")}];

            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            obja = [budgetLimitScheduleRepresentation customScheduleItems];
            v59 = [obja countByEnumeratingWithState:&v91 objects:v102 count:16];
            if (v59)
            {
              v60 = v59;
              v61 = *v92;
              do
              {
                for (j = 0; j != v60; ++j)
                {
                  if (*v92 != v61)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v63 = *(*(&v91 + 1) + 8 * j);
                  v64 = MEMORY[0x1E6996270];
                  v65 = MEMORY[0x1E696AD98];
                  [v63 budgetLimit];
                  v66 = [v65 numberWithDouble:?];
                  v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v63, "day")}];
                  v101 = v67;
                  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
                  v69 = [v64 buildWithSeconds:v66 withDays:v68];

                  [v58 addObject:v69];
                }

                v60 = [obja countByEnumeratingWithState:&v91 objects:v102 count:16];
              }

              while (v60);
            }

            calendarIdentifier = [v86 itemIdentifiers];
            objb = MEMORY[0x1E6996268];
            notificationTimeInterval = [v87 calendarIdentifier];
            usageItemType = [v86 usageItemType];
            v50 = v75;
            v49 = [v75 objectForKeyedSubscript:usageItemType];
            v70 = MEMORY[0x1E696AD98];
            notificationTimeInterval2 = [v86 notificationTimeInterval];
            v71 = [v70 numberWithInteger:{objc_msgSend(notificationTimeInterval2, "integerValue")}];
            v100 = v71;
            v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
            v32 = v58;
            v51 = [objb buildWithCalendarIdentifier:notificationTimeInterval withMonitor:v49 withIdentifiers:calendarIdentifier withIdentifiersVersion2:calendarIdentifier withExemptApps:v85 withNotificationTimes:v72 withTimeBudget:v58];
          }

          blueprintCopy = v84;
          build = v82;
          v14 = 0;
          if ([v84 invertUsageLimit])
          {
            v52 = [MEMORY[0x1E6996298] buildWithPredicate:v51];
            [v82 addObject:v52];
          }

          else
          {
            [v82 addObject:v51];
          }

          formatterCopy = v83;
          v24 = v86;
          calendarCopy = v87;
          v18 = v81;
          v17 = v85;
        }

        v15 = [MEMORY[0x1E6996258] buildWithPredicates:build];
      }

      else
      {
        v20 = +[STLog blueprint];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [blueprintCopy identifier];
          *buf = 138543362;
          v110 = identifier;
          _os_log_impl(&dword_1B831F000, v20, OS_LOG_TYPE_DEFAULT, "Usage limit is disabled: %{public}@)", buf, 0xCu);
        }

        v22 = MEMORY[0x1E6996258];
        build = [MEMORY[0x1E6996290] build];
        v108 = build;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
        v15 = [v22 buildWithPredicates:v18];
      }
    }
  }

  else
  {
    v14 = +[STLog blueprint];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [STBlueprint _predicateForUsageLimitBlueprint:blueprintCopy withDateFormatter:? calendar:?];
    }

    v15 = 0;
  }

  return v15;
}

+ (id)_predicateForUsageLimitOverrideBlueprint:(id)blueprint withDateFormatter:(id)formatter calendar:(id)calendar
{
  blueprintCopy = blueprint;
  formatterCopy = formatter;
  calendarCopy = calendar;
  type = [blueprintCopy type];
  v12 = [type isEqualToString:@"usage-limit-override"];

  if (v12)
  {
    v13 = [self _buildPredicateForUnspecializedBlueprint:blueprintCopy usingDateFormatter:formatterCopy calendar:calendarCopy];
  }

  else
  {
    v14 = +[STLog blueprint];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [STBlueprint _predicateForUsageLimitOverrideBlueprint:blueprintCopy withDateFormatter:? calendar:?];
    }

    v13 = 0;
  }

  return v13;
}

+ (id)_predicateForAlwaysAllowedAppsBlueprint:(id)blueprint withDateFormatter:(id)formatter calendar:(id)calendar
{
  blueprintCopy = blueprint;
  formatterCopy = formatter;
  calendarCopy = calendar;
  type = [blueprintCopy type];
  v12 = [type isEqualToString:@"always-allowed-apps"];

  if (v12)
  {
    v13 = [self _buildPredicateForUnspecializedBlueprint:blueprintCopy usingDateFormatter:formatterCopy calendar:calendarCopy];
  }

  else
  {
    v14 = +[STLog blueprint];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [STBlueprint _predicateForAlwaysAllowedAppsBlueprint:blueprintCopy withDateFormatter:? calendar:?];
    }

    v13 = 0;
  }

  return v13;
}

+ (id)_predicateForRestrictionsBlueprint:(id)blueprint withDateFormatter:(id)formatter calendar:(id)calendar
{
  blueprintCopy = blueprint;
  formatterCopy = formatter;
  calendarCopy = calendar;
  type = [blueprintCopy type];
  v12 = [type isEqualToString:@"restrictions"];

  if (v12)
  {
    v13 = [self _buildPredicateForUnspecializedBlueprint:blueprintCopy usingDateFormatter:formatterCopy calendar:calendarCopy];
  }

  else
  {
    v14 = +[STLog blueprint];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [STBlueprint _predicateForRestrictionsBlueprint:blueprintCopy withDateFormatter:? calendar:?];
    }

    v13 = 0;
  }

  return v13;
}

+ (id)_predicateForManagedUserBlueprint:(id)blueprint withDateFormatter:(id)formatter calendar:(id)calendar
{
  blueprintCopy = blueprint;
  formatterCopy = formatter;
  calendarCopy = calendar;
  type = [blueprintCopy type];
  v12 = [type isEqualToString:@"managed-user"];

  if (v12)
  {
    v13 = [self _buildPredicateForUnspecializedBlueprint:blueprintCopy usingDateFormatter:formatterCopy calendar:calendarCopy];
  }

  else
  {
    v14 = +[STLog blueprint];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [STBlueprint _predicateForManagedUserBlueprint:blueprintCopy withDateFormatter:? calendar:?];
    }

    v13 = 0;
  }

  return v13;
}

+ (id)_buildPredicateForDisablingBlueprint:(id)blueprint
{
  v14 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  if ([blueprintCopy enabled])
  {
    v4 = 0;
  }

  else
  {
    v5 = +[STLog blueprint];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [blueprintCopy identifier];
      *buf = 138543362;
      v13 = identifier;
      _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Blueprint is disabled: %{public}@)", buf, 0xCu);
    }

    v7 = MEMORY[0x1E6996258];
    build = [MEMORY[0x1E6996290] build];
    v11 = build;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    v4 = [v7 buildWithPredicates:v9];
  }

  return v4;
}

+ (void)_addExpirationPredicateForBlueprint:(id)blueprint toAllPredicates:(id)predicates usingDateFormatter:(id)formatter
{
  blueprintCopy = blueprint;
  predicatesCopy = predicates;
  formatterCopy = formatter;
  expiration = [blueprintCopy expiration];

  if (expiration)
  {
    [formatterCopy setFormatOptions:1907];
    v10 = MEMORY[0x1E69962A0];
    expiration2 = [blueprintCopy expiration];
    v12 = [formatterCopy stringFromDate:expiration2];
    v13 = [v10 buildRequiredOnlyWithDateTime:v12];

    [predicatesCopy addObject:v13];
  }
}

+ (void)_addMinimumInstallationDatePredicateForBlueprint:(id)blueprint toAllPredicates:(id)predicates usingDateFormatter:(id)formatter
{
  predicatesCopy = predicates;
  formatterCopy = formatter;
  minimumInstallationDate = [blueprint minimumInstallationDate];
  if (minimumInstallationDate)
  {
    [formatterCopy setFormatOptions:1907];
    v9 = MEMORY[0x1E69962A0];
    v10 = [formatterCopy stringFromDate:minimumInstallationDate];
    v11 = [v9 buildRequiredOnlyWithDateTime:v10];

    v12 = [MEMORY[0x1E6996298] buildWithPredicate:v11];
    [predicatesCopy addObject:v12];
  }
}

+ (void)_addUserPredicateForBlueprint:(id)blueprint toAllPredicates:(id)predicates
{
  v29 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  predicatesCopy = predicates;
  users = [blueprintCopy users];
  v8 = [users count];

  if (v8 > 1 || v8 == 1 && ([blueprintCopy users], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "anyObject"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "localSettings"), v22 = objc_claimAutoreleasedReturnValue(), v22, v21, v20, !v22))
  {
    v23 = predicatesCopy;
    v9 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    users2 = [blueprintCopy users];
    v11 = [users2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(users2);
          }

          v15 = MEMORY[0x1E69962B0];
          dsid = [*(*(&v24 + 1) + 8 * i) dsid];
          stringValue = [dsid stringValue];
          v18 = [v15 buildWithDSID:stringValue];
          [v9 addObject:v18];
        }

        v12 = [users2 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    v19 = [MEMORY[0x1E6996260] buildWithPredicates:v9];
    predicatesCopy = v23;
    [v23 addObject:v19];
  }
}

+ (void)_addSchedulePredicatesForBlueprintScheudle:(id)scheudle toAllPredicates:(id)predicates usingDateFormatter:(id)formatter calendar:(id)calendar
{
  v79 = *MEMORY[0x1E69E9840];
  scheudleCopy = scheudle;
  predicatesCopy = predicates;
  formatterCopy = formatter;
  calendarCopy = calendar;
  v62 = scheudleCopy;
  if ([scheudleCopy enabled])
  {
    v54 = predicatesCopy;
    scheduleRepresentation = [scheudleCopy scheduleRepresentation];
    [formatterCopy setFormatOptions:544];
    v68 = [calendarCopy maximumRangeOfUnit:512];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [calendarCopy startOfDayForDate:v16];

    v52 = v17;
    v56 = [formatterCopy stringFromDate:v17];
    v63 = objc_opt_new();
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v53 = scheduleRepresentation;
    obj = [scheduleRepresentation customScheduleItems];
    v67 = [obj countByEnumeratingWithState:&v70 objects:v76 count:16];
    if (!v67)
    {
      goto LABEL_19;
    }

    v55 = v15 - 1;
    v66 = *v71;
    v60 = calendarCopy;
    v61 = formatterCopy;
    while (1)
    {
      for (i = 0; i != v67; ++i)
      {
        if (*v71 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v70 + 1) + 8 * i);
        v20 = [v19 day];
        v21 = v20 + v68;
        startTime = [v19 startTime];
        v23 = [calendarCopy dateFromComponents:startTime];

        endTime = [v19 endTime];
        v25 = [calendarCopy dateFromComponents:endTime];

        v69 = [formatterCopy stringFromDate:v23];
        v26 = [formatterCopy stringFromDate:v25];
        v27 = [v23 compare:v25];
        if (v27 == 1)
        {
          v59 = v23;
          v65 = v26;
          if (v20 == v55)
          {
            v36 = v68;
          }

          else
          {
            v36 = v21 + 1;
          }

          v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v36];
          v37 = MEMORY[0x1E69962A8];
          calendarIdentifier = [calendarCopy calendarIdentifier];
          v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
          v40 = MEMORY[0x1E696AD98];
          notificationTimeInterval = [v62 notificationTimeInterval];
          v42 = [v40 numberWithInteger:{objc_msgSend(notificationTimeInterval, "integerValue")}];
          v74 = v42;
          v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
          v44 = [v37 buildWithCalendarIdentifier:calendarIdentifier withStartDay:v39 withStartTime:v69 withEndDay:v35 withEndTime:v56 withNotificationTimes:v43];

          v26 = v65;
          calendarCopy = v60;
          [v63 addObject:v44];
          if (([v65 isEqualToString:v56] & 1) == 0)
          {
            v45 = MEMORY[0x1E69962A8];
            calendarIdentifier2 = [v60 calendarIdentifier];
            v47 = [v45 buildWithCalendarIdentifier:calendarIdentifier2 withStartDay:v35 withStartTime:v56 withEndDay:v35 withEndTime:v65 withNotificationTimes:MEMORY[0x1E695E0F0]];

            [v63 addObject:v47];
            v26 = v65;
          }

          v23 = v59;
        }

        else
        {
          if (v27 != -1)
          {
            goto LABEL_17;
          }

          v64 = MEMORY[0x1E69962A8];
          calendarIdentifier3 = [calendarCopy calendarIdentifier];
          v28 = v26;
          v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
          v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
          v31 = MEMORY[0x1E696AD98];
          notificationTimeInterval2 = [v62 notificationTimeInterval];
          v33 = [v31 numberWithInteger:{objc_msgSend(notificationTimeInterval2, "integerValue")}];
          v75 = v33;
          v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
          v35 = [v64 buildWithCalendarIdentifier:calendarIdentifier3 withStartDay:v29 withStartTime:v69 withEndDay:v30 withEndTime:v28 withNotificationTimes:v34];

          v26 = v28;
          calendarCopy = v60;

          [v63 addObject:v35];
        }

        formatterCopy = v61;
LABEL_17:
      }

      v67 = [obj countByEnumeratingWithState:&v70 objects:v76 count:16];
      if (!v67)
      {
LABEL_19:

        v48 = [MEMORY[0x1E6996260] buildWithPredicates:v63];
        predicatesCopy = v54;
        [v54 addObject:v48];

        v49 = v53;
        goto LABEL_22;
      }
    }
  }

  v49 = +[STLog blueprint];
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    blueprint = [v62 blueprint];
    identifier = [blueprint identifier];
    *buf = 138543362;
    v78 = identifier;
    _os_log_impl(&dword_1B831F000, v49, OS_LOG_TYPE_DEFAULT, "Schedule is not enabled for blueprint: %{public}@", buf, 0xCu);
  }

LABEL_22:
}

+ (void)_addCommonPredicatesForBlueprint:(id)blueprint toAllPredicates:(id)predicates usingDateFormatter:(id)formatter calendar:(id)calendar
{
  blueprintCopy = blueprint;
  predicatesCopy = predicates;
  formatterCopy = formatter;
  calendarCopy = calendar;
  [self _addExpirationPredicateForBlueprint:blueprintCopy toAllPredicates:predicatesCopy usingDateFormatter:formatterCopy];
  [self _addMinimumInstallationDatePredicateForBlueprint:blueprintCopy toAllPredicates:predicatesCopy usingDateFormatter:formatterCopy];
  [self _addUserPredicateForBlueprint:blueprintCopy toAllPredicates:predicatesCopy];
  schedule = [blueprintCopy schedule];

  if (schedule)
  {
    schedule2 = [blueprintCopy schedule];
    [self _addSchedulePredicatesForBlueprintScheudle:schedule2 toAllPredicates:predicatesCopy usingDateFormatter:formatterCopy calendar:calendarCopy];
  }
}

+ (id)_buildPredicateForUnspecializedBlueprint:(id)blueprint usingDateFormatter:(id)formatter calendar:(id)calendar
{
  blueprintCopy = blueprint;
  formatterCopy = formatter;
  calendarCopy = calendar;
  v11 = [self _buildPredicateForDisablingBlueprint:blueprintCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = objc_opt_new();
    [self _addCommonPredicatesForBlueprint:blueprintCopy toAllPredicates:v14 usingDateFormatter:formatterCopy calendar:calendarCopy];
    v13 = [MEMORY[0x1E6996258] buildWithPredicates:v14];
  }

  return v13;
}

+ (id)_buildConfigurationsByDeclarationIdentifierFromBlueprint:(id)blueprint error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  v5 = MEMORY[0x1E695DF90];
  configurations = [blueprintCopy configurations];
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(configurations, "count")}];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  configurations2 = [blueprintCopy configurations];
  v9 = [configurations2 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = *v37;
  v32 = blueprintCopy;
  v34 = v7;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v37 != v11)
      {
        objc_enumerationMutation(configurations2);
      }

      v13 = *(*(&v36 + 1) + 8 * i);
      payloadPlist = [v13 payloadPlist];

      if (!payloadPlist)
      {
        v27 = +[STLog persistence];
        blueprintCopy = v32;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          +[STBlueprint _buildConfigurationsByDeclarationIdentifierFromBlueprint:error:];
        }

        if (error)
        {
          v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:14 userInfo:0];

          v7 = v34;
          if (v28)
          {
            [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:14 userInfo:0];
            *error = v26 = 0;
          }

          else
          {
            v26 = 0;
          }

          goto LABEL_33;
        }

        v26 = 0;
LABEL_32:
        v7 = v34;
        goto LABEL_33;
      }

      v15 = MEMORY[0x1E6996208];
      payloadPlist2 = [v13 payloadPlist];
      v35 = 0;
      v17 = [v15 declarationForData:payloadPlist2 error:&v35];
      v18 = v35;

      if (!v17)
      {
        v29 = +[STLog persistence];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          +[STBlueprint _buildConfigurationsByDeclarationIdentifierFromBlueprint:error:];
        }

        if (error)
        {
          v30 = v18;
          *error = v18;
        }

        v26 = 0;
        blueprintCopy = v32;
        goto LABEL_32;
      }

      v19 = [STBlueprintConfiguration blueprintConfigurationTypeForDeclaration:v17];
      if (([v19 isEqualToString:@"system.webcontentfilter.basic"] & 1) == 0)
      {
        declarationIdentifier = [v17 declarationIdentifier];
        [v34 setObject:v17 forKeyedSubscript:declarationIdentifier];
      }
    }

    v10 = [configurations2 countByEnumeratingWithState:&v36 objects:v40 count:16];
    blueprintCopy = v32;
    v7 = v34;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_12:

  if (_buildConfigurationsByDeclarationIdentifierFromBlueprint_error__onceToken != -1)
  {
    +[STBlueprint _buildConfigurationsByDeclarationIdentifierFromBlueprint:error:];
  }

  v21 = [STBlueprint appExceptionsDeclarationForBlueprint:blueprintCopy usingCache:_buildConfigurationsByDeclarationIdentifierFromBlueprint_error__exceptionsDeclarationCache];
  configurations2 = v21;
  if (v21)
  {
    declarationIdentifier2 = [v21 declarationIdentifier];
    v23 = [v7 objectForKeyedSubscript:declarationIdentifier2];

    if (v23)
    {
      v24 = +[STLog appExceptions];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [STBlueprint _buildConfigurationsByDeclarationIdentifierFromBlueprint:v23 error:?];
      }
    }

    declarationIdentifier3 = [configurations2 declarationIdentifier];
    [v7 setObject:configurations2 forKeyedSubscript:declarationIdentifier3];
  }

  v26 = [v7 copy];
LABEL_33:

  return v26;
}

void __78__STBlueprint__buildConfigurationsByDeclarationIdentifierFromBlueprint_error___block_invoke()
{
  v0 = +[STLog appExceptions];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __78__STBlueprint__buildConfigurationsByDeclarationIdentifierFromBlueprint_error___block_invoke_cold_1();
  }

  v1 = objc_opt_new();
  v2 = _buildConfigurationsByDeclarationIdentifierFromBlueprint_error__exceptionsDeclarationCache;
  _buildConfigurationsByDeclarationIdentifierFromBlueprint_error__exceptionsDeclarationCache = v1;
}

+ (id)appExceptionsDeclarationForBlueprint:(id)blueprint usingCache:(id)cache
{
  *(&v64[1] + 4) = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  cacheCopy = cache;
  type = [blueprintCopy type];
  v8 = [type isEqualToString:@"restrictions"];

  v9 = +[STLog appExceptions];
  anyObject = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [blueprintCopy identifier];
      *buf = 138412290;
      v64[0] = identifier;
      _os_log_impl(&dword_1B831F000, anyObject, OS_LOG_TYPE_DEFAULT, "Processing app exceptions for restriction blueprint %@", buf, 0xCu);
    }

    users = [blueprintCopy users];
    anyObject = [users anyObject];

    if (anyObject && ([anyObject dsid], (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, v15 = [anyObject isManaged], v14, (v15 & 1) != 0))
    {
      v53 = blueprintCopy;
      v54 = cacheCopy;
      v16 = objc_opt_new();
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v52 = anyObject;
      appExceptions = [anyObject appExceptions];
      v18 = [appExceptions countByEnumeratingWithState:&v56 objects:v62 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v57;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v57 != v20)
            {
              objc_enumerationMutation(appExceptions);
            }

            v22 = *(*(&v56 + 1) + 8 * i);
            bundleIdentifier = [v22 bundleIdentifier];
            v24 = [v16 containsObject:bundleIdentifier];

            if (v24)
            {
              v25 = +[STLog appExceptions];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                [(STBlueprint *)buf appExceptionsDeclarationForBlueprint:v22 usingCache:v64, v25];
              }
            }

            bundleIdentifier2 = [v22 bundleIdentifier];
            [v16 addObject:bundleIdentifier2];
          }

          v19 = [appExceptions countByEnumeratingWithState:&v56 objects:v62 count:16];
        }

        while (v19);
      }

      v27 = +[STLog appExceptions];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSObject count](v16, "count")}];
        *v60 = 138412290;
        v61 = v28;
        _os_log_impl(&dword_1B831F000, v27, OS_LOG_TYPE_DEFAULT, "Found %@ app exceptions", v60, 0xCu);
      }

      v29 = MEMORY[0x1E696AEC0];
      anyObject = v52;
      dsid = [v52 dsid];
      v31 = [v29 stringWithFormat:@"%@.%@.%@", @"digital_health_restrictions", dsid, @"appExceptions"];

      v32 = v54;
      v33 = [v54 objectForKey:v31];
      if (!v33)
      {
        goto LABEL_26;
      }

      v55 = 0;
      v34 = [MEMORY[0x1E69962C0] declarationForPayload:v33 error:&v55];
      v35 = v55;
      if (v35)
      {
        v36 = +[STLog appExceptions];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          +[STBlueprint appExceptionsDeclarationForBlueprint:usingCache:];
        }

        v32 = v54;
      }

      if (!v34)
      {
LABEL_26:
        v37 = +[STLog appExceptions];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *v60 = 138412290;
          v61 = v16;
          _os_log_impl(&dword_1B831F000, v37, OS_LOG_TYPE_DEFAULT, "No stored CEMSystemAppExceptionsDeclaration. Storing with bundleIDs:%@", v60, 0xCu);
        }

        v38 = MEMORY[0x1E69962C0];
        allObjects = [v16 allObjects];
        v34 = [v38 buildWithIdentifier:v31 appsRatingExemptedBundleIDs:allObjects];

        serialize = [v34 serialize];
        [v32 setObject:serialize forKey:v31];
      }

      v41 = +[STLog appExceptions];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        serialize2 = [v34 serialize];
        *v60 = 138412290;
        v61 = serialize2;
        _os_log_impl(&dword_1B831F000, v41, OS_LOG_TYPE_DEFAULT, "Fetched CEMSystemAppExceptionsDeclaration payload:%@", v60, 0xCu);
      }

      v43 = MEMORY[0x1E695DFD8];
      payloadAppsRatingExemptedBundleIDs = [v34 payloadAppsRatingExemptedBundleIDs];
      v45 = [v43 setWithArray:payloadAppsRatingExemptedBundleIDs];
      v46 = [v16 isEqualToSet:v45];

      serialize3 = +[STLog appExceptions];
      v48 = os_log_type_enabled(serialize3, OS_LOG_TYPE_DEFAULT);
      if (v46)
      {
        cacheCopy = v54;
        if (v48)
        {
          *v60 = 0;
          _os_log_impl(&dword_1B831F000, serialize3, OS_LOG_TYPE_DEFAULT, "Declaration has same bundle IDs. Not updating", v60, 2u);
        }

        blueprintCopy = v53;
      }

      else
      {
        if (v48)
        {
          *v60 = 0;
          _os_log_impl(&dword_1B831F000, serialize3, OS_LOG_TYPE_DEFAULT, "Updating declaration's payloadAppsRatingExemptedBundleIDs and hash", v60, 2u);
        }

        allObjects2 = [v16 allObjects];
        [v34 setPayloadAppsRatingExemptedBundleIDs:allObjects2];

        [v34 updateServerHash];
        serialize3 = [v34 serialize];
        v51 = +[STLog appExceptions];
        blueprintCopy = v53;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *v60 = 138412290;
          v61 = serialize3;
          _os_log_impl(&dword_1B831F000, v51, OS_LOG_TYPE_DEFAULT, "Persisting updated declaration with payload:%@", v60, 0xCu);
        }

        cacheCopy = v54;
        [v54 setObject:serialize3 forKey:v31];
      }
    }

    else
    {
      v16 = +[STLog appExceptions];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint appExceptionsDeclarationForBlueprint:usingCache:];
      }

      v34 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[STBlueprint appExceptionsDeclarationForBlueprint:usingCache:];
    }

    v34 = 0;
  }

  return v34;
}

+ (id)_buildDeclarationsFromConfigurationsByDeclarationIdentifier:(id)identifier predicate:(id)predicate identifier:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  predicateCopy = predicate;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = MEMORY[0x1E69961F0];
  allKeys = [identifierCopy allKeys];
  v13 = [v11 buildWithIdentifier:v9 withStandardConfigurations:allKeys withPredicate:predicateCopy];

  serialize = [v13 serialize];
  [v10 addObject:serialize];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  allValues = [identifierCopy allValues];
  v16 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(allValues);
        }

        serialize2 = [*(*(&v23 + 1) + 8 * i) serialize];
        [v10 addObject:serialize2];
      }

      v17 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  v21 = [v10 copy];

  return v21;
}

+ (BOOL)shouldUseGracePeriodForDowntimeOverride:(id)override configuration:(id)configuration
{
  configurationCopy = configuration;
  if ([override state] == 1)
  {
    if (configurationCopy)
    {
      payloadPlist = [configurationCopy payloadPlist];

      if (payloadPlist)
      {
        v7 = MEMORY[0x1E6996210];
        payloadPlist2 = [configurationCopy payloadPlist];
        v17 = 0;
        v9 = [v7 declarationForData:payloadPlist2 error:&v17];
        v10 = v17;

        if (v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            payloadMode = [v9 payloadMode];
            v12 = [payloadMode isEqualToString:*MEMORY[0x1E69961A8]];

            if (v12)
            {
              v13 = +[STLog blueprint];
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *v16 = 0;
                _os_log_impl(&dword_1B831F000, v13, OS_LOG_TYPE_DEFAULT, "Block at downtime is enabled. Using grace period.", v16, 2u);
              }
            }

            goto LABEL_22;
          }

          v14 = +[STLog blueprint];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            +[STBlueprint shouldUseGracePeriodForDowntimeOverride:configuration:];
          }
        }

        else
        {
          v14 = +[STLog blueprint];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            [STBlueprint shouldUseGracePeriodForDowntimeOverride:v10 configuration:v14];
          }
        }
      }

      else
      {
        v10 = +[STLog blueprint];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          +[STBlueprint shouldUseGracePeriodForDowntimeOverride:configuration:];
        }
      }
    }

    else
    {
      v10 = +[STLog blueprint];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint shouldUseGracePeriodForDowntimeOverride:configuration:];
      }
    }

    LOBYTE(v12) = 0;
LABEL_22:

    goto LABEL_23;
  }

  LOBYTE(v12) = 0;
LABEL_23:

  return v12;
}

+ (id)_cemPredicateWithDowntimeOverride:(id)override shouldUseGracePeriod:(BOOL)period dateFormater:(id)formater calendar:(id)calendar
{
  periodCopy = period;
  v39[1] = *MEMORY[0x1E69E9840];
  overrideCopy = override;
  formaterCopy = formater;
  calendarCopy = calendar;
  if (periodCopy)
  {
    if (os_variant_has_internal_diagnostics())
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v13 = [standardUserDefaults stringForKey:@"OnDemandDowntimeDelay"];

      if (v13)
      {
        v14 = [standardUserDefaults integerForKey:@"OnDemandDowntimeDelay"];
      }

      else
      {
        v14 = 300.0;
      }
    }

    else
    {
      v14 = 300.0;
    }

    [formaterCopy setFormatOptions:544];
    creationDate = [overrideCopy creationDate];
    v21 = STLocalDateFromUTCErasedDate(creationDate, calendarCopy);
    v22 = [v21 dateByAddingTimeInterval:v14];

    endDate = [overrideCopy endDate];
    v24 = STLocalDateFromUTCErasedDate(endDate, calendarCopy);

    if ([v22 compare:v24] == -1)
    {
      v26 = [calendarCopy component:512 fromDate:v22];
      v27 = [calendarCopy component:512 fromDate:v24];
      v37 = [formaterCopy stringFromDate:v22];
      v28 = [formaterCopy stringFromDate:v24];
      v35 = MEMORY[0x1E69962A8];
      v36 = v28;
      calendarIdentifier = [calendarCopy calendarIdentifier];
      v33 = [MEMORY[0x1E696AD98] numberWithInteger:v26];
      v29 = [MEMORY[0x1E696AD98] numberWithInteger:v27];
      v30 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
      v39[0] = v30;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
      v19 = [v35 buildWithCalendarIdentifier:calendarIdentifier withStartDay:v33 withStartTime:v37 withEndDay:v29 withEndTime:v36 withNotificationTimes:v31];
    }

    else
    {
      v25 = +[STLog blueprint];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v25, OS_LOG_TYPE_DEFAULT, "Downtime override duration is less than grace period - not synthesizing CEM predicate", buf, 2u);
      }

      v19 = 0;
    }
  }

  else
  {
    [formaterCopy setFormatOptions:1907];
    endDate2 = [overrideCopy endDate];
    v16 = STLocalDateFromUTCErasedDate(endDate2, calendarCopy);

    v17 = MEMORY[0x1E69962A0];
    v18 = [formaterCopy stringFromDate:v16];
    v19 = [v17 buildWithDateTime:v18];
  }

  return v19;
}

- (void)migrateToVersion2CategoriesIfNeeded
{
  v69 = *MEMORY[0x1E69E9840];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = [(STBlueprint *)self configurations];
  v2 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
  v3 = 0x1E7CE5000uLL;
  if (!v2)
  {
    v53 = 0;
    v5 = 0;
    goto LABEL_27;
  }

  v4 = v2;
  v53 = 0;
  v5 = 0;
  v6 = *v59;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v59 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v58 + 1) + 8 * i);
      payloadPlist = [v8 payloadPlist];

      if (payloadPlist)
      {
        v10 = MEMORY[0x1E6996208];
        payloadPlist2 = [v8 payloadPlist];
        v57 = 0;
        v12 = [v10 declarationForData:payloadPlist2 error:&v57];
        persistence = v57;

        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            blueprint = [*(v3 + 3824) blueprint];
            v15 = os_log_type_enabled(blueprint, OS_LOG_TYPE_DEFAULT);
            if (v5 && v53)
            {
              if (v15)
              {
                [v12 declarationIdentifier];
                v17 = v16 = v5;
                identifier = [v8 identifier];
                *buf = 138543618;
                v63 = v17;
                v64 = 2114;
                v65 = identifier;
                _os_log_impl(&dword_1B831F000, blueprint, OS_LOG_TYPE_DEFAULT, "Ignoring category declaration: %{public}@ from configuration: %{public}@", buf, 0x16u);

                v5 = v16;
                goto LABEL_20;
              }
            }

            else
            {
              v19 = v5;
              if (v15)
              {
                declarationIdentifier = [v12 declarationIdentifier];
                identifier2 = [v8 identifier];
                *buf = 138543618;
                v63 = declarationIdentifier;
                v64 = 2114;
                v65 = identifier2;
                _os_log_impl(&dword_1B831F000, blueprint, OS_LOG_TYPE_DEFAULT, "Using category declaration: %{public}@ from configuration: %{public}@", buf, 0x16u);
              }

              v5 = v8;
              blueprint = v53;
              v53 = v12;
LABEL_20:
              v3 = 0x1E7CE5000;
            }

LABEL_21:
          }

          goto LABEL_23;
        }

        blueprint = [*(v3 + 3824) blueprint];
        if (os_log_type_enabled(blueprint, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v63 = persistence;
          _os_log_fault_impl(&dword_1B831F000, blueprint, OS_LOG_TYPE_FAULT, "Failed to deserialize declaration while migrating to version 2 categories: %{public}@", buf, 0xCu);
        }

        goto LABEL_21;
      }

      persistence = [*(v3 + 3824) persistence];
      if (os_log_type_enabled(persistence, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v63 = v8;
        _os_log_fault_impl(&dword_1B831F000, persistence, OS_LOG_TYPE_FAULT, "blueprint is missing a config: %{public}@", buf, 0xCu);
      }

LABEL_23:
    }

    v4 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
  }

  while (v4);
LABEL_27:

  payloadCategoriesVersion2 = [v53 payloadCategoriesVersion2];
  v23 = payloadCategoriesVersion2;
  if (payloadCategoriesVersion2)
  {
    payloadCategoriesVersion2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:payloadCategoriesVersion2];
    v24 = payloadCategoriesVersion2;
  }

  else
  {
    v24 = 0;
  }

  obja = v5;
  if (v53)
  {
    v25 = MEMORY[0x1E695DFD8];
    v26 = STAvailableVersion1CategoriesExcludingSystemCategories(payloadCategoriesVersion2);
    v27 = [v25 setWithArray:v26];

    v29 = STAvailableCategoriesExcludingSystemCategories(v28);
    payloadCategories = [v53 payloadCategories];
    v31 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:payloadCategories];
    if ([v31 isEqualToSet:v27])
    {
      v32 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:v29];
      goto LABEL_48;
    }

    if (payloadCategories)
    {
      v32 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:payloadCategories];
      v33 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v29];
      if (([v24 isEqualToSet:v33] & 1) == 0)
      {
        v52 = v33;
        v34 = *MEMORY[0x1E6993B60];
        if ([v24 containsObject:*MEMORY[0x1E6993B60]])
        {
          [v32 addObject:v34];
          v35 = 1;
        }

        else
        {
          v35 = 0;
        }

        v36 = *MEMORY[0x1E6993B18];
        if ([v24 containsObject:*MEMORY[0x1E6993B18]])
        {
          ++v35;
          [v32 addObject:v36];
        }

        v37 = *MEMORY[0x1E6993B58];
        if ([v24 containsObject:*MEMORY[0x1E6993B58]])
        {
          ++v35;
          [v32 addObject:v37];
          v33 = v52;
LABEL_45:
          if ([v23 count] == v35)
          {
            [v32 removeObject:*MEMORY[0x1E6993B00]];
          }
        }

        else
        {
          v33 = v52;
          if (v35)
          {
            goto LABEL_45;
          }
        }
      }
    }

    else
    {
      v32 = 0;
    }

LABEL_48:
  }

  else
  {
    v32 = 0;
  }

  v38 = +[STLog blueprint];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    payloadCategories2 = [v53 payloadCategories];
    *buf = 138543874;
    v63 = payloadCategories2;
    v64 = 2114;
    v65 = v23;
    v66 = 2114;
    v67 = v32;
    _os_log_impl(&dword_1B831F000, v38, OS_LOG_TYPE_DEFAULT, "Old version 1 categories: %{public}@, old version 2 categories: %{public}@, computed new version 2 categories: %{public}@", buf, 0x20u);
  }

  v40 = [v32 set];
  if (v24 != v40 && ([v24 isEqual:v40] & 1) == 0)
  {
    array = [v32 array];
    [v53 setPayloadCategoriesVersion2:array];

    [v53 updateServerHash];
    v56 = 0;
    v42 = [v53 serializeAsDataWithError:&v56];
    v43 = v56;
    if (v42)
    {
      [obja setPayloadPlist:v42];
    }

    else
    {
      v44 = +[STLog persistence];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        [STBlueprint migrateToVersion2CategoriesIfNeeded];
      }
    }

    array2 = [v32 array];
    usageLimit = [(STBlueprint *)self usageLimit];
    [usageLimit setCategoryIdentifiersVersion2:array2];

    v47 = +[STLog blueprint];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      identifier3 = [(STBlueprint *)self identifier];
      [obja identifier];
      v50 = v49 = v43;
      *buf = 138543618;
      v63 = identifier3;
      v64 = 2114;
      v65 = v50;
      _os_log_impl(&dword_1B831F000, v47, OS_LOG_TYPE_DEFAULT, "Finished migration for blueprint: %{public}@, configuration: %{public}@", buf, 0x16u);

      v43 = v49;
    }
  }
}

- (void)didChangeValueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"identifier"])
  {
    [(STUniquedManagedObject *)self updateUniqueIdentifier];
  }

  else if ([keyCopy isEqualToString:@"isDirty"] && -[STBlueprint isDirty](self, "isDirty"))
  {
    v5 = [MEMORY[0x1E695DF00] now];
    [(STBlueprint *)self setModificationDate:v5];

    v6 = [STVersionVector alloc];
    versionVector = [(STBlueprint *)self versionVector];
    v8 = [(STVersionVector *)v6 initWithDataRepresentation:versionVector];

    v9 = STGetDeviceUUID();
    [(STVersionVector *)v8 incrementNodeWithIdentifier:v9];

    dataRepresentation = [(STVersionVector *)v8 dataRepresentation];
    [(STBlueprint *)self setVersionVector:dataRepresentation];
  }

  v11.receiver = self;
  v11.super_class = STBlueprint;
  [(STBlueprint *)&v11 didChangeValueForKey:keyCopy];
}

- (id)computeUniqueIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  serializableClassName = [objc_opt_class() serializableClassName];
  identifier = [(STBlueprint *)self identifier];
  v6 = [v3 stringWithFormat:@"%@:%@", serializableClassName, identifier];

  return v6;
}

- (BOOL)updateWithDictionaryRepresentation:(id)representation
{
  v163 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = +[STLog screentime];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "STBlueprint: enter updateWithDictionaryRepresentation", buf, 2u);
  }

  v6 = [STVersionVector alloc];
  versionVector = [(STBlueprint *)self versionVector];
  v8 = [(STVersionVector *)v6 initWithDataRepresentation:versionVector];

  nodes = [(STVersionVector *)v8 nodes];
  v10 = [nodes count];

  v11 = [representationCopy objectForKeyedSubscript:@"versionVector"];
  v12 = [[STVersionVector alloc] initWithDataRepresentation:v11];
  v13 = [representationCopy objectForKeyedSubscript:@"fromCloud"];
  LOBYTE(nodes) = [v13 BOOLValue];
  modificationDate = +[STLog screentime];
  v15 = os_log_type_enabled(modificationDate, OS_LOG_TYPE_DEFAULT);
  v141 = v12;
  if (nodes)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_1B831F000, modificationDate, OS_LOG_TYPE_DEFAULT, "STBlueprint: dictionaryRepresentation is fromCloud. Version vectors will be ignored.", buf, 2u);
    }

    goto LABEL_6;
  }

  if (v15)
  {
    *buf = 0;
    _os_log_impl(&dword_1B831F000, modificationDate, OS_LOG_TYPE_DEFAULT, "STBlueprint: dictionaryRepresentation is NOT fromCloud. Compare version vectors.", buf, 2u);
  }

  if (!v8)
  {
    modificationDate = +[STLog screentime];
    if (os_log_type_enabled(modificationDate, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B831F000, modificationDate, OS_LOG_TYPE_DEFAULT, "STBlueprint: updateWithDictionaryRepresentation - there is no versionvector", buf, 2u);
    }

    goto LABEL_155;
  }

  v30 = +[STLog versionVector];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [(STBlueprint *)self uniqueIdentifier];
    *buf = 138412802;
    v158 = uniqueIdentifier;
    v159 = 2112;
    v160 = v8;
    v161 = 2112;
    v162 = v12;
    _os_log_impl(&dword_1B831F000, v30, OS_LOG_TYPE_DEFAULT, "COMPARE BLUEPRINTS (%@): %@ vs %@", buf, 0x20u);
  }

  v32 = [(STVersionVector *)v8 evaluateCausality:v12];
  v33 = v32;
  switch(v32)
  {
    case 1:
      v34 = v13;
      v35 = +[STLog versionVector];
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:

        v13 = v34;
        break;
      }

      *buf = 0;
      v36 = "Local newer";
LABEL_25:
      _os_log_impl(&dword_1B831F000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 2u);
      goto LABEL_26;
    case 3:
      v34 = v13;
      v35 = +[STLog versionVector];
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      *buf = 0;
      v36 = "Local equal";
      goto LABEL_25;
    case 2:
      v34 = v13;
      v35 = +[STLog versionVector];
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      *buf = 0;
      v36 = "Concurrent";
      goto LABEL_25;
    case 0:
      v34 = v13;
      v35 = +[STLog versionVector];
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      *buf = 0;
      v36 = "Local older";
      goto LABEL_25;
  }

  [(STVersionVector *)v8 join:v12];
  dataRepresentation = [(STVersionVector *)v8 dataRepresentation];
  [(STBlueprint *)self setVersionVector:dataRepresentation];

  if (v33 == 1)
  {
    v38 = +[STLog screentime];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B831F000, v38, OS_LOG_TYPE_DEFAULT, "Received blueprint representation is out of date. Skipping update.", buf, 2u);
    }

    v39 = +[STLog screentime];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [STBlueprint updateWithDictionaryRepresentation:?];
    }

    modificationDate = +[STLog screentime];
    if (os_log_type_enabled(modificationDate, OS_LOG_TYPE_DEBUG))
    {
      [STBlueprint updateWithDictionaryRepresentation:];
    }

    goto LABEL_155;
  }

  if (v33 != 3)
  {
    if (v33 == 2)
    {
      v57 = +[STLog screentime];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v57, OS_LOG_TYPE_DEFAULT, "Blueprint version clocks concurrent. Most recent modification wins", buf, 2u);
      }

      v58 = +[STLog screentime];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        [STBlueprint updateWithDictionaryRepresentation:?];
      }

      v59 = +[STLog screentime];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        [STBlueprint updateWithDictionaryRepresentation:];
      }

      modificationDate = [(STBlueprint *)self modificationDate];
      v60 = [representationCopy objectForKeyedSubscript:@"modificationDate"];
      v61 = +[STLog screentime];
      v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
      if (modificationDate && v60)
      {
        if (v62)
        {
          *buf = 138412546;
          v158 = modificationDate;
          v159 = 2112;
          v160 = v60;
          _os_log_impl(&dword_1B831F000, v61, OS_LOG_TYPE_DEFAULT, "Local modification date = %@, Incoming modification date = %@", buf, 0x16u);
        }

        v63 = [modificationDate compare:v60];
        v61 = +[STLog screentime];
        v64 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
        if (v63 != -1)
        {
          if (v64)
          {
            *buf = 138412546;
            v158 = modificationDate;
            v159 = 2112;
            v160 = v60;
            v65 = "Local blueprint is more recently modified. We will ignore the received blueprint. Local = %@, Incoming = %@";
            v66 = v61;
            v67 = 22;
LABEL_153:
            _os_log_impl(&dword_1B831F000, v66, OS_LOG_TYPE_DEFAULT, v65, buf, v67);
            goto LABEL_154;
          }

          goto LABEL_154;
        }

        if (v64)
        {
          *buf = 138412546;
          v158 = modificationDate;
          v159 = 2112;
          v160 = v60;
          v128 = "Received blueprint is more recently modified. We will overwrite the local blueprint. Local = %@, Incoming = %@";
          v129 = v61;
          v130 = 22;
          goto LABEL_162;
        }
      }

      else
      {
        if (modificationDate)
        {
          if (v62)
          {
            *buf = 0;
            v65 = "Only the local blueprint has a modification date. We will ignore the received blueprint.";
            v66 = v61;
            v67 = 2;
            goto LABEL_153;
          }

LABEL_154:

LABEL_155:
          v121 = 0;
          goto LABEL_156;
        }

        if (v62)
        {
          *buf = 0;
          v128 = "Only the inboud blueprint has a modification date. We will overwrite the local blueprint.";
          v129 = v61;
          v130 = 2;
LABEL_162:
          _os_log_impl(&dword_1B831F000, v129, OS_LOG_TYPE_DEFAULT, v128, buf, v130);
        }
      }

LABEL_6:
    }

LABEL_7:
    selfCopy = self;
    v137 = v13;
    v138 = v11;
    v139 = v8;
    v140 = representationCopy;
    [representationCopy objectForKeyedSubscript:@"configurations"];
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    obj = v154 = 0u;
    v16 = [obj countByEnumeratingWithState:&v151 objects:v156 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v152;
      do
      {
        v20 = 0;
        v21 = v18;
        do
        {
          if (*v152 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v151 + 1) + 8 * v20);
          v23 = [v22 objectForKeyedSubscript:@"identifier"];
          v24 = +[STBlueprintConfiguration fetchRequest];
          v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ && %K == %@", @"blueprint", selfCopy, @"identifier", v23];
          [v24 setPredicate:v25];

          v150 = v21;
          v26 = [v24 execute:&v150];
          v27 = v150;

          firstObject = [v26 firstObject];
          v29 = firstObject;
          if (firstObject)
          {
            [firstObject updateWithDictionaryRepresentation:v22];
          }

          ++v20;
          v21 = v27;
        }

        while (v17 != v20);
        v18 = v27;
        v17 = [obj countByEnumeratingWithState:&v151 objects:v156 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
    }

    representationCopy = v140;
    v40 = [v140 objectForKeyedSubscript:@"type"];
    [(STBlueprint *)selfCopy setType:v40];

    v41 = [v140 objectForKeyedSubscript:@"enabled"];
    bOOLValue = [v41 BOOLValue];

    [(STBlueprint *)selfCopy setEnabled:bOOLValue];
    type = [(STBlueprint *)selfCopy type];
    v44 = [type isEqualToString:@"downtime"];

    if (v44)
    {
      v45 = +[STLog screentime];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v45, OS_LOG_TYPE_DEFAULT, "STBlueprint: updateWithDictionaryRepresentation - downtime blueprint", buf, 2u);
      }

      v46 = [v140 objectForKeyedSubscript:@"schedule"];
      v47 = +[STLog screentime];
      v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
      if (v46)
      {
        if (v48)
        {
          *buf = 0;
          _os_log_impl(&dword_1B831F000, v47, OS_LOG_TYPE_DEFAULT, "STBlueprint: updateWithDictionaryRepresentation - has scheduleDictionary", buf, 2u);
        }

        schedule = [(STBlueprint *)selfCopy schedule];

        if (!schedule)
        {
          v50 = [STBlueprintSchedule alloc];
          managedObjectContext = [(STBlueprint *)selfCopy managedObjectContext];
          v52 = [(STBlueprintSchedule *)v50 initWithContext:managedObjectContext];
          [(STBlueprint *)selfCopy setSchedule:v52];
        }

        schedule2 = [(STBlueprint *)selfCopy schedule];
        [schedule2 updateWithDictionaryRepresentation:v46];

        v54 = [v46 objectForKeyedSubscript:@"enabled"];
        if (!v54)
        {
          schedule3 = [(STBlueprint *)selfCopy schedule];
          [schedule3 setEnabled:bOOLValue];

          v56 = +[STLog blueprint];
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v158 = bOOLValue;
            _os_log_impl(&dword_1B831F000, v56, OS_LOG_TYPE_DEFAULT, "Deserializing legacy downtime, treating blueprint enabled (%ld) as schedule enabled", buf, 0xCu);
          }
        }
      }

      else
      {
        if (v48)
        {
          *buf = 0;
          _os_log_impl(&dword_1B831F000, v47, OS_LOG_TYPE_DEFAULT, "STBlueprint: updateWithDictionaryRepresentation - does not have a scheduleDictionary", buf, 2u);
        }

        schedule4 = [(STBlueprint *)selfCopy schedule];

        if (schedule4)
        {
          v69 = +[STLog screentime];
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            schedule5 = [(STBlueprint *)selfCopy schedule];
            *buf = 136446466;
            v158 = "[STBlueprint updateWithDictionaryRepresentation:]";
            v159 = 2112;
            v160 = schedule5;
            _os_log_impl(&dword_1B831F000, v69, OS_LOG_TYPE_DEFAULT, "%{public}s: Deleting schedule (%@)", buf, 0x16u);
          }

          managedObjectContext2 = [(STBlueprint *)selfCopy managedObjectContext];
          schedule6 = [(STBlueprint *)selfCopy schedule];
          [managedObjectContext2 deleteObject:schedule6];
        }

        [(STBlueprint *)selfCopy setSchedule:0];
      }

      v73 = [v140 objectForKeyedSubscript:@"override"];
      override2 = +[STLog screentime];
      v75 = os_log_type_enabled(override2, OS_LOG_TYPE_DEFAULT);
      if (v73)
      {
        if (v75)
        {
          *buf = 0;
          _os_log_impl(&dword_1B831F000, override2, OS_LOG_TYPE_DEFAULT, "STBlueprint: updateWithDictionaryRepresentation - has overideDictionary", buf, 2u);
        }

        override = [(STBlueprint *)selfCopy override];

        if (!override)
        {
          v77 = [STCoreDowntimeOverride alloc];
          managedObjectContext3 = [(STBlueprint *)selfCopy managedObjectContext];
          v79 = [(STCoreDowntimeOverride *)v77 initWithContext:managedObjectContext3];
          [(STBlueprint *)selfCopy setOverride:v79];
        }

        override2 = [(STBlueprint *)selfCopy override];
        [override2 updateWithDictionaryRepresentation:v73];
      }

      else if (v75)
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, override2, OS_LOG_TYPE_DEFAULT, "STBlueprint: updateWithDictionaryRepresentation - does not have an overideDictionary", buf, 2u);
      }
    }

    v80 = [v140 objectForKeyedSubscript:@"usageLimit"];
    v81 = +[STLog screentime];
    v82 = os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT);
    if (v80)
    {
      if (v82)
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v81, OS_LOG_TYPE_DEFAULT, "STBlueprint: updateWithDictionaryRepresentation - has usageLimitDictionary", buf, 2u);
      }

      usageLimit = [(STBlueprint *)selfCopy usageLimit];

      if (!usageLimit)
      {
        v84 = [STBlueprintUsageLimit alloc];
        managedObjectContext4 = [(STBlueprint *)selfCopy managedObjectContext];
        v86 = [(STBlueprintUsageLimit *)v84 initWithContext:managedObjectContext4];
        [(STBlueprint *)selfCopy setUsageLimit:v86];
      }

      usageLimit2 = [(STBlueprint *)selfCopy usageLimit];
      [usageLimit2 updateWithDictionaryRepresentation:v80];
    }

    else
    {
      if (v82)
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v81, OS_LOG_TYPE_DEFAULT, "STBlueprint: updateWithDictionaryRepresentation - does not have a usageLimitDictionary", buf, 2u);
      }

      usageLimit3 = [(STBlueprint *)selfCopy usageLimit];

      if (usageLimit3)
      {
        v89 = +[STLog screentime];
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          usageLimit4 = [(STBlueprint *)selfCopy usageLimit];
          *buf = 136446466;
          v158 = "[STBlueprint updateWithDictionaryRepresentation:]";
          v159 = 2112;
          v160 = usageLimit4;
          _os_log_impl(&dword_1B831F000, v89, OS_LOG_TYPE_DEFAULT, "%{public}s: Deleting usageLimit (%@)", buf, 0x16u);
        }

        managedObjectContext5 = [(STBlueprint *)selfCopy managedObjectContext];
        usageLimit5 = [(STBlueprint *)selfCopy usageLimit];
        [managedObjectContext5 deleteObject:usageLimit5];
      }

      [(STBlueprint *)selfCopy setUsageLimit:0];
    }

    v93 = [v140 objectForKeyedSubscript:@"limitEnabled"];
    v94 = v93;
    if (v93)
    {
      bOOLValue2 = [v93 BOOLValue];
    }

    else
    {
      bOOLValue2 = 1;
    }

    [(STBlueprint *)selfCopy setLimitEnabled:bOOLValue2];
    v96 = [v140 objectForKeyedSubscript:@"creationDate"];
    [(STBlueprint *)selfCopy setCreationDate:v96];

    v97 = [v140 objectForKeyedSubscript:@"expiration"];
    [(STBlueprint *)selfCopy setExpiration:v97];

    v98 = [v140 objectForKeyedSubscript:@"minimumInstallationDate"];
    [(STBlueprint *)selfCopy setMinimumInstallationDate:v98];

    v99 = [v140 objectForKeyedSubscript:@"invertUsageLimit"];
    -[STBlueprint setInvertUsageLimit:](selfCopy, "setInvertUsageLimit:", [v99 BOOLValue]);

    v100 = [v140 objectForKeyedSubscript:@"modificationDate"];
    if (v100)
    {
      [(STBlueprint *)selfCopy setModificationDate:v100];
    }

    v136 = v100;
    v101 = [v140 objectForKeyedSubscript:@"users"];
    v102 = +[STCoreUser fetchRequest];
    v149 = v18;
    v103 = [v102 execute:&v149];
    modificationDate = v149;

    v135 = v103;
    if (!v103)
    {
      v104 = +[STLog persistence];
      if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
      {
        [STBlueprint updateWithDictionaryRepresentation:];
      }

      v121 = 0;
      v122 = v136;
      v13 = v137;
      goto LABEL_137;
    }

    v134 = v94;
    v132 = v80;
    v104 = objc_opt_new();
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v105 = v103;
    v106 = [v105 countByEnumeratingWithState:&v145 objects:v155 count:16];
    if (v106)
    {
      v107 = v106;
      v108 = *v146;
      do
      {
        for (i = 0; i != v107; ++i)
        {
          if (*v146 != v108)
          {
            objc_enumerationMutation(v105);
          }

          v110 = *(*(&v145 + 1) + 8 * i);
          dsid = [v110 dsid];
          v112 = [v101 containsObject:dsid];

          if (v112)
          {
            [v104 addObject:v110];
          }
        }

        v107 = [v105 countByEnumeratingWithState:&v145 objects:v155 count:16];
      }

      while (v107);
    }

    v113 = [v140 objectForKeyedSubscript:@"organization.class"];
    v114 = [STCoreOrganization internalClassForSerializableClassName:v113];
    v133 = v113;
    if (!v114)
    {
      v116 = +[STLog persistence];
      v94 = v134;
      if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
      {
        [STBlueprint updateWithDictionaryRepresentation:];
      }

      v121 = 0;
      v123 = modificationDate;
      representationCopy = v140;
      v80 = v132;
      v122 = v136;
      goto LABEL_136;
    }

    fetchRequest = [(objc_class *)v114 fetchRequest];
    v144 = modificationDate;
    v116 = [fetchRequest execute:&v144];
    v131 = v144;

    v94 = v134;
    if (v116)
    {
      if ([v116 count]>= 2)
      {
        v117 = +[STLog persistence];
        if (os_log_type_enabled(v117, OS_LOG_TYPE_FAULT))
        {
          [STBlueprint updateWithDictionaryRepresentation:];
        }
      }

      firstObject2 = [v116 firstObject];
      [(STBlueprint *)selfCopy setOrganization:firstObject2];

      organization = [(STBlueprint *)selfCopy organization];

      if (organization)
      {
        v120 = [MEMORY[0x1E695DFD8] setWithArray:v104];
        [(STBlueprint *)selfCopy setUsers:v120];
        v121 = 1;
      }

      else
      {
        v120 = +[STLog persistence];
        if (os_log_type_enabled(v120, OS_LOG_TYPE_FAULT))
        {
          [STBlueprint updateWithDictionaryRepresentation:];
        }

        v121 = 0;
      }

      representationCopy = v140;
      v80 = v132;
      v94 = v134;
      v122 = v136;
    }

    else
    {
      v120 = +[STLog persistence];
      v122 = v136;
      if (os_log_type_enabled(v120, OS_LOG_TYPE_FAULT))
      {
        v123 = v131;
        [STBlueprint updateWithDictionaryRepresentation:];
        v121 = 0;
        representationCopy = v140;
        v80 = v132;
        goto LABEL_135;
      }

      v121 = 0;
      representationCopy = v140;
      v80 = v132;
    }

    v123 = v131;
LABEL_135:

LABEL_136:
    modificationDate = v123;
    v13 = v137;
LABEL_137:

    v11 = v138;
    v8 = v139;
LABEL_156:

    goto LABEL_157;
  }

  v124 = +[STLog screentime];
  if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B831F000, v124, OS_LOG_TYPE_DEFAULT, "Blueprint version clocks equal.", buf, 2u);
  }

  v125 = +[STLog screentime];
  if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
  {
    [STBlueprint updateWithDictionaryRepresentation:?];
  }

  v126 = +[STLog screentime];
  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
  {
    [STBlueprint updateWithDictionaryRepresentation:];
  }

  if (!v10)
  {
    goto LABEL_7;
  }

  v121 = 1;
LABEL_157:

  return v121;
}

- (id)dictionaryRepresentation
{
  v46 = *MEMORY[0x1E69E9840];
  users = [(STBlueprint *)self users];
  v4 = [users valueForKeyPath:@"dsid"];
  allObjects = [v4 allObjects];

  v6 = objc_alloc(MEMORY[0x1E695DF70]);
  configurations = [(STBlueprint *)self configurations];
  v8 = [v6 initWithCapacity:{objc_msgSend(configurations, "count")}];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  configurations2 = [(STBlueprint *)self configurations];
  v10 = [configurations2 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(configurations2);
        }

        dictionaryRepresentation = [*(*(&v41 + 1) + 8 * i) dictionaryRepresentation];
        [v8 addObject:dictionaryRepresentation];
      }

      v11 = [configurations2 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v11);
  }

  v40.receiver = self;
  v40.super_class = STBlueprint;
  dictionaryRepresentation2 = [(STUniquedManagedObject *)&v40 dictionaryRepresentation];
  type = [(STBlueprint *)self type];
  v17 = [type isEqualToString:@"downtime"];

  v18 = MEMORY[0x1E696AD98];
  if (v17)
  {
    schedule = [(STBlueprint *)self schedule];
    v20 = [v18 numberWithBool:{objc_msgSend(schedule, "enabled")}];
    [dictionaryRepresentation2 setObject:v20 forKeyedSubscript:@"enabled"];

    override = [(STBlueprint *)self override];
    dictionaryRepresentation3 = [override dictionaryRepresentation];
    [dictionaryRepresentation2 setObject:dictionaryRepresentation3 forKeyedSubscript:@"override"];
  }

  else
  {
    override = [MEMORY[0x1E696AD98] numberWithBool:{-[STBlueprint enabled](self, "enabled")}];
    [dictionaryRepresentation2 setObject:override forKeyedSubscript:@"enabled"];
  }

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[STBlueprint limitEnabled](self, "limitEnabled")}];
  [dictionaryRepresentation2 setObject:v23 forKeyedSubscript:@"limitEnabled"];

  creationDate = [(STBlueprint *)self creationDate];
  [dictionaryRepresentation2 setObject:creationDate forKeyedSubscript:@"creationDate"];

  expiration = [(STBlueprint *)self expiration];
  [dictionaryRepresentation2 setObject:expiration forKeyedSubscript:@"expiration"];

  minimumInstallationDate = [(STBlueprint *)self minimumInstallationDate];
  [dictionaryRepresentation2 setObject:minimumInstallationDate forKeyedSubscript:@"minimumInstallationDate"];

  identifier = [(STBlueprint *)self identifier];
  [dictionaryRepresentation2 setObject:identifier forKeyedSubscript:@"identifier"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[STBlueprint invertUsageLimit](self, "invertUsageLimit")}];
  [dictionaryRepresentation2 setObject:v28 forKeyedSubscript:@"invertUsageLimit"];

  type2 = [(STBlueprint *)self type];
  [dictionaryRepresentation2 setObject:type2 forKeyedSubscript:@"type"];

  organization = [(STBlueprint *)self organization];
  serializableClassName = [objc_opt_class() serializableClassName];
  [dictionaryRepresentation2 setObject:serializableClassName forKeyedSubscript:@"organization.class"];

  schedule2 = [(STBlueprint *)self schedule];
  dictionaryRepresentation4 = [schedule2 dictionaryRepresentation];
  [dictionaryRepresentation2 setObject:dictionaryRepresentation4 forKeyedSubscript:@"schedule"];

  [dictionaryRepresentation2 setObject:v8 forKeyedSubscript:@"configurations"];
  usageLimit = [(STBlueprint *)self usageLimit];
  dictionaryRepresentation5 = [usageLimit dictionaryRepresentation];
  [dictionaryRepresentation2 setObject:dictionaryRepresentation5 forKeyedSubscript:@"usageLimit"];

  [dictionaryRepresentation2 setObject:allObjects forKeyedSubscript:@"users"];
  versionVector = [(STBlueprint *)self versionVector];
  [dictionaryRepresentation2 setObject:versionVector forKeyedSubscript:@"versionVector"];

  modificationDate = [(STBlueprint *)self modificationDate];
  [dictionaryRepresentation2 setObject:modificationDate forKeyedSubscript:@"modificationDate"];

  v38 = [dictionaryRepresentation2 copy];

  return v38;
}

+ (id)fetchOrCreateWithDictionaryRepresentation:(id)representation inContext:(id)context error:(id *)error
{
  v64 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  contextCopy = context;
  v10 = [representationCopy objectForKeyedSubscript:@"identifier"];
  fetchRequest = [self fetchRequest];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v10];
  [fetchRequest setPredicate:v12];

  v13 = [fetchRequest execute:error];
  if (!v13)
  {
    firstObject = 0;
    goto LABEL_38;
  }

  errorCopy = error;
  v42 = fetchRequest;
  v40 = v13;
  firstObject = [v13 firstObject];
  if (!firstObject)
  {
    v14 = [[STBlueprint alloc] initWithContext:contextCopy];
    v15 = [representationCopy objectForKeyedSubscript:@"identifier"];
    firstObject = v14;
    [(STBlueprint *)v14 setIdentifier:v15];
  }

  v43 = v10;
  v45 = objc_opt_new();
  v44 = representationCopy;
  [representationCopy objectForKeyedSubscript:@"configurations"];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v57 = 0u;
  v16 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v55;
    do
    {
      v20 = 0;
      v21 = v18;
      do
      {
        if (*v55 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v54 + 1) + 8 * v20);
        v53 = v21;
        v23 = [STBlueprintConfiguration fetchOrCreateWithDictionaryRepresentation:v22 inContext:contextCopy error:&v53];
        v18 = v53;

        if (v18)
        {
          v24 = +[STLog persistence];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v59 = v18;
            _os_log_error_impl(&dword_1B831F000, v24, OS_LOG_TYPE_ERROR, "Could not create blueprint configuration: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          [v23 setBlueprint:firstObject];
          [v45 addObject:v23];
        }

        ++v20;
        v21 = v18;
      }

      while (v17 != v20);
      v17 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  [firstObject setConfigurations:v45];
  v25 = +[STBlueprintConfiguration fetchRequest];
  v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NULL", @"blueprint"];
  [v25 setPredicate:v26];

  v52 = v18;
  v27 = [v25 execute:&v52];
  v28 = v52;

  if (v27)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v29 = v27;
    v30 = [v29 countByEnumeratingWithState:&v48 objects:v62 count:16];
    if (v30)
    {
      v31 = v30;
      v38 = v28;
      v39 = v25;
      v32 = *v49;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v49 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v48 + 1) + 8 * i);
          v35 = +[STLog screentime];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v59 = "+[STBlueprint fetchOrCreateWithDictionaryRepresentation:inContext:error:]";
            v60 = 2112;
            v61 = v34;
            _os_log_impl(&dword_1B831F000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s: deleting orphanConfiguration (%@)", buf, 0x16u);
          }

          [contextCopy deleteObject:v34];
        }

        v31 = [v29 countByEnumeratingWithState:&v48 objects:v62 count:16];
      }

      while (v31);
      v10 = v43;
      representationCopy = v44;
      error = errorCopy;
      fetchRequest = v42;
      v28 = v38;
      v25 = v39;
      goto LABEL_34;
    }

    fetchRequest = v42;
    v10 = v43;
  }

  else
  {
    v29 = +[STLog persistence];
    fetchRequest = v42;
    v10 = v43;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      +[STBlueprint fetchOrCreateWithDictionaryRepresentation:inContext:error:];
    }
  }

  representationCopy = v44;
LABEL_34:

  if (error && v28)
  {
    v36 = v28;
    *error = v28;
  }

  v13 = v40;
LABEL_38:

  return firstObject;
}

+ (id)scheduleTextWithLocale:(id)locale weekdayScheduleComparator:(id)comparator scheduleTimeGetter:(id)getter
{
  v80 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  comparatorCopy = comparator;
  getterCopy = getter;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v11 = currentCalendar;
  if (localeCopy)
  {
    [currentCalendar setLocale:localeCopy];
  }

  shortWeekdaySymbols = [v11 shortWeekdaySymbols];
  v12 = [v11 maximumRangeOfUnit:512];
  v14 = v13;
  v15 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:v13];
  v56 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v14];
  firstWeekday = [v11 firstWeekday];
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x2020000000;
  v78[3] = firstWeekday;
  v17 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__STBlueprint_scheduleTextWithLocale_weekdayScheduleComparator_scheduleTimeGetter___block_invoke;
  aBlock[3] = &unk_1E7CE6E88;
  v75 = firstWeekday;
  v44 = comparatorCopy;
  v72 = v44;
  v74 = v78;
  v45 = getterCopy;
  v73 = v45;
  v18 = v15;
  v66 = v18;
  v76 = v12;
  v77 = v14 + v12 - 1;
  v47 = shortWeekdaySymbols;
  v67 = v47;
  v46 = v11;
  v68 = v46;
  v48 = v17;
  v69 = v48;
  v51 = localeCopy;
  v70 = v51;
  v55 = v56;
  v71 = v55;
  v52 = _Block_copy(aBlock);
  if (firstWeekday == v14 + v12 - 1)
  {
    v19 = v12;
  }

  else
  {
    v19 = firstWeekday + 1;
  }

  v20 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{v12, v14}];
  [v20 enumerateIndexesInRange:v19 options:v14 + v12 - v19 usingBlock:{0, v52}];
  [v20 enumerateIndexesInRange:v12 options:v19 - v12 usingBlock:{0, v52}];
  v49 = v20;
  v21 = +[STScreenTimeCoreBundle bundle];
  if (localeCopy)
  {
    currentLocale = v51;
  }

  else
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  }

  v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v18;
  v22 = [obj countByEnumeratingWithState:&v61 objects:v79 count:16];
  v50 = @"CustomScheduleDetailTextCommaSeparator";
  if (v22)
  {
    v23 = 0;
    v54 = *v62;
    do
    {
      v59 = v22;
      for (i = 0; i != v59; ++i)
      {
        if (*v62 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v61 + 1) + 8 * i);
        v26 = [v55 objectForKeyedSubscript:v25];
        v27 = [v26 count];
        if (v27 < 3)
        {
          v28 = [v21 localizedStringForKey:@"CustomScheduleTwoWeekdayRangeSeparator" value:&stru_1F3040980 table:0];
          v36 = [v26 componentsJoinedByString:v28];
        }

        else
        {
          v28 = [v21 localizedStringForKey:@"CustomScheduleThreeOrMoreWeekdayRangeCommaSeparator" value:&stru_1F3040980 table:0];
          v29 = v27 - 1;
          v30 = [v26 subarrayWithRange:{0, v27 - 1}];
          v31 = [v30 componentsJoinedByString:v28];

          v32 = [v21 localizedStringForKey:@"CustomScheduleThreeOrMoreWeekdayRangeAndSeparator" value:&stru_1F3040980 table:0];
          v33 = objc_alloc(MEMORY[0x1E696AEC0]);
          v34 = [v26 objectAtIndexedSubscript:v29];
          v35 = [v33 initWithFormat:v32 locale:currentLocale, v34];

          v36 = [v31 stringByAppendingString:v35];

          v23 = 1;
        }

        v37 = [v21 localizedStringForKey:@"CustomDailyScheduleFormat" value:&stru_1F3040980 table:0];
        v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v37 locale:currentLocale, v36, v25];
        [v57 addObject:v38];
      }

      v22 = [obj countByEnumeratingWithState:&v61 objects:v79 count:16];
    }

    while (v22);
    v39 = @"CustomScheduleDetailTextSemicolonSeparator";
    if ((v23 & 1) == 0)
    {
      v39 = @"CustomScheduleDetailTextCommaSeparator";
    }

    v50 = v39;
  }

  if ([v57 count])
  {
    v40 = v50;
    v41 = [v21 localizedStringForKey:v40 value:&stru_1F3040980 table:0];
    v42 = [v57 componentsJoinedByString:v41];
  }

  else
  {
    v42 = 0;
  }

  _Block_object_dispose(v78, 8);

  return v42;
}

uint64_t __83__STBlueprint_scheduleTextWithLocale_weekdayScheduleComparator_scheduleTimeGetter___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) == a2 || (result = (*(*(a1 + 80) + 16))(), (result & 1) == 0))
  {
    v5 = (*(*(a1 + 88) + 16))();
    v6 = v5;
    if (v5)
    {
      v16 = v5;
      [*(a1 + 32) addObject:v5];
      if (*(a1 + 112) == a2)
      {
        v7 = *(a1 + 120);
      }

      else
      {
        v7 = a2 - 1;
      }

      v8 = *(*(*(a1 + 96) + 8) + 24);
      if (v8 == v7)
      {
        v9 = [*(a1 + 40) objectAtIndexedSubscript:v7 - 1];
      }

      else
      {
        v10 = [*(a1 + 48) nextDateAfterDate:*(a1 + 56) matchingUnit:512 value:v8 options:1024];
        v11 = [*(a1 + 48) nextDateAfterDate:v10 matchingUnit:512 value:v7 options:1024];
        v12 = objc_opt_new();
        v13 = v12;
        if (*(a1 + 64))
        {
          [v12 setLocale:?];
        }

        [v13 setDateTemplate:@"ccc"];
        v9 = [v13 stringFromDate:v10 toDate:v11];
      }

      v14 = [*(a1 + 72) objectForKeyedSubscript:v16];
      if (v14)
      {
        v15 = v14;
        [v14 addObject:v9];
      }

      else
      {
        v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v9, 0}];
        [*(a1 + 72) setObject:v15 forKeyedSubscript:v16];
      }

      v6 = v16;
    }

    *(*(*(a1 + 96) + 8) + 24) = a2;

    return MEMORY[0x1EEE66BB8](v5, v6);
  }

  return result;
}

+ (id)blueprintTypeForDeclarationType:(id)type
{
  typeCopy = type;
  registeredIdentifier = [MEMORY[0x1E6996238] registeredIdentifier];
  v5 = [typeCopy isEqualToString:registeredIdentifier];

  if (v5)
  {
    v6 = @"always-allowed-apps";
  }

  else
  {
    registeredIdentifier2 = [MEMORY[0x1E6996240] registeredIdentifier];
    v8 = [typeCopy isEqualToString:registeredIdentifier2];

    if (v8)
    {
      v6 = @"downtime";
    }

    else
    {
      registeredIdentifier3 = [MEMORY[0x1E6996218] registeredIdentifier];
      v10 = [typeCopy isEqualToString:registeredIdentifier3];

      if (v10 & 1) != 0 || ([MEMORY[0x1E69962D8] registeredIdentifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(typeCopy, "isEqualToString:", v11), v11, (v12) || (objc_msgSend(MEMORY[0x1E6996310], "registeredIdentifier"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(typeCopy, "isEqualToString:", v13), v13, (v14) || (objc_msgSend(MEMORY[0x1E69962B8], "registeredIdentifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(typeCopy, "isEqualToString:", v15), v15, (v16) || (objc_msgSend(MEMORY[0x1E69962E0], "registeredIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(typeCopy, "isEqualToString:", v17), v17, (v18) || (objc_msgSend(MEMORY[0x1E6996220], "registeredIdentifier"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(typeCopy, "isEqualToString:", v19), v19, (v20) || (objc_msgSend(MEMORY[0x1E6996200], "registeredIdentifier"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(typeCopy, "isEqualToString:", v21), v21, (v22) || (objc_msgSend(MEMORY[0x1E6996308], "registeredIdentifier"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(typeCopy, "isEqualToString:", v23), v23, (v24) || (objc_msgSend(MEMORY[0x1E6996300], "registeredIdentifier"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(typeCopy, "isEqualToString:", v25), v25, (v26) || (objc_msgSend(MEMORY[0x1E69962C8], "registeredIdentifier"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(typeCopy, "isEqualToString:", v27), v27, (v28) || (objc_msgSend(MEMORY[0x1E69962F8], "registeredIdentifier"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(typeCopy, "isEqualToString:", v29), v29, (v30) || (objc_msgSend(MEMORY[0x1E6996230], "registeredIdentifier"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(typeCopy, "isEqualToString:", v31), v31, (v32) || (objc_msgSend(MEMORY[0x1E69961E8], "registeredIdentifier"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(typeCopy, "isEqualToString:", v33), v33, (v34) || (objc_msgSend(MEMORY[0x1E6996228], "registeredIdentifier"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(typeCopy, "isEqualToString:", v35), v35, (v36) || (objc_msgSend(MEMORY[0x1E69962F0], "registeredIdentifier"), v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(typeCopy, "isEqualToString:", v37), v37, (v38) || (objc_msgSend(MEMORY[0x1E6996318], "registeredIdentifier"), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(typeCopy, "isEqualToString:", v39), v39, (v40))
      {
        v6 = @"restrictions";
      }

      else
      {
        registeredIdentifier4 = [MEMORY[0x1E69961F8] registeredIdentifier];
        v43 = [typeCopy isEqualToString:registeredIdentifier4];

        v6 = @"restrictions";
        if ((v43 & 1) == 0)
        {
          registeredIdentifier5 = [MEMORY[0x1E6996328] registeredIdentifier];
          v45 = [typeCopy isEqualToString:registeredIdentifier5];

          if (!v45)
          {
            v6 = 0;
          }
        }
      }
    }
  }

  return v6;
}

- (BOOL)validateForUpdate:(id *)update
{
  v10.receiver = self;
  v10.super_class = STBlueprint;
  if ([(STBlueprint *)&v10 validateForUpdate:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STBlueprint *)self _validateUsersOnBlueprint:v5];
    [(STBlueprint *)self _validateType:v5];
    [(STBlueprint *)self _validateBlueprintConfiguration:v5];
    [(STBlueprint *)self _validateNumberOfBlueprints:v5];
    [(STBlueprint *)self _validateBlueprintIdentifier:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STBlueprint validateForUpdate:?];
      }
    }

    v9.receiver = self;
    v9.super_class = STBlueprint;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:update otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(STBlueprint *)update validateForUpdate:v5];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForInsert:(id *)insert
{
  v10.receiver = self;
  v10.super_class = STBlueprint;
  if (![(STBlueprint *)&v10 validateForInsert:?])
  {
    return 0;
  }

  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  v5 = objc_opt_new();
  [(STBlueprint *)self _validateUsersOnBlueprint:v5];
  [(STBlueprint *)self _validateType:v5];
  [(STBlueprint *)self _validateBlueprintConfiguration:v5];
  [(STBlueprint *)self _validateNumberOfBlueprints:v5];
  [(STBlueprint *)self _validateBlueprintIdentifier:v5];
  if ([v5 count])
  {
    v6 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [STBlueprint validateForInsert:?];
    }
  }

  v9.receiver = self;
  v9.super_class = STBlueprint;
  v7 = [(NSManagedObject *)&v9 parseValidationErrors:insert otherErrors:v5];

  return v7;
}

- (BOOL)validateForDelete:(id *)delete
{
  v10.receiver = self;
  v10.super_class = STBlueprint;
  if (![(STBlueprint *)&v10 validateForDelete:?])
  {
    return 0;
  }

  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  v5 = objc_opt_new();
  [(STBlueprint *)self _validateNumberOfBlueprints:v5];
  if ([v5 count])
  {
    v6 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [STBlueprint validateForDelete:?];
    }
  }

  v9.receiver = self;
  v9.super_class = STBlueprint;
  v7 = [(NSManagedObject *)&v9 parseValidationErrors:delete otherErrors:v5];

  return v7;
}

- (BOOL)_validateUsersOnBlueprint:(id)blueprint
{
  v20[1] = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  users = [(STBlueprint *)self users];
  v6 = [users count];

  if (!v6)
  {
    v7 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v20[0] = @"There must be one user assigned to blueprint";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v9 = [v7 errorWithDomain:@"STErrorDomain" code:531 userInfo:v8];
    [blueprintCopy addObject:v9];
  }

  users2 = [(STBlueprint *)self users];
  v11 = [users2 count];

  if (v11 >= 2)
  {
    v12 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v18 = @"There must be one and only one user assigned to Blueprint.";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v14 = [v12 errorWithDomain:@"STErrorDomain" code:532 userInfo:v13];
    [blueprintCopy addObject:v14];
  }

  v15 = [blueprintCopy count] == 0;

  return v15;
}

- (BOOL)_validateNumberOfBlueprints:(id)blueprints
{
  v32[1] = *MEMORY[0x1E69E9840];
  blueprintsCopy = blueprints;
  users = [(STBlueprint *)self users];
  anyObject = [users anyObject];
  dsid = [anyObject dsid];
  type = [(STBlueprint *)self type];
  organization = [(STBlueprint *)self organization];
  v10 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:dsid ofType:type fromOrganization:organization];

  v28 = 0;
  v11 = [v10 execute:&v28];
  v12 = v28;
  if (v11)
  {
    type2 = [(STBlueprint *)self type];
    if (type2 == @"downtime")
    {
      goto LABEL_10;
    }

    v14 = type2;
    type3 = [(STBlueprint *)self type];
    if (type3 != @"restrictions")
    {
      v16 = type3;
      type4 = [(STBlueprint *)self type];
      if (type4 != @"managed-user")
      {
        v18 = type4;
        type5 = [(STBlueprint *)self type];

        if (type5 != @"always-allowed-apps")
        {
LABEL_14:
          v20 = [blueprintsCopy count] == 0;
          goto LABEL_15;
        }

LABEL_10:
        if (![v11 count])
        {
          v21 = MEMORY[0x1E696ABC0];
          v31 = *MEMORY[0x1E696A578];
          v32[0] = @"There are no blueprints for the given type";
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
          v23 = [v21 errorWithDomain:@"STErrorDomain" code:537 userInfo:v22];
          [blueprintsCopy addObject:v23];
        }

        if ([v11 count] >= 2)
        {
          v24 = MEMORY[0x1E696ABC0];
          v29 = *MEMORY[0x1E696A578];
          v30 = @"There are multiple blueprints for a given type";
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          v26 = [v24 errorWithDomain:@"STErrorDomain" code:538 userInfo:v25];
          [blueprintsCopy addObject:v26];
        }

        goto LABEL_14;
      }
    }

    goto LABEL_10;
  }

  [blueprintsCopy addObject:v12];
  v20 = 0;
LABEL_15:

  return v20;
}

- (BOOL)_validateType:(id)type
{
  v22[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  type = [(STBlueprint *)self type];

  if (!type)
  {
    v6 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22[0] = @"Every blueprint must have a valid type";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v8 = [v6 errorWithDomain:@"STErrorDomain" code:539 userInfo:v7];
    [typeCopy addObject:v8];
  }

  type2 = [(STBlueprint *)self type];
  if ([type2 isEqualToString:@"downtime"])
  {
    goto LABEL_12;
  }

  type3 = [(STBlueprint *)self type];
  if (([type3 isEqualToString:@"restrictions"] & 1) == 0)
  {
    type4 = [(STBlueprint *)self type];
    if (![type4 isEqualToString:@"usage-limit"])
    {
      type5 = [(STBlueprint *)self type];
      if (([type5 isEqualToString:@"managed-user"] & 1) == 0)
      {
        type6 = [(STBlueprint *)self type];
        if (([type6 isEqualToString:@"always-allowed-apps"] & 1) == 0)
        {
          type7 = [(STBlueprint *)self type];
          v17 = [type7 isEqualToString:@"usage-limit-override"];

          if (v17)
          {
            goto LABEL_13;
          }

          v18 = MEMORY[0x1E696ABC0];
          v19 = *MEMORY[0x1E696A578];
          v20 = @"Blueprint type is not recognized";
          type2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
          type3 = [v18 errorWithDomain:@"STErrorDomain" code:540 userInfo:type2];
          [typeCopy addObject:type3];
          goto LABEL_11;
        }
      }
    }
  }

LABEL_11:

LABEL_12:
LABEL_13:
  v14 = [typeCopy count] == 0;

  return v14;
}

- (BOOL)_validateBlueprintIdentifier:(id)identifier
{
  v74[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  type = [(STBlueprint *)self type];
  if (type != @"always-allowed-apps")
  {
    v6 = type;
    type2 = [(STBlueprint *)self type];
    if (type2 != @"restrictions")
    {
      v8 = type2;
      type3 = [(STBlueprint *)self type];
      if (type3 != @"downtime")
      {
        v10 = type3;
        type4 = [(STBlueprint *)self type];

        if (type4 != @"managed-user")
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_8:
  type5 = [(STBlueprint *)self type];
  users = [(STBlueprint *)self users];
  anyObject = [users anyObject];
  dsid = [anyObject dsid];
  organization = [(STBlueprint *)self organization];
  v17 = createBlueprintIdentifierForType(type5, 0, dsid, organization);

  identifier = [(STBlueprint *)self identifier];

  if (v17 != identifier)
  {
    v19 = MEMORY[0x1E696ABC0];
    v73 = *MEMORY[0x1E696A578];
    v74[0] = @"Invalid identifier";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:&v73 count:1];
    v21 = [v19 errorWithDomain:@"STErrorDomain" code:541 userInfo:v20];
    [identifierCopy addObject:v21];
  }

LABEL_11:
  organization2 = [(STBlueprint *)self organization];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    type6 = [(STBlueprint *)self type];
    if (type6 != @"always-allowed-apps")
    {
      v25 = type6;
      type7 = [(STBlueprint *)self type];
      if (type7 == @"restrictions")
      {
      }

      else
      {
        v27 = type7;
        type8 = [(STBlueprint *)self type];

        if (type8 != @"downtime")
        {
          goto LABEL_19;
        }
      }
    }

    identifier2 = [(STBlueprint *)self identifier];
    users2 = [(STBlueprint *)self users];
    anyObject2 = [users2 anyObject];
    dsid2 = [anyObject2 dsid];
    stringValue = [dsid2 stringValue];
    v34 = [identifier2 containsString:stringValue];

    if ((v34 & 1) == 0)
    {
      v35 = MEMORY[0x1E696ABC0];
      v71 = *MEMORY[0x1E696A578];
      v72 = @"Blueprint identifier doesn't have DSID or is assigned to a different family member.";
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v37 = [v35 errorWithDomain:@"STErrorDomain" code:541 userInfo:v36];
      [identifierCopy addObject:v37];
    }
  }

LABEL_19:
  type9 = [(STBlueprint *)self type];

  if (type9 == @"managed-user")
  {
    identifier3 = [(STBlueprint *)self identifier];
    users3 = [(STBlueprint *)self users];
    anyObject3 = [users3 anyObject];
    dsid3 = [anyObject3 dsid];
    stringValue2 = [dsid3 stringValue];
    v44 = [identifier3 containsString:stringValue2];

    if ((v44 & 1) == 0)
    {
      v45 = MEMORY[0x1E696ABC0];
      v69 = *MEMORY[0x1E696A578];
      v70 = @"Managed User blueprint identifier doesn't have DSID or is assigned to a different family member.";
      v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v47 = [v45 errorWithDomain:@"STErrorDomain" code:541 userInfo:v46];
      [identifierCopy addObject:v47];
    }
  }

  type10 = [(STBlueprint *)self type];
  if (type10 == @"always-allowed-apps" || (v49 = type10, [(STBlueprint *)self type], v50 = objc_claimAutoreleasedReturnValue(), v50, v49, v50 == @"downtime"))
  {
    organization3 = [(STBlueprint *)self organization];
    objc_opt_class();
    v52 = objc_opt_isKindOfClass();

    identifier4 = [(STBlueprint *)self identifier];
    v54 = identifier4;
    if (v52)
    {
      v55 = [identifier4 containsString:@"family"];

      if ((v55 & 1) == 0)
      {
        v56 = MEMORY[0x1E696ABC0];
        v67 = *MEMORY[0x1E696A578];
        v68 = @"Missing organization identifier in Blueprint identifier";
        v57 = MEMORY[0x1E695DF20];
        v58 = &v68;
        v59 = &v67;
LABEL_29:
        v61 = [v57 dictionaryWithObjects:v58 forKeys:v59 count:1];
        v62 = [v56 errorWithDomain:@"STErrorDomain" code:542 userInfo:v61];
        [identifierCopy addObject:v62];
      }
    }

    else
    {
      v60 = [identifier4 containsString:@"personal"];

      if ((v60 & 1) == 0)
      {
        v56 = MEMORY[0x1E696ABC0];
        v65 = *MEMORY[0x1E696A578];
        v66 = @"Missing organization identifier in Blueprint identifier";
        v57 = MEMORY[0x1E695DF20];
        v58 = &v66;
        v59 = &v65;
        goto LABEL_29;
      }
    }
  }

  v63 = [identifierCopy count] == 0;

  return v63;
}

- (BOOL)_validateBlueprintConfiguration:(id)configuration
{
  v14[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  type = [(STBlueprint *)self type];

  if (type == @"restrictions" || (-[STBlueprint configurations](self, "configurations"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v7))
  {
    v8 = 1;
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A578];
    v14[0] = @"Blueprints other than Content & Privacy should have a configuration set.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [v9 errorWithDomain:@"STErrorDomain" code:543 userInfo:v10];
    [configurationCopy addObject:v11];

    v8 = 0;
  }

  return v8;
}

+ (BOOL)saveDefaultAlwaysAllowListIfNecessaryForUser:(id)user error:(id *)error
{
  userCopy = user;
  v6 = +[STLog persistence];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1B831F000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to save the default Always Allow list, if necessary.", v10, 2u);
  }

  v7 = +[STBlueprint defaultAlwaysAllowBundleIDs];
  v8 = [STBlueprint saveAlwaysAllowListForUser:userCopy withBundleIDs:v7 overwriteExistingList:0 error:error];

  return v8;
}

+ (BOOL)saveAlwaysAllowListForUser:(id)user withBundleIDs:(id)ds overwriteExistingList:(BOOL)list error:(id *)error
{
  v83[1] = *MEMORY[0x1E69E9840];
  userCopy = user;
  dsCopy = ds;
  managingOrganization = [userCopy managingOrganization];
  if (managingOrganization)
  {
    errorCopy = error;
    dsid = [userCopy dsid];
    alwaysAllowActivationIdentifier = [userCopy alwaysAllowActivationIdentifier];
    v14 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:dsid ofType:@"always-allowed-apps" withIdentifier:alwaysAllowActivationIdentifier fromOrganization:managingOrganization];

    v81 = 0;
    v15 = [v14 execute:&v81];
    v16 = v81;
    if (!v15)
    {
      v24 = +[STLog persistence];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
      }

      if (errorCopy)
      {
        v25 = v16;
        v23 = 0;
        *errorCopy = v16;
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_56;
    }

    if ([v15 count] >= 2)
    {
      v17 = +[STLog persistence];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
      }
    }

    managedObjectContext = [userCopy managedObjectContext];
    firstObject = [v15 firstObject];
    v72 = managedObjectContext;
    if (firstObject)
    {
      v20 = firstObject;
      if (!list)
      {
        v58 = +[STLog persistence];
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          [STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:v58 withBundleIDs:? overwriteExistingList:? error:?];
        }

        v23 = 1;
        goto LABEL_55;
      }

      v68 = v14;
    }

    else
    {
      v68 = v14;
      v20 = [[STBlueprint alloc] initWithContext:managedObjectContext];
      [(STBlueprint *)v20 setType:@"always-allowed-apps"];
      alwaysAllowActivationIdentifier2 = [userCopy alwaysAllowActivationIdentifier];
      [(STBlueprint *)v20 setIdentifier:alwaysAllowActivationIdentifier2];

      [(STBlueprint *)v20 setOrganization:managingOrganization];
      v27 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{userCopy, 0}];
      [(STBlueprint *)v20 setUsers:v27];
    }

    [(STBlueprint *)v20 setIsDirty:1];
    v28 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID.URIRepresentation.absoluteString" ascending:1];
    v83[0] = v28;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:1];
    v30 = v29 = v20;

    v31 = MEMORY[0x1E696AE18];
    alwaysAllowConfigurationIdentifier = [userCopy alwaysAllowConfigurationIdentifier];
    v33 = [v31 predicateWithFormat:@"%K == %@", @"identifier", alwaysAllowConfigurationIdentifier];

    configurations = [(STBlueprint *)v29 configurations];
    v67 = v33;
    v35 = [configurations filteredSetUsingPredicate:v33];
    v70 = v30;
    v36 = v30;
    v20 = v29;
    v37 = [v35 sortedArrayUsingDescriptors:v36];
    firstObject2 = [v37 firstObject];

    v71 = firstObject2;
    if (!firstObject2)
    {
      v39 = [[STBlueprintConfiguration alloc] initWithContext:v72];
      alwaysAllowConfigurationIdentifier2 = [userCopy alwaysAllowConfigurationIdentifier];
      [(STBlueprintConfiguration *)v39 setIdentifier:alwaysAllowConfigurationIdentifier2];

      v71 = v39;
      [(STBlueprintConfiguration *)v39 setBlueprint:v20];
    }

    v41 = MEMORY[0x1E6996238];
    alwaysAllowConfigurationIdentifier3 = [userCopy alwaysAllowConfigurationIdentifier];
    v43 = [v41 buildWithIdentifier:alwaysAllowConfigurationIdentifier3 withMode:*MEMORY[0x1E6996198] withApps:dsCopy withExemptApps:MEMORY[0x1E695E0F0]];

    v44 = v43;
    [v43 updateServerHash];
    v80 = v16;
    v45 = [v43 serializeAsDataWithError:&v80];
    v46 = v80;

    v47 = v45;
    v14 = v68;
    v66 = v44;
    if (v47)
    {
      v65 = v47;
      [v71 setPayloadPlist:v47];
      declarationType = [v44 declarationType];
      [v71 setType:declarationType];

      dsid2 = [userCopy dsid];
      v50 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:dsid2 ofType:@"usage-limit" fromOrganization:managingOrganization];

      v79 = v46;
      v51 = [v50 execute:&v79];
      v52 = v79;

      if (v51)
      {
        v69 = v52;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v15 = v51;
        v53 = [v15 countByEnumeratingWithState:&v75 objects:v82 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v76;
          do
          {
            for (i = 0; i != v54; ++i)
            {
              if (*v76 != v55)
              {
                objc_enumerationMutation(v15);
              }

              [*(*(&v75 + 1) + 8 * i) updateUsageLimitWithAlwaysAllowBundleIdentifiers:dsCopy];
            }

            v54 = [v15 countByEnumeratingWithState:&v75 objects:v82 count:16];
          }

          while (v54);
        }

        if (![v72 hasChanges])
        {
          v23 = 1;
          v14 = v50;
          v46 = v69;
LABEL_53:
          v47 = v65;
          goto LABEL_54;
        }

        v74 = v52;
        v57 = [v72 save:&v74];
        v46 = v74;

        if (v57)
        {
          v23 = 1;
LABEL_52:
          v14 = v50;
          goto LABEL_53;
        }

        v63 = +[STLog persistence];
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
        }

        v60 = errorCopy;
        if (!errorCopy)
        {
LABEL_51:
          v23 = 0;
          goto LABEL_52;
        }
      }

      else
      {
        v61 = +[STLog persistence];
        v60 = errorCopy;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
        }

        v15 = 0;
        v46 = v52;
        if (!errorCopy)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v59 = +[STLog persistence];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
      {
        +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
      }

      v60 = errorCopy;
      if (!errorCopy)
      {
        v23 = 0;
LABEL_54:

        v16 = v46;
        v58 = v70;
LABEL_55:

LABEL_56:
        goto LABEL_57;
      }

      v65 = 0;
      v50 = v68;
    }

    v62 = v46;
    v23 = 0;
    *v60 = v46;
    goto LABEL_52;
  }

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:21 userInfo:0];
  v21 = +[STLog persistence];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
  }

  if (error)
  {
    v22 = v16;
    v23 = 0;
    *error = v16;
  }

  else
  {
    v23 = 0;
  }

LABEL_57:

  return v23;
}

- (id)alwaysAllowBundleIdentifiersWithError:(id *)error
{
  users = [(STBlueprint *)self users];
  anyObject = [users anyObject];

  v6 = [STBlueprint alwaysAllowBundleIdentifiersForUser:anyObject error:error];

  return v6;
}

+ (id)alwaysAllowBundleIdentifiersForUser:(id)user error:(id *)error
{
  userCopy = user;
  managingOrganization = [userCopy managingOrganization];
  if (managingOrganization)
  {
    dsid = [userCopy dsid];
    alwaysAllowActivationIdentifier = [userCopy alwaysAllowActivationIdentifier];
    v9 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:dsid ofType:@"always-allowed-apps" withIdentifier:alwaysAllowActivationIdentifier fromOrganization:managingOrganization];

    v41 = 0;
    v10 = [v9 execute:&v41];
    v11 = v41;
    if (v10)
    {
      if ([v10 count] >= 2)
      {
        v12 = +[STLog persistence];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
        }
      }

      firstObject = [v10 firstObject];
      v14 = firstObject;
      if (firstObject)
      {
        configurations = [firstObject configurations];
        if ([configurations count] >= 2)
        {
          v16 = +[STLog persistence];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
          }
        }

        v39 = v9;
        anyObject = [configurations anyObject];
        v18 = anyObject;
        if (anyObject)
        {
          v19 = MEMORY[0x1E6996238];
          payloadPlist = [anyObject payloadPlist];
          v40 = v11;
          v21 = [v19 declarationForData:payloadPlist error:&v40];
          v22 = v40;

          if (v21)
          {
            payloadApps = [v21 payloadApps];
            v24 = payloadApps;
            v25 = MEMORY[0x1E695E0F0];
            if (payloadApps)
            {
              v25 = payloadApps;
            }

            v26 = v25;
          }

          else
          {
            v35 = +[STLog persistence];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              +[STBlueprint(AlwaysAllow) alwaysAllowBundleIdentifiersForUser:error:];
            }

            if (error)
            {
              v36 = v22;
              v26 = 0;
              *error = v22;
            }

            else
            {
              v26 = 0;
            }
          }
        }

        else
        {
          v33 = +[STLog persistence];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [STBlueprint(AlwaysAllow) alwaysAllowBundleIdentifiersForUser:userCopy error:?];
          }

          v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:543 userInfo:0];

          if (error)
          {
            v34 = v22;
            v26 = 0;
            *error = v22;
          }

          else
          {
            v26 = 0;
          }
        }

        v9 = v39;
      }

      else
      {
        v31 = +[STLog persistence];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [STBlueprint(AlwaysAllow) alwaysAllowBundleIdentifiersForUser:userCopy error:?];
        }

        v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:14 userInfo:0];

        if (error)
        {
          v32 = v22;
          v26 = 0;
          *error = v22;
        }

        else
        {
          v26 = 0;
        }
      }

      v11 = v22;
    }

    else
    {
      v29 = +[STLog persistence];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
      }

      if (error)
      {
        v30 = v11;
        v26 = 0;
        *error = v11;
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:21 userInfo:0];
    v27 = +[STLog persistence];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      +[STBlueprint(AlwaysAllow) alwaysAllowBundleIdentifiersForUser:error:];
    }

    if (error)
    {
      v28 = v11;
      v26 = 0;
      *error = v11;
    }

    else
    {
      v26 = 0;
    }
  }

  return v26;
}

- (void)setDowntimeEnabled:(BOOL)enabled
{
  [(STBlueprint *)self setEnabled:enabled];

  [(STBlueprint *)self setIsDirty:1];
}

- (id)_downtimeConfigurationAtDate:(id)date inCalendar:(id)calendar
{
  calendarCopy = calendar;
  dateCopy = date;
  schedule = [(STBlueprint *)self schedule];
  activeOverride = [(STBlueprint *)self activeOverride];
  v10 = STUTCErasedDateFromDate(dateCopy, calendarCopy);

  v11 = [calendarCopy copy];
  v12 = STUTCTimeZone();
  [v11 setTimeZone:v12];

  v13 = [[STDowntimeConfiguration alloc] initWithCurrentState:0 currentDate:v10 nextState:0 nextStateChangeDate:0 calendar:v11];
  enabled = [schedule enabled];
  if (-[STBlueprint enabled](self, "enabled") & 1) != 0 || (enabled & 1) != 0 || activeOverride && ([activeOverride isActiveAtDate:v10])
  {
    if ([activeOverride isActiveAtDate:v10])
    {
      state = [activeOverride state];
      v16 = 2;
      if (!enabled)
      {
        v16 = 0;
      }

      v17 = enabled;
      v18 = 4;
      if (state != 1)
      {
        v18 = 0;
        v17 = 0;
      }

      if (state)
      {
        v19 = v18;
      }

      else
      {
        v19 = 3;
      }

      if (state)
      {
        v20 = v17;
      }

      else
      {
        v20 = v16;
      }

      v21 = [STDowntimeConfiguration alloc];
      endDate = [activeOverride endDate];
      v23 = [(STDowntimeConfiguration *)v21 initWithCurrentState:v19 currentDate:v10 nextState:v20 nextStateChangeDate:endDate calendar:v11];

      v24 = v23;
      goto LABEL_26;
    }

    if (enabled)
    {
      v25 = [schedule isActiveAtDate:v10 inCalendar:v11];
      if (v25)
      {
        v26 = 2;
      }

      else
      {
        v26 = 1;
      }

      if (v25)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      v28 = [schedule computeNextScheduleBoundaryAfterDate:v10 inCalendar:v11 isStartDate:0];
      v29 = [[STDowntimeConfiguration alloc] initWithCurrentState:v26 currentDate:v10 nextState:v27 nextStateChangeDate:v28 calendar:v11];

      v30 = v29;
      goto LABEL_27;
    }
  }

  v24 = v13;
LABEL_26:
  v30 = v24;
LABEL_27:

  return v30;
}

- (STDowntimeConfiguration)downtimeConfiguration
{
  v3 = [MEMORY[0x1E695DF00] now];
  autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v5 = [(STBlueprint *)self _downtimeConfigurationAtDate:v3 inCalendar:autoupdatingCurrentCalendar];

  return v5;
}

+ (id)downtimeConfigurationForUserID:(id)d context:(id)context error:(id *)error
{
  contextCopy = context;
  v8 = [STBlueprint _userForUserID:d inContext:contextCopy error:error];
  v9 = [STBlueprint _downtimeForUser:v8 inContext:contextCopy error:error];

  if (v9)
  {
    downtimeConfiguration = [v9 downtimeConfiguration];
  }

  else
  {
    downtimeConfiguration = 0;
  }

  return downtimeConfiguration;
}

- (void)setStartTime:(id)time endTime:(id)endTime
{
  endTimeCopy = endTime;
  timeCopy = time;
  schedule = [(STBlueprint *)self schedule];
  [schedule setStartTime:timeCopy endTime:endTimeCopy];

  [(STBlueprint *)self setIsDirty:1];

  [(STBlueprint *)self _updateActiveOverrideAfterScheduleChange];
}

- (void)setStartTime:(id)time endTime:(id)endTime forDay:(unint64_t)day
{
  endTimeCopy = endTime;
  timeCopy = time;
  schedule = [(STBlueprint *)self schedule];
  [schedule setStartTime:timeCopy endTime:endTimeCopy forDay:day];

  [(STBlueprint *)self setIsDirty:1];

  [(STBlueprint *)self _updateActiveOverrideAfterScheduleChange];
}

- (void)disableDowntimeForDay:(unint64_t)day
{
  schedule = [(STBlueprint *)self schedule];
  [schedule setStartTime:0 endTime:0 forDay:day];

  [(STBlueprint *)self setIsDirty:1];

  [(STBlueprint *)self _updateActiveOverrideAfterScheduleChange];
}

- (void)_updateActiveOverrideAfterScheduleChange
{
  v3 = [[STBlueprintBackedDowntimeOverrideModifier alloc] initWithDowntimeBlueprint:self];
  v7 = 0;
  v4 = [STDowntimeOverrideUpdater updateActiveOverrideOnBlueprintNow:self usingModifier:v3 error:&v7];
  v5 = v7;
  if (!v4)
  {
    v6 = +[STLog blueprint];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [STBlueprint(Downtime) _updateActiveOverrideAfterScheduleChange];
    }
  }
}

- (id)activeOverride
{
  v10 = *MEMORY[0x1E69E9840];
  override = [(STBlueprint *)self override];
  v3 = override;
  if (!override || ([override isTombstoned] & 1) != 0 || objc_msgSend(v3, "isDeleted"))
  {
    v4 = +[STLog blueprint];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1B831F000, v4, OS_LOG_TYPE_INFO, "No active override for downtime", &v8, 2u);
    }

    v5 = 0;
  }

  else
  {
    managedObjectContext = [v3 managedObjectContext];
    v5 = [STDowntimeOverrideTransformer downtimeOverrideFromCoreDowntimeOverride:v3 inContext:managedObjectContext];

    v4 = +[STLog blueprint];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1B831F000, v4, OS_LOG_TYPE_DEFAULT, "Got active override for downtime: %@", &v8, 0xCu);
    }
  }

  return v5;
}

- (id)_applyOnDemandDowntimeStateChange:(int64_t)change withFixedDuration:(double)duration atDate:(id)date inCalendar:(id)calendar error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  v13 = STUTCErasedDateFromDate(date, calendarCopy);
  v14 = [calendarCopy copy];

  v15 = STUTCTimeZone();
  [v14 setTimeZone:v15];

  v16 = +[STLog blueprint];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (change)
    {
      v17 = @"Enable";
    }

    else
    {
      v17 = @"Disable";
    }

    v18 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
    v24 = 138412802;
    v25 = v17;
    v26 = 2112;
    v27 = v18;
    v28 = 2112;
    v29 = v13;
    _os_log_impl(&dword_1B831F000, v16, OS_LOG_TYPE_DEFAULT, "Applying on-demand state change: %@, for fixed duration: %@, at: %@", &v24, 0x20u);
  }

  v19 = [STDowntimeOverrideBuilder createFixedDurationOverrideWithInterval:change == 1 state:v13 creationDate:v14 calendar:duration];
  v20 = [[STBlueprintBackedDowntimeOverrideModifier alloc] initWithDowntimeBlueprint:self];
  v21 = [(STBlueprintBackedDowntimeOverrideModifier *)v20 applyDowntimeOverride:v19 error:error];

  if (v21)
  {
    v22 = [(STBlueprint *)self _downtimeConfigurationAtDate:v13 inCalendar:v14];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)_applyAutomaticOnDemandDowntimeStateChange:(int64_t)change atDate:(id)date inCalendar:(id)calendar error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  v11 = STUTCErasedDateFromDate(date, calendarCopy);
  v12 = [calendarCopy copy];

  v13 = STUTCTimeZone();
  [v12 setTimeZone:v13];

  v14 = [(STBlueprint *)self _downtimeConfigurationAtDate:v11 inCalendar:v12];
  if (+[STBlueprint _isStateChangeValid:forState:](STBlueprint, "_isStateChangeValid:forState:", change, [v14 currentState]))
  {
    v15 = +[STLog blueprint];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"Enable";
      if (!change)
      {
        v16 = @"Disable";
      }

      v23 = 138412546;
      v24 = v16;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_1B831F000, v15, OS_LOG_TYPE_DEFAULT, "Applying on-demand (automatic duration) state change: %@ at: %@", &v23, 0x16u);
    }

    schedule = [(STBlueprint *)self schedule];
    v18 = [STDowntimeOverrideBuilder createAutomaticOverrideWithState:change == 1 schedule:schedule creationDate:v11 calendar:v12];

    v19 = [[STBlueprintBackedDowntimeOverrideModifier alloc] initWithDowntimeBlueprint:self];
    v20 = [(STBlueprintBackedDowntimeOverrideModifier *)v19 applyDowntimeOverride:v18 error:error];

    if (v20)
    {
      v21 = [(STBlueprint *)self _downtimeConfigurationAtDate:v11 inCalendar:v12];
      [(STBlueprint *)self _reportCoreAnalyticsEventForDowntimeOverride:v18 currentDate:v11];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:1 userInfo:0];
    }
  }

  return v21;
}

+ (BOOL)_isStateChangeValid:(int64_t)valid forState:(int64_t)state
{
  v4 = valid == 0;
  v5 = valid == 1;
  v6 = valid == 0;
  if (state != 4)
  {
    v6 = valid == 0;
  }

  if (state != 3)
  {
    v5 = v6;
  }

  if (state != 2)
  {
    v4 = v5;
  }

  v7 = valid == 1;
  v8 = valid == 1;
  if (state != 1)
  {
    v8 = v4;
  }

  if (state)
  {
    v7 = v8;
  }

  if (state <= 1)
  {
    return v7;
  }

  return v4;
}

+ (id)_downtimeForUser:(id)user inContext:(id)context error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  userCopy = user;
  managingOrganization = [userCopy managingOrganization];
  if (managingOrganization)
  {
    dsid = [userCopy dsid];
    v9 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:dsid ofType:@"downtime" fromOrganization:managingOrganization];

    v21 = 0;
    v10 = [v9 execute:&v21];
    v11 = v21;
    if (v10)
    {
      if ([v10 count] >= 2)
      {
        v12 = +[STLog persistence];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          +[STBlueprint(Downtime) _downtimeForUser:inContext:error:];
        }
      }

      firstObject = [v10 firstObject];
      v14 = firstObject;
      if (firstObject)
      {
        v14 = firstObject;
        v15 = v14;
      }

      else
      {
        v18 = +[STLog blueprint];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          dsid2 = [userCopy dsid];
          *buf = 138412290;
          v23 = dsid2;
          _os_log_impl(&dword_1B831F000, v18, OS_LOG_TYPE_INFO, "User has no downtime: %@", buf, 0xCu);
        }

        v15 = 0;
      }
    }

    else
    {
      v14 = +[STLog blueprint];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint(Downtime) _downtimeForUser:inContext:error:];
      }

      v15 = 0;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:21 userInfo:0];
    v16 = +[STLog persistence];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
    }

    if (error)
    {
      v17 = v11;
      v15 = 0;
      *error = v11;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)applyOnDemandDowntimeStateChange:(int64_t)change withFixedDuration:(double)duration error:(id *)error
{
  v9 = [MEMORY[0x1E695DF00] now];
  autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v11 = [(STBlueprint *)self _applyOnDemandDowntimeStateChange:change withFixedDuration:v9 atDate:autoupdatingCurrentCalendar inCalendar:error error:duration];

  return v11;
}

- (BOOL)removeFixedDurationOnDemandDowntimeWithError:(id *)error
{
  v5 = +[STLog blueprint];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Removing fixed duration on-demand downtime", v11, 2u);
  }

  activeOverride = [(STBlueprint *)self activeOverride];
  v7 = activeOverride;
  if (activeOverride && [activeOverride type] == 1)
  {
    v8 = [[STBlueprintBackedDowntimeOverrideModifier alloc] initWithDowntimeBlueprint:self];
    v9 = [(STBlueprintBackedDowntimeOverrideModifier *)v8 removeDowntimeOverrideWithError:error];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)applyAutomaticOnDemandDowntimeStateChange:(int64_t)change error:(id *)error
{
  v7 = [MEMORY[0x1E695DF00] now];
  autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v9 = [(STBlueprint *)self _applyAutomaticOnDemandDowntimeStateChange:change atDate:v7 inCalendar:autoupdatingCurrentCalendar error:error];

  return v9;
}

- (id)applyScheduleStateChange:(int64_t)change error:(id *)error
{
  v7 = [MEMORY[0x1E695DF00] now];
  autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v9 = [(STBlueprint *)self _applyScheduleStateChange:change atDate:v7 inCalendar:autoupdatingCurrentCalendar error:error];

  return v9;
}

+ (id)applyOnDemandDowntimeStateChange:(int64_t)change withFixedDuration:(double)duration forUserID:(id)d context:(id)context error:(id *)error
{
  v10 = [STBlueprint _fetchOrCreateDowntimeForUserID:d inContext:context error:error];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 applyOnDemandDowntimeStateChange:change withFixedDuration:error error:duration];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)removeFixedDurationOnDemandDowntimeForUserID:(id)d context:(id)context error:(id *)error
{
  contextCopy = context;
  v8 = [STBlueprint _userForUserID:d inContext:contextCopy error:error];
  v9 = [STBlueprint _downtimeForUser:v8 inContext:contextCopy error:error];

  if (v9)
  {
    v10 = [v9 removeFixedDurationOnDemandDowntimeWithError:error];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

+ (id)applyAutomaticOnDemandDowntimeStateChange:(int64_t)change forUserID:(id)d context:(id)context error:(id *)error
{
  v8 = [STBlueprint _fetchOrCreateDowntimeForUserID:d inContext:context error:error];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 applyAutomaticOnDemandDowntimeStateChange:change error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)applyScheduleStateChange:(int64_t)change forUserID:(id)d context:(id)context error:(id *)error
{
  v8 = [STBlueprint _fetchOrCreateDowntimeForUserID:d inContext:context error:error];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 applyScheduleStateChange:change error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_reportCoreAnalyticsEventForDowntimeOverride:(id)override currentDate:(id)date
{
  overrideCopy = override;
  dateCopy = date;
  state = [overrideCopy state];
  configurations = [(STBlueprint *)self configurations];
  anyObject = [configurations anyObject];

  v10 = [STBlueprint shouldUseGracePeriodForDowntimeOverride:overrideCopy configuration:anyObject];
  schedule = [(STBlueprint *)self schedule];
  v12 = schedule;
  if (schedule)
  {
    enabled = [schedule enabled];
  }

  else
  {
    enabled = 0;
  }

  calendar = [overrideCopy calendar];
  v15 = [calendar component:32 fromDate:dateCopy];

  users = [(STBlueprint *)self users];
  anyObject2 = [users anyObject];
  isManaged = [anyObject2 isManaged];

  v19 = [[STDowntimeOverrideCoreAnalyticsEvent alloc] initWithDowntimeEnabled:state == 1 gracePeriodUsed:v10 scheduleEnabled:enabled hourOfDay:v15 userIsManaged:isManaged];
  [STCoreAnalyticsReporter reportEvent:v19];
}

+ (id)_fetchOrCreateDowntimeForUserID:(id)d inContext:(id)context error:(id *)error
{
  contextCopy = context;
  v9 = [STBlueprint _userForUserID:d inContext:contextCopy error:error];
  v10 = [STBlueprint _downtimeForUser:v9 inContext:contextCopy error:error];

  if (!v10)
  {
    isManaged = [v9 isManaged];
    v12 = +[STBlueprint defaultStartTime];
    v13 = +[STBlueprint defaultEndTime];
    v10 = [self _updatedDowntimeForUser:v9 startTime:v12 endTime:v13 scheduleByWeekdayIndex:0 enabled:0 behaviorType:isManaged error:error];
  }

  v14 = v10;

  return v14;
}

+ (id)_userForUserID:(id)d inContext:(id)context error:(id *)error
{
  dCopy = d;
  contextCopy = context;
  dsid = [dCopy dsid];
  v15 = 0;
  v10 = [STCoreUser fetchUserWithDSID:dsid inContext:contextCopy error:&v15];

  v11 = v15;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = +[STLog blueprint];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      +[STBlueprint(Downtime) _userForUserID:inContext:error:];
    }

    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:11 userInfo:0];
    }
  }

  return v10;
}

+ (BOOL)saveDowntimeForUser:(id)user startTime:(id)time endTime:(id)endTime scheduleByWeekdayIndex:(id)index enabled:(BOOL)enabled behaviorType:(unint64_t)type error:(id *)error
{
  enabledCopy = enabled;
  indexCopy = index;
  endTimeCopy = endTime;
  timeCopy = time;
  userCopy = user;
  managedObjectContext = [userCopy managedObjectContext];
  v19 = [STBlueprint _downtimeForUser:"_downtimeForUser:inContext:error:" inContext:userCopy error:?];
  schedule = [v19 schedule];
  dictionaryRepresentation = [schedule dictionaryRepresentation];

  v21 = [self _updatedDowntimeForUser:userCopy startTime:timeCopy endTime:endTimeCopy scheduleByWeekdayIndex:indexCopy enabled:enabledCopy behaviorType:type error:error];

  if (v21)
  {
    schedule2 = [v21 schedule];
    dictionaryRepresentation2 = [schedule2 dictionaryRepresentation];

    schedule3 = [v21 schedule];
    if ([schedule3 enabled] == enabledCopy)
    {
      v26 = dictionaryRepresentation;
      v28 = [dictionaryRepresentation isEqualToDictionary:dictionaryRepresentation2];

      v25 = managedObjectContext;
      if (v28)
      {
        goto LABEL_8;
      }
    }

    else
    {

      v26 = dictionaryRepresentation;
      v25 = managedObjectContext;
    }

    v39 = 0;
    v29 = [v21 applyScheduleStateChange:enabledCopy error:&v39];
    v30 = v39;

    if (!v29)
    {
      v33 = +[STLog blueprint];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        [STBlueprint(Downtime) saveDowntimeForUser:enabledCopy startTime:v30 endTime:v33 scheduleByWeekdayIndex:? enabled:? behaviorType:? error:?];
      }

      goto LABEL_18;
    }

LABEL_8:
    if ([v25 hasChanges])
    {
      v38 = 0;
      v31 = [v25 save:&v38];
      v30 = v38;
      if ((v31 & 1) == 0)
      {
        v32 = +[STLog persistence];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          +[STBlueprint(Downtime) saveDowntimeForUser:startTime:endTime:scheduleByWeekdayIndex:enabled:behaviorType:error:];
        }

LABEL_18:
        if (error)
        {
          v34 = v30;
          v27 = 0;
          *error = v30;
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v30 = 0;
    }

    v27 = 1;
LABEL_21:

    goto LABEL_22;
  }

  v27 = 0;
  v26 = dictionaryRepresentation;
  v25 = managedObjectContext;
LABEL_22:

  return v27;
}

+ (id)_updatedDowntimeForUser:(id)user startTime:(id)time endTime:(id)endTime scheduleByWeekdayIndex:(id)index enabled:(BOOL)enabled behaviorType:(unint64_t)type error:(id *)error
{
  errorCopy2 = error;
  v54[1] = *MEMORY[0x1E69E9840];
  userCopy = user;
  timeCopy = time;
  endTimeCopy = endTime;
  indexCopy = index;
  if (indexCopy || timeCopy && endTimeCopy)
  {
    managingOrganization = [userCopy managingOrganization];
    if (managingOrganization)
    {
      typeCopy = type;
      v50 = endTimeCopy;
      managedObjectContext = [userCopy managedObjectContext];
      dsid = [userCopy dsid];
      v21 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:dsid ofType:@"downtime" fromOrganization:managingOrganization];

      v52 = 0;
      v49 = v21;
      v22 = [v21 execute:&v52];
      v23 = v52;
      if (v22)
      {
        if ([v22 count] >= 2)
        {
          v24 = +[STLog persistence];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            +[STBlueprint(Downtime) _downtimeForUser:inContext:error:];
          }
        }

        firstObject = [v22 firstObject];
        if (!firstObject)
        {
          firstObject = [self _createDowntimeForUser:userCopy organization:managingOrganization context:managedObjectContext];
        }

        schedule = [firstObject schedule];
        if (!schedule)
        {
          schedule = [[STBlueprintSchedule alloc] initWithContext:managedObjectContext];
          [MEMORY[0x1E696AD98] numberWithDouble:300.0];
          v28 = v27 = timeCopy;
          [(STBlueprintSchedule *)schedule setNotificationTimeInterval:v28];

          timeCopy = v27;
          errorCopy2 = error;
          [(STBlueprintSchedule *)schedule setEnabled:0];
          [firstObject setSchedule:schedule];
        }

        v47 = timeCopy;
        v29 = [self _updatedScheduleFromSchedule:schedule withStartTime:timeCopy endTime:v50 scheduleByWeekdayIndex:indexCopy context:managedObjectContext];

        v30 = [self _configurationForDowntime:firstObject context:managedObjectContext];
        v31 = [self _declarationForDowntime:firstObject user:userCopy configuration:v30 behaviorType:typeCopy context:managedObjectContext error:errorCopy2];
        if (v31 && [self _updateConfiguration:v30 withDeclaration:v31 context:managedObjectContext error:errorCopy2])
        {
          if (([v30 hasChanges] & 1) != 0 || (objc_msgSend(v29, "hasChanges") & 1) != 0 || objc_msgSend(firstObject, "hasChanges"))
          {
            [firstObject setIsDirty:1];
          }

          errorCopy2 = firstObject;
        }

        else
        {
          errorCopy2 = 0;
        }

        v23 = v46;
        timeCopy = v47;
      }

      else
      {
        v34 = +[STLog persistence];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          +[STBlueprint(Downtime) _downtimeForUser:inContext:error:];
        }

        if (error)
        {
          v35 = v23;
          errorCopy2 = 0;
          *error = v23;
        }
      }

      endTimeCopy = v50;
      goto LABEL_37;
    }

    v32 = +[STLog persistence];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      +[STBlueprint(Downtime) _updatedDowntimeForUser:startTime:endTime:scheduleByWeekdayIndex:enabled:behaviorType:error:];
    }

    if (!error)
    {
      goto LABEL_37;
    }

    v33 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:21 userInfo:0];
LABEL_36:
    errorCopy2 = 0;
    *error = v33;
LABEL_37:

    goto LABEL_38;
  }

  v36 = +[STLog persistence];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
  {
    [(STBlueprint(Downtime) *)v36 _updatedDowntimeForUser:v37 startTime:v38 endTime:v39 scheduleByWeekdayIndex:v40 enabled:v41 behaviorType:v42 error:v43];
  }

  if (error)
  {
    v44 = objc_alloc(MEMORY[0x1E696ABC0]);
    v53 = *MEMORY[0x1E696A578];
    v54[0] = @"Cannot create downtime without valid start/end time or schedule";
    managingOrganization = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    v33 = [v44 initWithDomain:@"STErrorDomain" code:1 userInfo:managingOrganization];
    goto LABEL_36;
  }

LABEL_38:

  return errorCopy2;
}

+ (id)_organizationIdentifierForUser:(id)user context:(id)context
{
  userCopy = user;
  localUserDeviceState = [userCopy localUserDeviceState];
  v6 = &STOrganizationIdentifierFamily;
  if (localUserDeviceState)
  {
    v7 = localUserDeviceState;
    isManaged = [userCopy isManaged];

    if (!isManaged)
    {
      v6 = STOrganizationIdentifierPersonal;
    }
  }

  v9 = *v6;
  v10 = *v6;

  return v9;
}

+ (id)_userDSIDStringForUser:(id)user context:(id)context
{
  userCopy = user;
  localUserDeviceState = [userCopy localUserDeviceState];
  if (localUserDeviceState && (v6 = localUserDeviceState, v7 = [userCopy isManaged], v6, !v7))
  {
    stringValue = 0;
  }

  else
  {
    dsid = [userCopy dsid];
    stringValue = [dsid stringValue];
  }

  return stringValue;
}

+ (id)_createDowntimeForUser:(id)user organization:(id)organization context:(id)context
{
  userCopy = user;
  contextCopy = context;
  organizationCopy = organization;
  v11 = [self _organizationIdentifierForUser:userCopy context:contextCopy];
  v12 = [self _userDSIDStringForUser:userCopy context:contextCopy];
  v13 = [[STBlueprint alloc] initWithContext:contextCopy];

  [(STBlueprint *)v13 setType:@"downtime"];
  v14 = v11;
  v15 = v12;
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v15)
  {
    v17 = [v16 initWithFormat:@"%@_%@_%@", @"bedtime_activation", v14, v15];
  }

  else
  {
    v17 = [v16 initWithFormat:@"%@_%@", @"bedtime_activation", v14, v22];
  }

  v18 = v17;

  [(STBlueprint *)v13 setIdentifier:v18];
  [(STBlueprint *)v13 setOrganization:organizationCopy];

  v19 = [MEMORY[0x1E695DFD8] setWithObject:userCopy];
  [(STBlueprint *)v13 setUsers:v19];

  [(STBlueprint *)v13 setEnabled:0];
  v20 = objc_opt_new();
  [(STBlueprint *)v13 setCreationDate:v20];

  return v13;
}

+ (id)_updatedScheduleFromSchedule:(id)schedule withStartTime:(id)time endTime:(id)endTime scheduleByWeekdayIndex:(id)index context:(id)context
{
  scheduleCopy = schedule;
  timeCopy = time;
  endTimeCopy = endTime;
  indexCopy = index;
  contextCopy = context;
  if (indexCopy)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    [currentCalendar maximumRangeOfUnit:512];
    v18 = v17;

    v19 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, v18}];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __107__STBlueprint_Downtime___updatedScheduleFromSchedule_withStartTime_endTime_scheduleByWeekdayIndex_context___block_invoke;
    v21[3] = &unk_1E7CE6EC0;
    v22 = indexCopy;
    v23 = scheduleCopy;
    [v19 enumerateIndexesUsingBlock:v21];
  }

  else if (timeCopy && endTimeCopy)
  {
    [scheduleCopy setStartTime:timeCopy endTime:endTimeCopy];
  }

  return scheduleCopy;
}

void __107__STBlueprint_Downtime___updatedScheduleFromSchedule_withStartTime_endTime_scheduleByWeekdayIndex_context___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v9 = [v4 objectForKeyedSubscript:v5];

  v6 = *(a1 + 40);
  v7 = [v9 startTime];
  v8 = [v9 endTime];
  [v6 setStartTime:v7 endTime:v8 forDay:a2];
}

+ (id)_declarationModeForBehaviorType:(unint64_t)type
{
  if (type)
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    v4 = MEMORY[0x1E69961A8];
  }

  else
  {
    v4 = MEMORY[0x1E69961B0];
  }

  self = *v4;
LABEL_6:

  return self;
}

+ (id)_configurationForDowntime:(id)downtime context:(id)context
{
  v13[1] = *MEMORY[0x1E69E9840];
  downtimeCopy = downtime;
  contextCopy = context;
  v7 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"objectID.URIRepresentation.absoluteString" ascending:1];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  configurations = [downtimeCopy configurations];
  v10 = [configurations sortedArrayUsingDescriptors:v8];
  firstObject = [v10 firstObject];

  if (!firstObject)
  {
    firstObject = [[STBlueprintConfiguration alloc] initWithContext:contextCopy];
    [(STBlueprintConfiguration *)firstObject setBlueprint:downtimeCopy];
  }

  return firstObject;
}

+ (id)_declarationForDowntime:(id)downtime user:(id)user configuration:(id)configuration behaviorType:(unint64_t)type context:(id)context error:(id *)error
{
  contextCopy = context;
  configurationCopy = configuration;
  userCopy = user;
  v16 = [self _organizationIdentifierForUser:userCopy context:contextCopy];
  v17 = [self _userDSIDStringForUser:userCopy context:contextCopy];

  v18 = [self _declarationModeForBehaviorType:type];
  payloadPlist = [configurationCopy payloadPlist];

  v20 = MEMORY[0x1E6996240];
  if (!payloadPlist)
  {
    v23 = v16;
    v24 = v17;
    v25 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v24)
    {
      v26 = [v25 initWithFormat:@"%@_%@_%@", @"bedtime_configuration", v23, v24];
    }

    else
    {
      v26 = [v25 initWithFormat:@"%@_%@", @"bedtime_configuration", v23, v30];
    }

    v28 = v26;

    v21 = [v20 buildRequiredOnlyWithIdentifier:v28 withMode:v18];

    goto LABEL_12;
  }

  v31 = 0;
  v21 = [MEMORY[0x1E6996240] declarationForData:payloadPlist error:&v31];
  v22 = v31;
  if (v21)
  {
    [v21 setPayloadMode:v18];

    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    +[STBlueprint(Downtime) _declarationForDowntime:user:configuration:behaviorType:context:error:];
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (error)
  {
LABEL_8:
    v27 = v22;
    *error = v22;
  }

LABEL_9:

  v21 = 0;
LABEL_12:

  return v21;
}

+ (BOOL)_updateConfiguration:(id)configuration withDeclaration:(id)declaration context:(id)context error:(id *)error
{
  configurationCopy = configuration;
  declarationCopy = declaration;
  v10 = STAvailableVersion1CategoriesExcludingSystemCategories(declarationCopy);
  [declarationCopy setPayloadCategories:v10];

  v12 = STAvailableCategoriesExcludingSystemCategories(v11);
  [declarationCopy setPayloadCategoriesVersion2:v12];

  [declarationCopy updateServerHash];
  v22 = 0;
  v13 = [declarationCopy serializeAsDataWithError:&v22];
  v14 = v22;
  if (v13)
  {
    payloadPlist = [configurationCopy payloadPlist];
    v16 = [payloadPlist isEqualToData:v13];

    if ((v16 & 1) == 0)
    {
      [configurationCopy setPayloadPlist:v13];
      declarationIdentifier = [declarationCopy declarationIdentifier];
      [configurationCopy setIdentifier:declarationIdentifier];

      declarationType = [declarationCopy declarationType];
      [configurationCopy setType:declarationType];
    }
  }

  else
  {
    v19 = +[STLog persistence];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      +[STBlueprint(Downtime) _updateConfiguration:withDeclaration:context:error:];
    }

    if (error)
    {
      v20 = v14;
      *error = v14;
    }
  }

  return v13 != 0;
}

+ (NSDateComponents)defaultStartTime
{
  v2 = objc_opt_new();
  [v2 setHour:22];
  [v2 setMinute:0];

  return v2;
}

+ (NSDateComponents)defaultEndTime
{
  v2 = objc_opt_new();
  [v2 setHour:7];
  [v2 setMinute:0];

  return v2;
}

- (id)_applyScheduleStateChange:(int64_t)change atDate:(id)date inCalendar:(id)calendar error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  v11 = STUTCErasedDateFromDate(date, calendarCopy);
  v12 = [calendarCopy copy];

  v13 = STUTCTimeZone();
  [v12 setTimeZone:v13];

  schedule = [(STBlueprint *)self schedule];
  v15 = +[STLog blueprint];
  managedObjectContext = v15;
  if (!schedule)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(STBlueprint(Downtime) *)change _applyScheduleStateChange:managedObjectContext atDate:v19 inCalendar:v20 error:v21, v22, v23, v24];
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"Enable";
    if (!change)
    {
      v17 = @"Disable";
    }

    *buf = 138412546;
    v39 = v17;
    v40 = 2112;
    v41 = v11;
    _os_log_impl(&dword_1B831F000, managedObjectContext, OS_LOG_TYPE_DEFAULT, "Appying schedule state change: %@ at: %@", buf, 0x16u);
  }

  if (change)
  {
    if (change == 1 && ([schedule enabled] & 1) == 0)
    {
      v18 = 1;
      goto LABEL_15;
    }

LABEL_26:
    v31 = [[STBlueprintBackedDowntimeOverrideModifier alloc] initWithDowntimeBlueprint:self];
    schedule2 = [(STBlueprint *)self schedule];
    v36 = 0;
    v33 = [STDowntimeOverrideUpdater updateActiveOverrideUsingModifier:v31 byRecomputingFromSchedule:schedule2 atDate:v11 inCalendar:v12 error:&v36];
    managedObjectContext = v36;

    if (v33)
    {
      v25 = [(STBlueprint *)self _downtimeConfigurationAtDate:v11 inCalendar:v12];
    }

    else if (error)
    {
      v34 = managedObjectContext;
      v25 = 0;
      *error = managedObjectContext;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_32;
  }

  if (![schedule enabled])
  {
    goto LABEL_26;
  }

  v18 = 0;
LABEL_15:
  [schedule setEnabled:v18];
  [(STBlueprint *)self setEnabled:v18];
  [(STBlueprint *)self setIsDirty:1];
  managedObjectContext = [schedule managedObjectContext];
  if (![managedObjectContext hasChanges])
  {
    v27 = 0;
    goto LABEL_23;
  }

  v37 = 0;
  v26 = [managedObjectContext save:&v37];
  v27 = v37;
  if (v26)
  {
LABEL_23:
    v30 = +[STLog blueprint];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B831F000, v30, OS_LOG_TYPE_DEFAULT, "Saved downtime schedule state change", buf, 2u);
    }

    goto LABEL_26;
  }

  v28 = +[STLog persistence];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [STBlueprint(Downtime) _applyScheduleStateChange:atDate:inCalendar:error:];
  }

  if (error)
  {
    v29 = v27;
    *error = v27;
  }

LABEL_12:
  v25 = 0;
LABEL_32:

  return v25;
}

- (NSString)downtimeScheduleText
{
  v34 = *MEMORY[0x1E69E9840];
  schedule = [(STBlueprint *)self schedule];
  scheduleRepresentation = [schedule scheduleRepresentation];

  simpleSchedule = [scheduleRepresentation simpleSchedule];
  if (simpleSchedule)
  {
    v6 = objc_opt_class();
    startTime = [simpleSchedule startTime];
    endTime = [simpleSchedule endTime];
    v9 = [v6 simpleScheduleTimeRangeWithStartTimeComponents:startTime endTimeComponents:endTime];
  }

  else
  {
    v23 = scheduleRepresentation;
    customScheduleItems = [scheduleRepresentation customScheduleItems];
    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(customScheduleItems, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = customScheduleItems;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v17, "day")}];
          [v11 setObject:v17 forKeyedSubscript:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v14);
    }

    v19 = objc_opt_class();
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __45__STBlueprint_Downtime__downtimeScheduleText__block_invoke;
    v27[3] = &unk_1E7CE6EE8;
    v28 = v11;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __45__STBlueprint_Downtime__downtimeScheduleText__block_invoke_2;
    v24[3] = &unk_1E7CE6F10;
    v20 = v28;
    v25 = v20;
    selfCopy = self;
    v9 = [v19 scheduleTextWithLocale:0 weekdayScheduleComparator:v27 scheduleTimeGetter:v24];
    if (!v9)
    {
      v21 = +[STScreenTimeCoreBundle bundle];
      v9 = [v21 localizedStringForKey:@"ScheduleOff" value:&stru_1F3040980 table:0];
    }

    scheduleRepresentation = v23;
  }

  return v9;
}

uint64_t __45__STBlueprint_Downtime__downtimeScheduleText__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2 - 1];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3 - 1];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = [v10 startTime];
    v12 = [v7 startTime];
    if ([v11 isEqual:v12])
    {
      v13 = [v10 endTime];
      v14 = [v7 endTime];
      v15 = [v13 isEqual:v14];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id __45__STBlueprint_Downtime__downtimeScheduleText__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2 - 1];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = objc_opt_class();
    v6 = [v4 startTime];
    v7 = [v4 endTime];
    v8 = [v5 customScheduleTimeRangeWithLocale:0 startTimeComponents:v6 endTimeComponents:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)customScheduleTimeRangeWithLocale:(id)locale startTimeComponents:(id)components endTimeComponents:(id)timeComponents
{
  localeCopy = locale;
  componentsCopy = components;
  timeComponentsCopy = timeComponents;
  v10 = objc_opt_new();
  v11 = v10;
  if (localeCopy)
  {
    [v10 setLocale:localeCopy];
  }

  [v11 setTimeStyle:1];
  [v11 setDateStyle:0];
  [v11 setFormattingContext:1];
  v12 = objc_opt_new();
  v13 = v12;
  if (localeCopy)
  {
    [v12 setLocale:localeCopy];
  }

  [v13 setFormattingContext:1];
  [v13 setLocalizedDateFormatFromTemplate:@"j"];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v15 = [currentCalendar dateFromComponents:componentsCopy];
  v37 = currentCalendar;
  v39 = timeComponentsCopy;
  v16 = [currentCalendar dateFromComponents:timeComponentsCopy];
  v17 = objc_opt_new();
  v18 = v17;
  if (localeCopy)
  {
    [v17 setLocale:localeCopy];
  }

  [v18 setLocalizedDateFormatFromTemplate:@"a"];
  v41 = [v18 stringFromDate:v15];
  v40 = [v18 stringFromDate:v16];
  v19 = MEMORY[0x1E696AB78];
  if (localeCopy)
  {
    v20 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"j" options:0 locale:localeCopy];
  }

  else
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v20 = [v19 dateFormatFromTemplate:@"j" options:0 locale:currentLocale];
  }

  v38 = componentsCopy;
  if ([v20 containsString:@"H"])
  {

LABEL_13:
    v23 = 0;
    v24 = 1;
    goto LABEL_15;
  }

  v22 = [v20 containsString:@"k"];

  if (v22)
  {
    goto LABEL_13;
  }

  minute = [componentsCopy minute];
  v24 = 0;
  v23 = minute == 0;
LABEL_15:
  if ([v41 isEqualToString:v40])
  {
    v26 = objc_opt_new();
    v27 = v26;
    if (localeCopy)
    {
      [v26 setLocale:localeCopy];
    }

    [v27 setFormattingContext:1];
    if (v23)
    {
      v28 = @"J";
    }

    else
    {
      v28 = @"Jmm";
    }

    [v27 setLocalizedDateFormatFromTemplate:v28];
    v29 = [v27 stringFromDate:v15];
  }

  else
  {
    if (v23)
    {
      v30 = v13;
    }

    else
    {
      v30 = v11;
    }

    v29 = [v30 stringFromDate:v15];
  }

  v31 = v11;
  if ((v24 & 1) == 0)
  {
    if ([v39 minute])
    {
      v31 = v11;
    }

    else
    {
      v31 = v13;
    }
  }

  v32 = [v31 stringFromDate:v16];
  v33 = +[STScreenTimeCoreBundle bundle];
  v34 = [v33 localizedStringForKey:@"TimeRangeFormat" value:&stru_1F3040980 table:0];

  v35 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v34, v29, v32];

  return v35;
}

+ (id)simpleScheduleTimeRangeWithStartTimeComponents:(id)components endTimeComponents:(id)timeComponents
{
  componentsCopy = components;
  timeComponentsCopy = timeComponents;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = objc_opt_new();
  v9 = [currentCalendar startOfDayForDate:v8];

  if ([currentCalendar date:v9 matchesComponents:componentsCopy])
  {
    v10 = v9;
  }

  else
  {
    v10 = [currentCalendar nextDateAfterDate:v9 matchingComponents:componentsCopy options:512];
  }

  v11 = v10;
  if ([currentCalendar date:v9 matchesComponents:timeComponentsCopy])
  {
    v12 = v9;
  }

  else
  {
    v12 = [currentCalendar nextDateAfterDate:v9 matchingComponents:timeComponentsCopy options:512];
  }

  v13 = v12;
  v14 = objc_opt_new();
  [v14 setDateStyle:0];
  [v14 setTimeStyle:1];
  v15 = [v14 stringFromDate:v11 toDate:v13];

  return v15;
}

+ (BOOL)saveManagedUserBlueprintForUser:(id)user error:(id *)error
{
  userCopy = user;
  v7 = [self createManagedUserBlueprintForUser:userCopy error:error];
  if (!v7)
  {
    v15 = +[STLog blueprint];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(STBlueprint(ManagedUser) *)v15 saveManagedUserBlueprintForUser:v16 error:v17, v18, v19, v20, v21, v22];
    }

    v12 = 0;
    if (error)
    {
      goto LABEL_11;
    }

LABEL_14:
    v23 = 0;
    goto LABEL_15;
  }

  managedObjectContext = [userCopy managedObjectContext];
  hasChanges = [managedObjectContext hasChanges];

  if (!hasChanges)
  {
    v12 = 0;
    goto LABEL_13;
  }

  managedObjectContext2 = [userCopy managedObjectContext];
  v25 = 0;
  v11 = [managedObjectContext2 save:&v25];
  v12 = v25;

  if (v11)
  {
LABEL_13:
    v23 = 1;
    goto LABEL_15;
  }

  v13 = +[STLog persistence];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    +[STBlueprint(ManagedUser) saveManagedUserBlueprintForUser:error:];
  }

  if (!error)
  {
    goto LABEL_14;
  }

  v14 = v12;
LABEL_11:
  v23 = 0;
  *error = v12;
LABEL_15:

  return v23;
}

+ (id)createManagedUserBlueprintForUser:(id)user error:(id *)error
{
  userCopy = user;
  managingOrganization = [userCopy managingOrganization];
  if (managingOrganization)
  {
    dsid = [userCopy dsid];
    managedUserActivationIdentifier = [userCopy managedUserActivationIdentifier];
    v9 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:dsid ofType:@"managed-user" withIdentifier:managedUserActivationIdentifier fromOrganization:managingOrganization];

    v54 = 0;
    v10 = [v9 execute:&v54];
    v11 = v54;
    if (v10)
    {
      v50 = v9;
      if ([v10 count] >= 2)
      {
        v12 = +[STLog persistence];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          +[STBlueprint(ManagedUser) createManagedUserBlueprintForUser:error:];
        }
      }

      errorCopy = error;
      managedObjectContext = [userCopy managedObjectContext];
      v49 = v10;
      firstObject = [v10 firstObject];
      if (!firstObject)
      {
        firstObject = [[STBlueprint alloc] initWithContext:managedObjectContext];
        [(STBlueprint *)firstObject setType:@"managed-user"];
        managedUserActivationIdentifier2 = [userCopy managedUserActivationIdentifier];
        [(STBlueprint *)firstObject setIdentifier:managedUserActivationIdentifier2];

        [(STBlueprint *)firstObject setOrganization:managingOrganization];
        v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{userCopy, 0}];
        [(STBlueprint *)firstObject setUsers:v15];
      }

      [(STBlueprint *)firstObject setEnabled:1];
      [(STBlueprint *)firstObject setIsDirty:1];
      iCloudLogoutConfigurationIdentifier = [userCopy iCloudLogoutConfigurationIdentifier];
      configurations = [(STBlueprint *)firstObject configurations];
      v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", iCloudLogoutConfigurationIdentifier];
      v19 = [configurations filteredSetUsingPredicate:v18];
      anyObject = [v19 anyObject];

      if (!anyObject)
      {
        anyObject = [[STBlueprintConfiguration alloc] initWithContext:managedObjectContext];
        [(STBlueprintConfiguration *)anyObject setIdentifier:iCloudLogoutConfigurationIdentifier];
        [(STBlueprintConfiguration *)anyObject setBlueprint:firstObject];
      }

      v48 = iCloudLogoutConfigurationIdentifier;
      v21 = [MEMORY[0x1E6996250] buildRequiredOnlyWithIdentifier:iCloudLogoutConfigurationIdentifier withMode:*MEMORY[0x1E69961C8]];
      v53 = v11;
      v22 = [v21 serializeAsDataWithError:&v53];
      v23 = v53;

      v46 = v22;
      v47 = v21;
      if (v22)
      {
        [(STBlueprintConfiguration *)anyObject setPayloadPlist:v22];
        declarationType = [v21 declarationType];
        [(STBlueprintConfiguration *)anyObject setType:declarationType];

        automaticDateTimeConfigurationIdentifier = [userCopy automaticDateTimeConfigurationIdentifier];
        configurations2 = [(STBlueprint *)firstObject configurations];
        v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", automaticDateTimeConfigurationIdentifier];
        v28 = [configurations2 filteredSetUsingPredicate:v27];
        anyObject2 = [v28 anyObject];

        if (!anyObject2)
        {
          anyObject2 = [[STBlueprintConfiguration alloc] initWithContext:managedObjectContext];
          [(STBlueprintConfiguration *)anyObject2 setIdentifier:automaticDateTimeConfigurationIdentifier];
          [(STBlueprintConfiguration *)anyObject2 setBlueprint:firstObject];
        }

        v44 = automaticDateTimeConfigurationIdentifier;
        v30 = [MEMORY[0x1E69962E8] buildRequiredOnlyWithIdentifier:automaticDateTimeConfigurationIdentifier];
        [v30 setPayloadForceAutomaticDateAndTime:MEMORY[0x1E695E118]];
        [v30 updateServerHash];
        v52 = v23;
        v31 = [v30 serializeAsDataWithError:&v52];
        v11 = v52;

        if (v31)
        {
          [(STBlueprintConfiguration *)anyObject2 setPayloadPlist:v31];
          declarationType2 = [v30 declarationType];
          [(STBlueprintConfiguration *)anyObject2 setType:declarationType2];

          v33 = firstObject;
        }

        else
        {
          v40 = +[STLog persistence];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
          {
            +[STBlueprint(ManagedUser) createManagedUserBlueprintForUser:error:];
          }

          if (errorCopy)
          {
            v41 = v11;
            v33 = 0;
            *errorCopy = v11;
          }

          else
          {
            v33 = 0;
          }
        }

        v42 = v48;

        v10 = v49;
        v9 = v50;
      }

      else
      {
        v38 = +[STLog persistence];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
        {
          +[STBlueprint(ManagedUser) createManagedUserBlueprintForUser:error:];
        }

        v10 = v49;
        v9 = v50;
        if (errorCopy)
        {
          v39 = v23;
          v33 = 0;
          *errorCopy = v23;
        }

        else
        {
          v33 = 0;
        }

        v11 = v23;
        v42 = v48;
      }
    }

    else
    {
      v36 = +[STLog persistence];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint(ManagedUser) createManagedUserBlueprintForUser:error:];
      }

      if (error)
      {
        v37 = v11;
        v33 = 0;
        *error = v11;
      }

      else
      {
        v33 = 0;
      }
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:21 userInfo:0];
    v34 = +[STLog persistence];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      +[STBlueprint(ManagedUser) createManagedUserBlueprintForUser:error:];
    }

    if (error)
    {
      v35 = v11;
      v33 = 0;
      *error = v11;
    }

    else
    {
      v33 = 0;
    }
  }

  return v33;
}

+ (BOOL)deleteManagedUserBlueprintForUser:(id)user error:(id *)error
{
  userCopy = user;
  v20 = 0;
  v7 = [self disableManagedUserBlueprintForUser:userCopy error:&v20];
  v8 = v20;
  if (v7)
  {
    managedObjectContext = [userCopy managedObjectContext];
    hasChanges = [managedObjectContext hasChanges];

    if (!hasChanges)
    {
      v14 = 1;
      goto LABEL_17;
    }

    managedObjectContext2 = [userCopy managedObjectContext];
    v19 = v8;
    v12 = [managedObjectContext2 save:&v19];
    v13 = v19;

    if (v12)
    {
      v14 = 1;
LABEL_16:
      v8 = v13;
      goto LABEL_17;
    }

    v17 = +[STLog persistence];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[STBlueprint(ManagedUser) deleteManagedUserBlueprintForUser:error:];
    }

    if (!error)
    {
      v14 = 0;
      goto LABEL_16;
    }

    v8 = v13;
  }

  else
  {
    v15 = +[STLog persistence];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[STBlueprint(ManagedUser) deleteManagedUserBlueprintForUser:error:];
    }

    if (!error)
    {
      v14 = 0;
      goto LABEL_17;
    }
  }

  v16 = v8;
  v14 = 0;
  *error = v8;
LABEL_17:

  return v14;
}

+ (BOOL)disableManagedUserBlueprintForUser:(id)user error:(id *)error
{
  userCopy = user;
  managingOrganization = [userCopy managingOrganization];
  if (managingOrganization)
  {
    dsid = [userCopy dsid];
    managedUserActivationIdentifier = [userCopy managedUserActivationIdentifier];
    v9 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:dsid ofType:@"managed-user" withIdentifier:managedUserActivationIdentifier fromOrganization:managingOrganization];

    v21 = 0;
    v10 = [v9 execute:&v21];
    v11 = v21;
    v12 = v10 != 0;
    if (v10)
    {
      v13 = [v10 count];
      if (v13)
      {
        if (v13 != 1)
        {
          v14 = +[STLog persistence];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            +[STBlueprint(ManagedUser) createManagedUserBlueprintForUser:error:];
          }
        }

        firstObject = [v10 firstObject];
        [firstObject setEnabled:0];
        [firstObject setIsDirty:1];
      }
    }

    else
    {
      v18 = +[STLog persistence];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint(ManagedUser) disableManagedUserBlueprintForUser:error:];
      }

      if (error)
      {
        v19 = v11;
        *error = v11;
      }
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:21 userInfo:0];
    v16 = +[STLog persistence];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      +[STBlueprint(ManagedUser) createManagedUserBlueprintForUser:error:];
    }

    if (error)
    {
      v17 = v11;
      v12 = 0;
      *error = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (BOOL)disableRestrictionsBlueprintForUser:(id)user error:(id *)error
{
  userCopy = user;
  dsid = [userCopy dsid];
  managingOrganization = [userCopy managingOrganization];
  if (managingOrganization)
  {
    v8 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:dsid ofType:@"restrictions" fromOrganization:managingOrganization];
    v26 = 0;
    v9 = [v8 execute:&v26];
    v10 = v26;
    if (v9)
    {
      managedObjectContext = [userCopy managedObjectContext];
      firstObject = [v9 firstObject];
      [firstObject setIsDirty:1];
      [firstObject setEnabled:0];
      v13 = +[STLog persistence];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [STBlueprint(Restrictions) disableRestrictionsBlueprintForUser:v13 error:?];
      }

      if ([managedObjectContext hasChanges])
      {
        v24 = dsid;
        v25 = v10;
        v14 = [managedObjectContext save:&v25];
        v15 = v25;

        if (v14)
        {
          v16 = 1;
        }

        else
        {
          v21 = +[STLog persistence];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            +[STBlueprint(Restrictions) disableRestrictionsBlueprintForUser:error:];
          }

          if (error)
          {
            v22 = v15;
            v16 = 0;
            *error = v15;
          }

          else
          {
            v16 = 0;
          }
        }

        v10 = v15;
        dsid = v24;
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v19 = +[STLog persistence];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint(Restrictions) disableRestrictionsBlueprintForUser:error:];
      }

      if (error)
      {
        v20 = v10;
        v16 = 0;
        *error = v10;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:21 userInfo:0];
    v17 = +[STLog persistence];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
    }

    if (error)
    {
      v18 = v10;
      v16 = 0;
      *error = v10;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)_webFilterBlacklistStringsForURL:(id)l
{
  v13[4] = *MEMORY[0x1E69E9840];
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  lowercaseString = [absoluteString lowercaseString];
  v6 = MEMORY[0x1E696AEC0];
  scheme = [lCopy scheme];

  v8 = [v6 stringWithFormat:@"%@://", scheme];
  v9 = [absoluteString stringByReplacingOccurrencesOfString:v8 withString:&stru_1F3040980];

  lowercaseString2 = [v9 lowercaseString];
  v13[0] = absoluteString;
  v13[1] = lowercaseString;
  v13[2] = v9;
  v13[3] = lowercaseString2;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];

  return v11;
}

- (BOOL)permitWebFilterURL:(id)l pageTitle:(id)title error:(id *)error
{
  errorCopy = error;
  v52 = *MEMORY[0x1E69E9840];
  lCopy = l;
  titleCopy = title;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  configurations = [(STBlueprint *)self configurations];
  v9 = [configurations countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = *v48;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v48 != v11)
      {
        objc_enumerationMutation(configurations);
      }

      v13 = *(*(&v47 + 1) + 8 * i);
      type = [v13 type];
      v15 = [type isEqualToString:@"system.webcontentfilter.basic"];

      if (v15)
      {
        v16 = v13;

        if (!v16)
        {
          goto LABEL_20;
        }

        cemConfiguration = [v16 cemConfiguration];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([cemConfiguration payloadRestrictWeb], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "BOOLValue"), v18, (v19))
        {
          payloadUseContentFilter = [cemConfiguration payloadUseContentFilter];
          bOOLValue = [payloadUseContentFilter BOOLValue];

          payloadWhiteListEnabled = [cemConfiguration payloadWhiteListEnabled];
          bOOLValue2 = [payloadWhiteListEnabled BOOLValue];

          v24 = lCopy;
          v25 = titleCopy;
          if (bOOLValue && (bOOLValue2 & 1) == 0)
          {
            payloadFilterBlackList = [cemConfiguration payloadFilterBlackList];
            if (payloadFilterBlackList)
            {
              v27 = [MEMORY[0x1E695DFA0] orderedSetWithArray:payloadFilterBlackList];
              v28 = [(STBlueprint *)self _webFilterBlacklistStringsForURL:lCopy];
              [v27 removeObjectsInArray:v28];
              array = [v27 array];
              [cemConfiguration setPayloadFilterBlackList:array];
            }

            payloadFilterWhiteList = [cemConfiguration payloadFilterWhiteList];
            v31 = payloadFilterWhiteList;
            v32 = MEMORY[0x1E695E0F0];
            if (payloadFilterWhiteList)
            {
              v32 = payloadFilterWhiteList;
            }

            v33 = v32;

            host = [lCopy host];
            v35 = [v33 arrayByAddingObject:host];

            [cemConfiguration setPayloadFilterWhiteList:v35];
LABEL_37:

            [cemConfiguration updateServerHash];
            [v16 setCemConfiguration:cemConfiguration];
            v36 = 1;
            [(STBlueprint *)self setIsDirty:1];
LABEL_38:

            goto LABEL_39;
          }

          if (!(bOOLValue & 1 | ((bOOLValue2 & 1) == 0)))
          {
            payloadFilterBlackList = objc_opt_new();
            absoluteString = [lCopy absoluteString];
            [payloadFilterBlackList setPayloadAddress:absoluteString];

            [payloadFilterBlackList setPayloadPageTitle:v25];
            payloadSiteWhiteList = [cemConfiguration payloadSiteWhiteList];
            v41 = payloadSiteWhiteList;
            v42 = MEMORY[0x1E695E0F0];
            if (payloadSiteWhiteList)
            {
              v42 = payloadSiteWhiteList;
            }

            v43 = v42;

            host = [v43 arrayByAddingObject:payloadFilterBlackList];

            [cemConfiguration setPayloadSiteWhiteList:host];
            goto LABEL_37;
          }

          v38 = +[STLog blueprint];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [STBlueprint(Restrictions) permitWebFilterURL:pageTitle:error:];
          }
        }

        else
        {
          v37 = +[STLog blueprint];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [STBlueprint(Restrictions) permitWebFilterURL:pageTitle:error:];
          }

          v24 = lCopy;
          v25 = titleCopy;
        }

        if (errorCopy)
        {
          [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:1 userInfo:0];
          *errorCopy = v36 = 0;
        }

        else
        {
          v36 = 0;
        }

        goto LABEL_38;
      }
    }

    v10 = [configurations countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_9:

LABEL_20:
  if (errorCopy)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:14 userInfo:0];
    *errorCopy = v36 = 0;
  }

  else
  {
    v36 = 0;
  }

  v24 = lCopy;
  v25 = titleCopy;
LABEL_39:

  return v36;
}

+ (BOOL)saveRestrictionsBlueprintWithValuesForPresetRestrictions:(id)restrictions forUser:(id)user error:(id *)error
{
  v209 = *MEMORY[0x1E69E9840];
  restrictionsCopy = restrictions;
  userCopy = user;
  v7 = restrictionsCopy;
  v8 = objc_opt_new();
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v9 = v7;
  v10 = 0x1E7CE5000uLL;
  v143 = v9;
  obj = [v9 countByEnumeratingWithState:&v182 objects:v200 count:16];
  if (obj)
  {
    v163 = *v183;
    v148 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v183 != v163)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v182 + 1) + 8 * v11);
        v13 = [v12 componentsSeparatedByString:@"."];
        v14 = [v13 mutableCopy];

        lastObject = [v14 lastObject];
        v16 = lastObject;
        [v14 removeLastObject];
        v17 = [v14 componentsJoinedByString:@"."];
        v18 = v17;

        v19 = lastObject;
        v20 = v17;
        null = [v9 objectForKeyedSubscript:v12];
        if (!null)
        {
          null = [MEMORY[0x1E695DFB0] null];
        }

        if ([v20 isEqualToString:@"STCustomRestrictionConfiguration"])
        {
          if ([v19 isEqualToString:@"STCustomRestrictionCellularData"])
          {
            v198[0] = @"network.cellular.settings.allowAppCellularDataModification";
            v198[1] = @"network.cellular.settings.allowCellularPlanModification";
            v21 = null;
            v199[0] = null;
            v199[1] = null;
            v22 = MEMORY[0x1E695DF20];
            v23 = v199;
            v24 = v198;
LABEL_23:
            v26 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:2];
            goto LABEL_24;
          }

          v21 = null;
          if ([v19 isEqualToString:@"STCustomRestrictionSiriDictation"])
          {
            v196[0] = @"system.siri.allowAssistant";
            v196[1] = @"system.siri.allowDictation";
            v197[0] = null;
            v197[1] = null;
            v22 = MEMORY[0x1E695DF20];
            v23 = v197;
            v24 = v196;
            goto LABEL_23;
          }

          if ([v19 isEqualToString:@"STCustomRestrictionMathResults"])
          {
            v194[0] = @"system.siri.allowMathPaperSolving";
            v194[1] = @"system.siri.allowKeyboardMathSolving";
            v195[0] = null;
            v195[1] = null;
            v22 = MEMORY[0x1E695DF20];
            v23 = v195;
            v24 = v194;
            goto LABEL_23;
          }

          if (![v19 isEqualToString:@"STCustomRestrictionWebFilterState"])
          {
            persistence = [*(v10 + 3824) persistence];
            if (!os_log_type_enabled(persistence, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_14;
            }

            *buf = 138543618;
            v202 = v20;
            v203 = 2114;
            v204 = v19;
            v30 = persistence;
            v31 = "Skipping unimplemented restriction %{public}@ %{public}@";
            goto LABEL_48;
          }

          v158 = v20;
          unsignedIntegerValue = [null unsignedIntegerValue];
          if (unsignedIntegerValue)
          {
            v29 = unsignedIntegerValue;
            if (unsignedIntegerValue == 2)
            {
              v156 = v19;
              v152 = [&unk_1F3059E08 mutableCopy];
              mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
              defaultUserBookmarks = [mEMORY[0x1E69ADFB8] defaultUserBookmarks];

              v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(defaultUserBookmarks, "count")}];
              v186 = 0u;
              v187 = 0u;
              v188 = 0u;
              v189 = 0u;
              v35 = defaultUserBookmarks;
              v36 = [v35 countByEnumeratingWithState:&v186 objects:buf count:16];
              if (v36)
              {
                v37 = v36;
                v38 = *v187;
                do
                {
                  for (i = 0; i != v37; ++i)
                  {
                    if (*v187 != v38)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v40 = *(*(&v186 + 1) + 8 * i);
                    v41 = MEMORY[0x1E69962D0];
                    v42 = [v40 URL];
                    absoluteString = [v42 absoluteString];
                    title = [v40 title];
                    v45 = [v41 buildWithAddress:absoluteString withPageTitle:title];

                    [v34 addObject:v45];
                  }

                  v37 = [v35 countByEnumeratingWithState:&v186 objects:buf count:16];
                }

                while (v37);
              }

              v46 = [v34 copy];
              [v152 setObject:v46 forKeyedSubscript:@"system.webcontentfilter.basic.siteWhiteList"];

              v26 = [v152 copy];
              v9 = v143;
              v10 = 0x1E7CE5000;
              v8 = v148;
              v19 = v156;
            }

            else
            {
              if (unsignedIntegerValue == 1)
              {
                v26 = &unk_1F3059DE0;
LABEL_46:
                v20 = v158;
                goto LABEL_24;
              }

              persistence2 = [*(v10 + 3824) persistence];
              if (os_log_type_enabled(persistence2, OS_LOG_TYPE_ERROR))
              {
                *buf = 67240192;
                LODWORD(v202) = v29;
                _os_log_error_impl(&dword_1B831F000, persistence2, OS_LOG_TYPE_ERROR, "Skipping unimplemented web filter state %{public}d", buf, 8u);
              }

              v26 = MEMORY[0x1E695E0F8];
            }

            v21 = null;
            goto LABEL_46;
          }

          v26 = &unk_1F3059DB8;
          goto LABEL_46;
        }

        if ([v20 isEqualToString:@"system.gamecenter"] && objc_msgSend(v19, "isEqualToString:", @"allowedGameCenterOtherPlayerTypes"))
        {
          persistence = [*(v10 + 3824) persistence];
          if (!os_log_type_enabled(persistence, OS_LOG_TYPE_ERROR))
          {
LABEL_14:

            v26 = MEMORY[0x1E695E0F8];
            v21 = null;
            goto LABEL_24;
          }

          *buf = 138543618;
          v202 = v20;
          v203 = 2114;
          v204 = v19;
          v30 = persistence;
          v31 = "Skipping unimplemented non-preset restriction %{public}@ %{public}@";
LABEL_48:
          _os_log_error_impl(&dword_1B831F000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x16u);
          goto LABEL_14;
        }

        v192 = v12;
        v21 = null;
        v27 = null;
        if (!null)
        {
          null2 = [MEMORY[0x1E695DFB0] null];
          v27 = null2;
        }

        v193 = v27;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
        if (!null)
        {
        }

LABEL_24:
        [v8 addEntriesFromDictionary:v26];

        v11 = v11 + 1;
      }

      while (v11 != obj);
      v48 = [v9 countByEnumeratingWithState:&v182 objects:v200 count:16];
      obj = v48;
    }

    while (v48);
  }

  v49 = [v8 copy];
  dsid = [userCopy dsid];
  v51 = userCopy;
  localUserDeviceState = [v51 localUserDeviceState];

  v53 = &STOrganizationIdentifierFamily;
  if (localUserDeviceState)
  {
    familySettings = [v51 familySettings];
    isManaged = [familySettings isManaged];

    if (!isManaged)
    {
      v53 = STOrganizationIdentifierPersonal;
    }
  }

  v56 = *v53;
  v142 = v51;

  v157 = objc_opt_new();
  v147 = objc_opt_new();
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  obja = v49;
  v151 = v56;
  v164 = [obja countByEnumeratingWithState:&v178 objects:v191 count:16];
  if (v164)
  {
    v161 = *v179;
    v149 = dsid;
    do
    {
      v57 = 0;
      do
      {
        if (*v179 != v161)
        {
          objc_enumerationMutation(obja);
        }

        v58 = *(*(&v178 + 1) + 8 * v57);
        v59 = [obja objectForKeyedSubscript:v58];
        null3 = [MEMORY[0x1E695DFB0] null];

        if (v59 == null3)
        {

          v59 = 0;
        }

        v61 = v58;
        v62 = [v61 componentsSeparatedByString:@"."];
        v63 = [v62 mutableCopy];

        lastObject2 = [v63 lastObject];
        v65 = lastObject2;
        [v63 removeLastObject];
        v66 = [v63 componentsJoinedByString:@"."];
        v67 = v66;

        v169 = lastObject2;
        v68 = v66;
        persistence3 = [*(v10 + 3824) persistence];
        if (os_log_type_enabled(persistence3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          v202 = v61;
          v203 = 2114;
          v204 = v59;
          v205 = 2114;
          v206 = v56;
          v207 = 2112;
          v208 = dsid;
          _os_log_impl(&dword_1B831F000, persistence3, OS_LOG_TYPE_DEFAULT, "Asked to change restriction %{public}@ value to %{public}@ for %{public}@.%@", buf, 0x2Au);
        }

        if ([v68 isEqualToString:@"STCustomRestrictionConfiguration"])
        {
          persistence4 = [*(v10 + 3824) persistence];
          if (!os_log_type_enabled(persistence4, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_91;
          }

          *buf = 138543618;
          v202 = v68;
          v203 = 2114;
          v204 = v169;
          v71 = persistence4;
          v72 = "Skipping unimplemented restriction %{public}@ %{public}@";
LABEL_71:
          v73 = 22;
LABEL_72:
          _os_log_error_impl(&dword_1B831F000, v71, OS_LOG_TYPE_ERROR, v72, buf, v73);
          goto LABEL_91;
        }

        if ([v68 isEqualToString:@"STSBCapabilityConfiguration"])
        {
          persistence4 = [*(v10 + 3824) persistence];
          if (!os_log_type_enabled(persistence4, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_91;
          }

          *buf = 138543618;
          v202 = v68;
          v203 = 2114;
          v204 = v169;
          v71 = persistence4;
          v72 = "Skipping unimplemented non-preset restriction %{public}@ %{public}@";
          goto LABEL_71;
        }

        if ([v68 isEqualToString:@"STMCFeatureConfiguration"])
        {
          persistence4 = [*(v10 + 3824) persistence];
          if (!os_log_type_enabled(persistence4, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_91;
          }

          *buf = 138543618;
          v202 = v68;
          v203 = 2114;
          v204 = v169;
          v71 = persistence4;
          v72 = "Skipping non-preset restriction %{public}@ %{public}@";
          goto LABEL_71;
        }

        v74 = [v157 objectForKeyedSubscript:v68];
        if (v74)
        {
LABEL_88:
          persistence4 = v74;
          v85 = v169;
          v86 = v59;
          v87 = [v85 substringToIndex:1];
          v88 = [v85 substringWithRange:{1, objc_msgSend(v85, "length") - 1}];
          v200[0] = @"payload";
          v154 = v87;
          capitalizedString = [v87 capitalizedString];
          v200[1] = capitalizedString;
          v200[2] = v88;
          v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v200 count:3];
          v91 = [v90 componentsJoinedByString:&stru_1F3040980];

          v10 = 0x1E7CE5000uLL;
          v92 = +[STLog persistence];
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
          {
            v93 = objc_opt_class();
            *buf = 138412802;
            v202 = v93;
            v203 = 2112;
            v204 = v91;
            v205 = 2112;
            v206 = v86;
            _os_log_impl(&dword_1B831F000, v92, OS_LOG_TYPE_DEFAULT, "Setting CEM key %@.%@ to %@", buf, 0x20u);
          }

          [persistence4 setValue:v86 forKeyPath:v91];
          [persistence4 updateServerHash];

          [v157 setObject:persistence4 forKeyedSubscript:v68];
          [v147 addObject:v68];
          dsid = v149;
          v56 = v151;
          goto LABEL_91;
        }

        v75 = v68;
        v76 = v56;
        v77 = dsid;
        persistence5 = [*(v10 + 3824) persistence];
        if (os_log_type_enabled(persistence5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v202 = v75;
          _os_log_impl(&dword_1B831F000, persistence5, OS_LOG_TYPE_DEFAULT, "Creating new restriction configuration %{public}@", buf, 0xCu);
        }

        v79 = v75;
        v80 = v77;
        v81 = v76;
        if ([(__CFString *)v81 isEqualToString:@"personal"])
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"digital_health_restrictions", v79, v140];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", @"digital_health_restrictions", v80, v79];
        }
        v144 = ;
        v56 = v151;

        v153 = v81;
        if ([v79 isEqualToString:@"account.settings"])
        {
          v82 = MEMORY[0x1E69961E8];
          goto LABEL_85;
        }

        if ([v79 isEqualToString:@"application.settings"])
        {
          v82 = MEMORY[0x1E69961F8];
          goto LABEL_85;
        }

        if ([v79 isEqualToString:@"application.store"])
        {
          v82 = MEMORY[0x1E6996200];
          goto LABEL_85;
        }

        if ([v79 isEqualToString:@"legacy.restrictions.apps"])
        {
          v83 = v144;
          v74 = [MEMORY[0x1E6996218] buildRequiredOnlyWithIdentifier:v144];
          [v74 setPayloadBlacklistedAppBundleIDs:MEMORY[0x1E695E0F0]];
        }

        else
        {
          if ([v79 isEqualToString:@"media.settings"])
          {
            v82 = MEMORY[0x1E6996220];
LABEL_85:
            v83 = v144;
            v84 = [v82 buildRequiredOnlyWithIdentifier:v144];
LABEL_86:
            v74 = v84;
            goto LABEL_87;
          }

          if ([v79 isEqualToString:@"network.cellular.settings"])
          {
            v82 = MEMORY[0x1E6996228];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"passcode.settings"])
          {
            v82 = MEMORY[0x1E6996230];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.airdrop"])
          {
            v82 = MEMORY[0x1E69962B8];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.camera"])
          {
            v82 = MEMORY[0x1E69962D8];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.carplay"])
          {
            v82 = MEMORY[0x1E69962E0];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.donotdisturb"])
          {
            v82 = MEMORY[0x1E69962F0];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.gamecenter"])
          {
            v82 = MEMORY[0x1E69962F8];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.icloud"])
          {
            v82 = MEMORY[0x1E6996328];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.music"])
          {
            v82 = MEMORY[0x1E6996300];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.ratings"])
          {
            v82 = MEMORY[0x1E6996308];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.siri"])
          {
            v82 = MEMORY[0x1E6996310];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.tvprovider"])
          {
            v82 = MEMORY[0x1E6996318];
            goto LABEL_85;
          }

          if ([v79 isEqualToString:@"system.webcontentfilter.basic"])
          {
            v83 = v144;
            v84 = [MEMORY[0x1E69962C8] buildRequiredOnlyWithIdentifier:v144 withRestrictWeb:MEMORY[0x1E695E110]];
            goto LABEL_86;
          }

          if ([v79 isEqualToString:@"system.web.tracking"])
          {
            v83 = v144;
            v74 = [MEMORY[0x1E6996320] buildRequiredOnlyWithIdentifier:v144];
            v56 = v151;
          }

          else
          {
            persistence6 = [*(v10 + 3824) persistence];
            if (os_log_type_enabled(persistence6, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v202 = v79;
              _os_log_error_impl(&dword_1B831F000, persistence6, OS_LOG_TYPE_ERROR, "Could not create new configuration for type %{public}@", buf, 0xCu);
            }

            v74 = 0;
            v10 = 0x1E7CE5000;
            v56 = v151;
            v83 = v144;
          }
        }

LABEL_87:

        dsid = v149;
        if (v74)
        {
          goto LABEL_88;
        }

        persistence4 = [*(v10 + 3824) persistence];
        if (os_log_type_enabled(persistence4, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v202 = v79;
          v71 = persistence4;
          v72 = "Skipping restriction where could not create configuration for type %{public}@";
          v73 = 12;
          goto LABEL_72;
        }

LABEL_91:

        ++v57;
      }

      while (v164 != v57);
      v95 = [obja countByEnumeratingWithState:&v178 objects:v191 count:16];
      v164 = v95;
    }

    while (v95);
  }

  if ([v147 count])
  {
    v96 = v142;
    managingOrganization = [v142 managingOrganization];
    if (!managingOrganization)
    {
      v107 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:21 userInfo:0];
      v108 = v10;
      persistence9 = v107;
      persistence7 = [*(v108 + 3824) persistence];
      if (os_log_type_enabled(persistence7, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
      }

      if (error)
      {
        v110 = persistence9;
        v106 = 0;
        *error = persistence9;
      }

      else
      {
        v106 = 0;
      }

      goto LABEL_179;
    }

    persistence8 = [*(v10 + 3824) persistence];
    if (os_log_type_enabled(persistence8, OS_LOG_TYPE_DEBUG))
    {
      [STBlueprint(Restrictions) saveRestrictionsBlueprintWithValuesForPresetRestrictions:managingOrganization forUser:persistence8 error:?];
    }

    v99 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:dsid ofType:@"restrictions" fromOrganization:managingOrganization];
    v177 = 0;
    v100 = [v99 execute:&v177];
    persistence9 = v177;
    if (!v100)
    {
      v111 = +[STLog persistence];
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint(Restrictions) disableRestrictionsBlueprintForUser:error:];
      }

      if (error)
      {
        v112 = persistence9;
        v106 = 0;
        *error = persistence9;
      }

      else
      {
        v106 = 0;
      }

      goto LABEL_178;
    }

    v159 = v99;
    managedObjectContext = [v142 managedObjectContext];
    firstObject = [v100 firstObject];
    if (!firstObject)
    {
      firstObject = [[STBlueprint alloc] initWithContext:managedObjectContext];
      [(STBlueprint *)firstObject setType:@"restrictions"];
      v103 = v151;
      v104 = dsid;
      if ([(__CFString *)v103 isEqualToString:@"personal"])
      {
        v104 = @"digital_health_restrictions";
      }

      else
      {
        v104 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"digital_health_restrictions", v104];
      }

      v113 = v104;

      [(STBlueprint *)firstObject setIdentifier:v113];
      [(STBlueprint *)firstObject setOrganization:managingOrganization];
      v114 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v142, 0}];
      [(STBlueprint *)firstObject setUsers:v114];
    }

    v155 = v100;
    v162 = managingOrganization;
    v150 = dsid;
    [(STBlueprint *)firstObject setIsDirty:1];
    [(STBlueprint *)firstObject setEnabled:1];
    v165 = firstObject;
    configurations = [(STBlueprint *)firstObject configurations];
    allObjects = [configurations allObjects];

    v117 = MEMORY[0x1E695DF20];
    v118 = [allObjects valueForKey:@"type"];
    v145 = allObjects;
    v119 = [v117 dictionaryWithObjects:allObjects forKeys:v118];

    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    v120 = v147;
    v121 = [v120 countByEnumeratingWithState:&v173 objects:v190 count:16];
    if (v121)
    {
      v122 = v121;
      v123 = *v174;
      while (2)
      {
        v124 = 0;
        v125 = persistence9;
        do
        {
          if (*v174 != v123)
          {
            objc_enumerationMutation(v120);
          }

          v126 = *(*(&v173 + 1) + 8 * v124);
          v127 = [v157 objectForKeyedSubscript:v126];
          v128 = [v119 objectForKeyedSubscript:v126];
          if (!v128)
          {
            v128 = [[STBlueprintConfiguration alloc] initWithContext:managedObjectContext];
            declarationIdentifier = [v127 declarationIdentifier];
            [(STBlueprintConfiguration *)v128 setIdentifier:declarationIdentifier];

            [(STBlueprintConfiguration *)v128 setType:v126];
            [(STBlueprintConfiguration *)v128 setBlueprint:v165];
          }

          [v127 updateServerHash];
          v172 = v125;
          v130 = [v127 serializeAsDataWithError:&v172];
          persistence9 = v172;

          if (!v130)
          {
            v135 = +[STLog persistence];
            if (os_log_type_enabled(v135, OS_LOG_TYPE_FAULT))
            {
              +[STBlueprint(Restrictions) saveRestrictionsBlueprintWithValuesForPresetRestrictions:forUser:error:];
            }

            v96 = v142;
            dsid = v150;
            v100 = v155;
            if (error)
            {
              v136 = persistence9;
              *error = persistence9;
            }

            v106 = 0;
            managingOrganization = v162;
            v99 = v159;
            goto LABEL_174;
          }

          [(STBlueprintConfiguration *)v128 setPayloadPlist:v130];

          ++v124;
          v125 = persistence9;
        }

        while (v122 != v124);
        v122 = [v120 countByEnumeratingWithState:&v173 objects:v190 count:16];
        if (v122)
        {
          continue;
        }

        break;
      }
    }

    v131 = +[STLog persistence];
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
    {
      [STBlueprint(Restrictions) saveRestrictionsBlueprintWithValuesForPresetRestrictions:v131 forUser:? error:?];
    }

    v132 = managedObjectContext;
    managingOrganization = v162;
    v99 = v159;
    v100 = v155;
    if ([managedObjectContext hasChanges])
    {
      v171 = persistence9;
      v133 = [managedObjectContext save:&v171];
      v134 = v171;

      if ((v133 & 1) == 0)
      {
        v138 = +[STLog persistence];
        if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
        {
          +[STBlueprint(Restrictions) saveRestrictionsBlueprintWithValuesForPresetRestrictions:forUser:error:];
        }

        v96 = v142;
        dsid = v150;
        if (error)
        {
          v139 = v134;
          v106 = 0;
          *error = v134;
        }

        else
        {
          v106 = 0;
        }

        persistence9 = v134;
LABEL_174:
        v132 = managedObjectContext;
        goto LABEL_177;
      }

      v106 = 1;
      persistence9 = v134;
    }

    else
    {
      v106 = 1;
    }

    v96 = v142;
    dsid = v150;
LABEL_177:

LABEL_178:
LABEL_179:

    goto LABEL_180;
  }

  persistence9 = [*(v10 + 3824) persistence];
  v96 = v142;
  if (os_log_type_enabled(persistence9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B831F000, persistence9, OS_LOG_TYPE_DEFAULT, "No preset restrictions to apply, exiting.", buf, 2u);
  }

  v106 = 1;
LABEL_180:

  return v106;
}

- (void)setUsageLimitEnabled:(BOOL)enabled
{
  [(STBlueprint *)self setLimitEnabled:enabled];

  [(STBlueprint *)self setIsDirty:1];
}

+ (BOOL)saveUsageLimitWithIdentifier:(id)identifier user:(id)user bundleIdentifiers:(id)identifiers webDomains:(id)domains categoryIdentifiers:(id)categoryIdentifiers dailyBudgetLimit:(double)limit budgetLimitByWeekday:(id)weekday enabled:(BOOL)self0 behaviorType:(unint64_t)self1 error:(id *)self2
{
  v240 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  userCopy = user;
  identifiersCopy = identifiers;
  domainsCopy = domains;
  categoryIdentifiersCopy = categoryIdentifiers;
  weekdayCopy = weekday;
  v161 = identifiersCopy;
  v23 = [identifiersCopy count];
  v160 = domainsCopy;
  v154 = [domainsCopy count];
  v163 = categoryIdentifiersCopy;
  v158 = [categoryIdentifiersCopy count];
  if (!v23 && !v154 && !v158)
  {
    [STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:a2 user:self bundleIdentifiers:? webDomains:? categoryIdentifiers:? dailyBudgetLimit:? budgetLimitByWeekday:? enabled:? behaviorType:? error:?];
  }

  v228 = 0;
  v229 = &v228;
  v230 = 0x3032000000;
  v231 = __Block_byref_object_copy__1;
  v232 = __Block_byref_object_dispose__1;
  v233 = 0;
  managingOrganization = [userCopy managingOrganization];
  if (managingOrganization)
  {
    if (!_os_feature_enabled_impl())
    {
      payloadApps = 0;
      goto LABEL_35;
    }

    dsid = [userCopy dsid];
    alwaysAllowActivationIdentifier = [userCopy alwaysAllowActivationIdentifier];
    v26 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:dsid ofType:@"always-allowed-apps" withIdentifier:alwaysAllowActivationIdentifier fromOrganization:managingOrganization];

    v27 = v229;
    v227 = v229[5];
    v28 = [v26 execute:&v227];
    objc_storeStrong(v27 + 5, v227);
    if (!v28)
    {
      v29 = +[STLog persistence];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:];
      }
    }

    if ([v28 count] >= 2)
    {
      v30 = +[STLog persistence];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        appleID = [userCopy appleID];
        [STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:appleID user:buf bundleIdentifiers:v30 webDomains:? categoryIdentifiers:? dailyBudgetLimit:? budgetLimitByWeekday:? enabled:? behaviorType:? error:?];
      }

      v32 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"identifier" ascending:1];
      v238 = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v238 count:1];
      v34 = [v28 sortedArrayUsingDescriptors:v33];

      v28 = v34;
    }

    firstObject = [v28 firstObject];
    configurations = [firstObject configurations];
    allObjects = [configurations allObjects];

    if ([allObjects count] >= 2)
    {
      v38 = +[STLog persistence];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        appleID2 = [userCopy appleID];
        [STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:appleID2 user:v237 bundleIdentifiers:v38 webDomains:? categoryIdentifiers:? dailyBudgetLimit:? budgetLimitByWeekday:? enabled:? behaviorType:? error:?];
      }

      v40 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"identifier" ascending:1];
      v236 = v40;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v236 count:1];
      v42 = [allObjects sortedArrayUsingDescriptors:v41];

      allObjects = v42;
    }

    firstObject2 = [allObjects firstObject];
    v44 = firstObject2;
    if (firstObject2)
    {
      v45 = MEMORY[0x1E6996238];
      payloadPlist = [firstObject2 payloadPlist];
      v47 = v229;
      obj = v229[5];
      v48 = [v45 declarationForData:payloadPlist error:&obj];
      objc_storeStrong(v47 + 5, obj);

      if (v48)
      {
        payloadApps = [v48 payloadApps];
LABEL_34:

LABEL_35:
        if (identifierCopy)
        {
          dsid2 = [userCopy dsid];
          v56 = [self fetchRequestMatchingBlueprintsForUserWithDSID:dsid2 ofType:@"usage-limit" withIdentifier:identifierCopy fromOrganization:managingOrganization];

          [v56 setReturnsObjectsAsFaults:0];
          v57 = v229;
          v225 = v229[5];
          v58 = [v56 execute:&v225];
          objc_storeStrong(v57 + 5, v225);

          if (!v58)
          {
            v59 = +[STLog persistence];
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              +[STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:];
            }

            v153 = 0;
            v52 = 0;
            goto LABEL_126;
          }
        }

        else
        {
          v60 = objc_alloc(MEMORY[0x1E696AEC0]);
          v61 = objc_opt_new();
          uUIDString = [v61 UUIDString];
          identifierCopy = [v60 initWithFormat:@"%@_%@", @"budget_activation", uUIDString];

          v58 = 0;
        }

        v153 = v58;
        if ([v58 count] >= 2)
        {
          v63 = +[STLog persistence];
          if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
          {
            +[STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:];
          }
        }

        managedObjectContext = [userCopy managedObjectContext];
        firstObject3 = [v58 firstObject];
        if (!firstObject3)
        {
          firstObject3 = [[STBlueprint alloc] initWithContext:managedObjectContext];
          [(STBlueprint *)firstObject3 setType:@"usage-limit"];
          [(STBlueprint *)firstObject3 setIdentifier:identifierCopy];
          [(STBlueprint *)firstObject3 setOrganization:managingOrganization];
          v66 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{userCopy, 0}];
          [(STBlueprint *)firstObject3 setUsers:v66];

          v67 = objc_opt_new();
          [(STBlueprint *)firstObject3 setCreationDate:v67];
        }

        [(STBlueprint *)firstObject3 setIsDirty:1];
        [(STBlueprint *)firstObject3 setLimitEnabled:enabled];
        usageLimit = [(STBlueprint *)firstObject3 usageLimit];
        if (!usageLimit)
        {
          usageLimit = [[STBlueprintUsageLimit alloc] initWithContext:managedObjectContext];
          v69 = [MEMORY[0x1E696AD98] numberWithDouble:300.0];
          [(STBlueprintUsageLimit *)usageLimit setNotificationTimeInterval:v69];
        }

        [(STBlueprintUsageLimit *)usageLimit setApplicationIdentifiers:v161];
        [(STBlueprintUsageLimit *)usageLimit setWebsiteIdentifiers:v160];
        [(STBlueprintUsageLimit *)usageLimit setCategoryIdentifiersVersion2:v163];
        v70 = [v163 mutableCopy];
        [v70 removeObject:*MEMORY[0x1E6993B60]];
        [v70 removeObject:*MEMORY[0x1E6993B18]];
        [v70 removeObject:*MEMORY[0x1E6993B58]];
        if (v158 && ![v70 count])
        {
          [v70 addObject:*MEMORY[0x1E6993B00]];
        }

        [(STBlueprintUsageLimit *)usageLimit setCategoryIdentifiers:v70];
        if (v158)
        {
          [(STBlueprintUsageLimit *)usageLimit setItemIdentifiers:v70];
          v71 = &STBlueprintUsageLimitItemTypeCategory;
        }

        else if (v23)
        {
          [(STBlueprintUsageLimit *)usageLimit setItemIdentifiers:v161];
          v71 = STBlueprintUsageLimitItemTypeApp;
        }

        else
        {
          if (!v154)
          {
            goto LABEL_59;
          }

          [(STBlueprintUsageLimit *)usageLimit setItemIdentifiers:v160];
          v71 = STBlueprintUsageLimitItemTypeWebDomain;
        }

        [(STBlueprintUsageLimit *)usageLimit setUsageItemType:*v71];
LABEL_59:
        if (weekdayCopy)
        {
          v223[0] = MEMORY[0x1E69E9820];
          v223[1] = 3221225472;
          v223[2] = __175__STBlueprint_UsageLimit__saveUsageLimitWithIdentifier_user_bundleIdentifiers_webDomains_categoryIdentifiers_dailyBudgetLimit_budgetLimitByWeekday_enabled_behaviorType_error___block_invoke;
          v223[3] = &unk_1E7CE6F48;
          v224 = usageLimit;
          [weekdayCopy enumerateKeysAndObjectsUsingBlock:v223];
        }

        else
        {
          [(STBlueprintUsageLimit *)usageLimit setBudgetLimit:limit];
        }

        [(STBlueprint *)firstObject3 setUsageLimit:usageLimit];
        v217 = 0;
        v218 = &v217;
        v219 = 0x3032000000;
        v220 = __Block_byref_object_copy__1;
        v221 = __Block_byref_object_dispose__1;
        v222 = 0;
        v211 = 0;
        v212 = &v211;
        v213 = 0x3032000000;
        v214 = __Block_byref_object_copy__1;
        v215 = __Block_byref_object_dispose__1;
        v216 = 0;
        v205 = 0;
        v206 = &v205;
        v207 = 0x3032000000;
        v208 = __Block_byref_object_copy__1;
        v209 = __Block_byref_object_dispose__1;
        v210 = 0;
        v199 = 0;
        v200 = &v199;
        v201 = 0x3032000000;
        v202 = __Block_byref_object_copy__1;
        v203 = __Block_byref_object_dispose__1;
        v204 = 0;
        v193 = 0;
        v194 = &v193;
        v195 = 0x3032000000;
        v196 = __Block_byref_object_copy__1;
        v197 = __Block_byref_object_dispose__1;
        v198 = 0;
        v187 = 0;
        v188 = &v187;
        v189 = 0x3032000000;
        v190 = __Block_byref_object_copy__1;
        v191 = __Block_byref_object_dispose__1;
        v192 = 0;
        v72 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID.URIRepresentation.absoluteString" ascending:1];
        v234 = v72;
        v149 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v234 count:1];

        configurations2 = [(STBlueprint *)firstObject3 configurations];
        v148 = [configurations2 sortedArrayUsingDescriptors:v149];

        v183 = 0;
        v184 = &v183;
        v185 = 0x2020000000;
        v186 = 0;
        v170[0] = MEMORY[0x1E69E9820];
        v170[1] = 3221225472;
        v170[2] = __175__STBlueprint_UsageLimit__saveUsageLimitWithIdentifier_user_bundleIdentifiers_webDomains_categoryIdentifiers_dailyBudgetLimit_budgetLimitByWeekday_enabled_behaviorType_error___block_invoke_2;
        v170[3] = &unk_1E7CE6F70;
        v172 = &v228;
        v173 = &v183;
        v180 = v23 != 0;
        v174 = &v217;
        v175 = &v211;
        v59 = managedObjectContext;
        v171 = v59;
        v176 = &v205;
        v181 = v154 != 0;
        v177 = &v199;
        v178 = &v193;
        v182 = v158 != 0;
        v179 = &v187;
        [v148 enumerateObjectsUsingBlock:v170];
        if (*(v184 + 24) == 1)
        {
          v74 = +[STLog persistence];
          if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
          {
            +[STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:];
          }

          v52 = 0;
          goto LABEL_125;
        }

        if (type)
        {
          if (type != 1)
          {
            v78 = 0;
            v151 = 0;
            v152 = 0;
LABEL_73:
            v150 = v78;
            if (v23)
            {
              if (v218[5])
              {
                [v212[5] setPayloadMode:v78];
                [v212[5] setPayloadApps:v161];
              }

              else
              {
                v80 = [[STBlueprintConfiguration alloc] initWithContext:v59];
                v81 = v218[5];
                v218[5] = v80;

                [v218[5] setBlueprint:firstObject3];
                v144 = MEMORY[0x1E6996238];
                v145 = userCopy;
                localUserDeviceState = [v145 localUserDeviceState];
                if (localUserDeviceState && (v83 = [v145 isManaged], localUserDeviceState, !v83))
                {
                  v90 = objc_alloc(MEMORY[0x1E696AEC0]);
                  dsid3 = objc_opt_new();
                  uUIDString2 = [dsid3 UUIDString];
                  v89 = [v90 initWithFormat:@"%@_%@_%@", @"budget_configuration", @"personal", uUIDString2];
                }

                else
                {
                  v84 = objc_alloc(MEMORY[0x1E696AEC0]);
                  dsid3 = [v145 dsid];
                  uUIDString2 = [dsid3 stringValue];
                  v87 = objc_opt_new();
                  uUIDString3 = [v87 UUIDString];
                  v89 = [v84 initWithFormat:@"%@_%@_%@_%@", @"budget_configuration", @"family", uUIDString2, uUIDString3];
                }

                v91 = v89;
                v92 = [v144 buildWithIdentifier:v91 withMode:v150 withApps:v161 withExemptApps:payloadApps];
                v93 = v212[5];
                v212[5] = v92;
              }

              declarationIdentifier = [v212[5] declarationIdentifier];
              [v218[5] setIdentifier:declarationIdentifier];

              declarationType = [v212[5] declarationType];
              [v218[5] setType:declarationType];

              [v212[5] updateServerHash];
              v96 = v212[5];
              v97 = v229;
              v169 = v229[5];
              v98 = [v96 serializeAsDataWithError:&v169];
              objc_storeStrong(v97 + 5, v169);
              v79 = v98 != 0;
              if (v98)
              {
                [v218[5] setPayloadPlist:v98];
              }

              else
              {
                v99 = +[STLog persistence];
                if (os_log_type_enabled(v99, OS_LOG_TYPE_FAULT))
                {
                  +[STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:];
                }
              }
            }

            else
            {
              v79 = 1;
            }

            if (v79 && v154)
            {
              if (v206[5])
              {
                [v200[5] setPayloadMode:v152];
                [v200[5] setPayloadHostnames:v160];
              }

              else
              {
                v100 = [[STBlueprintConfiguration alloc] initWithContext:v59];
                v101 = v206[5];
                v206[5] = v100;

                [v206[5] setBlueprint:firstObject3];
                v146 = MEMORY[0x1E6996248];
                v155 = userCopy;
                localUserDeviceState2 = [v155 localUserDeviceState];
                if (localUserDeviceState2 && (v103 = [v155 isManaged], localUserDeviceState2, !v103))
                {
                  v110 = objc_alloc(MEMORY[0x1E696AEC0]);
                  dsid4 = objc_opt_new();
                  uUIDString4 = [dsid4 UUIDString];
                  v106 = [v110 initWithFormat:@"%@_%@_%@", @"budget_configuration", @"personal", uUIDString4];
                }

                else
                {
                  v104 = objc_alloc(MEMORY[0x1E696AEC0]);
                  dsid4 = [v155 dsid];
                  uUIDString4 = [dsid4 stringValue];
                  v107 = objc_opt_new();
                  uUIDString5 = [v107 UUIDString];
                  v106 = [v104 initWithFormat:@"%@_%@_%@_%@", @"budget_configuration", @"family", uUIDString4, uUIDString5];
                }

                v111 = v106;
                v112 = [v146 buildWithIdentifier:v111 withMode:v152 withHostnames:v160 withExemptApps:payloadApps];
                v113 = v200[5];
                v200[5] = v112;
              }

              declarationIdentifier2 = [v200[5] declarationIdentifier];
              [v206[5] setIdentifier:declarationIdentifier2];

              declarationType2 = [v200[5] declarationType];
              [v206[5] setType:declarationType2];

              [v200[5] updateServerHash];
              v116 = v200[5];
              v117 = v229;
              v168 = v229[5];
              v118 = [v116 serializeAsDataWithError:&v168];
              objc_storeStrong(v117 + 5, v168);
              v79 = v118 != 0;
              if (v118)
              {
                [v206[5] setPayloadPlist:v118];
              }

              else
              {
                v119 = +[STLog persistence];
                if (os_log_type_enabled(v119, OS_LOG_TYPE_FAULT))
                {
                  +[STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:];
                }
              }
            }

            if (v79 && v158)
            {
              if (v194[5])
              {
                [v188[5] setPayloadMode:v151];
                [v188[5] setPayloadCategories:v70];
                [v188[5] setPayloadCategoriesVersion2:v163];
              }

              else
              {
                v120 = [[STBlueprintConfiguration alloc] initWithContext:v59];
                v121 = v194[5];
                v194[5] = v120;

                [v194[5] setBlueprint:firstObject3];
                v156 = MEMORY[0x1E6996240];
                v159 = userCopy;
                localUserDeviceState3 = [v159 localUserDeviceState];
                if (localUserDeviceState3 && (v123 = [v159 isManaged], localUserDeviceState3, !v123))
                {
                  v130 = objc_alloc(MEMORY[0x1E696AEC0]);
                  dsid5 = objc_opt_new();
                  uUIDString6 = [dsid5 UUIDString];
                  v126 = [v130 initWithFormat:@"%@_%@_%@", @"budget_configuration", @"personal", uUIDString6];
                }

                else
                {
                  v124 = objc_alloc(MEMORY[0x1E696AEC0]);
                  dsid5 = [v159 dsid];
                  uUIDString6 = [dsid5 stringValue];
                  v127 = objc_opt_new();
                  uUIDString7 = [v127 UUIDString];
                  v126 = [v124 initWithFormat:@"%@_%@_%@_%@", @"budget_configuration", @"family", uUIDString6, uUIDString7];
                }

                v131 = v126;
                v132 = [v156 buildWithIdentifier:v131 withMode:v151 withCategories:v70 withCategoriesVersion2:v163 withExemptApps:payloadApps];
                v133 = v188[5];
                v188[5] = v132;
              }

              declarationIdentifier3 = [v188[5] declarationIdentifier];
              [v194[5] setIdentifier:declarationIdentifier3];

              declarationType3 = [v188[5] declarationType];
              [v194[5] setType:declarationType3];

              [v188[5] updateServerHash];
              v136 = v188[5];
              v137 = v229;
              v167 = v229[5];
              v138 = [v136 serializeAsDataWithError:&v167];
              objc_storeStrong(v137 + 5, v167);
              if (!v138)
              {
                v142 = +[STLog persistence];
                if (os_log_type_enabled(v142, OS_LOG_TYPE_FAULT))
                {
                  +[STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:];
                }

LABEL_122:

LABEL_123:
                v52 = 0;
                goto LABEL_124;
              }

              [v194[5] setPayloadPlist:v138];
            }

            else if (!v79)
            {
              goto LABEL_123;
            }

            v139 = +[STAdminPersistenceController sharedController];
            v140 = v229;
            v166 = v229[5];
            v141 = [v139 saveContext:v59 error:&v166];
            objc_storeStrong(v140 + 5, v166);

            if (v141)
            {
              v52 = 1;
LABEL_124:

              v74 = v150;
LABEL_125:

              _Block_object_dispose(&v183, 8);
              _Block_object_dispose(&v187, 8);

              _Block_object_dispose(&v193, 8);
              _Block_object_dispose(&v199, 8);

              _Block_object_dispose(&v205, 8);
              _Block_object_dispose(&v211, 8);

              _Block_object_dispose(&v217, 8);
LABEL_126:

              if (error)
              {
                *error = v229[5];
              }

              goto LABEL_129;
            }

            v142 = +[STLog persistence];
            if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
            {
              +[STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:];
            }

            goto LABEL_122;
          }

          v75 = MEMORY[0x1E69961A8];
          v76 = MEMORY[0x1E69961B8];
          v77 = MEMORY[0x1E6996190];
        }

        else
        {
          v75 = MEMORY[0x1E69961B0];
          v76 = MEMORY[0x1E69961C0];
          v77 = MEMORY[0x1E69961A0];
        }

        v78 = *v77;
        v152 = *v76;
        v151 = *v75;
        goto LABEL_73;
      }

      v54 = +[STLog persistence];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        +[STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:];
      }
    }

    else
    {
      v48 = +[STLog persistence];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        appleID3 = [userCopy appleID];
        [STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:appleID3 user:v235 bundleIdentifiers:v48 webDomains:? categoryIdentifiers:? dailyBudgetLimit:? budgetLimitByWeekday:? enabled:? behaviorType:? error:?];
      }
    }

    payloadApps = 0;
    goto LABEL_34;
  }

  v49 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:21 userInfo:0];
  v50 = v229[5];
  v229[5] = v49;

  v51 = +[STLog persistence];
  if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
  {
    +[STBlueprint(ManagedUser) createManagedUserBlueprintForUser:error:];
  }

  v52 = 0;
  if (error)
  {
    *error = v229[5];
  }

LABEL_129:

  _Block_object_dispose(&v228, 8);
  return v52;
}

uint64_t __175__STBlueprint_UsageLimit__saveUsageLimitWithIdentifier_user_bundleIdentifiers_webDomains_categoryIdentifiers_dailyBudgetLimit_budgetLimitByWeekday_enabled_behaviorType_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [a3 doubleValue];
  v7 = v6;
  v8 = [v5 unsignedIntegerValue];

  return [v4 setBudgetLimit:v8 forDay:v7];
}

void __175__STBlueprint_UsageLimit__saveUsageLimitWithIdentifier_user_bundleIdentifiers_webDomains_categoryIdentifiers_dailyBudgetLimit_budgetLimitByWeekday_enabled_behaviorType_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 payloadPlist];

  if (v8)
  {
    v9 = MEMORY[0x1E6996208];
    v10 = [v7 payloadPlist];
    v11 = *(*(a1 + 40) + 8);
    obj = *(v11 + 40);
    v12 = [v9 declarationForData:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);

    if (!v12)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a4 = 1;
      goto LABEL_26;
    }

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (*(a1 + 104) == 1)
        {
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
          v13 = *(a1 + 64);
LABEL_17:
          objc_storeStrong((*(v13 + 8) + 40), v12);
          goto LABEL_26;
        }

        v14 = +[STLog screentime];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }
    }

    if (!*(*(*(a1 + 72) + 8) + 40))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (*(a1 + 105) == 1)
        {
          objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
          v13 = *(a1 + 80);
          goto LABEL_17;
        }

        v14 = +[STLog screentime];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }
    }

    if (!*(*(*(a1 + 88) + 8) + 40))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (*(a1 + 106) == 1)
        {
          objc_storeStrong((*(*(a1 + 88) + 8) + 40), a2);
          v13 = *(a1 + 96);
          goto LABEL_17;
        }

        v14 = +[STLog screentime];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
LABEL_24:
          *buf = 136446466;
          v17 = "+[STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:]_block_invoke";
          v18 = 2112;
          v19 = v7;
          _os_log_impl(&dword_1B831F000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Deleting configuration (%@)", buf, 0x16u);
        }

LABEL_25:

        [*(a1 + 32) deleteObject:v7];
      }
    }
  }

  else
  {
    v12 = +[STLog persistence];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      +[STBlueprint _buildConfigurationsByDeclarationIdentifierFromBlueprint:error:];
    }
  }

LABEL_26:
}

- (void)updateUsageLimitWithAlwaysAllowBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (_os_feature_enabled_impl())
  {
    configurations = [(STBlueprint *)self configurations];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__STBlueprint_UsageLimit__updateUsageLimitWithAlwaysAllowBundleIdentifiers___block_invoke;
    v7[3] = &unk_1E7CE6F98;
    v8 = identifiersCopy;
    [configurations enumerateObjectsUsingBlock:v7];

    v6 = v8;
  }

  else
  {
    v6 = +[STLog persistence];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B831F000, v6, OS_LOG_TYPE_DEFAULT, "Not updating usage limit with always allow list because exempt_apps feature is off", buf, 2u);
    }
  }
}

void __76__STBlueprint_UsageLimit__updateUsageLimitWithAlwaysAllowBundleIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 payloadPlist];
  if (v4)
  {
    v5 = v4;
    v12 = 0;
    v6 = [MEMORY[0x1E6996208] declarationForData:v4 error:&v12];
    v7 = v12;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [v6 setPayloadExemptApps:*(a1 + 32)];
        [v6 updateServerHash];
        v11 = v7;
        v8 = [v6 serializeAsDataWithError:&v11];
        v9 = v11;

        if (v8)
        {
          [v3 setPayloadPlist:v8];
          v5 = v8;
        }

        else
        {
          v5 = +[STLog persistence];
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            __76__STBlueprint_UsageLimit__updateUsageLimitWithAlwaysAllowBundleIdentifiers___block_invoke_cold_2();
          }
        }

        v7 = v9;
        goto LABEL_16;
      }

      v10 = +[STLog persistence];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __76__STBlueprint_UsageLimit__updateUsageLimitWithAlwaysAllowBundleIdentifiers___block_invoke_cold_1();
      }
    }

    else
    {
      v10 = +[STLog persistence];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __76__STBlueprint_UsageLimit__updateUsageLimitWithAlwaysAllowBundleIdentifiers___block_invoke_cold_3();
      }
    }

LABEL_16:
    goto LABEL_17;
  }

  v7 = +[STLog persistence];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __76__STBlueprint_UsageLimit__updateUsageLimitWithAlwaysAllowBundleIdentifiers___block_invoke_cold_4();
  }

LABEL_17:
}

+ (BOOL)deleteUsageLimitWithIdentifier:(id)identifier user:(id)user managedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  userCopy = user;
  identifierCopy = identifier;
  managingOrganization = [userCopy managingOrganization];
  dsid = [userCopy dsid];

  v14 = [STBlueprint fetchRequestMatchingBlueprintsForUserWithDSID:dsid ofType:@"usage-limit" withIdentifier:identifierCopy fromOrganization:managingOrganization];

  [v14 setReturnsObjectsAsFaults:0];
  v26 = 0;
  v15 = [v14 execute:&v26];
  v16 = v26;
  if (v15)
  {
    if ([v15 count] >= 2)
    {
      v17 = +[STLog persistence];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        +[STBlueprint(UsageLimit) saveUsageLimitWithIdentifier:user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:];
      }
    }

    if ([v15 count])
    {
      v18 = [v15 objectAtIndexedSubscript:0];
      [v18 tombstone];
      v19 = +[STAdminPersistenceController sharedController];
      v25 = v16;
      v20 = [v19 saveContext:contextCopy error:&v25];
      v21 = v25;

      if ((v20 & 1) == 0)
      {
        v22 = +[STLog persistence];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          +[STBlueprint(UsageLimit) deleteUsageLimitWithIdentifier:user:managedObjectContext:error:];
        }
      }
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:14 userInfo:0];
      v20 = 0;
      v18 = v16;
    }
  }

  else
  {
    v18 = +[STLog persistence];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[STBlueprint(AlwaysAllow) saveAlwaysAllowListForUser:withBundleIDs:overwriteExistingList:error:];
    }

    v20 = 0;
    v21 = v16;
  }

  if (error)
  {
    v23 = v21;
    *error = v21;
  }

  return v20;
}

- (NSString)limitDisplayName
{
  usageLimit = [(STBlueprint *)self usageLimit];
  categoryIdentifiersVersion2 = [usageLimit categoryIdentifiersVersion2];
  v4 = categoryIdentifiersVersion2;
  if (categoryIdentifiersVersion2)
  {
    categoryIdentifiers = categoryIdentifiersVersion2;
  }

  else
  {
    categoryIdentifiers = [usageLimit categoryIdentifiers];
  }

  v6 = categoryIdentifiers;

  applicationIdentifiers = [usageLimit applicationIdentifiers];
  websiteIdentifiers = [usageLimit websiteIdentifiers];
  if (![v6 count] && !objc_msgSend(applicationIdentifiers, "count") && !objc_msgSend(websiteIdentifiers, "count"))
  {
    usageItemType = [usageLimit usageItemType];
    if ([usageItemType isEqualToString:@"category"])
    {
      itemIdentifiers = [usageLimit itemIdentifiers];
      v11 = v6;
      v6 = itemIdentifiers;
    }

    else if ([usageItemType isEqualToString:@"app"])
    {
      itemIdentifiers2 = [usageLimit itemIdentifiers];
      v11 = applicationIdentifiers;
      applicationIdentifiers = itemIdentifiers2;
    }

    else
    {
      if (![usageItemType isEqualToString:@"webdomain"])
      {
LABEL_14:

        goto LABEL_15;
      }

      itemIdentifiers3 = [usageLimit itemIdentifiers];
      v11 = websiteIdentifiers;
      websiteIdentifiers = itemIdentifiers3;
    }

    goto LABEL_14;
  }

LABEL_15:
  v14 = [STBlueprint displayNameForUsageLimitWithCategoryIdentifiers:v6 bundleIdentifiers:applicationIdentifiers webDomains:websiteIdentifiers];

  return v14;
}

+ (id)displayNameForUsageLimitWithCategoryIdentifiers:(id)identifiers bundleIdentifiers:(id)bundleIdentifiers webDomains:(id)domains
{
  v65 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  bundleIdentifiersCopy = bundleIdentifiers;
  domainsCopy = domains;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__1;
  v56 = __Block_byref_object_dispose__1;
  v57 = 0;
  v51 = 2;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v9 = [self _getDisplayNameAndAddCategories:identifiersCopy toItemNames:v8 remainingItems:&v51];
  v10 = v53[5];
  v53[5] = v9;

  if (!v53[5])
  {
    v11 = [identifiersCopy count];
    v12 = [bundleIdentifiersCopy count];
    v13 = [domainsCopy count];
    if (v51)
    {
      v39 = v12 + v11;
      v40 = v13;
      v14 = +[STAppInfoCache sharedCache];
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v15 = bundleIdentifiersCopy;
      v16 = [v15 countByEnumeratingWithState:&v46 objects:v64 count:16];
      if (v16)
      {
        v18 = *v47;
        *&v17 = 138543874;
        v38 = v17;
        do
        {
          v19 = 0;
          do
          {
            if (*v47 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [v14 appInfoForBundleIdentifier:{*(*(&v46 + 1) + 8 * v19), v38}];
            v21 = v20;
            if (!v20)
            {
              v25 = +[STLog appInfo];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v32 = [0 description];
                *buf = v38;
                v59 = v32;
                v60 = 2080;
                v61 = "+[STBlueprint(UsageLimit) displayNameForUsageLimitWithCategoryIdentifiers:bundleIdentifiers:webDomains:]";
                v62 = 1024;
                v63 = 512;
                _os_log_error_impl(&dword_1B831F000, v25, OS_LOG_TYPE_ERROR, "Nil appInfo: %{public}@ in function: %s:%d", buf, 0x1Cu);
              }

              goto LABEL_13;
            }

            displayName = [v20 displayName];
            v23 = [displayName length] == 0;

            if (v23)
            {
              bundleIdentifier = [v21 bundleIdentifier];
              v29 = [bundleIdentifier length] == 0;

              if (v29)
              {
                v25 = +[STLog appInfo];
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  v34 = [v21 description];
                  *buf = v38;
                  v59 = v34;
                  v60 = 2080;
                  v61 = "+[STBlueprint(UsageLimit) displayNameForUsageLimitWithCategoryIdentifiers:bundleIdentifiers:webDomains:]";
                  v62 = 1024;
                  v63 = 520;
                  _os_log_error_impl(&dword_1B831F000, v25, OS_LOG_TYPE_ERROR, "Display name and bundleId missing for appInfo: %{public}@ in function: %s:%d", buf, 0x1Cu);
                }

LABEL_13:

                v26 = +[STScreenTimeCoreBundle bundle];
                v27 = [v26 localizedStringForKey:@"DisplayNameUnknown" value:&stru_1F3040980 table:0];

                goto LABEL_19;
              }

              v30 = +[STLog appInfo];
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v33 = [v21 description];
                *buf = v38;
                v59 = v33;
                v60 = 2080;
                v61 = "+[STBlueprint(UsageLimit) displayNameForUsageLimitWithCategoryIdentifiers:bundleIdentifiers:webDomains:]";
                v62 = 1024;
                v63 = 517;
                _os_log_error_impl(&dword_1B831F000, v30, OS_LOG_TYPE_ERROR, "Display name missing for appInfo: %{public}@ in function: %s:%d. using bundleId instead", buf, 0x1Cu);
              }

              bundleIdentifier2 = [v21 bundleIdentifier];
            }

            else
            {
              bundleIdentifier2 = [v21 displayName];
            }

            v27 = bundleIdentifier2;
LABEL_19:
            [v8 addObject:v27];
            v31 = --v51 == 0;

            if (v31)
            {
              goto LABEL_26;
            }

            ++v19;
          }

          while (v16 != v19);
          v35 = [v15 countByEnumeratingWithState:&v46 objects:v64 count:16];
          v16 = v35;
        }

        while (v35);
      }

LABEL_26:

      if (v51)
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __104__STBlueprint_UsageLimit__displayNameForUsageLimitWithCategoryIdentifiers_bundleIdentifiers_webDomains___block_invoke_2;
        v44[3] = &unk_1E7CE6FC0;
        v44[4] = &v52;
        [self _addWebDomains:domainsCopy toItemNames:v8 remainingItems:v51 totalCount:v39 + v40 completionHandler:v44];
      }

      else
      {
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __104__STBlueprint_UsageLimit__displayNameForUsageLimitWithCategoryIdentifiers_bundleIdentifiers_webDomains___block_invoke_68;
        v45[3] = &unk_1E7CE6FC0;
        v45[4] = &v52;
        [self _createDisplayNameWithItemNames:v8 itemCount:v39 + v40 completionHandler:v45];
      }
    }

    else
    {
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __104__STBlueprint_UsageLimit__displayNameForUsageLimitWithCategoryIdentifiers_bundleIdentifiers_webDomains___block_invoke;
      v50[3] = &unk_1E7CE6FC0;
      v50[4] = &v52;
      [self _createDisplayNameWithItemNames:v8 itemCount:v12 + v11 + v13 completionHandler:v50];
    }
  }

  v36 = v53[5];

  _Block_object_dispose(&v52, 8);

  return v36;
}

+ (void)fetchDisplayNameForUsageLimitWithCategoryIdentifiers:(id)identifiers bundleIdentifiers:(id)bundleIdentifiers webDomains:(id)domains completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  bundleIdentifiersCopy = bundleIdentifiers;
  domainsCopy = domains;
  handlerCopy = handler;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 2;
  v14 = objc_alloc(MEMORY[0x1E695DF70]);
  v15 = [v14 initWithCapacity:v36[3]];
  v16 = [self _getDisplayNameAndAddCategories:identifiersCopy toItemNames:v15 remainingItems:v36 + 3];
  if (v16)
  {
    handlerCopy[2](handlerCopy, v16);
  }

  else
  {
    v17 = [bundleIdentifiersCopy count];
    v18 = [identifiersCopy count];
    v19 = v18 + v17 + [domainsCopy count];
    if (v36[3])
    {
      if (v17)
      {
        if ([bundleIdentifiersCopy count] >= 2 && v36[3] == 2)
        {
          v20 = objc_alloc(MEMORY[0x1E695DFD8]);
          v21 = [bundleIdentifiersCopy objectAtIndexedSubscript:0];
          v26 = [bundleIdentifiersCopy objectAtIndexedSubscript:1];
          v22 = [v20 initWithObjects:{v21, v26, 0}];
        }

        else
        {
          v23 = objc_alloc(MEMORY[0x1E695DFD8]);
          v21 = [bundleIdentifiersCopy objectAtIndexedSubscript:0];
          v22 = [v23 initWithObjects:{v21, 0}];
        }

        v24 = +[STAppInfoCache sharedCache];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __127__STBlueprint_UsageLimit__fetchDisplayNameForUsageLimitWithCategoryIdentifiers_bundleIdentifiers_webDomains_completionHandler___block_invoke;
        v27[3] = &unk_1E7CE6FE8;
        v25 = v22;
        v28 = v25;
        v29 = v15;
        v32 = &v35;
        selfCopy = self;
        v34 = v19;
        v31 = handlerCopy;
        v30 = domainsCopy;
        [v24 fetchAppInfoForBundleIdentifiers:v25 completionHandler:v27];
      }

      else
      {
        [self _addWebDomains:domainsCopy toItemNames:v15 remainingItems:? totalCount:? completionHandler:?];
      }
    }

    else
    {
      [self _createDisplayNameWithItemNames:v15 itemCount:v19 completionHandler:handlerCopy];
    }
  }

  _Block_object_dispose(&v35, 8);
}

void __127__STBlueprint_UsageLimit__fetchDisplayNameForUsageLimitWithCategoryIdentifiers_bundleIdentifiers_webDomains_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:{v9, v15}];
        v11 = [v10 displayName];

        if (v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = v9;
        }

        [*(a1 + 40) addObject:v12];
        --*(*(*(a1 + 64) + 8) + 24);
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *(a1 + 72);
  v14 = *(*(*(a1 + 64) + 8) + 24);
  if (v14)
  {
    [v13 _addWebDomains:*(a1 + 48) toItemNames:*(a1 + 40) remainingItems:v14 totalCount:*(a1 + 80) completionHandler:*(a1 + 56)];
  }

  else
  {
    [v13 _createDisplayNameWithItemNames:*(a1 + 40) itemCount:*(a1 + 80) completionHandler:*(a1 + 56)];
  }
}

+ (id)_getDisplayNameAndAddCategories:(id)categories toItemNames:(id)names remainingItems:(unint64_t *)items
{
  v28 = *MEMORY[0x1E69E9840];
  categoriesCopy = categories;
  namesCopy = names;
  v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:categoriesCopy];
  v10 = objc_alloc(MEMORY[0x1E695DFD8]);
  v11 = STAvailableCategoriesExcludingSystemCategories(v10);
  v12 = [v10 initWithArray:v11];

  if ([v9 isEqualToSet:v12])
  {
    v13 = +[STScreenTimeCoreBundle bundle];
    v14 = [v13 localizedStringForKey:@"AllAppsAndCategoriesDisplayName" value:&stru_1F3040980 table:0];
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = categoriesCopy;
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
LABEL_5:
      v19 = 0;
      while (1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = STCategoryNameWithIdentifier(*(*(&v23 + 1) + 8 * v19));
        [namesCopy addObject:{v20, v23}];

        if ((*items)-- == 1)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v17)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    v14 = 0;
  }

  return v14;
}

+ (void)_addWebDomains:(id)domains toItemNames:(id)names remainingItems:(unint64_t)items totalCount:(unint64_t)count completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  domainsCopy = domains;
  namesCopy = names;
  handlerCopy = handler;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = domainsCopy;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v22 != v17)
      {
        objc_enumerationMutation(v14);
      }

      _lp_userVisibleHost = [*(*(&v21 + 1) + 8 * v18) _lp_userVisibleHost];
      [namesCopy addObject:_lp_userVisibleHost];

      if (items - 1 == v18)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
        items -= v18;
        if (v16)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [self _createDisplayNameWithItemNames:namesCopy itemCount:count completionHandler:handlerCopy];
}

+ (void)_createDisplayNameWithItemNames:(id)names itemCount:(unint64_t)count completionHandler:(id)handler
{
  namesCopy = names;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (count)
  {
    v9 = [namesCopy objectAtIndexedSubscript:0];
    if (count == 1)
    {
      (v8)[2](v8, v9);
    }

    else
    {
      v10 = [namesCopy objectAtIndexedSubscript:1];
      v11 = +[STScreenTimeCoreBundle bundle];
      v12 = [v11 localizedStringForKey:@"BudgetPredicateTitleText" value:&stru_1F3040980 table:0];

      v13 = objc_alloc(MEMORY[0x1E696AEC0]);
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      v15 = [v13 initWithFormat:v12 locale:currentLocale, count - 2, v9, v10];
      (v8)[2](v8, v15);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, &stru_1F3040980);
  }
}

- (NSString)limitScheduleText
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 setFormattingContext:1];
  [v3 setUnitsStyle:5];
  usageLimit = [(STBlueprint *)self usageLimit];
  budgetLimitScheduleRepresentation = [usageLimit budgetLimitScheduleRepresentation];

  simpleSchedule = [budgetLimitScheduleRepresentation simpleSchedule];
  v7 = simpleSchedule;
  if (simpleSchedule)
  {
    [simpleSchedule budgetLimit];
    v8 = [v3 stringFromTimeInterval:?];
    v9 = +[STScreenTimeCoreBundle bundle];
    v10 = [v9 localizedStringForKey:@"TimeEveryDayFormat" value:&stru_1F3040980 table:0];

    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v13 = [v11 initWithFormat:v10 locale:currentLocale, v8];
  }

  else
  {
    v29 = budgetLimitScheduleRepresentation;
    customScheduleItems = [budgetLimitScheduleRepresentation customScheduleItems];
    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(customScheduleItems, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = customScheduleItems;
    v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          v22 = MEMORY[0x1E696AD98];
          [v21 budgetLimit];
          v23 = [v22 numberWithDouble:?];
          v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v21, "day")}];
          [v15 setObject:v23 forKeyedSubscript:v24];
        }

        v18 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v18);
    }

    v25 = objc_opt_class();
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __44__STBlueprint_UsageLimit__limitScheduleText__block_invoke;
    v33[3] = &unk_1E7CE6EE8;
    v34 = v15;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __44__STBlueprint_UsageLimit__limitScheduleText__block_invoke_2;
    v30[3] = &unk_1E7CE6F10;
    v26 = v34;
    v31 = v26;
    v32 = v3;
    v13 = [v25 scheduleTextWithLocale:0 weekdayScheduleComparator:v33 scheduleTimeGetter:v30];
    if (!v13)
    {
      v27 = +[STScreenTimeCoreBundle bundle];
      v13 = [v27 localizedStringForKey:@"ScheduleOff" value:&stru_1F3040980 table:0];
    }

    v7 = 0;
    budgetLimitScheduleRepresentation = v29;
  }

  return v13;
}

uint64_t __44__STBlueprint_UsageLimit__limitScheduleText__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = [v10 isEqualToNumber:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __44__STBlueprint_UsageLimit__limitScheduleText__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = *(a1 + 40);
    [v5 doubleValue];
    v7 = [v6 stringFromTimeInterval:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)declarationsWithError:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)declarationsWithError:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)_predicateForDowntimeBlueprint:(void *)a1 withDateFormatter:calendar:.cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)_predicateForUsageLimitBlueprint:(void *)a1 withDateFormatter:calendar:.cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)_predicateForUsageLimitBlueprint:withDateFormatter:calendar:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_predicateForUsageLimitOverrideBlueprint:(void *)a1 withDateFormatter:calendar:.cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)_predicateForAlwaysAllowedAppsBlueprint:(void *)a1 withDateFormatter:calendar:.cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)_predicateForRestrictionsBlueprint:(void *)a1 withDateFormatter:calendar:.cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)_predicateForManagedUserBlueprint:(void *)a1 withDateFormatter:calendar:.cold.1(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)_buildConfigurationsByDeclarationIdentifierFromBlueprint:error:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v3 = 2114;
  v4 = v0;
  _os_log_fault_impl(&dword_1B831F000, v1, OS_LOG_TYPE_FAULT, "failed to deserialize config: %{public}@: %{public}@", v2, 0x16u);
}

+ (void)_buildConfigurationsByDeclarationIdentifierFromBlueprint:(void *)a1 error:.cold.4(void *a1)
{
  v1 = [a1 serialize];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __78__STBlueprint__buildConfigurationsByDeclarationIdentifierFromBlueprint_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)appExceptionsDeclarationForBlueprint:(void *)a3 usingCache:(NSObject *)a4 .cold.2(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 bundleIdentifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1B831F000, a4, OS_LOG_TYPE_ERROR, "Duplicate exception bundle identifier found:%@", a1, 0xCu);
}

+ (void)appExceptionsDeclarationForBlueprint:usingCache:.cold.3()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1B831F000, v1, OS_LOG_TYPE_ERROR, "Failed creating declaration from payload:%@. Error:%@", v2, 0x16u);
}

+ (void)appExceptionsDeclarationForBlueprint:usingCache:.cold.4()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)shouldUseGracePeriodForDowntimeOverride:configuration:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)shouldUseGracePeriodForDowntimeOverride:(uint64_t)a1 configuration:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 138543618;
  v3 = 0;
  v4 = 2114;
  v5 = a1;
  _os_log_fault_impl(&dword_1B831F000, a2, OS_LOG_TYPE_FAULT, "Failed to deserialize declaration: %{public}@: %{public}@. Defaulting to no grace period.", &v2, 0x16u);
}

+ (void)shouldUseGracePeriodForDowntimeOverride:configuration:.cold.3()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)shouldUseGracePeriodForDowntimeOverride:configuration:.cold.4()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateWithDictionaryRepresentation:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 dictionaryRepresentation];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_0(&dword_1B831F000, v2, v3, "L: %@", v4, v5, v6, v7);
}

- (void)updateWithDictionaryRepresentation:.cold.10()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updateWithDictionaryRepresentation:.cold.11()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)fetchOrCreateWithDictionaryRepresentation:inContext:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)validateForUpdate:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 136446466;
  v4 = "[STBlueprint validateForUpdate:]";
  v5 = 2114;
  v6 = v2;
  _os_log_fault_impl(&dword_1B831F000, a2, OS_LOG_TYPE_FAULT, "%{public}s Built-in CoreData Validation for update on Blueprint failed with: %{public}@", &v3, 0x16u);
}

- (void)validateForUpdate:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 type];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)validateForInsert:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 type];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)validateForDelete:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 type];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

@end