@interface RadioArtworkCollection
- (BOOL)isEqual:(id)equal;
- (RadioArtworkCollection)initWithArtworkVariants:(id)variants;
- (RadioArtworkCollection)initWithArtworks:(id)artworks;
- (id)bestArtworkForPixelSize:(CGSize)size;
- (id)bestArtworkForPointSize:(CGSize)size;
@end

@implementation RadioArtworkCollection

uint64_t __53__RadioArtworkCollection__artworksBySortingArtworks___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 pixelSize];
  v6 = v5;
  v8 = v7;
  [v4 pixelSize];
  v11 = v8 < v10 || v6 < v9;
  v12 = v8 <= v10 && v6 <= v9;
  v13 = v11 << 63 >> 63;
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (id)bestArtworkForPointSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  GSMainScreenScaleFactor();
  v7 = v6;
  v8 = width * v6;
  v9 = height * v7;

  return [(RadioArtworkCollection *)self bestArtworkForPixelSize:v8, v9];
}

- (id)bestArtworkForPixelSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_artworks;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v17 + 1) + 8 * v10);
      [v11 pixelSize];
      if (v13 >= width || v12 >= height)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    lastObject = v11;

    if (lastObject)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_13:
  }

  lastObject = [(NSArray *)self->_artworks lastObject];
LABEL_16:

  return lastObject;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }

    artworks = self->_artworks;
    if (artworks | equalCopy->_artworks)
    {
      v6 = [(NSArray *)artworks isEqual:?];
      goto LABEL_7;
    }
  }

  v6 = 1;
LABEL_7:

  return v6;
}

- (RadioArtworkCollection)initWithArtworkVariants:(id)variants
{
  v25 = *MEMORY[0x277D85DE8];
  variantsCopy = variants;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(variantsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = variantsCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [[RadioArtwork alloc] initWithArtworkDictionary:v11];
          if (v12)
          {
            [v5 addObject:v12];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v19.receiver = self;
    v19.super_class = RadioArtworkCollection;
    v13 = [(RadioArtworkCollection *)&v19 init];
    v14 = v13;
    if (v13)
    {
      v15 = [(RadioArtworkCollection *)v13 _artworksBySortingArtworks:v5];
      artworks = v14->_artworks;
      v14->_artworks = v15;
    }

    self = v14;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (RadioArtworkCollection)initWithArtworks:(id)artworks
{
  artworksCopy = artworks;
  v11.receiver = self;
  v11.super_class = RadioArtworkCollection;
  v5 = [(RadioArtworkCollection *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(RadioArtworkCollection *)v5 _artworksBySortingArtworks:artworksCopy];
    v8 = [v7 copy];
    artworks = v6->_artworks;
    v6->_artworks = v8;
  }

  return v6;
}

@end