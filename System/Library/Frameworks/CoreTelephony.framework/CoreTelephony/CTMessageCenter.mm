@interface CTMessageCenter
+ (id)sharedMessageCenter;
- ($2825F4736939C4A6D3AD43837233062D)isDeliveryReportsEnabled:(BOOL *)enabled;
- ($2825F4736939C4A6D3AD43837233062D)isMmsEnabledForSub:(id)sub enabled:(BOOL *)enabled;
- ($2825F4736939C4A6D3AD43837233062D)send:(id)send withMoreToFollow:(BOOL)follow;
- ($2825F4736939C4A6D3AD43837233062D)sendMMS:(id)s;
- ($2825F4736939C4A6D3AD43837233062D)sendMMSFromData:(id)data messageId:(unsigned int)id subSlot:(int64_t)slot;
- ($2825F4736939C4A6D3AD43837233062D)sendSMS:(id)s withMoreToFollow:(BOOL)follow trackingID:(unsigned int *)d;
- (BOOL)getCharacterCount:(int64_t *)count andMessageSplitThreshold:(int64_t *)threshold forSmsText:(id)text;
- (BOOL)getCharacterCountForSub:(id)sub count:(int64_t *)count andMessageSplitThreshold:(int64_t *)threshold forSmsText:(id)text;
- (BOOL)isMmsConfigured;
- (BOOL)isMmsConfiguredForSub:(id)sub;
- (BOOL)isMmsEnabled;
- (BOOL)sendBinarySMS:(id)s trackingID:(unsigned int *)d;
- (BOOL)sendSMSWithText:(id)text serviceCenter:(id)center toAddress:(id)address trackingID:(unsigned int *)d;
- (BOOL)sendSMSWithText:(id)text serviceCenter:(id)center toAddress:(id)address withID:(unsigned int)d;
- (BOOL)sendSMSWithText:(id)text serviceCenter:(id)center toAddress:(id)address withMoreToFollow:(BOOL)follow withID:(unsigned int)d;
- (BOOL)sendSMSWithText:(id)text text:(id)a4 serviceCenter:(id)center toAddress:(id)address;
- (BOOL)sendSMSWithText:(id)text text:(id)a4 serviceCenter:(id)center toAddress:(id)address trackingID:(unsigned int *)d;
- (BOOL)sendSMSWithText:(id)text text:(id)a4 serviceCenter:(id)center toAddress:(id)address withMoreToFollow:(BOOL)follow withID:(unsigned int)d;
- (BOOL)simulateDeferredMessage;
- (BOOL)simulateSmsReceived:(id)received;
- (CTMessageCenter)init;
- (id)allIncomingMessages;
- (id)decodeMessage:(id)message;
- (id)incomingMessageWithId:(unsigned int)id;
- (int)incomingMessageCount;
- (void)addMessageOfType:(int)type toArray:(id)array withIdsFromArray:(id)fromArray;
- (void)dealloc;
- (void)emergencySessionIntentEnd:(id)end;
- (void)emergencySessionIntentStart:(id)start;
- (void)sendMessageAsSmsToShortCodeRecipients:(id)recipients andReplaceData:(id *)data;
@end

@implementation CTMessageCenter

+ (id)sharedMessageCenter
{
  result = _sharedMessageCenter;
  if (!_sharedMessageCenter)
  {
    result = objc_alloc_init(CTMessageCenter);
    _sharedMessageCenter = result;
  }

  return result;
}

- (CTMessageCenter)init
{
  v9.receiver = self;
  v9.super_class = CTMessageCenter;
  v2 = [(CTMessageCenter *)&v9 init];
  if (v2)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    v3 = *MEMORY[0x1E695E480];
    v4 = getprogname();
    v5 = CFStringCreateWithFormat(v3, 0, @"%s-CTMessageCenter", v4);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  return v2;
}

- (BOOL)isMmsConfigured
{
  v3 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:1];

  return [(CTMessageCenter *)self isMmsConfiguredForSub:v3];
}

- (void)dealloc
{
  if (_messageCenterServerConnection)
  {
    CFRelease(_messageCenterServerConnection);
  }

  v3.receiver = self;
  v3.super_class = CTMessageCenter;
  [(CTMessageCenter *)&v3 dealloc];
}

