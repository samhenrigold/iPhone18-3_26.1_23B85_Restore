@interface SESTLV
+ (id)TLVWithData:(id)data;
+ (id)TLVWithTag:(unsigned int)tag children:(id)children;
+ (id)TLVWithTag:(unsigned int)tag fromData:(id)data;
+ (id)TLVWithTag:(unsigned int)tag unsignedChar:(unsigned __int8)char;
+ (id)TLVWithTag:(unsigned int)tag unsignedLongValue:(unsigned int)value;
+ (id)TLVWithTag:(unsigned int)tag unsignedShort:(unsigned __int16)short;
+ (id)TLVWithTag:(unsigned int)tag value:(id)value;
+ (id)TLVsWithData:(id)data;
+ (id)_intToData:(unsigned int)data;
+ (id)_parseTLVs:(const char *)vs end:(const char *)end simple:(BOOL)simple;
+ (id)dataWithTLVs:(id)vs;
+ (id)simpleTLVsWithData:(id)data;
+ (id)simpleTLVsWithTag:(unsigned int)tag fromData:(id)data;
- (id)asData;
- (id)childWithTag:(unsigned int)tag;
- (id)childrenWithTag:(unsigned int)tag;
- (id)description;
- (id)valueAsString;
- (unint64_t)valueAsUnsignedLongLong;
- (unsigned)valueAsUnsignedChar;
- (unsigned)valueAsUnsignedLong;
- (unsigned)valueAsUnsignedShort;
@end

@implementation SESTLV

+ (id)dataWithTLVs:(id)vs
{
  v17 = *MEMORY[0x1E69E9840];
  vsCopy = vs;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = vsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        asData = [*(*(&v12 + 1) + 8 * i) asData];
        [v4 appendData:asData];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)TLVsWithData:(id)data
{
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v7 = [dataCopy2 length];

  v8 = [self _parseTLVs:&bytes end:bytes + v7 simple:0];

  return v8;
}

+ (id)simpleTLVsWithData:(id)data
{
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v7 = [dataCopy2 length];

  v8 = [self _parseTLVs:&bytes end:bytes + v7 simple:1];

  return v8;
}

+ (id)TLVWithData:(id)data
{
  v3 = [self TLVsWithData:data];
  if (![v3 count])
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v5 = "No TLV detected";
      v6 = buf;
      goto LABEL_7;
    }

LABEL_8:

    lastObject = 0;
    goto LABEL_10;
  }

  if ([v3 count] >= 2)
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      v5 = "More than one TLV detected";
      v6 = &v9;
LABEL_7:
      _os_log_impl(&dword_1E0FCB000, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  lastObject = [v3 lastObject];
LABEL_10:

  return lastObject;
}

+ (id)TLVWithTag:(unsigned int)tag fromData:(id)data
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [SESTLV TLVsWithData:data, 0];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 tag] == tag)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (id)simpleTLVsWithTag:(unsigned int)tag fromData:(id)data
{
  v19 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [SESTLV simpleTLVsWithData:dataCopy, 0];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 tag] == tag)
        {
          [array addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return array;
}

+ (id)TLVWithTag:(unsigned int)tag children:(id)children
{
  v23 = *MEMORY[0x1E69E9840];
  childrenCopy = children;
  v7 = objc_opt_new();
  *(v7 + 8) = tag;
  objc_storeStrong((v7 + 24), children);
  if (*(v7 + 24))
  {
    data = [MEMORY[0x1E695DF88] data];
    v9 = *(v7 + 16);
    *(v7 + 16) = data;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = *(v7 + 24);
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(v7 + 16);
          asData = [*(*(&v18 + 1) + 8 * i) asData];
          [v15 appendData:asData];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  return v7;
}

+ (id)TLVWithTag:(unsigned int)tag value:(id)value
{
  valueCopy = value;
  v6 = objc_opt_new();
  *(v6 + 8) = tag;
  v7 = *(v6 + 16);
  *(v6 + 16) = valueCopy;

  return v6;
}

+ (id)TLVWithTag:(unsigned int)tag unsignedLongValue:(unsigned int)value
{
  v4 = *&tag;
  valueCopy = value;
  v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&valueCopy length:4];
  v6 = [SESTLV TLVWithTag:v4 value:v5];

  return v6;
}

+ (id)TLVWithTag:(unsigned int)tag unsignedChar:(unsigned __int8)char
{
  v4 = *&tag;
  charCopy = char;
  v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&charCopy length:1];
  v6 = [SESTLV TLVWithTag:v4 value:v5];

  return v6;
}

