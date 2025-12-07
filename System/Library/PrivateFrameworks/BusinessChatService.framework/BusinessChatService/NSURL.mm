@interface NSURL
+ (id)bcs_templatedImageURLWithString:(void *)string imageSpecifier:;
- (id)URLByDeletingFragment;
@end

@implementation NSURL

+ (id)bcs_templatedImageURLWithString:(void *)string imageSpecifier:
{
  v20[4] = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_opt_self();
  if (v4)
  {
    v19[0] = @"{w}";
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", *string];
    v20[0] = v5;
    v19[1] = @"{h}";
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", string[1]];
    v20[1] = v6;
    v19[2] = @"{f}";
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:string[3]];
    v20[2] = v7;
    v19[3] = @"{c}";
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:string[2]];
    v20[3] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];

    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__6;
    v17 = __Block_byref_object_dispose__6;
    v18 = [v4 copy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __77__NSURL_BusinessChatService__bcs_templatedImageURLWithString_imageSpecifier___block_invoke;
    v12[3] = &unk_278D3A370;
    v12[4] = &v13;
    [v9 enumerateKeysAndObjectsUsingBlock:v12];
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v14[5]];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __77__NSURL_BusinessChatService__bcs_templatedImageURLWithString_imageSpecifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(*(*(a1 + 32) + 8) + 40) stringByReplacingOccurrencesOfString:a2 withString:a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8](v4, v6);
}

- (id)URLByDeletingFragment
{
  selfCopy = self;
  if (self)
  {
    absoluteString = [self absoluteString];
    v3 = [absoluteString rangeOfString:@"#" options:4];
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      selfCopy = selfCopy;
    }

    else
    {
      v4 = [absoluteString substringToIndex:v3];
      selfCopy = [MEMORY[0x277CBEBC0] URLWithString:v4];
    }
  }

  return selfCopy;
}

@end