@interface UNSCNContactResolver
- (UNSCNContactResolver)init;
- (id)_matchForContact:(id)contact matchingLabel:(id)label matchType:(unint64_t)type;
- (id)_matchThatMatchesEmailAddress:(id)address forContact:(id)contact;
- (id)_matchThatMatchesSocialProfile:(id)profile bundleIdentifier:(id)identifier forContact:(id)contact;
- (id)bestMatchForEmailAddress:(id)address;
- (id)bestMatchForPhoneNumber:(id)number;
- (id)bestMatchForPredicate:(id)predicate contactToMatch:(id)match;
- (id)bestMatchForSocialProfile:(id)profile bundleIdentifier:(id)identifier;
- (id)bestMatchForUserIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
- (id)bestMatchForUsername:(id)username bundleIdentifier:(id)identifier;
- (id)confirm:(BOOL)confirm match:(id)match;
- (id)contactForIdentifier:(id)identifier;
- (id)matchThatMatchesPhoneNumber:(id)number forContact:(id)contact;
- (id)resultForContactIdentifier:(id)identifier;
- (id)resultForContactIdentifier:(id)identifier emailAddress:(id)address phoneNumber:(id)number userIdentifier:(id)userIdentifier username:(id)username bundleIdentifier:(id)bundleIdentifier;
@end

@implementation UNSCNContactResolver

- (UNSCNContactResolver)init
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = UNSCNContactResolver;
  v2 = [(UNSCNContactResolver *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
    v4 = *MEMORY[0x277CBD098];
    v13[0] = v3;
    v13[1] = v4;
    v5 = *MEMORY[0x277CBD138];
    v13[2] = *MEMORY[0x277CBCFC0];
    v13[3] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
    contactStoreSearchKeys = v2->_contactStoreSearchKeys;
    v2->_contactStoreSearchKeys = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    [v8 setIncludeSuggestedContacts:1];
    [v8 setIncludeAcceptedIntroductions:1];
    v9 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v8];
    contactStore = v2->_contactStore;
    v2->_contactStore = v9;
  }

  return v2;
}

