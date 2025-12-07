@interface HDIDSIncomingRequest
- (NSString)description;
- (PBCodable)pbRequest;
- (id)nanoSyncDescription;
- (void)dealloc;
@end

@implementation HDIDSIncomingRequest

- (id)nanoSyncDescription
{
  pbRequest = [(HDIDSIncomingRequest *)self pbRequest];
  v4 = HDNanoSyncDescriptionSafe(pbRequest);

  messageID = [(HDIDSIncomingRequest *)self messageID];
  idsIdentifier = [(HDIDSIncomingRequest *)self idsIdentifier];
  v7 = FormattedMessageDescription(messageID, 1, 1, idsIdentifier, v4);

  return v7;
}

- (PBCodable)pbRequest
{
  pbRequest = self->_pbRequest;
  if (!pbRequest)
  {
    WeakRetained = objc_loadWeakRetained(&self->_messageCenter);
    v6 = [(HDIDSMessageCenter *)WeakRetained _pbMappingForMessageID:?];

    if (v6)
    {
      v7 = v6[1];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HDIDSMessageCenter.m" lineNumber:805 description:{@"Can't access -pbRequest without a mapping for messageID: %hu", self->_messageID}];

      v7 = 0;
    }

    v8 = [[v7 alloc] initWithData:self->_data];
    v9 = self->_pbRequest;
    self->_pbRequest = v8;

    pbRequest = self->_pbRequest;
  }

  return pbRequest;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_expectsResponse)
  {
    response = self->_response;
    if (!response || !response->_sent)
    {
      _HKInitializeLogging();
      v4 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
        *buf = 138412546;
        v9 = objc_opt_class();
        v10 = 2112;
        selfCopy = self;
        v6 = v9;
        _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%@ (%@) deallocated without sending a response", buf, 0x16u);
      }
    }
  }

  v7.receiver = self;
  v7.super_class = HDIDSIncomingRequest;
  [(HDIDSIncomingRequest *)&v7 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> messageID: %hu", v5, self, self->_messageID];

  return v6;
}

@end