@interface MCMResultInfoValueForKey
- (BOOL)encodeResultOntoReply:(id)reply;
- (MCMResultInfoValueForKey)initWithValue:(id)value;
- (void)setValue:(id)value;
@end

@implementation MCMResultInfoValueForKey

- (void)setValue:(id)value
{
  p_value = &self->_value;

  objc_storeStrong(p_value, value);
}

- (BOOL)encodeResultOntoReply:(id)reply
{
  v11 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v10.receiver = self;
  v10.super_class = MCMResultInfoValueForKey;
  v5 = [(MCMResultBase *)&v10 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];
    if (error)
    {
LABEL_5:

      goto LABEL_6;
    }

    value = [(MCMResultInfoValueForKey *)self value];

    if (value)
    {
      error = [(MCMResultInfoValueForKey *)self value];
      v8 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(replyCopy, "ReplyInfoValue", v8);

      goto LABEL_5;
    }
  }

LABEL_6:

  return v5;
}

- (MCMResultInfoValueForKey)initWithValue:(id)value
{
  v10 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = MCMResultInfoValueForKey;
  v6 = [(MCMResultBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
  }

  return v7;
}

@end