@interface IMChatInfo
- (IMChatInfo)initWithChatDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)updateWithChatDictionary:(id)dictionary;
@end

@implementation IMChatInfo

- (IMChatInfo)initWithChatDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = IMChatInfo;
  v5 = [(IMChatInfo *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IMChatInfo *)v5 updateWithChatDictionary:dictionaryCopy];
  }

  return v6;
}

- (void)updateWithChatDictionary:(id)dictionary
{
  v4 = *MEMORY[0x1E69A6BF0];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:v4];
  lastAddressedLocalHandle = self->_lastAddressedLocalHandle;
  self->_lastAddressedLocalHandle = v6;

  v8 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6BF8]];
  lastAddressedSIMID = self->_lastAddressedSIMID;
  self->_lastAddressedSIMID = v8;

  v10 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6CD0]];
  self->_unreadMessageCount = [v10 unsignedIntValue];

  v11 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C60]];
  self->_pendingIncomingSatelliteMessageCount = [v11 unsignedIntValue];

  v12 = [dictionaryCopy objectForKeyedSubscript:@"downloadingPendingSatelliteMessages"];
  self->_downloadingPendingSatelliteMessages = [v12 BOOLValue];

  v13 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6BC0]];
  self->_isFiltered = [v13 intValue];

  v14 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6B88]];
  self->_hasCancellableScheduledMessage = [v14 BOOLValue];

  v15 = *MEMORY[0x1E69A6C70];
  v16 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69A6C70]];
  v17 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69A6CC8]];
  transcriptBackgroundDetails = self->_transcriptBackgroundDetails;
  self->_transcriptBackgroundDetails = v17;

  v21 = [dictionaryCopy objectForKeyedSubscript:v15];

  v19 = [v21 objectForKeyedSubscript:*MEMORY[0x1E69A6CC0]];
  transcriptBackgroundChannelTransferGUID = self->_transcriptBackgroundChannelTransferGUID;
  self->_transcriptBackgroundChannelTransferGUID = v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(IMChatInfo);
  v5 = [(NSString *)self->_lastAddressedLocalHandle copy];
  [(IMChatInfo *)v4 setLastAddressedLocalHandle:v5];

  v6 = [(NSString *)self->_lastAddressedSIMID copy];
  [(IMChatInfo *)v4 setLastAddressedSIMID:v6];

  [(IMChatInfo *)v4 setUnreadMessageCount:self->_unreadMessageCount];
  [(IMChatInfo *)v4 setPendingIncomingSatelliteMessageCount:self->_pendingIncomingSatelliteMessageCount];
  [(IMChatInfo *)v4 setDownloadingPendingSatelliteMessages:self->_downloadingPendingSatelliteMessages];
  [(IMChatInfo *)v4 setIsFiltered:self->_isFiltered];
  [(IMChatInfo *)v4 setHasCancellableScheduledMessage:self->_hasCancellableScheduledMessage];
  [(IMChatInfo *)v4 setTranscriptBackgroundDetails:self->_transcriptBackgroundDetails];
  [(IMChatInfo *)v4 setTranscriptBackgroundChannelTransferGUID:self->_transcriptBackgroundChannelTransferGUID];
  return v4;
}

@end