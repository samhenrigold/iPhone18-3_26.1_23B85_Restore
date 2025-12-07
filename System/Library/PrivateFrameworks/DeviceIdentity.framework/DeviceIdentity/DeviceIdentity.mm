uint64_t DeviceIdentityIsSupported()
{
  if (!is_virtual_machine())
  {
    return 1;
  }

  return libavp_guest_has_host_key(0);
}

BOOL is_virtual_machine()
{
  v3 = 0;
  v2 = 4;
  return !sysctlbyname("kern.hv_vmm_present", &v3, &v2, 0, 0) && v3 == 1;
}

id isNSArray(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_171(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v492[1] = *MEMORY[0x277D85DE8];
  v470[0] = 0;
  v470[1] = v470;
  v470[2] = 0x3032000000;
  v470[3] = __Block_byref_object_copy__0;
  v470[4] = __Block_byref_object_dispose__0;
  v471 = 0;
  v464 = 0;
  v465 = &v464;
  v466 = 0x3032000000;
  v467 = __Block_byref_object_copy__0;
  v468 = __Block_byref_object_dispose__0;
  v469 = 0;
  v460 = 0;
  v461 = &v460;
  v462 = 0x2020000000;
  v463 = 0;
  v456 = 0;
  v457 = &v456;
  v458 = 0x2020000000;
  v459 = 0;
  v452 = 0;
  v453 = &v452;
  v454 = 0x2020000000;
  v455 = 0;
  v448 = 0;
  v449 = &v448;
  v450 = 0x2020000000;
  v451 = 0;
  error = 0;
  v443 = 0;
  v444 = &v443;
  v445 = 0x2020000000;
  v446 = 0;
  v439 = 0;
  v440 = &v439;
  v441 = 0x2020000000;
  v442 = 0;
  v438 = -1;
  v432 = 0;
  v433 = &v432;
  v434 = 0x3032000000;
  v435 = __Block_byref_object_copy__0;
  v436 = __Block_byref_object_dispose__0;
  v437 = 0;
  v426 = 0;
  v427 = &v426;
  v428 = 0x3032000000;
  v429 = __Block_byref_object_copy__0;
  v430 = __Block_byref_object_dispose__0;
  v431 = 0;
  v424[0] = 0;
  v424[1] = v424;
  v424[2] = 0x3032000000;
  v424[3] = __Block_byref_object_copy__0;
  v424[4] = __Block_byref_object_dispose__0;
  v425 = 0;
  v422[0] = 0;
  v422[1] = v422;
  v422[2] = 0x3032000000;
  v422[3] = __Block_byref_object_copy__0;
  v422[4] = __Block_byref_object_dispose__0;
  v423 = 0;
  v416 = 0;
  v417 = &v416;
  v418 = 0x3032000000;
  v419 = __Block_byref_object_copy__0;
  v420 = __Block_byref_object_dispose__0;
  v421 = 0;
  v414[0] = 0;
  v414[1] = v414;
  v414[2] = 0x3032000000;
  v414[3] = __Block_byref_object_copy__0;
  v414[4] = __Block_byref_object_dispose__0;
  v415 = 0;
  v413[0] = 0;
  v413[1] = v413;
  v413[2] = 0x2020000000;
  v413[3] = 0;
  v412 = 0;
  v408 = 0;
  v409 = &v408;
  v410 = 0x2020000000;
  v411 = 0;
  v407[0] = 0;
  v407[1] = v407;
  v407[2] = 0x2020000000;
  v407[3] = 0;
  v406 = 0;
  if (!*(a1 + 48))
  {
    v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 692, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid input.", a7, a8, v312);
LABEL_23:
    v349 = 0;
LABEL_24:
    v34 = 0;
    v346 = 0;
    v35 = 0;
    v36 = 0;
    v334 = 0;
    v330 = 0;
    task = 0;
LABEL_25:
    v347 = 0;
    cf = 0;
    v345 = 0;
    v342 = 0;
    v343 = 0;
    v340 = 0;
    v341 = 0;
    v336 = 0;
    v337 = 0;
    v335 = 0;
    v338 = 0;
    v339 = 0;
    v37 = 0;
    v329 = 0;
    goto LABEL_26;
  }

  v349 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v349)
  {
    v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 698, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate array.", v9, v10, v312);
    goto LABEL_23;
  }

  v11 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  task = v11;
  if (!v11)
  {
    v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 706, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create task.", v12, v13, v312);
    goto LABEL_24;
  }

  v347 = SecTaskCopySigningIdentifier(v11, &error);
  if (!v347)
  {
    v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 712, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to query code signing identifier.", v14, v15, v312);
    v34 = 0;
    v346 = 0;
    v35 = 0;
    v36 = 0;
    v334 = 0;
    v330 = 0;
    goto LABEL_25;
  }

  v346 = SecTaskCopyValueForEntitlement(task, @"com.apple.mobileactivationd.spi", &error);
  v16 = isNSNumber(v346);
  if (!v16 || (v17 = [v346 BOOLValue], v16, (v17 & 1) == 0))
  {
    v57 = error;
    v491 = @"com.apple.mobileactivationd.spi";
    v492[0] = MEMORY[0x277CBEC38];
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v492 forKeys:&v491 count:1];
    v60 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 718, @"com.apple.MobileActivation.ErrorDomain", -7, v57, @"Missing required entitlement: %@", v58, v59, v42);
    v61 = *(*(a1 + 56) + 8);
    v62 = *(v61 + 40);
    *(v61 + 40) = v60;

    v34 = 0;
    v35 = 0;
    v36 = 0;
    v334 = 0;
    v335 = 0;
    v329 = 0;
    v330 = 0;
    cf = 0;
    v344 = 0;
    v345 = 0;
    v342 = 0;
    v343 = 0;
    v340 = 0;
    v341 = 0;
    v336 = 0;
    v337 = 0;
    v338 = 0;
    v339 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v331 = 0;
    v332 = 0;
    goto LABEL_29;
  }

  v345 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v345)
  {
    if (*(a1 + 32))
    {
      [v345 addEntriesFromDictionary:?];
    }

    v20 = is_virtual_machine();
    if (v20)
    {
      v21 = [MEMORY[0x277CCABB0] numberWithBool:1];
      [v345 setObject:v21 forKeyedSubscript:@"scrtAttestation"];
    }

    v22 = [v345 objectForKeyedSubscript:@"OIDSToInclude"];
    v23 = isNSArray(v22);

    if (v23)
    {
      v24 = objc_alloc(MEMORY[0x277CBEB98]);
      v25 = [v345 objectForKeyedSubscript:@"OIDSToInclude"];
      v344 = [v24 initWithArray:v25];

      if (([v344 containsObject:@"1.2.840.113635.100.10.1"] & 1) != 0 || (objc_msgSend(v344, "containsObject:", @"1.2.840.113635.100.8.1") & 1) != 0 || objc_msgSend(v344, "containsObject:", @"1.2.840.113635.100.8.3"))
      {
        v26 = SecTaskCopyValueForEntitlement(task, @"com.apple.mobileactivationd.device-identifiers", &error);

        v27 = isNSNumber(v26);
        if (!v27 || (v28 = [v26 BOOLValue], v27, (v28 & 1) == 0))
        {
          v63 = error;
          v489 = @"com.apple.mobileactivationd.device-identifiers";
          v490 = MEMORY[0x277CBEC38];
          v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v490 forKeys:&v489 count:1];
          v66 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 750, @"com.apple.MobileActivation.ErrorDomain", -7, v63, @"Missing required entitlement: %@", v64, v65, v42);
          v67 = *(*(a1 + 56) + 8);
          v68 = *(v67 + 40);
          *(v67 + 40) = v66;

          v34 = 0;
          v35 = 0;
          v36 = 0;
          v334 = 0;
          v335 = 0;
          v329 = 0;
          v330 = 0;
          cf = 0;
          v342 = 0;
          v343 = 0;
          v340 = 0;
          v341 = 0;
          v336 = 0;
          v337 = 0;
          v338 = 0;
          v339 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v331 = 0;
          v332 = 0;
          v346 = v26;
          goto LABEL_29;
        }

        v346 = v26;
      }

      v29 = copy_supported_eda_oids();
      v30 = [v344 intersectsSet:v29];

      if (v30)
      {
        v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 756, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"This API does not support Enterprise Device Attestation OIDs: %@", v31, v32, v344);
LABEL_58:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v334 = 0;
        v335 = 0;
        v330 = 0;
        cf = 0;
        v342 = 0;
        v343 = 0;
        v340 = 0;
        v341 = 0;
        v336 = 0;
        v337 = 0;
        v338 = 0;
        v339 = 0;
LABEL_77:
        v37 = 0;
        v329 = 0;
LABEL_78:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        goto LABEL_27;
      }

      if ([v344 containsObject:@"1.2.840.113635.100.8.6"])
      {
        v78 = [*(a1 + 32) objectForKeyedSubscript:@"AccessControls"];
        v79 = v78 == 0;

        if (v79)
        {
          v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 761, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required option: %@", v80, v81, @"AccessControls");
          goto LABEL_58;
        }
      }
    }

    else
    {
      v344 = 0;
    }

    v69 = [v345 objectForKeyedSubscript:@"KeychainLabel"];
    v70 = isNSString(v69);

    if (v70)
    {
      v71 = isRunningInRecovery();
      if ((v71 & 1) != 0 || isRunningInDiagnosticsMode(v71, v72))
      {
        v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 768, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Option (%@) not allowed for processes running in recoveryOS or diagnostics mode.", v73, v74, @"KeychainLabel");
        goto LABEL_58;
      }

      v92 = [v345 objectForKeyedSubscript:@"ClientAttestationData"];
      v93 = isNSData(v92);

      if (v93)
      {
        v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 773, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Keychain (%@) not supported with %@.", v94, v95, @"KeychainLabel");
        goto LABEL_58;
      }

      v343 = [v345 objectForKeyedSubscript:@"KeychainLabel"];
      v342 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-rk", v343];
      v337 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-leaf", v343];
      v335 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-intermediate", v343];
      v340 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-combined", v343];
      v338 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-monotonic-clock", v343];
      v339 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-server-timestamp", v343];
      v312 = v343;
      v336 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-rtc-reset-count"];
    }

    else
    {
      v338 = 0;
      v339 = 0;
      v335 = 0;
      v336 = 0;
      v342 = 0;
      v343 = 0;
      v337 = 0;
      v340 = 0;
    }

    v75 = [v345 objectForKeyedSubscript:@"KeychainAccessGroup"];
    v76 = isNSString(v75);

    if (v76)
    {
      v77 = [v345 objectForKeyedSubscript:@"KeychainAccessGroup"];
    }

    else
    {
      v77 = 0;
    }

    if (v343 && !v77)
    {
      v77 = v347;
    }

    v341 = v77;
    v82 = [v345 objectForKeyedSubscript:@"IgnoreExistingKeychainItems"];
    v83 = isNSNumber(v82);

    if (v83)
    {
      v84 = [v345 objectForKeyedSubscript:@"IgnoreExistingKeychainItems"];
      v85 = [v84 BOOLValue];

      v86 = v85 ^ 1;
    }

    else
    {
      v86 = 1;
    }

    v333 = v86;
    v87 = [v345 objectForKeyedSubscript:@"AccessControls"];

    if (!v87)
    {
      goto LABEL_86;
    }

    v88 = isRunningInRecovery();
    if ((v88 & 1) != 0 || isRunningInDiagnosticsMode(v88, v89))
    {
      v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 802, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Option (%@) not allowed for processes running in recoveryOS or diagnostics mode.", v90, v91, @"AccessControls");
LABEL_76:
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v334 = 0;
      v330 = 0;
      cf = 0;
      goto LABEL_77;
    }

    v96 = [v345 objectForKeyedSubscript:@"ClientAttestationData"];
    v97 = isNSData(v96);

    if (v97)
    {
      v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 807, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"ACLs (%@) not supported with %@.", v98, v99, @"AccessControls");
      goto LABEL_76;
    }

    v100 = [v345 objectForKeyedSubscript:@"AccessControls"];
    v101 = CFGetTypeID(v100);
    v102 = v101 == SecAccessControlGetTypeID();

    if (v102)
    {
      cf = [v345 objectForKeyedSubscript:@"AccessControls"];

      CFRetain(cf);
    }

    else
    {
LABEL_86:
      cf = 0;
    }

    v103 = [v345 objectForKeyedSubscript:@"reuseExistingKey"];
    v104 = isNSNumber(v103);

    if (v104)
    {
      v105 = [v345 objectForKeyedSubscript:@"reuseExistingKey"];
      v326 = [v105 BOOLValue];
    }

    else
    {
      v326 = 0;
    }

    v106 = [v345 objectForKeyedSubscript:@"UseSoftwareGeneratedKey"];
    v107 = isNSNumber(v106);

    if (v107)
    {
      v108 = [v345 objectForKeyedSubscript:@"UseSoftwareGeneratedKey"];
      queue = [v108 BOOLValue];
    }

    else
    {
      queue = 1;
    }

    v109 = [v345 objectForKeyedSubscript:@"scrtAttestation"];
    v110 = isNSNumber(v109);

    if (v110)
    {
      v111 = [v345 objectForKeyedSubscript:@"scrtAttestation"];
      v20 = [v111 BOOLValue];
    }

    v112 = [v345 objectForKeyedSubscript:@"ClientAttestationData"];
    v113 = isNSData(v112);

    if (v113)
    {
      v114 = [v345 objectForKeyedSubscript:@"ClientAttestationPublicKey"];
      v115 = isNSData(v114);
      v116 = v115 == 0;

      if (v116)
      {
        v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 831, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required option for %@.", v117, v118, @"ClientAttestationPublicKey");
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v334 = 0;
        v330 = 0;
        goto LABEL_77;
      }

      v334 = [v345 objectForKeyedSubscript:@"ClientAttestationData"];
      v330 = [v345 objectForKeyedSubscript:@"ClientAttestationPublicKey"];
    }

    else
    {
      v330 = 0;
      v334 = 0;
    }

    v119 = [v345 objectForKeyedSubscript:@"ReturnReferenceDate"];
    v120 = isNSNumber(v119);

    if (v120)
    {
      v121 = [v345 objectForKeyedSubscript:@"ReturnReferenceDate"];
      v320 = [v121 BOOLValue];
    }

    else
    {
      v320 = 0;
    }

    v122 = [v345 objectForKeyedSubscript:@"SkipNetworkRequest"];
    v123 = isNSNumber(v122);

    if (v123)
    {
      v124 = [v345 objectForKeyedSubscript:@"SkipNetworkRequest"];
      v125 = [v124 BOOLValue];
    }

    else
    {
      v125 = 0;
    }

    v126 = [v345 objectForKeyedSubscript:@"DeleteExistingKeysAndCerts"];
    v127 = isNSNumber(v126);

    if (v127)
    {
      v128 = [v345 objectForKeyedSubscript:@"DeleteExistingKeysAndCerts"];
      LODWORD(v127) = [v128 BOOLValue];
    }

    v129 = [v345 objectForKeyedSubscript:@"ClientProvidedDate"];
    v130 = isNSDate(v129);

    if (v130)
    {
      v329 = [v345 objectForKeyedSubscript:@"ClientProvidedDate"];
    }

    else
    {
      v329 = 0;
    }

    if (v342)
    {
      if (v20)
      {
        v133 = [v342 stringByAppendingString:@"-scrt"];

        v134 = [v337 stringByAppendingString:@"-scrt"];

        v135 = [v335 stringByAppendingString:@"-scrt"];

        v136 = [v340 stringByAppendingString:@"-scrt"];

        v137 = [v338 stringByAppendingString:@"-scrt"];

        v138 = [v339 stringByAppendingString:@"-scrt"];

        [v336 stringByAppendingString:@"-scrt"];
      }

      else
      {
        v133 = [v342 stringByAppendingString:@"-ucrt"];

        v134 = [v337 stringByAppendingString:@"-ucrt"];

        v135 = [v335 stringByAppendingString:@"-ucrt"];

        v136 = [v340 stringByAppendingString:@"-ucrt"];

        v137 = [v338 stringByAppendingString:@"-ucrt"];

        v138 = [v339 stringByAppendingString:@"-ucrt"];

        [v336 stringByAppendingString:@"-ucrt"];
      }
      v139 = ;
      v338 = v137;
      v339 = v138;
      v342 = v133;
      v335 = v135;
      v337 = v134;
      v340 = v136;

      v336 = v139;
    }

    else
    {
      v342 = 0;
    }

    if (v127)
    {
      v34 = 0;
      if (v343 && v341)
      {
        delete_keychain_data(v341, v338, 0);
        delete_keychain_data(v341, v336, 0);
        delete_keychain_data(v341, v339, 0);
        delete_keychain_data(v341, v340, 0);
        delete_keychain_item(v341, v342, 0);
        delete_certificate(v341, v337, 0);
        delete_certificate(v341, v335, 0);
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v331 = 0;
        v332 = 0;
      }

      else
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v331 = 0;
        v332 = 0;
      }

      goto LABEL_30;
    }

    if (!v334)
    {
      goto LABEL_125;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = SecAccessControlCreate();
    if (!cf)
    {
      v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 908, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create access control.", v140, v141, v312);
      v34 = 0;
      v35 = 0;
      v36 = 0;
      cf = 0;
LABEL_156:
      v37 = 0;
      goto LABEL_78;
    }

    v142 = *MEMORY[0x277CDBF08];
    if ((SecAccessControlSetProtection() & 1) == 0)
    {
      v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 913, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to set ACL protection to %@.", v131, v132, v142);
    }

    else
    {
LABEL_125:
      v143 = v333;
      if (!v343)
      {
        v143 = 0;
      }

      if (v143 != 1)
      {
        v331 = 0;
        v332 = 0;
        v40 = 0;
        goto LABEL_141;
      }

      v144 = *(*(a1 + 56) + 8);
      obj = *(v144 + 40);
      v145 = copy_keychain_item(v341, v342, v345, &v438, &obj);
      objc_storeStrong((v144 + 40), obj);
      v449[3] = v145;
      if (v438 != -25300 && v438)
      {
        v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 923, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 56) + 8) + 40), @"Failed to query existing reference key (%@/%@): %d", v146, v147, v341);
      }

      else
      {
        v148 = *(*(a1 + 56) + 8);
        v149 = *(v148 + 40);
        *(v148 + 40) = 0;

        v150 = *(*(a1 + 56) + 8);
        v404 = *(v150 + 40);
        v332 = copy_keychain_data(v341, v340, &v438, &v404);
        objc_storeStrong((v150 + 40), v404);
        if (v438 != -25300 && v438)
        {
          v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 931, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 56) + 8) + 40), @"Failed to query existing leaf/intermediate certificates (%@/%@): %d", v151, v152, v341);
          goto LABEL_158;
        }

        v153 = *(*(a1 + 56) + 8);
        v154 = *(v153 + 40);
        *(v153 + 40) = 0;

        if (v332)
        {
          v155 = *(*(a1 + 56) + 8);
          v403 = *(v155 + 40);
          v331 = parseDERCertificatesFromChain(v332, &v403);
          objc_storeStrong((v155 + 40), v403);
          if (!v331 || [v331 count] != 2)
          {
            v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 944, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 56) + 8) + 40), @"Failed to parse DER certificate chain.", v156, v157, v312);
            goto LABEL_160;
          }

          v158 = [v331 objectAtIndexedSubscript:0];
          v159 = SecCertificateCreateWithData(0, v158);
          v444[3] = v159;

          if (!v444[3])
          {
            v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 950, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create certificate from DER data.", v160, v161, v312);
            goto LABEL_160;
          }

          v162 = [v331 objectAtIndexedSubscript:1];
          v163 = SecCertificateCreateWithData(0, v162);
          v440[3] = v163;

          if (!v440[3])
          {
            v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 956, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create certificate from DER data.", v131, v132, v312);
LABEL_160:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            goto LABEL_28;
          }

LABEL_189:
          if (v449[3] && (v228 = v444[3]) != 0)
          {
            if (v344)
            {
              v229 = [v344 allObjects];
              v40 = copyCertificateOIDsThatDiffer(v228, v229);
            }

            else
            {
              v40 = 0;
            }

            if ([v40 count])
            {
              v231 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1024, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Mismatch in requested OIDs and existing certificate's OIDs (%@).", v131, v132, v40);
              v232 = *(*(a1 + 56) + 8);
              v233 = *(v232 + 40);
              *(v232 + 40) = v231;

              v230 = 1;
              goto LABEL_200;
            }
          }

          else
          {
            v40 = 0;
          }

          v230 = 0;
LABEL_200:
          v234 = v449;
          if (v449[3])
          {
            v235 = isFactoryMFiCertificate(v341, v444[3]);
            v234 = v449;
            if (v235)
            {
              v236 = v449[3];
              v237 = *(*(a1 + 56) + 8);
              v399 = *(v237 + 40);
              valid = security_valid_security_enclave_reference_key(v236, 1, 0, &v399, v164, v165, v131, v132);
              objc_storeStrong((v237 + 40), v399);
              if (!valid)
              {
                goto LABEL_211;
              }

              v234 = v449;
            }
          }

          v239 = v234[3];
          if (!v239 || (v240 = *(*(a1 + 56) + 8), v398 = *(v240 + 40), v241 = security_valid_security_enclave_reference_key(v239, 0, 0, &v398, v164, v165, v131, v132), objc_storeStrong((v240 + 40), v398), v241) && ((v242 = v449[3]) == 0 || (v243 = v444[3]) == 0 || (v244 = *(*(a1 + 56) + 8), v397 = *(v244 + 40), v245 = security_certificate_matches_key(v242, 0, v243, &v397), objc_storeStrong((v244 + 40), v397), (v245 & 1) != 0)))
          {
            if (!v230)
            {
              goto LABEL_221;
            }

            goto LABEL_212;
          }

LABEL_211:
          v246 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1044, @"com.apple.MobileActivation.ErrorDomain", -2, *(*(*(a1 + 56) + 8) + 40), @"Invalid reference key.", v131, v132, v312);
          v247 = *(*(a1 + 56) + 8);
          v248 = *(v247 + 40);
          *(v247 + 40) = v246;

LABEL_212:
          v249 = MEMORY[0x277D86220];
          v250 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v249, OS_LOG_TYPE_DEFAULT))
          {
            v251 = *(*(*(a1 + 56) + 8) + 40);
            *buf = 138412290;
            v473 = v251;
            _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Deleting invalid keys/certificates: %@", buf, 0xCu);
          }

          delete_keychain_data(v341, v338, 0);
          delete_keychain_data(v341, v336, 0);
          delete_keychain_data(v341, v339, 0);
          delete_keychain_data(v341, v340, 0);
          delete_keychain_item(v341, v342, 0);
          delete_certificate(v341, v337, 0);
          delete_certificate(v341, v335, 0);
          v252 = v449;
          v253 = v449[3];
          if (v253)
          {
            CFRelease(v253);
            v252 = v449;
          }

          v252[3] = 0;
          v254 = v444;
          v255 = v444[3];
          if (v255)
          {
            CFRelease(v255);
            v254 = v444;
          }

          v254[3] = 0;
          v256 = v440;
          v257 = v440[3];
          if (v257)
          {
            CFRelease(v257);
            v256 = v440;
          }

          v256[3] = 0;
          v258 = *(*(a1 + 56) + 8);
          v259 = *(v258 + 40);
          *(v258 + 40) = 0;

