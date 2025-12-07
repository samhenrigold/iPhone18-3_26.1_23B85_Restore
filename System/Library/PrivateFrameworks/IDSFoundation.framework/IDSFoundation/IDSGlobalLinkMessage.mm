@interface IDSGlobalLinkMessage
+ (id)messageWithBuffer:(char *)buffer length:(int)length;
+ (id)messageWithCommand:(int64_t)command attributes:(id)attributes;
- (BOOL)_addAttribute:(IDSGlobalLinkAttribute *)attribute;
- (BOOL)_write:(char *)_write outputLength:(int *)length dropLowerPriorityFields:(BOOL)fields;
- (BOOL)getAttribute:(int64_t)attribute attribute:(IDSGlobalLinkAttribute *)a4;
- (BOOL)read:(char *)read inputLength:(int)length;
- (BOOL)verifyHMacDigestWithKey:(id)key inputBuffer:(char *)buffer inputLength:(int)length;
- (BOOL)write:(char *)write outputLength:(int *)length;
- (IDSGlobalLinkMessage)initWithCommand:(int64_t)command;
- (void)_addAddressAttribute:(int64_t)attribute value:(sockaddr *)value;
- (void)_addBinaryDataAttribute:(int64_t)attribute value:(id)value;
- (void)_addUInt16Attribute:(int64_t)attribute value:(unsigned __int16)value;
- (void)_addUInt32Attribute:(int64_t)attribute value:(unsigned int)value;
- (void)_addUInt64Attribute:(int64_t)attribute value:(unint64_t)value;
- (void)dealloc;
- (void)setAttributes:(id)attributes;
@end

@implementation IDSGlobalLinkMessage

- (IDSGlobalLinkMessage)initWithCommand:(int64_t)command
{
  v5.receiver = self;
  v5.super_class = IDSGlobalLinkMessage;
  result = [(IDSGlobalLinkMessage *)&v5 init];
  if (result)
  {
    result->_command = command;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IDSGlobalLinkMessage;
  [(IDSGlobalLinkMessage *)&v2 dealloc];
}

+ (id)messageWithCommand:(int64_t)command attributes:(id)attributes
{
  attributesCopy = attributes;
  v6 = [[IDSGlobalLinkMessage alloc] initWithCommand:command];
  [(IDSGlobalLinkMessage *)v6 setAttributes:attributesCopy];

  return v6;
}

+ (id)messageWithBuffer:(char *)buffer length:(int)length
{
  v4 = *&length;
  v6 = objc_alloc_init(IDSGlobalLinkMessage);
  [(IDSGlobalLinkMessage *)v6 read:buffer inputLength:v4];

  return v6;
}

- (BOOL)_addAttribute:(IDSGlobalLinkAttribute *)attribute
{
  if (attribute)
  {
    numAttribute = self->_numAttribute;
    if (numAttribute != 20)
    {
      memcpy(&self->_attributes[numAttribute], attribute, sizeof(self->_attributes[numAttribute]));
      ++self->_numAttribute;
      LOBYTE(v6) = 1;
      return v6;
    }

    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "maximum GL attribute limit reached, skip.", v24, 2u);
    }

    v6 = os_log_shim_legacy_logging_enabled();
    if (v6)
    {
      v6 = _IDSShouldLogTransport();
      if (v6)
      {
        _IDSLogTransport(@"GL", @"IDS", @"maximum GL attribute limit reached, skip.", v7, v8, v9, v10, v11, *v24);
        v6 = _IDSShouldLog(0);
        if (v6)
        {
          v16 = @"maximum GL attribute limit reached, skip.";
LABEL_15:
          _IDSLogV(0, @"IDSFoundation", @"GL", v16, v12, v13, v14, v15, *v24);
          LOBYTE(v6) = 0;
        }
      }
    }
  }

  else
  {
    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "invalid GL attribute.", buf, 2u);
    }

    v6 = os_log_shim_legacy_logging_enabled();
    if (v6)
    {
      v6 = _IDSShouldLogTransport();
      if (v6)
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid GL attribute.", v18, v19, v20, v21, v22, *v24);
        v6 = _IDSShouldLog(0);
        if (v6)
        {
          v16 = @"invalid GL attribute.";
          goto LABEL_15;
        }
      }
    }
  }

  return v6;
}

