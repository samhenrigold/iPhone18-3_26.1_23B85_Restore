@interface HVBiomeConversions
+ (id)_bmNamedHandleFromCSPerson:(uint64_t)person;
+ (id)_bmNamedHandlesFromCSPersons:(uint64_t)persons;
+ (id)_generateRandomVersionString;
+ (id)_messagesContentEventFromSearchableItem:(id)item error:(id *)error;
+ (id)_safariPageViewFromSearchableItem:(void *)item error:;
+ (id)_thirdPartyAppContentEventFromSearchableItem:(uint64_t)item error:(void *)error;
+ (id)biomeEventFromSearchableItem:(id)item bundleIdentifier:(id)identifier error:(id *)error;
@end

@implementation HVBiomeConversions

+ (id)_messagesContentEventFromSearchableItem:(id)item error:(id *)error
{
  v104 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v100[0] = MEMORY[0x277D85DD0];
  v100[1] = 3221225472;
  v100[2] = __68__HVBiomeConversions__messagesContentEventFromSearchableItem_error___block_invoke;
  v100[3] = &unk_2789697F8;
  v7 = itemCopy;
  v101 = v7;
  v8 = MEMORY[0x238381E60](v100);
  attributeSet = [v7 attributeSet];
  domainIdentifier = [v7 domainIdentifier];
  v11 = [domainIdentifier isEqualToString:@"attachmentDomain"];

  if (v11)
  {
    accountIdentifier = [attributeSet accountIdentifier];
    contentURL = [attributeSet contentURL];
    lastPathComponent = [contentURL lastPathComponent];

    if ([lastPathComponent length])
    {
      v15 = objc_alloc(MEMORY[0x277CF1928]);
      contentURL2 = [attributeSet contentURL];
      absoluteString = [contentURL2 absoluteString];
      v18 = [v15 initWithType:@"application/octet-stream" filename:lastPathComponent path:absoluteString];
    }

    else
    {
      v18 = 0;
    }

    if (!accountIdentifier)
    {
LABEL_15:
      v26 = hv_default_log_handle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v39 = v8[2](v8);
        *buf = 138543362;
        v103 = v39;
        _os_log_error_impl(&dword_2321EC000, v26, OS_LOG_TYPE_ERROR, "HVBiomeConversions: _messagesContentEventFromSearchableItem: ignoring CSSI %{public}@ with missing conversation identifier.", buf, 0xCu);
      }

      if (error)
      {
        v24 = MEMORY[0x277CCA9B8];
        v25 = 5;
        goto LABEL_19;
      }

LABEL_20:
      v27 = 0;
      goto LABEL_73;
    }
  }

  else
  {
    accountIdentifier = [v7 domainIdentifier];
    v18 = 0;
    if (!accountIdentifier)
    {
      goto LABEL_15;
    }
  }

  authors = [attributeSet authors];
  v20 = [authors count];

  if (!v20)
  {
    v23 = hv_default_log_handle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v61 = v8[2](v8);
      *buf = 138543362;
      v103 = v61;
      _os_log_error_impl(&dword_2321EC000, v23, OS_LOG_TYPE_ERROR, "HVBiomeConversions: _messagesContentEventFromSearchableItem: ignoring CSSI %{public}@ with no authors.", buf, 0xCu);
    }

    if (error)
    {
      v24 = MEMORY[0x277CCA9B8];
      v25 = 4;
LABEL_19:
      [v24 errorWithDomain:@"HVErrorDomain" code:v25 userInfo:0];
      *error = v27 = 0;
      goto LABEL_73;
    }

    goto LABEL_20;
  }

  v21 = [HVSearchableItemHelper textContentNoCopyRetainingBackingBuffer:v7];
  if (v21)
  {
    v22 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:@"com_apple_mobilesms_suggested_contact_photo" searchable:0 searchableByDefault:0 unique:0 multiValued:0];
    v97 = v21;
    if (v22)
    {
      v99 = [attributeSet valueForCustomKey:v22];
    }

    else
    {
      v99 = 0;
    }

    primaryRecipients = [attributeSet primaryRecipients];
    v30 = [(HVBiomeConversions *)self _bmNamedHandlesFromCSPersons:primaryRecipients];

    v98 = v30;
    if ([v30 count])
    {
      v75 = objc_alloc(MEMORY[0x277CF19C8]);
      uniqueIdentifier = [v7 uniqueIdentifier];
      domainIdentifier2 = [v7 domainIdentifier];
      v94 = +[(HVBiomeConversions *)self];
      contentCreationDate = [attributeSet contentCreationDate];
      [contentCreationDate timeIntervalSinceReferenceDate];
      v32 = v31;
      authors2 = [attributeSet authors];
      firstObject = [authors2 firstObject];
      v93 = [(HVBiomeConversions *)self _bmNamedHandleFromCSPerson:firstObject];
      v92 = [attributeSet attributeForKey:*MEMORY[0x277CC3330]];
      accountHandles = [attributeSet accountHandles];
      accountType = [attributeSet accountType];
      v89 = [attributeSet URL];
      protection = [v7 protection];
      isNew = [attributeSet isNew];
      isTwoFactorCode = [attributeSet isTwoFactorCode];
      isFromMe = [attributeSet isFromMe];
      v76 = isFromMe;
      if (!isFromMe)
      {
        v33 = v22;
        v34 = [attributeSet attributeForKey:@"com_apple_mobilesms_fromMe"];
        v35 = NSClassFromString(&cfstr_Nsnumber.isa);
        v36 = v34;
        if (v35)
        {
          if (objc_opt_isKindOfClass())
          {
            v37 = v36;
          }

          else
          {
            v37 = 0;
          }
        }

        else
        {
          v37 = 0;
        }

        isFromMe = v37;

        v22 = v33;
      }

      v80 = v22;
      isGroupThread = [attributeSet isGroupThread];
      v74 = isGroupThread;
      if (!isGroupThread)
      {
        v40 = [attributeSet attributeForKey:@"com_apple_mobilesms_isGroupChat"];
        v41 = NSClassFromString(&cfstr_Nsnumber.isa);
        v42 = v40;
        if (v41)
        {
          if (objc_opt_isKindOfClass())
          {
            v43 = v42;
          }

          else
          {
            v43 = 0;
          }
        }

        else
        {
          v43 = 0;
        }

        isGroupThread = v43;
      }

      isLikelyJunk = [attributeSet isLikelyJunk];
      messageRead = [attributeSet messageRead];
      isPinned = [attributeSet isPinned];
      v45 = [attributeSet attributeForKey:@"com_apple_mobilesms_businessChat"];
      v46 = NSClassFromString(&cfstr_Nsnumber.isa);
      v47 = v45;
      v81 = v8;
      v73 = isLikelyJunk;
      if (v46)
      {
        if (objc_opt_isKindOfClass())
        {
          v48 = v47;
        }

        else
        {
          v48 = 0;
        }
      }

      else
      {
        v48 = 0;
      }

      v70 = v48;

      tapbackAssociatedMessageID = [attributeSet tapbackAssociatedMessageID];
      v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(attributeSet, "messageTapbackType")}];
      messageType = [attributeSet messageType];
      messageService = [attributeSet messageService];
      v50 = messageService;
      if (!messageService)
      {
        v51 = [attributeSet attributeForKey:@"com_apple_mobilesms_service"];
        v52 = NSClassFromString(&cfstr_Nsstring.isa);
        v53 = v51;
        if (v52)
        {
          if (objc_opt_isKindOfClass())
          {
            v54 = v53;
          }

          else
          {
            v54 = 0;
          }
        }

        else
        {
          v54 = 0;
        }

        v50 = v54;
      }

      v84 = accountIdentifier;
      v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(attributeSet, "messageEffectType")}];
      isMessageFromKnownSender = [attributeSet isMessageFromKnownSender];
      v55 = [attributeSet attributeForKey:@"com_apple_mobilesms_chatUniqueIdentifier"];
      v56 = NSClassFromString(&cfstr_Nsstring.isa);
      v57 = v55;
      if (v56)
      {
        if (objc_opt_isKindOfClass())
        {
          v58 = v57;
        }

        else
        {
          v58 = 0;
        }
      }

      else
      {
        v58 = 0;
      }

      v59 = isPinned;
      v72 = v58;

      v27 = [v75 initWithUniqueId:uniqueIdentifier domainId:domainIdentifier2 personaId:v94 absoluteTimestamp:v84 conversationId:v93 fromHandle:v30 toHandles:v32 suggestedNickname:v92 suggestedPhotoPath:v99 content:v97 accountIdentifier:&stru_28474C1D0 accountHandles:accountHandles accountType:accountType attachment:v18 URL:v89 contentProtection:protection isNew:isNew isTwoFactorCode:isTwoFactorCode isFromMe:isFromMe isGroupThread:isGroupThread isJunk:v73 isRead:messageRead isPinned:v59 isBusinessChat:v70 tapbackAssociatedMessageID:tapbackAssociatedMessageID tapbackType:v68 messageType:messageType messagesService:v50 messageEffect:v66 isKnownSender:isMessageFromKnownSender conversationUUID:v72];
      if (!messageService)
      {
      }

      v22 = v80;
      if (!v74)
      {
      }

      v8 = v81;
      v21 = v97;
      accountIdentifier = v84;
      if (!v76)
      {
      }
    }

    else
    {
      v38 = hv_default_log_handle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v8[2](v8);
        v64 = v63 = v22;
        *buf = 138543362;
        v103 = v64;
        _os_log_error_impl(&dword_2321EC000, v38, OS_LOG_TYPE_ERROR, "HVBiomeConversions: _messagesContentEventFromSearchableItem: ignoring CSSI %{public}@ missing recipients.", buf, 0xCu);

        v22 = v63;
      }

      v21 = v97;
      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:4 userInfo:0];
        *error = v27 = 0;
      }

      else
      {
        v27 = 0;
      }
    }
  }

  else
  {
    v28 = hv_default_log_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v62 = v8[2](v8);
      *buf = 138543362;
      v103 = v62;
      _os_log_error_impl(&dword_2321EC000, v28, OS_LOG_TYPE_ERROR, "HVBiomeConversions: _messagesContentEventFromSearchableItem: ignoring CSSI %{public}@ missing text content.", buf, 0xCu);
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:4 userInfo:0];
      *error = v27 = 0;
    }

    else
    {
      v27 = 0;
    }
  }

