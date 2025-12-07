@interface EDReadLaterCloudStorage
- (EDReadLaterCloudStorage)initWithHookRegistry:(id)registry;
- (EDReadLaterCloudStorage)initWithMutableDictionary:(id)dictionary hookRegistry:(id)registry;
- (id)_dateFromDictionary:(id)dictionary forKey:(id)key;
- (id)_keyForMessage:(id)message;
- (id)_messageHashForKey:(id)key;
- (id)cloudStorageReadLaterDateForMessage:(id)message displayDate:(id *)date;
- (void)addEntryForMessage:(id)message date:(id)date;
- (void)persistedDictionaryDidChangeRemotelyWithChangedItems:(id)items deletedItems:(id)deletedItems;
- (void)persistenceDidChangeReadLaterDate:(id)date messages:(id)messages changeIsRemote:(BOOL)remote generationWindow:(id)window;
- (void)persistenceDidUpdateDisplayDateForMessages:(id)messages changeIsRemote:(BOOL)remote generation:(int64_t)generation;
- (void)removeEntryForMessage:(id)message;
- (void)updateDisplayDateForMessage:(id)message displayDate:(id)date;
@end

@implementation EDReadLaterCloudStorage

- (EDReadLaterCloudStorage)initWithMutableDictionary:(id)dictionary hookRegistry:(id)registry
{
  dictionaryCopy = dictionary;
  registryCopy = registry;
  if (!dictionaryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDReadLaterCloudStorage.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
  }

  v14.receiver = self;
  v14.super_class = EDReadLaterCloudStorage;
  v10 = [(EDReadLaterCloudStorage *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_persistentDictionary, dictionary);
    objc_storeStrong(&v11->_hookRegistry, registry);
    [registryCopy registerMessageChangeHookResponder:v11];
  }

  return v11;
}

- (EDReadLaterCloudStorage)initWithHookRegistry:(id)registry
{
  registryCopy = registry;
  v5 = [objc_alloc(MEMORY[0x1E699AF10]) initWithIdentifier:@"com.apple.mail.remindMe" encrypted:0 delegate:self];
  v6 = [(EDReadLaterCloudStorage *)self initWithMutableDictionary:v5 hookRegistry:registryCopy];

  return v6;
}

- (void)addEntryForMessage:(id)message date:(id)date
{
  v57 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dateCopy = date;
  v48 = messageCopy;
  v47 = [(EDReadLaterCloudStorage *)self _keyForMessage:messageCopy];
  if (v47)
  {
    timeIntervalSince1970 = [dateCopy timeIntervalSince1970];
    v9 = v8;
    v10 = EDRemindMeLog(timeIntervalSince1970);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = messageCopy;
      v12 = MEMORY[0x1E696AEC0];
      globalMessageID = [v11 globalMessageID];
      subject = [v11 subject];
      ef_publicDescription = [subject ef_publicDescription];
      displayDate = [v11 displayDate];
      readLater = [v11 readLater];
      ef_publicDescription2 = [readLater ef_publicDescription];
      v19 = [v12 stringWithFormat:@"<id=%lld, subject=%@, displayDate=%@, readLater=%@>", globalMessageID, ef_publicDescription, displayDate, ef_publicDescription2];

      *buf = 138543874;
      v52 = v19;
      v53 = 2114;
      v54 = v47;
      v55 = 2048;
      v56 = v9;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Adding entry for message: %{public}@, key: %{public}@, date: %f", buf, 0x20u);
    }

    messageIDHeader = [v48 messageIDHeader];
    ec_messageIDSubstring = [messageIDHeader ec_messageIDSubstring];

    v22 = objc_alloc(MEMORY[0x1E695DF90]);
    v49 = EDReadLaterCloudStorageDictionaryKeyDate;
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    v50 = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v25 = [v22 initWithDictionary:v24];

    if (ec_messageIDSubstring)
    {
      [v25 setObject:ec_messageIDSubstring forKeyedSubscript:EDReadLaterCloudStorageDictionaryKeyMessageID];
    }

    else
    {
      v36 = EDRemindMeLog(v26);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = v48;
        v38 = MEMORY[0x1E696AEC0];
        globalMessageID2 = [v37 globalMessageID];
        subject2 = [v37 subject];
        ef_publicDescription3 = [subject2 ef_publicDescription];
        displayDate2 = [v37 displayDate];
        readLater2 = [v37 readLater];
        ef_publicDescription4 = [readLater2 ef_publicDescription];
        v43 = [v38 stringWithFormat:@"<id=%lld, subject=%@, displayDate=%@, readLater=%@>", globalMessageID2, ef_publicDescription3, displayDate2, ef_publicDescription4];

        *buf = 138543362;
        v52 = v43;
        _os_log_error_impl(&dword_1C61EF000, v36, OS_LOG_TYPE_ERROR, "Unable to find message ID for message: %{public}@", buf, 0xCu);
      }
    }

    [(EMMutableDictionaryProtocol *)self->_persistentDictionary setObject:v25 forKey:v47];
  }

  else
  {
    ec_messageIDSubstring = EDRemindMeLog(0);
    if (os_log_type_enabled(ec_messageIDSubstring, OS_LOG_TYPE_ERROR))
    {
      v27 = messageCopy;
      v28 = MEMORY[0x1E696AEC0];
      globalMessageID3 = [v27 globalMessageID];
      subject3 = [v27 subject];
      ef_publicDescription5 = [subject3 ef_publicDescription];
      displayDate3 = [v27 displayDate];
      readLater3 = [v27 readLater];
      ef_publicDescription6 = [readLater3 ef_publicDescription];
      v35 = [v28 stringWithFormat:@"<id=%lld, subject=%@, displayDate=%@, readLater=%@>", globalMessageID3, ef_publicDescription5, displayDate3, ef_publicDescription6];

      *buf = 138543362;
      v52 = v35;
      _os_log_error_impl(&dword_1C61EF000, ec_messageIDSubstring, OS_LOG_TYPE_ERROR, "Unable to find key for message: %{public}@", buf, 0xCu);
    }
  }
}