- (void)_addAddressAttribute:(int64_t)attribute value:(sockaddr *)value
{
  attributeCopy = attribute;
  v7 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  __b[0] = attributeCopy;
  __b[1] = 128;
  __memcpy_chk();
  [(IDSGlobalLinkMessage *)self _addAttribute:__b];
}

- (void)_addUInt16Attribute:(int64_t)attribute value:(unsigned __int16)value
{
  attributeCopy = attribute;
  v8 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  __b[0] = attributeCopy;
  __b[1] = 2;
  __b[4] = value;
  [(IDSGlobalLinkMessage *)self _addAttribute:__b];
}

- (void)_addUInt32Attribute:(int64_t)attribute value:(unsigned int)value
{
  attributeCopy = attribute;
  v8 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  LOWORD(__b[0]) = attributeCopy;
  HIWORD(__b[0]) = 4;
  __b[2] = value;
  [(IDSGlobalLinkMessage *)self _addAttribute:__b];
}

- (void)_addUInt64Attribute:(int64_t)attribute value:(unint64_t)value
{
  attributeCopy = attribute;
  __b[130] = *MEMORY[0x1E69E9840];
  memset(__b, 170, 0x410uLL);
  LOWORD(__b[0]) = attributeCopy;
  WORD1(__b[0]) = 8;
  __b[1] = value;
  [(IDSGlobalLinkMessage *)self _addAttribute:__b];
}

- (void)_addBinaryDataAttribute:(int64_t)attribute value:(id)value
{
  attributeCopy = attribute;
  v24 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      memset(__b, 170, sizeof(__b));
      v7 = [valueCopy length];
      v8 = v7;
      if ((v7 - 1025) > 0xFFFFFBFF)
      {
        LOWORD(__b[0]) = attributeCopy;
        HIWORD(__b[0]) = v7;
        __b[2] = v7;
        [valueCopy bytes];
        __memcpy_chk();
        [(IDSGlobalLinkMessage *)self _addAttribute:__b];
      }

      else
      {
        v9 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          v20 = v8;
          v21 = 1024;
          v22 = attributeCopy;
          _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "failed to add %dB for binary attr type %04x.", buf, 0xEu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"failed to add %dB for binary attr type %04x.", v10, v11, v12, v13, v14, v8);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to add %dB for binary attr type %04x.", v15, v16, v17, v18, v8);
            }
          }
        }
      }
    }
  }
}

