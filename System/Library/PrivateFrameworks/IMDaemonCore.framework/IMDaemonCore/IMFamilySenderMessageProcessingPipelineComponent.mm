@interface IMFamilySenderMessageProcessingPipelineComponent
- (IMFamilySenderMessageProcessingPipelineComponent)initWithAccount:(id)account idsTrustedData:(id)data;
- (id)_fromFamilyMember:(id)member;
- (id)_generateError:(id)error;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMFamilySenderMessageProcessingPipelineComponent

- (id)_fromFamilyMember:(id)member
{
  v108 = *MEMORY[0x277D85DE8];
  memberCopy = member;
  v74 = objc_alloc_init(MEMORY[0x277D18E08]);
  v96 = 0;
  v97 = &v96;
  v98 = 0x2050000000;
  v3 = qword_27D8CFEC8;
  v99 = qword_27D8CFEC8;
  if (!qword_27D8CFEC8)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v105 = sub_22B5936B0;
    v106 = &unk_278703200;
    v107 = &v96;
    sub_22B5936B0(&buf);
    v3 = v97[3];
  }

  v4 = v3;
  _Block_object_dispose(&v96, 8);
  v73 = objc_alloc_init(v3);
  [v73 setCachePolicy:1];
  v95 = 0;
  v72 = [v73 fetchFamilyCircleWithError:&v95];
  v5 = v95;
  v69 = v5;
  if (!v72)
  {
    v8 = v5 == 0;
    v9 = IMLogHandleForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (v10)
      {
        sub_22B7D3F50(v9);
      }

      _stripFZIDPrefix = [(IMFamilySenderMessageProcessingPipelineComponent *)self _generateError:@"Unknown FamilyCircle fetch error"];
      [v74 failWithError:_stripFZIDPrefix];
    }

    else
    {
      if (v10)
      {
        sub_22B7D3EDC();
      }

      _stripFZIDPrefix = [(IMFamilySenderMessageProcessingPipelineComponent *)self _generateError:@"FamilyCircle fetch failed with specific error"];
      [v74 failWithError:_stripFZIDPrefix];
    }

