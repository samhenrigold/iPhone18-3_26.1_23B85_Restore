@interface TXRMipmapLevel
- (id)copyWithZone:(_NSZone *)zone;
- (id)initAsLevel:(unint64_t)level arrayLength:(unint64_t)length cubemap:(BOOL)cubemap dataSourceProvider:(id)provider;
- (id)initAsLevel:(unint64_t)level dimensions:(unint64_t)dimensions pixelFormat:(unint64_t)format alphaInfo:(unint64_t)info arrayLength:(BOOL)length cubemap:(id)cubemap bufferAllocator:;
- (void)setImage:(id)image atElement:(unint64_t)element atFace:(unint64_t)face;
@end

@implementation TXRMipmapLevel

- (id)initAsLevel:(unint64_t)level arrayLength:(unint64_t)length cubemap:(BOOL)cubemap dataSourceProvider:(id)provider
{
  cubemapCopy = cubemap;
  providerCopy = provider;
  v19.receiver = self;
  v19.super_class = TXRMipmapLevel;
  v11 = [(TXRMipmapLevel *)&v19 init];
  v12 = v11;
  if (v11)
  {
    v11->_level = level;
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:length];
    elements = v12->_elements;
    v12->_elements = v13;

    if (length)
    {
      v15 = 0;
      do
      {
        v16 = v12->_elements;
        v17 = [[TXRArrayElement alloc] initAsLevel:level element:v15 cubemap:cubemapCopy dataSourceProvider:providerCopy];
        [(NSMutableArray *)v16 addObject:v17];

        ++v15;
      }

      while (length != v15);
    }
  }

  return v12;
}

- (id)initAsLevel:(unint64_t)level dimensions:(unint64_t)dimensions pixelFormat:(unint64_t)format alphaInfo:(unint64_t)info arrayLength:(BOOL)length cubemap:(id)cubemap bufferAllocator:
{
  lengthCopy = length;
  v24 = v8;
  cubemapCopy = cubemap;
  v25.receiver = self;
  v25.super_class = TXRMipmapLevel;
  v16 = [(TXRMipmapLevel *)&v25 init];
  v17 = v16;
  if (v16)
  {
    v16->_level = level;
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:info];
    elements = v17->_elements;
    v17->_elements = v18;

    if (info)
    {
      v20 = 0;
      do
      {
        v21 = v17->_elements;
        v22 = [[TXRArrayElement alloc] initAsLevel:level element:v20 dimensions:dimensions pixelFormat:format alphaInfo:lengthCopy cubemap:cubemapCopy bufferAllocator:v24];
        [(NSMutableArray *)v21 addObject:v22];

        ++v20;
      }

      while (info != v20);
    }
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [+[TXRMipmapLevel allocWithZone:](TXRMipmapLevel init];
  v6 = [objc_msgSend(MEMORY[0x277CBEB18] allocWithZone:{zone), "initWithCapacity:", -[NSMutableArray count](self->_elements, "count")}];
  elements = v5->_elements;
  v5->_elements = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_elements;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = v5->_elements;
        v14 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{zone, v16}];
        [(NSMutableArray *)v13 addObject:v14];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v5;
}

- (void)setImage:(id)image atElement:(unint64_t)element atFace:(unint64_t)face
{
  elements = self->_elements;
  imageCopy = image;
  v9 = [(NSMutableArray *)elements objectAtIndexedSubscript:element];
  [v9 setImage:imageCopy atFace:face];
}

@end