LABEL_73:

  return v27;
}

id __68__HVBiomeConversions__messagesContentEventFromSearchableItem_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [*(a1 + 32) bundleID];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [*(a1 + 32) domainIdentifier];
  v6 = [v2 initWithFormat:@"bid:%@, uid:%@, did:%@", v3, v4, v5];

  return v6;
}

+ (id)_bmNamedHandlesFromCSPersons:(uint64_t)persons
{
  v2 = a2;
  v3 = objc_opt_self();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HVBiomeConversions__bmNamedHandlesFromCSPersons___block_invoke;
  v6[3] = &__block_descriptor_40_e18__16__0__CSPerson_8l;
  v6[4] = v3;
  v4 = [v2 _pas_mappedArrayWithTransform:v6];

  return v4;
}

+ (id)_generateRandomVersionString
{
  objc_opt_self();
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%08x", arc4random()];

  return v1;
}

+ (id)_bmNamedHandleFromCSPerson:(uint64_t)person
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc(MEMORY[0x277CF19E8]);
  displayName = [v2 displayName];
  handleIdentifier = [v2 handleIdentifier];
  handles = [v2 handles];
  firstObject = [handles firstObject];
  contactIdentifier = [v2 contactIdentifier];

  v9 = [v3 initWithName:displayName handleType:handleIdentifier handle:firstObject contactIdentifier:contactIdentifier];

  return v9;
}

