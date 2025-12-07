@interface MFMessageStore
+ (Class)headersClass;
+ (id)log;
- (BOOL)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete withConsumer:(id)consumer downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download;
- (BOOL)hasCompleteDataForMimePart:(id)part;
- (MFMessageStore)init;
- (id)_bodyForMessage:(id)message fetchIfNotAvailable:(BOOL)available updateFlags:(BOOL)flags;
- (id)_cachedBodyDataContainerForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_cachedBodyDataForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_cachedBodyForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_cachedHeaderDataForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_cachedHeadersForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_downloadHeadersForMessages:(id)messages;
- (id)_fetchBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available downloadIfNecessary:(BOOL)necessary partial:(BOOL *)partial;
- (id)_setOrGetBody:(id)body forMessage:(id)message updateFlags:(BOOL)flags;
- (id)bestAlternativeForPart:(id)part;
- (id)bodyDataForMessage:(id)message isComplete:(BOOL *)complete isPartial:(BOOL *)partial downloadIfNecessary:(BOOL)necessary;
- (id)bodyForMessage:(id)message fetchIfNotAvailable:(BOOL)available updateFlags:(BOOL)flags;
- (id)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download;
- (id)decryptedTopLevelPartForPart:(id)part;
- (id)defaultAlternativeForPart:(id)part;
- (id)fullBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download;
- (id)headersForMessage:(id)message fetchIfNotAvailable:(BOOL)available;
- (id)newObjectCache;
- (id)uniquedString:(id)string;
@end

@implementation MFMessageStore

- (MFMessageStore)init
{
  v7.receiver = self;
  v7.super_class = MFMessageStore;
  v2 = [(MFMessageStore *)&v7 init];
  v3 = v2;
  if (v2)
  {
    newObjectCache = [(MFMessageStore *)v2 newObjectCache];
    objectCache = v3->_objectCache;
    v3->_objectCache = newObjectCache;
  }

  return v3;
}

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__MFMessageStore_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __21__MFMessageStore_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log;
  log_log = v1;
}

