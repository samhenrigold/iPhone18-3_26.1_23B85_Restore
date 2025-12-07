uint64_t sub_1E70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2DA0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x2D94);
  }

  _Unwind_Resume(a1);
}

void sub_4AB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) lastAddressedHandleForJunkReportMessageItem:*(a1 + 40)];
  v5 = [*(a1 + 32) lastAddressedSIMIDForJunkReportMessageItem:*(a1 + 40)];
  v6 = [*(a1 + 40) subject];
  if ([v6 length])
  {
  }

  else
  {
    v7 = [*(a1 + 40) fileTransferGUIDs];
    v8 = [v7 count];

    if (!v8)
    {
      goto LABEL_10;
    }
  }

  v9 = [*(a1 + 32) relayController];
  v10 = [v9 _checkMMSEnablementForPhoneNumber:v4 simID:v5];

  if (v10)
  {
    v11 = 0;
    v12 = 1;
    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v34 = @"YES";
      v35 = 2112;
      v36 = @"NO";
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Overriding shouldBroadcastMessage to be %@ and shouldSendMMS %@ based on _checkMMSEnablement", buf, 0x16u);
    }
  }

LABEL_10:
  v12 = 0;
  v11 = 1;
LABEL_11:
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = @"NO";
      if (v12)
      {
        v15 = @"YES";
      }

      *buf = 138412290;
      v34 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "            Should Send MMS: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = @"NO";
      if (v11)
      {
        v17 = @"YES";
      }

      *buf = 138412290;
      v34 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "   Should Broadcast Message: %@", buf, 0xCu);
    }
  }

  v18 = (a1 + 32);
  v19 = [*(a1 + 32) attachmentController];
  v20 = *(a1 + 40);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_4E6C;
  v25[3] = &unk_207D8;
  v21 = *v18;
  v26 = v3;
  v27 = v21;
  v31 = v11;
  v32 = v12;
  v28 = v20;
  v29 = v4;
  v30 = v5;
  v22 = v5;
  v23 = v4;
  v24 = v3;
  [v19 processAttachmentsForMessage:v20 generateTextParts:v12 lastAddressedHandle:v23 lastAddressedSIMID:v22 completionBlock:v25];
}

