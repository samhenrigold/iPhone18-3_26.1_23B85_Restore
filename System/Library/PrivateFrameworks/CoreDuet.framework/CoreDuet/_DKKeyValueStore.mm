@interface _DKKeyValueStore
+ (id)standardUserDefaultsKeyValueStore;
- (BOOL)BOOLForKey:(id)key;
- (_DKKeyValueStore)initWithSimpleKeyValueStore:(id)store;
- (id)arrayForKey:(id)key;
- (id)dataForKey:(id)key;
- (id)dateForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)numberForKey:(id)key;
- (id)objectForKey:(id)key havingClass:(Class)class;
- (id)stringForKey:(id)key;
- (void)setBool:(BOOL)bool forKey:(id)key;
@end

@implementation _DKKeyValueStore

- (_DKKeyValueStore)initWithSimpleKeyValueStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = _DKKeyValueStore;
  v6 = [(_DKKeyValueStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

+ (id)standardUserDefaultsKeyValueStore
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [[_DKKeyValueStore alloc] initWithSimpleKeyValueStore:standardUserDefaults];

  return v3;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  v5 = [(_DKKeyValueStore *)self objectForKey:keyCopy havingClass:objc_opt_class()];

  return v5;
}

- (BOOL)BOOLForKey:(id)key
{
  v3 = [(_DKKeyValueStore *)self numberForKey:key];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v8 = [v6 numberWithBool:boolCopy];
  [(_DKKeyValueStore *)self setNumber:v8 forKey:keyCopy];
}

- (id)dataForKey:(id)key
{
  keyCopy = key;
  v5 = [(_DKKeyValueStore *)self objectForKey:keyCopy havingClass:objc_opt_class()];

  return v5;
}

- (id)dateForKey:(id)key
{
  keyCopy = key;
  v5 = [(_DKKeyValueStore *)self objectForKey:keyCopy havingClass:objc_opt_class()];

  return v5;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  v5 = [(_DKKeyValueStore *)self objectForKey:keyCopy havingClass:objc_opt_class()];

  return v5;
}

- (id)numberForKey:(id)key
{
  keyCopy = key;
  v5 = [(_DKKeyValueStore *)self objectForKey:keyCopy havingClass:objc_opt_class()];

  return v5;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  v5 = [(_DKKeyValueStore *)self objectForKey:keyCopy havingClass:objc_opt_class()];

  return v5;
}

- (id)objectForKey:(id)key havingClass:(Class)class
{
  v18 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v7 = [(_DKSimpleKeyValueStore *)self->_store objectForKey:keyCopy];
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = objc_opt_class();
    }

    else
    {
      v8 = 0;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 138413058;
      v11 = objc_opt_class();
      v12 = 2112;
      v13 = keyCopy;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      classCopy = class;
      _os_log_error_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@: Object %@ of wrong class, found %@ instead of %@", &v10, 0x2Au);
    }

    v7 = 0;
  }

  return v7;
}

@end