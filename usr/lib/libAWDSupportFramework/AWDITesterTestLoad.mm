@interface AWDITesterTestLoad
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTestNames:(id)names;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDITesterTestLoad

- (void)dealloc
{
  [(AWDITesterTestLoad *)self setTestNames:0];
  v3.receiver = self;
  v3.super_class = AWDITesterTestLoad;
  [(AWDITesterTestLoad *)&v3 dealloc];
}

- (void)addTestNames:(id)names
{
  testNames = self->_testNames;
  if (!testNames)
  {
    testNames = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_testNames = testNames;
  }

  [(NSMutableArray *)testNames addObject:names];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDITesterTestLoad;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDITesterTestLoad description](&v3, sel_description), -[AWDITesterTestLoad dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  testNames = self->_testNames;
  if (testNames)
  {
    [dictionary setObject:testNames forKey:@"testNames"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v14 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  testNames = self->_testNames;
  v5 = [(NSMutableArray *)testNames countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(testNames);
        }

        PBDataWriterWriteStringField();
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)testNames countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 24) |= 1u;
  }

  if ([(AWDITesterTestLoad *)self testNamesCount])
  {
    [to clearTestNames];
    testNamesCount = [(AWDITesterTestLoad *)self testNamesCount];
    if (testNamesCount)
    {
      v6 = testNamesCount;
      for (i = 0; i != v6; ++i)
      {
        [to addTestNames:{-[AWDITesterTestLoad testNamesAtIndex:](self, "testNamesAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 24) |= 1u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  testNames = self->_testNames;
  v8 = [(NSMutableArray *)testNames countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(testNames);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) copyWithZone:zone];
        [v6 addTestNames:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)testNames countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 24) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_9;
      }
    }

    else if (*(equal + 24))
    {
LABEL_9:
      LOBYTE(v5) = 0;
      return v5;
    }

    testNames = self->_testNames;
    if (testNames | *(equal + 2))
    {

      LOBYTE(v5) = [(NSMutableArray *)testNames isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
  }

  else
  {
    v2 = 0;
  }

  return [(NSMutableArray *)self->_testNames hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(from + 24))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = *(from + 2);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(AWDITesterTestLoad *)self addTestNames:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end