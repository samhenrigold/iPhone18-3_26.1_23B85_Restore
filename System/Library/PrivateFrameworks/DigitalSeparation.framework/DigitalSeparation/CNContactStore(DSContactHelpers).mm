@interface CNContactStore(DSContactHelpers)
+ (id)contactMatchingEmailAddress:()DSContactHelpers;
+ (id)contactMatchingIdentity:()DSContactHelpers;
+ (id)contactMatchingPhoneNumber:()DSContactHelpers;
+ (id)ds_meContactIdentifier;
+ (void)ds_meContactIdentifier;
@end

@implementation CNContactStore(DSContactHelpers)

+ (id)ds_meContactIdentifier
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v10[0] = *MEMORY[0x277CBD018];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v9 = 0;
  v2 = [v0 _ios_meContactWithKeysToFetch:v1 error:&v9];
  v3 = v9;

  if (v3)
  {
    v4 = os_log_create("com.apple.DigitalSeparation", "CNContactStore");
    v5 = DSLog_6;
    DSLog_6 = v4;

    v6 = DSLog_6;
    if (os_log_type_enabled(DSLog_6, OS_LOG_TYPE_ERROR))
    {
      +[(CNContactStore(DSContactHelpers) *)v3];
    }

    identifier = 0;
  }

  else
  {
    identifier = [v2 identifier];
  }

  return identifier;
}

