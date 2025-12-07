@interface KmlTlv
+ (KmlTlv)TLVWithJustTag:(unsigned __int16)tag;
+ (KmlTlv)TLVWithTag:(unsigned __int16)tag unsignedChar:(unsigned __int8)char;
+ (KmlTlv)TLVWithTag:(unsigned __int16)tag unsignedLongValue:(unsigned int)value;
+ (KmlTlv)TLVWithTag:(unsigned __int16)tag unsignedShort:(unsigned __int16)short;
+ (KmlTlv)TLVWithTag:(unsigned __int16)tag value:(id)value;
+ (id)TLVsWithData:(id)data;
+ (id)_intToData:(uint64_t)data;
+ (id)_parseTLVs:(unint64_t)vs end:;
- (id)asData;
- (id)description;
- (unsigned)valueAsUnsignedChar;
- (unsigned)valueAsUnsignedLong;
- (unsigned)valueAsUnsignedShort;
@end

@implementation KmlTlv

+ (id)TLVsWithData:(id)data
{
  v13 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([dataCopy length])
  {
    bytes = [dataCopy bytes];
    array = +[KmlTlv _parseTLVs:end:](self, v10, bytes + [dataCopy length]);
  }

  else
  {
    v7 = KmlLogger(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 136315394;
      *&v10[4] = "+[KmlTlv TLVsWithData:]";
      v11 = 1024;
      v12 = 29;
      _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_INFO, "%s : %i : nothing to parse", v10, 0x12u);
    }

    array = [MEMORY[0x277CBEA60] array];
  }

  v8 = array;

  return v8;
}