- ($2825F4736939C4A6D3AD43837233062D)sendSMS:(id)s withMoreToFollow:(BOOL)follow trackingID:(unsigned int *)d
{
  v66 = *MEMORY[0x1E69E9840];
  if (_messageCenterServerConnection)
  {
    followCopy = follow;
    messageType = [s messageType];
    if (messageType == 1)
    {
      if ([objc_msgSend(s "items")])
      {
        v11 = [objc_msgSend(s "recipients")];
        if (v11 == 1)
        {
          if ([s context])
          {
            v14 = [objc_msgSend(s "context")];
          }

          else
          {
            v19 = CTLogMessageCenter(0, v13);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [CTMessageCenter sendSMS:v19 withMoreToFollow:? trackingID:?];
            }

            v14 = 1;
          }

          v21 = [CTMMSEncoder encodeSms:s];
          if (v21)
          {
            xdict = 0;
            xpc::dict_creator::dict_creator(object);
            xpc::dict_creator::operator()<char const*>("kSmsSendMessage", object, "kRequest", &v59);
            xpc_release(*object);
            xdict = v59;
            v59 = xpc_null_create();
            xpc_release(v59);
            v22 = xpc_int64_create([s messageId]);
            if (!v22)
            {
              v22 = xpc_null_create();
            }

            xpc_dictionary_set_value(xdict, "kSmsMessageID", v22);
            v23 = xpc_null_create();
            xpc_release(v22);
            xpc_release(v23);
            v24 = xpc_int64_create(1);
            if (!v24)
            {
              v24 = xpc_null_create();
            }

            xpc_dictionary_set_value(xdict, "kSmsMessageType", v24);
            v25 = xpc_null_create();
            xpc_release(v24);
            xpc_release(v25);
            ctu::cf_to_xpc(&value, v21, v26);
            xpc_dictionary_set_value(xdict, "kSmsMessageBody", value);
            v27 = value;
            value = xpc_null_create();
            xpc_release(v27);
            xpc_release(value);
            value = 0;
            v28 = xpc_BOOL_create(followCopy);
            if (!v28)
            {
              v28 = xpc_null_create();
            }

            xpc_dictionary_set_value(xdict, "kSmsMoreMessages", v28);
            v29 = xpc_null_create();
            xpc_release(v28);
            xpc_release(v29);
            v30 = xpc_BOOL_create([s bypassSupportedMessageModesCheck]);
            if (!v30)
            {
              v30 = xpc_null_create();
            }

            xpc_dictionary_set_value(xdict, "kBypassSupportedMessageModesCheck", v30);
            v31 = xpc_null_create();
            xpc_release(v30);
            xpc_release(v31);
            v32 = xpc_BOOL_create([s appCheckBypassForCriticalMessaging]);
            if (!v32)
            {
              v32 = xpc_null_create();
            }

            xpc_dictionary_set_value(xdict, "kAppCheckBypassForCriticalMessaging", v32);
            v33 = xpc_null_create();
            xpc_release(v32);
            xpc_release(v33);
            v34 = xpc_int64_create(v14);
            if (!v34)
            {
              v34 = xpc_null_create();
            }

            xpc_dictionary_set_value(xdict, "kSmsSubInstance", v34);
            v35 = xpc_null_create();
            xpc_release(v34);
            xpc_release(v35);
            v36 = xpc_int64_create([s smsType]);
            if (!v36)
            {
              v36 = xpc_null_create();
            }

            xpc_dictionary_set_value(xdict, "kSmsType", v36);
            v37 = xpc_null_create();
            xpc_release(v36);
            xpc_release(v37);
            v40 = CTLogMessageCenter(v38, v39);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              v41 = CTSubscriptionSlotAsString(v14);
              messageId = [s messageId];
              v43 = [(ctu *)v21 length];
              *object = 136315906;
              *&object[4] = v41;
              *&object[12] = 2048;
              *&object[14] = messageId;
              if (followCopy)
              {
                v44 = "true";
              }

              else
              {
                v44 = "false";
              }

              v62 = 2048;
              v63 = v43;
              v64 = 2080;
              v65 = v44;
              _os_log_impl(&dword_182E9B000, v40, OS_LOG_TYPE_INFO, "SMS info context:[%s] Id:[%lu] Length:[%lu] more:[%s]", object, 0x2Au);
            }

            v59 = 0;
            v59 = xpc_null_create();
            v45 = SendXpcMessage(_messageCenterServerConnection, &xdict, &v59);
            v46 = MEMORY[0x1865E16C0](v59);
            if (v46 == MEMORY[0x1E69E9E80])
            {
              v46 = xpc_dictionary_get_value(v59, "kSmsMessageResult");
              if (v46)
              {
                *object = &v59;
                *&object[8] = "kSmsMessageResult";
                xpc::dict::object_proxy::operator xpc::object(object, &v57);
                v48 = xpc::dyn_cast_or_default(&v57, 0);
                xpc_release(v57);
              }

              else
              {
                v48 = 0;
              }

              if (d)
              {
                *object = &v59;
                *&object[8] = "kSmsMessageID";
                xpc::dict::object_proxy::operator xpc::object(object, &v57);
                *d = xpc::dyn_cast_or_default(&v57, 0xFFFFFFFFLL);
                xpc_release(v57);
              }
            }

            else
            {
              v48 = 0;
            }

            if (HIDWORD(v45) || v48)
            {
              v53 = HIDWORD(v45);
              if (!HIDWORD(v45))
              {
                v54 = CTLogMessageCenter(v46, v47);
                if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                {
                  messageId2 = [s messageId];
                  *object = 67109120;
                  *&object[4] = messageId2;
                  _os_log_impl(&dword_182E9B000, v54, OS_LOG_TYPE_INFO, "Queued messageId %u", object, 8u);
                }

                v53 = 0;
                goto LABEL_61;
              }
            }

            else
            {
              v52 = CTLogMessageCenter(v46, v47);
              v46 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
              if (v46)
              {
                -[CTMessageCenter sendSMS:withMoreToFollow:trackingID:].cold.4(object, [s messageId], v52);
              }

              v53 = 0xFFFFFFFFLL;
            }

            v56 = CTLogMessageCenter(v46, v47);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              [CTMessageCenter sendSMS:withMoreToFollow:trackingID:];
            }

            v45 = 2;
LABEL_61:
            xpc_release(v59);
            xpc_release(xdict);
            v50 = v53 << 32;
            return (v45 | v50);
          }

          v49 = CTLogMessageCenter(0, v20);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            [CTMessageCenter sendSMS:withMoreToFollow:trackingID:];
          }
        }

        else
        {
          v18 = CTLogMessageCenter(v11, v12);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [CTMessageCenter sendSMS:withMoreToFollow:trackingID:];
          }
        }
      }

      else
      {
        v17 = CTLogMessageCenter(0, v10);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [CTMessageCenter sendSMS:withMoreToFollow:trackingID:];
        }
      }
    }

    else
    {
      v16 = CTLogMessageCenter(messageType, v9);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CTMessageCenter sendSMS:s withMoreToFollow:v16 trackingID:?];
      }
    }
  }

  else
  {
    v15 = CTLogMessageCenter(self, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter sendSMS:withMoreToFollow:trackingID:];
    }
  }

  v50 = 0xFFFFFFFF00000000;
  v45 = 2;
  return (v45 | v50);
}

- ($2825F4736939C4A6D3AD43837233062D)sendMMSFromData:(id)data messageId:(unsigned int)id subSlot:(int64_t)slot
{
  v43 = *MEMORY[0x1E69E9840];
  if (_messageCenterServerConnection)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kSmsSendMessage", object, "kRequest", &xdict);
    xpc_release(*object);
    v8 = xdict;
    v37 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    v9 = xpc_int64_create(id);
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, "kSmsMessageID", v9);
    v10 = xpc_null_create();
    xpc_release(v9);
    xpc_release(v10);
    v11 = xpc_int64_create(2);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, "kSmsMessageType", v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
    ctu::cf_to_xpc(&value, data, v13);
    xpc_dictionary_set_value(v8, "kSmsMessageBody", value);
    v14 = value;
    value = xpc_null_create();
    xpc_release(v14);
    xpc_release(value);
    value = 0;
    v15 = xpc_BOOL_create(0);
    if (!v15)
    {
      v15 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, "kSmsMoreMessages", v15);
    v16 = xpc_null_create();
    xpc_release(v15);
    xpc_release(v16);
    v17 = xpc_int64_create(slot);
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, "kSmsSubInstance", v17);
    v18 = xpc_null_create();
    xpc_release(v17);
    xpc_release(v18);
    v21 = CTLogMessageCenter(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = CTSubscriptionSlotAsString(slot);
      v23 = [data length];
      *object = 136315906;
      *&object[4] = v22;
      *&object[12] = 2048;
      *&object[14] = id;
      v39 = 2048;
      v40 = v23;
      v41 = 2080;
      v42 = "false";
      _os_log_impl(&dword_182E9B000, v21, OS_LOG_TYPE_INFO, "MMS info context:[%s] Id:[%lu] Length:[%lu] more:[%s]", object, 0x2Au);
    }

    xdict = xpc_null_create();
    v24 = SendXpcMessage(_messageCenterServerConnection, &v37, &xdict);
    v25 = MEMORY[0x1865E16C0](xdict);
    if (v25 == MEMORY[0x1E69E9E80] && (v25 = xpc_dictionary_get_value(xdict, "kSmsMessageResult")) != 0)
    {
      *object = &xdict;
      *&object[8] = "kSmsMessageResult";
      xpc::dict::object_proxy::operator xpc::object(object, &v34);
      v30 = xpc::dyn_cast_or_default(&v34, 0);
      xpc_release(v34);
      v27 = v30 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (HIDWORD(v24))
    {
      v32 = CTLogMessageCenter(v25, v26);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [CTMessageCenter sendMMSFromData:messageId:subSlot:];
      }

      v31 = v24 & 0xFFFFFFFF00000000;
      v24 = 2;
    }

    else
    {
      if (v27)
      {
        v31 = 0xFFFFFFFF00000000;
      }

      else
      {
        v31 = 0;
      }

      if (v27)
      {
        v24 = 2;
      }
    }

    xpc_release(xdict);
    xpc_release(v37);
    return (v24 | v31);
  }

  else
  {
    v28 = 0xFFFFFFFF00000002;
    v29 = CTLogMessageCenter(self, a2);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter sendMMSFromData:messageId:subSlot:];
    }
  }

  return v28;
}

