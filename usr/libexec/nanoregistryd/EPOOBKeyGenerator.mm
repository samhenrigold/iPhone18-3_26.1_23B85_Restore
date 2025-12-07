@interface EPOOBKeyGenerator
- (void)clear;
- (void)setKey:(id)key;
@end

@implementation EPOOBKeyGenerator

- (void)setKey:(id)key
{
  keyCopy = key;
  key = self->_key;
  if (key != keyCopy && ([(NSData *)key isEqual:keyCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_key, key);
    ownerDelegate = [(EPResource *)self ownerDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v10 = sub_1000A98C0(v9);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

      if (v11)
      {
        v13 = sub_1000A98C0(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          ownerDelegate2 = [(EPResource *)self ownerDelegate];
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          ownerDelegate3 = [(EPResource *)self ownerDelegate];
          v18 = ownerDelegate3;
          v19 = @"present";
          *v21 = 138412802;
          *&v21[4] = v16;
          if (!keyCopy)
          {
            v19 = @"nil";
          }

          *&v21[12] = 2048;
          *&v21[14] = ownerDelegate3;
          v22 = 2112;
          v23 = v19;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Calling generatorUpdatedKey: on %@[%p] with key %@", v21, 0x20u);
        }
      }

      v20 = [(EPResource *)self ownerDelegate:*v21];
      [v20 generatorUpdatedKey:self];
    }
  }
}

- (void)clear
{
  ownerDelegate = [(EPResource *)self ownerDelegate];
  [ownerDelegate clear];
}

@end