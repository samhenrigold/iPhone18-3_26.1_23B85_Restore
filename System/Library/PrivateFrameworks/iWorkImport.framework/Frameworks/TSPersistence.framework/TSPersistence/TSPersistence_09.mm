void sub_276A8996C(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_tsp_objectForIdentifier_(*(*(a1 + 32) + 224), a2, *(a1 + 56));
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = *(*(a1 + 32) + 192);
    v8 = *(a1 + 56);
    v33 = 0;
    v9 = objc_msgSend_queryObjectWithIdentifier_error_(v7, v6, v8, &v33);
    v11 = v33;
    if (!v9)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPDatabaseReadCoordinator databaseReader:wantsDataForDatabaseObjectIdentifier:filename:]_block_invoke");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDatabaseReadCoordinator.mm");
      v16 = *(a1 + 56);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v21 = objc_msgSend_domain(v11, v19, v20);
      v24 = objc_msgSend_code(v11, v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v25, v13, v15, 484, 0, "Could not read database object with identifier: %llu.errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v16, v18, v21, v24, v11);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    }

    v28 = objc_msgSend_dataForDatabaseObject_filename_(*(a1 + 32), v10, v9, *(a1 + 40));
    v29 = *(*(a1 + 48) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    v32 = *(*(*(a1 + 48) + 8) + 40);
    if (v32)
    {
      objc_msgSend_tsp_setObject_forIdentifier_(*(*(a1 + 32) + 224), v31, v32, *(a1 + 56));
    }
  }
}

void sub_276A89CB0(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectForKey_(*(*(a1 + 32) + 240), a2, *(a1 + 40));
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = objc_msgSend_dataForAppRelativePath_filename_(*(a1 + 32), v6, *(a1 + 40), *(a1 + 48));
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v11 = *(*(*(a1 + 56) + 8) + 40);
    if (v11)
    {
      v12 = *(a1 + 40);
      v13 = *(*(a1 + 32) + 240);

      objc_msgSend_setObject_forKey_(v13, v10, v11, v12);
    }
  }
}

void sub_276A8A948(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_persisted(v3, v4, v5);
  v9 = v6;
  if (v6)
  {
    v10 = *(a1 + 32);
    v11 = objc_msgSend_locator(v3, v7, v8);
    objc_msgSend_addObject_(v10, v12, v11);
  }

  if (objc_msgSend_modified(v3, v7, v8))
  {
    shouldAlwaysArchiveWhenInMemory = 1;
  }

  else
  {
    v16 = objc_msgSend_rootObject(v3, v13, v14);
    v19 = v16;
    if (v16)
    {
      shouldAlwaysArchiveWhenInMemory = objc_msgSend_shouldAlwaysArchiveWhenInMemory(v16, v17, v18);
    }

    else
    {
      shouldAlwaysArchiveWhenInMemory = 0;
    }
  }

  v20 = *(a1 + 40);
  v24 = objc_msgSend_identifier(v3, v13, v14);
  v23[0] = shouldAlwaysArchiveWhenInMemory;
  v23[1] = v9;
  v23[2] = objc_msgSend_requiredPackageIdentifier(v3, v21, v22);
  sub_276A99B14(v20 + 120, &v24, v23);
}

void sub_276A8AAB4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSPPackageWriteCoordinator;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_276A8AF20(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = *(v3 + 480);
  if (v4)
  {
    v5 = a1[5];

    objc_msgSend_addObject_(v4, a2, v5);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((v3 + 16));
    v8 = objc_msgSend_componentManager(WeakRetained, v6, v7);
    objc_msgSend_willModifyObject_options_(v8, v9, a1[5], a1[6]);
  }
}

void sub_276A8B1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, id);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276A8B1F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276A8B210(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_276A8B5CC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  v7 = atomic_load((*(a1 + 32) + 587));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A8B6F0;
  block[3] = &unk_27A6E5DA8;
  v13 = v5;
  v16 = v7 & 1;
  v14 = *(a1 + 48);
  v15 = a2;
  v8 = v5;
  dispatch_async(v6, block);
  v9 = *(a1 + 32);
  v10 = *(v9 + 160);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276A8B818;
  v11[3] = &unk_27A6E27F8;
  v11[4] = v9;
  dispatch_sync(v10, v11);
}

void sub_276A8B6F0(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v8 = *MEMORY[0x277CCA7E8];
      v9[0] = v4;
      v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v2, v9, &v8, 1);
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v6, *MEMORY[0x277CCA050], 3072, v5);
    }

    else
    {
      v5 = 0;
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v2, *MEMORY[0x277CCA050], 3072, 0);
    }
    v7 = ;

    v3 = v7;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_276A8B818(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 328);
  *(v2 + 328) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 616);
  *(v4 + 616) = 0;
}

void sub_276A8B864(uint64_t a1, const char *a2, uint64_t a3)
{
  atomic_store(1u, (*(a1 + 32) + 588));
  v4 = atomic_load((*(a1 + 32) + 584));
  if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  v5 = atomic_load((*(a1 + 32) + 586));
  if (v5)
  {
    goto LABEL_3;
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v27 = 0;
  v15 = objc_msgSend_createPackageMetadataWritingDatasWithPackageWriter_saveOperationState_error_(v12, a2, v13, v14, &v27);
  v11 = v27;
  v16 = *(a1 + 32);
  v17 = *(v16 + 672);
  *(v16 + 672) = v15;

  if (v15)
  {
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20 = v18[84];
    v21 = v18[12];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_276A8BA70;
    v23[3] = &unk_27A6E39F8;
    v23[4] = v18;
    v24 = *(a1 + 56);
    v25 = *(a1 + 40);
    v26 = *(a1 + 64);
    objc_msgSend_writeRootObjectAndRelatedComponents_withPackageWriter_completionQueue_completion_(v18, v22, v20, v19, v21, v23);

    goto LABEL_8;
  }

  v11 = v11;
  v10 = v11;
  if (!v11)
  {
LABEL_3:
    v6 = objc_msgSend_packageWriterError(*(a1 + 32), a2, a3);
    v8 = v6;
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = objc_msgSend_tsp_saveDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v7, 0);
    }

    v10 = v9;

    v11 = 0;
  }

  (*(*(a1 + 64) + 16))();

LABEL_8:
}

void sub_276A8BA70(id *a1)
{
  v101 = *MEMORY[0x277D85DE8];
  atomic_store(1u, a1[4] + 589);
  v2 = objc_alloc(MEMORY[0x277CCAA50]);
  v6 = objc_msgSend_initWithOptions_capacity_(v2, v3, 512, 0);
  v7 = atomic_load(a1[4] + 584);
  v8 = a1[4];
  v87 = v6;
  if ((v7 & 1) != 0 && *(v8 + 24) == 1)
  {
    v9 = [TSPWrittenComponentMetadataDictionary alloc];
    v11 = objc_msgSend_initWithCapacity_(v9, v10, *(a1[4] + 26));
    v12 = a1[4];
    v13 = *(v12 + 25);
    v86 = v11;
    v14 = 0;
    if (v13)
    {
      do
      {
        v15 = *(v13 + 58);
        v16 = v13[3];
        v19 = v16;
        if (v15 == 1)
        {
          v20 = objc_msgSend_componentObjectUUIDMap(v16, v17, v18);
        }

        else
        {
          v20 = v13[20];
        }

        v22 = v20;
        if (v20)
        {
          objc_msgSend_setMetadata_forComponentIdentifier_(v11, v21, v20, v13[2]);
          v14 += objc_msgSend_count(v22, v23, v24);
        }

        if (*(v13 + 40) == 1)
        {
          if (v15)
          {
LABEL_22:
            objc_msgSend_addObject_(v6, v21, v19);
            objc_msgSend_unionHashTable_(v6, v34, v13[18]);
          }

          else
          {
            v97 = 0u;
            v98 = 0u;
            v96 = 0u;
            v95 = 0u;
            v25 = v13[18];
            v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v95, v100, 16);
            if (v29)
            {
              v30 = *v96;
              while (2)
              {
                for (i = 0; i != v29; ++i)
                {
                  if (*v96 != v30)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v32 = a1[4];
                  v94 = objc_msgSend_identifier(*(*(&v95 + 1) + 8 * i), v27, v28);
                  v33 = sub_2769ABC64(v32 + 23, &v94);
                  if (v33 && *(v33 + 58) == 1)
                  {

                    v11 = v86;
                    v6 = v87;
                    goto LABEL_22;
                  }
                }

                v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v95, v100, 16);
                if (v29)
                {
                  continue;
                }

                break;
              }
            }

            v11 = v86;
            v6 = v87;
          }
        }

        v13 = *v13;
      }

      while (v13);
      v12 = a1[4];
    }

    v35 = *(v12 + 10);
    v36 = [TSPPersistedObjectUUIDMap alloc];
    isLoadingDocument_objectReferenceMap_delegate = objc_msgSend_initWithComponentObjectUUIDMapDictionary_objectUUIDCount_isLoadingDocument_objectReferenceMap_delegate_(v36, v37, v11, v14, 0, v35, a1[4]);
    v39 = a1[4];
    v40 = v39[39];
    v39[39] = isLoadingDocument_objectReferenceMap_delegate;

    atomic_store(*(a1[4] + 39) != 0, a1[4] + 584);
    v8 = a1[4];
    v41 = 1;
  }

  else
  {
    v41 = 0;
  }

  if (objc_msgSend_count(*(v8 + 66), v4, v5))
  {
    WeakRetained = objc_loadWeakRetained(a1[4] + 2);
    v47 = objc_msgSend_delegate(WeakRetained, v45, v46);

    if (objc_opt_respondsToSelector())
    {
      v48 = *(a1[4] + 10);
      v51 = objc_msgSend_context(a1[5], v49, v50);
      objc_msgSend_context_willFailToAutosaveDueToDuplicateUUIDs_objectReferenceMap_(v47, v52, v51, *(a1[4] + 66), v48);
    }
  }

  if (atomic_load(a1[4] + 42))
  {
    if ((v41 & 1) == 0)
    {
      for (j = *(a1[4] + 25); j; j = *j)
      {
        if (*(j + 40) == 1)
        {
          if (*(j + 58))
          {
LABEL_47:
            v55 = j[3];
            objc_msgSend_addObject_(v6, v64, v55);
            objc_msgSend_unionHashTable_(v6, v65, j[18]);
          }

          else
          {
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v55 = j[18];
            v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v90, v99, 16);
            if (v59)
            {
              v60 = *v91;
              while (2)
              {
                for (k = 0; k != v59; ++k)
                {
                  if (*v91 != v60)
                  {
                    objc_enumerationMutation(v55);
                  }

                  v62 = a1[4];
                  v94 = objc_msgSend_identifier(*(*(&v90 + 1) + 8 * k), v57, v58);
                  v63 = sub_2769ABC64(v62 + 23, &v94);
                  if (v63 && *(v63 + 58) == 1)
                  {

                    goto LABEL_47;
                  }
                }

                v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v57, &v90, v99, 16);
                if (v59)
                {
                  continue;
                }

                break;
              }
            }
          }
        }
      }
    }

    if (objc_msgSend_count(v6, v42, v43))
    {
      v66 = objc_loadWeakRetained(a1[4] + 2);
      v69 = v66;
      if (v66)
      {
        v70 = objc_msgSend_componentManager(v66, v67, v68);
        objc_msgSend_dirtyComponents_(v70, v71, v6);

        if (objc_msgSend_updateType(a1[6], v72, v73) == 2)
        {
          v76 = objc_msgSend_delegate(v69, v74, v75);
          if ((objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_shouldAttemptRecoveryAfterWritingWithWastefulComponents_(v76, v77, v69))
          {
            if (UnsafePointer != -1)
            {
              sub_276BD5D64();
            }

            atomic_store(1u, a1[4] + 586);
          }
        }
      }
    }
  }

  v78 = atomic_load(a1[4] + 584);
  if ((v78 & 1) == 0)
  {
    v80 = a1[7];
    v82 = objc_msgSend_packageWriterError(a1[4], v42, v43);
    v83 = v82;
    if (!v82)
    {
      v83 = objc_msgSend_tsp_saveDocumentErrorWithUserInfo_(MEMORY[0x277CCA9B8], v81, 0);
    }

    v80[2](v80, 2, v83);
    if (!v82)
    {
    }

    goto LABEL_68;
  }

  v79 = atomic_load(a1[4] + 586);
  if ((v79 & 1) == 0)
  {
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = sub_276A8C1CC;
    v88[3] = &unk_27A6E5DF8;
    v84 = a1[6];
    v89 = a1[7];
    objc_msgSend_finalizeComponentAndDataSectionWithCompletionHandler_(v84, v85, v88);
    v82 = v89;
LABEL_68:

    goto LABEL_69;
  }

  (*(a1[7] + 2))();
LABEL_69:
}

void sub_276A8C188()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A8C1CC(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_276A8C4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    if (*(i + 58))
    {
      v6 = objc_msgSend_upgradedComponentDataReferenceMap(i[3], a2, a3);
    }

    else
    {
      v6 = i[24];
    }

    v9 = v6;
    v10 = objc_msgSend_dataCount(v6, v7, v8);
    if (v10)
    {
      v11 = [TSPComponentDataReferenceInfo alloc];
      v13 = objc_msgSend_initWithComponentDataReferenceMap_packageIdentifier_(v11, v12, v9, a3);
      objc_msgSend_setMetadata_forComponentIdentifier_(*(a1 + 32), v14, v13, i[2]);
      *(*(*(a1 + 40) + 8) + 24) += v10;
      *(*(*(a1 + 48) + 8) + 24) += objc_msgSend_objectCount(v9, v15, v16);
    }
  }
}

void sub_276A8C944(uint64_t a1)
{
  v94 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CCAA50]);
  v5 = objc_msgSend_count(*(*(a1 + 32) + 480), v3, v4);
  v7 = objc_msgSend_initWithOptions_capacity_(v2, v6, 512, v5);
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v85 = a1;
  v8 = *(*(a1 + 32) + 480);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v89, v93, 16);
  if (v12)
  {
    v13 = *v90;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v90 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v16 = objc_msgSend_tsp_component(*(*(&v89 + 1) + 8 * i), v10, v11);
        if (v16)
        {
          objc_msgSend_addObject_(v7, v15, v16);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v89, v93, 16);
    }

    while (v12);
  }

  v19 = *(v85 + 32);
  v20 = *(v19 + 200);
  if (v20)
  {
    do
    {
      if (*(v20 + 57) == 1)
      {
        v87 = v20[3];
        v21 = v20[21];
        v88 = v20[9];
        v23 = objc_msgSend_packageEntryInfoForComponentLocator_isStoredOutsideObjectArchive_packageURL_(*(v85 + 40), v22, v88, *(v20 + 80), *(v85 + 48));
        v86 = v23;
        if (v23)
        {
          v26 = *(v85 + 32);
          v82 = *(v26 + 24);
          v84 = *(v20 + 80);
          v83 = v20[4];
          v78 = v20[24];
          v79 = v20[22];
          v80 = v20[11];
          v81 = v20[8];
          v76 = v20[12];
          v77 = v20[23];
          v75 = v20[13];
          v72 = v20[15];
          v73 = v20[14];
          v70 = *(v20 + 40);
          v71 = *(v20 + 128);
          v27 = *(v20 + 81);
          v28 = v20[17];
          v29 = v20[20];
          v74 = v20[19];
          v30 = *(v26 + 48);
          v31 = objc_msgSend_encodedLength(v23, v24, v25);
          v34 = objc_msgSend_lastModificationDate(v86, v32, v33);
          v35 = *(v20 + 58);
          BYTE1(v69) = objc_msgSend_containsObject_(v7, v36, v87);
          LOBYTE(v69) = v35;
          BYTE2(v68) = v27;
          BYTE1(v68) = v70;
          LOBYTE(v68) = v71;
          objc_msgSend_setPackageIdentifier_preferredLocator_locator_isStoredOutsideObjectArchive_compressionAlgorithm_rootObjectOrNil_archivedObjects_externalReferenceMap_persistedComponentDataReferenceMap_ambiguousReferences_documentReadVersion_documentWriteVersion_componentReadVersion_componentRequiredVersion_canBeDropped_isWasteful_requiredPackageIdentifier_featureInfos_componentObjectUUIDMap_objectReferenceMap_saveToken_encodedLength_lastModificationDate_wasCopied_wasModifiedDuringWrite_(v87, v37, v82, v81, v88, v84, v80, v83, v74, v79, v78, v77, v76, v75, v73, v72, v68, v28, v29, v21, v30, v31, v34, v69);
        }

        else if (*(v20 + 128) != 1 || (*(v20 + 58) & 1) == 0)
        {
          v38 = MEMORY[0x277D81150];
          v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSPPackageWriteCoordinator updateObjectContextForSuccessfulSaveWithPackageWriter:packageURL:allDataIdentifiers:]_block_invoke");
          v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
          v44 = objc_msgSend_preferredLocator(v87, v42, v43);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v45, v39, v41, 857, 0, "Missing entry for required component locator: %{public}@, preferred locator: (%{public}@", v88, v44);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
        }
      }

      v20 = *v20;
    }

    while (v20);
    v19 = *(v85 + 32);
  }

  if (*(v19 + 24) == 1)
  {
    if (!*(v19 + 312))
    {
      v48 = MEMORY[0x277D81150];
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPPackageWriteCoordinator updateObjectContextForSuccessfulSaveWithPackageWriter:packageURL:allDataIdentifiers:]_block_invoke");
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v52, v49, v51, 895, 0, "invalid nil value for '%{public}s'", "_persistedUUIDMap");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
    }

    v55 = objc_msgSend_objectUUIDMap(*(v85 + 56), v17, v18);
    objc_msgSend_setPersistedUUIDMap_(v55, v56, *(*(v85 + 32) + 312));

    if (!*(*(v85 + 32) + 320))
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d invalid nil value for '%{public}s'", "[TSPPackageWriteCoordinator updateObjectContextForSuccessfulSaveWithPackageWriter:packageURL:allDataIdentifiers:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm", 900, "_persistedDataReferenceMap");
      v62 = MEMORY[0x277D81150];
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "[TSPPackageWriteCoordinator updateObjectContextForSuccessfulSaveWithPackageWriter:packageURL:allDataIdentifiers:]_block_invoke");
      v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v67, v64, v66, 900, 1, "invalid nil value for '%{public}s'", "_persistedDataReferenceMap");

      TSUCrashBreakpoint();
      abort();
    }

    v59 = objc_msgSend_dataReferenceMap(*(v85 + 56), v57, v58);
    objc_msgSend_setPersistedDataReferenceMap_allDataIdentifiers_persistedObjectProvider_(v59, v60, *(*(v85 + 32) + 320), *(v85 + 64));

    v19 = *(v85 + 32);
  }

  v61 = *(v19 + 480);
  *(v19 + 480) = 0;
}

uint64_t sub_276A8D004(uint64_t result)
{
  v3 = 0;
  v1 = *(*(result + 32) + 360);
  if (v1)
  {
    v2 = result;
    do
    {
      result = (*(*(v2 + 40) + 16))();
      v1 = *v1;
    }

    while (v1 && (v3 & 1) == 0);
  }

  return result;
}

void sub_276A8D380(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A8D474;
  block[3] = &unk_27A6E5EC0;
  v14 = a2;
  v9 = *(a1 + 32);
  v3 = *(v9 + 104);
  v4 = *(v9 + 160);
  v5 = *(&v9 + 1);
  v6 = *(a1 + 48);
  v13 = *(a1 + 64);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  dispatch_group_async(v3, v4, block);
}

uint64_t sub_276A8D474(uint64_t a1, const char *a2)
{
  if (*(a1 + 72) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return MEMORY[0x2821F9670](v3, sel_writeRemainingComponentsWithPackageWriter_completionQueue_completion_, v4);
  }

  else
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPPackageWriteCoordinator writeRootObjectAndRelatedComponents:withPackageWriter:completionQueue:completion:]_block_invoke_2");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v13 = objc_msgSend_tsp_identifier(*(a1 + 56), v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v14, v6, v8, 958, 0, "Failed to enqueue root object [%{public}@-%llu].", v10, v13);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    atomic_store(0, (*(a1 + 32) + 584));
    result = *(a1 + 64);
    if (result)
    {
      v17 = *(result + 16);

      return v17();
    }
  }

  return result;
}

void sub_276A8DAB4()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A8DAF8()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A8DB3C(uint64_t a1, void *a2)
{
  v6 = 0;
  v7 = a2;
  hasArchiverAccessLock = objc_msgSend_enqueueComponent_rootObjectOrNil_forceArchive_isWastefullyEnqueueing_isWeakReference_referencingComponent_referencedObject_hasArchiverAccessLock_(*(a1 + 32), v3, v7, *(a1 + 40), *(a1 + 56), 0, 0, 0, 0, v6);
  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, hasArchiverAccessLock);
  }

  atomic_fetch_add((*(a1 + 32) + 168), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_resume(*(*(a1 + 32) + 160));
  dispatch_group_leave(*(*(a1 + 32) + 104));
}

void sub_276A8E730()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A8E774()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A8E7B8()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A8EBF0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "[TSPPackageWriteCoordinator addDelayedObjectToObjectContainer:referencingComponent:forWastefullyEnqueuedComponent:componentRootObject:]_block_invoke");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v13 = objc_msgSend_tsp_identifier(*(a1 + 32), v9, v10);
    if (*(a1 + 40))
    {
      v14 = objc_opt_class();
      NSStringFromClass(v14);
    }

    else
    {
      objc_msgSend_locator(*(a1 + 48), v11, v12);
    }
    v15 = ;
    v18 = objc_msgSend_identifier(*(a1 + 48), v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v19, v4, v6, 1227, 0, "Failed to add delayed object [%{public}@-%llu] to the object container for wastefully enqueued component [%{public}@-%llu].", v8, v13, v15, v18);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    atomic_store(0, (*(a1 + 56) + 584));
  }

  v22 = *(*(a1 + 56) + 104);

  dispatch_group_leave(v22);
}

void sub_276A8F244(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    v9 = MEMORY[0x277CCACC8];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_276A8F438;
    v22[3] = &unk_27A6E5F88;
    v22[4] = *(a1 + 32);
    v23 = v7;
    v24 = v8;
    v26 = a4;
    v25 = *(a1 + 40);
    objc_msgSend_tsp_performSynchronousOperationWithReadFileAccessUsingBlock_(v9, v10, v22);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A8F44C;
    block[3] = &unk_27A6E39F8;
    v18 = *(a1 + 32);
    v11 = *(v18 + 104);
    v12 = *(v18 + 160);
    v13 = *(&v18 + 1);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    v20 = v18;
    v21 = v16;
    dispatch_group_notify(v11, v12, block);
  }

  else
  {
    v17 = *(a1 + 56);
    if (v17)
    {
      dispatch_async(*(a1 + 48), v17);
    }
  }
}

