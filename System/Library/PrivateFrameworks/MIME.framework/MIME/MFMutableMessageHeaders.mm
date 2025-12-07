@interface MFMutableMessageHeaders
- (BOOL)hasHeaderForKey:(id)key;
- (NSData)encodedHeaders;
- (NSString)description;
- (id)_copyHeaderValueForKey:(id)key;
- (id)_copyHeaderValueForKey:(id)key offset:(unint64_t *)offset decoded:(BOOL)decoded;
- (id)allHeaderKeys;
- (id)firstHeaderForKey:(id)key;
- (id)headersDictionary;
- (id)mutableCopy;
- (void)_appendAddedHeaderKey:(id)key value:(id)value toData:(id)data;
- (void)_appendHeaderKey:(id)key value:(id)value toData:(id)data;
- (void)removeHeaderForKey:(id)key;
- (void)setAddressList:(id)list forKey:(id)key;
- (void)setHeader:(id)header forKey:(id)key;
- (void)setReferences:(id)references;
- (void)stripInternalHeaders;
@end

@implementation MFMutableMessageHeaders

- (id)mutableCopy
{
  v9.receiver = self;
  v9.super_class = MFMutableMessageHeaders;
  v3 = [(MFMessageHeaders *)&v9 mutableCopy];
  v4 = [(NSMutableDictionary *)self->_headersAdded mutableCopy];
  v5 = v3[3];
  v3[3] = v4;

  v6 = [(NSMutableArray *)self->_headersRemoved mutableCopy];
  v7 = v3[4];
  v3[4] = v6;

  return v3;
}

- (id)headersDictionary
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_headersAdded count]|| [(NSMutableArray *)self->_headersRemoved count])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    allHeaderKeys = [(MFMutableMessageHeaders *)self allHeaderKeys];
    v5 = [allHeaderKeys countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(allHeaderKeys);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          v9 = [(MFMessageHeaders *)self headersForKey:v8];
          [dictionary setObject:v9 forKey:v8];
        }

        v5 = [allHeaderKeys countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = MFMutableMessageHeaders;
    dictionary = [(MFMessageHeaders *)&v15 headersDictionary];
  }

  return dictionary;
}

- (id)allHeaderKeys
{
  array = [MEMORY[0x1E695DF70] array];
  data = [(MFMessageHeaders *)self data];
  v5 = [(MFMessageHeaders *)self _decodeHeaderKeysFromData:data];
  [array addObjectsFromArray:v5];

  if (self->_headersRemoved)
  {
    [array removeObjectsInArray:?];
  }

  headersAdded = self->_headersAdded;
  if (headersAdded)
  {
    allKeys = [(NSMutableDictionary *)headersAdded allKeys];
    [array addObjectsFromArray:allKeys];
  }

  return array;
}

- (BOOL)hasHeaderForKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  headersRemoved = self->_headersRemoved;
  if (headersRemoved && ([keyCopy lowercaseString], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[NSMutableArray indexOfObject:](headersRemoved, "indexOfObject:", v7), v7, v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v10 = 0;
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_headersAdded objectForKey:v5];

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v12.receiver = self;
      v12.super_class = MFMutableMessageHeaders;
      v10 = [(MFMessageHeaders *)&v12 hasHeaderForKey:v5];
    }
  }

  return v10;
}

- (id)firstHeaderForKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  headersRemoved = self->_headersRemoved;
  if (headersRemoved && ([keyCopy lowercaseString], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[NSMutableArray indexOfObject:](headersRemoved, "indexOfObject:", v7), v7, v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = 0;
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_headersAdded objectForKey:v5];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 objectAtIndex:0];

        v9 = v10;
      }
    }

    else
    {
      v12.receiver = self;
      v12.super_class = MFMutableMessageHeaders;
      v9 = [(MFMessageHeaders *)&v12 firstHeaderForKey:v5];
    }
  }

  return v9;
}

- (void)removeHeaderForKey:(id)key
{
  lowercaseString = [key lowercaseString];
  headersRemoved = self->_headersRemoved;
  v8 = lowercaseString;
  if (!headersRemoved)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_headersRemoved;
    self->_headersRemoved = v6;

    headersRemoved = self->_headersRemoved;
    lowercaseString = v8;
  }

  [(NSMutableArray *)headersRemoved addObject:lowercaseString];
  [(NSMutableDictionary *)self->_headersAdded removeObjectForKey:v8];
}