- (void)setAttributes:(id)attributes
{
  v41 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    command = self->_command;
    *buf = 134218242;
    *&buf[4] = command;
    *&buf[12] = 2112;
    *&buf[14] = attributesCopy;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "[IDSGlobalLinkMessage command:%04lx setAttributes: %@]", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"[IDSGlobalLinkMessage command:%04lx setAttributes: %@]", v7, v8, v9, v10, v11, self->_command);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"[IDSGlobalLinkMessage command:%04lx setAttributes: %@]", v12, v13, v14, v15, self->_command);
      }
    }
  }

  [attributesCopy allKeys];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v16 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v16)
  {
    v33 = 0;
    v17 = *v36;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(obj);
        }

        Value = 0;
        v20 = *(*(&v35 + 1) + 8 * i);
        if (attributesCopy && v20)
        {
          Value = CFDictionaryGetValue(attributesCopy, *(*(&v35 + 1) + 8 * i));
        }

        v21 = Value;
        if ([v20 isEqualToString:@"gl-attr-counter"])
        {
          -[IDSGlobalLinkMessage _addUInt16Attribute:value:](self, "_addUInt16Attribute:value:", 1, [v21 unsignedIntValue]);
        }

        else if ([v20 isEqualToString:@"gl-attr-skedata"])
        {
          [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:4 value:v21];
        }

        else if ([v20 isEqualToString:@"gl-attr-transport"])
        {
          -[IDSGlobalLinkMessage _addUInt16Attribute:value:](self, "_addUInt16Attribute:value:", 2, [v21 unsignedIntValue]);
        }

        else if ([v20 isEqualToString:@"gl-attr-rat"])
        {
          -[IDSGlobalLinkMessage _addUInt16Attribute:value:](self, "_addUInt16Attribute:value:", 5, [v21 unsignedIntValue]);
        }

        else if ([v20 isEqualToString:@"gl-attr-mtu"])
        {
          -[IDSGlobalLinkMessage _addUInt16Attribute:value:](self, "_addUInt16Attribute:value:", 6, [v21 unsignedIntValue]);
        }

        else if ([v20 isEqualToString:@"gl-attr-conndata"])
        {
          [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:3 value:v21];
        }

        else if ([v20 isEqualToString:@"gl-attr-acceptdelay"])
        {
          -[IDSGlobalLinkMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 7, [v21 unsignedIntValue]);
        }

        else if ([v20 isEqualToString:@"gl-attr-relayremoteaddress"])
        {
          -[IDSGlobalLinkMessage _addAddressAttribute:value:](self, "_addAddressAttribute:value:", 8, [v21 sa]);
        }

        else if ([v20 isEqualToString:@"gl-attr-hmac"])
        {
          objc_storeStrong(&self->_hmacKeyData, Value);
          v33 = 1;
        }

        else if ([v20 isEqualToString:@"gl-attr-rttreport"])
        {
          [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:10 value:v21];
        }

        else if ([v20 isEqualToString:@"gl-attr-linkuuid"])
        {
          [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:11 value:v21];
        }

        else if ([v20 isEqualToString:@"gl-attr-capability"])
        {
          -[IDSGlobalLinkMessage _addUInt16Attribute:value:](self, "_addUInt16Attribute:value:", 12, [v21 unsignedIntValue]);
        }

        else if ([v20 isEqualToString:@"gl-attr-local-cbuuid"])
        {
          [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:13 value:v21];
        }

        else if ([v20 isEqualToString:@"gl-attr-remote-cbuuid"])
        {
          [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:14 value:v21];
        }

        else if ([v20 isEqualToString:@"gl-attr-generic-data"])
        {
          [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:15 value:v21];
        }

        else if ([v20 isEqualToString:@"gl-attr-error-code-data"])
        {
          -[IDSGlobalLinkMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 17, [v21 unsignedIntValue]);
        }

        else if ([v20 isEqualToString:@"gl-attr-version"])
        {
          -[IDSGlobalLinkMessage _addUInt16Attribute:value:](self, "_addUInt16Attribute:value:", 18, [v21 unsignedShortValue]);
        }

        else if ([v20 isEqualToString:@"gl-attr-link-flags"])
        {
          -[IDSGlobalLinkMessage _addUInt16Attribute:value:](self, "_addUInt16Attribute:value:", 19, [v21 unsignedShortValue]);
        }

        else if ([v20 isEqualToString:@"gl-attr-data-so-mask"])
        {
          -[IDSGlobalLinkMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 20, [v21 unsignedIntValue]);
        }

        else if ([v20 isEqualToString:@"gl-attr-relay-link-interface-info"])
        {
          [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:21 value:v21];
        }

        else if ([v20 isEqualToString:@"gl-attr-mkm"])
        {
          [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:22 value:v21];
        }

        else
        {
          v22 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v20;
            _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "receive invalid attribute key %@.", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"receive invalid attribute key %@.", v23, v24, v25, v26, v27, v20);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive invalid attribute key %@.", v28, v29, v30, v31, v20);
              }
            }
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v16);

    if (v33)
    {
      memset(buf, 170, 20);
      v32 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:20];
      [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:9 value:v32];
    }
  }

  else
  {
  }
}

- (BOOL)getAttribute:(int64_t)attribute attribute:(IDSGlobalLinkAttribute *)a4
{
  numAttribute = self->_numAttribute;
  if (numAttribute < 1)
  {
    return 0;
  }

  attributes = self->_attributes;
  if (self->_attributes[0].type != attribute)
  {
    v7 = 0;
    v8 = &self->_attributes[1];
    while (numAttribute - 1 != v7)
    {
      type = v8->type;
      ++v8;
      ++v7;
      if (type == attribute)
      {
        v6 = v7 < numAttribute;
        attributes = v8 - 1;
        goto LABEL_8;
      }
    }

    return 0;
  }

  v6 = 1;
LABEL_8:
  memcpy(a4, attributes, sizeof(IDSGlobalLinkAttribute));
  return v6;
}

