id sub_25479F478(void *a1)
{
  if (![MEMORY[0x277D18DE0] iMessageEnabledForSenderLastAddressedHandle:0 simID:0] || (objc_msgSend(MEMORY[0x277D18DD8], "iMessageService"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1, "bestAccountForService:", v2), v3 = objc_claimAutoreleasedReturnValue(), v2, !v3))
  {
    if ([MEMORY[0x277D18DE0] smsEnabled])
    {
      v4 = [MEMORY[0x277D18DD8] smsService];
      v3 = [a1 bestAccountForService:v4];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

id _IMAssistantCoreSearchForMessageSignpostLogHandle(uint64_t a1)
{
  if (qword_28118F678 != -1)
  {
    sub_25479F954();
  }

  v2 = qword_28118F670;

  return v2;
}

void sub_25479F654(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_class() connectToIMDaemonController];
  v2 = [v1 timeIntervalSinceNow];
  v4 = fabs(v3);
  if (v4 >= 5.0)
  {
    v6 = _IMAssistantCoreGeneralSignpostLogHandle(v2);
    v7 = os_signpost_id_generate(v6);

    v9 = _IMAssistantCoreGeneralSignpostLogHandle(v8);
    v10 = v9;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "imSystemMonitorSuspendAndResume", &unk_2547CAD0B, &v17, 2u);
    }

    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_25479E000, v11, OS_LOG_TYPE_INFO, "Calling IMSystemMonitor _forceSuspended and _forceResumed", &v17, 2u);
    }

    v12 = [MEMORY[0x277D192A8] sharedInstance];
    [v12 _forceSuspended];

    v13 = [MEMORY[0x277D192A8] sharedInstance];
    [v13 _forceResumed];

    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_25479E000, v14, OS_LOG_TYPE_INFO, "IMSystemMonitor _forceResumed completed", &v17, 2u);
    }

    v16 = _IMAssistantCoreGeneralSignpostLogHandle(v15);
    v5 = v16;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v5, OS_SIGNPOST_INTERVAL_END, v7, "imSystemMonitorSuspendAndResume", &unk_2547CAD0B, &v17, 2u);
    }
  }

  else
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v17 = 134217984;
      v18 = v4;
      _os_log_impl(&dword_25479E000, v5, OS_LOG_TYPE_INFO, "Not triggering IMDaemonController reconnect. Connection was established %.4f seconds ago.", &v17, 0xCu);
    }
  }
}

id _IMAssistantCoreGeneralSignpostLogHandle(uint64_t a1)
{
  if (qword_28118F688 != -1)
  {
    sub_25479F91C();
  }

  v2 = qword_28118F680;

  return v2;
}

id IMAssistantChatIdentifierFromConversationIdentifier(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@";"];
  v3 = v1;
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    IMComponentsFromChatGUID();
    v3 = 0;
  }

  v4 = v3;

  return v4;
}

id sub_25479FABC(void *a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 identifier];
  v4 = [a1 conversationIdentifier];
  v5 = [a1 groupName];
  v6 = [a1 sender];
  v7 = MEMORY[0x277CCABB0];
  v8 = [a1 recipients];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
  v10 = [a1 recipients];
  v11 = [v2 stringWithFormat:@"INMessage %@\nConversation identifier: %@\nGroup name: %@\nSender: %@\nRecipients (%@): %@", v3, v4, v5, v6, v9, v10];

  return v11;
}

void sub_2547A083C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2547A086C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2547A0884(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v2 = [*(a1 + 32) messageHandlerDataSource];
  v3 = [v2 locationManagerDataSource];

  if (([*(a1 + 32) canSendLocationMessageWithLocationManager:v3 withError:&v14] & 1) == 0)
  {
    v4 = objc_alloc(MEMORY[0x277CD4080]);
    v5 = [v4 initWithCode:v14 userActivity:0];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Completing confirmSendMessage with %@", buf, 0xCu);
  }

  v11 = _IMAssistantCoreSendMessageSignpostLogHandle(v10);
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v12, OS_SIGNPOST_INTERVAL_END, v13, "confirmSendMessageIntent", &unk_2547CAD0B, buf, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_2547A0C00(uint64_t a1)
{
  v1 = a1;
  v237 = *MEMORY[0x277D85DE8];
  v194 = [*(a1 + 32) content];
  v2 = [*(v1 + 32) speakableGroupName];
  v196 = [v2 spokenPhrase];

  v199 = [*(v1 + 32) recipients];
  v3 = [*(v1 + 32) _metadata];
  v193 = v3;
  if ([v3 hasOriginatingDeviceIdsIdentifier])
  {
    v4 = [v3 originatingDeviceIdsIdentifier];
  }

  else
  {
    v4 = 0;
  }

  v5 = +[IMAssistantINMessageConverter expressiveSendIdFromMessageEffectType:](IMAssistantINMessageConverter, "expressiveSendIdFromMessageEffectType:", [*(v1 + 32) effect]);
  v192 = [*(v1 + 32) _executionContext];
  v222[0] = MEMORY[0x277D85DD0];
  v222[1] = 3221225472;
  v222[2] = sub_2547A2A0C;
  v222[3] = &unk_279786310;
  v6 = *(v1 + 48);
  v224 = *(v1 + 56);
  v223 = v6;
  v7 = MEMORY[0x259C19590](v222);
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v234 = v196;
    _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Send Message Intent: GroupName: %@", buf, 0xCu);
  }

  v197 = v4;

  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v234 = v199;
    _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Send Message Intent: Recipients: %@", buf, 0xCu);
  }

  v200 = v7;

  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [*(v1 + 32) conversationIdentifier];
    *buf = 138412290;
    v234 = v11;
    _os_log_impl(&dword_25479E000, v10, OS_LOG_TYPE_INFO, "Send Message Intent: Conversation Identifier: %@", buf, 0xCu);
  }

  v12 = *(v1 + 32);
  v226 = 0u;
  v227 = 0u;
  v228 = 0u;
  v229 = 0u;
  v13 = [v12 attachments];
  v14 = [v13 countByEnumeratingWithState:&v226 objects:buf count:16];
  v198 = v5;
  v201 = v1;
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v227;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v227 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v226 + 1) + 8 * i);
        if ([v19 currentLocation])
        {
          v20 = IMLogHandleForCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *v232 = 138412290;
            *&v232[4] = v19;
            _os_log_impl(&dword_25479E000, v20, OS_LOG_TYPE_INFO, "Intent contains an current location attachment: %@", v232, 0xCu);
          }

          v16 = 1;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v226 objects:buf count:16];
    }

    while (v15);

    if (v16)
    {
      v21 = IMLogHandleForCategory();
      v1 = v201;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v21, OS_LOG_TYPE_INFO, "Will try to send a current location message.", buf, 2u);
      }

      v22 = 1;
    }

    else
    {
      v22 = 0;
      v1 = v201;
    }
  }

  else
  {

    v22 = 0;
  }

  v23 = *(v1 + 32);
  v191 = v22;
  if ([v23 outgoingMessageType] == 2)
  {
    v24 = IMLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v24, OS_LOG_TYPE_INFO, "Intent contains an audio message request, looking for the attachment", buf, 2u);
    }

    v228 = 0u;
    v229 = 0u;
    v226 = 0u;
    v227 = 0u;
    v208 = v23;
    v25 = [v23 attachments];
    v26 = [v25 countByEnumeratingWithState:&v226 objects:buf count:16];
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = *v227;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v227 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v31 = [*(*(&v226 + 1) + 8 * j) audioMessageFile];
          v32 = [v31 fileURL];

          if (v32)
          {
            v33 = IMLogHandleForCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *v232 = 138412290;
              *&v232[4] = v32;
              _os_log_impl(&dword_25479E000, v33, OS_LOG_TYPE_INFO, "Intent contains a audioFileAttachment: %@", v232, 0xCu);
            }

            v34 = v32;
            v28 = v34;
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v226 objects:buf count:16];
      }

      while (v27);
    }

    else
    {
      v28 = 0;
    }

    v1 = v201;
    v23 = v208;
  }

  else
  {
    v28 = 0;
  }

  v35 = v28;

  v195 = v35;
  if (v35)
  {
    v36 = IMLogHandleForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v234 = v195;
      _os_log_impl(&dword_25479E000, v36, OS_LOG_TYPE_INFO, "Will try to send a Audio Message with attachment: %@", buf, 0xCu);
    }
  }

  v37 = *(v1 + 32);
  v38 = IMLogHandleForCategory();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25479E000, v38, OS_LOG_TYPE_INFO, "Checking the intent for a shared link.", buf, 2u);
  }

  v228 = 0u;
  v229 = 0u;
  v226 = 0u;
  v227 = 0u;
  v39 = [v37 attachments];
  v40 = [(IMAssistantURLWithMetadata *)v39 countByEnumeratingWithState:&v226 objects:buf count:16];
  if (!v40)
  {
    v62 = 0;
    v42 = 0;
    v58 = 0;
    goto LABEL_82;
  }

  v41 = v40;
  v188 = v37;
  v209 = 0;
  v42 = 0;
  v43 = *v227;
  v204 = *MEMORY[0x277CE1D48];
  v206 = v39;
  do
  {
    for (k = 0; k != v41; ++k)
    {
      if (*v227 != v43)
      {
        objc_enumerationMutation(v39);
      }

      v45 = *(*(&v226 + 1) + 8 * k);
      if (objc_opt_respondsToSelector())
      {
        v46 = [v45 sharedLink];

        if (v46)
        {
          [v45 sharedLink];
          v42 = v47 = v42;
        }

        else
        {
          v212 = v42;
          v48 = [v45 file];
          v49 = [v48 typeIdentifier];
          v50 = [v204 identifier];
          v51 = [v49 isEqualToString:v50];

          if (!v51)
          {
            v42 = v212;
            v39 = v206;
            continue;
          }

          v52 = MEMORY[0x277CCAAC8];
          v53 = objc_opt_class();
          v54 = [v45 file];
          v55 = [v54 data];
          v225 = 0;
          v56 = [v52 unarchivedObjectOfClass:v53 fromData:v55 error:&v225];
          v47 = v225;

          if (!v56 || v47)
          {
            v57 = IMLogHandleForCategory();
            v42 = v212;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
            {
              *v232 = 138412290;
              *&v232[4] = v47;
              _os_log_impl(&dword_25479E000, v57, OS_LOG_TYPE_INFO, "There was an error unarchiving the attachment to LPLinkMetadata: %@", v232, 0xCu);
            }

            v209 = 0;
          }

          else
          {
            v209 = v56;
            v42 = v212;
          }

          v39 = v206;
        }
      }

      else
      {
        v47 = IMLogHandleForCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *v232 = 0;
          _os_log_impl(&dword_25479E000, v47, OS_LOG_TYPE_INFO, "SDK doesn't support API.", v232, 2u);
        }
      }
    }

    v41 = [(IMAssistantURLWithMetadata *)v39 countByEnumeratingWithState:&v226 objects:buf count:16];
  }

  while (v41);

  v58 = v209;
  if (v42 && v209)
  {
    v59 = [v209 originalURL];
    v60 = [v42 isEqual:v59];

    if ((v60 & 1) == 0)
    {
      v61 = IMLogHandleForCategory();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *v232 = 0;
        _os_log_impl(&dword_25479E000, v61, OS_LOG_TYPE_INFO, "We have a shared link and metadata, but there is a URL mismatch. Clearing out the metadata to avoid attaching the wrong metadata.", v232, 2u);
      }

      v58 = 0;
    }

LABEL_81:
    v1 = v201;
    v37 = v188;
    v39 = [[IMAssistantURLWithMetadata alloc] initWithURL:v42 metadata:v58];
    v62 = v39;
LABEL_82:
  }

  else
  {
    if (v42)
    {
      goto LABEL_81;
    }

    v62 = 0;
    v1 = v201;
    v37 = v188;
  }

  if (v62)
  {
    v63 = IMLogHandleForCategory();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v234 = v62;
      _os_log_impl(&dword_25479E000, v63, OS_LOG_TYPE_INFO, "Will try to send a shared link for the URL at: %@", buf, 0xCu);
    }
  }

  v207 = v62;
  v64 = *(v1 + 32);
  v65 = objc_alloc(MEMORY[0x277CBEB18]);
  v66 = [v64 attachments];
  v67 = [v65 initWithCapacity:{objc_msgSend(v66, "count")}];

  v68 = IMLogHandleForCategory();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25479E000, v68, OS_LOG_TYPE_INFO, "Checking the intent for a file attachment.", buf, 2u);
  }

  v228 = 0u;
  v229 = 0u;
  v226 = 0u;
  v227 = 0u;
  v69 = [v64 attachments];
  v70 = [v69 countByEnumeratingWithState:&v226 objects:buf count:16];
  if (v70)
  {
    v71 = v70;
    v72 = *v227;
    do
    {
      for (m = 0; m != v71; ++m)
      {
        if (*v227 != v72)
        {
          objc_enumerationMutation(v69);
        }

        v74 = *(*(&v226 + 1) + 8 * m);
        v75 = [v74 file];
        v76 = [v75 fileURL];

        if (v76)
        {
          v77 = [v74 file];
          v78 = [v77 fileURL];
          [v67 addObject:v78];
        }
      }

      v71 = [v69 countByEnumeratingWithState:&v226 objects:buf count:16];
    }

    while (v71);
  }

  v79 = v67;
  v213 = v79;
  if ([(IMAssistantURLWithMetadata *)v79 count])
  {
    v80 = IMLogHandleForCategory();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v234 = v79;
      _os_log_impl(&dword_25479E000, v80, OS_LOG_TYPE_INFO, "Will try to send files at the following locations: %@", buf, 0xCu);
    }
  }

  v81 = *(v1 + 32);
  v82 = IMLogHandleForCategory();
  if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25479E000, v82, OS_LOG_TYPE_INFO, "Checking the intent for a PHAsset attachment.", buf, 2u);
  }

  v228 = 0u;
  v229 = 0u;
  v226 = 0u;
  v227 = 0u;
  v83 = [v81 attachments];
  v84 = [v83 countByEnumeratingWithState:&v226 objects:buf count:16];
  if (v84)
  {
    v85 = v84;
    v210 = v81;
    v86 = *v227;
    while (2)
    {
      for (n = 0; n != v85; ++n)
      {
        if (*v227 != v86)
        {
          objc_enumerationMutation(v83);
        }

        v88 = *(*(&v226 + 1) + 8 * n);
        if (objc_opt_respondsToSelector())
        {
          v89 = [v88 phAssetId];

          if (v89)
          {
            v90 = objc_alloc_init(MEMORY[0x277CD9880]);
            [v90 setIncludeGuestAssets:1];
            [v90 setIncludeHiddenAssets:1];
            v91 = MEMORY[0x277CD97A8];
            v92 = [v88 phAssetId];
            *v232 = v92;
            v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v232 count:1];
            v94 = [v91 fetchAssetsWithLocalIdentifiers:v93 options:v90];
            v95 = [v94 firstObject];

            if (v95)
            {
              v205 = v95;

              goto LABEL_117;
            }
          }
        }
      }

      v85 = [v83 countByEnumeratingWithState:&v226 objects:buf count:16];
      if (v85)
      {
        continue;
      }

      break;
    }

    v205 = 0;
LABEL_117:
    v1 = v201;
    v81 = v210;
  }

  else
  {
    v205 = 0;
  }

  v96 = [*(v1 + 32) shouldHideSiriAttribution];
  v97 = [v96 BOOLValue];

  v98 = [*(v1 + 40) messageHandlerDataSource];
  v99 = [v98 chatDataSource];

  v100 = *(v1 + 32);
  v101 = v99;
  v102 = v100;
  v103 = [v102 conversationIdentifier];
  v104 = v198;
  v211 = v101;
  if ([(IMAssistantURLWithMetadata *)v103 length])
  {
    v105 = IMLogHandleForCategory();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v234 = v103;
      _os_log_impl(&dword_25479E000, v105, OS_LOG_TYPE_INFO, "Intent contains a conversation identifier. Using that to find an existing chat. conversationIdentifier=%@", buf, 0xCu);
    }

    v106 = v101;
    v107 = v103;
    if ([(IMAssistantURLWithMetadata *)v107 length])
    {
      v108 = IMAssistantChatIdentifierFromConversationIdentifier(v107);
      v109 = [v106 existingChatWithChatIdentifier:v108];
      if (v109)
      {
        v110 = v109;

        goto LABEL_131;
      }

      v111 = IMLogHandleForCategory();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v234 = v107;
        _os_log_impl(&dword_25479E000, v111, OS_LOG_TYPE_INFO, "Could not find a chat with the conversationIdentifier %@, ignoring.", buf, 0xCu);
      }
    }

    else
    {
      v108 = IMLogHandleForCategory();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v108, OS_LOG_TYPE_INFO, "Could not find a chat with nil or empty conversationIdentifier, ignoring", buf, 2u);
      }
    }

    v110 = 0;
LABEL_131:

    if (v110)
    {
      v112 = v110;
      v113 = v112;
      goto LABEL_140;
    }
  }

  v114 = [v102 speakableGroupName];
  v112 = v114;
  if (v114)
  {
    v115 = [(IMAssistantURLWithMetadata *)v114 vocabularyIdentifier];
    v116 = v197;
    v202 = v115;
    if ([(IMAssistantURLWithMetadata *)v115 length])
    {
      v117 = IMAssistantChatIdentifierFromConversationIdentifier(v115);
      v118 = IMLogHandleForCategory();
      if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v234 = v115;
        v235 = 2112;
        v236 = v117;
        _os_log_impl(&dword_25479E000, v118, OS_LOG_TYPE_INFO, "Intent contains a group name vocabulary identifier. Using that to find an existing chat. vocabularyIdentifier=%@ chatIdentifier=%@", buf, 0x16u);
      }

      v119 = [v101 existingChatWithChatIdentifier:v117];
      if (v119)
      {
        v120 = v119;
        v113 = v120;
        goto LABEL_161;
      }

      v121 = IMLogHandleForCategory();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v234 = v115;
        v235 = 2112;
        v236 = v117;
        _os_log_impl(&dword_25479E000, v121, OS_LOG_TYPE_INFO, "Could not find a chat with the vocabularyIdentifier %@ chatIdentifier %@, ignoring", buf, 0x16u);
      }
    }

    else
    {
      v117 = IMLogHandleForCategory();
      if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v234 = v112;
        _os_log_impl(&dword_25479E000, v117, OS_LOG_TYPE_INFO, "speakableGroupName does not contain a vocabularyIdentifier. speakableGroupName=%@", buf, 0xCu);
      }
    }

    v117 = [(IMAssistantURLWithMetadata *)v112 spokenPhrase];
    if ([v117 length])
    {
      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      v120 = [v101 allExistingChats];
      v122 = [(IMAssistantURLWithMetadata *)v120 countByEnumeratingWithState:&v226 objects:buf count:16];
      if (v122)
      {
        v123 = v122;
        v187 = v102;
        v189 = v97;
        v124 = *v227;
        while (2)
        {
          for (ii = 0; ii != v123; ++ii)
          {
            if (*v227 != v124)
            {
              objc_enumerationMutation(v120);
            }

            v126 = *(*(&v226 + 1) + 8 * ii);
            v127 = [v126 displayName];
            v128 = [v127 isEqualToString:v117];

            if (v128)
            {
              v113 = v126;
              goto LABEL_158;
            }
          }

          v123 = [(IMAssistantURLWithMetadata *)v120 countByEnumeratingWithState:&v226 objects:buf count:16];
          if (v123)
          {
            continue;
          }

          break;
        }

        v113 = 0;
LABEL_158:
        v116 = v197;
        v104 = v198;
        v101 = v211;
        v97 = v189;
        v102 = v187;
      }

      else
      {
        v113 = 0;
        v116 = v197;
      }

LABEL_161:
    }

    else
    {
      v113 = 0;
    }

    v1 = v201;
  }

  else
  {
    v113 = 0;
LABEL_140:
    v116 = v197;
  }

  if (v113)
  {
    v129 = IMLogHandleForCategory();
    v130 = v200;
    if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v234 = v113;
      _os_log_impl(&dword_25479E000, v129, OS_LOG_TYPE_INFO, "Sending message to chat with identifier specified in intent. chat=%@", buf, 0xCu);
    }

    v131 = *(v1 + 40);
    LOBYTE(v185) = v97;
    v132 = v194;
    v133 = v195;
    v135 = v205;
    v134 = v207;
    v136 = v213;
    [v131 sendMessagesWithText:v194 currentLocation:v191 sharedLinkURL:v207 audioMessageAttachment:v195 photoLibraryAttachment:v205 fileAttachments:v213 expressiveSendStyleID:v104 idsIdentifier:v116 executionContext:v192 shouldHideSiriAttribution:v185 toChat:v113 completion:v200];
    goto LABEL_206;
  }

  v130 = v200;
  if ([*(*(v1 + 40) + 32) length])
  {
    v137 = IMLogHandleForCategory();
    if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
    {
      v138 = *(*(v1 + 40) + 32);
      *buf = 138412290;
      v234 = v138;
      _os_log_impl(&dword_25479E000, v137, OS_LOG_TYPE_INFO, "Using stored conversation identifier that was resolved during recipient resolution. conversationIdentifier=%@", buf, 0xCu);
    }

    v139 = *(*(v1 + 40) + 32);
    v140 = v101;
    v141 = v139;
    if ([(IMAssistantURLWithMetadata *)v141 length])
    {
      v142 = IMAssistantChatIdentifierFromConversationIdentifier(v141);
      v143 = [v140 existingChatWithChatIdentifier:v142];
      if (v143)
      {
        v144 = v143;

        goto LABEL_179;
      }

      v145 = IMLogHandleForCategory();
      if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v234 = v141;
        _os_log_impl(&dword_25479E000, v145, OS_LOG_TYPE_INFO, "Could not find a chat with the conversationIdentifier %@, ignoring.", buf, 0xCu);
      }
    }

    else
    {
      v142 = IMLogHandleForCategory();
      if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v142, OS_LOG_TYPE_INFO, "Could not find a chat with nil or empty conversationIdentifier, ignoring", buf, 2u);
      }
    }

    v144 = 0;