- (void)updateDisplayDateForMessage:(id)message displayDate:(id)date
{
  v65 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dateCopy = date;
  v56 = [(EDReadLaterCloudStorage *)self _keyForMessage:messageCopy];
  if (v56)
  {
    [dateCopy timeIntervalSince1970];
    v7 = v6;
    dateReceived = [messageCopy dateReceived];
    v9 = [dateReceived isEqualToDate:dateCopy];

    v11 = EDRemindMeLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v51 = v9;
      v12 = messageCopy;
      v13 = MEMORY[0x1E696AEC0];
      globalMessageID = [v12 globalMessageID];
      subject = [v12 subject];
      ef_publicDescription = [subject ef_publicDescription];
      displayDate = [v12 displayDate];
      readLater = [v12 readLater];
      ef_publicDescription2 = [readLater ef_publicDescription];
      v20 = [v13 stringWithFormat:@"<id=%lld, subject=%@, displayDate=%@, readLater=%@>", globalMessageID, ef_publicDescription, displayDate, ef_publicDescription2];

      *buf = 138544130;
      v58 = v20;
      v59 = 2114;
      v60 = v56;
      v61 = 2048;
      v62 = v7;
      v63 = 1024;
      v64 = v51;
      _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Updating display date for message: %{public}@, key: %{public}@, date: %f isDisplayDateDateReceived:%{BOOL}d", buf, 0x26u);
    }

    v21 = [(EMMutableDictionaryProtocol *)self->_persistentDictionary objectForKey:v56];
    if (v21)
    {
      v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v21];
      v23 = [v21 objectForKeyedSubscript:EDReadLaterCloudStorageDictionaryKeyDisplayDate];
      v24 = v23;
      if (v23)
      {
        v25 = EDRemindMeLog(v23);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = messageCopy;
          v27 = MEMORY[0x1E696AEC0];
          globalMessageID2 = [v26 globalMessageID];
          subject2 = [v26 subject];
          ef_publicDescription3 = [subject2 ef_publicDescription];
          displayDate2 = [v26 displayDate];
          readLater2 = [v26 readLater];
          ef_publicDescription4 = [readLater2 ef_publicDescription];
          v31 = [v27 stringWithFormat:@"<id=%lld, subject=%@, displayDate=%@, readLater=%@>", globalMessageID2, ef_publicDescription3, displayDate2, ef_publicDescription4];

          *buf = 138543874;
          v58 = v24;
          v59 = 2114;
          v60 = v31;
          v61 = 2114;
          v62 = *&v56;
          _os_log_error_impl(&dword_1C61EF000, v25, OS_LOG_TYPE_ERROR, "An existing display date (%{public}@) already exists for message: %{public}@, key: %{public}@", buf, 0x20u);
        }
      }

      else
      {
        v25 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
        [v22 setObject:v25 forKeyedSubscript:EDReadLaterCloudStorageDictionaryKeyDisplayDate];
      }

      [(EMMutableDictionaryProtocol *)self->_persistentDictionary setObject:v22 forKey:v56];
    }

    else
    {
      v22 = EDRemindMeLog(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v41 = messageCopy;
        v42 = MEMORY[0x1E696AEC0];
        globalMessageID3 = [v41 globalMessageID];
        subject3 = [v41 subject];
        ef_publicDescription5 = [subject3 ef_publicDescription];
        displayDate3 = [v41 displayDate];
        readLater3 = [v41 readLater];
        ef_publicDescription6 = [readLater3 ef_publicDescription];
        v48 = [v42 stringWithFormat:@"<id=%lld, subject=%@, displayDate=%@, readLater=%@>", globalMessageID3, ef_publicDescription5, displayDate3, ef_publicDescription6];

        *buf = 138543618;
        v58 = v48;
        v59 = 2114;
        v60 = v56;
        _os_log_error_impl(&dword_1C61EF000, v22, OS_LOG_TYPE_ERROR, "No value found for message: %{public}@, key: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v21 = EDRemindMeLog(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v32 = messageCopy;
      v33 = MEMORY[0x1E696AEC0];
      globalMessageID4 = [v32 globalMessageID];
      subject4 = [v32 subject];
      ef_publicDescription7 = [subject4 ef_publicDescription];
      displayDate4 = [v32 displayDate];
      readLater4 = [v32 readLater];
      ef_publicDescription8 = [readLater4 ef_publicDescription];
      v40 = [v33 stringWithFormat:@"<id=%lld, subject=%@, displayDate=%@, readLater=%@>", globalMessageID4, ef_publicDescription7, displayDate4, ef_publicDescription8];

      *buf = 138543362;
      v58 = v40;
      _os_log_error_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_ERROR, "Unable to find key to update display date for message: %{public}@", buf, 0xCu);
    }
  }
}

