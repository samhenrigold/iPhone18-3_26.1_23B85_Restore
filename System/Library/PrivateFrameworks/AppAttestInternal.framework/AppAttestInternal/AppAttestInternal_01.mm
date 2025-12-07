void AppAttest_AppAttestation_AssertWithTeamIdentifier(_OWORD *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v6 = a1[1];
  v7[0] = *a1;
  v7[1] = v6;
  if (a2)
  {
    Assert(v7, a2, a3, a4, a5, a6);
  }

  else
  {
    AppAttest_AppAttestation_Assert(v7, a3, a4, a5, a6);
  }
}

void AppAttest_AppAttestation_Sign(__int128 *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (+[FeatureFlagsManager isModernizationEnabled])
  {
    v13 = [_TtC17AppAttestInternal16AppAttestHandler alloc];
    v14 = a1[1];
    v17 = *a1;
    v18 = v14;
    v15 = [(AppAttestHandler *)v13 initWith:&v17];
    [(AppAttestHandler *)v15 signWithClientUUID:v9 blob:v11 credential:v10 completion:v12];
  }

  else
  {
    v16 = a1[1];
    v17 = *a1;
    v18 = v16;
    Sign(&v17, v9, v10, 0, v11, v12);
  }
}

void Sign(_OWORD *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v118 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_alloc_init(AppAttestEligibilityManager);
  v17 = a1[1];
  *buf = *a1;
  *&buf[16] = v17;
  if ([(AppAttestEligibilityManager *)v16 isEligibleClientFor:buf])
  {
    if (v13)
    {
      v21 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
      if (([v21 BOOLForKey:@"allowPrivAPI"] & 1) == 0)
      {
        v22 = a1[1];
        *buf = *a1;
        *&buf[16] = v22;
        if (![(AppAttestEligibilityManager *)v16 isEligibleForPrivService:buf])
        {
          v71 = createAppAttestError("Sign", 736, -4, 0, @"Client is not eligible for priv service.", v23, v24, v25, v105);
          v15[2](v15, 0, v71);

          goto LABEL_112;
        }
      }
    }

    v26 = a1[1];
    *buf = *a1;
    *&buf[16] = v26;
    EnvironmentByAppSigning = generateEnvironmentByAppSigning(buf);
    v113 = 0;
    v114 = 0;
    v112 = 0;
    v28 = a1[1];
    *buf = *a1;
    *&buf[16] = v28;
    v29 = extractApplicationIdentifiers(buf, v13, &v114, &v113, &v112);
    v30 = v114;
    v109 = v113;
    v107 = v30;
    v108 = v112;
    if (v29)
    {
      if (AAInternalLogSystem_onceToken_7 != -1)
      {
        AppAttest_AppAttestation_IsEligibleApplication_cold_1();
      }

      v31 = AAInternalLogSystem_log_7;
      if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 0;
        v33 = 0;
        v34 = 47;
        do
        {
          v35 = &aLibraryCachesC_7[v32];
          if (v34 == 47)
          {
            v33 = &aLibraryCachesC_7[v32];
          }

          v34 = v35[1];
          if (!v35[1])
          {
            break;
          }

          v36 = v32++ >= 0xFFF;
        }

        while (!v36);
        if (v33)
        {
          v37 = v33 + 1;
        }

        else
        {
          v37 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
        }

        *buf = 136315906;
        *&buf[4] = v37;
        *&buf[12] = 1024;
        *&buf[14] = 758;
        *&buf[18] = 2112;
        *&buf[20] = v30;
        *&buf[28] = 2112;
        *&buf[30] = v109;
        _os_log_impl(&dword_226177000, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d App_id=%@, %@", buf, 0x26u);
      }

      v106 = resolveAppUUIDKeychain(v11, v30, v109);
      if (v106)
      {
        v38 = isNSString(v12);
        v39 = v38 == 0;

        if (v39)
        {
          if (AAInternalLogSystem_onceToken_7 != -1)
          {
            AppAttest_AppAttestation_IsEligibleApplication_cold_1();
          }

          v82 = AAInternalLogSystem_log_7;
          if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_ERROR))
          {
            v86 = 0;
            v87 = 0;
            v88 = 47;
            do
            {
              v89 = &aLibraryCachesC_7[v86];
              if (v88 == 47)
              {
                v87 = &aLibraryCachesC_7[v86];
              }

              v88 = v89[1];
              if (!v89[1])
              {
                break;
              }

              v36 = v86++ >= 0xFFF;
            }

            while (!v36);
            if (v87)
            {
              v90 = v87 + 1;
            }

            else
            {
              v90 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
            }

            *buf = 136315650;
            *&buf[4] = v90;
            *&buf[12] = 1024;
            *&buf[14] = 768;
            *&buf[18] = 2112;
            *&buf[20] = v12;
            _os_log_impl(&dword_226177000, v82, OS_LOG_TYPE_ERROR, "%25s:%-5d Key ID is invalid. { keyID=%@ }", buf, 0x1Cu);
          }

          v21 = createAppAttestError("Sign", 769, -2, v108, @"Invalid keyId", v83, v84, v85, v105);

          v15[2](v15, 0, v21);
        }

        else
        {
          v40 = isNSData(v14);
          if (!v40 || (v41 = [v14 length] == 0, v40, v41))
          {
            if (AAInternalLogSystem_onceToken_7 != -1)
            {
              AppAttest_AppAttestation_IsEligibleApplication_cold_1();
            }

            v72 = AAInternalLogSystem_log_7;
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              v73 = 0;
              v74 = 0;
              v75 = 47;
              do
              {
                v76 = &aLibraryCachesC_7[v73];
                if (v75 == 47)
                {
                  v74 = &aLibraryCachesC_7[v73];
                }

                v75 = v76[1];
                if (!v76[1])
                {
                  break;
                }

                v36 = v73++ >= 0xFFF;
              }

              while (!v36);
              if (v74)
              {
                v77 = v74 + 1;
              }

              else
              {
                v77 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
              }

              v78 = [v14 base64EncodedStringWithOptions:0];
              *buf = 136315650;
              *&buf[4] = v77;
              *&buf[12] = 1024;
              *&buf[14] = 775;
              *&buf[18] = 2112;
              *&buf[20] = v78;
              _os_log_impl(&dword_226177000, v72, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid blob to sign. { blob=%@ }", buf, 0x1Cu);
            }

            v21 = createAppAttestError("Sign", 776, -2, 0, @"Invalid clientDataHash", v79, v80, v81, v105);

            v15[2](v15, 0, v21);
          }

          else
          {
            CredentialKeychain = loadCredentialKeychain(EnvironmentByAppSigning, v106, v109, v12);
            if (CredentialKeychain)
            {
              aBlock[4] = 0;
              error = 0;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 3221225472;
              aBlock[2] = __Sign_block_invoke;
              aBlock[3] = &__block_descriptor_40_e5_v8__0l;
              v43 = _Block_copy(aBlock);
              v44 = SecKeyCreateSignature(CredentialKeychain, *MEMORY[0x277CDC300], v14, &error);
              v45 = v44;
              if (v44)
              {
                v46 = AAInternalLogSystem_1(v44);
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  v47 = 0;
                  v48 = 0;
                  v49 = 47;
                  do
                  {
                    v50 = &aLibraryCachesC_7[v47];
                    if (v49 == 47)
                    {
                      v48 = &aLibraryCachesC_7[v47];
                    }

                    v49 = v50[1];
                    if (!v50[1])
                    {
                      break;
                    }

                    v36 = v47++ >= 0xFFF;
                  }

                  while (!v36);
                  if (v48)
                  {
                    v51 = v48 + 1;
                  }

                  else
                  {
                    v51 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
                  }

                  *buf = 136316162;
                  *&buf[4] = v51;
                  *&buf[12] = 1024;
                  *&buf[14] = 803;
                  *&buf[18] = 2112;
                  *&buf[20] = v12;
                  *&buf[28] = 2112;
                  *&buf[30] = v11;
                  *&buf[38] = 2112;
                  *&buf[40] = v109;
                  _os_log_impl(&dword_226177000, v46, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Signed data blob. { keyId=%@ , appUUID=%@, resolvedAppID=%@ }", buf, 0x30u);
                }

                (v15)[2](v15, v45, 0);
              }

              else
              {
                v100 = [(__CFError *)error localizedDescription];
                v104 = createAppAttestError("Sign", 798, -2, 0, @"Failed to sign data. { error=%@ }", v101, v102, v103, v100);

                v15[2](v15, 0, v104);
                v108 = v104;
              }

              v43[2](v43);
              v21 = v108;
            }

            else
            {
              v91 = AAInternalLogSystem_1(0);
              if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
              {
                v92 = 0;
                v93 = 0;
                v94 = 47;
                do
                {
                  v95 = &aLibraryCachesC_7[v92];
                  if (v94 == 47)
                  {
                    v93 = &aLibraryCachesC_7[v92];
                  }

                  v94 = v95[1];
                  if (!v95[1])
                  {
                    break;
                  }

                  v36 = v92++ >= 0xFFF;
                }

                while (!v36);
                if (v93)
                {
                  v96 = v93 + 1;
                }

                else
                {
                  v96 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
                }

                *buf = 136316674;
                *&buf[4] = v96;
                *&buf[12] = 1024;
                *&buf[14] = 784;
                *&buf[18] = 1024;
                *&buf[20] = EnvironmentByAppSigning;
                *&buf[24] = 2112;
                *&buf[26] = v12;
                *&buf[34] = 2112;
                *&buf[36] = v106;
                *&buf[44] = 2112;
                *&buf[46] = v109;
                v116 = 2112;
                v117 = v107;
                _os_log_impl(&dword_226177000, v91, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to load BIK from Keychain. { env=%d, keyID=%@, appUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x40u);
              }

              v21 = createAppAttestError("Sign", 785, -3, 0, @"Failed to load keychain", v97, v98, v99, v105);

              v15[2](v15, 0, v21);
            }
          }
        }
      }

      else
      {
        if (AAInternalLogSystem_onceToken_7 != -1)
        {
          AppAttest_AppAttestation_IsEligibleApplication_cold_1();
        }

        v62 = AAInternalLogSystem_log_7;
        if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_ERROR))
        {
          v66 = 0;
          v67 = 0;
          v68 = 47;
          do
          {
            v69 = &aLibraryCachesC_7[v66];
            if (v68 == 47)
            {
              v67 = &aLibraryCachesC_7[v66];
            }

            v68 = v69[1];
            if (!v69[1])
            {
              break;
            }

            v36 = v66++ >= 0xFFF;
          }

          while (!v36);
          if (v67)
          {
            v70 = v67 + 1;
          }

          else
          {
            v70 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
          }

          *buf = 136316162;
          *&buf[4] = v70;
          *&buf[12] = 1024;
          *&buf[14] = 761;
          *&buf[18] = 2112;
          *&buf[20] = v11;
          *&buf[28] = 2112;
          *&buf[30] = v109;
          *&buf[38] = 2112;
          *&buf[40] = v30;
          _os_log_impl(&dword_226177000, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed resolved App UUID. { incomingAppUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x30u);
        }

        v21 = createAppAttestError("Sign", 762, -2, 0, @"Invalid appUUID", v63, v64, v65, v105);

        v15[2](v15, 0, v21);
      }
    }

    else
    {
      if (AAInternalLogSystem_onceToken_7 != -1)
      {
        AppAttest_AppAttestation_IsEligibleApplication_cold_1();
      }

      v52 = AAInternalLogSystem_log_7;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = 0;
        v54 = 0;
        v55 = 47;
        do
        {
          v56 = &aLibraryCachesC_7[v53];
          if (v55 == 47)
          {
            v54 = &aLibraryCachesC_7[v53];
          }

          v55 = v56[1];
          if (!v56[1])
          {
            break;
          }

          v36 = v53++ >= 0xFFF;
        }

        while (!v36);
        if (v54)
        {
          v57 = v54 + 1;
        }

        else
        {
          v57 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
        }

        v58 = [v108 localizedDescription];
        *buf = 136315650;
        *&buf[4] = v57;
        *&buf[12] = 1024;
        *&buf[14] = 752;
        *&buf[18] = 2112;
        *&buf[20] = v58;
        _os_log_impl(&dword_226177000, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch identifiers. { error=%@ }", buf, 0x1Cu);
      }

      v21 = createAppAttestError("Sign", 753, -2, v108, @"Unable to fetch application identifier", v59, v60, v61, v105);

      v15[2](v15, 0, v21);
    }
  }

  else
  {
    v21 = createAppAttestError("Sign", 725, -4, 0, @"Client is not eligible.", v18, v19, v20, v105);
    v15[2](v15, 0, v21);
  }

LABEL_112:
}

void AppAttest_AppAttestation_SignWithTeamIdentifier(__int128 *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v6 = a1[1];
  v7[0] = *a1;
  v7[1] = v6;
  if (a4)
  {
    Sign(v7, a2, a3, a4, a5, a6);
  }

  else
  {
    AppAttest_AppAttestation_Sign(v7, a2, a3, a5, a6);
  }
}

void AppAttest_AppAttestation_GetKey(__int128 *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a4)
  {
    v12 = a1[1];
    v20 = *a1;
    v21 = v12;
    v13 = v9;
    v14 = v10;
    v15 = a4;
LABEL_6:
    GetKey(&v20, v13, v14, v15, v11);
    goto LABEL_7;
  }

  if (!+[FeatureFlagsManager isModernizationEnabled])
  {
    v19 = a1[1];
    v20 = *a1;
    v21 = v19;
    v13 = v9;
    v14 = v10;
    v15 = 0;
    goto LABEL_6;
  }

  v16 = [_TtC17AppAttestInternal16AppAttestHandler alloc];
  v17 = a1[1];
  v20 = *a1;
  v21 = v17;
  v18 = [(AppAttestHandler *)v16 initWith:&v20];
  [(AppAttestHandler *)v18 getKeyFor:v9 credential:v10 completion:v11];

LABEL_7:
}

