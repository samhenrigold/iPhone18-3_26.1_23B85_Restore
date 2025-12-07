@interface HMDEventRouterLogEventUtilities
+ (id)sanitizedTopicFromTopic:(id)topic;
@end

@implementation HMDEventRouterLogEventUtilities

+ (id)sanitizedTopicFromTopic:(id)topic
{
  v21 = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  v4 = [topicCopy componentsSeparatedByString:@"."];
  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{objc_msgSend(topicCopy, "length")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = objc_alloc(MEMORY[0x277CCAD78]);
        v13 = [v12 initWithUUIDString:{v11, v16}];

        if (!v13)
        {
          if ([v5 length])
          {
            [v5 appendString:@"."];
          }

          [v5 appendString:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = objc_msgSend_copy(v5);

  return v14;
}

@end