LABEL_179:

    v146 = IMLogHandleForCategory();
    v147 = os_log_type_enabled(v146, OS_LOG_TYPE_INFO);
    if (v144)
    {
      v104 = v198;
      if (v147)
      {
        *buf = 138412290;
        v234 = v144;
        _os_log_impl(&dword_25479E000, v146, OS_LOG_TYPE_INFO, "Sending message to chat that has already been resolved. chat=%@", buf, 0xCu);
      }

      v148 = *(v1 + 40);
      LOBYTE(v185) = v97;
      v132 = v194;
      v133 = v195;
      v135 = v205;
      v134 = v207;
      v136 = v213;
      [v148 sendMessagesWithText:v194 currentLocation:v191 sharedLinkURL:v207 audioMessageAttachment:v195 photoLibraryAttachment:v205 fileAttachments:v213 expressiveSendStyleID:v198 idsIdentifier:v197 executionContext:v192 shouldHideSiriAttribution:v185 toChat:v144 completion:v200];

      v116 = v197;
      v130 = v200;
      goto LABEL_206;
    }

    v130 = v200;
    if (v147)
    {
      v149 = *(*(v1 + 40) + 32);
      *buf = 138412290;
      v234 = v149;
      _os_log_impl(&dword_25479E000, v146, OS_LOG_TYPE_INFO, "Could not find IMChat matching conversation identifier resolved during recipient resolution. Ignoring. conversationIdentifier=%@", buf, 0xCu);
    }
  }

  v190 = v97;
  v150 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[IMAssistantURLWithMetadata count](v199, "count")}];
  v218 = 0u;
  v219 = 0u;
  v220 = 0u;
  v221 = 0u;
  v151 = v199;
  v152 = [(IMAssistantURLWithMetadata *)v151 countByEnumeratingWithState:&v218 objects:v231 count:16];
  if (v152)
  {
    v153 = v152;
    v154 = *v219;
    while (2)
    {
      for (jj = 0; jj != v153; ++jj)
      {
        if (*v219 != v154)
        {
          objc_enumerationMutation(v151);
        }

        v156 = *(*(&v218 + 1) + 8 * jj);
        v157 = [(IMAssistantURLWithMetadata *)v156 customIdentifier];
        if (![v157 length])
        {
          v158 = IMLogHandleForCategory();
          if (os_log_type_enabled(v158, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v234 = v156;
            _os_log_impl(&dword_25479E000, v158, OS_LOG_TYPE_INFO, "Custom identifier not set, falling back to personHandle.value: %@", buf, 0xCu);
          }

          v159 = objc_msgSend_personHandle(v156);
          v160 = [v159 value];

          v157 = v160;
          v130 = v200;
        }

        if (![v157 length])
        {
          v163 = IMLogHandleForCategory();
          if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v234 = v156;
            _os_log_impl(&dword_25479E000, v163, OS_LOG_TYPE_INFO, "Could not send message; recipient had no usable handle: %@", buf, 0xCu);
          }

          v164 = [objc_alloc(MEMORY[0x277CD4080]) initWithCode:4 userActivity:0];
          (v130)[2](v130, v164);

          v132 = v194;
          v133 = v195;
          v116 = v197;
          v136 = v213;
          v135 = v205;
          goto LABEL_205;
        }

        [(IMAssistantURLWithMetadata *)v150 addObject:v157];
      }

      v153 = [(IMAssistantURLWithMetadata *)v151 countByEnumeratingWithState:&v218 objects:v231 count:16];
      if (v153)
      {
        continue;
      }

      break;
    }
  }

  v151 = [v211 existingChatForAddresses:v150 allowRetargeting:0 bestHandles:0];
  v161 = IMLogHandleForCategory();
  v162 = os_log_type_enabled(v161, OS_LOG_TYPE_INFO);
  if (v151)
  {
    v133 = v195;
    v136 = v213;
    v135 = v205;
    if (v162)
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v161, OS_LOG_TYPE_INFO, "Found existing chat with the recipients; sending", buf, 2u);
    }

    LOBYTE(v185) = v190;
    v116 = v197;
    v132 = v194;
    [*(v201 + 40) sendMessagesWithText:v194 currentLocation:v191 sharedLinkURL:v207 audioMessageAttachment:v195 photoLibraryAttachment:v205 fileAttachments:v213 expressiveSendStyleID:v198 idsIdentifier:v197 executionContext:v192 shouldHideSiriAttribution:v185 toChat:v151 completion:v130];
    v157 = [MEMORY[0x277D1AC90] sharedInstance];
    [v157 sendINSendMessageIntentEvent];
  }

  else
  {
    v165 = v201;
    v133 = v195;
    v136 = v213;
    v135 = v205;
    if (v162)
    {
      *buf = 138412290;
      v234 = v150;
      _os_log_impl(&dword_25479E000, v161, OS_LOG_TYPE_INFO, "Could not find any existing chat matching addresses. Creating new chat. Addresses: %@", buf, 0xCu);
    }

    v166 = [*(v201 + 40) messageHandlerDataSource];
    v167 = [v166 accountDataSource];
    v168 = [v167 hasMessagingAccount];

    if (v168)
    {
      v157 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[IMAssistantURLWithMetadata count](v150, "count")}];
      v214 = 0u;
      v215 = 0u;
      v216 = 0u;
      v217 = 0u;
      v169 = v150;
      v170 = [(IMAssistantURLWithMetadata *)v169 countByEnumeratingWithState:&v214 objects:v230 count:16];
      if (v170)
      {
        v171 = v170;
        v203 = *v215;
        obj = v169;
        while (2)
        {
          for (kk = 0; kk != v171; ++kk)
          {
            if (*v215 != v203)
            {
              objc_enumerationMutation(obj);
            }

            v173 = *(*(&v214 + 1) + 8 * kk);
            v174 = [*(v165 + 40) messageHandlerDataSource];
            v175 = [v174 accountDataSource];
            v176 = IMStripFormattingFromAddress();
            v177 = [v175 imHandleWithID:v176];

            if (!v177)
            {
              v182 = IMLogHandleForCategory();
              v130 = v200;
              v133 = v195;
              v136 = v213;
              v135 = v205;
              if (os_log_type_enabled(v182, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v234 = v173;
                _os_log_impl(&dword_25479E000, v182, OS_LOG_TYPE_INFO, "Could not send message; an address could not be resolved to an IMHandle: %@", buf, 0xCu);
              }

              v183 = [objc_alloc(MEMORY[0x277CD4080]) initWithCode:4 userActivity:0];
              (*(v200 + 16))(v200, v183);
              v116 = v197;
              goto LABEL_232;
            }

            [v157 addObject:v177];

            v165 = v201;
          }

          v169 = obj;
          v171 = [(IMAssistantURLWithMetadata *)obj countByEnumeratingWithState:&v214 objects:v230 count:16];
          if (v171)
          {
            continue;
          }

          break;
        }
      }

      if ([v157 count] == 1)
      {
        v178 = [v157 firstObject];
        v179 = [v211 chatForIMHandle:v178];

        v180 = v178;
      }

      else
      {
        v180 = [v211 chatForIMHandles:v157];
        v179 = v180;
      }

      v116 = v197;
      v130 = v200;
      v133 = v195;
      v136 = v213;
      v135 = v205;

      obj = v179;
      if ([*(v165 + 40) updateSenderIdentityForNewlyCreatedChat:v179])
      {
        LOBYTE(v185) = v190;
        [*(v165 + 40) sendMessagesWithText:v194 currentLocation:v191 sharedLinkURL:v207 audioMessageAttachment:v195 photoLibraryAttachment:v205 fileAttachments:v213 expressiveSendStyleID:v198 idsIdentifier:v197 executionContext:v192 shouldHideSiriAttribution:v185 toChat:v179 completion:{v200, v179}];
        v183 = [MEMORY[0x277D1AC90] sharedInstance];
        [v183 sendINSendMessageIntentEvent];
      }

      else
      {
        v184 = IMLogHandleForCategory();
        if (os_log_type_enabled(v184, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25479E000, v184, OS_LOG_TYPE_INFO, "Failed to determine the prefferred sender identity, returning failure requiring app launch so the user can use the sim selection UI", buf, 2u);
        }

        v183 = [objc_alloc(MEMORY[0x277CD4080]) initWithCode:5 userActivity:0];
        (*(v200 + 16))(v200, v183);
      }

LABEL_232:
    }

    else
    {
      v181 = IMLogHandleForCategory();
      v116 = v197;
      if (os_log_type_enabled(v181, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v181, OS_LOG_TYPE_INFO, "Could not send message; no messaging accounts available", buf, 2u);
      }

      v157 = [objc_alloc(MEMORY[0x277CD4080]) initWithCode:6 userActivity:0];
      v130 = v200;
      (*(v200 + 16))(v200, v157);
    }

    v132 = v194;
  }

LABEL_205:

  v104 = v198;
  v134 = v207;
  v113 = 0;
LABEL_206:
}

void sub_2547A2A0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _IMAssistantCoreSendMessageSignpostLogHandle(v3);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v5, OS_SIGNPOST_INTERVAL_END, v6, "handleSendMessageIntent", &unk_2547CAD0B, v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2547A2FE8(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_25479E000, v4, OS_LOG_TYPE_INFO, "Resolve recipients with legacy resolution results: %@", &v9, 0xCu);
  }

  v6 = _IMAssistantCoreSendMessageSignpostLogHandle(v5);
  v7 = v6;
  v8 = *(a1 + 40);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v7, OS_SIGNPOST_INTERVAL_END, v8, "resolveRecipientsForSendMessage", &unk_2547CAD0B, &v9, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2547A39B8(uint64_t a1)
{
  v1 = a1;
  v278 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) count];
  v3 = *(v1 + 32);
  if (v2 == 1)
  {
    log = [v3 firstObject];
    v4 = IMAssistantChatIdentifierFromConversationIdentifier(log);
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v271 = log;
      v272 = 2112;
      v273 = v4;
      _os_log_impl(&dword_25479E000, v5, OS_LOG_TYPE_INFO, "Intent contains one unique conversationIdentifier: %@ chatIdentifier: %@", buf, 0x16u);
    }

    v6 = [*(v1 + 40) messageHandlerDataSource];
    v7 = [v6 chatDataSource];
    v8 = [v7 existingChatWithChatIdentifier:v4];

    if (v8)
    {
      if ([(__CFString *)v8 isBusinessChat]&& [(__CFString *)v4 length])
      {
        v9 = IMLogHandleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Chat resolved via conversation identifier is a business chat. Not resolving speakableGroupName to the business name, because the business name will be included in the recipients. Returning notRequired for speakableGroupName.", buf, 2u);
        }

        v11 = _IMAssistantCoreSendMessageSignpostLogHandle(v10);
        v12 = v11;
        v13 = *(v1 + 64);
        if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25479E000, v12, OS_SIGNPOST_INTERVAL_END, v13, "resolveSpeakableGroupNameForSendMessage", &unk_2547CAD0B, buf, 2u);
        }

        v14 = *(v1 + 56);
        v15 = [MEMORY[0x277CD4198] notRequired];
        (*(v14 + 16))(v14, v15);
LABEL_226:

LABEL_237:
        goto LABEL_260;
      }

      v81 = v8;
      v82 = [(__CFString *)v81 isGroupChat];
      v83 = [(__CFString *)v81 isBusinessChat];
      v84 = [(__CFString *)v81 isStewieChat];
      v85 = [(__CFString *)v81 displayName];
      v86 = v85;
      if (((v82 & 1) != 0 || (v83 & 1) != 0 || v84) && [v85 length])
      {
        v87 = objc_alloc(MEMORY[0x277CD4188]);
        v88 = [(__CFString *)v81 chatIdentifier];
        v89 = [(__CFString *)v81 displayName];
        v15 = [v87 initWithVocabularyIdentifier:v88 spokenPhrase:v89 pronunciationHint:0];
      }

      else
      {
        v88 = IMLogHandleForCategory();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
        {
          v92 = @"NO";
          *buf = 138413058;
          v271 = v81;
          if (v82)
          {
            v93 = @"YES";
          }

          else
          {
            v93 = @"NO";
          }

          v272 = 2112;
          v273 = v93;
          if (v83)
          {
            v92 = @"YES";
          }

          v274 = 2112;
          v275 = v92;
          v276 = 2112;
          v277 = v86;
          _os_log_impl(&dword_25479E000, v88, OS_LOG_TYPE_INFO, "Could not find a name for chat, ignoring. chat: %@, isGroupChat: %@, isBusinessChat: %@, displayName: %@", buf, 0x2Au);
        }

        v15 = 0;
      }

      v90 = IMLogHandleForCategory();
      v94 = os_log_type_enabled(v90, OS_LOG_TYPE_INFO);
      if (v15)
      {
        if (v94)
        {
          *buf = 138412546;
          v271 = v4;
          v272 = 2112;
          v273 = v15;
          _os_log_impl(&dword_25479E000, v90, OS_LOG_TYPE_INFO, "Found a named chat matching chatIdentifier, %@ with name %@.", buf, 0x16u);
        }

        v95 = [*(v1 + 40) messageHandlerDataSource];
        v96 = [v95 screentimeAllowedToShowChat:v81 error:0];

        v97 = IMLogHandleForCategory();
        v98 = os_log_type_enabled(v97, OS_LOG_TYPE_INFO);
        if (v96)
        {
          if (v98)
          {
            *buf = 138412290;
            v271 = v15;
            _os_log_impl(&dword_25479E000, v97, OS_LOG_TYPE_INFO, "Returning success with name %@.", buf, 0xCu);
          }

          v100 = _IMAssistantCoreSendMessageSignpostLogHandle(v99);
          v101 = v100;
          v102 = *(v1 + 64);
          if (v102 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v100))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25479E000, v101, OS_SIGNPOST_INTERVAL_END, v102, "resolveSpeakableGroupNameForSendMessage", &unk_2547CAD0B, buf, 2u);
          }

          v103 = *(v1 + 56);
          v104 = [MEMORY[0x277CD4198] successWithResolvedString:v15];
        }

        else
        {
          if (v98)
          {
            *buf = 138412290;
            v271 = v15;
            _os_log_impl(&dword_25479E000, v97, OS_LOG_TYPE_INFO, "Returning unsupported because the chat group (%@) contains non-allowlisted participants and isn't allowed by downtime.", buf, 0xCu);
          }

          v200 = _IMAssistantCoreSendMessageSignpostLogHandle(v199);
          v201 = v200;
          v202 = *(v1 + 64);
          if (v202 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v200))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25479E000, v201, OS_SIGNPOST_INTERVAL_END, v202, "resolveSpeakableGroupNameForSendMessage", &unk_2547CAD0B, buf, 2u);
          }

          v103 = *(v1 + 56);
          v104 = [MEMORY[0x277CD4198] unsupported];
        }

        v203 = v104;
        (*(v103 + 16))(v103, v104);

        goto LABEL_226;
      }

      if (!v94)
      {
        goto LABEL_117;
      }

      *buf = 138412290;
      v271 = v4;
      v91 = "Could not find a name for the chat with the chatIdentifier %@, ignoring.";
    }

    else
    {
      v90 = IMLogHandleForCategory();
      if (!os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
      {
LABEL_117:

        goto LABEL_118;
      }

      *buf = 138412290;
      v271 = v4;
      v91 = "Could not find chat with the chatIdentifier %@, ignoring";
    }

    _os_log_impl(&dword_25479E000, v90, OS_LOG_TYPE_INFO, v91, buf, 0xCu);
    goto LABEL_117;
  }

  v16 = [v3 count];
  log = IMLogHandleForCategory();
  v17 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v16 >= 2)
  {
    if (v17)
    {
      v18 = [*(v1 + 32) count];
      v19 = *(v1 + 32);
      *buf = 134218242;
      v271 = v18;
      v272 = 2112;
      v273 = v19;
      _os_log_impl(&dword_25479E000, log, OS_LOG_TYPE_INFO, "Intent contains %ld unique conversationIdentifiers: %@", buf, 0x16u);
    }

    v20 = [*(v1 + 40) messageHandlerDataSource];
    log = [v20 chatDataSource];

    v21 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v236 = 0u;
    v237 = 0u;
    v238 = 0u;
    v239 = 0u;
    v222 = v1;
    v22 = *(v1 + 32);
    v23 = [v22 countByEnumeratingWithState:&v236 objects:v252 count:16];
    v229 = v21;
    if (v23)
    {
      v24 = v23;
      v25 = *v237;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v237 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v236 + 1) + 8 * i);
          v28 = IMAssistantChatIdentifierFromConversationIdentifier(v27);
          v29 = [log existingChatWithChatIdentifier:v28];
          if (v29)
          {
            [(__CFString *)v21 addObject:v29];
          }

          else
          {
            v30 = IMLogHandleForCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v271 = v27;
              _os_log_impl(&dword_25479E000, v30, OS_LOG_TYPE_INFO, "Could not find chat with chatIdentifier %@, ignoring", buf, 0xCu);
            }

            v21 = v229;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v236 objects:v252 count:16];
      }

      while (v24);
    }

    v31 = IMLogHandleForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [(__CFString *)v21 count];
      *buf = 134218242;
      v271 = v32;
      v272 = 2112;
      v273 = v21;
      _os_log_impl(&dword_25479E000, v31, OS_LOG_TYPE_INFO, "%ld chats match chatIdentifiers. Chats: %@", buf, 0x16u);
    }

    v33 = [(__CFString *)v21 array];
    v227 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v248 = 0u;
    v249 = 0u;
    v250 = 0u;
    v251 = 0u;
    obj = v33;
    v34 = [obj countByEnumeratingWithState:&v248 objects:buf count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v249;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v249 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v248 + 1) + 8 * j);
          v39 = [v38 isGroupChat];
          v40 = [v38 displayName];
          v41 = v40;
          if (v39 && [v40 length])
          {
            v42 = [v227 objectForKey:v41];
            v43 = v42;
            if (v42)
            {
              [v42 addObject:v38];
            }

            else
            {
              v45 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v38, 0}];
              [v227 setObject:v45 forKey:v41];
            }
          }

          else
          {
            v43 = IMLogHandleForCategory();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              *v259 = 138412802;
              v44 = @"NO";
              if (v39)
              {
                v44 = @"YES";
              }

              *&v259[4] = v38;
              *&v259[12] = 2112;
              *&v259[14] = v44;
              *&v259[22] = 2112;
              *&v259[24] = v41;
              _os_log_impl(&dword_25479E000, v43, OS_LOG_TYPE_INFO, "Could not construct disambiguation option for chat: %@, isGroupChat: %@, displayName: %@. Ignoring.", v259, 0x20u);
            }
          }
        }

        v35 = [obj countByEnumeratingWithState:&v248 objects:buf count:16];
      }

      while (v35);
    }

    v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v244 = 0u;
    v245 = 0u;
    v246 = 0u;
    v247 = 0u;
    v47 = [v227 allValues];
    v48 = [v47 countByEnumeratingWithState:&v244 objects:v259 count:16];
    v225 = v46;
    if (v48)
    {
      v49 = v48;
      v50 = *v245;
      do
      {
        for (k = 0; k != v49; ++k)
        {
          if (*v245 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = *(*(&v244 + 1) + 8 * k);
          v53 = [v52 sortedArrayUsingComparator:&unk_286693018];
          v54 = [v53 firstObject];
          [v46 addObject:v54];
          if ([v52 count] >= 2)
          {
            v55 = IMLogHandleForCategory();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              v56 = [v52 count];
              v57 = [v54 displayName];
              *v253 = 134218498;
              v254 = v56;
              v255 = 2112;
              v256 = v57;
              v257 = 2112;
              v258 = v54;
              _os_log_impl(&dword_25479E000, v55, OS_LOG_TYPE_INFO, "%ld chats have the name %@. Presenting disambiguation of chats with the same name is confusing, so using the most recent one, %@.", v253, 0x20u);

              v46 = v225;
            }
          }
        }

        v49 = [v47 countByEnumeratingWithState:&v244 objects:v259 count:16];
      }

      while (v49);
    }

    v58 = [v46 sortedArrayUsingComparator:&unk_286693018];
    v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v240 = 0u;
    v241 = 0u;
    v242 = 0u;
    v243 = 0u;
    v231 = v58;
    v60 = [v231 countByEnumeratingWithState:&v240 objects:v253 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v241;
      do
      {
        for (m = 0; m != v61; ++m)
        {
          if (*v241 != v62)
          {
            objc_enumerationMutation(v231);
          }

          v64 = *(*(&v240 + 1) + 8 * m);
          v65 = [v64 isGroupChat];
          v66 = [v64 isBusinessChat];
          v67 = [v64 isStewieChat];
          v68 = [v64 displayName];
          v69 = v68;
          if (((v65 & 1) != 0 || (v66 & 1) != 0 || v67) && [v68 length])
          {
            v70 = objc_alloc(MEMORY[0x277CD4188]);
            v71 = [v64 chatIdentifier];
            v72 = [v64 displayName];
            v73 = [v70 initWithVocabularyIdentifier:v71 spokenPhrase:v72 pronunciationHint:0];
          }

          else
          {
            v71 = IMLogHandleForCategory();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              *v262 = 138413058;
              v74 = @"NO";
              if (v65)
              {
                v75 = @"YES";
              }

              else
              {
                v75 = @"NO";
              }

              v263 = v64;
              if (v66)
              {
                v74 = @"YES";
              }

              v264 = 2112;
              v265 = v75;
              v266 = 2112;
              v267 = v74;
              v268 = 2112;
              v269 = v69;
              _os_log_impl(&dword_25479E000, v71, OS_LOG_TYPE_INFO, "Could not find a name for chat, ignoring. chat: %@, isGroupChat: %@, isBusinessChat: %@, displayName: %@", v262, 0x2Au);
            }

            v73 = 0;
          }

          if (v73)
          {
            [v59 addObject:v73];
          }
        }

        v61 = [v231 countByEnumeratingWithState:&v240 objects:v253 count:16];
      }

      while (v61);
    }

    v76 = [v59 copy];
    v8 = v76;
    if ([(__CFString *)v8 count]== 1)
    {
      v77 = [(__CFString *)v8 firstObject];
      v78 = IMLogHandleForCategory();
      v79 = v222;
      v4 = v229;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v271 = v77;
        _os_log_impl(&dword_25479E000, v78, OS_LOG_TYPE_INFO, "Only one disambiguation option remains, returning success with resolved name: %@", buf, 0xCu);
      }

      v80 = [MEMORY[0x277CD4198] successWithResolvedString:v77];
    }

    else
    {
      v105 = [(__CFString *)v8 count];
      v106 = IMLogHandleForCategory();
      v107 = os_log_type_enabled(v106, OS_LOG_TYPE_INFO);
      v79 = v222;
      v4 = v229;
      if (v105 < 2)
      {
        if (v107)
        {
          *buf = 0;
          _os_log_impl(&dword_25479E000, v106, OS_LOG_TYPE_INFO, "No disambiguation options remain. Returning unsupported (a.k.a. notFound)", buf, 2u);
        }

        v109 = [MEMORY[0x277CD4198] unsupported];
      }

      else
      {
        if (v107)
        {
          v108 = [(__CFString *)v8 count];
          *buf = 134218242;
          v271 = v108;
          v272 = 2112;
          v273 = v8;
          _os_log_impl(&dword_25479E000, v106, OS_LOG_TYPE_INFO, "Asking user to disambiguate among %ld disambiguation options: %@", buf, 0x16u);
        }

        v109 = [MEMORY[0x277CD4198] disambiguationWithStringsToDisambiguate:v8];
      }

      v80 = v109;
    }

    v204 = IMLogHandleForCategory();
    if (os_log_type_enabled(v204, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v271 = v80;
      _os_log_impl(&dword_25479E000, v204, OS_LOG_TYPE_INFO, "Returning speakableGroupName resolution result: %@", buf, 0xCu);
    }

    v206 = _IMAssistantCoreSendMessageSignpostLogHandle(v205);
    v207 = v206;
    v208 = *(v79 + 64);
    if (v208 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v206))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v207, OS_SIGNPOST_INTERVAL_END, v208, "resolveSpeakableGroupNameForSendMessage", &unk_2547CAD0B, buf, 2u);
    }

    (*(*(v79 + 56) + 16))();
    goto LABEL_237;
  }

  if (v17)
  {
    *buf = 0;
    _os_log_impl(&dword_25479E000, log, OS_LOG_TYPE_INFO, "Intent contains no chat guids.", buf, 2u);
  }

