void sub_22B5AEA28(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5AE968);
  }

  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5AEAB0(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing played receipt: %@, %@", &v16, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing and cleaning up: %@, ", &v16, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

void sub_22B5AEC8C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5AEB70);
  }

  _Unwind_Resume(a1);
}

void sub_22B5AECC0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v67[4] = *MEMORY[0x277D85DE8];
  v46 = a2;
  v12 = a3;
  v49 = a4;
  v13 = a5;
  v47 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v45 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedDeliveredQuietlyReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v45, &state);
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_22B4D7710;
  v60 = sub_22B4D78E4;
  v44 = v14;
  v61 = v44;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v49 fromPushID];
      *buf = 138412290;
      v64 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for delivered quietly receipt fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorDeliveredQuietlyReceipt", @"BlastDoor");
  v48 = v12;
  isKindOfClass = objc_opt_isKindOfClass();
  v18 = v12;
  if ((isKindOfClass & 1) == 0)
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = [[IMDeliveredQuietlyReceiptPipelineParameter alloc] initWithDefusedMessage:v19 idsTrustedData:v49];
  if (v20)
  {
    v21 = [IMFindAccountProcessingPipelineComponent alloc];
    v22 = [v13 imdAccount];
    v23 = [(IMFindAccountProcessingPipelineComponent *)v21 initWithReceivingAccount:v22];

    v24 = [IMMessageFromStoragePipelineComponent alloc];
    v25 = [v13 storageController];
    v26 = [v13 broadcaster];
    v27 = [(IMMessageFromStoragePipelineComponent *)v24 initWithStorageProcessingType:0 storageController:v25 broadcaster:v26];

    v28 = [[IMDeliveredQuietlyReceiptProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v29 = [IMMessageFromStoragePipelineComponent alloc];
    v30 = [v13 storageController];
    v31 = [v13 broadcaster];
    v32 = [(IMMessageFromStoragePipelineComponent *)v29 initWithStorageProcessingType:1 storageController:v30 broadcaster:v31];

    v33 = MEMORY[0x277D18E00];
    v67[0] = v23;
    v67[1] = v27;
    v67[2] = v28;
    v67[3] = v32;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];
    v35 = [v33 pipelineFromComponents:v34];

    v36 = [v46 handler];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_22B5AF240;
    v50[3] = &unk_278705998;
    v51 = v20;
    v52 = v13;
    v37 = v47;
    v38 = *(a1 + 32);
    v53 = v37;
    v54 = &v56;
    v55 = v38;
    [v36 handleMessageDeliveredQuietlyReceiptWithPipeline:v35 input:v51 completionBlock:v50];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        *buf = 138412546;
        v64 = v40;
        v65 = 2048;
        v66 = v12;
        v41 = v40;
        _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Failed getting delivered quietly blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v42 = [v13 service];
    [v42 sendAckForMessageWithContext:v47];

    v23 = v57[5];
    v57[5] = 0;
  }

  _Block_object_dispose(&v56, 8);
  os_activity_scope_leave(&state);
}

void sub_22B5AF1BC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5AF0FCLL);
  }

  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5AF240(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing delivered quietly receipt: %@, %@", &v16, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing delivered quietly and cleaning up: %@, ", &v16, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

void sub_22B5AF41C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5AF300);
  }

  _Unwind_Resume(a1);
}

void sub_22B5AF450(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v67[4] = *MEMORY[0x277D85DE8];
  v46 = a2;
  v12 = a3;
  v49 = a4;
  v13 = a5;
  v47 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v45 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedNotifyReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v45, &state);
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_22B4D7710;
  v60 = sub_22B4D78E4;
  v44 = v14;
  v61 = v44;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v49 fromPushID];
      *buf = 138412290;
      v64 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for notify recipient fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorNotifyRecipientCommand", @"BlastDoor");
  v48 = v12;
  isKindOfClass = objc_opt_isKindOfClass();
  v18 = v12;
  if ((isKindOfClass & 1) == 0)
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = [[IMNotifyRecipientCommandPipelineParameter alloc] initWithDefusedMessage:v19 idsTrustedData:v49];
  if (v20)
  {
    v21 = [IMFindAccountProcessingPipelineComponent alloc];
    v22 = [v13 imdAccount];
    v23 = [(IMFindAccountProcessingPipelineComponent *)v21 initWithReceivingAccount:v22];

    v24 = [IMMessageFromStoragePipelineComponent alloc];
    v25 = [v13 storageController];
    v26 = [v13 broadcaster];
    v27 = [(IMMessageFromStoragePipelineComponent *)v24 initWithStorageProcessingType:0 storageController:v25 broadcaster:v26];

    v28 = [[IMNotifyRecipientCommandProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v29 = [IMMessageFromStoragePipelineComponent alloc];
    v30 = [v13 storageController];
    v31 = [v13 broadcaster];
    v32 = [(IMMessageFromStoragePipelineComponent *)v29 initWithStorageProcessingType:1 storageController:v30 broadcaster:v31];

    v33 = MEMORY[0x277D18E00];
    v67[0] = v23;
    v67[1] = v27;
    v67[2] = v28;
    v67[3] = v32;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];
    v35 = [v33 pipelineFromComponents:v34];

    v36 = [v46 handler];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_22B5AF9D0;
    v50[3] = &unk_278705998;
    v51 = v20;
    v52 = v13;
    v37 = v47;
    v38 = *(a1 + 32);
    v53 = v37;
    v54 = &v56;
    v55 = v38;
    [v36 handleNotifyRecipientCommandWithPipeline:v35 input:v51 completionBlock:v50];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        *buf = 138412546;
        v64 = v40;
        v65 = 2048;
        v66 = v12;
        v41 = v40;
        _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Failed getting notify recipient blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v42 = [v13 service];
    [v42 sendAckForMessageWithContext:v47];

    v23 = v57[5];
    v57[5] = 0;
  }

  _Block_object_dispose(&v56, 8);
  os_activity_scope_leave(&state);
}

void sub_22B5AF94C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5AF88CLL);
  }

  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5AF9D0(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing notify recipient command: %@, %@", &v16, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing notify recipient command and cleaning up: %@, ", &v16, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

void sub_22B5AFBAC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5AFA90);
  }

  _Unwind_Resume(a1);
}

void sub_22B5AFBE0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v125[16] = *MEMORY[0x277D85DE8];
  v99 = a2;
  v97 = a3;
  v100 = a4;
  v98 = a5;
  v93 = a6;
  v12 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v90 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedMessage", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v90, &state);
  v112 = 0;
  v113 = &v112;
  v114 = 0x3032000000;
  v115 = sub_22B4D7710;
  v116 = sub_22B4D78E4;
  v89 = v12;
  v117 = v89;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v100 fromPushID];
      *buf = 138412290;
      v120 = v14;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Setting up pipeline for message fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorTextMessage", @"BlastDoor");
  isKindOfClass = objc_opt_isKindOfClass();
  v16 = v97;
  if ((isKindOfClass & 1) == 0)
  {
    v16 = 0;
  }

  v91 = v16;
  v17 = [v91 messageSubType];
  v18 = [v17 type];

  if (v18 <= 3)
  {
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v95 = [[IMAssociatedMessagePipelineParameter alloc] initWithBD:v91 idsTrustedData:v100];
        v21 = [IMAssociatedMessageProcessingPipelineComponent alloc];
      }

      else
      {
        v95 = [[IMBalloonPluginPipelineParameter alloc] initWithBD:v91 idsTrustedData:v100];
        v21 = [IMBalloonPluginProcessingPipelineComponent alloc];
      }

      v20 = [v99 messageStore];
      v92 = [(IMTextMessageProcessingPipelineComponent *)v21 initWithMessageStore:v20];
      goto LABEL_27;
    }

    if (!v18)
    {
      v95 = [[IMTypingIndicatorPipelineParameter alloc] initWithBD:v91 idsTrustedData:v100];
      v23 = [IMTypingIndicatorProcessingPipelineComponent alloc];
      v20 = [v99 messageStore];
      v92 = [(IMTextMessageProcessingPipelineComponent *)v23 initWithMessageStore:v20];
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v18 > 5)
  {
    switch(v18)
    {
      case 6:
        v95 = [[IMEmojiTapbackMessagePipelineParameter alloc] initWithBD:v91 idsTrustedData:v100];
        v24 = [IMEmojiTapbackMessageProcessingPipelineComponent alloc];
        v20 = [v99 messageStore];
        v92 = [(IMTextMessageProcessingPipelineComponent *)v24 initWithMessageStore:v20];
        goto LABEL_27;
      case 7:
        v95 = [[IMStickerTapbackMessagePipelineParameter alloc] initWithBD:v91 idsTrustedData:v100];
        v25 = [IMStickerTapbackMessageProcessingPipelineComponent alloc];
        v20 = [v99 messageStore];
        v92 = [(IMTextMessageProcessingPipelineComponent *)v25 initWithMessageStore:v20];
        goto LABEL_27;
      case 8:
        v95 = [[IMCustomAcknowledgementMessagePipelineParameter alloc] initWithBD:v91 idsTrustedData:v100];
        v19 = [IMCustomAcknowledgementMessageProcessingPipelineComponent alloc];
        v20 = [v99 messageStore];
        v92 = [(IMTextMessageProcessingPipelineComponent *)v19 initWithMessageStore:v20];
        goto LABEL_27;
    }

LABEL_26:
    v95 = [[IMTextMessagePipelineParameter alloc] initWithBD:v91 idsTrustedData:v100];
    v26 = [IMTextMessageProcessingPipelineComponent alloc];
    v20 = [v99 messageStore];
    v92 = [(IMTextMessageProcessingPipelineComponent *)v26 initWithMessageStore:v20];
    goto LABEL_27;
  }

  if (v18 == 4)
  {
    v95 = [[IMStickerMessagePipelineParameter alloc] initWithBD:v91 idsTrustedData:v100];
    v92 = [[IMStickerMessageProcessingPipelineComponent alloc] initWithPipelineResources:v98];
    goto LABEL_28;
  }

  v95 = [[IMTextMessagePipelineParameter alloc] initWithBD:v91 idsTrustedData:v100];
  v22 = [IMAudioMessageProcessingPipelineComponent alloc];
  v20 = [v99 messageStore];
  v92 = [(IMTextMessageProcessingPipelineComponent *)v22 initWithMessageStore:v20];
LABEL_27:

LABEL_28:
  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [(IMTextMessagePipelineParameter *)v95 GUID];
      *buf = 138412290;
      v120 = v28;
      _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "messageCreationComponent created for %@", buf, 0xCu);
    }
  }

  v96 = [v98 imdAccount];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v94 = [v96 session];
    if (objc_opt_respondsToSelector())
    {
      v29 = [v96 idsAccount];
      v30 = [v94 _pushHandlerForIDSAccount:v29];

      if ((!v30 || (objc_opt_respondsToSelector() & 1) == 0) && IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v120 = v30;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Push handler either nil or session did not respond to incomingMessage: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_49;
      }

      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v120 = v94;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Session either nil or did not respond to _pushHandlerForIDSAccount: %@", buf, 0xCu);
      }
    }

LABEL_49:
    if (v94)
    {
      goto LABEL_55;
    }

    goto LABEL_50;
  }

  if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v120 = v96;
      _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Account was not the right class: %@", buf, 0xCu);
    }
  }

LABEL_50:
  v33 = +[IMDServiceController sharedController];
  v34 = [v33 serviceWithName:*MEMORY[0x277D1A620]];

  v94 = [IMDServiceSession existingServiceSessionForService:v34];
  if (IMOSLoggingEnabled())
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v120 = v94;
      _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Falling back to service session: %@", buf, 0xCu);
    }
  }

LABEL_55:
  if (v95 && v92)
  {
    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = [(IMTextMessagePipelineParameter *)v95 GUID];
        *buf = 138412290;
        v120 = v37;
        _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Going through new message processing path: %@, ", buf, 0xCu);
      }
    }

    v88 = objc_alloc_init(IMFilterMessagePipelineComponentContext);
    v86 = objc_alloc_init(IMDeferReplicatedMessagePipelineComponent);
    v38 = [IMFindAccountProcessingPipelineComponent alloc];
    v39 = [v98 imdAccount];
    v85 = [(IMFindAccountProcessingPipelineComponent *)v38 initWithReceivingAccount:v39];

    v40 = [IMSenderCapabilityPipelineComponent alloc];
    v41 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D18910]];
    v42 = [v100 fromToken];
    v84 = [(IMSenderCapabilityPipelineComponent *)v40 initWithRegistrationProperties:v41 pushToken:v42];

    v43 = [IMMessageFromStoragePipelineComponent alloc];
    v44 = [v99 messageFromStorageController];
    v45 = [v99 broadcaster];
    v83 = [(IMMessageFromStoragePipelineComponent *)v43 initWithStorageProcessingType:0 storageController:v44 broadcaster:v45];

    v46 = [IMFindChatProcessingPipelineComponent alloc];
    v47 = [v99 chatRegistry];
    v82 = [(IMFindChatProcessingPipelineComponent *)v46 initWithChatRegistry:v47];

    v81 = [[IMConvergeGroupProcessingPipelineComponent alloc] initWithIDSTrustedData:v100];
    v48 = [IMMessageLegacyProcessingPipelineComponent alloc];
    v49 = [v99 idsService];
    v80 = [(IMMessageLegacyProcessingPipelineComponent *)v48 initWithIDSTrustedData:v100 messageContext:v93 idsService:v49 filteringContext:v88];

    v79 = [[IMMessageMomentShareProcessingPipelineComponent alloc] initWithTrustedData:v100];
    v50 = [IMFilterMessagePipelineComponent alloc];
    v51 = [v98 messageStore];
    v78 = [(IMFilterMessagePipelineComponent *)v50 initWithMessageStore:v51 filteringContext:v88];

    v77 = [[IMJunkMessageProcessingPipelineComponent alloc] initWithIDSTrustedData:v100];
    v52 = [IMCheckInMessageProcessingPipelineComponent alloc];
    v53 = [v98 imdAccount];
    v76 = [(IMCheckInMessageProcessingPipelineComponent *)v52 initWithAccount:v53];

    v54 = [IMFamilySenderMessageProcessingPipelineComponent alloc];
    v55 = [v98 imdAccount];
    v56 = [(IMFamilySenderMessageProcessingPipelineComponent *)v54 initWithAccount:v55 idsTrustedData:v100];

    v57 = objc_alloc_init(IMResolveFallbackHashesProcessingPipelineComponent);
    v58 = objc_alloc_init(IMSeenAsOffGridProcessingPipelineComponent);
    v59 = objc_alloc_init(IMOverrideOffGridStatusPipelineComponent);
    v60 = objc_alloc(MEMORY[0x277CBEB18]);
    v125[0] = v86;
    v125[1] = v85;
    v125[2] = v84;
    v125[3] = v83;
    v125[4] = v82;
    v125[5] = v81;
    v125[6] = v57;
    v125[7] = v92;
    v125[8] = v56;
    v125[9] = v76;
    v125[10] = v59;
    v125[11] = v78;
    v125[12] = v80;
    v125[13] = v79;
    v125[14] = v77;
    v125[15] = v58;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:16];
    v62 = [v60 initWithArray:v61];

    v63 = [MEMORY[0x277D18E00] pipelineFromComponents:v62];
    v64 = [v99 handler];
    if (!v64 && IMOSLoggingEnabled())
    {
      v65 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v120 = v99;
        _os_log_impl(&dword_22B4CC000, v65, OS_LOG_TYPE_INFO, "Handler not found!!! %@, ", buf, 0xCu);
      }
    }

    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = sub_22B5B0CA8;
    v101[3] = &unk_278705A30;
    v102 = v99;
    v103 = v95;
    v66 = v93;
    v67 = *(a1 + 32);
    v104 = v66;
    v111 = v67;
    v105 = v98;
    v110 = &v112;
    v68 = v86;
    v106 = v68;
    v69 = v64;
    v107 = v69;
    v70 = v63;
    v108 = v70;
    v109 = v100;
    [v69 handleMessageWithPipeline:v70 input:v103 completionBlock:v101];

    v71 = v88;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v72 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        v73 = objc_opt_class();
        *buf = 138412802;
        v120 = v73;
        v121 = 2048;
        v122 = v97;
        v123 = 2112;
        v124 = v92;
        v74 = v73;
        _os_log_impl(&dword_22B4CC000, v72, OS_LOG_TYPE_INFO, "Failed getting blastdoor object from result: <%@ %p>, with messageCreationComponent: %@", buf, 0x20u);
      }
    }

    v75 = [v99 idsService];
    [v75 sendAckForMessageWithContext:v93];

    v71 = v113[5];
    v113[5] = 0;
  }

  _Block_object_dispose(&v112, 8);
  os_activity_scope_leave(&state);
}

void sub_22B5B0CA8(uint64_t a1, char a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(a1 + 32) idsService];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 40) GUID];
      v9 = *(a1 + 48);
      *buf = 138412802;
      v35 = v8;
      v36 = 2112;
      v37 = v6;
      v38 = 2112;
      v39 = v9;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing and cleaning up text message: %@ on service %@ with context %@", buf, 0x20u);
    }
  }

  [v6 sendAckForMessageWithContext:*(a1 + 48)];
  v10 = *(a1 + 104);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 56) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 96) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  if ((a2 & 1) == 0)
  {
    v16 = [v5 domain];
    if ([v16 isEqualToString:*MEMORY[0x277D18DF8]])
    {
      v17 = [v5 code] == 18;

      if (v17)
      {
        v18 = +[IMPendingReplicatedMessageCache sharedCache];
        v19 = [*(a1 + 40) GUID];
        v20 = [*(a1 + 40) replicatedFallbackGUIDs];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = sub_22B5B1058;
        v25[3] = &unk_278705A08;
        v26 = *(a1 + 40);
        v27 = v6;
        v28 = *(a1 + 48);
        v29 = *(a1 + 64);
        v30 = *(a1 + 72);
        v31 = *(a1 + 80);
        v32 = *(a1 + 32);
        v33 = *(a1 + 88);
        [v18 addPendingMessageWithGUID:v19 replicatedFallbackGUIDs:v20 releaseBlock:v25];

        v21 = v26;
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
    }

    if (([*(a1 + 32) runningInAutomation] & 1) == 0)
    {
      v21 = [*(a1 + 40) GUID];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", &unk_283F4E810];
      v23 = [*(a1 + 88) fromIdentifier];
      v24 = [*(a1 + 88) fromToken];
      [IMBlastdoor sendBlastDoorError:v5 guid:v21 messageTypeString:v22 senderURI:v23 senderToken:v24 messageContext:*(a1 + 48) payloadAttachmentURL:0];

      goto LABEL_12;
    }
  }

LABEL_13:
}