- (id)resultForContactIdentifier:(id)identifier emailAddress:(id)address phoneNumber:(id)number userIdentifier:(id)userIdentifier username:(id)username bundleIdentifier:(id)bundleIdentifier
{
  v69 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  addressCopy = address;
  numberCopy = number;
  userIdentifierCopy = userIdentifier;
  usernameCopy = username;
  bundleIdentifierCopy = bundleIdentifier;
  v58 = [MEMORY[0x277CBEAA8] now];
  v18 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v59 = identifierCopy;
  if ([identifierCopy length])
  {
    v19 = [(UNSCNContactResolver *)self resultForContactIdentifier:identifierCopy];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tcontactIdentifier - %@: %@", identifierCopy, v19];
    [v18 appendString:v20];
  }

  else
  {
    v19 = 0;
  }

  v21 = addressCopy;
  v60 = usernameCopy;
  if (([v19 isStrongestMatch] & 1) == 0 && objc_msgSend(numberCopy, "length"))
  {
    v22 = numberCopy;
    v23 = [(UNSCNContactResolver *)self bestMatchForPhoneNumber:numberCopy];
    v24 = [v23 isStrongerMatchThanOtherMatch:v19];
    if (v24)
    {
      v25 = v23;

      v19 = v25;
    }

    v26 = MEMORY[0x277CCACA8];
    numberCopy = v22;
    un_logDigest = [v22 un_logDigest];
    v28 = [v26 stringWithFormat:@"\tphoneNumber - %@: %@ preferResult:%d", un_logDigest, v23, v24];
    [v18 appendString:v28];

    v21 = addressCopy;
    usernameCopy = v60;
  }

  if (([v19 isStrongestMatch] & 1) == 0 && objc_msgSend(v21, "length"))
  {
    v29 = numberCopy;
    v30 = [(UNSCNContactResolver *)self bestMatchForEmailAddress:v21];
    v31 = [v30 isStrongerMatchThanOtherMatch:v19];
    if (v31)
    {
      v32 = v30;

      v19 = v32;
    }

    v33 = MEMORY[0x277CCACA8];
    un_logDigest2 = [v21 un_logDigest];
    v35 = [v33 stringWithFormat:@"\temailAddress - %@: %@ preferResult:%d", un_logDigest2, v30, v31];
    [v18 appendString:v35];

    v21 = addressCopy;
    numberCopy = v29;
    usernameCopy = v60;
  }

  if (([v19 isStrongestMatch] & 1) == 0)
  {
    if ([userIdentifierCopy length])
    {
      v36 = numberCopy;
      v37 = [(UNSCNContactResolver *)self bestMatchForUserIdentifier:userIdentifierCopy bundleIdentifier:bundleIdentifierCopy];
      v38 = [v37 isStrongerMatchThanOtherMatch:v19];
      if (v38)
      {
        v39 = v37;

        v19 = v39;
      }

      v40 = MEMORY[0x277CCACA8];
      un_logDigest3 = [userIdentifierCopy un_logDigest];
      v42 = [v40 stringWithFormat:@"\tuserIdentifier - %@: %@ preferResult:%d", un_logDigest3, v37, v38];
      [v18 appendString:v42];

      v21 = addressCopy;
      numberCopy = v36;
    }

    usernameCopy = v60;
  }

  if (([v19 isStrongestMatch] & 1) == 0 && objc_msgSend(usernameCopy, "length"))
  {
    v43 = numberCopy;
    v44 = [(UNSCNContactResolver *)self bestMatchForUsername:usernameCopy bundleIdentifier:bundleIdentifierCopy];
    v45 = [v44 isStrongerMatchThanOtherMatch:v19];
    if (v45)
    {
      v46 = v44;

      v19 = v46;
    }

    v47 = MEMORY[0x277CCACA8];
    un_logDigest4 = [usernameCopy un_logDigest];
    v49 = [v47 stringWithFormat:@"\tusername - %@: %@ preferResult:%d", un_logDigest4, v44, v45];
    [v18 appendString:v49];

    usernameCopy = v60;
    v21 = addressCopy;
    numberCopy = v43;
  }

  isSuggestedContact = [v19 isSuggestedContact];
  if (isSuggestedContact)
  {
    v51 = UNSLogCommunicationNotifications(isSuggestedContact);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270B08000, v51, OS_LOG_TYPE_DEFAULT, "_UNCNContactResolver rejecting pure suggested contact. Not yet supported.", buf, 2u);
    }

    v19 = 0;
  }

  v52 = [MEMORY[0x277CBEAA8] now];
  v53 = [v52 timeIntervalSinceDate:v58];
  v55 = v54;
  v56 = UNSLogCommunicationNotifications(v53);
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349570;
    v64 = v55;
    v65 = 2112;
    v66 = v19;
    v67 = 2112;
    v68 = v18;
    _os_log_impl(&dword_270B08000, v56, OS_LOG_TYPE_DEFAULT, "_UNCNContactResolver found results in %{public}fms:\n\tFinal match:%@\n%@", buf, 0x20u);
  }

  return v19;
}

