@interface SWCEntry
+ (BOOL)_shouldIncludeServiceWithDomain:(id)domain fromBundleRecord:(id)record applicationIdentifier:(id)identifier developerModeEnabled:(BOOL)enabled enterpriseContext:(id)context;
+ (id)_associatedDomainsFromEntitlementForBundleRecord:(id)record applicationIdentifier:(id)identifier developerModeEnabled:(BOOL)enabled enterpriseContext:(id)context;
+ (id)_deduplicateServicesByMode:(id)mode;
+ (id)_enterpriseEntriesWithContext:(id)context forBundleRecord:(id)record applicationIdentifier:(id)identifier;
+ (id)_entriesFromBuiltInJSONForBundleRecord:(id)record applicationIdentifier:(id)identifier;
+ (id)additionalServiceDetailsDirectoryURLForApplicationIdentifier:(id)identifier createParentIfNeeded:(BOOL)needed error:(id *)error;
+ (id)entriesForBundleRecord:(id)record enterpriseContext:(id)context developerModeEnabled:(BOOL)enabled;
+ (id)entriesForJSONObject:(id)object domain:(id)domain;
+ (void)_addEntriesToOrderedSet:(id)set forService:(id)service fromAppsArray:(id)array domain:(id)domain;
+ (void)_addEntriesToOrderedSet:(id)set forUniversalLinksFromDetailsArray:(id)array domain:(id)domain substitutionVariables:(id)variables defaults:(id)defaults maximum:(unint64_t)maximum;
+ (void)_addEntriesToOrderedSet:(id)set forUniversalLinksFromDetailsDictionary:(id)dictionary domain:(id)domain substitutionVariables:(id)variables defaults:(id)defaults maximum:(unint64_t)maximum;
+ (void)_addEntryToOrderedSet:(id)set forUniversalLinksFromSingleDetailsDictionary:(id)dictionary domain:(id)domain substitutionVariables:(id)variables defaults:(id)defaults;
+ (void)_enumerateJSONFilesForBundleRecord:(id)record applicationIdentifier:(id)identifier block:(id)block;
+ (void)canonicalizeEntries:(id)entries;
+ (void)enumerateJSONResourceURLsForBundleURL:(id)l block:(id)block;
+ (void)enumerateJSONResourceURLsForDirectoryAtURL:(id)l block:(id)block;
- (BOOL)isEqual:(id)equal;
- (BOOL)needsFirstDownload;
- (NSDate)nextCheckDate;
- (NSError)lastError;
- (SWCEntry)initWithApplicationIdentifier:(id)identifier service:(id)service domain:(id)domain;
- (SWCEntry)initWithCoder:(id)coder;
- (SWCEntry)initWithServiceSpecifier:(id)specifier;
- (_SWCServiceSpecifier)serviceSpecifier;
- (id)debugDescription;
- (id)description;
- (id)redactedDescription;
- (unint64_t)evaluateWithURLComponents:(id)components auditToken:(id *)token matchingPattern:(id *)pattern;
- (unint64_t)hash;
- (void)canonicalizeObjectAtAddress:(id *)address objectCache:(id)cache;
- (void)canonicalizeWithObjectCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
- (void)logToFile:(__sFILE *)file verbosity:(unsigned __int8)verbosity;
- (void)setLastError:(id)error;
@end

@implementation SWCEntry

- (SWCEntry)initWithApplicationIdentifier:(id)identifier service:(id)service domain:(id)domain
{
  identifierCopy = identifier;
  serviceCopy = service;
  domainCopy = domain;
  v21.receiver = self;
  v21.super_class = SWCEntry;
  v11 = [(SWCEntry *)&v21 init];
  if (v11)
  {
    v12 = _SWCServiceTypeCanonicalize();
    serviceType = v11->_serviceType;
    v11->_serviceType = v12;

    v14 = [domainCopy copy];
    domain = v11->_domain;
    v11->_domain = v14;

    v16 = [identifierCopy copy];
    applicationIdentifier = v11->_applicationIdentifier;
    v11->_applicationIdentifier = v16;

    v18 = +[NSDate distantPast];
    lastCheckedDate = v11->_lastCheckedDate;
    v11->_lastCheckedDate = v18;
  }

  return v11;
}

- (SWCEntry)initWithServiceSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = specifierCopy;
  if (specifierCopy && [specifierCopy isFullySpecified])
  {
    sWCApplicationIdentifier = [v5 SWCApplicationIdentifier];
    serviceType = [v5 serviceType];
    sWCDomain = [v5 SWCDomain];
    v9 = [(SWCEntry *)self initWithApplicationIdentifier:sWCApplicationIdentifier service:serviceType domain:sWCDomain];

    self = sWCApplicationIdentifier;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)logToFile:(__sFILE *)file verbosity:(unsigned __int8)verbosity
{
  verbosityCopy = verbosity;
  v6 = objc_autoreleasePoolPush();
  serviceType = [(SWCEntry *)self serviceType];
  _SWCLogValueForKey();

  applicationIdentifier = [(SWCEntry *)self applicationIdentifier];
  _SWCLogValueForKey();

  if (verbosityCopy)
  {
    applicationVersion = [(SWCEntry *)self applicationVersion];
    _SWCLogValueForKey();

    applicationPersistentIdentifier = [(SWCEntry *)self applicationPersistentIdentifier];
    v11 = _LSPersistentIdentifierGetDebugDescription();
    _SWCLogValueForKey();
  }

  domain = [(SWCEntry *)self domain];
  _SWCLogValueForKey();

  if (verbosityCopy)
  {
    patterns = [(SWCEntry *)self patterns];

    if (patterns)
    {
      patterns2 = [(SWCEntry *)self patterns];
      _SWCLogValueForKey();
    }

    substitutionVariables = [(SWCEntry *)self substitutionVariables];

    if (substitutionVariables)
    {
      substitutionVariables2 = [(SWCEntry *)self substitutionVariables];
      _SWCLogValueForKey();
    }
  }

  domain2 = [(SWCEntry *)self domain];
  modeOfOperation = [domain2 modeOfOperation];

  if (modeOfOperation == 1)
  {
    v19 = @"developer";
  }

  else
  {
    if (modeOfOperation != 2)
    {
      v20 = 0;
      goto LABEL_14;
    }

    v19 = @"managed";
  }

  v20 = [NSSet setWithObject:v19];
LABEL_14:
  [(SWCEntry *)self fields];
  _SWCFieldsLogDebugDescription();
  lastCheckedDate = [(SWCEntry *)self lastCheckedDate];
  v22 = lastCheckedDate;
  if (lastCheckedDate)
  {
    [lastCheckedDate timeIntervalSince1970];
    if (fabs(v23) < 1.0e10)
    {
      _SWCLogValueForKey();
    }
  }

  nextCheckDate = [(SWCEntry *)self nextCheckDate];
  v25 = nextCheckDate;
  if (nextCheckDate)
  {
    [nextCheckDate timeIntervalSince1970];
    if (fabs(v26) < 1.0e10)
    {
      _SWCLogValueForKey();
    }
  }

  lastError = [(SWCEntry *)self lastError];
  if (lastError)
  {
    if (verbosityCopy)
    {
      _SWCLogValueForKey();
    }

    else
    {
      v28 = [NSString alloc];
      domain3 = [lastError domain];
      v30 = [v28 initWithFormat:@"%@ %lli", domain3, objc_msgSend(lastError, "code")];
      _SWCLogValueForKey();
    }
  }

  retryCount = [(SWCEntry *)self retryCount];
  if (retryCount)
  {
    _SWCLogValueForKey();
  }

  objc_autoreleasePoolPop(v6);
}