+ (id)TLVWithTag:(unsigned int)tag unsignedShort:(unsigned __int16)short
{
  v4 = *&tag;
  shortCopy = short;
  v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&shortCopy length:2];
  v6 = [SESTLV TLVWithTag:v4 value:v5];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if (self->_children)
  {
    v13.receiver = self;
    v13.super_class = SESTLV;
    v4 = [(SESTLV *)&v13 description];
    tag = self->_tag;
    children = [(SESTLV *)self children];
    [v3 stringWithFormat:@"%@ %02x : %@", v4, tag, children, v10];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_value encoding:1];
    v7 = MEMORY[0x1E696AEC0];
    if (v4)
    {
      v12.receiver = self;
      v12.super_class = SESTLV;
      children = [(SESTLV *)&v12 description];
      [v7 stringWithFormat:@"%@ %02x = %@ %@", children, self->_tag, self->_value, v4];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = SESTLV;
      children = [(SESTLV *)&v11 description];
      [v7 stringWithFormat:@"%@ %02x = %@", children, self->_tag, self->_value, v10];
    }
  }
  v8 = ;

  return v8;
}

- (id)valueAsString
{
  if (self->_value)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_value encoding:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unsigned)valueAsUnsignedChar
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(NSData *)self->_value length]== 1)
  {
    return *[(NSData *)self->_value bytes];
  }

  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    value = self->_value;
    v6 = 138412290;
    v7 = value;
    _os_log_impl(&dword_1E0FCB000, v4, OS_LOG_TYPE_ERROR, "Unexpected length %@", &v6, 0xCu);
  }

  return 0;
}

- (unsigned)valueAsUnsignedLong
{
  v12 = *MEMORY[0x1E69E9840];
  value = self->_value;
  if (!value)
  {
    return 0;
  }

  if ([(NSData *)value length]>= 5)
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = self->_value;
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1E0FCB000, v4, OS_LOG_TYPE_ERROR, "Value too large: %@", &v10, 0xCu);
    }

    return 0;
  }

  bytes = [(NSData *)self->_value bytes];
  if (![(NSData *)self->_value length])
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v8 = bytes[v7++] | (v8 << 8);
  }

  while ([(NSData *)self->_value length]> v7);
  return v8;
}

- (unsigned)valueAsUnsignedShort
{
  v12 = *MEMORY[0x1E69E9840];
  value = self->_value;
  if (!value)
  {
    return 0;
  }

  if ([(NSData *)value length]>= 3)
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = self->_value;
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1E0FCB000, v4, OS_LOG_TYPE_ERROR, "Value too large: %@", &v10, 0xCu);
    }

    return 0;
  }

  bytes = [(NSData *)self->_value bytes];
  if (![(NSData *)self->_value length])
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v8 = bytes[v7++] | (v8 << 8);
  }

  while ([(NSData *)self->_value length]> v7);
  return v8;
}

- (unint64_t)valueAsUnsignedLongLong
{
  v12 = *MEMORY[0x1E69E9840];
  value = self->_value;
  if (!value)
  {
    return 0;
  }

  if ([(NSData *)value length]>= 9)
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = self->_value;
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1E0FCB000, v4, OS_LOG_TYPE_ERROR, "Value too large: %@", &v10, 0xCu);
    }

    return 0;
  }

  bytes = [(NSData *)self->_value bytes];
  if (![(NSData *)self->_value length])
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v8 = bytes[v7++] | (v8 << 8);
  }

  while ([(NSData *)self->_value length]> v7);
  return v8;
}

- (id)childrenWithTag:(unsigned int)tag
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  children = [(SESTLV *)self children];
  v7 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(children);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 tag] == tag)
        {
          [array addObject:v11];
        }
      }

      v8 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)childWithTag:(unsigned int)tag
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  children = [(SESTLV *)self children];
  v5 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(children);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 tag] == tag)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

