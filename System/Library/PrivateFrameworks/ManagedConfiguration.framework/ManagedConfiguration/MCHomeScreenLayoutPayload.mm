@interface MCHomeScreenLayoutPayload
+ (id)typeStrings;
- (MCHomeScreenLayoutPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)parseIconsArray:(id)array allowFolders:(BOOL)folders outError:(id *)error;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
@end

@implementation MCHomeScreenLayoutPayload

+ (id)typeStrings
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.homescreenlayout";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (MCHomeScreenLayoutPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v68 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v61.receiver = self;
  v61.super_class = MCHomeScreenLayoutPayload;
  v10 = [(MCPayload *)&v61 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (v10)
  {
    if ([profileCopy isStub])
    {
      v60 = 0;
      v11 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"Layout" isRequired:0 outError:&v60];
      v12 = v60;
      layout = v10->_layout;
      v10->_layout = v11;
    }

    else
    {
      layout = objc_opt_new();
      v59 = 0;
      v14 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"Dock" isRequired:0 outError:&v59];
      v15 = v59;
      if (v15)
      {
        v12 = v15;
        v16 = 0;
        v17 = 0;
      }

      else
      {
        v58 = 0;
        v17 = [(MCHomeScreenLayoutPayload *)v10 parseIconsArray:v14 allowFolders:1 outError:&v58];
        v18 = v58;
        if (v18)
        {
          v12 = v18;
          v16 = 0;
        }

        else
        {
          [layout addObject:v17];
          v57 = 0;
          v16 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"Pages" isRequired:1 outError:&v57];
          v19 = v57;
          if (v19)
          {
            v12 = v19;
          }

          else
          {
            v43 = v17;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            obj = v16;
            v47 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v67 count:16];
            if (v47)
            {
              v45 = layout;
              v46 = *v54;
              v41 = v14;
              errorCopy = error;
              while (2)
              {
                for (i = 0; i != v47; ++i)
                {
                  if (*v54 != v46)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v21 = *(*(&v53 + 1) + 8 * i);
                  v49 = 0u;
                  v50 = 0u;
                  v51 = 0u;
                  v52 = 0u;
                  v22 = v21;
                  v23 = [v22 countByEnumeratingWithState:&v49 objects:v66 count:16];
                  if (v23)
                  {
                    v24 = *v50;
                    while (2)
                    {
                      for (j = 0; j != v23; ++j)
                      {
                        if (*v50 != v24)
                        {
                          objc_enumerationMutation(v22);
                        }

                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          v23 = [MCPayload badFieldTypeErrorWithField:@"Pages"];
                          goto LABEL_25;
                        }
                      }

                      v23 = [v22 countByEnumeratingWithState:&v49 objects:v66 count:16];
                      if (v23)
                      {
                        continue;
                      }

                      break;
                    }

LABEL_25:
                    layout = v45;
                  }

                  v48 = v23;
                  v26 = [(MCHomeScreenLayoutPayload *)v10 parseIconsArray:v22 allowFolders:1 outError:&v48];
                  v12 = v48;

                  if (v12)
                  {

                    v16 = obj;
                    v28 = obj;
                    v14 = v41;
                    error = errorCopy;
                    goto LABEL_31;
                  }

                  [layout addObject:v26];
                }

                v14 = v41;
                error = errorCopy;
                v47 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v67 count:16];
                if (v47)
                {
                  continue;
                }

                break;
              }
            }

            v16 = obj;

            v27 = [layout copy];
            v12 = 0;
            v28 = v10->_layout;
            v10->_layout = v27;
