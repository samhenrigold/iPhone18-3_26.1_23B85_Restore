uint64_t __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 588, @"com.apple.MobileActivation.ErrorDomain", -25, *(*(*(a1 + 40) + 8) + 40), @"Client is not supported.", a7, a8, *v14);
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*(*(a1 + 40) + 8) + 40);
    *v14 = 138543362;
    *&v14[4] = v12;
    _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", v14, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

uint64_t __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke", 602, @"com.apple.MobileActivation.ErrorDomain", -3, *(*(*(a1 + 40) + 8) + 40), @"Not supported on this device (VM support disabled).", a7, a8, *v14);
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*(*(a1 + 40) + 8) + 40);
    *v14 = 138543362;
    *&v14[4] = v12;
    _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", v14, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283968088];
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.mobileactivationd" options:4096];
  [v3 setRemoteObjectInterface:v2];
  [v3 resume];
  v4 = [*(a1 + 32) mutableCopy];
  v5 = [v4 objectForKey:@"AccessControls"];

  if (v5)
  {
    [v4 removeObjectForKey:@"AccessControls"];
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"UseRKSigningInterface"];
  }

  [v4 removeObjectForKey:@"LocalAuthenticationContext"];
  [v4 setObject:*(a1 + 40) forKeyedSubscript:@"AppID"];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_3;
  v53[3] = &unk_278585EC0;
  v53[4] = *(a1 + 152);
  v6 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v53];
  v7 = *(a1 + 48);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_4;
  v50[3] = &unk_278585FE0;
  v51 = *(a1 + 160);
  v52 = *(a1 + 152);
  [v6 issueClientCertificateWithReferenceKey:v7 options:v4 completion:v50];
  v8 = copyDeviceIdentitySerialQueue([v3 invalidate]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_5;
  v27[3] = &unk_278586030;
  v37 = *(a1 + 152);
  v38 = *(a1 + 168);
  v9 = *(a1 + 56);
  v48 = *(a1 + 296);
  v39 = *(a1 + 176);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v28 = v14;
  v29 = v13;
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  v17 = *(a1 + 104);
  v18 = *(a1 + 112);
  *&v19 = v17;
  *(&v19 + 1) = v18;
  *&v20 = v15;
  *(&v20 + 1) = v16;
  v30 = v20;
  v31 = v19;
  v32 = *(a1 + 120);
  v21 = *(a1 + 208);
  v40 = *(a1 + 192);
  v41 = v21;
  v42 = *(a1 + 224);
  v33 = *(a1 + 32);
  v22 = *(a1 + 256);
  v43 = *(a1 + 240);
  v44 = v22;
  v45 = *(a1 + 272);
  v23 = *(a1 + 128);
  v24 = *(a1 + 280);
  v34 = v23;
  v46 = v24;
  v49 = *(a1 + 297);
  v35 = *(a1 + 136);
  v25 = *(a1 + 144);
  v26 = *(a1 + 288);
  v36 = v25;
  v47 = v26;
  dispatch_async(v8, v27);
}

uint64_t __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(*(a1 + 32) + 8) + 40) = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_3", 1290, @"com.apple.MobileActivation.ErrorDomain", -1, a2, @"IPC Error.", a7, a8, v10);

  return MEMORY[0x2821F96F8]();
}

void __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_4(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"RKCertification"];
  v8 = isNSArray(v7);
  v9 = *(a1[4] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [v6 objectForKeyedSubscript:@"ServerResponseDate"];

  v12 = isNSDate(v11);
  v13 = *(a1[5] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v5;
}

void __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v205 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 136) + 8) + 40))
  {
    goto LABEL_16;
  }

  v9 = *(*(*(a1 + 144) + 8) + 40);
  if (!v9 || [v9 count] != 2 || !*(*(*(a1 + 152) + 8) + 40))
  {
    v20 = *(*(*(a1 + 136) + 8) + 40);
    v21 = @"Invalid response.";
    v22 = 1309;
LABEL_15:
    v23 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_5", v22, @"com.apple.MobileActivation.ErrorDomain", -1, v20, v21, a7, a8, v163);
    v24 = *(*(a1 + 136) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;

LABEL_16:
    v26 = 0;
    goto LABEL_17;
  }

  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v10 = *(*(*(a1 + 144) + 8) + 40);
  v11 = [v10 countByEnumeratingWithState:&v186 objects:v204 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v187;
    v14 = *MEMORY[0x277CBECE8];
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v187 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = SecCertificateCreateWithData(v14, *(*(&v186 + 1) + 8 * i));
        if (!v16)
        {
          v64 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_5", 1323, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create certificate.", v17, v18, v163);
          v65 = *(*(a1 + 136) + 8);
          v66 = *(v65 + 40);
          *(v65 + 40) = v64;

          goto LABEL_51;
        }

        v19 = v16;
        [*(a1 + 32) addObject:v16];
        CFRelease(v19);
      }

      v12 = [v10 countByEnumeratingWithState:&v186 objects:v204 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_51:

  if (*(*(*(a1 + 136) + 8) + 40))
  {
    goto LABEL_16;
  }

  if (*(a1 + 280) == 1)
  {
    [*(a1 + 32) addObject:*(*(*(a1 + 152) + 8) + 40)];
  }

  v67 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v68 = *(*(a1 + 160) + 8);
  v69 = *(v68 + 40);
  *(v68 + 40) = v67;

  v70 = *(*(*(a1 + 160) + 8) + 40);
  if (!v70)
  {
    v20 = *(*(*(a1 + 136) + 8) + 40);
    v21 = @"Failed to allocate data.";
    v22 = 1341;
    goto LABEL_15;
  }

  v71 = [*(*(*(a1 + 144) + 8) + 40) objectAtIndexedSubscript:0];
  [v70 appendData:v71];

  v72 = *(*(*(a1 + 160) + 8) + 40);
  v73 = [*(*(*(a1 + 144) + 8) + 40) objectAtIndexedSubscript:1];
  [v72 appendData:v73];

  v74 = *(*(*(a1 + 168) + 8) + 24);
  v75 = *(a1 + 40);
  v76 = [*(a1 + 32) objectAtIndexedSubscript:0];
  v77 = *(*(a1 + 136) + 8);
  obj = *(v77 + 40);
  LOBYTE(v74) = security_certificate_matches_key(v74, v75, v76, &obj);
  objc_storeStrong((v77 + 40), obj);

  if ((v74 & 1) == 0)
  {
    v20 = *(*(*(a1 + 136) + 8) + 40);
    v21 = @"Invalid reference key.";
    v22 = 1349;
    goto LABEL_15;
  }

  if (*(a1 + 48))
  {
    v78 = *(a1 + 56);
    if (v78)
    {
      v79 = *(a1 + 64);
      v80 = *(*(a1 + 136) + 8);
      v184 = *(v80 + 40);
      v81 = delete_keychain_data(v78, v79, &v184);
      objc_storeStrong((v80 + 40), v184);
      if (v81)
      {
        v84 = *(a1 + 56);
        v85 = *(a1 + 72);
        v86 = *(*(a1 + 136) + 8);
        v183 = *(v86 + 40);
        v87 = delete_keychain_item(v84, v85, &v183);
        objc_storeStrong((v86 + 40), v183);
        if (v87)
        {
          v88 = *(a1 + 56);
          v89 = *(a1 + 80);
          v90 = *(*(a1 + 136) + 8);
          v182 = *(v90 + 40);
          v91 = delete_keychain_data(v88, v89, &v182);
          objc_storeStrong((v90 + 40), v182);
          if (v91)
          {
            v92 = *(a1 + 56);
            v93 = *(a1 + 88);
            v94 = *(*(a1 + 136) + 8);
            v181 = *(v94 + 40);
            v95 = delete_keychain_data(v92, v93, &v181);
            objc_storeStrong((v94 + 40), v181);
            if (v95)
            {
              v96 = *(a1 + 56);
              v97 = *(a1 + 96);
              v98 = *(*(a1 + 136) + 8);
              v180 = *(v98 + 40);
              v99 = delete_keychain_data(v96, v97, &v180);
              objc_storeStrong((v98 + 40), v180);
              if (v99)
              {
                *(*(*(a1 + 176) + 8) + 24) = copyMonotonicClock(0);
                if (*(*(*(a1 + 176) + 8) + 24) != 0.0)
                {
                  v100 = *(*(a1 + 136) + 8);
                  v179 = *(v100 + 40);
                  v101 = copyRTCResetCountWithError(&v179);
                  objc_storeStrong((v100 + 40), v179);
                  *(*(*(a1 + 184) + 8) + 24) = v101;
                  if (!*(*(*(a1 + 184) + 8) + 24))
                  {
                    v157 = *(*(*(a1 + 136) + 8) + 40);
                    if (v157)
                    {
                      v158 = @"Failed to query RTC reset count.";
                      v159 = 1397;
LABEL_96:
                      v160 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_5", v159, @"com.apple.MobileActivation.ErrorDomain", -1, v157, v158, v102, v103, v163);
                      v161 = *(*(a1 + 136) + 8);
                      v162 = *(v161 + 40);
                      *(v161 + 40) = v160;

                      v26 = 1;
                      goto LABEL_17;
                    }
                  }

                  v104 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:*(*(a1 + 176) + 8) + 24 length:8];
                  v105 = *(*(a1 + 192) + 8);
                  v106 = *(v105 + 40);
                  *(v105 + 40) = v104;

                  v107 = *(*(*(a1 + 192) + 8) + 40);
                  if (!v107)
                  {
                    v158 = @"Failed to encode monotonic time.";
                    v159 = 1403;
                    goto LABEL_93;
                  }

                  v108 = *(a1 + 56);
                  v109 = *(a1 + 80);
                  v110 = *(*(a1 + 136) + 8);
                  v178 = *(v110 + 40);
                  v111 = store_keychain_data(v107, v108, v109, &v178);
                  objc_storeStrong((v110 + 40), v178);
                  if ((v111 & 1) == 0)
                  {
                    v157 = *(*(*(a1 + 136) + 8) + 40);
                    v158 = @"Failed to store monotonic time.";
                    v159 = 1408;
                    goto LABEL_96;
                  }

                  v112 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:*(*(a1 + 184) + 8) + 24 length:4];
                  v113 = *(*(a1 + 200) + 8);
                  v114 = *(v113 + 40);
                  *(v113 + 40) = v112;

                  v115 = *(*(*(a1 + 200) + 8) + 40);
                  if (!v115)
                  {
                    v158 = @"Failed to encode RTC reset count.";
                    v159 = 1414;
                    goto LABEL_93;
                  }

                  v116 = *(a1 + 56);
                  v117 = *(a1 + 88);
                  v118 = *(*(a1 + 136) + 8);
                  v177 = *(v118 + 40);
                  v119 = store_keychain_data(v115, v116, v117, &v177);
                  objc_storeStrong((v118 + 40), v177);
                  if ((v119 & 1) == 0)
                  {
                    v157 = *(*(*(a1 + 136) + 8) + 40);
                    v158 = @"Failed to store RTC reset count.";
                    v159 = 1419;
                    goto LABEL_96;
                  }
                }

                [*(*(*(a1 + 152) + 8) + 40) timeIntervalSinceReferenceDate];
                *(*(*(a1 + 208) + 8) + 24) = v120;
                v121 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:*(*(a1 + 208) + 8) + 24 length:8];
                v122 = *(*(a1 + 216) + 8);
                v123 = *(v122 + 40);
                *(v122 + 40) = v121;

                v124 = *(*(*(a1 + 216) + 8) + 40);
                if (v124)
                {
                  v125 = *(a1 + 56);
                  v126 = *(a1 + 96);
                  v127 = *(*(a1 + 136) + 8);
                  v176 = *(v127 + 40);
                  v128 = store_keychain_data(v124, v125, v126, &v176);
                  objc_storeStrong((v127 + 40), v176);
                  if ((v128 & 1) == 0)
                  {
                    v157 = *(*(*(a1 + 136) + 8) + 40);
                    v158 = @"Failed to store server timestamp.";
                    v159 = 1433;
                    goto LABEL_96;
                  }

                  v129 = *(*(*(a1 + 168) + 8) + 24);
                  v130 = *(a1 + 56);
                  v131 = *(a1 + 72);
                  v132 = *(a1 + 104);
                  v133 = *(*(a1 + 136) + 8);
                  v175 = *(v133 + 40);
                  v134 = store_keychain_item(v129, v130, v131, v132, &v175);
                  objc_storeStrong((v133 + 40), v175);
                  if ((v134 & 1) == 0)
                  {
                    v157 = *(*(*(a1 + 136) + 8) + 40);
                    v158 = @"Failed to store reference key.";
                    v159 = 1438;
                    goto LABEL_96;
                  }

                  v135 = *(*(*(a1 + 160) + 8) + 40);
                  v136 = *(a1 + 56);
                  v137 = *(a1 + 64);
                  v138 = *(*(a1 + 136) + 8);
                  v174 = *(v138 + 40);
                  v139 = store_keychain_data(v135, v136, v137, &v174);
                  objc_storeStrong((v138 + 40), v174);
                  if ((v139 & 1) == 0)
                  {
                    v157 = *(*(*(a1 + 136) + 8) + 40);
                    v158 = @"Failed to store leaf/intermediate certificates.";
                    v159 = 1443;
                    goto LABEL_96;
                  }

                  v26 = 1;
                  goto LABEL_77;
                }

                v158 = @"Failed to encode server timestamp.";
                v159 = 1428;
LABEL_93:
                v157 = 0;
                goto LABEL_96;
              }

              v151 = *(*(*(a1 + 136) + 8) + 40);
              v152 = @"Failed to delete server timestamp.";
              v153 = 1382;
            }

            else
            {
              v151 = *(*(*(a1 + 136) + 8) + 40);
              v152 = @"Failed to delete RTC reset count.";
              v153 = 1377;
            }
          }

          else
          {
            v151 = *(*(*(a1 + 136) + 8) + 40);
            v152 = @"Failed to delete monotonic time.";
            v153 = 1372;
          }
        }

        else
        {
          v151 = *(*(*(a1 + 136) + 8) + 40);
          v152 = @"Failed to delete reference key.";
          v153 = 1367;
        }
      }

      else
      {
        v151 = *(*(*(a1 + 136) + 8) + 40);
        v152 = @"Failed to delete leaf/intermediate certificates.";
        v153 = 1362;
      }

      v154 = createMobileActivationError("DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_5", v153, @"com.apple.MobileActivation.ErrorDomain", -1, v151, v152, v82, v83, v163);
      v155 = *(*(a1 + 136) + 8);
      v156 = *(v155 + 40);
      *(v155 + 40) = v154;

      v26 = 1;
      goto LABEL_17;
    }
  }

  v26 = 0;
LABEL_77:
  *(*(*(a1 + 224) + 8) + 24) = CFRetain(*(*(*(a1 + 168) + 8) + 24));
  objc_storeStrong((*(*(a1 + 232) + 8) + 40), *(a1 + 32));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v140 = [*(*(*(a1 + 232) + 8) + 40) objectAtIndexedSubscript:0];
    v141 = MEMORY[0x277CBEAA8];
    v170 = [*(*(*(a1 + 232) + 8) + 40) objectAtIndexedSubscript:0];
    SecCertificateNotValidBefore();
    v165 = [v141 dateWithTimeIntervalSinceReferenceDate:?];
    v142 = MEMORY[0x277CBEAA8];
    v167 = [*(*(*(a1 + 232) + 8) + 40) objectAtIndexedSubscript:0];
    SecCertificateNotValidAfter();
    v143 = [v142 dateWithTimeIntervalSinceReferenceDate:?];
    v164 = [*(*(*(a1 + 232) + 8) + 40) objectAtIndexedSubscript:1];
    v144 = MEMORY[0x277CBEAA8];
    v145 = [*(*(*(a1 + 232) + 8) + 40) objectAtIndexedSubscript:1];
    SecCertificateNotValidBefore();
    v146 = [v144 dateWithTimeIntervalSinceReferenceDate:?];
    v147 = MEMORY[0x277CBEAA8];
    v148 = [*(*(*(a1 + 232) + 8) + 40) objectAtIndexedSubscript:1];
    SecCertificateNotValidAfter();
    v149 = [v147 dateWithTimeIntervalSinceReferenceDate:?];
    v150 = *(*(*(a1 + 152) + 8) + 40);
    *buf = 138544898;
    v191 = v140;
    v192 = 2114;
    v193 = v165;
    v194 = 2114;
    v195 = v143;
    v196 = 2114;
    v197 = v164;
    v198 = 2114;
    v199 = v146;
    v200 = 2114;
    v201 = v149;
    v202 = 2114;
    v203 = v150;
    _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Returning newly obtained certificates:\n* %{public}@\n    Not Valid Before: %{public}@\n    Not Valid After: %{public}@\n* %{public}@\n    Not Valid Before: %{public}@\n    Not Valid After: %{public}@\n* Server Timestamp: %{public}@\n", buf, 0x48u);
  }

LABEL_17:
  if (!*(*(*(a1 + 224) + 8) + 24) && !*(*(*(a1 + 232) + 8) + 40))
  {
    if ((v26 | mobileactivationErrorHasDomainAndErrorCode(*(*(*(a1 + 136) + 8) + 40), *MEMORY[0x277CC5640], 0xFFFFFFFFFFFFFFFDLL)) == 1 && *(a1 + 48) && *(a1 + 56))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(*(*(a1 + 136) + 8) + 40);
        *buf = 138412290;
        v191 = v40;
        _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Deleting invalid keys/certificates: %@", buf, 0xCu);
      }

      delete_keychain_data(*(a1 + 56), *(a1 + 64), 0);
      delete_keychain_item(*(a1 + 56), *(a1 + 72), 0);
      delete_keychain_data(*(a1 + 56), *(a1 + 80), 0);
      delete_keychain_data(*(a1 + 56), *(a1 + 88), 0);
      delete_keychain_data(*(a1 + 56), *(a1 + 96), 0);
      v41 = *(*(a1 + 240) + 8);
      v42 = *(v41 + 24);
      if (v42)
      {
        CFRelease(v42);
        v41 = *(*(a1 + 240) + 8);
      }

      *(v41 + 24) = 0;
      v43 = *(*(a1 + 248) + 8);
      v44 = *(v43 + 24);
      if (v44)
      {
        CFRelease(v44);
        v43 = *(*(a1 + 248) + 8);
      }

      *(v43 + 24) = 0;
      v45 = *(*(a1 + 256) + 8);
      v46 = *(v45 + 24);
      if (v46)
      {
        CFRelease(v46);
        v45 = *(*(a1 + 256) + 8);
      }

      *(v45 + 24) = 0;
    }

    v47 = *(*(*(a1 + 240) + 8) + 24);
    if (v47 && *(a1 + 112))
    {
      *(*(*(a1 + 224) + 8) + 24) = CFRetain(v47);
      objc_storeStrong((*(*(a1 + 232) + 8) + 40), *(a1 + 112));
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v48 = [*(*(*(a1 + 232) + 8) + 40) objectAtIndexedSubscript:0];
        v49 = MEMORY[0x277CBEAA8];
        v169 = [*(*(*(a1 + 232) + 8) + 40) objectAtIndexedSubscript:0];
        SecCertificateNotValidBefore();
        v50 = [v49 dateWithTimeIntervalSinceReferenceDate:?];
        v51 = MEMORY[0x277CBEAA8];
        v166 = [*(*(*(a1 + 232) + 8) + 40) objectAtIndexedSubscript:0];
        SecCertificateNotValidAfter();
        v52 = [v51 dateWithTimeIntervalSinceReferenceDate:?];
        v53 = [*(*(*(a1 + 232) + 8) + 40) objectAtIndexedSubscript:1];
        v54 = MEMORY[0x277CBEAA8];
        v55 = [*(*(*(a1 + 232) + 8) + 40) objectAtIndexedSubscript:1];
        SecCertificateNotValidBefore();
        v56 = [v54 dateWithTimeIntervalSinceReferenceDate:?];
        v57 = MEMORY[0x277CBEAA8];
        v58 = [*(*(*(a1 + 232) + 8) + 40) objectAtIndexedSubscript:1];
        SecCertificateNotValidAfter();
        v59 = [v57 dateWithTimeIntervalSinceReferenceDate:?];
        v60 = *(*(*(a1 + 264) + 8) + 40);
        *buf = 138544898;
        v191 = v48;
        v192 = 2114;
        v193 = v50;
        v194 = 2114;
        v195 = v52;
        v196 = 2114;
        v197 = v53;
        v198 = 2114;
        v199 = v56;
        v200 = 2114;
        v201 = v59;
        v202 = 2114;
        v203 = v60;
        _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Returning cached certificates:\n* %{public}@\n    Not Valid Before: %{public}@\n    Not Valid After: %{public}@\n* %{public}@\n    Not Valid Before: %{public}@\n    Not Valid After: %{public}@\n* Server Timestamp: %{public}@\n", buf, 0x48u);
      }

      if (*(a1 + 281) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v61 = *(*(*(a1 + 136) + 8) + 40);
          *buf = 138543362;
          v191 = v61;
          _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ (non-fatal, existing valid certificates)", buf, 0xCu);
        }

        v62 = *(*(a1 + 136) + 8);
        v63 = *(v62 + 40);
        *(v62 + 40) = 0;
      }
    }
  }

  v27 = *(a1 + 120);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_309;
  block[3] = &unk_278586008;
  v168 = *(a1 + 128);
  v28 = v168;
  v29 = *(a1 + 224);
  v172 = v168;
  v173 = v29;
  dispatch_async(v27, block);
  v30 = *(*(a1 + 168) + 8);
  v31 = *(v30 + 24);
  if (v31)
  {
    CFRelease(v31);
    v30 = *(*(a1 + 168) + 8);
  }

  *(v30 + 24) = 0;
  v32 = *(*(a1 + 272) + 8);
  v33 = *(v32 + 24);
  if (v33)
  {
    CFRelease(v33);
    v32 = *(*(a1 + 272) + 8);
  }

  *(v32 + 24) = 0;
  v34 = *(*(a1 + 240) + 8);
  v35 = *(v34 + 24);
  if (v35)
  {
    CFRelease(v35);
    v34 = *(*(a1 + 240) + 8);
  }

  *(v34 + 24) = 0;
  v36 = *(*(a1 + 248) + 8);
  v37 = *(v36 + 24);
  if (v37)
  {
    CFRelease(v37);
    v36 = *(*(a1 + 248) + 8);
  }

  *(v36 + 24) = 0;
  v38 = *(*(a1 + 256) + 8);
  v39 = *(v38 + 24);
  if (v39)
  {
    CFRelease(v39);
    v38 = *(*(a1 + 256) + 8);
  }

  *(v38 + 24) = 0;
}

uint64_t __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_309(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(*(a1[5] + 8) + 40) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(*(a1[5] + 8) + 40);
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", &v4, 0xCu);
  }

  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[6] + 8) + 24), *(*(a1[7] + 8) + 40), *(*(a1[5] + 8) + 40));
  }

  return result;
}

uint64_t __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_312(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(*(a1[5] + 8) + 40) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(*(a1[5] + 8) + 40);
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", &v4, 0xCu);
  }

  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[6] + 8) + 24), *(*(a1[7] + 8) + 40), *(*(a1[5] + 8) + 40));
  }

  return result;
}

