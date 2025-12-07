@interface RFPreviewList
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFPreviewList)initWithCoder:(id)coder;
- (RFPreviewList)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFPreviewList

- (RFPreviewList)initWithProtobuf:(id)protobuf
{
  v22 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v20.receiver = self;
  v20.super_class = RFPreviewList;
  v5 = [(RFPreviewList *)&v20 init];
  if (v5)
  {
    previews = [protobufCopy previews];
    if (previews)
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
    previews2 = [protobufCopy previews];
    v9 = [previews2 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
            objc_enumerationMutation(previews2);
          }

          v13 = [[RFPreview alloc] initWithProtobuf:*(*(&v16 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [previews2 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    [(RFPreviewList *)v5 setPreviews:v7];
    v14 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  previews = [(RFPreviewList *)self previews];
  v3 = [previews hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(RFPreviewList *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    previews = [(RFPreviewList *)self previews];
    previews2 = [(RFPreviewList *)v5 previews];
    if ((previews != 0) == (previews2 == 0))
    {
      v11 = 0;
    }

    else
    {
      previews3 = [(RFPreviewList *)self previews];
      if (previews3)
      {
        previews4 = [(RFPreviewList *)self previews];
        previews5 = [(RFPreviewList *)v5 previews];
        v11 = [previews4 isEqual:previews5];
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
  previews = [(RFPreviewList *)self previews];
  v6 = [previews copy];
  [v4 setPreviews:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFPreviewList alloc] initWithFacade:self];
  jsonData = [(_SFPBRFPreviewList *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFPreviewList alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFPreviewList *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFPreviewList alloc] initWithFacade:self];
  data = [(_SFPBRFPreviewList *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFPreviewList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFPreviewList alloc] initWithData:v5];
  v7 = [(RFPreviewList *)self initWithProtobuf:v6];

  return v7;
}

@end