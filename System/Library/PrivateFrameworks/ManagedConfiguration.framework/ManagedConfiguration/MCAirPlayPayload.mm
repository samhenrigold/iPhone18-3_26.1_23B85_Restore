@interface MCAirPlayPayload
+ (id)typeStrings;
- (MCAirPlayPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (NSArray)titlesAndDescriptions;
- (id)namesOrIdsForAllowedDestinations;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)subtitle1Label;
- (id)subtitle2Description;
- (id)subtitle2Label;
- (id)verboseDescription;
@end

@implementation MCAirPlayPayload

+ (id)typeStrings
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.airplay";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (MCAirPlayPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v125 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v116.receiver = self;
  v116.super_class = MCAirPlayPayload;
  v10 = [(MCPayload *)&v116 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    goto LABEL_91;
  }

  v115 = 0;
  v11 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"AllowList" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v115];
  v12 = v115;
  v13 = &_MCLogObjects;
  if (v12 || !v11 && (v114 = 0, [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"Whitelist" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v114], v11 = objc_claimAutoreleasedReturnValue(), (v12 = v114) != 0))
  {
    v14 = v12;
    goto LABEL_82;
  }

  v92 = v10;
  v93 = v11;
  v91 = profileCopy;
  if (![profileCopy isStub])
  {
    mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
    isSupervised = [mEMORY[0x1E69AD420] isSupervised];

    v36 = 0x1E77CF000;
    if (!isSupervised)
    {
      goto LABEL_39;
    }

    v89 = dictionaryCopy;
    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    array = v93;
    v38 = [array countByEnumeratingWithState:&v101 objects:v122 count:16];
    if (!v38)
    {
      goto LABEL_38;
    }

    v39 = v38;
    v40 = *v102;
    v41 = @"DeviceName";
    errorCopy2 = error;
    while (1)
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v102 != v40)
        {
          objc_enumerationMutation(array);
        }

        v43 = *(*(&v101 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = [MCPayload badFieldTypeErrorWithField:@"Whitelist"];
          goto LABEL_72;
        }

        v44 = [v43 objectForKey:@"DeviceID"];
        v45 = [v43 objectForKey:@"DeviceName"];
        if (v45)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        if (v44)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v41 = @"DeviceID";
LABEL_71:
            v14 = [MCPayload badFieldValueErrorWithField:v41];

LABEL_72:
            dictionaryCopy = v89;
            v10 = v92;
            goto LABEL_78;
          }
        }

        if ([v45 length])
        {
          v46 = v13;
          v47 = objc_alloc_init(MCAirPlayDestination);
          [(MCAirPlayDestination *)v47 setDeviceName:v45];
        }

        else
        {
          if (![v44 length])
          {
            goto LABEL_36;
          }

          v46 = v13;
          v47 = objc_alloc_init(MCAirPlayDestination);
          uppercaseString = [v44 uppercaseString];
          [(MCAirPlayDestination *)v47 setDeviceID:uppercaseString];
        }

        [v33 addObject:v47];

        v13 = v46;
        v36 = 0x1E77CF000uLL;
        v41 = @"DeviceName";
