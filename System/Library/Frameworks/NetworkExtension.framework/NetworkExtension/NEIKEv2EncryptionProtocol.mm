@interface NEIKEv2EncryptionProtocol
- (BOOL)isEqual:(id)equal;
- (NEIKEv2EncryptionProtocol)initWithEncryptionType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initWithEncryptionWireType:(__int16)type keyLength:;
- (uint64_t)blockLength;
- (uint64_t)ivLength;
- (uint64_t)keyMaterialLength;
- (unint64_t)hash;
@end

@implementation NEIKEv2EncryptionProtocol

- (NEIKEv2EncryptionProtocol)initWithEncryptionType:(unint64_t)type
{
  selfCopy = self;
  v11 = *MEMORY[0x1E69E9840];
  if (type - 1 >= 9)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      String = NEIKEv2EncryptionTypeCreateString(type);
      v9 = 138412290;
      v10 = String;
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "Invalid NEIKEv2EncryptionType %@", &v9, 0xCu);
    }

    v4 = 0;
  }

  else
  {
    selfCopy = [(NEIKEv2EncryptionProtocol *)self initWithEncryptionWireType:word_1BAA4E7B4[type - 1] keyLength:?];
    v4 = selfCopy;
  }

  return v4;
}

- (id)initWithEncryptionWireType:(__int16)type keyLength:
{
  if (result)
  {
    v7.receiver = result;
    v7.super_class = NEIKEv2EncryptionProtocol;
    result = objc_msgSendSuper2(&v7, sel_init);
    if (result)
    {
      *(result + 2) = a2;
      *(result + 4) = type;
    }

    else
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *v6 = 0;
        _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "[super init] failed", v6, 2u);
      }

      return 0;
    }
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NEIKEv2EncryptionProtocol allocWithZone:zone];
  if (self)
  {
    wireType = self->_wireType;
    keyLength = self->_keyLength;
  }

  else
  {
    wireType = 0;
    keyLength = 0;
  }

  return [(NEIKEv2EncryptionProtocol *)v4 initWithEncryptionWireType:keyLength keyLength:?];
}

- (unint64_t)hash
{
  if (self)
  {
    return *(self + 16) | (*(self + 8) << 16);
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && [equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    if (self)
    {
      if (self->_wireType == *(v5 + 2))
      {
        LODWORD(v6) = self->_keyLength;
LABEL_6:
        v7 = v6 == v5[4];
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v6 = *(v5 + 2);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v7 = 0;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (id)description
{
  if (!self)
  {
    String = @"Invalid";
LABEL_8:
    v8 = String;
    String = v8;
    goto LABEL_10;
  }

  String = NEIKEv2EncryptionWireTypeCreateString(self->_wireType);
  if (!self->_keyLength)
  {
    goto LABEL_8;
  }

  if (self->_keyLength == 128)
  {
    wireType = self->_wireType;
    v5 = wireType > 0x1E;
    v6 = (1 << wireType) & 0x40101000;
    if (!v5 && v6 != 0)
    {
      goto LABEL_8;
    }
  }

  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%u", String, self->_keyLength];
LABEL_10:
  v9 = v8;

  return v9;
}

- (uint64_t)ivLength
{
  if (result)
  {
    if ((*(result + 16) | 8) == 0x1C)
    {
      return 8;
    }

    else
    {
      return [(NEIKEv2EncryptionProtocol *)result blockLength];
    }
  }

  return result;
}

- (uint64_t)blockLength
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2 > 19)
    {
      if (v2 == 20 || v2 == 28)
      {
        return 0;
      }
    }

    else
    {
      if ((v2 - 2) < 2)
      {
        return 8;
      }

      if (v2 == 12)
      {
        return 16;
      }
    }

    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      String = NEIKEv2EncryptionWireTypeCreateString(*(v1 + 16));
      v6 = 138412290;
      v7 = String;
      _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "Unknown encryption wire type %@", &v6, 0xCu);
    }

    return 0;
  }

  return result;
}

- (uint64_t)keyMaterialLength
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2 <= 19)
    {
      if (v2 == 2)
      {
        return 8;
      }

      if (v2 == 3)
      {
        return 24;
      }

      if (v2 != 12)
      {
        goto LABEL_15;
      }

      v3 = *(result + 8);
      if (v3 == 128)
      {
        return 16;
      }

      if (v3 == 256)
      {
        return 32;
      }

      v4 = ne_log_obj();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v2 > 29)
      {
        if (v2 != 30)
        {
          if (v2 != 31)
          {
            goto LABEL_15;
          }

          return 36;
        }
      }

      else if (v2 != 20)
      {
        if (v2 != 28)
        {
LABEL_15:
          v4 = ne_log_obj();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
          {
            String = NEIKEv2EncryptionWireTypeCreateString(*(v1 + 16));
            v9 = 138412290;
            v10 = String;
            _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "Unknown encryption wire type %@", &v9, 0xCu);
          }

          goto LABEL_27;
        }

        return 36;
      }

      v6 = *(result + 8);
      if (v6 == 128)
      {
        return 20;
      }

      if (v6 == 256)
      {
        return 36;
      }

      v4 = ne_log_obj();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
LABEL_27:

        return 0;
      }
    }

    v7 = NEIKEv2EncryptionWireTypeCreateString(*(v1 + 16));
    v8 = *(v1 + 8);
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = v8;
    _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "Unsupported %@ key length %u", &v9, 0x12u);

    goto LABEL_27;
  }

  return result;
}

@end