@interface MDMSharedDefinitions
+ (id)oidsAnonymous:(BOOL)anonymous nonce:(BOOL)nonce coresidency:(BOOL)coresidency;
@end

@implementation MDMSharedDefinitions

+ (id)oidsAnonymous:(BOOL)anonymous nonce:(BOOL)nonce coresidency:(BOOL)coresidency
{
  coresidencyCopy = coresidency;
  nonceCopy = nonce;
  v45 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEB18];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v9 = getkMAOptionsBAAOIDEDASEPOSVersionSymbolLoc_ptr;
  v40 = getkMAOptionsBAAOIDEDASEPOSVersionSymbolLoc_ptr;
  if (!getkMAOptionsBAAOIDEDASEPOSVersionSymbolLoc_ptr)
  {
    v10 = DeviceIdentityLibrary();
    v38[3] = dlsym(v10, "kMAOptionsBAAOIDEDASEPOSVersion");
    getkMAOptionsBAAOIDEDASEPOSVersionSymbolLoc_ptr = v38[3];
    v9 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v9)
  {
    goto LABEL_35;
  }

  v11 = *v9;
  v43[0] = v11;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v12 = getkMAOptionsBAAOIDEDAFirmwareVersionSymbolLoc_ptr;
  v40 = getkMAOptionsBAAOIDEDAFirmwareVersionSymbolLoc_ptr;
  if (!getkMAOptionsBAAOIDEDAFirmwareVersionSymbolLoc_ptr)
  {
    v13 = DeviceIdentityLibrary();
    v38[3] = dlsym(v13, "kMAOptionsBAAOIDEDAFirmwareVersion");
    getkMAOptionsBAAOIDEDAFirmwareVersionSymbolLoc_ptr = v38[3];
    v12 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v12)
  {
    goto LABEL_35;
  }

  v14 = *v12;
  v43[1] = v14;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v15 = getkMAOptionsBAAOIDEDAOSVersionSymbolLoc_ptr;
  v40 = getkMAOptionsBAAOIDEDAOSVersionSymbolLoc_ptr;
  if (!getkMAOptionsBAAOIDEDAOSVersionSymbolLoc_ptr)
  {
    v16 = DeviceIdentityLibrary();
    v38[3] = dlsym(v16, "kMAOptionsBAAOIDEDAOSVersion");
    getkMAOptionsBAAOIDEDAOSVersionSymbolLoc_ptr = v38[3];
    v15 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v15)
  {
    goto LABEL_35;
  }

  v17 = *v15;
  v43[2] = v17;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v18 = getkMAOptionsBAAOIDEDAProductTypeSymbolLoc_ptr;
  v40 = getkMAOptionsBAAOIDEDAProductTypeSymbolLoc_ptr;
  if (!getkMAOptionsBAAOIDEDAProductTypeSymbolLoc_ptr)
  {
    v19 = DeviceIdentityLibrary();
    v38[3] = dlsym(v19, "kMAOptionsBAAOIDEDAProductType");
    getkMAOptionsBAAOIDEDAProductTypeSymbolLoc_ptr = v38[3];
    v18 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v18)
  {
    goto LABEL_35;
  }

  v44 = *v18;
  v20 = MEMORY[0x277CBEA60];
  v21 = v44;
  v22 = [v20 arrayWithObjects:v43 count:4];

  v23 = [v8 arrayWithArray:v22];

  if (!anonymous)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v24 = getkMAOptionsBAAOIDEDASerialNumberSymbolLoc_ptr;
    v40 = getkMAOptionsBAAOIDEDASerialNumberSymbolLoc_ptr;
    if (!getkMAOptionsBAAOIDEDASerialNumberSymbolLoc_ptr)
    {
      v25 = DeviceIdentityLibrary();
      v38[3] = dlsym(v25, "kMAOptionsBAAOIDEDASerialNumber");
      getkMAOptionsBAAOIDEDASerialNumberSymbolLoc_ptr = v38[3];
      v24 = v38[3];
    }

    _Block_object_dispose(&v37, 8);
    if (!v24)
    {
      goto LABEL_35;
    }

    v26 = *v24;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v27 = getkMAOptionsBAAOIDEDAUDIDSymbolLoc_ptr;
    v40 = getkMAOptionsBAAOIDEDAUDIDSymbolLoc_ptr;
    v41 = v26;
    if (!getkMAOptionsBAAOIDEDAUDIDSymbolLoc_ptr)
    {
      v28 = DeviceIdentityLibrary();
      v38[3] = dlsym(v28, "kMAOptionsBAAOIDEDAUDID");
      getkMAOptionsBAAOIDEDAUDIDSymbolLoc_ptr = v38[3];
      v27 = v38[3];
    }

    _Block_object_dispose(&v37, 8);
    if (!v27)
    {
      goto LABEL_35;
    }

    v42 = *v27;
    v29 = MEMORY[0x277CBEA60];
    v30 = v42;
    v31 = [v29 arrayWithObjects:&v41 count:2];

    [v23 addObjectsFromArray:v31];
  }

  if (coresidencyCopy && [MEMORY[0x277D034F8] isMDACoResidencyEnabled])
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v32 = getkMAOptionsBAAOIDEDAAttestationPublicKeySymbolLoc_ptr;
    v40 = getkMAOptionsBAAOIDEDAAttestationPublicKeySymbolLoc_ptr;
    if (!getkMAOptionsBAAOIDEDAAttestationPublicKeySymbolLoc_ptr)
    {
      v33 = DeviceIdentityLibrary();
      v38[3] = dlsym(v33, "kMAOptionsBAAOIDEDAAttestationPublicKey");
      getkMAOptionsBAAOIDEDAAttestationPublicKeySymbolLoc_ptr = v38[3];
      v32 = v38[3];
    }

    _Block_object_dispose(&v37, 8);
    if (!v32)
    {
      goto LABEL_35;
    }

    [v23 addObject:*v32];
  }

  if (!nonceCopy)
  {
    goto LABEL_32;
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v34 = getkMAOptionsBAAOIDEDANonceSymbolLoc_ptr;
  v40 = getkMAOptionsBAAOIDEDANonceSymbolLoc_ptr;
  if (!getkMAOptionsBAAOIDEDANonceSymbolLoc_ptr)
  {
    v35 = DeviceIdentityLibrary();
    v38[3] = dlsym(v35, "kMAOptionsBAAOIDEDANonce");
    getkMAOptionsBAAOIDEDANonceSymbolLoc_ptr = v38[3];
    v34 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v34)
  {
LABEL_35:
    +[MDMSharedDefinitions oidsAnonymous:nonce:coresidency:];
    __break(1u);
  }

  [v23 addObject:*v34];
LABEL_32:

  return v23;
}

+ (void)oidsAnonymous:nonce:coresidency:.cold.1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  +[MDMUserClient sharedClient];
}

@end