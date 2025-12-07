uint64_t sub_254851224()
{
  qword_28112D9C0 = objc_alloc_init(IMTransferAgentIDSInterface);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2548518C8(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 32) <= 0 && *(result + 40) == *(v1 + 36))
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *v3 = 0;
        _os_log_impl(&dword_254850000, v2, OS_LOG_TYPE_INFO, "Idle exiting, we're done here", v3, 2u);
      }
    }

    exit(0);
  }

  return result;
}

void sub_254852018(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v34 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = @"NO";
      *buf = 138413570;
      *&buf[4] = v16;
      if (a2)
      {
        v24 = @"YES";
      }

      *&buf[12] = 2112;
      *&buf[14] = v24;
      v26 = 2112;
      v27 = v21;
      v28 = 2112;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_254850000, v23, OS_LOG_TYPE_INFO, "Finished Uploading The Remote request file with SentPath: %@, Success: %@ Error: %@ OwnerID: %@ Signature: %@ RequestURLString: %@", buf, 0x3Eu);
    }
  }

  [*(a1 + 32) _sendUploadResponse:v16 topic:*(a1 + 40) success:a2 error:v21 ownerID:v18 signature:v19 requestURLString:v20 transferID:{*(a1 + 48), *buf, *&buf[8]}];
}

void sub_254852B68(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_254853DDC(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x277D191A8]];

  if (v3)
  {
    v4 = [v1 code] == -1;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v1 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x277CCA738]];

  if (v6)
  {
    v7 = [v1 code];
    if ((v7 + 1019) <= 0x12)
    {
      v4 |= 0x56D03u >> (v7 - 5);
    }
  }

  return v4 & 1;
}

uint64_t sub_254853EE4()
{
  qword_28112D9C8 = objc_alloc_init(IMTransferAgentController);

  return MEMORY[0x2821F96F8]();
}

void sub_2548546C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x2548542C8);
  }

  _Unwind_Resume(exception_object);
}

void sub_254854734(uint64_t a1, void *a2, double a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = 134218242;
      v9 = a3;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_254850000, v6, OS_LOG_TYPE_INFO, "Sent MMCS transfer progress updated to %0.02f  (%@)", &v8, 0x16u);
    }
  }

  if (*(a1 + 40))
  {
    [v5 protocolFileSize];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_254854864(uint64_t a1, void *a2, unsigned int a3, int a4, int a5, void *a6)
{
  v76 = *MEMORY[0x277D85DE8];
  v56 = a2;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v53 = a3;
  v55 = v11;
  if ((a3 & 1) == 0)
  {
    v12 = [*(a1 + 32) _shouldRetryUploadGivenMMCSError:v11 retryAttemptCount:*(a1 + 104)];
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 40);
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 104)];
        v16 = v15;
        v17 = @"NO";
        *buf = 138413058;
        v65 = v14;
        v66 = 2112;
        if (v12)
        {
          v17 = @"YES";
        }

        v67 = v17;
        v68 = 2112;
        v69 = v15;
        v70 = 1024;
        LODWORD(v71) = 3;
        _os_log_impl(&dword_254850000, v13, OS_LOG_TYPE_INFO, "File transfer upload failed! %@  Should retry: %@   Retries: %@  Max Retries: %d", buf, 0x26u);
      }
    }

    if (v12)
    {
      v57[1] = MEMORY[0x277D85DD0];
      v57[2] = 3221225472;
      v57[3] = sub_254854E34;
      v57[4] = &unk_27978CBB0;
      v58 = WeakRetained;
      v54 = *(a1 + 32);
      v18 = *(a1 + 48);
      v19 = *(a1 + 56);
      v20 = *(a1 + 40);
      *&v21 = v19;
      *(&v21 + 1) = v20;
      *&v22 = v54;
      *(&v22 + 1) = v18;
      v59 = v22;
      v60 = v21;
      v23 = *(a1 + 64);
      v63 = *(a1 + 104);
      v24 = *(a1 + 72);
      v25 = *(a1 + 80);
      v26 = *(a1 + 88);
      *&v27 = v25;
      *(&v27 + 1) = v26;
      *&v28 = v23;
      *(&v28 + 1) = v24;
      v61 = v28;
      v62 = v27;
      im_dispatch_after_primary_queue();

      v29 = v58;
LABEL_33:

      goto LABEL_34;
    }

    a4 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = @"NO";
      v32 = *(a1 + 40);
      *buf = 138413570;
      if (v53)
      {
        v33 = @"YES";
      }

      else
      {
        v33 = @"NO";
      }

      v65 = v32;
      v66 = 2112;
      if (a4)
      {
        v34 = @"YES";
      }

      else
      {
        v34 = @"NO";
      }

      v67 = v56;
      if (a5)
      {
        v31 = @"YES";
      }

      v68 = 2112;
      v69 = v33;
      v70 = 2112;
      v71 = v34;
      v72 = 2112;
      v73 = v31;
      v74 = 2112;
      v75 = v55;
      _os_log_impl(&dword_254850000, v30, OS_LOG_TYPE_INFO, "transfer %@ completionBlock called with putFile %@ sucess %@ shouldRetry %@ shouldReauthorize %@ error %@", buf, 0x3Eu);
    }
  }

  if (*(a1 + 88))
  {
    v35 = [MEMORY[0x277CCAA00] defaultManager];
    v36 = *(a1 + 48);
    v57[0] = 0;
    v50 = [v35 attributesOfItemAtPath:v36 error:v57];
    v51 = v57[0];

    if (v51 && IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = *(a1 + 48);
        *buf = 138412546;
        v65 = v38;
        v66 = 2112;
        v67 = v51;
        _os_log_impl(&dword_254850000, v37, OS_LOG_TYPE_INFO, "Transfer: Error reading attributes of file %@ (%@)", buf, 0x16u);
      }
    }

    v39 = *(a1 + 88);
    v49 = *(a1 + 48);
    v40 = [v50 objectForKeyedSubscript:*MEMORY[0x277CCA1C0]];
    v41 = [v40 unsignedIntegerValue];
    v42 = [(__CFString *)v56 requestorID];
    v43 = [(__CFString *)v56 signature];
    v44 = [(__CFString *)v56 requestURL];
    v45 = [v44 absoluteString];
    v46 = MEMORY[0x277D25698];
    v47 = [(__CFString *)v56 mmcsError];
    v48 = [v46 failReasonStringForMMCSError:v47];
    (*(v39 + 16))(v39, v53, v49, v41, v42, v43, v45, v55, v48);
  }

  if (v53 && IMTransferRequestIsForMessages(*(a1 + 56), *(a1 + 48)))
  {
    v29 = [*(a1 + 48) lastPathComponent];
    IMGreenTeaAttachmentTransmitLoggingFormat();
    goto LABEL_33;
  }

LABEL_34:
}

uint64_t sub_254854E34(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v6 = v3;
      _os_log_impl(&dword_254850000, v2, OS_LOG_TYPE_INFO, "Needs to reauthorize, will retry using that: %@", buf, 0xCu);
    }
  }

  return [*(a1 + 40) _sendFilePath:*(a1 + 48) topic:*(a1 + 56) transferID:*(a1 + 64) sourceAppID:*(a1 + 72) retryAttemptCount:*(a1 + 104) + 1 userInfo:*(a1 + 80) progressBlock:*(a1 + 88) completionBlock:*(a1 + 96)];
}

uint64_t sub_254854F24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_254854F3C(uint64_t a1, int a2)
{
  v91 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) guid];
      *buf = 138412290;
      v88 = v5;
      _os_log_impl(&dword_254850000, v4, OS_LOG_TYPE_INFO, "Registered transfer %@", buf, 0xCu);
    }
  }

  [*(*(*(a1 + 120) + 8) + 40) stopTimingForKey:*(a1 + 40)];
  if (a2)
  {
    v69 = objc_alloc_init(FTiMessageRequestMMCSUploadToken);
    if ([*(a1 + 48) length])
    {
      [(IDSBaseMessage *)v69 setTopic:*(a1 + 48)];
    }

    v68 = [*(a1 + 32) signature];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v88 = v68;
        _os_log_impl(&dword_254850000, v6, OS_LOG_TYPE_INFO, "Made signature: %@", buf, 0xCu);
      }
    }

    [(FTiMessageRequestMMCSUploadToken *)v69 setSignature:v68];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "protocolFileSize")}];
    [(FTiMessageRequestMMCSUploadToken *)v69 setLength:v7];

    if (*(a1 + 128) != 1)
    {
      [(FTiMessageRequestMMCSUploadToken *)v69 setContentVersion:0];
LABEL_41:
      v40 = *(a1 + 64);
      if (v40)
      {
        v41 = [v40 valueForKey:@"sP"];
        [(FTiMessageRequestMMCSUploadToken *)v69 setSenderID:v41];

        v42 = [*(a1 + 64) valueForKey:@"tP"];
        [(FTiMessageRequestMMCSUploadToken *)v69 setDestinationID:v42];

        v43 = [*(a1 + 64) valueForKey:@"sI"];
        [(FTiMessageRequestMMCSUploadToken *)v69 setAnonymousSenderID:v43];

        v44 = [*(a1 + 64) valueForKey:@"sT"];
        [(FTiMessageRequestMMCSUploadToken *)v69 setSessionToken:v44];

        v45 = [*(a1 + 64) valueForKey:@"t"];
        [(FTiMessageRequestMMCSUploadToken *)v69 setPushToken:v45];
      }

      v46 = [MEMORY[0x277CBEAA8] date];
      if (IMOSLoggingEnabled())
      {
        v47 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v48 = [*(a1 + 32) guid];
          *buf = 138412546;
          v88 = v48;
          v89 = 2112;
          v90 = v69;
          _os_log_impl(&dword_254850000, v47, OS_LOG_TYPE_INFO, "TransferID %@ Sending upload request: %@", buf, 0x16u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v49 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = [MEMORY[0x277D192E8] sharedInstance];
          v51 = [v50 linkQualityValueForInterfaceType:3];
          *buf = 67109120;
          LODWORD(v88) = v51;
          _os_log_impl(&dword_254850000, v49, OS_LOG_TYPE_INFO, "  Cell Link Quality: %d", buf, 8u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v52 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = [MEMORY[0x277D192E8] sharedInstance];
          v54 = [v53 linkQualityValueForInterfaceType:2];
          *buf = 67109120;
          LODWORD(v88) = v54;
          _os_log_impl(&dword_254850000, v52, OS_LOG_TYPE_INFO, "  WiFi Link Quality: %d", buf, 8u);
        }
      }

      v55 = _os_activity_create(&dword_254850000, "com.apple.messages.MMCSPreAuth", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
      [*(*(*(a1 + 120) + 8) + 40) startTimingForKey:*(a1 + 72)];
      v56 = +[IMTransferAgentDeliveryController sharedInstance];
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = sub_254855C0C;
      v70[3] = &unk_27978CC28;
      v57 = *(a1 + 120);
      v71 = v55;
      v81 = v57;
      v72 = *(a1 + 72);
      v73 = *(a1 + 32);
      v74 = *(a1 + 80);
      v58 = *(a1 + 88);
      v59 = *(a1 + 56);
      v75 = v58;
      v76 = v59;
      v77 = *(a1 + 96);
      v78 = *(a1 + 104);
      v60 = *(a1 + 112);
      v82 = *(a1 + 128);
      v79 = v60;
      v80 = v46;
      v66 = v46;
      v67 = v55;
      [v56 sendFTMessage:v69 completionBlock:v70];

      v21 = v71;
      goto LABEL_56;
    }

    v8 = [*(*(a1 + 56) + 8) getContentHeadersAsString];
    v9 = [*(a1 + 32) authRequestData];
    v10 = v9 == 0;

    if (v10)
    {
      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = [*(a1 + 32) guid];
          *buf = 138412290;
          v88 = v37;
          _os_log_impl(&dword_254850000, v36, OS_LOG_TYPE_INFO, "Tried to send Madrid AuthPut, but could not fetch content body for transfer: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (v8)
      {
        [(FTiMessageRequestMMCSUploadToken *)v69 setContentVersion:2];
        v11 = [*(a1 + 32) authRequestData];
        [(FTiMessageRequestMMCSUploadToken *)v69 setContentBody:v11];

        [(FTiMessageRequestMMCSUploadToken *)v69 setContentHeaders:v8];
LABEL_40:

        goto LABEL_41;
      }

      if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = [*(a1 + 32) guid];
          *buf = 138412290;
          v88 = v39;
          _os_log_impl(&dword_254850000, v38, OS_LOG_TYPE_INFO, "Tried to send Madrid AuthPut, but could not fetch content header for transfer: %@", buf, 0xCu);
        }
      }
    }

    [(FTiMessageRequestMMCSUploadToken *)v69 setContentVersion:0];
    goto LABEL_40;
  }

  [*(*(a1 + 56) + 8) unregisterFiles:*(a1 + 96)];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      *buf = 138412290;
      v88 = v13;
      _os_log_impl(&dword_254850000, v12, OS_LOG_TYPE_INFO, "Failed registering transfer: %@", buf, 0xCu);
    }
  }

  v69 = [*(a1 + 32) completionBlock];
  if (v69)
  {
    (v69->super.super._topic)(v69, *(a1 + 32), 0, 0, 0, 0);
  }

  v85 = *MEMORY[0x277D1A0A0];
  v14 = [MEMORY[0x277CCABB0] numberWithLong:44];
  v86 = v14;
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];

  v15 = [MEMORY[0x277D1AAA8] sharedInstance];
  [v15 trackEvent:*MEMORY[0x277D1A0B0] withDictionary:v65];

  v16 = [MEMORY[0x277D07DD8] sharedInstance];
  v17 = [v16 wiFiActiveAndReachable];

  if (v17)
  {
    v18 = 2;
  }

  else
  {
    v18 = 3;
  }

  v19 = MEMORY[0x277CCABB0];
  v20 = [MEMORY[0x277D192E8] sharedInstance];
  v67 = [v19 numberWithInt:{objc_msgSend(v20, "linkQualityValueForInterfaceType:", v18)}];

  v66 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "protocolFileSize")}];
  v21 = [MEMORY[0x277D25698] parseMMCSError:0];
  v83[0] = *MEMORY[0x277D1A2A0];
  v64 = [MEMORY[0x277CCABB0] numberWithLong:0];
  v84[0] = v64;
  v83[1] = *MEMORY[0x277D1A318];
  v63 = [MEMORY[0x277CCABB0] numberWithLong:0];
  v84[1] = v63;
  v83[2] = *MEMORY[0x277D1A378];
  v61 = [MEMORY[0x277CCABB0] numberWithLong:1];
  v84[2] = v61;
  v22 = *MEMORY[0x277D1A300];
  v83[3] = *MEMORY[0x277D1A2C0];
  v83[4] = v22;
  v84[3] = &unk_28669F548;
  v84[4] = v67;
  v83[5] = *MEMORY[0x277D1A078];
  if (v17)
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  v24 = [MEMORY[0x277CCABB0] numberWithLong:{v23, v61}];
  v84[5] = v24;
  v25 = *MEMORY[0x277D1A070];
  v84[6] = v66;
  v26 = *MEMORY[0x277D1A288];
  v83[6] = v25;
  v83[7] = v26;
  v27 = [v21 objectAtIndexedSubscript:0];
  v84[7] = v27;
  v83[8] = *MEMORY[0x277D1A280];
  v28 = [v21 objectAtIndexedSubscript:1];
  v84[8] = v28;
  v83[9] = *MEMORY[0x277D1A338];
  v29 = [v21 objectAtIndexedSubscript:2];
  v84[9] = v29;
  v83[10] = *MEMORY[0x277D1A330];
  v30 = [v21 objectAtIndexedSubscript:3];
  v84[10] = v30;
  v83[11] = *MEMORY[0x277D1A368];
  v31 = [v21 objectAtIndexedSubscript:4];
  v84[11] = v31;
  v83[12] = *MEMORY[0x277D1A360];
  v32 = [v21 objectAtIndexedSubscript:5];
  v84[12] = v32;
  v83[13] = *MEMORY[0x277D1A298];
  v33 = [v21 objectAtIndexedSubscript:6];
  v84[13] = v33;
  v83[14] = *MEMORY[0x277D1A290];
  v34 = [v21 objectAtIndexedSubscript:7];
  v84[14] = v34;
  v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:15];

  v35 = [MEMORY[0x277D1AAA8] sharedInstance];
  [v35 trackEvent:*MEMORY[0x277D1A0F8] withDictionary:v68];

LABEL_56:
}

void sub_254855B50(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25485570CLL);
  }

  _Unwind_Resume(a1);
}

