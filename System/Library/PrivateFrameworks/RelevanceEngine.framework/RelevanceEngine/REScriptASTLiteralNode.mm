@interface REScriptASTLiteralNode
+ (id)parseBuffer:(id)buffer error:(id *)error;
@end

@implementation REScriptASTLiteralNode

+ (id)parseBuffer:(id)buffer error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_283BBDA40];
  currentToken = [bufferCopy currentToken];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(currentToken, "type")}];
  v9 = [v6 containsObject:v8];

  if (v9)
  {
    v10 = [REScriptASTLiteralNode alloc];
    currentToken2 = [bufferCopy currentToken];
    error = [(REScriptASTNode *)v10 initWithToken:currentToken2];

    [bufferCopy next];
  }

  else if (error)
  {
    v12 = MEMORY[0x277CCACA8];
    value = [currentToken value];
    v14 = [v12 stringWithFormat:@"Unexpected token %@ found. Expecting literal token.", value];

    v17 = @"REErrorTokenKey";
    v18[0] = currentToken;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *error = RECreateErrorWithCodeMessageAndUseInfo(204, v14, v15);

    error = 0;
  }

  return error;
}

@end