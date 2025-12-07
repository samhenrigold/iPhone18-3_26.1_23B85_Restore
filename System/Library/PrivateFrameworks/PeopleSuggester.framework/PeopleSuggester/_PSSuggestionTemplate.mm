@interface _PSSuggestionTemplate
- (_PSSuggestionTemplate)initWithBundleID:(id)d interactionRecipients:(id)recipients image:(id)image groupName:(id)name recipientContactIDs:(id)ds recipientEmailAddresses:(id)addresses recipientPhoneNumbers:(id)numbers recipientDisplayNames:(id)self0 contactIdToHandleMapping:(id)self1 handleToDisplayNameMapping:(id)self2 reason:(id)self3 reasonType:(id)self4 modelScore:(id)self5;
- (_PSSuggestionTemplate)initWithBundleID:(id)d interactionRecipients:(id)recipients image:(id)image groupName:(id)name recipientContactIDs:(id)ds recipientEmailAddresses:(id)addresses recipientPhoneNumbers:(id)numbers recipientDisplayNames:(id)self0 contactIdToHandleMapping:(id)self1 reason:(id)self2 reasonType:(id)self3;
- (id)description;
- (id)suggestionWithContactIDMapping:(id)mapping phoneMapping:(id)phoneMapping emailMapping:(id)emailMapping contactStore:(id)store contactKeysToFetch:(id)fetch;
@end

@implementation _PSSuggestionTemplate

- (_PSSuggestionTemplate)initWithBundleID:(id)d interactionRecipients:(id)recipients image:(id)image groupName:(id)name recipientContactIDs:(id)ds recipientEmailAddresses:(id)addresses recipientPhoneNumbers:(id)numbers recipientDisplayNames:(id)self0 contactIdToHandleMapping:(id)self1 reason:(id)self2 reasonType:(id)self3
{
  v29 = MEMORY[0x1E696AD98];
  typeCopy = type;
  reasonCopy = reason;
  mappingCopy = mapping;
  namesCopy = names;
  numbersCopy = numbers;
  addressesCopy = addresses;
  dsCopy = ds;
  nameCopy = name;
  imageCopy = image;
  recipientsCopy = recipients;
  dCopy = d;
  v32 = [v29 numberWithDouble:-1.0];
  v34 = [(_PSSuggestionTemplate *)self initWithBundleID:dCopy interactionRecipients:recipientsCopy image:imageCopy groupName:nameCopy recipientContactIDs:dsCopy recipientEmailAddresses:addressesCopy recipientPhoneNumbers:numbersCopy recipientDisplayNames:namesCopy contactIdToHandleMapping:mappingCopy handleToDisplayNameMapping:0 reason:reasonCopy reasonType:typeCopy modelScore:v32];

  return v34;
}

- (_PSSuggestionTemplate)initWithBundleID:(id)d interactionRecipients:(id)recipients image:(id)image groupName:(id)name recipientContactIDs:(id)ds recipientEmailAddresses:(id)addresses recipientPhoneNumbers:(id)numbers recipientDisplayNames:(id)self0 contactIdToHandleMapping:(id)self1 handleToDisplayNameMapping:(id)self2 reason:(id)self3 reasonType:(id)self4 modelScore:(id)self5
{
  dCopy = d;
  recipientsCopy = recipients;
  recipientsCopy2 = recipients;
  imageCopy = image;
  imageCopy2 = image;
  nameCopy = name;
  nameCopy2 = name;
  dsCopy = ds;
  dsCopy2 = ds;
  addressesCopy = addresses;
  numbersCopy = numbers;
  namesCopy = names;
  mappingCopy = mapping;
  nameMappingCopy = nameMapping;
  reasonCopy = reason;
  typeCopy = type;
  scoreCopy = score;
  v42.receiver = self;
  v42.super_class = _PSSuggestionTemplate;
  v25 = [(_PSSuggestionTemplate *)&v42 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_bundleID, d);
    objc_storeStrong(&v26->_interactionRecipients, recipientsCopy);
    objc_storeStrong(&v26->_image, imageCopy);
    objc_storeStrong(&v26->_groupName, nameCopy);
    objc_storeStrong(&v26->_recipientContactIDs, dsCopy);
    objc_storeStrong(&v26->_recipientEmailAddresses, addresses);
    objc_storeStrong(&v26->_recipientPhoneNumbers, numbers);
    objc_storeStrong(&v26->_recipientDisplayNames, names);
    objc_storeStrong(&v26->_contactIdToHandleMapping, mapping);
    objc_storeStrong(&v26->_handleToDisplayNameMapping, nameMapping);
    objc_storeStrong(&v26->_reason, reason);
    objc_storeStrong(&v26->_reasonType, type);
    objc_storeStrong(&v26->_modelScore, score);
  }

  return v26;
}

