@interface MLCDevice
+ (MLCDevice)deviceWithGPUDevices:(NSArray *)gpus;
+ (MLCDevice)deviceWithType:(MLCDeviceType)type;
+ (MLCDevice)deviceWithType:(MLCDeviceType)type selectsMultipleComputeDevices:(BOOL)selectsMultipleComputeDevices;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDevice:(id)device;
- (MLCDevice)initWithGPUs:(id)us;
- (MLCDevice)initWithType:(int)type engine:(id)engine;
- (MLCDevice)initWithType:(int)type selectsMultipleComputeDevices:(BOOL)devices;
- (MLCDeviceType)actualDeviceType;
- (NSArray)gpuDevices;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)switchToCPUDevice;
@end

@implementation MLCDevice

+ (MLCDevice)deviceWithType:(MLCDeviceType)type
{
  v3 = [[self alloc] initWithType:*&type selectsMultipleComputeDevices:0];

  return v3;
}

+ (MLCDevice)deviceWithType:(MLCDeviceType)type selectsMultipleComputeDevices:(BOOL)selectsMultipleComputeDevices
{
  v4 = [[self alloc] initWithType:*&type selectsMultipleComputeDevices:selectsMultipleComputeDevices];

  return v4;
}

+ (MLCDevice)deviceWithGPUDevices:(NSArray *)gpus
{
  v5 = gpus;
  if ([(NSArray *)v5 count])
  {
    v6 = [[self alloc] initWithGPUs:v5];
  }

  else
  {
    v7 = +[MLCLog framework];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MLCDevice *)a2 deviceWithGPUDevices:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (MLCDevice)initWithType:(int)type selectsMultipleComputeDevices:(BOOL)devices
{
  if (type == 2)
  {
    typeCopy = 0;
  }

  else
  {
    typeCopy = type;
  }

  if (typeCopy == 3)
  {
    v6 = [[MLCDeviceANE alloc] initWithType:3];
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_10:
    selfCopy = 0;
    goto LABEL_11;
  }

  if (typeCopy)
  {
    v6 = [[MLCDeviceGPU alloc] initWithType:typeCopy selectsMultipleComputeDevices:devices];
    deviceList = [(MLCDeviceANE *)v6 deviceList];
    v9 = [deviceList count];

    if (v9)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v6 = [[MLCDeviceCPU alloc] initWithType:0];
LABEL_8:
  self = [(MLCDevice *)self initWithType:typeCopy engine:v6];
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (MLCDevice)initWithGPUs:(id)us
{
  usCopy = us;
  v5 = [[MLCDeviceGPU alloc] initWithDeviceList:usCopy];

  if (v5 && (v6 = v5, -[MLCDeviceGPU deviceList](v6, "deviceList"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v8))
  {
    self = [(MLCDevice *)self initWithType:1 engine:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MLCDevice)initWithType:(int)type engine:(id)engine
{
  engineCopy = engine;
  v11.receiver = self;
  v11.super_class = MLCDevice;
  v8 = [(MLCDevice *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_engine, engine);
    objc_storeStrong(&v9->_computeEngine, engine);
  }

  return v9;
}

- (void)switchToCPUDevice
{
  [(MLCDevice *)self setType:0];
  v4 = [[MLCDeviceCPU alloc] initWithType:0];
  v3 = objc_autoreleasePoolPush();
  [(MLCDevice *)self setEngine:v4];
  [(MLCDevice *)self setComputeEngine:v4];
  objc_autoreleasePoolPop(v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  type = [(MLCDevice *)self type];
  computeEngine = [(MLCDevice *)self computeEngine];
  v8 = [v3 stringWithFormat:@"%@: { deviceType=%d : computeEngine=%@ }", v5, type, computeEngine];

  return v8;
}

- (NSArray)gpuDevices
{
  engine = [(MLCDevice *)self engine];
  deviceList = [engine deviceList];
  v5 = [deviceList objectAtIndexedSubscript:0];
  v6 = [v5 conformsToProtocol:&unk_284BC4800];

  if (v6)
  {
    engine2 = [(MLCDevice *)self engine];
    deviceList2 = [engine2 deviceList];
    v9 = [deviceList2 copy];
  }

  else
  {
    v9 = [MEMORY[0x277CBEBF8] copy];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  type = [(MLCDevice *)self type];
  computeEngine = [(MLCDevice *)self computeEngine];
  v7 = [v4 initWithType:type engine:computeEngine];

  return v7;
}

- (BOOL)isEqualToDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy && (v5 = -[MLCDevice type](self, "type"), v5 == [deviceCopy type]))
  {
    computeEngine = [(MLCDevice *)self computeEngine];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      computeEngine2 = [(MLCDevice *)self computeEngine];
      computeEngine3 = [deviceCopy computeEngine];
      v10 = [computeEngine2 isEqual:computeEngine3];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MLCDevice *)self isEqualToDevice:v5];
  }

  return v6;
}

- (MLCDeviceType)actualDeviceType
{
  result = [(MLCDevice *)self type];
  if (result == MLCDeviceTypeAny)
  {
    engine = [(MLCDevice *)self engine];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    return isKindOfClass & 1;
  }

  return result;
}

+ (void)deviceWithGPUDevices:(const char *)a1 .cold.1(const char *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%@: No GPUs specified", &v4, 0xCu);
}

@end