id DeviceIdentityCreateHostSignature(void *a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v10 = a2;
  if (!v7)
  {
    v23 = @"Invalid input.";
    v24 = 1601;
    v25 = -2;
LABEL_10:
    v18 = createMobileActivationError("DeviceIdentityCreateHostSignature", v24, @"com.apple.MobileActivation.ErrorDomain", v25, 0, v23, v8, v9, v29);
LABEL_11:
    v21 = 0;
    v17 = 0;
    goto LABEL_12;
  }

  if (!is_virtual_machine())
  {
    v23 = @"Device is not a VM (not supported).";
    v24 = 1606;
    v25 = -3;
    goto LABEL_10;
  }

  v32 = 0;
  has_host_key = libavp_guest_has_host_key(&v32);
  v12 = v32;
  v15 = v12;
  if ((has_host_key & 1) == 0)
  {
    v18 = createMobileActivationError("DeviceIdentityCreateHostSignature", 1611, @"com.apple.MobileActivation.ErrorDomain", -3, v12, @"Not supported on this device (VM support disabled).", v13, v14, v29);

    goto LABEL_11;
  }

  v30 = v12;
  v31 = 0;
  v16 = vm_create_host_key_signature(v7, 0, &v31, &v30);
  v17 = v31;
  v18 = v30;

  if (v16)
  {
    v21 = v16;
    if (a3)
    {
      v22 = v17;
      *a3 = v17;
      if (!v18)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

LABEL_12:
    if (!v18)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v28 = createMobileActivationError("DeviceIdentityCreateHostSignature", 1617, @"com.apple.MobileActivation.ErrorDomain", -1, v18, @"Failed to create host key signature.", v19, v20, v29);

  v21 = 0;
  v18 = v28;
  if (!v28)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = v18;
    _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

LABEL_15:
  if (a4 && !v21)
  {
    v26 = v18;
    *a4 = v18;
  }

  return v21;
}

void DeviceIdentityCreateHostSignatureWithCompletion(void *a1, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v12 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  if (v8)
  {
    if (is_virtual_machine())
    {
      v13 = (v31 + 5);
      obj = v31[5];
      has_host_key = libavp_guest_has_host_key(&obj);
      objc_storeStrong(v13, obj);
      if (has_host_key)
      {
        v15 = v7;
        if (!v15)
        {
          v15 = dispatch_get_global_queue(0, 0);
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __DeviceIdentityCreateHostSignatureWithCompletion_block_invoke;
        block[3] = &unk_2785860A8;
        v25 = v8;
        v26 = v9;
        v28 = &v30;
        v27 = v12;
        dispatch_async(v15, block);

        goto LABEL_15;
      }

      v16 = v31[5];
      v19 = @"Not supported on this device (VM support disabled).";
      v17 = -3;
      v18 = 1658;
    }

    else
    {
      v16 = 0;
      v17 = -3;
      v18 = 1653;
      v19 = @"Device is not a VM (not supported).";
    }
  }

  else
  {
    v16 = 0;
    v17 = -2;
    v18 = 1648;
    v19 = @"Invalid input.";
  }

  v20 = createMobileActivationError("DeviceIdentityCreateHostSignatureWithCompletion", v18, @"com.apple.MobileActivation.ErrorDomain", v17, v16, v19, v10, v11, v23);
  v21 = v31[5];
  v31[5] = v20;

  if (v31[5] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v22 = v31[5];
    *buf = 138543362;
    v37 = v22;
    _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  if (v12)
  {
    (*(v12 + 2))(v12, 0, 0, v31[5]);
  }

LABEL_15:
  _Block_object_dispose(&v30, 8);
}

void sub_22620F998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __DeviceIdentityCreateHostSignatureWithCompletion_block_invoke(void *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v33 = 0;
  v5 = vm_create_host_key_signature(v2, v3, &v33, &obj);
  v6 = v33;
  objc_storeStrong((v4 + 40), obj);
  if (!v5)
  {
    v25 = createMobileActivationError("DeviceIdentityCreateHostSignatureWithCompletion_block_invoke", 1679, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(a1[7] + 8) + 40), @"Failed to create host key signature.", v7, v8, v30);
    v10 = 0;
    goto LABEL_10;
  }

  v9 = *(a1[7] + 8);
  v31 = *(v9 + 40);
  v10 = parseDERCertificatesFromChain(v6, &v31);
  objc_storeStrong((v9 + 40), v31);
  if (!v10 || [v10 count] != 2)
  {
    v25 = createMobileActivationError("DeviceIdentityCreateHostSignatureWithCompletion_block_invoke", 1685, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(a1[7] + 8) + 40), @"Failed to parse certificate data.", v11, v12, v30);
LABEL_10:
    v15 = 0;
LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

  v13 = *MEMORY[0x277CBECE8];
  v14 = [v10 objectAtIndexedSubscript:0];
  v15 = SecCertificateCreateWithData(v13, v14);

  if (!v15)
  {
    v25 = createMobileActivationError("DeviceIdentityCreateHostSignatureWithCompletion_block_invoke", 1691, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create certificate.", v16, v17, v30);
    goto LABEL_11;
  }

  v18 = [v10 objectAtIndexedSubscript:1];
  v19 = SecCertificateCreateWithData(v13, v18);

  if (!v19)
  {
    v25 = createMobileActivationError("DeviceIdentityCreateHostSignatureWithCompletion_block_invoke", 1697, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create certificate.", v20, v21, v30);
    goto LABEL_12;
  }

  v22 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:v15];

  if (!v22)
  {
    v25 = createMobileActivationError("DeviceIdentityCreateHostSignatureWithCompletion_block_invoke", 1703, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to encode certificate chain.", v23, v24, v19);
    v10 = 0;
LABEL_12:
    v26 = *(a1[7] + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    v22 = v10;
  }

  if (*(*(a1[7] + 8) + 40) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v28 = *(*(a1[7] + 8) + 40);
    *buf = 138543362;
    v35 = v28;
    _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v29 = a1[6];
  if (v29)
  {
    (*(v29 + 16))(v29, v5, v22, *(*(a1[7] + 8) + 40));
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v19)
  {
    CFRelease(v19);
  }
}

void __copyDeviceIdentitySerialQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.mobileactivationd.deviceidentity", v2);
  v1 = copyDeviceIdentitySerialQueue_queue;
  copyDeviceIdentitySerialQueue_queue = v0;
}

uint64_t __copyCertificateOIDsThatDiffer_block_invoke()
{
  copyCertificateOIDsThatDiffer_supportedOIDs = copy_supported_baa_oids();

  return MEMORY[0x2821F96F8]();
}

id copy_group_container_path(uint64_t a1)
{
  if (a1 && (v1 = container_system_group_path_for_identifier()) != 0)
  {
    v2 = v1;
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v1];
    free(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id copy_ucrt_path(uint64_t a1)
{
  if (copy_ucrt_path_onceToken != -1)
  {
    copy_ucrt_path_cold_1();
  }

  v2 = copy_ucrt_path_retval;

  return v2;
}

void __copy_ucrt_path_block_invoke()
{
  v0 = copy_group_container_path([@"systemgroup.com.apple.mobileactivationd" UTF8String]);
  if (v0)
  {
    v3 = v0;
    v1 = [v0 stringByAppendingPathComponent:@"Library/ucrt"];
    v2 = copy_ucrt_path_retval;
    copy_ucrt_path_retval = v1;

    v0 = v3;
  }
}

id copyPersonalizedFirmwareData(uint64_t a1, void *a2)
{
  if (getMSUDataAccessorClass())
  {
    v6 = [getMSUDataAccessorClass() sharedDataAccessor];
    v21 = 0;
    v7 = [v6 copyPathForPersonalizedData:a1 error:&v21];
    v8 = v21;

    if (v7)
    {
      v20 = v8;
      v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v7 options:0 error:&v20];
      v12 = v20;

      if (v11)
      {
        v15 = v11;
        goto LABEL_11;
      }

      v17 = createMobileActivationError("copyPersonalizedFirmwareData", 41, @"com.apple.MobileActivation.ErrorDomain", -1, v12, @"Failed to load firmware data from %@.", v13, v14, v7);

      v12 = v17;
      if (!a2)
      {
        goto LABEL_10;
      }

LABEL_8:
      v16 = v12;
      v15 = 0;
      *a2 = v12;
      goto LABEL_11;
    }

    v12 = createMobileActivationError("copyPersonalizedFirmwareData", 35, @"com.apple.MobileActivation.ErrorDomain", -1, v8, @"Failed to retrieve path for firmware data type %d.", v9, v10, a1);

    if (a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = createMobileActivationError("copyPersonalizedFirmwareData", 29, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"MSUDataAccessor is not supported on this platform.", v4, v5, v19);
    v7 = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v15 = 0;
LABEL_11:

  return v15;
}

id getMSUDataAccessorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMSUDataAccessorClass_softClass;
  v7 = getMSUDataAccessorClass_softClass;
  if (!getMSUDataAccessorClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMSUDataAccessorClass_block_invoke;
    v3[3] = &unk_278585F58;
    v3[4] = &v4;
    __getMSUDataAccessorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_226210284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMSUDataAccessorClass_block_invoke(uint64_t a1)
{
  if (!MSUDataAccessorLibraryCore_frameworkLibrary)
  {
    MSUDataAccessorLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("MSUDataAccessor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMSUDataAccessorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MSUDataAccessorLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MSUDataAccessorLibraryCore_frameworkLibrary = result;
  return result;
}

id createMobileActivationError(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a3;
  v15 = a5;
  v16 = MEMORY[0x277CCAB68];
  v17 = a6;
  v18 = [[v16 alloc] initWithFormat:v17 arguments:&a9];

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = v19;
  if (v18)
  {
    [v19 setObject:v18 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (v15)
  {
    [v20 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  if (os_variant_allows_internal_security_policies())
  {
    if (a1)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
      [v20 setObject:v21 forKeyedSubscript:@"FunctionName"];
    }

    if (a2)
    {
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
      [v20 setObject:v22 forKeyedSubscript:@"SourceLine"];
    }
  }

  v23 = [MEMORY[0x277CCA9B8] errorWithDomain:v14 code:a4 userInfo:v20];

  return v23;
}

id copyRootCertificate(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a1)
  {
    case 1:
      v9 = a2 == 0;
      if (a2)
      {
        v10 = "-----BEGIN CERTIFICATE-----\nMIICGDCCAZ+gAwIBAgIIMyDS5tjDo60wCgYIKoZIzj0EAwMwUjEmMCQGA1UEAwwd\nVEVTVCBVQ1JUIEFUVEVTVEFUSU9OIFJPT1QgQ0ExEzARBgNVBAoMCkFwcGxlIElu\nYy4xEzARBgNVBAgMCkNhbGlmb3JuaWEwHhcNMTcwMzE3MTg0NzIzWhcNMzIwMzE3\nMTg0NzIzWjBSMSYwJAYDVQQDDB1URVNUIFVDUlQgQVRURVNUQVRJT04gUk9PVCBD\nQTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5pYTB2MBAG\nByqGSM49AgEGBSuBBAAiA2IABK8j8XvaJOsMr8X6albKQ1LFlMi3k+b8Jooja8Qs\n0lsrRmax8FItjsoWcxj3c1sPjPF59FI2sCb+9cUZ8KgTeJ3b5748pO1XRGByMNHp\ntmIuLYRvqRHhkWl638PWGRUoYKNCMEAwHQYDVR0OBBYEFGnDBpAIQSifJVW2RWKm\nf6jT3iIXMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgEGMAoGCCqGSM49\nBAMDA2cAMGQCMBFwSHXop87Ghm50PPMGFHtpB/o3K2Gx5747Q0mlR2qE0DsmrJSu\n2LO+9QEQL5HZRwIwBMg0g5oYcfMMDWwFSRESii+SqHxFgbmVuzHR5Cu0peL1MiMB\nnMjKoG3YyhB4geQ9\n-----END CERTIFICATE-----";
      }

      else
      {
        v10 = "-----BEGIN CERTIFICATE-----\nMIICGjCCAaGgAwIBAgIIO0EdkA1/e+swCgYIKoZIzj0EAwMwUzEnMCUGA1UEAwwe\nQmFzaWMgQXR0ZXN0YXRpb24gVXNlciBSb290IENBMRMwEQYDVQQKDApBcHBsZSBJ\nbmMuMRMwEQYDVQQIDApDYWxpZm9ybmlhMB4XDTE3MDQxOTIxNDE1NloXDTMyMDMy\nMjAwMDAwMFowUzEnMCUGA1UEAwweQmFzaWMgQXR0ZXN0YXRpb24gVXNlciBSb290\nIENBMRMwEQYDVQQKDApBcHBsZSBJbmMuMRMwEQYDVQQIDApDYWxpZm9ybmlhMHYw\nEAYHKoZIzj0CAQYFK4EEACIDYgAE639EEPCGvFOPAbzd5eGJM46/I+N1rpRhPBc2\n+hvNC5vlVyv1hVNPSTIcF0sLPgCeEEQqGIZsUPO48ECh03YzXUT86015HwktM439\nbWGKGE/VRepW8S8EDRLh6+83XZ9do0IwQDAPBgNVHRMBAf8EBTADAQH/MB0GA1Ud\nDgQWBBSD5aMhnrB0w/lhkP2XTiMQdqSj8jAOBgNVHQ8BAf8EBAMCAQYwCgYIKoZI\nzj0EAwMDZwAwZAIwQol5uLqv1SXY9G1wHSx2EYIULFlLssYTnTwbSlZPj2yF9cgk\n7xJO8bw6nTklgnHhAjBgMvsir7UEVzw7uxn8y3GGf9KSCFV5scySrYDZnJhETYlc\nyPYSFsZIerKNPP6v28Y=\n-----END CERTIFICATE-----";
      }

      v11 = &QABAAUCRTRootCAPEMLen;
      v12 = &BAAUCRTRootCAPEMLen;
      goto LABEL_47;
    case 2:
      v9 = a2 == 0;
      if (a2)
      {
        v10 = "-----BEGIN CERTIFICATE-----\nMIIB/zCCAYWgAwIBAgIIMyDS5tjDo6wwCgYIKoZIzj0EAwMwRTEZMBcGA1UEAwwQ\nVEVTVCBTRVAgUk9PVCBDQTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwK\nQ2FsaWZvcm5pYTAeFw0xNzAzMTcxNzQ4MzBaFw0zMjAzMTcxNzQ4MzBaMEUxGTAX\nBgNVBAMMEFRFU1QgU0VQIFJPT1QgQ0ExEzARBgNVBAoMCkFwcGxlIEluYy4xEzAR\nBgNVBAgMCkNhbGlmb3JuaWEwdjAQBgcqhkjOPQIBBgUrgQQAIgNiAARPM4laW0B+\nfOrILxB1SgluOqUops+ps7POnbPvuhEZq3A+/zMJpvuA9r81okf3hb2irmpUAuvd\npbjz1pDf73/8VC/uMSJsWXEc39kpm2j6DwBOIxJ++OwnhEU7pf0gCQ6jQjBAMB0G\nA1UdDgQWBBRWyfg8mg8Ak5e1SZm7V0WL85j2NDAPBgNVHRMBAf8EBTADAQH/MA4G\nA1UdDwEB/wQEAwIBBjAKBggqhkjOPQQDAwNoADBlAjEAiOkQ9WnIfqiQXIKRjOhu\neWd+RPxKGQt1XmVQZGiNDwIu6SVQ0UVDGZg4ywsotyLNAjAOQgMucccaDYgsmELm\nYpYzgzyReDQx/ajwQdc97/unxkOWYP/5TPptimsc9E0u9bU=\n-----END CERTIFICATE-----";
      }

      else
      {
        v10 = "-----BEGIN CERTIFICATE-----\nMIICIDCCAaWgAwIBAgIIePhG1bNbWBcwCgYIKoZIzj0EAwMwVTEpMCcGA1UEAwwg\nQmFzaWMgQXR0ZXN0YXRpb24gU3lzdGVtIFJvb3QgQ0ExEzARBgNVBAoMCkFwcGxl\nIEluYy4xEzARBgNVBAgMCkNhbGlmb3JuaWEwHhcNMTcwNDIwMDAyMjA5WhcNMzIw\nMzIyMDAwMDAwWjBVMSkwJwYDVQQDDCBCYXNpYyBBdHRlc3RhdGlvbiBTeXN0ZW0g\nUm9vdCBDQTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5p\nYTB2MBAGByqGSM49AgEGBSuBBAAiA2IABN7OnRlUVkOVlHTw7UF9qForIhvM8pLL\nWTrHm6Be42c3LZFIM2RNT5FZZDkIgQfYLS6vsRpfrhEMKIHIWomtyuCxp2c/AIxu\nwEml4f2d8IktTRcNHwqKzUgzPJV3CyKh2KNCMEAwDwYDVR0TAQH/BAUwAwEB/zAd\nBgNVHQ4EFgQU/tHRwggHA9W5PDSyu/18OpklG48wDgYDVR0PAQH/BAQDAgEGMAoG\nCCqGSM49BAMDA2kAMGYCMQCmU03bvMmBE4X03P8MdpxEE/LpNcRmsnktIav8tpNh\nGmo4mv2FyZKKvaJtO2OhIrwCMQDxMBcXge5NpWx/VBcFTj2Tb2VxQ8zMKbWapLE/\nHPN4kbBaiIIUl52drBlQjS/c3P8=\n-----END CERTIFICATE-----\n";
      }

      v11 = &QABAASCRTRootCAPEMLen;
      v12 = &BAASCRTRootCAPEMLen;
      goto LABEL_47;
    case 3:
      v9 = a2 == 0;
      if (a2)
      {
        v10 = "-----BEGIN CERTIFICATE-----\nMIICGDCCAZ+gAwIBAgIIMyDS5tjDo60wCgYIKoZIzj0EAwMwUjEmMCQGA1UEAwwd\nVEVTVCBVQ1JUIEFUVEVTVEFUSU9OIFJPT1QgQ0ExEzARBgNVBAoMCkFwcGxlIElu\nYy4xEzARBgNVBAgMCkNhbGlmb3JuaWEwHhcNMTcwMzE3MTg0NzIzWhcNMzIwMzE3\nMTg0NzIzWjBSMSYwJAYDVQQDDB1URVNUIFVDUlQgQVRURVNUQVRJT04gUk9PVCBD\nQTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5pYTB2MBAG\nByqGSM49AgEGBSuBBAAiA2IABK8j8XvaJOsMr8X6albKQ1LFlMi3k+b8Jooja8Qs\n0lsrRmax8FItjsoWcxj3c1sPjPF59FI2sCb+9cUZ8KgTeJ3b5748pO1XRGByMNHp\ntmIuLYRvqRHhkWl638PWGRUoYKNCMEAwHQYDVR0OBBYEFGnDBpAIQSifJVW2RWKm\nf6jT3iIXMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgEGMAoGCCqGSM49\nBAMDA2cAMGQCMBFwSHXop87Ghm50PPMGFHtpB/o3K2Gx5747Q0mlR2qE0DsmrJSu\n2LO+9QEQL5HZRwIwBMg0g5oYcfMMDWwFSRESii+SqHxFgbmVuzHR5Cu0peL1MiMB\nnMjKoG3YyhB4geQ9\n-----END CERTIFICATE-----";
      }

      else
      {
        v10 = "-----BEGIN CERTIFICATE-----\nMIIB9DCCAZqgAwIBAgIUfK8gpf3d6f7acICzvf5MBWnAVEYwCgYIKoZIzj0EAwIw\nVzErMCkGA1UEAwwiQXBwbGUgQWNjZXNzb3J5IFJvb3QgQ0EgLSAwMDAwMDAwMTET\nMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5pYTAgFw0yMDA5\nMTYxODI5MzRaGA8yMDUwMDkxNDAwMDAwMFowVzErMCkGA1UEAwwiQXBwbGUgQWNj\nZXNzb3J5IFJvb3QgQ0EgLSAwMDAwMDAwMTETMBEGA1UECgwKQXBwbGUgSW5jLjET\nMBEGA1UECAwKQ2FsaWZvcm5pYTBZMBMGByqGSM49AgEGCCqGSM49AwEHA0IABMGo\nQSB6dmrLAhjkTUVAoAC1RwaOmEmEk7SYEnnm6aBw9HZZQt5pkncuTXxvL6NDvx4D\n8Wn3frxp+UOTgEalb0ajQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFAZD\nZup+SdTmXls49aokHuK+fHKjMA4GA1UdDwEB/wQEAwIBBjAKBggqhkjOPQQDAgNI\nADBFAiEA4HcCYv5+W+1/HOy1v1cYVozNEW4+2WvR84Japg8rabkCIDP9zynWiR60\nO06J60wrt0rQfBOPnoeY1+ydbP2g8Tiy\n-----END CERTIFICATE-----";
      }

      v11 = &QABAAMFiRootCAPEMLen;
      v12 = &BAAMFiRootCAPEMLen;
      goto LABEL_47;
    case 4:
      v9 = a2 == 0;
      if (a2)
      {
        v10 = "-----BEGIN CERTIFICATE-----\nMIIBgzCCASkCFDjx/NbFt/axSboRZlQvaFKmOM9cMAoGCCqGSM49BAMCMEQxGDAW\nBgNVBAMMD1JPT1QgVk1Ib3N0IERFVjETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEG\nA1UECAwKQ2FsaWZvcm5pYTAeFw0yMjEyMjAyMjQ5MjNaFw0zMjEyMTcyMjQ5MjNa\nMEQxGDAWBgNVBAMMD1JPT1QgVk1Ib3N0IERFVjETMBEGA1UECgwKQXBwbGUgSW5j\nLjETMBEGA1UECAwKQ2FsaWZvcm5pYTBZMBMGByqGSM49AgEGCCqGSM49AwEHA0IA\nBFEzB9BX594q7qqyNgDRIB2qQm6uhylOPgS3zX6kVNpCe+IGeuYGVKu+n0oVoUEq\nah/zwVwo9xZPJycEbHBhGlAwCgYIKoZIzj0EAwIDSAAwRQIhAJxxz1ciDUVxdnIz\n34ondjHZD90U6Pzvu9abpIU1TsJxAiAKxVubHXInckv6HidbV1J2RghMPdxOyKnw\nZR6YEAfSMQ==\n-----END CERTIFICATE-----";
      }

      else
      {
        v10 = "-----BEGIN CERTIFICATE-----\nMIICLDCCAbOgAwIBAgIUfj+NzqI5TD5k+plnCuu7oXn/1NYwCgYIKoZIzj0EAwMw\nVjEqMCgGA1UEAwwhQmFzaWMgQXR0ZXN0YXRpb24gVk0gUm9vdCBDQSAtIEcxMRMw\nEQYDVQQKDApBcHBsZSBJbmMuMRMwEQYDVQQIDApDYWxpZm9ybmlhMB4XDTIyMTEx\nNzE5MjQ0NloXDTQ3MTExNzAwMDAwMFowVjEqMCgGA1UEAwwhQmFzaWMgQXR0ZXN0\nYXRpb24gVk0gUm9vdCBDQSAtIEcxMRMwEQYDVQQKDApBcHBsZSBJbmMuMRMwEQYD\nVQQIDApDYWxpZm9ybmlhMHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEh+bXFjhVZxpY\nSW1tUJhQc7Mesr7Ua/2EIJDhZnq1eUV666b7j8V1apF7zQdcVc1GHqBMRfeagBk0\nktB5PgRQ4hFX3OAbfjSVnmuPVuHznBbS/1f/ABuTlJJjO592E9JVo0IwQDAPBgNV\nHRMBAf8EBTADAQH/MB0GA1UdDgQWBBTHKW8b5x+bDXk9PC/lPsufj3wUEzAOBgNV\nHQ8BAf8EBAMCAQYwCgYIKoZIzj0EAwMDZwAwZAIwXsNPIuolYDriFDkULrsZy81O\nyAk4v7Y4f1p86Ox2J7g4xdGIwAyLw/JNRKGoHGpVAjBk20GA6ZvKKoO+HvE9v2xu\nwiVPsqk37xSmgK+RHJDMMy+hrhJVsCsBzeYpI9Cz4sI=\n-----END CERTIFICATE-----";
      }

      v11 = &QABAAVMRootCAPEMLen;
      v12 = &BAAVMRootCAPEMLen;
      goto LABEL_47;
    case 5:
      v9 = a2 == 0;
      if (a2)
      {
        v10 = "-----BEGIN CERTIFICATE-----\nMIIB9jCCAXwCFGyFzDAIXLHwUcHOxFEzhqQrOQOPMAoGCCqGSM49BAMDMF8xMzAx\nBgNVBAMMKkJhc2ljIEF0dGVzdGF0aW9uIFNFUCBBcHAgRGV2IFJvb3QgQ0EgLSBH\nMTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5pYTAeFw0y\nMzAxMTkyMTEzNTFaFw0zMzAxMTYyMTEzNTFaMF8xMzAxBgNVBAMMKkJhc2ljIEF0\ndGVzdGF0aW9uIFNFUCBBcHAgRGV2IFJvb3QgQ0EgLSBHMTETMBEGA1UECgwKQXBw\nbGUgSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5pYTB2MBAGByqGSM49AgEGBSuBBAAi\nA2IABOnVQFqNs86j5R5dAcjUlpotBUkO2q3+udEnqwkzzcrptPz6FIp5GQagMCQk\nwDgzXTe3jUqDkGxMNUjLt6DkzbwX7SrHhvIf9RlTXmlgrCUUrR21089VP+FZu8sD\n38l7PTAKBggqhkjOPQQDAwNoADBlAjEA7qwslEakgN0e+27DzPtrOqbud2pXVdRP\nqGFmLcklmZWHF1UIn6JlD1TNLVHQlCr3AjBkSmV+m5D/pJVRvg4ewQq+9oeyuYg8\nJHQGGaubDFMjZXhJ3NXrLHmIWDRQW2lgChA=\n-----END CERTIFICATE-----";
      }

      else
      {
        v10 = "-----BEGIN CERTIFICATE-----\nMIICODCCAb2gAwIBAgIUW5y5rEfNQCu9iSCmlQjrP1Rz/tAwCgYIKoZIzj0EAwMw\nWzEvMC0GA1UEAwwmQmFzaWMgQXR0ZXN0YXRpb24gU0VQIEFwcCBSb290IENBIC0g\nRzExEzARBgNVBAoMCkFwcGxlIEluYy4xEzARBgNVBAgMCkNhbGlmb3JuaWEwHhcN\nMjIwOTEyMTc1OTM0WhcNNDcwOTEyMDAwMDAwWjBbMS8wLQYDVQQDDCZCYXNpYyBB\ndHRlc3RhdGlvbiBTRVAgQXBwIFJvb3QgQ0EgLSBHMTETMBEGA1UECgwKQXBwbGUg\nSW5jLjETMBEGA1UECAwKQ2FsaWZvcm5pYTB2MBAGByqGSM49AgEGBSuBBAAiA2IA\nBAXaHBhlPwzGbPrirq+GvLIVTB4ym+88OQOB2Aq3ZuWIDz2DV9EWt7/3tpHL276X\nWE4ObPymHzrbl5aNpIzjm9W0tgiZRWw8l3YEuoz56dh3sZqVdDxszB3CQw1KX+62\nYaNCMEAwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUywowhXlxUMVVx846sCHP\nXQIrUR4wDgYDVR0PAQH/BAQDAgEGMAoGCCqGSM49BAMDA2kAMGYCMQC/AZhw1x8+\nXBPQw3lTl2A4SxY5UvCMjyseU9uUD0qgFDYlvUzH0qi8KB5BZled0cYCMQClhMgI\nrl3Txh1EJBb5yoWhvs8Gy+qkov9/SIDIEGpmZ7OUngbjN5zheCyJio90Xig=\n-----END CERTIFICATE-----";
      }

      v11 = &QABAAASMFiOSRootCAPEMLen;
      v12 = &BAAASMFiOSRootCAPEMLen;
      goto LABEL_47;
    case 6:
      v13 = *"&\b";
      v10 = "-----BEGIN CERTIFICATE-----\nMIIF2DCCA8CgAwIBAgIBADANBgkqhkiG9w0BAQsFADB9MQswCQYDVQQGEwJVUzET\nMBEGA1UEChMKQXBwbGUgSW5jLjFZMFcGA1UEAxNQRkRSLUNBMS1ST09ULUNNIDg2\nQkQ1QkFFQ0JBNEQ5RUM0QzdBOUJGRUZEM0I3QTE0Mzc5QTE1RTVGQjM2MDNCQ0U2\nOTA1MDczRUMwNjBBM0YwHhcNMTQwNjExMjEwODM5WhcNNDQwNjExMjEwODM5WjB9\nMQswCQYDVQQGEwJVUzETMBEGA1UEChMKQXBwbGUgSW5jLjFZMFcGA1UEAxNQRkRS\nLUNBMS1ST09ULUNNIDg2QkQ1QkFFQ0JBNEQ5RUM0QzdBOUJGRUZEM0I3QTE0Mzc5\nQTE1RTVGQjM2MDNCQ0U2OTA1MDczRUMwNjBBM0YwggIiMA0GCSqGSIb3DQEBAQUA\nA4ICDwAwggIKAoICAQDRSE8a8Xl+OFgz07qfQf610WJgBhQUMqYqLME8yNW6HRAo\nZmRJCZhKzJCW7W77utpo/QZqCs/Tmc8yAuyw06MlLdb/EaFbIJhnd8KvhNO2aBn1\n0zTF3BrKu/iBj4Cb31nzd+P3BAyIIhnNfqnJ1YDGrXDHApFKs96bRNYfFj/cm55e\n+5ZaVAE4pGq3I45pO1HMEObvysFnbEw4R5EZ8BsyNaSe+EEprYZQqjfGciVZn+WD\nnP0g1TONgE8yAplaud+0QQIcLxE82toZqnAEErojrXbb9KYiW6OH+w8p8ITKrA0a\nbyud5ZwU8x2dwJngg2P53vzdaEPgl+oEWm5uTtOBS5kGh9N0Ky3N094qn6Y9OmLD\neXsYXGE3Q91AZ6Ps+0cmZYAMvnlTMh6h6TRgIG6kUi/7fIn6umQHgavSMP+XWNET\nCzbwE7YZnTnhMlW3Oaey40bKDgxZAgVAVKt+qf/B9Exb074GqicYr5RH3MmYYqVo\nbHZTPkeKykUxUJoNm/jRoyXQnStl0uBclShH3ORMOHL6MeQMSGIEIVbD6AJz3rIX\n7nidx3ePUeA7QVV/vhL09DU4Q5KKQsbgl4qSGzxA87ClUGworLaWa+AUE+MP5NLJ\ntSlsY4+Fl3VLq51AJA2oeOwF6KCTRTZWG56anqaSrEU0UKsWgQ6ys+9153eGTwID\nAQABo2MwYTAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4E\nFgQUESXWmKVwOl5LaoSB35L33xPje14wHwYDVR0jBBgwFoAUESXWmKVwOl5LaoSB\n35L33xPje14wDQYJKoZIhvcNAQELBQADggIBAJcISq7FqhBfFRpgEAiedVPPzff5\nrU2uNQLpApMb3A6jFSostHTwypA//pc0PbTPTi5t2CcF14Gznqt4Gf1Ej75C+fgK\nQoWjcgYPCXkK+6KkTW8EMLsL+n8ZL1tqdOuJCOBTRBTU3Lbwon5uYF98CdBlPIam\nZqDEbEiwrp/I5uBMkut1P2sftxu5ysu3+A1bGMDI5T84sXbG0eJU6zmx1p/WUHAc\nHZy9/S7Ad5vJRMQrWx4JDdLvJ+1PXqdJtZUkp4TNPchxA9OzGsatVJJ5T/5EVDuL\nQgLaZNiWeAC19+clUREnS247RjLNIZZq0hj2Rk5zO6sSyt8vM+kJZrTVdGaSk++l\nOFWzSdo0Ev/izPkuL/cH146YZS1UWZJI61mdvbvvxqqQaoTmviuMDqDoCZ7crLu3\nLRoS6/+w+xir5s6hmAF8D6FzAkVmeAroyd6Hclk6CnhlcQP5GxjTQjA2YGe/9X54\n30qL4fjiDwdLYqxyL5J28/yxt068aoVaukoRAgiGoZouyieTV9DabenxYBOygijS\n4G4RVf4qVnQ7wGkQokhz4WIkMr4C4ydWU3GhSuM3T9Tx9ASscch/oLMczDMLKYMe\n3sdtc60+gxrctSq/B3E/5nddDj9vQ7BdRWcvJ+n/ESsXgwk5z15YZUwU/qW0j5rD\n4bPy9nox5DLds+/l\n-----END CERTIFICATE-----";
      goto LABEL_51;
    case 7:
      v9 = a2 == 0;
      if (a2)
      {
        v10 = "-----BEGIN CERTIFICATE-----\nMIIBtDCCAVqgAwIBAgIBJzAKBggqhkjOPQQDAjBIMRwwGgYDVQQDDBNTRVAgUm9v\ndCBDQSAoTG9jYWwpMRMwEQYDVQQKDApBcHBsZSBJbmMuMRMwEQYDVQQIDApDYWxp\nZm9ybmlhMB4XDTE2MDQyMjIyMTgzOVoXDTI2MDQyMDIyMTgzOVowSDEcMBoGA1UE\nAwwTU0VQIFJvb3QgQ0EgKExvY2FsKTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEG\nA1UECAwKQ2FsaWZvcm5pYTBZMBMGByqGSM49AgEGCCqGSM49AwEHA0IABLbmMPmv\nubyAcSjOqIvq+HkYPAn68WV+DopU/kfpNtEo0y0kjdxYGyuiaKC3LPqBmgM8pHlJ\npP81SMyx900L5YyjNTAzMA8GA1UdEwEB/wQFMAMBAf8wCwYDVR0PBAQDAgEGMBMG\nCSqGSIb3Y2QGLAQGFgR1Y3J0MAoGCCqGSM49BAMCA0gAMEUCIQCz/HH34JCprRWh\nsrjvjvb0vUjLY22yA/3uJS0zZ2LRGgIgahGt0ZuEvMzPDnG9n8wRXEOB46xu7zDy\nrXK+zQjBPMY=\n-----END CERTIFICATE-----";
      }

      else
      {
        v10 = "-----BEGIN CERTIFICATE-----\nMIIB9DCCAXugAwIBAgIIMyDS5tjDo6wwCgYIKoZIzj0EAwMwQDEUMBIGA1UEAwwL\nU0VQIFJvb3QgQ0ExEzARBgNVBAoMCkFwcGxlIEluYy4xEzARBgNVBAgMCkNhbGlm\nb3JuaWEwHhcNMTQwNjI0MjE0MzI0WhcNMjkwNjI0MjE0MzI0WjBAMRQwEgYDVQQD\nDAtTRVAgUm9vdCBDQTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2Fs\naWZvcm5pYTB2MBAGByqGSM49AgEGBSuBBAAiA2IABEBGXhKwc7q3iFvkUoGDP6j2\ndrpxSCxsSCODaDQIqGwd53wZJ0xIJIv0RTf2TS7+/u4KzhrANzb19r+TQzwqFJMp\nhp3mI3yY4pukIFc/kWS7DLQAx/ftWBXX6vl4ig3wEqNCMEAwHQYDVR0OBBYEFFjv\n1r7FgrBUzRimhK2i9nt7On/PMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQD\nAgEGMAoGCCqGSM49BAMDA2cAMGQCMCWRVB9DxwYdXsJ8KVZwbU5y0rfNEWJwpH5B\nbH3HoiOT/k7TIzlcXWiWAZVVBsDf/gIwC5wq3OepHwBMMCa3Q4ZvpT4Qs0dmc4oa\nGYxqUZYACJiGD7vRVavVMFnf0s4xG0JG\n-----END CERTIFICATE-----";
      }

      v11 = &QAUCRTRootCAPEMLen;
      goto LABEL_41;
    case 8:
      v9 = a2 == 0;
      if (a2)
      {
        v10 = "-----BEGIN CERTIFICATE-----\nMIICXjCCAeWgAwIBAgIJAO5ey/a/ZXo9MAoGCCqGSM49BAMDMGQxNzA1BgNVBAMT\nLmltZzQgdGVzdCBzZWNwMzg0cjEgUm9vdCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkx\nFDASBgNVBAoTC0FwcGxlLCBJbmMuMRMwEQYDVQQIEwpDYWxpZm9ybmlhMB4XDTE1\nMDgyNzA0MTk1MloXDTI1MDgyNDA0MTk1MlowZDE3MDUGA1UEAxMuaW1nNCB0ZXN0\nIHNlY3AzODRyMSBSb290IENlcnRpZmljYXRlIEF1dGhvcml0eTEUMBIGA1UEChML\nQXBwbGUsIEluYy4xEzARBgNVBAgTCkNhbGlmb3JuaWEwdjAQBgcqhkjOPQIBBgUr\ngQQAIgNiAARmiQLNit/MHLEymNygtXRdYvZ2V9ujKbG78XPHs815eRetxfbAe0SU\n3LOKQ0xvpm77RUDARHdFyNzRSkKxTY2iBUGOapBwlwzfZlUmJU4JRXE9ATRwYNco\nKfVcrL0BFnejYzBhMB0GA1UdDgQWBBTFrjb8IhN7kz3HMYTxcqKeXtGm5DAPBgNV\nHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFMWuNvwiE3uTPccxhPFyop5e0abkMA4G\nA1UdDwEB/wQEAwIBhjAKBggqhkjOPQQDAwNnADBkAjB5ryjJQJlO6BD0fqejchDc\nHB9su7+GoJMD5Kv9hoDeDlCTYoxE1fUp/36BAM3Ph/4CMB+QED5D9Nf7Fas99Xst\nxQ+EdLq74wvw/0YFQlsLVUH3UAnFE1uWnmwHkDZYF1EkcA==\n-----END CERTIFICATE-----";
      }

      else
      {
        v10 = "-----BEGIN CERTIFICATE-----\nMIIB9DCCAXugAwIBAgIIMyDS5tjDo6wwCgYIKoZIzj0EAwMwQDEUMBIGA1UEAwwL\nU0VQIFJvb3QgQ0ExEzARBgNVBAoMCkFwcGxlIEluYy4xEzARBgNVBAgMCkNhbGlm\nb3JuaWEwHhcNMTQwNjI0MjE0MzI0WhcNMjkwNjI0MjE0MzI0WjBAMRQwEgYDVQQD\nDAtTRVAgUm9vdCBDQTETMBEGA1UECgwKQXBwbGUgSW5jLjETMBEGA1UECAwKQ2Fs\naWZvcm5pYTB2MBAGByqGSM49AgEGBSuBBAAiA2IABEBGXhKwc7q3iFvkUoGDP6j2\ndrpxSCxsSCODaDQIqGwd53wZJ0xIJIv0RTf2TS7+/u4KzhrANzb19r+TQzwqFJMp\nhp3mI3yY4pukIFc/kWS7DLQAx/ftWBXX6vl4ig3wEqNCMEAwHQYDVR0OBBYEFFjv\n1r7FgrBUzRimhK2i9nt7On/PMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQD\nAgEGMAoGCCqGSM49BAMDA2cAMGQCMCWRVB9DxwYdXsJ8KVZwbU5y0rfNEWJwpH5B\nbH3HoiOT/k7TIzlcXWiWAZVVBsDf/gIwC5wq3OepHwBMMCa3Q4ZvpT4Qs0dmc4oa\nGYxqUZYACJiGD7vRVavVMFnf0s4xG0JG\n-----END CERTIFICATE-----";
      }

      v11 = &QAUCRTRootCAP384PEMLen;
LABEL_41:
      v12 = &UCRTRootCAPEMLen;
      goto LABEL_47;
    case 9:
      v9 = a2 == 0;
      if (a2)
      {
        v10 = "-----BEGIN CERTIFICATE-----\nMIIBtjCCAVugAwIBAgIBJTAKBggqhkjOPQQDAjBIMRwwGgYDVQQDDBNTRVAgUm9v\ndCBDQSAoTG9jYWwpMRMwEQYDVQQKDApBcHBsZSBJbmMuMRMwEQYDVQQIDApDYWxp\nZm9ybmlhMB4XDTE2MDQyMjIyMDMwMloXDTI2MDQyMDIyMDMwMlowSTETMBEGA1UE\nCAwKQ2FsaWZvcm5pYTETMBEGA1UECgwKQXBwbGUgSW5jLjEdMBsGA1UEAwwUdWNy\ndCBWZW5kaW5nIFNlcnZpY2UwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNCAAQooWKn\nj4PQnKhSGEpmJok/4CSDeG6fIk6A4vCDtuC5T2twqSmM0VWT3SY5B8QKMAspxnnT\nfxPmUJ+d2vhNPocFozUwMzAPBgNVHRMBAf8EBTADAQH/MAsGA1UdDwQEAwIBBjAT\nBgkqhkiG92NkBiwEBhYEdWNydDAKBggqhkjOPQQDAgNJADBGAiEAq6YVB2GvW4uu\nb17G+wTS/pehuM8tHLOH6RfJzUarkpUCIQDViFsKmYnrNx3yi9whnCHUE2SqvdRK\nYFSjST8cXO8B2g==\n-----END CERTIFICATE-----";
      }

      else
      {
        v10 = "-----BEGIN CERTIFICATE-----\nMIICFzCCAZygAwIBAgIIOcUqQ8IC/hswCgYIKoZIzj0EAwIwQDEUMBIGA1UEAwwL\nU0VQIFJvb3QgQ0ExEzARBgNVBAoMCkFwcGxlIEluYy4xEzARBgNVBAgMCkNhbGlm\nb3JuaWEwHhcNMTYwNDI1MjM0NTQ3WhcNMjkwNjI0MjE0MzI0WjBFMRMwEQYDVQQI\nDApDYWxpZm9ybmlhMRMwEQYDVQQKDApBcHBsZSBJbmMuMRkwFwYDVQQDDBBGRFJE\nQy1VQ1JULVNVQkNBMFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEaDc2O/MruYvP\nVPaUbKR7RRzn66B14/8KoUMsEDb7nHkGEMX6eC+0gStGHe4HYMrLyWcap1tDFYmE\nDykGQ3uM2aN7MHkwHQYDVR0OBBYEFLSqOkOtG+V+zgoMOBq10hnLlTWzMA8GA1Ud\nEwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAUWO/WvsWCsFTNGKaEraL2e3s6f88wDgYD\nVR0PAQH/BAQDAgEGMBYGCSqGSIb3Y2QGLAEB/wQGFgR1Y3J0MAoGCCqGSM49BAMC\nA2kAMGYCMQDf5zNiiKN/Jqms1w+3CDYkESOPieJMpEkLe9a0UjWXEBDL0VEsq/Cd\nE3aKXkc6R10CMQDS4MiWiymY+Rxkvy/hicDDQqI/BL+N3LHqzJZUuw2Sx0afDX7B\n6LyKk+sLq4urkMY=\n-----END CERTIFICATE-----";
      }

      v11 = &QAUCRTSubCAPEMLen;
      v12 = &UCRTSubCAPEMLen;
      goto LABEL_47;
    case 10:
      v13 = 1115;
      v10 = "-----BEGIN CERTIFICATE-----\nMIIDCjCCAnOgAwIBAgIJAKLEjm9wthY+MA0GCSqGSIb3DQEBBQUAMGIxCzAJBgNV\nBAYTAlVTMQswCQYDVQQIEwJDQTESMBAGA1UEBxMJQ3VwZXJ0aW5vMRMwEQYDVQQK\nEwpBcHBsZSBJbmMuMQwwCgYDVQQLEwNFVFMxDzANBgNVBAMTBlJhcHRvcjAeFw0x\nMTA2MjMxOTA1NDNaFw0xOTA5MDkxOTA1NDNaMGIxCzAJBgNVBAYTAlVTMQswCQYD\nVQQIEwJDQTESMBAGA1UEBxMJQ3VwZXJ0aW5vMRMwEQYDVQQKEwpBcHBsZSBJbmMu\nMQwwCgYDVQQLEwNFVFMxDzANBgNVBAMTBlJhcHRvcjCBnzANBgkqhkiG9w0BAQEF\nAAOBjQAwgYkCgYEAyckOSUo0WP7JAPTWXeVyEfeJ7JUm1cVzL4hURR/Kr9PR8x1g\nptLaxWVcni+9D6eHmn9FxmmQFXRbIQCs5/qj4PhFZLC3c77wvi/8OL2EwSIOq9MN\nHpm0P0jh/0e8AxJZS98gPfz6YF58H1/Vi5yYlM7zsGPdXaUiQokAbTcyXZUCAwEA\nAaOBxzCBxDAdBgNVHQ4EFgQUMSXJGuBw9hqPqJDExjgE206NyD4wgZQGA1UdIwSB\njDCBiYAUMSXJGuBw9hqPqJDExjgE206NyD6hZqRkMGIxCzAJBgNVBAYTAlVTMQsw\nCQYDVQQIEwJDQTESMBAGA1UEBxMJQ3VwZXJ0aW5vMRMwEQYDVQQKEwpBcHBsZSBJ\nbmMuMQwwCgYDVQQLEwNFVFMxDzANBgNVBAMTBlJhcHRvcoIJAKLEjm9wthY+MAwG\nA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADgYEAqrgiRsSNB4ubv2ZDUqH7p1a1\nHca1vMmXZy1bTBXTbxoNJ/tHnkBZrQHoRq31931Sd6CDLnN/8h+Zpcg7C40vKMBu\nnJ4gaPVrPZlv36rrW/xNf6ZLETt0Q8VM554/P2QfT4aU/2v2rFb/orAqsKSW6wtJ\n9WmL1qAfmVJAPdcwYbY=\n-----END CERTIFICATE-----";
      goto LABEL_51;
    case 11:
      v13 = 1143;
      v10 = "-----BEGIN CERTIFICATE-----\nMIIDHzCCAoigAwIBAgIJAK/qJPz+p+3XMA0GCSqGSIb3DQEBBQUAMGkxCzAJBgNV\nBAYTAlVTMQswCQYDVQQIEwJDQTESMBAGA1UEBxMJQ3VwZXJ0aW5vMRMwEQYDVQQK\nEwpBcHBsZSBJbmMuMQwwCgYDVQQLEwNFVFMxFjAUBgNVBAMTDVJhcHRvciBEZXZp\nY2UwHhcNMTEwNjIzMTkwNjE3WhcNMTkwOTA5MTkwNjE3WjBpMQswCQYDVQQGEwJV\nUzELMAkGA1UECBMCQ0ExEjAQBgNVBAcTCUN1cGVydGlubzETMBEGA1UEChMKQXBw\nbGUgSW5jLjEMMAoGA1UECxMDRVRTMRYwFAYDVQQDEw1SYXB0b3IgRGV2aWNlMIGf\nMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDOPR58emAZ3QBW6U3tZXmTjELxK495\nJavHz3yZm1lX1z7K9tmbqcmUuEXpBbxHtgEkTTmwZQIgM3f6asTn8CKln8kq7aYj\nAWbSNOCy35hLDCy+hCN9hi++3LqqHiuQ9whVAvyrqpX7xPfgGwheIgpp/sPoPbZF\nx5EiwPt7/uHzfQIDAQABo4HOMIHLMB0GA1UdDgQWBBSWWwNRWUp2XVKrcZ8yKR4r\nZh/4wDCBmwYDVR0jBIGTMIGQgBSWWwNRWUp2XVKrcZ8yKR4rZh/4wKFtpGswaTEL\nMAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRIwEAYDVQQHEwlDdXBlcnRpbm8xEzAR\nBgNVBAoTCkFwcGxlIEluYy4xDDAKBgNVBAsTA0VUUzEWMBQGA1UEAxMNUmFwdG9y\nIERldmljZYIJAK/qJPz+p+3XMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQAD\ngYEAP2PMyy+666s+vDH4mLhFb2ZUFUM/nyxnLbjEyxgxR5Z5iZ/H0BEp7s59Matv\ndO0dzhP1+khkcM6opicPG3Vu5eDI0odn41m7LDj6Z3lgrxFTKIm/Ghc7c7c0qdWA\nYLTvijBQsDqsY1YoAXr+80ReSSouJgkNvljBAoPFPpoK2xQ=\n-----END CERTIFICATE-----";
      goto LABEL_51;
    case 12:
      v9 = a2 == 0;
      if (a2)
      {
        v10 = "Certificate:\n"
              "    Data:\n"
              "        Version: 3 (0x2)\n"
              "        Serial Number: 1 (0x1)\n"
              "        Signature Algorithm: sha1WithRSAEncryption\n"
              "        Issuer: C=US, O=Apple Inc., OU=Apple Certification Authority, CN=[TEST] Apple iPhone Certification Authority\n"
              "        Validity\n"
              "            Not Before: Mar 21 06:20:50 2007 GMT\n"
              "            Not After : Mar 12 06:20:50 2022 GMT\n"
              "        Subject: C=US, O=Apple Inc., OU=Apple iPhone, CN=[TEST] Apple iPhone Device CA\n"
              "        Subject Public Key Info:\n"
              "            Public Key Algorithm: rsaEncryption\n"
              "            RSA Public Key: (1024 bit)\n"
              "                Modulus (1024 bit):\n"
              "                    00:d7:60:52:2a:fa:93:52:dc:db:ae:92:6b:d6:ac:\n"
              "                    59:17:1f:9a:20:ed:34:ae:c2:15:e8:e3:f0:3b:63:\n"
              "                    84:d8:6d:8d:02:65:74:e6:62:18:27:d1:fc:78:c3:\n"
              "                    2f:36:83:39:91:9f:3d:32:e0:95:7f:90:3b:ab:47:\n"
              "                    be:f1:47:85:8c:5d:ab:1c:5c:bb:10:69:47:56:b8:\n"
              "                    15:bf:34:4a:f0:49:6e:8a:35:4a:4f:47:bb:3e:ea:\n"
              "                    cc:df:2e:f4:b8:96:16:94:dd:38:f6:f0:82:cf:26:\n"
              "                    fd:67:a1:73:01:43:d8:25:bd:02:2c:82:89:7c:70:\n"
              "                    01:68:c2:8a:85:60:84:77:83\n"
              "                Exponent: 65537 (0x10001)\n"
              "        X509v3 extensions:\n"
              "            X509v3 Key Usage: critical\n"
              "                Digital Signature, Certificate Sign, CRL Sign\n"
              "            X509v3 Basic Constraints: critical\n"
              "                CA:TRUE\n"
              "            X509v3 Subject Key Identifier:\n"
              "                38:05:20:A9:3F:C6:79:F4:EC:9A:6F:7F:47:02:5E:6E:A4:79:11:F5\n"
              "            X509v3 Authority Key Identifier:\n"
              "                keyid:45:A2:4C:A9:8A:5B:4A:27:5E:85:A6:4D:05:1C:27:44:A5:87:76:17\n"
              "\n"
              "            X509v3 CRL Distribution Points:\n"
              "                URI:http://www.apple.com/appleca/iphone.crl\n"
              "\n"
              "    Signature Algorithm: sha1WithRSAEncryption\n"
              "        8d:be:6b:c8:4e:80:9e:78:86:0c:09:d0:6e:ed:c1:dc:30:f7:\n"
              "        29:4b:20:4e:2c:6c:b3:24:72:fd:ce:24:34:60:95:30:d7:32:\n"
              "        61:31:e5:d4:d5:63:aa:3f:89:81:f6:44:ab:71:d0:bc:17:db:\n"
              "        ab:bc:ec:bb:a4:40:6a:e7:e4:57:c6:28:6f:11:72:fc:0c:51:\n"
              "        07:31:db:40:54:ee:b5:e6:1e:e3:dc:9b:f9:3c:6a:ba:d8:c3:\n"
              "        20:f1:dd:49:cb:3a:a6:29:cd:52:f9:f3:f3:18:5e:dd:82:83:\n"
              "        b8:e8:4e:94:10:7a:1e:11:a0:63:4d:8e:60:4a:1d:45:72:4d:\n"
              "        a0:ac:1f:b0:98:8b:b4:33:5a:85:60:cf:7f:89:35:62:65:d1:\n"
              "        1b:48:a4:ec:ca:60:1a:9d:a6:d1:b9:3d:f3:64:a4:67:d1:a5:\n"
              "        1b:b6:d9:e7:65:75:cb:af:2f:7a:db:d8:a1:f4:f3:09:bf:9a:\n"
              "        99:1a:34:a6:ed:1f:82:84:0b:b6:a8:68:5d:ec:49:d4:b3:34:\n"
              "        84:af:cb:a4:d9:00:f0:bc:07:6c:17:e7:95:bb:c3:3d:d9:bb:\n"
              "        6a:13:1d:34:bd:2f:c1:9a:f1:4d:67:5f:56:33:90:b2:ef:ff:\n"
              "        27:da:19:60:55:b0:78:c2:8c:34:5b:61:3a:e1:ec:61:92:8b:\n"
              "        2f:04:9a:c6\n"
              "-----BEGIN CERTIFICATE-----\n"
              "MIIDeDCCAmCgAwIBAgIBATANBgkqhkiG9w0BAQUFADCBgDELMAkGA1UEBhMCVVMx\n"
              "EzARBgNVBAoTCkFwcGxlIEluYy4xJjAkBgNVBAsTHUFwcGxlIENlcnRpZmljYXRp\n"
              "b24gQXV0aG9yaXR5MTQwMgYDVQQDFCtbVEVTVF0gQXBwbGUgaVBob25lIENlcnRp\n"
              "ZmljYXRpb24gQXV0aG9yaXR5MB4XDTA3MDMyMTA2MjA1MFoXDTIyMDMxMjA2MjA1\n"
              "MFowYTELMAkGA1UEBhMCVVMxEzARBgNVBAoTCkFwcGxlIEluYy4xFTATBgNVBAsT\n"
              "DEFwcGxlIGlQaG9uZTEmMCQGA1UEAxQdW1RFU1RdIEFwcGxlIGlQaG9uZSBEZXZp\n"
              "Y2UgQ0EwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBANdgUir6k1Lc266Sa9as\n"
              "WRcfmiDtNK7CFejj8DtjhNhtjQJldOZiGCfR/HjDLzaDOZGfPTLglX+QO6tHvvFH\n"
              "hYxdqxxcuxBpR1a4Fb80SvBJboo1Sk9Huz7qzN8u9LiWFpTdOPbwgs8m/WehcwFD\n"
              "2CW9AiyCiXxwAWjCioVghHeDAgMBAAGjgZ4wgZswDgYDVR0PAQH/BAQDAgGGMA8G\n"
              "A1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFDgFIKk/xnn07Jpvf0cCXm6keRH1MB8G\n"
              "A1UdIwQYMBaAFEWiTKmKW0onXoWmTQUcJ0Slh3YXMDgGA1UdHwQxMC8wLaAroCmG\n"
              "J2h0dHA6Ly93d3cuYXBwbGUuY29tL2FwcGxlY2EvaXBob25lLmNybDANBgkqhkiG\n"
              "9w0BAQUFAAOCAQEAjb5ryE6AnniGDAnQbu3B3DD3KUsgTixssyRy/c4kNGCVMNcy\n"
              "YTHl1NVjqj+JgfZEq3HQvBfbq7zsu6RAaufkV8YobxFy/AxRBzHbQFTuteYe49yb\n"
              "+TxqutjDIPHdScs6pinNUvnz8xhe3YKDuOhOlBB6HhGgY02OYEodRXJNoKwfsJiL\n"
              "tDNahWDPf4k1YmXRG0ik7MpgGp2m0bk982SkZ9GlG7bZ52V1y68vetvYofTzCb+a\n"
              "mRo0pu0fgoQLtqhoXexJ1LM0hK/LpNkA8LwHbBfnlbvDPdm7ahMdNL0vwZrxTWdf\n"
              "VjOQsu//J9oZYFWweMKMNFthOuHsYZKLLwSaxg==\n"
              "-----END CERTIFICATE-----";
      }

      else
      {
        v10 = "Bag Attributes\n    localKeyID: 7C 29 15 15 12 C9 CF F6 15 2B 5B 25 70 3D A7 9A 98 14 36 06\nsubject=/C=US/O=Apple Inc./OU=Apple iPhone/CN=Apple iPhone Device CA\nissuer=/C=US/O=Apple Inc./OU=Apple Certification Authority/CN=Apple iPhone Certification Authority\n-----BEGIN CERTIFICATE-----\nMIIDaTCCAlGgAwIBAgIBATANBgkqhkiG9w0BAQUFADB5MQswCQYDVQQGEwJVUzET\nMBEGA1UEChMKQXBwbGUgSW5jLjEmMCQGA1UECxMdQXBwbGUgQ2VydGlmaWNhdGlv\nbiBBdXRob3JpdHkxLTArBgNVBAMTJEFwcGxlIGlQaG9uZSBDZXJ0aWZpY2F0aW9u\nIEF1dGhvcml0eTAeFw0wNzA0MTYyMjU0NDZaFw0xNDA0MTYyMjU0NDZaMFoxCzAJ\nBgNVBAYTAlVTMRMwEQYDVQQKEwpBcHBsZSBJbmMuMRUwEwYDVQQLEwxBcHBsZSBp\nUGhvbmUxHzAdBgNVBAMTFkFwcGxlIGlQaG9uZSBEZXZpY2UgQ0EwgZ8wDQYJKoZI\nhvcNAQEBBQADgY0AMIGJAoGBAPGUSsnquloYYK3Lok1NTlQZaRdZB2bLl+hmmkdf\nRq5nerVKc1SxywT2vTa4DFU4ioSDMVJl+TPhl3ecK0wmsCU/6TKqewh0lOzBSzgd\nZ04IUpRai1mjXNeT9KD+VYW7TEaXXm6yd0UvZ1y8Cxi/WblshvcqdXbSGXH0KWO5\nJQuvAgMBAAGjgZ4wgZswDgYDVR0PAQH/BAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8w\nHQYDVR0OBBYEFLL+ISNEhpVqedWBJo5zENinTI50MB8GA1UdIwQYMBaAFOc0Ki4i\n3jlga7SUzneDYS8xoHw1MDgGA1UdHwQxMC8wLaAroCmGJ2h0dHA6Ly93d3cuYXBw\nbGUuY29tL2FwcGxlY2EvaXBob25lLmNybDANBgkqhkiG9w0BAQUFAAOCAQEAd13P\nZ3pMViukVHe9WUg8Hum+0I/0kHKvjhwVd/IMwGlXyU7DhUYWdja2X/zqj7W24Aq5\n7dEKm3fqqxK5XCFVGY5HI0cRsdENyTP7lxSiiTRYj2mlPedheCn+k6T5y0U4Xr40\nFXwWb2nWqCF1AgIudhgvVbxlvqcxUm8Zz7yDeJ0JFovXQhyO5fLUHRLCQFssAbf8\nB4i8rYYsBUhYTspVJcxVpIIltkYpdIRSIARA49HNvKK4hzjzMS/OhKQpVKw+OCEZ\nxptCVeN2pjbdt9uzi175oVo/u6B2ArKAW17u6XEHIdDMOe7cb33peVI6TD15W4MI\npyQPbp8orlXe+tA8JA==\n-----END CERTIFICATE-----";
      }

      v11 = &QAIphoneDeviceCAPEMLen;
      v12 = &iPhoneDeviceCAPEMLen;
      goto LABEL_47;
    case 13:
      v9 = a2 == 0;
      if (a2)
      {
        v10 = "Certificate:\n"
              "    Data:\n"
              "        Version: 3 (0x2)\n"
              "        Serial Number: 2 (0x2)\n"
              "        Signature Algorithm: sha1WithRSAEncryption\n"
              "        Issuer: C=US, O=Apple Inc., OU=Apple Certification Authority, CN=[TEST] Apple iPhone Certification Authority\n"
              "        Validity\n"
              "            Not Before: Mar 21 06:20:50 2007 GMT\n"
              "            Not After : Mar 12 06:20:50 2022 GMT\n"
              "        Subject: C=US, O=Apple Inc., OU=Apple iPhone, CN=[TEST] Apple iPhone Activation\n"
              "        Subject Public Key Info:\n"
              "            Public Key Algorithm: rsaEncryption\n"
              "            RSA Public Key: (1024 bit)\n"
              "                Modulus (1024 bit):\n"
              "                    00:b3:62:65:ec:48:dd:dd:ed:44:d4:f1:fe:fb:c2:\n"
              "                    6f:42:d0:82:09:03:00:a6:01:e8:b1:07:09:26:5b:\n"
              "                    12:65:db:7f:51:15:ef:4f:45:b3:8f:ce:4d:16:1d:\n"
              "                    38:84:01:10:57:4e:8c:71:e1:5e:de:67:14:75:da:\n"
              "                    48:9a:4c:6f:f0:45:65:66:e8:9c:b5:a2:4c:f4:53:\n"
              "                    c1:ec:98:62:90:b0:94:be:12:f2:a0:ac:5c:77:16:\n"
              "                    07:73:72:5a:97:ba:50:4e:67:30:52:1e:f0:30:4e:\n"
              "                    8f:b2:a4:d3:d1:fa:f8:66:79:87:91:2f:a1:ef:4e:\n"
              "                    e6:41:8d:94:18:29:e0:f2:cf\n"
              "                Exponent: 65537 (0x10001)\n"
              "        X509v3 extensions:\n"
              "            X509v3 Key Usage: critical\n"
              "                Digital Signature\n"
              "            X509v3 Basic Constraints: critical\n"
              "                CA:FALSE\n"
              "            X509v3 Subject Key Identifier:\n"
              "                C0:6F:3A:4A:1B:ED:51:DD:9D:A3:4B:C0:41:F6:6A:11:F9:AB:8B:F1\n"
              "            X509v3 Authority Key Identifier:\n"
              "                keyid:45:A2:4C:A9:8A:5B:4A:27:5E:85:A6:4D:05:1C:27:44:A5:87:76:17\n"
              "\n"
              "            X509v3 CRL Distribution Points:\n"
              "                URI:http://www.apple.com/appleca/iphone.crl\n"
              "\n"
              "    Signature Algorithm: sha1WithRSAEncryption\n"
              "        0e:4f:55:00:9d:1e:4c:75:28:e8:79:bb:db:5c:5c:cc:45:93:\n"
              "        46:d3:3b:14:00:2d:5b:b0:8c:2e:15:3e:19:60:43:25:59:7f:\n"
              "        7b:3a:b2:7c:cf:c2:96:dd:b0:d7:70:5a:8e:28:c4:cc:32:2c:\n"
              "        f4:c2:43:e3:e1:1f:b3:b1:df:ec:86:dd:43:93:45:60:a1:53:\n"
              "        05:ba:6a:70:43:44:11:a1:9e:dd:c1:71:8b:cb:30:cd:d3:15:\n"
              "        21:e0:27:30:35:8a:76:8e:c2:23:fb:44:22:bd:96:f6:aa:55:\n"
              "        bf:4d:11:b1:0e:c4:7f:cf:86:8d:f8:30:dd:80:48:5d:9e:41:\n"
              "        4e:e0:29:96:25:cc:d6:4a:0d:47:05:87:c4:61:f6:b0:1e:1a:\n"
              "        da:48:56:a3:c1:c1:56:95:b3:4e:84:82:1b:a5:4d:d3:d0:5d:\n"
              "        60:cf:fd:e5:75:3c:91:13:e2:e4:f1:60:4a:58:93:de:3f:e9:\n"
              "        3c:bf:da:c9:f6:ef:9b:9e:b1:6e:78:9e:81:f6:e7:4c:09:b3:\n"
              "        1c:87:25:bf:8f:6e:3f:d6:03:53:1e:09:a3:5b:00:4b:9e:98:\n"
              "        fb:ae:13:86:e4:47:6a:1a:44:f8:15:c8:fb:30:c7:bd:b0:e8:\n"
              "        8c:ac:2d:73:08:af:ed:b2:e8:f5:6d:a1:e2:d9:45:de:d5:b9:\n"
              "        98:89:16:72\n"
              "-----BEGIN CERTIFICATE-----\n"
              "MIIDdjCCAl6gAwIBAgIBAjANBgkqhkiG9w0BAQUFADCBgDELMAkGA1UEBhMCVVMx\n"
              "EzARBgNVBAoTCkFwcGxlIEluYy4xJjAkBgNVBAsTHUFwcGxlIENlcnRpZmljYXRp\n"
              "b24gQXV0aG9yaXR5MTQwMgYDVQQDFCtbVEVTVF0gQXBwbGUgaVBob25lIENlcnRp\n"
              "ZmljYXRpb24gQXV0aG9yaXR5MB4XDTA3MDMyMTA2MjA1MFoXDTIyMDMxMjA2MjA1\n"
              "MFowYjELMAkGA1UEBhMCVVMxEzARBgNVBAoTCkFwcGxlIEluYy4xFTATBgNVBAsT\n"
              "DEFwcGxlIGlQaG9uZTEnMCUGA1UEAxQeW1RFU1RdIEFwcGxlIGlQaG9uZSBBY3Rp\n"
              "dmF0aW9uMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCzYmXsSN3d7UTU8f77\n"
              "wm9C0IIJAwCmAeixBwkmWxJl239RFe9PRbOPzk0WHTiEARBXToxx4V7eZxR12kia\n"
              "TG/wRWVm6Jy1okz0U8HsmGKQsJS+EvKgrFx3FgdzclqXulBOZzBSHvAwTo+ypNPR\n"
              "+vhmeYeRL6HvTuZBjZQYKeDyzwIDAQABo4GbMIGYMA4GA1UdDwEB/wQEAwIHgDAM\n"
              "BgNVHRMBAf8EAjAAMB0GA1UdDgQWBBTAbzpKG+1R3Z2jS8BB9moR+auL8TAfBgNV\n"
              "HSMEGDAWgBRFokypiltKJ16Fpk0FHCdEpYd2FzA4BgNVHR8EMTAvMC2gK6Aphido\n"
              "dHRwOi8vd3d3LmFwcGxlLmNvbS9hcHBsZWNhL2lwaG9uZS5jcmwwDQYJKoZIhvcN\n"
              "AQEFBQADggEBAA5PVQCdHkx1KOh5u9tcXMxFk0bTOxQALVuwjC4VPhlgQyVZf3s6\n"
              "snzPwpbdsNdwWo4oxMwyLPTCQ+PhH7Ox3+yG3UOTRWChUwW6anBDRBGhnt3BcYvL\n"
              "MM3TFSHgJzA1inaOwiP7RCK9lvaqVb9NEbEOxH/Pho34MN2ASF2eQU7gKZYlzNZK\n"
              "DUcFh8Rh9rAeGtpIVqPBwVaVs06EghulTdPQXWDP/eV1PJET4uTxYEpYk94/6Ty/\n"
              "2sn275uesW54noH250wJsxyHJb+Pbj/WA1MeCaNbAEuemPuuE4bkR2oaRPgVyPsw\n"
              "x72w6IysLXMIr+2y6PVtoeLZRd7VuZiJFnI=\n"
              "-----END CERTIFICATE-----\n";
      }

      else
      {
        v10 = "Bag Attributes\n    localKeyID: 75 60 9A FA 74 F6 E1 90 9C 00 2D 77 E5 10 D6 1C B3 E5 1F 4B\nsubject=/C=US/O=Apple Inc./OU=Apple iPhone/CN=Apple iPhone Activation\nissuer=/C=US/O=Apple Inc./OU=Apple Certification Authority/CN=Apple iPhone Certification Authority\n-----BEGIN CERTIFICATE-----\nMIIDZzCCAk+gAwIBAgIBAjANBgkqhkiG9w0BAQUFADB5MQswCQYDVQQGEwJVUzET\nMBEGA1UEChMKQXBwbGUgSW5jLjEmMCQGA1UECxMdQXBwbGUgQ2VydGlmaWNhdGlv\nbiBBdXRob3JpdHkxLTArBgNVBAMTJEFwcGxlIGlQaG9uZSBDZXJ0aWZpY2F0aW9u\nIEF1dGhvcml0eTAeFw0wNzA0MTYyMjU1MDJaFw0xNDA0MTYyMjU1MDJaMFsxCzAJ\nBgNVBAYTAlVTMRMwEQYDVQQKEwpBcHBsZSBJbmMuMRUwEwYDVQQLEwxBcHBsZSBp\nUGhvbmUxIDAeBgNVBAMTF0FwcGxlIGlQaG9uZSBBY3RpdmF0aW9uMIGfMA0GCSqG\nSIb3DQEBAQUAA4GNADCBiQKBgQDFAXzRImArmoiHfbS2oPcqAfbEv0d1jk7GbnX7\n+4YUlyIfprzBVdlmz2JHYv1+04IzJtL7cL97UI7fk0i0OMY0al8a+JPQa4Ug611T\nbqEt+njAmAkge3HXWDBdAXD9MhkC7T/9o77zOQ1oli4cUdzlnYWfzmW0PduOxuve\nAeYY4wIDAQABo4GbMIGYMA4GA1UdDwEB/wQEAwIHgDAMBgNVHRMBAf8EAjAAMB0G\nA1UdDgQWBBShoNL+t7Rz/psUaq/NPXNPH+/WlDAfBgNVHSMEGDAWgBTnNCouIt45\nYGu0lM53g2EvMaB8NTA4BgNVHR8EMTAvMC2gK6AphidodHRwOi8vd3d3LmFwcGxl\nLmNvbS9hcHBsZWNhL2lwaG9uZS5jcmwwDQYJKoZIhvcNAQEFBQADggEBAF9qmrUN\ndA+FROYGP7pWcYTAK+pLyOf9zOaE7aeVI885V8Y/BKHhlwAo+zEkiOU3FbEPCS9V\ntS18ZBcwD/+d5ZQTMFknhcUJwdPqqjnm9LqTfH/x4pw8ONHRDzxHdp96gOV3A4+8\nabkoASfcYqvIRypXnbur3bRRhTzAs4VILS6jTyFYymZeSewtBubmmigo1kCQiZGc\n76c5feDAyHb2bzEqtvx3WprljtS46QT5CR6YelinZnio32jAzRYTxtS6r3JsvZDi\nJ07+EHcmfGdpxwgO+7btW1pFar0ZjF9/jYKKnOYNyvCrwszhafbSYwzAG5EJoXFB\n4d+piWHUDcPxtcc=\n-----END CERTIFICATE-----";
      }

      v11 = &QAIphoneActivationPEMLen;
      v12 = &iPhoneActivationPEMLen;
LABEL_47:
      if (v9)
      {
        v11 = v12;
      }

      v13 = *v11;
      goto LABEL_51;
    case 14:
      v13 = 4721;
      v10 = iPhoneCAPEM;
      goto LABEL_51;
    default:
      v18 = createMobileActivationError("copyRootCertificate", 118, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid certificate type: %d", a7, a8, a1);
      if (v18)
      {
        goto LABEL_54;
      }

      v13 = 0;
      v10 = 0;
LABEL_51:
      v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v10 length:v13 freeWhenDone:0];
      if (v14)
      {
        v17 = v14;
        v18 = 0;
      }

      else
      {
        v18 = createMobileActivationError("copyRootCertificate", 128, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create certificate.", v15, v16, v20);
LABEL_54:
        if (a3)
        {
          v18 = v18;
          v17 = 0;
          *a3 = v18;
        }

        else
        {
          v17 = 0;
        }
      }

      return v17;
  }
}

id libavp_send_host_message(void *a1, void *a2)
{
  v3 = a1;
  cf[0] = 0;
  if (!is_virtual_machine())
  {
    v25 = @"Device is not a VM (not supported).";
    v26 = 60;
    v27 = -3;
LABEL_15:
    v21 = createMobileActivationError("libavp_send_host_message", v26, @"com.apple.MobileActivation.ErrorDomain", v27, 0, v25, v4, v5, v32);
    v22 = 0;
    v19 = 0;
    v10 = 0;
    v20 = 0;
    v8 = 0;
LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  if (!AppleVirtualPlatformLibraryCore(0))
  {
    v25 = @"Virtualization library not loaded on this platform.";
    v26 = 65;
    v27 = -1;
    goto LABEL_15;
  }

  if (!v3)
  {
    v25 = @"Invalid intput.";
    v26 = 70;
    v27 = -2;
    goto LABEL_15;
  }

  v8 = copy_calling_process_name();
  if (!v8)
  {
    v21 = createMobileActivationError("libavp_send_host_message", 76, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve process name.", v6, v7, v32);
    v22 = 0;
    v19 = 0;
    v10 = 0;
    v20 = 0;
    goto LABEL_16;
  }

  v9 = [v3 mutableCopy];
  [v9 setObject:v8 forKeyedSubscript:@"HostProcessName"];
  v33 = 0;
  v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:v9 format:100 options:0 error:&v33];
  v13 = v33;
  if (!v10)
  {
    v21 = createMobileActivationError("libavp_send_host_message", 85, @"com.apple.MobileActivation.ErrorDomain", -1, v13, @"Could not convert dictionary to xml data.", v11, v12, v32);

    v22 = 0;
    v19 = 0;
LABEL_26:
    v20 = 0;
    goto LABEL_17;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v14 = getAppleVirtualPlatformSendSubsystemMessageToHostSymbolLoc_ptr;
  v39 = getAppleVirtualPlatformSendSubsystemMessageToHostSymbolLoc_ptr;
  if (!getAppleVirtualPlatformSendSubsystemMessageToHostSymbolLoc_ptr)
  {
    cf[1] = MEMORY[0x277D85DD0];
    cf[2] = 3221225472;
    cf[3] = __getAppleVirtualPlatformSendSubsystemMessageToHostSymbolLoc_block_invoke;
    cf[4] = &unk_278585F58;
    v35 = &v36;
    v15 = AppleVirtualPlatformLibrary();
    v16 = dlsym(v15, "AppleVirtualPlatformSendSubsystemMessageToHost");
    *(v35[1] + 24) = v16;
    getAppleVirtualPlatformSendSubsystemMessageToHostSymbolLoc_ptr = *(v35[1] + 24);
    v14 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v14)
  {
    libavp_send_host_message_cold_1();
  }

  v19 = v14(6, v10, cf);
  if (!v19)
  {
    v21 = createMobileActivationError("libavp_send_host_message", 91, @"com.apple.MobileActivation.ErrorDomain", -1, cf[0], @"Failed to send message to host.", v17, v18, v32);

    v22 = 0;
    goto LABEL_26;
  }

  v32 = 0;
  v20 = [MEMORY[0x277CCAC58] propertyListWithData:v19 options:0 format:0 error:&v32];
  v21 = v32;

  v22 = isNSDictionary(v20);

  if (v22)
  {
    v22 = v20;
    v20 = v22;
  }

  else
  {
    v31 = createMobileActivationError("libavp_send_host_message", 97, @"com.apple.MobileActivation.ErrorDomain", -1, v21, @"Failed to serialize data as dictionary.", v23, v24, v32);

    v21 = v31;
  }

LABEL_17:
  if (a2 && !v22)
  {
    v28 = v21;
    *a2 = v21;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v29 = v22;

  return v22;
}

void sub_226210CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id libavp_copy_strong_identity_data(void *a1, void *a2)
{
  v3 = a1;
  cf = 0;
  if (!is_virtual_machine())
  {
    v15 = @"Device is not a VM (not supported).";
    v16 = 126;
    v17 = -3;
LABEL_9:
    v18 = createMobileActivationError("libavp_copy_strong_identity_data", v16, @"com.apple.MobileActivation.ErrorDomain", v17, 0, v15, v4, v5, v41);
    v8 = 0;
    goto LABEL_10;
  }

  if (!AppleVirtualPlatformLibraryCore(0))
  {
    v15 = @"Virtualization library not loaded on this platform.";
    v16 = 131;
    v17 = -1;
    goto LABEL_9;
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v8)
  {
    v9 = [v3 objectForKeyedSubscript:@"NetworkTimeoutInterval"];
    v10 = isNSNumber(v9);

    if (v10)
    {
      v11 = [v3 objectForKeyedSubscript:@"NetworkTimeoutInterval"];
      [v11 doubleValue];
      if (v14 <= 0.0)
      {
        createMobileActivationError("libavp_copy_strong_identity_data", 144, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid network timeout requested: %@", v12, v13, v11);
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0;
    }

    v21 = [v8 objectForKeyedSubscript:@"SkipNetworkRequest"];
    v22 = isNSNumber(v21);

    if (v22)
    {
      v23 = [v8 objectForKeyedSubscript:@"SkipNetworkRequest"];
      v24 = [v23 BOOLValue];
    }

    else
    {
      v24 = 0;
    }

    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v25 = getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousSymbolLoc_ptr;
    v51 = getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousSymbolLoc_ptr;
    if (!getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousSymbolLoc_ptr)
    {
      v43 = MEMORY[0x277D85DD0];
      v44 = 3221225472;
      v45 = __getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousSymbolLoc_block_invoke;
      v46 = &unk_278585F58;
      v47 = &v48;
      v26 = AppleVirtualPlatformLibrary();
      v49[3] = dlsym(v26, "kAppleVirtualPlatformGuestStrongIdentityOptionSynchronous");
      getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousSymbolLoc_ptr = *(v47[1] + 24);
      v25 = v49[3];
    }

    _Block_object_dispose(&v48, 8);
    if (!v25)
    {
      libavp_copy_strong_identity_data_cold_4();
    }

    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*v25];
    v27 = [MEMORY[0x277CCABB0] numberWithBool:v24];
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v28 = getkAppleVirtualPlatformGuestStrongIdentityOptionCachedOnlySymbolLoc_ptr;
    v51 = getkAppleVirtualPlatformGuestStrongIdentityOptionCachedOnlySymbolLoc_ptr;
    if (!getkAppleVirtualPlatformGuestStrongIdentityOptionCachedOnlySymbolLoc_ptr)
    {
      v43 = MEMORY[0x277D85DD0];
      v44 = 3221225472;
      v45 = __getkAppleVirtualPlatformGuestStrongIdentityOptionCachedOnlySymbolLoc_block_invoke;
      v46 = &unk_278585F58;
      v47 = &v48;
      v29 = AppleVirtualPlatformLibrary();
      v49[3] = dlsym(v29, "kAppleVirtualPlatformGuestStrongIdentityOptionCachedOnly");
      getkAppleVirtualPlatformGuestStrongIdentityOptionCachedOnlySymbolLoc_ptr = *(v47[1] + 24);
      v28 = v49[3];
    }

    _Block_object_dispose(&v48, 8);
    if (!v28)
    {
      libavp_copy_strong_identity_data_cold_3();
    }

    [v8 setObject:v27 forKeyedSubscript:*v28];

    if (v11)
    {
      v30 = MEMORY[0x277CCABB0];
      [v11 doubleValue];
      v32 = [v30 numberWithDouble:v31 * 1000000000.0];
      v48 = 0;
      v49 = &v48;
      v50 = 0x2020000000;
      v33 = getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsecSymbolLoc_ptr;
      v51 = getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsecSymbolLoc_ptr;
      if (!getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsecSymbolLoc_ptr)
      {
        v43 = MEMORY[0x277D85DD0];
        v44 = 3221225472;
        v45 = __getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsecSymbolLoc_block_invoke;
        v46 = &unk_278585F58;
        v47 = &v48;
        v34 = AppleVirtualPlatformLibrary();
        v49[3] = dlsym(v34, "kAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsec");
        getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsecSymbolLoc_ptr = *(v47[1] + 24);
        v33 = v49[3];
      }

      _Block_object_dispose(&v48, 8);
      if (!v33)
      {
        libavp_copy_strong_identity_data_cold_1();
      }

      [v8 setObject:v32 forKeyedSubscript:*v33];
    }

    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v35 = getAppleVirtualPlatformGuestCopyStrongIdentityDataSymbolLoc_ptr;
    v51 = getAppleVirtualPlatformGuestCopyStrongIdentityDataSymbolLoc_ptr;
    if (!getAppleVirtualPlatformGuestCopyStrongIdentityDataSymbolLoc_ptr)
    {
      v43 = MEMORY[0x277D85DD0];
      v44 = 3221225472;
      v45 = __getAppleVirtualPlatformGuestCopyStrongIdentityDataSymbolLoc_block_invoke;
      v46 = &unk_278585F58;
      v47 = &v48;
      v36 = AppleVirtualPlatformLibrary();
      v49[3] = dlsym(v36, "AppleVirtualPlatformGuestCopyStrongIdentityData");
      getAppleVirtualPlatformGuestCopyStrongIdentityDataSymbolLoc_ptr = *(v47[1] + 24);
      v35 = v49[3];
    }

    _Block_object_dispose(&v48, 8);
    if (!v35)
    {
      libavp_copy_strong_identity_data_cold_2();
    }

    v37 = v35(v8, &cf);
    if (v37)
    {
      v20 = v37;
      v18 = 0;
      goto LABEL_36;
    }

    createMobileActivationError("libavp_copy_strong_identity_data", 162, @"com.apple.MobileActivation.ErrorDomain", -24, cf, @"Failed to copy AVP guest identity data.", v38, v39, v41);
    v18 = LABEL_34:;
    if (!a2)
    {
      goto LABEL_35;
    }

LABEL_11:
    v19 = v18;
    v20 = 0;
    *a2 = v18;
    goto LABEL_36;
  }

  v18 = createMobileActivationError("libavp_copy_strong_identity_data", 137, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate dictionary.", v6, v7, v41);
LABEL_10:
  v11 = 0;
  if (a2)
  {
    goto LABEL_11;
  }

LABEL_35:
  v20 = 0;
LABEL_36:
  if (cf)
  {
    CFRelease(cf);
  }

  return v20;
}

void sub_2262112E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *libavp_copy_host_key_and_certs_with_data(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v47 = v7;
  if (is_virtual_machine())
  {
    v11 = v8;
    v12 = @"Device is a VM (not supported).";
    v13 = 192;
    v14 = -3;
LABEL_18:
    v23 = createMobileActivationError("libavp_copy_host_key_and_certs_with_data", v13, @"com.apple.MobileActivation.ErrorDomain", v14, 0, v12, v9, v10, v46);
    v20 = 0;
    v17 = 0;
    goto LABEL_19;
  }

  if (!AppleVirtualPlatformLibraryCore(0))
  {
    v11 = v8;
    v12 = @"Virtualization library not loaded on this platform.";
    v13 = 197;
    v14 = -1;
    goto LABEL_18;
  }

  if (!v7)
  {
    v11 = v8;
    v12 = @"Invalid intput.";
    v13 = 202;
    v14 = -2;
    goto LABEL_18;
  }

  v17 = objc_alloc_init(MEMORY[0x277CBEB28]);
  if (!v17)
  {
    v11 = v8;
    v23 = createMobileActivationError("libavp_copy_host_key_and_certs_with_data", 208, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate data.", v15, v16, v46);
    v20 = 0;
LABEL_19:
    v34 = 0;
    v31 = 0;
    v38 = 0;
    v27 = 0;
    if (!a4)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x2050000000;
  v18 = getAppleVirtualPlatformHostCertificateClass_softClass;
  v53 = getAppleVirtualPlatformHostCertificateClass_softClass;
  if (!getAppleVirtualPlatformHostCertificateClass_softClass)
  {
    v48[1] = MEMORY[0x277D85DD0];
    v48[2] = 3221225472;
    v48[3] = __getAppleVirtualPlatformHostCertificateClass_block_invoke;
    v48[4] = &unk_278585F58;
    v49 = &v50;
    AppleVirtualPlatformLibraryCore(0);
    v51[3] = objc_getClass("AppleVirtualPlatformHostCertificate");
    getAppleVirtualPlatformHostCertificateClass_softClass = *(v49[1] + 24);
    v18 = v51[3];
  }

  v19 = v18;
  _Block_object_dispose(&v50, 8);
  v48[0] = 0;
  v20 = [[v18 alloc] initWithDataRepresentation:v7 error:v48];
  v23 = v48[0];
  if (!v20)
  {
    v11 = v8;
    v43 = createMobileActivationError("libavp_copy_host_key_and_certs_with_data", 214, @"com.apple.MobileActivation.ErrorDomain", -1, v23, @"Failed to initialize identity data.", v21, v22, v46);

    v34 = 0;
    v31 = 0;
    v38 = 0;
    v27 = 0;
    goto LABEL_34;
  }

  v24 = [v20 hostKey];
  v27 = v24;
  if (!v24)
  {
    v11 = v8;
    v43 = createMobileActivationError("libavp_copy_host_key_and_certs_with_data", 220, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy AVP host key.", v25, v26, v46);

    v34 = 0;
    v31 = 0;
LABEL_33:
    v38 = 0;
    goto LABEL_34;
  }

  v11 = v8;
  CFRetain(v24);
  v28 = [v20 leafCertificate];
  v31 = v28;
  if (!v28)
  {
    v43 = createMobileActivationError("libavp_copy_host_key_and_certs_with_data", 228, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy AVP host leaf certificate.", v29, v30, v46);

    v34 = 0;
    goto LABEL_33;
  }

  CFRetain(v28);
  v34 = SecCertificateCopyData(v31);
  if (!v34)
  {
    v43 = createMobileActivationError("libavp_copy_host_key_and_certs_with_data", 236, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create PEM data from cert.", v32, v33, v46);

    goto LABEL_33;
  }

  [v17 appendData:v34];
  v35 = [v20 intermediateCertificate];
  v38 = v35;
  if (v35)
  {
    CFRetain(v35);
    v46 = SecCertificateCopyData(v38);

    v34 = v46;
    if (v46)
    {
      [v17 appendData:v46];
      if (a3)
      {
        v39 = v17;
        *a3 = v17;
      }

      goto LABEL_24;
    }

    v44 = @"Failed to create PEM data from cert.";
    v45 = 252;
  }

  else
  {
    v44 = @"Failed to copy AVP host intermediate certificate.";
    v45 = 244;
  }

  v43 = createMobileActivationError("libavp_copy_host_key_and_certs_with_data", v45, @"com.apple.MobileActivation.ErrorDomain", -1, 0, v44, v36, v37, v46);

LABEL_34:
  v23 = v43;
  if (a4)
  {
LABEL_20:
    v40 = v23;
    *a4 = v23;
  }

LABEL_21:
  if (v27)
  {
    CFRelease(v27);
  }

  v27 = 0;
  v41 = 0;
  if (v31)
  {
LABEL_24:
    CFRelease(v31);
    v41 = v27;
  }

  if (v38)
  {
    CFRelease(v38);
  }

  return v41;
}

void sub_2262117E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t libavp_guest_has_host_key(void *a1)
{
  if (!is_virtual_machine())
  {
    v8 = @"Device is not a VM (not supported).";
    v9 = 285;
    v10 = -3;
    goto LABEL_10;
  }

  if (!AppleVirtualPlatformLibraryCore(0))
  {
    v8 = @"Virtualization library not loaded on this platform.";
    v9 = 290;
    v10 = -1;
LABEL_10:
    v7 = createMobileActivationError("libavp_guest_has_host_key", v9, @"com.apple.MobileActivation.ErrorDomain", v10, 0, v8, v2, v3, v12);
    v6 = 0;
    if (!a1)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v4 = getAppleVirtualPlatformGuestHasHostKeySymbolLoc_ptr;
  v16 = getAppleVirtualPlatformGuestHasHostKeySymbolLoc_ptr;
  if (!getAppleVirtualPlatformGuestHasHostKeySymbolLoc_ptr)
  {
    v5 = AppleVirtualPlatformLibrary();
    v14[3] = dlsym(v5, "AppleVirtualPlatformGuestHasHostKey");
    getAppleVirtualPlatformGuestHasHostKeySymbolLoc_ptr = v14[3];
    v4 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v4)
  {
    libavp_guest_has_host_key_cold_1();
  }

  v6 = v4();
  v7 = 0;
  if (a1)
  {
LABEL_11:
    if ((v6 & 1) == 0)
    {
      v7 = v7;
      *a1 = v7;
    }
  }

LABEL_13:

  return v6;
}

void sub_226211978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AppleVirtualPlatformLibraryCore(uint64_t a1)
{
  if (!AppleVirtualPlatformLibraryCore_frameworkLibrary)
  {
    AppleVirtualPlatformLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return AppleVirtualPlatformLibraryCore_frameworkLibrary;
}

uint64_t __AppleVirtualPlatformLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AppleVirtualPlatformLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAppleVirtualPlatformSendSubsystemMessageToHostSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleVirtualPlatformLibrary();
  result = dlsym(v2, "AppleVirtualPlatformSendSubsystemMessageToHost");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAppleVirtualPlatformSendSubsystemMessageToHostSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AppleVirtualPlatformLibrary()
{
  v3 = 0;
  v0 = AppleVirtualPlatformLibraryCore(&v3);
  if (!v0)
  {
    AppleVirtualPlatformLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

void *__getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleVirtualPlatformLibrary();
  result = dlsym(v2, "kAppleVirtualPlatformGuestStrongIdentityOptionSynchronous");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAppleVirtualPlatformGuestStrongIdentityOptionCachedOnlySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleVirtualPlatformLibrary();
  result = dlsym(v2, "kAppleVirtualPlatformGuestStrongIdentityOptionCachedOnly");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAppleVirtualPlatformGuestStrongIdentityOptionCachedOnlySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsecSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleVirtualPlatformLibrary();
  result = dlsym(v2, "kAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsec");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsecSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAppleVirtualPlatformGuestCopyStrongIdentityDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleVirtualPlatformLibrary();
  result = dlsym(v2, "AppleVirtualPlatformGuestCopyStrongIdentityData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAppleVirtualPlatformGuestCopyStrongIdentityDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAppleVirtualPlatformHostCertificateClass_block_invoke(uint64_t a1)
{
  AppleVirtualPlatformLibraryCore(0);
  result = objc_getClass("AppleVirtualPlatformHostCertificate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAppleVirtualPlatformHostCertificateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAppleVirtualPlatformGuestHasHostKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppleVirtualPlatformLibrary();
  result = dlsym(v2, "AppleVirtualPlatformGuestHasHostKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAppleVirtualPlatformGuestHasHostKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t evaluateBAATrust(void *a1, void *a2, int a3, void *a4)
{
  v7 = a1;
  v10 = a2;
  if (v7)
  {
    v11 = [v7 bytes];
    v12 = [v7 length];
    v13 = [v10 bytes];
    v14 = [v10 length];
    if (a3)
    {
      v15 = CTEvaluateBAASystemTestRoot(v11, v12, v13, v14, 0, 0, 0);
      if (v15)
      {
LABEL_4:
        createMobileActivationError("evaluateBAATrust", 290, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to evaluate trust: 0x%08x", v16, v17, v15);
        goto LABEL_6;
      }
    }

    else
    {
      v15 = CTEvaluateBAAUserTestRoot(v11, v12, v13, v14, 0, 0, 0);
      if (v15)
      {
        goto LABEL_4;
      }
    }

    v18 = 0;
    v19 = 1;
    goto LABEL_11;
  }

  createMobileActivationError("evaluateBAATrust", 280, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.", v8, v9, v21);
  v18 = LABEL_6:;
  if (a4)
  {
    v18 = v18;
    v19 = 0;
    *a4 = v18;
  }

  else
  {
    v19 = 0;
  }

LABEL_11:

  return v19;
}

uint64_t evaluateBAATrustWithCerts(__SecCertificate *a1, __SecCertificate *a2, __SecCertificate *a3, int a4, int a5, void *a6, void *a7)
{
  v13 = a6;
  v16 = v13;
  error = 0;
  if (!a1 || !a2 || !a3)
  {
    v17 = @"Invalid input(s).";
    v18 = 317;
    v19 = -2;
LABEL_20:
    v40 = createMobileActivationError("evaluateBAATrustWithCerts", v18, @"com.apple.MobileActivation.ErrorDomain", v19, 0, v17, v14, v15, v48);
    v22 = 0;
LABEL_24:
    v28 = 0;
LABEL_25:
    v25 = 0;
LABEL_26:
    v34 = 0;
    goto LABEL_27;
  }

  if (v13)
  {
    if (!a5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CBEAA8] date];
    if (!a5)
    {
      goto LABEL_11;
    }
  }

  [v16 timeIntervalSinceReferenceDate];
  if (!SecCertificateIsValid() || ([v16 timeIntervalSinceReferenceDate], (SecCertificateIsValid() & 1) == 0))
  {
    v17 = @"Certificate is expired.";
    v18 = 333;
    v19 = -1;
    goto LABEL_20;
  }

LABEL_11:
  v22 = objc_alloc_init(MEMORY[0x277CBEB28]);
  if (!v22)
  {
    v42 = @"Failed to allocate data.";
    v43 = 342;
LABEL_23:
    v40 = createMobileActivationError("evaluateBAATrustWithCerts", v43, @"com.apple.MobileActivation.ErrorDomain", -1, 0, v42, v20, v21, v48);
    goto LABEL_24;
  }

  v23 = SecCertificateCopyData(a1);
  if (!v23)
  {
    v42 = @"Failed to copy certificate.";
    v43 = 348;
    goto LABEL_23;
  }

  v24 = v23;
  [v22 appendData:v23];
  v25 = SecCertificateCopyData(a2);

  if (!v25)
  {
    v40 = createMobileActivationError("evaluateBAATrustWithCerts", 356, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate.", v26, v27, v48);
    v28 = 0;
    goto LABEL_26;
  }

  [v22 appendData:v25];
  v28 = SecCertificateCopyData(a3);

  if (!v28)
  {
    v40 = createMobileActivationError("evaluateBAATrustWithCerts", 364, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy certificate.", v29, v30, v48);
    goto LABEL_25;
  }

  [v22 appendData:v28];
  v31 = SecCertificateCopyKey(a3);
  v34 = v31;
  if (v31)
  {
    v25 = SecKeyCopyExternalRepresentation(v31, &error);
    if (v25)
    {
      v48 = 0;
      v37 = evaluateBAATrust(v22, v25, a4, &v48);
      v40 = v48;
      if (v37)
      {
        v41 = 1;
LABEL_30:
        CFRelease(v34);
        v45 = v41;
        goto LABEL_31;
      }

      v47 = createMobileActivationError("evaluateBAATrustWithCerts", 391, @"com.apple.MobileActivation.ErrorDomain", -1, v40, @"Failed to verify BAA certificate.", v38, v39, v48);

      v40 = v47;
    }

    else
    {
      v40 = createMobileActivationError("evaluateBAATrustWithCerts", 384, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to copy public key data.", v35, v36, v48);
    }
  }

  else
  {
    v40 = createMobileActivationError("evaluateBAATrustWithCerts", 378, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy public key.", v32, v33, v48);
    v25 = 0;
  }

LABEL_27:
  if (a7)
  {
    v44 = v40;
    *a7 = v40;
  }

  v41 = 0;
  v45 = 0;
  if (v34)
  {
    goto LABEL_30;
  }

LABEL_31:
  if (error)
  {
    CFRelease(error);
  }

  return v45;
}

id DeviceIdentityProcessVMRequest(void *a1)
{
  v70[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  error = 0;
  v4 = 0x277CCA000uLL;
  if (is_virtual_machine())
  {
    v5 = createMobileActivationError("DeviceIdentityProcessVMRequest", 160, @"com.apple.MobileActivation.ErrorDomain", -3, 0, @"Device is a VM (not supported).", v2, v3, v54);
    v6 = 0;
    v57 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
LABEL_19:
    v29 = 0;
    v58 = 0;
    goto LABEL_20;
  }

  v10 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  v9 = v10;
  if (!v10)
  {
    v31 = @"Failed to create task.";
    v32 = 168;
    v33 = 0;
LABEL_18:
    v5 = createMobileActivationError("DeviceIdentityProcessVMRequest", v32, @"com.apple.MobileActivation.ErrorDomain", -1, v33, v31, v11, v12, v54);
    v6 = 0;
    v57 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_19;
  }

  v13 = SecTaskCopySigningIdentifier(v10, &error);
  if (!v13)
  {
    v33 = error;
    v31 = @"Failed to query code signing identifier.";
    v32 = 174;
    goto LABEL_18;
  }

  v14 = v1;
  v7 = v13;
  v8 = SecTaskCopyValueForEntitlement(v9, @"com.apple.mobileactivationd.spi", &error);
  v15 = isNSNumber(v8);
  if (!v15 || (v16 = v15, v17 = [v8 BOOLValue], v16, (v17 & 1) == 0))
  {
    v34 = error;
    v69 = @"com.apple.mobileactivationd.spi";
    v70[0] = MEMORY[0x277CBEC38];
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:&v69 count:1];
    v5 = createMobileActivationError("DeviceIdentityProcessVMRequest", 180, @"com.apple.MobileActivation.ErrorDomain", -7, v34, @"Missing required entitlement: %@", v36, v37, v35);

    v6 = 0;
    v57 = 0;
    v58 = 0;
    v29 = 0;
    v4 = 0x277CCA000uLL;
    v1 = v14;
    goto LABEL_20;
  }

  v4 = 0x277CCA000uLL;
  v61 = 0;
  v1 = v14;
  v18 = [MEMORY[0x277CCAC58] propertyListWithData:v14 options:0 format:0 error:&v61];
  v19 = v61;
  v6 = isNSDictionary(v18);

  v58 = v18;
  if (v6)
  {
    v22 = [v18 objectForKeyedSubscript:@"HostProcessName"];
    v23 = isNSString(v22);

    if (!v23)
    {

      v22 = @"unknown";
    }

    v24 = [v18 objectForKeyedSubscript:@"Command"];
    v25 = isNSString(v24);

    v57 = v22;
    if (!v25)
    {
      v5 = createMobileActivationError("DeviceIdentityProcessVMRequest", 197, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Request missing required key: %@", v26, v27, @"Command");

      v29 = 0;
      v6 = v24;
      v1 = v14;
      v4 = 0x277CCA000;
      goto LABEL_20;
    }

    v6 = v24;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v66 = v22;
      v67 = 2114;
      v68 = v24;
      _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Host connection (%{public}@): %{public}@", buf, 0x16u);
    }

    v28 = [v24 isEqualToString:@"CopyVMHostCertificateRequest"];
    v1 = v14;
    v4 = 0x277CCA000;
    if (v28)
    {
      v60 = v19;
      v29 = process_copy_host_certificate_request(v18, &v60);
      v30 = v60;
LABEL_39:
      v5 = v30;

      goto LABEL_20;
    }

    if ([v6 isEqualToString:@"CreateVMHostKeyAttestationRequest"])
    {
      v59 = v19;
      v29 = process_create_host_key_signature_request(v18, &v59);
      v30 = v59;
      goto LABEL_39;
    }

    v5 = createMobileActivationError("DeviceIdentityProcessVMRequest", 208, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid request: %@", v52, v53, v6);
  }

  else
  {
    v5 = createMobileActivationError("DeviceIdentityProcessVMRequest", 186, @"com.apple.MobileActivation.ErrorDomain", -1, v19, @"Failed to create dictionary from data.", v20, v21, v54);

    v57 = 0;
  }

  v29 = 0;
LABEL_20:
  if (v5)
  {
    v38 = v6;
    v55 = v8;
    v56 = v9;
    v39 = v7;
    v40 = v4;
    v41 = v1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v66 = v5;
      _os_log_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Error occurred processing request: %@", buf, 0xCu);
    }

    v42 = @"Error";
    v43 = MEMORY[0x277CCACA8];
    v44 = [(__CFString *)v5 localizedDescription];
    v45 = [(__CFString *)v5 userInfo];
    v46 = [v43 stringWithFormat:@"%@ (%@)", v44, v45];

    v63 = v42;
    v64 = v46;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];

    v29 = v47;
    v48 = v40;
    v7 = v39;
    v8 = v55;
    v9 = v56;
  }

  else
  {
    v48 = v4;
    v41 = v1;
    v38 = v6;
    v42 = 0;
    v46 = 0;
  }

  if (v29)
  {
    v49 = v29;
  }

  else
  {
    v49 = MEMORY[0x277CBEC10];
  }

  v50 = [*(v48 + 3160) dataWithPropertyList:v49 format:100 options:0 error:0];
  if (v9)
  {
    CFRelease(v9);
  }

  if (error)
  {
    CFRelease(error);
  }

  return v50;
}

id process_copy_host_certificate_request(void *a1, void *a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v6 = v3;
  if (!v3)
  {
    v18 = createMobileActivationError("process_copy_host_certificate_request", 39, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.", v4, v5, v25);
    v12 = 0;
    v9 = 0;
    v8 = 0;
LABEL_14:
    v22 = 0;
    v15 = 0;
    goto LABEL_15;
  }

  v7 = [v3 objectForKeyedSubscript:@"Options"];
  v8 = v7;
  if (v7)
  {
    v9 = isNSDictionary(v7);

    if (!v9)
    {
      v18 = createMobileActivationError("process_copy_host_certificate_request", 45, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid key: %@", v10, v11, @"Options");
      v12 = 0;
      goto LABEL_14;
    }
  }

  v12 = [v6 objectForKeyedSubscript:@"Value"];
  v9 = isNSData(v12);

  if (!v9)
  {
    v18 = createMobileActivationError("process_copy_host_certificate_request", 51, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing or invalid required option: %@", v13, v14, @"BIKData");
    goto LABEL_14;
  }

  v26 = 0;
  v27 = 0;
  v15 = libavp_copy_host_key_and_certs_with_data(v12, v8, &v27, &v26);
  v9 = v27;
  v18 = v26;
  if (v15)
  {
    v19 = v9 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = createMobileActivationError("process_copy_host_certificate_request", 57, @"com.apple.MobileActivation.ErrorDomain", -1, v18, @"Failed to decode host identity data.", v16, v17, v25);

    v22 = 0;
    v18 = v20;
  }

  else
  {
    v30 = @"RKCertification";
    v31[0] = v9;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v28 = @"Value";
    v29 = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  }

LABEL_15:
  if (a2 && !v22)
  {
    v23 = v18;
    *a2 = v18;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v22;
}

id process_create_host_key_signature_request(void *a1, void *a2)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v6 = v3;
  cf = 0;
  if (!v3)
  {
    v21 = createMobileActivationError("process_create_host_key_signature_request", 89, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.", v4, v5, v30);
    v8 = 0;
    v12 = 0;
    v9 = 0;
LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v7 = [v3 objectForKeyedSubscript:@"Options"];
  v8 = v7;
  if (v7)
  {
    v9 = isNSDictionary(v7);

    if (!v9)
    {
      v21 = createMobileActivationError("process_create_host_key_signature_request", 95, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid key: %@", v10, v11, @"Options");
      v12 = 0;
      goto LABEL_15;
    }
  }

  v12 = [v8 objectForKeyedSubscript:@"BIKData"];
  v13 = isNSData(v12);

  if (v13)
  {
    v9 = [v6 objectForKeyedSubscript:@"Value"];
    v13 = isNSData(v9);

    if (v13)
    {
      v33 = 0;
      v34 = 0;
      v18 = libavp_copy_host_key_and_certs_with_data(v12, v8, &v34, &v33);
      v13 = v34;
      v21 = v33;
      if (v18)
      {
        v22 = v13 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        v31 = createMobileActivationError("process_create_host_key_signature_request", 113, @"com.apple.MobileActivation.ErrorDomain", -1, v21, @"Failed to decode host identity data.", v19, v20, v30);

        v23 = 0;
      }

      else
      {
        Signature = SecKeyCreateSignature(v18, *MEMORY[0x277CDC300], v9, &cf);
        v23 = Signature;
        if (Signature)
        {
          v38[0] = @"RKSignature";
          v38[1] = @"RKCertification";
          v39[0] = Signature;
          v39[1] = v13;
          v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
          v36 = @"Value";
          v37 = v32;
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];

          goto LABEL_17;
        }

        v31 = createMobileActivationError("process_create_host_key_signature_request", 119, @"com.apple.MobileActivation.ErrorDomain", -2, cf, @"Failed to create signature.", v28, v29, v30);
      }

      v24 = 0;
      v21 = v31;
      goto LABEL_17;
    }

    v21 = createMobileActivationError("process_create_host_key_signature_request", 107, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing or invalid required option: %@", v16, v17, @"Value");
  }

  else
  {
    v21 = createMobileActivationError("process_create_host_key_signature_request", 101, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Missing or invalid required option: %@", v14, v15, @"BIKData");
    v9 = 0;
  }

LABEL_16:
  v23 = 0;
  v24 = 0;
  v18 = 0;
LABEL_17:
  if (a2 && !v24)
  {
    v25 = v21;
    *a2 = v21;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v18)
  {
    CFRelease(v18);
  }

  return v24;
}

uint64_t DeviceIdentityValidateIdentity(__SecKey *a1, __SecCertificate *a2, __SecCertificate *a3, void *a4, BOOL *a5, __SecKey **a6)
{
  v11 = a4;
  v81 = v11;
  if (!a2 || !a3)
  {
    v32 = createMobileActivationError("DeviceIdentityValidateIdentity", 258, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).", v14, v15, v77);
LABEL_13:
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v28 = 0;
    goto LABEL_14;
  }

  v16 = v11;
  if (a1)
  {
    v86 = 0;
    valid = security_valid_security_enclave_reference_key(a1, 0, 0, &v86, v12, v13, v14, v15);
    v18 = v86;
    v21 = v18;
    if (!valid || (v85 = v18, v22 = security_certificate_matches_key(a1, 0, a2, &v85), a1 = v85, v21, v21 = a1, (v22 & 1) == 0))
    {
      v32 = createMobileActivationError("DeviceIdentityValidateIdentity", 265, @"com.apple.MobileActivation.ErrorDomain", -2, v21, @"Invalid reference key.", v19, v20, v77);

      goto LABEL_13;
    }
  }

  v80 = a1;
  v23 = [v16 objectForKeyedSubscript:@"scrtAttestation"];
  v24 = isNSNumber(v23);

  v78 = a5;
  if (v24)
  {
    v25 = [v16 objectForKeyedSubscript:@"scrtAttestation"];
    LOBYTE(v24) = [v25 BOOLValue];
  }

  v26 = is_virtual_machine();
  v27 = objc_alloc(MEMORY[0x277CBEBD0]);
  v28 = [v27 persistentDomainForName:@"com.apple.mobileactivationd"];

  [@"com.apple.mobileactivationd" UTF8String];
  if (os_variant_allows_internal_security_policies() && ([v28 objectForKeyedSubscript:@"UseQACertificates"], v29 = objc_claimAutoreleasedReturnValue(), isNSNumber(v29), v30 = objc_claimAutoreleasedReturnValue(), v30, v29, v30))
  {
    v31 = [v28 objectForKeyedSubscript:@"UseQACertificates"];
    v79 = [v31 BOOLValue];
  }

  else
  {
    v79 = 0;
  }

  v41 = v26 | v24;
  v42 = [v16 objectForKeyedSubscript:@"CertType"];
  v35 = isNSNumber(v42);

  if (!v35)
  {
    goto LABEL_27;
  }

  v35 = [v16 objectForKeyedSubscript:@"CertType"];
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  if ([v35 isEqualToNumber:v43])
  {
  }

  else
  {
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
    v45 = [v35 isEqualToNumber:v44];

    if ((v45 & 1) == 0)
    {
      createMobileActivationError("DeviceIdentityValidateIdentity", 294, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid value for option (%@): %@", v46, v47, @"CertType");
      goto LABEL_44;
    }
  }

  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v49 = [v35 isEqualToNumber:v48];

  if (v49)
  {
    if (is_virtual_machine())
    {
      createMobileActivationError("DeviceIdentityValidateIdentity", 305, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Certificate type (%@) is not supported on virtual machines.", v53, v54, v35);
      v32 = LABEL_44:;

      v33 = 0;
      v34 = 0;
LABEL_14:
      v36 = 0;
      if (!a6)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v57 = 3;
  }

  else
  {
LABEL_27:
    v55 = is_virtual_machine();
    if (v41)
    {
      v56 = 2;
    }

    else
    {
      v56 = 1;
    }

    if (v55)
    {
      v57 = 4;
    }

    else
    {
      v57 = v56;
    }
  }

  v84 = v80;
  v34 = copyRootCertificate(v57, v79, &v84, v50, v51, v52, v53, v54);
  v58 = v84;

  if (!v34)
  {
    v32 = createMobileActivationError("DeviceIdentityValidateIdentity", 320, @"com.apple.MobileActivation.ErrorDomain", -1, v58, @"Failed to load BAA root CA certificate.", v59, v60, v77);

    v33 = 0;
    goto LABEL_14;
  }

  v83 = v58;
  v33 = lockcrypto_cert_from_pem_data(v34, &v83);
  v61 = v83;

  if (!v33)
  {
    v32 = createMobileActivationError("DeviceIdentityValidateIdentity", 326, @"com.apple.MobileActivation.ErrorDomain", -1, v61, @"Failed to create certificate from pem data.", v62, v63, v77);

    goto LABEL_14;
  }

  v82 = v61;
  v64 = evaluateBAATrustWithCerts(a2, a3, v33, v41 & 1, 1, 0, &v82);
  v32 = v82;

  if (v64)
  {
    v36 = [MEMORY[0x277CBEAA8] date];
    [v36 timeIntervalSinceReferenceDate];
    if (SecCertificateIsValid())
    {
      [v36 timeIntervalSinceReferenceDate];
      if (SecCertificateIsValid())
      {
        SecCertificateNotValidAfter();
        v70 = v69;
        SecCertificateNotValidBefore();
        v72 = v71;
        [v36 timeIntervalSinceReferenceDate];
        v74 = v73;
        SecCertificateNotValidBefore();
        if (v78)
        {
          *v78 = v74 - v75 >= (v70 - v72) * 0.9;
        }

        v38 = 1;
        goto LABEL_17;
      }
    }

    v76 = createMobileActivationError("DeviceIdentityValidateIdentity", 350, @"com.apple.MobileActivation.ErrorDomain", -1, v32, @"BAA certificate is expired.", v67, v68, v77);
  }

  else
  {
    v76 = createMobileActivationError("DeviceIdentityValidateIdentity", 333, @"com.apple.MobileActivation.ErrorDomain", -1, v32, @"Failed to verify BAA certificate.", v65, v66, v77);

    v36 = 0;
  }

  v32 = v76;
  if (a6)
  {
LABEL_15:
    v37 = v32;
    *a6 = v32;
  }

LABEL_16:
  v38 = 0;
  v39 = 0;
  if (v33)
  {
LABEL_17:
    CFRelease(v33);
    v39 = v38;
  }

  return v39;
}

uint64_t createXMLRequest(void *a1, void *a2, void *a3)
{
  v7 = a1;
  if (!v7)
  {
    v11 = createMobileActivationError("createXMLRequest", 57, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.", v5, v6, v25);
    v8 = 0;
    if (a3)
    {
LABEL_12:
      v23 = v11;
      v18 = 0;
      v13 = 0;
      *a3 = v11;
      goto LABEL_13;
    }

LABEL_8:
    v18 = 0;
    v13 = 0;
    goto LABEL_13;
  }

  v26 = 0;
  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:v7 format:100 options:0 error:&v26];
  v11 = v26;
  if (!v8)
  {
    v19 = @"Failed to convert dictionary to data";
    v20 = 67;
    v21 = v11;
    goto LABEL_11;
  }

  v12 = objc_alloc_init(MEMORY[0x277CCAB70]);
  if (!v12)
  {
    v19 = @"Failed to allocate request.";
    v20 = 74;
    v21 = 0;
LABEL_11:
    v22 = createMobileActivationError("createXMLRequest", v20, @"com.apple.MobileActivation.ErrorDomain", -1, v21, v19, v9, v10, v25);

    v11 = v22;
    if (a3)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v13 = v12;
  [v12 setCachePolicy:0];
  LODWORD(v14) = NETWORK_TIMEOUT_SECONDS;
  [v13 setTimeoutInterval:v14];
  [v13 setHTTPMethod:@"POST"];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"application/xml"];
  [v13 setValue:v15 forHTTPHeaderField:@"Content-Type"];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v8, "length")];
  [v13 setValue:v16 forHTTPHeaderField:@"Content-Length"];

  [v13 setHTTPBody:v8];
  if (a2)
  {
    v17 = v13;
    *a2 = v13;
  }

  v18 = 1;
LABEL_13:

  return v18;
}

id createBAAClientName(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 copy];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 stringByAppendingFormat:@"#%@", v3];

    v5 = v6;
  }

  return v5;
}

id createUserAgentValue(void *a1, void *a2)
{
  v2 = createBAAClientName(a1, a2);
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ - %@", @"iOS Device Activator (MobileActivation-1068.42.2)", v2];

  return v3;
}

BOOL clientNameSuffixIsValid(void *a1, void *a2)
{
  v3 = a1;
  v14 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^[A-Za-z0-9_-]{0 options:64}$" error:{0, &v14}];
  v7 = v14;
  if (v4)
  {
    v8 = [v4 firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
    v9 = v8 != 0;
  }

  else
  {
    createMobileActivationError("clientNameSuffixIsValid", 129, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create regex.", v5, v6, v13);
    v10 = v9 = 0;
    v8 = v7;
    v7 = v10;
  }

  if (a2 && !v9)
  {
    v11 = v7;
    *a2 = v7;
  }

  return v9;
}

uint64_t security_committed_uik_is_legacy(void *a1)
{
  [@"systemgroup.com.apple.mobileactivationd" UTF8String];
  v4 = container_system_group_path_for_identifier();
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    v6 = [v5 stringByAppendingPathComponent:@"Library/uik/uik.pem"];

    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v7 fileExistsAtPath:v6];

    v9 = 0;
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = createMobileActivationError("security_committed_uik_is_legacy", 142, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query group container path: %d", v2, v3, 1);
    v8 = 0;
    if (!a1)
    {
      goto LABEL_7;
    }
  }

  if ((v8 & 1) == 0)
  {
    v10 = v9;
    *a1 = v9;
  }

LABEL_7:
  if (v4)
  {
    free(v4);
  }

  return v8;
}

__SecKey *security_copy_system_key(uint64_t a1, CFDataRef *a2, void *a3)
{
  v6 = 0;
  v69[4] = *MEMORY[0x277D85DE8];
  v64 = 0;
  if (a1 != 2)
  {
    goto LABEL_12;
  }

  v63 = 0;
  is_legacy = security_committed_uik_is_legacy(&v63);
  v8 = v63;
  v6 = v8;
  if ((is_legacy & 1) == 0 && v8)
  {
    v11 = createMobileActivationError("security_copy_system_key", 180, @"com.apple.MobileActivation.ErrorDomain", -1, v8, @"Failed to query legacy UIK support.", v9, v10, v59);
    v12 = 0;
LABEL_19:
    v43 = 0;
    goto LABEL_23;
  }

  if (!is_legacy)
  {
LABEL_12:
    v12 = SecKeyCopySystemKey();
    if (!v12)
    {
      v11 = createMobileActivationError("security_copy_system_key", 195, @"com.apple.MobileActivation.ErrorDomain", -1, v64, @"Failed to copy system key (%d).", v38, v39, a1);
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v66 = 1;
  error = 0;
  [@"systemgroup.com.apple.mobileactivationd" UTF8String];
  v15 = container_system_group_path_for_identifier();
  if (!v15)
  {
    v26 = createMobileActivationError("copy_legacy_committed_uik", 44, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to query group container path: %d", v13, v14, v66);
    v33 = 0;
    v23 = 0;
    v17 = 0;
LABEL_34:
    v37 = 0;
    v12 = 0;
    goto LABEL_40;
  }

  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
  v17 = [v16 stringByAppendingPathComponent:@"Library/uik/uik.pem"];

  v18 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = [v18 fileExistsAtPath:v17];

  if ((v19 & 1) == 0)
  {
    v26 = createMobileActivationError("copy_legacy_committed_uik", 50, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Legacy UIK does not exist.", v20, v21, v59);
    v33 = 0;
    v23 = 0;
    goto LABEL_34;
  }

  v22 = objc_alloc(MEMORY[0x277CBEA90]);
  v65 = 0;
  v23 = [v22 initWithContentsOfFile:v17 options:0 error:&v65];
  v26 = v65;
  if (v23)
  {
    v27 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBF00], 0x40000000uLL, &error);
    if (v27)
    {
      v30 = *MEMORY[0x277CDC158];
      v68[0] = *MEMORY[0x277CDBFD0];
      v68[1] = v30;
      v31 = *MEMORY[0x277CDC160];
      v69[0] = MEMORY[0x277CBEC28];
      v69[1] = v31;
      v32 = *MEMORY[0x277CDBEC0];
      v68[2] = *MEMORY[0x277CDC178];
      v68[3] = v32;
      v69[2] = v23;
      v69[3] = v27;
      cf = v27;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:4];
      v34 = SecKeyCreateWithData([MEMORY[0x277CBEA90] data], v33, &error);
      v37 = v34;
      if (v34)
      {
        v12 = CFRetain(v34);
      }

      else
      {
        v60 = createMobileActivationError("copy_legacy_committed_uik", 74, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to query UIK.", v35, v36, v59);

        v12 = 0;
        v26 = v60;
      }

      CFRelease(cf);
      goto LABEL_40;
    }

    createMobileActivationError("copy_legacy_committed_uik", 62, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to create access control.", v28, v29, v59);
  }

  else
  {
    createMobileActivationError("copy_legacy_committed_uik", 56, @"com.apple.MobileActivation.ErrorDomain", -1, v26, @"Failed to load %@.", v24, v25, v17);
  }
  cfa = ;

  v33 = 0;
  v37 = 0;
  v12 = 0;
  v26 = cfa;
LABEL_40:
  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  if (v37)
  {
    CFRelease(v37);
  }

  if (v15)
  {
    free(v15);
  }

  v54 = v6;
  if (!v12)
  {
    v55 = v26;
    v54 = v26;
  }

  v56 = v54;
  if (!v12)
  {
    v11 = createMobileActivationError("security_copy_system_key", 189, @"com.apple.MobileActivation.ErrorDomain", -1, v56, @"Failed to copy system key (legacy).", v57, v58, v59);
    v43 = 0;
    v6 = v56;
    goto LABEL_23;
  }

  v6 = v56;
LABEL_13:
  v40 = SecKeyCopyPublicKey(v12);
  v43 = v40;
  if (v40)
  {
    v44 = SecKeyCopyExternalRepresentation(v40, &v64);
    if (v44)
    {
      v45 = v44;
      if (a2)
      {
        v46 = v44;
        *a2 = v45;
      }

      v11 = v6;
      goto LABEL_28;
    }

    v49 = v64;
    v47 = @"Failed to copy public key buffer.";
    v48 = 208;
  }

  else
  {
    v47 = @"Failed to copy public key.";
    v48 = 202;
    v49 = 0;
  }

  v11 = createMobileActivationError("security_copy_system_key", v48, @"com.apple.MobileActivation.ErrorDomain", -1, v49, v47, v41, v42, v59);
LABEL_23:

  if (a3)
  {
    v50 = v11;
    *a3 = v11;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v45 = 0;
  v12 = 0;
  v51 = 0;
  v52 = 0;
  if (v43)
  {
LABEL_28:
    CFRelease(v43);
    v51 = v45;
    v52 = v12;
  }

  if (v64)
  {
    CFRelease(v64);
  }

  v64 = 0;

  return v52;
}

id security_create_system_key_attestation(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  cf = 0;
  if (!a1)
  {
    v13 = createMobileActivationError("security_create_system_key_attestation", 242, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid input(s)", v7, v8, v24);
    v10 = 0;
    if (!a4)
    {
LABEL_16:
      v19 = 0;
      v22 = 0;
      if (!v10)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_15:
    v21 = v13;
    *a4 = v13;
    goto LABEL_16;
  }

  v24 = 0;
  v10 = security_copy_system_key(a2, 0, &v24);
  v13 = v24;
  if (!v10)
  {
    v14 = @"Failed to copy attestation key.";
    v15 = 248;
    v16 = -1;
    v17 = v13;
    goto LABEL_14;
  }

  if (v9)
  {
    if ([v9 length] >= 0x21)
    {
      v14 = @"Nonce is too big (> 32 bytes).";
      v15 = 254;
      v16 = -2;
      v17 = 0;
      goto LABEL_14;
    }

    if (!SecKeySetParameter())
    {
      v17 = cf;
      v14 = @"Failed to set nonce.";
      v15 = 259;
      v16 = -1;
LABEL_14:
      v20 = createMobileActivationError("security_create_system_key_attestation", v15, @"com.apple.MobileActivation.ErrorDomain", v16, v17, v14, v11, v12, v24);

      v13 = v20;
      if (!a4)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  Attestation = SecKeyCreateAttestation();
  if (!Attestation)
  {
    v17 = cf;
    v14 = @"Failed to create attestation.";
    v15 = 266;
    v16 = -11;
    goto LABEL_14;
  }

  v19 = Attestation;
LABEL_17:
  CFRelease(v10);
  v22 = v19;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;

  return v22;
}

id security_create_attestation(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    Attestation = SecKeyCreateAttestation();
    if (Attestation)
    {
      v10 = Attestation;
      v11 = 0;
      goto LABEL_10;
    }

    v12 = @"Failed to create attestation.";
    v13 = 299;
    v14 = -11;
  }

  else
  {
    v12 = @"Invalid input(s)";
    v13 = 293;
    v14 = -1;
  }

  v15 = createMobileActivationError("security_create_attestation", v13, @"com.apple.MobileActivation.ErrorDomain", v14, 0, v12, a7, a8, v18);
  v11 = v15;
  if (a3)
  {
    v16 = v15;
    v10 = 0;
    *a3 = v11;
  }

  else
  {
    v10 = 0;
  }

LABEL_10:

  return v10;
}

id security_create_external_representation(__SecKey *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    a2 = createMobileActivationError("security_create_external_representation", 328, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input.", a7, a8, v24);
    v13 = 0;
    if (a3)
    {
LABEL_11:
      v22 = a2;
      v18 = 0;
      *a3 = a2;
      goto LABEL_12;
    }

LABEL_7:
    v18 = 0;
    goto LABEL_12;
  }

  v10 = SecKeyCopyAttributes(a1);
  v13 = v10;
  if (!v10)
  {
    v20 = @"Failed to copy RK attributes.";
    v21 = 334;
    goto LABEL_10;
  }

  v14 = [(__CFDictionary *)v10 objectForKeyedSubscript:*MEMORY[0x277CDC178]];
  if (!v14)
  {
    v20 = @"Failed to encode RK as data.";
    v21 = 340;
LABEL_10:
    a2 = createMobileActivationError("security_create_external_representation", v21, @"com.apple.MobileActivation.ErrorDomain", -1, 0, v20, v11, v12, v24);
    if (a3)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v15 = v14;
  v16 = *MEMORY[0x277CDC5D0];
  v17 = [(__CFDictionary *)v13 objectForKeyedSubscript:*MEMORY[0x277CDC5D0]];

  v18 = v15;
  if (a2)
  {
    v25 = v16;
    v19 = [MEMORY[0x277CCABB0] numberWithBool:v17 != 0];
    v26[0] = v19;
    *a2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

    a2 = 0;
  }

LABEL_12:

  return v18;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, v4);
  if (!result)
  {
    if (HIDWORD(v4[0]))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4[0];
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  v8[3] = *MEMORY[0x277D85DE8];
  memset(v8, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v8, 0);
  if (!result)
  {
    v6 = v8[0];
    *a2 = v8[0];
    if (v6 >> 1 == 0x1000000000000008)
    {
      if (__CFADD__(v8[1], v8[2]))
      {
        __break(0x5513u);
      }

      else
      {
        v7 = v8[1] + v8[2];
        if (v8[1] <= v8[1] + v8[2])
        {
          result = 0;
          *a3 = v8[1];
          a3[1] = v7;
          return result;
        }
      }

      __break(0x5519u);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t X509PolicySetFlagsForCommonNames(uint64_t a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 104);
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  result = X509CertificateSubjectNameGetCommonName(v2, v5);
  if (!result)
  {
    result = compare_octet_string(&iPhoneCAName, v5);
    if (result)
    {
      result = compare_octet_string(&CodeSigningCAName, v5);
      if (result)
      {
        result = compare_octet_string_partial(&MFi4AccessoryCAName, v5);
        if (result)
        {
          result = compare_octet_string_partial(&MFi4AttestationCAName, v5);
          if (result)
          {
            result = compare_octet_string_partial(&MFi4ProvisioningCAName, v5);
            if (result)
            {
              return result;
            }

            v4 = 0x1000000000;
          }

          else
          {
            v4 = 0x800000000;
          }
        }

        else
        {
          v4 = 0x400000000;
        }
      }

      else
      {
        v4 = 0x800000000008;
      }
    }

    else
    {
      v4 = 3840;
    }

    *(a1 + 240) |= v4;
  }

  return result;
}

double X509PolicySetFlagsForMFI(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 104);
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  if (!X509CertificateSubjectNameGetCommonName(v2, v7))
  {
    if (compare_octet_string_partial(&MFICommonNamePrefix, v7))
    {
      goto LABEL_4;
    }

    v6 = 0;
    if (!X509CertificateGetNotBefore(a1, &v6))
    {
      memset(&v5, 0, sizeof(v5));
      strptime("2006-05-31", "%F", &v5);
      v4 = timegm(&v5);
      result = difftime(v4, v6);
      if (result < 0.0)
      {
        *(a1 + 240) |= 0x8000000uLL;
LABEL_4:
        if (!compare_octet_string_partial(&MFi4ProvisioningHostNamePrefix, v7))
        {
          *(a1 + 240) |= 0x1000000000uLL;
        }
      }
    }
  }

  return result;
}

uint64_t X509PolicySetFlagsForRoots(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (*(result + 16) == 1)
  {
    v4 = numAppleProdRoots;
    if (numAppleProdRoots)
    {
      if (a2 + 88 <= (a2 + 104))
      {
        v5 = AppleRootSPKIs;
        while (1)
        {
          v6 = v5 + 1;
          v7 = v5 < AppleRootSPKIs || v6 > &rsaEncryption;
          if (v7 || v5 >= v6)
          {
            break;
          }

          result = compare_octet_string(a2 + 88, *v5);
          if (!result)
          {
            *(a2 + 240) |= 0xD8E30653FFF8uLL;
            goto LABEL_17;
          }

          ++v5;
          if (!--v4)
          {
            goto LABEL_17;
          }
        }
      }

      goto LABEL_50;
    }
  }

LABEL_17:
  v9 = *(v3 + 8);
  if ((v9 & 0x1000000) != 0)
  {
    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &UcrtRootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1000000;
      goto LABEL_27;
    }
  }

  else
  {
    if ((v9 & 0x1C00000000) == 0)
    {
      goto LABEL_28;
    }

    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &MFi4RootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1C00000000;
LABEL_27:
      *(a2 + 240) = v10;
      goto LABEL_28;
    }
  }

  if (*(v3 + 17) == 1)
  {
    result = X509PolicySetFlagsForTestAnchor(v3, a2);
  }

LABEL_28:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1 && numAppleProdRoots < numAppleRoots)
  {
    if (a2 + 88 <= (a2 + 104))
    {
      v11 = &AppleRootSPKIs[numAppleProdRoots];
      v12 = numAppleRoots - numAppleProdRoots;
      while (1)
      {
        v13 = v11 + 1;
        v14 = v11 < AppleRootSPKIs || v13 > &rsaEncryption;
        if (v14 || v11 >= v13)
        {
          break;
        }

        result = compare_octet_string(a2 + 88, *v11);
        if (!result)
        {
          *(a2 + 240) |= 0xD8E30653FFF8uLL;
          goto LABEL_44;
        }

        ++v11;
        if (!--v12)
        {
          goto LABEL_44;
        }
      }
    }

    goto LABEL_50;
  }

LABEL_44:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1)
  {
    result = a2 + 88;
    if (a2 + 88 <= (a2 + 104))
    {
      result = compare_octet_string(result, &TestAppleRootECCSPKI);
      if (!result)
      {
        *(a2 + 240) |= 0x6400000uLL;
      }

      return result;
    }

LABEL_50:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509PolicySetFlagsForTestAnchor(void *a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v6[1] = 0;
  v5[0] = 0;
  v5[1] = 0;
  if (a2 + 88 > (a2 + 104))
  {
    __break(0x5519u);
  }

  result = X509CertificateParseSPKI((a2 + 88), v6, 0, v5);
  if (!result)
  {
    result = compare_octet_string(a1[4], v6);
    if (!result)
    {
      result = compare_octet_string(a1[3], v5);
      if (!result)
      {
        *(a2 + 240) |= a1[1];
      }
    }
  }

  return result;
}

unint64_t validateSignatureRSA(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0;
  v27 = *MEMORY[0x277D85DE8];
  v23 = 0;
  if (!result)
  {
    return v5 & 1;
  }

  if (!a2)
  {
    return v5 & 1;
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    return v5 & 1;
  }

  if (a5 + 7 > a5 + 9)
  {
    goto LABEL_34;
  }

  v8 = result;
  result = compare_octet_string(&rsaEncryption, (a5 + 7));
  if (result)
  {
    result = validateOIDs(&rsaAlgs, (a5 + 3), (a5 + 7));
    if (!result)
    {
      goto LABEL_23;
    }
  }

  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v10 = a5[9];
  v9 = a5[10];
  if (__CFADD__(v10, v9))
  {
    goto LABEL_35;
  }

  if (v10 > v10 + v9)
  {
    goto LABEL_34;
  }

  v21 = a5[9];
  v22 = v10 + v9;
  if (v9)
  {
    result = ccder_blob_check_null(&v21);
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (__CFADD__(v8, a2))
  {
    goto LABEL_35;
  }

  if (v8 + a2 < v8)
  {
    goto LABEL_34;
  }

  result = ccder_decode_rsa_pub_n();
  if (!result)
  {
LABEL_23:
    v5 = 0;
    return v5 & 1;
  }

  v11 = result;
  if (!(result >> 58))
  {
    v12 = result << 6;
    if (result << 6 >= 0x400)
    {
      v25 = 0xAAAAAAAAAAAAAAAALL;
      v26 = -21846;
      v24 = 6;
      if (&vars0 == 82)
      {
        goto LABEL_35;
      }

      v13 = a5[4];
      LOBYTE(v25) = v13;
      if (&v24 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_35;
      }

      if (v13 < 0xA)
      {
        result = __memcpy_chk();
        if (result <= result + v13)
        {
          if (v12 > 0x1068)
          {
            goto LABEL_23;
          }

          result = MEMORY[0x28223BE20]();
          v16 = (&v20 - 4 * v15);
          v17 = 0;
          *&v18 = 0xAAAAAAAAAAAAAAAALL;
          *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
          do
          {
            v19 = &v16[v17 / 8];
            *v19 = v18;
            *(v19 + 1) = v18;
            v17 += 32;
          }

          while ((v14 & 0x7FFFFFFFFFFFFFE0) != v17);
          if (v16 + 4 <= &v20 && v16 <= v16 + 4)
          {
            *v16 = v11;
            if (ccrsa_import_pub())
            {
              v5 = 0;
            }

            else if (ccrsa_verify_pkcs1v15_allowshortsigs())
            {
              v5 = 0;
              v23 = 0;
            }

            else
            {
              v5 = v23;
            }

            return v5 & 1;
          }
        }
      }

LABEL_34:
      __break(0x5519u);
LABEL_35:
      __break(0x5513u);
      goto LABEL_36;
    }

    goto LABEL_23;
  }

LABEL_36:
  __break(0x550Cu);
  return result;
}

unint64_t validateOIDs(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 1;
  while (v5 < v5 + 16)
  {
    result = compare_octet_string(v5, a2);
    if (result)
    {
      goto LABEL_11;
    }

    if (v5 + 16 > v5 + 32)
    {
      break;
    }

    result = compare_octet_string(v5 + 16, a3);
    if (result)
    {
LABEL_11:
      v7 = v6 < 3;
      v5 += 32;
      if (++v6 != 4)
      {
        continue;
      }
    }

    return v7;
  }

  __break(0x5519u);
  return result;
}

_UNKNOWN **oidForPubKeyLength()
{
  v0 = ccec_x963_import_pub_size();
  is_supported = ccec_keysize_is_supported();
  v2 = &CTOidSECP256r1;
  v3 = &CTOidSECP521r1;
  v4 = &CTOidSECP384r1;
  if (v0 != 384)
  {
    v4 = 0;
  }

  if (v0 != 521)
  {
    v3 = v4;
  }

  if (v0 != 256)
  {
    v2 = v3;
  }

  if (is_supported)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t *validateSignatureEC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v18 = 0;
  if (!result)
  {
    return (v5 & 1);
  }

  if (!a2)
  {
    return (v5 & 1);
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    return (v5 & 1);
  }

  v7 = a5 + 72;
  if (a5 + 56 > (a5 + 72))
  {
    goto LABEL_32;
  }

  result = compare_octet_string(&ecPublicKey, a5 + 56);
  if (result)
  {
    result = validateOIDs(&ecAlgs, a5 + 24, a5 + 56);
    if (!result)
    {
      goto LABEL_27;
    }
  }

  if (v7 > a5 + 88)
  {
    goto LABEL_32;
  }

  result = ccec_cp_for_oid((a5 + 72));
  if (!result)
  {
LABEL_27:
    v5 = 0;
    return (v5 & 1);
  }

  if (result >= result + 4)
  {
    goto LABEL_32;
  }

  v8 = *result;
  if (*result >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
    goto LABEL_33;
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || v11 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_34;
  }

  result = MEMORY[0x28223BE20]();
  v14 = &v17[-16 * v13];
  v15 = 0;
  do
  {
    v16 = &v14[v15 / 8];
    *v16 = 0xAAAAAAAAAAAAAAAALL;
    v16[1] = 0xAAAAAAAAAAAAAAAALL;
    v15 += 16;
  }

  while ((v12 & 0xFFFFFFFFFFFFFFF0) != v15);
  if (v12 < 0x10)
  {
    goto LABEL_35;
  }

  *v14 = result;
  if (v14 + 2 > v17 || v14 > v14 + 2)
  {
LABEL_32:
    __break(0x5519u);
LABEL_33:
    __break(0x550Cu);
LABEL_34:
    __break(0x5500u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (MEMORY[0x22AA79710]())
  {
    goto LABEL_30;
  }

  result = ccec_x963_import_pub_size();
  if (result != 256 || *(a5 + 96) != 64)
  {
    if (ccec_verify())
    {
LABEL_29:
      v18 = 0;
    }

LABEL_30:
    v5 = v18;
    return (v5 & 1);
  }

  if (*(a5 + 88) < 0xFFFFFFFFFFFFFFE0)
  {
    if (!ccec_verify_composite())
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_36:
  __break(0x5513u);
  return result;
}

uint64_t ccec_cp_for_oid(int **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[1];
  if (v1 != 7)
  {
    if (v1 == 10 && **a1 == 0x33DCE48862A0806 && *(*a1 + 4) == 1793)
    {
      JUMPOUT(0x22AA796E0);
    }

    return 0;
  }

  v3 = *a1;
  if (**a1 == -2127887098 && *(*a1 + 3) == 570426497)
  {
    JUMPOUT(0x22AA796F0);
  }

  v5 = *v3;
  v6 = *(v3 + 3);
  if (v5 != -2127887098 || v6 != 587203713)
  {
    return 0;
  }

  return MEMORY[0x282201600]();
}

unint64_t CTCopyDeviceIdentifiers(unint64_t result, uint64_t a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = 327696;
  if (!result || !a2)
  {
    return v3;
  }

  v12 = 0;
  v13[0] = 0;
  v11 = 0;
  if (__CFADD__(result, a2))
  {
    __break(0x5513u);
  }

  else if (result + a2 >= result)
  {
    v10[0] = result;
    v10[1] = result + a2;
    v5 = CTConvertDashTerminatedHexstringTo64BitInteger(v10, v13);
    v6 = 327697;
    if (!v5 && !HIDWORD(v13[0]))
    {
      if (CTConvertDashTerminatedHexstringTo64BitInteger(v10, &v12))
      {
        return 327698;
      }

      else
      {
        v7 = CTConvertDashTerminatedHexstringTo64BitInteger(v10, &v11);
        v6 = 327699;
        if (!v7)
        {
          v8 = v11;
          if (v11 <= 0xFF)
          {
            v6 = 0;
            if (a3)
            {
              v9 = v12;
              *a3 = v13[0];
              *(a3 + 8) = v9;
              *(a3 + 16) = (v8 & 8) != 0;
              *(a3 + 17) = (v8 & 4) != 0;
              *(a3 + 18) = v8 & 3;
              *(a3 + 24) = 0;
              *(a3 + 32) = 0;
            }
          }
        }
      }
    }

    return v6;
  }

  __break(0x5519u);
  return result;
}

uint64_t CTConvertDashTerminatedHexstringTo64BitInteger(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  if (*result > v3)
  {
    goto LABEL_50;
  }

  v4 = result;
  v5 = *result;
  if (*result < v3)
  {
    v5 = *result;
    while (*v5 != 45)
    {
      v6 = v5 + 1;
      if ((v5 + 1) > v3 || v5 > v6)
      {
        goto LABEL_50;
      }

      *result = v6;
      ++v5;
      if (v6 == v3)
      {
        v5 = v3;
        break;
      }
    }
  }

  if (v5 > v3 || v2 > v5)
  {
    goto LABEL_50;
  }

  result = 327708;
  if (v5 == v3)
  {
    return result;
  }

  v7 = v5 - v2;
  if (v5 - v2 > 16)
  {
    return result;
  }

  if (v5 == -1)
  {
    goto LABEL_51;
  }

  v8 = v5 + 1;
  if ((v5 + 1) > v3 || v5 > v8)
  {
LABEL_50:
    __break(0x5519u);
LABEL_51:
    __break(0x5513u);
LABEL_52:
    __break(0x5500u);
    return result;
  }

  v9 = 0;
  *v4 = v8;
  if (v2 >= v5 || (v10 = (v7 + 1 + (((v7 + 1) & 0x8000u) >> 15)) >> 1, v10 < 1))
  {
LABEL_46:
    result = 0;
    if (a2)
    {
      *a2 = v9;
    }
  }

  else
  {
    v11 = 0;
    v9 = 0;
    while (1)
    {
      if (v7 & 1) == 0 || (v11)
      {
        v13 = *v2;
        if (v13 > ~asciiNibbleToByte)
        {
          goto LABEL_51;
        }

        v14 = &asciiNibbleToByte[v13];
        v15 = v14 < &CTOidAppleImg4Manifest && v14 >= asciiNibbleToByte;
        if (!v15)
        {
          goto LABEL_50;
        }

        if (v2 == -1)
        {
          goto LABEL_51;
        }

        if (v2 + 1 > v5 || v2 > v2 + 1)
        {
          goto LABEL_50;
        }

        v12 = *v14;
        ++v2;
      }

      else
      {
        v12 = 0;
      }

      if (v2 >= v5)
      {
        return 327703;
      }

      v16 = *v2;
      if (v16 > ~asciiNibbleToByte)
      {
        goto LABEL_51;
      }

      v17 = &asciiNibbleToByte[v16];
      if (&asciiNibbleToByte[v16] >= &CTOidAppleImg4Manifest || v17 < asciiNibbleToByte)
      {
        goto LABEL_50;
      }

      v19 = v2 + 1;
      if (v2 + 1 > v5 || v2 > v19)
      {
        goto LABEL_50;
      }

      if (v12 > 0xF)
      {
        return 327703;
      }

      v20 = *v17;
      if (v20 > 0xF)
      {
        return 327703;
      }

      v21 = (v20 | (16 * v12)) << (8 * (v10 - 1));
      v15 = __CFADD__(v9, v21);
      v9 += v21;
      if (v15)
      {
        goto LABEL_52;
      }

      if (v19 < v5)
      {
        v11 = 1;
        v22 = v10;
        LOBYTE(v10) = v10 - 1;
        ++v2;
        if (v22 > 1)
        {
          continue;
        }
      }

      goto LABEL_46;
    }
  }

  return result;
}

unint64_t CTFillBAAIdentity(int a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a1 & 0x800000) != 0 && a4)
  {
    result = CTCopyDeviceIdentifiers(a2, a3, a4);
    if (result)
    {
      return result;
    }
  }

  else if (!a4)
  {
    return 0;
  }

  result = 0;
  if (a1 < 0 && a3)
  {
    if (a2)
    {
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      if (a4 + 40 < a4)
      {
        __break(0x5519u);
      }

      else
      {
        result = 0;
        *(a4 + 24) = a2;
        *(a4 + 32) = a3;
      }

      return result;
    }

    return 0;
  }

  return result;
}

unint64_t CTEvaluateBAASystemTestRoot(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = 0;
  v9 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 1, 1, a5, a6, a3, a4, &v9, &v10, X509PolicyBAASystem);
  if (!result)
  {
    return CTFillBAAIdentity(v9, v10, v11, a7);
  }

  return result;
}

unint64_t CTEvaluateBAAUserTestRoot(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = 0;
  v9 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, 1, 1, a5, a6, a3, a4, &v9, &v10, X509PolicyBAAUser);
  if (!result)
  {
    return CTFillBAAIdentity(v9, v10, v11, a7);
  }

  return result;
}

uint64_t compare_octet_string_raw(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == a3)
  {
    return memcmp(*a1, a2, a3);
  }

  if (v3 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_partial(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 <= *(a2 + 8))
  {
    return memcmp(*a2, *a1, v2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccder_blob_decode_Time(unint64_t *a1, unint64_t *a2)
{
  if (*a1 > a1[1])
  {
    goto LABEL_6;
  }

  if (ccder_blob_decode_tl())
  {
    return 0;
  }

  if (*a1 > a1[1])
  {
LABEL_6:
    __break(0x5519u);
  }

  ccder_blob_decode_tl();
  return 0;
}

uint64_t CTEvaluateCertsForPolicy(unint64_t a1, uint64_t a2, char a3, int a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, __int128 *a11)
{
  v45 = *MEMORY[0x277D85DE8];
  memset(v41, 170, sizeof(v41));
  bzero(v42, 0x4C0uLL);
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
LABEL_47:
    __break(0x5513u);
  }

  v40 = 0xAAAAAAAAAAAAAAAALL;
  if (a1 + a2 < a1)
  {
    goto LABEL_46;
  }

  v38 = a1;
  v39 = a1 + a2;
  result = X509ChainParseCertificateSet(&v38, v42, 4, &v41[2], &v40);
  if (result)
  {
    return result;
  }

  if (v38 != v39)
  {
    return 327690;
  }

  if ((a4 & 1) == 0 && !v43)
  {
    X509ChainResetChain(v41, &v41[2]);
    v20 = v41[0];
    v21 = (v41[0] + 296);
    if (!v41[0])
    {
      v21 = &v41[1];
    }

    *v21 = v44;
    v41[0] = v42;
    v44[0] = v20;
    v44[1] = v41;
LABEL_23:
    v37[0] = a7;
    v37[1] = a8;
    if (a7)
    {
      v24 = a8 == 0;
    }

    else
    {
      v24 = 1;
    }

    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36 = 0xAAAAAAAAAAAAAAAALL;
    v34 = v25;
    v35 = v25;
    v33 = *a11;
    LOBYTE(v34) = *(a11 + 16);
    if (v24)
    {
      v26 = a3;
    }

    else
    {
      v26 = 1;
    }

    BYTE1(v34) = v26;
    WORD1(v34) = *(a11 + 9);
    if (!v24)
    {
      v27 = *(a11 + 4);
      *(&v34 + 1) = v37;
      *&v35 = v27;
      v28 = oidForPubKeyLength();
LABEL_33:
      v30 = *(a11 + 6);
      *(&v35 + 1) = v28;
      v36 = v30;
      result = X509ChainCheckPathWithOptions(12, v41, &v33, 0);
      if (result)
      {
        return result;
      }

      v31 = v41[0];
      if (!a5 || !a6 || !v41[0])
      {
LABEL_40:
        if (a10 && v31)
        {
          v32 = v31[32];
          *a10 = v31[31];
          a10[1] = v32;
        }

        result = 0;
        if (a9)
        {
          if (v31)
          {
            result = 0;
            *a9 = v31[30];
          }
        }

        return result;
      }

      if (v41[0] < v41[0] + 304)
      {
        result = X509CertificateParseKey(v41[0], a5, a6);
        if (result)
        {
          return result;
        }

        goto LABEL_40;
      }

      goto LABEL_46;
    }

    if (*(a11 + 3) < (*(a11 + 3) + 16))
    {
      v29 = *(a11 + 4);
      v28 = *(a11 + 5);
      *(&v34 + 1) = *(a11 + 3);
      *&v35 = v29;
      goto LABEL_33;
    }

LABEL_46:
    __break(0x5519u);
    goto LABEL_47;
  }

  if (v42[265] != 1)
  {
    v23 = &v45;
    v22 = v42;
    goto LABEL_20;
  }

  if (!v41[2])
  {
    v22 = 0;
    goto LABEL_22;
  }

  v22 = v41[2];
  do
  {
    if ((v22[265] & 1) == 0)
    {
      v23 = (v22 + 304);
      if (v22 < v22 + 304)
      {
        goto LABEL_20;
      }

      goto LABEL_46;
    }

    v22 = *(v22 + 34);
  }

  while (v22);
  v23 = (v41[2] + 304);
  v22 = v41[2];
LABEL_20:
  if (v22 + 304 > v23 || v22 > v22 + 304)
  {
    goto LABEL_46;
  }

LABEL_22:
  result = X509ChainBuildPathPartial(v22, &v41[2], v41, a4 ^ 1u);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t X509ExtensionParseExtendedKeyUsage(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v6 = ccder_blob_decode_tl();
  result = 0;
  if (v6)
  {
    if (*a1 > a1[1])
    {
      goto LABEL_11;
    }

    v10 = *a1;
    v11 = a1[1];
    result = ccder_blob_decode_tl();
    if (!result)
    {
      return result;
    }

    if (v11 < v10 || v11 - v10 < 0xAAAAAAAAAAAAAAAALL)
    {
      goto LABEL_11;
    }

    *a2 = v10;
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    v8 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
      return result;
    }

    v9 = v8 - 0x5555555555555556;
    if (v8 > v8 - 0x5555555555555556 || v9 > a1[1])
    {
LABEL_11:
      __break(0x5519u);
    }

    *a1 = v9;
  }

  return result;
}

uint64_t X509ExtensionParseSubjectAltName(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = ccder_blob_decode_tl();
  if (result == 1)
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

uint64_t X509CertificateParseSPKI(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (__CFADD__(*a1, v5))
  {
    goto LABEL_31;
  }

  v6 = v4 + v5;
  if (v4 > v6)
  {
    goto LABEL_30;
  }

  v10 = 655361;
  v14 = *a1;
  v15 = v6;
  if (!ccder_blob_decode_tl())
  {
    return v10;
  }

  if (!ccder_blob_decode_tl())
  {
    return 655363;
  }

  if (v14 >= 0x5555555555555556)
  {
LABEL_31:
    __break(0x5513u);
  }

  if (v14 > v14 - 0x5555555555555556 || v14 - 0x5555555555555556 > v15)
  {
    goto LABEL_30;
  }

  v13 = v14 - 0x5555555555555556;
  if (!ccder_blob_decode_tl())
  {
    return 655362;
  }

  if (a2)
  {
    if (v13 >= v14)
    {
      *a2 = v14;
      a2[1] = 0xAAAAAAAAAAAAAAAALL;
      goto LABEL_12;
    }

LABEL_30:
    __break(0x5519u);
    goto LABEL_31;
  }

LABEL_12:
  v11 = v14 - 0x5555555555555556;
  if (v14 > v14 - 0x5555555555555556 || v11 > v13)
  {
    goto LABEL_30;
  }

  if (v11 == v13)
  {
    if (a3)
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }

  else if (a3)
  {
    *a3 = v11;
    a3[1] = v13 - v11;
  }

  if (v13 > v15 || v14 > v13)
  {
    goto LABEL_30;
  }

  if (!ccder_blob_decode_bitstring())
  {
    return 655364;
  }

  *a4 = 0;
  a4[1] = 0;
  if (v13 == v15)
  {
    return 0;
  }

  else
  {
    return 655365;
  }
}

uint64_t X509CertificateParseKey(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  result = 327691;
  if (a1 && *(a1 + 96))
  {
    result = a1 + 88;
    v8 = 0;
    v9 = 0;
    if (a1 + 88 > (a1 + 104))
    {
      __break(0x5519u);
    }

    else
    {
      result = X509CertificateParseSPKI(result, 0, 0, &v8);
      if (!result && a2)
      {
        if (a3)
        {
          v7 = v9;
          *a2 = v8;
          *a3 = v7;
        }
      }
    }
  }

  return result;
}

uint64_t X509CertificateCheckSignatureDigest(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = 0uLL;
  v15 = 0uLL;
  v13 = 0;
  v14 = 0;
  if (a2 + 88 > (a2 + 104))
  {
    goto LABEL_22;
  }

  v7 = X509CertificateParseSPKI((a2 + 88), &v16, &v15, &v13);
  if (!v7)
  {
    v7 = 655632;
    v9 = compare_octet_string(&v16, &rsaEncryption);
    v10 = validateSignatureRSA;
    if (v9)
    {
      v11 = compare_octet_string(&v16, &ecPublicKey);
      v10 = validateSignatureEC;
      if (v11)
      {
        return 655617;
      }
    }

    if (v12 = v10, (a1) && !compare_octet_string_raw(a4, &CTOidSha1, 5uLL) || (a1 & 4) != 0 && !compare_octet_string_raw(a4, &CTOidSha256, 9uLL) || (a1 & 8) != 0 && !compare_octet_string_raw(a4, &CTOidSha384, 9uLL) || (a1 & 0x10) != 0 && !compare_octet_string_raw(a4, &CTOidSha512, 9uLL))
    {
      if ((v14 || !v13) && (a3[1] || !*a3))
      {
        if (v12(v13))
        {
          return 0;
        }

        else
        {
          return 655648;
        }
      }

LABEL_22:
      __break(0x5519u);
    }
  }

  return v7;
}

uint64_t X509CertificateCheckSignature(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[2] = v6;
  v10[3] = v6;
  v10[0] = v6;
  v10[1] = v6;
  v9[0] = v10;
  v9[1] = 64;
  v8[0] = 0;
  v8[1] = 0;
  result = X509MatchSignatureAlgorithm(a3, a4, v9, v8, v10);
  if (!result)
  {
    return X509CertificateCheckSignatureDigest(a1, a2, v9, v8);
  }

  return result;
}

uint64_t X509MatchSignatureAlgorithm(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  result = compare_octet_string_raw(a2, &sha1WithRSA_oid, 9uLL);
  if (!result)
  {
    goto LABEL_8;
  }

  result = compare_octet_string_raw(a2, &sha256WithRSA_oid, 9uLL);
  if (!result)
  {
LABEL_10:
    *a4 = &CTOidSha256;
    a4[1] = 9;
    if (*(a3 + 8) < 0x20uLL)
    {
      goto LABEL_15;
    }

    *(a3 + 8) = 32;
    ccsha256_di();
    goto LABEL_14;
  }

  result = compare_octet_string_raw(a2, &sha384WithRSA_oid, 9uLL);
  if (!result)
  {
    goto LABEL_12;
  }

  result = compare_octet_string_raw(a2, &sha1WithECDSA_oid, 7uLL);
  if (!result)
  {
LABEL_8:
    *a4 = &CTOidSha1;
    a4[1] = 5;
    if (*(a3 + 8) < 0x14uLL)
    {
      goto LABEL_15;
    }

    *(a3 + 8) = 20;
    ccsha1_di();
LABEL_14:
    ccdigest();
    return 0;
  }

  result = compare_octet_string_raw(a2, &sha256WithECDSA_oid, 8uLL);
  if (!result)
  {
    goto LABEL_10;
  }

  result = compare_octet_string_raw(a2, &sha384WithECDSA_oid, 8uLL);
  if (result)
  {
    return 656640;
  }

LABEL_12:
  *a4 = &CTOidSha384;
  a4[1] = 9;
  if (*(a3 + 8) >= 0x30uLL)
  {
    *(a3 + 8) = 48;
    ccsha384_di();
    goto LABEL_14;
  }

LABEL_15:
  __break(0x5519u);
  return result;
}

uint64_t X509CertificateCheckSignatureWithPublicKey(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[2] = v7;
  v16[3] = v7;
  v16[0] = v7;
  v16[1] = v7;
  v14 = v16;
  v15 = 64;
  v13 = 0uLL;
  matched = X509MatchSignatureAlgorithm(a4, a5, &v14, &v13, v16);
  if (matched)
  {
    return matched;
  }

  matched = 655617;
  v9 = compare_octet_string(a2, &rsaEncryption);
  v10 = validateSignatureRSA;
  if (v9)
  {
    v11 = compare_octet_string(a2, &ecPublicKey);
    v10 = validateSignatureEC;
    if (v11)
    {
      return matched;
    }
  }

  result = *a1;
  if ((a1[1] || !result) && (!v14 || v15))
  {
    if (v10(result))
    {
      return 0;
    }

    else
    {
      return 655648;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t X509CertificateSubjectNameGetCommonName(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v20 = v3;
  if (__CFADD__(*a1, v3))
  {
    goto LABEL_61;
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_60;
  }

  v18 = *a1;
  v19 = v4;
  *a2 = 0;
  a2[1] = 0;
  if (a2 + 2 < a2)
  {
    goto LABEL_60;
  }

  v6 = 720901;
  if (v2 < v4)
  {
    while (1)
    {
      if (!ccder_blob_decode_tl() || !v20)
      {
        return 720898;
      }

      v2 = v18;
      if (__CFADD__(v18, v20))
      {
        break;
      }

      v7 = v18 + v20;
      if (v18 > v18 + v20 || v7 > v19)
      {
        goto LABEL_60;
      }

      v16 = v18;
      v17 = v18 + v20;
      while (v2 < v7)
      {
        if (!ccder_blob_decode_tl())
        {
          return 720899;
        }

        if (__CFADD__(v16, v20))
        {
          goto LABEL_61;
        }

        if (v16 > v16 + v20 || v16 + v20 > v17)
        {
          goto LABEL_60;
        }

        v15 = v16 + v20;
        if (!ccder_blob_decode_tl())
        {
          return 720900;
        }

        v2 = v16 + v20;
        if (v16 > v15)
        {
          goto LABEL_60;
        }

        if (__CFADD__(v16, v20))
        {
          goto LABEL_61;
        }

        if (v16 > v16 + v20)
        {
          goto LABEL_60;
        }

        v14 = v16 + v20;
        if (v20 == 3 && *v16 == 1109 && *(v16 + 2) == 3)
        {
          v12 = v16 + v20;
          v13 = v16 + v20;
          if ((ccder_blob_decode_tl() & 1) == 0)
          {
            if (v14 > v15)
            {
              goto LABEL_60;
            }

            v12 = v16 + v20;
            v13 = v16 + v20;
            if ((ccder_blob_decode_tl() & 1) == 0)
            {
              if (v14 > v15)
              {
                goto LABEL_60;
              }

              v12 = v16 + v20;
              v13 = v16 + v20;
              if (!ccder_blob_decode_tl())
              {
                return v6;
              }
            }
          }

          if (__CFADD__(v12, v20))
          {
            goto LABEL_61;
          }

          v2 = v16 + v20;
          if (v15 != v12 + v20)
          {
            return 720902;
          }

          if (v13 < v12 || v20 > v13 - v12)
          {
            goto LABEL_60;
          }

          *a2 = v12;
          a2[1] = v20;
        }

        v7 = v18 + v20;
        if (v2 > v17 || v16 > v2)
        {
          goto LABEL_60;
        }

        v16 = v2;
      }

      if (v2 != v7)
      {
        return 720903;
      }

      v4 = v19;
      if (v2 > v19 || v18 > v2)
      {
        goto LABEL_60;
      }

      v18 = v2;
      if (v2 >= v19)
      {
        goto LABEL_47;
      }
    }

LABEL_61:
    __break(0x5513u);
  }

LABEL_47:
  if (v2 == v4)
  {
    if (a2[1] && *a2)
    {
      return 0;
    }

    *a2 = 0;
    a2[1] = 0;
    if (a2 + 2 >= a2)
    {
      return 720905;
    }

LABEL_60:
    __break(0x5519u);
    goto LABEL_61;
  }

  return 720904;
}

BOOL X509CertificateValidAtTime(uint64_t a1, time_t a2)
{
  result = 0;
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6[0] = 0;
  if (a1 && a2 != -1)
  {
    return !X509CertificateGetNotBefore(a1, v6) && !X509CertificateGetNotAfter(a1, &v5) && difftime(a2, v6[0]) >= 0.0 && difftime(a2, v5) <= 0.0;
  }

  return result;
}

unint64_t X509CertificateGetNotBefore(uint64_t a1, time_t *a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  result = X509CertificateParseValidity(a1, v4, 0);
  if (!result)
  {
    return X509TimeConvert(v4, a2);
  }

  return result;
}

unint64_t X509CertificateGetNotAfter(uint64_t a1, time_t *a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  result = X509CertificateParseValidity(a1, 0, v4);
  if (!result)
  {
    return X509TimeConvert(v4, a2);
  }

  return result;
}

BOOL X509CertificateIsValid(uint64_t a1)
{
  v2 = time(0);

  return X509CertificateValidAtTime(a1, v2);
}

uint64_t X509CertificateParseValidity(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = 720906;
  if (!result)
  {
    return v3;
  }

  v4 = *(result + 72);
  v5 = *(result + 80);
  if (!v4 || v5 == 0)
  {
    return v3;
  }

  if (__CFADD__(v4, v5))
  {
    __break(0x5513u);
  }

  else
  {
    v7 = v4 + v5;
    if (v4 <= v7)
    {
      v9[0] = *(result + 72);
      v9[1] = v7;
      if (!ccder_blob_decode_Time(v9, a2))
      {
        return 720907;
      }

      if (ccder_blob_decode_Time(v9, a3))
      {
        return 0;
      }

      return 720908;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t X509TimeConvert(void *a1, time_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = 720909;
  if (!a1)
  {
    return v2;
  }

  v4 = a1[1];
  if ((v4 | 2) != 0xF)
  {
    return v2;
  }

  v11.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *v12 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v11.tm_mon = v6;
  *&v11.tm_isdst = v6;
  *&v11.tm_sec = v6;
  v13 = 0;
  result = __memcpy_chk();
  if (result > result + v4)
  {
    goto LABEL_24;
  }

  v8 = &v12[v4];
  if (&v12[v4] >= &v14 || &v12[v4] < v12)
  {
    goto LABEL_24;
  }

  if (v4 > 0xF)
  {
    __break(1u);
    goto LABEL_26;
  }

  v12[v4] = 0;
  if (v4 != 13)
  {
    if (v8 + 1 >= v8 && v8 + 1 <= &v14)
    {
      result = strptime(v12, "%Y%m%d%H%M%SZ", &v11);
      goto LABEL_15;
    }

LABEL_24:
    __break(0x5519u);
  }

  if (BYTE5(v13))
  {
    goto LABEL_24;
  }

  result = strptime(v12, "%y%m%d%H%M%SZ", &v11);
  if (result && v11.tm_year >= 150)
  {
    v11.tm_year -= 100;
  }

LABEL_15:
  v9 = a1[1];
  if (v9 >= 0x11)
  {
LABEL_26:
    __break(0x5512u);
    goto LABEL_27;
  }

  if (!__CFADD__(v12, v9))
  {
    if (result != &v12[v9])
    {
      return 720910;
    }

    v10 = timegm(&v11);
    if (v10 == -1)
    {
      return 720911;
    }

    v2 = 0;
    if (a2)
    {
      *a2 = v10;
    }

    return v2;
  }

LABEL_27:
  __break(0x5513u);
  return result;
}

BOOL X509ExtensionParseComponentAuth(unint64_t *a1, void *a2, unint64_t *a3)
{
  v3 = a1[1];
  if (*a1 > v3)
  {
    goto LABEL_19;
  }

  v13 = *a1;
  v14 = a1[1];
  v12 = v3 - *a1;
  if (ccder_blob_decode_tl())
  {
    goto LABEL_5;
  }

  if (*a1 > a1[1])
  {
    goto LABEL_19;
  }

  v13 = *a1;
  v14 = a1[1];
  if (ccder_blob_decode_tl())
  {
LABEL_5:
    v8 = v13;
    v7 = v14;
    if (v13 > v14)
    {
      goto LABEL_19;
    }

    *a1 = v13;
    a1[1] = v14;
    v9 = v12;
  }

  else
  {
    v8 = *a1;
    v7 = a1[1];
    v9 = v7 - *a1;
  }

  if (__CFADD__(v8, v9))
  {
    goto LABEL_20;
  }

  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    if (!a3)
    {
LABEL_15:
      *a2 |= 0x40000000uLL;
LABEL_16:
      if (v8 <= v7)
      {
        *a1 = v10;
        return v7 == v10;
      }

      goto LABEL_19;
    }

    if (v8 <= v7 && v9 <= v7 - v8)
    {
      *a3 = v8;
      a3[1] = v9;
      goto LABEL_15;
    }

LABEL_19:
    __break(0x5519u);
LABEL_20:
    __break(0x5513u);
  }

  return v7 == v10;
}

uint64_t X509ExtensionParseCertifiedChipIntermediate(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
      goto LABEL_12;
    }

    v8 = v7 - 0x5555555555555556;
    if (a1[1] != v7 - 0x5555555555555556)
    {
      return 0;
    }

    *a2 |= 0x30000000000uLL;
    if (a3)
    {
      if (v7 > v8)
      {
        goto LABEL_12;
      }

      *a3 = v7;
      a3[1] = 0xAAAAAAAAAAAAAAAALL;
    }

    if (v7 <= v8)
    {
      *a1 = v8;
      return 1;
    }

LABEL_12:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509ExtensionParseMFIAuthv3Leaf(unint64_t *a1, void *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v5 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      v6 = a1[1];
      if (v6 != v5 - 0x5555555555555556)
      {
        return 0;
      }

      if (v5 <= v6)
      {
        *a1 = v5 - 0x5555555555555556;
        return 1;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t X509ExtensionParseMFISWAuth(unint64_t *a1, void *a2, unint64_t *a3)
{
  result = ccder_blob_decode_tl();
  if (result)
  {
    v7 = *a1;
    if (*a1 >= 0x5555555555555556)
    {
      __break(0x5513u);
    }

    else
    {
      v8 = a1[1];
      if (v8 != v7 - 0x5555555555555556)
      {
        return 0;
      }

      if (a3)
      {
        if (v8 < v7 || v8 - v7 < 0xAAAAAAAAAAAAAAAALL)
        {
          goto LABEL_13;
        }

        *a3 = v7;
        a3[1] = 0xAAAAAAAAAAAAAAAALL;
      }

      *a2 |= 0x30000000uLL;
      if (v7 <= v8)
      {
        *a1 = v7 - 0x5555555555555556;
        return 1;
      }
    }

LABEL_13:
    __break(0x5519u);
  }

  return result;
}

uint64_t X509ExtensionParseServerAuthMarker(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  result = ccder_blob_check_null(a1);
  if (result)
  {
    if (a2 > 0xFFFFFFFFFFFFFFF6)
    {
      goto LABEL_26;
    }

    if (__CFADD__(a2, a3))
    {
      goto LABEL_26;
    }

    v10 = a2 + a3;
    if (a2 + a3 == -1)
    {
      goto LABEL_26;
    }

    v11 = a2 + 9;
    v12 = (a2 + 9);
    while (1)
    {
      v13 = v12 < v10 && v12 >= a2;
      v14 = v13;
      if (v12 >= v10 - 1)
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_25;
      }

      v15 = *v12++;
      if ((v15 & 0x80000000) == 0)
      {
        return 0;
      }
    }

    if (!v14)
    {
LABEL_25:
      __break(0x5519u);
LABEL_26:
      __break(0x5513u);
      return result;
    }

    if ((*v12 & 0x80000000) == 0)
    {
      if (!a5)
      {
LABEL_22:
        *a4 |= 0x100000000uLL;
        return 1;
      }

      if (v11 >= a2 && v11 <= v10)
      {
        *a5 = v11;
        a5[1] = a3 - 9;
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    return 0;
  }

  return result;
}

unint64_t *X509ExtensionParseMFI4Properties(unint64_t *result, void *a2, unint64_t *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = v3 - *result;
  if (v5 != 32)
  {
    return (v5 == 32);
  }

  if (a3)
  {
    if (v4 > v3)
    {
LABEL_12:
      __break(0x5519u);
      goto LABEL_13;
    }

    *a3 = v4;
    a3[1] = 32;
  }

  *a2 |= 0xC00000000uLL;
  if (v4 < 0xFFFFFFFFFFFFFFE0)
  {
    v6 = v4 + 32;
    if (v4 + 32 <= v3 && v4 <= v6)
    {
      *result = v6;
      return (v5 == 32);
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(0x5513u);
  return result;
}

unint64_t *X509ChainParseCertificateSet(unint64_t *result, unint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  *a4 = 0;
  a4[1] = 0;
  if (a4 + 2 < a4)
  {
LABEL_33:
    __break(0x5519u);
LABEL_34:
    __break(0x5513u);
    return result;
  }

  v5 = result;
  v6 = *result >= result[1] || a3 == 0;
  if (!v6)
  {
    v10 = 0;
    v11 = a2 + 304 * a3;
    v12 = ~a2;
    v13 = a4 + 1;
    v14 = a3 - 1;
    v15 = (a2 + 272);
    while ((v10 * 304) >> 64 == (304 * v10) >> 63 && 304 * v10 <= v12)
    {
      v16 = (v15 - 34);
      if (v15 != 272 && (v16 < a2 || (v15 + 4) > v11 || v16 > (v15 + 4)))
      {
        goto LABEL_33;
      }

      result = X509CertificateParse(v15 - 34, v5);
      if (result)
      {
        return result;
      }

      if (v10)
      {
        if (v16 < a2)
        {
          goto LABEL_33;
        }

        if ((v15 + 4) > v11)
        {
          goto LABEL_33;
        }

        v17 = *v13;
        *v15 = 0;
        v15[1] = v17;
        if (v16 > (v15 + 4))
        {
          goto LABEL_33;
        }

        *v17 = v16;
        *v13 = v15;
      }

      else
      {
        v18 = *a4;
        *v15 = *a4;
        if (v18)
        {
          v19 = (v18 + 280);
        }

        else
        {
          v19 = v13;
        }

        *v19 = v15;
        *a4 = v16;
        if (v13 < a4)
        {
          goto LABEL_33;
        }

        v15[1] = a4;
      }

      v7 = v10 + 1;
      if (*v5 < v5[1])
      {
        v15 += 38;
        v6 = v14 == v10++;
        if (!v6)
        {
          continue;
        }
      }

      goto LABEL_8;
    }

    goto LABEL_34;
  }

  v7 = 0;
LABEL_8:
  if (!a5)
  {
    return 0;
  }

  result = 0;
  *a5 = v7;
  return result;
}

unint64_t *X509ChainGetCertificateUsingKeyIdentifier(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (!*result)
  {
    return v2;
  }

  while (!*(v2 + 192))
  {
LABEL_6:
    v2 = *(v2 + 272);
    if (!v2)
    {
      return v2;
    }
  }

  if (v2 < v2 + 304 && v2 + 184 <= v2 + 200)
  {
    result = compare_octet_string(a2, v2 + 184);
    if (!result)
    {
      return v2;
    }

    goto LABEL_6;
  }

  __break(0x5519u);
  return result;
}

void *X509ChainResetChain(void *result, void *a2)
{
  *result = 0;
  if (result + 1 < result)
  {
LABEL_7:
    __break(0x5519u);
    return result;
  }

  result[1] = result;
  v2 = *a2;
  if (*a2)
  {
    while (v2 < v2 + 38)
    {
      v2[36] = 0;
      v2[37] = 0;
      if (v2 + 36 > v2 + 38)
      {
        break;
      }

      v2 = v2[34];
      if (!v2)
      {
        return result;
      }
    }

    goto LABEL_7;
  }

  return result;
}

unint64_t X509ChainBuildPathPartial(unint64_t result, unint64_t *a2, unint64_t *a3, int a4)
{
  if (!result)
  {
    return 327691;
  }

  *a3 = 0;
  v5 = a3 + 1;
  if (a3 + 1 < a3 || (v6 = result, a3[1] = a3, *(result + 288) = 0, result + 288 > result + 296) || (*a3 = result, a3[1] = result + 288, *(result + 296) = a3, result + 304 < result) || (v7 = result + 120, result + 120 > result + 136))
  {
LABEL_38:
    __break(0x5519u);
  }

  else
  {
    while (1)
    {
      result = compare_octet_string(v7, v6 + 104);
      if (!result)
      {
        break;
      }

      v10 = v6 + 168;
      if (!*(v6 + 176))
      {
        goto LABEL_13;
      }

      if (v10 > v6 + 184)
      {
        goto LABEL_38;
      }

      result = X509ChainGetCertificateUsingKeyIdentifier(a2, v6 + 168);
      if (!result)
      {
        goto LABEL_13;
      }

      v11 = result;
      v12 = result + 304;
      if (result >= result + 304)
      {
        goto LABEL_38;
      }

      result += 104;
      if (v11 + 13 > v11 + 15)
      {
        goto LABEL_38;
      }

      result = compare_octet_string(result, v7);
      if (result)
      {
LABEL_13:
        v11 = *a2;
        if (*a2)
        {
          do
          {
            v12 = (v11 + 38);
            if (v11 >= v11 + 38 || v11 + 13 > v11 + 15)
            {
              goto LABEL_38;
            }

            result = compare_octet_string(v7, (v11 + 13));
            if (!result)
            {
              goto LABEL_19;
            }

            v11 = v11[34];
          }

          while (v11);
        }

        if (v10 > v6 + 184)
        {
          goto LABEL_38;
        }

        if (X509ChainGetAppleRootUsingKeyIdentifier(v6 + 168, 1))
        {
          return 0;
        }

        BAARootUsingKeyIdentifier = X509ChainGetBAARootUsingKeyIdentifier(v6 + 168);
        if (a4)
        {
          v16 = 0;
        }

        else
        {
          v16 = 524296;
        }

        if (BAARootUsingKeyIdentifier)
        {
          return 0;
        }

        else
        {
          return v16;
        }
      }

LABEL_19:
      v6 = v11;
      v13 = *a3;
      if (*a3)
      {
        while (v13 != v11)
        {
          v13 = v13[36];
          if (!v13)
          {
            goto LABEL_22;
          }
        }

        return 524297;
      }

LABEL_22:
      if ((v11 + 38) <= v12)
      {
        v14 = *v5;
        v11[36] = 0;
        v11[37] = v14;
        if (v11 <= v11 + 38)
        {
          *v14 = v11;
          *v5 = (v11 + 36);
          v7 = (v11 + 15);
          if (v11 + 15 <= v11 + 17)
          {
            continue;
          }
        }
      }

      goto LABEL_38;
    }
  }

  return result;
}

unint64_t X509ChainGetAppleRootUsingKeyIdentifier(unint64_t result, int a2)
{
  v2 = &numAppleRoots;
  if (!a2)
  {
    v2 = &numAppleProdRoots;
  }

  v3 = *v2;
  if (*v2)
  {
    v4 = result;
    for (i = &AppleRoots; ; ++i)
    {
      v6 = i + 1;
      v7 = i < &AppleRoots || v6 > AppleRootSPKIs;
      if (v7 || i > v6)
      {
        break;
      }

      v9 = *i;
      v10 = *i + 184;
      if (v10 > *i + 200)
      {
        break;
      }

      result = compare_octet_string(v4, v10);
      if (!result)
      {
        if (v9 < v9 + 304)
        {
          return v9;
        }

        break;
      }

      if (!--v3)
      {
        return 0;
      }
    }

    __break(0x5519u);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t X509ChainGetBAARootUsingKeyIdentifier(unint64_t result)
{
  v1 = numBAARoots;
  if (numBAARoots)
  {
    v2 = result;
    for (i = &BAARoots; ; ++i)
    {
      v4 = i + 1;
      v5 = i < &BAARoots || v4 > &AppleRootCASPKI;
      if (v5 || i > v4)
      {
        break;
      }

      v7 = *i;
      v8 = *i + 184;
      if (v8 > *i + 200)
      {
        break;
      }

      result = compare_octet_string(v2, v8);
      if (!result)
      {
        if (v7 < v7 + 304)
        {
          return v7;
        }

        break;
      }

      if (!--v1)
      {
        return 0;
      }
    }

    __break(0x5519u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t X509ChainCheckPathWithOptions(char a1, unint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  v54[4] = *MEMORY[0x277D85DE8];
  v8 = *a2;
  if (a3)
  {
    v9 = *(a3 + 48);
    if (v9)
    {
      if (*(v9 + 8))
      {
        if (v8 + 208 > v8 + 224)
        {
          goto LABEL_133;
        }

        if (compare_octet_string(v9, v8 + 208))
        {
          return 327701;
        }

        v8 = *v6;
      }
    }
  }

  if (!v8)
  {
    v23 = 0;
    v21 = 0;
    v13 = -1;
    if (a3)
    {
      goto LABEL_67;
    }

    goto LABEL_120;
  }

  v50 = v6;
  v51 = a4;
  v11 = 0;
  v12 = 0;
  v52 = 0;
  v13 = -1;
  do
  {
    v14 = v8 + 304;
    v15 = *(v8 + 288);
    v16 = v15 + 304;
    if (v15)
    {
LABEL_11:
      v17 = 0;
      goto LABEL_12;
    }

    if (v8 > v14)
    {
      goto LABEL_133;
    }

    if (!compare_octet_string(v8 + 120, v8 + 104))
    {
      v17 = 0;
      v15 = v8;
      v16 = v8 + 304;
      goto LABEL_12;
    }

    if (!a3)
    {
      return v12 | 0x9000Du;
    }

    if (*(a3 + 16) == 1)
    {
      AppleRootUsingKeyIdentifier = X509ChainGetAppleRootUsingKeyIdentifier(v8 + 168, *(a3 + 17));
      goto LABEL_63;
    }

    if (*(a3 + 24))
    {
      AppleRootUsingKeyIdentifier = X509ChainGetBAARootUsingKeyIdentifier(v8 + 168);
LABEL_63:
      v15 = AppleRootUsingKeyIdentifier;
      v52 |= AppleRootUsingKeyIdentifier != 0;
      v16 = AppleRootUsingKeyIdentifier + 304;
      if (AppleRootUsingKeyIdentifier)
      {
        goto LABEL_11;
      }
    }

    if ((*(a3 + 19) & 1) == 0)
    {
      return v12 | 0x9000Du;
    }

    v15 = 0;
    v17 = 1;
LABEL_12:
    if (v8 > v14)
    {
      goto LABEL_133;
    }

    if (v11 && *(v8 + 32) >= 2uLL)
    {
      if ((*(v8 + 265) & 1) == 0)
      {
        v49 = 589825;
        return v12 | v49;
      }

      if ((*(v8 + 264) & 4) == 0)
      {
        v49 = 589826;
        return v12 | v49;
      }
    }

    v18 = *(v8 + 200);
    if (v18 && v18 < v11)
    {
      v49 = 589827;
      return v12 | v49;
    }

    if (*(v8 + 266) == 1)
    {
      v49 = 589831;
      return v12 | v49;
    }

    if (compare_octet_string(v8 + 40, v8 + 152))
    {
      v49 = 589828;
      return v12 | v49;
    }

    if ((v17 & 1) == 0 && *(v8 + 168) && *(v8 + 176))
    {
      if (v15 + 304 > v16 || v15 > v15 + 304 || v15 + 184 > v15 + 200)
      {
        goto LABEL_133;
      }

      if (compare_octet_string(v8 + 168, v15 + 184))
      {
        return v12 | 0x9000Au;
      }
    }

    if (a3 && v11 && (*(v8 + 240) & *(a3 + 8)) == 0)
    {
      X509PolicySetFlagsForCommonNames(v8);
    }

    if (v15 == v8 && !*(v8 + 240))
    {
      X509PolicySetFlagsForRoots(a3, v8);
      if (!a3)
      {
        goto LABEL_38;
      }
    }

    else if (!a3)
    {
      goto LABEL_38;
    }

    if (v15 != v8 && *(a3 + 18) == 1 && !X509CertificateIsValid(v8))
    {
      return v12 | 0x90009u;
    }

LABEL_38:
    if (!a3 || v11)
    {
      v13 &= *(v8 + 240);
      if (!a3)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v19 = *(v8 + 240);
      if ((v19 & *(a3 + 8)) == 0)
      {
        X509PolicySetFlagsForMFI(v8);
        v19 = *(v8 + 240);
      }

      v13 &= v19;
    }

    v20 = *(a3 + 8);
    if (v20 && (v20 & v13) == 0)
    {
      v49 = 589829;
      return v12 | v49;
    }

LABEL_46:
    a1 |= v15 == v8;
    if ((v17 & 1) == 0)
    {
      if (v15 + 304 > v16 || v15 > v15 + 304)
      {
        goto LABEL_133;
      }

      result = X509CertificateCheckSignature(a1, v15, (v8 + 16), v8 + 40);
      if (result)
      {
        return result;
      }
    }

    v21 = v11 + 1;
    if (v11 == -1)
    {
      goto LABEL_134;
    }

    v8 = *(v8 + 288);
    v12 += 256;
    ++v11;
  }

  while (v8);
  v6 = v50;
  a4 = v51;
  v23 = v52;
  if (!a3)
  {
    goto LABEL_120;
  }

LABEL_67:
  if (*a3)
  {
    v24 = v21;
    if ((v23 & 1) == 0 || (v24 = v21 + 1, v21 != -1))
    {
      if (*a3 != v24)
      {
        return (v24 << 8) | 0x90006u;
      }

      goto LABEL_71;
    }

LABEL_134:
    __break(0x5500u);
  }

LABEL_71:
  v25 = *(a3 + 24);
  if (v25 && *(v25 + 8))
  {
    v26 = v21 << 8;
    v27 = **(v6[1] + 8);
    v28 = v27 + 304;
    if ((*(a3 + 16) & 1) == 0)
    {
      memset(v54, 170, 32);
      v29 = (v27 + 88);
      v30 = v27 >= v28 || v29 > v27 + 104;
      v53[0] = 0xAAAAAAAAAAAAAAAALL;
      v53[1] = 0xAAAAAAAAAAAAAAAALL;
      if (!v30)
      {
        if (X509CertificateParseSPKI(v29, &v54[2], v53, v54))
        {
          goto LABEL_82;
        }

        if (compare_octet_string(&v54[2], *(a3 + 32)) || compare_octet_string(v54, *(a3 + 24)))
        {
          if (X509CertificateCheckSignatureWithPublicKey(*(a3 + 24), *(a3 + 32), *(a3 + 40), (v27 + 16), v27 + 40))
          {
LABEL_82:
            v31 = 589832;
            return v26 | v31;
          }
        }

        else if (!compare_octet_string(*(a3 + 32), &ecPublicKey))
        {
          compare_octet_string(v53, *(a3 + 40));
        }

        goto LABEL_120;
      }

      goto LABEL_133;
    }
  }

  else
  {
    if (*(a3 + 16) != 1)
    {
      goto LABEL_120;
    }

    v26 = v21 << 8;
    v27 = **(v6[1] + 8);
    v28 = v27 + 304;
  }

  if (v27 > v28)
  {
    goto LABEL_133;
  }

  v32 = 200;
  v33 = 184;
  if (v23)
  {
    v32 = 184;
    v33 = 168;
  }

  v34 = v27 + v33;
  v35 = v27 + v33 + 16;
  if (v35 > v27 + v32 || v34 > v35)
  {
    goto LABEL_133;
  }

  v37 = X509ChainGetAppleRootUsingKeyIdentifier(v34, *(a3 + 17));
  if (!v37)
  {
    return v26 | 0x9000Bu;
  }

  v38 = v37;
  v39 = v37 + 304;
  if ((v23 & 1) == 0)
  {
    v40 = v27 + 88 > v27 + 104 || v37 >= v39;
    v41 = v37 + 88;
    if (v40 || v41 > v37 + 104)
    {
      goto LABEL_133;
    }

    if (!compare_octet_string(v27 + 88, v41))
    {
      goto LABEL_120;
    }
  }

  v43 = (v27 + 16);
  v44 = v38 > v39 || v43 > v27 + 32;
  v45 = v27 + 40;
  v46 = v27 + 56;
  if (v44 || v45 > v46 || v46 > v27 + 72)
  {
LABEL_133:
    __break(0x5519u);
    goto LABEL_134;
  }

  if (X509CertificateCheckSignature(29, v38, v43, v45))
  {
    v31 = 589836;
    return v26 | v31;
  }

LABEL_120:
  result = 0;
  if (a4)
  {
    *a4 = v13;
  }

  return result;
}

void create_baa_info_cold_1()
{
  v0 = copy_current_process_name();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2261FC000, MEMORY[0x277D86220], v1, "%{public}@ failed to load cryptex1 local policy (%@) (non-fatal). Client should adopt new option (kMAOptionsBAAPerformOperationsOverIPC=True), or update entitlements and/or sandbox rules.", v2, v3, v4, v5);
}

void create_baa_info_cold_2()
{
  v0 = copy_current_process_name();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2261FC000, MEMORY[0x277D86220], v1, "%{public}@ failed to load boot manifest (%@) (non-fatal). Client should adopt new option (kMAOptionsBAAPerformOperationsOverIPC=True), or update entitlements and/or sandbox rules.", v2, v3, v4, v5);
}

void create_baa_info_cold_3()
{
  v0 = copy_current_process_name();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2261FC000, MEMORY[0x277D86220], v1, "%{public}@ failed to load cryptex1 manifest (%@) (non-fatal). Client should adopt new option (kMAOptionsBAAPerformOperationsOverIPC=True), or update entitlements and/or sandbox rules.", v2, v3, v4, v5);
}

void isSupportedDeviceIdentityClient_cold_2(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  v2 = 138412290;
  v3 = v1;
  _os_log_fault_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%@", &v2, 0xCu);
}

void __getLAContextClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getLAContextClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"identity_support.m" lineNumber:22 description:{@"Unable to find class %s", "LAContext"}];

  __break(1u);
}

void __getLAContextClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *LocalAuthenticationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"identity_support.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void __DeviceIdentityIssueClientCertificateWithCompletion_block_invoke_171_cold_1(void *a1, uint64_t a2)
{
  v3 = a1;
  *a2 = 138543618;
  *(a2 + 4) = v3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = @"UniqueDeviceID";
  _os_log_fault_impl(&dword_2261FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%{public}@ failed to query %@ (non-fatal). Client should adopt new entitlement (com.apple.private.MobileGestalt.AllowedProtectedKeys / UniqueDeviceID).", a2, 0x16u);
}

void libavp_send_host_message_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CFDataRef gAppleVirtualPlatformSendSubsystemMessageToHost(AppleVirtualPlatformMessageSubsystem, CFDataRef, CFErrorRef *)"}];
  [v0 handleFailureInFunction:v1 file:@"vm_libavp.m" lineNumber:34 description:{@"%s", dlerror()}];

  __break(1u);
}

void libavp_copy_strong_identity_data_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFStringRef getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronousTimeoutNsec(void)"];
  [v0 handleFailureInFunction:v1 file:@"vm_libavp.m" lineNumber:44 description:{@"%s", dlerror()}];

  __break(1u);
}

void libavp_copy_strong_identity_data_cold_2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CFDataRef gAppleVirtualPlatformGuestCopyStrongIdentityData(CFDictionaryRef, CFErrorRef *)"}];
  [v0 handleFailureInFunction:v1 file:@"vm_libavp.m" lineNumber:32 description:{@"%s", dlerror()}];

  __break(1u);
}

void libavp_copy_strong_identity_data_cold_3()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFStringRef getkAppleVirtualPlatformGuestStrongIdentityOptionCachedOnly(void)"];
  [v0 handleFailureInFunction:v1 file:@"vm_libavp.m" lineNumber:41 description:{@"%s", dlerror()}];

  __break(1u);
}

void libavp_copy_strong_identity_data_cold_4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFStringRef getkAppleVirtualPlatformGuestStrongIdentityOptionSynchronous(void)"];
  [v0 handleFailureInFunction:v1 file:@"vm_libavp.m" lineNumber:38 description:{@"%s", dlerror()}];

  __break(1u);
}

void libavp_guest_has_host_key_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"_Bool gAppleVirtualPlatformGuestHasHostKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"vm_libavp.m" lineNumber:36 description:{@"%s", dlerror()}];

  __break(1u);
}

void AppleVirtualPlatformLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AppleVirtualPlatformLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"vm_libavp.m" lineNumber:26 description:{@"%s", *a1}];

  __break(1u);
}