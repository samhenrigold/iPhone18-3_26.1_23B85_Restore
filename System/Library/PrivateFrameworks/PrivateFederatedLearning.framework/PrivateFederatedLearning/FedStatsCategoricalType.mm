@interface FedStatsCategoricalType
+ (id)createFromDict:(id)dict possibleError:(id *)error;
- (FedStatsCategoricalType)initWithCategories:(id)categories;
- (FedStatsCategoricalType)initWithCategoryFile:(id)file;
- (FedStatsCategoricalType)initWithCategoryMap:(id)map categories:(id)categories;
- (id)decodeFromIndex:(id)index possibleError:(id *)error;
- (id)encodeToIndex:(id)index possibleError:(id *)error;
- (id)sampleForIndex:(unint64_t)index;
- (void)setVersion:(unint64_t)version;
@end

@implementation FedStatsCategoricalType

- (void)setVersion:(unint64_t)version
{
  self->_version = version;
  categories = self->_categories;
  self->_categories = 0;

  categoryMap = self->_categoryMap;
  self->_categoryMap = 0;

  categoryFile = self->_categoryFile;
  self->_categoryFile = 0;
}

- (FedStatsCategoricalType)initWithCategories:(id)categories
{
  categoriesCopy = categories;
  v9.receiver = self;
  v9.super_class = FedStatsCategoricalType;
  v6 = -[FedStatsBoundedULongType initWithBound:](&v9, sel_initWithBound_, [categoriesCopy count]);
  v7 = v6;
  if (v6)
  {
    [(FedStatsCategoricalType *)v6 setVersion:1];
    objc_storeStrong(&v7->_categories, categories);
  }

  return v7;
}

- (FedStatsCategoricalType)initWithCategoryMap:(id)map categories:(id)categories
{
  mapCopy = map;
  categoriesCopy = categories;
  v12.receiver = self;
  v12.super_class = FedStatsCategoricalType;
  v9 = -[FedStatsBoundedULongType initWithBound:](&v12, sel_initWithBound_, [categoriesCopy count]);
  v10 = v9;
  if (v9)
  {
    [(FedStatsCategoricalType *)v9 setVersion:2];
    objc_storeStrong(&v10->_categoryMap, map);
    objc_storeStrong(&v10->_categories, categories);
  }

  return v10;
}

- (FedStatsCategoricalType)initWithCategoryFile:(id)file
{
  fileCopy = file;
  v9.receiver = self;
  v9.super_class = FedStatsCategoricalType;
  v6 = -[FedStatsBoundedULongType initWithBound:](&v9, sel_initWithBound_, [fileCopy dimensionality]);
  v7 = v6;
  if (v6)
  {
    [(FedStatsCategoricalType *)v6 setVersion:3];
    objc_storeStrong(&v7->_categoryFile, file);
  }

  return v7;
}

