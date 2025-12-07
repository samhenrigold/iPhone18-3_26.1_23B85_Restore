void sub_2251A0B50(void *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = objc_msgSend_allKeys(v3, v5, v6);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v20, v24, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = MEMORY[0x277CCACA8];
        v15 = objc_msgSend_objectForKeyedSubscript_(v3, v9, v13);
        v17 = objc_msgSend_stringWithFormat_(v14, v16, @"%@: %@", v13, v15);
        objc_msgSend_CKLogToFileHandle_(v17, v18, v4);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v20, v24, 16);
    }

    while (v10);
  }
}

uint64_t sub_2251A1078(void *a1, uint64_t a2, void *a3, void *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (objc_msgSend_needsEncryption(a1, v7, v8))
  {
    v11 = objc_msgSend_copy(v6, v9, v10);
    v14 = objc_msgSend_mergeableValueID(v11, v12, v13);

    if (!v14)
    {
      v17 = objc_msgSend_valueID(a1, v15, v16);
      objc_msgSend_setMergeableValueID_(v11, v18, v17);
    }

    v19 = objc_msgSend_metadata(a1, v15, v16);
    v22 = objc_msgSend_envelope(v19, v20, v21);

    if (v22)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v25 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
      {
        v49 = v25;
        v52 = objc_msgSend_deltaID(a1, v50, v51);
        *buf = 138412290;
        *&buf[4] = v52;
        _os_log_debug_impl(&dword_22506F000, v49, OS_LOG_TYPE_DEBUG, "Throwing away cached envelope for %@", buf, 0xCu);
      }

      v28 = objc_msgSend_metadata(a1, v26, v27);
      objc_msgSend_setEnvelope_(v28, v29, 0);
    }

    v30 = objc_msgSend_metadata(a1, v23, v24);
    v32 = objc_msgSend__encryptWithContext_error_(v30, v31, v11, a4);

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_2251A1438;
    aBlock[3] = &unk_278545AD0;
    aBlock[4] = v32;
    v35 = _Block_copy(aBlock);
    if (v32)
    {
      v36 = objc_msgSend_asset(a1, v33, v34);
      v37 = v36 == 0;

      if (!v37)
      {
LABEL_12:
        v39 = 1;
LABEL_24:
        v35[2](v35);

        goto LABEL_25;
      }

      *buf = 0;
      v53 = 0;
      v40 = objc_msgSend_dataWithError_(a1, v38, &v53);
      v43 = v53;
      if (v40)
      {
        objc_msgSend_shareProtection(v11, v41, v42);
        objc_msgSend_dataUsingEncoding_(@"payload", v44, 4);
        v46 = PCSKeyEnvelopeEncrypt();
        if (v46)
        {
          objc_msgSend_setEncryptedData_(a1, v45, v46);

          goto LABEL_12;
        }

        if (a4)
        {
          v47 = *buf;
          *a4 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v45, *MEMORY[0x277CBC120], 1000, *buf, @"Failed to encrypt delta payload");
        }
      }

      else
      {
        if (a4)
        {
          *a4 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v41, *MEMORY[0x277CBC120], 2003, v43, @"Mergeable delta encryption failed, missing delta payload");
        }
      }
    }

    v39 = 0;
    goto LABEL_24;
  }

  v39 = 1;
LABEL_25:

  return v39;
}

void sub_2251A1438(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_2251A1448(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v9 = objc_msgSend_copy(v6, v7, v8);
  v12 = objc_msgSend_mergeableValueID(v9, v10, v11);

  if (!v12)
  {
    v15 = objc_msgSend_valueID(a1, v13, v14);
    objc_msgSend_setMergeableValueID_(v9, v16, v15);
  }

  v17 = objc_msgSend_metadata(a1, v13, v14);
  v20 = objc_msgSend_needsDecryption(v17, v18, v19);

  if (v20)
  {
    v23 = objc_msgSend_metadata(a1, v21, v22);
    v25 = objc_msgSend__decryptWithContext_error_(v23, v24, v9, a4);
  }

  else
  {
    v25 = 0;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2251A1720;
  aBlock[3] = &unk_278545AD0;
  aBlock[4] = v25;
  v26 = _Block_copy(aBlock);
  if (objc_msgSend_needsDecryption(a1, v27, v28))
  {
    if (v25)
    {
      v31 = objc_msgSend_asset(a1, v29, v30);

      if (v31)
      {
        v34 = objc_msgSend_shareProtection(v6, v32, v33);
        v37 = objc_msgSend_pcsManager(v6, v35, v36);
        v39 = objc_msgSend_unwrapAssetKeyWithShareProtection_pcsManager_error_(a1, v38, v34, v37, a4);

        if ((v39 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_14;
      }

      v42 = objc_msgSend_encryptedData(a1, v32, v33);
      if (v42)
      {
        objc_msgSend_shareProtection(v9, v40, v41);
        objc_msgSend_dataUsingEncoding_(@"payload", v43, 4);
        v45 = PCSKeyEnvelopeDecrypt();
        if (!v45)
        {
          if (a4)
          {
            *a4 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v44, *MEMORY[0x277CBC120], 5004, 0, @"Failed to decrypt mergeable delta payload");
          }

          goto LABEL_20;
        }

        objc_msgSend_set_data_(a1, v44, v45);
        objc_msgSend_setEncryptedData_(a1, v46, 0);

        goto LABEL_14;
      }

      if (a4)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v40, *MEMORY[0x277CBC120], 2003, @"Mergeable delta decryption failed, encrypted payload missing");
        *a4 = v47 = 0;
        goto LABEL_21;
      }
    }

LABEL_20:
    v47 = 0;
    goto LABEL_21;
  }

LABEL_14:
  v47 = 1;
LABEL_21:
  v26[2](v26);

  return v47;
}

void sub_2251A1720(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL sub_2251A1730(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v11 = objc_msgSend_asset(a1, v9, v10);
  v14 = objc_msgSend_valueID(a1, v12, v13);
  v17 = objc_msgSend_recordID(v14, v15, v16);

  if (v17)
  {
    v20 = objc_msgSend_valueID(a1, v18, v19);
    v23 = objc_msgSend_key(v20, v21, v22);

    if (v23)
    {
      if (v11)
      {
        v25 = [CKDWrappingContext alloc];
        v28 = objc_msgSend_valueID(a1, v26, v27);
        v31 = objc_msgSend_recordID(v28, v29, v30);
        objc_msgSend_valueID(a1, v32, v33);
        v34 = v60 = v8;
        v37 = objc_msgSend_key(v34, v35, v36);
        v40 = objc_msgSend_deltaID(a1, v38, v39);
        v43 = objc_msgSend_signature(v11, v41, v42);
        objc_msgSend_referenceSignature(v11, v44, v45);
        v46 = v59 = a3;
        v48 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v25, v47, v31, v37, v40, v43, v46);

        v8 = v60;
        v51 = objc_msgSend_wrappedAssetKey(v11, v49, v50);
        v61 = 0;
        v53 = objc_msgSend_unwrapAssetKey_withRecordPCS_inContext_withError_(v60, v52, v51, v59, v48, &v61);
        v54 = v61;

        if (v53)
        {
          objc_msgSend_setAssetKey_(v11, v55, v53);
          v56 = 0;
        }

        else
        {
          v56 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v55, *MEMORY[0x277CBC120], 5004, v54, @"Failed to unwrap mergeable delta asset key");
        }
      }

      else
      {
        v56 = 0;
      }

      goto LABEL_12;
    }

    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v24, *MEMORY[0x277CBC120], 1017, @"Can't unwrap asset key for mergeable delta with no field name");
  }

  else
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v18, *MEMORY[0x277CBC120], 1017, @"Can't unwrap asset key for mergeable delta with no record ID");
  }
  v56 = ;
LABEL_12:
  if (a5)
  {
    v57 = v56;
    *a5 = v56;
  }

  return v56 == 0;
}

uint64_t sub_2251A19C4(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_valueID(a1, a2, a3);
  isEncrypted = objc_msgSend_isEncrypted(v3, v4, v5);

  return isEncrypted;
}

BOOL sub_2251A19FC(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_valueID(a1, a2, a3);
  isEncrypted = objc_msgSend_isEncrypted(v4, v5, v6);

  if (!isEncrypted)
  {
    return 0;
  }

  v10 = objc_msgSend_asset(a1, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_asset(a1, v11, v12);
    v16 = objc_msgSend_assetKey(v13, v14, v15);
    v17 = v16 == 0;
  }

  else
  {
    v13 = objc_msgSend_encryptedData(a1, v11, v12);
    v17 = v13 != 0;
  }

  return v17;
}

uint64_t sub_2251A1AF8(void *a1, uint64_t a2, void *a3, int a4, void *a5)
{
  v8 = a3;
  v11 = objc_msgSend_identifier(a1, v9, v10);
  v13 = objc_msgSend_envelopeContextWithIdentifier_error_(v8, v12, v11, a5);

  if (v13)
  {
    v18 = objc_msgSend_envelope(a1, v14, v15);
    if (v18)
    {
      objc_msgSend_shareProtection(v8, v16, v17);
      v19 = PCSKeyEnvelopeCreateWithValues();
      if (v19)
      {
        v21 = v19;
LABEL_17:

        goto LABEL_18;
      }

      if (a5)
      {
        objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v20, *MEMORY[0x277CBC120], 5004, 0, @"Failed to decrypt mergeable delta envelope");
        *a5 = LABEL_15:;
      }
    }

    else if (a4)
    {
      objc_msgSend_shareProtection(v8, v16, v17);
      v22 = PCSKeyEnvelopeCreate();
      if (v22)
      {
        v21 = v22;
        Envelope = PCSKeyEnvelopeGetEnvelope();
        objc_msgSend_setEnvelope_(a1, v25, Envelope);
        goto LABEL_17;
      }

      if (a5)
      {
        objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v23, *MEMORY[0x277CBC120], 1000, 0, @"Failed to create mergeable delta envelope");
        goto LABEL_15;
      }
    }

    else if (a5)
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v16, *MEMORY[0x277CBC120], 2003, @"Mergeable delta envelope missing");
      *a5 = v21 = 0;
      goto LABEL_17;
    }

    v21 = 0;
    goto LABEL_17;
  }

  v21 = 0;
LABEL_18:

  return v21;
}

const void *sub_2251A1CA8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v8 = objc_msgSend__envelopeWithContext_allowCreation_error_(a1, v7, v6, 1, a4);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2251A1F28;
  aBlock[3] = &unk_278545AD0;
  aBlock[4] = v8;
  v11 = _Block_copy(aBlock);
  if (v8)
  {
    v12 = MEMORY[0x277CBC468];
    v13 = objc_msgSend_vectors(a1, v9, v10);
    v15 = objc_msgSend_pDistributedTimestampsFromDeltaMetadataVectors_(v12, v14, v13);

    v18 = objc_msgSend_data(v15, v16, v17);
    if (objc_msgSend_encryptMergeableValueMetadata(v6, v19, v20))
    {
      objc_msgSend_shareProtection(v6, v21, v22);
      objc_msgSend_dataUsingEncoding_(@"encryptedTimestamps", v23, 4);
      v25 = PCSKeyEnvelopeEncrypt();
      if (v25)
      {
        objc_msgSend_setEncryptedTimestamps_(a1, v24, v25);
LABEL_7:

        CFRetain(v8);
LABEL_14:

        goto LABEL_15;
      }

      if (a4)
      {
        v31 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v24, *MEMORY[0x277CBC120], 1000, 0, @"Failed to encrypt mergeable delta timestamps");
        goto LABEL_12;
      }
    }

    else
    {
      objc_msgSend_shareProtection(v6, v21, v22);
      v25 = PCSKeyEnvelopeAuthenticate();
      if (v25)
      {
        v27 = objc_alloc(MEMORY[0x277CBC7A0]);
        v29 = objc_msgSend_initWithObject1_object2_(v27, v28, v18, v25);
        objc_msgSend_setAuthenticatedTimestamps_(a1, v30, v29);

        goto LABEL_7;
      }

      if (a4)
      {
        v31 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v26, *MEMORY[0x277CBC120], 1000, 0, @"Failed to authenticate mergeable delta timestamps");
LABEL_12:
        *a4 = v31;
      }
    }

    v8 = 0;
    goto LABEL_14;
  }

LABEL_15:
  v11[2](v11);

  return v8;
}

void sub_2251A1F28(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL sub_2251A1F38(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__decryptWithContext_error_(a1, a2, a3);
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return v4 != 0;
}

const void *sub_2251A1F70(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v8 = objc_msgSend__envelopeWithContext_allowCreation_error_(a1, v7, v6, 0, a4);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2251A27A0;
  aBlock[3] = &unk_278545AD0;
  aBlock[4] = v8;
  v10 = _Block_copy(aBlock);
  if (v8)
  {
    v207 = objc_msgSend_standaloneTranslatorWithDatabaseScope_(CKDProtocolTranslator, v9, 2);
    v208 = objc_msgSend_authenticatedTimestamps(a1, v11, v12);
    if (!v208)
    {
      goto LABEL_13;
    }

    v210 = 0;
    objc_msgSend_shareProtection(v6, v13, v14);
    v17 = objc_msgSend_v2(v208, v15, v16);
    v20 = objc_msgSend_v1(v208, v18, v19);
    v21 = PCSKeyEnvelopeVerify();

    v209[0] = MEMORY[0x277D85DD0];
    v209[1] = 3221225472;
    v209[2] = sub_2251A27B0;
    v209[3] = &unk_278545AD0;
    v209[4] = v21;
    v23 = _Block_copy(v209);
    if (v21 && CFBooleanGetValue(v21))
    {
      v24 = objc_alloc(MEMORY[0x277CBC248]);
      v27 = objc_msgSend_v1(v208, v25, v26);
      v29 = objc_msgSend_initWithData_(v24, v28, v27);

      v205 = objc_msgSend_deltaMetadataVectorsFromPDistributedTimestamps_error_(v207, v30, v29, a4);
      if (v205)
      {
        v33 = objc_msgSend_vectors(a1, v31, v32);
        v36 = objc_msgSend_previous(v33, v34, v35);
        v203 = objc_msgSend_mutableCopy(v36, v37, v38);

        v41 = objc_msgSend_vectors(a1, v39, v40);
        v44 = objc_msgSend_contents(v41, v42, v43);
        v201 = objc_msgSend_mutableCopy(v44, v45, v46);

        v49 = objc_msgSend_vectors(a1, v47, v48);
        v52 = objc_msgSend_removals(v49, v50, v51);
        v199 = objc_msgSend_mutableCopy(v52, v53, v54);

        v57 = objc_msgSend_vectors(a1, v55, v56);
        v60 = objc_msgSend_dependencies(v57, v58, v59);
        v197 = objc_msgSend_mutableCopy(v60, v61, v62);

        v65 = objc_msgSend_backingVector(v203, v63, v64);
        v68 = objc_msgSend_previous(v205, v66, v67);
        v71 = objc_msgSend_backingVector(v68, v69, v70);
        objc_msgSend_addAllClockValuesFromVector_(v65, v72, v71);

        v75 = objc_msgSend_backingVector(v201, v73, v74);
        v78 = objc_msgSend_contents(v205, v76, v77);
        v81 = objc_msgSend_backingVector(v78, v79, v80);
        objc_msgSend_addAllClockValuesFromVector_(v75, v82, v81);

        v85 = objc_msgSend_backingVector(v199, v83, v84);
        v88 = objc_msgSend_removals(v205, v86, v87);
        v91 = objc_msgSend_backingVector(v88, v89, v90);
        objc_msgSend_addAllClockValuesFromVector_(v85, v92, v91);

        v95 = objc_msgSend_backingVector(v197, v93, v94);
        v98 = objc_msgSend_dependencies(v205, v96, v97);
        v101 = objc_msgSend_backingVector(v98, v99, v100);
        objc_msgSend_addAllClockValuesFromVector_(v95, v102, v101);

        v103 = objc_alloc(MEMORY[0x277CBC468]);
        v105 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v103, v104, v203, v201, v199, v197);

        objc_msgSend_setVectors_(a1, v106, v105);
        v107 = 1;
      }

      else
      {
        v107 = 0;
      }
    }

    else
    {
      if (!a4)
      {
        v107 = 0;
        goto LABEL_12;
      }

      v29 = v210;
      objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v22, *MEMORY[0x277CBC120], 5004, v210, @"Failed to verify mergeable delta timestamps");
      *a4 = v107 = 0;
    }

LABEL_12:
    v23[2](v23);

    if ((v107 & 1) == 0)
    {
      v8 = 0;
LABEL_24:

      goto LABEL_25;
    }

LABEL_13:
    v110 = objc_msgSend_encryptedTimestamps(a1, v13, v14);
    if (v110)
    {
      v210 = 0;
      objc_msgSend_shareProtection(v6, v108, v109);
      objc_msgSend_dataUsingEncoding_(@"encryptedTimestamps", v111, 4);
      v113 = PCSKeyEnvelopeDecrypt();
      if (v113)
      {
        v114 = objc_alloc(MEMORY[0x277CBC248]);
        v116 = objc_msgSend_initWithData_(v114, v115, v113);
        v120 = objc_msgSend_deltaMetadataVectorsFromPDistributedTimestamps_error_(v207, v117, v116, a4);
        if (v120)
        {
          v121 = objc_msgSend_vectors(a1, v118, v119);
          v124 = objc_msgSend_previous(v121, v122, v123);
          v206 = objc_msgSend_mutableCopy(v124, v125, v126);

          v129 = objc_msgSend_vectors(a1, v127, v128);
          v132 = objc_msgSend_contents(v129, v130, v131);
          v204 = objc_msgSend_mutableCopy(v132, v133, v134);
          v198 = v116;

          v137 = objc_msgSend_vectors(a1, v135, v136);
          v140 = objc_msgSend_removals(v137, v138, v139);
          v202 = objc_msgSend_mutableCopy(v140, v141, v142);

          v145 = objc_msgSend_vectors(a1, v143, v144);
          v148 = objc_msgSend_dependencies(v145, v146, v147);
          v200 = objc_msgSend_mutableCopy(v148, v149, v150);

          v153 = objc_msgSend_backingVector(v206, v151, v152);
          v156 = objc_msgSend_previous(v120, v154, v155);
          v159 = objc_msgSend_backingVector(v156, v157, v158);
          objc_msgSend_addAllClockValuesFromVector_(v153, v160, v159);

          v163 = objc_msgSend_backingVector(v204, v161, v162);
          v166 = objc_msgSend_contents(v120, v164, v165);
          v169 = objc_msgSend_backingVector(v166, v167, v168);
          objc_msgSend_addAllClockValuesFromVector_(v163, v170, v169);

          v173 = objc_msgSend_backingVector(v202, v171, v172);
          v176 = objc_msgSend_removals(v120, v174, v175);
          v179 = objc_msgSend_backingVector(v176, v177, v178);
          objc_msgSend_addAllClockValuesFromVector_(v173, v180, v179);

          v183 = objc_msgSend_backingVector(v200, v181, v182);
          v186 = objc_msgSend_dependencies(v120, v184, v185);
          v189 = objc_msgSend_backingVector(v186, v187, v188);
          objc_msgSend_addAllClockValuesFromVector_(v183, v190, v189);

          v191 = objc_alloc(MEMORY[0x277CBC468]);
          v193 = objc_msgSend_initWithPreviousVector_contentsVector_removalsVector_dependenciesVector_(v191, v192, v206, v204, v202, v200);

          objc_msgSend_setVectors_(a1, v194, v193);
          goto LABEL_17;
        }
      }

      else if (a4)
      {
        v195 = v210;
        *a4 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v112, *MEMORY[0x277CBC120], 5004, v210, @"Failed to decrypt mergeable delta timestamps");
      }

      v8 = 0;
      goto LABEL_23;
    }

LABEL_17:
    CFRetain(v8);
LABEL_23:

    goto LABEL_24;
  }

LABEL_25:
  v10[2](v10);

  return v8;
}

void sub_2251A2724(_Unwind_Exception *a1)
{
  (*(v2 + 16))(v2);
  (*(v1 + 16))(v1);
  _Unwind_Resume(a1);
}

void sub_2251A27A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_2251A27B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL sub_2251A27C0(void *a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_encryptedTimestamps(a1, a2, a3);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_msgSend_authenticatedTimestamps(a1, v4, v5);
    v7 = v8 == 0;
  }

  return v7;
}

BOOL sub_2251A2818(void *a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_encryptedTimestamps(a1, a2, a3);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = objc_msgSend_authenticatedTimestamps(a1, v4, v5);
    v7 = v8 != 0;
  }

  return v7;
}

void sub_2251A2A14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251A2A30(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_infoFetchedGroup(WeakRetained, v2, v3);
  dispatch_group_leave(v4);
}

void sub_2251A2C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_2251A2C44(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v12 = v9;
      v15 = objc_msgSend_error(v3, v13, v14);
      v23 = 138412290;
      v24 = v15;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "Error fetching database URL from the server: %@", &v23, 0xCu);
LABEL_10:
    }
  }

  else
  {
    v16 = objc_msgSend_containerServerInfo(v3, v7, v8);
    objc_msgSend_setContainerServerInfo_(WeakRetained, v17, v16);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v12 = v18;
      v15 = objc_msgSend_containerServerInfo(WeakRetained, v19, v20);
      v23 = 138412290;
      v24 = v15;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Fetched database URLS from the server: %@", &v23, 0xCu);
      goto LABEL_10;
    }
  }

  v21 = objc_msgSend_error(v3, v10, v11);
  objc_msgSend_finishWithError_(WeakRetained, v22, v21);
}

void sub_2251A3158(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251A3178(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(WeakRetained, v3, v4);

  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v27 = v8;
      v30 = objc_msgSend_error(WeakRetained, v28, v29);
      v36 = 138412290;
      v37 = v30;
      _os_log_error_impl(&dword_22506F000, v27, OS_LOG_TYPE_ERROR, "Error fetching server certificates: %@", &v36, 0xCu);
    }

    v11 = objc_msgSend_error(WeakRetained, v9, v10);
    objc_msgSend_setError_(*(a1 + 32), v12, v11);
LABEL_13:

    goto LABEL_14;
  }

  v13 = objc_msgSend_validatedTrusts(WeakRetained, v6, v7);
  v16 = objc_msgSend_count(v13, v14, v15);

  if (v16)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v31 = *(a1 + 32);
      v32 = v19;
      v35 = objc_msgSend_validatedTrusts(v31, v33, v34);
      v36 = 138412290;
      v37 = v35;
      _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Fetched validated trusts: %@", &v36, 0xCu);
    }

    v20 = objc_alloc(MEMORY[0x277CBEA60]);
    v11 = objc_msgSend_validatedTrusts(WeakRetained, v21, v22);
    v24 = objc_msgSend_initWithArray_(v20, v23, v11);
    objc_msgSend_setValidatedTrusts_(*(a1 + 32), v25, v24);

    goto LABEL_13;
  }

LABEL_14:
  v26 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v17, v18);
  dispatch_group_leave(v26);
}

