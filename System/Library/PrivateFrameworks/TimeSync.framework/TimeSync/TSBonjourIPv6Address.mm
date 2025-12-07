@interface TSBonjourIPv6Address
+ (BOOL)getLinkLayerAddress:(char *)address forIPv6Address:(const char *)pv6Address error:(id *)error;
- (BOOL)getLinkLayerAddressError:(id *)error;
- (TSBonjourIPv6Address)init;
- (TSBonjourIPv6Address)initWithIPv6Address:(const char *)address;
- (id)copyWithZone:(_NSZone *)zone;
- (void)pokeDestinationAtPort:(unsigned __int16)port onInterfaceIndex:(unsigned int)index;
@end

@implementation TSBonjourIPv6Address

+ (BOOL)getLinkLayerAddress:(char *)address forIPv6Address:(const char *)pv6Address error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = 101;
  v8 = MEMORY[0x277D86220];
  while (1)
  {
    size = 0;
    *v28 = xmmword_26F0DFC50;
    v29 = 0x40000000002;
    if (sysctl(v28, 6u, 0, &size, 0, 0))
    {
      v13 = __error();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *v13;
        *buf = 67109120;
        v27 = v14;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Error %d getting IPv4 routing table size", buf, 8u);
      }

LABEL_12:
      v10 = 0;
      goto LABEL_13;
    }

    v9 = malloc_type_malloc(size, 0xF81040DBuLL);
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
  if (sysctl(v28, 6u, v9, &size, 0, 0))
  {
    v11 = __error();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *v11;
      *buf = 67109120;
      v27 = v12;
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

    if (*(v18 + 93) == 30)
    {
      v20 = v18 + v19 + 92;
      if (v20[1] == 18 && v20[6] == 6 && *(v20 + 1) && *(v18 + 50) == *pv6Address && *(v18 + 54) == *(pv6Address + 1))
      {
        break;
      }
    }

    v22 = *v18;
    v17 += v22;
    v18 = (v18 + v22);
    if (v17 >= size)
    {
      goto LABEL_13;
    }
  }

  v23 = &v20[v20[5]];
  v24 = *(v23 + 2);
  *(address + 2) = *(v23 + 6);
  *address = v24;
  v15 = 1;
LABEL_14:
  free(v10);
  return v15;
}

- (TSBonjourIPv6Address)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  [v3 raise:v4 format:?];

  return 0;
}

- (TSBonjourIPv6Address)initWithIPv6Address:(const char *)address
{
  v5.receiver = self;
  v5.super_class = TSBonjourIPv6Address;
  result = [(TSBonjourIPv6Address *)&v5 init];
  if (result)
  {
    *result->_ipv6Address = *address;
    result->_hasLinkLayerAddress = 0;
    *result->_linkLayerAddress = -1;
    *&result->_linkLayerAddress[4] = -1;
  }

  return result;
}

- (BOOL)getLinkLayerAddressError:(id *)error
{
  v4 = [objc_opt_class() getLinkLayerAddress:? forIPv6Address:? error:?];
  if (v4)
  {
    self->_hasLinkLayerAddress = 1;
  }

  return v4;
}

- (void)pokeDestinationAtPort:(unsigned __int16)port onInterfaceIndex:(unsigned int)index
{
  memset(&v6[1], 0, 24);
  HIWORD(v6[0]) = __rev16(port);
  LOWORD(v6[0]) = 7708;
  *&v6[2] = *[(TSBonjourIPv6Address *)self ipv6Address];
  if (LOBYTE(v6[2]) == 254 && (BYTE1(v6[2]) & 0xC0) == 0x80)
  {
    v6[6] = index;
  }

  v5 = socket(30, 1, 0);
  fcntl(v5, 4, 4);
  connect(v5, v6, 0x1Cu);
  close(v5);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:?];
  [(TSBonjourIPv6Address *)self ipv6Address];
  v5 = [v4 initWithIPv6Address:?];
  if ([(TSBonjourIPv6Address *)self hasLinkLayerAddress])
  {
    [v5 setHasLinkLayerAddress:?];
    linkLayerAddress = [v5 linkLayerAddress];
    linkLayerAddress2 = [(TSBonjourIPv6Address *)self linkLayerAddress];
    v8 = *(linkLayerAddress2 + 2);
    *linkLayerAddress = *linkLayerAddress2;
    *(linkLayerAddress + 2) = v8;
  }

  return v5;
}

@end