void sub_4E6C(uint64_t a1, void *a2, int a3, void *a4)
{
  v56 = a2;
  v55 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = MarcoLoggingStringForMessageData();
      *buf = 138412290;
      *v73 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "processAttachmentsForMessage Parts: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      *v73 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Participants: %@", buf, 0xCu);
    }
  }

  v11 = [*(a1 + 40) newTelephonyMessagesForHandles:*(a1 + 32) shouldBroadcastMessage:*(a1 + 72)];
  if ((*(a1 + 73) & 1) == 0)
  {
    [*(a1 + 40) addMessagePlainTextToTelephonyMessages:v11 messageItem:*(a1 + 48) processedMessageItem:v56];
  }

  [*(a1 + 40) setSubjectForTelephonyMessages:v11 messageItem:*(a1 + 48)];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"NO";
      if (a3)
      {
        v13 = @"YES";
      }

      *buf = 138412290;
      *v73 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "    Parts all process: %@", buf, 0xCu);
    }
  }

  v57 = a3 ^ 1;
  if (((a3 ^ 1) & 1) == 0)
  {
    [*(a1 + 40) processPartsOfTelephonyMessages:v11 parts:v55 messageItem:*(a1 + 48) isGroupChat:0 phoneNumber:*(a1 + 56) simID:*(a1 + 64)];
  }

  [*(a1 + 40) buildTelephonyPhoneNumbersForTelephonyMessages:v11 shouldBroadcastMessage:*(a1 + 72) handles:*(a1 + 32)];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v11;
  v14 = [obj countByEnumeratingWithState:&v67 objects:v80 count:16];
  if (v14)
  {
    v15 = *v68;
    v16 = 1;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v68 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v67 + 1) + 8 * i);
        [v18 setServiceCenter:0];
        v19 = *(a1 + 40);
        if (v16)
        {
          [*(a1 + 48) guid];
        }

        else
        {
          +[NSString stringGUID];
        }
        v20 = ;
        [v18 setMessageId:{objc_msgSend(v19, "_generateMessageIDForMessageGUID:", v20)}];

        if (*(a1 + 73) == 1 && IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "   => Setting Junk Report Message type to MMS", buf, 2u);
          }
        }

        [*(a1 + 40) setMessageTypeForTelephonyMessage:v18 shouldSendMMS:*(a1 + 73)];
        v22 = +[IMCTSubscriptionUtilities sharedInstance];
        v23 = [v22 ctSubscriptionInfo];

        v24 = [v23 __im_subscriptionContextForForSimID:*(a1 + 64) phoneNumber:*(a1 + 56)];
        if (v24)
        {
          [v18 setContext:v24];
          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = [v56 guid];
              *buf = 138412546;
              *v73 = v26;
              *&v73[8] = 2112;
              *v74 = v24;
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Setting the context for junk report message guid = %@, context %@", buf, 0x16u);
            }
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Could not find a subscription context to send junk report with based on contact preferred subscription in context so failing message", buf, 2u);
            }
          }

          v57 = 1;
        }

        v16 = 0;
      }

      v14 = [obj countByEnumeratingWithState:&v67 objects:v80 count:16];
      v16 = 0;
    }

    while (v14);
  }

  v28 = IMOSLoggingEnabled();
  if (v57)
  {
    if (v28)
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v73 = obj;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "   *** Parts failed, failing junk report message(s): %@", buf, 0xCu);
      }
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v30 = obj;
    v31 = [v30 countByEnumeratingWithState:&v59 objects:v71 count:16];
    if (v31)
    {
      v32 = *v60;
      do
      {
        for (j = 0; j != v31; j = j + 1)
        {
          if (*v60 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v59 + 1) + 8 * j);
          if (IMOSLoggingEnabled())
          {
            v35 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v73 = v34;
              _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "part error sending message %@", buf, 0xCu);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v36 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v73 = v34;
              _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "   => failed CT Message: %@  (some parts failed)", buf, 0xCu);
            }
          }
        }

        v31 = [v30 countByEnumeratingWithState:&v59 objects:v71 count:16];
      }

      while (v31);
    }

    v37 = +[IMMetricsCollector sharedInstance];
    [v37 trackEvent:IMMetricsCollectorEventCarrierReportJunkCompletionStatus withDictionary:&off_218B0];
  }

  else
  {
    if (v28)
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v73 = obj;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "   No parts failed, sending junk report message(s): %@", buf, 0xCu);
      }
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v39 = obj;
    v40 = [v39 countByEnumeratingWithState:&v63 objects:v79 count:16];
    if (v40)
    {
      v41 = 0;
      v42 = 0;
      v43 = *v64;
      do
      {
        for (k = 0; k != v40; k = k + 1)
        {
          if (*v64 != v43)
          {
            objc_enumerationMutation(v39);
          }

          v45 = *(*(&v63 + 1) + 8 * k);
          v46 = +[CTMessageCenter sharedMessageCenter];
          v47 = [v46 send:v45];

          if (HIDWORD(v47))
          {
            v48 = 0;
          }

          else
          {
            v48 = v47 == 0;
          }

          if (v48)
          {
            ++v42;
            if (IMOSLoggingEnabled())
            {
              v51 = OSLogHandleForIMEventCategory();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
              {
                v52 = [v39 count];
                *buf = 67109634;
                *v73 = v41 + 1;
                *&v73[4] = 1024;
                *&v73[6] = v52;
                *v74 = 2112;
                *&v74[2] = v45;
                _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "   => sent CT Junk Report Message (%d / %d): %@", buf, 0x18u);
              }
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v49 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              v50 = [v39 count];
              *buf = 67110146;
              *v73 = v41 + 1;
              *&v73[4] = 1024;
              *&v73[6] = v50;
              *v74 = 2112;
              *&v74[2] = v45;
              v75 = 1024;
              v76 = v47;
              v77 = 1024;
              v78 = HIDWORD(v47);
              _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "**** Failed sending message CT Junk Report Message (%d / %d): (%@) error: %d,%d\n", buf, 0x24u);
            }
          }

          ++v41;
        }

        v40 = [v39 countByEnumeratingWithState:&v63 objects:v79 count:16];
      }

      while (v40);
    }

    else
    {
      v42 = 0;
    }

    v53 = v42 == [v39 count];
    v54 = +[IMMetricsCollector sharedInstance];
    v37 = v54;
    if (v53)
    {
      [v54 trackEvent:IMMetricsCollectorEventCarrierReportJunkCompletionStatus withDictionary:&off_21860];
    }

    else
    {
      [v54 trackEvent:IMMetricsCollectorEventCarrierReportJunkCompletionStatus withDictionary:&off_21888];
    }
  }
}

id sub_719C(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, " ** FailSendingSMSMessages is enabled, failing send message", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, " ** FailSendingSMSMessages is enabled, failing send message", v5, 2u);
    }
  }

  [*(a1 + 32) setErrorCode:5];
  return [*(a1 + 40) didSendMessage:*(a1 + 32) forChat:*(a1 + 48) style:*(a1 + 56)];
}

