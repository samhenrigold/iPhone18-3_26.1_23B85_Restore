@interface GSRemoveAdditionSpec
+ (id)GSRemoveAdditionSpecWithAdditionDictionary:(id)dictionary;
+ (id)calculateSpecForAdditionRemovalUnderPath:(id)path;
- (GSRemoveAdditionSpec)initWithAdditionDictionary:(id)dictionary;
@end

@implementation GSRemoveAdditionSpec

- (GSRemoveAdditionSpec)initWithAdditionDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = GSRemoveAdditionSpec;
  v5 = [(GSRemoveAdditionSpec *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"u"];
    lastPathComponent = [v6 lastPathComponent];
    name = v5->_name;
    v5->_name = lastPathComponent;

    v9 = [dictionaryCopy objectForKey:@"ns"];
    nameSpace = v5->_nameSpace;
    v5->_nameSpace = v9;

    v11 = [dictionaryCopy objectForKey:@"sID"];
    storageID = v5->_storageID;
    v5->_storageID = v11;
  }

  return v5;
}

+ (id)GSRemoveAdditionSpecWithAdditionDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[GSRemoveAdditionSpec alloc] initWithAdditionDictionary:dictionaryCopy];

  return v4;
}

+ (id)calculateSpecForAdditionRemovalUnderPath:(id)path
{
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  pathCopy = path;
  v4 = [pathCopy countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    v24 = *v34;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(pathCopy);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_30:

          v16 = 0;
          goto LABEL_31;
        }

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v30;
          while (2)
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v29 + 1) + 8 * j);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_29;
              }

              v15 = [v9 objectForKeyedSubscript:v14];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {

LABEL_29:
                    goto LABEL_30;
                  }
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v29 objects:v38 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v6 = v24;
      }

      v5 = [pathCopy countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v16 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(pathCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = pathCopy;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (k = 0; k != v19; k = k + 1)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [GSRemoveAdditionSpec GSRemoveAdditionSpecWithAdditionDictionary:*(*(&v25 + 1) + 8 * k)];
        [v16 addObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v19);
  }

LABEL_31:

  return v16;
}

@end