+ (id)createFromDict:(id)dict possibleError:(id *)error
{
  v78[3] = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v7 = [dictCopy objectForKey:@"categories"];

  v8 = [dictCopy objectForKey:@"categoryMap"];

  v9 = [dictCopy objectForKey:@"categoryFile"];

  if (v8)
  {
    v10 = (v7 != 0) + 1;
  }

  else
  {
    v10 = v7 != 0;
  }

  if (v9)
  {
    ++v10;
  }

  if (v10 == 1)
  {
    selfCopy = self;
    if (v7)
    {
      v12 = v11 = [dictCopy objectForKey:@"categories"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v11 = v11;
        v13 = [v11 countByEnumeratingWithState:&v70 objects:v77 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v71;
LABEL_11:
          v16 = 0;
          while (1)
          {
            if (*v71 != v15)
            {
              objc_enumerationMutation(v11);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            if (v14 == ++v16)
            {
              v14 = [v11 countByEnumeratingWithState:&v70 objects:v77 count:16];
              if (v14)
              {
                goto LABEL_11;
              }

              goto LABEL_17;
            }
          }

LABEL_49:
          if (error)
          {
            *error = [FedStatsError errorWithCode:302 description:v12];
          }

          goto LABEL_59;
        }

LABEL_17:

        v17 = [MEMORY[0x277CBEB98] setWithArray:v11];
        v18 = [v17 count];
        v19 = [v11 count];

        if (v18 == v19)
        {
          v20 = [[self alloc] initWithCategories:v11];
LABEL_60:

          goto LABEL_62;
        }
      }

      goto LABEL_57;
    }

    if (v8)
    {
      v12 = v11 = [dictCopy objectForKey:@"categoryMap"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v11 = v11;
        v23 = [v11 countByEnumeratingWithState:&v66 objects:v76 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v67;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v67 != v25)
              {
                objc_enumerationMutation(v11);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_49;
              }
            }

            v24 = [v11 countByEnumeratingWithState:&v66 objects:v76 count:16];
          }

          while (v24);
        }

        allKeys = [v11 allKeys];
        v28 = [allKeys sortedArrayUsingSelector:sel_compare_];

        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v30 = v28;
        v31 = [v30 countByEnumeratingWithState:&v62 objects:v75 count:16];
        if (!v31)
        {
          goto LABEL_48;
        }

        v55 = 0;
        v32 = *v63;
        v51 = v30;
        while (1)
        {
          v33 = 0;
          v48 = v31;
          do
          {
            if (*v63 != v32)
            {
              v34 = v33;
              objc_enumerationMutation(v30);
              v33 = v34;
            }

            v49 = v33;
            v53 = *(*(&v62 + 1) + 8 * v33);
            v35 = [v11 objectForKey:?];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (error)
              {
                *error = [FedStatsError errorWithCode:302 description:v12];
              }

LABEL_73:

LABEL_74:
              v20 = 0;
              goto LABEL_75;
            }

            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v50 = v35;
            obj = v35;
            v36 = [obj countByEnumeratingWithState:&v58 objects:v74 count:16];
            if (!v36)
            {
              goto LABEL_46;
            }

            v37 = v36;
            v54 = *v59;
            v47 = v32;
            while (2)
            {
              for (j = 0; j != v37; ++j)
              {
                if (*v59 != v54)
                {
                  objc_enumerationMutation(obj);
                }

                v39 = *(*(&v58 + 1) + 8 * j);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v35 = v50;
                  v30 = v51;
                  if (error)
                  {
                    v46 = v12;
                    goto LABEL_71;
                  }

LABEL_72:

                  goto LABEL_73;
                }

                [dictionary allKeys];
                v41 = v40 = dictionary;
                v42 = [v41 containsObject:v39];

                if (v42)
                {
                  dictionary = v40;
                  v35 = v50;
                  v30 = v51;
                  if (error)
                  {
                    v46 = @"Subcategories must be distinct";
LABEL_71:
                    *error = [FedStatsError errorWithCode:302 description:v46];
                  }

                  goto LABEL_72;
                }

                v43 = [FedStatsCategoricalTypeSubcategory categoryWithSuperCategory:v53 index:v55];
                [v40 setObject:v43 forKey:v39];

                dictionary = v40;
              }

              v37 = [obj countByEnumeratingWithState:&v58 objects:v74 count:16];
              self = selfCopy;
              v32 = v47;
              if (v37)
              {
                continue;
              }

              break;
            }

LABEL_46:

            ++v55;
            v33 = v49 + 1;
            v30 = v51;
          }

          while (v49 + 1 != v48);
          v31 = [v51 countByEnumeratingWithState:&v62 objects:v75 count:16];
          if (!v31)
          {
LABEL_48:

            v44 = [[self alloc] initWithCategoryMap:dictionary categories:v30];
            goto LABEL_56;
          }
        }
      }

      goto LABEL_57;
    }

    if (v9)
    {
      v12 = v11 = [dictCopy objectForKey:@"categoryFile"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v57 = 0;
        dictionary = [FedStatsSQLiteCategoryDatabase databaseWithFileURL:v11 error:&v57];
        v30 = v57;
        if (dictionary)
        {
          v44 = [[self alloc] initWithCategoryFile:dictionary];
LABEL_56:
          v20 = v44;
        }

        else
        {
          if (!error)
          {
            goto LABEL_74;
          }

          [FedStatsError errorWithCode:302 underlyingError:v30 description:@"Cannot create database from the provided URL"];
          *error = v20 = 0;
        }

LABEL_75:

        goto LABEL_60;
      }

LABEL_57:
      if (error)
      {
        [FedStatsError errorWithCode:302 description:v12];
        *error = v20 = 0;
        goto LABEL_60;
      }

LABEL_59:
      v20 = 0;
      goto LABEL_60;
    }
  }

  else if (error)
  {
    v78[0] = @"categories";
    v78[1] = @"categoryMap";
    v78[2] = @"categoryFile";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:3];
    v21 = MEMORY[0x277CCACA8];
    v12 = [v11 componentsJoinedByString:{@", "}];
    v22 = [v21 stringWithFormat:@"You're allowed to have exactly one of {%@} as key in parameters", v12];
    *error = [FedStatsError errorWithCode:301 description:v22];

    goto LABEL_59;
  }

  v20 = 0;
