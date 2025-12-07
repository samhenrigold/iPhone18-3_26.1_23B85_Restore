@interface NMSUnpairedResponse
- (NMSMessageCenter)messageCenter;
- (id)pbResponse;
@end

@implementation NMSUnpairedResponse

- (id)pbResponse
{
  pbResponse = self->_pbResponse;
  if (!pbResponse)
  {
    WeakRetained = objc_loadWeakRetained(&self->_messageCenter);
    v5 = [WeakRetained _pbMappingForMessageID:self->_messageID];

    if (!v5)
    {
      has_internal_diagnostics = os_variant_has_internal_diagnostics();
      if (has_internal_diagnostics)
      {
        [NSException raise:@"NMSMisuseException" format:@"Can't access -pbResponse without a mapping for messageID: %hu", self->_messageID];
      }

      else
      {
        v7 = sub_1000145AC(has_internal_diagnostics);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          sub_100024FE0(&self->_messageID);
        }
      }
    }

    v8 = [objc_alloc(objc_msgSend(v5 "responseClass"))];
    v9 = self->_pbResponse;
    self->_pbResponse = v8;

    pbResponse = self->_pbResponse;
  }

  return pbResponse;
}

- (NMSMessageCenter)messageCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_messageCenter);

  return WeakRetained;
}

@end