- (BOOL)verifyHMacDigestWithKey:(id)key inputBuffer:(char *)buffer inputLength:(int)length
{
  macOut[3] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v8 = keyCopy;
  memset(macOut, 170, 20);
  if (length < 44)
  {
    v15 = 0;
  }

  else
  {
    CCHmac(0, [keyCopy bytes], objc_msgSend(keyCopy, "length"), buffer, (length - 24), macOut);
    v9 = &buffer[length];
    v10 = *(v9 - 20);
    v11 = *(v9 - 12);
    v12 = *(v9 - 1);
    v15 = macOut[0] == v10 && macOut[1] == v11 && LODWORD(macOut[2]) == v12;
  }

  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v45 = v15;
    if (v15)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v18 = [MEMORY[0x1E695DEF0] dataWithBytes:macOut length:20];
    __imHexString = [v18 __imHexString];
    v20 = [MEMORY[0x1E695DEF0] dataWithBytes:&buffer[length - 20] length:20];
    __imHexString2 = [v20 __imHexString];
    __imHexString3 = [v8 __imHexString];
    *buf = 138413058;
    v47 = v17;
    v48 = 2112;
    v49 = __imHexString;
    v50 = 2112;
    v51 = __imHexString2;
    v52 = 2112;
    v53 = __imHexString3;
    _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "verifyHMacDigestWithKey result:%@ (HMac:%@, Recv:%@, Key: %@).", buf, 0x2Au);

    v15 = v45;
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    if (v15)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:macOut length:20];
    __imHexString4 = [v24 __imHexString];
    v26 = &buffer[length - 20];
    v27 = [MEMORY[0x1E695DEF0] dataWithBytes:v26 length:20];
    __imHexString5 = [v27 __imHexString];
    __imHexString6 = [v8 __imHexString];
    _IDSLogTransport(@"GL", @"IDS", @"verifyHMacDigestWithKey result:%@ (HMac:%@, Recv:%@, Key: %@).", v29, v30, v31, v32, v33, v23);

    if (_IDSShouldLog(0))
    {
      v34 = [MEMORY[0x1E695DEF0] dataWithBytes:macOut length:20];
      __imHexString7 = [v34 __imHexString];
      v36 = [MEMORY[0x1E695DEF0] dataWithBytes:v26 length:20];
      __imHexString8 = [v36 __imHexString];
      __imHexString9 = [v8 __imHexString];
      _IDSLogV(0, @"IDSFoundation", @"GL", @"verifyHMacDigestWithKey result:%@ (HMac:%@, Recv:%@, Key: %@).", v38, v39, v40, v41, v23);
    }
  }

  return v15;
}

- (BOOL)write:(char *)write outputLength:(int *)length
{
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "[IDSGlobalLinkMessage write] attempting with all fields", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"[IDSGlobalLinkMessage write] attempting with all fields", v8, v9, v10, v11, v12, *v40);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"[IDSGlobalLinkMessage write] attempting with all fields", v13, v14, v15, v16, *v40);
      }
    }
  }

  if ([(IDSGlobalLinkMessage *)self _write:write outputLength:length dropLowerPriorityFields:0])
  {
    goto LABEL_15;
  }

  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v42 = 0;
    _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "[IDSGlobalLinkMessage write] failed with all fields; will drop lower priority fields", v42, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"[IDSGlobalLinkMessage write] failed with all fields; will drop lower priority fields", v18, v19, v20, v21, v22, *v40);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"[IDSGlobalLinkMessage write] failed with all fields; will drop lower priority fields", v23, v24, v25, v26, *v40);
      }
    }
  }

  if ([(IDSGlobalLinkMessage *)self _write:write outputLength:length dropLowerPriorityFields:1])
  {
LABEL_15:
    v27 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v40 = 0;
      _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "[IDSGlobalLinkMessage write] success", v40, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v33 = @"[IDSGlobalLinkMessage write] success";
      goto LABEL_25;
    }
  }

  else
  {
    v34 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *v41 = 0;
      _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "[IDSGlobalLinkMessage write] WARNING: failed even after dropping lower priority fields", v41, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v33 = @"[IDSGlobalLinkMessage write] WARNING: failed even after dropping lower priority fields";
LABEL_25:
      _IDSLogTransport(@"GL", @"IDS", v33, v28, v29, v30, v31, v32, *v40);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", v33, v35, v36, v37, v38, *v40);
      }
    }
  }

  return 1;
}

