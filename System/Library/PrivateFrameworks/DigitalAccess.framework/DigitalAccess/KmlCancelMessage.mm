@interface KmlCancelMessage
- (KmlCancelMessage)initWithCCCErrorCode:(unsigned __int8)code;
- (KmlCancelMessage)initWithData:(id)data;
- (KmlCancelMessage)initWithKmlErrorCode:(unsigned int)code;
- (id)asData;
@end

@implementation KmlCancelMessage

- (KmlCancelMessage)initWithData:(id)data
{
  v44 = *MEMORY[0x277D85DE8];
  [KmlTlv TLVsWithData:data];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = v37 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v35 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v34 + 1) + 8 * v8);
      if ([v9 tag] == 32620)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v9;

    if (!v11)
    {
      goto LABEL_21;
    }

    value = [v11 value];
    v13 = [KmlTlv TLVsWithData:value];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v4 = v13;
    v14 = [v4 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (!v14)
    {
LABEL_20:

LABEL_29:
      v26 = KmlLogger(v19);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v40 = "[KmlCancelMessage initWithData:]";
        v41 = 1024;
        v42 = 120;
        _os_log_impl(&dword_248BF3000, v26, OS_LOG_TYPE_ERROR, "%s : %i : Cancel code TLV not found", buf, 0x12u);
      }

      goto LABEL_32;
    }

    v15 = v14;
    v16 = *v31;
LABEL_13:
    v17 = 0;
    while (1)
    {
      if (*v31 != v16)
      {
        objc_enumerationMutation(v4);
      }

      v18 = *(*(&v30 + 1) + 8 * v17);
      if ([v18 tag] == 109 || objc_msgSend(v18, "tag") == 90)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v4 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v15)
        {
          goto LABEL_13;
        }

        goto LABEL_20;
      }
    }

    v20 = v18;

    if (!v20)
    {
      goto LABEL_29;
    }

    v29.receiver = self;
    v29.super_class = KmlCancelMessage;
    v21 = [(KmlCancelMessage *)&v29 init];
    if (v21)
    {
      valueAsUnsignedShort = [v20 valueAsUnsignedShort];
      v21->_cccCode = valueAsUnsignedShort;
      v23 = &byte_248C29D6C;
      v24 = 4;
      while (*v23 != valueAsUnsignedShort)
      {
        v23 += 8;
        if (!--v24)
        {
          v25 = 105;
          goto LABEL_35;
        }
      }

      v25 = *(v23 - 1);
LABEL_35:
      v21->_kmlCode = v25;
    }

    self = v21;

    selfCopy = self;
  }

  else
  {
LABEL_9:

LABEL_21:
    v11 = KmlLogger(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v40 = "[KmlCancelMessage initWithData:]";
      v41 = 1024;
      v42 = 107;
      _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_ERROR, "%s : %i : Cancel TLV not found", buf, 0x12u);
    }

LABEL_32:
    selfCopy = 0;
  }

  return selfCopy;
}

- (KmlCancelMessage)initWithCCCErrorCode:(unsigned __int8)code
{
  codeCopy = code;
  v8.receiver = self;
  v8.super_class = KmlCancelMessage;
  result = [(KmlCancelMessage *)&v8 init];
  if (result)
  {
    result->_cccCode = codeCopy;
    v5 = &byte_248C29D6C;
    v6 = 4;
    while (*v5 != codeCopy)
    {
      v5 += 8;
      if (!--v6)
      {
        v7 = 105;
        goto LABEL_7;
      }
    }

    v7 = *(v5 - 1);
LABEL_7:
    result->_kmlCode = v7;
  }

  return result;
}

- (KmlCancelMessage)initWithKmlErrorCode:(unsigned int)code
{
  v8.receiver = self;
  v8.super_class = KmlCancelMessage;
  result = [(KmlCancelMessage *)&v8 init];
  if (result)
  {
    result->_kmlCode = code;
    v5 = &byte_248C29D6C;
    v6 = 4;
    while (*(v5 - 1) != code)
    {
      v5 += 8;
      if (!--v6)
      {
        v7 = -1;
        goto LABEL_7;
      }
    }

    v7 = *v5;
LABEL_7:
    result->_cccCode = v7;
  }

  return result;
}

- (id)asData
{
  v2 = [KmlTlv TLVWithTag:109 unsignedChar:self->_cccCode];
  asData = [v2 asData];
  v4 = [KmlTlv TLVWithTag:32620 value:asData];

  asData2 = [v4 asData];

  return asData2;
}

@end