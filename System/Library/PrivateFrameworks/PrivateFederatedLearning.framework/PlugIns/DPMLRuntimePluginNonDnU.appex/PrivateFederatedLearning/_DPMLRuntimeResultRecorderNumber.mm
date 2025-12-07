@interface _DPMLRuntimeResultRecorderNumber
+ (BOOL)recordData:(id)data forKey:(id)key minValue:(int)value maxValue:(int)maxValue numBucket:(unsigned int)bucket metadata:(id)metadata error:(id *)error;
+ (BOOL)recordMultipleKeysData:(id)data forBaseKey:(id)key minValue:(int)value maxValue:(int)maxValue numBucket:(unsigned int)bucket metadata:(id)metadata error:(id *)error;
+ (unsigned)findBucketIndexForIntValue:(int)value minValue:(int)minValue maxValue:(int)maxValue numBucket:(unsigned int)bucket;
@end

@implementation _DPMLRuntimeResultRecorderNumber

+ (BOOL)recordData:(id)data forKey:(id)key minValue:(int)value maxValue:(int)maxValue numBucket:(unsigned int)bucket metadata:(id)metadata error:(id *)error
{
  v10 = *&bucket;
  dataCopy = data;
  keyCopy = key;
  metadataCopy = metadata;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = dataCopy;
  v15 = [v14 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v47;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v47 != v17)
        {
          objc_enumerationMutation(v14);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v20 = [NSString stringWithFormat:@"Wrong value type for NumberRecorder result: %@", objc_opt_class()];
            *error = [_DPMLRuntimeError errorWithCode:400 description:v20];
          }

          goto LABEL_15;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  if (v10 <= 2)
  {
    if (error)
    {
      v19 = @"numBucket should be larger strictly than 2";
LABEL_30:
      [_DPMLRuntimeError errorWithCode:400 description:v19];
      *error = v21 = 0;
      goto LABEL_36;
    }

LABEL_15:
    v21 = 0;
    goto LABEL_36;
  }

  if (value >= maxValue)
  {
    if (error)
    {
      v19 = @"minValue should be striclty smaller than maxValue";
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  v22 = +[_PFLLog extension];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_10001C68C(v14, keyCopy, v22);
  }

  v37 = [[_DPBitValueRecorder alloc] initWithKey:keyCopy];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v14;
  v23 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
  v24 = 1;
  if (v23)
  {
    v25 = v23;
    v26 = *v43;
    while (2)
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v43 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = [self findBucketIndexForIntValue:objc_msgSend(*(*(&v42 + 1) + 8 * j) minValue:"intValue") maxValue:value numBucket:{maxValue, v10}];
        v29 = malloc_type_calloc(v10, 1uLL, 0x100004077774924uLL);
        v29[v28] = 1;
        v30 = [NSData dataWithBytesNoCopy:v29 length:v10 freeWhenDone:1];
        v50 = v30;
        v31 = [NSArray arrayWithObjects:&v50 count:1];
        v32 = [v37 recordBitVectors:v31 metadata:metadataCopy];

        if ((v32 & 1) == 0)
        {
          v34 = +[_PFLLog extension];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_10001C74C(keyCopy, v34);
          }

          v33 = 0;
          v24 = 0;
          goto LABEL_35;
        }
      }

      v25 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }

    v33 = 1;
    v24 = 1;
  }

  else
  {
    v33 = 0;
  }

LABEL_35:

  v21 = v33 & v24;
LABEL_36:

  return v21;
}

+ (BOOL)recordMultipleKeysData:(id)data forBaseKey:(id)key minValue:(int)value maxValue:(int)maxValue numBucket:(unsigned int)bucket metadata:(id)metadata error:(id *)error
{
  dataCopy = data;
  keyCopy = key;
  metadataCopy = metadata;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v12 = dataCopy;
  v13 = [v12 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v47;
    v35 = v12;
    v32 = *v47;
    do
    {
      v17 = 0;
      v33 = v14;
      do
      {
        if (*v47 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v46 + 1) + 8 * v17);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        allKeys = [v18 allKeys];
        v20 = [allKeys countByEnumeratingWithState:&v42 objects:v55 count:16];
        if (v20)
        {
          v21 = v20;
          v34 = v17;
          v22 = *v43;
          obj = allKeys;
          while (2)
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v43 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v42 + 1) + 8 * i);
              v25 = [NSString stringWithFormat:@"%@.%@", keyCopy, v24];
              v26 = [v18 objectForKey:v24];
              v27 = objc_opt_class();
              v54 = v26;
              v28 = [NSArray arrayWithObjects:&v54 count:1];
              LOBYTE(v27) = [v27 recordData:v28 forKey:v25 minValue:value maxValue:maxValue numBucket:bucket metadata:metadataCopy error:error];

              if ((v27 & 1) == 0)
              {
                v29 = +[_PFLLog extension];
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v31 = [v18 objectForKeyedSubscript:v24];
                  *buf = 138412546;
                  v51 = v31;
                  v52 = 2112;
                  v53 = v25;
                  _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to record: %@ for key: %@", buf, 0x16u);
                }

                v15 = 0;
                v12 = v35;
                goto LABEL_22;
              }
            }

            allKeys = obj;
            v21 = [obj countByEnumeratingWithState:&v42 objects:v55 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }

          v15 = 1;
          v17 = v34;
          v12 = v35;
          v16 = v32;
          v14 = v33;
        }

        v17 = v17 + 1;
      }

      while (v17 != v14);
      v14 = [v12 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

LABEL_22:

  return v15 & 1;
}

+ (unsigned)findBucketIndexForIntValue:(int)value minValue:(int)minValue maxValue:(int)maxValue numBucket:(unsigned int)bucket
{
  if (value >= minValue)
  {
    v6 = bucket - 1;
    if (value < maxValue)
    {
      v6 = (floor((value - minValue) / ((maxValue - minValue) / (bucket - 2))) + 1.0);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v6 >= bucket)
  {
    return bucket - 1;
  }

  else
  {
    return v6;
  }
}

@end