- (BOOL)_write:(char *)_write outputLength:(int *)length dropLowerPriorityFields:(BOOL)fields
{
  lengthCopy2 = length;
  v81 = *MEMORY[0x1E69E9840];
  *_write = bswap32(LOWORD(self->_command)) >> 16;
  *(_write + 12) = 0;
  *(_write + 4) = 0;
  v8 = _write + 20;
  numAttribute = self->_numAttribute;
  if (numAttribute <= 0)
  {
    v75 = 0;
    v26 = 1;
    goto LABEL_41;
  }

  fieldsCopy = fields;
  v11 = 0;
  v75 = 0;
  attributes = self->_attributes;
  while (1)
  {
    if (fieldsCopy && attributes->type == 22)
    {
      goto LABEL_30;
    }

    v13 = attributes->len + 4;
    v76 = attributes->len + 4;
    if (v8 - _write + v13 >= 1025)
    {
      break;
    }

    type = attributes->type;
    if (type <= 7)
    {
      if (attributes->type > 4u)
      {
        if (type - 5 >= 2)
        {
          if (type != 7)
          {
LABEL_22:
            v15 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = attributes->type;
              *buf = 67109120;
              LODWORD(v78) = v16;
              _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "receive invalid command attribute (%04x), skip.", buf, 8u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"receive invalid command attribute (%04x), skip.", v17, v18, v19, v20, v21, attributes->type);
                if (_IDSShouldLog(0))
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"receive invalid command attribute (%04x), skip.", v22, v23, v24, v25, attributes->type);
                }
              }
            }

            goto LABEL_29;
          }

LABEL_21:
          writeIDSGLAttrU32(&attributes->type, v8, &v76);
          goto LABEL_29;
        }

LABEL_19:
        writeIDSGLAttrU16(&attributes->type, v8, &v76);
        goto LABEL_29;
      }

      if (type - 1 < 2)
      {
        goto LABEL_19;
      }

      if (type - 3 >= 2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (type > 0x16)
      {
        goto LABEL_11;
      }

      if (((1 << type) & 0x60EC00) == 0)
      {
        if (((1 << type) & 0xC1000) != 0)
        {
          goto LABEL_19;
        }

        if (type == 20)
        {
          goto LABEL_21;
        }

LABEL_11:
        if (type == 8)
        {
          writeIDSGLAttrAddress(&attributes->type, v8, &v76);
          goto LABEL_29;
        }

        if (type != 9)
        {
          goto LABEL_22;
        }

        v75 = 1;
      }
    }

    writeIDSGLAttrBinaryData(&attributes->type, v8, &v76);
LABEL_29:
    v8 += v76;
    numAttribute = self->_numAttribute;
LABEL_30:
    ++v11;
    ++attributes;
    if (v11 >= numAttribute)
    {
      v26 = 1;
      goto LABEL_40;
    }
  }

  v27 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "exceed max command buffer length, stop.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"exceed max command buffer length, stop.", v28, v29, v30, v31, v32, v70);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"exceed max command buffer length, stop.", v33, v34, v35, v36, v71);
      }
    }
  }

  v26 = 0;
LABEL_40:
  lengthCopy2 = length;
