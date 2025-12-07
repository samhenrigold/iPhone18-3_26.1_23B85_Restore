@interface CBDictSerializer
+ (id)serialize:(id)serialize;
@end

@implementation CBDictSerializer

+ (id)serialize:(id)serialize
{
  v19 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v16 = a2;
  serializeCopy = serialize;
  codingKeys = [serialize codingKeys];
  v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(codingKeys, "count")}];
  memset(__b, 0, sizeof(__b));
  obj = codingKeys;
  v10 = [codingKeys countByEnumeratingWithState:__b objects:v18 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v12 = 0;
      v12 = *(__b[1] + 8 * v7);
      v3 = [serializeCopy valueForKey:{objc_msgSend(codingKeys, "objectForKeyedSubscript:", v12)}];
      [v13 setObject:v3 forKeyedSubscript:v12];
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  return [MEMORY[0x1E695DF20] dictionaryWithDictionary:v13];
}

@end