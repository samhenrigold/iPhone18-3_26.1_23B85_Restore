@interface AAPSyncMetaDataItemUpdate
- (AAPSyncMetaDataItemUpdate)initWithAppId:(id)id appProxy:(id)proxy anchor:(id)anchor configuration:(id)configuration;
- (id)scrapeAppInfo;
- (id)valueForGenericParser:(id)parser withDefaultGenerator:(id)generator withErrorKeyDescriptor:(id)descriptor;
- (id)valueForPlistEntry:(id *)entry inBundle:(__CFBundle *)bundle withInfo:(id)info entitlements:(id)entitlements;
- (id)valuesForEntries:(id *)entries inPlistAtURL:(id)l;
- (id)valuesForInfoPlistEntries:(id *)entries inBundle:(__CFBundle *)bundle withEntitlements:(id)entitlements forLocalization:(id)localization ignoringDefaultValues:(id)values;
- (id)valuesForLocalInfoPlistEntries:(id *)entries inBundle:(__CFBundle *)bundle withEntitlements:(id)entitlements ignoringDefaultValues:(id)values;
- (void)_validate;
- (void)dealloc;
@end

@implementation AAPSyncMetaDataItemUpdate

- (AAPSyncMetaDataItemUpdate)initWithAppId:(id)id appProxy:(id)proxy anchor:(id)anchor configuration:(id)configuration
{
  v11.receiver = self;
  v11.super_class = AAPSyncMetaDataItemUpdate;
  v9 = [(AAPSyncMetaDataItemUpdate *)&v11 init:id];
  if (v9)
  {
    v9->_appId = [id copy];
    v9->_appProxy = proxy;
    v9->_anchor = [anchor copy];
    [(AAPSyncMetaDataItemUpdate *)v9 _validate];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AAPSyncMetaDataItemUpdate;
  [(AAPSyncMetaDataItemUpdate *)&v3 dealloc];
}

- (void)_validate
{
  if (!self->_appId)
  {
    sub_10B70();
  }

  if (!self->_appProxy)
  {
    sub_10BC4();
  }

  if (!self->_anchor)
  {
    sub_10C18();
  }

  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10C6C();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10CC8();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10D24();
  }
}

- (id)valueForGenericParser:(id)parser withDefaultGenerator:(id)generator withErrorKeyDescriptor:(id)descriptor
{
  if (!parser)
  {
    sub_10D80();
  }

  if (!descriptor)
  {
    sub_10DDC();
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = sub_6DB4;
  v30 = sub_6DC4;
  v31 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_6DD0;
  v25[3] = &unk_20A08;
  v25[4] = &v26;
  v9 = (*(parser + 2))(parser, v25);
  v10 = v27[5];
  if (v9)
  {
    if (v10)
    {
      v11 = AFSiriLogContextPlugin;
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
      {
        v12 = (*(descriptor + 2))(descriptor);
        appId = self->_appId;
        v14 = v27[5];
        *buf = 136316162;
        v33 = "[AAPSyncMetaDataItemUpdate valueForGenericParser:withDefaultGenerator:withErrorKeyDescriptor:]";
        v34 = 2114;
        v35 = v12;
        v36 = 2112;
        v37 = appId;
        v38 = 2114;
        v39 = v14;
        v40 = 2112;
        v41 = v9;
        _os_log_error_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: Error: parsing encountered errors for %{public}@ (%@) but managed to recover -> errors=%{public}@ parsed=%@", buf, 0x34u);
      }
    }

    goto LABEL_18;
  }

  if (!v10 || (v15 = AFSiriLogContextPlugin, !os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR)))
  {
    if (generator)
    {
      goto LABEL_12;
    }

LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v22 = (*(descriptor + 2))(descriptor);
  v23 = self->_appId;
  v24 = v27[5];
  *buf = 136315906;
  v33 = "[AAPSyncMetaDataItemUpdate valueForGenericParser:withDefaultGenerator:withErrorKeyDescriptor:]";
  v34 = 2114;
  v35 = v22;
  v36 = 2112;
  v37 = v23;
  v38 = 2114;
  v39 = v24;
  _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: Error: parsing failed for %{public}@ (%@) -> %{public}@", buf, 0x2Au);
  if (!generator)
  {
    goto LABEL_17;
  }

LABEL_12:
  v9 = (*(generator + 2))(generator);
  v16 = AFSiriLogContextPlugin;
  v17 = os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG);
  if (!v9)
  {
    if (v17)
    {
      v20 = (*(descriptor + 2))(descriptor);
      sub_10E38(v20, self, buf, v16);
    }

    goto LABEL_17;
  }

  if (v17)
  {
    v18 = (*(descriptor + 2))(descriptor);
    v19 = self->_appId;
    *buf = 136315906;
    v33 = "[AAPSyncMetaDataItemUpdate valueForGenericParser:withDefaultGenerator:withErrorKeyDescriptor:]";
    v34 = 2114;
    v35 = v18;
    v36 = 2112;
    v37 = v19;
    v38 = 2112;
    v39 = v9;
    _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: falling back to defaultGenerator value for %{public}@ (%@) -> %@", buf, 0x2Au);
  }

LABEL_18:

  _Block_object_dispose(&v26, 8);
  return v9;
}