void sub_2251A39D0(uint64_t a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  if (v8)
  {
    objc_msgSend_setError_(v9, v6, v8);
LABEL_3:
    v10 = 0;
    goto LABEL_4;
  }

  v15 = objc_msgSend_type(v9, v6, v7);
  if (!v15)
  {
    v26 = objc_msgSend_container(*(a1 + 32), v16, v17);
    v29 = objc_msgSend_containerID(v26, v27, v28);
    v31 = objc_msgSend_transcodeServerPublicKeyURLs_(v5, v30, v29);

    if (v31)
    {
      v34 = objc_msgSend_transcodeServerHostname(*(a1 + 32), v32, v33);
      v10 = objc_msgSend_objectForKeyedSubscript_(v31, v35, v34);

      if (v10)
      {

        goto LABEL_15;
      }

      v54 = MEMORY[0x277CBC560];
      v55 = *MEMORY[0x277CBC120];
      v52 = objc_msgSend_transcodeServerHostname(*(a1 + 32), v36, v37);
      v57 = objc_msgSend_errorWithDomain_code_format_(v54, v56, v55, 2005, @"Could not find assetKeyEncryption URL for template URL %@", v52);
      objc_msgSend_setError_(*(a1 + 32), v58, v57);
    }

    else
    {
      v52 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v32, *MEMORY[0x277CBC120], 2005, @"Server configuration did not contain assetKeyEncryption URL info");
      objc_msgSend_setError_(*(a1 + 32), v53, v52);
    }

    goto LABEL_3;
  }

  if (v15 != 1)
  {
    goto LABEL_3;
  }

  v18 = objc_msgSend_container(*(a1 + 32), v16, v17);
  v21 = objc_msgSend_containerID(v18, v19, v20);
  v10 = objc_msgSend_cloudMediaProcessingPublicKeyURLString_(v5, v22, v21);

  if (!v10)
  {
    v24 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v23, *MEMORY[0x277CBC120], 2005, @"Server configuration did not contain CMP public key URL");
    objc_msgSend_setError_(*(a1 + 32), v25, v24);

    goto LABEL_3;
  }

LABEL_15:
  v38 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v23, v10);
  if (v38)
  {
    v40 = v38;
    objc_msgSend_setTranscodeServerPublicKeyURL_(*(a1 + 32), v39, v38);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v41 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    v42 = *(a1 + 32);
    v43 = v41;
    v46 = objc_msgSend_transcodeServerPublicKeyURL(v42, v44, v45);
    *buf = 138543362;
    v60 = v46;
    _os_log_debug_impl(&dword_22506F000, v43, OS_LOG_TYPE_DEBUG, "Transcode server public key hosted at %{public}@", buf, 0xCu);

LABEL_21:
LABEL_22:

    goto LABEL_7;
  }

  v50 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v39, *MEMORY[0x277CBC120], 1005, @"Couldn't create URL from transcode server URL string: %@", v10);
  objc_msgSend_setError_(*(a1 + 32), v51, v50);

LABEL_4:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v47 = *(a1 + 32);
    v40 = v11;
    v43 = objc_msgSend_error(v47, v48, v49);
    *buf = 138412290;
    v60 = v43;
    _os_log_error_impl(&dword_22506F000, v40, OS_LOG_TYPE_ERROR, "Error getting transcode server public key URL: %@", buf, 0xCu);
    goto LABEL_21;
  }

LABEL_7:
  v14 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v12, v13);
  dispatch_group_leave(v14);
}

void sub_2251A436C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251A4394(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v37 = v3;
    v40 = objc_msgSend_verifiedPublicKey(WeakRetained, v38, v39);
    v43 = objc_msgSend_error(WeakRetained, v41, v42);
    v44 = 138412546;
    v45 = v40;
    v46 = 2112;
    v47 = v43;
    _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "Fetched transcode server public key %@ with error %@", &v44, 0x16u);
  }

  v6 = objc_msgSend_error(WeakRetained, v4, v5);
  objc_msgSend_setError_(*(a1 + 32), v7, v6);

  v12 = objc_msgSend_error(WeakRetained, v8, v9);
  if (v12)
  {
    goto LABEL_8;
  }

  v13 = objc_msgSend_verifiedPublicKey(WeakRetained, v10, v11);
  hasExpired = objc_msgSend_hasExpired(v13, v14, v15);

  if ((hasExpired & 1) == 0)
  {
    v19 = objc_msgSend_verifiedPublicKey(WeakRetained, v17, v18);
    objc_msgSend_setTranscodeServerPublicKey_(*(a1 + 32), v20, v19);

    v12 = objc_msgSend_deviceContext(*(a1 + 32), v21, v22);
    v25 = objc_msgSend_metadataCache(v12, v23, v24);
    v28 = objc_msgSend_verifiedPublicKey(WeakRetained, v26, v27);
    v31 = objc_msgSend_transcodeServerPublicKeyURL(*(a1 + 32), v29, v30);
    v34 = objc_msgSend_absoluteString(v31, v32, v33);
    objc_msgSend_setPublicKey_ofType_withIdentifier_(v25, v35, v28, @"transcodeServerPublicKey", v34);

LABEL_8:
  }

  v36 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v17, v18);
  dispatch_group_leave(v36);
}

void sub_2251A4A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_2251A4A6C(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v24 = v9;
      v27 = objc_msgSend_error(v3, v25, v26);
      v28 = 138412290;
      v29 = v27;
      _os_log_error_impl(&dword_22506F000, v24, OS_LOG_TYPE_ERROR, "Error fetching configuration from the server: %@", &v28, 0xCu);
    }

    v12 = objc_msgSend_error(v3, v10, v11);
    objc_msgSend_finishWithError_(WeakRetained, v13, v12);
  }

  else
  {
    v14 = objc_msgSend_configuration(v3, v7, v8);

    if (v14)
    {
      v17 = objc_msgSend_configuration(v3, v15, v16);
      objc_msgSend_setConfiguration_(WeakRetained, v18, v17);

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v19 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v20 = v19;
        v23 = objc_msgSend_configuration(WeakRetained, v21, v22);
        v28 = 138412290;
        v29 = v23;
        _os_log_impl(&dword_22506F000, v20, OS_LOG_TYPE_INFO, "Fetched configuration from the server: %@", &v28, 0xCu);
      }
    }

    objc_msgSend_finishWithError_(WeakRetained, v15, 0);
  }
}

void sub_2251A5178(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251A51C0(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_msgSend_anonymousShareSavedBlock(WeakRetained, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_anonymousShareSavedBlock(WeakRetained, v10, v11);
    (v12)[2](v12, v13, v5);
  }
}

void sub_2251A5268(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = MEMORY[0x277CBC830];
  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Completed CKDAnonymousShareAddURLRequest", &v22, 2u);
  }

  v9 = objc_msgSend_error(v3, v7, v8);

  if (v9)
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v15 = v12;
      v18 = objc_msgSend_error(v3, v16, v17);
      v22 = 138412290;
      v23 = v18;
      _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Error CKDAnonymousShareAddURLRequest: %@", &v22, 0xCu);
    }

    v19 = objc_msgSend_error(v3, v13, v14);
    objc_msgSend_setError_(WeakRetained, v20, v19);
  }

  v21 = objc_msgSend_stateTransitionGroup(WeakRetained, v10, v11);
  dispatch_group_leave(v21);
}

void sub_2251A5910(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251A5958(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_msgSend_anonymousShareRemovedBlock(WeakRetained, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_anonymousShareRemovedBlock(WeakRetained, v10, v11);
    (v12)[2](v12, v13, v5);
  }
}

void sub_2251A5A00(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = MEMORY[0x277CBC830];
  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Completed CKDAnonymousShareRemoveURLRequest", &v22, 2u);
  }

  v9 = objc_msgSend_error(v3, v7, v8);

  if (v9)
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v15 = v12;
      v18 = objc_msgSend_error(v3, v16, v17);
      v22 = 138412290;
      v23 = v18;
      _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Error CKDAnonymousShareRemoveURLRequest: %@", &v22, 0xCu);
    }

    v19 = objc_msgSend_error(v3, v13, v14);
    objc_msgSend_setError_(WeakRetained, v20, v19);
  }

  v21 = objc_msgSend_stateTransitionGroup(WeakRetained, v10, v11);
  dispatch_group_leave(v21);
}

void sub_2251A5EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_2251A5EE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(v2, v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_error(v2, v6, v7);
    objc_msgSend_finishWithError_(WeakRetained, v9, v8);
  }

  else
  {
    objc_msgSend_finishWithError_(WeakRetained, v6, 0);
  }
}

id sub_2251A6A64(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v6 = objc_msgSend_itemID(v3, v4, v5);
  objc_msgSend_progress(v3, v7, v8);
  v10 = v9;
  v13 = objc_msgSend_signature(v3, v11, v12);
  if (objc_msgSend_finished(v3, v14, v15))
  {
    objc_msgSend_stringWithFormat_(v2, v16, @"<CKDMMCSItem %p itemID: %lu, progress %0.2f, signature: %@ %@>", v3, v6, v10, v13, @"finished");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v2, v16, @"<CKDMMCSItem %p itemID: %lu, progress %0.2f, signature: %@ %@>", v3, v6, v10, v13, &stru_28385ED00);
  }
  v17 = ;

  return v17;
}

id sub_2251A6B2C(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v6 = objc_msgSend_itemID(v3, v4, v5);
  objc_msgSend_progress(v3, v7, v8);
  v10 = v9;
  v13 = objc_msgSend_signature(v3, v11, v12);
  if (objc_msgSend_finished(v3, v14, v15))
  {
    objc_msgSend_stringWithFormat_(v2, v16, @"<CKDMMCSItem %p itemID: %lu, progress %0.2f, signature: %@ %@>", v3, v6, v10, v13, @"finished");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v2, v16, @"<CKDMMCSItem %p itemID: %lu, progress %0.2f, signature: %@ %@>", v3, v6, v10, v13, &stru_28385ED00);
  }
  v17 = ;

  return v17;
}

void sub_2251A707C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_downloadPreparationBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_downloadPreparationBlock(*(a1 + 32), v5, v6);
    v7[2](v7, *(a1 + 40));
  }
}

void sub_2251A720C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_downloadProgressBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_downloadProgressBlock(*(a1 + 32), v5, v6);
    v7[2](v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_2251A7444(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_downloadCommandBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_downloadCommandBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_2251A75F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_downloadCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_downloadCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void *sub_2251A88B0(void *result, const char *a2, uint64_t a3)
{
  if (result)
  {
    v3 = objc_msgSend_operationInfo(result, a2, a3);
    v6 = objc_msgSend_fetchingAssetsForRereference(v3, v4, v5);

    return v6;
  }

  return result;
}

void sub_2251A99AC(uint64_t a1, void *a2)
{
  v2 = a2;
  MMCSOperationMetricCombineMetrics();
  v11 = objc_msgSend_date(MEMORY[0x277CBEAA8], v3, v4);
  v7 = objc_msgSend_startDate(v2, v5, v6);
  objc_msgSend_timeIntervalSinceDate_(v11, v8, v7);
  objc_msgSend_setDuration_(v2, v9, v10);
}

void sub_2251AB450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, ...)
{
  va_start(va, a59);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v59 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_2251AB4EC(uint64_t a1, const char *a2, _BYTE *a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v63 = 0;
  v7 = objc_msgSend_itemAtIndex_error_(v6, a2, a2, &v63);
  v8 = v63;
  v11 = v63;
  if (v11 && (v12 = *(*(a1 + 48) + 8), v14 = *(v12 + 40), v13 = (v12 + 40), !v14))
  {
    objc_storeStrong(v13, v8);
    *a3 = 1;
  }

  else
  {
    v15 = objc_msgSend_sectionIndex(v7, v9, v10);
    v16 = MEMORY[0x277CCABB0];
    v19 = objc_msgSend_sectionIndex(*(a1 + 40), v17, v18);
    v21 = objc_msgSend_numberWithUnsignedLongLong_(v16, v20, v19);
    isEqual = objc_msgSend_isEqual_(v15, v22, v21);

    if (isEqual)
    {
      v24 = [CKDMMCSItem alloc];
      v26 = objc_msgSend_initWithPackage_(v24, v25, *(a1 + 32));
      v29 = objc_msgSend_signature(v7, v27, v28);
      objc_msgSend_setSignature_(v26, v30, v29);

      v33 = objc_msgSend_size(v7, v31, v32);
      objc_msgSend_setFileSize_(v26, v34, v33);
      v37 = objc_msgSend_paddedSize(v7, v35, v36);
      objc_msgSend_setPaddedFileSize_(v26, v38, v37);
      v41 = objc_msgSend_zeroSizeFileSignature(CKDMMCS, v39, v40);
      v44 = objc_msgSend_signature(v26, v42, v43);
      isEqualToData = objc_msgSend_isEqualToData_(v41, v45, v44);

      if (isEqualToData)
      {
        if (objc_msgSend_fileSize(v26, v47, v48))
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v50 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
          {
            v59 = v50;
            v62 = objc_msgSend_fileSize(v26, v60, v61);
            *buf = 138412546;
            v65 = v7;
            v66 = 2048;
            v67 = v62;
            _os_log_fault_impl(&dword_22506F000, v59, OS_LOG_TYPE_FAULT, "Package section item %@ has zero file signature and non-zero size %llu", buf, 0x16u);
          }
        }

        objc_msgSend_setFileSize_(v26, v49, 0);
      }

      v51 = objc_msgSend_offset(v7, v47, v48);
      objc_msgSend_setOffset_(v26, v52, v51);
      objc_msgSend_setPackageIndex_(v26, v53, a2);
      v56 = objc_msgSend_fileSize(v26, v54, v55);
      v58 = 56;
      if (!v56)
      {
        v58 = 64;
      }

      objc_msgSend_addObject_(*(*(*(a1 + v58) + 8) + 40), v57, v26);
    }
  }
}

void sub_2251AB7B4(uint64_t a1, void *a2)
{
  v19 = a2;
  v5 = objc_msgSend_error(v19, v3, v4);

  if (!v5)
  {
    v8 = *(a1 + 32);
    objc_msgSend_progress(v19, v6, v7);
    objc_msgSend_updateProgressWithItem_progress_(v8, v9, v19);
    v11 = v10;
    objc_msgSend_progress(*(a1 + 40), v12, v13);
    if (v16 < v11)
    {
      v16 = v11;
    }

    objc_msgSend_setProgress_(*(a1 + 40), v14, v15, v16);
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    objc_msgSend__didMakeProgressForMMCSSectionItem_task_(WeakRetained, v18, *(a1 + 40), *(a1 + 48));
  }
}

void sub_2251AB860(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_error(v3, v4, v5);
  v9 = objc_msgSend_queue(*(a1 + 32), v7, v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2251AB990;
  v14[3] = &unk_278548890;
  v22 = *(a1 + 72);
  v15 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  v16 = v10;
  v17 = v11;
  v18 = v3;
  v19 = *(a1 + 56);
  v20 = v6;
  v21 = *(a1 + 64);
  v12 = v6;
  v13 = v3;
  dispatch_async(v9, v14);
}

void sub_2251AB990(uint64_t a1, const char *a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(*(*(*(a1 + 88) + 8) + 40), a2, a3))
  {
    v6 = objc_msgSend_assetCache(*(a1 + 32), v4, v5);
    v8 = objc_msgSend_trackCachedButNotRegisteredMMCSItems_error_(v6, v7, *(*(*(a1 + 88) + 8) + 40), 0);
  }

  v9 = objc_msgSend_sectionItems(*(a1 + 40), v4, v5);
  objc_msgSend_addObjectsFromArray_(v9, v10, *(*(*(a1 + 88) + 8) + 40));

  objc_msgSend__collectMetricsFromCompletedItemGroup_(*(a1 + 48), v11, *(a1 + 56));
  v12 = *(a1 + 48);
  v16[0] = *(a1 + 40);
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v16, 1);
  objc_msgSend__didDownloadMMCSSectionItems_task_error_(v12, v15, v14, *(a1 + 64), *(a1 + 72));

  dispatch_group_leave(*(a1 + 80));
}

uint64_t sub_2251ABA9C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cancelTokens(*(a1 + 32), a2, a3);
  objc_msgSend_removeCancelToken_(v4, v5, *(a1 + 40));

  result = *(a1 + 48);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void sub_2251AC398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2251AC3E4(void *a1, const char *a2, _BYTE *a3)
{
  v5 = a1[4];
  v17 = 0;
  v6 = objc_msgSend_itemAtIndex_error_(v5, a2, a2, &v17);
  v7 = v17;
  v10 = v17;
  if (v10)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v7);
    *a3 = 1;
  }

  else
  {
    v11 = a1[5];
    v12 = objc_msgSend_sectionIndex(v6, v8, v9);
    v15 = objc_msgSend_unsignedIntegerValue(v12, v13, v14);
    objc_msgSend_addIndex_(v11, v16, v15);
  }
}

uint64_t sub_2251AC4AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_error(*(a1 + 32), a2, a3);

  if (!v4)
  {
    v7 = objc_msgSend_manifestAsset(*(a1 + 32), v5, v6);
    v10 = objc_msgSend_downloaded(v7, v8, v9);

    if (*(a1 + 72))
    {
      v11 = 0;
      do
      {
        v12 = objc_msgSend_assets(*(a1 + 40), v5, v6);
        v15 = objc_msgSend_count(v12, v13, v14);
        v16 = v11 + 1;

        if (v15 > v11 + 1)
        {
          v17 = objc_msgSend_assets(*(a1 + 40), v5, v6);
          v19 = objc_msgSend_objectAtIndex_(v17, v18, v11 + 1);

          if (objc_msgSend_containsIndex_(*(a1 + 48), v20, v11))
          {
            if (v10)
            {
              LOBYTE(v10) = objc_msgSend_downloaded(v19, v21, v22);
            }

            else
            {
              LOBYTE(v10) = 0;
            }
          }

          else
          {
            v23 = objc_msgSend_progressTracker(*(a1 + 32), v21, v22);
            objc_msgSend_updateProgressWithItem_progress_(v23, v24, v19, 1.0);
            v26 = v25;

            objc_msgSend__didMakeProgressForAsset_progress_(*(a1 + 56), v27, *(a1 + 40), v26);
          }
        }

        v11 = v16;
      }

      while (v16 < *(a1 + 72));
    }
  }

  v28 = *(a1 + 56);
  v29 = *(a1 + 40);
  v30 = objc_msgSend_error(*(a1 + 32), v5, v6);
  objc_msgSend__didDownloadAsset_error_(v28, v31, v29, v30);

  result = *(a1 + 64);
  if (result)
  {
    v33 = *(result + 16);

    return v33();
  }

  return result;
}

void sub_2251AC840(uint64_t a1, const char *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  objc_msgSend_removeObjectsInArray_(*(a1 + 32), a2, *(a1 + 40));
  v5 = objc_msgSend_maxPackageDownloadsPerBatch(*(a1 + 48), v3, v4);
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_count(*(a1 + 32), v7, v8);
  if (v5 >= v5 - v9)
  {
    v11 = objc_msgSend_initWithCapacity_(v6, v10, v5 - v9);
  }

  else
  {
    v11 = objc_msgSend_initWithCapacity_(v6, v10, v5);
  }

  v14 = v11;
  v15 = objc_msgSend_objectEnumerator(*(a1 + 56), v12, v13);
  v18 = objc_msgSend_count(*(a1 + 32), v16, v17);
  v21 = v5 - v18;
  if (v5 > v18)
  {
    do
    {
      v22 = objc_msgSend_nextObject(v15, v19, v20);
      if (!v22)
      {
        break;
      }

      v23 = v22;
      objc_msgSend_addObject_(v14, v19, v22);

      --v21;
    }

    while (v21);
  }

  v36 = v15;
  objc_msgSend_removeObjectsInArray_(*(a1 + 56), v19, v14);
  objc_msgSend_addObjectsFromArray_(*(a1 + 32), v24, v14);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = v14;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v40, v44, 16);
  if (v27)
  {
    v30 = v27;
    v31 = *v41;
    do
    {
      v32 = 0;
      do
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(v25);
        }

        v33 = *(*(&v40 + 1) + 8 * v32);
        objc_msgSend_qualityOfService(*(a1 + 48), v28, v29);
        v34 = CKGetGlobalQueue();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2251ACA90;
        block[3] = &unk_2785463D0;
        v35 = *(a1 + 56);
        block[4] = *(a1 + 48);
        block[5] = v33;
        v38 = v35;
        v39 = *(a1 + 32);
        dispatch_async(v34, block);

        ++v32;
      }

      while (v30 != v32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v40, v44, 16);
    }

    while (v30);
  }
}

void sub_2251ACA90(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cancelTokens(*(a1 + 32), a2, a3);
  objc_msgSend_addCancelToken_withOperation_(v4, v5, *(a1 + 40), *(a1 + 32));

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2251ACB64;
  v11[3] = &unk_2785463D0;
  v10 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  objc_msgSend__downloadPackageSectionsWithTask_completionBlock_(v10, v9, *(&v10 + 1), v11);
}

void sub_2251ACB64(uint64_t a1, const char *a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_cancelTokens(*(a1 + 32), a2, a3);
  objc_msgSend_removeCancelToken_(v4, v5, *(a1 + 40));

  v8 = objc_msgSend_cancelTokens(*(a1 + 40), v6, v7);
  objc_msgSend_removeAllCancelTokens(v8, v9, v10);

  v13 = objc_msgSend_group(*(a1 + 40), v11, v12);
  dispatch_group_leave(v13);

  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 32);
  v20[0] = *(a1 + 40);
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v20, 1);
  objc_msgSend__downloadPackageSectionsWithPendingTasks_downloadingTasks_completedTasks_(v16, v19, v14, v15, v18);
}

void sub_2251AD85C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x330]);
  _Unwind_Resume(a1);
}

void sub_2251AD88C(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = MEMORY[0x277CBC830];
  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v29 = *(a1 + 32);
    v30 = v4;
    v33 = objc_msgSend_package(v29, v31, v32);
    v36 = objc_msgSend_UUID(v33, v34, v35);
    *buf = 138543362;
    v47 = v36;
    _os_log_debug_impl(&dword_22506F000, v30, OS_LOG_TYPE_DEBUG, "Finished downloading manifest for package %{public}@", buf, 0xCu);
  }

  v7 = objc_msgSend_group(*(a1 + 32), v5, v6);
  dispatch_group_enter(v7);

  v10 = objc_msgSend_package(*(a1 + 32), v8, v9);
  v12 = objc_msgSend_size_(v10, v11, 0);

  v15 = objc_msgSend_package(*(a1 + 32), v13, v14);
  v18 = objc_msgSend_UUID(v15, v16, v17);

  v21 = objc_msgSend_group(*(a1 + 32), v19, v20);
  v24 = objc_msgSend_queue(*(a1 + 40), v22, v23);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251ADB74;
  block[3] = &unk_278545E20;
  v45 = v12;
  v25 = v18;
  v43 = v25;
  v44 = *(a1 + 48);
  dispatch_group_notify(v21, v24, block);

  objc_msgSend_addObject_(*(a1 + 56), v26, *(a1 + 32));
  if (*v2 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v27 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
  {
    v37 = *(a1 + 56);
    v38 = v27;
    v41 = objc_msgSend_count(v37, v39, v40);
    *buf = 134218498;
    v47 = v41;
    v48 = 2048;
    v49 = v12;
    v50 = 2114;
    v51 = v25;
    _os_log_debug_impl(&dword_22506F000, v38, OS_LOG_TYPE_DEBUG, "Starting download %lu tasks (%llu sections) for package %{public}@", buf, 0x20u);
  }

  objc_msgSend__downloadPackageSectionsWithPendingTasks_downloadingTasks_completedTasks_(*(a1 + 40), v28, *(a1 + 56), *(a1 + 64), 0);
}

void sub_2251ADB74(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = 134218242;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "Finished downloading %llu sections for package %{public}@", &v5, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_2251ADC68(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__didMakeProgressForMMCSItem_inMemory_(WeakRetained, v4, v3, *(a1 + 40));
}

void sub_2251ADCC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_msgSend_asset(v6, v7, v8);

  objc_msgSend__didCommandForAsset_command_(WeakRetained, v10, v9, v5);
}