void sub_22B5B1058(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(a1 + 32) GUID];
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      *buf = 138412802;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Reprocessing pending message: %@ on service %@ with context %@", buf, 0x20u);
    }
  }

  [*(a1 + 56) setSkipDeferral:1];
  [*(a1 + 56) setReplicationSourceServiceNameOverride:v7];
  [*(a1 + 32) setChat:v8];
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = *(a1 + 32);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_22B5B1284;
  v18[3] = &unk_2787059E0;
  v19 = v16;
  v20 = *(a1 + 80);
  v21 = *(a1 + 88);
  v22 = *(a1 + 48);
  v23 = v9;
  v17 = v9;
  [v14 handleMessageWithPipeline:v15 input:v19 completionBlock:v18];
}

void sub_22B5B1284(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) GUID];
      v8 = @"NO";
      *buf = 138412802;
      v15 = v7;
      v16 = 2112;
      if (a2)
      {
        v8 = @"YES";
      }

      v17 = v8;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Finished reprocessing pending message: %@ success: %@ error: %@", buf, 0x20u);
    }
  }

  if ((a2 & 1) == 0 && ([*(a1 + 40) runningInAutomation] & 1) == 0)
  {
    v9 = [*(a1 + 32) GUID];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", &unk_283F4E810];
    v11 = [*(a1 + 48) fromIdentifier];
    v12 = [*(a1 + 48) fromToken];
    [IMBlastdoor sendBlastDoorError:v5 guid:v9 messageTypeString:v10 senderURI:v11 senderToken:v12 messageContext:*(a1 + 56) payloadAttachmentURL:0];
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    (*(v13 + 16))();
  }
}

void sub_22B5B147C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v56 = *MEMORY[0x277D85DE8];
  v38 = a2;
  v12 = a3;
  v39 = a4;
  v13 = a5;
  v36 = a6;
  v37 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v35 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedSyndicationAction", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v35, &state);
  MEMORY[0x231897B40](@"BlastDoorSyndicationAction", @"BlastDoor");
  if (objc_opt_isKindOfClass())
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  if (v15)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v39 fromPushID];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v17;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Setting up pipeline for SyndicatedAction fromID: %@, ", &buf, 0xCu);
      }
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v52 = 0x3032000000;
    v53 = sub_22B4D7710;
    v54 = sub_22B4D78E4;
    v55 = v37;
    v18 = [[IMSyndicationActionPipelineParameter alloc] initWithDefusedSyndicationAction:v15 idsTrustedData:v39 pipelineResources:v13];
    if (v18)
    {
      v19 = [IMFindAccountProcessingPipelineComponent alloc];
      v20 = [v13 imdAccount];
      v21 = [(IMFindAccountProcessingPipelineComponent *)v19 initWithReceivingAccount:v20];

      v22 = [IMFindChatProcessingPipelineComponent alloc];
      v23 = [v38 chatRegistry];
      v24 = [(IMFindChatProcessingPipelineComponent *)v22 initWithChatRegistry:v23];

      v25 = [[IMSyndicationActionProcessingPipelineComponent alloc] initWithPipelineResources:v13];
      v26 = MEMORY[0x277D18E00];
      v50[0] = v21;
      v50[1] = v24;
      v50[2] = v25;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:3];
      v28 = [v26 pipelineFromComponents:v27];

      v29 = [v38 handler];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = sub_22B5B19A8;
      v40[3] = &unk_278705A78;
      v41 = v18;
      v42 = v13;
      v43 = v36;
      p_buf = &buf;
      [v29 handleSyndicatedActionWithPipeline:v28 input:v41 completionBlock:v40];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = objc_opt_class();
          *v46 = 138412546;
          v47 = v32;
          v48 = 2048;
          v49 = v12;
          v33 = v32;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Failed getting SyndicationAction blastdoor object from result: <%@ %p>, ", v46, 0x16u);
        }
      }

      v34 = [v13 service];
      [v34 sendAckForMessageWithContext:v36];

      v21 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = 0;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v30 = IMLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D47C4(v30);
    }
  }

  os_activity_scope_leave(&state);
}

void sub_22B5B1920(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B1864);
  }

  _Block_object_dispose((v23 - 144), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5B19A8(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) syndicationAction];
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing SyndicationAction: %@, %@", &v12, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) syndicationAction];
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing and cleaning up: %@, ", &v12, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

void sub_22B5B1B38(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B1A60);
  }

  _Unwind_Resume(a1);
}

void sub_22B5B1B6C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v67[4] = *MEMORY[0x277D85DE8];
  v46 = a2;
  v12 = a3;
  v49 = a4;
  v13 = a5;
  v47 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v45 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedNotifyReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v45, &state);
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_22B4D7710;
  v60 = sub_22B4D78E4;
  v44 = v14;
  v61 = v44;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v49 fromPushID];
      *buf = 138412290;
      v64 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for edited message received fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorEditMessageCommand", @"BlastDoor");
  v48 = v12;
  isKindOfClass = objc_opt_isKindOfClass();
  v18 = v12;
  if ((isKindOfClass & 1) == 0)
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = [[IMEditMessageCommandPipelineParameter alloc] initWithDefusedMessage:v19 idsTrustedData:v49];
  if (v20)
  {
    v21 = [IMFindAccountProcessingPipelineComponent alloc];
    v22 = [v13 imdAccount];
    v23 = [(IMFindAccountProcessingPipelineComponent *)v21 initWithReceivingAccount:v22];

    v24 = [IMMessageFromStoragePipelineComponent alloc];
    v25 = [v13 storageController];
    v26 = [v13 broadcaster];
    v27 = [(IMMessageFromStoragePipelineComponent *)v24 initWithStorageProcessingType:0 storageController:v25 broadcaster:v26];

    v28 = [[IMEditMessageCommandProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v29 = [IMMessageFromStoragePipelineComponent alloc];
    v30 = [v13 storageController];
    v31 = [v13 broadcaster];
    v32 = [(IMMessageFromStoragePipelineComponent *)v29 initWithStorageProcessingType:1 storageController:v30 broadcaster:v31];

    v33 = MEMORY[0x277D18E00];
    v67[0] = v23;
    v67[1] = v27;
    v67[2] = v28;
    v67[3] = v32;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];
    v35 = [v33 pipelineFromComponents:v34];

    v36 = [v46 handler];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = sub_22B5B20EC;
    v50[3] = &unk_278705998;
    v51 = v20;
    v52 = v13;
    v37 = v47;
    v38 = *(a1 + 32);
    v53 = v37;
    v54 = &v56;
    v55 = v38;
    [v36 handleEditMessageCommandWithPipeline:v35 input:v51 completionBlock:v50];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        *buf = 138412546;
        v64 = v40;
        v65 = 2048;
        v66 = v12;
        v41 = v40;
        _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Failed getting edit message blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v42 = [v13 service];
    [v42 sendAckForMessageWithContext:v47];

    v23 = v57[5];
    v57[5] = 0;
  }

  _Block_object_dispose(&v56, 8);
  os_activity_scope_leave(&state);
}

void sub_22B5B2068(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B1FA8);
  }

  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5B20EC(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) editCommandGUID];
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing edit message command: %@, %@", &v16, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) editCommandGUID];
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing edit message command and cleaning up: %@", &v16, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

void sub_22B5B22C8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B21ACLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B5B22FC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v66[4] = *MEMORY[0x277D85DE8];
  v46 = a2;
  v12 = a3;
  v48 = a4;
  v13 = a5;
  v47 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v44 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedNotifyReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v44, &state);
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_22B4D7710;
  v59 = sub_22B4D78E4;
  v43 = v14;
  v60 = v43;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v48 fromPushID];
      *buf = 138412290;
      v63 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for junk recovery received fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorRecoverJunkCommand", @"BlastDoor");
  v45 = v12;
  if (objc_opt_isKindOfClass())
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [[IMRecoverJunkCommandPipelineParameter alloc] initWithDefusedMessage:v18 idsTrustedData:v48];
  if (v19)
  {
    v20 = [IMFindAccountProcessingPipelineComponent alloc];
    v21 = [v13 imdAccount];
    v22 = [(IMFindAccountProcessingPipelineComponent *)v20 initWithReceivingAccount:v21];

    v23 = [IMMessageFromStoragePipelineComponent alloc];
    v24 = [v13 storageController];
    v25 = [v13 broadcaster];
    v26 = [(IMMessageFromStoragePipelineComponent *)v23 initWithStorageProcessingType:0 storageController:v24 broadcaster:v25];

    v27 = [[IMRecoverJunkCommandProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v28 = [IMMessageFromStoragePipelineComponent alloc];
    v29 = [v13 storageController];
    v30 = [v13 broadcaster];
    v31 = [(IMMessageFromStoragePipelineComponent *)v28 initWithStorageProcessingType:1 storageController:v29 broadcaster:v30];

    v32 = MEMORY[0x277D18E00];
    v66[0] = v22;
    v66[1] = v26;
    v66[2] = v27;
    v66[3] = v31;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:4];
    v34 = [v32 pipelineFromComponents:v33];

    v35 = [v46 handler];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_22B5B287C;
    v49[3] = &unk_278705998;
    v50 = v19;
    v51 = v13;
    v36 = v47;
    v37 = *(a1 + 32);
    v52 = v36;
    v53 = &v55;
    v54 = v37;
    [v35 handleRecoverJunkCommandWithPipeline:v34 input:v50 completionBlock:v49];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        *buf = 138412546;
        v63 = v39;
        v64 = 2048;
        v65 = v12;
        v40 = v39;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Failed getting recover junk command blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v41 = [v13 service];
    [v41 sendAckForMessageWithContext:v47];

    v22 = v56[5];
    v56[5] = 0;
  }

  _Block_object_dispose(&v55, 8);
  os_activity_scope_leave(&state);
}

void sub_22B5B27F4(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B2734);
  }

  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5B287C(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing recover junk command: %@, %@", &v16, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing recover junk command and cleaning up: %@", &v16, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

void sub_22B5B2A58(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B293CLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B5B2A8C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v66[4] = *MEMORY[0x277D85DE8];
  v46 = a2;
  v12 = a3;
  v48 = a4;
  v13 = a5;
  v47 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v44 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedNotifyReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v44, &state);
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_22B4D7710;
  v59 = sub_22B4D78E4;
  v43 = v14;
  v60 = v43;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v48 fromPushID];
      *buf = 138412290;
      v63 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for sticker reposition received fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorRepositionStickerCommand", @"BlastDoor");
  v45 = v12;
  if (objc_opt_isKindOfClass())
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [[IMRepositionStickerCommandPipelineParameter alloc] initWithDefusedMessage:v18 idsTrustedData:v48];
  if (v19)
  {
    v20 = [IMFindAccountProcessingPipelineComponent alloc];
    v21 = [v13 imdAccount];
    v22 = [(IMFindAccountProcessingPipelineComponent *)v20 initWithReceivingAccount:v21];

    v23 = [IMMessageFromStoragePipelineComponent alloc];
    v24 = [v13 storageController];
    v25 = [v13 broadcaster];
    v26 = [(IMMessageFromStoragePipelineComponent *)v23 initWithStorageProcessingType:0 storageController:v24 broadcaster:v25];

    v27 = [[IMRepositionStickerProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v28 = [IMMessageFromStoragePipelineComponent alloc];
    v29 = [v13 storageController];
    v30 = [v13 broadcaster];
    v31 = [(IMMessageFromStoragePipelineComponent *)v28 initWithStorageProcessingType:1 storageController:v29 broadcaster:v30];

    v32 = MEMORY[0x277D18E00];
    v66[0] = v22;
    v66[1] = v26;
    v66[2] = v27;
    v66[3] = v31;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:4];
    v34 = [v32 pipelineFromComponents:v33];

    v35 = [v46 handler];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_22B5B300C;
    v49[3] = &unk_278705998;
    v50 = v19;
    v51 = v13;
    v36 = v47;
    v37 = *(a1 + 32);
    v52 = v36;
    v53 = &v55;
    v54 = v37;
    [v35 handleRepositionStickerCommandWithPipeline:v34 input:v50 completionBlock:v49];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        *buf = 138412546;
        v63 = v39;
        v64 = 2048;
        v65 = v12;
        v40 = v39;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Failed getting command blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v41 = [v13 service];
    [v41 sendAckForMessageWithContext:v47];

    v22 = v56[5];
    v56[5] = 0;
  }

  _Block_object_dispose(&v55, 8);
  os_activity_scope_leave(&state);
}

void sub_22B5B2F84(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B2EC4);
  }

  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5B300C(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing reposition sticker command: %@, %@", &v16, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing command and cleaning up: %@", &v16, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

void sub_22B5B31E8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B30CCLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B5B321C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v50[1] = *MEMORY[0x277D85DE8];
  v31 = a2;
  v12 = a3;
  v33 = a4;
  v13 = a5;
  v32 = a6;
  v14 = a7;
  v15 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedNotifyReceipt", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_22B4D7710;
  v43 = sub_22B4D78E4;
  v16 = v14;
  v44 = v16;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v33 fromPushID];
      *buf = 138412290;
      v47 = v18;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Setting up pipeline for scheduled message update fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorScheduledMessageUpdate", @"BlastDoor");
  if (objc_opt_isKindOfClass())
  {
    v19 = v12;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  v21 = [[IMScheduledMessageUpdatePipelineParameter alloc] initWithDefusedMessage:v20 idsTrustedData:v33];
  if (v21)
  {
    v22 = [[IMScheduledMessageUpdateProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v23 = MEMORY[0x277D18E00];
    v50[0] = v22;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
    v25 = [v23 pipelineFromComponents:v24];

    v26 = [v31 handler];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_22B5B368C;
    v34[3] = &unk_278705A78;
    v35 = v21;
    v36 = v13;
    v37 = v32;
    v38 = &v39;
    [v26 handleScheduledMessageUpdateCommandWithPipeline:v25 input:v35 completionBlock:v34];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = objc_opt_class();
        *buf = 138412546;
        v47 = v28;
        v48 = 2048;
        v49 = v12;
        v29 = v28;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Failed getting command blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v30 = [v13 service];
    [v30 sendAckForMessageWithContext:v32];

    v22 = v40[5];
    v40[5] = 0;
  }

  _Block_object_dispose(&v39, 8);
  os_activity_scope_leave(&state);
}

void sub_22B5B3610(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B355CLL);
  }

  _Block_object_dispose(&a21, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5B368C(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing scheduled message update command: %@, %@", &v12, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing command and cleaning up: %@", &v12, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

void sub_22B5B381C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B3744);
  }

  _Unwind_Resume(a1);
}

void sub_22B5B3850(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v67[4] = *MEMORY[0x277D85DE8];
  v48 = a2;
  v12 = a3;
  v47 = a4;
  v13 = a5;
  v46 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v44 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedCrossServiceAssociationMessage", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v44, &state);
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_22B4D7710;
  v60 = sub_22B4D78E4;
  v43 = v14;
  v61 = v43;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v47 fromPushID];
      *buf = 138412290;
      v64 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for iml to im association update fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorCrossServiceAssociationMessage", @"BlastDoor");
  v45 = v12;
  if (objc_opt_isKindOfClass())
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [[IMCrossServiceAssociationMessagePipelineParameter alloc] initWithDefusedMessage:v18 idsTrustedData:v47];
  if (v19)
  {
    v20 = [IMFindAccountProcessingPipelineComponent alloc];
    v21 = [v13 imdAccount];
    v22 = [(IMFindAccountProcessingPipelineComponent *)v20 initWithReceivingAccount:v21];

    v23 = [IMFindChatProcessingPipelineComponent alloc];
    v24 = [v13 chatRegistry];
    v25 = [(IMFindChatProcessingPipelineComponent *)v23 initWithChatRegistry:v24];

    v26 = [IMMessageFromStoragePipelineComponent alloc];
    v27 = [v13 storageController];
    v28 = [v13 broadcaster];
    v29 = [(IMMessageFromStoragePipelineComponent *)v26 initWithStorageProcessingType:0 storageController:v27 broadcaster:v28];

    v30 = [[IMCrossServiceAssociationMessageProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v31 = MEMORY[0x277D18E00];
    v67[0] = v22;
    v67[1] = v25;
    v67[2] = v29;
    v67[3] = v30;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];
    v33 = [v31 pipelineFromComponents:v32];

    v34 = [v48 handler];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_22B5B3E04;
    v49[3] = &unk_278705970;
    v50 = v19;
    v51 = v48;
    v52 = v13;
    v35 = v46;
    v36 = *(a1 + 32);
    v53 = v35;
    v54 = &v56;
    v55 = v36;
    [v34 handleCrossServiceAssociationCommandWithPipeline:v33 input:v50 completionBlock:v49];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = objc_opt_class();
        *buf = 138412546;
        v64 = v38;
        v65 = 2048;
        v66 = v12;
        v39 = v38;
        _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Failed getting command blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    if (([v48 runningInAutomation] & 1) == 0)
    {
      v40 = [v13 service];
      [v40 sendAckForMessageWithContext:v46];

      v41 = [v13 service];
      im_sendCertifiedDeliveryReceiptIfPossible();
    }

    v22 = v57[5];
    v57[5] = 0;
  }

  _Block_object_dispose(&v56, 8);
  os_activity_scope_leave(&state);
}

void sub_22B5B3D7C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B3C84);
  }

  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v26 - 176));
  _Unwind_Resume(exc_buf);
}

void sub_22B5B3E04(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v18 = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing iml to im association command: %@, %@", &v18, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v18 = 138412290;
      v19 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing command and cleaning up: %@", &v18, 0xCu);
    }
  }

  if (([*(a1 + 40) runningInAutomation] & 1) == 0)
  {
    v9 = [*(a1 + 48) service];
    [v9 sendAckForMessageWithContext:*(a1 + 56)];

    v10 = [*(a1 + 48) service];
    v11 = [*(a1 + 32) GUID];
    im_sendCertifiedDeliveryReceiptIfPossible();

    v12 = *(a1 + 72);
    v13 = *(a1 + 32);
    v14 = *(a1 + 56);
    v15 = [*(a1 + 48) service];
    [v12 _postReceivedMessageMetricsForInput:v13 withMessageContext:v14 toIDSService:v15];
  }

  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;
}

void sub_22B5B4038(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B3EC4);
  }

  _Unwind_Resume(a1);
}