LABEL_118:

  log = [*(v1 + 48) spokenPhrase];
  v110 = [log length];
  v111 = IMLogHandleForCategory();
  v112 = os_log_type_enabled(v111, OS_LOG_TYPE_INFO);
  if (v110)
  {
    if (v112)
    {
      *buf = 138412290;
      v271 = log;
      _os_log_impl(&dword_25479E000, v111, OS_LOG_TYPE_INFO, "Attempting to resolve via speakableGroupName.spokenPhrase = %@", buf, 0xCu);
    }

    v113 = [*(v1 + 40) messageHandlerDataSource];
    v114 = [v113 chatDataSource];
    log = log;
    if ([log length])
    {
      v223 = v1;
      v115 = objc_alloc_init(MEMORY[0x277CBEB40]);
      memset(v259, 0, sizeof(v259));
      v260 = 0u;
      v261 = 0u;
      v116 = [v114 allExistingChats];
      v117 = [v116 countByEnumeratingWithState:v259 objects:buf count:16];
      if (v117)
      {
        v118 = v117;
        v119 = **&v259[16];
        do
        {
          for (n = 0; n != v118; ++n)
          {
            if (**&v259[16] != v119)
            {
              objc_enumerationMutation(v116);
            }

            v121 = *(*&v259[8] + 8 * n);
            v122 = [v121 displayName];
            v123 = [v122 isEqualToString:log];

            if (v123)
            {
              [v115 addObject:v121];
            }
          }

          v118 = [v116 countByEnumeratingWithState:v259 objects:buf count:16];
        }

        while (v118);
      }

      v4 = [v115 array];

      v1 = v223;
    }

    else
    {
      v4 = MEMORY[0x277CBEBF8];
    }

    if ([(__CFString *)v4 count]!= 1)
    {
      v139 = [(__CFString *)v4 count];
      v140 = IMLogHandleForCategory();
      v141 = os_log_type_enabled(v140, OS_LOG_TYPE_INFO);
      if (v139 < 2)
      {
        if (v141)
        {
          *buf = 0;
          _os_log_impl(&dword_25479E000, v140, OS_LOG_TYPE_INFO, "Could not find any chats matching requested spokenPhrase. Returning unsupported (a.k.a. notFound)", buf, 2u);
        }

        v190 = [MEMORY[0x277CD4198] unsupported];
      }

      else
      {
        v224 = v1;
        if (v141)
        {
          v142 = [(__CFString *)v4 count];
          *buf = 134218242;
          v271 = v142;
          v272 = 2112;
          v273 = v4;
          _os_log_impl(&dword_25479E000, v140, OS_LOG_TYPE_INFO, "Found %ld chats matching requested spoken phrase. Producing disambiguation options. matchingChats: %@", buf, 0x16u);
        }

        v230 = v4;
        v143 = v4;
        v228 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v248 = 0u;
        v249 = 0u;
        v250 = 0u;
        v251 = 0u;
        obja = v143;
        v144 = [(__CFString *)obja countByEnumeratingWithState:&v248 objects:buf count:16];
        if (v144)
        {
          v145 = v144;
          v146 = *v249;
          do
          {
            for (ii = 0; ii != v145; ++ii)
            {
              if (*v249 != v146)
              {
                objc_enumerationMutation(obja);
              }

              v148 = *(*(&v248 + 1) + 8 * ii);
              v149 = [v148 isGroupChat];
              v150 = [v148 displayName];
              v151 = v150;
              if (v149 && [v150 length])
              {
                v152 = [v228 objectForKey:v151];
                v153 = v152;
                if (v152)
                {
                  [v152 addObject:v148];
                }

                else
                {
                  v155 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v148, 0}];
                  [v228 setObject:v155 forKey:v151];
                }
              }

              else
              {
                v153 = IMLogHandleForCategory();
                if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
                {
                  *v259 = 138412802;
                  v154 = @"NO";
                  if (v149)
                  {
                    v154 = @"YES";
                  }

                  *&v259[4] = v148;
                  *&v259[12] = 2112;
                  *&v259[14] = v154;
                  *&v259[22] = 2112;
                  *&v259[24] = v151;
                  _os_log_impl(&dword_25479E000, v153, OS_LOG_TYPE_INFO, "Could not construct disambiguation option for chat: %@, isGroupChat: %@, displayName: %@. Ignoring.", v259, 0x20u);
                }
              }
            }

            v145 = [(__CFString *)obja countByEnumeratingWithState:&v248 objects:buf count:16];
          }

          while (v145);
        }

        v156 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v244 = 0u;
        v245 = 0u;
        v246 = 0u;
        v247 = 0u;
        v157 = [v228 allValues];
        v158 = [v157 countByEnumeratingWithState:&v244 objects:v259 count:16];
        v226 = v156;
        if (v158)
        {
          v159 = v158;
          v160 = *v245;
          do
          {
            for (jj = 0; jj != v159; ++jj)
            {
              if (*v245 != v160)
              {
                objc_enumerationMutation(v157);
              }

              v162 = *(*(&v244 + 1) + 8 * jj);
              v163 = [v162 sortedArrayUsingComparator:&unk_286693018];
              v164 = [v163 firstObject];
              [v156 addObject:v164];
              if ([v162 count] >= 2)
              {
                v165 = IMLogHandleForCategory();
                if (os_log_type_enabled(v165, OS_LOG_TYPE_INFO))
                {
                  v166 = [v162 count];
                  v167 = [v164 displayName];
                  *v253 = 134218498;
                  v254 = v166;
                  v255 = 2112;
                  v256 = v167;
                  v257 = 2112;
                  v258 = v164;
                  _os_log_impl(&dword_25479E000, v165, OS_LOG_TYPE_INFO, "%ld chats have the name %@. Presenting disambiguation of chats with the same name is confusing, so using the most recent one, %@.", v253, 0x20u);

                  v156 = v226;
                }
              }
            }

            v159 = [v157 countByEnumeratingWithState:&v244 objects:v259 count:16];
          }

          while (v159);
        }

        v168 = [v156 sortedArrayUsingComparator:&unk_286693018];
        v169 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v240 = 0u;
        v241 = 0u;
        v242 = 0u;
        v243 = 0u;
        v232 = v168;
        v170 = [v232 countByEnumeratingWithState:&v240 objects:v253 count:16];
        if (v170)
        {
          v171 = v170;
          v172 = *v241;
          do
          {
            for (kk = 0; kk != v171; ++kk)
            {
              if (*v241 != v172)
              {
                objc_enumerationMutation(v232);
              }

              v174 = *(*(&v240 + 1) + 8 * kk);
              v175 = [v174 isGroupChat];
              v176 = [v174 isBusinessChat];
              v177 = [v174 isStewieChat];
              v178 = [v174 displayName];
              v179 = v178;
              if (((v175 & 1) != 0 || (v176 & 1) != 0 || v177) && [v178 length])
              {
                v180 = objc_alloc(MEMORY[0x277CD4188]);
                v181 = [v174 chatIdentifier];
                v182 = [v174 displayName];
                v183 = [v180 initWithVocabularyIdentifier:v181 spokenPhrase:v182 pronunciationHint:0];
              }

              else
              {
                v181 = IMLogHandleForCategory();
                if (os_log_type_enabled(v181, OS_LOG_TYPE_INFO))
                {
                  *v262 = 138413058;
                  v184 = @"NO";
                  if (v175)
                  {
                    v185 = @"YES";
                  }

                  else
                  {
                    v185 = @"NO";
                  }

                  v263 = v174;
                  if (v176)
                  {
                    v184 = @"YES";
                  }

                  v264 = 2112;
                  v265 = v185;
                  v266 = 2112;
                  v267 = v184;
                  v268 = 2112;
                  v269 = v179;
                  _os_log_impl(&dword_25479E000, v181, OS_LOG_TYPE_INFO, "Could not find a name for chat, ignoring. chat: %@, isGroupChat: %@, isBusinessChat: %@, displayName: %@", v262, 0x2Au);
                }

                v183 = 0;
              }

              if (v183)
              {
                [v169 addObject:v183];
              }
            }

            v171 = [v232 countByEnumeratingWithState:&v240 objects:v253 count:16];
          }

          while (v171);
        }

        v186 = [v169 copy];
        v187 = v186;
        if ([(__CFString *)v187 count]== 1)
        {
          v188 = [(__CFString *)v187 firstObject];
          v189 = IMLogHandleForCategory();
          v1 = v224;
          v4 = v230;
          if (os_log_type_enabled(v189, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v271 = v188;
            _os_log_impl(&dword_25479E000, v189, OS_LOG_TYPE_INFO, "Only one disambiguation option remains, returning success with resolved name: %@", buf, 0xCu);
          }

          v190 = [MEMORY[0x277CD4198] successWithResolvedString:v188];
        }

        else
        {
          v212 = [(__CFString *)v187 count];
          v213 = IMLogHandleForCategory();
          v214 = os_log_type_enabled(v213, OS_LOG_TYPE_INFO);
          v1 = v224;
          v4 = v230;
          if (v212 < 2)
          {
            if (v214)
            {
              *buf = 0;
              _os_log_impl(&dword_25479E000, v213, OS_LOG_TYPE_INFO, "No disambiguation options remain. Returning unsupported (a.k.a. notFound)", buf, 2u);
            }

            v216 = [MEMORY[0x277CD4198] unsupported];
          }

          else
          {
            if (v214)
            {
              v215 = [(__CFString *)v187 count];
              *buf = 134218242;
              v271 = v215;
              v272 = 2112;
              v273 = v187;
              _os_log_impl(&dword_25479E000, v213, OS_LOG_TYPE_INFO, "Asking user to disambiguate among %ld disambiguation options: %@", buf, 0x16u);
            }

            v216 = [MEMORY[0x277CD4198] disambiguationWithStringsToDisambiguate:v187];
          }

          v190 = v216;
        }
      }

      goto LABEL_254;
    }

    v129 = [(__CFString *)v4 firstObject];
    v130 = [(__CFString *)v129 isGroupChat];
    v131 = [(__CFString *)v129 isBusinessChat];
    v132 = [(__CFString *)v129 isStewieChat];
    v133 = [(__CFString *)v129 displayName];
    v134 = v133;
    if (((v130 & 1) != 0 || (v131 & 1) != 0 || v132) && [v133 length])
    {
      v135 = objc_alloc(MEMORY[0x277CD4188]);
      v136 = [(__CFString *)v129 chatIdentifier];
      v137 = [(__CFString *)v129 displayName];
      v138 = [v135 initWithVocabularyIdentifier:v136 spokenPhrase:v137 pronunciationHint:0];
    }

    else
    {
      v136 = IMLogHandleForCategory();
      if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
      {
        v191 = @"NO";
        *buf = 138413058;
        v271 = v129;
        if (v130)
        {
          v192 = @"YES";
        }

        else
        {
          v192 = @"NO";
        }

        v272 = 2112;
        v273 = v192;
        if (v131)
        {
          v191 = @"YES";
        }

        v274 = 2112;
        v275 = v191;
        v276 = 2112;
        v277 = v134;
        _os_log_impl(&dword_25479E000, v136, OS_LOG_TYPE_INFO, "Could not find a name for chat, ignoring. chat: %@, isGroupChat: %@, isBusinessChat: %@, displayName: %@", buf, 0x2Au);
      }

      v138 = 0;
    }

    v193 = IMLogHandleForCategory();
    v194 = os_log_type_enabled(v193, OS_LOG_TYPE_INFO);
    if (v138)
    {
      if (v194)
      {
        *buf = 138412546;
        v271 = v138;
        v272 = 2112;
        v273 = v129;
        _os_log_impl(&dword_25479E000, v193, OS_LOG_TYPE_INFO, "Found chat name %@ matching chat: %@", buf, 0x16u);
      }

      v195 = [*(v1 + 40) messageHandlerDataSource];
      v196 = [v195 screentimeAllowedToShowChat:v129 error:0];

      v193 = IMLogHandleForCategory();
      v197 = os_log_type_enabled(v193, OS_LOG_TYPE_INFO);
      if (v196)
      {
        if (v197)
        {
          *buf = 138412546;
          v271 = v138;
          v272 = 2112;
          v273 = v129;
          _os_log_impl(&dword_25479E000, v193, OS_LOG_TYPE_INFO, "Using chat name %@ resolved from matching chat: %@", buf, 0x16u);
        }

        v198 = [MEMORY[0x277CD4198] successWithResolvedString:v138];
        goto LABEL_244;
      }

      if (v197)
      {
        *buf = 0;
        v209 = "Returning unsupported because the chat group contains non-allowlisted participants and isn't allowed by downtime.";
        v210 = v193;
        v211 = 2;
        goto LABEL_242;
      }
    }

    else if (v194)
    {
      *buf = 138412290;
      v271 = v129;
      v209 = "Could not determine chat name from only matching chat. Returning unsupported/notFound. Matching chat: %@";
      v210 = v193;
      v211 = 12;
LABEL_242:
      _os_log_impl(&dword_25479E000, v210, OS_LOG_TYPE_INFO, v209, buf, v211);
    }

    v198 = [MEMORY[0x277CD4198] unsupported];
LABEL_244:
    v190 = v198;

LABEL_254:
    v217 = IMLogHandleForCategory();
    if (os_log_type_enabled(v217, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v271 = v190;
      _os_log_impl(&dword_25479E000, v217, OS_LOG_TYPE_INFO, "Resolved group name result: %@", buf, 0xCu);
    }

    v219 = _IMAssistantCoreSendMessageSignpostLogHandle(v218);
    v220 = v219;
    v221 = *(v1 + 64);
    if (v221 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v219))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v220, OS_SIGNPOST_INTERVAL_END, v221, "resolveSpeakableGroupNameForSendMessage", &unk_2547CAD0B, buf, 2u);
    }

    (*(*(v1 + 56) + 16))();
    goto LABEL_260;
  }

  if (v112)
  {
    *buf = 0;
    _os_log_impl(&dword_25479E000, v111, OS_LOG_TYPE_INFO, "Intent does not contain a spoken group name. Returning notRequired for resolveSpeakableGroupName.", buf, 2u);
  }

  v125 = _IMAssistantCoreSendMessageSignpostLogHandle(v124);
  v126 = v125;
  v127 = *(v1 + 64);
  if (v127 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v125))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v126, OS_SIGNPOST_INTERVAL_END, v127, "resolveSpeakableGroupNameForSendMessage", &unk_2547CAD0B, buf, 2u);
  }

  v128 = *(v1 + 56);
  v4 = [MEMORY[0x277CD4198] notRequired];
  (*(v128 + 16))(v128, v4);
LABEL_260:
}

uint64_t sub_2547A5EA8(uint64_t result, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = result;
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_25479E000, v3, OS_LOG_TYPE_INFO, "refreshServiceForSending completed", &v12, 2u);
    }

    v4 = [*(v2 + 32) canSendMessage:*(v2 + 40)];
    v5 = IMLogHandleForCategory();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (v6)
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_25479E000, v5, OS_LOG_TYPE_INFO, "canSendMessage check succeeded", &v12, 2u);
      }

      v7 = [*(v2 + 48) messageSendHandlerDelegate];
      [v7 sendMessage:*(v2 + 40) toChat:*(v2 + 32)];

      v5 = IMLogHandleForCategory();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      LOWORD(v12) = 0;
      v8 = "message send completed";
      v9 = v5;
      v10 = 2;
    }

    else
    {
      if (!v6)
      {
LABEL_12:

        return (*(*(v2 + 56) + 16))();
      }

      v11 = *(v2 + 32);
      v12 = 138412290;
      v13 = v11;
      v8 = "canSendMessage check failed for chat: %@";
      v9 = v5;
      v10 = 12;
    }

    _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, v8, &v12, v10);
    goto LABEL_12;
  }

  return result;
}

void sub_2547A64E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2547A6510(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = IMLogHandleForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v8 = [v5 localizedDescription];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_25479E000, v6, OS_LOG_TYPE_INFO, "Image sensitivity analysis error: '%@'", &v9, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v9 = 67109120;
      LODWORD(v10) = a2;
      _os_log_impl(&dword_25479E000, v6, OS_LOG_TYPE_INFO, "Image sensisitivty %d.", &v9, 8u);
    }

    [*(a1 + 32) lock];
    *(*(*(a1 + 48) + 8) + 24) |= a2;
    [*(a1 + 32) unlock];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_2547A6974(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) messageHandlerDataSource];
  v5 = [v4 fileManagerDataSource];
  v6 = v3;
  if (([v6 isFileURL]& 1) != 0)
  {
    v7 = [v6 lastPathComponent];
    v8 = [v5 im_randomTemporaryFileURLWithFileName:v7];

    v58 = 0;
    v9 = [v5 im_copySecurityScopedResourceAtURL:v6 toDestination:v8 error:&v58];
    v10 = v58;
    if (v9)
    {
      v11 = v8;
    }

    else
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v61 = v6;
        v62 = 2112;
        v63 = v10;
        _os_log_impl(&dword_25479E000, v12, OS_LOG_TYPE_INFO, "Failed to copy the file from %@ into the MessagesAssistantExtension Sandbox. Error: %@", buf, 0x16u);
      }

      v11 = 0;
    }
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v61 = v6;
      _os_log_impl(&dword_25479E000, v10, OS_LOG_TYPE_INFO, "Error, url is not a fileURL: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v61 = v11;
    _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "sendLocalFileAttachmentURLs start sending file %@", buf, 0xCu);
  }

  v14 = [*(a1 + 32) messageHandlerDataSource];
  v15 = [v14 fileManagerDataSource];
  v16 = [*(a1 + 32) messageHandlerDataSource];
  v17 = [v16 fileTransferCenterDataSource];
  v18 = v11;
  v19 = IMLogHandleForCategory();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
  v44 = v6;
  if (v18)
  {
    v43 = v15;
    if (v20)
    {
      *buf = 138412290;
      v61 = v18;
      _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, "Building a file transfer message based on a file at %@", buf, 0xCu);
    }

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = [v17 createNewOutgoingTransferWithLocalFileURL:v18];
    [v17 registerTransferWithDaemon:v21];
    [v19 addObject:v21];
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v61 = v19;
      _os_log_impl(&dword_25479E000, v22, OS_LOG_TYPE_INFO, "The message's file transfer guids are: %@", buf, 0xCu);
    }

    v23 = [MEMORY[0x277CCA898] __im_attributedStringWithFileTransfers:v19];
    v24 = [v23 __im_attributedStringByAssigningMessagePartNumbers];
    v25 = [MEMORY[0x277D18DA0] instantMessageWithText:v24 messageSubject:0 fileTransferGUIDs:v19 flags:5 threadIdentifier:0];

    v15 = v43;
  }

  else
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, "Provided localFileAttachmentURL is nil", buf, 2u);
    }

    v25 = 0;
  }

  v26 = [*(a1 + 32) messageHandlerDataSource];
  v27 = [v26 commSafetyDataSource];
  v28 = [v27 checksForSensitivityOnSend];

  v29 = *(a1 + 32);
  if (v28)
  {
    v59 = v18;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_2547A6FAC;
    v48[3] = &unk_279786470;
    v49 = v18;
    v31 = *(a1 + 40);
    v32 = *(a1 + 48);
    v33 = *(a1 + 32);
    v50 = v32;
    v51 = v33;
    v52 = v25;
    v53 = *(a1 + 56);
    v34 = *(a1 + 64);
    v35 = *(a1 + 88);
    v54 = v34;
    v57 = v35;
    v55 = *(a1 + 72);
    v56 = *(a1 + 40);
    v36 = v18;
    [v29 isSensitiveFileAttachmentURLs:v30 chat:v31 completion:v48];
  }

  else
  {
    v37 = *(a1 + 56);
    v38 = *(a1 + 64);
    v39 = *(a1 + 88);
    v40 = *(a1 + 72);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_2547A71E8;
    v45[3] = &unk_279786448;
    v46 = v18;
    v41 = *(a1 + 40);
    v47 = *(a1 + 48);
    v42 = v18;
    [v29 sendMessageWithDraft:v25 expressiveSendStyleID:v37 idsIdentifier:v38 executionContext:v39 sourceApplicationID:v40 toChat:v41 completion:v45];

    v30 = [IMAssistantINMessageConverter INMessageForOutgoingIMMessage:v25 toChat:*(a1 + 40) messageType:24 personProvider:*(a1 + 32)];
    [*(a1 + 80) addObject:v30];
  }
}

void sub_2547A6FAC(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_25479E000, v3, OS_LOG_TYPE_INFO, "Error: Sensitivity content. sendLocalFileAttachmentURLs not sending file %@", buf, 0xCu);
    }

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v10 = *(a1 + 88);
    v9 = *(a1 + 96);
    v11 = *(a1 + 80);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2547A712C;
    v12[3] = &unk_279786448;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    [v5 sendMessageWithDraft:v6 expressiveSendStyleID:v7 idsIdentifier:v8 executionContext:v9 sourceApplicationID:v11 toChat:v10 completion:v12];
  }
}

void sub_2547A712C(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_25479E000, v3, OS_LOG_TYPE_INFO, "sendLocalFileAttachmentURLs error sending file %@ after sensitvity check", &v5, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_2547A71E8(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_25479E000, v3, OS_LOG_TYPE_INFO, "sendLocalFileAttachmentURLs error sending file %@", &v5, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_2547A72A4(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_25479E000, v2, OS_LOG_TYPE_INFO, "sendLocalFileAttachmentURLs INSendMessageIntentResponseCodeSuccess for %lu files", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_2547A7660(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [IMAssistantINMessageConverter INMessageForOutgoingIMMessage:a2 toChat:*(a1 + 32) messageType:13 personProvider:*(a1 + 40)];
    [*(a1 + 48) addObject:v4];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 56) + 16);

    v3();
  }
}

void sub_2547A82A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2547A8304(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2547A848C;
    v13[3] = &unk_279786510;
    v9 = *(a1 + 88);
    v18 = *(a1 + 80);
    v14 = v3;
    v10 = *(a1 + 64);
    v11 = *(a1 + 32);
    v15 = v10;
    v16 = v11;
    v17 = *(a1 + 72);
    [v4 sendMessageWithDraft:v14 expressiveSendStyleID:v5 idsIdentifier:v6 executionContext:v9 sourceApplicationID:v7 toChat:v8 completion:v13];
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v12, OS_LOG_TYPE_INFO, "Unable to build a PHAsset message as requested. Returning failure.", buf, 2u);
    }

    (*(*(a1 + 80) + 16))();
  }
}

