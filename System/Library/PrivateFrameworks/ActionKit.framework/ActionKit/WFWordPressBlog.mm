@interface WFWordPressBlog
+ (id)JSONKeyPathsByPropertyKey;
+ (id)blogWithEndpointURL:(id)l;
- (WFWordPressBlog)initWithEndpointURL:(id)l;
@end

@implementation WFWordPressBlog

- (WFWordPressBlog)initWithEndpointURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = WFWordPressBlog;
  v5 = [(MTLModel *)&v10 init];
  if (v5)
  {
    v6 = [lCopy copy];
    endpointURL = v5->_endpointURL;
    v5->_endpointURL = v6;

    v8 = v5;
  }

  return v5;
}

+ (id)blogWithEndpointURL:(id)l
{
  lCopy = l;
  v5 = [[self alloc] initWithEndpointURL:lCopy];

  return v5;
}

id __40__WFWordPressBlog_blogIdJSONTransformer__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *a3 = 1;
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%li", objc_msgSend(v4, "integerValue")];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __40__WFWordPressBlog_blogIdJSONTransformer__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *a3 = 1;
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "integerValue")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)JSONKeyPathsByPropertyKey
{
  v5[5] = *MEMORY[0x277D85DE8];
  v4[0] = @"url";
  v4[1] = @"endpointURL";
  v5[0] = @"url";
  v5[1] = @"xmlrpc";
  v4[2] = @"blogId";
  v4[3] = @"blogName";
  v5[2] = @"blogid";
  v5[3] = @"blogName";
  v4[4] = @"isAdmin";
  v5[4] = @"isAdmin";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

@end