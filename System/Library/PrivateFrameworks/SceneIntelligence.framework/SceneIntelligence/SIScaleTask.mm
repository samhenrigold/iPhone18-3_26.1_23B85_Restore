@interface SIScaleTask
- (SIScaleTask)initWithOutputResolution:(CGSize)resolution pixelformat:(unsigned int)pixelformat taskInputResourceKey:(id)key taskOutputResourceKey:(id)resourceKey appliedToAlgorithmName:(id)name cvPixelBufferProperties:(id)properties metadataIOSurfaceProperties:(id)surfaceProperties;
- (void)registerResoureStreamWithContext:(id)context;
@end

@implementation SIScaleTask

- (SIScaleTask)initWithOutputResolution:(CGSize)resolution pixelformat:(unsigned int)pixelformat taskInputResourceKey:(id)key taskOutputResourceKey:(id)resourceKey appliedToAlgorithmName:(id)name cvPixelBufferProperties:(id)properties metadataIOSurfaceProperties:(id)surfaceProperties
{
  v14 = *&pixelformat;
  height = resolution.height;
  width = resolution.width;
  keyCopy = key;
  resourceKeyCopy = resourceKey;
  nameCopy = name;
  propertiesCopy = properties;
  surfacePropertiesCopy = surfaceProperties;
  resourceKeyCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-%@-scaling-task", keyCopy, resourceKeyCopy];
  v31.receiver = self;
  v31.super_class = SIScaleTask;
  v22 = [(PSTask *)&v31 initWithName:resourceKeyCopy];

  if (v22)
  {
    height = [(SIBaseScaler *)[SIVideoToolboxScaler alloc] initForOutputResolution:v14 outputPixelFormat:0 mode:nameCopy algorithmKey:width, height];
    scaler = v22->_scaler;
    v22->_scaler = height;

    v22->_outputResolution.width = width;
    v22->_outputResolution.height = height;
    v22->_pixelFormat = v14;
    objc_storeStrong(&v22->_inputResourceKey, key);
    objc_storeStrong(&v22->_outputResourceKey, resourceKey);
    objc_storeStrong(&v22->_cvPixelBufferProperties, properties);
    objc_storeStrong(&v22->_metadataIOSurfaceProperties, surfaceProperties);
    v25 = [objc_alloc(MEMORY[0x277D3E6D8]) initWithResourceKey:v22->_inputResourceKey type:0 capacity:1];
    [(PSTask *)v22 addInput:v25];
    v26 = [objc_alloc(MEMORY[0x277D3E6E0]) initWithResourceKey:v22->_outputResourceKey];
    [(PSTask *)v22 addOutput:v26];
    [(PSTask *)v22 setComputeAgent:0];
    [(PSTask *)v22 setFunction:scale_task userdata:v22->_scaler];
    v27 = v22;
  }

  return v22;
}

- (void)registerResoureStreamWithContext:(id)context
{
  contextCopy = context;
  v8 = xmmword_21DECC010;
  if (self->_cvPixelBufferProperties)
  {
    *(&v8 + 1) = 2;
    v5 = [SIScaleResourceStream cvPixelStreamWithResourceKey:self->_outputResourceKey options:&v8 allocator:camera_resource_buffer_allocator deallocator:deallocator cvPixelBufferProps:?];
    [v5 setHeight:{self->_outputResolution.height, v8}];
    [v5 setWidth:self->_outputResolution.width];
    [v5 setPixelFormat:self->_pixelFormat];
    if (self->_metadataIOSurfaceProperties)
    {
      [v5 setProvider:11];
      [v5 setMetadataIOSurfaceProperties:self->_metadataIOSurfaceProperties];
    }
  }

  else
  {
    height = self->_outputResolution.height;
    width = self->_outputResolution.width;
    *(&v8 + 1) = 1;
    v5 = [MEMORY[0x277D3E680] cvPixelStreamWithResourceKey:self->_outputResourceKey options:&v8 width:width height:height pixelFormat:self->_pixelFormat];
  }

  [contextCopy addResourceStream:{v5, v8}];
}

@end