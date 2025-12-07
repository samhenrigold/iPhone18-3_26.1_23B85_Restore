void sub_225172FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225172FF8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v4, v5);
    objc_msgSend_handleRequestDidComplete_(v6, v7, v3);
  }
}

void sub_225173144(uint64_t a1)
{
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = sub_2251731F8;
  v10 = &unk_278546550;
  v2 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v2;
  v3 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, &v7);
  v6 = objc_msgSend_accountStatusWorkloop(*(a1 + 32), v4, v5, v7, v8, v9, v10, v11);
  dispatch_async(v6, v3);
}

void sub_2251731F8(uint64_t a1, uint64_t a2)
{
  v241 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v6 = objc_msgSend__accountStatus(*(a1 + 32), v4, v5);
  objc_msgSend_setAccountStatus_(v3, v7, v6);
  objc_msgSend_setWalrusStatus_(v3, v8, 0);
  objc_msgSend_setDeviceToDeviceEncryptionAvailability_(v3, v9, 0);
  v12 = objc_msgSend_options(*(a1 + 32), v10, v11);
  v15 = objc_msgSend_bypassPCSEncryption(v12, v13, v14);
  objc_msgSend_setBypassPCSEncryption_(v3, v16, v15);

  hasTCCAuthorization = objc_msgSend_hasTCCAuthorization_(*(a1 + 32), v17, 1);
  objc_msgSend_setAccountAccessAuthorization_(v3, v19, hasTCCAuthorization);
  v22 = objc_msgSend_account(*(a1 + 32), v20, v21);
  v25 = objc_msgSend_identifier(v22, v23, v24);
  if (v25)
  {
    v28 = v25;
    v29 = objc_msgSend_containerID(*(a1 + 32), v26, v27);

    if (!v29)
    {
      goto LABEL_5;
    }

    v32 = MEMORY[0x277CCACA8];
    v33 = objc_msgSend_account(*(a1 + 32), v30, v31);
    v36 = objc_msgSend_identifier(v33, v34, v35);
    v39 = objc_msgSend_containerID(*(a1 + 32), v37, v38);
    v22 = objc_msgSend_stringWithFormat_(v32, v40, @"%@|%@", v36, v39);

    v43 = objc_msgSend_CKSHA256Base64(v22, v41, v42);
    objc_msgSend_setIdentifier_(v3, v44, v43);
  }

LABEL_5:
  v45 = objc_msgSend_bypassPCSEncryption(v3, v30, v31);
  v48 = objc_msgSend_account(*(a1 + 32), v46, v47);
  if (objc_msgSend_isPrimaryAccount(v48, v49, v50))
  {
    v53 = 0;
  }

  else
  {
    v54 = objc_msgSend_deviceContext(*(a1 + 32), v51, v52);
    v57 = objc_msgSend_testDeviceReference(v54, v55, v56);
    v53 = v57 == 0;
  }

  v60 = objc_msgSend_account(*(a1 + 32), v58, v59);
  v63 = MEMORY[0x277CBC830];
  v64 = MEMORY[0x277CBC880];
  if (!v60 || (v65 = v60, objc_msgSend_account(*(a1 + 32), v61, v62), v66 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend_accountType(v66, v67, v68), v66, v65, v69 == 1))
  {
LABEL_10:
    if (*v64 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    goto LABEL_15;
  }

  if (*v64 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v70 = *v63;
  if (os_log_type_enabled(*v63, OS_LOG_TYPE_DEBUG))
  {
    if (v53)
    {
      v197 = &stru_28385ED00;
    }

    else
    {
      v197 = @" not";
    }

    v198 = *(a1 + 32);
    v199 = v70;
    v202 = objc_msgSend_containerID(v198, v200, v201);
    *buf = 138412802;
    v234 = v197;
    v235 = 2048;
    v236 = v198;
    v237 = 2112;
    v238 = v202;
    _os_log_debug_impl(&dword_22506F000, v199, OS_LOG_TYPE_DEBUG, "Current account is%@ secondary account for CKDContainer %p, containerID %@.", buf, 0x20u);

    goto LABEL_10;
  }

LABEL_15:
  v71 = *v63;
  if (os_log_type_enabled(*v63, OS_LOG_TYPE_DEBUG))
  {
    v150 = *(a1 + 32);
    v151 = v71;
    v154 = objc_msgSend_accountOverrideInfo(v150, v152, v153);
    v155 = *(a1 + 32);
    *buf = 138412546;
    v234 = v154;
    v235 = 2048;
    v236 = v155;
    _os_log_debug_impl(&dword_22506F000, v151, OS_LOG_TYPE_DEBUG, "Account Override info %@ for CKDContainer %p", buf, 0x16u);
  }

  v74 = objc_msgSend_options(*(a1 + 32), v72, v73);
  OnlyManatee = objc_msgSend_forceEnableReadOnlyManatee(v74, v75, v76);

  if (OnlyManatee)
  {
    objc_msgSend_setDeviceToDeviceEncryptionAvailability_(v3, v78, 3);
    goto LABEL_25;
  }

  if (!((objc_msgSend_accountStatus(v3, v78, v79) == 3) | v45 & 1))
  {
    v82 = objc_msgSend_deviceContext(*(a1 + 32), v80, v81);
    v85 = objc_msgSend_accountDataSecurityObserver(v82, v83, v84);

    v88 = objc_msgSend_account(*(a1 + 32), v86, v87);
    error = objc_msgSend_isManateeAvailableForAccount_isSecondaryAccount_allowFetch_error_(v85, v89, v88, v53, 1, 0);

    if (error)
    {
      v93 = objc_msgSend_deviceToDeviceEncryptionAvailability(v3, v91, v92);
      objc_msgSend_setDeviceToDeviceEncryptionAvailability_(v3, v94, v93 | 2);
    }

    else
    {
      v97 = objc_msgSend_account(*(a1 + 32), v91, v92);
      v99 = objc_msgSend_accountSupportsManatee_(v85, v98, v97);

      if (!v99)
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    v100 = objc_msgSend_deviceToDeviceEncryptionAvailability(v3, v95, v96);
    objc_msgSend_setDeviceToDeviceEncryptionAvailability_(v3, v101, v100 | 1);
    goto LABEL_24;
  }

LABEL_25:
  v102 = objc_msgSend_account(*(a1 + 32), v80, v81);
  if (objc_msgSend_isCarryAccount(v102, v103, v104))
  {
    objc_msgSend_setAccountPartition_(v3, v105, 2);
  }

  else
  {
    objc_msgSend_setAccountPartition_(v3, v105, 1);
  }

  objc_msgSend_setHasValidCredentials_(v3, v106, 1);
  objc_msgSend_setNeedsToVerifyTerms_(v3, v107, 0);
  v110 = objc_msgSend_account(*(a1 + 32), v108, v109);
  v111 = *(a1 + 32);
  v232 = 0;
  v113 = objc_msgSend_iCloudAuthTokenWithContainer_error_(v110, v112, v111, &v232);
  v114 = v232;

  if (!v113 || v114)
  {
    objc_msgSend_setHasValidCredentials_(v3, v115, 0);
  }

  v117 = objc_msgSend_account(*(a1 + 32), v115, v116);
  v118 = *(a1 + 32);
  v231 = v114;
  v120 = objc_msgSend_cloudKitAuthTokenWithContainer_error_(v117, v119, v118, &v231);
  v121 = v231;

  if (!v120 || v121)
  {
    v124 = objc_msgSend_domain(v121, v122, v123);
    v127 = v124;
    if (v124 == *MEMORY[0x277CBC120])
    {
      v129 = objc_msgSend_code(v121, v125, v126);

      if (v129 == 1004)
      {
        objc_msgSend_setNeedsToVerifyTerms_(v3, v128, 1);
      }
    }

    else
    {
    }

    objc_msgSend_setHasValidCredentials_(v3, v128, 0);
  }

  if ((v45 & 1) == 0)
  {
    v130 = objc_msgSend_deviceContext(*(a1 + 32), v122, v123);
    v133 = objc_msgSend_accountDataSecurityObserver(v130, v131, v132);

    v136 = objc_msgSend_account(*(a1 + 32), v134, v135);
    if (objc_msgSend_isWalrusEnabledForAccount_allowFetch_(v133, v137, v136, 1))
    {
      objc_msgSend_setWalrusStatus_(v3, v138, 1);
    }

    else
    {
      objc_msgSend_setWalrusStatus_(v3, v138, 2);
    }
  }

  if (objc_msgSend_accountStatus(v3, v122, v123) == 1 && (objc_msgSend_hasValidCredentials(v3, v139, v140) & 1) == 0)
  {
    objc_msgSend_clientSDKVersion(*(a1 + 32), v139, v140);
    if (CKLinkCheck32f5805a68adfc1b65f94a0de69aa32177c7cd24())
    {
      if ((objc_msgSend__isAdopterAppleInternal(*(a1 + 32), v139, v140) & 1) == 0)
      {
        if (*v64 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v141 = *v63;
        if (os_log_type_enabled(*v63, OS_LOG_TYPE_DEBUG))
        {
          v217 = v141;
          objc_msgSend_accountStatus(v3, v218, v219);
          v220 = CKStringFromAccountStatus();
          v223 = objc_msgSend_containerID(*(a1 + 32), v221, v222);
          *buf = 138412546;
          v234 = v220;
          v235 = 2112;
          v236 = v223;
          _os_log_debug_impl(&dword_22506F000, v217, OS_LOG_TYPE_DEBUG, "Account does not have valid credentials. Setting account status from %@ to temporarily unavailable for container: %@", buf, 0x16u);
        }

        objc_msgSend_setAccountStatus_(v3, v142, 4);
      }
    }
  }

  if (objc_msgSend_accountStatus(v3, v139, v140) == 1 && objc_msgSend_walrusStatus(v3, v143, v144) == 1 && (objc_msgSend_deviceToDeviceEncryptionAvailability(v3, v143, v144) & 2) == 0 && (objc_msgSend_bypassPCSEncryption(v3, v143, v144) & 1) == 0)
  {
    v145 = objc_msgSend_options(*(a1 + 32), v143, v144);
    if (objc_msgSend_useClearAssetEncryption(v145, v146, v147))
    {
    }

    else
    {
      objc_msgSend_clientSDKVersion(*(a1 + 32), v148, v149);
      v156 = CKLinkCheck32f5805a68adfc1b65f94a0de69aa32177c7cd24();

      if (v156)
      {
        if (*v64 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v157 = *v63;
        if (os_log_type_enabled(*v63, OS_LOG_TYPE_DEBUG))
        {
          v224 = v157;
          objc_msgSend_accountStatus(v3, v225, v226);
          v227 = CKStringFromAccountStatus();
          v230 = objc_msgSend_containerID(*(a1 + 32), v228, v229);
          *buf = 138412546;
          v234 = v227;
          v235 = 2112;
          v236 = v230;
          _os_log_debug_impl(&dword_22506F000, v224, OS_LOG_TYPE_DEBUG, "Account has walrus but not manatee. Setting account status from %@ to temporarily unavailable for container: %@", buf, 0x16u);
        }

        objc_msgSend_setAccountStatus_(v3, v158, 4);
      }
    }
  }

  v159 = objc_msgSend_account(*(a1 + 32), v143, v144);
  if (objc_msgSend_isWarmingUp(v159, v160, v161) && (objc_msgSend_clientSDKVersion(*(a1 + 32), v162, v163), (CKLinkCheck1b43ebd13e37451090125b6380e6d1e8() & 1) != 0))
  {
    v166 = objc_msgSend_entitlements(*(a1 + 32), v164, v165);
    hasNotifyOnAccountWarmupEntitlement = objc_msgSend_hasNotifyOnAccountWarmupEntitlement(v166, v167, v168);

    if ((hasNotifyOnAccountWarmupEntitlement & 1) == 0)
    {
      if (*v64 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v172 = *v63;
      if (os_log_type_enabled(*v63, OS_LOG_TYPE_DEBUG))
      {
        v210 = v172;
        objc_msgSend_accountStatus(v3, v211, v212);
        v213 = CKStringFromAccountStatus();
        v216 = objc_msgSend_containerID(*(a1 + 32), v214, v215);
        *buf = 138412546;
        v234 = v213;
        v235 = 2112;
        v236 = v216;
        _os_log_debug_impl(&dword_22506F000, v210, OS_LOG_TYPE_DEBUG, "Account is still warming up. Setting account status from %@ to temporarily unavailable for container: %@", buf, 0x16u);
      }

      objc_msgSend_setAccountStatus_(v3, v173, 4);
    }
  }

  else
  {
  }

  if (objc_msgSend_shouldUsePCSEncryption(*(a1 + 32), v170, v171))
  {
    v176 = objc_msgSend_pcsManager(*(a1 + 32), v174, v175);
    v179 = objc_msgSend_pcsServiceName(v176, v177, v178);

    v182 = objc_msgSend_sharedNotifier(CKDPCSNotifier, v180, v181);
    v184 = objc_msgSend_serviceNeedsDBRReauthentication_(v182, v183, v179);

    if (v184)
    {
      if (*v64 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v185 = *v63;
      if (os_log_type_enabled(*v63, OS_LOG_TYPE_DEBUG))
      {
        v203 = v185;
        objc_msgSend_accountStatus(v3, v204, v205);
        v206 = CKStringFromAccountStatus();
        v209 = objc_msgSend_containerID(*(a1 + 32), v207, v208);
        *buf = 138412802;
        v234 = v179;
        v235 = 2112;
        v236 = v206;
        v237 = 2112;
        v238 = v209;
        _os_log_debug_impl(&dword_22506F000, v203, OS_LOG_TYPE_DEBUG, "Service: %@ needs DBR re-authentication. Setting account status from %@ to temporarily unavailable for container: %@", buf, 0x20u);
      }

      objc_msgSend_setAccountStatus_(v3, v186, 4);
    }
  }

  v187 = objc_msgSend_build(v3, v174, v175);
  if (*v64 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v188 = *v63;
  if (os_log_type_enabled(*v63, OS_LOG_TYPE_DEBUG))
  {
    v190 = *(a1 + 32);
    v191 = v188;
    v194 = objc_msgSend_account(v190, v192, v193);
    v195 = &stru_28385ED00;
    *buf = 138413058;
    v196 = @".\nError was ";
    v234 = v194;
    v235 = 2112;
    if (!v121)
    {
      v196 = &stru_28385ED00;
    }

    v236 = v187;
    if (v121)
    {
      v195 = v121;
    }

    v237 = 2114;
    v238 = v196;
    v239 = 2112;
    v240 = v195;
    _os_log_debug_impl(&dword_22506F000, v191, OS_LOG_TYPE_DEBUG, "Returning account info for account %@ \nto client: %@%{public}@%@", buf, 0x2Au);
  }

  v189 = *(a1 + 40);
  if (v189)
  {
    (*(v189 + 16))(v189, v187, 0);
  }
}

void sub_225173F18(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_accountStatusWorkloop(*(a1 + 32), a2, a3);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_225173FBC;
  v6[3] = &unk_278546550;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(v4, v6);
}

uint64_t sub_225173FBC(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "Reloading account for %@", &v11, 0xCu);
  }

  v6 = objc_msgSend_sharedAccountStore(CKDAccountStore, v3, v4);
  objc_msgSend_invalidateCache(v6, v7, v8);

  objc_msgSend__reloadAccount_(*(a1 + 32), v9, 1);
  return (*(*(a1 + 40) + 16))();
}

void sub_225174184(uint64_t a1)
{
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = sub_225174238;
  v10 = &unk_278546550;
  v2 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v2;
  v3 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, &v7);
  v6 = objc_msgSend_accountStatusWorkloop(*(a1 + 32), v4, v5, v7, v8, v9, v10, v11);
  dispatch_async(v6, v3);
}

void sub_225174238(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend__accountStatus(*(a1 + 32), a2, a3) == 1)
  {
    v28 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], v4, v5);
    v6 = objc_opt_new();
    objc_msgSend_setResolvedConfiguration_(v6, v7, v28);
    v8 = [CKDOperationInfoHolderOperation alloc];
    v10 = objc_msgSend_containerForOperationInfo_(*(a1 + 32), v9, v6);
    v12 = objc_msgSend_initWithOperationInfo_container_(v8, v11, v6, v10);

    objc_msgSend_fetchImportantUserIDsForOperation_withCompletionHandler_(*(a1 + 32), v13, v12, *(a1 + 40));
  }

  else
  {
    if (!*(a1 + 40))
    {
      return;
    }

    v14 = objc_msgSend_entitlements(*(a1 + 32), v4, v5);
    isBackgroundAssetsExtension = objc_msgSend_isBackgroundAssetsExtension(v14, v15, v16);

    if (isBackgroundAssetsExtension)
    {
      v20 = @"Background Assets Extension processes don't have access to an iCloud account";
    }

    else
    {
      v21 = objc_msgSend_entitlements(*(a1 + 32), v18, v19);
      v24 = objc_msgSend_cloudServices(v21, v22, v23);
      v26 = objc_msgSend_containsObject_(v24, v25, *MEMORY[0x277CBC8C8]);

      v20 = @"CloudKit-Anonymous / App Clips processes don't have access to an iCloud account";
      if (v26)
      {
        v20 = @"No iCloud account is configured";
      }
    }

    v27 = *(a1 + 40);
    v28 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v18, *MEMORY[0x277CBBF50], 9, @"%@", v20);
    (*(v27 + 16))(v27, 0, 0);
  }
}

void sub_22517455C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517457C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  if (v4)
  {
    v7 = *(a1 + 40);
    v8 = objc_msgSend_error(WeakRetained, v5, v6);
    (*(v7 + 16))(v7, 1, v8);
  }

  else
  {
    if (*(a1 + 56) == 1)
    {
      v9 = objc_msgSend_discoverable(WeakRetained, v5, v6);
      objc_msgSend__applicationPermissionStatusFromUserPrivacySetting_(*(a1 + 32), v10, v9);
    }

    else
    {
      objc_msgSend__applicationPermissionStatusFromUserPrivacySetting_(*(a1 + 32), v5, 0);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_2251747DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v20 - 72));
  _Unwind_Resume(a1);
}

void sub_22517480C(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  if (v5)
  {
    v8 = *(a1 + 40);
    v9 = objc_msgSend_error(WeakRetained, v6, v7);
    (*(v8 + 16))(v8, 1, 0, v9);
LABEL_16:
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = WeakRetained;
    v9 = objc_msgSend_containerPrivacySettings(WeakRetained, v6, v7);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v33, v37, 16);
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v33 + 1) + 8 * v14);
          v16 = objc_loadWeakRetained((a1 + 56));
          v19 = objc_msgSend_containerID(v16, v17, v18);
          v22 = objc_msgSend_containerID(v15, v20, v21);
          isEqual = objc_msgSend_isEqual_(v19, v23, v22);

          if (isEqual)
          {
            if (*(a1 + 64))
            {
              v28 = objc_msgSend_discoverable(v15, v25, v26) != 0;
              v27 = objc_msgSend_discoverable(v15, v29, v30);
            }

            else
            {
              v27 = 0;
              v28 = 0;
            }

            WeakRetained = v32;
            v31 = objc_msgSend__applicationPermissionStatusFromUserPrivacySetting_(*(a1 + 32), v25, v27);
            (*(*(a1 + 40) + 16))(*(a1 + 40), v31, v28, 0);
            goto LABEL_16;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v25, &v33, v37, 16);
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    (*(*(a1 + 40) + 16))();
    WeakRetained = v32;
  }
}

void sub_225174BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225174BCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  if (v4)
  {
    v7 = objc_msgSend_error(WeakRetained, v5, v6);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (*(a1 + 48))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), v8, 0);
  }
}

void sub_225174D24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 1;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 1;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = a2;
  v6 = dispatch_group_create();
  v7 = v6;
  if (!a2)
  {
    dispatch_group_enter(v6);
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_225174F4C;
    v25[3] = &unk_278547358;
    v25[4] = v8;
    v27 = v30;
    v28 = v29;
    v26 = v7;
    objc_msgSend__globalStatusForApplicationPermission_completionHandler_(v8, v10, v9, v25);
  }

  v11 = CKGetGlobalQueue();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22517515C;
  v16[3] = &unk_2785473A8;
  v23 = a2;
  v20 = v29;
  v12 = *(a1 + 40);
  v21 = v32;
  v13 = *(a1 + 32);
  v17 = v5;
  v18 = v13;
  v19 = v12;
  v14 = *(a1 + 48);
  v22 = v30;
  v24 = v14;
  v15 = v5;
  dispatch_group_notify(v7, v11, v16);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);
}

void sub_225174F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 144), 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_225174F4C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v30[3] = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (a2 == 3)
  {
    if ((a3 & 1) == 0)
    {
      v28 = objc_msgSend_applicationDisplayName(*(a1 + 32), v7, v8);
      v10 = CKLocalizedString();

      v11 = CKLocalizedString();
      v12 = *MEMORY[0x277CBF198];
      v29[0] = *MEMORY[0x277CBF188];
      v29[1] = v12;
      v30[0] = v10;
      v30[1] = v11;
      v29[2] = *MEMORY[0x277CBF1E8];
      v13 = CKLocalizedString();
      v30[2] = v13;
      v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v30, v29, 3, v28);
      v18 = objc_msgSend_mutableCopy(v15, v16, v17);

      v21 = objc_msgSend_applicationIcon(*(a1 + 32), v19, v20);

      if (v21)
      {
        v24 = objc_msgSend_applicationIcon(*(a1 + 32), v22, v23);
        objc_msgSend_setObject_forKeyedSubscript_(v18, v25, v24, *MEMORY[0x277CBF1F0]);
      }

      v26 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, v18);
      objc_msgSend_showUserNotification_withCompletionBlock_(MEMORY[0x277CBC7D0], v27, v26, &unk_28385CCA0);
      if (v26)
      {
        CFRelease(v26);
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  *(*(*(a1 + 56) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));
}