LABEL_62:

  return v20;
}

- (id)encodeToIndex:(id)index possibleError:(id *)error
{
  indexCopy = index;
  version = [(FedStatsCategoricalType *)self version];
  switch(version)
  {
    case 3uLL:
      categoryFile = [(FedStatsCategoricalType *)self categoryFile];
      v17 = 0;
      v10 = [categoryFile encode:indexCopy error:&v17];
      v14 = v17;

      if (v10)
      {
        v15 = v10;
      }

      else if (error)
      {
        *error = [FedStatsError errorWithCode:401 underlyingError:v14 description:@"Error when encoding categorical type over database"];
      }

      break;
    case 2uLL:
      categoryMap = [(FedStatsCategoricalType *)self categoryMap];
      v12 = [categoryMap objectForKey:indexCopy];

      if (v12)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "index") + 1}];
      }

      else
      {
        v10 = &unk_282B4B9D0;
      }

      break;
    case 1uLL:
      categories = [(FedStatsCategoricalType *)self categories];
      v9 = [categories indexOfObject:indexCopy];

      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = &unk_282B4B9D0;
      }

      else
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9 + 1];
      }

      break;
    default:
      if (error)
      {
        [FedStatsError errorWithCode:900 description:@"The categorical type version is not supported"];
        *error = v10 = 0;
      }

      else
      {
        v10 = 0;
      }

      break;
  }

  return v10;
}

- (id)decodeFromIndex:(id)index possibleError:(id *)error
{
  indexCopy = index;
  if (!indexCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (error)
    {
      v10 = @"The decoder can only work with a non-null number type";
      v11 = 500;
LABEL_8:
      [FedStatsError errorWithCode:v11 description:v10];
      *error = kOutOfCategories = 0;
      goto LABEL_16;
    }

LABEL_15:
    kOutOfCategories = 0;
    goto LABEL_16;
  }

  version = [(FedStatsCategoricalType *)self version];
  if (version - 1 < 2)
  {
    if ([indexCopy unsignedLongValue])
    {
      categories = [(FedStatsCategoricalType *)self categories];
      kOutOfCategories = [categories objectAtIndex:{objc_msgSend(indexCopy, "unsignedLongValue") - 1}];
    }

    else
    {
      kOutOfCategories = [(FedStatsCategoricalType *)self kOutOfCategories];
    }

    goto LABEL_16;
  }

  if (version != 3)
  {
    if (error)
    {
      v10 = @"The categorical type version is not supported";
      v11 = 900;
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  categoryFile = [(FedStatsCategoricalType *)self categoryFile];
  v15 = 0;
  kOutOfCategories = [categoryFile decode:objc_msgSend(indexCopy error:{"unsignedLongValue"), &v15}];

  if (kOutOfCategories)
  {
    v13 = kOutOfCategories;
  }

LABEL_16:

  return kOutOfCategories;
}

- (id)sampleForIndex:(unint64_t)index
{
  if (!index)
  {
LABEL_6:
    kOutOfCategories = [(FedStatsCategoricalType *)self kOutOfCategories];
    goto LABEL_8;
  }

  version = [(FedStatsCategoricalType *)self version];
  if (version == 3)
  {
LABEL_5:
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:index];
    kOutOfCategories = [(FedStatsCategoricalType *)self decodeFromIndex:v6 possibleError:0];

    goto LABEL_8;
  }

  if (version != 2)
  {
    if (version == 1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  array = [MEMORY[0x277CBEB18] array];
  categoryMap = [(FedStatsCategoricalType *)self categoryMap];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__FedStatsCategoricalType_sampleForIndex___block_invoke;
  v10[3] = &unk_278253640;
  v10[4] = &v11;
  v10[5] = index;
  [categoryMap enumerateKeysAndObjectsUsingBlock:v10];

  kOutOfCategories = [v12[5] objectAtIndex:{arc4random_uniform(objc_msgSend(v12[5], "count"))}];
  _Block_object_dispose(&v11, 8);

LABEL_8:

  return kOutOfCategories;
}

void __42__FedStatsCategoricalType_sampleForIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = *(a1 + 40) - 1;
  if (v5 == [a3 index])
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
  }
}

@end