@interface IMBlastdoor
+ (BOOL)_commandReadyForBlastdoor:(int64_t)blastdoor;
+ (BOOL)_messageBlastdoorMetricsEnabled;
+ (BOOL)supportsFeature:(id)feature;
+ (id)blastdoorInterfaceForSenderContext:(id)context;
+ (id)logger;
+ (id)sendLiteData:(id)data senderContext:(id)context error:(id *)error;
+ (id)sendLiteRelayData:(id)data senderContext:(id)context error:(id *)error;
+ (id)sendRelayGroupMutationData:(id)data error:(id *)error;
+ (id)sendRelayReachabilityRequest:(id)request error:(id *)error;
+ (id)sendRelayReachabilityResponse:(id)response error:(id *)error;
+ (id)sendSatelliteSMSDictionary:(id)dictionary senderContext:(id)context error:(id *)error;
+ (int64_t)_convertErrorToBlastdoorError:(id)error;
+ (void)_askToTapToRadarForGUID:(id)d messageTypeString:(id)string sender:(id)sender errorString:(id)errorString payloadAttachmentURL:(id)l;
+ (void)sendBlastDoorError:(id)error guid:(id)guid messageTypeString:(id)string senderURI:(id)i senderToken:(id)token messageContext:(id)context payloadAttachmentURL:(id)l;
+ (void)sendClearNoticeData:(id)data senderContext:(id)context withCompletionBlock:(id)block;
+ (void)sendCollaborationNoticeActionDictionary:(id)dictionary senderContext:(id)context withCompletionBlock:(id)block;
+ (void)sendCollaborationNoticeData:(id)data senderContext:(id)context withCompletionBlock:(id)block;
+ (void)sendDictionary:(id)dictionary senderContext:(id)context withCompletionBlock:(id)block;
+ (void)sendSMSDictionary:(id)dictionary withCompletionBlock:(id)block;
@end

@implementation IMBlastdoor

+ (id)logger
{
  if (qword_281421270 != -1)
  {
    sub_22B7D3B14();
  }

  v3 = qword_281421280;

  return v3;
}

+ (BOOL)supportsFeature:(id)feature
{
  v12 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  v4 = [MEMORY[0x277D28680] supportsFeature:featureCopy];
  v5 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v8 = 138412546;
    v9 = featureCopy;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Installed BlastDoor supports feature %@ (%@)", &v8, 0x16u);
  }

  return v4;
}

+ (BOOL)_commandReadyForBlastdoor:(int64_t)blastdoor
{
  result = 0;
  switch(blastdoor)
  {
    case 100:
    case 101:
    case 102:
    case 105:
    case 111:
    case 112:
    case 113:
    case 116:
    case 118:
    case 119:
    case 122:
    case 124:
    case 125:
    case 126:
    case 127:
    case 134:
    case 135:
    case 138:
    case 139:
      result = 1;
      break;
    case 103:
    case 104:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 114:
    case 115:
    case 117:
    case 120:
    case 121:
    case 123:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 136:
    case 137:
      return result;
    default:
      result = blastdoor == 170;
      break;
  }

  return result;
}

+ (id)blastdoorInterfaceForSenderContext:(id)context
{
  contextCopy = context;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isUnknownSenderBlastDoorEnabled = [mEMORY[0x277D1A9B8] isUnknownSenderBlastDoorEnabled];

  if (isUnknownSenderBlastDoorEnabled)
  {
    if (qword_281422570 != -1)
    {
      sub_22B7D3B3C();
    }

    if (qword_281422580 != -1)
    {
      sub_22B7D3B50();
    }

    isTrustedSender = [contextCopy isTrustedSender];
    v7 = &qword_281422578;
    if (!isTrustedSender)
    {
      v7 = &qword_281422588;
    }

    v8 = *v7;
  }

  else
  {
    if (qword_27D8CFE98 != -1)
    {
      sub_22B7D3B28();
    }

    v8 = qword_27D8CFEA0;
  }

  v9 = v8;

  return v8;
}

+ (BOOL)_messageBlastdoorMetricsEnabled
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"disable-bd-metrics"];
  LOBYTE(bOOLValue) = [v3 BOOLValue];

  v5 = IMGetCachedDomainValueForKey();
  v6 = v5;
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
    v7 = +[IMBlastdoor logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (bOOLValue)
      {
        v8 = @"YES";
      }

      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Metrics manually enabled (%@)", &v10, 0xCu);
    }
  }

  return bOOLValue ^ 1;
}

