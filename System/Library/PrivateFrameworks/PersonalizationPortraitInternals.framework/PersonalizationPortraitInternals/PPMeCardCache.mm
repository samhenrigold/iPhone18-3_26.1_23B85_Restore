@interface PPMeCardCache
- (BOOL)deleteMeCardCache;
- (BOOL)writeMeCardCache:(id)cache;
- (PPPBDateComponents)_cachedDateComponentsFromDateComponents:(PPPBDateComponents *)components;
- (id)_dateComponentsFromCachedDateComponents:(void *)components;
- (id)loadMeCardCache;
@end

@implementation PPMeCardCache

- (BOOL)deleteMeCardCache
{
  v18 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:self->_path];

  if (v4)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    path = self->_path;
    v13 = 0;
    v7 = [defaultManager2 removeItemAtPath:path error:&v13];
    v8 = v13;

    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v10 = pp_contacts_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = self->_path;
        *buf = 138412546;
        v15 = v12;
        v16 = 2112;
        v17 = v8;
        _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "failed to delete me card cache at: %@ error: %@", buf, 0x16u);
      }

      v9 = 0;
    }
  }

  else
  {
    v8 = pp_contacts_log_handle();
    v9 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_INFO, "went to delete Me card cache but file was missing", buf, 2u);
    }
  }

  return v9;
}

