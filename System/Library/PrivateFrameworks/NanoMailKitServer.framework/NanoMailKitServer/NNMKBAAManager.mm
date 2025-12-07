@interface NNMKBAAManager
+ (void)appleAuthHeaderFrom:(id)from completion:(id)completion;
+ (void)signRequestData:(id)data completion:(id)completion;
@end

@implementation NNMKBAAManager

+ (void)appleAuthHeaderFrom:(id)from completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__NNMKBAAManager_appleAuthHeaderFrom_completion___block_invoke;
  v8[3] = &unk_2799364E0;
  v9 = completionCopy;
  v7 = completionCopy;
  [self signRequestData:from completion:v8];
}

void __49__NNMKBAAManager_appleAuthHeaderFrom_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if ([v7 count] == 2)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [v7 objectAtIndexedSubscript:0];
      v11 = [v10 base64EncodedStringWithOptions:0];
      v12 = [v9 stringWithFormat:@"%@=%@", @"LeafCert", v11];

      v13 = MEMORY[0x277CCACA8];
      v14 = [v7 objectAtIndexedSubscript:1];
      v15 = [v14 base64EncodedStringWithOptions:0];
      v16 = [v13 stringWithFormat:@"%@=%@", @"IntermediateCert", v15];

      v17 = MEMORY[0x277CCACA8];
      v18 = [v8 base64EncodedStringWithOptions:0];
      v19 = [v17 stringWithFormat:@"%@=%@", @"Signature", v18];

      v23[0] = v16;
      v23[1] = v12;
      v23[2] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
      v21 = [v20 componentsJoinedByString:{@", "}];

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v22 = *(a1 + 32);
      v12 = [MEMORY[0x277CCA9B8] genericErrorWithMessage:@"Invalid cert count"];
      (*(v22 + 16))(v22, 0, v12);
    }
  }
}

