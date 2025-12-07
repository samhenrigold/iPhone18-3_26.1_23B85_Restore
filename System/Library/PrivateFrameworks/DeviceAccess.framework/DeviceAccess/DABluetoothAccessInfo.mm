@interface DABluetoothAccessInfo
- (DABluetoothAccessInfo)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
@end

@implementation DABluetoothAccessInfo

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 8;
  }

  else
  {
    v4 = 12;
  }

  v26 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v25 = 0;
    v5 = objc_opt_class();
    CUAppendF(&v25, &v26, "%@", v5);
    v6 = v25;
  }

  bluetoothDevices = self->_bluetoothDevices;
  if (bluetoothDevices)
  {
    v24 = v6;
    v8 = bluetoothDevices;
    v9 = CUPrintNSObjectOneLine();
    CUAppendF(&v24, &v26, "Devices %@", v9);
    v10 = v24;

    v6 = v10;
  }

  bluetoothScanCompanyIdentifiers = self->_bluetoothScanCompanyIdentifiers;
  if (bluetoothScanCompanyIdentifiers)
  {
    v23 = v6;
    v12 = bluetoothScanCompanyIdentifiers;
    v13 = CUPrintNSObjectOneLine();
    CUAppendF(&v23, &v26, "CompanyIDs %@", v13);
    v14 = v23;

    v6 = v14;
  }

  bluetoothScanServices = self->_bluetoothScanServices;
  if (bluetoothScanServices)
  {
    v22 = v6;
    v16 = bluetoothScanServices;
    v17 = CUPrintNSObjectOneLine();
    CUAppendF(&v22, &v26, "Services %@", v17);
    v18 = v22;

    v6 = v18;
  }

  v19 = &stru_285B4C350;
  if (v6)
  {
    v19 = v6;
  }

  v20 = v19;

  return v20;
}

- (DABluetoothAccessInfo)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = DABluetoothAccessInfo;
  v7 = [(DABluetoothAccessInfo *)&v11 init];
  if (!v7)
  {
    if (error)
    {
      v10 = objc_opt_class();
      DAErrorF(350001, "%@ super init failed", v10);
      *error = v8 = 0;
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (!CUXPCDecodeNSArrayOfClass())
  {
    goto LABEL_7;
  }

  v8 = v7;
LABEL_4:

  return v8;
}

@end