LABEL_36:
      }

      v39 = [array countByEnumeratingWithState:&v101 objects:v122 count:16];
      error = errorCopy2;
      if (!v39)
      {
LABEL_38:

        [(MCAirPlayPayload *)v92 setAllowListDestinations:v33];
        dictionaryCopy = v89;
LABEL_39:
        v49 = *(v36 + 1640);
        v100 = 0;
        v33 = [v49 removeOptionalObjectInDictionary:dictionaryCopy key:@"Passwords" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v100];
        v50 = v100;
        if (v50)
        {
          v14 = v50;
          v10 = v92;
          goto LABEL_80;
        }

        array = [MEMORY[0x1E695DF70] array];
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v33 = v33;
        v57 = [v33 countByEnumeratingWithState:&v96 objects:v121 count:16];
        if (!v57)
        {
LABEL_68:

          v10 = v92;
          [(MCAirPlayPayload *)v92 setDestinationsWithPasswords:array];
          v14 = 0;
          v13 = &_MCLogObjects;
          goto LABEL_79;
        }

        v58 = v57;
        v59 = *v97;
        v60 = 0x1E695D000uLL;
        v61 = @"DeviceName";
        v62 = 0x1E696A000uLL;
        errorCopy2 = error;
        v90 = dictionaryCopy;
LABEL_55:
        v63 = 0;
        v95 = v58;
        while (1)
        {
          if (*v97 != v59)
          {
            objc_enumerationMutation(v33);
          }

          v64 = *(*(&v96 + 1) + 8 * v63);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v14 = [MCPayload badFieldTypeErrorWithField:@"Passwords"];
            goto LABEL_77;
          }

          v65 = [v64 objectForKey:v61];
          if (!v65 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v14 = [MCPayload badFieldTypeErrorWithField:@"DeviceName"];
            goto LABEL_75;
          }

          v66 = [v64 objectForKey:@"Password"];
          if (!v66)
          {
            break;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          if ([v65 length] && objc_msgSend(v66, "length"))
          {
            v67 = v59;
            v68 = v62;
            v69 = v61;
            v70 = v60;
            v71 = objc_alloc_init(MCAirPlayDestination);
            [(MCAirPlayDestination *)v71 setDeviceName:v65];
            [(MCAirPlayDestination *)v71 setPassword:v66];
            [array addObject:v71];

            v60 = v70;
            v61 = v69;
            v62 = v68;
            v59 = v67;
            v58 = v95;
          }

          if (v58 == ++v63)
          {
            v58 = [v33 countByEnumeratingWithState:&v96 objects:v121 count:16];
            error = errorCopy2;
            dictionaryCopy = v90;
            if (!v58)
            {
              goto LABEL_68;
            }

            goto LABEL_55;
          }
        }

        v14 = [MCPayload badFieldTypeErrorWithField:@"Password"];

LABEL_75:
LABEL_77:

        dictionaryCopy = v90;
        v10 = v92;
        v13 = &_MCLogObjects;
LABEL_78:
        error = errorCopy2;
        goto LABEL_79;
      }
    }
  }

  errorCopy3 = error;
  v88 = dictionaryCopy;
  array2 = [MEMORY[0x1E695DF70] array];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v16 = v93;
  v17 = [v16 countByEnumeratingWithState:&v110 objects:v124 count:16];
  if (!v17)
  {
    goto LABEL_18;
  }

  v18 = v17;
  v19 = *v111;
  v20 = @"DeviceID";
  v21 = @"DeviceName";
  do
  {
    v22 = 0;
    v94 = v18;
    do
    {
      if (*v111 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v23 = *(*(&v110 + 1) + 8 * v22);
      v24 = [v23 objectForKey:v20];
      v25 = [v23 objectForKey:v21];
      if (v25)
      {
        v26 = objc_alloc_init(MCAirPlayDestination);
        [(MCAirPlayDestination *)v26 setDeviceName:v25];
      }

      else
      {
        if (!v24)
        {
          goto LABEL_16;
        }

        [v24 uppercaseString];
        v27 = v19;
        v28 = array2;
        v29 = v21;
        v30 = v20;
        v32 = v31 = v16;

        v26 = objc_alloc_init(MCAirPlayDestination);
        [(MCAirPlayDestination *)v26 setDeviceID:v32];
        v24 = v32;
        v16 = v31;
        v20 = v30;
        v21 = v29;
        array2 = v28;
        v19 = v27;
        v18 = v94;
      }

      [array2 addObject:v26];

LABEL_16:
      ++v22;
    }

    while (v18 != v22);
    v18 = [v16 countByEnumeratingWithState:&v110 objects:v124 count:16];
  }

  while (v18);
LABEL_18:

  v10 = v92;
  [(MCAirPlayPayload *)v92 setAllowListDestinations:array2];

  v109 = 0;
  dictionaryCopy = v88;
  v33 = [MCProfile removeOptionalObjectInDictionary:v88 key:@"Passwords" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v109];
  v14 = v109;
  if (v14)
  {
    v13 = &_MCLogObjects;
    error = errorCopy3;
    goto LABEL_80;
  }

  array = [MEMORY[0x1E695DF70] array];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v33 = v33;
  v51 = [v33 countByEnumeratingWithState:&v105 objects:v123 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v106;
    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v106 != v53)
        {
          objc_enumerationMutation(v33);
        }

        v55 = [*(*(&v105 + 1) + 8 * j) objectForKey:@"DeviceName"];
        if (v55)
        {
          v56 = objc_alloc_init(MCAirPlayDestination);
          [(MCAirPlayDestination *)v56 setDeviceName:v55];
          [array addObject:v56];
        }
      }

      v52 = [v33 countByEnumeratingWithState:&v105 objects:v123 count:16];
    }

    while (v52);
  }

  v10 = v92;
  [(MCAirPlayPayload *)v92 setDestinationsWithPasswords:array];
  error = errorCopy3;
  dictionaryCopy = v88;
  v13 = &_MCLogObjects;
  v14 = 0;