- (BOOL)writeMeCardCache:(id)cache
{
  v127 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  if (!cacheCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPMeCardCache.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"meCardCache"}];
  }

  selfCopy = self;
  context = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  [v7 timeIntervalSinceReferenceDate];
  [v6 setCreatedAt:v8];

  identifier = [cacheCopy identifier];
  [v6 setIdentifier:identifier];

  givenName = [cacheCopy givenName];
  [v6 setGivenName:givenName];

  middleName = [cacheCopy middleName];
  [v6 setMiddleName:middleName];

  familyName = [cacheCopy familyName];
  [v6 setFamilyName:familyName];

  nickname = [cacheCopy nickname];
  [v6 setNickname:nickname];

  organizationName = [cacheCopy organizationName];
  [v6 setOrganizationName:organizationName];

  namePrefix = [cacheCopy namePrefix];
  [v6 setNamePrefix:namePrefix];

  nameSuffix = [cacheCopy nameSuffix];
  v97 = v6;
  [v6 setNameSuffix:nameSuffix];

  v17 = objc_opt_new();
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v98 = cacheCopy;
  phoneNumbers = [cacheCopy phoneNumbers];
  v19 = [phoneNumbers countByEnumeratingWithState:&v115 objects:v126 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v116;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v116 != v21)
        {
          objc_enumerationMutation(phoneNumbers);
        }

        v23 = *(*(&v115 + 1) + 8 * i);
        v24 = objc_autoreleasePoolPush();
        v25 = objc_opt_new();
        label = [v23 label];
        [v25 setLabel:label];

        value = [v23 value];
        [v25 setValue:value];

        [v17 addObject:v25];
        objc_autoreleasePoolPop(v24);
      }

      v20 = [phoneNumbers countByEnumeratingWithState:&v115 objects:v126 count:16];
    }

    while (v20);
  }

  [v97 setPhoneNumbers:v17];
  v28 = objc_opt_new();
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  emailAddresses = [cacheCopy emailAddresses];
  v30 = [emailAddresses countByEnumeratingWithState:&v111 objects:v125 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v112;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v112 != v32)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v34 = *(*(&v111 + 1) + 8 * j);
        v35 = objc_autoreleasePoolPush();
        v36 = objc_opt_new();
        label2 = [v34 label];
        [v36 setLabel:label2];

        value2 = [v34 value];
        [v36 setValue:value2];

        [v28 addObject:v36];
        objc_autoreleasePoolPop(v35);
      }

      v31 = [emailAddresses countByEnumeratingWithState:&v111 objects:v125 count:16];
    }

    while (v31);
  }

  [v97 setEmailAddresses:v28];
  v101 = objc_opt_new();
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = [cacheCopy postalAddresses];
  v39 = [obj countByEnumeratingWithState:&v107 objects:v124 count:16];
  if (v39)
  {
    v40 = v39;
    v100 = *v108;
    do
    {
      for (k = 0; k != v40; ++k)
      {
        if (*v108 != v100)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v107 + 1) + 8 * k);
        v43 = objc_autoreleasePoolPush();
        v44 = objc_opt_new();
        label3 = [v42 label];
        [v44 setLabel:label3];

        value3 = [v42 value];
        thoroughfare = [value3 thoroughfare];
        if ([thoroughfare length])
        {
          value4 = [v42 value];
          subThoroughfare = [value4 subThoroughfare];
          v50 = [subThoroughfare length];

          if (v50)
          {
            v51 = objc_alloc(MEMORY[0x277CCACA8]);
            value5 = [v42 value];
            thoroughfare2 = [value5 thoroughfare];
            value6 = [v42 value];
            subThoroughfare2 = [value6 subThoroughfare];
            context = [v51 initWithFormat:@"%@\n%@", thoroughfare2, subThoroughfare2, context];
            [v44 setStreet:context];

            goto LABEL_27;
          }
        }

        else
        {
        }

        value5 = [v42 value];
        thoroughfare2 = [value5 thoroughfare];
        [v44 setStreet:thoroughfare2];
LABEL_27:

        value7 = [v42 value];
        subLocality = [value7 subLocality];
        [v44 setSubLocality:subLocality];

        value8 = [v42 value];
        locality = [value8 locality];
        [v44 setCity:locality];

        value9 = [v42 value];
        subAdministrativeArea = [value9 subAdministrativeArea];
        [v44 setSubAdministrativeArea:subAdministrativeArea];

        value10 = [v42 value];
        administrativeArea = [value10 administrativeArea];
        [v44 setState:administrativeArea];

        value11 = [v42 value];
        postalCode = [value11 postalCode];
        [v44 setPostalCode:postalCode];

        value12 = [v42 value];
        country = [value12 country];
        [v44 setCountry:country];

        [v101 addObject:v44];
        objc_autoreleasePoolPop(v43);
      }

      v40 = [obj countByEnumeratingWithState:&v107 objects:v124 count:16];
    }

    while (v40);
  }

  [v97 setPostalAddresses:v101];
  v69 = objc_opt_new();
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  socialProfiles = [v98 socialProfiles];
  v71 = [socialProfiles countByEnumeratingWithState:&v103 objects:v123 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v104;
    do
    {
      for (m = 0; m != v72; ++m)
      {
        if (*v104 != v73)
        {
          objc_enumerationMutation(socialProfiles);
        }

        v75 = *(*(&v103 + 1) + 8 * m);
        v76 = objc_autoreleasePoolPush();
        v77 = objc_opt_new();
        label4 = [v75 label];
        [v77 setLabel:label4];

        value13 = [v75 value];
        [v77 setUsername:value13];

        label5 = [v75 label];
        [v77 setService:label5];

        [v69 addObject:v77];
        objc_autoreleasePoolPop(v76);
      }

      v72 = [socialProfiles countByEnumeratingWithState:&v103 objects:v123 count:16];
    }

    while (v72);
  }

  [v97 setSocialProfiles:v69];
  birthday = [v98 birthday];

  if (birthday)
  {
    birthday2 = [v98 birthday];
    v83 = [(PPMeCardCache *)selfCopy _cachedDateComponentsFromDateComponents:birthday2];
    [v97 setBirthday:v83];
  }

  nonGregorianBirthday = [v98 nonGregorianBirthday];

  if (nonGregorianBirthday)
  {
    nonGregorianBirthday2 = [v98 nonGregorianBirthday];
    v86 = [(PPMeCardCache *)selfCopy _cachedDateComponentsFromDateComponents:nonGregorianBirthday2];
    [v97 setNonGregorianBirthday:v86];
  }

  data = [v97 data];
  calendarIdentifier = selfCopy->_calendarIdentifier;
  v102 = 0;
  v89 = [data writeToFile:calendarIdentifier options:1073741825 error:&v102];
  v90 = v102;

  if ((v89 & 1) == 0)
  {
    v91 = pp_contacts_log_handle();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      v93 = selfCopy->_calendarIdentifier;
      *buf = 138412546;
      v120 = v93;
      v121 = 2112;
      v122 = v90;
      _os_log_error_impl(&dword_23224A000, v91, OS_LOG_TYPE_ERROR, "failed to write me card cache at: %@ error: %@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(context);
  return v89;
}

- (PPPBDateComponents)_cachedDateComponentsFromDateComponents:(PPPBDateComponents *)components
{
  v3 = a2;
  if (components)
  {
    components = objc_opt_new();
    if ([v3 day] != 0x7FFFFFFFFFFFFFFFLL)
    {
      -[PPPBDateComponents setDay:](components, "setDay:", [v3 day]);
    }

    if ([v3 month] != 0x7FFFFFFFFFFFFFFFLL)
    {
      -[PPPBDateComponents setMonth:](components, "setMonth:", [v3 month]);
    }

    if ([v3 year] != 0x7FFFFFFFFFFFFFFFLL)
    {
      -[PPPBDateComponents setYear:](components, "setYear:", [v3 year]);
    }

    calendar = [v3 calendar];
    calendarIdentifier = [calendar calendarIdentifier];
    [(PPPBDateComponents *)components setCalendarIdentifier:calendarIdentifier];

    timeZone = [v3 timeZone];
    name = [timeZone name];
    [(PPPBDateComponents *)components setTimeZoneName:name];
  }

  return components;
}

- (id)loadMeCardCache
{
  v147 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:self->_path];

  v6 = pp_contacts_log_handle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      path = self->_path;
      *buf = 138412290;
      v144 = path;
      _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "PPPB: loading Me card cache from: %@", buf, 0xCu);
    }

    v9 = objc_alloc(MEMORY[0x277CBEA90]);
    v10 = self->_path;
    v138 = 0;
    v11 = [v9 initWithContentsOfFile:v10 options:1 error:&v138];
    v6 = v138;
    if (!v11)
    {
      p_super = pp_contacts_log_handle();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->_path;
        *buf = 138412546;
        v144 = v21;
        v145 = 2112;
        v146 = v6;
        _os_log_impl(&dword_23224A000, p_super, OS_LOG_TYPE_DEFAULT, "PPPB: failed to read %@: error: %@", buf, 0x16u);
      }

      v20 = 0;
      goto LABEL_82;
    }

    v12 = [[PPPBContact alloc] initWithData:v11];
    p_super = &v12->super.super;
    if (v12)
    {
      if ([(PPPBContact *)v12 hasCreatedAt])
      {
        v14 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-1209600.0];
        createdAt = [p_super createdAt];
        [v14 timeIntervalSinceReferenceDate];
        if (v16 > createdAt)
        {
          v17 = pp_contacts_log_handle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            createdAt2 = [p_super createdAt];
            *buf = 134217984;
            v144 = createdAt2;
            _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_INFO, "PPPB: aging out me card cache due to age: %lld", buf, 0xCu);
          }

          [(PPMeCardCache *)self deleteMeCardCache];
        }
      }

      else
      {
        [(PPMeCardCache *)self deleteMeCardCache];
      }

      if ([p_super hasIdentifier])
      {
        identifier = [p_super identifier];
        if (identifier)
        {
          v25 = identifier;
          identifier2 = [p_super identifier];
          v27 = [identifier2 length];

          if (v27)
          {
            v104 = v11;
            v105 = v6;
            v106 = v3;
            v107 = p_super;
            v108 = objc_opt_new();
            v134 = 0u;
            v135 = 0u;
            v136 = 0u;
            v137 = 0u;
            phoneNumbers = [p_super phoneNumbers];
            v29 = [phoneNumbers countByEnumeratingWithState:&v134 objects:v142 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v135;
              do
              {
                for (i = 0; i != v30; ++i)
                {
                  if (*v135 != v31)
                  {
                    objc_enumerationMutation(phoneNumbers);
                  }

                  v33 = *(*(&v134 + 1) + 8 * i);
                  v34 = objc_autoreleasePoolPush();
                  value = [v33 value];
                  v36 = [value length];

                  if (v36)
                  {
                    v37 = MEMORY[0x277D3A3D0];
                    label = [v33 label];
                    value2 = [v33 value];
                    v40 = [v37 labeledValueWithLabel:label value:value2];

                    if (v40)
                    {
                      [v108 addObject:v40];
                    }
                  }

                  objc_autoreleasePoolPop(v34);
                }

                v30 = [phoneNumbers countByEnumeratingWithState:&v134 objects:v142 count:16];
              }

              while (v30);
            }

            v109 = objc_opt_new();
            v130 = 0u;
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            emailAddresses = [v107 emailAddresses];
            v42 = [emailAddresses countByEnumeratingWithState:&v130 objects:v141 count:16];
            if (v42)
            {
              v43 = v42;
              v44 = *v131;
              do
              {
                for (j = 0; j != v43; ++j)
                {
                  if (*v131 != v44)
                  {
                    objc_enumerationMutation(emailAddresses);
                  }

                  v46 = *(*(&v130 + 1) + 8 * j);
                  v47 = objc_autoreleasePoolPush();
                  value3 = [v46 value];
                  v49 = [value3 length];

                  if (v49)
                  {
                    v50 = MEMORY[0x277D3A3D0];
                    label2 = [v46 label];
                    value4 = [v46 value];
                    v53 = [v50 labeledValueWithLabel:label2 value:value4];

                    if (v53)
                    {
                      [v109 addObject:v53];
                    }
                  }

                  objc_autoreleasePoolPop(v47);
                }

                v43 = [emailAddresses countByEnumeratingWithState:&v130 objects:v141 count:16];
              }

              while (v43);
            }

            selfCopy = self;

            v111 = objc_opt_new();
            v126 = 0u;
            v127 = 0u;
            v128 = 0u;
            v129 = 0u;
            obj = [v107 postalAddresses];
            v114 = [obj countByEnumeratingWithState:&v126 objects:v140 count:16];
            if (v114)
            {
              v112 = *v127;
              do
              {
                for (k = 0; k != v114; ++k)
                {
                  if (*v127 != v112)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v55 = *(*(&v126 + 1) + 8 * k);
                  context = objc_autoreleasePoolPush();
                  street = [v55 street];
                  v57 = [street componentsSeparatedByString:@"\n"];

                  if ([v57 count] == 2)
                  {
                    v120 = [v57 objectAtIndexedSubscript:0];
                    v118 = [v57 objectAtIndexedSubscript:1];
                  }

                  else
                  {
                    [v55 street];
                    v120 = v118 = 0;
                  }

                  if ([v55 hasCountry])
                  {
                    country = [v55 country];
LABEL_58:
                    v59 = country;
                    goto LABEL_60;
                  }

                  if ([v55 hasIsoCountryCode])
                  {
                    country = [v55 isoCountryCode];
                    goto LABEL_58;
                  }

                  v59 = 0;
LABEL_60:
                  v60 = objc_alloc(MEMORY[0x277D3A460]);
                  city = [v55 city];
                  subLocality = [v55 subLocality];
                  state = [v55 state];
                  subAdministrativeArea = [v55 subAdministrativeArea];
                  postalCode = [v55 postalCode];
                  v66 = [v60 initWithThoroughfare:v120 subThoroughfare:v118 locality:city subLocality:subLocality administrativeArea:state subAdministrativeArea:subAdministrativeArea postalCode:postalCode country:v59];

                  v67 = MEMORY[0x277D3A3D0];
                  label3 = [v55 label];
                  v69 = [v67 labeledValueWithLabel:label3 value:v66];

                  if (v69)
                  {
                    [v111 addObject:v69];
                  }

                  objc_autoreleasePoolPop(context);
                }

                v114 = [obj countByEnumeratingWithState:&v126 objects:v140 count:16];
              }

              while (v114);
            }

            v70 = objc_opt_new();
            v122 = 0u;
            v123 = 0u;
            v124 = 0u;
            v125 = 0u;
            socialProfiles = [v107 socialProfiles];
            v72 = [socialProfiles countByEnumeratingWithState:&v122 objects:v139 count:16];
            if (v72)
            {
              v73 = v72;
              v74 = *v123;
              do
              {
                for (m = 0; m != v73; ++m)
                {
                  if (*v123 != v74)
                  {
                    objc_enumerationMutation(socialProfiles);
                  }

                  v76 = *(*(&v122 + 1) + 8 * m);
                  v77 = objc_autoreleasePoolPush();
                  username = [v76 username];
                  v79 = [username length];

                  if (v79)
                  {
                    v80 = MEMORY[0x277D3A3D0];
                    label4 = [v76 label];
                    username2 = [v76 username];
                    v83 = [v80 labeledValueWithLabel:label4 value:username2];

                    if (v83)
                    {
                      [v70 addObject:v83];
                    }
                  }

                  objc_autoreleasePoolPop(v77);
                }

                v73 = [socialProfiles countByEnumeratingWithState:&v122 objects:v139 count:16];
              }

              while (v73);
            }

            v115 = objc_alloc(MEMORY[0x277D3A358]);
            identifier3 = [v107 identifier];
            namePrefix = [v107 namePrefix];
            givenName = [v107 givenName];
            middleName = [v107 middleName];
            familyName = [v107 familyName];
            nameSuffix = [v107 nameSuffix];
            nickname = [v107 nickname];
            organizationName = [v107 organizationName];
            hasBirthday = [v107 hasBirthday];
            if (hasBirthday)
            {
              [v107 birthday];
              obj = v91 = selfCopy;
              v119 = [(PPMeCardCache *)selfCopy _dateComponentsFromCachedDateComponents:?];
            }

            else
            {
              v119 = 0;
              v91 = selfCopy;
            }

            contexta = nickname;
            if (([v107 hasNonGregorianBirthday]& 1) != 0)
            {
              nonGregorianBirthday = [v107 nonGregorianBirthday];
              v93 = [(PPMeCardCache *)v91 _dateComponentsFromCachedDateComponents:nonGregorianBirthday];
              v94 = nickname;
              v95 = nameSuffix;
              v96 = familyName;
              v97 = middleName;
              v98 = givenName;
              v99 = namePrefix;
              v100 = identifier3;
              v101 = v93;
              v22 = v108;
              v20 = [v115 initWithIdentifier:v100 source:1 namePrefix:v99 givenName:v98 middleName:v97 familyName:v96 nameSuffix:v95 nickname:v94 localizedFullName:0 organizationName:organizationName jobTitle:0 birthday:v119 nonGregorianBirthday:v93 phoneNumbers:v108 emailAddresses:v109 socialProfiles:v70 postalAddresses:v111];

              identifier3 = v100;
              namePrefix = v99;
              givenName = v98;
              middleName = v97;
              familyName = v96;
              nameSuffix = v95;
            }

            else
            {
              v22 = v108;
              v20 = [v115 initWithIdentifier:identifier3 source:1 namePrefix:namePrefix givenName:givenName middleName:middleName familyName:familyName nameSuffix:nameSuffix nickname:nickname localizedFullName:0 organizationName:organizationName jobTitle:0 birthday:v119 nonGregorianBirthday:0 phoneNumbers:v108 emailAddresses:v109 socialProfiles:v70 postalAddresses:v111];
            }

            v3 = v106;
            if (hasBirthday)
            {
            }

            v11 = v104;
            v6 = v105;
            p_super = v107;
            goto LABEL_81;
          }
        }
      }

      [(PPMeCardCache *)self deleteMeCardCache];
      v22 = pp_contacts_log_handle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v23 = "PPPB: malformed me card cache (missing identifier)";
        goto LABEL_79;
      }
    }

    else
    {
      [(PPMeCardCache *)self deleteMeCardCache];
      v22 = pp_contacts_log_handle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v23 = "PPPB: malformed me card cache (PPPBContact initialization failed)";
LABEL_79:
        _os_log_impl(&dword_23224A000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
      }
    }

    v20 = 0;
