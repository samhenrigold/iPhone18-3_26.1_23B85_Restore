@interface HMIJSONArchiver
+ (id)JSONObjectStringWithObject:(id)object pretty:(BOOL)pretty options:(int64_t)options;
+ (id)JSONObjectWithObject:(id)object options:(int64_t)options;
- (HMIJSONArchiver)init;
- (HMIJSONArchiver)initWithArray;
- (HMIJSONArchiver)initWithDictionary;
- (NSString)objectJSON;
- (NSString)objectPrettyJSON;
- (id)_JSONObjectWithObject:(id)object options:(int64_t)options;
- (id)_valueForNumber:(id)number;
- (void)_addClassToContainer:(Class)container;
- (void)_addValueToContainer:(id)container forKey:(id)key;
- (void)encodeBool:(BOOL)bool forKey:(id)key;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeInt32:(int)int32 forKey:(id)key;
- (void)encodeInt64:(int64_t)int64 forKey:(id)key;
- (void)encodeObject:(id)object forKey:(id)key;
@end

@implementation HMIJSONArchiver

- (HMIJSONArchiver)init
{
  v6.receiver = self;
  v6.super_class = HMIJSONArchiver;
  v2 = [(HMIJSONArchiver *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    container = v2->_container;
    v2->_container = array;

    v2->_options = 0;
  }

  return v2;
}

- (HMIJSONArchiver)initWithArray
{
  v6.receiver = self;
  v6.super_class = HMIJSONArchiver;
  v2 = [(HMIJSONArchiver *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    container = v2->_container;
    v2->_container = array;

    v2->_options = 0;
  }

  return v2;
}

- (HMIJSONArchiver)initWithDictionary
{
  v6.receiver = self;
  v6.super_class = HMIJSONArchiver;
  v2 = [(HMIJSONArchiver *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    container = v2->_container;
    v2->_container = dictionary;

    v2->_options = 0;
  }

  return v2;
}

- (void)_addClassToContainer:(Class)container
{
  v4 = NSStringFromClass(container);
  [HMIJSONArchiver _addValueToContainer:"_addValueToContainer:forKey:" forKey:?];
}

- (void)_addValueToContainer:(id)container forKey:(id)key
{
  containerCopy = container;
  keyCopy = key;
  if ([(HMIJSONArchiver *)self _containerIsArray])
  {
    [self->_container addObject:?];
  }

  else if (containerCopy)
  {
    [self->_container setValue:? forKey:?];
  }
}

- (id)_JSONObjectWithObject:(id)object options:(int64_t)options
{
  optionsCopy = options;
  objectCopy = object;
  if (!objectCopy)
  {
    goto LABEL_12;
  }

  null = [MEMORY[0x277CBEB68] null];

  if (null == objectCopy)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        null2 = [(HMIJSONArchiver *)self _valueForNumber:?];
        goto LABEL_16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        initWithDictionary = objc_alloc_init(MEMORY[0x277CCAA68]);
        object = [(HMIJSONArchiver *)initWithDictionary stringFromDate:?];
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_12:
        v11 = 0;
        goto LABEL_17;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          null2 = [objectCopy na_map:?];
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          null2 = [objectCopy na_dictionaryByMappingValues:?];
          goto LABEL_16;
        }

        initWithDictionary = [[HMIJSONArchiver alloc] initWithDictionary];
        [(HMIJSONArchiver *)initWithDictionary setOptions:?];
        objc_opt_class();
        [(HMIJSONArchiver *)initWithDictionary _addClassToContainer:?];
        [objectCopy encodeWithCoder:?];
        object = [(HMIJSONArchiver *)initWithDictionary object];
LABEL_10:
        v11 = object;

        goto LABEL_17;
      }

      if (optionsCopy)
      {
        initWithDictionary = [objectCopy base64EncodedStringWithOptions:?];
        object = [MEMORY[0x277CCACA8] stringWithFormat:initWithDictionary];
        goto LABEL_10;
      }

LABEL_15:
      null2 = [MEMORY[0x277CBEB68] null];
      goto LABEL_16;
    }
  }

  null2 = objectCopy;
LABEL_16:
  v11 = null2;
LABEL_17:

  return v11;
}

- (void)encodeInt32:(int)int32 forKey:(id)key
{
  v5 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v7 = [v5 numberWithInt:?];
  [HMIJSONArchiver _addValueToContainer:"_addValueToContainer:forKey:" forKey:?];
}

- (void)encodeInt64:(int64_t)int64 forKey:(id)key
{
  v5 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v7 = [v5 numberWithLongLong:?];
  [HMIJSONArchiver _addValueToContainer:"_addValueToContainer:forKey:" forKey:?];
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  v5 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v5 numberWithDouble:?];
  v7 = [(HMIJSONArchiver *)self _valueForNumber:?];
  [HMIJSONArchiver _addValueToContainer:"_addValueToContainer:forKey:" forKey:?];
}

- (void)encodeBool:(BOOL)bool forKey:(id)key
{
  v5 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v7 = [v5 numberWithBool:?];
  [HMIJSONArchiver _addValueToContainer:"_addValueToContainer:forKey:" forKey:?];
}

- (id)_valueForNumber:(id)number
{
  v3 = MEMORY[0x277CCA980];
  v4 = MEMORY[0x277CCACA8];
  [number floatValue];
  v6 = [v4 stringWithFormat:v5];
  v7 = [v3 decimalNumberWithString:?];

  return v7;
}

- (void)encodeObject:(id)object forKey:(id)key
{
  keyCopy = key;
  v6 = [HMIJSONArchiver _JSONObjectWithObject:"_JSONObjectWithObject:options:" options:?];
  [HMIJSONArchiver _addValueToContainer:"_addValueToContainer:forKey:" forKey:?];
}

- (NSString)objectJSON
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = MEMORY[0x277CCAAA0];
  object = [(HMIJSONArchiver *)self object];
  v6 = [v4 dataWithJSONObject:? options:? error:?];
  v7 = [v3 initWithData:? encoding:?];

  return v7;
}

- (NSString)objectPrettyJSON
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = MEMORY[0x277CCAAA0];
  object = [(HMIJSONArchiver *)self object];
  v6 = [v4 dataWithJSONObject:? options:? error:?];
  v7 = [v3 initWithData:? encoding:?];

  return v7;
}

+ (id)JSONObjectWithObject:(id)object options:(int64_t)options
{
  objectCopy = object;
  v5 = objc_alloc_init(HMIJSONArchiver);
  [(HMIJSONArchiver *)v5 setOptions:?];
  v6 = [HMIJSONArchiver _JSONObjectWithObject:v5 options:"_JSONObjectWithObject:options:"];

  return v6;
}

+ (id)JSONObjectStringWithObject:(id)object pretty:(BOOL)pretty options:(int64_t)options
{
  v5 = [self JSONObjectWithObject:? options:?];
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:? options:? error:?];
  v8 = [v6 initWithData:? encoding:?];

  return v8;
}

@end