+ (void)signRequestData:(id)data completion:(id)completion
{
  v98[6] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  v91 = 0;
  v92 = &v91;
  v93 = 0x2020000000;
  v6 = getDeviceIdentityIsSupportedSymbolLoc_ptr;
  v94 = getDeviceIdentityIsSupportedSymbolLoc_ptr;
  if (!getDeviceIdentityIsSupportedSymbolLoc_ptr)
  {
    v86 = MEMORY[0x277D85DD0];
    v87 = 3221225472;
    v88 = __getDeviceIdentityIsSupportedSymbolLoc_block_invoke;
    v89 = &unk_279936530;
    v90 = &v91;
    v7 = DeviceIdentityLibrary();
    v92[3] = dlsym(v7, "DeviceIdentityIsSupported");
    getDeviceIdentityIsSupportedSymbolLoc_ptr = *(v90[1] + 24);
    v6 = v92[3];
  }

  _Block_object_dispose(&v91, 8);
  if (!v6)
  {
    +[NNMKBAAManager signRequestData:completion:];
    goto LABEL_68;
  }

  if (v6())
  {
    error = 0;
    v8 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0x40000000uLL, &error);
    if (!v8)
    {
      v72 = qword_28144D630;
      if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
      {
        [(NNMKBAAManager *)&error signRequestData:v72 completion:v73, v74, v75, v76, v77, v78];
      }

      v66 = [MEMORY[0x277CCA9B8] genericErrorWithMessage:@"Failed to create access control"];
      (*(completionCopy + 2))(completionCopy, 0, 0, v66);
      goto LABEL_53;
    }

    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v9 = getDeviceIdentityUCRTAttestationSupportedSymbolLoc_ptr;
    v94 = getDeviceIdentityUCRTAttestationSupportedSymbolLoc_ptr;
    if (!getDeviceIdentityUCRTAttestationSupportedSymbolLoc_ptr)
    {
      v86 = MEMORY[0x277D85DD0];
      v87 = 3221225472;
      v88 = __getDeviceIdentityUCRTAttestationSupportedSymbolLoc_block_invoke;
      v89 = &unk_279936530;
      v90 = &v91;
      v10 = DeviceIdentityLibrary();
      v11 = dlsym(v10, "DeviceIdentityUCRTAttestationSupported");
      *(v90[1] + 24) = v11;
      getDeviceIdentityUCRTAttestationSupportedSymbolLoc_ptr = *(v90[1] + 24);
      v9 = v92[3];
    }

    _Block_object_dispose(&v91, 8);
    if (!v9)
    {
      goto LABEL_56;
    }

    v12 = v9();
    v13 = MEMORY[0x277CBEB38];
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v14 = getkMAOptionsBAAKeychainLabelSymbolLoc_ptr;
    v94 = getkMAOptionsBAAKeychainLabelSymbolLoc_ptr;
    if (!getkMAOptionsBAAKeychainLabelSymbolLoc_ptr)
    {
      v86 = MEMORY[0x277D85DD0];
      v87 = 3221225472;
      v88 = __getkMAOptionsBAAKeychainLabelSymbolLoc_block_invoke;
      v89 = &unk_279936530;
      v90 = &v91;
      v15 = DeviceIdentityLibrary();
      v16 = dlsym(v15, "kMAOptionsBAAKeychainLabel");
      *(v90[1] + 24) = v16;
      getkMAOptionsBAAKeychainLabelSymbolLoc_ptr = *(v90[1] + 24);
      v14 = v92[3];
    }

    _Block_object_dispose(&v91, 8);
    if (!v14)
    {
      goto LABEL_56;
    }

    v79 = *v14;
    v96[0] = v79;
    v98[0] = @"NanoMail";
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v17 = getkMAOptionsBAAIgnoreExistingKeychainItemsSymbolLoc_ptr;
    v94 = getkMAOptionsBAAIgnoreExistingKeychainItemsSymbolLoc_ptr;
    if (!getkMAOptionsBAAIgnoreExistingKeychainItemsSymbolLoc_ptr)
    {
      v86 = MEMORY[0x277D85DD0];
      v87 = 3221225472;
      v88 = __getkMAOptionsBAAIgnoreExistingKeychainItemsSymbolLoc_block_invoke;
      v89 = &unk_279936530;
      v90 = &v91;
      v18 = DeviceIdentityLibrary();
      v19 = dlsym(v18, "kMAOptionsBAAIgnoreExistingKeychainItems");
      *(v90[1] + 24) = v19;
      getkMAOptionsBAAIgnoreExistingKeychainItemsSymbolLoc_ptr = *(v90[1] + 24);
      v17 = v92[3];
    }

    _Block_object_dispose(&v91, 8);
    if (!v17)
    {
      goto LABEL_56;
    }

    v20 = *v17;
    v96[1] = v20;
    v98[1] = MEMORY[0x277CBEC28];
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v21 = getkMAOptionsBAANetworkTimeoutIntervalSymbolLoc_ptr;
    v94 = getkMAOptionsBAANetworkTimeoutIntervalSymbolLoc_ptr;
    if (!getkMAOptionsBAANetworkTimeoutIntervalSymbolLoc_ptr)
    {
      v86 = MEMORY[0x277D85DD0];
      v87 = 3221225472;
      v88 = __getkMAOptionsBAANetworkTimeoutIntervalSymbolLoc_block_invoke;
      v89 = &unk_279936530;
      v90 = &v91;
      v22 = DeviceIdentityLibrary();
      v23 = dlsym(v22, "kMAOptionsBAANetworkTimeoutInterval");
      *(v90[1] + 24) = v23;
      getkMAOptionsBAANetworkTimeoutIntervalSymbolLoc_ptr = *(v90[1] + 24);
      v21 = v92[3];
    }

    _Block_object_dispose(&v91, 8);
    if (!v21)
    {
      goto LABEL_56;
    }

    v24 = *v21;
    v96[2] = v24;
    v98[2] = &unk_286C7BE68;
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v25 = getkMAOptionsBAAValiditySymbolLoc_ptr;
    v94 = getkMAOptionsBAAValiditySymbolLoc_ptr;
    if (!getkMAOptionsBAAValiditySymbolLoc_ptr)
    {
      v86 = MEMORY[0x277D85DD0];
      v87 = 3221225472;
      v88 = __getkMAOptionsBAAValiditySymbolLoc_block_invoke;
      v89 = &unk_279936530;
      v90 = &v91;
      v26 = DeviceIdentityLibrary();
      v27 = dlsym(v26, "kMAOptionsBAAValidity");
      *(v90[1] + 24) = v27;
      getkMAOptionsBAAValiditySymbolLoc_ptr = *(v90[1] + 24);
      v25 = v92[3];
    }

    _Block_object_dispose(&v91, 8);
    if (!v25)
    {
      goto LABEL_56;
    }

    v28 = *v25;
    v96[3] = v28;
    v98[3] = &unk_286C7BE80;
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v29 = getkMAOptionsBAASCRTAttestationSymbolLoc_ptr;
    v94 = getkMAOptionsBAASCRTAttestationSymbolLoc_ptr;
    if (!getkMAOptionsBAASCRTAttestationSymbolLoc_ptr)
    {
      v86 = MEMORY[0x277D85DD0];
      v87 = 3221225472;
      v88 = __getkMAOptionsBAASCRTAttestationSymbolLoc_block_invoke;
      v89 = &unk_279936530;
      v90 = &v91;
      v30 = DeviceIdentityLibrary();
      v31 = dlsym(v30, "kMAOptionsBAASCRTAttestation");
      *(v90[1] + 24) = v31;
      getkMAOptionsBAASCRTAttestationSymbolLoc_ptr = *(v90[1] + 24);
      v29 = v92[3];
    }

    _Block_object_dispose(&v91, 8);
    if (!v29)
    {
      goto LABEL_56;
    }

    v32 = *v29;
    v96[4] = v32;
    v33 = [MEMORY[0x277CCABB0] numberWithBool:v12 ^ 1u];
    v98[4] = v33;
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v34 = getkMAOptionsBAAAccessControlsSymbolLoc_ptr;
    v94 = getkMAOptionsBAAAccessControlsSymbolLoc_ptr;
    if (!getkMAOptionsBAAAccessControlsSymbolLoc_ptr)
    {
      v86 = MEMORY[0x277D85DD0];
      v87 = 3221225472;
      v88 = __getkMAOptionsBAAAccessControlsSymbolLoc_block_invoke;
      v89 = &unk_279936530;
      v90 = &v91;
      v35 = DeviceIdentityLibrary();
      v36 = dlsym(v35, "kMAOptionsBAAAccessControls");
      *(v90[1] + 24) = v36;
      getkMAOptionsBAAAccessControlsSymbolLoc_ptr = *(v90[1] + 24);
      v34 = v92[3];
    }

    _Block_object_dispose(&v91, 8);
    if (!v34)
    {
      goto LABEL_56;
    }

    v97 = *v34;
    v98[5] = v8;
    v37 = MEMORY[0x277CBEAC0];
    v38 = v97;
    v39 = [v37 dictionaryWithObjects:v98 forKeys:v96 count:6];

    v80 = [v13 dictionaryWithDictionary:v39];

    v40 = objc_alloc(MEMORY[0x277CBEB18]);
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v41 = getkMAOptionsBAAOIDIMG4ManifestSymbolLoc_ptr;
    v94 = getkMAOptionsBAAOIDIMG4ManifestSymbolLoc_ptr;
    if (!getkMAOptionsBAAOIDIMG4ManifestSymbolLoc_ptr)
    {
      v86 = MEMORY[0x277D85DD0];
      v87 = 3221225472;
      v88 = __getkMAOptionsBAAOIDIMG4ManifestSymbolLoc_block_invoke;
      v89 = &unk_279936530;
      v90 = &v91;
      v42 = DeviceIdentityLibrary();
      v43 = dlsym(v42, "kMAOptionsBAAOIDIMG4Manifest");
      *(v90[1] + 24) = v43;
      getkMAOptionsBAAOIDIMG4ManifestSymbolLoc_ptr = *(v90[1] + 24);
      v41 = v92[3];
    }

    _Block_object_dispose(&v91, 8);
    if (!v41)
    {
      goto LABEL_56;
    }

    v44 = *v41;
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v45 = getkMAOptionsBAAOIDHardwarePropertiesSymbolLoc_ptr;
    v94 = getkMAOptionsBAAOIDHardwarePropertiesSymbolLoc_ptr;
    v95[0] = v44;
    if (!getkMAOptionsBAAOIDHardwarePropertiesSymbolLoc_ptr)
    {
      v86 = MEMORY[0x277D85DD0];
      v87 = 3221225472;
      v88 = __getkMAOptionsBAAOIDHardwarePropertiesSymbolLoc_block_invoke;
      v89 = &unk_279936530;
      v90 = &v91;
      v46 = DeviceIdentityLibrary();
      v47 = dlsym(v46, "kMAOptionsBAAOIDHardwareProperties");
      *(v90[1] + 24) = v47;
      getkMAOptionsBAAOIDHardwarePropertiesSymbolLoc_ptr = *(v90[1] + 24);
      v45 = v92[3];
    }

    _Block_object_dispose(&v91, 8);
    if (!v45)
    {
      goto LABEL_56;
    }

    v48 = *v45;
    v95[1] = v48;
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v49 = getkMAOptionsBAAOIDKeyUsagePropertiesSymbolLoc_ptr;
    v94 = getkMAOptionsBAAOIDKeyUsagePropertiesSymbolLoc_ptr;
    if (!getkMAOptionsBAAOIDKeyUsagePropertiesSymbolLoc_ptr)
    {
      v86 = MEMORY[0x277D85DD0];
      v87 = 3221225472;
      v88 = __getkMAOptionsBAAOIDKeyUsagePropertiesSymbolLoc_block_invoke;
      v89 = &unk_279936530;
      v90 = &v91;
      v50 = DeviceIdentityLibrary();
      v51 = dlsym(v50, "kMAOptionsBAAOIDKeyUsageProperties");
      *(v90[1] + 24) = v51;
      getkMAOptionsBAAOIDKeyUsagePropertiesSymbolLoc_ptr = *(v90[1] + 24);
      v49 = v92[3];
    }

    _Block_object_dispose(&v91, 8);
    if (!v49)
    {
      goto LABEL_56;
    }

    v52 = *v49;
    v95[2] = v52;
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v53 = getkMAOptionsBAAOIDAccessControlsSymbolLoc_ptr;
    v94 = getkMAOptionsBAAOIDAccessControlsSymbolLoc_ptr;
    if (!getkMAOptionsBAAOIDAccessControlsSymbolLoc_ptr)
    {
      v86 = MEMORY[0x277D85DD0];
      v87 = 3221225472;
      v88 = __getkMAOptionsBAAOIDAccessControlsSymbolLoc_block_invoke;
      v89 = &unk_279936530;
      v90 = &v91;
      v54 = DeviceIdentityLibrary();
      v55 = dlsym(v54, "kMAOptionsBAAOIDAccessControls");
      *(v90[1] + 24) = v55;
      getkMAOptionsBAAOIDAccessControlsSymbolLoc_ptr = *(v90[1] + 24);
      v53 = v92[3];
    }

    _Block_object_dispose(&v91, 8);
    if (!v53)
    {
      goto LABEL_56;
    }

    v56 = *v53;
    v95[3] = v56;
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v57 = getkMAOptionsBAAOIDDeviceOSInformationSymbolLoc_ptr;
    v94 = getkMAOptionsBAAOIDDeviceOSInformationSymbolLoc_ptr;
    if (!getkMAOptionsBAAOIDDeviceOSInformationSymbolLoc_ptr)
    {
      v86 = MEMORY[0x277D85DD0];
      v87 = 3221225472;
      v88 = __getkMAOptionsBAAOIDDeviceOSInformationSymbolLoc_block_invoke;
      v89 = &unk_279936530;
      v90 = &v91;
      v58 = DeviceIdentityLibrary();
      v59 = dlsym(v58, "kMAOptionsBAAOIDDeviceOSInformation");
      *(v90[1] + 24) = v59;
      getkMAOptionsBAAOIDDeviceOSInformationSymbolLoc_ptr = *(v90[1] + 24);
      v57 = v92[3];
    }

    _Block_object_dispose(&v91, 8);
    if (!v57)
    {
      goto LABEL_56;
    }

    v60 = *v57;
    v95[4] = v60;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:5];
    v62 = [v40 initWithArray:v61];
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v63 = getkMAOptionsBAAOIDSToIncludeSymbolLoc_ptr;
    v94 = getkMAOptionsBAAOIDSToIncludeSymbolLoc_ptr;
    if (!getkMAOptionsBAAOIDSToIncludeSymbolLoc_ptr)
    {
      v86 = MEMORY[0x277D85DD0];
      v87 = 3221225472;
      v88 = __getkMAOptionsBAAOIDSToIncludeSymbolLoc_block_invoke;
      v89 = &unk_279936530;
      v90 = &v91;
      v64 = DeviceIdentityLibrary();
      v65 = dlsym(v64, "kMAOptionsBAAOIDSToInclude");
      *(v90[1] + 24) = v65;
      getkMAOptionsBAAOIDSToIncludeSymbolLoc_ptr = *(v90[1] + 24);
      v63 = v92[3];
    }

    _Block_object_dispose(&v91, 8);
    if (v63)
    {
      [v80 setObject:v62 forKeyedSubscript:*v63];

      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __45__NNMKBAAManager_signRequestData_completion___block_invoke;
      v82[3] = &unk_279936508;
      v84 = completionCopy;
      v83 = dataCopy;
      v66 = v80;
      v67 = v82;
      v91 = 0;
      v92 = &v91;
      v93 = 0x2020000000;
      v68 = getDeviceIdentityIssueClientCertificateWithCompletionSymbolLoc_ptr;
      v94 = getDeviceIdentityIssueClientCertificateWithCompletionSymbolLoc_ptr;
      if (!getDeviceIdentityIssueClientCertificateWithCompletionSymbolLoc_ptr)
      {
        v86 = MEMORY[0x277D85DD0];
        v87 = 3221225472;
        v88 = __getDeviceIdentityIssueClientCertificateWithCompletionSymbolLoc_block_invoke;
        v89 = &unk_279936530;
        v90 = &v91;
        v69 = DeviceIdentityLibrary();
        v70 = dlsym(v69, "DeviceIdentityIssueClientCertificateWithCompletion");
        *(v90[1] + 24) = v70;
        getDeviceIdentityIssueClientCertificateWithCompletionSymbolLoc_ptr = *(v90[1] + 24);
        v68 = v92[3];
      }

      _Block_object_dispose(&v91, 8);
      if (v68)
      {
        (v68)(0, v66, v67);

LABEL_53:
        goto LABEL_54;
      }

      +[NNMKBAAManager signRequestData:completion:];
    }

    else
    {
LABEL_56:
      +[NNMKBAAManager signRequestData:completion:];
    }

