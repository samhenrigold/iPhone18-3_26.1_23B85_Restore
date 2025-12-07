@interface ipp_value_t
+ (id)valueWithBoolean:(int)boolean;
+ (id)valueWithInteger:(int)integer;
+ (id)valueWithString:(id)string;
- (BOOL)BOOLean;
- (NSData)unknown;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)loggingValue:(int)value;
- (int)integer;
- (ipp_collection_t)collection;
- (ipp_value_date_t)date;
- (ipp_value_range_t)range;
- (ipp_value_resolution_t)resolution;
- (ipp_value_string_t)string;
- (ipp_value_t)init;
- (ipp_value_t)initWithCoder:(id)coder;
- (void)setBoolean:(BOOL)boolean;
- (void)setDate:(ipp_value_date_t)date;
- (void)setInteger:(int)integer;
- (void)setRange:(ipp_value_range_t)range;
- (void)setResolution:(ipp_value_resolution_t)resolution;
- (void)setString:(ipp_value_string_t)string;
@end

@implementation ipp_value_t

- (ipp_value_t)init
{
  v3.receiver = self;
  v3.super_class = ipp_value_t;
  return [(ipp_value_t *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 1, self->x_payload);
  return v4;
}

- (ipp_value_t)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ipp_value_t;
  v5 = [(ipp_value_t *)&v12 init];
  if (v5)
  {
    Class = objc_getClass("PK_ipp_collection_t");
    if (!Class)
    {
      Class = objc_opt_class();
    }

    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v13[2] = objc_opt_class();
    v13[3] = Class;
    v7 = [NSArray arrayWithObjects:v13 count:4];
    v8 = [NSSet setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_payload"];
    x_payload = v5->x_payload;
    v5->x_payload = v9;
  }

  return v5;
}

- (int)integer
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [self->x_payload integerValue];
  }

  else
  {
    return 0;
  }
}

- (void)setInteger:(int)integer
{
  v4 = [NSNumber numberWithInt:*&integer];
  x_payload = self->x_payload;
  self->x_payload = v4;
}

- (BOOL)BOOLean
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  x_payload = self->x_payload;

  return [x_payload BOOLValue];
}

- (void)setBoolean:(BOOL)boolean
{
  v4 = [NSNumber numberWithBool:boolean];
  x_payload = self->x_payload;
  self->x_payload = v4;
}

- (ipp_value_date_t)date
{
  memset(v6, 0, 11);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = 0;
  v5 = 0;
  if (isKindOfClass)
  {
    [self->x_payload getBytes:v6 range:0, 11];
    v5 = v6[0];
    v4 = LOWORD(v6[1]) | (BYTE2(v6[1]) << 16);
  }

  *result.var0 = v5;
  *&result.var0[8] = v4;
  result.var0[10] = BYTE2(v4);
  return result;
}

- (void)setDate:(ipp_value_date_t)date
{
  dateCopy = date;
  v4 = [NSData dataWithBytes:&dateCopy length:11];
  x_payload = self->x_payload;
  self->x_payload = v4;
}

- (void)setString:(ipp_value_string_t)string
{
  var0 = string.var0;
  v5 = string.var1;
  v6 = v5;
  if (var0)
  {
    v7 = var0;
    v11[0] = v6;
    v11[1] = v7;
    v8 = [NSArray arrayWithObjects:v11 count:2];
    x_payload = self->x_payload;
    self->x_payload = v8;
  }

  else
  {
    v12 = v5;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
    v7 = self->x_payload;
    self->x_payload = v10;
  }
}

- (ipp_value_string_t)string
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->x_payload;
    v4 = [v3 count];
    if (v4 == 1)
    {
      v5 = 0;
    }

    else
    {
      if (v4 != 2)
      {
        v5 = 0;
        v6 = &stru_1000A4BB0;
        goto LABEL_9;
      }

      v5 = [v3 objectAtIndexedSubscript:1];
    }

    v6 = [v3 objectAtIndexedSubscript:0];
LABEL_9:

    goto LABEL_10;
  }

  v5 = 0;
  v6 = &stru_1000A4BB0;
