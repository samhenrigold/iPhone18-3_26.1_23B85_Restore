@interface POProfile
- (POProfile)init;
- (POProfile)initWithProfile:(id)profile;
- (unint64_t)translatePolicy:(id)policy;
@end

@implementation POProfile

- (POProfile)init
{
  v3.receiver = self;
  v3.super_class = POProfile;
  return [(POProfile *)&v3 init];
}

- (POProfile)initWithProfile:(id)profile
{
  v215 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  if (!profileCopy)
  {
    goto LABEL_113;
  }

  v6 = [(POProfile *)self init];
  self = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, profile);
    extensionBundleIdentifier = [profileCopy extensionBundleIdentifier];
    extensionBundleIdentifier = self->_extensionBundleIdentifier;
    self->_extensionBundleIdentifier = extensionBundleIdentifier;

    uRLPrefix = [profileCopy URLPrefix];
    URLPrefix = self->_URLPrefix;
    self->_URLPrefix = uRLPrefix;

    pssoRegistrationToken = [profileCopy pssoRegistrationToken];
    registrationToken = self->_registrationToken;
    self->_registrationToken = pssoRegistrationToken;

    extensionData = [profileCopy extensionData];
    extensionData = self->_extensionData;
    self->_extensionData = extensionData;

    platformSSO = [profileCopy platformSSO];
    v16 = [platformSSO objectForKeyedSubscript:@"AccountDisplayName"];
    accountDisplayName = self->_accountDisplayName;
    self->_accountDisplayName = v16;

    platformSSO2 = [profileCopy platformSSO];
    v19 = [platformSSO2 objectForKeyedSubscript:@"AuthenticationMethod"];

    self->_authenticationMethod = [MEMORY[0x277CEBF08] authMethodWithString:v19];
    platformSSO3 = [profileCopy platformSSO];
    v21 = [platformSSO3 objectForKeyedSubscript:@"UseSharedDeviceKeys"];

    v174 = v21;
    self->_useSharedDeviceKeys = [v21 BOOLValue];
    platformSSO4 = [profileCopy platformSSO];
    v23 = [platformSSO4 objectForKeyedSubscript:@"EnableCreateUserAtLogin"];

    v173 = v23;
    self->_createUsersEnabled = [v23 BOOLValue];
    platformSSO5 = [profileCopy platformSSO];
    v25 = [platformSSO5 objectForKeyedSubscript:@"EnableCreateFirstUserDuringSetup"];

    v175 = v19;
    v172 = v25;
    if (v25)
    {
      bOOLValue = [v25 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    self->_createFirstUserDuringSetupEnabled = bOOLValue;
    v27 = 0x277CBE000uLL;
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    platformSSO6 = [profileCopy platformSSO];
    v30 = [platformSSO6 objectForKeyedSubscript:@"NewUserAuthenticationMethods"];

    objc_opt_class();
    v178 = profileCopy;
    selfCopy = self;
    v181 = v28;
    v177 = v30;
    if (objc_opt_isKindOfClass())
    {
      v207 = 0u;
      v208 = 0u;
      v205 = 0u;
      v206 = 0u;
      v31 = v30;
      v32 = [v31 countByEnumeratingWithState:&v205 objects:v214 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v206;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v206 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v205 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v37 = [MEMORY[0x277CEBF08] authMethodWithString:v36];
              v38 = v37 == 1 || v37 == 3;
              if (v38 || v37 == 4)
              {
                v40 = [MEMORY[0x277CCABB0] numberWithInt:?];
                [v181 addObject:v40];
              }
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v205 objects:v214 count:16];
        }

        while (v33);
      }

      self = selfCopy;
      v28 = v181;
      v30 = v177;
      v27 = 0x277CBE000;
    }

    if (!v30)
    {
      v41 = [MEMORY[0x277CCABB0] numberWithInt:1];
      [v28 addObject:v41];

      v42 = [MEMORY[0x277CCABB0] numberWithInt:3];
      [v28 addObject:v42];
    }

    if ([v28 count])
    {
      v43 = [v28 copy];
      createUserAuthenticationMethods = self->_createUserAuthenticationMethods;
      self->_createUserAuthenticationMethods = v43;
    }

    platformSSO7 = [profileCopy platformSSO];
    v46 = [platformSSO7 objectForKeyedSubscript:@"EnableAuthorization"];

    self->_authorizationEnabled = [v46 BOOLValue];
    platformSSO8 = [profileCopy platformSSO];
    v48 = [platformSSO8 objectForKeyedSubscript:@"LoginFrequency"];

    if (v48)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v48 >= &unk_28708C3A8)
        {
          v49 = v48;
        }

        else
        {
          v49 = &unk_28708C3A8;
        }

        objc_storeStrong(&self->_loginFrequency, v49);
      }
    }

    v170 = v48;
    v171 = v46;
    v50 = objc_alloc_init(MEMORY[0x277CBEB38]);
    platformSSO9 = [profileCopy platformSSO];
    v52 = [platformSSO9 objectForKeyedSubscript:@"TokenToUserMapping"];

    objc_opt_class();
    v180 = v50;
    if (objc_opt_isKindOfClass())
    {
      v203 = 0u;
      v204 = 0u;
      v201 = 0u;
      v202 = 0u;
      allKeys = [v52 allKeys];
      v54 = [allKeys countByEnumeratingWithState:&v201 objects:v213 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = *v202;
        v57 = *MEMORY[0x277D3D290];
        v58 = *MEMORY[0x277D3D298];
        do
        {
          for (j = 0; j != v55; ++j)
          {
            if (*v202 != v56)
            {
              objc_enumerationMutation(allKeys);
            }

            v60 = *(*(&v201 + 1) + 8 * j);
            v61 = [v52 objectForKeyedSubscript:v60];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && (([v60 isEqualToString:v57] & 1) != 0 || objc_msgSend(v60, "isEqualToString:", v58)))
              {
                [v180 setObject:v61 forKeyedSubscript:v60];
              }
            }
          }

          v55 = [allKeys countByEnumeratingWithState:&v201 objects:v213 count:16];
        }

        while (v55);
      }

      profileCopy = v178;
      self = selfCopy;
      v50 = v180;
      v27 = 0x277CBE000uLL;
    }

    if ([v50 count])
    {
      v62 = [v50 copy];
      tokenToUserMapping = self->_tokenToUserMapping;
      self->_tokenToUserMapping = v62;
    }

    platformSSO10 = [profileCopy platformSSO];
    v65 = [platformSSO10 objectForKeyedSubscript:@"NewUserAuthorizationMode"];

    v169 = v65;
    self->_newUserAuthorizationMode = [MEMORY[0x277D3D1D0] userAuthorizationModeWithString:v65];
    platformSSO11 = [profileCopy platformSSO];
    v67 = [platformSSO11 objectForKeyedSubscript:@"UserAuthorizationMode"];

    v168 = v67;
    self->_userAuthorizationMode = [MEMORY[0x277D3D1D0] userAuthorizationModeWithString:v67];
    v68 = objc_alloc_init(*(v27 + 2840));
    platformSSO12 = [profileCopy platformSSO];
    v70 = [platformSSO12 objectForKeyedSubscript:@"AdministratorGroups"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v199 = 0u;
      v200 = 0u;
      v197 = 0u;
      v198 = 0u;
      v71 = v70;
      v72 = [v71 countByEnumeratingWithState:&v197 objects:v212 count:16];
      if (v72)
      {
        v73 = v72;
        v74 = *v198;
        do
        {
          for (k = 0; k != v73; ++k)
          {
            if (*v198 != v74)
            {
              objc_enumerationMutation(v71);
            }

            v76 = *(*(&v197 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v68 addObject:v76];
            }
          }

          v73 = [v71 countByEnumeratingWithState:&v197 objects:v212 count:16];
        }

        while (v73);
      }

      profileCopy = v178;
      self = selfCopy;
    }

    if ([v68 count])
    {
      v77 = [v68 copy];
      administratorGroups = self->_administratorGroups;
      self->_administratorGroups = v77;
    }

    v79 = objc_alloc_init(*(v27 + 2840));

    platformSSO13 = [profileCopy platformSSO];
    v81 = [platformSSO13 objectForKeyedSubscript:@"AdditionalGroups"];

    objc_opt_class();
    v176 = v81;
    if (objc_opt_isKindOfClass())
    {
      v195 = 0u;
      v196 = 0u;
      v193 = 0u;
      v194 = 0u;
      v82 = v81;
      v83 = [v82 countByEnumeratingWithState:&v193 objects:v211 count:16];
      if (v83)
      {
        v84 = v83;
        v85 = *v194;
        do
        {
          for (m = 0; m != v84; ++m)
          {
            if (*v194 != v85)
            {
              objc_enumerationMutation(v82);
            }

            v87 = *(*(&v193 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v79 addObject:v87];
            }
          }

          v84 = [v82 countByEnumeratingWithState:&v193 objects:v211 count:16];
        }

        while (v84);
      }

      profileCopy = v178;
    }

    v167 = v70;
    if ([v79 count])
    {
      v88 = [v79 copy];
      otherGroups = self->_otherGroups;
      self->_otherGroups = v88;
    }

    v166 = v79;
    v182 = objc_alloc_init(MEMORY[0x277CBEB38]);
    platformSSO14 = [profileCopy platformSSO];
    v91 = [platformSSO14 objectForKeyedSubscript:@"AuthorizationGroups"];

    v191 = 0u;
    v192 = 0u;
    v189 = 0u;
    v190 = 0u;
    allKeys2 = [v91 allKeys];
    v93 = [allKeys2 countByEnumeratingWithState:&v189 objects:v210 count:16];
    if (v93)
    {
      v94 = v93;
      v95 = *v190;
      do
      {
        for (n = 0; n != v94; ++n)
        {
          if (*v190 != v95)
          {
            objc_enumerationMutation(allKeys2);
          }

          v97 = *(*(&v189 + 1) + 8 * n);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v98 = [v91 objectForKeyedSubscript:v97];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v100 = [v91 objectForKeyedSubscript:v97];
              [v182 setObject:v100 forKeyedSubscript:v97];
            }
          }
        }

        v94 = [allKeys2 countByEnumeratingWithState:&v189 objects:v210 count:16];
      }

      while (v94);
    }

    self = selfCopy;
    if ([v182 count])
    {
      v101 = [v182 copy];
      authorizationGroups = selfCopy->_authorizationGroups;
      selfCopy->_authorizationGroups = v101;
    }

    v103 = [(NSArray *)selfCopy->_administratorGroups count];
    v104 = [(NSArray *)selfCopy->_otherGroups count]+ v103;
    v105 = v104 + [(NSDictionary *)selfCopy->_authorizationGroups count];
    profileCopy = v178;
    v165 = v105;
    if (v105 >= 0x65)
    {
      v137 = MEMORY[0x277CCACA8];
      v138 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v105];
      v139 = [v137 stringWithFormat:@"Profile Groups: %@, Limit: %@", v138, &unk_28708C3C0];

      v187[0] = MEMORY[0x277D85DD0];
      v187[1] = 3221225472;
      v187[2] = __29__POProfile_initWithProfile___block_invoke;
      v187[3] = &unk_279A3A088;
      v188 = v139;
      v140 = v139;
      v141 = __29__POProfile_initWithProfile___block_invoke(v187);
      v142 = v188;
      v144 = v180;
      v143 = v181;
      v145 = v177;
      v147 = v170;
      v146 = v171;
      goto LABEL_111;
    }

    platformSSO15 = [v178 platformSSO];
    v107 = [platformSSO15 objectForKeyedSubscript:@"FileVaultPolicy"];
    selfCopy->_fileVaultPolicy = [(POProfile *)selfCopy translatePolicy:v107];

    platformSSO16 = [v178 platformSSO];
    v109 = [platformSSO16 objectForKeyedSubscript:@"LoginPolicy"];
    selfCopy->_loginPolicy = [(POProfile *)selfCopy translatePolicy:v109];

    platformSSO17 = [v178 platformSSO];
    v111 = [platformSSO17 objectForKeyedSubscript:@"UnlockPolicy"];
    selfCopy->_unlockPolicy = [(POProfile *)selfCopy translatePolicy:v111];

    platformSSO18 = [v178 platformSSO];
    v113 = [platformSSO18 objectForKeyedSubscript:@"OfflineGracePeriod"];

    v164 = v113;
    selfCopy->_offlineGracePeriod = [v113 intValue];
    platformSSO19 = [v178 platformSSO];
    v115 = [platformSSO19 objectForKeyedSubscript:@"AuthenticationGracePeriod"];

    v163 = v115;
    selfCopy->_requireAuthGracePeriod = [v115 intValue];
    v116 = objc_alloc_init(MEMORY[0x277CBEB18]);
    platformSSO20 = [v178 platformSSO];
    v118 = [platformSSO20 objectForKeyedSubscript:@"NonPlatformSSOAccounts"];

    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    v119 = v118;
    v120 = [v119 countByEnumeratingWithState:&v183 objects:v209 count:16];
    if (v120)
    {
      v121 = v120;
      v122 = *v184;
      do
      {
        for (ii = 0; ii != v121; ++ii)
        {
          if (*v184 != v122)
          {
            objc_enumerationMutation(v119);
          }

          v124 = *(*(&v183 + 1) + 8 * ii);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            lowercaseString = [v124 lowercaseString];
            [v116 addObject:lowercaseString];
          }
        }

        v121 = [v119 countByEnumeratingWithState:&v183 objects:v209 count:16];
      }

      while (v121);
    }

    self = selfCopy;
    if ([v116 count])
    {
      v126 = [v116 copy];
      nonPlatformSSOAccounts = selfCopy->_nonPlatformSSOAccounts;
      selfCopy->_nonPlatformSSOAccounts = v126;
    }

    platformSSO21 = [v178 platformSSO];
    v129 = [platformSSO21 objectForKeyedSubscript:@"AllowDeviceIdentifiersInAttestation"];

    v162 = v129;
    selfCopy->_allowDeviceIdentifiersInAttestation = [v129 BOOLValue];
    platformSSO22 = [v178 platformSSO];
    v131 = [platformSSO22 objectForKeyedSubscript:@"AccessKeyTerminalIdentityUUID"];

    v161 = v131;
    objc_storeStrong(&selfCopy->_accessKeyTerminalIdentityUUID, v131);
    platformSSO23 = [v178 platformSSO];
    v133 = [platformSSO23 objectForKeyedSubscript:@"AllowAccessKeyExpressMode"];

    v160 = v133;
    selfCopy->_allowAccessKeyExpressMode = [v133 BOOLValue];
    platformSSO24 = [v178 platformSSO];
    v135 = [platformSSO24 objectForKeyedSubscript:@"AccessKeyReaderGroupIdentifier"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v136 = v135;
      if ([v136 length] != 16)
      {
LABEL_108:
        v150 = __29__POProfile_initWithProfile___block_invoke_90();
        goto LABEL_109;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_110:
        platformSSO25 = [v178 platformSSO];
        v159 = [platformSSO25 objectForKeyedSubscript:@"SynchronizeProfilePicture"];

        selfCopy->_synchronizeProfilePicture = [v159 BOOLValue];
        platformSSO26 = [v178 platformSSO];
        [platformSSO26 objectForKeyedSubscript:@"TemporarySessionQuickLogin"];
        v154 = v153 = v135;

        selfCopy->_temporarySessionQuickLogin = [v154 BOOLValue];
        platformSSO27 = [v178 platformSSO];
        v156 = [platformSSO27 objectForKeyedSubscript:@"EnableRegistrationDuringSetup"];

        selfCopy->_enableRegistrationDuringSetup = [v156 BOOLValue];
        v144 = v180;
        v143 = v181;
        v145 = v177;
        v147 = v170;
        v146 = v171;
        v142 = v163;
        v140 = v164;
LABEL_111:

        if (v165 <= 0x64)
        {
          goto LABEL_112;
        }

LABEL_113:
        selfCopy2 = 0;
        goto LABEL_114;
      }

      [v135 UTF8String];
      v136 = NSDataWithHex();
      if ([v136 length] != 16)
      {
        goto LABEL_108;
      }
    }

    v148 = [v136 copy];
    accessKeyReaderGroupIdentifier = selfCopy->_accessKeyReaderGroupIdentifier;
    selfCopy->_accessKeyReaderGroupIdentifier = v148;

