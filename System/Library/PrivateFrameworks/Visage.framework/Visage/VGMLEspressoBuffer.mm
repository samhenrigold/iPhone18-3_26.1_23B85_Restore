@interface VGMLEspressoBuffer
- (BOOL)bindImage:(__CVBuffer *)image;
- (BOOL)bindManagedBuffer;
- (BOOL)bindTensor:(id)tensor;
- (BOOL)checkBufferAndIOSurfaceConsistency:(id)consistency;
- (BOOL)copyBufferIntoIOSurface:(id)surface;
- (VGMLEspressoBuffer)initWithNetwork:(id *)network withLayerName:(id)name withMode:(int)mode;
@end

@implementation VGMLEspressoBuffer

- (VGMLEspressoBuffer)initWithNetwork:(id *)network withLayerName:(id)name withMode:(int)mode
{
  nameCopy = name;
  self->_network = network;
  objc_storeStrong(&self->_layerName, name);
  self->_mode = mode;
  [(NSString *)self->_layerName UTF8String];
  espresso_network_query_blob_dimensions();

  return self;
}

- (BOOL)bindManagedBuffer
{
  [(NSString *)self->_layerName UTF8String];
  espresso_network_bind_buffer();
  return 1;
}

- (BOOL)bindTensor:(id)tensor
{
  tensorCopy = tensor;
  self->_buffer.data = [tensorCopy getData];
  v6 = vextq_s8(*&self->_dimensions[2], *&self->_dimensions[2], 8uLL);
  v7 = vextq_s8(*self->_dimensions, *self->_dimensions, 8uLL);
  espresso_buffer_pack_tensor_shape();
  [(NSString *)self->_layerName UTF8String:*&v6];
  espresso_network_bind_buffer();

  return 1;
}

- (BOOL)bindImage:(__CVBuffer *)image
{
  CVPixelBufferGetWidth(image);
  CVPixelBufferGetHeight(image);
  [(NSString *)self->_layerName UTF8String];
  espresso_network_bind_cvpixelbuffer();
  return 1;
}

