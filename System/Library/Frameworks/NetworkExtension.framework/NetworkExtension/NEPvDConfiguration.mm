@interface NEPvDConfiguration
- (NSObject)initWithDictionary:(NSObject *)dictionary;
@end

@implementation NEPvDConfiguration

- (NSObject)initWithDictionary:(NSObject *)dictionary
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!dictionary)
  {
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v12 = "[NEPvDConfiguration initWithDictionary:]";
      _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "%s called with null dictionary", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v10.receiver = dictionary;
  v10.super_class = NEPvDConfiguration;
  v5 = [&v10 init];
  if (!v5)
  {
    dictionary = ne_log_obj();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, dictionary, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }

LABEL_12:
    v6 = 0;
    goto LABEL_5;
  }

  v6 = v5;
  v7 = v4;
  dictionary = v6[1].isa;
  v6[1].isa = v7;
LABEL_5:

LABEL_6:
  return v6;
}

@end