+ (int64_t)_convertErrorToBlastdoorError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:*MEMORY[0x277CCA050]];

  if (v5)
  {
    v6 = [errorCopy code] == 4864;
    v7 = 13001;
    v8 = 13003;
LABEL_3:
    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    goto LABEL_6;
  }

  domain2 = [errorCopy domain];
  v12 = [domain2 isEqualToString:*MEMORY[0x277D18DF8]];

  if (!v12)
  {
    domain3 = [errorCopy domain];
    v15 = [domain3 isEqualToString:*MEMORY[0x277D19CE0]];

    if (v15)
    {
      v9 = 13300;
      goto LABEL_6;
    }

    domain4 = [errorCopy domain];
    if ([domain4 isEqualToString:@"BlastDoor.Explosion"])
    {
    }

    else
    {
      domain5 = [errorCopy domain];
      v18 = [domain5 isEqualToString:@"com.apple.BlastDoor"];

      if ((v18 & 1) == 0)
      {
        domain6 = [errorCopy domain];
        v20 = [domain6 isEqualToString:*MEMORY[0x277D18DF0]];

        if (v20)
        {
          v9 = 13600;
          goto LABEL_6;
        }

        userInfo = [errorCopy userInfo];
        v22 = [userInfo objectForKeyedSubscript:@"errorMetric"];

        v6 = v22 == 0;
        v7 = 13250;
        v8 = 13000;
        goto LABEL_3;
      }
    }

    v9 = 13500;
    goto LABEL_6;
  }

  code = [errorCopy code];
  if ((code - 1) >= 0x17)
  {
    v9 = 13250;
  }

  else
  {
    v9 = qword_22B7F8638[code - 1];
  }

LABEL_6:

  return v9;
}

+ (void)_askToTapToRadarForGUID:(id)d messageTypeString:(id)string sender:(id)sender errorString:(id)errorString payloadAttachmentURL:(id)l
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  stringCopy = string;
  senderCopy = sender;
  errorStringCopy = errorString;
  lCopy = l;
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if (![mEMORY[0x277D19268] isInternalInstall])
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = IMGetCachedDomainBoolForKeyWithDefaultValue();

  if (v17)
  {
    mEMORY[0x277D19268] = IMGetCachedDomainValueForKey();
    if (mEMORY[0x277D19268] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([MEMORY[0x277CBEAA8] date], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "timeIntervalSinceDate:", mEMORY[0x277D19268]), v20 = v19, v18, v20 < 3600.0))
    {
      v23 = +[IMBlastdoor logger];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v36 = v20;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, "Skipping blastdoor validation prompt because last fire date was %f seconds ago", buf, 0xCu);
      }
    }

    else
    {
      if (qword_27D8CFEB0 != -1)
      {
        sub_22B7D3B64();
      }

      v21 = MEMORY[0x277D192D0];
      senderCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"An incoming iMessage from %@ failed validation.\n\nA copy of the message will be attached.", senderCopy];
      v23 = [v21 userNotificationWithIdentifier:@"com.apple.Messages.BlastdoorValidationFailureInternalPrompt" title:@"iMessage Validation Failure" message:senderCopy defaultButton:@"File a Radar" alternateButton:@"Dismiss" otherButton:0];

      if (v23)
      {
        mEMORY[0x277D192D8] = [MEMORY[0x277D192D8] sharedInstance];
        v25 = [mEMORY[0x277D192D8] countForIdentifier:@"com.apple.Messages.BlastdoorValidationFailureInternalPrompt"];

        if (!v25)
        {
          v26 = +[IMBlastdoor logger];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "Presenting BD TTR UI", buf, 2u);
          }

          date = [MEMORY[0x277CBEAA8] date];
          IMSetDomainValueForKey();

          mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
          [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A1E0]];

          [v23 setUsesNotificationCenter:0];
          [v23 setRepresentedApplicationBundle:*MEMORY[0x277D192F0]];
          mEMORY[0x277D192D8]2 = [MEMORY[0x277D192D8] sharedInstance];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = sub_22B58DF00;
          v30[3] = &unk_2787051C8;
          v31 = errorStringCopy;
          v32 = stringCopy;
          v33 = dCopy;
          v34 = lCopy;
          [mEMORY[0x277D192D8]2 addUserNotification:v23 listener:0 completionHandler:v30];
        }
      }
    }

    goto LABEL_16;
  }

LABEL_17:
}

