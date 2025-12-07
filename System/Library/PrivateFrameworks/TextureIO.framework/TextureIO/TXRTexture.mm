@interface TXRTexture
- (BOOL)exportToURL:(id)l error:(id *)error;
- (TXRTexture)initWithContentsOfURL:(id)l bufferAllocator:(id)allocator options:(id)options error:(id *)error;
- (TXRTexture)initWithData:(id)data bufferAllocator:(id)allocator options:(id)options error:(id *)error;
- (TXRTexture)initWithDataSourceProvider:(id)provider;
- (TXRTexture)initWithDimensions:(unint64_t)dimensions pixelFormat:(unint64_t)format alphaInfo:(unint64_t)info mipmapLevelCount:(unint64_t)count arrayLength:(BOOL)length cubemap:(id)cubemap bufferAllocator:;
- (id)copyWithPixelFormat:(unint64_t)format options:(id)options bufferAllocator:(id)allocator;
- (id)copyWithZone:(_NSZone *)zone;
- (id)exportToAssetCatalogWithName:(id)name location:(id)location error:(id *)error;
- (void)generateMipmapsForRange:(_NSRange)range filter:(unint64_t)filter error:(id *)error;
- (void)reformat:(unint64_t)reformat gammaDegamma:(BOOL)degamma bufferAllocator:(id)allocator error:(id *)error;
@end

@implementation TXRTexture

- (TXRTexture)initWithDataSourceProvider:(id)provider
{
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = TXRTexture;
  v5 = [(TXRTexture *)&v16 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    mipmapLevels = v5->_mipmapLevels;
    v5->_mipmapLevels = v6;

    provideTextureInfo = [providerCopy provideTextureInfo];
    v5->_cubemap = [provideTextureInfo cubemap];
    v5->_pixelFormat = [provideTextureInfo pixelFormat];
    v5->_alphaInfo = [provideTextureInfo alphaInfo];
    [provideTextureInfo dimensions];
    *v5->_dimensions = v9;
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(provideTextureInfo, "mipmapLevelCount")}];
    v11 = v5->_mipmapLevels;
    v5->_mipmapLevels = v10;

    if ([provideTextureInfo mipmapLevelCount])
    {
      v12 = 0;
      do
      {
        v13 = v5->_mipmapLevels;
        v14 = -[TXRMipmapLevel initAsLevel:arrayLength:cubemap:dataSourceProvider:]([TXRMipmapLevel alloc], "initAsLevel:arrayLength:cubemap:dataSourceProvider:", v12, [provideTextureInfo arrayLength], objc_msgSend(provideTextureInfo, "cubemap"), providerCopy);
        [(NSMutableArray *)v13 addObject:v14];

        ++v12;
      }

      while (v12 < [provideTextureInfo mipmapLevelCount]);
    }
  }

  return v5;
}

- (TXRTexture)initWithContentsOfURL:(id)l bufferAllocator:(id)allocator options:(id)options error:(id *)error
{
  lCopy = l;
  allocatorCopy = allocator;
  optionsCopy = options;
  if (!allocatorCopy)
  {
    allocatorCopy = objc_alloc_init(TXRDefaultBufferAllocator);
  }

  bufferAllocator = self->_bufferAllocator;
  self->_bufferAllocator = allocatorCopy;
  v14 = allocatorCopy;

  v15 = [[TXRFileDataSourceProvider alloc] initWithURL:lCopy bufferAllocator:v14 options:optionsCopy error:error];
  v16 = [(TXRTexture *)self initWithDataSourceProvider:v15];

  return v16;
}

- (TXRTexture)initWithDimensions:(unint64_t)dimensions pixelFormat:(unint64_t)format alphaInfo:(unint64_t)info mipmapLevelCount:(unint64_t)count arrayLength:(BOOL)length cubemap:(id)cubemap bufferAllocator:
{
  lengthCopy = length;
  v26 = v8;
  cubemapCopy = cubemap;
  v28.receiver = self;
  v28.super_class = TXRTexture;
  v16 = [(TXRTexture *)&v28 init];
  if (v16)
  {
    if (!cubemapCopy)
    {
      cubemapCopy = objc_alloc_init(TXRDefaultBufferAllocator);
    }

    objc_storeStrong(&v16->_bufferAllocator, cubemapCopy);
    v16->_pixelFormat = dimensions;
    *v16->_dimensions = v26;
    v16->_cubemap = lengthCopy;
    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:info];
    mipmapLevels = v16->_mipmapLevels;
    v16->_mipmapLevels = v17;

    if (info)
    {
      v19 = 0;
      v20 = v26;
      do
      {
        v27 = v20;
        v21 = v16->_mipmapLevels;
        v22 = [[TXRMipmapLevel alloc] initAsLevel:v19 dimensions:dimensions pixelFormat:format alphaInfo:count arrayLength:lengthCopy cubemap:cubemapCopy bufferAllocator:*v20.i64];
        [(NSMutableArray *)v21 addObject:v22];

        v23.i64[0] = 0x100000001;
        v23.i64[1] = 0x100000001;
        v20.i64[0] = vmaxq_u32(vshrq_n_u32(v27, 1uLL), v23).u64[0];
        v24 = v27.i32[2] >> 1;
        if (v27.i32[2] >> 1 <= 1)
        {
          v24 = 1;
        }

        v20.i64[1] = __PAIR64__(v27.u32[3], v24);
        ++v19;
      }

      while (info != v19);
    }
  }

  return v16;
}