LABEL_31:

            v17 = v43;
          }
        }
      }
    }

    if (v12)
    {
      v29 = [(MCPayload *)v10 malformedPayloadErrorWithError:v12];
      v30 = v29;
      if (error)
      {
        v31 = v29;
        *error = v30;
      }

      v32 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v33 = v32;
        v34 = objc_opt_class();
        v35 = v34;
        mCVerboseDescription = [v30 MCVerboseDescription];
        *buf = 138543618;
        v63 = v34;
        v64 = 2114;
        v65 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v33, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v10 = 0;
    }

    if ([dictionaryCopy count])
    {
      v37 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v38 = v37;
        friendlyName = [(MCPayload *)v10 friendlyName];
        *buf = 138543618;
        v63 = friendlyName;
        v64 = 2114;
        v65 = dictionaryCopy;
        _os_log_impl(&dword_1A795B000, v38, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
      }
    }
  }

  return v10;
}

- (id)parseIconsArray:(id)array allowFolders:(BOOL)folders outError:(id *)error
{
  v98 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v7 = objc_opt_new();
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v8 = arrayCopy;
  v9 = [v8 countByEnumeratingWithState:&v83 objects:v97 count:16];
  if (!v9)
  {

    goto LABEL_66;
  }

  v10 = v9;
  errorCopy = error;
  v11 = 0;
  v63 = *v84;
  v57 = v8;
  v58 = v7;
  while (2)
  {
    v12 = 0;
    v59 = v10;
    do
    {
      if (*v84 != v63)
      {
        objc_enumerationMutation(v8);
      }

      v64 = v12;
      v13 = [*(*(&v83 + 1) + 8 * v12) mutableCopy];
      v82 = v11;
      v14 = [v13 MCValidateAndRemoveNonZeroLengthStringWithKey:@"Type" isRequired:1 outError:&v82];
      v15 = v82;

      v65 = v14;
      if (v15)
      {
        v11 = v15;
        goto LABEL_62;
      }

      if ([v14 isEqualToString:@"Application"])
      {
        v81 = 0;
        v16 = v13;
        v17 = [v13 MCValidateAndRemoveNonZeroLengthStringWithKey:@"BundleID" isRequired:1 outError:&v81];
        v11 = v81;
        if (!v11)
        {
          v95 = @"displayIdentifier";
          v96 = v17;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
          [v7 addObject:v18];

          v13 = v16;
          goto LABEL_46;
        }

        v13 = v16;
LABEL_62:

        goto LABEL_63;
      }

      v19 = v14;
      if ([v14 isEqualToString:@"Folder"])
      {
        if (!folders)
        {
          v52 = _MCLogObjects;
          if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1A795B000, v52, OS_LOG_TYPE_ERROR, "Folder isn't allowed at this level. Ignoring.", buf, 2u);
          }

          v11 = 0;
          goto LABEL_62;
        }

        v80 = 0;
        v62 = [v13 MCValidateAndRemoveNonZeroLengthStringWithKey:@"DisplayName" isRequired:1 outError:&v80];
        v20 = v80;
        if (v20)
        {
          v11 = v20;

          goto LABEL_62;
        }

        v21 = objc_opt_class();
        v79 = 0;
        v61 = v13;
        v22 = [v13 MCValidateAndRemoveArrayOfClass:v21 withKey:@"Pages" isRequired:0 outError:&v79];
        v23 = v79;
        if (v23)
        {
          v11 = v23;

          v13 = v61;
          goto LABEL_62;
        }

        v24 = objc_opt_new();
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        obj = v22;
        v25 = [obj countByEnumeratingWithState:&v75 objects:v94 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v76;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v76 != v27)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v75 + 1) + 8 * i);
              v71 = 0u;
              v72 = 0u;
              v73 = 0u;
              v74 = 0u;
              v30 = v29;
              v31 = [v30 countByEnumeratingWithState:&v71 objects:v93 count:16];
              if (v31)
              {
                v32 = *v72;
                while (2)
                {
                  for (j = 0; j != v31; ++j)
                  {
                    if (*v72 != v32)
                    {
                      objc_enumerationMutation(v30);
                    }

                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v31 = [MCPayload badFieldTypeErrorWithField:@"Pages"];
                      goto LABEL_29;
                    }
                  }

                  v31 = [v30 countByEnumeratingWithState:&v71 objects:v93 count:16];
                  if (v31)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_29:

              v70 = v31;
              v34 = [(MCHomeScreenLayoutPayload *)self parseIconsArray:v30 allowFolders:0 outError:&v70];
              v11 = v70;

              if (v11)
              {

                goto LABEL_40;
              }

              [v24 addObject:v34];
            }

            v26 = [obj countByEnumeratingWithState:&v75 objects:v94 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }

          v11 = 0;
