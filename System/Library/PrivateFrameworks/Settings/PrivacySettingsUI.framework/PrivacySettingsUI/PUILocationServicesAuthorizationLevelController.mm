@interface PUILocationServicesAuthorizationLevelController
- (BOOL)getQualifierState;
- (NSArray)correctiveCompensationSpecifierGroup;
- (NSArray)preferredRoutesSpecifierGroup;
- (NSArray)visitedPlacesSpecifierGroup;
- (PSSpecifier)preferredRoutesSpecifier;
- (PSSpecifier)preferredRoutesSpinnerSpecifier;
- (PSSpecifier)visitedPlacesSpecifier;
- (PSSpecifier)visitedPlacesSpinnerSpecifier;
- (PUILocationServicesAuthorizationLevelController)init;
- (id)_constructFooterForAuthorizationLevel:(unint64_t)level;
- (id)_constructFooterForVisitedPlaces;
- (id)_preciseLocationStatus:(id)status;
- (id)_preferredRoutesStatus:(id)status;
- (id)_purposeStringForAuthorizationLevel:(unint64_t)level;
- (id)_usageTextForAuthorizationLevel:(unint64_t)level;
- (id)_visitedPlacesStatus:(id)status;
- (id)createQualifierSpecifierGroups;
- (id)specifiers;
- (void)_constructFooterForVisitedPlaces;
- (void)_setLocationAuthorizationLevelForSpecifier:(id)specifier;
- (void)_setLocationAuthorizationLevelMaskForAssociatedFramework:(unint64_t)framework withCorrectiveCompensation:(int)compensation;
- (void)_setPreciseLocationEnabled:(id)enabled specifier:(id)specifier;
- (void)_setPreferredRoutesEnabled:(id)enabled specifier:(id)specifier;
- (void)_setVisitedPlacesEnabled:(id)enabled specifier:(id)specifier;
- (void)_synchronizeLocationDetails;
- (void)addSignificantLocationsFooter:(id)footer hyperlink:(id)hyperlink toSpecifier:(id)specifier;
- (void)dealloc;
- (void)getQualifierState;
- (void)profileSettingsChanged:(id)changed;
- (void)reloadSpecifiers;
- (void)setSpecifier:(id)specifier;
- (void)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCoreRoutineSettings:(id)settings;
- (void)updateQualifierSpecifierGroupsIfDeltaFrom:(id)from animated:(BOOL)animated;
- (void)updateSpecifiersForImposedSettingsWithReload:(BOOL)reload;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PUILocationServicesAuthorizationLevelController

- (PUILocationServicesAuthorizationLevelController)init
{
  v5.receiver = self;
  v5.super_class = PUILocationServicesAuthorizationLevelController;
  v2 = [(PUILocationServicesListController *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_profileSettingsChanged_ name:@"PSProfileConnectionEffectiveSettingsChangedNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PUILocationServicesAuthorizationLevelController;
  [(PUILocationServicesListController *)&v4 dealloc];
}

- (void)profileSettingsChanged:(id)changed
{
  userInfo = [changed userInfo];
  v11 = [userInfo objectForKey:*MEMORY[0x277D26180]];

  LODWORD(userInfo) = [v11 intValue];
  if (userInfo != getpid())
  {
    navigationController = [(PUILocationServicesAuthorizationLevelController *)self navigationController];
    topViewController = [navigationController topViewController];
    v7 = topViewController;
    if (topViewController == self)
    {
      identifier = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) identifier];
      v9 = isModificationAllowedForID(identifier);

      if (v9)
      {
        goto LABEL_7;
      }

      navigationController = [(PUILocationServicesAuthorizationLevelController *)self navigationController];
      v10 = [navigationController popViewControllerAnimated:1];
    }

    else
    {
    }
  }

LABEL_7:
}

- (void)setSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = PUILocationServicesAuthorizationLevelController;
  specifierCopy = specifier;
  [(PUILocationServicesAuthorizationLevelController *)&v7 setSpecifier:specifierCopy];
  identifier = [specifierCopy identifier];

  serviceKey = self->_serviceKey;
  self->_serviceKey = identifier;
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PUILocationServicesAuthorizationLevelController;
  [(PUILocationServicesListController *)&v3 viewWillAppear:appear];
}

- (void)_synchronizeLocationDetails
{
  self->_details = PSUICLCopyAppsUsingLocation();

  MEMORY[0x2821F96F8]();
}

- (void)reloadSpecifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  correctiveCompensationSpecifierGroup = selfCopy->_correctiveCompensationSpecifierGroup;
  selfCopy->_correctiveCompensationSpecifierGroup = 0;

  qualifierSpecifierGroups = selfCopy->_qualifierSpecifierGroups;
  selfCopy->_qualifierSpecifierGroups = 0;

  visitedPlacesSpecifierGroup = selfCopy->_visitedPlacesSpecifierGroup;
  selfCopy->_visitedPlacesSpecifierGroup = 0;

  preferredRoutesSpecifierGroup = selfCopy->_preferredRoutesSpecifierGroup;
  selfCopy->_preferredRoutesSpecifierGroup = 0;

  visitedPlacesSpecifier = selfCopy->_visitedPlacesSpecifier;
  selfCopy->_visitedPlacesSpecifier = 0;

  preferredRoutesSpecifier = selfCopy->_preferredRoutesSpecifier;
  selfCopy->_preferredRoutesSpecifier = 0;

  visitedPlacesSpinnerSpecifier = selfCopy->_visitedPlacesSpinnerSpecifier;
  selfCopy->_visitedPlacesSpinnerSpecifier = 0;

  preferredRoutesSpinnerSpecifier = selfCopy->_preferredRoutesSpinnerSpecifier;
  selfCopy->_preferredRoutesSpinnerSpecifier = 0;

  objc_sync_exit(selfCopy);
  v11.receiver = selfCopy;
  v11.super_class = PUILocationServicesAuthorizationLevelController;
  [(PUILocationServicesAuthorizationLevelController *)&v11 reloadSpecifiers];
}

