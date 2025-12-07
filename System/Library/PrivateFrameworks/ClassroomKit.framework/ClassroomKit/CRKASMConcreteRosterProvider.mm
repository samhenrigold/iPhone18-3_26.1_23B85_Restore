@interface CRKASMConcreteRosterProvider
- (BOOL)ingestCertificates:(id)certificates forTrustedUserIdentifier:(id)identifier error:(id *)error;
- (CRKASMConcreteRosterProvider)initWithConfiguration:(id)configuration;
- (CRKASMUserFetching)userFetcher;
- (id)instructorDirectoryForLocationIDs:(id)ds;
- (id)studentDirectoryForLocationIDs:(id)ds;
- (void)createCourseWithProperties:(id)properties completion:(id)completion;
- (void)dealloc;
- (void)logDurationOfOperation:(id)operation;
- (void)processFinishedWorldBuild:(id)build;
- (void)removeCourseWithIdentifier:(id)identifier completion:(id)completion;
- (void)startNewWorldBuild;
- (void)updateCourseWithIdentifier:(id)identifier properties:(id)properties completion:(id)completion;
- (void)updateManageableLocations:(id)locations;
- (void)updateRoster:(id)roster outTrustedPersonIDsChanged:(BOOL *)changed;
- (void)worldBuildDidFinish:(id)finish;
@end

@implementation CRKASMConcreteRosterProvider

- (void)dealloc
{
  [(CRKASMWorldBuildOperation *)self->_worldBuildOperation cancel];
  v3.receiver = self;
  v3.super_class = CRKASMConcreteRosterProvider;
  [(CRKASMConcreteRosterProvider *)&v3 dealloc];
}

- (CRKASMConcreteRosterProvider)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v22.receiver = self;
  v22.super_class = CRKASMConcreteRosterProvider;
  v5 = [(CRKASMConcreteRosterProvider *)&v22 init];
  if (v5)
  {
    v6 = [[CRKASMRosterProviderEnvironment alloc] initWithConfiguration:configurationCopy];
    environment = v5->_environment;
    v5->_environment = v6;

    v8 = [[CRKASMCertificateIngestor alloc] initWithConfiguration:configurationCopy];
    certificateIngestor = v5->_certificateIngestor;
    v5->_certificateIngestor = v8;

    v10 = [CRKClassKitChangeNotifier alloc];
    rosterRequirements = [configurationCopy rosterRequirements];
    v12 = [(CRKClassKitChangeNotifier *)v10 initWithRequirements:rosterRequirements];
    classKitChangeNotifier = v5->_classKitChangeNotifier;
    v5->_classKitChangeNotifier = v12;

    [(CRKClassKitChangeNotifier *)v5->_classKitChangeNotifier setDelegate:v5];
    v14 = [CRKASMRosterUpdater alloc];
    rosterRequirements2 = [configurationCopy rosterRequirements];
    v16 = [(CRKASMRosterUpdater *)v14 initWithRequirements:rosterRequirements2];
    rosterUpdater = v5->_rosterUpdater;
    v5->_rosterUpdater = v16;

    locationsWithManagePermissions = v5->_locationsWithManagePermissions;
    v19 = MEMORY[0x277CBEBF8];
    v5->_locationsWithManagePermissions = MEMORY[0x277CBEBF8];

    locations = v5->_locations;
    v5->_locations = v19;

    [(CRKASMConcreteRosterProvider *)v5 refresh];
  }

  return v5;
}

- (BOOL)ingestCertificates:(id)certificates forTrustedUserIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  certificatesCopy = certificates;
  certificateIngestor = [(CRKASMConcreteRosterProvider *)self certificateIngestor];
  LOBYTE(error) = [certificateIngestor ingestCertificates:certificatesCopy forTrustedUserIdentifier:identifierCopy error:error];

  return error;
}

- (CRKASMUserFetching)userFetcher
{
  v3 = [CRKASMConcreteUserFetcher alloc];
  environment = [(CRKASMConcreteRosterProvider *)self environment];
  configuration = [environment configuration];
  rosterRequirements = [configuration rosterRequirements];
  v7 = [(CRKASMConcreteUserFetcher *)v3 initWithRosterRequirements:rosterRequirements];

  return v7;
}

- (id)studentDirectoryForLocationIDs:(id)ds
{
  dsCopy = ds;
  environment = [(CRKASMConcreteRosterProvider *)self environment];
  configuration = [environment configuration];
  rosterRequirements = [configuration rosterRequirements];
  v8 = [CRKASMConcreteUserDirectory studentDirectoryWithRosterRequirements:rosterRequirements locationIDs:dsCopy];

  return v8;
}

- (id)instructorDirectoryForLocationIDs:(id)ds
{
  dsCopy = ds;
  environment = [(CRKASMConcreteRosterProvider *)self environment];
  configuration = [environment configuration];
  rosterRequirements = [configuration rosterRequirements];
  v8 = [CRKASMConcreteUserDirectory instructorDirectoryWithRosterRequirements:rosterRequirements locationIDs:dsCopy];

  return v8;
}

