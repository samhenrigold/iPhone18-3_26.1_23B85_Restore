@interface MCConfigurationProfile
- (BOOL)isManagedByMDM;
- (MCConfigurationProfile)initWithDictionary:(id)dictionary options:(id)options signerCerts:(id)certs allowEmptyPayload:(BOOL)payload outError:(id *)error;
- (__SecCertificate)copyCertificateFromPayloadWithUUID:(id)d;
- (__SecCertificate)copyCertificateWithPersistentID:(id)d;
- (id)_localizedPayloadSummaryByType:(id)type;
- (id)_sortPayloads:(id)payloads;
- (id)_subjectSummaryFromCertificate:(__SecCertificate *)certificate;
- (id)description;
- (id)earliestCertificateExpiryDate;
- (id)installationWarningsIncludeUnsignedProfileWarning:(BOOL)warning;
- (id)localizedManagedPayloadSummaryByType;
- (id)localizedManagedProfileConsentTexts;
- (id)localizedPayloadSummaryByType;
- (id)managedPayloads;
- (id)payloadWithUUID:(id)d;
- (id)serializedDictionary;
- (id)stubDictionary;
- (id)subjectSummaryFromCertificatePayloadWithUUID:(id)d;
- (id)subjectSummaryFromCertificateWithPersistentID:(id)d;
- (id)verboseDescription;
- (void)_addObjectsOfClass:(Class)class fromArray:(id)array toArray:(id)toArray;
- (void)_sortPayloads;
- (void)replacePayloadWithUUID:(id)d withPayload:(id)payload;
@end

@implementation MCConfigurationProfile

- (void)_sortPayloads
{
  self->_payloads = [(MCConfigurationProfile *)self _sortPayloads:self->_payloads];

  MEMORY[0x1EEE66BB8]();
}

- (void)_addObjectsOfClass:(Class)class fromArray:(id)array toArray:(id)toArray
{
  arrayCopy = array;
  toArrayCopy = toArray;
  if ([arrayCopy count] && objc_msgSend(arrayCopy, "count"))
  {
    v8 = 0;
    do
    {
      if (v8 >= [arrayCopy count])
      {
        break;
      }

      v9 = [arrayCopy objectAtIndex:v8];
      if (objc_opt_isKindOfClass() & 1) == 0 || objc_opt_class() == class && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        ++v8;
      }

      else
      {
        [toArrayCopy addObject:v9];
        [arrayCopy removeObjectAtIndex:v8];
      }
    }

    while ([arrayCopy count]);
  }
}

- (id)_sortPayloads:(id)payloads
{
  v23[9] = *MEMORY[0x1E69E9840];
  payloadsCopy = payloads;
  if ([payloadsCopy count])
  {
    if (!_sortPayloads__classSortOrder)
    {
      v23[0] = objc_opt_class();
      v23[1] = objc_opt_class();
      v23[2] = objc_opt_class();
      v23[3] = objc_opt_class();
      v23[4] = objc_opt_class();
      v23[5] = objc_opt_class();
      v23[6] = objc_opt_class();
      v23[7] = objc_opt_class();
      v23[8] = objc_opt_class();
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:9];
      v6 = _sortPayloads__classSortOrder;
      _sortPayloads__classSortOrder = v5;
    }

    v7 = [payloadsCopy mutableCopy];
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(payloadsCopy, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = _sortPayloads__classSortOrder;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(MCConfigurationProfile *)self _addObjectsOfClass:*(*(&v18 + 1) + 8 * i) fromArray:v7 toArray:v8, v18];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    while ([v7 count])
    {
      v14 = [v7 objectAtIndex:0];
      v15 = objc_opt_class();

      [(MCConfigurationProfile *)self _addObjectsOfClass:v15 fromArray:v7 toArray:v8];
    }

    v16 = [v8 copy];
  }

  else
  {
    v16 = payloadsCopy;
  }

  return v16;
}

- (id)managedPayloads
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:self->_payloads];
  v4 = +[MCDependencyReader sharedReader];
  identifier = [(MCProfile *)self identifier];
  v6 = [v4 dependentsOfParent:identifier inDomain:@"ManagingProfileToManagedProfile"];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [MCManifest installedProfileWithIdentifier:*(*(&v16 + 1) + 8 * i), v16];
        payloads = [v12 payloads];
        [v3 addObjectsFromArray:payloads];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = [(MCConfigurationProfile *)self _sortPayloads:v3];

  return v14;
}