- (id)specifiers
{
  v71 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&selfCopy->super.super.super.super.super.super.isa + v3);
  if (v4)
  {
    goto LABEL_58;
  }

  v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _synchronizeLocationDetails = [(PUILocationServicesAuthorizationLevelController *)selfCopy _synchronizeLocationDetails];
  if (selfCopy->_serviceKey)
  {
    CLLocationManagerClass = getCLLocationManagerClass();
    v7 = [(NSDictionary *)selfCopy->_details objectForKey:selfCopy->_serviceKey];
    v8 = [CLLocationManagerClass allowableAuthorizationForLocationDictionary:v7];

    v9 = [(NSDictionary *)selfCopy->_details objectForKey:selfCopy->_serviceKey];
    v10 = [v9 objectForKey:@"BundleId"];
    v11 = _PUILoggingFacility(v10);
    v64 = v9;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v68 = "[PUILocationServicesAuthorizationLevelController specifiers]";
      v69 = 2112;
      v70 = v10;
      _os_log_impl(&dword_2657FE000, v11, OS_LOG_TYPE_DEFAULT, "%s: entity bundle ID: %@", buf, 0x16u);
    }

    obj = v10;

    v66 = 0;
    [getCLLocationManagerClass() getIncidentalUseMode:&v66 forBundleIdentifier:v10];
    v12 = MEMORY[0x277D3FAD8];
    v13 = PUI_LocalizedStringForLocationServicesPrivacy(@"ALLOW_LOCATION_SERVICES_HEADER");
    v14 = [v12 groupSpecifierWithName:v13];

    [v14 setIdentifier:@"LOCATION_SERVICES_AUTH_GROUP"];
    [v14 setProperty:@"LOCATION_SERVICES_AUTH_GROUP" forKey:*MEMORY[0x277D3FFB8]];
    v15 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v14 setProperty:v15 forKey:*MEMORY[0x277D3FFE8]];

    [v65 addObject:v14];
    v16 = MEMORY[0x277D3FAD8];
    v17 = PUI_LocalizedStringForLocationServicesPrivacy(@"NEVER_AUTHORIZATION");
    v63 = [v16 preferenceSpecifierNamed:v17 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

    [v63 setIdentifier:@"LOCATION_SERVICES_AUTH_NEVER"];
    if ((v8 & 6) != 0)
    {
      v18 = @"NOT_DETERMINED_AUTHORIZATION";
    }

    else
    {
      v18 = @"NOT_DETERMINED_AUTHORIZATION_NO_AUTH";
    }

    v59 = PUI_LocalizedStringForLocationServicesPrivacy(v18);
    v19 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    [v19 setIdentifier:@"LOCATION_SERVICES_AUTH_NOT_DETERMINED"];
    v20 = *MEMORY[0x277D3FD80];
    [v19 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
    v60 = v19;
    specifier = [(PUILocationServicesAuthorizationLevelController *)selfCopy specifier];
    identifier = [specifier identifier];
    LODWORD(v19) = PUIIsAppClip(identifier);

    if (v19)
    {
      PUI_LocalizedStringForDimSum(@"WHILE_USING_TODAY");
    }

    else
    {
      PUI_LocalizedStringForLocationServicesPrivacy(@"WHEN_IN_USE_AUTHORIZATION");
    }
    v61 = ;
    v25 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v61 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];
    [v25 setIdentifier:@"LOCATION_SERVICES_AUTH_WHEN_IN_USE"];
    v26 = MEMORY[0x277D3FAD8];
    v27 = PUI_LocalizedStringForLocationServicesPrivacy(@"WHEN_IN_USE_APP_OR_WIDGET_AUTHORIZATION");
    v28 = [v26 preferenceSpecifierNamed:v27 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

    [v28 setIdentifier:@"LOCATION_SERVICES_AUTH_WHEN_IN_USE_APP_OR_WIDGET"];
    [v28 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v20];
    v29 = MEMORY[0x277D3FAD8];
    v30 = PUI_LocalizedStringForLocationServicesPrivacy(@"ALWAYS_AUTHORIZATION");
    v31 = [v29 preferenceSpecifierNamed:v30 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

    [v31 setIdentifier:@"LOCATION_SERVICES_AUTH_ALWAYS"];
    [v65 addObject:v63];
    if (![(NSString *)selfCopy->_serviceKey isEqualToString:@"/System/Library/PrivateFrameworks/AssistantServices.framework"]|| _os_feature_enabled_impl())
    {
      [v65 addObject:v60];
    }

    if ((v8 & 2) != 0)
    {
      [v65 addObject:v25];
      if (v66)
      {
        [v65 addObject:v28];
      }
    }

    if ((v8 & 4) != 0)
    {
      [v65 addObject:v31];
    }

    if (!selfCopy->_details || !v9)
    {
      goto LABEL_57;
    }

    v32 = [getCLLocationManagerClass() primaryEntityClassForLocationDictionary:v9];
    if (v32 == 1)
    {
      v44 = [MEMORY[0x277CC1E60] bundleProxyForIdentifier:obj];
      bundleURL = [v44 bundleURL];
      path = [bundleURL path];

      if (path)
      {
        v47 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:path];
        authEntityBundle = selfCopy->_authEntityBundle;
        selfCopy->_authEntityBundle = v47;
      }

      if (obj)
      {
        v49 = [(PUILocationServicesListController *)selfCopy localizedDisplayNameForBundleID:?];
        displayName = selfCopy->_displayName;
        selfCopy->_displayName = v49;

        if ([(NSString *)selfCopy->_displayName length])
        {
LABEL_42:

LABEL_43:
          v52 = [getCLLocationManagerClass() entityAuthorizationForLocationDictionary:v64];
          selfCopy->_authMask = v52;
          if (v52 > 1)
          {
            if (v52 == 2)
            {
              if (v66 == 3)
              {
                [v65 specifierForID:@"LOCATION_SERVICES_AUTH_WHEN_IN_USE_APP_OR_WIDGET"];
              }

              else
              {
                [v65 specifierForID:@"LOCATION_SERVICES_AUTH_WHEN_IN_USE"];
              }
              v53 = ;
              [v14 setProperty:v53 forKey:*MEMORY[0x277D40090]];
              goto LABEL_55;
            }

            if (v52 == 4)
            {
              v53 = [v65 specifierForID:@"LOCATION_SERVICES_AUTH_ALWAYS"];
              [v14 setProperty:v53 forKey:*MEMORY[0x277D40090]];
              goto LABEL_55;
            }
          }

          else
          {
            if (!v52)
            {
              v53 = [v65 specifierForID:@"LOCATION_SERVICES_AUTH_NOT_DETERMINED"];
              [v14 setProperty:v53 forKey:*MEMORY[0x277D40090]];
              goto LABEL_55;
            }

            if (v52 == 1)
            {
              v53 = [v65 specifierForID:@"LOCATION_SERVICES_AUTH_NEVER"];
              [v14 setProperty:v53 forKey:*MEMORY[0x277D40090]];
LABEL_55:
            }
          }

          v54 = [(PUILocationServicesAuthorizationLevelController *)selfCopy _constructFooterForAuthorizationLevel:selfCopy->_authMask];
          [v14 setProperty:v54 forKey:*MEMORY[0x277D3FF88]];

LABEL_57:
          createQualifierSpecifierGroups = [(PUILocationServicesAuthorizationLevelController *)selfCopy createQualifierSpecifierGroups];
          [(PUILocationServicesAuthorizationLevelController *)selfCopy setQualifierSpecifierGroups:createQualifierSpecifierGroups];

          qualifierSpecifierGroups = [(PUILocationServicesAuthorizationLevelController *)selfCopy qualifierSpecifierGroups];
          [v65 addObjectsFromArray:qualifierSpecifierGroups];

          v57 = *(&selfCopy->super.super.super.super.super.super.isa + v3);
          *(&selfCopy->super.super.super.super.super.super.isa + v3) = v65;

          v4 = *(&selfCopy->super.super.super.super.super.super.isa + v3);
LABEL_58:
          v24 = v4;
          goto LABEL_59;
        }

        objc_storeStrong(&selfCopy->_displayName, obj);
        v43 = _PUILoggingFacility(v51);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v68 = obj;
          v69 = 2112;
          v70 = v64;
          _os_log_impl(&dword_2657FE000, v43, OS_LOG_TYPE_DEFAULT, "No display name found for application: %@, dict: %@", buf, 0x16u);
        }
      }

      else
      {
        v43 = _PUILoggingFacility(v46);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [PUILocationServicesAuthorizationLevelController specifiers];
        }
      }
    }

    else
    {
      if (v32 != 2)
      {
        goto LABEL_43;
      }

      path = [v9 objectForKey:@"BundlePath"];
      if (path)
      {
        v34 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:path];
        v35 = selfCopy->_authEntityBundle;
        selfCopy->_authEntityBundle = v34;

        v36 = selfCopy->_authEntityBundle;
        if (!v36)
        {
          goto LABEL_42;
        }

        v37 = [(NSBundle *)v36 objectForInfoDictionaryKey:*MEMORY[0x277CBEC40]];
        v38 = [v37 copy];
        v39 = selfCopy->_displayName;
        selfCopy->_displayName = v38;

        if ([(NSString *)selfCopy->_displayName length])
        {
          goto LABEL_42;
        }

        lastPathComponent = [path lastPathComponent];
        v41 = selfCopy->_displayName;
        selfCopy->_displayName = lastPathComponent;

        v43 = _PUILoggingFacility(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [(PUILocationServicesAuthorizationLevelController *)path specifiers];
        }
      }

      else
      {
        v43 = _PUILoggingFacility(0);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [PUILocationServicesAuthorizationLevelController specifiers];
        }
      }
    }

    goto LABEL_42;
  }

  v23 = _PUILoggingFacility(_synchronizeLocationDetails);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v68 = "[PUILocationServicesAuthorizationLevelController specifiers]";
    _os_log_impl(&dword_2657FE000, v23, OS_LOG_TYPE_DEFAULT, "%s: _serviceKey is nil", buf, 0xCu);
  }

  v24 = *(&selfCopy->super.super.super.super.super.super.isa + v3);