void sub_276A900D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, void *a20, void *a21)
{
  _Block_object_dispose((v25 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_276A9023C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

_BYTE *sub_276A90280(uint64_t a1, const char *a2, uint64_t *a3)
{
  v7 = *a3;
  if ((objc_msgSend_containsIndex_(*(a1 + 32), a2, a2) & 1) != 0 || (result = sub_2769ABC64((*(a1 + 40) + 120), &v7)) != 0 && result[26] == 2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v5 = *(a1 + 40);
    v6 = 0;
    sub_276A7EF4C(v5 + 624, &v7, &v6);
  }

  return result;
}

void sub_276A90328(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = 0;
  sub_276A9A78C(v3 + 624, &v5, &v4);
}

void sub_276A903E8()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A9042C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A90470()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A90A80(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v107 = *MEMORY[0x277D85DE8];
  v94 = a3;
  v91 = a4;
  v17 = a5;
  v92 = a6;
  v95 = a7;
  v18 = a8;
  v93 = a9;
  v19 = a10;
  objc_msgSend_close(*(a1 + 32), v20, v21);
  v24 = *(a1 + 40);
  if (a2 == 1)
  {
    atomic_store(1u, (v24 + 586));
  }

  else if (a2)
  {
    atomic_store(0, (v24 + 584));
  }

  else
  {
    objc_msgSend_mergeWithObjectReferenceMap_(*(v24 + 80), v22, *(a1 + 48));
    if (*(a1 + 104))
    {
      if (objc_msgSend_count(v95, v25, v26))
      {
        v29 = MEMORY[0x277D81150];
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSPPackageWriteCoordinator archiveComponent:locator:compressionAlgorithm:storeOutsideObjectArchive:rootObject:withPackageWriter:]_block_invoke");
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 1663, 0, "External weak references are going to be ignored for the metadata.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
      }

      if (objc_msgSend_count(v17, v27, v28))
      {
        v38 = MEMORY[0x277D81150];
        v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSPPackageWriteCoordinator archiveComponent:locator:compressionAlgorithm:storeOutsideObjectArchive:rootObject:withPackageWriter:]_block_invoke");
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v42, v39, v41, 1664, 0, "External references are going to be ignored for the metadata.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44);
      }

      if (objc_msgSend_count(v18, v36, v37))
      {
        v45 = MEMORY[0x277D81150];
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSPPackageWriteCoordinator archiveComponent:locator:compressionAlgorithm:storeOutsideObjectArchive:rootObject:withPackageWriter:]_block_invoke");
        v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v49, v46, v48, 1665, 0, "Lazy references are going to be ignored for the metadata.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
      }
    }

    else
    {
      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = sub_276A91180;
      v104[3] = &unk_27A6E6028;
      v104[4] = *(a1 + 40);
      v105 = *(a1 + 56);
      v90 = v19;
      objc_msgSend_tsp_enumerateIdentifiersAndObjectsUsingBlock_(v94, v52, v104);
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v53 = v18;
      v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v100, v106, 16);
      if (v55)
      {
        v56 = *v101;
        do
        {
          for (i = 0; i != v55; ++i)
          {
            if (*v101 != v56)
            {
              objc_enumerationMutation(v53);
            }

            v58 = *(a1 + 40);
            v59 = *(a1 + 56);
            v60 = *(*(&v100 + 1) + 8 * i);
            v61 = v59;
            v99.n128_u64[0] = v60;
            v99.n128_u64[1] = v61;
            sub_276A9A958((v58 + 424), &v99);
          }

          v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v62, &v100, v106, 16);
        }

        while (v55);
      }

      v63 = *(a1 + 40);
      v64 = *(v63 + 104);
      v65 = *(v63 + 536);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_276A91214;
      block[3] = &unk_27A6E2898;
      v66 = v93;
      v67 = *(a1 + 40);
      v97 = v66;
      v98 = v67;
      dispatch_group_async(v64, v65, block);
      objc_msgSend_writeExternalReferences_andUpdateLazyReferences_withPackageWriter_forComponent_locator_(*(a1 + 40), v68, v17, v53, *(a1 + 64), *(a1 + 56), *(a1 + 72));
      v70 = *(a1 + 40);
      v69 = *(a1 + 48);
      v73 = objc_msgSend_featureInfos(*(a1 + 80), v71, v72);
      objc_msgSend_setArchivedObjects_componentObjectUUIDMap_objectReferenceMap_externalStrongReferences_ambiguousReferences_externalWeakReferences_featureInfos_componentDataReferenceMap_forComponent_(v70, v74, v94, v91, v69, v17, v92, v95, v73, v90, *(a1 + 56));

      v19 = v90;
    }
  }

  v75 = *(a1 + 88);
  if (v75)
  {
    if (objc_msgSend_isCancelled(v75, v22, v23))
    {
      atomic_store(0, (*(a1 + 40) + 584));
      atomic_store(1u, (*(a1 + 40) + 587));
    }

    else
    {
      v77 = objc_msgSend_tsu_pendingUnitCountForIncompleteProgress_(*(a1 + 88), v76, *(a1 + 96));
      objc_msgSend_becomeCurrentWithPendingUnitCount_(*(a1 + 88), v78, v77);
      v80 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x277CCAC48], v79, 1);
      objc_msgSend_setCompletedUnitCount_(v80, v81, 1);
      objc_msgSend_resignCurrent(*(a1 + 88), v82, v83);
    }
  }

  if (*(a1 + 80) != atomic_exchange((*(a1 + 40) + 176), 0))
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Current component writer should not have changed.", "[TSPPackageWriteCoordinator archiveComponent:locator:compressionAlgorithm:storeOutsideObjectArchive:rootObject:withPackageWriter:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm", 1686);
    v84 = MEMORY[0x277D81150];
    v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, "[TSPPackageWriteCoordinator archiveComponent:locator:compressionAlgorithm:storeOutsideObjectArchive:rootObject:withPackageWriter:]_block_invoke");
    v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v89, v86, v88, 1686, 1, "Current component writer should not have changed.");

    TSUCrashBreakpoint();
    abort();
  }

  atomic_fetch_add((*(a1 + 40) + 168), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_resume(*(*(a1 + 40) + 160));
  dispatch_group_leave(*(*(a1 + 40) + 104));
}

void sub_276A91180(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a2;
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *&v8 = v4;
  *(&v8 + 1) = v6;
  v7 = v4;
  sub_276A9A828(v5 + 344, &v9, &v8);
}

void sub_276A91214(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v8, v12, 16);
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v2);
        }

        objc_msgSend_didReferenceData_(*(a1 + 40), v4, *(*(&v8 + 1) + 8 * v7++), v8);
      }

      while (v5 != v7);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v8, v12, 16);
    }

    while (v5);
  }
}

void sub_276A91410(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v8 = v5;
  if (!v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v9 = a2) == 0)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPPackageWriteCoordinator writeExternalReferences:andUpdateLazyReferences:withPackageWriter:forComponent:locator:]_block_invoke");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v25, 1810, 0, "Unexpected external reference class: %{public}@ in component: %{public}@", v27, *(a1 + 48));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
      atomic_store(0, (*(a1 + 32) + 584));
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v9 = objc_msgSend_objectIfLoaded(v5, v6, v7);
  if (v9)
  {
LABEL_9:
    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v19 = *(v18 + 104);
    v20 = *(v18 + 160);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_276A916B4;
    v36[3] = &unk_27A6E29B0;
    v37 = v9;
    v38 = v18;
    v39 = v17;
    v21 = v9;
    dispatch_group_async(v19, v20, v36);

    goto LABEL_11;
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 104);
  v12 = *(v10 + 496);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A91DEC;
  block[3] = &unk_27A6E2870;
  v13 = v8;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = *(a1 + 48);
  dispatch_group_async(v11, v12, block);

LABEL_11:
}

void sub_276A916B4(uint64_t a1, const char *a2, uint64_t a3)
{
  if ((objc_msgSend_isComponentRoot(*(a1 + 32), a2, a3) & 1) == 0)
  {
    v8 = objc_msgSend_tsp_component(*(a1 + 32), v4, v5);
    v11 = objc_msgSend_identifier(v8, v9, v10);
    if (v11 == objc_msgSend_tsp_identifier(*(a1 + 32), v12, v13))
    {
      shouldCopyComponentOfObject = objc_msgSend_shouldCopyComponentOfObject_(*(a1 + 40), v14, *(a1 + 32));

      if (shouldCopyComponentOfObject)
      {
        goto LABEL_2;
      }
    }

    else
    {
    }

    dispatch_group_enter(*(*(a1 + 40) + 104));
    dispatch_suspend(*(*(a1 + 40) + 160));
    atomic_fetch_add((*(a1 + 40) + 168), 1uLL);
    v16 = *(*(a1 + 40) + 88);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_276A91838;
    v21[3] = &unk_27A6E29B0;
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v22 = v17;
    v23 = v18;
    v24 = v19;
    objc_msgSend_performAsynchronousArchiverAccessUsingBlock_(v16, v20, v21);

    return;
  }

LABEL_2:
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);

  objc_msgSend_enqueueRootObjectImpl_forceArchive_isAddingDelayedObjectReferencedByObjectContainer_completion_(v6, v4, v7, 0, 0, 0);
}

void sub_276A91838(id *a1, const char *a2, uint64_t a3)
{
  v43 = objc_msgSend_tsp_identifier(a1[4], a2, a3);
  v5 = objc_msgSend_componentForObjectIdentifier_objectOrNil_componentReadVersion_(a1[5], v4, v43, a1[4], 0);
  v9 = objc_msgSend_explicitComponentRootObjectForObject_archiverOrNil_claimingComponent_newClaimingComponent_newClaimingRootObject_willEnqueueDelayedObject_hasArchiverAccessLock_(a1[5], v6, a1[4], 0, v5, 0, 0, 0, 1);
  if (!v9)
  {
    if (v5)
    {
      v17 = v5;
    }

    else
    {
      v17 = objc_msgSend_tsp_component(a1[4], v7, v8);
      if (!v17)
      {
        v29 = a1[5];
        if (v29[24] == 1 && !sub_2769ABC64(v29 + 43, &v43))
        {
          v32 = a1[5];
          v38 = objc_msgSend_tsp_identifier(a1[4], v30, v31);
          if (!sub_2769ABC64(v32 + 48, &v38))
          {
            if (UnsafePointer == -1)
            {
              v17 = 0;
              goto LABEL_14;
            }

            sub_276BD5EF4();
          }
        }

        v17 = 0;
LABEL_14:

        goto LABEL_15;
      }
    }

    v26 = a1[5];
    v27 = objc_msgSend_allowsImplicitComponentOwnership(a1[4], v15, v16);
    objc_msgSend_enqueueComponent_rootObjectOrNil_forceArchive_isWastefullyEnqueueing_isWeakReference_referencingComponent_referencedObject_hasArchiverAccessLock_(v26, v28, v17, 0, 0, v27, 0, a1[6], a1[4], 1);
    goto LABEL_14;
  }

  if (v5)
  {
    v10 = objc_msgSend_identifier(v5, v7, v8);
    v13 = v10 != objc_msgSend_tsp_identifier(v9, v11, v12);
    objc_msgSend_enqueueComponent_rootObjectOrNil_forceArchive_isWastefullyEnqueueing_isWeakReference_referencingComponent_referencedObject_hasArchiverAccessLock_(a1[5], v14, v5, 0, 0, v13, 0, a1[6], a1[4], 1);
    goto LABEL_15;
  }

  v18 = a1[5];
  if (v9 == v18[37] && (objc_msgSend_isObjectInExternalPackage_claimingComponent_componentReadVersion_(v18, v7, a1[4], 0, 0) & 1) == 0)
  {
    v21 = objc_msgSend_identifier(a1[6], v19, v20);
    v22 = a1[5];
    if (v21 == *(v22 + 38))
    {
      if (sub_2769ABC64(v22 + 43, &v43))
      {
        goto LABEL_15;
      }

      v17 = objc_msgSend_tsp_component(a1[4], v23, v24);
      if (v17)
      {
        objc_msgSend_enqueueComponent_rootObjectOrNil_forceArchive_isWastefullyEnqueueing_isWeakReference_referencingComponent_referencedObject_hasArchiverAccessLock_(a1[5], v25, v17, 0, 0, 1, 0, a1[6], a1[4], 1);
      }

      else if (UnsafePointer != -1)
      {
        sub_276BD5ECC();
      }
    }

    else
    {
      dispatch_group_enter(*(v22 + 13));
      v33 = a1[4];
      v34 = a1[5];
      v35 = v34[37];
      v36 = a1[6];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = sub_276A91BB8;
      v39[3] = &unk_27A6E6078;
      v40 = v33;
      v41 = a1[6];
      v42 = v34;
      objc_msgSend_addDelayedObject_forComponentRootObject_claimingComponent_isDelayedObjectReferencedByObjectContainer_completion_(v34, v37, v40, v35, v36, 1, v39);

      v17 = v40;
    }

    goto LABEL_14;
  }

LABEL_15:
  atomic_fetch_add(a1[5] + 21, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_resume(*(a1[5] + 20));
  dispatch_group_leave(*(a1[5] + 13));
}

void sub_276A91BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = objc_msgSend_tsp_component(*(a1 + 32), 0, a3);
    v5 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPPackageWriteCoordinator writeExternalReferences:andUpdateLazyReferences:withPackageWriter:forComponent:locator:]_block_invoke_4");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v14 = objc_msgSend_tsp_identifier(*(a1 + 32), v12, v13);
    v17 = objc_msgSend_locator(*(a1 + 40), v15, v16);
    v20 = objc_msgSend_identifier(*(a1 + 40), v18, v19);
    v23 = objc_msgSend_locator(v4, v21, v22);
    v26 = objc_msgSend_identifier(v4, v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v27, v7, v9, 1731, 0, "Failed to add delayed object [%{public}@-%llu] to the object container while writing external references. Object is externally referenced by component [%{public}@-%llu]. Current component is [%{public}@-%llu].", v11, v14, v17, v20, v23, v26);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    atomic_store(0, (*(a1 + 48) + 584));
  }

  v30 = *(*(a1 + 48) + 104);

  dispatch_group_leave(v30);
}

void sub_276A91D64()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A91DA8()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A91DEC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_tsp_identifier(*(a1 + 32), a2, a3);
  dispatch_group_enter(*(*(a1 + 40) + 104));
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_276A92038;
  aBlock[3] = &unk_27A6E60A0;
  v29 = v4;
  v22 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v22;
  *(&v9 + 1) = v5;
  v27 = v9;
  v28 = v8;
  v10 = _Block_copy(aBlock);
  v12 = objc_msgSend_externalReferenceInfoForObjectIdentifier_(*(*(a1 + 40) + 504), v11, v4);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
  v17 = objc_msgSend_componentManager(WeakRetained, v14, v15);
  if (v12)
  {
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20 = *(v19 + 496);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_276A92264;
    v23[3] = &unk_27A6E60C8;
    v23[4] = v19;
    v24 = v18;
    v25 = v10;
    objc_msgSend_componentForRootObjectIdentifier_queue_completion_(v17, v21, v12, v20, v23);
  }

  else
  {
    objc_msgSend_componentForRootObjectOfLazyReference_queue_completion_(v17, v16, *(a1 + 32), *(*(a1 + 40) + 496), v10);
  }
}

void sub_276A92038(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_identifier(v3, v4, v5);
    objc_msgSend_addExternalReferenceToObjectIdentifier_componentIdentifier_isWeak_componentIsVersioned_(*(a1[4] + 504), v8, a1[8], v7, 0, 0);
    v9 = *(a1[4] + 160);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A921E4;
    block[3] = &unk_27A6E3008;
    v24 = a1[8];
    v25 = v7;
    v10 = v6;
    v11 = a1[4];
    v12 = a1[5];
    v21 = v10;
    v22 = v11;
    v23 = v12;
    dispatch_async(v9, block);
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSPPackageWriteCoordinator writeExternalReferences:andUpdateLazyReferences:withPackageWriter:forComponent:locator:]_block_invoke_8");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 1789, 0, "Cannot find entry in external references map for object %llu component %{public}@ lazy reference %{public}@.", a1[8], a1[6], a1[7]);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    atomic_store(0, (a1[4] + 584));
  }
}

void sub_276A921E4(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 56) == *(a1 + 64))
  {
    isWasteful = 0;
  }

  else
  {
    isWasteful = objc_msgSend_isWasteful(*(a1 + 32), a2, a3);
  }

  v6 = 0;
  objc_msgSend_enqueueComponent_rootObjectOrNil_forceArchive_isWastefullyEnqueueing_isWeakReference_referencingComponent_referencedObject_hasArchiverAccessLock_(*(a1 + 40), a2, *(a1 + 32), 0, 0, isWasteful, 0, *(a1 + 48), 0, v6);
  v5 = *(*(a1 + 40) + 104);

  dispatch_group_leave(v5);
}

void sub_276A92264(void *a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    (*(a1[6] + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 16));
    v6 = objc_msgSend_componentManager(WeakRetained, v4, v5);
    objc_msgSend_componentForRootObjectOfLazyReference_queue_completion_(v6, v7, a1[5], *(a1[4] + 496), a1[6]);
  }
}

void sub_276A925D0(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    v8 = *(*(a1 + 32) + 80);
    v9 = objc_msgSend_objectReferenceMap(*(a1 + 40), v5, v6);
    objc_msgSend_mergeWithObjectReferenceMap_(v8, v10, v9);

    objc_msgSend_updateExternalReferencesForCopiedComponent_(*(a1 + 32), v11, *(a1 + 40));
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    v15 = objc_msgSend_dataManager(WeakRetained, v13, v14);

    v17 = *(a1 + 32);
    v16 = *(a1 + 40);
    v18 = *(v17 + 104);
    v19 = *(v17 + 536);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A928B0;
    block[3] = &unk_27A6E29B0;
    block[4] = v17;
    v38 = v16;
    v20 = v15;
    v39 = v20;
    dispatch_group_async(v18, v19, block);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_276A92C14;
    v34[3] = &unk_27A6E61E0;
    v21 = *(a1 + 40);
    v34[4] = *(a1 + 32);
    v35 = v21;
    v36 = *(a1 + 48);
    objc_msgSend_enumerateExternalReferences_(v35, v22, v34);
  }

  else if (objc_msgSend_canBeDropped(*(a1 + 40), v5, v6))
  {
    if (UnsafePointer != -1)
    {
      sub_276BD5F30();
    }
  }

  else
  {
    objc_msgSend_setPackageWriterErrorIfNeeded_(*(a1 + 32), v23, v7);
    atomic_store(0, (*(a1 + 32) + 584));
    if (UnsafePointer != -1)
    {
      sub_276BD5F1C();
    }
  }

  v25 = *(a1 + 56);
  if (v25)
  {
    if (objc_msgSend_isCancelled(v25, v23, v24))
    {
      atomic_store(0, (*(a1 + 32) + 584));
      atomic_store(1u, (*(a1 + 32) + 587));
    }

    else
    {
      v27 = objc_msgSend_tsu_pendingUnitCountForIncompleteProgress_(*(a1 + 56), v26, *(a1 + 64));
      objc_msgSend_becomeCurrentWithPendingUnitCount_(*(a1 + 56), v28, v27);
      v30 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x277CCAC48], v29, 1);
      objc_msgSend_setCompletedUnitCount_(v30, v31, 1);
      objc_msgSend_resignCurrent(*(a1 + 56), v32, v33);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 104));
}

void sub_276A928B0(uint64_t a1, const char *a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 32) + 544);
  Version = objc_msgSend_documentReadVersion(*(a1 + 40), a2, a3);
  if (v4 <= Version)
  {
    v8 = Version;
  }

  else
  {
    v8 = v4;
  }

  *(*(a1 + 32) + 544) = v8;
  v9 = *(*(a1 + 32) + 552);
  v10 = objc_msgSend_documentWriteVersion(*(a1 + 40), v6, v7);
  if (v9 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  *(*(a1 + 32) + 552) = v13;
  if (*(*(a1 + 32) + 560))
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = objc_msgSend_featureInfos(*(a1 + 40), v11, v12);
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v35, v39, 16);
    if (v18)
    {
      v19 = *v36;
      do
      {
        v20 = 0;
        do
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v22 = objc_msgSend_identifier(*(*(&v35 + 1) + 8 * v20), v16, v17);
          if (v22)
          {
            objc_msgSend_addObject_(*(*(a1 + 32) + 560), v21, v22);
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v35, v39, 16);
      }

      while (v18);
    }
  }

  v23 = objc_msgSend_persistedComponentDataReferenceMap(*(a1 + 40), v11, v12);
  v26 = objc_msgSend_dataToObjectReferenceMap(v23, v24, v25);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_276A92AFC;
  v31[3] = &unk_27A6E6118;
  v27 = *(a1 + 48);
  v28 = *(a1 + 32);
  v29 = *(a1 + 40);
  v32 = v27;
  v33 = v28;
  v34 = v29;
  objc_msgSend_enumerateReferencesUsingBlock_(v26, v30, v31);
}

BOOL sub_276A92AFC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = objc_msgSend_dataForIdentifier_(*(a1 + 32), v5, a2);
    v10 = objc_msgSend_null(TSPData, v8, v9);

    v12 = *(a1 + 40);
    v13 = v7 != v10;
    if (v7 == v10)
    {
      atomic_store(0, v12 + 584);
      if (UnsafePointer != -1)
      {
        sub_276BD5F44();
      }
    }

    else
    {
      objc_msgSend_didReferenceData_(v12, v11, v7);
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

void sub_276A92BD0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A92C14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  dispatch_group_enter(*(*(a1 + 32) + 104));
  v6 = *a3;
  v7 = *(a3 + 8);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v11 = objc_msgSend_componentManager(WeakRetained, v9, v10);
  v12 = v7 ^ 1;
  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  v15 = *(v14 + 160);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_276A92D54;
  v17[3] = &unk_27A6E61B8;
  v17[4] = v14;
  v20 = a2;
  v21 = v6;
  v18 = v13;
  v22 = v12;
  v19 = *(a1 + 48);
  objc_msgSend_componentForRootObjectIdentifier_queue_completion_(v11, v16, v6, v15, v17);
}