void sub_2547A848C(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = [IMAssistantINMessageConverter INMessageForOutgoingIMMessage:*(a1 + 32) toChat:*(a1 + 40) messageType:15 personProvider:*(a1 + 48)];
    [*(a1 + 56) addObject:v4];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v3, OS_LOG_TYPE_INFO, "Unable to send a PHAsset message as requested. Returning failure.", buf, 2u);
    }

    (*(*(a1 + 64) + 16))();
  }
}

void sub_2547A906C(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CD4080]) initWithCode:a2 userActivity:0];
  v7 = v6;
  if (a2 == 3)
  {
    [v6 setSentMessages:v5];
  }

  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Returning %@ response.", &v13, 0xCu);
  }

  v10 = _IMAssistantCoreSendMessageSignpostLogHandle(v9);
  v11 = v10;
  v12 = *(a1 + 40);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v11, OS_SIGNPOST_INTERVAL_END, v12, "sendMessageWithText", &unk_2547CAD0B, &v13, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_2547A91E0(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1[4];
    v4 = [IMAssistantINMessageConverter INMessageForOutgoingIMMessage:a1[5] toChat:a1[6] messageType:2 personProvider:a1[7]];
    [v3 addObject:v4];
  }

  v5 = *(a1[8] + 16);

  return v5();
}

void sub_2547A9278(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v2, OS_LOG_TYPE_INFO, "Attempting to send a link", buf, 2u);
    }

    v3 = [*(a1 + 40) makeIMMessageFromSharedLinkURL:*(a1 + 32)];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2547A94CC;
    v16[3] = &unk_279786510;
    v9 = *(a1 + 112);
    v21 = *(a1 + 104);
    v17 = *(a1 + 80);
    v18 = v3;
    v10 = *(a1 + 72);
    v11 = *(a1 + 40);
    v19 = v10;
    v20 = v11;
    v12 = v3;
    [v4 sendMessageWithDraft:v12 expressiveSendStyleID:v5 idsIdentifier:v6 executionContext:v9 sourceApplicationID:v7 toChat:v8 completion:v16];
  }

  else if (*(a1 + 120) == 1)
  {
    v13 = *(a1 + 40);

    MEMORY[0x2821F9670](v13, sel_sendLocationMessageToChat_sourceApplicationID_sentMessages_completion_);
  }

  else if ([*(a1 + 88) count])
  {
    [*(a1 + 40) sendFileAttachmentURLs:*(a1 + 88) chat:*(a1 + 72) executionContext:*(a1 + 112) expressiveSendStyleID:*(a1 + 48) idsIdentifier:*(a1 + 56) sourceApplicationID:*(a1 + 64) sentMessages:*(a1 + 80) completion:*(a1 + 104)];
  }

  else
  {
    v14 = *(a1 + 96);
    if (v14)
    {
      [*(a1 + 40) sendPhotoAssetMessageToChat:*(a1 + 72) executionContext:*(a1 + 112) expressiveSendStyleID:*(a1 + 48) idsIdentifier:*(a1 + 56) phAsset:v14 sentMessages:*(a1 + 80) sourceApplicationID:*(a1 + 64) completion:*(a1 + 104)];
    }

    else
    {
      v15 = *(*(a1 + 104) + 16);

      v15();
    }
  }
}

uint64_t sub_2547A94CC(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1[4];
    v4 = [IMAssistantINMessageConverter INMessageForOutgoingIMMessage:a1[5] toChat:a1[6] messageType:25 personProvider:a1[7]];
    [v3 addObject:v4];
  }

  v5 = *(a1[8] + 16);

  return v5();
}

uint64_t sub_2547A9564(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1[4];
    v4 = [IMAssistantINMessageConverter INMessageForOutgoingIMMessage:a1[5] toChat:a1[6] messageType:1 personProvider:a1[7]];
    [v3 addObject:v4];

    v5 = *(a1[9] + 16);

    return v5();
  }

  else
  {
    v7 = *(a1[8] + 16);

    return v7();
  }
}

void sub_2547A9B74(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndex:a3];
  [v6 addObject:v5];
}

void sub_2547AAC64(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) resolveRecipientsWithGroupNameOrConversationIdentifier:*(a1 + 40) forIntent:*(a1 + 48)];
  if (!v2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v3, OS_LOG_TYPE_INFO, "Neither a group name nor a conversation identifier were provided, attempting to resolve by recipients.", buf, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v31 = a1;
    v5 = *(a1 + 40);
    v6 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (!v6)
    {
LABEL_44:

      (*(*(v31 + 56) + 16))();
      v2 = 0;
      goto LABEL_45;
    }

    v7 = v6;
    v8 = *v34;
    v32 = v5;
LABEL_7:
    v9 = 0;
    while (1)
    {
      if (*v34 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v33 + 1) + 8 * v9);
      v11 = [v10 contactIdentifier];
      if ([v11 length])
      {
        v12 = objc_msgSend_personHandle(v10);
        v13 = [v12 value];

        if (v13)
        {
          v14 = IMLogHandleForCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v38 = v10;
            _os_log_impl(&dword_25479E000, v14, OS_LOG_TYPE_INFO, "This recipient is already fully resolved: %@", buf, 0xCu);
          }

          v15 = [MEMORY[0x277CD4088] successWithResolvedPerson:v10];
          [v4 addObject:v15];
          goto LABEL_38;
        }
      }

      else
      {
      }

      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = v10;
        _os_log_impl(&dword_25479E000, v16, OS_LOG_TYPE_INFO, "Resolving %@", buf, 0xCu);
      }

      v17 = [v10 scoredAlternatives];
      v15 = [v17 firstObject];

      if (!v15)
      {
        v22 = IMLogHandleForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v38 = v10;
          _os_log_impl(&dword_25479E000, v22, OS_LOG_TYPE_INFO, "CRR offered no suggestions for %@", buf, 0xCu);
        }

        v18 = [MEMORY[0x277CD4088] unsupported];
        [v4 addObject:v18];
        goto LABEL_37;
      }

      v18 = [v15 person];
      if (!v18)
      {
        break;
      }

      v19 = [v15 recommendation];
      switch(v19)
      {
        case 2:
          v26 = IMLogHandleForCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = [v10 siriMatches];
            *buf = 138412290;
            v38 = v27;
            _os_log_impl(&dword_25479E000, v26, OS_LOG_TYPE_INFO, "CRR resolved to needs disambiguation: %@", buf, 0xCu);

            v5 = v32;
          }

          v28 = MEMORY[0x277CD4088];
          v25 = [v10 siriMatches];
          v29 = [v28 disambiguationWithPeopleToDisambiguate:v25];
          [v4 addObject:v29];

          goto LABEL_36;
        case 1:
          v24 = IMLogHandleForCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v38 = v18;
            _os_log_impl(&dword_25479E000, v24, OS_LOG_TYPE_INFO, "CRR resolved to needs confirmation: %@", buf, 0xCu);
          }

          v21 = [MEMORY[0x277CD4088] confirmationRequiredWithPersonToConfirm:v18];
          goto LABEL_35;
        case 0:
          v20 = IMLogHandleForCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v38 = v18;
            _os_log_impl(&dword_25479E000, v20, OS_LOG_TYPE_INFO, "CRR resolved to a confident match: %@", buf, 0xCu);
          }

          v21 = [MEMORY[0x277CD4088] successWithResolvedPerson:v18];
          goto LABEL_35;
      }

LABEL_37:

LABEL_38:
      if (v7 == ++v9)
      {
        v30 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
        v7 = v30;
        if (!v30)
        {
          goto LABEL_44;
        }

        goto LABEL_7;
      }
    }

    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = v15;
      _os_log_impl(&dword_25479E000, v23, OS_LOG_TYPE_INFO, "Error extracting a scoredPerson from %@", buf, 0xCu);
    }

    v21 = [MEMORY[0x277CD4088] unsupported];
LABEL_35:
    v25 = v21;
    [v4 addObject:v21];
LABEL_36:

    goto LABEL_37;
  }

  (*(*(a1 + 56) + 16))();
LABEL_45:
}

void sub_2547AB3A0(uint64_t a1)
{
  v1 = a1;
  v185[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) resolveRecipientsWithGroupNameOrConversationIdentifier:*(v1 + 40) forIntent:*(v1 + 48)];
  if (v2)
  {
    (*(*(v1 + 56) + 16))();
    goto LABEL_145;
  }

  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25479E000, v3, OS_LOG_TYPE_INFO, "Neither a group name nor a conversation identifier were provided, attempting to resolve by recipients.", buf, 2u);
  }

  v4 = [*(v1 + 40) __imArrayByApplyingBlock:&unk_286692FD8];
  if (([MEMORY[0x277CD3EA0] __imcore__containsNonSuccess:v4] & 1) == 0)
  {
    v51 = IMLogHandleForCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v51, OS_LOG_TYPE_INFO, "All recipients already have a resolved handle, validating screentime status.", buf, 2u);
    }

    v52 = *(v1 + 32);
    v172 = 0;
    v53 = v4;
    v54 = [v52 recipientHandleResolutionResultsAllowedByScreentime:v4 error:&v172];
    v55 = v172;
    v56 = IMLogHandleForCategory();
    v57 = os_log_type_enabled(v56, OS_LOG_TYPE_INFO);
    if (v54)
    {
      if (v57)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v56, OS_LOG_TYPE_INFO, "Returning success with pre-resolved handles.", buf, 2u);
      }

      v58 = v53;
      (*(*(v1 + 56) + 16))();
    }

    else
    {
      if (v57)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v56, OS_LOG_TYPE_INFO, "Returning unsupported because the preresolved handles contain a non-screentime allowlisted recipient.", buf, 2u);
      }

      if (v55)
      {
        v65 = v55;
        v66 = [v55 code];
      }

      else
      {
        v65 = 0;
        v66 = *MEMORY[0x277CD4588];
      }

      v81 = *(v1 + 56);
      v82 = [MEMORY[0x277CD4088] unsupportedForReason:v66];
      v185[0] = v82;
      v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v185 count:1];
      (*(v81 + 16))(v81, v83);

      v58 = v53;
      v55 = v65;
    }

    goto LABEL_144;
  }

  v129 = v4;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(v1 + 40), "count")}];
  v137 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v6 = *(v1 + 40);
  v136 = [v6 countByEnumeratingWithState:&v168 objects:v184 count:16];
  if (!v136)
  {
    v130 = 1;
    v7 = v5;
    goto LABEL_80;
  }

  v130 = 1;
  v135 = *v169;
  v131 = v6;
  v132 = v1;
  v7 = v5;
  v133 = v5;
  while (2)
  {
    for (i = 0; i != v136; ++i)
    {
      if (*v169 != v135)
      {
        objc_enumerationMutation(v6);
      }

      v9 = *(*(&v168 + 1) + 8 * i);
      v10 = objc_msgSend_personHandle(v9);
      v11 = [v10 __im_assistant_handleType];

      v12 = [*(v1 + 32) contactsMatchingINPerson:v9];
      if (!([v12 count]| v11))
      {
        v59 = v7;
        v60 = IMLogHandleForCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v178 = v9;
          _os_log_impl(&dword_25479E000, v60, OS_LOG_TYPE_INFO, "Recipient contains neither siriMatches nor a personHandle.value, returning unsupported/notFound for recipient: %@", buf, 0xCu);
        }

        v61 = *(v1 + 56);
        v62 = *(v1 + 32);
        v63 = [MEMORY[0x277CD4088] unsupported];
        v64 = [v62 recipientsResolutionFailureResultWithResult:v63 forRecipient:v9 amongRecipients:*(v1 + 40)];
        (*(v61 + 16))(v61, v64);

        v2 = 0;
        v58 = v129;
        v55 = v59;
        goto LABEL_143;
      }

      [v7 setObject:v12 forKeyedSubscript:v9];
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if ((v11 - 1) < 2)
      {
        v138 = i;
        v28 = IMLogHandleForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v178 = v9;
          _os_log_impl(&dword_25479E000, v28, OS_LOG_TYPE_INFO, "Recipient contains both an explicit personHandle.value and contact identifiers, attempting to extract mathcing handle from contacts. Recipient: %@", buf, 0xCu);
        }

        v29 = v9;
        v30 = objc_msgSend_personHandle(v9);
        v142 = [v30 value];

        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v140 = v12;
        v31 = v12;
        v32 = [v31 countByEnumeratingWithState:&v160 objects:v176 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v161;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v161 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v160 + 1) + 8 * j);
              v37 = [v36 __im_assistant_handlesMatchingHandleID:v142];
              v38 = IMLogHandleForCategory();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                v39 = [v37 count];
                *buf = 134218498;
                v178 = v39;
                v179 = 2112;
                v180 = v36;
                v181 = 2112;
                v182 = v29;
                _os_log_impl(&dword_25479E000, v38, OS_LOG_TYPE_INFO, "Found %ld matching handles on contact %@ for recipient: %@", buf, 0x20u);
              }

              [v13 addObjectsFromArray:v37];
            }

            v33 = [v31 countByEnumeratingWithState:&v160 objects:v176 count:16];
          }

          while (v33);
        }

        v6 = v131;
        v1 = v132;
        v12 = v140;
        v7 = v133;
        if ([v13 count])
        {
          goto LABEL_54;
        }

        v40 = IMLogHandleForCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v178 = v142;
          _os_log_impl(&dword_25479E000, v40, OS_LOG_TYPE_INFO, "Handle %@ was not found on any of the contacts, using handle without a contact", buf, 0xCu);
        }

        if (v11 == 2)
        {
          v41 = [objc_alloc(MEMORY[0x277CBDB20]) initWithLabel:0 value:v142];
          v42 = [[IMAssistantHandleFromContact alloc] initWithCNLabeledEmailAddress:v41 contact:0];
          if (v42)
          {
            [v13 addObject:v42];
          }
        }

        else
        {
          if (v11 != 1)
          {
LABEL_54:
            v16 = IMLogHandleForCategory();
            if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_INFO))
            {
              v48 = [v13 count];
              *buf = 134218242;
              v178 = v48;
              v179 = 2112;
              v180 = v13;
              _os_log_impl(&dword_25479E000, &v16->super, OS_LOG_TYPE_INFO, "Using %ld matching manually dictated handles: %@", buf, 0x16u);
            }

            v9 = v29;
            goto LABEL_57;
          }

          v41 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:v142];
          v42 = [objc_alloc(MEMORY[0x277CBDB20]) initWithLabel:0 value:v41];
          v43 = [[IMAssistantHandleFromContact alloc] initWithCNLabeledPhoneNumber:v42 contact:0];
          if (v43)
          {
            [v13 addObject:v43];
          }
        }

        goto LABEL_54;
      }

      if (v11 == 3)
      {
        v44 = objc_msgSend_personHandle(v9);
        v45 = [v44 value];

        v142 = v45;
        v16 = [[IMAssistantHandleFromContact alloc] initWithBusinessID:v45];
        if (v16)
        {
          [v13 addObject:v16];
        }

        v46 = IMLogHandleForCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = [v13 count];
          *buf = 134218242;
          v178 = v47;
          v179 = 2112;
          v180 = v13;
          _os_log_impl(&dword_25479E000, v46, OS_LOG_TYPE_INFO, "Using %ld matching business chat handle: %@", buf, 0x16u);
        }

        goto LABEL_58;
      }

      if (v11)
      {
        goto LABEL_59;
      }

      v138 = i;
      v141 = v9;
      v14 = objc_msgSend_personHandle(v9);
      v15 = [v14 type];
      v142 = v14;
      v16 = [v14 label];
      v164 = 0u;
      v165 = 0u;
      v166 = 0u;
      v167 = 0u;
      v139 = v12;
      v17 = v12;
      v18 = [v17 countByEnumeratingWithState:&v164 objects:v183 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v165;
        do
        {
          for (k = 0; k != v19; ++k)
          {
            if (*v165 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v164 + 1) + 8 * k);
            v23 = [v22 __im_assistant_handlesMatchingRequestedHandleType:v15 requestedHandleLabel:v16];
            v24 = IMLogHandleForCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = [v23 count];
              *buf = 134218498;
              v178 = v25;
              v179 = 2112;
              v180 = v22;
              v181 = 2112;
              v182 = v141;
              _os_log_impl(&dword_25479E000, v24, OS_LOG_TYPE_INFO, "Found %ld matching handles on contact %@ for recipient: %@", buf, 0x20u);
            }

            [v13 addObjectsFromArray:v23];
          }

          v19 = [v17 countByEnumeratingWithState:&v164 objects:v183 count:16];
        }

        while (v19);
      }

      v26 = IMLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = [v13 count];
        *buf = 134218242;
        v178 = v27;
        v179 = 2112;
        v180 = v13;
        _os_log_impl(&dword_25479E000, v26, OS_LOG_TYPE_INFO, "Using %ld matching handles from contacts: %@", buf, 0x16u);
      }

      v1 = v132;
      v7 = v133;
      v6 = v131;
      v12 = v139;
      v9 = v141;
LABEL_57:
      i = v138;
LABEL_58:

LABEL_59:
      if (![v13 count])
      {
        v49 = IMLogHandleForCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v178 = v9;
          _os_log_impl(&dword_25479E000, v49, OS_LOG_TYPE_INFO, "Found no handles matching recipient: %@", buf, 0xCu);
        }

        v130 = 0;
      }

      v50 = [v13 copy];
      [v137 setObject:v50 forKey:v9];
    }

    v136 = [v6 countByEnumeratingWithState:&v168 objects:v184 count:16];
    if (v136)
    {
      continue;
    }

    break;
  }

LABEL_80:
  v67 = v7;

  v68 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v69 = [v68 arePreResolvedSiriMatchesEnabled];

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v70 = *(v1 + 40);
  v71 = [v70 countByEnumeratingWithState:&v156 objects:v175 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = 0;
    v74 = 0;
    v75 = *v157;
    do
    {
      for (m = 0; m != v72; ++m)
      {
        if (*v157 != v75)
        {
          objc_enumerationMutation(v70);
        }

        v77 = *(*(&v156 + 1) + 8 * m);
        v78 = [v77 scoredAlternatives];
        v74 |= v78 != 0;

        v73 |= [v77 __im_assistant_requiresHandleDisambiguationBySiriMatches];
      }

      v72 = [v70 countByEnumeratingWithState:&v156 objects:v175 count:16];
    }

    while (v72);

    if (!(v73 & 1 | ((v74 & v69 & 1) == 0)))
    {
      v12 = IMLogHandleForCategory();
      v79 = v129;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v80 = "Skipping existing chat search because we have pre resolved siriMatch results.";
        goto LABEL_102;
      }

      goto LABEL_103;
    }
  }

  else
  {

    LOBYTE(v73) = 0;
  }

  v12 = IMLogHandleForCategory();
  v84 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  v79 = v129;
  if ((v130 & 1) == 0)
  {
    if (v84)
    {
      *buf = 0;
      v80 = "Skipping existing chat search as at least one of the recipients has no valid handles.";
LABEL_102:
      _os_log_impl(&dword_25479E000, v12, OS_LOG_TYPE_INFO, v80, buf, 2u);
    }

LABEL_103:
    v6 = 0;
    v2 = 0;
LABEL_127:

    v109 = *(v1 + 40);
    v150[0] = MEMORY[0x277D85DD0];
    v150[1] = 3221225472;
    v150[2] = sub_2547AC918;
    v150[3] = &unk_279786648;
    v6 = v6;
    v151 = v6;
    v110 = v79;
    v152 = v110;
    v111 = v67;
    v112 = *(v1 + 32);
    v153 = v111;
    v154 = v112;
    v113 = [v109 __im_assistant_arrayByApplyingBlockWithIndex:v150];
    if ([MEMORY[0x277CD3EA0] __imcore__containsNonSuccess:v113])
    {
      v114 = IMLogHandleForCategory();
      if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v178 = v113;
        _os_log_impl(&dword_25479E000, v114, OS_LOG_TYPE_INFO, "Could not resolve a single contact for each recipient, returning resolution result: %@", buf, 0xCu);
      }

      (*(*(v1 + 56) + 16))();
    }

    else
    {
      v115 = *(v1 + 40);
      v144[0] = MEMORY[0x277D85DD0];
      v144[1] = 3221225472;
      v144[2] = sub_2547ACFC0;
      v144[3] = &unk_279786670;
      v145 = v110;
      v146 = v113;
      v147 = v137;
      v116 = v111;
      v117 = *(v1 + 32);
      v148 = v116;
      v149 = v117;
      v118 = [v115 __im_assistant_arrayByApplyingBlockWithIndex:v144];
      v119 = *(v1 + 32);
      v143 = 0;
      v120 = [v119 recipientHandleResolutionResultsAllowedByScreentime:v118 error:&v143];
      v121 = v143;
      v122 = IMLogHandleForCategory();
      v123 = os_log_type_enabled(v122, OS_LOG_TYPE_INFO);
      if (v120)
      {
        v2 = 0;
        if (v123)
        {
          *buf = 138412290;
          v178 = v118;
          _os_log_impl(&dword_25479E000, v122, OS_LOG_TYPE_INFO, "Completed handle resolution with results: %@", buf, 0xCu);
        }

        (*(*(v1 + 56) + 16))();
      }

      else
      {
        if (v123)
        {
          *buf = 0;
          _os_log_impl(&dword_25479E000, v122, OS_LOG_TYPE_INFO, "Returning unsupported because chat is blocked for downtime.", buf, 2u);
        }

        if (v121)
        {
          v124 = [v121 code];
        }

        else
        {
          v124 = *MEMORY[0x277CD4588];
        }

        v125 = *(v1 + 56);
        v126 = [MEMORY[0x277CD4088] unsupportedForReason:v124];
        v173 = v126;
        v127 = [MEMORY[0x277CBEA60] arrayWithObjects:&v173 count:1];
        (*(v125 + 16))(v125, v127);

        v2 = 0;
      }
    }

    v55 = v67;

    v12 = v151;
    v58 = v129;
    goto LABEL_143;
  }

  if (v84)
  {
    *buf = 0;
    _os_log_impl(&dword_25479E000, v12, OS_LOG_TYPE_INFO, "Attempting to find an existing chat with the desired recipients", buf, 2u);
  }

  v85 = [*(v1 + 32) messageHandlerDataSource];
  v86 = [v85 chatDataSource];
  v87 = [v86 allExistingChats];
  v88 = [v87 __imArrayByFilteringWithBlock:&unk_286693038];
  v12 = [v88 sortedArrayUsingSelector:sel_compareChatByDate_];

  v89 = [*(v1 + 32) resolveRecipientsByFindingExistingRelevantChatsForRecipients:*(v1 + 40) withMatchingHandlesByRecipient:v137 fromChats:v12];
  if ([v89 count] != 1)
  {
    if ([v89 count] < 2)
    {
      v6 = 0;
      v2 = 0;
    }

    else
    {
      v92 = IMLogHandleForCategory();
      v2 = 0;
      if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v92, OS_LOG_TYPE_INFO, "Multiple existing recent chats match the requested participant(s).", buf, 2u);
      }

      v93 = [*(v1 + 32) recipientDisambiguationResultsFromMultipleRelevantChats:v89];
      v91 = IMLogHandleForCategory();
      v94 = os_log_type_enabled(v91, OS_LOG_TYPE_INFO);
      if (v93)
      {
        if (v94)
        {
          *buf = 138412290;
          v178 = v93;
          _os_log_impl(&dword_25479E000, v91, OS_LOG_TYPE_INFO, "Returning disambiguation result: %@", buf, 0xCu);
        }

        (*(*(v1 + 56) + 16))();
        v6 = 0;
        goto LABEL_149;
      }

      if (v94)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v91, OS_LOG_TYPE_INFO, "Could not construct disambiguation result. Ignoring relevant chats.", buf, 2u);
      }

      v6 = 0;
