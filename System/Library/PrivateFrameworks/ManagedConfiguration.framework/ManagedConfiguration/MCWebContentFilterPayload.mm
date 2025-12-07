@interface MCWebContentFilterPayload
+ (id)pluginFilterKeysAndClasses;
+ (id)typeStrings;
- (BOOL)_BOOLFromDict:(id)dict key:(id)key outError:(id *)error;
- (BOOL)_BOOLFromDictOrDefaultTrue:(id)true key:(id)key outError:(id *)error;
- (MCWebContentFilterPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)_dictsFromDict:(id)dict key:(id)key outError:(id *)error;
- (id)_stringsFromDict:(id)dict key:(id)key outError:(id *)error;
- (id)installationWarnings;
- (id)payloadDescriptionKeyValueSections;
- (id)restrictions;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)verboseDescription;
@end

@implementation MCWebContentFilterPayload

+ (id)typeStrings
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.webcontent-filter";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)pluginFilterKeysAndClasses
{
  if (pluginFilterKeysAndClasses_onceToken != -1)
  {
    +[MCWebContentFilterPayload pluginFilterKeysAndClasses];
  }

  v3 = pluginFilterKeysAndClasses_dict;

  return v3;
}

void __55__MCWebContentFilterPayload_pluginFilterKeysAndClasses__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[14] = *MEMORY[0x1E69E9840];
  v4[0] = @"UserDefinedName";
  v5[0] = objc_opt_class();
  v4[1] = @"PluginBundleID";
  v5[1] = objc_opt_class();
  v4[2] = @"ServerAddress";
  v5[2] = objc_opt_class();
  v4[3] = @"UserName";
  v5[3] = objc_opt_class();
  v4[4] = @"Password";
  v5[4] = objc_opt_class();
  v4[5] = @"PayloadCertificateUUID";
  v5[5] = objc_opt_class();
  v4[6] = @"Organization";
  v5[6] = objc_opt_class();
  v4[7] = @"VendorConfig";
  v5[7] = objc_opt_class();
  v4[8] = @"FilterBrowsers";
  v5[8] = objc_opt_class();
  v4[9] = @"FilterSockets";
  v5[9] = objc_opt_class();
  v4[10] = @"ApplicationCreated";
  v5[10] = objc_opt_class();
  v4[11] = @"Enabled";
  v5[11] = objc_opt_class();
  v4[12] = @"FilterURLs";
  v5[12] = objc_opt_class();
  v4[13] = @"URLFilterParameters";
  v5[13] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:14];
  v3 = pluginFilterKeysAndClasses_dict;
  pluginFilterKeysAndClasses_dict = v2;
}

