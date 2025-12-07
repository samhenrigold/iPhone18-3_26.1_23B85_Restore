@interface REScriptASTBinaryExpressionNode
+ (id)parseBuffer:(id)buffer error:(id *)error;
- (REScriptASTBinaryExpressionNode)initWithOperator:(id)operator expression:(id)expression;
@end

@implementation REScriptASTBinaryExpressionNode

+ (id)parseBuffer:(id)buffer error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  currentToken = [bufferCopy currentToken];
  currentToken2 = [bufferCopy currentToken];
  type = [currentToken2 type];

  if (type > 0x2D || ((1 << type) & 0x3F0070180000) == 0)
  {
    if (error)
    {
      v13 = MEMORY[0x277CCACA8];
      value = [currentToken value];
      v15 = [v13 stringWithFormat:@"Unexpected token %@ found. Expecting operator token.", value];

      v17 = @"REErrorTokenKey";
      v18[0] = currentToken;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      *error = RECreateErrorWithCodeMessageAndUseInfo(204, v15, v16);
    }

    v11 = 0;
  }

  else
  {
    [bufferCopy push];
    [bufferCopy next];
    v10 = [REScriptASTPrefixExpressionNode parseBuffer:bufferCopy error:error];
    if (v10)
    {
      [bufferCopy consume];
      v11 = [[REScriptASTBinaryExpressionNode alloc] initWithOperator:currentToken expression:v10];
    }

    else
    {
      [bufferCopy pop];
      v11 = 0;
    }
  }

  return v11;
}

- (REScriptASTBinaryExpressionNode)initWithOperator:(id)operator expression:(id)expression
{
  operatorCopy = operator;
  expressionCopy = expression;
  v12.receiver = self;
  v12.super_class = REScriptASTBinaryExpressionNode;
  v9 = [(REScriptASTNode *)&v12 initWithToken:operatorCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_binaryOperator, operator);
    objc_storeStrong(&v10->_expression, expression);
  }

  return v10;
}

@end