void GetKey(_OWORD *a1, void *a2, void *a3, void *a4, void *a5)
{
  v91 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(AppAttestEligibilityManager);
  v14 = a1[1];
  *buf = *a1;
  *&buf[16] = v14;
  if ([(AppAttestEligibilityManager *)v13 isEligibleClientFor:buf])
  {
    if (!v11)
    {
      goto LABEL_6;
    }

    v18 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
    if (([v18 BOOLForKey:@"allowPrivAPI"] & 1) != 0 || (v19 = a1[1], *buf = *a1, *&buf[16] = v19, -[AppAttestEligibilityManager isEligibleForPrivService:](v13, "isEligibleForPrivService:", buf)))
    {

LABEL_6:
      v23 = a1[1];
      *buf = *a1;
      *&buf[16] = v23;
      EnvironmentByAppSigning = generateEnvironmentByAppSigning(buf);
      v86 = 0;
      v87 = 0;
      v85 = 0;
      v25 = a1[1];
      *buf = *a1;
      *&buf[16] = v25;
      v26 = extractApplicationIdentifiers(buf, v11, &v87, &v86, &v85);
      v83 = v87;
      v84 = v86;
      v18 = v85;
      if ((v26 & 1) == 0)
      {
        if (AAInternalLogSystem_onceToken_7 != -1)
        {
          AppAttest_AppAttestation_IsEligibleApplication_cold_1();
        }

        v38 = AAInternalLogSystem_log_7;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = 0;
          v40 = 0;
          v41 = 47;
          do
          {
            v42 = &aLibraryCachesC_7[v39];
            if (v41 == 47)
            {
              v40 = &aLibraryCachesC_7[v39];
            }

            v41 = v42[1];
            if (!v42[1])
            {
              break;
            }

            v32 = v39++ >= 0xFFF;
          }

          while (!v32);
          if (v40)
          {
            v43 = v40 + 1;
          }

          else
          {
            v43 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
          }

          v44 = [v18 localizedDescription];
          *buf = 136315650;
          *&buf[4] = v43;
          *&buf[12] = 1024;
          *&buf[14] = 839;
          *&buf[18] = 2112;
          *&buf[20] = v44;
          _os_log_impl(&dword_226177000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch identifiers. { error=%@ }", buf, 0x1Cu);
        }

        v48 = createAppAttestError("GetKey", 840, -2, v18, @"Unable to fetch application identifier", v45, v46, v47, v80);

        v12[2](v12, 0, v48);
        v18 = v48;
        goto LABEL_84;
      }

      if (AAInternalLogSystem_onceToken_7 != -1)
      {
        AppAttest_AppAttestation_IsEligibleApplication_cold_1();
      }

      v27 = AAInternalLogSystem_log_7;
      if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 0;
        v29 = 0;
        v30 = 47;
        do
        {
          v31 = &aLibraryCachesC_7[v28];
          if (v30 == 47)
          {
            v29 = &aLibraryCachesC_7[v28];
          }

          v30 = v31[1];
          if (!v31[1])
          {
            break;
          }

          v32 = v28++ >= 0xFFF;
        }

        while (!v32);
        if (v29)
        {
          v33 = v29 + 1;
        }

        else
        {
          v33 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
        }

        *buf = 136315906;
        *&buf[4] = v33;
        *&buf[12] = 1024;
        *&buf[14] = 845;
        *&buf[18] = 2112;
        *&buf[20] = v83;
        *&buf[28] = 2112;
        *&buf[30] = v84;
        _os_log_impl(&dword_226177000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d App_id=%@, %@", buf, 0x26u);
      }

      v34 = resolveAppUUIDKeychain(v9, v83, v84);
      v35 = v34;
      if (!v34)
      {
        if (AAInternalLogSystem_onceToken_7 != -1)
        {
          AppAttest_AppAttestation_IsEligibleApplication_cold_1();
        }

        v49 = AAInternalLogSystem_log_7;
        if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_ERROR))
        {
          v53 = 0;
          v54 = 0;
          v55 = 47;
          do
          {
            v56 = &aLibraryCachesC_7[v53];
            if (v55 == 47)
            {
              v54 = &aLibraryCachesC_7[v53];
            }

            v55 = v56[1];
            if (!v56[1])
            {
              break;
            }

            v32 = v53++ >= 0xFFF;
          }

          while (!v32);
          if (v54)
          {
            v57 = v54 + 1;
          }

          else
          {
            v57 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
          }

          *buf = 136316162;
          *&buf[4] = v57;
          *&buf[12] = 1024;
          *&buf[14] = 848;
          *&buf[18] = 2112;
          *&buf[20] = v9;
          *&buf[28] = 2112;
          *&buf[30] = v84;
          *&buf[38] = 2112;
          *&buf[40] = v83;
          _os_log_impl(&dword_226177000, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed resolved App UUID. { incomingAppUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x30u);
        }

        v58 = createAppAttestError("GetKey", 849, -2, 0, @"Invalid appUUID", v50, v51, v52, v80);

        v12[2](v12, 0, v58);
        v18 = v58;
        goto LABEL_83;
      }

      v81 = v34;
      v36 = isNSString(v10);

      if (v36)
      {
        v35 = v81;
        CredentialKeychain = loadCredentialKeychain(EnvironmentByAppSigning, v81, v84, v10);
        if (CredentialKeychain)
        {
          (v12)[2](v12, CredentialKeychain, 0);
LABEL_83:

LABEL_84:
          goto LABEL_85;
        }

        if (AAInternalLogSystem_onceToken_7 != -1)
        {
          AppAttest_AppAttestation_IsEligibleApplication_cold_1();
        }

        v73 = AAInternalLogSystem_log_7;
        if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_ERROR))
        {
          v74 = 0;
          v75 = 0;
          v76 = 47;
          do
          {
            v77 = &aLibraryCachesC_7[v74];
            if (v76 == 47)
            {
              v75 = &aLibraryCachesC_7[v74];
            }

            v76 = v77[1];
            if (!v77[1])
            {
              break;
            }

            v32 = v74++ >= 0xFFF;
          }

          while (!v32);
          if (v75)
          {
            v78 = v75 + 1;
          }

          else
          {
            v78 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
          }

          *buf = 136316674;
          *&buf[4] = v78;
          *&buf[12] = 1024;
          *&buf[14] = 864;
          *&buf[18] = 1024;
          *&buf[20] = EnvironmentByAppSigning;
          *&buf[24] = 2112;
          *&buf[26] = v10;
          *&buf[34] = 2112;
          *&buf[36] = v81;
          *&buf[44] = 2112;
          *&buf[46] = v84;
          v89 = 2112;
          v90 = v83;
          _os_log_impl(&dword_226177000, v73, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to load BIK from Keychain. { env=%d, keyID=%@, appUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x40u);
        }

        v69 = @"Failed to load keychain";
        v70 = 865;
        v71 = -3;
        v72 = 0;
      }

      else
      {
        if (AAInternalLogSystem_onceToken_7 != -1)
        {
          AppAttest_AppAttestation_IsEligibleApplication_cold_1();
        }

        v60 = AAInternalLogSystem_log_7;
        if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_ERROR))
        {
          v64 = 0;
          v65 = 0;
          v66 = 47;
          do
          {
            v67 = &aLibraryCachesC_7[v64];
            if (v66 == 47)
            {
              v65 = &aLibraryCachesC_7[v64];
            }

            v66 = v67[1];
            if (!v67[1])
            {
              break;
            }

            v32 = v64++ >= 0xFFF;
          }

          while (!v32);
          if (v65)
          {
            v68 = v65 + 1;
          }

          else
          {
            v68 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
          }

          *buf = 136315650;
          *&buf[4] = v68;
          *&buf[12] = 1024;
          *&buf[14] = 855;
          *&buf[18] = 2112;
          *&buf[20] = v10;
          _os_log_impl(&dword_226177000, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d Key ID is invalid. { keyID=%@ }", buf, 0x1Cu);
        }

        v69 = @"Invalid keyId";
        v70 = 856;
        v71 = -2;
        v72 = v18;
      }

      v79 = createAppAttestError("GetKey", v70, v71, v72, v69, v61, v62, v63, v81);

      v12[2](v12, 0, v79);
      v18 = v79;
      v35 = v82;
      goto LABEL_83;
    }

    v59 = createAppAttestError("GetKey", 823, -4, 0, @"Client is not eligible for priv service.", v20, v21, v22, v80);
    v12[2](v12, 0, v59);
  }

  else
  {
    v18 = createAppAttestError("GetKey", 812, -4, 0, @"Client is not eligible.", v15, v16, v17, v80);
    v12[2](v12, 0, v18);
  }

LABEL_85:
}

void __AttestKey_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v163 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = isNSDictionary(v5);

  v11 = &unk_28136F000;
  if (!v7)
  {
    if (v6 && ([v6 domain], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "isEqualToString:", @"com.apple.appattest.error"), v46, v47))
    {
      v48 = v6;
    }

    else
    {
      v48 = createAppAttestError("AttestKey_block_invoke", 495, -6, v6, @"Invalid server response", v8, v9, v10, v140);
    }

    v45 = v48;
    if (AAInternalLogSystem_onceToken_7 != -1)
    {
      AAInternalLogSystem_cold_1_1();
    }

    v26 = AAInternalLogSystem_log_7;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    v49 = 0;
    v50 = 0;
    v51 = 47;
    do
    {
      v52 = &aLibraryCachesC_7[v49];
      if (v51 == 47)
      {
        v50 = &aLibraryCachesC_7[v49];
      }

      v51 = v52[1];
      if (!v52[1])
      {
        break;
      }

      v34 = v49++ >= 0xFFF;
    }

    while (!v34);
    if (v50)
    {
      v53 = v50 + 1;
    }

    else
    {
      v53 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
    }

    v54 = [v6 localizedDescription];
    v55 = *(a1 + 104);
    v56 = *(a1 + 32);
    v57 = [*(a1 + 40) intValue];
    v58 = *(a1 + 48);
    v59 = *(a1 + 56);
    v60 = *(a1 + 64);
    *buf = 136317186;
    *&buf[4] = v53;
    *&buf[12] = 1024;
    *&buf[14] = 498;
    *&buf[18] = 2112;
    *&buf[20] = v54;
    *&buf[28] = 1024;
    *&buf[30] = v55;
    *&buf[34] = 2112;
    *&buf[36] = v56;
    *&buf[44] = 1024;
    *&buf[46] = v57;
    v157 = 2112;
    v158 = v58;
    v159 = 2112;
    v160 = v59;
    v161 = 2112;
    v162 = v60;
    goto LABEL_50;
  }

  v12 = [v5 objectForKeyedSubscript:@"attestationDataReceipt"];
  v13 = isNSString(v12);
  if (!v13)
  {

    goto LABEL_37;
  }

  v14 = v13;
  v15 = [v5 objectForKeyedSubscript:@"certs"];
  v16 = isNSString(v15);

  if (!v16)
  {
LABEL_37:
    v45 = createAppAttestError("AttestKey_block_invoke", 501, -6, 0, @"Invalid response", v17, v18, v19, v140);
    if (AAInternalLogSystem_onceToken_7 != -1)
    {
      AAInternalLogSystem_cold_1_1();
    }

    v26 = AAInternalLogSystem_log_7;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    v61 = 0;
    v62 = 0;
    v63 = 47;
    do
    {
      v64 = &aLibraryCachesC_7[v61];
      if (v63 == 47)
      {
        v62 = &aLibraryCachesC_7[v61];
      }

      v63 = v64[1];
      if (!v64[1])
      {
        break;
      }

      v34 = v61++ >= 0xFFF;
    }

    while (!v34);
    if (v62)
    {
      v65 = v62 + 1;
    }

    else
    {
      v65 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
    }

    v54 = [v6 localizedDescription];
    v66 = *(a1 + 104);
    v67 = *(a1 + 32);
    v68 = [*(a1 + 40) intValue];
    v69 = *(a1 + 48);
    v70 = *(a1 + 56);
    v71 = *(a1 + 64);
    *buf = 136317186;
    *&buf[4] = v65;
    *&buf[12] = 1024;
    *&buf[14] = 502;
    *&buf[18] = 2112;
    *&buf[20] = v54;
    *&buf[28] = 1024;
    *&buf[30] = v66;
    *&buf[34] = 2112;
    *&buf[36] = v67;
    *&buf[44] = 1024;
    *&buf[46] = v68;
    v157 = 2112;
    v158 = v69;
    v159 = 2112;
    v160 = v70;
    v161 = 2112;
    v162 = v71;
LABEL_50:
    _os_log_impl(&dword_226177000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to attest key. { error=%@, env=%d, keyID=%@, counter=%d, appUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x50u);

LABEL_51:
    v44 = 0;
    goto LABEL_105;
  }

  v20 = objc_alloc(MEMORY[0x277CBEA90]);
  v21 = [v5 objectForKeyedSubscript:@"attestationDataReceipt"];
  v22 = [v20 initWithBase64EncodedData:v21 options:1];

  v23 = objc_alloc(MEMORY[0x277CBEA90]);
  v24 = [v5 objectForKeyedSubscript:@"certs"];
  v25 = [v23 initWithBase64EncodedData:v24 options:1];

  v155 = 0;
  v26 = lockcrypto_decode_pems(v25, "CERTIFICATE", &v155);
  v27 = v155;
  if (v27)
  {
    v28 = v27;
    if (AAInternalLogSystem_onceToken_7 != -1)
    {
      AppAttest_AppAttestation_IsEligibleApplication_cold_1();
    }

    v29 = AAInternalLogSystem_log_7;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v147 = v25;
      v150 = v22;
      v30 = 0;
      v31 = 0;
      v32 = 47;
      do
      {
        v33 = &aLibraryCachesC_7[v30];
        if (v32 == 47)
        {
          v31 = &aLibraryCachesC_7[v30];
        }

        v32 = v33[1];
        if (!v33[1])
        {
          break;
        }

        v34 = v30++ >= 0xFFF;
      }

      while (!v34);
      if (v31)
      {
        v35 = v31 + 1;
      }

      else
      {
        v35 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
      }

      v36 = [v28 localizedDescription];
      v37 = v28;
      v38 = *(a1 + 104);
      v39 = *(a1 + 32);
      v40 = [*(a1 + 40) intValue];
      v41 = *(a1 + 48);
      v42 = *(a1 + 56);
      v43 = *(a1 + 64);
      *buf = 136317186;
      *&buf[4] = v35;
      *&buf[12] = 1024;
      *&buf[14] = 518;
      *&buf[18] = 2112;
      *&buf[20] = v36;
      *&buf[28] = 1024;
      *&buf[30] = v38;
      v28 = v37;
      *&buf[34] = 2112;
      *&buf[36] = v39;
      *&buf[44] = 1024;
      *&buf[46] = v40;
      v157 = 2112;
      v158 = v41;
      v159 = 2112;
      v160 = v42;
      v161 = 2112;
      v162 = v43;
      _os_log_impl(&dword_226177000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to decode certificates. { error=%@, env=%d, keyID=%@, counter=%d, appUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x50u);

      v11 = &unk_28136F000;
      v25 = v147;
      v22 = v150;
    }

    v44 = 0;
    v45 = v28;
  }

  else
  {
    if ([v26 count]== 2)
    {
      v28 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:1];
      if (saveAssertionCounterKeychain(v28, *(a1 + 104), *(a1 + 48), *(a1 + 56), *(a1 + 32)))
      {
        v144 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
        if ([v144 BOOLForKey:@"addCdHash"])
        {
          v78 = *(a1 + 124);
          *buf = *(a1 + 108);
          *&buf[16] = v78;
          v79 = fetchCdHash(buf);
        }

        else
        {
          v104 = *(a1 + 124);
          *buf = *(a1 + 108);
          *&buf[16] = v104;
          v105 = fetchOptInEntitlements(buf);
          v106 = v105;
          if (v105 && [v105 containsObject:@"CDhash"])
          {
            v107 = *(a1 + 124);
            *buf = *(a1 + 108);
            *&buf[16] = v107;
            v79 = fetchCdHash(buf);
          }

          else
          {
            v79 = 0;
          }
        }

        v108 = *(a1 + 72);
        v154 = 0;
        v143 = v79;
        v109 = generateAttestationObject(v108, v26, v22, v79, &v154);
        v110 = v154;
        v141 = v110;
        v142 = v109;
        if (v109)
        {
          v44 = v109;
          v45 = 0;
        }

        else
        {
          v45 = v110;
          v111 = AAInternalLogSystem_1(v45);
          if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
          {
            loga = v28;
            v149 = v25;
            v153 = v22;
            v112 = 0;
            v113 = 0;
            v114 = 47;
            do
            {
              v115 = &aLibraryCachesC_7[v112];
              if (v114 == 47)
              {
                v113 = &aLibraryCachesC_7[v112];
              }

              v114 = v115[1];
              if (!v115[1])
              {
                break;
              }

              v34 = v112++ >= 0xFFF;
            }

            while (!v34);
            if (v113)
            {
              v116 = v113 + 1;
            }

            else
            {
              v116 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
            }

            v117 = [v45 localizedDescription];
            v118 = *(a1 + 104);
            v119 = *(a1 + 32);
            v120 = [*(a1 + 40) intValue];
            v121 = *(a1 + 48);
            v122 = *(a1 + 56);
            v123 = *(a1 + 64);
            *buf = 136317186;
            *&buf[4] = v116;
            *&buf[12] = 1024;
            *&buf[14] = 547;
            *&buf[18] = 2112;
            *&buf[20] = v117;
            *&buf[28] = 1024;
            *&buf[30] = v118;
            *&buf[34] = 2112;
            *&buf[36] = v119;
            *&buf[44] = 1024;
            *&buf[46] = v120;
            v157 = 2112;
            v158 = v121;
            v159 = 2112;
            v160 = v122;
            v161 = 2112;
            v162 = v123;
            _os_log_impl(&dword_226177000, v111, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to generate attestation object. { error=%@, env=%d, keyID=%@, counter=%d, appUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x50u);

            v11 = &unk_28136F000;
            v25 = v149;
            v22 = v153;
            v28 = loga;
          }

          v44 = 0;
        }

        v28 = v142;
        goto LABEL_104;
      }

      v45 = createAppAttestError("AttestKey_block_invoke", 526, -3, 0, @"Unable to set counter for authenticator data", v75, v76, v77, v140);
      if (AAInternalLogSystem_onceToken_7 != -1)
      {
        AppAttest_AppAttestation_IsEligibleApplication_cold_1();
      }

      v92 = AAInternalLogSystem_log_7;
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        v148 = v25;
        v152 = v22;
        v93 = 0;
        v94 = 0;
        v95 = 47;
        do
        {
          v96 = &aLibraryCachesC_7[v93];
          if (v95 == 47)
          {
            v94 = &aLibraryCachesC_7[v93];
          }

          v95 = v96[1];
          if (!v96[1])
          {
            break;
          }

          v34 = v93++ >= 0xFFF;
        }

        while (!v34);
        if (v94)
        {
          v97 = v94 + 1;
        }

        else
        {
          v97 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
        }

        v98 = *(a1 + 104);
        v99 = *(a1 + 32);
        v100 = [v28 intValue];
        v101 = *(a1 + 48);
        v102 = *(a1 + 56);
        v103 = *(a1 + 64);
        *buf = 136316930;
        *&buf[4] = v97;
        *&buf[12] = 1024;
        *&buf[14] = 527;
        *&buf[18] = 1024;
        *&buf[20] = v98;
        *&buf[24] = 2112;
        *&buf[26] = v99;
        *&buf[34] = 1024;
        *&buf[36] = v100;
        *&buf[40] = 2112;
        *&buf[42] = v101;
        v157 = 2112;
        v158 = v102;
        v159 = 2112;
        v160 = v103;
        _os_log_impl(&dword_226177000, v92, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to update assertion counter. { env=%d, keyID=%@, counter=%d, appUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x46u);
        v11 = &unk_28136F000;
        v25 = v148;
        v22 = v152;
      }
    }

    else
    {
      v45 = createAppAttestError("AttestKey_block_invoke", 520, -3, 0, @"The received cert chain length must be 2!", v72, v73, v74, v140);
      if (AAInternalLogSystem_onceToken_7 != -1)
      {
        AppAttest_AppAttestation_IsEligibleApplication_cold_1();
      }

      v28 = AAInternalLogSystem_log_7;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        log = v28;
        v151 = v22;
        v80 = 0;
        v81 = 0;
        v82 = 47;
        do
        {
          v83 = &aLibraryCachesC_7[v80];
          if (v82 == 47)
          {
            v81 = &aLibraryCachesC_7[v80];
          }

          v82 = v83[1];
          if (!v83[1])
          {
            break;
          }

          v34 = v80++ >= 0xFFF;
        }

        while (!v34);
        if (v81)
        {
          v84 = v81 + 1;
        }

        else
        {
          v84 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
        }

        v85 = [0 localizedDescription];
        v86 = *(a1 + 104);
        v87 = *(a1 + 32);
        v88 = [*(a1 + 40) intValue];
        v89 = *(a1 + 48);
        v90 = *(a1 + 56);
        v91 = *(a1 + 64);
        *buf = 136317186;
        *&buf[4] = v84;
        *&buf[12] = 1024;
        *&buf[14] = 521;
        *&buf[18] = 2112;
        *&buf[20] = v85;
        *&buf[28] = 1024;
        *&buf[30] = v86;
        *&buf[34] = 2112;
        *&buf[36] = v87;
        *&buf[44] = 1024;
        *&buf[46] = v88;
        v157 = 2112;
        v158 = v89;
        v159 = 2112;
        v160 = v90;
        v161 = 2112;
        v162 = v91;
        v28 = log;
        _os_log_impl(&dword_226177000, log, OS_LOG_TYPE_ERROR, "%25s:%-5d Certificate chain length is invalid. { error=%@, env=%d, keyID=%@, counter=%d, appUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x50u);

        v44 = 0;
        v11 = &unk_28136F000;
        v22 = v151;
        goto LABEL_104;
      }
    }

    v44 = 0;
  }

LABEL_104:

LABEL_105:
  v124 = v11[420];
  if (v45)
  {
    if (v124 != -1)
    {
      AppAttest_AppAttestation_IsEligibleApplication_cold_1();
    }

    v125 = AAInternalLogSystem_log_7;
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
    {
      v126 = 0;
      v127 = 0;
      v128 = 47;
      do
      {
        v129 = &aLibraryCachesC_7[v126];
        if (v128 == 47)
        {
          v127 = &aLibraryCachesC_7[v126];
        }

        v128 = v129[1];
        if (!v129[1])
        {
          break;
        }

        v34 = v126++ >= 0xFFF;
      }

      while (!v34);
      if (v127)
      {
        v130 = v127 + 1;
      }

      else
      {
        v130 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
      }

      v131 = [*(a1 + 80) localizedDescription];
      v132 = *(a1 + 32);
      *buf = 136315906;
      *&buf[4] = v130;
      *&buf[12] = 1024;
      *&buf[14] = 556;
      *&buf[18] = 2112;
      *&buf[20] = v131;
      *&buf[28] = 2112;
      *&buf[30] = v132;
      _os_log_impl(&dword_226177000, v125, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to attest key. { error=%@, keyId=%@ }", buf, 0x26u);
    }
  }

  else
  {
    if (v124 != -1)
    {
      AppAttest_AppAttestation_IsEligibleApplication_cold_1();
    }

    v133 = AAInternalLogSystem_log_7;
    if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_DEBUG))
    {
      v134 = 0;
      v135 = 0;
      v136 = 47;
      do
      {
        v137 = &aLibraryCachesC_7[v134];
        if (v136 == 47)
        {
          v135 = &aLibraryCachesC_7[v134];
        }

        v136 = v137[1];
        if (!v137[1])
        {
          break;
        }

        v34 = v134++ >= 0xFFF;
      }

      while (!v34);
      if (v135)
      {
        v138 = v135 + 1;
      }

      else
      {
        v138 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
      }

      v139 = *(a1 + 32);
      *buf = 136315650;
      *&buf[4] = v138;
      *&buf[12] = 1024;
      *&buf[14] = 555;
      *&buf[18] = 2112;
      *&buf[20] = v139;
      _os_log_impl(&dword_226177000, v133, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attested key. { keyId=%@ }", buf, 0x1Cu);
    }
  }

  (*(*(a1 + 96) + 16))();
  dispatch_semaphore_signal(*(a1 + 88));
}