LABEL_123:
    }

    v108 = IMLogHandleForCategory();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v108, OS_LOG_TYPE_INFO, "Did not find any existing chat matching request.", buf, 2u);
    }

    v79 = v129;
    goto LABEL_127;
  }

  v90 = [v89 firstObject];
  v6 = v90;
  if (v73)
  {
    v91 = IMLogHandleForCategory();
    v2 = 0;
    if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v91, OS_LOG_TYPE_INFO, "Found an existing chat matching recipients, will use it for handle resolution.", buf, 2u);
    }

    goto LABEL_123;
  }

  v93 = [v90 chat];
  v95 = [*(v1 + 32) messageHandlerDataSource];
  v155 = 0;
  v96 = [v95 screentimeAllowedToShowChat:v93 error:&v155];
  v97 = v155;

  if (v96)
  {
    v134 = v67;
    v98 = v12;
    v99 = [v6 resolvedPersons];
    v100 = [v99 __imArrayByApplyingBlock:&unk_286692FF8];
    v101 = [v93 chatIdentifier];
    v102 = IMLogHandleForCategory();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v178 = v101;
      _os_log_impl(&dword_25479E000, v102, OS_LOG_TYPE_INFO, "Found an existing chat matching recipients. Storing conversationIdentifier=%@", buf, 0xCu);
    }

    v103 = *(v1 + 32);
    v104 = *(v103 + 32);
    *(v103 + 32) = v101;
    v105 = v101;

    (*(*(v1 + 56) + 16))();
    v12 = v98;
    v67 = v134;
  }

  else
  {
    v106 = IMLogHandleForCategory();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v106, OS_LOG_TYPE_INFO, "Returning unsupported because one of the intended recipient handles is not allowed by downtime.", buf, 2u);
    }

    if (v97)
    {
      v107 = [v97 code];
    }

    else
    {
      v107 = *MEMORY[0x277CD4588];
    }

    v128 = *(v1 + 56);
    v99 = [MEMORY[0x277CD4088] unsupportedForReason:v107];
    v174 = v99;
    v100 = [MEMORY[0x277CBEA60] arrayWithObjects:&v174 count:1];
    (*(v128 + 16))(v128, v100);
  }

  v2 = 0;
LABEL_149:

  v58 = v129;
  v55 = v67;
LABEL_143:

LABEL_144:
LABEL_145:
}

id sub_2547AC884(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 customIdentifier];
  v4 = [v3 length];

  if (v4)
  {
    [MEMORY[0x277CD4088] successWithResolvedPerson:v2];
  }

  else
  {
    [MEMORY[0x277CD4088] needsValue];
  }
  v5 = ;

  return v5;
}

NSObject *sub_2547AC918(id *a1, void *a2, uint64_t a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v64 = v5;
    _os_log_impl(&dword_25479E000, v6, OS_LOG_TYPE_INFO, "Beginning contact resolution for recipient: %@", buf, 0xCu);
  }

  v7 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v8 = [v7 arePreResolvedSiriMatchesEnabled];

  if (v8)
  {
    v9 = [v5 siriMatches];
    v10 = [v9 count];
    v11 = [a1[4] resolvedPersons];
    if (v11 && [v5 __im_assistant_requiresHandleDisambiguationBySiriMatches])
    {
      v12 = [v9 firstObject];
      v52 = [v12 contactIdentifier];

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v13 = v11;
      v50 = [v13 countByEnumeratingWithState:&v57 objects:v62 count:16];
      if (v50)
      {
        v51 = *v58;
        v45 = a1;
        v46 = v5;
        v48 = v11;
        v49 = v9;
        v43 = v10;
        v44 = a3;
        v47 = v13;
        do
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v58 != v51)
            {
              objc_enumerationMutation(v13);
            }

            v15 = *(*(&v57 + 1) + 8 * i);
            v16 = [v15 contactIdentifier];
            v17 = [v52 isEqualToString:v16];

            if (v17)
            {
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v18 = v9;
              v19 = [v18 countByEnumeratingWithState:&v53 objects:v61 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v54;
                while (2)
                {
                  for (j = 0; j != v20; ++j)
                  {
                    if (*v54 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = *(*(&v53 + 1) + 8 * j);
                    v24 = objc_msgSend_personHandle(v23);
                    v25 = objc_msgSend_personHandle(v15);
                    v26 = [v24 __im_assistant_matchesINPersonHandle:v25];

                    if (v26)
                    {
                      v36 = IMLogHandleForCategory();
                      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v64 = v23;
                        _os_log_impl(&dword_25479E000, v36, OS_LOG_TYPE_INFO, "found siriMatch with a handle in matching chat, picking it: %@", buf, 0xCu);
                      }

                      v37 = objc_msgSend_personHandle(v23);
                      v38 = [v37 value];
                      [v23 setCustomIdentifier:v38];

                      v28 = [MEMORY[0x277CD3EA0] successWithResolvedPerson:v23];

                      v5 = v46;
                      v11 = v48;
                      v9 = v49;
                      goto LABEL_38;
                    }
                  }

                  v20 = [v18 countByEnumeratingWithState:&v53 objects:v61 count:16];
                  if (v20)
                  {
                    continue;
                  }

                  break;
                }
              }

              v11 = v48;
              v9 = v49;
              a3 = v44;
              a1 = v45;
              v13 = v47;
            }
          }

          v5 = v46;
          v10 = v43;
          v50 = [v13 countByEnumeratingWithState:&v57 objects:v62 count:16];
        }

        while (v50);
      }
    }

    if (v10 >= 2)
    {
      v27 = IMLogHandleForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v64 = v9;
        _os_log_impl(&dword_25479E000, v27, OS_LOG_TYPE_INFO, "found multiple resolved siri matches. disambiguating: %@", buf, 0xCu);
      }

      v28 = [MEMORY[0x277CD3EA0] disambiguationWithPeopleToDisambiguate:v9];
LABEL_38:

      goto LABEL_48;
    }

    if (v10 == 1)
    {
      v29 = [v9 objectAtIndexedSubscript:0];
      v30 = objc_msgSend_personHandle(v29);
      v31 = [v30 value];
      v32 = [v31 length];

      if (v32)
      {
        v33 = objc_msgSend_personHandle(v29);
        v34 = [v33 value];
        [v29 setCustomIdentifier:v34];

        v35 = IMLogHandleForCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v64 = v29;
          _os_log_impl(&dword_25479E000, v35, OS_LOG_TYPE_INFO, "found one resolved siri match with a valid handle. picking it: %@", buf, 0xCu);
        }

        v28 = [MEMORY[0x277CD3EA0] successWithResolvedPerson:v29];

        goto LABEL_38;
      }

      v39 = IMLogHandleForCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v39, OS_LOG_TYPE_INFO, "found one resolved siri match, but no handle. falling back to legacy contact resolution.", buf, 2u);
      }
    }

    else
    {
      v29 = IMLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v29, OS_LOG_TYPE_INFO, "did not find any siri matches. falling back to legacy contact resolution.", buf, 2u);
      }
    }
  }

  v9 = [a1[5] objectAtIndexedSubscript:a3];
  if ([v9 __imcore__isSuccess])
  {
    v40 = IMLogHandleForCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v64 = v9;
      _os_log_impl(&dword_25479E000, v40, OS_LOG_TYPE_INFO, "Already have a resolved contact and handle for this recipient. Returning success: %@", buf, 0xCu);
    }

    v9 = v9;
    v28 = v9;
  }

  else
  {
    v41 = [a1[6] objectForKeyedSubscript:v5];
    v28 = [a1[7] contactResolutionResultForContacts:v41 matchingRecipient:v5];
  }

LABEL_48:

  return v28;
}

id sub_2547ACFC0(id *a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v20 = 138412290;
    v21 = v5;
    _os_log_impl(&dword_25479E000, v6, OS_LOG_TYPE_INFO, "Beginning handle resolution for recipient: %@", &v20, 0xCu);
  }

  v7 = [a1[4] objectAtIndexedSubscript:a3];
  if ([v7 __imcore__isSuccess])
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v7;
      _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Intent already has a resolved handle for this recipient. Returning success: %@", &v20, 0xCu);
    }

    v9 = v7;
  }

  else
  {
    v10 = [a1[5] objectAtIndexedSubscript:a3];
    v11 = [v10 resolvedValue];
    v12 = [v11 customIdentifier];
    v13 = [v12 length];

    if (v13)
    {
      v14 = IMLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        v21 = v10;
        _os_log_impl(&dword_25479E000, v14, OS_LOG_TYPE_INFO, "A handle was already resolved as part of contact resolution (e.g. contacts with duplicate names that only contain one valid handle). Returning success with the resolved handle: %@", &v20, 0xCu);
      }

      v9 = v10;
    }

    else
    {
      v15 = [a1[6] objectForKeyedSubscript:v5];
      v16 = [a1[7] objectForKeyedSubscript:v5];
      v17 = [v16 firstObject];
      if ([v16 count] >= 2)
      {
        v18 = IMLogHandleForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v20 = 138412290;
          v21 = v16;
          _os_log_impl(&dword_25479E000, v18, OS_LOG_TYPE_INFO, "More than one matching contact exists after person resolution. Person resolution should have resolved the recipients down to a single contact. Something has gone horribly wrong. Picking the first one and continuing with handle resolution.\nContacts: %@", &v20, 0xCu);
        }
      }

      v9 = [a1[8] handleResolutionResultForHandles:v15 resolvedContactForAlternatives:v17 recipient:v5];
    }
  }

  return v9;
}

void sub_2547ADD24(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v6 count] >= 2)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 134218498;
      v9 = [v6 count];
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_25479E000, v7, OS_LOG_TYPE_INFO, "%ld contacts have the name %@. Will use handles for these contacts, rather than just name, when disambiguating. Contacts: %@", &v8, 0x20u);
    }

    [*(a1 + 32) addObjectsFromArray:v6];
  }
}

void sub_2547AE834(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a4;
  v8 = a3;
  v9 = [[IMAssistantChatParticipant alloc] initWithIMHandle:v8 handleFromContact:v7];

  v10 = [*(a1 + 32) objectForKey:v12];
  if (v10)
  {
    v11 = v10;
    [v10 addObject:v9];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v9, 0}];
    [*(a1 + 32) setObject:v11 forKey:v12];
  }
}

id sub_2547AE920(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) objectForKey:a2];
  v4 = [v3 imHandle];
  v5 = [v3 handleFromContact];
  v6 = [v5 contact];
  if (v6)
  {
LABEL_2:
    v7 = objc_alloc(MEMORY[0x277CD3E90]);
    v8 = [v7 __im_assistant_initWithContact:v6 imHandle:v4];

    goto LABEL_12;
  }

  v9 = [*(a1 + 40) contactIdentifiersMatchingHandle:v4];
  if ([v9 count])
  {
    v10 = [v9 lastObject];
    v6 = [*(a1 + 40) contactWithIdentifier:v10];
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 134219010;
      v15 = [v9 count];
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_25479E000, v11, OS_LOG_TYPE_INFO, "Found %ld contacts matching handle: %@. Using contact identifier %@ from list %@. Contact: %@", &v14, 0x34u);
    }

    if (v6)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_25479E000, v12, OS_LOG_TYPE_INFO, "Did not find any contacts matching manually requested handle: %@", &v14, 0xCu);
    }
  }

  v6 = objc_alloc(MEMORY[0x277CD3E90]);
  v8 = [v6 __im_assistant_initAnonymousRecipientWithIMHandle:v4];
LABEL_12:

  return v8;
}

uint64_t sub_2547AF7F0(uint64_t a1, void *a2)
{
  v3 = [a2 imHandle];
  v4 = [*(a1 + 32) imHandle];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1u;
}

id sub_2547B0CDC(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD3E90];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v5 __im_assistant_initWithHandleFromContact:v4 accountDataSource:*(a1 + 32)];

  return v6;
}

id sub_2547B0E2C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == a2)
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = [MEMORY[0x277CD4088] notRequired];
  }

  return v2;
}

uint64_t sub_2547B0EE8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 lastFinishedMessageDate];
  v6 = [v4 lastFinishedMessageDate];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_2547B0F58(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_25479E000, v5, OS_LOG_TYPE_INFO, "Live photo photo write completed.", &v9, 2u);
  }

  if (v4)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = *(*(*(a1 + 48) + 8) + 40);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_25479E000, v6, OS_LOG_TYPE_INFO, "Failed to write the photo (%@) into the MessagesAssistantExtension Sandbox. Error: %@", &v9, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_2547B10A4(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_25479E000, v5, OS_LOG_TYPE_INFO, "Live photo video write completed.", &v9, 2u);
  }

  if (v4)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = *(*(*(a1 + 48) + 8) + 40);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_25479E000, v6, OS_LOG_TYPE_INFO, "Failed to write the live photo video compliment (%@) into the MessagesAssistantExtension Sandbox. Error: %@", &v9, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_2547B11F0(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v2 = *(*(a1 + 64) + 16);

    v2();
  }

  else
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v14 = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_25479E000, v3, OS_LOG_TYPE_INFO, "Attempting to transfer a live photo with photo URL %@ and video URL %@", &v14, 0x16u);
    }

    v6 = [*(a1 + 48) createNewOutgoingTransferWithLocalFileURL:*(a1 + 32)];
    [*(a1 + 48) setAuxImageForTransfer:v6 value:1];
    v7 = [MEMORY[0x277D1A9C0] AuxGUIDFromFileTransferGUID:v6];
    [*(a1 + 48) registerGUID:v7 forNewOutgoingTransferWithLocalURL:*(a1 + 40)];
    [*(a1 + 48) setAuxVideoForTransfer:v7 value:1];
    [*(a1 + 48) registerTransferWithDaemon:v7];
    [*(a1 + 48) registerTransferWithDaemon:v6];
    [*(a1 + 56) addObject:v6];
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 56);
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "The message's file transfer guids are: %@", &v14, 0xCu);
    }

    v10 = [MEMORY[0x277CCA898] __im_attributedStringWithFileTransfers:*(a1 + 56)];
    v11 = [v10 __im_attributedStringByAssigningMessagePartNumbers];
    v12 = *(a1 + 64);
    v13 = [MEMORY[0x277D18DA0] instantMessageWithText:v11 messageSubject:0 fileTransferGUIDs:*(a1 + 56) flags:5 threadIdentifier:0];
    (*(v12 + 16))(v12, v13);
  }
}

void sub_2547B1468(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_25479E000, v4, OS_LOG_TYPE_INFO, "Photo write completed.", &v21, 2u);
  }

  if (a2)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(*(*(a1 + 72) + 8) + 40);
      v21 = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_25479E000, v5, OS_LOG_TYPE_INFO, "Failed to write the photo (%@) into the MessagesAssistantExtension Sandbox. Error: %@", &v21, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v9 = *(a1 + 56);
    v8 = *(a1 + 64);
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    v12 = v10;
    v13 = v9;
    v14 = IMLogHandleForCategory();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (v13)
    {
      if (v15)
      {
        v21 = 138412290;
        v22 = v13;
        _os_log_impl(&dword_25479E000, v14, OS_LOG_TYPE_INFO, "Building a file transfer message based on a file at %@", &v21, 0xCu);
      }

      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = [v12 createNewOutgoingTransferWithLocalFileURL:v13];
      [v12 registerTransferWithDaemon:v16];
      [v14 addObject:v16];
      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v21 = 138412290;
        v22 = v14;
        _os_log_impl(&dword_25479E000, v17, OS_LOG_TYPE_INFO, "The message's file transfer guids are: %@", &v21, 0xCu);
      }

      v18 = [MEMORY[0x277CCA898] __im_attributedStringWithFileTransfers:v14];
      v19 = [v18 __im_attributedStringByAssigningMessagePartNumbers];
      v20 = [MEMORY[0x277D18DA0] instantMessageWithText:v19 messageSubject:0 fileTransferGUIDs:v14 flags:5 threadIdentifier:0];
    }

    else
    {
      if (v15)
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_25479E000, v14, OS_LOG_TYPE_INFO, "Provided localFileAttachmentURL is nil", &v21, 2u);
      }

      v20 = 0;
    }

    (*(v8 + 16))(v8, v20);
  }
}

void sub_2547B177C(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_25479E000, v4, OS_LOG_TYPE_INFO, "Video write completed.", &v21, 2u);
  }

  if (a2)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(*(*(a1 + 72) + 8) + 40);
      v21 = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_25479E000, v5, OS_LOG_TYPE_INFO, "Failed to write the video (%@) into the MessagesAssistantExtension Sandbox. Error: %@", &v21, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v9 = *(a1 + 56);
    v8 = *(a1 + 64);
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    v12 = v10;
    v13 = v9;
    v14 = IMLogHandleForCategory();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (v13)
    {
      if (v15)
      {
        v21 = 138412290;
        v22 = v13;
        _os_log_impl(&dword_25479E000, v14, OS_LOG_TYPE_INFO, "Building a file transfer message based on a file at %@", &v21, 0xCu);
      }

      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = [v12 createNewOutgoingTransferWithLocalFileURL:v13];
      [v12 registerTransferWithDaemon:v16];
      [v14 addObject:v16];
      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v21 = 138412290;
        v22 = v14;
        _os_log_impl(&dword_25479E000, v17, OS_LOG_TYPE_INFO, "The message's file transfer guids are: %@", &v21, 0xCu);
      }

      v18 = [MEMORY[0x277CCA898] __im_attributedStringWithFileTransfers:v14];
      v19 = [v18 __im_attributedStringByAssigningMessagePartNumbers];
      v20 = [MEMORY[0x277D18DA0] instantMessageWithText:v19 messageSubject:0 fileTransferGUIDs:v14 flags:5 threadIdentifier:0];
    }

    else
    {
      if (v15)
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_25479E000, v14, OS_LOG_TYPE_INFO, "Provided localFileAttachmentURL is nil", &v21, 2u);
      }

      v20 = 0;
    }

    (*(v8 + 16))(v8, v20);
  }
}

uint64_t sub_2547B1A90(uint64_t a1, void *a2)
{
  v2 = [a2 account];
  v3 = [v2 isOperational];

  return v3;
}

id sub_2547B1ACC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (MEMORY[0x259C19130]())
  {
    v7 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:v6];
    if (v7)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v28 = v5;
      v8 = [v5 phoneNumbers];
      v9 = [v8 countByEnumeratingWithState:&v33 objects:v40 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = *v34;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v34 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = [*(*(&v33 + 1) + 8 * i) value];
            v15 = [v14 isLikePhoneNumber:v7];

            if (v15)
            {
              v16 = INPersonHandleLabelForCNLabeledValue();

              v11 = v16;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v33 objects:v40 count:16];
        }

        while (v10);
      }

      else
      {
        v11 = 0;
      }

      v25 = 2;
LABEL_34:
      v5 = v28;
      goto LABEL_35;
    }

    v11 = 0;
    v25 = 2;
  }

  else
  {
    if (IMStringIsEmail())
    {
      v7 = IMNormalizeFormattedString();
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v28 = v5;
      v17 = [v5 emailAddresses];
      v18 = [v17 countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v18)
      {
        v19 = v18;
        v11 = 0;
        v20 = *v30;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v30 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = [*(*(&v29 + 1) + 8 * j) value];
            v23 = IMNormalizeFormattedString();

            if ([v23 isEqual:v7])
            {
              v24 = INPersonHandleLabelForCNLabeledValue();

              v11 = v24;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v29 objects:v39 count:16];
        }

        while (v19);
      }

      else
      {
        v11 = 0;
      }

      v25 = 1;
      goto LABEL_34;
    }

    if (MEMORY[0x259C19110](v6))
    {
      v25 = 0;
      v11 = 0;
      goto LABEL_36;
    }

    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = v6;
      _os_log_impl(&dword_25479E000, v7, OS_LOG_TYPE_INFO, "Could not determine person handle label or type because [IMHandle normalizedID] was neither a phone number nor an email address: %@", buf, 0xCu);
    }

    v25 = 0;
    v11 = 0;
  }

LABEL_35:

LABEL_36:
  v26 = [objc_alloc(MEMORY[0x277CD3E98]) initWithValue:v6 type:v25 label:v11];

  return v26;
}

uint64_t sub_2547B1E30(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length])
  {
    if (MEMORY[0x259C19130](v3))
    {
      v4 = 1;
    }

    else if (IMStringIsEmail())
    {
      v4 = 2;
    }

    else if (MEMORY[0x259C19110](v3))
    {
      v4 = 3;
    }

    else
    {
      v5 = IMLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v3;
        _os_log_impl(&dword_25479E000, v5, OS_LOG_TYPE_INFO, "%@ is an invalid personHandle.value.", &v7, 0xCu);
      }

      v4 = 4;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_2547B1F38(void *a1)
{
  v1 = [a1 value];
  v2 = [MEMORY[0x277CD3E98] __im_assistant_handleTypeForString:v1];

  return v2;
}

id sub_2547B1F7C(void *a1)
{
  v2 = [a1 value];
  if (v2)
  {
    if ([a1 type] == 2 || objc_msgSend(a1, "type") == 2)
    {
      v4 = IMCanonicalizeFormattedString();
    }

    else
    {
      v4 = v2;
    }

    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_2547B2014(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 _canonicalizedValue];
  v6 = [v4 _canonicalizedValue];

  v7 = [v5 isEqualToString:v6];
  return v7;
}

uint64_t sub_2547B2084()
{
  qword_28118F680 = os_log_create("com.apple.Messages", "IMAssistantCore");

  return MEMORY[0x2821F96F8]();
}

id _IMAssistantCoreSendMessageSignpostLogHandle(uint64_t a1)
{
  if (qword_27F610F60 != -1)
  {
    sub_2547C8528();
  }

  v2 = qword_27F610F58;

  return v2;
}

uint64_t sub_2547B210C()
{
  qword_27F610F58 = os_log_create("com.apple.Messages", "SendMessageIntent");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2547B2150()
{
  qword_28118F670 = os_log_create("com.apple.Messages", "SearchForMessageIntent");

  return MEMORY[0x2821F96F8]();
}

id sub_2547B2194(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 handleID];
  v9 = [v6 imHandleWithID:v8];

  v10 = [v9 normalizedID];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12;

  v14 = [v9 displayID];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v8;
  }

  v17 = v16;

  v18 = [v7 contact];
  v19 = [v7 personHandleType];
  v20 = [v7 personHandleLabel];

  v21 = [a1 __im_assistant_initWithContact:v18 displayFormattedHandle:v17 normalizedHandle:v13 type:v19 label:v20];

  return v21;
}

id sub_2547B22D4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 value];
  v12 = [v10 imHandleWithID:v11];

  if (v12)
  {
    v13 = [v9 type];
    v14 = [v9 label];
    v15 = [a1 __im_assistant_initWithContact:v8 imHandle:v12 type:v13 label:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_2547B23BC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 normalizedID];
  v9 = [MEMORY[0x277CD3E98] __im_assistant_extractIntentHandleLabelAndTypeFromContact:v7 forNormalizedID:v8];
  v10 = [v9 type];
  v11 = [v9 label];
  v12 = [a1 __im_assistant_initWithContact:v7 imHandle:v6 type:v10 label:v11];

  return v12;
}