void sub_2251ADD58(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_msgSend__collectMetricsFromCompletedItemGroupSet_(*(a1 + 32), v4, v3);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v10 = objc_msgSend_error(v3, v8, v9);
  objc_msgSend__didDownloadMMCSItems_inMemory_error_(v5, v11, v6, v7, v10);

  v14 = objc_msgSend_operationInfo(*(a1 + 32), v12, v13);
  v17 = objc_msgSend_cloneContextReturnBlock(v14, v15, v16);

  if (v17)
  {
    v39 = a1;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = objc_msgSend_itemsGroups(v3, v18, v19);
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v46, v51, 16);
    if (v21)
    {
      v24 = v21;
      v41 = *v47;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v47 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v46 + 1) + 8 * i);
          v27 = objc_msgSend_cloneContext(v26, v22, v23);
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v30 = objc_msgSend_items(v26, v28, v29);
          v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v42, v50, 16);
          if (v32)
          {
            v35 = v32;
            v36 = *v43;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v43 != v36)
                {
                  objc_enumerationMutation(v30);
                }

                v38 = objc_msgSend_signature(*(*(&v42 + 1) + 8 * j), v33, v34);
                (v17)[2](v17, v38, v27);
              }

              v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v42, v50, 16);
            }

            while (v35);
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v46, v51, 16);
      }

      while (v24);
    }

    a1 = v39;
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_2251ADFAC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cancelTokens(*(a1 + 32), a2, a3);
  objc_msgSend_removeCancelToken_(v4, v5, *(a1 + 40));

  v8 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v6, v7);
  dispatch_group_leave(v8);
}

void sub_2251AEAA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251AEACC(uint64_t a1, const char *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = xmmword_225447D68;
  v4[1] = unk_225447D78;
  v2 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], a2, v4, 32);
  v3 = qword_280D54F98;
  qword_280D54F98 = v2;
}

void sub_2251AEB4C(id *a1, void *a2)
{
  location[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = v3;
  if (*MEMORY[0x277CBC810] == 1)
  {
    objc_msgSend_checkAndClearUnitTestOverrides_(v3, v4, @"DownloadAssetsFromTranscodingService");
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v7 = v5;
    objc_initWeak(location, v7);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_2251AEED8;
    v25[3] = &unk_278548A18;
    v26 = a1[5];
    objc_msgSend_setReplaceLocalSerializationsBlobs_(v7, v8, v25);
    objc_msgSend_setInitialResponseReceivedCallback_(v7, v9, &unk_28385D400);
    objc_msgSend_setReplaceWireSerializations_(v7, v10, &unk_28385D420);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_2251AF248;
    v22[3] = &unk_278548A80;
    objc_copyWeak(&v24, a1 + 6);
    v23 = a1[4];
    objc_msgSend_setRecordFetchCommandBlock_(v7, v11, v22);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2251AF2E0;
    v20[3] = &unk_278548AA8;
    v21 = a1[4];
    objc_msgSend_setRecordFetchCompletionBlock_(v7, v12, v20);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2251AF5BC;
    v16[3] = &unk_278548AD0;
    objc_copyWeak(&v18, a1 + 6);
    objc_copyWeak(&v19, location);
    v17 = a1[4];
    objc_msgSend_setCompletionBlock_(v7, v13, v16);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);

    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v15 = a1[4];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v15;
      _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "The self is not strong with the transcoding operation for %@", location, 0xCu);
    }
  }
}

void sub_2251AEE84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_2251AEED8(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a3;
  v12 = objc_msgSend_firstObject(a2, v10, v11);
  v15 = objc_msgSend_firstObject(v9, v13, v14);

  if (v12)
  {
    v16 = objc_opt_new();
    objc_msgSend_setWireSerialization_(v16, v17, v12);
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_msgSend_setEncryptedMasterKey_(v16, v18, v15);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v19 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *v25 = 0;
        _os_log_error_impl(&dword_22506F000, v19, OS_LOG_TYPE_ERROR, "Couldn't get encrypted master key for transcoding record", v25, 2u);
      }
    }

    objc_msgSend_setRecord_(*(a1 + 32), v20, v16);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "No wire serialization for transcoding record", buf, 2u);
    }
  }

  v24 = objc_msgSend_data(*(a1 + 32), v22, v23);
  v8[2](v8, v24, 0);
}

void sub_2251AF0CC(uint64_t a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = a2;
  v6 = [CKDPTranscodeResponse alloc];
  v8 = objc_msgSend_initWithData_(v6, v7, v5);

  v11 = objc_msgSend_record(v8, v9, v10);
  v14 = objc_msgSend_wireSerialization(v11, v12, v13);

  if (v14)
  {
    v19[0] = v14;
    v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v19, 1);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "No wire serialization when handling intial transcoding response", v18, 2u);
    }

    v16 = 0;
  }

  v4[2](v4, v16, 0);
}

void sub_2251AF248(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = objc_msgSend_downloadCommandBlock(WeakRetained, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_downloadCommandBlock(WeakRetained, v8, v9);
    (v10)[2](v10, *(a1 + 32), v11);
  }
}

void sub_2251AF2E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v11 = a4;
  if (v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v45 = 138412546;
      v46 = v13;
      v47 = 2112;
      v48 = v11;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "Error fetching transcoded asset %@: %@", &v45, 0x16u);
    }
  }

  else
  {
    v14 = objc_msgSend_recordKey(*(a1 + 32), v9, v10);
    v16 = objc_msgSend_objectForKeyedSubscript_(v7, v15, v14);

    v17 = *MEMORY[0x277CBC878];
    if (v16)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v17);
      }

      v18 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v44 = *(a1 + 32);
        v45 = 138412546;
        v46 = v16;
        v47 = 2112;
        v48 = v44;
        _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Transferring data from transcoded asset %@ to the response record's asset %@", &v45, 0x16u);
      }

      v21 = objc_msgSend_fileURL(v16, v19, v20);
      objc_msgSend_setFileURL_(*(a1 + 32), v22, v21);

      v25 = objc_msgSend_size(v16, v23, v24);
      objc_msgSend_setSize_(*(a1 + 32), v26, v25);
      v29 = objc_msgSend_paddedFileSize(v16, v27, v28);
      objc_msgSend_setPaddedFileSize_(*(a1 + 32), v30, v29);
      v33 = objc_msgSend_UUID(v16, v31, v32);
      objc_msgSend_setUUID_(*(a1 + 32), v34, v33);

      v37 = objc_msgSend_downloaded(v16, v35, v36);
      objc_msgSend_setDownloaded_(*(a1 + 32), v38, v37);
      v41 = objc_msgSend_wasCached(v16, v39, v40);
      objc_msgSend_setWasCached_(*(a1 + 32), v42, v41);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v17);
      }

      v43 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v45) = 0;
        _os_log_error_impl(&dword_22506F000, v43, OS_LOG_TYPE_ERROR, "No transcoded asset after fetching from transcoder", &v45, 2u);
      }
    }
  }
}

void sub_2251AF5BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 48));
    v6 = objc_msgSend_error(v3, v4, v5);

    objc_msgSend__didDownloadAsset_error_(v11, v7, *(a1 + 32), v6);
    v10 = objc_msgSend_stateTransitionGroup(v11, v8, v9);
    dispatch_group_leave(v10);

    WeakRetained = v11;
  }
}

void sub_2251B0074(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2251B0224;
  v13[3] = &unk_278548B38;
  objc_copyWeak(&v14, &from);
  objc_copyWeak(&v15, &location);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v4, v13);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = sub_2251B03CC;
  v10 = &unk_278548748;
  objc_copyWeak(&v11, &location);
  objc_copyWeak(&v12, &from);
  objc_msgSend_setCompletionBlock_(v3, v5, &v7);
  objc_msgSend_setFetchOperation_(*(a1 + 32), v6, v3, v7, v8, v9, v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251B01DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251B0224(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_loadWeakRetained((a1 + 40));
  v11 = v9;
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v14 = v12;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v19 = objc_msgSend_ckShortDescription(WeakRetained, v17, v18);
      v20 = 138544130;
      v21 = v16;
      v22 = 2048;
      v23 = WeakRetained;
      v24 = 2114;
      v25 = v19;
      v26 = 2112;
      v27 = v7;
      _os_log_error_impl(&dword_22506F000, v14, OS_LOG_TYPE_ERROR, "Simulate asset corruption operation <%{public}@: %p; %{public}@> could not fetch record with error %@", &v20, 0x2Au);
    }

    objc_msgSend_setError_(v11, v13, v7);
  }

  else
  {
    objc_msgSend_setRecord_(v9, v10, v6);
  }
}

void sub_2251B03CC(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  v7 = *MEMORY[0x277CBC878];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v8 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v18 = v8;
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v23 = objc_msgSend_ckShortDescription(v3, v21, v22);
      v26 = objc_msgSend_error(v3, v24, v25);
      v32 = 138544130;
      v33 = v20;
      v34 = 2048;
      v35 = v3;
      v36 = 2114;
      v37 = v23;
      v38 = 2112;
      v39 = v26;
      _os_log_error_impl(&dword_22506F000, v18, OS_LOG_TYPE_ERROR, "Simulate asset corruption operation <%{public}@: %p; %{public}@> completed fetch record with error %@", &v32, 0x2Au);
    }

    v11 = objc_msgSend_error(v3, v9, v10);
    objc_msgSend_setError_(WeakRetained, v12, v11);
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v7);
  }

  v14 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    v11 = v14;
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v31 = objc_msgSend_ckShortDescription(v3, v29, v30);
    v32 = 138543874;
    v33 = v28;
    v34 = 2048;
    v35 = v3;
    v36 = 2114;
    v37 = v31;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Simulate asset corruption operation <%{public}@: %p; %{public}@> completed fetch record", &v32, 0x20u);

LABEL_7:
  }

  objc_msgSend_setFetchOperation_(WeakRetained, v13, 0);
  v17 = objc_msgSend_stateTransitionGroup(WeakRetained, v15, v16);
  dispatch_group_leave(v17);
}

void sub_2251B0824(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  objc_msgSend_setUseEncryption_(v3, v4, 0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2251B09E8;
  v14[3] = &unk_278548B88;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, &from);
  objc_msgSend_setRecordZoneFetchedProgressBlock_(v3, v5, v14);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = sub_2251B0BA0;
  v11 = &unk_278548748;
  objc_copyWeak(&v12, &location);
  objc_copyWeak(&v13, &from);
  objc_msgSend_setCompletionBlock_(v3, v6, &v8);
  objc_msgSend_setZoneFetchOperation_(*(a1 + 32), v7, v3, v8, v9, v10, v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251B0998(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251B09E8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = objc_loadWeakRetained((a1 + 40));
  if (v7 && objc_msgSend_code(v7, v9, v10) != 2036)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v14 = v12;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v19 = objc_msgSend_ckShortDescription(v11, v17, v18);
      v20 = 138544130;
      v21 = v16;
      v22 = 2048;
      v23 = v11;
      v24 = 2114;
      v25 = v19;
      v26 = 2112;
      v27 = v7;
      _os_log_error_impl(&dword_22506F000, v14, OS_LOG_TYPE_ERROR, "Simulate asset corruption operation <%{public}@: %p; %{public}@> could not fetch repair zone with error %@", &v20, 0x2Au);
    }

    objc_msgSend_setError_(WeakRetained, v13, v7);
  }

  else
  {
    objc_msgSend_setRepairZone_(WeakRetained, v9, v6);
  }
}

void sub_2251B0BA0(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  v7 = *MEMORY[0x277CBC878];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v8 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v18 = v8;
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v23 = objc_msgSend_ckShortDescription(v3, v21, v22);
      v26 = objc_msgSend_error(v3, v24, v25);
      v32 = 138544130;
      v33 = v20;
      v34 = 2048;
      v35 = v3;
      v36 = 2114;
      v37 = v23;
      v38 = 2112;
      v39 = v26;
      _os_log_error_impl(&dword_22506F000, v18, OS_LOG_TYPE_ERROR, "Simulate asset corruption operation <%{public}@: %p; %{public}@> completed repair zone fetch with error %@", &v32, 0x2Au);
    }

    v11 = objc_msgSend_error(v3, v9, v10);
    objc_msgSend_setError_(WeakRetained, v12, v11);
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v7);
  }

  v14 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    v11 = v14;
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v31 = objc_msgSend_ckShortDescription(v3, v29, v30);
    v32 = 138543874;
    v33 = v28;
    v34 = 2048;
    v35 = v3;
    v36 = 2114;
    v37 = v31;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Simulate asset corruption operation <%{public}@: %p; %{public}@> completed repair zone fetch", &v32, 0x20u);

LABEL_7:
  }

  objc_msgSend_setZoneFetchOperation_(WeakRetained, v13, 0);
  v17 = objc_msgSend_stateTransitionGroup(WeakRetained, v15, v16);
  dispatch_group_leave(v17);
}

void sub_2251B101C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v6 = objc_msgSend_bypassPCSEncryptionForTouchRepairZone(*(a1 + 32), v4, v5);
  objc_msgSend_setUseEncryption_(v3, v7, v6 ^ 1u);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2251B11E8;
  v17[3] = &unk_278548BB0;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, &from);
  objc_msgSend_setSaveCompletionBlock_(v3, v8, v17);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = sub_2251B1368;
  v14 = &unk_278548748;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, &from);
  objc_msgSend_setCompletionBlock_(v3, v9, &v11);
  objc_msgSend_setZoneCreateOperation_(*(a1 + 32), v10, v3, v11, v12, v13, v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251B1198(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251B11E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v10 = v8;
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v15 = objc_msgSend_ckShortDescription(v7, v13, v14);
      v16 = 138544130;
      v17 = v12;
      v18 = 2048;
      v19 = v7;
      v20 = 2114;
      v21 = v15;
      v22 = 2112;
      v23 = v5;
      _os_log_error_impl(&dword_22506F000, v10, OS_LOG_TYPE_ERROR, "Simulate asset corruption operation <%{public}@: %p; %{public}@> could not save repair zone with error %@", &v16, 0x2Au);
    }

    objc_msgSend_setError_(WeakRetained, v9, v5);
  }
}

void sub_2251B1368(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  v7 = *MEMORY[0x277CBC878];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v8 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v18 = v8;
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v23 = objc_msgSend_ckShortDescription(v3, v21, v22);
      v26 = objc_msgSend_error(v3, v24, v25);
      v32 = 138544130;
      v33 = v20;
      v34 = 2048;
      v35 = v3;
      v36 = 2114;
      v37 = v23;
      v38 = 2112;
      v39 = v26;
      _os_log_error_impl(&dword_22506F000, v18, OS_LOG_TYPE_ERROR, "Simulate asset corruption operation <%{public}@: %p; %{public}@> completed repair zone touch with error %@", &v32, 0x2Au);
    }

    v11 = objc_msgSend_error(v3, v9, v10);
    objc_msgSend_setError_(WeakRetained, v12, v11);
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v7);
  }

  v14 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    v11 = v14;
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v31 = objc_msgSend_ckShortDescription(v3, v29, v30);
    v32 = 138543874;
    v33 = v28;
    v34 = 2048;
    v35 = v3;
    v36 = 2114;
    v37 = v31;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Simulate asset corruption operation <%{public}@: %p; %{public}@> completed repair zone touch", &v32, 0x20u);

LABEL_7:
  }

  objc_msgSend_setZoneCreateOperation_(WeakRetained, v13, 0);
  v17 = objc_msgSend_stateTransitionGroup(WeakRetained, v15, v16);
  dispatch_group_leave(v17);
}

id sub_2251B1A44(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBC1C0];
  v3 = a2;
  v4 = [v2 alloc];
  v7 = objc_msgSend_signature(v3, v5, v6);
  v10 = objc_msgSend_referenceSignature(v3, v8, v9);

  v12 = objc_msgSend_initWithFileSignature_referenceSignature_assetKey_(v4, v11, v7, v10, 0);

  return v12;
}

void sub_2251B1ADC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2251B1C8C;
  v13[3] = &unk_278548BF8;
  objc_copyWeak(&v14, &location);
  objc_copyWeak(&v15, &from);
  objc_msgSend_setSaveCompletionBlock_(v3, v4, v13);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = sub_2251B1E0C;
  v10 = &unk_278548748;
  objc_copyWeak(&v11, &location);
  objc_copyWeak(&v12, &from);
  objc_msgSend_setCompletionBlock_(v3, v5, &v7);
  objc_msgSend_setCorruptOperation_(*(a1 + 32), v6, v3, v7, v8, v9, v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251B1C44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251B1C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v11 = v9;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v16 = objc_msgSend_ckShortDescription(v8, v14, v15);
      v17 = 138544130;
      v18 = v13;
      v19 = 2048;
      v20 = v8;
      v21 = 2114;
      v22 = v16;
      v23 = 2112;
      v24 = v6;
      _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "Simulate asset corruption operation <%{public}@: %p; %{public}@> could not upload corrupted asset with error %@", &v17, 0x2Au);
    }

    objc_msgSend_setError_(WeakRetained, v10, v6);
  }
}

void sub_2251B1E0C(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  v7 = *MEMORY[0x277CBC878];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v8 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v18 = v8;
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v23 = objc_msgSend_ckShortDescription(v3, v21, v22);
      v26 = objc_msgSend_error(v3, v24, v25);
      v32 = 138544130;
      v33 = v20;
      v34 = 2048;
      v35 = v3;
      v36 = 2114;
      v37 = v23;
      v38 = 2112;
      v39 = v26;
      _os_log_error_impl(&dword_22506F000, v18, OS_LOG_TYPE_ERROR, "Simulate asset corruption operation <%{public}@: %p; %{public}@> completed uploading corrupted asset with error %@", &v32, 0x2Au);
    }

    v11 = objc_msgSend_error(v3, v9, v10);
    objc_msgSend_setError_(WeakRetained, v12, v11);
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v7);
  }

  v14 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    v11 = v14;
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v31 = objc_msgSend_ckShortDescription(v3, v29, v30);
    v32 = 138543874;
    v33 = v28;
    v34 = 2048;
    v35 = v3;
    v36 = 2114;
    v37 = v31;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Simulate asset corruption operation <%{public}@: %p; %{public}@> completed corrupted asset upload", &v32, 0x20u);

LABEL_7:
  }

  objc_msgSend_setCorruptOperation_(WeakRetained, v13, 0);
  v17 = objc_msgSend_stateTransitionGroup(WeakRetained, v15, v16);
  dispatch_group_leave(v17);
}

void sub_2251B27D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CKDMarkAssetBrokenURLRequest alloc];
  v5 = *(a1 + 32);
  v8 = objc_msgSend_writeRepairRecord(*(a1 + 40), v6, v7);
  v10 = objc_msgSend_initWithOperation_assetOrPackageMetadata_writeRepairRecord_(v4, v9, v3, v5, v8);
  objc_initWeak(&location, *(a1 + 40));
  objc_initWeak(&v23, v3);
  objc_initWeak(&from, v10);
  objc_msgSend_setUseEncryption_(v3, v11, 0);
  objc_msgSend_setUrlRequest_(v3, v12, v10);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2251B29FC;
  v19[3] = &unk_278548C20;
  objc_copyWeak(&v20, &location);
  objc_copyWeak(&v21, &from);
  objc_msgSend_setAssetBrokenBlock_(v10, v13, v19);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2251B2DDC;
  v16[3] = &unk_278548748;
  objc_copyWeak(&v17, &location);
  objc_copyWeak(&v18, &v23);
  objc_msgSend_setCompletionBlock_(v3, v14, v16);
  objc_msgSend_setWrapperOperation_(*(a1 + 40), v15, v3);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void sub_2251B29A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_2251B29FC(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    v37 = v9;
    *buf = 134217984;
    v46 = objc_msgSend_code(v6, v38, v39);
    _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "Marked asset broken with response code %ld", buf, 0xCu);
  }

  if (objc_msgSend_code(v6, v10, v11) == 1)
  {
    v14 = objc_msgSend_assetOrPackageMarkedBrokenBlock(WeakRetained, v12, v13);

    if (v14)
    {
      v17 = objc_msgSend_callbackQueue(WeakRetained, v15, v16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2251B2D7C;
      block[3] = &unk_278545898;
      block[4] = WeakRetained;
      v41 = v5;
      dispatch_async(v17, block);
    }
  }

  else
  {
    v18 = MEMORY[0x277CBC560];
    v19 = *MEMORY[0x277CBC120];
    v20 = sub_2253962A4(v6);
    v21 = sub_225395734(v8, v6);
    v24 = objc_msgSend_error(v6, v22, v23);
    v27 = objc_msgSend_errorDescription(v24, v25, v26);
    v29 = objc_msgSend_errorWithDomain_code_userInfo_format_(v18, v28, v19, v20, v21, @"Error marking asset as broken: %@", v27);

    objc_msgSend_setError_(WeakRetained, v30, v29);
    v33 = objc_msgSend_assetOrPackageMarkedBrokenBlock(WeakRetained, v31, v32);

    if (v33)
    {
      v36 = objc_msgSend_callbackQueue(WeakRetained, v34, v35);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = sub_2251B2D20;
      v42[3] = &unk_278546990;
      v42[4] = WeakRetained;
      v43 = v5;
      v44 = v29;
      dispatch_async(v36, v42);
    }
  }
}

void sub_2251B2D20(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_assetOrPackageMarkedBrokenBlock(*(a1 + 32), a2, a3);
  (*(v4 + 2))(v4, *(a1 + 40), *(a1 + 48));
}

void sub_2251B2D7C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_assetOrPackageMarkedBrokenBlock(*(a1 + 32), a2, a3);
  (*(v4 + 2))(v4, *(a1 + 40), 0);
}

void sub_2251B2DDC(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  v7 = *MEMORY[0x277CBC878];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v8 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_INFO))
    {
      v11 = v8;
      v14 = objc_msgSend_error(v3, v12, v13);
      v22 = 138412290;
      v23 = v14;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Error breaking asset: %@", &v22, 0xCu);
    }

    v15 = objc_msgSend_error(v3, v9, v10);
    objc_msgSend_setMarkAssetBrokenError_(WeakRetained, v16, v15);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v18 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v22) = 0;
      _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Completed marking asset broken", &v22, 2u);
    }
  }

  objc_msgSend_setWrapperOperation_(WeakRetained, v17, 0);
  v21 = objc_msgSend_stateTransitionGroup(WeakRetained, v19, v20);
  dispatch_group_leave(v21);
}

void sub_2251B3A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251B3A30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_urlRequest(WeakRetained, v1, v2);
  v6 = objc_msgSend_error(v3, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_urlRequest(WeakRetained, v7, v8);
    v12 = objc_msgSend_error(v9, v10, v11);
    objc_msgSend_finishWithError_(WeakRetained, v13, v12);
  }

  else
  {
    objc_msgSend_finishWithError_(WeakRetained, v7, 0);
  }
}

void sub_2251B498C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_assetPublishedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_assetPublishedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  }
}

void sub_2251B4C3C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_assetPublishedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v10 = objc_msgSend_assetPublishedBlock(*(a1 + 32), v5, v6);
    v9 = objc_msgSend_recordID(*(a1 + 40), v7, v8);
    (*(v10 + 2))(v10, v9, *(a1 + 48), *(a1 + 56), 0);
  }
}

