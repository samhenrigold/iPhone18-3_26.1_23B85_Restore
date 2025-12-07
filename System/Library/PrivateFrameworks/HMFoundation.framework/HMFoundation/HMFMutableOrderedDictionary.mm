@interface HMFMutableOrderedDictionary
- (HMFMutableOrderedDictionary)initWithCapacity:(unint64_t)capacity;
- (HMFMutableOrderedDictionary)initWithObjects:(id)objects forKeys:(id)keys copyObjects:(BOOL)copyObjects copyKeys:(BOOL)copyKeys;
- (HMFMutableOrderedDictionary)initWithObjects:(id)objects orderedKeySet:(id)set;
- (NSArray)allKeys;
- (NSArray)allValues;
- (id)copyWithZone:(_NSZone *)zone;
- (void)removeObjectForKey:(id)key;
- (void)removeObjectsForKeys:(id)keys;
- (void)setBySortingDictionary:(id)dictionary keyComparator:(id)comparator;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
- (void)setOrderedDictionary:(id)dictionary;
@end

@implementation HMFMutableOrderedDictionary

- (HMFMutableOrderedDictionary)initWithObjects:(id)objects orderedKeySet:(id)set
{
  v5.receiver = self;
  v5.super_class = HMFMutableOrderedDictionary;
  return [(HMFOrderedDictionary *)&v5 initWithObjects:objects orderedKeySet:set];
}

- (HMFMutableOrderedDictionary)initWithObjects:(id)objects forKeys:(id)keys copyObjects:(BOOL)copyObjects copyKeys:(BOOL)copyKeys
{
  copyKeysCopy = copyKeys;
  copyObjectsCopy = copyObjects;
  v10 = MEMORY[0x277CBEB18];
  keysCopy = keys;
  objectsCopy = objects;
  v13 = [v10 alloc];
  v14 = MEMORY[0x277CBEBF8];
  if (objectsCopy)
  {
    v15 = objectsCopy;
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  v16 = [v13 initWithArray:v15 copyItems:copyObjectsCopy];

  v17 = objc_alloc(MEMORY[0x277CBEB40]);
  if (keysCopy)
  {
    v18 = keysCopy;
  }

  else
  {
    v18 = v14;
  }

  v19 = [v17 initWithArray:v18 copyItems:copyKeysCopy];

  v20 = [(HMFMutableOrderedDictionary *)self initWithObjects:v16 orderedKeySet:v19];
  return v20;
}

- (HMFMutableOrderedDictionary)initWithCapacity:(unint64_t)capacity
{
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:capacity];
  v6 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:capacity];
  v7 = [(HMFMutableOrderedDictionary *)self initWithObjects:v5 orderedKeySet:v6];

  return v7;
}

- (NSArray)allKeys
{
  array = [(NSOrderedSet *)self->super._keys array];
  v3 = [array copy];

  return v3;
}

- (NSArray)allValues
{
  v2 = [(NSArray *)self->super._objects copy];

  return v2;
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  keys = self->super._keys;
  objectCopy = object;
  v8 = [(NSOrderedSet *)keys indexOfObject:keyCopy];
  objects = self->super._objects;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSArray *)objects addObject:objectCopy];

    v10 = self->super._keys;
    objectCopy = [keyCopy copyWithZone:0];
    [(NSOrderedSet *)v10 addObject:objectCopy];
  }

  else
  {
    [(NSArray *)objects replaceObjectAtIndex:v8 withObject:objectCopy];
  }
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  if (object)
  {
    [(HMFMutableOrderedDictionary *)self setObject:object forKey:subscript];
  }

  else
  {
    [(HMFMutableOrderedDictionary *)self removeObjectForKey:subscript];
  }
}

- (void)removeObjectForKey:(id)key
{
  v4 = [(NSOrderedSet *)self->super._keys indexOfObject:key];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    [(NSArray *)self->super._objects removeObjectAtIndex:v4];
    keys = self->super._keys;

    [(NSOrderedSet *)keys removeObjectAtIndex:v5];
  }
}

- (void)removeObjectsForKeys:(id)keys
{
  v18 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v5 = [keysCopy count];
  if (v5 >= 2)
  {
    firstObject = objc_alloc_init(MEMORY[0x277CCAB58]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = keysCopy;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(NSOrderedSet *)self->super._keys indexOfObject:*(*(&v13 + 1) + 8 * v11), v13];
          if (v12 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [firstObject addIndex:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [(NSArray *)self->super._objects removeObjectsAtIndexes:firstObject];
    [(NSOrderedSet *)self->super._keys removeObjectsAtIndexes:firstObject];
    goto LABEL_14;
  }

  if (v5)
  {
    firstObject = [keysCopy firstObject];
    [(HMFMutableOrderedDictionary *)self removeObjectForKey:firstObject];
LABEL_14:
  }
}

- (void)setOrderedDictionary:(id)dictionary
{
  objects = self->super._objects;
  v5 = *(dictionary + 1);
  dictionaryCopy = dictionary;
  [(NSArray *)objects setArray:v5];
  [(NSOrderedSet *)self->super._keys removeAllObjects];
  keys = self->super._keys;
  v8 = dictionaryCopy[2];

  [(NSOrderedSet *)keys unionOrderedSet:v8];
}

- (void)setBySortingDictionary:(id)dictionary keyComparator:(id)comparator
{
  v7 = 0;
  v8 = 0;
  sortKeysAndValuesOfDictionary(dictionary, comparator, &v8, &v7);
  v5 = v7;
  [(NSArray *)self->super._objects setArray:v7];
  [(NSOrderedSet *)self->super._keys removeAllObjects];
  v6 = v8;
  [(NSOrderedSet *)self->super._keys addObjectsFromArray:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMFOrderedDictionary alloc];
  v5 = [(NSArray *)self->super._objects copy];
  v6 = [(NSOrderedSet *)self->super._keys copy];
  v7 = [(HMFOrderedDictionary *)v4 initWithObjects:v5 orderedKeySet:v6];

  return v7;
}

@end