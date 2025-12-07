@interface _IDSCurrentServerTimeProvider
- (_IDSCurrentServerTimeProvider)init;
- (unint64_t)serverTimeInNanoSeconds;
@end

@implementation _IDSCurrentServerTimeProvider

- (_IDSCurrentServerTimeProvider)init
{
  v12.receiver = self;
  v12.super_class = _IDSCurrentServerTimeProvider;
  v2 = [(_IDSCurrentServerTimeProvider *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v4 = objc_alloc(sub_1A7CBA720(v2));
    if (qword_1EB2BBBF8 != -1)
    {
      sub_1A7E20B00();
    }

    v5 = qword_1EB2BBBE8;
    v6 = qword_1EB2BBC00;
    if (v5 != -1)
    {
      sub_1A7E20B28();
    }

    v7 = qword_1EB2BBBF0;
    v8 = im_primary_queue();
    v9 = [v4 initWithEnvironmentName:v6 namedDelegatePort:v7 queue:v8];
    apsConnection = v3->_apsConnection;
    v3->_apsConnection = v9;
  }

  return v3;
}

- (unint64_t)serverTimeInNanoSeconds
{
  v2 = sub_1A7CBA720(self);
  if (v2)
  {
    v3 = sub_1A7CBA720(v2);

    return [v3 serverTimeInNanoSeconds];
  }

  else
  {
    v5 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E20B64(v5);
    }

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    v8 = v7;

    return v8;
  }
}

@end