void sub_276A92D54(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    v8 = objc_msgSend_rootObject(v4, v6, v7);
    v12 = objc_msgSend_objectForIdentifier_(WeakRetained, v9, *(a1 + 56));
    if (!v12)
    {
      v12 = objc_msgSend_tsp_objectForIdentifier_(*(*(a1 + 32) + 328), v10, *(a1 + 56));
      if (!v12 && v8 != 0)
      {
        v14 = objc_msgSend_tsp_objectForIdentifier_(*(*(a1 + 32) + 328), v10, *(a1 + 64));

        if (v14)
        {
          goto LABEL_8;
        }

        if (UnsafePointer != -1)
        {
          sub_276BD5F58();
        }

        v51 = *(a1 + 72);
        v141 = 0;
        v142[0] = 0;
        v140 = 0;
        isWeakReference_rootObject_allObjects_error = objc_msgSend_readComponent_isWeakReference_rootObject_allObjects_error_(WeakRetained, v10, v4, (v51 & 1) == 0, v142, &v141, &v140);
        v131 = v142[0];
        v53 = v141;
        v55 = v140;
        v129 = v53;
        if (isWeakReference_rootObject_allObjects_error)
        {
          v12 = objc_msgSend_tsp_objectForIdentifier_(v53, v54, *(a1 + 56));
          v58 = *(a1 + 32);
          if (!*(v58 + 328))
          {
            v59 = MEMORY[0x277CCAB00];
            v60 = objc_msgSend_count(v129, v56, v57);
            v62 = objc_msgSend_newTspStrongObjectsMapTableWithCapacity_(v59, v61, v60);
            v63 = *(a1 + 32);
            v64 = *(v63 + 328);
            *(v63 + 328) = v62;

            v58 = *(a1 + 32);
          }

          v127 = v55;
          v139[0] = MEMORY[0x277D85DD0];
          v139[1] = 3221225472;
          v139[2] = sub_276A93724;
          v139[3] = &unk_27A6E2988;
          v139[4] = v58;
          objc_msgSend_tsp_enumerateIdentifiersAndObjectsUsingBlock_(v129, v56, v139);
          if (v8 != v131)
          {
            v123 = MEMORY[0x277D81150];
            v125 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "[TSPPackageWriteCoordinator copyComponent:locator:preferredLocator:rootObject:packageWriter:]_block_invoke_6");
            v124 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
            v67 = objc_opt_class();
            v68 = NSStringFromClass(v67);
            v71 = objc_msgSend_tsp_identifier(v131, v69, v70);
            v72 = objc_opt_class();
            v73 = NSStringFromClass(v72);
            v76 = objc_msgSend_tsp_identifier(v8, v74, v75);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v123, v77, v125, v124, 1925, 0, "Loaded a different root object [%{public}@-%llu] (vs [%{public}@-%llu]) while attempting to fault in object %llu during autosave.", v68, v71, v73, v76, *(a1 + 56));

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79);
          }

          v80 = objc_msgSend_tsp_objectForIdentifier_(*(*(a1 + 32) + 328), v65, *(a1 + 64));

          if (v80 != v8)
          {
            v82 = MEMORY[0x277D81150];
            v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "[TSPPackageWriteCoordinator copyComponent:locator:preferredLocator:rootObject:packageWriter:]_block_invoke_6");
            v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
            v86 = objc_opt_class();
            v87 = NSStringFromClass(v86);
            v90 = objc_msgSend_tsp_identifier(v8, v88, v89);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v82, v91, v83, v85, 1926, 0, "List of all objects didn't include the root object [%{public}@-%llu].", v87, v90);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v92, v93);
          }

          v55 = v127;
        }

        else
        {
          if (UnsafePointer != -1)
          {
            sub_276BD5F6C();
          }

          v94 = *(*(a1 + 32) + 328);
          if (!v94)
          {
            v95 = objc_msgSend_newTspStrongObjectsMapTableWithCapacity_(MEMORY[0x277CCAB00], v54, 1);
            v96 = *(a1 + 32);
            v97 = *(v96 + 328);
            *(v96 + 328) = v95;

            v94 = *(*(a1 + 32) + 328);
          }

          objc_msgSend_tsp_setObject_forIdentifier_(v94, v54, v8, *(a1 + 64));
          v12 = 0;
        }

        if (!v12)
        {
LABEL_8:
          if (*(a1 + 72) == 1)
          {
            v15 = MEMORY[0x277D81150];
            v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPPackageWriteCoordinator copyComponent:locator:preferredLocator:rootObject:packageWriter:]_block_invoke_6");
            v128 = v15;
            v130 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
            v18 = *(a1 + 56);
            v21 = objc_msgSend_locator(v4, v19, v20);
            v126 = v18;
            v24 = objc_msgSend_identifier(v4, v22, v23);
            v25 = objc_opt_class();
            v26 = NSStringFromClass(v25);
            v29 = objc_msgSend_tsp_identifier(v8, v27, v28);
            v30 = *(a1 + 48);
            v33 = objc_msgSend_identifier(*(a1 + 40), v31, v32);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v128, v34, v16, v130, 1941, 0, "Object %llu, which currently belongs to component [%{public}@-%llu] is not retained by its component root object [%{public}@-%llu]. That could lead to possible archiving bugs. Component [%{public}@-%llu] has a strong external reference to object %llu.", v126, v21, v24, v26, v29, v30, v33, *(a1 + 56));

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
          }

          v12 = 0;
        }

        else if (*(a1 + 72) == 1 && UnsafePointer != -1)
        {
          sub_276BD5F94();
        }
      }
    }

    v98 = *(a1 + 72);
    if (v98 == 1)
    {
      v99 = v12;
      if (*(a1 + 56) != *(a1 + 64))
      {
        if (v12)
        {
          Version = objc_msgSend_isObjectInExternalPackage_claimingComponent_componentReadVersion_(*(a1 + 32), v10, v12, 0, 0);
          dispatch_group_enter(*(*(a1 + 32) + 104));
          dispatch_suspend(*(*(a1 + 32) + 160));
          atomic_fetch_add((*(a1 + 32) + 168), 1uLL);
          v101 = *(a1 + 32);
          v102 = *(v101 + 88);
          v132[0] = MEMORY[0x277D85DD0];
          v132[1] = 3221225472;
          v132[2] = sub_276A937BC;
          v132[3] = &unk_27A6E6190;
          v103 = *(a1 + 56);
          v132[4] = v101;
          v137 = v103;
          v133 = v12;
          v134 = v4;
          v135 = v8;
          v136 = *(a1 + 40);
          v138 = Version;
          objc_msgSend_performAsynchronousArchiverAccessUsingBlock_(v102, v104, v132);
        }

        else if (v8)
        {
          v105 = MEMORY[0x277D81150];
          v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPPackageWriteCoordinator copyComponent:locator:preferredLocator:rootObject:packageWriter:]_block_invoke_6");
          v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
          v109 = *(a1 + 56);
          v112 = objc_msgSend_locator(*(a1 + 40), v110, v111);
          v115 = objc_msgSend_identifier(*(a1 + 40), v113, v114);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v105, v116, v106, v108, 2018, 0, "Object with identifier %llu, which is referenced from component [%{public}@-%llu], will be lost because it's no longer in memory and could not be loaded.", v109, v112, v115);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v117, v118);
          atomic_store(0, (*(a1 + 32) + 584));
        }

        else
        {
          v119 = *(a1 + 32);
          isWasteful = objc_msgSend_isWasteful(v4, v10, v11);
          LOBYTE(v122) = 0;
          objc_msgSend_enqueueComponent_rootObjectOrNil_forceArchive_isWastefullyEnqueueing_isWeakReference_referencingComponent_referencedObject_hasArchiverAccessLock_(v119, v121, v4, 0, 0, isWasteful, 0, *(a1 + 40), 0, v122);
        }

        goto LABEL_39;
      }
    }

    else
    {
      v99 = 0;
    }

    LOBYTE(v122) = 0;
    objc_msgSend_enqueueComponent_rootObjectOrNil_forceArchive_isWastefullyEnqueueing_isWeakReference_referencingComponent_referencedObject_hasArchiverAccessLock_(*(a1 + 32), v10, v4, v8, 0, v98 ^ 1u, v98 ^ 1u, *(a1 + 40), v99, v122);
LABEL_39:

    goto LABEL_40;
  }

  if (*(a1 + 72) == 1)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSPPackageWriteCoordinator copyComponent:locator:preferredLocator:rootObject:packageWriter:]_block_invoke_6");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    v41 = *(a1 + 56);
    v44 = objc_msgSend_locator(*(a1 + 40), v42, v43);
    v47 = objc_msgSend_identifier(*(a1 + 40), v45, v46);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v48, v38, v40, 2028, 0, "External component should not be nil when it is strongly referenced. Object with identifier %llu, which is referenced from component [%{public}@-%llu], will be lost because external component %llu is nil.", v41, v44, v47, *(a1 + 64));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50);
    atomic_store(0, (*(a1 + 32) + 584));
  }

LABEL_40:
  dispatch_group_leave(*(*(a1 + 32) + 104));
}

void sub_276A936E0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A93734()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A93778()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A937BC(uint64_t a1, const char *a2)
{
  v3 = (a1 + 72);
  v4 = objc_msgSend_componentForObjectIdentifier_objectOrNil_componentReadVersion_(*(a1 + 32), a2, *(a1 + 72), *(a1 + 40), 0);
  v6 = objc_msgSend_explicitComponentRootObjectForObject_archiverOrNil_claimingComponent_newClaimingComponent_newClaimingRootObject_willEnqueueDelayedObject_hasArchiverAccessLock_(*(v3 - 5), v5, *(v3 - 4), 0, v4, 0, 0, 1, 1);
  v7 = v4;
  if (!v4)
  {
    v7 = *(a1 + 48);
  }

  v8 = v7;
  v11 = v8;
  if (v6)
  {
    v12 = objc_msgSend_identifier(v8, v9, v10);
    v15 = v12 != objc_msgSend_tsp_identifier(v6, v13, v14);
    objc_msgSend_enqueueComponent_rootObjectOrNil_forceArchive_isWastefullyEnqueueing_isWeakReference_referencingComponent_referencedObject_hasArchiverAccessLock_(*(a1 + 32), v16, v11, *(a1 + 56), 0, v15, 0, *(a1 + 64), *(a1 + 40), 1);
    if ((objc_msgSend_shouldDelayArchiving(v6, v17, v18) & 1) == 0)
    {
      v20 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPPackageWriteCoordinator copyComponent:locator:preferredLocator:rootObject:packageWriter:]_block_invoke_11");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v27 = objc_msgSend_tsp_identifier(v6, v25, v26);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v30, v41, v22, 1968, 0, "Object [%{public}@-%llu] is component root object for [%{public}@-%llu], but it doesn't define the delayed archiving flag.", v24, v27, v29, *v3);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
    }

    if ((*(a1 + 80) & 1) == 0)
    {
      v33 = sub_2769ABC64((*(a1 + 32) + 344), v3) != 0;
      dispatch_group_enter(*(*(a1 + 32) + 104));
      v35 = *(a1 + 32);
      v34 = *(a1 + 40);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = sub_276A93AF0;
      v42[3] = &unk_27A6E6168;
      v47 = v33;
      v43 = v34;
      v44 = v6;
      v45 = v4;
      v46 = v35;
      objc_msgSend_addDelayedObject_forComponentRootObject_claimingComponent_isDelayedObjectReferencedByObjectContainer_completion_(v35, v36, v43, v6, v4, 0, v42);
    }
  }

  else
  {
    v37 = *(a1 + 56);
    v38 = *(a1 + 32);
    v39 = objc_msgSend_allowsImplicitComponentOwnership(*(a1 + 40), v9, v10);
    objc_msgSend_enqueueComponent_rootObjectOrNil_forceArchive_isWastefullyEnqueueing_isWeakReference_referencingComponent_referencedObject_hasArchiverAccessLock_(v38, v40, v11, v37, 0, v39, 0, *(a1 + 64), *(a1 + 40), 1);
  }

  atomic_fetch_add((*(a1 + 32) + 168), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_resume(*(*(a1 + 32) + 160));
  dispatch_group_leave(*(*(a1 + 32) + 104));
}

void sub_276A93AF0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = *(a1 + 64);
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "[TSPPackageWriteCoordinator copyComponent:locator:preferredLocator:rootObject:packageWriter:]_block_invoke_12");
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    if (v3 == 1)
      v7 = {;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v12 = objc_msgSend_tsp_identifier(*(a1 + 32), v10, v11);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v17 = objc_msgSend_tsp_identifier(*(a1 + 40), v15, v16);
      v20 = objc_msgSend_locator(*(a1 + 48), v18, v19);
      v23 = objc_msgSend_identifier(*(a1 + 48), v21, v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v24, v5, v7, 1981, 0, "Failed to add delayed object [%{public}@-%llu] to explicit component root object [%{public}@-%llu]. It was already written by component [%{public}@-%llu].", v9, v12, v14, v17, v20, v23);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
      atomic_store(0, (*(a1 + 56) + 584));
    }

    else
      v27 = {;
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v32 = objc_msgSend_tsp_identifier(*(a1 + 32), v30, v31);
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v37 = objc_msgSend_tsp_identifier(*(a1 + 40), v35, v36);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v38, v5, v27, 1986, 0, "Failed to add delayed object [%{public}@-%llu] to explicit component root object [%{public}@-%llu]. It will be saved in the object container.", v29, v32, v34, v37);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
      dispatch_group_enter(*(*(a1 + 56) + 104));
      v41 = *(a1 + 32);
      v43 = *(a1 + 48);
      v42 = *(a1 + 56);
      v44 = v42[37];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = sub_276A93DBC;
      v48[3] = &unk_27A6E6140;
      v45 = v41;
      v46 = *(a1 + 56);
      v49 = v45;
      v50 = v46;
      objc_msgSend_addDelayedObject_forComponentRootObject_claimingComponent_isDelayedObjectReferencedByObjectContainer_completion_(v42, v47, v45, v44, v43, 1, v48);
    }
  }

  dispatch_group_leave(*(*(a1 + 56) + 104));
}

void sub_276A93DBC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "[TSPPackageWriteCoordinator copyComponent:locator:preferredLocator:rootObject:packageWriter:]_block_invoke_13");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v11 = objc_msgSend_tsp_identifier(*(a1 + 32), v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v12, v4, v6, 1992, 0, "Failed to add delayed object [%{public}@-%llu] to the object container.", v8, v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    atomic_store(0, (*(a1 + 40) + 584));
  }

  v15 = *(*(a1 + 40) + 104);

  dispatch_group_leave(v15);
}

void sub_276A93ED4()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A93F18()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A9478C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = sub_276A94978;
  v25 = &unk_27A6E6230;
  v31 = v3;
  v4 = v2;
  v5 = *(a1 + 48);
  v32 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v26 = v9;
  v27 = v8;
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  v13 = *(a1 + 96);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v28 = v15;
  v29 = v14;
  v30 = *(a1 + 104);
  v16 = _Block_copy(&v22);
  v17 = *(*(a1 + 32) + 520);
  v20 = objc_msgSend_copy(v16, v18, v19, v22, v23, v24, v25);
  objc_msgSend_addObject_(v17, v21, v20);
}

void sub_276A94910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21)
{
  v23 = v21;

  _Unwind_Resume(a1);
}

void sub_276A94978(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 104);
  v17 = objc_msgSend_identifier(*(a1 + 32), a2, a3);
  v5 = sub_2769ABC64((v4 + 184), &v17);
  if (v5)
  {
    v7 = v5;
    objc_storeStrong(v5 + 17, *(a1 + 40));
    v7[12] = *(a1 + 112);
    v7[13] = *(a1 + 120);
    objc_storeStrong(v7 + 19, *(a1 + 48));
    objc_storeStrong(v7 + 20, *(a1 + 56));
    objc_storeStrong(v7 + 21, *(a1 + 64));
    objc_storeStrong(v7 + 24, *(a1 + 72));
    objc_storeStrong(v7 + 23, *(a1 + 80));
    v9 = objc_msgSend_newExternalReferenceMapWithStrongReferences_weakReferences_delegate_(*(a1 + 32), v8, *(a1 + 88), *(a1 + 96), *(a1 + 104));
    objc_storeStrong(v7 + 22, v9);
    if (!v9)
    {
      atomic_store(0, (*(a1 + 104) + 584));
    }
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPPackageWriteCoordinator setArchivedObjects:componentObjectUUIDMap:objectReferenceMap:externalStrongReferences:ambiguousReferences:externalWeakReferences:featureInfos:componentDataReferenceMap:forComponent:]_block_invoke_2");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 2195, 0, "We shouldn't try to set external references in a component we are not writing.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    atomic_store(0, (*(a1 + 104) + 584));
  }
}

void sub_276A94AF8(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 544);
  if (v2 <= *(a1 + 48))
  {
    v2 = *(a1 + 48);
  }

  *(v1 + 544) = v2;
  v3 = *(a1 + 32);
  v4 = *(v3 + 552);
  if (v4 <= *(a1 + 56))
  {
    v4 = *(a1 + 56);
  }

  *(v3 + 552) = v4;
  if (*(*(a1 + 32) + 560))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = *(a1 + 40);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v15, v19, 16);
    if (v10)
    {
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v14 = objc_msgSend_identifier(*(*(&v15 + 1) + 8 * v12), v8, v9, v15);
          if (v14)
          {
            objc_msgSend_addObject_(*(*(a1 + 32) + 560), v13, v14);
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v15, v19, 16);
      }

      while (v10);
    }
  }
}

void sub_276A94D24(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = sub_276A94E04;
  v13 = &unk_27A6E62A8;
  v15 = v3;
  v14 = v2;
  v4 = _Block_copy(&v10);
  v5 = *(*(a1 + 32) + 520);
  v8 = objc_msgSend_copy(v4, v6, v7, v10, v11, v12, v13);
  objc_msgSend_addObject_(v5, v9, v8);
}

void sub_276A94E04(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v16 = objc_msgSend_identifier(*(a1 + 32), a2, a3);
  v5 = sub_2769ABC64((v4 + 184), &v16);
  if (v5)
  {
    v7 = v5;
    v8 = objc_msgSend_newUpdatedExternalReferenceMapUsingDelegate_(*(a1 + 32), v6, *(a1 + 40));
    objc_storeStrong(v7 + 22, v8);
    if (!v8)
    {
      atomic_store(0, (*(a1 + 40) + 584));
    }
  }

  else
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPPackageWriteCoordinator updateExternalReferencesForCopiedComponent:]_block_invoke_2");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 2234, 0, "We shouldn't try to set external references in a component we are not writing.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    atomic_store(0, (*(a1 + 40) + 584));
  }
}

void sub_276A94F94(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 520);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v10, v14, 16);
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v10 + 1) + 8 * v6) + 16))(*(*(&v10 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v7, &v10, v14, 16);
    }

    while (v4);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 520);
  *(v8 + 520) = 0;
}

void sub_276A95350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v27 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_276A953D8(uint64_t a1)
{
  v2 = MEMORY[0x277CCACC8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276A954CC;
  v9[3] = &unk_27A6E62F0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v8 = *(a1 + 56);
  v6 = v8;
  v13 = v8;
  v14 = *(a1 + 72);
  objc_msgSend_tsp_performSynchronousOperationWithReadFileAccessUsingBlock_(v2, v7, v9);
}

void sub_276A954CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v133 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_message(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v6 = v5[68];
  if (v6)
  {
    UnsafePointer(v6, v4 + 72);
    v5 = *(a1 + 40);
  }

  v7 = v5[69];
  if (v7)
  {
    UnsafePointer(v7, v4 + 96);
    v5 = *(a1 + 40);
  }

  UnsafePointer(v5[5], v4 + 120);
  v10 = *(*(a1 + 40) + 56);
  if (v10 == 1 || v10 == 2)
  {
    *(v4 + 16) |= 0x10u;
    *(v4 + 200) = v10;
  }

  v11 = *(a1 + 40);
  v12 = *(v11 + 200);
  if (v12)
  {
    while (1)
    {
      if (*(v12 + 57) == 1)
      {
        v13 = v12[3];
        if (*(v12 + 7) == 0)
        {
          v14 = *(v4 + 40);
          if (!v14)
          {
            v16 = *(v4 + 36);
            goto LABEL_21;
          }

          v15 = *(v4 + 32);
          v16 = *v14;
          if (v15 >= *v14)
          {
            if (v16 == *(v4 + 36))
            {
LABEL_21:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 24), v16 + 1);
              v14 = *(v4 + 40);
              v16 = *v14;
            }

            *v14 = v16 + 1;
            v21 = sub_2769F507C(*(v4 + 24));
            v23 = v21;
            v24 = *(v4 + 32);
            v25 = *(v4 + 40) + 8 * v24;
            *(v4 + 32) = v24 + 1;
            goto LABEL_26;
          }

          v17 = &v14[2 * v15];
          *(v4 + 32) = v15 + 1;
        }

        else
        {
          v18 = *(v4 + 160);
          if (!v18)
          {
            v20 = *(v4 + 156);
            goto LABEL_24;
          }

          v19 = *(v4 + 152);
          v20 = *v18;
          if (v19 >= *v18)
          {
            if (v20 == *(v4 + 156))
            {
LABEL_24:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 144), v20 + 1);
              v18 = *(v4 + 160);
              v20 = *v18;
            }

            *v18 = v20 + 1;
            v21 = sub_2769F507C(*(v4 + 144));
            v23 = v21;
            v26 = *(v4 + 152);
            v25 = *(v4 + 160) + 8 * v26;
            *(v4 + 152) = v26 + 1;
LABEL_26:
            *(v25 + 8) = v21;
            objc_msgSend_saveToMessage_saveToken_writtenComponentInfo_(v13, v22, v23, *(*(a1 + 40) + 48), v12 + 3);
            goto LABEL_27;
          }

          v17 = &v18[2 * v19];
          *(v4 + 152) = v19 + 1;
        }

        objc_msgSend_saveToMessage_saveToken_writtenComponentInfo_(v13, v8, *(v17 + 1), *(*(a1 + 40) + 48), v12 + 3);
      }