- (_SWCServiceSpecifier)serviceSpecifier
{
  v3 = [_SWCServiceSpecifier alloc];
  serviceType = [(SWCEntry *)self serviceType];
  applicationIdentifier = [(SWCEntry *)self applicationIdentifier];
  domain = [(SWCEntry *)self domain];
  v7 = [v3 _initWithServiceType:serviceType applicationIdentifier:applicationIdentifier domain:domain];

  return v7;
}

+ (void)canonicalizeEntries:(id)entries
{
  entriesCopy = entries;
  if ([entriesCopy count] >= 2)
  {
    objc_opt_class();
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = entriesCopy;
    v5 = 0;
    v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_isKindOfClass())
          {
            if (!v5)
            {
              v5 = objc_alloc_init(NSMutableSet);
            }

            [v9 canonicalizeWithObjectCache:{v5, v10}];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)canonicalizeObjectAtAddress:(id *)address objectCache:(id)cache
{
  cacheCopy = cache;
  v5 = [cacheCopy member:*address];
  if (v5)
  {
    objc_storeStrong(address, v5);
  }

  else if (*address)
  {
    [cacheCopy addObject:?];
  }
}

- (void)canonicalizeWithObjectCache:(id)cache
{
  cacheCopy = cache;
  [(SWCEntry *)self canonicalizeObjectAtAddress:&self->_applicationIdentifier objectCache:?];
  [(SWCEntry *)self canonicalizeObjectAtAddress:&self->_domain objectCache:cacheCopy];
  [(SWCEntry *)self canonicalizeObjectAtAddress:&self->_patterns objectCache:cacheCopy];
  [(SWCEntry *)self canonicalizeObjectAtAddress:&self->_substitutionVariables objectCache:cacheCopy];
}

- (unint64_t)evaluateWithURLComponents:(id)components auditToken:(id *)token matchingPattern:(id *)pattern
{
  componentsCopy = components;
  patterns = [(SWCEntry *)self patterns];
  if (patterns)
  {
    substitutionVariables = [(SWCEntry *)self substitutionVariables];
    v11 = [patterns evaluateWithURLComponents:componentsCopy substitutionVariables:substitutionVariables auditToken:token matchingPattern:pattern index:0];
  }

  else
  {
    v11 = 200;
  }

  return v11;
}

- (BOOL)needsFirstDownload
{
  if ((*&self->_fields & 0xC) != 0)
  {
    return 0;
  }

  retryCount = [(SWCEntry *)self retryCount];
  v2 = retryCount == 0;

  return v2;
}

- (NSDate)nextCheckDate
{
  v3 = objc_autoreleasePoolPush();
  v4 = *[(SWCEntry *)self fields]& 0xC;
  if (v4)
  {
    goto LABEL_5;
  }

  retryCount = [(SWCEntry *)self retryCount];
  v6 = retryCount;
  if (!retryCount || (v7 = [retryCount unsignedIntegerValue], +[_SWCPrefs sharedPrefs](_SWCPrefs, "sharedPrefs"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "maximumRetryCount"), v8, v7 < v9))
  {

LABEL_5:
    v10 = +[_SWCPrefs sharedPrefs];
    [v10 retryIntervalAfterSuccess:v4 != 0];
    v12 = v11;

    lastCheckedDate = [(SWCEntry *)self lastCheckedDate];
    v14 = [lastCheckedDate dateByAddingTimeInterval:v12];

    goto LABEL_6;
  }

  v16 = +[_SWCPrefs sharedPrefs];
  [v16 retryIntervalAfterReachLimitWithFailure:{objc_msgSend(v6, "unsignedIntegerValue")}];
  v18 = v17;

  lastCheckedDate2 = [(SWCEntry *)self lastCheckedDate];
  v14 = [lastCheckedDate2 dateByAddingTimeInterval:v18];

  if (qword_100032548 != -1)
  {
    dispatch_once(&qword_100032548, &stru_10002CAF0);
  }

  v20 = qword_100032540;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = +[_SWCPrefs sharedPrefs];
    v22 = 138413058;
    selfCopy = self;
    v24 = 2112;
    v25 = v14;
    v26 = 2114;
    v27 = v6;
    v28 = 2048;
    maximumRetryCount = [v21 maximumRetryCount];
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "nextCheckDate for '%@' will be %@ because it is at its retry limit (%{public}@ of %llu)", &v22, 0x2Au);
  }

  if (!v14)
  {
    goto LABEL_5;
  }

LABEL_6:
  objc_autoreleasePoolPop(v3);

  return v14;
}

- (NSError)lastError
{
  if (self->_lastErrorJSON)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [NSJSONSerialization JSONObjectWithData:self->_lastErrorJSON options:0 error:0];
    if (v4 && _NSIsNSDictionary())
    {
      v5 = [v4 objectForKeyedSubscript:@"d"];
      v6 = [v4 objectForKeyedSubscript:@"c"];
      v7 = [v4 objectForKeyedSubscript:@"u"];
      if (_NSIsNSString() && _NSIsNSNumber() && (!v7 || _NSIsNSDictionary()))
      {
        v8 = [[NSError alloc] initWithDomain:v5 code:objc_msgSend(v6 userInfo:{"integerValue"), v7}];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setLastError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = objc_alloc_init(NSMutableDictionary);
    domain = [errorCopy domain];
    [v6 setObject:domain forKeyedSubscript:@"d"];

    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    [v6 setObject:v8 forKeyedSubscript:@"c"];

    userInfo = [errorCopy userInfo];
    v10 = userInfo;
    if (userInfo && [userInfo count])
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100008268;
      v15[3] = &unk_10002C950;
      v11 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
      v16 = v11;
      [v10 enumerateKeysAndObjectsUsingBlock:v15];
      [v6 setObject:v11 forKeyedSubscript:@"u"];
    }

    v12 = [NSJSONSerialization dataWithJSONObject:v6 options:8 error:0];
    lastErrorJSON = self->_lastErrorJSON;
    self->_lastErrorJSON = v12;

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v14 = self->_lastErrorJSON;
    self->_lastErrorJSON = 0;
  }
}