- (id)confirm:(BOOL)confirm match:(id)match
{
  confirmCopy = confirm;
  v106 = *MEMORY[0x277D85DE8];
  matchCopy = match;
  v7 = @"reject";
  if (confirmCopy)
  {
    v7 = @"confirm";
  }

  v8 = v7;
  cnContactIdentifier = [matchCopy cnContactIdentifier];
  v10 = [(UNSCNContactResolver *)self contactForIdentifier:cnContactIdentifier];

  if (v10)
  {
    identifierOfMatchLabel = [matchCopy identifierOfMatchLabel];
    matchType = [matchCopy matchType];
    isSuggestedContact = [matchCopy isSuggestedContact];
    if (isSuggestedContact)
    {
      obj = identifierOfMatchLabel;
      v79 = v10;
      v15 = v10;
      v16 = v15;
      selfCopy2 = self;
      if (confirmCopy)
      {
        copyWithCuratingAllSuggestions = [v15 copyWithCuratingAllSuggestions];
        v19 = [copyWithCuratingAllSuggestions mutableCopy];

        v20 = objc_alloc_init(MEMORY[0x277CBDBB8]);
LABEL_7:
        v21 = isSuggestedContact;
        [v20 confirmSuggestion:v16];
LABEL_33:
        contactStore = selfCopy2->_contactStore;
        v82 = 0;
        [(CNContactStore *)contactStore executeSaveRequest:v20 error:&v82];
        v32 = v82;
        v22 = 0;
        if (v32 || !v19)
        {
          goto LABEL_45;
        }

        v34 = objc_alloc_init(MEMORY[0x277CBDBA0]);
        v35 = v34;
        if (v21)
        {
          [v34 addContact:v19 toContainerWithIdentifier:0];
        }

        else
        {
          [v34 updateContact:v19];
        }

        v76 = v8;
        v36 = selfCopy2->_contactStore;
        v81 = 0;
        [(CNContactStore *)v36 executeSaveRequest:v35 error:&v81];
        v37 = v81;
        v32 = v37;
        if (v37)
        {
          v38 = UNSLogCommunicationNotifications(v37);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            localizedDescription = [v32 localizedDescription];
            *buf = 136446978;
            v96 = "[UNSCNContactResolver confirm:match:]";
            v97 = 2114;
            v98 = v76;
            v99 = 2114;
            v100 = localizedDescription;
            v101 = 2114;
            v102 = matchCopy;
            _os_log_error_impl(&dword_270B08000, v38, OS_LOG_TYPE_ERROR, "%{public}s: Failed to %{public}@ match. Save request error %{public}@. Match:%{public}@", buf, 0x2Au);

            v8 = v76;
            v22 = 0;
            goto LABEL_44;
          }

          v22 = 0;
        }

        else
        {
          identifier = [v19 identifier];
          v40 = [(UNSCNContactResolver *)selfCopy2 _fullnameForCNContact:v19];
          v22 = [UNSCNContactResolverResult resultWithCNContactIdentifier:identifier cnContactFullname:v40 suggestedContact:0 matchType:0 matchTypeSuggested:0 identifierOfMatchLabel:0];

          v38 = UNSLogCommunicationNotifications(v41);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v96 = "[UNSCNContactResolver confirm:match:]";
            v97 = 2114;
            v8 = v76;
            v98 = v76;
            v99 = 2114;
            v100 = v22;
            _os_log_impl(&dword_270B08000, v38, OS_LOG_TYPE_DEFAULT, "%{public}s: Succeeded to %{public}@ match. New match or nil:%{public}@", buf, 0x20u);
LABEL_44:

LABEL_45:
            identifierOfMatchLabel = obj;
            v10 = v79;
LABEL_46:

            goto LABEL_47;
          }
        }

        v8 = v76;
        goto LABEL_44;
      }

      v20 = objc_alloc_init(MEMORY[0x277CBDBB8]);
      v19 = 0;
LABEL_32:
      [v20 rejectSuggestion:v16];
      v21 = 0;
      goto LABEL_33;
    }

    isMatchTypeSuggested = [matchCopy isMatchTypeSuggested];
    if (isMatchTypeSuggested && (isMatchTypeSuggested = [identifierOfMatchLabel length]) != 0)
    {
      v19 = 0;
      if (matchType > 1)
      {
        if (matchType == 2)
        {
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          obja = [v10 phoneNumbers];
          v51 = [obja countByEnumeratingWithState:&v83 objects:v103 count:16];
          if (v51)
          {
            v52 = v51;
            v80 = v10;
            v75 = v8;
            v53 = *v84;
LABEL_63:
            v54 = 0;
            while (1)
            {
              if (*v84 != v53)
              {
                objc_enumerationMutation(obja);
              }

              v55 = *(*(&v83 + 1) + 8 * v54);
              identifier2 = [v55 identifier];
              v57 = [identifier2 isEqualToString:identifierOfMatchLabel];

              if (v57)
              {
                break;
              }

              if (v52 == ++v54)
              {
                v52 = [obja countByEnumeratingWithState:&v83 objects:v103 count:16];
                if (v52)
                {
                  goto LABEL_63;
                }

LABEL_69:
                v16 = 0;
                goto LABEL_78;
              }
            }

            v16 = v55;
            if (confirmCopy)
            {
              v10 = v80;
              v19 = [v80 mutableCopy];
              phoneNumbers = [v80 phoneNumbers];
              v70 = [phoneNumbers mutableCopy];

              v71 = objc_alloc(MEMORY[0x277CBDB20]);
              value = [v16 value];
              service = [v71 initWithLabel:0 value:value];

              v63 = v70;
              [v70 addObject:service];
              [v19 setPhoneNumbers:v70];
              goto LABEL_77;
            }

LABEL_78:
            v19 = 0;
            v8 = v75;
            v10 = v80;
            goto LABEL_79;
          }
        }

        else
        {
          if (matchType != 3)
          {
            goto LABEL_28;
          }

          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          obja = [v10 socialProfiles];
          v44 = [obja countByEnumeratingWithState:&v91 objects:v105 count:16];
          if (v44)
          {
            v45 = v44;
            v80 = v10;
            v75 = v8;
            v46 = *v92;
LABEL_52:
            v47 = 0;
            while (1)
            {
              if (*v92 != v46)
              {
                objc_enumerationMutation(obja);
              }

              v48 = *(*(&v91 + 1) + 8 * v47);
              identifier3 = [v48 identifier];
              v50 = [identifier3 isEqualToString:identifierOfMatchLabel];

              if (v50)
              {
                break;
              }

              if (v45 == ++v47)
              {
                v45 = [obja countByEnumeratingWithState:&v91 objects:v105 count:16];
                if (v45)
                {
                  goto LABEL_52;
                }

                goto LABEL_69;
              }
            }

            v16 = v48;
            if (!confirmCopy)
            {
              goto LABEL_78;
            }

            v10 = v80;
            v19 = [v80 mutableCopy];
            socialProfiles = [v80 socialProfiles];
            v74 = [socialProfiles mutableCopy];

            value2 = [v16 value];
            service = [value2 service];

            v66 = objc_alloc(MEMORY[0x277CBDB20]);
            value3 = [v16 value];
            v68 = [v66 initWithLabel:service value:value3];

            v63 = v74;
            [v74 addObject:v68];
            [v19 setSocialProfiles:v74];

            goto LABEL_77;
          }
        }

LABEL_70:
        v16 = 0;
        v19 = 0;
        goto LABEL_80;
      }

      if (matchType)
      {
        if (matchType != 1)
        {
          goto LABEL_28;
        }

        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        obja = [v10 emailAddresses];
        v24 = [obja countByEnumeratingWithState:&v87 objects:v104 count:16];
        if (v24)
        {
          v25 = v24;
          v80 = v10;
          v75 = v8;
          v26 = *v88;
LABEL_18:
          v27 = 0;
          while (1)
          {
            if (*v88 != v26)
            {
              objc_enumerationMutation(obja);
            }

            v28 = *(*(&v87 + 1) + 8 * v27);
            identifier4 = [v28 identifier];
            v30 = [identifier4 isEqualToString:identifierOfMatchLabel];

            if (v30)
            {
              break;
            }

            if (v25 == ++v27)
            {
              v25 = [obja countByEnumeratingWithState:&v87 objects:v104 count:16];
              if (v25)
              {
                goto LABEL_18;
              }

              goto LABEL_69;
            }
          }

          v16 = v28;
          if (!confirmCopy)
          {
            goto LABEL_78;
          }

          v10 = v80;
          v19 = [v80 mutableCopy];
          emailAddresses = [v80 emailAddresses];
          v59 = [emailAddresses mutableCopy];

          v60 = objc_alloc(MEMORY[0x277CBDB20]);
          value4 = [v16 value];
          service = [v60 initWithLabel:0 value:value4];

          v63 = v59;
          [v59 addObject:service];
          [v19 setEmailAddresses:v59];
LABEL_77:
          v8 = v75;

LABEL_79:
          isSuggestedContact = 0;
LABEL_80:

          if (v16)
          {
            obj = identifierOfMatchLabel;
            v79 = v10;
            selfCopy2 = self;
            v20 = objc_alloc_init(MEMORY[0x277CBDBB8]);
            if (confirmCopy)
            {
              goto LABEL_7;
            }

            goto LABEL_32;
          }

LABEL_28:
          v32 = UNSLogCommunicationNotifications(isMatchTypeSuggested);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            [UNSCNContactResolver confirm:match:];
          }

          v16 = 0;
          v22 = 0;
          goto LABEL_46;
        }

        goto LABEL_70;
      }

      v31 = UNSLogCommunicationNotifications(isMatchTypeSuggested);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [UNSCNContactResolver confirm:match:];
      }
    }

    else
    {
      v31 = UNSLogCommunicationNotifications(isMatchTypeSuggested);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [UNSCNContactResolver confirm:match:];
      }
    }

    v19 = 0;
    goto LABEL_28;
  }

  identifierOfMatchLabel = UNSLogCommunicationNotifications(v11);
  if (os_log_type_enabled(identifierOfMatchLabel, OS_LOG_TYPE_ERROR))
  {
    [UNSCNContactResolver confirm:match:];
  }

  v16 = 0;
  v19 = 0;
  v22 = 0;