- (id)payloadWithUUID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_payloads;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uUID = [v9 UUID];
        v11 = [uUID isEqualToString:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_subjectSummaryFromCertificate:(__SecCertificate *)certificate
{
  if (certificate)
  {
    v4 = SecCertificateCopySubjectSummary(certificate);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (__SecCertificate)copyCertificateFromPayloadWithUUID:(id)d
{
  v3 = [(MCConfigurationProfile *)self payloadWithUUID:d];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    copyCertificate = [v3 copyCertificate];
  }

  else
  {
    copyCertificate = 0;
  }

  return copyCertificate;
}

- (id)subjectSummaryFromCertificatePayloadWithUUID:(id)d
{
  v4 = [(MCConfigurationProfile *)self copyCertificateFromPayloadWithUUID:d];
  if (v4)
  {
    v5 = v4;
    v6 = [(MCConfigurationProfile *)self _subjectSummaryFromCertificate:v4];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (__SecCertificate)copyCertificateWithPersistentID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_payloads;
  copyCertificate = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (copyCertificate)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != copyCertificate; i = (i + 1))
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          certificatePersistentID = [v10 certificatePersistentID];
          v12 = [certificatePersistentID isEqualToData:dCopy];

          if (v12)
          {
            copyCertificate = [v10 copyCertificate];

            goto LABEL_13;
          }
        }
      }

      copyCertificate = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (copyCertificate)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return copyCertificate;
}

- (id)subjectSummaryFromCertificateWithPersistentID:(id)d
{
  v4 = [(MCConfigurationProfile *)self copyCertificateWithPersistentID:d];
  if (v4)
  {
    v5 = v4;
    v6 = [(MCConfigurationProfile *)self _subjectSummaryFromCertificate:v4];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MCConfigurationProfile)initWithDictionary:(id)dictionary options:(id)options signerCerts:(id)certs allowEmptyPayload:(BOOL)payload outError:(id *)error
{
  payloadCopy = payload;
  v291 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  optionsCopy = options;
  v281.receiver = self;
  v281.super_class = MCConfigurationProfile;
  v14 = [(MCProfile *)&v281 initWithDictionary:dictionaryCopy signerCerts:certs allowEmptyPayload:payloadCopy outError:error];
  v15 = v14;
  if (!v14)
  {
LABEL_35:
    v71 = v15;
    goto LABEL_58;
  }

  if (optionsCopy)
  {
    installOptions = [(MCProfile *)v14 installOptions];

    if (!installOptions)
    {
      [(MCProfile *)v15 setInstallOptions:optionsCopy];
    }
  }

  v17 = [dictionaryCopy objectForKey:@"PayloadContent"];
  [dictionaryCopy removeObjectForKey:@"PayloadContent"];
  isStub = [(MCProfile *)v15 isStub];
  v19 = [v17 count];
  if (isStub)
  {
    if (v19)
    {
      v27 = [MCPayload payloadsFromArray:v17 isStub:1 profile:v15 outError:0];
      payloads = v15->_payloads;
      v15->_payloads = v27;
    }

    v280 = 0;
    v29 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"IsCloudProfile" isRequired:0 outError:&v280];
    mCCopyAsPrimaryError = v280;
    isCloudProfileNum = v15->_isCloudProfileNum;
    v15->_isCloudProfileNum = v29;

    if (mCCopyAsPrimaryError)
    {
      goto LABEL_52;
    }

    v15->_isCloudProfile = [(NSNumber *)v15->_isCloudProfileNum BOOLValue];
    if (!v15->_isCloudProfileNum)
    {
      installOptions2 = [(MCProfile *)v15 installOptions];

      if (installOptions2)
      {
        installOptions3 = [(MCProfile *)v15 installOptions];
        v41 = [installOptions3 objectForKeyedSubscript:@"isCloudProfile"];
        v15->_isCloudProfile = [v41 BOOLValue];
      }
    }

    v279 = 0;
    v42 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"IsCloudLocked" isRequired:0 outError:&v279];
    mCCopyAsPrimaryError = v279;
    isCloudLockedNum = v15->_isCloudLockedNum;
    v15->_isCloudLockedNum = v42;

    if (mCCopyAsPrimaryError)
    {
      goto LABEL_52;
    }

    v15->_isCloudLocked = [(NSNumber *)v15->_isCloudLockedNum BOOLValue];
    if (!v15->_isCloudLockedNum)
    {
      installOptions4 = [(MCProfile *)v15 installOptions];

      if (installOptions4)
      {
        installOptions5 = [(MCProfile *)v15 installOptions];
        v54 = [installOptions5 objectForKeyedSubscript:@"isCloudLocked"];
        v15->_isCloudLocked = [v54 BOOLValue];
      }
    }

    v278 = 0;
    v55 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"OTAProfileStub" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v278];
    mCCopyAsPrimaryError = v278;
    if (!v55)
    {
      goto LABEL_51;
    }

    mCMutableDeepCopy = [v55 MCMutableDeepCopy];
    v277 = mCCopyAsPrimaryError;
    [MCProfile profileWithDictionary:mCMutableDeepCopy options:optionsCopy signerCerts:0 fileName:0 allowEmptyPayload:1 outError:&v277];
    v58 = v57 = optionsCopy;
    v59 = v277;

    OTAProfile = v15->_OTAProfile;
    v15->_OTAProfile = v58;
    optionsCopy = v57;

    if (v59)
    {
      mCCopyAsPrimaryError = v59;
      goto LABEL_52;
    }