- (void)setHeader:(id)header forKey:(id)key
{
  headerCopy = header;
  keyCopy = key;
  if (headerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      lowercaseString = headerCopy;
      newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v10 = [lowercaseString rangeOfCharacterFromSet:newlineCharacterSet options:2];

      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = MFLogGeneral();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&dword_1D36B2000, v16, OS_LOG_TYPE_DEFAULT, "#Warning Error: tried to set a header with a newline.  Ignoring invalid value.", v17, 2u);
        }

        goto LABEL_13;
      }
    }

    lowercaseString = [keyCopy lowercaseString];
    headersAdded = self->_headersAdded;
    if (!headersAdded)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = self->_headersAdded;
      self->_headersAdded = v12;

      headersAdded = self->_headersAdded;
    }

    [(NSMutableDictionary *)headersAdded setObject:headerCopy forKey:lowercaseString];
    v14 = [(NSMutableArray *)self->_headersRemoved indexOfObject:lowercaseString];
    headersRemoved = self->_headersRemoved;
    if (headersRemoved && v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)headersRemoved removeObjectAtIndex:?];
    }

LABEL_13:
  }
}

- (void)_appendHeaderKey:(id)key value:(id)value toData:(id)data
{
  keyCopy = key;
  valueCopy = value;
  dataCopy = data;
  v10 = [(MFMessageHeaders *)self _capitalizedKeyForKey:keyCopy];
  [dataCopy mf_appendCString:{objc_msgSend(v10, "ef_lossyDefaultCStringBytes")}];

  if (([keyCopy isEqualToString:@"From "] & 1) == 0)
  {
    [dataCopy mf_appendCString:": "];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = *MEMORY[0x1E699B0B0];
    if ([keyCopy isEqualToString:*MEMORY[0x1E699B0B0]] && objc_msgSend(valueCopy, "rangeOfString:", @"<") == 0x7FFFFFFFFFFFFFFFLL)
    {
      [dataCopy mf_appendCString:"<"];
    }

    v12 = [valueCopy mf_encodedHeaderDataWithEncodingHint:{-[MFMessageHeaders preferredEncoding](self, "preferredEncoding")}];
    if ([keyCopy isEqualToString:v11])
    {
      v13 = [valueCopy rangeOfString:@">"] == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = 0;
    }

    v14 = v12;
    if (!v12)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = valueCopy;
    v13 = 0;
    if (!v14)
    {
LABEL_17:
      if (v13)
      {
        [dataCopy mf_appendCString:">"];
      }

      goto LABEL_19;
    }

LABEL_16:
    [dataCopy appendData:v14];
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    __assert_rtn("[MFMutableMessageHeaders _appendHeaderKey:value:toData:]", "MutableMessageHeaders.m", 133, "0 && Tried to append an array that we don't understand.");
  }

  v14 = 0;
LABEL_19:
  [dataCopy mf_appendCString:"\n"];
}

- (void)_appendAddedHeaderKey:(id)key value:(id)value toData:(id)data
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v11 = valueCopy;
    v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v12)
    {
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [(MFMutableMessageHeaders *)self _appendHeaderKey:keyCopy value:*(*(&v15 + 1) + 8 * v14++) toData:dataCopy, v15];
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }

  else
  {
    [(MFMutableMessageHeaders *)self _appendHeaderKey:keyCopy value:valueCopy toData:dataCopy];
  }
}

