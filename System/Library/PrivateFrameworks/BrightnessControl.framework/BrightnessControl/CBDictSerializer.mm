@interface CBDictSerializer
+ (id)serialize:(id)serialize;
@end

@implementation CBDictSerializer

+ (id)serialize:(id)serialize
{
  v16 = *MEMORY[0x277D85DE8];
  codingKeys = [serialize codingKeys];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(codingKeys, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [codingKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(codingKeys);
        }

        [v5 setObject:objc_msgSend(serialize forKeyedSubscript:{"valueForKey:", objc_msgSend(codingKeys, "objectForKeyedSubscript:", *(*(&v11 + 1) + 8 * v9))), *(*(&v11 + 1) + 8 * v9)}];
        ++v9;
      }

      while (v7 != v9);
      v7 = [codingKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v5];
}

@end