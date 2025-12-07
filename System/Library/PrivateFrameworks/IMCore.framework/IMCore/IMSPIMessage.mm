@interface IMSPIMessage
- (BOOL)allowedByScreenTime;
- (NSURL)url;
- (id)description;
- (id)spiChatWithQOS:(unsigned int)s;
- (void)dealloc;
@end

@implementation IMSPIMessage

- (BOOL)allowedByScreenTime
{
  if (+[IMDowntimeController isContactLimitsFeatureEnabled])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A82633F0;
    aBlock[3] = &unk_1E78133A8;
    aBlock[4] = self;
    aBlock[5] = &v9;
    v3 = _Block_copy(aBlock);
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v3[2](v3);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A82635E0;
      block[3] = &unk_1E780FE90;
      v7 = v3;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    v4 = *(v10 + 24);

    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

- (void)dealloc
{
  [(IMSPIMessage *)self setText:0];
  [(IMSPIMessage *)self setBody:0];
  [(IMSPIMessage *)self setSummary:0];
  [(IMSPIMessage *)self setDate:0];
  [(IMSPIMessage *)self setDateRead:0];
  [(IMSPIMessage *)self setDateForLastReadMessageInChat:0];
  [(IMSPIMessage *)self setRecipients:0];
  [(IMSPIMessage *)self setSender:0];
  [(IMSPIMessage *)self setSubject:0];
  [(IMSPIMessage *)self setAttributedText:0];
  [(IMSPIMessage *)self setGuid:0];
  [(IMSPIMessage *)self setChatGuids:0];
  [(IMSPIMessage *)self setGroupID:0];
  [(IMSPIMessage *)self setChatIdentifier:0];
  [(IMSPIMessage *)self setDisplayName:0];
  [(IMSPIMessage *)self setReferencedMessage:0];
  [(IMSPIMessage *)self setBundleId:0];
  [(IMSPIMessage *)self setDisplayAppName:0];
  [(IMSPIMessage *)self setRichLinkMetadata:0];
  [(IMSPIMessage *)self setPeerPaymentAmount:0];
  v3.receiver = self;
  v3.super_class = IMSPIMessage;
  [(IMSPIMessage *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if ([(IMSPIMessage *)self isOutgoing])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if ([(IMSPIMessage *)self isRead])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(IMSPIMessage *)self isAudioMessage])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  sender = [(IMSPIMessage *)self sender];
  recipients = [(IMSPIMessage *)self recipients];
  guid = [(IMSPIMessage *)self guid];
  chatGuids = [(IMSPIMessage *)self chatGuids];
  attachments = [(IMSPIMessage *)self attachments];
  v12 = [v3 stringWithFormat:@"IMSPIMessage: %p [Outgoing: %@  Read: %@  IsAudio: %@  Sender: %@  Recipients: %@  GUID: %@ ChatGUIDs: %@ Attachments: %@]", self, v4, v5, v6, sender, recipients, guid, chatGuids, attachments];

  return v12;
}

- (NSURL)url
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"x-apple-sms:guid=%@", self->_guid];
  v4 = [v2 URLWithString:v3];

  return v4;
}

- (id)spiChatWithQOS:(unsigned int)s
{
  v5 = sub_1A826443C(s);
  firstObject = [(NSArray *)self->_chatGuids firstObject];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1A8259CB0;
  v19 = sub_1A825AF84;
  v20 = 0;
  if ([firstObject length])
  {
    v7 = dispatch_semaphore_create(0);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1A83D1384;
    v12[3] = &unk_1E78147E0;
    v14 = &v15;
    v8 = v7;
    v13 = v8;
    IMSPIQueryChatWithGuid(firstObject, s, v5, v12);
    v9 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v8, v9);
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

@end