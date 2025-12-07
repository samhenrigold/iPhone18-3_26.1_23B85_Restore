@interface PRDictionary
- (BOOL)checkWordBuffer:(char *)buffer length:(unint64_t)length encoding:(unsigned int)encoding index:(unint64_t)index caseInsensitive:(BOOL)insensitive;
- (PRDictionary)initWithURL:(id)l fallbackURL:(id)rL;
- (id)description;
- (id)dictionaryAtIndex:(unint64_t)index;
- (id)parameterBundle;
- (id)transformerParameterBundle;
- (void)dealloc;
@end

@implementation PRDictionary

- (PRDictionary)initWithURL:(id)l fallbackURL:(id)rL
{
  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:l options:8 error:0];
  bytes = [v7 bytes];
  v9 = [v7 length];
  if (v9 >= 0x404 && *bytes == 104 && bytes[1] == 177 && bytes[2] == 77 && bytes[3] == 28)
  {
    v10 = v9;
    v30.receiver = self;
    v30.super_class = PRDictionary;
    self = [(PRDictionary *)&v30 init];
    if (self)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      for (i = 128; i != 64; --i)
      {
        v12 = *&bytes[4 * i];
        v13 = bswap32(v12);
        if (v12)
        {
          v14 = v10 > v13;
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          v15 = [MEMORY[0x1E695DEF0] dataWithBytes:&bytes[v13] length:v10 - v13];
          v16 = [MEMORY[0x1E696AE40] propertyListWithData:v15 options:0 format:0 error:0];
          if (v16)
          {
            v17 = v16;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [dictionary3 setObject:v17 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", i - 65)}];
            }
          }

          v10 = v13;
        }
      }

      v18 = 64;
      do
      {
        v19 = *&bytes[4 * v18];
        v20 = bswap32(v19);
        if (v19)
        {
          v21 = v10 > v20;
        }

        else
        {
          v21 = 0;
        }

        if (v21)
        {
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
          [dictionary setObject:v22 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v18 - 1)}];
          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(v10 - v20) >> 2];
          [dictionary2 setObject:v23 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v18 - 1)}];
          v10 = v20;
        }

        --v18;
      }

      while (v18);
      v24 = [dictionary3 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", 5)}];
      if (v24)
      {
        v24 = [objc_alloc(MEMORY[0x1E6977A70]) initWithDictionaryRepresentation:v24 error:0];
      }

      v25 = [dictionary3 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", 6)}];
      if (v25)
      {
        v25 = [objc_alloc(MEMORY[0x1E6977A70]) initWithDictionaryRepresentation:v25 error:0];
      }

      self->_url = [l copy];
      self->_data = v7;
      self->_offsetsDictionary = dictionary;
      self->_numEntriesDictionary = dictionary2;
      self->_dictionariesDictionary = dictionary3;
      self->_parameterBundle = v24;
      self->_transformerParameterBundle = v25;
      if (rL && ([l isEqual:rL] & 1) == 0)
      {
        self->_fallbackDictionary = [[PRDictionary alloc] initWithURL:rL fallbackURL:0];
      }
    }
  }

  return self;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = PRDictionary;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@<%@>", -[PRDictionary description](&v3, sel_description), self->_url];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRDictionary;
  [(PRDictionary *)&v3 dealloc];
}