+ (void)sendBlastDoorError:(id)error guid:(id)guid messageTypeString:(id)string senderURI:(id)i senderToken:(id)token messageContext:(id)context payloadAttachmentURL:(id)l
{
  v64 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  guidCopy = guid;
  stringCopy = string;
  iCopy = i;
  tokenCopy = token;
  contextCopy = context;
  lCopy = l;
  if (([objc_opt_class() _messageBlastdoorMetricsEnabled] & 1) == 0)
  {
    v21 = +[IMBlastdoor logger];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v22 = "Wanted to send BlastDoor metric, but disabled via server bag.";
LABEL_12:
    v23 = v21;
    v24 = 2;
    goto LABEL_13;
  }

  if (![guidCopy length])
  {
    v21 = +[IMBlastdoor logger];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v22 = "Wanted to send BlastDoor metric, guid was nil";
    goto LABEL_12;
  }

  if (qword_27D8CFEC0 != -1)
  {
    sub_22B7D3B78();
  }

  if ([qword_27D8CFEB8 containsObject:guidCopy])
  {
    v21 = +[IMBlastdoor logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v61 = guidCopy;
      v22 = "Already submitted metric for GUID, ignoring (%@)";
      v23 = v21;
      v24 = 12;
LABEL_13:
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
    }

LABEL_14:

    goto LABEL_15;
  }

  [qword_27D8CFEB8 addObject:guidCopy];
  v25 = im_checkpointIDSService();

  if (v25)
  {
    v26 = [objc_opt_class() _convertErrorToBlastdoorError:errorCopy];
    if (v26 != -1)
    {
      v27 = v26;
      v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v46 = v27;
      v28 = [MEMORY[0x277CCABB0] numberWithInteger:v27];
      [v21 setObject:v28 forKey:@"fR"];

      v29 = IDSGetUUIDData();
      if (v29)
      {
        [v21 setObject:v29 forKey:@"fU"];
      }

      v50 = v29;
      if (tokenCopy)
      {
        [v21 setObject:tokenCopy forKey:@"t"];
      }

      userInfo = [errorCopy userInfo];
      v31 = [userInfo objectForKeyedSubscript:@"errorMetric"];

      deviceIsLockedDown = [MEMORY[0x277D1A9A0] deviceIsLockedDown];
      v33 = &stru_283F23018;
      if (deviceIsLockedDown)
      {
        v33 = @"-Lockdown";
      }

      v49 = v33;
      v51 = v31;
      v34 = [v31 length];
      v47 = MEMORY[0x277CCACA8];
      domain = [errorCopy domain];
      v35 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
      v48 = v35;
      if (v34)
      {
        [v47 stringWithFormat:@"type-%@-%@-%@-%@%@", stringCopy, domain, v35, v51, v49];
      }

      else
      {
        [v47 stringWithFormat:@"type-%@-%@-%@%@", stringCopy, domain, v35, v49, v45];
      }
      v36 = ;

      v53 = v36;
      [v21 setObject:v36 forKey:@"fRM"];
      v37 = +[IMBlastdoor logger];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v61 = guidCopy;
        v62 = 2112;
        v63 = v21;
        _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_DEFAULT, "Sending BlastDoor metric (guid: %@): %@", buf, 0x16u);
      }

      v38 = im_checkpointIDSService();
      [v38 sendServerMessage:v21 command:&unk_283F4E720 fromAccount:0];

      if (guidCopy && contextCopy)
      {
        v39 = im_checkpointIDSService();
        v40 = [MEMORY[0x277CCABB0] numberWithInteger:v46];
        im_sendCertifiedDeliveryReceiptIfPossible();
      }

      mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
      isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];

      if (isInternalInstall)
      {
        if (([v51 containsString:@"AVFoundationErrorDomain--11869"] & 1) != 0 || objc_msgSend(stringCopy, "containsString:", @"131"))
        {
          v43 = +[IMBlastdoor logger];
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v61 = v53;
            v62 = 2112;
            v63 = guidCopy;
            _os_log_impl(&dword_22B4CC000, v43, OS_LOG_TYPE_DEFAULT, "Don't show BlastDoor TTR for error metric: %@ (guid: %@)", buf, 0x16u);
          }

          goto LABEL_40;
        }

        v44 = dispatch_time(0, 5000000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_22B58E884;
        block[3] = &unk_2787051F0;
        v55 = guidCopy;
        v56 = stringCopy;
        v57 = iCopy;
        v58 = v53;
        v59 = lCopy;
        dispatch_after(v44, MEMORY[0x277D85CD0], block);
      }