id _ClampDate(void *a1)
{
  v1 = a1;
  v2 = +[NSDate date];
  v3 = v2;
  if (v1)
  {
    v4 = [v2 compare:v1];
    if (v4 != -1)
    {
      if (v4 == &dword_0 + 1)
      {
        if (!IMOSLoggingEnabled())
        {
LABEL_14:
          v6 = v1;
          goto LABEL_20;
        }

        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v10 = 138412546;
          v11 = v1;
          v12 = 2112;
          v13 = v3;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, " * Date descending vs current (%@ vs %@)", &v10, 0x16u);
        }
      }

      else
      {
        if (v4 || !IMOSLoggingEnabled())
        {
          goto LABEL_14;
        }

        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v10 = 138412546;
          v11 = v1;
          v12 = 2112;
          v13 = v3;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, " * Date is the same as current (%@ vs %@)", &v10, 0x16u);
        }
      }

      goto LABEL_14;
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 138412546;
        v11 = v1;
        v12 = 2112;
        v13 = v3;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, " * Clamping date %@ to current date (%@)", &v10, 0x16u);
      }
    }

    v6 = v3;

    v1 = v6;
  }

  else
  {
    v6 = 0;
    v1 = v2;
  }

LABEL_20:
  v8 = v1;

  return v1;
}

void sub_9604(uint64_t a1, int a2)
{
  if (a2)
  {
    v7 = [*(a1 + 32) relayController];
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) service];
    v6 = [v5 internalName];
    [v7 relayDictionaryToPeers:v4 requiresUpload:v3 serviceName:v6 requiredCapabilities:0];
  }
}

void sub_9904(uint64_t a1, unsigned __int8 a2, void *a3, char a4)
{
  v7 = a3;
  if (((a2 ^ 1 | *(a1 + 40)) & 1) == 0 && (a4 & 1) == 0)
  {
    v8 = [*(a1 + 32) relayController];
    [v8 _executeSMSRelayBlockForMessageWithGUID:v7];
LABEL_4:

    goto LABEL_5;
  }

  v10 = a2 ^ 1 | *(a1 + 40) | ~a4;
  v11 = IMOSLoggingEnabled();
  if (v10)
  {
    if (v11)
    {
      v8 = OSLogHandleForIMEventCategory();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_4;
      }

      v14 = 0;
      v12 = "Not relaying to peers as we are message is being replayed.";
      v13 = &v14;
LABEL_15:
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, v12, v13, 2u);
      goto LABEL_4;
    }
  }

  else if (v11)
  {
    v8 = OSLogHandleForIMEventCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    *buf = 0;
    v12 = "Not relaying to peers since we're checking for spam";
    v13 = buf;
    goto LABEL_15;
  }

LABEL_5:
  if ((a4 & 1) == 0)
  {
    v9 = [*(a1 + 32) relayController];
    [v9 _clearSMSRelayMapForMessageWithGUID:v7];
  }
}

void sub_9CD4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = a2;
  [v2 _receivedSMSDictionary:v3 requiresUpload:v4 isBeingReplayed:1];
  v5[2]();
}

void sub_A120(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 chatForMessage:v3];

  if (!v5)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_21;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = [v3 guid];
      v18 = 138412290;
      v19 = v14;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Chat not found for message relay guid: %@", &v18, 0xCu);
    }

    goto LABEL_8;
  }

  if ([v5 style] == 45)
  {
    v6 = +[IMDRelayServiceController sharedInstance];
    v7 = [*(a1 + 32) internalName];
    v8 = [NSSet setWithObject:IDSRegistrationPropertySupportsSenderKey];
    v9 = [v6 relayMessageToPeers:v3 forChat:v5 serviceName:v7 reflectOnly:1 requiredCapabilities:v8];

    if (v9)
    {
      if (*(a1 + 48) == 1)
      {
        [v3 setNeedsRelay:0];
        v10 = +[IMDMessageStore sharedInstance];
        v11 = [v10 storeMessage:v3 forceReplace:0 modifyError:1 modifyFlags:1 flagMask:0x40000000000];

        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = [v3 guid];
            v18 = 138412290;
            v19 = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Message marked as relayed, guid: %@", &v18, 0xCu);
          }

LABEL_8:
        }
      }
    }

    else
    {
      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_12254(v3);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  else
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1215C(v3);
    }

    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_121E4();
    }
  }

LABEL_21:
}

void sub_A428(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0xA3E8);
  }

  _Unwind_Resume(a1);
}

id sub_A5A0(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 68))
      {
        v3 = @"SMS";
      }

      else
      {
        v3 = @"MMS";
      }

      v4 = *(a1 + 32);
      if (*(a1 + 69))
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = [NSNumber numberWithUnsignedInt:*(a1 + 64)];
      v7 = [NSNumber numberWithInteger:*(a1 + 48)];
      v8 = [NSNumber numberWithInteger:*(a1 + 56)];
      v12 = 138413570;
      v13 = v3;
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%@ Message sent notification %@: success %@ messageID %@ err1 %@ err2 %@", &v12, 0x3Eu);
    }
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 64);
  if (*(a1 + 69) == 1)
  {
    return [v9 _processMessageSentID:v10];
  }

  else
  {
    return [v9 _processMessageSendFailureID:v10];
  }
}

