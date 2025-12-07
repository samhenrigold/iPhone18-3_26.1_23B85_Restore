@interface MTRDeviceControllerStartupParamsInternal
- (BOOL)keypairsMatchCertificates;
- (MTRDeviceControllerStartupParamsInternal)initWithParams:(id)params;
- (Optional<unsigned)fabricIndex;
- (id)initForExistingFabric:(void *)fabric fabricIndex:(unsigned __int8)index keystore:(OperationalKeystore *)keystore advertiseOperational:(BOOL)operational params:(id)params;
- (id)initForNewController:(id)controller fabricTable:(void *)table keystore:(OperationalKeystore *)keystore advertiseOperational:(BOOL)operational params:(id)params error:(ChipError *)error;
- (id)initForNewFabric:(void *)fabric keystore:(OperationalKeystore *)keystore advertiseOperational:(BOOL)operational params:(id)params;
@end

@implementation MTRDeviceControllerStartupParamsInternal

- (MTRDeviceControllerStartupParamsInternal)initWithParams:(id)params
{
  paramsCopy = params;
  v28.receiver = self;
  v28.super_class = MTRDeviceControllerStartupParamsInternal;
  v5 = [(MTRDeviceControllerStartupParams *)&v28 initWithParams:paramsCopy];
  v6 = v5;
  if (!v5)
  {
LABEL_33:
    v21 = 0;
    goto LABEL_34;
  }

  storageDelegate = v5->_storageDelegate;
  v5->_storageDelegate = 0;

  storageDelegateQueue = v6->_storageDelegateQueue;
  v6->_storageDelegateQueue = 0;

  nocSigner = [(MTRDeviceControllerStartupParams *)v6 nocSigner];
  if (nocSigner)
  {
  }

  else
  {
    rootCertificate = [(MTRDeviceControllerStartupParams *)v6 rootCertificate];

    if (!rootCertificate)
    {
      v22 = sub_2393D9044(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "nocSigner and rootCertificate are both nil; no public key available to identify the fabric", v27, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "nocSigner and rootCertificate are both nil; no public key available to identify the fabric");
      }

      goto LABEL_33;
    }
  }

  operationalCertificate = [(MTRDeviceControllerStartupParams *)v6 operationalCertificate];
  if (operationalCertificate)
  {
    nodeID = [(MTRDeviceControllerStartupParams *)v6 nodeID];

    if (nodeID)
    {
      v13 = sub_2393D9044(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "nodeID must be nil if operationalCertificate is not nil", v27, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "nodeID must be nil if operationalCertificate is not nil");
      }

      goto LABEL_33;
    }
  }

  caseAuthenticatedTags = [(MTRDeviceControllerStartupParams *)v6 caseAuthenticatedTags];
  if (caseAuthenticatedTags)
  {
    nodeID2 = [(MTRDeviceControllerStartupParams *)v6 nodeID];

    if (!nodeID2)
    {
      v23 = sub_2393D9044(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "caseAuthenticatedTags must be nil if nodeID is nil", v27, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "caseAuthenticatedTags must be nil if nodeID is nil");
      }

      goto LABEL_33;
    }
  }

  operationalCertificate2 = [(MTRDeviceControllerStartupParams *)v6 operationalCertificate];

  if (operationalCertificate2)
  {
    operationalKeypair = [(MTRDeviceControllerStartupParams *)v6 operationalKeypair];

    if (!operationalKeypair)
    {
      v24 = sub_2393D9044(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "Must have an operational keypair if an operational certificate is provided", v27, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "Must have an operational keypair if an operational certificate is provided");
      }

      goto LABEL_33;
    }

    operationalKeypair2 = [(MTRDeviceControllerStartupParams *)v6 operationalKeypair];
    operationalCertificate3 = [(MTRDeviceControllerStartupParams *)v6 operationalCertificate];
    v20 = [MTRCertificates keypair:operationalKeypair2 matchesCertificate:operationalCertificate3];

    if (!v20)
    {
      v25 = sub_2393D9044(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "operationalKeypair public key does not match operationalCertificate", v27, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "operationalKeypair public key does not match operationalCertificate");
      }

      goto LABEL_33;
    }
  }

  v21 = v6;
