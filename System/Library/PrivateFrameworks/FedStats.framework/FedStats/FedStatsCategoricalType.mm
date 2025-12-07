@interface FedStatsCategoricalType
+ (id)createFromDict:(id)dict possibleError:(id *)error;
- (FedStatsCategoricalType)initWithCategories:(id)categories;
- (FedStatsCategoricalType)initWithCategoryFile:(id)file;
- (FedStatsCategoricalType)initWithCategoryMap:(id)map categories:(id)categories;
- (FedStatsCategoricalType)initWithPrefixSize:(id)size fragmentSize:(id)fragmentSize prefixTree:(id)tree filters:(id)filters tokenizer:(id)tokenizer preEncoder:(id)encoder;
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

  preEncoder = self->_preEncoder;
  self->_preEncoder = 0;

  filters = self->_filters;
  self->_filters = 0;

  prefixSize = self->_prefixSize;
  self->_prefixSize = 0;

  fragmentSize = self->_fragmentSize;
  self->_fragmentSize = 0;
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

- (FedStatsCategoricalType)initWithPrefixSize:(id)size fragmentSize:(id)fragmentSize prefixTree:(id)tree filters:(id)filters tokenizer:(id)tokenizer preEncoder:(id)encoder
{
  sizeCopy = size;
  fragmentSizeCopy = fragmentSize;
  treeCopy = tree;
  filtersCopy = filters;
  tokenizerCopy = tokenizer;
  encoderCopy = encoder;
  if (treeCopy)
  {
    dimensionality = [treeCopy dimensionality];
  }

  else
  {
    dimensionality = 1;
  }

  v26.receiver = self;
  v26.super_class = FedStatsCategoricalType;
  v18 = -[FedStatsBoundedULongType initWithBound:](&v26, sel_initWithBound_, (dimensionality << [fragmentSizeCopy unsignedIntegerValue]) + 1);
  v19 = v18;
  if (v18)
  {
    [(FedStatsCategoricalType *)v18 setVersion:4];
    objc_storeStrong(&v19->_categoryFile, tree);
    objc_storeStrong(&v19->_prefixSize, size);
    objc_storeStrong(&v19->_fragmentSize, fragmentSize);
    objc_storeStrong(&v19->_filters, filters);
    objc_storeStrong(&v19->_tokenizer, tokenizer);
    objc_storeStrong(&v19->_preEncoder, encoder);
  }

  return v19;
}

