@interface TKSmartCard
- (id)recordsOfObject:(id)object error:(id *)error;
- (id)sendIns:(unsigned __int8)ins p1:(unsigned __int8)p1 p2:(unsigned __int8)p2 request:(id)request expectedTag:(unint64_t)tag sw:(unsigned __int16 *)sw error:(id *)error;
@end

@implementation TKSmartCard

- (id)sendIns:(unsigned __int8)ins p1:(unsigned __int8)p1 p2:(unsigned __int8)p2 request:(id)request expectedTag:(unint64_t)tag sw:(unsigned __int16 *)sw error:(id *)error
{
  p2Copy = p2;
  p1Copy = p1;
  insCopy = ins;
  *sw = 0;
  data = [request data];
  v16 = [(TKSmartCard *)self sendIns:insCopy p1:p1Copy p2:p2Copy data:data le:&off_100008670 sw:sw error:error];

  if ([v16 length])
  {
    v17 = [TKBERTLVRecord recordFromData:v16];
    v18 = [v17 tag];
    if (v18 == tag)
    {
      v19 = v17;
    }

    else
    {
      v21 = sub_1000021D4(v18);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10000374C(tag, v17, v21);
      }

      if (error)
      {
        [NSError errorWithDomain:TKErrorDomain code:-3 userInfo:0];
        *error = v19 = 0;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 0;
    if (error && v16)
    {
      v20 = *sw;
      if (v20 == 27264 || v20 == 36864 || v20 == 27266)
      {
        [NSError errorWithDomain:TKErrorDomain code:-6 userInfo:0];
        *error = v19 = 0;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  return v19;
}

- (id)recordsOfObject:(id)object error:(id *)error
{
  objectCopy = object;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = sub_1000021D4(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000037E8();
    }

    v9 = [[TKBERTLVRecord alloc] initWithTag:92 value:objectCopy];
    v17 = 0;
    v10 = [(TKSmartCard *)self sendIns:203 p1:63 p2:255 request:v9 expectedTag:83 sw:&v17 error:error];
    v11 = v10;
    if (v10)
    {
      value = [v10 value];
      v13 = [TKBERTLVRecord sequenceOfRecordsFromData:value];

      if (!v13)
      {
        v15 = sub_1000021D4(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10000385C();
        }

        if (error)
        {
          *error = [NSError errorWithDomain:TKErrorDomain code:-3 userInfo:0];
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else if (error)
  {
    [NSError errorWithDomain:TKErrorDomain code:-6 userInfo:0];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end