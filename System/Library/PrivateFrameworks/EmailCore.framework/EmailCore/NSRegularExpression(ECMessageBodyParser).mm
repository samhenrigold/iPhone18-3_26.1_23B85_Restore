@interface NSRegularExpression(ECMessageBodyParser)
+ (uint64_t)ec_attributionExpression;
+ (uint64_t)ec_attributionPrefixExpression;
+ (uint64_t)ec_copyAttributionRegularExpressionForType:()ECMessageBodyParser;
+ (uint64_t)ec_forwardSeparatorExpression;
+ (uint64_t)ec_signatureExpression;
@end

@implementation NSRegularExpression(ECMessageBodyParser)

+ (uint64_t)ec_copyAttributionRegularExpressionForType:()ECMessageBodyParser
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", @"AttributionPatterns", @"plist"}];
  selfCopy = self;
  if (a3 > 3)
  {
    v18 = 0;
  }

  else
  {
    v18 = off_27874BC48[a3];
  }

  v19 = v5;
  v6 = [v5 objectForKey:?];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [MEMORY[0x277CCAC68] escapedPatternForString:*(*(&v22 + 1) + 8 * i)];
        v13 = v12;
        if (a3 == 1)
        {
          v14 = [v12 rangeOfString:@"%@"];
          if (!v14)
          {
            v14 = [v13 rangeOfString:@"%@" options:0 range:{1, objc_msgSend(v13, "length") - 1}];
          }

          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = [objc_msgSend(v13 "substringToIndex:{"stringByAppendingString:", @"%@"}")];
          }
        }

        [v7 addObject:{objc_msgSend(objc_msgSend(v13, "stringByReplacingOccurrencesOfString:withString:", @"%@", @".+", "stringByReplacingOccurrencesOfString:withString:", @" ", @"\\s"}];
      }

      v9 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v18, objc_msgSend(v7, "componentsJoinedByString:", @"|"];
  v21 = 0;
  v16 = [[selfCopy alloc] initWithPattern:v15 options:1 error:&v21];
  if (!v16)
  {
    +[NSRegularExpression(ECMessageBodyParser) ec_copyAttributionRegularExpressionForType:];
  }

  return v16;
}

+ (uint64_t)ec_attributionExpression
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__NSRegularExpression_ECMessageBodyParser__ec_attributionExpression__block_invoke;
  block[3] = &unk_27874BC28;
  block[4] = self;
  if (ec_attributionExpression_onceToken != -1)
  {
    dispatch_once(&ec_attributionExpression_onceToken, block);
  }

  return ec_attributionExpression_regex;
}

+ (uint64_t)ec_attributionPrefixExpression
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__NSRegularExpression_ECMessageBodyParser__ec_attributionPrefixExpression__block_invoke;
  block[3] = &unk_27874BC28;
  block[4] = self;
  if (ec_attributionPrefixExpression_onceToken != -1)
  {
    dispatch_once(&ec_attributionPrefixExpression_onceToken, block);
  }

  return ec_attributionPrefixExpression_regex;
}

+ (uint64_t)ec_forwardSeparatorExpression
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__NSRegularExpression_ECMessageBodyParser__ec_forwardSeparatorExpression__block_invoke;
  block[3] = &unk_27874BC28;
  block[4] = self;
  if (ec_forwardSeparatorExpression_onceToken != -1)
  {
    dispatch_once(&ec_forwardSeparatorExpression_onceToken, block);
  }

  return ec_forwardSeparatorExpression_regex;
}

+ (uint64_t)ec_signatureExpression
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__NSRegularExpression_ECMessageBodyParser__ec_signatureExpression__block_invoke;
  block[3] = &unk_27874BC28;
  block[4] = self;
  if (ec_signatureExpression_onceToken != -1)
  {
    dispatch_once(&ec_signatureExpression_onceToken, block);
  }

  return ec_signatureExpression_regex;
}

@end