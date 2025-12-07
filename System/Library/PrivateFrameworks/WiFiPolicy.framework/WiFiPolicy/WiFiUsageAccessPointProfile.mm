@interface WiFiUsageAccessPointProfile
+ (BOOL)_compareBytes:(id)bytes FromStart:(unint64_t)start WithLen:(unint64_t)len With:(id)with;
+ (BOOL)_isProfileValidForStorage:(id)storage;
+ (BOOL)_isProfileValidForUse:(id)use withCachedDict:(id)dict onlyIfCurrent:(BOOL)current withError:(id *)error;
+ (id)_config;
+ (id)_loadFromUserDefaults:(id)defaults withKey:(id)key withCachedData:(id)data withError:(id *)error;
+ (id)_toMobileAssetsProfile:(id)profile;
+ (id)apNameForBSSID:(id)d;
+ (id)beaconsAndWPSInfo;
+ (id)errorStringForTelemetry:(id)telemetry;
+ (id)longProfileForBSSID:(id)d withError:(id *)error;
+ (id)profileForBSSID:(id)d onlyIfCurrent:(BOOL)current withError:(id *)error;
+ (id)profileFromBeaconData:(id)data andParsedIE:(id)e;
+ (id)shortProfileForBSSID:(id)d withError:(id *)error;
+ (void)_applyMask:(id)mask FromStart:(unint64_t)start WithLen:(unint64_t)len WithMask:(id)withMask AppendTo:(id)to;
+ (void)_cleanUpStaleProfiles;
+ (void)_defaults;
+ (void)_endPrevAssoc;
+ (void)_extractFieldsFor:(id)for From:(id)from Into:(id)into;
+ (void)_saveToUserDefaults:(id)defaults withKey:(id)key andValue:(id)value;
+ (void)_submitProfileFor:(id)for withCachedDict:(id)dict AndEraseWithLog:(id)log;
+ (void)initialize;
+ (void)submitToCAForBSSID:(id)d;
+ (void)updateConfig;
+ (void)updateWithAssocTime:(double)time forBssid:(id)bssid;
+ (void)updateWithWPS:(id)s;
@end

@implementation WiFiUsageAccessPointProfile

+ (void)initialize
{
  v2 = _configError;
  _configError = @"Waiting on MobileAssets callback";
}

+ (id)_config
{
  v2 = MEMORY[0x277CCACA8];
  v3 = _apProfileMinAssoc;
  v4 = _apProfileMinOccurrencies;
  v5 = _apProfileMinSecsBetweenOccurrencies;
  v6 = _maxProfiles;
  v7 = _profileCacheTimeout;
  v8 = _apProfileVersionString;
  v9 = _shortProfileBytesLen;
  v10 = *&_profileCacheTimeout / 86400.0;
  v11 = [_apProfileFields count];
  if (_apProfileListVendorIEs)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = _apProfileListVendorIEsLen;
  v14 = [_apProfileVendorFields count];
  return [v2 stringWithFormat:@"apProfileMinAssoc(sec):%f apProfileMinOccurrencies:%lu apProfileMinIntervalBetweenOccurrencies(sec):%f maxProfiles:%lu maxAgeDays:%f (%f sec)\napProfileVersion:%@ shortApProfileBytesLen:%lu { fields:%u ; listVendorIEs:%@ ; listVendorIELen:%u ; vendor fields:%u ; vendor exclude:%u }", v3, v4, v5, v6, *&v10, v7, v8, v9, v11, v12, v13, v14, objc_msgSend(_apProfileVendorExcludeFields, "count")];
}

+ (void)_defaults
{
  _apProfileVersion = 0;
  v2 = _apProfileVersionString;
  _apProfileVersionString = @"profile_AP__UNDEFINED";

  _apProfileMinAssoc = 0;
  _apProfileMinOccurrencies = 1;
  _apProfileMinSecsBetweenOccurrencies = 0;
  _maxProfiles = 0;
  _profileCacheTimeout = 0x4122750000000000;
  _shortProfileBytesLen = 20;
  _apProfileListVendorIEs = 0;
  _apProfileListVendorIEsLen = 0x7FFFFFFFFFFFFFFFLL;
  _apProfileIncludeIELen = 1;
  v3 = _apProfileFields;
  _apProfileFields = 0;

  v4 = _apProfileVendorFields;
  _apProfileVendorFields = 0;

  v5 = _apProfileVendorExcludeFields;
  _apProfileVendorExcludeFields = 0;
}

+ (void)updateConfig
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [WiFiUsageAccessPointProfileConfiguration getConfigForKey:@"apProfileVersion"];
  p_info = TBTileMO.info;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@. Expected String, found: %@", @"apProfileVersion", v3];
      v26 = LABEL_41:;
LABEL_42:
      v13 = 0;
LABEL_43:
      v27 = _configError;
      _configError = v26;

      [self _defaults];
      goto LABEL_44;
    }
  }

  else
  {
    [self _defaults];
  }

  v5 = _apProfileVersionString;
  _apProfileVersionString = v3;
  v6 = v3;

  _apProfileVersion = 1;
  v7 = @"apProfileMinAssocSec";
  v3 = [WiFiUsageAccessPointProfileConfiguration getConfigForKey:@"apProfileMinAssocSec"];

  if (!v3)
  {
    goto LABEL_40;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_40;
  }

  [v3 doubleValue];
  _apProfileMinAssoc = v8;
  v9 = @"apProfileMinOccurrencies";
  v10 = [WiFiUsageAccessPointProfileConfiguration getConfigForKey:@"apProfileMinOccurrencies"];

  if (!v10)
  {
    goto LABEL_47;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_47;
  }

  _apProfileMinOccurrencies = [v10 unsignedIntegerValue];
  v7 = @"apProfileMinIntervalBetweenOccurrencies";
  v3 = [WiFiUsageAccessPointProfileConfiguration getConfigForKey:@"apProfileMinIntervalBetweenOccurrencies"];

  if (!v3)
  {
    goto LABEL_40;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_40;
  }

  [v3 doubleValue];
  _apProfileMinSecsBetweenOccurrencies = v11;
  v9 = @"useShortAPProfile";
  v10 = [WiFiUsageAccessPointProfileConfiguration getConfigForKey:@"useShortAPProfile"];

  if (!v10)
  {
    goto LABEL_47;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_47;
  }

  _useShortProfile = [v10 BOOLValue];
  v7 = @"shortApProfileBytesLen";
  v3 = [WiFiUsageAccessPointProfileConfiguration getConfigForKey:@"shortApProfileBytesLen"];

  if (!v3)
  {
    goto LABEL_40;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_40;
  }

  _shortProfileBytesLen = [v3 unsignedIntegerValue];
  v9 = @"maxProfilesCount";
  v10 = [WiFiUsageAccessPointProfileConfiguration getConfigForKey:@"maxProfilesCount"];

  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_47:
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@. Expected Number, found: %@", v9, v10];
    v13 = 0;
    v3 = v10;
    goto LABEL_43;
  }

  _maxProfiles = [v10 unsignedIntegerValue];
  v7 = @"maxAgeDays";
  v3 = [WiFiUsageAccessPointProfileConfiguration getConfigForKey:@"maxAgeDays"];

  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_40:
    [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@. Expected Number, found: %@", v7, v3];
    goto LABEL_41;
  }

  [v3 doubleValue];
  *&_profileCacheTimeout = v12 * 86400.0;
  v13 = [WiFiUsageAccessPointProfileConfiguration getConfigForKey:@"apProfileDefinition"];

  if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@. Expected Dictionary, found: %@", @"apProfileDefinition", v13];
    v3 = v13;
    goto LABEL_42;
  }

  v14 = [v13 objectForKeyedSubscript:@"includeIELen"];
  if (!v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@.includeIELen. Expected Number, found: %@", @"apProfileDefinition", 0];
      v3 = 0;
      goto LABEL_43;
    }
  }

  _apProfileIncludeIELen = [v14 BOOLValue];
  v15 = [v13 objectForKeyedSubscript:@"fields"];

  if (!v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@.fields. Expected Array, found: %@", @"apProfileDefinition", 0];
      v3 = 0;
      goto LABEL_55;
    }
  }

  v16 = _apProfileFields;
  _apProfileFields = v15;

  v3 = [v13 objectForKeyedSubscript:@"listVendorIEs"];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@.listVendorIEs. Expected Number, found: %@", @"apProfileDefinition", v3];
    v26 = LABEL_50:;
