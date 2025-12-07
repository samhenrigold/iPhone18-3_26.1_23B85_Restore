@interface PRAstTermNode
- (PRAstTermNode)initWithValue:(id)value sourceToken:(id)token isLastToken:(BOOL)lastToken isNegated:(BOOL)negated isIgnored:(BOOL)ignored;
- (id)toDictionary;
- (void)dealloc;
@end

@implementation PRAstTermNode

- (id)toDictionary
{
  v7[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v7[0] = @"Term";
  v6[0] = @"type";
  v6[1] = @"value";
  v7[1] = [(PRAstTermNode *)self value];
  v6[2] = @"sourceToken";
  v7[2] = [(PRAstNode *)self sourceToken];
  v4 = [v3 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v7, v6, 3)}];
  if ([(PRAstNode *)self isLastToken])
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isLastToken"];
  }

  if ([(PRAstTermNode *)self isNegated])
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isNegated"];
  }

  if ([(PRAstTermNode *)self isIgnored])
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isIgnored"];
  }

  return [v4 copy];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRAstTermNode;
  [(PRAstNode *)&v3 dealloc];
}

- (PRAstTermNode)initWithValue:(id)value sourceToken:(id)token isLastToken:(BOOL)lastToken isNegated:(BOOL)negated isIgnored:(BOOL)ignored
{
  v12.receiver = self;
  v12.super_class = PRAstTermNode;
  v10 = [(PRAstNode *)&v12 initWithSourceToken:token isLastToken:lastToken];
  if (v10)
  {
    v10->_value = value;
    v10->_isNegated = negated;
    v10->_isIgnored = ignored;
  }

  return v10;
}

@end