LABEL_27:
      v12 = *v12;
      if (!v12)
      {
        v11 = *(a1 + 40);
        break;
      }
    }
  }

  v27 = objc_msgSend_allObjects(*(v11 + 568), v8, v9);
  v29 = objc_msgSend_sortedArrayUsingComparator_(v27, v28, &unk_2885C4DB8);

  objc_msgSend_willWriteData_(*(a1 + 48), v30, v29);
  if (!*(*(a1 + 40) + 72))
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSPPackageWriteCoordinator createPackageMetadataWritingDatasWithPackageWriter:saveOperationState:error:]_block_invoke_2");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 2347, 0, "invalid nil value for '%{public}s'", "_dataAttributesSnapshot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
  }

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  obj = v29;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v128, v132, 16);
  if (!v42)
  {
    goto LABEL_73;
  }

  v43 = *v129;
  while (2)
  {
    for (i = 0; i != v42; ++i)
    {
      if (*v129 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v45 = *(*(&v128 + 1) + 8 * i);
      v46 = objc_msgSend_null(TSPData, v40, v41);
      v47 = v45 == v46;

      if (v47)
      {
        continue;
      }

      v48 = objc_msgSend_context(v45, v40, v41);
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
      v50 = v48 == WeakRetained;

      if (!v50)
      {
        v89 = MEMORY[0x277D81150];
        v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "[TSPPackageWriteCoordinator createPackageMetadataWritingDatasWithPackageWriter:saveOperationState:error:]_block_invoke_2");
        v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
        v95 = objc_msgSend_context(v45, v93, v94);
        v96 = objc_loadWeakRetained((*(a1 + 40) + 16));
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v89, v97, v90, v92, 2354, 0, "Document cannot have a reference to data %@ because it belongs to a different object context %p (expected object context: %p).", v45, v95, v96);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v98, v99);
        *(*(*(a1 + 64) + 8) + 24) = 0;
        goto LABEL_73;
      }

      v55 = objc_msgSend_progress(*(a1 + 48), v51, v52);
      if (v55)
      {
        v56 = objc_msgSend_lengthIfLocal(v45, v53, v54);
        v58 = objc_msgSend_tsu_pendingUnitCountForIncompleteProgress_(v55, v57, v56);
        objc_msgSend_becomeCurrentWithPendingUnitCount_(v55, v59, v58);
      }

      v60 = objc_msgSend_message(*(a1 + 32), v53, v54);
      v62 = v60;
      v63 = *(v60 + 64);
      if (!v63)
      {
        v65 = *(v60 + 60);
        goto LABEL_45;
      }

      v64 = *(v60 + 56);
      v65 = *v63;
      if (v64 >= *v63)
      {
        if (v65 != *(v60 + 60))
        {
LABEL_46:
          *v63 = v65 + 1;
          v66 = sub_2769F557C(*(v62 + 48));
          v70 = *(v62 + 56);
          v71 = *(v62 + 64) + 8 * v70;
          *(v62 + 56) = v70 + 1;
          *(v71 + 8) = v66;
          v67 = objc_msgSend_archiveInfoMessage_archiver_packageWriter_(v45, v72, v66, *(a1 + 40), *(a1 + 48));
          goto LABEL_47;
        }

LABEL_45:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v60 + 48), v65 + 1);
        v63 = *(v62 + 64);
        v65 = *v63;
        goto LABEL_46;
      }

      *(v60 + 56) = v64 + 1;
      v66 = *&v63[2 * v64 + 2];
      v67 = objc_msgSend_archiveInfoMessage_archiver_packageWriter_(v45, v61, v66, *(a1 + 40), *(a1 + 48));
LABEL_47:
      if (v67)
      {
        v73 = *(a1 + 48);
        v74 = *(a1 + 56);
        v75 = *(*(a1 + 72) + 8);
        v127 = *(v75 + 40);
        v76 = objc_msgSend_addData_infoMessage_saveOperationState_error_(v73, v68, v45, v66, v74, &v127);
        objc_storeStrong((v75 + 40), v127);
      }

      else
      {
        v76 = 0;
      }

      isCancelled = atomic_load((*(a1 + 40) + 587));
      if (v55)
      {
        if (isCancelled)
        {
          isCancelled = 1;
        }

        else
        {
          isCancelled = objc_msgSend_isCancelled(v55, v68, v69);
        }

        objc_msgSend_resignCurrent(v55, v68, v69);
      }

      if (!v76)
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
        if ((isCancelled & 1) == 0 && UnsafePointer != -1)
        {
          sub_276BD5FBC();
        }

        goto LABEL_73;
      }

      v80 = objc_msgSend_attributesForData_(*(*(a1 + 40) + 72), v68, v45);
      if (v80)
      {
        *(v66 + 16) |= 0x100u;
        v81 = *(v66 + 88);
        if (!v81)
        {
          v82 = *(v66 + 8);
          if (v82)
          {
            v82 = *(v82 & 0xFFFFFFFFFFFFFFFELL);
          }

          v81 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataAttributes>(v82);
          *(v66 + 88) = v81;
        }

        objc_msgSend_saveToMessage_(v80, v78, v81);
      }

      v85 = objc_msgSend_metadata(v45, v78, v79);
      if (v85)
      {
        v86 = *(a1 + 32);
        v87 = objc_msgSend_identifier(v45, v83, v84);
        objc_msgSend_setDataMetadata_forDataIdentifier_(v86, v88, v85, v87);
      }
    }

    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v128, v132, 16);
    if (v42)
    {
      continue;
    }

    break;
  }

LABEL_73:

  v102 = *(a1 + 40);
  if (*(v102 + 32))
  {
    v103 = objc_msgSend_message(*(a1 + 32), v100, v101);
    v106 = v103;
    *(v103 + 16) |= 1u;
    v107 = *(v103 + 168);
    if (!v107)
    {
      v108 = *(v103 + 8);
      if (v108)
      {
        v108 = *(v108 & 0xFFFFFFFFFFFFFFFELL);
      }

      v107 = sub_2769F5464(v108);
      *(v106 + 168) = v107;
    }

    v109 = objc_msgSend_sequence(*(*(a1 + 40) + 32), v104, v105);
    *(v107 + 16) |= 4u;
    *(v107 + 40) = v109;
    v112 = objc_msgSend_identifier(*(*(a1 + 40) + 32), v110, v111);
    v115 = objc_msgSend_UUIDString(v112, v113, v114);

    if (objc_msgSend_length(v115, v116, v117))
    {
      *(v107 + 16) |= 1u;
      v118 = *(v107 + 8);
      if (v118)
      {
        v118 = *(v118 & 0xFFFFFFFFFFFFFFFELL);
      }

      v119 = google::protobuf::internal::ArenaStringPtr::Mutable((v107 + 24), v118);
      objc_msgSend_tsp_saveToProtobufString_(v115, v120, v119);
    }

    v102 = *(a1 + 40);
  }

  v121 = *(v102 + 48);
  *(v4 + 16) |= 8u;
  *(v4 + 192) = v121;
  v122 = objc_loadWeakRetained((*(a1 + 40) + 16));
  ObjectIdentifier = objc_msgSend_lastObjectIdentifier(v122, v123, v124);
  *(v4 + 16) |= 4u;
  *(v4 + 184) = ObjectIdentifier;
}

uint64_t sub_276A95D44(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  isReadable = objc_msgSend_isReadable(v4, v6, v7);
  v11 = objc_msgSend_isReadable(v5, v9, v10);
  if (v11 & 1 | ((isReadable & 1) == 0))
  {
    if (isReadable & 1 | ((v11 & 1) == 0))
    {
      v14 = objc_msgSend_lengthIfLocal(v4, v12, v13);
      v17 = objc_msgSend_lengthIfLocal(v5, v15, v16);
      if (v14 == v17)
      {
        v20 = objc_msgSend_identifier(v4, v18, v19);
        v23 = objc_msgSend_identifier(v5, v21, v22);
        v24 = -1;
        if (v20 >= v23)
        {
          v24 = 1;
        }

        if (v20 == v23)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24;
        }
      }

      else if (v14 > v17)
      {
        v25 = -1;
      }

      else
      {
        v25 = 1;
      }
    }

    else
    {
      v25 = 1;
    }
  }

  else
  {
    v25 = -1;
  }

  return v25;
}

void sub_276A95E30()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A96348()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

uint64_t sub_276A96698(uint64_t a1, uint64_t a2)
{
  if (!atomic_load((*(a1 + 32) + 168)))
  {
    v5 = atomic_load((*(a1 + 32) + 588));
    if ((v5 & 1) == 0)
    {
      dispatch_assert_queue_V2(*(*(a1 + 32) + 160));
    }
  }

  v6 = sub_2769ABC64((*(a1 + 32) + 184), (a1 + 64));
  if (v6)
  {
    v9 = v6;
    if (!objc_msgSend_updateDelayedObjectsSetForWrittenComponentInfo_componentIdentifier_withObject_canDelayObjects_(*(a1 + 32), v7, (v6 + 3), *(a1 + 64), *(a1 + 40), a2) && !objc_msgSend_containsItem_(v9[6], v10, *(a1 + 40)))
    {
      if (*(v9 + 58) == 1)
      {
        v32 = objc_msgSend_tsp_component(*(a1 + 40), v11, v12);
        v35 = v32;
        v36 = v32 && objc_msgSend_identifier(v32, v33, v34) == *(a1 + 64);
      }

      else
      {
        v37 = *(a1 + 48);
        if (v37)
        {
          v38 = v37;
        }

        else
        {
          v41 = *(a1 + 32);
          v42 = objc_msgSend_tsp_identifier(*(a1 + 40), v11, v12);
          v38 = objc_msgSend_componentForObjectIdentifier_objectOrNil_componentReadVersion_(v41, v43, v42, 0, 0);
        }

        v35 = v38;
        v36 = objc_msgSend_identifier(v38, v39, v40) == *(a1 + 64);
      }

      if ((*(a1 + 72) & 1) == 0 && !v36)
      {
        v45 = MEMORY[0x277D81150];
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "[TSPPackageWriteCoordinator addDelayedObject:forComponentRootObject:claimingComponent:isDelayedObjectReferencedByObjectContainer:completion:]_block_invoke");
        v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        v53 = objc_msgSend_tsp_identifier(*(a1 + 40), v51, v52);
        v56 = objc_msgSend_locator(v9[3], v54, v55);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v57, v46, v48, 2554, 0, "Object [%{public}@-%llu] can no longer be delayed for component [%{public}@-%llu], because this component was already archived.", v50, v53, v56, *(a1 + 64));

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59);
      }
    }
  }

  else
  {
    v13 = objc_msgSend_tsp_component(*(a1 + 40), v7, v8);
    v16 = v13;
    if (!v13 || (v17 = objc_msgSend_identifier(v13, v14, v15), v17 != *(a1 + 64)) || !objc_msgSend_isComponentExternalWithIdentifier_wasCopied_componentReadVersion_(*(a1 + 32), v14, v17, 0, 0))
    {
      if ((*(a1 + 72) & 1) == 0)
      {
        v18 = MEMORY[0x277D81150];
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPPackageWriteCoordinator addDelayedObject:forComponentRootObject:claimingComponent:isDelayedObjectReferencedByObjectContainer:completion:]_block_invoke");
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriteCoordinator.mm");
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v26 = objc_msgSend_tsp_identifier(*(a1 + 40), v24, v25);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v27, v19, v21, 2561, 0, "Object [%{public}@-%llu] can no longer be delayed for component identifier %llu, because this component is not enqueued to be written.", v23, v26, *(a1 + 64));

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
      }
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    v31 = *(result + 16);

    return v31();
  }

  return result;
}

void sub_276A96CB4(_Unwind_Exception *a1)
{
  v7 = v2;

  _Unwind_Resume(a1);
}

void sub_276A96D04(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v4 = [TSPReferenceOrderedSet alloc];
    v6 = objc_msgSend_initWithCapacity_(v4, v5, 1);
    objc_storeStrong((*(a1 + 32) + 24), v6);
    v2 = v6;
  }

  v7 = v2;
  objc_msgSend_addItem_(v2, v3, *(a1 + 40));
}

void sub_276A97158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    if ((*(a1 + 64) & 1) == 0 && !objc_msgSend_allowsImplicitComponentOwnership(*(a1 + 40), 0, a3))
    {
      v6 = *(a1 + 56);
      v7 = v6[37];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_276A97284;
      v12[3] = &unk_27A6E6360;
      v8 = *(a1 + 40);
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      v13 = v9;
      v14 = v10;
      objc_msgSend_addDelayedObject_forComponentRootObject_claimingComponent_isDelayedObjectReferencedByObjectContainer_completion_(v6, v11, v8, v7, 0, 1, v12);

      return;
    }

    v4 = *(a1 + 32);
    if (!v4)
    {
      return;
    }
  }

  v5 = *(v4 + 16);

  v5();
}

uint64_t sub_276A97284(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_276A97D90()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A97DD4()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A991CC(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_msgSend_count(v6, v3, v4))
  {
    objc_msgSend_saveToMessage_(v6, v5, *(a1 + 32) + 120);
  }
}

void sub_276A9923C(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_msgSend_dataCount(v6, v3, v4))
  {
    objc_msgSend_saveToMessage_(v6, v5, *(a1 + 32));
  }
}

void sub_276A992A8(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = a2;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v28, v32, 16);
  if (v7)
  {
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        v11 = *(a1 + 32);
        v12 = *(v11 + 160);
        if (!v12)
        {
          v14 = *(v11 + 156);
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v11 + 144), v14 + 1);
          v12 = *(v11 + 160);
          v14 = *v12;
          goto LABEL_12;
        }

        v13 = *(v11 + 152);
        v14 = *v12;
        if (v13 < *v12)
        {
          *(v11 + 152) = v13 + 1;
          v15 = *&v12[2 * v13 + 2];
          goto LABEL_13;
        }

        if (v14 == *(v11 + 156))
        {
          goto LABEL_11;
        }

LABEL_12:
        *v12 = v14 + 1;
        v15 = sub_2769F534C(*(v11 + 144));
        v16 = *(v11 + 152);
        v17 = *(v11 + 160) + 8 * v16;
        *(v11 + 152) = v16 + 1;
        *(v17 + 8) = v15;
LABEL_13:
        v18 = objc_msgSend_identifier(v10, v5, v6, v28);
        *(v15 + 16) |= 1u;
        v19 = *(v15 + 8);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v20 = google::protobuf::internal::ArenaStringPtr::Mutable((v15 + 72), v19);
        objc_msgSend_tsp_saveToProtobufString_(v18, v21, v20);

        if (objc_msgSend_readVersion(v10, v22, v23))
        {
          Version = objc_msgSend_readVersion(v10, v24, v25);
          UnsafePointer(Version, v15 + 24);
        }

        if (objc_msgSend_writeVersion(v10, v24, v25))
        {
          v27 = objc_msgSend_writeVersion(v10, v5, v6);
          UnsafePointer(v27, v15 + 48);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v28, v32, 16);
    }

    while (v7);
  }
}

uint64_t sub_276A994E4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = *(v2 + 240);
  if (*(v2 + 240) == *(v2 + 244))
  {
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  *(*(v2 + 248) + 8 * v3) = a2;
  *(v2 + 240) = v3 + 1;
  return result;
}

uint64_t sub_276A99558(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = *(v2 + 240);
  if (*(v2 + 240) == *(v2 + 244))
  {
    google::protobuf::RepeatedField<unsigned long long>::Reserve();
  }

  *(*(v2 + 248) + 8 * v3) = a2;
  *(v2 + 240) = v3 + 1;
  return result;
}

uint64_t sub_276A99658(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  v7 = *(a2 + 104);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 104) = v7;
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  return a1;
}