void sub_254855C0C(uint64_t a1, void *a2, void *a3, int a4, unsigned int a5)
{
  v108 = *MEMORY[0x277D85DE8];
  v87 = a2;
  v9 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  [*(*(*(a1 + 112) + 8) + 40) stopTimingForKey:*(a1 + 40)];
  v90 = v9;
  v10 = [v90 responseContentVersion];
  if ([v90 contentVersion] >= 1 && v10 >= 1)
  {
    v11 = MEMORY[0x277D25680];
    v12 = [v90 responseContentHeaders];
    v13 = [v11 parseContentHeaderAsDictionary:v12 treatValuesAsArrays:v10 == 1];

    v14 = *(a1 + 48);
    v15 = [v13 objectForKeyedSubscript:@"x-apple-mmcs-proto-version"];
    v16 = [v15 firstObject];
    [v14 setProtocolVersion:v16];

    v17 = [*(a1 + 48) protocolVersion];
    LODWORD(v15) = v17 == 0;

    if (v15)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = [v90 responseContentHeaders];
          v20 = [*(a1 + 48) guid];
          *buf = 134218498;
          *&buf[4] = v10;
          *&buf[12] = 2112;
          *&buf[14] = v19;
          *&buf[22] = 2112;
          v106 = v20;
          _os_log_impl(&dword_254850000, v18, OS_LOG_TYPE_INFO, "Madrid responded with 'cV': %tu, but no protocol version was found in header: %@ (transfer: %@)", buf, 0x20u);
        }
      }

      a4 = 0;
      a5 = 17;
    }

    v21 = *(a1 + 48);
    v22 = [v90 responseContentBody];
    [v21 setAuthResponseData:v22];

    v23 = [*(a1 + 48) authResponseData];
    LODWORD(v22) = v23 == 0;

    if (v22)
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [v90 responseContentBody];
          v26 = [*(a1 + 48) guid];
          *buf = 134218498;
          *&buf[4] = v10;
          *&buf[12] = 2112;
          *&buf[14] = v25;
          *&buf[22] = 2112;
          v106 = v26;
          _os_log_impl(&dword_254850000, v24, OS_LOG_TYPE_INFO, "Madrid responded with 'cV': %tu, but no auth data was found in header: %@ (transfer: %@)", buf, 0x20u);
        }
      }

      a4 = 0;
      a5 = 17;
    }
  }

  if ([v90 contentVersion] != v10 && IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [v90 contentVersion];
      v29 = [*(a1 + 48) guid];
      *buf = 134218498;
      *&buf[4] = v10;
      *&buf[12] = 2048;
      *&buf[14] = v28;
      *&buf[22] = 2112;
      v106 = v29;
      _os_log_impl(&dword_254850000, v27, OS_LOG_TYPE_INFO, "Madrid responded with 'cV': %tu, but we requested a 'cV': %tu (transfer: %@)", buf, 0x20u);
    }
  }

  if (a4)
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [*(a1 + 48) guid];
        *buf = 138412546;
        *&buf[4] = v31;
        *&buf[12] = 2112;
        *&buf[14] = v90;
        _os_log_impl(&dword_254850000, v30, OS_LOG_TYPE_INFO, "TransferID %@ Finished sending mmcs upload request: %@", buf, 0x16u);
      }
    }

    v89 = [v90 responseAuthToken];
    v32 = [v90 responseRequestURL];
    v91 = [v90 responseRequestorID];
    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v89;
        _os_log_impl(&dword_254850000, v33, OS_LOG_TYPE_INFO, "    Auth token: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v32;
        _os_log_impl(&dword_254850000, v34, OS_LOG_TYPE_INFO, "   Request URL: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v91;
        _os_log_impl(&dword_254850000, v35, OS_LOG_TYPE_INFO, "      Owner ID: %@", buf, 0xCu);
      }
    }

    if (v32)
    {
      v36 = [v32 rangeOfString:@"://"];
    }

    else
    {
      v36 = -1;
    }

    v37 = v32;
    if (v36 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"http://%@", v32];
    }

    v88 = v37;
    if (v37)
    {
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v37, v91];

      v32 = v38;
    }

    v85 = a5;
    if (v32)
    {
      v39 = [MEMORY[0x277CBEBC0] URLWithString:v32];
    }

    else
    {
      v39 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = [*(a1 + 48) guid];
        v42 = *(a1 + 56);
        *buf = 138413314;
        *&buf[4] = v41;
        *&buf[12] = 2112;
        *&buf[14] = v42;
        *&buf[22] = 2112;
        v106 = v91;
        *v107 = 2112;
        *&v107[2] = v39;
        *&v107[10] = 2112;
        *&v107[12] = v89;
        _os_log_impl(&dword_254850000, v40, OS_LOG_TYPE_INFO, "Request to send transfer: %@ %@   requestorID: %@  requestURL: %@  auth token: %@", buf, 0x34u);
      }
    }

    [*(*(*(a1 + 112) + 8) + 40) startTimingForKey:*(a1 + 64)];
    v83 = v32;
    v43 = _os_activity_create(&dword_254850000, "com.apple.messages.MMCSPutFile", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3010000000;
    *v107 = 0;
    *&v107[8] = 0;
    v106 = &unk_25486E79B;
    os_activity_scope_enter(v43, v107);
    v44 = *(a1 + 80);
    v45 = *(*(a1 + 72) + 8);
    v46 = *(a1 + 88);
    v47 = *(a1 + 96);
    v48 = *(a1 + 120);
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = sub_254856A7C;
    v92[3] = &unk_27978CC00;
    v49 = *(a1 + 48);
    v50 = *(a1 + 112);
    v93 = v49;
    v97 = v50;
    v94 = *(a1 + 64);
    v51 = *(a1 + 104);
    v99 = v85;
    v98 = buf;
    v52 = *(a1 + 72);
    v95 = v51;
    v96 = v52;
    LOBYTE(v79) = v48;
    [v45 putFiles:v44 requestURL:v39 requestorID:v91 transferID:v46 sourceAppID:v47 authToken:v89 preauthenticate:v79 completionBlock:v92];

    v53 = v83;
    _Block_object_dispose(buf, 8);
  }

  else
  {
    [*(*(a1 + 72) + 8) unregisterFiles:*(a1 + 80)];
    if (IMOSLoggingEnabled())
    {
      v54 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v90;
        _os_log_impl(&dword_254850000, v54, OS_LOG_TYPE_INFO, "Failed sending mmcs upload request: %@", buf, 0xCu);
      }
    }

    v103 = *MEMORY[0x277D1A0A0];
    v55 = [MEMORY[0x277CCABB0] numberWithLong:45];
    v104 = v55;
    v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];

    v57 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v57 trackEvent:*MEMORY[0x277D1A0B0] withDictionary:v56];

    v58 = [MEMORY[0x277D07DD8] sharedInstance];
    v59 = [v58 wiFiActiveAndReachable];

    v60 = MEMORY[0x277CCABB0];
    v61 = [MEMORY[0x277D192E8] sharedInstance];
    v62 = v61;
    if (v59)
    {
      v63 = 2;
    }

    else
    {
      v63 = 3;
    }

    v88 = [v60 numberWithInt:{objc_msgSend(v61, "linkQualityValueForInterfaceType:", v63)}];

    v80 = v56;
    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 48), "protocolFileSize")}];
    v91 = [MEMORY[0x277D25698] parseMMCSError:0];
    v101[0] = *MEMORY[0x277D1A2A0];
    v86 = [MEMORY[0x277CCABB0] numberWithLong:a5];
    v102[0] = v86;
    v101[1] = *MEMORY[0x277D1A318];
    v84 = [MEMORY[0x277CCABB0] numberWithLong:0];
    v102[1] = v84;
    v101[2] = *MEMORY[0x277D1A378];
    v82 = [MEMORY[0x277CCABB0] numberWithLong:2];
    v64 = *MEMORY[0x277D1A2C0];
    v102[2] = v82;
    v102[3] = &unk_28669F548;
    v65 = *MEMORY[0x277D1A300];
    v101[3] = v64;
    v101[4] = v65;
    v102[4] = v88;
    v101[5] = *MEMORY[0x277D1A078];
    if (v59)
    {
      v66 = 2;
    }

    else
    {
      v66 = 1;
    }

    v81 = [MEMORY[0x277CCABB0] numberWithLong:v66];
    v67 = *MEMORY[0x277D1A070];
    v102[5] = v81;
    v102[6] = v53;
    v68 = *MEMORY[0x277D1A288];
    v101[6] = v67;
    v101[7] = v68;
    v69 = [v91 objectAtIndexedSubscript:0];
    v102[7] = v69;
    v101[8] = *MEMORY[0x277D1A280];
    v70 = [v91 objectAtIndexedSubscript:1];
    v102[8] = v70;
    v101[9] = *MEMORY[0x277D1A338];
    v71 = [v91 objectAtIndexedSubscript:2];
    v102[9] = v71;
    v101[10] = *MEMORY[0x277D1A330];
    v72 = [v91 objectAtIndexedSubscript:3];
    v102[10] = v72;
    v101[11] = *MEMORY[0x277D1A368];
    v73 = [v91 objectAtIndexedSubscript:4];
    v102[11] = v73;
    v101[12] = *MEMORY[0x277D1A360];
    v74 = [v91 objectAtIndexedSubscript:5];
    v102[12] = v74;
    v101[13] = *MEMORY[0x277D1A298];
    v75 = [v91 objectAtIndexedSubscript:6];
    v102[13] = v75;
    v101[14] = *MEMORY[0x277D1A290];
    v76 = [v91 objectAtIndexedSubscript:7];
    v102[14] = v76;
    v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:15];

    v77 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v77 trackEvent:*MEMORY[0x277D1A0F8] withDictionary:v89];

    v78 = [*(a1 + 48) completionBlock];
    v39 = v78;
    if (v78)
    {
      (*(v78 + 16))(v78, *(a1 + 48), 0, 0, 0, 0);
    }
  }

  os_activity_scope_leave(&state);
}

void sub_254856A7C(uint64_t a1, void *a2, int a3, void *a4)
{
  v95 = *MEMORY[0x277D85DE8];
  v78 = COERCE_DOUBLE(a2);
  v79 = a4;
  [*(a1 + 32) setMMCSError:?];
  [*(*(*(a1 + 64) + 8) + 40) stopTimingForKey:*(a1 + 40)];
  v80 = a1;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(v80 + 32) guid];
      v9 = *(*(*(v80 + 64) + 8) + 40);
      *buf = 138412546;
      v90 = *&v8;
      v91 = 2112;
      v92 = v9;
      _os_log_impl(&dword_254850000, v7, OS_LOG_TYPE_INFO, "Upload timing for transfer ID %@ %@", buf, 0x16u);
    }

    a1 = v80;
  }

  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = [MEMORY[0x277CBEAA8] date];
  [v12 timeIntervalSinceDate:*(v80 + 48)];
  v14 = v13;

  if (a3)
  {
    v15 = 0.0;
    if (v14 > 0.0)
    {
      v15 = [*(v80 + 32) protocolFileSize] / v14 * 0.0009765625;
    }

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v90 = v78;
        v91 = 2048;
        v92 = v14;
        v93 = 2048;
        v94 = v15;
        _os_log_impl(&dword_254850000, v16, OS_LOG_TYPE_INFO, "Finished upload request for files: %@  upload time was: %f  speed: %.0f kb/s", buf, 0x20u);
      }
    }

    v87 = *MEMORY[0x277D1A0A0];
    v17 = [MEMORY[0x277CCABB0] numberWithLong:0];
    v88 = v17;
    v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];

    v18 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v18 trackEvent:*MEMORY[0x277D1A0B0] withDictionary:v73];

    v77 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(v80 + 32), "protocolFileSize")}];
    v19 = [MEMORY[0x277D07DD8] sharedInstance];
    v20 = [v19 wiFiActiveAndReachable];

    if (v20)
    {
      v21 = 2;
    }

    else
    {
      v21 = 3;
    }

    v22 = MEMORY[0x277CCABB0];
    v23 = [MEMORY[0x277D192E8] sharedInstance];
    v75 = [v22 numberWithInt:{objc_msgSend(v23, "linkQualityValueForInterfaceType:", v21)}];

    v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v79, "code")}];
    v25 = [MEMORY[0x277D25698] parseMMCSError:v79];
    v85[0] = *MEMORY[0x277D1A2A0];
    v71 = [MEMORY[0x277CCABB0] numberWithLong:*(v80 + 80)];
    v86[0] = v71;
    v85[1] = *MEMORY[0x277D1A318];
    v69 = [MEMORY[0x277CCABB0] numberWithLong:0];
    v86[1] = v69;
    v85[2] = *MEMORY[0x277D1A378];
    v67 = [MEMORY[0x277CCABB0] numberWithLong:0];
    v86[2] = v67;
    v26 = *MEMORY[0x277D1A380];
    v85[3] = *MEMORY[0x277D1A2C0];
    v85[4] = v26;
    v86[3] = v24;
    v86[4] = v77;
    v27 = *MEMORY[0x277D1A300];
    v86[5] = v75;
    v28 = *MEMORY[0x277D1A078];
    v85[5] = v27;
    v85[6] = v28;
    if (v20)
    {
      v29 = 2;
    }

    else
    {
      v29 = 1;
    }

    v65 = [MEMORY[0x277CCABB0] numberWithLong:v29];
    v86[6] = v65;
    v30 = *MEMORY[0x277D1A070];
    v86[7] = v76;
    v31 = *MEMORY[0x277D1A288];
    v85[7] = v30;
    v85[8] = v31;
    v63 = [v25 objectAtIndexedSubscript:0];
    v86[8] = v63;
    v85[9] = *MEMORY[0x277D1A280];
    v32 = [v25 objectAtIndexedSubscript:1];
    v86[9] = v32;
    v85[10] = *MEMORY[0x277D1A338];
    v33 = [v25 objectAtIndexedSubscript:2];
    v86[10] = v33;
    v85[11] = *MEMORY[0x277D1A330];
    v34 = [v25 objectAtIndexedSubscript:3];
    v86[11] = v34;
    v85[12] = *MEMORY[0x277D1A368];
    v35 = [v25 objectAtIndexedSubscript:4];
    v86[12] = v35;
    v85[13] = *MEMORY[0x277D1A360];
    v36 = [v25 objectAtIndexedSubscript:5];
    v86[13] = v36;
    v85[14] = *MEMORY[0x277D1A298];
    v37 = [v25 objectAtIndexedSubscript:6];
    v86[14] = v37;
    v85[15] = *MEMORY[0x277D1A290];
    v38 = [v25 objectAtIndexedSubscript:7];
    v86[15] = v38;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:16];

    v40 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v40 trackEvent:*MEMORY[0x277D1A0F8] withDictionary:v39];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v90 = *&v79;
        v91 = 2112;
        v92 = v78;
        v93 = 2048;
        v94 = v14;
        _os_log_impl(&dword_254850000, v41, OS_LOG_TYPE_INFO, "Failed upload request: %@   files: %@   upload time was: %f", buf, 0x20u);
      }
    }

    v83 = *MEMORY[0x277D1A0A0];
    v42 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v79, "code")}];
    v84 = v42;
    v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];

    v43 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v43 trackEvent:*MEMORY[0x277D1A0B0] withDictionary:v74];

    v44 = [MEMORY[0x277D07DD8] sharedInstance];
    v45 = [v44 wiFiActiveAndReachable];

    if (v45)
    {
      v46 = 2;
    }

    else
    {
      v46 = 3;
    }

    v47 = MEMORY[0x277CCABB0];
    v48 = [MEMORY[0x277D192E8] sharedInstance];
    v77 = [v47 numberWithInt:{objc_msgSend(v48, "linkQualityValueForInterfaceType:", v46)}];

    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(v80 + 32), "protocolFileSize")}];
    v75 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v79, "code")}];
    v24 = [MEMORY[0x277D25698] parseMMCSError:v79];
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    v81[0] = *MEMORY[0x277D1A2A0];
    v72 = [MEMORY[0x277CCABB0] numberWithLong:*(v80 + 80)];
    v82[0] = v72;
    v81[1] = *MEMORY[0x277D1A318];
    v70 = [MEMORY[0x277CCABB0] numberWithLong:0];
    v82[1] = v70;
    v81[2] = *MEMORY[0x277D1A378];
    v68 = [MEMORY[0x277CCABB0] numberWithLong:0];
    v82[2] = v68;
    v49 = *MEMORY[0x277D1A380];
    v81[3] = *MEMORY[0x277D1A2C0];
    v81[4] = v49;
    v82[3] = v75;
    v82[4] = v25;
    v50 = *MEMORY[0x277D1A300];
    v82[5] = v77;
    v51 = *MEMORY[0x277D1A078];
    v81[5] = v50;
    v81[6] = v51;
    if (v45)
    {
      v52 = 2;
    }

    else
    {
      v52 = 1;
    }

    v66 = [MEMORY[0x277CCABB0] numberWithLong:v52];
    v82[6] = v66;
    v53 = *MEMORY[0x277D1A070];
    v82[7] = v76;
    v54 = *MEMORY[0x277D1A288];
    v81[7] = v53;
    v81[8] = v54;
    v64 = [v24 objectAtIndexedSubscript:0];
    v82[8] = v64;
    v81[9] = *MEMORY[0x277D1A280];
    v55 = [v24 objectAtIndexedSubscript:1];
    v82[9] = v55;
    v81[10] = *MEMORY[0x277D1A338];
    v56 = [v24 objectAtIndexedSubscript:2];
    v82[10] = v56;
    v81[11] = *MEMORY[0x277D1A330];
    v57 = [v24 objectAtIndexedSubscript:3];
    v82[11] = v57;
    v81[12] = *MEMORY[0x277D1A368];
    v58 = [v24 objectAtIndexedSubscript:4];
    v82[12] = v58;
    v81[13] = *MEMORY[0x277D1A360];
    v59 = [v24 objectAtIndexedSubscript:5];
    v82[13] = v59;
    v81[14] = *MEMORY[0x277D1A298];
    v60 = [v24 objectAtIndexedSubscript:6];
    v82[14] = v60;
    v81[15] = *MEMORY[0x277D1A290];
    v61 = [v24 objectAtIndexedSubscript:7];
    v82[15] = v61;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:16];

    v62 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v62 trackEvent:*MEMORY[0x277D1A0F8] withDictionary:v39];

    v40 = [*(v80 + 32) completionBlock];
    os_activity_scope_leave((*(*(v80 + 72) + 8) + 32));
    if (v40)
    {
      v40[2](v40, *(v80 + 32), 0, 0, 0, 0);
    }
  }

  [*(*(v80 + 56) + 8) unregisterFiles:*&v78];
}

void sub_254857D2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  im_assert_primary_queue();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_254857E6C;
  v10[3] = &unk_27978CC78;
  v12 = *(a1 + 80);
  v7 = v6;
  v11 = v7;
  v13 = *(a1 + 104);
  v8 = MEMORY[0x259C1C440](v10);
  if (!*(a1 + 32) || *(a1 + 96) >> 20)
  {
    [*(a1 + 64) _sendFilePath:v5 topic:*(a1 + 40) transferID:*(a1 + 48) sourceAppID:*(a1 + 56) retryAttemptCount:0 userInfo:*(a1 + 72) progressBlock:*(a1 + 88) completionBlock:v8];
  }

  else
  {
    v9 = +[IMTransferAgentIDSInterface sharedInstance];
    [v9 remoteUploadFileRequest:v5 topic:*(a1 + 40) transferID:*(a1 + 48) sourceAppID:*(a1 + 56) completionBlock:v8];
  }
}

void sub_254857E6C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v32 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  im_assert_primary_queue();
  (*(*(a1 + 40) + 16))(*(a1 + 40), a2);
  if (*(a1 + 48) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v29 = v15;
        _os_log_impl(&dword_254850000, v21, OS_LOG_TYPE_INFO, "Cleaning up encrypted attachment path: %@", buf, 0xCu);
      }
    }

    if (v15)
    {
      v22 = [MEMORY[0x277CCAA00] defaultManager];
      v23 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15];
      v27 = 0;
      v24 = [v22 removeItemAtURL:v23 error:&v27];
      v25 = v27;

      if ((v24 & 1) == 0 && IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v29 = v15;
          v30 = 2112;
          v31 = v25;
          _os_log_impl(&dword_254850000, v26, OS_LOG_TYPE_INFO, "Error cleaning up encrypted attachment path: %@  error: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v25 = 0;
    }
  }
}

void sub_2548580E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a5;
  v8 = a4;
  im_assert_primary_queue();
  v9 = *(a1 + 32);
  v10 = [v8 path];

  (*(v9 + 16))(v9, v10, v7);
}

void sub_254858E5C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x254858A04);
  }

  _Block_object_dispose((v62 - 176), 8);
  objc_destroyWeak((v62 - 232));
  _Unwind_Resume(exc_buf);
}