LABEL_68:
    __break(1u);
  }

  v71 = [MEMORY[0x277CCA9B8] genericErrorWithMessage:@"DeviceIdentity not supported on this platform."];
  (*(completionCopy + 2))(completionCopy, 0, 0, v71);

LABEL_54:
}

void __45__NNMKBAAManager_signRequestData_completion___block_invoke(uint64_t a1, __SecKey *a2, void *a3, void *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    if (a2)
    {
      if ([v7 count] == 2)
      {
        v16 = objc_opt_new();
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v17 = v7;
        v18 = [v17 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v44;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v44 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = SecCertificateCopyData(*(*(&v43 + 1) + 8 * i));
              if (!v22)
              {
                v31 = *(a1 + 40);
                v32 = [MEMORY[0x277CCA9B8] genericErrorWithMessage:@"Unable to convert certificate to data"];
                (*(v31 + 16))(v31, 0, 0, v32);

                goto LABEL_31;
              }

              v23 = v22;
              [v16 addObject:v22];
            }

            v19 = [v17 countByEnumeratingWithState:&v43 objects:v47 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        v24 = qword_28144D630;
        if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v42[0]) = 0;
          _os_log_impl(&dword_25B19F000, v24, OS_LOG_TYPE_DEFAULT, "Certificate issued", v42, 2u);
        }

        v42[0] = 0;
        Signature = SecKeyCreateSignature(a2, *MEMORY[0x277CDC300], *(a1 + 32), v42);
        if (Signature)
        {
          (*(*(a1 + 40) + 16))();
        }

        else
        {
          v33 = qword_28144D630;
          if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
          {
            __45__NNMKBAAManager_signRequestData_completion___block_invoke_cold_3(v42, v33, v34, v35, v36, v37, v38, v39);
          }

          v40 = *(a1 + 40);
          v41 = [MEMORY[0x277CCA9B8] genericErrorWithMessage:@"Failed to create signature"];
          (*(v40 + 16))(v40, 0, 0, v41);
        }

        goto LABEL_31;
      }

      v30 = qword_28144D630;
      if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
      {
        __45__NNMKBAAManager_signRequestData_completion___block_invoke_cold_2(v30, v7);
      }

      v27 = *(a1 + 40);
      v28 = MEMORY[0x277CCA9B8];
      v29 = @"Invalid cert count";
    }

    else
    {
      v26 = qword_28144D630;
      if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
      {
        __45__NNMKBAAManager_signRequestData_completion___block_invoke_cold_4(v26);
      }

      v27 = *(a1 + 40);
      v28 = MEMORY[0x277CCA9B8];
      v29 = @"Missing referenceKey";
    }

    v16 = [v28 genericErrorWithMessage:v29];
    (*(v27 + 16))(v27, 0, 0, v16);
