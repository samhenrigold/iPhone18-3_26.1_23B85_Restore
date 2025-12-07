@interface NSDictionary(VoiceDialResultHandlerMerge)
- (id)mergeSetValuesIntoArray;
@end

@implementation NSDictionary(VoiceDialResultHandlerMerge)

- (id)mergeSetValuesIntoArray
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = objc_alloc(MEMORY[0x29EDB8DE8]);
  allKeys = [self allKeys];
  v4 = [v2 initWithCapacity:{objc_msgSend(allKeys, "count")}];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = [selfCopy objectForKey:{*(*(&v12 + 1) + 8 * i), v12}];
        [v4 addObject:v10];
      }

      v7 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

@end