uint64_t sub_276A99754(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 8];
    v7 = *v6 + 16 * v5;
    v8 = *(v2 + (((a1[5] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v7 != v8)
    {
      do
      {

        v9 = *v7;
        v7 += 16;

        if (v7 - *v6 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 128;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = 256;
  }

  a1[4] = v12;
LABEL_16:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_276A9988C(a1);
}

uint64_t sub_276A9988C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_276A998DC(uint64_t a1)
{
  sub_276A99918(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_276A99918(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_276A99964(uint64_t a1)
{
  sub_276A999A0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_276A999A0(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_276A999E4(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_276A99BB8(int64x2_t *a1)
{
  v2 = (*(a1->i64[1] + ((a1[2].i64[0] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * a1[2].i64[0]);

  a1[2] = vaddq_s64(a1[2], xmmword_276C16A80);

  return sub_276A99C2C(a1, 1);
}

uint64_t sub_276A99C2C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

void *sub_276A99C8C(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_276A99F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11)
{
  if (a10)
  {
    sub_276A9A02C(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_276A9A02C(uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t *sub_276A9A0E8(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_276A9A1C8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276A9A1C8(a1, *a2);
    sub_276A9A1C8(a1, a2[1]);

    operator delete(a2);
  }
}

void *sub_276A9A224(uint64_t a1, uint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_276A9A310(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_276A9A35C(uint64_t **a1, id *a2)
{
  v3 = sub_276A9A398(a1, a2);

  operator delete(a2);
  return v3;
}

uint64_t *sub_276A9A398(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_276A9A40C(v6, a2);
  return v3;
}

uint64_t *sub_276A9A40C(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (*(v23 + 24))
  {
    v24 = *(v7 + 8);
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    *(v7 + 8) = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = *(v7 + 16);
    *(v24 + 16) = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    *(v7 + 16) = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void sub_276A9A8F4(uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

__n128 sub_276A9A958(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 32 * (v4 - v5) - 1;
  }

  v7 = a1[5];
  v8 = v7 + a1[4];
  if (v6 == v8)
  {
    sub_276A9A9E4(a1);
    v5 = a1[1];
    v7 = a1[5];
    v8 = a1[4] + v7;
  }

  v9 = *(v5 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8));
  result = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  *(v9 + 16 * v8) = result;
  a1[5] = v7 + 1;
  return result;
}

void sub_276A9A9E4(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_276A73310(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_276A9ABB8(a1, &v9);
}

void sub_276A9AB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_276A9ABB8(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_276A73310(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_276A9ACC0(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_276A73310(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_276A9ADCC(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_276A73310(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_276A9AED4(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_276A73310(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void *sub_276A9AFE0(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_276A9B2AC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276A9B2AC(a1, *a2);
    sub_276A9B2AC(a1, a2[1]);
    sub_276A9A1C8((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_276A9B80C(uint64_t a1)
{
  v23 = objc_alloc_init(TSPTemporaryObjectContextDelegate);
  v2 = [TSPObjectContext alloc];
  v4 = objc_msgSend_initWithDelegate_(v2, v3, v23);
  v5 = [TSPPackageReadCoordinator alloc];
  ValidationPolicy = objc_msgSend_initWithContext_package_packageURL_finalizeHandlerQueue_areExternalDataReferencesAllowed_skipDocumentUpgrade_documentLoadValidationPolicy_(v5, v6, v4, *(*(a1 + 32) + 8), *(*(a1 + 32) + 56), 0, 0, 1, 0);
  v24 = 0;
  v9 = objc_msgSend_readPackageMetadataWithError_(ValidationPolicy, v8, &v24);
  v10 = v24;
  v15 = objc_msgSend_message(v9, v11, v12);
  if (!(v15 | v10))
  {
    v10 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v13, 0);
  }

  objc_msgSend_tearDown(ValidationPolicy, v13, v14);
  objc_msgSend_close(v4, v16, v17);
  if (v15)
  {
    v18 = *(v15 + 56);
    if (v18 >= 1)
    {
      v19 = 8;
      do
      {
        v20 = *(*(v15 + 64) + v19);
        if (*(v20 + 16))
        {
          v21 = *(a1 + 32);
          v26 = (*(v20 + 24) & 0xFFFFFFFFFFFFFFFELL);
          v22 = sub_276A9C458((v21 + 24), v26, &unk_276C16A91, &v26, &v25);
          sub_2769EC818((v22 + 7), v20);
        }

        v19 += 8;
        --v18;
      }

      while (v18);
    }
  }

  if (v10 && UnsafePointer != -1)
  {
    sub_276BD6048();
  }
}

void sub_276A9BA00()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276A9BDAC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_276A9BE7C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void *sub_276A9C458(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *sub_276A9C500(a1, &v7, a2);
  if (!v5)
  {
    sub_276A9C608();
  }

  return v5;
}

void *sub_276A9C500(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

char **sub_276A9C694(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_276A9C758(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_276A9C6E0(void *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_276A07B90(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    __dst[2] = *(v3 + 2);
    *__dst = v4;
  }

  sub_2769EA730((__dst + 3), 0);
  return __dst;
}

void sub_276A9C73C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_276A9C758(uint64_t a1)
{
  sub_2769EAC58(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_276A9C7A8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_276A9C7A8(a1, *a2);
    sub_276A9C7A8(a1, a2[1]);
    sub_276A9C758((a2 + 4));

    operator delete(a2);
  }
}

void sub_276A9D0C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 232);
  *(v2 + 232) = 0;

  objc_msgSend_minusSet_(*(*(a1 + 32) + 152), v4, *(*(a1 + 32) + 80));
  objc_msgSend_minusSet_(*(*(a1 + 32) + 152), v5, *(*(a1 + 32) + 184));
  v8 = *(a1 + 32);
  v9 = *(v8 + 216);
  if (v9)
  {
    v10 = (v9 >> 1) & 1;
  }

  else
  {
    v10 = 2;
  }

  v11 = objc_msgSend_makeComponentDataReferenceMap(*(v8 + 104), v6, v7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_276A9D1B8;
  v13[3] = &unk_27A6E6430;
  v12 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = v10;
  v13[4] = *(a1 + 32);
  v13[5] = v11;
  dispatch_async(v12, v13);
}

void sub_276A9D374(uint64_t a1, const char *a2)
{
  objc_msgSend_writeWithArchiverAccessLockForObjects_parentObject_completion_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  v3 = *(*(a1 + 32) + 136);

  dispatch_group_leave(v3);
}

uint64_t sub_276A9DAC4(unint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a1[1];
  if (v7 >= a1[2])
  {
    result = sub_276A9FC78(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    v8 = *a2;
    *a2 = 0uLL;
    *v7 = v8;
    *(v7 + 16) = *(a2 + 2);
    result = v7 + 24;
  }

  a1[1] = result;
  return result;
}

void sub_276A9DB18(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_msgSend_writeObject_archiver_parentObject_completion_(*(a1 + 32), v3, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  objc_autoreleasePoolPop(v2);
  v4 = *(*(a1 + 32) + 136);

  dispatch_group_leave(v4);
}

uint64_t sub_276A9DFEC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276A9E004(void *a1, void *a2)
{
  if ((objc_msgSend_containsItem_(*(a1[4] + 184), a2, a2) & 1) == 0 && (objc_msgSend_containsItem_(*(a1[4] + 80), v4, a2) & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = *(*(a1[5] + 8) + 40);
      if (!v7)
      {
        v8 = objc_alloc(MEMORY[0x277CBEB18]);
        v10 = objc_msgSend_initWithCapacity_(v8, v9, *(*(a1[6] + 8) + 24));
        v11 = *(a1[5] + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        v7 = *(*(a1[5] + 8) + 40);
      }

      objc_msgSend_addObject_(v7, v5, a2);
    }

    else
    {
      v13 = *(a1[4] + 24);
      if ((v13 | 2) == 3 || objc_msgSend_allowUnknownObject(a2, v5, v6))
      {
        v34 = 0;
        v14 = objc_msgSend_objectAndReturnError_(a2, v5, &v34);
        v15 = v34;
        v17 = v15;
        if (v14)
        {
          v18 = *(*(a1[5] + 8) + 40);
          if (!v18)
          {
            v19 = objc_alloc(MEMORY[0x277CBEB18]);
            v21 = objc_msgSend_initWithCapacity_(v19, v20, *(*(a1[6] + 8) + 24));
            v22 = *(a1[5] + 8);
            v23 = *(v22 + 40);
            *(v22 + 40) = v21;

            v18 = *(*(a1[5] + 8) + 40);
          }

          objc_msgSend_addObject_(v18, v16, v14);
        }

        else if (v15 && (v13 | 2) == 3)
        {
          *(a1[4] + 216) &= ~1u;
          if (*MEMORY[0x277D81408] != -1)
          {
            sub_276BD6070();
          }
        }

        else
        {
          objc_msgSend_addItem_(*(a1[4] + 184), v16, a2);
          v31 = objc_msgSend_tsp_identifier(a2, v29, v30);
          if (objc_msgSend_containsIndex_(*(a1[4] + 192), v32, v31))
          {
            objc_msgSend_addIndex_(*(a1[4] + 200), v33, v31);
          }
        }
      }

      else
      {
        objc_msgSend_addItem_(*(a1[4] + 184), v5, a2);
        v26 = objc_msgSend_tsp_identifier(a2, v24, v25);
        if (objc_msgSend_containsIndex_(*(a1[4] + 192), v27, v26))
        {
          objc_msgSend_addIndex_(*(a1[4] + 200), v28, v26);
        }
      }
    }
  }

  --*(*(a1[6] + 8) + 24);
}

void sub_276A9E274()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_276A9E83C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!*(*(a1 + 32) + 104))
  {
    v6 = objc_alloc_init(TSPMutableComponentDataReferenceMap);
    v7 = *(a1 + 32);
    v8 = *(v7 + 104);
    *(v7 + 104) = v6;
  }

  if (a3 <= 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPComponentWriter writeArchiver:forObjectIdentifier:]_block_invoke");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 533, 0, "Unexpected count %td for data identifier %llu.", a3, a2);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  objc_msgSend_incrementReferenceFromObjectIdentifier_toDataIdentifier_objectHasUUID_increment_(*(*(a1 + 32) + 104), a2, *(a1 + 40), a2, *(a1 + 48), a3);
  return 1;
}

void sub_276A9EA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276A9FAE0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

uint64_t sub_276A9FC78(unint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = 0xAAAAAAAAAAAAAAALL;
  v8 = *a1;
  v9 = a1[1];
  v10 = v9 - *a1;
  v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3) + 1;
  if (v11 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_2769BA860();
  }

  if (0x5555555555555556 * ((a1[2] - v8) >> 3) > v11)
  {
    v11 = 0x5555555555555556 * ((a1[2] - v8) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - v8) >> 3) < 0x555555555555555)
  {
    v7 = v11;
  }

  v23 = a1;
  if (v7)
  {
    sub_276A9FDB4(a1, v7);
  }

  v13 = 8 * (v10 >> 3);
  v20 = 0;
  v21 = v13;
  *(&v22 + 1) = 0;
  v14 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *v13 = v14;
  *(v13 + 16) = *(a2 + 2);
  *&v22 = v13 + 24;
  v15 = v13 - v10;
  sub_276A9FE0C(a1, v8, v9, v13 - v10, a5, a6);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  sub_276A9FF80(&v20);
  return v19;
}

void sub_276A9FDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_276A9FF80(va);
  _Unwind_Resume(a1);
}

void sub_276A9FDB4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2769ABE6C();
}

uint64_t sub_276A9FE0C(uint64_t a1, void **a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *v6 = 0;
      *(v6 + 1) = 0;
      *a4 = v7;
      *(a4 + 16) = *(v6 + 2);
      v6 = (v6 + 24);
      a4 += 24;
    }

    while (v6 != a3);
    v12 = a4;
  }

  v10 = 1;
  sub_276A9FEA4(a1, a2, a3);
  return sub_276A9FEEC(v9);
}

void sub_276A9FEA4(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 3;
    }

    while (v4 != a3);
  }
}

uint64_t sub_276A9FEEC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_276A9FF38(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_276A9FF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v7 = *(v6 - 24);
      v6 -= 24;
    }

    while (v6 != a5);
  }
}

uint64_t sub_276A9FF80(uint64_t a1)
{
  sub_276A9FFB8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_276A9FFB8(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }
}

void sub_276AA0014(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 24)
  {

    v5 = *(i - 24);
  }

  *(a1 + 8) = a2;
}

void sub_276AA0068(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_276AA0014(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_276AA04B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276AA0524(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276AA053C(uint64_t a1)
{
  v2 = [TSPFinalizeHandlerQueue alloc];
  v4 = objc_msgSend_initWithRootObjectIdentifier_(v2, v3, 0);
  v5 = [TSPDecoderReadCoordinator alloc];
  v7 = objc_msgSend_initWithDecoder_context_finalizeHandlerQueue_delegate_(v5, v6, *(a1 + 32), *(a1 + 40), v4, *(a1 + 48));
  objc_opt_class();
  v9 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 56), v8, @"TSPObjecSerialization_DeserializeAsPasteboard");
  v10 = TSUDynamicCast();
  *(*(a1 + 48) + 64) = objc_msgSend_BOOLValue(v10, v11, v12);

  v13 = *(a1 + 48);
  if (*(v13 + 64) == 1)
  {
    *(v13 + 65) = 1;
  }

  else
  {
    objc_opt_class();
    v15 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 56), v14, @"TSPObjecSerialization_ResetObjectUUIDs");
    v16 = TSUDynamicCast();
    *(*(a1 + 48) + 65) = objc_msgSend_BOOLValue(v16, v17, v18);
  }

  objc_opt_class();
  v20 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 56), v19, @"TSPObjecSerialization_DeserializeUnknownDataAsRemote");
  v21 = TSUDynamicCast();
  *(*(a1 + 48) + 66) = objc_msgSend_BOOLValue(v21, v22, v23);

  v24 = *(a1 + 40);
  v25 = *(*(a1 + 64) + 8);
  v26 = *(v25 + 40);
  v42 = 0;
  obj = v26;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_276AA0860;
  v40[3] = &unk_27A6E64D0;
  v27 = v7;
  v41 = v27;
  v29 = objc_msgSend_readWithReadCoordinator_finalizeHandlerQueue_rootObject_error_readCompletion_(v24, v28, v27, v4, &obj, &v42, v40);
  objc_storeStrong((v25 + 40), obj);
  v30 = v42;
  v31 = v42;
  v34 = v31;
  if ((v29 & 1) == 0)
  {
    if (objc_msgSend_code(v31, v32, v33) != 11 && objc_msgSend_code(v34, v35, v36) != 12 || (objc_msgSend_domain(v34, v35, v36), v37 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v37, v38, @"com.apple.iWork.TSPersistence"), v37, (isEqualToString & 1) == 0))
    {
      if (*MEMORY[0x277D81408] != -1)
      {
        sub_276BD60AC();
      }
    }

    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v30);
  }
}

void sub_276AA086C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AA0C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  MEMORY[0x277C9F670](v16, 0x10A1C402CD0F650, a3, a4, a5, a6, a7, a8);

  _Unwind_Resume(a1);
}

void sub_276AA0CD4(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v7 = objc_msgSend_longLongValue(a2, v5, v6);
  objc_opt_class();
  v8 = TSUDynamicCast();
  v11 = objc_msgSend_dataMetadataForDataIdentifier_(*(a1 + 32), v9, v7);
  if (v11)
  {
    objc_msgSend_setDataMetadata_(v8, v10, v11);
  }
}

void sub_276AA1218()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AA125C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

id sub_276AA1558(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = TSPMutableLargeNumberArray;
  return objc_msgSendSuper2(&v3, sel_saveToArchiver_, v1);
}

id sub_276AA16F4(id result, int a2)
{
  if (a2)
  {
    v2 = *(result + 4);
    v3.receiver = *(result + 5);
    v3.super_class = TSPMutableLargeNumberArray;
    return objc_msgSendSuper2(&v3, sel_loadFromUnarchiver_, v2);
  }

  return result;
}

void sub_276AA1BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSPArchiverManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_276AA1D7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276AA1D94(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_impl_archiverForObject_(*(a1 + 32), a2, *(a1 + 40));
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1 + 32) + 56);

  dispatch_resume(v6);
}

void sub_276AA209C(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_archiverForObject_archiveQueue_waitForArchiving_(*(a1 + 32), a2, *(a1 + 40), *(*(a1 + 32) + 64), 1);
  dispatch_resume(*(*(a1 + 32) + 56));
  v4 = *(*(a1 + 32) + 72);

  dispatch_resume(v4);
}

void sub_276AA21A8(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_needsArchiving(*(a1 + 32), a2, a3))
  {
    v5 = atomic_load((*(a1 + 40) + 96));
    if ((v5 & 4) == 0 || (WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8)), shouldDelayArchivingObject = objc_msgSend_archiverManager_shouldDelayArchivingObject_(WeakRetained, v7, *(a1 + 40), *(a1 + 32)), WeakRetained, (shouldDelayArchivingObject & 1) == 0))
    {
      v9 = objc_msgSend_archiverForObject_archiveQueue_waitForArchiving_(*(a1 + 40), v4, *(a1 + 32), *(*(a1 + 40) + 80), 0);
    }
  }
}

void sub_276AA2358(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_impl_explicitComponentRootObjectForObject_(*(a1 + 32), a2, *(a1 + 48));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1 + 32) + 56);

  dispatch_resume(v6);
}

void sub_276AA24B0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v2);
  v3 = *(*(a1 + 32) + 56);

  dispatch_resume(v3);
}

void sub_276AA2588(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AA25FC;
  block[3] = &unk_27A6E27F8;
  block[4] = v1;
  dispatch_sync(v2, block);
}

void sub_276AA25FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 88);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AA2670;
  block[3] = &unk_27A6E27F8;
  block[4] = v1;
  dispatch_sync(v2, block);
}

void sub_276AA2670(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_276AA2BF4(uint64_t a1)
{
  v4 = objc_autoreleasePoolPush();
  v5 = atomic_load((*(a1 + 32) + 96));
  if ((v5 & 1) != 0 || !objc_msgSend_beginArchive(*(a1 + 40), v2, v3))
  {
    dispatch_group_leave(*(a1 + 48));
    dispatch_group_leave(*(a1 + 64));
  }

  else
  {
    objc_msgSend_archive(*(a1 + 40), v6, v7);
    dispatch_group_leave(*(a1 + 48));
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_276AA2D6C;
    aBlock[3] = &unk_27A6E2870;
    v14 = *(a1 + 32);
    v8 = *(&v14 + 1);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    v16 = v14;
    v17 = v11;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (*(a1 + 72) == 1)
    {
      dispatch_async(*(*(a1 + 32) + 88), v12);
    }

    else
    {
      v12[2](v12);
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_276AA2D6C(uint64_t a1, const char *a2)
{
  objc_msgSend_addArchiver_(*(*(a1 + 32) + 104), a2, *(a1 + 40));
  if (*(a1 + 48) == *(*(a1 + 32) + 72))
  {
    v5 = objc_msgSend_aggregatedStrongReferences(*(a1 + 40), v3, v4);
  }

  else
  {
    v5 = 0;
  }

  objc_msgSend_serialize(*(a1 + 40), v3, v4);
  dispatch_group_leave(*(a1 + 56));
  if (objc_msgSend_count(v5, v6, v7))
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_276AA2E58;
    v9[3] = &unk_27A6E6570;
    v9[4] = *(a1 + 32);
    objc_msgSend_enumerateItemsUsingBlock_(v5, v8, v9);
  }
}

uint64_t sub_276AA2E58(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v6 = *(a1 + 32);

    return objc_msgSend_archiveObjectWithLowPriority_(v6, v5, a2);
  }

  return result;
}

id sub_276AA2F70(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v7 = objc_msgSend_streamReadChannelForEntry_(a1, v6, v4);
    v9 = objc_msgSend_dataFromReadChannel_(TSPReadChannelUtils, v8, v7);
    objc_msgSend_close(v7, v10, v11);

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_276AA300C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v15 = objc_msgSend_streamReadChannelForEntry_validateCRC_(a1, v12, v10, a5);
  if (!v15)
  {
    v18 = 0;
    v19 = 0;
    goto LABEL_5;
  }

  v16 = objc_alloc(MEMORY[0x277D811D0]);
  v31 = 0;
  v18 = objc_msgSend_initForStreamWritingURL_error_(v16, v17, v11, &v31);
  v19 = v31;
  if (!v18)
  {
LABEL_5:
    v22 = 0;
    goto LABEL_6;
  }

  v20 = objc_msgSend_size(v10, v13, v14);
  v30 = v19;
  v22 = objc_msgSend_copyDataFromReadChannel_decryptionInfo_size_toWriteChannel_encryptionInfo_encodedLength_error_(TSPFileManager, v21, v15, 0, v20, v18, 0, 0, &v30);
  v23 = v30;

  v19 = v23;
LABEL_6:
  objc_msgSend_close(v18, v13, v14);
  objc_msgSend_close(v15, v24, v25);
  if (a6 && (v22 & 1) == 0)
  {
    if (v19)
    {
      v27 = v19;
      *a6 = v19;
    }

    else
    {
      v28 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v26, 0);
      *a6 = v28;
    }
  }

  return v22;
}

void sub_276AA3A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v23 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276AA3A3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276AA3A54()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AA3A98()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AA3CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_276AA3FD8()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("TSPFileManager.IOCompletion", v2);
  v1 = qword_280A52A40;
  qword_280A52A40 = v0;
}

void sub_276AA4388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 184), 8);
  _Block_object_dispose((v31 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_276AA43D0(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10 = v8;
  if (!v7 || v8)
  {
    if (v8)
    {
      v16 = *(*(a1 + 56) + 8);
      if (*(v16 + 40))
      {
        goto LABEL_12;
      }

      v17 = v8;
      v18 = *(v16 + 40);
      *(v16 + 40) = v17;
      goto LABEL_11;
    }
  }

  else if (!*(*(*(a1 + 56) + 8) + 40))
  {
    dispatch_group_enter(*(a1 + 32));
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_276AA4568;
    v21[3] = &unk_27A6E6610;
    v24 = *(a1 + 64);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 72);
    v22 = v12;
    v14 = *(a1 + 56);
    v25 = v13;
    v26 = v14;
    v23 = *(a1 + 32);
    objc_msgSend_writeData_handler_(v11, v15, v7, v21);
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1 && !*(*(*(a1 + 56) + 8) + 40))
  {
    v19 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v9, *MEMORY[0x277CCA050], 3072, 0);
    v20 = *(*(a1 + 56) + 8);
    v18 = *(v20 + 40);
    *(v20 + 40) = v19;
LABEL_11:
  }

LABEL_12:
  if (a2)
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_276AA4568(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v14 = v7;
  if (a3)
  {
    *(*(*(a1 + 48) + 8) + 24) += a3;
    objc_msgSend_setCompletedUnitCount_(*(a1 + 32), v8, *(*(*(a1 + 48) + 8) + 24));
    v7 = v14;
  }

  if (v7)
  {
    v9 = *(*(a1 + 64) + 8);
    if (*(v9 + 40))
    {
      goto LABEL_10;
    }

    v10 = v7;
    v11 = *(v9 + 40);
    *(v9 + 40) = v10;
    goto LABEL_9;
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1 && !*(*(*(a1 + 64) + 8) + 40))
  {
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v8, *MEMORY[0x277CCA050], 3072, 0);
    v13 = *(*(a1 + 64) + 8);
    v11 = *(v13 + 40);
    *(v13 + 40) = v12;
LABEL_9:

    v7 = v14;
  }

LABEL_10:
  if (a2)
  {
    dispatch_group_leave(*(a1 + 40));
    v7 = v14;
  }
}

void sub_276AA4A14(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v8 = objc_msgSend_tsp_objectForIdentifier_(*(*(a1 + 32) + 8), v5, a2);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 24);
    v10 = objc_msgSend_tsp_identifier(v12, v6, v7);
    objc_msgSend_tsp_setObject_forIdentifier_(v9, v11, v8, v10);
  }
}

uint64_t sub_276AA4FB8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 112);
  if (!v8)
  {
    v10 = *(v7 + 108);
    goto LABEL_6;
  }

  v9 = *(v7 + 104);
  v10 = *v8;
  if (v9 >= *v8)
  {
    if (v10 != *(v7 + 108))
    {
LABEL_7:
      *v8 = v10 + 1;
      v11 = sub_2769F51F4(*(v7 + 96));
      v12 = *(v7 + 104);
      v13 = *(v7 + 112) + 8 * v12;
      *(v7 + 104) = v12 + 1;
      *(v13 + 8) = v11;
      goto LABEL_8;
    }

LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 96), v10 + 1);
    v8 = *(v7 + 112);
    v10 = *v8;
    goto LABEL_7;
  }

  *(v7 + 104) = v9 + 1;
  v11 = *&v8[2 * v9 + 2];
LABEL_8:
  *(v11 + 16) |= 1u;
  *(v11 + 48) = a2;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_276AA50F0;
  v15[3] = &unk_27A6E6680;
  v15[4] = v11;
  objc_msgSend_enumerateIdentifiersUsingBlock_(v6, v5, v15);

  return 1;
}

uint64_t sub_276AA50F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  if (a3 <= 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPComponentDataReferenceMap saveToMessage:]_block_invoke_2");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentDataReferenceMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 148, 0, "Count should never be negative.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = *(a1 + 32);
  v14 = *(v13 + 40);
  if (!v14)
  {
    v16 = *(v13 + 36);
LABEL_8:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v13 + 24), v16 + 1);
    v14 = *(v13 + 40);
    v16 = *v14;
    goto LABEL_9;
  }

  v15 = *(v13 + 32);
  v16 = *v14;
  if (v15 < *v14)
  {
    *(v13 + 32) = v15 + 1;
    v17 = *&v14[2 * v15 + 2];
    goto LABEL_10;
  }

  if (v16 == *(v13 + 36))
  {
    goto LABEL_8;
  }

LABEL_9:
  *v14 = v16 + 1;
  v17 = sub_2769F5180(*(v13 + 24));
  v18 = *(v13 + 32);
  v19 = *(v13 + 40) + 8 * v18;
  *(v13 + 32) = v18 + 1;
  *(v19 + 8) = v17;
LABEL_10:
  *(v17 + 16) |= 1u;
  *(v17 + 24) = a2;
  if (v3 >= 0x100000000)
  {
    v3 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPComponentDataReferenceMap saveToMessage:]_block_invoke_2");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentDataReferenceMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v24, v21, v23, 152, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
    LODWORD(v3) = -1;
  }

  else if (v3 < 0)
  {
    v3 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPComponentDataReferenceMap saveToMessage:]_block_invoke_2");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentDataReferenceMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v30, v27, v29, 152, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32);
    LODWORD(v3) = 0;
  }

  *(v17 + 16) |= 2u;
  *(v17 + 32) = v3;
  return 1;
}

uint64_t sub_276AA5AA8(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_incrementReferenceFromIdentifier_toIdentifier_increment_(*(a1[4] + 16), a2, a1[5], a2, -a3))
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Should have removed all references from old object identifier to data identifier.", "[TSPMutableComponentDataReferenceMap objectIdentifier:didResetToObjectIdentifier:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentDataReferenceMap.mm", 290);
    v10 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPMutableComponentDataReferenceMap objectIdentifier:didResetToObjectIdentifier:]_block_invoke");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentDataReferenceMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v12, v14, 290, 1, "Should have removed all references from old object identifier to data identifier.");
    goto LABEL_10;
  }

  if (objc_msgSend_incrementReferenceFromIdentifier_toIdentifier_increment_(*(a1[4] + 16), v6, a1[6], a2, a3) != a3)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unexpected references from new object identifier to data identifier.", "[TSPMutableComponentDataReferenceMap objectIdentifier:didResetToObjectIdentifier:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentDataReferenceMap.mm", 293);
    v16 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSPMutableComponentDataReferenceMap objectIdentifier:didResetToObjectIdentifier:]_block_invoke");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentDataReferenceMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v19, v12, v14, 293, 1, "Unexpected references from new object identifier to data identifier.");
    goto LABEL_10;
  }

  if (objc_msgSend_incrementReferenceFromIdentifier_toIdentifier_increment_(*(a1[4] + 8), v7, a2, a1[5], -a3))
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Should have removed all references from data identifier to old object identifier.", "[TSPMutableComponentDataReferenceMap objectIdentifier:didResetToObjectIdentifier:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentDataReferenceMap.mm", 296);
    v20 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSPMutableComponentDataReferenceMap objectIdentifier:didResetToObjectIdentifier:]_block_invoke");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentDataReferenceMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v23, v12, v14, 296, 1, "Should have removed all references from data identifier to old object identifier.");
    goto LABEL_10;
  }

  if (objc_msgSend_incrementReferenceFromIdentifier_toIdentifier_increment_(*(a1[4] + 8), v8, a2, a1[6], a3) != a3)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Unexpected references from data identifier to new object identifier.", "[TSPMutableComponentDataReferenceMap objectIdentifier:didResetToObjectIdentifier:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentDataReferenceMap.mm", 299);
    v24 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSPMutableComponentDataReferenceMap objectIdentifier:didResetToObjectIdentifier:]_block_invoke");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentDataReferenceMap.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v27, v12, v14, 299, 1, "Unexpected references from data identifier to new object identifier.");
LABEL_10:

    TSUCrashBreakpoint();
    abort();
  }

  return 1;
}

void *sub_276AA5EAC(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t sub_276AA6B7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276AA6B94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  WeakRetained = v3;
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 112));
  }

  v5 = WeakRetained;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), WeakRetained);
  if (!v3)
  {
  }
}

void sub_276AA6C14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v4 = objc_msgSend_objectForIdentifier_(WeakRetained, v3, *(*(a1 + 32) + 32));
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_storeWeak((*(a1 + 32) + 112), *(*(*(a1 + 40) + 8) + 40));
  v9 = *(a1 + 32);
  if (v9[13] != *(*(*(a1 + 40) + 8) + 40))
  {
    if (objc_msgSend_shouldKeepStrongObjectImpl(v9, v7, v8))
    {
      v10 = *(*(*(a1 + 40) + 8) + 40);
    }

    else
    {
      v10 = 0;
    }

    v11 = (*(a1 + 32) + 104);

    objc_storeStrong(v11, v10);
  }
}

void sub_276AA6D98(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 112), *(a1 + 40));
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(v5 + 104) != v4)
  {
    isTransientComponent = objc_msgSend_isTransientComponent(*(a1 + 32), v2, v3);
    if (objc_msgSend_isCachingEnabled(*(a1 + 32), v7, v8))
    {
      if (isTransientComponent)
      {
LABEL_4:
        v11 = 0;
LABEL_7:
        objc_storeStrong((*(a1 + 32) + 104), v11);
        v5 = *(a1 + 32);
        v4 = *(a1 + 40);
        goto LABEL_8;
      }
    }

    else if (isTransientComponent & 1 | ((objc_msgSend_shouldKeepStrongObjectImpl(*(a1 + 32), v9, v10) & 1) == 0))
    {
      goto LABEL_4;
    }

    v11 = *(a1 + 40);
    goto LABEL_7;
  }

