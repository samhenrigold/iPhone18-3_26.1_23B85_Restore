@interface MTRTLSCertificateManagementClusterFindRootCertificateResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRTLSCertificateManagementClusterFindRootCertificateResponseParams)init;
- (MTRTLSCertificateManagementClusterFindRootCertificateResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRTLSCertificateManagementClusterFindRootCertificateResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRTLSCertificateManagementClusterFindRootCertificateResponseParams

- (MTRTLSCertificateManagementClusterFindRootCertificateResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTRTLSCertificateManagementClusterFindRootCertificateResponseParams;
  v2 = [(MTRTLSCertificateManagementClusterFindRootCertificateResponseParams *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    certificateDetails = v2->_certificateDetails;
    v2->_certificateDetails = array;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRTLSCertificateManagementClusterFindRootCertificateResponseParams);
  certificateDetails = [(MTRTLSCertificateManagementClusterFindRootCertificateResponseParams *)self certificateDetails];
  [(MTRTLSCertificateManagementClusterFindRootCertificateResponseParams *)v4 setCertificateDetails:certificateDetails];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: certificateDetails:%@ >", v5, self->_certificateDetails];;

  return v6;
}

- (MTRTLSCertificateManagementClusterFindRootCertificateResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = MTRTLSCertificateManagementClusterFindRootCertificateResponseParams;
  v7 = [(MTRTLSCertificateManagementClusterFindRootCertificateResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  objc_msgSend__responseDataForCommand_clusterID_commandID_error_(MTRBaseDevice);
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 8), *(v14 + 24));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      sub_2393C5AAC(v12);
      sub_2393C5ADC(v12, 0, 0);
      v12[72] = 0;
      v8 = sub_238EFD1FC(v12, v13);
      if (!v8)
      {
        v8 = [(MTRTLSCertificateManagementClusterFindRootCertificateResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, error);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v14);
LABEL_10:

  return v10;
}

- (MTRTLSCertificateManagementClusterFindRootCertificateResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRTLSCertificateManagementClusterFindRootCertificateResponseParams;
  v4 = [(MTRTLSCertificateManagementClusterFindRootCertificateResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRTLSCertificateManagementClusterFindRootCertificateResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct
{
  v5 = objc_opt_new();
  sub_238E8175C(v16, struct);
  while (sub_238E817AC(v16))
  {
    v6 = objc_opt_new();
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v17];
    [v6 setCaid:v7];

    if (v18[0] == 1)
    {
      v9 = sub_238DE36B8(v18, v8);
      v10 = [MEMORY[0x277CBEA90] dataWithBytes:*v9 length:v9[1]];
      [v6 setCertificate:v10];
    }

    else
    {
      [v6 setCertificate:0];
    }

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v18[24]];
    [v6 setFabricIndex:v11];

    [v5 addObject:v6];
  }

  if (LODWORD(v16[0]) == 33 || (v12 = v16[0], !LODWORD(v16[0])))
  {
    [(MTRTLSCertificateManagementClusterFindRootCertificateResponseParams *)self setCertificateDetails:v5];

    v13 = 0;
    v12 = 0;
  }

  else
  {
    v13 = v16[1];
  }

  v14 = v12;
  v15 = v13;
  result.mFile = v15;
  result.mError = v14;
  result.mLine = HIDWORD(v14);
  return result;
}

@end