+ (id)createFromDict:(id)dict possibleError:(id *)error
{
  v146[4] = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v6 = [dictCopy objectForKey:@"categories"];

  v7 = [dictCopy objectForKey:@"categoryMap"];

  v8 = [dictCopy objectForKey:@"categoryFile"];

  v9 = [dictCopy objectForKey:@"prefixSize"];

  if (v7)
  {
    v10 = (v6 != 0) + 1;
  }

  else
  {
    v10 = v6 != 0;
  }

  if (v8)
  {
    ++v10;
  }

  if (v9)
  {
    ++v10;
  }

  if (v10 != 1)
  {
    if (error)
    {
      errorCopy = error;
      v146[0] = @"categories";
      v146[1] = @"categoryMap";
      v146[2] = @"categoryFile";
      v146[3] = @"prefixTreeParameters";
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:4];
      v23 = MEMORY[0x277CCACA8];
      v24 = [v11 componentsJoinedByString:{@", "}];
      v25 = [v23 stringWithFormat:@"You're allowed to have exactly one of {%@} as key in parameters", v24];
      *errorCopy = [FedStatsError errorWithCode:301 description:v25];

      goto LABEL_23;
    }

LABEL_81:
    v21 = 0;
    goto LABEL_102;
  }

  errorCopy2 = error;
  if (v6)
  {
    v12 = v11 = [dictCopy objectForKey:@"categories"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v137 objects:v145 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v138;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v138 != v16)
            {
              objc_enumerationMutation(v13);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (errorCopy2)
              {
                *errorCopy2 = [FedStatsError errorWithCode:302 description:v12];
              }

              goto LABEL_58;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v137 objects:v145 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v18 = [MEMORY[0x277CBEB98] setWithArray:v13];
      v19 = [v18 count];
      v20 = [v13 count];

      if (v19 == v20)
      {
        v21 = [[self alloc] initWithCategories:v13];
        goto LABEL_59;
      }
    }

    errorCopy3 = errorCopy2;
    goto LABEL_53;
  }

  if (!v7)
  {
    errorCopy3 = error;
    if (v8)
    {
      v12 = v11 = [dictCopy objectForKey:@"categoryFile"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v50 = [dictCopy objectForKey:@"minIndex"];
        v51 = v50;
        if (v50)
        {
          unsignedIntegerValue = [v50 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
        }

        v61 = [dictCopy objectForKey:@"maxIndex"];
        v62 = v61;
        if (v61)
        {
          unsignedIntegerValue2 = [v61 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue2 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v124 = 0;
        v64 = [FedStatsSQLiteCategoryDatabase databaseWithFileURL:v11 minIndex:unsignedIntegerValue maxIndex:unsignedIntegerValue2 checkForPrimaryKey:1 error:&v124];
        v65 = v124;
        if (v64)
        {
          v21 = [[self alloc] initWithCategoryFile:v64];
        }

        else if (errorCopy2)
        {
          [FedStatsError errorWithCode:302 underlyingError:v65 description:@"Cannot create database from the provided URL"];
          *errorCopy2 = v21 = 0;
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_59;
      }

LABEL_53:
      if (errorCopy3)
      {
        [FedStatsError errorWithCode:302 description:v12];
        *errorCopy3 = v21 = 0;
        goto LABEL_59;
      }

LABEL_58:
      v21 = 0;
      goto LABEL_59;
    }

    if (v9)
    {
      v53 = [dictCopy objectForKey:@"prefixSize"];
      v11 = v53;
      if (v53 && ([v53 integerValue] & 0x8000000000000000) == 0)
      {
        v54 = [dictCopy objectForKey:@"fragmentSize"];
        v12 = v54;
        if (!v54 || [v54 integerValue] <= 0)
        {
          if (errorCopy2)
            v69 = {;
            *errorCopy2 = [FedStatsError errorWithCode:101 description:v69];
          }

          goto LABEL_58;
        }

        if ([v11 unsignedIntegerValue])
        {
          v55 = [dictCopy objectForKey:@"prefixTreeParameters"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (errorCopy2)
              v87 = {;
              *errorCopy2 = [FedStatsError errorWithCode:302 description:v87];
            }

            goto LABEL_147;
          }

          v56 = [v55 objectForKey:@"fileName"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy2)
            {
LABEL_146:

LABEL_147:
              goto LABEL_58;
            }
            v59 = ;
            *errorCopy2 = [FedStatsError errorWithCode:302 description:v59];
LABEL_145:

            goto LABEL_146;
          }

          v123 = 0;
          v57 = [FedStatsSQLiteCategoryDatabase databaseWithFileURL:v56 minIndex:0 maxIndex:0x7FFFFFFFFFFFFFFFLL checkForPrimaryKey:0 error:&v123];
          v58 = v123;
          v59 = v58;
          if (errorCopy2 && !v57)
          {
            *errorCopy2 = [FedStatsError errorWithCode:302 underlyingError:v58 description:@"Cannot load prefix tree as database"];
            goto LABEL_145;
          }

          if (!v57)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v57 = 0;
        }

        v70 = [dictCopy objectForKey:@"filters"];
        if (v70)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (errorCopy2)
              v113 = {;
              [FedStatsError errorWithCode:101 description:?];
              *errorCopy2 = v21 = 0;
            }

            else
            {
              v21 = 0;
            }

            goto LABEL_198;
          }
        }

        array = [MEMORY[0x277CBEB18] array];
        v104 = v11;
        if (v70)
        {
          obja = v70;
          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          v110 = v70;
          v71 = [v110 countByEnumeratingWithState:&v119 objects:v141 count:16];
          if (v71)
          {
            v72 = v71;
            v73 = *v120;
            do
            {
              for (j = 0; j != v72; ++j)
              {
                if (*v120 != v73)
                {
                  objc_enumerationMutation(v110);
                }

                v75 = *(*(&v119 + 1) + 8 * j);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v70 = obja;
                  if (errorCopy2)
                    v76 = {;
                    *errorCopy2 = [FedStatsError errorWithCode:101 description:v76];
                    goto LABEL_184;
                  }

                  goto LABEL_185;
                }

                v76 = [v75 objectForKey:@"filterVariant"];
                if (v76)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (errorCopy2)
                      v78 = {;
                      *errorCopy2 = [FedStatsError errorWithCode:101 description:v78];
                      goto LABEL_183;
                    }

                    v70 = obja;
                    goto LABEL_184;
                  }

                  v77 = [v75 objectForKey:@"filterParameters"];
                  if (v77)
                  {
                    v78 = v77;
                  }

                  else
                  {
                    v78 = MEMORY[0x277CBEC10];
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (errorCopy2)
                      v80 = {;
                      v96 = [FedStatsError errorWithCode:101 description:v80];
                      goto LABEL_181;
                    }

LABEL_183:
                    v70 = obja;

LABEL_184:
LABEL_185:

                    v21 = 0;
                    v11 = v104;
LABEL_197:

LABEL_198:
LABEL_59:

                    goto LABEL_101;
                  }

                  v118 = 0;
                  v79 = [FedStatsCategoricalTypeFilterFactory filterForVariant:v76 parameters:v78 error:&v118];
                  v80 = v118;
                  if (!v79)
                  {
                    if (errorCopy2)
                    {
                      v96 = [FedStatsError errorWithCode:101 underlyingError:v80 description:@"Cannot create filter with given parameters"];
LABEL_181:
                      *errorCopy2 = v96;
                    }

                    goto LABEL_183;
                  }

                  [array addObject:v79];
                }
              }

              v72 = [v110 countByEnumeratingWithState:&v119 objects:v141 count:16];
            }

            while (v72);
          }

          errorCopy3 = errorCopy2;
          v70 = obja;
        }

        v81 = [dictCopy objectForKey:@"tokenizerVariant"];
        if (v81)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (errorCopy3)
              v84 = {;
              [FedStatsError errorWithCode:101 description:v84];
              *errorCopy3 = v21 = 0;
LABEL_195:

              goto LABEL_196;
            }

            v21 = 0;
LABEL_196:

            v11 = v104;
            goto LABEL_197;
          }

          v82 = [dictCopy objectForKey:@"tokenizerParameters"];
          if (v82)
          {
            v83 = v82;
          }

          else
          {
            v83 = MEMORY[0x277CBEC10];
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy3)
            {
LABEL_172:
              v21 = 0;
              v84 = v83;
              goto LABEL_195;
            }
            v86 = ;
            *errorCopy2 = [FedStatsError errorWithCode:101 description:v86];