- (id)valueForPlistEntry:(id *)entry inBundle:(__CFBundle *)bundle withInfo:(id)info entitlements:(id)entitlements
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_6F28;
  v9[3] = &unk_20A30;
  v9[5] = entitlements;
  v9[6] = entry;
  v9[4] = info;
  var4 = entry->var4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_6F9C;
  v8[3] = &unk_20A50;
  v8[4] = entry;
  return [(AAPSyncMetaDataItemUpdate *)self valueForGenericParser:v9 withDefaultGenerator:var4 withErrorKeyDescriptor:v8];
}

- (id)valuesForInfoPlistEntries:(id *)entries inBundle:(__CFBundle *)bundle withEntitlements:(id)entitlements forLocalization:(id)localization ignoringDefaultValues:(id)values
{
  v13 = objc_alloc_init(NSMutableSet);
  if (entries->var0)
  {
    v14 = entries + 1;
    do
    {
      [v13 addObject:?];
      var0 = v14->var0;
      ++v14;
    }

    while (var0);
  }

  if (![v13 count])
  {
    goto LABEL_25;
  }

  if (localization)
  {
    FilteredLocalizedInfoPlist = _CFBundleCreateFilteredLocalizedInfoPlist();
    if (!FilteredLocalizedInfoPlist)
    {
      v17 = AFSiriLogContextPlugin;
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
      {
        sub_10EA8(localization, self, v17);
      }

LABEL_25:
      v19 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    FilteredLocalizedInfoPlist = _CFBundleCreateFilteredInfoPlist();
    if (!FilteredLocalizedInfoPlist)
    {
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
      {
        sub_10F44();
      }

      goto LABEL_25;
    }
  }

  v18 = FilteredLocalizedInfoPlist;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v13, "count")}];
    if (entries->var0)
    {
      localizationCopy = localization;
      *&v20 = 136316162;
      v30 = v20;
      do
      {
        v21 = [(AAPSyncMetaDataItemUpdate *)self valueForPlistEntry:entries inBundle:bundle withInfo:v18 entitlements:entitlements, v30];
        if (v21)
        {
          v22 = v21;
          if ([v21 isEqual:{objc_msgSend(values, "objectForKey:", entries->var0)}])
          {
            v23 = AFSiriLogContextPlugin;
            if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
            {
              v24 = entries->var0;
              appId = self->_appId;
              *buf = v30;
              v33 = "[AAPSyncMetaDataItemUpdate valuesForInfoPlistEntries:inBundle:withEntitlements:forLocalization:ignoringDefaultValues:]";
              v34 = 2114;
              v35 = v24;
              v36 = 2112;
              selfCopy = appId;
              v38 = 2114;
              v39 = localizationCopy;
              v40 = 2112;
              v41 = v22;
              _os_log_debug_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: not setting value for key=%{public}@ (%@) for localization (%{public}@) because it is the same as the default -> %@", buf, 0x34u);
            }
          }

          else
          {
            [v19 setObject:v22 forKey:entries->var0];
          }
        }

        v26 = entries[1].var0;
        ++entries;
      }

      while (v26);
    }
  }

  else
  {
    v27 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      v33 = "[AAPSyncMetaDataItemUpdate valuesForInfoPlistEntries:inBundle:withEntitlements:forLocalization:ignoringDefaultValues:]";
      v34 = 2114;
      localizationCopy2 = &stru_210F8;
      *buf = 136315906;
      if (localization)
      {
        localizationCopy2 = localization;
      }

      v35 = localizationCopy2;
      v36 = 2112;
      selfCopy = self;
      v38 = 2112;
      v39 = v18;
      _os_log_error_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%s com.apple.siri.applications: Error: could not understand %{public}@ info file data for metaDataItem=%@ -> %@", buf, 0x2Au);
    }

    v19 = 0;
  }