void sub_22B5B406C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v54 = *MEMORY[0x277D85DE8];
  v34 = a2;
  v12 = a3;
  v36 = a4;
  v13 = a5;
  v35 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v33 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageTranscriptBackgroundRequest", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v33, &state);
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_22B4D7710;
  v46 = sub_22B4D78E4;
  v15 = v14;
  v47 = v15;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v36 fromPushID];
      *buf = 138412546;
      v51 = v17;
      v52 = 2112;
      v53 = v12;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Setting up pipeline for transcript background command received fromID: %@, result: %@", buf, 0x16u);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorTranscriptBackgroundCommand", @"BlastDoor");
  if (objc_opt_isKindOfClass())
  {
    v18 = v12;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = [[IMTranscriptBackgroundCommandPipelineParameter alloc] initWithDefusedMessage:v19 idsTrustedData:v36];
  if (v20)
  {
    v21 = [IMFindAccountProcessingPipelineComponent alloc];
    v22 = [v13 imdAccount];
    v23 = [(IMFindAccountProcessingPipelineComponent *)v21 initWithReceivingAccount:v22];

    v24 = [[IMTranscriptBackgroundCommandProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v25 = MEMORY[0x277D18E00];
    v49[0] = v23;
    v49[1] = v24;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
    v27 = [v25 pipelineFromComponents:v26];

    v28 = [v34 handler];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_22B5B4528;
    v37[3] = &unk_278705A78;
    v38 = v20;
    v39 = v13;
    v40 = v35;
    v41 = &v42;
    [v28 handleTranscriptBackgroundCommandWithPipeline:v27 input:v38 completionBlock:v37];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = objc_opt_class();
        *buf = 138412546;
        v51 = v30;
        v52 = 2048;
        v53 = v12;
        v31 = v30;
        _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Failed getting transcript background command blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v32 = [v13 service];
    [v32 sendAckForMessageWithContext:v35];

    v23 = v43[5];
    v43[5] = 0;
  }

  _Block_object_dispose(&v42, 8);
  os_activity_scope_leave(&state);
}

void sub_22B5B44A8(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B43F0);
  }

  _Block_object_dispose(&a21, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5B4528(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing transcript background command: %@.", &v11, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Ack'ing transcript background command and cleaning up: %@", &v11, 0xCu);
    }
  }

  v8 = [*(a1 + 40) service];
  [v8 sendAckForMessageWithContext:*(a1 + 48)];

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void sub_22B5B46B4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v66[4] = *MEMORY[0x277D85DE8];
  v46 = a2;
  v12 = a3;
  v48 = a4;
  v13 = a5;
  v47 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v44 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.acceptChatRequest", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v44, &state);
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_22B4D7710;
  v59 = sub_22B4D78E4;
  v43 = v14;
  v60 = v43;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v48 fromPushID];
      *buf = 138412290;
      v63 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for accept chat command received fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorAcceptChatCommand", @"BlastDoor");
  v45 = v12;
  if (objc_opt_isKindOfClass())
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [[IMAcceptChatCommandPipelineParameter alloc] initWithDefusedMessage:v18 idsTrustedData:v48];
  if (v19)
  {
    v20 = [IMFindAccountProcessingPipelineComponent alloc];
    v21 = [v13 imdAccount];
    v22 = [(IMFindAccountProcessingPipelineComponent *)v20 initWithReceivingAccount:v21];

    v23 = [IMMessageFromStoragePipelineComponent alloc];
    v24 = [v13 storageController];
    v25 = [v13 broadcaster];
    v26 = [(IMMessageFromStoragePipelineComponent *)v23 initWithStorageProcessingType:0 storageController:v24 broadcaster:v25];

    v27 = [[IMAcceptChatCommandProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v28 = [IMMessageFromStoragePipelineComponent alloc];
    v29 = [v13 storageController];
    v30 = [v13 broadcaster];
    v31 = [(IMMessageFromStoragePipelineComponent *)v28 initWithStorageProcessingType:1 storageController:v29 broadcaster:v30];

    v32 = MEMORY[0x277D18E00];
    v66[0] = v22;
    v66[1] = v26;
    v66[2] = v27;
    v66[3] = v31;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:4];
    v34 = [v32 pipelineFromComponents:v33];

    v35 = [v46 handler];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_22B5B4C34;
    v49[3] = &unk_278705998;
    v50 = v19;
    v51 = v13;
    v36 = v47;
    v37 = *(a1 + 32);
    v52 = v36;
    v53 = &v55;
    v54 = v37;
    [v35 handleAcceptChatCommandWithPipeline:v34 input:v50 completionBlock:v49];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        *buf = 138412546;
        v63 = v39;
        v64 = 2048;
        v65 = v12;
        v40 = v39;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Failed getting accept chat command blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v41 = [v13 service];
    [v41 sendAckForMessageWithContext:v47];

    v22 = v56[5];
    v56[5] = 0;
  }

  _Block_object_dispose(&v55, 8);
  os_activity_scope_leave(&state);
}

void sub_22B5B4BAC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B4AECLL);
  }

  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5B4C34(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing accept chat command: %@, %@", &v16, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing accept chat command and cleaning up: %@", &v16, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

void sub_22B5B4E10(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B4CF4);
  }

  _Unwind_Resume(a1);
}

void sub_22B5B4E44(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v66[4] = *MEMORY[0x277D85DE8];
  v46 = a2;
  v12 = a3;
  v48 = a4;
  v13 = a5;
  v47 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v44 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.junkChatRequest", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v44, &state);
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_22B4D7710;
  v59 = sub_22B4D78E4;
  v43 = v14;
  v60 = v43;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v48 fromPushID];
      *buf = 138412290;
      v63 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for junk chat command received fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorJunkChatCommand", @"BlastDoor");
  v45 = v12;
  if (objc_opt_isKindOfClass())
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [[IMJunkChatCommandPipelineParameter alloc] initWithDefusedMessage:v18 idsTrustedData:v48];
  if (v19)
  {
    v20 = [IMFindAccountProcessingPipelineComponent alloc];
    v21 = [v13 imdAccount];
    v22 = [(IMFindAccountProcessingPipelineComponent *)v20 initWithReceivingAccount:v21];

    v23 = [IMMessageFromStoragePipelineComponent alloc];
    v24 = [v13 storageController];
    v25 = [v13 broadcaster];
    v26 = [(IMMessageFromStoragePipelineComponent *)v23 initWithStorageProcessingType:0 storageController:v24 broadcaster:v25];

    v27 = [[IMJunkChatCommandProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v28 = [IMMessageFromStoragePipelineComponent alloc];
    v29 = [v13 storageController];
    v30 = [v13 broadcaster];
    v31 = [(IMMessageFromStoragePipelineComponent *)v28 initWithStorageProcessingType:1 storageController:v29 broadcaster:v30];

    v32 = MEMORY[0x277D18E00];
    v66[0] = v22;
    v66[1] = v26;
    v66[2] = v27;
    v66[3] = v31;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:4];
    v34 = [v32 pipelineFromComponents:v33];

    v35 = [v46 handler];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_22B5B53C4;
    v49[3] = &unk_278705998;
    v50 = v19;
    v51 = v13;
    v36 = v47;
    v37 = *(a1 + 32);
    v52 = v36;
    v53 = &v55;
    v54 = v37;
    [v35 handleJunkChatCommandWithPipeline:v34 input:v50 completionBlock:v49];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        *buf = 138412546;
        v63 = v39;
        v64 = 2048;
        v65 = v12;
        v40 = v39;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Failed getting junk chat command blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v41 = [v13 service];
    [v41 sendAckForMessageWithContext:v47];

    v22 = v56[5];
    v56[5] = 0;
  }

  _Block_object_dispose(&v55, 8);
  os_activity_scope_leave(&state);
}

void sub_22B5B533C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B527CLL);
  }

  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5B53C4(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing junk chat command: %@, %@", &v16, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing junk chat command and cleaning up: %@", &v16, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

void sub_22B5B55A0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B5484);
  }

  _Unwind_Resume(a1);
}

void sub_22B5B55D4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v66[4] = *MEMORY[0x277D85DE8];
  v46 = a2;
  v12 = a3;
  v48 = a4;
  v13 = a5;
  v47 = a6;
  v14 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v44 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.markAsReviewedRequest", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v44, &state);
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_22B4D7710;
  v59 = sub_22B4D78E4;
  v43 = v14;
  v60 = v43;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v48 fromPushID];
      *buf = 138412290;
      v63 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting up pipeline for mark as reviewed command received fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorMarkAsReviewedCommand", @"BlastDoor");
  v45 = v12;
  if (objc_opt_isKindOfClass())
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [[IMMarkAsReviewedCommandPipelineParameter alloc] initWithDefusedMessage:v18 idsTrustedData:v48];
  if (v19)
  {
    v20 = [IMFindAccountProcessingPipelineComponent alloc];
    v21 = [v13 imdAccount];
    v22 = [(IMFindAccountProcessingPipelineComponent *)v20 initWithReceivingAccount:v21];

    v23 = [IMMessageFromStoragePipelineComponent alloc];
    v24 = [v13 storageController];
    v25 = [v13 broadcaster];
    v26 = [(IMMessageFromStoragePipelineComponent *)v23 initWithStorageProcessingType:0 storageController:v24 broadcaster:v25];

    v27 = [[IMMarkAsReviewedCommandProcessingPipelineComponent alloc] initWithPipelineResources:v13];
    v28 = [IMMessageFromStoragePipelineComponent alloc];
    v29 = [v13 storageController];
    v30 = [v13 broadcaster];
    v31 = [(IMMessageFromStoragePipelineComponent *)v28 initWithStorageProcessingType:1 storageController:v29 broadcaster:v30];

    v32 = MEMORY[0x277D18E00];
    v66[0] = v22;
    v66[1] = v26;
    v66[2] = v27;
    v66[3] = v31;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:4];
    v34 = [v32 pipelineFromComponents:v33];

    v35 = [v46 handler];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_22B5B5B54;
    v49[3] = &unk_278705998;
    v50 = v19;
    v51 = v13;
    v36 = v47;
    v37 = *(a1 + 32);
    v52 = v36;
    v53 = &v55;
    v54 = v37;
    [v35 handleMarkAsReviewedCommandWithPipeline:v34 input:v50 completionBlock:v49];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        *buf = 138412546;
        v63 = v39;
        v64 = 2048;
        v65 = v12;
        v40 = v39;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Failed getting mark as reviewed command blastdoor object from result: <%@ %p>, ", buf, 0x16u);
      }
    }

    v41 = [v13 service];
    [v41 sendAckForMessageWithContext:v47];

    v22 = v56[5];
    v56[5] = 0;
  }

  _Block_object_dispose(&v55, 8);
  os_activity_scope_leave(&state);
}

void sub_22B5B5ACC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B5A0CLL);
  }

  _Block_object_dispose(&a25, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(exc_buf);
}

void sub_22B5B5B54(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) GUID];
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Error while processing mark as reviewed command: %@, %@", &v16, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) GUID];
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Ack'ing mark as reviewed command and cleaning up: %@", &v16, 0xCu);
    }
  }

  v9 = [*(a1 + 40) service];
  [v9 sendAckForMessageWithContext:*(a1 + 48)];

  v10 = *(a1 + 64);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) service];
  [v10 _postReceivedMessageMetricsForInput:v11 withMessageContext:v12 toIDSService:v13];

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

void sub_22B5B5D30(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B5C14);
  }

  _Unwind_Resume(a1);
}

void sub_22B5B5E34(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v96[7] = *MEMORY[0x277D85DE8];
  v74 = a2;
  v72 = a3;
  v73 = a4;
  v71 = a5;
  v68 = a6;
  v13 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v64 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.iMessageReceivedMessage", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v64, &state);
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = sub_22B4D7710;
  v87 = sub_22B4D78E4;
  v63 = v13;
  v88 = v63;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v73 fromPushID];
      *buf = 138412290;
      v91 = v15;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Setting up pipeline for basic message fromID: %@, ", buf, 0xCu);
    }
  }

  MEMORY[0x231897B40](@"BlastDoorBasicTextMessage", @"BlastDoor");
  isKindOfClass = objc_opt_isKindOfClass();
  v17 = v72;
  if ((isKindOfClass & 1) == 0)
  {
    v17 = 0;
  }

  v66 = v17;
  v18 = [v66 messageSubType];
  v19 = [v18 type];

  if (v19 <= 2)
  {
    if (!v19)
    {
      v20 = [[IMTypingIndicatorPipelineParameter alloc] initWithBDBasic:v66 idsTrustedData:v73];
      v24 = [IMTypingIndicatorProcessingPipelineComponent alloc];
      v22 = [v74 messageStore];
      v67 = [(IMTextMessageProcessingPipelineComponent *)v24 initWithMessageStore:v22];
      goto LABEL_19;
    }

    if (v19 == 2)
    {
      v20 = [[IMAssociatedMessagePipelineParameter alloc] initWithBDBasic:v66 idsTrustedData:v73];
      v21 = [IMAssociatedMessageProcessingPipelineComponent alloc];
      v22 = [v74 messageStore];
      v67 = [(IMTextMessageProcessingPipelineComponent *)v21 initWithMessageStore:v22];
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v19 == 3)
  {
    v20 = [[IMTypingIndicatorPipelineParameter alloc] initWithBDBasic:v66 idsTrustedData:v73];
    v25 = [IMAudioMessageProcessingPipelineComponent alloc];
    v22 = [v74 messageStore];
    v67 = [(IMTextMessageProcessingPipelineComponent *)v25 initWithMessageStore:v22];
    goto LABEL_19;
  }

  if (v19 != 4)
  {
    if (v19 == 5)
    {
      v20 = [[IMEmojiTapbackMessagePipelineParameter alloc] initWithBDBasic:v66 idsTrustedData:v73];
      v23 = [IMEmojiTapbackMessageProcessingPipelineComponent alloc];
      v22 = [v74 messageStore];
      v67 = [(IMTextMessageProcessingPipelineComponent *)v23 initWithMessageStore:v22];
      goto LABEL_19;
    }

LABEL_17:
    v20 = [[IMTextMessagePipelineParameter alloc] initWithBDBasic:v66 idsTrustedData:v73];
    v26 = [IMTextMessageProcessingPipelineComponent alloc];
    v22 = [v74 messageStore];
    v67 = [(IMTextMessageProcessingPipelineComponent *)v26 initWithMessageStore:v22];
    goto LABEL_19;
  }

  v20 = [[IMTextMessagePipelineParameter alloc] initWithBDBasic:v66 idsTrustedData:v73];
  [(IMTextMessagePipelineParameter *)v20 setWasDetonated:1];
  v27 = [IMTextMessageProcessingPipelineComponent alloc];
  v22 = [v74 messageStore];
  v67 = [(IMTextMessageProcessingPipelineComponent *)v27 initWithMessageStore:v22];
LABEL_19:

  v70 = [v71 imdAccount];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v91 = v70;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Account was not the right class: %@", buf, 0xCu);
      }
    }

    v65 = 0;
    goto LABEL_38;
  }

  v69 = [v70 session];
  if (objc_opt_respondsToSelector())
  {
    v28 = [v70 idsAccount];
    v65 = [v69 _pushHandlerForIDSAccount:v28];

    if ((!v65 || (objc_opt_respondsToSelector() & 1) == 0) && IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v91 = v65;
        _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Push handler either nil or session did not respond to incomingMessage: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v91 = v69;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Session either nil or did not respond to _pushHandlerForIDSAccount: %@", buf, 0xCu);
      }
    }

    v65 = 0;
  }

  if (!v69)
  {
LABEL_38:
    v32 = +[IMDServiceController sharedController];
    v33 = [v32 serviceWithName:*MEMORY[0x277D1A620]];

    v69 = [IMDServiceSession existingServiceSessionForService:v33];
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v91 = v69;
        _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Falling back to service session: %@", buf, 0xCu);
      }
    }
  }

  if (v20 && v67)
  {
    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = [(IMTextMessagePipelineParameter *)v20 GUID];
        *buf = 138412290;
        v91 = v36;
        _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Going through new message processing path: %@, ", buf, 0xCu);
      }
    }

    v62 = objc_alloc_init(IMFilterMessagePipelineComponentContext);
    v37 = [IMFindAccountProcessingPipelineComponent alloc];
    v38 = [v71 imdAccount];
    v39 = [(IMFindAccountProcessingPipelineComponent *)v37 initWithReceivingAccount:v38];

    v40 = [IMMessageFromStoragePipelineComponent alloc];
    v41 = [v74 messageFromStorageController];
    v42 = [v74 broadcaster];
    v61 = [(IMMessageFromStoragePipelineComponent *)v40 initWithStorageProcessingType:0 storageController:v41 broadcaster:v42];

    v43 = [IMFindChatProcessingPipelineComponent alloc];
    v44 = [v74 chatRegistry];
    v60 = [(IMFindChatProcessingPipelineComponent *)v43 initWithChatRegistry:v44];

    v45 = [[IMConvergeGroupProcessingPipelineComponent alloc] initWithIDSTrustedData:v73];
    v46 = [IMMessageLegacyProcessingPipelineComponent alloc];
    v47 = [v74 idsService];
    v48 = [(IMMessageLegacyProcessingPipelineComponent *)v46 initWithIDSTrustedData:v73 messageContext:v68 idsService:v47 filteringContext:v62];

    v49 = objc_alloc_init(IMResolveFallbackHashesProcessingPipelineComponent);
    v96[0] = v39;
    v96[1] = v61;
    v96[2] = v60;
    v96[3] = v45;
    v96[4] = v49;
    v96[5] = v67;
    v96[6] = v48;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:7];
    v51 = [MEMORY[0x277D18E00] pipelineFromComponents:v50];
    v52 = [v74 handler];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = sub_22B5B6A94;
    v75[3] = &unk_278705AA0;
    v76 = v20;
    v77 = v74;
    v53 = v68;
    v54 = *(a1 + 32);
    v78 = v53;
    v82 = v54;
    v79 = v71;
    v81 = &v83;
    v80 = v73;
    [v52 handleMessageWithPipeline:v51 input:v76 completionBlock:v75];

    v55 = v62;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v56 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v57 = objc_opt_class();
        *buf = 138412802;
        v91 = v57;
        v92 = 2048;
        v93 = v72;
        v94 = 2112;
        v95 = v67;
        v58 = v57;
        _os_log_impl(&dword_22B4CC000, v56, OS_LOG_TYPE_INFO, "Failed getting blastdoor object from result: <%@ %p>, with messageCreationComponent: %@", buf, 0x20u);
      }
    }

    v59 = [v74 idsService];
    [v59 sendAckForMessageWithContext:v68];

    v55 = v84[5];
    v84[5] = 0;
  }

  _Block_object_dispose(&v83, 8);
  os_activity_scope_leave(&state);
}

void sub_22B5B6A94(uint64_t a1, char a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) GUID];
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Ack'ing and cleaning up: %@, ", buf, 0xCu);
    }
  }

  v8 = [*(a1 + 40) idsService];
  [v8 sendAckForMessageWithContext:*(a1 + 48)];

  v9 = *(a1 + 80);
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v12 = [*(a1 + 56) service];
  [v9 _postReceivedMessageMetricsForInput:v10 withMessageContext:v11 toIDSService:v12];

  v13 = *(*(a1 + 72) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;

  if ((a2 & 1) == 0 && ([*(a1 + 40) runningInAutomation] & 1) == 0)
  {
    v15 = [*(a1 + 32) GUID];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", &unk_283F4E810];
    v17 = [*(a1 + 64) fromIdentifier];
    v18 = [*(a1 + 64) fromToken];
    [IMBlastdoor sendBlastDoorError:v5 guid:v15 messageTypeString:v16 senderURI:v17 senderToken:v18 messageContext:*(a1 + 48) payloadAttachmentURL:0];
  }
}

void sub_22B5B7E38(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B5B7ABCLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_22B5B8224(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, os_activity_scope_state_s state)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5B8188);
  }

  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

