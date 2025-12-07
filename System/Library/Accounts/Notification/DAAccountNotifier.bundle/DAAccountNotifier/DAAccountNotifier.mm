id sub_29C8B01A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x29EDCA608];
  v5 = objc_msgSend_accountsWithAccountTypeIdentifier_(*(a1 + 32), a2, *(a1 + 40), a4);
  v6 = MEMORY[0x29EDB8DE8];
  v10 = objc_msgSend_count(v5, v7, v8, v9);
  v40 = objc_msgSend_arrayWithCapacity_(v6, v11, v10, v12);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = v5;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v41, v45, 16);
  if (v15)
  {
    v19 = v15;
    v20 = *v42;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(v13);
        }

        v22 = *(*(&v41 + 1) + 8 * i);
        v23 = objc_msgSend_identifier(v22, v16, v17, v18);
        v27 = objc_msgSend_identifier(*(a1 + 48), v24, v25, v26);
        isEqualToString = objc_msgSend_isEqualToString_(v23, v28, v27, v29);

        if ((isEqualToString & 1) == 0)
        {
          v31 = objc_msgSend_accountTypeWithIdentifier_(*(a1 + 32), v16, *(a1 + 40), v18);
          objc_msgSend_setAccountType_(v22, v32, v31, v33);

          v38 = objc_msgSend_daAccountSubclassWithBackingAccountInfo_(MEMORY[0x29EDC0ED0], v34, v22, v35);
          if (v38)
          {
            objc_msgSend_addObject_(v40, v36, v38, v37);
          }
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v41, v45, 16);
    }

    while (v19);
  }

  return v40;
}

void sub_29C8B03B8()
{
  v0 = objc_opt_new();
  objc_msgSend_addObject_(v0, v1, *MEMORY[0x29EDB8480], v2);
  objc_msgSend_addObject_(v0, v3, *MEMORY[0x29EDB8498], v4);
  objc_msgSend_addObject_(v0, v5, *MEMORY[0x29EDB8488], v6);
  objc_msgSend_addObject_(v0, v7, *MEMORY[0x29EDB84A8], v8);
  objc_msgSend_addObject_(v0, v9, *MEMORY[0x29EDB8490], v10);
  v11 = qword_2A1A11330;
  qword_2A1A11330 = v0;
}

void sub_29C8B1E78(uint64_t a1, const char *a2)
{
  v9[3] = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDB8E50];
  v3 = *MEMORY[0x29EDB8350];
  v9[0] = @"username";
  v9[1] = v3;
  v9[2] = *MEMORY[0x29EDB8358];
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], a2, v9, 3);
  v7 = objc_msgSend_setWithArray_(v2, v5, v4, v6);
  v8 = qword_2A1A11320;
  qword_2A1A11320 = v7;
}