LABEL_55:
    p_info = (TBTileMO + 32);
    goto LABEL_43;
  }

  _apProfileListVendorIEs = [v3 BOOLValue];
  v17 = [v13 objectForKeyedSubscript:@"listVendorIEsLen"];

  if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@.listVendorIEsLen. Expected Number, found: %@", @"apProfileDefinition", v17];
    v26 = LABEL_54:;
    v3 = v17;
    goto LABEL_55;
  }

  _apProfileListVendorIEsLen = [v17 integerValue];
  v3 = [v13 objectForKeyedSubscript:@"vendor"];

  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@.vendor. Expected Dictionary, found: %@", @"apProfileDefinition", v3];
    goto LABEL_50;
  }

  v18 = [v13 objectForKeyedSubscript:@"vendor"];
  v17 = [v18 objectForKeyedSubscript:@"fields"];

  if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@.vendor.fields. Expected Array, found: %@", @"apProfileDefinition", v17];
    goto LABEL_54;
  }

  v19 = _apProfileVendorFields;
  _apProfileVendorFields = v17;

  v3 = [v13 objectForKeyedSubscript:@"vendorExclude"];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@.vendorExclude. Expected Dictionary, found: %@", @"apProfileDefinition", v3];
    goto LABEL_50;
  }

  v20 = [v13 objectForKeyedSubscript:@"vendorExclude"];
  v21 = [v20 objectForKeyedSubscript:@"fields"];

  v3 = v21;
  if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"impossible to parse %@.vendorExclude.fields. Expected Array, found: %@", @"apProfileDefinition", v21];
    goto LABEL_50;
  }

  objc_storeStrong(&_apProfileVendorExcludeFields, v21);
  v22 = MEMORY[0x277CCACA8];
  _config = [self _config];
  v24 = [v22 stringWithFormat:@"%s: configParseError:%@ (%@)]\n%@", "+[WiFiUsageAccessPointProfile updateConfig]", @"NO", &stru_28487EF20, _config];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v24, "UTF8String")];
    *buf = 136446210;
    uTF8String = [v25 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  p_info = (TBTileMO + 32);
LABEL_44:
  if (*(p_info + 1240) == 1)
  {
    [self _cleanUpStaleProfiles];
  }
}

+ (BOOL)_isProfileValidForStorage:(id)storage
{
  v15 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  v4 = [storageCopy objectForKey:@"apProfileVersion"];
  v5 = [storageCopy objectForKey:@"apProfileCacheTimestampCreated"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [_apProfileVersionString isEqualToString:v4];
LABEL_5:
    v8 = 0;
    if (v6 && v5)
    {
      [v5 timeIntervalSinceNow];
      v8 = *&_profileCacheTimeout >= -v9;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_apProfileVersion];
    v6 = [v7 isEqual:v4];

    goto LABEL_5;
  }

  v8 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "+[WiFiUsageAccessPointProfile _isProfileValidForStorage:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: unknown version format: %@", &v11, 0x16u);
    v8 = 0;
  }

LABEL_10:

  return v8;
}

+ (void)_cleanUpStaleProfiles
{
  v62 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  _getDefaults = [self _getDefaults];
  dictionaryRepresentation = [_getDefaults dictionaryRepresentation];

  array = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  allKeys = [dictionaryRepresentation allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v49;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v48 + 1) + 8 * i);
        v11 = [WiFiUsagePrivacyFilter reformatMACAddress:v10];

        if (v11)
        {
          v12 = [dictionaryRepresentation objectForKey:v10];
          if ([self _isProfileValidForStorage:v12])
          {
            v13 = [v12 objectForKey:@"apProfileCacheTimestamp"];
            [dictionary setObject:v10 forKeyedSubscript:v13];
          }

          else
          {
            [array addObject:v10];
          }
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v7);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = [array count];
    v15 = [dictionary count];
    *buf = 136315906;
    v54 = "+[WiFiUsageAccessPointProfile _cleanUpStaleProfiles]";
    v55 = 2048;
    v56 = v14;
    v57 = 2048;
    v58 = v15;
    v59 = 2048;
    v60 = _maxProfiles;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - staleEntries:%lu validEntries:%lu _maxProfiles:%lu", buf, 0x2Au);
  }

  v16 = [dictionary count];
  if (v16 > _maxProfiles)
  {
    allKeys2 = [dictionary allKeys];
    v18 = [allKeys2 sortedArrayUsingSelector:sel_compare_];

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: sortedEntries:%@", "+[WiFiUsageAccessPointProfile _cleanUpStaleProfiles]", v18];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v19, "UTF8String")];
      uTF8String = [v20 UTF8String];
      *buf = 136446210;
      v54 = uTF8String;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    v22 = [dictionary count];
    if (v22 != _maxProfiles)
    {
      v23 = 0;
      v24 = MEMORY[0x277D86220];
      do
      {
        v25 = [v18 objectAtIndexedSubscript:v23];
        v26 = [dictionary objectForKeyedSubscript:v25];
        [array addObject:v26];

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v18 objectAtIndexedSubscript:v23];
          v28 = [dictionary objectForKeyedSubscript:v27];
          *buf = 136315394;
          v54 = "+[WiFiUsageAccessPointProfile _cleanUpStaleProfiles]";
          v55 = 2112;
          v56 = v28;
          _os_log_impl(&dword_2332D7000, v24, OS_LOG_TYPE_DEFAULT, "%s - marking %@ as stale", buf, 0x16u);
        }

        ++v23;
        v29 = [dictionary count];
      }

      while (v29 - _maxProfiles > v23);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v30 = [array count];
    v31 = [dictionary count];
    *buf = 136315906;
    v54 = "+[WiFiUsageAccessPointProfile _cleanUpStaleProfiles]";
    v55 = 2048;
    v56 = v30;
    v57 = 2048;
    v58 = v31;
    v59 = 2048;
    v60 = _maxProfiles;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - staleEntries:%lu validEntries:%lu _maxProfiles:%lu", buf, 0x2Au);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v32 = array;
  v33 = [v32 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v45;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v45 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v44 + 1) + 8 * j);
        v38 = [dictionaryRepresentation objectForKeyedSubscript:v37];
        v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"stale (from %s)", "+[WiFiUsageAccessPointProfile _cleanUpStaleProfiles]"];
        [self _submitProfileFor:v37 withCachedDict:v38 AndEraseWithLog:v39];
      }

      v34 = [v32 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v34);
  }

  _getDefaults2 = [self _getDefaults];
  [_getDefaults2 synchronize];

  objc_autoreleasePoolPop(context);
}

+ (void)_endPrevAssoc
{
  v45 = *MEMORY[0x277D85DE8];
  _getDefaults = [self _getDefaults];
  dictionaryRepresentation = [_getDefaults dictionaryRepresentation];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = dictionaryRepresentation;
  obj = [dictionaryRepresentation allKeys];
  v4 = [obj countByEnumeratingWithState:&v30 objects:v44 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v31;
    *&v5 = 136316162;
    v26 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = [WiFiUsagePrivacyFilter reformatMACAddress:v10, v26];

        if (v11)
        {
          v12 = [v29 objectForKey:v10];
          v13 = [v12 objectForKeyedSubscript:@"apProfileMaxAssocTime"];
          unsignedIntegerValue = [v13 unsignedIntegerValue];

          v15 = [v12 objectForKeyedSubscript:@"apProfileCacheTimestamp"];
          v16 = [v12 objectForKeyedSubscript:@"apProfileForLatestAssoc"];
          bOOLValue = [v16 BOOLValue];

          [v15 timeIntervalSinceNow];
          if (bOOLValue)
          {
            v19 = -v18;
            if (unsignedIntegerValue >= v19)
            {
              selfCopy2 = self;
            }

            else
            {
              v20 = *&_apProfileMinAssoc > unsignedIntegerValue;
              if (*&_apProfileMinAssoc > v19)
              {
                v20 = 0;
              }

              v7 |= v20;
              v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v19];
              selfCopy2 = self;
              [self _saveToUserDefaults:v10 withKey:@"apProfileMaxAssocTime" andValue:v21];
            }

            [selfCopy2 _saveToUserDefaults:v10 withKey:@"apProfileForLatestAssoc" andValue:MEMORY[0x277CBEC28]];
            if (v7)
            {
              if ([selfCopy2 _isProfileValidForUse:v10 withCachedDict:0 withError:0])
              {
                v23 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v24 = [selfCopy2 profileForBSSID:v10 withError:0];
                  *buf = v26;
                  v35 = "+[WiFiUsageAccessPointProfile _endPrevAssoc]";
                  v36 = 2160;
                  v37 = 1752392040;
                  v38 = 2112;
                  v39 = v10;
                  v40 = 2160;
                  v41 = 1752392040;
                  v42 = 2112;
                  v43 = v24;
                  _os_log_impl(&dword_2332D7000, v23, OS_LOG_TYPE_DEFAULT, "%s: profile for %{mask.hash}@ is valid: %{mask.hash}@", buf, 0x34u);
                }
              }

              v7 = 1;
            }

            else
            {
              v7 = 0;
            }
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v44 count:16];
    }

    while (v6);
  }

  _getDefaults2 = [self _getDefaults];
  [_getDefaults2 synchronize];
}

+ (BOOL)_compareBytes:(id)bytes FromStart:(unint64_t)start WithLen:(unint64_t)len With:(id)with
{
  v25 = *MEMORY[0x277D85DE8];
  bytesCopy = bytes;
  withCopy = with;
  v11 = [bytesCopy length];
  if (len > 4 || v11 < len + start)
  {
    v14 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 136316162;
      *&v16[4] = "+[WiFiUsageAccessPointProfile _compareBytes:FromStart:WithLen:With:]";
      v17 = 2048;
      v18 = [bytesCopy length];
      v19 = 2048;
      startCopy = start;
      v21 = 2048;
      lenCopy = len;
      v23 = 2048;
      v24 = 4;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - fieldData len is %lu but start=%lu and len=%lu (<= %lu) - returning FALSE", v16, 0x34u);
      v14 = 0;
    }
  }

  else
  {
    bytes = [bytesCopy bytes];
    *v16 = [withCopy unsignedIntValue];
    if (len)
    {
      v13 = (bytes + start);
      v14 = 1;
      do
      {
        v14 = v14 && v16[--len] == *v13++;
      }

      while (len);
    }

    else
    {
      v14 = 1;
    }
  }

  return v14;
}

