@interface IDSStunCandidate
+ (id)candidateWithType:(unint64_t)type transport:(int64_t)transport radioAccessTechnology:(unsigned int)technology mtu:(unsigned int)mtu index:(int)index address:(sockaddr *)address external:(sockaddr *)external;
- (BOOL)hasNATIPv4Address;
- (BOOL)hasNATIPv4External;
- (BOOL)isCellularStunCandidate;
- (BOOL)isCompatibleWithStunCandidate:(id)candidate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSameNetworkType:(id)type;
- (IDSStunCandidate)initWithType:(unint64_t)type transport:(int64_t)transport radioAccessTechnology:(unsigned int)technology mtu:(unsigned int)mtu index:(int)index address:(sockaddr *)address external:(sockaddr *)external;
- (NSData)addressData;
- (NSData)externalAddressData;
- (NSString)addressString;
- (NSString)externalAddressString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unsigned)externalPort;
- (unsigned)port;
- (void)dealloc;
- (void)setAddress:(const sockaddr *)address external:(const sockaddr *)external;
- (void)setExternal:(sockaddr *)external;
- (void)setExternalAddress:(id)address;
- (void)setLocalPort:(unsigned __int16)port;
- (void)setPrefix:(id *)prefix;
@end

@implementation IDSStunCandidate

+ (id)candidateWithType:(unint64_t)type transport:(int64_t)transport radioAccessTechnology:(unsigned int)technology mtu:(unsigned int)mtu index:(int)index address:(sockaddr *)address external:(sockaddr *)external
{
  v9 = [[IDSStunCandidate alloc] initWithType:type transport:transport radioAccessTechnology:*&technology mtu:*&mtu index:*&index address:address external:external];

  return v9;
}

- (IDSStunCandidate)initWithType:(unint64_t)type transport:(int64_t)transport radioAccessTechnology:(unsigned int)technology mtu:(unsigned int)mtu index:(int)index address:(sockaddr *)address external:(sockaddr *)external
{
  v19.receiver = self;
  v19.super_class = IDSStunCandidate;
  v15 = [(IDSStunCandidate *)&v19 init];
  v16 = v15;
  if (v15)
  {
    v15->_active = 1;
    v15->_type = type;
    v15->_transport = transport;
    if (type > 3)
    {
      v17 = 0;
    }

    else
    {
      v17 = qword_1A7E40E50[type];
    }

    v15->_priority = v17;
    v15->_index = index;
    if (address && IsValidSA(address))
    {
      memcpy(&v16->_address, address, address->sa_len);
    }

    if (external && IsValidSA(external))
    {
      memcpy(&v16->_external, external, external->sa_len);
    }

    v16->_radioAccessTechnology = technology;
    v16->_mtu = mtu;
  }

  return v16;
}

- (void)dealloc
{
  self->_cellularSlicingFlags = 0;
  v2.receiver = self;
  v2.super_class = IDSStunCandidate;
  [(IDSStunCandidate *)&v2 dealloc];
}

- (id)description
{
  v22 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v3;
  v21 = v3;
  v18 = v3;
  v19 = v3;
  v16 = v3;
  v17 = v3;
  *__str = v3;
  v15 = v3;
  v12 = v3;
  v13 = v3;
  v10 = v3;
  v11 = v3;
  v8 = v3;
  v9 = v3;
  *v6 = v3;
  v7 = v3;
  SAToIPPortString(__str, 0x80uLL, &self->_address);
  SAToIPPortString(v6, 0x80uLL, &self->_external);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%p/%s/%s/%s/%1d/%s/0x%x/%u]", self, __str, v6, (&_IDSStunCandidateTypeStrings)[self->_type], self->_index, IDSRadioAccessTechnologyToString(self->_radioAccessTechnology), self->_linkFlags, self->_dataSoMask];

  return v4;
}

- (NSString)addressString
{
  v5 = *MEMORY[0x1E69E9840];
  SAToIPPortString(&v4, 0x80uLL, [(IDSStunCandidate *)self address:0xAAAAAAAAAAAAAAAALL]);
  v2 = [MEMORY[0x1E696AEC0] stringWithCString:&v4 encoding:4];

  return v2;
}

- (NSString)externalAddressString
{
  v5 = *MEMORY[0x1E69E9840];
  SAToIPPortString(&v4, 0x80uLL, [(IDSStunCandidate *)self external:0xAAAAAAAAAAAAAAAALL]);
  v2 = [MEMORY[0x1E696AEC0] stringWithCString:&v4 encoding:4];

  return v2;
}

