@interface NEIKEv2NotifyPayload
+ (NEIKEv2NotifyPayload)createNotifyPayloadType:(uint64_t)type;
+ (NEIKEv2NotifyPayload)createNotifyPayloadType:(void *)type data:;
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)data;
- (__CFString)copyError;
- (__CFString)copyNotifyTypeDescription;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (uint64_t)copyPPKID;
- (uint64_t)getPPKIDType;
@end

@implementation NEIKEv2NotifyPayload

- (BOOL)parsePayloadData:(id)data
{
  v29 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [dataCopy length];
  if (v5 > 3)
  {
    v6 = v5;
    v25 = 0;
    [dataCopy getBytes:&v25 length:4];
    v7 = BYTE1(v25);
    v8 = BYTE1(v25) + 4;
    if (v6 < v8)
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v6;
        v27 = 1024;
        v28 = v7;
        _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "Invalid Notify payload length %zu too small for SPI length %u", buf, 0x12u);
      }
    }

    if (self)
    {
      self->_notifyType = bswap32(HIWORD(v25)) >> 16;
    }

    if (v25 == 240)
    {
      if (v7 == 8)
      {
        *buf = 0;
        [dataCopy getBytes:buf range:{4, 8}];
        v9 = NEIKEv2TLSSPI;
        goto LABEL_15;
      }

      p_super = ne_log_obj();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        if (self)
        {
          notifyType = self->_notifyType;
        }

        else
        {
          notifyType = 0;
        }

        *buf = 134218240;
        *&buf[4] = notifyType;
        v27 = 1024;
        v28 = v7;
        v22 = "Invalid Notify %zu TLS SPI length %u";
        goto LABEL_43;
      }
    }

    else if (v25 == 3)
    {
      if (v7 == 4)
      {
        *buf = 0;
        [dataCopy getBytes:buf range:{4, 4}];
        v10 = [NEIKEv2ESPSPI alloc];
        v11 = [(NEIKEv2ESPSPI *)v10 initWithValue:*buf];
        goto LABEL_16;
      }

      p_super = ne_log_obj();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        if (self)
        {
          v21 = self->_notifyType;
        }

        else
        {
          v21 = 0;
        }

        *buf = 134218240;
        *&buf[4] = v21;
        v27 = 1024;
        v28 = v7;
        v22 = "Invalid Notify %zu ESP SPI length %u";
        goto LABEL_43;
      }
    }

    else
    {
      if (v25 != 1 || !v7)
      {
        goto LABEL_19;
      }

      if (v7 == 8)
      {
        *buf = 0;
        [dataCopy getBytes:buf range:{4, 8}];
        v9 = NEIKEv2IKESPI;
LABEL_15:
        v13 = [v9 alloc];
        v11 = [v13 initWithValue:*buf];
LABEL_16:
        p_super = &v11->super.super;
        if (self)
        {
          objc_setProperty_atomic(self, v12, v11, 48);
        }

        goto LABEL_18;
      }

      p_super = ne_log_obj();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        if (self)
        {
          v24 = self->_notifyType;
        }

        else
        {
          v24 = 0;
        }

        *buf = 134218240;
        *&buf[4] = v24;
        v27 = 1024;
        v28 = v7;
        v22 = "Invalid Notify %zu IKE SPI length %u";
LABEL_43:
        _os_log_error_impl(&dword_1BA83C000, p_super, OS_LOG_TYPE_ERROR, v22, buf, 0x12u);
      }
    }

LABEL_18:

LABEL_19:
    if (v6 > v8)
    {
      v16 = [dataCopy subdataWithRange:{v8, v6 - v8}];
      if (self)
      {
        objc_setProperty_atomic(self, v15, v16, 40);
      }
    }

    hasRequiredFields = [(NEIKEv2NotifyPayload *)self hasRequiredFields];
    goto LABEL_24;
  }

  v19 = ne_log_obj();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "[NEIKEv2NotifyPayload parsePayloadData:]";
    _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, "BACKTRACE %s called with null (payloadDataLength >= sizeof(ikev2_payload_notify_hdr_t))", buf, 0xCu);
  }

  hasRequiredFields = 0;
LABEL_24:

  return hasRequiredFields;
}

- (BOOL)generatePayloadData
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (self->super._payloadDataVector)
    {
      return 1;
    }

    if ([(NEIKEv2NotifyPayload *)self hasRequiredFields])
    {
      notifyType = self->_notifyType;
      LOWORD(v17[0]) = 0;
      WORD1(v17[0]) = bswap32(notifyType) >> 16;
      v5 = objc_getProperty(self, v3, 48, 1);
      if (v5)
      {
        v6 = v5;
        copySPIData = [v5 copySPIData];
        v8 = [copySPIData length];
        BYTE1(v17[0]) = [copySPIData length];
        LOBYTE(v17[0]) = [v6 protocol];
        v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:{v8 + 4, v17[0]}];
        [v9 appendBytes:v17 length:4];
        [v9 appendData:copySPIData];

        objc_storeStrong(&self->super._payloadSubHeader, v9);
LABEL_9:
        if (objc_getProperty(self, v10, 40, 1))
        {
          v18[0] = objc_getProperty(self, v11, 40, 1);
          v12 = MEMORY[0x1E695DEC8];
          v13 = v18[0];
          v14 = [v12 arrayWithObjects:v18 count:1];

          [(NEIKEv2KeyExchangeHandler *)self setSharedSecret:v14];
LABEL_12:

          return 1;
        }

LABEL_11:
        [(NEIKEv2KeyExchangeHandler *)self setSharedSecret:?];
        goto LABEL_12;
      }

      if (notifyType == 16418)
      {
        LOBYTE(v17[0]) = 1;
      }