LABEL_8:
  if (v4)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v19 = sub_276AA6F18;
    v20 = &unk_27A6E66F0;
    v21 = v4;
    v12 = v18;
    v13 = atomic_load((v5 + 144));
    do
    {
      v22 = v13;
      (v19)(v12, &v22);
      v14 = v13;
      atomic_compare_exchange_strong((v5 + 144), &v14, v22);
      v15 = v14 == v13;
      v13 = v14;
    }

    while (!v15);

    v5 = *(a1 + 32);
  }

  if (*(v5 + 104))
  {
    WeakRetained = objc_loadWeakRetained((v5 + 16));
    objc_msgSend_cacheComponent_isDiscardingContent_(WeakRetained, v17, *(a1 + 32), 0);
  }
}

void *sub_276AA6F18(uint64_t a1, char *a2, uint64_t a3)
{
  result = objc_msgSend_shouldDelayArchiving(*(a1 + 32), a2, a3);
  *a2 = *a2 & 0xFFFE | result;
  return result;
}

void sub_276AA73F4(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_276AA74A0;
  v6[3] = &unk_27A6E6718;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 48);
  objc_msgSend_performSynchronousDiscardContentIfPossibleUsingBlock_(v2, v5, v6);
}

void sub_276AA74A0(int8x16_t *a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_276AA7550;
  v4[3] = &unk_27A6E6718;
  v6 = a1[3].i8[0];
  v3 = a1[2];
  v1 = v3.i64[0];
  v5 = vextq_s8(v3, v3, 8uLL);
  objc_msgSend_continueCacheOperationUsingBlock_(v1, v2, v4);
}

void sub_276AA7550(uint64_t a1, const char *a2, uint64_t a3)
{
  shouldKeepStrongObjectImpl = objc_msgSend_shouldKeepStrongObjectImpl(*(a1 + 32), a2, a3);
  v7 = *(a1 + 32);
  v8 = v7[13];
  if (shouldKeepStrongObjectImpl)
  {
    if (v8)
    {
      if ((objc_msgSend_isTransientComponent(v7, v4, v5) & 1) == 0 && *(a1 + 48) == 1)
      {
        v11 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v9, v10);
        v14 = objc_msgSend_threadDictionary(v11, v12, v13);
        v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, @"TSPComponentIsDiscardingContentWithNSCacheLock");
        v19 = objc_msgSend_BOOLValue(v16, v17, v18);

        if ((v19 & 1) == 0)
        {
          v22 = *(a1 + 32);
          v21 = *(a1 + 40);

          objc_msgSend_cacheComponent_isDiscardingContent_(v21, v20, v22, 1);
        }
      }
    }
  }

  else
  {
    v7[13] = 0;

    if ((*(a1 + 48) & 1) == 0)
    {
      v25 = *(a1 + 32);
      v24 = *(a1 + 40);

      objc_msgSend_flushComponent_isDiscardingContent_(v24, v23, v25, 1);
    }
  }
}

void sub_276AA7830(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_p_locator(*(a1 + 32), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t sub_276AA79C4(uint64_t result)
{
  v1 = *(result + 40);
  v2 = atomic_load((*(result + 32) + 144));
  *(*(v1 + 8) + 24) = (v2 >> 4) & 3;
  return result;
}

uint64_t sub_276AA7D8C(uint64_t a1, const char *a2)
{
  v3 = atomic_load((*(a1 + 32) + 144));
  if ((v3 & 0x400) != 0)
  {
    result = 1;
  }

  else
  {
    result = objc_msgSend_hasPrefix_(*(*(a1 + 32) + 48), a2, @"ActivityStream");
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_276AA7E94(uint64_t result)
{
  v1 = *(result + 40);
  v2 = atomic_load((*(result + 32) + 144));
  *(*(v1 + 8) + 24) = (v2 & 0x800) != 0;
  return result;
}

uint64_t sub_276AA8060(uint64_t result)
{
  v1 = *(result + 40);
  v2 = atomic_load((*(result + 32) + 144));
  *(*(v1 + 8) + 24) = (v2 >> 12) & 3;
  return result;
}

uint64_t sub_276AA8128(uint64_t result)
{
  v1 = *(result + 40);
  v2 = atomic_load((*(result + 32) + 144));
  *(*(v1 + 8) + 24) = (v2 >> 7) & 7;
  return result;
}

uint64_t sub_276AA82B0(uint64_t result)
{
  v1 = *(result + 40);
  v2 = atomic_load((*(result + 32) + 144));
  *(*(v1 + 8) + 24) = (v2 & 2) != 0;
  return result;
}

unsigned __int8 *sub_276AA8428(unsigned __int8 *result, const char *a2)
{
  v2 = atomic_load((*(result + 4) + 144));
  v3 = result[48];
  if (((v2 >> 1) & 1) != v3)
  {
    return objc_msgSend_setModifiedImpl_forObject_(*(result + 4), a2, v3, *(result + 5));
  }

  return result;
}

void sub_276AA9064(uint64_t a1)
{
  v2 = (*(a1 + 32) + 144);
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v62 = sub_276AA9454;
  v63 = &unk_27A6E6760;
  v67 = *(a1 + 184);
  v68 = *(a1 + 188);
  v66 = *(a1 + 128);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v64 = v3;
  v65 = v4;
  v5 = v61;
  v6 = atomic_load(v2);
  do
  {
    v69 = v6;
    v62(v5, &v69);
    v7 = v6;
    atomic_compare_exchange_strong(v2, &v7, v69);
    v8 = v7 == v6;
    v6 = v7;
  }

  while (!v8);

  v11 = objc_msgSend_copy(*(a1 + 48), v9, v10);
  v12 = *(a1 + 32);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v16 = objc_msgSend_copy(*(a1 + 40), v14, v15);
  v17 = *(a1 + 32);
  v18 = *(v17 + 48);
  *(v17 + 48) = v16;

  v19 = *(*(a1 + 32) + 128);
  objc_storeStrong((*(a1 + 32) + 128), *(a1 + 56));
  if (*(a1 + 188))
  {
    v21 = 0;
  }

  else
  {
    if (!*(a1 + 64))
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSPComponent setPackageIdentifier:preferredLocator:locator:isStoredOutsideObjectArchive:compressionAlgorithm:rootObjectOrNil:archivedObjects:externalReferenceMap:persistedComponentDataReferenceMap:ambiguousReferences:documentReadVersion:documentWriteVersion:componentReadVersion:componentRequiredVersion:canBeDropped:isWasteful:requiredPackageIdentifier:featureInfos:componentObjectUUIDMap:objectReferenceMap:saveToken:encodedLength:lastModificationDate:wasCopied:wasModifiedDuringWrite:]_block_invoke");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponent.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 796, 0, "invalid nil value for '%{public}s'", "rootObjectOrNil");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
    }

    v29 = *(a1 + 128);
    *(*(a1 + 32) + 56) = *(a1 + 136);
    *(*(a1 + 32) + 64) = *(a1 + 144);
    v30 = *(a1 + 152);
    VersionForCompressionAlgorithm = objc_msgSend_componentReadVersionForCompressionAlgorithm_(TSPCompression, v20, v29);
    if (v30 <= VersionForCompressionAlgorithm)
    {
      v34 = VersionForCompressionAlgorithm;
    }

    else
    {
      v34 = v30;
    }

    *(*(a1 + 32) + 72) = v34;
    *(*(a1 + 32) + 80) = *(a1 + 160);
    v35 = objc_msgSend_copy(*(a1 + 72), v32, v33);
    v36 = *(a1 + 32);
    v37 = *(v36 + 88);
    *(v36 + 88) = v35;

    *(*(a1 + 32) + 96) = *(a1 + 168);
    *(*(a1 + 32) + 176) = *(a1 + 176);
    v40 = objc_msgSend_copy(*(a1 + 80), v38, v39);
    v41 = *(a1 + 32);
    v42 = *(v41 + 184);
    *(v41 + 184) = v40;

    v45 = objc_msgSend_copy(*(a1 + 88), v43, v44);
    v46 = *(a1 + 32);
    v47 = *(v46 + 168);
    *(v46 + 168) = v45;

    objc_storeStrong((*(a1 + 32) + 152), *(a1 + 96));
    objc_storeStrong((*(a1 + 32) + 160), *(a1 + 96));
    v50 = objc_msgSend_copy(*(a1 + 104), v48, v49);
    v51 = *(a1 + 32);
    v52 = *(v51 + 136);
    *(v51 + 136) = v50;

    v21 = *(*(a1 + 32) + 192);
    objc_storeStrong((*(a1 + 32) + 192), *(a1 + 112));
    objc_msgSend_setArchivedObjectsImpl_(*(a1 + 32), v53, *(a1 + 120));
  }

  v54 = atomic_load((*(a1 + 32) + 144));
  v55 = *(a1 + 190);
  if (((v54 >> 1) & 1) != v55)
  {
    objc_msgSend_setModifiedImpl_forObject_(*(a1 + 32), v20, v55, *(a1 + 64));
  }

  v56 = objc_msgSend_releaseQueue(TSPObjectContext, v20, v55);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = nullsub_11;
  block[3] = &unk_27A6E2898;
  v59 = v19;
  v60 = v21;
  v57 = v21;
  dispatch_async(v56, block);
}

uint64_t sub_276AA9454(uint64_t result, _WORD *a2)
{
  v2 = *a2 & 0xFFCF | (16 * (*(result + 56) & 3));
  *a2 = v2;
  v3 = v2 & 0xFFF7 | (8 * (*(result + 57) & 1));
  *a2 = v3;
  v4 = v3 & 0xF7FF | (*(result + 58) << 11);
  *a2 = v4;
  v5 = v4 & 0xCFFF | ((*(result + 59) & 3) << 12) | 4;
  *a2 = v5;
  if ((*(result + 60) & 1) == 0)
  {
    v6 = v5 & 0xFBFF | (*(result + 61) << 10);
    *a2 = v6;
    v7 = *(result + 48);
    if (v7 >= 6)
    {
      v14 = result;
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Component [%{public}@-%llu] has unexpected compression algorithm %ld.", "[TSPComponent setPackageIdentifier:preferredLocator:locator:isStoredOutsideObjectArchive:compressionAlgorithm:rootObjectOrNil:archivedObjects:externalReferenceMap:persistedComponentDataReferenceMap:ambiguousReferences:documentReadVersion:documentWriteVersion:componentReadVersion:componentRequiredVersion:canBeDropped:isWasteful:requiredPackageIdentifier:featureInfos:componentObjectUUIDMap:objectReferenceMap:saveToken:encodedLength:lastModificationDate:wasCopied:wasModifiedDuringWrite:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponent.mm", 776, *(result + 32), *(*(result + 40) + 32), v7);
      v8 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPComponent setPackageIdentifier:preferredLocator:locator:isStoredOutsideObjectArchive:compressionAlgorithm:rootObjectOrNil:archivedObjects:externalReferenceMap:persistedComponentDataReferenceMap:ambiguousReferences:documentReadVersion:documentWriteVersion:componentReadVersion:componentRequiredVersion:canBeDropped:isWasteful:requiredPackageIdentifier:featureInfos:componentObjectUUIDMap:objectReferenceMap:saveToken:encodedLength:lastModificationDate:wasCopied:wasModifiedDuringWrite:]_block_invoke_2");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponent.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v10, v12, 776, 1, "Component [%{public}@-%llu] has unexpected compression algorithm %ld.", v14[4], *(v14[5] + 32), v14[6]);

      TSUCrashBreakpoint();
      abort();
    }

    *a2 = ((v7 & 7) << 7) | v6 & 0xFC7F;
  }

  return result;
}

void sub_276AA9674(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (*(v4 + 184))
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPComponent setEncodedLength:lastModificationDate:]_block_invoke");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponent.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 836, 0, "expected nil value for '%{public}s'", "_lastModificationDate");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    v4 = *(a1 + 32);
  }

  *(v4 + 176) = *(a1 + 48);
  v12 = objc_msgSend_copy(*(a1 + 40), a2, a3);
  v13 = *(a1 + 32);
  v14 = *(v13 + 184);
  *(v13 + 184) = v12;
}

void sub_276AA9828(uint64_t a1, const char *a2, uint64_t a3)
{
  *(*(a1 + 32) + 56) = *(a1 + 48);
  *(*(a1 + 32) + 64) = *(a1 + 56);
  v4 = objc_msgSend_copy(*(a1 + 40), a2, a3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 168);
  *(v5 + 168) = v4;
}

void sub_276AA991C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(*(a1 + 40), a2, a3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 168);
  *(v5 + 168) = v4;
}

void sub_276AA9A84(uint64_t a1)
{
  if (UnsafePointer != -1)
  {
    sub_276BD6160();
  }

  v2 = (*(a1 + 32) + 144);
  v3 = atomic_load(v2);
  v4 = v3;
  do
  {
    atomic_compare_exchange_strong(v2, &v4, v3 & 0xFFFFFFC9);
    v5 = v4 == v3;
    v3 = v4;
  }

  while (!v5);
  v6 = *(a1 + 32);
  v7 = *(v6 + 104);
  *(v6 + 104) = 0;
}

void sub_276AA9B04()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

uint64_t sub_276AA9C18(uint64_t result)
{
  v1 = *(result + 40);
  v2 = atomic_load((*(result + 32) + 144));
  *(*(v1 + 8) + 24) = (v2 & 4) != 0;
  return result;
}

void *sub_276AA9D1C(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_needsArchivingImpl(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_276AA9E0C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 128);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_276AA9EB0;
  v3[3] = &unk_27A6E67B0;
  v4 = *(a1 + 40);
  objc_msgSend_enumerateExternalReferences_(v1, v2, v3);
}

uint64_t sub_276AA9FA8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 48) = v2;
  return result;
}

void *sub_276AA9FC0(void *a1, const char *a2)
{
  result = *(a1[4] + 128);
  if (result)
  {
    result = objc_msgSend_externalReferenceInfoForObjectIdentifier_(result, a2, a1[6]);
    v4 = *(a1[5] + 8);
    *(v4 + 48) = result;
    *(v4 + 56) = v5;
  }

  return result;
}

void sub_276AAA1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_276AAA22C(uint64_t a1, const char *a2, _BYTE *a3)
{
  if ((objc_msgSend_addExternalReferenceToObjectOrLazyReference_isWeak_externalReferenceMap_delegate_(*(a1 + 32), a2, a2, 1, *(*(*(a1 + 48) + 8) + 40), *(a1 + 40)) & 1) == 0)
  {
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;

    *a3 = 1;
  }
}

void sub_276AAA298(uint64_t a1, const char *a2, _BYTE *a3)
{
  if ((objc_msgSend_addExternalReferenceToObjectOrLazyReference_isWeak_externalReferenceMap_delegate_(*(a1 + 32), a2, a2, 0, *(*(*(a1 + 48) + 8) + 40), *(a1 + 40)) & 1) == 0)
  {
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;

    *a3 = 1;
  }
}

void sub_276AAAA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  _Block_object_dispose((v15 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_276AAAAB8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(*(*(a1 + 32) + 128), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_276AAAB04(uint64_t a1, const char *a2, uint64_t *a3, _BYTE *a4)
{
  v8 = *a3;
  v10 = objc_msgSend_objectForIdentifier_(*(a1 + 32), a2, a2);
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8 == 61;
  }

  if (!v11 && v8 != 62)
  {
    if (a3[1] & 1) != 0 || (objc_msgSend_wasComponentCopied_(*(a1 + 32), v9, v8))
    {
      goto LABEL_35;
    }

    goto LABEL_18;
  }

  v80 = 0;
  IsVersioned = objc_msgSend_componentIdentifierForObjectIdentifier_objectOrNil_objectUUIDOrNil_outComponentIsVersioned_(*(a1 + 32), v9, a2, v10, 0, &v80);
  v14 = *(*(a1 + 40) + 32);
  if (IsVersioned)
  {
    if (IsVersioned != v14)
    {
      *a3 = IsVersioned;
      *(a3 + 9) = v80;
      goto LABEL_35;
    }
  }

  else if (v14)
  {
    goto LABEL_17;
  }

  *a3 = 0;
LABEL_17:
  if (a3[1])
  {
    goto LABEL_35;
  }

LABEL_18:
  v15 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained(v15 + 14);
  v79 = WeakRetained;
  if (!WeakRetained)
  {
    v74 = objc_loadWeakRetained((*(a1 + 40) + 16));
    WeakRetained = objc_msgSend_objectForIdentifier_(v74, v18, *(*(a1 + 40) + 32));
  }

  v76 = a4;
  v77 = WeakRetained;
  if (v10)
  {
    v19 = objc_msgSend_explicitComponentRootObjectForObject_(*(a1 + 32), v16, v10);
  }

  else
  {
    v19 = 0;
  }

  v20 = v15;
  v21 = v10;
  v22 = WeakRetained;
  v75 = v19;
  v23 = v19;
  v78 = v20;
  v24 = objc_alloc(MEMORY[0x277CCAB68]);
  v27 = objc_msgSend_locator(v20, v25, v26);
  v30 = objc_msgSend_identifier(v20, v28, v29);
  v33 = objc_msgSend_context(v22, v31, v32);
  v35 = objc_msgSend_initWithFormat_(v24, v34, @"References from %@ component [%@-%llu-%p] (context: %p) to ", @"copied", v27, v30, v22, v33);

  if (v10)
  {
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v41 = objc_msgSend_context(v21, v39, v40);
    objc_msgSend_appendFormat_(v35, v42, @"object [%@-%llu-%p] (context: %p)", v38, a2, v21, v41);

    v45 = objc_msgSend_tsp_component(v21, v43, v44);
    v48 = v45;
    if (v45)
    {
      v49 = objc_msgSend_locator(v45, v46, v47);
      v52 = objc_msgSend_identifier(v48, v50, v51);
      objc_msgSend_appendFormat_(v35, v53, @" (previously owned by component [%@-%llu])", v49, v52);
    }

    if (v23)
    {
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      v58 = objc_msgSend_tsp_identifier(v23, v56, v57);
      v61 = objc_msgSend_context(v23, v59, v60);
      objc_msgSend_appendFormat_(v35, v62, @", explicitly owned by [%@-%llu-%p] (context: %p),", v55, v58, v23, v61);
    }
  }

  else
  {
    objc_msgSend_appendFormat_(v35, v36, @"object %llu", a2);
  }

  objc_msgSend_appendString_(v35, v63, @" will be nil as it is not strongly referenced in the document.");
  v64 = MEMORY[0x277D81150];
  v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "void TSPLogUnexpectedStrongReferenceToWeaklyReferencedObject(TSPComponent *__strong, BOOL, TSPObject *__strong, TSPObjectIdentifier, TSPObject *__strong, TSPObject *__strong)");
  v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponent.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v69, v66, v68, 995, 0, "%{public}@", v35);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71);
  if (v10)
  {
  }

  if (!v79)
  {
  }

  v72 = *(*(a1 + 48) + 8);
  v73 = *(v72 + 40);
  *(v72 + 40) = 0;

  *v76 = 1;
LABEL_35:
}

void sub_276AAB720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSPComponentManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *sub_276AABCCC(uint64_t a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  result = objc_msgSend_message(*(a1 + 32), a2, a3);
  v6 = result;
  if (*(a1 + 56) == 1)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = *(*(a1 + 40) + 24);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v24, v28, 16);
    if (v11)
    {
      v12 = *v25;
      do
      {
        v13 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v7);
          }

          objc_msgSend_willDiscardComponent(*(*(&v24 + 1) + 8 * v13++), v9, v10, v24);
        }

        while (v11 != v13);
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v24, v28, 16);
      }

      while (v11);
    }

    objc_msgSend_removeAllObjects(*(*(a1 + 40) + 24), v14, v15);
    objc_msgSend_removeAllObjects(*(*(a1 + 40) + 32), v16, v17);
    result = objc_msgSend_removeAllObjects(*(*(a1 + 40) + 40), v18, v19);
  }

  v20 = *(v6 + 8);
  if (v20 >= 1)
  {
    v21 = 8;
    do
    {
      result = objc_msgSend_loadComponent_package_(*(a1 + 40), v5, *(v6[5] + v21), *(a1 + 48), v24);
      v21 += 8;
      --v20;
    }

    while (v20);
  }

  v22 = *(v6 + 38);
  if (v22 >= 1)
  {
    v23 = 8;
    do
    {
      result = objc_msgSend_loadComponent_package_(*(a1 + 40), v5, *(v6[20] + v23), *(a1 + 48), v24);
      v23 += 8;
      --v22;
    }

    while (v22);
  }

  return result;
}

uint64_t sub_276AAC09C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276AAC0B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_documentComponentImpl(*(a1 + 32), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_276AAC210(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_supportComponentImpl(*(a1 + 32), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void *sub_276AAC4D0(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_count(*(*(a1 + 32) + 24), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_276AAC5B0(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v8, v12, 16);
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 40) + 16))();
      }

      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v7, &v8, v12, 16);
    }

    while (v4);
  }
}

void sub_276AAC888(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 32);
  v5 = objc_msgSend_tsp_identifier(*(a1 + 40), a2, a3);
  v7 = objc_msgSend_tsp_objectForIdentifier_(v4, v6, v5);
  v10 = v7;
  if (!v7 || (objc_msgSend_rootObject(v7, v8, v9), v11 = objc_claimAutoreleasedReturnValue(), v12 = *(a1 + 40), v11, v11 != v12))
  {
    v13 = objc_msgSend_tsp_identifier(*(a1 + 40), v8, v9);
    switch(v13)
    {
      case 2:
        v16 = objc_msgSend_packageMetadataComponent(*(a1 + 32), v14, v15);

        v10 = v16;
        objc_msgSend_setRootObject_(v16, v17, *(a1 + 40));
        break;
      case 1:
        v19 = objc_msgSend_documentComponentImpl(*(a1 + 32), v14, v15);

        v10 = v19;
        objc_msgSend_setRootObject_(v19, v20, *(a1 + 40));
        break;
      case 3:
        v21 = objc_msgSend_supportComponentImpl(*(a1 + 32), v14, v15);

        v10 = v21;
        objc_msgSend_setRootObject_(v21, v22, *(a1 + 40));
        break;
      default:
        v23 = [TSPComponent alloc];
        v25 = objc_msgSend_initWithDelegate_rootObject_(v23, v24, *(a1 + 32), *(a1 + 40));

        v28 = objc_msgSend_identifier(v25, v26, v27);
        objc_msgSend_addObject_(*(*(a1 + 32) + 24), v29, v25);
        objc_msgSend_tsp_setObject_forIdentifier_(*(*(a1 + 32) + 32), v30, v25, v28);
        objc_msgSend_tsp_cacheComponent_(*(*(a1 + 32) + 40), v31, v25);
        v10 = v25;
        break;
    }

    objc_msgSend_setModified_forObject_(v10, v18, 1, *(a1 + 40));
    if (!v10)
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSPComponentManager retrieveOrCreateComponentForRootObject:queue:completion:]_block_invoke_2");
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentManager.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 296, 0, "Root object component could not be retrieved.");

      v10 = 0;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
    }
  }

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_276AACB4C;
  v43[3] = &unk_27A6E2C78;
  v40 = *(a1 + 48);
  v41 = *(a1 + 56);
  v44 = v10;
  v45 = v41;
  v42 = v10;
  dispatch_async(v40, v43);
}