LABEL_31:

    goto LABEL_32;
  }

  v9 = qword_28144D630;
  if (os_log_type_enabled(qword_28144D630, OS_LOG_TYPE_ERROR))
  {
    __45__NNMKBAAManager_signRequestData_completion___block_invoke_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  (*(*(a1 + 40) + 16))();
LABEL_32:
}

+ (void)signRequestData:completion:.cold.1()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  [(NNMKBAAManager *)v1 signRequestData:v2 completion:v3, v4, v5, v6, v7, v8];
}

+ (void)signRequestData:(uint64_t)a3 completion:(uint64_t)a4 .cold.15(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_1(&dword_25B19F000, a2, a3, "Failed to create access control: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __45__NNMKBAAManager_signRequestData_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_1(&dword_25B19F000, a2, a3, "Failed to obtain BAA certificates: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __45__NNMKBAAManager_signRequestData_completion___block_invoke_cold_2(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = 134217984;
  v5 = [a2 count];
  _os_log_error_impl(&dword_25B19F000, v3, OS_LOG_TYPE_ERROR, "Failed to obtain BAA certificates: invalid cert count: %lu", &v4, 0xCu);
}

void __45__NNMKBAAManager_signRequestData_completion___block_invoke_cold_3(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_1(&dword_25B19F000, a2, a3, "Failed to create signature: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end