LABEL_8:
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v17 length:4];
      [(NEIKEv2Payload *)self setPayloadSubHeader:v9];
      v6 = 0;
      if (!self)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else if ([0 hasRequiredFields])
  {
    LODWORD(v17[0]) = 0;
    goto LABEL_8;
  }

  v16 = ne_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v17[0]) = 0;
    _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "Notify payload missing required fields", v17, 2u);
  }

  return 0;
}

- (BOOL)hasRequiredFields
{
  if (self)
  {
    LOBYTE(self) = self->_notifyType != 0;
  }

  return self;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  typeDescription = [(NEIKEv2NotifyPayload *)self typeDescription];
  [v7 appendPrettyObject:typeDescription withName:@"Payload Type" andIndent:v5 options:options];

  copyNotifyTypeDescription = [(NEIKEv2NotifyPayload *)self copyNotifyTypeDescription];
  [v7 appendPrettyObject:copyNotifyTypeDescription withName:@"Notify Type" andIndent:v5 options:options];

  if (self)
  {
    [v7 appendPrettyObject:objc_getProperty(self withName:v10 andIndent:40 options:{1), @"Notify Data", v5, options}];
    Property = objc_getProperty(self, v11, 48, 1);
  }

  else
  {
    [v7 appendPrettyObject:0 withName:@"Notify Data" andIndent:v5 options:options];
    Property = 0;
  }

  [v7 appendPrettyObject:Property withName:@"SPI" andIndent:v5 options:options];

  return v7;
}

- (__CFString)copyNotifyTypeDescription
{
  if (result)
  {
    v1 = result;
    isa = result[1].isa;
    if (isa <= 41040)
    {
      v3 = isa - 0x4000;
      switch(v3)
      {
        case 0:
          result = @"InitialContact";
          break;
        case 1:
          result = @"SetWindowSize";
          break;
        case 2:
          result = @"AdditionalTSPossible";
          break;
        case 3:
          result = @"IPCOMPSupported";
          break;
        case 4:
          result = @"NATDetectionSourceIP";
          break;
        case 5:
          result = @"NATDetectionDestinationIP";
          break;
        case 6:
          result = @"Cookie";
          break;
        case 7:
          result = @"UseTransportMode";
          break;
        case 8:
          result = @"HTTPCertLookupSupported";
          break;
        case 9:
          result = @"RekeySA";
          break;
        case 10:
          result = @"ESPTFCPaddingNotSupported";
          break;
        case 11:
          result = @"NonFirstFragmentsAlso";
          break;
        case 12:
          result = @"MOBIKESupported";
          break;
        case 13:
          result = @"AdditionalIP4Address";
          break;
        case 14:
          result = @"AdditionalIP6Address";
          break;
        case 15:
          result = @"NoAdditionalAddresses";
          break;
        case 16:
          result = @"UpdateSAAddresses";
          break;
        case 17:
          result = @"Cookie2";
          break;
        case 18:
          result = @"NoNATSAllowed";
          break;
        case 19:
          result = @"AuthLifetime";
          break;
        case 20:
          result = @"MultipleAuthSupported";
          break;
        case 21:
          result = @"AnotherAuthFollows";
          break;
        case 22:
          result = @"RedirectSupported";
          break;
        case 23:
          result = @"ServerRedirect";
          break;
        case 24:
          result = @"RedirectedFrom";
          break;
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
        case 31:
        case 32:
        case 35:
        case 36:
        case 37:
        case 38:
        case 39:
        case 41:
        case 42:
        case 43:
        case 44:
        case 45:
        case 48:
        case 49:
        case 50:
        case 55:
        case 56:
          return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u", v1[1].isa];
        case 33:
          result = @"EAPOnlyAuthentication";
          break;
        case 34:
          result = @"ChildlessIKEv2Supported";
          break;
        case 40:
          result = @"SecurePasswordMethods";
          break;
        case 46:
          result = @"IKEv2FragmentationSupported";
          break;
        case 47:
          result = @"SignatureHashAlgorithms";
          break;
        case 51:
          result = @"UsePPK";
          break;
        case 52:
          result = @"PPKIdentity";
          break;
        case 53:
          result = @"NoPPKAuth";
          break;
        case 54:
          result = @"IntermediateExchangeSupported";
          break;
        case 57:
          result = @"AdditionalKeyExchange";
          break;
        default:
          result = @"None";
          switch(v3)
          {
            case 0:
              return result;
            case 1:
              result = @"UnsupportedCriticalPayload";
              break;
            case 2:
            case 3:
            case 6:
            case 8:
            case 10:
            case 12:
            case 13:
            case 15:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 42:
            case 45:
            case 46:
              return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u", v1[1].isa];
            case 4:
              result = @"InvalidIKESPI";
              break;
            case 5:
              result = @"InvalidMajorVersion";
              break;
            case 7:
              result = @"InvalidSyntax";
              break;
            case 9:
              result = @"InvalidMessageID";
              break;
            case 11:
              result = @"InvalidSPI";
              break;
            case 14:
              result = @"NoProposalChosen";
              break;
            case 17:
              result = @"InvalidKEPayload";
              break;
            case 24:
              result = @"AuthenticationFailed";
              break;
            case 34:
              result = @"SinglePairRequired";
              break;
            case 35:
              result = @"NoAdditionalSAs";
              break;
            case 36:
              result = @"InternalAddressFailure";
              break;
            case 37:
              result = @"FailedCPRequired";
              break;
            case 38:
              result = @"TSUnacceptable";
              break;
            case 39:
              result = @"InvalidSelectors";
              break;
            case 40:
              result = @"UnacceptableAddresses";
              break;
            case 41:
              result = @"UnexpectedNATDetected";
              break;
            case 43:
              result = @"TemporaryFailure";
              break;
            case 44:
              result = @"ChildSANotFound";
              break;
            case 47:
              result = @"StateNotFound";
              break;
            default:
              if (v3 != 10500)
              {
                return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u", v1[1].isa];
              }

              result = @"NetworkFailure";
              break;
          }

          break;
      }
    }

    else
    {
      if (isa <= 49999)
      {
        if (isa == 41041)
        {
          return @"BackoffTimer";
        }

        if (isa == 41101)
        {
          return @"DeviceIdentity";
        }
      }

      else
      {
        switch(isa)
        {
          case 50000:
            return @"SequencePerTrafficClass";
          case 51015:
            return @"N1ModeCapability";
          case 51115:
            return @"N1ModeInformation";
        }
      }

      return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%u", v1[1].isa];
    }
  }

  return result;
}