LABEL_59:
  objc_sync_exit(selfCopy);

  return v24;
}

- (BOOL)getQualifierState
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(NSDictionary *)self->_details objectForKey:self->_serviceKey];
  if (v3)
  {
    v4 = [getCLLocationManagerClass() correctiveCompensationStatusForLocationDictionary:v3];
    v5 = _PUILoggingFacility(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:v4];
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_2657FE000, v5, OS_LOG_TYPE_DEFAULT, "Got corrective compensation state: %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = _PUILoggingFacility(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [PUILocationServicesAuthorizationLevelController getQualifierState];
    }

    v4 = 1;
  }

  [(PUILocationServicesAuthorizationLevelController *)self setCorrectiveCompensationState:v4];
  v16 = 0;
  v7 = [getCLLocationManagerClass() getVisitHistoryAccess:&v16 + 4 forBundleIdentifier:self->_serviceKey];
  v8 = [getCLLocationManagerClass() getLearnedRoutesAccess:&v16 forBundleIdentifier:self->_serviceKey];
  v9 = v8;
  v10 = _PUILoggingFacility(v8);
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v18) = HIDWORD(v16);
      _os_log_impl(&dword_2657FE000, v11, OS_LOG_TYPE_DEFAULT, "Got visit history state: %d", buf, 8u);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PUILocationServicesListController updateAuthLevelStringForSpecifier:andCell:];
    }

    HIDWORD(v16) = 0;
  }

  v13 = _PUILoggingFacility(v12);
  v14 = v13;
  if (v9)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v18) = v16;
      _os_log_impl(&dword_2657FE000, v14, OS_LOG_TYPE_DEFAULT, "Got learned routes access state: %d", buf, 8u);
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PUILocationServicesListController updateAuthLevelStringForSpecifier:andCell:];
    }

    LODWORD(v16) = 0;
  }

  [(PUILocationServicesAuthorizationLevelController *)self setVisitedPlacesState:HIDWORD(v16)];
  [(PUILocationServicesAuthorizationLevelController *)self setPreferredRoutesState:v16];

  return (v3 != 0) & v7 & v9;
}

- (id)createQualifierSpecifierGroups
{
  getQualifierState = [(PUILocationServicesAuthorizationLevelController *)self getQualifierState];
  authMask = self->_authMask;
  if (authMask <= 1)
  {
    if (authMask)
    {
      if (authMask == 1)
      {
LABEL_11:
        correctiveCompensationSpecifierGroup = MEMORY[0x277CBEBF8];
        goto LABEL_15;
      }

LABEL_8:
      v6 = _PUILoggingFacility(getQualifierState);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [PUILocationServicesAuthorizationLevelController createQualifierSpecifierGroups];
      }

      goto LABEL_11;
    }

LABEL_7:
    correctiveCompensationSpecifierGroup = [(PUILocationServicesAuthorizationLevelController *)self correctiveCompensationSpecifierGroup];
    goto LABEL_15;
  }

  if (authMask != 2)
  {
    if (authMask != 4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  correctiveCompensationSpecifierGroup2 = [(PUILocationServicesAuthorizationLevelController *)self correctiveCompensationSpecifierGroup];
  correctiveCompensationSpecifierGroup = correctiveCompensationSpecifierGroup2;
  if (![(PUILocationServicesAuthorizationLevelController *)self correctiveCompensationState])
  {
    preferredRoutesSpecifierGroup = [(PUILocationServicesAuthorizationLevelController *)self preferredRoutesSpecifierGroup];
    visitedPlacesSpecifierGroup = [(PUILocationServicesAuthorizationLevelController *)self visitedPlacesSpecifierGroup];
    v10 = [correctiveCompensationSpecifierGroup2 arrayByAddingObjectsFromArray:preferredRoutesSpecifierGroup];
    correctiveCompensationSpecifierGroup = [v10 arrayByAddingObjectsFromArray:visitedPlacesSpecifierGroup];
  }

LABEL_15:

  return correctiveCompensationSpecifierGroup;
}

- (NSArray)correctiveCompensationSpecifierGroup
{
  correctiveCompensationSpecifierGroup = self->_correctiveCompensationSpecifierGroup;
  if (correctiveCompensationSpecifierGroup)
  {
    v3 = correctiveCompensationSpecifierGroup;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    specifier = [(PUILocationServicesAuthorizationLevelController *)self specifier];
    identifier = [specifier identifier];
    v9 = PUIIsAppClip(identifier);

    if (v9)
    {
      PUI_LocalizedStringForDimSum(@"PRECISE_LOCATION_APP_CLIP_FOOTER");
    }

    else
    {
      PUI_LocalizedStringForLocationServicesPrivacy(@"PRECISE_LOCATION_FOOTER");
    }
    v10 = ;
    [emptyGroupSpecifier setProperty:v10 forKey:*MEMORY[0x277D3FF88]];
    v11 = MEMORY[0x277D3FAD8];
    v12 = PUI_LocalizedStringForLocationServicesPrivacy(@"PRECISE_LOCATION");
    v13 = [v11 preferenceSpecifierNamed:v12 target:self set:sel__setPreciseLocationEnabled_specifier_ get:sel__preciseLocationStatus_ detail:0 cell:6 edit:0];

    [v13 setProperty:self->_serviceKey forKey:*MEMORY[0x277D3FFB8]];
    v14 = [(PUILocationServicesAuthorizationLevelController *)self _preciseLocationStatus:v13];
    [v13 setProperty:v14 forKey:*MEMORY[0x277D3FEF0]];

    [v5 addObject:emptyGroupSpecifier];
    [v5 addObject:v13];
    v15 = [v5 copy];
    v16 = self->_correctiveCompensationSpecifierGroup;
    self->_correctiveCompensationSpecifierGroup = v15;

    v3 = self->_correctiveCompensationSpecifierGroup;
  }

  return v3;
}

- (NSArray)visitedPlacesSpecifierGroup
{
  v26 = *MEMORY[0x277D85DE8];
  visitedPlacesSpecifierGroup = self->_visitedPlacesSpecifierGroup;
  if (!visitedPlacesSpecifierGroup)
  {
    v4 = _os_feature_enabled_impl();
    if (v4)
    {
      visitedPlacesState = [(PUILocationServicesAuthorizationLevelController *)self visitedPlacesState];
      if (visitedPlacesState)
      {
        correctiveCompensationState = [(PUILocationServicesAuthorizationLevelController *)self correctiveCompensationState];
        v7 = correctiveCompensationState;
        v8 = _PUILoggingFacility(correctiveCompensationState);
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        if (!v7)
        {
          if (v9)
          {
            LOWORD(v24) = 0;
            _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "Constructing Visited Places section.", &v24, 2u);
          }

          if ([(PUILocationServicesAuthorizationLevelController *)self preferredRoutesState])
          {
            v11 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"VISITED_PLACES_GROUP"];
          }

          else
          {
            v14 = PUI_LocalizedStringForLocationServicesPrivacy(@"ALLOW_MORE_LOCATION_ACCESS_HEADER");
            v11 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"VISITED_PLACES_GROUP" name:v14];
          }

          _constructFooterForVisitedPlaces = [(PUILocationServicesAuthorizationLevelController *)self _constructFooterForVisitedPlaces];
          v16 = PUI_LocalizedStringForLocationServicesPrivacy(@"ALLOW_MORE_LOCATION_ACCESS_FOOTER_LINK");
          [v11 setProperty:_constructFooterForVisitedPlaces forKey:*MEMORY[0x277D3FF88]];
          [(PUILocationServicesAuthorizationLevelController *)self addSignificantLocationsFooter:_constructFooterForVisitedPlaces hyperlink:v16 toSpecifier:v11];
          v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v18 = _PUILoggingFacility([v17 addObject:v11]);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            didLoadCoreRoutineSettings = [(PUILocationServicesListController *)self didLoadCoreRoutineSettings];
            v20 = @"NO";
            if (didLoadCoreRoutineSettings)
            {
              v20 = @"YES";
            }

            v24 = 138412290;
            v25 = v20;
            _os_log_impl(&dword_2657FE000, v18, OS_LOG_TYPE_DEFAULT, "didLoadCoreRoutineSettings? %@", &v24, 0xCu);
          }

          if ([(PUILocationServicesListController *)self didLoadCoreRoutineSettings])
          {
            [(PUILocationServicesAuthorizationLevelController *)self visitedPlacesSpecifier];
          }

          else
          {
            [(PUILocationServicesAuthorizationLevelController *)self visitedPlacesSpinnerSpecifier];
          }
          v21 = ;
          [v17 addObject:v21];

          v22 = [v17 copy];
          v23 = self->_visitedPlacesSpecifierGroup;
          self->_visitedPlacesSpecifierGroup = v22;

          goto LABEL_13;
        }

        if (v9)
        {
          LOWORD(v24) = 0;
          v10 = "Not showing Visited Places because PreciseLocation is Off";
LABEL_11:
          _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, v10, &v24, 2u);
        }
      }

      else
      {
        v8 = _PUILoggingFacility(visitedPlacesState);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          v10 = "Not showing Visited Places because the feature is ineligible for this app and/or device.";
          goto LABEL_11;
        }
      }
    }

    else
    {
      v8 = _PUILoggingFacility(v4);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        v10 = "Not showing Visited Places because the feature flag is turned off.";
        goto LABEL_11;
      }
    }

    v11 = self->_visitedPlacesSpecifierGroup;
    self->_visitedPlacesSpecifierGroup = MEMORY[0x277CBEBF8];