- (MCWebContentFilterPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v129 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v121.receiver = self;
  v121.super_class = MCWebContentFilterPayload;
  v10 = [(MCPayload *)&v121 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_13;
  }

  v120 = 0;
  v12 = [(MCWebContentFilterPayload *)v10 _stringFromDict:dictionaryCopy key:@"ContentFilterUUID" outError:&v120];
  v13 = v120;
  contentFilterUUID = v11->_contentFilterUUID;
  v11->_contentFilterUUID = v12;

  if (v13)
  {
    goto LABEL_3;
  }

  v27 = [(MCWebContentFilterPayload *)v11 _stringFromDict:dictionaryCopy key:@"FilterType" outError:0];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = @"BuiltIn";
  }

  objc_storeStrong(&v11->_filterType, v29);

  v11->_hideDenyListURLs = [(MCWebContentFilterPayload *)v11 _BOOLFromDict:dictionaryCopy key:@"HideDenyListURLs" outError:0];
  v11->_safariHistoryRetentionEnabled = [(MCWebContentFilterPayload *)v11 _BOOLFromDictOrDefaultTrue:dictionaryCopy key:@"SafariHistoryRetentionEnabled" outError:0];
  isStub = [profileCopy isStub];
  v31 = [(NSString *)v11->_filterType isEqualToString:@"Plugin"];
  if (isStub)
  {
    if (v31)
    {
      v32 = [(MCWebContentFilterPayload *)v11 _stringFromDict:dictionaryCopy key:@"PluginBundleID" outError:0];
      pluginBundleID = v11->_pluginBundleID;
      v11->_pluginBundleID = v32;

      v34 = [(MCWebContentFilterPayload *)v11 _stringFromDict:dictionaryCopy key:@"UserDefinedName" outError:0];
      v13 = 0;
      name = v11->_name;
      v11->_name = v34;
LABEL_8:

      goto LABEL_9;
    }

    v38 = [(MCWebContentFilterPayload *)v11 _BOOLFromDict:dictionaryCopy key:@"AutoFilterEnabled" outError:0];
    v11->_autoFilterEnabled = v38;
    if (v38)
    {
      v39 = [(MCWebContentFilterPayload *)v11 _stringsFromDict:dictionaryCopy key:@"PermittedURLs" outError:0];
      v40 = v39;
      if (v39)
      {
        v41 = v39;
      }

      else
      {
        v41 = MEMORY[0x1E695E0F0];
      }

      objc_storeStrong(&v11->_permittedURLStrings, v41);
    }

    v42 = [(MCWebContentFilterPayload *)v11 _dictsFromDict:dictionaryCopy key:@"AllowListBookmarks" outError:0];
    v43 = v42;
    if (!v42)
    {
      v43 = [(MCWebContentFilterPayload *)v11 _dictsFromDict:dictionaryCopy key:@"WhitelistedBookmarks" outError:0];
    }

    objc_storeStrong(&v11->_allowListBookmarks, v43);
    if (!v42)
    {
    }

    name = [(MCWebContentFilterPayload *)v11 _stringsFromDict:dictionaryCopy key:@"DenyListURLs" outError:0];
    v44 = name;
    if (!name)
    {
      v44 = [(MCWebContentFilterPayload *)v11 _stringsFromDict:dictionaryCopy key:@"BlacklistedURLs" outError:0];
    }

    objc_storeStrong(&v11->_denyListURLStrings, v44);
    if (name)
    {
LABEL_52:
      v13 = 0;
      goto LABEL_8;
    }

LABEL_51:

    goto LABEL_52;
  }

  if (!v31 && ![(NSString *)v11->_filterType isEqualToString:@"BuiltIn"])
  {
    v13 = [MCPayload badFieldTypeErrorWithField:@"FilterType"];
    goto LABEL_41;
  }

  if ([(NSString *)v11->_filterType isEqualToString:@"Plugin"])
  {
    v35 = +[MCWebContentFilterPayload pluginFilterKeysAndClasses];
    v119 = 0;
    v36 = [dictionaryCopy MCMutableDictionaryContainingValidatedKeysAndClasses:v35 removeKeys:1 outError:&v119];
    v13 = v119;
    pluginConfiguration = v11->_pluginConfiguration;
    v11->_pluginConfiguration = v36;

    if (!v13)
    {
      name = [(NSDictionary *)v11->_pluginConfiguration objectForKeyedSubscript:@"PluginBundleID"];
      if (name)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([name length])
          {
            objc_storeStrong(&v11->_pluginBundleID, name);
          }
        }
      }

      v44 = [(NSDictionary *)v11->_pluginConfiguration objectForKeyedSubscript:@"UserDefinedName"];
      if (v44)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v44 length])
          {
            objc_storeStrong(&v11->_name, v44);
          }
        }
      }

      goto LABEL_51;
    }

