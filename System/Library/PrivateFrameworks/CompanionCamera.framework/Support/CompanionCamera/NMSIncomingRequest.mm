@interface NMSIncomingRequest
- (NMSMessageCenter)messageCenter;
- (id)pbRequest;
- (void)configureResponse;
- (void)dealloc;
@end

@implementation NMSIncomingRequest

- (void)dealloc
{
  if (self->_expectsResponse && ![(NMSOutgoingResponse *)self->_response isSent])
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      [NSException raise:@"NMSMisuseException" format:@"Must not forget about an NMSIncomingRequest without first responding to it."];
    }

    else
    {
      v4 = sub_1000145AC(has_internal_diagnostics);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        sub_100024DF4();
      }
    }
  }

  v5.receiver = self;
  v5.super_class = NMSIncomingRequest;
  [(NMSIncomingRequest *)&v5 dealloc];
}

- (void)configureResponse
{
  v3 = objc_alloc_init(NMSOutgoingResponse);
  [(NMSOutgoingResponse *)v3 setPriority:self->_priority];
  [(NMSOutgoingResponse *)v3 setRequest:self];
  response = self->_response;
  self->_response = v3;
}

- (id)pbRequest
{
  pbRequest = self->_pbRequest;
  if (!pbRequest)
  {
    WeakRetained = objc_loadWeakRetained(&self->_messageCenter);
    v5 = [WeakRetained _pbMappingForMessageID:self->_messageID];

    if (!v5)
    {
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      if (has_internal_diagnostics)
      {
        [NSException raise:@"NMSMisuseException" format:@"Can't access -pbRequest without a mapping for messageID: %hu", self->_messageID];
      }

      else
      {
        v7 = sub_1000145AC(has_internal_diagnostics);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          sub_100024E8C(&self->_messageID);
        }
      }
    }

    v8 = [objc_alloc(objc_msgSend(v5 "requestClass"))];
    v9 = self->_pbRequest;
    self->_pbRequest = v8;

    pbRequest = self->_pbRequest;
  }

  return pbRequest;
}

- (NMSMessageCenter)messageCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_messageCenter);

  return WeakRetained;
}

@end