LABEL_59:
    [(MCConfigurationProfile *)v15 _sortPayloads];
    v270 = 0u;
    v271 = 0u;
    v268 = 0u;
    v269 = 0u;
    v107 = v15->_payloads;
    v108 = [(NSArray *)v107 countByEnumeratingWithState:&v268 objects:v289 count:16];
    v241 = optionsCopy;
    v245 = v15;
    v249 = v17;
    if (v108)
    {
      v109 = v108;
      errorCopy = error;
      v248 = 0;
      v240 = dictionaryCopy;
      v110 = 0;
      v111 = 0;
      obja = 0;
      v112 = 0;
      v250 = 0;
      v243 = 0;
      v242 = 0;
      v113 = *v269;
      do
      {
        for (i = 0; i != v109; ++i)
        {
          if (*v269 != v113)
          {
            objc_enumerationMutation(v107);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            ++v110;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              ++v111;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                ++v112;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  ++obja;
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    ++v250;
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      ++HIDWORD(v248);
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        LODWORD(v248) = v248 + 1;
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          ++HIDWORD(v243);
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            LODWORD(v243) = v243 + 1;
                          }

                          else
                          {
                            objc_opt_class();
                            v242 += objc_opt_isKindOfClass() & 1;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v109 = [(NSArray *)v107 countByEnumeratingWithState:&v268 objects:v289 count:16];
      }

      while (v109);

      if (v110 >= 2)
      {
        v115 = MEMORY[0x1E696ABC0];
        friendlyName = [(MCProfile *)v15 friendlyName];
        MCErrorArray(@"ERROR_PROFILE_TOO_MANY_MDM_P_ID", v116, v117, v118, v119, v120, v121, v122, friendlyName);
        v123 = LABEL_87:;
        mCCopyAsPrimaryError = [v115 MCErrorWithDomain:@"MCProfileErrorDomain" code:1000 descriptionArray:v123 errorType:@"MCFatalError"];

        dictionaryCopy = v240;
        optionsCopy = v241;
LABEL_115:
        error = errorCopy;
        goto LABEL_33;
      }

      optionsCopy = v241;
      if (![(MCProfile *)v15 isStub]&& v110 == 1 && [(MCProfile *)v15 isLocked])
      {
        v153 = MEMORY[0x1E696ABC0];
        friendlyName = MCErrorArray(@"ERROR_PROFILE_MDM_AND_LOCKED", v146, v147, v148, v149, v150, v151, v152, 0);
        v154 = [v153 MCErrorWithDomain:@"MCProfileErrorDomain" code:1000 descriptionArray:friendlyName errorType:@"MCFatalError"];
        mCCopyAsPrimaryError = [v154 MCCopyAsPrimaryError];

LABEL_114:
        dictionaryCopy = v240;
        goto LABEL_115;
      }

      if (v111 >= 2)
      {
        v155 = MEMORY[0x1E696ABC0];
        friendlyName = [(MCProfile *)v15 friendlyName];
        v163 = MCErrorArray(@"ERROR_PROFILE_TOO_MANY_APN_P_ID", v156, v157, v158, v159, v160, v161, v162, friendlyName);
        mCCopyAsPrimaryError = [v155 MCErrorWithDomain:@"MCProfileErrorDomain" code:1000 descriptionArray:v163 errorType:@"MCFatalError"];

        goto LABEL_114;
      }

      error = errorCopy;
      if (v112 >= 2)
      {
        v179 = MEMORY[0x1E696ABC0];
        friendlyName = [(MCProfile *)v15 friendlyName];
        v187 = MCErrorArray(@"ERROR_PROFILE_TOO_MANY_CHAPERONE_P_ID", v180, v181, v182, v183, v184, v185, v186, friendlyName);
        mCCopyAsPrimaryError = [v179 MCErrorWithDomain:@"MCProfileErrorDomain" code:1000 descriptionArray:v187 errorType:@"MCFatalError"];

        dictionaryCopy = v240;
        goto LABEL_33;
      }

      dictionaryCopy = v240;
      if (obja >= 2)
      {
        v189 = MEMORY[0x1E696ABC0];
        friendlyName = [(MCProfile *)v15 friendlyName];
        MCErrorArray(@"ERROR_PROFILE_TOO_MANY_GLOBAL_PROXY_P_ID", v190, v191, v192, v193, v194, v195, v196, friendlyName);
        v225 = LABEL_153:;
        mCCopyAsPrimaryError = [v189 MCErrorWithDomain:@"MCProfileErrorDomain" code:1000 descriptionArray:v225 errorType:@"MCFatalError"];

        goto LABEL_33;
      }

      if (v250 >= 2)
      {
        v189 = MEMORY[0x1E696ABC0];
        friendlyName = [(MCProfile *)v15 friendlyName];
        MCErrorArray(@"ERROR_PROFILE_TOO_MANY_SINGLE_APP_P_ID", v197, v198, v199, v200, v201, v202, v203, friendlyName);
        goto LABEL_153;
      }

      if (SHIDWORD(v248) >= 2)
      {
        v189 = MEMORY[0x1E696ABC0];
        friendlyName = [(MCProfile *)v15 friendlyName];
        MCErrorArray(@"ERROR_PROFILE_TOO_MANY_HOME_SCREEN_LAYOUT_P_ID", v204, v205, v206, v207, v208, v209, v210, friendlyName);
        goto LABEL_153;
      }

      if (v248 >= 2)
      {
        v189 = MEMORY[0x1E696ABC0];
        friendlyName = [(MCProfile *)v15 friendlyName];
        MCErrorArray(@"ERROR_PROFILE_TOO_MANY_NOTIFICATION_SETTINGS_P_ID", v211, v212, v213, v214, v215, v216, v217, friendlyName);
        goto LABEL_153;
      }

      if (SHIDWORD(v243) >= 2)
      {
        v189 = MEMORY[0x1E696ABC0];
        friendlyName = [(MCProfile *)v15 friendlyName];
        MCErrorArray(@"ERROR_PROFILE_TOO_MANY_SHARED_DEVICE_CONFIGURATIONS_P_ID", v218, v219, v220, v221, v222, v223, v224, friendlyName);
        goto LABEL_153;
      }

      if (v243 >= 2)
      {
        v115 = MEMORY[0x1E696ABC0];
        friendlyName = [(MCProfile *)v15 friendlyName];
        MCErrorArray(@"ERROR_PROFILE_TOO_MANY_CONFERENCE_ROOM_DISPLAY_P_ID", v226, v227, v228, v229, v230, v231, v232, friendlyName);
        goto LABEL_87;
      }

      dictionaryCopy = v240;
      optionsCopy = v241;
      error = errorCopy;
      if (v242 >= 2)
      {
        v189 = MEMORY[0x1E696ABC0];
        friendlyName = [(MCProfile *)v15 friendlyName];
        MCErrorArray(@"ERROR_PROFILE_TOO_MANY_AIRPLAY_SECURITY_P_ID", v233, v234, v235, v236, v237, v238, v239, friendlyName);
        goto LABEL_153;
      }
    }

    else
    {

      [(MCProfile *)v15 isStub];
    }

    if ([dictionaryCopy count])
    {
      v124 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v125 = v124;
        friendlyName2 = [(MCProfile *)v15 friendlyName];
        *buf = 138543618;
        v286 = friendlyName2;
        v287 = 2114;
        v288 = dictionaryCopy;
        _os_log_impl(&dword_1A795B000, v125, OS_LOG_TYPE_INFO, "Profile “%{public}@” has entries that are being ignored. They are:%{public}@", buf, 0x16u);
      }
    }

    errorCopy2 = error;
    friendlyName = [MEMORY[0x1E695DF70] arrayWithArray:v15->_payloads];
    v128 = +[MCDependencyReader sharedReader];
    identifier = [(MCProfile *)v15 identifier];
    v130 = [v128 dependentsOfParent:identifier inDomain:@"ManagingProfileToManagedProfile"];

    v266 = 0u;
    v267 = 0u;
    v264 = 0u;
    v265 = 0u;
    v131 = v130;
    v132 = [v131 countByEnumeratingWithState:&v264 objects:v284 count:16];
    if (v132)
    {
      v133 = v132;
      v134 = *v265;
      do
      {
        for (j = 0; j != v133; ++j)
        {
          if (*v265 != v134)
          {
            objc_enumerationMutation(v131);
          }

          v136 = [MCManifest installedProfileWithIdentifier:*(*(&v264 + 1) + 8 * j)];
          payloads = [v136 payloads];
          [friendlyName addObjectsFromArray:payloads];
        }

        v133 = [v131 countByEnumeratingWithState:&v264 objects:v284 count:16];
      }

      while (v133);
    }

    v138 = [(MCConfigurationProfile *)v245 _sortPayloads:friendlyName];
    managedPayloads = v245->_managedPayloads;
    v245->_managedPayloads = v138;

    v262 = 0u;
    v263 = 0u;
    v260 = 0u;
    v261 = 0u;
    v140 = v245->_payloads;
    v141 = [(NSArray *)v140 countByEnumeratingWithState:&v260 objects:v283 count:16];
    if (v141)
    {
      v142 = v141;
      v143 = *v261;
LABEL_101:
      v144 = 0;
      while (1)
      {
        if (*v261 != v143)
        {
          objc_enumerationMutation(v140);
        }

        v145 = *(*(&v260 + 1) + 8 * v144);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v142 == ++v144)
        {
          v142 = [(NSArray *)v140 countByEnumeratingWithState:&v260 objects:v283 count:16];
          if (v142)
          {
            goto LABEL_101;
          }

          goto LABEL_107;
        }
      }

      v15 = v245;
      v245->_isMDMProfile = 1;
      isUserEnrollment = [v145 isUserEnrollment];

      optionsCopy = v241;
      error = errorCopy2;
      if (isUserEnrollment)
      {
        goto LABEL_119;
      }
    }

    else
    {
LABEL_107:

      optionsCopy = v241;
      v15 = v245;
      error = errorCopy2;
    }

    installOptions6 = [(MCProfile *)v15 installOptions];
    v166 = [installOptions6 objectForKeyedSubscript:@"isRMUserEnrollment"];
    if ([v166 BOOLValue])
    {
    }

    else
    {
      installOptions7 = [(MCProfile *)v15 installOptions];
      v177 = [installOptions7 objectForKeyedSubscript:@"isInstalledByMDM"];
      if (![v177 BOOLValue])
      {

        mCCopyAsPrimaryError = 0;
        optionsCopy = v241;
LABEL_140:
        v17 = v249;

        goto LABEL_141;
      }

      isUserEnrollmentDisregardingIdentityPresence = [MEMORY[0x1E69AD428] isUserEnrollmentDisregardingIdentityPresence];

      optionsCopy = v241;
      if (!isUserEnrollmentDisregardingIdentityPresence)
      {
        mCCopyAsPrimaryError = 0;
        v17 = v249;
LABEL_141:

LABEL_34:
        if (mCCopyAsPrimaryError)
        {
          goto LABEL_53;
        }

        goto LABEL_35;
      }
    }