void sub_254858F48(uint64_t a1, void *a2, double a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = 134218242;
      v9 = a3;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_254850000, v6, OS_LOG_TYPE_INFO, "Received MMCS transfer progress updated to %0.02f  (%@)", &v8, 0x16u);
    }
  }

  if (*(a1 + 40))
  {
    [v5 protocolFileSize];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_254859078(uint64_t a1, void *a2, uint64_t a3, char a4, int a5, void *a6)
{
  v56 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a6;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v51) = qos_class_self();
      _os_log_impl(&dword_254850000, v13, OS_LOG_TYPE_INFO, "Handling MMCSGetFile completion at qos (%u)", buf, 8u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 128));
  if (a3)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v51 = WeakRetained;
        _os_log_impl(&dword_254850000, v15, OS_LOG_TYPE_INFO, "Receiving file transfer complete: %@", buf, 0xCu);
      }
    }

    v16 = [(__CFString *)WeakRetained localPath];
    IMGreenTeaAttachmentReadLoggingFormat();
  }

  if (a4)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_254853DDC(v12);
  }

  if (*(*(*(a1 + 112) + 8) + 24) < 3)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (a5)
  {
    v18 &= *(a1 + 144);
  }

  if ((a3 & 1) == 0 && IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = @"NO";
      if (v18)
      {
        v20 = @"YES";
      }

      v21 = *(*(*(a1 + 112) + 8) + 24);
      *buf = 138412802;
      v51 = v20;
      v52 = 1024;
      v53 = v21;
      v54 = 1024;
      v55 = 3;
      _os_log_impl(&dword_254850000, v19, OS_LOG_TYPE_INFO, "File transfer downloads failed!  Should retry: %@   Retries: %d  Max Retries: %d", buf, 0x18u);
    }
  }

  if (v18)
  {
    ++*(*(*(a1 + 112) + 8) + 24);
    v43 = *(a1 + 32);
    v22 = *(a1 + 48);
    v23 = *(a1 + 56);
    *&v24 = v22;
    *(&v24 + 1) = v23;
    v44 = v24;
    v25 = *(a1 + 64);
    v26 = *(a1 + 72);
    v27 = *(a1 + 80);
    v28 = *(a1 + 88);
    *&v29 = v27;
    *(&v29 + 1) = v28;
    *&v30 = v25;
    *(&v30 + 1) = v26;
    v45 = v30;
    v46 = v29;
    v31 = *(a1 + 96);
    v32 = *(a1 + 104);
    v47 = WeakRetained;
    v48 = v11;
    *&v33 = v31;
    *(&v33 + 1) = v32;
    v49 = v33;
    im_dispatch_after_primary_queue();

    v34 = v43;
LABEL_32:

    goto LABEL_33;
  }

  v35 = *(*(a1 + 120) + 8);
  v36 = *(v35 + 40);
  *(v35 + 40) = 0;

  v37 = *(a1 + 104);
  if (v37)
  {
    v38 = *(a1 + 32);
    v39 = *(a1 + 56);
    v40 = MEMORY[0x277D25698];
    v41 = [v11 mmcsError];
    v42 = [v40 failReasonStringForMMCSError:v41];
    (*(v37 + 16))(v37, v38, v39, a3, v12, v42);
  }

  if (a3)
  {
    v34 = [(__CFString *)WeakRetained localPath];
    IMGreenTeaAttachmentReadLoggingFormat();
    goto LABEL_32;
  }

LABEL_33:
}

void sub_254859574(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 152);
  v3 = IMOSLoggingEnabled();
  if (v2 == 1)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        *buf = 138412290;
        v22 = v5;
        _os_log_impl(&dword_254850000, v4, OS_LOG_TYPE_INFO, "Needs to re-authorize, will retry using that: %@", buf, 0xCu);
      }
    }

    LOBYTE(v14) = 0;
    [*(a1 + 40) _receiveFileTransfer:*(a1 + 32) topic:*(a1 + 48) path:*(a1 + 56) requestURLString:*(a1 + 64) ownerID:*(a1 + 72) signature:*(a1 + 80) allowReauthorize:v14 fileSize:*(a1 + 144) sourceAppID:*(a1 + 88) progressBlock:*(a1 + 112) completionBlock:*(a1 + 120)];
  }

  else
  {
    if (v3)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(*(*(a1 + 128) + 8) + 40);
        *buf = 138412290;
        v22 = v7;
        _os_log_impl(&dword_254850000, v6, OS_LOG_TYPE_INFO, "Re-registering files: %@", buf, 0xCu);
      }
    }

    v8 = *(a1 + 40);
    v9 = *(v8 + 8);
    v10 = *(a1 + 128);
    v11 = *(*(v10 + 8) + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2548597B4;
    v15[3] = &unk_27978CD40;
    v19 = v10;
    v15[4] = v8;
    v16 = *(a1 + 96);
    v17 = *(a1 + 88);
    v12 = *(a1 + 104);
    v13 = *(a1 + 136);
    v18 = v12;
    v20 = v13;
    [v9 registerFilesForDownload:v11 completionBlock:v15];
  }
}

void sub_2548597B4(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412290;
      v18 = v3;
      _os_log_impl(&dword_254850000, v2, OS_LOG_TYPE_INFO, "Getting transfers: %@", buf, 0xCu);
    }
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(*(*(a1 + 64) + 8) + 40);
  v6 = [*(a1 + 40) requestURL];
  v7 = [*(a1 + 40) requestorID];
  v8 = *(a1 + 48);
  v9 = [*(a1 + 40) authToken];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_25485998C;
  v13[3] = &unk_27978CD18;
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  v12 = *(a1 + 32);
  v14 = v10;
  v15 = v12;
  v16 = v11;
  [v4 getFiles:v5 requestURL:v6 requestorID:v7 sourceAppID:v8 authToken:v9 completionBlock:v13];
}

void sub_25485998C(uint64_t a1, void *a2, int a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  [*(a1 + 32) setMMCSError:v8];
  v9 = IMOSLoggingEnabled();
  if (a3)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(*(*(a1 + 48) + 8) + 24);
        v13 = 138412546;
        v14 = v7;
        v15 = 1024;
        LODWORD(v16) = v11;
        _os_log_impl(&dword_254850000, v10, OS_LOG_TYPE_INFO, "Finished download request for files: %@     retry: %d", &v13, 0x12u);
      }

LABEL_9:
    }
  }

  else if (v9)
  {
    v10 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = *(*(*(a1 + 48) + 8) + 24);
      v13 = 138412802;
      v14 = v8;
      v15 = 2112;
      v16 = v7;
      v17 = 1024;
      v18 = v12;
      _os_log_impl(&dword_254850000, v10, OS_LOG_TYPE_INFO, "Failed download request: %@   files: %@   retry: %d", &v13, 0x1Cu);
    }

    goto LABEL_9;
  }

  [*(*(a1 + 40) + 8) unregisterFiles:v7];
}

void sub_254859B40(uint64_t a1, int a2)
{
  v76 = *MEMORY[0x277D85DE8];
  [*(*(*(a1 + 144) + 8) + 40) stopTimingForKey:*(a1 + 32)];
  if (a2)
  {
    v4 = objc_alloc_init(FTiMessageRequestMMCSDownloadToken);
    if ([*(a1 + 40) length])
    {
      [(IDSBaseMessage *)v4 setTopic:*(a1 + 40)];
    }

    [(FTiMessageRequestMMCSDownloadToken *)v4 setOwner:*(a1 + 48)];
    [(FTiMessageRequestMMCSDownloadToken *)v4 setSignature:*(a1 + 56)];
    v52 = v4;
    if (IMOptOutOfOptimizedMadridAttachmentDownloadPath())
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v6 = *(a1 + 64);
          *buf = 138412290;
          v71 = v6;
          _os_log_impl(&dword_254850000, v5, OS_LOG_TYPE_INFO, "Opting download with GUID %@ out of optimized AuthGet flow.", buf, 0xCu);
        }

        v4 = v52;
      }

      [(FTiMessageRequestMMCSDownloadToken *)v4 setContentVersion:0];
      goto LABEL_29;
    }

    v30 = [*(*(a1 + 72) + 8) getContentHeadersAsString];
    if (v30)
    {
      [(FTiMessageRequestMMCSDownloadToken *)v4 setContentVersion:2];
      v31 = MEMORY[0x277CCACA8];
      v32 = [*(a1 + 80) scheme];
      v33 = [*(a1 + 80) host];
      v34 = [v31 stringWithFormat:@"%@://%@", v32, v33];
      [(FTiMessageRequestMMCSDownloadToken *)v52 setAuthURLString:v34];

      [(FTiMessageRequestMMCSDownloadToken *)v52 setContentHeaders:v30];
      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = [(FTiMessageRequestMMCSDownloadToken *)v52 contentHeaders];
          v37 = [(FTiMessageRequestMMCSDownloadToken *)v52 messageBody];
          v38 = *(a1 + 64);
          *buf = 138412802;
          v71 = v36;
          v72 = 2112;
          v73 = v37;
          v74 = 2112;
          v75 = v38;
          _os_log_impl(&dword_254850000, v35, OS_LOG_TYPE_INFO, "Sending Madrid AuthGet with content headers: %@ body:%@ for transfer: %@", buf, 0x20u);
        }

LABEL_27:
      }
    }

    else
    {
      [(FTiMessageRequestMMCSDownloadToken *)v4 setContentVersion:0];
      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v39 = *(a1 + 64);
          *buf = 138412290;
          v71 = v39;
          _os_log_impl(&dword_254850000, v35, OS_LOG_TYPE_INFO, "Tried to send Madrid AuthGet, but could not fetch content header for transfer: %@", buf, 0xCu);
        }

        goto LABEL_27;
      }
    }

LABEL_29:
    v40 = [MEMORY[0x277CBEAA8] date];
    v41 = _os_activity_create(&dword_254850000, "com.apple.messages.MMCSPreAuth", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
    [*(*(*(a1 + 144) + 8) + 40) startTimingForKey:*(a1 + 88)];
    v42 = +[IMTransferAgentDeliveryController sharedInstance];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = sub_25485A448;
    v53[3] = &unk_27978CDE0;
    v43 = *(a1 + 144);
    v54 = v41;
    v65 = v43;
    v55 = *(a1 + 88);
    v56 = *(a1 + 64);
    v57 = *(a1 + 96);
    v58 = *(a1 + 104);
    v59 = *(a1 + 112);
    v44 = *(a1 + 120);
    v45 = *(a1 + 72);
    v60 = v44;
    v61 = v45;
    v62 = *(a1 + 128);
    v63 = *(a1 + 136);
    v64 = v40;
    v51 = v40;
    v28 = v41;
    [v42 sendFTMessage:v52 completionBlock:v53];

    v15 = v54;
    goto LABEL_30;
  }

  [*(*(a1 + 72) + 8) unregisterFiles:*(a1 + 128)];
  v7 = [*(a1 + 104) completionBlock];
  v52 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, *(a1 + 104), 0, 0, 0, 0);
  }

  v68 = *MEMORY[0x277D1A0A0];
  v8 = [MEMORY[0x277CCABB0] numberWithLong:44];
  v69 = v8;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];

  v9 = [MEMORY[0x277D1AAA8] sharedInstance];
  [v9 trackEvent:*MEMORY[0x277D1A0A8] withDictionary:v50];

  v10 = [MEMORY[0x277D07DD8] sharedInstance];
  v11 = [v10 wiFiActiveAndReachable];

  if (v11)
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  v13 = MEMORY[0x277CCABB0];
  v14 = [MEMORY[0x277D192E8] sharedInstance];
  v51 = [v13 numberWithInt:{objc_msgSend(v14, "linkQualityValueForInterfaceType:", v12)}];

  v15 = [MEMORY[0x277D25698] parseMMCSError:0];
  v66[0] = *MEMORY[0x277D1A2A0];
  v49 = [MEMORY[0x277CCABB0] numberWithLong:0];
  v67[0] = v49;
  v66[1] = *MEMORY[0x277D1A318];
  v48 = [MEMORY[0x277CCABB0] numberWithLong:0];
  v67[1] = v48;
  v66[2] = *MEMORY[0x277D1A378];
  v47 = [MEMORY[0x277CCABB0] numberWithLong:1];
  v67[2] = v47;
  v16 = *MEMORY[0x277D1A300];
  v66[3] = *MEMORY[0x277D1A2C0];
  v66[4] = v16;
  v67[3] = &unk_28669F548;
  v67[4] = v51;
  v66[5] = *MEMORY[0x277D1A078];
  if (v11)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v46 = [MEMORY[0x277CCABB0] numberWithLong:v17];
  v67[5] = v46;
  v18 = *MEMORY[0x277D1A070];
  v67[6] = &unk_28669F548;
  v19 = *MEMORY[0x277D1A288];
  v66[6] = v18;
  v66[7] = v19;
  v20 = [v15 objectAtIndexedSubscript:0];
  v67[7] = v20;
  v66[8] = *MEMORY[0x277D1A280];
  v21 = [v15 objectAtIndexedSubscript:1];
  v67[8] = v21;
  v66[9] = *MEMORY[0x277D1A338];
  v22 = [v15 objectAtIndexedSubscript:2];
  v67[9] = v22;
  v66[10] = *MEMORY[0x277D1A330];
  v23 = [v15 objectAtIndexedSubscript:3];
  v67[10] = v23;
  v66[11] = *MEMORY[0x277D1A368];
  v24 = [v15 objectAtIndexedSubscript:4];
  v67[11] = v24;
  v66[12] = *MEMORY[0x277D1A360];
  v25 = [v15 objectAtIndexedSubscript:5];
  v67[12] = v25;
  v66[13] = *MEMORY[0x277D1A298];
  v26 = [v15 objectAtIndexedSubscript:6];
  v67[13] = v26;
  v66[14] = *MEMORY[0x277D1A290];
  v27 = [v15 objectAtIndexedSubscript:7];
  v67[14] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:15];

  v29 = [MEMORY[0x277D1AAA8] sharedInstance];
  [v29 trackEvent:*MEMORY[0x277D1A0F0] withDictionary:v28];

LABEL_30:
}

void sub_25485A414(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25485A230);
  }

  _Unwind_Resume(a1);
}

void sub_25485A448(uint64_t a1, void *a2, void *a3, int a4, unsigned int a5)
{
  v88 = *MEMORY[0x277D85DE8];
  v64 = a2;
  v9 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = qos_class_self();
      *buf = 67109120;
      *&buf[4] = v11;
      _os_log_impl(&dword_254850000, v10, OS_LOG_TYPE_INFO, "Handling download MMCS auth at qos (%u)", buf, 8u);
    }
  }

  [*(*(*(a1 + 120) + 8) + 40) stopTimingForKey:*(a1 + 40)];
  v12 = v9;
  v13 = [v12 responseContentVersion];
  v69 = v12;
  v14 = [v12 contentVersion];
  if (v14 != v13 && IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 48);
      *buf = 134218498;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = v14;
      *&buf[22] = 2112;
      v86 = v16;
      _os_log_impl(&dword_254850000, v15, OS_LOG_TYPE_INFO, "Madrid responded with 'cV': %tu, but we requested a 'cV': %tu (transfer: %@)", buf, 0x20u);
    }
  }

  if (v13 <= 0)
  {
    if ((a4 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v17 = [v69 responseContentBody];
    v18 = v17 == 0;

    if (v18)
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = *(a1 + 48);
          *buf = 134218242;
          *&buf[4] = v13;
          *&buf[12] = 2112;
          *&buf[14] = v21;
          _os_log_impl(&dword_254850000, v20, OS_LOG_TYPE_INFO, "Madrid responded with 'cV': %tu, but no response body (transfer: %@)", buf, 0x16u);
        }
      }

      a5 = 17;
      goto LABEL_26;
    }

    if (!a4)
    {
LABEL_26:
      [*(*(a1 + 88) + 8) unregisterFiles:*(a1 + 96)];
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = v69;
          *&buf[12] = 1024;
          *&buf[14] = a5;
          _os_log_impl(&dword_254850000, v22, OS_LOG_TYPE_INFO, "Failed sending mmcs download request: %@, error %u", buf, 0x12u);
        }
      }

      v68 = [*(a1 + 64) completionBlock];
      v83 = *MEMORY[0x277D1A0A0];
      v23 = [MEMORY[0x277CCABB0] numberWithLong:46];
      v84 = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];

      v25 = [MEMORY[0x277D1AAA8] sharedInstance];
      [v25 trackEvent:*MEMORY[0x277D1A0A8] withDictionary:v24];

      if (a5)
      {
        v66 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMTransferAgentErrorDomain" code:a5 userInfo:0];
      }

      else
      {
        v66 = 0;
      }

      v26 = [MEMORY[0x277D07DD8] sharedInstance];
      v27 = [v26 wiFiActiveAndReachable];

      v28 = MEMORY[0x277CCABB0];
      v29 = [MEMORY[0x277D192E8] sharedInstance];
      v30 = v29;
      if (v27)
      {
        v31 = 2;
      }

      else
      {
        v31 = 3;
      }

      v65 = [v28 numberWithInt:{objc_msgSend(v29, "linkQualityValueForInterfaceType:", v31)}];

      v59 = v24;
      v32 = [MEMORY[0x277D25698] parseMMCSError:0];
      v81[0] = *MEMORY[0x277D1A2A0];
      v63 = [MEMORY[0x277CCABB0] numberWithLong:a5];
      v82[0] = v63;
      v81[1] = *MEMORY[0x277D1A318];
      v62 = [MEMORY[0x277CCABB0] numberWithLong:0];
      v82[1] = v62;
      v81[2] = *MEMORY[0x277D1A378];
      v61 = [MEMORY[0x277CCABB0] numberWithLong:3];
      v33 = *MEMORY[0x277D1A2C0];
      v82[2] = v61;
      v82[3] = &unk_28669F548;
      v34 = *MEMORY[0x277D1A300];
      v81[3] = v33;
      v81[4] = v34;
      v82[4] = v65;
      v81[5] = *MEMORY[0x277D1A078];
      if (v27)
      {
        v35 = 2;
      }

      else
      {
        v35 = 1;
      }

      v60 = [MEMORY[0x277CCABB0] numberWithLong:v35];
      v36 = *MEMORY[0x277D1A070];
      v82[5] = v60;
      v82[6] = &unk_28669F548;
      v37 = *MEMORY[0x277D1A288];
      v81[6] = v36;
      v81[7] = v37;
      v38 = [v32 objectAtIndexedSubscript:0];
      v82[7] = v38;
      v81[8] = *MEMORY[0x277D1A280];
      v39 = [v32 objectAtIndexedSubscript:1];
      v82[8] = v39;
      v81[9] = *MEMORY[0x277D1A338];
      v40 = [v32 objectAtIndexedSubscript:2];
      v82[9] = v40;
      v81[10] = *MEMORY[0x277D1A330];
      v41 = [v32 objectAtIndexedSubscript:3];
      v82[10] = v41;
      v81[11] = *MEMORY[0x277D1A368];
      v42 = [v32 objectAtIndexedSubscript:4];
      v82[11] = v42;
      v81[12] = *MEMORY[0x277D1A360];
      v43 = [v32 objectAtIndexedSubscript:5];
      v82[12] = v43;
      v81[13] = *MEMORY[0x277D1A298];
      v44 = [v32 objectAtIndexedSubscript:6];
      v82[13] = v44;
      v81[14] = *MEMORY[0x277D1A290];
      v45 = [v32 objectAtIndexedSubscript:7];
      v82[14] = v45;
      v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:15];

      v46 = [MEMORY[0x277D1AAA8] sharedInstance];
      [v46 trackEvent:*MEMORY[0x277D1A0F0] withDictionary:v67];

      if (v68)
      {
        (v68)[2](v68, *(a1 + 64), 0, 0, 0, v66);
      }

      goto LABEL_48;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v69;
      _os_log_impl(&dword_254850000, v19, OS_LOG_TYPE_INFO, "Finished sending mmcs download request: %@", buf, 0xCu);
    }
  }

  v68 = [v69 responseAuthToken];
  if (*(a1 + 56))
  {
    v67 = [MEMORY[0x277CBEBC0] URLWithString:?];
  }

  else
  {
    v67 = 0;
  }

  v66 = [v69 responseRequestorID];
  [*(a1 + 64) setRequestorID:v66];
  [*(a1 + 64) setAuthToken:v68];
  v47 = *(a1 + 64);
  v48 = [v69 responseContentBody];
  [v47 setAuthResponseData:v48];

  if (IMOSLoggingEnabled())
  {
    v49 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = *(a1 + 64);
      v51 = *(a1 + 72);
      *buf = 138413058;
      *&buf[4] = v50;
      *&buf[12] = 2112;
      *&buf[14] = v51;
      *&buf[22] = 2112;
      v86 = v68;
      LOWORD(v87.opaque[0]) = 2112;
      *(v87.opaque + 2) = v66;
      _os_log_impl(&dword_254850000, v49, OS_LOG_TYPE_INFO, "Request to receive transfer: %@  path: %@  auth token: %@  requestor ID: %@", buf, 0x2Au);
    }
  }

  [*(*(*(a1 + 120) + 8) + 40) startTimingForKey:*(a1 + 80)];
  v52 = _os_activity_create(&dword_254850000, "com.apple.messages.MMCSGetFile", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3010000000;
  v87.opaque[0] = 0;
  v87.opaque[1] = 0;
  v86 = &unk_25486E79B;
  v65 = v52;
  os_activity_scope_enter(v52, &v87);
  v53 = *(a1 + 96);
  v54 = *(*(a1 + 88) + 8);
  v55 = [*(a1 + 64) requestorID];
  v56 = *(a1 + 104);
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = sub_25485AF74;
  v70[3] = &unk_27978CDB8;
  v77 = *(a1 + 120);
  v71 = *(a1 + 80);
  v72 = *(a1 + 64);
  v73 = *(a1 + 48);
  v74 = *(a1 + 112);
  v57 = *(a1 + 72);
  v79 = a5;
  v78 = buf;
  v58 = *(a1 + 88);
  v75 = v57;
  v76 = v58;
  [v54 getFiles:v53 requestURL:v67 requestorID:v55 sourceAppID:v56 authToken:v68 completionBlock:v70];

  _Block_object_dispose(buf, 8);
LABEL_48:

  os_activity_scope_leave(&state);
}