void sub_A898(uint64_t a1)
{
  v2 = _os_activity_create(&dword_0, "com.apple.messages.SMSReceivedMessage", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  v3 = +[IMCTSMSUtilitiesManager sharedManager];
  v4 = [v3 isMessagesTheDefaultTextApp];

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Message received in block ", buf, 2u);
      }
    }

    v6 = *(a1 + 32);
    v7 = +[CTMessageCenter sharedMessageCenter];
    v8 = [v7 incomingMessageWithId:*(a1 + 48)];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v16 = v8;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "  => Message: %@", buf, 0xCu);
      }
    }

    if (v8)
    {
      v8 = v8;
      v13 = *(a1 + 40);
      v6 = v6;
      im_dispatch_after();
    }

    else if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 48);
        *buf = 67109120;
        LODWORD(v16) = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Empty message supplied for message id: %d", buf, 8u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Received an SMS/MMS while we are not the default text app", buf, 2u);
      }
    }

    v6 = +[IMMetricsCollector sharedInstance];
    v8 = [NSError errorWithDomain:@"com.apple.Messages.SMS" code:0 userInfo:0];
    [v6 forceAutoBugCaptureWithSubType:@"Messages.SMSCallsWhileNotDefaultTextApp.messageReceived" errorPayload:v8];
  }

  os_activity_scope_leave(&state);
}

void sub_AC7C(uint64_t a1)
{
  v2 = +[IMMetricsCollector sharedInstance];
  [v2 trackEvent:IMMetricsCollectorEventSMSReceived];

  v9 = 0;
  [*(a1 + 32) setContext:*(a1 + 40)];
  v3 = [*(a1 + 48) _convertCTMessageToDictionary:*(a1 + 32) requiresUpload:&v9];
  v4 = [v3 objectForKey:IMDCTMessageDictionaryGUIDKey];
  v5 = [v3 objectForKey:IMDCTMessageDictionaryTypeKey];
  if ([v4 length])
  {
    v6 = [NSString stringWithFormat:@"%@-%@.smsdata", v5, v4];
    [IMInternalPayloadUtilities writeMessagePayloadToDisk:v3 fileName:v6];
  }

  [*(a1 + 48) _receivedSMSDictionary:v3 requiresUpload:v9 isBeingReplayed:0];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Session received SMS", buf, 2u);
    }
  }

  [*(a1 + 56) _storeIncomingMessageDictionaryToReplayDatabaseIfNeeded:v3 requiresUpload:v9];
}

void sub_B040(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0xAFF4);
  }

  _Unwind_Resume(a1);
}

void sub_B440(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_C0AC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0xC050);
  }

  _Unwind_Resume(a1);
}

id sub_D034(void *a1)
{
  if (qword_26898 != -1)
  {
    sub_122DC();
  }

  v2 = [a1 lowercaseString];
  result = [v2 length];
  if (result)
  {
    result = [qword_26890 objectForKey:v2];
    if (!result)
    {
      return v2;
    }
  }

  return result;
}

id sub_D19C(void *a1)
{
  v21 = objc_alloc_init(NSMutableString);
  if (qword_268B0 != -1)
  {
    sub_122F0();
  }

  [v21 appendString:qword_268A0];
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = MarcoLoggingStringForMessageData();
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_INFO, "Generating SMIL for pieces: %@", buf, 0xCu);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    v20 = *v23;
    while (1)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = sub_D034([v7 objectForKey:@"Type"]);
        v9 = [objc_msgSend(v7 objectForKey:{@"Path", "lastPathComponent"}];
        v10 = [v7 objectForKey:@"Tag"];
        v11 = [v10 isEqualToString:@"text"];
        v5 |= v4;
        if ((v11 & 1) == 0)
        {
          if ([v8 isEqualToString:@"vcard"])
          {
            continue;
          }

          if ([v10 isEqualToString:@"img"])
          {
            v13 = 0;
            goto LABEL_19;
          }

          v14 = [v10 isEqualToString:@"video"];
          v13 = [objc_msgSend(v7 objectForKey:{@"Duration", "intValue"}];
          if (v14)
          {
LABEL_19:
            v15 = [NSString stringWithFormat:@"<%@ src=%@ region=%@/>\n", v10, v9, @"Image"];
          }

          else
          {
            v15 = [NSString stringWithFormat:@"<%@ src=%@/>\n", v10, v9];
          }

          v12 = v15;
          if (v3)
          {
LABEL_22:
            [v21 appendString:@"</par>\n"];
          }

LABEL_23:
          if (v13)
          {
            v16 = v13;
          }

          else
          {
            v16 = 10;
          }

          [v21 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<par dur=%ds>\n", v16)}];
          v3 = 1;
          goto LABEL_27;
        }

        v12 = [NSString stringWithFormat:@"<%@ src=%@ region=%@/>\n", v10, v9, @"Text"];
        if (v5)
        {
          v13 = 0;
          if (v3)
          {
            goto LABEL_22;
          }

          goto LABEL_23;
        }

LABEL_27:
        [v21 appendString:v12];
        v5 = 0;
        v4 = v11;
      }

      v2 = [a1 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v2)
      {
        if (v3)
        {
          [v21 appendString:@"</par>\n"];
        }

        break;
      }
    }
  }

  if (qword_268B8 != -1)
  {
    sub_12304();
  }

  [v21 appendString:qword_268A8];
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v21;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "proposed smil: %@", buf, 0xCu);
    }
  }

  return v21;
}