LABEL_34:

  return v21;
}

- (id)initForNewFabric:(void *)fabric keystore:(OperationalKeystore *)keystore advertiseOperational:(BOOL)operational params:(id)params
{
  v32 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v11 = [(MTRDeviceControllerStartupParamsInternal *)self initWithParams:paramsCopy];
  v12 = v11;
  if (!v11)
  {
LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  nocSigner = [(MTRDeviceControllerStartupParams *)v11 nocSigner];
  if (nocSigner)
  {
  }

  else
  {
    operationalCertificate = [(MTRDeviceControllerStartupParams *)v12 operationalCertificate];

    if (!operationalCertificate)
    {
      v24 = sub_2393D9044(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "No way to get an operational certificate: nocSigner and operationalCertificate are both nil", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "No way to get an operational certificate: nocSigner and operationalCertificate are both nil");
      }

      goto LABEL_20;
    }
  }

  operationalCertificate2 = [(MTRDeviceControllerStartupParams *)v12 operationalCertificate];
  if (!operationalCertificate2)
  {
    nodeID = [(MTRDeviceControllerStartupParams *)v12 nodeID];

    if (nodeID)
    {
      goto LABEL_8;
    }

    v26 = arc4random();
    operationalCertificate2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(arc4random() >> 1) | (v26 << 31)];
    [(MTRDeviceControllerStartupParams *)v12 setNodeID:operationalCertificate2];
  }

LABEL_8:
  rootCertificate = [(MTRDeviceControllerStartupParams *)v12 rootCertificate];

  if (!rootCertificate)
  {
    nocSigner2 = [(MTRDeviceControllerStartupParams *)v12 nocSigner];
    fabricID = [(MTRDeviceControllerStartupParams *)v12 fabricID];
    v29 = 0;
    v21 = [MTRCertificates createRootCertificate:nocSigner2 issuerID:0 fabricID:fabricID error:&v29];
    v22 = v29;
    [(MTRDeviceControllerStartupParams *)v12 setRootCertificate:v21];

    if (v22 || ([(MTRDeviceControllerStartupParams *)v12 rootCertificate], v27 = objc_claimAutoreleasedReturnValue(), v28 = v27 == 0, v27, v28))
    {
      v23 = sub_2393D9044(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v22;
        _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "Failed to generate root certificate: %@", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "Failed to generate root certificate: %@", v22);
      }

      goto LABEL_20;
    }
  }

  v12->_fabricTable = fabric;
  v12->_keystore = keystore;
  v12->_advertiseOperational = operational;
  v12->_allowMultipleControllersPerFabric = 0;
  v18 = v12;
LABEL_21:

  return v18;
}