LABEL_10:
  v7 = v5;
  v8 = v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (ipp_value_resolution_t)resolution
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    v11 = 0;
    v10 = 0;
    v12 = 0;
    goto LABEL_8;
  }

  v3 = self->x_payload;
  if ([v3 count]!= 3)
  {
    v13 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "invalid resolution object", v15, 2u);
    }

    goto LABEL_7;
  }

  v4 = [v3 objectAtIndexedSubscript:0];
  integerValue = [v4 integerValue];
  v6 = [v3 objectAtIndexedSubscript:1];
  integerValue2 = [v6 integerValue];
  v8 = [v3 objectAtIndexedSubscript:2];
  integerValue3 = [v8 integerValue];

  v10 = integerValue2 << 32;
  v11 = integerValue;
  v12 = integerValue3;
LABEL_8:
  v14 = v10 | v11;
  result.var0 = v14;
  result.var1 = HIDWORD(v14);
  result.var2 = v12;
  return result;
}

- (void)setResolution:(ipp_value_resolution_t)resolution
{
  v3 = *&resolution.var2;
  v4 = *&resolution.var0;
  v6 = [NSNumber numberWithInt:?];
  v7 = [NSNumber numberWithInt:HIDWORD(v4), v6];
  v11[1] = v7;
  v8 = [NSNumber numberWithUnsignedInt:v3];
  v11[2] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:3];
  x_payload = self->x_payload;
  self->x_payload = v9;
}

- (ipp_value_range_t)range
{
  v4 = v2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
LABEL_9:
    *v4 = 0;
    return isKindOfClass;
  }

  v11 = self->x_payload;
  if ([v11 count]!= 2)
  {
    v10 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "invalid range object", buf, 2u);
    }

    goto LABEL_9;
  }

  v6 = [v11 objectAtIndexedSubscript:0];
  integerValue = [v6 integerValue];
  v8 = [v11 objectAtIndexedSubscript:1];
  integerValue2 = [v8 integerValue];
  *v4 = integerValue;
  *(v4 + 4) = integerValue2;

  return isKindOfClass;
}

- (void)setRange:(ipp_value_range_t)range
{
  v5 = [NSNumber numberWithInt:*range.var0];
  v9[0] = v5;
  v6 = [NSNumber numberWithInt:*(*&range + 4)];
  v9[1] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:2];
  x_payload = self->x_payload;
  self->x_payload = v7;
}

