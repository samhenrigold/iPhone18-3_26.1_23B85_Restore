@interface NSError(NUArticles)
+ (id)nu_errorArticleContentTypeUnsupported:()NUArticles;
+ (id)nu_errorArticleDownloadFailed:()NUArticles underlyingError:;
+ (id)nu_errorArticleMissingContentURL:()NUArticles;
+ (id)nu_errorArticleMissingHeadline:()NUArticles;
@end

@implementation NSError(NUArticles)

+ (id)nu_errorArticleMissingHeadline:()NUArticles
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v12[0] = @"articleId";
  articleID = [a3 articleID];
  v5 = articleID;
  v6 = @"nil";
  if (articleID)
  {
    v6 = articleID;
  }

  v13[0] = v6;
  v12[1] = *MEMORY[0x277CCA450];
  v7 = NUBundle(articleID);
  v8 = [v7 localizedStringForKey:@"Article did not load a headline" value:&stru_286E03B58 table:0];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v3 errorWithDomain:@"NUNewsUIErrorDomain" code:-1 userInfo:v9];

  return v10;
}

+ (id)nu_errorArticleContentTypeUnsupported:()NUArticles
{
  v18[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = NUBundle(v3);
  v5 = [v4 localizedStringForKey:@"Article content type %llu is not supported by article viewer" value:&stru_286E03B58 table:0];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:v5, objc_msgSend(v3, "contentType")];
  v7 = MEMORY[0x277CCA9B8];
  v17[0] = @"articleId";
  identifier = [v3 identifier];
  v9 = identifier;
  v10 = @"nil";
  if (identifier)
  {
    v10 = identifier;
  }

  v18[0] = v10;
  v17[1] = @"contentType";
  v11 = MEMORY[0x277CCABB0];
  contentType = [v3 contentType];

  v13 = [v11 numberWithUnsignedLongLong:contentType];
  v17[2] = *MEMORY[0x277CCA450];
  v18[1] = v13;
  v18[2] = v6;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v15 = [v7 errorWithDomain:@"NUNewsUIErrorDomain" code:-2 userInfo:v14];

  return v15;
}

+ (id)nu_errorArticleMissingContentURL:()NUArticles
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v12[0] = @"articleId";
  identifier = [a3 identifier];
  v5 = identifier;
  v6 = @"nil";
  if (identifier)
  {
    v6 = identifier;
  }

  v13[0] = v6;
  v12[1] = *MEMORY[0x277CCA450];
  v7 = NUBundle(identifier);
  v8 = [v7 localizedStringForKey:@"Article missing content URL needed to load web view" value:&stru_286E03B58 table:0];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v3 errorWithDomain:@"NUNewsUIErrorDomain" code:-3 userInfo:v9];

  return v10;
}

+ (id)nu_errorArticleDownloadFailed:()NUArticles underlyingError:
{
  v5 = a4;
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  dictionary = [v6 dictionary];
  articleID = [v7 articleID];

  if (articleID)
  {
    v10 = articleID;
  }

  else
  {
    v10 = @"nil";
  }

  [dictionary setObject:v10 forKeyedSubscript:@"articleId"];

  v12 = NUBundle(v11);
  v13 = [v12 localizedStringForKey:@"Article download failed" value:&stru_286E03B58 table:0];
  [dictionary setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA450]];

  if (v5)
  {
    [dictionary setObject:v5 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NUNewsUIErrorDomain" code:-4 userInfo:dictionary];

  return v14;
}

@end