void sub_E4F8(uint64_t a1)
{
  v2 = [*(a1 + 32) smsSession];
  v3 = [*(a1 + 32) message];
  v4 = [*(a1 + 32) chat];
  v5 = [v4 chatIdentifier];
  [v2 didSendMessage:v3 forChat:v5 style:{objc_msgSend(*(a1 + 32), "chatStyle")}];

  v6 = [*(a1 + 32) chatStyle] != 45;
  v7 = [*(a1 + 32) message];
  v8 = [v7 handle];
  IsEmail = IMStringIsEmail();

  v10 = +[NSDate date];
  [v10 timeIntervalSinceDate:*(a1 + 40)];
  v12 = v11;

  v13 = [*(a1 + 32) message];
  v14 = [v13 fileTransferGUIDs];
  v15 = [v14 count] != 0;

  v16 = [NSNumber numberWithDouble:v12];
  v24[0] = IMMetricsCollectorFzErrorKey;
  v17 = [NSNumber numberWithLong:0];
  v25[0] = v17;
  v24[1] = IMMetricsCollectorIsGroupMessageKey;
  v18 = [NSNumber numberWithBool:v6];
  v25[1] = v18;
  v24[2] = IMMetricsCollectorIsToPhoneNumberKey;
  v19 = [NSNumber numberWithBool:IsEmail ^ 1];
  v25[2] = v19;
  v24[3] = IMMetricsCollectorIsToEmailKey;
  v20 = [NSNumber numberWithInt:IsEmail];
  v25[3] = v20;
  v24[4] = IMMetricsCollectorHasAttachmentsKey;
  v21 = [NSNumber numberWithBool:v15];
  v25[4] = v21;
  v25[5] = v16;
  v24[5] = IMMetricsCollectorSendDurationKey;
  v24[6] = IMMetricsCollectorConnectionTypeKey;
  v25[6] = &off_21818;
  v22 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:7];

  v23 = +[IMMetricsCollector sharedInstance];
  [v23 trackEvent:IMMetricsCollectorEventSMSSentMessageSingleComponent withDictionary:v22];

  [*(a1 + 32) sendMetricForSMS:v16 wasSuccessful:1 error:0];
}

void sub_E7E8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = HIDWORD(a3);
  v6 = [*(a1 + 32) message];
  v29 = a2;
  [v6 setErrorCode:a2];

  v7 = [*(a1 + 32) smsSession];
  v8 = [*(a1 + 32) message];
  v9 = [*(a1 + 32) chatIdentifier];
  [v7 didSendMessage:v8 forChat:v9 style:{objc_msgSend(*(a1 + 32), "chatStyle")}];

  v10 = [*(a1 + 32) chatStyle] != 45;
  v11 = [*(a1 + 32) message];
  v12 = [v11 handle];
  IsEmail = IMStringIsEmail();

  v14 = +[NSDate date];
  [v14 timeIntervalSinceDate:*(a1 + 40)];
  v16 = v15;

  v17 = [*(a1 + 32) message];
  v18 = [v17 fileTransferGUIDs];
  v19 = [v18 count] != 0;

  v20 = [NSNumber numberWithDouble:v16];
  v30[0] = IMMetricsCollectorFzErrorKey;
  v21 = [NSNumber numberWithInt:a2];
  v31[0] = v21;
  v30[1] = IMMetricsCollectorCtErrorKey;
  v22 = [NSNumber numberWithInt:v5];
  v31[1] = v22;
  v30[2] = IMMetricsCollectorIsGroupMessageKey;
  v23 = [NSNumber numberWithBool:v10];
  v31[2] = v23;
  v30[3] = IMMetricsCollectorIsToPhoneNumberKey;
  v24 = [NSNumber numberWithBool:IsEmail ^ 1];
  v31[3] = v24;
  v30[4] = IMMetricsCollectorIsToEmailKey;
  v25 = [NSNumber numberWithInt:IsEmail];
  v31[4] = v25;
  v30[5] = IMMetricsCollectorHasAttachmentsKey;
  v26 = [NSNumber numberWithBool:v19];
  v31[5] = v26;
  v31[6] = v20;
  v30[6] = IMMetricsCollectorSendDurationKey;
  v30[7] = IMMetricsCollectorConnectionTypeKey;
  v31[7] = &off_21818;
  v27 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:8];

  v28 = +[IMMetricsCollector sharedInstance];
  [v28 trackEvent:IMMetricsCollectorEventSMSSentMessageSingleComponent withDictionary:v27];

  [*(a1 + 32) sendMetricForSMS:v20 wasSuccessful:0 error:v29];
}