+ (id)_intToData:(unsigned int)data
{
  v4 = [MEMORY[0x1E695DF88] dataWithCapacity:4];
  v5 = v4;
  v9 = 0;
  if (data)
  {
    v6 = 4;
    if (HIBYTE(data))
    {
      goto LABEL_14;
    }

    do
    {
      v7 = HIWORD(data);
      data <<= 8;
      --v6;
    }

    while (!v7 && v6);
    if (v6)
    {
LABEL_14:
      do
      {
        v9 = HIBYTE(data);
        [v5 appendBytes:&v9 length:1];
        data <<= 8;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    [v4 appendBytes:&v9 length:1];
  }

  return v5;
}

- (id)asData
{
  v22 = *MEMORY[0x1E69E9840];
  data = [MEMORY[0x1E695DF88] data];
  v4 = [SESTLV _intToData:self->_tag];
  [data appendData:v4];

  data2 = self->_value;
  if (!data2)
  {
    if (self->_children)
    {
      data2 = [MEMORY[0x1E695DF88] data];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v6 = self->_children;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v18;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v6);
            }

            asData = [*(*(&v17 + 1) + 8 * i) asData];
            [(NSData *)data2 appendData:asData];
          }

          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v8);
      }
    }

    else
    {
      data2 = 0;
    }
  }

  v12 = [(NSData *)data2 length];
  v13 = [SESTLV _intToData:v12];
  v14 = v13;
  if (v12 >= 0x80)
  {
    v16 = [v13 length] | 0x80;
    [data appendBytes:&v16 length:1];
  }

  [data appendData:v14];
  if (data2)
  {
    [data appendData:data2];
  }

  return data;
}

+ (id)_parseTLVs:(const char *)vs end:(const char *)end simple:(BOOL)simple
{
  simpleCopy = simple;
  v57 = *MEMORY[0x1E69E9840];
  v46 = *vs;
  array = [MEMORY[0x1E695DF70] array];
  v9 = array;
  v10 = *vs;
  if (*vs >= end)
  {
    goto LABEL_71;
  }

  v48 = array;
  while (1)
  {
    v11 = v10 + 1;
    *vs = v10 + 1;
    v12 = *v10;
    if (simpleCopy)
    {
      if (v11 >= end)
      {
        v39 = SESDefaultLogObject();
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_54;
        }

        *buf = 67109120;
        v50 = v12;
      }

      else
      {
        v13 = v10 + 2;
        *vs = v10 + 2;
        v14 = *(v10 + 1);
        if (v14 != 255)
        {
          v15 = 1;
          if (v12)
          {
            goto LABEL_7;
          }

LABEL_21:
          if (!v14)
          {
            goto LABEL_70;
          }

          v21 = SESDefaultLogObject();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v50 = v14;
            _os_log_impl(&dword_1E0FCB000, v21, OS_LOG_TYPE_ERROR, "Unexpected %u len on tag 0", buf, 8u);
          }

          v16 = 0;
          v13 = *vs;
          goto LABEL_25;
        }

        v14 = 0;
        v28 = 1;
        while (v13 < end)
        {
          v29 = v28;
          v28 = 0;
          v30 = v13 + 1;
          *vs = v13 + 1;
          v14 = *v13++ | (v14 << 8);
          if ((v29 & 1) == 0)
          {
            v15 = 1;
            v13 = v30;
            if (v12)
            {
              goto LABEL_7;
            }

            goto LABEL_21;
          }
        }

        v39 = SESDefaultLogObject();
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_54;
        }

        *buf = 67109120;
        v50 = v12;
      }

      _os_log_impl(&dword_1E0FCB000, v39, OS_LOG_TYPE_ERROR, "Underflow: tag=0x%x", buf, 8u);
LABEL_54:

      goto LABEL_55;
    }

    v15 = (v12 & 0x20) == 0;
    if ((~v12 & 0x1F) == 0)
    {
      v17 = 1;
      while (1)
      {
        if (v17 >= 5)
        {
          v18 = SESDefaultLogObject();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1E0FCB000, v18, OS_LOG_TYPE_ERROR, "Tag value overflows", buf, 2u);
          }

          v11 = *vs;
        }

        if (v11 >= end)
        {
          break;
        }

        v19 = (v11 + 1);
        *vs = v11 + 1;
        v20 = *v11;
        v16 = *v11 | (v12 << 8);
        ++v17;
        ++v11;
        LODWORD(v12) = v16;
        if ((v20 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }
      }

      v35 = SESDefaultLogObject();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v36 = "Underflow";
        v37 = v35;
        v38 = 2;
        goto LABEL_59;
      }

      goto LABEL_60;
    }

    v19 = (v10 + 1);
    v16 = v12;