+ (id)biomeEventFromSearchableItem:(id)item bundleIdentifier:(id)identifier error:(id *)error
{
  v208 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.mobilemail"])
  {
    v10 = itemCopy;
    v11 = objc_opt_self();
    attributeSet = [v10 attributeSet];
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v199 = __64__HVBiomeConversions__mailContentEventFromSearchableItem_error___block_invoke;
    v200 = &unk_2789697A8;
    v13 = attributeSet;
    v201 = v13;
    v14 = v10;
    v202 = v14;
    v15 = MEMORY[0x238381E60](&buf);
    accountIdentifier = [v13 accountIdentifier];

    if (!accountIdentifier)
    {
      v43 = hv_default_log_handle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v132 = v15[2](v15);
        *v203 = 138543362;
        *&v203[4] = v132;
        _os_log_error_impl(&dword_2321EC000, v43, OS_LOG_TYPE_ERROR, "HVBiomeConversions: _mailContentEventFromSearchableItem: ignoring CSSI %{public}@ with no account identifier.", v203, 0xCu);
      }

      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:5 userInfo:0];
        *error = v27 = 0;
      }

      else
      {
        v27 = 0;
      }

      goto LABEL_82;
    }

    emailHeaders = [v13 emailHeaders];
    if (emailHeaders)
    {
      authors = [v13 authors];
      v19 = [authors count];

      if (v19)
      {
        v185 = emailHeaders;
        v188 = v15;
        v20 = objc_alloc(MEMORY[0x277CCAB00]);
        hv_headerKeyFunctions = [MEMORY[0x277CCAB00] hv_headerKeyFunctions];
        hv_headerValueFunctions = [MEMORY[0x277CCAB00] hv_headerValueFunctions];
        v23 = [v20 initWithKeyPointerFunctions:hv_headerKeyFunctions valuePointerFunctions:hv_headerValueFunctions capacity:{objc_msgSend(emailHeaders, "count")}];

        v24 = v23;
        [v23 hv_addEntriesFromHeadersDictionary:emailHeaders];
        mailMessageID = [v13 mailMessageID];
        if (mailMessageID)
        {
          v177 = mailMessageID;
          v15 = v188;
        }

        else
        {
          v80 = [v23 hv_firstHeaderForKey:@"message-id"];
          v15 = v188;
          if (!v80)
          {
            v127 = hv_default_log_handle();
            if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
            {
              v188[2](v188);
              v136 = v135 = v24;
              *v203 = 138543362;
              *&v203[4] = v136;
              _os_log_error_impl(&dword_2321EC000, v127, OS_LOG_TYPE_ERROR, "HVBiomeConversions: _mailContentEventFromSearchableItem: ignoring CSSI %{public}@ with missing message identifier.", v203, 0xCu);

              v24 = v135;
            }

            if (error)
            {
              [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:5 userInfo:0];
              *error = v27 = 0;
            }

            else
            {
              v27 = 0;
            }

            goto LABEL_80;
          }

          v177 = v80;
        }

        hTMLContentDataNoCopy = [v13 HTMLContentDataNoCopy];

        if (hTMLContentDataNoCopy)
        {
          v82 = [HVSearchableItemHelper htmlContentDataNoCopyRetainingBackingBuffer:v14];
          v83 = 0;
        }

        else
        {
          v83 = [HVSearchableItemHelper textContentNoCopyRetainingBackingBuffer:v14];
          v82 = 0;
        }

        v176 = v82;
        v184 = v83;
        if (v82 | v83)
        {
          v84 = [v24 objectForKey:@"reply-to"];
          v154 = v84;
          if ([v84 count])
          {
            v85 = objc_alloc(MEMORY[0x277CF19E8]);
            [v84 firstObject];
            v87 = v86 = v24;
            v174 = [v85 initWithString:v87];

            v24 = v86;
          }

          else
          {
            v174 = 0;
          }

          v155 = v24;
          v92 = [v24 objectForKey:@"list-id"];
          v153 = v92;
          if ([v92 count])
          {
            v93 = objc_alloc(MEMORY[0x277CF19E8]);
            firstObject = [v92 firstObject];
            v173 = [v93 initWithString:firstObject];
          }

          else
          {
            v173 = 0;
          }

          v98 = hv_default_log_handle();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
          {
            v99 = v15[2](v15);
            *v203 = 138543362;
            *&v203[4] = v99;
            _os_log_impl(&dword_2321EC000, v98, OS_LOG_TYPE_DEFAULT, "HVBiomeConversions: _mailContentEventFromSearchableItem: CSSI %{public}@ will be queued by ProactiveHarvesting", v203, 0xCu);
          }

          v146 = objc_alloc(MEMORY[0x277CF19B8]);
          uniqueIdentifier = [v14 uniqueIdentifier];
          domainIdentifier = [v14 domainIdentifier];
          v170 = +[(HVBiomeConversions *)v11];
          contentCreationDate = [v13 contentCreationDate];
          [contentCreationDate timeIntervalSinceReferenceDate];
          v101 = v100;
          accountIdentifier2 = [v13 accountIdentifier];
          authors2 = [v13 authors];
          firstObject2 = [authors2 firstObject];
          v168 = [(HVBiomeConversions *)v11 _bmNamedHandleFromCSPerson:firstObject2];
          primaryRecipients = [v13 primaryRecipients];
          v167 = [(HVBiomeConversions *)v11 _bmNamedHandlesFromCSPersons:primaryRecipients];
          additionalRecipients = [v13 additionalRecipients];
          v166 = [(HVBiomeConversions *)v11 _bmNamedHandlesFromCSPersons:additionalRecipients];
          hiddenAdditionalRecipients = [v13 hiddenAdditionalRecipients];
          v165 = [(HVBiomeConversions *)v11 _bmNamedHandlesFromCSPersons:hiddenAdditionalRecipients];
          subject = [v13 subject];
          v103 = &stru_28474C1D0;
          v145 = subject;
          if (subject)
          {
            v103 = subject;
          }

          v143 = v103;
          isPartiallyDownloaded = [v13 isPartiallyDownloaded];
          v142 = [isPartiallyDownloaded BOOLValue] ^ 1;
          securityMethod = [v13 securityMethod];
          accountHandles = [v13 accountHandles];
          mailboxIdentifiers = [v13 mailboxIdentifiers];
          accountType = [v13 accountType];
          v104 = v13;
          objc_opt_self();
          attachmentTypes = [v104 attachmentTypes];
          v106 = [attachmentTypes count];

          attachmentNames = [v104 attachmentNames];
          v108 = [attachmentNames count];

          attachmentPaths = [v104 attachmentPaths];
          v110 = [attachmentPaths count];

          v194 = itemCopy;
          v181 = identifierCopy;
          v156 = v14;
          if (v106 == v108 && v106 == v110)
          {
            v197 = objc_opt_new();
            if (v106)
            {
              v159 = v13;
              for (i = 0; i != v106; ++i)
              {
                v112 = objc_alloc(MEMORY[0x277CF1928]);
                attachmentTypes2 = [v104 attachmentTypes];
                v114 = [attachmentTypes2 objectAtIndexedSubscript:i];
                attachmentNames2 = [v104 attachmentNames];
                v116 = [attachmentNames2 objectAtIndexedSubscript:i];
                attachmentPaths2 = [v104 attachmentPaths];
                v118 = [attachmentPaths2 objectAtIndexedSubscript:i];
                v119 = [v112 initWithType:v114 filename:v116 path:v118];
                [v197 addObject:v119];
              }

              v13 = v159;
              v14 = v156;
            }
          }

          else
          {
            v120 = hv_default_log_handle();
            if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
            {
              *v203 = 134218496;
              *&v203[4] = v106;
              v204 = 2048;
              v205 = v108;
              v206 = 2048;
              v207 = v110;
              _os_log_error_impl(&dword_2321EC000, v120, OS_LOG_TYPE_ERROR, "HVBiomeConversions: _bmAttachmentsFromSearchableItemAttributes: attachment info length mismatch: %tu types, %tu names, %tu paths", v203, 0x20u);
            }

            v197 = 0;
          }

          protection = [v14 protection];
          mailConversationID = [v104 mailConversationID];
          mailDateReceived = [v104 mailDateReceived];
          v141 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v104, "mailCategories")}];
          isNew = [v104 isNew];
          isTwoFactorCode = [v104 isTwoFactorCode];
          isFromMe = [v104 isFromMe];
          isLikelyJunk = [v104 isLikelyJunk];
          mailRead = [v104 mailRead];
          mailVIP = [v104 mailVIP];
          mailFlagged = [v104 mailFlagged];
          v95 = v176;
          LOBYTE(v138) = v142;
          v27 = [v146 initWithUniqueId:uniqueIdentifier domainId:domainIdentifier personaId:v170 absoluteTimestamp:accountIdentifier2 accountIdentifier:v177 messageIdentifier:v168 fromHandle:v101 toHandles:v167 ccHandles:v166 bccHandles:v165 headers:v185 subject:v143 htmlContent:v176 textContent:v184 isFullyDownloaded:v138 securityMethod:securityMethod accountHandles:accountHandles replyTo:v174 mailboxIdentifiers:mailboxIdentifiers listId:v173 accountType:accountType attachments:v197 contentProtection:protection conversationId:mailConversationID dateReceived:mailDateReceived mailCategories:v141 isNew:isNew isTwoFactorCode:isTwoFactorCode isFromMe:isFromMe isJunk:isLikelyJunk isRead:mailRead isVIP:mailVIP isFlagged:mailFlagged];

          emailHeaders = v185;
          v96 = v177;

          v14 = v156;
          identifierCopy = v181;
          v97 = v184;
          v15 = v188;
          itemCopy = v194;
          v24 = v155;
        }

        else
        {
          v88 = hv_default_log_handle();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            v15[2](v15);
            v134 = v133 = v24;
            *v203 = 138543362;
            *&v203[4] = v134;
            _os_log_error_impl(&dword_2321EC000, v88, OS_LOG_TYPE_ERROR, "HVBiomeConversions: _mailContentEventFromSearchableItem: ignoring CSSI %{public}@ missing html and text content.", v203, 0xCu);

            v24 = v133;
          }

          if (error)
          {
            [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:4 userInfo:0];
            *error = v27 = 0;
          }

          else
          {
            v27 = 0;
          }

          v95 = v176;
          v96 = v177;
          v97 = v184;
        }