- (id)_copyHeaderValueForKey:(id)key
{
  v28 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = keyCopy;
  headersRemoved = self->_headersRemoved;
  if (headersRemoved && ([keyCopy lowercaseString], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[NSMutableArray indexOfObject:](headersRemoved, "indexOfObject:", v7), v7, v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = 0;
    v10 = [(NSMutableDictionary *)self->_headersAdded objectForKey:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v12)
      {
        v13 = *v23;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = [*(*(&v22 + 1) + 8 * i) copy];
            [v9 addObject:v15];
          }

          v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v12);
      }
    }

    else if (v10)
    {
      v16 = [v10 copy];
      [v9 addObject:v16];
    }

    v17 = 0;
    while (1)
    {
      v18 = [MFMessageHeaders shouldDecodeHeaderForKey:v5];
      v21.receiver = self;
      v21.super_class = MFMutableMessageHeaders;
      v19 = [(MFMessageHeaders *)&v21 _copyHeaderValueForKey:v5 offset:&v26 decoded:v18];

      if (!v19)
      {
        break;
      }

      v17 = v19;
      [v9 addObject:v19];
    }
  }

  return v9;
}

- (id)_copyHeaderValueForKey:(id)key offset:(unint64_t *)offset decoded:(BOOL)decoded
{
  decodedCopy = decoded;
  keyCopy = key;
  v9 = keyCopy;
  headersRemoved = self->_headersRemoved;
  if (headersRemoved)
  {
    lowercaseString = [keyCopy lowercaseString];
    v12 = [(NSMutableArray *)headersRemoved indexOfObject:lowercaseString];

    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
      goto LABEL_12;
    }
  }

  if (!*offset)
  {
    v14 = [(NSMutableDictionary *)self->_headersAdded objectForKey:v9];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 objectAtIndex:0];

      if (!v15)
      {
LABEL_8:
        v18.receiver = self;
        v18.super_class = MFMutableMessageHeaders;
        v16 = [(MFMessageHeaders *)&v18 _copyHeaderValueForKey:v9 offset:offset decoded:decodedCopy];
LABEL_11:
        v13 = v16;

        goto LABEL_12;
      }
    }

    else
    {
      v15 = v14;
      if (!v14)
      {
        goto LABEL_8;
      }
    }

    v16 = [v15 copy];
    goto LABEL_11;
  }

  v19.receiver = self;
  v19.super_class = MFMutableMessageHeaders;
  v13 = [(MFMessageHeaders *)&v19 _copyHeaderValueForKey:v9 offset:offset decoded:decodedCopy];
LABEL_12:

  return v13;
}

- (NSData)encodedHeaders
{
  v44 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_headersAdded count]|| [(NSMutableArray *)self->_headersRemoved count])
  {
    encodedHeaders = objc_alloc_init(MFMutableData);
    v4 = [(NSMutableDictionary *)self->_headersAdded mutableCopy];
    v31 = [(NSMutableArray *)self->_headersRemoved mutableCopy];
    memset(v40, 170, sizeof(v40));
    data = [(MFMessageHeaders *)self data];
    bytes = [data bytes];

    data2 = [(MFMessageHeaders *)self data];
    v8 = [data2 length];

    while (1)
    {
      data3 = [(MFMessageHeaders *)self data];
      v10 = v8;
      HeaderFromDataInRange = ECGetNextHeaderFromDataInRange();

      if (!HeaderFromDataInRange)
      {
        break;
      }

      v12 = CFStringCreateWithBytes(0, (bytes + v40[0]), v40[1], 0x600u, 0);
      lowercaseString = [(__CFString *)v12 lowercaseString];
      if (([lowercaseString isEqualToString:@"from "] & 1) == 0)
      {
        if (v31)
        {
          v14 = [v31 indexOfObject:lowercaseString] != 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = 0;
        }

        v15 = [v4 objectForKey:lowercaseString];

        if (v14 || v15 != 0)
        {
          if (v15)
          {
            v16 = [v4 objectForKey:lowercaseString];
            [v4 removeObjectForKey:lowercaseString];
            [(MFMutableMessageHeaders *)self _appendAddedHeaderKey:v12 value:v16 toData:encodedHeaders];
            [v31 addObject:lowercaseString];
          }
        }

        else
        {
          [(MFMutableData *)encodedHeaders appendBytes:bytes + v40[0] length:v40[1]];
          [(NSMutableData *)encodedHeaders mf_appendCString:": "];
          [(MFMutableData *)encodedHeaders appendBytes:bytes + v40[2] length:v40[3]];
          [(NSMutableData *)encodedHeaders mf_appendCString:"\n"];
        }
      }

      v8 = v10;
    }

    if (encodedHeaders_onceToken != -1)
    {
      [MFMutableMessageHeaders encodedHeaders];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v17 = encodedHeaders_orderedHeaders;
    v18 = [v17 countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (v18)
    {
      v19 = *v37;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          v22 = [v4 objectForKey:v21];
          if (v22)
          {
            v23 = [v4 objectForKey:v21];
            [(MFMutableMessageHeaders *)self _appendAddedHeaderKey:v21 value:v23 toData:encodedHeaders];

            [v4 removeObjectForKey:v21];
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v18);
    }

    [v4 allKeys];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v24 = v33 = 0u;
    v25 = [v24 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v25)
    {
      v26 = *v33;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v33 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v32 + 1) + 8 * j);
          v29 = [v4 objectForKey:v28];
          [(MFMutableMessageHeaders *)self _appendAddedHeaderKey:v28 value:v29 toData:encodedHeaders];
        }

        v25 = [v24 countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v25);
    }

    [(MFMutableData *)encodedHeaders appendBytes:"\n" length:1];
  }

  else
  {
    v41.receiver = self;
    v41.super_class = MFMutableMessageHeaders;
    encodedHeaders = [(MFMessageHeaders *)&v41 encodedHeaders];
  }

  return encodedHeaders;
}