- (unint64_t)hash
{
  applicationIdentifier = [(SWCEntry *)self applicationIdentifier];
  v4 = [applicationIdentifier hash];
  serviceType = [(SWCEntry *)self serviceType];
  v6 = [serviceType hash];
  domain = [(SWCEntry *)self domain];
  v8 = [domain hash];

  return v6 ^ v4 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      applicationIdentifier = [(SWCEntry *)self applicationIdentifier];
      applicationIdentifier2 = [(SWCEntry *)v5 applicationIdentifier];
      if ([applicationIdentifier isEqual:applicationIdentifier2])
      {
        serviceType = [(SWCEntry *)self serviceType];
        serviceType2 = [(SWCEntry *)v5 serviceType];
        if ([serviceType isEqual:serviceType2])
        {
          domain = [(SWCEntry *)self domain];
          domain2 = [(SWCEntry *)v5 domain];
          v12 = [domain isEqual:domain2];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  patterns = [(SWCEntry *)self patterns];

  if (patterns)
  {
    patterns2 = [(SWCEntry *)self patterns];
    [v3 appendFormat:@", patternCount = %llu", objc_msgSend(patterns2, "count")];
  }

  substitutionVariables = [(SWCEntry *)self substitutionVariables];

  if (substitutionVariables)
  {
    substitutionVariables2 = [(SWCEntry *)self substitutionVariables];
    [v3 appendFormat:@", subVarCount = %llu", objc_msgSend(substitutionVariables2, "count")];
  }

  v8 = [NSString alloc];
  serviceType = [(SWCEntry *)self serviceType];
  applicationIdentifier = [(SWCEntry *)self applicationIdentifier];
  domain = [(SWCEntry *)self domain];
  [(SWCEntry *)self fields];
  v12 = _SWCServiceApprovalStateGetDebugDescription();
  [(SWCEntry *)self fields];
  v13 = _SWCServiceApprovalStateGetDebugDescription();
  v14 = [v8 initWithFormat:@"{ s = %@, a = %@, d = %@, ua = %@, sa = %@%@ }", serviceType, applicationIdentifier, domain, v12, v13, v3];

  return v14;
}

- (id)debugDescription
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(SWCEntry *)self description];
  v6 = [v3 initWithFormat:@"<%@ %p> %@", v4, self, v5];

  return v6;
}

- (id)redactedDescription
{
  v3 = [NSString alloc];
  serviceType = [(SWCEntry *)self serviceType];
  applicationIdentifier = [(SWCEntry *)self applicationIdentifier];
  redactedDescription = [applicationIdentifier redactedDescription];
  domain = [(SWCEntry *)self domain];
  redactedDescription2 = [domain redactedDescription];
  [(SWCEntry *)self fields];
  v9 = _SWCServiceApprovalStateGetDebugDescription();
  [(SWCEntry *)self fields];
  v10 = _SWCServiceApprovalStateGetDebugDescription();
  v11 = [v3 initWithFormat:@"{ s = %@, a = %@, d = %@, ua = %@, sa = %@ }", serviceType, redactedDescription, redactedDescription2, v9, v10];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_applicationIdentifier forKey:@"appID"];
  [coderCopy encodeObject:self->_serviceType forKey:@"service"];
  [coderCopy encodeObject:self->_domain forKey:@"domain"];
  [coderCopy encodeObject:self->_applicationVersion forKey:@"applicationVersion"];
  [coderCopy encodeObject:self->_applicationPersistentIdentifier forKey:@"applicationPersistentIdentifier"];
  _SWCFieldsEncodeWithCoder();
  [coderCopy encodeObject:self->_patterns forKey:@"patternList"];
  [coderCopy encodeObject:self->_substitutionVariables forKey:@"substitutionVariableList"];
  [coderCopy encodeObject:self->_lastCheckedDate forKey:@"lastCheckedDate"];
  [coderCopy encodeObject:self->_lastErrorJSON forKey:@"lastErrorJSON"];
  [coderCopy encodeObject:self->_retryCount forKey:@"retryCount"];
}

