@interface WBSPasswordBreachBloomFilter
- (BOOL)_getBucketAtIndex:(unsigned int)index;
- (BOOL)containsData:(id)data;
- (BOOL)containsLowercaseHexStringForData:(id)data;
- (NSData)serializedRepresentation;
- (WBSPasswordBreachBloomFilter)initWithCapacity:(unsigned int)capacity errorDenominator:(unsigned int)denominator bucketData:(id)data;
- (WBSPasswordBreachBloomFilter)initWithSerializedRepresentation:(id)representation;
- (id)description;
- (void)_enumerateBucketIndexesForData:(id)data withBlock:(id)block;
- (void)addData:(id)data;
@end

@implementation WBSPasswordBreachBloomFilter

- (WBSPasswordBreachBloomFilter)initWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  if ([representationCopy length] >= 0xD)
  {
    v6 = objc_alloc(MEMORY[0x1E695DF48]);
    v7 = [representationCopy subdataWithRange:{0, 12}];
    v8 = [v6 initWithData:v7];

    [v8 open];
    v28 = 0;
    v9 = [v8 safari_readNetworkOrderUInt16:&v28];
    if (v9)
    {
      if (v28 == 45326)
      {
        v27 = 0;
        v11 = [v8 safari_readNetworkOrderUInt16:&v27];
        if (v11)
        {
          if (v27 == 1)
          {
            v26 = 0;
            v13 = [v8 safari_readNetworkOrderUInt32:&v26];
            if (v13)
            {
              v25 = 0;
              v15 = [v8 safari_readNetworkOrderUInt32:&v25];
              if (v15)
              {
                v17 = [representationCopy subdataWithRange:{12, objc_msgSend(representationCopy, "length") - 12}];
                self = [(WBSPasswordBreachBloomFilter *)self initWithCapacity:v25 errorDenominator:v26 bucketData:v17];

                selfCopy = self;
LABEL_23:

                goto LABEL_24;
              }

              v23 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v15, v16);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                [WBSPasswordBreachBloomFilter initWithSerializedRepresentation:];
              }
            }

            else
            {
              v22 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v13, v14);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                [WBSPasswordBreachBloomFilter initWithSerializedRepresentation:];
              }
            }
          }

          else
          {
            v21 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v11, v12);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [(WBSPasswordBreachBloomFilter *)&v27 initWithSerializedRepresentation:v21];
            }
          }
        }

        else
        {
          v20 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v11, v12);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [WBSPasswordBreachBloomFilter initWithSerializedRepresentation:];
          }
        }
      }

      else
      {
        v19 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v9, v10);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [(WBSPasswordBreachBloomFilter *)&v28 initWithSerializedRepresentation:v19];
        }
      }
    }

    else
    {
      v18 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v9, v10);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [WBSPasswordBreachBloomFilter initWithSerializedRepresentation:];
      }
    }

    selfCopy = 0;
    goto LABEL_23;
  }

  selfCopy = 0;
LABEL_24:

  return selfCopy;
}

- (WBSPasswordBreachBloomFilter)initWithCapacity:(unsigned int)capacity errorDenominator:(unsigned int)denominator bucketData:(id)data
{
  dataCopy = data;
  v26.receiver = self;
  v26.super_class = WBSPasswordBreachBloomFilter;
  v9 = [(WBSPasswordBreachBloomFilter *)&v26 init];
  v11 = v9;
  if (!v9)
  {
LABEL_15:
    v23 = 0;
    goto LABEL_16;
  }

  if (!capacity)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v9, v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachBloomFilter initWithCapacity:errorDenominator:bucketData:];
    }

    goto LABEL_15;
  }

  if (denominator <= 1)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachBloomFilter initWithCapacity:errorDenominator:bucketData:];
    }

    goto LABEL_15;
  }

  v9->_capacity = capacity;
  v9->_errorDenominator = denominator;
  v14 = (log(1.0 / denominator) * capacity / -0.480453014);
  v11->_hashCount = vcvtpd_u64_f64(v14 / capacity * 0.693147181);
  v11->_bucketCount = v14;
  v15 = vcvtpd_u64_f64(vcvtd_n_f64_u32(v14, 3uLL));
  if (dataCopy)
  {
    v16 = [dataCopy length];
    if (v16 != v15)
    {
      v24 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v16, v17);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [WBSPasswordBreachBloomFilter initWithCapacity:errorDenominator:bucketData:];
      }

      goto LABEL_15;
    }

    v18 = [dataCopy copy];
    bucketData = v11->_bucketData;
    v11->_bucketData = v18;
  }

  else
  {
    v20 = malloc_type_calloc(v15, 1uLL, 0x100004077774924uLL);
    v21 = [MEMORY[0x1E695DEF0] dataWithBytes:v20 length:v15];
    v22 = v11->_bucketData;
    v11->_bucketData = v21;

    free(v20);
  }

  v23 = v11;
LABEL_16:

  return v23;
}