void sub_22517515C(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 80);
    v5 = *(*(*(a1 + 56) + 8) + 24);
    *buf = 67109376;
    v50 = v4;
    v51 = 1024;
    v52 = v5;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "Permission status: %d (global: %d)", buf, 0xEu);
  }

  v6 = *(a1 + 80);
  if ((v6 - 2) >= 2)
  {
    if (v6 != 1)
    {
      v7 = *(*(*(a1 + 56) + 8) + 24);
      goto LABEL_11;
    }

LABEL_9:
    (*(*(a1 + 48) + 16))();
    return;
  }

  v7 = *(*(*(a1 + 56) + 8) + 24);
  if (v6 == v7)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (v7 == 2)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v8 = objc_msgSend_deviceContext(*(a1 + 40), v6, v3);
  v11 = objc_msgSend_testDeviceReference(v8, v9, v10);

  if (v11)
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  v14 = *(*(*(a1 + 72) + 8) + 24);
  v15 = *(*(*(a1 + 64) + 8) + 24);
  if (v14 != 1 || (v15 & 1) == 0)
  {
    objc_msgSend__setApplicationPermission_enabled_completionHandler_(*(a1 + 40), v12, *(a1 + 88), (v14 ^ 1) & v15, *(a1 + 48));
    return;
  }

  *buf = 0;
  if ((*(a1 + 88) & 1) == 0)
  {
    v16 = 0;
    v17 = 0;
LABEL_25:
    v40 = *(a1 + 48);
    v41 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBBF50], 1, @"Could not create a user notification %d", v16);
    (*(v40 + 16))(v40, 1, v41);

    goto LABEL_26;
  }

  v42 = objc_msgSend_applicationDisplayName(*(a1 + 40), v12, v13);
  v18 = CKLocalizedString();

  v19 = *MEMORY[0x277CBF188];
  v48[0] = v18;
  v20 = *MEMORY[0x277CBF198];
  v47[0] = v19;
  v47[1] = v20;
  v21 = CKLocalizedString();
  v48[1] = v21;
  v47[2] = *MEMORY[0x277CBF1E8];
  v22 = CKLocalizedString();
  v48[2] = v22;
  v47[3] = *MEMORY[0x277CBF1C0];
  v23 = CKLocalizedString();
  v48[3] = v23;
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, v48, v47, 4, v42);
  v17 = objc_msgSend_mutableCopy(v25, v26, v27);

  v30 = objc_msgSend_applicationIcon(*(a1 + 40), v28, v29);

  if (v30)
  {
    v33 = objc_msgSend_applicationIcon(*(a1 + 40), v31, v32);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v34, v33, *MEMORY[0x277CBF1F0]);
  }

  v35 = CFUserNotificationCreate(0, 0.0, 3uLL, buf, v17);

  if (!v35)
  {
    v16 = *buf;
    goto LABEL_25;
  }

  v36 = MEMORY[0x277CBC7D0];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_22517559C;
  v43[3] = &unk_278547380;
  v37 = *(a1 + 88);
  v38 = *(a1 + 48);
  v43[4] = *(a1 + 40);
  v45 = v37;
  v44 = v38;
  v46 = v35;
  objc_msgSend_showUserNotification_withCompletionBlock_(v36, v39, v35, v43);

LABEL_26:
}

void sub_22517559C(void *a1, const char *a2, char a3)
{
  if ((a3 & 3) == 1)
  {
    objc_msgSend__setApplicationPermission_enabled_completionHandler_(a1[4], a2, a1[6], 0, a1[5]);
  }

  else if ((a3 & 3) != 0)
  {
    v4 = a1[5];
    v5 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBBF50], 1, @"Could not create a user notification");
    (*(v4 + 16))(v4, 1, v5);
  }

  else
  {
    objc_msgSend__setApplicationPermission_enabled_completionHandler_(a1[4], a2, a1[6], 1, a1[5]);
  }

  v6 = a1[7];

  CFRelease(v6);
}

void sub_225175700(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = objc_msgSend_clientOperationCallbackProxy(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_operationMetrics(*(a1 + 32), v4, v5);
  v9 = objc_msgSend_error(*(a1 + 32), v7, v8);
  objc_msgSend_handleOperationDidCompleteWithMetrics_error_(v11, v10, v6, v9);
}

void sub_225175B0C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
  }

  objc_msgSend_invalidate(*(a1 + 32), a2, a3);
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    obj = objc_msgSend_operationStatisticsByClassName(*(a1 + 40), v5, v6);
    objc_sync_enter(obj);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v11 = objc_msgSend_operationStatisticsByClassName(*(a1 + 40), v9, v10);
    v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, v8);

    if (!v13)
    {
      v15 = [CKDOperationStatistics alloc];
      v13 = objc_msgSend_initWithOperationClassName_(v15, v16, v8);
      v19 = objc_msgSend_operationStatisticsByClassName(*(a1 + 40), v17, v18);
      objc_msgSend_setObject_forKeyedSubscript_(v19, v20, v13, v8);
    }

    objc_msgSend_pushStatisticsTo_(*(a1 + 48), v14, v13);

    objc_sync_exit(obj);
  }
}

void sub_225175F9C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_deviceContext(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_operationInfoCache(v4, v5, v6);
  v10 = objc_msgSend_outstandingOperationInfosForIDs_(v7, v8, *(a1 + 40));

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, v10, 0);
  }
}

void sub_2251760E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_deviceContext(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_operationInfoCache(v4, v5, v6);
  v10 = objc_msgSend_appContainerAccountTuple(*(a1 + 32), v8, v9);
  v13 = objc_msgSend_allOutstandingOperationIDsForAppContainerAccountTuple_(v7, v11, v10);

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v13, 0);
  }
}

void sub_2251762C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251762E0(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v17 = objc_msgSend_operationID(v13, v15, v16);
    v18 = 138543618;
    v19 = v17;
    v20 = 2112;
    v21 = v5;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending user identity to client for operation %{public}@ lookupInfo: %@", &v18, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleUserIdentityDiscoveryForLookupInfo_userIdentity_(v11, v12, v5, v6);
}

void sub_225176570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225176590(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v17 = objc_msgSend_operationID(v13, v15, v16);
    v18 = 138543618;
    v19 = v17;
    v20 = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending user identity to client for operation %{public}@ userIdentity: %@", &v18, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleUserIdentityDiscovery_(v11, v12, v6);
}

void sub_22517681C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517683C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    v17 = v10;
    v20 = objc_msgSend_operationID(v16, v18, v19);
    v21 = 138543618;
    v22 = v20;
    v23 = 2112;
    v24 = v7;
    _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Sending user identity to client for operation %{public}@ lookupInfo: %@", &v21, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v12, v13);
  objc_msgSend_handleShareParticipantFetchForLookupInfo_shareParticipant_error_(v14, v15, v7, v8, v9);
}

void sub_225176B58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_225176B88(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a1 + 32);
    v26 = v11;
    v29 = objc_msgSend_operationID(v25, v27, v28);
    v30 = 138543618;
    v31 = v29;
    v32 = 2112;
    v33 = v7;
    _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Sending save completion to client for operation %{public}@ zoneID: %@", &v30, 0x16u);
  }

  v14 = objc_msgSend_container(WeakRetained, v12, v13);
  v17 = objc_msgSend_options(v14, v15, v16);
  if (objc_msgSend_returnPCSMetadata(v17, v18, v19))
  {
    v20 = CKIsPCSError();

    if ((v20 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v8, v21, v22);
    }
  }

  else
  {
  }

  v23 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v21, v22);
  objc_msgSend_handleSaveForRecordZoneID_recordZone_error_(v23, v24, v7, v8, v9);
}

void sub_225176D58(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v17 = objc_msgSend_operationID(v13, v15, v16);
    v18 = 138543618;
    v19 = v17;
    v20 = 2112;
    v21 = v5;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending delete completion to client for operation %{public}@ zoneID: %@", &v18, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleDeleteForRecordZoneID_error_(v11, v12, v5, v6);
}

void sub_225176FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225177008(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a1 + 32);
    v26 = v11;
    v29 = objc_msgSend_operationID(v25, v27, v28);
    v30 = 138543618;
    v31 = v29;
    v32 = 2112;
    v33 = v8;
    _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Sending fetch record zones progress to client for operation %{public}@ zoneID: %@", &v30, 0x16u);
  }

  v14 = objc_msgSend_container(WeakRetained, v12, v13);
  v17 = objc_msgSend_options(v14, v15, v16);
  if (objc_msgSend_returnPCSMetadata(v17, v18, v19))
  {
    v20 = CKIsPCSError();

    if ((v20 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v7, v21, v22);
    }
  }

  else
  {
  }

  v23 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v21, v22);
  objc_msgSend_handleFetchForRecordZoneID_recordZone_error_(v23, v24, v8, v7, v9);
}

void sub_2251774D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

void sub_225177530(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v17 = objc_msgSend_operationID(v13, v15, v16);
    v18 = 138543874;
    v19 = v17;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending zone-was-updated progress to client for operation %{public}@ zoneID: %@ parentZoneID: %@", &v18, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleChangeForRecordZoneID_parentZoneID_(v11, v12, v5, v6);
}

void sub_225177698(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = v4;
    v14 = objc_msgSend_operationID(v10, v12, v13);
    v15 = 138543618;
    v16 = v14;
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Sending zone-was-deleted progress to client for operation %{public}@ zoneID: %@", &v15, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  objc_msgSend_handleDeleteForRecordZoneID_(v8, v9, v3);
}

void sub_2251777DC(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = v4;
    v14 = objc_msgSend_operationID(v10, v12, v13);
    v15 = 138543618;
    v16 = v14;
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Sending zone-was-purged progress to client for operation %{public}@ zoneID: %@", &v15, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  objc_msgSend_handlePurgeForRecordZoneID_(v8, v9, v3);
}

void sub_225177920(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = v4;
    v14 = objc_msgSend_operationID(v10, v12, v13);
    v15 = 138543618;
    v16 = v14;
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Sending zone-was-delete-due-to-encrypted-data-reset progress to client for operation %{public}@ zoneID: %@", &v15, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  objc_msgSend_handleEncryptedDataResetForRecordZoneID_(v8, v9, v3);
}

void sub_225177A64(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v12 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 32);
    v19 = v12;
    v22 = objc_msgSend_operationID(v18, v20, v21);
    v23 = 138543618;
    v24 = v22;
    v25 = 2112;
    v26 = v10;
    _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Sending change token update progress to client for operation %{public}@ error: %@", &v23, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v14, v15);
  objc_msgSend_handleChangeSetCompletionWithServerChangeToken_databaseChangesStatus_error_reply_(v16, v17, v9, a3, v10, v11);
}

void sub_225177D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225177D38(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = objc_msgSend_makeClientResult(v12, v14, v15);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v17 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 32);
    v23 = v17;
    v26 = objc_msgSend_operationID(v22, v24, v25);
    v27 = 138544386;
    v28 = v26;
    v29 = 2112;
    v30 = v16;
    v31 = 2114;
    v32 = v9;
    v33 = 2114;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    _os_log_debug_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEBUG, "Sending supported device capability check progress to client for operation %{public}@. result: %@, zoneID: %{public}@, capabilitySet: %{public}@, error: %@", &v27, 0x34u);
  }

  v20 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v18, v19);
  objc_msgSend_handleSupportedDeviceCapabilityCheckResultForRecordZoneID_capabilitySet_result_error_(v20, v21, v9, v10, v16, v11);
}

void sub_2251783A8(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_225178438;
  v5[3] = &unk_278547588;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v3;
  objc_msgSend_enumerateContainersUsingBlock_(a2, v4, v5);
}

void sub_225178438(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_msgSend_isEligibleForBroadcastingToContainer_(*(a1 + 32), v4, v3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v5 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Found eligible container %@", &v6, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_225178794(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22517886C;
  v6[3] = &unk_2785475D8;
  v7 = v3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(a1 + 56);
  v10 = *(a1 + 48);
  v4 = v3;
  objc_msgSend_enumerateClientContainers_(v4, v5, v6);
}

void sub_22517886C(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    *buf = 138412546;
    v15 = v3;
    v16 = 2112;
    v17 = v11;
    _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Broadcasting share update to client container %@ for container: %@", buf, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v8 = *(a1 + 56);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2251789EC;
  v12[3] = &unk_2785470C0;
  v13 = v3;
  v9 = v3;
  objc_msgSend_handleSharingUIUpdatedShare_recordID_isDeleted_error_reply_(v9, v10, v5, v6, v7, v8, v12);
}

void sub_2251789EC(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&dword_22506F000, v4, OS_LOG_TYPE_ERROR, "Error broadcasting share update to client container %@: %@", &v6, 0x16u);
    }
  }
}

void sub_225178DF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v4 + 48));
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

void sub_225178E58(uint64_t a1, void *a2, double a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    v13 = v6;
    v16 = objc_msgSend_operationID(v12, v14, v15);
    v17 = 134218242;
    v18 = a3;
    v19 = 2114;
    v20 = v16;
    _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Sending record save progress %lf to client for operation %{public}@", &v17, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v8, v9);
  objc_msgSend_handleRecordModificationForRecordID_didProgress_(v10, v11, v5, a3);
}

void sub_225178FAC(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v17 = objc_msgSend_operationID(v13, v15, v16);
    v18 = 138543618;
    v19 = v17;
    v20 = 2112;
    v21 = v5;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending records in flight progress to client for operation %{public}@ with recordIDs: %@", &v18, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleRecordIDsInFlight_reply_(v11, v12, v5, v6);
}

void sub_22517910C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v89 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v14 = objc_opt_new();
  v17 = objc_msgSend_etag(v10, v15, v16);
  objc_msgSend_setEtag_(v14, v18, v17);

  v21 = objc_msgSend_creationDate(v10, v19, v20);
  objc_msgSend_setCreationDate_(v14, v22, v21);

  v25 = objc_msgSend_modificationDate(v10, v23, v24);
  objc_msgSend_setModificationDate_(v14, v26, v25);

  v29 = objc_msgSend_expirationDate(v10, v27, v28);
  objc_msgSend_setExpirationDate_(v14, v30, v29);

  objc_msgSend_setServerRecord_(v14, v31, v12);
  v34 = objc_msgSend_container(WeakRetained, v32, v33);
  v37 = objc_msgSend_entitlements(v34, v35, v36);
  if (objc_msgSend_hasProtectionDataEntitlement(v37, v38, v39))
  {
  }

  else
  {
    v44 = objc_msgSend_operationInfo(WeakRetained, v40, v41);
    shouldOnlySaveAssetContent = objc_msgSend_shouldOnlySaveAssetContent(v44, v45, v46);

    if (!shouldOnlySaveAssetContent)
    {
      goto LABEL_6;
    }
  }

  v48 = objc_msgSend_protectionData(v10, v42, v43);
  objc_msgSend_setProtectionData_(v14, v49, v48);

  if (objc_msgSend_signingPCSIdentity(v10, v50, v51))
  {
    objc_msgSend_signingPCSIdentity(v10, v42, v43);
    ExportedRawCompact = PCSIdentityCreateExportedRawCompact();
    objc_msgSend_setSigningPCSIdentityData_(v14, v53, ExportedRawCompact);
  }

LABEL_6:
  v54 = objc_msgSend_container(WeakRetained, v42, v43);
  v57 = objc_msgSend_options(v54, v55, v56);
  if (objc_msgSend_returnPCSMetadata(v57, v58, v59))
  {
    v60 = CKIsPCSError();

    if (v60)
    {
      goto LABEL_11;
    }

    objc_msgSend_fillOutPCSMetadataInfo(v10, v61, v62);
    v65 = objc_msgSend_pcsKeyID(v10, v63, v64);
    objc_msgSend_setPcsKeyID_(v14, v66, v65);

    v69 = objc_msgSend_allPCSKeyIDs(v10, v67, v68);
    objc_msgSend_setAllPCSKeyIDs_(v14, v70, v69);

    v54 = objc_msgSend_zoneishKeyID(v10, v71, v72);
    objc_msgSend_setZoneishKeyID_(v14, v73, v54);
  }

  else
  {
  }

LABEL_11:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v74 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v80 = *(a1 + 32);
    v81 = v74;
    v84 = objc_msgSend_operationID(v80, v82, v83);
    v85 = 138543618;
    v86 = v84;
    v87 = 2112;
    v88 = v9;
    _os_log_debug_impl(&dword_22506F000, v81, OS_LOG_TYPE_DEBUG, "Sending record save completion to client for operation %{public}@ for recordID: %@", &v85, 0x16u);
  }

  v77 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v75, v76);
  objc_msgSend_handleSaveForRecordID_recordMetadata_error_(v77, v78, v9, v14, v11);

  objc_msgSend__broadcastUpdateIfNeededForRecord_recordXPCMetadata_recordID_isDeleted_error_(*(a1 + 40), v79, v10, v14, v9, 0, v11);
}

void sub_2251794B4(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    v15 = v7;
    v18 = objc_msgSend_operationID(v14, v16, v17);
    v19 = 138543618;
    v20 = v18;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Sending delete completion to client for operation %{public}@ for recordID: %@", &v19, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleDeleteForRecordID_error_(v11, v12, v5, v6);

  objc_msgSend__broadcastUpdateIfNeededForRecord_recordXPCMetadata_recordID_isDeleted_error_(*(a1 + 40), v13, 0, 0, v5, 1, v6);
}

void sub_225179630(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, char a8, double a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  v45 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v19 = a3;
  v20 = a5;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v26 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v35 = *(a1 + 32);
    v32 = v26;
    v36 = objc_msgSend_operationID(v35, v33, v34);
    *buf = 138543618;
    v42 = v36;
    v43 = 2112;
    v44 = v18;
    _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Sending upload completion to client for operation %{public}@ for recordID: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v30 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v28, v29);
  objc_msgSend_handleRecordUploadForRecordID_recordKey_arrayIndex_signature_size_paddedFileSize_uploaded_uploadReceipt_uploadReceiptExpiration_wrappedAssetKey_clearAssetKey_referenceSignature_(v30, v31, v18, v19, a4, v20, a6, a7, a9, a8, v21, v22, v23, v24);
}

void sub_225179968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225179988(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_userRecord(WeakRetained, v3, v4);
  v8 = objc_msgSend_recordID(v5, v6, v7);
  v11 = objc_msgSend_error(WeakRetained, v9, v10);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v12 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a1 + 32);
    v27 = v12;
    v30 = objc_msgSend_operationID(v26, v28, v29);
    v31 = 138543874;
    v32 = v30;
    v33 = 2112;
    v34 = v8;
    v35 = 2112;
    v36 = v11;
    _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Sending fetch completion to client for operation %{public}@ for recordID: %@ error: %@", &v31, 0x20u);
  }

  v15 = objc_msgSend_container(WeakRetained, v13, v14);
  v18 = objc_msgSend_options(v15, v16, v17);
  if (objc_msgSend_returnPCSMetadata(v18, v19, v20))
  {
    v21 = CKIsPCSError();

    if ((v21 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v5, v22, v23);
    }
  }

  else
  {
  }

  v24 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v22, v23);
  objc_msgSend_handleFetchForRecordID_record_error_(v24, v25, v8, v5, v11);
}

void sub_225179D74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_225179DB4(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  objc_msgSend_handleFetchForRecordID_didProgress_(v8, v9, v5, a3);
}

void sub_225179E30(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v27 = *(a1 + 32);
    v28 = v7;
    v31 = objc_msgSend_operationID(v27, v29, v30);
    v32 = 138543618;
    v33 = v31;
    v34 = 2112;
    v35 = v5;
    _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Sending record fetch command to client for operation %{public}@ for recordID: %@", &v32, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  v13 = objc_msgSend_objectForKeyedSubscript_(v6, v12, @"RecordKey");
  v15 = objc_msgSend_objectForKeyedSubscript_(v6, v14, @"ArrayIndex");
  v18 = objc_msgSend_integerValue(v15, v16, v17);
  v20 = objc_msgSend_objectForKeyedSubscript_(v6, v19, @"Data");
  v22 = objc_msgSend_objectForKeyedSubscript_(v6, v21, @"Offset");
  v25 = objc_msgSend_unsignedLongLongValue(v22, v23, v24);
  objc_msgSend_handleAssetDataForRecordID_recordKey_arrayIndex_data_offset_(v11, v26, v5, v13, v18, v20, v25);
}

void sub_22517A03C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a1 + 32);
    v26 = v11;
    v29 = objc_msgSend_operationID(v25, v27, v28);
    v30 = 138543874;
    v31 = v29;
    v32 = 2112;
    v33 = v8;
    v34 = 2112;
    v35 = v9;
    _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Sending record fetch completion to client for operation %{public}@ for recordID: %@ error: %@", &v30, 0x20u);
  }

  v14 = objc_msgSend_container(WeakRetained, v12, v13);
  v17 = objc_msgSend_options(v14, v15, v16);
  if (objc_msgSend_returnPCSMetadata(v17, v18, v19))
  {
    v20 = CKIsPCSError();

    if ((v20 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v7, v21, v22);
    }
  }

  else
  {
  }

  v23 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v21, v22);
  objc_msgSend_handleFetchForRecordID_record_error_(v23, v24, v8, v7, v9);
}

void sub_22517A590(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

void sub_22517A5F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a1 + 32);
    v26 = v11;
    v29 = objc_msgSend_operationID(v25, v27, v28);
    v32 = objc_msgSend_ckShortDescription(v7, v30, v31);
    v33 = 138543618;
    v34 = v29;
    v35 = 2112;
    v36 = v32;
    _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Sending record changed progress to client for operation %{public}@ for recordID: %@", &v33, 0x16u);
  }

  v14 = objc_msgSend_container(WeakRetained, v12, v13);
  v17 = objc_msgSend_options(v14, v15, v16);
  if (objc_msgSend_returnPCSMetadata(v17, v18, v19))
  {
    v20 = CKIsPCSError();

    if ((v20 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v8, v21, v22);
    }
  }

  else
  {
  }

  v23 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v21, v22);
  objc_msgSend_handleChangeForRecordID_record_error_(v23, v24, v7, v8, v9);
}

void sub_22517A7D4(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v17 = objc_msgSend_operationID(v13, v15, v16);
    v18 = 138543618;
    v19 = v17;
    v20 = 2112;
    v21 = v5;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending record deleted progress to client for operation %{public}@ for recordID: %@", &v18, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleDeleteForRecordID_recordType_(v11, v12, v5, v6);
}

void sub_22517A934(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = v4;
    v14 = objc_msgSend_operationID(v10, v12, v13);
    v17 = objc_msgSend_zoneID(v3, v15, v16);
    v18 = 138543618;
    v19 = v14;
    v20 = 2112;
    v21 = v17;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Sending zone attributes changed progress to client for operation %{public}@ for zoneID: %@", &v18, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  objc_msgSend_handleAttributesChangedForZone_(v8, v9, v3);
}

void sub_22517AA94(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v37 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v22 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v31 = *(a1 + 32);
    v28 = v22;
    v32 = objc_msgSend_operationID(v31, v29, v30);
    *buf = 138543618;
    v34 = v32;
    v35 = 2112;
    v36 = v16;
    _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Sending change token update progress to client for operation %{public}@ for zoneID: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v26 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v24, v25);
  objc_msgSend_handleChangeSetCompletionForRecordZoneID_serverChangeToken_clientChangeTokenData_recordChangesStatus_hasPendingArchivedRecords_syncObligationZoneIDs_error_reply_(v26, v27, v16, v17, v18, a5, a6, v19, v20, v21);
}

void sub_22517AC68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_hash(WeakRetained, v1, v2);
  kdebug_trace();
}

void sub_22517AF94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v6 - 112));
  _Unwind_Resume(a1);
}