- (id)initForExistingFabric:(void *)fabric fabricIndex:(unsigned __int8)index keystore:(OperationalKeystore *)keystore advertiseOperational:(BOOL)operational params:(id)params
{
  indexCopy = index;
  v70 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v12 = [(MTRDeviceControllerStartupParamsInternal *)self initWithParams:paramsCopy];
  if (!v12)
  {
    goto LABEL_79;
  }

  v13 = sub_2394A7FC0(fabric, indexCopy);
  vendorID = [(MTRDeviceControllerStartupParams *)v12 vendorID];

  if (!vendorID)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v13 + 138)];
    [(MTRDeviceControllerStartupParams *)v12 setVendorID:v15];
  }

  operationalCertificate = [(MTRDeviceControllerStartupParams *)v12 operationalCertificate];
  if (operationalCertificate)
  {

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  nodeID = [(MTRDeviceControllerStartupParams *)v12 nodeID];

  if (nodeID)
  {
    goto LABEL_7;
  }

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v13];
  [(MTRDeviceControllerStartupParams *)v12 setNodeID:v23];

  v65 = v69;
  v66 = 400;
  if (sub_2394A847C(fabric, *(v13 + 137), &v65))
  {
    v24 = sub_2393D9044(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = sub_2393C9138();
      *buf = 136315138;
      v68 = v25;
      _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "Failed to get existing NOC: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1, "Failed to get existing NOC: %s");
    }

    goto LABEL_79;
  }

  operationalKeypair = [(MTRDeviceControllerStartupParams *)v12 operationalKeypair];
  v37 = operationalKeypair == 0;

  if (v37)
  {
    sub_238DB6950(buf, v65, v66);
    v51 = sub_23921FFF0(buf);
    [(MTRDeviceControllerStartupParams *)v12 setOperationalCertificate:v51];

    operationalCertificate2 = [(MTRDeviceControllerStartupParams *)v12 operationalCertificate];
    v53 = operationalCertificate2 == 0;

    if (v53)
    {
      v58 = sub_2393D9044(0);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = sub_2393C9138();
        *buf = 136315138;
        v68 = v59;
        _os_log_impl(&dword_238DAE000, v58, OS_LOG_TYPE_ERROR, "Failed to convert TLV NOC to DER X.509: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0, 1, "Failed to convert TLV NOC to DER X.509: %s");
      }

      goto LABEL_79;
    }

    if (((*(keystore->var0 + 3))(keystore, *(v13 + 137)) & 1) == 0)
    {
      v54 = sub_2393D9044(0);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v54, OS_LOG_TYPE_ERROR, "No existing operational key for fabric", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "No existing operational key for fabric");
      }

      goto LABEL_79;
    }
  }

  v63 = 0;
  v64 = 0;
  sub_238DB6950(buf, v65, v66);
  if (sub_2394A052C(buf, &v63))
  {
    v38 = sub_2393D9044(0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = sub_2393C9138();
      *buf = 136315138;
      v68 = v39;
      _os_log_impl(&dword_238DAE000, v38, OS_LOG_TYPE_ERROR, "Failed to extract existing CATs: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v40 = sub_2393C9138();
      sub_2393D5320(0, 1, "Failed to extract existing CATs: %s", v40);
    }

    goto LABEL_79;
  }

  v55 = 0;
  for (i = 0; i != 12; i += 4)
  {
    if (*(&v63 + i))
    {
      ++v55;
    }
  }

  if (v55)
  {
    v57 = sub_2392213E0(&v63);
    [(MTRDeviceControllerStartupParams *)v12 setCaseAuthenticatedTags:v57];
  }

  else
  {
    [(MTRDeviceControllerStartupParams *)v12 setCaseAuthenticatedTags:0];
  }

  v18 = 1;
LABEL_8:
  v65 = v69;
  v66 = 400;
  if (sub_2394A8274(fabric, *(v13 + 137), &v65))
  {
    v19 = sub_2393D9044(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = sub_2393C9138();
      *buf = 136315138;
      v68 = v20;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Failed to get existing intermediate certificate: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v21 = sub_2393C9138();
      sub_2393D5320(0, 1, "Failed to get existing intermediate certificate: %s", v21);
    }

    goto LABEL_79;
  }

  if (v66)
  {
    sub_238DB6950(buf, v65, v66);
    v22 = sub_23921FFF0(buf);
    if (!v22)
    {
LABEL_79:
      v45 = 0;
      goto LABEL_80;
    }
  }

  else
  {
    v22 = 0;
  }

  v61 = v22;
  nocSigner = [(MTRDeviceControllerStartupParams *)v12 nocSigner];
  if (nocSigner)
  {
    intermediateCertificate = [(MTRDeviceControllerStartupParams *)v12 intermediateCertificate];
    v28 = intermediateCertificate || v61 == 0;
    v29 = !v28;

    if (v29)
    {
      nocSigner2 = [(MTRDeviceControllerStartupParams *)v12 nocSigner];
      v31 = [MTRCertificates keypair:nocSigner2 matchesCertificate:v61];

      if (v31)
      {
        [(MTRDeviceControllerStartupParams *)v12 setIntermediateCertificate:v61];
      }
    }
  }

  if (!v18)
  {
    goto LABEL_46;
  }

  intermediateCertificate2 = [(MTRDeviceControllerStartupParams *)v12 intermediateCertificate];
  v33 = intermediateCertificate2;
  if ((v61 == 0) == (intermediateCertificate2 != 0))
  {

    goto LABEL_38;
  }

  if (!v61)
  {

    goto LABEL_46;
  }

  intermediateCertificate3 = [(MTRDeviceControllerStartupParams *)v12 intermediateCertificate];
  v35 = [MTRCertificates isCertificate:v61 equalTo:intermediateCertificate3];

  if (!v35)
  {
LABEL_38:
    [(MTRDeviceControllerStartupParams *)v12 setOperationalCertificate:0];
  }

LABEL_46:
  v65 = v69;
  v66 = 400;
  if (sub_2394A7BFC(fabric, *(v13 + 137), &v65))
  {
    v41 = sub_2393D9044(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = sub_2393C9138();
      *buf = 136315138;
      v68 = v42;
      _os_log_impl(&dword_238DAE000, v41, OS_LOG_TYPE_ERROR, "Failed to get existing root certificate: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v43 = sub_2393C9138();
      sub_2393D5320(0, 1, "Failed to get existing root certificate: %s", v43);
    }

    v44 = 0;
  }

  else
  {
    sub_238DB6950(buf, v65, v66);
    v44 = sub_23921FFF0(buf);
    if (v44)
    {
      rootCertificate = [(MTRDeviceControllerStartupParams *)v12 rootCertificate];
      v47 = rootCertificate == 0;

      if (v47)
      {
        [(MTRDeviceControllerStartupParams *)v12 setRootCertificate:v44];
      }

      else
      {
        rootCertificate2 = [(MTRDeviceControllerStartupParams *)v12 rootCertificate];
        v49 = [MTRCertificates isCertificate:v44 equalTo:rootCertificate2];

        if (!v49)
        {
          v50 = sub_2393D9044(0);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            *v69 = 0;
            _os_log_impl(&dword_238DAE000, v50, OS_LOG_TYPE_ERROR, "Root certificate identity does not match existing root certificate", v69, 2u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0, 1, "Root certificate identity does not match existing root certificate");
          }

          goto LABEL_52;
        }
      }

      v12->_fabricTable = fabric;
      v12->_fabricIndex.mValueHolder.mHasValue = 1;
      v12->_fabricIndex.mValueHolder.mValue.mData = indexCopy;
      v12->_keystore = keystore;
      v12->_advertiseOperational = operational;
      v12->_allowMultipleControllersPerFabric = 0;
      v45 = v12;
      goto LABEL_53;
    }
  }

LABEL_52:
  v45 = 0;
LABEL_53:

LABEL_80:
  return v45;
}