- (SWCEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = [coderCopy swc_decodeObjectOfClass:objc_opt_class() forKey:@"appID"];
  v7 = [coderCopy swc_decodeObjectOfClass:objc_opt_class() forKey:@"service"];
  v8 = [coderCopy swc_decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
  v9 = v8;
  if (v6 && v7 && v8)
  {
    v10 = [(SWCEntry *)self initWithApplicationIdentifier:v6 service:v7 domain:v8];
    if (v10)
    {
      v11 = [coderCopy swc_decodeObjectOfClass:objc_opt_class() forKey:@"applicationVersion"];
      applicationVersion = v10->_applicationVersion;
      v10->_applicationVersion = v11;

      v13 = [coderCopy swc_decodeObjectOfClass:objc_opt_class() forKey:@"applicationPersistentIdentifier"];
      applicationPersistentIdentifier = v10->_applicationPersistentIdentifier;
      v10->_applicationPersistentIdentifier = v13;

      v15 = _SWCFieldsMakeWithCoder();
      *&v10->_fields = v15;
      v10->_fields.relativeOrder = BYTE2(v15);
      v16 = [coderCopy swc_decodeObjectOfClass:objc_opt_class() forKey:@"patternList"];
      patterns = v10->_patterns;
      v10->_patterns = v16;

      v18 = [coderCopy swc_decodeObjectOfClass:objc_opt_class() forKey:@"substitutionVariableList"];
      substitutionVariables = v10->_substitutionVariables;
      v10->_substitutionVariables = v18;

      v20 = [coderCopy swc_decodeObjectOfClass:objc_opt_class() forKey:@"lastCheckedDate"];
      lastCheckedDate = v10->_lastCheckedDate;
      v10->_lastCheckedDate = v20;

      if (!v10->_lastCheckedDate)
      {
        v22 = +[NSDate distantPast];
        v23 = v10->_lastCheckedDate;
        v10->_lastCheckedDate = v22;
      }

      v24 = [coderCopy swc_decodeObjectOfClass:objc_opt_class() forKey:@"lastErrorJSON"];
      lastErrorJSON = v10->_lastErrorJSON;
      v10->_lastErrorJSON = v24;

      v26 = [coderCopy swc_decodeObjectOfClass:objc_opt_class() forKey:@"retryCount"];
      retryCount = v10->_retryCount;
      v10->_retryCount = v26;
    }
  }

  else
  {
    v28 = [NSError alloc];
    v33[0] = @"Line";
    v33[1] = @"Function";
    v34[0] = &off_10002E680;
    v29 = [NSString stringWithUTF8String:"[SWCEntry initWithCoder:]"];
    v34[1] = v29;
    v30 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
    v31 = [v28 initWithDomain:NSCocoaErrorDomain code:4865 userInfo:v30];
    [coderCopy failWithError:v31];

    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v10;
}

+ (id)entriesForBundleRecord:(id)record enterpriseContext:(id)context developerModeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  recordCopy = record;
  contextCopy = context;
  v59 = objc_alloc_init(NSMutableOrderedSet);
  v57 = [[_SWCApplicationIdentifier alloc] initForBundleRecord:recordCopy];
  if (v57)
  {
    entitlements = [recordCopy entitlements];
    v10 = [entitlements objectForKey:@"com.apple.private.swc.system-app" ofClass:objc_opt_class()];
    v11 = [v10 isEqual:&__kCFBooleanTrue];

    if (objc_opt_respondsToSelector())
    {
      isSystemPlaceholder = [recordCopy isSystemPlaceholder];
    }

    else
    {
      isSystemPlaceholder = 0;
    }

    v56 = [self _associatedDomainsFromEntitlementForBundleRecord:recordCopy applicationIdentifier:v57 developerModeEnabled:enabledCopy enterpriseContext:contextCopy];
    if ([v56 count])
    {
      if (qword_100032548 != -1)
      {
        dispatch_once(&qword_100032548, &stru_10002CAF0);
      }

      v15 = qword_100032540;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        bundleVersion = [recordCopy bundleVersion];
        *buf = 138412546;
        v84 = recordCopy;
        v85 = 2114;
        v86 = bundleVersion;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Adding bundle record %@ (version %{public}@)", buf, 0x16u);
      }

      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_100009AA4;
      v76[3] = &unk_10002C978;
      v77 = v57;
      v78 = v59;
      [v56 enumerateKeysAndObjectsUsingBlock:v76];
    }

    else
    {
      if (qword_100032548 != -1)
      {
        dispatch_once(&qword_100032548, &stru_10002CAF0);
      }

      v17 = qword_100032540;
      if (os_log_type_enabled(qword_100032540, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v84 = recordCopy;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "No associated domains for bundle record %@", buf, 0xCu);
      }
    }

    v18 = v11 | isSystemPlaceholder;
    if (((v11 | isSystemPlaceholder) & (v56 != 0)) == 1)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = [self _entriesFromBuiltInJSONForBundleRecord:recordCopy applicationIdentifier:v57];
      if (v20)
      {
        if (qword_100032548 != -1)
        {
          dispatch_once(&qword_100032548, &stru_10002CAF0);
        }

        v21 = qword_100032540;
        if (os_log_type_enabled(qword_100032540, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v84 = recordCopy;
          v85 = 2112;
          v86 = v20;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "App %@ had on-disk JSON, adding it to the pile: %@", buf, 0x16u);
        }

        [v59 unionOrderedSet:v20];
      }

      objc_autoreleasePoolPop(v19);
    }

    if (contextCopy)
    {
      isManaging = [contextCopy isManaging];
      v23 = v56 ? isManaging : 0;
      if (v23 == 1)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = [self _enterpriseEntriesWithContext:contextCopy forBundleRecord:recordCopy applicationIdentifier:v57];
        if (v25)
        {
          if (qword_100032548 != -1)
          {
            dispatch_once(&qword_100032548, &stru_10002CAF0);
          }

          v26 = qword_100032540;
          if (os_log_type_enabled(qword_100032540, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v84 = recordCopy;
            v85 = 2112;
            v86 = v25;
            _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "App %@ had enterprise-supplied service specifiers, adding them to the pile: %@", buf, 0x16u);
          }

          [v59 unionOrderedSet:v25];
        }

        objc_autoreleasePoolPop(v24);
      }
    }

    if ([v59 count])
    {
      bundleVersion2 = [recordCopy bundleVersion];
      if (bundleVersion2)
      {
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v28 = v59;
        v29 = [v28 countByEnumeratingWithState:&v72 objects:v82 count:16];
        if (v29)
        {
          v30 = *v73;
          do
          {
            for (i = 0; i != v29; i = i + 1)
            {
              if (*v73 != v30)
              {
                objc_enumerationMutation(v28);
              }

              [*(*(&v72 + 1) + 8 * i) setApplicationVersion:bundleVersion2];
            }

            v29 = [v28 countByEnumeratingWithState:&v72 objects:v82 count:16];
          }

          while (v29);
        }
      }

      persistentIdentifier = [recordCopy persistentIdentifier];
      if (persistentIdentifier)
      {
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v33 = v59;
        v34 = [v33 countByEnumeratingWithState:&v68 objects:v81 count:16];
        if (v34)
        {
          v35 = *v69;
          do
          {
            for (j = 0; j != v34; j = j + 1)
            {
              if (*v69 != v35)
              {
                objc_enumerationMutation(v33);
              }

              [*(*(&v68 + 1) + 8 * j) setApplicationPersistentIdentifier:persistentIdentifier];
            }

            v34 = [v33 countByEnumeratingWithState:&v68 objects:v81 count:16];
          }

          while (v34);
        }
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v37 = v59;
      v38 = [v37 countByEnumeratingWithState:&v64 objects:v80 count:16];
      if (v38)
      {
        v39 = *v65;
        do
        {
          for (k = 0; k != v38; k = k + 1)
          {
            if (*v65 != v39)
            {
              objc_enumerationMutation(v37);
            }

            fields = [*(*(&v64 + 1) + 8 * k) fields];
            if (v18)
            {
              v42 = *fields & 0xFFD3;
              *fields = v42 | 0x24;
              if (!isSystemPlaceholder)
              {
                continue;
              }

              v43 = v42 | 0x224;
            }

            else
            {
              fields[2] = 0;
              v43 = *fields & 0xFF3F;
            }

            *fields = v43;
          }

          v38 = [v37 countByEnumeratingWithState:&v64 objects:v80 count:16];
        }

        while (v38);
      }
    }

    v13 = v57;
  }

  else
  {
    if (qword_100032548 != -1)
    {
      dispatch_once(&qword_100032548, &stru_10002CAF0);
    }

    v13 = 0;
    v14 = qword_100032540;
    if (os_log_type_enabled(qword_100032540, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v84 = recordCopy;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "### Add bundle record %@ failed because of missing app identifier entitlement", buf, 0xCu);
    }
  }

  if ([v59 count] && (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(recordCopy, "appClipMetadata"), v44 = objc_claimAutoreleasedReturnValue(), v45 = v44 == 0, v44, !v45))
  {
    v46 = objc_alloc_init(NSMutableArray);
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v47 = v59;
    v48 = [v47 countByEnumeratingWithState:&v60 objects:v79 count:16];
    if (v48)
    {
      v49 = *v61;
      do
      {
        for (m = 0; m != v48; m = m + 1)
        {
          if (*v61 != v49)
          {
            objc_enumerationMutation(v47);
          }

          v51 = *(*(&v60 + 1) + 8 * m);
          serviceType = [v51 serviceType];
          IsWhitelistedForAppClips = _SWCServiceTypeIsWhitelistedForAppClips();

          if ((IsWhitelistedForAppClips & 1) == 0)
          {
            [v46 addObject:v51];
          }
        }

        v48 = [v47 countByEnumeratingWithState:&v60 objects:v79 count:16];
      }

      while (v48);
    }

    if ([v46 count])
    {
      if (qword_100032548 != -1)
      {
        dispatch_once(&qword_100032548, &stru_10002CAF0);
      }

      v54 = qword_100032540;
      if (os_log_type_enabled(qword_100032540, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v84 = recordCopy;
        v85 = 2112;
        v86 = v46;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "Ignoring these associated domains for bundle record %@ because it is an app clip: %@", buf, 0x16u);
      }

      [v47 removeObjectsInArray:v46];
    }
  }

  else
  {
    [SWCEntry canonicalizeEntries:v59];
  }

  return v59;
}