LABEL_80:
LABEL_81:

LABEL_82:
        goto LABEL_83;
      }

      v58 = hv_default_log_handle();
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
LABEL_26:

        if (error)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:4 userInfo:0];
          *error = v27 = 0;
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_81;
      }

      v59 = v15[2](v15);
      *v203 = 138543362;
      *&v203[4] = v59;
      v60 = "HVBiomeConversions: _mailContentEventFromSearchableItem: ignoring CSSI %{public}@ with no authors.";
    }

    else
    {
      v58 = hv_default_log_handle();
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v59 = v15[2](v15);
      *v203 = 138543362;
      *&v203[4] = v59;
      v60 = "HVBiomeConversions: _mailContentEventFromSearchableItem: ignoring CSSI %{public}@ with no email headers.";
    }

    _os_log_error_impl(&dword_2321EC000, v58, OS_LOG_TYPE_ERROR, v60, v203, 0xCu);

    goto LABEL_26;
  }

  if ([identifierCopy isEqualToString:@"com.apple.MobileSMS"])
  {
    v26 = [self _messagesContentEventFromSearchableItem:itemCopy error:error];
LABEL_9:
    v27 = v26;
    goto LABEL_83;
  }

  if ([identifierCopy isEqualToString:@"com.apple.news"])
  {
    attributeSet4 = itemCopy;
    v29 = objc_opt_self();
    v30 = [HVSearchableItemHelper textContentNoCopyRetainingBackingBuffer:attributeSet4];
    if (v30)
    {
      attributeSet2 = [attributeSet4 attributeSet];
      v182 = objc_alloc(MEMORY[0x277CF19F0]);
      uniqueIdentifier2 = [attributeSet4 uniqueIdentifier];
      [attributeSet4 domainIdentifier];
      v191 = itemCopy;
      v32 = v195 = attributeSet4;
      v33 = +[(HVBiomeConversions *)v29];
      contentCreationDate2 = [attributeSet2 contentCreationDate];
      [contentCreationDate2 timeIntervalSinceReferenceDate];
      v35 = v34;
      title = [attributeSet2 title];
      contentDescription = [attributeSet2 contentDescription];
      v38 = contentDescription;
      if (contentDescription)
      {
        v39 = contentDescription;
      }

      else
      {
        v39 = &stru_28474C1D0;
      }

      namedLocation = [attributeSet2 namedLocation];
      [v195 protection];
      v42 = v41 = identifierCopy;
      v27 = [v182 initWithUniqueId:uniqueIdentifier2 domainId:v32 personaId:v33 absoluteTimestamp:title title:v30 content:v39 summary:v35 publication:namedLocation contentProtection:v42];

      identifierCopy = v41;
      itemCopy = v191;
      attributeSet4 = v195;
    }

    else
    {
      v77 = hv_default_log_handle();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = attributeSet4;
        _os_log_impl(&dword_2321EC000, v77, OS_LOG_TYPE_DEFAULT, "HVBiomeConversions: _newsArticleViewFromSearchableItem: received news item with no content: %@", &buf, 0xCu);
      }

      if (error)
      {
        v78 = MEMORY[0x277CCA9B8];
        *v203 = *MEMORY[0x277CCA450];
        *&buf = @"received news item with no content";
        v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v203 count:1];
        *error = [v78 errorWithDomain:@"HVErrorDomain" code:4 userInfo:v79];
      }

      v27 = 0;
    }

    goto LABEL_58;
  }

  if ([identifierCopy isEqualToString:@"com.apple.mobilenotes"])
  {
    attributeSet4 = itemCopy;
    v44 = objc_opt_self();
    v45 = [HVSearchableItemHelper textContentNoCopyRetainingBackingBuffer:attributeSet4];
    if (v45)
    {
      attributeSet3 = [attributeSet4 attributeSet];
      v47 = v45;
      v48 = objc_alloc(MEMORY[0x277CF1A00]);
      [attributeSet4 uniqueIdentifier];
      v49 = v179 = identifierCopy;
      [attributeSet4 domainIdentifier];
      v50 = v192 = itemCopy;
      v51 = +[(HVBiomeConversions *)v44];
      contentCreationDate3 = [attributeSet3 contentCreationDate];
      [contentCreationDate3 timeIntervalSinceReferenceDate];
      v54 = v53;
      title2 = [attributeSet3 title];
      protection2 = [attributeSet4 protection];
      v57 = v48;
      v45 = v47;
      v27 = [v57 initWithUniqueId:v49 domainId:v50 personaId:v51 absoluteTimestamp:title2 title:v47 content:protection2 contentProtection:v54];

      itemCopy = v192;
      identifierCopy = v179;
    }

    else
    {
      v89 = hv_default_log_handle();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = attributeSet4;
        _os_log_impl(&dword_2321EC000, v89, OS_LOG_TYPE_DEFAULT, "HVBiomeConversions: _notesContentEventFromSearchableItem: received notes item with no content: %@", &buf, 0xCu);
      }

      if (error)
      {
        v90 = MEMORY[0x277CCA9B8];
        *v203 = *MEMORY[0x277CCA450];
        *&buf = @"received notes item with no content";
        v91 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v203 count:1];
        *error = [v90 errorWithDomain:@"HVErrorDomain" code:4 userInfo:v91];

        v45 = 0;
      }

      v27 = 0;
    }

    goto LABEL_58;
  }

  if ([identifierCopy isEqualToString:@"com.apple.reminders"])
  {
    v61 = itemCopy;
    v62 = objc_opt_self();
    attributeSet4 = [v61 attributeSet];
    v63 = objc_alloc(MEMORY[0x277CF1A70]);
    uniqueIdentifier3 = [v61 uniqueIdentifier];
    domainIdentifier2 = [v61 domainIdentifier];
    v65 = +[(HVBiomeConversions *)v62];
    contentCreationDate4 = [attributeSet4 contentCreationDate];
    [contentCreationDate4 timeIntervalSinceReferenceDate];
    v67 = v66;
    title3 = [attributeSet4 title];
    comment = [attributeSet4 comment];
    allDay = [attributeSet4 allDay];
    bOOLValue = [allDay BOOLValue];
    [attributeSet4 completionDate];
    v68 = v180 = identifierCopy;
    [v68 timeIntervalSinceReferenceDate];
    v70 = v69;
    dueDate = [attributeSet4 dueDate];
    [dueDate timeIntervalSinceReferenceDate];
    v73 = v72;
    [attributeSet4 rankingHint];
    v74 = v193 = itemCopy;
    intValue = [v74 intValue];
    protection3 = [v61 protection];

    LODWORD(v137) = intValue;
    v27 = [v63 initWithUniqueId:uniqueIdentifier3 domainId:domainIdentifier2 personaId:v65 absoluteTimestamp:title3 title:comment notes:bOOLValue isAllDay:v67 completionDateTimestamp:v70 dueDateTimestamp:v73 priority:v137 contentProtection:protection3];

    itemCopy = v193;
    identifierCopy = v180;

LABEL_58:
    goto LABEL_83;
  }

  if ([identifierCopy isEqualToString:@"com.apple.mobilesafari"])
  {
    v26 = [(HVBiomeConversions *)self _safariPageViewFromSearchableItem:itemCopy error:error];
    goto LABEL_9;
  }

  if ([identifierCopy isEqualToString:@"com.apple.usernotificationsd"])
  {
    v128 = hv_default_log_handle();
    if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      v129 = "HVBiomeConversions: biomeEventFromSearchableItem: harvesting notifications is no longer supported";
      v130 = v128;
      v131 = 2;
LABEL_96:
      _os_log_impl(&dword_2321EC000, v130, OS_LOG_TYPE_INFO, v129, &buf, v131);
    }
  }

  else
  {
    if (![identifierCopy hasPrefix:@"com.apple."])
    {
      v26 = [HVBiomeConversions _thirdPartyAppContentEventFromSearchableItem:self error:itemCopy];
      goto LABEL_9;
    }

    v128 = hv_default_log_handle();
    if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifierCopy;
      v129 = "HVBiomeConversions: biomeEventFromSearchableItem: ignoring CSSI from unsupported first party app: %@.";
      v130 = v128;
      v131 = 12;
      goto LABEL_96;
    }
  }

  v27 = 0;
