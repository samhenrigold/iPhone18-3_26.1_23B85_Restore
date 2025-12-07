@interface APRKUtilities
+ (id)baseDictionaryForResponseToRequestWithDictionary:(id)dictionary;
+ (id)baseDictionaryForUpstreamMessageWithType:(id)type;
+ (id)dictionaryForError:(id)error;
+ (id)secureStopURL;
@end

@implementation APRKUtilities

+ (id)baseDictionaryForResponseToRequestWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:?];
    v5 = [dictionaryCopy objectForKey:?];
    if (v5)
    {
      [v4 setObject:? forKey:?];
    }

    [v4 setObject:? forKey:?];
    v6 = [dictionaryCopy objectForKey:?];

    if (v6)
    {
      [v4 setObject:? forKey:?];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)baseDictionaryForUpstreamMessageWithType:(id)type
{
  if (type)
  {
    v3 = MEMORY[0x277CBEB38];
    typeCopy = type;
    v5 = [[v3 alloc] initWithCapacity:?];
    [v5 setObject:? forKey:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)dictionaryForError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    domain = [errorCopy domain];

    if (domain)
    {
      domain2 = [errorCopy domain];
      [v4 setObject:? forKey:?];
    }

    v7 = MEMORY[0x277CCABB0];
    [errorCopy code];
    v8 = [v7 numberWithInteger:?];
    [v4 setObject:? forKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)secureStopURL
{
  if (secureStopURL_onceToken != -1)
  {
    +[APRKUtilities secureStopURL];
  }

  v3 = secureStopURL_url;

  return v3;
}

void __30__APRKUtilities_secureStopURL__block_invoke()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v0 temporaryDirectory];

  v1 = [v3 URLByAppendingPathComponent:?];
  v2 = secureStopURL_url;
  secureStopURL_url = v1;
}

@end