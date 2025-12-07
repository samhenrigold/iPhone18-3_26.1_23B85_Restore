@interface MFMailMimePart
+ (BOOL)isRecognizedClassForContent:(id)content;
- (BOOL)_shouldContinueDecodingProcess;
- (id)contentToOffset:(unint64_t)offset resultOffset:(unint64_t *)resultOffset downloadIfNecessary:(BOOL)necessary asHTML:(BOOL)l isComplete:(BOOL *)complete;
- (id)decodeMessagePartial;
- (id)decodeMessageRfc822;
- (id)decodeMultipartAppledouble;
- (id)decodeTextEnriched;
- (id)decodeTextHtml;
- (id)decodeTextPlain;
- (id)decodeTextRichtext;
- (id)fileWrapperForDecodedObject:(id)object withFileData:(id *)data;
- (id)fileWrapperForcingDownload:(BOOL)download;
- (id)storeData:(id)data inMessage:(id)message isComplete:(BOOL)complete;
- (void)configureFileWrapper:(id)wrapper;
@end

@implementation MFMailMimePart

- (id)decodeTextRichtext
{
  v3 = _MFDecodeText();
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v6 = [threadDictionary objectForKey:*MEMORY[0x277D24E88]];
  bOOLValue = [v6 BOOLValue];

  v8 = [MEMORY[0x277CCACA8] mf_stringFromMimeRichTextString:v3 asHTML:bOOLValue];
  v9 = [MFWebMessageDocument alloc];
  v10 = [v8 dataUsingEncoding:4];
  v11 = [(MFWebMessageDocument *)v9 initWithMimePart:self htmlData:v10 encoding:134217984];

  return v11;
}

- (id)decodeTextEnriched
{
  v3 = _MFDecodeText();
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v6 = [threadDictionary objectForKey:*MEMORY[0x277D24E88]];
  bOOLValue = [v6 BOOLValue];

  v8 = [MEMORY[0x277CCACA8] mf_stringFromMimeEnrichedString:v3 asHTML:bOOLValue];
  v9 = [MFWebMessageDocument alloc];
  v10 = [v8 dataUsingEncoding:4];
  v11 = [(MFWebMessageDocument *)v9 initWithMimePart:self htmlData:v10 encoding:134217984];

  return v11;
}

- (id)decodeTextHtml
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v5 = _MFOffsetFromThreadDictionary();
  v6 = [threadDictionary objectForKey:*MEMORY[0x277D24E98]];
  bOOLValue = [v6 BOOLValue];

  v14 = 0;
  v13 = 0;
  v8 = [(MFMailMimePart *)self copyBodyDataToOffset:v5 resultOffset:&v14 downloadIfNecessary:bOOLValue isComplete:&v13];
  v9 = [objc_allocWithZone(MFWebMessageDocument) initWithMimePart:self htmlData:v8 encoding:{-[MFMailMimePart textEncoding](self, "textEncoding")}];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
  [threadDictionary setObject:v10 forKey:*MEMORY[0x277D24EB0]];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  [threadDictionary setObject:v11 forKey:*MEMORY[0x277D24EA0]];

  return v9;
}

- (id)decodeTextPlain
{
  v15 = 0;
  v3 = _MFCopyDecodeText();
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v6 = [threadDictionary objectForKeyedSubscript:*MEMORY[0x277D24E88]];
  bOOLValue = [v6 BOOLValue];

  v14 = 0;
  v8 = _formatFlowedOptions(self);
  if (bOOLValue)
  {
    v9 = 12;
  }

  else
  {
    v9 = 4;
  }

  v10 = [v3 mf_convertFromFlowedText:v8 | v9 visuallyEmpty:&v14];
  v11 = [v10 mf_dataUsingEncoding:4];
  v12 = [objc_allocWithZone(MFWebMessageDocument) initWithMimePart:self htmlData:v11 encoding:134217984];
  [v12 setVisuallyEmpty:v14];

  return v12;
}

- (id)decodeMultipartAppledouble
{
  firstChildPart = [(MFMailMimePart *)self firstChildPart];
  nextSiblingPart = [firstChildPart nextSiblingPart];
  v4 = [nextSiblingPart fileWrapperForcingDownload:0];

  return v4;
}

