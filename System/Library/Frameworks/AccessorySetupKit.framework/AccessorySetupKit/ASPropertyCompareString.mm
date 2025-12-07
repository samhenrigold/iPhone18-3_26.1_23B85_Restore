@interface ASPropertyCompareString
- (ASPropertyCompareString)initWithCoder:(id)coder;
- (ASPropertyCompareString)initWithString:(id)string compareOptions:(unint64_t)options;
- (ASPropertyCompareString)initWithXPCObject:(id)object error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation ASPropertyCompareString

- (ASPropertyCompareString)initWithString:(id)string compareOptions:(unint64_t)options
{
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = ASPropertyCompareString;
  v8 = [(ASPropertyCompareString *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_string, string);
    v9->_compareOptions = options;
    v10 = v9;
  }

  return v9;
}

- (ASPropertyCompareString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASPropertyCompareString *)self init];
  if (v5)
  {
    v6 = coderCopy;
    if ([v6 containsValueForKey:@"pSco"])
    {
      v5->_compareOptions = [v6 decodeIntegerForKey:@"pSco"];
    }

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v5;
  }

  else
  {
    [ASAccessory initWithCoder:coderCopy];
  }

  return v5;
}

- (ASPropertyCompareString)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(ASPropertyCompareString *)self init];
  if (v7)
  {
    if (MEMORY[0x2383B4C90](objectCopy) == MEMORY[0x277D86468])
    {
      v10 = 0;
      if (CUXPCDecodeUInt64RangedEx() == 6)
      {
        v7->_compareOptions = v10;
      }

      CUXPCDecodeNSString();
      v8 = v7;
    }

    else if (error)
    {
      ASErrorF(-6756, "XPC non-dict");
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    [ASAccessory initWithXPCObject:error error:&v10];
    v8 = v10;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  compareOptions = self->_compareOptions;
  v7 = coderCopy;
  if (compareOptions)
  {
    [coderCopy encodeInteger:compareOptions forKey:@"pSco"];
    coderCopy = v7;
  }

  string = self->_string;
  if (string)
  {
    [v7 encodeObject:string forKey:@"pSc"];
    coderCopy = v7;
  }
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  compareOptions = self->_compareOptions;
  if (compareOptions)
  {
    xpc_dictionary_set_uint64(objectCopy, "pSco", compareOptions);
  }

  string = self->_string;
  xdict = v5;
  uTF8String = [(NSString *)string UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(xdict, "pSc", uTF8String);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_string copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v5[2] = self->_compareOptions;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    v6 = equalCopy;
    if ([(ASPropertyCompareString *)v6 isMemberOfClass:objc_opt_class()]&& (compareOptions = self->_compareOptions, compareOptions == [(ASPropertyCompareString *)v6 compareOptions]))
    {
      string = self->_string;
      string = [(ASPropertyCompareString *)v6 string];
      v10 = string;
      v11 = string;
      v12 = v11;
      if (v10 == v11)
      {
        v13 = 1;
      }

      else if ((v10 != 0) == (v11 == 0))
      {
        v13 = 0;
      }

      else
      {
        v13 = [(NSString *)v10 isEqual:v11];
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 8;
  }

  else
  {
    v4 = 12;
  }

  v18 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v17 = 0;
    v5 = objc_opt_class();
    CUAppendF(&v17, &v18, "%@", v5);
    v6 = v17;
  }

  string = self->_string;
  if (string)
  {
    v16 = v6;
    v8 = string;
    CUAppendF(&v16, &v18, "%@", v8);
    v9 = v16;

    v6 = v9;
  }

  compareOptions = self->_compareOptions;
  if (compareOptions)
  {
    v15 = v6;
    CUAppendF(&v15, &v18, "%lu", compareOptions);
    v11 = v15;

    v6 = v11;
  }

  v12 = &stru_28499D698;
  if (v6)
  {
    v12 = v6;
  }

  v13 = v12;

  return v13;
}

- (unint64_t)hash
{
  string = self->_string;
  if (string)
  {
    v4 = [(NSString *)string hash]^ 0x13;
  }

  else
  {
    v4 = 19;
  }

  return self->_compareOptions + v4;
}

@end