void sub_25485AF74(uint64_t a1, void *a2, int a3, void *a4)
{
  v104[1] = *MEMORY[0x277D85DE8];
  v86 = a2;
  v7 = a4;
  [*(*(*(a1 + 80) + 8) + 40) stopTimingForKey:*(a1 + 32)];
  v87 = v7;
  [*(a1 + 40) setMMCSError:v7];
  v88 = a1;
  if (a3)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 48);
        v10 = *(*(*(a1 + 80) + 8) + 40);
        *buf = 138412546;
        v98 = v9;
        v99 = 2112;
        v100 = v10;
        _os_log_impl(&dword_254850000, v8, OS_LOG_TYPE_INFO, "Download timing for transfer ID%@ %@", buf, 0x16u);
      }
    }

    v11 = *(*(a1 + 80) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;

    v103 = *MEMORY[0x277D1A0A0];
    v13 = [MEMORY[0x277CCABB0] numberWithLong:0];
    v104[0] = v13;
    v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:&v103 count:1];

    v14 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v14 trackEvent:*MEMORY[0x277D1A0A8] withDictionary:v81];

    v15 = [MEMORY[0x277CBEAA8] date];
    [v15 timeIntervalSinceDate:*(a1 + 56)];
    v17 = v16;

    v18 = 0.0;
    if (v17 > 0.0)
    {
      v18 = [*(a1 + 40) protocolFileSize] / v17 * 0.0009765625;
    }

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v98 = v86;
        _os_log_impl(&dword_254850000, v19, OS_LOG_TYPE_INFO, "Built download succeeded for files: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v98 = v86;
        v99 = 2048;
        v100 = v17;
        v101 = 2048;
        v102 = v18;
        _os_log_impl(&dword_254850000, v20, OS_LOG_TYPE_INFO, "Finished download request for files: %@  download time was: %f  speed: %.0f kb/s", buf, 0x20u);
      }
    }

    v21 = [MEMORY[0x277D19250] defaultHFSFileManager];
    v22 = *(a1 + 64);
    v90 = 0;
    v85 = [v21 attributesOfItemAtPath:v22 error:&v90];
    v83 = v90;

    v84 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
    v23 = [MEMORY[0x277D07DD8] sharedInstance];
    v24 = [v23 wiFiActiveAndReachable];

    if (v24)
    {
      v25 = 2;
    }

    else
    {
      v25 = 3;
    }

    v26 = MEMORY[0x277CCABB0];
    v27 = [MEMORY[0x277D192E8] sharedInstance];
    v89 = [v26 numberWithInt:{objc_msgSend(v27, "linkQualityValueForInterfaceType:", v25)}];

    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v85, "fileSize")}];
    v71 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v87, "code")}];
    v29 = [MEMORY[0x277D25698] parseMMCSError:v87];
    v95[0] = *MEMORY[0x277D1A2A0];
    v79 = [MEMORY[0x277CCABB0] numberWithLong:*(v88 + 96)];
    v96[0] = v79;
    v95[1] = *MEMORY[0x277D1A318];
    v77 = [MEMORY[0x277CCABB0] numberWithLong:0];
    v96[1] = v77;
    v95[2] = *MEMORY[0x277D1A378];
    v75 = [MEMORY[0x277CCABB0] numberWithLong:0];
    v96[2] = v75;
    v30 = *MEMORY[0x277D1A090];
    v95[3] = *MEMORY[0x277D1A2C0];
    v95[4] = v30;
    v96[3] = v71;
    v96[4] = v84;
    v31 = *MEMORY[0x277D1A300];
    v96[5] = v89;
    v32 = *MEMORY[0x277D1A078];
    v95[5] = v31;
    v95[6] = v32;
    if (v24)
    {
      v33 = 2;
    }

    else
    {
      v33 = 1;
    }

    v73 = [MEMORY[0x277CCABB0] numberWithLong:v33];
    v96[6] = v73;
    v34 = *MEMORY[0x277D1A070];
    v96[7] = v28;
    v35 = *MEMORY[0x277D1A288];
    v95[7] = v34;
    v95[8] = v35;
    v72 = [v29 objectAtIndexedSubscript:0];
    v96[8] = v72;
    v95[9] = *MEMORY[0x277D1A280];
    v36 = [v29 objectAtIndexedSubscript:1];
    v96[9] = v36;
    v95[10] = *MEMORY[0x277D1A338];
    v37 = [v29 objectAtIndexedSubscript:2];
    v96[10] = v37;
    v95[11] = *MEMORY[0x277D1A330];
    v38 = [v29 objectAtIndexedSubscript:3];
    v96[11] = v38;
    v95[12] = *MEMORY[0x277D1A368];
    v39 = [v29 objectAtIndexedSubscript:4];
    v96[12] = v39;
    v95[13] = *MEMORY[0x277D1A360];
    v40 = [v29 objectAtIndexedSubscript:5];
    v96[13] = v40;
    v95[14] = *MEMORY[0x277D1A298];
    v41 = [v29 objectAtIndexedSubscript:6];
    v96[14] = v41;
    v95[15] = *MEMORY[0x277D1A290];
    v42 = [v29 objectAtIndexedSubscript:7];
    v96[15] = v42;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:16];

    v44 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v44 trackEvent:*MEMORY[0x277D1A0F0] withDictionary:v43];
  }

  else
  {
    v45 = [MEMORY[0x277CBEAA8] date];
    [v45 timeIntervalSinceDate:*(a1 + 56)];
    v47 = v46;

    if (IMOSLoggingEnabled())
    {
      v48 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v98 = v86;
        v99 = 2112;
        v100 = *&v87;
        v101 = 2048;
        v102 = v47;
        _os_log_impl(&dword_254850000, v48, OS_LOG_TYPE_INFO, "Failed downloading files: %@  error: %@  time was: %f", buf, 0x20u);
      }
    }

    v93 = *MEMORY[0x277D1A0A0];
    v49 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v87, "code")}];
    v94 = v49;
    v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v94 forKeys:&v93 count:1];

    v50 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v50 trackEvent:*MEMORY[0x277D1A0A8] withDictionary:v82];

    v85 = [MEMORY[0x277CCABB0] numberWithDouble:v47];
    v51 = [MEMORY[0x277D07DD8] sharedInstance];
    v52 = [v51 wiFiActiveAndReachable];

    if (v52)
    {
      v53 = 2;
    }

    else
    {
      v53 = 3;
    }

    v54 = MEMORY[0x277CCABB0];
    v55 = [MEMORY[0x277D192E8] sharedInstance];
    v83 = [v54 numberWithInt:{objc_msgSend(v55, "linkQualityValueForInterfaceType:", v53)}];

    v84 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v87, "code")}];
    v89 = [MEMORY[0x277D25698] parseMMCSError:v87];
    v91[0] = *MEMORY[0x277D1A2A0];
    v80 = [MEMORY[0x277CCABB0] numberWithLong:*(v88 + 96)];
    v92[0] = v80;
    v91[1] = *MEMORY[0x277D1A318];
    v78 = [MEMORY[0x277CCABB0] numberWithLong:0];
    v92[1] = v78;
    v91[2] = *MEMORY[0x277D1A378];
    v76 = [MEMORY[0x277CCABB0] numberWithLong:0];
    v92[2] = v76;
    v56 = *MEMORY[0x277D1A090];
    v91[3] = *MEMORY[0x277D1A2C0];
    v91[4] = v56;
    v92[3] = v84;
    v92[4] = v85;
    v57 = *MEMORY[0x277D1A300];
    v92[5] = v83;
    v58 = *MEMORY[0x277D1A078];
    v91[5] = v57;
    v91[6] = v58;
    if (v52)
    {
      v59 = 2;
    }

    else
    {
      v59 = 1;
    }

    v74 = [MEMORY[0x277CCABB0] numberWithLong:v59];
    v92[6] = v74;
    v60 = *MEMORY[0x277D1A070];
    v92[7] = &unk_28669F548;
    v61 = *MEMORY[0x277D1A288];
    v91[7] = v60;
    v91[8] = v61;
    v62 = [v89 objectAtIndexedSubscript:0];
    v92[8] = v62;
    v91[9] = *MEMORY[0x277D1A280];
    v63 = [v89 objectAtIndexedSubscript:1];
    v92[9] = v63;
    v91[10] = *MEMORY[0x277D1A338];
    v64 = [v89 objectAtIndexedSubscript:2];
    v92[10] = v64;
    v91[11] = *MEMORY[0x277D1A330];
    v65 = [v89 objectAtIndexedSubscript:3];
    v92[11] = v65;
    v91[12] = *MEMORY[0x277D1A368];
    v66 = [v89 objectAtIndexedSubscript:4];
    v92[12] = v66;
    v91[13] = *MEMORY[0x277D1A360];
    v67 = [v89 objectAtIndexedSubscript:5];
    v92[13] = v67;
    v91[14] = *MEMORY[0x277D1A298];
    v68 = [v89 objectAtIndexedSubscript:6];
    v92[14] = v68;
    v91[15] = *MEMORY[0x277D1A290];
    v69 = [v89 objectAtIndexedSubscript:7];
    v92[15] = v69;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:16];

    v70 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v70 trackEvent:*MEMORY[0x277D1A0F0] withDictionary:v43];

    v28 = [*(v88 + 40) completionBlock];
    os_activity_scope_leave((*(*(v88 + 88) + 8) + 32));
    if (v28)
    {
      (v28)[2](v28, *(v88 + 40), 0, 0, 0, v87);
    }
  }

  [*(*(v88 + 72) + 8) unregisterFiles:v86];
}

void sub_25485C060(uint64_t a1, void *a2, void *a3, int a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a5;
  v13 = a6;
  v14 = a3;
  im_assert_primary_queue();
  if (a4)
  {
    v15 = *(a1 + 32);
    v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_25485C1BC;
    v18[3] = &unk_27978CE30;
    v17 = *(a1 + 40);
    v21 = *(a1 + 48);
    v19 = v11;
    v20 = v13;
    [v15 ensureSafeAttachment:v16 topic:v17 withCompletionBlock:v18];

    v14 = v21;
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_25485C1BC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13[0] = 67109120;
      v13[1] = qos_class_self();
      _os_log_impl(&dword_254850000, v9, OS_LOG_TYPE_INFO, "Handling ensureSafeAttachment at qos (%u)", v13, 8u);
    }
  }

  im_assert_primary_queue();
  v10 = a1[6];
  v11 = a1[4];
  v12 = [v7 path];
  (*(v10 + 16))(v10, v11, v12, a2, v8, a1[5]);
}

void sub_25485C30C(uint64_t a1, void *a2, void *a3, int a4, void *a5, void *a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v24 = qos_class_self();
      _os_log_impl(&dword_254850000, v15, OS_LOG_TYPE_INFO, "Handling download completion at qos (%u)", buf, 8u);
    }
  }

  im_assert_primary_queue();
  if (a4 && [*(a1 + 32) length])
  {
    v16 = +[IMTransferEncryptionController sharedInstance];
    v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_25485C538;
    v20[3] = &unk_27978CE80;
    v22 = *(a1 + 56);
    v21 = *(a1 + 48);
    [v16 decryptURL:v17 key:v18 outputFileName:v19 completionBlock:v20];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_25485C538(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v19) = qos_class_self();
      _os_log_impl(&dword_254850000, v9, OS_LOG_TYPE_INFO, "Handling download decryption at qos (%u)", buf, 8u);
    }
  }

  im_assert_primary_queue();
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = [v8 path];
  (*(v10 + 16))(v10, v11, v12, a3, 0, 0);

  if (v8)
  {
    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = 0;
    v14 = [v13 removeItemAtURL:v7 error:&v17];
    v15 = v17;

    if ((v14 & 1) == 0 && IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v19 = v7;
        v20 = 2112;
        v21 = v15;
        _os_log_impl(&dword_254850000, v16, OS_LOG_TYPE_INFO, "Error cleaning up encrypted attachment path: %@  error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v15 = 0;
  }
}

void sub_25485C94C(uint64_t a1, char a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  im_assert_primary_queue();
  if (a2)
  {
    if ([*(a1 + 32) isEqual:v7])
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = *(a1 + 32);
          *buf = 138412290;
          v24 = v10;
          _os_log_impl(&dword_254850000, v9, OS_LOG_TYPE_INFO, "Generating safe render succeeded, but still using the original path since we cannot transcode the entire asset: %@", buf, 0xCu);
        }
      }

      v11 = 0;
      goto LABEL_17;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      *buf = 138412546;
      v24 = v13;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_254850000, v12, OS_LOG_TYPE_INFO, "Error generating safe render for transfer: %@ error: %@", buf, 0x16u);
    }
  }

  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = *(a1 + 32);
  v22 = 0;
  v16 = [v14 removeItemAtURL:v15 error:&v22];
  v11 = v22;

  if ((v16 & 1) == 0 && IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 32);
      *buf = 138412546;
      v24 = v18;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_254850000, v17, OS_LOG_TYPE_INFO, "Error removing transfer: %@ error: %@", buf, 0x16u);
    }
  }

LABEL_17:
  if (v7)
  {
    v19 = v8 == 0;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254850000, v20, OS_LOG_TYPE_INFO, "Decontamination succeeded", buf, 2u);
      }
    }

    v21 = 0;
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D19E58] code:28 userInfo:0];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_25485CD34()
{
  qword_28112D9D0 = objc_alloc_init(IMTransferAgentDeliveryController);

  return MEMORY[0x2821F96F8]();
}

void sub_25485D004(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = a4;
  *&v26[5] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = v9;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      *v26 = v12;
      _os_log_impl(&dword_254850000, v13, OS_LOG_TYPE_INFO, "    Delivered FTMessage: %@", &v25, 0xCu);
    }
  }

  v14 = _FZErrorTypeFromResponseCodeAndError();
  v15 = v14;
  if (v10)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14 == 0;
  }

  v17 = v16;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v25 = 67109376;
      v26[0] = v6;
      LOWORD(v26[1]) = 1024;
      *(&v26[1] + 2) = v15;
      _os_log_impl(&dword_254850000, v18, OS_LOG_TYPE_INFO, "    Result code: %d, errorType = %d", &v25, 0xEu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      *v26 = v11;
      _os_log_impl(&dword_254850000, v19, OS_LOG_TYPE_INFO, "    Result dictionary: %@", &v25, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      *v26 = v10;
      _os_log_impl(&dword_254850000, v20, OS_LOG_TYPE_INFO, "    Error: %@", &v25, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = @"NO";
      if (v17)
      {
        v22 = @"YES";
      }

      v25 = 138412290;
      *v26 = v22;
      _os_log_impl(&dword_254850000, v21, OS_LOG_TYPE_INFO, "  Success: %@", &v25, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_254850000, v23, OS_LOG_TYPE_INFO, "Sending callback for FTMessage send", &v25, 2u);
    }
  }

  v24 = *(a1 + 40);
  if (v24)
  {
    (*(v24 + 16))(v24, *(a1 + 32), v12, v17, v15);
  }
}

uint64_t sub_25485D424()
{
  qword_28112D9D8 = objc_alloc_init(IMTransferAgentNicknameController);

  return MEMORY[0x2821F96F8]();
}

void sub_25485D6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_25485D6FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25485D714(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:*(a1 + 32)];
  v6 = objc_alloc(MEMORY[0x277CBC5D0]);
  v7 = [*(a1 + 32) stringByAppendingString:@"-wp"];
  v8 = [v6 initWithRecordName:v7];

  [v4 addObject:v5];
  v9 = *(a1 + 40) != 0 || *(a1 + 56) || *(a1 + 64) != 0;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 112);
      *buf = 67109890;
      v39 = v9;
      v40 = 1024;
      v41 = v11;
      v42 = 1024;
      v43 = 1;
      v44 = 2112;
      v45 = v8;
      _os_log_impl(&dword_254850000, v10, OS_LOG_TYPE_INFO, "Have some wallpaper tag: %i, knownSender: %i, shouldFetchWallpaperRecord: %i, wallpaperRecordID: %@", buf, 0x1Eu);
    }
  }

  if (v9 && *(a1 + 112) == 1)
  {
    [v4 addObject:v8];
  }

  v12 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:v4];
  v13 = [MEMORY[0x277D1AAD0] allKeys];
  [v12 setDesiredKeys:v13];

  v14 = (a1 + 72);
  v15 = [*(a1 + 72) _nickNameFetchConfiguration];
  [v12 setConfiguration:v15];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_25485DAA8;
  v24[3] = &unk_27978CF48;
  v25 = *(a1 + 80);
  v26 = v5;
  v27 = v8;
  v28 = *(a1 + 88);
  v16 = *(a1 + 96);
  v17 = *(a1 + 72);
  v34 = v16;
  v29 = v17;
  v30 = *(a1 + 48);
  v31 = *(a1 + 56);
  v32 = *(a1 + 40);
  v18 = *(a1 + 64);
  v37 = *(a1 + 112);
  v19 = *(a1 + 104);
  v35 = v3;
  v36 = v19;
  v33 = v18;
  v20 = v3;
  v21 = v8;
  v22 = v5;
  [v12 setFetchRecordsCompletionBlock:v24];
  v23 = [*v14 _nickNamePublicDB];
  [v23 addOperation:v12];
}

