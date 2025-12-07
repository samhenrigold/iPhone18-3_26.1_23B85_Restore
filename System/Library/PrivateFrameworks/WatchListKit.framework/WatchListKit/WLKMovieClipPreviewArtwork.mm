@interface WLKMovieClipPreviewArtwork
- (CGSize)artworkSize;
- (WLKArtworkVariant)artworkVariant;
- (WLKMovieClipPreviewArtwork)init;
- (WLKMovieClipPreviewArtwork)initWithDictionary:(id)dictionary;
- (id)_init;
@end

@implementation WLKMovieClipPreviewArtwork

- (WLKMovieClipPreviewArtwork)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    _init = [(WLKMovieClipPreviewArtwork *)self _init];
    if (_init)
    {
      v6 = [dictionaryCopy wlk_stringForKey:@"bgColor"];
      v7 = _init[2];
      _init[2] = v6;

      *(_init + 8) = [dictionaryCopy wlk_BOOLForKey:@"supportsLayeredImage" defaultValue:0];
      v8 = [dictionaryCopy wlk_stringForKey:@"textColor1"];
      v9 = _init[3];
      _init[3] = v8;

      v10 = [dictionaryCopy wlk_stringForKey:@"textColor2"];
      v11 = _init[4];
      _init[4] = v10;

      v12 = [dictionaryCopy wlk_stringForKey:@"textColor3"];
      v13 = _init[5];
      _init[5] = v12;

      v14 = [dictionaryCopy wlk_stringForKey:@"textColor4"];
      v15 = _init[5];
      _init[5] = v14;

      v16 = [dictionaryCopy wlk_stringForKey:@"url"];
      v17 = _init[7];
      _init[7] = v16;

      v18 = [dictionaryCopy wlk_numberForKey:@"height"];
      v19 = [dictionaryCopy wlk_numberForKey:@"width"];
      v20 = v19;
      if (v18 && v19)
      {
        [v19 doubleValue];
        v22 = v21;
        [v18 doubleValue];
        _init[8] = v22;
        _init[9] = v23;
      }
    }

    self = _init;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = WLKMovieClipPreviewArtwork;
  return [(WLKMovieClipPreviewArtwork *)&v3 init];
}

- (WLKMovieClipPreviewArtwork)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKMovieClipPreviewArtwork" format:@"-init is not supported. Use -initWithDictionary:"];

  return 0;
}

- (WLKArtworkVariant)artworkVariant
{
  v10[4] = *MEMORY[0x277D85DE8];
  if (!self->_url || (*MEMORY[0x277CBF3A8] == self->_artworkSize.width ? (v3 = *(MEMORY[0x277CBF3A8] + 8) == self->_artworkSize.height) : (v3 = 0), v3))
  {
    v7 = 0;
  }

  else
  {
    v9[0] = @"width";
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v10[0] = v4;
    v9[1] = @"height";
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_artworkSize.height];
    v10[1] = v5;
    v10[2] = @"jpg";
    v9[2] = @"format";
    v9[3] = @"url";
    v10[3] = self->_url;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

    v7 = [[WLKArtworkVariant alloc] initWithDictionary:v6];
  }

  return v7;
}

- (CGSize)artworkSize
{
  width = self->_artworkSize.width;
  height = self->_artworkSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end