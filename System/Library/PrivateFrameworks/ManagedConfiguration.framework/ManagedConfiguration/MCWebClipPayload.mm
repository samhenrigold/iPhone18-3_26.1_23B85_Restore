@interface MCWebClipPayload
- (MCWebClipPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)subtitle2Description;
- (id)verboseDescription;
@end

@implementation MCWebClipPayload

- (MCWebClipPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v100 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v95.receiver = self;
  v95.super_class = MCWebClipPayload;
  v10 = [(MCPayload *)&v95 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    goto LABEL_20;
  }

  if ([profileCopy isStub])
  {
    v85 = 0;
    v11 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"URL" isRequired:0 outError:&v85];
    v12 = v85;
    if (!v12)
    {
      if (v11)
      {
        v13 = [MEMORY[0x1E695DFF8] URLWithString:v11];
        URL = v10->_URL;
        v10->_URL = v13;
      }

      v84 = 0;
      v15 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"Label" isRequired:0 outError:&v84];
      v16 = v84;
      label = v10->_label;
      v10->_label = v15;

      if (!v16)
      {
        v83 = 0;
        v18 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"FullScreen" isRequired:0 outError:&v83];
        v16 = v83;
        fullScreenNum = v10->_fullScreenNum;
        v10->_fullScreenNum = v18;

        if (!v16)
        {
          v10->_fullScreen = [(NSNumber *)v10->_fullScreenNum BOOLValue];
          v82 = 0;
          v20 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"SavedIdentifier" isRequired:0 outError:&v82];
          v16 = v82;
          savedIdentifier = v10->_savedIdentifier;
          v10->_savedIdentifier = v20;

          if (!v16)
          {
            v81 = 0;
            v22 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"IsRemovable" isRequired:0 outError:&v81];
            v16 = v81;
            isRemovableNum = v10->_isRemovableNum;
            v10->_isRemovableNum = v22;

            if (!v16)
            {
              v24 = v10->_isRemovableNum;
              v25 = !v24 || [(NSNumber *)v24 BOOLValue];
              v10->_isRemovable = v25;
              v80 = 0;
              v69 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"IgnoreManifestScope" isRequired:0 outError:&v80];
              v16 = v80;
              ignoreManifestScopeNum = v10->_ignoreManifestScopeNum;
              v10->_ignoreManifestScopeNum = v69;

              if (!v16)
              {
                v10->_ignoreManifestScope = [(NSNumber *)v10->_ignoreManifestScopeNum BOOLValue];
                v79 = 0;
                v71 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ContentMode" isRequired:0 outError:&v79];
                v16 = v79;
                contentMode = v10->_contentMode;
                v10->_contentMode = v71;

                if (!v16)
                {
                  v78 = 0;
                  v73 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"TargetApplicationBundleIdentifier" isRequired:0 outError:&v78];
                  v16 = v78;
                  targetApplicationBundleIdentifier = v10->_targetApplicationBundleIdentifier;
                  v10->_targetApplicationBundleIdentifier = v73;

                  if (!v16)
                  {
                    goto LABEL_47;
                  }
                }
              }
            }
          }
        }
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v94 = 0;
  v11 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"URL" isRequired:1 outError:&v94];
  v12 = v94;
  if (!v12)
  {
    v35 = [MEMORY[0x1E695DFF8] URLWithString:v11];
    v36 = v10->_URL;
    v10->_URL = v35;

    v93 = 0;
    v37 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"Label" isRequired:1 outError:&v93];
    v16 = v93;
    v38 = v10->_label;
    v10->_label = v37;

    if (v16)
    {
      goto LABEL_14;
    }

    v92 = 0;
    v39 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"Icon" isRequired:0 outError:&v92];
    v40 = v92;
    if (v40)
    {
      v16 = v40;
LABEL_24:

      goto LABEL_14;
    }

    if (v39)
    {
      v41 = MCCGImageSourceCreateWithData(v39, 0);
      if (v41)
      {
        v42 = v41;
        if (MCCGImageSourceGetCount(v41))
        {
          ImageAtIndex = MCCGImageSourceCreateImageAtIndex(v42, 0, 0);
          if (ImageAtIndex)
          {
            CFRelease(ImageAtIndex);
            CFRelease(v42);
            objc_storeStrong(&v10->_iconData, v39);
            goto LABEL_30;
          }
        }

        CFRelease(v42);
      }

      iconData = v10->_iconData;
      v10->_iconData = v39;
      v49 = v39;

      v50 = MEMORY[0x1E696ABC0];
      v58 = MCErrorArray(@"ERROR_PROFILE_FIELD_INVALID_P_FIELD", v51, v52, v53, v54, v55, v56, v57, @"Icon");
      v16 = [v50 MCErrorWithDomain:@"MCProfileErrorDomain" code:1003 descriptionArray:v58 errorType:@"MCFatalError"];

      if (!v16)
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }

LABEL_30:
    v91 = 0;
    v44 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"IsRemovable" isRequired:0 outError:&v91];
    v16 = v91;
    v45 = v10->_isRemovableNum;
    v10->_isRemovableNum = v44;

    if (!v16)
    {
      v46 = v10->_isRemovableNum;
      v47 = !v46 || [(NSNumber *)v46 BOOLValue];
      v10->_isRemovable = v47;
      v90 = 0;
      v59 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"Precomposed" isRequired:0 outError:&v90];
      v16 = v90;
      precomposedNum = v10->_precomposedNum;
      v10->_precomposedNum = v59;

      if (!v16)
      {
        v10->_precomposed = [(NSNumber *)v10->_precomposedNum BOOLValue];
        v89 = 0;
        v61 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"FullScreen" isRequired:0 outError:&v89];
        v16 = v89;
        v62 = v10->_fullScreenNum;
        v10->_fullScreenNum = v61;

        if (!v16)
        {
          v10->_fullScreen = [(NSNumber *)v10->_fullScreenNum BOOLValue];
          v88 = 0;
          v63 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"IgnoreManifestScope" isRequired:0 outError:&v88];
          v16 = v88;
          v64 = v10->_ignoreManifestScopeNum;
          v10->_ignoreManifestScopeNum = v63;

          if (!v16)
          {
            v10->_ignoreManifestScope = [(NSNumber *)v10->_ignoreManifestScopeNum BOOLValue];
            v87 = 0;
            v65 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ContentMode" isRequired:0 outError:&v87];
            v16 = v87;
            v66 = v10->_contentMode;
            v10->_contentMode = v65;

            if (!v16)
            {
              v86 = 0;
              v67 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"TargetApplicationBundleIdentifier" isRequired:0 outError:&v86];
              v16 = v86;
              v68 = v10->_targetApplicationBundleIdentifier;
              v10->_targetApplicationBundleIdentifier = v67;

              if (!v16)
              {

LABEL_47:
                if ([dictionaryCopy count])
                {
                  v75 = _MCLogObjects;
                  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
                  {
                    v76 = v75;
                    friendlyName = [(MCPayload *)v10 friendlyName];
                    *buf = 138543618;
                    v97 = friendlyName;
                    v98 = 2114;
                    v99 = dictionaryCopy;
                    _os_log_impl(&dword_1A795B000, v76, OS_LOG_TYPE_INFO, "Payload “%{public}@” has fields that we are ignoring. They are: %{public}@", buf, 0x16u);
                  }
                }

                goto LABEL_20;
              }
            }
          }
        }
      }
    }

    goto LABEL_24;
  }

LABEL_13:
  v16 = v12;
LABEL_14:

LABEL_15:
  v26 = [(MCPayload *)v10 malformedPayloadErrorWithError:v16];
  v27 = v26;
  if (error)
  {
    v28 = v26;
    *error = v27;
  }

  v29 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v30 = v29;
    v31 = objc_opt_class();
    v32 = v31;
    mCVerboseDescription = [v27 MCVerboseDescription];
    *buf = 138543618;
    v97 = v31;
    v98 = 2114;
    v99 = mCVerboseDescription;
    _os_log_impl(&dword_1A795B000, v30, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
  }

  v10 = 0;
LABEL_20:

  return v10;
}

- (id)stubDictionary
{
  v13.receiver = self;
  v13.super_class = MCWebClipPayload;
  stubDictionary = [(MCPayload *)&v13 stubDictionary];
  URL = self->_URL;
  if (URL)
  {
    absoluteString = [(NSURL *)URL absoluteString];
    [stubDictionary MCSetObjectIfNotNil:absoluteString forKey:@"URL"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_fullScreen];
  [stubDictionary MCSetObjectIfNotNil:v6 forKey:@"FullScreen"];

  [stubDictionary MCSetObjectIfNotNil:self->_label forKey:@"Label"];
  savedIdentifier = self->_savedIdentifier;
  if (savedIdentifier)
  {
    [stubDictionary setObject:savedIdentifier forKeyedSubscript:@"SavedIdentifier"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCWebClipPayload isRemovable](self, "isRemovable")}];
  [stubDictionary setObject:v8 forKeyedSubscript:@"IsRemovable"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCWebClipPayload ignoreManifestScope](self, "ignoreManifestScope")}];
  [stubDictionary setObject:v9 forKeyedSubscript:@"IgnoreManifestScope"];

  contentMode = self->_contentMode;
  if (contentMode)
  {
    [stubDictionary setObject:contentMode forKeyedSubscript:@"ContentMode"];
  }

  targetApplicationBundleIdentifier = self->_targetApplicationBundleIdentifier;
  if (targetApplicationBundleIdentifier)
  {
    [stubDictionary setObject:targetApplicationBundleIdentifier forKeyedSubscript:@"TargetApplicationBundleIdentifier"];
  }

  return stubDictionary;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v15.receiver = self;
  v15.super_class = MCWebClipPayload;
  verboseDescription = [(MCPayload *)&v15 verboseDescription];
  v5 = [v3 stringWithString:verboseDescription];

  profile = [(MCPayload *)self profile];
  isStub = [profile isStub];

  if ((isStub & 1) == 0)
  {
    if (self->_URL)
    {
      [v5 appendFormat:@"URL         : %@\n", self->_URL];
    }

    if (self->_label)
    {
      [v5 appendFormat:@"Label       : %@\n", self->_label];
    }

    if (self->_iconData)
    {
      [v5 appendFormat:@"Icon        : Present\n"];
    }

    v8 = MCStringForBool(self->_isRemovable);
    [v5 appendFormat:@"Removable   : %@\n", v8];

    v9 = MCStringForBool(self->_precomposed);
    [v5 appendFormat:@"Precomposed : %@\n", v9];

    v10 = MCStringForBool(self->_fullScreen);
    [v5 appendFormat:@"Full screen : %@\n", v10];

    v11 = MCStringForBool(self->_ignoreManifestScope);
    [v5 appendFormat:@"Ignore scope: %@\n", v11];

    if (self->_contentMode)
    {
      [v5 appendFormat:@"Content mode: %@\n", self->_contentMode];
    }

    if (self->_targetApplicationBundleIdentifier)
    {
      [v5 appendFormat:@"Target App: %@\n", self->_targetApplicationBundleIdentifier];
    }

    savedIdentifier = [(MCWebClipPayload *)self savedIdentifier];

    if (savedIdentifier)
    {
      savedIdentifier2 = [(MCWebClipPayload *)self savedIdentifier];
      [v5 appendFormat:@"Identifier  : %@\n", savedIdentifier2];
    }
  }

  return v5;
}

