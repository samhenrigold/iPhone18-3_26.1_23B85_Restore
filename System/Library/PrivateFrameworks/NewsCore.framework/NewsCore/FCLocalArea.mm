@interface FCLocalArea
- (BOOL)containsLocation:(id)location;
- (BOOL)containsPointAtLatitude:(double)latitude longitude:(double)longitude;
- (BOOL)isValue:(double)value betweenValue:(double)betweenValue andValue:(double)andValue;
- (FCLocalArea)init;
- (FCLocalArea)initWithDictionary:(id)dictionary;
- (FCLocalArea)initWithIdentifier:(id)identifier bbox:(id)bbox regionIDs:(id)ds;
- (double)maxLat;
- (double)maxLon;
- (double)minLat;
- (double)minLon;
@end

@implementation FCLocalArea

- (FCLocalArea)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [FCLocalArea alloc];
  v6 = FCAppConfigurationStringValue(dictionaryCopy, @"id", 0);
  v7 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"bbox", 0);
  v8 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"regionIds", 0);

  v9 = [(FCLocalArea *)v5 initWithIdentifier:v6 bbox:v7 regionIDs:v8];
  return v9;
}

- (FCLocalArea)initWithIdentifier:(id)identifier bbox:(id)bbox regionIDs:(id)ds
{
  v42 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  bboxCopy = bbox;
  dsCopy = ds;
  v36.receiver = self;
  v36.super_class = FCLocalArea;
  v11 = [(FCLocalArea *)&v36 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_36;
  }

  objc_storeStrong(&v11->_identifier, identifier);
  objc_storeStrong(&v12->_bbox, bbox);
  objc_storeStrong(&v12->_regionIds, ds);
  v13 = bboxCopy;
  if ([v13 count] != 4)
  {
    v30 = 0;
    goto LABEL_35;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v14)
  {
    v30 = 1;
    goto LABEL_34;
  }

  v15 = v14;
  v34 = *v38;
  v16 = 0x1E696A000uLL;
  v32 = identifierCopy;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v38 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v37 + 1) + 8 * i);
      objc_opt_class();
      if (!v18 || (objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = 0;
LABEL_32:

LABEL_33:
        v30 = 0;
        identifierCopy = v32;
        goto LABEL_34;
      }

      v19 = v18;
      if ([v19 count] != 2)
      {
        goto LABEL_32;
      }

      objc_opt_class();
      v20 = [v19 objectAtIndexedSubscript:0];
      if (v20)
      {
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      v23 = v16;
      objc_opt_class();
      v24 = [v19 objectAtIndexedSubscript:1];
      if (v24)
      {
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;

      if (!v22 || !v26 || ([v22 doubleValue], fabs(v27) > 90.0))
      {

        goto LABEL_32;
      }

      [v26 doubleValue];
      v29 = fabs(v28);

      if (v29 > 180.0)
      {
        goto LABEL_33;
      }

      v16 = v23;
    }

    v15 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    v30 = 1;
    identifierCopy = v32;
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_34:

LABEL_35:
  v12->_isBboxValid = v30;
LABEL_36:

  return v12;
}

- (FCLocalArea)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCLocalArea init]";
    v10 = 2080;
    v11 = "FCLocalArea.m";
    v12 = 1024;
    v13 = 54;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCLocalArea init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (BOOL)containsLocation:(id)location
{
  if (!location)
  {
    return 0;
  }

  locationCopy = location;
  [locationCopy coordinate];
  v6 = v5;
  [locationCopy coordinate];
  v8 = v7;

  return [(FCLocalArea *)self containsPointAtLatitude:v6 longitude:v8];
}

- (BOOL)containsPointAtLatitude:(double)latitude longitude:(double)longitude
{
  if (![(FCLocalArea *)self isBboxValid])
  {
    return 0;
  }

  [(FCLocalArea *)self minLat];
  v8 = v7;
  [(FCLocalArea *)self maxLat];
  if (![(FCLocalArea *)self isValue:latitude betweenValue:v8 andValue:v9])
  {
    return 0;
  }

  [(FCLocalArea *)self minLon];
  v11 = v10;
  [(FCLocalArea *)self maxLon];

  return [(FCLocalArea *)self isValue:longitude betweenValue:v11 andValue:v12];
}

- (BOOL)isValue:(double)value betweenValue:(double)betweenValue andValue:(double)andValue
{
  v5 = value <= betweenValue;
  if (value < andValue)
  {
    v5 = 0;
  }

  return value >= betweenValue && value <= andValue || v5;
}

- (double)minLat
{
  bbox = [(FCLocalArea *)self bbox];
  v3 = [bbox objectAtIndexedSubscript:2];
  v4 = [v3 objectAtIndexedSubscript:0];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)maxLat
{
  bbox = [(FCLocalArea *)self bbox];
  v3 = [bbox objectAtIndexedSubscript:0];
  v4 = [v3 objectAtIndexedSubscript:0];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)minLon
{
  bbox = [(FCLocalArea *)self bbox];
  v3 = [bbox objectAtIndexedSubscript:0];
  v4 = [v3 objectAtIndexedSubscript:1];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)maxLon
{
  bbox = [(FCLocalArea *)self bbox];
  v3 = [bbox objectAtIndexedSubscript:2];
  v4 = [v3 objectAtIndexedSubscript:1];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

@end