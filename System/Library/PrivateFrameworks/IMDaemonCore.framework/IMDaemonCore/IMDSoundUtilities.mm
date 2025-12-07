@interface IMDSoundUtilities
+ (BOOL)_isSMSMessage:(id)message;
+ (BOOL)_isSuppressedForGUID:(id)d;
+ (int64_t)_soundTypeForMessage:(id)message;
+ (unsigned)_installSystemSound:(id)sound;
+ (void)_playSentScheduledMessageSound;
+ (void)_playSoundType:(int64_t)type;
+ (void)playMessageSentSoundIfNeeded:(id)needed;
@end

@implementation IMDSoundUtilities

+ (void)playMessageSentSoundIfNeeded:(id)needed
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_class() _soundTypeForMessage:needed];
  if (v4)
  {
    v5 = v4;
    guid = [needed guid];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = @"Acknowledgment";
        if (v5 == 1)
        {
          v8 = @"SMS";
        }

        v9 = 138412546;
        v10 = v8;
        v11 = 2112;
        v12 = guid;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Play message sent sound type: %@, for message: %@", &v9, 0x16u);
      }
    }

    [objc_opt_class() _playSoundType:v5];
  }
}

+ (int64_t)_soundTypeForMessage:(id)message
{
  v15 = *MEMORY[0x277D85DE8];
  guid = [message guid];
  result = [objc_opt_class() _smsSoundsToPlay];
  if (result)
  {
    v6 = result;
    if ([objc_opt_class() _isUserScheduledMessage:message])
    {
      dateEdited = [message dateEdited];
      v8 = IMOSLoggingEnabled();
      if (dateEdited)
      {
        if (!v8)
        {
          return 0;
        }

        v9 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          return 0;
        }

        v13 = 138412290;
        v14 = guid;
        v10 = "Suppressing play sound for edited scheduled message[%@]";
        goto LABEL_28;
      }

      if (v8)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v13 = 138412290;
          v14 = guid;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Using IMDSoundTypeSentScheduledMessage for message[%@]", &v13, 0xCu);
        }
      }

      v6 = 3;
    }

    if ([objc_opt_class() _isSMSMessage:message] && objc_msgSend(objc_opt_class(), "_wasDowngraded:", message))
    {
      if (!IMOSLoggingEnabled())
      {
        return 0;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      v13 = 138412290;
      v14 = guid;
      v10 = "Suppressing play sound for downgraded message[%@]";
      goto LABEL_28;
    }

    if ([objc_opt_class() _isSuppressedForGUID:guid])
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = 138412290;
          v14 = guid;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Suppressing play sound because it was already played [%@]", &v13, 0xCu);
        }
      }

      [objc_opt_class() _stopSuppressingForGUID:guid];
      return 0;
    }

    if ([objc_opt_class() _isAssociatedMessage:message])
    {
      if (![objc_opt_class() _isAcknowledgmentMessage:message])
      {
        return 0;
      }

      v6 = 2;
    }

    if ([objc_opt_class() _isAutoPlay:message])
    {
      if (!IMOSLoggingEnabled())
      {
        return 0;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      v13 = 138412290;
      v14 = guid;
      v10 = "Suppressing play sound for auto-reply message [%@]";
LABEL_28:
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, v10, &v13, 0xCu);
      return 0;
    }

    if ([message isBeingRetried])
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

+ (void)_playSoundType:(int64_t)type
{
  switch(type)
  {
    case 3:
      v5 = objc_opt_class();

      MEMORY[0x2821F9670](v5, sel__playSentScheduledMessageSound);
      break;
    case 2:
      v4 = objc_opt_class();

      MEMORY[0x2821F9670](v4, sel__playAcknowledgmentSentSound);
      break;
    case 1:
      v3 = objc_opt_class();

      MEMORY[0x2821F9670](v3, sel__playSMSSound);
      break;
  }
}

+ (unsigned)_installSystemSound:(id)sound
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "URLForResource:withExtension:", sound, 0}];
  outSystemSoundID = 0;
  v5 = AudioServicesCreateSystemSoundID(v4, &outSystemSoundID);
  if (v5)
  {
    result = IMOSLoggingEnabled();
    if (result)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      result = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
      if (result)
      {
        *buf = 138412546;
        soundCopy = sound;
        v14 = 1024;
        v15 = v5;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Unable to find a sound action ID for %@  errorResult: %d", buf, 0x12u);
        return 0;
      }
    }
  }

  else
  {
    inPropertyData = 0;
    v8 = AudioServicesSetProperty(0x69737569u, 4u, &outSystemSoundID, 4u, &inPropertyData);
    if (v8)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(soundCopy) = v8;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Unable to set property on sound ID   errorResult: %d", buf, 8u);
        }
      }

      result = outSystemSoundID;
      if (outSystemSoundID)
      {
        AudioServicesDisposeSystemSoundID(outSystemSoundID);
        return 0;
      }
    }

    else
    {
      return outSystemSoundID;
    }
  }

  return result;
}

+ (void)_playSentScheduledMessageSound
{
  if (qword_27D8CFDC0 != -1)
  {
    sub_22B7CFFD0();
  }

  v3 = dword_27D8CFDC8;
  if (dword_27D8CFDC8)
  {

    AudioServicesPlaySystemSound(v3);
  }
}

+ (BOOL)_isSMSMessage:(id)message
{
  service = [message service];
  v4 = *MEMORY[0x277D1A610];

  return [service isEqualToString:v4];
}

+ (BOOL)_isSuppressedForGUID:(id)d
{
  if (!d)
  {
    return 0;
  }

  v4 = IMGetCachedDomainValueForKey();
  if (!v4)
  {
    return 0;
  }

  return [v4 containsObject:d];
}

@end