LABEL_3:
    v15 = [(MCPayload *)v11 malformedPayloadErrorWithError:v13];
    name = v15;
    if (error)
    {
      v17 = v15;
      *error = name;
    }

    v18 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      v20 = objc_opt_class();
      v21 = v20;
      mCVerboseDescription = [name MCVerboseDescription];
      *buf = 138543618;
      v123 = v20;
      v124 = 2114;
      v125 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v19, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v11 = 0;
    goto LABEL_8;
  }

  v118 = 0;
  v45 = [(MCWebContentFilterPayload *)v11 _BOOLFromDict:dictionaryCopy key:@"AutoFilterEnabled" outError:&v118];
  v46 = v118;
  v11->_autoFilterEnabled = v45;
  if (v46)
  {
    v13 = v46;
    goto LABEL_3;
  }

  if (v45)
  {
    v117 = 0;
    v47 = [(MCWebContentFilterPayload *)v11 _stringsFromDict:dictionaryCopy key:@"PermittedURLs" outError:&v117];
    v13 = v117;
    if (v47)
    {
      v48 = v47;
    }

    else
    {
      v48 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v11->_permittedURLStrings, v48);

    if (v13)
    {
      goto LABEL_3;
    }

    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    obj = v11->_permittedURLStrings;
    v49 = [(NSArray *)obj countByEnumeratingWithState:&v113 objects:v128 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v114;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v114 != v51)
          {
            objc_enumerationMutation(obj);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v13 = [MCPayload badFieldValueErrorWithField:@"PermittedURLs"];

            goto LABEL_41;
          }
        }

        v50 = [(NSArray *)obj countByEnumeratingWithState:&v113 objects:v128 count:16];
      }

      while (v50);
    }
  }

  v112 = 0;
  v53 = [(MCWebContentFilterPayload *)v11 _stringsFromDict:dictionaryCopy key:@"DenyListURLs" outError:&v112];
  v13 = v112;
  denyListURLStrings = v11->_denyListURLStrings;
  v11->_denyListURLStrings = v53;

  if (v13)
  {
    goto LABEL_41;
  }

  v55 = v11->_denyListURLStrings;
  if (v55)
  {
    v56 = @"DenyListURLs";
  }

  else
  {
    v111 = 0;
    v84 = [(MCWebContentFilterPayload *)v11 _stringsFromDict:dictionaryCopy key:@"BlacklistedURLs" outError:&v111];
    v13 = v111;
    v85 = v11->_denyListURLStrings;
    v11->_denyListURLStrings = v84;

    if (v13)
    {
      goto LABEL_41;
    }

    v55 = v11->_denyListURLStrings;
    v56 = @"BlacklistedURLs";
  }

  v96 = v56;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  obja = v55;
  v57 = [(NSArray *)obja countByEnumeratingWithState:&v107 objects:v127 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v108;
    do
    {
      for (j = 0; j != v58; ++j)
      {
        if (*v108 != v59)
        {
          objc_enumerationMutation(obja);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = [MCPayload badFieldValueErrorWithField:v96];
          goto LABEL_117;
        }
      }

      v58 = [(NSArray *)obja countByEnumeratingWithState:&v107 objects:v127 count:16];
    }

    while (v58);
  }

  if (![(NSArray *)v11->_denyListURLStrings count])
  {
    v61 = v11->_denyListURLStrings;
    v11->_denyListURLStrings = 0;
  }

  v106 = 0;
  v62 = [(MCWebContentFilterPayload *)v11 _dictsFromDict:dictionaryCopy key:@"AllowListBookmarks" outError:&v106];
  v13 = v106;
  allowListBookmarks = v11->_allowListBookmarks;
  v11->_allowListBookmarks = v62;

  if (!v13)
  {
    v64 = v11->_allowListBookmarks;
    if (!v64)
    {
      v105 = 0;
      v86 = [(MCWebContentFilterPayload *)v11 _dictsFromDict:dictionaryCopy key:@"WhitelistedBookmarks" outError:&v105];
      v13 = v105;
      v87 = v11->_allowListBookmarks;
      v11->_allowListBookmarks = v86;

      if (v13)
      {
        goto LABEL_41;
      }

      v64 = v11->_allowListBookmarks;
    }

    obja = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v64, "count")}];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v89 = v11->_allowListBookmarks;
    v91 = [(NSArray *)v89 countByEnumeratingWithState:&v101 objects:v126 count:16];
    v13 = 0;
    if (!v91)
    {
      goto LABEL_111;
    }

    v92 = *v102;
LABEL_84:
    v65 = 0;
    while (1)
    {
      if (*v102 != v92)
      {
        objc_enumerationMutation(v89);
      }

      v95 = v65;
      v66 = *(*(&v101 + 1) + 8 * v65);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v88 = [MCPayload badFieldValueErrorWithField:@"WhitelistedBookmarks"];
        goto LABEL_126;
      }

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v67 = [v66 objectForKeyedSubscript:@"URL"];
      if (v67)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v88 = [MCPayload badFieldTypeErrorWithField:@"address"];

          goto LABEL_125;
        }

        [dictionary setObject:v67 forKeyedSubscript:@"address"];
      }

      v94 = v67;
      v68 = [v66 objectForKeyedSubscript:@"BookmarkPath"];
      if (v68)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v88 = [MCPayload badFieldTypeErrorWithField:@"bookmarkPath"];