- (id)suggestionWithContactIDMapping:(id)mapping phoneMapping:(id)phoneMapping emailMapping:(id)emailMapping contactStore:(id)store contactKeysToFetch:(id)fetch
{
  v149 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  phoneMappingCopy = phoneMapping;
  emailMappingCopy = emailMapping;
  bundleID = [(_PSSuggestionTemplate *)self bundleID];
  v12 = [bundleID length];

  if (!v12)
  {
    v121 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v121, OS_LOG_TYPE_FAULT))
    {
      [_PSSuggestionTemplate suggestionWithContactIDMapping:phoneMapping:emailMapping:contactStore:contactKeysToFetch:];
    }

    v85 = 0;
    goto LABEL_82;
  }

  v121 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = [MEMORY[0x1E695DFA8] set];
  v14 = objc_alloc(MEMORY[0x1E695DFD8]);
  v15 = +[_PSConstants mobileMessagesBundleId];
  v16 = +[_PSConstants shareSheetTargetBundleIdMessages];
  v17 = [v14 initWithObjects:{v15, v16, 0}];

  v18 = objc_alloc(MEMORY[0x1E695DFD8]);
  v19 = +[_PSConstants mobileMailBundleId];
  v20 = +[_PSConstants shareSheetTargetBundleIdMail];
  v21 = [v18 initWithObjects:{v19, v20, 0}];

  v22 = objc_alloc(MEMORY[0x1E695DFD8]);
  v23 = +[_PSConstants sharePlayBundleId];
  v24 = v13;
  v25 = +[_PSConstants collaborationSuggestionBundleId];
  v110 = [v22 initWithObjects:{v23, v25, 0}];

  v112 = v17;
  v109 = v21;
  v111 = [v17 setByAddingObjectsFromSet:v21];
  v113 = mappingCopy;
  v120 = v13;
  if ([mappingCopy count])
  {
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    recipientContactIDs = [(_PSSuggestionTemplate *)self recipientContactIDs];
    v27 = [recipientContactIDs countByEnumeratingWithState:&v138 objects:v148 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v139;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v139 != v29)
          {
            objc_enumerationMutation(recipientContactIDs);
          }

          v31 = *(*(&v138 + 1) + 8 * i);
          if (([v24 containsObject:v31] & 1) == 0)
          {
            v32 = [mappingCopy objectForKeyedSubscript:v31];
            [v24 addObject:v31];
            if (v32)
            {
              contactIdToHandleMapping = [(_PSSuggestionTemplate *)self contactIdToHandleMapping];
              v34 = [contactIdToHandleMapping objectForKeyedSubscript:v31];

              if (!v34)
              {
                contactIdToHandleMapping2 = [(_PSSuggestionTemplate *)self contactIdToHandleMapping];
                identifier = [v32 identifier];
                v34 = [contactIdToHandleMapping2 objectForKeyedSubscript:identifier];
              }

              v37 = [_PSRecipient alloc];
              identifier2 = [v32 identifier];
              v39 = [(_PSRecipient *)v37 initWithIdentifier:identifier2 handle:v34 displayName:0 contact:v32];

              [v121 addObject:v39];
              v24 = v120;
              [v120 addObject:v31];
              if (v34)
              {
                [v120 addObject:v34];
              }

              mappingCopy = v113;
            }
          }
        }

        v28 = [recipientContactIDs countByEnumeratingWithState:&v138 objects:v148 count:16];
      }

      while (v28);
    }
  }

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  obj = [(_PSSuggestionTemplate *)self recipientEmailAddresses];
  v40 = [obj countByEnumeratingWithState:&v134 objects:v147 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v135;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v135 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v134 + 1) + 8 * j);
        if (([v24 containsObject:v44] & 1) == 0)
        {
          v45 = [emailMappingCopy objectForKeyedSubscript:v44];
          identifier3 = [v45 identifier];
          if (identifier3)
          {
            if (([v24 containsObject:identifier3] & 1) == 0)
            {
              v47 = [_PSRecipient alloc];
              handleToDisplayNameMapping = [(_PSSuggestionTemplate *)self handleToDisplayNameMapping];
              v49 = [handleToDisplayNameMapping objectForKeyedSubscript:v44];
              v50 = [(_PSRecipient *)v47 initWithIdentifier:identifier3 handle:v44 displayName:v49 contact:v45];

              v24 = v120;
              [v121 addObject:v50];
              v51 = v120;
              v52 = identifier3;
              goto LABEL_29;
            }
          }

          else
          {
            v53 = [_PSRecipient alloc];
            handleToDisplayNameMapping2 = [(_PSSuggestionTemplate *)self handleToDisplayNameMapping];
            v55 = [handleToDisplayNameMapping2 objectForKeyedSubscript:v44];
            v50 = [(_PSRecipient *)v53 initWithIdentifier:&stru_1F2D6CE98 handle:v44 displayName:v55 contact:0];

            v24 = v120;
            v51 = v121;
            v52 = v50;
LABEL_29:
            [v51 addObject:v52];
          }

          [v24 addObject:v44];

          continue;
        }
      }

      v41 = [obj countByEnumeratingWithState:&v134 objects:v147 count:16];
    }

    while (v41);
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  obja = [(_PSSuggestionTemplate *)self recipientPhoneNumbers];
  v56 = [obja countByEnumeratingWithState:&v130 objects:v146 count:16];
  if (!v56)
  {
    goto LABEL_47;
  }

  v57 = v56;
  v58 = *v131;
  do
  {
    for (k = 0; k != v57; ++k)
    {
      if (*v131 != v58)
      {
        objc_enumerationMutation(obja);
      }

      v60 = *(*(&v130 + 1) + 8 * k);
      if (([v24 containsObject:v60] & 1) == 0)
      {
        v61 = [phoneMappingCopy objectForKeyedSubscript:v60];
        identifier4 = [v61 identifier];
        if (identifier4)
        {
          if (([v24 containsObject:identifier4] & 1) == 0)
          {
            v63 = [_PSRecipient alloc];
            handleToDisplayNameMapping3 = [(_PSSuggestionTemplate *)self handleToDisplayNameMapping];
            v65 = [handleToDisplayNameMapping3 objectForKeyedSubscript:v60];
            v66 = [(_PSRecipient *)v63 initWithIdentifier:identifier4 handle:v60 displayName:v65 contact:v61];

            v24 = v120;
            [v121 addObject:v66];
            v67 = v120;
            v68 = identifier4;
            goto LABEL_43;
          }
        }

        else
        {
          v69 = [_PSRecipient alloc];
          handleToDisplayNameMapping4 = [(_PSSuggestionTemplate *)self handleToDisplayNameMapping];
          v71 = [handleToDisplayNameMapping4 objectForKeyedSubscript:v60];
          v66 = [(_PSRecipient *)v69 initWithIdentifier:&stru_1F2D6CE98 handle:v60 displayName:v71 contact:0];

          v24 = v120;
          v67 = v121;
          v68 = v66;
LABEL_43:
          [v67 addObject:v68];
        }

        [v24 addObject:v60];

        continue;
      }
    }

    v57 = [obja countByEnumeratingWithState:&v130 objects:v146 count:16];
  }

  while (v57);