- (void)setExternal:(sockaddr *)external
{
  if (external && IsValidSA(external))
  {
    sa_len = external->sa_len;

    memcpy(&self->_external, external, sa_len);
  }
}

- (void)setAddress:(const sockaddr *)address external:(const sockaddr *)external
{
  externalCopy = external;
  v52 = *MEMORY[0x1E69E9840];
  externalCopy2 = external;
  __src = address;
  if (address && IsValidSA(address))
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v50 = v6;
    v51 = v6;
    v48 = v6;
    v49 = v6;
    v46 = v6;
    v47 = v6;
    *__str = v6;
    v45 = v6;
    v42 = v6;
    v43 = v6;
    v40 = v6;
    v41 = v6;
    v38 = v6;
    v39 = v6;
    *v36 = v6;
    v37 = v6;
    SAToIPPortString(__str, 0x80uLL, &self->_address);
    SAToIPPortString(v36, 0x80uLL, &__src);
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v31 = __str;
      v32 = 2080;
      v33 = v36;
      v34 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "update address (%s->%s) for %@.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"update address (%s->%s) for %@.", v8, v9, v10, v11, v12, __str);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"update address (%s->%s) for %@.", v13, v14, v15, v16, __str);
        }
      }
    }

    memcpy(&self->_address, __src, *__src);
    externalCopy = externalCopy2;
  }

  if (externalCopy && IsValidSA(externalCopy))
  {
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v50 = v17;
    v51 = v17;
    v48 = v17;
    v49 = v17;
    v46 = v17;
    v47 = v17;
    *__str = v17;
    v45 = v17;
    v42 = v17;
    v43 = v17;
    v40 = v17;
    v41 = v17;
    v38 = v17;
    v39 = v17;
    *v36 = v17;
    v37 = v17;
    SAToIPPortString(__str, 0x80uLL, &self->_external);
    SAToIPPortString(v36, 0x80uLL, &externalCopy2);
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v31 = __str;
      v32 = 2080;
      v33 = v36;
      v34 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "update external address (%s->%s) for %@.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"update external address (%s->%s) for %@.", v19, v20, v21, v22, v23, __str);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"update external address (%s->%s) for %@.", v24, v25, v26, v27, __str);
      }
    }

    memcpy(&self->_external, externalCopy2, *externalCopy2);
  }
}

- (void)setLocalPort:(unsigned __int16)port
{
  if (port)
  {
    SASetPort(&self->_address, port);
  }
}

- (void)setExternalAddress:(id)address
{
  v8 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[6] = v4;
  v7[7] = v4;
  v7[4] = v4;
  v7[5] = v4;
  v7[2] = v4;
  v7[3] = v4;
  v7[0] = v4;
  v7[1] = v4;
  v5 = IPPortStringToSA(address, v7);
  if (v5)
  {
    v6 = v5;
    if (IsValidSA(v5))
    {
      memcpy(&self->_external, v6, *v6);
    }
  }
}

- (void)setPrefix:(id *)prefix
{
  if (prefix)
  {
    self->_prefix = *prefix;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  type = self->_type;
  v6 = (type == 3) == ([equalCopy type] == 3) && IsSameSA(&self->_address, objc_msgSend(equalCopy, "address")) && IsSameSA(&self->_external, objc_msgSend(equalCopy, "external"));

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[IDSStunCandidate alloc] initWithType:self->_type transport:self->_transport radioAccessTechnology:self->_radioAccessTechnology mtu:self->_mtu index:self->_index address:&self->_address external:&self->_external];
  [(IDSStunCandidate *)v4 setDataSoMask:self->_dataSoMask];
  [(IDSStunCandidate *)v4 setLinkFlags:self->_linkFlags];
  [(IDSStunCandidate *)v4 setIsCLAT46:self->_isCLAT46];
  [(IDSStunCandidate *)v4 setCellularSlicingFlags:self->_cellularSlicingFlags];
  [(IDSStunCandidate *)v4 setInterfaceName:self->_interfaceName];
  [(IDSStunCandidate *)v4 setDelegatedInterfaceName:self->_delegatedInterfaceName];
  [(IDSStunCandidate *)v4 setDelegatedIndex:self->_delegatedIndex];
  [(IDSStunCandidate *)v4 setIsRealloc:self->_isRealloc];
  return v4;
}