LABEL_40:
      goto LABEL_14;
    }
  }

LABEL_15:
}

+ (void)sendDictionary:(id)dictionary senderContext:(id)context withCompletionBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  contextCopy = context;
  blockCopy = block;
  if (blockCopy)
  {
    if (dictionaryCopy)
    {
      v11 = [dictionaryCopy objectForKey:*MEMORY[0x277D18810]];
      v12 = [v11 objectForKey:*MEMORY[0x277D18848]];
      if (!v12)
      {
        v12 = [v11 objectForKey:*MEMORY[0x277D187D8]];
      }

      integerValue = [v12 integerValue];
      v14 = +[IMBlastdoor logger];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v26 = integerValue;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Piping command through BlastDoor: %ld", buf, 0xCu);
      }

      v15 = [self blastdoorInterfaceForSenderContext:contextCopy];
      v16 = objc_alloc(MEMORY[0x277CF3148]);
      serviceName = [contextCopy serviceName];
      v18 = [v16 initForBusinessChat:{objc_msgSend(serviceName, "isEqualToString:", *MEMORY[0x277D186B8])}];

      v24 = 0;
      v19 = [v15 defuseTopLevelDictionary:dictionaryCopy context:v18 error:&v24];
      v20 = v24;
      v21 = blockCopy[2];
      if (v19)
      {
        v21(blockCopy, integerValue, v19, 0);
      }

      else
      {
        v21(blockCopy, integerValue, 0, v20);
      }
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x277CCA9B8]);
      v23 = [v22 initWithDomain:*MEMORY[0x277D18DF0] code:1 userInfo:0];
      (blockCopy[2])(blockCopy, 0, 0, v23);
    }
  }
}

+ (void)sendSMSDictionary:(id)dictionary withCompletionBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  blockCopy = block;
  if (blockCopy)
  {
    if (dictionaryCopy)
    {
      v8 = [dictionaryCopy objectForKey:@"g"];
      v9 = +[IMBlastdoor logger];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v8;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Piping SMS/MMS dictionary for GUID (%@) through BlastDoor", buf, 0xCu);
      }

      v10 = [MEMORY[0x277D1AB80] contextWithKnownSender:0 serviceName:*MEMORY[0x277D1A610]];
      v11 = [self blastdoorInterfaceForSenderContext:v10];
      if (objc_opt_respondsToSelector())
      {
        v23 = 0;
        v12 = [v11 defuseSMSDictionary:dictionaryCopy error:&v23];
        v13 = v23;
        v14 = blockCopy[2];
        if (v12)
        {
          v14(blockCopy, v12, 0);
        }

        else
        {
          v14(blockCopy, 0, v13);
        }
      }

      else
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = sub_22B58F014;
        v20[3] = &unk_278705218;
        v21 = v8;
        v22 = blockCopy;
        [v11 defuseSMSDictionary:dictionaryCopy resultHandler:v20];

        v13 = v21;
      }
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x277CCA9B8]);
      v16 = [v15 initWithDomain:*MEMORY[0x277D18DF0] code:2 userInfo:0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B58F1B0;
      block[3] = &unk_2787028B0;
      v18 = v16;
      v19 = blockCopy;
      v8 = v16;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

+ (void)sendClearNoticeData:(id)data senderContext:(id)context withCompletionBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contextCopy = context;
  blockCopy = block;
  if (blockCopy)
  {
    if (!dataCopy)
    {
      v11 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = [v11 initWithDomain:*MEMORY[0x277D18DF0] code:8 userInfo:0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B58F54C;
      block[3] = &unk_2787028B0;
      v19 = v12;
      v20 = blockCopy;
      v13 = v12;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    v14 = +[IMBlastdoor logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Piping Clear Notices through Blastdoor", buf, 2u);
    }

    v15 = [self blastdoorInterfaceForSenderContext:contextCopy];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22B58F564;
    v16[3] = &unk_278705240;
    v17 = blockCopy;
    [v15 defuseCollaborationClearNoticePayload:dataCopy resultHandler:v16];
  }
}

+ (void)sendCollaborationNoticeData:(id)data senderContext:(id)context withCompletionBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contextCopy = context;
  blockCopy = block;
  if (blockCopy)
  {
    if (!dataCopy)
    {
      v11 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = [v11 initWithDomain:*MEMORY[0x277D18DF0] code:4 userInfo:0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B58FA74;
      block[3] = &unk_2787028B0;
      v19 = v12;
      v20 = blockCopy;
      v13 = v12;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    v14 = +[IMBlastdoor logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Piping Collaboration Notices through Blastdoor", buf, 2u);
    }

    v15 = [self blastdoorInterfaceForSenderContext:contextCopy];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22B58FA8C;
    v16[3] = &unk_278705268;
    v17 = blockCopy;
    [v15 defuseCollaborationNoticePayload:dataCopy resultHandler:v16];
  }
}

+ (void)sendCollaborationNoticeActionDictionary:(id)dictionary senderContext:(id)context withCompletionBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  contextCopy = context;
  blockCopy = block;
  if (blockCopy)
  {
    if (!dictionaryCopy)
    {
      v11 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = [v11 initWithDomain:*MEMORY[0x277D18DF0] code:6 userInfo:0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B58FF9C;
      block[3] = &unk_2787028B0;
      v19 = v12;
      v20 = blockCopy;
      v13 = v12;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    v14 = +[IMBlastdoor logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Piping Collaboration Notice Action through Blastdoor", buf, 2u);
    }

    v15 = [self blastdoorInterfaceForSenderContext:contextCopy];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22B58FFB8;
    v16[3] = &unk_2787052B8;
    v17 = blockCopy;
    [v15 defuseCollaborationNoticeActionDictionary:dictionaryCopy resultHandler:v16];
  }
}

+ (id)sendLiteData:(id)data senderContext:(id)context error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contextCopy = context;
  v10 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Piping lite message through Blastdoor", &v15, 2u);
  }

  v11 = [self blastdoorInterfaceForSenderContext:contextCopy];
  v12 = [v11 defuseLiteTextMessage:dataCopy error:error];

  v13 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    v16 = v12;
    _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Blastdoor lite message response %p received", &v15, 0xCu);
  }

  return v12;
}

+ (id)sendLiteRelayData:(id)data senderContext:(id)context error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contextCopy = context;
  v10 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Piping lite relay message through Blastdoor", &v15, 2u);
  }

  v11 = [self blastdoorInterfaceForSenderContext:contextCopy];
  v12 = [v11 defuseLiteRelayTextMessage:dataCopy error:error];

  v13 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    v16 = v12;
    _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Blastdoor lite relay message response %p received", &v15, 0xCu);
  }

  return v12;
}