LABEL_221:
          if (v449[3] && v444[3] && v440[3])
          {
            v260 = *(*(a1 + 56) + 8);
            v396 = *(v260 + 40);
            v37 = copyDateUsedForCertificateValidation(v329, v341, v338, v339, &v406, &v396);
            objc_storeStrong((v260 + 40), v396);
            if (v37)
            {
              [v37 timeIntervalSinceReferenceDate];
              if (SecCertificateIsValid() && ([v37 timeIntervalSinceReferenceDate], SecCertificateIsValid()))
              {
                SecCertificateNotValidAfter();
                v262 = v261;
                SecCertificateNotValidBefore();
                v264 = v263;
                [v37 timeIntervalSinceReferenceDate];
                v266 = v265;
                SecCertificateNotValidBefore();
                if (v266 - v267 >= (v262 - v264) * 0.9)
                {
                  v268 = 1;
                  v318 = 1;
                }

                else
                {
                  v318 = 0;
                  v268 = 1;
                }
              }

              else
              {
                v268 = 0;
                v318 = 0;
              }

              if (v406 != 1)
              {
                goto LABEL_256;
              }

              v269 = *(*(a1 + 56) + 8);
              v395 = *(v269 + 40);
              v270 = copyRTCResetCountWithError(&v395);
              objc_storeStrong((v269 + 40), v395);
              *(v409 + 6) = v270;
              v273 = *(*(a1 + 56) + 8);
              v276 = *(v273 + 40);
              v275 = (v273 + 40);
              v274 = v276;
              if (!v270 && v274)
              {
                v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1122, @"com.apple.MobileActivation.ErrorDomain", -1, v274, @"Failed to query RTC reset count.", v271, v272, v312);
LABEL_249:
                v34 = 0;
                v35 = 0;
                v36 = 0;
                goto LABEL_250;
              }

              v394 = v274;
              v277 = copy_keychain_data(v341, v336, &v438, &v394);
              objc_storeStrong(v275, v394);
              v278 = v427[5];
              v427[5] = v277;

              if (v438 != -25300 && v438)
              {
                v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1128, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 56) + 8) + 40), @"Failed to query existing RTC reset count (%@/%@): %d", v279, v280, v341);
                goto LABEL_249;
              }

              v281 = *(*(a1 + 56) + 8);
              v282 = *(v281 + 40);
              *(v281 + 40) = 0;

              v283 = v427[5];
              if (v283)
              {
                [v283 getBytes:&v412 length:4];
              }

              else
              {
                v291 = MEMORY[0x277D86220];
                v292 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v291, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "No cached PMU reset count exists (treating the cached certificate as expired).", buf, 2u);
                }

                v268 = 0;
              }

              if (*(v409 + 6) == v412)
              {
LABEL_256:
                if (is_virtual_machine())
                {
                  v293 = lockcrypto_query_certificate_properties(v444[3], @"1.2.840.113635.100.8.3", 0);
                  v39 = v293;
                  if (v293)
                  {
                    v294 = [v293 objectForKeyedSubscript:@"1021"];
                    v295 = isNSData(v294);
                    v296 = v295 == 0;

                    if (!v296)
                    {
                      v297 = +[GestaltHlprDeviceIdentity getSharedInstance];
                      v38 = [v297 copyAnswer:@"UniqueDeviceID"];

                      if (v38)
                      {
                        v298 = [v39 objectForKeyedSubscript:@"1021"];
                        v299 = [v298 hexString];
                        v300 = [v299 caseInsensitiveCompare:v38] == 0;

                        if (v300)
                        {
                          goto LABEL_266;
                        }

                        v301 = MEMORY[0x277D86220];
                        v302 = MEMORY[0x277D86220];
                        if (os_log_type_enabled(v301, OS_LOG_TYPE_DEFAULT))
                        {
                          v303 = [v39 objectForKeyedSubscript:@"1021"];
                          v304 = [v303 hexString];
                          *buf = 138412546;
                          v473 = v304;
                          v474 = 2112;
                          v475 = v38;
                          _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Existing certificate's UDID (%@) does not match the current UDID (%@), VM may have moved to a new host. Treating key/certificates as invalid.", buf, 0x16u);
                        }

                        v268 = 0;
                        v326 = 0;
                      }

                      else
                      {
                        v309 = MEMORY[0x277D86220];
                        v310 = MEMORY[0x277D86220];
                        if (os_log_type_enabled(v309, OS_LOG_TYPE_FAULT))
                        {
                          v311 = copy_current_process_name();
                          __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_171_cold_1(v311, v488);
                        }

                        v38 = 0;
                      }

LABEL_266:
                      v305 = v440[3];
                      if (v320)
                      {
                        v487[0] = v444[3];
                        v487[1] = v305;
                        v487[2] = v37;
                        v306 = v487;
                        v307 = 3;
                      }

                      else
                      {
                        v486[0] = v444[3];
                        v486[1] = v305;
                        v306 = v486;
                        v307 = 2;
                      }

                      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v306 count:v307];
                      if (v268)
                      {
                        v319 = 1;
                        if (!v318)
                        {
                          v36 = 0;
                          v35 = 0;
                          goto LABEL_177;
                        }
                      }

                      else
                      {
                        v319 = 0;
                      }

LABEL_142:
                      if (v125)
                      {
                        v166 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1192, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Missing or expired certificates, and network request explictly not attempted.", v131, v132, v312);
                      }

                      else
                      {
                        if (v326 && (v167 = v449[3]) != 0)
                        {
                          v168 = CFRetain(v167);
                          v457[3] = v168;
                        }

                        else
                        {
                          v169 = a1 + 56;
                          v170 = *(*(a1 + 56) + 8);
                          v393 = *(v170 + 40);
                          v168 = createReferenceKeyBlob(cf, queue, v345, &v393);
                          objc_storeStrong((v170 + 40), v393);
                          v457[3] = v168;
                          if (!v168)
                          {
                            v166 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1203, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*v169 + 8) + 40), @"Failed to create reference key.", v171, v172, v312);
                            v36 = 0;
                            v35 = 0;
LABEL_176:
                            v211 = *(*v169 + 8);
                            v212 = *(v211 + 40);
                            *(v211 + 40) = v166;

LABEL_177:
                            v213 = v449[3];
                            if (!v213 || !v34)
                            {
                              goto LABEL_30;
                            }

                            v214 = CFRetain(v213);
                            v461[3] = v214;
                            objc_storeStrong(v465 + 5, v34);
                            v215 = MEMORY[0x277D86220];
                            v216 = MEMORY[0x277D86220];
                            if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
                            {
                              v314 = [v465[5] objectAtIndexedSubscript:0];
                              v217 = MEMORY[0x277CBEAA8];
                              v317 = [v465[5] objectAtIndexedSubscript:0];
                              SecCertificateNotValidBefore();
                              v328 = [v217 dateWithTimeIntervalSinceReferenceDate:?];
                              v218 = MEMORY[0x277CBEAA8];
                              v316 = [v465[5] objectAtIndexedSubscript:0];
                              SecCertificateNotValidAfter();
                              queueb = [v218 dateWithTimeIntervalSinceReferenceDate:?];
                              v313 = [v465[5] objectAtIndexedSubscript:1];
                              v219 = MEMORY[0x277CBEAA8];
                              v315 = [v465[5] objectAtIndexedSubscript:1];
                              SecCertificateNotValidBefore();
                              v321 = [v219 dateWithTimeIntervalSinceReferenceDate:?];
                              v220 = MEMORY[0x277CBEAA8];
                              v221 = [v465[5] objectAtIndexedSubscript:1];
                              SecCertificateNotValidAfter();
                              v222 = [v220 dateWithTimeIntervalSinceReferenceDate:?];
                              v223 = v417[5];
                              *buf = 138544898;
                              v473 = v314;
                              v474 = 2114;
                              v475 = v328;
                              v476 = 2114;
                              v477 = queueb;
                              v478 = 2114;
                              v479 = v313;
                              v480 = 2114;
                              v481 = v321;
                              v482 = 2114;
                              v483 = v222;
                              v484 = 2114;
                              v485 = v223;
                              _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Returning cached certificates:\n* %{public}@\n    Not Valid Before: %{public}@\n  Not Valid After: %{public}@\n* %{public}@\n    Not Valid Before: %{public}@\n  Not Valid After: %{public}@\n* Server Timestamp: %{public}@\n", buf, 0x48u);
                            }

                            if (!v319)
                            {
                              goto LABEL_30;
                            }

                            v224 = MEMORY[0x277D86220];
                            v225 = MEMORY[0x277D86220];
                            if (os_log_type_enabled(v224, OS_LOG_TYPE_DEFAULT))
                            {
                              v226 = *(*(*(a1 + 56) + 8) + 40);
                              *buf = 138543362;
                              v473 = v226;
                              _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ (non-fatal, existing valid certificates)", buf, 0xCu);
                            }

                            v227 = *(*(a1 + 56) + 8);
                            v42 = *(v227 + 40);
                            *(v227 + 40) = 0;
                            goto LABEL_29;
                          }
                        }

                        v173 = SecKeyCopyPublicKey(v168);
                        v453[3] = v173;
                        if (v173)
                        {
                          v36 = SecKeyCopyExternalRepresentation(v173, &error);
                          if (v36)
                          {
                            v181 = v457[3];
                            v392 = 0;
                            v169 = a1 + 56;
                            v182 = *(*(a1 + 56) + 8);
                            v391 = *(v182 + 40);
                            v327 = security_create_external_representation(v181, &v392, &v391, v176, v177, v178, v179, v180);
                            v35 = v392;
                            objc_storeStrong((v182 + 40), v391);
                            if (v327)
                            {
                              [v345 setObject:v35 forKeyedSubscript:@"SigningKeyAttributes"];
                              queuea = dispatch_get_global_queue(0, 0);
                              v355[0] = MEMORY[0x277D85DD0];
                              v355[1] = 3221225472;
                              v355[2] = __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_2;
                              v355[3] = &unk_278586058;
                              v345 = v345;
                              v356 = v345;
                              v185 = v347;
                              v186 = *(a1 + 56);
                              v347 = v185;
                              v357 = v185;
                              v371 = v186;
                              v55 = v327;
                              v358 = v55;
                              v372 = v470;
                              v373 = v422;
                              v389 = v320;
                              v349 = v349;
                              v359 = v349;
                              v374 = &v432;
                              v375 = &v456;
                              v330 = v330;
                              v360 = v330;
                              v343 = v343;
                              v361 = v343;
                              v341 = v341;
                              v362 = v341;
                              v340 = v340;
                              v363 = v340;
                              v342 = v342;
                              v364 = v342;
                              v338 = v338;
                              v365 = v338;
                              v336 = v336;
                              v366 = v336;
                              v339 = v339;
                              v367 = v339;
                              v376 = v413;
                              v377 = &v408;
                              v378 = v414;
                              v379 = &v426;
                              v380 = v407;
                              v381 = v424;
                              v382 = &v460;
                              v383 = &v464;
                              v384 = &v448;
                              v385 = &v443;
                              v386 = &v439;
                              v34 = v34;
                              v368 = v34;
                              v387 = &v416;
                              v390 = v319;
                              v369 = *(a1 + 40);
                              v370 = *(a1 + 48);
                              v388 = &v452;
                              dispatch_async(queuea, v355);

                              v56 = &v356;
                              goto LABEL_41;
                            }

                            v166 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1248, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*v169 + 8) + 40), @"Failed to encode RK as data.", v183, v184, v312);
                            goto LABEL_176;
                          }

                          v166 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1216, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to encode RK public key as data.", v179, v180, v312);
                        }

                        else
                        {
                          v166 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1210, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK public key.", v174, v175, v312);
                        }
                      }

                      v36 = 0;
                      v35 = 0;
                      v169 = a1 + 56;
                      goto LABEL_176;
                    }
                  }
                }

                else
                {
                  v39 = 0;
                }

                v38 = 0;
                goto LABEL_266;
              }

              v290 = MEMORY[0x277D86220];
              v308 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v290, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2261FC000, v290, OS_LOG_TYPE_DEFAULT, "PMU reset occurred since the cached certificate was obtained (treating the cached certificate as expired).", buf, 2u);
              }
            }

            else
            {
              if ((mobileactivationErrorHasDomainAndErrorCode(*(*(*(a1 + 56) + 8) + 40), @"com.apple.MobileActivation.ErrorDomain", 0xFFFFFFFFFFFFFFE1) & 1) == 0)
              {
                v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1096, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 56) + 8) + 40), @"Failed to copy date used for certificate validation.", v284, v285, v312);
                v34 = 0;
                v35 = 0;
                v36 = 0;
                v37 = 0;
LABEL_250:
                v38 = 0;
                v39 = 0;
                goto LABEL_28;
              }

              v286 = MEMORY[0x277D86220];
              v287 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
              {
                v288 = *(*(*(a1 + 56) + 8) + 40);
                *buf = 138412290;
                v473 = v288;
                _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to copy the date used for certificate validation (treating the cached certificate as expired): %@", buf, 0xCu);
              }

              v318 = 0;
              v289 = *(*(a1 + 56) + 8);
              v290 = *(v289 + 40);
              *(v289 + 40) = 0;
            }

            v268 = 0;
            goto LABEL_256;
          }

LABEL_141:
          v39 = 0;
          v38 = 0;
          v37 = 0;
          v319 = 0;
          v34 = 0;
          goto LABEL_142;
        }

        v187 = *(*(a1 + 56) + 8);
        v402 = *(v187 + 40);
        load_certificate(v444 + 3, v341, v337, &v438, &v402);
        objc_storeStrong((v187 + 40), v402);
        if (v438 != -25300 && v438)
        {
          v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 965, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 56) + 8) + 40), @"Failed to query existing leaf certificate (%@/%@): %d", v188, v189, v341);
        }

        else
        {
          v190 = *(*(a1 + 56) + 8);
          v191 = *(v190 + 40);
          *(v190 + 40) = 0;

          v192 = *(*(a1 + 56) + 8);
          v401 = *(v192 + 40);
          load_certificate(v440 + 3, v341, v335, &v438, &v401);
          objc_storeStrong((v192 + 40), v401);
          if (v438 != -25300 && v438)
          {
            v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 973, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 56) + 8) + 40), @"Failed to query existing intermediate certificate (%@/%@): %d", v193, v194, v341);
          }

          else
          {
            v195 = *(*(a1 + 56) + 8);
            v196 = *(v195 + 40);
            *(v195 + 40) = 0;

            if (!v444[3] || !v440[3])
            {
              v332 = 0;
              goto LABEL_188;
            }

            v197 = objc_alloc_init(MEMORY[0x277CBEB28]);
            v198 = v433[5];
            v433[5] = v197;

            if (v433[5])
            {
              v203 = SecCertificateCopyData(v444[3]);
              if (v203)
              {
                [v433[5] appendData:v203];
                v332 = SecCertificateCopyData(v440[3]);

                if (v332)
                {
                  [v433[5] appendData:v332];
                  v206 = v433[5];
                  v207 = *(*(a1 + 56) + 8);
                  v400 = *(v207 + 40);
                  v208 = store_keychain_data(v206, v341, v340, &v400);
                  objc_storeStrong((v207 + 40), v400);
                  if (v208)
                  {
                    delete_certificate(v341, v337, 0);
                    delete_certificate(v341, v335, 0);
LABEL_188:
                    v331 = 0;
                    goto LABEL_189;
                  }

                  v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 1003, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 56) + 8) + 40), @"Failed to store leaf/intermediate certificates.", v209, v210, v312);
LABEL_158:
                  v34 = 0;
                  v35 = 0;
                  v36 = 0;
                  v37 = 0;
                  v38 = 0;
                  v39 = 0;
                  v40 = 0;
                  v331 = 0;
                  goto LABEL_28;
                }

                v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 996, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate data.", v204, v205, v312);
              }

              else
              {
                v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 988, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate data.", v201, v202, v312);
              }
            }

            else
            {
              v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 982, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate data.", v199, v200, v312);
            }
          }
        }
      }
    }

    v34 = 0;
    v35 = 0;
    v36 = 0;
    goto LABEL_156;
  }

  v33 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 724, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.", v18, v19, v312);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v334 = 0;
  v335 = 0;
  v329 = 0;
  v330 = 0;
  cf = 0;
  v345 = 0;
  v342 = 0;
  v343 = 0;
  v340 = 0;
  v341 = 0;
  v336 = 0;
  v337 = 0;
  v338 = 0;
  v339 = 0;
  v37 = 0;
LABEL_26:
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v344 = 0;
LABEL_27:
  v331 = 0;
  v332 = 0;
LABEL_28:
  v41 = *(*(a1 + 56) + 8);
  v42 = *(v41 + 40);
  *(v41 + 40) = v33;
LABEL_29:

LABEL_30:
  v43 = *(a1 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_312;
  block[3] = &unk_278586008;
  v325 = *(a1 + 48);
  v44 = v325;
  v352 = v325;
  v353 = &v460;
  v354 = &v464;
  dispatch_async(v43, block);
  v45 = v457;
  v46 = v457[3];
  if (v46)
  {
    CFRelease(v46);
    v45 = v457;
  }

  v45[3] = 0;
  v47 = v453;
  v48 = v453[3];
  if (v48)
  {
    CFRelease(v48);
    v47 = v453;
  }

  v47[3] = 0;
  v49 = v449;
  v50 = v449[3];
  if (v50)
  {
    CFRelease(v50);
    v49 = v449;
  }

  v49[3] = 0;
  v51 = v444;
  v52 = v444[3];
  if (v52)
  {
    CFRelease(v52);
    v51 = v444;
  }

  v51[3] = 0;
  v53 = v440;
  v54 = v440[3];
  if (v54)
  {
    CFRelease(v54);
    v53 = v440;
  }

  v55 = 0;
  v56 = &v352;
  v53[3] = 0;
LABEL_41:

  if (task)
  {
    CFRelease(task);
  }

  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(v407, 8);
  _Block_object_dispose(&v408, 8);
  _Block_object_dispose(v413, 8);

  _Block_object_dispose(v414, 8);
  _Block_object_dispose(&v416, 8);

  _Block_object_dispose(v422, 8);
  _Block_object_dispose(v424, 8);

  _Block_object_dispose(&v426, 8);
  _Block_object_dispose(&v432, 8);

  _Block_object_dispose(&v439, 8);
  _Block_object_dispose(&v443, 8);
  _Block_object_dispose(&v448, 8);
  _Block_object_dispose(&v452, 8);
  _Block_object_dispose(&v456, 8);
  _Block_object_dispose(&v460, 8);

  _Block_object_dispose(&v464, 8);
  _Block_object_dispose(v470, 8);
}