LABEL_108:

    v61 = v74;
    goto LABEL_109;
  }

  fromIdentifier = [memberCopy fromIdentifier];
  _stripFZIDPrefix = [fromIdentifier _stripFZIDPrefix];

  if (!IMGetDomainBoolForKey())
  {
LABEL_17:
    v67 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = [v72 members];
    v66 = [obj countByEnumeratingWithState:&v91 objects:v103 count:16];
    if (v66)
    {
      v15 = *v92;
      v65 = *v92;
      while (2)
      {
        for (i = 0; i != v66; ++i)
        {
          if (*v92 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v91 + 1) + 8 * i);
          appleID = [v17 appleID];
          v19 = appleID == 0;

          if (!v19)
          {
            if (([v17 isMe] & 1) == 0)
            {
              appleID2 = [v17 appleID];
              [v67 addObject:appleID2];
            }

            appleID3 = [v17 appleID];
            v22 = [_stripFZIDPrefix isEqualToString:appleID3];

            if (v22)
            {
              if (IMOSLoggingEnabled())
              {
                v63 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                {
                  appleID4 = [v17 appleID];
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = appleID4;
                  _os_log_impl(&dword_22B4CC000, v63, OS_LOG_TYPE_INFO, "Apple ID matches Family member %@", &buf, 0xCu);
                }
              }

LABEL_95:

              if (IMOSLoggingEnabled())
              {
                v55 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                {
                  fromIdentifier2 = [memberCopy fromIdentifier];
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = fromIdentifier2;
                  _os_log_impl(&dword_22B4CC000, v55, OS_LOG_TYPE_INFO, "Found family member relation using raw handles! %@", &buf, 0xCu);
                }
              }

              [v74 fullfillWithValue:memberCopy];
              goto LABEL_107;
            }
          }

          dictionary = [v17 dictionary];
          v24 = [dictionary objectForKey:@"member-appleID-aliases"];
          if (v24)
          {
            if (([v17 isMe] & 1) == 0)
            {
              [v67 addObjectsFromArray:v24];
            }

            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v25 = v24;
            v26 = [v25 countByEnumeratingWithState:&v87 objects:v102 count:16];
            if (v26)
            {
              v27 = *v88;
              while (2)
              {
                for (j = 0; j != v26; ++j)
                {
                  if (*v88 != v27)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v29 = *(*(&v87 + 1) + 8 * j);
                  if ([_stripFZIDPrefix isEqualToString:v29])
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v53 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
                      {
                        LODWORD(buf) = 138412290;
                        *(&buf + 4) = v29;
                        _os_log_impl(&dword_22B4CC000, v53, OS_LOG_TYPE_INFO, "Alias matches Family member %@", &buf, 0xCu);
                      }
                    }

                    goto LABEL_95;
                  }
                }

                v26 = [v25 countByEnumeratingWithState:&v87 objects:v102 count:16];
                if (v26)
                {
                  continue;
                }

                break;
              }
            }
          }

          v30 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:_stripFZIDPrefix];
          if (v30)
          {
            memberPhoneNumbers = [v17 memberPhoneNumbers];
            v32 = [memberPhoneNumbers componentsSeparatedByString:{@", "}];

            if (([v17 isMe] & 1) == 0)
            {
              [v67 addObjectsFromArray:v32];
            }

            v85 = 0u;
            v86 = 0u;
            v84 = 0u;
            v83 = 0u;
            v33 = v32;
            v34 = [v33 countByEnumeratingWithState:&v83 objects:v101 count:16];
            if (v34)
            {
              v35 = *v84;
              while (2)
              {
                for (k = 0; k != v34; ++k)
                {
                  if (*v84 != v35)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v37 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:*(*(&v83 + 1) + 8 * k)];
                  if ([v30 isLikePhoneNumber:v37])
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v54 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                      {
                        LODWORD(buf) = 138412290;
                        *(&buf + 4) = v30;
                        _os_log_impl(&dword_22B4CC000, v54, OS_LOG_TYPE_INFO, "Phone number matches Family member %@", &buf, 0xCu);
                      }
                    }

                    goto LABEL_95;
                  }
                }

                v34 = [v33 countByEnumeratingWithState:&v83 objects:v101 count:16];
                if (v34)
                {
                  continue;
                }

                break;
              }
            }
          }

          v15 = v65;
        }

        v66 = [obj countByEnumeratingWithState:&v91 objects:v103 count:16];
        v15 = v65;
        if (v66)
        {
          continue;
        }

        break;
      }
    }

    idsTrustedData = [(IMFamilySenderMessageProcessingPipelineComponent *)self idsTrustedData];
    senderCorrelationIdentifier = [idsTrustedData senderCorrelationIdentifier];
    v40 = senderCorrelationIdentifier == 0;

    if (v40)
    {
      v57 = IMLogHandleForCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D3E54(memberCopy);
      }

      v58 = [(IMFamilySenderMessageProcessingPipelineComponent *)self _generateError:@"IDS data had no sender correlation identifier"];
      [v74 failWithError:v58];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Didn't find family member relation using raw handles. Attempting to lookup using SCIs.", &buf, 2u);
        }
      }

      v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v43 = v67;
      v44 = [v43 countByEnumeratingWithState:&v79 objects:v100 count:16];
      if (v44)
      {
        v45 = *v80;
        do
        {
          for (m = 0; m != v44; ++m)
          {
            if (*v80 != v45)
            {
              objc_enumerationMutation(v43);
            }

            v47 = *(*(&v79 + 1) + 8 * m);
            if ([v47 length])
            {
              v48 = IDSCopyBestGuessIDForID();
              if (v48)
              {
                [v42 addObject:v48];
              }

              else if (IMOSLoggingEnabled())
              {
                v50 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                {
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = v47;
                  _os_log_impl(&dword_22B4CC000, v50, OS_LOG_TYPE_INFO, "handle could not be normalized for IDS lookup: %@", &buf, 0xCu);
                }
              }
            }

            else if (IMOSLoggingEnabled())
            {
              v49 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
              {
                LOWORD(buf) = 0;
                _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "Skipping normalization of empty handle in allFamilyMemberHandles", &buf, 2u);
              }
            }
          }

          v44 = [v43 countByEnumeratingWithState:&v79 objects:v100 count:16];
        }

        while (v44);
      }

      if (IMOSLoggingEnabled())
      {
        v51 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v42;
          _os_log_impl(&dword_22B4CC000, v51, OS_LOG_TYPE_INFO, "normalizedFamilyMemberHandles: %@", &buf, 0xCu);
        }
      }

      if ([v42 count])
      {
        v52 = MEMORY[0x277D1AA00];
        v76[0] = MEMORY[0x277D85DD0];
        v76[1] = 3221225472;
        v76[2] = sub_22B592CE0;
        v76[3] = &unk_278705348;
        v76[4] = self;
        v77 = v74;
        v78 = memberCopy;
        [v52 currentRemoteDevicesForDestinations:v42 service:@"com.apple.madrid" listenerID:@"IMFamilySenderMessageProcessingPipelineComponent" queue:MEMORY[0x277D85CD0] completionBlock:v76];
      }

      else
      {
        v59 = IMLogHandleForCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D3DCC(memberCopy);
        }

        v60 = [(IMFamilySenderMessageProcessingPipelineComponent *)self _generateError:@"Family IDS handles were empty"];
        [v74 failWithError:v60];
      }
    }