void sub_22517AFF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a1 + 32);
    v26 = v11;
    v29 = objc_msgSend_operationID(v25, v27, v28);
    v32 = objc_msgSend_ckShortDescription(v7, v30, v31);
    v33 = 138543618;
    v34 = v29;
    v35 = 2112;
    v36 = v32;
    _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Sending record changed progress to client for operation %{public}@ for recordID: %@", &v33, 0x16u);
  }

  v14 = objc_msgSend_container(WeakRetained, v12, v13);
  v17 = objc_msgSend_options(v14, v15, v16);
  if (objc_msgSend_returnPCSMetadata(v17, v18, v19))
  {
    v20 = CKIsPCSError();

    if ((v20 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v8, v21, v22);
    }
  }

  else
  {
  }

  v23 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v21, v22);
  objc_msgSend_handleChangeForRecordID_record_error_(v23, v24, v7, v8, v9);
}

void sub_22517B1D4(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v17 = objc_msgSend_operationID(v13, v15, v16);
    v18 = 138543618;
    v19 = v17;
    v20 = 2112;
    v21 = v5;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending record deleted progress to client for operation %{public}@ for recordID: %@", &v18, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleDeleteForRecordID_(v11, v12, v5);
}

void sub_22517B330(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v37 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = v20;
  if (v19)
  {
    (*(v20 + 2))(v20, 0);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v22 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v28 = *(a1 + 32);
      v29 = v22;
      v32 = objc_msgSend_operationID(v28, v30, v31);
      v33 = 138543618;
      v34 = v32;
      v35 = 2112;
      v36 = v15;
      _os_log_debug_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEBUG, "Sending change token update progress to client for operation %{public}@ for zoneID: %@", &v33, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v26 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v24, v25);
    objc_msgSend_handleChangeSetCompletionWithServerChangeToken_clientChangeTokenData_recordChangesStatus_reply_(v26, v27, v16, v17, a5, v21);
  }
}

void sub_22517B508(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_hash(WeakRetained, v1, v2);
  kdebug_trace();
}

void sub_22517B564(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v22 = v2;
    v25 = objc_msgSend_operationID(WeakRetained, v23, v24);
    v28 = objc_msgSend_resultServerChangeToken(WeakRetained, v26, v27);
    v31 = objc_msgSend_resultClientChangeTokenData(WeakRetained, v29, v30);
    v34 = 138544130;
    v35 = v25;
    v36 = 2112;
    v37 = v28;
    v38 = 2112;
    v39 = v31;
    v40 = 2048;
    v41 = objc_msgSend_resultStatus(WeakRetained, v32, v33);
    _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Sending completion for operation %{public}@ with server change token %@, client change token date %@, record changes status %ld", &v34, 0x2Au);
  }

  v5 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v3, v4);
  v8 = objc_msgSend_resultServerChangeToken(WeakRetained, v6, v7);
  v11 = objc_msgSend_resultClientChangeTokenData(WeakRetained, v9, v10);
  v14 = objc_msgSend_resultStatus(WeakRetained, v12, v13);
  v17 = objc_msgSend_operationMetrics(WeakRetained, v15, v16);
  v20 = objc_msgSend_error(WeakRetained, v18, v19);
  objc_msgSend_handleOperationDidCompleteWithServerChangeToken_clientChangeTokenData_recordChangesStatus_metrics_error_(v5, v21, v8, v11, v14, v17, v20);
}

void sub_22517B97C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_22517B9BC(uint64_t a1, void *a2, double a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    v13 = v6;
    v16 = objc_msgSend_operationID(v12, v14, v15);
    v17 = 138543362;
    v18 = v16;
    _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Sending record move progress to client for operation %{public}@", &v17, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v8, v9);
  objc_msgSend_handleRecordModificationForRecordID_didProgress_(v10, v11, v5, a3);
}

void sub_22517BB04(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v111 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a4;
  v106 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17 = objc_opt_new();
  v18 = objc_opt_new();
  v21 = objc_msgSend_etag(v12, v19, v20);
  objc_msgSend_setEtag_(v17, v22, v21);

  v25 = objc_msgSend_creationDate(v12, v23, v24);
  objc_msgSend_setCreationDate_(v17, v26, v25);

  v29 = objc_msgSend_modificationDate(v12, v27, v28);
  objc_msgSend_setModificationDate_(v17, v30, v29);

  objc_msgSend_setServerRecord_(v17, v31, v15);
  v34 = objc_msgSend_etag(v13, v32, v33);
  objc_msgSend_setEtag_(v18, v35, v34);

  v38 = objc_msgSend_creationDate(v13, v36, v37);
  objc_msgSend_setCreationDate_(v18, v39, v38);

  v42 = objc_msgSend_modificationDate(v13, v40, v41);
  objc_msgSend_setModificationDate_(v18, v43, v42);

  objc_msgSend_setServerRecord_(v18, v44, v13);
  v47 = objc_msgSend_container(WeakRetained, v45, v46);
  v50 = objc_msgSend_entitlements(v47, v48, v49);
  hasProtectionDataEntitlement = objc_msgSend_hasProtectionDataEntitlement(v50, v51, v52);

  if (hasProtectionDataEntitlement)
  {
    v56 = objc_msgSend_protectionData(v12, v54, v55);
    objc_msgSend_setProtectionData_(v17, v57, v56);

    v60 = objc_msgSend_protectionData(v13, v58, v59);
    objc_msgSend_setProtectionData_(v18, v61, v60);
  }

  v62 = objc_msgSend_container(WeakRetained, v54, v55);
  v65 = objc_msgSend_options(v62, v63, v64);
  if (objc_msgSend_returnPCSMetadata(v65, v66, v67))
  {
    v68 = CKIsPCSError();

    if (v68)
    {
      goto LABEL_8;
    }

    objc_msgSend_fillOutPCSMetadataInfo(v12, v69, v70);
    v73 = objc_msgSend_pcsKeyID(v12, v71, v72);
    objc_msgSend_setPcsKeyID_(v17, v74, v73);

    v77 = objc_msgSend_allPCSKeyIDs(v12, v75, v76);
    objc_msgSend_setAllPCSKeyIDs_(v17, v78, v77);

    v81 = objc_msgSend_zoneishKeyID(v12, v79, v80);
    objc_msgSend_setZoneishKeyID_(v17, v82, v81);

    objc_msgSend_fillOutPCSMetadataInfo(v13, v83, v84);
    v87 = objc_msgSend_pcsKeyID(v13, v85, v86);
    objc_msgSend_setPcsKeyID_(v18, v88, v87);

    v91 = objc_msgSend_allPCSKeyIDs(v13, v89, v90);
    objc_msgSend_setAllPCSKeyIDs_(v18, v92, v91);

    v62 = objc_msgSend_zoneishKeyID(v13, v93, v94);
    objc_msgSend_setZoneishKeyID_(v18, v95, v62);
  }

  else
  {
  }

LABEL_8:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v96 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v101 = *(v106 + 32);
    v102 = v96;
    v105 = objc_msgSend_operationID(v101, v103, v104);
    *buf = 138543618;
    v108 = v105;
    v109 = 2112;
    v110 = v11;
    _os_log_debug_impl(&dword_22506F000, v102, OS_LOG_TYPE_DEBUG, "Sending record move completion to client for operation %{public}@ for recordID: %@", buf, 0x16u);
  }

  v99 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v97, v98);
  objc_msgSend_handleMoveForSourceRecordID_destinationMetadata_moveMarkerMetadata_error_(v99, v100, v11, v17, v18, v14);
}

void sub_22517BF38(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, char a8, double a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  v45 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v19 = a3;
  v20 = a5;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v26 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v35 = *(a1 + 32);
    v32 = v26;
    v36 = objc_msgSend_operationID(v35, v33, v34);
    *buf = 138543618;
    v42 = v36;
    v43 = 2112;
    v44 = v18;
    _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Sending upload completion to client for operation %{public}@ for recordID: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v30 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v28, v29);
  objc_msgSend_handleRecordUploadForRecordID_recordKey_arrayIndex_signature_size_paddedFileSize_uploaded_uploadReceipt_uploadReceiptExpiration_wrappedAssetKey_clearAssetKey_referenceSignature_(v30, v31, v18, v19, a4, v20, a6, a7, a9, a8, v21, v22, v23, v24);
}

void sub_22517C344(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_22517C380(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    v17 = v10;
    v20 = objc_msgSend_operationID(v16, v18, v19);
    v23 = objc_msgSend_recordID(v8, v21, v22);
    v24 = 138543618;
    v25 = v20;
    v26 = 2112;
    v27 = v23;
    _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Sending record fetch completion for operation %{public}@ with record: %@", &v24, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v12, v13);
  objc_msgSend_handleQueryDidFetchForRecordID_record_error_(v14, v15, v7, v8, v9);
}

void sub_22517C510(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v17 = objc_msgSend_operationID(v13, v15, v16);
    v18 = 138543618;
    v19 = v17;
    v20 = 2112;
    v21 = v5;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending query cursor update progress to client for operation %{public}@ with cursor: %@", &v18, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleQueryDidFetchCursor_reply_(v11, v12, v5, v6);
}

void sub_22517C670(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v16 = v2;
    v19 = objc_msgSend_operationID(WeakRetained, v17, v18);
    v22 = objc_msgSend_resultsCursor(WeakRetained, v20, v21);
    v23 = 138543618;
    v24 = v19;
    v25 = 2112;
    v26 = v22;
    _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Sending completion for operation %{public}@ with cursor %@", &v23, 0x16u);
  }

  v5 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v3, v4);
  v8 = objc_msgSend_resultsCursor(WeakRetained, v6, v7);
  v11 = objc_msgSend_operationMetrics(WeakRetained, v9, v10);
  v14 = objc_msgSend_error(WeakRetained, v12, v13);
  objc_msgSend_handleOperationDidCompleteWithCursor_metrics_error_(v5, v15, v8, v11, v14);
}

void sub_22517C9B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_22517C9E0(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v17 = objc_msgSend_operationID(v13, v15, v16);
    v18 = 138543618;
    v19 = v17;
    v20 = 2112;
    v21 = v5;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending save completion to client for operation %{public}@ for subscription ID: %@", &v18, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleSubscriptionSaveForSubscriptionID_error_(v11, v12, v5, v6);
}

void sub_22517CB40(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v17 = objc_msgSend_operationID(v13, v15, v16);
    v18 = 138543618;
    v19 = v17;
    v20 = 2112;
    v21 = v5;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending delete completion to client for operation %{public}@ for subscription ID: %@", &v18, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleSubscriptionDeleteForSubscriptionID_error_(v11, v12, v5, v6);
}

void sub_22517CDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517CDF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    v17 = v10;
    v20 = objc_msgSend_operationID(v16, v18, v19);
    v21 = 138543618;
    v22 = v20;
    v23 = 2112;
    v24 = v8;
    _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Sending fetch subscription progress to client for operation %{public}@ for subscription ID: %@", &v21, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v12, v13);
  objc_msgSend_handleSubscriptionFetchForSubscriptionID_subscription_error_(v14, v15, v8, v7, v9);
}

void sub_22517D094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517D0B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    v17 = v10;
    v20 = objc_msgSend_operationID(v16, v18, v19);
    v21 = 138543618;
    v22 = v20;
    v23 = 2112;
    v24 = v7;
    _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Sending accept share progress to client for operation %{public}@ for url: %@", &v21, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v12, v13);
  objc_msgSend_handleShareAcceptanceForURL_share_error_(v14, v15, v7, v8, v9);
}

void sub_22517D358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517D378(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v17 = objc_msgSend_operationID(v13, v15, v16);
    v18 = 138543618;
    v19 = v17;
    v20 = 2112;
    v21 = v5;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending decline share progress to client for operation %{public}@ for url: %@", &v18, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleShareDeclineForURL_error_(v11, v12, v5, v6);
}

void sub_22517D608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517D628(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v17 = objc_msgSend_operationID(v13, v15, v16);
    v18 = 138543618;
    v19 = v17;
    v20 = 2112;
    v21 = v5;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending share access request progress to client for operation %{public}@ for url: %@", &v18, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleShareAccessRequestForURL_error_(v11, v12, v5, v6);
}

void sub_22517D8C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517D8E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    v17 = v10;
    v20 = objc_msgSend_operationID(v16, v18, v19);
    v21 = 138543618;
    v22 = v20;
    v23 = 2112;
    v24 = v7;
    _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Sending share metadata progress to client for operation %{public}@ for url: %@", &v21, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v12, v13);
  objc_msgSend_handleShareMetadataFetchForURL_shareMetadata_error_(v14, v15, v7, v8, v9);
}

void sub_22517DB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517DBA8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 32);
    v20 = v13;
    v23 = objc_msgSend_operationID(v19, v21, v22);
    v24 = 138543618;
    v25 = v23;
    v26 = 2112;
    v27 = v9;
    _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Sending bundleIDs mapping progress to client for operation %{public}@ for url: %@", &v24, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v15, v16);
  objc_msgSend_handleBundleIDsFetchedForURL_appBundleIDs_daemonBundleIDs_error_(v17, v18, v9, v10, v11, v12);
}

void sub_22517DE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517DE68(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v16 = v2;
    v19 = objc_msgSend_operationID(WeakRetained, v17, v18);
    v22 = objc_msgSend_webAuthToken(WeakRetained, v20, v21);
    v23 = 138543618;
    v24 = v19;
    v25 = 2112;
    v26 = v22;
    _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Sending completion for operation %{public}@ with web auth token %@", &v23, 0x16u);
  }

  v5 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v3, v4);
  v8 = objc_msgSend_webAuthToken(WeakRetained, v6, v7);
  v11 = objc_msgSend_operationMetrics(WeakRetained, v9, v10);
  v14 = objc_msgSend_error(WeakRetained, v12, v13);
  objc_msgSend_handleOperationDidCompleteWithWebAuthToken_metrics_error_(v5, v15, v8, v11, v14);
}

void sub_22517E0B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_account(*(a1 + 32), a2, a3);
  v7 = v4;
  if (!v4 || objc_msgSend_accountType(v4, v5, v6) == 1)
  {
    v9 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v5, *MEMORY[0x277CBC120], 1002, @"This requires an authenticated account");
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, 0, 0, 0, v9);
    }

    goto LABEL_16;
  }

  if (*(a1 + 40))
  {
    v9 = objc_msgSend_primaryEmail(v7, v5, v8);
    v13 = objc_msgSend_formattedUsername(v7, v11, v12);
    v16 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v14, v15);
    if (objc_msgSend_isAppleInternalInstall(v16, v17, v18))
    {
      v21 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v19, v20);
      v24 = objc_msgSend_containerIdentifierToEmailOverrides(v21, v22, v23);
      v27 = objc_msgSend_count(v24, v25, v26);

      if (!v27)
      {
LABEL_15:
        v45 = *(a1 + 40);
        v46 = objc_msgSend_fullName(v7, v28, v29);
        (*(v45 + 16))(v45, v46, v9, v13, 0);

LABEL_16:
        goto LABEL_17;
      }

      v30 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v28, v29);
      v33 = objc_msgSend_containerIdentifierToEmailOverrides(v30, v31, v32);
      v36 = objc_msgSend_containerID(*(a1 + 32), v34, v35);
      v39 = objc_msgSend_containerIdentifier(v36, v37, v38);
      v16 = objc_msgSend_objectForKey_(v33, v40, v39);

      if (objc_msgSend_length(v16, v41, v42))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v43 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v47 = *(a1 + 32);
          v48 = v43;
          v51 = objc_msgSend_containerID(v47, v49, v50);
          v54 = objc_msgSend_containerIdentifier(v51, v52, v53);
          v55 = 138412546;
          v56 = v16;
          v57 = 2112;
          v58 = v54;
          _os_log_debug_impl(&dword_22506F000, v48, OS_LOG_TYPE_DEBUG, "Returning override user email %@ for container %@", &v55, 0x16u);
        }

        v44 = v16;

        v9 = v44;
        v13 = v9;
      }
    }

    goto LABEL_15;
  }

LABEL_17:
}

void sub_22517E4F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pendingOperationIDs(*(a1 + 32), a2, a3);
  objc_sync_enter(v4);
  v7 = objc_msgSend_pendingOperationIDs(*(a1 + 32), v5, v6);
  objc_msgSend_removeAllObjects(v7, v8, v9);

  objc_sync_exit(v4);
  v12 = objc_msgSend_cancellationQueue(*(a1 + 32), v10, v11);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22517E5E0;
  v13[3] = &unk_278547970;
  v13[4] = *(a1 + 32);
  v14 = *(a1 + 40);
  dispatch_async(v12, v13);
}

uint64_t sub_22517E5E0(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v52 = *(a1 + 32);
    *buf = 138412290;
    v59 = v52;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "Cancelling all operations for %@", buf, 0xCu);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v5 = objc_msgSend_sharedClientThrottlingOperationQueue(CKDContainer, v3, v4, 0);
  v8 = objc_msgSend_operations(v5, v6, v7);

  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v53, v57, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v54;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v54 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v53 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v14;
          v19 = objc_msgSend_container(v16, v17, v18);
          v20 = *(a1 + 32);

          if (*(a1 + 40) == 1)
          {
            if (v19 != v20 || (objc_msgSend_isAnonymous(v16, v21, v22) & 1) != 0)
            {
              goto LABEL_17;
            }

LABEL_16:
            objc_msgSend_cancel(v16, v21, v22);
          }

          else if (v19 == v20)
          {
            goto LABEL_16;
          }

LABEL_17:

          continue;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v53, v57, 16);
    }

    while (v11);
  }

  v23 = *(a1 + 40);
  v26 = objc_msgSend_cloudKitSupportOperationThrottleQueue(*(a1 + 32), v24, v25);
  v29 = v26;
  if (v23 == 1)
  {
    objc_msgSend_cancelAllAccountScopedOperations(v26, v27, v28);

    v32 = objc_msgSend_backgroundOperationThrottleQueue(*(a1 + 32), v30, v31);
    objc_msgSend_cancelAllAccountScopedOperations(v32, v33, v34);

    v37 = objc_msgSend_operationQueue(*(a1 + 32), v35, v36);
    objc_msgSend_cancelAllAccountScopedOperations(v37, v38, v39);
  }

  else
  {
    objc_msgSend_cancelAllOperations(v26, v27, v28);

    v42 = objc_msgSend_backgroundOperationThrottleQueue(*(a1 + 32), v40, v41);
    objc_msgSend_cancelAllOperations(v42, v43, v44);

    v37 = objc_msgSend_operationQueue(*(a1 + 32), v45, v46);
    objc_msgSend_cancelAllOperations(v37, v47, v48);
  }

  return objc_msgSend_cancelAllOperations(*(*(a1 + 32) + 408), v49, v50);
}

void sub_22517E960(id *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pendingOperationIDs(a1[4], a2, a3);
  objc_sync_enter(v4);
  v7 = objc_msgSend_pendingOperationIDs(a1[4], v5, v6);
  objc_msgSend_removeObject_(v7, v8, a1[5]);

  objc_sync_exit(v4);
  v11 = objc_msgSend_cancellationQueue(a1[4], v9, v10);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22517EA70;
  block[3] = &unk_278546C30;
  v12 = a1[5];
  v13 = a1[4];
  v15 = v12;
  v16 = v13;
  v17 = a1[6];
  dispatch_async(v11, block);
}

void sub_22517EA70(uint64_t a1, const char *a2, uint64_t a3)
{
  v103 = *MEMORY[0x277D85DE8];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v4 = objc_msgSend_sharedClientThrottlingOperationQueue(CKDContainer, a2, a3);
  v7 = objc_msgSend_operations(v4, v5, v6);

  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v95, v102, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v96;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v96 != v13)
      {
        objc_enumerationMutation(v7);
      }

      v15 = *(*(&v95 + 1) + 8 * v14);
      v16 = objc_msgSend_operationID(v15, v10, v11);
      isEqualToString = objc_msgSend_isEqualToString_(v16, v17, *(a1 + 32));

      if (isEqualToString)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v95, v102, 16);
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v21 = v15;

    if (v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_9:
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v22 = objc_msgSend_cloudKitSupportOperationThrottleQueue(*(a1 + 40), v19, v20);
  v25 = objc_msgSend_operations(v22, v23, v24);

  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v91, v101, 16);
  if (v27)
  {
    v30 = v27;
    v31 = *v92;
LABEL_13:
    v32 = 0;
    while (1)
    {
      if (*v92 != v31)
      {
        objc_enumerationMutation(v25);
      }

      v33 = *(*(&v91 + 1) + 8 * v32);
      v34 = objc_msgSend_operationID(v33, v28, v29);
      v36 = objc_msgSend_isEqualToString_(v34, v35, *(a1 + 32));

      if (v36)
      {
        break;
      }

      if (v30 == ++v32)
      {
        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v91, v101, 16);
        if (v30)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

    v21 = v33;

    if (v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_19:
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v37 = objc_msgSend_backgroundOperationThrottleQueue(*(a1 + 40), v19, v20);
  v40 = objc_msgSend_operations(v37, v38, v39);

  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v87, v100, 16);
  if (v42)
  {
    v45 = v42;
    v46 = *v88;
LABEL_23:
    v47 = 0;
    while (1)
    {
      if (*v88 != v46)
      {
        objc_enumerationMutation(v40);
      }

      v48 = *(*(&v87 + 1) + 8 * v47);
      v49 = objc_msgSend_operationID(v48, v43, v44);
      v51 = objc_msgSend_isEqualToString_(v49, v50, *(a1 + 32));

      if (v51)
      {
        break;
      }

      if (v45 == ++v47)
      {
        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v43, &v87, v100, 16);
        if (v45)
        {
          goto LABEL_23;
        }

        goto LABEL_29;
      }
    }

    v21 = v48;

    if (v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_29:
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v52 = objc_msgSend_operationQueue(*(a1 + 40), v19, v20);
  v55 = objc_msgSend_operations(v52, v53, v54);

  v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v83, v99, 16);
  if (v57)
  {
    v58 = v57;
    v59 = *v84;
LABEL_33:
    v60 = 0;
    while (1)
    {
      if (*v84 != v59)
      {
        objc_enumerationMutation(v55);
      }

      v61 = *(*(&v83 + 1) + 8 * v60);
      if (objc_opt_respondsToSelector())
      {
        v64 = objc_msgSend_operationID(v61, v62, v63);
        v66 = objc_msgSend_isEqualToString_(v64, v65, *(a1 + 32));

        if (v66)
        {
          break;
        }
      }

      if (v58 == ++v60)
      {
        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v62, &v83, v99, 16);
        if (v58)
        {
          goto LABEL_33;
        }

        goto LABEL_40;
      }
    }

    v21 = v61;

    if (!v21)
    {
      goto LABEL_43;
    }

LABEL_42:
    objc_msgSend_cancel(v21, v19, v20);
  }

  else
  {
LABEL_40:

    v21 = 0;
  }

LABEL_43:
  v67 = dispatch_group_create();
  dispatch_group_enter(v67);
  v68 = CKGetGlobalQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22517EFA4;
  block[3] = &unk_2785456A0;
  v82 = *(a1 + 48);
  dispatch_group_notify(v67, v68, block);

  v71 = objc_msgSend_processScopedClientProxy(*(a1 + 40), v69, v70);
  v74 = objc_msgSend_clientConnection(v71, v72, v73);

  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = sub_22517EFBC;
  v78[3] = &unk_278547998;
  v75 = *(a1 + 32);
  v78[4] = *(a1 + 40);
  v79 = v67;
  v80 = v75;
  v76 = v67;
  objc_msgSend_enumerateContainersWithOptions_usingBlock_(v74, v77, 4, v78);
  dispatch_group_leave(v76);
}