void sub_25485DAA8(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = v6;
      _os_log_impl(&dword_254850000, v7, OS_LOG_TYPE_INFO, "Public Nickname retrieval completed with error %@", buf, 0xCu);
    }
  }

  if (v6 && IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 userInfo];
      *buf = 138412290;
      v37 = v9;
      _os_log_impl(&dword_254850000, v8, OS_LOG_TYPE_INFO, "Public nickname retrieval errors %@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_25485DDAC;
  block[3] = &unk_27978CF20;
  v27 = v6;
  v28 = v5;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v33 = *(a1 + 104);
  *&v14 = v13;
  *(&v14 + 1) = *(a1 + 64);
  *&v15 = v11;
  *(&v15 + 1) = v12;
  v29 = v15;
  v30 = v14;
  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  v19 = *(a1 + 96);
  *&v20 = v18;
  *(&v20 + 1) = v19;
  *&v21 = v16;
  *(&v21 + 1) = v17;
  v31 = v21;
  v32 = v20;
  v35 = *(a1 + 128);
  v25 = *(a1 + 112);
  v22 = v25;
  v34 = v25;
  v23 = v5;
  v24 = v6;
  dispatch_async(v10, block);
}

void sub_25485DDAC(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 128) + 8) + 40), v2);
    if (((*(*(a1 + 120) + 16))() & 1) == 0)
    {
      v3 = *(a1 + 112);
      v23 = [*(a1 + 72) _errorWrappingError:*(*(*(a1 + 128) + 8) + 40)];
      (*(v3 + 16))(v3, 0);
    }
  }

  else
  {
    v4 = [*(a1 + 40) objectForKey:*(a1 + 48)];
    v5 = [*(a1 + 40) objectForKey:*(a1 + 56)];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v4;
        _os_log_impl(&dword_254850000, v6, OS_LOG_TYPE_INFO, "Public Nickname record found %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v5;
        _os_log_impl(&dword_254850000, v7, OS_LOG_TYPE_INFO, "Public Wallpaper record found %@", buf, 0xCu);
      }
    }

    v8 = *(a1 + 64);
    v25 = 0;
    v9 = [MEMORY[0x277D1AB00] preKeyWithDataRepresentation:v8 error:&v25];
    v10 = v25;
    if (v9)
    {
      v11 = *(a1 + 80);
      v12 = *(a1 + 88);
      v13 = *(a1 + 96);
      v14 = *(a1 + 104);
      v15 = *(a1 + 136);
      v24 = v10;
      LOWORD(v22) = v15;
      v16 = [MEMORY[0x277D1AAD0] nicknameFromPublicRecord:v4 wallpaperRecord:v5 preKey:v9 wallpaperDataTag:v11 wallpaperLowResDataTag:v12 wallpaperMetadataTag:v13 avatarRecipeDataTag:v14 knownSender:v22 shouldDecodeImageFields:&v24 error:?];
      v17 = v24;

      if (v16)
      {
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v27 = v16;
            _os_log_impl(&dword_254850000, v18, OS_LOG_TYPE_INFO, "Transfer agent sending back nickname: %@", buf, 0xCu);
          }
        }

        (*(*(a1 + 112) + 16))();
      }

      else
      {
        v20 = *(a1 + 112);
        v21 = [*(a1 + 72) _errorWrappingError:v17];
        (*(v20 + 16))(v20, 0, v21);
      }

      v10 = v17;
    }

    else
    {
      v19 = *(a1 + 112);
      v16 = [*(a1 + 72) _errorWrappingError:v10];
      (*(v19 + 16))(v19, 0, v16);
    }
  }
}

void sub_25485E2BC(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"creatorUserRecordID == %@", v5];
  v8 = [objc_alloc(MEMORY[0x277CBC578]) initWithRecordType:@"imsgNicknamePublicv2" predicate:v7];
  v9 = [MEMORY[0x277CBC5E8] defaultRecordZone];
  v10 = [v9 zoneID];

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_254850000, v11, OS_LOG_TYPE_INFO, "Querying for all record ids created by userRecordID %@", buf, 0xCu);
    }
  }

  v12 = [*(a1 + 32) _nickNamePublicDB];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_25485E4C4;
  v14[3] = &unk_27978CFC0;
  v15 = v10;
  v16 = *(a1 + 40);
  v13 = v10;
  [v12 performQuery:v8 inZoneWithID:v13 completionHandler:v14];
}

void sub_25485E4C4(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = 138412802;
      v10 = v8;
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_254850000, v7, OS_LOG_TYPE_INFO, "Got back records in zone %@ created by current user %@ error %@", &v9, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_25485EBF8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25485E848);
  }

  _Unwind_Resume(a1);
}

void sub_25485EC18(uint64_t a1, unsigned int a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v27 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = v22;
  v24 = *(a1 + 40);
  if (v24)
  {
    if (v22)
    {
      v25 = [*(a1 + 32) _errorWrappingError:v22];
      (*(v24 + 16))(v24, a2, v27, v16, v17, v18, v19, v20, v21, v25);
    }

    else
    {
      (*(v24 + 16))(v24, a2, v27, v16, v17, v18, v19, v20, v21, 0);
    }
  }
}

void sub_25485ED70(uint64_t a1, int a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = a3;
  [*(a1 + 32) stopTimingForKey:@"Nickname Upload"];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      [*(a1 + 32) totalTimeForKey:@"Nickname Upload"];
      *buf = 134217984;
      v26 = v6;
      _os_log_impl(&dword_254850000, v5, OS_LOG_TYPE_INFO, "Nickname uploaded in time: %f", buf, 0xCu);
    }
  }

  v7 = IMOSLoggingEnabled();
  if (a2)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254850000, v8, OS_LOG_TYPE_INFO, "Encrypted Nickname stored in Public Database", buf, 2u);
      }
    }

    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) recordID];
    v24 = 0;
    v11 = [v9 updateNicknameWithRecordID:v10 error:&v24];
    v12 = v24;

    v13 = *(a1 + 96);
    if (v11)
    {
      v22 = *(a1 + 40);
      v14 = [*(a1 + 48) recordID];
      v15 = [v14 recordName];
      v16 = [*(a1 + 56) dataRepresentation];
      v17 = [*(a1 + 64) dataRepresentation];
      v18 = [*(a1 + 72) dataRepresentation];
      v19 = [*(a1 + 80) dataRepresentation];
      v20 = [*(a1 + 88) dataRepresentation];
      (*(v13 + 16))(v13, 1, v22, v15, v16, v17, v18, v19, v20, 0);
    }

    else
    {
      (*(v13 + 16))(v13, 0, 0, 0, 0, 0, 0, 0, 0, v12);
    }
  }

  else
  {
    if (v7)
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254850000, v21, OS_LOG_TYPE_INFO, "Unable to store in Public Database, aborting fan out to other devices", buf, 2u);
      }
    }

    (*(*(a1 + 96) + 16))(*(a1 + 96), 0);
  }
}

void sub_25485F1FC(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v7 = [v5 arrayByApplyingSelector:sel_recordID];
    v8 = [v7 mutableCopy];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = v6;
        _os_log_impl(&dword_254850000, v9, OS_LOG_TYPE_INFO, "Going to delete recordIDs %@, with error", buf, 0xCu);
      }
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_25485F3C0;
    v14[3] = &unk_27978D060;
    v12 = *(a1 + 48);
    v13 = *(a1 + 32);
    v16 = v12;
    v14[4] = v13;
    v15 = v6;
    [v10 _updateEncryptedPersonalNicknameToPublicCloudKitDBSavingRecords:0 deletingRecordIDs:v8 queue:v11 withCompletionBlock:v14];
  }
}

void sub_25485F3C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 48);
  if (v6)
  {
    v8 = v5;
    if (v5)
    {
      v7 = [*(a1 + 32) _errorWrappingError:*(a1 + 40)];
      (*(v6 + 16))(v6, a2, v7);
    }

    else
    {
      (*(v6 + 16))(v6, a2, 0);
    }

    v5 = v8;
  }
}

void sub_25485F67C(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) stopTimingForKey:@"Nickname Delete"];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      [*(a1 + 32) totalTimeForKey:@"Nickname Delete"];
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&dword_254850000, v6, OS_LOG_TYPE_INFO, "Deleted nickname record in time: %f", &v9, 0xCu);
    }
  }

  if (*(a1 + 40))
  {
    [*(a1 + 48) _updateEncryptedPersonalNicknameToPublicCloudKitDBSavingRecords:*(a1 + 56) deletingRecordIDs:0 queue:*(a1 + 64) withCompletionBlock:*(a1 + 72)];
  }

  else
  {
    v8 = *(a1 + 72);
    if (v8)
    {
      (*(v8 + 16))(v8, a2, v5);
    }
  }
}

void sub_25485FA94(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      *buf = 138412546;
      v25 = v5;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_254850000, v4, OS_LOG_TYPE_INFO, "Going to delete nicknames from public db %@ and save nickname to public db %@", buf, 0x16u);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [MEMORY[0x277CBEA60] array];
  }

  v9 = v8;
  v10 = objc_alloc(MEMORY[0x277CBC4A0]);
  if (*(a1 + 40))
  {
    v11 = *(a1 + 40);
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v12 = [v10 initWithRecordsToSave:v11 recordIDsToDelete:v9];
  v13 = [*(a1 + 48) _nickNameSaveConfiguration];
  [v12 setConfiguration:v13];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_25485FCB8;
  v18[3] = &unk_27978D150;
  v19 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v20 = *(a1 + 48);
  v21 = v14;
  v22 = v3;
  v23 = v15;
  v16 = v3;
  [v12 setModifyRecordsCompletionBlock:v18];
  v17 = [*(a1 + 48) _nickNamePublicDB];
  [v17 addOperation:v12];
}

void sub_25485FCB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_254850000, v10, OS_LOG_TYPE_INFO, "Public Nickname with recordID Publish completed with error %@", &buf, 0xCu);
    }
  }

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x2020000000;
    v24 = 0;
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_25485FF50;
    v14[3] = &unk_27978D128;
    p_buf = &buf;
    v17 = *(a1 + 56);
    v15 = *(a1 + 32);
    v18 = *(a1 + 48);
    v16 = v9;
    [v11 _handleSaveNicknameError:v16 queue:v12 withCompletionBlock:v14];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v13 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_25485FF38;
    block[3] = &unk_27978D0D8;
    v21 = *(a1 + 48);
    dispatch_async(v13, block);
  }
}

void sub_25485FF50(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = IMOSLoggingEnabled();
  if (!a2)
  {
    if (v4)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 40);
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&dword_254850000, v10, OS_LOG_TYPE_INFO, "We should not retry the ck operation on this error %@", buf, 0xCu);
      }
    }

    v6 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2548601E0;
    v12[3] = &unk_27978D100;
    v7 = &v14;
    v14 = *(a1 + 56);
    v8 = &v13;
    v13 = *(a1 + 40);
    v9 = v12;
    goto LABEL_13;
  }

  if (v4)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = @"YES";
      _os_log_impl(&dword_254850000, v5, OS_LOG_TYPE_INFO, "We should retry the ck operation %@", buf, 0xCu);
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = (*(*(a1 + 48) + 16))();
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v6 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2548601C8;
    v15[3] = &unk_27978D100;
    v7 = &v17;
    v17 = *(a1 + 56);
    v8 = &v16;
    v16 = *(a1 + 40);
    v9 = v15;
LABEL_13:
    dispatch_async(v6, v9);
  }
}

void sub_2548604B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2548604E0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + 40) + 8) + 24));
}

void sub_254860764(uint64_t a1)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_25486084C;
  v8[3] = &unk_27978D1C8;
  v11 = *(a1 + 64);
  v7 = *(a1 + 32);
  v2 = *(&v7 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v9 = v7;
  v10 = v5;
  v6 = MEMORY[0x259C1C440](v8);
  (*(*(a1 + 56) + 16))();
}

BOOL sub_25486084C(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 > 2)
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_254850000, v2, OS_LOG_TYPE_INFO, "Failed CloudKit operation. Too many retries.", v4, 2u);
      }
    }
  }

  else
  {
    [*(a1 + 32) cloudKitOperationWithRetryCount:v1 + 1 queue:*(a1 + 40) withError:*(a1 + 48) operation:*(a1 + 56)];
  }

  return v1 < 3;
}

uint64_t sub_254861104()
{
  qword_28112D9E0 = objc_alloc_init(IMTransferEncryptionController);

  return MEMORY[0x2821F96F8]();
}

id sub_2548613D8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKey:v8];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v9 fileURL];
      if (v11)
      {
        v10 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v11 options:0 error:a5];

        goto LABEL_16;
      }

      if (!a5)
      {
        goto LABEL_11;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing fileURL for CKAsset {key: %@, value: %@}", v8, v9];
      v13 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA068];
      v25[0] = v12;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      *a5 = [v13 errorWithDomain:*MEMORY[0x277D1A398] code:-1000 userInfo:v14];
    }

    if (a5)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected type for {key: %@, value: %@}", v8, v9];
      v16 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA068];
      v23 = v15;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      *a5 = [v16 errorWithDomain:*MEMORY[0x277D1A398] code:-1000 userInfo:v17];
    }

LABEL_11:
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = v8;
        _os_log_impl(&dword_254850000, v18, OS_LOG_TYPE_INFO, "IMNickname CKRecord contains object for key '%@' but of unexpected type", buf, 0xCu);
      }
    }
  }

  v10 = 0;
LABEL_16:

  return v10;
}

id sub_2548616A0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, __int16 a10, uint64_t a11)
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254850000, v23, OS_LOG_TYPE_INFO, "Decrypting nickname record", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *v29 = 0;
      _os_log_impl(&dword_254850000, v24, OS_LOG_TYPE_INFO, "Handing Nickname data to BlastDoor to defuse", v29, 2u);
    }
  }

  LOWORD(v27) = a10;
  v25 = [a1 _blastdoorNicknameFromPublicRecord:v16 wallpaperRecord:v17 preKey:v18 wallpaperDataTag:v19 wallpaperLowResDataTag:v20 wallpaperMetadataTag:v21 avatarRecipeDataTag:v22 knownSender:v27 shouldDecodeImageFields:a11 error:?];

  return v25;
}

id sub_254861888(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, unsigned __int8 a10, char a11, void *a12)
{
  v102[1] = *MEMORY[0x277D85DE8];
  v18 = a3;
  v75 = a4;
  v76 = a5;
  value = a6;
  v78 = a7;
  v79 = a8;
  v19 = a9;
  v20 = v19;
  if (a12)
  {
    v69 = v19;
    v73 = [a1 dataFromCKRecord:v18 forKey:@"n" error:a12];
    v21 = v75;
    v74 = [a1 dataFromCKRecord:v18 forKey:@"am" error:a12];
    v71 = [a1 dataFromCKRecord:v18 forKey:@"ad" error:a12];
    *&v72[8] = [a1 dataFromCKRecord:v75 forKey:@"wd" error:a12];
    *v72 = [a1 dataFromCKRecord:v75 forKey:@"lrwd" error:a12];
    *&v72[16] = [a1 dataFromCKRecord:v75 forKey:@"wm" error:a12];
    v22 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v23 = [v22 isSwiftUIAvatarRenderingEnabled];

    if (v23)
    {
      v68 = [a1 dataFromCKRecord:v75 forKey:@"ard" error:a12];
    }

    else
    {
      v68 = 0;
    }

    if (!v73)
    {
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_254850000, v27, OS_LOG_TYPE_INFO, "CKRecord is missing required nickname data", &buf, 2u);
        }
      }

      v25 = 0;
      goto LABEL_101;
    }

    v101 = @"n";
    v102[0] = v73;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:&v101 count:1];
    v70 = [v26 mutableCopy];

    if (v74 && v71)
    {
      [v70 setObject:v71 forKeyedSubscript:@"ad"];
      [v70 setObject:v74 forKeyedSubscript:@"am"];
    }

    else if (v74 | v71)
    {
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_254850000, v28, OS_LOG_TYPE_INFO, "CKRecord contains incomplete avatar data", &buf, 2u);
        }

        goto LABEL_98;
      }

LABEL_99:
      v25 = 0;
LABEL_100:

LABEL_101:
      v20 = v69;
      goto LABEL_102;
    }

    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = *&v72[8];
        _os_log_impl(&dword_254850000, v29, OS_LOG_TYPE_INFO, "Wallpaper | encryptedWallpaperData: %@", &buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = *&v72[16];
        _os_log_impl(&dword_254850000, v30, OS_LOG_TYPE_INFO, "Wallpaper | encryptedWallpaperMetadata: %@", &buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = *v72;
        _os_log_impl(&dword_254850000, v31, OS_LOG_TYPE_INFO, "Wallpaper | encryptedLowResWallpaperData: %@", &buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v68;
        _os_log_impl(&dword_254850000, v32, OS_LOG_TYPE_INFO, "Wallpaper | encryptedAvatarRecipeData: %@", &buf, 0xCu);
      }
    }

    v33 = (a11 & ~[MEMORY[0x277D1A9A0] deviceIsLockedDown] & a10);
    if (v33 == 1 && *&v72[16] && *v72 != 0)
    {
      [v70 setObject:*&v72[16] forKeyedSubscript:@"wm"];
      if (*v72)
      {
        [v70 setObject:*v72 forKeyedSubscript:@"lrwd"];
      }

      if (*&v72[8])
      {
        [v70 setObject:*&v72[8] forKeyedSubscript:@"wd"];
      }

      goto LABEL_50;
    }

    if (!v33)
    {
LABEL_55:
      if (a10)
      {
        v66 = 0;
      }

      else
      {
        v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v36 = [v18 recordID];
        v37 = [v36 recordName];

        if (v37)
        {
          CFDictionarySetValue(v35, @"recordId", v37);
        }

        v38 = [v75 recordID];
        v39 = [v38 recordName];

        if (v39)
        {
          CFDictionarySetValue(v35, @"wallpaperRecordId", v39);
        }

        v40 = [v76 dataRepresentation];
        if (v40)
        {
          CFDictionarySetValue(v35, @"preKey", v40);
        }

        if (value)
        {
          CFDictionarySetValue(v35, @"wallpaperDataTag", value);
        }

        if (v79)
        {
          CFDictionarySetValue(v35, @"wallpaperMetadataTag", v79);
        }

        if (v78)
        {
          CFDictionarySetValue(v35, @"wallpaperLowResDataTag", v78);
        }

        v66 = v35;
        if (v69)
        {
          CFDictionarySetValue(v35, @"avatarRecipeDataTag", v69);
        }
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v97 = 0x3032000000;
      v98 = sub_254862518;
      v99 = sub_254862528;
      v100 = 0;
      v88 = 0;
      v89 = &v88;
      v90 = 0x3032000000;
      v91 = sub_254862518;
      v92 = sub_254862528;
      v93 = 0;
      v41 = dispatch_semaphore_create(0);
      v67 = [MEMORY[0x277D1AB80] contextWithKnownSender:a10];
      v65 = MEMORY[0x277D1A8B0];
      v42 = [v18 recordID];
      v43 = [v42 recordName];
      v44 = [v76 dataRepresentation];
      v45 = v33 == 0;
      if (v33)
      {
        v46 = v69;
      }

      else
      {
        v46 = 0;
      }

      if (v33)
      {
        v47 = v79;
      }

      else
      {
        v47 = 0;
      }

      if (v33)
      {
        v48 = v78;
      }

      else
      {
        v48 = 0;
      }

      if (v45)
      {
        v49 = 0;
      }

      else
      {
        v49 = value;
      }

      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = sub_254862530;
      v81[3] = &unk_27978D2A8;
      p_buf = &buf;
      v50 = v41;
      v82 = v50;
      v87 = a1;
      v83 = v18;
      v86 = &v88;
      v51 = v66;
      v84 = v51;
      LOBYTE(v64) = a11;
      v63 = v46;
      v21 = v75;
      [v65 generateNickname:v70 senderContext:v67 forRecordID:v43 wallpaperDataTag:v49 wallpaperLowResDataTag:v48 wallpaperMetadataTag:v47 avatarRecipeDataTag:v63 withKey:v44 processImageFields:v64 completionBlock:v81];

      v52 = dispatch_time(0, 10000000000);
      if (dispatch_semaphore_wait(v50, v52))
      {
        if (IMOSLoggingEnabled())
        {
          v53 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            *v80 = 0;
            _os_log_impl(&dword_254850000, v53, OS_LOG_TYPE_INFO, "Timed out while waiting for Nickname BlastDoor and/or content analysis.", v80, 2u);
          }
        }

        v54 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D1A398] code:-3000 userInfo:0];
        v55 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v54;
      }

      v25 = v89[5];
      if (v25)
      {
        v56 = v25;
      }

      else
      {
        v57 = *(*(&buf + 1) + 40);
        if (!v57)
        {
          v58 = MEMORY[0x277CCA9B8];
          v94 = *MEMORY[0x277CCA068];
          v95 = @"Neither error nor result from blastdoor completion handler";
          v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
          v60 = [v58 errorWithDomain:*MEMORY[0x277D1A398] code:-1000 userInfo:v59];
          v61 = *(*(&buf + 1) + 40);
          *(*(&buf + 1) + 40) = v60;

          v57 = *(*(&buf + 1) + 40);
        }

        *a12 = v57;
      }

      _Block_object_dispose(&v88, 8);
      _Block_object_dispose(&buf, 8);

      goto LABEL_100;
    }

    if (*&v72[8] == 0 && !*v72)
    {
LABEL_50:
      if (v68)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      if (v34 == 1)
      {
        [v70 setObject:v68 forKeyedSubscript:@"ard"];
      }

      goto LABEL_55;
    }

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_254850000, v28, OS_LOG_TYPE_INFO, "CKRecord contains incomplete wallpaper data for nickname", &buf, 2u);
      }