LABEL_26:
  return v19;
}

- (id)valuesForLocalInfoPlistEntries:(id *)entries inBundle:(__CFBundle *)bundle withEntitlements:(id)entitlements ignoringDefaultValues:(id)values
{
  v6 = -1;
  entriesCopy = entries;
  do
  {
    var0 = entriesCopy->var0;
    ++entriesCopy;
    ++v6;
  }

  while (var0);
  if (v6 && (v9 = CFBundleCopyBundleLocalizations(bundle)) != 0)
  {
    v10 = v9;
    v11 = [[NSMutableDictionary alloc] initWithCapacity:v6];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = [(__CFArray *)v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v29)
    {
      v23 = *v36;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v36 != v23)
          {
            objc_enumerationMutation(v10);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          v14 = [(AAPSyncMetaDataItemUpdate *)self valuesForInfoPlistEntries:entries inBundle:bundle withEntitlements:entitlements forLocalization:v13 ignoringDefaultValues:values, v23];
          if ([v14 count])
          {
            v30 = i;
            CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(0, v13);
            if (!CanonicalLocaleIdentifierFromString)
            {
              CanonicalLocaleIdentifierFromString = v13;
            }

            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v16 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v32;
              do
              {
                for (j = 0; j != v17; j = j + 1)
                {
                  if (*v32 != v18)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v20 = *(*(&v31 + 1) + 8 * j);
                  v21 = [v11 objectForKey:v20];
                  if (!v21)
                  {
                    v21 = [[NSMutableDictionary alloc] initWithCapacity:{-[__CFArray count](v10, "count")}];
                    [v11 setObject:v21 forKey:v20];
                  }

                  [v21 setObject:objc_msgSend(v14 forKey:{"objectForKey:", v20), CanonicalLocaleIdentifierFromString}];
                }

                v17 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
              }

              while (v17);
            }

            i = v30;
          }
        }

        v29 = [(__CFArray *)v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v29);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)valuesForEntries:(id *)entries inPlistAtURL:(id)l
{
  if (l)
  {
    v7 = objc_alloc_init(NSMutableSet);
    if (entries->var0)
    {
      v8 = entries + 1;
      do
      {
        [v7 addObject:?];
        var0 = v8->var0;
        ++v8;
      }

      while (var0);
    }

    if ([v7 count])
    {
      v20 = 0;
      v10 = [[NSData alloc] initWithContentsOfURL:l options:1 error:&v20];
      if (v10)
      {
        v11 = v10;
        _CFPropertyListCreateFiltered();
        v14 = AFSiriLogContextPlugin;
        if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
        {
          sub_10FB8(l, self, v14);
        }
      }

      else
      {
        v13 = AFSiriLogContextPlugin;
        if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
        {
          appId = self->_appId;
          domain = [v20 domain];
          code = [v20 code];
          *buf = 136316418;
          v22 = "[AAPSyncMetaDataItemUpdate valuesForEntries:inPlistAtURL:]";
          v23 = 2112;
          lCopy = l;
          v25 = 2112;
          v26 = appId;
          v27 = 2114;
          v28 = domain;
          v29 = 2048;
          v30 = code;
          v31 = 2112;
          v32 = v20;
          _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: could not load plist file at url='%@' (%@) -> {%{public}@:%li}%@", buf, 0x3Eu);
        }
      }
    }
  }

  else
  {
    v12 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
    {
      sub_11044(self, v12);
    }
  }

  return 0;
}