id sub_2547B2494(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v11 displayID];
  v14 = [v11 normalizedID];

  v15 = [a1 __im_assistant_initWithContact:v12 displayFormattedHandle:v13 normalizedHandle:v14 type:a5 label:v10];

  return v15;
}

id sub_2547B2570(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (v11)
  {
    v15 = [MEMORY[0x277CCAC00] componentsForContact:v11];
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_alloc(MEMORY[0x277CD3E98]) initWithValue:v12 type:a6 label:v14];
  v17 = [MEMORY[0x277CD3E90] __im_assistant_displayNameForContact:v11 displayFormattedHandle:v12 normalizedHandle:v13];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0;
  }

  else
  {
    v18 = [v11 identifier];
  }

  v19 = [objc_alloc(MEMORY[0x277CD3E90]) initWithPersonHandle:v16 nameComponents:v15 displayName:v17 image:0 contactIdentifier:v18 customIdentifier:v13];
  v20 = [v11 phonemeData];
  [v19 setPhonemeData:v20];

  return v19;
}

id sub_2547B26F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 normalizedID];
  v5 = [v3 displayID];

  if (MEMORY[0x259C19130](v4))
  {
    IsEmail = 2;
  }

  else
  {
    IsEmail = IMStringIsEmail();
  }

  v7 = [objc_alloc(MEMORY[0x277CD3E98]) initWithValue:v5 type:IsEmail];
  v8 = [MEMORY[0x277CD3E90] __im_assistant_displayNameForContact:0 displayFormattedHandle:v5 normalizedHandle:v4];
  v9 = [objc_alloc(MEMORY[0x277CD3E90]) initWithPersonHandle:v7 nameComponents:0 displayName:v8 image:0 contactIdentifier:0 customIdentifier:v4];

  return v9;
}

id sub_2547B27EC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v11 = [v10 stewieEnabled];

  if (v11 && [v9 isEqualToString:*MEMORY[0x277D1A6F8]] || (objc_msgSend(MEMORY[0x277D1A9B8], "sharedFeatureFlags"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isTranscriptSharingEnabled"), v12, v13) && (objc_msgSend(*MEMORY[0x277D19D58], "lowercaseString"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v9, "hasSuffix:", v14), v14, v15))
  {
    v16 = IMSharedUtilitiesFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"TS_NOTIFICATION_EMERGENCY_SUBTITLE_DISPLAYNAME" value:&stru_286693278 table:@"IMSharedUtilities-SYDROB_FEATURES"];

    goto LABEL_35;
  }

  v18 = MEMORY[0x259C19110](v9);
  v19 = v9;
  if ((v18 & 1) != 0 || (v20 = MEMORY[0x259C19110](v8), v19 = v8, v20))
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  if ([v21 length])
  {
    v22 = [MEMORY[0x277D1A8D0] placeholderNameForBrandURI:v21];
    v23 = dispatch_semaphore_create(0);
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = sub_2547B2D04;
    v47 = sub_2547B2D14;
    v48 = 0;
    v24 = [MEMORY[0x277D18D88] sharedInstance];
    v37 = MEMORY[0x277D85DD0];
    v38 = 3221225472;
    v39 = sub_2547B2D1C;
    v40 = &unk_279786838;
    v42 = &v43;
    v25 = v23;
    v41 = v25;
    v26 = [v24 businessNameForUID:v21 updateHandler:&v37];

    if ([v26 length])
    {
      v27 = IMLogHandleForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v50 = v26;
        _os_log_impl(&dword_25479E000, v27, OS_LOG_TYPE_INFO, "Using cached business name: %@", buf, 0xCu);
      }

      v28 = v26;
    }

    else
    {
      v30 = IMLogHandleForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v30, OS_LOG_TYPE_INFO, "Business name lookup beginning.", buf, 2u);
      }

      v31 = dispatch_time(0, 3000000000);
      if (dispatch_semaphore_wait(v25, v31))
      {
        v32 = IMLogHandleForCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25479E000, v32, OS_LOG_TYPE_INFO, "Business name lookup timed out", buf, 2u);
        }
      }

      v33 = IMLogHandleForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = v44[5];
        *buf = 138412290;
        v50 = v34;
        _os_log_impl(&dword_25479E000, v33, OS_LOG_TYPE_INFO, "Business name lookup completed with name: %@", buf, 0xCu);
      }

      if (![v44[5] length])
      {
        goto LABEL_31;
      }

      v28 = v44[5];
    }

    v35 = v28;

    v22 = v35;
LABEL_31:
    v17 = v22;

    _Block_object_dispose(&v43, 8);
    goto LABEL_34;
  }

  if (!v7)
  {
LABEL_18:
    if ([v8 length])
    {
      v29 = v8;
    }

    else
    {
      v29 = v9;
    }

    v17 = v29;
    goto LABEL_34;
  }

  v17 = [MEMORY[0x277CBDA78] stringFromContact:v7 style:0];
  if (![v17 length])
  {

    goto LABEL_18;
  }

LABEL_34:

LABEL_35:

  return v17;
}

void sub_2547B2CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2547B2D04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_2547B2D1C(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

id sub_2547B2D6C(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v3 = [a1 contactIdentifier];
  if ([v3 length])
  {
    [v2 addObject:v3];
  }

  v4 = [a1 siriMatches];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) contactIdentifier];
        if ([v9 length])
        {
          [v2 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v2 array];

  return v10;
}

uint64_t sub_2547B2EE8(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = [a1 siriMatches];
  v2 = v1;
  if (v1 && [v1 count] >= 2)
  {
    v4 = [v2 firstObject];
    v5 = [v4 contactIdentifier];

    if (v5 && [v5 length])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = v2;
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        while (2)
        {
          v10 = 0;
          do
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [*(*(&v14 + 1) + 8 * v10) contactIdentifier];
            v12 = [v5 isEqualToString:v11];

            if (!v12)
            {
              v3 = 0;
              goto LABEL_17;
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v3 = 1;
LABEL_17:
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_2547B3078(void *a1, uint64_t a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [v7 address];
  v9 = [v8 _stripFZIDPrefix];
  v10 = [v9 im_stripCategoryLabel];
  v11 = IMChatCanonicalIDSIDsForAddress();

  v12 = IDSCopyRawAddressForDestination();
  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v21 = 138412290;
    v22 = v12;
    _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Normalized handle %@", &v21, 0xCu);
  }

  v14 = [MEMORY[0x277CD3E98] __im_assistant_extractIntentHandleLabelAndTypeFromContact:v6 forNormalizedID:v12];
  if (v6)
  {
    v15 = objc_alloc(MEMORY[0x277CD3E90]);
    v16 = [v14 type];
    v17 = [v14 label];
    v18 = [v15 __im_assistant_initWithContact:v6 displayFormattedHandle:v12 normalizedHandle:v12 type:v16 label:v17];
  }

  else
  {
    v15 = [a1 __im_assistant_displayNameForContact:0 displayFormattedHandle:0 normalizedHandle:v12];
    v18 = [objc_alloc(MEMORY[0x277CD3E90]) initWithPersonHandle:v14 nameComponents:0 displayName:v15 image:0 contactIdentifier:0 customIdentifier:v12];
  }

  v19 = [v7 isMe];
  [v18 setIsMe:v19];

  return v18;
}

void sub_2547B3784(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    if ([v3 count] < 2)
    {
      v10 = [v3 objectAtIndexedSubscript:0];
      v11 = *(a1 + 40);
      v12 = [*(a1 + 32) messageIdentifier];
      v21 = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_2547B39F0;
      v16[3] = &unk_279786860;
      v20 = *(a1 + 48);
      v17 = v10;
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v18 = v14;
      v19 = v15;
      v9 = v10;
      [v11 chatsForMessageIdentifiers:v13 completion:v16];

      goto LABEL_11;
    }

    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v4, OS_LOG_TYPE_INFO, "Message identifier has more than one message item associated with it, requiring app launch", buf, 2u);
    }

    v5 = objc_alloc(MEMORY[0x277CD3BC8]);
    v6 = 5;
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) messageIdentifier];
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_25479E000, v7, OS_LOG_TYPE_INFO, "No messages found that match the provided identifier %@", buf, 0xCu);
    }

    v5 = objc_alloc(MEMORY[0x277CD3BC8]);
    v6 = 6;
  }

  v9 = [v5 initWithCode:v6 userActivity:0];
  (*(*(a1 + 48) + 16))();
LABEL_11:
}

void sub_2547B39F0(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    if (([v4 allowedByScreenTime] & 1) == 0)
    {
      if ([v4 allowedToShowConversationSync])
      {
        v9 = 12;
      }

      else
      {
        v9 = 13;
      }

      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v10, OS_LOG_TYPE_INFO, "ScreenTime or DownTime restriction is in-place, returning", buf, 2u);
      }

      v6 = objc_alloc(MEMORY[0x277CD3BC8]);
      v7 = v9;
      goto LABEL_25;
    }

    if (([v4 isMemberOfChat] & 1) == 0)
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v35 = v4;
        _os_log_impl(&dword_25479E000, v11, OS_LOG_TYPE_INFO, "Will not send to chat in Un-Joined state: %@", buf, 0xCu);
      }

      v6 = objc_alloc(MEMORY[0x277CD3BC8]);
      v7 = 11;
      goto LABEL_25;
    }

    if (([v4 supportsCapabilities:1] & 1) == 0)
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v12, OS_LOG_TYPE_INFO, "capability does not support editing", buf, 2u);
      }

      v6 = objc_alloc(MEMORY[0x277CD3BC8]);
      v7 = 9;
      goto LABEL_25;
    }

    if (([*(a1 + 32) isAudioMessage] & 1) != 0 || objc_msgSend(*(a1 + 32), "isFileAttachment"))
    {
      v5 = IMLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v5, OS_LOG_TYPE_INFO, "Message type does not support editing", buf, 2u);
      }

      v6 = objc_alloc(MEMORY[0x277CD3BC8]);
      v7 = 8;
LABEL_25:
      v13 = [v6 initWithCode:v7 userActivity:0];
      (*(*(a1 + 56) + 16))();
LABEL_26:

      goto LABEL_27;
    }

    v13 = [*(a1 + 32) body];
    v14 = [v13 __im_messagePartIndexes];
    v15 = [v14 count];
    v16 = IMLogHandleForCategory();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
    if (v15 != 1)
    {
      if (v17)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v16, OS_LOG_TYPE_INFO, "Message has more than one part, requiring app launch", buf, 2u);
      }

      v23 = [objc_alloc(MEMORY[0x277CD3BC8]) initWithCode:5 userActivity:0];
      goto LABEL_71;
    }

    if (v17)
    {
      *buf = 134217984;
      v35 = [v14 firstIndex];
      _os_log_impl(&dword_25479E000, v16, OS_LOG_TYPE_INFO, "Determining edit eligiblity of message part with index %lu", buf, 0xCu);
    }

    v18 = 1;
    v19 = [*(a1 + 32) eligibilityForEditType:1 messagePartIndex:{objc_msgSend(v14, "firstIndex")}];
    v20 = 3;
    if (v19 <= 3)
    {
      if (v19 > 1)
      {
        if (v19 == 2)
        {
          v21 = IMLogHandleForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_25479E000, v21, OS_LOG_TYPE_INFO, "Message service does not support editing", buf, 2u);
          }

          v18 = 0;
          v20 = 9;
        }

        else
        {
          v21 = IMLogHandleForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_25479E000, v21, OS_LOG_TYPE_INFO, "Message is too old to be edited", buf, 2u);
          }

          v18 = 0;
          v20 = 7;
        }

        goto LABEL_68;
      }

      if (!v19)
      {
        v21 = IMLogHandleForCategory();
        v18 = 1;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v18 = 1;
          _os_log_impl(&dword_25479E000, v21, OS_LOG_TYPE_INFO, "Messages is eligible for editing", buf, 2u);
        }

        v20 = 3;
        goto LABEL_68;
      }

      if (v19 != 1)
      {
        goto LABEL_69;
      }

      v21 = IMLogHandleForCategory();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        goto LABEL_67;
      }

      *buf = 0;
      v22 = "Messages from different senders cannot be edited";
      goto LABEL_66;
    }

    if (v19 <= 5)
    {
      if (v19 == 4)
      {
        v21 = IMLogHandleForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25479E000, v21, OS_LOG_TYPE_INFO, "Plugin message types do not support editing", buf, 2u);
        }

        v18 = 0;
        v20 = 8;
        goto LABEL_68;
      }

      v21 = IMLogHandleForCategory();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        goto LABEL_67;
      }

      *buf = 0;
      v22 = "Messages has been edited too many times";
    }

    else
    {
      if (v19 != 6)
      {
        if (v19 != 7)
        {
          if (v19 != 8)
          {
            goto LABEL_69;
          }

          v21 = IMLogHandleForCategory();
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            goto LABEL_67;
          }

          *buf = 0;
          v22 = "Scheduled message is in a failed state and can't be edited.";
          goto LABEL_66;
        }

        v21 = IMLogHandleForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v22 = "Scheduled Messages is assumed to be sent but not yet received ack from server for sending";
          goto LABEL_66;
        }

LABEL_67:
        v18 = 0;
        v20 = 4;
LABEL_68:

LABEL_69:
        v23 = [objc_alloc(MEMORY[0x277CD3BC8]) initWithCode:v20 userActivity:0];
        if (v18)
        {
          v31 = MEMORY[0x277D1AA70];
          v24 = *(a1 + 32);
          v32 = [v24 body];
          v25 = [v32 __im_messagePartIndexes];
          v26 = [v25 firstIndex];
          v33 = v14;
          v27 = objc_alloc(MEMORY[0x277CCA898]);
          v28 = [*(a1 + 40) editedContent];
          v29 = [v27 initWithString:v28];
          v30 = [v31 editedMessageItemWithOriginalMessageItem:v24 editedPartIndex:v26 newPartText:v29 newPartTranslation:0];

          v14 = v33;
          [*(a1 + 48) sendEditedMessageItem:v30 originalMessageItem:*(a1 + 32) chat:v4 backwardCompatabilityText:0];
        }

LABEL_71:
        (*(*(a1 + 56) + 16))();

        goto LABEL_26;
      }

      v21 = IMLogHandleForCategory();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        goto LABEL_67;
      }

      *buf = 0;
      v22 = "Messages is currently sending";
    }

LABEL_66:
    _os_log_impl(&dword_25479E000, v21, OS_LOG_TYPE_INFO, v22, buf, 2u);
    goto LABEL_67;
  }

  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "No chats found for message identifiers", buf, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x277CD3BC8]) initWithCode:4 userActivity:0];
  (*(*(a1 + 56) + 16))();
LABEL_27:
}

void sub_2547B4428(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v15 + 1) + 8 * v9) chatIdentifier];
          [v4 addObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v4;
      _os_log_impl(&dword_25479E000, v11, OS_LOG_TYPE_INFO, "Searching for chat corresponding to conversation identifiers %@", buf, 0xCu);
    }

    v12 = [*(a1 + 40) chatsWithConversationIdentifiers:v4];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Exptected at least one message matching the message identifiers %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

id sub_2547B4660(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2547B4754;
  v8[3] = &unk_2797868B0;
  v5 = v4;
  v9 = v5;
  v10 = v11;
  v6 = [a1 __imArrayByApplyingBlock:v8];

  _Block_object_dispose(v11, 8);

  return v6;
}

void sub_2547B473C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2547B4754(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

void sub_2547B4A48(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_25479E000, v4, OS_LOG_TYPE_INFO, "Calling resolveRecipients completion handler with result: %@", &v9, 0xCu);
  }

  v5 = (*(*(a1 + 32) + 16))();
  v6 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v5);
  v7 = v6;
  v8 = *(a1 + 40);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v7, OS_SIGNPOST_INTERVAL_END, v8, "resolveRecipientsForSearchForMessages", &unk_2547CAD0B, &v9, 2u);
  }
}

void sub_2547B4D48(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_25479E000, v4, OS_LOG_TYPE_INFO, "Calling resolveSenders completion handler with result: %@", &v9, 0xCu);
  }

  v6 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v5);
  v7 = v6;
  v8 = *(a1 + 40);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v7, OS_SIGNPOST_INTERVAL_END, v8, "resolveSendersForSearchForMessages", &unk_2547CAD0B, &v9, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2547B5544(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) speakableGroupNames];
  v4 = [v2 resolveSpeakableGroupNames:v3 forIntent:*(a1 + 40)];

  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_25479E000, v5, OS_LOG_TYPE_INFO, "Calling resolveSpeakableGroupNames completion handler with results: %@", &v10, 0xCu);
  }

  v7 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v6);
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v8, OS_SIGNPOST_INTERVAL_END, v9, "resolveSpeakableGroupNamesForSearchForMessages", &unk_2547CAD0B, &v10, 2u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_2547B5890(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_25479E000, v2, OS_LOG_TYPE_INFO, "Performing intent: %@", &buf, 0xCu);
  }

  v4 = [*(a1 + 40) messageHandlerDataSource];
  v5 = [v4 accountDataSource];
  v6 = [v5 hasMessagingAccount];

  if (v6)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v48 = 0x3032000000;
    v49 = sub_2547B5E3C;
    v50 = sub_2547B5E4C;
    v51 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_2547B5E3C;
    v43 = sub_2547B5E4C;
    v44 = 0;
    v7 = [*(a1 + 32) identifiers];
    v8 = [v7 count] == 0;

    if (v8)
    {
      v22 = [*(a1 + 32) notificationIdentifiers];
      v23 = [v22 count] == 0;

      if (v23)
      {
        v28 = *(a1 + 32);
        v27 = *(a1 + 40);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = sub_2547B5E54;
        v38[3] = &unk_279786950;
        v38[4] = &buf;
        v38[5] = &v39;
        [v27 resolveRecipientsAndSender:v28 withCompletion:v38];
        v16 = [*(a1 + 32) contents];
        v14 = [*(a1 + 32) speakableGroupNames];
        v12 = [*(a1 + 32) conversationIdentifiers];
        v13 = [*(a1 + 32) dateTimeRange];
        v15 = 0;
        v17 = 0;
        v34 = [*(a1 + 32) attributes];
      }

      else
      {
        v24 = IMLogHandleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [*(a1 + 32) notificationIdentifiers];
          v26 = [v25 count];
          *v45 = 67109120;
          v46 = v26;
          _os_log_impl(&dword_25479E000, v24, OS_LOG_TYPE_INFO, "Intent with %u notificationIdentifiers, looking at only unread messages from those threads", v45, 8u);
        }

        [*(a1 + 32) notificationIdentifiers];
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v17 = 0;
        v16 = 0;
        v15 = v34 = 2;
      }
    }

    else
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [*(a1 + 32) identifiers];
        v11 = [v10 count];
        *v45 = 67109120;
        v46 = v11;
        _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Intent with %u identifiers, looking at both unread and read messages", v45, 8u);
      }

      [*(a1 + 32) identifiers];
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = v34 = 3;
    }

    v29 = a1;
    v30 = *(a1 + 40);
    v31 = *(*(&buf + 1) + 40);
    v32 = v40[5];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_2547B5EF4;
    v35[3] = &unk_279786380;
    v33 = *(v29 + 48);
    v37 = *(v29 + 56);
    v36 = v33;
    [v30 searchMessagesWithContents:v16 messageIdentifiers:v17 notificationIdentifiers:v15 chatNames:v14 conversationIdentifiers:v12 recipients:v31 senders:v32 dateTimeRange:v13 attributes:v34 completion:v35];

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_25479E000, v18, OS_LOG_TYPE_INFO, "Could not search for messages; no messaging accounts available", &buf, 2u);
    }

    v16 = [objc_alloc(MEMORY[0x277CD4050]) initWithCode:6 userActivity:0];
    v19 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v16);
    v20 = v19;
    v21 = *(a1 + 56);
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v20, OS_SIGNPOST_INTERVAL_END, v21, "handleSearchForMessages", &unk_2547CAD0B, &buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_2547B5E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2547B5E3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2547B5E54(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v7 = a4;
  if ([v8 count])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  if ([v7 count])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }
}

void sub_2547B5EF4(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CD4050]) initWithCode:3 userActivity:0];
    [v4 setMessages:v3];
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = 134217984;
      v13 = [v3 count];
      _os_log_impl(&dword_25479E000, v5, OS_LOG_TYPE_INFO, "Returning success response with %ld messages", &v12, 0xCu);
    }

    v7 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v6);
    v8 = v7;
    v9 = *(a1 + 40);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      LOWORD(v12) = 0;