void sub_2251B4EDC(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      v31 = v12;
      v32 = 2112;
      v33 = v8;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Error publish assets for record %@: %@", buf, 0x16u);
    }

    v13 = objc_msgSend_callbackQueue(*(a1 + 40), v10, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251B50DC;
    block[3] = &unk_278546990;
    v28 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    v29 = v8;
    dispatch_async(v13, block);

    v16 = objc_msgSend_stateTransitionGroup(*(a1 + 40), v14, v15);
    dispatch_group_leave(v16);
  }

  else
  {
    v17 = objc_msgSend_URLOptions(*(a1 + 40), v6, v7);
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    if ((v17 & 2) != 0)
    {
      objc_msgSend__finishPublishAssetsForRecord_(*(a1 + 40), v18, *(a1 + 48));
    }

    else
    {
      v22 = objc_msgSend_pcs(v5, v18, v19);
      objc_msgSend__dispatchAssetURLsForRecord_pcs_(v20, v23, v21, v22);
    }

    v26 = objc_msgSend_stateTransitionGroup(*(a1 + 40), v24, v25);
    dispatch_group_leave(v26);
  }
}

void sub_2251B50DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_assetPublishedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_assetPublishedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), 0, 0, *(a1 + 48));
  }
}

void sub_2251B5358(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setUseCachedEtags_(v3, v4, 0);
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2251B550C;
  v14[3] = &unk_278548CC0;
  objc_copyWeak(&v15, &location);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v5, v14);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2251B59A8;
  v11[3] = &unk_278548748;
  objc_copyWeak(&v12, &location);
  objc_copyWeak(&v13, &from);
  objc_msgSend_setCompletionBlock_(v3, v6, v11);
  objc_msgSend_setFetchRecordsOperation_(*(a1 + 32), v7, v3);
  v10 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v8, v9);
  dispatch_group_enter(v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251B54CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251B550C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = MEMORY[0x277CBC878];
  v12 = *MEMORY[0x277CBC878];
  v13 = MEMORY[0x277CBC880];
  v14 = MEMORY[0x277CBC830];
  if (v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v12);
    }

    v15 = *v14;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v47 = v8;
      v48 = 2112;
      v49 = v9;
      _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "Failed to fetch record %@: %@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v12);
  }

  v20 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v47 = v8;
    _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Fetched record %@", buf, 0xCu);
    if (v7)
    {
      goto LABEL_12;
    }

LABEL_30:
    v9 = 0;
    goto LABEL_6;
  }

  if (!v7)
  {
    goto LABEL_30;
  }

LABEL_12:
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v21 = objc_msgSend_fileNamesByAssetFieldNames(WeakRetained, v16, v17);
  v24 = objc_msgSend_allKeys(v21, v22, v23);

  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v41, v45, 16);
  if (v27)
  {
    v28 = *v42;
LABEL_14:
    v29 = 0;
    while (1)
    {
      if (*v42 != v28)
      {
        objc_enumerationMutation(v24);
      }

      v30 = objc_msgSend_objectForKeyedSubscript_(v7, v26, *(*(&v41 + 1) + 8 * v29));

      if (v30)
      {
        break;
      }

      if (v27 == ++v29)
      {
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v41, v45, 16);
        if (v27)
        {
          goto LABEL_14;
        }

        goto LABEL_20;
      }
    }

    v9 = 0;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
LABEL_20:

    v31 = MEMORY[0x277CBC830];
    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *v11);
    }

    v32 = *v31;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v47 = v8;
      _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_INFO, "Warn: Record %@ contained no matching asset fields to publish", buf, 0xCu);
    }

    v9 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v33, *MEMORY[0x277CBC120], 2003, @"Record %@ contained no matching asset fields to publish", v8);
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  if (!v9)
  {
    v19 = objc_msgSend_fetchedRecordsByID(WeakRetained, v16, v17);
    objc_sync_enter(v19);
    v36 = objc_msgSend_fetchedRecordsByID(WeakRetained, v34, v35);
    objc_msgSend_setObject_forKeyedSubscript_(v36, v37, v7, v8);

    objc_sync_exit(v19);
    goto LABEL_7;
  }

LABEL_6:
  v18 = objc_msgSend_callbackQueue(WeakRetained, v16, v17);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251B591C;
  block[3] = &unk_278546990;
  block[4] = WeakRetained;
  v39 = v8;
  v40 = v9;
  v19 = v9;
  dispatch_async(v18, block);

LABEL_7:
}

void sub_2251B591C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_assetPublishedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_assetPublishedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), 0, 0, *(a1 + 48));
  }
}

void sub_2251B59A8(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);

  v7 = *MEMORY[0x277CBC878];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v11 = v8;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v16 = objc_msgSend_ckShortDescription(v3, v14, v15);
      v19 = objc_msgSend_error(v3, v17, v18);
      v32 = 138544130;
      v33 = v13;
      v34 = 2048;
      v35 = v3;
      v36 = 2114;
      v37 = v16;
      v38 = 2112;
      v39 = v19;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Fetch records operation <%{public}@: %p; %{public}@> finished with error %@", &v32, 0x2Au);
    }

    v20 = objc_msgSend_error(v3, v9, v10);
    objc_msgSend_setError_(WeakRetained, v21, v20);
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v7);
  }

  v23 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v20 = v23;
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v31 = objc_msgSend_ckShortDescription(v3, v29, v30);
    v32 = 138543874;
    v33 = v28;
    v34 = 2048;
    v35 = v3;
    v36 = 2114;
    v37 = v31;
    _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Fetch records operation <%{public}@: %p; %{public}@> succeeded", &v32, 0x20u);

LABEL_7:
  }

  objc_msgSend_setFetchRecordsOperation_(WeakRetained, v22, 0);
  v26 = objc_msgSend_stateTransitionGroup(WeakRetained, v24, v25);
  dispatch_group_leave(v26);
}

void sub_2251B66CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2251B66F8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2251B68C0;
  v14[3] = &unk_278548D00;
  objc_copyWeak(&v16, &from);
  objc_copyWeak(v17, &location);
  v17[1] = *(a1 + 48);
  v15 = *(a1 + 32);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v4, v14);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = sub_2251B6B38;
  v10 = &unk_278548AD0;
  objc_copyWeak(&v12, &location);
  objc_copyWeak(&v13, &from);
  v11 = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v5, &v7);
  objc_msgSend_setFetchOperation_(*(a1 + 32), v6, v3, v7, v8, v9, v10);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251B6878(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251B68C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v12 = objc_loadWeakRetained((a1 + 56));
  if (v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v20 = v13;
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v25 = objc_msgSend_ckShortDescription(WeakRetained, v23, v24);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v30 = objc_msgSend_ckShortDescription(v12, v28, v29);
      v33 = 138544898;
      v34 = v22;
      v35 = 2048;
      v36 = WeakRetained;
      v37 = 2114;
      v38 = v25;
      v39 = 2114;
      v40 = v27;
      v41 = 2048;
      v42 = v12;
      v43 = 2114;
      v44 = v30;
      v45 = 2112;
      v46 = v9;
      _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Repair records operation <%{public}@: %p; %{public}@> for operation <%{public}@: %p; %{public}@> could not fetch original record with error %@", &v33, 0x48u);
    }

    objc_msgSend_setError_(v12, v14, v9);
  }

  else
  {
    v17 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 40) + 8) + 40), v11, v8);
    if (!v17)
    {
      v31 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v15, v16);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v31, v32, *(a1 + 64), *(a1 + 32), @"CKDRepairAssetsOperation.m", 164, @"recordIDToUUID can never produce a nil value here");
    }

    v18 = objc_msgSend_assetOrPackageUUIDToOriginalRecord(v12, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(v18, v19, v7, v17);
  }
}

void sub_2251B6B38(id *a1)
{
  v56 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  v6 = objc_msgSend_error(v3, v4, v5);

  v7 = *MEMORY[0x277CBC878];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v8 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v18 = v8;
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v23 = objc_msgSend_ckShortDescription(v3, v21, v22);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v28 = objc_msgSend_ckShortDescription(WeakRetained, v26, v27);
      v31 = objc_msgSend_error(v3, v29, v30);
      v42 = 138544898;
      v43 = v20;
      v44 = 2048;
      v45 = v3;
      v46 = 2114;
      v47 = v23;
      v48 = 2114;
      v49 = v25;
      v50 = 2048;
      v51 = WeakRetained;
      v52 = 2114;
      v53 = v28;
      v54 = 2112;
      v55 = v31;
      _os_log_error_impl(&dword_22506F000, v18, OS_LOG_TYPE_ERROR, "Repair records sub-operation <%{public}@: %p; %{public}@> for operation <%{public}@: %p; %{public}@> completed fetch original records with error %@", &v42, 0x48u);
    }

    v11 = objc_msgSend_error(v3, v9, v10);
    objc_msgSend_setError_(WeakRetained, v12, v11);
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v7);
  }

  v14 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    v11 = v14;
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v36 = objc_msgSend_ckShortDescription(v3, v34, v35);
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v41 = objc_msgSend_ckShortDescription(WeakRetained, v39, v40);
    v42 = 138544642;
    v43 = v33;
    v44 = 2048;
    v45 = v3;
    v46 = 2114;
    v47 = v36;
    v48 = 2114;
    v49 = v38;
    v50 = 2048;
    v51 = WeakRetained;
    v52 = 2114;
    v53 = v41;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Repair records sub-operation <%{public}@: %p; %{public}@> for operation <%{public}@: %p; %{public}@> completed fetch original records", &v42, 0x3Eu);

LABEL_7:
  }

  objc_msgSend_setFetchOperation_(WeakRetained, v13, 0);
  v17 = objc_msgSend_stateTransitionGroup(a1[4], v15, v16);
  dispatch_group_leave(v17);
}

void sub_2251B75DC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_225073FE0;
  v25[4] = sub_22507357C;
  v26 = objc_opt_new();
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_225073FE0;
  v23[4] = sub_22507357C;
  v24 = objc_opt_new();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2251B790C;
  v21[3] = &unk_278547718;
  objc_copyWeak(&v22, &location);
  objc_msgSend_setSaveProgressBlock_(v3, v4, v21);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2251B7A5C;
  v18[3] = &unk_278548D50;
  objc_copyWeak(&v19, &location);
  objc_copyWeak(v20, &from);
  v5 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v18[5] = v23;
  v20[1] = v5;
  v18[6] = v25;
  objc_msgSend_setSaveCompletionBlock_(v3, v6, v18);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_2251B7ED0;
  v12 = &unk_278548D78;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(&v17, &from);
  v14 = v23;
  v15 = v25;
  v13 = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v7, &v9);
  objc_msgSend_setUploadOperation_(*(a1 + 32), v8, v3, v9, v10, v11, v12);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v22);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(v25, 8);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251B788C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  objc_destroyWeak((v34 + 64));
  objc_destroyWeak((v34 + 56));
  objc_destroyWeak((v33 + 64));
  objc_destroyWeak((v33 + 56));
  objc_destroyWeak((v32 + 32));
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v35 - 144), 8);
  objc_destroyWeak((v35 - 96));
  objc_destroyWeak((v35 - 88));
  _Unwind_Resume(a1);
}

void sub_2251B790C(uint64_t a1, void *a2, double a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_msgSend_recordName(v5, v7, v8);

  v12 = objc_msgSend_UUIDToAssetOrPackage(WeakRetained, v10, v11);
  v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, v9);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v15 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412546;
    v17 = v14;
    v18 = 2048;
    v19 = a3;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Progress for upload of repaired asset %@: %.2f", &v16, 0x16u);
  }
}

void sub_2251B7A5C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v59 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v49 = a3;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v13 = objc_loadWeakRetained((a1 + 64));
  v16 = objc_msgSend_recordName(v9, v14, v15);
  v19 = objc_msgSend_UUIDToAssetOrPackage(WeakRetained, v17, v18);
  v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, v16);

  if (!v21)
  {
    v44 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v22, v23);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v44, v45, *(a1 + 72), *(a1 + 32), @"CKDRepairAssetsOperation.m", 280, @"Expected non-nil asset or package in %@", v13);
  }

  v24 = objc_msgSend_assetOrPackageUUIDToMetadata(WeakRetained, v22, v23);
  v26 = objc_msgSend_objectForKeyedSubscript_(v24, v25, v16);

  if (!v26)
  {
    v46 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v27, v28);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v46, v47, *(a1 + 72), *(a1 + 32), @"CKDRepairAssetsOperation.m", 282, @"Expected non-nil metadata for asset or package %@ in %@", v21, v13);
  }

  v29 = *MEMORY[0x277CBC878];
  if (v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v29);
    }

    v30 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      log = v30;
      v43 = objc_msgSend_operationID(WeakRetained, v41, v42);
      *buf = 138412802;
      v54 = v21;
      v55 = 2114;
      v56 = v43;
      v57 = 2112;
      v58 = v11;
      _os_log_error_impl(&dword_22506F000, log, OS_LOG_TYPE_ERROR, "Failed to upload asset or package %@ with operation %{public}@: %@", buf, 0x20u);
    }

    v31 = *(*(*(a1 + 40) + 8) + 40);
    objc_sync_enter(v31);
    objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 40) + 8) + 40), v32, v11, v16);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v29);
    }

    v33 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v54 = v21;
      _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "Successfully uploaded asset or package %@", buf, 0xCu);
    }

    v31 = *(*(*(a1 + 48) + 8) + 40);
    objc_sync_enter(v31);
    objc_msgSend_addObject_(*(*(*(a1 + 48) + 8) + 40), v34, v16);
  }

  objc_sync_exit(v31);

  v37 = objc_msgSend_assetOrPackageRepairedBlock(WeakRetained, v35, v36);

  if (v37)
  {
    v40 = objc_msgSend_callbackQueue(WeakRetained, v38, v39);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251B7E74;
    block[3] = &unk_278546990;
    block[4] = WeakRetained;
    v51 = v26;
    v52 = v11;
    dispatch_async(v40, block);
  }
}

void sub_2251B7E74(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_assetOrPackageRepairedBlock(*(a1 + 32), a2, a3);
  (*(v4 + 2))(v4, *(a1 + 40), *(a1 + 48));
}

void sub_2251B7ED0(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_loadWeakRetained((a1 + 64));
  v6 = objc_msgSend_error(v3, v4, v5);

  v7 = *MEMORY[0x277CBC878];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v8 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v20 = v8;
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v25 = objc_msgSend_ckShortDescription(v3, v23, v24);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v30 = objc_msgSend_ckShortDescription(WeakRetained, v28, v29);
      v33 = objc_msgSend_error(v3, v31, v32);
      v44 = 138544898;
      v45 = v22;
      v46 = 2048;
      v47 = v3;
      v48 = 2114;
      v49 = v25;
      v50 = 2114;
      v51 = v27;
      v52 = 2048;
      v53 = WeakRetained;
      v54 = 2114;
      v55 = v30;
      v56 = 2112;
      v57 = v33;
      _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Repair records sub-operation <%{public}@: %p; %{public}@> for operation <%{public}@: %p; %{public}@> finished with error %@", &v44, 0x48u);
    }

    v11 = objc_msgSend_error(v3, v9, v10);
    objc_msgSend_setError_(WeakRetained, v12, v11);
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v7);
  }

  v14 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    v11 = v14;
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v38 = objc_msgSend_ckShortDescription(v3, v36, v37);
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v43 = objc_msgSend_ckShortDescription(WeakRetained, v41, v42);
    v44 = 138544642;
    v45 = v35;
    v46 = 2048;
    v47 = v3;
    v48 = 2114;
    v49 = v38;
    v50 = 2114;
    v51 = v40;
    v52 = 2048;
    v53 = WeakRetained;
    v54 = 2114;
    v55 = v43;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Repair records sub-operation <%{public}@: %p; %{public}@> for operation <%{public}@: %p; %{public}@> succeeded", &v44, 0x3Eu);

LABEL_7:
  }

  objc_msgSend_setAssetOrPackageUUIDToUploadError_(WeakRetained, v13, *(*(*(a1 + 40) + 8) + 40));
  objc_msgSend_setUploadedAssetOrPackageUUIDs_(WeakRetained, v15, *(*(*(a1 + 48) + 8) + 40));
  objc_msgSend_setUploadOperation_(WeakRetained, v16, 0);
  v19 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v17, v18);
  dispatch_group_leave(v19);
}

void sub_2251B8C04(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  objc_msgSend_setUseEncryption_(v3, v4, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2251B8D40;
  v7[3] = &unk_278548AD0;
  objc_copyWeak(&v8, &location);
  objc_copyWeak(&v9, &from);
  v7[4] = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v5, v7);
  objc_msgSend_setUpdateOperation_(*(a1 + 32), v6, v3);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251B8D08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251B8D40(id *a1)
{
  v56 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  v6 = objc_msgSend_error(v3, v4, v5);

  v7 = *MEMORY[0x277CBC878];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v8 = *MEMORY[0x277CBC838];
    if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_ERROR))
    {
      v18 = v8;
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v23 = objc_msgSend_ckShortDescription(v3, v21, v22);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v28 = objc_msgSend_ckShortDescription(WeakRetained, v26, v27);
      v31 = objc_msgSend_error(v3, v29, v30);
      v42 = 138544898;
      v43 = v20;
      v44 = 2048;
      v45 = v3;
      v46 = 2114;
      v47 = v23;
      v48 = 2114;
      v49 = v25;
      v50 = 2048;
      v51 = WeakRetained;
      v52 = 2114;
      v53 = v28;
      v54 = 2112;
      v55 = v31;
      _os_log_error_impl(&dword_22506F000, v18, OS_LOG_TYPE_ERROR, "Repair asset sub-operation <%{public}@: %p; %{public}@> for operation <%{public}@: %p; %{public}@> completed repair record update with error %@", &v42, 0x48u);
    }

    v11 = objc_msgSend_error(v3, v9, v10);
    objc_msgSend_setError_(WeakRetained, v12, v11);
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v7);
  }

  v14 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    v11 = v14;
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v36 = objc_msgSend_ckShortDescription(v3, v34, v35);
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v41 = objc_msgSend_ckShortDescription(WeakRetained, v39, v40);
    v42 = 138544642;
    v43 = v33;
    v44 = 2048;
    v45 = v3;
    v46 = 2114;
    v47 = v36;
    v48 = 2114;
    v49 = v38;
    v50 = 2048;
    v51 = WeakRetained;
    v52 = 2114;
    v53 = v41;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Repair asset sub-operation <%{public}@: %p; %{public}@> for operaiton <%{public}@: %p; %{public}@> completed repair record update", &v42, 0x3Eu);

LABEL_7:
  }

  objc_msgSend_setUpdateOperation_(WeakRetained, v13, 0);
  v17 = objc_msgSend_stateTransitionGroup(a1[4], v15, v16);
  dispatch_group_leave(v17);
}

void sub_2251B9D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_2251B9DCC(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = MEMORY[0x277CBC838];
  v6 = *MEMORY[0x277CBC838];
  if (os_log_type_enabled(*MEMORY[0x277CBC838], OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v22) = 0;
    _os_log_debug_impl(&dword_22506F000, v6, OS_LOG_TYPE_DEBUG, "Completed updating missing asset status", &v22, 2u);
  }

  v9 = objc_msgSend_error(v3, v7, v8);

  if (v9)
  {
    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v15 = v12;
      v18 = objc_msgSend_error(v3, v16, v17);
      v22 = 138412290;
      v23 = v18;
      _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_INFO, "Error updating missing asset status: %@", &v22, 0xCu);
    }

    v19 = objc_msgSend_error(v3, v13, v14);
    objc_msgSend_setError_(WeakRetained, v20, v19);
  }

  v21 = objc_msgSend_stateTransitionGroup(WeakRetained, v10, v11);
  dispatch_group_leave(v21);
}

id sub_2251BA2A0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_msgSend_isReference(a1, v5, v6))
  {
    objc_msgSend__prepareReferenceAssetForUpload_(v4, v7, a1);
  }

  else
  {
    objc_msgSend__prepareAssetForUpload_(v4, v7, a1);
  }
  v8 = ;

  return v8;
}

id sub_2251BA690(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_allMMCSItems(a2, a2, a3);
  v5 = objc_msgSend_CKMap_(v3, v4, &unk_28385D480);

  return v5;
}

id sub_2251BA6E8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v6 = objc_msgSend_itemID(v3, v4, v5);
  objc_msgSend_progress(v3, v7, v8);
  v10 = v9;
  v13 = objc_msgSend_signature(v3, v11, v12);
  if (objc_msgSend_finished(v3, v14, v15))
  {
    objc_msgSend_stringWithFormat_(v2, v16, @"<CKDMMCSItem %p itemID: %lu, progress %0.2f, signature: %@ %@>", v3, v6, v10, v13, @"finished");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v2, v16, @"<CKDMMCSItem %p itemID: %lu, progress %0.2f, signature: %@ %@>", v3, v6, v10, v13, &stru_28385ED00);
  }
  v17 = ;

  return v17;
}

void sub_2251BAB4C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_uploadPreparationBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_uploadPreparationBlock(*(a1 + 32), v5, v6);
    v7[2](v7, *(a1 + 40));
  }
}

void sub_2251BACDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_uploadProgressBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_uploadProgressBlock(*(a1 + 32), v5, v6);
    v7[2](v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_2251BAEE0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_uploadCompletionBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_uploadCompletionBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_2251BBD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CKDMMCSItem *sub_2251BBE00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CKDMMCSItem alloc];
  v5 = *(a1 + 32);
  v8 = objc_msgSend_temporary(*(a1 + 40), v6, v7);
  v10 = objc_msgSend_initWithPackage_temporary_(v4, v9, v5, v8);
  v13 = objc_msgSend_UUID(*(a1 + 32), v11, v12);
  objc_msgSend_setTrackingUUID_(v10, v14, v13);

  v17 = objc_msgSend_fileURL(v3, v15, v16);
  objc_msgSend_setFileURL_(v10, v18, v17);

  v21 = objc_msgSend_fileID(v3, v19, v20);
  objc_msgSend_setFileID_(v10, v22, v21);

  v25 = objc_msgSend_generationID(v3, v23, v24);
  objc_msgSend_setGenerationID_(v10, v26, v25);

  v29 = objc_msgSend_deviceID(v3, v27, v28);
  objc_msgSend_setDeviceID_(v10, v30, v29);

  v33 = objc_msgSend_itemTypeHint(v3, v31, v32);
  objc_msgSend_setItemTypeHint_(v10, v34, v33);

  v37 = objc_msgSend_packageIndex(v3, v35, v36);
  objc_msgSend_setPackageIndex_(v10, v38, v37);

  return v10;
}

intptr_t sub_2251BBF50(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_error(a2, a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  return dispatch_semaphore_signal(v7);
}

void sub_2251BC9E0(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    objc_msgSend_setError_(*(a1 + 32), a2, a3);
  }

  v4 = objc_msgSend_stateTransitionGroup(*(a1 + 32), a2, a3);
  dispatch_group_leave(v4);
}

void sub_2251BE618(id *a1, void *a2, uint64_t a3)
{
  v20 = objc_msgSend_error(a2, a2, a3);
  v6 = objc_msgSend_anyObject(a1[4], v4, v5);
  v9 = objc_msgSend_authPutRequest(v6, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_authPutRequest(v6, v10, v11);
    objc_msgSend_setAuthPutRequest_(a1[5], v13, v12);
  }

  objc_msgSend__didPrepareAssetBatch_error_(a1[6], v10, a1[5], v20);
  v16 = objc_msgSend_error(a1[6], v14, v15);

  if (!v16 && v20)
  {
    objc_msgSend_setError_(a1[6], v17, v20);
  }

  v19 = objc_msgSend_stateTransitionGroup(a1[6], v17, v18);
  dispatch_group_leave(v19);
}

void sub_2251BF828(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v4, v5);
  dispatch_group_enter(v6);

  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  objc_initWeak(&v12, *(a1 + 40));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2251BF988;
  v8[3] = &unk_278548EA0;
  objc_copyWeak(&v9, &from);
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, &v12);
  objc_msgSend_setCompletionBlock_(v3, v7, v8);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251BF94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(v16 + 6);
  objc_destroyWeak(v16 + 5);
  objc_destroyWeak(v16 + 4);
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 - 48));
  objc_destroyWeak((v17 - 40));
  _Unwind_Resume(a1);
}