LABEL_109:
    goto LABEL_110;
  }

LABEL_112:
  self = self;
  selfCopy2 = self;
LABEL_114:

  return selfCopy2;
}

id __29__POProfile_initWithProfile___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Profile rejected too many groups."];
  v2 = PO_LOG_POProfile(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_376_cold_1();
  }

  return v1;
}

id __29__POProfile_initWithProfile___block_invoke_90()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Invalid reader group identifier length"];
  v1 = PO_LOG_POProfile(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __29__POProfile_initWithProfile___block_invoke_90_cold_1(v0, v1);
  }

  return v0;
}

- (unint64_t)translatePolicy:(id)policy
{
  v20 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = policyCopy;
    v4 = policyCopy;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if ([v10 isEqualToString:@"AttemptAuthentication"])
          {
            v7 |= 1uLL;
          }

          else if ([v10 isEqualToString:@"RequireAuthentication"])
          {
            v7 |= 2uLL;
          }

          else if ([v10 isEqualToString:@"AllowOfflineGracePeriod"])
          {
            v7 |= 4uLL;
          }

          else if ([v10 isEqualToString:@"AllowAuthenticationGracePeriod"])
          {
            v7 |= 8uLL;
          }

          else if ([v10 isEqualToString:@"AllowTouchIDOrWatchForUnlock"])
          {
            v7 |= 0x10uLL;
          }

          else
          {
            v14[0] = MEMORY[0x277D85DD0];
            v14[1] = 3221225472;
            v14[2] = __29__POProfile_translatePolicy___block_invoke;
            v14[3] = &unk_279A3A088;
            v14[4] = v10;
            v11 = __29__POProfile_translatePolicy___block_invoke(v14);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    policyCopy = v13;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __29__POProfile_translatePolicy___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"Invalid policy entry:"];
  v2 = PO_LOG_POProfile(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __74__POAgentAuthenticationProcess_handleUserNeedsReauthenticationAfterDelay___block_invoke_376_cold_1();
  }

  return v1;
}

void __29__POProfile_initWithProfile___block_invoke_90_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_25E831000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v2, 0xCu);
}

@end