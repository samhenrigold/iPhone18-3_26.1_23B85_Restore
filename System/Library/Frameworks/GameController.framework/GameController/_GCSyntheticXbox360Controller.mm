@interface _GCSyntheticXbox360Controller
+ (id)devicePropertiesWithDescription:(id)description;
@end

@implementation _GCSyntheticXbox360Controller

+ (id)devicePropertiesWithDescription:(id)description
{
  v12[6] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (!devicePropertiesWithDescription__BaseProperties)
  {
    v11[0] = @"ReportDescriptor";
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&Xbox360DeviceDescriptor length:188];
    v12[0] = v4;
    v12[1] = @"Microsoft";
    v11[1] = @"Manufacturer";
    v11[2] = @"Product";
    v12[2] = @"GamePad-1";
    v12[3] = &unk_1F4E8E2E8;
    v11[3] = @"VendorID";
    v11[4] = @"ProductID";
    v11[5] = @"VersionNumber";
    v12[4] = &unk_1F4E8E300;
    v12[5] = &unk_1F4E8E318;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];
    v6 = devicePropertiesWithDescription__BaseProperties;
    devicePropertiesWithDescription__BaseProperties = v5;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v7 addEntriesFromDictionary:devicePropertiesWithDescription__BaseProperties];
  [v7 setObject:@"Xbox360Controller" forKey:@"_GCSyntheticDeviceType"];
  controllerIdentifier = [descriptionCopy controllerIdentifier];
  v9 = [controllerIdentifier description];
  [v7 setObject:v9 forKey:@"_GCSyntheticDeviceControllerIdentifier"];

  return v7;
}

@end