void sub_FB08(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0xEF50);
  }

  _Unwind_Resume(exc_buf);
}

void sub_FB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_FF9C(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_268C8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100C8;
    v3[4] = &unk_20B20;
    v3[5] = v3;
    v4 = off_20B08;
    v5 = 0;
    qword_268C8 = _sl_dlopen();
  }

  if (!qword_268C8)
  {
    sub_123A8(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("DMFEmergencyModeMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1232C();
  }

  qword_268C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100C8(uint64_t a1)
{
  result = _sl_dlopen();
  qword_268C8 = result;
  return result;
}

void *sub_1013C()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_266D0);
  swift_endAccess();
  if (v1)
  {
    sub_124D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_103C4(v12);
    goto LABEL_8;
  }

  type metadata accessor for SMSReachabilityController(0, v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    type metadata accessor for SMSServiceReachabilityDelegate(0, v3);
    v5 = v0;
    v6 = sub_10514(v5);
    type metadata accessor for SMSReachabilityController(0, v7);
    v4 = swift_allocObject();
    v4[2] = v6;
    v4[3] = &off_20C28;
    swift_beginAccess();

    objc_setAssociatedObject(v5, &unk_266D0, v4, &dword_0 + 1);
    swift_endAccess();

    return v4;
  }

  return v9;
}

uint64_t SMSServiceSession.calculateReachability(with:responseHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1013C();
  (*(*v4 + 96))(a1, a2);
}