LABEL_81:

LABEL_82:
    goto LABEL_83;
  }

  if (v7)
  {
    v19 = self->_path;
    *buf = 138412290;
    v144 = v19;
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_INFO, "PPPB: No Me card cache at: %@", buf, 0xCu);
  }

  v20 = 0;
LABEL_83:

  objc_autoreleasePoolPop(v3);

  return v20;
}

- (id)_dateComponentsFromCachedDateComponents:(void *)components
{
  v3 = a2;
  if (components)
  {
    components = objc_opt_new();
    if ([v3 hasDay])
    {
      [components setDay:{objc_msgSend(v3, "day")}];
    }

    if ([v3 hasMonth])
    {
      [components setMonth:{objc_msgSend(v3, "month")}];
    }

    if ([v3 hasYear])
    {
      [components setYear:{objc_msgSend(v3, "year")}];
    }

    if ([v3 hasCalendarIdentifier])
    {
      v4 = MEMORY[0x277CBEA80];
      calendarIdentifier = [v3 calendarIdentifier];
      v6 = [v4 calendarWithIdentifier:calendarIdentifier];
      [components setCalendar:v6];
    }

    if ([v3 hasTimeZoneName])
    {
      v7 = MEMORY[0x277CBEBB0];
      timeZoneName = [v3 timeZoneName];
      v9 = [v7 timeZoneWithName:timeZoneName];
      [components setTimeZone:v9];
    }
  }

  return components;
}

@end