LABEL_13:

    visitedPlacesSpecifierGroup = self->_visitedPlacesSpecifierGroup;
  }

  v12 = visitedPlacesSpecifierGroup;

  return v12;
}

- (id)_constructFooterForVisitedPlaces
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = PUI_LocalizedStringForLocationServicesPrivacy(@"VISITED_PLACES_FOOTER_NO_DATE");
  v4 = PUI_LocalizedStringForLocationServicesPrivacy(@"ALLOW_MORE_LOCATION_ACCESS_FOOTER_LINK");
  v5 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v3, v4];
  v21 = 0.0;
  [getCLLocationManagerClass() getVisitHistoryAccessAllowedTime:&v21 forBundleIdentifier:self->_serviceKey];
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = objc_alloc(MEMORY[0x277CBEAA8]);
  v8 = [v7 initWithTimeIntervalSinceReferenceDate:v21];
  v9 = [v6 timeIntervalSinceDate:v8];
  v11 = v10;
  if (v21 == 0.0)
  {
    v12 = _PUILoggingFacility(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PUILocationServicesAuthorizationLevelController _constructFooterForVisitedPlaces];
    }
  }

  else
  {
    v13 = _PUILoggingFacility(v9);
    v12 = v13;
    if (v11 >= 0.0)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v23 = v21;
        _os_log_impl(&dword_2657FE000, v12, OS_LOG_TYPE_DEFAULT, "Got allowedTime: %f", buf, 0xCu);
      }

      v12 = objc_alloc_init(MEMORY[0x277CCA968]);
      v14 = objc_alloc_init(MEMORY[0x277CCAC78]);
      v15 = v14;
      if (v11 >= 60.0)
      {
        if (v11 >= 172800.0)
        {
          if (v11 >= 604800.0)
          {
            if (v11 >= 31449600.0)
            {
              [v12 setDateStyle:3];
              [v12 setTimeStyle:0];
            }

            else
            {
              [v12 setLocalizedDateFormatFromTemplate:@"MMMMd"];
            }
          }

          else
          {
            [v12 setDateFormat:@"EEEE"];
          }

          v18 = [v12 stringFromDate:v8];
        }

        else
        {
          [v14 setDateTimeStyle:1];
          [v15 setUnitsStyle:0];
          v18 = [v15 localizedStringForDate:v8 relativeToDate:v6];
        }

        v19 = v18;
        v16 = PUI_LocalizedStringForLocationServicesPrivacy(@"VISITED_PLACES_FOOTER");

        v17 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v16, v19, v4];

        v5 = v19;
      }

      else
      {
        v16 = PUI_LocalizedStringForLocationServicesPrivacy(@"VISITED_PLACES_FOOTER_JUST_NOW");

        v17 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v16, v4];
      }

      v5 = v17;
      v3 = v16;
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PUILocationServicesAuthorizationLevelController _constructFooterForVisitedPlaces];
    }
  }

  return v5;
}

- (PSSpecifier)visitedPlacesSpecifier
{
  visitedPlacesSpecifier = self->_visitedPlacesSpecifier;
  if (!visitedPlacesSpecifier)
  {
    v4 = PUI_LocalizedStringForLocationServicesPrivacy(@"VISITED_PLACES");
    v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v4 target:self set:sel__setVisitedPlacesEnabled_specifier_ get:sel__visitedPlacesStatus_ detail:0 cell:6 edit:0];
    [v5 setProperty:self->_serviceKey forKey:*MEMORY[0x277D3FFB8]];
    v6 = [(PUILocationServicesAuthorizationLevelController *)self _visitedPlacesStatus:v5];
    [v5 setProperty:v6 forKey:*MEMORY[0x277D3FEF0]];

    currentCoreRoutineStatus = [(PUILocationServicesListController *)self currentCoreRoutineStatus];
    v8 = [currentCoreRoutineStatus isEqualToString:@"On"];

    v9 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    [v5 setProperty:v9 forKey:*MEMORY[0x277D3FF38]];

    v10 = self->_visitedPlacesSpecifier;
    self->_visitedPlacesSpecifier = v5;

    visitedPlacesSpecifier = self->_visitedPlacesSpecifier;
  }

  return visitedPlacesSpecifier;
}

