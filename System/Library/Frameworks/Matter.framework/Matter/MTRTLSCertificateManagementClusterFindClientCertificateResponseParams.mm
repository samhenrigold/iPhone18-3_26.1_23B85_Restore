@interface MTRTLSCertificateManagementClusterFindClientCertificateResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRTLSCertificateManagementClusterFindClientCertificateResponseParams)init;
- (MTRTLSCertificateManagementClusterFindClientCertificateResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRTLSCertificateManagementClusterFindClientCertificateResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRTLSCertificateManagementClusterFindClientCertificateResponseParams

- (MTRTLSCertificateManagementClusterFindClientCertificateResponseParams)init
{
  v6.receiver = self;
  v6.super_class = MTRTLSCertificateManagementClusterFindClientCertificateResponseParams;
  v2 = [(MTRTLSCertificateManagementClusterFindClientCertificateResponseParams *)&v6 init];
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
  v4 = objc_alloc_init(MTRTLSCertificateManagementClusterFindClientCertificateResponseParams);
  certificateDetails = [(MTRTLSCertificateManagementClusterFindClientCertificateResponseParams *)self certificateDetails];
  [(MTRTLSCertificateManagementClusterFindClientCertificateResponseParams *)v4 setCertificateDetails:certificateDetails];

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

- (MTRTLSCertificateManagementClusterFindClientCertificateResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = MTRTLSCertificateManagementClusterFindClientCertificateResponseParams;
  v7 = [(MTRTLSCertificateManagementClusterFindClientCertificateResponseParams *)&v15 init];
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
        v8 = [(MTRTLSCertificateManagementClusterFindClientCertificateResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTRTLSCertificateManagementClusterFindClientCertificateResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRTLSCertificateManagementClusterFindClientCertificateResponseParams;
  v4 = [(MTRTLSCertificateManagementClusterFindClientCertificateResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRTLSCertificateManagementClusterFindClientCertificateResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
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
  v4 = objc_opt_new();
  sub_238E8477C(v26, struct);
  while (sub_238E847D0(v26))
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v27];
    [v5 setCcdid:v6];

    if (v28[0] == 1 && (sub_238DE36B8(v28, v7)[16] & 1) != 0)
    {
      v9 = sub_238DE36B8(v28, v8);
      if ((v9[16] & 1) == 0)
      {
        sub_238EA195C();
      }

      v10 = [MEMORY[0x277CBEA90] dataWithBytes:*v9 length:*(v9 + 1)];
      [v5 setClientCertificate:v10];
    }

    else
    {
      [v5 setClientCertificate:0];
    }

    if (v29[0] == 1)
    {
      v11 = objc_opt_new();
      v13 = sub_238DE36B8(v29, v12);
      sub_2393C5AAC(v23);
      v21 = 0;
      v22 = 0;
      sub_2393C5BDC(v23, v13);
      v24 = 0;
      v25 = 0;
      while (sub_238EA1A80(&v21) && sub_238EA49F4(&v21))
      {
        v14 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:v25];
        [v11 addObject:v14];
      }

      if (v21 != 33)
      {
        v15 = v21;
        if (v21)
        {
          v17 = v22;

          goto LABEL_23;
        }
      }

      [v5 setIntermediateCertificates:v11];
    }

    else
    {
      [v5 setIntermediateCertificates:0];
    }

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v29[80]];
    [v5 setFabricIndex:v16];

    [v4 addObject:v5];
  }

  if (LODWORD(v26[0]) == 33 || (v15 = v26[0], !LODWORD(v26[0])))
  {
    [(MTRTLSCertificateManagementClusterFindClientCertificateResponseParams *)self setCertificateDetails:v4];

    v17 = 0;
    v15 = 0;
    goto LABEL_24;
  }

  v17 = v26[1];
LABEL_23:

LABEL_24:
  v18 = v15;
  v19 = v17;
  result.mFile = v19;
  result.mError = v18;
  result.mLine = HIDWORD(v18);
  return result;
}

@end