id sub_22B5B8EF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKey:v5];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    if (v6)
    {
      v8 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_22B7D4808(v5, a1, v8);
      }
    }

    v7 = 0;
  }

  return v7;
}

void sub_22B5B8FB4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([*(a1 + 32) command] != a2 && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      *buf = 134218242;
      v39 = a2;
      v40 = 2112;
      v41 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "<Warning> Incoming command doesn't match BlastDoor command (%ld), trustedData: %@", buf, 0x16u);
    }
  }

  if (!v7)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = @"NO";
        v24 = *(a1 + 48);
        *buf = 134218754;
        if (!v8)
        {
          v23 = @"YES";
        }

        v39 = a2;
        v40 = 2112;
        v41 = v23;
        v42 = 2112;
        v43 = v8;
        v44 = 2112;
        v45 = v24;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "BlastDoor processing for command %ld was successful (%@) with error (%@) while processing GUID (%@)", buf, 0x2Au);
      }
    }

    v25 = [v8 userInfo];
    v26 = [v25 objectForKeyedSubscript:@"explosionDomain"];
    if ([v26 isEqualToString:@"com.apple.BlastDoor.MessagesBlastDoorInterface"])
    {
      v27 = [v8 userInfo];
      v28 = [v27 objectForKeyedSubscript:@"explosionErrorType"];
      v29 = [v28 isEqualToString:@"UnsupportedAirlockMessageType"];

      if (v29)
      {
        if (IMOSLoggingEnabled())
        {
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = *(a1 + 48);
            *buf = 134218242;
            v39 = a2;
            v40 = 2112;
            v41 = v31;
            _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "BlastDoor (Airlock) processing for command %ld was skipped because it is unsupported while processing GUID (%@)", buf, 0x16u);
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
    }

    if (([*(a1 + 56) runningInAutomation] & 1) == 0)
    {
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld-%@.data", a2, *(a1 + 48)];
      v33 = [MEMORY[0x277D1AA18] writeMessagePayloadToTemporaryDirectory:*(a1 + 88) fileName:v32];
      v34 = *(a1 + 48);
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a2];
      v36 = [*(a1 + 32) fromIdentifier];
      v37 = [*(a1 + 32) fromToken];
      [IMBlastdoor sendBlastDoorError:v8 guid:v34 messageTypeString:v35 senderURI:v36 senderToken:v37 messageContext:*(a1 + 72) payloadAttachmentURL:v33];
    }

    goto LABEL_40;
  }

  if (a2 == 100)
  {
    im_sendMessageCheckpointIfNecessary();
  }

  v11 = +[IMDiMessageIDSDelegate commandHandlerRegistry];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v13 = [v11 objectForKey:v12];

  v14 = IMOSLoggingEnabled();
  if (!v13)
  {
    if (v14)
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(a1 + 48);
        *buf = 134218242;
        v39 = a2;
        v40 = 2112;
        v41 = v21;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Failure to find BlastDoor handler block for command %ld while processing GUID (%@)", buf, 0x16u);
      }
    }

LABEL_40:
    [*(a1 + 40) sendAckForMessageWithContext:*(a1 + 72)];
    v13 = 0;
    goto LABEL_41;
  }

  if (v14)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 48);
      *buf = 134218242;
      v39 = a2;
      v40 = 2112;
      v41 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "About to execute block for command %ld for GUID (%@)", buf, 0x16u);
    }
  }

  (v13)[2](v13, *(a1 + 56), v7, *(a1 + 32), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = @"NO";
      v19 = *(a1 + 48);
      *buf = 134218498;
      if (!v8)
      {
        v18 = @"YES";
      }

      v39 = a2;
      v40 = 2112;
      v41 = v18;
      v42 = 2112;
      v43 = v19;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "BlastDoor processing for command %ld was successful (%@) while processing GUID (%@)", buf, 0x20u);
    }
  }

LABEL_41:
  [*(a1 + 56) setRunningInAutomation:0];
}

uint64_t sub_22B5B9818()
{
  qword_281420FC8 = objc_alloc_init(IMDNotificationResponseUtilities);

  return MEMORY[0x2821F96F8]();
}

void sub_22B5BA030(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) notification];
    v4 = [v3 request];
    v5 = [v4 content];
    v11 = [v5 userInfo];

    v6 = [v11 objectForKeyedSubscript:@"CKBBContextKeyMessageGUID"];
    v7 = [v11 objectForKeyedSubscript:@"CKBBContextKeyChatGUIDs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 firstObject];
      v9 = v8;
      if (v6 && v8)
      {
        [*(a1 + 40) _markMessageAsRead:v6 inChat:v8 withCompletionHandler:*(a1 + 48)];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = *(*(a1 + 48) + 16);

    v10();
  }
}

void sub_22B5BA170(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) notification];
    v4 = [v3 request];
    v5 = [v4 content];
    v11 = [v5 userInfo];

    v6 = [v11 objectForKeyedSubscript:@"CKBBContextKeyMessageGUID"];
    v7 = [v11 objectForKeyedSubscript:@"CKBBContextKeyChatGUIDs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 firstObject];
      v9 = v8;
      if (v6 && v8)
      {
        [*(a1 + 40) _markMessageAsRead:v6 inChat:v8 withCompletionHandler:*(a1 + 48)];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = *(*(a1 + 48) + 16);

    v10();
  }
}

void sub_22B5BA2B0(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) notification];
    v4 = [v3 request];
    v5 = [v4 content];
    v11 = [v5 userInfo];

    v6 = [v11 objectForKeyedSubscript:@"CKBBContextKeyMessageGUID"];
    v7 = [v11 objectForKeyedSubscript:@"CKBBContextKeyChatGUIDs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 firstObject];
      v9 = v8;
      if (v6 && v8)
      {
        [*(a1 + 40) _markMessageAsRead:v6 inChat:v8 withCompletionHandler:*(a1 + 48)];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = *(*(a1 + 48) + 16);

    v10();
  }
}

void sub_22B5BA3F0(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) notification];
    v4 = [v3 request];
    v5 = [v4 content];
    v11 = [v5 userInfo];

    v6 = [v11 objectForKeyedSubscript:@"CKBBContextKeyMessageGUID"];
    v7 = [v11 objectForKeyedSubscript:@"CKBBContextKeyChatGUIDs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 firstObject];
      v9 = v8;
      if (v6 && v8)
      {
        [*(a1 + 40) _markMessageAsRead:v6 inChat:v8 withCompletionHandler:*(a1 + 48)];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = *(*(a1 + 48) + 16);

    v10();
  }
}

id sub_22B5BAFD0(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = *MEMORY[0x277D19940];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", v9, *(*(&v14 + 1) + 8 * i), v14];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v4];

  return v12;
}

uint64_t sub_22B5BB24C()
{
  qword_281421208 = objc_alloc_init(IMDServiceController);

  return MEMORY[0x2821F96F8]();
}

void sub_22B5BB8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5BB8D4(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([v7 replicationSourceID] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_22B5BBA80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 supportsCapability:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v4];
  }
}

void *sub_22B5BCFEC(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(a1 + 32) + 24);
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Listener Client %d connection invalidated", v6, 8u);
    }
  }

  [*(a1 + 32) _clearConnection];
  result = *(a1 + 40);
  if (result)
  {
    return [result connectionClosed:*(*(a1 + 32) + 24)];
  }

  return result;
}

void *sub_22B5BD0DC(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(a1 + 32) + 24);
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Listener Client %d connection interrupted", v6, 8u);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return [result connectionClosed:*(*(a1 + 32) + 24)];
  }

  return result;
}

void sub_22B5BD1C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = *(a1 + 32);
  v7 = v6[2];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B5BD270;
  v9[3] = &unk_278702FA0;
  v10 = v6;
  v11 = v5;
  v8 = v5;
  dispatch_async(v7, v9);
}

void sub_22B5BD270(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 72) & 1) == 0)
  {
    *(v2 + 72) = 1;
    dispatch_group_leave(*(*(a1 + 32) + 80));
  }

  v3 = [*(a1 + 40) state];
  v4 = [v3 taskState] == 4;

  v5 = [*(a1 + 40) state];
  v6 = [v5 endowmentNamespaces];
  v7 = [v6 containsObject:@"com.apple.frontboard.visibility"] ^ 1;

  *(*(a1 + 32) + 88) = v4 & v7;
}

void sub_22B5BD320(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = a1[4];
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v6 count:1];
  [v4 setPredicates:{v5, v6, v7}];

  [v4 setStateDescriptor:a1[5]];
  [v4 setUpdateHandler:a1[6]];
}

void sub_22B5BD65C(uint64_t a1, uint64_t a2)
{
  v55 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) description];
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v3;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "requestBackgroundMessagingAuthorizationForRecipients:%@", buf, 0xCu);
    }
  }

  v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = *(a1 + 32);
  v46 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v46)
  {
    v45 = *v50;
    v39 = *MEMORY[0x277CBD000];
    v37 = *MEMORY[0x277CBD090];
    v38 = *MEMORY[0x277CBCFF8];
    v44 = *MEMORY[0x277CBF188];
    v42 = *MEMORY[0x277CBF218];
    v43 = *MEMORY[0x277CBF198];
    v41 = *MEMORY[0x277CBF1E8];
    allocator = *MEMORY[0x277CBECE8];
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v50 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v49 + 1) + 8 * i);
        error = 0;
        buf[0] = 0;
        v6 = [MEMORY[0x277CBEB38] dictionary];
        v7 = *(a1 + 40);
        v8 = [v5 phoneNumber];
        v9 = [v7 _formattedPhoneNumberForNumber:v8];

        v10 = [v5 phoneNumber];
        v11 = IMDCNFullNameAndOrganizationNameForHandleID();

        if (v11 && (v12 = objc_alloc_init(MEMORY[0x277CBDB38]), [v11 objectForKey:v39], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "setGivenName:", v13), v13, objc_msgSend(v11, "objectForKey:", v38), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "setFamilyName:", v14), v14, objc_msgSend(v11, "objectForKey:", v37), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "setOrganizationName:", v15), v15, objc_msgSend(MEMORY[0x277D1A968], "displayNameWithCNNickNameOrFullNameOrCompanyNameOrAbbreviatedForContact:", v12), v16 = objc_claimAutoreleasedReturnValue(), v12, v16))
        {
          [v5 setDisplayName:v16];
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", v16, v9];
          v18 = MEMORY[0x277CCACA8];
          v19 = IMSharedUtilitiesFrameworkBundle();
          v20 = [v19 localizedStringForKey:@"CMAPI_AUTH_BODY" value:&stru_283F23018 table:@"IMSharedUtilities"];
          v21 = [v18 localizedStringWithFormat:v20, *(*(a1 + 40) + 40), v17];
          [v6 setObject:v21 forKey:v44];
        }

        else
        {
          v22 = MEMORY[0x277CCACA8];
          v16 = IMSharedUtilitiesFrameworkBundle();
          v17 = [v16 localizedStringForKey:@"CMAPI_AUTH_BODY" value:&stru_283F23018 table:@"IMSharedUtilities"];
          v19 = [v22 localizedStringWithFormat:v17, *(*(a1 + 40) + 40), v9];
          [v6 setObject:v19 forKey:v44];
        }

        [v6 setObject:*(*(a1 + 40) + 48) forKey:v43];
        v23 = MEMORY[0x277CCACA8];
        v24 = IMSharedUtilitiesFrameworkBundle();
        v25 = [v24 localizedStringForKey:@"CMAPI_AUTH_CANCEL" value:&stru_283F23018 table:@"IMSharedUtilities"];
        v26 = [v23 localizedStringWithFormat:v25, 0];
        [v6 setObject:v26 forKey:v42];

        v27 = MEMORY[0x277CCACA8];
        v28 = IMSharedUtilitiesFrameworkBundle();
        v29 = [v28 localizedStringForKey:@"CMAPI_AUTH_ALLOW" value:&stru_283F23018 table:@"IMSharedUtilities"];
        v30 = [v27 localizedStringWithFormat:v29, 0];
        [v6 setObject:v30 forKey:v41];

        v31 = CFUserNotificationCreate(allocator, 0.0, 0, &error, v6);
        v32 = v31;
        if (v31)
        {
          if (CFUserNotificationReceiveResponse(v31, 0.0, buf))
          {
            CFUserNotificationCancel(v32);
            CFRelease(v32);
            CFUserNotificationCancel(0);
            goto LABEL_23;
          }

          if (buf[0])
          {
            if (buf[0] == 2)
            {
              v33 = &unk_283F4E930;
              goto LABEL_21;
            }
          }

          else
          {
            v33 = &unk_283F4E918;
LABEL_21:
            [v35 setObject:v33 forKey:v5];
          }

          CFUserNotificationCancel(v32);
          CFRelease(v32);
        }

LABEL_23:
      }

      v46 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v46);
  }

  [MEMORY[0x277D1A8C8] saveRecipients:v35 forBundleID:*(*(a1 + 40) + 32)];
  v34 = *(a1 + 48);
  if (v34)
  {
    (*(v34 + 16))(v34, v35, 0);
  }
}

void sub_22B5BDD58(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) description];
      *buf = 138412290;
      v24 = v3;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "checkAuthorizationStatusForRecipients:%@", buf, 0xCu);
    }
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [MEMORY[0x277D1A8C8] recipientsForBundleID:*(*(a1 + 40) + 32)];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v5 objectForKey:v10];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = &unk_283F4E948;
        }

        v14 = v13;

        v15 = [v10 copy];
        [v4 setObject:v14 forKey:v15];
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, v4, 0);
  }
}

void sub_22B5BE094(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) description];
      v23 = 138412546;
      v24 = v4;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "sendBackgroundMessage:%@ recipient:%@", &v23, 0x16u);
    }
  }

  v6 = *(a1 + 48);
  if (*(v6 + 88))
  {
    v7 = [MEMORY[0x277D1A8C8] recipientsForBundleID:*(v6 + 32)];
    v8 = [v7 objectForKey:*(a1 + 40)];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 integerValue] == 2;
      v11 = [*(a1 + 48) _shouldThrottleMessageToRecipient:*(a1 + 40)];
      if (v10)
      {
        if (v11)
        {
          v12 = IMLogHandleForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_22B7D4920();
          }

          if (!*(a1 + 56))
          {
            goto LABEL_24;
          }

          v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MSCriticalMessagingErrorDomain" code:4 userInfo:0];
          (*(*(a1 + 56) + 16))();
        }

        else
        {
          v17 = a1 + 48;
          v16 = *(a1 + 48);
          v18 = [*(a1 + 32) messageText];
          v19 = (a1 + 40);
          v20 = [*(a1 + 40) phoneNumber];
          [v16 _sendMessageText:v18 toHandle:v20 onService:@"SMS" completion:*(a1 + 56)];

          v21 = *(*(a1 + 48) + 96);
          v22 = *(*v17 + 32);
          v13 = [*v19 phoneNumber];
          [v21 recordMessageSentFromAppWithBundleID:v22 toRecipientHandle:v13];
        }

LABEL_23:

LABEL_24:
        goto LABEL_25;
      }
    }

    else
    {
      [*(a1 + 48) _shouldThrottleMessageToRecipient:*(a1 + 40)];
    }

    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D4988();
    }

    if (!*(a1 + 56))
    {
      goto LABEL_24;
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MSCriticalMessagingErrorDomain" code:3 userInfo:0];
    (*(*(a1 + 56) + 16))();
    goto LABEL_23;
  }

  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D48B8();
  }

  if (*(a1 + 56))
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MSCriticalMessagingErrorDomain" code:2 userInfo:0];
    (*(*(a1 + 56) + 16))();
LABEL_25:
  }
}

void sub_22B5BEC68(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D4AC8(a1, v3, v4);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) identifier];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Finished posting notification: %@", &v7, 0xCu);
    }
  }
}

void sub_22B5BF3BC(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D1A970] sharedInstance];
  [v4 postCoreAutomationNotificationFinishedTapToDownload:*(a1 + 32) downloadedFromCloudKitSuccessfully:a2];
}

void sub_22B5BF41C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) fallbackToDownloadIfPossible:*(a1 + 40) transfer:*(a1 + 48)];
  }

  if (IMIsRunningInAutomation())
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_22B5BF8CC(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
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

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v3 containsObject:{v9, v12}])
        {
          v10 = *(a1 + 40);
          v11 = [v9 guid];
          [v10 fallbackToDownloadIfPossible:v11 transfer:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

uint64_t sub_22B5BFCB4()
{
  qword_281420FD0 = objc_alloc_init(IMDNicknameController);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B5C03CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"date"];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v3 objectForKey:@"date"];
    [v7 timeIntervalSinceNow];
    if (v8 <= -1209600.0)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a1 + 32) ^ 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_22B5C0DD0(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (a2)
      {
        v7 = @"YES";
      }

      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "We successfully reuploaded our local nickname %@ %@", &v12, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (a2)
  {
    v10 = [WeakRetained defaults];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
    [v10 setValue:v11 forDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A418]];
  }

  else
  {
    [WeakRetained _tryToReuploadPersonalNicknameWithRetryCount:*(a1 + 48) + 1 reuploadVersion:*(a1 + 40)];
  }
}

void sub_22B5C1240(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = MessageDictionaryNicknameRequestPersonalNicknameInfoKey;
  v12[0] = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  if ([*(a1 + 32) _sendMessageDictionary:v2 toDevice:0])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Successfully sent request to peers for nickname info", &v9, 2u);
      }
    }

    v4 = [*(a1 + 32) defaults];
    [v4 setValue:MEMORY[0x277CBEC38] forDomain:*MEMORY[0x277D1A3C0] forKey:*MEMORY[0x277D1A410]];
  }

  else
  {
    v5 = *(a1 + 40) < 5uLL;
    v6 = IMOSLoggingEnabled();
    if (v5)
    {
      if (v6)
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v9 = 138412290;
          v10 = &unk_283F4EF78;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "We did not have the IDSDevices to send the request to, going to try again in %@", &v9, 0xCu);
        }
      }

      [*(a1 + 32) _retryPeerRequestWithRetry:*(a1 + 40) + 1];
    }

    else if (v6)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "We do not have enough retries to get nickname info, not trying again", &v9, 2u);
      }
    }
  }
}

void sub_22B5C197C(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 9) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = 138412290;
        v5 = &unk_283F4EF78;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Nickname is still uploading after time out %@ setting upload to done", &v4, 0xCu);
      }
    }

    *(*(a1 + 32) + 9) = 0;
  }
}