+ (id)contactMatchingIdentity:()DSContactHelpers
{
  v137[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = os_log_create("com.apple.DigitalSeparation", "CNContactStore");
  v5 = DSLog_6;
  DSLog_6 = v4;

  array = [MEMORY[0x277CBEB18] array];
  unifiedContactIdentifier = [v3 unifiedContactIdentifier];
  v8 = [unifiedContactIdentifier length];

  if (v8)
  {
    v9 = MEMORY[0x277CBDA58];
    unifiedContactIdentifier2 = [v3 unifiedContactIdentifier];
    v137[0] = unifiedContactIdentifier2;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:1];
    v12 = [v9 predicateForContactsWithIdentifiers:v11];
    [array addObject:v12];
  }

  emailAddress = [v3 emailAddress];
  v14 = [emailAddress length];

  if (v14)
  {
    v15 = MEMORY[0x277CBDA58];
    emailAddress2 = [v3 emailAddress];
    v17 = [v15 predicateForContactsMatchingEmailAddress:emailAddress2];
    [array addObject:v17];
  }

  phoneNumber = [v3 phoneNumber];
  v19 = [phoneNumber length];

  if (v19)
  {
    v20 = MEMORY[0x277CBDB70];
    phoneNumber2 = [v3 phoneNumber];
    v22 = [v20 phoneNumberWithStringValue:phoneNumber2];

    if (v22)
    {
      v23 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v22];
      [array addObject:v23];
    }
  }

  nameComponents = [v3 nameComponents];

  if (nameComponents)
  {
    v25 = MEMORY[0x277CCAC08];
    nameComponents2 = [v3 nameComponents];
    v27 = [v25 localizedStringFromPersonNameComponents:nameComponents2 style:3 options:0];

    if ([v27 length])
    {
      v28 = [MEMORY[0x277CBDA58] predicateForContactsMatchingName:v27];
      [array addObject:v28];
    }
  }

  v29 = *MEMORY[0x277CBD000];
  v136[0] = *MEMORY[0x277CBD068];
  v136[1] = v29;
  v30 = *MEMORY[0x277CBCFF8];
  v136[2] = *MEMORY[0x277CBD058];
  v136[3] = v30;
  v31 = *MEMORY[0x277CBD0B0];
  v136[4] = *MEMORY[0x277CBD0E0];
  v136[5] = v31;
  v32 = *MEMORY[0x277CBD0B8];
  v136[6] = *MEMORY[0x277CBD0A8];
  v136[7] = v32;
  v33 = *MEMORY[0x277CBD078];
  v136[8] = *MEMORY[0x277CBD070];
  v136[9] = v33;
  v34 = *MEMORY[0x277CBD028];
  v136[10] = *MEMORY[0x277CBD160];
  v136[11] = v34;
  v35 = *MEMORY[0x277CBD020];
  v136[12] = *MEMORY[0x277CBD158];
  v136[13] = v35;
  v36 = *MEMORY[0x277CBCFC0];
  v136[14] = *MEMORY[0x277CBD090];
  v136[15] = v36;
  v37 = *MEMORY[0x277CBCF88];
  v136[16] = *MEMORY[0x277CBD098];
  v136[17] = v37;
  v92 = [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:18];
  v91 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v38 = array;
  v93 = [v38 countByEnumeratingWithState:&v122 objects:v135 count:16];
  if (!v93)
  {

    v101 = 0;
LABEL_73:
    v87 = DSLog_6;
    if (os_log_type_enabled(DSLog_6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248C40000, v87, OS_LOG_TYPE_INFO, "Optimal contact is nil, selecting the fallback contact", buf, 2u);
    }

    v101 = v101;
    v103 = v101;
    goto LABEL_76;
  }

  v101 = 0;
  v103 = 0;
  v90 = *v123;
  *&v39 = 138478339;
  v89 = v39;
  v102 = v38;
  v106 = v3;
  do
  {
    v40 = 0;
    do
    {
      if (*v123 != v90)
      {
        v41 = v40;
        objc_enumerationMutation(v38);
        v40 = v41;
      }

      v42 = v38;
      v95 = v40;
      v43 = *(*(&v122 + 1) + 8 * v40);
      v121 = 0;
      v44 = [v91 unifiedContactsMatchingPredicate:v43 keysToFetch:v92 error:{&v121, v89}];
      v94 = v121;
      v45 = DSLog_6;
      if (os_log_type_enabled(DSLog_6, OS_LOG_TYPE_INFO))
      {
        v46 = v45;
        v47 = [v44 count];
        *buf = v89;
        v129 = v43;
        v130 = 2113;
        v131 = v44;
        v132 = 2050;
        v133[0] = v47;
        _os_log_impl(&dword_248C40000, v46, OS_LOG_TYPE_INFO, "Searching contacts with predicate %{private}@ and got %{private}@ (%{public}lu)", buf, 0x20u);
      }

      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      obj = v44;
      v100 = [obj countByEnumeratingWithState:&v117 objects:v134 count:16];
      if (v100)
      {
        v99 = *v118;
        v38 = v42;
        do
        {
          for (i = 0; i != v100; ++i)
          {
            if (*v118 != v99)
            {
              objc_enumerationMutation(obj);
            }

            v49 = *(*(&v117 + 1) + 8 * i);
            v104 = [MEMORY[0x277CBDA78] stringFromContact:v49 style:0];
            v50 = DSLog_6;
            if (os_log_type_enabled(DSLog_6, OS_LOG_TYPE_INFO))
            {
              v51 = v50;
              v52 = [v104 length];
              [v49 imageData];
              v54 = v53 = i;
              isSuggested = [v49 isSuggested];
              *buf = 138478595;
              v129 = v104;
              v130 = 2050;
              v131 = v52;
              v132 = 1024;
              LODWORD(v133[0]) = v54 != 0;
              WORD2(v133[0]) = 1026;
              *(v133 + 6) = isSuggested;
              _os_log_impl(&dword_248C40000, v51, OS_LOG_TYPE_INFO, "Found potential contact match with name: %{private}@ (%{public}lu) and contains-thumbnail: %{BOOL}d, suggested: %{public}d", buf, 0x22u);

              i = v53;
              v38 = v102;
            }

            phoneNumber3 = [v3 phoneNumber];
            v57 = [phoneNumber3 length];

            if (v57)
            {
              v115 = 0u;
              v116 = 0u;
              v113 = 0u;
              v114 = 0u;
              phoneNumbers = [v49 phoneNumbers];
              v108 = [phoneNumbers countByEnumeratingWithState:&v113 objects:v127 count:16];
              if (v108)
              {
                v97 = v49;
                v98 = i;
                v107 = *v114;
                while (2)
                {
                  for (j = 0; j != v108; ++j)
                  {
                    if (*v114 != v107)
                    {
                      objc_enumerationMutation(phoneNumbers);
                    }

                    v59 = *(*(&v113 + 1) + 8 * j);
                    value = [v59 value];
                    stringValue = [value stringValue];
                    if ([stringValue length])
                    {
                      value2 = [v59 value];
                      stringValue2 = [value2 stringValue];
                      ds_formattedPotentialPhoneNumber = [stringValue2 ds_formattedPotentialPhoneNumber];
                      phoneNumber4 = [v106 phoneNumber];
                      ds_formattedPotentialPhoneNumber2 = [phoneNumber4 ds_formattedPotentialPhoneNumber];
                      v67 = [ds_formattedPotentialPhoneNumber isEqualToString:ds_formattedPotentialPhoneNumber2];

                      if (v67)
                      {
                        v68 = DSLog_6;
                        v69 = os_log_type_enabled(DSLog_6, OS_LOG_TYPE_INFO);
                        v49 = v97;
                        if (v69)
                        {
                          v70 = v68;
                          value3 = [v59 value];
                          *buf = 138478083;
                          v129 = v97;
                          v130 = 2113;
                          v131 = value3;
                          _os_log_impl(&dword_248C40000, v70, OS_LOG_TYPE_INFO, "Found matching contact %{private}@ based on phone number %{private}@", buf, 0x16u);
                        }

                        v72 = v97;

                        v103 = v72;
                        v3 = v106;
                        v38 = v102;
                        i = v98;
                        goto LABEL_43;
                      }
                    }

                    else
                    {
                    }
                  }

                  v108 = [phoneNumbers countByEnumeratingWithState:&v113 objects:v127 count:16];
                  if (v108)
                  {
                    continue;
                  }

                  break;
                }

                v3 = v106;
                v38 = v102;
                v49 = v97;
                i = v98;
              }

LABEL_43:
            }

            emailAddress3 = [v3 emailAddress];
            v74 = [emailAddress3 length];

            if (v74)
            {
              v111 = 0u;
              v112 = 0u;
              v109 = 0u;
              v110 = 0u;
              v75 = v49;
              emailAddresses = [v49 emailAddresses];
              v77 = [emailAddresses countByEnumeratingWithState:&v109 objects:v126 count:16];
              if (v77)
              {
                v78 = v77;
                v79 = *v110;
                while (2)
                {
                  for (k = 0; k != v78; ++k)
                  {
                    if (*v110 != v79)
                    {
                      objc_enumerationMutation(emailAddresses);
                    }

                    value4 = [*(*(&v109 + 1) + 8 * k) value];
                    emailAddress4 = [v3 emailAddress];
                    v83 = [value4 isEqualToString:emailAddress4];

                    if (v83)
                    {
                      v84 = DSLog_6;
                      if (os_log_type_enabled(DSLog_6, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138478083;
                        v129 = v75;
                        v130 = 2113;
                        v131 = value4;
                        _os_log_impl(&dword_248C40000, v84, OS_LOG_TYPE_INFO, "Found matching contact %{private}@ based on email %{private}@", buf, 0x16u);
                      }

                      v85 = v75;

                      v103 = v85;
                      goto LABEL_57;
                    }
                  }

                  v78 = [emailAddresses countByEnumeratingWithState:&v109 objects:v126 count:16];
                  if (v78)
                  {
                    continue;
                  }

                  break;
                }

LABEL_57:
                v38 = v102;
              }

              v49 = v75;
            }

            if ([v104 length] && !v101)
            {
              v86 = DSLog_6;
              if (os_log_type_enabled(DSLog_6, OS_LOG_TYPE_INFO))
              {
                *buf = 138477827;
                v129 = v104;
                _os_log_impl(&dword_248C40000, v86, OS_LOG_TYPE_INFO, "Found potential contact match by name: %{private}@", buf, 0xCu);
              }

              v101 = v49;
            }
          }

          v100 = [obj countByEnumeratingWithState:&v117 objects:v134 count:16];
        }

        while (v100);
      }

      else
      {
        v38 = v42;
      }

      v40 = v95 + 1;
    }

    while (v95 + 1 != v93);
    v93 = [v38 countByEnumeratingWithState:&v122 objects:v135 count:16];
  }

  while (v93);

  if (!v103)
  {
    goto LABEL_73;
  }

LABEL_76:

  return v103;
}

+ (id)contactMatchingEmailAddress:()DSContactHelpers
{
  v4 = a3;
  v5 = [[DSContactIdentity alloc] initWithEmail:v4 withPhone:0];

  v6 = [self contactMatchingIdentity:v5];

  return v6;
}

+ (id)contactMatchingPhoneNumber:()DSContactHelpers
{
  v4 = a3;
  v5 = [[DSContactIdentity alloc] initWithEmail:0 withPhone:v4];

  v6 = [self contactMatchingIdentity:v5];

  return v6;
}

+ (void)ds_meContactIdentifier
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_248C40000, a2, OS_LOG_TYPE_ERROR, "Error fetching me contact: %@", &v2, 0xCu);
}

@end