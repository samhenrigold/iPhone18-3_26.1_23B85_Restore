@interface IMDChatRecord
+ (IMDChatRecord)allocWithZone:(_NSZone *)zone;
+ (id)keyPathsToColumns;
+ (id)transcriptBackgroundFileURLFromProperties:(id)properties;
- (IMDChatRecord)initWithRecordRef:(_IMDChatRecordStruct *)ref;
- (IMDMessageRecord)lastMessageRecord;
- (NSArray)handleRecords;
- (NSDictionary)domainIdentifiers;
- (NSDictionary)properties;
- (NSURL)transcriptBackgroundFileURL;
- (_IMDChatRecordStruct)cfChatRecord;
- (void)_copyUpdatedRecord;
@end

@implementation IMDChatRecord

+ (id)keyPathsToColumns
{
  if (qword_1EDBE5B00 != -1)
  {
    sub_1B7CEEF0C();
  }

  v3 = qword_1EDBE5B28;

  return v3;
}

- (_IMDChatRecordStruct)cfChatRecord
{
  v3 = CFGetTypeID(self);
  if (v3 == IMDChatRecordGetTypeID())
  {
    return self;
  }

  else
  {
    return 0;
  }
}

- (void)_copyUpdatedRecord
{
  v4 = objc_msgSend_rowID(self, a2, v2, v3);

  return IMDChatRecordCopyChatRecordUnlocked(v4);
}

- (IMDChatRecord)initWithRecordRef:(_IMDChatRecordStruct *)ref
{
  refCopy = ref;

  return refCopy;
}

+ (IMDChatRecord)allocWithZone:(_NSZone *)zone
{
  IMDChatRecordGetTypeID();

  return _CFRuntimeCreateInstance();
}

- (NSDictionary)properties
{
  v2 = IMDBridgedRecordCopyPropertyValue(self, 4);
  if (v2)
  {
    v3 = JWDecodeDictionary();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (IMDMessageRecord)lastMessageRecord
{
  v4 = objc_msgSend_cfChatRecord(self, a2, v2, v3);
  Message = IMDChatRecordCopyLastMessage(v4);

  return Message;
}

- (NSArray)handleRecords
{
  v4 = objc_msgSend_cfChatRecord(self, a2, v2, v3);
  v5 = IMDChatRecordCopyHandles(v4);

  return v5;
}

- (NSDictionary)domainIdentifiers
{
  v4 = objc_msgSend_cfChatRecord(self, a2, v2, v3);
  v8 = IMDChatRecordCopyChatLookupRecords(v4, v5, v6, v7);

  return v8;
}

- (NSURL)transcriptBackgroundFileURL
{
  v4 = objc_msgSend_properties(self, a2, v2, v3);
  v7 = objc_msgSend_transcriptBackgroundFileURLFromProperties_(IMDChatRecord, v5, v4, v6);

  return v7;
}

+ (id)transcriptBackgroundFileURLFromProperties:(id)properties
{
  v4 = objc_msgSend_objectForKey_(properties, a2, *MEMORY[0x1E69A6CC8], v3);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend__stringForKey_(v4, v5, *MEMORY[0x1E69A7D38], v6);
    if (v8)
    {
      v9 = IMTranscriptBackgroundDirectory();
      v12 = objc_msgSend_URLByAppendingPathComponent_(v9, v10, v8, v11);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end