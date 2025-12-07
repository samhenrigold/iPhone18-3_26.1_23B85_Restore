@interface TSBonjourIPv4Address
+ (BOOL)getLinkLayerAddress:(char *)address forIPv4Address:(unsigned int)pv4Address error:(id *)error;
- (BOOL)getLinkLayerAddressError:(id *)error;
- (TSBonjourIPv4Address)init;
- (TSBonjourIPv4Address)initWithIPv4Address:(unsigned int)address;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSBonjourIPv4Address

+ (BOOL)getLinkLayerAddress:(char *)address forIPv4Address:(unsigned int)pv4Address error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = 101;
  v8 = MEMORY[0x277D86220];
  while (1)
  {
    size = 0;
    *v27 = xmmword_26F0DFC40;
    v28 = 0x40000000002;
    if (sysctl(v27, 6u, 0, &size, 0, 0))
    {
      v13 = __error();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *v13;
        *buf = 67109120;
        v26 = v14;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Error %d getting IPv4 routing table size", buf, 8u);
      }

LABEL_12:
      v10 = 0;
      goto LABEL_13;
    }

    v9 = malloc_type_malloc(size, 0x7A9EB9A3uLL);
    if (v9)
    {
      break;
    }

LABEL_8:
    if (--v7 <= 1)
    {
      goto LABEL_12;
    }
  }

  v10 = v9;
  if (sysctl(v27, 6u, v9, &size, 0, 0))
  {
    v11 = __error();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *v11;
      *buf = 67109120;
      v26 = v12;
      _os_log_impl(&dword_26F080000, v8, OS_LOG_TYPE_DEFAULT, "Error %d getting IPv4 routing table", buf, 8u);
    }

    free(v10);
    goto LABEL_8;
  }

  if (!size)
  {
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  v17 = 0;
  v18 = v10;
  while (1)
  {
    v19 = *(v18 + 92);
    if ((v19 & 3) != 0)
    {
      v19 = (v19 | 3) + 1;
    }

    if (*(v18 + 93) == 2)
    {
      v20 = v18 + v19 + 92;
      if (v20[1] == 18 && v20[6] == 6 && *(v20 + 1) && bswap32(*(v18 + 24)) == pv4Address)
      {
        break;
      }
    }

    v21 = *v18;
    v17 += v21;
    v18 = (v18 + v21);
    if (v17 >= size)
    {
      goto LABEL_13;
    }
  }

  v22 = &v20[v20[5]];
  v23 = *(v22 + 2);
  *(address + 2) = *(v22 + 6);
  *address = v23;
  v15 = 1;
LABEL_14:
  free(v10);
  return v15;
}

- (TSBonjourIPv4Address)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  [v3 raise:v4 format:?];

  return 0;
}

- (TSBonjourIPv4Address)initWithIPv4Address:(unsigned int)address
{
  v5.receiver = self;
  v5.super_class = TSBonjourIPv4Address;
  result = [(TSBonjourIPv4Address *)&v5 init];
  if (result)
  {
    result->_ipv4Address = address;
    result->_hasLinkLayerAddress = 0;
    *result->_linkLayerAddress = -1;
    *&result->_linkLayerAddress[4] = -1;
  }

  return result;
}

- (BOOL)getLinkLayerAddressError:(id *)error
{
  v4 = [objc_opt_class() getLinkLayerAddress:? forIPv4Address:? error:?];
  if (v4)
  {
    self->_hasLinkLayerAddress = 1;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:?];
  [(TSBonjourIPv4Address *)self ipv4Address];
  v5 = [v4 initWithIPv4Address:?];
  if ([(TSBonjourIPv4Address *)self hasLinkLayerAddress])
  {
    [v5 setHasLinkLayerAddress:?];
    linkLayerAddress = [v5 linkLayerAddress];
    linkLayerAddress2 = [(TSBonjourIPv4Address *)self linkLayerAddress];
    v8 = *(linkLayerAddress2 + 2);
    *linkLayerAddress = *linkLayerAddress2;
    *(linkLayerAddress + 2) = v8;
  }

  return v5;
}

@end