- (void)removeEntryForMessage:(id)message
{
  v21 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = [(EDReadLaterCloudStorage *)self _keyForMessage:messageCopy];
  v6 = EDRemindMeLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = messageCopy;
    v7 = messageCopy;
    v8 = MEMORY[0x1E696AEC0];
    globalMessageID = [v7 globalMessageID];
    subject = [v7 subject];
    ef_publicDescription = [subject ef_publicDescription];
    displayDate = [v7 displayDate];
    readLater = [v7 readLater];
    ef_publicDescription2 = [readLater ef_publicDescription];
    v14 = [v8 stringWithFormat:@"<id=%lld, subject=%@, displayDate=%@, readLater=%@>", globalMessageID, ef_publicDescription, displayDate, ef_publicDescription2];

    *buf = 138543618;
    v18 = v14;
    v19 = 2114;
    v20 = v5;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Removing entry for message: %{public}@, key: %{public}@", buf, 0x16u);

    messageCopy = v16;
  }

  [(EMMutableDictionaryProtocol *)self->_persistentDictionary removeObjectForKey:v5];
}

- (id)cloudStorageReadLaterDateForMessage:(id)message displayDate:(id *)date
{
  messageCopy = message;
  v7 = [(EDReadLaterCloudStorage *)self _keyForMessage:messageCopy];
  v8 = [(EMMutableDictionaryProtocol *)self->_persistentDictionary objectForKey:v7];
  if (v8)
  {
    if (date)
    {
      *date = [(EDReadLaterCloudStorage *)self _dateFromDictionary:v8 forKey:EDReadLaterCloudStorageDictionaryKeyDisplayDate];
    }

    v9 = [(EDReadLaterCloudStorage *)self _dateFromDictionary:v8 forKey:EDReadLaterCloudStorageDictionaryKeyDate];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_keyForMessage:(id)message
{
  v3 = MEMORY[0x1E696AEC0];
  messageIDHeaderHash = [message messageIDHeaderHash];
  v5 = [v3 stringWithFormat:@"%lld", objc_msgSend(messageIDHeaderHash, "int64Value")];

  return v5;
}

- (void)persistenceDidChangeReadLaterDate:(id)date messages:(id)messages changeIsRemote:(BOOL)remote generationWindow:(id)window
{
  v22 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  messagesCopy = messages;
  v11 = messagesCopy;
  if (!remote)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = messagesCopy;
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v17 + 1) + 8 * v15);
          if (dateCopy)
          {
            [(EDReadLaterCloudStorage *)self addEntryForMessage:v16 date:dateCopy];
          }

          else
          {
            [(EDReadLaterCloudStorage *)self removeEntryForMessage:v16, v17];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }
}