void sub_226200244(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose(&STACK[0x328], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Block_object_dispose(&STACK[0x3A0], 8);
  _Block_object_dispose(&STACK[0x3D0], 8);
  _Block_object_dispose(&STACK[0x400], 8);
  _Block_object_dispose(&STACK[0x430], 8);
  _Block_object_dispose(&STACK[0x460], 8);
  _Block_object_dispose(&STACK[0x498], 8);
  _Block_object_dispose(&STACK[0x4B8], 8);
  _Block_object_dispose(&STACK[0x4E0], 8);
  _Block_object_dispose(&STACK[0x500], 8);
  _Block_object_dispose(&STACK[0x520], 8);
  _Block_object_dispose(&STACK[0x540], 8);
  _Block_object_dispose(&STACK[0x560], 8);
  _Block_object_dispose(&STACK[0x590], 8);
  _Unwind_Resume(a1);
}

id copy_keychain_data(void *a1, void *a2, OSStatus *a3, void *a4)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v11 = v8;
  result = 0;
  if (v8)
  {
    v12 = *MEMORY[0x277CDC228];
    v27[0] = *MEMORY[0x277CDC080];
    v27[1] = v12;
    v13 = *MEMORY[0x277CDC238];
    v28[0] = v8;
    v28[1] = v13;
    v14 = *MEMORY[0x277CDC5C8];
    v27[2] = *MEMORY[0x277CDC558];
    v27[3] = v14;
    v28[2] = MEMORY[0x277CBEC38];
    v28[3] = MEMORY[0x277CBEC38];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
    v16 = [v15 mutableCopy];

    if (v7)
    {
      [v16 setObject:v7 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
    }

    v19 = SecItemCopyMatching(v16, &result);
    if (v19)
    {
      v20 = createMobileActivationError("copy_keychain_data", 810, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy keychain item %@: %d", v17, v18, v11);
      v21 = 0;
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v20 = 0;
      v21 = result;
      result = 0;
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v20 = createMobileActivationError("copy_keychain_data", 788, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.", v9, v10, v25);
  v21 = 0;
  v16 = 0;
  v19 = -1;
  if (a3)
  {
LABEL_8:
    *a3 = v19;
  }

LABEL_9:
  if (a4 && !v21)
  {
    v22 = v20;
    *a4 = v20;
  }

  if (result)
  {
    CFRelease(result);
  }

  result = 0;
  v23 = v21;

  return v23;
}

void __copyRTCResetCountWithError_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v11 objectForKeyedSubscript:@"TotalRTCResetCount"];
  v7 = isNSNumber(v6);

  if (v7)
  {
    v8 = [v11 objectForKeyedSubscript:@"TotalRTCResetCount"];
    *(*(*(a1 + 32) + 8) + 24) = [v8 unsignedIntValue];
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

id copy_process_name()
{
  v0 = MEMORY[0x28223BE20]();
  v10 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x1000uLL);
  memset(v8, 0, sizeof(v8));
  if (v0 && ([MEMORY[0x277CCAE80] currentConnection], (v1 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v2 = v1;
    v3 = [v1 processIdentifier];
  }

  else
  {
    v3 = getpid();
  }

  proc_pidpath(v3, buffer, 0x1000u);
  v4 = strlen(buffer);
  if ((v4 & 0x80000000) == 0)
  {
    do
    {
      if (buffer[v4] == 47)
      {
        break;
      }
    }

    while (v4-- > 0);
  }

  __strlcpy_chk();
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s", v8];

  return v6;
}

uint64_t copyRTCResetCountWithError(void *a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283968088];
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.mobileactivationd" options:4096];
  [v3 setRemoteObjectInterface:v2];
  [v3 resume];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __copyRTCResetCountWithError_block_invoke;
  v9[3] = &unk_278585EC0;
  v9[4] = &v14;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __copyRTCResetCountWithError_block_invoke_2;
  v8[3] = &unk_278585EE8;
  v8[4] = &v10;
  v8[5] = &v14;
  [v4 copyRTCResetCountWithCompletionBlock:v8];
  v5 = v15[5];
  if (v5)
  {
    v6 = 0;
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *(v11 + 6);
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    *a1 = v5;
  }

LABEL_7:
  [v3 invalidate];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v6;
}

void sub_226200990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

id isNSNumber(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSString(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

CFTypeRef copy_keychain_item(void *a1, void *a2, void *a3, OSStatus *a4, void *a5)
{
  v37[4] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v14 = v11;
  result = 0;
  if (!v10)
  {
    v18 = createMobileActivationError("copy_keychain_item", 542, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.", v12, v13, v33);
    v19 = 0;
    v20 = -1;
    if (!a4)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v34 = a5;
  if (v11)
  {
    v15 = [v11 objectForKeyedSubscript:@"LocalAuthenticationContext"];
    if (v15)
    {
      v16 = [v14 objectForKeyedSubscript:@"LocalAuthenticationContext"];
      getLAContextClass();
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15 = [v14 objectForKeyedSubscript:@"LocalAuthenticationContext"];
      }

      else
      {
        v15 = 0;
      }
    }

    v21 = [v14 objectForKeyedSubscript:@"UseAuthenticationUI"];
    v22 = isNSString(v21);

    if (v22)
    {
      v23 = [v14 objectForKeyedSubscript:@"UseAuthenticationUI"];
      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
  }

  v23 = 0;
LABEL_13:
  v24 = *MEMORY[0x277CDC228];
  v36[0] = *MEMORY[0x277CDC080];
  v36[1] = v24;
  v25 = *MEMORY[0x277CDC250];
  v37[0] = v10;
  v37[1] = v25;
  v26 = *MEMORY[0x277CDC5C8];
  v36[2] = *MEMORY[0x277CDC568];
  v36[3] = v26;
  v37[2] = MEMORY[0x277CBEC38];
  v37[3] = MEMORY[0x277CBEC38];
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];
  v28 = [v27 mutableCopy];

  if (v9)
  {
    [v28 setObject:v9 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
  }

  if (v15)
  {
    [v28 setObject:v15 forKeyedSubscript:*MEMORY[0x277CDC5A0]];
  }

  if (v23)
  {
    [v28 setObject:v23 forKeyedSubscript:*MEMORY[0x277CDC5A8]];
  }

  v20 = SecItemCopyMatching(v28, &result);
  if (v20)
  {
    v18 = createMobileActivationError("copy_keychain_item", 586, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy keychain item %@: %d", v29, v30, v10);

    v19 = 0;
  }

  else
  {
    v19 = result;
    result = 0;

    v18 = 0;
  }

  a5 = v34;
  if (a4)
  {
LABEL_23:
    *a4 = v20;
  }

LABEL_24:
  if (a5 && !v19)
  {
    v31 = v18;
    *a5 = v18;
  }

  if (result)
  {
    CFRelease(result);
  }

  result = 0;

  return v19;
}

uint64_t isRunningInDiagnosticsMode(uint64_t a1, uint64_t a2)
{
  if (isRunningInDiagnosticsMode_onceToken != -1)
  {
    isRunningInDiagnosticsMode_cold_1();
  }

  return isRunningInDiagnosticsMode_retval;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id copyCertificateOIDsThatDiffer(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if (copyCertificateOIDsThatDiffer_onceToken != -1)
    {
      copyCertificateOIDsThatDiffer_cold_1();
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v28;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v27 + 1) + 8 * i);
          if ([copyCertificateOIDsThatDiffer_supportedOIDs containsObject:v9])
          {
            v10 = SecCertificateCopyExtensionValue();

            if (!v10)
            {
              [v3 addObject:v9];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v6);
    }

    v22 = v2;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = copyCertificateOIDsThatDiffer_supportedOIDs;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * j);
          v17 = SecCertificateCopyExtensionValue();
          if (v17)
          {
            v18 = v17;
            v19 = [v4 containsObject:v16];

            if ((v19 & 1) == 0)
            {
              [v3 addObject:v16];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v13);
    }

    v20 = v3;
    v2 = v22;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t security_certificate_matches_key(__SecKey *a1, void *a2, __SecCertificate *a3, void *a4)
{
  v9 = a2;
  error = 0;
  if (!a1 || !a3)
  {
    v15 = createMobileActivationError("security_certificate_matches_key", 533, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).", v7, v8, v32);
    v14 = 0;
    v16 = 0;
    v13 = 0;
    goto LABEL_15;
  }

  v10 = SecKeyCopyPublicKey(a1);
  v13 = v10;
  if (!v10)
  {
    v15 = createMobileActivationError("security_certificate_matches_key", 539, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK public key.", v11, v12, v32);
    v14 = 0;
LABEL_8:
    v16 = 0;
    goto LABEL_15;
  }

  if (v9)
  {
    v14 = v9;
    goto LABEL_10;
  }

  v14 = SecKeyCopyExternalRepresentation(v10, &error);
  if (!v14)
  {
    v15 = createMobileActivationError("security_certificate_matches_key", 548, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to copy RK public key buffer.", v17, v18, v32);
    goto LABEL_8;
  }

LABEL_10:
  v19 = SecCertificateCopyKey(a3);
  v16 = v19;
  if (!v19)
  {
    v15 = createMobileActivationError("security_certificate_matches_key", 557, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve certificate public key.", v20, v21, v32);
LABEL_15:
    v24 = 0;
    if (!a4)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v24 = SecKeyCopyExternalRepresentation(v19, &error);
  if (!v24)
  {
    v29 = error;
    v30 = @"Failed to encode certificate public key as data.";
    v31 = 563;
    goto LABEL_26;
  }

  if (([(__CFData *)v14 isEqualToData:v24]& 1) == 0)
  {
    v30 = @"Certificate public key does not match RK public key.";
    v31 = 570;
    v29 = 0;
LABEL_26:
    v15 = createMobileActivationError("security_certificate_matches_key", v31, @"com.apple.MobileActivation.ErrorDomain", -1, v29, v30, v22, v23, v32);
    if (!a4)
    {
LABEL_17:
      v25 = 0;
      v27 = 0;
      if (!v13)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_16:
    v26 = v15;
    *a4 = v15;
    goto LABEL_17;
  }

  v15 = 0;
  v25 = 1;
LABEL_18:
  CFRelease(v13);
  v27 = v25;
LABEL_19:
  if (v16)
  {
    CFRelease(v16);
  }

  if (error)
  {
    CFRelease(error);
  }

  error = 0;

  return v27;
}

id isNSData(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t isAutomaticTimeEnabledWithError(void *a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283968088];
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.mobileactivationd" options:4096];
  [v3 setRemoteObjectInterface:v2];
  [v3 resume];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __isAutomaticTimeEnabledWithError_block_invoke;
  v9[3] = &unk_278585EC0;
  v9[4] = &v14;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __isAutomaticTimeEnabledWithError_block_invoke_2;
  v8[3] = &unk_278585EE8;
  v8[4] = &v10;
  v8[5] = &v14;
  [v4 copyAutomaticTimeEnabledWithCompletion:v8];
  v5 = v15[5];
  if (v5)
  {
    v6 = 0;
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *(v11 + 24);
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  if ((v6 & 1) == 0)
  {
    *a1 = v5;
  }

LABEL_7:
  [v3 invalidate];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v6 & 1;
}

void sub_226201668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void __isAutomaticTimeEnabledWithError_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v11 objectForKeyedSubscript:@"AutomaticTimeEnabled"];
  v7 = isNSNumber(v6);

  if (v7)
  {
    v8 = [v11 objectForKeyedSubscript:@"AutomaticTimeEnabled"];
    *(*(*(a1 + 32) + 8) + 24) = [v8 BOOLValue];
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

double copyMonotonicClock(void *a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283968088];
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.mobileactivationd" options:4096];
  [v3 setRemoteObjectInterface:v2];
  [v3 resume];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __copyMonotonicClock_block_invoke;
  v9[3] = &unk_278585EC0;
  v9[4] = &v14;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __copyMonotonicClock_block_invoke_2;
  v8[3] = &unk_278585EE8;
  v8[4] = &v10;
  v8[5] = &v14;
  [v4 copyMonotonicClockWithCompletionBlock:v8];
  v5 = v15[5];
  v6 = 0.0;
  if (!v5)
  {
    v6 = v11[3];
  }

  if (a1 && v6 == 0.0)
  {
    *a1 = v5;
  }

  [v3 invalidate];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v6;
}

void sub_226201958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void __copyMonotonicClock_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v12 objectForKeyedSubscript:@"MonotonicClockNow"];
  v7 = isNSNumber(v6);

  if (v7)
  {
    v8 = [v12 objectForKeyedSubscript:@"MonotonicClockNow"];
    [v8 doubleValue];
    *(*(*(a1 + 32) + 8) + 24) = v9;
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
}

uint64_t X509ExtensionParseDeviceAttestationIdentity(unint64_t *a1, void *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      goto LABEL_17;
    }

    if (a1[1] != v7 - 0x5555555555555556)
    {
      return 0;
    }

    if (v7 > v7 - 0x5555555555555556)
    {
      goto LABEL_18;
    }

    v10 = *a1;
    v11 = a1[1];
    result = ccder_blob_decode_tl();
    if (result)
    {
      result = ccder_blob_decode_tl();
      if (result)
      {
        if (a3)
        {
          if (v11 < v10 || v11 - v10 < 0xAAAAAAAAAAAAAAAALL)
          {
            goto LABEL_18;
          }

          *a3 = v10;
          a3[1] = 0xAAAAAAAAAAAAAAAALL;
        }

        *a2 |= 0x240000800000uLL;
        v8 = *a1;
        if (*a1 < 0x5555555555555556)
        {
          v9 = v8 - 0x5555555555555556;
          if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
          {
            *a1 = v9;
            return 1;
          }

LABEL_18:
          __break(0x5519u);
          return result;
        }

LABEL_17:
        __break(0x5513u);
        goto LABEL_18;
      }
    }
  }

  return result;
}

unint64_t X509PolicyCheckForBlockedKeys(uint64_t a1)
{
  result = a1 + 88;
  if (result > a1 + 104)
  {
    __break(0x5519u);
  }

  else
  {
    result = compare_octet_string(result, &BlockedYonkersSPKI);
    if (!result)
    {
      *(a1 + 240) &= 0xFFFFFFFFFFF3FFFFLL;
    }
  }

  return result;
}

uint64_t X509ExtensionParseAuthorityKeyIdentifier(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      goto LABEL_15;
    }

    if (v7 - 0x5555555555555556 != a1[1])
    {
      return 0;
    }

    if (v7 > v7 - 0x5555555555555556)
    {
      goto LABEL_16;
    }

    v10 = *a1;
    v11 = a1[1];
    result = ccder_blob_decode_tl();
    if (result)
    {
      if (v11 < v10 || v11 - v10 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_16;
      }

      *a2 = v10;
      *a3 = 0xAAAAAAAAAAAAAAAALL;
    }

    v8 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
LABEL_15:
      __break(0x5513u);
    }

    else
    {
      v9 = v8 - 0x5555555555555556;
      if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
      {
        *a1 = v9;
        return 1;
      }
    }

LABEL_16:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509ExtensionParseSubjectKeyIdentifier(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = a1[1];
    v8 = v7 >= *a1;
    v9 = v7 - *a1;
    if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
    {
      goto LABEL_13;
    }

    *a2 = *a1;
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    v11 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
      return result;
    }

    v12 = v11 - 0x5555555555555556;
    if (v11 > v11 - 0x5555555555555556 || v12 > a1[1])
    {
LABEL_13:
      __break(0x5519u);
    }

    *a1 = v12;
  }

  return result;
}

id parseDERCertificatesFromChain(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v6 = v3;
  memset(v20, 0, sizeof(v20));
  v19 = 0;
  if (!v3)
  {
    v14 = @"Invalid input.";
    v15 = 106;
    v16 = -2;
LABEL_11:
    v9 = createMobileActivationError("parseDERCertificatesFromChain", v15, @"com.apple.MobileActivation.ErrorDomain", v16, 0, v14, v4, v5, v18);
    v10 = 0;
    goto LABEL_12;
  }

  v7 = [v3 bytes];
  v8 = CTParseCertificateSet(v7, v7 + [v6 length], v20, 3, &v19);
  if (v8 || !v19)
  {
    v18 = v8;
    v14 = @"Failed to parse certificate set: 0x%08x";
    v15 = 115;
    v16 = -1;
    goto LABEL_11;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = v9;
  if (v9)
  {
    if (v19)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:*&v20[v11] length:*(&v20[v11] + 1)];
        [v10 setObject:v13 atIndexedSubscript:v11];

        v11 = ++v12;
      }

      while (v19 > v12);
    }

    v10 = v10;
    v9 = 0;
  }

LABEL_12:
  if (a2 && !v10)
  {
    v9 = v9;
    *a2 = v9;
  }

  return v10;
}

uint64_t CTParseCertificateSet(unint64_t a1, unint64_t a2, _OWORD *a3, uint64_t a4, void *a5)
{
  v6 = 0;
  v18 = *MEMORY[0x277D85DE8];
  if (a1 < a2 && a4)
  {
    v8 = 0;
    v9 = a4 - 1;
    v10 = a3;
    v11 = &a3[a4];
    while (1)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v17[17] = v12;
      v17[18] = v12;
      v17[15] = v12;
      v17[16] = v12;
      v17[13] = v12;
      v17[14] = v12;
      v17[11] = v12;
      v17[12] = v12;
      v17[9] = v12;
      v17[10] = v12;
      v17[7] = v12;
      v17[8] = v12;
      v17[5] = v12;
      v17[6] = v12;
      v17[3] = v12;
      v17[4] = v12;
      v17[1] = v12;
      v17[2] = v12;
      v17[0] = v12;
      v15 = a1;
      v16 = a2;
      result = X509CertificateParse(v17, &v15);
      if (result)
      {
        break;
      }

      a1 = v15;
      a2 = v16;
      if (v15 > v16 || v10 < a3 || v10 + 1 > v11 || v10 > v10 + 1)
      {
        __break(0x5519u);
      }

      *v10 = v17[0];
      v6 = v8 + 1;
      if (a1 < a2)
      {
        ++v10;
        if (v9 != v8++)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
LABEL_12:
    result = 0;
    if (a5)
    {
      *a5 = v6;
    }
  }

  return result;
}

uint64_t X509CertificateParseWithExtension(unint64_t *a1, unint64_t *a2, const void *a3, size_t a4)
{
  v8 = 720939;
  v9 = *a2;
  v10 = a2[1];
  if (!ccder_blob_decode_tl())
  {
    return v8;
  }

  v11 = *a2;
  result = X509CertificateParseImplicit(a1, a2, a3, a4);
  v8 = result;
  if (result)
  {
    return v8;
  }

  if (v11 >= 0x5555555555555556)
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5500u);
    goto LABEL_12;
  }

  v8 = 720939;
  if (*a2 != v11 - 0x5555555555555556)
  {
    return v8;
  }

  v13 = v11 - v9 - 0x5555555555555556;
  if (v11 - v9 >= 0x5555555555555556)
  {
    goto LABEL_11;
  }

  if (v10 >= v9 && v13 <= v10 - v9)
  {
    *a1 = v9;
    a1[1] = v13;
    X509PolicyCheckForBlockedKeys(a1);
    return 0;
  }

LABEL_12:
  __break(0x5519u);
  return result;
}

uint64_t X509CertificateParseImplicit(unint64_t a1, unint64_t *a2, const void *a3, size_t a4)
{
  v71 = *MEMORY[0x277D85DE8];
  v68 = 0;
  v69 = 0;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 > v5)
  {
    goto LABEL_189;
  }

  v66 = *a2;
  v67 = v5;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  if (a1 + 304 < a1)
  {
    goto LABEL_189;
  }

  v10 = 720915;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return v10;
  }

  v12 = v69;
  v13 = v66;
  v14 = v69 + v66 - v4;
  if (__CFADD__(v69, v66 - v4))
  {
    goto LABEL_191;
  }

  if (v14 > v5 - v4)
  {
    goto LABEL_189;
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  v64 = 0xAAAAAAAAAAAAAAAALL;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v13, v12))
  {
    goto LABEL_190;
  }

  v15 = v13 + v12;
  if (v13 > v15 || v15 > v67)
  {
    goto LABEL_189;
  }

  v64 = v13;
  v65 = v15;
  v62 = v13;
  v63 = v15;
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (__CFADD__(v62, v68))
    {
      goto LABEL_190;
    }

    if (!ccder_blob_decode_uint64() || v62 != v62 + v68)
    {
      return 720916;
    }

    if (v62 + v68 > v63)
    {
      goto LABEL_189;
    }

    v64 = v62;
    v65 = v63;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720917;
  }

  v16 = v64;
  v17 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v18 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 136) = v64;
  *(a1 + 144) = v18;
  if (__CFADD__(v16, v18))
  {
    goto LABEL_190;
  }

  v19 = v16 + v18;
  if (v19 > v17)
  {
    goto LABEL_189;
  }

  if (v16 > v19)
  {
    goto LABEL_189;
  }

  v64 = v19;
  if (a1 + 152 > a1 + 168)
  {
    goto LABEL_189;
  }

  if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v64, (a1 + 152)))
  {
    return 720918;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720919;
  }

  v20 = v64;
  v21 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v22 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 120) = v64;
  *(a1 + 128) = v22;
  if (__CFADD__(v20, v22))
  {
    goto LABEL_190;
  }

  v23 = v20 + v22;
  if (v23 > v21 || v20 > v23)
  {
    goto LABEL_189;
  }

  v64 = v23;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720920;
  }

  v24 = v64;
  v25 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v26 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 72) = v64;
  *(a1 + 80) = v26;
  if (__CFADD__(v24, v26))
  {
    goto LABEL_190;
  }

  v27 = v24 + v26;
  if (v27 > v25 || v24 > v27)
  {
    goto LABEL_189;
  }

  v64 = v27;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720921;
  }

  v28 = v64;
  v29 = v65;
  if (v65 < v64)
  {
    goto LABEL_189;
  }

  v30 = v68;
  if (v68 > v65 - v64)
  {
    goto LABEL_189;
  }

  *(a1 + 104) = v64;
  *(a1 + 112) = v30;
  if (__CFADD__(v28, v30))
  {
    goto LABEL_190;
  }

  v31 = v28 + v30;
  if (v28 + v30 > v29 || v28 > v31)
  {
    goto LABEL_189;
  }

  v64 = v28 + v30;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    return 720922;
  }

  v32 = v64;
  v33 = v68;
  v34 = v64 - v31 + v68;
  if (__CFADD__(v64 - v31, v68))
  {
    goto LABEL_191;
  }

  if (v34 > v29 - v31)
  {
    goto LABEL_189;
  }

  *(a1 + 88) = v31;
  *(a1 + 96) = v34;
  if (__CFADD__(v32, v33))
  {
LABEL_190:
    __break(0x5513u);
    goto LABEL_191;
  }

  v35 = v32 + v33;
  if (v32 > v35 || v35 > v65)
  {
    goto LABEL_189;
  }

  v63 = v65;
  v64 = v35;
  v62 = v35;
  if (ccder_blob_decode_tl())
  {
    return 720923;
  }

  if (v64 > v65)
  {
    goto LABEL_189;
  }

  v62 = v64;
  v63 = v65;
  if (ccder_blob_decode_tl())
  {
    return 720924;
  }

  if (v64 > v65)
  {
    goto LABEL_189;
  }

  v62 = v64;
  v63 = v65;
  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_167:
    if (*(a1 + 32) < 3uLL)
    {
      if (v64 != v65)
      {
        return v10;
      }
    }

    else
    {
      if (v65 > a2[1] || *a2 > v65)
      {
        goto LABEL_189;
      }

      *a2 = v65;
    }

    if (!__CFADD__(v66, v69))
    {
      if (v66 > v66 + v69 || v66 + v69 > v67)
      {
        goto LABEL_189;
      }

      v66 += v69;
      if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v66, (a1 + 40)))
      {
        return 720937;
      }

      *&v70[0] = 0xAAAAAAAAAAAAAAAALL;
      *(&v70[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v60 = 0;
      result = ccder_blob_decode_bitstring();
      if (!result)
      {
        return 720938;
      }

      if (v60 < 0xFFFFFFFFFFFFFFF9)
      {
        if (*(&v70[0] + 1) >= *&v70[0])
        {
          v51 = (v60 + 7) >> 3;
          if (v51 <= *(&v70[0] + 1) - *&v70[0])
          {
            *(a1 + 56) = *&v70[0];
            *(a1 + 64) = v51;
            v52 = v67;
            if (v66 <= v67)
            {
              v10 = 0;
              *a2 = v66;
              a2[1] = v52;
              return v10;
            }
          }
        }

        goto LABEL_189;
      }

LABEL_191:
      __break(0x5500u);
LABEL_192:
      __break(0x5507u);
      return result;
    }

    goto LABEL_190;
  }

  v60 = 0xAAAAAAAAAAAAAAAALL;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v62, v68))
  {
    goto LABEL_190;
  }

  if (v62 > v62 + v68 || v62 + v68 > v63)
  {
    goto LABEL_189;
  }

  v60 = v62;
  v61 = v62 + v68;
  result = ccder_blob_decode_tl();
  if (!result || !v68)
  {
    return 720925;
  }

  v36 = v60;
  if (__CFADD__(v60, v68))
  {
    goto LABEL_190;
  }

  v37 = v60 + v68;
  if (v60 > v60 + v68 || v37 > v61)
  {
    goto LABEL_189;
  }

  v61 = v60 + v68;
  *(a1 + 266) = 0;
  memset(&v70[2], 0, 128);
  if (a3)
  {
    v38 = a4 == 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = !v38;
  memset(v70, 0, 32);
  if (v36 >= v37)
  {
LABEL_162:
    if (v36 != v37)
    {
      return 720925;
    }

    if (v36 > v65 || v64 > v36)
    {
LABEL_189:
      __break(0x5519u);
    }

    v64 = v37;
    goto LABEL_167;
  }

  v53 = 0;
  v40 = 0;
  while (1)
  {
    v58 = 0xAAAAAAAAAAAAAAAALL;
    v59 = 0xAAAAAAAAAAAAAAAALL;
    v57 = 0;
    v56 = 0;
    result = ccder_blob_decode_tl();
    if ((result & 1) == 0)
    {
      return 720926;
    }

    v54 = 0xAAAAAAAAAAAAAAAALL;
    v55 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v60, v56))
    {
      goto LABEL_190;
    }

    if (v60 > v60 + v56 || v60 + v56 > v61)
    {
      goto LABEL_189;
    }

    v54 = v60;
    v55 = v60 + v56;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return 720927;
    }

    if (v55 < v54 || v68 > v55 - v54)
    {
      goto LABEL_189;
    }

    v58 = v54;
    v59 = v68;
    if (__CFADD__(v54, v68))
    {
      goto LABEL_190;
    }

    if (v54 + v68 > v55 || v54 > v54 + v68)
    {
      goto LABEL_189;
    }

    v54 += v68;
    if (!der_get_BOOLean(&v54, 1, &v57))
    {
      return 720928;
    }

    result = ccder_blob_decode_tl();
    if (!result)
    {
      return 720929;
    }

    if (__CFADD__(v54, v68))
    {
      goto LABEL_190;
    }

    if (v55 != v54 + v68)
    {
      return 720929;
    }

    if (v39)
    {
      result = compare_octet_string_raw(&v58, a3, a4);
      if (!result)
      {
        if (v55 < v54)
        {
          goto LABEL_189;
        }

        v42 = v68;
        if (v68 > v55 - v54)
        {
          goto LABEL_189;
        }

        *(a1 + 248) = v54;
        *(a1 + 256) = v42;
      }
    }

    if (v59 == 3)
    {
      if (*v58 == 7509 && *(v58 + 2) == 15)
      {
        v49 = 720930;
        if (v40)
        {
          return v49;
        }

        result = X509ExtensionParseKeyUsage(&v54, (a1 + 264));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 1u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 19)
      {
        v49 = 720931;
        if ((v40 & 2) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseBasicConstraints(&v54, (a1 + 200), (a1 + 265));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 2u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 35)
      {
        v49 = 720932;
        if ((v40 & 4) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseAuthorityKeyIdentifier(&v54, (a1 + 168), (a1 + 176));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 4u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 14)
      {
        v49 = 720933;
        if ((v40 & 8) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseSubjectKeyIdentifier(&v54, (a1 + 184), (a1 + 192));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 8u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 37)
      {
        v49 = 720934;
        if ((v40 & 0x10) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseExtendedKeyUsage(&v54, (a1 + 208), (a1 + 216));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 0x10u;
        goto LABEL_157;
      }

      if (*v58 == 7509 && *(v58 + 2) == 17)
      {
        v49 = 720935;
        if ((v40 & 0x20) != 0)
        {
          return v49;
        }

        result = X509ExtensionParseSubjectAltName(&v54, (a1 + 224), (a1 + 232));
        if ((result & 1) == 0)
        {
          return v49;
        }

        v40 |= 0x20u;
        goto LABEL_157;
      }

LABEL_133:
      if (__CFADD__(v54, v68))
      {
        goto LABEL_190;
      }

      if (v54 > v54 + v68 || v54 + v68 > v55)
      {
        goto LABEL_189;
      }

      v54 += v68;
      if (v57)
      {
        *(a1 + 266) = v57;
      }

      goto LABEL_157;
    }

    if (v59 < 8)
    {
      goto LABEL_133;
    }

    if (*v58 != -2042067414 || *(v58 + 3) != 1684273030)
    {
      goto LABEL_133;
    }

    v49 = 720936;
    if (!X509CertificateVerifyOnlyOneAppleExtension(&v58, v70, v53))
    {
      return v49;
    }

    result = X509ExtensionParseAppleExtension(&v54, v58, v59, (a1 + 240), (a1 + 248), v39);
    if (!result)
    {
      return v49;
    }

    if (v53 == 0xFF)
    {
      goto LABEL_192;
    }

    ++v53;
LABEL_157:
    if (v54 != v55)
    {
      return 720926;
    }

    if (__CFADD__(v60, v56))
    {
      goto LABEL_190;
    }

    v36 = v60 + v56;
    if (v60 > v60 + v56)
    {
      goto LABEL_189;
    }

    v37 = v61;
    if (v36 > v61)
    {
      goto LABEL_189;
    }

    v60 += v56;
    if (v36 >= v61)
    {
      goto LABEL_162;
    }
  }
}

uint64_t ccder_blob_decode_AlgorithmIdentifierNULL(unint64_t *a1, unint64_t *a2)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 > a1[1])
    {
      goto LABEL_20;
    }

    v5 = *a1;
    v6 = *a1;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return result;
    }

    if (a2)
    {
      if (v6 < v5)
      {
        goto LABEL_20;
      }

      *a2 = v5;
      a2[1] = 0;
    }

    if (v5 == v6)
    {
      if (v5 <= a1[1] && *a1 <= v5)
      {
        *a1 = v5;
        return 1;
      }
    }

    else if (v5 <= v6)
    {
      result = ccder_blob_decode_tl();
      if (!result)
      {
        return result;
      }

      if (v5 != v6)
      {
        return 0;
      }

      if (v5 <= a1[1] && *a1 <= v5)
      {
        *a1 = v5;
        return 1;
      }
    }

LABEL_20:
    __break(0x5519u);
  }

  return result;
}

uint64_t der_get_BOOLean(unint64_t *a1, int a2, BOOL *a3)
{
  if (*a1 > a1[1])
  {
    __break(0x5519u);
  }

  if ((ccder_blob_decode_tl() & 1) != 0 || !a2)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 1;
}

uint64_t X509ExtensionParseBasicConstraints(unint64_t *a1, unint64_t *a2, BOOL *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    result = der_get_BOOLean(a1, 1, a3);
    if (result)
    {
      if (!ccder_blob_decode_uint64())
      {
        return 1;
      }

      if (*a3)
      {
        *a2 = 0xAAAAAAAAAAAAAAAALL;
        *a2 = 0xAAAAAAAAAAAAAAABLL;
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t X509ExtensionParseKeyUsage(uint64_t a1, _BYTE *a2)
{
  result = ccder_blob_decode_bitstring();
  if (result)
  {
    return 0;
  }

  return result;
}

uint64_t X509CertificateVerifyOnlyOneAppleExtension(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 > 9)
  {
    return 0;
  }

  v5 = result;
  v6 = 0;
  v7 = ~a2;
  while (v7 >= 16 * v6)
  {
    result = compare_octet_string(v5, a2 + 16 * v6);
    if (!result)
    {
      return result;
    }

    if (a3 <= v6++)
    {
      v9 = v5[1];
      v10 = (a2 + 16 * a3);
      *v10 = *v5;
      v10[1] = v9;
      return 1;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t compare_octet_string(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return memcmp(*a1, *a2, v2);
  }

  if (v2 > v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t X509ExtensionParseAppleExtension(uint64_t result, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, int a6)
{
  v58 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    a5 = 0;
  }

  switch(a3)
  {
    case 9uLL:
      if (*a2 == 0xB6463F78648862ALL && *(a2 + 8) == 1)
      {

        return X509ExtensionParseComponentAuth(result, a4, a5);
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 49)
      {
        v57 = 0;
        result = der_get_BOOLean(result, 0, &v57);
        if (result)
        {
          v56 = 0x20000040001;
          if (v57)
          {
            v56 = 0x10000080002;
          }

          *a4 |= v56;
        }

        return result;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 44)
      {

        return X509ExtensionParseCertifiedChipIntermediate(result, a4, a5);
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 36)
      {

        return X509ExtensionParseMFIAuthv3Leaf(result, a4, a5);
      }

      if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 22)
      {
        if (*a2 == 0xC6463F78648862ALL && *(a2 + 8) == 19)
        {
          result = ccder_blob_check_null(result);
          if (!result)
          {
            return result;
          }

          v14 = *a4 | 0x8000000000;
        }

        else
        {
          if (*a2 == 0xA6463F78648862ALL && *(a2 + 8) == 1)
          {
            *a4 |= 0x1000000uLL;
            goto LABEL_249;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 29)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x2000000;
          }

          else
          {
            if (*a2 != 0xC6463F78648862ALL || *(a2 + 8) != 14)
            {
              if (*a2 != 0x86463F78648862ALL || *(a2 + 8) != 3)
              {
                goto LABEL_249;
              }

              return X509ExtensionParseDeviceAttestationIdentity(result, a4, a5);
            }

            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x4000000;
          }
        }

LABEL_282:
        *a4 = v14;
        return 1;
      }

      result = ccder_blob_check_null(result);
      if (!result)
      {
        return result;
      }

      v54 = *a4;
      v55 = 1048584;
      goto LABEL_204;
    case 0xAuLL:
      if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 5122)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v54 = *a4;
        v55 = 0x800000100000;
      }

      else
      {
        if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 258)
        {
          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1538)
          {
            goto LABEL_214;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4610)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0xF00;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 278)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x800000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3073)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x10;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1793)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x20000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3329)
          {
LABEL_214:
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x20;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 2305)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x40;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 513)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x80;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1025)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x10000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 769)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x100;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1537)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x400;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 6145)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x1000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 9217)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x80000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8193)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x2000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8705)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x4000000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 315)
          {

            return X509ExtensionParseMFISWAuth(result, a4, a5);
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3074)
          {
            result = ccder_blob_check_null(result);
            if (!result)
            {
              return result;
            }

            v14 = *a4 | 0x300000000;
            goto LABEL_282;
          }

          if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 304)
          {

            return X509ExtensionParseGenericSSLMarker(result, a4, a5);
          }

          v35 = 1;
          goto LABEL_165;
        }

        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v54 = *a4;
        v55 = 0x58600003F0D0;
      }

LABEL_204:
      v14 = v54 | v55;
      goto LABEL_282;
    case 0xBuLL:
      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10901066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x400000000000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10301066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x200;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10601066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x800;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11801066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x2000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x12401066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x100000000000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11901066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x4000;
        goto LABEL_282;
      }

      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x21901066463F786)
      {
        result = ccder_blob_check_null(result);
        if (!result)
        {
          return result;
        }

        v14 = *a4 | 0x8000;
        goto LABEL_282;
      }

      break;
    default:
      if (a3 < 0xA)
      {
        goto LABEL_249;
      }

      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_288;
      }

      break;
  }

  v35 = 0;