LABEL_12:
      _os_signpost_emit_with_name_impl(&dword_25479E000, v8, OS_SIGNPOST_INTERVAL_END, v9, "handleSearchForMessages", &unk_2547CAD0B, &v12, 2u);
    }
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_25479E000, v10, OS_LOG_TYPE_INFO, "Message search returned nil results (e.g. an exception was caught). Returning intent failure response.", &v12, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x277CD4050]) initWithCode:4 userActivity:0];
    v11 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v4);
    v8 = v11;
    v9 = *(a1 + 40);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      LOWORD(v12) = 0;
      goto LABEL_12;
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2547B6204(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) senders];
    v9 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2547B63BC;
    v12[3] = &unk_279786978;
    v13 = v9;
    v15 = *(a1 + 48);
    v14 = v6;
    [v7 resolvePersons:v8 forIntent:v13 completionHandler:v12];
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(a1 + 32) recipients];
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&dword_25479E000, v10, OS_LOG_TYPE_INFO, "IMAssistantMessageSearchHandler: Failed to resolve recipients: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_2547B63BC(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    (*(*(a1 + 48) + 16))(*(a1 + 48), a2, *(a1 + 40), a3);
  }

  else
  {
    a2;
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) senders];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_25479E000, v5, OS_LOG_TYPE_INFO, "IMAssistantMessageSearchHandler: Failed to resolve senders: %@", &v7, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_2547B6C30(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) messageIdentifiers];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2547B6DE4;
    v11[3] = &unk_2797869A0;
    v12 = *(a1 + 32);
    v15 = *(a1 + 48);
    v6 = v3;
    v7 = *(a1 + 40);
    v13 = v6;
    v14 = v7;
    [v4 chatsForMessageIdentifiers:v5 completion:v11];

    v8 = v12;
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [*(a1 + 32) identifier];
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Exptected at least one message matching the message identifier %@", buf, 0xCu);
    }

    v8 = [objc_alloc(MEMORY[0x277CD4298]) initWithCode:6 userActivity:0];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_2547B6DE4(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 count];
  v5 = [*(a1 + 32) messageIdentifiers];
  v6 = [v5 count];

  if (v4 != v6)
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v18, OS_LOG_TYPE_INFO, "No chats found for message identifiers", buf, 2u);
    }

    v16 = objc_alloc(MEMORY[0x277CD4298]);
    v17 = 4;
    goto LABEL_18;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v47;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v46 + 1) + 8 * i);
        if (([v12 allowedByScreenTime] & 1) == 0)
        {
          if ([v12 allowedToShowConversationSync])
          {
            v20 = 12;
          }

          else
          {
            v20 = 13;
          }

          v21 = IMLogHandleForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_25479E000, v21, OS_LOG_TYPE_INFO, "ScreenTime or DownTime restriction is in-place, returning", buf, 2u);
          }

          goto LABEL_27;
        }

        if (([v12 isMemberOfChat] & 1) == 0)
        {
          v21 = IMLogHandleForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v52 = v12;
            _os_log_impl(&dword_25479E000, v21, OS_LOG_TYPE_INFO, "Will not send to chat in Un-Joined state: %@", buf, 0xCu);
          }

          v20 = 11;
LABEL_27:

          v22 = [objc_alloc(MEMORY[0x277CD4298]) initWithCode:v20 userActivity:0];
          (*(*(a1 + 56) + 16))();

          v19 = v7;
          goto LABEL_28;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v9);
  }

  v13 = [MEMORY[0x277D18D48] sharedInstance];
  v14 = [v13 isSatelliteConnectionActive];

  if (v14)
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v15, OS_LOG_TYPE_INFO, "Message satellite service does not support retraction", buf, 2u);
    }

    v16 = objc_alloc(MEMORY[0x277CD4298]);
    v17 = 9;
    goto LABEL_18;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v19 = *(a1 + 40);
  v39 = [v19 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (!v39)
  {
    goto LABEL_47;
  }

  v23 = 0;
  v40 = *v43;
  v38 = v3;
  v41 = a1;
  while (2)
  {
    for (j = 0; j != v39; ++j)
    {
      if (*v43 != v40)
      {
        objc_enumerationMutation(v19);
      }

      v25 = *(*(&v42 + 1) + 8 * j);
      v26 = [v25 body];
      v27 = [v26 __im_messagePartIndexes];
      if ([v27 count] != 1)
      {
        v35 = IMLogHandleForCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25479E000, v35, OS_LOG_TYPE_INFO, "Message has more than one part, requiring app launch", buf, 2u);
        }

        v33 = 5;
        goto LABEL_65;
      }

      v28 = [v27 firstIndex];
      v29 = [v25 eligibilityForEditType:2 messagePartIndex:v23];
      if (v29 > 3)
      {
        switch(v29)
        {
          case 6:
            v35 = IMLogHandleForCategory();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v34 = "Messages is currently sending";
              goto LABEL_60;
            }

            break;
          case 5:
            v35 = IMLogHandleForCategory();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v34 = "Messages has been edited too many times";
              goto LABEL_60;
            }

            break;
          case 4:
LABEL_48:
            v35 = IMLogHandleForCategory();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_25479E000, v35, OS_LOG_TYPE_INFO, "Message type does not support retraction", buf, 2u);
            }

            v33 = 8;
            goto LABEL_65;
          default:
            goto LABEL_43;
        }

LABEL_61:
        v33 = 4;
LABEL_65:
        v3 = v38;

        v37 = [objc_alloc(MEMORY[0x277CD4298]) initWithCode:v33 userActivity:0];
        (*(*(v41 + 56) + 16))();

        goto LABEL_28;
      }

      switch(v29)
      {
        case 1:
          v35 = IMLogHandleForCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v34 = "Messages from different senders cannot be retracted";
LABEL_60:
            _os_log_impl(&dword_25479E000, v35, OS_LOG_TYPE_INFO, v34, buf, 2u);
            goto LABEL_61;
          }

          goto LABEL_61;
        case 2:
          goto LABEL_48;
        case 3:
          v35 = IMLogHandleForCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_25479E000, v35, OS_LOG_TYPE_INFO, "Message is too old to be retracted", buf, 2u);
          }

          v33 = 7;
          goto LABEL_65;
      }

LABEL_43:
      v30 = IMLogHandleForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [v25 guid];
        *buf = 138412290;
        v52 = v31;
        _os_log_impl(&dword_25479E000, v30, OS_LOG_TYPE_INFO, "Retracting message with identifier %@", buf, 0xCu);
      }

      v32 = [v7 objectAtIndexedSubscript:v23];
      [*(v41 + 48) retractPartIndex:v28 fromMessageItem:v25 chat:v32 backwardCompatabilityText:0];
      ++v23;
    }

    v3 = v38;
    a1 = v41;
    v39 = [v19 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v39)
    {
      continue;
    }

    break;
  }

LABEL_47:

  v16 = objc_alloc(MEMORY[0x277CD4298]);
  v17 = 3;
LABEL_18:
  v19 = [v16 initWithCode:v17 userActivity:0];
  (*(*(a1 + 56) + 16))();
LABEL_28:
}

void sub_2547B75F8(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v15 + 1) + 8 * v9) chatIdentifier];
          [v4 addObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v4;
      _os_log_impl(&dword_25479E000, v11, OS_LOG_TYPE_INFO, "Searching for chat corresponding to conversation identifiers %@", buf, 0xCu);
    }

    v12 = [*(a1 + 40) chatsWithConversationIdentifiers:v4];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Exptected at least one message matching the message identifiers %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_2547B7C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2547B7C58(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = IMLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (!v3)
  {
    if (v5)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_25479E000, v4, OS_LOG_TYPE_INFO, "Could not find audioURL", &v19, 2u);
    }

    v17 = objc_alloc(MEMORY[0x277CD3EB8]);
    v18 = 6;
    goto LABEL_15;
  }

  if (v5)
  {
    v19 = 138412290;
    v20 = v3;
    _os_log_impl(&dword_25479E000, v4, OS_LOG_TYPE_INFO, "Play audioURL: %@", &v19, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = [*(a1 + 40) messageIdentifier];
  v8 = [WeakRetained createAudioPlayerWithIdentifier:v7];
  v9 = *(a1 + 32);
  v10 = *(v9 + 32);
  *(v9 + 32) = v8;

  v11 = *(*(a1 + 32) + 32);
  if (!v11 || ![v11 startPlayingAudioURL:v3])
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_25479E000, v16, OS_LOG_TYPE_INFO, "Failed to play audio", &v19, 2u);
    }

    v17 = objc_alloc(MEMORY[0x277CD3EB8]);
    v18 = 5;
LABEL_15:
    v15 = [v17 initWithCode:v18 userActivity:0];
    (*(*(a1 + 48) + 16))();
    goto LABEL_16;
  }

  v12 = IMLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_25479E000, v12, OS_LOG_TYPE_INFO, "Started playing audio", &v19, 2u);
  }

  v13 = [*(a1 + 48) copy];
  v14 = *(a1 + 32);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
LABEL_16:
}

void sub_2547B7FF0(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_25479E000, v4, OS_LOG_TYPE_INFO, "Confirm intent completion audioURL: %@", &v8, 0xCu);
  }

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 6;
  }

  v6 = *(a1 + 32);
  v7 = [objc_alloc(MEMORY[0x277CD3EB8]) initWithCode:v5 userActivity:0];
  (*(v6 + 16))(v6, v7);
}

void sub_2547B8218(uint64_t a1, void *a2)
{
  v7 = [a2 firstObject];
  v3 = *(a1 + 32);
  v4 = [v7 attachments];
  v5 = [v4 firstObject];
  v6 = [v5 fileUrl];
  (*(v3 + 16))(v3, v6);
}

uint64_t sub_2547B8B00(void *a1)
{
  v2 = [a1 joinState];
  if (v2 < 2)
  {
    return [a1 isGroupChat] ^ 1;
  }

  else
  {
    return v2 - 2 <= 1;
  }
}

void sub_2547BAA34(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = _IMAssistantCoreGeneralSignpostLogHandle(a1);
  v2 = os_signpost_id_generate(v1);

  v4 = _IMAssistantCoreGeneralSignpostLogHandle(v3);
  v5 = v4;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v2, "imDaemonControllerConnection", &unk_2547CAD0B, &v22, 2u);
  }

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&dword_25479E000, v6, OS_LOG_TYPE_INFO, "Connecting to IMDaemonController", &v22, 2u);
  }

  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [MEMORY[0x277D18D68] sharedController];
  [v8 addListenerID:@"IMAssistantCore" capabilities:*MEMORY[0x277D19380] | *MEMORY[0x277D19370] | *MEMORY[0x277D19358] | *MEMORY[0x277D19378] | (*MEMORY[0x277D19388] | *MEMORY[0x277D19360]) | *MEMORY[0x277D19390] | *MEMORY[0x277D19368]];

  v9 = [MEMORY[0x277D18D68] sharedController];
  [v9 blockUntilConnected];

  v10 = [MEMORY[0x277D18D68] sharedController];
  [v10 _setBlocksConnectionAtResume:1];

  v11 = [MEMORY[0x277CBEAA8] date];
  v12 = qword_28118F668;
  qword_28118F668 = v11;

  [qword_28118F668 timeIntervalSinceDate:v7];
  v14 = v13;
  v15 = IMLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [MEMORY[0x277D18D68] sharedController];
    v17 = [v16 isConnected];
    v18 = @"NO";
    if (v17)
    {
      v18 = @"YES";
    }

    v22 = 134218242;
    v23 = v14;
    v24 = 2112;
    v25 = v18;
    _os_log_impl(&dword_25479E000, v15, OS_LOG_TYPE_INFO, "IMDaemonController blockUntilConnected completed in %.4f seconds. Connected: %@", &v22, 0x16u);
  }

  v20 = _IMAssistantCoreGeneralSignpostLogHandle(v19);
  v21 = v20;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v21, OS_SIGNPOST_INTERVAL_END, v2, "imDaemonControllerConnection", &unk_2547CAD0B, &v22, 2u);
  }
}

uint64_t sub_2547BAF70(uint64_t a1)
{
  qword_28118F638 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2547BB04C(uint64_t a1)
{
  qword_27F610F68 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2547BB528()
{
  qword_28118F650 = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2547BB5BC()
{
  qword_28118F620 = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2547BB650()
{
  qword_27F610F78 = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2547BBB8C(uint64_t a1)
{
  qword_28118F630 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

void sub_2547BC0F4()
{
  v9[13] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D1A808];
  v8[0] = *MEMORY[0x277D1A7F8];
  v8[1] = v0;
  v9[0] = &unk_286695E10;
  v9[1] = &unk_286695E28;
  v1 = *MEMORY[0x277D1A818];
  v8[2] = *MEMORY[0x277D1A830];
  v8[3] = v1;
  v9[2] = &unk_286695E40;
  v9[3] = &unk_286695E58;
  v2 = *MEMORY[0x277D1A800];
  v8[4] = *MEMORY[0x277D1A848];
  v8[5] = v2;
  v9[4] = &unk_286695E70;
  v9[5] = &unk_286695E88;
  v3 = *MEMORY[0x277D1A850];
  v8[6] = *MEMORY[0x277D1A840];
  v8[7] = v3;
  v9[6] = &unk_286695EA0;
  v9[7] = &unk_286695EB8;
  v4 = *MEMORY[0x277D1A820];
  v8[8] = *MEMORY[0x277D1A838];
  v8[9] = v4;
  v9[8] = &unk_286695ED0;
  v9[9] = &unk_286695EE8;
  v5 = *MEMORY[0x277D1A810];
  v8[10] = *MEMORY[0x277D1A828];
  v8[11] = v5;
  v9[10] = &unk_286695F00;
  v9[11] = &unk_286695F18;
  v8[12] = *MEMORY[0x277D1A858];
  v9[12] = &unk_286695F30;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:13];
  v7 = qword_27F610F88;
  qword_27F610F88 = v6;
}

id sub_2547BD5C8(uint64_t a1, void *a2)
{
  v2 = [a2 URL];
  v3 = [v2 absoluteString];

  return v3;
}

id sub_2547BD618(uint64_t a1, void *a2)
{
  v2 = [a2 URL];
  v3 = [v2 absoluteString];

  return v3;
}

void sub_2547BED24(uint64_t a1, void *a2, unint64_t a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v52 = [v5 messagePartIndex];
  v6 = [v5 messagePartBody];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = sub_2547BF748;
  v55[3] = &unk_279786B08;
  v56 = *(a1 + 32);
  v7 = MEMORY[0x259C19590](v55);
  v8 = *(a1 + 88);
  v9 = [v6 string];
  v54 = [v8 _stringByRemovingMessagesControlCharactersFromString:v9];

  v51 = v7;
  v53 = [*(a1 + 88) inlineGlyphContentFromAttributedMessageBody:v6 attachmentProvider:v7];
  v10 = [v5 transferGUID];

  v11 = [*(a1 + 40) messageType];
  v12 = [*(a1 + 40) bundleId];
  v13 = [v12 length];

  v14 = [v10 length];
  if ([v10 length])
  {
    v15 = [*(a1 + 32) objectForKeyedSubscript:v10];
    v16 = [v15 isAdaptiveImageGlyph] ^ 1;
  }

  else
  {
    v16 = 1;
  }

  v50 = v6;
  if (*(a1 + 48))
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 56);
      *buf = 138412290;
      v58 = v18;
      _os_log_impl(&dword_25479E000, v17, OS_LOG_TYPE_INFO, "This reaction has a reference to message %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (v14)
  {
    v21 = v13 == 0;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  if ((v22 & v16) == 1)
  {
    v23 = [*(a1 + 32) objectForKeyedSubscript:v10];
    v24 = v23;
    if (v23)
    {
      v25 = [v23 uti];
      if ([v24 isSticker])
      {
        v19 = 1;
        v20 = 5;
      }

      else if (IMUTTypeIsGIF())
      {
        v19 = 1;
        v20 = 27;
      }

      else if (IMUTTypeIsImage())
      {
        v19 = 1;
        v20 = 15;
      }

      else if (IMUTTypeIsMovie())
      {
        v19 = 1;
        v20 = 16;
      }

      else if (IMUTTypeIsVCard())
      {
        v19 = 1;
        v20 = 14;
      }

      else if (IMUTTypeIsCalendar())
      {
        v19 = 1;
        v20 = 12;
      }

      else if (IMUTTypeIsPass())
      {
        v19 = 1;
        v20 = 17;
      }

      else if (IMUTTypeIsAudio())
      {
        v19 = 1;
        v20 = 2;
      }

      else if (IMUTTypeIsMap())
      {
        v19 = 1;
        v20 = 13;
      }

      else if (IMUTTypeIsWatchface())
      {
        v19 = 1;
        v20 = 24;
      }

      else
      {
        if (IMUTTypeIsWorkout())
        {
          v20 = 24;
        }

        else
        {
          v20 = 0;
        }

        v19 = 1;
      }
    }

    else
    {
      v25 = IMLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = *(a1 + 64);
        *buf = 138412802;
        v58 = v10;
        v59 = 2048;
        v60 = v52;
        v61 = 2112;
        v62 = v26;
        _os_log_impl(&dword_25479E000, v25, OS_LOG_TYPE_INFO, "Could not find attachment matching attachmentGUID %@ for messagePart %ld of message %@", buf, 0x20u);
      }

      v20 = 0;
      v19 = 0;
    }

    goto LABEL_91;
  }

  if (a3 < 2 || v14)
  {
    if (v11 > 199)
    {
      switch(v11)
      {
        case 200:
          v19 = 0;
          v20 = 15;
          break;
        case 201:
          v19 = 0;
          v20 = 16;
          break;
        case 202:
          v19 = 0;
          v20 = 18;
          break;
        case 203:
          v19 = 0;
          v20 = 12;
          break;
        case 204:
          v19 = 0;
          v20 = 14;
          break;
        case 205:
          v19 = 0;
          v20 = 17;
          break;
        case 206:
          v19 = 0;
          v20 = 24;
          break;
        case 207:
          v19 = 0;
          v20 = 22;
          break;
        case 208:
          v19 = 0;
          v20 = 13;
          break;
        case 209:
          v19 = 0;
          v20 = 19;
          break;
        case 210:
          v19 = 0;
          v20 = 20;
          break;
        case 211:
          v19 = 0;
          v20 = 21;
          break;
        case 212:
          v19 = 0;
          v20 = 23;
          break;
        case 213:
          v19 = 0;
          v20 = 25;
          break;
        case 214:
          v29 = IMLogHandleForCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_25479E000, v29, OS_LOG_TYPE_INFO, "Cannot map IMSPIMessageTypeBalloonExtensionValue to INMessageType. Using unspecified.", buf, 2u);
          }

          goto LABEL_55;
        case 215:
          v19 = 0;
          v20 = 1000;
          break;
        case 216:
          v19 = 0;
          v20 = 1004;
          break;
        case 217:
          v19 = 0;
          v20 = 1005;
          break;
        case 218:
          v19 = 0;
          v20 = 1001;
          break;
        case 219:
          v19 = 0;
          v20 = 1002;
          break;
        case 220:
          v19 = 0;
          v20 = 1003;
          break;
        case 221:
          v19 = 0;
          v20 = 27;
          break;
        case 222:
          v19 = 0;
          v20 = 28;
          break;
        case 223:
          v19 = 0;
          v20 = 1100;
          break;
        default:
          goto LABEL_55;
      }

      goto LABEL_91;
    }

    if (v11 <= 102)
    {
      switch(v11)
      {
        case 'd':
          goto LABEL_22;
        case 'e':
          v19 = 0;
          v20 = 2;
          goto LABEL_91;
        case 'f':
          v19 = 0;
          v20 = 3;
          goto LABEL_91;
      }
    }

    else
    {
      if ((v11 - 105) < 0xA)
      {
LABEL_8:
        v19 = 0;
        v20 = 26;
LABEL_91:
        v30 = IMLogHandleForCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v58 = v20;
          _os_log_impl(&dword_25479E000, v30, OS_LOG_TYPE_INFO, "Message is type INMessageType %ld", buf, 0xCu);
        }

        if (v20 == 26)
        {
          v31 = [*(a1 + 88) INMessageReactionTypeForIMSPIMessageType:{objc_msgSend(*(a1 + 40), "messageType")}];
          if (v31 == 1)
          {
            v32 = [*(a1 + 40) associatedMessageEmoji];
          }

          else
          {
            v32 = 0;
          }

          if (v31 == *MEMORY[0x277CD4530] || v31 == *MEMORY[0x277CD44F0])
          {
            v35 = *(a1 + 88);
            v36 = [*(a1 + 40) attachments];
            v34 = [v35 INStickerForIMSPIAttachment:v36];
          }

          else
          {
            v34 = 0;
          }

          v33 = [objc_alloc(MEMORY[0x277CD3DF8]) initWithReactionType:v31 reactionDescription:0 emoji:v32 sticker:v34];
        }

        else
        {
          v33 = 0;
        }

        v37 = [*(a1 + 40) translatedMessagePartsMap];
        v38 = [MEMORY[0x277CCABB0] numberWithInteger:v52];
        v39 = [v37 objectForKey:v38];
        v40 = [v39 firstObject];

        if (v40)
        {
          v41 = [objc_alloc(MEMORY[0x277D1ACB0]) initWithDictionaryRepresentation:v40];
        }

        else
        {
          v41 = 0;
        }

        v27 = [*(a1 + 88) makeINMessage:v20 message:*(a1 + 40) numberOfAttachments:v19 personProvider:*(a1 + 72) referencedINMessage:*(a1 + 48) content:v54 reaction:v33 inlineGlyphContent:v53 translatedMessagePart:v41];
        if (v27)
        {
          v42 = [*(a1 + 80) lastObject];
          v43 = v42;
          if (v19 && v20 <= 0x18 && ((1 << v20) & 0x1C3F038) != 0 && v20 == [v42 messageType])
          {
            v44 = IMLogHandleForCategory();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              v45 = *(a1 + 64);
              *buf = 134218242;
              v58 = v52;
              v59 = 2112;
              v60 = v45;
              _os_log_impl(&dword_25479E000, v44, OS_LOG_TYPE_INFO, "Aggregating message part %ld of %@ to previous INMessage", buf, 0x16u);
            }

            v46 = [v43 numberOfAttachments];
            v47 = [v46 intValue];

            v48 = [MEMORY[0x277CCABB0] numberWithInteger:v47 + 1];
            [v43 setValue:v48 forKey:@"numberOfAttachments"];
          }

          else
          {
            [*(a1 + 80) addObject:v27];
          }

          v6 = v50;
        }

        else
        {
          v43 = IMLogHandleForCategory();
          v6 = v50;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            v49 = *(a1 + 64);
            *buf = 134218242;
            v58 = v52;
            v59 = 2112;
            v60 = v49;
            _os_log_impl(&dword_25479E000, v43, OS_LOG_TYPE_INFO, "Unable to convert message part %ld of %@ to INMessage", buf, 0x16u);
          }
        }

        goto LABEL_119;
      }

      if (v11 == 103)
      {
        v19 = 0;
        v20 = 4;
        goto LABEL_91;
      }

      if (v11 == 104)
      {
        v19 = 0;
        v20 = 5;
        goto LABEL_91;
      }
    }

LABEL_55:
    v20 = 0;
    v19 = 0;
    goto LABEL_91;
  }

  if ([v54 length])
  {
LABEL_22:
    v19 = 0;
    v20 = 1;
    goto LABEL_91;
  }

  v27 = IMLogHandleForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = *(a1 + 64);
    *buf = 134218242;
    v58 = v52;
    v59 = 2112;
    v60 = v28;
    _os_log_impl(&dword_25479E000, v27, OS_LOG_TYPE_INFO, "Skipping empty text message part %ld of %@", buf, 0x16u);
  }

LABEL_119:
}