- (id)initForNewController:(id)controller fabricTable:(void *)table keystore:(OperationalKeystore *)keystore advertiseOperational:(BOOL)operational params:(id)params error:(ChipError *)error
{
  v74 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  paramsCopy = params;
  v69.receiver = self;
  v69.super_class = MTRDeviceControllerStartupParamsInternal;
  v16 = [(MTRDeviceControllerStartupParams *)&v69 initWithParameters:paramsCopy error:error];
  v17 = v16;
  if (v16)
  {
    v72[0] = &unk_284BB9138;
    rootCertificate = [(MTRDeviceControllerStartupParams *)v16 rootCertificate];
    v19 = rootCertificate;
    sub_238DB6950(buf, [rootCertificate bytes], objc_msgSend(rootCertificate, "length"));

    v68 = *buf;
    *&error->mError = sub_2393FA970(&v68, v72);
    error->mFile = v20;

    if (error->mError)
    {
      v21 = sub_2393D9044(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = sub_2393C9138();
        *buf = 136315138;
        *&buf[4] = v22;
        _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Can't extract public key from root certificate: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v23 = sub_2393C9138();
        sub_2393D5320(0, 1, "Can't extract public key from root certificate: %s", v23);
      }

      goto LABEL_7;
    }

    operationalCertificate = [(MTRDeviceControllerStartupParams *)v17 operationalCertificate];
    v67 = 0;
    v26 = sub_239220D54(operationalCertificate, &v67, buf);
    v28 = v27;
    v60 = v67;
    *&error->mError = v26;
    error->mFile = v28;

    if (error->mError)
    {
      v24 = 0;
LABEL_45:

      goto LABEL_46;
    }

    fabricID = [(MTRDeviceControllerStartupParams *)v17 fabricID];
    v30 = sub_2394A7F44(table, v72, [fabricID unsignedLongLongValue], objc_msgSend(v60, "unsignedLongLongValue")) == 0;

    if (!v30)
    {
      v31 = sub_2393D9044(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v31, OS_LOG_TYPE_ERROR, "Trying to start a controller identity that is already running", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "Trying to start a controller identity that is already running");
      }

      v24 = 0;
      *&error->mError = 0x27A0000002FLL;
      error->mFile = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceControllerStartupParams.mm";
      goto LABEL_45;
    }

    controllerDataStore = [controllerCopy controllerDataStore];
    fetchLastLocallyUsedNOC = [controllerDataStore fetchLastLocallyUsedNOC];

    if (fetchLastLocallyUsedNOC)
    {
      v34 = fetchLastLocallyUsedNOC;
      v35 = v34;
      sub_238DB6950(buf, [v34 bytes], objc_msgSend(v34, "length"));

      v68 = *buf;
      v65 = 0;
      v66 = 0;
      if (sub_2394A03F4(&v68, &v65, &v66))
      {
        v36 = sub_2393D9044(0);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = sub_2393C9138();
          *buf = 136315138;
          *&buf[4] = v37;
          _os_log_impl(&dword_238DAE000, v36, OS_LOG_TYPE_ERROR, "Unable to extract node ID and fabric ID from old operational certificate: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          v38 = sub_2393C9138();
          sub_2393D5320(0, 1, "Unable to extract node ID and fabric ID from old operational certificate: %s", v38);
        }

        goto LABEL_34;
      }

      v63 = 0;
      v64 = 0;
      if (sub_2394A052C(&v68, &v63))
      {
        v39 = sub_2393D9044(0);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = sub_2393C9138();
          *buf = 136315138;
          *&buf[4] = v40;
          _os_log_impl(&dword_238DAE000, v39, OS_LOG_TYPE_ERROR, "Failed to extract CATs from old operational certificate: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          v41 = sub_2393C9138();
          sub_2393D5320(0, 1, "Failed to extract CATs from old operational certificate: %s", v41);
        }

        goto LABEL_34;
      }

      operationalCertificate2 = [(MTRDeviceControllerStartupParams *)v17 operationalCertificate];
      v43 = [MTRCertificates convertX509Certificate:operationalCertificate2];

      if (!v43)
      {
LABEL_34:
        v24 = 0;
LABEL_44:

        goto LABEL_45;
      }

      *buf = sub_238EF479C(v43);
      *&buf[8] = v44;
      v61 = 0;
      v62 = 0;
      if (sub_2394A052C(buf, &v61))
      {
        v45 = sub_2393D9044(0);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = sub_2393C9138();
          *v70 = 136315138;
          v71 = v46;
          _os_log_impl(&dword_238DAE000, v45, OS_LOG_TYPE_ERROR, "Failed to extract CATs from new operational certificate: %s", v70, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          v47 = sub_2393C9138();
          sub_2393D5320(0, 1, "Failed to extract CATs from new operational certificate: %s", v47);
        }

        goto LABEL_34;
      }

      unsignedLongLongValue = [v60 unsignedLongLongValue];
      if (unsignedLongLongValue != v65 || !sub_239220F58(&v63, &v61))
      {
        v49 = sub_2393D9044(0);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *v70 = 0;
          _os_log_impl(&dword_238DAE000, v49, OS_LOG_TYPE_DEFAULT, "Node ID or CATs changed.  Clearing CASE resumption storage.", v70, 2u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(0, 2, "Node ID or CATs changed.  Clearing CASE resumption storage.");
        }

        controllerDataStore2 = [controllerCopy controllerDataStore];
        [controllerDataStore2 clearAllResumptionInfo];
      }
    }

    v17->_fabricTable = table;
    v17->_keystore = keystore;
    v17->_advertiseOperational = operational;
    v17->_allowMultipleControllersPerFabric = 1;
    storageDelegate = [paramsCopy storageDelegate];
    storageDelegate = v17->_storageDelegate;
    v17->_storageDelegate = storageDelegate;

    storageDelegateQueue = [paramsCopy storageDelegateQueue];
    storageDelegateQueue = v17->_storageDelegateQueue;
    v17->_storageDelegateQueue = storageDelegateQueue;

    productAttestationAuthorityCertificates = [paramsCopy productAttestationAuthorityCertificates];
    productAttestationAuthorityCertificates = v17->_productAttestationAuthorityCertificates;
    v17->_productAttestationAuthorityCertificates = productAttestationAuthorityCertificates;

    certificationDeclarationCertificates = [paramsCopy certificationDeclarationCertificates];
    certificationDeclarationCertificates = v17->_certificationDeclarationCertificates;
    v17->_certificationDeclarationCertificates = certificationDeclarationCertificates;

    v24 = v17;
    goto LABEL_44;
  }