- (void)sendMessageAsSmsToShortCodeRecipients:(id)recipients andReplaceData:(id *)data
{
  if (recipients)
  {
    recipients = [recipients recipients];
    v8 = [recipients count];
    if (v8 >= 2)
    {
      objectEnumerator = [recipients objectEnumerator];
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (!v10)
      {
        return;
      }

      v11 = v10;
      dataCopy = data;
      nextObject = [objectEnumerator nextObject];
      if (nextObject)
      {
        nextObject2 = nextObject;
        do
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([nextObject2 isShortCode])
            {
              [v11 addObject:nextObject2];
              v14 = [objc_msgSend(recipients "items")];
              if (![objc_msgSend(v14 "contentType")] || (v14 = objc_msgSend(objc_msgSend(recipients, "items"), "objectAtIndex:", 1), !objc_msgSend(objc_msgSend(v14, "contentType"), "caseInsensitiveCompare:", @"text/plain")))
              {
                if (v14)
                {
                  if ([v11 count] == v8)
                  {
                    messageId = [recipients messageId];
                  }

                  else
                  {
                    messageId = 999999999;
                  }

                  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(objc_msgSend(v14 length:"data") encoding:{"bytes"), objc_msgSend(objc_msgSend(v14, "data"), "length"), 4}];
                  -[CTMessageCenter sendSMSWithText:text:serviceCenter:toAddress:withID:](self, "sendSMSWithText:text:serviceCenter:toAddress:withID:", [recipients context], v16, 0, objc_msgSend(nextObject2, "canonicalFormat"), messageId);
                }
              }
            }
          }

          nextObject2 = [objectEnumerator nextObject];
        }

        while (nextObject2);
      }

      if ([v11 count])
      {
        [recipients removeRecipientsInArray:v11];
      }

      data = dataCopy;
    }

    v17 = [objc_msgSend(recipients "recipients")];
    if (v17 != v8)
    {
      if (data && v17)
      {

        v18 = [CTMMSEncoder encodeMessage:recipients];
LABEL_23:
        *data = v18;
        return;
      }

      if (!v17)
      {
        [recipients setMessageType:1];
        if (data)
        {

          v18 = 0;
          goto LABEL_23;
        }
      }
    }
  }
}

- ($2825F4736939C4A6D3AD43837233062D)sendMMS:(id)s
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = [CTMMSEncoder encodeMessage:?];
  if (!v22)
  {
    v13 = CTLogMessageCenter(0, v5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter sendMMS:];
    }

    return 0;
  }

  MobileUser = _CFStringGetMobileUser();
  v7 = CFPreferencesCopyValue(@"SendTextMMSToShortCodeAsSMS", @"com.apple.carrier_1", MobileUser, *MEMORY[0x1E695E898]);
  if (v7)
  {
    v8 = v7;
    v9 = CFGetTypeID(v7);
    if (v9 == CFBooleanGetTypeID() && CFEqual(v8, *MEMORY[0x1E695E4D0]))
    {
      v10 = [objc_msgSend(s "items")];
      items = [s items];
      if (v10 == 1)
      {
        v12 = [items objectAtIndex:0];
      }

      else
      {
        if ([items count] != 2)
        {
          goto LABEL_13;
        }

        v14 = [objc_msgSend(s "items")];
        v15 = [objc_msgSend(s "items")];
        if ([objc_msgSend(v14 "contentType")])
        {
          goto LABEL_13;
        }

        v12 = v15;
      }

      if (![objc_msgSend(v12 "contentType")])
      {
        [(CTMessageCenter *)self sendMessageAsSmsToShortCodeRecipients:s andReplaceData:&v22];
      }
    }

LABEL_13:
    CFRelease(v8);
    if (v22)
    {
      goto LABEL_14;
    }

    return 0;
  }

LABEL_14:
  if ([s context])
  {
    v17 = [objc_msgSend(s "context")];
  }

  else
  {
    v19 = CTLogMessageCenter(0, v16);
    v17 = 1;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v17 = 1;
      v20 = CTSubscriptionSlotAsString(1);
      *buf = 136315138;
      v24 = v20;
      _os_log_impl(&dword_182E9B000, v19, OS_LOG_TYPE_INFO, "Forcing MMS to:%s", buf, 0xCu);
    }
  }

  v18 = -[CTMessageCenter sendMMSFromData:messageId:subSlot:](self, "sendMMSFromData:messageId:subSlot:", v22, [s messageId], v17);

  return v18;
}

- ($2825F4736939C4A6D3AD43837233062D)send:(id)send withMoreToFollow:(BOOL)follow
{
  followCopy = follow;
  if ([send messageId] != -1)
  {
    if (![send messageType])
    {
      if ([objc_msgSend(send "items")] == 1 && !objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(send, "items"), "objectAtIndex:", 0), "contentType"), "caseInsensitiveCompare:", @"text/plain"))
      {
        [send setMessageType:1];
      }

      if (![send messageType])
      {
        [send setMessageType:2];
      }
    }

    messageType = [send messageType];
    if (messageType)
    {
      if (messageType == 2)
      {
        v9 = [(CTMessageCenter *)self sendMMS:send];
        goto LABEL_14;
      }

      if (messageType == 1)
      {
        v9 = [(CTMessageCenter *)self sendSMS:send withMoreToFollow:followCopy trackingID:0];
LABEL_14:
        v10 = *&v9 & 0xFFFFFFFF00000000;
        return (v9.var0 | v10);
      }
    }

    else
    {
      v11 = CTLogMessageCenter(messageType, v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CTMessageCenter send:withMoreToFollow:];
      }
    }

    v10 = 0;
    v9.var0 = 0;
    return (v9.var0 | v10);
  }

  v9.var0 = 0;
  v10 = 0xFFFFFFFF00000000;
  return (v9.var0 | v10);
}

