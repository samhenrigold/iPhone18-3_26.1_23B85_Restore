@interface PSPearlStream
+ (id)pearlStreamWithResourceKey:(id)key options:(ps_resource_options *)options provider:(int)provider width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format;
+ (id)pearlStreamWithResourceKey:(id)key options:(ps_resource_options *)options provider:(int)provider width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format dxWidth:(unint64_t)dxWidth dxHeight:(unint64_t)self0 dxPixelFormat:(unsigned int)self1 dyWidth:(unint64_t)self2 dyHeight:(unint64_t)self3 dyPixelFormat:(unsigned int)self4 scoreWidth:(unint64_t)self5 scoreHeight:(unint64_t)self6 scorePixelFormat:(unsigned int)self7 metadataIOSurfaceProperties:(id)self8;
+ (id)pearlStreamWithResourceKey:(id)key options:(ps_resource_options *)options provider:(int)provider width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format metadataIOSurfaceProperties:(id)properties;
+ (id)pearlStreamWithResourceKey:(id)key options:(ps_resource_options *)options width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format;
- (BOOL)isEqual:(id)equal;
- (BOOL)validate:(id *)validate;
- (PSPearlStream)init;
- (PSPearlStream)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSPearlStream

- (PSPearlStream)init
{
  v5.receiver = self;
  v5.super_class = PSPearlStream;
  v2 = [(PSResourceStream *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSResourceStream *)v2 setResourceClass:11];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = PSPearlStream;
  [(PSResourceStream *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_width forKey:@"width"];
  [coderCopy encodeInteger:self->_height forKey:@"height"];
  [coderCopy encodeInt32:self->_pixelFormat forKey:@"pixelFormat"];
  [coderCopy encodeInteger:self->_dxWidth forKey:@"dxWidth"];
  [coderCopy encodeInteger:self->_dxHeight forKey:@"dxHeight"];
  [coderCopy encodeInt32:self->_dxPixelFormat forKey:@"dxPixelFormat"];
  [coderCopy encodeInteger:self->_dyWidth forKey:@"dyWidth"];
  [coderCopy encodeInteger:self->_dyHeight forKey:@"dyHeight"];
  [coderCopy encodeInt32:self->_dyPixelFormat forKey:@"dyPixelFormat"];
  [coderCopy encodeInteger:self->_scoreWidth forKey:@"scoreWidth"];
  [coderCopy encodeInteger:self->_scoreHeight forKey:@"scoreHeight"];
  [coderCopy encodeInteger:self->_scorePixelFormat forKey:@"scorePixelFormat"];
}

- (PSPearlStream)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PSPearlStream;
  v5 = [(PSResourceStream *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(PSResourceStream *)v5 setResourceClass:11];
    v6->_width = [coderCopy decodeIntegerForKey:@"width"];
    v6->_height = [coderCopy decodeIntegerForKey:@"height"];
    v6->_pixelFormat = [coderCopy decodeInt32ForKey:@"pixelFormat"];
    v6->_dxWidth = [coderCopy decodeIntegerForKey:@"dxWidth"];
    v6->_dxHeight = [coderCopy decodeIntegerForKey:@"dxHeight"];
    v6->_dxPixelFormat = [coderCopy decodeInt32ForKey:@"dxPixelFormat"];
    v6->_dyWidth = [coderCopy decodeIntegerForKey:@"dyWidth"];
    v6->_dyHeight = [coderCopy decodeIntegerForKey:@"dyHeight"];
    v6->_dyPixelFormat = [coderCopy decodeInt32ForKey:@"dyPixelFormat"];
    v6->_scoreWidth = [coderCopy decodeIntegerForKey:@"scoreWidth"];
    v6->_scoreHeight = [coderCopy decodeIntegerForKey:@"scoreHeight"];
    v6->_scorePixelFormat = [coderCopy decodeInt32ForKey:@"scorePixelFormat"];
    v7 = v6;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v19 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v21.receiver = self;
    v21.super_class = PSPearlStream;
    if ([(PSResourceStream *)&v21 isEqual:v6]&& (width = self->_width, width == [(PSPearlStream *)v6 width]) && (height = self->_height, height == [(PSPearlStream *)v6 height]) && (pixelFormat = self->_pixelFormat, pixelFormat == [(PSPearlStream *)v6 pixelFormat]) && (dxWidth = self->_dxWidth, dxWidth == [(PSPearlStream *)v6 dxWidth]) && (dxHeight = self->_dxHeight, dxHeight == [(PSPearlStream *)v6 dxHeight]) && (dxPixelFormat = self->_dxPixelFormat, dxPixelFormat == [(PSPearlStream *)v6 dxPixelFormat]) && (dyWidth = self->_dyWidth, dyWidth == [(PSPearlStream *)v6 dyWidth]) && (dyHeight = self->_dyHeight, dyHeight == [(PSPearlStream *)v6 dyHeight]) && (dyPixelFormat = self->_dyPixelFormat, dyPixelFormat == [(PSPearlStream *)v6 dyPixelFormat]) && (scoreWidth = self->_scoreWidth, scoreWidth == [(PSPearlStream *)v6 scoreWidth]) && (scoreHeight = self->_scoreHeight, scoreHeight == [(PSPearlStream *)v6 scoreHeight]))
    {
      scorePixelFormat = self->_scorePixelFormat;
      v19 = scorePixelFormat == [(PSPearlStream *)v6 scorePixelFormat];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)pearlStreamWithResourceKey:(id)key options:(ps_resource_options *)options width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format
{
  keyCopy = key;
  v12 = objc_alloc_init(PSPearlStream);
  [(PSResourceStream *)v12 setKey:keyCopy];
  [(PSResourceStream *)v12 setProvider:9];
  v12->_width = width;
  v12->_height = height;
  v12->_pixelFormat = format;
  [(PSPearlStream *)v12 setHasAttachments:0];
  [(PSResourceStream *)v12 setOptions:options->storage_mode, options->creation_mode];

  return v12;
}

+ (id)pearlStreamWithResourceKey:(id)key options:(ps_resource_options *)options provider:(int)provider width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format
{
  v11 = *&provider;
  keyCopy = key;
  v14 = objc_alloc_init(PSPearlStream);
  [(PSResourceStream *)v14 setKey:keyCopy];
  [(PSResourceStream *)v14 setProvider:v11];
  [(PSPearlStream *)v14 setHasAttachments:!ps_resource_stream_provider_is_replay(v11)];
  v14->_width = width;
  v14->_height = height;
  v14->_pixelFormat = format;
  [(PSResourceStream *)v14 setOptions:options->storage_mode, options->creation_mode];

  return v14;
}

+ (id)pearlStreamWithResourceKey:(id)key options:(ps_resource_options *)options provider:(int)provider width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format metadataIOSurfaceProperties:(id)properties
{
  v12 = *&provider;
  keyCopy = key;
  propertiesCopy = properties;
  v16 = objc_alloc_init(PSPearlStream);
  [(PSResourceStream *)v16 setKey:keyCopy];
  [(PSResourceStream *)v16 setProvider:v12];
  v16->_width = width;
  v16->_height = height;
  v16->_pixelFormat = format;
  [(PSPearlStream *)v16 setHasAttachments:!ps_resource_stream_provider_is_replay(v12)];
  [(PSResourceStream *)v16 setOptions:options->storage_mode, options->creation_mode];
  [(PSResourceStream *)v16 setMetadataIOSurfaceProperties:propertiesCopy];

  return v16;
}

+ (id)pearlStreamWithResourceKey:(id)key options:(ps_resource_options *)options provider:(int)provider width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format dxWidth:(unint64_t)dxWidth dxHeight:(unint64_t)self0 dxPixelFormat:(unsigned int)self1 dyWidth:(unint64_t)self2 dyHeight:(unint64_t)self3 dyPixelFormat:(unsigned int)self4 scoreWidth:(unint64_t)self5 scoreHeight:(unint64_t)self6 scorePixelFormat:(unsigned int)self7 metadataIOSurfaceProperties:(id)self8
{
  v20 = *&provider;
  keyCopy = key;
  propertiesCopy = properties;
  v24 = objc_alloc_init(PSPearlStream);
  [(PSPearlStream *)v24 setHasAttachments:1];
  [(PSResourceStream *)v24 setKey:keyCopy];
  [(PSResourceStream *)v24 setProvider:v20];
  [(PSResourceStream *)v24 setOptions:options->storage_mode, options->creation_mode];
  [(PSResourceStream *)v24 setMetadataIOSurfaceProperties:propertiesCopy];
  v24->_height = height;
  v24->_width = width;
  v24->_pixelFormat = format;
  v24->_dxHeight = dxHeight;
  v24->_dxWidth = dxWidth;
  v24->_dxPixelFormat = pixelFormat;
  v24->_dyHeight = dyHeight;
  v24->_dyWidth = dyWidth;
  v24->_dyPixelFormat = dyPixelFormat;
  v24->_scoreHeight = scoreHeight;
  v24->_scoreWidth = scoreWidth;
  v24->_scorePixelFormat = scorePixelFormat;

  return v24;
}

- (BOOL)validate:(id *)validate
{
  if ([(PSResourceStream *)self resourceClass]!= 9)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource Class invalid"];
    if (!validate)
    {
      goto LABEL_22;
    }

LABEL_21:
    *validate = [MEMORY[0x277CCA9B8] internalErrorWithCode:-4 description:v9];
    goto LABEL_22;
  }

  v5 = [(PSResourceStream *)self key];

  if (!v5)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream key invalid"];
    if (!validate)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  [(PSResourceStream *)self options];
  if (!v6)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.creation_mode invalid for the stream"];
    if (!validate)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ([(PSResourceStream *)self options]== 0)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.storage_mode invalid for the stream"];
    if (!validate)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  [(PSResourceStream *)self options];
  if (v7 == 1 && (!self->_width || !self->_height))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"CVDataBuffer properties required for descriptor mode (options.creation_mode)"];
    if (!validate)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  [(PSResourceStream *)self options];
  if (v8 != 2)
  {
    return 1;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Pearl Stream should never have a creation mode with allocator since it is unsupported"];
  if (validate)
  {
    goto LABEL_21;
  }

LABEL_22:

  return 0;
}

@end