LABEL_47:

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  recipientDisplayNames = [(_PSSuggestionTemplate *)self recipientDisplayNames];
  v72 = [recipientDisplayNames countByEnumeratingWithState:&v126 objects:v145 count:16];
  if (v72)
  {
    v73 = v72;
    objb = *v127;
    do
    {
      for (m = 0; m != v73; ++m)
      {
        if (*v127 != objb)
        {
          objc_enumerationMutation(recipientDisplayNames);
        }

        v75 = *(*(&v126 + 1) + 8 * m);
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        allKeys = [(NSDictionary *)self->_handleToDisplayNameMapping allKeys];
        v77 = [allKeys countByEnumeratingWithState:&v122 objects:v144 count:16];
        if (v77)
        {
          v78 = *v123;
          while (2)
          {
            for (n = 0; n != v77; n = n + 1)
            {
              if (*v123 != v78)
              {
                objc_enumerationMutation(allKeys);
              }

              v80 = *(*(&v122 + 1) + 8 * n);
              v81 = [(NSDictionary *)self->_handleToDisplayNameMapping objectForKeyedSubscript:v80];
              if ([v81 isEqualToString:v75])
              {
                v77 = v80;

                goto LABEL_62;
              }
            }

            v77 = [allKeys countByEnumeratingWithState:&v122 objects:v144 count:16];
            if (v77)
            {
              continue;
            }

            break;
          }

LABEL_62:
          v24 = v120;
        }

        v82 = [[_PSRecipient alloc] initWithIdentifier:&stru_1F2D6CE98 handle:v77 displayName:v75 contact:0];
        [v121 addObject:v82];
      }

      v73 = [recipientDisplayNames countByEnumeratingWithState:&v126 objects:v145 count:16];
    }

    while (v73);
  }

  bundleID2 = [(_PSSuggestionTemplate *)self bundleID];
  if ([v112 containsObject:bundleID2])
  {

    mappingCopy = v113;
    v84 = v110;
    goto LABEL_71;
  }

  bundleID3 = [(_PSSuggestionTemplate *)self bundleID];
  v87 = [v109 containsObject:bundleID3];

  mappingCopy = v113;
  v84 = v110;
  if (v87)
  {
LABEL_71:
    interactionRecipients = [(_PSSuggestionTemplate *)self interactionRecipients];
  }

  else
  {
    bundleID4 = [(_PSSuggestionTemplate *)self bundleID];
    v105 = [v110 containsObject:bundleID4];

    if (v105)
    {
      v106 = MEMORY[0x1E696AEC0];
      interactionRecipients2 = [(_PSSuggestionTemplate *)self interactionRecipients];
      bundleID5 = [(_PSSuggestionTemplate *)self bundleID];
      interactionRecipients = [v106 stringWithFormat:@"%@_%@", interactionRecipients2, bundleID5];
    }

    else
    {
      interactionRecipients = 0;
    }
  }

  bundleID6 = [(_PSSuggestionTemplate *)self bundleID];
  v90 = [v111 containsObject:bundleID6];

  if (v90)
  {
    interactionRecipients3 = 0;
  }

  else
  {
    interactionRecipients3 = [(_PSSuggestionTemplate *)self interactionRecipients];
  }

  groupName = [(_PSSuggestionTemplate *)self groupName];
  if (groupName)
  {

    goto LABEL_78;
  }

  if ([v121 count])
  {
LABEL_78:
    v93 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
    {
      v94 = [(_PSSuggestionTemplate *)self description];
      *buf = 138412290;
      v143 = v94;
      _os_log_impl(&dword_1B5ED1000, v93, OS_LOG_TYPE_INFO, "templateToSuggestion: %@", buf, 0xCu);
    }

    v95 = [_PSSuggestion alloc];
    bundleID7 = [(_PSSuggestionTemplate *)self bundleID];
    groupName2 = [(_PSSuggestionTemplate *)self groupName];
    v98 = [v121 copy];
    image = [(_PSSuggestionTemplate *)self image];
    reason = [(_PSSuggestionTemplate *)self reason];
    reasonType = [(_PSSuggestionTemplate *)self reasonType];
    modelScore = [(_PSSuggestionTemplate *)self modelScore];
    v85 = [(_PSSuggestion *)v95 initWithBundleID:bundleID7 conversationIdentifier:interactionRecipients groupName:groupName2 recipients:v98 derivedIntentIdentifier:interactionRecipients3 image:image reason:reason reasonType:reasonType score:modelScore];

    mappingCopy = v113;
    v24 = v120;
    v84 = v110;
  }

  else
  {
    bundleID7 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(bundleID7, OS_LOG_TYPE_ERROR))
    {
      [_PSSuggestionTemplate suggestionWithContactIDMapping:phoneMapping:emailMapping:contactStore:contactKeysToFetch:];
    }

    v85 = 0;
  }

LABEL_82:

  return v85;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  groupName = [(_PSSuggestionTemplate *)self groupName];
  bundleID = [(_PSSuggestionTemplate *)self bundleID];
  reason = [(_PSSuggestionTemplate *)self reason];
  reasonType = [(_PSSuggestionTemplate *)self reasonType];
  image = [(_PSSuggestionTemplate *)self image];
  modelScore = [(_PSSuggestionTemplate *)self modelScore];
  v11 = [v3 stringWithFormat:@"<%@ %p> groupName: %@, bundleID: %@, reason: %@, reasonType: %@, image: %@ modelScore: %@", v4, self, groupName, bundleID, reason, reasonType, image, modelScore];

  return v11;
}

- (void)suggestionWithContactIDMapping:phoneMapping:emailMapping:contactStore:contactKeysToFetch:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_1B5ED1000, v0, OS_LOG_TYPE_FAULT, "Empty or nil bundleID on _PSSuggestion %@", v1, 0xCu);
}

@end