LABEL_171:

            goto LABEL_172;
          }

          v117 = 0;
          v84 = [FedStatsCategoricalTypeTokenizerFactory tokenizerForVariant:v81 parameters:v83 error:&v117];
          v85 = v117;
          v86 = v85;
          if (errorCopy3 && !v84)
          {
            *errorCopy3 = [FedStatsError errorWithCode:101 underlyingError:v85 description:@"Cannot create tokenizer with given parameters"];
            goto LABEL_171;
          }

          if (!v84)
          {
            v21 = 0;
            goto LABEL_196;
          }
        }

        else
        {
          v84 = 0;
        }

        objb = v70;
        v88 = [dictCopy objectForKey:@"preEncodingVariant"];
        if (v88)
        {
          objc_opt_class();
          v89 = v88;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy3)
            {
              v21 = 0;
              goto LABEL_194;
            }
            v91 = ;
            [FedStatsError errorWithCode:101 description:v91];
            *errorCopy2 = v21 = 0;
LABEL_193:

LABEL_194:
            v70 = objb;

            goto LABEL_195;
          }

          v90 = [dictCopy objectForKey:@"preEncodingParameters"];
          if (v90)
          {
            v91 = v90;
          }

          else
          {
            v91 = MEMORY[0x277CBEC10];
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy2)
            {
LABEL_192:
              v21 = 0;
              goto LABEL_193;
            }
            v94 = ;
            v95 = [FedStatsError errorWithCode:101 description:v94];