LABEL_47:

  v42 = v22;
  return v22;
}

- (id)resultForContactIdentifier:(id)identifier
{
  v4 = [(UNSCNContactResolver *)self contactForIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    identifier = [v4 identifier];
    v7 = [(UNSCNContactResolver *)self _fullnameForCNContact:v5];
    v8 = [UNSCNContactResolverResult resultWithCNContactIdentifier:identifier cnContactFullname:v7 suggestedContact:[(UNSCNContactResolver *)self _isSuggestedForContact:v5] matchType:0 matchTypeSuggested:0 identifierOfMatchLabel:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)bestMatchForPhoneNumber:(id)number
{
  v4 = MEMORY[0x277CBDB70];
  numberCopy = number;
  v6 = [[v4 alloc] initWithStringValue:numberCopy];

  v7 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__UNSCNContactResolver_bestMatchForPhoneNumber___block_invoke;
  v11[3] = &unk_279E14320;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = [(UNSCNContactResolver *)self bestMatchForPredicate:v7 contactToMatch:v11];

  return v9;
}

- (id)matchThatMatchesPhoneNumber:(id)number forContact:(id)contact
{
  v30 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  contactCopy = contact;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  phoneNumbers = [contactCopy phoneNumbers];
  v9 = [phoneNumbers countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    selfCopy = self;
    v23 = contactCopy;
    v24 = 0;
    v11 = *v26;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(phoneNumbers);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        value = [v13 value];
        lastFourDigits = [value lastFourDigits];
        lastFourDigits2 = [numberCopy lastFourDigits];
        if ([lastFourDigits isEqualToString:lastFourDigits2])
        {
          v17 = [value isLikePhoneNumber:numberCopy];

          if (v17)
          {
            v18 = v13;

            if (![(UNSCNContactResolver *)selfCopy _isSuggestedForContact:v23]&& ![(UNSCNContactResolver *)selfCopy _isSuggestedForLabeledValue:v18])
            {

              v24 = v18;
              goto LABEL_16;
            }

            v24 = v18;
          }
        }

        else
        {
        }
      }

      v10 = [phoneNumbers countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_16:

    v19 = v24;
    if (v24)
    {
      contactCopy = v23;
      v20 = [(UNSCNContactResolver *)selfCopy _matchForContact:v23 matchingLabel:v24 matchType:2];
    }

    else
    {
      v20 = 0;
      contactCopy = v23;
    }
  }

  else
  {

    v19 = 0;
    v20 = 0;
  }

  return v20;
}

- (id)bestMatchForEmailAddress:(id)address
{
  addressCopy = address;
  v5 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:addressCopy groupIdentifiers:0 limitToOneResult:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__UNSCNContactResolver_bestMatchForEmailAddress___block_invoke;
  v9[3] = &unk_279E14320;
  v9[4] = self;
  v10 = addressCopy;
  v6 = addressCopy;
  v7 = [(UNSCNContactResolver *)self bestMatchForPredicate:v5 contactToMatch:v9];

  return v7;
}

- (id)_matchThatMatchesEmailAddress:(id)address forContact:(id)contact
{
  v24 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  contactCopy = contact;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  emailAddresses = [contactCopy emailAddresses];
  v9 = [emailAddresses countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        value = [v14 value];
        if (![value caseInsensitiveCompare:addressCopy])
        {
          v16 = v14;

          if (![(UNSCNContactResolver *)self _isSuggestedForContact:contactCopy]&& ![(UNSCNContactResolver *)self _isSuggestedForLabeledValue:v16])
          {

            v11 = v16;
            goto LABEL_14;
          }

          v11 = v16;
        }
      }

      v10 = [emailAddresses countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_14:

    if (v11)
    {
      v17 = [(UNSCNContactResolver *)self _matchForContact:contactCopy matchingLabel:v11 matchType:1];
      goto LABEL_18;
    }
  }

  else
  {

    v11 = 0;
  }

  v17 = 0;
LABEL_18:

  return v17;
}

- (id)bestMatchForUsername:(id)username bundleIdentifier:(id)identifier
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBDB68];
  identifierCopy = identifier;
  usernameCopy = username;
  v9 = objc_alloc_init(v6);
  [v9 setUsername:usernameCopy];

  v13[0] = identifierCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v9 setBundleIdentifiers:v10];

  v11 = [(UNSCNContactResolver *)self bestMatchForSocialProfile:v9 bundleIdentifier:identifierCopy];

  return v11;
}