- (id)fileWrapperForcingDownload:(BOOL)download
{
  downloadCopy = download;
  mimeBody = [(MFMailMimePart *)self mimeBody];
  message = [mimeBody message];

  if (objc_opt_respondsToSelector())
  {
    v7 = [message performSelector:sel__attachmentStorageLocation];
    if (v7)
    {
      v8 = v7;
      partNumber = [(MFMailMimePart *)self partNumber];
      v10 = [v8 stringByAppendingPathComponent:partNumber];

      attachmentFilename = [(MFMailMimePart *)self attachmentFilename];
      if (attachmentFilename)
      {
        v12 = attachmentFilename;
        v13 = objc_alloc(MEMORY[0x277D24F38]);
        v14 = [v10 stringByAppendingPathComponent:v12];
        v15 = [v13 initWithPath:v14];

        [v15 setPreferredFilename:v12];
        preferredFilename = [v15 preferredFilename];
        [v15 setFilename:preferredFilename];

        [(MFMailMimePart *)self configureFileWrapper:v15];
        if (v15)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }
    }
  }

  v18.receiver = self;
  v18.super_class = MFMailMimePart;
  v15 = [(MFMailMimePart *)&v18 fileWrapperForcingDownload:downloadCopy];
LABEL_8:

  return v15;
}

- (id)fileWrapperForDecodedObject:(id)object withFileData:(id *)data
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fileWrapper = [objectCopy fileWrapper];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MFMailMimePart;
    fileWrapper = [(MFMailMimePart *)&v10 fileWrapperForDecodedObject:objectCopy withFileData:data];
  }

  v8 = fileWrapper;

  return v8;
}

- (void)configureFileWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v22.receiver = self;
  v22.super_class = MFMailMimePart;
  [(MFMailMimePart *)&v22 configureFileWrapper:wrapperCopy];
  if (wrapperCopy)
  {
    v5 = [(MFMailMimePart *)self bodyParameterForKey:*MEMORY[0x277D24E78]];
    if (v5)
    {
      v6 = v5;
LABEL_4:
      [wrapperCopy setURL:v6];

      goto LABEL_5;
    }

    mimeBody = [(MFMailMimePart *)self mimeBody];
    message = [mimeBody message];
    v20 = [message URL];

    if (v20)
    {
      partNumber = [(MFMailMimePart *)self partNumber];
      v6 = [v20 stringByAppendingFormat:@"&aid=%@", partNumber];

      if (v6)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_5:
  if (([wrapperCopy isPlaceholder] & 1) == 0)
  {
    mimeBody2 = [(MFMailMimePart *)self mimeBody];
    message2 = [mimeBody2 message];

    if (objc_opt_respondsToSelector())
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [message2 performSelector:sel__attachmentStorageLocation];
      if (v10)
      {
        v11 = v10;
        partNumber2 = [(MFMailMimePart *)self partNumber];
        v13 = [v11 stringByAppendingPathComponent:partNumber2];

        if (([defaultManager fileExistsAtPath:v13] & 1) == 0)
        {
          [defaultManager createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:0];
        }

        preferredFilename = [wrapperCopy preferredFilename];
        if (preferredFilename)
        {
          v15 = [v13 stringByAppendingPathComponent:preferredFilename];
          if (([defaultManager fileExistsAtPath:v15] & 1) == 0)
          {
            regularFileContents = [wrapperCopy regularFileContents];
            fileAttributes = [wrapperCopy fileAttributes];
            [defaultManager createFileAtPath:v15 contents:regularFileContents attributes:fileAttributes];

            [wrapperCopy setPath:v15];
          }
        }
      }
    }
  }
}

- (id)storeData:(id)data inMessage:(id)message isComplete:(BOOL)complete
{
  completeCopy = complete;
  dataCopy = data;
  messageStore = [message messageStore];
  v10 = [messageStore storeData:dataCopy forMimePart:self isComplete:completeCopy];

  return v10;
}