LABEL_79:

LABEL_80:
  if (v14)
  {
    profileCopy = v91;
    v11 = v93;
LABEL_82:
    v72 = [(MCPayload *)v10 malformedPayloadErrorWithError:v14];
    v73 = v72;
    if (error)
    {
      v74 = v72;
      *error = v73;
    }

    v75 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v76 = v75;
      v77 = objc_opt_class();
      v78 = v77;
      [v73 MCVerboseDescription];
      v79 = v14;
      v81 = v80 = v11;
      *buf = 138543618;
      v118 = v77;
      v119 = 2114;
      v120 = v81;
      _os_log_impl(&dword_1A795B000, v76, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);

      v11 = v80;
      v14 = v79;

      v13 = &_MCLogObjects;
    }

    v10 = 0;
  }

  else
  {
    profileCopy = v91;
    v11 = v93;
  }

  if ([dictionaryCopy count])
  {
    v82 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
    {
      v83 = v82;
      friendlyName = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v118 = friendlyName;
      v119 = 2114;
      v120 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v83, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_91:
  return v10;
}

- (id)stubDictionary
{
  v47 = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = MCAirPlayPayload;
  stubDictionary = [(MCPayload *)&v44 stubDictionary];
  allowListDestinations = [(MCAirPlayPayload *)self allowListDestinations];

  if (allowListDestinations)
  {
    v35 = stubDictionary;
    v5 = MEMORY[0x1E695DF70];
    allowListDestinations2 = [(MCAirPlayPayload *)self allowListDestinations];
    v7 = [v5 arrayWithCapacity:{objc_msgSend(allowListDestinations2, "count")}];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    allowListDestinations3 = [(MCAirPlayPayload *)self allowListDestinations];
    v9 = [allowListDestinations3 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = v9;
    v11 = *v41;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(allowListDestinations3);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        deviceName = [v13 deviceName];

        if (deviceName)
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          deviceName2 = [v13 deviceName];
          v17 = dictionary;
          v18 = deviceName2;
          v19 = @"DeviceName";
        }

        else
        {
          deviceID = [v13 deviceID];

          if (!deviceID)
          {
            continue;
          }

          dictionary = [MEMORY[0x1E695DF90] dictionary];
          deviceName2 = [v13 deviceID];
          v17 = dictionary;
          v18 = deviceName2;
          v19 = @"DeviceID";
        }

        [v17 setObject:v18 forKey:v19];

        [v7 addObject:dictionary];
      }

      v10 = [allowListDestinations3 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (!v10)
      {
LABEL_14:

        stubDictionary = v35;
        [v35 setObject:v7 forKey:@"Whitelist"];

        break;
      }
    }
  }

  destinationsWithPasswords = [(MCAirPlayPayload *)self destinationsWithPasswords];

  if (destinationsWithPasswords)
  {
    v22 = MEMORY[0x1E695DF70];
    destinationsWithPasswords2 = [(MCAirPlayPayload *)self destinationsWithPasswords];
    v24 = [v22 arrayWithCapacity:{objc_msgSend(destinationsWithPasswords2, "count")}];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    destinationsWithPasswords3 = [(MCAirPlayPayload *)self destinationsWithPasswords];
    v26 = [destinationsWithPasswords3 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v37;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v37 != v28)
          {
            objc_enumerationMutation(destinationsWithPasswords3);
          }

          v30 = *(*(&v36 + 1) + 8 * j);
          deviceName3 = [v30 deviceName];

          if (deviceName3)
          {
            dictionary2 = [MEMORY[0x1E695DF90] dictionary];
            deviceName4 = [v30 deviceName];
            [dictionary2 setObject:deviceName4 forKey:@"DeviceName"];

            [v24 addObject:dictionary2];
          }
        }

        v27 = [destinationsWithPasswords3 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v27);
    }

    [stubDictionary setObject:v24 forKey:@"Passwords"];
  }

  return stubDictionary;
}

- (id)namesOrIdsForAllowedDestinations
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  [dictionary setObject:array forKeyedSubscript:@"DeviceNames"];

  array2 = [MEMORY[0x1E695DF70] array];
  [dictionary setObject:array2 forKeyedSubscript:@"DeviceIDs"];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allowListDestinations = [(MCAirPlayPayload *)self allowListDestinations];
  v7 = [allowListDestinations countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(allowListDestinations);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        deviceName = [v11 deviceName];

        if (deviceName)
        {
          v13 = [dictionary objectForKeyedSubscript:@"DeviceNames"];
          [v11 deviceName];
        }

        else
        {
          v13 = [dictionary objectForKeyedSubscript:@"DeviceIDs"];
          [v11 deviceID];
        }
        v14 = ;
        [v13 addObject:v14];
      }

      v8 = [allowListDestinations countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return dictionary;
}