- (PSSpecifier)preferredRoutesSpecifier
{
  preferredRoutesSpecifier = self->_preferredRoutesSpecifier;
  if (!preferredRoutesSpecifier)
  {
    v4 = MEMORY[0x277D3FAD8];
    v5 = PUI_LocalizedStringForLocationServicesPrivacy(@"PREFERRED_ROUTES");
    v6 = [v4 preferenceSpecifierNamed:v5 target:self set:sel__setPreferredRoutesEnabled_specifier_ get:sel__preferredRoutesStatus_ detail:0 cell:6 edit:0];

    [v6 setProperty:self->_serviceKey forKey:*MEMORY[0x277D3FFB8]];
    v7 = [(PUILocationServicesAuthorizationLevelController *)self _preferredRoutesStatus:v6];
    [v6 setProperty:v7 forKey:*MEMORY[0x277D3FEF0]];

    currentCoreRoutineStatus = [(PUILocationServicesListController *)self currentCoreRoutineStatus];
    v9 = [currentCoreRoutineStatus isEqualToString:@"On"];

    v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    [v6 setProperty:v10 forKey:*MEMORY[0x277D3FF38]];

    v11 = self->_preferredRoutesSpecifier;
    self->_preferredRoutesSpecifier = v6;

    preferredRoutesSpecifier = self->_preferredRoutesSpecifier;
  }

  return preferredRoutesSpecifier;
}

- (PSSpecifier)visitedPlacesSpinnerSpecifier
{
  visitedPlacesSpinnerSpecifier = self->_visitedPlacesSpinnerSpecifier;
  if (!visitedPlacesSpinnerSpecifier)
  {
    v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28771E540 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    v5 = self->_visitedPlacesSpinnerSpecifier;
    self->_visitedPlacesSpinnerSpecifier = v4;

    [(PSSpecifier *)self->_visitedPlacesSpinnerSpecifier setProperty:@"VISITED_PLACES_SPINNER_CELL" forKey:*MEMORY[0x277D3FFB8]];
    visitedPlacesSpinnerSpecifier = self->_visitedPlacesSpinnerSpecifier;
  }

  return visitedPlacesSpinnerSpecifier;
}

- (PSSpecifier)preferredRoutesSpinnerSpecifier
{
  preferredRoutesSpinnerSpecifier = self->_preferredRoutesSpinnerSpecifier;
  if (!preferredRoutesSpinnerSpecifier)
  {
    v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28771E540 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    v5 = self->_preferredRoutesSpinnerSpecifier;
    self->_preferredRoutesSpinnerSpecifier = v4;

    [(PSSpecifier *)self->_preferredRoutesSpinnerSpecifier setProperty:@"PREFERRED_ROUTES_SPINNER_CELL" forKey:*MEMORY[0x277D3FFB8]];
    preferredRoutesSpinnerSpecifier = self->_preferredRoutesSpinnerSpecifier;
  }

  return preferredRoutesSpinnerSpecifier;
}

- (void)updateSpecifiersForImposedSettingsWithReload:(BOOL)reload
{
  v4.receiver = self;
  v4.super_class = PUILocationServicesAuthorizationLevelController;
  [(PUILocationServicesListController *)&v4 updateSpecifiersForImposedSettingsWithReload:reload];
  [(PUILocationServicesAuthorizationLevelController *)self updateCoreRoutineSettings:0];
}

- (void)updateCoreRoutineSettings:(id)settings
{
  settingsCopy = settings;
  [(PUILocationServicesListController *)self setDidLoadCoreRoutineSettings:0];
  v11.receiver = self;
  v11.super_class = PUILocationServicesAuthorizationLevelController;
  [(PUILocationServicesListController *)&v11 updateCoreRoutineSettings:settingsCopy];

  qualifierSpecifierGroups = [(PUILocationServicesAuthorizationLevelController *)self qualifierSpecifierGroups];
  [(PUILocationServicesAuthorizationLevelController *)self updateQualifierSpecifierGroupsIfDeltaFrom:qualifierSpecifierGroups animated:0];

  v7 = _PUILoggingFacility(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "Fetching routine state…", buf, 2u);
  }

  routineManager = [(PUILocationServicesListController *)self routineManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__PUILocationServicesAuthorizationLevelController_updateCoreRoutineSettings___block_invoke;
  v9[3] = &unk_279BA1CF0;
  v9[4] = self;
  [routineManager fetchRoutineStateWithHandler:v9];
}

void __77__PUILocationServicesAuthorizationLevelController_updateCoreRoutineSettings___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setDidLoadCoreRoutineSettings:1];
  [*(a1 + 32) setVisitedPlacesSpecifierGroup:0];
  [*(a1 + 32) setPreferredRoutesSpecifierGroup:0];
  if (a2 == 2)
  {
    v6 = @"On";
  }

  else
  {
    v6 = @"Off";
  }

  v7 = PUI_LocalizedStringForPrivacy(v6);
  [*(a1 + 32) setCurrentCoreRoutineStatus:v7];

  v9 = _PUILoggingFacility(v8);
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __77__PUILocationServicesAuthorizationLevelController_updateCoreRoutineSettings___block_invoke_cold_1(v5, v10);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = a2;
      _os_log_impl(&dword_2657FE000, v10, OS_LOG_TYPE_DEFAULT, "Got CoreRoutine state: %ld", buf, 0xCu);
    }

    if (a2 == 2 && !+[PUILocationServicesListController isLocationRestricted])
    {
      v11 = [*(a1 + 32) correctiveCompensationState] ^ 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = [*(a1 + 32) visitedPlacesSpecifier];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v11];
    v14 = *MEMORY[0x277D3FF38];
    [v12 setProperty:v13 forKey:*MEMORY[0x277D3FF38]];

    v15 = [*(a1 + 32) preferredRoutesSpecifier];
    v16 = [MEMORY[0x277CCABB0] numberWithBool:v11];
    [v15 setProperty:v16 forKey:v14];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__PUILocationServicesAuthorizationLevelController_updateCoreRoutineSettings___block_invoke_827;
    block[3] = &unk_279BA0B28;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __77__PUILocationServicesAuthorizationLevelController_updateCoreRoutineSettings___block_invoke_827(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 qualifierSpecifierGroups];
  [v1 updateQualifierSpecifierGroupsIfDeltaFrom:v2 animated:0];
}