void sub_2251BF988(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v3 = objc_loadWeakRetained(a1 + 5);
  v4 = objc_loadWeakRetained(a1 + 6);
  v7 = objc_msgSend_error(v3, v5, v6);

  if (!v7)
  {
    v10 = objc_msgSend_error(WeakRetained, v8, v9);
    objc_msgSend_setError_(v3, v11, v10);
  }

  v12 = objc_msgSend_error(WeakRetained, v8, v9);
  v20 = 0;
  UploadTokensForAssetTokenRequest_error_newError = objc_msgSend__didFetchUploadTokensForAssetTokenRequest_error_newError_(v3, v13, v4, v12, &v20);
  v15 = v20;

  if ((UploadTokensForAssetTokenRequest_error_newError & 1) == 0)
  {
    v18 = objc_msgSend_error(v3, v16, v17);

    if (!v18)
    {
      objc_msgSend_setError_(v3, v16, v15);
    }
  }

  v19 = objc_msgSend_stateTransitionGroup(v3, v16, v17);
  dispatch_group_leave(v19);
}

void sub_2251C09A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  objc_destroyWeak(&a41);
  objc_destroyWeak((v41 - 176));
  _Unwind_Resume(a1);
}

void sub_2251C09EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CKDMMCSItem alloc];
  v5 = *(a1 + 32);
  v8 = objc_msgSend_temporary(*(a1 + 40), v6, v7);
  v47 = objc_msgSend_initWithPackage_temporary_(v4, v9, v5, v8);
  v12 = objc_msgSend_UUID(*(a1 + 32), v10, v11);
  objc_msgSend_setTrackingUUID_(v47, v13, v12);

  v16 = objc_msgSend_itemID(v3, v14, v15);
  objc_msgSend_setItemID_(v47, v17, v16);
  v20 = objc_msgSend_fileURL(v3, v18, v19);
  objc_msgSend_setFileURL_(v47, v21, v20);

  v24 = objc_msgSend_deviceID(v3, v22, v23);
  objc_msgSend_setDeviceID_(v47, v25, v24);

  v28 = objc_msgSend_fileID(v3, v26, v27);
  objc_msgSend_setFileID_(v47, v29, v28);

  v32 = objc_msgSend_generationID(v3, v30, v31);
  objc_msgSend_setGenerationID_(v47, v33, v32);

  v36 = objc_msgSend_itemTypeHint(v3, v34, v35);
  objc_msgSend_setItemTypeHint_(v47, v37, v36);

  v40 = objc_msgSend_packageIndex(v3, v38, v39);
  objc_msgSend_setPackageIndex_(v47, v41, v40);
  v44 = objc_msgSend_size(v3, v42, v43);

  v46 = 48;
  if (!v44)
  {
    v46 = 56;
  }

  objc_msgSend_addObject_(*(a1 + v46), v45, v47);
}

void sub_2251C0B7C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__didMakeProgressForMMCSSectionItem_task_(WeakRetained, v4, v3, *(a1 + 32));
}

void sub_2251C0BDC(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_error(v3, v4, v5);
  v9 = objc_msgSend_sectionItems(*(a1 + 32), v7, v8);
  objc_msgSend_addObjectsFromArray_(v9, v10, *(a1 + 40));

  objc_msgSend__collectMetricsFromCompletedItemGroup_(*(a1 + 48), v11, v3);
  v12 = *(a1 + 48);
  v16[0] = *(a1 + 32);
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v16, 1);
  objc_msgSend__didUploadMMCSSectionItems_task_error_(v12, v15, v14, *(a1 + 56), v6);

  dispatch_group_leave(*(a1 + 64));
}

uint64_t sub_2251C0CC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cancelTokens(*(a1 + 32), a2, a3);
  objc_msgSend_removeCancelToken_(v4, v5, *(a1 + 40));

  result = *(a1 + 48);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

uint64_t sub_2251C1368(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_2251C157C(uint64_t a1, const char *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  objc_msgSend_removeObjectsInArray_(*(a1 + 32), a2, *(a1 + 40));
  v5 = objc_msgSend_maxPackageUploadsPerBatch(*(a1 + 48), v3, v4);
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_count(*(a1 + 32), v7, v8);
  if (v5 >= v5 - v9)
  {
    v11 = objc_msgSend_initWithCapacity_(v6, v10, v5 - v9);
  }

  else
  {
    v11 = objc_msgSend_initWithCapacity_(v6, v10, v5);
  }

  v14 = v11;
  v15 = objc_msgSend_objectEnumerator(*(a1 + 56), v12, v13);
  v18 = objc_msgSend_count(*(a1 + 32), v16, v17);
  v21 = v5 - v18;
  if (v5 > v18)
  {
    do
    {
      v22 = objc_msgSend_nextObject(v15, v19, v20);
      if (!v22)
      {
        break;
      }

      v23 = v22;
      objc_msgSend_addObject_(v14, v19, v22);

      --v21;
    }

    while (v21);
  }

  v36 = v15;
  objc_msgSend_removeObjectsInArray_(*(a1 + 56), v19, v14);
  objc_msgSend_addObjectsFromArray_(*(a1 + 32), v24, v14);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = v14;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v40, v44, 16);
  if (v27)
  {
    v30 = v27;
    v31 = *v41;
    do
    {
      v32 = 0;
      do
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(v25);
        }

        v33 = *(*(&v40 + 1) + 8 * v32);
        objc_msgSend_qualityOfService(*(a1 + 48), v28, v29);
        v34 = CKGetGlobalQueue();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2251C17CC;
        block[3] = &unk_2785463D0;
        v35 = *(a1 + 56);
        block[4] = *(a1 + 48);
        block[5] = v33;
        v38 = v35;
        v39 = *(a1 + 32);
        dispatch_async(v34, block);

        ++v32;
      }

      while (v30 != v32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v40, v44, 16);
    }

    while (v30);
  }
}

void sub_2251C17CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cancelTokens(*(a1 + 32), a2, a3);
  objc_msgSend_addCancelToken_withOperation_(v4, v5, *(a1 + 40), *(a1 + 32));

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2251C18A0;
  v11[3] = &unk_2785463D0;
  v10 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  objc_msgSend__uploadPackageSectionsWithTask_completionBlock_(v10, v9, *(&v10 + 1), v11);
}

void sub_2251C18A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_cancelTokens(*(a1 + 32), a2, a3);
  objc_msgSend_removeCancelToken_(v4, v5, *(a1 + 40));

  v8 = objc_msgSend_cancelTokens(*(a1 + 40), v6, v7);
  objc_msgSend_removeAllCancelTokens(v8, v9, v10);

  v13 = objc_msgSend_group(*(a1 + 40), v11, v12);
  dispatch_group_leave(v13);

  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 32);
  v20[0] = *(a1 + 40);
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v20, 1);
  objc_msgSend__uploadPackageSectionsWithPendingTasks_uploadingTasks_completedTasks_(v16, v19, v14, v15, v18);
}

void sub_2251C1DF4(uint64_t a1, void *a2)
{
  v2 = a2;
  MMCSOperationMetricCombineMetrics();
  v11 = objc_msgSend_date(MEMORY[0x277CBEAA8], v3, v4);
  v7 = objc_msgSend_startDate(v2, v5, v6);
  objc_msgSend_timeIntervalSinceDate_(v11, v8, v7);
  objc_msgSend_setDuration_(v2, v9, v10);
}

void sub_2251C3740(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x570]);
  _Unwind_Resume(a1);
}

void sub_2251C3768(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_cancelTokens(*(a1 + 32), a2, a3);
  objc_msgSend_removeAllCancelTokens(v4, v5, v6);

  v9 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v7, v8);
  dispatch_group_leave(v9);
}

void sub_2251C37D0(uint64_t a1, const char *a2)
{
  objc_msgSend__didUploadPackageWithTask_(*(a1 + 32), a2, *(a1 + 40));
  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

BOOL sub_2251C3810(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_uploadReceipt(a2, a2, a3);
  v4 = v3 != 0;

  return v4;
}

BOOL sub_2251C3848(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_uploadReceipt(a2, a2, a3);
  v4 = v3 == 0;

  return v4;
}

void sub_2251C3880(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__didMakeProgressForMMCSItem_(WeakRetained, v4, v3);
}

void sub_2251C38DC(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_msgSend__collectMetricsFromCompletedItemGroupSet_(*(a1 + 32), v4, v3);
  v7 = objc_msgSend_error(v3, v5, v6);
  v8 = *(a1 + 32);
  v11 = objc_msgSend_allMMCSItems(*(a1 + 40), v9, v10);
  objc_msgSend__didUploadMMCSItems_error_(v8, v12, v11, v7);

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = objc_msgSend_allMMCSAndSectionItems(*(a1 + 40), v13, v14, 0);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v32, v36, 16);
  if (v17)
  {
    v20 = v17;
    v21 = *v33;
    do
    {
      v22 = 0;
      do
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v15);
        }

        v25 = objc_msgSend_package(*(*(&v32 + 1) + 8 * v22), v18, v19);
        if (v25)
        {
          v26 = objc_msgSend_uploadTasksByPackages(*(a1 + 32), v23, v24);
          v28 = objc_msgSend_objectForKey_(v26, v27, v25);

          v31 = objc_msgSend_group(v28, v29, v30);
          dispatch_group_leave(v31);
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v32, v36, 16);
    }

    while (v20);
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t sub_2251C42E4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_storageGroupingPolicy(v4, v6, v7);
  v11 = objc_msgSend_storageGroupingPolicy(v5, v9, v10);
  if (v8 < v11)
  {
    goto LABEL_2;
  }

  if (v11 < v8)
  {
    goto LABEL_4;
  }

  if (v8 != 1)
  {
    goto LABEL_10;
  }

  v15 = objc_msgSend_recordKey(v4, v12, v13);
  v18 = objc_msgSend_recordKey(v5, v16, v17);
  if (!v15 || (v20 = v18) == 0)
  {
    __assert_rtn("CKSortedForUpload_block_invoke", "CKDUploadAssetsOperation.m", 72, "key1 && key2");
  }

  v14 = objc_msgSend_compare_(v15, v19, v18);

  if (!v14)
  {
LABEL_10:
    v22 = objc_msgSend_uploadRank(v4, v12, v13);
    v25 = objc_msgSend_uploadRank(v5, v23, v24);
    if (v22 < v25)
    {
LABEL_2:
      v14 = -1;
      goto LABEL_9;
    }

    if (v25 < v22)
    {
LABEL_4:
      v14 = 1;
      goto LABEL_9;
    }

    if (v8 == 1)
    {
      goto LABEL_16;
    }

    v28 = objc_msgSend_recordKey(v4, v26, v27);
    v31 = objc_msgSend_recordKey(v5, v29, v30);
    if (!v28 || (v33 = v31) == 0)
    {
      __assert_rtn("CKSortedForUpload_block_invoke", "CKDUploadAssetsOperation.m", 92, "key1 && key2");
    }

    v14 = objc_msgSend_compare_(v28, v32, v31);

    if (!v14)
    {
LABEL_16:
      v34 = objc_msgSend_record(v4, v26, v27);
      v37 = objc_msgSend_recordID(v34, v35, v36);
      v40 = objc_msgSend_record(v5, v38, v39);
      v43 = objc_msgSend_recordID(v40, v41, v42);
      v14 = objc_msgSend_compareToRecordID_(v37, v44, v43);

      if (!v14)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          __assert_rtn("CKSortedForUpload_block_invoke", "CKDUploadAssetsOperation.m", 101, "[obj1 isKindOfClass:[CKAsset class]] && [obj2 isKindOfClass:[CKAsset class]]");
        }

        v47 = objc_msgSend_mergeableDeltaID(v4, v45, v46);
        v50 = objc_msgSend_deltaIdentifier(v47, v48, v49);

        v53 = objc_msgSend_mergeableDeltaID(v5, v51, v52);
        v56 = objc_msgSend_deltaIdentifier(v53, v54, v55);

        if (!v50 || !v56 || (v14 = objc_msgSend_compare_(v50, v57, v56)) == 0)
        {
          v59 = objc_msgSend_arrayIndex(v4, v57, v58);
          v62 = objc_msgSend_arrayIndex(v5, v60, v61);
          if ((v59 & 0x8000000000000000) != 0 || (v62 & 0x8000000000000000) != 0)
          {
            __assert_rtn("CKSortedForUpload_block_invoke", "CKDUploadAssetsOperation.m", 113, "0 <= index1 && 0 <= index2");
          }

          if (v59 < v62)
          {
            v14 = -1;
          }

          else
          {
            v14 = v62 < v59;
          }
        }
      }
    }
  }

LABEL_9:

  return v14;
}

void sub_2251C52C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251C52F4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_msgSend_stateTransitionGroup(WeakRetained, v5, v6);
  dispatch_group_enter(v7);

  v8 = v3;
  objc_initWeak(&location, v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2251C546C;
  v13[3] = &unk_278548FA8;
  objc_copyWeak(&v14, (a1 + 32));
  objc_msgSend_setSaveCompletionBlock_(v8, v9, v13);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2251C54D0;
  v11[3] = &unk_2785476F0;
  objc_copyWeak(&v12, &location);
  v11[4] = WeakRetained;
  objc_msgSend_setCompletionBlock_(v8, v10, v11);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void sub_2251C5440(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251C546C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    v6 = a5;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    objc_msgSend_setError_(WeakRetained, v7, v6);
  }
}

void sub_2251C54D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  if (v4)
  {
    v7 = objc_msgSend_error(WeakRetained, v5, v6);
    objc_msgSend_setError_(*(a1 + 32), v8, v7);
  }

  v9 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v5, v6);
  dispatch_group_leave(v9);
}

void sub_2251C57C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251C57E4(uint64_t a1, void *a2)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_msgSend_stateTransitionGroup(WeakRetained, v5, v6);
  dispatch_group_enter(v7);

  v8 = v3;
  objc_initWeak(&location, v8);
  v24[0] = 0;
  v24[1] = 0;
  v11 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v9, v10);
  objc_msgSend_getUUIDBytes_(v11, v12, v24);

  v14 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v13, v24, 16);
  objc_msgSend_setAttestationEntropy_(v8, v15, v14);

  objc_msgSend_setReplaceLocalSerializationsBlobs_(v8, v16, &unk_28385D520);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2251C5A7C;
  v21[3] = &unk_278549018;
  objc_copyWeak(&v22, &location);
  v21[4] = WeakRetained;
  objc_msgSend_setInitialResponseReceivedCallback_(v8, v17, v21);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2251C5E3C;
  v19[3] = &unk_2785476F0;
  objc_copyWeak(&v20, &location);
  v19[4] = WeakRetained;
  objc_msgSend_setCompletionBlock_(v8, v18, v19);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void sub_2251C59C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_2251C5A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  v6 = a5;
  v7 = objc_opt_new();
  (a5)[2](v6, v7, 0);
}

void sub_2251C5A7C(uint64_t a1, void *a2, void *a3)
{
  v83 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = objc_msgSend_error(WeakRetained, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_error(WeakRetained, v11, v12);
    objc_msgSend_setError_(*(a1 + 32), v14, v13);
  }

  else
  {
    v15 = [CKDPCodeFunctionInvokeResponseAttestationResponse alloc];
    v17 = objc_msgSend_initWithData_(v15, v16, v5);
    v20 = objc_msgSend_attestations(v17, v18, v19);
    v23 = objc_msgSend_count(v20, v21, v22);

    if (!v23)
    {
      v70 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v24, *MEMORY[0x277CBC120], 9000, @"Did not receive attestation from server");
      v6[2](v6, 0, v70);

      goto LABEL_4;
    }

    v73 = WeakRetained;
    v74 = v6;
    v75 = v5;
    v25 = objc_alloc(MEMORY[0x277CBEB18]);
    v28 = objc_msgSend_attestations(v17, v26, v27);
    v31 = objc_msgSend_count(v28, v29, v30);
    v77 = objc_msgSend_initWithCapacity_(v25, v32, v31);

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v72 = v17;
    obj = objc_msgSend_attestations(v17, v33, v34);
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v78, v82, 16);
    if (v36)
    {
      v37 = v36;
      v38 = *v79;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v79 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v78 + 1) + 8 * i);
          v41 = [PCCAttestation alloc];
          v44 = objc_msgSend_pckCertificate(v40, v42, v43);
          v47 = objc_msgSend_appQuote(v40, v45, v46);
          v50 = objc_msgSend_aqeQuote(v40, v48, v49);
          v53 = objc_msgSend_routingToken(v40, v51, v52);
          v55 = objc_msgSend_initWithCertificate_applicationEnclaveQuote_quotingEnclaveQuote_routingToken_(v41, v54, v44, v47, v50, v53);

          v56 = [PCCWrappedKey alloc];
          v59 = objc_msgSend_pccKey(*(a1 + 32), v57, v58);
          v62 = objc_msgSend_permittedRemoteMeasurement(*(a1 + 32), v60, v61);
          v64 = objc_msgSend_initWithKey_permittedRemoteMeasurement_attestation_(v56, v63, v59, v62, v55);

          if (v64)
          {
            objc_msgSend_addObject_(v77, v65, v64);
          }
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v66, &v78, v82, 16);
      }

      while (v37);
    }

    WeakRetained = v73;
    if (!objc_msgSend_count(v77, v67, v68))
    {
      v71 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v69, *MEMORY[0x277CBC120], 9001, @"Could not verify attestation using the permittedRemoteMeasurement provided");
      v6 = v74;
      v74[2](v74, 0, v71);

      v5 = v75;
      goto LABEL_4;
    }

    objc_msgSend_setPccWrappedKeys_(*(a1 + 32), v69, v77);

    v6 = v74;
    v5 = v75;
  }

  v6[2](v6, MEMORY[0x277CBEBF8], 0);
LABEL_4:
}

void sub_2251C5E3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  if (v4)
  {
    v7 = objc_msgSend_error(WeakRetained, v5, v6);
    objc_msgSend_setError_(*(a1 + 32), v8, v7);
  }

  v9 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v5, v6);
  dispatch_group_leave(v9);
}

void sub_2251C6068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251C608C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2251C6180;
  v5[3] = &unk_278548AD0;
  objc_copyWeak(&v6, &location);
  objc_copyWeak(&v7, (a1 + 40));
  v5[4] = *(a1 + 32);
  objc_msgSend_setCompletionBlock_(v3, v4, v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_2251C615C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251C6180(id *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  v6 = objc_msgSend_transcodeServerPublicKey(WeakRetained, v4, v5);
  v9 = objc_msgSend_error(WeakRetained, v7, v8);

  if (v9 || !v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v24 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v27 = v24;
      v30 = objc_msgSend_error(WeakRetained, v28, v29);
      *buf = 138412290;
      v36 = v30;
      _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "Failed to fetch public key from trusted target: %@", buf, 0xCu);
    }
  }

  else
  {
    v12 = objc_msgSend_trustedTargetKey(a1[4], v10, v11);
    v15 = objc_msgSend_key(v12, v13, v14);
    v33 = 0;
    v34 = 0;
    v16 = CKEncryptWithPublicKey(v6, v15, 0, &v34, &v33);
    v17 = v34;
    v18 = v33;

    if (v16 && v17)
    {
      v20 = [CKDTrustedTargetWrappedKey alloc];
      v22 = objc_msgSend_initWithWrappedKey_publicKey_(v20, v21, v17, v6);
      objc_msgSend_setTrustedTargetWrappedKey_(a1[4], v23, v22);
    }

    else
    {
      v22 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBC120], 1000, v18, @"Failed to wrap invocation key");
      objc_msgSend_setError_(v3, v31, v22);
    }
  }

  v32 = objc_msgSend_stateTransitionGroup(v3, v25, v26);
  dispatch_group_leave(v32);
}

void sub_2251C6584(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  v9 = MEMORY[0x277CBC880];
  v10 = MEMORY[0x277CBC830];
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v39 = 138412290;
      v40 = v8;
      _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "Error fetching configuration to check if we should send record keys: %@", &v39, 0xCu);
    }

    v14 = 0;
  }

  else
  {
    v15 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v6, v7);
    isAppleInternalInstall = objc_msgSend_isAppleInternalInstall(v15, v16, v17);

    if (isAppleInternalInstall)
    {
      if (*v9 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v21 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v39) = 0;
        _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Always sending record keys for internal installs", &v39, 2u);
      }

      v14 = 1;
    }

    else
    {
      v22 = objc_msgSend_containerID(*(a1 + 32), v19, v20);
      v14 = objc_msgSend_allowCloudMediaProcessingOffloadForGM_(v5, v23, v22);
    }
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    v24 = objc_msgSend_unitTestOverrides(*(a1 + 32), v12, v13);
    v26 = objc_msgSend_objectForKeyedSubscript_(v24, v25, @"AllowSendingRecordKeysForCMP");

    if (v26)
    {
      if (*v9 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v27 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
      {
        v35 = v27;
        v38 = objc_msgSend_BOOLValue(v26, v36, v37);
        v39 = 67109120;
        LODWORD(v40) = v38;
        _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Overriding allowSendingRecordPCSKeys = %d", &v39, 8u);
      }

      v14 = objc_msgSend_BOOLValue(v26, v28, v29);
    }
  }

  if (*v9 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v30 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
  {
    v39 = 67109120;
    LODWORD(v40) = v14;
    _os_log_debug_impl(&dword_22506F000, v30, OS_LOG_TYPE_DEBUG, "Setting shouldSendRecordPCSKeys = %d", &v39, 8u);
  }

  objc_msgSend_setShouldSendRecordPCSKeys_(*(a1 + 32), v31, v14);
  v34 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v32, v33);
  dispatch_group_leave(v34);
}

void sub_2251C6D4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  dispatch_group_enter(*(a1 + 32));
  objc_initWeak(&location, *(a1 + 40));
  v8 = objc_msgSend_container(*(a1 + 40), v6, v7);
  v11 = objc_msgSend_pcsCache(v8, v9, v10);
  v14 = objc_msgSend_recordID(v5, v12, v13);
  v15 = *(a1 + 40);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2251C6EC8;
  v18[3] = &unk_278549090;
  objc_copyWeak(v22, &location);
  v16 = v5;
  v19 = v16;
  v20 = *(a1 + 48);
  v22[1] = a3;
  v21 = *(a1 + 32);
  objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v11, v17, v14, v15, 0, v18);

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

void sub_2251C6EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251C6EC8(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = objc_msgSend_pcs(v6, v8, v9);

  if (WeakRetained)
  {
    if (v5)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v11 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 32);
        v13 = v11;
        v16 = objc_msgSend_recordID(v12, v14, v15);
        v52 = 138412546;
        v53 = v16;
        v54 = 2112;
        v55 = v5;
        _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "Error fetching PCS data in secure compute operation for %@: %@", &v52, 0x16u);
        goto LABEL_25;
      }
    }

    else
    {
      if (v10)
      {
        v13 = PCSFPGetCurrentMasterKey();
        if (*MEMORY[0x277CBC810] == 1)
        {
          v20 = objc_msgSend_unitTestOverrides(WeakRetained, v18, v19);
          v22 = objc_msgSend_objectForKeyedSubscript_(v20, v21, @"SendFakeEncryptedMasterKeysInRecordTransports");
          v25 = objc_msgSend_BOOLValue(v22, v23, v24);

          if (v25)
          {
            v28 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v26, v27);
            v31 = objc_msgSend_UUIDString(v28, v29, v30);
            v33 = objc_msgSend_dataUsingEncoding_(v31, v32, 4);

            v13 = v33;
          }
        }

        v34 = *MEMORY[0x277CBC878];
        if (v13)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v34);
          }

          v35 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v43 = *(a1 + 32);
            v44 = v35;
            v47 = objc_msgSend_recordID(v43, v45, v46);
            v52 = 138412290;
            v53 = v47;
            _os_log_debug_impl(&dword_22506F000, v44, OS_LOG_TYPE_DEBUG, "Setting master key on secure compute operation for %@", &v52, 0xCu);
          }

          v16 = objc_msgSend_encryptData_(WeakRetained, v36, v13);
          objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 40), v37, v16, *(a1 + 64));
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v34);
          }

          v42 = *MEMORY[0x277CBC830];
          if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_29;
          }

          v48 = *(a1 + 32);
          v16 = v42;
          v51 = objc_msgSend_recordID(v48, v49, v50);
          v52 = 138412290;
          v53 = v51;
          _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Couldn't get master key in secure compute operation for %@", &v52, 0xCu);
        }