- (id)subtitle1Description
{
  v2 = [(MCWebClipPayload *)self URL];
  absoluteString = [v2 absoluteString];

  if (absoluteString)
  {
    v4 = absoluteString;
  }

  else
  {
    v4 = MCLocalizedString(@"WEBCLIP_URL_MISSING");
  }

  v5 = v4;

  return v5;
}

- (id)subtitle2Description
{
  label = [(MCWebClipPayload *)self label];
  v3 = label;
  if (label)
  {
    v4 = label;
  }

  else
  {
    v4 = MCLocalizedString(@"WEBCLIP_LABEL_MISSING");
  }

  v5 = v4;

  return v5;
}

- (id)payloadDescriptionKeyValueSections
{
  v35[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_label)
  {
    v4 = [MCKeyValue alloc];
    label = self->_label;
    v6 = MCLocalizedString(@"WEB_CLIP_LABEL");
    v7 = [(MCKeyValue *)v4 initWithLocalizedString:label localizedKey:v6];

    [v3 addObject:v7];
  }

  if (self->_URL)
  {
    v8 = [MCKeyValue alloc];
    absoluteString = [(NSURL *)self->_URL absoluteString];
    v10 = MCLocalizedString(@"URL");
    v11 = [(MCKeyValue *)v8 initWithLocalizedString:absoluteString localizedKey:v10];

    [v3 addObject:v11];
  }

  if (self->_isRemovableNum)
  {
    v12 = [MCKeyValue alloc];
    v13 = MCLocalizedStringForBool([(NSNumber *)self->_isRemovableNum BOOLValue]);
    v14 = MCLocalizedString(@"WEB_CLIP_REMOVABLE");
    v15 = [(MCKeyValue *)v12 initWithLocalizedString:v13 localizedKey:v14];

    [v3 addObject:v15];
  }

  if (self->_fullScreenNum)
  {
    v16 = [MCKeyValue alloc];
    v17 = MCLocalizedStringForBool([(NSNumber *)self->_fullScreenNum BOOLValue]);
    v18 = MCLocalizedString(@"WEB_CLIP_FULLSCREEN");
    v19 = [(MCKeyValue *)v16 initWithLocalizedString:v17 localizedKey:v18];

    [v3 addObject:v19];
  }

  if ([(NSNumber *)self->_ignoreManifestScopeNum BOOLValue])
  {
    v20 = [MCKeyValue alloc];
    v21 = MCLocalizedStringForBool([(NSNumber *)self->_ignoreManifestScopeNum BOOLValue]);
    v22 = MCLocalizedString(@"WEB_CLIP_IGNORE_MANIFEST_SCOPE");
    v23 = [(MCKeyValue *)v20 initWithLocalizedString:v21 localizedKey:v22];

    [v3 addObject:v23];
  }

  if (self->_contentMode)
  {
    v24 = [MCKeyValue alloc];
    contentMode = self->_contentMode;
    v26 = MCLocalizedString(@"WEB_CLIP_CONTENT_MODE");
    v27 = [(MCKeyValue *)v24 initWithLocalizedString:contentMode localizedKey:v26];

    [v3 addObject:v27];
  }

  if (self->_targetApplicationBundleIdentifier)
  {
    v28 = [MCKeyValue alloc];
    targetApplicationBundleIdentifier = self->_targetApplicationBundleIdentifier;
    v30 = MCLocalizedString(@"WEB_CLIP_TARGET_APP_BUNDLE_IDENTIFIER");
    v31 = [(MCKeyValue *)v28 initWithLocalizedString:targetApplicationBundleIdentifier localizedKey:v30];

    [v3 addObject:v31];
  }

  if ([v3 count])
  {
    v32 = [MCKeyValueSection sectionWithKeyValues:v3];
    v35[0] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

@end