- (id)incomingMessageWithId:(unsigned int)id
{
  v38[2] = *MEMORY[0x1E69E9840];
  if (_messageCenterServerConnection)
  {
    v3 = *&id;
    xdict = 0;
    v36 = xpc_null_create();
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kSmsRetrieveMessage", &object, "kRequest", &v34);
    xpc_release(object);
    xdict = v34;
    v34 = xpc_null_create();
    xpc_release(v34);
    v4 = xpc_int64_create(v3);
    if (!v4)
    {
      v4 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, "kSmsMessageID", v4);
    v5 = xpc_null_create();
    xpc_release(v4);
    xpc_release(v5);
    v6 = SendXpcMessage(_messageCenterServerConnection, &xdict, &v36);
    if (HIDWORD(v6))
    {
      v15 = CTLogMessageCenter(v6, v7);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CTMessageCenter incomingMessageWithId:];
      }

      v11 = 0;
    }

    else
    {
      object = &v36;
      v38[0] = "kSmsReplyEnabled";
      xpc::dict::object_proxy::operator xpc::object(&object, &v34);
      v8 = xpc::dyn_cast_or_default(&v34, 0);
      xpc_release(v34);
      v9 = MEMORY[0x1865E16C0](v36);
      if (v9 == MEMORY[0x1E69E9E80])
      {
        value = xpc_dictionary_get_value(v36, "kSmsMessageBody");
        ctu::xpc_to_cf(&v34, value, v19);
        ctu::cf::CFSharedRef<__CFData const>::CFSharedRef<void const,void>(&object, &v34);
        v16 = object;
        object = 0;
        if (v34)
        {
          CFRelease(v34);
        }

        v20 = xpc_dictionary_get_value(v36, "kSmsMobileCountryCode");
        ctu::xpc_to_cf(&v34, v20, v21);
        ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&object, &v34);
        v11 = object;
        object = 0;
        if (v34)
        {
          CFRelease(v34);
        }

        object = &v36;
        v38[0] = "kSmsMessageType";
        xpc::dict::object_proxy::operator xpc::object(&object, &v34);
        v22 = xpc::dyn_cast_or_default(&v34, 0);
        xpc_release(v34);
        if (v16)
        {
          if (!CFDataGetLength(v16))
          {
            v25 = CTLogMessageCenter(0, v23);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [CTMessageCenter incomingMessageWithId:];
            }

            goto LABEL_16;
          }

          if (xpc_dictionary_get_value(v36, "kSmsSubInstance"))
          {
            object = &v36;
            v38[0] = "kSmsSubInstance";
            xpc::dict::object_proxy::operator xpc::object(&object, &v34);
            v24 = xpc::dyn_cast_or_default(&v34, 0);
            xpc_release(v34);
          }

          else
          {
            v24 = 0;
          }

          if (v22 == 1)
          {
            v28 = [CTMMSEncoder decodeSmsFromData:[[CTXPCServiceSubscriptionContext alloc] initWithSlot:v24] data:v16];
            v14 = v28;
            if (!v28)
            {
              v33 = CTLogMessageCenter(0, v29);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                [CTMessageCenter incomingMessageWithId:];
              }

              goto LABEL_16;
            }

            v30 = CTLogMessageCenter(v28, v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              uniqueIdentifier = [v14 uniqueIdentifier];
              LODWORD(object) = 67109378;
              HIDWORD(object) = v3;
              LOWORD(v38[0]) = 2114;
              *(v38 + 2) = uniqueIdentifier;
              _os_log_impl(&dword_182E9B000, v30, OS_LOG_TYPE_DEFAULT, "Message ID %u UUID %{public}@", &object, 0x12u);
            }

            [v14 setReplyEnabled:v8];
          }

          else
          {
            if (v22 != 2)
            {
              goto LABEL_16;
            }

            v26 = [CTMMSEncoder decodeMessageFromData:[[CTXPCServiceSubscriptionContext alloc] initWithSlot:v24] data:v16];
            v14 = v26;
            if (!v26)
            {
              v32 = CTLogMessageCenter(0, v27);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                [CTMessageCenter incomingMessageWithId:];
              }

              goto LABEL_16;
            }

            [v26 setReplyEnabled:v8];
          }

          [v14 setCountryCode:v11];
          [v14 setMessageId:v3];
          goto LABEL_17;
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = CTLogMessageCenter(v9, v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CTMessageCenter incomingMessageWithId:];
      }
    }

    v16 = 0;
LABEL_16:
    v14 = 0;
LABEL_17:
    xpc_release(xdict);
    xpc_release(v36);
    if (v11)
    {
      CFRelease(v11);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    return v14;
  }

  v13 = CTLogMessageCenter(self, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [CTMessageCenter incomingMessageWithId:];
  }

  return 0;
}

- (int)incomingMessageCount
{
  if (_messageCenterServerConnection)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kSmsGetIncomingMessageCount", object, "kRequest", &v10);
    xpc_release(object[0]);
    v11 = v10;
    v10 = xpc_null_create();
    xpc_release(v10);
    v10 = xpc_null_create();
    v2 = SendXpcMessage(_messageCenterServerConnection, &v11, &v10);
    if (HIDWORD(v2))
    {
      v6 = CTLogMessageCenter(v2, v3);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CTMessageCenter incomingMessageCount];
      }

      v4 = -1;
    }

    else if (MEMORY[0x1865E16C0](v10) == MEMORY[0x1E69E9E80])
    {
      object[0] = &v10;
      object[1] = "kSmsIncomingMessageCount";
      xpc::dict::object_proxy::operator xpc::object(object, &v9);
      v4 = xpc::dyn_cast_or_default(&v9, 0);
      xpc_release(v9);
    }

    else
    {
      v4 = 0;
    }

    xpc_release(v10);
    xpc_release(v11);
  }

  else
  {
    v5 = CTLogMessageCenter(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter incomingMessageCount];
    }

    return 0;
  }

  return v4;
}