uint64_t sub_22517EFA4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_22517EFBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 32) != v3)
  {
    v7 = objc_msgSend_processScopedClientProxy(v3, v4, v5);

    if (!v7)
    {
      dispatch_group_enter(*(a1 + 40));
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_22517F08C;
      v10[3] = &unk_278545A00;
      v8 = *(a1 + 48);
      v11 = *(a1 + 40);
      objc_msgSend_cancelOperationWithIdentifier_completionHandler_(v6, v9, v8, v10);
    }
  }
}

void sub_22517F1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22517F218(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_sandboxExtensions(WeakRetained, v3, v4);
  v8 = objc_msgSend_count(v5, v6, v7);

  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Sending sandbox extensions to client...", v15, 2u);
    }

    v12 = *(a1 + 32);
    v13 = objc_msgSend_sandboxExtensions(WeakRetained, v10, v11);
    objc_msgSend_consumeSandboxExtensions_reply_(v12, v14, v13, &unk_28385CCC0);
  }
}

void sub_22517F318(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v3 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Error sending sandbox extensions to client: %@", &v4, 0xCu);
    }
  }
}

void sub_225180530(_Unwind_Exception *a1)
{
  objc_destroyWeak((v6 + 40));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v7 - 112));
  _Unwind_Resume(a1);
}

void sub_2251805A0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v14, v15);
  if (v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  if (v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = MEMORY[0x277CBEBF8];
  }

  if (v10)
  {
    v19 = v10;
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2251806D4;
  v22[3] = &unk_278547A00;
  v23 = v9;
  v20 = v9;
  objc_msgSend_handleReplaceLocalWithWireSerializations_encryptedMasterKeys_wireEnvelopes_reply_(v16, v21, v17, v18, v19, v22);
}

void sub_2251806D4(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "After replacing record archives, client returned serialized request: %@", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2251807E8(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Asking client to deserialize initial response: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_22518096C;
  v14[3] = &unk_278547A50;
  v15 = v6;
  v12 = v6;
  objc_msgSend_handleInitialResponseReceived_reply_(v11, v13, v5, v14);
}

void sub_22518096C(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "After deserializing initial response, client returned wire serializations: %@", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_225180A80(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Asking client to replace wire transport blobs: %@", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  v10 = v8;
  if (v3)
  {
    objc_msgSend_handleReplaceWireSerializationsWithRecords_(v8, v9, v3);
  }

  else
  {
    objc_msgSend_handleReplaceWireSerializationsWithRecords_(v8, v9, MEMORY[0x277CBEBF8]);
  }
}

void sub_225180BA0(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  objc_msgSend_handleFetchForRecordID_didProgress_(v8, v9, v5, a3);
}

void sub_225180C1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v5, v10, @"RecordKey");
  v13 = objc_msgSend_objectForKeyedSubscript_(v5, v12, @"ArrayIndex");
  v16 = objc_msgSend_integerValue(v13, v14, v15);
  v18 = objc_msgSend_objectForKeyedSubscript_(v5, v17, @"Data");
  v20 = objc_msgSend_objectForKeyedSubscript_(v5, v19, @"Offset");

  v23 = objc_msgSend_unsignedLongLongValue(v20, v21, v22);
  objc_msgSend_handleAssetDataForRecordID_recordKey_arrayIndex_data_offset_(v9, v24, v6, v11, v16, v18, v23);
}

void sub_225180D54(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a1 + 32);
    v26 = v11;
    v29 = objc_msgSend_operationID(v25, v27, v28);
    v30 = 138543874;
    v31 = v29;
    v32 = 2112;
    v33 = v8;
    v34 = 2112;
    v35 = v9;
    _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Sending record fetch completion to client for operation %{public}@ for recordID: %@ error: %@", &v30, 0x20u);
  }

  v14 = objc_msgSend_container(WeakRetained, v12, v13);
  v17 = objc_msgSend_options(v14, v15, v16);
  if (objc_msgSend_returnPCSMetadata(v17, v18, v19))
  {
    v20 = CKIsPCSError();

    if ((v20 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v7, v21, v22);
    }
  }

  else
  {
  }

  v23 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v21, v22);
  objc_msgSend_handleFetchForRecordID_record_error_(v23, v24, v8, v7, v9);
}

void sub_2251811B8(uint64_t a1, const char *a2)
{
  v15 = objc_msgSend_CKStatusReportArrayIncludingSharedOperations_(*(a1 + 40), a2, *(a1 + 32) == 0);
  if (v15)
  {
    if (*(a1 + 32))
    {
      v4 = objc_autoreleasePoolPush();
      v5 = MEMORY[0x277CCACA8];
      v7 = objc_msgSend_CKComponentsAndSubcomponentsJoinedByString_(v15, v6, @"\n");
      v9 = objc_msgSend_stringWithFormat_(v5, v8, @"%@", v7);

      v10 = *(a1 + 32);
      v12 = objc_msgSend_dataUsingEncoding_(v9, v11, 4);
      objc_msgSend_writeData_(v10, v13, v12);

      objc_autoreleasePoolPop(v4);
    }

    else
    {
      objc_msgSend__dumpStatusReportArrayToOsTrace_(*(a1 + 40), v3, v15);
    }
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, 0);
  }
}

void sub_225181540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_225181560(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "Daemon submitted CKEventMetric %@.", &v7, 0xCu);
  }

  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_22518207C(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, v5, v6);
  v9 = objc_msgSend_containerWithAppContainerAccountTuple_deviceContext_sharedContainerTable_(CKDContainer, v8, v3, v7, 0);

  v24 = 0;
  LOBYTE(v7) = objc_msgSend_setupAssetTransfers_(v9, v10, &v24);
  v13 = v24;
  if ((v7 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v26 = v13;
      _os_log_debug_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEBUG, "MMCS setup failed:%@", buf, 0xCu);
    }

    __assert_rtn("[CKDContainer showAssetCache]_block_invoke", "CKDContainer.m", 3895, "0 && no container.MMCS");
  }

  v14 = objc_msgSend_MMCS(v9, v11, v12);

  if (!v14)
  {
    v17 = objc_msgSend_MMCS(v9, v15, v16);
    if (!v17)
    {
      __assert_rtn("[CKDContainer showAssetCache]_block_invoke", "CKDContainer.m", 3897, "container.MMCS && no container.MMCS");
    }
  }

  v18 = objc_msgSend_MMCS(v9, v15, v16);
  v21 = objc_msgSend_assetCache(v18, v19, v20);

  objc_msgSend_showAssetCacheInContainer_(v21, v22, *(a1 + 32));
  objc_autoreleasePoolPop(v4);
}

void sub_225182844(void *a1, const char *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = objc_msgSend_operations(a1, a2, a3, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v15, v19, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          if ((objc_msgSend_isAnonymous(v9, v10, v11) & 1) == 0)
          {
            objc_msgSend_cancel(v9, v12, v13);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v14, &v15, v19, 16);
    }

    while (v6);
  }
}

void sub_225182A40(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v10 = objc_msgSend_directoryContext(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_frameworkCachesDirectory(v10, v4, v5);
  v9 = objc_msgSend_path(v6, v7, v8);
  (*(v3 + 16))(v3, v9, 0);
}

void sub_225182BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225182C18(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v34 = *(a1 + 32);
    v35 = v13;
    v38 = objc_msgSend_operationID(v34, v36, v37);
    *buf = 138543618;
    v45 = v38;
    v46 = 2112;
    v47 = v9;
    _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Sending archived record progress to client for operation %{public}@ for recordID: %@", buf, 0x16u);
  }

  v16 = objc_msgSend_container(WeakRetained, v14, v15);
  v19 = objc_msgSend_options(v16, v17, v18);
  if (!objc_msgSend_returnPCSMetadata(v19, v20, v21))
  {

LABEL_16:
    goto LABEL_17;
  }

  v22 = CKIsPCSError();

  if ((v22 & 1) == 0)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v16 = v10;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v25, &v39, v43, 16);
    if (v26)
    {
      v29 = v26;
      v30 = *v40;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v40 != v30)
          {
            objc_enumerationMutation(v16);
          }

          objc_msgSend_fillOutPCSMetadataInfo(*(*(&v39 + 1) + 8 * i), v27, v28, v39);
        }

        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v27, &v39, v43, 16);
      }

      while (v29);
    }

    goto LABEL_16;
  }

LABEL_17:
  v32 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v23, v24, v39);
  objc_msgSend_handleFetchForRecordID_isDeleted_versions_error_(v32, v33, v9, a3, v10, v11);
}

void sub_225183084(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_2251830C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a1 + 32);
    v26 = v11;
    v29 = objc_msgSend_operationID(v25, v27, v28);
    v30 = 138543618;
    v31 = v29;
    v32 = 2112;
    v33 = v7;
    _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Sending archived record progress to client for operation %{public}@ for recordID: %@", &v30, 0x16u);
  }

  v14 = objc_msgSend_container(WeakRetained, v12, v13);
  v17 = objc_msgSend_options(v14, v15, v16);
  if (objc_msgSend_returnPCSMetadata(v17, v18, v19))
  {
    v20 = CKIsPCSError();

    if ((v20 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v8, v21, v22);
    }
  }

  else
  {
  }

  v23 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v21, v22);
  objc_msgSend_handleFetchForRecordID_record_error_(v23, v24, v7, v8, v9);
}

void sub_225183294(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v21 = *(a1 + 32);
    v22 = v15;
    v25 = objc_msgSend_operationID(v21, v23, v24);
    v26 = 138543618;
    v27 = v25;
    v28 = 2112;
    v29 = v11;
    _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Sending change token update progress to client for operation %{public}@ for zoneID: %@", &v26, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v19 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v17, v18);
  objc_msgSend_handleChangeSetCompletionForRecordZoneID_serverChangeToken_archivedRecordStatus_error_reply_(v19, v20, v11, v12, a4, v13, v14);
}

void sub_22518342C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_hash(WeakRetained, v1, v2);
  kdebug_trace();
}

void sub_2251835B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251835D8(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v17 = objc_msgSend_operationID(v13, v15, v16);
    v18 = 138543618;
    v19 = v17;
    v20 = 2112;
    v21 = v5;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending archive record progress to client for operation %{public}@ for recordID: %@", &v18, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleRecordArchivalForRecordID_error_(v11, v12, v5, v6);
}

void sub_225183868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225183888(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 32);
    v20 = v13;
    v23 = objc_msgSend_operationID(v19, v21, v22);
    v24 = 138543618;
    v25 = v23;
    v26 = 2112;
    v27 = v9;
    _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Sending asset published progress to client for operation %{public}@ with recordID: %@", &v24, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v15, v16);
  objc_msgSend_handleAssetPublishCompletionForRecordID_publishedAsset_recordKey_error_(v17, v18, v9, v11, v10, v12);
}

void sub_225183B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225183B68(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v8 = objc_msgSend_repairZoneRecordID(a2, v6, v7);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 32);
    v16 = v9;
    v19 = objc_msgSend_operationID(v15, v17, v18);
    v20 = 138543618;
    v21 = v19;
    v22 = 2112;
    v23 = v8;
    _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Sending asset repair progress to client for operation %{public}@ with recordID: %@", &v20, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v11, v12);
  objc_msgSend_handleAssetRepairCompletionForRecordID_error_(v13, v14, v8, v5);
}

void sub_225183E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225183E20(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v17 = objc_msgSend_operationID(v13, v15, v16);
    v18 = 138543618;
    v19 = v17;
    v20 = 2112;
    v21 = v5;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending mark asset broken progress to client for operation %{public}@ with recordID: %@", &v18, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleMarkAssetBrokenCompletionWithRepairRecordID_error_(v11, v12, v5, v6);
}

void sub_225184128(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_225184158(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 32);
    v20 = v13;
    v23 = objc_msgSend_operationID(v19, v21, v22);
    v24 = 138543618;
    v25 = v23;
    v26 = 2112;
    v27 = v9;
    _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Sending record web sharing progress to client for operation %{public}@ for recordID: %@", &v24, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v15, v16);
  objc_msgSend_handleWebSharingInitiationForRecordID_sharingKey_baseSharingToken_error_(v17, v18, v9, v10, v11, v12);
}

void sub_2251842E8(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v17 = objc_msgSend_operationID(v13, v15, v16);
    v18 = 138543618;
    v19 = v17;
    v20 = 2112;
    v21 = v5;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending record web unsharing progress to client for operation %{public}@ for recordID: %@", &v18, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleWebSharingRevocationForRecordID_error_(v11, v12, v5, v6);
}

void sub_2251844FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_pcsManager(*(a1 + 32), a2, a3);
  v27 = 0;
  RandomSharingIdentityWithError = objc_msgSend_createRandomSharingIdentityWithError_(v4, v5, &v27);
  v7 = v27;

  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = RandomSharingIdentityWithError == 0;
  }

  if (v10)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      v29 = v12;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Warn: Couldn't create a web sharing identity for client %@: %@", buf, 0x16u);
    }

    if (RandomSharingIdentityWithError)
    {
      CFRelease(RandomSharingIdentityWithError);
    }

    v13 = 0;
  }

  else
  {
    v14 = objc_msgSend_pcsManager(*(a1 + 32), v8, v9);
    v26 = 0;
    v16 = objc_msgSend_dataFromSharingIdentity_error_(v14, v15, RandomSharingIdentityWithError, &v26);
    v7 = v26;

    v17 = *MEMORY[0x277CBC878];
    v18 = *MEMORY[0x277CBC880];
    if (v7 || !v16)
    {
      if (v18 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v17);
      }

      v23 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v24 = *(a1 + 32);
        *buf = 138412802;
        v29 = v24;
        v30 = 2112;
        v31 = v7;
        v32 = 2112;
        v33 = RandomSharingIdentityWithError;
        _os_log_impl(&dword_22506F000, v23, OS_LOG_TYPE_INFO, "Warn: Couldn't convert web sharing identity to data for client %@: %@ (identity was %@)", buf, 0x20u);
      }

      v13 = 0;
    }

    else
    {
      if (v18 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v17);
      }

      v19 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v20 = *(a1 + 32);
        *buf = 138412546;
        v29 = v20;
        v30 = 2112;
        v31 = RandomSharingIdentityWithError;
        _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_INFO, "Successfully created a web sharing identity for %@: %@", buf, 0x16u);
      }

      v21 = objc_alloc(MEMORY[0x277CBC2E8]);
      v13 = objc_msgSend_initWithData_(v21, v22, v16);
    }

    CFRelease(RandomSharingIdentityWithError);
  }

  v25 = *(a1 + 40);
  if (v25)
  {
    (*(v25 + 16))(v25, v13, v7);
  }
}

void sub_225184874(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v8 = objc_msgSend_data(a2, v6, v7);
    (*(v3 + 16))(v3, v8, v5);
  }
}

void sub_225184A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225184A44(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v7, v8);
  objc_msgSend_handleSerialization_error_(v9, v10, v6, v5);
}

void sub_225184BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225184C08(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v10, v11);
  objc_msgSend_handleDeserializationOfSaves_deletes_error_(v12, v13, v9, v8, v7);
}

void sub_225184E4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_225184E7C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 32);
    v20 = v13;
    v23 = objc_msgSend_operationID(v19, v21, v22);
    v24 = 138543618;
    v25 = v23;
    v26 = 2112;
    v27 = v9;
    _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Sending record access grant progress to client for operation %{public}@ for recordID: %@", &v24, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v17 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v15, v16);
  objc_msgSend_handleRecordAccessInitiationForRecordID_accessToken_referenceIdentifier_error_(v17, v18, v9, v10, v11, v12);
}

void sub_22518500C(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    v14 = v7;
    v17 = objc_msgSend_operationID(v13, v15, v16);
    v18 = 138543618;
    v19 = v17;
    v20 = 2112;
    v21 = v5;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Sending record access revoke progress to client for operation %{public}@ for recordID: %@", &v18, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
  objc_msgSend_handleRecordAccessRevocationForRecordID_error_(v11, v12, v5, v6);
}

void sub_225185314(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_225185344(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = v4;
    v14 = objc_msgSend_operationID(v10, v12, v13);
    v15 = 138543618;
    v16 = v14;
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Sending vetting completion progress to client for operation %{public}@ for url: %@", &v15, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  objc_msgSend_handleReconstructedShareURL_(v8, v9, v3);
}

void sub_225185488(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = v4;
    v14 = objc_msgSend_operationID(v10, v12, v13);
    v15 = 138543618;
    v16 = v14;
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Sending vetting completion progress to client for operation %{public}@ for share metadata: %@", &v15, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  objc_msgSend_handleFetchedShareMetadata_(v8, v9, v3);
}

void sub_2251856FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22518571C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 32);
    v17 = v10;
    v20 = objc_msgSend_operationID(v16, v18, v19);
    v21 = 138543618;
    v22 = v20;
    v23 = 2112;
    v24 = v7;
    _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Sending share participant key fetch progress to client for operation %{public}@ recordID: %@", &v21, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v12, v13);
  objc_msgSend_handleParticipantKeyFetchForRecordID_participantKey_error_(v14, v15, v7, v8, v9);
}

void sub_225185968(id *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_entitlements(a1[4], a2, a3);
  if (objc_msgSend_hasParticipantPIIEntitlement(v4, v5, v6))
  {

    goto LABEL_4;
  }

  v11 = objc_msgSend_entitlements(a1[4], v7, v8);
  hasOutOfProcessUIEntitlement = objc_msgSend_hasOutOfProcessUIEntitlement(v11, v12, v13);

  if (hasOutOfProcessUIEntitlement)
  {
LABEL_4:
    if (objc_msgSend_hasEncryptedPersonalInfo(a1[5], v9, v10))
    {
      v17 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], v15, v16);
      v18 = objc_opt_new();
      objc_msgSend_setResolvedConfiguration_(v18, v19, v17);
      v22 = objc_msgSend_recordID(a1[5], v20, v21);
      v25 = objc_msgSend_zoneID(v22, v23, v24);
      v28 = objc_msgSend_ownerName(v25, v26, v27);
      isEqualToString = objc_msgSend_isEqualToString_(v28, v29, *MEMORY[0x277CBBF28]);

      if (isEqualToString)
      {
        objc_msgSend_setDatabaseScope_(v18, v31, 2);
      }

      else
      {
        objc_msgSend_setDatabaseScope_(v18, v31, 3);
      }

      v32 = [CKDDatabaseOperation alloc];
      v34 = objc_msgSend_containerForOperationInfo_(a1[4], v33, v18);
      v36 = objc_msgSend_initWithOperationInfo_container_(v32, v35, v18, v34);

      v39 = objc_msgSend_pcsCache(a1[4], v37, v38);
      v42 = objc_msgSend_recordID(a1[5], v40, v41);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = sub_225185C34;
      v49[3] = &unk_278547D20;
      v52 = a1[6];
      v43 = a1[5];
      v44 = a1[4];
      v50 = v43;
      v51 = v44;
      objc_msgSend_fetchPCSForShareWithID_forOperation_options_withCompletionHandler_(v39, v45, v42, v36, 0, v49);
    }

    else
    {
      v46 = *(a1[6] + 2);

      v46();
    }

    return;
  }

  v47 = a1[6];
  v48 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v9, *MEMORY[0x277CBBF50], 8, @"Container %@ is not allowed to decrypt share personal info", a1[4]);
  v47[2](v47, 0, v48);
}

uint64_t sub_225185C34(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 48) + 16);
LABEL_5:

    return v4();
  }

  v5 = objc_msgSend_invitedPCS(a2, a2, 0);
  if (v5)
  {
    v8 = v5;
    v9 = *(a1 + 32);
    v10 = objc_msgSend_pcsManager(*(a1 + 40), v6, v7);
    objc_msgSend__decryptPersonalInfoWithPCSBlob_pcsManager_(v9, v11, v8, v10);

    objc_msgSend_setSerializePersonalInfo_(*(a1 + 32), v12, 1);
    v4 = *(*(a1 + 48) + 16);
    goto LABEL_5;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&dword_22506F000, v14, OS_LOG_TYPE_INFO, "Fetched PCS for share, but result had no invitedPCS?", v15, 2u);
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_225185EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225185ED0(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = v4;
    v14 = objc_msgSend_operationID(v10, v12, v13);
    v15 = 138543618;
    v16 = v14;
    v17 = 2112;
    v18 = v3;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Sending initiate participant vetting operation progress to client for operation %{public}@ error: %@", &v15, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v6, v7);
  objc_msgSend_handleParticipantVettingProgressWithError_(v8, v9, v3);
}

void sub_225186128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225186144(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v16 = v2;
    v19 = objc_msgSend_operationID(WeakRetained, v17, v18);
    v22 = 138543618;
    v23 = v19;
    v24 = 2048;
    v25 = objc_msgSend_quotaAvailable(WeakRetained, v20, v21);
    _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Sending completion for operation %{public}@ with quota available %lld", &v22, 0x16u);
  }

  v5 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v3, v4);
  v8 = objc_msgSend_quotaAvailable(WeakRetained, v6, v7);
  v11 = objc_msgSend_operationMetrics(WeakRetained, v9, v10);
  v14 = objc_msgSend_error(WeakRetained, v12, v13);
  objc_msgSend_handleOperationDidCompleteWithQuotaAvailable_metrics_error_(v5, v15, v8, v11, v14);
}

void sub_2251863E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225186404(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v16 = v11;
      v19 = objc_msgSend_operationID(WeakRetained, v17, v18);
      v20 = 138543618;
      v21 = v19;
      v22 = 2112;
      v23 = v7;
      _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Sending mergeable delta fetched progress to client for operation %{public}@ for %@", &v20, 0x16u);
    }

    v14 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v12, v13);
    objc_msgSend_handleFetchForMergeableValueID_fetchedDeltas_error_(v14, v15, v7, v8, v9);
  }
}

void sub_225186698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251866B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v16 = v11;
      v19 = objc_msgSend_operationID(WeakRetained, v17, v18);
      v20 = 138543618;
      v21 = v19;
      v22 = 2112;
      v23 = v7;
      _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Sending fetched metadata to client for operation %{public}@ for value %@", &v20, 0x16u);
    }

    v14 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v12, v13);
    objc_msgSend_handleFetchForMergeableValueID_metadatas_error_(v14, v15, v7, v8, v9);
  }
}

void sub_22518694C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22518696C(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v13 = v8;
      v16 = objc_msgSend_operationID(WeakRetained, v14, v15);
      v17 = 138543618;
      v18 = v16;
      v19 = 2112;
      v20 = v5;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Sending per-value replacement request completion to client for operation %{public}@ for request %@", &v17, 0x16u);
    }

    v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
    objc_msgSend_handleCompletedReplaceDeltasRequest_error_(v11, v12, v5, v6);
  }
}