LABEL_125:
          v13 = dictionary;
LABEL_126:

          v13 = v88;
LABEL_127:

          goto LABEL_117;
        }

        if ([(__CFString *)v68 rangeOfString:@"/" options:8]== 0x7FFFFFFFFFFFFFFFLL)
        {
          v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", v68];

          v68 = v69;
        }

        v70 = dictionary;
        v71 = dictionary;
        v72 = v68;
      }

      else
      {
        v70 = dictionary;
        v71 = dictionary;
        v72 = @"/";
      }

      [v71 setObject:v72 forKeyedSubscript:@"bookmarkPath"];
      v73 = [v66 objectForKeyedSubscript:@"Title"];
      v93 = v68;
      if (!v73)
      {
        goto LABEL_100;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v78 = [MCPayload badFieldTypeErrorWithField:@"pageTitle"];

      v77 = 0;
      v13 = v78;
      v79 = dictionary;
LABEL_108:

      if (!v77)
      {
        goto LABEL_127;
      }

      v65 = v95 + 1;
      if (v91 == v95 + 1)
      {
        v91 = [(NSArray *)v89 countByEnumeratingWithState:&v101 objects:v126 count:16];
        if (v91)
        {
          goto LABEL_84;
        }

LABEL_111:

        if ([(NSArray *)obja count])
        {
          v82 = obja;
        }

        else
        {
          v82 = 0;
        }

        v83 = v82;
        v90 = v11->_allowListBookmarks;
        v11->_allowListBookmarks = v83;

LABEL_117:
        goto LABEL_41;
      }
    }

    [v70 setObject:v73 forKeyedSubscript:@"pageTitle"];
LABEL_100:
    v98 = v73;
    [v70 objectForKeyedSubscript:@"address"];
    v75 = v74 = v70;

    if (v75)
    {
      v76 = [v74 objectForKeyedSubscript:@"pageTitle"];

      if (v76)
      {
        [(NSArray *)obja addObject:v74];
        v77 = 1;
LABEL_107:
        v79 = v74;
        v73 = v98;
        goto LABEL_108;
      }

      v80 = @"pageTitle";
    }

    else
    {
      v80 = @"address";
    }

    v81 = [MCPayload missingFieldErrorWithField:v80 underlyingError:0];

    v77 = 0;
    v13 = v81;
    goto LABEL_107;
  }

LABEL_41:
  if (v13)
  {
    goto LABEL_3;
  }

LABEL_9:
  if ([dictionaryCopy count])
  {
    v23 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v24 = v23;
      friendlyName = [(MCPayload *)v11 friendlyName];
      *buf = 138543618;
      v123 = friendlyName;
      v124 = 2114;
      v125 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v24, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_13:
  return v11;
}

- (BOOL)_BOOLFromDict:(id)dict key:(id)key outError:(id *)error
{
  keyCopy = key;
  dictCopy = dict;
  v9 = [dictCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:keyCopy isRequired:0 outError:error];

  LOBYTE(dictCopy) = [v9 BOOLValue];
  return dictCopy;
}