LABEL_41:
  *(_write + 1) = bswap32(v8 - _write - 20) >> 16;
  if (lengthCopy2)
  {
    *lengthCopy2 = v8 - _write;
  }

  v37 = OSLogHandleForTransportCategory();
  v38 = lengthCopy2;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v39 = @"NO";
    if (v75)
    {
      v40 = @"YES";
    }

    else
    {
      v40 = @"NO";
    }

    if (self->_hmacKeyData)
    {
      v39 = @"YES";
    }

    *buf = 138412546;
    v78 = v40;
    v79 = 2112;
    v80 = v39;
    _os_log_impl(&dword_1A7AD9000, v37, OS_LOG_TYPE_DEFAULT, "has hmac? %@; data: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v46 = (v75 & 1) != 0 ? @"YES" : @"NO";
    _IDSLogTransport(@"GL", @"IDS", @"has hmac? %@; data: %@", v41, v42, v43, v44, v45, v46);
    if (_IDSShouldLog(0))
    {
      _IDSLogV(0, @"IDSFoundation", @"GL", @"has hmac? %@; data: %@", v47, v48, v49, v50, v46);
    }
  }

  if (v75)
  {
    hmacKeyData = self->_hmacKeyData;
    if (hmacKeyData)
    {
      CCHmac(0, [(NSData *)hmacKeyData bytes], [(NSData *)self->_hmacKeyData length], _write, *v38 - 24, &_write[*v38 - 20]);
      v52 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = [MEMORY[0x1E695DEF0] dataWithBytes:&_write[*v38 - 20] length:20];
        __imHexString = [v53 __imHexString];
        __imHexString2 = [(NSData *)self->_hmacKeyData __imHexString];
        *buf = 138412546;
        v78 = __imHexString;
        v79 = 2112;
        v80 = __imHexString2;
        _os_log_impl(&dword_1A7AD9000, v52, OS_LOG_TYPE_DEFAULT, "HMac:%@, Key: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v56 = [MEMORY[0x1E695DEF0] dataWithBytes:&_write[*v38 - 20] length:20];
          __imHexString3 = [v56 __imHexString];
          __imHexString4 = [(NSData *)self->_hmacKeyData __imHexString];
          _IDSLogTransport(@"GL", @"IDS", @"HMac:%@, Key: %@", v58, v59, v60, v61, v62, __imHexString3);

          if (_IDSShouldLog(0))
          {
            v63 = [MEMORY[0x1E695DEF0] dataWithBytes:&_write[*v38 - 20] length:20];
            __imHexString5 = [v63 __imHexString];
            __imHexString6 = [(NSData *)self->_hmacKeyData __imHexString];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"HMac:%@, Key: %@", v65, v66, v67, v68, __imHexString5);
          }
        }
      }
    }
  }

  return v26;
}

- (BOOL)read:(char *)read inputLength:(int)length
{
  v4 = *&length;
  v74 = *MEMORY[0x1E69E9840];
  if (length <= 19)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v71 = v4;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "receive invalid command data length %uB, too short.", buf, 8u);
    }

    v6 = os_log_shim_legacy_logging_enabled();
    if (!v6)
    {
      return v6;
    }

    v6 = _IDSShouldLogTransport();
    if (!v6)
    {
      return v6;
    }

    _IDSLogTransport(@"GL", @"IDS", @"receive invalid command data length %uB, too short.", v7, v8, v9, v10, v11, v4);
    v6 = _IDSShouldLog(0);
    if (!v6)
    {
      return v6;
    }

    _IDSLogV(0, @"IDSFoundation", @"GL", @"receive invalid command data length %uB, too short.", v12, v13, v14, v15, v4);
    goto LABEL_15;
  }

  self->_command = bswap32(*read) >> 16;
  v17 = (bswap32(*(read + 1)) >> 16) + 20;
  if (v17 > length)
  {
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v71 = v4;
      v72 = 1024;
      v73 = v17;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "receive incomplete packet (%d < %d), skip.", buf, 0xEu);
    }

    v6 = os_log_shim_legacy_logging_enabled();
    if (!v6)
    {
      return v6;
    }

    v6 = _IDSShouldLogTransport();
    if (!v6)
    {
      return v6;
    }

    _IDSLogTransport(@"GL", @"IDS", @"receive incomplete packet (%d < %d), skip.", v19, v20, v21, v22, v23, v4);
    v6 = _IDSShouldLog(0);
    if (!v6)
    {
      return v6;
    }

    _IDSLogV(0, @"IDSFoundation", @"GL", @"receive incomplete packet (%d < %d), skip.", v24, v25, v26, v27, v4);