LABEL_83:

  return v27;
}

+ (id)_safariPageViewFromSearchableItem:(void *)item error:
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_opt_self();
  attributeSet = [v4 attributeSet];
  textContentDataSource = [attributeSet textContentDataSource];
  v8 = [textContentDataSource isEqualToString:@"ReaderText"];

  contentURL = [attributeSet contentURL];
  absoluteString = [contentURL absoluteString];
  v11 = [absoluteString length];

  if (v11)
  {
    v12 = [HVSearchableItemHelper textContentNoCopyRetainingBackingBuffer:v4];
    if (v12)
    {
      v36 = v12;
      lastUsedDate = [attributeSet lastUsedDate];
      if (!lastUsedDate)
      {
        v14 = hv_default_log_handle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2321EC000, v14, OS_LOG_TYPE_FAULT, "HVBiomeConversions: attributes.lastUsedDate nil on Safari event", buf, 2u);
        }

        lastUsedDate = [MEMORY[0x277CBEAA8] date];
      }

      v15 = objc_alloc(MEMORY[0x277CF1AA8]);
      uniqueIdentifier = [v4 uniqueIdentifier];
      domainIdentifier = [v4 domainIdentifier];
      v17 = +[(HVBiomeConversions *)v5];
      [lastUsedDate timeIntervalSinceReferenceDate];
      v19 = v18;
      title = [attributeSet title];
      [v4 protection];
      v21 = v4;
      v23 = v22 = attributeSet;
      v24 = v15;
      v25 = v36;
      v26 = [v24 initWithUniqueId:uniqueIdentifier domainId:domainIdentifier personaId:v17 absoluteTimestamp:title title:v36 content:v8 contentIsReaderText:v19 url:contentURL contentProtection:v23];

      attributeSet = v22;
      v4 = v21;

      goto LABEL_17;
    }

    v32 = hv_default_log_handle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v4;
      _os_log_impl(&dword_2321EC000, v32, OS_LOG_TYPE_DEFAULT, "HVBiomeConversions: _safariPageViewFromSearchableItem: received item with no content: %@", buf, 0xCu);
    }

    if (item)
    {
      v33 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA450];
      v38 = @"received item with no content";
      lastUsedDate = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v31 = [v33 errorWithDomain:@"HVErrorDomain" code:4 userInfo:lastUsedDate];
      v25 = 0;
      goto LABEL_16;
    }

    v25 = 0;
  }

  else
  {
    v27 = objc_alloc(MEMORY[0x277CCACA8]);
    uniqueIdentifier2 = [v4 uniqueIdentifier];
    v25 = [v27 initWithFormat:@"ignoring CSSI %@ due to missing contentURL", uniqueIdentifier2];

    v29 = hv_default_log_handle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v25;
      _os_log_error_impl(&dword_2321EC000, v29, OS_LOG_TYPE_ERROR, "HVBiomeConversions: safariPageViewFromSearchableItem: %@", buf, 0xCu);
    }

    if (item)
    {
      v30 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA450];
      v40 = v25;
      lastUsedDate = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v31 = [v30 errorWithDomain:@"HVErrorDomain" code:7 userInfo:lastUsedDate];
