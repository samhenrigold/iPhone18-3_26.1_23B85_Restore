@interface DAMailboxGetUpdatesRequest
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)initRequestForBodyFormat:(int)format withBodySizeLimit:(int)limit;
- (unint64_t)hash;
@end

@implementation DAMailboxGetUpdatesRequest

- (id)initRequestForBodyFormat:(int)format withBodySizeLimit:(int)limit
{
  v4 = *&limit;
  v5 = *&format;
  v9.receiver = self;
  v9.super_class = DAMailboxGetUpdatesRequest;
  v6 = [(DAMailboxRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(DAMailboxRequest *)v6 setRequestType:1];
    [(DAMailboxGetUpdatesRequest *)v7 setMaxSize:v4];
    [(DAMailboxRequest *)v7 setBodyFormat:v5];
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d\n%d", -[DAMailboxGetUpdatesRequest maxSize](self, "maxSize"), -[DAMailboxRequest bodyFormat](self, "bodyFormat")];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    maxSize = [v5 maxSize];
    if (maxSize == [(DAMailboxGetUpdatesRequest *)self maxSize])
    {
      bodyFormat = [v5 bodyFormat];
      v8 = bodyFormat == [(DAMailboxRequest *)self bodyFormat];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = DAMailboxGetUpdatesRequest;
  v4 = [(DAMailboxGetUpdatesRequest *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ maxSize %d, bodyFormat %d", v4, -[DAMailboxGetUpdatesRequest maxSize](self, "maxSize"), -[DAMailboxRequest bodyFormat](self, "bodyFormat")];

  return v5;
}

@end