- (NSArray)preferredRoutesSpecifierGroup
{
  preferredRoutesSpecifierGroup = self->_preferredRoutesSpecifierGroup;
  if (!preferredRoutesSpecifierGroup)
  {
    v4 = _os_feature_enabled_impl();
    if (v4)
    {
      preferredRoutesState = [(PUILocationServicesAuthorizationLevelController *)self preferredRoutesState];
      if (preferredRoutesState)
      {
        correctiveCompensationState = [(PUILocationServicesAuthorizationLevelController *)self correctiveCompensationState];
        v7 = correctiveCompensationState;
        v8 = _PUILoggingFacility(correctiveCompensationState);
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        if (!v7)
        {
          if (v9)
          {
            *v23 = 0;
            _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "Constructing Preferred Routes section.", v23, 2u);
          }

          v15 = PUI_LocalizedStringForLocationServicesPrivacy(@"ALLOW_MORE_LOCATION_ACCESS_HEADER");
          v12 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"PREFERRED_ROUTES_GROUP" name:v15];
          v16 = PUI_LocalizedStringForLocationServicesPrivacy(@"ALLOW_MORE_LOCATION_ACCESS_FOOTER_LINK");
          if ([(PUILocationServicesAuthorizationLevelController *)self visitedPlacesState])
          {
            v17 = PUI_LocalizedStringForLocationServicesPrivacy(@"PREFERRED_ROUTES_FOOTER");
            [v12 setProperty:v17 forKey:*MEMORY[0x277D3FF88]];
          }

          else
          {
            v18 = PUI_LocalizedStringForLocationServicesPrivacy(@"PREFERRED_ROUTES_FOOTER_WITH_LINK");
            v17 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v18, v16];
            [(PUILocationServicesAuthorizationLevelController *)self addSignificantLocationsFooter:v17 hyperlink:v16 toSpecifier:v12];
          }

          v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v19 addObject:v12];
          if ([(PUILocationServicesListController *)self didLoadCoreRoutineSettings])
          {
            [(PUILocationServicesAuthorizationLevelController *)self preferredRoutesSpecifier];
          }

          else
          {
            [(PUILocationServicesAuthorizationLevelController *)self preferredRoutesSpinnerSpecifier];
          }
          v20 = ;
          [v19 addObject:v20];

          v21 = [v19 copy];
          v22 = self->_preferredRoutesSpecifierGroup;
          self->_preferredRoutesSpecifierGroup = v21;

          goto LABEL_13;
        }

        if (v9)
        {
          v24 = 0;
          v10 = "Not showing Preferred Routes because PreciseLocation is Off";
          v11 = &v24;
LABEL_11:
          _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
        }
      }

      else
      {
        v8 = _PUILoggingFacility(preferredRoutesState);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v10 = "Not showing Preferred Routes because the feature is ineligible for this app and/or device.";
          v11 = buf;
          goto LABEL_11;
        }
      }
    }

    else
    {
      v8 = _PUILoggingFacility(v4);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 0;
        v10 = "Not showing Preferred Routes because the feature flag is turned off.";
        v11 = &v26;
        goto LABEL_11;
      }
    }

    v12 = self->_preferredRoutesSpecifierGroup;
    self->_preferredRoutesSpecifierGroup = MEMORY[0x277CBEBF8];
LABEL_13:

    preferredRoutesSpecifierGroup = self->_preferredRoutesSpecifierGroup;
  }

  v13 = preferredRoutesSpecifierGroup;

  return v13;
}

- (void)addSignificantLocationsFooter:(id)footer hyperlink:(id)hyperlink toSpecifier:(id)specifier
{
  specifierCopy = specifier;
  hyperlinkCopy = hyperlink;
  footerCopy = footer;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [specifierCopy setObject:v11 forKeyedSubscript:*MEMORY[0x277D3FF48]];

  [specifierCopy setObject:footerCopy forKeyedSubscript:*MEMORY[0x277D3FF70]];
  v12 = [footerCopy rangeOfString:hyperlinkCopy];
  v14 = v13;

  v19.location = v12;
  v19.length = v14;
  v15 = NSStringFromRange(v19);
  [specifierCopy setObject:v15 forKeyedSubscript:*MEMORY[0x277D3FF58]];

  v16 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [specifierCopy setObject:v16 forKeyedSubscript:*MEMORY[0x277D3FF68]];

  [specifierCopy setObject:@"showCoreRoutineSettings:" forKeyedSubscript:*MEMORY[0x277D3FF50]];
}

- (void)_setPreciseLocationEnabled:(id)enabled specifier:(id)specifier
{
  details = self->_details;
  enabledCopy = enabled;
  identifier = [specifier identifier];
  v11 = [(NSDictionary *)details objectForKey:identifier];

  LODWORD(identifier) = [enabledCopy BOOLValue];
  [(PUILocationServicesAuthorizationLevelController *)self setCorrectiveCompensationState:identifier ^ 1];
  if ([(PUILocationServicesAuthorizationLevelController *)self correctiveCompensationState])
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [getCLLocationManagerClass() setEntityAuthorization:self->_authMask withCorrectiveCompensationType:v9 forLocationDictionary:v11];
  [(PUILocationServicesAuthorizationLevelController *)self _setLocationAuthorizationLevelMaskForAssociatedFramework:self->_authMask withCorrectiveCompensation:v9];
  [(PUILocationServicesAuthorizationLevelController *)self _synchronizeLocationDetails];
  qualifierSpecifierGroups = [(PUILocationServicesAuthorizationLevelController *)self qualifierSpecifierGroups];
  [(PUILocationServicesAuthorizationLevelController *)self updateQualifierSpecifierGroupsIfDeltaFrom:qualifierSpecifierGroups animated:1];
}

- (id)_preciseLocationStatus:(id)status
{
  v3 = [(PUILocationServicesAuthorizationLevelController *)self correctiveCompensationState]^ 1;
  v4 = MEMORY[0x277CCABB0];

  return [v4 numberWithBool:v3];
}

- (void)_setVisitedPlacesEnabled:(id)enabled specifier:(id)specifier
{
  v13 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  v6 = _os_feature_enabled_impl();
  if (v6)
  {
    if ([enabledCopy BOOLValue])
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    [(PUILocationServicesAuthorizationLevelController *)self setVisitedPlacesState:v7];
    v8 = [getCLLocationManagerClass() setVisitHistoryAccess:-[PUILocationServicesAuthorizationLevelController visitedPlacesState](self forBundleIdentifier:{"visitedPlacesState"), self->_serviceKey}];
    if ((v8 & 1) == 0)
    {
      v9 = _PUILoggingFacility(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PUILocationServicesAuthorizationLevelController _setVisitedPlacesEnabled:specifier:];
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"com.apple.PrivacySettingsUI.LocationServicesStateChanged" object:0];
  }

  else
  {
    defaultCenter = _PUILoggingFacility(v6);
    if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[PUILocationServicesAuthorizationLevelController _setVisitedPlacesEnabled:specifier:]";
      _os_log_impl(&dword_2657FE000, defaultCenter, OS_LOG_TYPE_DEFAULT, "%s: skipping because the feature flag is turned off", &v11, 0xCu);
    }
  }
}

- (id)_visitedPlacesStatus:(id)status
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = _os_feature_enabled_impl();
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_visitedPlacesState == 3];
  }

  else
  {
    v6 = _PUILoggingFacility(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[PUILocationServicesAuthorizationLevelController _visitedPlacesStatus:]";
      _os_log_impl(&dword_2657FE000, v6, OS_LOG_TYPE_DEFAULT, "%s: returning NO because the feature flag is turned off", &v8, 0xCu);
    }

    v5 = MEMORY[0x277CBEC28];
  }

  return v5;
}

- (void)_setPreferredRoutesEnabled:(id)enabled specifier:(id)specifier
{
  v13 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  v6 = _os_feature_enabled_impl();
  if (v6)
  {
    if ([enabledCopy BOOLValue])
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    [(PUILocationServicesAuthorizationLevelController *)self setPreferredRoutesState:v7];
    v8 = [getCLLocationManagerClass() setLearnedRoutesAccess:-[PUILocationServicesAuthorizationLevelController preferredRoutesState](self forBundleIdentifier:{"preferredRoutesState"), self->_serviceKey}];
    if ((v8 & 1) == 0)
    {
      v9 = _PUILoggingFacility(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PUILocationServicesAuthorizationLevelController _setPreferredRoutesEnabled:specifier:];
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"com.apple.PrivacySettingsUI.LocationServicesStateChanged" object:0];
  }

  else
  {
    defaultCenter = _PUILoggingFacility(v6);
    if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[PUILocationServicesAuthorizationLevelController _setPreferredRoutesEnabled:specifier:]";
      _os_log_impl(&dword_2657FE000, defaultCenter, OS_LOG_TYPE_DEFAULT, "%s: skipping because the feature flag is turned off", &v11, 0xCu);
    }
  }
}