void __Sign_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t __AAInternalLogSystem_block_invoke_7()
{
  AAInternalLogSystem_log_7 = os_log_create("com.apple.devicecheck", "aai");

  return MEMORY[0x2821F96F8]();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for TapToRadarDraft(uint64_t a1)
{
  result = qword_27D78F050;
  if (!qword_27D78F050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226191B10@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DD90, &qword_2261E89B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_2261E3A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2261E3A3C();
  sub_2261E3A2C();
  MEMORY[0x22AA77E40](7824750, 0xE300000000000000);
  sub_226191D60();
  sub_2261E39FC();
  sub_2261E3A0C();
  v9 = sub_2261E3B2C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_22619A7B4(v4, &qword_27D78DD90, &qword_2261E89B0);
    sub_22619477C();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 32))(a1, v4, v9);
  }
}

char *sub_226191D60()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF20, &unk_2261E61A0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v331 = &v295 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v330 = &v295 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v329 = &v295 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v326 = &v295 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v323 = &v295 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v320 = &v295 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v319 = &v295 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v295 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v295 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v295 - v23;
  v25 = sub_2261E39EC();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v298 = &v295 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v297 = &v295 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v314 = &v295 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v313 = &v295 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v350 = &v295 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v312 = &v295 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v349 = &v295 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v348 = &v295 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v311 = &v295 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v347 = &v295 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v328 = &v295 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v327 = &v295 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v346 = &v295 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v310 = &v295 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v345 = &v295 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v344 = &v295 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v309 = &v295 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v343 = &v295 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v342 = &v295 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v308 = &v295 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v341 = &v295 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v340 = &v295 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v307 = &v295 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v339 = &v295 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v325 = &v295 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v324 = &v295 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v351 = &v295 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v306 = &v295 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v338 = &v295 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v337 = &v295 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v305 = &v295 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v336 = &v295 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v335 = &v295 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v304 = &v295 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v334 = &v295 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v322 = &v295 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v321 = &v295 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v333 = &v295 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v303 = &v295 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v332 = &v295 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v302 = &v295 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v301 = &v295 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v300 = &v295 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v299 = &v295 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v318 = &v295 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v317 = &v295 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v316 = &v295 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v315 = &v295 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v125 = &v295 - v124;
  MEMORY[0x28223BE20](v123);
  v127 = &v295 - v126;
  v355 = v26;
  v356 = MEMORY[0x277D84F90];
  v128 = *(v1 + 24);
  v352 = v1;
  if (!v128)
  {
    v353 = *(v26 + 56);
    v353(v24, 1, 1, v25);
LABEL_5:
    sub_22619A7B4(v24, &qword_27D78DF20, &unk_2261E61A0);
    v129 = *(v1 + 48);
    if (!v129)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v26 = v355;
  sub_2261E39DC();
  v353 = *(v26 + 56);
  v353(v24, 0, 1, v25);

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v1 = v352;
    goto LABEL_5;
  }

  v354 = *(v26 + 32);
  v354(v127, v24, v25);
  (*(v26 + 16))(v125, v127, v25);
  v152 = sub_2261987B0(0, 1, 1, MEMORY[0x277D84F90]);
  v154 = *(v152 + 2);
  v153 = *(v152 + 3);
  v296 = v19;
  if (v154 >= v153 >> 1)
  {
    v152 = sub_2261987B0((v153 > 1), v154 + 1, 1, v152);
  }

  v155 = v355;
  v156 = v355 + 8;
  (*(v355 + 8))(v127, v25);
  *(v152 + 2) = v154 + 1;
  v157 = &v152[((*(v156 + 72) + 32) & ~*(v156 + 72)) + *(v156 + 64) * v154];
  v26 = v155;
  v354(v157, v125, v25);
  v356 = v152;
  v1 = v352;
  v19 = v296;
  v129 = *(v352 + 48);
  if (v129)
  {
LABEL_6:
    v131 = *(v1 + 56);
    v130 = *(v1 + 64);
    v357 = *(v1 + 32);
    v358 = v129;
    v359 = v131;
    v360 = v130;
    v132 = sub_226194D98();
    sub_2261975C8(v132);
  }

LABEL_7:
  v133 = *(v1 + 88);

  sub_226196FB0(v133, v22);

  v354 = *(v26 + 48);
  if (v354(v22, 1, v25) == 1)
  {
    sub_22619A7B4(v22, &qword_27D78DF20, &unk_2261E61A0);
  }

  else
  {
    v134 = *(v26 + 32);
    v135 = v315;
    v134(v315, v22, v25);
    (*(v26 + 16))(v316, v135, v25);
    v136 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = sub_2261987B0(0, *(v136 + 2) + 1, 1, v136);
    }

    v138 = *(v136 + 2);
    v137 = *(v136 + 3);
    if (v138 >= v137 >> 1)
    {
      v136 = sub_2261987B0((v137 > 1), v138 + 1, 1, v136);
    }

    (*(v26 + 8))(v315, v25);
    *(v136 + 2) = v138 + 1;
    v134(&v136[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v138], v316, v25);
    v356 = v136;
    v1 = v352;
  }

  v139 = *(v1 + 112);

  sub_2261971A4(v139, v19);

  if (v354(v19, 1, v25) == 1)
  {
    sub_22619A7B4(v19, &qword_27D78DF20, &unk_2261E61A0);
    if (*(v1 + 144))
    {
      goto LABEL_16;
    }

LABEL_28:
    v140 = v319;
    v353(v319, 1, 1, v25);
    goto LABEL_29;
  }

  v147 = *(v26 + 32);
  v148 = v317;
  v147(v317, v19, v25);
  (*(v26 + 16))(v318, v148, v25);
  v149 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v149 = sub_2261987B0(0, *(v149 + 2) + 1, 1, v149);
  }

  v151 = *(v149 + 2);
  v150 = *(v149 + 3);
  if (v151 >= v150 >> 1)
  {
    v149 = sub_2261987B0((v150 > 1), v151 + 1, 1, v149);
  }

  (*(v26 + 8))(v317, v25);
  *(v149 + 2) = v151 + 1;
  v147(&v149[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v151], v318, v25);
  v356 = v149;
  if (!*(v1 + 144))
  {
    goto LABEL_28;
  }

LABEL_16:

  v140 = v319;
  sub_2261E39DC();
  v353(v140, 0, 1, v25);

  if (v354(v140, 1, v25) != 1)
  {
    v141 = *(v26 + 32);
    v142 = v299;
    v141(v299, v140, v25);
    (*(v26 + 16))(v300, v142, v25);
    v143 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_2261987B0(0, *(v143 + 2) + 1, 1, v143);
    }

    v145 = *(v143 + 2);
    v144 = *(v143 + 3);
    if (v145 >= v144 >> 1)
    {
      v143 = sub_2261987B0((v144 > 1), v145 + 1, 1, v143);
    }

    (*(v26 + 8))(v299, v25);
    *(v143 + 2) = v145 + 1;
    v141(&v143[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v145], v300, v25);
    v356 = v143;
    if (!*(v1 + 176))
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_22619A7B4(v140, &qword_27D78DF20, &unk_2261E61A0);
  if (!*(v1 + 176))
  {
LABEL_22:
    v146 = v320;
    v353(v320, 1, 1, v25);
LABEL_31:
    sub_22619A7B4(v146, &qword_27D78DF20, &unk_2261E61A0);
    goto LABEL_41;
  }

LABEL_30:

  v146 = v320;
  sub_2261E39DC();
  v353(v146, 0, 1, v25);

  if (v354(v146, 1, v25) == 1)
  {
    goto LABEL_31;
  }

  v158 = *(v26 + 32);
  v159 = v301;
  v158(v301, v146, v25);
  (*(v26 + 16))(v302, v159, v25);
  v160 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v160 = sub_2261987B0(0, *(v160 + 2) + 1, 1, v160);
  }

  v162 = *(v160 + 2);
  v161 = *(v160 + 3);
  if (v162 >= v161 >> 1)
  {
    v160 = sub_2261987B0((v161 > 1), v162 + 1, 1, v160);
  }

  (*(v26 + 8))(v301, v25);
  *(v160 + 2) = v162 + 1;
  v158(&v160[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v162], v302, v25);
  v356 = v160;