LABEL_191:
            *errorCopy2 = v95;

            goto LABEL_192;
          }

          v116 = 0;
          v92 = [FedStatsCategoricalTypePreEncoderFactory preEncoderForVariant:v89 parameters:v91 error:&v116];
          v93 = v116;
          v94 = v93;
          if (errorCopy2 && !v92)
          {
            v95 = [FedStatsError errorWithCode:101 underlyingError:v93 description:@"Cannot create pre-encoder with given parameters"];
            goto LABEL_191;
          }

          if (!v92)
          {
            v21 = 0;
            goto LABEL_194;
          }
        }

        else
        {
          v89 = 0;
          v92 = 0;
        }

        v21 = [[self alloc] initWithPrefixSize:v104 fragmentSize:v12 prefixTree:v57 filters:array tokenizer:v84 preEncoder:v92];
        v91 = v92;
        goto LABEL_193;
      }

      if (errorCopy2)
        v60 = {;
        *errorCopy2 = [FedStatsError errorWithCode:101 description:v60];
      }

LABEL_23:
      v21 = 0;
      goto LABEL_101;
    }

    goto LABEL_81;
  }

  v26 = v11 = [dictCopy objectForKey:@"categoryMap"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (errorCopy2)
    {
      [FedStatsError errorWithCode:302 description:v26];
      *errorCopy2 = v21 = 0;
      goto LABEL_100;
    }

    goto LABEL_69;
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v27 = v11;
  v28 = [v27 countByEnumeratingWithState:&v133 objects:v144 count:16];
  if (!v28)
  {
    goto LABEL_34;
  }

  v29 = v28;
  v30 = *v134;
  do
  {
    for (k = 0; k != v29; ++k)
    {
      if (*v134 != v30)
      {
        objc_enumerationMutation(v27);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy2)
        {
          *errorCopy2 = [FedStatsError errorWithCode:302 description:v26];
        }

LABEL_69:
        v21 = 0;
        goto LABEL_100;
      }
    }

    v29 = [v27 countByEnumeratingWithState:&v133 objects:v144 count:16];
  }

  while (v29);
LABEL_34:

  allKeys = [v27 allKeys];
  v33 = [allKeys sortedArrayUsingSelector:sel_compare_];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v34 = v33;
  v35 = [v34 countByEnumeratingWithState:&v129 objects:v143 count:16];
  if (!v35)
  {
    goto LABEL_51;
  }

  v111 = 0;
  v36 = *v130;
  v102 = v34;
  v103 = v11;
LABEL_36:
  v37 = 0;
  v38 = errorCopy2;
  v98 = v35;
LABEL_37:
  if (*v130 != v36)
  {
    objc_enumerationMutation(v34);
  }

  v99 = v37;
  v109 = *(*(&v129 + 1) + 8 * v37);
  v39 = [v27 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v101 = v39;
    obj = v39;
    v40 = [obj countByEnumeratingWithState:&v125 objects:v142 count:16];
    if (!v40)
    {
      goto LABEL_49;
    }

    v41 = v40;
    v42 = *v126;
    v100 = v26;
    v97 = v36;
LABEL_42:
    v43 = 0;
    while (1)
    {
      if (*v126 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v44 = *(*(&v125 + 1) + 8 * v43);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      allKeys2 = [dictionary allKeys];
      v46 = [allKeys2 containsObject:v44];

      if (v46)
      {
        v34 = v102;
        v11 = v103;
        v66 = errorCopy2;
        v26 = v100;
        v39 = v101;
        if (errorCopy2)
        {
          v67 = @"Subcategories must be distinct";
LABEL_96:
          *v66 = [FedStatsError errorWithCode:302 description:v67];
        }

        goto LABEL_97;
      }

      v47 = [FedStatsCategoricalTypeSubcategory categoryWithSuperCategory:v109 index:v111];
      [dictionary setObject:v47 forKey:v44];

      if (v41 == ++v43)
      {
        v41 = [obj countByEnumeratingWithState:&v125 objects:v142 count:16];
        v38 = errorCopy2;
        v26 = v100;
        v36 = v97;
        if (v41)
        {
          goto LABEL_42;
        }

LABEL_49:

        ++v111;
        v37 = v99 + 1;
        v34 = v102;
        v11 = v103;
        if (v99 + 1 == v98)
        {
          v35 = [v102 countByEnumeratingWithState:&v129 objects:v143 count:16];
          if (!v35)
          {
LABEL_51:

            v48 = dictionary;
            v21 = [[self alloc] initWithCategoryMap:dictionary categories:v34];
            goto LABEL_99;
          }

          goto LABEL_36;
        }

        goto LABEL_37;
      }
    }

    v34 = v102;
    v11 = v103;
    v66 = errorCopy2;
    v26 = v100;
    v39 = v101;
    if (errorCopy2)
    {
      v67 = v100;
      goto LABEL_96;
    }

LABEL_97:

    goto LABEL_98;
  }

  if (v38)
  {
    *v38 = [FedStatsError errorWithCode:302 description:v26];
  }

LABEL_98:

  v21 = 0;
  v48 = dictionary;
LABEL_99:

LABEL_100:
LABEL_101:

LABEL_102:

  return v21;
}