- (id)bestMatchForUserIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBDB68];
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v9 = objc_alloc_init(v6);
  [v9 setUserIdentifier:identifierCopy];

  v13[0] = bundleIdentifierCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v9 setBundleIdentifiers:v10];

  v11 = [(UNSCNContactResolver *)self bestMatchForSocialProfile:v9 bundleIdentifier:bundleIdentifierCopy];

  return v11;
}

- (id)bestMatchForSocialProfile:(id)profile bundleIdentifier:(id)identifier
{
  profileCopy = profile;
  identifierCopy = identifier;
  v8 = [MEMORY[0x277CBDA58] predicateForContactsMatchingSocialProfile:profileCopy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__UNSCNContactResolver_bestMatchForSocialProfile_bundleIdentifier___block_invoke;
  v13[3] = &unk_279E14348;
  v13[4] = self;
  v14 = profileCopy;
  v15 = identifierCopy;
  v9 = identifierCopy;
  v10 = profileCopy;
  v11 = [(UNSCNContactResolver *)self bestMatchForPredicate:v8 contactToMatch:v13];

  return v11;
}

- (id)_matchThatMatchesSocialProfile:(id)profile bundleIdentifier:(id)identifier forContact:(id)contact
{
  v50 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  identifierCopy = identifier;
  contactCopy = contact;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  socialProfiles = [contactCopy socialProfiles];
  v30 = [socialProfiles countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v30)
  {
    v9 = 0;
    obj = socialProfiles;
    v29 = *v45;
    v10 = profileCopy;
    v34 = contactCopy;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v11;
        v33 = *(*(&v44 + 1) + 8 * v11);
        value = [v33 value];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        bundleIdentifiers = [value bundleIdentifiers];
        v39 = [bundleIdentifiers countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v39)
        {
          v38 = *v41;
          v13 = v9;
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v41 != v38)
              {
                objc_enumerationMutation(bundleIdentifiers);
              }

              v15 = [*(*(&v40 + 1) + 8 * i) isEqual:identifierCopy];
              username = [value username];
              if ([username length])
              {
                username2 = [v10 username];
                if ([username2 length])
                {
                  username3 = [value username];
                  username4 = [v10 username];
                  v20 = [username3 isEqualToString:username4];
                }

                else
                {
                  v20 = 0;
                }
              }

              else
              {
                v20 = 0;
              }

              userIdentifier = [value userIdentifier];
              if ([userIdentifier length])
              {
                userIdentifier2 = [v10 userIdentifier];
                if ([userIdentifier2 length])
                {
                  userIdentifier3 = [value userIdentifier];
                  userIdentifier4 = [v10 userIdentifier];
                  v25 = [userIdentifier3 isEqualToString:userIdentifier4];

                  v10 = profileCopy;
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

              if ((v15 & (v20 | v25)) == 1)
              {
                v9 = v33;

                if ([(UNSCNContactResolver *)self _isSuggestedForContact:v34])
                {
                  v13 = v9;
                }

                else
                {
                  v13 = v9;
                  if (![(UNSCNContactResolver *)self _isSuggestedForLabeledValue:v9])
                  {
                    goto LABEL_29;
                  }
                }
              }
            }

            v9 = v13;
            v39 = [bundleIdentifiers countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v39);
        }

LABEL_29:

        contactCopy = v34;
        if (![(UNSCNContactResolver *)self _isSuggestedForContact:v34]&& v9 && ![(UNSCNContactResolver *)self _isSuggestedForLabeledValue:v9])
        {

          goto LABEL_37;
        }

        v11 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }

    if (!v9)
    {
      v26 = 0;
      goto LABEL_39;
    }

LABEL_37:
    v26 = [(UNSCNContactResolver *)self _matchForContact:v34 matchingLabel:v9 matchType:3];
  }

  else
  {

    v9 = 0;
    v26 = 0;
    v10 = profileCopy;
  }

LABEL_39:

  return v26;
}