uint64_t sub_103C4(uint64_t a1)
{
  v2 = sub_1042C(&qword_266D8, &qword_15FA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1042C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_10514(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithServiceSession:a1];

  return v3;
}

id sub_10604(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SMSServiceReachabilityDelegate(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t SMSReachabilityController.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t SMSReachabilityController.init(delegate:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void SMSReachabilityController.calculateReachability(with:responseHandler:)(void *a1, void *a2)
{
  v5 = *(v2 + 16);
  if ([v5 isMessagesTheDefaultTextApp])
  {
    v6 = [a1 handleIDs];
    v7 = sub_124B8();

    v8 = v7 + 40;
    v9 = -*(v7 + 16);
    v10 = -1;
    while (1)
    {
      if (v9 + v10 == -1)
      {

        goto LABEL_27;
      }

      if (++v10 >= *(v7 + 16))
      {
        break;
      }

      v11 = v8 + 16;

      v12 = sub_12478();
      IsStewieEmergency = IMStringIsStewieEmergency();

      v8 = v11;
      if ((IsStewieEmergency & 1) == 0)
      {

        v14 = [a1 context];
        v15 = [v5 isSMSEnabledForContext:v14];

        if (!v15)
        {
          if (qword_267C8 != -1)
          {
            swift_once();
          }

          v16 = sub_12458();
          sub_116D8(v16, static Logger.sms);
          v17 = a1;
          v18 = sub_12438();
          v19 = sub_124C8();

          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            aBlock = v21;
            *v20 = 136315138;
            v22 = [v17 handleIDs];
            v23 = sub_124B8();

            v106 = v23;
            sub_1042C(&qword_267D0, &qword_16010);
            sub_11CB8();
            v24 = sub_12468();
            v26 = v25;

            v27 = sub_11710(v24, v26, &aBlock);

            *(v20 + 4) = v27;
            _os_log_impl(&dword_0, v18, v19, "SMS is unavailable for sending to %s: SMS not available for context", v20, 0xCu);
            sub_11D64(v21);
          }

          v28 = [v5 internalServiceName];
          if (!v28)
          {
            sub_12488();
            v28 = sub_12478();
          }

          isa = [v17 handleIDs];
          if (!isa)
          {
            sub_124B8();
            isa = sub_124A8().super.isa;
          }

          v30 = [objc_opt_self() finalResultForService:v28 handleIDs:isa allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:3];
LABEL_62:
          v96 = v30;

          [a2 reachabilityRequest:v17 updatedWithResult:v96];
          return;
        }

LABEL_27:
        v37 = [a1 handleIDs];
        v38 = sub_124B8();

        v39 = v38 + 40;
        v40 = -*(v38 + 16);
        v41 = -1;
        do
        {
          if (v40 + v41 == -1)
          {

            goto LABEL_42;
          }

          if (++v41 >= *(v38 + 16))
          {
            goto LABEL_64;
          }

          v42 = v39 + 16;

          v43 = sub_12478();
          IsEmail = IMStringIsEmail();

          v39 = v42;
        }

        while ((IsEmail & 1) == 0);

        v45 = [a1 context];
        v46 = [v5 isMMSEnabledForContext:v45];

        if ((v46 & 1) == 0)
        {
          if (qword_267C8 != -1)
          {
            swift_once();
          }

          v47 = sub_12458();
          sub_116D8(v47, static Logger.sms);
          v48 = a1;
          v49 = sub_12438();
          v50 = sub_124C8();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            aBlock = v52;
            *v51 = 136315138;
            v53 = [v48 handleIDs];
            v54 = sub_124B8();

            v106 = v54;
            sub_1042C(&qword_267D0, &qword_16010);
            v55 = a2;
            sub_11CB8();
            v56 = sub_12468();
            v58 = v57;

            v59 = sub_11710(v56, v58, &aBlock);
            a2 = v55;

            *(v51 + 4) = v59;
            _os_log_impl(&dword_0, v49, v50, "SMS is unavailable for sending to %s: has email recipients but MMS not available for context", v51, 0xCu);
            sub_11D64(v52);
          }

          v60 = [v5 internalServiceName];
          if (!v60)
          {
            sub_12488();
            v60 = sub_12478();
          }

          v61 = [v48 handleIDs];
          if (!v61)
          {
            sub_124B8();
            v61 = sub_124A8().super.isa;
          }

          v62 = objc_opt_self();
          v104 = sub_115DC;
          v105 = 0;
          aBlock = _NSConcreteStackBlock;
          v101 = 1107296256;
          v102 = sub_11610;
          v103 = &unk_20D40;
          v63 = _Block_copy(&aBlock);
          v104 = sub_11678;
          v105 = 0;
          aBlock = _NSConcreteStackBlock;
          v101 = 1107296256;
          v102 = sub_11610;
          v103 = &unk_20D68;
          v64 = _Block_copy(&aBlock);
          LOBYTE(v97) = 0;
          v65 = [v62 finalResultForService:v60 handleIDs:v61 allAreReachable:0 allSupportEncryption:0 handleIsReachable:v63 handleSupportsEncryption:v64 checkedServer:v97 error:6];
          _Block_release(v64);
          _Block_release(v63);

          [a2 reachabilityRequest:v48 updatedWithResult:v65];
          return;
        }

LABEL_42:
        v66 = [a1 context];
        v67 = [v5 maxChatParticipantsForContext:v66];

        v68 = [a1 handleIDs];
        v69 = sub_124B8();

        v70 = *(v69 + 16);

        if (v67 >= v70)
        {
          if (qword_267C8 != -1)
          {
            swift_once();
          }

          v85 = sub_12458();
          sub_116D8(v85, static Logger.sms);
          v17 = a1;
          v86 = sub_12438();
          v87 = sub_124C8();

          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            aBlock = v89;
            *v88 = 136315138;
            v90 = [v17 handleIDs];
            v91 = sub_124B8();

            v106 = v91;
            sub_1042C(&qword_267D0, &qword_16010);
            sub_11CB8();
            v92 = sub_12468();
            v94 = v93;

            v95 = sub_11710(v92, v94, &aBlock);

            *(v88 + 4) = v95;
            _os_log_impl(&dword_0, v86, v87, "SMS is available for sending to %s", v88, 0xCu);
            sub_11D64(v89);
          }

          v28 = [v5 internalServiceName];
          if (!v28)
          {
            sub_12488();
            v28 = sub_12478();
          }

          isa = [v17 handleIDs];
          if (!isa)
          {
            sub_124B8();
            isa = sub_124A8().super.isa;
          }

          v30 = [objc_opt_self() finalResultForService:v28 handleIDs:isa allAreReachable:1 allSupportEncryption:0 checkedServer:0 error:0];
        }

        else
        {
          if (qword_267C8 != -1)
          {
            swift_once();
          }

          v71 = sub_12458();
          sub_116D8(v71, static Logger.sms);
          v17 = a1;
          v72 = sub_12438();
          v73 = sub_124C8();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            aBlock = v75;
            *v74 = 136315650;
            v76 = [v17 handleIDs];
            v77 = sub_124B8();

            v106 = v77;
            sub_1042C(&qword_267D0, &qword_16010);
            v99 = a2;
            sub_11CB8();
            v78 = sub_12468();
            v80 = v79;

            v81 = sub_11710(v78, v80, &aBlock);

            *(v74 + 4) = v81;
            *(v74 + 12) = 2050;
            v82 = [v17 handleIDs];
            v83 = sub_124B8();

            v84 = *(v83 + 16);

            *(v74 + 14) = v84;

            *(v74 + 22) = 2050;
            a2 = v99;
            *(v74 + 24) = v67;
            _os_log_impl(&dword_0, v72, v73, "SMS is unavailable for sending to %s: have %{public}ld participants but max is %{public}ld", v74, 0x20u);
            sub_11D64(v75);
          }

          else
          {
          }

          v28 = [v5 internalServiceName];
          if (!v28)
          {
            sub_12488();
            v28 = sub_12478();
          }

          isa = [v17 handleIDs];
          if (!isa)
          {
            sub_124B8();
            isa = sub_124A8().super.isa;
          }

          v30 = [objc_opt_self() finalResultForService:v28 handleIDs:isa allAreReachable:1 allSupportEncryption:0 checkedServer:0 error:1];
        }

        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (qword_267C8 != -1)
  {
LABEL_65:
    swift_once();
  }

  v31 = sub_12458();
  sub_116D8(v31, static Logger.sms);
  v32 = sub_12438();
  v33 = sub_124C8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "Messages is not the default text app: SMS not available", v34, 2u);
  }

  v35 = [v5 internalServiceName];
  if (!v35)
  {
    sub_12488();
    v35 = sub_12478();
  }

  v36 = [a1 handleIDs];
  if (!v36)
  {
    sub_124B8();
    v36 = sub_124A8().super.isa;
  }

  v98 = [objc_opt_self() finalResultForService:v35 handleIDs:v36 allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:3];

  [a2 reachabilityRequest:a1 updatedWithResult:v98];
}

uint64_t sub_115DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_12478();
  IsEmail = IMStringIsEmail();

  return IsEmail ^ 1u;
}

