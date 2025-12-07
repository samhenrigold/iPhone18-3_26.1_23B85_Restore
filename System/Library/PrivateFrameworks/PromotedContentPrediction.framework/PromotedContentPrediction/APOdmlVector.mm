@interface APOdmlVector
- (APOdmlVector)initWithCoder:(id)coder;
- (APOdmlVector)initWithDictionary:(id)dictionary;
- (APOdmlVector)initWithVersion:(id)version andArray:(id)array;
- (APOdmlVector)initWithVersion:(id)version data:(id)data;
- (APOdmlVector)initWithVersion:(id)version length:(unsigned int)length floats:(float *)floats;
- (BOOL)isEqual:(id)equal;
- (NSData)data;
- (float)_createDataPtrFromArray:(id)array;
- (float)dotProduct:(id)product;
- (float)magnitude;
- (id)_initWithVersion:(id)version length:(unsigned int)length rawMallocedFloats:(float *)floats;
- (id)arrayOfNumbers;
- (id)cosineSimilarity:(id)similarity;
- (id)dictionaryRepresentation;
- (id)scalarMultiply:(float)multiply;
- (id)vectorAdd:(id)add;
- (id)vectorSubtract:(id)subtract;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setArrayOfNumber:(id)number;
- (void)setDataPtr:(float *)ptr;
@end

@implementation APOdmlVector

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      version = [(APOdmlVector *)self version];
      version2 = [(APOdmlVector *)v5 version];
      v8 = [version isEqualToString:version2];

      data = [(APOdmlVector *)self data];
      data2 = [(APOdmlVector *)v5 data];
      v11 = [data isEqualToData:data2];

      v12 = [(APOdmlVector *)self length];
      if (v12 == [(APOdmlVector *)v5 length])
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      if (v8)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  version = [(APOdmlVector *)self version];
  v4 = [version hash];
  v5 = [(APOdmlVector *)self length];
  data = [(APOdmlVector *)self data];
  v7 = v4 ^ [data hash];

  return v7 ^ v5;
}

- (APOdmlVector)initWithVersion:(id)version length:(unsigned int)length floats:(float *)floats
{
  v22 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v17.receiver = self;
  v17.super_class = APOdmlVector;
  v10 = [(APOdmlVector *)&v17 init];
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = malloc_type_malloc(4 * length, 0xEF375D3uLL);
  v10->_dataPtr = v11;
  if (v11)
  {
    memcpy(v11, floats, 4 * length);
    v10->_length = length;
    objc_storeStrong(&v10->_version, version);
LABEL_4:
    v12 = v10;
    goto LABEL_8;
  }

  v13 = OdmlLogForCategory(2uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = objc_opt_class();
    *buf = 138412546;
    v19 = v14;
    v20 = 1024;
    v21 = 4 * length;
    v15 = v14;
    _os_log_impl(&dword_260ECB000, v13, OS_LOG_TYPE_ERROR, "[%@] ERROR: Could not alloc space of %ul", buf, 0x12u);
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (APOdmlVector)initWithVersion:(id)version data:(id)data
{
  v22 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = APOdmlVector;
  v9 = [(APOdmlVector *)&v17 init];
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = [dataCopy length];
  v11 = malloc_type_malloc(v10, 0xA5CE0DC7uLL);
  v9->_dataPtr = v11;
  if (v11)
  {
    v9->_length = v10 >> 2;
    objc_storeStrong(&v9->_version, version);
    [dataCopy getBytes:v9->_dataPtr range:{0, v10}];
LABEL_4:
    v12 = v9;
    goto LABEL_8;
  }

  v13 = OdmlLogForCategory(2uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = objc_opt_class();
    *buf = 138412546;
    v19 = v14;
    v20 = 1024;
    v21 = v10;
    v15 = v14;
    _os_log_impl(&dword_260ECB000, v13, OS_LOG_TYPE_ERROR, "[%@] ERROR: Could not alloc space of %ul", buf, 0x12u);
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (APOdmlVector)initWithDictionary:(id)dictionary
{
  v21 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"vector" ofKindOfClass:objc_opt_class()];
  v6 = [dictionaryCopy objectForKey:@"version" ofKindOfClass:objc_opt_class()];
  v7 = [v6 copy];

  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 138413058;
      v14 = objc_opt_class();
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = dictionaryCopy;
      v10 = v14;
      _os_log_impl(&dword_260ECB000, v9, OS_LOG_TYPE_ERROR, "[%@] ERROR: Invalid dictionary\nVersion:\t%@\nVector:\t%@\nDict:\t%@", &v13, 0x2Au);
    }

    selfCopy = 0;
  }

  else
  {
    self = [(APOdmlVector *)self initWithVersion:v7 andArray:v5];
    selfCopy = self;
  }

  return selfCopy;
}

- (APOdmlVector)initWithVersion:(id)version andArray:(id)array
{
  v25 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  arrayCopy = array;
  v18.receiver = self;
  v18.super_class = APOdmlVector;
  v8 = [(APOdmlVector *)&v18 init];
  v9 = v8;
  if (v8 && (v8->_dataPtr = -[APOdmlVector _createDataPtrFromArray:](v8, "_createDataPtrFromArray:", arrayCopy), v9->_length = [arrayCopy count], v10 = objc_msgSend(versionCopy, "copy"), v11 = v9->_version, v9->_version = v10, v11, !v9->_version))
  {
    v13 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      version = v9->_version;
      *buf = 138412802;
      v20 = v14;
      v21 = 2112;
      versionCopy2 = version;
      v23 = 2112;
      v24 = arrayCopy;
      v16 = v14;
      _os_log_impl(&dword_260ECB000, v13, OS_LOG_TYPE_ERROR, "[%@] ERROR: Invalid initializer\nVersion:\t%@\nVector:\t%@", buf, 0x20u);
    }

    v12 = 0;
  }

  else
  {
    v12 = v9;
  }

  return v12;
}