void sub_22B5C2150(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_22B5C21DC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_22B5C21F4(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v17 = a3;
  v45 = a4;
  v46 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v24 = [v17 description];
    [WeakRetained _showDebugAlertWithHeader:@"Successfully Uploaded Personal Nickname" message:v24];

    v25 = _iMessageTelemetryLogHandle();
    if (os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22B4CC000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AUTOMATION_HOOK_SNAPUploadComplete", "SNAP upload via modern API completed", buf, 2u);
    }

    v26 = objc_loadWeakRetained((a1 + 40));
    [v26 setPersonalNickname:v17];

    v27 = objc_loadWeakRetained((a1 + 40));
    [v27 _resetHandleSharingList];

    v28 = objc_loadWeakRetained((a1 + 40));
    v29 = [v28 personalNickname];
    v30 = v45;
    [v28 _storePublicNickname:v29 nicknameLocation:v45 encryptionKey:v46 wallpaperDataTag:v18 wallpaperLowResDataTag:v19 wallpaperMetadataTag:v20 avatarRecipeDataTag:v21];

    v31 = objc_loadWeakRetained((a1 + 40));
    [v31 _endNicknameUpload];

    v32 = [MEMORY[0x277CCAB98] defaultCenter];
    [v32 postNotificationName:IMDMeCardUpdatedNotification object:0 userInfo:0];

    v33 = objc_loadWeakRetained((a1 + 40));
    [v33 sendPersonalNicknameRecordIDAndVersionToAllPeers];

    v34 = *(a1 + 32);
    if (v34)
    {
      v35 = *(v34 + 16);
LABEL_12:
      v35();
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *v47 = 0;
        _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Unable to store in Public Database, aborting fanout to other devices", v47, 2u);
      }
    }

    v37 = objc_loadWeakRetained((a1 + 40));
    v38 = MEMORY[0x277CCACA8];
    v39 = v37;
    v40 = [v39 personalNickname];
    v41 = [v38 stringWithFormat:@"Error: %@\n Fallback nickname: %@", v22, v40];
    [v39 _showDebugAlertWithHeader:@"Failed Uploading Personal Nickname" message:v41];

    v42 = objc_loadWeakRetained((a1 + 40));
    v43 = [v42 personalNickname];
    [v42 setPersonalNickname:v43];

    v44 = *(a1 + 32);
    v30 = v45;
    if (v44)
    {
      v35 = *(v44 + 16);
      goto LABEL_12;
    }
  }
}

void sub_22B5C255C(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v24 = [v16 description];
    [WeakRetained _showDebugAlertWithHeader:@"Successfully Uploaded Personal Nickname" message:v24];

    v25 = _iMessageTelemetryLogHandle();
    if (os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22B4CC000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AUTOMATION_HOOK_SNAPUploadComplete", "SNAP upload via legacy API completed", buf, 2u);
    }

    v26 = objc_loadWeakRetained((a1 + 40));
    [v26 setPersonalNickname:v16];

    v27 = objc_loadWeakRetained((a1 + 40));
    [v27 _resetHandleSharingList];

    v28 = objc_loadWeakRetained((a1 + 40));
    v29 = [v28 personalNickname];
    [v28 _storePublicNickname:v29 nicknameLocation:v17 encryptionKey:v18 wallpaperDataTag:v19 wallpaperLowResDataTag:v20 wallpaperMetadataTag:v21 avatarRecipeDataTag:0];

    v30 = objc_loadWeakRetained((a1 + 40));
    [v30 _endNicknameUpload];

    v31 = [MEMORY[0x277CCAB98] defaultCenter];
    [v31 postNotificationName:IMDMeCardUpdatedNotification object:0 userInfo:0];

    v32 = objc_loadWeakRetained((a1 + 40));
    [v32 sendPersonalNicknameRecordIDAndVersionToAllPeers];

    v33 = *(a1 + 32);
    if (v33)
    {
      v34 = *(v33 + 16);
LABEL_12:
      v34();
    }
  }

  else
  {
    v44 = v17;
    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *v45 = 0;
        _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Unable to store in Public Database, aborting fanout to other devices", v45, 2u);
      }
    }

    v36 = objc_loadWeakRetained((a1 + 40));
    v37 = MEMORY[0x277CCACA8];
    v38 = v36;
    v39 = [v38 personalNickname];
    v40 = [v37 stringWithFormat:@"Error: %@\n Fallback nickname: %@", v22, v39];
    [v38 _showDebugAlertWithHeader:@"Failed Uploading Personal Nickname" message:v40];

    v41 = objc_loadWeakRetained((a1 + 40));
    v42 = [v41 personalNickname];
    [v41 setPersonalNickname:v42];

    v43 = *(a1 + 32);
    v17 = v44;
    if (v43)
    {
      v34 = *(v43 + 16);
      goto LABEL_12;
    }
  }
}

void sub_22B5C3328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_22B5C3384(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_22B5C339C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = IMOSLoggingEnabled();
  if (v11)
  {
    if (v16)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = v11;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Got personal nickname from IMTransferAgent: %@", buf, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v19 = [v11 description];
    [WeakRetained _showDebugAlertWithHeader:@"Fetched Personal Nickname" message:v19];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v16)
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(a1 + 32);
        *buf = 138412546;
        v25 = v15;
        v26 = 2112;
        v27 = v21;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Failed to fetch public nickname {error: %@, recordName: %@}", buf, 0x16u);
      }
    }

    v22 = objc_loadWeakRetained((a1 + 56));
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"recordID: %@\ndecryptionKey: %@\nerror: %@", *(a1 + 32), *(a1 + 40), v15];
    [v22 _showDebugAlertWithHeader:@"Failed Personal Nickname Fetch" message:v23];

    (*(*(a1 + 48) + 16))();
  }
}

void sub_22B5C3904(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) stopTimingForKey:@"Nickname Download"];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      [*(a1 + 32) totalTimeForKey:@"Nickname Download"];
      *buf = 134217984;
      v16 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Public Nickname fetched or failed in time: %f", buf, 0xCu);
    }
  }

  if (!v5)
  {
    if (v6)
    {
      v9 = [v6 domain];
      v10 = [v9 lowercaseString];
      v11 = [v10 containsString:@"blastdoor"];

      if (v11)
      {
        v12 = [MEMORY[0x277CCACA8] stringGUID];
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", &unk_283F4E990];
        [IMBlastdoor sendBlastDoorError:v6 guid:v12 messageTypeString:v13 senderURI:0 senderToken:0 messageContext:0 payloadAttachmentURL:0];
      }
    }
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    (*(v14 + 16))(v14, v5, *(a1 + 40), *(a1 + 48), *(a1 + 56), v6);
  }
}

void sub_22B5C3AF4(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) stopTimingForKey:@"Nickname Download"];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      [*(a1 + 32) totalTimeForKey:@"Nickname Download"];
      *buf = 134217984;
      v16 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Public Nickname fetched or failed in time: %f", buf, 0xCu);
    }
  }

  if (!v5)
  {
    if (v6)
    {
      v9 = [v6 domain];
      v10 = [v9 lowercaseString];
      v11 = [v10 containsString:@"blastdoor"];

      if (v11)
      {
        v12 = [MEMORY[0x277CCACA8] stringGUID];
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", &unk_283F4E990];
        [IMBlastdoor sendBlastDoorError:v6 guid:v12 messageTypeString:v13 senderURI:0 senderToken:0 messageContext:0 payloadAttachmentURL:0];
      }
    }
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    (*(v14 + 16))(v14, v5, *(a1 + 40), *(a1 + 48), *(a1 + 56), v6);
  }
}

BOOL sub_22B5C4748(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[IMDChatRegistry sharedInstance];
  v3 = [v2 allExistingChatsWithIdentifier:*(a1 + 32)];

  v4 = [v3 count];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v4)
      {
        v6 = @"YES";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Has messages history with sender:%@", &v8, 0xCu);
    }
  }

  return v4 != 0;
}

BOOL sub_22B5C4878(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _appearsToBePhoneNumber];
  v3 = objc_alloc(MEMORY[0x277CF7D30]);
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  v5 = [v3 initWithType:v4 value:*(a1 + 32)];
  v6 = [MEMORY[0x277CF7D48] predicateForCallsWithRemoteParticipantHandle:v5];
  v7 = [*(a1 + 40) callHistoryManager];
  v8 = [v7 countCallsWithPredicate:v6];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if (v8)
      {
        v10 = @"YES";
      }

      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Has call history with sender:%@", &v12, 0xCu);
    }
  }

  return v8 != 0;
}

void sub_22B5C49E0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v11)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fetched Nickname for %@", *(a1 + 32)];
    v18 = [v11 description];
    [WeakRetained _showDebugAlertWithHeader:v17 message:v18];

    v19 = [*(a1 + 40) _stripFZIDPrefix];
    v20 = objc_loadWeakRetained((a1 + 64));
    [v20 saveNicknameForRecordID:*(a1 + 48) handleID:v19 userNickname:v11];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = *(a1 + 48);
        *buf = 138412546;
        v27 = v22;
        v28 = 2112;
        v29 = v15;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Nicknames - Failed getting nickname for record ID %@ from transfer agent with error %@", buf, 0x16u);
      }
    }

    v23 = objc_loadWeakRetained((a1 + 64));
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed Nickname Fetch for %@", *(a1 + 32)];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"recordID: %@\nerror:%@", *(a1 + 48), v15];
    [v23 _showDebugAlertWithHeader:v24 message:v25];

    (*(*(a1 + 56) + 16))();
  }
}

void sub_22B5C4E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22B5C4E90(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = IMOSLoggingEnabled();
  if (a2)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Transfer agent succeeded in deleting public nickname from CloudKit", buf, 2u);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _deletePublicNicknameLocationAndKey];

    v9 = objc_loadWeakRetained((a1 + 40));
    [v9 setPersonalNickname:0];

    v10 = objc_loadWeakRetained((a1 + 40));
    [v10 _resetHandleSharingList];

    if (*(a1 + 48) == 1)
    {
      v11 = objc_loadWeakRetained((a1 + 40));
      [v11 sendPersonalNicknameRecordIDAndVersionToAllPeers];
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = *(v12 + 16);
LABEL_16:
      v13();
    }
  }

  else
  {
    if (v6)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Did not succeed in deleting public nickname from CloudKit!", v16, 2u);
      }
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      v13 = *(v15 + 16);
      goto LABEL_16;
    }
  }
}

void sub_22B5C71B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  objc_destroyWeak(va);
  objc_destroyWeak((v24 - 88));
  _Unwind_Resume(a1);
}

void sub_22B5C71D0(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D4B80();
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Finished personal nickname fetch with nickname: %@, updating key store", buf, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 80));
    [WeakRetained _deletePendingNicknameForUpload];

    v10 = objc_loadWeakRetained((a1 + 80));
    [v10 setPersonalNickname:v5];

    v7 = objc_loadWeakRetained((a1 + 80));
    [v7 _storePublicNickname:v5 nicknameLocation:*(a1 + 32) encryptionKey:*(a1 + 40) wallpaperDataTag:*(a1 + 48) wallpaperLowResDataTag:*(a1 + 56) wallpaperMetadataTag:*(a1 + 64) avatarRecipeDataTag:*(a1 + 72)];
  }
}

void sub_22B5CAB24(uint64_t a1, void *a2)
{
  v38[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 objectForKey:@"NicknameServiceDevices"];
    if ([*(a1 + 32) _appearsToBePhoneNumber])
    {
      v5 = IDSCopyIDForPhoneNumber();
    }

    else
    {
      if (![*(a1 + 32) _appearsToBeEmail])
      {
        v8 = IMLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D4D04((a1 + 32), v8, v9, v10, v11, v12, v13, v14);
        }

        v7 = 0;
        goto LABEL_14;
      }

      v5 = MEMORY[0x231896500](*(a1 + 32));
    }

    v7 = v5;
LABEL_14:
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v16 = [*(*(a1 + 40) + 16) firstName];
    if (v16)
    {
      CFDictionarySetValue(v15, @"FirstName", v16);
    }

    v17 = [*(*(a1 + 40) + 16) lastName];
    if (v17)
    {
      CFDictionarySetValue(v15, @"LastName", v17);
    }

    if (qword_27D8CC180)
    {
      CFDictionarySetValue(v15, qword_27D8CC170, qword_27D8CC180);
    }

    v18 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:1];
    if (v18)
    {
      CFDictionarySetValue(v15, @"UpdateInfoIncluded", v18);
    }

    v37[0] = *MEMORY[0x277D18650];
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v37[1] = *MEMORY[0x277D18570];
    v38[0] = v19;
    v38[1] = MEMORY[0x277CBEC38];
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v21 = [v20 mutableCopy];

    if (v7)
    {
      [v21 setObject:v7 forKeyedSubscript:*MEMORY[0x277D185E0]];
    }

    if (v15 && [v4 count])
    {
      v22 = MEMORY[0x277D1AA08];
      v23 = *(*(a1 + 40) + 168);
      v24 = [v21 copy];
      v31 = 0;
      v32 = 0;
      v25 = [v22 service:v23 sendMessage:v15 toDestinations:v4 priority:300 options:v24 identifier:&v32 error:&v31];
      v26 = v32;
      v27 = v31;

      if (v27)
      {
        v28 = 0;
      }

      else
      {
        v28 = v25;
      }

      if (v28 == 1)
      {
        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v34 = v26;
            v35 = 2112;
            v36 = v4;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Successfully sent name only to message (%@) to destinations %@", buf, 0x16u);
          }
        }
      }

      else
      {
        v30 = IMLogHandleForCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D4C24();
        }
      }
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_39;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "devices are nil or empty from IDS so just returning", buf, 2u);
    }
  }

LABEL_39:
}

void sub_22B5CB414(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [a2 allValues];
  v3 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v16 = *v22;
    do
    {
      v5 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * v5);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v18;
          do
          {
            v11 = 0;
            do
            {
              if (*v18 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(a1 + 32);
              v13 = [*(*(&v17 + 1) + 8 * v11) destinationURIs];
              v14 = [v13 allObjects];
              [v12 addObjectsFromArray:v14];

              ++v11;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v4);
      v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_22B5CB5DC(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [a2 allValues];
  v3 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v16 = *v22;
    do
    {
      v5 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * v5);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v18;
          do
          {
            v11 = 0;
            do
            {
              if (*v18 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(a1 + 32);
              v13 = [*(*(&v17 + 1) + 8 * v11) destinationURIs];
              v14 = [v13 allObjects];
              [v12 addObjectsFromArray:v14];

              ++v11;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v4);
      v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_22B5CB7A4(id *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D4D74();
    }
  }

  if (*(a1 + 56) == 1)
  {
    [a1[4] minusSet:a1[5]];
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [a1[5] count];
      v6 = a1[5];
      *buf = 134218242;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Found %lu newServiceURIs: %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [a1[4] count];
      v9 = a1[4];
      *buf = 134218242;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Found %lu iMessageServiceURIs: %@", buf, 0x16u);
    }
  }

  v13[0] = @"NicknameServiceDevices";
  v13[1] = @"iMessageServiceDevices";
  v10 = a1[6];
  v11 = a1[4];
  v14[0] = a1[5];
  v14[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10[2](v10, v12);
}

void sub_22B5CB984(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5CB900);
  }

  _Unwind_Resume(a1);
}

void sub_22B5CBDC8(uint64_t a1, void *a2)
{
  v53[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [*(a1 + 32) copy];
    v5 = *(a1 + 72);
    v6 = [v3 objectForKey:@"NicknameServiceDevices"];
    v7 = v6;
    if (v5)
    {
      v8 = [v6 mutableCopy];

      v9 = [v3 objectForKey:@"iMessageServiceDevices"];
      [v8 minusSet:v9];

      v7 = v8;
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v51 = v7;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Will attempt to send to newServiceURIs: %@", buf, 0xCu);
      }
    }

    v11 = +[IMDChatRegistry sharedInstance];
    v47 = [v11 existingChatWithGUID:*(a1 + 40)];

    if (*(a1 + 32) || !v47)
    {
      v12 = v4;
    }

    else
    {
      v12 = [v47 lastAddressedLocalHandle];

      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v51 = v12;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Replaced from handle with: %@", buf, 0xCu);
        }
      }
    }

    if ([v12 _appearsToBeEmail])
    {
      v15 = MEMORY[0x231896500](v12);
    }

    else
    {
      v15 = IDSCopyIDForPhoneNumber();
    }

    v16 = v15;
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v51 = v16;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "From IDS handle: %@", buf, 0xCu);
      }
    }

    if (qword_27D8CC178)
    {
      CFDictionarySetValue(*(a1 + 48), qword_27D8CC170, qword_27D8CC178);
    }

    v52[0] = *MEMORY[0x277D18650];
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v52[1] = *MEMORY[0x277D18570];
    v53[0] = v18;
    v53[1] = MEMORY[0x277CBEC38];
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
    v20 = [v19 mutableCopy];

    if (v16)
    {
      [v20 setObject:v16 forKeyedSubscript:*MEMORY[0x277D185E0]];
    }

    if (*(a1 + 48) && [v7 count])
    {
      v21 = MEMORY[0x277D1AA08];
      v22 = *(a1 + 48);
      v23 = *(*(a1 + 56) + 168);
      v24 = [v20 copy];
      v48 = 0;
      v49 = 0;
      v25 = [v21 service:v23 sendMessage:v22 toDestinations:v7 priority:300 options:v24 identifier:&v49 error:&v48];
      v46 = v49;
      v26 = v48;

      if (v26)
      {
        v27 = 0;
      }

      else
      {
        v27 = v25;
      }

      if (v27 == 1)
      {
        if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *v51 = v46;
            *&v51[8] = 2112;
            *&v51[10] = v7;
            _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Successfully sent personal nickname to message (%@) to destinations %@", buf, 0x16u);
          }
        }

        v29 = _iMessageTelemetryLogHandle();
        if (os_signpost_enabled(v29))
        {
          v30 = [*(a1 + 64) count];
          *buf = 134217984;
          *v51 = v30;
          _os_signpost_emit_with_name_impl(&dword_22B4CC000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AUTOMATION_HOOK_SNAPNotificationSent", "SNAP sent to %lu recipients", buf, 0xCu);
        }

        v26 = 0;
      }

      else
      {
        v33 = IMLogHandleForCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D4C24();
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = *(a1 + 48) != 0;
          *buf = 67109378;
          *v51 = v32;
          *&v51[4] = 2112;
          *&v51[6] = v7;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Skipping new service nickname send. Have info to send: %i, NewServiceURIs: %@", buf, 0x12u);
        }
      }

      v26 = 0;
      v46 = 0;
    }

    v34 = [MEMORY[0x277D18A10] sharedInstanceForBagType:0];
    v35 = [v34 objectForKey:@"enable-snap-v2-back-compat"];
    v36 = [v35 BOOLValue];

    if (v36 && (*(a1 + 73) & 1) == 0)
    {
      v39 = [v3 objectForKey:@"iMessageServiceDevices"];
      v40 = +[IMDAccountController sharedAccountController];
      v45 = [v40 anySessionForServiceName:*MEMORY[0x277D1A620]];

      v41 = IMOSLoggingEnabled();
      if (v45)
      {
        if (v41)
        {
          v42 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *v51 = v39;
            _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Sending nickname info to destinations %@", buf, 0xCu);
          }
        }

        if ([v39 count])
        {
          v43 = [v39 allObjects];
          [v45 sendNicknameInfoToURIs:v43 chatGUID:*(a1 + 40)];
        }
      }

      else if (v41)
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "We didn't have a session to send the nickname info over", buf, 2u);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = *(a1 + 73);
        *buf = 67109376;
        *v51 = v36;
        *&v51[4] = 1024;
        *&v51[6] = v38;
        _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Skipping iMessage nickname send. isEnabled: %i, onlyUseNicknameSendingService: %i", buf, 0xEu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "devices are nil or empty from IDS so just returning", buf, 2u);
    }
  }
}