LABEL_41:

  sub_226197D78(v163);
  if (v164)
  {
    v165 = v303;
    sub_2261E39DC();

    v166 = *(v26 + 32);
    v167 = v332;
    v166(v332, v165, v25);
    (*(v26 + 16))(v333, v167, v25);
    v168 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v168 = sub_2261987B0(0, *(v168 + 2) + 1, 1, v168);
    }

    v170 = *(v168 + 2);
    v169 = *(v168 + 3);
    if (v170 >= v169 >> 1)
    {
      v168 = sub_2261987B0((v169 > 1), v170 + 1, 1, v168);
    }

    (*(v26 + 8))(v332, v25);
    *(v168 + 2) = v170 + 1;
    v166(&v168[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v170], v333, v25);
    v356 = v168;
  }

  else
  {
  }

  v171 = type metadata accessor for TapToRadarDraft(0);
  v172 = v323;
  sub_2261972FC(v323);
  if (v354(v172, 1, v25) == 1)
  {
    sub_22619A7B4(v172, &qword_27D78DF20, &unk_2261E61A0);
  }

  else
  {
    v173 = *(v26 + 32);
    v174 = v321;
    v173(v321, v172, v25);
    (*(v26 + 16))(v322, v174, v25);
    v175 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v175 = sub_2261987B0(0, *(v175 + 2) + 1, 1, v175);
    }

    v177 = *(v175 + 2);
    v176 = *(v175 + 3);
    if (v177 >= v176 >> 1)
    {
      v175 = sub_2261987B0((v176 > 1), v177 + 1, 1, v175);
    }

    (*(v26 + 8))(v321, v25);
    *(v175 + 2) = v177 + 1;
    v173(&v175[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v177], v322, v25);
    v356 = v175;
    v1 = v352;
  }

  sub_226197B64(v178);
  if (v179)
  {
    v180 = v304;
    sub_2261E39DC();

    v181 = *(v26 + 32);
    v182 = v334;
    v181(v334, v180, v25);
    (*(v26 + 16))(v335, v182, v25);
    v183 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v183 = sub_2261987B0(0, *(v183 + 2) + 1, 1, v183);
    }

    v185 = *(v183 + 2);
    v184 = *(v183 + 3);
    if (v185 >= v184 >> 1)
    {
      v183 = sub_2261987B0((v184 > 1), v185 + 1, 1, v183);
    }

    (*(v26 + 8))(v334, v25);
    *(v183 + 2) = v185 + 1;
    v181(&v183[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v185], v335, v25);
    v356 = v183;
    v1 = v352;
  }

  else
  {
  }

  sub_226197B64(v186);
  if (v187)
  {
    v188 = v305;
    sub_2261E39DC();

    v189 = *(v26 + 32);
    v190 = v336;
    v189(v336, v188, v25);
    (*(v26 + 16))(v337, v190, v25);
    v191 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v191 = sub_2261987B0(0, *(v191 + 2) + 1, 1, v191);
    }

    v193 = *(v191 + 2);
    v192 = *(v191 + 3);
    if (v193 >= v192 >> 1)
    {
      v191 = sub_2261987B0((v192 > 1), v193 + 1, 1, v191);
    }

    (*(v26 + 8))(v336, v25);
    *(v191 + 2) = v193 + 1;
    v189(&v191[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v193], v337, v25);
    v356 = v191;
    v1 = v352;
  }

  else
  {
  }

  sub_226197A34(v194);
  if (v195)
  {
    v196 = v306;
    sub_2261E39DC();

    v197 = *(v26 + 32);
    v198 = v338;
    v197(v338, v196, v25);
    (*(v26 + 16))(v351, v198, v25);
    v199 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v199 = sub_2261987B0(0, *(v199 + 2) + 1, 1, v199);
    }

    v201 = *(v199 + 2);
    v200 = *(v199 + 3);
    if (v201 >= v200 >> 1)
    {
      v199 = sub_2261987B0((v200 > 1), v201 + 1, 1, v199);
    }

    (*(v26 + 8))(v338, v25);
    *(v199 + 2) = v201 + 1;
    v197(&v199[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v201], v351, v25);
    v356 = v199;
    v1 = v352;
  }

  else
  {
  }

  v202 = v326;
  sub_2261E39DC();

  v351 = (v26 + 56);
  v353(v202, 0, 1, v25);

  if (v354(v202, 1, v25) == 1)
  {
    sub_22619A7B4(v202, &qword_27D78DF20, &unk_2261E61A0);
  }

  else
  {
    v203 = *(v26 + 32);
    v204 = v324;
    v203(v324, v202, v25);
    (*(v26 + 16))(v325, v204, v25);
    v205 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v205 = sub_2261987B0(0, *(v205 + 2) + 1, 1, v205);
    }

    v207 = *(v205 + 2);
    v206 = *(v205 + 3);
    if (v207 >= v206 >> 1)
    {
      v205 = sub_2261987B0((v206 > 1), v207 + 1, 1, v205);
    }

    v208 = v355 + 8;
    (*(v355 + 8))(v324, v25);
    *(v205 + 2) = v207 + 1;
    v203(&v205[((*(v208 + 72) + 32) & ~*(v208 + 72)) + *(v208 + 64) * v207], v325, v25);
    v356 = v205;
  }

  sub_226197A34(v209);
  if (v210)
  {
    v211 = v307;
    sub_2261E39DC();

    v212 = v355;
    v213 = *(v355 + 32);
    v214 = v339;
    v213(v339, v211, v25);
    (*(v212 + 16))(v340, v214, v25);
    v215 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v215 = sub_2261987B0(0, *(v215 + 2) + 1, 1, v215);
    }

    v217 = *(v215 + 2);
    v216 = *(v215 + 3);
    if (v217 >= v216 >> 1)
    {
      v215 = sub_2261987B0((v216 > 1), v217 + 1, 1, v215);
    }

    v218 = v355 + 8;
    (*(v355 + 8))(v339, v25);
    *(v215 + 2) = v217 + 1;
    v213(&v215[((*(v218 + 72) + 32) & ~*(v218 + 72)) + *(v218 + 64) * v217], v340, v25);
    v356 = v215;
  }

  else
  {
  }

  sub_22619785C(v219);
  if (v220)
  {
    v221 = v308;
    sub_2261E39DC();

    v222 = v355;
    v223 = *(v355 + 32);
    v224 = v341;
    v223(v341, v221, v25);
    (*(v222 + 16))(v342, v224, v25);
    v225 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v225 = sub_2261987B0(0, *(v225 + 2) + 1, 1, v225);
    }

    v227 = *(v225 + 2);
    v226 = *(v225 + 3);
    if (v227 >= v226 >> 1)
    {
      v225 = sub_2261987B0((v226 > 1), v227 + 1, 1, v225);
    }

    v228 = v355 + 8;
    (*(v355 + 8))(v341, v25);
    *(v225 + 2) = v227 + 1;
    v223(&v225[((*(v228 + 72) + 32) & ~*(v228 + 72)) + *(v228 + 64) * v227], v342, v25);
    v356 = v225;
  }

  else
  {
  }

  sub_226197A34(v229);
  if (v230)
  {
    v231 = v309;
    sub_2261E39DC();

    v232 = v355;
    v233 = *(v355 + 32);
    v234 = v343;
    v233(v343, v231, v25);
    (*(v232 + 16))(v344, v234, v25);
    v235 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v235 = sub_2261987B0(0, *(v235 + 2) + 1, 1, v235);
    }

    v237 = *(v235 + 2);
    v236 = *(v235 + 3);
    if (v237 >= v236 >> 1)
    {
      v235 = sub_2261987B0((v236 > 1), v237 + 1, 1, v235);
    }

    v238 = v355 + 8;
    (*(v355 + 8))(v343, v25);
    *(v235 + 2) = v237 + 1;
    v233(&v235[((*(v238 + 72) + 32) & ~*(v238 + 72)) + *(v238 + 64) * v237], v344, v25);
    v356 = v235;
  }

  else
  {
  }

  v239 = *(v1 + v171[19] + 16);

  sub_226196308(v239);
  if (v240)
  {
    v241 = v310;
    sub_2261E39DC();

    v242 = v355;
    v243 = *(v355 + 32);
    v244 = v345;
    v243(v345, v241, v25);
    (*(v242 + 16))(v346, v244, v25);
    v245 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v245 = sub_2261987B0(0, *(v245 + 2) + 1, 1, v245);
    }

    v247 = *(v245 + 2);
    v246 = *(v245 + 3);
    if (v247 >= v246 >> 1)
    {
      v245 = sub_2261987B0((v246 > 1), v247 + 1, 1, v245);
    }

    v248 = v355 + 8;
    (*(v355 + 8))(v345, v25);
    *(v245 + 2) = v247 + 1;
    v243(&v245[((*(v248 + 72) + 32) & ~*(v248 + 72)) + *(v248 + 64) * v247], v346, v25);
    v356 = v245;
  }

  else
  {
  }

  v249 = v329;
  sub_2261E39DC();

  v353(v249, 0, 1, v25);
  v250 = v249;

  if (v354(v249, 1, v25) == 1)
  {
    sub_22619A7B4(v249, &qword_27D78DF20, &unk_2261E61A0);
  }

  else
  {
    v251 = v355;
    v252 = *(v355 + 32);
    v253 = v327;
    v252(v327, v250, v25);
    (*(v251 + 16))(v328, v253, v25);
    v254 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v254 = sub_2261987B0(0, *(v254 + 2) + 1, 1, v254);
    }

    v256 = *(v254 + 2);
    v255 = *(v254 + 3);
    if (v256 >= v255 >> 1)
    {
      v254 = sub_2261987B0((v255 > 1), v256 + 1, 1, v254);
    }

    v257 = v355 + 8;
    (*(v355 + 8))(v327, v25);
    *(v254 + 2) = v256 + 1;
    v252(&v254[((*(v257 + 72) + 32) & ~*(v257 + 72)) + *(v257 + 64) * v256], v328, v25);
    v356 = v254;
  }

  v258 = *(v1 + v171[21] + 16);

  sub_226196A94(v258);
  if (v259)
  {
    v260 = v311;
    sub_2261E39DC();

    v261 = v355;
    v262 = *(v355 + 32);
    v263 = v347;
    v262(v347, v260, v25);
    (*(v261 + 16))(v348, v263, v25);
    v264 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v264 = sub_2261987B0(0, *(v264 + 2) + 1, 1, v264);
    }

    v266 = *(v264 + 2);
    v265 = *(v264 + 3);
    if (v266 >= v265 >> 1)
    {
      v264 = sub_2261987B0((v265 > 1), v266 + 1, 1, v264);
    }

    v267 = v355 + 8;
    (*(v355 + 8))(v347, v25);
    *(v264 + 2) = v266 + 1;
    v262(&v264[((*(v267 + 72) + 32) & ~*(v267 + 72)) + *(v267 + 64) * v266], v348, v25);
    v356 = v264;
  }

  else
  {
  }

  sub_226197A34(v268);
  if (v269)
  {
    v270 = v312;
    sub_2261E39DC();

    v271 = v355;
    v272 = *(v355 + 32);
    v273 = v349;
    v272(v349, v270, v25);
    (*(v271 + 16))(v350, v273, v25);
    v274 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v274 = sub_2261987B0(0, *(v274 + 2) + 1, 1, v274);
    }

    v276 = *(v274 + 2);
    v275 = *(v274 + 3);
    if (v276 >= v275 >> 1)
    {
      v274 = sub_2261987B0((v275 > 1), v276 + 1, 1, v274);
    }

    v277 = v355 + 8;
    (*(v355 + 8))(v349, v25);
    *(v274 + 2) = v276 + 1;
    v272(&v274[((*(v277 + 72) + 32) & ~*(v277 + 72)) + *(v277 + 64) * v276], v350, v25);
    v356 = v274;
  }

  else
  {
  }

  if (!*(v1 + v171[23] + 24))
  {
    v278 = v330;
    v353(v330, 1, 1, v25);
    v280 = v355;
    goto LABEL_140;
  }

  v278 = v330;
  sub_2261E39DC();
  v353(v278, 0, 1, v25);

  v279 = v354(v278, 1, v25);
  v280 = v355;
  if (v279 == 1)
  {
LABEL_140:
    sub_22619A7B4(v278, &qword_27D78DF20, &unk_2261E61A0);
    goto LABEL_141;
  }

  v281 = *(v355 + 32);
  v282 = v313;
  v281(v313, v278, v25);
  (*(v280 + 16))(v314, v282, v25);
  v283 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v283 = sub_2261987B0(0, *(v283 + 2) + 1, 1, v283);
  }

  v285 = *(v283 + 2);
  v284 = *(v283 + 3);
  if (v285 >= v284 >> 1)
  {
    v283 = sub_2261987B0((v284 > 1), v285 + 1, 1, v283);
  }

  v280 = v355;
  v286 = v355 + 8;
  (*(v355 + 8))(v313, v25);
  *(v283 + 2) = v285 + 1;
  v281(&v283[((*(v286 + 72) + 32) & ~*(v286 + 72)) + *(v286 + 64) * v285], v314, v25);
  v356 = v283;
LABEL_141:
  if (!*(v352 + v171[24] + 24))
  {
    v287 = v331;
    v353(v331, 1, 1, v25);
    goto LABEL_149;
  }

  v287 = v331;
  sub_2261E39DC();
  v353(v287, 0, 1, v25);

  if (v354(v287, 1, v25) == 1)
  {
LABEL_149:
    sub_22619A7B4(v287, &qword_27D78DF20, &unk_2261E61A0);
    return v356;
  }

  v288 = *(v280 + 32);
  v289 = v297;
  v288(v297, v287, v25);
  v290 = v298;
  (*(v280 + 16))(v298, v289, v25);
  v291 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v291 = sub_2261987B0(0, *(v291 + 2) + 1, 1, v291);
  }

  v293 = *(v291 + 2);
  v292 = *(v291 + 3);
  if (v293 >= v292 >> 1)
  {
    v291 = sub_2261987B0((v292 > 1), v293 + 1, 1, v291);
  }

  (*(v280 + 8))(v289, v25);
  *(v291 + 2) = v293 + 1;
  v288(&v291[((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v293], v290, v25);
  return v291;
}

unint64_t sub_22619477C()
{
  result = qword_27D78DD98;
  if (!qword_27D78DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DD98);
  }

  return result;
}

uint64_t sub_2261947D0()
{
  v1[18] = v0;
  v2 = sub_2261E3B2C();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226194890, 0, 0);
}

uint64_t sub_226194890()
{
  sub_226191B10(v0[21]);
  v0[22] = objc_opt_self();
  sub_2261E3F8C();
  v0[23] = sub_2261E3F7C();
  v2 = sub_2261E3F6C();

  return MEMORY[0x2822009F8](sub_226194990, v2, v1);
}

uint64_t sub_226194990()
{
  v1 = *(v0 + 176);

  *(v0 + 192) = [v1 sharedApplication];

  return MEMORY[0x2822009F8](sub_226194A14, 0, 0);
}

