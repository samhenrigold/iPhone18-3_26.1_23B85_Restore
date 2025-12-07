@interface NMSMessagePersistentContext
- (NMSMessagePersistentContext)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NMSMessagePersistentContext

- (NMSMessagePersistentContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = NMSMessagePersistentContext;
  v5 = [(NMSMessagePersistentContext *)&v19 init];
  if (v5)
  {
    v5->_messageID = [coderCopy decodeIntegerForKey:@"m"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    idsIdentifier = v5->_idsIdentifier;
    v5->_idsIdentifier = v6;

    v9 = allowedClasses(v8);
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"u"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    date = v5->_date;
    v5->_date = v12;

    v14 = [coderCopy decodeBoolForKey:@"r"];
    v5->_fromRequest = v14;
    v15 = allowedClasses(v14);
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"f"];
    idsOptions = v5->_idsOptions;
    v5->_idsOptions = v16;

    v5->_sendAcked = [coderCopy decodeBoolForKey:@"sa"];
    v5->_processAcked = [coderCopy decodeBoolForKey:@"pa"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_messageID forKey:@"m"];
  [coderCopy encodeObject:self->_idsIdentifier forKey:@"i"];
  if (self->_userInfo)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [NMSMessagePersistentContext encodeWithCoder:];
    }

    userInfo = self->_userInfo;
  }

  else
  {
    userInfo = 0;
  }

  [coderCopy encodeObject:userInfo forKey:@"u"];
  [coderCopy encodeObject:self->_date forKey:@"d"];
  [coderCopy encodeBool:self->_fromRequest forKey:@"r"];
  if (self->_idsOptions)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [NMSMessagePersistentContext encodeWithCoder:];
    }

    idsOptions = self->_idsOptions;
  }

  else
  {
    idsOptions = 0;
  }

  [coderCopy encodeObject:idsOptions forKey:@"f"];
  [coderCopy encodeBool:self->_sendAcked forKey:@"sa"];
  [coderCopy encodeBool:self->_processAcked forKey:@"pa"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p id:%hu ids:%@ date:%@ fromRequest:%d sendAcked:%d processAcked:%d idsOptions:%@ userInfo:%@>", v5, self, self->_messageID, self->_idsIdentifier, self->_date, self->_fromRequest, self->_sendAcked, self->_processAcked, self->_idsOptions, self->_userInfo];

  return v6;
}

@end