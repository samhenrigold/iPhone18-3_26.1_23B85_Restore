@interface BKSHIDEventSenderSpecificDescriptor
- (BKSHIDEventSenderSpecificDescriptor)initWithCoder:(id)coder;
- (BKSHIDEventSenderSpecificDescriptor)initWithDescriptor:(id)descriptor senderID:(unint64_t)d;
- (BOOL)describes:(id)describes;
- (BOOL)matchesHIDEvent:(__IOHIDEvent *)event;
- (id)descriptorByAddingSenderIDToMatchCriteria:(unint64_t)criteria;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventSenderSpecificDescriptor

- (BOOL)matchesHIDEvent:(__IOHIDEvent *)event
{
  senderID = [(BKSHIDEventSenderSpecificDescriptor *)self senderID];
  if (senderID != IOHIDEventGetSenderID())
  {
    return 0;
  }

  sourceDescriptor = self->_sourceDescriptor;

  return [(BKSHIDEventDescriptor *)sourceDescriptor matchesHIDEvent:?];
}

- (BOOL)describes:(id)describes
{
  describesCopy = describes;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = describesCopy;
    senderID = [(BKSHIDEventSenderSpecificDescriptor *)self senderID];
    if (senderID == [v5 senderID])
    {
      sourceDescriptor = self->_sourceDescriptor;
      sourceDescriptor = [v5 sourceDescriptor];
      v9 = [(BKSHIDEventDescriptor *)sourceDescriptor describes:?];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BKSHIDEventSenderSpecificDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = BKSHIDEventSenderSpecificDescriptor;
  v5 = [(BKSHIDEventDescriptor *)&v11 init];
  if (v5 && (objc_opt_class(), [coderCopy decodeObjectOfClass:? forKey:?], v6 = objc_claimAutoreleasedReturnValue(), v5->_senderID = objc_msgSend(v6, "unsignedLongLongValue"), v6, objc_opt_class(), objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:"), v7 = objc_claimAutoreleasedReturnValue(), sourceDescriptor = v5->_sourceDescriptor, v5->_sourceDescriptor = v7, sourceDescriptor, v5->_sourceDescriptor))
  {
    v5 = [BKSHIDEventSenderSpecificDescriptor initWithDescriptor:v5 senderID:"initWithDescriptor:senderID:"];
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v4 = [v3 numberWithUnsignedLongLong:?];
  [coderCopy encodeObject:? forKey:?];

  [coderCopy encodeObject:? forKey:?];
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v7.receiver = self;
  v7.super_class = BKSHIDEventSenderSpecificDescriptor;
  [(BKSHIDEventDescriptor *)&v7 appendDescriptionToStream:streamCopy];
  v5 = [streamCopy appendUInt64:? withName:? format:?];
  v6 = [streamCopy appendObject:? withName:?];
}

- (id)descriptorByAddingSenderIDToMatchCriteria:(unint64_t)criteria
{
  v3 = [BKSHIDEventSenderSpecificDescriptor initWithDescriptor:"initWithDescriptor:senderID:" senderID:?];

  return v3;
}

- (BKSHIDEventSenderSpecificDescriptor)initWithDescriptor:(id)descriptor senderID:(unint64_t)d
{
  descriptorCopy = descriptor;
  v11.receiver = self;
  v11.super_class = BKSHIDEventSenderSpecificDescriptor;
  v8 = [(BKSHIDEventDescriptor *)&v11 _initWithEventType:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 3, descriptor);
    v9->_senderID = d;
  }

  return v9;
}

@end