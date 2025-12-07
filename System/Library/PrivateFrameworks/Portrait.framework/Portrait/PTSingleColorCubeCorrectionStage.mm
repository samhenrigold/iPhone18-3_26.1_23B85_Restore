@interface PTSingleColorCubeCorrectionStage
- (id)init:(id)init cubeSize:(unsigned int)size data:(const char *)data;
- (int)load3DTextureFromData:(const char *)data cubeSize:(unsigned int)size metal:(id)metal outTexture:(id *)texture;
@end

@implementation PTSingleColorCubeCorrectionStage

- (int)load3DTextureFromData:(const char *)data cubeSize:(unsigned int)size metal:(id)metal outTexture:(id *)texture
{
  v9 = MEMORY[0x277CD7058];
  metalCopy = metal;
  v11 = objc_alloc_init(v9);
  if (!v11)
  {
    v12 = _PTLogSystem(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PTSingleColorCubeCorrectionStage load3DTextureFromData:v12 cubeSize:? metal:? outTexture:?];
    }
  }

  [v11 setTextureType:7];
  [v11 setWidth:size];
  [v11 setHeight:size];
  [v11 setDepth:size];
  [v11 setPixelFormat:70];
  [v11 setUsage:1];
  v13 = [metalCopy newTextureWithDescriptor:v11];

  v14 = *texture;
  *texture = v13;

  v15 = *texture;
  if (*texture)
  {
    memset(v18, 0, 24);
    v18[3] = size;
    v18[4] = size;
    v18[5] = size;
    [v15 replaceRegion:v18 mipmapLevel:0 slice:0 withBytes:data bytesPerRow:4 * size bytesPerImage:4 * size * size];
    v16 = 0;
  }

  else
  {
    v16 = -1;
  }

  return v16;
}

- (id)init:(id)init cubeSize:(unsigned int)size data:(const char *)data
{
  v6 = *&size;
  initCopy = init;
  v15.receiver = self;
  v15.super_class = PTSingleColorCubeCorrectionStage;
  v9 = [(PTSingleColorCubeCorrectionStage *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v11 = [(PTSingleColorCubeCorrectionStage *)v9 load3DTextureFromData:data cubeSize:v6 metal:initCopy outTexture:&v9->_defaultCubeTexture];
    if (!v11)
    {
      v13 = v10;
      goto LABEL_8;
    }

    v12 = _PTLogSystem(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PTSingleColorCubeCorrectionStage init:v12 cubeSize:? data:?];
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)load3DTextureFromData:(os_log_t)log cubeSize:metal:outTexture:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "texDesc";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", &v1, 0xCu);
}

@end