- (APOdmlVector)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = APOdmlVector;
  v5 = [(APOdmlVector *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"vector"];
    v5->_dataPtr = [(APOdmlVector *)v5 _createDataPtrFromArray:v6];
    v5->_length = [v6 count];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    [(APOdmlVector *)v5 setVersion:v7];
  }

  return v5;
}

- (id)_initWithVersion:(id)version length:(unsigned int)length rawMallocedFloats:(float *)floats
{
  versionCopy = version;
  v13.receiver = self;
  v13.super_class = APOdmlVector;
  v10 = [(APOdmlVector *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_dataPtr = floats;
    v10->_length = length;
    objc_storeStrong(&v10->_version, version);
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  arrayOfNumbers = [(APOdmlVector *)self arrayOfNumbers];
  [coderCopy encodeObject:arrayOfNumbers forKey:@"vector"];
  version = [(APOdmlVector *)self version];
  [coderCopy encodeObject:version forKey:@"version"];
}

- (void)dealloc
{
  dataPtr = self->_dataPtr;
  if (dataPtr)
  {
    free(dataPtr);
  }

  v4.receiver = self;
  v4.super_class = APOdmlVector;
  [(APOdmlVector *)&v4 dealloc];
}

- (void)setDataPtr:(float *)ptr
{
  dataPtr = self->_dataPtr;
  if (dataPtr)
  {
    free(dataPtr);
  }

  self->_dataPtr = ptr;
}

- (float)_createDataPtrFromArray:(id)array
{
  v22 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v4 = arrayCopy;
  if (arrayCopy && (v5 = 4 * [arrayCopy count]) != 0)
  {
    v6 = malloc_type_malloc(v5, 0xD56414C8uLL);
    if (v6)
    {
      v7 = [v4 count];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = v4;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = &v6[v7];
        v12 = *v18;
        v13 = v6;
        do
        {
          v14 = 0;
          do
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v8);
            }

            if (v13 < v11)
            {
              [*(*(&v17 + 1) + 8 * v14) floatValue];
              *v13++ = v15;
            }

            ++v14;
          }

          while (v10 != v14);
          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)arrayOfNumbers
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_length];
  if (self->_length)
  {
    v5 = 0;
    do
    {
      *&v4 = self->_dataPtr[v5];
      v6 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
      [v3 addObject:v6];

      ++v5;
    }

    while (v5 < self->_length);
  }

  v7 = [v3 copy];

  return v7;
}

