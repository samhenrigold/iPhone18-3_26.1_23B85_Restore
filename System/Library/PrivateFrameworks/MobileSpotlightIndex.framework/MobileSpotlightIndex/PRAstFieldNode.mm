@interface PRAstFieldNode
- (PRAstFieldNode)initWithFieldType:(int64_t)type originalKeyword:(id)keyword expression:(id)expression sourceToken:(id)token isLastToken:(BOOL)lastToken isIgnored:(BOOL)ignored;
- (id)fieldTypeString;
- (id)toDictionary;
- (void)dealloc;
@end

@implementation PRAstFieldNode

- (id)toDictionary
{
  v10[6] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v10[0] = @"Field";
  v9[0] = @"type";
  v9[1] = @"fieldType";
  v10[1] = [(PRAstFieldNode *)self fieldTypeString];
  v9[2] = @"originalKeyword";
  v10[2] = [(PRAstFieldNode *)self originalKeyword];
  v9[3] = @"sourceToken";
  v10[3] = [(PRAstNode *)self sourceToken];
  v9[4] = @"expression";
  if ([(PRAstFieldNode *)self expression])
  {
    toDictionary = [(PRAstNode *)[(PRAstFieldNode *)self expression] toDictionary];
  }

  else
  {
    toDictionary = @"nil";
  }

  v10[4] = toDictionary;
  v9[5] = @"isIgnored";
  isIgnored = [(PRAstFieldNode *)self isIgnored];
  v6 = MEMORY[0x1E695E110];
  if (isIgnored)
  {
    v6 = MEMORY[0x1E695E118];
  }

  v10[5] = v6;
  v7 = [v3 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, v9, 6)}];
  if ([(PRAstNode *)self isLastToken])
  {
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isLastToken"];
  }

  return [v7 copy];
}

- (id)fieldTypeString
{
  fieldType = [(PRAstFieldNode *)self fieldType];
  if (fieldType > 0xC)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E81979A0[fieldType];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRAstFieldNode;
  [(PRAstNode *)&v3 dealloc];
}

- (PRAstFieldNode)initWithFieldType:(int64_t)type originalKeyword:(id)keyword expression:(id)expression sourceToken:(id)token isLastToken:(BOOL)lastToken isIgnored:(BOOL)ignored
{
  v15.receiver = self;
  v15.super_class = PRAstFieldNode;
  v12 = [(PRAstNode *)&v15 initWithSourceToken:token isLastToken:lastToken];
  v13 = v12;
  if (v12)
  {
    v12->_fieldType = type;
    v12->_originalKeyword = keyword;
    v13->_expression = expression;
    v13->_isIgnored = ignored;
  }

  return v13;
}

@end