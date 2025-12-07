@interface ASDTRawProperty
- (ASDTRawProperty)initWithConfig:(id)config;
- (BOOL)storePropertyValue:(id)value;
@end

@implementation ASDTRawProperty

- (ASDTRawProperty)initWithConfig:(id)config
{
  configCopy = config;
  v13.receiver = self;
  v13.super_class = ASDTRawProperty;
  v5 = [(ASDTCustomProperty *)&v13 initWithConfig:configCopy propertyDataType:1918990199 qualifierDataType:0];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_4;
  }

  [(ASDTCustomProperty *)v5 setCacheMode:2];
  asdtPropertyValue = [configCopy asdtPropertyValue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [(ASDTRawProperty *)v6 storePropertyValue:asdtPropertyValue];

LABEL_4:
    v10 = v6;
    goto LABEL_8;
  }

  v11 = ASDTBaseLogType(isKindOfClass, v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(ASDTRawProperty *)v6 initWithConfig:v11];
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (BOOL)storePropertyValue:(id)value
{
  valueCopy = value;
  -[ASDTCustomProperty setPropertyValueSize:](self, "setPropertyValueSize:", [valueCopy length]);
  v6.receiver = self;
  v6.super_class = ASDTRawProperty;
  LOBYTE(self) = [(ASDTCustomProperty *)&v6 storePropertyValue:valueCopy];

  return self;
}

- (void)initWithConfig:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 name];
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = @"Value";
  _os_log_error_impl(&dword_241659000, a2, OS_LOG_TYPE_ERROR, "%@: Key %@ must specify an NSData object.", &v4, 0x16u);
}

@end