LABEL_119:
    objb = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v15->_payloads, "count")}];
    v256 = 0u;
    v257 = 0u;
    v258 = 0u;
    v259 = 0u;
    v251 = v15->_payloads;
    v167 = [(NSArray *)v251 countByEnumeratingWithState:&v256 objects:v282 count:16];
    if (v167)
    {
      v168 = v167;
      v169 = *v257;
      while (2)
      {
        v170 = dictionaryCopy;
        for (k = 0; k != v168; ++k)
        {
          if (*v257 != v169)
          {
            objc_enumerationMutation(v251);
          }

          v172 = *(*(&v256 + 1) + 8 * k);
          v255 = 0;
          v173 = [v172 filterForUserEnrollmentOutError:&v255];
          v174 = v255;
          if (v174)
          {
            mCCopyAsPrimaryError = v174;

            dictionaryCopy = v170;
            goto LABEL_132;
          }

          if (v173)
          {
            v175 = v173;
          }

          else
          {
            v175 = v172;
          }

          [objb addObject:v175];
        }

        v168 = [(NSArray *)v251 countByEnumeratingWithState:&v256 objects:v282 count:16];
        dictionaryCopy = v170;
        if (v168)
        {
          continue;
        }

        break;
      }

      mCCopyAsPrimaryError = 0;
LABEL_132:
      optionsCopy = v241;
      v15 = v245;
    }

    else
    {
      mCCopyAsPrimaryError = 0;
    }

    installOptions6 = objb;
    v188 = [MEMORY[0x1E695DEC8] arrayWithArray:objb];
    v166 = v15->_payloads;
    v15->_payloads = v188;
    goto LABEL_140;
  }

  if (!v19 && !payloadCopy)
  {
    v32 = MEMORY[0x1E696ABC0];
    friendlyName = MCErrorArray(@"EMPTY_PAYLOAD_ERROR_DESCRIPTION", v20, v21, v22, v23, v24, v25, v26, 0);
    mCCopyAsPrimaryError = [v32 MCErrorWithDomain:@"MCProfileErrorDomain" code:1005 descriptionArray:friendlyName errorType:@"MCFatalError"];
    goto LABEL_34;
  }

  v276 = 0;
  v34 = [MCPayload payloadsFromArray:v17 isStub:0 profile:v15 outError:&v276];
  friendlyName = v276;
  v35 = v15->_payloads;
  v15->_payloads = v34;

  v249 = v17;
  if (friendlyName)
  {
    v36 = dictionaryCopy;
    mCCopyAsPrimaryError = friendlyName;
    v37 = MEMORY[0x1E696ABC0];
    profileDescription = [(MCProfile *)v15 profileDescription];
    if (profileDescription)
    {
      [(MCProfile *)v15 profileDescription];
    }

    else
    {
      [(MCProfile *)v15 identifier];
    }
    v61 = ;
    v69 = MCErrorArray(@"ERROR_PROFILE_MALFORMED_P_ID", v62, v63, v64, v65, v66, v67, v68, v61);
    v70 = [v37 MCErrorWithDomain:@"MCProfileErrorDomain" code:1000 descriptionArray:v69 underlyingError:mCCopyAsPrimaryError errorType:@"MCFatalError"];

    dictionaryCopy = v36;
    goto LABEL_32;
  }

  if (![(NSArray *)v15->_payloads count]&& !payloadCopy)
  {
    v51 = MEMORY[0x1E696ABC0];
    profileDescription = MCErrorArray(@"EMPTY_PAYLOAD_ERROR_DESCRIPTION", v44, v45, v46, v47, v48, v49, v50, 0);
    mCCopyAsPrimaryError = [v51 MCErrorWithDomain:@"MCProfileErrorDomain" code:1005 descriptionArray:profileDescription errorType:@"MCFatalError"];
LABEL_32:

LABEL_33:
    v17 = v249;
    goto LABEL_34;
  }

  v244 = v15;
  v72 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v17, "count")}];
  v73 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v17, "count")}];
  v272 = 0u;
  v273 = 0u;
  v274 = 0u;
  v275 = 0u;
  obj = v15->_payloads;
  v74 = [(NSArray *)obj countByEnumeratingWithState:&v272 objects:v290 count:16];
  if (!v74)
  {
    mCCopyAsPrimaryError = 0;
    goto LABEL_50;
  }

  v75 = v74;
  v76 = *v273;
  errorCopy3 = error;
  while (2)
  {
    v77 = dictionaryCopy;
    for (m = 0; m != v75; ++m)
    {
      if (*v273 != v76)
      {
        objc_enumerationMutation(obj);
      }

      v79 = optionsCopy;
      v80 = *(*(&v272 + 1) + 8 * m);
      uUID = [v80 UUID];
      if ([v72 containsObject:uUID])
      {
        v97 = MEMORY[0x1E696ABC0];
        identifier2 = MCErrorArray(@"ERROR_PROFILE_PAYLOAD_NONUNIQUE_UUIDS", v82, v83, v84, v85, v86, v87, v88, 0);
        mCCopyAsPrimaryError = [v97 MCErrorWithDomain:@"MCProfileErrorDomain" code:1007 descriptionArray:identifier2 errorType:@"MCFatalError"];
LABEL_49:

        dictionaryCopy = v77;
        optionsCopy = v79;
        v15 = v244;
        error = errorCopy3;
        goto LABEL_50;
      }

      [v72 addObject:uUID];
      identifier2 = [v80 identifier];
      if ([v73 containsObject:identifier2])
      {
        v98 = MEMORY[0x1E696ABC0];
        v99 = MCErrorArray(@"ERROR_PROFILE_PAYLOAD_NONUNIQUE_IDENTIFIERS_P_ID", v90, v91, v92, v93, v94, v95, v96, identifier2);
        mCCopyAsPrimaryError = [v98 MCErrorWithDomain:@"MCProfileErrorDomain" code:1008 descriptionArray:v99 errorType:@"MCFatalError"];

        goto LABEL_49;
      }

      [v73 addObject:identifier2];

      optionsCopy = v79;
    }

    v75 = [(NSArray *)obj countByEnumeratingWithState:&v272 objects:v290 count:16];
    mCCopyAsPrimaryError = 0;
    dictionaryCopy = v77;
    v15 = v244;
    error = errorCopy3;
    if (v75)
    {
      continue;
    }

    break;
  }

