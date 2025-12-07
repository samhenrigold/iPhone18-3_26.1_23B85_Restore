@interface CADSequenceToken
- (BOOL)isEqual:(id)equal;
- (CADSequenceToken)initWithAllDBSequenceMap:(id)map;
- (CADSequenceToken)initWithCoder:(id)coder;
- (CADSequenceToken)initWithMainDBSequence:(int)sequence;
- (CADSequenceToken)initWithSerializedSequenceString:(id)string;
- (id)description;
- (id)serializedSequenceString;
- (int)mainDBSequence;
- (int)sequenceForDatabaseID:(int)d;
@end

@implementation CADSequenceToken

- (CADSequenceToken)initWithMainDBSequence:(int)sequence
{
  v3 = *&sequence;
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*MEMORY[0x277CF7570]];
  v10 = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(CADSequenceToken *)self initWithAllDBSequenceMap:v7];

  return v8;
}

- (CADSequenceToken)initWithAllDBSequenceMap:(id)map
{
  mapCopy = map;
  v9.receiver = self;
  v9.super_class = CADSequenceToken;
  v6 = [(CADSequenceToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_allDBSequenceMap, map);
  }

  return v7;
}

- (CADSequenceToken)initWithSerializedSequenceString:(id)string
{
  stringCopy = string;
  if ([stringCopy containsString:@"|"])
  {
    v5 = [stringCopy componentsSeparatedByString:@"|"];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if ([v5 count] >= 2)
    {
      selfCopy = self;
      v24 = stringCopy;
      v6 = [v5 objectAtIndexedSubscript:0];
      v7 = [v6 componentsSeparatedByString:{@", "}];

      v22 = v5;
      v8 = [v5 objectAtIndexedSubscript:1];
      v9 = [v8 componentsSeparatedByString:{@", "}];

      v10 = [v7 count];
      v11 = [v9 count];
      if (v10 >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        for (i = 0; i != v12; ++i)
        {
          v14 = [v7 objectAtIndexedSubscript:i];
          if (([v14 isEqual:&stru_2837B4630] & 1) == 0)
          {
            intValue = [v14 intValue];
            v16 = [v9 objectAtIndexedSubscript:i];
            intValue2 = [v16 intValue];

            v18 = [MEMORY[0x277CCABB0] numberWithInt:intValue2];
            v19 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
            [dictionary setObject:v18 forKeyedSubscript:v19];
          }
        }
      }

      self = selfCopy;
      stringCopy = v24;
      v5 = v22;
    }

    v20 = [(CADSequenceToken *)self initWithAllDBSequenceMap:dictionary];
  }

  else
  {
    v20 = -[CADSequenceToken initWithMainDBSequence:](self, "initWithMainDBSequence:", [stringCopy intValue]);
  }

  return v20;
}

- (int)mainDBSequence
{
  allDBSequenceMap = self->_allDBSequenceMap;
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*MEMORY[0x277CF7570]];
  v4 = [(NSDictionary *)allDBSequenceMap objectForKey:v3];

  LODWORD(v3) = [v4 intValue];
  return v3;
}

- (int)sequenceForDatabaseID:(int)d
{
  allDBSequenceMap = self->_allDBSequenceMap;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&d];
  v5 = [(NSDictionary *)allDBSequenceMap objectForKey:v4];

  if (v5)
  {
    intValue = [v5 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

- (CADSequenceToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CADSequenceToken;
  v5 = [(CADSequenceToken *)&v9 init];
  if (v5)
  {
    if (initWithCoder__onceToken != -1)
    {
      [CADSequenceToken initWithCoder:];
    }

    v6 = [coderCopy decodeObjectOfClasses:initWithCoder____whitelistedClasses forKey:@"kAllDBSequenceMapKey"];
    allDBSequenceMap = v5->_allDBSequenceMap;
    v5->_allDBSequenceMap = v6;
  }

  return v5;
}

uint64_t __34__CADSequenceToken_initWithCoder___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = [v0 initWithObjects:{v1, objc_opt_class(), 0}];
  initWithCoder____whitelistedClasses = v2;

  return MEMORY[0x2821F96F8](v2);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  allDBSequenceMap = [(CADSequenceToken *)self allDBSequenceMap];
  allDBSequenceMap2 = [equalCopy allDBSequenceMap];

  LOBYTE(equalCopy) = [allDBSequenceMap isEqualToDictionary:allDBSequenceMap2];
  return equalCopy;
}

- (id)serializedSequenceString
{
  v28 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  allDBSequenceMap = [(CADSequenceToken *)self allDBSequenceMap];
  v5 = [allDBSequenceMap countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(allDBSequenceMap);
        }

        [string appendFormat:@"%@, ", *(*(&v22 + 1) + 8 * i)];
      }

      v6 = [allDBSequenceMap countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  [string appendString:@"|"];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allDBSequenceMap2 = [(CADSequenceToken *)self allDBSequenceMap];
  v10 = [allDBSequenceMap2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(allDBSequenceMap2);
        }

        v14 = *(*(&v18 + 1) + 8 * j);
        allDBSequenceMap3 = [(CADSequenceToken *)self allDBSequenceMap];
        v16 = [allDBSequenceMap3 objectForKey:v14];

        [string appendFormat:@"%@, ", v16];
      }

      v11 = [allDBSequenceMap2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v11);
  }

  return string;
}

- (id)description
{
  selfCopy = self;
  v2 = MEMORY[0x277CCACA8];
  serializedSequenceString = [(CADSequenceToken *)self serializedSequenceString];
  v4 = [v2 stringWithFormat:@"<CADSequenceToken: %p> {%@}", &selfCopy, serializedSequenceString];

  return v4;
}

@end