- (id)scrapeAppInfo
{
  v4 = objc_alloc_init(SAAppInfo);
  v5 = objc_autoreleasePoolPush();
  [v4 setIdentifier:AAPSyncInfoIdentifierForAppId(self->_appId)];
  bundleURL = [(LSApplicationProxy *)self->_appProxy bundleURL];
  cf = _CFBundleCreateUnique();
  if (cf)
  {
    v81[0] = kCFBundleIdentifierKey;
    v81[1] = "setAppId:";
    v81[2] = &stru_20A90;
    v81[3] = AAPPlistStringParser;
    v81[4] = 0;
    v81[5] = kCFBundleVersionKey;
    v81[6] = "setAppVersion:";
    v81[7] = &stru_20A90;
    v81[8] = AAPPlistStringParser;
    v81[9] = 0;
    v81[10] = _kCFBundleShortVersionStringKey;
    v81[12] = 0;
    v81[11] = 0;
    v81[13] = AAPPlistStringParser;
    v81[14] = 0;
    v81[15] = kCFBundleNameKey;
    v81[16] = "setAppName:";
    v81[17] = &stru_20A90;
    v81[18] = AAPPlistStringParser;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_8334;
    v45[3] = &unk_20AF8;
    v45[4] = bundleURL;
    v81[19] = v45;
    v81[20] = @"CFBundleDisplayName";
    v81[21] = "setDisplayAppName:";
    v81[22] = &stru_20A90;
    v81[23] = AAPPlistStringParser;
    v81[24] = 0;
    v81[25] = @"CFBundleSpokenName";
    v81[26] = "setSpokenName:";
    v81[27] = &stru_20A90;
    v81[28] = AAPPlistStringParser;
    v81[29] = 0;
    v81[30] = _INAlternativeAppNamesKey;
    v81[31] = "setAppNameSynonyms:";
    v81[32] = &stru_20A90;
    v81[33] = AAPAlternativeAppNamesParser;
    v81[34] = 0;
    v81[35] = _kCFBundleURLTypesKey;
    v81[36] = "setSupportedSchemes:";
    v81[37] = &stru_20A90;
    v81[38] = AAPPlistURLTypesSchemesParser;
    v81[39] = 0;
    v81[40] = @"SiriSupport";
    v81[41] = "setSiriSupport:";
    v81[42] = &stru_20A90;
    v81[43] = AAPPlistSiriSupportParser;
    v81[44] = 0;
    v81[45] = @"SBStarkLaunchModes";
    v81[46] = "setStarkSupport:";
    v81[47] = &stru_20A90;
    v81[48] = AAPPlistStarkSupportParser;
    v81[49] = 0;
    v81[50] = @"CFBundleCarDisplayName";
    v81[51] = "setCarPlayAlternativeDisplayName:";
    v81[52] = &stru_20A90;
    v81[53] = AAPPlistStringParser;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    v43 = v81;
    v44 = 0;
    v77[0] = kCFBundleNameKey;
    v77[1] = "setAppNameMap:";
    v77[2] = &stru_20A90;
    v77[3] = AAPPlistStringParser;
    v77[4] = 0;
    v77[5] = @"CFBundleDisplayName";
    v77[6] = "setDisplayAppNameMap:";
    v77[7] = &stru_20A90;
    v77[8] = AAPPlistStringParser;
    v77[9] = 0;
    v77[10] = @"CFBundleSpokenName";
    v77[11] = "setSpokenNameMap:";
    v77[12] = &stru_20A90;
    v77[13] = AAPPlistStringParser;
    v77[14] = 0;
    v77[15] = @"CFBundleCarDisplayName";
    v77[16] = "setCarPlayAlternativeDisplayNameMap:";
    v77[17] = &stru_20A90;
    v77[18] = AAPPlistStringParser;
    v80 = 0u;
    v79 = 0u;
    v78 = 0u;
    v41 = v77;
    v42 = 0;
    v73[0] = @"itemId";
    v73[1] = "setAdamId:";
    v73[2] = &stru_20A90;
    v73[3] = AAPPlistStringFromNumberParser;
    v73[4] = 0;
    v73[5] = @"itemName";
    v73[6] = "setSpotlightName:";
    v73[7] = &stru_20A90;
    v73[8] = AAPPlistStringParser;
    v73[9] = 0;
    v73[10] = @"artistName";
    v73[11] = "setProviderName:";
    v73[12] = &stru_20A90;
    v73[13] = AAPPlistStringParser;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v39 = v73;
    v40 = 0;
    v47 = "setAppIdentifyingInfo:";
    v48 = &stru_20A90;
    v49 = AAPAggregateSyncIdentityParser;
    v50 = 0;
    v51 = "setBetaApp:";
    v52 = &stru_20AD0;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_8360;
    v38[3] = &unk_20AF8;
    v38[4] = self;
    v53 = 0;
    v54 = v38;
    v55 = "setSupportsUniversalSearchSubscription:";
    v56 = &stru_20AD0;
    v57 = AAPUniversalSearchParser;
    v58 = 0;
    v59 = "setHasSiriIntegration:";
    v60 = &stru_20AD0;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_8390;
    v37[3] = &unk_20AF8;
    v37[4] = self;
    v61 = 0;
    v62 = v37;
    v63 = "setAppNameSynonymsMap:";
    v64 = &stru_20A90;
    v65 = AAPAlternativeAppNamesMapParser;
    v66 = 0;
    v67 = "setNowPlayingAppWithBrowsableContent:";
    v68 = &stru_20A90;
    v69 = AAPPlistBrowsableMediaParser;
    v72 = 0;
    v71 = 0u;
    v70 = 0u;
    entitlements = [(LSApplicationProxy *)self->_appProxy entitlements];
    if (!entitlements || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
      {
        sub_110D4();
      }
    }

    v8 = [(AAPSyncMetaDataItemUpdate *)self valuesForInfoPlistEntries:v43 inBundle:cf withEntitlements:entitlements forLocalization:0 ignoringDefaultValues:0];
    v44 = v8;
    if (v8)
    {
      v9 = v8;
      v10 = [v8 objectForKey:kCFBundleIdentifierKey];
      if (objc_msgSend_isEqualToString_(v10))
      {
        v30 = a2;
        v31 = v5;
        v32 = entitlements;
        v42 = [(AAPSyncMetaDataItemUpdate *)self valuesForLocalInfoPlistEntries:v41 inBundle:cf withEntitlements:entitlements ignoringDefaultValues:v9];
        if (objc_msgSend_isEqualToString_([(LSApplicationProxy *)self->_appProxy applicationType]))
        {
          v40 = -[AAPSyncMetaDataItemUpdate valuesForEntries:inPlistAtURL:](self, "valuesForEntries:inPlistAtURL:", v73, [-[LSApplicationProxy bundleContainerURL](self->_appProxy "bundleContainerURL")]);
        }

        selfCopy = self;
        v11 = 0;
        v12 = &v43;
        v46[0] = &v43;
        v46[1] = &v41;
        v46[2] = &v39;
        v46[3] = 0;
        do
        {
          v13 = *v12;
          if (**v12)
          {
            v14 = 0;
            v15 = v12[1];
            v16 = 5;
            v17 = *v12;
            do
            {
              v18 = v17[2];
              if (v18)
              {
                v19 = v17[1];
                if (!v19)
                {
                  [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:v30 file:self lineNumber:@"AAPSyncMetaDataItemUpdate.m" description:472, @"no selector defined for setter of key=%@", *v17];
                  v19 = v17[1];
                  v18 = v17[2];
                }

                (*(v18 + 16))(v18, v4, v19, [v15 objectForKey:?]);
                v13 = *v12;
              }

              ++v14;
              v17 = &v13[5 * v14];
              v20 = v13[v16];
              v16 += 5;
            }

            while (v20);
          }

          v12 = v46[++v11];
        }

        while (v12);
        if (v48)
        {
          v21 = 0;
          v22 = v44;
          v23 = v42;
          v24 = v40;
          v25 = &v47;
          do
          {
            if (!*v25)
            {
              sub_11244();
            }

            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_83F0;
            v36[3] = &unk_20B20;
            v36[4] = v22;
            v36[5] = v23;
            v36[6] = v24;
            v36[7] = v32;
            v36[8] = v25;
            v36[9] = cf;
            v26 = v25[3];
            v35[0] = _NSConcreteStackBlock;
            v35[1] = 3221225472;
            v35[2] = sub_841C;
            v35[3] = &unk_20A50;
            v35[4] = v25;
            [(AAPSyncMetaDataItemUpdate *)selfCopy valueForGenericParser:v36 withDefaultGenerator:v26 withErrorKeyDescriptor:v35];
            (*(v25[1] + 2))();
            ++v21;
            v27 = v25[5];
            v25 += 4;
          }

          while (v27);
        }

        v5 = v31;
      }

      else
      {
        v28 = os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR);
        if (v10)
        {
          if (v28)
          {
            sub_11154();
          }
        }

        else if (v28)
        {
          sub_111D0();
        }
      }
    }

    CFRelease(cf);
  }

  else if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
  {
    sub_112A0();
  }

  objc_autoreleasePoolPop(v5);
  return v4;
}

@end