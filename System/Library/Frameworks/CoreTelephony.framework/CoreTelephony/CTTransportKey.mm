@interface CTTransportKey
- (CTTransportKey)initWithCoder:(id)coder;
- (CTTransportKey)initWithKey:(id)key epki:(id)epki forIdx:(int)idx toReplace:(id)replace epki:(id)a7;
- (CTTransportKey)initWithKey:(id)key epki:(id)epki forIdx:(int)idx toReplaceEpki:(id)replaceEpki isLastResort:(BOOL)resort;
- (CTTransportKey)initWithKey:(id)key forIdx:(int)idx toReplace:(id)replace;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTTransportKey

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", index=%d", -[CTTransportKey index](self, "index")];
  v4 = [(CTTransportKey *)self key];
  [v3 appendFormat:@", key=%@", v4];

  key_epki = [(CTTransportKey *)self key_epki];
  [v3 appendFormat:@", epki=%@", key_epki];

  retiredKey_epki = [(CTTransportKey *)self retiredKey_epki];
  [v3 appendFormat:@", retired epki=%@", retiredKey_epki];

  [v3 appendFormat:@", last resort=%d", -[CTTransportKey last_resort](self, "last_resort")];
  [v3 appendString:@">"];

  return v3;
}

- (CTTransportKey)initWithKey:(id)key epki:(id)epki forIdx:(int)idx toReplaceEpki:(id)replaceEpki isLastResort:(BOOL)resort
{
  resortCopy = resort;
  v9 = *&idx;
  keyCopy = key;
  epkiCopy = epki;
  replaceEpkiCopy = replaceEpki;
  v18.receiver = self;
  v18.super_class = CTTransportKey;
  v15 = [(CTTransportKey *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(CTTransportKey *)v15 setIndex:v9];
    [(CTTransportKey *)v16 setKey:keyCopy];
    [(CTTransportKey *)v16 setKey_epki:epkiCopy];
    [(CTTransportKey *)v16 setRetiredKey_epki:replaceEpkiCopy];
    [(CTTransportKey *)v16 setLast_resort:resortCopy];
  }

  return v16;
}

- (CTTransportKey)initWithKey:(id)key forIdx:(int)idx toReplace:(id)replace
{
  v5 = *&idx;
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = CTTransportKey;
  v8 = [(CTTransportKey *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CTTransportKey *)v8 setIndex:v5];
    [(CTTransportKey *)v9 setKey:keyCopy];
    [(CTTransportKey *)v9 setKey_epki:0];
    [(CTTransportKey *)v9 setRetiredKey_epki:0];
    [(CTTransportKey *)v9 setLast_resort:0];
  }

  return v9;
}

- (CTTransportKey)initWithKey:(id)key epki:(id)epki forIdx:(int)idx toReplace:(id)replace epki:(id)a7
{
  v8 = *&idx;
  keyCopy = key;
  epkiCopy = epki;
  v13 = a7;
  v17.receiver = self;
  v17.super_class = CTTransportKey;
  v14 = [(CTTransportKey *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(CTTransportKey *)v14 setIndex:v8];
    [(CTTransportKey *)v15 setKey:keyCopy];
    [(CTTransportKey *)v15 setKey_epki:epkiCopy];
    [(CTTransportKey *)v15 setRetiredKey_epki:v13];
    [(CTTransportKey *)v15 setLast_resort:0];
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setIndex:{-[CTTransportKey index](self, "index")}];
  v5 = [(CTTransportKey *)self key];
  v6 = [v5 copy];
  [v4 setKey:v6];

  key_epki = [(CTTransportKey *)self key_epki];
  v8 = [key_epki copy];
  [v4 setKey_epki:v8];

  retiredKey_epki = [(CTTransportKey *)self retiredKey_epki];
  v10 = [retiredKey_epki copy];
  [v4 setRetiredKey_epki:v10];

  [v4 setLast_resort:{-[CTTransportKey last_resort](self, "last_resort")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[CTTransportKey index](self forKey:{"index"), @"tkey_index"}];
  v4 = [(CTTransportKey *)self key];
  [coderCopy encodeObject:v4 forKey:@"tkey_value"];

  key_epki = [(CTTransportKey *)self key_epki];
  [coderCopy encodeObject:key_epki forKey:@"tkey_epki"];

  retiredKey_epki = [(CTTransportKey *)self retiredKey_epki];
  [coderCopy encodeObject:retiredKey_epki forKey:@"tkey_retired_epki"];

  [coderCopy encodeBool:-[CTTransportKey last_resort](self forKey:{"last_resort"), @"last_resort"}];
}

- (CTTransportKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTTransportKey;
  v5 = [(CTTransportKey *)&v13 init];
  if (v5)
  {
    v5->_index = [coderCopy decodeInt32ForKey:@"tkey_index"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tkey_value"];
    key = v5->_key;
    v5->_key = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tkey_epki"];
    key_epki = v5->_key_epki;
    v5->_key_epki = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tkey_retired_epki"];
    retiredKey_epki = v5->_retiredKey_epki;
    v5->_retiredKey_epki = v10;

    v5->_last_resort = [coderCopy decodeBoolForKey:@"last_resort"];
  }

  return v5;
}

@end