LABEL_40:
          v8 = v57;
          v7 = v58;
        }

        else
        {
          v11 = 0;
        }

        v91[0] = @"displayName";
        v91[1] = @"iconLists";
        v92[0] = v62;
        v92[1] = v24;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];
        [v7 addObject:v47];

        v10 = v59;
        v13 = v61;
      }

      else if ([v14 isEqualToString:@"WebClip"])
      {
        v69 = 0;
        [v13 MCValidateAndRemoveNonZeroLengthStringWithKey:@"URL" isRequired:1 outError:&v69];
        v36 = v35 = v13;
        v37 = v69;
        if (v37)
        {
          v11 = v37;

          v13 = v35;
          goto LABEL_62;
        }

        v68 = 0;
        v38 = v35;
        v39 = [v35 MCValidateAndRemoveNonZeroLengthStringWithKey:@"DisplayName" isRequired:0 outError:&v68];
        v40 = v68;
        if (v40)
        {
          v11 = v40;

          v13 = v35;
          goto LABEL_62;
        }

        v41 = [MEMORY[0x1E695DF90] dictionaryWithObject:v36 forKey:@"webClipURL"];
        v42 = v41;
        if (v39)
        {
          [v41 setObject:v39 forKey:@"displayName"];
        }

        [v7 addObject:v42];

        v11 = 0;
        v13 = v38;
      }

      else
      {
        v43 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
        {
          v44 = v43;
          [(MCPayload *)self friendlyName];
          v46 = v45 = v13;
          *buf = 138543618;
          v88 = v46;
          v89 = 2114;
          v90 = v19;
          _os_log_impl(&dword_1A795B000, v44, OS_LOG_TYPE_ERROR, "Icon dictionary for payload “%{public}@” is unknown type “%{public}@”. Ignoring.", buf, 0x16u);

          v13 = v45;
        }

        v11 = 0;
      }

LABEL_46:
      if ([v13 count])
      {
        v48 = _MCLogObjects;
        if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
        {
          v49 = v48;
          [(MCPayload *)self friendlyName];
          v51 = v50 = v13;
          *buf = 138543618;
          v88 = v51;
          v89 = 2114;
          v90 = v50;
          _os_log_impl(&dword_1A795B000, v49, OS_LOG_TYPE_INFO, "Icon dictionary for payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);

          v13 = v50;
        }
      }

      v12 = v64 + 1;
    }

    while (v64 + 1 != v10);
    v10 = [v8 countByEnumeratingWithState:&v83 objects:v97 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_63:

  error = errorCopy;
  if (!v11)
  {
LABEL_66:
    v53 = [v7 copy];
    v11 = 0;
    if (!error)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  v53 = 0;
  if (errorCopy)
  {
LABEL_67:
    v54 = v11;
    *error = v11;
  }

LABEL_68:

  return v53;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCHomeScreenLayoutPayload;
  stubDictionary = [(MCPayload *)&v6 stubDictionary];
  layout = [(MCHomeScreenLayoutPayload *)self layout];
  [stubDictionary setObject:layout forKeyedSubscript:@"Layout"];

  return stubDictionary;
}

- (id)payloadDescriptionKeyValueSections
{
  v2 = objc_opt_new();
  if (![v2 count])
  {

    v2 = 0;
  }

  return v2;
}

@end