- (BOOL)_BOOLFromDictOrDefaultTrue:(id)true key:(id)key outError:(id *)error
{
  keyCopy = key;
  trueCopy = true;
  v9 = [trueCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:keyCopy isRequired:0 outError:error];

  if (v9)
  {
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)_stringsFromDict:(id)dict key:(id)key outError:(id *)error
{
  keyCopy = key;
  dictCopy = dict;
  v9 = [dictCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:keyCopy isRequired:0 outError:error];

  return v9;
}

- (id)_dictsFromDict:(id)dict key:(id)key outError:(id *)error
{
  keyCopy = key;
  dictCopy = dict;
  v9 = [dictCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:keyCopy isRequired:0 outError:error];

  return v9;
}

- (id)stubDictionary
{
  v24.receiver = self;
  v24.super_class = MCWebContentFilterPayload;
  stubDictionary = [(MCPayload *)&v24 stubDictionary];
  contentFilterUUID = [(MCWebContentFilterPayload *)self contentFilterUUID];

  if (contentFilterUUID)
  {
    contentFilterUUID2 = [(MCWebContentFilterPayload *)self contentFilterUUID];
    [stubDictionary setObject:contentFilterUUID2 forKeyedSubscript:@"ContentFilterUUID"];
  }

  filterType = [(MCWebContentFilterPayload *)self filterType];

  if (filterType)
  {
    filterType2 = [(MCWebContentFilterPayload *)self filterType];
    [stubDictionary setObject:filterType2 forKeyedSubscript:@"FilterType"];
  }

  if ([(MCWebContentFilterPayload *)self hideDenyListURLs])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCWebContentFilterPayload hideDenyListURLs](self, "hideDenyListURLs")}];
    [stubDictionary setObject:v8 forKeyedSubscript:@"HideDenyListURLs"];
  }

  filterType3 = [(MCWebContentFilterPayload *)self filterType];
  v10 = [filterType3 isEqualToString:@"Plugin"];

  if (v10)
  {
    pluginBundleID = [(MCWebContentFilterPayload *)self pluginBundleID];

    if (pluginBundleID)
    {
      pluginBundleID2 = [(MCWebContentFilterPayload *)self pluginBundleID];
      [stubDictionary setObject:pluginBundleID2 forKeyedSubscript:@"PluginBundleID"];
    }

    name = [(MCWebContentFilterPayload *)self name];

    if (name)
    {
      name2 = [(MCWebContentFilterPayload *)self name];
      v15 = @"UserDefinedName";
LABEL_20:
      [stubDictionary setObject:name2 forKeyedSubscript:v15];
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCWebContentFilterPayload autoFilterEnabled](self, "autoFilterEnabled")}];
    [stubDictionary setObject:v16 forKeyedSubscript:@"AutoFilterEnabled"];

    permittedURLStrings = [(MCWebContentFilterPayload *)self permittedURLStrings];

    if (permittedURLStrings)
    {
      permittedURLStrings2 = [(MCWebContentFilterPayload *)self permittedURLStrings];
      [stubDictionary setObject:permittedURLStrings2 forKeyedSubscript:@"PermittedURLs"];
    }

    allowListBookmarks = [(MCWebContentFilterPayload *)self allowListBookmarks];

    if (allowListBookmarks)
    {
      allowListBookmarks2 = [(MCWebContentFilterPayload *)self allowListBookmarks];
      [stubDictionary setObject:allowListBookmarks2 forKeyedSubscript:@"AllowListBookmarks"];
    }

    denyListURLStrings = [(MCWebContentFilterPayload *)self denyListURLStrings];

    if (denyListURLStrings)
    {
      denyListURLStrings2 = [(MCWebContentFilterPayload *)self denyListURLStrings];
      [stubDictionary setObject:denyListURLStrings2 forKeyedSubscript:@"DenyListURLs"];
    }

    if ([(MCWebContentFilterPayload *)self safariHistoryRetentionEnabled])
    {
      name2 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCWebContentFilterPayload safariHistoryRetentionEnabled](self, "safariHistoryRetentionEnabled")}];
      v15 = @"SafariHistoryRetentionEnabled";
      goto LABEL_20;
    }
  }

  return stubDictionary;
}