+ (id)_parseTLVs:(unint64_t)vs end:
{
  *&v43[5] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  array = [MEMORY[0x277CBEB18] array];
  v7 = array;
  v8 = *a2;
  if (*a2 >= vs)
  {
LABEL_23:
    v11 = KmlLogger(array);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v31 = [v7 count];
      *buf = 136315650;
      v39 = "+[KmlTlv _parseTLVs:end:]";
      v40 = 1024;
      v41 = 304;
      v42 = 2048;
      *v43 = v31;
      _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : TLV: found %lu tlvs", buf, 0x1Cu);
    }
  }

  else
  {
    v9 = 0x277CBE000uLL;
    *&v6 = 136315906;
    v36 = v6;
    while (1)
    {
      v10 = [*(v9 + 2704) dataWithBytes:v8 length:{vs - v8, v36}];
      v11 = [KmlTlv TLVWithTag:0xFFFFLL value:v10];

      v13 = *a2;
      v14 = (*a2 + 1);
      *a2 = v14;
      v15 = *v13;
      if ((~v15 & 0x1F) == 0)
      {
        while (v14 < vs)
        {
          v16 = (v14 + 1);
          *a2 = (v14 + 1);
          v17 = *v14++;
          v18 = v17 < -1;
          v19 = v17 | (v15 << 8);
          v15 = v19;
          if (!v18)
          {
            goto LABEL_8;
          }
        }

        v25 = KmlLogger(v12);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v39 = "+[KmlTlv _parseTLVs:end:]";
          v40 = 1024;
          v41 = 252;
          v32 = "%s : %i : TLV: Underflow";
LABEL_27:
          v33 = v25;
          v34 = 18;
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      v16 = v14;
      LOWORD(v19) = v15;
LABEL_8:
      if (v16 >= vs)
      {
        v25 = KmlLogger(v12);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          goto LABEL_34;
        }

        *buf = 136315650;
        v39 = "+[KmlTlv _parseTLVs:end:]";
        v40 = 1024;
        v41 = 266;
        v42 = 1024;
        v43[0] = v19;
        v32 = "%s : %i : TLV: Underflow: tag=0x%x";
LABEL_32:
        v33 = v25;
        v34 = 24;
LABEL_33:
        _os_log_impl(&dword_248BF3000, v33, OS_LOG_TYPE_INFO, v32, buf, v34);
        goto LABEL_34;
      }

      v20 = v16 + 1;
      *a2 = v16 + 1;
      v21 = *v16;
      if (*v16 < 0)
      {
        v29 = v21 & 0x7F;
        if ((v21 & 0x7F) != 0)
        {
          v21 = 0;
          v30 = v16 + 1;
          while (v30 < vs)
          {
            v20 = v30 + 1;
            *a2 = v30 + 1;
            v21 = *v30++ | (v21 << 8);
            if (!--v29)
            {
              goto LABEL_10;
            }
          }

          v25 = KmlLogger(v12);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v39 = "+[KmlTlv _parseTLVs:end:]";
            v40 = 1024;
            v41 = 276;
            v42 = 1024;
            v43[0] = v19;
            v32 = "%s : %i : TLV: Underflow: tag=0x%x";
            goto LABEL_32;
          }

          goto LABEL_34;
        }

        v21 = 0;
      }

LABEL_10:
      if (!v19 && !v21)
      {
        break;
      }

      v37 = v11;
      v22 = v7;
      v23 = v9;
      v24 = vs - v20;
      v25 = KmlLogger(v12);
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
      if (v24 < v21)
      {
        if (v26)
        {
          *buf = v36;
          v39 = "+[KmlTlv _parseTLVs:end:]";
          v40 = 1024;
          v41 = 295;
          v42 = 1024;
          v43[0] = v19;
          LOWORD(v43[1]) = 1024;
          *(&v43[1] + 2) = v21;
          _os_log_impl(&dword_248BF3000, v25, OS_LOG_TYPE_INFO, "%s : %i : TLV: Underflow: tag=0x%x len=%u", buf, 0x1Eu);
        }

        v7 = v22;
        v11 = v37;
        goto LABEL_34;
      }

      if (v26)
      {
        *buf = v36;
        v39 = "+[KmlTlv _parseTLVs:end:]";
        v40 = 1024;
        v41 = 299;
        v42 = 1024;
        v43[0] = v19;
        LOWORD(v43[1]) = 1024;
        *(&v43[1] + 2) = v21;
        _os_log_impl(&dword_248BF3000, v25, OS_LOG_TYPE_INFO, "%s : %i : TLV: adding tag:0x%x, len:%u", buf, 0x1Eu);
      }

      v9 = v23;
      v27 = [*(v23 + 2704) dataWithBytes:*a2 length:v21];
      v28 = [KmlTlv TLVWithTag:v19 value:v27];
      v7 = v22;
      [v22 addObject:v28];

      *a2 += v21;
      v8 = *a2;
      if (*a2 >= vs)
      {
        goto LABEL_23;
      }
    }

    v25 = KmlLogger(v12);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v39 = "+[KmlTlv _parseTLVs:end:]";
      v40 = 1024;
      v41 = 287;
      v32 = "%s : %i : TLV: tag and length is 0";
      goto LABEL_27;
    }

LABEL_34:

    [v7 addObject:v11];
  }

  return v7;
}

+ (KmlTlv)TLVWithTag:(unsigned __int16)tag value:(id)value
{
  valueCopy = value;
  v7 = objc_alloc_init(self);
  v7[4] = tag;
  v8 = *(v7 + 2);
  *(v7 + 2) = valueCopy;

  return v7;
}

+ (KmlTlv)TLVWithTag:(unsigned __int16)tag unsignedChar:(unsigned __int8)char
{
  charCopy = char;
  v5 = objc_alloc_init(self);
  v5[4] = tag;
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:&charCopy length:1];
  v7 = *(v5 + 2);
  *(v5 + 2) = v6;

  return v5;
}

+ (KmlTlv)TLVWithTag:(unsigned __int16)tag unsignedShort:(unsigned __int16)short
{
  shortCopy = short;
  v6 = objc_alloc_init(self);
  v6[4] = tag;
  v10 = __rev16(shortCopy);
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:2];
  v8 = *(v6 + 2);
  *(v6 + 2) = v7;

  return v6;
}

+ (KmlTlv)TLVWithTag:(unsigned __int16)tag unsignedLongValue:(unsigned int)value
{
  v6 = objc_alloc_init(self);
  v6[4] = tag;
  v10 = bswap32(value);
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:2];
  v8 = *(v6 + 2);
  *(v6 + 2) = v7;

  return v6;
}