LABEL_165:
  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 27)
  {

    return X509ExtensionParseServerAuthMarker(result, a2, a3, a4, a5);
  }

  if (!v35)
  {
    goto LABEL_249;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 832)
  {
    result = ccder_blob_check_null(result);
    if (!result)
    {
      return result;
    }

    v14 = *a4 | 0x400000;
    goto LABEL_282;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3586)
  {
    result = ccder_blob_check_null(result);
    if (!result)
    {
      return result;
    }

    v54 = *a4;
    v55 = 37748736;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4354)
  {
    result = ccder_blob_check_null(result);
    if (!result)
    {
      return result;
    }

    v54 = *a4;
    v55 = 0x8004000000;
    goto LABEL_204;
  }

  if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 327)
  {
    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3841)
    {
      v53 = *result;
      v52 = *(result + 8);
      if (a5)
      {
        if (v53 > v52)
        {
          goto LABEL_288;
        }

        *a5 = v53;
        a5[1] = v52 - v53;
      }

      *a4 |= 0x80000000uLL;
      goto LABEL_250;
    }

LABEL_249:
    v53 = *result;
    v52 = *(result + 8);
LABEL_250:
    if (v53 <= v52)
    {
      *result = v52;
      return 1;
    }

LABEL_288:
    __break(0x5519u);
    return result;
  }

  return X509ExtensionParseMFI4Properties(result, a4, a5);
}

uint64_t isFactoryMFiCertificate(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (![a1 isEqualToString:@"com.apple.mfiaccessory"])
  {
    return 0;
  }

  v2 = SecCertificateCopyIssuerSummary();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 isEqualToString:@"Apple Accessory Host Attestation Authority - 00000002"];
  CFRelease(v3);
  return v4;
}

