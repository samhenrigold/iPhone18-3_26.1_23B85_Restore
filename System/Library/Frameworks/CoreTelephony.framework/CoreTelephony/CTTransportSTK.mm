@interface CTTransportSTK
- (CTTransportSTK)initWithCoder:(id)coder;
- (CTTransportSTK)initWithSTK:(id)k forIdx:(int)idx;
- (CTTransportSTK)initWithSTK:(id)k forIdx:(int)idx epki:(id)epki;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTTransportSTK

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", index=%d", -[CTTransportSTK index](self, "index")];
  key_epki = [(CTTransportSTK *)self key_epki];
  [v3 appendFormat:@", epki=%@", key_epki];

  v5 = [(CTTransportSTK *)self stk];
  [v3 appendFormat:@", stk=%@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (CTTransportSTK)initWithSTK:(id)k forIdx:(int)idx
{
  v4 = *&idx;
  kCopy = k;
  v10.receiver = self;
  v10.super_class = CTTransportSTK;
  v7 = [(CTTransportSTK *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(CTTransportSTK *)v7 setIndex:v4];
    [(CTTransportSTK *)v8 setStk:kCopy];
  }

  return v8;
}

- (CTTransportSTK)initWithSTK:(id)k forIdx:(int)idx epki:(id)epki
{
  v6 = *&idx;
  kCopy = k;
  epkiCopy = epki;
  v13.receiver = self;
  v13.super_class = CTTransportSTK;
  v10 = [(CTTransportSTK *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(CTTransportSTK *)v10 setIndex:v6];
    [(CTTransportSTK *)v11 setKey_epki:epkiCopy];
    [(CTTransportSTK *)v11 setStk:kCopy];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setIndex:{-[CTTransportSTK index](self, "index")}];
  key_epki = [(CTTransportSTK *)self key_epki];
  v6 = [key_epki copy];
  [v4 setKey_epki:v6];

  v7 = [(CTTransportSTK *)self stk];
  v8 = [v7 copy];
  [v4 setStk:v8];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[CTTransportSTK index](self forKey:{"index"), @"tkey_index"}];
  key_epki = [(CTTransportSTK *)self key_epki];
  [coderCopy encodeObject:key_epki forKey:@"tkey_epki"];

  v6 = [(CTTransportSTK *)self stk];
  [coderCopy encodeObject:v6 forKey:@"tkey_value"];
}

- (CTTransportSTK)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTTransportSTK;
  v5 = [(CTTransportSTK *)&v11 init];
  if (v5)
  {
    v5->_index = [coderCopy decodeInt32ForKey:@"tkey_index"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tkey_epki"];
    key_epki = v5->_key_epki;
    v5->_key_epki = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tkey_value"];
    stk = v5->_stk;
    v5->_stk = v8;
  }

  return v5;
}

@end