+ (id)sendSatelliteSMSDictionary:(id)dictionary senderContext:(id)context error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  contextCopy = context;
  v10 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Piping lite message through Blastdoor", &v15, 2u);
  }

  v11 = [self blastdoorInterfaceForSenderContext:contextCopy];
  v12 = [v11 defuseSatelliteSMSTextMessageDictionary:dictionaryCopy error:error];

  v13 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    v16 = v12;
    _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Blastdoor satellite SMS message response %p received", &v15, 0xCu);
  }

  return v12;
}

+ (id)sendRelayGroupMutationData:(id)data error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Piping group relay message through Blastdoor", &v13, 2u);
  }

  v8 = [MEMORY[0x277D1AB80] contextWithKnownSender:0 serviceName:*MEMORY[0x277D1A608]];
  v9 = [self blastdoorInterfaceForSenderContext:v8];
  v10 = [v9 defuseRelayGroupMutationPayload:dataCopy error:error];

  v11 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v10;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Blastdoor group relay message response %p received", &v13, 0xCu);
  }

  return v10;
}

+ (id)sendRelayReachabilityRequest:(id)request error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Piping relay reachability request through Blastdoor", &v13, 2u);
  }

  v8 = [MEMORY[0x277D1AB80] contextWithKnownSender:1 serviceName:*MEMORY[0x277D1A608]];
  v9 = [self blastdoorInterfaceForSenderContext:v8];
  v10 = [v9 defuseRelayReachabilityRequestPayload:requestCopy error:error];

  v11 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v10;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Blastdoor relay reachability request response %p received", &v13, 0xCu);
  }

  return v10;
}

+ (id)sendRelayReachabilityResponse:(id)response error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v7 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Piping relay reachability response through Blastdoor", &v13, 2u);
  }

  v8 = [MEMORY[0x277D1AB80] contextWithKnownSender:1 serviceName:*MEMORY[0x277D1A608]];
  v9 = [self blastdoorInterfaceForSenderContext:v8];
  v10 = [v9 defuseRelayReachabilityResponsePayload:responseCopy error:error];

  v11 = +[IMBlastdoor logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v10;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Blastdoor relay reachability response response %p received", &v13, 0xCu);
  }

  return v10;
}

@end