LABEL_25:

LABEL_29:
        goto LABEL_30;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v38 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v39 = *(a1 + 32);
        v13 = v38;
        v16 = objc_msgSend_recordID(v39, v40, v41);
        v52 = 138412290;
        v53 = v16;
        _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "No error, but also no PCS data during secure compute operation for record %@", &v52, 0xCu);
        goto LABEL_25;
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v52) = 0;
      _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "We lost ourself trying to fetch PCS to get record keys for secure compute", &v52, 2u);
    }
  }

LABEL_30:
  dispatch_group_leave(*(a1 + 48));
}

void sub_2251C7344(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pccKey(*(a1 + 32), a2, a3);
  objc_msgSend_clear(v4, v5, v6);

  objc_msgSend_setPccKey_(*(a1 + 32), v7, 0);
  v10 = objc_msgSend_replaceLocalSerializationsBlobs(*(a1 + 32), v8, v9);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2251C7408;
  v14[3] = &unk_2785490E0;
  v14[4] = *(a1 + 32);
  (v10)[2](v10, v11, v12, v13, v14);
}

void sub_2251C7408(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  objc_msgSend_setSerializedArguments_(*(a1 + 32), v5, a2);
  if (v9)
  {
    objc_msgSend_setError_(*(a1 + 32), v6, v9);
  }

  v8 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v6, v7);
  dispatch_group_leave(v8);
}

void sub_2251C7744(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 96));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_2251C778C(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_translator(v8, v9, v10);
  objc_msgSend_setTranslator_(WeakRetained, v12, v11);

  v15 = objc_msgSend_code(v6, v13, v14);
  v16 = *MEMORY[0x277CBC878];
  v17 = *MEMORY[0x277CBC880];
  if (v15 == 1)
  {
    if (v17 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v16);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Function invocation completed", buf, 2u);
    }

    objc_msgSend_setSerializedResponse_(WeakRetained, v19, v5);
  }

  else
  {
    if (v17 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v16);
    }

    v44 = v5;
    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v46 = v6;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Error %@ when invoking function", buf, 0xCu);
    }

    v43 = MEMORY[0x277CBC560];
    v21 = *MEMORY[0x277CBC120];
    v22 = sub_2253962A4(v6);
    v25 = objc_msgSend_request(WeakRetained, v23, v24);
    v26 = sub_225395734(v25, v6);
    v29 = objc_msgSend_functionName(WeakRetained, v27, v28);
    v32 = objc_msgSend_serviceName(WeakRetained, v30, v31);
    v35 = objc_msgSend_error(v6, v33, v34);
    v38 = objc_msgSend_errorDescription(v35, v36, v37);
    v40 = objc_msgSend_errorWithDomain_code_userInfo_format_(v43, v39, v21, v22, v26, @"Error %@ when invoking function %@ on service %@: %@", v6, v29, v32, v38);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v5 = v44;
    v41 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v46 = v40;
      _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "Error %@", buf, 0xCu);
    }

    objc_msgSend_setError_(WeakRetained, v42, v40);
  }
}

void sub_2251C7ABC(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v10 = @" with error ";
    v11 = &stru_28385ED00;
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v10 = &stru_28385ED00;
    }

    v16 = 138543618;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "CKCode Function invocation finished%{public}@%@", &v16, 0x16u);
  }

  v12 = objc_msgSend_error(WeakRetained, v8, v9);

  if (!v12)
  {
    objc_msgSend_setError_(WeakRetained, v13, v6);
  }

  v15 = objc_msgSend_stateTransitionGroup(WeakRetained, v13, v14);
  dispatch_group_leave(v15);
}

void sub_2251C7EB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_2251C7EF8(uint64_t a1, void *a2, void *a3)
{
  v125 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_loadWeakRetained((a1 + 40));
  v11 = objc_msgSend_translator(v8, v9, v10);
  objc_msgSend_setTranslator_(WeakRetained, v12, v11);

  hasCode = objc_msgSend_hasCode(v6, v13, v14);
  v16 = *MEMORY[0x277CBC878];
  if (hasCode)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v16);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v124 = v6;
      _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Error %@ when invoking function", buf, 0xCu);
    }

    v20 = objc_msgSend_code(v6, v18, v19);
    v21 = 1000;
    if (v20 == 2)
    {
      v21 = 6000;
    }

    if (v20 == 1)
    {
      v21 = 1013;
    }

    v117 = v21;
    v22 = objc_opt_new();
    if (objc_msgSend_hasMessage(v6, v23, v24))
    {
      v27 = objc_msgSend_message(v6, v25, v26);
      objc_msgSend_setObject_forKeyedSubscript_(v22, v28, v27, @"ServerMessage");
    }

    if (objc_msgSend_hasAuxiliaryDomain(v6, v25, v26))
    {
      v31 = objc_msgSend_auxiliaryDomain(v6, v29, v30);
      if (!objc_msgSend_length(v31, v32, v33) || !objc_msgSend_hasAuxiliaryCode(v6, v34, v35))
      {
        goto LABEL_49;
      }

      v38 = objc_msgSend_auxiliaryCode(v6, v36, v37);

      if (v38)
      {
        if (!objc_msgSend_auxiliaryUserInfosCount(v6, v29, v30))
        {
          v31 = 0;
          goto LABEL_48;
        }

        v115 = v22;
        v116 = v5;
        v41 = objc_alloc(MEMORY[0x277CBEB38]);
        v44 = objc_msgSend_auxiliaryUserInfosCount(v6, v42, v43);
        v31 = objc_msgSend_initWithCapacity_(v41, v45, v44);
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v48 = objc_msgSend_auxiliaryUserInfos(v6, v46, v47);
        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v118, v122, 16);
        if (!v50)
        {
          goto LABEL_39;
        }

        v53 = v50;
        v54 = *v119;
        while (1)
        {
          for (i = 0; i != v53; ++i)
          {
            if (*v119 != v54)
            {
              objc_enumerationMutation(v48);
            }

            v56 = *(*(&v118 + 1) + 8 * i);
            if (objc_msgSend_hasKey(v56, v51, v52))
            {
              v57 = objc_msgSend_key(v56, v51, v52);
              if (objc_msgSend_length(v57, v58, v59))
              {
                hasValue = objc_msgSend_hasValue(v56, v60, v61);

                if (!hasValue)
                {
                  continue;
                }

                v57 = objc_msgSend_value(v56, v51, v52);
                if (objc_msgSend_hasDoubleValue(v57, v63, v64))
                {
                  v67 = MEMORY[0x277CCABB0];
                  objc_msgSend_doubleValue(v57, v65, v66);
                  v70 = objc_msgSend_numberWithDouble_(v67, v68, v69);
                  goto LABEL_35;
                }

                if (objc_msgSend_hasInt64Value(v57, v65, v66))
                {
                  v75 = MEMORY[0x277CCABB0];
                  v76 = objc_msgSend_int64Value(v57, v73, v74);
                  v70 = objc_msgSend_numberWithInteger_(v75, v77, v76);
                  goto LABEL_35;
                }

                if (objc_msgSend_hasBoolValue(v57, v73, v74))
                {
                  v80 = MEMORY[0x277CCABB0];
                  v81 = objc_msgSend_BOOLValue(v57, v78, v79);
                  v70 = objc_msgSend_numberWithBool_(v80, v82, v81);
                  goto LABEL_35;
                }

                if (objc_msgSend_hasStringValue(v57, v78, v79))
                {
                  v70 = objc_msgSend_stringValue(v57, v83, v84);
                  goto LABEL_35;
                }

                if (objc_msgSend_hasBytesValue(v57, v83, v84))
                {
                  v70 = objc_msgSend_bytesValue(v57, v85, v86);
LABEL_35:
                  v87 = v70;
                  v88 = objc_msgSend_key(v56, v71, v72);
                  objc_msgSend_setObject_forKeyedSubscript_(v31, v89, v87, v88);
                }
              }

              continue;
            }
          }

          v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v51, &v118, v122, 16);
          if (!v53)
          {
LABEL_39:

            if (!objc_msgSend_count(v31, v90, v91))
            {

              v31 = 0;
            }

            v22 = v115;
            v5 = v116;
LABEL_48:
            v94 = MEMORY[0x277CCA9B8];
            v95 = objc_msgSend_auxiliaryDomain(v6, v39, v40);
            v98 = objc_msgSend_auxiliaryCode(v6, v96, v97);
            v100 = objc_msgSend_errorWithDomain_code_userInfo_(v94, v99, v95, v98, v31);

            objc_msgSend_setObject_forKeyedSubscript_(v22, v101, v100, *MEMORY[0x277CCA7E8]);
            objc_msgSend_setObject_forKeyedSubscript_(v22, v102, v100, *MEMORY[0x277CBC130]);

LABEL_49:
            break;
          }
        }
      }
    }

    if (!objc_msgSend_count(v22, v29, v30))
    {

      v22 = 0;
    }

    v105 = MEMORY[0x277CBC560];
    v106 = *MEMORY[0x277CBC120];
    v107 = objc_msgSend_functionName(WeakRetained, v103, v104);
    v110 = objc_msgSend_serviceName(WeakRetained, v108, v109);
    v112 = objc_msgSend_errorWithDomain_code_userInfo_format_(v105, v111, v106, v117, v22, @"Error when locally invoking function %@ on service %@", v107, v110);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v113 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v124 = v112;
      _os_log_debug_impl(&dword_22506F000, v113, OS_LOG_TYPE_DEBUG, "Error %@", buf, 0xCu);
    }

    objc_msgSend_setError_(WeakRetained, v114, v112);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v16);
    }

    v92 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v92, OS_LOG_TYPE_DEBUG, "Function invocation completed", buf, 2u);
    }

    objc_msgSend_setSerializedResponse_(WeakRetained, v93, v5);
  }
}

void sub_2251C8514(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_error(v3, v4, v5);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v10 = @" with error ";
    v11 = &stru_28385ED00;
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v10 = &stru_28385ED00;
    }

    v16 = 138543618;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "CKCode Local Function invocation finished%{public}@%@", &v16, 0x16u);
  }

  v12 = objc_msgSend_error(WeakRetained, v8, v9);

  if (!v12)
  {
    objc_msgSend_setError_(WeakRetained, v13, v6);
  }

  v15 = objc_msgSend_stateTransitionGroup(WeakRetained, v13, v14);
  dispatch_group_leave(v15);
}

void sub_2251C87AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251C87D0(id *a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v6)
  {
    objc_msgSend_setError_(a1[4], v7, v6);
  }

  else if (objc_msgSend_count(v5, v7, v8))
  {
    v31 = v5;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v5;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v34, v38, 16);
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          v17 = [CKDPRecord alloc];
          v19 = objc_msgSend_initWithData_(v17, v18, v16);
          v22 = objc_msgSend_translator(WeakRetained, v20, v21);
          v33 = 0;
          v24 = objc_msgSend_recordFromPRecord_error_(v22, v23, v19, &v33);
          v25 = v33;

          if (!v24)
          {
            if (!v25)
            {
              v25 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v26, *MEMORY[0x277CBC120], 1017, @"Invalid pRecord: %@", v19);
            }

            objc_msgSend_setError_(a1[4], v26, v25);

            goto LABEL_16;
          }

          objc_msgSend_addObject_(a1[5], v26, v24);
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v34, v38, 16);
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v5 = v31;
  }

  objc_msgSend_setResponseRecords_(a1[4], v10, a1[5]);
  v30 = objc_msgSend_stateTransitionGroup(a1[4], v28, v29);
  dispatch_group_leave(v30);
}

void sub_2251C8B1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_responseRecords(*(a1 + 32), v4, v5);
  objc_msgSend_setFullRecordsToFetch_(v3, v7, v6);

  objc_msgSend_setUseRecordCache_(v3, v8, 0);
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2251C8DC0;
  v20[3] = &unk_278547768;
  objc_copyWeak(&v22, &location);
  v21 = *(a1 + 40);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v9, v20);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2251C8F08;
  v18[3] = &unk_278547718;
  objc_copyWeak(&v19, &location);
  objc_msgSend_setRecordFetchProgressBlock_(v3, v10, v18);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2251C8FA4;
  v16[3] = &unk_278547AC8;
  objc_copyWeak(&v17, &location);
  objc_msgSend_setRecordFetchCommandBlock_(v3, v11, v16);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2251C904C;
  v13[3] = &unk_278548748;
  objc_copyWeak(&v14, &location);
  objc_copyWeak(&v15, &from);
  objc_msgSend_setCompletionBlock_(v3, v12, v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251C8D64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v5 - 80));
  objc_destroyWeak((v5 - 72));
  _Unwind_Resume(a1);
}

void sub_2251C8DC0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = objc_msgSend_container(WeakRetained, v10, v11);
  v15 = objc_msgSend_options(v12, v13, v14);
  if (objc_msgSend_returnPCSMetadata(v15, v16, v17))
  {
    v18 = CKIsPCSError();

    if ((v18 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v25, v19, v20);
    }
  }

  else
  {
  }

  if (v25 && v7)
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v19, v25, v7);
  }

  if (v8)
  {
    objc_msgSend_setError_(WeakRetained, v19, v8);
  }

  v21 = objc_msgSend_recordFetchCompletionBlock(WeakRetained, v19, v20);

  if (v21)
  {
    v24 = objc_msgSend_recordFetchCompletionBlock(WeakRetained, v22, v23);
    (v24)[2](v24, v25, v7, v8);
  }
}

void sub_2251C8F08(uint64_t a1, void *a2, double a3)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_msgSend_recordFetchProgressBlock(WeakRetained, v6, v7);

  if (v8)
  {
    v11 = objc_msgSend_recordFetchProgressBlock(WeakRetained, v9, v10);
    (v11)[2](v11, v12, a3);
  }
}

void sub_2251C8FA4(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_msgSend_recordFetchCommandBlock(WeakRetained, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_recordFetchCommandBlock(WeakRetained, v10, v11);
    (v12)[2](v12, v13, v5);
  }
}

void sub_2251C904C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(v2, v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_error(v2, v6, v7);
    objc_msgSend_setError_(WeakRetained, v9, v8);
  }

  else
  {
    v8 = objc_msgSend_replaceWireSerializations(WeakRetained, v6, v7);
    v12 = objc_msgSend_responseRecords(WeakRetained, v10, v11);
    (v8)[2](v8, v12);
  }

  objc_msgSend_setResponseRecords_(WeakRetained, v13, 0);
  v16 = objc_msgSend_stateTransitionGroup(WeakRetained, v14, v15);
  dispatch_group_leave(v16);
}

void sub_2251CA18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_2251CA1D4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_needsEncryption(v3, v4, v5))
  {
    v10 = objc_msgSend_valueID(v3, v6, v7);
    if (!v10 && !*(*(*(a1 + 32) + 8) + 40))
    {
      v11 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 1017, 0, @"Unable to upload mergeable delta without a value ID");
      v12 = *(*(a1 + 32) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    v15 = objc_msgSend_recordID(v10, v8, v9);
    if (!v15 && !*(*(*(a1 + 32) + 8) + 40))
    {
      v16 = objc_msgSend_errorWithDomain_code_userInfo_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBC120], 1017, 0, @"Unable to upload mergeable delta without a record ID");
      v17 = *(*(a1 + 32) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_2251CA2F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_group_enter(*(a1 + 32));
  v9 = objc_msgSend_container(*(a1 + 40), v7, v8);
  v12 = objc_msgSend_pcsCache(v9, v10, v11);
  v13 = *(a1 + 40);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2251CA438;
  v16[3] = &unk_2785491D8;
  objc_copyWeak(&v20, (a1 + 56));
  v19 = *(a1 + 48);
  v14 = v6;
  v17 = v14;
  v18 = *(a1 + 32);
  objc_msgSend_fetchPCSForRecordWithID_forOperation_options_withCompletionHandler_(v12, v15, v5, v13, 0, v16);

  objc_destroyWeak(&v20);
}

void sub_2251CA438(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v5)
    {
      v53 = v6;
      v8 = objc_alloc_init(CKDKeyEnvelopeContext);
      v54 = v5;
      v11 = objc_msgSend_pcs(v5, v9, v10);
      objc_msgSend_setShareProtection_(v8, v12, v11);
      v52 = WeakRetained;
      v15 = objc_msgSend_container(WeakRetained, v13, v14);
      v18 = objc_msgSend_options(v15, v16, v17);
      objc_msgSend_encryptMergeableValueMetadata(v18, v19, v20);

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v21 = *(a1 + 32);
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v56, v64, 16);
      if (v23)
      {
        v26 = v23;
        v27 = *v57;
        while (2)
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v57 != v27)
            {
              objc_enumerationMutation(v21);
            }

            v29 = *(*(&v56 + 1) + 8 * i);
            objc_msgSend_encryptMetadataTernary(v29, v24, v25);
            v30 = CKBoolFromCKTernaryWithDefault();
            objc_msgSend_setEncryptMergeableValueMetadata_(v8, v31, v30);
            v55 = 0;
            v33 = objc_msgSend_encryptWithContext_error_(v29, v32, v8, &v55);
            v34 = v55;
            v35 = v34;
            if ((v33 & 1) == 0)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v36 = *MEMORY[0x277CBC840];
              if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
              {
                v45 = v36;
                v48 = objc_msgSend_metadata(v29, v46, v47);
                v51 = objc_msgSend_identifier(v48, v49, v50);
                *buf = 138412546;
                v61 = v51;
                v62 = 2112;
                v63 = v35;
                _os_log_error_impl(&dword_22506F000, v45, OS_LOG_TYPE_ERROR, "Failed to encrypt delta, %@, with error: %@", buf, 0x16u);
              }

              if (!*(*(*(a1 + 48) + 8) + 40))
              {
                v38 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v37, *MEMORY[0x277CBC120], 5004, v35, @"Failed to encrypt mergeable delta");
                v39 = *(*(a1 + 48) + 8);
                v40 = *(v39 + 40);
                *(v39 + 40) = v38;
              }

              goto LABEL_19;
            }
          }

          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v56, v64, 16);
          if (v26)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:

      v6 = v53;
      v5 = v54;
      WeakRetained = v52;
      goto LABEL_20;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v41 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v61 = v6;
      _os_log_error_impl(&dword_22506F000, v41, OS_LOG_TYPE_ERROR, "Error fetching PCS to encrypt deltas: %@", buf, 0xCu);
    }

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v43 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v42, *MEMORY[0x277CBC120], 5001, v6, @"Failed to fetch PCS to encrypt mergeable delta");
      v44 = *(*(a1 + 48) + 8);
      v8 = *(v44 + 40);
      *(v44 + 40) = v43;
LABEL_20:
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_2251CA810(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC840];
  if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
  {
    v4 = a1[4];
    v5 = v2;
    v8 = objc_msgSend_operationID(v4, v6, v7);
    v9 = 138543362;
    v10 = v8;
    _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Did encrypt mergeable deltas for operation %{public}@", &v9, 0xCu);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[6] + 8) + 40));
  }

  return result;
}

void sub_2251CAC30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2251CAC54(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *MEMORY[0x277CBC878];
    if (v3)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v5);
      }

      v6 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
      {
        v13 = v6;
        v16 = objc_msgSend_operationID(WeakRetained, v14, v15);
        v21 = 138412546;
        v22 = v16;
        v23 = 2112;
        v24 = v3;
        _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "Error fetching delta metadata in operation %@: %@", &v21, 0x16u);
      }

      objc_msgSend_setError_(WeakRetained, v7, v3);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v5);
      }

      v11 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
      {
        v17 = v11;
        v20 = objc_msgSend_operationID(WeakRetained, v18, v19);
        v21 = 138412290;
        v22 = v20;
        _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Fetched delta metadata for operation %@", &v21, 0xCu);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Deallocated while fetching delta metadata", &v21, 2u);
    }
  }

  v12 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v8, v9);
  dispatch_group_leave(v12);
}

void sub_2251CB188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, id a25)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

void sub_2251CB1D0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v11)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v15 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
      {
        v18 = 138412290;
        v19 = v9;
        _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Got a continuation token for value %@", &v18, 0xCu);
      }

      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v16, v11, v9);
    }

    objc_msgSend_handleFetchedMetadatasForMergeableValueID_metadatas_result_(WeakRetained, v13, v9, v10, v12);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "Fetch metadata operation deallocated before request per value ID block", &v18, 2u);
    }
  }
}

void sub_2251CB3B0(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = objc_msgSend_count(*(a1 + 32), v2, v3);
    v6 = *MEMORY[0x277CBC878];
    if (v5)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v6);
      }

      v7 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a1 + 32);
        v26 = 138412290;
        v27 = v19;
        _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Continuing fetch delta metadata with new continuation tokens: %@", &v26, 0xCu);
      }

      v10 = objc_msgSend_allKeys(*(a1 + 32), v8, v9);
      objc_msgSend_fetchMetadataRecursivelyForMergeableValueIDs_continuationTokens_completionHandler_(WeakRetained, v11, v10, *(a1 + 32), *(a1 + 40));
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v6);
      }

      v13 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
      {
        v20 = v13;
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v25 = objc_msgSend_ckShortDescription(WeakRetained, v23, v24);
        v26 = 138543874;
        v27 = v22;
        v28 = 2048;
        v29 = WeakRetained;
        v30 = 2114;
        v31 = v25;
        _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Fetch delta metadatas URL request completed for operation <%{public}@: %p; %{public}@>", &v26, 0x20u);
      }

      v14 = *(a1 + 40);
      v15 = objc_loadWeakRetained((a1 + 56));
      v18 = objc_msgSend_error(v15, v16, v17);
      (*(v14 + 16))(v14, v18);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Fetch metadata operation deallocated before request completion block", &v26, 2u);
    }
  }
}

