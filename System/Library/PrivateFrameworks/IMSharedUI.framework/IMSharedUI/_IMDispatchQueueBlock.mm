@interface _IMDispatchQueueBlock
- (_IMDispatchQueueBlock)initWithBlock:(id)block key:(id)key priority:(int64_t)priority fifo:(unint64_t)fifo;
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation _IMDispatchQueueBlock

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_block(self, a2, v2, v4, v3);
  v12 = objc_msgSend_key(self, v8, v9, v11, v10);
  v17 = objc_msgSend_priority(self, v13, v14, v16, v15);
  v22 = objc_msgSend_fifo(self, v18, v19, v21, v20);
  v29.receiver = self;
  v29.super_class = _IMDispatchQueueBlock;
  v23 = [(_IMDispatchQueueBlock *)&v29 description];
  v27 = objc_msgSend_stringWithFormat_(v6, v24, @"[_IMDispatchQueueBlock block:%@ key:%@ priority:%ld fifo:%ld %@]", v26, v25, v7, v12, v17, v22, v23);

  return v27;
}

- (_IMDispatchQueueBlock)initWithBlock:(id)block key:(id)key priority:(int64_t)priority fifo:(unint64_t)fifo
{
  blockCopy = block;
  keyCopy = key;
  v27.receiver = self;
  v27.super_class = _IMDispatchQueueBlock;
  v12 = [(_IMDispatchQueueBlock *)&v27 init];
  v16 = v12;
  if (v12)
  {
    objc_msgSend_setBlock_(v12, v13, blockCopy, v15, v14);
    objc_msgSend_setKey_(v16, v17, keyCopy, v19, v18);
    objc_msgSend_setPriority_(v16, v20, priority, v22, v21);
    objc_msgSend_setFIFO_(v16, v23, fifo, v25, v24);
  }

  return v16;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v9 = objc_msgSend_priority(self, v5, v6, v8, v7);
  v14 = objc_msgSend_priority(compareCopy, v10, v11, v13, v12);
  if (v9 <= v14)
  {
    if (v9 < v14)
    {
      v19 = 1;
    }

    else
    {
      v20 = objc_msgSend_fifo(self, v15, v16, v18, v17);
      v25 = objc_msgSend_fifo(compareCopy, v21, v22, v24, v23);
      if (v20 >= v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = -1;
      }

      if (v20 > v25)
      {
        v19 = 1;
      }

      else
      {
        v19 = v26;
      }
    }
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

@end