+ (NEIKEv2NotifyPayload)createNotifyPayloadType:(uint64_t)type
{
  objc_opt_self();
  result = objc_alloc_init(NEIKEv2NotifyPayload);
  if (result)
  {
    result->_notifyType = 50000;
  }

  return result;
}

+ (NEIKEv2NotifyPayload)createNotifyPayloadType:(void *)type data:
{
  typeCopy = type;
  objc_opt_self();
  v5 = objc_alloc_init(NEIKEv2NotifyPayload);
  v7 = v5;
  if (v5)
  {
    v5->_notifyType = a2;
    objc_setProperty_atomic(v5, v6, typeCopy, 40);
  }

  return v7;
}

- (__CFString)copyError
{
  selfCopy = self;
  v8[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (self[1].isa - 1 > 0x3FFE)
    {
      return 0;
    }

    else
    {
      v2 = objc_alloc(MEMORY[0x1E696ABC0]);
      isa = selfCopy[1].isa;
      v7 = *MEMORY[0x1E696A278];
      copyNotifyTypeDescription = [(NEIKEv2NotifyPayload *)selfCopy copyNotifyTypeDescription];
      v8[0] = copyNotifyTypeDescription;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
      selfCopy = [v2 initWithDomain:@"NEIKEv2ProtocolErrorDomain" code:isa userInfo:v5];
    }
  }

  return selfCopy;
}

- (uint64_t)getPPKIDType
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(self + 4) == 16436)
  {
    if ([objc_getProperty(self a2])
    {
      LOBYTE(v6) = 0;
      [objc_getProperty(self v3];
      return v6;
    }

    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      selfCopy2 = self;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "Cannot get PPK ID type from too short notification %@", &v6, 0xCu);
    }
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = 138412290;
      selfCopy2 = self;
      _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "Cannot get PPK ID type from notification %@", &v6, 0xCu);
    }
  }

  return 0;
}

- (uint64_t)copyPPKID
{
  v11 = *MEMORY[0x1E69E9840];
  if (self[4] != 16436)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v9 = 138412290;
      selfCopy2 = self;
      _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "Cannot copy PPK ID from notification %@", &v9, 0xCu);
    }

    goto LABEL_8;
  }

  if (![objc_getProperty(self a2])
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      selfCopy2 = self;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "Cannot copy PPK ID from too short notification %@", &v9, 0xCu);
    }

LABEL_8:

    return 0;
  }

  v4 = objc_getProperty(self, v3, 40, 1);
  v6 = [v4 subdataWithRange:{1, objc_msgSend(objc_getProperty(self, v5, 40, 1), "length") - 1}];

  return v6;
}

@end