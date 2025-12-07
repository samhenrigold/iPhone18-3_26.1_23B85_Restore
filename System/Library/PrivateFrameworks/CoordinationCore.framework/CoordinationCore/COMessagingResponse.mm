@interface COMessagingResponse
- (COMessagingResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMessagingResponse

- (COMessagingResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = COMessagingResponse;
  v5 = [(COMeshResponse *)&v12 initWithCoder:coderCopy];
  if (v5 && (([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload"], v6 = objc_claimAutoreleasedReturnValue(), payload = v5->_payload, v5->_payload = v6, payload, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"payloadType"), v8 = objc_claimAutoreleasedReturnValue(), payloadType = v5->_payloadType, v5->_payloadType = v8, payloadType, v5->_payload) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v5->_payloadType && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0)))
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = COMessagingResponse;
  coderCopy = coder;
  [(COMeshResponse *)&v7 encodeWithCoder:coderCopy];
  v5 = [(COMessagingResponse *)self payload:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"payload"];

  payloadType = [(COMessagingResponse *)self payloadType];
  [coderCopy encodeObject:payloadType forKey:@"payloadType"];
}

@end