- (BOOL)_getBucketAtIndex:(unsigned int)index
{
  v3 = index & 7;
  v6 = 0;
  [(NSData *)self->_bucketData getBytes:&v6 range:index >> 3, 1];
  return (v6 >> v3) & 1;
}

- (void)_enumerateBucketIndexesForData:(id)data withBlock:(id)block
{
  dataCopy = data;
  blockCopy = block;
  v8 = WBSPasswordBreachMurmur3HashWithSeed(dataCopy, 0);
  v9 = WBSPasswordBreachMurmur3HashWithSeed(dataCopy, v8);
  v12 = 0;
  if (self->_hashCount)
  {
    v10 = v9;
    v11 = 0;
    do
    {
      blockCopy[2](blockCopy, v8 % self->_bucketCount, &v12);
      if (v12 == 1)
      {
        break;
      }

      ++v11;
      v8 += v10;
    }

    while (v11 < self->_hashCount);
  }
}

- (void)addData:(id)data
{
  bucketData = self->_bucketData;
  dataCopy = data;
  v6 = [(NSData *)bucketData mutableCopy];
  mutableBytes = [(NSData *)v6 mutableBytes];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__WBSPasswordBreachBloomFilter_addData___block_invoke;
  v10[3] = &unk_1E7CF2FF8;
  v10[4] = self;
  v10[5] = mutableBytes;
  [(WBSPasswordBreachBloomFilter *)self _enumerateBucketIndexesForData:dataCopy withBlock:v10];

  v8 = self->_bucketData;
  self->_bucketData = v6;
  v9 = v6;
}

- (BOOL)containsData:(id)data
{
  dataCopy = data;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__WBSPasswordBreachBloomFilter_containsData___block_invoke;
  v6[3] = &unk_1E7CF3020;
  v6[4] = self;
  v6[5] = &v7;
  [(WBSPasswordBreachBloomFilter *)self _enumerateBucketIndexesForData:dataCopy withBlock:v6];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

void *__45__WBSPasswordBreachBloomFilter_containsData___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) _getBucketAtIndex:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (BOOL)containsLowercaseHexStringForData:(id)data
{
  v4 = [MEMORY[0x1E696AEC0] safari_stringAsHexWithData:data];
  lowercaseString = [v4 lowercaseString];

  v6 = [lowercaseString dataUsingEncoding:4];
  LOBYTE(self) = [(WBSPasswordBreachBloomFilter *)self containsData:v6];

  return self;
}

- (NSData)serializedRepresentation
{
  initToMemory = [objc_alloc(MEMORY[0x1E695DFC0]) initToMemory];
  [initToMemory open];
  v4 = [initToMemory safari_writeNetworkOrderUInt16:45326];
  if (v4)
  {
    v6 = [initToMemory safari_writeNetworkOrderUInt16:1];
    if (v6)
    {
      v8 = [initToMemory safari_writeNetworkOrderUInt32:self->_errorDenominator];
      if (v8)
      {
        v10 = [initToMemory safari_writeNetworkOrderUInt32:self->_capacity];
        if (v10)
        {
          v12 = [(NSData *)self->_bucketData length];
          v13 = [initToMemory write:-[NSData bytes](self->_bucketData maxLength:{"bytes"), v12}];
          if (v13 == v12)
          {
            [initToMemory close];
            v15 = [initToMemory propertyForKey:*MEMORY[0x1E695DA30]];
            goto LABEL_18;
          }

          v20 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v13, v14);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [WBSPasswordBreachBloomFilter serializedRepresentation];
          }
        }

        else
        {
          v19 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v10, v11);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [WBSPasswordBreachBloomFilter serializedRepresentation];
          }
        }
      }

      else
      {
        v18 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v8, v9);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [WBSPasswordBreachBloomFilter serializedRepresentation];
        }
      }
    }

    else
    {
      v17 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v6, v7);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [WBSPasswordBreachBloomFilter serializedRepresentation];
      }
    }
  }

  else
  {
    v16 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v4, v5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachBloomFilter serializedRepresentation];
    }
  }

  v15 = 0;
LABEL_18:

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p capcity = %u; errorDenominator = %u, hashCount = %lu, bucketCount = %lu>", v5, self, self->_capacity, self->_errorDenominator, self->_hashCount, self->_bucketCount];;

  return v6;
}

- (void)initWithSerializedRepresentation:(unsigned __int16 *)a1 .cold.2(unsigned __int16 *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3[0] = 67240192;
  v3[1] = v2;
  _os_log_error_impl(&dword_1B8447000, a2, OS_LOG_TYPE_ERROR, "Invalid magic number %{public}d.", v3, 8u);
}

- (void)initWithSerializedRepresentation:(unsigned __int16 *)a1 .cold.4(unsigned __int16 *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3[0] = 67240192;
  v3[1] = v2;
  _os_log_error_impl(&dword_1B8447000, a2, OS_LOG_TYPE_ERROR, "Unexpected version number %{public}d.", v3, 8u);
}

@end