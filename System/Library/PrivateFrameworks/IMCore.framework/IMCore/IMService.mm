@interface IMService
+ (BOOL)isEmailAddress:(id)address inDomains:(id)domains;
+ (NSDate)myIdleTime;
- (id)_displayName;
@end

@implementation IMService

+ (NSDate)myIdleTime
{
  v2 = MEMORY[0x1E695DF00];
  v3 = +[IMDaemonController sharedController];
  listener = [v3 listener];
  v5 = [v2 dateWithTimeIntervalSinceNow:{objc_msgSend(listener, "myIdleTime")}];

  return v5;
}

+ (BOOL)isEmailAddress:(id)address inDomains:(id)domains
{
  addressCopy = address;
  domainsCopy = domains;
  v7 = [domainsCopy count];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = 0;
  while (1)
  {
    v9 = [domainsCopy objectAtIndex:v8];
    if ([v9 isEqualToString:@"*"])
    {
LABEL_11:
      LOBYTE(v7) = 1;
      goto LABEL_15;
    }

    if ([addressCopy hasSuffix:v9])
    {
      break;
    }

LABEL_9:

    if (v7 == ++v8)
    {
      LOBYTE(v7) = 0;
      goto LABEL_16;
    }
  }

  v10 = [addressCopy length];
  v11 = v10 + ~[v9 length];
  if (v11 < [addressCopy length])
  {
    if (v11 && v11 < [addressCopy length] && objc_msgSend(addressCopy, "characterAtIndex:", v11) == 64)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1A84DEF40(addressCopy, v9, v7);
  }

  LOBYTE(v7) = 0;
LABEL_15:

LABEL_16:
  return v7;
}

- (id)_displayName
{
  name = [(IMService *)self name];
  v4 = [name isEqualToString:*MEMORY[0x1E69A7AF8]];

  if (v4)
  {
    v5 = sub_1A8361964();
    v6 = v5;
    v7 = @"PLACEHOLDER_TEXT_VIEW_SATELLITE_MESSAGE";
    v8 = @"iMessage • Satellite";
LABEL_16:
    v15 = [v5 localizedStringForKey:v7 value:v8 table:@"IMCoreLocalizable"];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v8;
    }

    name3 = v17;

    goto LABEL_20;
  }

  name2 = [(IMService *)self name];
  v10 = [name2 isEqualToString:*MEMORY[0x1E69A7AE8]];

  if (v10)
  {
    v5 = sub_1A8361964();
    v6 = v5;
    v7 = @"PLACEHOLDER_TEXT_VIEW_SATELLITE_MESSAGE_SMS";
    v8 = @"Text Message • Satellite";
    goto LABEL_16;
  }

  v11 = +[IMServiceImpl smsService];

  if (v11 == self)
  {
    v5 = sub_1A8361964();
    v6 = v5;
    v7 = @"TEXT_MESSAGE_SMS";
    v8 = @"Text Message • SMS";
    goto LABEL_16;
  }

  v12 = +[IMServiceImpl iMessageService];

  if (v12 == self)
  {
    v5 = sub_1A8361964();
    v6 = v5;
    v7 = @"MADRID";
    v8 = @"iMessage";
    goto LABEL_16;
  }

  v13 = +[IMServiceImpl rcsService];

  if (v13 == self)
  {
    if ((IMDeviceIsGreenTea() & 1) != 0 || [MEMORY[0x1E69A8020] IMDeviceIsChinaRegion])
    {
      v5 = sub_1A8361964();
      v6 = v5;
      v7 = @"5G_MESSAGING";
    }

    else
    {
      v5 = sub_1A8361964();
      v6 = v5;
      v7 = @"TEXT_MESSAGE_RCS";
    }

    v8 = @"Text Message • RCS";
    goto LABEL_16;
  }

  name3 = [(IMService *)self name];
LABEL_20:

  return name3;
}

@end