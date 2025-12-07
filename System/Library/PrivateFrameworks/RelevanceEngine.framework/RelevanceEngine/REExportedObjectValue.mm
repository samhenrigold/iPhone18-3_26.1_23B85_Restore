@interface REExportedObjectValue
- (BOOL)shouldEncodeProperty:(id)property;
- (REExportedObjectValue)initWithObject:(id)object;
- (id)exportedValueForKey:(id)key;
- (unint64_t)propertyCount;
- (void)enumerateValuesUsingBlock:(id)block;
@end

@implementation REExportedObjectValue

- (REExportedObjectValue)initWithObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = REExportedObjectValue;
  v6 = [(REExportedObjectValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, object);
    v7->_allowsEncoding = objc_opt_respondsToSelector() & 1;
  }

  return v7;
}

- (void)enumerateValuesUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = +[(RESingleton *)REInterfaceCache];
    v6 = objc_opt_class();
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__REExportedObjectValue_enumerateValuesUsingBlock___block_invoke;
    v7[3] = &unk_2785F9DC8;
    v7[4] = self;
    v8 = blockCopy;
    [v5 enumerateExportedPropertiesOfClass:v6 usingBlock:v7];
  }
}

void __51__REExportedObjectValue_enumerateValuesUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  (*(*(a1 + 40) + 16))();
}

- (unint64_t)propertyCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__REExportedObjectValue_propertyCount__block_invoke;
  v4[3] = &unk_2785F9DF0;
  v4[4] = &v5;
  [(REExportedObjectValue *)self enumerateValuesUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)shouldEncodeProperty:(id)property
{
  if (self->_allowsEncoding)
  {
    return [self->_object shouldEncodeProperty:property];
  }

  else
  {
    return 1;
  }
}

- (id)exportedValueForKey:(id)key
{
  keyCopy = key;
  NSSelectorFromString(keyCopy);
  if (objc_opt_respondsToSelector())
  {
    v5 = [self->_object valueForKey:keyCopy];
    if (v5)
    {
      v6 = [REExportedValue exportedValueForObject:v5];

      goto LABEL_7;
    }

    [(REExportedValue *)&v8 exportedValueForKey:keyCopy, self, REExportedObjectValue, exc_buf.receiver, exc_buf.super_class];
  }

  else
  {
    [(REExportedValue *)&exc_buf exportedValueForKey:keyCopy, v8.receiver, v8.super_class, self, REExportedObjectValue];
  }
  v6 = ;
LABEL_7:

  return v6;
}

@end