+ (void)_applyMask:(id)mask FromStart:(unint64_t)start WithLen:(unint64_t)len WithMask:(id)withMask AppendTo:(id)to
{
  maskCopy = mask;
  withMaskCopy = withMask;
  toCopy = to;
  if ([maskCopy length] >= len + start)
  {
    bytes = [maskCopy bytes];
    unsignedIntValue = [withMaskCopy unsignedIntValue];
    if (len)
    {
      v14 = (bytes + start);
      v15 = &unsignedIntValue;
      do
      {
        if (withMaskCopy)
        {
          v16 = (*v14 & *v15);
        }

        else
        {
          v16 = *v14;
        }

        [toCopy appendFormat:@"%02X", v16];
        ++v14;
        v15 = (v15 + 1);
        --len;
      }

      while (len);
    }
  }
}

+ (void)_extractFieldsFor:(id)for From:(id)from Into:(id)into
{
  v58 = *MEMORY[0x277D85DE8];
  forCopy = for;
  fromCopy = from;
  intoCopy = into;
  v10 = [forCopy objectForKeyedSubscript:@"subfields"];
  if (v10)
  {
    v11 = [forCopy objectForKeyedSubscript:@"subfields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [forCopy objectForKeyedSubscript:@"subfields"];
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

  v13 = [forCopy objectForKeyedSubscript:@"len"];
  if (v13)
  {
    v14 = [forCopy objectForKeyedSubscript:@"len"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [forCopy objectForKeyedSubscript:@"len"];
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

  v16 = [forCopy objectForKeyedSubscript:@"mask"];
  if (v16)
  {
    v17 = [forCopy objectForKeyedSubscript:@"mask"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [forCopy objectForKeyedSubscript:@"mask"];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v12)
  {
    v37 = v18;
    v38 = v15;
    v41 = intoCopy;
    v39 = v12;
    v40 = forCopy;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v12;
    v19 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v19)
    {
      v20 = v19;
      v44 = *v46;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v46 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v45 + 1) + 8 * i);
          v23 = [v22 objectForKeyedSubscript:{@"start", v37, v38, v39, v40}];
          if (v23)
          {
            v24 = [v22 objectForKeyedSubscript:@"start"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [v22 objectForKeyedSubscript:@"start"];
            }

            else
            {
              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
          }

          v26 = fromCopy;

          v27 = [v22 objectForKeyedSubscript:@"len"];
          if (v27)
          {
            v28 = [v22 objectForKeyedSubscript:@"len"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = [v22 objectForKeyedSubscript:@"len"];
            }

            else
            {
              v29 = 0;
            }
          }

          else
          {
            v29 = 0;
          }

          v30 = [v22 objectForKeyedSubscript:@"mask"];
          if (v30)
          {
            v31 = [v22 objectForKeyedSubscript:@"mask"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = [v22 objectForKeyedSubscript:@"mask"];
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = 0;
          }

          fromCopy = v26;
          if ([v26 length])
          {
            if (v29 && v25)
            {
              [self _applyMask:v26 FromStart:objc_msgSend(v25 WithLen:"integerValue") WithMask:objc_msgSend(v29 AppendTo:{"unsignedIntValue"), v32, v41}];
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              unsignedIntValue = [v25 unsignedIntValue];
              unsignedIntValue2 = [v29 unsignedIntValue];
              *buf = 136315906;
              v50 = "+[WiFiUsageAccessPointProfile _extractFieldsFor:From:Into:]";
              v51 = 1024;
              v52 = unsignedIntValue;
              v53 = 1024;
              v54 = unsignedIntValue2;
              v55 = 2112;
              v56 = v22;
              _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Subfield has wrong format (start:%u, len:%u) - ignoring %@", buf, 0x22u);
            }
          }
        }

        v20 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v20);
    }

    v12 = v39;
    forCopy = v40;
    intoCopy = v41;
    v18 = v37;
    v15 = v38;
  }

  else
  {
    v35 = [fromCopy length];
    if (v35 >= [v15 unsignedIntValue])
    {
      unsignedIntValue3 = [v15 unsignedIntValue];
    }

    else
    {
      unsignedIntValue3 = [fromCopy length];
    }

    [self _applyMask:fromCopy FromStart:0 WithLen:unsignedIntValue3 WithMask:v18 AppendTo:intoCopy];
  }
}

+ (id)_toMobileAssetsProfile:(id)profile
{
  v131 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v89 = objc_opt_new();
  v84 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v84 setNumberStyle:1];
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  obj = _apProfileFields;
  v3 = [obj countByEnumeratingWithState:&v114 objects:v130 count:16];
  if (v3)
  {
    v4 = v3;
    v96 = *v115;
    do
    {
      v5 = 0;
      v91 = v4;
      do
      {
        if (*v115 != v96)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v114 + 1) + 8 * v5);
        v7 = [v6 objectForKeyedSubscript:@"name"];
        if (v7)
        {
          v8 = [v6 objectForKeyedSubscript:@"name"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v6 objectForKeyedSubscript:@"name"];
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }

        v10 = [v6 objectForKeyedSubscript:@"len"];
        if (v10)
        {
          v11 = [v6 objectForKeyedSubscript:@"len"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v6 objectForKeyedSubscript:@"len"];
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

        v13 = [v6 objectForKeyedSubscript:@"mask"];
        if (v13)
        {
          v14 = [v6 objectForKeyedSubscript:@"mask"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v6 objectForKeyedSubscript:@"mask"];
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

        if (v9)
        {
          if ([v9 hasPrefix:@"EL "])
          {
            v16 = [v9 substringFromIndex:{objc_msgSend(@"EL ", "length")}];
            v17 = [v84 numberFromString:v16];
            taggedIEList = [profileCopy taggedIEList];
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"BeaconInformationElement_", v16];
            v20 = [taggedIEList objectForKeyedSubscript:v19];

            [v89 appendFormat:@"%02X", objc_msgSend(v17, "unsignedIntValue")];
            if (_apProfileIncludeIELen == 1)
            {
              [v89 appendFormat:@"%02X", objc_msgSend(v20, "length")];
              v4 = v91;
            }

            else
            {
              v4 = v91;
              if (v20)
              {
                v26 = @"1";
              }

              else
              {
                v26 = @"0";
              }

              [v89 appendString:v26];
            }

            [self _extractFieldsFor:v6 From:v20 Into:v89];
          }

          else
          {
            if (![v9 hasPrefix:@"exEL "])
            {
              v27 = [profileCopy valueForKey:v9];
              unsignedLongValue = [v27 unsignedLongValue];

              v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%%0%ulX", 2 * objc_msgSend(v12, "unsignedIntValue")];
              if (v12)
              {
                if ([v12 longValue] < 1 || objc_msgSend(v12, "longValue") < 9)
                {
                  if (v15)
                  {
                    unsignedLongValue &= [v15 unsignedLongValue];
                  }

                  if ([v12 longValue] == -1)
                  {
                    [v89 appendFormat:@"%lu", unsignedLongValue];
                  }

                  else
                  {
                    [v89 appendFormat:v29, unsignedLongValue];
                  }
                }

                else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  longValue = [v12 longValue];
                  *buf = 136315906;
                  v123 = "+[WiFiUsageAccessPointProfile _toMobileAssetsProfile:]";
                  v124 = 2112;
                  v125 = v6;
                  v126 = 2048;
                  v127 = longValue;
                  v128 = 2048;
                  v129 = 8;
                  v31 = MEMORY[0x277D86220];
                  v32 = "%s - Field %@ len (%ld) is too large for non TLV values (max=%lu)";
                  v33 = 42;
                  goto LABEL_51;
                }
              }

              else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v123 = "+[WiFiUsageAccessPointProfile _toMobileAssetsProfile:]";
                v124 = 2112;
                v125 = v6;
                v31 = MEMORY[0x277D86220];
                v32 = "%s - Field %@ has wrong format (missing len) - ignoring";
                v33 = 22;
LABEL_51:
                _os_log_impl(&dword_2332D7000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, v33);
              }

              goto LABEL_57;
            }

            v21 = [v9 substringFromIndex:{objc_msgSend(@"exEL ", "length")}];
            v22 = [v84 numberFromString:v21];
            extendedIEList = [profileCopy extendedIEList];
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@255_%@", @"BeaconInformationElement_", v21];
            v25 = [extendedIEList objectForKeyedSubscript:v24];

            [v89 appendString:@"FF"];
            if (_apProfileIncludeIELen == 1)
            {
              [v89 appendFormat:@"%02X", objc_msgSend(v25, "length")];
              v4 = v91;
            }

            else
            {
              v4 = v91;
              if (v25)
              {
                v34 = @"1";
              }

              else
              {
                v34 = @"0";
              }

              [v89 appendString:v34];
            }

            [v89 appendFormat:@"%02X", objc_msgSend(v22, "unsignedIntValue")];
            [self _extractFieldsFor:v6 From:v25 Into:v89];
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v123 = "+[WiFiUsageAccessPointProfile _toMobileAssetsProfile:]";
          v124 = 2112;
          v125 = v6;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Field has wrong format (missing name) - ignoring : %@", buf, 0x16u);
        }

LABEL_57:

        ++v5;
      }

      while (v4 != v5);
      v4 = [obj countByEnumeratingWithState:&v114 objects:v130 count:16];
    }

    while (v4);
  }

  v86 = objc_opt_new();
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  vendorIEList = [profileCopy vendorIEList];
  allKeys = [vendorIEList allKeys];
  v37 = [allKeys sortedArrayUsingSelector:?];

  v85 = v37;
  v88 = [v37 countByEnumeratingWithState:&v110 objects:v121 count:16];
  v38 = v89;
  if (!v88)
  {
    goto LABEL_127;
  }

  v87 = *v111;
  do
  {
    for (i = 0; i != v88; i = v75 + 1)
    {
      if (*v111 != v87)
      {
        objc_enumerationMutation(v85);
      }

      v92 = i;
      v40 = *(*(&v110 + 1) + 8 * i);
      vendorIEList2 = [profileCopy vendorIEList];
      obja = [vendorIEList2 objectForKeyedSubscript:v40];

      if (_apProfileListVendorIEs == 1)
      {
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v97 = _apProfileVendorExcludeFields;
        v42 = [v97 countByEnumeratingWithState:&v106 objects:v120 count:16];
        if (!v42)
        {
          goto LABEL_92;
        }

        v43 = v42;
        v44 = *v107;
        while (1)
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v107 != v44)
            {
              objc_enumerationMutation(v97);
            }

            v46 = *(*(&v106 + 1) + 8 * j);
            v47 = [v46 objectForKeyedSubscript:@"match_len"];
            if (v47)
            {
              v48 = [v46 objectForKeyedSubscript:@"match_len"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v49 = [v46 objectForKeyedSubscript:@"match_len"];
              }

              else
              {
                v49 = 0;
              }
            }

            else
            {
              v49 = 0;
            }

            v50 = [v46 objectForKeyedSubscript:@"match_value"];
            if (!v50)
            {
              v53 = 0;
LABEL_87:
              v54 = MEMORY[0x277D86220];
LABEL_88:
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v123 = "+[WiFiUsageAccessPointProfile _toMobileAssetsProfile:]";
                v124 = 2112;
                v125 = v49;
                v126 = 2112;
                v127 = v53;
                v128 = 2112;
                v129 = v46;
                _os_log_impl(&dword_2332D7000, v54, OS_LOG_TYPE_DEFAULT, "%s - Field has wrong format (missing match_len (%@) and|or match_value (%@) and|or matchLen is larger than 8) - ignoring : %@", buf, 0x2Au);
              }

              goto LABEL_90;
            }

            v51 = v50;
            v52 = [v46 objectForKeyedSubscript:@"match_value"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v53 = [v46 objectForKeyedSubscript:@"match_value"];
            }

            else
            {
              v53 = 0;
            }

            if (!v49)
            {
              goto LABEL_87;
            }

            v54 = MEMORY[0x277D86220];
            if (!v53 || [v49 unsignedIntValue] >= 9)
            {
              goto LABEL_88;
            }

            v55 = [obja length];
            if (v55 >= [v49 unsignedIntValue] && objc_msgSend(self, "_compareBytes:FromStart:WithLen:With:", obja, 0, objc_msgSend(v49, "unsignedIntValue"), v53))
            {

              v38 = v89;
              v75 = v92;
              v76 = obja;
              goto LABEL_124;
            }

LABEL_90:
          }

          v43 = [v97 countByEnumeratingWithState:&v106 objects:v120 count:16];
          if (!v43)
          {
LABEL_92:

            break;
          }
        }
      }

      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v97 = _apProfileVendorFields;
      v56 = [v97 countByEnumeratingWithState:&v102 objects:v119 count:16];
      if (!v56)
      {
        goto LABEL_120;
      }

      v57 = v56;
      v58 = *v103;
      do
      {
        for (k = 0; k != v57; ++k)
        {
          if (*v103 != v58)
          {
            objc_enumerationMutation(v97);
          }

          v60 = *(*(&v102 + 1) + 8 * k);
          v61 = [v60 objectForKeyedSubscript:@"match_len"];
          if (v61)
          {
            v62 = [v60 objectForKeyedSubscript:@"match_len"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v63 = [v60 objectForKeyedSubscript:@"match_len"];
            }

            else
            {
              v63 = 0;
            }
          }

          else
          {
            v63 = 0;
          }

          v64 = [v60 objectForKeyedSubscript:@"match_value"];
          if (!v64)
          {
            v67 = 0;
LABEL_115:
            v68 = MEMORY[0x277D86220];
LABEL_116:
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v123 = "+[WiFiUsageAccessPointProfile _toMobileAssetsProfile:]";
              v124 = 2112;
              v125 = v63;
              v126 = 2112;
              v127 = v67;
              v128 = 2112;
              v129 = v60;
              _os_log_impl(&dword_2332D7000, v68, OS_LOG_TYPE_DEFAULT, "%s - Field has wrong format (missing match_len (%@) and|or match_value (%@) and|or matchLen is larger than 8) - ignoring : %@", buf, 0x2Au);
            }

            goto LABEL_118;
          }

          v65 = v64;
          v66 = [v60 objectForKeyedSubscript:@"match_value"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v67 = [v60 objectForKeyedSubscript:@"match_value"];
          }

          else
          {
            v67 = 0;
          }

          if (!v63)
          {
            goto LABEL_115;
          }

          v68 = MEMORY[0x277D86220];
          if (!v67 || [v63 unsignedIntValue] >= 9)
          {
            goto LABEL_116;
          }

          v69 = [obja length];
          if (v69 >= [v63 unsignedIntValue] && objc_msgSend(self, "_compareBytes:FromStart:WithLen:With:", obja, 0, objc_msgSend(v63, "unsignedIntValue"), v67))
          {
            v73 = objc_opt_new();
            v74 = v60;
            v76 = obja;
            [self _extractFieldsFor:v74 From:obja Into:v73];
            [v86 addObject:v73];

            v38 = v89;
            v75 = v92;
            goto LABEL_124;
          }

LABEL_118:
        }

        v57 = [v97 countByEnumeratingWithState:&v102 objects:v119 count:16];
      }

      while (v57);