- (BOOL)isCompatibleWithStunCandidate:(id)candidate
{
  candidateCopy = candidate;
  transport = self->_transport;
  if (transport != [candidateCopy transport])
  {
    goto LABEL_14;
  }

  v6 = *([candidateCopy external] + 1);
  if (v6 != self->_address.ss_family)
  {
    goto LABEL_14;
  }

  if (v6 != 2)
  {
    goto LABEL_13;
  }

  v7 = *&self->_address.__ss_pad1[2];
  v8 = *([candidateCopy external] + 4);
  isCellularStunCandidate = [(IDSStunCandidate *)self isCellularStunCandidate];
  if (isCellularStunCandidate == [candidateCopy isCellularStunCandidate] || (v10 = bswap32(v7), HIBYTE(v10) != 10) && (v10 & 0xFFF00000) != 0xAC100000 && (v10 & 0xFFFF0000) != 0xC0A80000 || (LOBYTE(v11) = 0, v12 = bswap32(v8), (v12 & 0xFFFF0000) != 0xC0A80000) && (v12 & 0xFF000000) != 0xA000000 && (v12 & 0xFFF00000) != 0xAC100000)
  {
    v13 = *self->_address.__ss_pad1;
    external = [candidateCopy external];
    if (v7 != v8 || v13 != *(external + 2))
    {
LABEL_13:
      type = self->_type;
      if ((type == 3) == ([candidateCopy type] == 3))
      {
        isLinkLocalStunCandidate = [(IDSStunCandidate *)self isLinkLocalStunCandidate];
        v11 = isLinkLocalStunCandidate ^ [candidateCopy isLinkLocalStunCandidate] ^ 1;
        goto LABEL_15;
      }
    }

LABEL_14:
    LOBYTE(v11) = 0;
  }

LABEL_15:

  return v11;
}

- (BOOL)isSameNetworkType:(id)type
{
  typeCopy = type;
  if ([typeCopy isCellularStunCandidate] && -[IDSStunCandidate isCellularStunCandidate](self, "isCellularStunCandidate"))
  {
    v5 = 1;
  }

  else if ([typeCopy radioAccessTechnology] && objc_msgSend(typeCopy, "radioAccessTechnology") != 9)
  {
    v5 = 0;
  }

  else
  {
    radioAccessTechnology = self->_radioAccessTechnology;
    if (radioAccessTechnology)
    {
      v7 = radioAccessTechnology == 9;
    }

    else
    {
      v7 = 1;
    }

    v5 = v7;
  }

  return v5;
}

- (BOOL)isCellularStunCandidate
{
  radioAccessTechnology = self->_radioAccessTechnology;
  if (radioAccessTechnology)
  {
    v3 = radioAccessTechnology == 9;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (BOOL)hasNATIPv4Address
{
  if (self->_address.ss_family != 2)
  {
    return 0;
  }

  if (*&self->_address.__ss_pad1[2] == 10)
  {
    return 1;
  }

  v3 = bswap32(*&self->_address.__ss_pad1[2]);
  v4 = v3 >> 20;
  v5 = HIWORD(v3) == 49320;
  return v4 == 2753 || v5;
}

- (BOOL)hasNATIPv4External
{
  if (self->_external.ss_family != 2)
  {
    return 0;
  }

  if (*&self->_external.__ss_pad1[2] == 10)
  {
    return 1;
  }

  v3 = bswap32(*&self->_external.__ss_pad1[2]);
  v4 = v3 >> 20;
  v5 = HIWORD(v3) == 49320;
  return v4 == 2753 || v5;
}

- (NSData)addressData
{
  if (IsValidSA(&self->_address))
  {
    v3 = 56;
    if (self->_address.ss_family == 2)
    {
      v3 = 52;
      v4 = 4;
    }

    else
    {
      v4 = 16;
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:self + v3 length:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSData)externalAddressData
{
  if (IsValidSA(&self->_external))
  {
    v3 = 184;
    if (self->_external.ss_family == 2)
    {
      v3 = 180;
      v4 = 4;
    }

    else
    {
      v4 = 16;
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:self + v3 length:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unsigned)port
{
  valid = IsValidSA(&self->_address);
  if (valid)
  {
    return bswap32(*self->_address.__ss_pad1) >> 16;
  }

  return valid;
}

- (unsigned)externalPort
{
  valid = IsValidSA(&self->_external);
  if (valid)
  {
    return bswap32(*self->_external.__ss_pad1) >> 16;
  }

  return valid;
}

@end