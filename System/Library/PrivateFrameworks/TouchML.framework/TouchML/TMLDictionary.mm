@interface TMLDictionary
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (TMLDictionary)init;
- (TMLDictionary)initWithDictionary:(id)dictionary;
- (id)union:(id)union;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)set:(id)set value:(id)value;
@end

@implementation TMLDictionary

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  if ([key isEqualToString:@"dictionary"])
  {
    v3 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    if (qword_2806D93D0 != -1)
    {
      sub_26F2017E4();
    }

    v3 = qword_2806D93C8;
  }

  return v3;
}

- (TMLDictionary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(TMLDictionary *)self init];
  if (v5 && [dictionaryCopy count])
  {
    [(NSMutableDictionary *)v5->_dictionary setDictionary:dictionaryCopy];
  }

  return v5;
}

- (TMLDictionary)init
{
  v6.receiver = self;
  v6.super_class = TMLDictionary;
  v2 = [(TMLDictionary *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dictionary = v2->_dictionary;
    v2->_dictionary = v3;
  }

  return v2;
}

- (void)set:(id)set value:(id)value
{
  v11[1] = *MEMORY[0x277D85DE8];
  setCopy = set;
  valueCopy = value;
  v8 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:setCopy];
  v9 = v8;
  if (v8 != valueCopy && ([v8 isEqual:valueCopy] & 1) == 0)
  {
    [(TMLDictionary *)self willChangeValueForKey:@"dictionary"];
    [(NSMutableDictionary *)self->_dictionary setObject:valueCopy forKeyedSubscript:setCopy];
    [(TMLDictionary *)self didChangeValueForKey:@"dictionary"];
    v11[0] = setCopy;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [self emitTMLSignal:@"modified" withArguments:v10];
  }
}

- (id)union:(id)union
{
  dictionary = self->_dictionary;
  unionCopy = union;
  v5 = [(NSMutableDictionary *)dictionary mutableCopy];
  [v5 addEntriesFromDictionary:unionCopy];

  return v5;
}

- (void)removeObjectForKey:(id)key
{
  v6[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  [(TMLDictionary *)self willChangeValueForKey:@"dictionary"];
  [(NSMutableDictionary *)self->_dictionary removeObjectForKey:keyCopy];
  [(TMLDictionary *)self didChangeValueForKey:@"dictionary"];
  v6[0] = keyCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  [self emitTMLSignal:@"modified" withArguments:v5];
}

- (void)removeAllObjects
{
  [(TMLDictionary *)self willChangeValueForKey:@"dictionary"];
  [(NSMutableDictionary *)self->_dictionary removeAllObjects];
  [(TMLDictionary *)self didChangeValueForKey:@"dictionary"];

  [self emitTMLSignal:@"modified" withArguments:0];
}

@end