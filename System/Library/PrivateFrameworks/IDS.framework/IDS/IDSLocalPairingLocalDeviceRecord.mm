@interface IDSLocalPairingLocalDeviceRecord
- (IDSLocalPairingLocalDeviceRecord)initWithWithFullIdentityDataClassA:(id)a classC:(id)c classD:(id)d;
- (id)_fullIdenityForDataProtectionClass:(unsigned int)class error:(id *)error;
- (id)description;
@end

@implementation IDSLocalPairingLocalDeviceRecord

- (IDSLocalPairingLocalDeviceRecord)initWithWithFullIdentityDataClassA:(id)a classC:(id)c classD:(id)d
{
  v6.receiver = self;
  v6.super_class = IDSLocalPairingLocalDeviceRecord;
  return [(IDSLocalPairingRecord *)&v6 initWithIdentityDataClassA:a classC:c classD:d];
}

- (id)description
{
  v16 = 0;
  v3 = [(IDSLocalPairingLocalDeviceRecord *)self fullIdentityClassA:&v16];
  v4 = v16;
  v15 = 0;
  v5 = [(IDSLocalPairingLocalDeviceRecord *)self fullIdentityClassC:&v15];
  v6 = v15;
  v14 = 0;
  v7 = [(IDSLocalPairingLocalDeviceRecord *)self fullIdentityClassD:&v14];
  v8 = v14;
  v9 = MEMORY[0x1E696AEC0];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"<%@: %p classA: %@, errorClassA: %@, classC: %@, errorClassC: %@, classD: %@, errorClassD: %@>", v11, self, v3, v4, v5, v6, v7, v8];

  return v12;
}

- (id)_fullIdenityForDataProtectionClass:(unsigned int)class error:(id *)error
{
  v5 = *&class;
  v6 = [IDSLocalPairingRecord identityDataForDataProtectionClass:"identityDataForDataProtectionClass:error:" error:?];
  if (v6)
  {
    v7 = [MEMORY[0x1E69A5310] identityWithData:v6 error:error];
  }

  else
  {
    nRPairing = [MEMORY[0x1E69A6138] NRPairing];
    if (os_log_type_enabled(nRPairing, OS_LOG_TYPE_ERROR))
    {
      sub_195B33084(v5);
    }

    v7 = 0;
  }

  return v7;
}

@end