- (id)encodeToIndex:(id)index possibleError:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  null = [MEMORY[0x277CBEB68] null];
  v8 = [indexCopy isEqual:null];

  if (v8)
  {
    goto LABEL_2;
  }

  version = [(FedStatsCategoricalType *)self version];
  if (version > 2)
  {
    if (version == 3)
    {
      categoryFile = [(FedStatsCategoricalType *)self categoryFile];
      v58 = 0;
      v9 = [categoryFile encode:indexCopy error:&v58];
      v29 = v58;

      if (v9)
      {
        v30 = v9;
      }

      else if (error)
      {
        *error = [FedStatsError errorWithCode:401 underlyingError:v29 description:@"Error when encoding categorical type over database"];
      }

      goto LABEL_3;
    }

    if (version != 4)
    {
LABEL_23:
      if (error)
      {
        [FedStatsError errorWithCode:900 description:@"The categorical type version is not supported"];
        *error = v9 = 0;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_3;
    }

    errorCopy = error;
    v14 = indexCopy;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    filters = [(FedStatsCategoricalType *)self filters];
    v16 = [filters countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v55;
LABEL_15:
      v20 = 0;
      v21 = v18;
      v18 += v17;
      v22 = v14;
      while (1)
      {
        if (*v55 != v19)
        {
          objc_enumerationMutation(filters);
        }

        v14 = [*(*(&v54 + 1) + 8 * v20) filter:v22];

        if (!v14)
        {
          break;
        }

        ++v21;
        ++v20;
        v22 = v14;
        if (v17 == v20)
        {
          v17 = [filters countByEnumeratingWithState:&v54 objects:v60 count:16];
          if (v17)
          {
            goto LABEL_15;
          }

          goto LABEL_21;
        }
      }

      if (errorCopy)
      {
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Data point filtered out at Stage %lu (not necessarily an error)", v21];
        [FedStatsError errorWithCode:401 description:v25];
        *errorCopy = v9 = 0;
        goto LABEL_67;
      }

      v9 = 0;
      goto LABEL_68;
    }

LABEL_21:

    tokenizer = [(FedStatsCategoricalType *)self tokenizer];
    if (tokenizer)
    {
      tokenizer2 = [(FedStatsCategoricalType *)self tokenizer];
      v25 = [tokenizer2 tokenize:v14];
    }

    else
    {
      v59 = v14;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
    }

    preEncoder = [(FedStatsCategoricalType *)self preEncoder];
    if (preEncoder)
    {
      preEncoder2 = [(FedStatsCategoricalType *)self preEncoder];
      firstObject = [preEncoder2 preEncode:v25];
    }

    else
    {
      firstObject = [v25 firstObject];
    }

    if (!firstObject)
    {
      if (errorCopy)
      {
        [FedStatsError errorWithCode:401 description:@"Data point cannot be tokenized and pre-encoded (not necessarily an error)"];
        *errorCopy = v9 = 0;
      }

      else
      {
        v9 = 0;
      }

LABEL_66:

      filters = v14;
LABEL_67:

LABEL_68:
      goto LABEL_3;
    }

    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", firstObject];
    prefixSize = [(FedStatsCategoricalType *)self prefixSize];
    unsignedIntegerValue = [prefixSize unsignedIntegerValue];

    fragmentSize = [(FedStatsCategoricalType *)self fragmentSize];
    unsignedIntegerValue2 = [fragmentSize unsignedIntegerValue];

    if ([v34 length] <= unsignedIntegerValue)
    {
      if (errorCopy)
      {
        [FedStatsError errorWithCode:401 description:@"Pre-encoded data length shorter than prefix (not necessarily an error)"];
        *errorCopy = v9 = 0;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_65;
    }

    v39 = [v34 stringByPaddingToLength:unsignedIntegerValue2 + unsignedIntegerValue withString:@"0" startingAtIndex:0];

    v51 = v39;
    if (unsignedIntegerValue)
    {
      v40 = [v39 substringToIndex:unsignedIntegerValue];
      categoryFile2 = [(FedStatsCategoricalType *)self categoryFile];
      v53 = 0;
      v42 = [categoryFile2 encode:v40 error:&v53];
      v50 = v53;

      if (v42)
      {
        if ([v42 unsignedIntegerValue])
        {
          v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v42, "unsignedIntegerValue") - 1}];

          v42 = v43;
          v39 = v51;
          goto LABEL_54;
        }

        v47 = errorCopy;
        if (!errorCopy)
        {
          goto LABEL_62;
        }

        v49 = [FedStatsError errorWithCode:401 description:@"Pre-encoded data does not match a prefix (not necessarily an error)"];
        v48 = v50;
      }

      else
      {
        v47 = errorCopy;
        if (!errorCopy)
        {
          goto LABEL_62;
        }

        v48 = v50;
        v49 = [FedStatsError errorWithCode:401 underlyingError:v50 description:@"Error when encoding prefix over prefix tree"];
      }

      v9 = 0;
      *v47 = v49;
LABEL_64:

      v34 = v51;
LABEL_65:

      goto LABEL_66;
    }

    v50 = 0;
    v42 = &unk_285E12CE0;
