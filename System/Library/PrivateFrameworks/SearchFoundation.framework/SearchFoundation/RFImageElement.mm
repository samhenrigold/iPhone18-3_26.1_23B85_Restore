@interface RFImageElement
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFImageElement)initWithCoder:(id)coder;
- (RFImageElement)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFImageElement

- (unint64_t)hash
{
  sources = [(RFImageElement *)self sources];
  v3 = [sources hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(RFImageElement *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    sources = [(RFImageElement *)self sources];
    sources2 = [(RFImageElement *)v5 sources];
    if ((sources != 0) == (sources2 == 0))
    {
      v11 = 0;
    }

    else
    {
      sources3 = [(RFImageElement *)self sources];
      if (sources3)
      {
        sources4 = [(RFImageElement *)self sources];
        sources5 = [(RFImageElement *)v5 sources];
        v11 = [sources4 isEqual:sources5];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  sources = [(RFImageElement *)self sources];
  v6 = [sources copy];
  [v4 setSources:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFImageElement alloc] initWithFacade:self];
  jsonData = [(_SFPBRFImageElement *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFImageElement alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFImageElement *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFImageElement alloc] initWithFacade:self];
  data = [(_SFPBRFImageElement *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFImageElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFImageElement alloc] initWithData:v5];
  v7 = [(RFImageElement *)self initWithProtobuf:v6];

  return v7;
}

- (RFImageElement)initWithProtobuf:(id)protobuf
{
  v22 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v20.receiver = self;
  v20.super_class = RFImageElement;
  v5 = [(RFImageElement *)&v20 init];
  if (v5)
  {
    sources = [protobufCopy sources];
    if (sources)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    sources2 = [protobufCopy sources];
    v9 = [sources2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(sources2);
          }

          v13 = [[RFImageSource alloc] initWithProtobuf:*(*(&v16 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [sources2 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    [(RFImageElement *)v5 setSources:v7];
    v14 = v5;
  }

  return v5;
}

@end