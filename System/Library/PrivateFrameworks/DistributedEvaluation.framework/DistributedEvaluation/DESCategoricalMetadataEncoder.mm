@interface DESCategoricalMetadataEncoder
- (DESCategoricalMetadataEncoder)initWithSingleSchema:(id)schema;
- (id)encodeNumber:(id)number toLength:(unint64_t)length;
- (id)encodeNumberVector:(id)vector toLength:(unint64_t)length;
- (id)encodeString:(id)string toLength:(unint64_t)length;
- (id)encodeStringVector:(id)vector toLength:(unint64_t)length;
- (unint64_t)findBucketIndexOfNumber:(id)number inItems:(id)items;
- (unint64_t)findBucketIndexOfString:(id)string inItems:(id)items;
@end

@implementation DESCategoricalMetadataEncoder

- (DESCategoricalMetadataEncoder)initWithSingleSchema:(id)schema
{
  schemaCopy = schema;
  v16.receiver = self;
  v16.super_class = DESCategoricalMetadataEncoder;
  v6 = [(DESCategoricalMetadataEncoder *)&v16 init];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [schemaCopy objectForKeyedSubscript:@"range"];
  if (!v7)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [schemaCopy objectForKeyedSubscript:@"range"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  v10 = [schemaCopy objectForKeyedSubscript:@"items"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_9;
  }

  v11 = [schemaCopy objectForKeyedSubscript:@"items"];
  v12 = [v11 count];

  if (!v12)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v6->_schemaDict, schema);
  v13 = [(NSDictionary *)v6->_schemaDict objectForKeyedSubscript:@"range"];
  v6->_useRange = [v13 BOOLValue];

LABEL_7:
  v14 = v6;
LABEL_11:

  return v14;
}

- (id)encodeString:(id)string toLength:(unint64_t)length
{
  v6 = MEMORY[0x277CBEB28];
  stringCopy = string;
  v8 = [v6 dataWithLength:length];
  mutableBytes = [v8 mutableBytes];
  v10 = [(NSDictionary *)self->_schemaDict objectForKeyedSubscript:@"items"];
  v11 = [(DESCategoricalMetadataEncoder *)self findBucketIndexOfString:stringCopy inItems:v10];

  if (v11 >= length - 1 || v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = mutableBytes;
  }

  else
  {
    v13 = (mutableBytes + v11 + 1);
  }

  *v13 = 1;

  return v8;
}

- (id)encodeNumber:(id)number toLength:(unint64_t)length
{
  v22 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v7 = [MEMORY[0x277CBEB28] dataWithLength:length];
  mutableBytes = [v7 mutableBytes];
  [(NSDictionary *)self->_schemaDict objectForKeyedSubscript:@"items"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v20 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v17 + 1) + 8 * i) floatValue];
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  [numberCopy floatValue];
  v13 = [(DESCategoricalMetadataEncoder *)self findBucketIndexOfNumber:numberCopy inItems:v9];
  if (v13 >= length - 1 || v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = mutableBytes;
  }

  else
  {
    v15 = (mutableBytes + v13 + 1);
  }

  *v15 = 1;

  return v7;
}

- (id)encodeStringVector:(id)vector toLength:(unint64_t)length
{
  v25 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v18 = [MEMORY[0x277CBEB28] dataWithLength:length];
  mutableBytes = [v18 mutableBytes];
  v8 = [(NSDictionary *)self->_schemaDict objectForKeyedSubscript:@"items"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = vectorCopy;
  v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    v12 = length - 1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [(DESCategoricalMetadataEncoder *)self findBucketIndexOfString:*(*(&v20 + 1) + 8 * i) inItems:v8];
        v15 = v14 >= v12 || v14 == 0x7FFFFFFFFFFFFFFFLL;
        v16 = (mutableBytes + 1 + v14);
        if (v15)
        {
          v16 = mutableBytes;
        }

        *v16 = 1;
      }

      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  return v18;
}

- (id)encodeNumberVector:(id)vector toLength:(unint64_t)length
{
  v36 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v7 = [MEMORY[0x277CBEB28] dataWithLength:length];
  selfCopy = self;
  mutableBytes = [v7 mutableBytes];
  [(NSDictionary *)self->_schemaDict objectForKeyedSubscript:@"items"];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = v33 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v30 + 1) + 8 * i) floatValue];
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = vectorCopy;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    v17 = length - 1;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v26 + 1) + 8 * j);
        [v19 floatValue];
        v20 = [(DESCategoricalMetadataEncoder *)selfCopy findBucketIndexOfNumber:v19 inItems:v8];
        v21 = v20 >= v17 || v20 == 0x7FFFFFFFFFFFFFFFLL;
        v22 = (mutableBytes + 1 + v20);
        if (v21)
        {
          v22 = mutableBytes;
        }

        *v22 = 1;
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v15);
  }

  return v7;
}

- (unint64_t)findBucketIndexOfString:(id)string inItems:(id)items
{
  stringCopy = string;
  itemsCopy = items;
  if ([(DESCategoricalMetadataEncoder *)self useRange])
  {
    v8 = [itemsCopy indexOfObject:stringCopy inSortedRange:0 options:objc_msgSend(itemsCopy usingComparator:{"count"), 256, &__block_literal_global_2}];
  }

  else
  {
    v8 = [itemsCopy indexOfObject:stringCopy];
  }

  v9 = v8;

  return v9;
}

uint64_t __65__DESCategoricalMetadataEncoder_findBucketIndexOfString_inItems___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if ([a2 compare:a3 options:64] == -1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)findBucketIndexOfNumber:(id)number inItems:(id)items
{
  numberCopy = number;
  itemsCopy = items;
  if ([(DESCategoricalMetadataEncoder *)self useRange])
  {
    v8 = [itemsCopy indexOfObject:numberCopy inSortedRange:0 options:objc_msgSend(itemsCopy usingComparator:{"count"), 256, &__block_literal_global_4}];
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__DESCategoricalMetadataEncoder_findBucketIndexOfNumber_inItems___block_invoke_2;
    v10[3] = &unk_278F83DB0;
    v11 = numberCopy;
    v8 = [itemsCopy indexOfObjectPassingTest:v10];
  }

  return v8;
}

uint64_t __65__DESCategoricalMetadataEncoder_findBucketIndexOfNumber_inItems___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 compare:?] == -1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

BOOL __65__DESCategoricalMetadataEncoder_findBucketIndexOfNumber_inItems___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 floatValue];
  v4 = v3;
  [*(a1 + 32) floatValue];

  return almostEqual(v4, v5);
}

@end