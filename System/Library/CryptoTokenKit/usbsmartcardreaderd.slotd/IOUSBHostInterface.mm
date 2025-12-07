@interface IOUSBHostInterface
- (CCIDDescriptorView)CCIDDescriptor;
- (NSArray)pipes;
- (Properties)properties;
@end

@implementation IOUSBHostInterface

- (CCIDDescriptorView)CCIDDescriptor
{
  AssociatedDescriptorWithType = IOUSBGetNextAssociatedDescriptorWithType([(IOUSBHostInterface *)self configurationDescriptor], [(IOUSBHostInterface *)self interfaceDescriptor], 0, 0x21u);
  if (AssociatedDescriptorWithType)
  {
    p_bLength = &AssociatedDescriptorWithType->bLength;
    bLength = AssociatedDescriptorWithType->bLength;
    v5 = +[CCIDDescriptorView length];
    if (v5 == bLength)
    {
      v6 = [[CCIDDescriptorView alloc] initWithBytes:p_bLength length:*p_bLength];
      goto LABEL_9;
    }

    v7 = sub_100001170(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100014314();
    }
  }

  else
  {
    v7 = sub_100001170(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100014350();
    }
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (NSArray)pipes
{
  v3 = objc_opt_new();
  EndpointDescriptor = IOUSBGetNextEndpointDescriptor([(IOUSBHostInterface *)self configurationDescriptor], [(IOUSBHostInterface *)self interfaceDescriptor], 0);
  if (EndpointDescriptor)
  {
    v5 = EndpointDescriptor;
    while (1)
    {
      bLength = v5[1].bLength;
      v13 = 0;
      v7 = [(IOUSBHostInterface *)self copyPipeWithAddress:bLength error:&v13];
      v8 = v13;
      v9 = v8;
      if (!v7)
      {
        break;
      }

      [v3 addObject:v7];

      v5 = IOUSBGetNextEndpointDescriptor([(IOUSBHostInterface *)self configurationDescriptor], [(IOUSBHostInterface *)self interfaceDescriptor], v5);
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v11 = sub_100001170(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001438C();
    }

    v10 = 0;
  }

  else
  {
LABEL_5:
    v10 = v3;
  }

  return v10;
}

- (Properties)properties
{
  v3 = [Properties alloc];
  v4 = [[IOKitObjectHolder alloc] initWithObject:[(IOUSBHostInterface *)self ioService]];
  v5 = [(Properties *)v3 initWithService:v4];

  return v5;
}

@end