@interface ICRemoteCameraDeviceProxy
- (ICRemoteCameraDeviceProxy)initWithPrimaryIdentifierString:(id)string uuidString:(id)uuidString localizedName:(id)name;
- (NSDictionary)deviceContext;
- (void)dealloc;
@end

@implementation ICRemoteCameraDeviceProxy

- (ICRemoteCameraDeviceProxy)initWithPrimaryIdentifierString:(id)string uuidString:(id)uuidString localizedName:(id)name
{
  stringCopy = string;
  uuidStringCopy = uuidString;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = ICRemoteCameraDeviceProxy;
  v12 = [(ICRemoteCameraDeviceProxy *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_primaryIdentifierString, string);
    objc_storeStrong(&v13->_uuidString, uuidString);
    objc_storeStrong(&v13->_localizedName, name);
  }

  return v13;
}

- (NSDictionary)deviceContext
{
  v9[3] = *MEMORY[0x29EDCA608];
  v8[0] = @"ICDevicePrimaryIdentifier";
  primaryIdentifierString = [(ICRemoteCameraDeviceProxy *)self primaryIdentifierString];
  v9[0] = primaryIdentifierString;
  v8[1] = @"ICDeviceHandle";
  uuidString = [(ICRemoteCameraDeviceProxy *)self uuidString];
  v9[1] = uuidString;
  v8[2] = @"ICDeviceName";
  localizedName = [(ICRemoteCameraDeviceProxy *)self localizedName];
  v9[2] = localizedName;
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (void)dealloc
{
  camera = [(ICRemoteCameraDeviceProxy *)self camera];
  [camera setDelegate:0];

  [(ICRemoteCameraDeviceProxy *)self setCamera:0];
  [(ICRemoteCameraDeviceProxy *)self setUuidString:0];
  [(ICRemoteCameraDeviceProxy *)self setLocalizedName:0];
  v4.receiver = self;
  v4.super_class = ICRemoteCameraDeviceProxy;
  [(ICRemoteCameraDeviceProxy *)&v4 dealloc];
}

@end