LABEL_7:
  v24 = 0;
LABEL_46:

  return v24;
}

- (BOOL)keypairsMatchCertificates
{
  nocSigner = [(MTRDeviceControllerStartupParams *)self nocSigner];

  if (nocSigner)
  {
    intermediateCertificate = [(MTRDeviceControllerStartupParams *)self intermediateCertificate];
    if (intermediateCertificate || ([(MTRDeviceControllerStartupParams *)self rootCertificate], (intermediateCertificate = objc_claimAutoreleasedReturnValue()) != 0))
    {
      nocSigner2 = [(MTRDeviceControllerStartupParams *)self nocSigner];
      v6 = [MTRCertificates keypair:nocSigner2 matchesCertificate:intermediateCertificate];

      if (v6)
      {

        goto LABEL_6;
      }

      v14 = sub_2393D9044(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Provided nocSigner does not match certificates", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "Provided nocSigner does not match certificates");
      }
    }

    else
    {
      v16 = sub_2393D9044(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "No certificate to match nocSigner", v20, 2u);
      }

      intermediateCertificate = 0;
      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "No certificate to match nocSigner");
      }
    }

    goto LABEL_23;
  }

LABEL_6:
  operationalCertificate = [(MTRDeviceControllerStartupParams *)self operationalCertificate];
  if (!operationalCertificate || (v8 = operationalCertificate, [(MTRDeviceControllerStartupParams *)self operationalKeypair], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9) || ([(MTRDeviceControllerStartupParams *)self operationalKeypair], v10 = objc_claimAutoreleasedReturnValue(), [(MTRDeviceControllerStartupParams *)self operationalCertificate], v11 = objc_claimAutoreleasedReturnValue(), v12 = [MTRCertificates keypair:v10 matchesCertificate:v11], v11, v10, v12))
  {
    LOBYTE(v13) = 1;
    return v13;
  }

  v15 = sub_2393D9044(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Provided operationalKeypair does not match operationalCertificate", v18, 2u);
  }

  v13 = sub_2393D5398(1u);
  if (v13)
  {
    sub_2393D5320(0, 1, "Provided operationalKeypair does not match operationalCertificate");
LABEL_23:
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (Optional<unsigned)fabricIndex
{
  mHasValue = self->_fabricIndex.mValueHolder.mHasValue;
  *v2 = mHasValue;
  if (mHasValue)
  {
    v2[1] = self->_fabricIndex.mValueHolder.mValue.mData;
  }

  return self;
}

@end