uint64_t __41__MFMutableMessageHeaders_encodedHeaders__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  v1 = [v0 initWithObjects:{*MEMORY[0x1E699B0D0], *MEMORY[0x1E699B0A8], *MEMORY[0x1E699B0C8], *MEMORY[0x1E699B0A0], *MEMORY[0x1E699B0B0], *MEMORY[0x1E699B0B8], *MEMORY[0x1E699B0C0], 0}];
  encodedHeaders_orderedHeaders = v1;

  return MEMORY[0x1EEE66BB8](v1);
}

- (void)setAddressList:(id)list forKey:(id)key
{
  listCopy = list;
  keyCopy = key;
  if ([listCopy count])
  {
    v7 = +[MFMessageHeaders encodedDataForAddressList:splittingAtLength:firstLineBuffer:](MFMessageHeaders, "encodedDataForAddressList:splittingAtLength:firstLineBuffer:", listCopy, 72, [keyCopy length] + 2);
    [(MFMutableMessageHeaders *)self setHeader:v7 forKey:keyCopy];
  }

  else
  {
    [(MFMutableMessageHeaders *)self removeHeaderForKey:keyCopy];
  }
}

- (void)setReferences:(id)references
{
  referencesCopy = references;
  if (referencesCopy && [referencesCopy count])
  {
    v4 = [referencesCopy componentsJoinedByString:@" "];
    [(MFMutableMessageHeaders *)self setHeader:v4 forKey:*MEMORY[0x1E699B140]];
  }

  else
  {
    [(MFMutableMessageHeaders *)self removeHeaderForKey:*MEMORY[0x1E699B140]];
  }
}

- (void)stripInternalHeaders
{
  v13 = *MEMORY[0x1E69E9840];
  [(MFMutableMessageHeaders *)self allHeaderKeys];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v3 = v9 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (![v7 compare:@"x-apple-internal-" options:1 range:{0, objc_msgSend(@"x-apple-internal-", "length", v8)}] || !objc_msgSend(v7, "compare:options:", @"X-Apple-Content-Length", 1) || !objc_msgSend(v7, "compare:options:", @"x-uniform-type-identifier", 1))
        {
          [(MFMutableMessageHeaders *)self removeHeaderForKey:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (NSString)description
{
  v27 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = MFMutableMessageHeaders;
  v3 = [(MFMessageHeaders *)&v24 description];
  v4 = [v3 mutableCopy];

  [v4 appendString:@"\n\tAdded:\n"];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_headersAdded;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_headersAdded objectForKey:v9];
        [v4 appendFormat:@"\t\t%@ => %@\n", v9, v10];
      }

      v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  [v4 appendString:@"\n\tRemoved:\n"];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_headersRemoved;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v25 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [v4 appendFormat:@"\t\t%@\n", *(*(&v16 + 1) + 8 * j)];
      }

      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v25 count:16];
    }

    while (v12);
  }

  return v4;
}

@end