LABEL_15:
    LOBYTE(v6) = 0;
    return v6;
  }

  v69 = -1431655766;
  if (length < 0x18)
  {
    v28 = 0;
LABEL_18:
    self->_numAttribute = v28;
    LOBYTE(v6) = 1;
    return v6;
  }

  v29 = 0;
  v30 = &read[length];
  v31 = (read + 24);
  v32 = read + 20;
  attributes = self->_attributes;
  while (1)
  {
    v34 = bswap32(*v32) >> 16;
    attributes->type = v34;
    v35 = bswap32(*(v32 + 1)) >> 16;
    attributes->len = v35;
    v69 = v35;
    if (v30 - v31 < v35)
    {
      v48 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v71 = v30 - v31;
        v72 = 1024;
        v73 = v69;
        _os_log_impl(&dword_1A7AD9000, v48, OS_LOG_TYPE_DEFAULT, "Buffer may overflow, %d, %d, return", buf, 0xEu);
      }

      v6 = os_log_shim_legacy_logging_enabled();
      if (v6)
      {
        v6 = _IDSShouldLogTransport();
        if (v6)
        {
          _IDSLogTransport(@"GL", @"IDS", @"Buffer may overflow, %d, %d, return", v49, v50, v51, v52, v53, v30 - v31);
          v6 = _IDSShouldLog(0);
          if (v6)
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Buffer may overflow, %d, %d, return", v54, v55, v56, v57, v30 - v31);
            goto LABEL_15;
          }
        }
      }

      return v6;
    }

    if (v35 >= 0x401)
    {
      break;
    }

    if (v34 <= 6)
    {
      if ((v34 - 1) < 2)
      {
        goto LABEL_34;
      }

      if ((v34 - 3) >= 2)
      {
        if ((v34 - 5) >= 2)
        {
LABEL_41:
          v37 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            type = attributes->type;
            *buf = 67109120;
            v71 = type;
            _os_log_impl(&dword_1A7AD9000, v37, OS_LOG_TYPE_DEFAULT, "receive invalid attribute %04x, skip.", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"receive invalid attribute %04x, skip.", v39, v40, v41, v42, v43, attributes->type);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive invalid attribute %04x, skip.", v44, v45, v46, v47, attributes->type);
              }
            }
          }

          goto LABEL_36;
        }

LABEL_34:
        readIDSGLAttrU16(attributes, &v69, v31, v30 - v31);
        goto LABEL_36;
      }

LABEL_35:
      readIDSGLAttrBinaryData(attributes, &v69, v31, v30 - v31);
      goto LABEL_36;
    }

    if (v34 <= 0x16)
    {
      if (((1 << v34) & 0x60EE00) != 0)
      {
        goto LABEL_35;
      }

      if (((1 << v34) & 0xC1000) != 0)
      {
        goto LABEL_34;
      }

      if (v34 == 20)
      {
        goto LABEL_40;
      }
    }

    if (v34 == 7)
    {
LABEL_40:
      readIDSGLAttrU32(attributes, &v69, v31, v30 - v31);
    }

    else
    {
      if (v34 != 8)
      {
        goto LABEL_41;
      }

      readIDSGLAttrAddress(attributes, &v69, v31, v30 - v31);
    }

LABEL_36:
    v32 = v31 + v69;
    v28 = v29 + 1;
    v31 = (v32 + 4);
    if (v32 + 4 <= v30)
    {
      ++attributes;
      if (v29++ < 0x13)
      {
        continue;
      }
    }

    goto LABEL_18;
  }

  v58 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v71 = v69;
    _os_log_impl(&dword_1A7AD9000, v58, OS_LOG_TYPE_DEFAULT, "attrLen %d is greater than kIDSGLAttributeMaxSize, return", buf, 8u);
  }

  v6 = os_log_shim_legacy_logging_enabled();
  if (v6)
  {
    v6 = _IDSShouldLogTransport();
    if (v6)
    {
      _IDSLogTransport(@"GL", @"IDS", @"attrLen %d is greater than kIDSGLAttributeMaxSize, return", v59, v60, v61, v62, v63, v69);
      v6 = _IDSShouldLog(0);
      if (v6)
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"attrLen %d is greater than kIDSGLAttributeMaxSize, return", v64, v65, v66, v67, v69);
        goto LABEL_15;
      }
    }
  }

  return v6;
}

@end