uint64_t security_valid_security_enclave_reference_key(SecKeyRef key, int a2, unsigned __int8 *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Duplicate = key;
  v85[5] = *MEMORY[0x277D85DE8];
  error = 0;
  if (!key)
  {
    v43 = createMobileActivationError("security_valid_security_enclave_reference_key", 394, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid input.", a7, a8, v75);
    v44 = 0;
    cf = 0;
    v42 = 0;
LABEL_23:
    v16 = 0;
    v80 = 0;
    v81 = 0;
    v78 = 0;
    goto LABEL_35;
  }

  v12 = SecKeyCopyAttributes(key);
  if (!v12)
  {
    v43 = createMobileActivationError("security_valid_security_enclave_reference_key", 400, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query attributes.", v13, v14, v75);
    v44 = 0;
    cf = 0;
    v42 = 0;
    Duplicate = 0;
    goto LABEL_23;
  }

  v15 = *MEMORY[0x277CDC158];
  theDict = v12;
  v16 = CFDictionaryGetValue(v12, *MEMORY[0x277CDC158]);
  v17 = isNSString(v16);

  if (!v17)
  {
    createMobileActivationError("security_valid_security_enclave_reference_key", 406, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query attribute '%@'.", v18, v19, v15);
    v43 = LABEL_27:;
    cf = 0;
    v80 = 0;
LABEL_32:
    v42 = 0;
    Duplicate = 0;
    v81 = 0;
    goto LABEL_33;
  }

  if (([v16 isEqualToString:*MEMORY[0x277CDC170]] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", *MEMORY[0x277CDC160]) & 1) == 0)
  {
    createMobileActivationError("security_valid_security_enclave_reference_key", 412, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid key type (actual, expected): (%@, %@)", v20, v21, v16);
    goto LABEL_27;
  }

  v22 = *MEMORY[0x277CDC018];
  v23 = CFDictionaryGetValue(theDict, *MEMORY[0x277CDC018]);
  v24 = isNSNumber(v23);

  v80 = v23;
  if (!v24)
  {
    createMobileActivationError("security_valid_security_enclave_reference_key", 418, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query attribute '%@'.", v25, v26, v22);
    v43 = LABEL_31:;
    cf = 0;
    goto LABEL_32;
  }

  if ([v23 unsignedIntValue] != 256 && objc_msgSend(v23, "unsignedIntValue") != 384)
  {
    createMobileActivationError("security_valid_security_enclave_reference_key", 423, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Unsupported key size: %@", v27, v28, v23);
    goto LABEL_31;
  }

  v76 = a3;
  v29 = *MEMORY[0x277CDC028];
  v30 = CFDictionaryGetValue(theDict, *MEMORY[0x277CDC028]);
  v31 = isNSString(v30);

  v81 = v30;
  if (!v31)
  {
    createMobileActivationError("security_valid_security_enclave_reference_key", 429, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query attribute '%@'.", v32, v33, v29);
    v43 = LABEL_29:;
    cf = 0;
    v42 = 0;
    Duplicate = 0;
LABEL_33:
    v78 = 0;
LABEL_34:
    v44 = theDict;
    goto LABEL_35;
  }

  v34 = *MEMORY[0x277CDC040];
  if (([v30 isEqualToString:*MEMORY[0x277CDC040]] & 1) == 0 && (objc_msgSend(v30, "isEqualToString:", *MEMORY[0x277CDC048]) & 1) == 0 && (objc_msgSend(v30, "isEqualToString:", *MEMORY[0x277CDC070]) & 1) == 0 && (objc_msgSend(v30, "isEqualToString:", *MEMORY[0x277CDC068]) & 1) == 0)
  {
    createMobileActivationError("security_valid_security_enclave_reference_key", 441, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Unsupported key type: %@", v35, v36, v30);
    goto LABEL_29;
  }

  if (!a2)
  {
    cf = 0;
    v42 = 0;
    v41 = 0;
    goto LABEL_49;
  }

  Duplicate = SecKeyCreateDuplicate();
  if (!Duplicate)
  {
    v55 = @"Failed to create duplicate RK.";
    v56 = 448;
    v57 = -1;
    v58 = 0;
LABEL_60:
    v43 = createMobileActivationError("security_valid_security_enclave_reference_key", v56, @"com.apple.MobileActivation.ErrorDomain", v57, v58, v55, v37, v38, v75);
    cf = 0;
LABEL_61:
    v42 = 0;
    goto LABEL_33;
  }

  if (!SecKeySetParameter())
  {
    v58 = error;
    v55 = @"Failed to set RK parameter.";
    v56 = 456;
LABEL_59:
    v57 = -1;
    goto LABEL_60;
  }

  if (([v30 isEqualToString:v34] & 1) != 0 || objc_msgSend(v30, "isEqualToString:", *MEMORY[0x277CDC048]))
  {
    v39 = SecKeyCreateSignature(Duplicate, *MEMORY[0x277CDC300], [MEMORY[0x277CBEA90] data], &error);
    if (v39)
    {
      v40 = v39;
      v41 = Duplicate;
      cf = 0;
      v42 = 0;
LABEL_50:
      v49 = 0;
      v78 = 0;
      v43 = 0;
      goto LABEL_51;
    }

    if (mobileactivationErrorHasDomainAndErrorCode(error, *MEMORY[0x277CC5640], 0xFFFFFFFFFFFFFFFDLL))
    {
      v58 = error;
      v55 = @"Failed to create test signature.";
      v56 = 464;
      v57 = -2;
      goto LABEL_60;
    }

    v41 = Duplicate;
    cf = 0;
    v42 = 0;
LABEL_49:
    v40 = 0;
    goto LABEL_50;
  }

  v59 = SecAccessControlCreate();
  if (!v59)
  {
    v58 = error;
    v55 = @"Failed to create access control.";
    v56 = 470;
    goto LABEL_59;
  }

  v60 = *MEMORY[0x277CDBF08];
  v61 = v59;
  cf = v59;
  if ((SecAccessControlSetProtection() & 1) == 0)
  {
    v43 = createMobileActivationError("security_valid_security_enclave_reference_key", 475, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to set ACL protection to %@.", v62, v63, v60);
    goto LABEL_61;
  }

  v84[0] = *MEMORY[0x277CDBFD0];
  v84[1] = v15;
  v64 = *MEMORY[0x277CDC160];
  v85[0] = MEMORY[0x277CBEC28];
  v85[1] = v64;
  v65 = *MEMORY[0x277CDBEC0];
  v84[2] = v29;
  v84[3] = v65;
  v85[2] = v34;
  v85[3] = v61;
  v84[4] = v22;
  v85[4] = &unk_283965E70;
  v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:5];
  v66 = SecKeyCreateRandomKey(v78, &error);
  v42 = v66;
  if (!v66)
  {
    v43 = createMobileActivationError("security_valid_security_enclave_reference_key", 488, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create reference key.", v70, v71, v75);
    goto LABEL_34;
  }

  v82 = 0;
  v41 = Duplicate;
  v49 = security_create_attestation(v66, Duplicate, &v82, v67, v68, v69, v70, v71);
  v43 = v82;
  if (v49)
  {
    v40 = 0;
LABEL_51:
    v44 = theDict;
    if (v76)
    {
      v45 = v16;
      if ([v81 isEqualToString:*MEMORY[0x277CDC070]])
      {
        v54 = 1;
      }

      else
      {
        v54 = [v81 isEqualToString:*MEMORY[0x277CDC068]];
      }

      *v76 = v54;
      v48 = 1;
      v44 = theDict;
    }

    else
    {
      v45 = v16;
      v48 = 1;
    }

LABEL_38:
    CFRelease(v44);
    v50 = v48;
    v51 = v40;
    v52 = v49;
    goto LABEL_39;
  }

  v74 = createMobileActivationError("security_valid_security_enclave_reference_key", 494, @"com.apple.MobileActivation.ErrorDomain", -11, v43, @"Failed to create test attestation.", v72, v73, v75);

  v43 = v74;
  v44 = theDict;
  Duplicate = v41;
LABEL_35:
  v41 = Duplicate;
  v45 = v16;
  if (a4)
  {
    v46 = v44;
    v47 = v43;
    v44 = v46;
    *a4 = v43;
  }

  v48 = 0;
  v40 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  if (v44)
  {
    goto LABEL_38;
  }

LABEL_39:
  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  return v50;
}

void DeviceIdentityIssueClientCertificateWithCompletion(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  v33 = 0;
  v8 = v5;
  v9 = v8;
  if (!v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
  }

  v10 = v29;
  v27 = v29[5];
  v11 = isSupportedDeviceIdentityClient(0, &v27);
  objc_storeStrong(v10 + 5, v27);
  if ((v11 & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke;
    block[3] = &unk_278585FB8;
    v26[1] = &v28;
    v16 = v26;
    v26[0] = v7;
    v17 = block;
LABEL_8:
    dispatch_async(v9, v17);
    goto LABEL_9;
  }

  v12 = is_virtual_machine();
  if (v12)
  {
    v13 = v29;
    obj = v29[5];
    has_host_key = libavp_guest_has_host_key(&obj);
    objc_storeStrong(v13 + 5, obj);
    if ((has_host_key & 1) == 0)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_170;
      v22[3] = &unk_278585FB8;
      v23[1] = &v28;
      v16 = v23;
      v23[0] = v7;
      v17 = v22;
      goto LABEL_8;
    }
  }

  v15 = copyDeviceIdentitySerialQueue(v12);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_171;
  v18[3] = &unk_278586080;
  v16 = v21;
  v21[0] = v7;
  v21[1] = &v28;
  v19 = v6;
  v20 = v9;
  dispatch_async(v15, v18);

LABEL_9:
  _Block_object_dispose(&v28, 8);
}

uint64_t isSupportedDeviceIdentityClient(uint64_t a1, void *a2)
{
  if (isSupportedDeviceIdentityClient_onceToken != -1)
  {
    isSupportedDeviceIdentityClient_cold_1();
  }

  v5 = copy_process_name();
  if (!v5)
  {
    v11 = createMobileActivationError("isSupportedDeviceIdentityClient", 305, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query process name.", v3, v4, v15);
    v8 = 0;
    if (a2)
    {
LABEL_12:
      v13 = v11;
      v12 = 0;
      *a2 = v11;
      goto LABEL_15;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v6 = is_virtual_machine();
  v7 = &isSupportedDeviceIdentityClient_virtualDeviceSupportedList;
  if (!v6)
  {
    v7 = &isSupportedDeviceIdentityClient_physicalDeviceSupportedList;
  }

  v8 = *v7;
  if (([v8 containsObject:v5] & 1) == 0)
  {
    v11 = createMobileActivationError("isSupportedDeviceIdentityClient", 312, @"com.apple.MobileActivation.ErrorDomain", -25, 0, @"%@ is not allowed to use this API. File a radar with 'MobileActivation | all' for support.", v9, v10, v5);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      isSupportedDeviceIdentityClient_cold_2(v11);
      if (a2)
      {
        goto LABEL_12;
      }
    }

    else if (a2)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v11 = 0;
  v12 = 1;
LABEL_15:

  return v12;
}

id copyDeviceIdentitySerialQueue(uint64_t a1)
{
  if (copyDeviceIdentitySerialQueue_onceToken != -1)
  {
    copyDeviceIdentitySerialQueue_cold_1();
  }

  v2 = copyDeviceIdentitySerialQueue_queue;

  return v2;
}

id copy_supported_baa_oids()
{
  v0 = [MEMORY[0x277CBEB58] setWithObjects:{@"1.2.840.113635.100.10.1", @"1.2.840.113635.100.10.2", @"1.2.840.113635.100.8.1", @"1.2.840.113635.100.8.2", @"1.2.840.113635.100.8.3", @"1.2.840.113635.100.8.4", @"1.2.840.113635.100.8.5", @"1.2.840.113635.100.8.6", @"1.2.840.113635.100.8.7", @"1.2.840.113635.100.8.12", @"1.2.840.113635.100.6.71.1", @"1.2.840.113635.100.6.71.2", @"1.2.840.113635.100.6.71.3", @"1.2.840.113635.100.8.9.4", @"1.2.840.113635.100.8.10.4", 0}];
  if (is_virtual_machine())
  {
    v1 = [MEMORY[0x277CBEB98] setWithObjects:{@"1.2.840.113635.100.10.1", 0}];
    [v0 minusSet:v1];
  }

  return v0;
}

CFTypeRef createReferenceKeyBlob(const void *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = *MEMORY[0x277CDC040];
  error = 0;
  if (v7 && ([v7 objectForKeyedSubscript:@"KeySizeInBits"], v9 = objc_claimAutoreleasedReturnValue(), isNSNumber(v9), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v11 = [v7 objectForKeyedSubscript:@"KeySizeInBits"];
    if (([v11 isEqualToNumber:&unk_283965D50] & 1) == 0 && (objc_msgSend(v11, "isEqualToNumber:", &unk_283965D68) & 1) == 0)
    {
      v14 = createMobileActivationError("createReferenceKeyBlob", 73, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unsupported size (%@)", v12, v13, @"KeySizeInBits");
      v15 = 0;
LABEL_20:
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v22 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v11 = &unk_283965D50;
  }

  v16 = +[GestaltHlprDeviceIdentity getSharedInstance];
  v15 = [v16 copyAnswer:@"HasPKA"];

  v17 = isNSNumber(v15);

  if (!v17)
  {
    v14 = createMobileActivationError("createReferenceKeyBlob", 84, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve PKA state.", v18, v19, v44);
    goto LABEL_20;
  }

  if ([v15 BOOLValue] && (a2 & 1) == 0)
  {
    v20 = *MEMORY[0x277CDC048];

    v8 = v20;
  }

  if (a1)
  {
    v21 = CFRetain(a1);
    if (v21)
    {
      v22 = v21;
      goto LABEL_23;
    }
  }

  v23 = isRunningInRecovery();
  if ((v23 & 1) == 0 && !isRunningInDiagnosticsMode(v23, v24))
  {
    v22 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0x40000000uLL, &error);
    if (v22)
    {
      goto LABEL_23;
    }

    v33 = error;
    v44 = *MEMORY[0x277CDBF00];
    v34 = @"Failed to create access control (%@).";
    v35 = 115;
LABEL_29:
    createMobileActivationError("createReferenceKeyBlob", v35, @"com.apple.MobileActivation.ErrorDomain", -1, v33, v34, v25, v26, v44);
    goto LABEL_30;
  }

  v22 = SecAccessControlCreate();
  if (!v22)
  {
    v33 = error;
    v34 = @"Failed to create access control.";
    v35 = 104;
    goto LABEL_29;
  }

  v27 = *MEMORY[0x277CDBF08];
  if ((SecAccessControlSetProtection() & 1) == 0)
  {
    createMobileActivationError("createReferenceKeyBlob", 109, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to set ACL protection to %@.", v28, v29, v27);
    v14 = LABEL_30:;
    v30 = 0;
    goto LABEL_31;
  }

LABEL_23:
  v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v30 = v36;
  if (!v36)
  {
    v14 = createMobileActivationError("createReferenceKeyBlob", 123, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to alloc dictionary.", v37, v38, v44);
LABEL_31:
    v31 = 0;
    v32 = 0;
    goto LABEL_32;
  }

  [v36 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277CDBFD0]];
  [v30 setObject:*MEMORY[0x277CDC160] forKeyedSubscript:*MEMORY[0x277CDC158]];
  [v30 setObject:v8 forKeyedSubscript:*MEMORY[0x277CDC028]];
  [v30 setObject:v22 forKeyedSubscript:*MEMORY[0x277CDBEC0]];
  [v30 setObject:v11 forKeyedSubscript:*MEMORY[0x277CDC018]];
  v39 = SecKeyCreateRandomKey(v30, &error);
  v32 = v39;
  if (v39)
  {
    v31 = CFRetain(v39);
    v14 = 0;
  }

  else
  {
    v14 = createMobileActivationError("createReferenceKeyBlob", 141, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create ref key.", v40, v41, v44);
    v31 = 0;
  }

LABEL_32:
  if (a4 && !v31)
  {
    v42 = v14;
    *a4 = v14;
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (error)
  {
    CFRelease(error);
  }

  return v31;
}

id create_baa_info(__SecKey *a1, void *a2, void *a3)
{
  v329[3] = *MEMORY[0x277D85DE8];
  v4 = a2;
  error = 0;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v329[0] = @"1.2.840.113635.100.8.4";
  v329[1] = @"1.2.840.113635.100.8.5";
  v329[2] = @"1.2.840.113635.100.8.7";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v329 count:3];
  v7 = [v5 initWithArray:v6];

  v296 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v307 = v4;
  if (!v4)
  {
    v306 = v7;
    v25 = 0;
    v295 = 0;
    v26 = 0;
    v286 = 0;
    v287 = 0;
    v288 = 0;
    v289 = 0;
    v291 = 0;
    v292 = 0;
    v27 = 0;
    v290 = 0;
    v28 = 0;
    v279 = 0;
    v273 = 0;
    v21 = 0;
    v29 = 1;
    v284 = &unk_283965D98;
    v300 = 0;
    v301 = &unk_283965D98;
    v285 = &unk_283965D80;
    goto LABEL_24;
  }

  v8 = [v4 objectForKeyedSubscript:@"OIDSToInclude"];
  v9 = isNSArray(v8);

  if (v9)
  {
    v306 = v7;
    v323 = 0u;
    v324 = 0u;
    v321 = 0u;
    v322 = 0u;
    v10 = [v4 objectForKeyedSubscript:@"OIDSToInclude"];
    v11 = [v10 countByEnumeratingWithState:&v321 objects:v328 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v322;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v322 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = isNSString(*(*(&v321 + 1) + 8 * i));

          if (!v15)
          {
            v254 = [v307 objectForKeyedSubscript:@"OIDSToInclude"];
            v303 = createMobileActivationError("create_baa_info", 244, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid options (%@): %@", v40, v41, @"OIDSToInclude");

            v280 = 0;
            v281 = 0;
            v34 = 0;
            v282 = 0;
            v35 = 0;
            v287 = 0;
            v288 = 0;
            v289 = 0;
            v290 = 0;
            v292 = 0;
            v293 = 0;
            v291 = 0;
            v277 = 0;
            v286 = 0;
            v297 = 0;
            goto LABEL_118;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v321 objects:v328 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v16 = objc_alloc(MEMORY[0x277CBEB18]);
    v17 = [v307 objectForKeyedSubscript:@"OIDSToInclude"];
    v7 = [v16 initWithArray:v17];

    if (is_virtual_machine())
    {
      v18 = copy_unsupported_virtual_machine_oids();
      v19 = [v18 allObjects];
      [v7 removeObjectsInArray:v19];
    }
  }

  if (([v7 containsObject:@"1.2.840.113635.100.8.1"] & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.7") & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.10.1") & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.10.2") & 1) != 0 || objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.10.3"))
  {
    v20 = [v7 containsObject:@"1.2.840.113635.100.8.1"];
    v21 = 1;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v22 = [v7 containsObject:@"1.2.840.113635.100.8.7"];
  v306 = v7;
  if (([v7 containsObject:@"1.2.840.113635.100.8.2"] & 1) == 0 && !objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.8.11.1"))
  {
    v67 = 0;
LABEL_59:
    v286 = 0;
    goto LABEL_60;
  }

  v23 = [v307 objectForKeyedSubscript:@"nonce"];
  v24 = isNSData(v23);
  if (v24)
  {
  }

  else
  {
    keya = a1;
    v62 = v21;
    v63 = v20;
    v64 = [v307 objectForKeyedSubscript:@"AppSpecificData"];
    v32 = isNSData(v64);

    if (!v32)
    {
      v303 = createMobileActivationError("create_baa_info", 281, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing one of the required options: %@ / %@", v65, v66, @"nonce");
      v280 = 0;
      v281 = 0;
      v34 = 0;
      v282 = 0;
      v283 = 0;
      v35 = 0;
      v287 = 0;
      v288 = 0;
      v289 = 0;
      v290 = 0;
      v292 = 0;
      v293 = 0;
      v291 = 0;
      v277 = 0;
      v286 = 0;
      v297 = 0;
      v36 = 0;
      v37 = 0;
      a1 = 0;
      v38 = 0;
      v39 = 0;
      v294 = 0;
LABEL_119:
      v61 = 0;
      goto LABEL_120;
    }

    v20 = v63;
    v21 = v62;
    a1 = keya;
  }

  v67 = [v307 objectForKeyedSubscript:@"nonce"];
  v68 = [v307 objectForKeyedSubscript:@"AppSpecificData"];
  if (!v68)
  {
    goto LABEL_59;
  }

  v69 = v68;
  v61 = isNSData(v68);

  v286 = v69;
  if (!v61)
  {
    v297 = v67;
    v303 = createMobileActivationError("create_baa_info", 290, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@).", v70, v71, @"AppSpecificData");
    v280 = 0;
    v281 = 0;
    v34 = 0;
    v282 = 0;
    v35 = 0;
    v287 = 0;
    v289 = 0;
    v290 = 0;
    v292 = 0;
    v293 = 0;
LABEL_75:
    v291 = 0;
    v277 = 0;
LABEL_76:
    v288 = 0;
    v283 = 0;
    v36 = 0;
    v37 = 0;
    a1 = 0;
    v38 = 0;
    v39 = 0;
    v294 = 0;
    v32 = 0;
LABEL_120:
    v295 = 0;
    v298 = 0;
    v300 = 0;
    key = 0;
    v274 = 0;
    v276 = 0;
    v278 = 0;
    v25 = 0;
    v301 = &unk_283965D98;
    v284 = &unk_283965D98;
    v285 = &unk_283965D80;
    goto LABEL_121;
  }

  if ([v69 length] >= 0x41)
  {
    v297 = v67;
    [v69 length];
    createMobileActivationError("create_baa_info", 295, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unexpected size (%lu)", v72, v73, @"AppSpecificData");
    v303 = LABEL_114:;
LABEL_115:
    v280 = 0;
    v281 = 0;
    v34 = 0;
    v282 = 0;
    v35 = 0;
    v287 = 0;
    v289 = 0;
    v290 = 0;
    v292 = 0;
    v293 = 0;
LABEL_116:
    v291 = 0;
    v277 = 0;
    goto LABEL_117;
  }

LABEL_60:
  v279 = v22;
  v77 = [v307 objectForKeyedSubscript:@"CertType"];
  v78 = isNSNumber(v77);

  v297 = v67;
  if (v78)
  {
    v79 = [v307 objectForKeyedSubscript:@"CertType"];

    v80 = 0x277CCA000uLL;
    v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
    if ([v79 isEqualToNumber:v81])
    {
LABEL_64:

      goto LABEL_66;
    }

    v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
    if ([v79 isEqualToNumber:v82])
    {

      v80 = 0x277CCA000uLL;
      goto LABEL_64;
    }

    v275 = v20;
    v95 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:2];
    v96 = [v79 isEqualToNumber:v95];

    if ((v96 & 1) == 0)
    {
      v296 = v79;
      createMobileActivationError("create_baa_info", 305, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): %@", v97, v98, @"CertType");
      goto LABEL_114;
    }

    v20 = v275;
    v80 = 0x277CCA000;
  }

  else
  {
    v79 = v296;
    v80 = 0x277CCA000uLL;
  }

LABEL_66:
  v83 = [*(v80 + 2992) numberWithUnsignedInt:1];
  v84 = [v79 isEqualToNumber:v83];

  v296 = v79;
  if (v84)
  {
    if ((device_supports_mfi_certificates() & 1) == 0)
    {
      createMobileActivationError("create_baa_info", 312, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Certificate type not supported on this platform: %@", v85, v86, v79);
      goto LABEL_114;
    }

    if (([v7 containsObject:@"1.2.840.113635.100.6.71.1"] & 1) == 0)
    {
      createMobileActivationError("create_baa_info", 317, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required OID for certificate type (%@): %@", v87, v88, v79);
      goto LABEL_114;
    }
  }

  else if (([v7 containsObject:@"1.2.840.113635.100.6.71.1"] & 1) != 0 || (objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.6.71.2") & 1) != 0 || objc_msgSend(v7, "containsObject:", @"1.2.840.113635.100.6.71.3"))
  {
    createMobileActivationError("create_baa_info", 324, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid OID(s) for requested certificate type: %@", v89, v90, v79);
    goto LABEL_114;
  }

  if ([v7 containsObject:@"1.2.840.113635.100.6.71.1"] && (objc_msgSend(v307, "objectForKeyedSubscript:", @"MFiProperties"), v91 = objc_claimAutoreleasedReturnValue(), isNSData(v91), v92 = objc_claimAutoreleasedReturnValue(), v92, v91, v92))
  {
    v93 = [v307 objectForKeyedSubscript:@"MFiProperties"];
    v94 = [v93 length];

    if (v94 != 32)
    {
      v175 = [v307 objectForKeyedSubscript:@"MFiProperties"];
      [v175 length];
      v303 = createMobileActivationError("create_baa_info", 332, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unexpected size (%lu)", v176, v177, @"MFiProperties");

      goto LABEL_115;
    }

    v292 = [v307 objectForKeyedSubscript:@"MFiProperties"];
  }

  else
  {
    v292 = 0;
  }

  if (![v7 containsObject:@"1.2.840.113635.100.6.71.2"])
  {
    v27 = 0;
    v291 = 0;
    goto LABEL_132;
  }

  v146 = [v307 objectForKeyedSubscript:@"MFiPPUID"];
  v61 = isNSString(v146);

  if (!v61)
  {
    v303 = createMobileActivationError("create_baa_info", 342, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required option: %@", v147, v148, @"MFiPPUID");
    v280 = 0;
    v281 = 0;
    v34 = 0;
    v282 = 0;
    v35 = 0;
    v287 = 0;
    v289 = 0;
    v290 = 0;
    v293 = 0;
    goto LABEL_75;
  }

  v149 = [v307 objectForKeyedSubscript:@"MFiPPUID"];
  v150 = [v149 length];

  if (v150 >= 0x25)
  {
    v151 = [v307 objectForKeyedSubscript:@"MFiPPUID"];
    [v151 length];
    v303 = createMobileActivationError("create_baa_info", 347, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unexpected size (%lu)", v152, v153, @"MFiPPUID");

LABEL_204:
    v280 = 0;
    v281 = 0;
    v34 = 0;
    v282 = 0;
    v35 = 0;
    v287 = 0;
    v289 = 0;
    v290 = 0;
    v293 = 0;
    goto LABEL_116;
  }

  v179 = [v307 objectForKeyedSubscript:@"MFiPPUID"];
  v27 = [v179 stringByPaddingToLength:36 withString:&stru_2839616E8 startingAtIndex:0];

  if (!v27)
  {
    v303 = createMobileActivationError("create_baa_info", 356, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Failed to pad string.", v180, v181, v253);
    goto LABEL_204;
  }

  v182 = [v27 dataUsingEncoding:4];
  if (!v182)
  {
    v277 = v27;
    v303 = createMobileActivationError("create_baa_info", 362, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Failed to convert string to data.", v183, v184, v253);
    v280 = 0;
    v281 = 0;
    v34 = 0;
    v282 = 0;
    v35 = 0;
    v287 = 0;
    v289 = 0;
    v290 = 0;
    v293 = 0;
    v291 = 0;
LABEL_117:
    v288 = 0;
LABEL_118:
    v283 = 0;
    v36 = 0;
    v37 = 0;
    a1 = 0;
    v38 = 0;
    v39 = 0;
    v294 = 0;
    v32 = 0;
    goto LABEL_119;
  }

  v291 = v182;
LABEL_132:
  if (![v306 containsObject:@"1.2.840.113635.100.6.71.3"])
  {
    v290 = 0;
    goto LABEL_164;
  }

  v164 = [v307 objectForKeyedSubscript:@"MFiData"];
  v61 = isNSData(v164);

  if (!v61)
  {
    v277 = v27;
    v303 = createMobileActivationError("create_baa_info", 369, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required option: %@", v165, v166, @"MFiData");
    v280 = 0;
    v281 = 0;
    v34 = 0;
    v282 = 0;
    v35 = 0;
    v287 = 0;
    v289 = 0;
    v290 = 0;
    v293 = 0;
    goto LABEL_76;
  }

  v167 = [v307 objectForKeyedSubscript:@"MFiData"];
  v168 = [v167 length];

  if (v168 >= 0x4B0)
  {
    v277 = v27;
    v169 = [v307 objectForKeyedSubscript:@"MFiData"];
    [v169 length];
    v303 = createMobileActivationError("create_baa_info", 374, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): unexpected size (%lu)", v170, v171, @"MFiData");

    v280 = 0;
    v281 = 0;
    v34 = 0;
    v282 = 0;
    v35 = 0;
    v287 = 0;
    v289 = 0;
    v290 = 0;
    v293 = 0;
    goto LABEL_117;
  }

  v290 = [v307 objectForKeyedSubscript:@"MFiData"];
LABEL_164:
  v185 = [v307 objectForKeyedSubscript:@"UseRKSigningInterface"];
  v186 = isNSNumber(v185);

  v273 = v20;
  if (v186)
  {
    v187 = [v307 objectForKeyedSubscript:@"UseRKSigningInterface"];
    v28 = [v187 BOOLValue];
  }

  else
  {
    v28 = 0;
  }

  v188 = [v307 objectForKeyedSubscript:@"UseSoftwareGeneratedKey"];
  v189 = isNSNumber(v188);

  if (v189)
  {
    v190 = [v307 objectForKeyedSubscript:@"UseSoftwareGeneratedKey"];
    v29 = [v190 BOOLValue];
  }

  else
  {
    v29 = 1;
  }

  v191 = [v307 objectForKeyedSubscript:@"Validity"];
  v192 = isNSNumber(v191);

  if (v192)
  {
    v193 = MEMORY[0x277CCABB0];
    v194 = [v307 objectForKeyedSubscript:@"Validity"];
    v285 = [v193 numberWithUnsignedInteger:{objc_msgSend(v194, "unsignedIntegerValue")}];
  }

  else
  {
    v285 = &unk_283965D80;
  }

  v195 = [v307 objectForKeyedSubscript:@"CACert"];
  v196 = isNSNumber(v195);

  if (v196)
  {
    v197 = MEMORY[0x277CCABB0];
    v198 = [v307 objectForKeyedSubscript:@"CACert"];
    v284 = [v197 numberWithUnsignedInteger:{objc_msgSend(v198, "unsignedIntegerValue")}];
  }

  else
  {
    v284 = &unk_283965D98;
  }

  v199 = [v307 objectForKeyedSubscript:@"scrtAttestation"];
  v200 = isNSNumber(v199);

  if (v200)
  {
    v201 = MEMORY[0x277CCABB0];
    v202 = [v307 objectForKeyedSubscript:@"scrtAttestation"];
    v301 = [v201 numberWithUnsignedInteger:{objc_msgSend(v202, "unsignedIntegerValue")}];
  }

  else
  {
    v301 = &unk_283965D98;
  }

  v203 = [v307 objectForKeyedSubscript:@"ClientAttestationData"];
  v204 = isNSData(v203);

  if (!v204)
  {
    v299 = 0;
    v300 = 0;
LABEL_184:
    v295 = 0;
    goto LABEL_185;
  }

  keyc = a1;
  v205 = [v307 objectForKeyedSubscript:@"ClientAttestationPublicKey"];
  a1 = isNSData(v205);

  if (!a1)
  {
    v277 = v27;
    v303 = createMobileActivationError("create_baa_info", 411, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required option for %@.", v206, v207, @"ClientAttestationPublicKey");
    v280 = 0;
    v281 = 0;
    v34 = 0;
    v282 = 0;
    v283 = 0;
    v35 = 0;
    v287 = 0;
    v288 = 0;
    v289 = 0;
    v293 = 0;
    v294 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v32 = 0;
    v61 = 0;
    v295 = 0;
    v298 = 0;
    v300 = 0;
    goto LABEL_47;
  }

  v299 = [v307 objectForKeyedSubscript:@"ClientAttestationData"];
  v300 = [v307 objectForKeyedSubscript:@"ClientAttestationPublicKey"];
  v208 = [v307 objectForKeyedSubscript:@"ClientDirectAttestationCertificate"];
  v209 = isNSData(v208);

  a1 = keyc;
  if (!v209)
  {
    goto LABEL_184;
  }

  v295 = [v307 objectForKeyedSubscript:@"ClientDirectAttestationCertificate"];
LABEL_185:
  v210 = [v307 objectForKeyedSubscript:@"AppID"];
  v211 = isNSString(v210);

  if (v211)
  {
    v288 = [v307 objectForKeyedSubscript:@"AppID"];
  }

  else
  {
    v288 = 0;
  }

  v212 = [v307 objectForKeyedSubscript:@"LiveImage4Manifest"];
  v213 = isNSData(v212);

  if (v213)
  {
    v289 = [v307 objectForKeyedSubscript:@"LiveImage4Manifest"];
  }

  else
  {
    v289 = 0;
  }

  v214 = [v307 objectForKeyedSubscript:@"RepairImage4Manifest"];
  v215 = isNSData(v214);

  if (v215)
  {
    v287 = [v307 objectForKeyedSubscript:@"RepairImage4Manifest"];
  }

  else
  {
    v287 = 0;
  }

  v296 = v79;
  v26 = v297;
  v25 = v299;
LABEL_24:
  v297 = v26;
  v277 = v27;
  if (is_virtual_machine())
  {
    v320 = 0;
    v32 = vm_copy_host_certificate(0, &v320);
    v33 = v320;
    if (!v32)
    {
      v298 = v25;
      v303 = createMobileActivationError("create_baa_info", 440, @"com.apple.MobileActivation.ErrorDomain", -1, v33, @"Failed to copy VM host certificate.", v30, v31, v253);

      v280 = 0;
      v281 = 0;
      v34 = 0;
      v282 = 0;
      v283 = 0;
      v35 = 0;
      v293 = 0;
      v294 = 0;
      v36 = 0;
      v37 = 0;
      a1 = 0;
      v38 = 0;
      v39 = 0;
LABEL_46:
      v61 = 0;
LABEL_47:
      key = 0;
      v274 = 0;
      v276 = 0;
      v278 = 0;
      v25 = 0;
      goto LABEL_121;
    }
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  v293 = v32;
  if (!a1)
  {
    v298 = v25;
    v303 = createMobileActivationError("create_baa_info", 472, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.", v30, v31, v253);

    v280 = 0;
    v281 = 0;
    v34 = 0;
    v282 = 0;
    v283 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
LABEL_45:
    v38 = 0;
    v39 = 0;
    v294 = 0;
    v32 = 0;
    goto LABEL_46;
  }

  if (v25)
  {
    v42 = 0;
  }

  else
  {
    v42 = v28;
  }

  if (v42 != 1)
  {
    v266 = 0;
    v267 = 0;
    v263 = 0;
LABEL_55:
    v298 = v25;
    v316 = v33;
    v317 = 0;
    v25 = security_copy_system_key(0, &v317, &v316);
    v264 = v317;
    v74 = v316;

    if (!v25)
    {
      v303 = createMobileActivationError("create_baa_info", 524, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to copy SIK attestation key.", v75, v76, v253);

      v278 = 0;
      v280 = 0;
      v274 = 0;
      v276 = 0;
      key = 0;
      v32 = 0;
      v294 = 0;
      v39 = 0;
      v38 = 0;
      a1 = 0;
      v37 = 0;
      v36 = 0;
      v282 = 0;
      v283 = 0;
      v265 = 0;
      v34 = 0;
      v281 = 0;
      v61 = v264;
      goto LABEL_154;
    }

    v61 = v264;
    if ([v301 BOOLValue])
    {
      cf = 0;
      v262 = 0;
    }

    else
    {
      v314 = v74;
      v315 = 0;
      v38 = security_copy_system_key(2, &v315, &v314);
      v262 = v315;
      v99 = v314;

      cf = v38;
      if (!v38)
      {
        v303 = createMobileActivationError("create_baa_info", 533, @"com.apple.MobileActivation.ErrorDomain", -1, v99, @"Failed to copy UIK attestation key.", v100, v101, v253);

        CFRelease(v25);
        v25 = 0;
        v278 = 0;
        v280 = 0;
        v274 = 0;
        v276 = 0;
        key = 0;
        v294 = 0;
        v39 = 0;
        a1 = 0;
        v37 = 0;
        v36 = 0;
        v282 = 0;
        v283 = 0;
        v265 = 0;
        v34 = 0;
        v281 = 0;
        v32 = v262;
        goto LABEL_154;
      }

      v74 = v99;
    }

    v260 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v260)
    {
      v259 = v25;
      if ([v301 BOOLValue] & 1) != 0 || (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v104 = objc_claimAutoreleasedReturnValue(), copy_ucrt_path(v104), v105 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v105, "stringByAppendingPathComponent:", @"ucrt.pem"), v106 = objc_claimAutoreleasedReturnValue(), v107 = objc_msgSend(v104, "fileExistsAtPath:", v106), v106, v105, v104, (v107))
      {
        v305 = v21;
        keyb = a1;
        v110 = +[GestaltHlprDeviceIdentity getSharedInstance];
        v39 = [v110 copyAnswer:@"UniqueChipID"];

        v37 = isNSNumber(v39);

        if (v37)
        {
          v113 = +[GestaltHlprDeviceIdentity getSharedInstance];
          v38 = [v113 copyAnswer:@"ChipID"];

          v37 = isNSNumber(v38);

          if (v37)
          {
            v116 = +[GestaltHlprDeviceIdentity getSharedInstance];
            v117 = [v116 copyAnswer:@"BoardId"];

            v258 = v117;
            v37 = isNSNumber(v117);

            if (v37)
            {
              v120 = +[GestaltHlprDeviceIdentity getSharedInstance];
              v121 = [v120 copyAnswer:@"SecurityDomain"];

              v257 = v121;
              v122 = isNSNumber(v121);

              if (!v122)
              {
                v303 = createMobileActivationError("create_baa_info", 574, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", v123, v124, @"SecurityDomain");

                v268 = 0;
                key = 0;
                v278 = 0;
                v280 = 0;
                v274 = 0;
                v276 = 0;
                v294 = 0;
                v36 = 0;
                v282 = 0;
                v283 = 0;
                v265 = 0;
                v281 = 0;
                v25 = v259;
                v34 = v260;
                v61 = v264;
                v32 = v262;
LABEL_212:
                v37 = v257;
                a1 = v258;
                goto LABEL_151;
              }

              v255 = v38;
              v125 = +[GestaltHlprDeviceIdentity getSharedInstance];
              v126 = [v125 copyAnswer:@"SerialNumber"];

              v256 = v126;
              v127 = isNSString(v126);

              v25 = v259;
              if (!v127)
              {
                v303 = createMobileActivationError("create_baa_info", 580, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", v128, v129, @"SerialNumber");

                v268 = 0;
                key = 0;
                v278 = 0;
                v280 = 0;
                v274 = 0;
                v276 = 0;
                v294 = 0;
                v282 = 0;
                v283 = 0;
                v265 = 0;
                v281 = 0;
                v34 = v260;
LABEL_210:
                v61 = v264;
                v32 = v262;
LABEL_211:
                v38 = v255;
                v36 = v256;
                goto LABEL_212;
              }

              if (![v256 length])
              {
                v130 = [v301 BOOLValue];
                if (v130)
                {
                  if (isRunningInDiagnosticsMode(v130, v131))
                  {

                    v256 = 0;
                  }
                }
              }

              v132 = +[GestaltHlprDeviceIdentity getSharedInstance];
              v133 = [v132 copyAnswer:@"BuildVersion"];

              v283 = v133;
              v134 = isNSString(v133);

              if (v134)
              {
                v137 = SecKeyCopyPublicKey(a1);
                v32 = v262;
                v25 = v259;
                if (!v137)
                {
                  v303 = createMobileActivationError("create_baa_info", 603, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK public key.", v138, v139, v253);

                  v268 = 0;
                  key = 0;
                  v278 = 0;
                  v280 = 0;
                  v274 = 0;
                  v276 = 0;
                  v294 = 0;
                  v265 = 0;
                  v281 = 0;
                  v282 = 0;
                  v34 = v260;
                  v61 = v264;
                  goto LABEL_211;
                }

                v265 = v137;
                v38 = v255;
                v37 = v257;
                v294 = SecKeyCopyExternalRepresentation(v137, &error);
                if (!v294)
                {
                  v303 = createMobileActivationError("create_baa_info", 609, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to encode RK public key as data.", v140, v141, v253);

                  v268 = 0;
                  key = 0;
                  v278 = 0;
                  v280 = 0;
                  v274 = 0;
                  v276 = 0;
                  v294 = 0;
                  v281 = 0;
                  v282 = 0;
                  v34 = v260;
                  v61 = v264;
                  a1 = v258;
                  v36 = v256;
                  goto LABEL_151;
                }

                if (v295)
                {
                  v313 = v74;
                  v142 = &v313;
                  v143 = &v313;
                  v144 = a1;
                  v145 = 7;
                }

                else
                {
                  if ([v301 BOOLValue])
                  {
                    v145 = 0;
                  }

                  else
                  {
                    v145 = 2;
                  }

                  v312 = v74;
                  v142 = &v312;
                  v143 = &v312;
                  v144 = a1;
                }

                v216 = security_create_system_key_attestation(v144, v145, v297, v143);
                v217 = *v142;

                if (v216)
                {
                  v220 = @"RKCertification";
                  v276 = v216;
                  if (v298)
                  {
                    [v260 setObject:v298 forKeyedSubscript:@"RKCertification"];
                    [v260 setObject:v216 forKeyedSubscript:@"RKSigning"];
                    v220 = @"RKSigningPub";
                    v221 = v260;
                    v222 = v294;
                  }

                  else
                  {
                    v221 = v260;
                    v222 = v216;
                  }

                  [v221 setObject:v222 forKeyedSubscript:v220];
                  v223 = objc_alloc(MEMORY[0x277CBEB38]);
                  v326[0] = @"UniqueChipID";
                  v326[1] = @"ChipID";
                  v327[0] = v39;
                  v327[1] = v255;
                  v326[2] = @"BoardId";
                  v326[3] = @"SecurityDomain";
                  a1 = v258;
                  v327[2] = v258;
                  v327[3] = v257;
                  v326[4] = @"OsBuildVersion";
                  v326[5] = @"scrtAttestation";
                  v327[4] = v283;
                  v327[5] = v301;
                  v326[6] = @"CertType";
                  v326[7] = @"Validity";
                  v327[6] = v296;
                  v327[7] = v285;
                  v326[8] = @"CACert";
                  v326[9] = @"OIDSToInclude";
                  v327[8] = v284;
                  v224 = v306;
                  v327[9] = v306;
                  v326[10] = @"SIKPub";
                  v327[10] = v264;
                  v225 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v327 forKeys:v326 count:11];
                  v226 = [v223 initWithDictionary:v225];

                  v32 = v262;
                  if (v256)
                  {
                    [v226 setObject:v256 forKeyedSubscript:@"SerialNumber"];
                  }

                  if (v298)
                  {
                    [v226 setObject:v300 forKeyedSubscript:@"RKCertificationPub"];
                    [v226 setObject:v294 forKeyedSubscript:@"RKSigningPub"];
                    v227 = v286;
                    v61 = v264;
                    if (v295)
                    {
                      [v226 setObject:v295 forKeyedSubscript:@"DirectAttestationCertificate"];
                    }
                  }

                  else
                  {
                    [v226 setObject:v294 forKeyedSubscript:@"RKCertificationPub"];
                    v227 = v286;
                    v61 = v264;
                  }

                  if (v293)
                  {
                    [v226 setObject:v293 forKeyedSubscript:@"VMHostIdentityCertificate"];
                  }

                  if (v262)
                  {
                    [v226 setObject:v262 forKeyedSubscript:@"UIKPub"];
                  }

                  if (v227)
                  {
                    [v226 setObject:v227 forKeyedSubscript:@"AppSpecificData"];
                  }

                  v228 = copy_trusted_local_policy_hash();

                  if (v228)
                  {
                    v311 = v217;
                    v229 = copyPersonalizedFirmwareData(9, &v311);
                    v230 = v311;

                    v282 = v229;
                    if (!v229)
                    {
                      v231 = MEMORY[0x277D86220];
                      v232 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(v231, OS_LOG_TYPE_FAULT))
                      {
                        create_baa_info_cold_1();
                      }

                      v230 = 0;
                    }

                    [v226 setObject:v229 forKeyedSubscript:@"LocalPolicy"];
                    v217 = v230;
                  }

                  else
                  {
                    v282 = 0;
                  }

                  v34 = v260;
                  v278 = v226;
                  if (v305)
                  {
                    v310 = v217;
                    v233 = copyPersonalizedFirmwareData(2, &v310);
                    v234 = v310;

                    v281 = v233;
                    if (!v233)
                    {
                      if (v273)
                      {
                        v303 = createMobileActivationError("create_baa_info", 725, @"com.apple.MobileActivation.ErrorDomain", -1, v234, @"Failed to load boot manifest.", v235, v236, v253);

                        v268 = 0;
                        key = 0;
                        v274 = 0;
                        goto LABEL_209;
                      }

                      v237 = MEMORY[0x277D86220];
                      v238 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(v237, OS_LOG_TYPE_FAULT))
                      {
                        create_baa_info_cold_2();
                      }

                      v234 = 0;
                      v224 = v306;
                      v34 = v260;
                      v61 = v264;
                      v32 = v262;
                      a1 = v258;
                    }

                    v226 = v278;
                    [v278 setObject:v281 forKeyedSubscript:@"Image4Manifest"];
                    v239 = copy_sfr_manifest();
                    [v278 setObject:v239 forKeyedSubscript:@"FWImage4Manifest"];

                    v217 = v234;
                  }

                  else
                  {
                    v281 = 0;
                  }

                  v240 = v279;
                  if (!v228)
                  {
                    v240 = 0;
                  }

                  if (v240 == 1)
                  {
                    v309 = v217;
                    v241 = copyPersonalizedFirmwareData(10, &v309);
                    v242 = v309;

                    v280 = v241;
                    if (!v241)
                    {
                      v243 = MEMORY[0x277D86220];
                      v244 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(v243, OS_LOG_TYPE_FAULT))
                      {
                        create_baa_info_cold_3();
                      }

                      v242 = 0;
                      v34 = v260;
                      v61 = v264;
                      v32 = v262;
                      a1 = v258;
                    }

                    [v226 setObject:v241 forKeyedSubscript:@"Cryptex1Image4Manifest"];
                    v217 = v242;
                  }

                  else
                  {
                    v280 = 0;
                  }

                  v25 = v259;
                  if (v288)
                  {
                    [v226 setObject:v288 forKeyedSubscript:@"AppID"];
                  }

                  if (v292)
                  {
                    [v226 setObject:v292 forKeyedSubscript:@"MFiProperties"];
                  }

                  if (v291)
                  {
                    [v226 setObject:v291 forKeyedSubscript:@"MFiPPUID"];
                  }

                  if (v290)
                  {
                    [v226 setObject:v290 forKeyedSubscript:@"MFiData"];
                  }

                  if (v289)
                  {
                    [v226 setObject:v289 forKeyedSubscript:@"LiveImage4Manifest"];
                  }

                  v306 = v224;
                  if (v287)
                  {
                    [v226 setObject:v287 forKeyedSubscript:@"RepairImage4Manifest"];
                  }

                  v308 = 0;
                  v245 = [MEMORY[0x277CCAC58] dataWithPropertyList:v226 format:100 options:0 error:&v308];
                  v303 = v308;

                  v36 = v256;
                  if (v245)
                  {
                    [v34 setObject:v245 forKeyedSubscript:@"RKProperties"];
                    v274 = v245;
                    v248 = SecKeyCreateSignature(keyb, *MEMORY[0x277CDC300], v245, &error);
                    v37 = v257;
                    if (v248)
                    {
                      key = v248;
                      [v34 setObject:v248 forKeyedSubscript:@"RKPropertiesSignature"];
                      v268 = v34;
                    }

                    else
                    {
                      v252 = createMobileActivationError("create_baa_info", 841, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to sign data with ref key.", v249, v250, v253);

                      v268 = 0;
                      key = 0;
                      v303 = v252;
                    }

                    v38 = v255;
                  }

                  else
                  {
                    v251 = createMobileActivationError("create_baa_info", 830, @"com.apple.MobileActivation.ErrorDomain", -1, v303, @"Could not convert dictionary to xml data.", v246, v247, v253);

                    v268 = 0;
                    key = 0;
                    v274 = 0;
                    v303 = v251;
                    v38 = v255;
                    v37 = v257;
                  }

                  goto LABEL_151;
                }

                v303 = createMobileActivationError("create_baa_info", 622, @"com.apple.MobileActivation.ErrorDomain", -1, v217, @"Failed to create reference key attestation (nonce: %@).", v218, v219, v297);

                v268 = 0;
                key = 0;
                v278 = 0;
                v274 = 0;
                v276 = 0;
              }

              else
              {
                v303 = createMobileActivationError("create_baa_info", 594, @"com.apple.MobileActivation.ErrorDomain", -1, v74, @"Failed to retrieve %@.", v135, v136, @"BuildVersion");

                v268 = 0;
                key = 0;
                v278 = 0;
                v274 = 0;
                v276 = 0;
                v294 = 0;
                v265 = 0;
              }

              v282 = 0;
LABEL_209:
              v280 = 0;
              v281 = 0;
              v25 = v259;
              v34 = v260;
              goto LABEL_210;
            }

            v303 = createMobileActivationError("create_baa_info", 568, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", v118, v119, @"BoardId");

            v268 = 0;
            key = 0;
            v278 = 0;
            v280 = 0;
            v274 = 0;
            v276 = 0;
            v294 = 0;
            v36 = 0;
            v282 = 0;
            v283 = 0;
            v265 = 0;
            v281 = 0;
            v25 = v259;
            v34 = v260;
            v61 = v264;
            v32 = v262;
            a1 = v258;
LABEL_151:
            CFRelease(v25);
            if (cf)
            {
              CFRelease(cf);
            }

            v25 = v268;
LABEL_154:
            if (v263)
            {
              CFRelease(v263);
            }

            v178 = v266;
            if (!v266)
            {
              goto LABEL_199;
            }

            goto LABEL_198;
          }

          v303 = createMobileActivationError("create_baa_info", 562, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", v114, v115, @"ChipID");

          v268 = 0;
          key = 0;
          v278 = 0;
          v274 = 0;
          v276 = 0;
          v294 = 0;
        }

        else
        {
          v303 = createMobileActivationError("create_baa_info", 556, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve %@.", v111, v112, @"UniqueChipID");

          v268 = 0;
          key = 0;
          v278 = 0;
          v274 = 0;
          v276 = 0;
          v294 = 0;
          v38 = 0;
        }

        a1 = 0;
      }

      else
      {
        v303 = createMobileActivationError("create_baa_info", 548, @"com.apple.MobileActivation.ErrorDomain", -4, 0, @"UCRT is unavailable.", v108, v109, v253);

        v268 = 0;
        key = 0;
        v278 = 0;
        v274 = 0;
        v276 = 0;
        v294 = 0;
        v39 = 0;
        v38 = 0;
        a1 = 0;
        v37 = 0;
      }

      v36 = 0;
      v282 = 0;
      v283 = 0;
      v265 = 0;
      v280 = 0;
      v281 = 0;
      v25 = v259;
      v34 = v260;
      v61 = v264;
    }

    else
    {
      v303 = createMobileActivationError("create_baa_info", 541, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.", v102, v103, v253);

      v268 = 0;
      key = 0;
      v278 = 0;
      v280 = 0;
      v274 = 0;
      v276 = 0;
      v294 = 0;
      v39 = 0;
      v38 = 0;
      a1 = 0;
      v37 = 0;
      v36 = 0;
      v282 = 0;
      v283 = 0;
      v265 = 0;
      v281 = 0;
      v34 = 0;
    }

    v32 = v262;
    goto LABEL_151;
  }

  if ([v301 BOOLValue])
  {
    v43 = 0;
  }

  else
  {
    v43 = 2;
  }

  v319 = v33;
  v25 = security_create_system_key_attestation(a1, v43, v26, &v319);
  v44 = v319;

  if (!v25)
  {
    v303 = createMobileActivationError("create_baa_info", 482, @"com.apple.MobileActivation.ErrorDomain", -1, v44, @"Failed to create reference key attestation.", v45, v46, v253);

    v280 = 0;
    v281 = 0;
    v34 = 0;
    v282 = 0;
    v283 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    a1 = 0;
    v38 = 0;
    v39 = 0;
    v294 = 0;
    v32 = 0;
    v61 = 0;
    v298 = 0;
    key = 0;
    v274 = 0;
    v276 = 0;
    v278 = 0;
    goto LABEL_121;
  }

  v47 = SecKeyCopyPublicKey(a1);
  v298 = v25;
  if (!v47)
  {
    v303 = createMobileActivationError("create_baa_info", 488, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK public key.", v48, v49, v253);

    v280 = 0;
    v281 = 0;
    v34 = 0;
    v282 = 0;
    v283 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    a1 = 0;
    goto LABEL_45;
  }

  v266 = v47;
  v50 = SecKeyCopyExternalRepresentation(v47, &error);

  if (!v50)
  {
    v172 = error;
    v173 = @"Failed to encode RK public key as data.";
    v174 = 494;
LABEL_142:
    v303 = createMobileActivationError("create_baa_info", v174, @"com.apple.MobileActivation.ErrorDomain", -1, v172, v173, v51, v52, v253);
    v267 = 0;
    goto LABEL_197;
  }

  v53 = SecAccessControlCreate();
  if (!v53)
  {
    v172 = error;
    v173 = @"Failed to create access control.";
    v174 = 502;
    goto LABEL_142;
  }

  v304 = v21;
  v54 = *MEMORY[0x277CDBF08];
  v55 = v53;
  v267 = v53;
  if (SecAccessControlSetProtection())
  {
    v318 = v44;
    v58 = createReferenceKeyBlob(v55, v29, v307, &v318);
    v33 = v318;

    if (v58)
    {
      v300 = v50;
      v263 = v58;
      a1 = v58;
      v21 = v304;
      goto LABEL_55;
    }

    v303 = createMobileActivationError("create_baa_info", 513, @"com.apple.MobileActivation.ErrorDomain", -1, v33, @"Failed to create reference key.", v59, v60, v253);
    v44 = v33;
  }

  else
  {
    v303 = createMobileActivationError("create_baa_info", 507, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to set ACL protection to %@.", v56, v57, v54);
  }

LABEL_197:

  v25 = 0;
  v278 = 0;
  v280 = 0;
  v274 = 0;
  v276 = 0;
  key = 0;
  v61 = 0;
  v32 = 0;
  v294 = 0;
  v39 = 0;
  a1 = 0;
  v37 = 0;
  v36 = 0;
  v282 = 0;
  v283 = 0;
  v265 = 0;
  v34 = 0;
  v281 = 0;
  v300 = v50;
  v38 = 0;
  v178 = v266;
LABEL_198:
  CFRelease(v178);
LABEL_199:
  if (v265)
  {
    CFRelease(v265);
  }

  v35 = v267;
LABEL_121:
  if (error)
  {
    v154 = v37;
    v155 = a1;
    v156 = v38;
    v157 = v39;
    v158 = v32;
    v159 = v61;
    v160 = v34;
    v161 = v35;
    CFRelease(error);
    v35 = v161;
    v34 = v160;
    v61 = v159;
    v32 = v158;
    v39 = v157;
    v38 = v156;
    a1 = v155;
    v37 = v154;
  }

  error = 0;
  if (v35)
  {
    CFRelease(v35);
  }

  if (a3 && !v25)
  {
    *a3 = v303;
  }

  v162 = v25;

  return v162;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

uint64_t __copyRTCResetCountWithError_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(*(a1 + 32) + 8) + 40) = createMobileActivationError("copyRTCResetCountWithError_block_invoke", 45, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 32) + 8) + 40), @"IPC Error.", a7, a8, v10);

  return MEMORY[0x2821F96F8]();
}

uint64_t __copyMonotonicClock_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(*(a1 + 32) + 8) + 40) = createMobileActivationError("copyMonotonicClock_block_invoke", 92, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 32) + 8) + 40), @"IPC Error.", a7, a8, v10);

  return MEMORY[0x2821F96F8]();
}

uint64_t __isAutomaticTimeEnabledWithError_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(*(a1 + 32) + 8) + 40) = createMobileActivationError("isAutomaticTimeEnabledWithError_block_invoke", 139, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 32) + 8) + 40), @"IPC Error.", a7, a8, v10);

  return MEMORY[0x2821F96F8]();
}

id copyDateUsedForCertificateValidation(void *a1, void *a2, void *a3, void *a4, char *a5, void *a6)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v15 = v12;
  v54 = 0.0;
  v55 = 0.0;
  v53 = -1;
  if (v10 && v11 && v12)
  {
    if (v9)
    {
      v16 = v9;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = a5;
      goto LABEL_11;
    }

    v52 = 0;
    v26 = isAutomaticTimeEnabledWithError(&v52);
    v27 = v52;
    v21 = v27;
    if ((v26 & 1) == 0 && v27)
    {
      v30 = createMobileActivationError("copyDateUsedForCertificateValidation", 205, @"com.apple.MobileActivation.ErrorDomain", -1, v27, @"Failed to query automatic time state.", v28, v29, v46);

      v16 = 0;
      v20 = 0;
      v19 = 0;
      v18 = 0;
      v17 = 0;
LABEL_17:
      v21 = v30;
      v9 = 0;
      goto LABEL_8;
    }

    if (v26)
    {
      v16 = [MEMORY[0x277CBEAA8] date];
      goto LABEL_7;
    }

    v51 = v27;
    v31 = copyMonotonicClock(&v51);
    v32 = v51;

    if (v31 == 0.0)
    {
      v21 = createMobileActivationError("copyDateUsedForCertificateValidation", 222, @"com.apple.MobileActivation.ErrorDomain", -1, v32, @"Failed to query monotonic clock.", v33, v34, v46);
    }

    else
    {
      v50 = v32;
      v20 = copy_keychain_data(v10, v11, &v53, &v50);
      v35 = v50;

      if (v20 || !v53)
      {
        [v20 getBytes:&v55 length:8];
        if (v55 != 0.0)
        {
          v49 = v35;
          v19 = copy_keychain_data(v10, v15, &v53, &v49);
          v21 = v49;

          if (v19 || !v53)
          {
            [v19 getBytes:&v54 length:8];
            v42 = objc_alloc(MEMORY[0x277CBEAA8]);
            v43 = [v42 initWithTimeIntervalSinceReferenceDate:v54];
            v18 = v43;
            if (v43)
            {
              v16 = [v43 dateByAddingTimeInterval:v31 - v55];
              goto LABEL_32;
            }

            v30 = createMobileActivationError("copyDateUsedForCertificateValidation", 258, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create date from server timestamp.", v44, v45, v46);

            v16 = 0;
          }

          else
          {
            if (v53 == -25300)
            {
              createMobileActivationError("copyDateUsedForCertificateValidation", 246, @"com.apple.MobileActivation.ErrorDomain", -31, v21, @"Existing server timestamp not found (%@/%@): %d", v40, v41, v10);
            }

            else
            {
              createMobileActivationError("copyDateUsedForCertificateValidation", 248, @"com.apple.MobileActivation.ErrorDomain", -1, v21, @"Failed to query existing server timestamp (%@/%@): %d", v40, v41, v10);
            }
            v30 = ;

            v16 = 0;
            v19 = 0;
            v18 = 0;
          }

          v17 = 1;
          goto LABEL_17;
        }

        v21 = createMobileActivationError("copyDateUsedForCertificateValidation", 239, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy bytes from existing monotonic time data.", v38, v39, v46);

        v16 = 0;
LABEL_31:
        v19 = 0;
        v18 = 0;
LABEL_32:
        v17 = 1;
        goto LABEL_8;
      }

      if (v53 == -25300)
      {
        createMobileActivationError("copyDateUsedForCertificateValidation", 229, @"com.apple.MobileActivation.ErrorDomain", -31, v35, @"Existing monotonic time not found (%@/%@): %d", v36, v37, v10);
      }

      else
      {
        createMobileActivationError("copyDateUsedForCertificateValidation", 231, @"com.apple.MobileActivation.ErrorDomain", -1, v35, @"Failed to query existing motononic time (%@/%@): %d", v36, v37, v10);
      }
      v21 = ;
    }

    v16 = 0;
    v20 = 0;
    goto LABEL_31;
  }

  v21 = createMobileActivationError("copyDateUsedForCertificateValidation", 188, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).", v13, v14, v46);
  v16 = 0;
LABEL_7:
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
LABEL_8:
  v22 = a5;
  if (a6 && !v16)
  {
    v23 = v21;
    v22 = a5;
    *a6 = v21;
  }

LABEL_11:
  if (v22)
  {
    *v22 = v17;
  }

  v24 = v16;

  return v16;
}

uint64_t mobileactivationErrorHasDomainAndErrorCode(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = *MEMORY[0x277CCA7E8];
    do
    {
      v10 = [v5 domain];
      if ([v10 isEqualToString:v7])
      {
        v11 = [v5 code];

        if (v11 == a3)
        {
          v8 = 1;
          goto LABEL_10;
        }
      }

      else
      {
      }

      v12 = [v5 userInfo];
      v13 = [v12 objectForKeyedSubscript:v9];

      v5 = v13;
    }

    while (v13);
    v8 = 0;
  }

LABEL_10:

  return v8;
}

void __isRunningInDiagnosticsMode_block_invoke()
{
  v1 = MGCopyAnswer();
  v0 = isNSNumber(v1);

  if (v0)
  {
    isRunningInDiagnosticsMode_retval = [v1 BOOLValue];
  }
}

void __isSupportedDeviceIdentityClient_block_invoke()
{
  v0 = isSupportedDeviceIdentityClient_virtualDeviceSupportedList;
  isSupportedDeviceIdentityClient_virtualDeviceSupportedList = &unk_283965CF0;

  v1 = isSupportedDeviceIdentityClient_physicalDeviceSupportedList;
  isSupportedDeviceIdentityClient_physicalDeviceSupportedList = &unk_283965D08;
}

id isNSDictionary(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSDate(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t device_supports_mfi_certificates()
{
  v0 = +[DeviceTypeDeviceIdentity sharedInstance];
  v1 = [v0 device_supports_mfi_certificates];

  return v1;
}

uint64_t device_supports_eda_certificates()
{
  v0 = +[DeviceTypeDeviceIdentity sharedInstance];
  v1 = [v0 device_supports_eda_certificates];

  return v1;
}

id copy_trusted_local_policy_hash()
{
  v0 = +[DeviceTypeDeviceIdentity sharedInstance];
  v1 = [@"IODeviceTree" stringByAppendingString:@":/chosen"];
  v2 = [v0 copyDeviceTreeProperty:v1 key:@"trusted-boot-policy-measurement"];

  v3 = isNSData(v2);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v2 length];

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = malloc_type_calloc(1uLL, [v2 length], 0x25DEF4D3uLL);
  if (v6)
  {
    v7 = v6;
    [v2 getBytes:v6 length:{objc_msgSend(v2, "length")}];
    if (!*v7 && !memcmp(v7, v7 + 1, [v2 length] - 1))
    {
      v5 = 0;
    }

    else
    {
      v5 = v2;
    }

    free(v7);
  }

  else
  {
LABEL_8:
    v5 = 0;
  }

LABEL_9:

  return v5;
}

id copy_sfr_manifest()
{
  v0 = +[DeviceTypeDeviceIdentity sharedInstance];
  v1 = [@"IODeviceTree" stringByAppendingString:@":/chosen/iBoot"];
  v2 = [v0 copyDeviceTreeInt:v1 key:@"sfr-manifest-size" defaultValue:0];

  if (!v2 || ![v2 unsignedIntValue])
  {
    v6 = 0;
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v3 = +[DeviceTypeDeviceIdentity sharedInstance];
  v4 = [@"IODeviceTree" stringByAppendingString:@":/chosen/iBoot"];
  v5 = [v3 copyDeviceTreeProperty:v4 key:@"sfr-manifest-data"];

  v6 = isNSData(v5);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = [v5 length];

  if (v7)
  {
    v6 = [v5 subdataWithRange:{0, objc_msgSend(v2, "unsignedIntValue")}];

    if (v6)
    {
      v6 = v6;
      v5 = v6;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

id vm_copy_host_certificate(void *a1, void *a2)
{
  v3 = a1;
  if (is_virtual_machine())
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v8)
    {
      v34 = 0;
      v9 = libavp_copy_strong_identity_data(v3, &v34);
      v12 = v34;
      if (v9)
      {
        [v8 setObject:@"CopyVMHostCertificateRequest" forKeyedSubscript:@"Command"];
        [v8 setObject:v9 forKeyedSubscript:@"Value"];
        v33 = v12;
        v13 = libavp_send_host_message(v8, &v33);
        v14 = v33;

        v15 = isNSDictionary(v13);

        if (v15)
        {
          v15 = [v13 objectForKeyedSubscript:@"Error"];
          v18 = isNSString(v15);

          if (!v18)
          {
            v22 = [v13 objectForKeyedSubscript:@"Value"];
            v21 = isNSDictionary(v22);

            if (v21)
            {
              v23 = [v22 objectForKeyedSubscript:@"RKCertification"];
              v21 = isNSData(v23);

              if (v21)
              {
                v21 = v23;
                v23 = v21;
                goto LABEL_11;
              }

              v32 = createMobileActivationError("vm_copy_host_certificate", 71, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid response message.", v29, v30, v31);

              goto LABEL_18;
            }

            v32 = createMobileActivationError("vm_copy_host_certificate", 65, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid response message.", v27, v28, v31);

LABEL_17:
            v23 = 0;
LABEL_18:
            v14 = v32;
            goto LABEL_11;
          }

          createMobileActivationError("vm_copy_host_certificate", 59, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Error occurred during request: %@", v19, v20, v15);
        }

        else
        {
          createMobileActivationError("vm_copy_host_certificate", 53, @"com.apple.MobileActivation.ErrorDomain", -1, v14, @"Failed to receive response.", v16, v17, v31);
        }
        v32 = ;

        v21 = 0;
        v22 = 0;
        goto LABEL_17;
      }

      v14 = createMobileActivationError("vm_copy_host_certificate", 44, @"com.apple.MobileActivation.ErrorDomain", -1, v12, @"Failed to copy AVP identity data.", v10, v11, v31);

      v21 = 0;
    }

    else
    {
      v14 = createMobileActivationError("vm_copy_host_certificate", 38, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create dictionary.", v6, v7, v31);
      v21 = 0;
      v9 = 0;
    }
  }

  else
  {
    v14 = createMobileActivationError("vm_copy_host_certificate", 32, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"Device is not a VM (not supported).", v4, v5, v31);
    v21 = 0;
    v9 = 0;
    v8 = 0;
  }

  v13 = 0;
  v22 = 0;
  v23 = 0;
  v15 = 0;
LABEL_11:
  if (a2 && !v21)
  {
    v24 = v14;
    *a2 = v14;
  }

  v25 = v21;

  return v21;
}

id vm_create_host_key_signature(void *a1, void *a2, void *a3, void *a4)
{
  v6 = a1;
  v7 = a2;
  v46 = v7;
  v47 = v6;
  if (!is_virtual_machine())
  {
    v22 = createMobileActivationError("vm_create_host_key_signature", 101, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"Device is not a VM (not supported).", v8, v9, v43);
    v30 = 0;
    v17 = 0;
    v13 = 0;
LABEL_13:
    v16 = 0;
LABEL_14:
    v21 = 0;
    v31 = 0;
    v23 = 0;
    v32 = 0;
    v26 = 0;
    goto LABEL_15;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = v10;
  if (!v10)
  {
    v22 = createMobileActivationError("vm_create_host_key_signature", 107, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create dictionary.", v11, v12, v43);
    v30 = 0;
    v17 = 0;
    goto LABEL_13;
  }

  if (v7)
  {
    [v10 addEntriesFromDictionary:v7];
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v16)
  {
    v22 = createMobileActivationError("vm_create_host_key_signature", 117, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create dictionary.", v14, v15, v43);
    v30 = 0;
    v17 = 0;
    goto LABEL_14;
  }

  v50 = 0;
  v17 = libavp_copy_strong_identity_data(v7, &v50);
  v20 = v50;
  if (!v17)
  {
    v22 = createMobileActivationError("vm_create_host_key_signature", 123, @"com.apple.MobileActivation.ErrorDomain", -1, v20, @"Failed to copy AVP identity data.", v18, v19, v43);

    v30 = 0;
    goto LABEL_14;
  }

  [v13 setObject:v17 forKeyedSubscript:@"BIKData"];
  [v16 setObject:@"CreateVMHostKeyAttestationRequest" forKeyedSubscript:@"Command"];
  [v16 setObject:v6 forKeyedSubscript:@"Value"];
  [v16 setObject:v13 forKeyedSubscript:@"Options"];
  v49 = v20;
  v21 = libavp_send_host_message(v16, &v49);
  v22 = v49;

  v23 = isNSDictionary(v21);

  if (!v23)
  {
    v44 = createMobileActivationError("vm_create_host_key_signature", 136, @"com.apple.MobileActivation.ErrorDomain", -1, v22, @"Failed to receive response.", v24, v25, v43);

    v30 = 0;
    v31 = 0;
    v32 = 0;
    v26 = 0;
    goto LABEL_22;
  }

  v26 = [v21 objectForKeyedSubscript:@"Error"];
  v27 = isNSString(v26);

  if (v27)
  {
    v44 = createMobileActivationError("vm_create_host_key_signature", 142, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Error occurred during request: %@", v28, v29, v26);

    v30 = 0;
    v31 = 0;
    v23 = 0;
LABEL_10:
    v32 = 0;
LABEL_22:
    v22 = v44;
    goto LABEL_15;
  }

  v45 = a3;
  v31 = [v21 objectForKeyedSubscript:@"Value"];
  v23 = isNSDictionary(v31);

  if (!v23)
  {
    v44 = createMobileActivationError("vm_create_host_key_signature", 148, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid response message.", v36, v37, v43);

    v30 = 0;
    goto LABEL_10;
  }

  v23 = [v31 objectForKeyedSubscript:@"RKCertification"];
  v32 = isNSData(v23);

  if (!v32)
  {
    v44 = createMobileActivationError("vm_create_host_key_signature", 154, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid response message.", v38, v39, v43);

    v30 = 0;
    goto LABEL_22;
  }

  v32 = [v31 objectForKeyedSubscript:@"RKSignature"];
  v30 = isNSData(v32);

  if (!v30)
  {
    v44 = createMobileActivationError("vm_create_host_key_signature", 160, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid response message.", v40, v41, v43);

    goto LABEL_22;
  }

  if (v45)
  {
    v42 = v23;
    *v45 = v23;
  }

  v30 = v32;
  v32 = v30;
LABEL_15:
  if (a4 && !v30)
  {
    v33 = v22;
    *a4 = v22;
  }

  v34 = v30;

  return v30;
}

uint64_t load_certificate(CFTypeRef *a1, void *a2, void *a3, int *a4, void *a5)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v13 = v10;
  result = 0;
  if (!v10)
  {
    v23 = createMobileActivationError("load_certificate", 231, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid inputs.", v11, v12, v28);
    v24 = 0;
    v18 = 0;
    v22 = -1;
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = *MEMORY[0x277CDC228];
  v30[0] = *MEMORY[0x277CDC080];
  v30[1] = v14;
  v15 = *MEMORY[0x277CDC230];
  v31[0] = v10;
  v31[1] = v15;
  v16 = *MEMORY[0x277CDC5C8];
  v30[2] = *MEMORY[0x277CDC568];
  v30[3] = v16;
  v31[2] = MEMORY[0x277CBEC38];
  v31[3] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
  v18 = [v17 mutableCopy];

  if (v9)
  {
    [v18 setObject:v9 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
  }

  v19 = SecItemCopyMatching(v18, &result);
  if (v19)
  {
    v22 = v19;
    v23 = createMobileActivationError("load_certificate", 253, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate (%@): %d", v20, v21, v13);
    v24 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }

LABEL_8:
    *a4 = v22;
    goto LABEL_9;
  }

  v22 = 0;
  v23 = 0;
  if (a1)
  {
    *a1 = CFRetain(result);
  }

  v24 = 1;
  if (a4)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (a5)
  {
    v25 = v24;
  }

  else
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    v26 = v23;
    *a5 = v23;
  }

  if (result)
  {
    CFRelease(result);
  }

  result = 0;

  return v24;
}

uint64_t delete_certificate(void *a1, void *a2, void *a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v9 = v6;
  if (!v6)
  {
    v18 = createMobileActivationError("delete_certificate", 287, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.", v7, v8, v21);
    v14 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  v10 = *MEMORY[0x277CDC228];
  v22[0] = *MEMORY[0x277CDC080];
  v22[1] = v10;
  v11 = *MEMORY[0x277CDC230];
  v23[0] = v6;
  v23[1] = v11;
  v12 = *MEMORY[0x277CDC5C8];
  v22[2] = *MEMORY[0x277CDC568];
  v22[3] = v12;
  v23[2] = MEMORY[0x277CBEC38];
  v23[3] = MEMORY[0x277CBEC38];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
  v14 = [v13 mutableCopy];

  if (v5)
  {
    [v14 setObject:v5 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
  }

  v17 = SecItemDelete(v14);
  v18 = 0;
  v19 = 1;
  if (v17 != -25300 && v17)
  {
    v18 = createMobileActivationError("delete_certificate", 309, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to remove existing certificate (%@): %d", v15, v16, v9);
    if (!a3)
    {
LABEL_7:
      v19 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v18 = v18;
    v19 = 0;
    *a3 = v18;
  }

LABEL_10:

  return v19;
}

id getLAContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLAContextClass_softClass;
  v7 = getLAContextClass_softClass;
  if (!getLAContextClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getLAContextClass_block_invoke;
    v3[3] = &unk_278585F58;
    v3[4] = &v4;
    __getLAContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_226209DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t delete_keychain_item(void *a1, void *a2, void *a3)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v9 = v6;
  if (!v6)
  {
    v19 = createMobileActivationError("delete_keychain_item", 617, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).", v7, v8, v21);
    v13 = 0;
    if (!a3)
    {
LABEL_13:
      v18 = 0;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v10 = *MEMORY[0x277CDC228];
  v22[0] = *MEMORY[0x277CDC080];
  v22[1] = v10;
  v11 = *MEMORY[0x277CDC250];
  v23[0] = v6;
  v23[1] = v11;
  v22[2] = *MEMORY[0x277CDC5C8];
  v23[2] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v13 = [v12 mutableCopy];

  if (v5)
  {
    [v13 setObject:v5 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
  }

  v14 = SecItemDelete(v13);
  if (v14 != -25300 && v14 != 0)
  {
    v19 = createMobileActivationError("delete_keychain_item", 638, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to remove existing keychain item %@: %d", v15, v16, v9);
    if (!a3)
    {
      goto LABEL_13;
    }

LABEL_11:
    v19 = v19;
    v18 = 0;
    *a3 = v19;
    goto LABEL_14;
  }

  v19 = 0;
  v18 = 1;
LABEL_14:

  return v18;
}

uint64_t store_keychain_item(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v41[5] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v14 = v11;
  if (a1 && v10)
  {
    if (v11)
    {
      v15 = [v11 objectForKeyedSubscript:@"LocalAuthenticationContext"];
      if (v15 && (v16 = v15, [v14 objectForKeyedSubscript:@"LocalAuthenticationContext"], v17 = objc_claimAutoreleasedReturnValue(), getLAContextClass(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v17, v16, (isKindOfClass & 1) != 0))
      {
        v19 = [v14 objectForKeyedSubscript:@"LocalAuthenticationContext"];
      }

      else
      {
        v19 = 0;
      }

      v25 = [v14 objectForKeyedSubscript:@"UseAuthenticationUI"];
      v26 = isNSString(v25);

      if (v26)
      {
        v22 = [v14 objectForKeyedSubscript:@"UseAuthenticationUI"];
        goto LABEL_14;
      }
    }

    else
    {
      v19 = 0;
    }

    v22 = 0;
LABEL_14:
    v39 = 0;
    v27 = delete_keychain_item(v9, v10, &v39);
    v20 = v39;
    if (v27)
    {
      v30 = *MEMORY[0x277CDC228];
      v40[0] = *MEMORY[0x277CDC080];
      v40[1] = v30;
      v31 = *MEMORY[0x277CDC250];
      v41[0] = v10;
      v41[1] = v31;
      v32 = *MEMORY[0x277CDC5C8];
      v40[2] = *MEMORY[0x277CDC5F8];
      v40[3] = v32;
      v41[2] = a1;
      v41[3] = MEMORY[0x277CBEC38];
      v40[4] = *MEMORY[0x277CDBED8];
      v41[4] = *MEMORY[0x277CDBF00];
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:5];
      v21 = [v33 mutableCopy];

      if (v9)
      {
        [v21 setObject:v9 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
      }

      if (v19)
      {
        [v21 setObject:v19 forKeyedSubscript:*MEMORY[0x277CDC5A0]];
      }

      if (v22)
      {
        [v21 setObject:v22 forKeyedSubscript:*MEMORY[0x277CDC5A8]];
      }

      if (!SecItemAdd(v21, 0))
      {
        v24 = 1;
        goto LABEL_27;
      }

      v36 = createMobileActivationError("store_keychain_item", 717, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to add %@ to keychain: %d", v34, v35, v10);
    }

    else
    {
      v36 = createMobileActivationError("store_keychain_item", 684, @"com.apple.MobileActivation.ErrorDomain", -1, v20, @"Failed to delete existing keychain item.", v28, v29, v38);

      v21 = 0;
    }

    v20 = v36;
    if (!a5)
    {
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  v20 = createMobileActivationError("store_keychain_item", 667, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).", v12, v13, v38);
  v21 = 0;
  v19 = 0;
  v22 = 0;
  if (!a5)
  {
LABEL_25:
    v24 = 0;
    goto LABEL_27;
  }

LABEL_8:
  v23 = v20;
  v24 = 0;
  *a5 = v20;
LABEL_27:

  return v24;
}

uint64_t delete_keychain_data(void *a1, void *a2, void *a3)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v9 = v6;
  if (!v6)
  {
    v19 = createMobileActivationError("delete_keychain_data", 895, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).", v7, v8, v21);
    v13 = 0;
    if (!a3)
    {
LABEL_13:
      v18 = 0;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v10 = *MEMORY[0x277CDC228];
  v22[0] = *MEMORY[0x277CDC080];
  v22[1] = v10;
  v11 = *MEMORY[0x277CDC238];
  v23[0] = v6;
  v23[1] = v11;
  v22[2] = *MEMORY[0x277CDC5C8];
  v23[2] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v13 = [v12 mutableCopy];

  if (v5)
  {
    [v13 setObject:v5 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
  }

  v14 = SecItemDelete(v13);
  if (v14 != -25300 && v14 != 0)
  {
    v19 = createMobileActivationError("delete_keychain_data", 916, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to remove existing keychain item %@: %d", v15, v16, v9);
    if (!a3)
    {
      goto LABEL_13;
    }

LABEL_11:
    v19 = v19;
    v18 = 0;
    *a3 = v19;
    goto LABEL_14;
  }

  v19 = 0;
  v18 = 1;
LABEL_14:

  return v18;
}

uint64_t store_keychain_data(void *a1, void *a2, void *a3, void *a4)
{
  v32[7] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v12 = v9;
  if (v7 && v9)
  {
    v30 = 0;
    v13 = delete_keychain_data(v8, v9, &v30);
    v16 = v30;
    if (v13)
    {
      v17 = *MEMORY[0x277CDC228];
      v31[0] = *MEMORY[0x277CDC080];
      v31[1] = v17;
      v18 = *MEMORY[0x277CDC238];
      v32[0] = v12;
      v32[1] = v18;
      v19 = *MEMORY[0x277CDC5C8];
      v31[2] = *MEMORY[0x277CDC5E8];
      v31[3] = v19;
      v32[2] = v7;
      v32[3] = MEMORY[0x277CBEC38];
      v20 = *MEMORY[0x277CDBF20];
      v31[4] = *MEMORY[0x277CDC120];
      v31[5] = v20;
      v32[4] = @"com.apple.mobileactivationd";
      v32[5] = v12;
      v31[6] = *MEMORY[0x277CDBED8];
      v32[6] = *MEMORY[0x277CDBF00];
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:7];
      v22 = [v21 mutableCopy];

      if (v8)
      {
        [v22 setObject:v8 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
      }

      if (!SecItemAdd(v22, 0))
      {
        v27 = 1;
        goto LABEL_14;
      }

      v25 = createMobileActivationError("store_keychain_data", 974, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to add %@ to keychain: %d", v23, v24, v12);
    }

    else
    {
      v25 = createMobileActivationError("store_keychain_data", 946, @"com.apple.MobileActivation.ErrorDomain", -1, v16, @"Failed to delete existing keychain item.", v14, v15, v29);

      v22 = 0;
    }

    v16 = v25;
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = createMobileActivationError("store_keychain_data", 941, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).", v10, v11, v29);
    v22 = 0;
    if (!a4)
    {
LABEL_12:
      v27 = 0;
      goto LABEL_14;
    }
  }

  v26 = v16;
  v27 = 0;
  *a4 = v16;
LABEL_14:

  return v27;
}

Class __getLAContextClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!LocalAuthenticationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __LocalAuthenticationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278585F78;
    v5 = 0;
    LocalAuthenticationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!LocalAuthenticationLibraryCore_frameworkLibrary)
  {
    __getLAContextClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("LAContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLAContextClass_block_invoke_cold_1();
  }

  getLAContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __LocalAuthenticationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  LocalAuthenticationLibraryCore_frameworkLibrary = result;
  return result;
}

id lockcrypto_query_certificate_properties(uint64_t a1, void *a2, void *a3)
{
  v218[14] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = v5;
  v203 = 0;
  v204 = 0;
  v201[1] = 0;
  v202 = 0;
  v200 = 0;
  v201[0] = 0;
  v199 = 0uLL;
  v197 = 0uLL;
  v198 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  if (!a1 || !v5)
  {
    v15 = createMobileActivationError("lockcrypto_query_certificate_properties", 229, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).", v6, v7, v180);
    v11 = 0;
    goto LABEL_15;
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v11)
  {
    v15 = createMobileActivationError("lockcrypto_query_certificate_properties", 235, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.", v9, v10, v180);
LABEL_15:
    v14 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    if (v15)
    {
      goto LABEL_241;
    }

    goto LABEL_185;
  }

  if (MEMORY[0x28220DA38])
  {
    v14 = SecCertificateCopyExtensionValue();
    v15 = 0;
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_183:
    v180 = v8;
    v17 = @"Failed to query DERSequence data for OID %@.";
    v18 = 245;
    v19 = -26;
    v20 = v15;
LABEL_184:
    v144 = createMobileActivationError("lockcrypto_query_certificate_properties", v18, @"com.apple.MobileActivation.ErrorDomain", v19, v20, v17, v12, v13, v180);

    v21 = 0;
    v22 = 0;
    v23 = 0;
    v15 = v144;
    if (v144)
    {
      goto LABEL_241;
    }

    goto LABEL_185;
  }

  v24 = v8;
  if (lockcrypto_query_oid_der_sequence_data_onceToken != -1)
  {
    lockcrypto_query_certificate_properties_cold_1();
  }

  v25 = SecCertificateCopyProperties();
  v28 = v25;
  v186 = a3;
  v188 = v8;
  if (v25)
  {
    v181 = v25;
    v211 = 0u;
    v212 = 0u;
    v209 = 0u;
    v210 = 0u;
    v29 = v25;
    v30 = [v29 countByEnumeratingWithState:&v209 objects:&v216 count:16];
    if (!v30)
    {
      v32 = 0;
      goto LABEL_180;
    }

    v31 = v30;
    v32 = 0;
    v33 = *v210;
    v183 = v29;
    v184 = v24;
    v182 = *v210;
    while (1)
    {
      v34 = 0;
      do
      {
        if (*v210 != v33)
        {
          objc_enumerationMutation(v29);
        }

        v35 = *(*(&v209 + 1) + 8 * v34);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = [v35 objectForKeyedSubscript:@"label"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v36 isEqualToString:v24])
          {
            v37 = [v35 objectForKeyedSubscript:@"value"];

            if (v37)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v185 = v31;
                v207 = 0u;
                v208 = 0u;
                v205 = 0u;
                v206 = 0u;
                v32 = v37;
                v38 = [v32 countByEnumeratingWithState:&v205 objects:&v213 count:16];
                if (!v38)
                {
                  goto LABEL_47;
                }

                v39 = v38;
                v40 = *v206;
                while (1)
                {
                  for (i = 0; i != v39; ++i)
                  {
                    if (*v206 != v40)
                    {
                      objc_enumerationMutation(v32);
                    }

                    v42 = *(*(&v205 + 1) + 8 * i);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v43 = 0;
LABEL_44:
                      v14 = 0;
                      goto LABEL_45;
                    }

                    v43 = [v42 objectForKeyedSubscript:@"label"];
                    if (!v43)
                    {
                      goto LABEL_44;
                    }

                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v43 isEqualToString:@"Unparsed Data"])
                    {
                      goto LABEL_44;
                    }

                    v14 = [v42 objectForKeyedSubscript:@"value"];
                    if (v14)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) != 0 && ![v14 isEqualToData:lockcrypto_query_oid_der_sequence_data_ASN1DERNull])
                      {

                        v142 = 0;
                        v28 = v181;
                        v143 = v183;
                        v24 = v184;
                        goto LABEL_182;
                      }
                    }

LABEL_45:
                  }

                  v39 = [v32 countByEnumeratingWithState:&v205 objects:&v213 count:16];
                  if (!v39)
                  {
LABEL_47:

                    v29 = v183;
                    v24 = v184;
                    v31 = v185;
                    v33 = v182;
                    goto LABEL_49;
                  }
                }
              }

              v32 = v37;
            }

            else
            {
              v32 = 0;
            }
          }
        }

        else
        {
          v36 = 0;
        }

LABEL_49:

        ++v34;
      }

      while (v34 != v31);
      v44 = [v29 countByEnumeratingWithState:&v209 objects:&v216 count:16];
      v31 = v44;
      if (!v44)
      {
LABEL_180:

        v141 = 0;
        v28 = v181;
        goto LABEL_181;
      }
    }
  }

  v141 = createMobileActivationError("lockcrypto_query_oid_der_sequence_data", 137, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate properties.", v26, v27, v180);
  v32 = 0;
LABEL_181:
  v143 = v141;
  v14 = 0;
  v142 = v143;
LABEL_182:

  v15 = v142;
  a3 = v186;
  v8 = v188;
  if (!v14)
  {
    goto LABEL_183;
  }

LABEL_6:
  v203 = [v14 bytes];
  v204 = [v14 length];
  v16 = DERDecodeSeqInit(&v203, &v202, v201);
  if (v16 == 2)
  {
    v16 = DERDecodeItem(&v203, &v199);
    if (!v16 && v199 == 4)
    {
      v16 = DERDecodeSeqInit(&v199 + 8, &v202, v201);
    }
  }

  if (v16)
  {
    v180 = v16;
    v17 = @"Failed to intialize DER sequence: %d";
    v18 = 267;
LABEL_12:
    v19 = -1;
    v20 = 0;
    goto LABEL_184;
  }

  if (v202 == 0x2000000000000010)
  {
    v145 = DERDecodeSeqNext(v201, &v199);
    v21 = 0;
    v187 = a3;
    v189 = v8;
    if (v145 || !*(&v199 + 1))
    {
      v22 = 0;
      v23 = 0;
LABEL_228:
      if (v145 == 1)
      {
        goto LABEL_239;
      }

      createMobileActivationError("lockcrypto_query_certificate_properties", 299, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode DER sequence: %d", v146, v147, v145);
      goto LABEL_237;
    }

    v23 = 0;
    v22 = 0;
    v21 = 0;
    while (1)
    {
      v148 = v11;
      v149 = v21;
      v150 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v199 & 0x5FFFFFFFFFFFFFFFLL];
      v21 = [v150 stringValue];

      if (!DERDecodeItem(&v199 + 8, &v197))
      {
        v199 = v197;
        v200 = v198;
      }

      v151 = v199 & 0x5FFFFFFFFFFFFFFFLL;
      v11 = v148;
      if ((v199 & 0x5FFFFFFFFFFFFFFFLL) == 1)
      {
        v160 = DERParseBoolean(&v199 + 1, &v194);
        if (v160)
        {
          createMobileActivationError("lockcrypto_query_certificate_properties", 353, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode DER encoded ASN1_BOOLEAN: %d", v161, v162, v160);
          v163 = LABEL_206:;

LABEL_207:
          v15 = v163;
          goto LABEL_217;
        }

        v168 = [MEMORY[0x277CCABB0] numberWithBool:v194];
      }

      else
      {
        if (v151 != 2)
        {
          if (v151 != 4)
          {
            goto LABEL_217;
          }

          if (v200)
          {
            v152 = 0;
            v153 = 0;
            while ((*(*(&v199 + 1) + v152) & 0x80000000) == 0)
            {
              v152 = ++v153;
              if (v200 <= v153)
              {
                v154 = objc_alloc(MEMORY[0x277CCACA8]);
                v23 = [v154 initWithBytes:*(&v199 + 1) length:v200 encoding:1];
                if (v23)
                {
                  v22 = 0;
                  goto LABEL_210;
                }

                v163 = createMobileActivationError("lockcrypto_query_certificate_properties", 326, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode DER encoded ANS1_OCTET_STRING.", v155, v156, v180);

                v22 = 0;
                goto LABEL_207;
              }
            }
          }

          v164 = objc_alloc(MEMORY[0x277CBEA90]);
          v22 = [v164 initWithBytes:*(&v199 + 1) length:v200];
          if (v22)
          {
            v23 = 0;
LABEL_210:
            if (v23)
            {
              v167 = v23;
            }

            else
            {
              v167 = v22;
            }

            [v148 setObject:v167 forKeyedSubscript:v21];
            goto LABEL_217;
          }

          v163 = createMobileActivationError("lockcrypto_query_certificate_properties", 332, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode DER encoded ANS1_OCTET_STRING.", v165, v166, v180);

          v23 = 0;
          goto LABEL_207;
        }

        v157 = DERParseInteger64(&v199 + 8, &v195);
        if (v157)
        {
          createMobileActivationError("lockcrypto_query_certificate_properties", 343, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode DER encoded ASN1_INTEGER: %d", v158, v159, v157);
          goto LABEL_206;
        }

        v168 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v195];
      }

      v169 = v168;
      [v148 setObject:v168 forKeyedSubscript:v21];

LABEL_217:
      v145 = DERDecodeSeqNext(v201, &v199);
      if (v145 || !*(&v199 + 1))
      {
        goto LABEL_228;
      }
    }
  }

  if (v202 != 0x2000000000000011)
  {
    v17 = @"Expected ASN1_CONSTR_SET or ASN1_CONSTR_SEQUENCE tag.";
    v18 = 717;
    goto LABEL_12;
  }

  v187 = a3;
  v209 = 0uLL;
  v205 = 0uLL;
  v216 = 0;
  v217 = 0;
  v218[0] = 0;
  v45 = DERDecodeSeqNext(v201, &v199);
  v48 = 0;
  v189 = v8;
  if (!v45)
  {
    v49 = *(&v199 + 1);
    if (*(&v199 + 1))
    {
      v23 = 0;
      v22 = 0;
      v21 = 0;
      v50 = @"com.apple.MobileActivation.ErrorDomain";
      while (1)
      {
        *&v209 = v49;
        *(&v209 + 1) = v200;
        v51 = DERDecodeSeqInit(&v209, &v202, &v205);
        if (v51)
        {
          createMobileActivationError("lockcrypto_query_certificate_properties", 479, v50, -1, 0, @"Failed to intialize DER sequence: %d", v52, v53, v51);
          goto LABEL_237;
        }

        if (v202 != 0x2000000000000010)
        {
          v171 = @"Expected ASN1_CONSTR_SEQUENCE tag.";
          v172 = 484;
          goto LABEL_236;
        }

        v54 = DERDecodeSeqNext(&v205, &v216);
        if (v54 || !v217)
        {
          createMobileActivationError("lockcrypto_query_certificate_properties", 492, v50, -1, 0, @"Failed to decode DER sequence: %d", v52, v53, v54);
          goto LABEL_237;
        }

        if (v216 != 22)
        {
          v171 = @"Invalid DER tag.";
          v172 = 497;
          goto LABEL_236;
        }

        v55 = DERParseInteger(&v217, &v196);
        if (v55)
        {
          break;
        }

        if (v218[0] != 4)
        {
          v180 = v218[0];
          v171 = @"Invalid property key length: %ld";
          v172 = 508;
LABEL_236:
          createMobileActivationError("lockcrypto_query_certificate_properties", v172, v50, -1, 0, v171, v52, v53, v180);
          v173 = LABEL_237:;

LABEL_238:
          v15 = v173;
LABEL_239:
          v8 = v189;
          goto LABEL_240;
        }

        v56 = objc_alloc(MEMORY[0x277CCACA8]);
        v48 = [v56 initWithBytes:v217 length:v218[0] encoding:1];

        if (!v48)
        {
          v173 = createMobileActivationError("lockcrypto_query_certificate_properties", 514, v50, -1, 0, @"Failed to create string.", v57, v58, v180);

          v21 = 0;
          goto LABEL_238;
        }

        v59 = DERDecodeSeqNext(&v205, &v216);
        if (v59 || !v217)
        {
          v180 = v59;
          v178 = @"Failed to decode DER sequence: %d";
          v179 = 520;
LABEL_250:
          createMobileActivationError("lockcrypto_query_certificate_properties", v179, v50, -1, 0, v178, v60, v61, v180);
          goto LABEL_251;
        }

        if (v216 <= 1)
        {
          switch(v216)
          {
            case 0xA000000000000000:
              v73 = v11;
              v74 = &unk_283965E40;
              break;
            case 0xA000000000000001:
              v73 = v11;
              v74 = &unk_283965E58;
              break;
            case 1:
              v62 = DERParseBoolean(&v217, &v194);
              if (!v62)
              {
                v65 = [MEMORY[0x277CCABB0] numberWithBool:v194];
LABEL_92:
                v78 = v65;
                [v11 setObject:v65 forKeyedSubscript:v48];

                goto LABEL_156;
              }

              createMobileActivationError("lockcrypto_query_certificate_properties", 559, v50, -1, 0, @"Failed to decode DER encoded ASN1_BOOLEAN: %d", v63, v64, v62);
              goto LABEL_251;
            default:
              goto LABEL_156;
          }

LABEL_149:
          [v73 setObject:v74 forKeyedSubscript:v48];
          goto LABEL_156;
        }

        if (v216 == 2)
        {
          v75 = DERParseInteger64(&v217, &v195);
          if (!v75)
          {
            v65 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v195];
            goto LABEL_92;
          }

          createMobileActivationError("lockcrypto_query_certificate_properties", 551, v50, -1, 0, @"Failed to decode DER encoded ASN1_INTEGER: %d", v76, v77, v75);
          goto LABEL_251;
        }

        if (v216 != 0x2000000000000011)
        {
          if (v216 != 4)
          {
            goto LABEL_156;
          }

          if (v218[0])
          {
            v66 = 0;
            v67 = 0;
            while ((v217[v66] & 0x80000000) == 0)
            {
              v66 = ++v67;
              if (v218[0] <= v67)
              {
                v68 = DERDecodeItem(&v217, &v197);
                v69 = objc_alloc(MEMORY[0x277CCACA8]);
                v70 = &v197 + 1;
                if (v68)
                {
                  v70 = &v217;
                }

                v71 = *v70;
                v72 = &v198;
                if (v68)
                {
                  v72 = v218;
                }

                v23 = [v69 initWithBytes:v71 length:*v72 encoding:1];
                if (!v23)
                {
                  v178 = @"Failed to decode DER encoded ANS1_OCTET_STRING.";
                  v179 = 536;
                  goto LABEL_250;
                }

                goto LABEL_145;
              }
            }
          }

          v130 = objc_alloc(MEMORY[0x277CBEA90]);
          v131 = [v130 initWithBytes:v217 length:v218[0]];

          if (!v131)
          {
            v177 = createMobileActivationError("lockcrypto_query_certificate_properties", 542, v50, -1, 0, @"Failed to decode DER encoded ANS1_OCTET_STRING.", v132, v133, v180);

            v22 = 0;
            v23 = 0;
            goto LABEL_252;
          }

          v23 = 0;
          v22 = v131;
LABEL_145:
          if (v23)
          {
            v74 = v23;
          }

          else
          {
            v74 = v22;
          }

          v73 = v11;
          goto LABEL_149;
        }

        v79 = DERDecodeSeqContentInit(&v217, &v205);
        if (v79)
        {
          createMobileActivationError("lockcrypto_query_certificate_properties", 571, v50, -1, 0, @"Failed to intialize DER sequence: %d", v80, v81, v79);
          v177 = LABEL_251:;

LABEL_252:
          v15 = v177;
LABEL_254:
          v21 = v48;
          goto LABEL_239;
        }

        v82 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v11 setObject:v82 forKeyedSubscript:v48];

        v192 = 0;
        v193 = 0;
        v190 = 0;
        v191 = 0;
        v213 = 0;
        v214 = 0;
        v215 = 0;
        v83 = DERDecodeSeqNext(&v205, &v216);
        if (!v83)
        {
          v86 = v217;
          if (v217)
          {
            while (1)
            {
              v192 = v86;
              v193 = v218[0];
              v87 = DERDecodeSeqInit(&v192, &v202, &v190);
              if (v87)
              {
                createMobileActivationError("lockcrypto_query_certificate_properties", 601, v50, -1, 0, @"Failed to intialize DER sequence: %d", v84, v85, v87);
                goto LABEL_154;
              }

              if (v202 != 0x2000000000000010)
              {
                v134 = 606;
                v135 = v50;
                v136 = @"Expected ASN1_CONSTR_SEQUENCE tag.";
                goto LABEL_153;
              }

              v88 = DERDecodeSeqNext(&v190, &v213);
              if (v88 || !v214)
              {
                v180 = v88;
                v134 = 614;
                goto LABEL_152;
              }

              if (v213 != 22)
              {
                v134 = 619;
                v135 = v50;
                v136 = @"Invalid DER tag.";
                goto LABEL_153;
              }

              v89 = DERParseInteger(&v214, &v196);
              if (v89)
              {
                createMobileActivationError("lockcrypto_query_certificate_properties", 625, v50, -1, 0, @"Failed to parse DER integer: %d", v90, v91, v89);
                goto LABEL_154;
              }

              if (v215 != 4)
              {
                createMobileActivationError("lockcrypto_query_certificate_properties", 630, v50, -1, 0, @"Invalid property key length: %ld", v90, v91, v218[0]);
                goto LABEL_154;
              }

              v92 = v11;
              v93 = objc_alloc(MEMORY[0x277CCACA8]);
              v94 = [v93 initWithBytes:v214 length:v215 encoding:1];
              if (!v94)
              {
                v137 = createMobileActivationError("lockcrypto_query_certificate_properties", 636, v50, -1, 0, @"Failed to create string.", v95, v96, v180);
                goto LABEL_171;
              }

              v97 = v94;
              v98 = DERDecodeSeqNext(&v190, &v213);
              if (v98 || !v214)
              {
                createMobileActivationError("lockcrypto_query_certificate_properties", 644, v50, -1, 0, @"Failed to decode DER sequence: %d", v99, v100, v98);
                goto LABEL_170;
              }

              if (v213 > 0)
              {
                break;
              }

              if (v213 == 0xA000000000000000)
              {
                v111 = [v92 objectForKeyedSubscript:v48];
                v112 = v111;
                v113 = &unk_283965E40;
              }

              else
              {
                if (v213 != 0xA000000000000001)
                {
                  goto LABEL_139;
                }

                v111 = [v92 objectForKeyedSubscript:v48];
                v112 = v111;
                v113 = &unk_283965E58;
              }

              [v111 setObject:v113 forKeyedSubscript:v97];
LABEL_138:

LABEL_139:
              v127 = DERDecodeSeqNext(&v190, &v213);
              if (v127 != 1)
              {
                createMobileActivationError("lockcrypto_query_certificate_properties", 696, v50, -1, 0, @"DER sequence is invalid: %d", v128, v129, v127);
                v137 = LABEL_170:;

                v15 = v97;
LABEL_171:
                v11 = v92;
                goto LABEL_155;
              }

              v192 = 0;
              v193 = 0;
              v190 = 0;
              v191 = 0;
              v213 = 0;
              v214 = 0;
              v215 = 0;
              v83 = DERDecodeSeqNext(&v205, &v216);
              if (v83)
              {
                v11 = v92;
                goto LABEL_150;
              }

              v86 = v217;
              v11 = v92;
              if (!v217)
              {
                goto LABEL_150;
              }
            }

            switch(v213)
            {
              case 1:
                v103 = v50;
                v114 = DERParseBoolean(&v214, &v194);
                if (v114)
                {
                  createMobileActivationError("lockcrypto_query_certificate_properties", 683, v50, -1, 0, @"Failed to decode DER encoded ASN1_BOOLEAN: %d", v115, v116, v114);
                  goto LABEL_176;
                }

                v117 = [MEMORY[0x277CCABB0] numberWithBool:v194];
                break;
              case 2:
                v103 = v50;
                v118 = DERParseInteger64(&v214, &v195);
                if (v118)
                {
                  createMobileActivationError("lockcrypto_query_certificate_properties", 675, v50, -1, 0, @"Failed to decode DER encoded ASN1_INTEGER: %d", v119, v120, v118);
                  v137 = LABEL_176:;

LABEL_177:
                  v15 = v97;
                  v11 = v92;
LABEL_155:

                  v15 = v137;
                  goto LABEL_156;
                }

                v117 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v195];
                break;
              case 4:

                if (v215)
                {
                  v101 = 0;
                  v102 = 0;
                  while ((v214[v101] & 0x80000000) == 0)
                  {
                    v101 = ++v102;
                    if (v215 <= v102)
                    {
                      v103 = v50;
                      v104 = DERDecodeItem(&v214, &v197);
                      v105 = objc_alloc(MEMORY[0x277CCACA8]);
                      v106 = &v197 + 1;
                      if (v104)
                      {
                        v106 = &v214;
                      }

                      v107 = *v106;
                      v108 = &v198;
                      if (v104)
                      {
                        v108 = &v215;
                      }

                      v23 = [v105 initWithBytes:v107 length:*v108 encoding:1];
                      if (!v23)
                      {
                        createMobileActivationError("lockcrypto_query_certificate_properties", 660, v50, -1, 0, @"Failed to decode DER encoded ANS1_OCTET_STRING.", v109, v110, v180);
                        goto LABEL_176;
                      }

                      goto LABEL_133;
                    }
                  }
                }

                v103 = v50;
                v122 = objc_alloc(MEMORY[0x277CBEA90]);
                v123 = [v122 initWithBytes:v214 length:v215];

                if (!v123)
                {
                  v137 = createMobileActivationError("lockcrypto_query_certificate_properties", 666, v50, -1, 0, @"Failed to decode DER encoded ANS1_OCTET_STRING.", v124, v125, v180);

                  v22 = 0;
                  v23 = 0;
                  goto LABEL_177;
                }

                v23 = 0;
                v22 = v123;
LABEL_133:
                if (v23)
                {
                  v126 = v23;
                }

                else
                {
                  v126 = v22;
                }

                v112 = [v92 objectForKeyedSubscript:v48];
                [v112 setObject:v126 forKeyedSubscript:v97];
                goto LABEL_137;
              default:
                goto LABEL_139;
            }

            v112 = v117;
            v121 = [v92 objectForKeyedSubscript:v48];
            [v121 setObject:v112 forKeyedSubscript:v97];

LABEL_137:
            v50 = v103;
            goto LABEL_138;
          }
        }

LABEL_150:
        if (v83 != 1)
        {
          v180 = v83;
          v134 = 590;
LABEL_152:
          v135 = v50;
          v136 = @"Failed to decode DER sequence: %d";
LABEL_153:
          createMobileActivationError("lockcrypto_query_certificate_properties", v134, v135, -1, 0, v136, v84, v85, v180);
          v137 = LABEL_154:;
          goto LABEL_155;
        }

LABEL_156:
        if (v15)
        {
          goto LABEL_254;
        }

        v138 = DERDecodeSeqNext(&v205, &v216);
        if (v138 != 1)
        {
          v15 = createMobileActivationError("lockcrypto_query_certificate_properties", 710, v50, -1, 0, @"DER sequence is invalid: %d", v139, v140, v138);
          goto LABEL_254;
        }

        v209 = 0uLL;
        v205 = 0uLL;
        v216 = 0;
        v217 = 0;
        v218[0] = 0;
        v45 = DERDecodeSeqNext(v201, &v199);
        v15 = 0;
        if (!v45)
        {
          v49 = *(&v199 + 1);
          v21 = v48;
          if (*(&v199 + 1))
          {
            continue;
          }
        }

        goto LABEL_224;
      }

      createMobileActivationError("lockcrypto_query_certificate_properties", 503, v50, -1, 0, @"Failed to parse DER integer: %d", v52, v53, v55);
      goto LABEL_237;
    }
  }

  v22 = 0;
  v23 = 0;
LABEL_224:
  v8 = v189;
  if (v45 != 1)
  {
    v170 = createMobileActivationError("lockcrypto_query_certificate_properties", 468, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode DER sequence: %d", v46, v47, v45);

    v15 = v170;
  }

  v21 = v48;
LABEL_240:
  a3 = v187;
  if (v15)
  {
    goto LABEL_241;
  }

LABEL_185:
  if (!v11)
  {
    goto LABEL_242;
  }

  if ([v11 count])
  {
    goto LABEL_245;
  }

LABEL_241:

LABEL_242:
  if (a3)
  {
    v174 = v15;
    v11 = 0;
    *a3 = v15;
  }

  else
  {
    v11 = 0;
  }

LABEL_245:
  v175 = v11;

  return v175;
}

id lockcrypto_decode_pem(void *a1, const char *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v8 = v5;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  *__str = 0u;
  v29 = 0u;
  v30 = 0u;
  *__little = 0u;
  v28 = 0u;
  if (v5 && a2)
  {
    v9 = [v5 bytes];
    v10 = [v8 length];
    if (v10 < 0)
    {
      v21 = @"Invalid data length.";
      v22 = 1496;
    }

    else
    {
      v11 = v10;
      v12 = snprintf(__str, 0x50uLL, "-----BEGIN %s-----\n", a2);
      snprintf(__little, 0x50uLL, "\n-----END %s-----", a2);
      v13 = strnstr(v9, __str, v11);
      v14 = strnstr(v9, __little, v11);
      if (v13 && v14)
      {
        v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:&v13[v12] length:v14 - &v13[v12] freeWhenDone:0];
        v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedData:v15 options:1];
        if (v16)
        {
          v19 = v16;
          v20 = 0;
          goto LABEL_16;
        }

        v20 = createMobileActivationError("lockcrypto_decode_pem", 1516, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to decode data.", v17, v18, v26);
        if (!a3)
        {
          goto LABEL_15;
        }

LABEL_13:
        v24 = v20;
        v19 = 0;
        *a3 = v20;
        goto LABEL_16;
      }

      v21 = @"Invalid pem data.";
      v22 = 1505;
    }

    v23 = -1;
  }

  else
  {
    v21 = @"Invalid inputs.";
    v22 = 1489;
    v23 = -2;
  }

  v20 = createMobileActivationError("lockcrypto_decode_pem", v22, @"com.apple.MobileActivation.ErrorDomain", v23, 0, v21, v6, v7, v26);
  v15 = 0;
  if (a3)
  {
    goto LABEL_13;
  }

LABEL_15:
  v19 = 0;
LABEL_16:

  return v19;
}

SecCertificateRef lockcrypto_cert_from_pem_data(void *a1, void *a2)
{
  v3 = a1;
  v6 = v3;
  if (!v3)
  {
    v10 = createMobileActivationError("lockcrypto_cert_from_pem_data", 1734, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.", v4, v5, v19);
    v7 = 0;
    if (a2)
    {
LABEL_10:
      v17 = v10;
      v12 = 0;
      *a2 = v10;
      goto LABEL_11;
    }

LABEL_6:
    v12 = 0;
    goto LABEL_11;
  }

  v20 = 0;
  v7 = lockcrypto_decode_pem(v3, "CERTIFICATE", &v20);
  v10 = v20;
  if (!v7)
  {
    v13 = @"Failed to decode data.";
    v14 = 1740;
    v15 = v10;
    goto LABEL_9;
  }

  v11 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], v7);
  if (!v11)
  {
    v13 = @"Failed to create certificate with cert data.";
    v14 = 1746;
    v15 = 0;
LABEL_9:
    v16 = createMobileActivationError("lockcrypto_cert_from_pem_data", v14, @"com.apple.MobileActivation.ErrorDomain", -1, v15, v13, v8, v9, v19);

    v10 = v16;
    if (a2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v12 = v11;
LABEL_11:

  return v12;
}

uint64_t __lockcrypto_query_oid_der_sequence_data_block_invoke()
{
  lockcrypto_query_oid_der_sequence_data_ASN1DERNull = [MEMORY[0x277CBEA90] dataWithBytes:&unk_22621EED0 length:2];

  return MEMORY[0x2821F96F8]();
}

id DeviceIdentityCopyAttestationDictionary(__SecKey *a1, void *a2, void *a3)
{
  v169[1] = *MEMORY[0x277D85DE8];
  v135 = a2;
  v156 = 0;
  v157 = &v156;
  v158 = 0x3032000000;
  v159 = __Block_byref_object_copy__0;
  v160 = __Block_byref_object_dispose__0;
  v161 = 0;
  v150 = 0;
  v151 = &v150;
  v152 = 0x3032000000;
  v153 = __Block_byref_object_copy__0;
  v154 = __Block_byref_object_dispose__0;
  v155 = 0;
  error = 0;
  v148 = 0;
  if (is_virtual_machine())
  {
    v8 = (v151 + 5);
    obj = v151[5];
    has_host_key = libavp_guest_has_host_key(&obj);
    objc_storeStrong(v8, obj);
    if ((has_host_key & 1) == 0)
    {
      v39 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 214, @"com.apple.MobileActivation.ErrorDomain", -3, v151[5], @"Not supported on this device (VM support disabled).", v6, v7, v130);
      v40 = v151[5];
      v151[5] = v39;

      goto LABEL_32;
    }
  }

  if (!a1 || (v10 = (v151 + 5), v146 = v151[5], valid = security_valid_security_enclave_reference_key(a1, 0, &v148, &v146, v4, v5, v6, v7), objc_storeStrong(v10, v146), (valid & 1) == 0))
  {
    v37 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 219, @"com.apple.MobileActivation.ErrorDomain", -2, v151[5], @"Invalid reference key.", v6, v7, v130);
    v38 = v151[5];
    v151[5] = v37;

LABEL_32:
    v136 = 0;
    v137 = 0;
    v43 = 0;
    v138 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v134 = 0;
    v47 = 0;
    v48 = 0;
    task = 0;
LABEL_33:
    v49 = 0;
LABEL_34:
    v50 = 0;
    v51 = 0;
    v52 = 0;
    goto LABEL_35;
  }

  v12 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  task = v12;
  if (!v12)
  {
    v41 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 225, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create task.", v13, v14, v130);
    v42 = v151[5];
    v151[5] = v41;

    goto LABEL_32;
  }

  v138 = SecTaskCopySigningIdentifier(v12, &error);
  if (!v138)
  {
    v62 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 231, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to query code signing identifier.", v15, v16, v130);
    v63 = v151[5];
    v151[5] = v62;

    v136 = 0;
    v137 = 0;
    v43 = 0;
    v138 = 0;
    goto LABEL_57;
  }

  v137 = SecTaskCopyValueForEntitlement(task, @"com.apple.mobileactivationd.spi", &error);
  v17 = isNSNumber(v137);
  if (!v17 || (v18 = [v137 BOOLValue], v17, (v18 & 1) == 0))
  {
    v56 = error;
    v168 = @"com.apple.mobileactivationd.spi";
    v169[0] = MEMORY[0x277CBEC38];
    v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v169 forKeys:&v168 count:1];
    v60 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 237, @"com.apple.MobileActivation.ErrorDomain", -7, v56, @"Missing required entitlement: %@", v58, v59, v57);
    v61 = v151[5];
    v151[5] = v60;

LABEL_55:
    v136 = 0;
    v43 = 0;
LABEL_57:
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v134 = 0;
LABEL_58:
    v47 = 0;
    v48 = 0;
    goto LABEL_33;
  }

  v136 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v136)
  {
    v64 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 243, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.", v19, v20, v130);
    v65 = v151[5];
    v151[5] = v64;

    goto LABEL_55;
  }

  if (v135)
  {
    [v136 addEntriesFromDictionary:v135];
  }

  if (is_virtual_machine())
  {
    [v136 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"scrtAttestation"];
  }

  v21 = [v136 objectForKeyedSubscript:@"OIDSToInclude"];
  v22 = isNSArray(v21);

  if (v22)
  {
    v23 = objc_alloc(MEMORY[0x277CBEB98]);
    v24 = [v136 objectForKeyedSubscript:@"OIDSToInclude"];
    v134 = [v23 initWithArray:v24];

    if (([v134 containsObject:@"1.2.840.113635.100.10.1"] & 1) != 0 || (objc_msgSend(v134, "containsObject:", @"1.2.840.113635.100.8.1") & 1) != 0 || objc_msgSend(v134, "containsObject:", @"1.2.840.113635.100.8.3"))
    {
      v132 = SecTaskCopyValueForEntitlement(task, @"com.apple.mobileactivationd.device-identifiers", &error);

      v25 = isNSNumber(v132);
      if (!v25 || (v26 = [v132 BOOLValue], v25, (v26 & 1) == 0))
      {
        v66 = error;
        v166 = @"com.apple.mobileactivationd.device-identifiers";
        v167 = MEMORY[0x277CBEC38];
        v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v167 forKeys:&v166 count:1];
        v70 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 266, @"com.apple.MobileActivation.ErrorDomain", -7, v66, @"Missing required entitlement: %@", v68, v69, v67);
        v71 = v151[5];
        v151[5] = v70;

        goto LABEL_61;
      }

      v137 = v132;
    }

    v27 = copy_supported_eda_oids();
    v28 = [v134 intersectsSet:v27];

    if (!v28)
    {
LABEL_26:
      if ([v134 containsObject:@"1.2.840.113635.100.8.6"])
      {
        v33 = [v136 objectForKeyedSubscript:?];
        v34 = v33 == 0;

        if (v34)
        {
          v122 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 285, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing required option: %@", v35, v36, @"AccessControls");
          v123 = v151[5];
          v151[5] = v122;

          goto LABEL_90;
        }
      }

      goto LABEL_63;
    }

    if ((device_supports_eda_certificates() & 1) == 0)
    {
      v85 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 273, @"com.apple.MobileActivation.ErrorDomain", -3, v151[5], @"Enterprise Device Attestation is not supported on this device.", v29, v30, v130);
      v86 = v151[5];
      v151[5] = v85;

      goto LABEL_90;
    }

    v132 = SecTaskCopyValueForEntitlement(task, @"com.apple.mobileactivationd.eda", &error);

    v31 = isNSNumber(v132);
    if (v31)
    {
      v32 = [v132 BOOLValue];

      if (v32)
      {
        v137 = v132;
        goto LABEL_26;
      }
    }

    v87 = error;
    v164 = @"com.apple.mobileactivationd.eda";
    v165 = MEMORY[0x277CBEC38];
    v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
    v91 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 279, @"com.apple.MobileActivation.ErrorDomain", -7, v87, @"Missing required entitlement: %@", v89, v90, v88);
    v92 = v151[5];
    v151[5] = v91;

LABEL_61:
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v137 = v132;
    goto LABEL_35;
  }

  v134 = 0;
LABEL_63:
  v72 = [v136 objectForKeyedSubscript:?];

  if (!v72)
  {
    goto LABEL_73;
  }

  v73 = isRunningInRecovery();
  if ((v73 & 1) != 0 || isRunningInDiagnosticsMode(v73, v74))
  {
    v77 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 292, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Option (%@) not allowed for processes running in recoveryOS or diagnostics mode.", v75, v76, @"AccessControls");
    v78 = v151[5];
    v151[5] = v77;

LABEL_90:
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    goto LABEL_58;
  }

  v79 = [v136 objectForKeyedSubscript:@"ClientAttestationData"];
  v80 = isNSData(v79);

  if (v80)
  {
    v83 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 297, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"ACLs (%@) not supported with %@.", v81, v82, @"AccessControls");
    v84 = v151[5];
    v151[5] = v83;

    goto LABEL_90;
  }

  v93 = [v136 objectForKeyedSubscript:@"AccessControls"];
  v94 = CFGetTypeID(v93);
  LODWORD(v94) = v94 == SecAccessControlGetTypeID();

  if (v94)
  {
    v49 = [v136 objectForKeyedSubscript:@"AccessControls"];

    CFRetain(v49);
    v131 = 1;
  }

  else
  {
LABEL_73:
    v49 = 0;
    v131 = 0;
  }

  v95 = [v136 objectForKeyedSubscript:@"AppID"];
  v96 = isNSString(v95);

  if (v96)
  {
    v97 = [v136 objectForKeyedSubscript:@"AppID"];

    v138 = v97;
  }

  v98 = [v136 objectForKeyedSubscript:@"UseXPC"];
  v99 = isNSNumber(v98);

  if (v99)
  {
    v100 = [v136 objectForKeyedSubscript:@"UseXPC"];
    LODWORD(v99) = [v100 BOOLValue];
  }

  v101 = v148;
  v47 = CFRetain(a1);
  v102 = SecKeyCopyPublicKey(v47);
  v48 = v102;
  if (!v102)
  {
    v116 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 334, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK public key.", v103, v104, v130);
    v117 = v151[5];
    v151[5] = v116;

    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v48 = 0;
    goto LABEL_34;
  }

  v43 = SecKeyCopyExternalRepresentation(v102, &error);
  if (!v43)
  {
    v118 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 340, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to encode RK public key as data.", v108, v109, v130);
    v119 = v151[5];
    v151[5] = v118;

    v43 = 0;
    v44 = 0;
    v45 = 0;
LABEL_88:
    v46 = 0;
    goto LABEL_34;
  }

  v110 = (v151 + 5);
  v144 = v151[5];
  v145 = 0;
  v46 = security_create_external_representation(v47, &v145, &v144, v105, v106, v107, v108, v109);
  v45 = v145;
  objc_storeStrong(v110, v144);
  if (!v46)
  {
    v120 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 346, @"com.apple.MobileActivation.ErrorDomain", -1, v151[5], @"Failed to encode RK as data.", v111, v112, v130);
    v121 = v151[5];
    v151[5] = v120;

    v44 = 0;
    goto LABEL_88;
  }

  v113 = [MEMORY[0x277CCABB0] numberWithBool:(v131 | v101) & 1];
  [v136 setObject:v113 forKeyedSubscript:?];

  [v136 setObject:v138 forKeyedSubscript:@"AppID"];
  [v136 setObject:v45 forKeyedSubscript:@"SigningKeyAttributes"];
  if (v99)
  {
    v52 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283968088];
    v51 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.mobileactivationd" options:0];
    [v51 setRemoteObjectInterface:v52];
    [v51 resume];
    v50 = [v136 mutableCopy];
    v114 = [v50 objectForKey:@"AccessControls"];

    if (v114)
    {
      [v50 removeObjectForKey:@"AccessControls"];
      [v50 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UseRKSigningInterface"];
    }

    [v50 removeObjectForKey:@"LocalAuthenticationContext"];
    v143[0] = MEMORY[0x277D85DD0];
    v143[1] = 3221225472;
    v143[2] = __DeviceIdentityCopyAttestationDictionary_block_invoke;
    v143[3] = &unk_278585EC0;
    v143[4] = &v150;
    v115 = [v51 synchronousRemoteObjectProxyWithErrorHandler:v143];
    v142[0] = MEMORY[0x277D85DD0];
    v142[1] = 3221225472;
    v142[2] = __DeviceIdentityCopyAttestationDictionary_block_invoke_2;
    v142[3] = &unk_278585EE8;
    v142[4] = &v156;
    v142[5] = &v150;
    [v115 copyAttestationDictionaryWithCompletionBlock:v46 options:v50 completion:v142];
    [v51 invalidate];
  }

  else
  {
    v124 = (v151 + 5);
    v141 = v151[5];
    v133 = create_baa_info(v47, v136, &v141);
    objc_storeStrong(v124, v141);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v115 = v157[5];
    v157[5] = v133;
  }

  v127 = v157[5];
  if (v127)
  {
    v44 = v127;
  }

  else
  {
    v128 = createMobileActivationError("DeviceIdentityCopyAttestationDictionary", 408, @"com.apple.MobileActivation.ErrorDomain", -1, v151[5], @"Failed to copy certificate info.", v125, v126, v130);
    v129 = v151[5];
    v151[5] = v128;

    v44 = 0;
  }

LABEL_35:
  if (v151[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v53 = v151[5];
    *buf = 138543362;
    v163 = v53;
    _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  if (a3 && !v44)
  {
    *a3 = v151[5];
  }

  if (task)
  {
    CFRelease(task);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  if (v49)
  {
    CFRelease(v49);
  }

  v54 = v44;

  _Block_object_dispose(&v150, 8);
  _Block_object_dispose(&v156, 8);

  return v54;
}

void sub_22620D1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 224), 8);
  _Unwind_Resume(a1);
}

uint64_t __DeviceIdentityCopyAttestationDictionary_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(*(a1 + 32) + 8) + 40) = createMobileActivationError("DeviceIdentityCopyAttestationDictionary_block_invoke", 390, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.", a7, a8, v10);

  return MEMORY[0x2821F96F8]();
}

void __DeviceIdentityCopyAttestationDictionary_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"RKCertification"];
  v7 = isNSDictionary(v6);
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
}

id DeviceIdentityCreateClientCertificateRequest(CFTypeRef *a1, void *a2, void *a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = a2;
  cf = 0;
  v5 = 0;
  if (is_virtual_machine())
  {
    v71 = 0;
    has_host_key = libavp_guest_has_host_key(&v71);
    v5 = v71;
    if ((has_host_key & 1) == 0)
    {
      v22 = createMobileActivationError("DeviceIdentityCreateClientCertificateRequest", 456, @"com.apple.MobileActivation.ErrorDomain", -3, v5, @"Not supported on this device (VM support disabled).", v7, v8, v61);

      goto LABEL_11;
    }
  }

  v70 = v5;
  v9 = isSupportedDeviceIdentityClient(0, &v70);
  v10 = v70;

  if ((v9 & 1) == 0)
  {
    v22 = createMobileActivationError("DeviceIdentityCreateClientCertificateRequest", 461, @"com.apple.MobileActivation.ErrorDomain", -25, v10, @"Client is not supported.", v11, v12, v61);

LABEL_11:
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v14 = 0;
LABEL_36:
    v47 = 0;
    v41 = 0;
    goto LABEL_37;
  }

  v13 = [v4 objectForKeyedSubscript:@"ClientAttestationData"];
  v14 = isNSData(v13);

  if (!v14)
  {
    goto LABEL_7;
  }

  v14 = SecAccessControlCreate();
  if (!v14)
  {
    v28 = cf;
    v29 = @"Failed to create access control.";
    v30 = 473;
LABEL_30:
    v22 = createMobileActivationError("DeviceIdentityCreateClientCertificateRequest", v30, @"com.apple.MobileActivation.ErrorDomain", -1, v28, v29, v15, v16, v61);

    v23 = 0;
    v24 = 0;
    goto LABEL_35;
  }

  v17 = *MEMORY[0x277CDBF08];
  if ((SecAccessControlSetProtection() & 1) == 0)
  {
    v28 = cf;
    v61 = v17;
    v29 = @"Failed to set ACL protection to %@.";
    v30 = 478;
    goto LABEL_30;
  }

LABEL_7:
  v18 = [v4 objectForKeyedSubscript:@"UseSoftwareGeneratedKey"];
  v19 = isNSNumber(v18);

  if (v19)
  {
    v20 = [v4 objectForKeyedSubscript:@"UseSoftwareGeneratedKey"];
    v21 = [v20 BOOLValue];
  }

  else
  {
    v21 = 1;
  }

  v24 = [v4 objectForKeyedSubscript:@"ClientNameSuffix"];

  if (v24)
  {
    v31 = [v4 objectForKeyedSubscript:@"ClientNameSuffix"];
    v24 = isNSString(v31);

    if (v24)
    {
      v69 = v10;
      IsValid = clientNameSuffixIsValid(v24, &v69);
      v35 = v69;

      if (IsValid)
      {
        v10 = v35;
        goto LABEL_18;
      }

      v22 = createMobileActivationError("DeviceIdentityCreateClientCertificateRequest", 495, @"com.apple.MobileActivation.ErrorDomain", -2, v35, @"Invalid value for option '%@': %@", v36, v37, @"ClientNameSuffix");
    }

    else
    {
      v22 = createMobileActivationError("DeviceIdentityCreateClientCertificateRequest", 490, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid type for option '%@'.", v32, v33, @"ClientNameSuffix");
    }

    v23 = 0;
LABEL_35:
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_36;
  }

LABEL_18:
  v68 = v10;
  v27 = createReferenceKeyBlob(v14, v21, v4, &v68);
  v38 = v68;

  if (!v27)
  {
    v22 = createMobileActivationError("DeviceIdentityCreateClientCertificateRequest", 504, @"com.apple.MobileActivation.ErrorDomain", -1, v38, @"Failed to create reference key.", v39, v40, v61);

    v23 = 0;
    v25 = 0;
    v26 = 0;
    goto LABEL_36;
  }

  v67 = v38;
  v41 = DeviceIdentityCopyAttestationDictionary(v27, v4, &v67);
  v42 = v67;

  if (!v41)
  {
    v22 = createMobileActivationError("DeviceIdentityCreateClientCertificateRequest", 510, @"com.apple.MobileActivation.ErrorDomain", -1, v42, @"Failed to copy certificate info.", v43, v44, v61);

    v23 = 0;
    v25 = 0;
    v26 = 0;
    v47 = 0;
    goto LABEL_37;
  }

  v62 = a1;
  v45 = +[GestaltHlprDeviceIdentity getSharedInstance];
  v26 = [v45 copyAnswer:@"UniqueDeviceID"];

  v65 = v42;
  v66 = 0;
  v46 = createXMLRequest(v41, &v66, &v65);
  v47 = v66;
  v22 = v65;

  if ((v46 & 1) == 0)
  {
    v63 = createMobileActivationError("DeviceIdentityCreateClientCertificateRequest", 526, @"com.apple.MobileActivation.ErrorDomain", -1, v22, @"Failed to create XML request.", v48, v49, v61);

    v23 = 0;
    v25 = 0;
LABEL_53:
    v22 = v63;
    goto LABEL_37;
  }

  v50 = copy_calling_process_name();
  v25 = createUserAgentValue(v50, v24);

  if (!v25)
  {
    v63 = createMobileActivationError("DeviceIdentityCreateClientCertificateRequest", 535, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create user agent string.", v51, v52, v61);

    v23 = 0;
    goto LABEL_53;
  }

  [v47 setValue:v25 forHTTPHeaderField:@"User-Agent"];
  v53 = isNSString(v26);

  if (v53)
  {
    [v47 setValue:v26 forHTTPHeaderField:@"x-jmet-deviceid"];
  }

  v54 = MEMORY[0x277CBEBC0];
  v55 = is_virtual_machine();
  v56 = &VMBAA_URL;
  if (!v55)
  {
    v56 = &BAA_URL;
  }

  v57 = [v54 URLWithString:*v56];
  [v47 setURL:v57];

  if (v62)
  {
    *v62 = CFRetain(v27);
  }

  v23 = v47;
  v47 = v23;
LABEL_37:
  if (v22 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v74 = v22;
    _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  if (a3 && !v23)
  {
    v58 = v22;
    *a3 = v22;
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v59 = v23;

  return v23;
}