- (void)addMessageOfType:(int)type toArray:(id)array withIdsFromArray:(id)fromArray
{
  v24 = *MEMORY[0x1E69E9840];
  objectEnumerator = [fromArray objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    if (type == 2)
    {
      v12 = "mms";
    }

    else
    {
      v12 = "sms";
    }

    *&v10 = 134218498;
    v17 = v10;
    do
    {
      v13 = -[CTMessageCenter incomingMessageWithId:](self, "incomingMessageWithId:", [nextObject2 intValue]);
      if (v13)
      {
        [array addObject:v13];
      }

      else
      {
        v15 = CTLogMessageCenter(0, v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          integerValue = [nextObject2 integerValue];
          *buf = v17;
          v19 = integerValue;
          v20 = 1024;
          typeCopy = type;
          v22 = 2080;
          v23 = v12;
          _os_log_error_impl(&dword_182E9B000, v15, OS_LOG_TYPE_ERROR, "couldn't get message %ld, type %d (%s)", buf, 0x1Cu);
        }
      }

      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (id)allIncomingMessages
{
  if (_messageCenterServerConnection)
  {
    object = 0;
    v3 = xpc::dict_creator::dict_creator(&v16);
    xpc::dict_creator::operator()<char const*>("kSmsGetRecievedMessageIds", v3, "kRequest", &v14);
    xpc_release(v16);
    object = v14;
    v14 = xpc_null_create();
    xpc_release(v14);
    v16 = 0;
    v16 = xpc_null_create();
    if (!(SendXpcMessage(_messageCenterServerConnection, &object, &v16) >> 32) && MEMORY[0x1865E16C0](v16) == MEMORY[0x1E69E9E80])
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = 0;
      value = xpc_dictionary_get_value(v16, "kSmsRecievedSmsMessageIds");
      ctu::xpc_to_cf(&cf, value, v9);
      ctu::cf::CFSharedRef<__CFArray const>::CFSharedRef<void const,void>(&v14, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v14)
      {
        [(CTMessageCenter *)self addMessageOfType:1 toArray:v7 withIdsFromArray:?];
      }

      cf = 0;
      v10 = xpc_dictionary_get_value(v16, "kSmsRecievedMmsMessageIds");
      ctu::xpc_to_cf(&v12, v10, v11);
      ctu::cf::CFSharedRef<__CFArray const>::CFSharedRef<void const,void>(&cf, &v12);
      if (v12)
      {
        CFRelease(v12);
      }

      if (cf)
      {
        [(CTMessageCenter *)self addMessageOfType:2 toArray:v7 withIdsFromArray:?];
      }

      array = v7;
      if (cf)
      {
        CFRelease(cf);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    xpc_release(v16);
    xpc_release(object);
  }

  else
  {
    v5 = CTLogMessageCenter(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter allIncomingMessages];
    }

    return [MEMORY[0x1E695DEC8] array];
  }

  return array;
}

- (id)decodeMessage:(id)message
{
  v4 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:1];

  return [CTMMSEncoder decodeMessageFromData:v4 data:message];
}

- ($2825F4736939C4A6D3AD43837233062D)isDeliveryReportsEnabled:(BOOL *)enabled
{
  if (enabled)
  {
    *enabled = 0;
  }

  return 0;
}

- (BOOL)isMmsEnabled
{
  v3 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:1];

  return [(CTMessageCenter *)self isMmsConfiguredForSub:v3];
}

- (BOOL)isMmsConfiguredForSub:(id)sub
{
  v36 = *MEMORY[0x1E69E9840];
  if (!_messageCenterServerConnection)
  {
    v14 = CTLogMessageCenter(self, a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter isMmsConfiguredForSub:];
    }

    LOBYTE(v15) = 0;
    return v15;
  }

  xpc::dict_creator::dict_creator(object);
  xpc::dict_creator::operator()<char const*>("kSmsIsMmsConfigured", object, "kRequest", &v33);
  xpc_release(*object);
  v4 = v33;
  v34 = v33;
  v33 = xpc_null_create();
  xpc_release(v33);
  if (sub)
  {
    slotID = [sub slotID];
    v9 = CTLogMessageCenter(slotID, v8);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v10 = CTSubscriptionSlotAsString(slotID);
    *object = 136315138;
    *&object[4] = v10;
    v11 = "MMS configured check requested for slot %s";
    v12 = v9;
    v13 = 12;
  }

  else
  {
    v16 = CTLogMessageCenter(v5, v6);
    slotID = 1;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    *object = 0;
    v11 = "MMS configured check slot forced to CTSubscriptionSlotOne";
    slotID = 1;
    v12 = v16;
    v13 = 2;
  }

  _os_log_impl(&dword_182E9B000, v12, OS_LOG_TYPE_INFO, v11, object, v13);
LABEL_11:
  v17 = xpc_int64_create(slotID);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "kSmsSubInstance", v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  if ([CTMessageCenter isMmsConfiguredForSub:]::kOnceToken != -1)
  {
    [CTMessageCenter isMmsConfiguredForSub:];
  }

  if ([CTMessageCenter isMmsConfiguredForSub:]::kMaxRetries)
  {
    v19 = 3;
  }

  else
  {
    v19 = 1;
  }

  v20 = MEMORY[0x1E69E9E80];
  while (1)
  {
    v33 = 0;
    v33 = xpc_null_create();
    v21 = SendXpcMessage(_messageCenterServerConnection, &v34, &v33);
    v23 = v21;
    v24 = HIDWORD(v21);
    if (!HIDWORD(v21))
    {
      v21 = MEMORY[0x1865E16C0](v33);
      if (v21 == v20)
      {
        break;
      }
    }

    v25 = CTLogMessageCenter(v21, v22);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *object = 136315650;
      *&object[4] = "kSmsIsMmsConfigured";
      *&object[12] = 1024;
      *&object[14] = v23;
      *&object[18] = 1024;
      *&object[20] = v24;
      _os_log_error_impl(&dword_182E9B000, v25, OS_LOG_TYPE_ERROR, "MMS configured check for slot %s failed (%d, %d) retrying...", object, 0x18u);
    }

    xpc_release(v33);
    if (!--v19)
    {
      LOBYTE(v15) = 0;
      goto LABEL_30;
    }
  }

  *object = &v33;
  *&object[8] = "kSmsMmsIsConfigured";
  xpc::dict::object_proxy::operator xpc::object(object, &v32);
  v15 = xpc::dyn_cast_or_default(&v32, 0);
  xpc_release(v32);
  v28 = CTLogMessageCenter(v26, v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = CTSubscriptionSlotAsString(slotID);
    v30 = "NO";
    if (v15)
    {
      v30 = "YES";
    }

    *object = 136315394;
    *&object[4] = v29;
    *&object[12] = 2080;
    *&object[14] = v30;
    _os_log_impl(&dword_182E9B000, v28, OS_LOG_TYPE_INFO, "MMS configured check for slot %s: %s", object, 0x16u);
  }

  xpc_release(v33);
LABEL_30:
  xpc_release(v34);
  return v15;
}

void __41__CTMessageCenter_isMmsConfiguredForSub___block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  theString1 = 0;
  *buf = MGCopyAnswer();
  ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&theString1, buf);
  if (CFStringCompare(theString1, @"iPhone", 0) == kCFCompareEqualTo)
  {
    [CTMessageCenter isMmsConfiguredForSub:]::kMaxRetries = 1;
  }

  v0 = sMsgCtrLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 3;
    if (![CTMessageCenter isMmsConfiguredForSub:]::kMaxRetries)
    {
      v1 = 1;
    }

    *buf = 134217984;
    *&buf[4] = v1;
    _os_log_impl(&dword_182E9B000, v0, OS_LOG_TYPE_DEFAULT, "Configuring max is MMS configured retries as %zu", buf, 0xCu);
  }

  if (theString1)
  {
    CFRelease(theString1);
  }
}

