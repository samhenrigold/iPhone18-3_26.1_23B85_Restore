@interface WFGiphyObject
+ (id)JSONKeyPathsByPropertyKey;
+ (id)allowedSecureCodingClassesByPropertyKey;
+ (id)imagesJSONTransformer;
+ (id)objectWithWFSerializedRepresentation:(id)representation;
- (NSString)wfName;
- (id)originalImage;
- (id)smallestImage;
- (id)wfSerializedRepresentation;
@end

@implementation WFGiphyObject

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  v23 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = representationCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        if ([v10 hasPrefix:@"link.contentkit.giphy."])
        {
          v11 = [v10 stringByReplacingOccurrencesOfString:@"link.contentkit.giphy." withString:&stru_2850323E8 options:0 range:{0, objc_msgSend(@"link.contentkit.giphy.", "length")}];
          if ([v11 isEqualToString:@"images"] || objc_msgSend(v11, "isEqualToString:", @"type") || objc_msgSend(v11, "isEqualToString:", @"url") || objc_msgSend(v11, "isEqualToString:", @"id") || objc_msgSend(v11, "isEqualToString:", @"caption"))
          {
            v12 = [v5 wfObjectOfClass:objc_opt_class() forKey:v10];
          }

          else
          {
            v12 = [v5 objectForKey:v10];
          }

          v13 = v12;
          if (v12)
          {
            [v4 setObject:v12 forKey:v11];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v14 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v7 = v14;
    }

    while (v14);
  }

  v15 = [MEMORY[0x277D7C070] modelOfClass:self fromJSONDictionary:v4 error:0];

  return v15;
}

void *__39__WFGiphyObject_captionJSONTransformer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

+ (id)imagesJSONTransformer
{
  v2 = [MEMORY[0x277D7C070] dictionaryTransformerWithModelClass:objc_opt_class()];
  v3 = MEMORY[0x277D7C078];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__WFGiphyObject_imagesJSONTransformer__block_invoke;
  v9[3] = &unk_278C1AC98;
  v10 = v2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__WFGiphyObject_imagesJSONTransformer__block_invoke_2;
  v7[3] = &unk_278C1AC98;
  v8 = v10;
  v4 = v10;
  v5 = [v3 transformerUsingForwardBlock:v9 reverseBlock:v7];

  return v5;
}

id __38__WFGiphyObject_imagesJSONTransformer__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 mutableCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = *(a1 + 32);
        v15 = [v8 objectForKey:v13];
        v16 = [v14 transformedValue:v15 success:a3 error:a4];
        [v7 setValue:v16 forKey:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  return v7;
}

id __38__WFGiphyObject_imagesJSONTransformer__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 mutableCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = *(a1 + 32);
        v15 = [v8 objectForKey:v13];
        v16 = [v14 reverseTransformedValue:v15 success:a3 error:a4];
        [v7 setValue:v16 forKey:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)JSONKeyPathsByPropertyKey
{
  v2 = [MEMORY[0x277CBEAC0] mtl_identityPropertyMapWithModel:self];
  v3 = [v2 mutableCopy];

  [v3 setObject:@"id" forKey:@"objectId"];

  return v3;
}

+ (id)allowedSecureCodingClassesByPropertyKey
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___WFGiphyObject;
  v2 = objc_msgSendSuper2(&v7, sel_allowedSecureCodingClassesByPropertyKey);
  v3 = [v2 mutableCopy];

  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  [v3 setObject:v4 forKey:@"images"];

  v5 = [v3 copy];

  return v5;
}

- (id)wfSerializedRepresentation
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D7C070] JSONDictionaryFromModel:self error:0];
  v3 = [v2 mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v4 objectForKey:{v9, v14}];
        v11 = [@"link.contentkit.giphy." stringByAppendingString:v9];
        [v3 setObject:v10 forKey:v11];

        [v3 removeObjectForKey:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = WFRemoveNull(v3);

  return v12;
}

- (NSString)wfName
{
  caption = [(WFGiphyObject *)self caption];
  if ([caption length])
  {
    [(WFGiphyObject *)self caption];
  }

  else
  {
    [(WFGiphyObject *)self objectId];
  }
  v4 = ;

  return v4;
}

- (id)smallestImage
{
  v11[1] = *MEMORY[0x277D85DE8];
  images = [(WFGiphyObject *)self images];
  allValues = [images allValues];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"fileSize > 0"];
  v5 = [allValues filteredArrayUsingPredicate:v4];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"fileSize" ascending:1];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];
  firstObject = [v8 firstObject];

  return firstObject;
}

- (id)originalImage
{
  images = [(WFGiphyObject *)self images];
  v4 = [images objectForKey:@"fixed_height"];
  v5 = v4;
  if (v4)
  {
    firstObject = v4;
  }

  else
  {
    images2 = [(WFGiphyObject *)self images];
    v8 = [images2 objectForKey:@"fixed_height_small"];
    v9 = v8;
    if (v8)
    {
      firstObject = v8;
    }

    else
    {
      images3 = [(WFGiphyObject *)self images];
      allValues = [images3 allValues];
      firstObject = [allValues firstObject];
    }
  }

  return firstObject;
}

@end