LABEL_98:

      goto LABEL_99;
    }

    goto LABEL_99;
  }

  v21 = v75;
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_254850000, v24, OS_LOG_TYPE_INFO, "No error pointer provided, please fix", &buf, 2u);
    }
  }

  v25 = 0;
LABEL_102:

  return v25;
}

void sub_2548623D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x254862318);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_254862518(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_254862530(uint64_t a1, void *a2, void *a3)
{
  v255 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v191 = a3;
  v192 = v5;
  if (v5)
  {
    group = dispatch_group_create();
    v6 = [MEMORY[0x277D1A958] sharedManager];
    v187 = [v6 enablementGroup];

    v7 = [MEMORY[0x277D1A958] sharedManager];
    v185 = [v7 checksForSensitivityOnNicknameReceive];

    v8 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v9 = [v8 isAllowU18SnapAssetsEnabled];

    v184 = (v187 == 1) & ~v9;
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        *&buf[4] = v187;
        *&buf[12] = 1024;
        *&buf[14] = (v187 == 1) & ~v9;
        _os_log_impl(&dword_254850000, v10, OS_LOG_TYPE_INFO, "About to construct the nickname with contentSafetyEnablementGroup: %ld, deleting sensitive assets: %d", buf, 0x12u);
      }
    }

    MEMORY[0x259C1C010](@"BlastDoorNickname", @"BlastDoor");
    isKindOfClass = objc_opt_isKindOfClass();
    v12 = v192;
    if ((isKindOfClass & 1) == 0)
    {
      v12 = 0;
    }

    v13 = v12;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v252 = sub_254862518;
    v253 = sub_254862528;
    v254 = 0;
    v14 = [v13 avatar];
    v15 = v14 == 0;

    if (!v15)
    {
      v16 = [v13 avatar];
      v17 = [v16 image];
      [v17 cgImage];
      v18 = IMCreatePNGImageDataFromCGImageRef();

      v237 = 0;
      v238 = &v237;
      v239 = 0x3032000000;
      v240 = sub_254862518;
      v241 = sub_254862528;
      v19 = *(a1 + 72);
      v20 = [*(a1 + 40) recordID];
      v21 = [v20 recordName];
      v22 = *(*(a1 + 56) + 8);
      obj = *(v22 + 40);
      v23 = [v19 _assetTargetURLForRecordName:v21 fieldName:@"ad" error:&obj];
      objc_storeStrong((v22 + 40), obj);
      v242 = v23;

      v24 = v238[5];
      v25 = *(*(a1 + 56) + 8);
      v235 = *(v25 + 40);
      v26 = [v18 writeToURL:v24 options:1 error:&v235];
      objc_storeStrong((v25 + 40), v235);
      if (v26)
      {
        if (v185)
        {
          dispatch_group_enter(group);
          v27 = [MEMORY[0x277D1A950] sharedManager];
          v28 = v238[5];
          v227[0] = MEMORY[0x277D85DD0];
          v227[1] = 3221225472;
          v227[2] = sub_254863B20;
          v227[3] = &unk_27978D230;
          v234 = v184;
          v29 = *(a1 + 72);
          v30 = *(a1 + 56);
          v230 = &v237;
          v231 = v30;
          v233 = v29;
          v232 = buf;
          v228 = v13;
          v229 = group;
          [v27 isSensitiveContent:v28 contentAttachmentType:0 withChatID:0 completionHandler:v227];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v31 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              LODWORD(v245) = 134217984;
              *(&v245 + 4) = v187;
              _os_log_impl(&dword_254850000, v31, OS_LOG_TYPE_INFO, "Avatar image safety check was skipped, comm safety check group setting: %ld. Creating IMNicknameAvatarImage.", &v245, 0xCu);
            }
          }

          v32 = objc_alloc(MEMORY[0x277D1AAE0]);
          v33 = [v13 avatar];
          v34 = [v33 imageName];
          v35 = [v238[5] path];
          v36 = [v32 initWithImageName:v34 imageFilePath:v35 contentIsSensitive:0];
          v37 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v36;
        }
      }

      else
      {
        dispatch_semaphore_signal(*(a1 + 32));
      }

      _Block_object_dispose(&v237, 8);

      if ((v26 & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v13 pronouns], (v38 = objc_claimAutoreleasedReturnValue()) != 0) && (v39 = *(a1 + 72), objc_msgSend(v13, "pronouns"), v40 = objc_claimAutoreleasedReturnValue(), LODWORD(v39) = objc_msgSend(v39, "_isObjectBlastDoorMorphology:", v40), v40, v38, v39))
    {
      v188 = [v13 pronouns];
      v186 = objc_opt_new();
      v41 = [v188 grammaticalGender];
      if (v41 <= 2)
      {
        [v186 setGender:v41 + 1];
      }

      v42 = [v188 number];
      if (v42 <= 5)
      {
        [v186 setNumber:qword_2548694A8[v42]];
      }

      v43 = [v188 customPronouns];
      if ([v43 count] && objc_msgSend(*(a1 + 72), "_NSMorphologyCustomPronounClass"))
      {
        v225 = 0u;
        v226 = 0u;
        v223 = 0u;
        v224 = 0u;
        v182 = v43;
        v44 = v43;
        v45 = [v44 countByEnumeratingWithState:&v223 objects:v250 count:16];
        if (v45)
        {
          v46 = *v224;
          while (2)
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v224 != v46)
              {
                objc_enumerationMutation(v44);
              }

              v48 = *(*(&v223 + 1) + 8 * i);
              if ([*(a1 + 72) _isObjectBlastDoorCustomPronounPair:v48])
              {
                v49 = v48;
                v50 = [*(a1 + 72) _languageStringForEnumCase:{objc_msgSend(v49, "language")}];
                v51 = [v50 isEqual:@"en"];

                if (v51)
                {
                  v150 = objc_alloc_init([*(a1 + 72) _NSMorphologyCustomPronounClass]);
                  v151 = [v49 pronoun];
                  v152 = [v151 subjectForm];
                  [v150 setSubjectForm:v152];

                  v153 = [v49 pronoun];
                  v154 = [v153 objectForm];
                  [v150 setObjectForm:v154];

                  v155 = [v49 pronoun];
                  v156 = [v155 possessiveForm];
                  [v150 setPossessiveForm:v156];

                  v157 = [v49 pronoun];
                  v158 = [v157 possessiveAdjectiveForm];
                  [v150 setPossessiveAdjectiveForm:v158];

                  v159 = [v49 pronoun];
                  v160 = [v159 reflexiveForm];
                  [v150 setReflexiveForm:v160];

                  [v186 setEnglishCustomPronoun:v150];
                  goto LABEL_80;
                }
              }
            }

            v45 = [v44 countByEnumeratingWithState:&v223 objects:v250 count:16];
            if (v45)
            {
              continue;
            }

            break;
          }
        }

LABEL_80:

        v43 = v182;
      }
    }

    else
    {
      v186 = 0;
    }

    v237 = 0;
    v238 = &v237;
    v239 = 0x3032000000;
    v240 = sub_254862518;
    v241 = sub_254862528;
    v242 = 0;
    v52 = [v13 wallpaper];
    v53 = v52 == 0;

    if (!v53)
    {
      v54 = [v13 wallpaper];
      v189 = [v54 posterArchive];

      v55 = [v13 wallpaper];
      v56 = [v55 lowResImage];
      v57 = [v56 image];
      [v57 cgImage];
      v183 = IMCreatePNGImageDataFromCGImageRef();

      *&v245 = 0;
      *(&v245 + 1) = &v245;
      v246 = 0x3032000000;
      v247 = sub_254862518;
      v248 = sub_254862528;
      v58 = *(a1 + 72);
      v59 = [*(a1 + 40) recordID];
      v60 = [v59 recordName];
      v61 = *(*(a1 + 56) + 8);
      v222 = *(v61 + 40);
      v62 = [v58 _assetTargetURLForRecordName:v60 fieldName:@"wd" error:&v222];
      objc_storeStrong((v61 + 40), v222);
      v249 = v62;

      v216 = 0;
      v217 = &v216;
      v218 = 0x3032000000;
      v219 = sub_254862518;
      v220 = sub_254862528;
      v63 = *(a1 + 72);
      v64 = [*(a1 + 40) recordID];
      v65 = [v64 recordName];
      v66 = *(*(a1 + 56) + 8);
      v215 = *(v66 + 40);
      v67 = [v63 _assetTargetURLForRecordName:v65 fieldName:@"lrwd" error:&v215];
      objc_storeStrong((v66 + 40), v215);
      v221 = v67;

      if (v189 && (v68 = *(*(&v245 + 1) + 40), v69 = *(*(a1 + 56) + 8), v214 = *(v69 + 40), v70 = [v189 writeToURL:v68 options:1 error:&v214], objc_storeStrong((v69 + 40), v214), (v70 & 1) == 0) || v183 && (v71 = v217[5], v72 = *(*(a1 + 56) + 8), v213 = *(v72 + 40), v73 = objc_msgSend(v183, "writeToURL:options:error:", v71, 1, &v213), objc_storeStrong((v72 + 40), v213), !v73))
      {
        dispatch_semaphore_signal(*(a1 + 32));
        _Block_object_dispose(&v216, 8);

        _Block_object_dispose(&v245, 8);
        v93 = v183;
LABEL_76:

        _Block_object_dispose(&v237, 8);
LABEL_77:
        _Block_object_dispose(buf, 8);

        goto LABEL_78;
      }

      if (IMOSLoggingEnabled())
      {
        v74 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          *v243 = 67109376;
          *v244 = v189 != 0;
          *&v244[4] = 1024;
          *&v244[6] = v183 != 0;
          _os_log_impl(&dword_254850000, v74, OS_LOG_TYPE_INFO, "Completed wallpaper has wallpaperData: %i lowResData: %i", v243, 0xEu);
        }
      }

      v75 = [v13 wallpaper];
      v76 = [v75 metadata];
      v77 = [v76 backgroundColor];

      if (v77)
      {
        v168 = objc_alloc(MEMORY[0x277D1ACE8]);
        v179 = [v13 wallpaper];
        v176 = [v179 metadata];
        v173 = [v176 backgroundColor];
        [v173 red];
        v79 = v78;
        v170 = [v13 wallpaper];
        v80 = [v170 metadata];
        v81 = [v80 backgroundColor];
        [v81 green];
        v83 = v82;
        v84 = [v13 wallpaper];
        v85 = [v84 metadata];
        v86 = [v85 backgroundColor];
        [v86 blue];
        v88 = v87;
        v89 = [v13 wallpaper];
        v90 = [v89 metadata];
        v91 = [v90 backgroundColor];
        [v91 alpha];
        v169 = [v168 initWithRed:v79 green:v83 blue:v88 alpha:v92];
      }

      else
      {
        v169 = 0;
      }

      v166 = objc_alloc(MEMORY[0x277D1ACE8]);
      v180 = [v13 wallpaper];
      v177 = [v180 metadata];
      v174 = [v177 fontColor];
      [v174 red];
      v95 = v94;
      v171 = [v13 wallpaper];
      v96 = [v171 metadata];
      v97 = [v96 fontColor];
      [v97 green];
      v99 = v98;
      v100 = [v13 wallpaper];
      v101 = [v100 metadata];
      v102 = [v101 fontColor];
      [v102 blue];
      v104 = v103;
      v105 = [v13 wallpaper];
      v106 = [v105 metadata];
      v107 = [v106 fontColor];
      [v107 alpha];
      v164 = [v166 initWithRed:v95 green:v99 blue:v104 alpha:v108];

      v161 = objc_alloc(MEMORY[0x277D1ACE0]);
      v181 = [v13 wallpaper];
      v178 = [v181 metadata];
      v163 = [v178 fontName];
      v175 = [v13 wallpaper];
      v172 = [v175 metadata];
      [v172 fontSize];
      v110 = v109;
      v167 = [v13 wallpaper];
      v165 = [v167 metadata];
      [v165 fontWeight];
      v112 = v111;
      v113 = [v164 dictionaryRepresentation];
      v114 = [v13 wallpaper];
      v115 = [v114 metadata];
      v116 = [v115 isVertical];
      v117 = MEMORY[0x277D1ACE0];
      v118 = [v13 wallpaper];
      v119 = [v118 metadata];
      v120 = [v117 wallpaperExtensionIdentifierFromType:{objc_msgSend(v119, "type")}];
      v121 = [v169 dictionaryRepresentation];
      v162 = [v161 initWithFontName:v163 fontSize:v113 fontWeight:v116 fontColor:v120 isVertical:v121 type:v110 backgroundColor:v112];

      if (v185)
      {
        if (*(*(&v245 + 1) + 40))
        {
          v122 = [MEMORY[0x277D1A960] posterImageURLForPosterConfigurationAtURL:?];
        }

        else
        {
          v122 = v217[5];
        }

        v125 = v122;
        if (v122)
        {
          dispatch_group_enter(group);
          v133 = [MEMORY[0x277D1A950] sharedManager];
          v203[0] = MEMORY[0x277D85DD0];
          v203[1] = 3221225472;
          v203[2] = sub_254863D28;
          v203[3] = &unk_27978D258;
          v212 = v184;
          v134 = *(a1 + 72);
          v135 = *(a1 + 56);
          v207 = &v245;
          v208 = v135;
          v209 = &v216;
          v210 = &v237;
          v211 = v134;
          v204 = v13;
          v205 = v162;
          v206 = group;
          [v133 isSensitiveContent:v125 contentAttachmentType:0 withChatID:0 completionHandler:v203];

          v126 = v204;
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v136 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
            {
              *v243 = 0;
              _os_log_impl(&dword_254850000, v136, OS_LOG_TYPE_INFO, "Skipped wallpaper safety check because we couldn't find a wallpaper image URL.", v243, 2u);
            }
          }

          v137 = objc_alloc(MEMORY[0x277D1ACD8]);
          v126 = [v13 wallpaper];
          v138 = [v126 highResFileName];
          v139 = [*(*(&v245 + 1) + 40) path];
          v140 = [v13 wallpaper];
          v141 = [v140 lowResFileName];
          v142 = [v217[5] path];
          v143 = [v137 initWithFileName:v138 filePath:v139 lowResFileName:v141 lowResFilePath:v142 metadata:v162 contentIsSensitive:0];
          v144 = v238[5];
          v238[5] = v143;
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v123 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
          {
            *v243 = 134217984;
            *v244 = v187;
            _os_log_impl(&dword_254850000, v123, OS_LOG_TYPE_INFO, "Wallpaper safety check was skipped, comm safety check group setting: %ld. Creating IMWallpaper.", v243, 0xCu);
          }
        }

        v124 = objc_alloc(MEMORY[0x277D1ACD8]);
        v125 = [v13 wallpaper];
        v126 = [v125 highResFileName];
        v127 = [*(*(&v245 + 1) + 40) path];
        v128 = [v13 wallpaper];
        v129 = [v128 lowResFileName];
        v130 = [v217[5] path];
        v131 = [v124 initWithFileName:v126 filePath:v127 lowResFileName:v129 lowResFilePath:v130 metadata:v162 contentIsSensitive:0];
        v132 = v238[5];
        v238[5] = v131;
      }

      _Block_object_dispose(&v216, 8);
      _Block_object_dispose(&v245, 8);
    }

    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v13 avatarRecipe], v145 = objc_claimAutoreleasedReturnValue(), v146 = v145 == 0, v145, v146))
    {
      v149 = 0;
    }

    else
    {
      v147 = objc_alloc(MEMORY[0x277D1AAE8]);
      v148 = [v13 avatarRecipe];
      v149 = [v147 initWithData:v148];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_254863FB4;
    block[3] = &unk_27978D280;
    v200 = *(a1 + 64);
    v194 = v13;
    v201 = buf;
    v202 = &v237;
    v195 = v186;
    v196 = v149;
    v197 = *(a1 + 40);
    v198 = *(a1 + 48);
    v199 = *(a1 + 32);
    v189 = v149;
    dispatch_group_notify(group, MEMORY[0x277D85CD0], block);

    v93 = v194;
    goto LABEL_76;
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  dispatch_semaphore_signal(*(a1 + 32));
LABEL_78:
}