+ (id)entriesForJSONObject:(id)object domain:(id)domain
{
  objectCopy = object;
  domainCopy = domain;
  v8 = objc_alloc_init(NSMutableOrderedSet);
  v9 = objc_autoreleasePoolPush();
  if (_NSIsNSDictionary())
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100009E64;
    v11[3] = &unk_10002C9A0;
    selfCopy = self;
    v12 = v8;
    v13 = domainCopy;
    [objectCopy enumerateKeysAndObjectsUsingBlock:v11];
  }

  objc_autoreleasePoolPop(v9);

  return v8;
}

+ (void)enumerateJSONResourceURLsForBundleURL:(id)l block:(id)block
{
  lCopy = l;
  blockCopy = block;
  v8 = objc_autoreleasePoolPush();
  v9 = [lCopy URLByAppendingPathComponent:@"Contents" isDirectory:1];
  v10 = v9;
  if (!v9 || ([v9 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v11 = lCopy;

    v10 = v11;
  }

  v12 = [v10 URLByAppendingPathComponent:@"Library/SharedWebCredentials" isDirectory:1];

  objc_autoreleasePoolPop(v8);
  if (!v12)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SWCEntry.mm" lineNumber:706 description:{@"Unexpected failure to allocate URL for [Contents/]Library/SharedWebCredentials directory relative to bundle URL %@.", lCopy}];
  }

  [self enumerateJSONResourceURLsForDirectoryAtURL:v12 block:blockCopy];
}

+ (void)enumerateJSONResourceURLsForDirectoryAtURL:(id)l block:(id)block
{
  lCopy = l;
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  bundleURL = lCopy;
  v52 = CFBundleCopyResourceURLsOfTypeInDirectory(lCopy, @"json", 0);
  if (!v52)
  {
    obj = 0;
    goto LABEL_51;
  }

  if (qword_100032548 != -1)
  {
    dispatch_once(&qword_100032548, &stru_10002CAF0);
  }

  v6 = qword_100032540;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v49 = [(__CFArray *)v52 count];
    path = [(__CFURL *)bundleURL path];
    *buf = 134218498;
    v75 = v49;
    v76 = 2112;
    v77 = path;
    v78 = 2112;
    v79 = v52;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Found %llu JSON URLs (must filter) in directory %@: %@", buf, 0x20u);
  }

  obj = objc_alloc_init(NSMutableSet);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v7 = v52;
  v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (!v8)
  {

LABEL_33:
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v25 = v7;
    v26 = [(__CFArray *)v25 countByEnumeratingWithState:&v63 objects:v72 count:16];
    if (v26)
    {
      v27 = *v64;
      do
      {
        v28 = 0;
        do
        {
          if (*v64 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v63 + 1) + 8 * v28);
          v30 = objc_autoreleasePoolPush();
          lastPathComponent = [v29 lastPathComponent];
          stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

          if (stringByDeletingPathExtension)
          {
            v33 = [[_SWCDomain alloc] initWithString:stringByDeletingPathExtension];
            v34 = v33;
            if (v33 && [v33 isValid])
            {
              if (qword_100032548 != -1)
              {
                dispatch_once(&qword_100032548, &stru_10002CAF0);
              }

              v35 = qword_100032540;
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                lastPathComponent2 = [v29 lastPathComponent];
                path2 = [(__CFURL *)bundleURL path];
                *buf = 138412802;
                v75 = lastPathComponent2;
                v76 = 2112;
                v77 = v34;
                v78 = 2112;
                v79 = path2;
                _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Found JSON file %@ for domain %@ in directory %@ (nothing model-specific)", buf, 0x20u);
              }

              blockCopy[2](blockCopy, v34, v29);
            }
          }

          objc_autoreleasePoolPop(v30);
          v28 = v28 + 1;
        }

        while (v26 != v28);
        v26 = [(__CFArray *)v25 countByEnumeratingWithState:&v63 objects:v72 count:16];
      }

      while (v26);
    }

    v22 = obj;
    obj = 0;
    goto LABEL_50;
  }

  v55 = 0;
  v9 = *v68;
  do
  {
    v10 = 0;
    do
    {
      if (*v68 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v67 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      lastPathComponent3 = [v11 lastPathComponent];
      stringByDeletingPathExtension2 = [lastPathComponent3 stringByDeletingPathExtension];

      if (stringByDeletingPathExtension2)
      {
        v15 = [stringByDeletingPathExtension2 rangeOfString:@"." options:4];
        v16 = [stringByDeletingPathExtension2 rangeOfString:@"~" options:4];
        if (v16 == 0x7FFFFFFFFFFFFFFFLL || (v15 != 0x7FFFFFFFFFFFFFFFLL ? (v17 = v15 >= v16) : (v17 = 0), v17))
        {
          v18 = stringByDeletingPathExtension2;
        }

        else
        {
          v18 = [stringByDeletingPathExtension2 substringToIndex:v16];

          v19 = [v18 rangeOfString:@"-macos" options:13];
          if (v19 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v55 = 1;
          }

          else
          {
            v20 = [v18 substringToIndex:v19];

            v55 = 1;
            v18 = v20;
          }
        }

        [obj addObject:v18];
      }

      else
      {
        v18 = 0;
      }

      objc_autoreleasePoolPop(v12);
      v10 = v10 + 1;
    }

    while (v8 != v10);
    v21 = [(__CFArray *)v7 countByEnumeratingWithState:&v67 objects:v73 count:16];
    v8 = v21;
  }

  while (v21);

  if ((v55 & 1) == 0)
  {
    goto LABEL_33;
  }

  if (qword_100032548 != -1)
  {
    dispatch_once(&qword_100032548, &stru_10002CAF0);
  }

  v22 = qword_100032540;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = [obj count];
    path3 = [(__CFURL *)bundleURL path];
    *buf = 134218498;
    v75 = v23;
    v76 = 2112;
    v77 = path3;
    v78 = 2112;
    v79 = obj;
    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Found %llu JSON filenames (filtered) in directory %@: %@", buf, 0x20u);
  }

LABEL_50:

LABEL_51:
  objc_autoreleasePoolPop(context);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obja = obj;
  v37 = [obja countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (v37)
  {
    v38 = *v60;
    do
    {
      v39 = 0;
      do
      {
        if (*v60 != v38)
        {
          objc_enumerationMutation(obja);
        }

        v40 = *(*(&v59 + 1) + 8 * v39);
        v41 = objc_autoreleasePoolPush();
        v42 = [[_SWCDomain alloc] initWithString:v40];
        v43 = v42;
        if (v42 && [v42 isValid])
        {
          v44 = CFBundleCopyResourceURLInDirectory(bundleURL, v40, @"json", 0);
          if (v44)
          {
            if (qword_100032548 != -1)
            {
              dispatch_once(&qword_100032548, &stru_10002CAF0);
            }

            v45 = qword_100032540;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              lastPathComponent4 = [v44 lastPathComponent];
              path4 = [(__CFURL *)bundleURL path];
              *buf = 138412802;
              v75 = lastPathComponent4;
              v76 = 2112;
              v77 = v43;
              v78 = 2112;
              v79 = path4;
              _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "Found JSON file %@ for domain %@ in directory %@", buf, 0x20u);
            }

            blockCopy[2](blockCopy, v43, v44);
          }
        }

        else
        {
          if (qword_100032548 != -1)
          {
            dispatch_once(&qword_100032548, &stru_10002CAF0);
          }

          v44 = qword_100032540;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            path5 = [(__CFURL *)bundleURL path];
            *buf = 138412546;
            v75 = v40;
            v76 = 2112;
            v77 = path5;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Could not construct a domain name object for the filename %@.json in directory %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v41);
        v39 = v39 + 1;
      }

      while (v37 != v39);
      v37 = [obja countByEnumeratingWithState:&v59 objects:v71 count:16];
    }

    while (v37);
  }
}

+ (id)additionalServiceDetailsDirectoryURLForApplicationIdentifier:(id)identifier createParentIfNeeded:(BOOL)needed error:(id *)error
{
  neededCopy = needed;
  identifierCopy = identifier;
  v8 = +[_SWCPrefs sharedPrefs];
  v26 = 0;
  v9 = [v8 containerURLReturningError:&v26];
  v10 = v26;

  if (v9)
  {
    v11 = [v9 URLByAppendingPathComponent:@"AdditionalServiceDetails" isDirectory:1];
    if (v11)
    {
      if (neededCopy)
      {
        v12 = +[NSFileManager defaultManager];
        v25 = v10;
        v13 = [v12 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v25];
        v14 = v25;

        if (!v13)
        {
          v18 = 0;
          goto LABEL_13;
        }

        v10 = v14;
      }

      uUIDRepresentation = [identifierCopy UUIDRepresentation];
      v16 = uUIDRepresentation;
      if (uUIDRepresentation)
      {
        uUIDString = [uUIDRepresentation UUIDString];
        v18 = [v11 URLByAppendingPathComponent:uUIDString isDirectory:1];
LABEL_12:

        v14 = v10;
LABEL_13:

        v10 = v14;
        goto LABEL_14;
      }

      v21 = [NSError alloc];
      v30[0] = &off_10002E698;
      v29[0] = @"Line";
      v29[1] = @"Function";
      uUIDString = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[SWCEntry(JSONParsing) additionalServiceDetailsDirectoryURLForApplicationIdentifier:createParentIfNeeded:error:]");
      v29[2] = NSDebugDescriptionErrorKey;
      v30[1] = uUIDString;
      v30[2] = @"Could not generate a UUID for the specified application identifier.";
      v20 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
      v22 = [v21 initWithDomain:_SWCErrorDomain code:-1 userInfo:v20];

      v16 = 0;
      v10 = v22;
    }

    else
    {
      v19 = [NSError alloc];
      v28[0] = &off_10002E6B0;
      v27[0] = @"Line";
      v27[1] = @"Function";
      v16 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[SWCEntry(JSONParsing) additionalServiceDetailsDirectoryURLForApplicationIdentifier:createParentIfNeeded:error:]");
      v27[2] = NSDebugDescriptionErrorKey;
      v28[1] = v16;
      v28[2] = @"Could not create additional service details storage directory.";
      uUIDString = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];
      v20 = v10;
      v10 = [v19 initWithDomain:_SWCErrorDomain code:-1 userInfo:uUIDString];
    }

    v18 = 0;
    goto LABEL_12;
  }

  v18 = 0;
LABEL_14:

  if (error && !v18)
  {
    v23 = v10;
    *error = v10;
  }

  return v18;
}