void sub_225186C50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_225186C80(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v19 = v8;
      v22 = objc_msgSend_operationID(WeakRetained, v20, v21);
      v25 = objc_msgSend_metadata(v5, v23, v24);
      v28 = objc_msgSend_identifier(v25, v26, v27);
      v29 = 138543618;
      v30 = v22;
      v31 = 2112;
      v32 = v28;
      _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Sending delta upload progress to client for operation %{public}@ for %@", &v29, 0x16u);
    }

    v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
    v14 = objc_msgSend_metadata(v5, v12, v13);
    v17 = objc_msgSend_identifier(v14, v15, v16);
    objc_msgSend_handleUploadForDeltaIdentifier_error_(v11, v18, v17, v6);
  }
}

void sub_225186E38(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v13 = v8;
      v16 = objc_msgSend_operationID(WeakRetained, v14, v15);
      v17 = 138543618;
      v18 = v16;
      v19 = 2112;
      v20 = v5;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Sending replacement progress to client for operation %{public}@ for %@", &v17, 0x16u);
    }

    v11 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v9, v10);
    objc_msgSend_handleReplacementRequest_error_(v11, v12, v5, v6);
  }
}

void sub_2251870B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251870D0(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v16 = v2;
    v19 = objc_msgSend_operationID(WeakRetained, v17, v18);
    v22 = objc_msgSend_bundleIDs(WeakRetained, v20, v21);
    v23 = 138543618;
    v24 = v19;
    v25 = 2112;
    v26 = v22;
    _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Sending completion for operation %{public}@ with bundle IDs %@", &v23, 0x16u);
  }

  v5 = objc_msgSend_clientOperationCallbackProxy(WeakRetained, v3, v4);
  v8 = objc_msgSend_bundleIDs(WeakRetained, v6, v7);
  v11 = objc_msgSend_operationMetrics(WeakRetained, v9, v10);
  v14 = objc_msgSend_error(WeakRetained, v12, v13);
  objc_msgSend_handleOperationDidCompleteWithBundleIDs_metrics_error_(v5, v15, v8, v11, v14);
}

void sub_22518731C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_account(*(a1 + 32), a2, a3);
  if (!v4)
  {
    goto LABEL_17;
  }

  v7 = v4;
  v8 = objc_msgSend_account(*(a1 + 32), v5, v6);
  v11 = objc_msgSend_accountType(v8, v9, v10);

  if (v11 == 1)
  {
    goto LABEL_17;
  }

  if ((objc_msgSend_canAuthWithCloudKit(*(a1 + 32), v12, v13) & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v21 = "When determining serverPreferredPushEnvironment, the account could not auth with CloudKit.  Falling back to default iCloud Environment value";
LABEL_19:
    _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
LABEL_17:
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_225187540;
    v25[3] = &unk_278545BC0;
    v22 = *(a1 + 32);
    v26 = *(a1 + 40);
    objc_msgSend_serverEnvironmentWithCompletionHandler_(v22, v23, v25);

    return;
  }

  v16 = objc_msgSend_account(*(a1 + 32), v14, v15);
  v24 = objc_msgSend_serverPreferredPushEnvironment(v16, v17, v18);

  if (!v24)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v21 = "When determining serverPreferredPushEnvironment, the account had no apsEnv in its dataclass bag.  Falling back to default iCloud Environment value";
    goto LABEL_19;
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    (*(v19 + 16))(v19, v24, 0);
  }

  MEMORY[0x2821F96F8]();
}

void sub_225187540(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v7 = v5;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "When determining serverPreferredPushEnvironment, failed our fallback to default iCloud Environment value: %@", &v12, 0xCu);
    }

    goto LABEL_6;
  }

  if ((a2 - 1) < 3)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = MEMORY[0x277CEE9E8];
LABEL_14:
      (*(v10 + 16))(v10, *v11, 0);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (!a2)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = MEMORY[0x277CEE9F0];
      goto LABEL_14;
    }

LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v6, *MEMORY[0x277CBC120], 1000, @"Could not determine serverPreferredPushEnvironment from account or iCloud Environment");
LABEL_6:
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, 0, v7);
  }

LABEL_16:
}

void sub_225187860(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = objc_msgSend_hardwareID(*(a1 + 32), a2, a3);
    (*(v3 + 16))(v3, v4, 0);
  }
}

void sub_22518798C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_account(*(a1 + 32), a2, a3);

  if (!v4)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v5, *MEMORY[0x277CBC120], 1002, @"This requires an authenticated account, we have no account");
    goto LABEL_5;
  }

  v7 = objc_msgSend_account(*(a1 + 32), v5, v6);
  v10 = objc_msgSend_accountType(v7, v8, v9);

  if (v10 == 1)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 1002, @"This requires an authenticated account, we have only have an anonymous account");
LABEL_5:
    objc_claimAutoreleasedReturnValue();
    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, 0);
    }

    MEMORY[0x2821F9730]();
    return;
  }

  if (objc_msgSend_canAuthWithCloudKit(*(a1 + 32), v11, v12))
  {
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x3032000000;
    v36[3] = sub_225073F60;
    v36[4] = sub_22507353C;
    v37 = 0;
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x3032000000;
    v34[3] = sub_225073F60;
    v34[4] = sub_22507353C;
    v35 = 0;
    v15 = dispatch_group_create();
    dispatch_group_enter(v15);
    v18 = objc_msgSend_pcsManager(*(a1 + 32), v16, v17);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_225187D04;
    v30[3] = &unk_278547E10;
    v32 = v36;
    v33 = v34;
    v19 = v15;
    v31 = v19;
    objc_msgSend_globalPerUserBoundaryKeyDataWithCompletionHandler_(v18, v20, v30);

    v21 = CKGetGlobalQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_225187DA0;
    block[3] = &unk_278547E38;
    v28 = v36;
    v29 = v34;
    v27 = *(a1 + 40);
    dispatch_group_notify(v19, v21, block);

    _Block_object_dispose(v34, 8);
    _Block_object_dispose(v36, 8);
  }

  else
  {
    v22 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBC120], 1002, @"This requires an authenticated account, the current account cannot auth with CloudKit");
    v25 = objc_msgSend_possiblyWrappedAuthTokenErrorGivenError_(*(a1 + 32), v23, v22);

    v24 = *(a1 + 40);
    if (v24)
    {
      (*(v24 + 16))(v24, 0, v25);
    }
  }
}

void sub_225187CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_225187D04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_225187DA0(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = *(*(a1[5] + 8) + 40);
    v6 = v2;
    v9 = objc_msgSend_length(v5, v7, v8);
    v11 = objc_msgSend_stringWithFormat_(v4, v10, @"<%lu bytes>", v9);
    v12 = v11;
    v13 = *(*(a1[6] + 8) + 40);
    v14 = @". Error was ";
    if (!v13)
    {
      v14 = &stru_28385ED00;
      v13 = &stru_28385ED00;
    }

    *buf = 138412802;
    v16 = v11;
    v17 = 2112;
    v18 = v14;
    v19 = 2112;
    v20 = v13;
    _os_log_debug_impl(&dword_22506F000, v6, OS_LOG_TYPE_DEBUG, "Returning boundary key to client: %@%@%@", buf, 0x20u);
  }

  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40));
  }

  return result;
}

uint64_t sub_2251880A0(uint64_t a1, const char *a2)
{
  objc_msgSend_countAssetCacheItemsWithDatabaseScope_(*(a1 + 32), a2, *(a1 + 48));
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_2251881B4(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_clearAssetCache(*(a1 + 32), a2, a3);
  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_225188330(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v9 = objc_msgSend_applicationBundleID(v5, v7, v8);
    v10 = CKDatabaseScopeString();
    v18 = 138412546;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Clearing record cache for %@ with scope %@", &v18, 0x16u);
  }

  v11 = objc_msgSend_recordCache(*(a1 + 32), v3, v4);
  objc_msgSend_clearAllRecordsInScope_container_(v11, v12, *(a1 + 40), *(a1 + 32));

  v15 = objc_msgSend_pcsCache(*(a1 + 32), v13, v14);
  objc_msgSend_clearPCSCaches(v15, v16, v17);
}

uint64_t sub_22518854C(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = MEMORY[0x277CBC880];
  v4 = MEMORY[0x277CBC830];
  if (v2)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v5 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      v35 = *(a1 + 32);
      v39 = 134217984;
      v40 = v35;
      _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Clearing the asset cache for container %p", &v39, 0xCu);
    }

    objc_msgSend_clearAssetCache(*(a1 + 32), v6, v7);
    v2 = *(a1 + 48);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*v3 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v36 = *(a1 + 32);
    v39 = 134217984;
    v40 = v36;
    _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Clearing the record cache for container %p", &v39, 0xCu);
  }

  objc_msgSend_clearRecordCacheWithDatabaseScope_(*(a1 + 32), v9, *(a1 + 56));
  v2 = *(a1 + 48);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_17:
  if (*v3 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v37 = *(a1 + 32);
    v39 = 134217984;
    v40 = v37;
    _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "Clearing the persisted PCS cache for container %p", &v39, 0xCu);
  }

  v13 = objc_msgSend_pcsCache(*(a1 + 32), v11, v12);
  objc_msgSend_clearPCSCaches(v13, v14, v15);

  v2 = *(a1 + 48);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

LABEL_22:
  if (*v3 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v16 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    v38 = *(a1 + 32);
    v39 = 134217984;
    v40 = v38;
    _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Clearing the in-memory PCS cache for container %p", &v39, 0xCu);
  }

  v19 = objc_msgSend_pcsCache(*(a1 + 32), v17, v18);
  objc_msgSend_clearPCSMemoryCaches(v19, v20, v21);

  if ((*(a1 + 48) & 0x10) != 0)
  {
LABEL_27:
    if (*v3 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v22 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v39) = 0;
      _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Clearing the container info cache", &v39, 2u);
    }

    v25 = objc_msgSend_sharedManager(CKDServerConfigurationManager, v23, v24);
    objc_msgSend_expireGlobalConfiguration(v25, v26, v27);

    v30 = objc_msgSend_sharedManager(CKDServerConfigurationManager, v28, v29);
    objc_msgSend_expireConfigurationForContainer_(v30, v31, *(a1 + 32));

    objc_msgSend_setServerConfig_(*(a1 + 32), v32, 0);
    objc_msgSend_setServerInfo_(*(a1 + 32), v33, 0);
  }

LABEL_32:
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_2251889CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordCache(*(a1 + 32), a2, a3);
  objc_msgSend_deleteRecordWithID_container_scope_(v4, v5, *(a1 + 40), *(a1 + 32), *(a1 + 56));

  v9 = objc_msgSend_pcsCache(*(a1 + 32), v6, v7);
  objc_msgSend__setPCSData_forFetchedRecordID_withScope_withCompletionHandler_(v9, v8, 0, *(a1 + 40), *(a1 + 56), *(a1 + 48));
}

void sub_225188B2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_pcsCache(*(a1 + 32), a2, a3);
  objc_msgSend__setPCSData_forFetchedZoneID_withScope_withCompletionHandler_(v5, v4, 0, *(a1 + 40), *(a1 + 56), *(a1 + 48));
}

void sub_225188CA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v18 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], a2, a3);
  v4 = objc_opt_new();
  objc_msgSend_setResolvedConfiguration_(v4, v5, v18);
  v6 = [CKDDatabaseOperation alloc];
  v8 = objc_msgSend_containerForOperationInfo_(*(a1 + 32), v7, v4);
  v10 = objc_msgSend_initWithOperationInfo_container_(v6, v9, v4, v8);

  objc_msgSend_setDatabaseScope_(v10, v11, *(a1 + 64));
  objc_msgSend_addUnitTestOverrides_(v10, v12, *(a1 + 40));
  v15 = objc_msgSend_pcsCache(*(a1 + 32), v13, v14);
  v17 = v15;
  if (*(a1 + 72))
  {
    objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v15, v16, *(a1 + 48), v10, 2, *(a1 + 56));
  }

  else
  {
    objc_msgSend_fetchPCSForZoneWithID_forOperation_options_withCompletionHandler_(v15, v16, *(a1 + 48), v10, 0, *(a1 + 56));
  }
}

void sub_225188E80(uint64_t a1, const char *a2, uint64_t a3)
{
  v16 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], a2, a3);
  v4 = objc_opt_new();
  objc_msgSend_setResolvedConfiguration_(v4, v5, v16);
  v6 = [CKDDatabaseOperation alloc];
  v8 = objc_msgSend_containerForOperationInfo_(*(a1 + 32), v7, v4);
  v10 = objc_msgSend_initWithOperationInfo_container_(v6, v9, v4, v8);

  objc_msgSend_setDatabaseScope_(v10, v11, *(a1 + 56));
  v14 = objc_msgSend_pcsCache(*(a1 + 32), v12, v13);
  objc_msgSend_fetchPCSForShareWithID_forOperation_options_withCompletionHandler_(v14, v15, *(a1 + 40), v10, 2, *(a1 + 48));
}

void sub_225189048(uint64_t a1, const char *a2, uint64_t a3)
{
  v16 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], a2, a3);
  v4 = objc_opt_new();
  objc_msgSend_setResolvedConfiguration_(v4, v5, v16);
  v6 = [CKDDatabaseOperation alloc];
  v8 = objc_msgSend_containerForOperationInfo_(*(a1 + 32), v7, v4);
  v10 = objc_msgSend_initWithOperationInfo_container_(v6, v9, v4, v8);

  objc_msgSend_setDatabaseScope_(v10, v11, *(a1 + 56));
  v14 = objc_msgSend_pcsCache(*(a1 + 32), v12, v13);
  objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v14, v15, *(a1 + 40), v10, 2, *(a1 + 48));
}

void sub_225189290(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_containerID(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_specialContainerType(v4, v5, v6) == 5;

  v11 = objc_msgSend_pcsCache(*(a1 + 32), v8, v9);
  objc_msgSend_clearInvalidatedPCSSQLCacheEntriesWithSkipZonePCS_completionHandler_(v11, v10, v7, 0);
}

void sub_2251893C4(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v6 = objc_msgSend_operationQueue(*(a1 + 32), v4, v5);
  v9 = objc_msgSend_operations(v6, v7, v8);
  objc_msgSend_addObjectsFromArray_(v3, v10, v9);

  v13 = objc_msgSend_cloudKitSupportOperationThrottleQueue(*(a1 + 32), v11, v12);
  v16 = objc_msgSend_operations(v13, v14, v15);
  objc_msgSend_addObjectsFromArray_(v3, v17, v16);

  v20 = objc_msgSend_backgroundOperationThrottleQueue(*(a1 + 32), v18, v19);
  v23 = objc_msgSend_operations(v20, v21, v22);
  objc_msgSend_addObjectsFromArray_(v3, v24, v23);

  v27 = objc_msgSend_sharedClientThrottlingOperationQueue(CKDContainer, v25, v26);
  v30 = objc_msgSend_operations(v27, v28, v29);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_22518967C;
  v47[3] = &unk_278547F00;
  v47[4] = *(a1 + 32);
  v32 = objc_msgSend_CKFilter_(v30, v31, v47);

  objc_msgSend_addObjectsFromArray_(v3, v33, v32);
  if (objc_msgSend_count(v3, v34, v35))
  {
    v38 = objc_msgSend_count(v3, v36, v37);
    if (v38 - 1 >= 0)
    {
      v39 = v38;
      do
      {
        v40 = objc_msgSend_objectAtIndex_(v3, v36, --v39);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_removeObjectAtIndex_(v3, v41, v39);
        }
      }

      while (v39 > 0);
    }
  }

  if (objc_msgSend_count(v3, v36, v37))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v44 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = v3;
      _os_log_impl(&dword_22506F000, v44, OS_LOG_TYPE_INFO, "Unexpectedly found some outstanding operations: %@", buf, 0xCu);
    }
  }

  v45 = *(a1 + 40);
  v46 = objc_msgSend_count(v3, v42, v43);
  (*(v45 + 16))(v45, v46, 0);
}

BOOL sub_22518967C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_container(a2, a2, a3);
  v5 = v4 == *(a1 + 32);

  return v5;
}

void sub_225189770(uint64_t a1, const char *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v4 = objc_msgSend_MMCS(*(a1 + 32), a2, a3);
  v9 = 0;
  v6 = objc_msgSend_registeredItemCount_error_(v4, v5, &v10, &v9);
  v7 = v9;

  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Error counting registered items %@", buf, 0xCu);
    }
  }
}

void sub_225189D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225189D30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  if (!v4)
  {
    v7 = objc_msgSend_sharedAccountStore(CKDAccountStore, v5, v6);
    v10 = objc_msgSend_accountStore(v7, v8, v9);

    v12 = objc_msgSend_accountTypeWithAccountTypeIdentifier_(v10, v11, *MEMORY[0x277CB8BE8]);
    objc_msgSend_clearAllPermissionsGrantedForAccountType_(v10, v13, v12);
  }

  v14 = *(a1 + 32);
  v15 = WeakRetained;
  if (v14)
  {
    v16 = objc_msgSend_error(WeakRetained, v5, v6);
    (*(v14 + 16))(v14, v16);

    v15 = WeakRetained;
  }
}

void sub_225189F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225189F90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  if (v4)
  {
    v7 = *(a1 + 32);
    v8 = objc_msgSend_error(WeakRetained, v5, v6);
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    v9 = objc_msgSend_containerPrivacySettings(WeakRetained, v5, v6);
    v8 = objc_msgSend_appPermissionGroupsFromContainerPrivacySettings_(CKDBatchFetchUserPrivacySettingsOperation, v10, v9);

    (*(*(a1 + 32) + 16))(*(a1 + 32), v8, 0);
  }
}

void sub_22518A21C(uint64_t a1, const char *a2, uint64_t a3)
{
  v19 = objc_msgSend_account(*(a1 + 32), a2, a3);
  if (v19)
  {
    v6 = objc_msgSend_accountType(v19, v4, v5) == 1;
    v8 = v19;
    if (!v6)
    {
      if (!*(a1 + 40))
      {
        goto LABEL_12;
      }

      v12 = objc_msgSend_containerID(*(a1 + 32), v4, v7);
      v9 = objc_msgSend_representativeDataclass(v12, v13, v14);

      if (v9)
      {
        v17 = objc_msgSend_account(*(a1 + 32), v15, v16);
        objc_msgSend_isDataclassEnabled_(v17, v18, v9);
      }

      v11 = *(*(a1 + 40) + 16);
      goto LABEL_10;
    }
  }

  v9 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v4, *MEMORY[0x277CBC120], 1002, @"This requires an authenticated account");
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(v10 + 16);
LABEL_10:
    v11();
  }

  v8 = v19;
LABEL_12:
}

void sub_22518A3F4(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v12 = 0;
  v4 = objc_msgSend_checkSessionValidityCacheOnly_error_(v3, a2, 0, &v12);
  v5 = v12;
  v8 = v5;
  v9 = 0;
  if ((v4 & 1) == 0 && v5)
  {
    isCloudCoreSessionNoLongerValidError = objc_msgSend_isCloudCoreSessionNoLongerValidError(v5, v6, v7);
    v9 = isCloudCoreSessionNoLongerValidError ? 0 : v8;
    if (!isCloudCoreSessionNoLongerValidError)
    {
      v8 = 0;
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v8, v9);
  }
}

void sub_22518A63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22518A65C(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_corruptRecords(WeakRetained, v2, v3);
  (*(v1 + 16))(v1, v4);
}

uint64_t sub_22518A7F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedManager(CKDServerConfigurationManager, a2, a3);
  objc_msgSend_expireGlobalConfiguration(v4, v5, v6);

  v9 = objc_msgSend_sharedManager(CKDServerConfigurationManager, v7, v8);
  objc_msgSend_expireConfigurationForContainer_(v9, v10, *(a1 + 32));

  result = *(a1 + 40);
  if (result)
  {
    v12 = *(result + 16);

    return v12();
  }

  return result;
}

void sub_22518AF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22518AF48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[8] = 1;
  }

  v8 = WeakRetained;
  sub_225099E0C(WeakRetained, v6, v7);
  v4[2](v4);
}

id *sub_22518AFC4(id *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = result;
    v5 = objc_msgSend_appContainerTuple(result[4], a2, a3);
    v8 = objc_msgSend_processScopedClientProxy(v4[5], v6, v7);
    v9 = v4[4];
    if (v9)
    {
      v10 = v9[10];
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v14 = objc_msgSend_entitlements(v9, v12, v13);
    v17 = objc_msgSend_options(v4[4], v15, v16);
    v20 = objc_msgSend_sharedContainers(v4[5], v18, v19);
    v22 = objc_msgSend_containerWithAppContainerTuple_processScopedClientProxy_logicalDeviceScopedClientProxy_containerEntitlements_containerOptions_sharedContainerTable_(CKDContainer, v21, v5, v8, v11, v14, v17, v20);
    v23 = *(v4[6] + 1);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    v25 = *(*(v4[6] + 1) + 40);
    v28 = objc_msgSend_distantContainer(v4[4], v26, v27);
    objc_msgSend_linkWithClientContainer_(v25, v29, v28);

    v30 = *(*(v4[6] + 1) + 40);
    v31 = (v4[4] + 16);

    return objc_storeWeak(v31, v30);
  }

  return result;
}

void sub_22518B904(uint64_t a1, const char *a2)
{
  aBlock = 0;
  objc_msgSend_getArgument_atIndex_(*(a1 + 32), a2, &aBlock, a2);
  _Block_signature(aBlock);
  v4 = aBlock;
  v5 = *(a1 + 40);
  objc_msgSend_beginContentAccess(v5, v6, v7);
  v10 = MEMORY[0x277D85DD0];
  v11 = v4;
  v8 = v4;
  v12 = __NSMakeSpecialForwardingCaptureBlock();
  objc_msgSend_setArgument_atIndex_(*(a1 + 32), v9, &v12, a2, v10, 3221225472, sub_22518BA04, &unk_278547FA0);
}

uint64_t sub_22518BA04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  objc_msgSend_setTarget_(v4, v5, v3);
  objc_msgSend_invoke(v4, v6, v7);

  v10 = *(a1 + 40);

  return objc_msgSend_endContentAccess(v10, v8, v9);
}

void sub_22518BC60(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    if (v3)
    {
      *(v3 + 9) = 1;
    }

    if ((v4 & 2) != 0)
    {
      sub_225099E0C(*(a1 + 32), a2, a3);
    }
  }

  else if (v3)
  {
    *(v3 + 9) = 0;
  }
}

void sub_22518BF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22518BF90(uint64_t a1)
{
  v2 = sub_225099FA8(*(a1 + 32));
  if (v2)
  {
    isContentDiscarded = objc_msgSend_isContentDiscarded(v2, v2, v3);
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = *(v5 + 72);
    }

    isContentDiscarded = v5 == 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = isContentDiscarded;

  return MEMORY[0x2821F96F8]();
}