void sub_254863B20(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v5 localizedDescription];
      v8 = v7;
      v9 = @"No error";
      if (v7)
      {
        v9 = v7;
      }

      *buf = 67109378;
      v24 = a2;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_254850000, v6, OS_LOG_TYPE_INFO, "Avatar image was checked for sensitive content. Is sensitive: %d, error: %@", buf, 0x12u);
    }
  }

  if (a2 && *(a1 + 80) == 1)
  {
    v10 = *(a1 + 72);
    v11 = *(*(*(a1 + 48) + 8) + 40);
    v12 = *(*(a1 + 56) + 8);
    obj = *(v12 + 40);
    [v10 _removeFile:v11 error:&obj];
    objc_storeStrong((v12 + 40), obj);
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;
  }

  v15 = objc_alloc(MEMORY[0x277D1AAE0]);
  v16 = [*(a1 + 32) avatar];
  v17 = [v16 imageName];
  v18 = [*(*(*(a1 + 48) + 8) + 40) path];
  v19 = [v15 initWithImageName:v17 imageFilePath:v18 contentIsSensitive:a2];
  v20 = *(*(a1 + 64) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  dispatch_group_leave(*(a1 + 40));
}

void sub_254863D28(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v30 = a2;
      v31 = 2112;
      v32 = v5;
      _os_log_impl(&dword_254850000, v6, OS_LOG_TYPE_INFO, "Wallpaper image was checked for sensitive content. Is sensitive: %d, error: %@", buf, 0x12u);
    }
  }

  if (a2 && *(a1 + 96) == 1)
  {
    v7 = *(a1 + 88);
    v8 = *(*(*(a1 + 56) + 8) + 40);
    v9 = *(*(a1 + 64) + 8);
    obj = *(v9 + 40);
    [v7 _removeFile:v8 error:&obj];
    objc_storeStrong((v9 + 40), obj);
    v10 = *(a1 + 88);
    v11 = *(*(*(a1 + 72) + 8) + 40);
    v12 = *(*(a1 + 64) + 8);
    v27 = *(v12 + 40);
    [v10 _removeFile:v11 error:&v27];
    objc_storeStrong((v12 + 40), v27);
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;

    v15 = *(*(a1 + 72) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = 0;
  }

  v17 = objc_alloc(MEMORY[0x277D1ACD8]);
  v18 = [*(a1 + 32) wallpaper];
  v19 = [v18 highResFileName];
  v20 = [*(*(*(a1 + 56) + 8) + 40) path];
  v21 = [*(a1 + 32) wallpaper];
  v22 = [v21 lowResFileName];
  v23 = [*(*(*(a1 + 72) + 8) + 40) path];
  v24 = [v17 initWithFileName:v19 filePath:v20 lowResFileName:v22 lowResFilePath:v23 metadata:*(a1 + 40) contentIsSensitive:a2];
  v25 = *(*(a1 + 80) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v24;

  dispatch_group_leave(*(a1 + 48));
}

intptr_t sub_254863FB4(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D1AAD0]);
  v3 = [*(a1 + 32) firstName];
  v4 = [*(a1 + 32) lastName];
  v5 = [v2 initWithFirstName:v3 lastName:v4 avatar:*(*(*(a1 + 88) + 8) + 40) pronouns:*(a1 + 40) wallpaper:*(*(*(a1 + 96) + 8) + 40) avatarRecipe:*(a1 + 48)];
  v6 = *(*(a1 + 80) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 80) + 8) + 40);
  v9 = [*(a1 + 56) recordID];
  v10 = [v9 recordName];
  [v8 setRecordID:v10];

  [*(*(*(a1 + 80) + 8) + 40) setPreBlastDoorPayloadData:*(a1 + 64)];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [*(*(*(a1 + 80) + 8) + 40) avatar];
      v13 = [v12 hasImage];
      v14 = [*(*(*(a1 + 80) + 8) + 40) wallpaper];
      v15 = [v14 wallpaperExists];
      v16 = [*(*(*(a1 + 80) + 8) + 40) wallpaper];
      v17 = [v16 lowResWallpaperExists];
      v18 = [*(*(*(a1 + 80) + 8) + 40) avatarRecipe];
      v19 = *(*(*(a1 + 80) + 8) + 40);
      v21[0] = 67110146;
      v21[1] = v13;
      v22 = 1024;
      v23 = v15;
      v24 = 1024;
      v25 = v17;
      v26 = 1024;
      v27 = v18 != 0;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&dword_254850000, v11, OS_LOG_TYPE_INFO, "Completed nickname parsing (hasImage: %i, hasWallpaper: %i, hasLowResWallpaper: %i, hasAvatarRecipe: %i) from public record: %@", v21, 0x24u);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 72));
}

id sub_25486423C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void **a8)
{
  v103[1] = *MEMORY[0x277D85DE8];
  v86 = a3;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v97 = a1;
      v98 = 2112;
      v99 = v86;
      _os_log_impl(&dword_254850000, v11, OS_LOG_TYPE_INFO, "Creating record from nickname {nickname: %@, preKey: %@}", buf, 0x16u);
    }
  }

  v12 = [a1 publicDictionaryRepresentationWithoutAvatar];
  v13 = JWEncodeDictionary();

  if (v13)
  {
    v14 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v13, @"n", 0}];
    v15 = [a1 avatar];
    v16 = [v15 publicDictionaryMetadataRepresentation];
    v84 = JWEncodeDictionary();

    v17 = [a1 avatar];
    v83 = [v17 imageData];

    if (v83)
    {
      v18 = v84 == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = !v18;
    v20 = IMOSLoggingEnabled();
    if (v19)
    {
      if (v20)
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254850000, v21, OS_LOG_TYPE_INFO, "Nickname has avatar data", buf, 2u);
        }
      }

      [v14 setObject:v84 forKey:@"am"];
      [v14 setObject:v83 forKey:@"ad"];
    }

    else if (v20)
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v97 = a1;
        _os_log_impl(&dword_254850000, v25, OS_LOG_TYPE_INFO, "Nickname doesn't have avatar data {nickname: %@}", buf, 0xCu);
      }
    }

    v87 = 0;
    v85 = [MEMORY[0x277D1AAF0] encryptAndTagPlainFields:v14 withPreKey:v86 returningRecordTag:&v87 error:a8];
    v26 = v87;
    v82 = v26;
    if (v85 && v26)
    {
      v81 = [MEMORY[0x277CBEB38] dictionary];
      v27 = [a1 wallpaper];
      v28 = [v27 wallpaperExists];

      if (v28)
      {
        v29 = objc_alloc(MEMORY[0x277D1AAF8]);
        v30 = [a1 wallpaper];
        v31 = [v30 wallpaperData];
        v32 = [v29 initWithFieldName:@"wd" plainData:v31];

        v33 = [MEMORY[0x277D1AAF0] encryptAndTagPlainField:v32 withPreKey:v86 returningFieldTag:a4 error:a8];
        v34 = [v33 fieldName];
        v94 = v34;
        v35 = [v33 dataRepresentationWithError:a8];
        v95 = v35;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        [v81 addEntriesFromDictionary:v36];
      }

      v37 = [a1 wallpaper];
      v38 = [v37 lowResWallpaperExists];

      if (v38)
      {
        v39 = objc_alloc(MEMORY[0x277D1AAF8]);
        v40 = [a1 wallpaper];
        v41 = [v40 lowResWallpaperData];
        v42 = [v39 initWithFieldName:@"lrwd" plainData:v41];

        v43 = [MEMORY[0x277D1AAF0] encryptAndTagPlainField:v42 withPreKey:v86 returningFieldTag:a5 error:a8];
        v44 = [v43 fieldName];
        v92 = v44;
        v45 = [v43 dataRepresentationWithError:a8];
        v93 = v45;
        v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
        [v81 addEntriesFromDictionary:v46];
      }

      v47 = [a1 wallpaper];
      v48 = [v47 metadata];

      if (v48)
      {
        v49 = [a1 wallpaper];
        v50 = [v49 publicDictionaryRepresentation];
        v51 = JWEncodeDictionary();

        v52 = [objc_alloc(MEMORY[0x277D1AAF8]) initWithFieldName:@"wm" plainData:v51];
        v53 = [MEMORY[0x277D1AAF0] encryptAndTagPlainField:v52 withPreKey:v86 returningFieldTag:a6 error:a8];
        v54 = [v53 fieldName];
        v90 = v54;
        v55 = [v53 dataRepresentationWithError:a8];
        v91 = v55;
        v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        [v81 addEntriesFromDictionary:v56];
      }

      v57 = [a1 avatarRecipe];

      if (v57)
      {
        v58 = objc_alloc(MEMORY[0x277D1AAF8]);
        v59 = [a1 avatarRecipe];
        v60 = [v59 recipeData];
        v61 = [v58 initWithFieldName:@"ard" plainData:v60];

        v62 = [MEMORY[0x277D1AAF0] encryptAndTagPlainField:v61 withPreKey:v86 returningFieldTag:a7 error:a8];
        v63 = [v62 fieldName];
        v88 = v63;
        v64 = [v62 dataRepresentationWithError:a8];
        v89 = v64;
        v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
        [v81 addEntriesFromDictionary:v65];
      }

      v66 = [MEMORY[0x277CBEB98] setWithObjects:{@"ad", 0}];
      v67 = [v82 stringRepresentation];
      v68 = [a1 _CKRecordFromDictionary:v85 recordName:v67 assetFieldNames:v66 error:a8];

      if (v68)
      {
        v69 = [v68 recordID];
        v70 = [v69 recordName];
        v71 = [v70 stringByAppendingString:@"-wp"];

        v72 = [a1 _wallpaperRecordFromDictionary:v81 owningRecord:v68 recordName:v71 error:a8];
        v24 = [MEMORY[0x277CBEB38] dictionary];
        [v24 setObject:v68 forKeyedSubscript:@"profileRecord"];
        [v24 setObject:v72 forKeyedSubscript:@"wallpaperRecord"];
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v75 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
          {
            if (a8)
            {
              v76 = *a8;
            }

            else
            {
              v76 = 0;
            }

            *buf = 138412802;
            v97 = v76;
            v98 = 2112;
            v99 = v85;
            v100 = 2112;
            v101 = a1;
            _os_log_impl(&dword_254850000, v75, OS_LOG_TYPE_INFO, "Failed to create record from cipherFields {error: %@, cipherFields: %@, nickname: %@}", buf, 0x20u);
          }
        }

        v24 = 0;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v73 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          if (a8)
          {
            v74 = *a8;
          }

          else
          {
            v74 = 0;
          }

          *buf = 138412802;
          v97 = v74;
          v98 = 2112;
          v99 = a1;
          v100 = 2112;
          v101 = v86;
          _os_log_impl(&dword_254850000, v73, OS_LOG_TYPE_INFO, "Failed to encrypt nickname {error: %@, nickname: %@, preKey: %@}", buf, 0x20u);
        }
      }

      v24 = 0;
    }

    goto LABEL_58;
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v97 = a1;
      _os_log_impl(&dword_254850000, v22, OS_LOG_TYPE_INFO, "Failed to create nicknameData -- Failed to create nickname public record {nickname: %@}", buf, 0xCu);
    }
  }

  if (a8)
  {
    v23 = MEMORY[0x277CCA9B8];
    v102 = *MEMORY[0x277CCA068];
    v103[0] = @"Missing nickname";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:&v102 count:1];
    [v23 errorWithDomain:*MEMORY[0x277D1A398] code:-1000 userInfo:v14];
    *a8 = v24 = 0;
LABEL_58:

    goto LABEL_59;
  }

  v24 = 0;
LABEL_59:

  return v24;
}

uint64_t sub_254864CB8(void *a1, uint64_t a2, void *a3, void **a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v6 = [a1 avatar];
  v7 = [v6 imageFilePath];

  if (v7)
  {
    v8 = MEMORY[0x277D1AAD0];
    v9 = [v45 recordName];
    v10 = [v8 _assetTargetURLForRecordName:v9 fieldName:@"ad" error:a4];

    if (!v10)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          if (a4)
          {
            v19 = *a4;
          }

          else
          {
            v19 = 0;
          }

          *buf = 138412546;
          v47 = v19;
          v48 = 2112;
          v49 = v45;
          _os_log_impl(&dword_254850000, v18, OS_LOG_TYPE_INFO, "Failed to get target url for avatar image while updating nickname {error: %@, recordID: %@}", buf, 0x16u);
        }
      }

      goto LABEL_45;
    }

    v11 = [a1 avatar];
    v12 = [v11 imageName];
    v13 = [v11 imageFilePath];
    v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v13];
    v15 = [a1 _moveFile:v14 newURL:v10 error:a4];
    if (v15)
    {
      v16 = [v10 path];
      v17 = [objc_alloc(MEMORY[0x277D1AAE0]) initWithImageName:v12 imageFilePath:v16 contentIsSensitive:{objc_msgSend(v11, "contentIsSensitive")}];
      [a1 setAvatar:v17];
    }

    else if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v47 = v14;
        v48 = 2112;
        v49 = v10;
        v50 = 2112;
        v51 = v45;
        _os_log_impl(&dword_254850000, v20, OS_LOG_TYPE_INFO, "Failed to move image from %@ to %@ for recordID: %@", buf, 0x20u);
      }
    }

    if (!v15)
    {
LABEL_45:
      v41 = 0;
      goto LABEL_46;
    }
  }

  v21 = [a1 wallpaper];

  if (v21)
  {
    v22 = MEMORY[0x277D1AAD0];
    v23 = [v45 recordName];
    v24 = [v22 _assetTargetURLForRecordName:v23 fieldName:@"wd" error:a4];

    v25 = MEMORY[0x277D1AAD0];
    v26 = [v45 recordName];
    v27 = [v25 _assetTargetURLForRecordName:v26 fieldName:@"lrwd" error:a4];

    if (!v24 || !v27)
    {
      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          if (a4)
          {
            v34 = *a4;
          }

          else
          {
            v34 = 0;
          }

          *buf = 138412546;
          v47 = v34;
          v48 = 2112;
          v49 = v45;
          _os_log_impl(&dword_254850000, v33, OS_LOG_TYPE_INFO, "Failed to get target url for wallpaper while updating nickname {error: %@, recordID: %@}", buf, 0x16u);
        }
      }

      goto LABEL_45;
    }

    v28 = [a1 wallpaper];
    v44 = [v28 fileName];
    v29 = [v28 filePath];
    v43 = [v28 lowResFileName];
    v30 = [v28 lowResFilePath];
    if (v29)
    {
      v31 = [MEMORY[0x277CBEBC0] fileURLWithPath:v29];
      if (([a1 _moveFile:v31 newURL:v24 error:a4] & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v47 = v31;
            v48 = 2112;
            v49 = v24;
            v50 = 2112;
            v51 = v45;
            _os_log_impl(&dword_254850000, v32, OS_LOG_TYPE_INFO, "Failed to move wallpaper from %@ to %@ for recordID: %@", buf, 0x20u);
          }

LABEL_33:

          goto LABEL_34;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v31 = v24;
      v24 = 0;
    }

    if (v30)
    {
      v31 = [MEMORY[0x277CBEBC0] fileURLWithPath:v30];
      if (([a1 _moveFile:v31 newURL:v27 error:a4] & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v47 = v31;
            v48 = 2112;
            v49 = v27;
            v50 = 2112;
            v51 = v45;
            _os_log_impl(&dword_254850000, v32, OS_LOG_TYPE_INFO, "Failed to move low res wallpaper from %@ to %@ for recordID: %@", buf, 0x20u);
          }

          goto LABEL_33;
        }

LABEL_34:

        goto LABEL_45;
      }
    }

    else
    {
      v31 = v27;
      v27 = 0;
    }

    v35 = [v24 path];
    v36 = [v27 path];
    v37 = objc_alloc(MEMORY[0x277D1ACD8]);
    v38 = [v28 metadata];
    v39 = [v37 initWithFileName:v44 filePath:v35 lowResFileName:v43 lowResFilePath:v36 metadata:v38 contentIsSensitive:{objc_msgSend(v28, "contentIsSensitive")}];
    [a1 setWallpaper:v39];
  }

  v40 = [v45 recordName];
  [a1 setRecordID:v40];

  v41 = 1;
LABEL_46:

  return v41;
}

uint64_t sub_2548653AC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v10 = [v8 path];
  v11 = [v9 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = [v8 path];
    [v9 removeItemAtPath:v12 error:a5];
  }

  v13 = [v9 moveItemAtURL:v7 toURL:v8 error:a5];
  if ((v13 & 1) == 0 && IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *a5;
      v17 = 138412802;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_254850000, v14, OS_LOG_TYPE_INFO, "Failed to move item %@ to %@ with error %@", &v17, 0x20u);
    }
  }

  return v13;
}

uint64_t sub_25486553C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v9 = [v5 path];
    v10 = [v6 removeItemAtPath:v9 error:a4];

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *a4;
        v15 = 138412802;
        v16 = v5;
        v17 = 1024;
        v18 = v10;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_254850000, v11, OS_LOG_TYPE_INFO, "Attempted to remove item at path: %@, did succeed: %d, error: %@", &v15, 0x1Cu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v5;
        _os_log_impl(&dword_254850000, v13, OS_LOG_TYPE_INFO, "File %@ does not exist, can't remove.", &v15, 0xCu);
      }
    }

    v10 = 0;
  }

  return v10;
}

id sub_254865724(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void **a6)
{
  v53 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v40 = a5;
  v11 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"imsgNicknamePublicv2"];
  v38 = v10;
  v37 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v10];
  [v11 setRecordID:?];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = v9;
  obj = [v9 allKeys];
  v12 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v12)
  {
    v13 = *v43;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v42 + 1) + 8 * i);
        v16 = [v41 objectForKey:v15];
        if ([v40 containsObject:v15])
        {
          v17 = [objc_opt_class() _assetTargetURLForRecordName:v38 fieldName:v15 error:a6];
          v18 = IMOSLoggingEnabled();
          if (!v17)
          {
            if (v18)
            {
              v29 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                if (a6)
                {
                  v30 = *a6;
                }

                else
                {
                  v30 = 0;
                }

                *buf = 138412802;
                v47 = v30;
                v48 = 2112;
                v49 = v38;
                v50 = 2112;
                v51 = v15;
                _os_log_impl(&dword_254850000, v29, OS_LOG_TYPE_INFO, "Failed to create target URL for nickname asset {error: %@, recordName: %@, fieldName: %@}", buf, 0x20u);
              }
            }

            goto LABEL_44;
          }

          if (v18)
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v47 = v17;
              _os_log_impl(&dword_254850000, v19, OS_LOG_TYPE_INFO, "Writing nickname asset {targetURL: %@}", buf, 0xCu);
            }
          }

          if ([v15 isEqualToString:@"ad"])
          {
            v20 = objc_alloc(MEMORY[0x277D1AAE0]);
            v21 = [v17 path];
            v22 = [v20 initWithImageName:0 imageData:v16 imageFilePath:v21 contentIsSensitive:0 error:a6];

            if (!v22 || *a6)
            {
              if (IMOSLoggingEnabled())
              {
                v31 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                {
                  if (a6)
                  {
                    v32 = *a6;
                  }

                  else
                  {
                    v32 = 0;
                  }

                  v33 = [v16 length];
                  *buf = 138412802;
                  v47 = v32;
                  v48 = 2112;
                  v49 = v17;
                  v50 = 2048;
                  v51 = v33;
                  _os_log_impl(&dword_254850000, v31, OS_LOG_TYPE_INFO, "Failed to write nickname asset {error: %@, targetURL: %@, data.length: %ld}", buf, 0x20u);
                }
              }

LABEL_44:
              if (IMOSLoggingEnabled())
              {
                v34 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                {
                  if (a6)
                  {
                    v35 = *a6;
                  }

                  else
                  {
                    v35 = 0;
                  }

                  *buf = 138412546;
                  v47 = v35;
                  v48 = 2112;
                  v49 = v41;
                  _os_log_impl(&dword_254850000, v34, OS_LOG_TYPE_INFO, "Failed to create record from dictionary {error: %@, dictionary: %@}", buf, 0x16u);
                }
              }

              v28 = 0;
              goto LABEL_52;
            }
          }

          if (IMOSLoggingEnabled())
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v47 = v17;
              _os_log_impl(&dword_254850000, v23, OS_LOG_TYPE_INFO, "Writing nickname asset {targetURL: %@}", buf, 0xCu);
            }
          }

          v24 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileURL:v17];
          [v24 setItemTypeHint:@"fxd"];
          [v11 setObject:v24 forKey:v15];
        }

        else
        {
          [v11 setObject:v16 forKey:v15];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [v11 allKeys];
      v27 = [v41 allKeys];
      *buf = 138412802;
      v47 = v26;
      v48 = 2112;
      v49 = v27;
      v50 = 2112;
      v51 = v40;
      _os_log_impl(&dword_254850000, v25, OS_LOG_TYPE_INFO, "Created record from dictionary {record.allKeys: %@, dictionary.allKeys: %@, assetFieldNames: %@}", buf, 0x20u);
    }
  }

  v28 = v11;
