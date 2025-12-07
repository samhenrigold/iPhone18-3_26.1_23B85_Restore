@interface HMIJSONUnarchiver
+ (id)objectWithJSONData:(id)data classMap:(id)map;
+ (id)objectWithJSONObject:(id)object classMap:(id)map;
+ (id)objectWithJSONObjectString:(id)string classMap:(id)map;
- (BOOL)decodeBoolForKey:(id)key;
- (HMIJSONUnarchiver)initWithJSONObject:(id)object;
- (double)decodeDoubleForKey:(id)key;
- (id)_objectWithJSONObject:(id)object allowedClasses:(id)classes;
- (id)decodeObjectOfClass:(Class)class forKey:(id)key;
- (id)decodeObjectOfClasses:(id)classes forKey:(id)key;
- (int)decodeInt32ForKey:(id)key;
- (int64_t)decodeInt64ForKey:(id)key;
@end

@implementation HMIJSONUnarchiver

- (HMIJSONUnarchiver)initWithJSONObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = HMIJSONUnarchiver;
  v6 = [(HMIJSONUnarchiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, object);
  }

  return v7;
}

- (BOOL)decodeBoolForKey:(id)key
{
  v3 = [self->_container objectForKeyedSubscript:?];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (int)decodeInt32ForKey:(id)key
{
  v3 = [self->_container objectForKeyedSubscript:?];
  intValue = [v3 intValue];

  return intValue;
}

- (int64_t)decodeInt64ForKey:(id)key
{
  v3 = [self->_container objectForKeyedSubscript:?];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (double)decodeDoubleForKey:(id)key
{
  v3 = [self->_container objectForKeyedSubscript:?];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (id)_objectWithJSONObject:(id)object allowedClasses:(id)classes
{
  objectCopy = object;
  classesCopy = classes;
  if (!objectCopy)
  {
    v11 = 0;
    goto LABEL_23;
  }

  null = [MEMORY[0x277CBEB68] null];

  if (null == objectCopy)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objectCopy;
    if (![v9 hasPrefix:?] || (objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEA90], "dataWithContentsOfURL:"), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
    {
      if (![v9 hasSuffix:?] || (v12 = objc_alloc_init(MEMORY[0x277CCAA68]), objc_msgSend(v12, "dateFromString:"), v11 = objc_claimAutoreleasedReturnValue(), v12, !v11))
      {
        v11 = v9;
      }
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_11:
    v11 = objectCopy;
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = classesCopy;
    v11 = [objectCopy na_map:?];

    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = MEMORY[0x277CBEAD8];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:objc_opt_class()];
    v22 = [v20 exceptionWithName:? reason:? userInfo:?];
    v23 = v22;

    objc_exception_throw(v22);
  }

  v9 = objectCopy;
  v13 = [v9 objectForKeyedSubscript:?];
  if (v13)
  {
    classMap = [(HMIJSONUnarchiver *)self classMap];
    v15 = [classMap objectForKeyedSubscript:?];

    if (!v15)
    {
      v16 = NSClassFromString(v13);
      if (!v16)
      {
        v24 = MEMORY[0x277CBEAD8];
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:v13];
        v26 = [v24 exceptionWithName:? reason:? userInfo:?];
        v27 = v26;

        objc_exception_throw(v26);
      }

      v15 = v16;
    }

    v17 = [[HMIJSONUnarchiver alloc] initWithJSONObject:?];
    classMap2 = [(HMIJSONUnarchiver *)self classMap];
    [(HMIJSONUnarchiver *)v17 setClassMap:?];

    v11 = [[v15 alloc] initWithCoder:?];
  }

  else
  {
    v28 = classesCopy;
    v11 = [v9 na_dictionaryByMappingValues:?];
  }

LABEL_22:
LABEL_23:

  return v11;
}

- (id)decodeObjectOfClass:(Class)class forKey:(id)key
{
  v5 = [self->_container objectForKeyedSubscript:?];
  v6 = [MEMORY[0x277CBEB98] setWithObject:?];
  v7 = [HMIJSONUnarchiver _objectWithJSONObject:"_objectWithJSONObject:allowedClasses:" allowedClasses:?];

  return v7;
}

- (id)decodeObjectOfClasses:(id)classes forKey:(id)key
{
  container = self->_container;
  classesCopy = classes;
  v7 = [container objectForKeyedSubscript:?];
  v8 = [HMIJSONUnarchiver _objectWithJSONObject:"_objectWithJSONObject:allowedClasses:" allowedClasses:?];

  return v8;
}

+ (id)objectWithJSONObject:(id)object classMap:(id)map
{
  mapCopy = map;
  objectCopy = object;
  v7 = objc_alloc_init(HMIJSONUnarchiver);
  [(HMIJSONUnarchiver *)v7 setClassMap:?];

  v8 = [HMIJSONUnarchiver _objectWithJSONObject:v7 allowedClasses:"_objectWithJSONObject:allowedClasses:"];

  return v8;
}

+ (id)objectWithJSONObjectString:(id)string classMap:(id)map
{
  mapCopy = map;
  v7 = [string dataUsingEncoding:?];
  v8 = [self objectWithJSONData:? classMap:?];

  return v8;
}

+ (id)objectWithJSONData:(id)data classMap:(id)map
{
  dataCopy = data;
  mapCopy = map;
  v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:? options:? error:?];
  v9 = 0;
  if (!v8)
  {
    v12 = MEMORY[0x277CBEAD8];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:v9];
    v14 = [v12 exceptionWithName:? reason:? userInfo:?];
    v15 = v14;

    objc_exception_throw(v14);
  }

  v10 = [self objectWithJSONObject:? classMap:?];

  return v10;
}

@end