void sub_22518C1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22518C1DC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v1 = *(v1 + 64);
  }

  *(*(*(result + 40) + 8) + 24) = v1;
  return result;
}

void sub_22518C42C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  if (v10)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }

    else
    {
      objc_msgSend_remoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }
    v9 = ;
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_22518C63C(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = *(a1 + 32);
  objc_sync_enter(v8);
  if (v7)
  {
    v11 = objc_msgSend_logicalDeviceScopedClientProxyCreator(*(a1 + 32), v9, v10);

    if (v11)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v13 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 32);
        v24 = 138412546;
        v25 = v16;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Ignoring superfluous logical device scoped client proxy for %@: %@", &v24, 0x16u);
      }

      v17 = objc_msgSend_logicalDeviceScopedClientProxyCreator(*(a1 + 32), v14, v15);
    }

    else
    {
      objc_msgSend_setLogicalDeviceScopedClientProxyCreator_(*(a1 + 32), v12, v7);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v22 = *MEMORY[0x277CBC830];
      v17 = v7;
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v23 = *(a1 + 32);
        v24 = 138412546;
        v25 = v23;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_22506F000, v22, OS_LOG_TYPE_INFO, "Got a logical device scoped client proxy for %@: %@", &v24, 0x16u);
        v17 = v7;
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 32);
      v24 = 138412546;
      v25 = v21;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "Ignoring failed attempt to get logical device scoped client proxy for %@: %@", &v24, 0x16u);
    }

    v17 = objc_msgSend_logicalDeviceScopedClientProxyCreator(*(a1 + 32), v19, v20);
  }

  objc_sync_exit(v8);

  (*(*(a1 + 40) + 16))();
}

void sub_22518CC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_22518CC4C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_22518CCAC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22518CD54;
  v7[3] = &unk_278548068;
  v9 = *(a1 + 56);
  v6 = *(a1 + 40);
  v4 = v6;
  v8 = v6;
  objc_msgSend_openFileWithOpenInfo_reply_(a2, v5, v3, v7);
}

void sub_22518CD54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_22518D114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_22518D13C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_22518D19C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22518D258;
  v9[3] = &unk_278547E10;
  v11 = *(a1 + 56);
  v8 = *(a1 + 40);
  v6 = v8;
  v10 = v8;
  objc_msgSend_readBytesOfInMemoryAssetContentWithUUID_offset_length_reply_(a2, v7, v3, v4, v5, v9);
}

void sub_22518D258(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_22518D494(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v7 = objc_msgSend_throttleBlockingUntilNextRequestWindow(v2, v4, v5);
  objc_msgSend_addThrottle_(v3, v6, v7);
}

void sub_22518DB58(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v8 = objc_msgSend_protocol(v3, v5, v6);
  objc_msgSend_CKInvokeAndNilOutReplyBlockWithError_forProtocol_(v2, v7, v4, v8);
}

void sub_22518E590(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  if (v10)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }

    else
    {
      objc_msgSend_remoteObjectProxyWithErrorHandler_(v10, v5, v7);
    }
    v9 = ;
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_22518E7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_sync_exit(v16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22518E7E0(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  if (v5)
  {
    v10 = objc_msgSend_processScopedClientProxyCreator(*(a1 + 32), v8, v9);

    if (v10)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v12 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        *v22 = 138412546;
        *&v22[4] = v15;
        *&v22[12] = 2112;
        *&v22[14] = v5;
        v16 = "Ignoring superfluous process scoped client proxy for %@: %@";
LABEL_15:
        _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, v16, v22, 0x16u);
      }
    }

    else
    {
      objc_msgSend_setProcessScopedClientProxyCreator_(*(a1 + 32), v11, v5);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v12 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v18 = *(a1 + 32);
        *v22 = 138412546;
        *&v22[4] = v18;
        *&v22[12] = 2112;
        *&v22[14] = v5;
        v16 = "Got a process scoped client proxy for %@: %@";
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      *v22 = 138412546;
      *&v22[4] = v17;
      *&v22[12] = 2112;
      *&v22[14] = v6;
      v16 = "Ignoring failed attempt to get process scoped client proxy for %@: %@";
      goto LABEL_15;
    }
  }

  v19 = objc_msgSend_processScopedClientProxyCreator(*(a1 + 32), v13, v14, *v22, *&v22[8], v23);
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  objc_sync_exit(v7);
  (*(*(a1 + 40) + 16))();
}

void sub_22518EDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_22518EDF8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_22518EE58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22518EF0C;
  v8[3] = &unk_278548178;
  v10 = *(a1 + 64);
  v7 = *(a1 + 48);
  v5 = v7;
  v9 = v7;
  objc_msgSend_getFileMetadataWithFileHandle_openInfo_reply_(a2, v6, v3, v4, v8);
}

void sub_22518EF0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_22518F974()
{
  v0 = [CKDProcessScopedStateManager alloc];
  qword_280D58178 = objc_msgSend_initInternal(v0, v1, v2);

  return MEMORY[0x2821F96F8]();
}

void sub_22518FD94(uint64_t a1, void *a2)
{
  v41 = a2;
  v5 = objc_msgSend_appContainerTuple(v41, v3, v4);
  v8 = objc_msgSend_applicationID(v5, v6, v7);
  v11 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(v8, v9, v10);
  v14 = v11;
  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v16 = objc_msgSend_appContainerTuple(v41, v12, v13);
    v19 = objc_msgSend_applicationID(v16, v17, v18);
    v15 = objc_msgSend_applicationBundleIdentifier(v19, v20, v21);
  }

  if (objc_msgSend_isEqualToString_(v15, v22, *(a1 + 32)))
  {
    v25 = *(a1 + 40);
    v26 = objc_msgSend_appContainerTuple(v41, v23, v24);
    v29 = objc_msgSend_containerID(v26, v27, v28);
    v32 = objc_msgSend_containerIdentifier(v29, v30, v31);
    LODWORD(v25) = objc_msgSend_containsObject_(v25, v33, v32);

    if (v25)
    {
      v36 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, v34, v35);
      v39 = objc_msgSend_tokenRegistrationScheduler(v36, v37, v38);
      objc_msgSend_unregisterTokenForAppContainerAccountTuple_(v39, v40, v41);
    }
  }
}

void sub_225190100(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_22506F000, v4, OS_LOG_TYPE_INFO, "Resetting TCC access", v5, 2u);
  }

  TCCAccessReset();
  (*(*(a1 + 32) + 16))();
}

void sub_2251905FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_dataContainerURL(*(a1 + 32), a2, a3);
  v5 = v3;
  if (v3)
  {
    v6 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v3, v4, @"Library/Caches/CloudKit", 1);
    v9 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v7, v8);
    v12 = objc_msgSend_absoluteString(v6, v10, v11);
    v14 = objc_msgSend_fileExistsAtPath_(v9, v13, v12);

    if (v14)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v15 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v18 = v15;
        v21 = objc_msgSend_absoluteString(v6, v19, v20);
        v24 = objc_msgSend_CKSanitizedPath(v21, v22, v23);
        v27 = 138412290;
        v28 = v24;
        _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "Removing cache at %@", &v27, 0xCu);
      }

      v25 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v16, v17);
      objc_msgSend_removeItemAtURL_error_(v25, v26, v6, 0);
    }
  }
}

uint64_t sub_2251907A4(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_225190CAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_appContainerTuple(v5, v7, v8);
  v12 = objc_msgSend_persona(v9, v10, v11);
  v15 = v5;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  CKPersonaPerformBlock();
}

void sub_225190DC0(uint64_t a1, void *a2)
{
  v154 = *MEMORY[0x277D85DE8];
  v145 = a2;
  v5 = objc_msgSend_operationInfo(*(a1 + 32), v3, v4);
  v146 = v5;
  v6 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = MEMORY[0x277CBC830];
  v8 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v11 = v8;
    v14 = objc_msgSend_operationID(v5, v12, v13);
    *buf = 138543362;
    *&buf[4] = v14;
    _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Found outstanding operation ID %{public}@", buf, 0xCu);
  }

  if (v145)
  {
    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 40);
      v19 = v15;
      v22 = objc_msgSend_appContainerTuple(v18, v20, v21);
      v25 = objc_msgSend_persona(v22, v23, v24);
      v28 = objc_msgSend_operationID(v5, v26, v27);
      *buf = 138412802;
      *&buf[4] = v25;
      v148 = 2112;
      v149 = v28;
      v150 = 2112;
      v151 = v145;
      _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_INFO, "Could not adopt persona %@ for long-lived operation %@ with error: %@", buf, 0x20u);
    }

    v29 = *(a1 + 48);
    v30 = objc_msgSend_operationID(v5, v16, v17);
    objc_msgSend_addObject_(v29, v31, v30);
  }

  v32 = objc_msgSend_retryNumber(*(a1 + 32), v9, v10);
  v35 = objc_msgSend_integerValue(v32, v33, v34);

  v40 = objc_msgSend_lastAttemptDate(*(a1 + 32), v36, v37);
  v41 = -1;
  if (v40 && v35 >= 1)
  {
    v42 = objc_msgSend_currentCalendar(MEMORY[0x277CBEA80], v38, v39);
    v45 = objc_msgSend_date(MEMORY[0x277CBEAA8], v43, v44);
    v47 = objc_msgSend_components_fromDate_toDate_options_(v42, v46, 128, v40, v45, 0);

    v41 = objc_msgSend_second(v47, v48, v49);
  }

  if (v145)
  {
    goto LABEL_30;
  }

  v50 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v38, v39);
  v53 = objc_msgSend_longlivedOperationMaxRetryCount(v50, v51, v52);

  if (v35 > v53)
  {
LABEL_29:
    v79 = *(a1 + 48);
    v80 = objc_msgSend_operationID(v5, v54, v55);
    objc_msgSend_addObject_(v79, v81, v80);

LABEL_30:
    isOperationAllowedIndependentlyInSyncBubble = 0;
    goto LABEL_31;
  }

  v56 = objc_msgSend_ckOperationClassName(v5, v54, v55);

  if (!v56)
  {
    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v78 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_FAULT))
    {
      v140 = v78;
      v143 = objc_msgSend_operationID(v5, v141, v142);
      *buf = 138412290;
      *&buf[4] = v143;
      _os_log_fault_impl(&dword_22506F000, v140, OS_LOG_TYPE_FAULT, "Error preparing for long-lived operation %@. Operation class name missing.", buf, 0xCu);
    }

    goto LABEL_29;
  }

  if (CKIsRunningInSyncBubble())
  {
    v144 = v41;
    v59 = v40;
    v60 = v7;
    v61 = objc_msgSend_ckOperationClassName(v5, v57, v58);
    v64 = objc_msgSend_appContainerTuple(*(a1 + 40), v62, v63);
    v67 = objc_msgSend_containerID(v64, v65, v66);
    isOperationAllowedIndependentlyInSyncBubble = _isOperationAllowedIndependentlyInSyncBubble(v61, v67);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = v60;
    v69 = *v60;
    if (!os_log_type_enabled(*v60, OS_LOG_TYPE_INFO))
    {
      v6 = MEMORY[0x277CBC880];
      v40 = v59;
      goto LABEL_33;
    }

    if (isOperationAllowedIndependentlyInSyncBubble)
    {
      v70 = @"Allowing";
    }

    else
    {
      v70 = @"Denying";
    }

    v71 = v69;
    v74 = objc_msgSend_operationID(v5, v72, v73);
    v77 = objc_msgSend_ckOperationClassName(v5, v75, v76);
    *buf = 138412802;
    *&buf[4] = v70;
    v148 = 2114;
    v149 = v74;
    v150 = 2114;
    v151 = v77;
    _os_log_impl(&dword_22506F000, v71, OS_LOG_TYPE_INFO, "%@ operation %{public}@ of class %{public}@ from running in sync bubble", buf, 0x20u);

    v7 = v60;
    v6 = MEMORY[0x277CBC880];
    v40 = v59;
    v41 = v144;
  }

  else
  {
    isOperationAllowedIndependentlyInSyncBubble = 1;
  }

LABEL_31:
  if (*v6 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

LABEL_33:
  v82 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
  {
    v85 = v7;
    if (isOperationAllowedIndependentlyInSyncBubble)
    {
      v86 = &stru_28385ED00;
    }

    else
    {
      v86 = @" not";
    }

    v87 = v82;
    v90 = objc_msgSend_operationID(v5, v88, v89);
    v91 = v35;
    v92 = v6;
    v93 = v90;
    *buf = 138413058;
    *&buf[4] = v86;
    v7 = v85;
    v148 = 2114;
    v149 = v90;
    v150 = 2048;
    v151 = (v91 + 1);
    v152 = 2048;
    v153 = v41;
    _os_log_impl(&dword_22506F000, v87, OS_LOG_TYPE_INFO, "Will%@ enqueue outstanding operation ID %{public}@ for retry number %ld. Seconds since last retry:%ld", buf, 0x2Au);

    v6 = v92;
  }

  if (isOperationAllowedIndependentlyInSyncBubble)
  {
    v94 = *(a1 + 40);
    v95 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, v83, v84);
    v98 = objc_msgSend_sharedDetachedContainers(CKDContainer, v96, v97);
    v100 = objc_msgSend_containerWithAppContainerAccountTuple_deviceContext_sharedContainerTable_(CKDContainer, v99, v94, v95, v98);

    if (*v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v101 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      v104 = v101;
      v107 = objc_msgSend_operationID(v5, v105, v106);
      *buf = 138543618;
      *&buf[4] = v107;
      v148 = 2112;
      v149 = v100;
      _os_log_impl(&dword_22506F000, v104, OS_LOG_TYPE_INFO, "Starting outstanding operation ID %{public}@ for container %@", buf, 0x16u);
    }

    v108 = objc_msgSend_ckOperationClassName(v5, v102, v103);
    v110 = objc_msgSend_substringFromIndex_(v108, v109, 2);

    v112 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v111, @"perform%@:withBlock:", v110);
    v113 = NSSelectorFromString(v112);
    if (objc_opt_respondsToSelector())
    {
      *buf = &unk_28385CE60;
      v115 = MEMORY[0x277CBEAE8];
      v116 = objc_msgSend_methodSignatureForSelector_(v100, v114, v113);
      v118 = objc_msgSend_invocationWithMethodSignature_(v115, v117, v116);

      objc_msgSend_retainArguments(v118, v119, v120);
      objc_msgSend_setTarget_(v118, v121, v100);
      objc_msgSend_setSelector_(v118, v122, v113);
      objc_msgSend_setArgument_atIndex_(v118, v123, &v146, 2);
      objc_msgSend_setArgument_atIndex_(v118, v124, buf, 3);
      objc_msgSend_invoke(v118, v125, v126);
    }

    else
    {
      if (*v6 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v127 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        v133 = v127;
        v136 = objc_msgSend_operationID(v5, v134, v135);
        v139 = objc_msgSend_ckOperationClassName(v5, v137, v138);
        *buf = 138543874;
        *&buf[4] = v136;
        v148 = 2114;
        v149 = v139;
        v150 = 2114;
        v151 = v112;
        _os_log_error_impl(&dword_22506F000, v133, OS_LOG_TYPE_ERROR, "Operation %{public}@ with ckOperationClassName %{public}@ doesn't respond to selector %{public}@. Dropping from long lived cache.", buf, 0x20u);
      }

      v130 = *(a1 + 56);
      v131 = objc_msgSend_operationID(v5, v128, v129);
      objc_msgSend_deleteAllInfoForOperationWithID_(v130, v132, v131);
    }
  }
}

void sub_225191E18(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_autoreleasePoolPush();
  v6 = objc_msgSend_container(v7, v4, v5);
  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_autoreleasePoolPop(v3);
}

void sub_2251934B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225193560(uint64_t a1, const char *a2)
{
  v53[5] = *MEMORY[0x277D85DE8];
  v52[0] = @"success";
  v3 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], a2, *(*(*(a1 + 72) + 8) + 24));
  v53[0] = v3;
  v52[1] = @"process";
  v6 = objc_msgSend_processScopedClientProxy(*(a1 + 32), v4, v5);
  v9 = objc_msgSend_processBinaryName(v6, v7, v8);
  v12 = v9;
  v13 = @"unknown";
  if (v9)
  {
    v13 = v9;
  }

  v53[1] = v13;
  v52[2] = @"containerID";
  v14 = objc_msgSend_containerIdentifier(*(a1 + 40), v10, v11);
  v53[2] = v14;
  v52[3] = @"currentPersonaType";
  objc_msgSend_type(*(a1 + 48), v15, v16);
  v17 = CKPersonaTypeDescription();
  v53[3] = v17;
  v52[4] = @"targetPersonaType";
  objc_msgSend_type(*(*(*(a1 + 80) + 8) + 40), v18, v19);
  v20 = CKPersonaTypeDescription();
  v53[4] = v20;
  v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v53, v52, 5);
  v25 = objc_msgSend_mutableCopy(v22, v23, v24);

  v28 = objc_msgSend_containerOptions(*(a1 + 56), v26, v27);
  v31 = objc_msgSend_persona(v28, v29, v30);

  if (v31)
  {
    v34 = objc_msgSend_containerOptions(*(a1 + 56), v32, v33);
    v37 = objc_msgSend_persona(v34, v35, v36);
    objc_msgSend_type(v37, v38, v39);
    v40 = CKPersonaTypeDescription();
    objc_msgSend_setObject_forKeyedSubscript_(v25, v41, v40, @"containerPersonaType");
  }

  v42 = *(*(*(a1 + 88) + 8) + 40);
  if (v42)
  {
    objc_msgSend_type(v42, v32, v33);
    v43 = CKPersonaTypeDescription();
    objc_msgSend_setObject_forKeyedSubscript_(v25, v44, v43, @"proximatePersonaType");
  }

  v45 = MEMORY[0x277CBC1E0];
  v46 = objc_msgSend_applicationBundleID(*(a1 + 64), v32, v33);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_22519383C;
  v49[3] = &unk_278548128;
  v50 = 0;
  v51 = v25;
  v47 = v25;
  objc_msgSend_reportWithEventType_event_bundleIdentifier_completionHandler_(v45, v48, @"GetContainerProxy", v47, v46, v49);
}

void sub_22519383C(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CBC878];
  if (v3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v4);
    }

    v5 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v9 = 138412290;
      v10 = v6;
      _os_log_error_impl(&dword_22506F000, v5, OS_LOG_TYPE_ERROR, "Failed to report telemetry with error: %@", &v9, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v4);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 40);
      v9 = 138412290;
      v10 = v8;
      _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Successfully reported telemetry: %@", &v9, 0xCu);
    }
  }
}

void sub_225193F14(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "Connection from client %{public}@ is now active", buf, 0xCu);
  }

  v6 = objc_msgSend_containerAvailableQueue(*(a1 + 40), v3, v4);
  objc_msgSend_setSuspended_(v6, v7, 0);

  v8 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225194074;
  block[3] = &unk_278545A00;
  block[4] = *(a1 + 40);
  dispatch_async(v8, block);
}

void sub_225194074(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_processScopedClientProxy(*(a1 + 32), a2, a3);
  objc_msgSend_noteSystemIsAvailable(v5, v3, v4);
}

void sub_22519425C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_processScopedClientProxy(*(a1 + 32), a2, a3);
  objc_msgSend_handleSignificantIssue_actions_(v5, v4, *(a1 + 40), 4);
}

void sub_225194420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22519443C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = objc_msgSend_processScopedClientProxy(WeakRetained, v3, v4);
  IsAttached = objc_msgSend_processIsAttached(v5, v6, v7);

  if (IsAttached)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v15 = 0;
    v12 = objc_msgSend_containerProxyFromSetupInfo_containerScopedClientProxy_outError_(WeakRetained, v9, v10, v11, &v15);
    v13 = v15;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, v12, v13);
  }
}

void sub_2251945C4(uint64_t a1, const char *a2)
{
  v6 = objc_msgSend_deviceContextForTestDeviceReference_(CKDLogicalDeviceContext, a2, *(a1 + 32));
  v5 = objc_msgSend_deviceScopedStateManager(v6, v3, v4);
  (*(*(a1 + 40) + 16))();
}

void sub_2251946E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_sharedManager(CKDProcessScopedStateManager, a2, a3);
  (*(v3 + 16))(v3, v4);
}

void sub_225194800(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = objc_msgSend_adopterProcessScopedStateManager(*(a1 + 32), a2, a3);
  (*(v3 + 16))(v3, v4);
}

void sub_22519494C(uint64_t a1)
{
  v4 = NSClassFromString(&cfstr_Cloudkittestin.isa);
  if (!v4)
  {
    v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v2, v3);
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[CKDXPCConnection getDaemonTestServerManagerProxyCreatorWithCompletionHandler:]_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v8, v7, @"CKDXPCConnection.m", 534, @"Couldn't find CKDTestServerManager in test process");
  }

  v9 = objc_msgSend_sharedManager(v4, v2, v3);
  (*(*(a1 + 32) + 16))();
}

id sub_225194D4C(void *a1, int a2, void *a3)
{
  v7 = a3;
  if (a1)
  {
    v8 = objc_msgSend_xpcConnection(a1, v5, v6);
    v10 = v8;
    if (v8)
    {
      if (a2)
      {
        objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v8, v9, v7);
      }

      else
      {
        objc_msgSend_remoteObjectProxyWithErrorHandler_(v8, v9, v7);
      }
      v14 = ;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v11 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "Couldn't get connection to client", v16, 2u);
      }

      v13 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBBF50], 1, @"Couldn't get connection to client");
      if (v7)
      {
        v7[2](v7, v13);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t sub_2251953EC()
{
  v0 = [CKDXPCConnectionManager alloc];
  qword_280D58188 = objc_msgSend_initInternal(v0, v1, v2);

  return MEMORY[0x2821F96F8]();
}

void sub_225195790(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedConnectionManager(CKDXPCConnectionManager, a2, a3);
  objc_msgSend__dumpStatusReportToFileHandle_(v4, v3, 0);
}

void sub_2251957DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedConnectionManager(CKDXPCConnectionManager, a2, a3);
  objc_msgSend_statusReportWithCompletionHandler_(v4, v3, 0);
}

_DWORD *sub_225195828(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    return 0;
  }

  v3 = objc_autoreleasePoolPush();
  v6 = objc_msgSend_sharedConnectionManager(CKDXPCConnectionManager, v4, v5);
  v9 = objc_msgSend_CKStatusReportArray(v6, v7, v8);
  v11 = sub_2254044B4(v9, v10);

  objc_autoreleasePoolPop(v3);
  return v11;
}

void sub_225195ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, os_activity_scope_state_s state)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_225195F2C(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = WeakRetained;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "Connection to client %@ was interrupted", &v3, 0xCu);
  }
}