LABEL_50:

  v17 = v249;
LABEL_51:
  if (!mCCopyAsPrimaryError)
  {
    goto LABEL_59;
  }

LABEL_52:

LABEL_53:
  v30MCCopyAsPrimaryError = [mCCopyAsPrimaryError MCCopyAsPrimaryError];
  v101 = [(MCProfile *)v15 malformedProfileErrorWithError:v30MCCopyAsPrimaryError];

  if (error)
  {
    v102 = v101;
    *error = v101;
  }

  v103 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v104 = v103;
    mCVerboseDescription = [v101 MCVerboseDescription];
    *buf = 138543618;
    v286 = v15;
    v287 = 2114;
    v288 = mCVerboseDescription;
    _os_log_impl(&dword_1A795B000, v104, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse profile: %{public}@", buf, 0x16u);
  }

  v71 = 0;
LABEL_58:

  return v71;
}

- (BOOL)isManagedByMDM
{
  if (self->_isMDMProfile)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = MCConfigurationProfile;
  return [(MCProfile *)&v5 isManagedByMDM];
}

- (id)installationWarningsIncludeUnsignedProfileWarning:(BOOL)warning
{
  warningCopy = warning;
  v20 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_payloads;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        installationWarnings = [*(*(&v15 + 1) + 8 * i) installationWarnings];
        if ([installationWarnings count])
        {
          [v5 addObjectsFromArray:installationWarnings];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14.receiver = self;
  v14.super_class = MCConfigurationProfile;
  v12 = [(MCProfile *)&v14 installationWarningsIncludeUnsignedProfileWarning:warningCopy];
  [v5 addObjectsFromArray:v12];

  return v5;
}

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = MCConfigurationProfile;
  v3 = [(MCProfile *)&v16 description];
  v4 = [v3 mutableCopy];

  if ([(NSArray *)self->_payloads count])
  {
    [v4 appendFormat:@"\nPayloads:\n"];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_payloads;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) description];
          [v4 appendFormat:@"%@\n", v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }

  if (self->_isCloudProfile)
  {
    [v4 appendFormat:@"Is could profile: Yes"];
  }

  if (self->_isCloudLocked)
  {
    [v4 appendFormat:@"Is cloud locked : Yes"];
  }

  if (self->_OTAProfile)
  {
    [v4 appendFormat:@"OTA profile: %@\n", self->_OTAProfile];
  }

  return v4;
}

