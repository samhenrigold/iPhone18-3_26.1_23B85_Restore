@interface MPSAccelerationStructureGroup
- (MPSAccelerationStructureGroup)initWithDevice:(id)device;
- (MPSAccelerationStructureGroup)initWithDevice:(id)device storageMode:(unint64_t)mode;
- (void)dealloc;
@end

@implementation MPSAccelerationStructureGroup

- (MPSAccelerationStructureGroup)initWithDevice:(id)device storageMode:(unint64_t)mode
{
  v9.receiver = self;
  v9.super_class = MPSAccelerationStructureGroup;
  v5 = [(MPSAccelerationStructureGroup *)&v9 init];
  if (v5)
  {
    if ((mode & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      sub_239E24918(v5, v6);
    }

    MPSDevice = MPSDevice::GetMPSDevice();
    MPSDevice::GetQueue(MPSDevice);
    operator new();
  }

  return 0;
}

- (MPSAccelerationStructureGroup)initWithDevice:(id)device
{
  if (!device)
  {
    sub_239E249C0(self, a2);
    return 0;
  }

  if (!MPSDevice::GetMPSDevice())
  {
    sub_239E24954(self, v5);
    return 0;
  }

  return MEMORY[0x2821F9670](self, sel_initWithDevice_storageMode_, device);
}

- (void)dealloc
{
  bvhGroup = self->_bvhGroup;
  if (bvhGroup)
  {
    if (atomic_fetch_add(bvhGroup + 2, 0xFFFFFFFF) == 1)
    {
      (*(*bvhGroup + 8))(bvhGroup, a2);
    }

    self->_bvhGroup = 0;
  }

  v4.receiver = self;
  v4.super_class = MPSAccelerationStructureGroup;
  [(MPSAccelerationStructureGroup *)&v4 dealloc];
}

@end