void sub_22519600C(uint64_t a1, const char *a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_sharedConnectionManager(CKDXPCConnectionManager, a2, a3);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v42 = WeakRetained;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Connection to client %@ was invalidated", buf, 0xCu);
  }

  v7 = MEMORY[0x277CCA8C8];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_2251962F0;
  v38[3] = &unk_278545898;
  v8 = WeakRetained;
  v39 = v8;
  v9 = v4;
  v40 = v9;
  v11 = objc_msgSend_blockOperationWithBlock_(v7, v10, v38);
  v14 = objc_msgSend_processScopedClientProxy(v8, v12, v13);
  v17 = objc_msgSend_processBinaryName(v14, v15, v16);
  objc_msgSend_setName_(v11, v18, v17);

  v21 = objc_msgSend_tearDownOperations(v9, v19, v20);
  objc_sync_enter(v21);
  v24 = objc_msgSend_tearDownOperations(v9, v22, v23);
  objc_msgSend_addObject_(v24, v25, v11);

  objc_sync_exit(v21);
  objc_initWeak(buf, v11);
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = sub_225196444;
  v35 = &unk_2785483B8;
  v26 = v9;
  v36 = v26;
  objc_copyWeak(&v37, buf);
  objc_msgSend_setCompletionBlock_(v11, v27, &v32);
  v30 = objc_msgSend_clientConnectionQueue(v26, v28, v29, v32, v33, v34, v35);
  objc_msgSend_addOperation_(v30, v31, v11);

  objc_destroyWeak(&v37);
  objc_destroyWeak(buf);
}

void sub_2251962B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251962F0(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&dword_22506F000, v3, OS_LOG_TYPE_INFO, "Client %@ has gone away", &v14, 0xCu);
  }

  objc_msgSend_invalidate(*(a1 + 32), v4, v5);
  objc_autoreleasePoolPop(v2);
  v9 = objc_msgSend_clientConnections(*(a1 + 40), v7, v8);
  objc_sync_enter(v9);
  v12 = objc_msgSend_clientConnections(*(a1 + 40), v10, v11);
  objc_msgSend_removeObject_(v12, v13, *(a1 + 32));

  objc_sync_exit(v9);
}

void sub_225196444(uint64_t a1, const char *a2, uint64_t a3)
{
  obj = objc_msgSend_tearDownOperations(*(a1 + 32), a2, a3);
  objc_sync_enter(obj);
  v6 = objc_msgSend_tearDownOperations(*(a1 + 32), v4, v5);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_removeObject_(v6, v8, WeakRetained);

  objc_sync_exit(obj);
}

void sub_225196B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_225196BAC(uint64_t a1, void *a2, BOOL *a3)
{
  result = objc_msgSend_cachedEnvironment(a2, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 32) + 8) + 24) != -1;
  return result;
}

void sub_225197CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225197CF8(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = objc_alloc(MEMORY[0x277D24440]);
    v7 = objc_msgSend_initWithSource_(v5, v6, v11);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    objc_msgSend_setFlags_(*(*(*(a1 + 40) + 8) + 40), v10, 391);
  }

  else
  {
    NSLog(&cfstr_CouldnTOpenOsL.isa, a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_225197EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225197EE0(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = objc_alloc(MEMORY[0x277D24420]);
    v7 = objc_msgSend_initWithLiveSource_(v5, v6, v11);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    objc_msgSend_setFlags_(*(*(*(a1 + 40) + 8) + 40), v10, 391);
  }

  else
  {
    NSLog(&cfstr_CouldnTOpenOsL_0.isa, a3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_22519865C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak((v38 + 40));
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak((v41 + 32));
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251986E4(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = objc_msgSend_streamObservers(WeakRetained, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v15, v19, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend__handleEvent_(*(*(&v15 + 1) + 8 * v14++), v11, v3);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v15, v19, 16);
    }

    while (v12);
  }

  objc_autoreleasePoolPop(v5);
}

void sub_225198810(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = objc_msgSend_streamObservers(WeakRetained, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v15, v19, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend__handleEvent_(*(*(&v15 + 1) + 8 * v14++), v11, v3);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v15, v19, 16);
    }

    while (v12);
  }

  objc_autoreleasePoolPop(v5);
}

void sub_22519893C(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = objc_msgSend_streamObservers(WeakRetained, v4, v5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_finish(*(*(&v21 + 1) + 8 * i), v9, v10);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v21, v25, 16);
    }

    while (v11);
  }

  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v16 = 0;
  }

  else
  {
    v16 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v14, @"IMadeUpThisErrorDomain", a2, 0);
  }

  v17 = objc_msgSend_completionHandler(WeakRetained, v14, v15);

  if (v17)
  {
    v20 = objc_msgSend_completionHandler(WeakRetained, v18, v19);
    (v20)[2](v20, v16);
  }
}

void sub_225198ABC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_liveStream(WeakRetained, v4, v5);

  if (v6 && (a2 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v9 = objc_msgSend_liveStream(WeakRetained, v7, v8);
    objc_msgSend_activate(v9, v10, v11);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

id sub_225198CA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCACA8];
  v11 = a4;
  v12 = [v10 alloc];
  v14 = objc_msgSend_initWithFormat_arguments_(v12, v13, v11, &a9);

  if (v14)
  {
    v21 = *MEMORY[0x277CCA450];
    v22[0] = v14;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v22, &v21, 1);
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_opt_class();
  v19 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v18, @"CKLogDomain", a3, v16);

  return v19;
}

id sub_225198DB8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = objc_opt_new();
  objc_msgSend_setDateFormat_(v4, v5, v3);

  objc_msgSend_setLenient_(v4, v6, 1);
  v9 = objc_msgSend_systemTimeZone(MEMORY[0x277CBEBB0], v7, v8);
  objc_msgSend_setTimeZone_(v4, v10, v9);

  v13 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v11, v12);
  objc_msgSend_setLocale_(v4, v14, v13);

  return v4;
}

id sub_225198E64(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225199004;
  block[3] = &unk_278545AD0;
  block[4] = a1;
  if (qword_280D581A0 != -1)
  {
    dispatch_once(&qword_280D581A0, block);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = qword_280D58198;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v20, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = objc_msgSend_dateFromString_(*(*(&v15 + 1) + 8 * i), v8, v4, v15);
        if (v12)
        {
          v13 = v12;
          goto LABEL_13;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v15, v20, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

void sub_225199004(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_new();
  v4 = qword_280D58198;
  qword_280D58198 = v3;

  for (i = 0; i != 5; ++i)
  {
    for (j = 0; j != 5; ++j)
    {
      v7 = objc_opt_new();
      objc_msgSend_setDateStyle_(v7, v8, i);
      objc_msgSend_setTimeStyle_(v7, v9, j);
      objc_msgSend_setLenient_(v7, v10, 1);
      v13 = objc_msgSend_systemTimeZone(MEMORY[0x277CBEBB0], v11, v12);
      objc_msgSend_setTimeZone_(v7, v14, v13);

      v17 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v15, v16);
      objc_msgSend_setLocale_(v7, v18, v17);

      objc_msgSend_addObject_(qword_280D58198, v19, v7);
    }
  }

  v21 = qword_280D58198;
  v22 = objc_msgSend_ck_dateFormatterWithString_(*(a1 + 32), v20, @"yyyy-MM-dd HH:mm");
  objc_msgSend_addObject_(v21, v23, v22);

  v24 = qword_280D58198;
  v26 = objc_msgSend_ck_dateFormatterWithString_(*(a1 + 32), v25, @"yyyy-MM-dd HH:mm:ss");
  objc_msgSend_addObject_(v24, v27, v26);

  v28 = qword_280D58198;
  v30 = objc_msgSend_ck_dateFormatterWithString_(*(a1 + 32), v29, @"HH:mm");
  objc_msgSend_addObject_(v28, v31, v30);

  v32 = qword_280D58198;
  v34 = objc_msgSend_ck_dateFormatterWithString_(*(a1 + 32), v33, @"HH:mm:ss");
  objc_msgSend_addObject_(v32, v35, v34);

  v36 = qword_280D58198;
  v38 = objc_msgSend_ck_dateFormatterWithString_(*(a1 + 32), v37, @"yyyy-MM-dd HH:mm ZZZ");
  objc_msgSend_addObject_(v36, v39, v38);

  v40 = qword_280D58198;
  v42 = objc_msgSend_ck_dateFormatterWithString_(*(a1 + 32), v41, @"yyyy-MM-dd HH:mm:ss ZZZ");
  objc_msgSend_addObject_(v40, v43, v42);

  v44 = qword_280D58198;
  v46 = objc_msgSend_ck_dateFormatterWithString_(*(a1 + 32), v45, @"yyyy-MM-dd HH:mm:ss.SSSSSSZZZ");
  objc_msgSend_addObject_(v44, v47, v46);

  v48 = qword_280D58198;
  v50 = objc_msgSend_ck_dateFormatterWithString_(*(a1 + 32), v49, @"HH:mm ZZZ");
  objc_msgSend_addObject_(v48, v51, v50);

  v52 = qword_280D58198;
  v55 = objc_msgSend_ck_dateFormatterWithString_(*(a1 + 32), v53, @"HH:mm:ss ZZZ");
  objc_msgSend_addObject_(v52, v54, v55);
}

void sub_2251992AC(void *a1, const char *a2, void *a3)
{
  v5 = objc_msgSend_dataUsingEncoding_(a3, a2, 4);
  objc_msgSend_writeData_(a1, v4, v5);
}

void sub_225199308(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = objc_msgSend_description(a1, v5, v6);
  objc_msgSend_CKWriteString_(v4, v7, v8);
}

void sub_22519936C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = sub_225199564();
  objc_msgSend_writeData_(v6, v8, v7);

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = objc_msgSend_allKeys(a1, v9, v10, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v32, v36, 16);
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      v16 = 0;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v32 + 1) + 8 * v16);
        v18 = objc_autoreleasePoolPush();
        v19 = sub_2251995B8();
        objc_msgSend_writeData_(v6, v20, v19);

        sub_22519960C(v4 + 1, v6);
        objc_msgSend__CKLogToFileHandle_atDepth_(v17, v21, v6, (v4 + 1));
        v22 = sub_225199878();
        objc_msgSend_writeData_(v6, v23, v22);

        v25 = objc_msgSend_objectForKeyedSubscript_(a1, v24, v17);
        objc_msgSend__CKLogToFileHandle_atDepth_(v25, v26, v6, (v4 + 1));

        objc_autoreleasePoolPop(v18);
        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v27, &v32, v36, 16);
    }

    while (v14);
  }

  v28 = sub_2251995B8();
  objc_msgSend_writeData_(v6, v29, v28);

  sub_22519960C(v4, v6);
  v30 = sub_2251998CC();
  objc_msgSend_writeData_(v6, v31, v30);
}

id sub_225199564()
{
  if (qword_280D581D0 != -1)
  {
    dispatch_once(&qword_280D581D0, &unk_28385CFA0);
  }

  v1 = qword_280D581C8;

  return v1;
}

id sub_2251995B8()
{
  if (qword_280D581E0 != -1)
  {
    dispatch_once(&qword_280D581E0, &unk_28385CFC0);
  }

  v1 = qword_280D581D8;

  return v1;
}

void sub_22519960C(int a1, void *a2)
{
  v3 = a2;
  v14 = v3;
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        goto LABEL_31;
      }

      if (a1 == 1)
      {
        v5 = sub_22519D104();
        goto LABEL_11;
      }

LABEL_34:
      v8 = sub_22519D158();
      objc_msgSend_writeData_(v14, v9, v8);

      if (a1 >= 9)
      {
        v10 = a1 - 8;
        do
        {
          v11 = sub_22519D104();
          objc_msgSend_writeData_(v14, v12, v11);

          --v10;
        }

        while (v10);
      }

      goto LABEL_31;
    }

    if (a1 == 2)
    {
      if (qword_280D58200 != -1)
      {
        dispatch_once(&qword_280D58200, &unk_28385D000);
        v3 = v14;
      }

      objc_msgSend_writeData_(v3, v4, qword_280D581F8);
    }

    else
    {
      if (qword_280D58210 != -1)
      {
        dispatch_once(&qword_280D58210, &unk_28385D020);
        v3 = v14;
      }

      objc_msgSend_writeData_(v3, v4, qword_280D58208);
    }
  }

  else if (a1 <= 5)
  {
    if (a1 == 4)
    {
      if (qword_280D58220 != -1)
      {
        dispatch_once(&qword_280D58220, &unk_28385D040);
        v3 = v14;
      }

      objc_msgSend_writeData_(v3, v4, qword_280D58218);
    }

    else
    {
      if (qword_280D58230 != -1)
      {
        dispatch_once(&qword_280D58230, &unk_28385D060);
        v3 = v14;
      }

      objc_msgSend_writeData_(v3, v4, qword_280D58228);
    }
  }

  else
  {
    if (a1 != 6)
    {
      if (a1 == 7)
      {
        if (qword_280D58250 == -1)
        {
          objc_msgSend_writeData_(v3, v4, qword_280D58248);
        }

        else
        {
          dispatch_once(&qword_280D58250, &unk_28385D0A0);
          objc_msgSend_writeData_(v14, v13, qword_280D58248);
        }

        goto LABEL_31;
      }

      if (a1 == 8)
      {
        v5 = sub_22519D158();
LABEL_11:
        v7 = v5;
        objc_msgSend_writeData_(v14, v6, v5);

        goto LABEL_31;
      }

      goto LABEL_34;
    }

    if (qword_280D58240 != -1)
    {
      dispatch_once(&qword_280D58240, &unk_28385D080);
      v3 = v14;
    }

    objc_msgSend_writeData_(v3, v4, qword_280D58238);
  }

LABEL_31:
}

id sub_225199878()
{
  if (qword_280D58270 != -1)
  {
    dispatch_once(&qword_280D58270, &unk_28385D0E0);
  }

  v1 = qword_280D58268;

  return v1;
}

id sub_2251998CC()
{
  if (qword_280D58280 != -1)
  {
    dispatch_once(&qword_280D58280, &unk_28385D100);
  }

  v1 = qword_280D58278;

  return v1;
}

void sub_225199920(void *a1, uint64_t a2, void *a3, int a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = sub_225199CCC();
  objc_msgSend_writeData_(v6, v8, v7);

  v9 = sub_2251995B8();
  objc_msgSend_writeData_(v6, v10, v9);

  sub_22519960C(a4 + 1, v6);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = a1;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v35, v39, 16);
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v36;
    do
    {
      v17 = 0;
      v34 = v15;
      v18 = v15 + 1;
      do
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v35 + 1) + 8 * v17);
        v20 = objc_autoreleasePoolPush();
        objc_msgSend__CKLogToFileHandle_atDepth_(v19, v21, v6, (a4 + 1));
        if (v18 < objc_msgSend_count(v11, v22, v23))
        {
          v24 = sub_225199D20();
          objc_msgSend_writeData_(v6, v25, v24);

          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v26 = sub_2251995B8();
            objc_msgSend_writeData_(v6, v27, v26);

            sub_22519960C(a4 + 1, v6);
          }
        }

        objc_autoreleasePoolPop(v20);
        ++v17;
        ++v18;
      }

      while (v14 != v17);
      v15 = v14 + v34;
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v28, &v35, v39, 16);
      v14 = v29;
    }

    while (v29);
  }

  v30 = sub_2251995B8();
  objc_msgSend_writeData_(v6, v31, v30);

  sub_22519960C(a4, v6);
  v32 = sub_225199D74();
  objc_msgSend_writeData_(v6, v33, v32);
}

id sub_225199CCC()
{
  if (qword_280D58290 != -1)
  {
    dispatch_once(&qword_280D58290, &unk_28385D120);
  }

  v1 = qword_280D58288;

  return v1;
}

id sub_225199D20()
{
  if (qword_280D582A0 != -1)
  {
    dispatch_once(&qword_280D582A0, &unk_28385D140);
  }

  v1 = qword_280D58298;

  return v1;
}

id sub_225199D74()
{
  if (qword_280D582B0 != -1)
  {
    dispatch_once(&qword_280D582B0, &unk_28385D160);
  }

  v1 = qword_280D582A8;

  return v1;
}

void sub_225199DD8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (qword_280D582C0 != -1)
  {
    dispatch_once(&qword_280D582C0, &unk_28385D180);
  }

  objc_msgSend_writeData_(v5, v4, qword_280D582B8);
  v6 = NSPageSize();
  v9 = objc_msgSend_length(a1, v7, v8);
  if (v9)
  {
    v11 = v9;
    v12 = 0;
    v13 = v9;
    do
    {
      v14 = v13 - v6;
      v15 = a1;
      objc_msgSend_bytes(v15, v16, v17);
      v18 = CKHexCharFromBytes();
      v19 = objc_alloc(MEMORY[0x277CBEA90]);
      v21 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v19, v20, v18, 0, 1);
      objc_msgSend_writeData_(v5, v22, v21);
      v12 += v6;

      v13 = v14;
    }

    while (v12 < v11);
  }

  if (qword_280D582D0 != -1)
  {
    dispatch_once(&qword_280D582D0, &unk_28385D1A0);
  }

  objc_msgSend_writeData_(v5, v10, qword_280D582C8);
}

id sub_225199F30()
{
  if (qword_280D581B0 != -1)
  {
    dispatch_once(&qword_280D581B0, &unk_28385CF60);
  }

  v1 = qword_280D581A8;

  return v1;
}

uint64_t sub_225199F84(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_280D581A8 = objc_msgSend_currentCalendar(MEMORY[0x277CBEA80], a2, a3);

  return MEMORY[0x2821F96F8]();
}

void sub_225199FC4(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  if (qword_280D581C0 != -1)
  {
    dispatch_once(&qword_280D581C0, &unk_28385CF80);
  }

  v5 = *MEMORY[0x277CBC990];
  v6 = objc_msgSend_objectForKey_(qword_280D581B8, v4, *MEMORY[0x277CBC990]);
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA968]);
    objc_msgSend_setDateFormat_(v6, v7, @"yyyy-MM-dd HH:mm:ss ZZZ");
    objc_msgSend_setObject_forKey_(qword_280D581B8, v8, v6, v5);
  }

  v9 = objc_autoreleasePoolPush();
  v11 = objc_msgSend_stringFromDate_(v6, v10, a1);
  objc_msgSend_CKWriteString_(v13, v12, v11);

  objc_autoreleasePoolPop(v9);
}

uint64_t sub_22519A0C4()
{
  qword_280D581B8 = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

void sub_22519A100(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = objc_msgSend_stringValue(a1, v5, v6);
  objc_msgSend_CKWriteString_(v4, v7, v8);
}

uint64_t sub_22519A164(void *a1, int a2, Ivar v)
{
  Name = ivar_getName(v);
  TypeEncoding = ivar_getTypeEncoding(v);
  if (strncmp(Name, "_has", 4uLL) && *TypeEncoding != 123)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = __toupper(Name[1]);
    v11 = objc_msgSend_stringWithFormat_(v8, v10, @"has%c%s", v9, Name + 2);
    v12 = NSSelectorFromString(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = objc_opt_class();
      MethodImplementation = class_getMethodImplementation(v13, v12);
      if (MethodImplementation)
      {
        v7 = (MethodImplementation)(a1, v12);
LABEL_16:

        return v7;
      }

LABEL_10:
      v7 = 0;
      goto LABEL_16;
    }

    v15 = object_getIvar(a1, v);
    if (!v15)
    {
      goto LABEL_10;
    }

    v16 = v15;
    if (objc_opt_respondsToSelector())
    {
      v19 = objc_msgSend_count(v16, v17, v18);
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v7 = 1;
        goto LABEL_15;
      }

      v19 = objc_msgSend_length(v16, v20, v21);
    }

    v7 = v19 != 0;
LABEL_15:

    goto LABEL_16;
  }

  return 0;
}

void sub_22519A2C4(char *a1, uint64_t a2, void *a3, int a4)
{
  v95 = a4;
  v97 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_CKWriteString_(v5, v8, v7);

  v9 = sub_22519AA58();
  objc_msgSend_writeData_(v5, v10, v9);

  v11 = sub_225199564();
  objc_msgSend_writeData_(v5, v12, v11);

  outCount = 0;
  v13 = objc_opt_class();
  v14 = class_copyIvarList(v13, &outCount);
  v15 = 8 * outCount;
  v16 = (v94 - ((v15 + 15) & 0xFFFFFFFF0));
  if (v15 >= 0x200)
  {
    v17 = 512;
  }

  else
  {
    v17 = 8 * outCount;
  }

  bzero(v94 - ((v15 + 15) & 0xFFFFFFFF0), v17);
  if (!outCount)
  {
    goto LABEL_71;
  }

  v19 = 0;
  v20 = 0;
  do
  {
    v21 = v14[v19];
    if (objc_msgSend__CKHasIvar_(a1, v18, v21))
    {
      v16[v20++] = v21;
    }

    ++v19;
  }

  while (v19 < outCount);
  if (!v20)
  {
LABEL_71:
    v88 = sub_2251998CC();
    objc_msgSend_writeData_(v5, v89, v88);

    free(v14);
    goto LABEL_72;
  }

  v94[1] = v94;
  v22 = v20;
  do
  {
    v23 = objc_autoreleasePoolPush();
    v24 = sub_2251995B8();
    objc_msgSend_writeData_(v5, v25, v24);

    sub_22519960C(v95 + 1, v5);
    v26 = *v16;
    v27 = ivar_getName(*v16) + 1;
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v27);
    objc_msgSend_CKWriteString_(v5, v30, v29);

    v31 = sub_225199878();
    objc_msgSend_writeData_(v5, v32, v31);

    v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v33, @"_%sCKLogValue", v27);
    v35 = NSSelectorFromString(v34);
    if (objc_opt_respondsToSelector())
    {
      v36 = objc_opt_class();
      MethodImplementation = class_getMethodImplementation(v36, v35);
      if (MethodImplementation)
      {
        v39 = (MethodImplementation)(a1, v35);
        if (v39)
        {
          goto LABEL_56;
        }
      }
    }

    v40 = *ivar_getTypeEncoding(v26);
    if (v40 > 0x52)
    {
      if (v40 > 104)
      {
        if (v40 > 112)
        {
          if (v40 == 113)
          {
            v82 = MEMORY[0x277CCABB0];
            Offset = ivar_getOffset(v26);
            v44 = objc_msgSend_numberWithLongLong_(v82, v84, *&a1[Offset]);
          }

          else
          {
            if (v40 != 115)
            {
              goto LABEL_57;
            }

            v61 = MEMORY[0x277CCABB0];
            v62 = ivar_getOffset(v26);
            v44 = objc_msgSend_numberWithShort_(v61, v63, *&a1[v62]);
          }
        }

        else if (v40 == 105)
        {
          v75 = MEMORY[0x277CCABB0];
          v76 = ivar_getOffset(v26);
          v44 = objc_msgSend_numberWithInt_(v75, v77, *&a1[v76]);
        }

        else
        {
          if (v40 != 108)
          {
            goto LABEL_57;
          }

          v48 = MEMORY[0x277CCABB0];
          v49 = ivar_getOffset(v26);
          v44 = objc_msgSend_numberWithLong_(v48, v50, *&a1[v49]);
        }
      }

      else if (v40 > 99)
      {
        if (v40 == 100)
        {
          v78 = MEMORY[0x277CCABB0];
          v79 = ivar_getOffset(v26);
          v44 = objc_msgSend_numberWithDouble_(v78, v80, v81, *&a1[v79]);
        }

        else
        {
          if (v40 != 102)
          {
            goto LABEL_57;
          }

          v57 = MEMORY[0x277CCABB0];
          LODWORD(v58) = *&a1[ivar_getOffset(v26)];
          v44 = objc_msgSend_numberWithFloat_(v57, v59, v60, v58);
        }
      }

      else if (v40 == 83)
      {
        v72 = MEMORY[0x277CCABB0];
        v73 = ivar_getOffset(v26);
        v44 = objc_msgSend_numberWithUnsignedShort_(v72, v74, *&a1[v73]);
      }

      else
      {
        if (v40 != 99)
        {
          goto LABEL_57;
        }

        v41 = MEMORY[0x277CCABB0];
        v42 = ivar_getOffset(v26);
        v44 = objc_msgSend_numberWithChar_(v41, v43, a1[v42]);
      }

LABEL_55:
      v39 = v44;
      if (!v44)
      {
        goto LABEL_57;
      }

LABEL_56:
      objc_msgSend__CKLogToFileHandle_atDepth_(v39, v38, v5, (v95 + 1));

      goto LABEL_57;
    }

    if (v40 > 66)
    {
      if (v40 > 75)
      {
        if (v40 == 76)
        {
          v67 = MEMORY[0x277CCABB0];
          v68 = ivar_getOffset(v26);
          v44 = objc_msgSend_numberWithUnsignedLong_(v67, v69, *&a1[v68]);
        }

        else
        {
          if (v40 != 81)
          {
            goto LABEL_57;
          }

          v54 = MEMORY[0x277CCABB0];
          v55 = ivar_getOffset(v26);
          v44 = objc_msgSend_numberWithUnsignedLongLong_(v54, v56, *&a1[v55]);
        }
      }

      else if (v40 == 67)
      {
        v64 = MEMORY[0x277CCABB0];
        v65 = ivar_getOffset(v26);
        v44 = objc_msgSend_numberWithUnsignedChar_(v64, v66, a1[v65]);
      }

      else
      {
        if (v40 != 73)
        {
          goto LABEL_57;
        }

        v45 = MEMORY[0x277CCABB0];
        v46 = ivar_getOffset(v26);
        v44 = objc_msgSend_numberWithUnsignedInt_(v45, v47, *&a1[v46]);
      }

      goto LABEL_55;
    }

    if (v40 == 42)
    {
      v85 = MEMORY[0x277CCACA8];
      v86 = ivar_getOffset(v26);
      v44 = objc_msgSend_stringWithUTF8String_(v85, v87, &a1[v86]);
      goto LABEL_55;
    }

    if (v40 != 64)
    {
      if (v40 != 66)
      {
        goto LABEL_57;
      }

      v51 = MEMORY[0x277CCABB0];
      v52 = ivar_getOffset(v26);
      v44 = objc_msgSend_numberWithBool_(v51, v53, a1[v52]);
      goto LABEL_55;
    }

    v70 = object_getIvar(a1, v26);
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())))
    {
      v39 = v70;
    }

    else
    {
      objc_msgSend__CKLogToFileHandle_atDepth_(v70, v71, v5, (v95 + 1));
      v39 = 0;
    }

    if (v39)
    {
      goto LABEL_56;
    }