- (id)verboseDescription
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = MCConfigurationProfile;
  verboseDescription = [(MCProfile *)&v16 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  if ([(NSArray *)self->_payloads count])
  {
    [v4 appendFormat:@"\nPayloads:\n"];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_payloads;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          verboseDescription2 = [*(*(&v12 + 1) + 8 * i) verboseDescription];
          [v4 appendFormat:@"%@\n", verboseDescription2];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }

  if (self->_isCloudProfile)
  {
    [v4 appendFormat:@"Is could profile: Yes"];
  }

  if (self->_isCloudLocked)
  {
    [v4 appendFormat:@"Is cloud locked : Yes"];
  }

  if (self->_OTAProfile)
  {
    [v4 appendFormat:@"OTA profile: %@\n", self->_OTAProfile];
  }

  return v4;
}

- (id)serializedDictionary
{
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = MCConfigurationProfile;
  serializedDictionary = [(MCProfile *)&v19 serializedDictionary];
  v4 = [serializedDictionary mutableCopy];

  if ([(NSArray *)self->_payloads count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_payloads, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_payloads;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          serializedDictionary2 = [*(*(&v15 + 1) + 8 * i) serializedDictionary];
          [v5 addObject:serializedDictionary2];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v8);
    }

    [v4 setObject:v5 forKeyedSubscript:@"Payloads"];
  }

  if (self->_isCloudProfile)
  {
    [v4 setObject:&unk_1F1AA54B8 forKeyedSubscript:@"Cloud Profile"];
  }

  if (self->_isCloudLocked)
  {
    [v4 setObject:&unk_1F1AA54B8 forKeyedSubscript:@"Cloud Locked"];
  }

  OTAProfile = self->_OTAProfile;
  if (OTAProfile)
  {
    serializedDictionary3 = [(MCProfileServiceProfile *)OTAProfile serializedDictionary];
    [v4 setObject:serializedDictionary3 forKeyedSubscript:@"OTA Profile"];
  }

  return v4;
}

