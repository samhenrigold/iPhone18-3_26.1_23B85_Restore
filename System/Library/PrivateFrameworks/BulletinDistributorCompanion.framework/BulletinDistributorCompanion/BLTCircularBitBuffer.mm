@interface BLTCircularBitBuffer
- (BLTCircularBitBuffer)initWithCapacity:(unint64_t)capacity;
- (BLTCircularBitBuffer)initWithData:(id)data andIndex:(unint64_t)index;
- (unsigned)bitAtIndex:(unint64_t)index;
- (void)_setBit:(BOOL)bit atIndex:(unint64_t)index;
- (void)clear;
- (void)setBit:(BOOL)bit atIndex:(unint64_t)index;
@end

@implementation BLTCircularBitBuffer

- (BLTCircularBitBuffer)initWithCapacity:(unint64_t)capacity
{
  v9.receiver = self;
  v9.super_class = BLTCircularBitBuffer;
  v4 = [(BLTCircularBitBuffer *)&v9 init];
  if (v4)
  {
    v5 = [objc_opt_class() actualCapacity:capacity];
    v4->_beginIndex = 0;
    v4->_capacity = v5;
    v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v4->_capacity >> 3];
    bitVector = v4->_bitVector;
    v4->_bitVector = v6;
  }

  return v4;
}

- (BLTCircularBitBuffer)initWithData:(id)data andIndex:(unint64_t)index
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = BLTCircularBitBuffer;
  v7 = [(BLTCircularBitBuffer *)&v12 init];
  if (v7)
  {
    v8 = [dataCopy length];
    v7->_beginIndex = index;
    v7->_capacity = 8 * v8;
    v9 = [MEMORY[0x277CBEB28] dataWithData:dataCopy];
    bitVector = v7->_bitVector;
    v7->_bitVector = v9;
  }

  return v7;
}

- (void)_setBit:(BOOL)bit atIndex:(unint64_t)index
{
  indexCopy = index;
  bitCopy = bit;
  v6 = index >> 3;
  bytes = [(NSMutableData *)self->_bitVector bytes];
  v8 = 1 << (indexCopy & 7);
  if (bitCopy)
  {
    v9 = *(bytes + v6) | v8;
  }

  else
  {
    v9 = *(bytes + v6) & ~v8;
  }

  *(bytes + v6) = v9;
}

- (void)setBit:(BOOL)bit atIndex:(unint64_t)index
{
  bitCopy = bit;
  beginIndex = self->_beginIndex;
  capacity = self->_capacity;
  if (capacity - 1 + beginIndex >= index)
  {
    if (beginIndex <= index)
    {
      goto LABEL_19;
    }

    indexCopy2 = index;
    if (beginIndex - index < capacity)
    {
      v10 = index + 1;
      indexCopy2 = index;
      goto LABEL_7;
    }

LABEL_18:
    self->_beginIndex = indexCopy2;
    [(BLTCircularBitBuffer *)self clear];
    goto LABEL_19;
  }

  indexCopy2 = index - (capacity - 1);
  if (indexCopy2 - beginIndex >= capacity)
  {
    goto LABEL_18;
  }

  v10 = capacity + beginIndex;
  beginIndex = index;
LABEL_7:
  v11 = beginIndex % capacity;
  v12 = v10 % capacity;
  self->_beginIndex = indexCopy2;
  if (v10 % capacity != beginIndex % capacity)
  {
    if ((v12 & 7) != 0)
    {
      v13 = (v12 >> 3) + 1;
    }

    else
    {
      v13 = v12 >> 3;
    }

    if (v11 >= v12)
    {
      capacity = beginIndex % capacity;
    }

    v14 = 8 * v13 >= capacity ? capacity : 8 * v13;
    while (v12 < v14)
    {
      [(BLTCircularBitBuffer *)self _setBit:0 atIndex:v12++];
    }

    if (v14 != v11)
    {
      if (v11 >> 3 < v13)
      {
        v16 = [(NSMutableData *)self->_bitVector length];
        bitVector = self->_bitVector;
        v18 = [(NSMutableData *)bitVector length];
        if (v13 < v16)
        {
          [(NSMutableData *)bitVector resetBytesInRange:v13, v18 - v13];
          v19 = self->_bitVector;
          v20 = 0;
          v21 = v11 >> 3;
          goto LABEL_28;
        }

        v13 %= v18;
      }

      v19 = self->_bitVector;
      v21 = (v11 >> 3) - v13;
      v20 = v13;
LABEL_28:
      [(NSMutableData *)v19 resetBytesInRange:v20, v21];
      v22 = v11 & 0xFFFFFFFFFFFFFFF8;
      if ((v11 & 0xFFFFFFFFFFFFFFF8) != v11)
      {
        do
        {
          [(BLTCircularBitBuffer *)self _setBit:0 atIndex:v22++];
        }

        while (v22 < v11);
      }
    }
  }

LABEL_19:
  v15 = index % self->_capacity;

  [(BLTCircularBitBuffer *)self _setBit:bitCopy atIndex:v15];
}

- (unsigned)bitAtIndex:(unint64_t)index
{
  capacity = self->_capacity;
  if (index - self->_beginIndex >= capacity)
  {
    LOBYTE(v5) = 2;
  }

  else
  {
    v4 = index % capacity;
    return (*([(NSMutableData *)self->_bitVector bytes]+ (v4 >> 3)) >> (v4 & 7)) & 1;
  }

  return v5;
}

- (void)clear
{
  bitVector = self->_bitVector;
  v3 = [(NSMutableData *)bitVector length];

  [(NSMutableData *)bitVector resetBytesInRange:0, v3];
}

@end