- ($2825F4736939C4A6D3AD43837233062D)isMmsEnabledForSub:(id)sub enabled:(BOOL *)enabled
{
  if (!_messageCenterServerConnection)
  {
    v6 = CTLogMessageCenter(self, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter isMmsEnabledForSub:enabled:];
    }

    v7 = 0x3600000000;
    goto LABEL_11;
  }

  if (!enabled)
  {
    v8 = CTLogMessageCenter(self, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter isMmsEnabledForSub:enabled:];
    }

    v7 = 0x1600000000;
LABEL_11:
    v9 = 1;
    return (v9 | v7);
  }

  if (sub)
  {
    slotID = [sub slotID];
  }

  else
  {
    slotID = 1;
  }

  xpc::dict_creator::dict_creator(object);
  xpc::dict_creator::operator()<char const*>("kSmsIsMmsConfigured", object, "kRequest", &v17);
  xpc_release(object[0]);
  v10 = v17;
  v18 = v17;
  v17 = xpc_null_create();
  xpc_release(v17);
  v11 = xpc_int64_create(slotID);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "kSmsSubInstance", v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v17 = xpc_null_create();
  v13 = SendXpcMessage(_messageCenterServerConnection, &v18, &v17);
  if (!HIDWORD(v13) && MEMORY[0x1865E16C0](v17) == MEMORY[0x1E69E9E80])
  {
    object[0] = &v17;
    object[1] = "kSmsMmsIsConfigured";
    xpc::dict::object_proxy::operator xpc::object(object, &v16);
    *enabled = xpc::dyn_cast_or_default(&v16, 0);
    xpc_release(v16);
  }

  v7 = v13 & 0xFFFFFFFF00000000;
  xpc_release(v17);
  xpc_release(v18);
  v9 = v13;
  return (v9 | v7);
}

- (BOOL)sendSMSWithText:(id)text text:(id)a4 serviceCenter:(id)center toAddress:(id)address
{
  v28 = *MEMORY[0x1E69E9840];
  if (text && [text slotID] != 1)
  {
    slotID = [text slotID];
    if (slotID != 2)
    {
      v21 = CTLogMessageCenter(slotID, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_182E9B000, v21, OS_LOG_TYPE_INFO, "Invalid Slot context", buf, 2u);
      }

      return 0;
    }

    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = objc_alloc_init(CTMessage);
  v13 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:v11];
  [(CTMessage *)v12 setContext:v13];
  v23 = -1;
  if (!v12)
  {
    return 0;
  }

  if (a4)
  {
    [(CTMessage *)v12 addText:a4];
  }

  if (!address)
  {

    return 0;
  }

  [(CTMessage *)v12 addRecipient:address];
  if (center)
  {
    [(CTMessage *)v12 setServiceCenter:[CTPhoneNumber phoneNumberWithDigits:[(CTXPCServiceSubscriptionContext *)v13 slotID] digits:center countryCode:0]];
  }

  [(CTMessage *)v12 setMessageId:0xFFFFFFFFLL];
  [(CTMessage *)v12 setMessageType:1];
  v14 = [(CTMessageCenter *)self sendSMS:v12 withMoreToFollow:0 trackingID:&v23]== 0;

  v17 = CTLogMessageCenter(v15, v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    uTF8String = [address UTF8String];
    *buf = 136315394;
    v25 = uTF8String;
    v26 = 1024;
    v27 = v23;
    _os_log_impl(&dword_182E9B000, v17, OS_LOG_TYPE_INFO, "Tracking sms to destination %s with message id: %u", buf, 0x12u);
  }

  return v14;
}

- (BOOL)sendSMSWithText:(id)text serviceCenter:(id)center toAddress:(id)address withID:(unsigned int)d
{
  v6 = *&d;
  v11 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:1];

  return [(CTMessageCenter *)self sendSMSWithText:v11 text:text serviceCenter:center toAddress:address withMoreToFollow:0 withID:v6];
}

- (BOOL)sendSMSWithText:(id)text serviceCenter:(id)center toAddress:(id)address trackingID:(unsigned int *)d
{
  v11 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:1];

  return [(CTMessageCenter *)self sendSMSWithText:v11 text:text serviceCenter:center toAddress:address trackingID:d];
}

- (BOOL)sendSMSWithText:(id)text text:(id)a4 serviceCenter:(id)center toAddress:(id)address trackingID:(unsigned int *)d
{
  v29 = *MEMORY[0x1E69E9840];
  if (!d)
  {
    return 0;
  }

  *d = -1;
  v13 = objc_alloc_init(CTMessage);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  [(CTMessage *)v13 setContext:text];
  if (a4)
  {
    [(CTMessage *)v14 addText:a4];
  }

  if (!address)
  {

    return 0;
  }

  [(CTMessage *)v14 addRecipient:address];
  if (center)
  {
    -[CTMessage setServiceCenter:](v14, "setServiceCenter:", +[CTPhoneNumber phoneNumberWithDigits:digits:countryCode:](CTPhoneNumber, "phoneNumberWithDigits:digits:countryCode:", [text slotID], center, 0));
  }

  [(CTMessage *)v14 setMessageType:1];
  v15 = [(CTMessageCenter *)self sendSMS:v14 withMoreToFollow:0 trackingID:d]== 0;

  v18 = CTLogMessageCenter(v16, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    uTF8String = [address UTF8String];
    uTF8String2 = [center UTF8String];
    v21 = *d;
    v23 = 136315650;
    v24 = uTF8String;
    v25 = 2080;
    v26 = uTF8String2;
    v27 = 1024;
    v28 = v21;
    _os_log_impl(&dword_182E9B000, v18, OS_LOG_TYPE_INFO, "Tracking sms to destination %s service center %s with message id: %u", &v23, 0x1Cu);
  }

  return v15;
}

- (BOOL)sendSMSWithText:(id)text serviceCenter:(id)center toAddress:(id)address withMoreToFollow:(BOOL)follow withID:(unsigned int)d
{
  v7 = *&d;
  followCopy = follow;
  v13 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:1];

  return [(CTMessageCenter *)self sendSMSWithText:v13 text:text serviceCenter:center toAddress:address withMoreToFollow:followCopy withID:v7];
}

