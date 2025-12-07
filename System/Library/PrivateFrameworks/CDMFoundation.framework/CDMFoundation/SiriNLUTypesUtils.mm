@interface SiriNLUTypesUtils
+ (BOOL)isSdaAskRepeat:(id)repeat;
+ (BOOL)isTopSdaAskRepeat:(id)repeat;
+ (id)createResponse:(id)response statusCode:(int)code;
@end

@implementation SiriNLUTypesUtils

+ (BOOL)isSdaAskRepeat:(id)repeat
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  prompted = [repeat prompted];
  target = [prompted target];
  identifiers = [target identifiers];

  v6 = [identifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(identifiers);
        }

        value = [*(*(&v14 + 1) + 8 * i) value];
        v11 = [value isEqual:@"SystemPrompted_SystemAskedUserToRepeat"];

        if (v11)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v7 = [identifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

+ (BOOL)isTopSdaAskRepeat:(id)repeat
{
  turnContext = [repeat turnContext];
  nlContext = [turnContext nlContext];
  systemDialogActs = [nlContext systemDialogActs];

  if (systemDialogActs && [systemDialogActs count])
  {
    v7 = [systemDialogActs objectAtIndex:0];
    v8 = [self isSdaAskRepeat:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)createResponse:(id)response statusCode:(int)code
{
  v4 = *&code;
  v5 = MEMORY[0x1E69D11C8];
  responseCopy = response;
  v7 = objc_alloc_init(v5);
  [v7 setCode:v4];
  v8 = objc_alloc_init(MEMORY[0x1E69D1158]);
  [v8 setRequestId:responseCopy];

  [v8 setResponseStatus:v7];

  return v8;
}

@end