- (TXRTexture)initWithData:(id)data bufferAllocator:(id)allocator options:(id)options error:(id *)error
{
  dataCopy = data;
  allocatorCopy = allocator;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = TXRTexture;
  [(TXRTexture *)&v12 init];
  __assert_rtn("[TXRTexture initWithData:bufferAllocator:options:error:]", "TXRTexture.m", 410, "!TODO: Must Implement");
}

- (id)exportToAssetCatalogWithName:(id)name location:(id)location error:(id *)error
{
  locationCopy = location;
  nameCopy = name;
  v9 = [[TXRAssetCatalogSet alloc] initWithName:nameCopy];

  v10 = [(TXRAssetCatalogSet *)v9 exportAtLocation:locationCopy error:error];

  return v10;
}

- (BOOL)exportToURL:(id)l error:(id *)error
{
  lCopy = l;
  pathExtension = [lCopy pathExtension];
  v8 = [pathExtension caseInsensitiveCompare:@"ktx"];

  if (v8)
  {
    if (error)
    {
      _newTXRErrorWithCodeAndErrorString(11, @"TXRTexture can only export to the KTX texture fil format");
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [TXRParserKTX exportTexture:self url:lCopy error:error];
  }

  return v9;
}

- (void)reformat:(unint64_t)reformat gammaDegamma:(BOOL)degamma bufferAllocator:(id)allocator error:(id *)error
{
  degammaCopy = degamma;
  v58 = *MEMORY[0x277D85DE8];
  allocatorCopy = allocator;
  if (!allocatorCopy)
  {
    allocatorCopy = self->_bufferAllocator;
    if (!allocatorCopy)
    {
      allocatorCopy = objc_alloc_init(TXRDefaultBufferAllocator);
    }
  }

  v11 = allocatorCopy;
  v46 = *self->_dimensions;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  selfCopy = self;
  obj = self->_mipmapLevels;
  v39 = [(NSMutableArray *)obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v39)
  {
    v38 = *v53;
    v12 = 0x279DBB000uLL;
    v13 = 0x279DBB000uLL;
    do
    {
      v14 = 0;
      v15 = v46;
      do
      {
        v47 = v15;
        if (*v53 != v38)
        {
          objc_enumerationMutation(obj);
          v15.i64[0] = v47.i64[0];
        }

        v40 = v14;
        v16 = *(*(&v52 + 1) + 8 * v14);
        [TXRPixelFormatInfo packedMemoryLayoutForFormat:reformat dimensions:*v15.i64];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        elements = [v16 elements];
        v43 = [elements countByEnumeratingWithState:&v48 objects:v56 count:16];
        if (v43)
        {
          v42 = *v49;
          do
          {
            v17 = 0;
            do
            {
              if (*v49 != v42)
              {
                objc_enumerationMutation(elements);
              }

              v44 = v17;
              v18 = *(*(&v48 + 1) + 8 * v17);
              faces = [v18 faces];
              v20 = [faces count];

              if (v20)
              {
                v21 = 0;
                do
                {
                  v22 = objc_alloc(*(v12 + 3880));
                  faces2 = [v18 faces];
                  [faces2 objectAtIndexedSubscript:v21];
                  v24 = v13;
                  v25 = v11;
                  v26 = degammaCopy;
                  errorCopy = error;
                  v29 = v28 = reformat;
                  v30 = [v22 initWithImage:v29 dimensions:selfCopy->_pixelFormat pixelFormat:selfCopy->_alphaInfo alphaInfo:*v47.i64];

                  reformat = v28;
                  error = errorCopy;
                  degammaCopy = v26;
                  v11 = v25;
                  v13 = v24;

                  v31 = [*(v24 + 3848) newImageFromSourceImage:v30 newPixelFormat:reformat bufferAllocator:v11 gammaDegamma:degammaCopy error:error];
                  [v18 setImage:v31 atFace:v21];

                  ++v21;
                  faces3 = [v18 faces];
                  v33 = [faces3 count];

                  v12 = 0x279DBB000;
                }

                while (v21 < v33);
              }

              v17 = v44 + 1;
            }

            while (v44 + 1 != v43);
            v43 = [elements countByEnumeratingWithState:&v48 objects:v56 count:16];
          }

          while (v43);
        }

        v34.i64[0] = 0x100000001;
        v34.i64[1] = 0x100000001;
        v35.i64[0] = vbslq_s8(vcgtq_u32(v47, v34), vshrq_n_u32(v47, 1uLL), v34).u64[0];
        if (v47.i32[2] <= 1u)
        {
          v36 = 1;
        }

        else
        {
          v36 = v47.i32[2] >> 1;
        }

        v35.i64[1] = __PAIR64__(v47.u32[3], v36);
        v14 = v40 + 1;
        v15 = v35;
      }

      while (v40 + 1 != v39);
      v46 = v35;
      v39 = [(NSMutableArray *)obj countByEnumeratingWithState:&v52 objects:v57 count:16, *v35.i64];
    }

    while (v39);
  }

  selfCopy->_pixelFormat = reformat;
}

- (void)generateMipmapsForRange:(_NSRange)range filter:(unint64_t)filter error:(id *)error
{
  length = range.length;
  location = range.location;
  if (range.location >= [(NSMutableArray *)self->_mipmapLevels count])
  {
    if (error)
    {
      *error = _newTXRErrorWithCodeAndErrorString(9, @"Range Location must be an index of an existing mipmap level");
    }
  }

  else
  {
    v44 = self->_bufferAllocator;
    if (!v44)
    {
      v44 = objc_alloc_init(TXRDefaultBufferAllocator);
    }

    v9 = location + length;
    v10 = HIDWORD(*self->_dimensions);
    if (v10 <= *&self->_dimensions[8])
    {
      v10 = *&self->_dimensions[8];
    }

    if (*self->_dimensions > v10)
    {
      v10 = *self->_dimensions;
    }

    v11 = __clz(v10) ^ 0x1F;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0xFFFFFFFFLL;
    }

    if (v9 >= v12)
    {
      v9 = v12;
    }

    v42 = location + 1;
    if (location + 1 < v9)
    {
      v41 = *self->_dimensions;
      v13 = 0x279DBB000uLL;
      v40 = v9;
      while (1)
      {
        if ([(NSMutableArray *)self->_mipmapLevels count]<= v42)
        {
          v14 = objc_alloc(*(v13 + 3896));
          v15 = [(NSMutableArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
          elements = [v15 elements];
          v17 = [v14 initAsLevel:v42 arrayLength:objc_msgSend(elements cubemap:"count") dataSourceProvider:{self->_cubemap, 0}];

          [(NSMutableArray *)self->_mipmapLevels addObject:v17];
        }

        v18 = 0;
LABEL_18:
        v19 = [(NSMutableArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
        elements2 = [v19 elements];
        v21 = [elements2 count];

        if (v18 < v21)
        {
          break;
        }

        v37.i64[0] = 0x100000001;
        v37.i64[1] = 0x100000001;
        v38.i64[0] = vbslq_s8(vcgtq_u32(v41, v37), vshrq_n_u32(v41, 1uLL), v37).u64[0];
        if (v41.i32[2] <= 1u)
        {
          v39 = 1;
        }

        else
        {
          v39 = v41.i32[2] >> 1;
        }

        v38.i64[1] = __PAIR64__(v41.u32[3], v39);
        ++location;
        v41 = v38;
        ++v42;
        v13 = 0x279DBB000;
        if (v42 == v40)
        {
          goto LABEL_34;
        }
      }

      for (i = 0; ; ++i)
      {
        v23 = [(NSMutableArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
        elements3 = [v23 elements];
        v25 = [elements3 objectAtIndexedSubscript:0];
        faces = [v25 faces];
        v27 = [faces count];

        if (i >= v27)
        {
          ++v18;
          goto LABEL_18;
        }

        v28 = [(NSMutableArray *)self->_mipmapLevels objectAtIndexedSubscript:location];
        elements4 = [v28 elements];
        v30 = [elements4 objectAtIndexedSubscript:v18];
        faces2 = [v30 faces];
        v32 = [faces2 objectAtIndexedSubscript:i];

        v33 = [[TXRImageIndependent alloc] initWithImage:v32 dimensions:self->_pixelFormat pixelFormat:self->_alphaInfo alphaInfo:*v41.i64];
        v34 = [TXRDataScaler newImageFromSourceImage:v33 bufferAllocattor:v44 filter:filter error:error];
        v35 = v34;
        if (*error || !v34)
        {
          break;
        }

        v36 = [(NSMutableArray *)self->_mipmapLevels objectAtIndexedSubscript:v42];
        [v36 setImage:v35 atElement:v18 atFace:i];
      }
    }

LABEL_34:
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [+[TXRTexture allocWithZone:](TXRTexture init];
  objc_storeStrong(&v5->_bufferAllocator, self->_bufferAllocator);
  v6 = [objc_msgSend(MEMORY[0x277CBEB18] allocWithZone:{zone), "initWithCapacity:", -[NSMutableArray count](self->_mipmapLevels, "count")}];
  mipmapLevels = v5->_mipmapLevels;
  v5->_mipmapLevels = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_mipmapLevels;
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

        v13 = v5->_mipmapLevels;
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

- (id)copyWithPixelFormat:(unint64_t)format options:(id)options bufferAllocator:(id)allocator
{
  optionsCopy = options;
  allocatorCopy = allocator;
  __assert_rtn("[TXRTexture copyWithPixelFormat:options:bufferAllocator:]", "TXRTexture.m", 574, "!TODO: Must Implement");
}

@end