- (void)setArrayOfNumber:(id)number
{
  numberCopy = number;
  [(APOdmlVector *)self setDataPtr:[(APOdmlVector *)self _createDataPtrFromArray:numberCopy]];
  v5 = [numberCopy count];

  self->_length = v5;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (self->_dataPtr)
  {
    arrayOfNumbers = [(APOdmlVector *)self arrayOfNumbers];
    [dictionary setObject:arrayOfNumbers forKey:@"vector"];
  }

  version = self->_version;
  if (version)
  {
    [dictionary setObject:version forKey:@"version"];
  }

  v6 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];

  return v6;
}

- (NSData)data
{
  v3 = 4 * self->_length;
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:4 * v3];
  v5 = v4;
  if (v3)
  {
    dataPtr = self->_dataPtr;
    if (dataPtr)
    {
      [v4 appendBytes:dataPtr length:v3];
    }
  }

  v7 = [v5 copy];

  return v7;
}

- (id)scalarMultiply:(float)multiply
{
  multiplyCopy = multiply;
  v4 = malloc_type_malloc(4 * self->_length, 0x40988BDCuLL);
  if (v4)
  {
    v5 = v4;
    MEMORY[0x2666F4EF0](self->_dataPtr, 1, &multiplyCopy, v4, 1, self->_length);
    v6 = [APOdmlVector alloc];
    version = [(APOdmlVector *)self version];
    v8 = [(APOdmlVector *)v6 _initWithVersion:version length:self->_length rawMallocedFloats:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (float)dotProduct:(id)product
{
  v20 = *MEMORY[0x277D85DE8];
  productCopy = product;
  version = [(APOdmlVector *)self version];
  version2 = [productCopy version];
  v7 = [version compare:version2];

  v8 = 0.0;
  if (!v7)
  {
    v9 = [(APOdmlVector *)self length];
    if (v9 == [productCopy length])
    {
      v14 = 0;
      vDSP_dotpr(self->_dataPtr, 1, productCopy[1], 1, &v14, self->_length);
      v8 = *&v14;
    }

    else
    {
      v10 = OdmlLogForCategory(2uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = v11;
        v14 = 138412802;
        v15 = v11;
        v16 = 2048;
        v17 = [(APOdmlVector *)self length];
        v18 = 2048;
        v19 = [productCopy length];
        _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_ERROR, "[%@] ERROR: (Dot Product) Vectors are not of equal length:\nSelf: %lu\t Input: %lu", &v14, 0x20u);
      }
    }
  }

  return v8;
}

- (id)vectorAdd:(id)add
{
  v24 = *MEMORY[0x277D85DE8];
  addCopy = add;
  version = [(APOdmlVector *)self version];
  version2 = [addCopy version];
  v7 = [version compare:version2];

  if (v7)
  {
LABEL_8:
    selfCopy = self;
    goto LABEL_9;
  }

  length = self->_length;
  if (length != [addCopy length])
  {
    v14 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v18 = 138412802;
      v19 = v15;
      v20 = 2048;
      v21 = [(APOdmlVector *)self length];
      v22 = 2048;
      v23 = [addCopy length];
      _os_log_impl(&dword_260ECB000, v14, OS_LOG_TYPE_ERROR, "[%@] ERROR: (Vector Add) Vectors are not of equal length:\nSelf: %lu\t Input: %lu", &v18, 0x20u);
    }

    goto LABEL_8;
  }

  v9 = malloc_type_malloc(4 * self->_length, 0xBEC08917uLL);
  if (v9)
  {
    v10 = v9;
    MEMORY[0x2666F4EE0](self->_dataPtr, 1, addCopy[1], 1, v9, 1, self->_length);
    v11 = [APOdmlVector alloc];
    version3 = [(APOdmlVector *)self version];
    selfCopy = [(APOdmlVector *)v11 _initWithVersion:version3 length:self->_length rawMallocedFloats:v10];
  }

  else
  {
    selfCopy = 0;
  }

LABEL_9:

  return selfCopy;
}

- (id)vectorSubtract:(id)subtract
{
  v24 = *MEMORY[0x277D85DE8];
  subtractCopy = subtract;
  version = [(APOdmlVector *)self version];
  version2 = [subtractCopy version];
  v7 = [version compare:version2];

  if (v7)
  {
LABEL_8:
    selfCopy = self;
    goto LABEL_9;
  }

  v8 = [(APOdmlVector *)self length];
  if (v8 != [subtractCopy length])
  {
    v14 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = v15;
      v18 = 138412802;
      v19 = v15;
      v20 = 2048;
      v21 = [(APOdmlVector *)self length];
      v22 = 2048;
      v23 = [subtractCopy length];
      _os_log_impl(&dword_260ECB000, v14, OS_LOG_TYPE_ERROR, "[%@] ERROR: (Vector Subtract) Vectors are not of equal length:\nSelf: %lu\t Input: %lu", &v18, 0x20u);
    }

    goto LABEL_8;
  }

  v9 = malloc_type_malloc(4 * self->_length, 0xBBB1F084uLL);
  if (v9)
  {
    v10 = v9;
    MEMORY[0x2666F4F00](subtractCopy[1], 1, self->_dataPtr, 1, v9, 1, self->_length);
    v11 = [APOdmlVector alloc];
    version3 = [(APOdmlVector *)self version];
    selfCopy = [(APOdmlVector *)v11 _initWithVersion:version3 length:self->_length rawMallocedFloats:v10];
  }

  else
  {
    selfCopy = 0;
  }

LABEL_9:

  return selfCopy;
}