- (id)restrictions
{
  v50[2] = *MEMORY[0x1E69E9840];
  filterType = [(MCWebContentFilterPayload *)self filterType];
  v4 = [filterType isEqualToString:@"Plugin"];

  if (v4)
  {
    dictionary = 0;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:dictionary2 forKeyedSubscript:@"restrictedBool"];
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:dictionary3 forKeyedSubscript:@"intersection"];
    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:dictionary4 forKeyedSubscript:@"union"];
    if ([(MCWebContentFilterPayload *)self autoFilterEnabled])
    {
      v49[0] = @"value";
      v49[1] = @"preference";
      v50[0] = MEMORY[0x1E695E118];
      v50[1] = MEMORY[0x1E695E118];
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
      [dictionary2 setObject:v9 forKeyedSubscript:@"forceWebContentFilterAuto"];
    }

    permittedURLStrings = [(MCWebContentFilterPayload *)self permittedURLStrings];

    if (permittedURLStrings)
    {
      v47 = @"values";
      permittedURLStrings2 = [(MCWebContentFilterPayload *)self permittedURLStrings];
      v48 = permittedURLStrings2;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      [dictionary3 setObject:v12 forKeyedSubscript:@"webContentFilterAutoPermittedURLs"];
    }

    allowListBookmarks = [(MCWebContentFilterPayload *)self allowListBookmarks];

    if (allowListBookmarks)
    {
      v33 = dictionary4;
      v14 = MEMORY[0x1E695DF70];
      allowListBookmarks2 = [(MCWebContentFilterPayload *)self allowListBookmarks];
      v16 = [v14 arrayWithCapacity:{objc_msgSend(allowListBookmarks2, "count")}];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      allowListBookmarks3 = [(MCWebContentFilterPayload *)self allowListBookmarks];
      v18 = [allowListBookmarks3 countByEnumeratingWithState:&v34 objects:v46 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v35;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v35 != v20)
            {
              objc_enumerationMutation(allowListBookmarks3);
            }

            v22 = [*(*(&v34 + 1) + 8 * i) objectForKeyedSubscript:@"address"];
            [v16 addObject:v22];
          }

          v19 = [allowListBookmarks3 countByEnumeratingWithState:&v34 objects:v46 count:16];
        }

        while (v19);
      }

      v44 = @"values";
      v45 = v16;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      [dictionary3 setObject:v23 forKeyedSubscript:@"webContentFilterWhitelistedURLs"];

      dictionary4 = v33;
    }

    denyListURLStrings = [(MCWebContentFilterPayload *)self denyListURLStrings];

    if (denyListURLStrings)
    {
      v42 = @"values";
      denyListURLStrings2 = [(MCWebContentFilterPayload *)self denyListURLStrings];
      v43 = denyListURLStrings2;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      [dictionary4 setObject:v26 forKeyedSubscript:@"webContentFilterBlacklistedURLs"];
    }

    filterType2 = [(MCWebContentFilterPayload *)self filterType];
    v28 = [filterType2 isEqualToString:@"BuiltIn"];

    if (v28 && [(MCWebContentFilterPayload *)self safariHistoryRetentionEnabled])
    {
      v29 = MEMORY[0x1E695E110];
      v40[0] = @"value";
      v40[1] = @"preference";
      v41[0] = MEMORY[0x1E695E110];
      v41[1] = MEMORY[0x1E695E110];
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
      [dictionary2 setObject:v30 forKeyedSubscript:@"allowSafariPrivateBrowsing"];

      v38[0] = @"value";
      v38[1] = @"preference";
      v39[0] = v29;
      v39[1] = v29;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
      [dictionary2 setObject:v31 forKeyedSubscript:@"allowSafariHistoryClearing"];
    }
  }

  return dictionary;
}