LABEL_16:
      v26 = 0;
      *item = v31;
LABEL_17:

      goto LABEL_20;
    }
  }

  v26 = 0;
LABEL_20:

  return v26;
}

+ (id)_thirdPartyAppContentEventFromSearchableItem:(uint64_t)item error:(void *)error
{
  errorCopy = error;
  v3 = objc_opt_self();
  attributeSet = [errorCopy attributeSet];
  v5 = [HVSearchableItemHelper textContentNoCopyRetainingBackingBuffer:errorCopy];
  v6 = objc_alloc(MEMORY[0x277CF1B60]);
  uniqueIdentifier = [errorCopy uniqueIdentifier];
  domainIdentifier = [errorCopy domainIdentifier];
  bundleID = [errorCopy bundleID];
  v7 = +[(HVBiomeConversions *)v3];
  contentCreationDate = [attributeSet contentCreationDate];
  [contentCreationDate timeIntervalSinceReferenceDate];
  v9 = v8;
  title = [attributeSet title];
  contentDescription = [attributeSet contentDescription];
  comment = [attributeSet comment];
  protection = [errorCopy protection];

  v15 = [v6 initWithUniqueId:uniqueIdentifier domainId:domainIdentifier bundleId:bundleID personaId:v7 absoluteTimestamp:title title:contentDescription desc:v9 comment:comment content:v5 contentProtection:protection];

  return v15;
}

id __64__HVBiomeConversions__mailContentEventFromSearchableItem_error___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(a1 + 32) emailHeaders];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        if (![@"message-id" caseInsensitiveCompare:v7])
        {
          v9 = [*(a1 + 32) emailHeaders];
          v10 = [v9 objectForKeyedSubscript:v7];
          v8 = [v10 _pas_componentsJoinedByString:{@", "}];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = [*(a1 + 40) bundleID];
  v13 = [*(a1 + 40) uniqueIdentifier];
  v14 = [*(a1 + 40) domainIdentifier];
  v15 = v14;
  v16 = @"UNKNOWN!";
  if (v8)
  {
    v16 = v8;
  }

  v17 = [v11 initWithFormat:@"bid:%@, uid:%@, did:%@, mid:%@", v12, v13, v14, v16];

  return v17;
}

@end