LABEL_120:

      v38 = v89;
      v75 = v92;
      v76 = obja;
      if (_apProfileListVendorIEs == 1)
      {
        bytes = [obja bytes];
        v71 = [obja length];
        v72 = _apProfileListVendorIEsLen;
        if (v71 < _apProfileListVendorIEsLen)
        {
          v72 = [obja length];
        }

        v97 = [WiFiUsagePrivacyFilter toHEXString:bytes length:v72];
        [v86 addObject:?];
LABEL_124:
      }
    }

    v88 = [v85 countByEnumeratingWithState:&v110 objects:v121 count:16];
  }

  while (v88);
LABEL_127:

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  allObjects = [v86 allObjects];
  v78 = [allObjects sortedArrayUsingSelector:sel_compare_];

  v79 = [v78 countByEnumeratingWithState:&v98 objects:v118 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v99;
    do
    {
      for (m = 0; m != v80; ++m)
      {
        if (*v99 != v81)
        {
          objc_enumerationMutation(v78);
        }

        [v38 appendFormat:@"DD%@", *(*(&v98 + 1) + 8 * m)];
      }

      v80 = [v78 countByEnumeratingWithState:&v98 objects:v118 count:16];
    }

    while (v80);
  }

  return v38;
}

+ (id)_loadFromUserDefaults:(id)defaults withKey:(id)key withCachedData:(id)data withError:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  defaultsCopy = defaults;
  keyCopy = key;
  dataCopy = data;
  v13 = dataCopy;
  if (!defaultsCopy)
  {
    errorCopy = 0;
    goto LABEL_19;
  }

  if (dataCopy)
  {
    v14 = dataCopy;
    if (!keyCopy)
    {
LABEL_11:
      if (v14)
      {
        error = [v14 mutableCopy];
        v17 = [v14 objectForKeyedSubscript:@"apProfileBeaconInfo"];
        [error addEntriesFromDictionary:v17];

        v18 = [v14 objectForKeyedSubscript:@"apProfileWPSInfo"];
        [error addEntriesFromDictionary:v18];

        [error setValue:0 forKey:@"apProfileBeaconInfo"];
        [error setValue:0 forKey:@"apProfileWPSInfo"];
        v19 = [error objectForKeyedSubscript:@"apProfileCacheTimestampCreated"];
        [v19 timeIntervalSinceNow];
        v21 = -v20;

        v22 = [self _getBinTimeInterval:1 As:v21];
        [error setValue:v22 forKey:@"ageAtRemoval"];

        [error setValue:0 forKey:@"apProfileCacheTimestampCreated"];
        v23 = [error objectForKeyedSubscript:@"apProfileCacheTimestamp"];
        [v23 timeIntervalSinceNow];
        v25 = -v24;

        v26 = [self _getBinTimeInterval:1 As:v25];
        [error setValue:v26 forKey:@"timeSinceLastRefresh"];

        [error setValue:0 forKey:@"apProfileCacheTimestamp"];
        [error setValue:0 forKey:@"submittedToCA"];
        v27 = [v14 objectForKey:@"apProfileBeaconInfoParsingSuccessful"];
        bOOLValue = [v27 BOOLValue];

        if (bOOLValue)
        {
          [error setValue:0 forKey:@"apProfileBeaconRaw"];
        }

        goto LABEL_18;
      }

      if (error)
      {
        v29 = MEMORY[0x277CCA9B8];
        v33 = *MEMORY[0x277CCA470];
        v34[0] = @"Unknown";
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
        *error = [v29 errorWithDomain:@"com.apple.wifi.policy.approfile" code:3 userInfo:v30];

LABEL_17:
        error = 0;
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
    _getDefaults = [self _getDefaults];
    v14 = [_getDefaults dictionaryForKey:defaultsCopy];

    if (!keyCopy)
    {
      goto LABEL_11;
    }
  }

  if (!v14)
  {
    goto LABEL_11;
  }

  if ([keyCopy isEqualToString:@"apProfileID"] && !objc_msgSend(self, "_isProfileValidForStorage:", v14))
  {
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"stale (from %s)", "+[WiFiUsageAccessPointProfile _loadFromUserDefaults:withKey:withCachedData:withError:]"];
    [self _submitProfileFor:defaultsCopy withCachedDict:v14 AndEraseWithLog:v31];

    goto LABEL_17;
  }

  error = [v14 objectForKey:keyCopy];
LABEL_18:
  errorCopy = error;

LABEL_19:

  return errorCopy;
}