- (NSArray)titlesAndDescriptions
{
  v38[2] = *MEMORY[0x1E69E9840];
  titlesAndDescriptions = self->_titlesAndDescriptions;
  if (!titlesAndDescriptions)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    allowListDestinations = [(MCAirPlayPayload *)self allowListDestinations];
    v6 = [allowListDestinations count];

    if (v6)
    {
      v37[0] = @"t";
      v7 = MCLocalizedString(@"AIRPLAY_ALLOW_LIST_TITLE_COLON");
      v37[1] = @"d";
      v38[0] = v7;
      allowListDestinations2 = [(MCAirPlayPayload *)self allowListDestinations];
      v9 = [allowListDestinations2 count];
      v17 = MCLocalizedFormat(@"AIRPLAY_DESTINATION_COUNT", v10, v11, v12, v13, v14, v15, v16, v9);
      v38[1] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
      [(NSArray *)v4 addObject:v18];
    }

    destinationsWithPasswords = [(MCAirPlayPayload *)self destinationsWithPasswords];
    v20 = [destinationsWithPasswords count];

    if (v20)
    {
      v35[0] = @"t";
      v21 = MCLocalizedString(@"AIRPLAY_PASSWORD_TITLE_COLON");
      v35[1] = @"d";
      v36[0] = v21;
      destinationsWithPasswords2 = [(MCAirPlayPayload *)self destinationsWithPasswords];
      v23 = [destinationsWithPasswords2 count];
      v31 = MCLocalizedFormat(@"AIRPLAY_DESTINATION_COUNT", v24, v25, v26, v27, v28, v29, v30, v23);
      v36[1] = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
      [(NSArray *)v4 addObject:v32];
    }

    v33 = self->_titlesAndDescriptions;
    self->_titlesAndDescriptions = v4;

    titlesAndDescriptions = self->_titlesAndDescriptions;
  }

  return titlesAndDescriptions;
}