- (id)stubDictionary
{
  v22 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = MCConfigurationProfile;
  stubDictionary = [(MCProfile *)&v20 stubDictionary];
  [stubDictionary setObject:@"Configuration" forKeyedSubscript:@"PayloadType"];
  isCloudProfileNum = [(MCConfigurationProfile *)self isCloudProfileNum];
  [stubDictionary setObject:isCloudProfileNum forKeyedSubscript:@"IsCloudProfile"];

  isCloudLockedNum = [(MCConfigurationProfile *)self isCloudLockedNum];
  [stubDictionary setObject:isCloudLockedNum forKeyedSubscript:@"IsCloudLocked"];

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_payloads, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_payloads;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        stubDictionary2 = [*(*(&v16 + 1) + 8 * i) stubDictionary];
        [v6 addObject:stubDictionary2];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }

  [stubDictionary setObject:v6 forKey:@"PayloadContent"];
  OTAProfile = self->_OTAProfile;
  if (OTAProfile)
  {
    stubDictionary3 = [(MCProfileServiceProfile *)OTAProfile stubDictionary];
    [stubDictionary setObject:stubDictionary3 forKey:@"OTAProfileStub"];
  }

  return stubDictionary;
}

- (id)_localizedPayloadSummaryByType:(id)type
{
  v21 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(typeCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = typeCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  v7 = v5;
  if (!v6)
  {
    goto LABEL_18;
  }

  v8 = v6;
  v9 = 0;
  v10 = 0;
  v11 = *v17;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v5);
      }

      v13 = objc_opt_class();
      if (v13 != objc_opt_class())
      {
        if (v10 == v13)
        {
          ++v9;
        }

        else
        {
          if (v10 && v9)
          {
            v14 = [v10 localizedDescriptionForPayloadCount:{v9, v16}];
            [v4 addObject:v14];
          }

          v9 = 1;
          v10 = v13;
        }
      }
    }

    v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v8);

  if (v10 && v9)
  {
    v7 = [v10 localizedDescriptionForPayloadCount:v9];
    [v4 addObject:v7];
LABEL_18:
  }

  return v4;
}