- (BOOL)sendSMSWithText:(id)text text:(id)a4 serviceCenter:(id)center toAddress:(id)address withMoreToFollow:(BOOL)follow withID:(unsigned int)d
{
  v8 = *&d;
  followCopy = follow;
  v15 = objc_alloc_init(CTMessage);
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  [(CTMessage *)v15 setContext:text];
  if (a4)
  {
    [(CTMessage *)v16 addText:a4];
  }

  if (address)
  {
    [(CTMessage *)v16 addRecipient:address];
    if (center)
    {
      -[CTMessage setServiceCenter:](v16, "setServiceCenter:", +[CTPhoneNumber phoneNumberWithDigits:digits:countryCode:](CTPhoneNumber, "phoneNumberWithDigits:digits:countryCode:", [text slotID], center, 0));
    }

    [(CTMessage *)v16 setMessageId:v8];
    [(CTMessage *)v16 setMessageType:1];
    v17 = [(CTMessageCenter *)self send:v16 withMoreToFollow:followCopy]== 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)getCharacterCountForSub:(id)sub count:(int64_t *)count andMessageSplitThreshold:(int64_t *)threshold forSmsText:(id)text
{
  v29 = *MEMORY[0x1E69E9840];
  if (_messageCenterServerConnection)
  {
    LOBYTE(v7) = 0;
    if (threshold && count && text)
    {
      xpc::dict_creator::dict_creator(&object);
      xpc::dict_creator::operator()<char const*>("kSmsGetCharacterCountAndThresholdForMessage", &object, "kRequest", &v26);
      xpc_release(object);
      v11 = v26;
      v27 = v26;
      v26 = xpc_null_create();
      xpc_release(v26);
      v26 = xpc_null_create();
      ctu::cf_to_xpc(&value, text, v12);
      xpc_dictionary_set_value(v11, "kSmsMessageBody", value);
      v13 = value;
      value = xpc_null_create();
      xpc_release(v13);
      xpc_release(value);
      value = 0;
      if (sub)
      {
        slotID = [sub slotID];
        v18 = CTLogMessageCenter(slotID, v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = CTSubscriptionSlotAsString(slotID);
          LODWORD(object) = 136315138;
          *(&object + 4) = v19;
          _os_log_impl(&dword_182E9B000, v18, OS_LOG_TYPE_INFO, "Character count requested for Slot %s", &object, 0xCu);
        }
      }

      else
      {
        v20 = CTLogMessageCenter(v14, v15);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [CTMessageCenter getCharacterCountForSub:count:andMessageSplitThreshold:forSmsText:];
        }

        slotID = 1;
      }

      v21 = xpc_int64_create(slotID);
      if (!v21)
      {
        v21 = xpc_null_create();
      }

      xpc_dictionary_set_value(v11, "kSmsSubInstance", v21);
      v22 = xpc_null_create();
      xpc_release(v21);
      xpc_release(v22);
      if (!(SendXpcMessage(_messageCenterServerConnection, &v27, &v26) >> 32) && MEMORY[0x1865E16C0](v26) == MEMORY[0x1E69E9E80])
      {
        *&object = &v26;
        *(&object + 1) = "kDidSucceed";
        xpc::dict::object_proxy::operator xpc::object(&object, &v24);
        v7 = xpc::dyn_cast_or_default(&v24, 0);
        xpc_release(v24);
        if (v7)
        {
          *&object = &v26;
          *(&object + 1) = "kSmsCharacterCount";
          xpc::dict::object_proxy::operator xpc::object(&object, &v24);
          *count = xpc::dyn_cast_or_default(&v24, 0);
          xpc_release(v24);
          *&object = &v26;
          *(&object + 1) = "kSmsThreshold";
          xpc::dict::object_proxy::operator xpc::object(&object, &v24);
          *threshold = xpc::dyn_cast_or_default(&v24, 0);
          xpc_release(v24);
          LOBYTE(v7) = 1;
        }
      }

      else
      {
        LOBYTE(v7) = 0;
      }

      xpc_release(v26);
      xpc_release(v27);
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)getCharacterCount:(int64_t *)count andMessageSplitThreshold:(int64_t *)threshold forSmsText:(id)text
{
  v9 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:1];

  return [(CTMessageCenter *)self getCharacterCountForSub:v9 count:count andMessageSplitThreshold:threshold forSmsText:text];
}

- (BOOL)simulateSmsReceived:(id)received
{
  if (_messageCenterServerConnection)
  {
    receivedCopy = received;
    if (received)
    {
      xpc::dict_creator::dict_creator(object);
      xpc::dict_creator::operator()<char const*>("kSimulateSmsReceived", object, "kRequest", &v12);
      xpc_release(object[0]);
      v4 = v12;
      v13 = v12;
      v12 = xpc_null_create();
      xpc_release(v12);
      v12 = xpc_null_create();
      ctu::cf_to_xpc(&value, receivedCopy, v5);
      xpc_dictionary_set_value(v4, "kCTSmsPdu", value);
      v6 = value;
      value = xpc_null_create();
      xpc_release(v6);
      xpc_release(value);
      value = 0;
      if (SendXpcMessage(_messageCenterServerConnection, &v13, &v12) >> 32)
      {
        LOBYTE(receivedCopy) = 0;
      }

      else
      {
        object[0] = &v12;
        object[1] = "kDidSucceed";
        xpc::dict::object_proxy::operator xpc::object(object, &v10);
        LOBYTE(receivedCopy) = xpc::dyn_cast_or_default(&v10, 0);
        xpc_release(v10);
      }

      xpc_release(v12);
      xpc_release(v13);
    }
  }

  else
  {
    v7 = CTLogMessageCenter(self, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter simulateSmsReceived:];
    }

    LOBYTE(receivedCopy) = 0;
  }

  return receivedCopy;
}

- (BOOL)simulateDeferredMessage
{
  if (_messageCenterServerConnection)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kSimulateDeferredMessage", object, "kRequest", &v7);
    xpc_release(object[0]);
    v8 = v7;
    v7 = xpc_null_create();
    xpc_release(v7);
    v7 = xpc_null_create();
    if (SendXpcMessage(_messageCenterServerConnection, &v8, &v7) >> 32)
    {
      v2 = 0;
    }

    else
    {
      object[0] = &v7;
      object[1] = "kDidSucceed";
      xpc::dict::object_proxy::operator xpc::object(object, &v6);
      v2 = xpc::dyn_cast_or_default(&v6, 0);
      xpc_release(v6);
    }

    xpc_release(v7);
    xpc_release(v8);
  }

  else
  {
    v3 = CTLogMessageCenter(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter simulateDeferredMessage];
    }

    return 0;
  }

  return v2;
}

