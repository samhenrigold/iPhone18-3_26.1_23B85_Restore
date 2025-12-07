@interface GCHIDDevice
- (GCHIDDevice)init;
- (GCHIDDevice)initWithService:(unsigned int)service;
- (NSArray)elements;
- (NSNumber)maxFeatureReportSize;
- (NSNumber)maxInputReportSize;
- (NSNumber)maxOutputReportSize;
- (NSNumber)productID;
- (NSNumber)vendorID;
- (NSNumber)versionNumber;
- (NSString)manufacturer;
- (NSString)product;
- (NSString)transport;
- (id)debugDescription;
- (id)valueForHIDDeviceKey:(id)key;
- (id)valueForKey:(id)key;
@end

@implementation GCHIDDevice

- (GCHIDDevice)initWithService:(unsigned int)service
{
  v40 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = GCHIDDevice;
  v3 = [(GCHIDDevice *)&v22 initWithService:*&service];
  if (v3)
  {
    v4 = objc_opt_class();
    object_setClass(v3, v4);
    v5 = IOHIDDeviceCopyMatchingElements(v3, 0, 0);
    if (v5)
    {
      v6 = objc_opt_new();
      v7 = objc_opt_new();
      v8 = objc_opt_new();
      v9 = objc_opt_new();
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__6;
      v37 = __Block_byref_object_dispose__6;
      v38 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __ProcessHIDElements_block_invoke;
      aBlock[3] = &unk_1E8414D80;
      v21 = v9;
      v28 = v21;
      v10 = v7;
      v29 = v10;
      v11 = v8;
      v30 = v11;
      v12 = v6;
      v31 = v12;
      v32 = &v33;
      v13 = _Block_copy(aBlock);
      v14 = _Block_copy(v13);
      v15 = v34[5];
      v34[5] = v14;

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v16 = v5;
      v17 = [(__CFArray *)v16 countByEnumeratingWithState:&v23 objects:v39 count:16];
      if (v17)
      {
        v18 = *v24;
        do
        {
          v19 = 0;
          do
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v16);
            }

            (*(v13 + 2))(v13, *(*(&v23 + 1) + 8 * v19++));
          }

          while (v17 != v19);
          v17 = [(__CFArray *)v16 countByEnumeratingWithState:&v23 objects:v39 count:16];
        }

        while (v17);
      }

      [v12 enumerateObjectsUsingBlock:&__block_literal_global_10];
      [v10 enumerateObjectsUsingBlock:&__block_literal_global_78];
      [v11 enumerateObjectsUsingBlock:&__block_literal_global_83];

      _Block_object_dispose(&v33, 8);
      CFRelease(v16);
    }
  }

  return v3;
}

- (GCHIDDevice)init
{
  [(GCHIDDevice *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)debugDescription
{
  v15 = MEMORY[0x1E696AEC0];
  v16.receiver = self;
  v16.super_class = GCHIDDevice;
  v14 = [(GCHIDDevice *)&v16 debugDescription];
  transport = [(GCHIDDevice *)self transport];
  vendorID = [(GCHIDDevice *)self vendorID];
  productID = [(GCHIDDevice *)self productID];
  versionNumber = [(GCHIDDevice *)self versionNumber];
  manufacturer = [(GCHIDDevice *)self manufacturer];
  product = [(GCHIDDevice *)self product];
  maxInputReportSize = [(GCHIDDevice *)self maxInputReportSize];
  maxOutputReportSize = [(GCHIDDevice *)self maxOutputReportSize];
  maxFeatureReportSize = [(GCHIDDevice *)self maxFeatureReportSize];
  v12 = [v15 stringWithFormat:@"%@ {\n\t transport = %@\n\t vendorID = %@\n\t productID = %@\n\t versionNumber = %@\n\t manufacturer = %@\n\t product = %@\n\t maxInputReportSize = %@\n\t maxOutputReportSize = %@\n\t maxFeatureReportSize = %@\n}", v14, transport, vendorID, productID, versionNumber, manufacturer, product, maxInputReportSize, maxOutputReportSize, maxFeatureReportSize];

  return v12;
}

- (NSString)transport
{
  v2 = [(GCHIDDevice *)self propertyForKey:@"Transport"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)vendorID
{
  v2 = [(GCHIDDevice *)self propertyForKey:@"VendorID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)productID
{
  v2 = [(GCHIDDevice *)self propertyForKey:@"ProductID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)versionNumber
{
  v2 = [(GCHIDDevice *)self propertyForKey:@"VersionNumber"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)manufacturer
{
  v2 = [(GCHIDDevice *)self propertyForKey:@"Manufacturer"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)product
{
  v2 = [(GCHIDDevice *)self propertyForKey:@"Product"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)maxInputReportSize
{
  v2 = [(GCHIDDevice *)self propertyForKey:@"MaxInputReportSize"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)maxOutputReportSize
{
  v2 = [(GCHIDDevice *)self propertyForKey:@"MaxOutputReportSize"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)maxFeatureReportSize
{
  v2 = [(GCHIDDevice *)self propertyForKey:@"MaxFeatureReportSize"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSArray)elements
{
  v2 = IOHIDDeviceCopyMatchingElements(self, 0, 0);

  return v2;
}

- (id)valueForHIDDeviceKey:(id)key
{
  keyCopy = key;
  v5 = GCHIDDeviceAttributeKeys();
  v6 = [v5 containsObject:keyCopy];

  if (v6)
  {
    v7 = [keyCopy substringToIndex:1];
    lowercaseString = [v7 lowercaseString];

    v9 = [keyCopy stringByReplacingCharactersInRange:0 withString:{1, lowercaseString}];
    v10 = [(GCHIDDevice *)self valueForKey:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  v5 = GCHIDDeviceAttributeKeys();
  v6 = [v5 containsObject:keyCopy];

  if (v6)
  {
    v7 = [keyCopy substringToIndex:1];
    lowercaseString = [v7 lowercaseString];

    v9 = [keyCopy stringByReplacingCharactersInRange:0 withString:{1, lowercaseString}];

    keyCopy = v9;
  }

  v12.receiver = self;
  v12.super_class = GCHIDDevice;
  v10 = [(GCHIDDevice *)&v12 valueForKey:keyCopy];

  return v10;
}

@end