+ (void)_saveToUserDefaults:(id)defaults withKey:(id)key andValue:(id)value
{
  defaultsCopy = defaults;
  v8 = MEMORY[0x277CBEB38];
  valueCopy = value;
  keyCopy = key;
  dictionary = [v8 dictionary];
  _getDefaults = [self _getDefaults];
  v13 = [WiFiUsagePrivacyFilter reformatMACAddress:defaultsCopy];
  v14 = [_getDefaults dictionaryForKey:v13];

  if (v14)
  {
    [dictionary addEntriesFromDictionary:v14];
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    [dictionary setValue:date forKey:@"apProfileCacheTimestampCreated"];

    [dictionary setValue:_apProfileVersionString forKey:@"apProfileVersion"];
  }

  [dictionary setValue:valueCopy forKey:keyCopy];

  date2 = [MEMORY[0x277CBEAA8] date];
  [dictionary setValue:date2 forKey:@"apProfileCacheTimestamp"];

  _getDefaults2 = [self _getDefaults];
  v18 = [WiFiUsagePrivacyFilter reformatMACAddress:defaultsCopy];
  [_getDefaults2 setObject:dictionary forKey:v18];
}

+ (id)profileFromBeaconData:(id)data andParsedIE:(id)e
{
  v117 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  eCopy = e;
  v8 = eCopy;
  if (!eCopy || ([eCopy objectForKeyedSubscript:@"BSSID"], v9 = objc_claimAutoreleasedReturnValue(), +[WiFiUsagePrivacyFilter reformatMACAddress:](WiFiUsagePrivacyFilter, "reformatMACAddress:", v9), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      if (v8)
      {
        v11 = @"not nil";
      }

      else
      {
        v11 = @"nil";
      }

      v12 = [v8 objectForKeyedSubscript:@"BSSID"];
      *buf = 136315650;
      *&buf[4] = "+[WiFiUsageAccessPointProfile profileFromBeaconData:andParsedIE:]";
      *&buf[12] = 2112;
      *&buf[14] = v11;
      v109 = 2112;
      v110 = v12;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: unable to learn currentBSSID (ParsedIE:%@ bssid:%@)", buf, 0x20u);
    }

    v10 = 0;
  }

  if (_apProfileVersion != 1)
  {
    v21 = 0;
    goto LABEL_74;
  }

  [self _endPrevAssoc];
  v13 = objc_alloc_init(self);
  [v13 setBssid:0];
  [v13 setApProfile:0];
  if (!dataCopy)
  {
    [self updateWithWPS:v8];
    goto LABEL_17;
  }

  selfCopy = self;
  v14 = [[WiFiUsageParsedBeacon alloc] initWithBeaconData:dataCopy andAdditionalMetadata:v8];
  bssid = [(WiFiUsageParsedBeacon *)v14 bssid];
  [v13 setBssid:bssid];

  vendorIEList = [(WiFiUsageParsedBeacon *)v14 vendorIEList];
  allKeys = [vendorIEList allKeys];
  v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF BEGINSWITH[c] '00:17:F2-6' OR SELF BEGINSWITH[c] '00:17:F2-9'"];
  v19 = [allKeys filteredArrayUsingPredicate:v18];

  v107 = v14;
  if ([(__CFString *)v19 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      bssid2 = [v13 bssid];
      *buf = 136315906;
      *&buf[4] = "+[WiFiUsageAccessPointProfile profileFromBeaconData:andParsedIE:]";
      *&buf[12] = 2160;
      *&buf[14] = 1752392040;
      v109 = 2112;
      v110 = bssid2;
      v111 = 2112;
      v112 = v19;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: (%{mask.hash}@) contains PersonalHotspotIEs:%@ -- skip", buf, 0x2Au);
    }

    goto LABEL_72;
  }

  v105 = v19;
  taggedIEList = [(WiFiUsageParsedBeacon *)v14 taggedIEList];
  v23 = MEMORY[0x277CBEC28];
  v24 = [taggedIEList allKeysForObject:MEMORY[0x277CBEC28]];

  extendedIEList = [(WiFiUsageParsedBeacon *)v14 extendedIEList];
  v26 = [extendedIEList allKeysForObject:v23];

  parsingSuccessful = [(WiFiUsageParsedBeacon *)v14 parsingSuccessful];
  v28 = v14;
  v29 = v24;
  if (parsingSuccessful && ![v24 count] && !objc_msgSend(v26, "count"))
  {
    goto LABEL_26;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    bssid3 = [v13 bssid];
    parsingSuccessful2 = [(WiFiUsageParsedBeacon *)v28 parsingSuccessful];
    *buf = 136316418;
    v32 = @"NO";
    *&buf[4] = "+[WiFiUsageAccessPointProfile profileFromBeaconData:andParsedIE:]";
    *&buf[12] = 2160;
    *&buf[14] = 1752392040;
    v109 = 2112;
    if (parsingSuccessful2)
    {
      v32 = @"YES";
    }

    v110 = bssid3;
    v111 = 2112;
    v112 = v32;
    v113 = 2112;
    v114 = v24;
    v115 = 2112;
    v116 = v26;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: (%{mask.hash}@) parsingSuccessful: %@ invalidElements:%@ invalidExtElements:%@ -- skip", buf, 0x3Eu);
  }

  if (+[WiFiUsagePrivacyFilter isInternalInstall])
  {
LABEL_26:
    v101 = v26;
    bssid4 = [v13 bssid];
    v103 = [WiFiUsageAccessPointProfile _cachedProfile:bssid4];

    bssid5 = [v13 bssid];
    v35 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:bssid5 withKey:@"apProfileBeaconInfoOccurrencies" withCachedData:0];
    unsignedIntegerValue = [v35 unsignedIntegerValue];

    bssid6 = [v13 bssid];
    v102 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:bssid6 withKey:@"apProfileCacheTimestamp" withCachedData:0];

    bssid7 = [v13 bssid];
    v104 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:bssid7 withKey:@"apProfile_shortID" withCachedData:0];

    v28 = v107;
    if (_apProfileVersion == 1)
    {
      v39 = [WiFiUsageAccessPointProfile _toMobileAssetsProfile:v107];
      [v13 setApProfile:v39];
    }

    apProfile = [v13 apProfile];
    v41 = v105;
    if (!apProfile)
    {
      v100 = 0;
LABEL_65:
      v43 = v102;
      goto LABEL_66;
    }

    v42 = apProfile;
    v43 = v102;
    if (v102)
    {
      [v102 timeIntervalSinceNow];
      v45 = -v44;
      v46 = *&_apProfileMinSecsBetweenOccurrencies;

      if (v46 >= v45)
      {
        v100 = 0;
LABEL_66:
        bssid8 = [v13 bssid];
        v91 = [bssid8 isEqualToString:v10];

        if (v91)
        {
          bssid9 = [v13 bssid];
          [WiFiUsageAccessPointProfile _saveToUserDefaults:bssid9 withKey:@"apProfileForLatestAssoc" andValue:MEMORY[0x277CBEC38]];
        }

        dictionaryRepresentation = [(WiFiUsageParsedBeacon *)v28 dictionaryRepresentation];
        v94 = [dictionaryRepresentation objectForKeyedSubscript:@"hasColocatedMLOs"];
        [v13 setHasColocatedMLOs:{objc_msgSend(v94, "length") != 0}];

        v47 = 1;
        v26 = v101;
        v48 = v100;
        goto LABEL_69;
      }
    }

    else
    {
    }

    apProfile2 = [v13 apProfile];
    v50 = [apProfile2 isEqualToString:v103];

    if (unsignedIntegerValue && unsignedIntegerValue + v50 && v50 && v104 && (v51 = [v104 length], v51 == 2 * _shortProfileBytesLen))
    {
      v97 = unsignedIntegerValue + v50;
      v100 = 0;
      v52 = v107;
      v53 = 0x2789C5000;
    }

    else
    {
      bssid10 = [v13 bssid];
      v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"replaced (from %s)", "+[WiFiUsageAccessPointProfile profileFromBeaconData:andParsedIE:]"];
      [selfCopy _submitProfileFor:bssid10 withCachedDict:0 AndEraseWithLog:v55];

      bssid11 = [v13 bssid];
      apProfile3 = [v13 apProfile];
      [WiFiUsageAccessPointProfile _saveToUserDefaults:bssid11 withKey:@"apProfileID" andValue:apProfile3];

      bssid12 = [v13 bssid];
      apProfile4 = [v13 apProfile];
      v59 = _shortProfileBytesLen;
      v60 = apProfile4;
      v61 = v60;
      memset(buf, 0, 20);
      if (v60)
      {
        v62 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v60 length:{"cStringUsingEncoding:", 4), objc_msgSend(v60, "length")}];
      }

      else
      {
        v62 = 0;
      }

      if (CC_SHA1([v62 bytes], objc_msgSend(v62, "length"), buf) == buf)
      {
        v63 = [WiFiUsagePrivacyFilter toHEXString:buf length:20];
      }

      else
      {
        v63 = 0;
      }

      if (2 * v59 < [v63 length])
      {
        v64 = [v63 substringFromIndex:{objc_msgSend(v63, "length") - 2 * v59}];

        v63 = v64;
      }

      [WiFiUsageAccessPointProfile _saveToUserDefaults:bssid12 withKey:@"apProfile_shortID" andValue:v63];
      v53 = 0x2789C5000uLL;
      bssid13 = [v13 bssid];
      v52 = v107;
      dictionaryRepresentation2 = [(WiFiUsageParsedBeacon *)v107 dictionaryRepresentation];
      [WiFiUsageAccessPointProfile _saveToUserDefaults:bssid13 withKey:@"apProfileBeaconInfo" andValue:dictionaryRepresentation2];

      bssid14 = [v13 bssid];
      [WiFiUsageAccessPointProfile _saveToUserDefaults:bssid14 withKey:@"apProfileBeaconRaw" andValue:dataCopy];

      v97 = 1;
      v100 = 1;
    }

    v68 = *(v53 + 3472);
    bssid15 = [v13 bssid];
    v70 = [v68 _loadFromUserDefaults:bssid15 withKey:@"apProfileBeaconInfo" withCachedData:0];

    v96 = v70;
    v99 = [v70 objectForKey:@"apName"];
    apName = [(WiFiUsageParsedBeacon *)v52 apName];
    if (apName)
    {
      v72 = apName;
      if (v99)
      {
        v52 = v107;
        apName2 = [(WiFiUsageParsedBeacon *)v107 apName];
        v74 = [apName2 isEqualToString:v99];

        v53 = 0x2789C5000;
        if (v74)
        {
          goto LABEL_56;
        }
      }

      else
      {

        v52 = v107;
        v53 = 0x2789C5000uLL;
      }

      v75 = *(v53 + 3472);
      bssid16 = [v13 bssid];
      dictionaryRepresentation3 = [(WiFiUsageParsedBeacon *)v52 dictionaryRepresentation];
      [v75 _saveToUserDefaults:bssid16 withKey:@"apProfileBeaconInfo" andValue:dictionaryRepresentation3];

      v78 = *(v53 + 3472);
      bssid17 = [v13 bssid];
      [v78 _saveToUserDefaults:bssid17 withKey:@"apProfileBeaconRaw" andValue:dataCopy];
    }