- (id)verboseDescription
{
  v18.receiver = self;
  v18.super_class = MCWebContentFilterPayload;
  verboseDescription = [(MCPayload *)&v18 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  filterType = [(MCWebContentFilterPayload *)self filterType];
  [v4 appendFormat:@"Type : %@\n", filterType];

  filterType2 = [(MCWebContentFilterPayload *)self filterType];
  v7 = [filterType2 isEqualToString:@"Plugin"];

  if ((v7 & 1) == 0)
  {
    if ([(MCWebContentFilterPayload *)self autoFilterEnabled])
    {
      v8 = @"Yes";
    }

    else
    {
      v8 = @"No";
    }

    [v4 appendFormat:@"Auto Filter    : %@\n", v8];
    permittedURLStrings = [(MCWebContentFilterPayload *)self permittedURLStrings];

    if (permittedURLStrings)
    {
      permittedURLStrings2 = [(MCWebContentFilterPayload *)self permittedURLStrings];
      [v4 appendFormat:@"Permitted URLs:\n%@\n", permittedURLStrings2];
    }

    allowListBookmarks = [(MCWebContentFilterPayload *)self allowListBookmarks];

    if (allowListBookmarks)
    {
      allowListBookmarks2 = [(MCWebContentFilterPayload *)self allowListBookmarks];
      [v4 appendFormat:@"Allowed bookmarks:\n%@\n", allowListBookmarks2];
    }

    denyListURLStrings = [(MCWebContentFilterPayload *)self denyListURLStrings];

    if (denyListURLStrings)
    {
      denyListURLStrings2 = [(MCWebContentFilterPayload *)self denyListURLStrings];
      [v4 appendFormat:@"Denied URLs:\n%@\n", denyListURLStrings2];
    }

    if ([(MCWebContentFilterPayload *)self safariHistoryRetentionEnabled])
    {
      if ([(MCWebContentFilterPayload *)self safariHistoryRetentionEnabled])
      {
        v15 = @"Yes";
      }

      else
      {
        v15 = @"No";
      }

      [v4 appendFormat:@"Safari history retention:\n%@\n", v15];
    }
  }

  contentFilterUUID = [(MCWebContentFilterPayload *)self contentFilterUUID];
  [v4 appendFormat:@"ContentFilterUUID     : %@\n", contentFilterUUID];

  return v4;
}

- (id)subtitle1Description
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(MCWebContentFilterPayload *)self autoFilterEnabled])
  {
    v11 = MCLocalizedFormat(@"WEB_FILTER_DESC_AUTOFILTER", v4, v5, v6, v7, v8, v9, v10, v45);
    [array addObject:v11];
  }

  allowListBookmarks = [(MCWebContentFilterPayload *)self allowListBookmarks];
  v13 = [allowListBookmarks count];

  if (v13)
  {
    v21 = MCLocalizedFormat(@"WEB_FILTER_DESC_ALLOW_LIST", v14, v15, v16, v17, v18, v19, v20, v45);
    [array addObject:v21];
  }

  denyListURLStrings = [(MCWebContentFilterPayload *)self denyListURLStrings];
  v23 = [denyListURLStrings count];

  if (v23)
  {
    v31 = MCLocalizedFormat(@"WEB_FILTER_DESC_DENY_LIST", v24, v25, v26, v27, v28, v29, v30, v45);
    [array addObject:v31];
  }

  filterType = [(MCWebContentFilterPayload *)self filterType];
  v33 = [filterType isEqualToString:@"Plugin"];

  if (v33)
  {
    v34 = MCLocalizedString(@"WEB_FILTER_DESC_PLUGIN");
    [array addObject:v34];
  }

  if ([array count])
  {
    v42 = MCLocalizedFormat(@"WEB_FILTER_SEPARATOR", v35, v36, v37, v38, v39, v40, v41, v45);
    v43 = [array componentsJoinedByString:v42];
  }

  else
  {
    v43 = MCLocalizedFormat(@"WEB_FILTER_DESC_NONE", v35, v36, v37, v38, v39, v40, v41, v45);
  }

  return v43;
}

