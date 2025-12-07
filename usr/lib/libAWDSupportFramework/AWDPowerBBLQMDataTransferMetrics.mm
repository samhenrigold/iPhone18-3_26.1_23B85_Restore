@interface AWDPowerBBLQMDataTransferMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)lQMTransitionCntBucketsAtIndex:(unint64_t)index;
- (void)addLQMBytes:(id)bytes;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDPowerBBLQMDataTransferMetrics

- (void)dealloc
{
  [(AWDPowerBBLQMDataTransferMetrics *)self setLQMBytes:0];
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDPowerBBLQMDataTransferMetrics;
  [(AWDPowerBBLQMDataTransferMetrics *)&v3 dealloc];
}

- (void)addLQMBytes:(id)bytes
{
  lQMBytes = self->_lQMBytes;
  if (!lQMBytes)
  {
    lQMBytes = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_lQMBytes = lQMBytes;
  }

  [(NSMutableArray *)lQMBytes addObject:bytes];
}

- (unsigned)lQMTransitionCntBucketsAtIndex:(unint64_t)index
{
  p_lQMTransitionCntBuckets = &self->_lQMTransitionCntBuckets;
  count = self->_lQMTransitionCntBuckets.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_lQMTransitionCntBuckets->list[index];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDPowerBBLQMDataTransferMetrics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPowerBBLQMDataTransferMetrics description](&v3, sel_description), -[AWDPowerBBLQMDataTransferMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v16 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  if ([(NSMutableArray *)self->_lQMBytes count])
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_lQMBytes, "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    lQMBytes = self->_lQMBytes;
    v6 = [(NSMutableArray *)lQMBytes countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(lQMBytes);
          }

          [v4 addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v7 = [(NSMutableArray *)lQMBytes countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"LQMBytes"];
  }

  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"LQMTransitionCntBuckets"];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  lQMBytes = self->_lQMBytes;
  v5 = [(NSMutableArray *)lQMBytes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(lQMBytes);
        }

        PBDataWriterWriteSubmessage();
      }

      v6 = [(NSMutableArray *)lQMBytes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  p_lQMTransitionCntBuckets = &self->_lQMTransitionCntBuckets;
  if (p_lQMTransitionCntBuckets->count)
  {
    v10 = 0;
    do
    {
      PBDataWriterWriteUint32Field();
      ++v10;
    }

    while (v10 < p_lQMTransitionCntBuckets->count);
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 4) = self->_timestamp;
    *(to + 48) |= 1u;
  }

  if ([(AWDPowerBBLQMDataTransferMetrics *)self lQMBytesCount])
  {
    [to clearLQMBytes];
    lQMBytesCount = [(AWDPowerBBLQMDataTransferMetrics *)self lQMBytesCount];
    if (lQMBytesCount)
    {
      v6 = lQMBytesCount;
      for (i = 0; i != v6; ++i)
      {
        [to addLQMBytes:{-[AWDPowerBBLQMDataTransferMetrics lQMBytesAtIndex:](self, "lQMBytesAtIndex:", i)}];
      }
    }
  }

  if ([(AWDPowerBBLQMDataTransferMetrics *)self lQMTransitionCntBucketsCount])
  {
    [to clearLQMTransitionCntBuckets];
    lQMTransitionCntBucketsCount = [(AWDPowerBBLQMDataTransferMetrics *)self lQMTransitionCntBucketsCount];
    if (lQMTransitionCntBucketsCount)
    {
      v9 = lQMTransitionCntBucketsCount;
      for (j = 0; j != v9; ++j)
      {
        [to addLQMTransitionCntBuckets:{-[AWDPowerBBLQMDataTransferMetrics lQMTransitionCntBucketsAtIndex:](self, "lQMTransitionCntBucketsAtIndex:", j)}];
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
    *(v5 + 32) = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  lQMBytes = self->_lQMBytes;
  v8 = [(NSMutableArray *)lQMBytes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(lQMBytes);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) copyWithZone:zone];
        [v6 addLQMBytes:v12];
      }

      v9 = [(NSMutableArray *)lQMBytes countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  PBRepeatedUInt32Copy();
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (![equal isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  if (*&self->_has)
  {
    if ((*(equal + 48) & 1) == 0 || self->_timestamp != *(equal + 4))
    {
      return 0;
    }
  }

  else if (*(equal + 48))
  {
    return 0;
  }

  lQMBytes = self->_lQMBytes;
  if (lQMBytes | *(equal + 5) && ![(NSMutableArray *)lQMBytes isEqual:?])
  {
    return 0;
  }

  return PBRepeatedUInt32IsEqual();
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

  v3 = [(NSMutableArray *)self->_lQMBytes hash];
  return v3 ^ v2 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x29EDCA608];
  if (*(from + 48))
  {
    self->_timestamp = *(from + 4);
    *&self->_has |= 1u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(from + 5);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDPowerBBLQMDataTransferMetrics *)self addLQMBytes:*(*(&v13 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  lQMTransitionCntBucketsCount = [from lQMTransitionCntBucketsCount];
  if (lQMTransitionCntBucketsCount)
  {
    v11 = lQMTransitionCntBucketsCount;
    for (j = 0; j != v11; ++j)
    {
      -[AWDPowerBBLQMDataTransferMetrics addLQMTransitionCntBuckets:](self, "addLQMTransitionCntBuckets:", [from lQMTransitionCntBucketsAtIndex:j]);
    }
  }
}

@end