- (BOOL)sendBinarySMS:(id)s trackingID:(unsigned int *)d
{
  v49 = *MEMORY[0x1E69E9840];
  if (!s || ![s isValid])
  {
    return 0;
  }

  if ([s context])
  {
    v7 = [objc_msgSend(s "context")];
    v9 = CTLogMessageCenter(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = CTSubscriptionSlotAsString(v7);
      v10 = "sendBinarySMS requested for Slot %s";
      v11 = v9;
      v12 = 12;
LABEL_9:
      _os_log_impl(&dword_182E9B000, v11, OS_LOG_TYPE_INFO, v10, buf, v12);
    }
  }

  else
  {
    v14 = CTLogMessageCenter(0, v6);
    v7 = 1;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v10 = "sendBinarySMS slot forced to CTSubscriptionSlotOne";
      v7 = 1;
      v11 = v14;
      v12 = 2;
      goto LABEL_9;
    }
  }

  xpc::dict_creator::dict_creator(buf);
  xpc::dict_creator::operator()<char const*>("kSmsSendMessage", buf, "kRequest", __p);
  xpc_release(*buf);
  v15 = __p[0];
  v46 = __p[0];
  __p[0] = xpc_null_create();
  xpc_release(__p[0]);
  v16 = xpc_int64_create(1);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, "kSmsMessageType", v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  payload = [s payload];
  ctu::cf_to_xpc(&value, payload, v19);
  xpc_dictionary_set_value(v15, "kSmsBinaryPayload", value);
  v20 = value;
  value = xpc_null_create();
  xpc_release(v20);
  xpc_release(value);
  value = 0;
  v21 = xpc_int64_create([s srcPort]);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, "kSmsApplicationSourcePort", v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = xpc_int64_create([s dstPort]);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, "kSmsApplicationDestinationPort", v23);
  v24 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v24);
  v25 = xpc_int64_create([s portAddressingScheme]);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, "kSmsApplicationAddressingScheme", v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  [s destinationAddress];
  memset(buf, 0, sizeof(buf));
  v48 = 0;
  ctu::cf::assign();
  *__p = *buf;
  v44 = v48;
  if (v48 >= 0)
  {
    v27 = __p;
  }

  else
  {
    v27 = *buf;
  }

  v28 = xpc_string_create(v27);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, "kSmsDestinationAddress", v28);
  v29 = xpc_null_create();
  xpc_release(v28);
  xpc_release(v29);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[0]);
  }

  [s smscAddress];
  memset(buf, 0, sizeof(buf));
  v48 = 0;
  ctu::cf::assign();
  *__p = *buf;
  v44 = v48;
  if (v48 >= 0)
  {
    v30 = __p;
  }

  else
  {
    v30 = *buf;
  }

  v31 = xpc_string_create(v30);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, "kSmsSmscAddress", v31);
  v32 = xpc_null_create();
  xpc_release(v31);
  xpc_release(v32);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p[0]);
  }

  v33 = xpc_BOOL_create(1);
  if (!v33)
  {
    v33 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, "kBypassSupportedMessageModesCheck", v33);
  v34 = xpc_null_create();
  xpc_release(v33);
  xpc_release(v34);
  v35 = xpc_int64_create(v7);
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, "kSmsSubInstance", v35);
  v36 = xpc_null_create();
  xpc_release(v35);
  xpc_release(v36);
  v37 = xpc_int64_create([s smsType]);
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, "kSmsType", v37);
  v38 = xpc_null_create();
  xpc_release(v37);
  xpc_release(v38);
  __p[0] = xpc_null_create();
  v39 = SendXpcMessage(_messageCenterServerConnection, &v46, __p);
  if (MEMORY[0x1865E16C0](__p[0]) == MEMORY[0x1E69E9E80])
  {
    *buf = __p;
    *&buf[8] = "kSmsMessageResult";
    xpc::dict::object_proxy::operator xpc::object(buf, &object);
    v40 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    if (d)
    {
      *buf = __p;
      *&buf[8] = "kSmsMessageID";
      xpc::dict::object_proxy::operator xpc::object(buf, &object);
      *d = xpc::dyn_cast_or_default(&object, 0xFFFFFFFFLL);
      xpc_release(object);
    }
  }

  else
  {
    v40 = 0;
  }

  if (v39)
  {
    v13 = 0;
  }

  else
  {
    v13 = v40;
  }

  xpc_release(__p[0]);
  xpc_release(v46);
  return v13;
}

- (void)emergencySessionIntentStart:(id)start
{
  if (start)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kSmsEmergencyUISession", object, "kRequest", &v19);
    xpc_release(object[0]);
    v4 = v19;
    v20 = v19;
    v19 = xpc_null_create();
    xpc_release(v19);
    v5 = xpc_int64_create([start slotID]);
    if (!v5)
    {
      v5 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, "kSmsSubInstance", v5);
    v6 = xpc_null_create();
    xpc_release(v5);
    xpc_release(v6);
    v7 = xpc_int64_create(1);
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, "kEmergencySessionStatus", v7);
    v8 = xpc_null_create();
    xpc_release(v7);
    xpc_release(v8);
    v19 = xpc_null_create();
    v9 = SendXpcMessage(_messageCenterServerConnection, &v20, &v19);
    if (v9)
    {
      v11 = CTLogMessageCenter(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CTMessageCenter emergencySessionIntentStart:];
      }
    }

    else if (MEMORY[0x1865E16C0](v19) == MEMORY[0x1E69E9E80])
    {
      object[0] = &v19;
      object[1] = "kDidSucceed";
      xpc::dict::object_proxy::operator xpc::object(object, &v18);
      v13 = xpc::dyn_cast_or_default(&v18, 0);
      xpc_release(v18);
      if ((v13 & 1) == 0)
      {
        v16 = CTLogMessageCenter(v14, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [CTMessageCenter emergencySessionIntentStart:];
        }
      }
    }

    xpc_release(v19);
    xpc_release(v20);
  }

  else
  {
    v12 = CTLogMessageCenter(self, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter emergencySessionIntentStart:];
    }
  }
}

- (void)emergencySessionIntentEnd:(id)end
{
  if (end)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kSmsEmergencyUISession", &object, "kRequest", &v19);
    xpc_release(object);
    v4 = v19;
    v20 = v19;
    v19 = xpc_null_create();
    xpc_release(v19);
    v5 = xpc_int64_create([end slotID]);
    if (!v5)
    {
      v5 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, "kSmsSubInstance", v5);
    v6 = xpc_null_create();
    xpc_release(v5);
    xpc_release(v6);
    object = &v20;
    v17 = "kEmergencySessionStatus";
    xpc::dict::object_proxy::operator=(&object, &v18);
    xpc_release(v18);
    v18 = 0;
    v19 = xpc_null_create();
    v7 = SendXpcMessage(_messageCenterServerConnection, &v20, &v19);
    if (v7)
    {
      v9 = CTLogMessageCenter(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CTMessageCenter emergencySessionIntentEnd:];
      }
    }

    else if (MEMORY[0x1865E16C0](v19) == MEMORY[0x1E69E9E80])
    {
      object = &v19;
      v17 = "kDidSucceed";
      xpc::dict::object_proxy::operator xpc::object(&object, &v15);
      v11 = xpc::dyn_cast_or_default(&v15, 0);
      xpc_release(v15);
      if ((v11 & 1) == 0)
      {
        v14 = CTLogMessageCenter(v12, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [CTMessageCenter emergencySessionIntentEnd:];
        }
      }
    }

    xpc_release(v19);
    xpc_release(v20);
  }

  else
  {
    v10 = CTLogMessageCenter(self, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CTMessageCenter emergencySessionIntentEnd:];
    }
  }
}

@end