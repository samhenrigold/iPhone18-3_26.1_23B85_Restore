@interface BKSHIDEventUsagePairDescriptor
+ (id)descriptorForHIDEventType:(unsigned int)type page:(unsigned __int16)page usage:(unsigned __int16)usage;
- (BKSHIDEventUsagePairDescriptor)initWithCoder:(id)coder;
- (BOOL)_page:(unsigned int)_page usage:(unsigned int)usage matchesHIDEvent:(__IOHIDEvent *)event;
- (BOOL)describes:(id)describes;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesHIDEvent:(__IOHIDEvent *)event;
- (id)_initWithPage:(unsigned int)page usage:(unsigned int)usage eventType:(unsigned int)type;
- (int64_t)compare:(id)compare;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventUsagePairDescriptor

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v15.receiver = self;
  v15.super_class = BKSHIDEventUsagePairDescriptor;
  v5 = [(BKSHIDEventDescriptor *)&v15 compare:compareCopy];
  if (!v5)
  {
    v6 = objc_opt_class();
    v7 = compareCopy;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
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

    v9 = v8;

    if (v9)
    {
      v10 = *(&self->super._hidEventType + 1);
      v11 = v9[3];
      if (v10 >= v11)
      {
        if (v10 > v11)
        {
          v5 = 1;
          goto LABEL_15;
        }

        page = self->_page;
        v13 = v9[4];
        if (page >= v13)
        {
          v5 = page > v13;
          goto LABEL_15;
        }
      }

      v5 = -1;
    }

    else
    {
      v5 = 0;
    }

LABEL_15:
  }

  return v5;
}

- (BOOL)describes:(id)describes
{
  describesCopy = describes;
  v5 = describesCopy;
  page = self->_page;
  if (*(&self->super._hidEventType + 1))
  {
    if (!page)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = 0;
        goto LABEL_12;
      }

      v7 = *(&self->super._hidEventType + 1);
      v8 = v7 == [v5 page];
      goto LABEL_8;
    }

LABEL_6:
    v9 = [(BKSHIDEventUsagePairDescriptor *)self isEqual:?];
    goto LABEL_12;
  }

  if (page)
  {
    goto LABEL_6;
  }

  hidEventType = [describesCopy hidEventType];
  v8 = hidEventType == [(BKSHIDEventDescriptor *)self hidEventType];
LABEL_8:
  v9 = v8;
LABEL_12:

  return v9;
}

- (BOOL)matchesHIDEvent:(__IOHIDEvent *)event
{
  v6.receiver = self;
  v6.super_class = BKSHIDEventUsagePairDescriptor;
  v4 = [(BKSHIDEventDescriptor *)&v6 matchesHIDEvent:?];
  if (v4)
  {
    LOBYTE(v4) = [BKSHIDEventUsagePairDescriptor _page:"_page:usage:matchesHIDEvent:" usage:? matchesHIDEvent:?];
  }

  return v4;
}

- (BOOL)_page:(unsigned int)_page usage:(unsigned int)usage matchesHIDEvent:(__IOHIDEvent *)event
{
  if (!(usage | _page))
  {
    return 1;
  }

  if (!_page && usage)
  {
    return 0;
  }

  Type = IOHIDEventGetType();
  if (Type != 37 && Type != 3 && Type != 1)
  {
    return 0;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  v10 = IOHIDEventGetIntegerValue();
  v12 = IntegerValue == _page && v10 == usage;
  if (usage)
  {
    return v12;
  }

  else
  {
    return IntegerValue == _page;
  }
}

- (BKSHIDEventUsagePairDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];
  [v5 unsignedIntValue];

  objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:? forKey:?];
  [v6 unsignedIntValue];

  objc_opt_class();
  v7 = [coderCopy decodeObjectOfClass:? forKey:?];

  [v7 unsignedIntValue];

  return [BKSHIDEventUsagePairDescriptor _initWithPage:"_initWithPage:usage:eventType:" usage:? eventType:?];
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInt:?];
  [coderCopy encodeObject:? forKey:?];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  [coderCopy encodeObject:? forKey:?];

  v8 = MEMORY[0x1E696AD98];
  v10.receiver = self;
  v10.super_class = BKSHIDEventUsagePairDescriptor;
  [(BKSHIDEventDescriptor *)&v10 hidEventType];
  v9 = [v8 numberWithUnsignedInt:?];
  [coderCopy encodeObject:? forKey:?];
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  style = [streamCopy style];
  clientInformation = [style clientInformation];
  if ([clientInformation containsObject:?])
  {
    Name = 0;
  }

  else
  {
    [(BKSHIDEventDescriptor *)self hidEventType];
    Name = IOHIDEventTypeGetName();
  }

  v8 = Name;

  if (*(&self->super._hidEventType + 1))
  {
    [streamCopy appendCustomFormatWithName:? block:?];
  }

  else
  {
    [streamCopy appendString:? withName:?];
  }
}

void *__60__BKSHIDEventUsagePairDescriptor_appendDescriptionToStream___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = *(v2 + 12);
  if (v3)
  {
    return [a2 appendFormat:v4, v3];
  }

  else
  {
    return [a2 appendFormat:v4, v6];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6 && (v9.receiver = self, v9.super_class = BKSHIDEventUsagePairDescriptor, [(BKSHIDEventDescriptor *)&v9 isEqual:v6]) && v6[3] == *(&self->super._hidEventType + 1) && v6[4] == self->_page;

  return v7;
}

- (id)_initWithPage:(unsigned int)page usage:(unsigned int)usage eventType:(unsigned int)type
{
  v11.receiver = self;
  v11.super_class = BKSHIDEventUsagePairDescriptor;
  v7 = [(BKSHIDEventDescriptor *)&v11 _initWithEventType:*&type];
  v8 = v7;
  if (v7)
  {
    v7[3] = page;
    v7[4] = usage;
    if (!page)
    {
      if (usage)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:@"usage == kHIDUsage_Undefined" object:? file:? lineNumber:? description:?];
      }
    }
  }

  return v8;
}

+ (id)descriptorForHIDEventType:(unsigned int)type page:(unsigned __int16)page usage:(unsigned __int16)usage
{
  switch(type)
  {
    case 0x25u:
      v7 = off_1E6F45E58;
LABEL_7:
      v8 = [(__objc2_class *)*v7 descriptorWithPage:v5 usage:?];

      return v8;
    case 3u:
      v7 = off_1E6F45FA0;
      goto LABEL_7;
    case 1u:
      v7 = off_1E6F46000;
      goto LABEL_7;
  }

  v8 = 0;

  return v8;
}

@end