- (BOOL)checkBufferAndIOSurfaceConsistency:(id)consistency
{
  v23 = *MEMORY[0x277D85DE8];
  consistencyCopy = consistency;
  pixelFormat = [consistencyCopy pixelFormat];
  width = [consistencyCopy width];
  height = [consistencyCopy height];
  v8 = VGGetChannelsFromPixelFormat(pixelFormat);
  baseAddress = [consistencyCopy baseAddress];
  v10 = baseAddress != 0;
  if (!baseAddress)
  {
    v11 = __VGLogSharedInstance(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_270F06000, v11, OS_LOG_TYPE_ERROR, " IOSurface provided for VGMLEspresso buffer output is empty. ", &v19, 2u);
    }
  }

  if (v8 != self->_dimensions[0])
  {
    v12 = __VGLogSharedInstance(baseAddress);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = self->_dimensions[0];
      v19 = 134218240;
      v20 = v8;
      v21 = 2048;
      v22 = v13;
      _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_ERROR, " IOSurface channels %zu != %zu ", &v19, 0x16u);
    }

    v10 = 0;
  }

  if (height != self->_dimensions[1])
  {
    v14 = __VGLogSharedInstance(baseAddress);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = self->_dimensions[1];
      v19 = 134218240;
      v20 = height;
      v21 = 2048;
      v22 = v15;
      _os_log_impl(&dword_270F06000, v14, OS_LOG_TYPE_ERROR, " IOSurface height %zu != %zu ", &v19, 0x16u);
    }

    v10 = 0;
  }

  if (width != self->_dimensions[2])
  {
    v16 = __VGLogSharedInstance(baseAddress);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = self->_dimensions[2];
      v19 = 134218240;
      v20 = width;
      v21 = 2048;
      v22 = v17;
      _os_log_impl(&dword_270F06000, v16, OS_LOG_TYPE_ERROR, " IOSurface width %zu != %zu ", &v19, 0x16u);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)copyBufferIntoIOSurface:(id)surface
{
  surfaceCopy = surface;
  data = self->_buffer.data;
  v48 = surfaceCopy;
  v6 = [surfaceCopy count];
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      if (v9)
      {
        v10 = [v48 objectAtIndexedSubscript:v8];
        v9 = [(VGMLEspressoBuffer *)self checkBufferAndIOSurfaceConsistency:v10];
      }

      else
      {
        v9 = 0;
      }

      ++v8;
    }

    while (v7 != v8);
    if (!v9)
    {
      v20 = __VGLogSharedInstance(v6);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        _os_log_impl(&dword_270F06000, v20, OS_LOG_TYPE_ERROR, " IOSurface(s) not consistent with the espresso output buffer. ", &buf, 2u);
      }

      v18 = 0;
      goto LABEL_32;
    }
  }

  v11 = [v48 objectAtIndexedSubscript:0];
  pixelFormat = [v11 pixelFormat];

  v13 = [v48 objectAtIndexedSubscript:0];
  width = [v13 width];

  v15 = [v48 objectAtIndexedSubscript:0];
  height = [v15 height];

  v16 = VGGetChannelsFromPixelFormat(pixelFormat);
  v17 = v16 * width;
  v18 = 1;
  if (pixelFormat <= 1278226535)
  {
    if (pixelFormat != 843264102)
    {
      v19 = 843264104;
LABEL_17:
      if (pixelFormat != v19)
      {
        goto LABEL_32;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (pixelFormat == 1278226536)
    {
LABEL_18:
      if (v7)
      {
        v45 = v7;
        v46 = data;
        v21 = 0;
        v44 = 4 * width * v16 * height;
        v22 = 4 * width * v16;
        do
        {
          v23 = [v48 objectAtIndexedSubscript:{v21, v44, v45}];
          [v23 lockWithOptions:0 seed:0];

          if (height)
          {
            v24 = 0;
            v25 = v46;
            do
            {
              v26 = [v48 objectAtIndexedSubscript:v21];
              baseAddress = [v26 baseAddress];
              v28 = [v48 objectAtIndexedSubscript:v21];
              v29 = (baseAddress + [v28 bytesPerRow] * v24);

              buf.data = v29;
              buf.height = 1;
              buf.width = v17;
              buf.rowBytes = 2 * v17;
              src.data = v25;
              src.height = 1;
              src.width = v17;
              src.rowBytes = 4 * v17;
              vImageConvert_PlanarFtoPlanar16F(&src, &buf, 0);
              ++v24;
              v25 += v22;
            }

            while (height != v24);
          }

          v30 = [v48 objectAtIndexedSubscript:v21];
          [v30 unlockWithOptions:0 seed:0];

          ++v21;
          v46 += v44;
        }

        while (v21 != v45);
LABEL_31:
        v18 = 1;
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    if (pixelFormat != 1380410945)
    {
      v19 = 1380411457;
      goto LABEL_17;
    }
  }

  if (v7)
  {
    v31 = v7;
    v32 = 0;
    v33 = 4 * v17;
    v34 = 4 * width * height * v16;
    do
    {
      v35 = [v48 objectAtIndexedSubscript:v32];
      [v35 lockWithOptions:0 seed:0];

      if (height)
      {
        v36 = 0;
        v37 = data;
        do
        {
          v38 = [v48 objectAtIndexedSubscript:v32];
          baseAddress2 = [v38 baseAddress];
          v40 = [v48 objectAtIndexedSubscript:v32];
          v41 = (baseAddress2 + [v40 bytesPerRow] * v36);

          memcpy(v41, v37, v33);
          ++v36;
          v37 += v33;
        }

        while (height != v36);
      }

      v42 = [v48 objectAtIndexedSubscript:v32];
      [v42 unlockWithOptions:0 seed:0];

      ++v32;
      data += v34;
    }

    while (v32 != v31);
    goto LABEL_31;
  }

LABEL_32:

  return v18;
}

@end