- (id)_preferredRoutesStatus:(id)status
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = _os_feature_enabled_impl();
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_preferredRoutesState == 3];
  }

  else
  {
    v6 = _PUILoggingFacility(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[PUILocationServicesAuthorizationLevelController _preferredRoutesStatus:]";
      _os_log_impl(&dword_2657FE000, v6, OS_LOG_TYPE_DEFAULT, "%s: returning NO because the feature flag is turned off", &v8, 0xCu);
    }

    v5 = MEMORY[0x277CBEC28];
  }

  return v5;
}

- (id)_constructFooterForAuthorizationLevel:(unint64_t)level
{
  string = [MEMORY[0x277CCACA8] string];
  CLLocationManagerClass = getCLLocationManagerClass();
  v6 = [(NSDictionary *)self->_details objectForKey:self->_serviceKey];
  v7 = [CLLocationManagerClass allowableAuthorizationForLocationDictionary:v6];

  if ((v7 & 4) == 0)
  {
    if ((v7 & 2) == 0)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
LABEL_4:
      v11 = 0;
      goto LABEL_16;
    }

    v12 = 2;
    goto LABEL_8;
  }

  if ((v7 & 2) == 0)
  {
    v12 = 4;
LABEL_8:
    v11 = [(PUILocationServicesAuthorizationLevelController *)self _purposeStringForAuthorizationLevel:v12];
    goto LABEL_10;
  }

  v11 = [(PUILocationServicesAuthorizationLevelController *)self _purposeStringForAuthorizationLevel:6];
  if (!v11)
  {
    v8 = [(PUILocationServicesAuthorizationLevelController *)self _purposeStringForAuthorizationLevel:0];
    v10 = [(PUILocationServicesAuthorizationLevelController *)self _purposeStringForAuthorizationLevel:4];
    v19 = [(PUILocationServicesAuthorizationLevelController *)self _purposeStringForAuthorizationLevel:2];
    v9 = v19;
    if (!self->_displayName || !v10)
    {
      goto LABEL_4;
    }

    v20 = MEMORY[0x277CCACA8];
    if (v19)
    {
      v14 = PUI_LocalizedStringForLocationServicesPrivacy(@"PURPOSE_STRING_COMBINED");
      [v20 stringWithFormat:v14, v10, v9];
    }

    else
    {
      v14 = PUI_LocalizedStringForLocationServicesPrivacy(@"PURPOSE_STRING_REDUCED");
      [v20 stringWithFormat:v14, v10, v21];
    }
    v15 = ;
    v11 = 0;
    goto LABEL_13;
  }

LABEL_10:
  if (!self->_displayName || !v11)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_16;
  }

  v13 = MEMORY[0x277CCACA8];
  v14 = PUI_LocalizedStringForLocationServicesPrivacy(@"PURPOSE_STRING");
  v15 = [v13 stringWithFormat:v14, v11];
  v10 = 0;
  v9 = 0;
  v8 = 0;
LABEL_13:

  if (v15)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v15];
    v17 = [string stringByAppendingString:v16];

    string = v17;
  }

LABEL_16:

  return string;
}

- (id)_purposeStringForAuthorizationLevel:(unint64_t)level
{
  v3 = 1728;
  authEntityBundle = self->_authEntityBundle;
  if (!authEntityBundle)
  {
    goto LABEL_15;
  }

  selfCopy = self;
  if (!self->_displayName)
  {
    goto LABEL_10;
  }

  if ((~level & 6) == 0)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    selfCopy = 0x280027000;
    v3 = getkCLCommonLocationAlwaysAndWhenInUseUsageDescriptionKeySymbolLoc_ptr;
    v20 = getkCLCommonLocationAlwaysAndWhenInUseUsageDescriptionKeySymbolLoc_ptr;
    if (!getkCLCommonLocationAlwaysAndWhenInUseUsageDescriptionKeySymbolLoc_ptr)
    {
      v6 = CoreLocationLibrary();
      v18[3] = dlsym(v6, "kCLCommonLocationAlwaysAndWhenInUseUsageDescriptionKey");
      getkCLCommonLocationAlwaysAndWhenInUseUsageDescriptionKeySymbolLoc_ptr = v18[3];
      v3 = v18[3];
    }

    _Block_object_dispose(&v17, 8);
    if (v3)
    {
      goto LABEL_14;
    }

    [PUILockdownModeController getEligibleDevicesWithCompletion:];
  }

  if ((level & 2) != 0)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v3 = getkCLCommonLocationWhenInUseUsageDescriptionKeySymbolLoc_ptr;
    v20 = getkCLCommonLocationWhenInUseUsageDescriptionKeySymbolLoc_ptr;
    if (!getkCLCommonLocationWhenInUseUsageDescriptionKeySymbolLoc_ptr)
    {
      v7 = CoreLocationLibrary();
      v18[3] = dlsym(v7, "kCLCommonLocationWhenInUseUsageDescriptionKey");
      getkCLCommonLocationWhenInUseUsageDescriptionKeySymbolLoc_ptr = v18[3];
      v3 = v18[3];
    }

    _Block_object_dispose(&v17, 8);
    if (!v3)
    {
      [PUILockdownModeController getEligibleDevicesWithCompletion:];
      goto LABEL_25;
    }

LABEL_14:
    authEntityBundle = [authEntityBundle objectForInfoDictionaryKey:*v3];
    goto LABEL_15;
  }

  if ((level & 4) == 0)
  {
LABEL_10:
    authEntityBundle = 0;
    goto LABEL_15;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v11 = getkCLCommonLocationAlwaysUsageDescriptionKeySymbolLoc_ptr;
  v20 = getkCLCommonLocationAlwaysUsageDescriptionKeySymbolLoc_ptr;
  if (!getkCLCommonLocationAlwaysUsageDescriptionKeySymbolLoc_ptr)
  {
    v12 = CoreLocationLibrary();
    v18[3] = dlsym(v12, "kCLCommonLocationAlwaysUsageDescriptionKey");
    getkCLCommonLocationAlwaysUsageDescriptionKeySymbolLoc_ptr = v18[3];
    v11 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v11)
  {
LABEL_25:
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    v16 = v15;
    _Block_object_dispose(&v17, 8);
    _Unwind_Resume(v16);
  }

  authEntityBundle = [authEntityBundle objectForInfoDictionaryKey:*v11];
  if (!authEntityBundle)
  {
    v13 = *(&selfCopy->super.super.super.super.super.super.isa + v3);
    v14 = getkCLCommonLocationUsageDescriptionKey(0);
    authEntityBundle = [v13 objectForInfoDictionaryKey:v14];
  }

LABEL_15:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = authEntityBundle;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (id)_usageTextForAuthorizationLevel:(unint64_t)level
{
  if (level)
  {
    if ((level & 2) != 0)
    {
      v6 = @"WHEN_IN_USE_AUTHORIZATION_EXPLANATION";
    }

    else
    {
      if ((level & 4) == 0)
      {
        v4 = 0;

        return v4;
      }

      v6 = @"ALWAYS_AUTHORIZATION_EXPLANATION";
    }
  }

  else
  {
    v6 = @"NOT_DETERMINED_AUTHORIZATION_EXPLANATION";
  }

  v4 = PUI_LocalizedStringForLocationServicesPrivacy(v6);

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = PUILocationServicesAuthorizationLevelController;
  [(PUILocationServicesAuthorizationLevelController *)&v9 tableView:view didSelectRowAtIndexPath:pathCopy];
  if (![pathCopy section])
  {
    v7 = [(PUILocationServicesAuthorizationLevelController *)self indexForIndexPath:pathCopy];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [(PUILocationServicesAuthorizationLevelController *)self specifierAtIndex:v7];
      if (v8)
      {
        [(PUILocationServicesAuthorizationLevelController *)self _setLocationAuthorizationLevelForSpecifier:v8];
      }
    }

    [(PUILocationServicesAuthorizationLevelController *)self reloadSpecifierID:@"LOCATION_SERVICES_AUTH_GROUP" animated:1];
  }
}

