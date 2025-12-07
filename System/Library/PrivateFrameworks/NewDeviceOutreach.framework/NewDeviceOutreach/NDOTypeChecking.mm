@interface NDOTypeChecking
+ (BOOL)isNotEmptyString:(id)string;
+ (void)safeAddValue:(id)value forKey:(id)key toDictionary:(id)dictionary;
@end

@implementation NDOTypeChecking

+ (BOOL)isNotEmptyString:(id)string
{
  stringCopy = string;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [stringCopy length] != 0;

  return v4;
}

+ (void)safeAddValue:(id)value forKey:(id)key toDictionary:(id)dictionary
{
  v20 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  dictionaryCopy = dictionary;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v12 = _NDOLogSystem(isKindOfClass);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [NDOTypeChecking safeAddValue:v12 forKey:? toDictionary:?];
    }

    goto LABEL_12;
  }

  v11 = [NDOTypeChecking isNotEmptyString:keyCopy];
  if ((v11 & 1) == 0)
  {
    v12 = _NDOLogSystem(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136446210;
      v17 = "+[NDOTypeChecking safeAddValue:forKey:toDictionary:]";
      v13 = "%{public}s got nil or empty key";
      v14 = v12;
      v15 = 12;
LABEL_11:
      _os_log_impl(&dword_25BD52000, v14, OS_LOG_TYPE_DEFAULT, v13, &v16, v15);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!valueCopy)
  {
    v12 = _NDOLogSystem(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136446466;
      v17 = "+[NDOTypeChecking safeAddValue:forKey:toDictionary:]";
      v18 = 2112;
      v19 = keyCopy;
      v13 = "%{public}s got nil value for key: %@";
      v14 = v12;
      v15 = 22;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  [dictionaryCopy setObject:valueCopy forKey:keyCopy];
LABEL_13:
}

+ (void)safeAddValue:(os_log_t)log forKey:toDictionary:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136446210;
  v2 = "+[NDOTypeChecking safeAddValue:forKey:toDictionary:]";
  _os_log_debug_impl(&dword_25BD52000, log, OS_LOG_TYPE_DEBUG, "%{public}s got non NSMutableDictionary", &v1, 0xCu);
}

@end