uint64_t sub_226194A14()
{
  v1 = v0[24];
  v2 = sub_2261E3AFC();
  v0[25] = v2;
  sub_226198B58(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_22619A648(&qword_27D78DDA0, &unk_2261E6144);
  v3 = sub_2261E3D4C();
  v0[26] = v3;

  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_226194BC0;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDA8, &qword_2261E57A8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_226194D3C;
  v0[13] = &block_descriptor;
  v0[14] = v4;
  [v1 openURL:v2 options:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_226194BC0()
{

  return MEMORY[0x2822009F8](sub_226194CA0, 0, 0);
}

uint64_t sub_226194CA0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_226194D3C(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_226194D98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB0, &qword_2261E57B0);
  sub_2261E39EC();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2261E5760;
  sub_2261E423C();
  sub_2261E39DC();

  sub_2261E39DC();
  sub_2261E39DC();
  return v0;
}

uint64_t sub_226194F14()
{
  v1 = *v0;
  sub_2261E42EC();
  MEMORY[0x22AA78720](v1);
  sub_2261E3E6C();
  sub_2261E3E6C();
  return sub_2261E430C();
}

uint64_t sub_226194F94(uint64_t a1)
{
  MEMORY[0x22AA78720](*v1);
  sub_2261E3E6C();

  return sub_2261E3E6C();
}

uint64_t sub_226195004(uint64_t a1)
{
  v2 = *v1;
  sub_2261E42EC();
  MEMORY[0x22AA78720](v2);
  sub_2261E3E6C();
  sub_2261E3E6C();
  return sub_2261E430C();
}

uint64_t sub_226195080(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_2261E425C() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_2261E425C();
}

unint64_t sub_226195134(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_226195298(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_226195134(*a1);
  v5 = v4;
  if (v3 == sub_226195134(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2261E425C();
  }

  return v8 & 1;
}

uint64_t sub_226195320(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_2261E425C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_226195524(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x80000002261EA700;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x80000002261EA720;
    }

    v5 = 0x80000002261EA6C0;
    if (a1 != 3)
    {
      v5 = 0x80000002261EA6E0;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_2261E425C();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x80000002261EA700;
    }

    else
    {
      v10 = 0x80000002261EA720;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x80000002261EA6C0;
    }

    else
    {
      v10 = 0x80000002261EA6E0;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_2261956FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 6512973;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736956;
    v4 = 0xE600000000000000;
  }

  v6 = 0x5654656C707041;
  if (a1 != 3)
  {
    v6 = 0x646F50656D6F48;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684099177;
  if (a1 != 1)
  {
    v8 = 0x6863746157;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        if (v9 != 0x6863746157)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x656E6F685069)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE300000000000000;
      if (v9 != 6512973)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6E6F69736956)
      {
LABEL_39:
        v12 = sub_2261E425C();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x5654656C707041)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x646F50656D6F48)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_2261958F4()
{
  v1 = *v0;
  sub_2261E42EC();
  sub_226195134(v1);
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_226195958(unsigned __int8 a1)
{
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_226195A6C(uint64_t a1)
{
  sub_226195134(*v1);
  sub_2261E3E6C();
}

uint64_t sub_226195AC0(uint64_t a1)
{
  v2 = *v1;
  sub_2261E42EC();
  sub_226195134(v2);
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_226195B20(uint64_t a1, unsigned __int8 a2)
{
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_226195C28(uint64_t a1, unsigned __int8 a2)
{
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_226195D38(uint64_t a1, unsigned __int8 a2)
{
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

unint64_t sub_226195E48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_226198D68(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_226195E78@<X0>(unint64_t *a1@<X8>)
{
  result = sub_226195134(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_226195EC0(uint64_t a1)
{
  sub_2261E3E6C();
}

unint64_t sub_226195FC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_226198DB4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_226195FF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_2261960F8(uint64_t a1)
{
  sub_2261E3E6C();
}

unint64_t sub_2261961F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_226198E00(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_226196224(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_226196308(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_2261986A4(0, 1, 1, MEMORY[0x277D84F90]);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_2261986A4((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_2261986A4(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_2261986A4((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_2261986A4(0, *(v2 + 2) + 1, 1, v2);
          }

          v13 = *(v2 + 2);
          v12 = *(v2 + 3);
          if (v13 >= v12 >> 1)
          {
            v2 = sub_2261986A4((v12 > 1), v13 + 1, 1, v2);
          }

          *(v2 + 2) = v13 + 1;
          v14 = &v2[16 * v13];
          *(v14 + 4) = 0x616C506572616853;
          *(v14 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_2261986A4(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_2261986A4((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        v17 = &v2[16 * v16];
        *(v17 + 4) = 0x79627261654ELL;
        *(v17 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
LABEL_23:
          if ((v1 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_2261986A4(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_2261986A4((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = 0x657463656E6E6F43;
        *(v20 + 5) = 0xE900000000000064;
        if ((v1 & 0x40) == 0)
        {
LABEL_24:
          if ((v1 & 0x80) == 0)
          {
LABEL_51:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB8, &qword_2261E57B8);
            sub_226198E4C();
            v1 = sub_2261E3D8C();

            return v1;
          }

LABEL_46:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_2261986A4(0, *(v2 + 2) + 1, 1, v2);
          }

          v25 = *(v2 + 2);
          v24 = *(v2 + 3);
          if (v25 >= v24 >> 1)
          {
            v2 = sub_2261986A4((v24 > 1), v25 + 1, 1, v2);
          }

          *(v2 + 2) = v25 + 1;
          v26 = &v2[16 * v25];
          *(v26 + 4) = 0xD000000000000016;
          *(v26 + 5) = 0x80000002261EA770;
          goto LABEL_51;
        }

LABEL_41:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_2261986A4(0, *(v2 + 2) + 1, 1, v2);
        }

        v22 = *(v2 + 2);
        v21 = *(v2 + 3);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_2261986A4((v21 > 1), v22 + 1, 1, v2);
        }

        *(v2 + 2) = v22 + 1;
        v23 = &v2[16 * v22];
        *(v23 + 4) = 0x61656854656D6F48;
        *(v23 + 5) = 0xEB00000000726574;
        if ((v1 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_2261986A4(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_2261986A4((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

uint64_t sub_2261967E0()
{
  v1 = *v0;
  sub_2261E42EC();
  MEMORY[0x22AA78720](v1);
  return sub_2261E430C();
}

uint64_t sub_226196854(uint64_t a1)
{
  v2 = *v1;
  sub_2261E42EC();
  MEMORY[0x22AA78720](v2);
  return sub_2261E430C();
}

BOOL sub_2261968DC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_22619690C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_226196938@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_226196A24@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_226196A54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_226198B20(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_226196A94(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = sub_2261E425C();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_226196C64(uint64_t a1)
{
  sub_2261E3E6C();
}

unint64_t sub_226196D68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_226198EF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_226196D98(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000002261EA700;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x80000002261EA720;
    }

    v5 = 0x80000002261EA6C0;
    if (v2 != 3)
    {
      v5 = 0x80000002261EA6E0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

uint64_t sub_226196E84()
{
  v1 = *v0;
  sub_2261E42EC();
  MEMORY[0x22AA78720](v1);
  return sub_2261E430C();
}

uint64_t sub_226196EF8(uint64_t a1)
{
  v2 = *v1;
  sub_2261E42EC();
  MEMORY[0x22AA78720](v2);
  return sub_2261E430C();
}

unint64_t sub_226196F3C()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_226196FB0@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 9u)
  {
    v5 = 1;
  }

  else
  {
    sub_2261E39DC();

    v5 = 0;
  }

  v6 = sub_2261E39EC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_2261971A4@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 5u)
  {
    v5 = 1;
  }

  else
  {
    sub_2261E39DC();

    v5 = 0;
  }

  v6 = sub_2261E39EC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_2261972FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DD88, &unk_2261E5780);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_2261E3BFC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DD80, &qword_2261E5778);
  sub_22619A73C(v2 + *(v11 + 36), v6, &qword_27D78DD88, &unk_2261E5780);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_22619A7B4(v6, &qword_27D78DD88, &unk_2261E5780);
    v12 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v14 = sub_2261E3DAC();
    [v13 setDateFormat_];

    [v13 setDoesRelativeDateFormatting_];
    v15 = sub_2261E3BEC();
    v16 = [v13 stringFromDate_];

    sub_2261E3DDC();
    (*(v8 + 8))(v10, v7);
    sub_2261E39DC();

    v12 = 0;
  }

  v17 = sub_2261E39EC();
  return (*(*(v17 - 8) + 56))(a1, v12, 1, v17);
}

uint64_t sub_2261975C8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_2261987B0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_2261E39EC();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2261976F4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_226197760()
{
  if (*v0)
  {
    return 49;
  }

  else
  {
    return 48;
  }
}

uint64_t sub_226197778()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_2261E3DAC();
  [v0 setDateFormat_];

  [v0 setDoesRelativeDateFormatting_];
  v2 = sub_2261E3BEC();
  v3 = [v0 stringFromDate_];

  v4 = sub_2261E3DDC();
  return v4;
}

uint64_t sub_22619785C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_2261986A4(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_2261986A4((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB8, &qword_2261E57B8);
  sub_226198E4C();
  v17 = sub_2261E3D8C();

  return v17;
}

uint64_t sub_226197A34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_2261986A4(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_2261986A4((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB8, &qword_2261E57B8);
  sub_226198E4C();
  v9 = sub_2261E3D8C();

  return v9;
}

uint64_t sub_226197B64(uint64_t a1)
{
  v23 = sub_2261E3B2C();
  MEMORY[0x28223BE20](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  v6 = v2 + 16;
  v8 = a1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v21 = *(v6 + 56);
  v22 = v7;
  v9 = (v6 - 8);
  v10 = MEMORY[0x277D84F90];
  do
  {
    v11 = v23;
    v12 = v6;
    v22(v4, v8, v23);
    v13 = sub_2261E3B0C();
    v15 = v14;
    (*v9)(v4, v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_2261986A4(0, *(v10 + 2) + 1, 1, v10);
    }

    v17 = *(v10 + 2);
    v16 = *(v10 + 3);
    if (v17 >= v16 >> 1)
    {
      v10 = sub_2261986A4((v16 > 1), v17 + 1, 1, v10);
    }

    *(v10 + 2) = v17 + 1;
    v18 = &v10[16 * v17];
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
    v8 += v21;
    --v5;
    v6 = v12;
  }

  while (v5);
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB8, &qword_2261E57B8);
  sub_226198E4C();
  v19 = sub_2261E3D8C();

  return v19;
}

uint64_t sub_226197D78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v2 += 8;
    v4 = sub_2261E423C();
    v6 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_2261986A4(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_2261986A4((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v6;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB8, &qword_2261E57B8);
  sub_226198E4C();
  v10 = sub_2261E3D8C();

  return v10;
}

uint64_t sub_226197ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2261E3F5C();
  swift_getWitnessTable();
  v3 = sub_2261E3FBC();
  result = 0;
  if ((v3 & 1) == 0)
  {
    MEMORY[0x28223BE20](0);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    swift_getWitnessTable();
    sub_2261E3EEC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB8, &qword_2261E57B8);
    sub_226198E4C();
    v6 = sub_2261E3D8C();

    return v6;
  }

  return result;
}

uint64_t sub_226198070@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 8))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2261980CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v12, a1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v4 + 8))(v7, a1);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v14 = (*(a2 + 8))(v8, a2);
    (*(v9 + 8))(v11, v8);
    return v14;
  }
}

uint64_t sub_2261982D0(uint64_t a1, id *a2)
{
  result = sub_2261E3DBC();
  *a2 = 0;
  return result;
}

uint64_t sub_226198348(uint64_t a1, id *a2)
{
  v3 = sub_2261E3DCC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2261983C8@<X0>(uint64_t *a2@<X8>)
{
  sub_2261E3DDC();
  v3 = sub_2261E3DAC();

  *a2 = v3;
  return result;
}

uint64_t sub_22619840C()
{
  v0 = sub_2261E3DDC();
  v1 = MEMORY[0x22AA782F0](v0);

  return v1;
}

uint64_t sub_226198448(uint64_t a1)
{
  sub_2261E3DDC();
  sub_2261E3E6C();
}

uint64_t sub_22619849C(uint64_t a1)
{
  sub_2261E3DDC();
  sub_2261E42EC();
  sub_2261E3E6C();
  v1 = sub_2261E430C();

  return v1;
}

uint64_t sub_226198510(void *a1, uint64_t *a2)
{
  v2 = sub_2261E3DDC();
  v4 = v3;
  if (v2 == sub_2261E3DDC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2261E425C();
  }

  return v7 & 1;
}

uint64_t sub_226198598@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2261E3DAC();

  *a2 = v3;
  return result;
}

uint64_t sub_2261985E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2261E3DDC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22619860C(uint64_t a1)
{
  v2 = sub_22619A648(&qword_27D78DDA0, &unk_2261E6144);
  v3 = sub_22619A648(&qword_27D78DF08, &unk_2261E6098);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

char *sub_2261986A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E210, &unk_2261E8B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2261987B0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB0, &qword_2261E57B0);
  v10 = *(sub_2261E39EC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2261E39EC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_226198988(uint64_t a1)
{
  sub_2261E3DDC();
  sub_2261E42EC();
  sub_2261E3E6C();
  v2 = sub_2261E430C();

  return sub_226198A1C(a1, v2);
}

unint64_t sub_226198A1C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2261E3DDC();
      v8 = v7;
      if (v6 == sub_2261E3DDC() && v8 == v9)
      {
        break;
      }

      v11 = sub_2261E425C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_226198B20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_226198B58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF10, &qword_2261E6190);
    v3 = sub_2261E41CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_22619A73C(v4, &v11, &qword_27D78DF18, &qword_2261E6198);
      v5 = v11;
      result = sub_226198988(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_22619A7A4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_226198CB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_226198D68(uint64_t a1, uint64_t a2)
{
  v2 = sub_2261E41EC();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_226198DB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2261E41EC();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_226198E00(uint64_t a1, uint64_t a2)
{
  v2 = sub_2261E41EC();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_226198E4C()
{
  result = qword_27D78DDC0;
  if (!qword_27D78DDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DDB8, &qword_2261E57B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DDC0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_226198EF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2261E41EC();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_226198F74()
{
  result = qword_27D78DDC8;
  if (!qword_27D78DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DDC8);
  }

  return result;
}

unint64_t sub_226198FCC()
{
  result = qword_27D78DDD0;
  if (!qword_27D78DDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DDD0);
  }

  return result;
}

unint64_t sub_226199024()
{
  result = qword_27D78DDD8;
  if (!qword_27D78DDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DDD8);
  }

  return result;
}

unint64_t sub_22619907C()
{
  result = qword_27D78DDE0;
  if (!qword_27D78DDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DDE0);
  }

  return result;
}

unint64_t sub_2261990D4()
{
  result = qword_27D78DDE8;
  if (!qword_27D78DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DDE8);
  }

  return result;
}

unint64_t sub_22619912C()
{
  result = qword_27D78DDF0;
  if (!qword_27D78DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DDF0);
  }

  return result;
}

unint64_t sub_226199184()
{
  result = qword_27D78DDF8;
  if (!qword_27D78DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DDF8);
  }

  return result;
}

unint64_t sub_2261991DC()
{
  result = qword_27D78DE00;
  if (!qword_27D78DE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DE00);
  }

  return result;
}

unint64_t sub_226199234()
{
  result = qword_27D78DE08;
  if (!qword_27D78DE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DE08);
  }

  return result;
}

unint64_t sub_22619928C()
{
  result = qword_27D78DE10;
  if (!qword_27D78DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DE10);
  }

  return result;
}

void sub_22619930C(uint64_t a1)
{
  sub_226199754(319, &qword_27D78DE18, &qword_27D78DE20, &unk_2261E6280, sub_226199688);
  if (v1 <= 0x3F)
  {
    sub_226199704(319, &qword_27D78DE30, &type metadata for TapToRadarDraft.Component, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_226199754(319, &qword_27D78DE38, &qword_27D78DE40, &qword_2261E5EC0, sub_2261997C4);
      if (v3 <= 0x3F)
      {
        sub_226199754(319, &qword_27D78DE50, &qword_27D78DE58, &qword_2261E5EC8, sub_226199840);
        if (v4 <= 0x3F)
        {
          sub_226199754(319, &qword_27D78DE68, &qword_27D78DE70, &qword_2261E5ED0, sub_2261998BC);
          if (v5 <= 0x3F)
          {
            sub_226199754(319, &qword_27D78DE80, &qword_27D78DD88, &unk_2261E5780, sub_226199938);
            if (v6 <= 0x3F)
            {
              sub_226199754(319, &qword_27D78DE90, &qword_27D78DE98, &qword_2261E5ED8, sub_2261999B4);
              if (v7 <= 0x3F)
              {
                sub_226199754(319, &qword_27D78DEA8, &qword_27D78DDB8, &qword_2261E57B8, sub_226199A30);
                if (v8 <= 0x3F)
                {
                  sub_226199B28(319, &qword_27D78DEB8, MEMORY[0x277D839B0], &off_28395B8D8);
                  if (v9 <= 0x3F)
                  {
                    sub_226199754(319, &qword_27D78DEC0, &qword_27D78DEC8, &qword_2261E5EE0, sub_226199AAC);
                    if (v10 <= 0x3F)
                    {
                      sub_226199B28(319, &qword_27D78DED8, &type metadata for TapToRadarDraft.RemoteDeviceSelections, &off_28395B898);
                      if (v11 <= 0x3F)
                      {
                        sub_226199B28(319, &qword_27D78DEE0, &type metadata for TapToRadarDraft.AutoDiagnostics, &off_28395B8A8);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_226199688()
{
  result = qword_27D78DE28;
  if (!qword_27D78DE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DE20, &unk_2261E6280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DE28);
  }

  return result;
}

void sub_226199704(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_226199754(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5();
    v11 = type metadata accessor for URLParameter(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_2261997C4()
{
  result = qword_27D78DE48;
  if (!qword_27D78DE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DE40, &qword_2261E5EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DE48);
  }

  return result;
}

unint64_t sub_226199840()
{
  result = qword_27D78DE60;
  if (!qword_27D78DE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DE58, &qword_2261E5EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DE60);
  }

  return result;
}

unint64_t sub_2261998BC()
{
  result = qword_27D78DE78;
  if (!qword_27D78DE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DE70, &qword_2261E5ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DE78);
  }

  return result;
}

unint64_t sub_226199938()
{
  result = qword_27D78DE88;
  if (!qword_27D78DE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DD88, &unk_2261E5780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DE88);
  }

  return result;
}

unint64_t sub_2261999B4()
{
  result = qword_27D78DEA0;
  if (!qword_27D78DEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DE98, &qword_2261E5ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DEA0);
  }

  return result;
}

unint64_t sub_226199A30()
{
  result = qword_27D78DEB0;
  if (!qword_27D78DEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DDB8, &qword_2261E57B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DEB0);
  }

  return result;
}

unint64_t sub_226199AAC()
{
  result = qword_27D78DED0;
  if (!qword_27D78DED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DEC8, &qword_2261E5EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DED0);
  }

  return result;
}

void sub_226199B28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for URLParameter(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_226199B8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226199BD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Reproducibility(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Reproducibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ErrorCodes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ErrorCodes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.TapToRadarError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.TapToRadarError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22619A1C0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22619A240(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_22619A3C4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_22619A648(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22619A73C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_22619A7A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22619A7B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22619A85C(char a1)
{
  if (!a1)
  {
    return 109;
  }

  if (a1 == 1)
  {
    return 99;
  }

  return 0x64696C61766E69;
}

uint64_t sub_22619A89C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE100000000000000;
  v4 = 99;
  if (v2 != 1)
  {
    v4 = 0x64696C61766E69;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 109;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  v7 = 0xE100000000000000;
  v8 = 99;
  if (*a2 != 1)
  {
    v8 = 0x64696C61766E69;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 109;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE100000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2261E425C();
  }

  return v11 & 1;
}

uint64_t sub_22619A980()
{
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_22619AA0C(uint64_t a1)
{
  sub_2261E3E6C();
}

uint64_t sub_22619AA84(uint64_t a1)
{
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

unint64_t sub_22619AB0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22619C768(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22619AB3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 0xE100000000000000;
  v5 = 99;
  if (v2 != 1)
  {
    v5 = 0x64696C61766E69;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 109;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

char *sub_22619AB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 7) = 0;
  *(v8 + 8) = 0;
  *(v8 + 6) = 0;
  v9 = OBJC_IVAR____TtC17AppAttestInternal15IdentityManager_logger;
  v10 = sub_2261A5168();
  v11 = sub_2261E3CDC();
  (*(*(v11 - 8) + 16))(&v8[v9], v10, v11);
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  *(v8 + 4) = a3;
  *(v8 + 5) = a4;
  return v8;
}

char *sub_22619AC3C()
{
  if (v0[6])
  {
    v1 = v0[6];
  }

  else
  {
    type metadata accessor for BundleRecordController(0);
    v1 = sub_2261A2BE4(v0[2], v0[3], v0[4], v0[5]);
    v0[6] = v1;
  }

  return v1;
}

uint64_t sub_22619ACB0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  if (*a1 && v4 != 1)
  {
    goto LABEL_11;
  }

  v5 = sub_2261E425C();

  if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 4);
  if (!v6)
  {
    return 0;
  }

  v7 = *(a1 + 2);
  if (!v7)
  {
    return 0;
  }

  v8 = *(a1 + 3);
  v9 = *(a1 + 1);
  v10 = *(a2 + 4);
  if (v10 && (*(a2 + 3) == v8 && v10 == v6 || (sub_2261E425C() & 1) != 0))
  {

    v11 = sub_2261E3FEC();
    sub_2261A4EAC(v11, 0xD00000000000002ELL, 0x80000002261EA840, 0xD000000000000069, 0x80000002261EA870, 54);
    return v8;
  }

  v13 = *(a2 + 2);
  if (v13 && (v9 == *(a2 + 1) && v7 == v13 || (sub_2261E425C() & 1) != 0))
  {
    v14 = sub_2261E3CBC();
    v15 = sub_2261E3FEC();
    if (!os_log_type_enabled(v14, v15))
    {
LABEL_20:

      return 0;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Current identifier matches last UUID entry identifier, but UUID mismatch, cannot inherit UUID.";
LABEL_19:
    _os_log_impl(&dword_226177000, v14, v15, v17, v16, 2u);
    MEMORY[0x22AA792E0](v16, -1, -1);
    goto LABEL_20;
  }

  if (v4)
  {

    goto LABEL_24;
  }

  v18 = sub_2261E425C();

  if ((v18 & 1) == 0)
  {

    v28 = *a2;
    if (*a2 && v28 == 1)
    {
    }

    else
    {
      v29 = sub_2261E425C();

      if ((v29 & 1) == 0)
      {

        if (v28)
        {
          v34 = sub_2261E425C();

          if ((v34 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
        }

        v14 = sub_2261E3CBC();
        v15 = sub_2261E3FEC();
        if (!os_log_type_enabled(v14, v15))
        {
          goto LABEL_20;
        }

        v16 = swift_slowAlloc();
        *v16 = 0;
        v17 = "Invalid state, cannot migrate to another main App with different identifiers.";
        goto LABEL_19;
      }
    }

    v30 = sub_2261E3CBC();
    v31 = sub_2261E3FEC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_226177000, v30, v31, "Moving to App Clip from main App, ensuring main App is still installed to inherit UUID.", v32, 2u);
      MEMORY[0x22AA792E0](v32, -1, -1);
    }

    sub_22619AC3C();
    v33 = sub_2261A3908(v9, v7);

    if (v33)
    {
      return v8;
    }

LABEL_11:

    return 0;
  }

LABEL_24:

  v19 = *a2;
  if (v19 == 1)
  {

LABEL_27:
    v21 = sub_2261E3CBC();
    v22 = sub_2261E3FEC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_226177000, v21, v22, "Moving across App Clips, inheriting previous UUID.", v23, 2u);
      MEMORY[0x22AA792E0](v23, -1, -1);
    }

    goto LABEL_30;
  }

  v20 = sub_2261E425C();

  if (v20)
  {
    goto LABEL_27;
  }

LABEL_30:
  if (!v19)
  {

    goto LABEL_34;
  }

  v24 = sub_2261E425C();

  if (v24)
  {
LABEL_34:
    v25 = sub_2261E3CBC();
    v26 = sub_2261E3FEC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_226177000, v25, v26, "Upgrading to main App, inheriting App Clip UUID.", v27, 2u);
      MEMORY[0x22AA792E0](v27, -1, -1);
    }
  }

  return v8;
}

void sub_22619B27C()
{
  v0 = sub_2261E3E2C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_22619AC3C();
  sub_2261A2CB8(v36, v1);

  if (*(&v36[0] + 1) != 1)
  {
    v37 = v36[0];
    v38 = v36[1];
    v39 = v36[2];
    v2 = sub_2261A54B0();
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      v6 = sub_2261A5588();
      if (v7)
      {
        v8 = v6;
        v9 = v7;

        v10 = sub_2261A30F4();

        if (sub_2261A3324(v10, 4u))
        {
          v4 = v8;
          v5 = v9;
        }
      }

      sub_22619B938();
      v11 = sub_2261E1EC4(v4, v5);
      v13 = v12;
      v15 = v14;

      if ((v15 & 0x100) != 0)
      {
        v43 = v37;
        sub_22619A7B4(&v43, &qword_27D78DE20, &unk_2261E6280);
        v44 = v38;
        sub_22619A7B4(&v44, &qword_27D78DE20, &unk_2261E6280);
        v45 = v39;
        sub_22619A7B4(&v45, &qword_27D78DE20, &unk_2261E6280);
        sub_22619C7B4();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v29 = v11;
        *(v29 + 8) = v13;
        *(v29 + 16) = v15 & 1;
      }

      else
      {
        type metadata accessor for CFData(0);
        v17 = v16;

        v35 = sub_2261DFE64(v11, v13, v17);
        v19 = v18;
        v21 = v20;
        sub_22619C81C(v11, v13, v15, 0);

        if ((v21 & 0x100) != 0)
        {
          v46 = v37;
          sub_22619C838(v35, v19);
          sub_22619A7B4(&v46, &qword_27D78DE20, &unk_2261E6280);
          v47 = v38;
          sub_22619A7B4(&v47, &qword_27D78DE20, &unk_2261E6280);
          v48 = v39;
          sub_22619A7B4(&v48, &qword_27D78DE20, &unk_2261E6280);
          sub_22619C7B4();
          swift_willThrowTypedImpl();
          swift_allocError();
          *v30 = v35;
          *(v30 + 8) = v19;
          *(v30 + 16) = v21 & 1;
          sub_2261795CC(v35, v19, v21, 1);
        }

        else if (v35)
        {
          v58 = v21;
          v22 = v35;
          v23 = sub_2261E3BBC();
          v25 = v24;
          sub_2261E3E1C();
          sub_2261E3DFC();
          v27 = v26;
          sub_22619C840(v23, v25);
          if (v27)
          {
            v49 = v37;
            sub_22619A7B4(&v49, &qword_27D78DE20, &unk_2261E6280);
            v50 = v38;
            sub_22619A7B4(&v50, &qword_27D78DE20, &unk_2261E6280);
            v51 = v39;
            sub_22619A7B4(&v51, &qword_27D78DE20, &unk_2261E6280);
          }

          else
          {
            v31 = sub_2261E3FEC();
            sub_2261E410C();

            v55 = v39;
            v56 = v38;
            v57 = v37;
            sub_22619C894();
            v32 = sub_2261E423C();
            v34 = v33;
            sub_22619A7B4(&v57, &qword_27D78DE20, &unk_2261E6280);
            sub_22619A7B4(&v56, &qword_27D78DE20, &unk_2261E6280);
            sub_22619A7B4(&v55, &qword_27D78DE20, &unk_2261E6280);
            MEMORY[0x22AA782B0](v32, v34);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            sub_2261A4EAC(v31, 0xD000000000000018, 0x80000002261EA910, 0xD000000000000069, 0x80000002261EA870, 120);
          }

          v28 = v58;
          sub_2261795CC(v35, v19, v58, 0);
          sub_2261795CC(v35, v19, v28, 0);
        }

        else
        {
          sub_2261795CC(0, v19, v21, 0);
          v52 = v37;
          sub_22619A7B4(&v52, &qword_27D78DE20, &unk_2261E6280);
          v53 = v38;
          sub_22619A7B4(&v53, &qword_27D78DE20, &unk_2261E6280);
          v54 = v39;
          sub_22619A7B4(&v54, &qword_27D78DE20, &unk_2261E6280);
        }
      }
    }

    else
    {
      v40 = v37;
      sub_22619A7B4(&v40, &qword_27D78DE20, &unk_2261E6280);
      v41 = v38;
      sub_22619A7B4(&v41, &qword_27D78DE20, &unk_2261E6280);
      v42 = v39;
      sub_22619A7B4(&v42, &qword_27D78DE20, &unk_2261E6280);
    }
  }
}

uint64_t sub_22619B938()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = v0;
    type metadata accessor for KeychainController(0);
    v3 = sub_2261A2B48();
    v4 = *v3;
    v5 = v3[1];

    v1 = sub_2261DFDC8(v4, v5);
    *(v2 + 56) = v1;
  }

  return v1;
}

uint64_t sub_22619B9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  result = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - v8;
  if (!a2)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 2;
LABEL_28:
    *a3 = v26;
    *(a3 + 8) = v22;
    *(a3 + 16) = v23;
    *(a3 + 24) = v24;
    *(a3 + 32) = a2;
    *(a3 + 40) = v25;
    return result;
  }

  v10 = sub_22619AC3C();
  sub_2261A2CB8(v37, v10);

  if (*(&v37[0] + 1) == 1)
  {
LABEL_15:
    v24 = 0;
    a2 = 0;
    v22 = 0x80000002261EA8E0;
    v23 = 1;
    v26 = 0xD000000000000026;
    v25 = 1;
    goto LABEL_28;
  }

  v38 = v37[0];
  v39 = v37[1];
  v40 = v37[2];
  v11 = sub_2261A54B0();
  if (!v12)
  {
    v41 = v38;
    sub_22619A7B4(&v41, &qword_27D78DE20, &unk_2261E6280);
    v42 = v39;
    sub_22619A7B4(&v42, &qword_27D78DE20, &unk_2261E6280);
    v43[0] = v40;
    result = sub_22619A7B4(v43, &qword_27D78DE20, &unk_2261E6280);
    goto LABEL_15;
  }

  v13 = v11;
  v14 = v12;
  *&v43[0] = a1;
  *(&v43[0] + 1) = a2;
  *&v42 = 58;
  *(&v42 + 1) = 0xE100000000000000;
  sub_22619C8E8();
  v15 = sub_2261E407C();
  v16 = v15;
  v17 = v15[2];
  if (v17 == 1)
  {
    v24 = v15[4];
    a2 = v15[5];

    v36 = v13;
    v27 = 0;
    v23 = v14;
LABEL_18:
    v41 = v38;
    sub_22619A7B4(&v41, &qword_27D78DE20, &unk_2261E6280);
    v42 = v39;
    sub_22619A7B4(&v42, &qword_27D78DE20, &unk_2261E6280);
    v43[0] = v40;
    sub_22619A7B4(v43, &qword_27D78DE20, &unk_2261E6280);

    v22 = v36;
    v21 = v27;
LABEL_27:
    v25 = 0;
    v26 = v21;
    goto LABEL_28;
  }

  if (v17 != 3)
  {
    v23 = 0;
    v36 = 0;
    a2 = 0;
    v24 = 0;
    v27 = 2;
    goto LABEL_18;
  }

  v18 = v15[4];
  v19 = v15[5];
  if (v18 == 109 && v19 == 0xE100000000000000 || (v20 = 0, (sub_2261E425C() & 1) != 0))
  {
    v20 = 1;
  }

  if (v18 == 99 && v19 == 0xE100000000000000)
  {
    v21 = 1;
  }

  else
  {
    v28 = sub_2261E425C();
    v21 = v28 & 1;
    if (((v20 | v28) & 1) == 0)
    {

      v21 = 2;
      goto LABEL_25;
    }
  }

  v29 = sub_2261E425C();

  if (v29)
  {
LABEL_25:
    v41 = v38;
    sub_22619A7B4(&v41, &qword_27D78DE20, &unk_2261E6280);
    v42 = v39;
    sub_22619A7B4(&v42, &qword_27D78DE20, &unk_2261E6280);
    v43[0] = v40;
    sub_22619A7B4(v43, &qword_27D78DE20, &unk_2261E6280);

    goto LABEL_26;
  }

  if (v16[2] < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v24 = v16[8];
    a2 = v16[9];

    sub_2261E3C0C();
    v30 = sub_2261E3C3C();
    if ((*(*(v30 - 8) + 48))(v9, 1, v30) == 1)
    {
      v41 = v38;
      sub_22619A7B4(&v41, &qword_27D78DE20, &unk_2261E6280);
      v42 = v39;
      sub_22619A7B4(&v42, &qword_27D78DE20, &unk_2261E6280);
      v43[0] = v40;
      sub_22619A7B4(v43, &qword_27D78DE20, &unk_2261E6280);

      result = sub_22619A7B4(v9, &qword_27D78DF28, &unk_2261E6FD0);
LABEL_26:
      v24 = 0;
      a2 = 0;
      v22 = 0;
      v23 = 0;
      goto LABEL_27;
    }

    result = sub_22619A7B4(v9, &qword_27D78DF28, &unk_2261E6FD0);
    if (v16[2] >= 2uLL)
    {
      v22 = v16[6];
      v23 = v16[7];

      v31 = sub_2261A30F4();

      if (sub_2261A3324(v31, 4u))
      {
        v35 = sub_2261A5588();
        v36 = v32;
        v41 = v38;
        sub_22619A7B4(&v41, &qword_27D78DE20, &unk_2261E6280);
        v42 = v39;
        sub_22619A7B4(&v42, &qword_27D78DE20, &unk_2261E6280);
        v43[0] = v40;
        v33 = v36;
        sub_22619A7B4(v43, &qword_27D78DE20, &unk_2261E6280);
        if (v33)
        {
        }
      }

      else
      {
        v41 = v38;
        sub_22619A7B4(&v41, &qword_27D78DE20, &unk_2261E6280);
        v42 = v39;
        sub_22619A7B4(&v42, &qword_27D78DE20, &unk_2261E6280);
        v43[0] = v40;
        sub_22619A7B4(v43, &qword_27D78DE20, &unk_2261E6280);
      }

      v34 = sub_2261E3EBC();

      if (v34)
      {
        result = swift_bridgeObjectRelease_n();
      }

      else
      {

        v24 = 0;
        a2 = 0;
        v22 = 0;
        v23 = 0;
        v21 = 2;
      }

      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22619C044()
{
  v0 = sub_22619C394();
  v1 = sub_2261A2BCC();
  v2 = *v1;
  v3 = v1[1];

  v4 = MEMORY[0x277D837D0];
  v5 = isRunningInRecovery();
  sub_2261A10B4(v2, v3, v5 & 1, v4, &v18);

  v6 = v19;
  if (v19)
  {
    v7 = v18;
    if (v18 == 0x6D706F6C65766564 && v19 == 0xEB00000000746E65 || (sub_2261E425C() & 1) != 0)
    {

      v8 = sub_2261E400C();
      sub_2261A4EAC(v8, 0xD000000000000025, 0x80000002261EA980, 0xD000000000000069, 0x80000002261EA870, 201);
      return 0;
    }

    if (v7 == 0x69746375646F7270 && v6 == 0xEA00000000006E6FLL)
    {

LABEL_10:
      v11 = sub_2261E400C();
      sub_2261A4EAC(v11, 0xD000000000000024, 0x80000002261EA950, 0xD000000000000069, 0x80000002261EA870, 206);
      return 1;
    }

    v10 = sub_2261E425C();

    if (v10)
    {
      goto LABEL_10;
    }
  }

  sub_22619AC3C();
  v12 = sub_2261A30F4();

  if (!sub_2261A3324(v12, 5u))
  {

    v13 = sub_2261A30F4();

    if ((v13 - 3) <= 3u)
    {

      v14 = sub_2261A3DA0();

      if (v14)
      {

        v15 = sub_2261A3EA8();

        if (v15)
        {
          sub_22619C93C();
          v16 = sub_22619CBEC;
        }

        else
        {

          v17 = sub_2261A3EB4();

          sub_22619C93C();
          if ((v17 & 1) == 0)
          {
            sub_2261C83C4(0x676F6C5F65636E6FLL, 0xEE006E656B6F745FLL, sub_22619C9F0);
            return 0;
          }

          v16 = sub_22619CA58;
        }
      }

      else
      {
        sub_22619C93C();
        v16 = sub_22619C988;
      }

      sub_2261C83C4(0x676F6C5F65636E6FLL, 0xEE006E656B6F745FLL, v16);
    }
  }

  return 1;
}

id sub_22619C394()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[8];
  }

  else
  {
    type metadata accessor for SecurityController(0);
    v3 = v0;
    v4 = sub_2261A0FCC(v0[2], v0[3], v0[4], v0[5]);
    v5 = v0[8];
    v3[8] = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_22619C400()
{
  sub_22619AC3C();
  v0 = sub_2261A30F4();

  if (v0 == 6)
  {
    return 2;
  }

  else
  {
    return v0 == 4;
  }
}

double sub_22619C44C@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_22619AC3C();
  sub_2261A2CB8(v5, v2);

  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

uint64_t sub_22619C49C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_22619C4AC(char a1)
{
  if (a1)
  {
    return 112;
  }

  else
  {
    return 100;
  }
}

uint64_t sub_22619C4C4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 112;
  }

  else
  {
    v2 = 100;
  }

  if (*a2)
  {
    v3 = 112;
  }

  else
  {
    v3 = 100;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2261E425C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_22619C534()
{
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_22619C594(uint64_t a1)
{
  sub_2261E3E6C();
}

uint64_t sub_22619C5D8(uint64_t a1)
{
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_22619C634@<X0>(char *a2@<X8>)
{
  v3 = sub_2261E41EC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_22619C694(uint64_t *a1@<X8>)
{
  v2 = 100;
  if (*v1)
  {
    v2 = 112;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_22619C6B4()
{

  v1 = OBJC_IVAR____TtC17AppAttestInternal15IdentityManager_logger;
  v2 = sub_2261E3CDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_22619C768(uint64_t a1, uint64_t a2)
{
  v2 = sub_2261E41EC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22619C7B4()
{
  result = qword_28136E240[0];
  if (!qword_28136E240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28136E240);
  }

  return result;
}

uint64_t sub_22619C81C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return sub_22619C830(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_22619C840(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_22619C894()
{
  result = qword_28136E980[0];
  if (!qword_28136E980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28136E980);
  }

  return result;
}

unint64_t sub_22619C8E8()
{
  result = qword_28136E228;
  if (!qword_28136E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136E228);
  }

  return result;
}

unint64_t sub_22619C93C()
{
  result = qword_28136E1D8;
  if (!qword_28136E1D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28136E1D8);
  }

  return result;
}

uint64_t sub_22619CA58()
{
  v0 = sub_22619AC3C();
  sub_2261A2CB8(v6, v0);

  if (*(&v6[0] + 1) == 1 || (v7 = v6[0], v8 = v6[1], v9 = v6[2], v1 = sub_2261A54B0(), v3 = v2, v10 = v7, sub_22619A7B4(&v10, &qword_27D78DE20, &unk_2261E6280), v11 = v8, sub_22619A7B4(&v11, &qword_27D78DE20, &unk_2261E6280), v12 = v9, sub_22619A7B4(&v12, &qword_27D78DE20, &unk_2261E6280), !v3))
  {

    v1 = 0;
    v3 = 0xE000000000000000;
  }

  v4 = sub_2261E3FEC();
  sub_2261E410C();

  MEMORY[0x22AA782B0](v1, v3);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v4, 0xD000000000000029, 0x80000002261EAAA0, 0xD000000000000069, 0x80000002261EA870, 238);
}

uint64_t sub_22619CBEC()
{
  v0 = sub_22619AC3C();
  sub_2261A2CB8(v6, v0);

  if (*(&v6[0] + 1) == 1 || (v7 = v6[0], v8 = v6[1], v9 = v6[2], v1 = sub_2261A54B0(), v3 = v2, v10 = v7, sub_22619A7B4(&v10, &qword_27D78DE20, &unk_2261E6280), v11 = v8, sub_22619A7B4(&v11, &qword_27D78DE20, &unk_2261E6280), v12 = v9, sub_22619A7B4(&v12, &qword_27D78DE20, &unk_2261E6280), !v3))
  {

    v1 = 0;
    v3 = 0xE000000000000000;
  }

  v4 = sub_2261E3FEC();
  sub_2261E410C();

  MEMORY[0x22AA782B0](v1, v3);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v4, 0xD000000000000029, 0x80000002261EAA70, 0xD000000000000069, 0x80000002261EA870, 226);
}

unint64_t sub_22619CD84()
{
  result = qword_27D78DF30;
  if (!qword_27D78DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DF30);
  }

  return result;
}

unint64_t sub_22619CDDC()
{
  result = qword_27D78DF38;
  if (!qword_27D78DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DF38);
  }

  return result;
}

uint64_t type metadata accessor for IdentityManager(uint64_t a1)
{
  result = qword_28136F0F0;
  if (!qword_28136F0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22619CE94(uint64_t a1)
{
  result = sub_2261E3CDC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22619CF3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22619CF98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentityManager.Environment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentityManager.Environment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22619D16C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22619D18C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_22619D1CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

const __CFData *sub_22619D21C(uint64_t a1)
{
  v2 = sub_2261E3D3C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2261E3D2C();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v35 = *(a1 + 8);
  v36 = v35;
  sub_22619D608(&v36, v31);
  sub_2261E3BCC();
  v10 = *(&v35 + 1);
  v9 = v35;
  sub_22619D948(&qword_28136E230, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_2261E3D1C();
  sub_22619D8F4(v9, v10);
  v11 = v27;
  sub_22619D714(v9, v10, v5);
  v27 = v11;
  sub_22619C840(v9, v10);
  sub_2261E3D0C();
  (*(v3 + 8))(v5, v2);
  v33 = v6;
  v34 = sub_22619D948(&qword_28136E238, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  v13 = v28;
  (*(v28 + 16))(boxed_opaque_existential_1, v8, v6);
  __swift_project_boxed_opaque_existential_0(v31, v33);
  sub_2261E3ADC();
  (*(v13 + 8))(v8, v6);
  v14 = v29;
  v15 = v30;
  __swift_destroy_boxed_opaque_existential_0(v31);
  sub_22619C840(v35, *(&v35 + 1));
  *&v35 = v14;
  *(&v35 + 1) = v15;
  v16 = *v37;
  v17 = sub_2261E3B8C();
  v18 = sub_2261C8E9C(v16, v17);
  v20 = v19;
  v22 = v21;

  if ((v22 & 0x100) != 0)
  {
    v31[0] = v18;
    v31[1] = v20;
    v32 = v22 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v24 = v18;
    *(v24 + 8) = v20;
    *(v24 + 16) = v22 & 1;
    sub_22619C840(v35, *(&v35 + 1));
  }

  else
  {
    if (v18)
    {
      v23 = v18;
      v17 = sub_2261E3BBC();
      sub_2261795CC(v18, v20, v22, 0);
      sub_2261795CC(v18, v20, v22, 0);
    }

    else
    {
      v17 = 0;
    }

    sub_22619C840(v14, v15);
  }

  return v17;
}

uint64_t sub_22619D664@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

_BYTE *sub_22619D680@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_22619DC94(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_22619DD4C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_22619DDC8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_22619D714(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_2261E3D3C();
      sub_22619D948(&qword_28136E230, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_2261E3CFC();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22619DBB4(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_22619DBB4(v5, v6);
  }

  sub_2261E3D3C();
  sub_22619D948(&qword_28136E230, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_2261E3CFC();
}

uint64_t sub_22619D8F4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22619D948(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22619D9F4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_22619D8F4(result, a2);

    return sub_22619D8F4(a3, a4);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_17AppAttestInternal18SecurityControllerC6CDHashVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22619DABC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22619DB04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for SecKey()
{
  if (!qword_28136E180)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28136E180);
    }
  }
}

uint64_t sub_22619DBB4(uint64_t a1, uint64_t a2)
{
  result = sub_2261E3A6C();
  if (!result || (result = sub_2261E3A8C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_2261E3A7C();
      sub_2261E3D3C();
      sub_22619D948(&qword_28136E230, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_2261E3CFC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22619DC94(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_22619DD4C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2261E3A9C();
  swift_allocObject();
  result = sub_2261E3A5C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2261E3B6C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22619DDC8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2261E3A9C();
  swift_allocObject();
  result = sub_2261E3A5C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22619DE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = swift_allocObject();
  sub_22619DEBC(a1, a2, a3, a4, v5);
  return v10;
}

uint64_t sub_22619DEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = 514;
  v11 = OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager_logger;
  v12 = sub_2261A52B8();
  v13 = sub_2261E3CDC();
  (*(*(v13 - 8) + 16))(v5 + v11, v12, v13);
  *(v5 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___bundleRecordController) = 0;
  *(v5 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___securityController) = 0;
  *(v5 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___allowlistedDaemons) = 0;
  *(v5 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___allowlistedExtensions) = 0;
  *(v5 + 20) = a1;
  *(v5 + 28) = a2;
  *(v5 + 36) = a3;
  *(v5 + 44) = a4;
  *(v5 + 52) = a5;
  return v5;
}

uint64_t sub_22619DFA0(uint64_t a1, const char *a2)
{
  if ((sub_22619E154(a1, a2) & 1) == 0)
  {
    v4 = sub_2261E3FFC();
    v5 = 0xD00000000000001ALL;
    v6 = 0x80000002261EAC60;
    v7 = 37;
LABEL_13:
    sub_2261A4EAC(v4, v5, v6, 0xD00000000000006CLL, 0x80000002261EAC80, v7);
    return 0;
  }

  if ((sub_22619E180() & 1) == 0)
  {
    v4 = sub_2261E3FFC();
    v5 = 0xD000000000000029;
    v6 = 0x80000002261EACF0;
    v7 = 42;
    goto LABEL_13;
  }

  if ((sub_22619E2A8() & 1) == 0)
  {
    v4 = sub_2261E3FFC();
    v5 = 0xD000000000000028;
    v6 = 0x80000002261EAD20;
    v7 = 47;
    goto LABEL_13;
  }

  sub_22619E470();
  v2 = sub_2261A30F4();

  if (v2 - 3 < 2)
  {
    return 1;
  }

  if (v2 == 6)
  {
    return 0;
  }

  if (v2 == 5)
  {

    return sub_22619E4F4();
  }

  else
  {

    return sub_22619EB90();
  }
}

uint64_t sub_22619E154(uint64_t a1, const char *a2)
{
  v3 = *(v2 + 16);
  if (v3 == 2)
  {
    LOBYTE(v3) = DeviceIdentityIsSupported();
    *(v2 + 16) = v3;
  }

  return v3 & 1;
}

uint64_t sub_22619E180()
{
  LODWORD(v1) = *(v0 + 17);
  if (v1 == 2)
  {
    if (*(v0 + 52))
    {
      if (*(v0 + 52) == 1)
      {
        v2 = MEMORY[0x277D84FA0];
LABEL_8:
        v3 = [objc_opt_self() processInfo];
        v4 = [v3 processName];

        v1 = sub_2261E3DDC();
        v6 = v5;

        LOBYTE(v1) = sub_22619F5B4(v1, v6, v2);

        *(v0 + 17) = v1 & 1;
        return v1 & 1;
      }

      v2 = sub_2261A0370(&unk_28395C150);
    }

    else
    {
      v2 = sub_2261A0370(&unk_28395C110);
    }

    swift_arrayDestroy();
    goto LABEL_8;
  }

  return v1 & 1;
}

uint64_t sub_22619E2A8()
{
  v1 = v0;
  v2 = sub_22619F3F8();
  sub_2261A10B4(0xD000000000000017, 0x80000002261EAD50, 1, MEMORY[0x277D839B0], v11);

  if (LOBYTE(v11[0]) == 2)
  {
    goto LABEL_10;
  }

  if ((v11[0] & 1) == 0)
  {
    goto LABEL_10;
  }

  v3 = OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___securityController;
  v4 = *(v1 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___securityController);
  sub_2261A10B4(0xD000000000000025, 0x80000002261EAD70, 1, MEMORY[0x277D839B0], v11);

  if (LOBYTE(v11[0]) == 2 || (v11[0] & 1) == 0)
  {
    goto LABEL_10;
  }

  v13 = *(v1 + 52);
  v12 = 2;
  sub_22619F798();
  sub_2261E3EFC();
  sub_2261E3EFC();
  if (v11[0] == v9 && v11[1] == v10)
  {
  }

  else
  {
    v5 = sub_2261E425C();

    if ((v5 & 1) == 0)
    {
      v7 = 1;
      return v7 & 1;
    }
  }

  v6 = *(v1 + v3);
  sub_2261A10B4(0xD00000000000001FLL, 0x80000002261EADA0, 1, MEMORY[0x277D839B0], v11);

  v7 = v11[0];
  if (LOBYTE(v11[0]) == 2)
  {
LABEL_10:
    v7 = 0;
  }

  return v7 & 1;
}

char *sub_22619E470()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___bundleRecordController;
  if (*(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___bundleRecordController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___bundleRecordController);
  }

  else
  {
    type metadata accessor for BundleRecordController(0);
    v2 = sub_2261A2BE4(*(v0 + 20), *(v0 + 28), *(v0 + 36), *(v0 + 44));
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22619E4F4()
{
  v1 = v0;
  sub_22619E470();
  v2 = sub_2261A30F4();

  if (sub_2261A3324(v2, 5u))
  {
    v3 = sub_22619F3F8();
    v4 = MEMORY[0x277D839B0];
    v5 = isRunningInRecovery();
    sub_2261A10B4(0xD000000000000023, 0x80000002261EADE0, v5 & 1, v4, &v39);

    if (v39 == 2 || (v39 & 1) == 0)
    {
      v18 = sub_2261E3FFC();
      *&v39 = 0;
      *(&v39 + 1) = 0xE000000000000000;
      sub_2261E410C();

      sub_2261A2CB8(&v39, v19);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
      v20 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v20);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v21 = 0xD00000000000002BLL;
      v22 = v18;
      v23 = 0x80000002261EAE10;
      v24 = 112;
    }

    else
    {
      v6 = OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___securityController;
      v7 = *(v1 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___securityController);
      v8 = MEMORY[0x277D837D0];
      v9 = isRunningInRecovery();
      sub_2261A10B4(0xD000000000000016, 0x80000002261EAE40, v9 & 1, v8, &v39);

      v10 = *(&v39 + 1);
      if (*(&v39 + 1))
      {
        v11 = v39;
        if (sub_2261E3EBC())
        {
          v12 = sub_22619F47C();
          v13 = sub_22619F5B4(v11, v10, v12);

          if (v13)
          {
            v14 = *(v1 + v6);
            v15 = sub_2261A16F8();

            if (v15)
            {
              return 1;
            }

            v34 = sub_2261E3FFC();
            *&v39 = 0;
            *(&v39 + 1) = 0xE000000000000000;
            sub_2261E410C();
            v38 = v39;
            MEMORY[0x22AA782B0](0xD000000000000032, 0x80000002261EAF00);

            sub_2261A2CB8(&v39, v35);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
            v36 = sub_2261E3E3C();
            MEMORY[0x22AA782B0](v36);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            v21 = v38;
            v22 = v34;
            v23 = *(&v38 + 1);
            v24 = 132;
          }

          else
          {
            v31 = sub_2261E3FFC();
            *&v39 = 0;
            *(&v39 + 1) = 0xE000000000000000;
            sub_2261E410C();

            sub_2261A2CB8(&v39, v32);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
            v33 = sub_2261E3E3C();
            MEMORY[0x22AA782B0](v33);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            v21 = 0xD000000000000024;
            v22 = v31;
            v23 = 0x80000002261EAED0;
            v24 = 127;
          }
        }

        else
        {

          v28 = sub_2261E3FFC();
          *&v39 = 0;
          *(&v39 + 1) = 0xE000000000000000;
          sub_2261E410C();

          sub_2261A2CB8(&v39, v29);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
          v30 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v30);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          v21 = 0xD000000000000024;
          v22 = v28;
          v23 = 0x80000002261EAEA0;
          v24 = 122;
        }
      }

      else
      {
        v25 = sub_2261E3FFC();
        *&v39 = 0;
        *(&v39 + 1) = 0xE000000000000000;
        sub_2261E410C();
        v37 = v39;
        MEMORY[0x22AA782B0](0xD00000000000003FLL, 0x80000002261EAE60);

        sub_2261A2CB8(&v39, v26);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
        v27 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v27);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        v21 = v37;
        v22 = v25;
        v23 = *(&v37 + 1);
        v24 = 117;
      }
    }

    sub_2261A4EAC(v22, v21, v23, 0xD00000000000006CLL, 0x80000002261EAC80, v24);
  }

  else
  {
    v17 = sub_2261E400C();
    sub_2261A4EAC(v17, 0xD00000000000001DLL, 0x80000002261EADC0, 0xD00000000000006CLL, 0x80000002261EAC80, 106);
  }

  return 0;
}

uint64_t sub_22619EB90()
{
  v1 = v0;
  sub_22619E470();
  v2 = sub_2261A30F4();

  if ((v2 - 3) >= 4u)
  {

    v7 = sub_2261A30F4();

    if (sub_2261A3324(v7, 0) || (, v9 = sub_2261A30F4(), , sub_2261A3324(v9, 1u)) && (*sub_2261A0970() & 1) == 0)
    {
      nullsub_1();
      if ((sub_2261A0D3C(0) & 1) == 0)
      {
        v3 = sub_2261E400C();
        v4 = 0xD000000000000032;
        v5 = 0x80000002261EB0B0;
        v6 = 153;
        goto LABEL_14;
      }
    }

    else
    {
      v10 = sub_22619F3F8();
      v11 = MEMORY[0x277D839B0];
      v12 = isRunningInRecovery();
      sub_2261A10B4(0xD000000000000026, 0x80000002261EAF70, v12 & 1, v11, &v45);

      if (v45 == 2 || (v45 & 1) == 0)
      {
        v3 = sub_2261E3FFC();
        v4 = 0xD000000000000028;
        v5 = 0x80000002261EAFA0;
        v6 = 162;
        goto LABEL_14;
      }

      sub_2261A2CB8(&v42, v13);

      v14 = *(&v42 + 1);
      if (*(&v42 + 1) == 1)
      {
        v15 = sub_2261E3FFC();
        *&v45 = 0;
        *(&v45 + 1) = 0xE000000000000000;
        sub_2261E410C();

        *&v48 = 0xD00000000000001ELL;
        *(&v48 + 1) = 0x80000002261EAFD0;

        sub_2261A2CB8(&v45, v16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
        v17 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v17);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        v18 = v48;
        v19 = v15;
        v20 = *(&v48 + 1);
        v21 = 167;
LABEL_23:
        sub_2261A4EAC(v19, v18, v20, 0xD00000000000006CLL, 0x80000002261EAC80, v21);

        return 0;
      }

      v22 = v42;
      v46 = v42;
      if (!*(&v42 + 1))
      {
        v47 = v43;
        sub_22619F7EC(&v47);
        v48 = v44;
        sub_22619F7EC(&v48);
        v24 = sub_2261E3FFC();
        *&v45 = 0;
        *(&v45 + 1) = 0xE000000000000000;
        sub_2261E410C();

        sub_2261A2CB8(&v45, v25);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
        v26 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v26);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        v18 = 0xD00000000000001DLL;
        v19 = v24;
        v20 = 0x80000002261EAFF0;
        v21 = 172;
        goto LABEL_23;
      }

      sub_22619F854(&v46, &v45);
      if ((sub_2261E3EBC() & 1) == 0)
      {
        sub_22619F7EC(&v46);
        sub_22619F7EC(&v46);
        v47 = v43;
        sub_22619F7EC(&v47);
        v48 = v44;
        sub_22619F7EC(&v48);
        v27 = sub_2261E3FFC();
        *&v45 = 0;
        *(&v45 + 1) = 0xE000000000000000;
        sub_2261E410C();

        sub_2261A2CB8(&v45, v28);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
        v29 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v29);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        v18 = 0xD000000000000027;
        v19 = v27;
        v20 = 0x80000002261EB010;
        v21 = 177;
        goto LABEL_23;
      }

      v47 = v43;
      v23 = v43;
      sub_22619F7EC(&v46);
      if (!*(&v23 + 1))
      {
        sub_22619F7EC(&v46);
        v45 = v44;
        sub_22619F7EC(&v45);
        return 0;
      }

      v48 = v44;
      sub_22619F7EC(&v48);
      if (v23 == __PAIR128__(0xEA00000000003030, 0x3030303030303030))
      {
        sub_22619F7EC(&v47);
      }

      else
      {
        v30 = sub_2261E425C();
        sub_22619F7EC(&v47);
        if ((v30 & 1) == 0)
        {
          sub_22619F7EC(&v46);
          return 0;
        }
      }

      v31 = sub_22619F6AC();
      v32 = sub_22619F5B4(v22, v14, v31);

      sub_22619F7EC(&v46);
      if ((v32 & 1) == 0)
      {
        v38 = sub_2261E3FFC();
        *&v45 = 0;
        *(&v45 + 1) = 0xE000000000000000;
        sub_2261E410C();

        sub_2261A2CB8(&v45, v39);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
        v40 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v40);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        v18 = 0xD000000000000027;
        v19 = v38;
        v20 = 0x80000002261EB040;
        v21 = 188;
        goto LABEL_23;
      }

      v33 = *(v1 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___securityController);
      v34 = sub_2261A16F8();

      if (!v34)
      {
        v35 = sub_2261E3FFC();
        *&v45 = 0;
        *(&v45 + 1) = 0xE000000000000000;
        sub_2261E410C();
        v41 = v45;
        MEMORY[0x22AA782B0](0xD000000000000035, 0x80000002261EB070);

        sub_2261A2CB8(&v45, v36);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
        v37 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v37);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        v18 = v41;
        v19 = v35;
        v20 = *(&v41 + 1);
        v21 = 193;
        goto LABEL_23;
      }
    }

    return 1;
  }

  v3 = sub_2261E400C();
  v4 = 0xD000000000000020;
  v5 = 0x80000002261EAF40;
  v6 = 141;
LABEL_14:
  sub_2261A4EAC(v3, v4, v5, 0xD00000000000006CLL, 0x80000002261EAC80, v6);
  return 0;
}

id sub_22619F3F8()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___securityController;
  v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___securityController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___securityController);
  }

  else
  {
    type metadata accessor for SecurityController(0);
    v4 = v0;
    v5 = sub_2261A0FCC(*(v0 + 20), *(v0 + 28), *(v0 + 36), *(v0 + 44));
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_22619F47C()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___allowlistedDaemons;
  if (*(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___allowlistedDaemons))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___allowlistedDaemons);
  }

  else
  {
    v2 = sub_2261A0370(&unk_28395C220);
    swift_arrayDestroy();
    v6 = v2;
    if (sub_2261CF5C8(0xD000000000000018, 0x80000002261EB1F0))
    {
      v3 = sub_2261E400C();
      sub_2261A4EAC(v3, 0xD000000000000024, 0x80000002261EB240, 0xD00000000000006CLL, 0x80000002261EAC80, 282);
      sub_22619FAAC(&v5, 0xD000000000000016, 0x80000002261EB270);

      v2 = v6;
    }

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22619F5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2261E42EC();
  sub_2261E3E6C();
  v6 = sub_2261E430C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2261E425C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_22619F6AC()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___allowlistedExtensions;
  if (*(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___allowlistedExtensions))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___allowlistedExtensions);
  }

  else
  {
    v2 = sub_2261A0370(&unk_28395C270);
    sub_2261A04D8(&unk_28395C290);
    v5 = v2;
    if (sub_2261CF5C8(0xD000000000000018, 0x80000002261EB1F0))
    {
      sub_22619FAAC(&v4, 0xD000000000000022, 0x80000002261EB210);

      v2 = v5;
    }

    *(v0 + v1) = v2;
  }

  return v2;
}

unint64_t sub_22619F798()
{
  result = qword_28136E970;
  if (!qword_28136E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136E970);
  }

  return result;
}

uint64_t sub_22619F7EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22619F854(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22619F8C4()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager_logger;
  v2 = sub_2261E3CDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EligibilityManager(uint64_t a1)
{
  result = qword_28136EF68;
  if (!qword_28136EF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22619F9F4(uint64_t a1)
{
  result = sub_2261E3CDC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22619FAAC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2261E42EC();
  sub_2261E3E6C();
  v8 = sub_2261E430C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2261E425C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_22619FE5C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22619FBFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF50, &qword_2261E67E8);
  result = sub_2261E40DC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2261E42EC();
      sub_2261E3E6C();
      result = sub_2261E430C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22619FE5C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22619FBFC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22619FFDC();
      goto LABEL_16;
    }

    sub_2261A0138(v8 + 1);
  }

  v10 = *v4;
  sub_2261E42EC();
  sub_2261E3E6C();
  result = sub_2261E430C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2261E425C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2261E427C();
  __break(1u);
  return result;
}

void *sub_22619FFDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF50, &qword_2261E67E8);
  v2 = *v0;
  v3 = sub_2261E40CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2261A0138(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF50, &qword_2261E67E8);
  result = sub_2261E40DC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2261E42EC();

      sub_2261E3E6C();
      result = sub_2261E430C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2261A0370(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF50, &qword_2261E67E8);
    v3 = sub_2261E40EC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_2261E42EC();

      sub_2261E3E6C();
      result = sub_2261E430C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2261E425C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2261A052C()
{
  sub_2261E410C();
  v0 = sub_2261E423C();

  MEMORY[0x22AA782B0](46, 0xE100000000000000);
  v1 = sub_2261E423C();
  MEMORY[0x22AA782B0](v1);

  MEMORY[0x22AA782B0](46, 0xE100000000000000);
  v2 = sub_2261E423C();
  MEMORY[0x22AA782B0](v2);

  MEMORY[0x22AA782B0](46, 0xE100000000000000);
  v3 = sub_2261E423C();
  MEMORY[0x22AA782B0](v3);

  MEMORY[0x22AA782B0](46, 0xE100000000000000);
  v4 = sub_2261E423C();
  MEMORY[0x22AA782B0](v4);

  MEMORY[0x22AA782B0](46, 0xE100000000000000);
  v5 = sub_2261E423C();
  MEMORY[0x22AA782B0](v5);

  MEMORY[0x22AA782B0](46, 0xE100000000000000);
  v6 = sub_2261E423C();
  MEMORY[0x22AA782B0](v6);

  MEMORY[0x22AA782B0](46, 0xE100000000000000);
  v7 = sub_2261E423C();
  MEMORY[0x22AA782B0](v7);

  return v0;
}

BOOL sub_2261A078C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a8 ^ a4) >> 32 == 0;
  if (a8 != a4)
  {
    v8 = 0;
  }

  if (a7 != a3)
  {
    v8 = 0;
  }

  if (a6 != a2)
  {
    v8 = 0;
  }

  return a5 == a1 && v8;
}

_BYTE *sub_2261A07E0()
{
  if (qword_27D78F660 != -1)
  {
    swift_once();
  }

  return byte_27D791440;
}

void sub_2261A0830(uint64_t a1, uint64_t (*a2)(void), _BYTE *a3)
{
  v5 = MobileGestalt_get_current_device();
  if (v5)
  {
    v6 = v5;
    v7 = a2();

    *a3 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_2261A08C8(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3)
{
  v5 = MobileGestalt_get_current_device();
  if (v5)
  {
    v6 = v5;
    v7 = a2();

    *a3 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_2261A0920()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    byte_27D791448 = deviceClassNumber == 9;
  }

  else
  {
    __break(1u);
  }
}

char *sub_2261A0970()
{
  if (qword_27D78F668 != -1)
  {
    swift_once();
  }

  return &byte_27D791448;
}

uint64_t sub_2261A09C0()
{
  v0 = sub_2261E3E2C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28136F198 != -1)
  {
    swift_once();
  }

  v4 = qword_28136FEB8;
  if (qword_28136F190 != -1)
  {
    swift_once();
  }

  v5 = qword_28136FEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF58, &qword_2261E6830);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2261E6800;
  v7 = MEMORY[0x277D84A28];
  v8 = MEMORY[0x277D84A90];
  *(v6 + 56) = MEMORY[0x277D84A28];
  *(v6 + 64) = v8;
  *(v6 + 32) = v5;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v4;
  sub_2261E3E0C();
  sub_2261E3E1C();
  v9 = sub_2261E3DEC();

  (*(v1 + 8))(v3, v0);
  return v9;
}

uint64_t sub_2261A0BA4(int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF60, &qword_2261E6838);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2261E6810;
  *(v2 + 32) = 0xE00000001;
  v3 = (v2 + 32);
  *(v2 + 40) = 1;
  *(v2 + 44) = a1;
  bzero(v8, 0x288uLL);
  v7 = 648;
  v4 = sysctl(v3, 4u, v8, &v7, 0, 0);
  if (v4 == sub_2261E3CEC())
  {
    v5 = sub_2261E3E9C();

    return v5;
  }

  else
  {

    return 0;
  }
}