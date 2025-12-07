@interface PRAstQPFilterNode
- (PRAstQPFilterNode)initWithFilterString:(id)string sourceToken:(id)token isLastToken:(BOOL)lastToken;
- (id)toDictionary;
- (void)dealloc;
@end

@implementation PRAstQPFilterNode

- (id)toDictionary
{
  v7[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v7[0] = @"QPFilter";
  v6[0] = @"type";
  v6[1] = @"filterString";
  v7[1] = [(PRAstQPFilterNode *)self filterString];
  v6[2] = @"sourceToken";
  v7[2] = [(PRAstNode *)self sourceToken];
  v4 = [v3 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v7, v6, 3)}];
  if ([(PRAstNode *)self isLastToken])
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isLastToken"];
  }

  return [v4 copy];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRAstQPFilterNode;
  [(PRAstNode *)&v3 dealloc];
}

- (PRAstQPFilterNode)initWithFilterString:(id)string sourceToken:(id)token isLastToken:(BOOL)lastToken
{
  v8.receiver = self;
  v8.super_class = PRAstQPFilterNode;
  v6 = [(PRAstNode *)&v8 initWithSourceToken:token isLastToken:lastToken];
  if (v6)
  {
    v6->_filterString = string;
  }

  return v6;
}

@end