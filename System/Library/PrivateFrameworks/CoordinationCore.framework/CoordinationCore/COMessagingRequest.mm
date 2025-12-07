@interface COMessagingRequest
+ (id)acceptableResponses;
- (COMessagingRequest)initWithCoder:(id)coder;
- (COMessagingRequest)initWithRequestID:(unsigned int)d requestType:(int64_t)type payload:(id)payload payloadType:(id)payloadType topic:(id)topic;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMessagingRequest

- (COMessagingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = COMessagingRequest;
  v5 = [(COMeshCommand *)&v16 initWithCoder:coderCopy];
  if (!v5 || ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestID"], v6 = objc_claimAutoreleasedReturnValue(), v5->_requestID = objc_msgSend(v6, "unsignedIntValue"), v6, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"requestType"), v7 = objc_claimAutoreleasedReturnValue(), v5->_requestType = objc_msgSend(v7, "integerValue"), v7, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"payload"), v8 = objc_claimAutoreleasedReturnValue(), payload = v5->_payload, v5->_payload = v8, payload, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"payloadType"), v10 = objc_claimAutoreleasedReturnValue(), payloadType = v5->_payloadType, v5->_payloadType = v10, payloadType, objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"topic"), v12 = objc_claimAutoreleasedReturnValue(), topic = v5->_topic, v5->_topic = v12, topic, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = COMessagingRequest;
  coderCopy = coder;
  [(COMeshCommand *)&v10 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[COMessagingRequest requestID](self, "requestID", v10.receiver, v10.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"requestID"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[COMessagingRequest requestType](self, "requestType")}];
  [coderCopy encodeObject:v6 forKey:@"requestType"];

  payload = [(COMessagingRequest *)self payload];
  [coderCopy encodeObject:payload forKey:@"payload"];

  payloadType = [(COMessagingRequest *)self payloadType];
  [coderCopy encodeObject:payloadType forKey:@"payloadType"];

  topic = [(COMessagingRequest *)self topic];
  [coderCopy encodeObject:topic forKey:@"topic"];
}

+ (id)acceptableResponses
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];

  return v2;
}

- (COMessagingRequest)initWithRequestID:(unsigned int)d requestType:(int64_t)type payload:(id)payload payloadType:(id)payloadType topic:(id)topic
{
  payloadCopy = payload;
  payloadTypeCopy = payloadType;
  topicCopy = topic;
  v19.receiver = self;
  v19.super_class = COMessagingRequest;
  v16 = [(COMeshCommand *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_requestID = d;
    v16->_requestType = type;
    objc_storeStrong(&v16->_payload, payload);
    objc_storeStrong(&v17->_payloadType, payloadType);
    objc_storeStrong(&v17->_topic, topic);
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, id = %u>", v5, self, -[COMessagingRequest requestID](self, "requestID")];

  return v6;
}

@end