LABEL_52:

  return v28;
}

id sub_254865D84(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t *a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"poster"];
  v13 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v11];
  [v12 setRecordID:v13];

  v30 = v10;
  v31 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecord:v10 action:1];
  [v12 setObject:? forKeyedSubscript:?];
  v14 = [v9 objectForKeyedSubscript:@"wd"];
  v15 = [v9 objectForKeyedSubscript:@"lrwd"];
  v33 = [v9 objectForKeyedSubscript:@"wm"];
  v32 = [MEMORY[0x277D1AAD0] _assetTargetURLForRecordName:v11 fieldName:@"wm" error:a6];
  v16 = [MEMORY[0x277D1AAD0] _assetTargetURLForRecordName:v11 fieldName:@"lrwd" error:a6];
  [v12 setObject:v33 forKey:@"wm"];
  if (v15 | v14)
  {
    v17 = objc_alloc(MEMORY[0x277D1ACD8]);
    v18 = [v32 path];
    v19 = [v16 path];
    LOBYTE(v29) = 0;
    v20 = [v17 initWithFileName:&stru_28669E560 filePath:v18 data:v14 lowResFileName:&stru_28669E560 lowResFilePath:v19 lowResData:v15 metadata:0 contentIsSensitive:v29 error:a6];

    if ((!v20 || *a6) && IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        if (a6)
        {
          v22 = *a6;
        }

        else
        {
          v22 = 0;
        }

        *buf = 138412290;
        v35 = v22;
        _os_log_impl(&dword_254850000, v21, OS_LOG_TYPE_INFO, "Failed to write low res wallpaper asset {error: %@}", buf, 0xCu);
      }
    }

    if (v15)
    {
      v23 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileURL:v16];
      [v23 setItemTypeHint:@"fxd"];
      [v12 setObject:v23 forKey:@"lrwd"];
    }

    if (v14)
    {
      v24 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileURL:v32];
      [v24 setItemTypeHint:@"fxd"];
      [v12 setObject:v24 forKey:@"wd"];
    }
  }

  v25 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v26 = [v25 isSwiftUIAvatarRenderingEnabled];

  if (v26)
  {
    v27 = [v9 objectForKeyedSubscript:@"ard"];
    if (v27)
    {
      [v12 setObject:v27 forKey:@"ard"];
    }
  }

  return v12;
}

id sub_254866158(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CBEBC0];
  v10 = [*MEMORY[0x277D1A390] stringByExpandingTildeInPath];
  v11 = [v9 fileURLWithPath:v10];

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [v11 path];
  v14 = [v12 fileExistsAtPath:v13];

  if (v14 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v11, 1, 0, a5), v15, (v16))
  {
    v17 = [v7 stringByAppendingFormat:@"-%@", v8];
    v18 = [v17 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

    v19 = [v11 URLByAppendingPathComponent:v18];

    v11 = v19;
    v20 = v11;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        if (a5)
        {
          v22 = *a5;
        }

        else
        {
          v22 = 0;
        }

        *buf = 138412546;
        v25 = v22;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_254850000, v21, OS_LOG_TYPE_INFO, "Failed to create nickname assets directory {error: %@, url: %@}", buf, 0x16u);
      }
    }

    v20 = 0;
  }

  return v20;
}

uint64_t sub_2548663A0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_opt_respondsToSelector();
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_opt_respondsToSelector() & v4;

  return v5 & 1;
}

uint64_t sub_25486640C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = objc_opt_respondsToSelector();
  v5 = objc_opt_respondsToSelector();

  return v4 & v5 & 1;
}

id sub_25486646C(uint64_t a1)
{
  if (qword_27F611CC0 != -1)
  {
    sub_2548680F0();
  }

  v2 = qword_27F611CB8;

  return v2;
}

uint64_t sub_2548664B0()
{
  result = MEMORY[0x259C1C010](@"NSMorphologyCustomPronoun", @"Foundation");
  qword_27F611CB8 = result;
  return result;
}

__CFString *sub_2548664E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    return @"en";
  }

  else
  {
    return 0;
  }
}

id sub_2548664F4()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v1 = [v0 isSwiftUIAvatarRenderingEnabled];

  if (v1)
  {
    v12 = @"n";
    v13 = @"am";
    v14 = @"ad";
    v15 = @"wm";
    v16 = @"lrwd";
    v17 = @"ard";
    v2 = MEMORY[0x277CBEA60];
    v3 = &v12;
    v4 = 6;
  }

  else
  {
    v7 = @"n";
    v8 = @"am";
    v9 = @"ad";
    v10 = @"wm";
    v11 = @"lrwd";
    v2 = MEMORY[0x277CBEA60];
    v3 = &v7;
    v4 = 5;
  }

  v5 = [v2 arrayWithObjects:v3 count:{v4, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17}];

  return v5;
}

id sub_254866604()
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v1 = [v0 isSwiftUIAvatarRenderingEnabled];

  if (v1)
  {
    v13 = @"n";
    v14 = @"am";
    v15 = @"ad";
    v16 = @"wm";
    v17 = @"lrwd";
    v18 = @"wd";
    v19 = @"ard";
    v2 = MEMORY[0x277CBEA60];
    v3 = &v13;
    v4 = 7;
  }

  else
  {
    v7 = @"n";
    v8 = @"am";
    v9 = @"ad";
    v10 = @"wm";
    v11 = @"lrwd";
    v12 = @"wd";
    v2 = MEMORY[0x277CBEA60];
    v3 = &v7;
    v4 = 6;
  }

  v5 = [v2 arrayWithObjects:v3 count:{v4, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19}];

  return v5;
}

id sub_254866728()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v1 = [v0 isSwiftUIAvatarRenderingEnabled];

  if (v1)
  {
    v10 = @"n";
    v11 = @"am";
    v12 = @"ad";
    v13 = @"ard";
    v2 = MEMORY[0x277CBEA60];
    v3 = &v10;
    v4 = 4;
  }

  else
  {
    v7 = @"n";
    v8 = @"am";
    v9 = @"ad";
    v2 = MEMORY[0x277CBEA60];
    v3 = &v7;
    v4 = 3;
  }

  v5 = [v2 arrayWithObjects:v3 count:{v4, v7, v8, v9, v10, v11, v12, v13}];

  return v5;
}

void sub_25486682C(int a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v72 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v63 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (!v12 && (a1 & 1) == 0)
  {
    if (v14)
    {
      (*(v14 + 2))(v14, v11, 0, 0, 301);
    }

    goto LABEL_141;
  }

  if (a1)
  {
    v62 = objc_alloc_init(MEMORY[0x277CBEB28]);
  }

  else
  {
    v62 = 0;
  }

  v16 = [v11 path];
  v61 = [v16 pathExtension];

  v17 = v63;
  v18 = v17;
  if (!v17)
  {
    v19 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = [v11 path];
    v18 = [v19 _randomSimilarFilePathAsPath:v20];
  }

  v60 = v18;
  v21 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v18 isDirectory:0];
  v22 = v21;
  if (v11)
  {
    v23 = CFReadStreamCreateWithFile(0, v11);
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_15:
    v24 = 0;
    if (!v12)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v23 = 0;
  if (!v21)
  {
    goto LABEL_15;
  }

LABEL_12:
  v24 = CFWriteStreamCreateWithFile(0, v22);
  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_16:
  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v12;
      _os_log_impl(&dword_254850000, v25, OS_LOG_TYPE_INFO, "       inputKey: %@", buf, 0xCu);
    }
  }

LABEL_20:
  if (v17 && IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v17;
      _os_log_impl(&dword_254850000, v26, OS_LOG_TYPE_INFO, " outputFileName: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v11;
      _os_log_impl(&dword_254850000, v27, OS_LOG_TYPE_INFO, "       inputURL: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v61;
      _os_log_impl(&dword_254850000, v28, OS_LOG_TYPE_INFO, "  pathExtension: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v22;
      _os_log_impl(&dword_254850000, v29, OS_LOG_TYPE_INFO, "      outputURL: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v23;
      _os_log_impl(&dword_254850000, v30, OS_LOG_TYPE_INFO, "     readStream: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v24;
      _os_log_impl(&dword_254850000, v31, OS_LOG_TYPE_INFO, "    writeStream: %@", buf, 0xCu);
    }
  }

  if (!v23)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_70;
    }

    v41 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v11;
      _os_log_impl(&dword_254850000, v41, OS_LOG_TYPE_INFO, "Could not create read stream for input file: %@", buf, 0xCu);
    }

    goto LABEL_69;
  }

  v32 = CFReadStreamOpen(v23) == 0;
  v33 = IMOSLoggingEnabled();
  if (v32)
  {
    if (!v33)
    {
      goto LABEL_70;
    }

    v41 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v11;
      _os_log_impl(&dword_254850000, v41, OS_LOG_TYPE_INFO, "Could not open read stream for input file: %@", buf, 0xCu);
    }

LABEL_69:

LABEL_70:
    if (v24)
    {
      v42 = 0;
      v40 = 0;
      runLoopMode = *MEMORY[0x277CBF048];
      goto LABEL_106;
    }

    goto LABEL_108;
  }

  if (v33)
  {
    v34 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v23;
      _os_log_impl(&dword_254850000, v34, OS_LOG_TYPE_INFO, "Successfully opened read stream: %@", buf, 0xCu);
    }
  }

  Main = CFRunLoopGetMain();
  runLoopMode = *MEMORY[0x277CBF048];
  CFReadStreamScheduleWithRunLoop(v23, Main, *MEMORY[0x277CBF048]);
  if (v24)
  {
    v36 = CFWriteStreamOpen(v24) == 0;
    v37 = IMOSLoggingEnabled();
    if (v36)
    {
      if (v37)
      {
        v43 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          domain = v22;
          _os_log_impl(&dword_254850000, v43, OS_LOG_TYPE_INFO, "Could not open write stream for output file: %@", buf, 0xCu);
        }
      }

      v42 = 0;
      v40 = 0;
LABEL_106:
      CFWriteStreamSetClient(v24, 0, 0, 0);
      CFWriteStreamClose(v24);
      v50 = CFRunLoopGetMain();
      CFWriteStreamUnscheduleFromRunLoop(v24, v50, runLoopMode);
      if (!v23)
      {
        goto LABEL_114;
      }

      goto LABEL_113;
    }

    if (v37)
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        domain = v24;
        _os_log_impl(&dword_254850000, v38, OS_LOG_TYPE_INFO, "Successfully opened write stream: %@", buf, 0xCu);
      }
    }

    v39 = CFRunLoopGetMain();
    CFWriteStreamScheduleWithRunLoop(v24, v39, runLoopMode);
    if (a1)
    {
      if (qword_28112D9A0 != -1)
      {
        sub_254868188();
      }

      if (off_28112D9B0)
      {
        LODWORD(v40) = off_28112D9B0(v23, v24, v62);
      }

      else
      {
        LODWORD(v40) = 1;
      }

      if (IMOSLoggingEnabled())
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          domain = v40;
          _os_log_impl(&dword_254850000, v44, OS_LOG_TYPE_INFO, "SecProtectStream result: %ld", buf, 0xCu);
        }
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_95;
      }

      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        domain = v62;
        _os_log_impl(&dword_254850000, v45, OS_LOG_TYPE_INFO, "       outputKey: %@", buf, 0xCu);
      }
    }

    else
    {
      if (qword_28112D9A8 != -1)
      {
        sub_254868160();
      }

      if (off_28112D9B8)
      {
        LODWORD(v40) = off_28112D9B8(v23, v24, v12);
      }

      else
      {
        LODWORD(v40) = 1;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_95;
      }

      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        domain = v40;
        _os_log_impl(&dword_254850000, v45, OS_LOG_TYPE_INFO, "SecExposeStream result: %ld", buf, 0xCu);
      }
    }

LABEL_95:
    if (v40)
    {
      Error = CFReadStreamGetError(v23);
      v47 = CFWriteStreamGetError(v24);
      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          domain = Error.domain;
          v66 = 2048;
          v67 = Error.error;
          _os_log_impl(&dword_254850000, v48, OS_LOG_TYPE_INFO, "  read error: [%ld:%ld]", buf, 0x16u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v49 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          domain = v47.domain;
          v66 = 2048;
          v67 = v47.error;
          _os_log_impl(&dword_254850000, v49, OS_LOG_TYPE_INFO, " write error: [%ld:%ld]", buf, 0x16u);
        }
      }

      v42 = 0;
      v40 = v40;
    }

    else
    {
      v40 = 0;
      v42 = 1;
    }

    goto LABEL_106;
  }

LABEL_108:
  if (IMOSLoggingEnabled())
  {
    v51 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      domain = v22;
      _os_log_impl(&dword_254850000, v51, OS_LOG_TYPE_INFO, "Could not create write stream for output file: %@", buf, 0xCu);
    }
  }

  v42 = 0;
  v40 = 0;
  if (!v23)
  {
    goto LABEL_114;
  }

LABEL_113:
  CFReadStreamSetClient(v23, 0, 0, 0);
  CFReadStreamClose(v23);
  v52 = CFRunLoopGetMain();
  CFReadStreamUnscheduleFromRunLoop(v23, v52, *MEMORY[0x277CBF048]);
LABEL_114:
  im_dispatch_after();
  if (v42)
  {
    if (IMOSLoggingEnabled())
    {
      v53 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v54 = @"decrypting";
        *buf = 138412802;
        if (a1)
        {
          v54 = @"encrypting";
        }

        domain = v54;
        v66 = 2112;
        v67 = v11;
        v68 = 2112;
        v69 = v22;
        _os_log_impl(&dword_254850000, v53, OS_LOG_TYPE_INFO, "Succeeded %@ input URL: %@    output URL: %@", buf, 0x20u);
      }
    }
  }

  else
  {

    if (IMOSLoggingEnabled())
    {
      v55 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = @"decrypting";
        *buf = 138413058;
        if (a1)
        {
          v56 = @"encrypting";
        }

        domain = v56;
        v66 = 2112;
        v67 = v11;
        v68 = 2112;
        v69 = 0;
        v70 = 2048;
        v71 = v40;
        _os_log_impl(&dword_254850000, v55, OS_LOG_TYPE_INFO, "** Failed %@ input URL: %@    output URL: %@     result: %ld", buf, 0x2Au);
      }
    }

    v62 = 0;
    v22 = 0;
  }

  if (v13 && a1)
  {
    if (v42)
    {
      v57 = 0;
    }

    else
    {
      v57 = 300;
    }

    v13[2](v13, v11, v42, v22, v62, v57);
  }

  else if (v15 && (a1 & 1) == 0)
  {
    if (v42)
    {
      v58 = 0;
    }

    else
    {
      v58 = 301;
    }

    (v15)[2](v15, v11, v42, v22, v58);
  }

LABEL_141:
}

uint64_t (*sub_254867654())(void, void, void)
{
  result = MEMORY[0x259C1C020]("SecProtectStream", @"MessageProtection");
  off_28112D9B0 = result;
  return result;
}

uint64_t (*sub_254867684())(void, void, void)
{
  result = MEMORY[0x259C1C020]("SecExposeStream", @"MessageProtection");
  off_28112D9B8 = result;
  return result;
}

void sub_2548676B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t IMOptOutOfOptimizedMadridAttachmentDownloadPath()
{
  v0 = 1;
  v1 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v2 = [v1 objectForKey:@"should-disallow-authget"];
  v3 = [v2 BOOLValue];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x277D19268] sharedInstance];
    if ([v4 isInternalInstall])
    {
      v5 = IMGetCachedDomainBoolForKey();

      if (v5)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  return v0;
}

uint64_t IMSetOptOutOfOptimizedMadridAttachmentDownloadPath(uint64_t a1)
{
  IMSetDomainBoolForKey();

  return IMSetDomainBoolForKey();
}

uint64_t IMOptOutOfOptimizedMadridAttachmentUploadPath()
{
  v0 = 1;
  v1 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v2 = [v1 objectForKey:@"should-disallow-authput"];
  v3 = [v2 BOOLValue];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x277D19268] sharedInstance];
    if ([v4 isInternalInstall])
    {
      v5 = IMGetCachedDomainBoolForKey();

      if (v5)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  return v0;
}

uint64_t IMSetOptOutOfOptimizedMadridAttachmentUploadPath(uint64_t a1)
{
  IMSetDomainBoolForKey();

  return IMSetDomainBoolForKey();
}

uint64_t IMTransferRequestIsForMessages(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 isEqualToString:@"com.apple.madrid"];
  v6 = IMSafeTemporaryDirectory();
  v7 = [v6 path];
  v8 = [v4 hasPrefix:v7];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if (v5)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      if (v8)
      {
        v10 = @"YES";
      }

      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_254850000, v9, OS_LOG_TYPE_INFO, "checking if transfer request is for Messages, topicIsMadrid: %@, receivePathPrefixIsMessages: %@", &v13, 0x16u);
    }
  }

  return v5 & v8;
}

void sub_254867ECC()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = 138412546;
  v1 = @"mO";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&dword_254850000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_254867F68()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = 138412546;
  v1 = @"mS";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&dword_254850000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_254868004()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = 138412546;
  v1 = @"mL";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&dword_254850000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_254868104(void *a1)
{

  objc_end_catch();
}

CFStreamError CFReadStreamGetError(CFReadStreamRef stream)
{
  v1 = MEMORY[0x28210F9B8](stream);
  result.error = v2;
  result.domain = v1;
  return result;
}

CFStreamError CFWriteStreamGetError(CFWriteStreamRef stream)
{
  v1 = MEMORY[0x282110188](stream);
  result.error = v2;
  result.domain = v1;
  return result;
}