LABEL_56:
    v80 = *(v53 + 3472);
    bssid18 = [v13 bssid];
    v82 = MEMORY[0x277CCABB0];
    if ([(WiFiUsageParsedBeacon *)v52 parsingSuccessful])
    {
      v41 = v105;
      v83 = v29;
      if ([v29 count])
      {
        v84 = 0;
      }

      else
      {
        v84 = [v101 count] == 0;
      }
    }

    else
    {
      v83 = v29;
      v84 = 0;
      v41 = v105;
    }

    v85 = [v82 numberWithBool:v84];
    [v80 _saveToUserDefaults:bssid18 withKey:@"apProfileBeaconInfoParsingSuccessful" andValue:v85];

    bssid19 = [v13 bssid];
    if ([(WiFiUsageParsedBeacon *)v107 parsingSuccessful])
    {
      [WiFiUsageAccessPointProfile _saveToUserDefaults:bssid19 withKey:@"apProfileBeaconInfoParsingErrorAfter" andValue:0];
    }

    else
    {
      lastParsedOK = [(WiFiUsageParsedBeacon *)v107 lastParsedOK];
      [WiFiUsageAccessPointProfile _saveToUserDefaults:bssid19 withKey:@"apProfileBeaconInfoParsingErrorAfter" andValue:lastParsedOK];
    }

    bssid20 = [v13 bssid];
    v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v97];
    [WiFiUsageAccessPointProfile _saveToUserDefaults:bssid20 withKey:@"apProfileBeaconInfoOccurrencies" andValue:v89];

    v28 = v107;
    v29 = v83;
    goto LABEL_65;
  }

  v47 = 0;
  v48 = 0;
  v41 = v105;
LABEL_69:

  if (!v47)
  {
LABEL_72:
    v21 = 0;
    goto LABEL_73;
  }

  [selfCopy updateWithWPS:v8];
  if (v48)
  {
    [selfCopy _cleanUpStaleProfiles];
  }

LABEL_17:
  v21 = v13;
LABEL_73:

LABEL_74:

  return v21;
}

+ (void)updateWithWPS:(id)s
{
  v23 = *MEMORY[0x277D85DE8];
  sCopy = s;
  v4 = sCopy;
  if (sCopy)
  {
    v5 = [sCopy objectForKeyedSubscript:@"BSSID"];
    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"WPS_PROB_RESP_IE"];
      if (v6)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v8 = [v6 objectForKeyedSubscript:@"IE_KEY_WPS_PRIMARY_DEV_TYPE"];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 objectForKeyedSubscript:@"WPS_DEV_TYPE_CAT"];
          [dictionary setObject:v10 forKeyedSubscript:@"apProfileWPSDeviceCategory"];

          v11 = [v9 objectForKeyedSubscript:@"WPS_DEV_TYPE_SUB_CAT"];
          [dictionary setObject:v11 forKeyedSubscript:@"apProfileWPSDeviceSubcategory"];
        }

        v12 = [v6 objectForKeyedSubscript:@"IE_KEY_WPS_MODEL_NAME"];
        v13 = [WiFiUsagePrivacyFilter reformatMACAddress:v12];
        if (v13)
        {
          [dictionary setObject:@"dropped" forKeyedSubscript:@"apProfileWPSDeviceModelName"];
        }

        else
        {
          v14 = [v6 objectForKeyedSubscript:@"IE_KEY_WPS_MODEL_NAME"];
          [dictionary setObject:v14 forKeyedSubscript:@"apProfileWPSDeviceModelName"];
        }

        v15 = [v6 objectForKeyedSubscript:@"IE_KEY_WPS_MODEL_NUM"];
        v16 = [WiFiUsagePrivacyFilter reformatMACAddress:v15];
        if (v16)
        {
          [dictionary setObject:@"dropped" forKeyedSubscript:@"apProfileWPSDeviceModelNumber"];
        }

        else
        {
          v17 = [v6 objectForKeyedSubscript:@"IE_KEY_WPS_MODEL_NUM"];
          [dictionary setObject:v17 forKeyedSubscript:@"apProfileWPSDeviceModelNumber"];
        }

        v18 = [v6 objectForKeyedSubscript:@"IE_KEY_WPS_MANUFACTURER"];
        v19 = [WiFiUsagePrivacyFilter reformatMACAddress:v18];
        if (v19)
        {
          [dictionary setObject:@"dropped" forKeyedSubscript:@"apProfileWPSDeviceManufacturer"];
        }

        else
        {
          v20 = [v6 objectForKeyedSubscript:@"IE_KEY_WPS_MANUFACTURER"];
          [dictionary setObject:v20 forKeyedSubscript:@"apProfileWPSDeviceManufacturer"];
        }

        [WiFiUsageAccessPointProfile _saveToUserDefaults:v5 withKey:@"apProfileWPSInfo" andValue:dictionary];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315138;
      v22 = "+[WiFiUsageAccessPointProfile updateWithWPS:]";
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: no BSSID in ParsedIE", &v21, 0xCu);
    }
  }
}