+ (BOOL)_shouldIncludeServiceWithDomain:(id)domain fromBundleRecord:(id)record applicationIdentifier:(id)identifier developerModeEnabled:(BOOL)enabled enterpriseContext:(id)context
{
  enabledCopy = enabled;
  domainCopy = domain;
  recordCopy = record;
  identifierCopy = identifier;
  contextCopy = context;
  if ([domainCopy modeOfOperation])
  {
    if (!enabledCopy)
    {
      if (qword_100032548 != -1)
      {
        dispatch_once(&qword_100032548, &stru_10002CAF0);
      }

      v23 = qword_100032540;
      if (!os_log_type_enabled(qword_100032540, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_24;
      }

      *buf = 138412290;
      v29 = domainCopy;
      v17 = "Skipping domain %@ because developer mode is disabled";
LABEL_22:
      v18 = v23;
      v19 = 12;
LABEL_23:
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, v17, buf, v19);
      goto LABEL_24;
    }

    if (([recordCopy swc_isBuiltForDevelopment] & 1) == 0)
    {
      if (qword_100032548 != -1)
      {
        dispatch_once(&qword_100032548, &stru_10002CAF0);
      }

      v16 = qword_100032540;
      if (!os_log_type_enabled(qword_100032540, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_24;
      }

      *buf = 138412546;
      v29 = domainCopy;
      v30 = 2112;
      v31 = recordCopy;
      v17 = "Skipping domain %@ because bundle %@ is not developer-signed";
      v18 = v16;
      v19 = 22;
      goto LABEL_23;
    }
  }

  if (([domainCopy modeOfOperation] & 2) != 0)
  {
    if (contextCopy)
    {
      v27 = 0;
      v20 = [contextCopy isApplicationIdentifierEligibleForManagedMode:identifierCopy error:&v27];
      v21 = v27;
      if (v20)
      {
        bOOLValue = [v20 BOOLValue];

        if (bOOLValue)
        {
          v15 = 1;
LABEL_34:

          goto LABEL_35;
        }
      }

      else
      {
        if (qword_100032548 != -1)
        {
          dispatch_once(&qword_100032548, &stru_10002CAF0);
        }

        v24 = qword_100032540;
        if (os_log_type_enabled(qword_100032540, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v29 = domainCopy;
          v30 = 2112;
          v31 = v21;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to check if the MDM profile allows direct connections for %@: %@", buf, 0x16u);
        }
      }

      if (qword_100032548 != -1)
      {
        dispatch_once(&qword_100032548, &stru_10002CAF0);
      }

      v25 = qword_100032540;
      if (os_log_type_enabled(qword_100032540, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = domainCopy;
        _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Skipping domain %@ because the MDM profile does not allow directly connecting to it", buf, 0xCu);
      }

      v15 = 0;
      goto LABEL_34;
    }

    if (qword_100032548 != -1)
    {
      dispatch_once(&qword_100032548, &stru_10002CAF0);
    }

    v23 = qword_100032540;
    if (!os_log_type_enabled(qword_100032540, OS_LOG_TYPE_DEBUG))
    {
LABEL_24:
      v15 = 0;
      goto LABEL_35;
    }

    *buf = 138412290;
    v29 = domainCopy;
    v17 = "Skipping domain %@ because no MDM profile is active";
    goto LABEL_22;
  }

  v15 = 1;
LABEL_35:

  return v15;
}

+ (id)_deduplicateServicesByMode:(id)mode
{
  modeCopy = mode;
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(modeCopy, "count")}];
  v5 = objc_autoreleasePoolPush();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B45C;
  v9[3] = &unk_10002C9F0;
  v6 = v4;
  v10 = v6;
  [modeCopy enumerateKeysAndObjectsUsingBlock:v9];

  objc_autoreleasePoolPop(v5);
  v7 = [v6 copy];

  return v7;
}

+ (id)_associatedDomainsFromEntitlementForBundleRecord:(id)record applicationIdentifier:(id)identifier developerModeEnabled:(BOOL)enabled enterpriseContext:(id)context
{
  enabledCopy = enabled;
  recordCopy = record;
  identifierCopy = identifier;
  contextCopy = context;
  context = objc_autoreleasePoolPush();
  v12 = objc_autoreleasePoolPush();
  v35 = recordCopy;
  entitlements = [recordCopy entitlements];
  v14 = objc_opt_class();
  v15 = [entitlements objectForKey:@"com.apple.developer.associated-domains" ofClass:v14 valuesOfClass:objc_opt_class()];

  if (!v15 || ([_SWCServiceSpecifier serviceSpecifiersWithEntitlementValue:v15 error:0, context], v16 = objc_claimAutoreleasedReturnValue(), v15, (v32 = v16) == 0))
  {
    if (objc_opt_respondsToSelector())
    {
      isSystemPlaceholder = [v35 isSystemPlaceholder];
      v18 = &__NSArray0__struct;
      if (!isSystemPlaceholder)
      {
        v18 = 0;
      }

      v32 = v18;
    }

    else
    {
      v32 = 0;
    }
  }

  objc_autoreleasePoolPop(v12);
  if (v32)
  {
    v19 = objc_alloc_init(NSMutableDictionary);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v32;
    v20 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v20)
    {
      v21 = *v39;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v38 + 1) + 8 * i);
          sWCDomain = [v23 SWCDomain];
          if ([self _shouldIncludeServiceWithDomain:sWCDomain fromBundleRecord:v35 applicationIdentifier:identifierCopy developerModeEnabled:enabledCopy enterpriseContext:contextCopy])
          {
            serviceType = [v23 serviceType];
            v26 = [v19 objectForKeyedSubscript:serviceType];
            if (!v26)
            {
              v26 = objc_alloc_init(NSMutableSet);
              [v19 setObject:v26 forKeyedSubscript:serviceType];
            }

            [v26 addObject:sWCDomain];
          }
        }

        v20 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v20);
    }

    v27 = [self _deduplicateServicesByMode:v19];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10000BCA4;
    v36[3] = &unk_10002C9F0;
    v28 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v27, "count")}];
    v37 = v28;
    [v27 enumerateKeysAndObjectsUsingBlock:v36];
    v29 = [v28 copy];
  }

  else
  {
    v29 = 0;
  }

  objc_autoreleasePoolPop(context);

  return v29;
}

+ (id)_enterpriseEntriesWithContext:(id)context forBundleRecord:(id)record applicationIdentifier:(id)identifier
{
  contextCopy = context;
  recordCopy = record;
  identifierCopy = identifier;
  v38 = 0;
  v31 = contextCopy;
  v9 = [contextCopy serviceSpecifiersForApplicationIdentifier:identifierCopy error:&v38];
  v32 = v38;
  if (!v9)
  {
    if (qword_100032548 != -1)
    {
      dispatch_once(&qword_100032548, &stru_10002CAF0);
    }

    v26 = qword_100032540;
    if (os_log_type_enabled(qword_100032540, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v41 = recordCopy;
      v42 = 2112;
      v43 = v32;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to get enterprise-supplied service specifiers for bundle record %@: %@", buf, 0x16u);
    }

    goto LABEL_31;
  }

  if (![v9 count])
  {
    if (qword_100032548 != -1)
    {
      dispatch_once(&qword_100032548, &stru_10002CAF0);
    }

    v27 = qword_100032540;
    if (!os_log_type_enabled(qword_100032540, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_31;
    }

    *buf = 138412290;
    v41 = recordCopy;
    v28 = "No enterprise-supplied services for bundle record %@";
    goto LABEL_36;
  }

  entitlements = [recordCopy entitlements];
  v11 = [entitlements objectForKey:@"com.apple.developer.associated-domains.mdm-managed" ofClass:objc_opt_class()];
  v12 = [v11 isEqual:&__kCFBooleanTrue];

  if (!v12)
  {
    if (qword_100032548 != -1)
    {
      dispatch_once(&qword_100032548, &stru_10002CAF0);
    }

    v27 = qword_100032540;
    if (!os_log_type_enabled(qword_100032540, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_31;
    }

    *buf = 138412290;
    v41 = recordCopy;
    v28 = "Bundle record %@ does not want enterprise-supplied entries; skipping lookup";
LABEL_36:
    _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, v28, buf, 0xCu);
LABEL_31:
    v15 = 0;
    goto LABEL_32;
  }

  if (qword_100032548 != -1)
  {
    dispatch_once(&qword_100032548, &stru_10002CAF0);
  }

  v13 = qword_100032540;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v30 = [v9 count];
    *buf = 134218242;
    v41 = v30;
    v42 = 2112;
    v43 = recordCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%llu enterprise-supplied services for bundle record %@", buf, 0x16u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = v9;
  v15 = 0;
  v16 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v16)
  {
    v17 = *v35;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v34 + 1) + 8 * i);
        v20 = [SWCEntry alloc];
        serviceType = [v19 serviceType];
        sWCDomain = [v19 SWCDomain];
        v23 = [(SWCEntry *)v20 initWithApplicationIdentifier:identifierCopy service:serviceType domain:sWCDomain];

        if (v23)
        {
          v24 = v23;
          fields = [(SWCEntry *)v23 fields];
          *fields |= 0x100u;
          if (!v15)
          {
            v15 = objc_alloc_init(NSMutableOrderedSet);
          }

          [v15 addObject:v23];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v16);
  }