void sub_2251CBE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id location)
{
  objc_destroyWeak(&location);
  _Block_object_dispose((v46 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_2251CBE7C(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v25 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v44 = v6;
        _os_log_error_impl(&dword_22506F000, v25, OS_LOG_TYPE_ERROR, "Error fetching PCS to decrypt fetched delta metadata: %@", buf, 0xCu);
      }

      v27 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v26, *MEMORY[0x277CBC120], 5001, v6, @"Failed to fetch PCS to decrypt mergeable delta timestamps");
      v28 = *(*(a1 + 56) + 8);
      v17 = *(v28 + 40);
      *(v28 + 40) = v27;
    }

    else
    {
      v8 = objc_alloc_init(CKDKeyEnvelopeContext);
      v11 = objc_msgSend_pcs(v5, v9, v10);
      objc_msgSend_setShareProtection_(v8, v12, v11);
      objc_msgSend_setMergeableValueID_(v8, v13, *(a1 + 32));
      v14 = *(a1 + 40);
      v42 = 0;
      v16 = objc_msgSend_decryptWithContext_error_(v14, v15, v8, &v42);
      v17 = v42;
      v18 = *MEMORY[0x277CBC878];
      if (v16)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v18);
        }

        v19 = *MEMORY[0x277CBC840];
        if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
        {
          v20 = *(a1 + 40);
          v21 = v19;
          v24 = objc_msgSend_identifier(v20, v22, v23);
          *buf = 138412290;
          v44 = v24;
          _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Successfully decrypted delta metadata %@", buf, 0xCu);
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v18);
        }

        v29 = *MEMORY[0x277CBC840];
        if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
        {
          v37 = *(a1 + 40);
          v38 = v29;
          v41 = objc_msgSend_identifier(v37, v39, v40);
          *buf = 138412546;
          v44 = v41;
          v45 = 2112;
          v46 = v17;
          _os_log_error_impl(&dword_22506F000, v38, OS_LOG_TYPE_ERROR, "Failed to decrypt delta metadata %@: %@", buf, 0x16u);
        }

        v31 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v30, *MEMORY[0x277CBC120], 5004, v17, @"Failed to decrypt mergeable delta timestamps");
        v32 = *(*(a1 + 56) + 8);
        v33 = *(v32 + 40);
        *(v32 + 40) = v31;
      }
    }

    v36 = objc_msgSend_stateTransitionGroup(WeakRetained, v34, v35);
    dispatch_group_leave(v36);

    dispatch_group_leave(*(a1 + 48));
  }
}

void sub_2251CC1E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_metadataFetchedBlock(*(a1 + 32), a2, a3);
  (*(v4 + 2))(v4, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 56) + 8) + 40));
}

void sub_2251CC5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251CC604(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = *MEMORY[0x277CBC878];
    if (v3)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v5);
      }

      v6 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
      {
        v13 = v6;
        v16 = objc_msgSend_operationID(WeakRetained, v14, v15);
        v21 = 138412546;
        v22 = v16;
        v23 = 2112;
        v24 = v3;
        _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "Error fetching mergeable deltas in operation %@: %@", &v21, 0x16u);
      }

      objc_msgSend_setError_(WeakRetained, v7, v3);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v5);
      }

      v11 = *MEMORY[0x277CBC840];
      if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
      {
        v17 = v11;
        v20 = objc_msgSend_operationID(WeakRetained, v18, v19);
        v21 = 138412290;
        v22 = v20;
        _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Finished fetching mergeable deltas for operation %@", &v21, 0xCu);
      }
    }

    v12 = objc_msgSend_stateTransitionGroup(WeakRetained, v8, v9);
    dispatch_group_leave(v12);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Fetch mergeable deltas operation deallocated while fetching mergeable deltas from the server", &v21, 2u);
    }
  }
}

void sub_2251CCB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

void sub_2251CCB78(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v11)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412290;
      v18 = v9;
      _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Got a continuation token fetching deltas for value %@", &v17, 0xCu);
    }

    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v16, v11, v9);
  }

  objc_msgSend_handleMergeableDeltasFetchedForValueID_fetchedDeltas_result_(WeakRetained, v13, v9, v10, v12);
}

void sub_2251CCCDC(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  v6 = v3;
  if (WeakRetained && v3)
  {
    v7 = objc_msgSend_error(v3, v4, v5);

    if (v7)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v10 = *MEMORY[0x277CBC840];
      if (!os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v22 = v10;
      v24 = objc_msgSend_operationID(WeakRetained, v28, v29);
      v27 = objc_msgSend_error(v6, v30, v31);
      v36 = 138543618;
      v37 = v24;
      v38 = 2112;
      v39 = v27;
      _os_log_error_impl(&dword_22506F000, v22, OS_LOG_TYPE_ERROR, "Stopping after error fetching deltas for operation %{public}@: %@", &v36, 0x16u);
    }

    else
    {
      v15 = objc_msgSend_count(*(a1 + 32), v8, v9);
      v16 = *MEMORY[0x277CBC878];
      if (v15)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v16);
        }

        v17 = *MEMORY[0x277CBC840];
        if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
        {
          v32 = v17;
          v35 = objc_msgSend_operationID(WeakRetained, v33, v34);
          v36 = 138543362;
          v37 = v35;
          _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Need to continue fetching deltas for operation %{public}@", &v36, 0xCu);
        }

        v14 = objc_msgSend_allKeys(*(a1 + 32), v18, v19);
        objc_msgSend_fetchMergeableDeltasRecursivelyForValueIDs_continuationTokens_completionHandler_(WeakRetained, v20, v14, *(a1 + 32), *(a1 + 40));
        goto LABEL_14;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v16);
      }

      v21 = *MEMORY[0x277CBC840];
      if (!os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
      {
LABEL_7:
        v13 = *(a1 + 40);
        v14 = objc_msgSend_error(v6, v11, v12);
        (*(v13 + 16))(v13, v14);
LABEL_14:

        goto LABEL_15;
      }

      v22 = v21;
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v27 = objc_msgSend_ckShortDescription(WeakRetained, v25, v26);
      v36 = 138543874;
      v37 = v24;
      v38 = 2048;
      v39 = WeakRetained;
      v40 = 2114;
      v41 = v27;
      _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "Fetch deltas URL request completed for operation <%{public}@: %p; %{public}@>", &v36, 0x20u);
    }

    goto LABEL_7;
  }

LABEL_15:
}

void sub_2251CD564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  objc_destroyWeak((v28 + 64));
  objc_destroyWeak((v29 - 128));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2251CD5C0(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v5)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v8 = *(a1 + 40);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v45, v49, 16);
      if (v10)
      {
        v11 = v10;
        v41 = v6;
        v43 = a1;
        v12 = *v46;
        v42 = *MEMORY[0x277CBC120];
        do
        {
          v13 = v8;
          v14 = 0;
          do
          {
            if (*v46 != v12)
            {
              objc_enumerationMutation(v13);
            }

            v15 = *(*(&v45 + 1) + 8 * v14);
            v16 = objc_alloc_init(CKDKeyEnvelopeContext);
            v19 = objc_msgSend_pcs(v5, v17, v18);
            objc_msgSend_setShareProtection_(v16, v20, v19);
            v23 = objc_msgSend_container(WeakRetained, v21, v22);
            v26 = objc_msgSend_pcsManager(v23, v24, v25);
            objc_msgSend_setPcsManager_(v16, v27, v26);

            v44 = 0;
            LOBYTE(v26) = objc_msgSend_decryptWithContext_error_(v15, v28, v16, &v44);
            v29 = v44;
            if ((v26 & 1) == 0)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
              }

              v30 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v51 = v29;
                _os_log_error_impl(&dword_22506F000, v30, OS_LOG_TYPE_ERROR, "Failed to decrypt mergeable delta with error: %@", buf, 0xCu);
              }

              v32 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v31, v42, 5004, v29, @"Failed to decrypt mergeable delta");
              v33 = *(*(v43 + 56) + 8);
              v34 = *(v33 + 40);
              *(v33 + 40) = v32;
            }

            ++v14;
          }

          while (v11 != v14);
          v8 = v13;
          v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v35, &v45, v49, 16);
        }

        while (v11);
        a1 = v43;
        v6 = v41;
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v36 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v40 = *(a1 + 32);
        *buf = 138412290;
        v51 = v40;
        _os_log_error_impl(&dword_22506F000, v36, OS_LOG_TYPE_ERROR, "Failed to fetch PCS for value: %@", buf, 0xCu);
      }

      v38 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v37, *MEMORY[0x277CBC120], 5001, v6, @"Failed to fetch PCS to decrypt mergeable delta");
      v39 = *(*(a1 + 56) + 8);
      v8 = *(v39 + 40);
      *(v39 + 40) = v38;
    }

    dispatch_group_leave(*(a1 + 48));
  }
}

void sub_2251CD940(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_stateTransitionGroup(*(a1 + 32), a2, a3);
  dispatch_group_leave(v4);

  v7 = objc_msgSend_deltasFetchedBlock(*(a1 + 32), v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_deltasFetchedBlock(*(a1 + 32), v8, v9);
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v11 = 0;
    }

    else
    {
      v11 = *(a1 + 48);
    }

    v12 = v10;
    (*(v10 + 16))(v10, *(a1 + 40), v11);
  }
}

void sub_2251CDDE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251CDE0C(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v7)
    {
      objc_msgSend_setError_(WeakRetained, v3, v7);
    }

    v6 = objc_msgSend_stateTransitionGroup(WeakRetained, v3, v4);
    dispatch_group_leave(v6);
  }
}

void sub_2251CE110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v22 - 80));
  _Unwind_Resume(a1);
}

void sub_2251CE158(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_handleReplaceDeltasRequest_result_(WeakRetained, v8, v5, v6);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Replace deltas operation deallocated before per request block", v11, 2u);
    }
  }
}

void sub_2251CE240(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *MEMORY[0x277CBC878];
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v3);
    }

    v4 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
    {
      v17 = v4;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v22 = objc_msgSend_ckShortDescription(WeakRetained, v20, v21);
      v23 = 138543874;
      v24 = v19;
      v25 = 2048;
      v26 = WeakRetained;
      v27 = 2114;
      v28 = v22;
      _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Replace deltas URL request completed for operation <%{public}@: %p; %{public}@>", &v23, 0x20u);
    }

    v7 = objc_msgSend_error(WeakRetained, v5, v6);

    if (!v7)
    {
      v10 = objc_loadWeakRetained((a1 + 40));
      v13 = objc_msgSend_error(v10, v11, v12);
      objc_msgSend_setError_(WeakRetained, v14, v13);
    }

    v15 = objc_msgSend_stateTransitionGroup(WeakRetained, v8, v9);
    dispatch_group_leave(v15);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v3);
    }

    v16 = *MEMORY[0x277CBC840];
    if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "Replace deltas operation deallocated before request completion block", &v23, 2u);
    }
  }
}

void sub_2251CED1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251CED48(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v7)
    {
      objc_msgSend_setError_(WeakRetained, v3, v7);
    }

    v6 = objc_msgSend_stateTransitionGroup(WeakRetained, v3, v4);
    dispatch_group_leave(v6);
  }
}

void sub_2251CEE80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2251CEE9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v15 = WeakRetained;
    v4 = objc_msgSend_pendingDeltaUploads(WeakRetained, v2, v3);
    objc_msgSend_removeAllObjects(v4, v5, v6);

    v9 = objc_msgSend_pendingReplacementRequests(v15, v7, v8);
    objc_msgSend_removeAllObjects(v9, v10, v11);

    v14 = objc_msgSend_stateTransitionGroup(v15, v12, v13);
    dispatch_group_leave(v14);

    WeakRetained = v15;
  }
}

void sub_2251CF7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id location, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v65 + 48));
  objc_destroyWeak((v65 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v66 + 32));
  objc_destroyWeak((v67 + 32));
  objc_destroyWeak(&a65);
  _Unwind_Resume(a1);
}

void sub_2251CF808(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_handleDeltaUploaded_result_(WeakRetained, v7, v6, v5);
}

void sub_2251CF880(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_handleReplaceDeltasRequest_result_(WeakRetained, v7, v6, v5);
}

void sub_2251CF8F8(id *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC840];
  if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_INFO))
  {
    v7 = v4;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v12 = objc_msgSend_ckShortDescription(WeakRetained, v10, v11);
    *buf = 138544130;
    v19 = v9;
    v20 = 2048;
    v21 = WeakRetained;
    v22 = 2114;
    v23 = v12;
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "Delta upload request completed for operation <%{public}@: %p; %{public}@> request: %@", buf, 0x2Au);
  }

  if (WeakRetained)
  {
    v13 = objc_msgSend_callbackQueue(WeakRetained, v5, v6);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2251CFAE4;
    block[3] = &unk_278546C30;
    v15 = v3;
    v16 = WeakRetained;
    v17 = a1[4];
    dispatch_async(v13, block);
  }
}

uint64_t sub_2251CFAE4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_error(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_error(*(a1 + 32), v5, v6);
    objc_msgSend_setError_(*(a1 + 40), v8, v7);

    v9 = *(*(a1 + 48) + 16);

    return v9();
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);

    return objc_msgSend__uploadAndReplaceDeltas_(v11, v5, v12);
  }
}

void sub_2251D0614(uint64_t a1, const char *a2, uint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_error(*(a1 + 32), a2, a3);

  if (!v4)
  {
    objc_msgSend_setResultsCursor_(*(a1 + 32), v5, *(a1 + 40));
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a1 + 32);
    v26 = v6;
    if (objc_msgSend_fetchAllResults(v25, v27, v28))
    {
      v31 = @"true";
    }

    else
    {
      v31 = @"false";
    }

    v32 = objc_msgSend_error(*(a1 + 32), v29, v30);
    v35 = objc_msgSend_resultsCursor(*(a1 + 32), v33, v34);
    *buf = 138543874;
    v43 = v31;
    v44 = 2112;
    v45 = v32;
    v46 = 2112;
    v47 = v35;
    _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "fetchAllResults:%{public}@ error:%@ resultsCursor:%@", buf, 0x20u);
  }

  if (objc_msgSend_fetchAllResults(*(a1 + 32), v7, v8))
  {
    v11 = objc_msgSend_error(*(a1 + 32), v9, v10);
    if (v11)
    {
    }

    else
    {
      v18 = objc_msgSend_resultsCursor(*(a1 + 32), v12, v13);
      if (v18)
      {
        v19 = v18;
        v20 = objc_msgSend_queryCursorUpdatedBlock(*(a1 + 32), v9, v10);

        if (v20)
        {
          v21 = objc_msgSend_queryCursorUpdatedBlock(*(a1 + 32), v9, v10);
          v24 = objc_msgSend_resultsCursor(*(a1 + 32), v22, v23);
          v36 = MEMORY[0x277D85DD0];
          v37 = 3221225472;
          v38 = sub_2251D08AC;
          v39 = &unk_278548128;
          v40 = *(a1 + 32);
          v41 = *(a1 + 48);
          (v21)[2](v21, v24, &v36);

          goto LABEL_10;
        }
      }
    }
  }

  v14 = objc_msgSend_perRequestGroup(*(a1 + 48), v9, v10);
  dispatch_group_leave(v14);

LABEL_10:
  v17 = objc_msgSend_fetchRecordsGroup(*(a1 + 32), v15, v16, v36, v37, v38, v39, v40);
  dispatch_group_leave(v17);
}

void sub_2251D08AC(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v5 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = v5;
      v11 = objc_msgSend_operationID(v7, v9, v10);
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "Finishing daemon operation %{public}@ due to client-returned error %@", &v15, 0x16u);
    }

    objc_msgSend_finishWithError_(*(a1 + 32), v6, v4);
  }

  objc_msgSend_setHasCalledQueryCursorUpdatedBlock_(*(a1 + 32), v3, 1);
  v14 = objc_msgSend_perRequestGroup(*(a1 + 40), v12, v13);
  dispatch_group_leave(v14);
}

void sub_2251D0DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251D0DF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_initWeak(&location, *(a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251D100C;
  block[3] = &unk_278549470;
  objc_copyWeak(&v35, &location);
  v11 = v9;
  v30 = v11;
  v31 = WeakRetained;
  v12 = v7;
  v13 = *(a1 + 40);
  v32 = v12;
  v33 = v13;
  v14 = v8;
  v34 = v14;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  objc_msgSend_addPerRequestCallbackBlock_(*(a1 + 32), v16, v15);
  v19 = objc_msgSend_perRequestCallbackGroup(*(a1 + 32), v17, v18);
  v22 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v20, v21);
  dispatch_group_async(v19, v22, v15);

  v25 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v23, v24);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2251D14B4;
  v26[3] = &unk_278545898;
  v27 = *(a1 + 32);
  v28 = WeakRetained;
  dispatch_async(v25, v26);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

void sub_2251D0FF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_2251D100C(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if (isCancelled)
  {
    return;
  }

  v8 = *(a1 + 32);
  v9 = MEMORY[0x277CBC810];
  if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_hasCalledQueryCursorUpdatedBlock(*(a1 + 40), v6, v7) && objc_msgSend_checkAndClearUnitTestOverrides_(*(a1 + 40), v6, @"FakePCSDecryptionFailure"))
  {
    v10 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v6, *MEMORY[0x277CBC120], 5004, 0, @"TEST PCS decrypt failure");

    v8 = v10;
  }

  if (objc_msgSend_CKIsNotFoundError(v8, v6, v7))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v16 = v13;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = *(a1 + 40);
    v22 = objc_msgSend_ckShortDescription(v19, v20, v21);
    v23 = *(a1 + 48);
    *buf = 138544386;
    v51 = v18;
    v52 = 2048;
    v53 = v19;
    v54 = 2114;
    v55 = v22;
    v56 = 2112;
    v57 = v23;
    v58 = 2112;
    v59 = v8;
    _os_log_impl(&dword_22506F000, v16, OS_LOG_TYPE_INFO, "Warn: Query <%{public}@: %p; %{public}@> could not find record %@: %@", buf, 0x34u);

    goto LABEL_27;
  }

  if (v8)
  {
    v24 = objc_msgSend_container(*(a1 + 56), v11, v12);
    objc_msgSend_clientSDKVersion(v24, v25, v26);
    v27 = CKLinkCheck32f5805a68adfc1b65f94a0de69aa32177c7cd24();

    if (*v9)
    {
      v30 = objc_msgSend_unitTestOverrides(*(a1 + 56), v28, v29);
      v32 = objc_msgSend_objectForKeyedSubscript_(v30, v31, @"LegacyErrorHandling");
      v35 = objc_msgSend_BOOLValue(v32, v33, v34);

      if ((v35 & 1) == 0 && v27 == 1)
      {
        goto LABEL_23;
      }
    }

    else if (v27)
    {
      goto LABEL_23;
    }

    v38 = objc_msgSend_error(*(a1 + 40), v28, v29);

    if (!v38)
    {
      v39 = objc_msgSend__wrapError_format_(*(a1 + 40), v28, v8, @"Encountered an error fetching records");
      objc_msgSend_setError_(*(a1 + 40), v40, v39);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v36 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v37 = *(a1 + 48);
      *buf = 138412290;
      v51 = v37;
      _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "The full record for %@ was fetched", buf, 0xCu);
    }
  }

LABEL_23:
  v41 = objc_msgSend_recordFetchCompletionBlock(*(a1 + 40), v28, v29);

  if (v41)
  {
    v42 = *(a1 + 64);
    v16 = v42;
    if (v8)
    {

      v16 = 0;
    }

    v18 = objc_msgSend_recordFetchCompletionBlock(*(a1 + 40), v43, v44);
    (v18)[2](v18, *(a1 + 48), v16, v8);
LABEL_27:
  }

LABEL_28:
  if (!v8)
  {
    v45 = objc_msgSend_error(*(a1 + 40), v14, v15);

    if (!v45)
    {
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = sub_2251D1420;
      v48[3] = &unk_2785487F8;
      v46 = *(a1 + 56);
      v49 = *(a1 + 64);
      objc_msgSend_updateCloudKitMetrics_(v46, v47, v48);
    }
  }
}

void sub_2251D1420(uint64_t a1, void *a2)
{
  v21 = a2;
  v5 = objc_msgSend_recordsDownloaded(v21, v3, v4);
  objc_msgSend_setRecordsDownloaded_(v21, v6, v5 + 1);
  v9 = objc_msgSend_assetCount(*(a1 + 32), v7, v8);
  v12 = objc_msgSend_assetsDownloaded(v21, v10, v11);
  objc_msgSend_setAssetsDownloaded_(v21, v13, v12 + v9);
  v16 = objc_msgSend_assetDiskSize(*(a1 + 32), v14, v15);
  v19 = objc_msgSend_assetsDownloadedFileSize(v21, v17, v18);
  objc_msgSend_setAssetsDownloadedFileSize_(v21, v20, v19 + v16);
}

void sub_2251D14B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_perRequestCallbackGroup(*(a1 + 32), a2, a3);
  dispatch_group_leave(v4);

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = objc_msgSend_fetchRecordsGroup(v7, v5, v6);
    dispatch_group_leave(v8);
  }
}

void sub_2251D1A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, id a27)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a27);
  objc_destroyWeak((v27 - 128));
  _Unwind_Resume(a1);
}

void sub_2251D1AC0(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v8 = objc_msgSend_shouldFetchAssetContent(v5, v6, v7);
  if (v8)
  {
    v11 = v8;
    v12 = objc_msgSend_shouldFetchAssetContent(v5, v9, v10);
    v15 = objc_msgSend_BOOLValue(v12, v13, v14);

    if (v15)
    {
      objc_msgSend_addObject_(*(a1 + 32), v16, v17);
    }
  }
}

void sub_2251D1B64(uint64_t a1)
{
  v81 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = MEMORY[0x277CBC878];
  v6 = *MEMORY[0x277CBC878];
  v7 = MEMORY[0x277CBC880];
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }

    v8 = MEMORY[0x277CBC830];
    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      log = v9;
      v43 = objc_opt_class();
      v61 = NSStringFromClass(v43);
      v60 = objc_msgSend_ckShortDescription(v3, v44, v45);
      v48 = objc_msgSend_operationID(WeakRetained, v46, v47);
      objc_msgSend_error(v3, v49, v50);
      *buf = 138544386;
      v72 = v61;
      v73 = 2048;
      v74 = v3;
      v75 = 2114;
      v76 = v60;
      v77 = 2114;
      v78 = v48;
      v80 = v79 = 2112;
      v51 = v80;
      _os_log_debug_impl(&dword_22506F000, log, OS_LOG_TYPE_DEBUG, "Query request <%{public}@: %p; %{public}@> for operation %{public}@ finished with error %@", buf, 0x34u);
    }

    v12 = objc_msgSend_numRequestsSent(WeakRetained, v10, v11);
    objc_msgSend_setNumRequestsSent_(WeakRetained, v13, v12 + 1);
    v18 = objc_msgSend_error(v3, v14, v15);
    if (v18 || !objc_msgSend_isExecuting(WeakRetained, v16, v17) || (objc_msgSend_isCancelled(WeakRetained, v19, v20) & 1) != 0 || !objc_msgSend_fetchAllResults(WeakRetained, v21, v22))
    {
    }

    else
    {
      v25 = objc_msgSend_resultsCursor(v3, v23, v24);
      if (v25)
      {
        v28 = v25;
        v29 = objc_msgSend_numRequestsSent(WeakRetained, v26, v27);

        if (v29)
        {
          if (*v7 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *v5);
          }

          v30 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
          {
            v56 = v30;
            v59 = objc_msgSend_resultsCursor(v3, v57, v58);
            *buf = 138412290;
            v72 = v59;
            _os_log_debug_impl(&dword_22506F000, v56, OS_LOG_TYPE_DEBUG, "We're not done here. Sending another query with cursor %@", buf, 0xCu);
          }

          v33 = objc_msgSend_resultsCursor(v3, v31, v32);
          objc_msgSend__sendQueryRequestWithCursor_previousRequestSchedulerInfo_(WeakRetained, v34, v33, v4);

          v35 = *(a1 + 32);
          v38 = objc_msgSend_callbackQueue(WeakRetained, v36, v37);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_2251D2008;
          block[3] = &unk_278545AB0;
          block[4] = WeakRetained;
          v69 = v4;
          v70 = *(a1 + 64);
          dispatch_group_notify(v35, v38, block);

          v39 = v69;
          goto LABEL_19;
        }
      }
    }

    v40 = *(a1 + 32);
    v41 = objc_msgSend_callbackQueue(WeakRetained, v26, v27);
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = sub_2251D20B4;
    v63[3] = &unk_2785494E8;
    v64 = v4;
    v65 = v3;
    v66 = WeakRetained;
    v67 = *(a1 + 64);
    dispatch_group_notify(v40, v41, v63);

    v39 = v64;