LABEL_57:

    objc_autoreleasePoolPop(v23);
    ++v16;
    --v22;
  }

  while (v22);
  free(v14);
  v90 = sub_2251995B8();
  objc_msgSend_writeData_(v5, v91, v90);

  sub_22519960C(v95, v5);
  v92 = sub_2251998CC();
  objc_msgSend_writeData_(v5, v93, v92);

LABEL_72:
}

id sub_22519AA58()
{
  if (qword_280D582E0 != -1)
  {
    dispatch_once(&qword_280D582E0, &unk_28385D1C0);
  }

  v1 = qword_280D582D8;

  return v1;
}

id sub_22519AF58()
{
  if (qword_280D582F0 != -1)
  {
    dispatch_once(&qword_280D582F0, &unk_28385D1E0);
  }

  v1 = qword_280D582E8;

  return v1;
}

id sub_22519AFAC()
{
  if (qword_280D58300 != -1)
  {
    dispatch_once(&qword_280D58300, &unk_28385D200);
  }

  v1 = qword_280D582F8;

  return v1;
}

id sub_22519B000()
{
  if (qword_280D58310 != -1)
  {
    dispatch_once(&qword_280D58310, &unk_28385D220);
  }

  v1 = qword_280D58308;

  return v1;
}

void sub_22519B144(void *a1, uint64_t a2, void *a3)
{
  v24 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = sub_22519B000();
  objc_msgSend_writeData_(v24, v6, v5);

  v9 = objc_msgSend_name(a1, v7, v8);
  objc_msgSend_CKWriteString_(v24, v10, v9);

  v11 = sub_22519B000();
  objc_msgSend_writeData_(v24, v12, v11);

  v13 = sub_22519AA58();
  objc_msgSend_writeData_(v24, v14, v13);

  v15 = sub_22519AF58();
  objc_msgSend_writeData_(v24, v16, v15);

  v19 = objc_msgSend_type(a1, v17, v18);
  if ((v19 - 1) >= 8)
  {
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"(unknown: %i)", v19);
  }

  else
  {
    v21 = *(&off_278548558 + (v19 - 1));
  }

  objc_msgSend_CKWriteString_(v24, v20, v21);

  v22 = sub_22519AFAC();
  objc_msgSend_writeData_(v24, v23, v22);

  objc_autoreleasePoolPop(v4);
}

void sub_22519B2A4(void *a1, uint64_t a2, void *a3, int a4)
{
  v21 = a3;
  v6 = objc_autoreleasePoolPush();
  if (objc_msgSend_hasValue(a1, v7, v8))
  {
    v11 = objc_msgSend_value(a1, v9, v10);
    objc_msgSend__CKLogToFileHandle_atDepth_(v11, v12, v21, (a4 + 1));
  }

  v13 = sub_22519B378();
  objc_msgSend_writeData_(v21, v14, v13);

  if (objc_msgSend_hasZoneIdentifier(a1, v15, v16))
  {
    v19 = objc_msgSend_zoneIdentifier(a1, v17, v18);
    objc_msgSend__CKLogToFileHandle_atDepth_(v19, v20, v21, (a4 + 1));
  }

  objc_autoreleasePoolPop(v6);
}

id sub_22519B378()
{
  if (qword_280D58330 != -1)
  {
    dispatch_once(&qword_280D58330, &unk_28385D260);
  }

  v1 = qword_280D58328;

  return v1;
}

void sub_22519B3CC(void *a1, uint64_t a2, void *a3, int a4)
{
  v27 = a3;
  v6 = objc_autoreleasePoolPush();
  if (objc_msgSend_hasValue(a1, v7, v8))
  {
    v11 = objc_msgSend_value(a1, v9, v10);
    objc_msgSend__CKLogToFileHandle_atDepth_(v11, v12, v27, (a4 + 1));
  }

  v13 = sub_22519B378();
  objc_msgSend_writeData_(v27, v14, v13);

  if (objc_msgSend_hasOwnerIdentifier(a1, v15, v16))
  {
    v19 = objc_msgSend_ownerIdentifier(a1, v17, v18);
    objc_msgSend__CKLogToFileHandle_atDepth_(v19, v20, v27, (a4 + 1));
  }

  if (objc_msgSend_hasDatabaseType(a1, v17, v18))
  {
    v21 = sub_22519B378();
    objc_msgSend_writeData_(v27, v22, v21);

    objc_msgSend_databaseType(a1, v23, v24);
    v25 = CKDatabaseScopeString();
    objc_msgSend__CKLogToFileHandle_atDepth_(v25, v26, v27, (a4 + 1));
  }

  objc_autoreleasePoolPop(v6);
}

void sub_22519BACC(void *a1, uint64_t a2, void *a3, int a4)
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a3;
  objc_msgSend_time(a1, v8, v9);
  v12 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v6, v10, v11);
  objc_msgSend__CKLogToFileHandle_atDepth_(v12, v13, v7, (a4 + 1));

  v14 = sub_22519AA58();
  objc_msgSend_writeData_(v7, v15, v14);

  v16 = sub_22519AF58();
  objc_msgSend_writeData_(v7, v17, v16);

  v18 = MEMORY[0x277CCABB0];
  objc_msgSend_time(a1, v19, v20);
  v23 = objc_msgSend_numberWithDouble_(v18, v21, v22);
  objc_msgSend__CKLogToFileHandle_atDepth_(v23, v24, v7, (a4 + 1));

  v26 = sub_22519AFAC();
  objc_msgSend_writeData_(v7, v25, v26);
}

uint64_t sub_22519D07C(uint64_t a1, const char *a2)
{
  qword_280D581C8 = objc_msgSend_dataUsingEncoding_(@"{ ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D0C0(uint64_t a1, const char *a2)
{
  qword_280D581D8 = objc_msgSend_dataUsingEncoding_(@"\n", a2, 4);

  return MEMORY[0x2821F96F8]();
}

id sub_22519D104()
{
  if (qword_280D581F0 != -1)
  {
    dispatch_once(&qword_280D581F0, &unk_28385CFE0);
  }

  v1 = qword_280D581E8;

  return v1;
}

id sub_22519D158()
{
  if (qword_280D58260 != -1)
  {
    dispatch_once(&qword_280D58260, &unk_28385D0C0);
  }

  v1 = qword_280D58258;

  return v1;
}

uint64_t sub_22519D1AC(uint64_t a1, const char *a2)
{
  qword_280D581E8 = objc_msgSend_dataUsingEncoding_(@"  ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D1F0(uint64_t a1, const char *a2)
{
  qword_280D581F8 = objc_msgSend_dataUsingEncoding_(@"    ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D234(uint64_t a1, const char *a2)
{
  qword_280D58208 = objc_msgSend_dataUsingEncoding_(@"      ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D278(uint64_t a1, const char *a2)
{
  qword_280D58218 = objc_msgSend_dataUsingEncoding_(@"        ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D2BC(uint64_t a1, const char *a2)
{
  qword_280D58228 = objc_msgSend_dataUsingEncoding_(@"          ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D300(uint64_t a1, const char *a2)
{
  qword_280D58238 = objc_msgSend_dataUsingEncoding_(@"            ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D344(uint64_t a1, const char *a2)
{
  qword_280D58248 = objc_msgSend_dataUsingEncoding_(@"              ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D388(uint64_t a1, const char *a2)
{
  qword_280D58258 = objc_msgSend_dataUsingEncoding_(@"                ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D3CC(uint64_t a1, const char *a2)
{
  qword_280D58268 = objc_msgSend_dataUsingEncoding_(@" = ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D410(uint64_t a1, const char *a2)
{
  qword_280D58278 = objc_msgSend_dataUsingEncoding_(@" }", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D454(uint64_t a1, const char *a2)
{
  qword_280D58288 = objc_msgSend_dataUsingEncoding_(@"[ ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D498(uint64_t a1, const char *a2)
{
  qword_280D58298 = objc_msgSend_dataUsingEncoding_(@", ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D4DC(uint64_t a1, const char *a2)
{
  qword_280D582A8 = objc_msgSend_dataUsingEncoding_(@" ]", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D520(uint64_t a1, const char *a2)
{
  qword_280D582B8 = objc_msgSend_dataUsingEncoding_(@"<", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D564(uint64_t a1, const char *a2)
{
  qword_280D582C8 = objc_msgSend_dataUsingEncoding_(@">", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D5A8(uint64_t a1, const char *a2)
{
  qword_280D582D8 = objc_msgSend_dataUsingEncoding_(@" ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D5EC(uint64_t a1, const char *a2)
{
  qword_280D582E8 = objc_msgSend_dataUsingEncoding_(@"("), a2, 4;

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D630(uint64_t a1, const char *a2)
{
  qword_280D582F8 = objc_msgSend_dataUsingEncoding_(@""), a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D674(uint64_t a1, const char *a2)
{
  qword_280D58308 = objc_msgSend_dataUsingEncoding_(@"", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D6B8(uint64_t a1, const char *a2)
{
  qword_280D58318 = objc_msgSend_dataUsingEncoding_(@": ", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D6FC(uint64_t a1, const char *a2)
{
  qword_280D58328 = objc_msgSend_dataUsingEncoding_(@"|", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D740(uint64_t a1, const char *a2)
{
  qword_280D58338 = objc_msgSend_dataUsingEncoding_(@"[", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D784(uint64_t a1, const char *a2)
{
  qword_280D58348 = objc_msgSend_dataUsingEncoding_(@",", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519D7C8(uint64_t a1, const char *a2)
{
  qword_280D58358 = objc_msgSend_dataUsingEncoding_(@"]", a2, 4);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22519DDF4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_size(v4, v6, v7);
  if (v8 <= objc_msgSend_size(v5, v9, v10))
  {
    v14 = objc_msgSend_size(v4, v11, v12);
    v13 = v14 < objc_msgSend_size(v5, v15, v16);
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

uint64_t sub_22519DE78(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_count(v4, v6, v7);
  if (v8 <= objc_msgSend_count(v5, v9, v10))
  {
    v14 = objc_msgSend_count(v4, v11, v12);
    v13 = v14 < objc_msgSend_count(v5, v15, v16);
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

void sub_22519F284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22519F2A4(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = objc_msgSend_substringFromIndex_(*(a1 + 32), v3, 12);
  v5 = objc_msgSend_initWithFormat_(v2, v4, @"%@", v10);
  v6 = v5;
  v9 = objc_msgSend_UTF8String(v6, v7, v8);
  printf("%s", v9);
}

void sub_22519F334(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = objc_msgSend_initWithFormat_(v2, v3, @"\n%@", *(a1 + 32));
  v4 = v8;
  v7 = objc_msgSend_UTF8String(v8, v5, v6);
  puts(v7);
}

void sub_22519FE88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v7 = a4;
  objc_msgSend_addObject_(v5, v6, a2);
  v7[2]();
}

void sub_22519FEEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v7 = a4;
  objc_msgSend_addObject_(v5, v6, a2);
  v7[2]();
}

void sub_22519FF50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v7 = a4;
  objc_msgSend_addObject_(v5, v6, a2);
  v7[2]();
}

void sub_22519FFB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_CloudkitlogPar_7.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void sub_2251A0004(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_CloudkitlogPar_8.isa, a2);
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void sub_2251A009C()
{
  v0 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = objc_msgSend_initWithFormat_(v0, v1, @"Finished");
  v2 = v6;
  v5 = objc_msgSend_UTF8String(v6, v3, v4);
  puts(v5);
}

void sub_2251A03FC(uint64_t a1, void *a2)
{
  v197[3] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = objc_msgSend_uuid(v2, v4, v5);
  v8 = objc_msgSend_initWithFormat_(v3, v7, @"Traffic log for request %@", v6);
  v9 = v8;
  v12 = objc_msgSend_UTF8String(v9, v10, v11);
  puts(v12);

  v15 = objc_msgSend_requestTime(v2, v13, v14);
  if (v15)
  {
  }

  else
  {
    v20 = objc_msgSend_responseTime(v2, v16, v17);

    if (!v20)
    {
      goto LABEL_16;
    }
  }

  v21 = objc_msgSend_requestTime(v2, v18, v19);
  v24 = v21;
  if (v21)
  {
    v25 = v21;
  }

  else
  {
    v26 = objc_msgSend_responseTime(v2, v22, v23);
    v25 = objc_msgSend_dateByAddingTimeInterval_(v26, v27, v28, -900.0);
  }

  v31 = objc_msgSend_responseTime(v2, v29, v30);
  v34 = v31;
  if (v31)
  {
    v35 = v31;
  }

  else
  {
    v36 = objc_msgSend_requestTime(v2, v32, v33);
    v35 = objc_msgSend_dateByAddingTimeInterval_(v36, v37, v38, 900.0);
  }

  v39 = MEMORY[0x277CCACA8];
  v186 = v25;
  v42 = objc_msgSend_dateByAddingTimeInterval_(v25, v40, v41, -300.0);
  objc_msgSend_timeIntervalSince1970(v42, v43, v44);
  v47 = objc_msgSend_stringWithFormat_(v39, v45, @"%lf", v46);

  v48 = MEMORY[0x277CCACA8];
  v185 = v35;
  v51 = objc_msgSend_dateByAddingTimeInterval_(v35, v49, v50, 300.0);
  objc_msgSend_timeIntervalSince1970(v51, v52, v53);
  v56 = objc_msgSend_stringWithFormat_(v48, v54, @"%lf", v55);

  v57 = objc_opt_new();
  objc_msgSend_setScheme_(v57, v58, @"https");
  v61 = objc_msgSend_responseHeaders(v2, v59, v60);
  v63 = objc_msgSend_CKObjectForKeyCaseInsensitive_(v61, v62, 0x28387C7A0);
  hasPrefix = objc_msgSend_hasPrefix_(v63, v64, @"ICLOUD");

  if (hasPrefix)
  {
    objc_msgSend_setHost_(v57, v66, @"splunk-qa.icloud.apple.com");
  }

  else
  {
    objc_msgSend_setHost_(v57, v66, @"splunk.icloud.apple.com");
  }

  objc_msgSend_setPath_(v57, v67, @"/en-US/app/launcher/search");
  v69 = objc_msgSend_queryItemWithName_value_(MEMORY[0x277CCAD18], v68, @"earliest", v47);
  v197[0] = v69;
  v71 = objc_msgSend_queryItemWithName_value_(MEMORY[0x277CCAD18], v70, @"latest", v56);
  v197[1] = v71;
  v72 = MEMORY[0x277CCAD18];
  v73 = MEMORY[0x277CCACA8];
  v76 = objc_msgSend_uuid(v2, v74, v75);
  v78 = objc_msgSend_stringWithFormat_(v73, v77, @"search index=ck* %@", v76);
  v80 = objc_msgSend_queryItemWithName_value_(v72, v79, @"q", v78);
  v197[2] = v80;
  v82 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v81, v197, 3);
  objc_msgSend_setQueryItems_(v57, v83, v82);

  v86 = objc_msgSend_URL(v57, v84, v85);
  v89 = v86;
  if (v86)
  {
    v90 = objc_msgSend_absoluteString(v86, v87, v88);
    v92 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v90, v91, @"*", @"%2A");
    v93 = objc_alloc(MEMORY[0x277CCACA8]);
    v95 = objc_msgSend_initWithFormat_(v93, v94, @"%@", v92);
    v96 = v95;
    v99 = objc_msgSend_UTF8String(v96, v97, v98);
    puts(v99);
  }

LABEL_16:
  v100 = objc_msgSend_fileHandleWithStandardOutput(MEMORY[0x277CCA9F8], v18, v19);
  v101 = objc_alloc(MEMORY[0x277CCACA8]);
  v103 = objc_msgSend_initWithFormat_(v101, v102, @">>>>>>>> Request");
  v104 = v103;
  v107 = objc_msgSend_UTF8String(v104, v105, v106);
  puts(v107);

  v110 = objc_msgSend_requestTime(v2, v108, v109);
  objc_msgSend_CKLogToFileHandle_(v110, v111, v100);

  v112 = MEMORY[0x277CCACA8];
  v115 = objc_msgSend_requestMethod(v2, v113, v114);
  v118 = objc_msgSend_requestURL(v2, v116, v117);
  v120 = objc_msgSend_stringWithFormat_(v112, v119, @"%@ %@", v115, v118);
  objc_msgSend_CKLogToFileHandle_(v120, v121, v100);

  v124 = objc_msgSend_requestHeaders(v2, v122, v123);
  sub_2251A0B50(v124, v100);

  if (objc_msgSend_bodyStreamResetCount(v2, v125, v126) >= 1)
  {
    v129 = MEMORY[0x277CCACA8];
    v130 = objc_msgSend_bodyStreamResetCount(v2, v127, v128);
    v133 = objc_msgSend_bodyStreamResetCount(v2, v131, v132);
    v135 = @"s";
    if (v133 == 1)
    {
      v135 = &stru_28385ED00;
    }

    v136 = objc_msgSend_stringWithFormat_(v129, v134, @"\n=>=>=>=>=>Body stream was reset %li time%@. This was what was streamed the final time:", v130, v135);
    objc_msgSend_CKLogToFileHandle_(v136, v137, v100);
  }

  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v138 = objc_msgSend_requestObjects(v2, v127, v128);
  v140 = objc_msgSend_countByEnumeratingWithState_objects_count_(v138, v139, &v191, v196, 16);
  if (v140)
  {
    v142 = v140;
    v143 = *v192;
    do
    {
      for (i = 0; i != v142; ++i)
      {
        if (*v192 != v143)
        {
          objc_enumerationMutation(v138);
        }

        objc_msgSend_CKLogToFileHandle_(*(*(&v191 + 1) + 8 * i), v141, v100);
      }

      v142 = objc_msgSend_countByEnumeratingWithState_objects_count_(v138, v141, &v191, v196, 16);
    }

    while (v142);
  }

  v145 = objc_alloc(MEMORY[0x277CCACA8]);
  v147 = objc_msgSend_initWithFormat_(v145, v146, @"\n<<<<<<<< Response");
  v148 = v147;
  v151 = objc_msgSend_UTF8String(v148, v149, v150);
  puts(v151);

  v154 = objc_msgSend_responseTime(v2, v152, v153);
  objc_msgSend_CKLogToFileHandle_(v154, v155, v100);

  v156 = MEMORY[0x277CCACA8];
  v159 = objc_msgSend_responseStatus(v2, v157, v158);
  v161 = objc_msgSend_stringWithFormat_(v156, v160, @"Status %lu", v159);
  objc_msgSend_CKLogToFileHandle_(v161, v162, v100);

  v165 = objc_msgSend_responseHeaders(v2, v163, v164);
  sub_2251A0B50(v165, v100);

  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  v168 = objc_msgSend_responseObjects(v2, v166, v167);
  v170 = objc_msgSend_countByEnumeratingWithState_objects_count_(v168, v169, &v187, v195, 16);
  if (v170)
  {
    v172 = v170;
    v173 = *v188;
    do
    {
      for (j = 0; j != v172; ++j)
      {
        if (*v188 != v173)
        {
          objc_enumerationMutation(v168);
        }

        objc_msgSend_CKLogToFileHandle_(*(*(&v187 + 1) + 8 * j), v171, v100);
      }

      v172 = objc_msgSend_countByEnumeratingWithState_objects_count_(v168, v171, &v187, v195, 16);
    }

    while (v172);
  }

  v175 = objc_alloc(MEMORY[0x277CCACA8]);
  v178 = objc_msgSend_uuid(v2, v176, v177);
  v180 = objc_msgSend_initWithFormat_(v175, v179, @"End traffic log for operation %@\n\n", v178);
  v181 = v180;
  v184 = objc_msgSend_UTF8String(v181, v182, v183);
  puts(v184);
}