void sub_22B5CD4CC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a4;
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v6;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Failed to download nickname with error: %@", &v11, 0xCu);
      }

LABEL_9:
    }
  }

  else if (v7)
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v5 firstName];
      v10 = [v5 lastName];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Successfully downloaded and saved nickname for %@ %@.", &v11, 0x16u);
    }

    goto LABEL_9;
  }
}

void sub_22B5CD640(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5CD604);
  }

  _Unwind_Resume(a1);
}

void sub_22B5CE8A8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5CE7B0);
  }

  _Unwind_Resume(a1);
}

void sub_22B5D2188(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5D20C8);
  }

  _Unwind_Resume(a1);
}

void sub_22B5D28EC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5D2804);
  }

  _Unwind_Resume(a1);
}

void sub_22B5D4410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22B5D4464(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D53C8();
    }
  }

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setPersonalNickname:v5];
  }
}

void sub_22B5D9298(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 32);
  v4 = [*(a1 + 48) sender];
  LOBYTE(v2) = [v3 shouldSkipTrustKitDecisioningForChat:v2 sender:v4];

  v5 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "TrustKit query filtering skipped", buf, 2u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B5D9B1C;
    block[3] = &unk_278702FA0;
    v25 = *(a1 + 56);
    v26 = *(a1 + 64);
    dispatch_async(MEMORY[0x277D85CD0], block);

    v7 = v25;
  }

  else
  {
    if (v5)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Performing TrustKit Check", buf, 2u);
      }
    }

    v9 = *(*(a1 + 32) + 32);
    v10 = [*(a1 + 48) sender];
    v11 = [*(a1 + 48) service];
    v12 = [*(a1 + 48) rcsAdvisedAction];
    v13 = [*(a1 + 48) body];
    v14 = [*(a1 + 48) countryCode];
    v15 = [*(a1 + 48) messageContainsOneTimeCode];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_22B5D9618;
    v27[3] = &unk_278705EA0;
    v23 = *(a1 + 32);
    v16 = *(&v23 + 1);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    *&v19 = v17;
    *(&v19 + 1) = v18;
    v28 = v23;
    v29 = v19;
    v30 = *(a1 + 64);
    LOBYTE(v22) = v15;
    [v9 requestDecisionForSender:v10 service:v11 trustIndicator:v12 messageBody:v13 countryCode:v14 requestReason:0 containsOneTimeCode:v22 completionHandler:v27];

    v7 = *(&v28 + 1);
  }

  if ([*(*(a1 + 32) + 24) wasContextUsed])
  {
    [*(*(a1 + 32) + 24) setShouldTrackForRequery:1];
  }

  else
  {
    v20 = +[IMDSpamCheckRequeryTracker sharedTracker];
    v21 = [*(a1 + 48) guid];
    [v20 startTrackingMessageGUID:v21 chat:*(a1 + 40)];
  }
}

void sub_22B5D9618(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Finished TrustKit Check", buf, 2u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5D9780;
  block[3] = &unk_278705E78;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v16 = a2;
  block[4] = v7;
  v11 = v8;
  v12 = *(a1 + 48);
  v13 = v5;
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t sub_22B5D9780(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 80) == 2)
  {
    v2 = [*(*(a1 + 32) + 24) wasContextUsed];
    v3 = +[IMDAccountController sharedAccountController];
    v4 = [v3 activeAccountsAreEligibleForHawking];

    v5 = [MEMORY[0x277D1AC58] isBlackholeEnabledForEligibleAccounts:v4];
    if (v2)
    {
      if (v5)
      {
        [*(*(a1 + 32) + 24) setIsBlackholed:1];
        v6 = 7;
        [*(*(a1 + 32) + 24) setSpamDetectionSource:7];
        if (IMOSLoggingEnabled())
        {
          v7 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            v8 = *(a1 + 48);
            v18 = 138412290;
            v19 = v8;
            _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Message marked as blackholed by TrustKit: %@", &v18, 0xCu);
          }

LABEL_12:

          v6 = 7;
          goto LABEL_22;
        }

        goto LABEL_22;
      }

      v6 = 1;
      [*(*(a1 + 32) + 24) setSpamDetectionSource:1];
      [*(*(a1 + 32) + 24) setIsFiltered:2];
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_22;
      }

      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 48);
        v18 = 138412290;
        v19 = v11;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Message marked as junk by TrustKit: %@", &v18, 0xCu);
      }
    }

    else
    {
      if (v5)
      {
        [*(a1 + 40) updateIsBlackholed:1];
        v6 = 7;
        [*(a1 + 40) setSpamDetectionSource:7];
        if (IMOSLoggingEnabled())
        {
          v7 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            v9 = *(a1 + 40);
            v18 = 138412290;
            v19 = v9;
            _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Chat marked as blackholed by TrustKit: %@", &v18, 0xCu);
          }

          goto LABEL_12;
        }

LABEL_22:
        v15 = +[IMDSpamFilteringHelper sharedHelper];
        [v15 presentDebugUI];

        v16 = +[IMDSpamFilteringHelper sharedHelper];
        [v16 recordJunkMetricsForSpamDetectionSource:v6 service:*MEMORY[0x277D1A620]];

        goto LABEL_23;
      }

      [*(a1 + 40) setSpamDetectionSource:1];
      v12 = *(a1 + 40);
      v13 = [*(a1 + 48) guid];
      [v12 setSpamDetectedMessage:v13];

      [*(a1 + 40) updateIsFiltered:2];
      if (!IMOSLoggingEnabled())
      {
LABEL_21:
        v6 = 1;
        goto LABEL_22;
      }

      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 40);
        v18 = 138412290;
        v19 = v14;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Chat marked as junk by TrustKit: %@", &v18, 0xCu);
      }
    }

    goto LABEL_21;
  }

LABEL_23:
  if (*(a1 + 56))
  {
    [*(a1 + 48) setSpamModelMetadata:?];
  }

  return [*(a1 + 64) fullfillWithValue:*(a1 + 72)];
}

void sub_22B5D9B28(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Finished CTS Check", buf, 2u);
    }
  }

  if (a2 == 8)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "This sender is a contact, not asking for junk", buf, 2u);
      }
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_22B5DA144;
    v8[3] = &unk_278702FA0;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  else if (a2 == 1)
  {
    if ([*(*(a1 + 32) + 24) wasContextUsed])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B5D9FF8;
      block[3] = &unk_278705748;
      block[4] = *(a1 + 32);
      v12 = *(a1 + 64);
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = *(a1 + 40);
          *buf = 138412290;
          v20 = v7;
          _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "CTS says chat is junk: %@", buf, 0xCu);
        }
      }

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_22B5D9EBC;
      v15[3] = &unk_2787038F8;
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      dispatch_async(MEMORY[0x277D85CD0], v15);
    }
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }
}

uint64_t sub_22B5D9EBC(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = +[IMDSpamFilteringHelper sharedHelper];
  [v2 presentDebugUI];

  v3 = +[IMDSpamFilteringHelper sharedHelper];
  [v3 recordJunkMetricsForSpamDetectionSource:3 service:*MEMORY[0x277D1A620]];

  [*(a1 + 32) setSpamDetectionSource:3];
  [*(a1 + 32) updateIsFiltered:2];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Chat marked as Junk by CTS: %@", &v7, 0xCu);
    }
  }

  return [*(a1 + 40) fullfillWithValue:*(a1 + 48)];
}

uint64_t sub_22B5D9FF8(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = +[IMDSpamFilteringHelper sharedHelper];
  [v2 presentDebugUI];

  v3 = +[IMDSpamFilteringHelper sharedHelper];
  [v3 recordJunkMetricsForSpamDetectionSource:3 service:*MEMORY[0x277D1A620]];

  [*(*(a1 + 32) + 24) setSpamDetectionSource:3];
  [*(*(a1 + 32) + 24) setIsFiltered:2];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Message marked as Junk by CTS: %@", &v7, 0xCu);
    }
  }

  return [*(a1 + 48) fullfillWithValue:*(a1 + 56)];
}

void sub_22B5DA830(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v12 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      v6 = *(a1 + 32);
      if (v2)
      {
        v5 = @"YES";
      }

      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Resolved inconsistent GUID to %@ with success: %@", &v8, 0x16u);
    }
  }

  if (v2)
  {
    [*(a1 + 40) setGuid:*(a1 + 32)];
    v7 = +[IMDChatStore sharedInstance];
    [v7 storeChat:*(a1 + 48)];
  }
}

uint64_t sub_22B5DACE4()
{
  qword_281420FD8 = objc_alloc_init(IMDMessageStore);

  return MEMORY[0x2821F96F8]();
}

void sub_22B5DB010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22B5DB030(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildUnreadMessageCountForGUIDs:0];
}

uint64_t sub_22B5DB210(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Registering for the DB reconnect notification.", v4, 2u);
    }
  }

  return IMDRegisterReconnectBlockWithIdentifier();
}

void sub_22B5DB2B4()
{
  v0 = [MEMORY[0x277D19268] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (v1)
  {
    v2 = [MEMORY[0x277D192D0] userNotificationWithIdentifier:@"com.apple.csdbpersistence-mandatory-db-reconnect" title:@"Messages DB Error" message:@"INTERNAL: A serious issue has been encountered while migrating your Messages database.  Logs files have been written detailing the problem defaultButton:please sync them off of your device as soon as possible and file a radar." alternateButton:@"OK" otherButton:{0, 0}];
    v3 = [MEMORY[0x277D192D8] sharedInstance];
    [v3 addUserNotification:v2 listener:0];

    if (qword_27D8CFF00 != -1)
    {
      sub_22B7D5A8C();
    }

    off_27D8CFEF8(0, @"imd-reconnection-log-dump", 12);
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Got a mandatory DB reconnect notification, I will now exit.", v6, 2u);
    }
  }

  v5 = dispatch_time(0, 2000000000);
  dispatch_after(v5, MEMORY[0x277D85CD0], &unk_283F1A1C8);
}

uint64_t (*sub_22B5DB424())(void, void, void)
{
  result = MEMORY[0x231897B50]("MarcoAction", @"Marco");
  off_27D8CFEF8 = result;
  return result;
}

uint64_t sub_22B5DB468(uint64_t a1, uint64_t a2)
{
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_DEFAULT, "  => Posting database full", v4, 2u);
  }

  return +[IMDMessageStore databaseFull];
}

void sub_22B5DB610(uint64_t a1)
{
  v1 = [*(a1 + 32) unreadCountController];
  [v1 recalculate];
}

void sub_22B5DC120(int a1, int a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = sub_22B5EDFB4;
  v10 = &unk_278706198;
  v11 = &v13;
  LOBYTE(v12) = a2;
  if (qword_281421438 != -1)
  {
    dispatch_once(&qword_281421438, &v7);
  }

  if (a1 != a2 || (v14[3] & 1) != 0)
  {
    if (qword_281421440)
    {
      v4 = MEMORY[0x277CBED28];
      if (!a2)
      {
        v4 = MEMORY[0x277CBED10];
      }

      v5 = *MEMORY[0x277CBF010];
      CFPreferencesSetValue(qword_281421440, *v4, @"com.apple.MobileSMS", @"mobile", *MEMORY[0x277CBF010]);
      CFPreferencesSynchronize(@"com.apple.MobileSMS", @"mobile", v5);
    }

    if (qword_281421448)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, qword_281421448, 0, 0, 0);
    }

    if (a2)
    {
      [IMDMessageStore databaseFull:v7];
    }

    else
    {
      [IMDMessageStore databaseNoLongerFull:v7];
    }
  }

  _Block_object_dispose(&v13, 8);
}

void sub_22B5DC294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5DC714(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B5DC6BCLL);
  }

  _Unwind_Resume(a1);
}

void sub_22B5DD724(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5CC8();
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Deleted %@ from index", &v6, 0xCu);
    }
  }
}

void sub_22B5DD818(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5D34();
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Added %@ to index", &v6, 0xCu);
    }
  }
}

void *IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v218 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = IMDCreateIMItemFromIMDMessageRecordRefCopyAttachmentsIfNeededWithAccountLookup();
  v6 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    if (qword_27D8CFF20 != -1)
    {
      sub_22B7D5DA0();
    }

    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v91 = NSStringFromClass(v9);
      v10 = [v7 isFromMe];
      v90 = [v7 sender];
      v89 = [v7 service];
      v11 = [v7 encrypted];
      v87 = [v7 handle];
      v88 = [v7 destinationCallerID];
      v86 = [v7 unformattedID];
      v85 = [v7 countryCode];
      v84 = [v7 roomName];
      v12 = [v7 flags];
      v13 = off_27D8CFF18;
      v75 = [v7 subject];
      v83 = v13();
      v14 = off_27D8CFF18;
      v74 = [v7 body];
      v73 = [v74 string];
      v82 = v14();
      v60 = [v7 messageID];
      v81 = [v7 guid];
      v55 = [v7 sortID];
      v72 = [v7 time];
      [v72 timeIntervalSinceReferenceDate];
      v16 = v15;
      v71 = [v7 timeDelivered];
      [v71 timeIntervalSinceReferenceDate];
      v18 = v17;
      v70 = [v7 timeRead];
      [v70 timeIntervalSinceReferenceDate];
      v20 = v19;
      v69 = [v7 timePlayed];
      [v69 timeIntervalSinceReferenceDate];
      v22 = v21;
      v80 = [v7 fileTransferGUIDs];
      v56 = [v7 isEmpty];
      v54 = [v7 isFinished];
      v62 = [v7 isSent];
      LODWORD(v13) = [v7 isRead];
      v68 = [v7 isDelivered];
      v67 = [v7 scheduleType];
      v66 = [v7 scheduleState];
      v65 = [v7 isAudioMessage];
      v64 = [v7 isPlayed];
      v63 = [v7 isFromMe];
      v61 = [v7 hasDataDetectorResults];
      v59 = [v7 wasDataDetected];
      v58 = [v7 wasDowngraded];
      v57 = [v7 isEmote];
      v53 = [v7 isExpirable];
      v52 = [v7 expireState];
      v79 = [v7 balloonBundleID];
      v78 = [v7 expressiveSendStyleID];
      v77 = [v7 timeExpressiveSendPlayed];
      v76 = [v7 bizIntent];
      v50 = [v7 locale];
      v48 = [v7 biaReferenceID];
      v47 = [v7 errorCode];
      v46 = [v7 cloudKitSyncState];
      v45 = [v7 isCorrupt];
      v44 = [v7 shouldSendMeCard];
      v42 = [v7 isSpam];
      v41 = [v7 hasUnseenMention];
      v40 = [v7 threadIdentifier];
      v39 = [v7 threadOriginator];
      v38 = [v7 replyCountsByPart];
      v36 = [v7 isStewie];
      v35 = [v7 stewieConversationID];
      v51 = [v7 syndicationRanges];
      v33 = [v51 componentsJoinedByString:{@", "}];
      v49 = [v7 syncedSyndicationRanges];
      v32 = [v49 componentsJoinedByString:{@", "}];
      v43 = [v7 dateEdited];
      [v43 timeIntervalSinceReferenceDate];
      v24 = v23;
      v37 = [v7 dateRecovered];
      [v37 timeIntervalSinceReferenceDate];
      v26 = v25;
      v34 = [v7 groupActivity];
      v30 = [v7 wasDetonated];
      v29 = [v7 isSOS];
      v28 = [v7 isCritical];
      v31 = [v7 fallbackHash];
      v95 = v10;
      v101 = v11;
      v113 = v12;
      v119 = v60;
      v123 = v55;
      *buf = 138428162;
      v93 = v91;
      v135 = v56;
      v94 = 1024;
      v137 = v54;
      v96 = 2112;
      v97 = v90;
      v98 = 2112;
      v99 = v89;
      v100 = 1024;
      v102 = 2112;
      v103 = v87;
      v104 = 2112;
      v105 = v88;
      v106 = 2112;
      v107 = v86;
      v108 = 2112;
      v109 = v85;
      v110 = 2112;
      v111 = v84;
      v139 = v62;
      v112 = 2048;
      v114 = 2112;
      v115 = v83;
      v116 = 2112;
      v117 = v82;
      v118 = 2048;
      v120 = 2112;
      v121 = v81;
      v122 = 2048;
      v124 = 2048;
      v125 = v16;
      v126 = 2048;
      v127 = v18;
      v128 = 2048;
      v129 = v20;
      v130 = 2048;
      v131 = v22;
      v132 = 2112;
      v133 = v80;
      v134 = 1024;
      v136 = 1024;
      v138 = 1024;
      v140 = 1024;
      v141 = v13;
      v142 = 1024;
      v143 = v68;
      v144 = 2048;
      v145 = v67;
      v146 = 2048;
      v147 = v66;
      v148 = 1024;
      v149 = v65;
      v150 = 1024;
      v151 = v64;
      v152 = 1024;
      v153 = v63;
      v154 = 1024;
      v155 = v61;
      v156 = 1024;
      v157 = v59;
      v158 = 1024;
      v159 = v58;
      v160 = 1024;
      v161 = v57;
      v162 = 1024;
      v163 = v53;
      v164 = 1024;
      v165 = v52;
      v166 = 2112;
      v167 = v79;
      v168 = 2112;
      v169 = v78;
      v170 = 2112;
      v171 = v77;
      v172 = 2112;
      v173 = v76;
      v174 = 2112;
      v175 = v50;
      v176 = 2112;
      v177 = v48;
      v178 = 1024;
      v179 = v47;
      v180 = 2048;
      v181 = v46;
      v182 = 1024;
      v183 = v45;
      v184 = 1024;
      v185 = v44;
      v186 = 1024;
      v187 = v42;
      v188 = 1024;
      v189 = v41;
      v190 = 2112;
      v191 = v40;
      v192 = 2112;
      v193 = v39;
      v194 = 2112;
      v195 = v38;
      v196 = 1024;
      v197 = v36;
      v198 = 2048;
      v199 = v35;
      v200 = 2112;
      v201 = v33;
      v202 = 2112;
      v203 = v32;
      v204 = 2048;
      v205 = v24;
      v206 = 2048;
      v207 = v26;
      v208 = 1024;
      v209 = v34 != 0;
      v210 = 1024;
      v211 = v30;
      v212 = 1024;
      v213 = v29;
      v214 = 1024;
      v215 = v28;
      v216 = 2048;
      v217 = [v31 length];
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Built IMItem from IMDMessageRecordRef: %@[outgoing: %{BOOL}d sender=%@; service=%@; encrypted=%{BOOL}d; handle=%@; destinationCallerID= %@, unformatted=%@; country=%@; roomName='%@'; flags=0x%llx; subject='%@' text='%@' messageID: %lld GUID:'%@' sortID: %lu date:'%f' date-delivered:'%f' date-read:'%f' date-played:'%f' transfer guids: '%@' empty: %{BOOL}d finished: %{BOOL}d sent: %{BOOL}d read: %{BOOL}d delivered: %{BOOL}d scheduleType: %lu, scheduleState: %lu, audio: %{BOOL}d played: %{BOOL}d from-me: %{BOOL}d DD results: %{BOOL}d DD Scanned: %{BOOL}d Downgraded: %{BOOL}d emote: %{BOOL}d expirable: %{BOOL}d expire-state: %d balloon-bundle-id: %@ expressive-send-style-id: %@ time-expressive-send-played: %@ bizIntent: %@ locale: %@ biaReferenceID: %@ error: %d sync-state %lli corrupt: %{BOOL}d shouldSendMeCard: %{BOOL}d isSpam: %{BOOL}d hasUnseenMention: %{BOOL}d threadIdentifier: %@, threadOriginator: %@, replyCountsByPart: %@, isChoros: %{BOOL}d, chorosConversationID: %ld, syndicationRanges: %@, syncedSyndicationRanges: %@, dateEdited: '%f', dateRecovered: '%f', hasGroupActivity: %{BOOL}d, wasDetonated: %{BOOL}d, isSOS: %{BOOL}d, isCritical %{BOOL}d, fallbackHash (len): %llu]", buf, 0x210u);
    }
  }

  objc_autoreleasePoolPop(v6);

  return v5;
}

