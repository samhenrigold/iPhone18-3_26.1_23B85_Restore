@interface _HVNSStringEncodingEnumerator
- (_HVNSStringEncodingEnumerator)initWithString:(id)string encoding:(unint64_t)encoding nullTerminated:(BOOL)terminated;
- (id)nextObject;
- (id)nullTerminationIfNeeded;
@end

@implementation _HVNSStringEncodingEnumerator

- (id)nextObject
{
  v2 = MEMORY[0x28223BE20](self, a2);
  v3 = v2;
  v15 = *MEMORY[0x277D85DE8];
  v4 = (v2 + 24);
  if (!*(v2 + 32))
  {
    nullTerminationIfNeeded = [v2 nullTerminationIfNeeded];
LABEL_7:
    v6 = nullTerminationIfNeeded;
    goto LABEL_16;
  }

  if (*(v2 + 40) == 1)
  {
    *(v2 + 40) = 0;
    if (bomData__pasOnceToken3 != -1)
    {
      dispatch_once(&bomData__pasOnceToken3, &__block_literal_global_44);
    }

    nullTerminationIfNeeded = bomData__pasExprOnceResult;
    goto LABEL_7;
  }

  v7 = objc_autoreleasePoolPush();
  bzero(v14, 0x1000uLL);
  v13 = 0;
  v12 = 0uLL;
  if ([*(v3 + 8) getBytes:v14 maxLength:4096 usedLength:&v13 encoding:*(v3 + 16) options:0 range:*v4 remainingRange:{v4[1], &v12}])
  {
    if (!*(&v12 + 1))
    {
      v8 = v13;
      if (v13 <= 0xFFF && *(v3 + 41) == 1)
      {
        *(v3 + 41) = 0;
        v13 = v8 + 1;
        v14[v8] = 0;
      }
    }

    *v4 = v12;
    v9 = objc_alloc(MEMORY[0x277CBEA90]);
    nullTerminationIfNeeded2 = [v9 initWithBytes:v14 length:v13];
  }

  else
  {
    nullTerminationIfNeeded2 = [v3 nullTerminationIfNeeded];
  }

  v6 = nullTerminationIfNeeded2;
  objc_autoreleasePoolPop(v7);
LABEL_16:

  return v6;
}

- (id)nullTerminationIfNeeded
{
  if (self->_needsNullTermination)
  {
    self->_needsNullTermination = 0;
    v3 = nullByteData();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_HVNSStringEncodingEnumerator)initWithString:(id)string encoding:(unint64_t)encoding nullTerminated:(BOOL)terminated
{
  stringCopy = string;
  v14.receiver = self;
  v14.super_class = _HVNSStringEncodingEnumerator;
  v10 = [(_HVNSStringEncodingEnumerator *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_string, string);
    v11->_encoding = encoding;
    v12 = [stringCopy length];
    v11->_remaining.location = 0;
    v11->_remaining.length = v12;
    v11->_needsBOM = encoding == 10;
    v11->_needsNullTermination = terminated;
  }

  return v11;
}

@end