- (NSData)unknown
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->x_payload;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ipp_collection_t)collection
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_getClass("PK_ipp_collection_t"), (objc_opt_isKindOfClass()))
  {
    v3 = self->x_payload;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = ipp_value_t;
  v3 = [(ipp_value_t *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@ { %@ }", v3, self->x_payload];

  return v4;
}

- (id)loggingValue:(int)value
{
  if (value <= 34)
  {
    if (value <= 18)
    {
      if (value && value != 16)
      {
        goto LABEL_45;
      }
    }

    else if (value != 19)
    {
      if (value == 33)
      {
        goto LABEL_39;
      }

      if (value == 34)
      {
        bOOLean = [(ipp_value_t *)self BOOLean];
        x_payload = @"false";
        if (bOOLean)
        {
          x_payload = @"true";
        }

        goto LABEL_55;
      }

LABEL_45:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = self->x_payload;
        if (![v29 count])
        {

          v40 = @"<empty array>";
          goto LABEL_56;
        }

        v30 = [v29 objectAtIndexedSubscript:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v29 count]== 1)
          {
            v40 = v30;
            goto LABEL_44;
          }

          if ([v29 count]== 2)
          {
            v32 = [v29 objectAtIndexedSubscript:1];
            v40 = [NSString stringWithFormat:@"%@ (%@)", v30, v32];
            goto LABEL_43;
          }
        }
      }

      x_payload = self->x_payload;
LABEL_55:
      v40 = x_payload;
      goto LABEL_56;
    }

    v40 = +[NSNull null];
    goto LABEL_56;
  }

  if (value <= 49)
  {
    if (value != 35)
    {
      if (value == 48)
      {
        v25 = self->x_payload;
        v26 = objc_opt_new();
        v27 = [NSString stringWithFormat:@"%@<%p> - %lu bytes {", objc_opt_class(), v25, [v25 length]];
        [v26 addObject:v27];

        *&v49.tm_sec = _NSConcreteStackBlock;
        *&v49.tm_hour = 3221225472;
        *&v49.tm_mon = sub_10003EBE8;
        *&v49.tm_wday = &unk_1000A3240;
        v40 = v26;
        *&v49.tm_isdst = v40;
        _visitHexLines(v25, 0, &v49);
        v28 = [NSString stringWithFormat:@"}"];
        [(__CFString *)v40 addObject:v28];

        goto LABEL_56;
      }

      if (value == 49)
      {
        date = [(ipp_value_t *)self date];
        v6 = v5;
        memset(&v49.tm_wday, 0, 32);
        v49.tm_mon = BYTE2(date) - 1;
        v49.tm_year = (bswap32(date) >> 16) - 1900;
        v49.tm_hour = BYTE4(date);
        v49.tm_mday = BYTE3(date);
        *&v49.tm_sec = vand_s8(vmovn_s64(vshlq_u64(vdupq_n_s64(date), xmmword_10006B950)), 0xFF000000FFLL);
        v7 = mktime(&v49);
        v8 = 3600;
        if (v6 != 45)
        {
          v8 = -3600;
        }

        v9 = 60;
        if (v6 != 45)
        {
          v9 = -60;
        }

        v10 = [NSDate dateWithTimeIntervalSince1970:(v9 * BYTE2(v6) + v8 * BYTE1(v6) + v7)];
        v40 = [v10 description];

        goto LABEL_56;
      }

      goto LABEL_45;
    }

LABEL_39:
    v40 = [NSString stringWithFormat:@"%d", [(ipp_value_t *)self integer]];
    goto LABEL_56;
  }

  if (value == 50)
  {
    v29 = self->x_payload;
    v30 = [v29 objectAtIndexedSubscript:0];
    integerValue = [v30 integerValue];
    v32 = [v29 objectAtIndexedSubscript:1];
    integerValue2 = [v32 integerValue];
    v35 = [v29 objectAtIndexedSubscript:2];
    v40 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"resolution<%d, %d, %d>", integerValue, integerValue2, [v35 integerValue]);

    goto LABEL_43;
  }

  if (value == 51)
  {
    v29 = self->x_payload;
    v30 = [v29 objectAtIndexedSubscript:0];
    integerValue3 = [v30 integerValue];
    v32 = [v29 objectAtIndexedSubscript:1];
    v40 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"range<%d, %d>", integerValue3, [v32 integerValue]);
LABEL_43:

LABEL_44:
    goto LABEL_56;
  }

  if (value != 52)
  {
    goto LABEL_45;
  }

  v37 = self->x_payload;
  v40 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  attrs = [v37 attrs];
  obj = attrs;
  v14 = [attrs countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v14)
  {
    v39 = *v46;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v46 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v45 + 1) + 8 * i);
        name = [v16 name];
        v18 = objc_opt_new();
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        values = [v16 values];
        v20 = [values countByEnumeratingWithState:&v41 objects:v52 count:16];
        if (v20)
        {
          v21 = *v42;
          do
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v42 != v21)
              {
                objc_enumerationMutation(values);
              }

              v23 = [*(*(&v41 + 1) + 8 * j) loggingValue:{objc_msgSend(v16, "value_tag")}];
              [v18 addObject:v23];
            }

            v20 = [values countByEnumeratingWithState:&v41 objects:v52 count:16];
          }

          while (v20);
        }

        v50[0] = @"col_name";
        v50[1] = @"col_vals";
        v51[0] = name;
        v51[1] = v18;
        v24 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
        [(__CFString *)v40 addObject:v24];
      }

      attrs = obj;
      v14 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v14);
  }

LABEL_56:

  return v40;
}

+ (id)valueWithInteger:(int)integer
{
  v3 = *&integer;
  v4 = objc_opt_new();
  [v4 setInteger:v3];

  return v4;
}

+ (id)valueWithBoolean:(int)boolean
{
  v4 = objc_opt_new();
  [v4 setBoolean:boolean != 0];

  return v4;
}

+ (id)valueWithString:(id)string
{
  stringCopy = string;
  v4 = objc_opt_new();
  v5 = stringCopy;
  v6 = v5;
  if (v4)
  {
    [v4 setString:{0, v5}];
  }

  else
  {
  }

  return v4;
}

@end