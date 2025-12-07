@interface COSLocaleSelector
- (COSLocaleSelector)initWithInternationalController:(id)controller;
- (id)availableLocaleIdentifiers;
- (id)currentLocale;
- (void)postLocaleChangedNotification;
- (void)resetTimeFormat;
- (void)setLocale:(id)locale;
- (void)setLocaleFromCalendarID:(id)d;
- (void)setLocaleFromLanguageIdentifier:(id)identifier;
- (void)setLocaleOnly:(id)only;
- (void)setRegion:(id)region changeLanguageVariant:(BOOL)variant;
- (void)updateLocale:(id)locale;
@end

@implementation COSLocaleSelector

- (COSLocaleSelector)initWithInternationalController:(id)controller
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = COSLocaleSelector;
  v6 = [(COSLocaleSelector *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internationalController, controller);
    v8 = [[NPSDomainAccessor alloc] initWithDomain:@".GlobalPreferences"];
    gizmoGlobalDomain = v7->_gizmoGlobalDomain;
    v7->_gizmoGlobalDomain = v8;

    v10 = objc_alloc_init(NPSManager);
    syncManager = v7->_syncManager;
    v7->_syncManager = v10;
  }

  return v7;
}

- (void)setLocaleOnly:(id)only
{
  [(COSLocaleSelector *)self updateLocale:only];

  [(COSLocaleSelector *)self postLocaleChangedNotification];
}

- (void)postLocaleChangedNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.nano.watchlocalechanged", 0, 0, 1u);
}

- (void)updateLocale:(id)locale
{
  localeCopy = locale;
  gizmoGlobalDomain = [(COSLocaleSelector *)self gizmoGlobalDomain];
  [gizmoGlobalDomain setObject:localeCopy forKey:@"AppleLocale"];

  gizmoGlobalDomain2 = [(COSLocaleSelector *)self gizmoGlobalDomain];
  synchronize = [gizmoGlobalDomain2 synchronize];

  syncManager = [(COSLocaleSelector *)self syncManager];
  gizmoGlobalDomain3 = [(COSLocaleSelector *)self gizmoGlobalDomain];
  domain = [gizmoGlobalDomain3 domain];
  v13 = @"AppleLocale";
  v11 = [NSArray arrayWithObjects:&v13 count:1];
  v12 = [NSSet setWithArray:v11];
  [syncManager synchronizeNanoDomain:domain keys:v12];
}

- (void)resetTimeFormat
{
  gizmoGlobalDomain = [(COSLocaleSelector *)self gizmoGlobalDomain];
  [gizmoGlobalDomain setObject:0 forKey:@"AppleICUForce12HourTime"];

  gizmoGlobalDomain2 = [(COSLocaleSelector *)self gizmoGlobalDomain];
  synchronize = [gizmoGlobalDomain2 synchronize];

  gizmoGlobalDomain3 = [(COSLocaleSelector *)self gizmoGlobalDomain];
  [gizmoGlobalDomain3 setObject:0 forKey:@"AppleICUForce24HourTime"];

  v12[0] = @"AppleICUForce24HourTime";
  v12[1] = @"AppleICUForce12HourTime";
  v7 = [NSArray arrayWithObjects:v12 count:2];
  syncManager = [(COSLocaleSelector *)self syncManager];
  gizmoGlobalDomain4 = [(COSLocaleSelector *)self gizmoGlobalDomain];
  domain = [gizmoGlobalDomain4 domain];
  v11 = [NSSet setWithArray:v7];
  [syncManager synchronizeNanoDomain:domain keys:v11];
}

- (void)setLocale:(id)locale
{
  [(COSLocaleSelector *)self updateLocale:locale];
  [(COSLocaleSelector *)self resetTimeFormat];

  [(COSLocaleSelector *)self postLocaleChangedNotification];
}