LABEL_54:
    v44 = [v39 substringWithRange:{unsignedIntegerValue, unsignedIntegerValue2}];
    v40 = [FedStatsUtils bitStringToInt:v44];

    if (v40)
    {
      v45 = [v42 unsignedIntegerValue] << unsignedIntegerValue2;
      unsignedIntegerValue3 = [v40 unsignedIntegerValue];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue3 + v45 + 1];
LABEL_63:
      v48 = v50;
      goto LABEL_64;
    }

LABEL_62:
    v9 = 0;
    goto LABEL_63;
  }

  if (version != 1)
  {
    if (version == 2)
    {
      categoryMap = [(FedStatsCategoricalType *)self categoryMap];
      v13 = [categoryMap objectForKey:indexCopy];

      if (v13)
      {
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "index") + 1}];
      }

      else
      {
        v9 = &unk_285E12CE0;
      }

      goto LABEL_3;
    }

    goto LABEL_23;
  }

  categories = [(FedStatsCategoricalType *)self categories];
  v27 = [categories indexOfObject:indexCopy];

  if (v27 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_2:
    v9 = &unk_285E12CE0;
    goto LABEL_3;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27 + 1];
LABEL_3:

  return v9;
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
      *error = v9 = 0;
      goto LABEL_16;
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  version = [(FedStatsCategoricalType *)self version];
  if (version - 1 < 2)
  {
    if ([indexCopy unsignedLongValue])
    {
      categories = [(FedStatsCategoricalType *)self categories];
      v9 = [categories objectAtIndex:{objc_msgSend(indexCopy, "unsignedLongValue") - 1}];
    }

    else
    {
      v9 = +[FedStatsCategoricalType kOutOfCategories];
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
  v9 = [categoryFile decode:objc_msgSend(indexCopy error:{"unsignedLongValue"), &v15}];

  if (v9)
  {
    v13 = v9;
  }

LABEL_16:

  return v9;
}

- (id)sampleForIndex:(unint64_t)index
{
  if (!index)
  {
LABEL_6:
    v7 = +[FedStatsCategoricalType kOutOfCategories];
    goto LABEL_8;
  }

  version = [(FedStatsCategoricalType *)self version];
  if (version == 3)
  {
LABEL_5:
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:index];
    v7 = [(FedStatsCategoricalType *)self decodeFromIndex:v6 possibleError:0];

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
  v10[3] = &unk_278FF6218;
  v10[4] = &v11;
  v10[5] = index;
  [categoryMap enumerateKeysAndObjectsUsingBlock:v10];

  v7 = [v12[5] objectAtIndex:{arc4random_uniform(objc_msgSend(v12[5], "count"))}];
  _Block_object_dispose(&v11, 8);

LABEL_8:

  return v7;
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