@interface NEIKEv2SubnetAttribute
- (NEIKEv2SubnetAttribute)initWithAddress:(id)address prefix:(unsigned __int8)prefix;
- (NWAddressEndpoint)subnetMaskAddress;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (id)initCustomWithAttributeType:(unint64_t)type attributeName:(id)name addressValue:(id)value prefix:(unsigned __int8)prefix;
- (unint64_t)attributeType;
- (unsigned)ipv4SubnetMask;
@end

@implementation NEIKEv2SubnetAttribute

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  attributeType = [(NEIKEv2SubnetAttribute *)self attributeType];
  attributeName = [(NEIKEv2ConfigurationAttribute *)self attributeName];
  address = [(NEIKEv2SubnetAttribute *)self address];
  v8 = [address copy];
  v9 = [v4 initCustomWithAttributeType:attributeType attributeName:attributeName addressValue:v8 prefix:{-[NEIKEv2SubnetAttribute prefix](self, "prefix")}];

  return v9;
}

- (NWAddressEndpoint)subnetMaskAddress
{
  v13 = *MEMORY[0x1E69E9840];
  address = [(NEIKEv2SubnetAttribute *)self address];
  addressFamily = [address addressFamily];

  prefix = [(NEIKEv2SubnetAttribute *)self prefix];
  if (addressFamily == 2)
  {
    if (prefix <= 0x20)
    {
      HIDWORD(v10) = 0;
      LODWORD(v10) = 528;
      *(&v10 + 4) = [(NEIKEv2SubnetAttribute *)self ipv4SubnetMask];
LABEL_8:
      v8 = [MEMORY[0x1E6977E08] endpointWithAddress:&v10];
      goto LABEL_9;
    }
  }

  else if (prefix <= 0x80)
  {
    v12 = 0;
    v11 = 0;
    v10 = 0x1E1CuLL;
    if (prefix)
    {
      v6 = prefix >> 3;
      v7 = prefix & 7;
      __memset_chk();
      if (v7)
      {
        *(&v10 + v6 + 8) = -1 << (8 - v7);
      }
    }

    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (unsigned)ipv4SubnetMask
{
  prefix = [(NEIKEv2SubnetAttribute *)self prefix];
  v3 = bswap32(-1 << (32 - prefix));
  if (prefix <= 0x20)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v5 = *&indent;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  attributeName = [(NEIKEv2ConfigurationAttribute *)self attributeName];
  [v7 appendPrettyObject:attributeName withName:@"Name" andIndent:v5 options:options];

  String = NEIKEv2AttributeTypeCreateString([(NEIKEv2SubnetAttribute *)self attributeType]);
  [v7 appendPrettyObject:String withName:@"Type" andIndent:v5 options:options];

  typeDescription = [(NEIKEv2SubnetAttribute *)self typeDescription];
  [v7 appendPrettyObject:typeDescription withName:@"Payload Type" andIndent:v5 options:options];

  address = [(NEIKEv2SubnetAttribute *)self address];
  [v7 appendPrettyObject:address withName:@"Address" andIndent:v5 options:options];

  [v7 appendPrettyInt:-[NEIKEv2SubnetAttribute prefix](self withName:"prefix") andIndent:@"Prefix" options:{v5, options}];

  return v7;
}

- (unint64_t)attributeType
{
  if (self)
  {
    return *(self + 32);
  }

  return self;
}

- (id)initCustomWithAttributeType:(unint64_t)type attributeName:(id)name addressValue:(id)value prefix:(unsigned __int8)prefix
{
  nameCopy = name;
  valueCopy = value;
  v19.receiver = self;
  v19.super_class = NEIKEv2SubnetAttribute;
  v12 = [(NEIKEv2SubnetAttribute *)&v19 init];
  v14 = v12;
  if (v12)
  {
    v12->_customType = type;
    objc_setProperty_atomic(v12, v13, nameCopy, 8);
    objc_storeStrong(&v14->_address, value);
    v14->_prefix = prefix;
    v15 = v14;
  }

  else
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18[0] = 0;
      _os_log_fault_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_FAULT, "[super init] failed", v18, 2u);
    }
  }

  return v14;
}

- (NEIKEv2SubnetAttribute)initWithAddress:(id)address prefix:(unsigned __int8)prefix
{
  addressCopy = address;
  v15.receiver = self;
  v15.super_class = NEIKEv2SubnetAttribute;
  v8 = [(NEIKEv2SubnetAttribute *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_address, address);
    objc_setProperty_atomic(v9, v10, @"AssignedSubnet", 8);
    v9->_prefix = prefix;
    v11 = v9;
  }

  else
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *v14 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "[super init] failed", v14, 2u);
    }
  }

  return v9;
}

@end