- (id)bestMatchForPredicate:(id)predicate contactToMatch:(id)match
{
  v32 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  matchCopy = match;
  contactStore = self->_contactStore;
  contactStoreSearchKeys = self->_contactStoreSearchKeys;
  v30 = 0;
  v25 = predicateCopy;
  v10 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:predicateCopy keysToFetch:contactStoreSearchKeys error:&v30];
  v11 = v30;
  v12 = v11;
  if (v11)
  {
    v13 = UNSLogCommunicationNotifications(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [UNSCNContactResolver bestMatchForPredicate:v12 contactToMatch:v13];
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v27;
LABEL_7:
    v19 = 0;
    while (1)
    {
      if (*v27 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v20 = matchCopy[2](matchCopy, *(*(&v26 + 1) + 8 * v19));
      v21 = v20;
      if (v20 && [v20 isStrongerMatchThanOtherMatch:v17])
      {
        v22 = v21;

        v17 = v22;
      }

      isStrongestMatch = [v17 isStrongestMatch];

      if (isStrongestMatch)
      {
        break;
      }

      if (v16 == ++v19)
      {
        v16 = [v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v16)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)contactForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  contactStore = self->_contactStore;
  contactStoreSearchKeys = self->_contactStoreSearchKeys;
  v12 = 0;
  v7 = [(CNContactStore *)contactStore unifiedContactWithIdentifier:identifierCopy keysToFetch:contactStoreSearchKeys error:&v12];
  v8 = v12;
  v9 = v8;
  if (v8)
  {
    v10 = UNSLogCommunicationNotifications(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [UNSCNContactResolver contactForIdentifier:];
    }
  }

  return v7;
}

- (id)_matchForContact:(id)contact matchingLabel:(id)label matchType:(unint64_t)type
{
  labelCopy = label;
  contactCopy = contact;
  identifier = [contactCopy identifier];
  v11 = [(UNSCNContactResolver *)self _fullnameForCNContact:contactCopy];
  v12 = [(UNSCNContactResolver *)self _isSuggestedForContact:contactCopy];

  v13 = [(UNSCNContactResolver *)self _isSuggestedForLabeledValue:labelCopy];
  identifier2 = [labelCopy identifier];

  v15 = [UNSCNContactResolverResult resultWithCNContactIdentifier:identifier cnContactFullname:v11 suggestedContact:v12 matchType:type matchTypeSuggested:v13 identifierOfMatchLabel:identifier2];

  return v15;
}

- (void)confirm:match:.cold.1()
{
  v2 = 136446722;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_270B08000, v0, v1, "%{public}s: Cannot %{public}@ contact match on contact identifier. Contact identifiers can't be suggested. Match:%{public}@", v2);
}

- (void)confirm:match:.cold.2()
{
  v2 = 136446722;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_270B08000, v0, v1, "%{public}s: Nothing to %{public}@ on match. Match:%{public}@", v2);
}

- (void)confirm:match:.cold.3()
{
  v2 = 136446722;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_270B08000, v0, v1, "%{public}s: Could not create save request for %{public}@ match. Match:%{public}@", v2);
}

- (void)confirm:match:.cold.4()
{
  v2 = 136446722;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_270B08000, v0, v1, "%{public}s: Unable to find suggested contact to %{public}@ match. Match:%{public}@", v2);
}

- (void)bestMatchForPredicate:(void *)a1 contactToMatch:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 136446466;
  v5 = "[UNSCNContactResolver bestMatchForPredicate:contactToMatch:]";
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_270B08000, a2, OS_LOG_TYPE_ERROR, "%{public}s: Error querying for contacts based on predicate. Error:%{public}@", &v4, 0x16u);
}

- (void)contactForIdentifier:.cold.1()
{
  v2 = 136446722;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_270B08000, v0, v1, "%{public}s: Error querying for contact based on identifier:%{public}@ error:%{public}@", v2);
}

@end