void sub_22B5E0468(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(*(*(&v9 + 1) + 8 * v7), 0, 1, 1);
        if (AttachmentIfNeededRef)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [*(a1 + 32) addObject:AttachmentIfNeededRef];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_22B5E2E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5E2EA0(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 firstObject];

  v4 = v7;
  if (v3)
  {
    v5 = [v7 firstObject];
    AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v5, 0, 1, 1);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), AttachmentIfNeededRef);
    }

    v4 = v7;
  }
}

void sub_22B5E31D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5E31F4(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = v3;
  v7 = [v3 reverseObjectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if (![v12 itemType])
        {
          AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v12, 0, 1, 1);
          if (AttachmentIfNeededRef)
          {
            [*(*(*(a1 + 32) + 8) + 40) addObject:AttachmentIfNeededRef];
          }

          else
          {
            v14 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              if (v12)
              {
                v15 = @"non-nil";
              }

              else
              {
                v15 = @"nil";
              }

              if (v12)
              {
                v16 = [v12 itemType];
              }

              else
              {
                v16 = 0;
              }

              *buf = 138412546;
              v23 = v15;
              v24 = 2048;
              v25 = v16;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Could not fetch IMMessageItem from IMDMessageRecord with item (%@) and type %lld", buf, 0x16u);
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v9);
  }
}

void sub_22B5E35FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5E3CC4(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [a2 reverseObjectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        if (![v8 itemType])
        {
          v9 = [v8 associatedMessageGUID];

          if (!v9)
          {
            v10 = [v8 guid];
            v11 = [v8 date];
            v12 = [v8 partCount];
            if (v10)
            {
              v13 = v11 == 0;
            }

            else
            {
              v13 = 1;
            }

            if (!v13)
            {
              v14 = [objc_alloc(MEMORY[0x277D1AA68]) initWithGUID:v10 date:v11 messagePartCount:v12];
              [*(a1 + 32) addObject:v14];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

void sub_22B5E40D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5E40FC(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a2 reverseObjectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) date];
        v9 = v8;
        if (v8)
        {
          v10 = *(*(a1 + 32) + 8);
          if (*(v10 + 40))
          {
            if ([v8 compare:?] != -1)
            {
              goto LABEL_11;
            }

            v10 = *(*(a1 + 32) + 8);
          }

          objc_storeStrong((v10 + 40), v9);
        }

LABEL_11:

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void sub_22B5E434C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5E4364(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    obj = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(a2, 0, 1, 1);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![obj type])
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
    }
  }
}

void sub_22B5E45F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5E4610(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = a2;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        if ([v7 itemType] == 6)
        {
          AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v7, 0, 1, 1);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [AttachmentIfNeededRef type] == 6)
          {
            v10 = *(*(a1 + 32) + 8);
            v11 = *(v10 + 40);
            *(v10 + 40) = AttachmentIfNeededRef;

            goto LABEL_16;
          }

          v9 = IMLogHandleForCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v18 = v7;
            v19 = 2112;
            v20 = AttachmentIfNeededRef;
            _os_log_error_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_ERROR, "Record of itemType TUConversation did not recover as IMTUConversationItem record: %@ recovered as: %@", buf, 0x16u);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

uint64_t sub_22B5E4DFC()
{
  qword_281421388 = objc_alloc_init(MEMORY[0x277CBEB58]);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B5E6F18(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 88);
  if ((*(a1 + 80) - v3) >= 0x3E8)
  {
    LODWORD(v4) = 1000;
  }

  else
  {
    v4 = *(a1 + 80) - v3;
  }

  v5 = [*(a1 + 32) subarrayWithRange:?];
  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 96);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *buf = 67109890;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    v32 = 1024;
    v33 = v4;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Deleting batch %d of messages for chatIdentifiers %@ onServices %@. %d messages will be deleted.", buf, 0x22u);
  }

  IsFull = IMDSMSRecordIsFull();
  v11 = [MEMORY[0x277D1AA10] sharedInstance];
  [v11 deleteInteractionsWithMessageGUIDs:v5];

  IMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServices();
  v12 = +[IMDBroadcastController sharedProvider];
  v13 = [v12 broadcasterForChatListeners];
  [v13 historicalMessageGUIDsDeleted:v5 chatGUIDs:*(a1 + 56) queryID:0];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [IMDMessageStore _updateCacheForMessageGUID:*(*(&v21 + 1) + 8 * i) fromMessage:0 toMessage:0 updateLastMessage:1 calculateUnreadCount:1, v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  v19 = IMDSMSRecordIsFull() != 0;
  [*(a1 + 64) updateStampForGUIDs:*(a1 + 56)];
  sub_22B5DC120(IsFull != 0, v19);

  objc_autoreleasePoolPop(v2);
  return [*(a1 + 64) _deleteMessagesWithGUIDs:*(a1 + 32) chatIdentifiers:*(a1 + 40) style:*(a1 + 104) onServices:*(a1 + 48) batchNumber:*(a1 + 96) + 1 completion:*(a1 + 72)];
}

void sub_22B5E7620(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CF1B58] readMessageStream];
  v3 = [v2 source];

  v4 = [objc_alloc(MEMORY[0x277CF1A68]) initMarkUnreadWithIDSHandle:*(a1 + 32)];
  [v3 sendEvent:v4];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Donating Unread Message Event to Stream for %@.", &v7, 0xCu);
    }
  }
}

void sub_22B5E8B58(uint64_t a1, uint64_t a2)
{
  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "Scheduling a suppress DB invalidation timer", v7, 2u);
  }

  v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel__suppressDBUpdateTimerFired selector:0 userInfo:0 repeats:60.0];
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_22B5E9474(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109378;
    v4[1] = v2 == 0;
    v5 = 2112;
    v6 = v2;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "Updated message GUID successfully: %{BOOL}d error: %@", v4, 0x12u);
  }
}

void sub_22B5E9B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22B5E9BC4(uint64_t a1)
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel__clearExpiredTimeSensitiveMessages object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:sel__clearExpiredTimeSensitiveMessages withObject:0 afterDelay:0.0];
}

void sub_22B5E9CB0(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109378;
    v4[1] = v2 != 0;
    v5 = 2112;
    v6 = v2;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "Cleared expired time sensitive messages successfully: %{BOOL}d error: %@", v4, 0x12u);
  }
}

void sub_22B5E9E98()
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v0 = [v2 dateFromString:@"2025-07-01"];
  [v0 timeIntervalSinceNow];
  byte_27D8CFF08 = v1 > 0.0;
}

void sub_22B5EB2C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t sub_22B5EC3A4(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) addEditHistoryToMessage:*(*(*(a1 + 48) + 8) + 40) editedPartIndex:a2 editType:*(a1 + 56) previousMessage:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

void sub_22B5EC738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22B5EC764(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"p:%ld/%@", a2, *(a1 + 32)];
  v15 = WeakRetained;
  v6 = [WeakRetained messagesWithAssociatedGUID:v5 shouldLoadAttachments:0];
  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v22 = [v6 count];
    v23 = 2048;
    v24 = a2;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Found %ld associated message items for retracted message part %ld in edited message %@", buf, 0x20u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) guid];
        v14 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v22 = v13;
          v23 = 2112;
          v24 = v5;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Associated message item %@ refers to messagePartGUID %@ that was retracted. Deleting the associated message item.", buf, 0x16u);
        }

        [*(a1 + 40) addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

uint64_t sub_22B5ED23C(uint64_t a1, void *a2)
{
  v3 = [a2 balloonBundleID];
  v4 = [*(a1 + 32) balloonBundleID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id sub_22B5EDE1C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v6)
  {
    v10 = +[IMDAccountController sharedAccountController];
    v11 = [v10 accountForAccountID:v6];
LABEL_9:

    goto LABEL_10;
  }

  if (v7 && v8)
  {
    v12 = +[IMDServiceController sharedController];
    v10 = [v12 serviceWithName:v9];

    v13 = +[IMDAccountController sharedAccountController];
    v14 = [v13 accountsForLoginID:v7 onService:v10];
LABEL_8:
    v16 = v14;
    v11 = [v14 lastObject];

    goto LABEL_9;
  }

  if (v8)
  {
    v15 = +[IMDServiceController sharedController];
    v10 = [v15 serviceWithName:v9];

    v13 = +[IMDAccountController sharedAccountController];
    v14 = [v13 accountsForService:v10];
    goto LABEL_8;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

void *sub_22B5EDF84()
{
  result = MEMORY[0x231897B50]("MarcoLoggingStringForMessageData", @"Marco");
  off_27D8CFF18 = result;
  return result;
}

void sub_22B5EDFB4(uint64_t a1)
{
  if (!qword_281421448)
  {
    v2 = MEMORY[0x231897B50]("kCTMessageDatabaseFullNotification", @"CoreTelephony");
    if (v2)
    {
      v3 = *v2;
    }

    else
    {
      v3 = 0;
    }

    objc_storeStrong(&qword_281421448, v3);
  }

  v4 = qword_281421440;
  if (qword_281421440 || ((v5 = MEMORY[0x231897B50]("kCTMessageDatabaseFullPreference", @"CoreTelephony")) == 0 ? (v6 = 0) : (v6 = *v5), objc_storeStrong(&qword_281421440, v6), (v4 = qword_281421440) != 0))
  {
    v7 = CFPreferencesCopyValue(v4, @"com.apple.MobileSMS", @"mobile", *MEMORY[0x277CBF010]);
    if (v7)
    {
      v8 = v7;
      v9 = CFGetTypeID(v7);
      v10 = v9 == CFBooleanGetTypeID() && CFBooleanGetValue(v8) != 0;
      CFRelease(v8);
    }

    else
    {
      v10 = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = v10 != *(a1 + 40);
  }
}

uint64_t sub_22B5EE120()
{
  qword_281420FE0 = objc_alloc_init(IMDPhotosSyndicationLibraryChangeListener);

  return MEMORY[0x2821F96F8]();
}

void sub_22B5EE804(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = [*(a1 + 32) analysisFetchOptions];
  v2 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v13];
  if ([v2 count])
  {
    v3 = 0;
    while (1)
    {
      v4 = [v2 objectAtIndexedSubscript:v3];
      v5 = [*(a1 + 40) changeDetailsForObject:v4];
      if (v5)
      {
        break;
      }

LABEL_18:

      if (++v3 >= [v2 count])
      {
        goto LABEL_19;
      }
    }

    v6 = [v4 curationProperties];
    v7 = [v6 syndicationIdentifier];

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v15 = v3;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Asset at index %lu had changes! syndicationIdentifier: %@", buf, 0x16u);
      }
    }

    v9 = +[IMDFileTransferCenter sharedInstance];
    v10 = [v9 transferForGUID:v7];

    v11 = IMOSLoggingEnabled();
    if (v10)
    {
      if (v11)
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v15 = v10;
          v16 = 2112;
          v17 = v4;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Ingesting new analysis data. transfer %@, asset: %@", buf, 0x16u);
        }

LABEL_16:
      }
    }

    else if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v15 = v7;
        v16 = 2112;
        v17 = v4;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "A syndication library change was received for a particular asset, but a corresponding file transfer was not found using the asset's syndicationIdentifier. syndicationIdentifier: %@, asset: %@", buf, 0x16u);
      }

      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_19:
}

void sub_22B5EFAA8(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = a2;
  pthread_mutex_lock(&stru_27D8CC2C0);
  v5 = geteuid();
  if (!v5)
  {
    v5 = getuid();
  }

  if (qword_27D8CFF28)
  {
    Value = CFDictionaryGetValue(qword_27D8CFF28, v5);
    if (Value)
    {
      goto LABEL_13;
    }
  }

  else
  {
    qword_27D8CFF28 = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  }

  pw_dir = getenv("IPHONE_SHARED_RESOURCES_DIRECTORY");
  if (pw_dir || (v8 = getpwuid(v5)) != 0 && (pw_dir = v8->pw_dir) != 0)
  {
    Value = CFStringCreateWithFileSystemRepresentation(0, pw_dir);
    if (Value)
    {
      CFDictionarySetValue(qword_27D8CFF28, v5, Value);
      CFRelease(Value);
    }
  }

  else
  {
    Value = 0;
  }

LABEL_13:
  pthread_mutex_unlock(&stru_27D8CC2C0);
  v9 = CFStringCreateWithFormat(0, 0, @"%@/Library/Preferences/%@", Value, @"com.apple.MobileSMS");
  CFRelease(v9);
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Refresh: User setting for MMS changed", buf, 2u);
    }
  }

  [v4 updateMMSCapability];

  objc_autoreleasePoolPop(v3);
}

void sub_22B5EFC50(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = a2;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Refresh: CT MMS info changed", v6, 2u);
    }
  }

  [v4 updateMMSCapability];

  objc_autoreleasePoolPop(v3);
}

id _IMDHashParticipants(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 arrayByApplyingSelector:sel_ID];
  v5 = [v4 mutableCopy];

  if (![v3 length])
  {
    v6 = [MEMORY[0x277CCACA8] stringGUID];

    v3 = v6;
  }

  if (v5)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    CFArrayAppendValue(v5, v3);
  }

  [(__CFArray *)v5 sortUsingSelector:sel_caseInsensitiveCompare_];
  v8 = [(__CFArray *)v5 componentsJoinedByString:@", "];
  v9 = [v8 dataUsingEncoding:4];
  v10 = [v9 SHA1HexString];

  return v10;
}

id sub_22B5F6F64(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 CNContactID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 ID];
  }

  v6 = v5;

  return v6;
}

void sub_22B5FCC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5FCC80(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 32);
        v6 = [*(a1 + 40) guid];
        v7 = *(a1 + 48);
        v9 = 138412802;
        v10 = v5;
        v11 = 2112;
        v12 = v6;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEBUG, "Failed to unassign identifier %@ from chat record with guid %@ for domain %@", &v9, 0x20u);
      }
    }

    v8 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v8 forceAutoBugCaptureWithSubType:@"UnassignIdentifier" errorPayload:v3 type:@"ChatLookupFailure" context:@"No Context"];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void sub_22B5FCF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22B5FCF74(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(*(a1 + 32) + 120);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:v10];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 arrayByAddingObjectsFromArray:v6];

    v6 = v9;
  }

  [*(*(a1 + 32) + 120) setObject:v6 forKeyedSubscript:v10];

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

id SMSCopySanitizedContentLocation(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"cid:"])
  {
    v2 = [v1 mutableCopy];
    [v2 replaceOccurrencesOfString:@"cid:" withString:&stru_283F23018 options:2 range:{0, objc_msgSend(@"cid:", "length")}];
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

void *SMSCopySanitizedContentID(void *a1)
{
  v1 = [a1 mutableCopy];
  if ([v1 hasPrefix:@"<"])
  {
    [v1 replaceOccurrencesOfString:@"<" withString:&stru_283F23018 options:2 range:{0, 1}];
  }

  if ([v1 hasSuffix:@">"])
  {
    [v1 replaceOccurrencesOfString:@">" withString:&stru_283F23018 options:2 range:{objc_msgSend(v1, "length") - 1, 1}];
  }

  return v1;
}

uint64_t sub_22B5FE164()
{
  qword_281421288 = os_log_create("com.apple.Messages", "IMBalloonPluginPipelineParameter");

  return MEMORY[0x2821F96F8]();
}

void sub_22B5FE838(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_22B5FE898()
{
  qword_281420FE8 = objc_alloc_init(IMDCKRecordSaltManager);

  return MEMORY[0x2821F96F8]();
}

void sub_22B5FEB3C(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_22B5FED50;
    v12[3] = &unk_2787037B8;
    v9 = v5;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13[0] = v9;
    v13[1] = v10;
    v14 = v11;
    dispatch_async(MEMORY[0x277D85CD0], v12);

    v8 = v13;
    goto LABEL_9;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "*** Error fetching user ID %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) setCachedSalt:0];
  if (*(a1 + 40))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B5FED38;
    block[3] = &unk_2787028B0;
    v17 = *(a1 + 40);
    v16 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v8 = &v17;
LABEL_9:
  }
}

void sub_22B5FED50(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) recordName];
  if ([v2 length])
  {
    [*(a1 + 40) setCachedSalt:v2];
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = [*(a1 + 40) cachedSalt];
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Cached salt : %@", &v9, 0xCu);
      }
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, 1, 0);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "** Fetched salt was 0 length **", &v9, 2u);
      }
    }

    [*(a1 + 40) setCachedSalt:0];
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMDCKRecordSaltManager" code:1 userInfo:0];
      (*(v7 + 16))(v7, 0, v8);
    }
  }
}

void sub_22B5FF1F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = objc_alloc(MEMORY[0x277CCA9B8]);
    if (*(a1 + 40))
    {
      v4 = 5;
    }

    else
    {
      v4 = 6;
    }

    v5 = [v3 initWithDomain:*MEMORY[0x277D19D08] code:v4 userInfo:0];
    (*(v1 + 16))(v1, 0, v5);
  }
}

void sub_22B5FF290(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_22B5FF320;
  v2[3] = &unk_278702EA0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _fetchLatestSaltFromCloudKitAndPersistWithCompletion:v2];
}

void sub_22B5FF320(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) cachedSalt];
      *buf = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Fetched salt %@, error %@", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5FF4AC;
  block[3] = &unk_278703FA8;
  v8 = *(a1 + 40);
  v13 = a2;
  v11 = v5;
  v12 = v8;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t sub_22B5FF4AC(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

void sub_22B5FF584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v8 = IMDChatLogHandle(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = 138413058;
      v11 = a3;
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = a2;
      v16 = 2112;
      v17 = a4;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Attempt to update domain identifiers from CKRecord failed: Failed to assign new identifier %@ to chat record with GUID %@ for domain %@ : %@", &v10, 0x2Au);
    }
  }
}