+ (Class)headersClass
{
  v3 = sMFMessageStoreHeadersClass;
  if (sMFMessageStoreHeadersClass)
  {
  }

  else
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (id)headersForMessage:(id)message fetchIfNotAvailable:(BOOL)available
{
  availableCopy = available;
  messageCopy = message;
  v7 = [(MFMessageStore *)self _cachedHeadersForMessage:messageCopy valueIfNotPresent:0];
  if (!v7)
  {
    v8 = [(MFMessageStore *)self headerDataForMessage:messageCopy downloadIfNecessary:availableCopy];
    if (v8)
    {
      v9 = [objc_alloc(objc_msgSend(objc_opt_class() "headersClass"))];
      if (v9)
      {
        v7 = [(MFMessageStore *)self _cachedHeadersForMessage:messageCopy valueIfNotPresent:v9];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_downloadHeadersForMessages:(id)messages
{
  v18 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = messagesCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(MFMessageStore *)self headersForMessage:v10 fetchIfNotAvailable:1, v13];
        if (v11)
        {
          [dictionary setObject:v11 forKeyedSubscript:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return dictionary;
}

- (id)_setOrGetBody:(id)body forMessage:(id)message updateFlags:(BOOL)flags
{
  flags = [(MFMessageStore *)self _cachedBodyForMessage:message valueIfNotPresent:body, flags];

  return flags;
}

- (id)_bodyForMessage:(id)message fetchIfNotAvailable:(BOOL)available updateFlags:(BOOL)flags
{
  flagsCopy = flags;
  availableCopy = available;
  messageCopy = message;
  v9 = objc_alloc_init(MFMimeBody);
  v10 = objc_alloc_init([objc_opt_class() classForMimePart]);
  [(MFMessageBody *)v9 setMessage:messageCopy];
  [(MFMimeBody *)v9 setTopLevelPart:v10];
  [v10 setMimeBody:v9];
  if (([v10 parseMimeBodyDownloadIfNecessary:availableCopy] & 1) == 0)
  {
    [(MFMessageBody *)v9 setMessage:0];

    v9 = 0;
    goto LABEL_5;
  }

  if (!v9)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v11 = [(MFMessageStore *)self _setOrGetBody:v9 forMessage:messageCopy updateFlags:flagsCopy];
LABEL_6:
  v12 = v11;

  return v11;
}

- (id)bodyForMessage:(id)message fetchIfNotAvailable:(BOOL)available updateFlags:(BOOL)flags
{
  flagsCopy = flags;
  availableCopy = available;
  messageCopy = message;
  v9 = [(MFMessageStore *)self _cachedBodyForMessage:messageCopy valueIfNotPresent:0];
  if (!v9)
  {
    if ((!-[MFMessageStore bodyFetchRequiresNetworkActivity](self, "bodyFetchRequiresNetworkActivity") || availableCopy || [messageCopy isMessageContentsLocallyAvailable]) && (-[MFMessageStore _bodyForMessage:fetchIfNotAvailable:updateFlags:](self, "_bodyForMessage:fetchIfNotAvailable:updateFlags:", messageCopy, availableCopy, flagsCopy), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = [(MFMessageStore *)self _setOrGetBody:v10 forMessage:messageCopy updateFlags:flagsCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)fullBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download
{
  necessaryCopy = necessary;
  v9 = [(MFMessageStore *)self bodyDataForMessage:message isComplete:complete isPartial:0 downloadIfNecessary:?];
  v10 = v9;
  if (download && necessaryCopy && [v9 length])
  {
    *download = 1;
  }

  return v10;
}

- (id)uniquedString:(id)string
{
  stringCopy = string;
  _MFLockGlobalLock();
  uniqueStrings = self->_uniqueStrings;
  if (uniqueStrings)
  {
    if ([(NSMutableSet *)uniqueStrings count]>= 0x64)
    {
      [(NSMutableSet *)self->_uniqueStrings removeAllObjects];
    }
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:100];
    v7 = self->_uniqueStrings;
    self->_uniqueStrings = v6;
  }

  v8 = [(NSMutableSet *)self->_uniqueStrings ef_uniquedObject:stringCopy];
  _MFUnlockGlobalLock();

  return v8;
}

- (id)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download
{
  necessaryCopy = necessary;
  partCopy = part;
  type = [partCopy type];
  v13 = [type isEqualToString:@"multipart"];

  if (v13)
  {
    v14 = 0;
    goto LABEL_14;
  }

  mimeBody = [partCopy mimeBody];
  message = [mimeBody message];

  if (message)
  {
    v17 = [(MFMessageStore *)self fullBodyDataForMessage:message andHeaderDataIfReadilyAvailable:0 isComplete:complete downloadIfNecessary:necessaryCopy didDownload:download];
    v18 = [v17 length];
    range = [partCopy range];
    if (range == 0x7FFFFFFFFFFFFFFFLL || range + v20 > v18)
    {
      mimeBody2 = [partCopy mimeBody];
      topLevelPart = [mimeBody2 topLevelPart];

      if (topLevelPart != partCopy)
      {
        v14 = 0;
LABEL_12:

        goto LABEL_13;
      }

      v21 = v17;
    }

    else
    {
      v21 = [v17 mf_subdataWithRange:{range, v20}];
    }

    v14 = v21;
    goto LABEL_12;
  }

  v14 = 0;
LABEL_13:

LABEL_14:

  return v14;
}

- (BOOL)dataForMimePart:(id)part inRange:(_NSRange)range isComplete:(BOOL *)complete withConsumer:(id)consumer downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download
{
  necessaryCopy = necessary;
  length = range.length;
  location = range.location;
  consumerCopy = consumer;
  download = [(MFMessageStore *)self dataForMimePart:part inRange:location isComplete:length downloadIfNecessary:complete didDownload:necessaryCopy, download];
  [consumerCopy appendData:download];

  return download != 0;
}

- (id)decryptedTopLevelPartForPart:(id)part
{
  partCopy = part;
  v4 = [partCopy decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      topLevelPart = [v4 topLevelPart];

      partCopy = topLevelPart;
    }
  }

  return partCopy;
}

- (id)defaultAlternativeForPart:(id)part
{
  v3 = [(MFMessageStore *)self bestAlternativeForPart:part];

  return v3;
}

- (id)bestAlternativeForPart:(id)part
{
  partCopy = part;
  v5 = [(MFMessageStore *)self decryptedTopLevelPartForPart:partCopy];

  type = [v5 type];
  if ([type isEqualToString:@"multipart"])
  {
    subtype = [v5 subtype];
    v8 = [subtype isEqualToString:@"alternative"];

    if (v8)
    {
      chosenAlternativePart = [v5 chosenAlternativePart];
      goto LABEL_6;
    }
  }

  else
  {
  }

  chosenAlternativePart = 0;
LABEL_6:
  if (chosenAlternativePart)
  {
    v10 = chosenAlternativePart;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;

  return v10;
}

- (id)newObjectCache
{
  v2 = [[MFMessageStoreObjectCache alloc] initWithCapacity:5];
  [(MFMessageStoreObjectCache *)v2 setKeyGenerator:&__block_literal_global_1];
  return v2;
}

- (id)_cachedHeaderDataForMessage:(id)message valueIfNotPresent:(id)present
{
  v4 = [(MFMessageStoreObjectCache *)self->_objectCache addObject:present forMessage:message kind:2];

  return v4;
}

- (id)_cachedBodyDataForMessage:(id)message valueIfNotPresent:(id)present
{
  messageCopy = message;
  presentCopy = present;
  if (presentCopy)
  {
    v8 = [[MFMessageDataContainer alloc] initWithData:presentCopy];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(MFMessageStore *)self _cachedBodyDataContainerForMessage:messageCopy valueIfNotPresent:v8];
  v10 = v9;
  if (v9)
  {
    v11 = *(v9 + 8);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)_cachedBodyForMessage:(id)message valueIfNotPresent:(id)present
{
  messageCopy = message;
  v7 = [(MFMessageStoreObjectCache *)self->_objectCache addObject:present forMessage:messageCopy kind:1];
  [v7 setMessage:messageCopy];

  return v7;
}

- (id)_cachedHeadersForMessage:(id)message valueIfNotPresent:(id)present
{
  v4 = [(MFMessageStoreObjectCache *)self->_objectCache addObject:present forMessage:message kind:0];

  return v4;
}

- (id)_cachedBodyDataContainerForMessage:(id)message valueIfNotPresent:(id)present
{
  v4 = [(MFMessageStoreObjectCache *)self->_objectCache addObject:present forMessage:message kind:3];

  return v4;
}

- (id)_fetchBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available downloadIfNecessary:(BOOL)necessary partial:(BOOL *)partial
{
  messageCopy = message;
  [(MFMessageStore *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFMessageStore _fetchBodyDataForMessage:andHeaderDataIfReadilyAvailable:downloadIfNecessary:partial:]", "MessageStore.m", 284, "0");
}

- (id)bodyDataForMessage:(id)message isComplete:(BOOL *)complete isPartial:(BOOL *)partial downloadIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v34 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v11 = [(MFMessageStore *)self _cachedBodyDataForMessage:messageCopy valueIfNotPresent:0];
  if (v11 && (complete || (v12 = [messageCopy messageSize], v12 == objc_msgSend(v11, "length"))))
  {
    v13 = +[MFMessageStore log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      messageID = [messageCopy messageID];
      *buf = 138543362;
      v30 = messageID;
      _os_log_impl(&dword_1D36B2000, v13, OS_LOG_TYPE_DEFAULT, "Found cached body data for message %{public}@", buf, 0xCu);
    }

    v15 = v11;
  }

  else
  {
    v28 = 0;
    v16 = [(MFMessageStore *)self _fetchBodyDataForMessage:messageCopy andHeaderDataIfReadilyAvailable:&v28 downloadIfNecessary:necessaryCopy partial:0];
    v13 = v28;

    if (v16)
    {
      v17 = +[MFMessageStore log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v16 length];
        ef_publicDescription = [messageCopy ef_publicDescription];
        *buf = 134218242;
        v30 = v18;
        v31 = 2114;
        v32[0] = ef_publicDescription;
        _os_log_impl(&dword_1D36B2000, v17, OS_LOG_TYPE_DEFAULT, "Fetched body data of length %lu for message %{public}@", buf, 0x16u);
      }

      v15 = [(MFMessageStore *)self _cachedBodyDataForMessage:messageCopy valueIfNotPresent:v16];

      if (v13)
      {
        v20 = [(MFMessageStore *)self _cachedHeaderDataForMessage:messageCopy valueIfNotPresent:v13];
      }
    }

    else
    {
      v21 = +[MFMessageStore log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        messageID2 = [messageCopy messageID];
        [MFMessageStore bodyDataForMessage:messageID2 isComplete:v33 isPartial:v21 downloadIfNecessary:?];
      }

      v15 = 0;
    }
  }

  if (complete && v15)
  {
    *complete = 1;
  }

  if (partial)
  {
    *partial = 0;
  }

  v23 = +[MFMessageStore log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    messageID3 = [messageCopy messageID];
    v25 = *complete;
    v26 = *partial;
    *buf = 138543874;
    v30 = messageID3;
    v31 = 1024;
    LODWORD(v32[0]) = v25;
    WORD2(v32[0]) = 1024;
    *(v32 + 6) = v26;
    _os_log_impl(&dword_1D36B2000, v23, OS_LOG_TYPE_DEFAULT, "Body data for message %{public}@, isComplete: %{BOOL}d, isPartial: %{BOOL}d", buf, 0x18u);
  }

  return v15;
}

- (BOOL)hasCompleteDataForMimePart:(id)part
{
  partCopy = part;
  mimeBody = [partCopy mimeBody];
  message = [mimeBody message];

  v7 = [(MFMessageStore *)self _cachedBodyDataForMessage:message valueIfNotPresent:0];
  v8 = [v7 length];
  range = [partCopy range];
  LOBYTE(v8) = v8 >= range + v10;

  return v8;
}

- (void)bodyDataForMessage:(os_log_t)log isComplete:isPartial:downloadIfNecessary:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1D36B2000, log, OS_LOG_TYPE_ERROR, "Failed to fetch body data for message %{public}@", buf, 0xCu);
}

@end