LABEL_18:
    if (v19 >= end)
    {
      break;
    }

    v13 = (v19 + 1);
    *vs = (v19 + 1);
    v14 = *v19;
    if ((*v19 & 0x80000000) == 0)
    {
LABEL_20:
      v12 = v16;
      if (v16)
      {
LABEL_7:
        v16 = v12;
        goto LABEL_25;
      }

      goto LABEL_21;
    }

    v31 = v14 & 0x7F;
    if ((v14 & 0x7F) != 0)
    {
      v14 = 0;
      while (v13 < end)
      {
        v32 = v13 + 1;
        *vs = v13 + 1;
        v14 = *v13++ | (v14 << 8);
        if (!--v31)
        {
          v13 = v32;
          goto LABEL_20;
        }
      }

      v35 = SESDefaultLogObject();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v50 = v16;
        v36 = "Underflow: tag=0x%x";
        goto LABEL_58;
      }

      goto LABEL_60;
    }

    if (!v16)
    {
      goto LABEL_70;
    }

    v14 = 0;
LABEL_25:
    if (end - v13 < v14)
    {
      v41 = SESDefaultLogObject();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = end - *vs;
        v43 = (*vs - v46);
        *buf = 67109888;
        v50 = v16;
        v51 = 1024;
        v52 = v14;
        v53 = 2048;
        v54 = v42;
        v55 = 2048;
        v56 = v43;
        _os_log_impl(&dword_1E0FCB000, v41, OS_LOG_TYPE_ERROR, "Underflow: tag=0x%x len=%u have=%lu offset=%lu", buf, 0x22u);
      }

      goto LABEL_61;
    }

    v22 = v14;
    v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:*vs length:v14];
    if (!v15)
    {
      v25 = [self _parseTLVs:vs end:&(*vs)[v14] simple:simpleCopy];
      if (![v25 count])
      {
        v33 = SESDefaultLogObject();
        v9 = v48;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v50 = v16;
          _os_log_impl(&dword_1E0FCB000, v33, OS_LOG_TYPE_ERROR, "Failed to recurse children of constructed (?) tag 0x%x, returning as simple", buf, 8u);
        }

        v34 = [SESTLV TLVWithTag:v16 value:v23];
        [v48 addObject:v34];

        *vs = &v13[v22];
        goto LABEL_44;
      }

      v26 = [SESTLV TLVWithTag:v16 children:v25];
      v9 = v48;
      if (v26)
      {
        v27 = v26;
        objc_storeStrong((v26 + 16), v23);
        [v48 addObject:v27];

LABEL_44:
        goto LABEL_45;
      }

      v45 = SESDefaultLogObject();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1E0FCB000, v45, OS_LOG_TYPE_ERROR, "[SESTLV TLVWithTag:children:] failed!", buf, 2u);
      }

LABEL_55:
      v40 = 0;
      goto LABEL_72;
    }

    v24 = [SESTLV TLVWithTag:v16 value:v23];
    v9 = v48;
    [v48 addObject:v24];

    *vs += v22;
LABEL_45:

    v10 = *vs;
    if (*vs >= end)
    {
      goto LABEL_71;
    }
  }

  if (!v16)
  {
LABEL_70:
    v9 = v48;
LABEL_71:
    v40 = v9;
    goto LABEL_72;
  }

  v35 = SESDefaultLogObject();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v50 = v16;
    v36 = "Underflow: tag=0x%x";
LABEL_58:
    v37 = v35;
    v38 = 8;
LABEL_59:
    _os_log_impl(&dword_1E0FCB000, v37, OS_LOG_TYPE_ERROR, v36, buf, v38);
  }

LABEL_60:

LABEL_61:
  v40 = 0;
  v9 = v48;
LABEL_72:

  return v40;
}

@end