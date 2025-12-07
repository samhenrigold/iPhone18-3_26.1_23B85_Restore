@interface MCMResultFetchPersonaUniqueStrings
- (BOOL)encodeResultOntoReply:(id)reply;
- (MCMResultFetchPersonaUniqueStrings)initWithPersonaUniqueStrings:(id)strings;
- (void)setPersonaUniqueStrings:(id)strings;
@end

@implementation MCMResultFetchPersonaUniqueStrings

- (void)setPersonaUniqueStrings:(id)strings
{
  p_personaUniqueStrings = &self->_personaUniqueStrings;

  objc_storeStrong(p_personaUniqueStrings, strings);
}

- (BOOL)encodeResultOntoReply:(id)reply
{
  v12 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v11.receiver = self;
  v11.super_class = MCMResultFetchPersonaUniqueStrings;
  v5 = [(MCMResultBase *)&v11 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];

    if (!error)
    {
      personaUniqueStrings = [(MCMResultFetchPersonaUniqueStrings *)self personaUniqueStrings];
      allObjects = [personaUniqueStrings allObjects];
      v9 = _CFXPCCreateXPCObjectFromCFObject();

      if (v9)
      {
        xpc_dictionary_set_value(replyCopy, "ReplyPersonaUniqueStringsArray", v9);
      }
    }
  }

  return v5;
}

- (MCMResultFetchPersonaUniqueStrings)initWithPersonaUniqueStrings:(id)strings
{
  v10 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v9.receiver = self;
  v9.super_class = MCMResultFetchPersonaUniqueStrings;
  v6 = [(MCMResultBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_personaUniqueStrings, strings);
  }

  return v7;
}

@end