+ (void)updateWithAssocTime:(double)time forBssid:(id)bssid
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = [WiFiUsagePrivacyFilter reformatMACAddress:bssid];
  v7 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v6 withKey:@"apProfileVersion" withCachedData:0];
  if (v7)
  {
    v8 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v6 withKey:@"apProfileMaxAssocTime" withCachedData:0];
    unsignedIntegerValue = [v8 unsignedIntegerValue];

    if (unsignedIntegerValue <= time)
    {
      v10 = *&_apProfileMinAssoc;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:time];
      [self _saveToUserDefaults:v6 withKey:@"apProfileMaxAssocTime" andValue:v11];

      [WiFiUsageAccessPointProfile _saveToUserDefaults:v6 withKey:@"apProfileForLatestAssoc" andValue:MEMORY[0x277CBEC28]];
      v12 = v10 <= unsignedIntegerValue || v10 > time;
      if (!v12 && [self _isProfileValidForUse:v6 withCachedDict:0 withError:0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v13 = [self profileForBSSID:v6 withError:0];
        v14 = 136316162;
        v15 = "+[WiFiUsageAccessPointProfile updateWithAssocTime:forBssid:]";
        v16 = 2160;
        v17 = 1752392040;
        v18 = 2112;
        v19 = v6;
        v20 = 2160;
        v21 = 1752392040;
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: profile for %{mask.hash}@ is valid: %{mask.hash}@", &v14, 0x34u);
      }
    }

    else
    {
      [WiFiUsageAccessPointProfile _saveToUserDefaults:v6 withKey:@"apProfileForLatestAssoc" andValue:MEMORY[0x277CBEC28]];
    }
  }
}

+ (void)_submitProfileFor:(id)for withCachedDict:(id)dict AndEraseWithLog:(id)log
{
  v40 = *MEMORY[0x277D85DE8];
  forCopy = for;
  dictCopy = dict;
  logCopy = log;
  v11 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:forCopy withKey:@"apProfileVersion" withCachedData:dictCopy];
  if (v11)
  {
    v12 = [self _isProfileValidForUse:forCopy withCachedDict:dictCopy withError:0];
    v13 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:forCopy withKey:@"submittedToCA" withCachedData:dictCopy];
    bOOLValue = [v13 BOOLValue];

    v15 = MEMORY[0x277D86220];
    v16 = MEMORY[0x277D86220];
    v17 = 0x2789C5000;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (v12)
      {
        v18 = &stru_28487EF20;
      }

      else
      {
        v18 = @"NOT ";
      }

      if (bOOLValue)
      {
        v19 = &stru_28487EF20;
      }

      else
      {
        v19 = @"NOT ";
      }

      if (bOOLValue)
      {
        v20 = &stru_28487EF20;
      }

      else
      {
        v20 = @"-- skip";
      }

      if (((bOOLValue | v12) & 1) == 0)
      {
        if (+[WiFiUsagePrivacyFilter isInternalInstall])
        {
          v20 = @"-- skip";
        }

        else
        {
          v20 = &stru_28487EF20;
        }
      }

      *buf = 136316418;
      v29 = "+[WiFiUsageAccessPointProfile _submitProfileFor:withCachedDict:AndEraseWithLog:]";
      v30 = 2112;
      v31 = forCopy;
      v32 = 2112;
      v33 = v18;
      v34 = 2112;
      v35 = v19;
      v36 = 2112;
      v37 = v20;
      v38 = 2112;
      v39 = logCopy;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: profile for %@ is %@valid and %@already sentToCA%@ (%@)", buf, 0x3Eu);
      v17 = 0x2789C5000uLL;
    }

    if ((bOOLValue & 1) == 0 && ((v12 & 1) != 0 || [*(v17 + 3912) isInternalInstall]))
    {
      v21 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:forCopy withKey:0 withCachedData:dictCopy];
      if (v21)
      {
        v22 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [self _saveToUserDefaults:forCopy withKey:@"submittedToCA" andValue:v22];

        if (logCopy)
        {
          v23 = -[__CFString componentsSeparatedByString:](logCopy, "componentsSeparatedByString:", @"(");
          v24 = [v23 objectAtIndexedSubscript:0];
          [v21 setValue:v24 forKey:@"reasonForSending"];
        }

        v21 = v21;
        AnalyticsSendEventLazy();
      }
    }

    else
    {
      v21 = 0;
    }

    _getDefaults = [self _getDefaults];
    v26 = [*(v17 + 3912) reformatMACAddress:forCopy];
    [_getDefaults removeObjectForKey:v26];

    if (logCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v27 = [*(v17 + 3912) reformatMACAddress:forCopy];
      *buf = 136315906;
      v29 = "+[WiFiUsageAccessPointProfile _submitProfileFor:withCachedDict:AndEraseWithLog:]";
      v30 = 2160;
      v31 = 1752392040;
      v32 = 2112;
      v33 = v27;
      v34 = 2112;
      v35 = logCopy;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: removed %{mask.hash}@ from defaults: %@", buf, 0x2Au);
    }
  }

  else
  {
    v21 = 0;
  }
}

+ (void)submitToCAForBSSID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [WiFiUsagePrivacyFilter reformatMACAddress:d];
  v5 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v4 withKey:@"apProfileVersion" withCachedData:0];
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[WiFiUsageAccessPointProfile submitToCAForBSSID:];
  }

  if (([self _isProfileValidForUse:v4 withCachedDict:0 withError:0] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[WiFiUsageAccessPointProfile submitToCAForBSSID:];
  }

  v6 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v4 withKey:@"submittedToCA" withCachedData:0];
  bOOLValue = [v6 BOOLValue];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(WiFiUsageAccessPointProfile *)v4 submitToCAForBSSID:bOOLValue];
  }

  v8 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v4 withKey:0 withCachedData:0];
  v9 = v8;
  if (v8)
  {
    [v8 setValue:@"DebugCommand" forKey:@"reasonForSending"];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: submitting CA metric %@ : %@", "+[WiFiUsageAccessPointProfile submitToCAForBSSID:]", @"com.apple.wifi.AP_Capabilities_Profile", v9];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v10, "UTF8String")];
      *buf = 136446210;
      uTF8String = [v11 UTF8String];
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    v12 = v9;
    AnalyticsSendEventLazy();
  }
}