void sub_22B5FF660(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = IMDChatLogHandle(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = a2;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Attempt to add service name of chat into chat services failed for chat with guid %@: %@", &v6, 0x16u);
    }
  }
}

uint64_t sub_22B5FF71C()
{
  qword_281420FF0 = objc_alloc_init(IMDChatRegistry);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22B5FFC74(uint64_t a1, uint64_t a2)
{
  v3 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "Deleted history automatically, re-syncing chats", v5, 2u);
  }

  return [*(a1 + 32) _forceReloadChats:1];
}

uint64_t sub_22B5FFCEC(uint64_t a1, uint64_t a2)
{
  v3 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "Last addressed handle/simIDs of chats got modified, force reloading chats", v5, 2u);
  }

  return [*(a1 + 32) _forceReloadChats:1];
}

uint64_t sub_22B5FFD64(uint64_t a1, uint64_t a2)
{
  v3 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "Looks like we passed first unlock before chat registry was initialized. Doing first-unlock tasks", v5, 2u);
  }

  return [*(a1 + 32) _performPostUnlockHousekeeping];
}

BOOL sub_22B600F70(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) allExistingChatsWithIdentifier:a2];
  v3 = [v2 count] != 0;

  return v3;
}

void sub_22B6018A8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _addChatsFromCacheMisses:a2 preferExistingChats:1];
  (*(*(a1 + 40) + 16))();
}

id sub_22B603220(uint64_t a1, void *a2)
{
  v2 = [a2 ID];
  v3 = [v2 im_stripCategoryLabel];

  return v3;
}

void sub_22B603E04(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B603CD8);
  }

  _Block_object_dispose(&v3, 8);
  _Block_object_dispose(&v4, 8);
  _Block_object_dispose(&v5, 8);
  _Unwind_Resume(exc_buf);
}

void sub_22B603E74(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if ([v4 style] == 43)
  {
    v5 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v6 = [v5 isOneChatEnabled];

    if (v6 & 1) != 0 || ([v4 serviceName], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *(a1 + 32)), v7, (v8))
    {
      v9 = *(a1 + 40);
      v10 = [v4 participants];
      v11 = [v9 _participantIDSetFromHandles:v10 toIdentifier:*(a1 + 48)];

      if ([*(a1 + 56) isEqualToSet:v11])
      {
        if (*(*(*(a1 + 72) + 8) + 24) == 1 && ![v4 isNewerThan:*(*(*(a1 + 80) + 8) + 40)])
        {
          goto LABEL_21;
        }

        v12 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412290;
          v22 = v4;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, " ==> Found exact match based on groupID and participants: %@", &v21, 0xCu);
        }

        *(*(*(a1 + 72) + 8) + 24) = 1;
        v13 = a1 + 80;
      }

      else
      {
        v13 = a1 + 80;
        if (*(*(*(a1 + 80) + 8) + 40) && ((*(*(*(a1 + 72) + 8) + 24) & 1) != 0 || ![v4 isNewerThan:?]))
        {
          goto LABEL_21;
        }

        v15 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412290;
          v22 = v4;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, " ==> Found a newer chat based on groupID: %@", &v21, 0xCu);
        }
      }

      objc_storeStrong((*(*v13 + 8) + 40), a2);
LABEL_21:

      goto LABEL_22;
    }

    v16 = *(*(a1 + 64) + 8);
    if (*(v16 + 40))
    {
      if (![v4 isNewerThan:?])
      {
        v14 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v4 guid];
          v20 = [v4 serviceName];
          v21 = 138412546;
          v22 = v19;
          v23 = 2112;
          v24 = v20;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, " ==> Ignoring %@, has incorrect service: %@", &v21, 0x16u);
        }

        goto LABEL_31;
      }

      v16 = *(*(a1 + 64) + 8);
    }

    objc_storeStrong((v16 + 40), a2);
    v14 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v4 guid];
      v18 = [v4 serviceName];
      v21 = 138412546;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, " ==> Fallback %@, has incorrect service: %@", &v21, 0x16u);
    }

LABEL_31:

    goto LABEL_22;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = v4;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, " ==> ERROR sanity check failed: ChatRegistry returned chat that did not match inputs: %@", &v21, 0xCu);
    }

    goto LABEL_31;
  }

LABEL_22:
}

id sub_22B604DAC(uint64_t a1, uint64_t a2)
{
  v2 = IMChatCanonicalIDSIDsForAddress();
  v3 = [v2 _stripFZIDPrefix];
  v4 = [v3 im_stripCategoryLabel];

  return v4;
}

id sub_22B604E14(uint64_t a1, void *a2)
{
  v2 = [a2 ID];
  v3 = [v2 im_stripCategoryLabel];

  return v3;
}

id sub_22B605278(uint64_t a1, uint64_t a2)
{
  v2 = IMChatCanonicalIDSIDsForAddress();
  v3 = [v2 _stripFZIDPrefix];

  return v3;
}

void sub_22B605AA4(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B6058B0);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(exc_buf);
}

uint64_t sub_22B605B00(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 firstObject];

  return MEMORY[0x2821F96F8]();
}

void sub_22B6071AC(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 count])
  {
    v3 = [v5 firstObject];
    v4 = [v3 date];
    [*(a1 + 32) setLastMessageTimeStampOnLoad:{objc_msgSend(v4, "__im_nanosecondTimeInterval")}];
  }
}

id sub_22B607528(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v5 = [v3 guid];
  v6 = [v4 objectForKey:v5];

  v7 = IMChatRegistryLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = [v3 guid];
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Adding cache missed chat but existing chat found with GUID %@, preferring existing chat", &v14, 0xCu);
    }

    v10 = v6;
  }

  else
  {
    if (v8)
    {
      v11 = [v3 guid];
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Adding cache missed chat, no existing chat found with GUID %@", &v14, 0xCu);
    }

    [*(a1 + 32) addChat:v3 firstLoad:0 store:0];
    v10 = v3;
  }

  v12 = v10;

  return v12;
}

id sub_22B609310(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = [v8 ID];
          v10 = [v9 length];

          if (v10)
          {
            v11 = [v8 ID];
            [v2 addObject:v11];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_22B6096B0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = 138412290;
        v5 = v2;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "*********** Caught exception while fixing up chat participants on client connection %@ **********", &v4, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x22B609668);
  }

  _Unwind_Resume(a1);
}

void sub_22B60A86C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (*(v3 + 40) == 1 && (*(v3 + 42) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Setting up observer for loaded notification...", buf, 2u);
      }
    }

    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = sub_22B4D7740;
    v18 = sub_22B4D78FC;
    v19 = 0;
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = [MEMORY[0x277CCABD8] mainQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_22B60AA64;
    v11[3] = &unk_2787063E8;
    v8 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v13 = buf;
    v12 = v8;
    v9 = [v6 addObserverForName:@"__kIMDChatsLoadedNotification" object:0 queue:v7 usingBlock:v11];
    v10 = *(v15 + 5);
    *(v15 + 5) = v9;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void sub_22B60AA64(void *a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Notified that chats were loaded", buf, 2u);
    }
  }

  v5 = *(a1[4] + 42);
  v6 = IMOSLoggingEnabled();
  if (v5 == 1)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Chats are done loading! Calling completionHandler", v11, 2u);
      }
    }

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 removeObserver:*(*(a1[6] + 8) + 40)];

    (*(a1[5] + 16))();
  }

  else if (v6)
  {
    v9 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Chats aren't done loading, this is likely because of first unlock. Continuing to wait", v10, 2u);
    }
  }
}

void sub_22B60C0EC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v5 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *(v4 - 96) = 138412290;
        *(v3 + 4) = v5;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Unable to add IMDHandle to _idToHandlesMap due to exception %@ -- nilling idToHandlesMap", (v4 - 96), 0xCu);
      }
    }

    [*(v2 + 56) removeAllObjects];

    objc_end_catch();
    JUMPOUT(0x22B60C0B0);
  }

  _Unwind_Resume(exception_object);
}

void sub_22B60C988(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = a2;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Done fetching latest salt after unlock, fetched %{BOOL}d error %@", v6, 0x12u);
  }
}

void sub_22B60CA9C()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v15 = [MEMORY[0x277D1ACB8] sharedInstance];
  if ([v15 isUnderFirstDataProtectionLock])
  {
  }

  else
  {
    v0 = IMGetDomainBoolForKey();

    if ((v0 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v1 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v1, OS_LOG_TYPE_INFO, "Making all attachments class C", buf, 2u);
        }
      }

      v2 = [MEMORY[0x277CCAA00] defaultManager];
      v3 = [v2 enumeratorAtPath:@"/var/mobile/Library/SMS/Attachments"];

      v4 = [v3 nextObject];
      if (v4)
      {
        v5 = *MEMORY[0x277CCA1B0];
        v6 = *MEMORY[0x277CCA1A0];
        do
        {
          v7 = objc_autoreleasePoolPush();
          v8 = [MEMORY[0x277CCAA00] defaultManager];
          v21 = v5;
          v22[0] = v6;
          v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
          v10 = [@"/var/mobile/Library/SMS/Attachments" stringByAppendingPathComponent:v4];
          v16 = 0;
          v11 = [v8 setAttributes:v9 ofItemAtPath:v10 error:&v16];
          v12 = v16;

          if ((v11 & 1) == 0 && IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v18 = v4;
              v19 = 2112;
              v20 = v12;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Failed making file class C: %@ with error %@", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v7);
          v14 = [v3 nextObject];

          v4 = v14;
        }

        while (v14);
      }

      IMSetDomainBoolForKey();
    }
  }
}

void sub_22B60E534(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B60E4E4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22B60EFC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v5 firstObject];
  v9 = [v6 firstObject];
  v10 = *(a1 + 32);
  v11 = [v8 pinningIdentifier];
  v12 = [v10 containsObject:v11];

  v13 = *(a1 + 32);
  v14 = [v9 pinningIdentifier];
  v15 = [v13 containsObject:v14];

  if (!v12 || v15)
  {
    if (v12 & 1 | ((v15 & 1) == 0))
    {
      v16 = [v8 compareBySequenceNumberAndDateDescending:v9];
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = -1;
  }

  objc_autoreleasePoolPop(v7);
  return v16;
}

uint64_t sub_22B60F0D0(uint64_t a1, void *a2)
{
  v2 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = objc_autoreleasePoolPush();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B60F1B4;
  v6[3] = &unk_2787064F8;
  v6[4] = &v7;
  [v2 enumerateObjectsUsingBlock:v6];
  objc_autoreleasePoolPop(v3);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_22B60F19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22B60F1B4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 unreadCount];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_22B60F2C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 sortedArrayUsingComparator:&unk_283F1A5C8];
  [*(a1 + 32) setObject:v6 forKey:v5];
}

void sub_22B60F774(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x22B60F6FCLL);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(exc_buf);
}

void sub_22B60F7B4(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) repairInconsistentMergedChatsIfNecessary:v5];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    v11 = *MEMORY[0x277D198D8];
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 copyDictionaryRepresentation:{1, v16}];
        if (v15)
        {
          if ([v6 count])
          {
            [v15 setObject:v6 forKeyedSubscript:v11];
          }

          [*(*(*(a1 + 40) + 8) + 40) addObject:v15];
        }

        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

void sub_22B60FF2C(uint64_t a1, void *a2, _BYTE *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(a1 + 32) count] < *(a1 + 40))
  {
    v6 = [v5 _ckUniqueID];
    if (v6)
    {
      v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
      if (v7)
      {
        v8 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412290;
          v18 = v6;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "We already have a chat to upload for groupID: %@ so we need to compare last message time's", &v17, 0xCu);
        }

        v9 = [v5 isOlderThan:v7];
        v10 = IMChatRegistryLogHandle();
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        if (v9)
        {
          if (v11)
          {
            v12 = [v7 guid];
            v13 = [v5 guid];
            v17 = 138412546;
            v18 = v12;
            v19 = 2112;
            v20 = v13;
            _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "The current chat we have stored has a last message that is later than it's sibling so we don't want to write it to CloudKit and want to replace it with it's sibling. Current GUID: %@ Sibling GUID: %@", &v17, 0x16u);
          }

          [v5 updateCloudKitSyncState:1];
          goto LABEL_19;
        }

        if (v11)
        {
          v15 = [v7 guid];
          v16 = [v5 guid];
          v17 = 138412546;
          v18 = v15;
          v19 = 2112;
          v20 = v16;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "We are going to replace the current chat: %@ with: %@ so we should mark it as modified so we don't modify it twice", &v17, 0x16u);
        }

        [v7 updateCloudKitSyncState:1];
      }

      [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_20:

        goto LABEL_21;
      }

      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v14 = NSStringFromSelector(*(a1 + 48));
        v17 = 138412546;
        v18 = v14;
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "%@: Chat's _ckUniqueID is nil: %@", &v17, 0x16u);
      }
    }

LABEL_19:

    goto LABEL_20;
  }

  *a3 = 1;
LABEL_21:
}

void sub_22B6106A0(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) service];
      v6 = [*(a1 + 32) guid];
      v7 = 138412802;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Failed to update chat services table with service %@ for chat with guid %@ error: %@", &v7, 0x20u);
    }
  }
}

void sub_22B6107C4(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) serviceName];
      v6 = [*(a1 + 32) guid];
      v7 = 138412802;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Failed to add sync chat slice with service %@ for chat with guid %@ error: %@", &v7, 0x20u);
    }
  }
}

void sub_22B612360(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Marking existing chat %@ as needing sync from deferred state ", &v4, 0xCu);
    }
  }

  [v2 updateCloudKitSyncState:0];
}

void sub_22B6137A4(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412546;
      v7 = v4;
      v8 = 2048;
      v9 = a3;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Found GUID for attachment part, associating with attachment: %@ at part id %lu", &v6, 0x16u);
    }
  }

  IMDMessageRecordAssociateMessageWithGUIDToAttachmentWithGUID();
}

uint64_t sub_22B615110()
{
  result = IMSharedHelperContactsBasedMergingEnabled();
  byte_2814213C9 = result;
  return result;
}

void sub_22B616A0C(uint64_t a1, uint64_t a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Accepted contacts changed.", v5, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performCheckForContactChangesWithChangeType:1];
}

void sub_22B616D18(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Computed chats to merge. Broadcasting to clients", buf, 2u);
      }
    }

    v9 = +[IMDBroadcastController sharedProvider];
    v10 = [v9 broadcasterForChatListeners];
    [v10 chatsNeedRemerging:v4 groupedChats:v5];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "No chats to merge/un-merge. NOT Broadcasting to clients", v11, 2u);
    }
  }

LABEL_8:
}

void sub_22B616F08(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B616FB8;
  block[3] = &unk_2787037B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_22B616FB8(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"aliasMap"];
  v3 = [*(a1 + 32) objectForKey:@"historyToken"];
  [*(a1 + 40) setHistoryToken:v3];
  v4 = *(a1 + 40);
  v8 = 0;
  v9 = 0;
  [v4 _chatGUIDsThatNeedRemerging:&v9 chatDictionaryArray:&v8 aliasMap:v2];
  v5 = v9;
  v6 = v8;
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

void sub_22B61711C(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6171CC;
  block[3] = &unk_2787037B8;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_22B6171CC(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  [*(a1 + 32) _chatGUIDsThatNeedRemerging:&v6 chatDictionaryArray:&v5 aliasMap:*(a1 + 40)];
  v2 = v6;
  v3 = v5;
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v2, v3);
  }
}

void sub_22B618354(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v2;
  v35 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v35)
  {
    v34 = *v45;
    v33 = *MEMORY[0x277D19800];
    v32 = *MEMORY[0x277D197A8];
    v31 = *MEMORY[0x277D19940];
    v30 = *MEMORY[0x277D19808];
    v29 = *MEMORY[0x277D198E0];
    v28 = *MEMORY[0x277D19788];
    v27 = *MEMORY[0x277D19950];
    v26 = *MEMORY[0x277D19870];
    v25 = *MEMORY[0x277D19878];
    v24 = *MEMORY[0x277D19908];
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v44 + 1) + 8 * i);
        v5 = [v4 objectForKeyedSubscript:v33];
        v37 = [v4 objectForKeyedSubscript:v32];
        v38 = [v4 objectForKeyedSubscript:v31];
        v36 = [v4 objectForKeyedSubscript:v30];
        v6 = [v4 objectForKeyedSubscript:v29];
        v7 = [v4 objectForKeyedSubscript:v28];
        v8 = [v4 objectForKeyedSubscript:v27];
        v9 = [v8 integerValue];

        v10 = [v4 objectForKeyedSubscript:v26];
        v11 = [v4 objectForKeyedSubscript:v25];
        v12 = [v4 objectForKeyedSubscript:v24];
        if (v5)
        {
          [v23 addObject:v5];
          v13 = [*(a1 + 32) _bestServiceSessionForService:v38 accountID:v7];
          [v13 didDeleteChatGUID:v5 chatIdentifier:v37 style:v9 groupID:v36 originalGroupID:v6 properties:v12 lastAddressedLocalHandle:v10 lastAddressedSIMID:v11];
          v14 = [*(a1 + 32) _cachedChatWithGUID:v5];
          if (v14)
          {
            [*(a1 + 32) _evictCachedChat:v14];
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v50 = v4;
              _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Received incomplete deleted chat fragment %@ - skipping", buf, 0xCu);
            }
          }

          v13 = [MEMORY[0x277D1AAA8] sharedInstance];
          [v13 forceAutoBugCaptureWithSubType:@"ChatDeletion" errorPayload:0 type:@"Functional" context:@"Received incomplete deleted chat fragment"];
        }
      }

      v35 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v35);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = v23;
  v17 = [v16 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v17)
  {
    v18 = *v41;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = [*(a1 + 32) _cachedChatWithGUID:*(*(&v40 + 1) + 8 * j)];
        if (v20)
        {
          [*(a1 + 32) _evictCachedChat:v20];
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v17);
  }

  v21 = *(a1 + 40);
  if (v21)
  {
    (*(v21 + 16))(v21, v16);
  }
}

void sub_22B618A8C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D6804(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))();
  }
}

void sub_22B618E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *exc_buf, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x22B618C54);
  }

  _Unwind_Resume(a1);
}

void *sub_22B618EF8(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_22B618F2C(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 24);
  if (v2 >= [*(a1 + 32) count])
  {
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 48) + 8) + 24);
    if (([v3 count] - v4) <= 0x64)
    {
      v5 = [*(a1 + 32) count] - *(*(*(a1 + 48) + 8) + 24);
    }

    else
    {
      v5 = 100;
    }

    v8 = [v3 subarrayWithRange:{v4, v5}];
    v9 = *(a1 + 40);
    v10 = *(a1 + 64);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_22B619074;
    v11[3] = &unk_278706600;
    v12 = *(a1 + 48);
    [v9 _updatePendingReviewForChatsWithGUIDsInBackground:v8 pendingReview:v10 completionBlock:v11];
  }
}