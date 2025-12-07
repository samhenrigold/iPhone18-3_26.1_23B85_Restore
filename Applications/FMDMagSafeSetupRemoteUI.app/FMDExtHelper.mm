@interface FMDExtHelper
+ (id)_computehash:(id)_computehash;
+ (id)deviceIDFromAddress:(id)address;
+ (id)deviceTypeFromVendorId:(unsigned int)id productId:(unsigned int)productId;
+ (id)parseStyle:(unint64_t)style info:(id)info;
@end

@implementation FMDExtHelper

+ (id)deviceIDFromAddress:(id)address
{
  address = [NSString stringWithFormat:@"BT_%@", address];
  v4 = [FMDExtHelper _computehash:address];

  return v4;
}

+ (id)deviceTypeFromVendorId:(unsigned int)id productId:(unsigned int)productId
{
  v5 = [NSString stringWithFormat:@"BT_%u_%u", *&id, *&productId];
  v6 = [self _computehash:v5];

  return v6;
}

+ (id)_computehash:(id)_computehash
{
  v3 = [_computehash dataUsingEncoding:4];
  fm_sha256Hash = [v3 fm_sha256Hash];
  fm_hexString = [fm_sha256Hash fm_hexString];
  lowercaseString = [fm_hexString lowercaseString];

  return lowercaseString;
}

+ (id)parseStyle:(unint64_t)style info:(id)info
{
  infoCopy = info;
  v6 = sub_10000F1B0(infoCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    styleCopy = style;
    v35 = 2112;
    v36 = infoCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#PARSING style %llu with feature %@", buf, 0x16u);
  }

  if (!infoCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v24 = 0;
    goto LABEL_34;
  }

  v7 = [infoCopy objectForKeyedSubscript:@"pattern"];
  v8 = v7;
  if (v7 && (objc_opt_class(), v7 = objc_opt_isKindOfClass(), (v7 & 1) != 0))
  {
    isKindOfClass = [infoCopy objectForKeyedSubscript:@"mask"];
    v10 = isKindOfClass;
    if (isKindOfClass)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v27 = infoCopy;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v10 = v10;
        v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v29;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v29 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v28 + 1) + 8 * i);
              v16 = [v10 objectForKeyedSubscript:v15];
              v17 = v16;
              if (v16)
              {
                v18 = strtouq([v16 UTF8String], 0, 16);
                styleCopy2 = style;
                if (v18)
                {
                  v20 = (v18 & 1) == 0;
                }

                else
                {
                  v20 = 0;
                }

                if (v20)
                {
                  do
                  {
                    v21 = v18;
                    v18 >>= 1;
                    styleCopy2 >>= 1;
                  }

                  while (v21 && (v21 & 2) == 0);
                }

                v22 = [NSString stringWithFormat:@"%llu", styleCopy2 & v18];
                v23 = [v8 stringByReplacingOccurrencesOfString:v15 withString:v22];

                v8 = v23;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v12);
        }

        v8 = v8;
        v24 = v8;
        infoCopy = v27;
        goto LABEL_33;
      }
    }

    v25 = sub_10000F1B0(isKindOfClass);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10001D9A4(infoCopy, v25);
    }
  }

  else
  {
    v10 = sub_10000F1B0(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001DA1C(infoCopy, v10);
    }
  }

  v24 = 0;
LABEL_33:

LABEL_34:

  return v24;
}

@end