- (void)persistenceDidUpdateDisplayDateForMessages:(id)messages changeIsRemote:(BOOL)remote generation:(int64_t)generation
{
  v20 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v8 = messagesCopy;
  if (!remote)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = messagesCopy;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          displayDate = [v13 displayDate];
          [(EDReadLaterCloudStorage *)self updateDisplayDateForMessage:v13 displayDate:displayDate];
        }

        v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

- (id)_dateFromDictionary:(id)dictionary forKey:(id)key
{
  keyCopy = key;
  v6 = [dictionary objectForKeyedSubscript:keyCopy];
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x1E695DF00];
    [v6 doubleValue];
    v9 = [v8 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v9 = 0;
  }

  if (([keyCopy isEqualToString:EDReadLaterCloudStorageDictionaryKeyDisplayDate] & 1) == 0)
  {
    ef_dateWithTruncatedSeconds = [v9 ef_dateWithTruncatedSeconds];

    v9 = ef_dateWithTruncatedSeconds;
  }

  return v9;
}

- (void)persistedDictionaryDidChangeRemotelyWithChangedItems:(id)items deletedItems:(id)deletedItems
{
  itemsCopy = items;
  deletedItemsCopy = deletedItems;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__EDReadLaterCloudStorage_persistedDictionaryDidChangeRemotelyWithChangedItems_deletedItems___block_invoke;
  v13[3] = &unk_1E8256300;
  v13[4] = self;
  v9 = v8;
  v14 = v9;
  [itemsCopy enumerateKeysAndObjectsUsingBlock:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__EDReadLaterCloudStorage_persistedDictionaryDidChangeRemotelyWithChangedItems_deletedItems___block_invoke_2;
  v12[3] = &unk_1E8256328;
  v12[4] = self;
  v10 = [deletedItemsCopy ef_compactMap:v12];
  hookRegistry = [(EDReadLaterCloudStorage *)self hookRegistry];
  [hookRegistry remindMeCloudStorageChangedWithAddedOrChangedItems:v9 deletedItems:v10];
}

void __93__EDReadLaterCloudStorage_persistedDictionaryDidChangeRemotelyWithChangedItems_deletedItems___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = [*(a1 + 32) _messageHashForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v10;
    v7 = [*(a1 + 32) _dateFromDictionary:v6 forKey:EDReadLaterCloudStorageDictionaryKeyDate];
    v8 = [*(a1 + 32) _dateFromDictionary:v6 forKey:EDReadLaterCloudStorageDictionaryKeyDisplayDate];
    if (v5 && v7)
    {
      v9 = [[EDReadLaterCloudStorageChangeElement alloc] initWithMessageID:v5 readLaterDate:v7 displayDate:v8];
      [*(a1 + 40) setObject:v9 forKeyedSubscript:v5];
    }
  }
}

id __93__EDReadLaterCloudStorage_persistedDictionaryDidChangeRemotelyWithChangedItems_deletedItems___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _messageHashForKey:a2];

  return v2;
}

- (id)_messageHashForKey:(id)key
{
  keyCopy = key;
  if (_messageHashForKey__onceToken != -1)
  {
    [EDReadLaterCloudStorage _messageHashForKey:];
  }

  v4 = [_messageHashForKey__formatter numberFromString:keyCopy];
  longLongValue = [v4 longLongValue];
  v6 = [objc_alloc(MEMORY[0x1E699B200]) initWithHash:longLongValue];

  return v6;
}

uint64_t __46__EDReadLaterCloudStorage__messageHashForKey___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _messageHashForKey__formatter;
  _messageHashForKey__formatter = v0;

  v2 = _messageHashForKey__formatter;

  return [v2 setNumberStyle:1];
}

@end