LABEL_19:

    goto LABEL_24;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v6);
  }

  v42 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v52 = v42;
    v55 = objc_msgSend_requestUUID(v3, v53, v54);
    *buf = 138543362;
    v72 = v55;
    _os_log_debug_impl(&dword_22506F000, v52, OS_LOG_TYPE_DEBUG, "Owning operation for request %{public}@ no longer around. Bailing.", buf, 0xCu);
  }

LABEL_24:
}

void sub_2251D2008(uint64_t a1, const char *a2)
{
  objc_msgSend__handleQueryRequestFinishedWithSchedulerInfo_(*(a1 + 32), a2, *(a1 + 40));
  if (*(a1 + 48) == 1)
  {
    v5 = objc_msgSend_error(*(a1 + 32), v3, v4);

    if (v5)
    {
      objc_msgSend_cancelAndDisablePerRequestCallbackBlocks(*(a1 + 40), v6, v7);
    }

    objc_msgSend_resumeCallbackQueue(*(a1 + 40), v6, v7);
  }

  objc_msgSend_disablePerRequestCallbackBlocks(*(a1 + 40), v3, v4);
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = objc_msgSend_fetchRecordsGroup(v10, v8, v9);
    dispatch_group_leave(v11);
  }
}

void sub_2251D20B4(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251D2234;
  block[3] = &unk_278546990;
  v19 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v20 = v2;
  v21 = v3;
  v4 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  objc_msgSend_addPerRequestCallbackBlock_(*(a1 + 32), v5, v4);
  v8 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v6, v7);
  dispatch_async(v8, v4);

  v11 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v9, v10);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2251D2428;
  v17[3] = &unk_278545A00;
  v17[4] = *(a1 + 48);
  dispatch_async(v11, v17);

  if (*(a1 + 56) == 1)
  {
    v14 = objc_msgSend_error(*(a1 + 48), v12, v13);

    if (v14)
    {
      objc_msgSend_cancelAndDisablePerRequestCallbackBlocks(*(a1 + 32), v15, v16);
    }

    objc_msgSend_resumeCallbackQueue(*(a1 + 32), v15, v16);
  }

  objc_msgSend_disablePerRequestCallbackBlocks(*(a1 + 32), v12, v13);
}

void sub_2251D2234(id *a1, const char *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_isCancelled(a1[4], a2, a3) & 1) == 0)
  {
    v6 = objc_msgSend_error(a1[5], v4, v5);

    if (v6)
    {
      v9 = objc_msgSend_error(a1[5], v7, v8);
      objc_msgSend_setError_(a1[6], v10, v9);

      v29 = objc_msgSend_perRequestGroup(a1[4], v11, v12);
      dispatch_group_leave(v29);
    }

    else
    {
      objc_msgSend__handleQueryRequestFinishedWithSchedulerInfo_(a1[6], v7, a1[4]);
      if (objc_msgSend_fetchAllResults(a1[6], v13, v14))
      {
        v17 = objc_msgSend_resultsCursor(a1[5], v15, v16);

        if (v17)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v18 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v24 = a1[5];
            v25 = v18;
            v28 = objc_msgSend_resultsCursor(v24, v26, v27);
            *buf = 138412290;
            v31 = v28;
            _os_log_debug_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEBUG, "We're not done here. Sending another query with cursor %@", buf, 0xCu);
          }

          v21 = a1[6];
          v22 = objc_msgSend_resultsCursor(a1[5], v19, v20);
          objc_msgSend__sendQueryRequestWithCursor_previousRequestSchedulerInfo_(v21, v23, v22, a1[4]);
        }
      }
    }
  }
}

void sub_2251D2428(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = objc_msgSend_fetchRecordsGroup(v3, a2, a3);
    dispatch_group_leave(v4);
  }
}

void sub_2251D2474(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__handleRecordResponses_perRequestSchedulerInfo_(WeakRetained, v5, v3, v4);
}

void sub_2251D24E8(uint64_t a1)
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *v13 = 0;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "Waiting for all record fetches to finish...", v13, 2u);
  }

  v5 = objc_msgSend_requestInfos(*(a1 + 32), v3, v4);
  objc_msgSend_removeAllObjects(v5, v6, v7);

  v10 = objc_msgSend_recordFetcher(*(a1 + 32), v8, v9);
  objc_msgSend_finishIfAppropriate(v10, v11, v12);
}

void sub_2251D2CCC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v29 = 138412290;
      v30 = v9;
      _os_log_error_impl(&dword_22506F000, v10, OS_LOG_TYPE_ERROR, "Error while trying to determine userID: %@", &v29, 0xCu);
    }

    objc_msgSend_setError_(*(a1 + 32), v11, v9);
  }

  else
  {
    v14 = [CKDProtocolTranslator alloc];
    v17 = objc_msgSend_initWithContainer_databaseScope_(v14, v15, *(a1 + 40), *(a1 + 48));
    if (v17)
    {
      objc_msgSend_setTranslator_(*(a1 + 32), v16, v17);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v18 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v29) = 0;
        _os_log_error_impl(&dword_22506F000, v18, OS_LOG_TYPE_ERROR, "CKDSerializeRecordModificationsOperation is unable to instantiate a CKDProtocolTranslator", &v29, 2u);
      }

      v20 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBBF50], 1000, @"CKDSerializeRecordModificationsOperation is unable to instantiate a CKDProtocolTranslator");
      objc_msgSend_setError_(*(a1 + 32), v21, v20);
    }
  }

  v24 = objc_msgSend_error(*(a1 + 32), v12, v13);
  if (!v24)
  {
    v25 = objc_msgSend_translator(*(a1 + 32), v22, v23);
    if (!v25)
    {
      __assert_rtn("[CKDDeserializeRecordModificationsOperation _setupTranslator]_block_invoke", "CKDDeserializeRecordModificationsOperation.m", 157, "self.error != nil || self.translator != nil");
    }
  }

  v28 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v26, v27);
  dispatch_group_leave(v28);
}

void sub_2251D3E24(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_recordsToSave(*(a1 + 32), v4, v5);
  objc_msgSend_setFullRecordsToFetch_(v3, v7, v6);

  objc_msgSend_setUseRecordCache_(v3, v8, 0);
  objc_msgSend_setShouldUpdateTimestampsForFetchedMergeableValues_(v3, v9, 0);
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2251D3FE0;
  v15[3] = &unk_278548CC0;
  objc_copyWeak(&v16, &location);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v10, v15);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2251D40B4;
  v12[3] = &unk_278548748;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &from);
  objc_msgSend_setCompletionBlock_(v3, v11, v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251D3FA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251D3FE0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v20 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (v6)
  {
    objc_msgSend_setError_(WeakRetained, v8, v6);
  }

  v11 = objc_msgSend_container(v10, v8, v9);
  v14 = objc_msgSend_options(v11, v12, v13);
  if (objc_msgSend_returnPCSMetadata(v14, v15, v16))
  {
    v17 = CKIsPCSError();

    if ((v17 & 1) == 0)
    {
      objc_msgSend_fillOutPCSMetadataInfo(v20, v18, v19);
    }
  }

  else
  {
  }
}

void sub_2251D40B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(v2, v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_error(v2, v6, v7);
    objc_msgSend_setError_(WeakRetained, v9, v8);
  }

  v10 = objc_msgSend_stateTransitionGroup(WeakRetained, v6, v7);
  dispatch_group_leave(v10);
}

void sub_2251D4A18(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2251D4B9C;
  v9[3] = &unk_278548FA8;
  objc_copyWeak(&v10, &location);
  objc_msgSend_setSaveCompletionBlock_(v3, v4, v9);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2251D4C04;
  v6[3] = &unk_278548748;
  objc_copyWeak(&v7, &location);
  objc_copyWeak(&v8, &from);
  objc_msgSend_setCompletionBlock_(v3, v5, v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2251D4B60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2251D4B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v8)
  {
    objc_msgSend_setError_(WeakRetained, v6, v8);
  }
}

void sub_2251D4C04(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_error(v2, v3, v4);

  if (v5)
  {
    v8 = objc_msgSend_error(v2, v6, v7);
    objc_msgSend_setError_(WeakRetained, v9, v8);
  }

  v10 = objc_msgSend_stateTransitionGroup(WeakRetained, v6, v7);
  dispatch_group_leave(v10);
}

void sub_2251D4D74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v29 = 138412290;
      v30 = v9;
      _os_log_error_impl(&dword_22506F000, v10, OS_LOG_TYPE_ERROR, "Error while trying to determine userID: %@", &v29, 0xCu);
    }

    objc_msgSend_setError_(*(a1 + 32), v11, v9);
  }

  else
  {
    v14 = [CKDProtocolTranslator alloc];
    v17 = objc_msgSend_initWithContainer_databaseScope_(v14, v15, *(a1 + 40), *(a1 + 48));
    if (v17)
    {
      objc_msgSend_setTranslator_(*(a1 + 32), v16, v17);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v18 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v29) = 0;
        _os_log_error_impl(&dword_22506F000, v18, OS_LOG_TYPE_ERROR, "CKDSerializeRecordModificationsOperation is unable to instantiate a CKDProtocolTranslator", &v29, 2u);
      }

      v20 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBBF50], 1000, @"CKDSerializeRecordModificationsOperation is unable to instantiate a CKDProtocolTranslator");
      objc_msgSend_setError_(*(a1 + 32), v21, v20);
    }
  }

  v24 = objc_msgSend_error(*(a1 + 32), v12, v13);
  if (!v24)
  {
    v25 = objc_msgSend_translator(*(a1 + 32), v22, v23);
    if (!v25)
    {
      __assert_rtn("[CKDSerializeRecordModificationsOperation _setupTranslator]_block_invoke", "CKDSerializeRecordModificationsOperation.m", 214, "self.error != nil || self.translator != nil");
    }
  }

  v28 = objc_msgSend_stateTransitionGroup(*(a1 + 32), v26, v27);
  dispatch_group_leave(v28);
}

void sub_2251D5774(id *a1, void *a2, void *a3, _BYTE *a4)
{
  v56 = a4;
  v67 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc_init(CKDPRealTimeMessageAssociatedMergeableDeltas);
  v11 = objc_msgSend_translator(a1[4], v9, v10);
  v14 = objc_msgSend_recordID(a1[5], v12, v13);
  v16 = objc_msgSend_pRecordIdentifierFromRecordID_(v11, v15, v14);
  objc_msgSend_setRecordIdentifier_(v8, v17, v16);

  v18 = objc_opt_new();
  objc_msgSend_setFieldIdentifier_(v8, v19, v18);

  v22 = objc_msgSend_fieldIdentifier(v8, v20, v21);
  v58 = v6;
  objc_msgSend_setName_(v22, v23, v6);

  v26 = objc_msgSend_translator(a1[4], v24, v25);
  v29 = objc_msgSend_valueID(v7, v27, v28);
  v31 = objc_msgSend_pMergeableValueIdentifierFromMergeableValueID_(v26, v30, v29);
  objc_msgSend_setIdentifier_(v8, v32, v31);

  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v57 = v7;
  v36 = objc_msgSend_deltasToSave(v7, v34, v35);
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v60, v66, 16);
  if (v38)
  {
    v41 = v38;
    v42 = *v61;
    while (2)
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v61 != v42)
        {
          objc_enumerationMutation(v36);
        }

        v44 = *(*(&v60 + 1) + 8 * i);
        v45 = objc_msgSend_translator(a1[4], v39, v40, v56);
        v59 = 0;
        v47 = objc_msgSend_pMergeableDeltaFromDelta_error_(v45, v46, v44, &v59);
        v48 = v59;

        if (v48)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v53 = v57;
          v52 = v58;
          v54 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v65 = v48;
            _os_log_error_impl(&dword_22506F000, v54, OS_LOG_TYPE_ERROR, "Error translating CKMergerableDeltas during serialization: %@", buf, 0xCu);
          }

          objc_msgSend_setError_(a1[4], v55, v48);
          *v56 = 1;

          goto LABEL_15;
        }

        objc_msgSend_addObject_(v33, v49, v47);
      }

      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v60, v66, 16);
      if (v41)
      {
        continue;
      }

      break;
    }
  }

  objc_msgSend_setMergeableDeltas_(v8, v50, v33);
  objc_msgSend_addObject_(a1[6], v51, v8);
  v53 = v57;
  v52 = v58;
LABEL_15:
}

void sub_2251D5FF0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_recordArchivedBlock(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_recordArchivedBlock(*(a1 + 32), v5, v6);
    (*(v7 + 2))(v7, *(a1 + 40), *(a1 + 48));
  }
}

void sub_2251D63D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 120));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_2251D6420(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleRecordArchived_responseCode_(WeakRetained, v7, v6, v5);
}

void sub_2251D6498(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);

  if (v4)
  {
    v7 = objc_msgSend_error(WeakRetained, v5, v6);
    v8 = objc_loadWeakRetained((a1 + 48));
    objc_msgSend_setError_(v8, v9, v7);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_2251D6530(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = v2;
    v12 = objc_msgSend_operationID(v8, v10, v11);
    v13 = 138543362;
    v14 = v12;
    _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Archive records request %{public}@ is complete", &v13, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = objc_msgSend_error(v5, v3, v4);
  objc_msgSend_finishWithError_(v5, v7, v6);
}

void sub_2251D70AC(id *a1, const char *a2, uint64_t a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_error(a1[4], a2, a3);
  if (v4)
  {

    goto LABEL_3;
  }

  v15 = objc_msgSend_serverChangeTokenUpdatedBlock(a1[4], v5, v6);

  if (!v15)
  {
LABEL_3:
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v7 = a1[5];
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v44, v55, 16);
    if (v9)
    {
      v12 = v9;
      v13 = *v45;
      while (1)
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v14 = objc_msgSend_perRequestGroup(a1[8], v10, v11);
        dispatch_group_leave(v14);

        if (!--v12)
        {
          v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v44, v55, 16);
          if (!v12)
          {
            break;
          }
        }
      }
    }

    goto LABEL_20;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v7 = a1[5];
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v16, &v51, v56, 16);
  if (v17)
  {
    v19 = v17;
    v42 = v49;
    v43 = *v52;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v52 != v43)
        {
          objc_enumerationMutation(v7);
        }

        v21 = *(*(&v51 + 1) + 8 * i);
        v22 = objc_msgSend_objectForKeyedSubscript_(a1[6], v18, v21, v42);
        v24 = objc_msgSend_objectForKeyedSubscript_(a1[7], v23, v21);
        v27 = objc_msgSend_resultServerChangeTokenData(v22, v25, v26);

        if (v27)
        {
          v30 = objc_alloc(MEMORY[0x277CBC670]);
          v33 = objc_msgSend_resultServerChangeTokenData(v22, v31, v32);
          v27 = objc_msgSend_initWithData_(v30, v34, v33);
        }

        v35 = objc_msgSend_serverChangeTokenUpdatedBlock(a1[4], v28, v29);
        v38 = objc_msgSend_status(v22, v36, v37);
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v49[0] = sub_2251D73B8;
        v49[1] = &unk_278548128;
        v49[2] = a1[4];
        v50 = a1[8];
        (v35)[2](v35, v21, v27, v38, v24, v48);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v18, &v51, v56, 16);
    }

    while (v19);
  }

LABEL_20:

  v41 = objc_msgSend_fetchRecordsGroup(a1[4], v39, v40);
  dispatch_group_leave(v41);
}

void sub_2251D73B8(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v12 = objc_msgSend_operationID(v8, v10, v11);
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Finishing daemon operation %{public}@ due to client-returned error %@", &v14, 0x16u);
    }

    objc_msgSend_finishWithError_(*(a1 + 32), v7, v5);
  }

  v13 = objc_msgSend_perRequestGroup(*(a1 + 40), v3, v4);
  dispatch_group_leave(v13);
}

void sub_2251D77F8(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  if (objc_msgSend_status(v5, v6, v7))
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v8, v20);

    if (!v9)
    {
      v10 = objc_alloc(MEMORY[0x277CBC670]);
      v13 = objc_msgSend_resultServerChangeTokenData(v5, v11, v12);
      v15 = objc_msgSend_initWithData_(v10, v14, v13);

      v16 = objc_alloc(MEMORY[0x277CBC378]);
      v18 = objc_msgSend_initWithPreviousServerChangeToken_(v16, v17, v15);
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v19, v18, v20);
    }
  }
}

void sub_2251D7B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_2251D7BB8(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [CKDRecordResponse alloc];
  v7 = objc_msgSend_recordID(v3, v5, v6);
  v10 = objc_msgSend_etag(v3, v8, v9);
  v12 = objc_msgSend_initWithRecordID_record_etag_(v4, v11, v7, v3, v10);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v18[0] = v12;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v18, 1);
  v16 = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__handleChangedRecords_perRequestSchedulerInfo_(WeakRetained, v17, v15, v16);
}

void sub_2251D8330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251D835C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *MEMORY[0x277CBC878];
  v11 = MEMORY[0x277CBC830];
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v10);
    }

    v12 = *v11;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = v12;
      v16 = objc_msgSend_ckShortDescription(v7, v14, v15);
      *buf = 138543362;
      v49 = v16;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Fetched record %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v10);
    }

    v17 = *v11;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v33 = v17;
      v36 = objc_msgSend_ckShortDescription(v7, v34, v35);
      *buf = 138543618;
      v49 = v36;
      v50 = 2112;
      v51 = v9;
      _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "Failed to fetch record %{public}@ with error: %@", buf, 0x16u);
    }
  }

  objc_initWeak(buf, *(a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2251D871C;
  block[3] = &unk_278549680;
  objc_copyWeak(&v46, buf);
  objc_copyWeak(&v47, (a1 + 56));
  v18 = v9;
  v41 = v18;
  v19 = v7;
  v42 = v19;
  v43 = *(a1 + 40);
  v20 = v8;
  v21 = *(a1 + 48);
  v44 = v20;
  v45 = v21;
  v22 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  objc_msgSend_addPerRequestCallbackBlock_(*(a1 + 32), v23, v22);
  v26 = objc_msgSend_perRequestCallbackGroup(*(a1 + 32), v24, v25);
  v29 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v27, v28);
  dispatch_group_async(v26, v29, v22);

  v32 = objc_msgSend_perRequestCallbackQueue(*(a1 + 32), v30, v31);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2251D8AE8;
  v37[3] = &unk_2785476F0;
  objc_copyWeak(&v39, (a1 + 56));
  v38 = *(a1 + 32);
  dispatch_async(v32, v37);

  objc_destroyWeak(&v39);
  objc_destroyWeak(&v47);
  objc_destroyWeak(&v46);
  objc_destroyWeak(buf);
}

void sub_2251D86F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_2251D871C(id *a1)
{
  v45 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if ((isCancelled & 1) == 0)
  {
    v6 = objc_loadWeakRetained(a1 + 10);
    v9 = a1[4];
    if (*MEMORY[0x277CBC810] == 1)
    {
      v10 = objc_msgSend_unitTestOverrides(v6, v7, v8);
      v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"RecordNameForDecryptionFailureOnSync");
      v15 = objc_msgSend_recordName(a1[5], v13, v14);
      isEqualToString = objc_msgSend_isEqualToString_(v12, v16, v15);

      if (isEqualToString)
      {
        v18 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v7, *MEMORY[0x277CBC120], 5004, 0, @"TEST PCS decrypt failure");

        v9 = v18;
      }
    }

    if (v9)
    {
      v19 = objc_msgSend_objectForKeyedSubscript_(a1[6], v7, a1[5]);
      if (objc_msgSend_isMergeableValueDeltaRecord(v19, v20, v21) && objc_msgSend_CKIsNotFoundError(v9, v22, v23))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v24 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v25 = v24;
          v28 = objc_msgSend_recordID(v19, v26, v27);
          *buf = 138412290;
          v44 = v28;
          _os_log_impl(&dword_22506F000, v25, OS_LOG_TYPE_INFO, "Dropping mergeable value delta record on the floor because we got a not-found error fetching changes: %@", buf, 0xCu);
        }

        v9 = 0;
LABEL_15:
        v31 = objc_msgSend_errorReportingStyle(v6, v29, v30);
        if (v31 == 1)
        {
          v34 = CKIsPCSError();
          if (!v9)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v31 != 2)
          {
            goto LABEL_23;
          }

          v34 = 0;
          if (!v9)
          {
            goto LABEL_23;
          }
        }

        if (!v34)
        {
          v35 = objc_msgSend_error(v6, v32, v33);

          if (v35)
          {
LABEL_27:

            return;
          }

          v37 = objc_msgSend__possiblyWrapError_forRecordWithID_withCode_format_(a1[8], v36, v9, a1[5], 1000, @"Encountered an error fetching records");
          objc_msgSend_setError_(v6, v38, v37);
LABEL_26:

          goto LABEL_27;
        }

LABEL_23:
        if (v9)
        {
          goto LABEL_27;
        }

        v39 = objc_msgSend_error(v6, v32, v33);

        if (v39)
        {
          goto LABEL_27;
        }

        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = sub_2251D8A54;
        v41[3] = &unk_2785487F8;
        v42 = a1[7];
        objc_msgSend_updateCloudKitMetrics_(v6, v40, v41);
        v37 = v42;
        goto LABEL_26;
      }
    }

    objc_msgSend__noteChangedRecordWithID_record_error_(v6, v7, a1[5], a1[7], v9);
    goto LABEL_15;
  }
}

void sub_2251D8A54(uint64_t a1, void *a2)
{
  v21 = a2;
  v5 = objc_msgSend_recordsDownloaded(v21, v3, v4);
  objc_msgSend_setRecordsDownloaded_(v21, v6, v5 + 1);
  v9 = objc_msgSend_assetCount(*(a1 + 32), v7, v8);
  v12 = objc_msgSend_assetsDownloaded(v21, v10, v11);
  objc_msgSend_setAssetsDownloaded_(v21, v13, v12 + v9);
  v16 = objc_msgSend_assetDiskSize(*(a1 + 32), v14, v15);
  v19 = objc_msgSend_assetsDownloadedFileSize(v21, v17, v18);
  objc_msgSend_setAssetsDownloadedFileSize_(v21, v20, v19 + v16);
}

void sub_2251D8AE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_perRequestCallbackGroup(*(a1 + 32), v2, v3);
  dispatch_group_leave(v4);

  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = objc_msgSend_fetchRecordsGroup(WeakRetained, v5, v6);
    dispatch_group_leave(v8);

    v7 = WeakRetained;
  }
}

void sub_2251D8D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251D8D60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if ((isCancelled & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    MEMORY[0x2821F9670](v6, sel__noteDeletedRecordWithID_recordType_, v7);
  }
}

void sub_2251D8F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2251D8F24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  isCancelled = objc_msgSend_isCancelled(WeakRetained, v3, v4);

  if ((isCancelled & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    MEMORY[0x2821F9670](v6, sel__noteAttributesChangedForZone_, v7);
  }
}

void sub_2251D9088(uint64_t a1, void *a2)
{
  location[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = v4;
    v11 = objc_msgSend_zoneID(v7, v9, v10);
    LODWORD(location[0]) = 138412290;
    *(location + 4) = v11;
    _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Spawning operation to apply PCS changes for zone %@", location, 0xCu);
  }

  objc_initWeak(location, v3);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2251D9260;
  v13[3] = &unk_2785496F8;
  objc_copyWeak(v15, location);
  v15[1] = *(a1 + 48);
  v12 = *(a1 + 32);
  v5 = v12.i64[0];
  v14 = vextq_s8(v12, v12, 8uLL);
  objc_msgSend_setCompletionBlock_(v3, v6, v13);

  objc_destroyWeak(v15);
  objc_destroyWeak(location);
}