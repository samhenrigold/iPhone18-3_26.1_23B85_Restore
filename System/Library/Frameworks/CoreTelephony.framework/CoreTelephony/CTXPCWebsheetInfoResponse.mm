@interface CTXPCWebsheetInfoResponse
+ (id)allowedClassesForArguments;
- (CTXPCWebsheetInfoResponse)initWithURL:(id)l postdata:(id)postdata;
- (CTXPCWebsheetInfoResponse)initWithURLString:(id)string postdata:(id)postdata type:(id)type;
- (NSDictionary)postdata;
- (NSString)type;
- (NSString)urlString;
- (NSURL)url;
@end

@implementation CTXPCWebsheetInfoResponse

- (CTXPCWebsheetInfoResponse)initWithURLString:(id)string postdata:(id)postdata type:(id)type
{
  stringCopy = string;
  postdataCopy = postdata;
  typeCopy = type;
  v11 = objc_opt_new();
  [v11 setObject:stringCopy forKeyedSubscript:@"urlString"];
  [v11 setObject:postdataCopy forKeyedSubscript:@"postdata"];
  [v11 setObject:typeCopy forKeyedSubscript:@"type"];
  v14.receiver = self;
  v14.super_class = CTXPCWebsheetInfoResponse;
  v12 = [(CTXPCMessage *)&v14 initWithNamedArguments:v11];

  return v12;
}

- (CTXPCWebsheetInfoResponse)initWithURL:(id)l postdata:(id)postdata
{
  lCopy = l;
  postdataCopy = postdata;
  v8 = objc_opt_new();
  [v8 setObject:lCopy forKeyedSubscript:@"url"];
  [v8 setObject:postdataCopy forKeyedSubscript:@"postdata"];
  v11.receiver = self;
  v11.super_class = CTXPCWebsheetInfoResponse;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

- (NSString)urlString
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"urlString"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)url
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)postdata
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"postdata"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)type
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)allowedClassesForArguments
{
  v7[5] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCWebsheetInfoResponse;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v7[3] = objc_opt_class();
  v7[4] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

@end