@interface TMLArray
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (TMLArray)init;
- (TMLArray)initWithArray:(id)array;
- (id)get:(unint64_t)get;
- (void)append:(id)append;
- (void)remove:(unint64_t)remove;
- (void)removeAllObjects;
- (void)set:(unint64_t)set value:(id)value;
@end

@implementation TMLArray

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  if ([key isEqualToString:@"array"])
  {
    v3 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    if (qword_2806D91E0 != -1)
    {
      sub_26F200FD4();
    }

    v3 = qword_2806D91D8;
  }

  return v3;
}

- (TMLArray)initWithArray:(id)array
{
  arrayCopy = array;
  v5 = [(TMLArray *)self init];
  if (v5 && [arrayCopy count])
  {
    [(NSMutableArray *)v5->_array addObjectsFromArray:arrayCopy];
  }

  return v5;
}

- (TMLArray)init
{
  v6.receiver = self;
  v6.super_class = TMLArray;
  v2 = [(TMLArray *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    array = v2->_array;
    v2->_array = v3;
  }

  return v2;
}

- (id)get:(unint64_t)get
{
  if ([(NSMutableArray *)self->_array count]<= get)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_array objectAtIndexedSubscript:get];
  }

  return v5;
}

- (void)set:(unint64_t)set value:(id)value
{
  v9[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if ([(NSMutableArray *)self->_array count]<= set)
  {
    if ([(NSMutableArray *)self->_array count]== set)
    {
      [(TMLArray *)self append:valueCopy];
    }
  }

  else
  {
    [(TMLArray *)self willChangeValueForKey:@"array"];
    [(NSMutableArray *)self->_array replaceObjectAtIndex:set withObject:valueCopy];
    [(TMLArray *)self didChangeValueForKey:@"array"];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:set];
    v9[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [self emitTMLSignal:@"modified" withArguments:v8];
  }
}

- (void)append:(id)append
{
  v7[1] = *MEMORY[0x277D85DE8];
  appendCopy = append;
  [(TMLArray *)self willChangeValueForKey:@"array"];
  [(NSMutableArray *)self->_array addObject:appendCopy];

  [(TMLArray *)self didChangeValueForKey:@"array"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableArray count](self->_array, "count") - 1}];
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [self emitTMLSignal:@"modified" withArguments:v6];
}

- (void)remove:(unint64_t)remove
{
  if ([(NSMutableArray *)self->_array count]> remove)
  {
    [(TMLArray *)self willChangeValueForKey:@"array"];
    [(NSMutableArray *)self->_array removeObjectAtIndex:remove];

    [(TMLArray *)self didChangeValueForKey:@"array"];
  }
}

- (void)removeAllObjects
{
  [(TMLArray *)self willChangeValueForKey:@"array"];
  [(NSMutableArray *)self->_array removeAllObjects];

  [(TMLArray *)self didChangeValueForKey:@"array"];
}

@end