void sub_2547BF92C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = (*(*(a1 + 40) + 16))();
    if ([v8 isAdaptiveImageGlyph])
    {
      v9 = a3 == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && a4 != 0x7FFFFFFFFFFFFFFFLL && a4 != 0)
    {
      v12 = objc_alloc(MEMORY[0x277CBEB38]);
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v14 = *MEMORY[0x277CD44D8];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
      v16 = [v12 initWithObjectsAndKeys:{v13, v14, v15, *MEMORY[0x277CD44C0], 0}];

      v17 = [v8 adaptiveImageGlyphContentDescription];
      if ([v17 length] && (objc_msgSend(v17, "isEqual:", @"Emoji") & 1) == 0)
      {
        v23 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CD45A0]];
        [v16 setObject:v23 forKey:*MEMORY[0x277CD44E0]];

        [v16 setObject:v17 forKey:*MEMORY[0x277CD44D0]];
      }

      else
      {
        v18 = *(a1 + 48);
        v29[0] = v8;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
        v20 = [v18 INStickerForIMSPIAttachment:v19];

        v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v20, "type")}];
        [v16 setObject:v21 forKey:*MEMORY[0x277CD44E0]];

        v22 = [v20 avatarDescriptor];
        if (v22)
        {
          [v20 avatarDescriptor];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v24 = ;
        [v16 setObject:v24 forKey:*MEMORY[0x277CD44B0]];

        v25 = [v20 stickerDescription];
        if (v25)
        {
          [v20 stickerDescription];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v26 = ;
        [v16 setObject:v26 forKey:*MEMORY[0x277CD44C8]];

        v27 = [v20 appBundleID];
        if (v27)
        {
          [v20 appBundleID];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v28 = ;
        [v16 setObject:v28 forKey:*MEMORY[0x277CD44B8]];
      }

      [*(a1 + 32) addObject:v16];
    }
  }
}

uint64_t sub_2547C071C(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v8 + 1) + 8 * i) __imcore__isSuccess])
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

void sub_2547C0A0C(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(a1 + 32) identifiers];
  v1 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v18;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v18 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v17 + 1) + 8 * i);
        v6 = [MEMORY[0x277D18D68] sharedController];
        v7 = [v6 synchronousRemoteDaemon];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = sub_2547C0C88;
        v16[3] = &unk_279786B80;
        v16[4] = v5;
        [v7 markMessageAsReadWithGUID:v5 callerOrigin:1 reply:v16];
      }

      v2 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v2);
  }

  v8 = [objc_alloc(MEMORY[0x277CD40E8]) initWithCode:3 userActivity:0];
  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = v8;
    _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Calling completion with response: %@", buf, 0xCu);
  }

  v11 = _IMAssistantCoreGeneralSignpostLogHandle(v10);
  v12 = v11;
  v13 = *(a1 + 48);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v12, OS_SIGNPOST_INTERVAL_END, v13, "handleSetMessageAttributeIntent", &unk_2547CAD0B, buf, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_2547C0C88(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"NO";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"YES";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_25479E000, v4, OS_LOG_TYPE_INFO, "Message marked as read: %@ success: %@", &v7, 0x16u);
  }
}

id sub_2547C1388(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a3 > 102)
  {
    if ((a3 - 103) >= 2)
    {
      goto LABEL_30;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
LABEL_20:
      v15 = [a1 __im_assistant_emailAddressesMatchingLabel:v6];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v24;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [[IMAssistantHandleFromContact alloc] initWithCNLabeledEmailAddress:*(*(&v23 + 1) + 8 * i) contact:a1];
            if (v20)
            {
              [v8 addObject:v20];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v17);
      }

      goto LABEL_31;
    }

    if (a3 == 2)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_30:
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    goto LABEL_31;
  }

  v7 = 1;
LABEL_8:
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [a1 __im_assistant_phoneNumbersMatchingLabel:v6];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [[IMAssistantHandleFromContact alloc] initWithCNLabeledPhoneNumber:*(*(&v27 + 1) + 8 * j) contact:a1];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  if (v7)
  {
    goto LABEL_20;
  }

LABEL_31:
  v21 = [v8 copy];

  return v21;
}

id sub_2547C1620(void *a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [a1 phoneNumbers];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (![v4 length] || INPersonHandleLabelEqualsCNLabeledValue())
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

id sub_2547C1780(void *a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [a1 emailAddresses];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (![v4 length] || INPersonHandleLabelEqualsCNLabeledValue())
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

id sub_2547C18E0(void *a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [MEMORY[0x277CD3E98] __im_assistant_handleTypeForString:v4];
  if (v6 == 2)
  {
    v7 = [a1 emailAddresses];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v7);
          }

          v18 = [[IMAssistantHandleFromContact alloc] initWithCNLabeledEmailAddress:*(*(&v22 + 1) + 8 * i) contact:a1];
          v19 = v18;
          if (v18 && [(IMAssistantHandleFromContact *)v18 matchesHandleID:v4])
          {
            [v5 addObject:v19];
          }
        }

        v15 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v15);
    }
  }

  else
  {
    if (v6 != 1)
    {
      goto LABEL_25;
    }

    v7 = [a1 phoneNumbers];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (j = 0; j != v9; ++j)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [[IMAssistantHandleFromContact alloc] initWithCNLabeledPhoneNumber:*(*(&v26 + 1) + 8 * j) contact:a1];
          v13 = v12;
          if (v12 && [(IMAssistantHandleFromContact *)v12 matchesHandleID:v4])
          {
            [v5 addObject:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }
  }

LABEL_25:
  v20 = [v5 copy];

  return v20;
}

id sub_2547C1B4C(void *a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v35 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB40]);
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v31 = a3;
    v32 = a1;
    v33 = v8;
    v10 = [a1 __im_assistant_phoneNumbersMatchingLabel:v8];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v40 + 1) + 8 * i) value];
          v16 = [v15 stringValue];
          v17 = IMInternationalForPhoneNumberWithOptions();
          if ([v17 length])
          {
            v18 = INPersonHandleLabelForCNLabeledValue();
            v19 = [objc_alloc(MEMORY[0x277CD3E98]) initWithValue:v17 type:2 label:v18];
            [v9 addObject:v19];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v12);
    }

    a1 = v32;
    v8 = v33;
    a3 = v31;
  }

  if (a3 <= 1)
  {
    v34 = v8;
    v20 = [a1 __im_assistant_emailAddressesMatchingLabel:v8];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v37;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v36 + 1) + 8 * j) value];
          v26 = IMCanonicalFormForEmail();
          if ([v26 length])
          {
            v27 = INPersonHandleLabelForCNLabeledValue();
            v28 = [objc_alloc(MEMORY[0x277CD3E98]) initWithValue:v26 type:1 label:v27];
            [v9 addObject:v28];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v22);
    }

    v8 = v34;
  }

  v29 = [v9 array];

  return v29;
}

id sub_2547C1E5C(void *a1, uint64_t a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v33 = a1;
  [a1 phoneNumbers];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v5 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v39;
    *&v6 = 138412546;
    v29 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v38 + 1) + 8 * i) value];
        v11 = [v10 stringValue];
        v12 = [v4 imHandleWithID:v11];
        if (v12)
        {
          v13 = INPersonHandleLabelForCNLabeledValue();
          v14 = objc_alloc(MEMORY[0x277CD3E90]);
          v15 = [v14 __im_assistant_initWithContact:v33 imHandle:v12 type:2 label:v13];

          [v32 addObject:v15];
        }

        else
        {
          v13 = IMLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = v29;
            v44 = v10;
            v45 = 2112;
            v46 = v33;
            _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Could not create IMHandle with phone number: %@ from contact: %@", buf, 0x16u);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v7);
  }

  v16 = [v33 emailAddresses];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v35;
    *&v18 = 138412546;
    v30 = v18;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = [*(*(&v34 + 1) + 8 * j) value];
        v23 = [v4 imHandleWithID:v22];
        if (v23)
        {
          v24 = INPersonHandleLabelForCNLabeledValue();
          v25 = objc_alloc(MEMORY[0x277CD3E90]);
          v26 = [v25 __im_assistant_initWithContact:v33 imHandle:v23 type:1 label:v24];

          [v32 addObject:v26];
        }

        else
        {
          v24 = IMLogHandleForCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = v30;
            v44 = v22;
            v45 = 2112;
            v46 = v33;
            _os_log_impl(&dword_25479E000, v24, OS_LOG_TYPE_INFO, "Could not create IMHandle with email address: %@ from contact: %@", buf, 0x16u);
          }
        }
      }

      v19 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v19);
  }

  v27 = [v32 array];

  return v27;
}

id sub_2547C2234(void *a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v1 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v2 = [MEMORY[0x277D18D28] sharedInstance];
  v3 = [v2 accounts];

  obj = v3;
  v27 = [v3 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v27)
  {
    v26 = *v39;
    do
    {
      v4 = 0;
      do
      {
        if (*v39 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v4;
        v5 = *(*(&v38 + 1) + 8 * v4);
        v6 = [a1 phoneNumbers];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v34 objects:v49 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v35;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v35 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = [*(*(&v34 + 1) + 8 * i) value];
              v12 = [v11 stringValue];
              v13 = [v5 imHandleWithID:v12];
              if (v13)
              {
                [v1 addObject:v13];
              }

              else
              {
                v14 = IMLogHandleForCategory();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412802;
                  v44 = v11;
                  v45 = 2112;
                  v46 = v5;
                  v47 = 2112;
                  v48 = a1;
                  _os_log_impl(&dword_25479E000, v14, OS_LOG_TYPE_INFO, "Could not create IMHandle with phone number: %@ account: %@ from contact: %@ ", buf, 0x20u);
                }
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v34 objects:v49 count:16];
          }

          while (v8);
        }

        v15 = [a1 emailAddresses];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v16 = [v15 countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v31;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v31 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [*(*(&v30 + 1) + 8 * j) value];
              v21 = [v5 imHandleWithID:v20];
              if (v21)
              {
                [v1 addObject:v21];
              }

              else
              {
                v22 = IMLogHandleForCategory();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412802;
                  v44 = v20;
                  v45 = 2112;
                  v46 = v5;
                  v47 = 2112;
                  v48 = a1;
                  _os_log_impl(&dword_25479E000, v22, OS_LOG_TYPE_INFO, "Could not create IMHandle with email address: %@ account: %@ from contact: %@", buf, 0x20u);
                }
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v30 objects:v42 count:16];
          }

          while (v17);
        }

        v4 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v27);
  }

  v23 = [v1 array];

  return v23;
}

void sub_2547C3048()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("IMAssistantIMSPIQueue", v2);
  v1 = qword_28118F690;
  qword_28118F690 = v0;
}

void sub_2547C37BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v3);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v5, OS_SIGNPOST_INTERVAL_END, v6, "queryMessagesWithChatIdentifiers", &unk_2547CAD0B, v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2547C3B60(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v18;
    *&v4 = 138412546;
    v15 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 account];
        v10 = [v9 service];
        v11 = [v10 name];

        v12 = [v8 ID];
        if ([v12 length] && objc_msgSend(v11, "length"))
        {
          v13 = IMCopyAnyServiceGUIDForChat();
          if ([v13 length])
          {
            [*(a1 + 32) addObject:v13];
          }

          else
          {
            v14 = IMLogHandleForCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = v15;
              v22 = v12;
              v23 = 2112;
              v24 = v11;
              _os_log_impl(&dword_25479E000, v14, OS_LOG_TYPE_INFO, "Could not construct chat GUID from handleID: %@ service: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v13 = IMLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v22 = v12;
            v23 = 2112;
            v24 = v11;
            v25 = 2112;
            v26 = v8;
            _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Could not extract handleID: %@ or service: %@ from IMHandle %@", buf, 0x20u);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v5);
  }
}

void sub_2547C42AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v3);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v5, OS_SIGNPOST_INTERVAL_END, v6, "queryMessagesWithIDs", &unk_2547CAD0B, v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2547C4510(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v3);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v5, OS_SIGNPOST_INTERVAL_END, v6, "queryUnreadMessages", &unk_2547CAD0B, v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2547C4784(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v3);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v5, OS_SIGNPOST_INTERVAL_END, v6, "queryMessagesWithGUIDs", &unk_2547CAD0B, v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2547C49F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v3);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v5, OS_SIGNPOST_INTERVAL_END, v6, "queryMessagesWithRowIDs", &unk_2547CAD0B, v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_2547C4C8C(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    while (1)
    {
      v6 = 0;
LABEL_4:
      if (*v23 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v22 + 1) + 8 * v6);
      v8 = [*(a1 + 40) objectForKey:v7];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v17;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = *v19;
LABEL_8:
      v13 = 0;
      while (1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(*(&v18 + 1) + 8 * v13) matchesPerson:v7 withUnifiedContactIdentifiers:v8])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v11)
          {
            goto LABEL_8;
          }

          goto LABEL_18;
        }
      }

      if (++v6 != v4)
      {
        goto LABEL_4;
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      v14 = 1;
      if (!v4)
      {
        goto LABEL_20;
      }
    }

LABEL_18:

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

LABEL_20:

  return v14;
}

uint64_t sub_2547C5054(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [*(a1 + 40) objectForKey:{v9, v13}];
        LOBYTE(v9) = [v3 matchesPerson:v9 withUnifiedContactIdentifiers:v10];

        if (v9)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

id sub_2547C6024(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a2 normalizedID];
  if (MEMORY[0x259C19130]() || IMStringIsEmail())
  {
    v3 = IMCanonicalizeFormattedString();
  }

  else
  {
    if (!MEMORY[0x259C19110](v2))
    {
      v4 = IMLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = v2;
        _os_log_impl(&dword_25479E000, v4, OS_LOG_TYPE_INFO, "Could not canonicalize handle %@ because it is neither a phone number nor an email address.", &v7, 0xCu);
      }
    }

    v3 = v2;
  }

  v5 = v3;

  return v5;
}

id sub_2547C7168(uint64_t a1, void *a2)
{
  v92 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v91 = [v3 count];
    _os_log_impl(&dword_25479E000, v4, OS_LOG_TYPE_INFO, "Filter block executed with %ld messages.", buf, 0xCu);
  }

  v82 = [MEMORY[0x277CBEB18] array];
  v5 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v82);
  v6 = os_signpost_id_generate(v5);

  v8 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v7);
  v9 = v8;
  spid = v6;
  v80 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "filterMessages", &unk_2547CAD0B, buf, 2u);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = v3;
  v10 = [obj countByEnumeratingWithState:&v85 objects:v89 count:16];
  if (v10)
  {
    v11 = v10;
    v84 = *v86;
    do
    {
      v12 = 0;
      do
      {
        if (*v86 != v84)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v85 + 1) + 8 * v12);
        v14 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v10);
        v15 = os_signpost_id_generate(v14);

        v17 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v16);
        v18 = v17;
        v19 = v15 - 1;
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25479E000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v15, "filterIndividualMessage", &unk_2547CAD0B, buf, 2u);
        }

        v21 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v20);
        v22 = os_signpost_id_generate(v21);

        v24 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v23);
        v25 = v24;
        v26 = v22 - 1;
        if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25479E000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v22, "filterMessageScreentimeCheck", &unk_2547CAD0B, buf, 2u);
        }

        v27 = [v13 allowedByScreenTime];
        if (v27)
        {
          v28 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v27);
          v29 = v28;
          if (v26 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25479E000, v29, OS_SIGNPOST_INTERVAL_END, v22, "filterMessageScreentimeCheck", &unk_2547CAD0B, buf, 2u);
          }

          if (*(a1 + 72) == 1 && [*(a1 + 32) messageIsFromBlackholedChat:v13])
          {
            v30 = IMLogHandleForCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v91 = v13;
              _os_log_impl(&dword_25479E000, v30, OS_LOG_TYPE_INFO, "Message filtered because it is from a blackholed chat: %@", buf, 0xCu);
            }

            v32 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v31);
            v33 = v32;
            if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
            {
              goto LABEL_80;
            }
          }

          else
          {
            v40 = *(a1 + 40);
            if (v40 && ([v13 date], v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v40, "containsDate:", v41), v41, (v42 & 1) == 0))
            {
              v56 = IMLogHandleForCategory();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v91 = v13;
                _os_log_impl(&dword_25479E000, v56, OS_LOG_TYPE_INFO, "Message filtered because it did not fall within the specified date interval: %@", buf, 0xCu);
              }

              v58 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v57);
              v33 = v58;
              if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
              {
                goto LABEL_80;
              }
            }

            else
            {
              if ([v13 isRead])
              {
                v43 = 1;
              }

              else
              {
                v43 = [v13 isOutgoing];
              }

              if (*(a1 + 73) == 1 && v43)
              {
                v44 = IMLogHandleForCategory();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v91 = v13;
                  _os_log_impl(&dword_25479E000, v44, OS_LOG_TYPE_INFO, "Message filtered due to not being an unread message: %@", buf, 0xCu);
                }

                v46 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v45);
                v33 = v46;
                if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
                {
                  goto LABEL_80;
                }
              }

              else if (v43 & 1 | ((*(a1 + 74) & 1) == 0))
              {
                v47 = *(a1 + 48);
                if (v47 && ([v13 body], v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(v47, "evaluateWithObject:", v48), v48, (v49 & 1) == 0))
                {
                  v62 = IMLogHandleForCategory();
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v91 = v13;
                    _os_log_impl(&dword_25479E000, v62, OS_LOG_TYPE_INFO, "Message filtered because it did not pass the contents predicate: %@", buf, 0xCu);
                  }

                  v64 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v63);
                  v33 = v64;
                  if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
                  {
                    goto LABEL_80;
                  }
                }

                else
                {
                  if (*(a1 + 56))
                  {
                    v33 = [v13 sender];
                    v50 = [*(a1 + 32) chatParticipantForSPIHandle:v33];
                    if (([*(a1 + 56) evaluateWithObject:v50] & 1) == 0)
                    {
                      v65 = IMLogHandleForCategory();
                      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v91 = v13;
                        _os_log_impl(&dword_25479E000, v65, OS_LOG_TYPE_INFO, "Message filtered because it did not pass the senders predicate: %@", buf, 0xCu);
                      }

                      v67 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v66);
                      v68 = v67;
                      if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v67))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_25479E000, v68, OS_SIGNPOST_INTERVAL_END, v15, "filterIndividualMessage", &unk_2547CAD0B, buf, 2u);
                      }

                      goto LABEL_81;
                    }
                  }

                  if (*(a1 + 64))
                  {
                    v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
                    v51 = [v13 recipients];
                    if (v51)
                    {
                      [v33 addObjectsFromArray:v51];
                    }

                    v52 = [v13 sender];
                    if (v52)
                    {
                      [v33 addObject:v52];
                    }

                    v53 = [*(a1 + 32) chatParticipantsForSPIHandles:v33];
                    if (([*(a1 + 64) evaluateWithObject:v53] & 1) == 0)
                    {
                      v81 = v51;
                      v69 = IMLogHandleForCategory();
                      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v91 = v13;
                        _os_log_impl(&dword_25479E000, v69, OS_LOG_TYPE_INFO, "Message filtered because it did not pass the recipients predicate: %@", buf, 0xCu);
                      }

                      v71 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v70);
                      v72 = v71;
                      if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_25479E000, v72, OS_SIGNPOST_INTERVAL_END, v15, "filterIndividualMessage", &unk_2547CAD0B, buf, 2u);
                      }

                      goto LABEL_81;
                    }
                  }

                  v54 = IMLogHandleForCategory();
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v91 = v13;
                    _os_log_impl(&dword_25479E000, v54, OS_LOG_TYPE_INFO, "Message passed filter: %@", buf, 0xCu);
                  }

                  v55 = _IMAssistantCoreSearchForMessageSignpostLogHandle([v82 addObject:v13]);
                  v33 = v55;
                  if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
                  {
                    goto LABEL_80;
                  }
                }
              }

              else
              {
                v59 = IMLogHandleForCategory();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v91 = v13;
                  _os_log_impl(&dword_25479E000, v59, OS_LOG_TYPE_INFO, "Message filtered due to not being a read message: %@", buf, 0xCu);
                }

                v61 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v60);
                v33 = v61;
                if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
                {
                  goto LABEL_80;
                }
              }
            }
          }
        }

        else
        {
          v34 = IMLogHandleForCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v91 = v13;
            _os_log_impl(&dword_25479E000, v34, OS_LOG_TYPE_INFO, "Message filtered because it did not pass downtime allowlist check: %@", buf, 0xCu);
          }

          v36 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v35);
          v37 = v36;
          if (v26 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25479E000, v37, OS_SIGNPOST_INTERVAL_END, v22, "filterMessageScreentimeCheck", &unk_2547CAD0B, buf, 2u);
          }

          v39 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v38);
          v33 = v39;
          if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
          {
LABEL_80:
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25479E000, v33, OS_SIGNPOST_INTERVAL_END, v15, "filterIndividualMessage", &unk_2547CAD0B, buf, 2u);
          }
        }

LABEL_81:

        ++v12;
      }

      while (v11 != v12);
      v10 = [obj countByEnumeratingWithState:&v85 objects:v89 count:16];
      v11 = v10;
    }

    while (v10);
  }

  v73 = IMLogHandleForCategory();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
  {
    v74 = [v82 count];
    *buf = 134217984;
    v91 = v74;
    _os_log_impl(&dword_25479E000, v73, OS_LOG_TYPE_INFO, "Filter block completed with %ld messages.", buf, 0xCu);
  }

  v76 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v75);
  v77 = v76;
  if (v80 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v76))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v77, OS_SIGNPOST_INTERVAL_END, spid, "filterMessages", &unk_2547CAD0B, buf, 2u);
  }

  return v82;
}

id sub_2547C7D8C(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v3);
  v5 = os_signpost_id_generate(v4);

  v7 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v6);
  v8 = v7;
  v24 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "convertMessages", &unk_2547CAD0B, buf, 2u);
  }

  spid = v5;

  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v3 count];
    *buf = 134217984;
    v31 = v10;
    _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Conversion block executed with %ld messages.", buf, 0xCu);
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v3;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [IMAssistantINMessageConverter INMessagesForSPIMessage:*(*(&v25 + 1) + 8 * i) personProvider:*(a1 + 32), spid];
        v18 = IMLogHandleForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v31 = v17;
          _os_log_impl(&dword_25479E000, v18, OS_LOG_TYPE_INFO, "Finished converting message: %@", buf, 0xCu);
        }

        [v11 addObjectsFromArray:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  v20 = _IMAssistantCoreSearchForMessageSignpostLogHandle(v19);
  v21 = v20;
  if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v21, OS_SIGNPOST_INTERVAL_END, spid, "convertMessages", &unk_2547CAD0B, buf, 2u);
  }

  return v11;
}

void sub_2547C8080(void *a1)
{
  v3 = (*(a1[4] + 16))();
  v2 = (*(a1[5] + 16))();
  (*(a1[6] + 16))();
}

id sub_2547C8478(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasPrefix:@"x-apple-sms:guid="])
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = [v2 substringFromIndex:{objc_msgSend(@"x-apple-sms:guid=", "length")}];
    v5 = [v3 numberWithLongLong:{objc_msgSend(v4, "longLongValue")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}