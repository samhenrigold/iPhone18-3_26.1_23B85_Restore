@interface VMUBacktraceRecursionInfo
- (VMUBacktraceRecursionInfo)initWithDictionary:(id)dictionary;
- (id)dictionary;
@end

@implementation VMUBacktraceRecursionInfo

- (VMUBacktraceRecursionInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = VMUBacktraceRecursionInfo;
  v5 = [(VMUBacktraceRecursionInfo *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"hottestElided"];
    v5->_hottestElided = [v6 unsignedIntValue];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"coldestElided"];
    v5->_coldestElided = [v7 unsignedIntValue];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"depth"];
    v5->_depth = [v8 unsignedIntValue];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"keyPC"];
    v5->_keyPC = [v9 unsignedLongLongValue];
  }

  return v5;
}

- (id)dictionary
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"hottestElided";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_hottestElided];
  v10[0] = v3;
  v9[1] = @"coldestElided";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_coldestElided];
  v10[1] = v4;
  v9[2] = @"depth";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_depth];
  v10[2] = v5;
  v9[3] = @"keyPC";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_keyPC];
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

@end