+ (BOOL)_isProfileValidForUse:(id)use withCachedDict:(id)dict onlyIfCurrent:(BOOL)current withError:(id *)error
{
  currentCopy = current;
  v79[1] = *MEMORY[0x277D85DE8];
  useCopy = use;
  dictCopy = dict;
  if (useCopy)
  {
    v11 = [WiFiUsagePrivacyFilter reformatMACAddress:useCopy];

    if (_apProfileVersion)
    {
      v12 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v11 withKey:@"apProfileVersion" withCachedData:dictCopy withError:error];
      if (error && *error)
      {
        v13 = 0;
LABEL_41:

        goto LABEL_42;
      }

      v15 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v11 withKey:@"apProfileBeaconInfoOccurrencies" withCachedData:dictCopy];
      unsignedIntegerValue = [v15 unsignedIntegerValue];

      v16 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v11 withKey:@"apProfileMaxAssocTime" withCachedData:dictCopy];
      unsignedIntegerValue2 = [v16 unsignedIntegerValue];

      v17 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v11 withKey:@"apProfileCacheTimestamp" withCachedData:dictCopy];
      v18 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v11 withKey:@"apProfileForLatestAssoc" withCachedData:dictCopy];
      bOOLValue = [v18 BOOLValue];

      v20 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v11 withKey:@"apProfileBeaconInfoParsingSuccessful" withCachedData:dictCopy];
      bOOLValue2 = [v20 BOOLValue];

      v22 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v11 withKey:@"apProfileBeaconInfoParsingErrorAfter" withCachedData:dictCopy];
      v23 = v22;
      if (currentCopy && (bOOLValue & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v55 = "+[WiFiUsageAccessPointProfile _isProfileValidForUse:withCachedDict:onlyIfCurrent:withError:]";
          v56 = 2160;
          v57 = 1752392040;
          v58 = 2112;
          v59 = v11;
          v60 = 2112;
          v61 = v17;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: bssid %{mask.hash}@ has not been derived from a beacon retrieved after the current association (last updated: %@)", buf, 0x2Au);
        }

        if (!error)
        {
          goto LABEL_18;
        }

        v24 = MEMORY[0x277CCA9B8];
        v76 = *MEMORY[0x277CCA470];
        v77 = @"WUAPProfileErrorProfileNotCurrent";
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
        v26 = v24;
        v27 = 2;
        goto LABEL_16;
      }

      v28 = v22;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([_apProfileVersionString isEqualToString:v12] & bOOLValue2) == 1 && unsignedIntegerValue >= _apProfileMinOccurrencies && (*&_apProfileMinAssoc <= unsignedIntegerValue2 || bOOLValue && (objc_msgSend(v17, "timeIntervalSinceNow", unsignedIntegerValue2, *&_apProfileMinAssoc), *&_apProfileMinAssoc < -v29)))
      {
        v13 = 1;
      }

      else
      {
        if (v12)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v30 = _apProfileVersionString;
            v31 = @"NO";
            if (bOOLValue2)
            {
              v32 = @"YES";
            }

            else
            {
              v32 = @"NO";
            }

            v45 = _apProfileMinAssoc;
            if (bOOLValue)
            {
              v31 = @"YES";
            }

            v43 = _apProfileMinOccurrencies;
            v44 = v31;
            [v17 timeIntervalSinceNow];
            *buf = 136317698;
            v55 = "+[WiFiUsageAccessPointProfile _isProfileValidForUse:withCachedDict:onlyIfCurrent:withError:]";
            v56 = 2112;
            v57 = v11;
            v58 = 2112;
            v59 = v12;
            v60 = 2112;
            v61 = v30;
            v62 = 2112;
            v63 = v32;
            v64 = 2048;
            v65 = unsignedIntegerValue;
            v66 = 2048;
            v67 = v43;
            v68 = 2048;
            v69 = unsignedIntegerValue2;
            v70 = 2048;
            v71 = v45;
            v72 = 2112;
            v73 = v44;
            v74 = 2048;
            v75 = -v33;
            _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Profile for bssid: %@ is NOT valid: version:%@ (current:%@) parsingSuccessful:%@ occurrencies:%lu (>=%lu) maxAssocTime(sec):%lu (>=%f) isCurrent:%@ lastUpdated/currentAssocTime(sec):%f", buf, 0x70u);
          }

          v23 = v28;
          if ((bOOLValue2 & 1) == 0)
          {
            v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Parsing Failed. Last Parsed: %@", v28];
            v25 = v36;
            if (error)
            {
              v37 = MEMORY[0x277CCA9B8];
              v52 = *MEMORY[0x277CCA470];
              v53 = v36;
              v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
              *error = [v37 errorWithDomain:@"com.apple.wifi.policy.approfile" code:4 userInfo:v38];

              v23 = v28;
            }

            goto LABEL_17;
          }

          if (unsignedIntegerValue >= _apProfileMinOccurrencies)
          {
            v39 = unsignedIntegerValue2;
            v40 = *&_apProfileMinAssoc;
            if (*&_apProfileMinAssoc <= unsignedIntegerValue2)
            {
              if (!bOOLValue)
              {
                goto LABEL_18;
              }

              [v17 timeIntervalSinceNow];
              v13 = 0;
              if (!error)
              {
                goto LABEL_40;
              }

              v39 = -v41;
              v40 = *&_apProfileMinAssoc;
              if (*&_apProfileMinAssoc >= v39)
              {
                goto LABEL_40;
              }
            }

            else if (!error)
            {
              goto LABEL_18;
            }

            v42 = MEMORY[0x277CCA9B8];
            v48 = *MEMORY[0x277CCA470];
            v49 = @"WUAPProfileErrorMinAssocTimeNotMet";
            v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:{1, v39, v40}];
            v26 = v42;
            v27 = 6;
          }

          else
          {
            if (!error)
            {
              goto LABEL_18;
            }

            v34 = MEMORY[0x277CCA9B8];
            v50 = *MEMORY[0x277CCA470];
            v51 = @"WUAPProfileErrorMinOccurrencesNotMet";
            v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
            v26 = v34;
            v27 = 5;
          }

LABEL_16:
          *error = [v26 errorWithDomain:@"com.apple.wifi.policy.approfile" code:v27 userInfo:v25];
LABEL_17:

LABEL_18:
          v13 = 0;
LABEL_40:

          goto LABEL_41;
        }

        v13 = 0;
      }

      v23 = v28;
      goto LABEL_40;
    }

    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v78 = *MEMORY[0x277CCA470];
      v79[0] = @"WUAPProfileErrorPreInit";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:&v78 count:1];
      [v14 errorWithDomain:@"com.apple.wifi.policy.approfile" code:1 userInfo:v12];
      *error = v13 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = 0;
LABEL_42:

  return v13;
}

+ (id)profileForBSSID:(id)d onlyIfCurrent:(BOOL)current withError:(id *)error
{
  currentCopy = current;
  dCopy = d;
  if (dCopy)
  {
    v9 = dCopy;
    v10 = [WiFiUsagePrivacyFilter reformatMACAddress:dCopy];

    if (_useShortProfile)
    {
      v11 = @"apProfile_shortID";
    }

    else
    {
      v11 = @"apProfileID";
    }

    v12 = v11;
    v13 = [self _isProfileValidForUse:v10 withCachedDict:0 onlyIfCurrent:currentCopy withError:error];
    v14 = 0;
    if (v13)
    {
      v15 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v10 withKey:v12 withCachedData:0];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", _apProfileVersionString, v15];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)longProfileForBSSID:(id)d withError:(id *)error
{
  v6 = [WiFiUsagePrivacyFilter reformatMACAddress:d];
  v7 = [self _isProfileValidForUse:v6 withCachedDict:0 withError:error];
  v8 = 0;
  if (v7)
  {
    v9 = [WiFiUsageAccessPointProfile _cachedProfile:v6];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", _apProfileVersionString, v9];
  }

  return v8;
}

+ (id)shortProfileForBSSID:(id)d withError:(id *)error
{
  v6 = [WiFiUsagePrivacyFilter reformatMACAddress:d];
  v7 = [self _isProfileValidForUse:v6 withCachedDict:0 withError:error];
  v8 = 0;
  if (v7)
  {
    v9 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v6 withKey:@"apProfile_shortID" withCachedData:0];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", _apProfileVersionString, v9];
  }

  return v8;
}

+ (id)errorStringForTelemetry:(id)telemetry
{
  userInfo = [telemetry userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA470]];

  if (v4 && [v4 hasPrefix:@"WUAPProfile"])
  {
    v5 = [v4 substringFromIndex:{objc_msgSend(@"WUAPProfile", "length")}];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

+ (id)beaconsAndWPSInfo
{
  v36 = *MEMORY[0x277D85DE8];
  _getDefaults = [self _getDefaults];
  dictionaryRepresentation = [_getDefaults dictionaryRepresentation];

  v29 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [dictionaryRepresentation allKeys];
  v5 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = [WiFiUsagePrivacyFilter reformatMACAddress:v9];

        if (v10)
        {
          v11 = objc_opt_new();
          v12 = [dictionaryRepresentation objectForKeyedSubscript:v9];
          v13 = [self _loadFromUserDefaults:v9 withKey:@"apProfileBeaconInfo" withCachedData:v12];
          v14 = [v13 objectForKey:@"BeaconInformationElement_0"];

          [v11 setBssid:v9];
          v15 = [dictionaryRepresentation objectForKeyedSubscript:v9];
          v16 = [self _loadFromUserDefaults:v9 withKey:@"apProfileBeaconRaw" withCachedData:v15];
          [v11 setBeacon:v16];

          if (v14)
          {
            v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];
            [v11 setSsid:v17];
          }

          v18 = [dictionaryRepresentation objectForKeyedSubscript:v9];
          v19 = [self _loadFromUserDefaults:v9 withKey:@"apProfileWPSInfo" withCachedData:v18];
          [v11 setApProfileWPSInfo:v19];

          v20 = [dictionaryRepresentation objectForKeyedSubscript:v9];
          v21 = [self _loadFromUserDefaults:v9 withKey:@"apProfileVersion" withCachedData:v20];
          [v11 setApProfileVersion:v21];

          v22 = [dictionaryRepresentation objectForKeyedSubscript:v9];
          v23 = [self _loadFromUserDefaults:v9 withKey:@"apProfileID" withCachedData:v22];
          [v11 setApProfileID:v23];

          v24 = [dictionaryRepresentation objectForKeyedSubscript:v9];
          v25 = [self _loadFromUserDefaults:v9 withKey:@"apProfile_shortID" withCachedData:v24];
          [v11 setApProfile_shortID:v25];

          v26 = [dictionaryRepresentation objectForKeyedSubscript:v9];
          v27 = [self _loadFromUserDefaults:v9 withKey:@"apProfileCacheTimestampCreated" withCachedData:v26];

          if (v11 && v27)
          {
            [v29 setObject:v11 forKey:v27];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v6);
  }

  return v29;
}

+ (id)apNameForBSSID:(id)d
{
  v3 = [WiFiUsagePrivacyFilter reformatMACAddress:d];
  v4 = [WiFiUsageAccessPointProfile _loadFromUserDefaults:v3 withKey:@"apProfileBeaconInfo" withCachedData:0];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"apName"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)submitToCAForBSSID:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[0] = 136315394;
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: profile for bssid %@ doesn't exist", v0, 0x16u);
}

+ (void)submitToCAForBSSID:.cold.2()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[0] = 136315394;
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: profile for bssid %@ is not valid", v0, 0x16u);
}

+ (void)submitToCAForBSSID:(uint64_t)a1 .cold.3(uint64_t a1, char a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = "not yet";
  v4 = "+[WiFiUsageAccessPointProfile submitToCAForBSSID:]";
  v3 = 136315650;
  if (a2)
  {
    v2 = "already sent";
  }

  v5 = 2112;
  v6 = a1;
  v7 = 2080;
  v8 = v2;
  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: profile for bssid %@ is %s sent to CA", &v3, 0x20u);
}

@end