- (id)payloadDescriptionKeyValueSections
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [MCKeyValue alloc];
  v6 = MCLocalizedStringForBool([(MCWebContentFilterPayload *)self autoFilterEnabled]);
  v7 = MCLocalizedString(@"AUTO_FILTER_ENABLED");
  v8 = [(MCKeyValue *)v5 initWithLocalizedString:v6 localizedKey:v7];
  [v4 addObject:v8];

  pluginBundleID = [(MCWebContentFilterPayload *)self pluginBundleID];

  if (pluginBundleID)
  {
    v10 = [MCKeyValue alloc];
    pluginBundleID2 = [(MCWebContentFilterPayload *)self pluginBundleID];
    v12 = MCLocalizedString(@"PLUGIN_BUNDLE_ID");
    v13 = [(MCKeyValue *)v10 initWithLocalizedString:pluginBundleID2 localizedKey:v12];

    [v4 addObject:v13];
  }

  contentFilterUUID = [(MCWebContentFilterPayload *)self contentFilterUUID];

  if (contentFilterUUID)
  {
    v15 = [MCKeyValue alloc];
    contentFilterUUID2 = [(MCWebContentFilterPayload *)self contentFilterUUID];
    v17 = MCLocalizedString(@"WEB_FILTER_CONTENTFILTERUUID");
    v18 = [(MCKeyValue *)v15 initWithLocalizedString:contentFilterUUID2 localizedKey:v17];

    [v4 addObject:v18];
  }

  if ([(MCWebContentFilterPayload *)self safariHistoryRetentionEnabled])
  {
    v19 = [MCKeyValue alloc];
    v20 = MCLocalizedStringForBool([(MCWebContentFilterPayload *)self safariHistoryRetentionEnabled]);
    v21 = MCLocalizedString(@"BROWSING_HISTORY_RETENTION");
    v22 = [(MCKeyValue *)v19 initWithLocalizedString:v20 localizedKey:v21];

    [v4 addObject:v22];
  }

  if ([v4 count])
  {
    v23 = [MCKeyValueSection sectionWithKeyValues:v4];
    [v3 addObject:v23];
  }

  permittedURLStrings = [(MCWebContentFilterPayload *)self permittedURLStrings];
  v25 = [permittedURLStrings count];

  if (v25)
  {
    permittedURLStrings2 = [(MCWebContentFilterPayload *)self permittedURLStrings];
    v27 = MCLocalizedString(@"PERMITTED_URLS");
    v28 = [MCKeyValueSection sectionWithLocalizedArray:permittedURLStrings2 title:v27 footer:0];

    [v3 addObject:v28];
  }

  v50 = v3;
  v29 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  allowListBookmarks = [(MCWebContentFilterPayload *)self allowListBookmarks];
  v31 = [allowListBookmarks countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v52;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v52 != v33)
        {
          objc_enumerationMutation(allowListBookmarks);
        }

        v35 = *(*(&v51 + 1) + 8 * i);
        v36 = [v35 objectForKeyedSubscript:@"pageTitle"];
        v37 = v36;
        if (!v36 || ![v36 length])
        {
          v38 = [v35 objectForKeyedSubscript:@"address"];

          v37 = v38;
          if (!v38)
          {
            continue;
          }
        }

        [v29 addObject:v37];
      }

      v32 = [allowListBookmarks countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v32);
  }

  v39 = v50;
  if ([v29 count])
  {
    v40 = MCLocalizedString(@"ALLOWED_BOOKMARKS");
    v41 = [MCKeyValueSection sectionWithLocalizedArray:v29 title:v40 footer:0];

    [v50 addObject:v41];
  }

  denyListURLStrings = [(MCWebContentFilterPayload *)self denyListURLStrings];
  v43 = [denyListURLStrings count];

  if (v43)
  {
    if ([(MCWebContentFilterPayload *)self hideDenyListURLs])
    {
      v44 = @"PROHIBITED_URLS_HIDDEN";
    }

    else
    {
      v44 = @"PROHIBITED_URLS";
    }

    v45 = MCLocalizedString(v44);
    if ([(MCWebContentFilterPayload *)self hideDenyListURLs])
    {
      denyListURLStrings2 = MEMORY[0x1E695E0F0];
    }

    else
    {
      denyListURLStrings2 = [(MCWebContentFilterPayload *)self denyListURLStrings];
    }

    v47 = [MCKeyValueSection sectionWithLocalizedArray:denyListURLStrings2 title:v45 footer:0];
    [v50 addObject:v47];
  }

  if (![v50 count])
  {

    v39 = 0;
  }

  return v39;
}

- (id)installationWarnings
{
  filterType = [(MCWebContentFilterPayload *)self filterType];
  v3 = [filterType isEqualToString:@"BuiltIn"];

  if (v3)
  {
    v4 = @"INSTALL_WARNING_WEB_CONTENT_FILTER_TITLE";
  }

  else
  {
    v4 = @"INSTALL_WARNING_PLUGIN_CONTENT_FILTER_TITLE";
  }

  if (v3)
  {
    v5 = @"INSTALL_WARNING_WEB_CONTENT_FILTER";
  }

  else
  {
    v5 = @"INSTALL_WARNING_PLUGIN_CONTENT_FILTER";
  }

  v6 = MCLocalizedString(v4);
  v7 = MCLocalizedStringByDevice(v5);
  v8 = [MCProfileWarning warningWithLocalizedTitle:v6 localizedBody:v7 isLongForm:1];

  v9 = [MEMORY[0x1E695DEC8] arrayWithObject:v8];

  return v9;
}

@end