- (void)_setLocationAuthorizationLevelForSpecifier:(id)specifier
{
  v35 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  qualifierSpecifierGroups = [(PUILocationServicesAuthorizationLevelController *)self qualifierSpecifierGroups];
  v6 = [qualifierSpecifierGroups copy];

  v7 = [(NSDictionary *)self->_details objectForKey:self->_serviceKey];
  v8 = [v7 objectForKeyedSubscript:@"BundleId"];
  self->_authMask = 0;
  identifier = [specifierCopy identifier];
  v10 = [identifier isEqualToString:@"LOCATION_SERVICES_AUTH_NOT_DETERMINED"];

  if (v10)
  {
    v11 = 0;
    self->_authMask = 0;
  }

  else
  {
    identifier2 = [specifierCopy identifier];
    v14 = [identifier2 isEqualToString:@"LOCATION_SERVICES_AUTH_NEVER"];

    if (v14)
    {
      v11 = 0;
      v12 = 1;
      self->_authMask = 1;
      goto LABEL_10;
    }

    identifier3 = [specifierCopy identifier];
    v16 = [identifier3 isEqualToString:@"LOCATION_SERVICES_AUTH_WHEN_IN_USE"];

    if (v16)
    {
      v12 = 0;
      v11 = 2;
      self->_authMask = 2;
      goto LABEL_10;
    }

    identifier4 = [specifierCopy identifier];
    v18 = [identifier4 isEqualToString:@"LOCATION_SERVICES_AUTH_WHEN_IN_USE_APP_OR_WIDGET"];

    if (v18)
    {
      v12 = 0;
      self->_authMask = 2;
      v11 = 3;
      goto LABEL_10;
    }

    identifier5 = [specifierCopy identifier];
    v29 = [identifier5 isEqualToString:@"LOCATION_SERVICES_AUTH_ALWAYS"];

    if (v29)
    {
      v11 = 0;
      self->_authMask = 4;
    }

    else
    {
      v31 = _PUILoggingFacility(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [PUILocationServicesAuthorizationLevelController _setLocationAuthorizationLevelForSpecifier:];
      }

      v11 = 0;
    }
  }

  v12 = 1;
LABEL_10:
  v19 = [(PUILocationServicesAuthorizationLevelController *)self specifierForID:@"LOCATION_SERVICES_AUTH_GROUP"];
  v20 = [(PUILocationServicesAuthorizationLevelController *)self _constructFooterForAuthorizationLevel:self->_authMask];
  [v19 setProperty:v20 forKey:*MEMORY[0x277D3FF88]];

  [getCLLocationManagerClass() setEntityAuthorization:self->_authMask withCorrectiveCompensationType:0 forLocationDictionary:v7];
  [(PUILocationServicesAuthorizationLevelController *)self _setLocationAuthorizationLevelMaskForAssociatedFramework:self->_authMask withCorrectiveCompensation:0];
  if ((v12 & 1) == 0)
  {
    v32 = 0;
    v21 = [getCLLocationManagerClass() getIncidentalUseMode:&v32 forBundleIdentifier:v8];
    if (v32)
    {
      v22 = _PUILoggingFacility(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v34 = v11;
        _os_log_impl(&dword_2657FE000, v22, OS_LOG_TYPE_DEFAULT, "Setting incidental mode %d", buf, 8u);
      }

      [getCLLocationManagerClass() setIncidentalUseMode:v11 forBundleIdentifier:v8];
    }
  }

  v23 = [v7 objectForKeyedSubscript:@"BundleId"];
  v24 = [v23 isEqualToString:@"com.apple.Maps"];

  if (v24)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.Maps.LocationAuthorizationChangedNotification", 0, 0, 1u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.PrivacySettingsUI.LocationServicesStateChanged" object:0];

  if (PUIIsAppClip(v8))
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 postNotificationName:@"com.apple.PrivacySettingsUI.LocationAppClipsStateChanged" object:0];
  }

  [(PUILocationServicesAuthorizationLevelController *)self updateQualifierSpecifierGroupsIfDeltaFrom:v6 animated:1];
}

- (void)updateQualifierSpecifierGroupsIfDeltaFrom:(id)from animated:(BOOL)animated
{
  animatedCopy = animated;
  v11 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v7 = _PUILoggingFacility(fromCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[PUILocationServicesAuthorizationLevelController updateQualifierSpecifierGroupsIfDeltaFrom:animated:]";
    _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  createQualifierSpecifierGroups = [(PUILocationServicesAuthorizationLevelController *)self createQualifierSpecifierGroups];
  if (([fromCopy isEqualToArray:createQualifierSpecifierGroups] & 1) == 0)
  {
    [(PUILocationServicesAuthorizationLevelController *)self removeContiguousSpecifiers:fromCopy animated:animatedCopy];
    [(PUILocationServicesAuthorizationLevelController *)self addSpecifiersFromArray:createQualifierSpecifierGroups animated:animatedCopy];
    [(PUILocationServicesAuthorizationLevelController *)self setQualifierSpecifierGroups:createQualifierSpecifierGroups];
  }
}

- (void)_setLocationAuthorizationLevelMaskForAssociatedFramework:(unint64_t)framework withCorrectiveCompensation:(int)compensation
{
  v4 = *&compensation;
  specifier = [(PUILocationServicesAuthorizationLevelController *)self specifier];
  userInfo = [specifier userInfo];

  v8 = userInfo;
  if (userInfo)
  {
    v9 = [userInfo objectForKey:@"frameworkBundlePath"];
    if (!v9)
    {
      goto LABEL_10;
    }

    serviceKey = self->_serviceKey;
    v11 = [userInfo objectForKey:@"appBundleID"];
    LODWORD(serviceKey) = [(NSString *)serviceKey isEqualToString:v11];

    if (!serviceKey)
    {
      goto LABEL_10;
    }

    v12 = [(NSDictionary *)self->_details objectForKey:v9];
    v13 = [getCLLocationManagerClass() allowableAuthorizationForLocationDictionary:v12];
    if ((v13 & framework) == 0)
    {
      if ((framework & 4) == 0 || (v13 & 2) == 0)
      {
        goto LABEL_9;
      }

      framework = 2;
    }

    [getCLLocationManagerClass() setEntityAuthorization:framework withCorrectiveCompensationType:v4 forLocationDictionary:v12];
LABEL_9:

LABEL_10:
    v8 = userInfo;
  }
}

- (void)specifiers
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)getQualifierState
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_constructFooterForVisitedPlaces
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __77__PUILocationServicesAuthorizationLevelController_updateCoreRoutineSettings___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_2657FE000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch CoreRoutine state: %@", &v4, 0xCu);
}

- (void)_setVisitedPlacesEnabled:specifier:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setPreferredRoutesEnabled:specifier:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setLocationAuthorizationLevelForSpecifier:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end