uint64_t sub_11610(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_12488();
  v5 = v4;

  LOBYTE(v3) = v2(v3, v5);

  return v3 & 1;
}

uint64_t SMSReachabilityController.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_116D8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_11710(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_117DC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_11DD4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_11D64(v11);
  return v7;
}

unint64_t sub_117DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_118E8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_124F8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_118E8(uint64_t a1, unint64_t a2)
{
  v3 = sub_11934(a1, a2);
  sub_11A64(&off_20D18);
  return v3;
}

char *sub_11934(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_11B50(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_124F8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_12498();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_11B50(v10, 0);
        result = sub_124E8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_11A64(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_11BC4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_11B50(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1042C(&qword_26888, &qword_16070);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_11BC4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1042C(&qword_26888, &qword_16070);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_11CB8()
{
  result = qword_267D8;
  if (!qword_267D8)
  {
    sub_11D1C(&qword_267D0, &qword_16010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_267D8);
  }

  return result;
}

uint64_t sub_11D1C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_11D64(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_11DD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Logger.sms.unsafeMutableAddressor()
{
  if (qword_267C8 != -1)
  {
    swift_once();
  }

  v0 = sub_12458();

  return sub_116D8(v0, static Logger.sms);
}

uint64_t sub_11E94()
{
  v0 = sub_12458();
  sub_11F9C(v0, static Logger.sms);
  sub_116D8(v0, static Logger.sms);
  sub_12428();
  return sub_12448();
}

uint64_t static Logger.sms.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_267C8 != -1)
  {
    swift_once();
  }

  v2 = sub_12458();
  v3 = sub_116D8(v2, static Logger.sms);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_11F9C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_12000()
{
  sub_B434();
  sub_B428();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_12070(void *a1)
{

  objc_end_catch();
}

void sub_120A4()
{
  sub_B414();
  sub_B428();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1215C(void *a1)
{
  v1 = [a1 guid];
  sub_B434();
  sub_B440(&dword_0, v2, v3, "Found a chat that is not 1-1 chat for message relay: %@", v4, v5, v6, v7);
}

void sub_121E4()
{
  sub_B434();
  sub_B428();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_12254(void *a1)
{
  v1 = [a1 guid];
  sub_B434();
  sub_B440(&dword_0, v2, v3, "Message failed to relay: %@", v4, v5, v6, v7);
}

void sub_1232C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getDMFEmergencyModeMonitorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SMSMessageSender.m" lineNumber:34 description:{@"Unable to find class %s", "DMFEmergencyModeMonitor"}];

  __break(1u);
}

void sub_123A8(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *DeviceManagementLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SMSMessageSender.m" lineNumber:33 description:{@"%s", *a1}];

  __break(1u);
  sub_12428();
}