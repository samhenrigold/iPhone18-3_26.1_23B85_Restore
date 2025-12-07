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
  v6 = -[FedStatsBoundedULongType initWithBound:](&v9, "initWithBound:", [categoriesCopy count]);
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
  v9 = -[FedStatsBoundedULongType initWithBound:](&v12, "initWithBound:", [categoriesCopy count]);
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
  v6 = -[FedStatsBoundedULongType initWithBound:](&v9, "initWithBound:", [fileCopy dimensionality]);
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
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v11 = v11;
        v13 = [v11 countByEnumeratingWithState:&v69 objects:v76 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v70;
LABEL_11:
          v16 = 0;
          while (1)
          {
            if (*v70 != v15)
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
              v14 = [v11 countByEnumeratingWithState:&v69 objects:v76 count:16];
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

        v17 = [NSSet setWithArray:v11];
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
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v11 = v11;
        v22 = [v11 countByEnumeratingWithState:&v65 objects:v75 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v66;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v66 != v24)
              {
                objc_enumerationMutation(v11);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_49;
              }
            }

            v23 = [v11 countByEnumeratingWithState:&v65 objects:v75 count:16];
          }

          while (v23);
        }

        allKeys = [v11 allKeys];
        v27 = [allKeys sortedArrayUsingSelector:"compare:"];

        v28 = +[NSMutableDictionary dictionary];
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v29 = v27;
        v30 = [v29 countByEnumeratingWithState:&v61 objects:v74 count:16];
        if (!v30)
        {
          goto LABEL_48;
        }

        v54 = 0;
        v31 = *v62;
        v50 = v29;
        while (1)
        {
          v32 = 0;
          v47 = v30;
          do
          {
            if (*v62 != v31)
            {
              v33 = v32;
              objc_enumerationMutation(v29);
              v32 = v33;
            }

            v48 = v32;
            v52 = *(*(&v61 + 1) + 8 * v32);
            v34 = [v11 objectForKey:?];
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

            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v49 = v34;
            obj = v34;
            v35 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
            if (!v35)
            {
              goto LABEL_46;
            }

            v36 = v35;
            v53 = *v58;
            v46 = v31;
            while (2)
            {
              for (j = 0; j != v36; j = j + 1)
              {
                if (*v58 != v53)
                {
                  objc_enumerationMutation(obj);
                }

                v38 = *(*(&v57 + 1) + 8 * j);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v34 = v49;
                  v29 = v50;
                  if (error)
                  {
                    v45 = v12;
                    goto LABEL_71;
                  }

LABEL_72:

                  goto LABEL_73;
                }

                [v28 allKeys];
                v40 = v39 = v28;
                v41 = [v40 containsObject:v38];

                if (v41)
                {
                  v28 = v39;
                  v34 = v49;
                  v29 = v50;
                  if (error)
                  {
                    v45 = @"Subcategories must be distinct";
LABEL_71:
                    *error = [FedStatsError errorWithCode:302 description:v45];
                  }

                  goto LABEL_72;
                }

                v42 = [FedStatsCategoricalTypeSubcategory categoryWithSuperCategory:v52 index:v54];
                [v39 setObject:v42 forKey:v38];

                v28 = v39;
              }

              v36 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
              self = selfCopy;
              v31 = v46;
              if (v36)
              {
                continue;
              }

              break;
            }

LABEL_46:

            ++v54;
            v32 = v48 + 1;
            v29 = v50;
          }

          while ((v48 + 1) != v47);
          v30 = [v50 countByEnumeratingWithState:&v61 objects:v74 count:16];
          if (!v30)
          {
LABEL_48:

            v43 = [[self alloc] initWithCategoryMap:v28 categories:v29];
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
        v56 = 0;
        v28 = [FedStatsSQLiteCategoryDatabase databaseWithFileURL:v11 error:&v56];
        v29 = v56;
        if (v28)
        {
          v43 = [[self alloc] initWithCategoryFile:v28];
LABEL_56:
          v20 = v43;
        }

        else
        {
          if (!error)
          {
            goto LABEL_74;
          }

          [FedStatsError errorWithCode:302 underlyingError:v29 description:@"Cannot create database from the provided URL"];
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
    v77[0] = @"categories";
    v77[1] = @"categoryMap";
    v77[2] = @"categoryFile";
    v11 = [NSArray arrayWithObjects:v77 count:3];
    v12 = [v11 componentsJoinedByString:{@", "}];
    v21 = [NSString stringWithFormat:@"You're allowed to have exactly one of {%@} as key in parameters", v12];
    *error = [FedStatsError errorWithCode:301 description:v21];

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
        v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 index] + 1);
      }

      else
      {
        v10 = &off_100034308;
      }

      break;
    case 1uLL:
      categories = [(FedStatsCategoricalType *)self categories];
      v9 = [categories indexOfObject:indexCopy];

      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = &off_100034308;
      }

      else
      {
        v10 = [NSNumber numberWithUnsignedInteger:v9 + 1];
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
    v6 = [NSNumber numberWithUnsignedLong:index];
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
  v14 = sub_10000A314;
  v15 = sub_10000A324;
  v16 = +[NSMutableArray array];
  categoryMap = [(FedStatsCategoricalType *)self categoryMap];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000A32C;
  v10[3] = &unk_1000306B8;
  v10[4] = &v11;
  v10[5] = index;
  [categoryMap enumerateKeysAndObjectsUsingBlock:v10];

  kOutOfCategories = [v12[5] objectAtIndex:{arc4random_uniform(objc_msgSend(v12[5], "count"))}];
  _Block_object_dispose(&v11, 8);

LABEL_8:

  return kOutOfCategories;
}

@end