void sub_276AACC28(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_tsp_objectForIdentifier_(*(*(a1 + 32) + 32), a2, *(a1 + 56));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276AACCE8;
  v7[3] = &unk_27A6E2C78;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_276AACDF0(void *a1, const char *a2)
{
  v3 = objc_msgSend_tsp_objectForIdentifier_(*(a1[4] + 32), a2, a1[6]);
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_276AAD104()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_276AAD258(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_componentForRootObjectOfLazyReferenceImpl_(*(a1 + 32), a2, *(a1 + 40));
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_276AAD38C(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_componentForRootObjectOfLazyReferenceImpl_(*(a1 + 32), a2, *(a1 + 40));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276AAD448;
  v7[3] = &unk_27A6E2C78;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_276AAD610(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = *(a1 + 32);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v11, v15, 16);
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = objc_msgSend_rootObject(v8, v3, v4, v11);
        objc_msgSend_setModified_forObject_isDocumentUpgrade_(v8, v10, 1, v9, 1);
      }

      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v3, &v11, v15, 16);
    }

    while (v5);
  }
}

void sub_276AAD7C8(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v12, v16, 16);
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_msgSend_packageIdentifier(v9, v4, v5, v12) == *(a1 + 40))
        {
          v10 = objc_msgSend_rootObject(v9, v4, v5);
          objc_msgSend_setModified_forObject_isDocumentUpgrade_(v9, v11, 1, v10, 1);
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v12, v16, 16);
    }

    while (v6);
  }
}

void sub_276AADB34(uint64_t a1)
{
  v71 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x277CCAA50]);
  v49 = objc_msgSend_initWithOptions_capacity_(v2, v3, 512, 0);
  v4 = objc_alloc(MEMORY[0x277CCAA50]);
  v48 = objc_msgSend_initWithOptions_capacity_(v4, v5, 512, 0);
  v8 = objc_msgSend_newTspWeakObjectsMapTable(MEMORY[0x277CCAB00], v6, v7);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_276AADFE0;
  aBlock[3] = &unk_27A6E6878;
  v9 = v49;
  v65 = v9;
  v10 = v8;
  v11 = *(a1 + 32);
  v51 = v10;
  v66 = v10;
  v67 = v11;
  v12 = v48;
  v68 = v12;
  v52 = _Block_copy(aBlock);
  v13 = *(a1 + 32);
  v16 = objc_msgSend_documentComponentImpl(v13, v14, v15);
  objc_msgSend_traverseComponentTreeFromRoot_accessor_(v13, v17, v16, v52);

  v18 = *(a1 + 32);
  v21 = objc_msgSend_supportComponentImpl(v18, v19, v20);
  objc_msgSend_traverseComponentTreeFromRoot_accessor_(v18, v22, v21, v52);

  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = sub_276AAE080;
  v61[3] = &unk_27A6E68A0;
  v61[4] = *(a1 + 32);
  v23 = v9;
  v62 = v23;
  v24 = v51;
  v63 = v24;
  v25 = _Block_copy(v61);
  v25[2](v25, 71);
  v25[2](v25, 72);
  objc_msgSend_minusHashTable_(*(*(a1 + 32) + 24), v26, v23);
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v27 = *(*(a1 + 32) + 24);
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v57, v70, 16);
  if (v31)
  {
    v32 = *v58;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v58 != v32)
        {
          objc_enumerationMutation(v27);
        }

        v34 = *(*(&v57 + 1) + 8 * i);
        objc_msgSend_willDiscardComponent(v34, v29, v30);
        objc_msgSend_tsp_flushComponent_(*(*(a1 + 32) + 40), v35, v34);
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v57, v70, 16);
    }

    while (v31);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v36 = v12;
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v53, v69, 16);
  if (v39)
  {
    v40 = *v54;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v54 != v40)
        {
          objc_enumerationMutation(v36);
        }

        objc_msgSend_tsp_cacheComponent_(*(*(a1 + 32) + 40), v38, *(*(&v53 + 1) + 8 * j));
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v38, &v53, v69, 16);
    }

    while (v39);
  }

  v43 = *(a1 + 32);
  v42 = a1 + 32;
  v44 = *(v43 + 24);
  *(v43 + 24) = v23;
  v45 = v23;

  v46 = *(*v42 + 32);
  *(*v42 + 32) = v24;
  v47 = v24;

  objc_autoreleasePoolPop(context);
}

void sub_276AADFE0(uint64_t a1, void *a2)
{
  v11 = a2;
  objc_msgSend_addObject_(*(a1 + 32), v3, v11);
  v4 = *(a1 + 40);
  v7 = objc_msgSend_identifier(v11, v5, v6);
  objc_msgSend_tsp_setObject_forIdentifier_(v4, v8, v11, v7);
  if ((objc_msgSend_containsObject_(*(*(a1 + 48) + 24), v9, v11) & 1) == 0)
  {
    objc_msgSend_addObject_(*(a1 + 56), v10, v11);
  }
}

void sub_276AAE080(uint64_t a1, const char *a2)
{
  v6 = objc_msgSend_tsp_objectForIdentifier_(*(*(a1 + 32) + 32), a2, a2);
  if (v6)
  {
    objc_msgSend_addObject_(*(a1 + 40), v4, v6);
    objc_msgSend_tsp_setObject_forIdentifier_(*(a1 + 48), v5, v6, a2);
  }
}

void sub_276AAE2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  sub_276AAF60C(va1);

  _Unwind_Resume(a1);
}

void sub_276AAE358(uint64_t a1, const char *a2, uint64_t *a3, _BYTE *a4)
{
  if ((a3[1] & 1) == 0)
  {
    v7 = objc_msgSend_tsp_objectForIdentifier_(*(*(a1 + 32) + 32), a2, *a3);
    v25 = v7;
    if (v7)
    {
      v9 = v7;
      if ((objc_msgSend_containsObject_(*(a1 + 40), v8, v7) & 1) == 0)
      {
        (*(*(a1 + 48) + 16))();
        *a4 = *(*(*(a1 + 56) + 8) + 24);
        objc_msgSend_addObject_(*(a1 + 40), v10, v9);
        sub_276AAF6B8(*(a1 + 64), &v25);
        v9 = v25;
      }
    }

    else
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPComponentManager traverseComponentTreeFromRoot:accessor:]_block_invoke");
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentManager.mm");
      v15 = *a3;
      v18 = objc_msgSend_locator(*(a1 + 72), v16, v17);
      v21 = objc_msgSend_identifier(*(a1 + 72), v19, v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v12, v14, 528, 0, "Unknown component %llu referenced from component [%{public}@-%llu]", v15, v18, v21);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
      v9 = 0;
    }
  }
}

void sub_276AAE948(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = *(*(a1 + 32) + 24);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v7, v11, 16);
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v1);
        }

        objc_msgSend_discardContentIfPossibleFromNSCache_(*(*(&v7 + 1) + 8 * v6++), v3, 0, v7);
      }

      while (v4 != v6);
      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v3, &v7, v11, 16);
    }

    while (v4);
  }
}

void sub_276AAEE04(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v37 = v2;
    v6 = a1[4];
    v39 = 0;
    v40[0] = 0;
    isWeakReference_rootObject_allObjects_error = objc_msgSend_readComponent_isWeakReference_rootObject_allObjects_error_(WeakRetained, v4, v6, 1, v40, 0, &v39);
    v8 = v40[0];
    v10 = v39;
    v38 = v8;
    if (isWeakReference_rootObject_allObjects_error)
    {
      objc_msgSend_setRootObject_(a1[4], v9, v8);
    }

    else
    {
      v11 = MEMORY[0x277D81150];
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPComponentManager didModifyFlushedComponent:forObject:]_block_invoke");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPComponentManager.mm");
      v34 = objc_msgSend_locator(a1[4], v13, v14);
      v32 = objc_msgSend_identifier(a1[4], v15, v16);
      v17 = objc_opt_class();
      v33 = NSStringFromClass(v17);
      v20 = objc_msgSend_tsp_identifier(a1[5], v18, v19);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v25 = objc_msgSend_domain(v10, v23, v24);
      v28 = objc_msgSend_code(v10, v26, v27);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v29, v36, v35, 674, 0, "Attempt to modify flushed component [%{public}@-%llu] object [%{public}@-%llu] failed because component could not be loaded. Error: (errorClass=%{public}@, domain=%{public}@, code=%zd (%@)). Object description: %@.", v34, v32, v33, v20, v22, v25, v28, v10, a1[5]);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
    }

    v2 = v37;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_276AAF124(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v28 = a4;
  v7 = a5;
  v10 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v8, v9);
  v13 = objc_msgSend_threadDictionary(v10, v11, v12);

  v14 = objc_alloc(MEMORY[0x277CCABB0]);
  v17 = objc_msgSend_identifier(v28, v15, v16);
  v19 = objc_msgSend_initWithLongLong_(v14, v18, v17);
  v21 = objc_msgSend_objectForKeyedSubscript_(v13, v20, @"TSPCacheCurrentOperation");

  if (v21)
  {
    v7[2](v7, 0, v19);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v13, v22, v28, @"TSPCacheCurrentComponent");
    v24 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v23, a3);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v25, v24, @"TSPCacheCurrentOperation");

    v7[2](v7, 1, v19);
    objc_msgSend_removeObjectForKey_(v13, v26, @"TSPCacheCurrentComponent");
    objc_msgSend_removeObjectForKey_(v13, v27, @"TSPCacheCurrentOperation");
  }
}

void sub_276AAF290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

id sub_276AAF2DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, a3);
  v6 = objc_msgSend_threadDictionary(v3, v4, v5);
  v8 = objc_msgSend_objectForKey_(v6, v7, @"TSPCacheCurrentComponent");

  return v8;
}

uint64_t sub_276AAF36C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, a3);
  v6 = objc_msgSend_threadDictionary(v3, v4, v5);
  v8 = objc_msgSend_objectForKey_(v6, v7, @"TSPCacheCurrentOperation");
  v11 = objc_msgSend_intValue(v8, v9, v10);

  return v11;
}

void sub_276AAF3DC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_276AAF408(void *a1, const char *a2, uint64_t a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_276AAF480;
  v4[3] = &unk_27A6E6918;
  v4[4] = a1;
  return objc_msgSend_tsp_performOperation_forComponent_usingBlock_(a1, a2, 2, a3, v4);
}

void sub_276AAF480(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    objc_msgSend_removeObjectForKey_(*(a1 + 32), v5, v6);
  }
}

void sub_276AAF4EC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276AAF5A0;
  v7[3] = &unk_27A6E6940;
  v7[4] = a1;
  v8 = v4;
  v5 = v4;
  objc_msgSend_tsp_performOperation_forComponent_usingBlock_(a1, v6, 1, v5, v7);
}

void sub_276AAF5A0(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    objc_msgSend_setObject_forKey_(*(a1 + 32), v5, *(a1 + 40), v6);
  }
}

uint64_t sub_276AAF60C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_276A9988C(a1);
}

void sub_276AAF6B8(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    sub_276AAF744(result);
    v5 = result[1];
    v7 = result[5] + result[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++result[5];
}

void sub_276AAF744(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_2769BB09C(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_276AAF918(a1, &v9);
}

void sub_276AAF8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_276AAF918(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_2769BB09C(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_276AAFA20(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_2769BB09C(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_276AAFB2C(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_2769BB09C(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_276AAFC34(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_2769BB09C(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_276AAFF70(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

char *sub_276AB0418(void *a1, char *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 4) + 1;
    if (v11 >> 60)
    {
      sub_2769BA860();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v29 = a1;
    if (v14)
    {
      sub_276AB4FEC(a1, v14);
    }

    v26 = 0;
    v27 = 16 * v15;
    v28 = (16 * v15);
    sub_276AB4EE4(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 16;
  }

  else
  {
    v8 = __src + 16;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = (v6 + 16);
      *v6 = *(v6 - 1);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 16, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_276AB05B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276AB0630(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_2769BA860();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_276AB4FEC(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_276AB114C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);

  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 152), 8);
  _Block_object_dispose((v31 - 120), 8);

  _Unwind_Resume(a1);
}

__n128 sub_276AB11C8(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void *sub_276AB11D8(void *result, const char *a2, _BYTE *a3)
{
  if (*(result + 11) <= a2)
  {
    goto LABEL_6;
  }

  v5 = result;
  if (*(*(*(result + 6) + 8) + 24) == 1)
  {
    v6 = *(*(*(result + 8) + 8) + 24);
    *(*(*(result + 7) + 8) + 24) = objc_msgSend_segmentIndexForElementIndex_firstSegmentIndex_lastSegmentIndex_segmentIndexGuess_(*(result + 4), a2, a2, v6, *(result + 12), v6);
    v8 = *(*(*(v5 + 7) + 8) + 24);
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPAbstractMutableLargeArray removeObjectsAtIndexes:]_block_invoke");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 469, 0, "Unable to find segment for index: %tu in this array with size: %tu", a2, *(v5 + 11));
LABEL_5:

      result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
LABEL_6:
      *a3 = 1;
      return result;
    }

    v26 = objc_msgSend_rangeOfSegmentIndex_(*(v5 + 4), v7, v8);
    v27 = *(*(v5 + 9) + 8);
    *(v27 + 48) = v26;
    *(v27 + 56) = a2;
    *(*(*(v5 + 10) + 8) + 24) = *(*(*(v5 + 7) + 8) + 24);
    *(*(*(v5 + 8) + 8) + 24) = *(*(*(v5 + 7) + 8) + 24) + 1;
    *(*(*(v5 + 6) + 8) + 24) = 0;
  }

  else
  {
    v16 = *(*(*(result + 7) + 8) + 24);
    if (v16 != 0x7FFFFFFFFFFFFFFFLL && *(*(*(result + 9) + 8) + 56) + *(*(*(result + 9) + 8) + 48) <= a2)
    {
      objc_msgSend_p_removeObjectsFromSegmentAtSegmentIndex_atIndexes_(*(result + 4), a2, v16, *(result + 5));
      objc_msgSend_removeAllIndexes(*(v5 + 5), v17, v18);
      v19 = *(*(*(v5 + 8) + 8) + 24);
      *(*(*(v5 + 7) + 8) + 24) = objc_msgSend_segmentIndexForElementIndex_firstSegmentIndex_lastSegmentIndex_segmentIndexGuess_(*(v5 + 4), v20, a2, v19, *(v5 + 12), v19);
      v22 = *(*(*(v5 + 7) + 8) + 24);
      if (v22 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = MEMORY[0x277D81150];
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSPAbstractMutableLargeArray removeObjectsAtIndexes:]_block_invoke");
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPAbstractMutableLargeArray.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v25, v10, v12, 488, 0, "Unable to find segment for index: %tu in this array with size: %tu", a2, *(v5 + 11));
        goto LABEL_5;
      }

      v30 = objc_msgSend_rangeOfSegmentIndex_(*(v5 + 4), v21, v22);
      v31 = *(*(v5 + 9) + 8);
      *(v31 + 48) = v30;
      *(v31 + 56) = a2;
      *(*(*(v5 + 8) + 8) + 24) = *(*(*(v5 + 7) + 8) + 24) + 1;
    }
  }

  v28 = *(v5 + 5);
  v29 = &a2[-*(*(*(v5 + 9) + 8) + 48)];

  return objc_msgSend_addIndex_(v28, a2, v29);
}

void sub_276AB2E74(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    sub_276AB5034(result, a2 - v2);
  }
}

void sub_276AB312C()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_276AB4980(uint64_t a1, void *a2)
{
  v10 = a2;
  for (i = 0; i < objc_msgSend_count(v10, v3, v4); ++i)
  {
    v7 = *(*(a1 + 32) + 96);
    v8 = objc_msgSend_referenceAtIndex_(v10, v6, i);
    objc_msgSend_addObject_(v7, v9, v8);
  }
}

__n128 sub_276AB4EE4(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      sub_276AB4FEC(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = v5[v7].n128_u64;
    a1[2] = v9->n128_u64 + v10;
  }

  result = *a2;
  *v4 = *a2;
  a1[2] += 16;
  return result;
}

void sub_276AB4FEC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_2769ABE6C();
}

void sub_276AB5034(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_2769BA860();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_276AB4FEC(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_276AB5258(_Unwind_Exception *a1)
{
  v4 = sub_2769BB184(v2);
  MEMORY[0x277C9F670](v4, 0x10A0C408EF24B1CLL);

  _Unwind_Resume(a1);
}

uint64_t sub_276AB59D8(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_2769AC06C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_276AB5A50(a1, i + 2, (i + 2));
  }

  return a1;
}

void *sub_276AB5A50(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void *sub_276AB5C84(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_276AB6220(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_276AB6398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void *sub_276AB6444(void *a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_preferredBlockSize(a1, a2, a3);
  if (result == -1)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[SFUCryptoKey(TSPCryptoInfo) addBlockInfo:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 140, 0, "We should not be adding a block info when the preferred block size is SIZE_T_MAX.");

    v12 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v12, v10, v11);
  }

  return result;
}

uint64_t sub_276AB6518(uint64_t a1, const char *a2)
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[SFUCryptoKey(TSPCryptoInfo) incrementDecodedLengthBy:]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoInfo.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 144, 0, "This is not a mutable crypto info.");

  v9 = MEMORY[0x277D81150];

  return objc_msgSend_logBacktraceThrottled(v9, v7, v8);
}

uint64_t sub_276AB65D0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v8 = v4;
  if (v5 == v8)
  {
    v32 = 0;
  }

  else
  {
    v9 = objc_msgSend_cryptoKey(v5, v6, v7);
    v12 = objc_msgSend_cryptoKey(v8, v10, v11);
    if (SFUEqualCryptoKeys() && (v15 = objc_msgSend_preferredBlockSize(v5, v13, v14), v15 == objc_msgSend_preferredBlockSize(v8, v16, v17)))
    {
      v20 = objc_msgSend_blockInfos(v5, v18, v19);
      v25 = objc_msgSend_blockInfos(v8, v21, v22);
      if (v20 == v25)
      {
        v32 = 0;
      }

      else
      {
        v26 = objc_msgSend_blockInfos(v5, v23, v24);
        v29 = objc_msgSend_blockInfos(v8, v27, v28);
        isEqual = objc_msgSend_isEqual_(v26, v30, v29);

        v32 = isEqual ^ 1u;
      }
    }

    else
    {
      v32 = 1;
    }
  }

  return v32;
}

void sub_276AB6724(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

BOOL sub_276AB678C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v8 = a2;
  if (v5 | v8)
  {
    v10 = objc_msgSend_cryptoKey(v5, v6, v7);
    if (SFUEqualCryptoKeys())
    {
      v9 = objc_msgSend_preferredBlockSize(v5, v11, v12) != a3;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

TSPMutableCryptoInfoInternal *sub_276AB683C(void *a1, uint64_t a2)
{
  v3 = a1;
  v5 = v3;
  if (!v3 || a2 == -1)
  {
    v15 = v3;
  }

  else
  {
    if (!a2)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "id<TSPMutableCryptoInfo>  _Nonnull TSPMutableCryptoInfoForTranscodingToKey(SFUCryptoKey * _Nonnull __strong, size_t)");
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoInfo.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 178, 0, "Preferred block size cannot be zero.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    }

    v13 = [TSPMutableCryptoInfoInternal alloc];
    v15 = objc_msgSend_initWithCryptoKey_preferredBlockSize_blockInfos_decodedLength_(v13, v14, v5, a2, 0, 0);
  }

  v16 = v15;

  return v16;
}

TSPCryptoInfoInternal *sub_276AB695C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  v11 = v8;
  if (!v7 || a2 == -1)
  {
    if (objc_msgSend_count(v8, v9, v10))
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "id<TSPCryptoInfo>  _Nonnull TSPCryptoInfoCreate(SFUCryptoKey * _Nonnull __strong, size_t, NSArray * _Nullable __strong, size_t)");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoInfo.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 184, 0, "Block infos shouldn't be set when preferred block size is SIZE_T_MAX.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    }

    v21 = v7;
  }

  else
  {
    if (!a2)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "id<TSPCryptoInfo>  _Nonnull TSPCryptoInfoCreate(SFUCryptoKey * _Nonnull __strong, size_t, NSArray * _Nullable __strong, size_t)");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoInfo.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 188, 0, "Preferred block size cannot be zero.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }

    v19 = [TSPCryptoInfoInternal alloc];
    v21 = objc_msgSend_initWithCryptoKey_preferredBlockSize_blockInfos_decodedLength_(v19, v20, v7, a2, v11, a4);
  }

  v30 = v21;

  return v30;
}

void sub_276AB6B2C(void *a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a1;
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "void TSPCryptoInfoSaveToMessage(id<TSPCryptoInfo>  _Nonnull __strong, TSP::EncryptionInfo &)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCryptoInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 193, 0, "invalid nil value for '%{public}s'", "info");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  v13 = objc_msgSend_decodedLength(v5, v3, v4);
  if (v13)
  {
    *(a2 + 16) |= 1u;
    *(a2 + 48) = v13;
  }

  v16 = objc_msgSend_preferredBlockSize(v5, v14, v15);
  if (v16 != -1)
  {
    *(a2 + 16) |= 2u;
    *(a2 + 56) = v16;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v19 = objc_msgSend_blockInfos(v5, v17, v18);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v37, v41, 16);
  if (v23)
  {
    v24 = *v38;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v38 != v24)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v37 + 1) + 8 * i);
        v27 = *(a2 + 40);
        if (!v27)
        {
          v29 = *(a2 + 36);
LABEL_17:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24), v29 + 1);
          v27 = *(a2 + 40);
          v29 = *v27;
          goto LABEL_18;
        }

        v28 = *(a2 + 32);
        v29 = *v27;
        if (v28 < *v27)
        {
          *(a2 + 32) = v28 + 1;
          v30 = *&v27[2 * v28 + 2];
          goto LABEL_19;
        }

        if (v29 == *(a2 + 36))
        {
          goto LABEL_17;
        }

LABEL_18:
        *v27 = v29 + 1;
        v30 = sub_2769F58B8(*(a2 + 24));
        v31 = *(a2 + 32);
        v32 = *(a2 + 40) + 8 * v31;
        *(a2 + 32) = v31 + 1;
        *(v32 + 8) = v30;
LABEL_19:
        v33 = objc_msgSend_encodedLength(v26, v21, v22);
        *(v30 + 16) |= 1u;
        *(v30 + 24) = v33;
        v36 = objc_msgSend_decodedLength(v26, v34, v35);
        if (v33 != v36)
        {
          *(v30 + 16) |= 2u;
          *(v30 + 32) = v36;
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v37, v41, 16);
    }

    while (v23);
  }
}