- (void)createCourseWithProperties:(id)properties completion:(id)completion
{
  completionCopy = completion;
  propertiesCopy = properties;
  rosterUpdater = [(CRKASMConcreteRosterProvider *)self rosterUpdater];
  [rosterUpdater createClassWithProperties:propertiesCopy completion:completionCopy];
}

- (void)removeCourseWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  rosterUpdater = [(CRKASMConcreteRosterProvider *)self rosterUpdater];
  roster = [(CRKASMConcreteRosterProvider *)self roster];
  [rosterUpdater removeCourseWithIdentifier:identifierCopy roster:roster completion:completionCopy];
}

- (void)updateCourseWithIdentifier:(id)identifier properties:(id)properties completion:(id)completion
{
  completionCopy = completion;
  propertiesCopy = properties;
  identifierCopy = identifier;
  rosterUpdater = [(CRKASMConcreteRosterProvider *)self rosterUpdater];
  roster = [(CRKASMConcreteRosterProvider *)self roster];
  [rosterUpdater updateCourseWithIdentifier:identifierCopy properties:propertiesCopy roster:roster completion:completionCopy];
}

- (void)startNewWorldBuild
{
  environment = [(CRKASMConcreteRosterProvider *)self environment];
  configuration = [environment configuration];
  osTransactionPrimitives = [configuration osTransactionPrimitives];
  v6 = [osTransactionPrimitives transactionWithReverseDNSReason:@"com.apple.studentd.roster"];

  worldBuildOperation = [(CRKASMConcreteRosterProvider *)self worldBuildOperation];
  [worldBuildOperation cancel];

  v8 = [CRKASMWorldBuildOperation alloc];
  environment2 = [(CRKASMConcreteRosterProvider *)self environment];
  v10 = [(CRKASMWorldBuildOperation *)v8 initWithEnvironment:environment2];
  [(CRKASMConcreteRosterProvider *)self setWorldBuildOperation:v10];

  crk_backgroundQueue = [MEMORY[0x277CF9540] crk_backgroundQueue];
  worldBuildOperation2 = [(CRKASMConcreteRosterProvider *)self worldBuildOperation];
  [crk_backgroundQueue addOperation:worldBuildOperation2];

  environment3 = [(CRKASMConcreteRosterProvider *)self environment];
  configuration2 = [environment3 configuration];
  [configuration2 transactionReleaseDelay];
  v16 = v15;

  v17 = MEMORY[0x277CCA8C8];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __50__CRKASMConcreteRosterProvider_startNewWorldBuild__block_invoke;
  v32[3] = &unk_278DC29E8;
  v34 = v16;
  v18 = v6;
  v33 = v18;
  v19 = [v17 blockOperationWithBlock:v32];
  worldBuildOperation3 = [(CRKASMConcreteRosterProvider *)self worldBuildOperation];
  [v19 addDependency:worldBuildOperation3];

  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  [mainQueue addOperation:v19];

  objc_initWeak(&location, self);
  worldBuildOperation4 = [(CRKASMConcreteRosterProvider *)self worldBuildOperation];
  v23 = MEMORY[0x277CCA8C8];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __50__CRKASMConcreteRosterProvider_startNewWorldBuild__block_invoke_14;
  v28[3] = &unk_278DC19F8;
  objc_copyWeak(&v30, &location);
  v24 = worldBuildOperation4;
  v29 = v24;
  v25 = [v23 blockOperationWithBlock:v28];
  worldBuildOperation5 = [(CRKASMConcreteRosterProvider *)self worldBuildOperation];
  [v25 addDependency:worldBuildOperation5];

  mainQueue2 = [MEMORY[0x277CCABD8] mainQueue];
  [mainQueue2 addOperation:v25];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

void __50__CRKASMConcreteRosterProvider_startNewWorldBuild__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _CRKLogASM_14(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 134217984;
    v8 = v3;
    _os_log_impl(&dword_243550000, v2, OS_LOG_TYPE_DEFAULT, "World build operation finished. Will release OS transaction in %lf seconds.", buf, 0xCu);
  }

  v4 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__CRKASMConcreteRosterProvider_startNewWorldBuild__block_invoke_11;
  block[3] = &unk_278DC10F0;
  v6 = *(a1 + 32);
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

uint64_t __50__CRKASMConcreteRosterProvider_startNewWorldBuild__block_invoke_11(uint64_t a1)
{
  v2 = _CRKLogASM_14(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_243550000, v2, OS_LOG_TYPE_DEFAULT, "Now ending OS transaction after finishing world build operation.", v4, 2u);
  }

  return [*(a1 + 32) cancel];
}

void __50__CRKASMConcreteRosterProvider_startNewWorldBuild__block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained worldBuildDidFinish:*(a1 + 32)];
}