- (id)subtitle1Label
{
  titlesAndDescriptions = [(MCAirPlayPayload *)self titlesAndDescriptions];
  v4 = [titlesAndDescriptions count];

  if (v4)
  {
    titlesAndDescriptions2 = [(MCAirPlayPayload *)self titlesAndDescriptions];
    v6 = [titlesAndDescriptions2 objectAtIndex:0];
    v7 = [v6 objectForKey:@"t"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)subtitle1Description
{
  titlesAndDescriptions = [(MCAirPlayPayload *)self titlesAndDescriptions];
  v4 = [titlesAndDescriptions count];

  if (v4)
  {
    titlesAndDescriptions2 = [(MCAirPlayPayload *)self titlesAndDescriptions];
    v6 = [titlesAndDescriptions2 objectAtIndex:0];
    v7 = [v6 objectForKey:@"d"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)subtitle2Label
{
  titlesAndDescriptions = [(MCAirPlayPayload *)self titlesAndDescriptions];
  v4 = [titlesAndDescriptions count];

  if (v4 < 2)
  {
    v7 = 0;
  }

  else
  {
    titlesAndDescriptions2 = [(MCAirPlayPayload *)self titlesAndDescriptions];
    v6 = [titlesAndDescriptions2 objectAtIndex:1];
    v7 = [v6 objectForKey:@"t"];
  }

  return v7;
}

- (id)subtitle2Description
{
  titlesAndDescriptions = [(MCAirPlayPayload *)self titlesAndDescriptions];
  v4 = [titlesAndDescriptions count];

  if (v4 < 2)
  {
    v7 = 0;
  }

  else
  {
    titlesAndDescriptions2 = [(MCAirPlayPayload *)self titlesAndDescriptions];
    v6 = [titlesAndDescriptions2 objectAtIndex:1];
    v7 = [v6 objectForKey:@"d"];
  }

  return v7;
}

- (id)payloadDescriptionKeyValueSections
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  allowListDestinations = [(MCAirPlayPayload *)self allowListDestinations];
  v5 = [allowListDestinations count];

  v6 = 0x1E77CF000;
  if (v5)
  {
    v7 = MEMORY[0x1E695DF70];
    allowListDestinations2 = [(MCAirPlayPayload *)self allowListDestinations];
    v9 = [v7 arrayWithCapacity:{objc_msgSend(allowListDestinations2, "count")}];

    v10 = MEMORY[0x1E695DF70];
    allowListDestinations3 = [(MCAirPlayPayload *)self allowListDestinations];
    v12 = [v10 arrayWithCapacity:{objc_msgSend(allowListDestinations3, "count")}];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    allowListDestinations4 = [(MCAirPlayPayload *)self allowListDestinations];
    v14 = [allowListDestinations4 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v46;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v46 != v16)
          {
            objc_enumerationMutation(allowListDestinations4);
          }

          v18 = *(*(&v45 + 1) + 8 * i);
          deviceName = [v18 deviceName];

          if (deviceName)
          {
            deviceName2 = [v18 deviceName];
            v21 = v9;
          }

          else
          {
            deviceName2 = [v18 deviceID];
            v21 = v12;
          }

          [v21 addObject:deviceName2];
        }

        v15 = [allowListDestinations4 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v15);
    }

    v6 = 0x1E77CF000uLL;
    if ([v9 count])
    {
      v22 = MCLocalizedString(@"ALLOWED_DEVICE_NAMES");
      v23 = [MCKeyValueSection sectionWithLocalizedArray:v9 title:v22 footer:0];

      [v3 addObject:v23];
    }

    if ([v12 count])
    {
      v24 = MCLocalizedString(@"ALLOWED_DEVICE_IDS");
      v25 = [MCKeyValueSection sectionWithLocalizedArray:v12 title:v24 footer:0];

      [v3 addObject:v25];
    }
  }

  destinationsWithPasswords = [(MCAirPlayPayload *)self destinationsWithPasswords];
  v27 = [destinationsWithPasswords count];

  if (v27)
  {
    v28 = MEMORY[0x1E695DF70];
    destinationsWithPasswords2 = [(MCAirPlayPayload *)self destinationsWithPasswords];
    v30 = [v28 arrayWithCapacity:{objc_msgSend(destinationsWithPasswords2, "count")}];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    destinationsWithPasswords3 = [(MCAirPlayPayload *)self destinationsWithPasswords];
    v32 = [destinationsWithPasswords3 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v42;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v42 != v34)
          {
            objc_enumerationMutation(destinationsWithPasswords3);
          }

          deviceName3 = [*(*(&v41 + 1) + 8 * j) deviceName];
          [v30 addObject:deviceName3];
        }

        v33 = [destinationsWithPasswords3 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v33);
    }

    v37 = *(v6 + 1496);
    v38 = MCLocalizedString(@"DESTINATIONS_WITH_PASSWORD");
    v39 = [v37 sectionWithLocalizedArray:v30 title:v38 footer:0];

    [v3 addObject:v39];
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

- (id)verboseDescription
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v31.receiver = self;
  v31.super_class = MCAirPlayPayload;
  verboseDescription = [(MCPayload *)&v31 verboseDescription];
  v5 = [v3 stringWithString:verboseDescription];

  allowListDestinations = [(MCAirPlayPayload *)self allowListDestinations];
  [v5 appendFormat:@"Allow List   : %d entries\n", objc_msgSend(allowListDestinations, "count")];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  allowListDestinations2 = [(MCAirPlayPayload *)self allowListDestinations];
  v8 = [allowListDestinations2 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(allowListDestinations2);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        deviceName = [v12 deviceName];

        if (deviceName)
        {
          deviceName2 = [v12 deviceName];
          [v5 appendFormat:@"             %@\n", deviceName2];
        }

        else
        {
          deviceName2 = [v12 deviceID];
          [v5 appendFormat:@"              %@\n", deviceName2];
        }
      }

      v9 = [allowListDestinations2 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v9);
  }

  destinationsWithPasswords = [(MCAirPlayPayload *)self destinationsWithPasswords];
  [v5 appendFormat:@"Passwords   : %d entries\n", objc_msgSend(destinationsWithPasswords, "count")];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  destinationsWithPasswords2 = [(MCAirPlayPayload *)self destinationsWithPasswords];
  v17 = [destinationsWithPasswords2 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(destinationsWithPasswords2);
        }

        deviceName3 = [*(*(&v23 + 1) + 8 * j) deviceName];
        [v5 appendFormat:@"              %@\n", deviceName3];
      }

      v18 = [destinationsWithPasswords2 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v18);
  }

  return v5;
}

@end