- (void)setLocaleFromCalendarID:(id)d
{
  dCopy = d;
  currentLocale = [(COSLocaleSelector *)self currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v6 = [NSLocale componentsFromLocaleIdentifier:localeIdentifier];
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];
  internationalController = [(COSLocaleSelector *)self internationalController];
  v9 = [internationalController defaultCalendarForLocaleID:localeIdentifier];

  if ([v9 isEqual:dCopy])
  {
    [v7 removeObjectForKey:@"calendar"];
  }

  else
  {
    [v7 setObject:dCopy forKey:@"calendar"];
  }

  if (([v6 isEqual:v7] & 1) == 0)
  {
    v10 = [NSLocale canonicalLocaleIdentifierFromComponents:v7];

    [(COSLocaleSelector *)self setLocaleOnly:v10];
    localeIdentifier = v10;
  }
}

- (id)availableLocaleIdentifiers
{
  internationalController = self->_internationalController;
  if (!internationalController)
  {
    sub_20D38();
  }

  return [(COSInternationalController *)internationalController availableLocaleIdentifiers];
}

- (id)currentLocale
{
  gizmoGlobalDomain = [(COSLocaleSelector *)self gizmoGlobalDomain];
  synchronize = [gizmoGlobalDomain synchronize];

  gizmoGlobalDomain2 = [(COSLocaleSelector *)self gizmoGlobalDomain];
  v6 = [gizmoGlobalDomain2 objectForKey:@"AppleLocale"];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"en_US";
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [NSLocale localeWithLocaleIdentifier:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setLocaleFromLanguageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentLocale = [(COSLocaleSelector *)self currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v6 = [NSLocale canonicalLocaleIdentifier:localeIdentifier withNewLanguageIdentifier:identifierCopy];
  internationalController = self->_internationalController;
  if (!internationalController)
  {
    sub_20D64();
  }

  v8 = [(COSInternationalController *)internationalController validateLocale:v6];

  v9 = [NSLocale componentsFromLocaleIdentifier:v8];
  v10 = [v9 mutableCopy];

  [v10 removeObjectForKey:@"numbers"];
  v11 = [(COSInternationalController *)self->_internationalController canonicalLocaleIdentifierWithValidCalendarForComponents:v10];

  if (([v11 isEqualToString:localeIdentifier] & 1) == 0)
  {
    [(COSLocaleSelector *)self setLocale:v11];
  }
}

- (void)setRegion:(id)region changeLanguageVariant:(BOOL)variant
{
  variantCopy = variant;
  regionCopy = region;
  if (!self->_internationalController)
  {
    sub_20D90();
  }

  v22 = regionCopy;
  v7 = [IPLanguageListManager alloc];
  preferredLanguages = [objc_opt_class() preferredLanguages];
  currentLocale = [(COSLocaleSelector *)self currentLocale];
  v10 = [v7 initWithPreferredLanguages:preferredLanguages preferredLocale:currentLocale];

  [v10 setRegion:v22 updateFirstLanguage:variantCopy];
  currentLocale2 = [(COSLocaleSelector *)self currentLocale];
  v12 = [NSLocale _localeIdentifierForRegionChangeFrom:currentLocale2 to:v22];

  [(COSLocaleSelector *)self setLocale:v12];
  internationalController = self->_internationalController;
  preferredLanguages2 = [v10 preferredLanguages];
  [(COSInternationalController *)internationalController setPreferredLanguages:preferredLanguages2];

  deviceLanguage = [v10 deviceLanguage];
  currentLocale3 = [(COSLocaleSelector *)self currentLocale];
  localeIdentifier = [currentLocale3 localeIdentifier];
  LOBYTE(internationalController) = [NSLocale _language:deviceLanguage usesSameLocalizationAs:localeIdentifier];

  if ((internationalController & 1) == 0)
  {
    currentLocale4 = [(COSLocaleSelector *)self currentLocale];
    localeIdentifier2 = [currentLocale4 localeIdentifier];
    deviceLanguage2 = [v10 deviceLanguage];
    v21 = [NSLocale canonicalLocaleIdentifier:localeIdentifier2 withNewLanguageIdentifier:deviceLanguage2];

    [(COSLocaleSelector *)self setLocale:v21];
  }
}

@end