void sub_29C8B1F7C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v49[105] = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDB8E50];
  v5 = *MEMORY[0x29EDB8198];
  v49[0] = *MEMORY[0x29EDB8188];
  v49[1] = v5;
  v6 = *MEMORY[0x29EDB81B0];
  v49[2] = *MEMORY[0x29EDB81A0];
  v49[3] = v6;
  v49[4] = *MEMORY[0x29EDB81B8];
  v49[5] = @"active";
  v49[6] = @"authenticated";
  v49[7] = @"creationDate";
  v49[8] = @"credential";
  v49[9] = @"accountDescription";
  v49[10] = @"enabledDataclasses";
  v49[11] = @"identifier";
  v49[12] = @"owningBundleID";
  v49[13] = @"parentAccountIdentifier";
  v49[14] = @"provisionedDataclasses";
  v49[15] = @"supportsAuthentication";
  v49[16] = @"accountType";
  v49[17] = @"username";
  v7 = *MEMORY[0x29EDC5C20];
  v49[18] = @"visible";
  v49[19] = v7;
  v8 = *MEMORY[0x29EDC5C30];
  v49[20] = *MEMORY[0x29EDC5C28];
  v49[21] = v8;
  v9 = *MEMORY[0x29EDC5C50];
  v49[22] = *MEMORY[0x29EDC5C40];
  v49[23] = v9;
  v10 = *MEMORY[0x29EDC5C70];
  v49[24] = *MEMORY[0x29EDC5C68];
  v49[25] = v10;
  v11 = *MEMORY[0x29EDC5C80];
  v49[26] = *MEMORY[0x29EDC5C78];
  v49[27] = v11;
  v12 = *MEMORY[0x29EDC5C38];
  v49[28] = *MEMORY[0x29EDC5C88];
  v49[29] = v12;
  v13 = *MEMORY[0x29EDC5C58];
  v49[30] = *MEMORY[0x29EDC5C48];
  v49[31] = v13;
  v49[32] = *MEMORY[0x29EDC5C60];
  v49[33] = @"MCAccountIsManaged";
  v49[34] = @"CalAccountPropertyCalDAVAttachmentDownloadHasTakenPlace";
  v49[35] = @"CalAccountPropertyCalDAVAttachmentDownloadHasTakenPlace";
  v49[36] = @"kCalDAVCollectionSetName";
  v49[37] = @"CalAccountPropertyCalDAVLocalDataMigrationHasTakenPlace";
  v49[38] = @"kCalDAVPrincipalIsManuallyConfigured";
  v49[39] = @"kCalDAVPrincipalPathKey";
  v49[40] = @"CalAccountPropertyCalDAVSkipCredentialVerification";
  v49[41] = @"CalAccountPropertyCalDAVSyncHasTakenPlace";
  v49[42] = @"kCalDAVUseKerberos";
  v49[43] = @"kCalDAVWebServicesRecordGUID";
  v49[44] = @"kCalDAVDelegatePrincipalIsWriteableKey";
  v49[45] = @"kCalDAVDelegatePrincipalTitleKey";
  v49[46] = @"CalAccountPropertyExchangeUseExternalURL";
  v49[47] = @"kCalDAVMainPrincipalUIDKey";
  v49[48] = @"kCalDAVPrincipalIsDelegate";
  v49[49] = @"kCalDAVPrincipalsKey";
  v49[50] = @"kCalDAVPushDisabled";
  v49[51] = @"kCalDAVRefreshIntervalKey";
  v49[52] = @"DAAccountValidationDomain";
  v49[53] = @"CalDAVAccountVersion";
  v49[54] = @"CalDAVHostKey";
  v49[55] = @"CalDAVMainPrincipalUID";
  v49[56] = @"CalDAVMobileAccountCollectionSetName";
  v49[57] = @"CalDAVMobileAccountIsWritable";
  v49[58] = @"CalDAVMobileAccountOverriddenPort";
  v49[59] = @"CalDAVMobileAccountOverriddenScheme";
  v49[60] = @"CalDAVMobileAccountOverriddenServer";
  v49[61] = @"CalDAVMobileAccountSearchPropertySet";
  v49[62] = @"CalDAVMobileAccountSearchPropertySetKey_CoreDAV";
  v49[63] = @"CalDAVMobileAccountServerVersion";
  v49[64] = @"WasUpgradedFromLegacy";
  v49[65] = @"CalDAVPortKey";
  v49[66] = @"CalDAVPrincipals";
  v49[67] = @"CalDAVSchemeKey";
  v14 = objc_msgSend_CalDAVSubscribedCalendarsKey(MEMORY[0x29EDC0F30], a2, a3, a4);
  v49[68] = v14;
  v18 = objc_msgSend_DAAccountDoNotSaveReason(MEMORY[0x29EDC0F30], v15, v16, v17);
  v49[69] = v18;
  v49[70] = @"DAAccountEmailAddress";
  v49[71] = @"DAAccountHost";
  v22 = objc_msgSend_DAAccountIdentifiersToIgnoreForUniquenessCheck(MEMORY[0x29EDC0F30], v19, v20, v21);
  v49[72] = v22;
  v49[73] = @"DAOldKeychainURLs";
  v49[74] = @"DAAccountPersistentUUID";
  v49[75] = @"DAAccountPort";
  v26 = objc_msgSend_DAAccountPrincipalPath(MEMORY[0x29EDC0F30], v23, v24, v25);
  v49[77] = @"ACUIDisplayUsername";
  v49[78] = @"DAAccountUseSSL";
  v49[79] = @"DAAccountUseTrustedSSLCertificate";
  v49[80] = @"DAAccountVersion2";
  v49[81] = @"DAAcountWasUpgradedFromLegacyAccount";
  v49[82] = @"DAAccountDidAutodiscover";
  v49[83] = @"DAEASEndPointFQDN";
  v49[84] = @"DAEncryptionIdentityPersistentReference";
  v49[85] = @"DAExchangeOAuthSupportedKey";
  v49[86] = @"DAExchangeOAuthURI";
  v49[87] = @"DAExchangeOAuthTokenRequestURI";
  v49[88] = @"DAIdentityPersist";
  v49[89] = @"DAIdentityPersistIsManagedByProfile";
  v49[90] = @"DASigningIdentityPersistentReference";
  v49[91] = @"DATrustSettingsExceptions";
  v49[76] = v26;
  v49[92] = @"SubCalCalDAVURL";
  v49[93] = @"SubCalExtRep";
  v30 = objc_msgSend_SubCalFilterAlarmsKey(MEMORY[0x29EDC0F30], v27, v28, v29);
  v49[94] = v30;
  v49[95] = @"FilterAttachments";
  v49[96] = @"com.apple.ical.urlsubscribe.filtertasks";
  v49[97] = @"isManagedByServer";
  v49[98] = @"RefreshInterval";
  v49[99] = @"SubCalShouldRemoveAlarms";
  v34 = objc_msgSend_SubCalSubscriptionURLKey(MEMORY[0x29EDC0F30], v31, v32, v33);
  v49[100] = v34;
  v49[101] = @"SubCalSyncId";
  v38 = objc_msgSend_SubCalTitleKey(MEMORY[0x29EDC0F30], v35, v36, v37);
  v49[102] = v38;
  v49[103] = @"SubCalAccountVersion";
  v42 = objc_msgSend_SubCalInsecureConnectionApproved(MEMORY[0x29EDC0F30], v39, v40, v41);
  v49[104] = v42;
  v44 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v43, v49, 105);
  v47 = objc_msgSend_setWithArray_(v4, v45, v44, v46);
  v48 = qword_2A1A11340;
  qword_2A1A11340 = v47;
}

void sub_29C8B2878(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], a2, a3, a4);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v6, a1, a2, @"DAAccountNotifier.m", 568, @"account should not be nil for a change type of modify");
}

void sub_29C8B28EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_currentHandler(MEMORY[0x29EDB9F28], a2, a3, a4);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v6, a1, a2, @"DAAccountNotifier.m", 569, @"oldAccount should not be nil for a change type of modify");
}