@interface _LSDDeviceIdentifierService
+ (id)XPCInterface;
+ (id)vendorNameForDeviceIdentifiersWithContext:(LSContext *)context bundleUnit:(unsigned int)unit bundleData:(const LSBundleData *)data;
+ (void)clearIdentifiersForUninstallationWithContext:(LSContext *)context bundleUnit:(unsigned int)unit bundleData:(const LSBundleData *)data;
+ (void)generateIdentifiersForInstallationWithContext:(LSContext *)context bundleUnit:(unsigned int)unit bundleData:(const LSBundleData *)data;
@end

@implementation _LSDDeviceIdentifierService

+ (id)XPCInterface
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43___LSDDeviceIdentifierService_XPCInterface__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = self;
  if (+[_LSDDeviceIdentifierService XPCInterface]::once != -1)
  {
    dispatch_once(&+[_LSDDeviceIdentifierService XPCInterface]::once, v4);
  }

  v2 = +[_LSDDeviceIdentifierService XPCInterface]::result;

  return v2;
}

+ (id)vendorNameForDeviceIdentifiersWithContext:(LSContext *)context bundleUnit:(unsigned int)unit bundleData:(const LSBundleData *)data
{
  v5 = 0;
  if (context && unit && data)
  {
    [(_LSDatabase *)context->db store];
    v5 = _CSStringCopyCFString();
    if (v5)
    {
      goto LABEL_5;
    }

    [(_LSDatabase *)context->db store];
    v9 = _CSStringCopyCFString();
    if (!v9)
    {
      v5 = 0;
      goto LABEL_16;
    }

    v10 = v9;
    if ([v10 hasPrefix:@"com.apple."])
    {
      v11 = @"Apple Inc.";
    }

    else
    {
      v12 = [v10 componentsSeparatedByString:@"."];
      v13 = [v12 mutableCopy];

      if ([v13 count] >= 2)
      {
        [v13 removeLastObject];
        v14 = MEMORY[0x1E696AEC0];
        v15 = [v13 componentsJoinedByString:@"."];
        v11 = [v14 stringWithFormat:@"BundleID:%@", v15];
      }

      else
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BundleID:%@", v10];
      }
    }

    v5 = v11;
    if (v11)
    {
LABEL_5:
      if ((*(&data->_clas + 6) & 0x20) != 0)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Beta:%@", v5];

        v5 = v8;
      }
    }
  }

LABEL_16:

  return v5;
}

+ (void)clearIdentifiersForUninstallationWithContext:(LSContext *)context bundleUnit:(unsigned int)unit bundleData:(const LSBundleData *)data
{
  if (context && unit && data)
  {
    v9 = [self vendorNameForDeviceIdentifiersWithContext:? bundleUnit:? bundleData:?];
    [(_LSDatabase *)context->db store];
    v7 = _CSStringCopyCFString();
    v8 = [(_LSDService *)self XPCProxyWithErrorHandler:?];
    [v8 clearIdentifiersForUninstallationWithVendorName:v9 bundleIdentifier:v7];
  }
}

+ (void)generateIdentifiersForInstallationWithContext:(LSContext *)context bundleUnit:(unsigned int)unit bundleData:(const LSBundleData *)data
{
  v6 = *&unit;
  v9 = [(_LSDService *)self XPCProxyWithErrorHandler:?];
  memset(&v16, 0, sizeof(v16));
  v10 = +[_LSDServiceDomain defaultServiceDomain];
  v11 = _LSDServiceGetXPCConnection(self, v10);
  v12 = v11;
  if (v11)
  {
    objc_msgSend_auditToken(v11);
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
  }

  if (context)
  {
    if (v6)
    {
      if (data)
      {
        v15 = v16;
        if ((data->_bundleFlags & 0x18000000) == 0 || softLinkba_is_process_extension(&v15))
        {
          v13 = [self vendorNameForDeviceIdentifiersWithContext:context bundleUnit:v6 bundleData:{data, *v15.val, *&v15.val[4]}];
          [(_LSDatabase *)context->db store];
          v14 = _CSStringCopyCFString();
          [v9 generateIdentifiersWithVendorName:v13 bundleIdentifier:v14];
        }
      }
    }
  }
}

@end