- (void)worldBuildDidFinish:(id)finish
{
  finishCopy = finish;
  worldBuildOperation = [(CRKASMConcreteRosterProvider *)self worldBuildOperation];

  if (worldBuildOperation == finishCopy)
  {
    [(CRKASMConcreteRosterProvider *)self setWorldBuildOperation:0];
    [(CRKASMConcreteRosterProvider *)self processFinishedWorldBuild:finishCopy];
    if (![(CRKASMConcreteRosterProvider *)self isPopulated])
    {
      [(CRKASMConcreteRosterProvider *)self setPopulated:1];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)processFinishedWorldBuild:(id)build
{
  buildCopy = build;
  [(CRKASMConcreteRosterProvider *)self logDurationOfOperation:buildCopy];
  error = [buildCopy error];
  v6 = error;
  if (error)
  {
    v7 = _CRKLogASM_14(error);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CRKASMConcreteRosterProvider *)v6 processFinishedWorldBuild:v7];
    }
  }

  else
  {
    resultObject = [buildCopy resultObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = resultObject;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v16 = 0;
    roster = [v10 roster];
    [(CRKASMConcreteRosterProvider *)self updateRoster:roster outTrustedPersonIDsChanged:&v16];

    manageableLocations = [v10 manageableLocations];

    [(CRKASMConcreteRosterProvider *)self updateManageableLocations:manageableLocations];
    if (v16 == 1)
    {
      v14 = _CRKLogASM_14(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_243550000, v14, OS_LOG_TYPE_DEFAULT, "World building again because the observed trusted person IDs changed", v15, 2u);
      }

      [(CRKASMConcreteRosterProvider *)self startNewWorldBuild];
    }
  }
}

- (void)updateRoster:(id)roster outTrustedPersonIDsChanged:(BOOL *)changed
{
  v24 = *MEMORY[0x277D85DE8];
  rosterCopy = roster;
  roster = [(CRKASMConcreteRosterProvider *)self roster];
  if (rosterCopy | roster)
  {
    v8 = roster;
    roster2 = [(CRKASMConcreteRosterProvider *)self roster];
    v10 = [roster2 isEqual:rosterCopy];

    if ((v10 & 1) == 0)
    {
      v12 = _CRKLogASM_14(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        courses = [rosterCopy courses];
        v22 = 138543362;
        v23 = courses;
        _os_log_impl(&dword_243550000, v12, OS_LOG_TYPE_DEFAULT, "Updating ASM roster with courses: %{public}@", &v22, 0xCu);
      }

      v15 = _CRKLogASM_14(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        user = [rosterCopy user];
        v22 = 138543362;
        v23 = user;
        _os_log_impl(&dword_243550000, v15, OS_LOG_TYPE_DEFAULT, "Updating ASM roster with user: %{public}@", &v22, 0xCu);
      }

      v18 = _CRKLogASM_14(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        organization = [rosterCopy organization];
        v22 = 138543362;
        v23 = organization;
        _os_log_impl(&dword_243550000, v18, OS_LOG_TYPE_DEFAULT, "Updating ASM roster with organization: %{public}@", &v22, 0xCu);
      }

      [(CRKASMConcreteRosterProvider *)self setRoster:rosterCopy];
      classKitChangeNotifier = [(CRKASMConcreteRosterProvider *)self classKitChangeNotifier];
      v21 = [classKitChangeNotifier updateObservedTrustedPersonIDsWithRoster:rosterCopy];

      if (changed)
      {
        *changed = v21;
      }
    }
  }
}

- (void)updateManageableLocations:(id)locations
{
  v13 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  locationsWithManagePermissions = [(CRKASMConcreteRosterProvider *)self locationsWithManagePermissions];
  if (locationsCopy | locationsWithManagePermissions)
  {
    v6 = locationsWithManagePermissions;
    locationsWithManagePermissions2 = [(CRKASMConcreteRosterProvider *)self locationsWithManagePermissions];
    v8 = [locationsWithManagePermissions2 isEqual:locationsCopy];

    if ((v8 & 1) == 0)
    {
      v10 = _CRKLogASM_14(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 134217984;
        v12 = [locationsCopy count];
        _os_log_impl(&dword_243550000, v10, OS_LOG_TYPE_DEFAULT, "Updating Manageable ASM locations. Count: %lu", &v11, 0xCu);
      }

      [(CRKASMConcreteRosterProvider *)self setLocationsWithManagePermissions:locationsCopy];
    }
  }
}

- (void)logDurationOfOperation:(id)operation
{
  v12 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  finishedDate = [operationCopy finishedDate];
  startedDate = [operationCopy startedDate];

  [finishedDate timeIntervalSinceDate:startedDate];
  v7 = v6;

  v9 = _CRKLogASM_14(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = v7;
    _os_log_impl(&dword_243550000, v9, OS_LOG_TYPE_DEFAULT, "ASM world build operation took %.2f seconds", &v10, 0xCu);
  }
}

- (void)processFinishedWorldBuild:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 verboseDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "ASM world build failed: %{public}@", &v4, 0xCu);
}

@end