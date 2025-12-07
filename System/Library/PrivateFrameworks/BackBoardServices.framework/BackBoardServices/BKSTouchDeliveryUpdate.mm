@interface BKSTouchDeliveryUpdate
- (BKSTouchDeliveryUpdate)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSTouchDeliveryUpdate

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
}

- (BKSTouchDeliveryUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BKSTouchDeliveryUpdate;
  v5 = [(BKSTouchDeliveryUpdate *)&v7 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:?];
    v5->_touchIdentifier = [coderCopy decodeIntegerForKey:?];
    v5->_isDetached = [coderCopy decodeBoolForKey:?];
    v5->_contextID = [coderCopy decodeIntegerForKey:?];
    v5->_pid = [coderCopy decodeIntegerForKey:?];
  }

  return v5;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6 = MEMORY[0x1E69E9820];
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:v6 block:{3221225472, __52__BKSTouchDeliveryUpdate_appendDescriptionToStream___block_invoke, &unk_1E6F47C78}];
}

id __52__BKSTouchDeliveryUpdate_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromBKSTouchDeliveryUpdateType(*(*(a1 + 40) + 24));
  [v2 appendString:? withName:?];

  v4 = *(a1 + 40);
  if (*(v4 + 12))
  {
    v5 = [*(a1 + 32) appendInteger:? withName:?];
    v4 = *(a1 + 40);
  }

  if (*(v4 + 8) == 1)
  {
    v6 = [*(a1 + 32) appendBool:? withName:?];
  }

  result = [*(a1 + 32) appendInteger:? withName:?];
  if (*(*(a1 + 40) + 16))
  {
    return [*(a1 + 32) appendInteger:? withName:?];
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
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

  v8 = v7;

  v9 = v8 && self->_type == v8[3] && self->_touchIdentifier == *(v8 + 3) && self->_isDetached == *(v8 + 8) && self->_contextID == *(v8 + 4) && self->_pid == *(v8 + 5);
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [+[BKSTouchDeliveryUpdate allocWithZone:](BKSTouchDeliveryUpdate init];
  *(result + 3) = self->_type;
  *(result + 3) = self->_touchIdentifier;
  *(result + 8) = self->_isDetached;
  *(result + 4) = self->_contextID;
  *(result + 5) = self->_pid;
  return result;
}

@end