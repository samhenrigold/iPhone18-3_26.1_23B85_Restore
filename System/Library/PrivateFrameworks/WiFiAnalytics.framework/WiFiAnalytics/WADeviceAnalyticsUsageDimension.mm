@interface WADeviceAnalyticsUsageDimension
+ (id)dimensionWith:(id)with forEntity:(id)entity;
+ (id)dimensionsUsedAsFilterIn:(id)in;
+ (id)dimensionsUsedAsGroupBy:(id)by;
+ (id)usedDimensionsIn:(id)in;
- (BOOL)useDimensionAs:(unint64_t)as withPredicate:(id)predicate withError:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation WADeviceAnalyticsUsageDimension

+ (id)dimensionWith:(id)with forEntity:(id)entity
{
  withCopy = with;
  entityCopy = entity;
  v7 = objc_opt_new();
  v8 = v7;
  if (v7)
  {
    [v7 setDimension:withCopy];
    [v8 setUseAs:0];
    [v8 setFilterPredicate:0];
    [v8 setEntity:entityCopy];
    attributesByName = [entityCopy attributesByName];
    v10 = [attributesByName objectForKeyedSubscript:withCopy];
    attributeType = [v10 attributeType];

    v12 = 0x7FFFFFFFFFFFFFFFLL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (attributeType == 200)
    {
      v13 = 0x7FFFFFFFLL;
    }

    if (attributeType != 300)
    {
      v12 = v13;
    }

    if (attributeType == 100)
    {
      v14 = 0x7FFFLL;
    }

    else
    {
      v14 = v12;
    }

    [v8 setInf:v14];
  }

  return v8;
}

- (BOOL)useDimensionAs:(unint64_t)as withPredicate:(id)predicate withError:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v9 = predicateCopy;
  if (!predicateCopy && (as & 2) != 0)
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v21 = "[WADeviceAnalyticsUsageDimension useDimensionAs:withPredicate:withError:]";
      v22 = 1024;
      v23 = 92;
    }

    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A588];
      v27[0] = @"WAErrorCodeInvalidInput";
      v13 = MEMORY[0x1E695DF20];
      v14 = v27;
      v15 = &v26;
LABEL_17:
      v17 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:{1, v18, v19}];
      *error = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v17];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    if (!predicateCopy || (as & 2) != 0)
    {
      [(WADeviceAnalyticsUsageDimension *)self setUseAs:as];
      [(WADeviceAnalyticsUsageDimension *)self setFilterPredicate:v9];
      if (error)
      {
        *error = 0;
      }

      LOBYTE(error) = 1;
      goto LABEL_8;
    }

    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "[WADeviceAnalyticsUsageDimension useDimensionAs:withPredicate:withError:]";
      v22 = 1024;
      v23 = 96;
      v24 = 2048;
      asCopy = as;
    }

    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A588];
      v19 = @"WAErrorCodeInvalidInput";
      v13 = MEMORY[0x1E695DF20];
      v14 = &v19;
      v15 = &v18;
      goto LABEL_17;
    }
  }

LABEL_8:

  return error;
}

- (id)description
{
  v2 = @"Filter";
  filterPredicate = &stru_1F481C4A0;
  useAs = self->_useAs;
  if ((useAs & 2) == 0)
  {
    v2 = &stru_1F481C4A0;
  }

  if (!useAs)
  {
    v2 = @"Unused";
  }

  v5 = @" & ";
  if (useAs != 6)
  {
    v5 = &stru_1F481C4A0;
  }

  if ((useAs & 4) != 0)
  {
    v6 = @"GroupBy";
  }

  else
  {
    v6 = &stru_1F481C4A0;
  }

  if (self->_filterPredicate)
  {
    filterPredicate = self->_filterPredicate;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"dimension:%@ useAs:%@%@%@ %@", self->_dimension, v2, v5, v6, filterPredicate];
}

- (id)copyWithZone:(_NSZone *)zone
{
  dimension = [(WADeviceAnalyticsUsageDimension *)self dimension];
  entity = [(WADeviceAnalyticsUsageDimension *)self entity];
  v6 = [WADeviceAnalyticsUsageDimension dimensionWith:dimension forEntity:entity];

  [v6 setUseAs:{-[WADeviceAnalyticsUsageDimension useAs](self, "useAs")}];
  filterPredicate = [(WADeviceAnalyticsUsageDimension *)self filterPredicate];
  [v6 setFilterPredicate:filterPredicate];

  return v6;
}

+ (id)usedDimensionsIn:(id)in
{
  v10[1] = *MEMORY[0x1E69E9840];
  allValues = [in allValues];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"useAs != 0"];
  v5 = [WAUtil filterArray:allValues usingPredicate:v4];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dimension" ascending:1];
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];

  return v8;
}

+ (id)dimensionsUsedAsFilterIn:(id)in
{
  v3 = MEMORY[0x1E696AE18];
  inCopy = in;
  v5 = [v3 predicateWithFormat:@"(useAs & %d) > 0", 2];
  v6 = [WAUtil filterArray:inCopy usingPredicate:v5];

  return v6;
}

+ (id)dimensionsUsedAsGroupBy:(id)by
{
  v3 = MEMORY[0x1E696AE18];
  byCopy = by;
  v5 = [v3 predicateWithFormat:@"(useAs & %d) > 0", 4];
  v6 = [WAUtil filterArray:byCopy usingPredicate:v5];

  return v6;
}

@end