LABEL_107:

    goto LABEL_108;
  }

  childBotAllowlistedParents = [v72 childBotAllowlistedParents];
  if (![childBotAllowlistedParents containsObject:_stripFZIDPrefix])
  {
    parentAllowlistedChildBots = [v72 parentAllowlistedChildBots];
    v12 = [parentAllowlistedChildBots containsObject:_stripFZIDPrefix];

    if (v12)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

LABEL_12:
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Found fromHandle in child-bot allow list", &buf, 2u);
    }
  }

  [v74 fullfillWithValue:memberCopy];
  v14 = v74;

LABEL_109:

  return v74;
}

- (id)_generateError:(id)error
{
  v3 = MEMORY[0x277CBEAC0];
  errorCopy = error;
  v5 = [v3 alloc];
  v6 = [v5 initWithObjectsAndKeys:{errorCopy, *MEMORY[0x277CCA068], 0}];

  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v8 = [v7 initWithDomain:*MEMORY[0x277D18DF8] code:21 userInfo:v6];

  return v8;
}

- (IMFamilySenderMessageProcessingPipelineComponent)initWithAccount:(id)account idsTrustedData:(id)data
{
  accountCopy = account;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = IMFamilySenderMessageProcessingPipelineComponent;
  v9 = [(IMFamilySenderMessageProcessingPipelineComponent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_idsTrustedData, data);
  }

  return v10;
}

- (id)runIndividuallyWithInput:(id)input
{
  v29[3] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v4 = *MEMORY[0x277D19700];
  v29[0] = *MEMORY[0x277D196F8];
  v29[1] = v4;
  v29[2] = *MEMORY[0x277D196D0];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "<IMFamilySenderMessageProcessingPipelineComponent> Started processing", buf, 2u);
    }
  }

  if ([inputCopy isFromMe])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        fromIdentifier = [inputCopy fromIdentifier];
        *buf = 138412290;
        v28 = fromIdentifier;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Message is a message from me: %@", buf, 0xCu);
      }
    }

    v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
  }

  else
  {
    if ([inputCopy conformsToProtocol:&unk_283F6EB70])
    {
      v10 = inputCopy;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = v5;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        v13 = 0;
        v14 = *v23;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            if (v13)
            {
              v13 = 1;
            }

            else
            {
              balloonPluginBundleID = [v10 balloonPluginBundleID];
              v17 = IMBalloonExtensionIDWithSuffix();
              v13 = [balloonPluginBundleID isEqualToString:v17];
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v12);

        if (v13)
        {
          v9 = [(IMFamilySenderMessageProcessingPipelineComponent *)self _fromFamilyMember:v10];
          goto LABEL_30;
        }
      }

      else
      {
      }
    }

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Message is not family extension", buf, 2u);
      }
    }

    v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
  }

LABEL_30:
  v19 = v9;

  return v19;
}

@end