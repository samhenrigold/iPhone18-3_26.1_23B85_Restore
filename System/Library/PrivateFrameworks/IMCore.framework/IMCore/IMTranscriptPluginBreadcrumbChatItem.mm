@interface IMTranscriptPluginBreadcrumbChatItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isFromMe;
- (id)_initWithItem:(id)item datasource:(id)datasource statusText:(id)text optionFlags:(unint64_t)flags;
- (unint64_t)hash;
- (void)configureStatusTextWithAccount:(id)account;
@end

@implementation IMTranscriptPluginBreadcrumbChatItem

- (id)_initWithItem:(id)item datasource:(id)datasource statusText:(id)text optionFlags:(unint64_t)flags
{
  itemCopy = item;
  datasourceCopy = datasource;
  textCopy = text;
  v17.receiver = self;
  v17.super_class = IMTranscriptPluginBreadcrumbChatItem;
  v13 = [(IMChatItem *)&v17 _initWithItem:itemCopy];
  if (v13)
  {
    guid = [itemCopy guid];
    v15 = sub_1A83AC604();

    [v13 _setGUID:v15];
    objc_storeStrong(v13 + 7, datasource);
    objc_storeStrong(v13 + 8, text);
    v13[10] = flags;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = IMTranscriptPluginBreadcrumbChatItem;
  if ([(IMTranscriptChatItem *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (self->_optionFlags == v5[10] && ((rawStatusText = self->_rawStatusText, rawStatusText == v5[8]) || [(NSString *)rawStatusText isEqual:?]))
    {
      dataSource = self->_dataSource;
      if (dataSource == v5[7])
      {
        v8 = 1;
      }

      else
      {
        v8 = [(IMBalloonPluginDataSource *)dataSource isEqual:?];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = IMTranscriptPluginBreadcrumbChatItem;
  v3 = [(IMTranscriptChatItem *)&v6 hash]+ self->_optionFlags;
  v4 = &v3[[(NSString *)self->_rawStatusText hash]];
  return &v4[[(IMBalloonPluginDataSource *)self->_dataSource hash]];
}

- (void)configureStatusTextWithAccount:(id)account
{
  v50 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  balloonBundleID = [(IMChatItem *)self balloonBundleID];
  v6 = IMBalloonExtensionIDWithSuffix();
  v7 = [balloonBundleID isEqualToString:v6];

  if (v7)
  {
    _item = [(IMChatItem *)self _item];
    isFromMe = [_item isFromMe];

    if (isFromMe)
    {
      alphanumericCharacterSet = sub_1A8361964();
      kIMTranscriptPluginBreadcrumbTextSenderIdentifier = [alphanumericCharacterSet localizedStringForKey:@"You sent a poll" value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
    }

    else
    {
      v18 = MEMORY[0x1E696AEC0];
      alphanumericCharacterSet = sub_1A8361964();
      v19 = [alphanumericCharacterSet localizedStringForKey:@"$(%@) sent a poll" value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
      kIMTranscriptPluginBreadcrumbTextSenderIdentifier = [v18 stringWithFormat:v19, kIMTranscriptPluginBreadcrumbTextSenderIdentifier];
    }

    browserDisplayName = 0;
  }

  else
  {
    kIMTranscriptPluginBreadcrumbTextSenderIdentifier = self->_rawStatusText;
    alphanumericCharacterSet = [MEMORY[0x1E696AD48] alphanumericCharacterSet];
    nonBaseCharacterSet = [MEMORY[0x1E696AB08] nonBaseCharacterSet];
    [alphanumericCharacterSet formUnionWithCharacterSet:nonBaseCharacterSet];

    symbolCharacterSet = [MEMORY[0x1E696AB08] symbolCharacterSet];
    [alphanumericCharacterSet formUnionWithCharacterSet:symbolCharacterSet];

    [alphanumericCharacterSet invert];
    v14 = [*MEMORY[0x1E69A5F00] stringByAppendingString:*MEMORY[0x1E69A5F20]];
    [alphanumericCharacterSet addCharactersInString:v14];

    v15 = [(NSString *)kIMTranscriptPluginBreadcrumbTextSenderIdentifier componentsSeparatedByCharactersInSet:alphanumericCharacterSet];
    v16 = [v15 componentsJoinedByString:&stru_1F1B76F98];

    if ([v16 length])
    {
      browserDisplayName = 0;
    }

    else
    {
      bundleID = [(IMBalloonPluginDataSource *)self->_dataSource bundleID];
      v21 = [bundleID hasPrefix:*MEMORY[0x1E69A69F0]];

      if (!v21 || (-[IMBalloonPluginDataSource pluginPayload](self->_dataSource, "pluginPayload"), v22 = objc_claimAutoreleasedReturnValue(), [v22 payloadDictionary], v23 = objc_claimAutoreleasedReturnValue(), v22, objc_msgSend(v23, "objectForKey:", *MEMORY[0x1E69A6EC0]), browserDisplayName = objc_claimAutoreleasedReturnValue(), v23, !browserDisplayName))
      {
        v24 = +[IMBalloonPluginManager sharedInstance];
        bundleID2 = [(IMBalloonPluginDataSource *)self->_dataSource bundleID];
        v26 = [v24 balloonPluginForBundleID:bundleID2];

        browserDisplayName = [v26 browserDisplayName];
      }

      v27 = MEMORY[0x1E696AEC0];
      v28 = sub_1A8361964();
      v29 = [v28 localizedStringForKey:@"$(%@) sent %@ message" value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
      v30 = [v27 stringWithFormat:v29, kIMTranscriptPluginBreadcrumbTextSenderIdentifier, browserDisplayName];

      kIMTranscriptPluginBreadcrumbTextSenderIdentifier = v30;
    }
  }

  __im_rangesOfHandleIdentifierStrings = [(NSString *)kIMTranscriptPluginBreadcrumbTextSenderIdentifier __im_rangesOfHandleIdentifierStrings];
  if ([__im_rangesOfHandleIdentifierStrings count])
  {
    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    _item2 = [(IMChatItem *)self _item];
    _senderHandle = [_item2 _senderHandle];

    if (_senderHandle && [_senderHandle hasName])
    {
      name = [_senderHandle name];
      if (name)
      {
        CFDictionarySetValue(v32, kIMTranscriptPluginBreadcrumbTextSenderIdentifier, name);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A84DFD7C();
      }
    }

    _item3 = [(IMChatItem *)self _item];
    _otherHandle = [_item3 _otherHandle];

    if (_otherHandle && [_otherHandle hasName])
    {
      name2 = [_otherHandle name];
      if (name2)
      {
        CFDictionarySetValue(v32, kIMTranscriptPluginBreadcrumbTextReceiverIdentifier, name2);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A84DFE0C();
      }
    }

    v41 = [(NSString *)kIMTranscriptPluginBreadcrumbTextSenderIdentifier mutableCopy];
    v42 = [IMBalloonPluginDataSource replaceHandleWithContactNameInString:v41 forAccount:accountCopy additionalHandles:v32];
    statusText = self->_statusText;
    self->_statusText = v42;
  }

  else
  {
    v36 = IMLogHandleForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v45 = kIMTranscriptPluginBreadcrumbTextSenderIdentifier;
      v46 = 2112;
      v47 = __im_rangesOfHandleIdentifierStrings;
      v48 = 2112;
      v49 = browserDisplayName;
      _os_log_error_impl(&dword_1A823F000, v36, OS_LOG_TYPE_ERROR, "There are no identifier strings to replace, so we display the raw string. tmpRawStatusText: %@, identifierRanges: %@, pluginName: %@", buf, 0x20u);
    }

    v37 = kIMTranscriptPluginBreadcrumbTextSenderIdentifier;
    v32 = self->_statusText;
    self->_statusText = v37;
  }
}

- (BOOL)isFromMe
{
  _item = [(IMChatItem *)self _item];
  isFromMe = [_item isFromMe];

  return isFromMe;
}

@end