- (BOOL)checkWordBuffer:(char *)buffer length:(unint64_t)length encoding:(unsigned int)encoding index:(unint64_t)index caseInsensitive:(BOOL)insensitive
{
  v98 = *MEMORY[0x1E69E9840];
  if (length - 1 > 0x47)
  {
    goto LABEL_75;
  }

  insensitiveCopy = insensitive;
  v9 = *&encoding;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  bytes = [(NSData *)self->_data bytes];
  v15 = [-[NSDictionary objectForKey:](self->_offsetsDictionary objectForKey:{v13), "unsignedIntegerValue"}];
  v16 = [-[NSDictionary objectForKey:](self->_numEntriesDictionary objectForKey:{v13), "unsignedIntegerValue"}];
  if (!bytes || (v17 = v16) == 0)
  {
    fallbackDictionary = self->_fallbackDictionary;
    if (fallbackDictionary)
    {
      LOBYTE(fallbackDictionary) = [(PRDictionary *)fallbackDictionary checkWordBuffer:buffer length:length encoding:v9 index:index caseInsensitive:insensitiveCopy];
    }

    return fallbackDictionary;
  }

  if (!insensitiveCopy)
  {
    goto LABEL_32;
  }

  if (v9 > 1279)
  {
    if (v9 != 1280)
    {
      if (v9 != 1284)
      {
        if (v9 == 134217984)
        {
          v18 = v97;
          lengthCopy = length;
          bufferCopy = buffer;
          do
          {
            v22 = *bufferCopy++;
            v21 = v22;
            v23 = v22 + 32;
            if ((v22 - 65) < 0x1A)
            {
              v21 = v23;
            }

            *v18++ = v21;
            --lengthCopy;
          }

          while (lengthCopy);
          goto LABEL_33;
        }

LABEL_32:
        memcpy(v97, buffer, length);
        goto LABEL_33;
      }

      v78 = v97;
      lengthCopy2 = length;
      bufferCopy2 = buffer;
      while (1)
      {
        v82 = *bufferCopy2++;
        v81 = v82;
        v83 = v82 - 192;
        if ((v82 - 65) >= 0x1A && v83 >= 0x17)
        {
          break;
        }

        if ((v81 - 138) <= 0x15 && ((1 << (v81 + 118)) & 0x200015) != 0)
        {
          goto LABEL_129;
        }

        if (v81 != 73)
        {
          goto LABEL_124;
        }

        LOBYTE(v81) = -3;
LABEL_132:
        *v78++ = v81;
        if (!--lengthCopy2)
        {
          goto LABEL_33;
        }
      }

      if (v81 <= 215)
      {
        if ((v81 - 138) > 0x15 || ((1 << (v81 + 118)) & 0x200015) == 0)
        {
          goto LABEL_132;
        }

LABEL_129:
        if (v81 == 159)
        {
          LOBYTE(v81) = -1;
        }

        else
        {
          LOBYTE(v81) = v81 + 16;
        }

        goto LABEL_132;
      }

      if ((v81 - 216) >= 5)
      {
        if (v81 == 221)
        {
          LOBYTE(v81) = 105;
          goto LABEL_132;
        }

        if (v81 != 222)
        {
          goto LABEL_132;
        }
      }

LABEL_124:
      LOBYTE(v81) = v81 + 32;
      goto LABEL_132;
    }

    v69 = v97;
    lengthCopy3 = length;
    bufferCopy3 = buffer;
    while (1)
    {
      v73 = *bufferCopy3++;
      v72 = v73;
      v74 = v73 - 192;
      if ((v73 - 65) >= 0x1A && v74 >= 0x17)
      {
        if ((v72 - 216) >= 7)
        {
          if ((v72 - 138) > 0x15 || ((1 << (v72 + 118)) & 0x200015) == 0)
          {
            goto LABEL_108;
          }

LABEL_105:
          if (v72 == 159)
          {
            LOBYTE(v72) = -1;
          }

          else
          {
            LOBYTE(v72) = v72 + 16;
          }

          goto LABEL_108;
        }
      }

      else if ((v72 - 138) <= 0x15 && ((1 << (v72 + 118)) & 0x200015) != 0)
      {
        goto LABEL_105;
      }

      LOBYTE(v72) = v72 + 32;
LABEL_108:
      *v69++ = v72;
      if (!--lengthCopy3)
      {
        goto LABEL_33;
      }
    }
  }

  if (v9 == 514)
  {
    v87 = v97;
    lengthCopy4 = length;
    bufferCopy4 = buffer;
    do
    {
      v91 = *bufferCopy4++;
      v90 = v91;
      v92 = v91 - 192;
      v93 = (v91 - 65) >= 0x1A && v92 >= 0x17;
      if (!v93 || ((v90 - 161) <= 0x3D ? (v94 = ((1 << (v90 + 95)) & 0x3F80000000006F35) == 0) : (v94 = 1), !v94))
      {
        if (v90 + 95) < 0xFu && ((0x6F35u >> (v90 + 95)))
        {
          LOBYTE(v90) = byte_1D2BF76C8[(v90 + 95)];
        }

        else
        {
          LOBYTE(v90) = v90 + 32;
        }
      }

      *v87++ = v90;
      --lengthCopy4;
    }

    while (lengthCopy4);
  }

  else
  {
    if (v9 != 517)
    {
      goto LABEL_32;
    }

    v25 = v97;
    lengthCopy5 = length;
    bufferCopy5 = buffer;
    do
    {
      v29 = *bufferCopy5++;
      v28 = v29;
      v30 = v29 - 65;
      v31 = v29 - 176;
      v32 = v29 - 161;
      v33 = (v29 & 0xFE) != 0xAE && v32 >= 0xC;
      v34 = v28 + 80;
      if (v33)
      {
        v34 = v28;
      }

      v35 = v28 + 32;
      if (v30 >= 0x1A && v31 > 0x1F)
      {
        v35 = v34;
      }

      *v25++ = v35;
      --lengthCopy5;
    }

    while (lengthCopy5);
  }

LABEL_33:
  if (length <= 0x47)
  {
    memset(&v97[length], length, (71 - length) + 1);
  }

  v37 = &bytes[v15];
  v38 = -1640531527;
  v39 = v97;
  if (length < 0xC)
  {
    v42 = -1640531527;
    v41 = -1640531527;
    lengthCopy7 = length;
  }

  else
  {
    lengthCopy7 = length;
    v41 = -1640531527;
    v42 = -1640531527;
    do
    {
      v43 = *(v39 + 1) + v42;
      v44 = *(v39 + 2) + v41;
      v45 = (*v39 + v38 - (v43 + v44)) ^ (v44 >> 13);
      v46 = (v43 - v44 - v45) ^ (v45 << 8);
      v47 = (v44 - v45 - v46) ^ (v46 >> 13);
      v48 = (v45 - v46 - v47) ^ (v47 >> 12);
      v49 = (v46 - v47 - v48) ^ (v48 << 16);
      v50 = (v47 - v48 - v49) ^ (v49 >> 5);
      v38 = (v48 - v49 - v50) ^ (v50 >> 3);
      v42 = (v49 - v50 - v38) ^ (v38 << 10);
      v41 = (v50 - v38 - v42) ^ (v42 >> 15);
      v39 += 12;
      lengthCopy7 -= 12;
    }

    while (lengthCopy7 > 0xB);
  }

  v51 = v41 + length;
  if (lengthCopy7 > 5)
  {
    if (lengthCopy7 > 8)
    {
      if (lengthCopy7 != 9)
      {
        if (lengthCopy7 != 10)
        {
          v51 += v39[10] << 24;
        }

        v51 += v39[9] << 16;
      }

      v51 += v39[8] << 8;
    }

    else
    {
      if (lengthCopy7 == 6)
      {
LABEL_56:
        v42 += v39[5] << 8;
        goto LABEL_57;
      }

      if (lengthCopy7 == 7)
      {
LABEL_55:
        v42 += v39[6] << 16;
        goto LABEL_56;
      }
    }

    v42 += v39[7] << 24;
    goto LABEL_55;
  }

  if (lengthCopy7 > 2)
  {
    if (lengthCopy7 == 3)
    {
LABEL_59:
      v38 += v39[2] << 16;
      goto LABEL_60;
    }

    if (lengthCopy7 == 4)
    {
LABEL_58:
      v38 += v39[3] << 24;
      goto LABEL_59;
    }

LABEL_57:
    v42 += v39[4];
    goto LABEL_58;
  }

  if (lengthCopy7 == 1)
  {
    goto LABEL_61;
  }

  if (lengthCopy7 != 2)
  {
    goto LABEL_62;
  }

LABEL_60:
  v38 += v39[1] << 8;
LABEL_61:
  v38 += *v39;
LABEL_62:
  v52 = (v38 - v42 - v51) ^ (v51 >> 13);
  v53 = (v42 - v51 - v52) ^ (v52 << 8);
  v54 = (v51 - v52 - v53) ^ (v53 >> 13);
  v55 = (v52 - v53 - v54) ^ (v54 >> 12);
  v56 = (v53 - v54 - v55) ^ (v55 << 16);
  v57 = (v54 - v55 - v56) ^ (v56 >> 5);
  v58 = (v55 - v56 - v57) ^ (v57 >> 3);
  v59 = (v57 - v58 - ((v56 - v57 - v58) ^ (v58 << 10))) ^ (((v56 - v57 - v58) ^ (v58 << 10)) >> 15);
  v60 = ((v59 - 1) / 4294967300.0 * v17);
  if (bswap32(*&v37[4 * v60]) <= v59)
  {
    do
    {
      v62 = v60 + 1;
      if (v60 >= v17 - 1)
      {
        break;
      }

      v63 = bswap32(*&v37[4 * v60++]);
    }

    while (v63 < v59);
    v61 = bswap32(*&v37[4 * (v62 - 1)]);
  }

  else
  {
    do
    {
      v61 = bswap32(*&v37[4 * v60]);
      v33 = v60 != 0;
      LODWORD(v60) = v60 - 1;
    }

    while (v33 && v61 > v59);
  }

  LOBYTE(fallbackDictionary) = v61 == v59;
  v64 = v61 != v59;
  if (v9 == 1280 && index == 7 && v61 != v59)
  {
    if (length == 4)
    {
      v65 = strncmp(buffer, "AT&T", 4uLL) == 0;
LABEL_160:
      LOBYTE(fallbackDictionary) = v65;
      return fallbackDictionary;
    }

LABEL_75:
    LOBYTE(fallbackDictionary) = 0;
    return fallbackDictionary;
  }

  if (index != 1)
  {
    v64 = 0;
  }

  if (v9 == 1280 && v64)
  {
    switch(length)
    {
      case 0xDuLL:
        v66 = "vulernabipity";
        bufferCopy8 = buffer;
        v68 = 13;
        break;
      case 0xCuLL:
        if (!strncmp(buffer, "uandercommit", 0xCuLL))
        {
          LOBYTE(fallbackDictionary) = 1;
          return fallbackDictionary;
        }

        v66 = "knswledgable";
        bufferCopy8 = buffer;
        v68 = 12;
        break;
      case 0xAuLL:
        v66 = "deconfusep";
        bufferCopy8 = buffer;
        v68 = 10;
        break;
      default:
        return fallbackDictionary;
    }

    v95 = strncmp(bufferCopy8, v66, v68);
    v65 = v61 == v59 || v95 == 0;
    goto LABEL_160;
  }

  return fallbackDictionary;
}

- (id)dictionaryAtIndex:(unint64_t)index
{
  result = -[NSDictionary objectForKey:](self->_dictionariesDictionary, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?]);
  if (!result)
  {
    fallbackDictionary = self->_fallbackDictionary;

    return [(PRDictionary *)fallbackDictionary dictionaryAtIndex:index];
  }

  return result;
}

- (id)parameterBundle
{
  if (self->_parameterBundle)
  {
    return self->_parameterBundle;
  }

  else
  {
    return [(PRDictionary *)self->_fallbackDictionary parameterBundle];
  }
}

- (id)transformerParameterBundle
{
  if (self->_transformerParameterBundle)
  {
    return self->_transformerParameterBundle;
  }

  else
  {
    return [(PRDictionary *)self->_fallbackDictionary transformerParameterBundle];
  }
}

@end