- (BOOL)_shouldContinueDecodingProcess
{
  v2 = +[MFActivityMonitor currentMonitor];
  error = [v2 error];
  v4 = error == 0;

  return v4;
}

+ (BOOL)isRecognizedClassForContent:(id)content
{
  contentCopy = content;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___MFMailMimePart;
    v5 = objc_msgSendSuper2(&v7, sel_isRecognizedClassForContent_, contentCopy);
  }

  return v5;
}

- (id)contentToOffset:(unint64_t)offset resultOffset:(unint64_t *)resultOffset downloadIfNecessary:(BOOL)necessary asHTML:(BOOL)l isComplete:(BOOL *)complete
{
  v26 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = MFMailMimePart;
  v8 = [(MFMailMimePart *)&v24 contentToOffset:offset resultOffset:resultOffset downloadIfNecessary:necessary asHTML:l isComplete:complete];
  array = [MEMORY[0x277CBEB18] array];
  if (v8)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v8;
    v11 = [(MFContentErrorDocument *)v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = v11;
    v13 = *v21;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 dataUsingEncoding:4];
          v17 = [[MFWebMessageDocument alloc] initWithMimePart:self htmlData:v16 encoding:134217984];

          if (v17)
          {
            goto LABEL_14;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [[MFContentErrorDocument alloc] initWithMimePart:self];
          }

          else
          {
            v18 = v15;
          }

          v17 = v18;
          if (v18)
          {
LABEL_14:
            [array addObject:v17];
          }
        }
      }

      v12 = [(MFContentErrorDocument *)v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (!v12)
      {
LABEL_20:

        goto LABEL_21;
      }
    }
  }

  if ([(MFMailMimePart *)self _shouldContinueDecodingProcess])
  {
    v10 = [[MFContentErrorDocument alloc] initWithMimePart:self];
    [array addObject:v10];
    goto LABEL_20;
  }

LABEL_21:

  return array;
}

- (id)decodeMessageRfc822
{
  bodyData = [(MFMailMimePart *)self bodyData];
  if (bodyData)
  {
    v4 = [(MFMessage *)MFMailMessage messageWithRFC822Data:bodyData withParentPart:self];
    mimeBody = [(MFMailMimePart *)self mimeBody];
    v6 = mimeBody;
    if (mimeBody)
    {
      message = [mimeBody message];
      messageURL = [message messageURL];

      [v4 setMessageURL:messageURL];
      v9 = [MFRFC822AttachmentDataProvider alloc];
      topLevelPart = [v6 topLevelPart];
      v11 = [(MFRFC822AttachmentDataProvider *)v9 initWithMessageData:bodyData parentPart:topLevelPart];

      v12 = +[MFAttachmentManager allManagers];
      anyObject = [v12 anyObject];
      [anyObject addProvider:v11 forBaseURL:messageURL];
    }

    v22 = 0;
    messageBody = [v4 messageBody];
    if ([(MFMailMimePart *)self isGenerated])
    {
      v15 = [messageBody contentToOffset:0x7FFFFFFFFFFFFFFFLL resultOffset:0 asHTML:1 isComplete:&v22];
    }

    else
    {
      v15 = bodyData;
      v22 = 1;
    }

    currentThread = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary = [currentThread threadDictionary];

    v18 = [MEMORY[0x277CCABB0] numberWithBool:v22];
    [threadDictionary setObject:v18 forKey:*MEMORY[0x277D24EA0]];

    if (messageBody)
    {
      v19 = [threadDictionary objectForKey:*MEMORY[0x277D24E90]];
      bOOLValue = [v19 BOOLValue];

      if (bOOLValue)
      {
        [threadDictionary setObject:messageBody forKey:*MEMORY[0x277D24EA8]];
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)decodeMessagePartial
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MFMailMimePart *)self bodyParameterForKey:@"number"];
  v5 = [(MFMailMimePart *)self bodyParameterForKey:@"total"];
  v6 = [v3 stringWithFormat:@"Partial message, part %@ of %@\nTo read this message, select all of the parts of the message and select the Message --> MIME --> Combine Messages menu item.\n", v4, v5];

  return v6;
}

@end