- (float)magnitude
{
  __C = 0.0;
  vDSP_svesq(self->_dataPtr, 1, &__C, [(APOdmlVector *)self length]);
  return sqrtf(__C);
}

- (id)cosineSimilarity:(id)similarity
{
  v30 = *MEMORY[0x277D85DE8];
  similarityCopy = similarity;
  version = [(APOdmlVector *)self version];
  version2 = [similarityCopy version];
  v7 = [version compare:version2];

  if (v7)
  {
    goto LABEL_14;
  }

  v8 = [(APOdmlVector *)self length];
  if (v8 != [similarityCopy length])
  {
    v15 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = v20;
      v24 = 138412802;
      v25 = v20;
      v26 = 2048;
      *&v27 = [(APOdmlVector *)self length];
      v28 = 2048;
      *&v29 = [similarityCopy length];
      _os_log_impl(&dword_260ECB000, v15, OS_LOG_TYPE_ERROR, "[%@] ERROR: (Cosine Similarity) Vectors are not of equal length:\nSelf: %lu\t Input: %lu", &v24, 0x20u);
    }

    goto LABEL_13;
  }

  [(APOdmlVector *)self magnitude];
  v10 = v9;
  [similarityCopy magnitude];
  v12 = v11;
  if (v10 == 0.0 || v11 == 0.0)
  {
    v15 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412802;
      v25 = objc_opt_class();
      v26 = 2048;
      v27 = v10;
      v28 = 2048;
      v29 = v12;
      v16 = v25;
      v17 = "[%@] ERROR: We are going to divide by zero:\nOur Magnitude:\t%f\nVec Magnitude:\t%f";
      v18 = v15;
      v19 = 32;
      goto LABEL_12;
    }

LABEL_13:

LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

  [(APOdmlVector *)self dotProduct:similarityCopy];
  v14 = *&v13 / (v10 * v12);
  if (fabsf(v14) > 1.0)
  {
    v15 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412546;
      v25 = objc_opt_class();
      v26 = 2048;
      v27 = v14;
      v16 = v25;
      v17 = "[%@] ERROR: Cosine Similarity is out of bounds: %f";
      v18 = v15;
      v19 = 22;
LABEL_12:
      _os_log_impl(&dword_260ECB000, v18, OS_LOG_TYPE_ERROR, v17, &v24, v19);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  *&v13 = v14;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
LABEL_15:

  return v22;
}

@end