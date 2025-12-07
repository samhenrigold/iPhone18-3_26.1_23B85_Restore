@interface TCControlImage
- (CGPoint)offset;
- (CGSize)size;
- (TCControlImage)initWithCGImage:(CGImage *)image size:(CGSize)size device:(id)device;
- (TCControlImage)initWithTexture:(id)texture size:(CGSize)size;
- (TCControlImage)initWithTexture:(id)texture size:(CGSize)size highlightTexture:(id)highlightTexture offset:(CGPoint)offset tintColor:(CGColor *)color;
- (TCControlImage)initWithUIImage:(id)image size:(CGSize)size device:(id)device;
- (void)setTintColor:(CGColor *)color;
@end

@implementation TCControlImage

- (TCControlImage)initWithTexture:(id)texture size:(CGSize)size highlightTexture:(id)highlightTexture offset:(CGPoint)offset tintColor:(CGColor *)color
{
  y = offset.y;
  x = offset.x;
  height = size.height;
  width = size.width;
  textureCopy = texture;
  highlightTextureCopy = highlightTexture;
  v20.receiver = self;
  v20.super_class = TCControlImage;
  v17 = [(TCControlImage *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_texture, texture);
    v18->_size.width = width;
    v18->_size.height = height;
    objc_storeStrong(&v18->_highlightTexture, highlightTexture);
    v18->_offset.x = x;
    v18->_offset.y = y;
    v18->_tintColor = color;
    CGColorRetain(color);
  }

  return v18;
}

- (TCControlImage)initWithTexture:(id)texture size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v12 = *MEMORY[0x277D85DE8];
  textureCopy = texture;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v11[0] = xmmword_23AAEDFD0;
  v11[1] = unk_23AAEDFE0;
  v9 = [(TCControlImage *)self initWithTexture:textureCopy size:0 highlightTexture:CGColorCreate(DeviceRGB offset:v11) tintColor:width, height, 0.0, 0.0];

  return v9;
}

- (TCControlImage)initWithCGImage:(CGImage *)image size:(CGSize)size device:(id)device
{
  height = size.height;
  width = size.width;
  v23[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CD71F0];
  deviceCopy = device;
  v11 = [[v9 alloc] initWithDevice:deviceCopy];

  v22 = *MEMORY[0x277CD71B0];
  v23[0] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v21 = 0;
  v13 = [v11 newTextureWithCGImage:image options:v12 error:&v21];
  v14 = v21;
  v15 = v14;
  if (v13)
  {
    GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    v17 = [(TCControlImage *)self initWithTexture:v13 size:0 highlightTexture:GenericRGB offset:width tintColor:height, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    CGColorRelease(GenericRGB);
    self = v17;
    selfCopy = self;
  }

  else
  {
    v19 = getTCLogger(v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [TCControlImage initWithCGImage:v15 size:v19 device:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (TCControlImage)initWithUIImage:(id)image size:(CGSize)size device:(id)device
{
  height = size.height;
  width = size.width;
  deviceCopy = device;
  cGImage = [image CGImage];
  if (cGImage)
  {
    self = [(TCControlImage *)self initWithCGImage:cGImage size:deviceCopy device:width, height];
    selfCopy = self;
  }

  else
  {
    v12 = getTCLogger(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [TCControlImage initWithUIImage:v12 size:? device:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setTintColor:(CGColor *)color
{
  CGColorRelease(self->_tintColor);
  self->_tintColor = color;

  CGColorRetain(color);
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)initWithCGImage:(uint64_t)a1 size:(NSObject *)a2 device:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AADD000, a2, OS_LOG_TYPE_ERROR, "Error creating texture from CGImage: %@", &v2, 0xCu);
}

@end