- (id)localizedPayloadSummaryByType
{
  payloads = [(MCConfigurationProfile *)self payloads];
  v4 = [(MCConfigurationProfile *)self _localizedPayloadSummaryByType:payloads];

  return v4;
}

- (id)localizedManagedPayloadSummaryByType
{
  managedPayloads = [(MCConfigurationProfile *)self managedPayloads];
  v4 = [(MCConfigurationProfile *)self _localizedPayloadSummaryByType:managedPayloads];

  return v4;
}

- (id)localizedManagedProfileConsentTexts
{
  v26 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = MCConfigurationProfile;
  localizedManagedProfileConsentTexts = [(MCProfile *)&v24 localizedManagedProfileConsentTexts];
  v4 = [localizedManagedProfileConsentTexts mutableCopy];

  v5 = +[MCDependencyReader sharedReader];
  identifier = [(MCProfile *)self identifier];
  v7 = [v5 dependentsOfParent:identifier inDomain:@"ManagingProfileToManagedProfile"];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        identifier2 = [(MCProfile *)self identifier];
        v15 = [v13 isEqualToString:identifier2];

        if ((v15 & 1) == 0)
        {
          v16 = [MCManifest installedProfileWithIdentifier:v13];
          localizedManagedProfileConsentTexts2 = [v16 localizedManagedProfileConsentTexts];
          [v4 addEntriesFromDictionary:localizedManagedProfileConsentTexts2];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v10);
  }

  v18 = [v4 copy];

  return v18;
}

- (id)earliestCertificateExpiryDate
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_payloads;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v31 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          expiry = [v8 expiry];
          sMIMEEmailAddress = [v8 SMIMEEmailAddress];
          if (sMIMEEmailAddress)
          {
            v11 = [v3 objectForKeyedSubscript:sMIMEEmailAddress];
            if (!v11 || ([expiry timeIntervalSinceDate:v11], v12 > 0.0))
            {
              [v3 setObject:expiry forKeyedSubscript:sMIMEEmailAddress];
            }
          }

          else
          {
            [expiry timeIntervalSinceDate:v22[5]];
            if (v13 < 0.0)
            {
              objc_storeStrong(v22 + 5, expiry);
              *(v28 + 24) = 1;
            }
          }
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v31 count:16];
    }

    while (v5);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__MCConfigurationProfile_earliestCertificateExpiryDate__block_invoke;
  v16[3] = &unk_1E77D1F48;
  v16[4] = &v21;
  v16[5] = &v27;
  [v3 enumerateKeysAndObjectsUsingBlock:v16];
  if (*(v28 + 24) == 1)
  {
    v14 = v22[5];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v14;
}

void __55__MCConfigurationProfile_earliestCertificateExpiryDate__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [v6 timeIntervalSinceDate:*(*(*(a1 + 32) + 8) + 40)];
  if (v5 < 0.0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)replacePayloadWithUUID:(id)d withPayload:(id)payload
{
  dCopy = d;
  payloadCopy = payload;
  v7 = [(NSArray *)self->_payloads mutableCopy];
  if ([v7 count])
  {
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = [v7 objectAtIndexedSubscript:v8];
      uUID = [v10 UUID];
      v12 = [uUID isEqualToString:dCopy];

      if (v12)
      {
        break;
      }

      v8 = v9;
      if ([v7 count] <= v9++)
      {
        goto LABEL_7;
      }
    }

    [v7 setObject:payloadCopy atIndexedSubscript:v8];
  }

LABEL_7:
  v14 = [v7 copy];
  payloads = self->_payloads;
  self->_payloads = v14;
}

@end