LABEL_32:

  return v15;
}

+ (void)_enumerateJSONFilesForBundleRecord:(id)record applicationIdentifier:(id)identifier block:(id)block
{
  recordCopy = record;
  identifierCopy = identifier;
  blockCopy = block;
  v11 = [recordCopy URL];
  if (v11)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 1;
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10000C5C4;
    v21 = &unk_10002CA58;
    v22 = blockCopy;
    v23 = &v24;
    v12 = objc_retainBlock(&v18);
    [self enumerateJSONResourceURLsForBundleURL:v11 block:{v12, v18, v19, v20, v21}];
    entitlements = [recordCopy entitlements];
    v14 = [entitlements objectForKey:@"com.apple.private.swc.additional-service-details-consumer" ofClass:objc_opt_class()];
    v15 = [v14 isEqual:&__kCFBooleanTrue];

    v16 = v15 ^ 1;
    if (!identifierCopy)
    {
      v16 = 1;
    }

    if ((v16 & 1) == 0)
    {
      v17 = [self additionalServiceDetailsDirectoryURLForApplicationIdentifier:identifierCopy createParentIfNeeded:0 error:0];
      if ([v17 checkResourceIsReachableAndReturnError:0])
      {
        *(v25 + 24) = 3;
        [self enumerateJSONResourceURLsForDirectoryAtURL:v17 block:v12];
      }
    }

    _Block_object_dispose(&v24, 8);
  }
}

+ (id)_entriesFromBuiltInJSONForBundleRecord:(id)record applicationIdentifier:(id)identifier
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10000CAD8;
  v26 = sub_10000CAE8;
  v27 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000CAF0;
  v18[3] = &unk_10002CA80;
  v20 = &v22;
  selfCopy = self;
  identifierCopy = identifier;
  v19 = identifierCopy;
  [selfCopy _enumerateJSONFilesForBundleRecord:record applicationIdentifier:identifierCopy block:v18];
  if (v23[5])
  {
    v6 = +[NSDate distantFuture];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v23[5];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v28 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v14 + 1) + 8 * i) setLastCheckedDate:{v6, v14}];
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v28 count:16];
      }

      while (v8);
    }

    v11 = v23[5];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 copy];

  _Block_object_dispose(&v22, 8);

  return v12;
}

+ (void)_addEntryToOrderedSet:(id)set forUniversalLinksFromSingleDetailsDictionary:(id)dictionary domain:(id)domain substitutionVariables:(id)variables defaults:(id)defaults
{
  setCopy = set;
  dictionaryCopy = dictionary;
  domainCopy = domain;
  variablesCopy = variables;
  defaultsCopy = defaults;
  v33 = [dictionaryCopy objectForKeyedSubscript:@"appIDs"];
  v32 = [dictionaryCopy objectForKeyedSubscript:@"appID"];
  v29 = [dictionaryCopy objectForKeyedSubscript:@"relativeOrder"];
  LOBYTE(defaults) = _SWCEnabledConfigurationGetFromDetails();
  v15 = [_SWCPatternList patternListWithDetailsDictionary:dictionaryCopy defaults:defaultsCopy];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10000D1D4;
  v38[3] = &unk_10002CAA8;
  v16 = domainCopy;
  v39 = v16;
  v30 = v15;
  v40 = v30;
  v17 = variablesCopy;
  v41 = v17;
  defaultsCopy2 = defaults;
  v18 = v29;
  v42 = v18;
  v19 = setCopy;
  v43 = v19;
  v20 = objc_retainBlock(v38);
  if (v33 && _NSIsNSArray())
  {
    if (qword_100032548 != -1)
    {
      dispatch_once(&qword_100032548, &stru_10002CAF0);
    }

    v21 = qword_100032540;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v33 count];
      *buf = 134218242;
      v47 = v22;
      v48 = 2112;
      v49 = v33;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "JSON entry had %llu appIDs: %@", buf, 0x16u);
    }

    v28 = v16;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = v33;
    v24 = [v23 countByEnumeratingWithState:&v34 objects:v45 count:16];
    if (v24)
    {
      v25 = *v35;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v23);
          }

          (v20[2])(v20, *(*(&v34 + 1) + 8 * i));
        }

        v24 = [v23 countByEnumeratingWithState:&v34 objects:v45 count:16];
      }

      while (v24);
    }

    v16 = v28;
  }

  else
  {
    if (qword_100032548 != -1)
    {
      dispatch_once(&qword_100032548, &stru_10002CAF0);
    }

    v27 = qword_100032540;
    if (os_log_type_enabled(qword_100032540, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v47 = v32;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "JSON entry had one appID: %@", buf, 0xCu);
    }

    (v20[2])(v20, v32);
  }
}

+ (void)_addEntriesToOrderedSet:(id)set forUniversalLinksFromDetailsArray:(id)array domain:(id)domain substitutionVariables:(id)variables defaults:(id)defaults maximum:(unint64_t)maximum
{
  setCopy = set;
  arrayCopy = array;
  domainCopy = domain;
  variablesCopy = variables;
  defaultsCopy = defaults;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = arrayCopy;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = 0;
    v20 = *v26;
LABEL_3:
    v21 = 0;
    while (1)
    {
      if (*v26 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v25 + 1) + 8 * v21);
      if (_NSIsNSDictionary())
      {
        [self _addEntryToOrderedSet:setCopy forUniversalLinksFromSingleDetailsDictionary:v22 domain:domainCopy substitutionVariables:variablesCopy defaults:defaultsCopy];
        if (++v19 >= maximum)
        {
          break;
        }
      }

      if (v18 == ++v21)
      {
        v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v18)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

+ (void)_addEntriesToOrderedSet:(id)set forUniversalLinksFromDetailsDictionary:(id)dictionary domain:(id)domain substitutionVariables:(id)variables defaults:(id)defaults maximum:(unint64_t)maximum
{
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000D694;
  v18[3] = &unk_10002CAD0;
  setCopy = set;
  domainCopy = domain;
  variablesCopy = variables;
  defaultsCopy = defaults;
  v23 = v26;
  selfCopy = self;
  maximumCopy = maximum;
  v14 = defaultsCopy;
  v15 = variablesCopy;
  v16 = domainCopy;
  v17 = setCopy;
  [dictionary enumerateKeysAndObjectsUsingBlock:v18];

  _Block_object_dispose(v26, 8);
}

+ (void)_addEntriesToOrderedSet:(id)set forService:(id)service fromAppsArray:(id)array domain:(id)domain
{
  setCopy = set;
  serviceCopy = service;
  arrayCopy = array;
  domainCopy = domain;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = arrayCopy;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        if (_NSIsNSString())
        {
          v17 = [[_SWCApplicationIdentifier alloc] initWithString:v16];
          v18 = [[SWCEntry alloc] initWithApplicationIdentifier:v17 service:serviceCopy domain:domainCopy];
          [setCopy addObject:v18];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }
}

@end