+ (KmlTlv)TLVWithJustTag:(unsigned __int16)tag
{
  v4 = objc_alloc_init(self);
  v4[4] = tag;

  return v4;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_value encoding:1];
  v4 = MEMORY[0x277CCACA8];
  if (v3)
  {
    v10.receiver = self;
    v10.super_class = KmlTlv;
    v5 = [(KmlTlv *)&v10 description];
    [v4 stringWithFormat:@"%@ %02x = %@ %@", v5, self->_tag, self->_value, v3];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = KmlTlv;
    v5 = [(KmlTlv *)&v9 description];
    [v4 stringWithFormat:@"%@ %02x = %@", v5, self->_tag, self->_value, v8];
  }
  v6 = ;

  return v6;
}

- (unsigned)valueAsUnsignedLong
{
  v17 = *MEMORY[0x277D85DE8];
  value = self->_value;
  if (!value)
  {
    return 0;
  }

  v4 = [(NSData *)value length];
  if (v4 >= 5)
  {
    v5 = KmlLogger(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = self->_value;
      v11 = 136315650;
      v12 = "[KmlTlv valueAsUnsignedLong]";
      v13 = 1024;
      v14 = 113;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : TLV: Value too large: %@", &v11, 0x1Cu);
    }

    return 0;
  }

  bytes = [(NSData *)self->_value bytes];
  if (![(NSData *)self->_value length])
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v9 = bytes[v8++] | (v9 << 8);
  }

  while ([(NSData *)self->_value length]> v8);
  return v9;
}

- (unsigned)valueAsUnsignedChar
{
  v14 = *MEMORY[0x277D85DE8];
  value = self->_value;
  if (value)
  {
    v4 = [(NSData *)value length];
    if (v4 < 2)
    {
      LOBYTE(value) = *[(NSData *)self->_value bytes];
    }

    else
    {
      v5 = KmlLogger(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = self->_value;
        v8 = 136315650;
        v9 = "[KmlTlv valueAsUnsignedChar]";
        v10 = 1024;
        v11 = 132;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : TLV: Value too large: %@", &v8, 0x1Cu);
      }

      LOBYTE(value) = 0;
    }
  }

  return value;
}

- (unsigned)valueAsUnsignedShort
{
  v17 = *MEMORY[0x277D85DE8];
  value = self->_value;
  if (!value)
  {
    return 0;
  }

  v4 = [(NSData *)value length];
  if (v4 >= 3)
  {
    v5 = KmlLogger(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = self->_value;
      v11 = 136315650;
      v12 = "[KmlTlv valueAsUnsignedShort]";
      v13 = 1024;
      v14 = 147;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : TLV: Value too large: %@", &v11, 0x1Cu);
    }

    return 0;
  }

  bytes = [(NSData *)self->_value bytes];
  if (![(NSData *)self->_value length])
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v9 = bytes[v8++] | (v9 << 8);
  }

  while ([(NSData *)self->_value length]> v8);
  return v9;
}

+ (id)_intToData:(uint64_t)data
{
  objc_opt_self();
  v3 = [MEMORY[0x277CBEB28] dataWithCapacity:4];
  v4 = v3;
  v8 = 0;
  if (a2)
  {
    v5 = 4;
    if (HIBYTE(a2))
    {
      goto LABEL_14;
    }

    do
    {
      v6 = HIWORD(a2);
      a2 <<= 8;
      --v5;
    }

    while (!v6 && v5);
    if (v5)
    {
LABEL_14:
      do
      {
        v8 = HIBYTE(a2);
        [v4 appendBytes:&v8 length:1];
        a2 <<= 8;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    [v3 appendBytes:&v8 length:1];
  }

  return v4;
}

- (id)asData
{
  data = [MEMORY[0x277CBEB28] data];
  v4 = [KmlTlv _intToData:?];
  [data appendData:v4];

  v5 = self->_value;
  v6 = [(NSData *)v5 length];
  v7 = [KmlTlv _intToData:v6];
  v8 = v7;
  if (v6 >= 0x80)
  {
    v10 = [v7 length] | 0x80;
    [data appendBytes:&v10 length:1];
  }

  [data appendData:v8];
  if (v5)
  {
    [data appendData:v5];
  }

  return data;
}

@end