id sub_276AB6E08(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *(a2 + 48);
    }

    else
    {
      v5 = 0;
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 56);
    }

    else
    {
      v6 = -1;
    }

    v7 = *(a2 + 32);
    if (v7 < 1)
    {
      v14 = 0;
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x277CBEB18]);
      v10 = objc_msgSend_initWithCapacity_(v8, v9, v7);
      v11 = 8;
      do
      {
        v12 = TSUEncodedBlockInfoCreate();
        objc_msgSend_addObject_(v10, v13, v12);

        v11 += 8;
        --v7;
      }

      while (v7);
      v14 = v10;
    }

    v15 = sub_276AB695C(v3, v6, v14, v5);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_276AB7094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v205[40] = *MEMORY[0x277D85DE8];
  v204[0] = @"TSWPLinkedTextBoxes";
  v203 = sub_276AB6F50(a1, a2, a3);
  v202 = objc_msgSend_localizedStringForKey_value_table_(v203, v3, @"TSWPLinkedTextBoxes", @"Linked Text Boxes", @"TSPersistence");
  v205[0] = v202;
  v204[1] = @"TSWPInlineDrawables";
  v201 = sub_276AB6F50(v202, v4, v5);
  v200 = objc_msgSend_localizedStringForKey_value_table_(v201, v6, @"TSWPInlineDrawables", @"Inline Drawables", @"TSPersistence");
  v205[1] = v200;
  v204[2] = @"TSWPFloatingEquations";
  v199 = sub_276AB6F50(v200, v7, v8);
  v198 = objc_msgSend_localizedStringForKey_value_table_(v199, v9, @"TSWPFloatingEquations", @"Floating Equations", @"TSPersistence");
  v205[2] = v198;
  v204[3] = @"TSWPEquations";
  v197 = sub_276AB6F50(v198, v10, v11);
  v196 = objc_msgSend_localizedStringForKey_value_table_(v197, v12, @"TSWPEquations", @"Equations", @"TSPersistence");
  v205[3] = v196;
  v204[4] = @"TSWPNewBorderOptions";
  v195 = sub_276AB6F50(v196, v13, v14);
  v194 = objc_msgSend_localizedStringForKey_value_table_(v195, v15, @"TSWPNewBorderOptions", @"New paragraph border options", @"TSPersistence");
  v205[4] = v194;
  v204[5] = @"TSWPOverlappingComments";
  v193 = sub_276AB6F50(v194, v16, v17);
  v192 = objc_msgSend_localizedStringForKey_value_table_(v193, v18, @"TSWPOverlappingComments", @"Overlapping Comments", @"TSPersistence");
  v205[5] = v192;
  v204[6] = @"TPPageTemplates";
  v191 = sub_276AB6F50(v192, v19, v20);
  v190 = objc_msgSend_localizedStringForKey_value_table_(v191, v21, @"TPPageTemplates", @"Page Templates", @"TSPersistence");
  v205[6] = v190;
  v204[7] = @"TSWPVerticalText";
  v189 = sub_276AB6F50(v190, v22, v23);
  v188 = objc_msgSend_localizedStringForKey_value_table_(v189, v24, @"TSWPVerticalText", @"Vertical Text", @"TSPersistence");
  v205[7] = v188;
  v204[8] = @"TSDThreadedComments";
  v187 = sub_276AB6F50(v188, v25, v26);
  v186 = objc_msgSend_localizedStringForKey_value_table_(v187, v27, @"TSDThreadedComments", @"Threaded Comments", @"TSPersistence");
  v205[8] = v186;
  v204[9] = @"TSCHLeaderLines";
  v185 = sub_276AB6F50(v186, v28, v29);
  v184 = objc_msgSend_localizedStringForKey_value_table_(v185, v30, @"TSCHLeaderLines", @"Chart Leader Lines", @"TSPersistence");
  v205[9] = v184;
  v204[10] = @"TSCHDonutCharts";
  v183 = sub_276AB6F50(v184, v31, v32);
  v182 = objc_msgSend_localizedStringForKey_value_table_(v183, v33, @"TSCHDonutCharts", @"Donut Charts", @"TSPersistence");
  v205[10] = v182;
  v204[11] = @"TSCHRadarCharts";
  v181 = sub_276AB6F50(v182, v34, v35);
  v180 = objc_msgSend_localizedStringForKey_value_table_(v181, v36, @"TSCHRadarCharts", @"Radar Charts", @"TSPersistence");
  v205[11] = v180;
  v204[12] = @"TSCHRoundedCorners";
  v179 = sub_276AB6F50(v180, v37, v38);
  v178 = objc_msgSend_localizedStringForKey_value_table_(v179, v39, @"TSCHRoundedCorners", @"Rounded corners in charts", @"TSPersistence");
  v205[12] = v178;
  v204[13] = @"TSAGalleries";
  v177 = sub_276AB6F50(v178, v40, v41);
  v176 = objc_msgSend_localizedStringForKey_value_table_(v177, v42, @"TSAGalleries", @"Image Galleries", @"TSPersistence");
  v205[13] = v176;
  v204[14] = @"TSACaptions";
  v175 = sub_276AB6F50(v176, v43, v44);
  v174 = objc_msgSend_localizedStringForKey_value_table_(v175, v45, @"TSACaptions", @"Object captions or titles", @"TSPersistence");
  v205[14] = v174;
  v204[15] = @"TSDFreehandDrawings";
  v173 = sub_276AB6F50(v174, v46, v47);
  v172 = objc_msgSend_localizedStringForKey_value_table_(v173, v48, @"TSDFreehandDrawings", @"Drawings", @"TSPersistence");
  v205[15] = v172;
  v204[16] = @"TSDMovieInfoPlaysAcrossSlides";
  v171 = sub_276AB6F50(v172, v49, v50);
  v170 = objc_msgSend_localizedStringForKey_value_table_(v171, v51, @"TSDMovieInfoPlaysAcrossSlides", @"Multi-slide Movies", @"TSPersistence");
  v205[16] = v170;
  v204[17] = @"TSKPencilAnnotations";
  v169 = sub_276AB6F50(v170, v52, v53);
  v168 = objc_msgSend_localizedStringForKey_value_table_(v169, v54, @"TSKPencilAnnotations", @"Annotations", @"TSPersistence");
  v205[17] = v168;
  v204[18] = @"TSKImprovedPencilAnnotations";
  v167 = sub_276AB6F50(v168, v55, v56);
  v166 = objc_msgSend_localizedStringForKey_value_table_(v167, v57, @"TSKImprovedPencilAnnotations", @"Improved Annotations", @"TSPersistence");
  v205[18] = v166;
  v204[19] = @"TSWPChangeTrackingInTextBoxes";
  v165 = sub_276AB6F50(v166, v58, v59);
  v164 = objc_msgSend_localizedStringForKey_value_table_(v165, v60, @"TSWPChangeTrackingInTextBoxes", @"Change tracking in text boxes and shapes", @"TSPersistence");
  v205[19] = v164;
  v204[20] = @"TPPageBackgrounds";
  v163 = sub_276AB6F50(v164, v61, v62);
  v162 = objc_msgSend_localizedStringForKey_value_table_(v163, v63, @"TPPageBackgrounds", @"Page Backgrounds", @"TSPersistence");
  v205[20] = v162;
  v204[21] = @"TNSheetBackgrounds";
  v161 = sub_276AB6F50(v162, v64, v65);
  v160 = objc_msgSend_localizedStringForKey_value_table_(v161, v66, @"TNSheetBackgrounds", @"Sheet Backgrounds", @"TSPersistence");
  v205[21] = v160;
  v204[22] = @"KNGalleryFadeAndMove";
  v159 = sub_276AB6F50(v160, v67, v68);
  v158 = objc_msgSend_localizedStringForKey_value_table_(v159, v69, @"KNGalleryFadeAndMove", @"Fade and Move Builds on Image Galleries", @"TSPersistence");
  v205[22] = v158;
  v204[23] = @"KNAlignToPath";
  v157 = sub_276AB6F50(v158, v70, v71);
  v156 = objc_msgSend_localizedStringForKey_value_table_(v157, v72, @"KNAlignToPath", @"Align to Path option for Move Action Build", @"TSPersistence");
  v205[23] = v156;
  v204[24] = @"TSTCategorizedTables";
  v155 = sub_276AB6F50(v156, v73, v74);
  v154 = objc_msgSend_localizedStringForKey_value_table_(v155, v75, @"TSTCategorizedTables", @"Categorized Tables", @"TSPersistence");
  v205[24] = v154;
  v204[25] = @"TSTExpandedTables";
  v153 = sub_276AB6F50(v154, v76, v77);
  v152 = objc_msgSend_localizedStringForKey_value_table_(v153, v78, @"TSTExpandedTables", @"Expanded Tables", @"TSPersistence");
  v205[25] = v152;
  v204[26] = @"TSCEReduceCalcEngineMsgSize";
  v151 = sub_276AB6F50(v152, v79, v80);
  v150 = objc_msgSend_localizedStringForKey_value_table_(v151, v81, @"TSCEReduceCalcEngineMsgSize", @"Saving Large Files", @"TSPersistence");
  v205[26] = v150;
  v204[27] = @"TSKCellPencilAnnotations";
  v149 = sub_276AB6F50(v150, v82, v83);
  v148 = objc_msgSend_localizedStringForKey_value_table_(v149, v84, @"TSKCellPencilAnnotations", @"Cell Annotations", @"TSPersistence");
  v205[27] = v148;
  v204[28] = @"TSWPAdvancedTextStyles";
  v147 = sub_276AB6F50(v148, v85, v86);
  v146 = objc_msgSend_localizedStringForKey_value_table_(v147, v87, @"TSWPAdvancedTextStyles", @"New Text Fill and Outline Options", @"TSPersistence");
  v205[28] = v146;
  v204[29] = @"TPLinkToPage";
  v145 = sub_276AB6F50(v146, v88, v89);
  v144 = objc_msgSend_localizedStringForKey_value_table_(v145, v90, @"TPLinkToPage", @"Links to Pages", @"TSPersistence");
  v205[29] = v144;
  v204[30] = @"TNLinkToSheet";
  v143 = sub_276AB6F50(v144, v91, v92);
  v142 = objc_msgSend_localizedStringForKey_value_table_(v143, v93, @"TNLinkToSheet", @"Links to Sheets", @"TSPersistence");
  v205[30] = v142;
  v204[31] = @"TSWPDropCaps";
  v141 = sub_276AB6F50(v142, v94, v95);
  v140 = objc_msgSend_localizedStringForKey_value_table_(v141, v96, @"TSWPDropCaps", @"Drop Caps", @"TSPersistence");
  v205[31] = v140;
  v204[32] = @"TSWPLinkToIBAReference";
  v139 = sub_276AB6F50(v140, v97, v98);
  v138 = objc_msgSend_localizedStringForKey_value_table_(v139, v99, @"TSWPLinkToIBAReference", @"IBA Import Hyperlinks", @"TSPersistence");
  v205[32] = v138;
  v204[33] = @"TSAWebVideos";
  v137 = sub_276AB6F50(v138, v100, v101);
  v136 = objc_msgSend_localizedStringForKey_value_table_(v137, v102, @"TSAWebVideos", @"Web Videos", @"TSPersistence");
  v205[33] = v136;
  v204[34] = @"TSTPivotTables";
  v135 = sub_276AB6F50(v136, v103, v104);
  v134 = objc_msgSend_localizedStringForKey_value_table_(v135, v105, @"TSTPivotTables", @"Pivot Tables", @"TSPersistence");
  v205[34] = v134;
  v204[35] = @"TSDObjectLinks";
  v133 = sub_276AB6F50(v134, v106, v107);
  v109 = objc_msgSend_localizedStringForKey_value_table_(v133, v108, @"TSDObjectLinks", @"Object Links", @"TSPersistence");
  v205[35] = v109;
  v204[36] = @"KNLiveVideos";
  v112 = sub_276AB6F50(v109, v110, v111);
  v114 = objc_msgSend_localizedStringForKey_value_table_(v112, v113, @"KNLiveVideos", @"Live Video", @"TSPersistence");
  v205[36] = v114;
  v204[37] = @"TSTPivotTables_v2";
  v117 = sub_276AB6F50(v114, v115, v116);
  v119 = objc_msgSend_localizedStringForKey_value_table_(v117, v118, @"TSTPivotTables_v2", @"Pivot Tables v2", @"TSPersistence");
  v205[37] = v119;
  v204[38] = @"KNLiveVideoBackgrounds";
  v122 = sub_276AB6F50(v119, v120, v121);
  v124 = objc_msgSend_localizedStringForKey_value_table_(v122, v123, @"KNLiveVideoBackgrounds", @"Live Video Backgrounds", @"TSPersistence");
  v205[38] = v124;
  v204[39] = @"TSAObject3D";
  v127 = sub_276AB6F50(v124, v125, v126);
  v129 = objc_msgSend_localizedStringForKey_value_table_(v127, v128, @"TSAObject3D", @"3D Object", @"TSPersistence");
  v205[39] = v129;
  v131 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v130, v205, v204, 40);
  v132 = qword_280A52A50;
  qword_280A52A50 = v131;
}

void sub_276AB7CC8(void *a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_allKeys(a1, v5, v6);
  v9 = objc_msgSend_sortedArrayUsingComparator_(v7, v8, &unk_2885C4FF8);

  v23 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v9;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v19, v24, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v20;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v20 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v19 + 1) + 8 * v16);
      v18 = objc_msgSend_objectForKeyedSubscript_(a1, v13, v17, v19);
      v4[2](v4, v17, v18, &v23);

      if (v23)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v19, v24, 16);
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

uint64_t sub_276AB7E38(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = TSUCheckedDynamicCast();

  v9 = objc_msgSend_tsp_identifier(v6, v7, v8);
  objc_opt_class();
  v10 = TSUCheckedDynamicCast();

  v13 = objc_msgSend_tsp_identifier(v10, v11, v12);
  if (v9 < v13)
  {
    return -1;
  }

  else
  {
    return v9 > v13;
  }
}

void sub_276AB7EDC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPDatabaseMessages.pb.cc", a4);
  *&v5 = 0;
  unk_2812FDA38 = v5;
  qword_2812FDA30[0] = &unk_2885C5028;
  if (atomic_load_explicit(dword_2812FC268, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FC268);
  }

  qword_2812FDA48 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, qword_2812FDA30, v4);
}

void sub_276AB7F8C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPDatabaseMessages.pb.cc", a4);
  sub_276AB86C8(&unk_2812FDA50, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &unk_2812FDA50, v4);
}

void sub_276AB7FFC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSPDatabaseMessages.pb.cc", a4);
  *&v5 = 0;
  unk_2812FDA98 = v5;
  qword_2812FDA90[0] = &unk_2885C5188;
  if (atomic_load_explicit(dword_2812FC2A8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FC2A8);
  }

  dword_2812FDAB0 = 0;
  qword_2812FDAA8 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, qword_2812FDA90, v4);
}

void *sub_276AB80B0(void *a1, uint64_t a2)
{
  *a1 = &unk_2885C5028;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812FC268, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FC268);
  }

  a1[3] = 0;
  return a1;
}

uint64_t *sub_276AB8118(uint64_t *a1)
{
  if (a1 != qword_2812FDA30)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::DataReference::~DataReference(v2);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C(a1 + 1);
  return a1;
}

void sub_276AB817C(uint64_t *a1)
{
  sub_276AB8118(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_276AB81BC(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = TSP::DataReference::Clear(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2769F6424(v2);
  }

  return result;
}

google::protobuf::internal *sub_276AB8218(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v19 = a2;
  for (i = *(a3 + 23); (sub_2769F6104(a3, &v19, i) & 1) == 0; i = *(a3 + 23))
  {
    v7 = (v19 + 1);
    v8 = *v19;
    if (*v19 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v9 - 128));
        v19 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v7 = TagFallback;
        v8 = v17;
        goto LABEL_7;
      }

      v7 = (v19 + 2);
    }

    v19 = v7;
LABEL_7:
    if (v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataReference>(v15);
        *(a1 + 24) = v14;
        v7 = v19;
      }

      v13 = sub_276BD61C4(a3, v14, v7);
    }

    else
    {
      if (v8)
      {
        v10 = (v8 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        *(a3 + 20) = v8 - 1;
        return v19;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v12 = sub_2769F617C((a1 + 8));
        v7 = v19;
      }

      v13 = google::protobuf::internal::UnknownFieldParse(v8, v12, v7, a3, v6);
    }

    v19 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v19;
}

const google::protobuf::UnknownFieldSet *sub_276AB8360(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::DataReference::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *sub_276AB8450(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if (*(a1 + 16))
  {
    v6 = TSP::DataReference::ByteSizeLong(*(a1 + 24), a2, a3, a4);
    v5 = (&v6->ptr_ + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v5, (a1 + 20), a4);
  }

  else
  {
    *(a1 + 20) = v5;
    return v5;
  }
}

void sub_276AB84DC(const google::protobuf::Message *a1, void *lpsrc)
{
  if (v4)
  {

    sub_276AB8584(a1, v4);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void *sub_276AB8584(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 4) |= 1u;
    v6 = v3[3];
    if (!v6)
    {
      v7 = v3[1];
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataReference>(v7);
      v3[3] = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSP::_DataReference_default_instance_;
    }

    return TSP::DataReference::MergeFrom(v6, v8);
  }

  return result;
}

void sub_276AB862C(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    sub_276AB81BC(result);

    sub_276AB84DC(result, a2);
  }
}

uint64_t sub_276AB8678(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return TSP::DataReference::IsInitialized(*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_276AB86C8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885C50D8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812FC288, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FC288);
  }

  *(a1 + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 32) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
  return a1;
}

uint64_t sub_276AB874C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  v3 = *(a1 + 32);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    MEMORY[0x277C9F670](v3, 0x1012C40EC159624);
  }

  if (a1 != &unk_2812FDA50)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C((a1 + 8));
  return a1;
}

void sub_276AB8820(uint64_t a1)
{
  sub_276AB874C(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_276AB8860(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  v5 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v6 = *(result + 4) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = TSP::Reference::Clear(*(result + 5));
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ((v2 & 0x38) != 0)
  {
    *(v1 + 14) = 0;
    *(v1 + 6) = 0;
    *(v1 + 60) = 1;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2769F6424(v3);
  }

  return result;
}

google::protobuf::internal *sub_276AB8948(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v39, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v39 + 1);
      v9 = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v10 - 128));
      v39 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_67;
      }

      v8 = TagFallback;
      v9 = v32;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 3)
      {
        if (v11 != 1)
        {
          if (v11 == 2)
          {
            if (v9 != 18)
            {
              goto LABEL_47;
            }

            *(a1 + 16) |= 1u;
            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = (a1 + 24);
          }

          else
          {
            if (v11 != 3 || v9 != 26)
            {
LABEL_47:
              if (v9)
              {
                v28 = (v9 & 7) == 4;
              }

              else
              {
                v28 = 1;
              }

              if (v28)
              {
                *(a3 + 80) = v9 - 1;
                goto LABEL_2;
              }

              v29 = *(a1 + 8);
              if (v29)
              {
                v30 = ((v29 & 0xFFFFFFFFFFFFFFFELL) + 8);
              }

              else
              {
                v30 = sub_2769F617C((a1 + 8));
                v8 = v39;
              }

              v20 = google::protobuf::internal::UnknownFieldParse(v9, v30, v8, a3, v5);
              goto LABEL_54;
            }

            *(a1 + 16) |= 2u;
            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = (a1 + 32);
          }

          v24 = google::protobuf::internal::ArenaStringPtr::Mutable(v14, v13);
          v20 = google::protobuf::internal::InlineGreedyStringParser(v24, v39, a3);
          goto LABEL_54;
        }

        if (v9 != 10)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 4u;
        v18 = *(a1 + 40);
        if (!v18)
        {
          v19 = *(a1 + 8);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v19);
          *(a1 + 40) = v18;
          v8 = v39;
        }

        v20 = sub_276BD2124(a3, v18, v8);
LABEL_54:
        v39 = v20;
        if (!v20)
        {
          goto LABEL_67;
        }

        goto LABEL_55;
      }

      if (v11 == 4)
      {
        if (v9 != 32)
        {
          goto LABEL_47;
        }

        v6 |= 8u;
        v22 = (v8 + 1);
        v21 = *v8;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if ((v23 & 0x80000000) == 0)
        {
          v22 = (v8 + 2);
LABEL_36:
          v39 = v22;
          *(a1 + 48) = v21;
          goto LABEL_55;
        }

        v33 = google::protobuf::internal::VarintParseSlow64(v8, v21);
        v39 = v33;
        *(a1 + 48) = v34;
        if (!v33)
        {
          goto LABEL_67;
        }
      }

      else if (v11 == 5)
      {
        if (v9 != 40)
        {
          goto LABEL_47;
        }

        v6 |= 0x10u;
        v25 = (v8 + 1);
        LODWORD(v26) = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_46;
        }

        v27 = *v25;
        v26 = (v26 + (v27 << 7) - 128);
        if ((v27 & 0x80000000) == 0)
        {
          v25 = (v8 + 2);
LABEL_46:
          v39 = v25;
          *(a1 + 56) = v26;
          goto LABEL_55;
        }

        v37 = google::protobuf::internal::VarintParseSlow32(v8, v26);
        v39 = v37;
        *(a1 + 56) = v38;
        if (!v37)
        {
LABEL_67:
          v39 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v11 != 6 || v9 != 48)
        {
          goto LABEL_47;
        }

        v6 |= 0x20u;
        v16 = (v8 + 1);
        v15 = *v8;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v8 + 2);
LABEL_25:
          v39 = v16;
          *(a1 + 60) = v15 != 0;
          goto LABEL_55;
        }

        v35 = google::protobuf::internal::VarintParseSlow64(v8, v15);
        v39 = v35;
        *(a1 + 60) = v36 != 0;
        if (!v35)
        {
          goto LABEL_67;
        }
      }

LABEL_55:
      if (sub_2769F6104(a3, &v39, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v39 + 2);
LABEL_6:
    v39 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v39;
}