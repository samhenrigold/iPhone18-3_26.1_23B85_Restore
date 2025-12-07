void sub_22137D678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_22137D6BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_ownerMap(*(a1 + 32), a2, a3, a4);
  v6 = TSKUIDStruct::description(*(a1 + 56));
  v9 = objc_msgSend_objectForKey_(v5, v7, v6, v8);

  if (v9 && objc_msgSend_count(v9, v10, v11, v12))
  {
    v13 = objc_msgSend_setByIntersectingWithSet_(*(a1 + 40), v10, v9, v12);
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    objc_msgSend_removeSpecifiersFromSet_(v9, v16, *(*(*(a1 + 48) + 8) + 40), v17);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v21 = objc_msgSend_ownerMap(*(a1 + 32), v18, v19, v20, 0);
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v47, v51, 16);
    if (v26)
    {
      v27 = *v48;
      do
      {
        v28 = 0;
        do
        {
          if (*v48 != v27)
          {
            objc_enumerationMutation(v21);
          }

          v29 = *(*(&v47 + 1) + 8 * v28);
          v30 = *(*(*(a1 + 48) + 8) + 40);
          v31 = objc_msgSend_ownerMap(*(a1 + 32), v23, v24, v25);
          v34 = objc_msgSend_objectForKey_(v31, v32, v29, v33);
          objc_msgSend_removeSpecifiersFromSet_(v30, v35, v34, v36);

          ++v28;
        }

        while (v26 != v28);
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v47, v51, 16);
      }

      while (v26);
    }
  }

  v37 = objc_msgSend_interestingKeys(*(a1 + 32), v10, v11, v12);
  objc_msgSend_removeSpecifiersFromSet_(v37, v38, *(*(*(a1 + 48) + 8) + 40), v39);

  v43 = objc_msgSend_interestingKeys(*(a1 + 32), v40, v41, v42);
  *(*(a1 + 32) + 64) = objc_msgSend_count(v43, v44, v45, v46) != 0;
}

void sub_22137DA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_22137DAD4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  if (v5 && objc_msgSend_count(v5, a2, a3, a4))
  {
    v6 = objc_msgSend_unSyncedStocks(*(a1 + 40), a2, a3, a4);
    v7 = MEMORY[0x277CCAC30];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = sub_22137DDFC;
    v59[3] = &unk_2784636B8;
    v60 = *(a1 + 32);
    v10 = objc_msgSend_predicateWithBlock_(v7, v8, v59, v9);
    objc_msgSend_filterUsingPredicate_(v6, v11, v10, v12);
  }

  v13 = *(a1 + 64);
  v14 = objc_msgSend_cachedStocks(*(a1 + 40), a2, a3, a4);
  v18 = v14;
  if (v13)
  {
    objc_msgSend_addEntriesFromDictionary_(v14, v15, *(a1 + 32), v17);
    v19 = v18;
  }

  else
  {
    v19 = objc_msgSend_tsu_allKeysAsSet(v14, v15, v16, v17);

    v23 = objc_msgSend_tsu_allKeysAsSet(*(a1 + 32), v20, v21, v22);
    v26 = objc_msgSend_tsu_setBySubtractingSet_(v23, v24, v19, v25);

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v27 = v26;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v55, v61, 16);
    if (v31)
    {
      v32 = *v56;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v56 != v32)
          {
            objc_enumerationMutation(v27);
          }

          v34 = *(*(&v55 + 1) + 8 * i);
          v35 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v29, v34, v30, v55);
          v39 = objc_msgSend_cachedStocks(*(a1 + 40), v36, v37, v38);
          objc_msgSend_setObject_forKeyedSubscript_(v39, v40, v35, v34);

          v44 = objc_msgSend_unSyncedStocks(*(a1 + 40), v41, v42, v43);
          objc_msgSend_addObject_(v44, v45, v34, v46);
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v55, v61, 16);
      }

      while (v31);
    }
  }

  v50 = objc_msgSend_remoteDataMap(*(a1 + 40), v47, v48, v49);
  v52 = objc_msgSend_updateWithValuesFromMap_overwriteValues_(v50, v51, *(a1 + 48), *(a1 + 64));
  v53 = *(*(a1 + 56) + 8);
  v54 = *(v53 + 40);
  *(v53 + 40) = v52;
}

BOOL sub_22137DDFC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), a2, a2, a4);
  v5 = v4 == 0;

  return v5;
}

void sub_22137DF08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_unSyncedStocks(*(a1 + 32), a2, a3, a4);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_count(v8, v5, v6, v7);
}

void sub_22137E16C()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_22137E1B0(id *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_p_isInCollaborationMode(a1[4], a2, a3, a4))
  {
    v8 = objc_msgSend_delegate(a1[4], v5, v6, v7);
    v9 = v8 != 0;
  }

  else
  {
    v9 = 1;
  }

  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x3032000000;
  v65[3] = sub_22137CCF4;
  v65[4] = sub_22137CD04;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_22137CCF4;
  v63 = sub_22137CD04;
  v64 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v10 = a1[4];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_22137E590;
  v48[3] = &unk_278463708;
  v51 = v65;
  v48[4] = v10;
  v49 = a1[5];
  v11 = a1[6];
  v54 = v9;
  v50 = v11;
  v52 = &v59;
  v53 = &v55;
  objc_msgSend_p_recursiveWriteWillModify_withBlock_(v10, v12, 1, v48);
  if (objc_msgSend_count(v60[5], v13, v14, v15))
  {
    v19 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22137E6D8;
    block[3] = &unk_27845DAD8;
    block[4] = a1[4];
    block[5] = &v59;
    dispatch_async(v19, block);
  }

  v23 = objc_msgSend_delegate(a1[4], v16, v17, v18);
  if (v23)
  {
    if (objc_msgSend_count(v60[5], v20, v21, v22))
    {
    }

    else
    {
      v30 = objc_msgSend_count(a1[6], v24, v25, v26);

      if (!v30)
      {
        goto LABEL_14;
      }
    }

    if (objc_msgSend_count(a1[6], v27, v28, v29))
    {
      v34 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v31, v32, v33);
      v35 = a1[6];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = sub_22137E748;
      v44[3] = &unk_278463730;
      v46 = &v59;
      v36 = v34;
      v45 = v36;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v35, v37, v44, v38);
    }

    else
    {
      v36 = 0;
    }

    v39 = objc_msgSend_delegate(a1[4], v31, v32, v33);
    v42 = objc_msgSend_mapForSpecifiersInSet_(a1[5], v40, v60[5], v41);
    objc_msgSend_remoteDataDidUpdateValues_quotes_fromStore_syncKey_(v39, v43, v42, v36, a1[4], v56[3]);
  }

LABEL_14:

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);

  _Block_object_dispose(v65, 8);
}

void sub_22137E504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 160), 8);

  _Block_object_dispose((v33 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22137E590(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_p_updateCachesWithMap_quotes_overwriteValues_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48), *(a1 + 80));
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 56) + 8) + 40);
  v10 = objc_msgSend_interestingKeys(*(a1 + 32), v7, v8, v9);
  v13 = objc_msgSend_setByIntersectingWithSet_(v6, v11, v10, v12);
  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v19 = objc_msgSend_delegate(*(a1 + 32), v16, v17, v18);
  if (v19)
  {
    v23 = v19;
    if (objc_msgSend_count(*(*(*(a1 + 64) + 8) + 40), v20, v21, v22))
    {
    }

    else
    {
      v30 = objc_msgSend_count(*(a1 + 48), v24, v25, v26);

      if (!v30)
      {
        return;
      }
    }

    v31 = objc_msgSend_date(MEMORY[0x277CBEAA8], v27, v28, v29);
    objc_msgSend_timeIntervalSinceReferenceDate(v31, v32, v33, v34);
    *(*(*(a1 + 72) + 8) + 24) = v35;

    v38 = *(a1 + 32);

    MEMORY[0x2821F9670](v38, sel_setRemoteDataSyncKey_, v36, v37);
  }
}

void sub_22137E6D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_calculationEngine(*(a1 + 32), a2, a3, a4);
  objc_msgSend_markRemoteDataVolatileFunctionsAsDirtyForKeys_(v7, v5, *(*(*(a1 + 40) + 8) + 40), v6);
}

void sub_22137E748(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (objc_msgSend_containsSpecifiersWithSymbol_(*(*(*(a1 + 40) + 8) + 40), v6, v9, v7))
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v8, v5, v9);
  }
}

void sub_22137EAFC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v11 = objc_msgSend_remoteDataMap(*(a1 + 32), a2, a3, a4);
  v8 = objc_msgSend_copy(v11, v5, v6, v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_22137EC6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277CBEAC0];
  v11 = objc_msgSend_cachedStocks(*(a1 + 32), a2, a3, a4);
  v8 = objc_msgSend_dictionaryWithDictionary_(v5, v6, v11, v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

uint64_t sub_22137EE40(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22137EEBC;
  v6[3] = &unk_278463758;
  v7 = *(a1 + 40);
  return objc_msgSend_enumerateSpecifiersWithBlock_(v4, a2, v6, a4);
}

void sub_22137EEBC(uint64_t a1, void *a2)
{
  v11 = a2;
  v6 = objc_msgSend_remoteDataMap(*(a1 + 32), v3, v4, v5);
  v9 = objc_msgSend_objectForKeyedSubscript_(v6, v7, v11, v8);
  objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 40) + 8) + 40), v10, v9, v11);
}

void sub_22137F170()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_22137F1B4(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_22137CCF4;
  v19 = sub_22137CD04;
  v20 = 0;
  v2 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22137F320;
  v10[3] = &unk_2784637A8;
  v13 = &v15;
  v10[4] = v2;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v14 = *(a1 + 56);
  objc_msgSend_p_recursiveWriteWillModify_withBlock_(v2, v3, 1, v10);
  v7 = objc_msgSend_calculationEngine(*(a1 + 32), v4, v5, v6);
  objc_msgSend_markRemoteDataVolatileFunctionsAsDirtyForKeys_(v7, v8, v16[5], v9);

  _Block_object_dispose(&v15, 8);
}

void sub_22137F2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  v18 = v16;

  _Block_object_dispose((v17 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22137F320(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_p_updateCachesWithMap_quotes_overwriteValues_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48), 1);
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v8 = *(a1 + 32);

  return MEMORY[0x2821F9670](v8, sel_setRemoteDataSyncKey_, v6, v7);
}

void sub_22137F554(uint64_t a1, void *a2)
{
  v11 = a2;
  v5 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v3, v11, v4);
  v9 = objc_msgSend_cachedStocks(*(a1 + 32), v6, v7, v8);
  objc_msgSend_setObject_forKeyedSubscript_(v9, v10, v5, v11);
}

void sub_22137F5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_22137F8FC()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_22137FC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v36 - 144), 8);

  _Block_object_dispose((v36 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22137FC80(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v39 = objc_msgSend_remoteDataMap(*(a1 + 32), a2, a3, a4);
  v8 = objc_msgSend_interestingKeys(*(a1 + 32), v5, v6, v7);
  v11 = objc_msgSend_mapForSpecifiersInSet_(v39, v9, v8, v10);
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v40 = objc_msgSend_interestingKeys(*(a1 + 32), v14, v15, v16);
  v20 = objc_msgSend_allSymbols(v40, v17, v18, v19);
  v21 = *(*(a1 + 48) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  v41 = objc_msgSend_remoteDataMap(*(a1 + 32), v23, v24, v25);
  v29 = objc_msgSend_allSpecifiers(v41, v26, v27, v28);
  v33 = objc_msgSend_interestingKeys(*(a1 + 32), v30, v31, v32);
  v36 = objc_msgSend_setByRemovingSpecifiersFromSet_(v29, v34, v33, v35);
  v37 = *(*(a1 + 56) + 8);
  v38 = *(v37 + 40);
  *(v37 + 40) = v36;
}

void sub_22137FDD8()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_22137FE1C(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = a3;
  if (objc_msgSend_containsObject_(*(*(*(a1 + 32) + 8) + 40), v5, a2, v6))
  {
    v9 = *(*(*(a1 + 40) + 8) + 24);
    v10 = *(v9 + 40);
    if (!v10)
    {
      goto LABEL_7;
    }

    v11 = *(v9 + 32);
    v12 = *v10;
    if (v11 < *v10)
    {
      *(v9 + 32) = v11 + 1;
      objc_msgSend_encodeToArchive_(v18, v7, *&v10[2 * v11 + 2], v8);
      goto LABEL_9;
    }

    if (v12 == *(v9 + 36))
    {
LABEL_7:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v9 + 24));
      v10 = *(v9 + 40);
      v12 = *v10;
    }

    *v10 = v12 + 1;
    v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::StockArchive>(*(v9 + 24));
    v14 = *(v9 + 32);
    v15 = *(v9 + 40) + 8 * v14;
    *(v9 + 32) = v14 + 1;
    *(v15 + 8) = v13;
    objc_msgSend_encodeToArchive_(v18, v16, v13, v17);
  }

LABEL_9:
}

void sub_221381294()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v3 = objc_msgSend_initWithProperties_(v0, v1, 912, v2, 0);
  v4 = qword_27CFB5488;
  qword_27CFB5488 = v3;
}

void sub_221381874(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSTStrokeLayerAbstractStack;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_221382008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  for (i = 64; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2213823E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221382850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v26 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v24 - 176), 8);
  _Block_object_dispose((v24 - 144), 8);

  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2213828C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 sub_2213828E0(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_2213828F0(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v41 = a2;
  objc_msgSend_width(v41, v8, v9, v10);
  v15 = v14;
  v16 = a1[10];
  if (v16 != 0x7FFFFFFFFFFFFFFFLL && a4 != 0 && a3 <= v16)
  {
    v19 = a4 - 1 + a3;
    if (v19 >= v16 && a4 >= 2)
    {
      ++a3;
      --a4;
    }

    else if (v19 >= v16 && a4 == 1)
    {
      objc_msgSend_width(v41, v11, v12, v13);
      *(*(a1[5] + 8) + 24) = v21;
      goto LABEL_34;
    }
  }

  v22 = *(a1[6] + 8);
  if (*(v22 + 24))
  {
    v23 = *(*(a1[5] + 8) + 24);
    if (v23 < v15)
    {
      v24 = 1;
    }

    else
    {
      v24 = 3;
    }

    if (v23 <= v15)
    {
      v25 = v24;
    }

    else
    {
      v25 = 2;
    }

    if (objc_msgSend_isPortalStroke(*(*(a1[7] + 8) + 40), v11, v12, v13))
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSTStrokeLayerAbstractStack enumerateStrokesAndCapsInRange:usingBlock:]_block_invoke", v27);
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTStrokeLayerStack.mm", v31);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 425, 0, "should never see portal strokes here");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
    }

    (*(a1[4] + 16))();
    objc_storeStrong((*(a1[7] + 8) + 40), a2);
    *(*(a1[5] + 8) + 24) = v15;
    v37 = *(a1[8] + 8);
    *(v37 + 48) = a3;
    *(v37 + 56) = a4;
    *(*(a1[9] + 8) + 24) = v25;
  }

  else
  {
    *(v22 + 24) = 1;
    objc_storeStrong((*(a1[7] + 8) + 40), a2);
    v38 = *(a1[8] + 8);
    *(v38 + 48) = a3;
    *(v38 + 56) = a4;
    v39 = *(*(a1[5] + 8) + 24);
    if (v15 <= v39)
    {
      if (v15 >= v39)
      {
        v40 = 3;
      }

      else
      {
        v40 = 2;
      }

      *(*(a1[9] + 8) + 24) = v40;
    }

    else
    {
      *(*(a1[9] + 8) + 24) = 1;
    }

    *(*(a1[5] + 8) + 24) = v15;
  }

LABEL_34:
}

void sub_221382CF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3 - *(a1 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_221382DE8;
  v12[3] = &unk_278463898;
  v13 = v7;
  v9 = *(a1 + 32);
  v14 = *(a1 + 40);
  v10 = v7;
  objc_msgSend_enumerateStrokesInRange_usingBlock_(v9, v11, v8, a4, v12);
}

void sub_221382DE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  if ((objc_msgSend_isEqualToStroke_(v10, v7, *(a1 + 32), v8) & 1) == 0)
  {
    objc_msgSend_appendStroke_inRange_order_(*(a1 + 40), v9, *(a1 + 32), a3, a4, 1);
  }
}

void sub_2213839C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22138433C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2213847AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213847C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v8 = a2;
  v9 = *(*(*(a1 + 32) + 8) + 24);
  v15 = v8;
  objc_msgSend_width(v8, v10, v11, v12);
  if (v9 >= v13)
  {
    v13 = v9;
  }

  *(*(*(a1 + 32) + 8) + 24) = v13;
  v14 = *(a1 + 40);
  if (v14 >= 0.0 && *(*(*(a1 + 32) + 8) + 24) == v14)
  {
    *a6 = 1;
  }
}

void sub_22138493C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221384954(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v9 = v3;
  objc_msgSend_width(v3, v5, v6, v7);
  if (v4 >= v8)
  {
    v8 = v4;
  }

  *(*(*(a1 + 32) + 8) + 24) = v8;
}

void sub_221384CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 120);
  if (v28)
  {
    *(v26 - 112) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2213850A8(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_22138513C(a1, a2);
  }

  return a1;
}

void sub_221385120(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22138513C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_221385188(a1, a2);
  }

  sub_22107C148();
}

void sub_221385188(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t *sub_2213851E0(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_221123150(a1, a2);
  }

  return a1;
}

void sub_22138529C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void TSCESymbolTable::TSCESymbolTable(TSCESymbolTable *this)
{
  this->_locale = 0;
  this->_nextSymbol = 1;
  this->_symbolTableMap.__table_.__bucket_list_ = 0u;
  *&this->_symbolTableMap.__table_.__first_node_.__next_ = 0u;
  this->_symbolTableMap.__table_.__max_load_factor_ = 1.0;
  this->_identifierMap.__table_.__bucket_list_ = 0u;
  *&this->_identifierMap.__table_.__first_node_.__next_ = 0u;
  this->_identifierMap.__table_.__max_load_factor_ = 1.0;
  this->_undoSymbolTableMaps.__end_ = 0;
  this->_undoSymbolTableMaps.__cap_ = 0;
  this->_undoSymbolTableMaps.__begin_ = 0;
}

{
  this->_locale = 0;
  this->_nextSymbol = 1;
  this->_symbolTableMap.__table_.__bucket_list_ = 0u;
  *&this->_symbolTableMap.__table_.__first_node_.__next_ = 0u;
  this->_symbolTableMap.__table_.__max_load_factor_ = 1.0;
  this->_identifierMap.__table_.__bucket_list_ = 0u;
  *&this->_identifierMap.__table_.__first_node_.__next_ = 0u;
  this->_identifierMap.__table_.__max_load_factor_ = 1.0;
  this->_undoSymbolTableMaps.__end_ = 0;
  this->_undoSymbolTableMaps.__cap_ = 0;
  this->_undoSymbolTableMaps.__begin_ = 0;
}

void TSCESymbolTable::TSCESymbolTable(TSCESymbolTable *this, TSULocale *a2)
{
  this->_locale = a2;
  this->_nextSymbol = 1;
  this->_symbolTableMap.__table_.__bucket_list_ = 0u;
  *&this->_symbolTableMap.__table_.__first_node_.__next_ = 0u;
  this->_symbolTableMap.__table_.__max_load_factor_ = 1.0;
  this->_identifierMap.__table_.__bucket_list_ = 0u;
  *&this->_identifierMap.__table_.__first_node_.__next_ = 0u;
  this->_identifierMap.__table_.__max_load_factor_ = 1.0;
  this->_undoSymbolTableMaps.__end_ = 0;
  this->_undoSymbolTableMaps.__cap_ = 0;
  this->_undoSymbolTableMaps.__begin_ = 0;
}

{
  this->_locale = a2;
  this->_nextSymbol = 1;
  this->_symbolTableMap.__table_.__bucket_list_ = 0u;
  *&this->_symbolTableMap.__table_.__first_node_.__next_ = 0u;
  this->_symbolTableMap.__table_.__max_load_factor_ = 1.0;
  this->_identifierMap.__table_.__bucket_list_ = 0u;
  *&this->_identifierMap.__table_.__first_node_.__next_ = 0u;
  this->_identifierMap.__table_.__max_load_factor_ = 1.0;
  this->_undoSymbolTableMaps.__end_ = 0;
  this->_undoSymbolTableMaps.__cap_ = 0;
  this->_undoSymbolTableMaps.__begin_ = 0;
}

void TSCESymbolTable::TSCESymbolTable(TSCESymbolTable *this, const TSCESymbolTable *a2)
{
  this->_locale = a2->_locale;
  this->_nextSymbol = a2->_nextSymbol;
  this->_symbolTableMap.__table_.__bucket_list_ = 0u;
  *&this->_symbolTableMap.__table_.__first_node_.__next_ = 0u;
  this->_symbolTableMap.__table_.__max_load_factor_ = 1.0;
  *&this->_identifierMap.__table_.__first_node_.__next_ = 0u;
  this->_identifierMap.__table_.__bucket_list_ = 0u;
  this->_identifierMap.__table_.__max_load_factor_ = 1.0;
  this->_undoSymbolTableMaps.__end_ = 0;
  this->_undoSymbolTableMaps.__cap_ = 0;
  this->_undoSymbolTableMaps.__begin_ = 0;
}

{
  this->_locale = a2->_locale;
  this->_nextSymbol = a2->_nextSymbol;
  this->_symbolTableMap.__table_.__bucket_list_ = 0u;
  *&this->_symbolTableMap.__table_.__first_node_.__next_ = 0u;
  this->_symbolTableMap.__table_.__max_load_factor_ = 1.0;
  *&this->_identifierMap.__table_.__first_node_.__next_ = 0u;
  this->_identifierMap.__table_.__bucket_list_ = 0u;
  this->_identifierMap.__table_.__max_load_factor_ = 1.0;
  this->_undoSymbolTableMaps.__end_ = 0;
  this->_undoSymbolTableMaps.__cap_ = 0;
  this->_undoSymbolTableMaps.__begin_ = 0;
}

uint64_t TSCESymbolTable::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  objc_storeStrong(a1, *a2);
  return a1;
}

void TSCESymbolTable::setSymbol(TSCESymbolTable *this, unsigned int a2, NSString *a3)
{
  v26 = a2;
  v5 = a3;
  v25 = objc_msgSend_tsu_stringWithTrimmedWhitespace(v5, v6, v7, v8);

  v12 = objc_msgSend_locale(this->_locale, v9, v10, v11);
  v24 = objc_msgSend_stringByFoldingWithOptions_locale_(v25, v13, 385, v12);

  v18 = sub_221387218(&this->_symbolTableMap.__table_.__bucket_list_.__ptr_, &v24, v14, v15);
  end = this->_undoSymbolTableMaps.__end_;
  v20 = end - 5;
  if (v18)
  {
    if (!sub_221387218(end - 5, &v25, v16, v17))
    {
      v21 = *(v18 + 6);
      v27 = &v25;
      *(sub_221387328(v20, &v25, &unk_2217E1890, &v27) + 6) = v21;
    }
  }

  else if (!sub_221387218(end - 5, &v25, v16, v17))
  {
    v27 = &v25;
    *(sub_221387328(v20, &v25, &unk_2217E1890, &v27) + 6) = 0;
  }

  v27 = &v24;
  *(sub_221387328(&this->_symbolTableMap.__table_.__bucket_list_.__ptr_, &v24, &unk_2217E1890, &v27) + 6) = a2;
  v22 = v25;
  v27 = &v26;
  v23 = sub_2212E351C(&this->_identifierMap.__table_.__bucket_list_.__ptr_, &v26, &unk_2217E1890, &v27);
  objc_storeStrong(v23 + 3, v22);
  if (this->_nextSymbol <= v26)
  {
    this->_nextSymbol = v26 + 1;
  }
}

id TSCESymbolTable::trimIdentifierString(TSCESymbolTable *this, NSString *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_tsu_stringWithTrimmedWhitespace(this, a2, a3, a4);

  return v4;
}

uint64_t TSCESymbolTable::createSymbol(TSCESymbolTable *this, NSString *a2)
{
  v3 = a2;
  v7 = v3;
  v37 = v3;
  if (this->_undoSymbolTableMaps.__end_ == this->_undoSymbolTableMaps.__begin_)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "TSCESymbol TSCESymbolTable::createSymbol(NSString *__strong)", v6);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCESymbolTable.mm", v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 87, 0, "can't add a symbol if not in any scope");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
    v30 = 0;
  }

  else
  {
    v37 = objc_msgSend_tsu_stringWithTrimmedWhitespace(v3, v4, v5, v6);

    v11 = objc_msgSend_locale(this->_locale, v8, v9, v10);
    v36 = objc_msgSend_stringByFoldingWithOptions_locale_(v37, v12, 385, v11);

    v17 = sub_221387218(&this->_symbolTableMap.__table_.__bucket_list_.__ptr_, &v36, v13, v14);
    end = this->_undoSymbolTableMaps.__end_;
    v19 = end - 5;
    if (v17)
    {
      if (!sub_221387218(end - 5, &v37, v15, v16))
      {
        v20 = *(v17 + 6);
        v38 = &v37;
        *(sub_221387328(v19, &v37, &unk_2217E1890, &v38) + 6) = v20;
      }
    }

    else if (!sub_221387218(end - 5, &v37, v15, v16))
    {
      v38 = &v37;
      *(sub_221387328(v19, &v37, &unk_2217E1890, &v38) + 6) = 0;
    }

    nextSymbol = this->_nextSymbol;
    this->_nextSymbol = nextSymbol + 1;
    v35 = nextSymbol;
    v38 = &v36;
    *(sub_221387328(&this->_symbolTableMap.__table_.__bucket_list_.__ptr_, &v36, &unk_2217E1890, &v38) + 6) = nextSymbol;
    v32 = v37;
    v38 = &v35;
    v33 = sub_2212E351C(&this->_identifierMap.__table_.__bucket_list_.__ptr_, &v35, &unk_2217E1890, &v38);
    objc_storeStrong(v33 + 3, v32);
    v30 = v35;

    v7 = v37;
  }

  return v30;
}

uint64_t TSCESymbolTable::nextSymbol(TSCESymbolTable *this)
{
  nextSymbol = this->_nextSymbol;
  this->_nextSymbol = nextSymbol + 1;
  return nextSymbol;
}

uint64_t TSCESymbolTable::lookup(TSCESymbolTable *this, NSString *a2, int a3)
{
  v5 = a2;
  v9 = objc_msgSend_tsu_stringWithTrimmedWhitespace(v5, v6, v7, v8);

  v13 = objc_msgSend_locale(this->_locale, v10, v11, v12);
  v33 = objc_msgSend_stringByFoldingWithOptions_locale_(v9, v14, 385, v13);

  v17 = sub_221387218(&this->_symbolTableMap.__table_.__bucket_list_.__ptr_, &v33, v15, v16);
  if (!v17)
  {
    goto LABEL_9;
  }

  v18 = *(v17 + 6);
  if (!a3)
  {
    goto LABEL_10;
  }

  end = this->_undoSymbolTableMaps.__end_;
  if (this->_undoSymbolTableMaps.__begin_ == end)
  {
LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  sub_221387610(v31, end - 40);
  v20 = v32;
  if (v32)
  {
    while (1)
    {
      v21 = v20[2];
      v25 = objc_msgSend_locale(this->_locale, v22, v23, v24);
      v27 = objc_msgSend_stringByFoldingWithOptions_locale_(v21, v26, 385, v25);

      LOBYTE(v25) = objc_msgSend_isEqualToString_(v33, v28, v27, v29);
      if (v25)
      {
        break;
      }

      v20 = *v20;
      if (!v20)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v18 = 0;
  }

  sub_2210C82EC(v31);
LABEL_10:

  return v18;
}

id *TSCESymbolTable::identifierForSymbol(TSCESymbolTable *this, unsigned int a2)
{
  v4 = a2;
  v2 = sub_2211DC534(&this->_identifierMap.__table_.__bucket_list_.__ptr_, &v4);
  if (v2)
  {
    v2 = v2[3];
  }

  return v2;
}

uint64_t TSCESymbolTable::isAcceptableIdentifier(TSCESymbolTable *this, NSString *a2)
{
  v2 = this;
  if (objc_msgSend_length(v2, v3, v4, v5))
  {
    v8 = objc_msgSend_characterAtIndex_(v2, v6, 0, v7);
    if ((TSUNumberOrDateLexer::numberValueForChar(v8) & 0x80000000) != 0)
    {
      v9 = TSUCellCoord::coordFromString(v2, 0x4000);
      if (v9 == 0x7FFFFFFF || (v9 & 0xFFFF00000000) == 0x7FFF00000000)
      {
        v17 = objc_msgSend_length(v2, v10, v11, v12);
        if (!v17)
        {
          v13 = 1;
          goto LABEL_6;
        }

        v18 = 0;
        while (1)
        {
          v19 = objc_msgSend_characterAtIndex_(v2, v15, v18, v16);
          if (TSUFormulaOperatorForChar())
          {
            break;
          }

          v13 = 0;
          if (v19 <= 8216)
          {
            if (v19 > 122)
            {
              if (v19 > 1523)
              {
                if (v19 == 1524 || v19 == 1563)
                {
                  goto LABEL_6;
                }
              }

              else if (v19 == 123 || v19 == 125)
              {
                goto LABEL_6;
              }
            }

            else if (v19 <= 0x3B && ((1 << v19) & 0x800508400000000) != 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            if (v19 > 65286)
            {
              if ((v19 - 65287) <= 0x14 && ((1 << (v19 - 7)) & 0x1000A1) != 0)
              {
                goto LABEL_6;
              }

              v20 = 65362;
            }

            else
            {
              if ((v19 - 8217) <= 6 && ((1 << (v19 - 25)) & 0x79) != 0)
              {
                goto LABEL_6;
              }

              v20 = 12289;
            }

            if (v19 == v20)
            {
              goto LABEL_6;
            }
          }

          ++v18;
          v13 = 1;
          if (v17 == v18)
          {
            goto LABEL_6;
          }
        }
      }
    }
  }

  v13 = 0;
LABEL_6:

  return v13;
}

BOOL TSCESymbolTable::isPoorVariableName(TSCESymbolTable *this, NSString *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_functionNameForLocalizedString_(this->_locale, a2, a2, a4);
  v5 = v4 != 0;

  return v5;
}

TSUCellCoord *TSCESymbolTable::convertToExcelAcceptableIdentifier(TSCESymbolTable *this, NSString *a2)
{
  v2 = a2;
  v4 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v2, v3, @" ", @"_");

  v5 = TSUCellCoord::coordFromString(v4, 0x3E8);
  if (v5 != 0x7FFFFFFF && (v5 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v8 = objc_msgSend_stringByAppendingString_(@"_", v6, v4, v7);

    v4 = v8;
  }

  return v4;
}

id TSCESymbolTable::description(TSCESymbolTable *this, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], a2, @"<TSCESymbolTable %p>: \n", a4, this);
  p_first_node = &this->_symbolTableMap.__table_.__first_node_;
  for (i = 1; ; i = 0)
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    if ((i & 1) == 0)
    {
      objc_msgSend_appendString_(v7, v5, @"\n", v6);
    }

    objc_msgSend_appendFormat_(v7, v5, @"%@: %u", v6, p_first_node[2].__next_, LODWORD(p_first_node[3].__next_));
  }

  return v7;
}

uint64_t TSCESymbolTable::beginScope(TSCESymbolTable *this)
{
  memset(v2, 0, sizeof(v2));
  v3 = 1065353216;
  sub_221386F9C(&this->_undoSymbolTableMaps, v2);
  return sub_2210C82EC(v2);
}

uint64_t sub_221386F9C(unint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_221387924(a1, a2);
  }

  else
  {
    result = sub_221088030(v3, a2) + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t TSCESymbolTable::endScope(TSCESymbolTable *this, const char *a2, uint64_t a3, uint64_t a4)
{
  end = this->_undoSymbolTableMaps.__end_;
  if (this->_undoSymbolTableMaps.__begin_ == end)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCESymbolTable::endScope()", a4);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCESymbolTable.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 386, 0, "Calling endScope() without beginScope()");

    v27 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v27, v24, v25, v26);
  }

  else
  {
    sub_221387610(v30, end - 40);
    for (i = v31; i; i = *i)
    {
      v29 = *(i + 6);
      if (v29)
      {
        v9 = i[2];
        v13 = objc_msgSend_locale(this->_locale, v10, v11, v12);
        v28 = objc_msgSend_stringByFoldingWithOptions_locale_(v9, v14, 385, v13);

        LODWORD(v13) = v29;
        v32 = &v28;
        *(sub_221387328(&this->_symbolTableMap.__table_.__bucket_list_.__ptr_, &v28, &unk_2217E1890, &v32) + 6) = v13;
        v15 = v28;
        v32 = &v29;
        v16 = sub_2212E351C(&this->_identifierMap.__table_.__bucket_list_.__ptr_, &v29, &unk_2217E1890, &v32);
        objc_storeStrong(v16 + 3, v15);
      }

      else
      {
        sub_221387B68(&this->_symbolTableMap.__table_.__bucket_list_.__ptr_, i + 2, v6, v7);
        sub_221387BB4(&this->_identifierMap.__table_.__bucket_list_.__ptr_, &v29);
      }
    }

    this->_undoSymbolTableMaps.__end_ = sub_2210C82EC(this->_undoSymbolTableMaps.__end_ - 40);
    return sub_2210C82EC(v30);
  }
}

uint64_t **sub_221387218(void *a1, id *a2, uint64_t a3, uint64_t a4)
{
  if (*a2)
  {
    v6 = objc_msgSend_hash(*a2, a2, a3, a4);
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v13 == v6)
    {
      if (objc_msgSend_isEqualToString_(i[2], a2, *a2, a4))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t **sub_221387328(void *a1, id *a2, uint64_t a3, id **a4)
{
  if (*a2)
  {
    v6 = objc_msgSend_hash(*a2, a2, a3, a4);
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if ((objc_msgSend_isEqualToString_(v12[2], a2, *a2, a4) & 1) == 0)
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_2213875A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2213875C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2213875C4(uint64_t a1)
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

uint64_t sub_221387610(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_221387688(a1, i + 2, (i + 2), v4);
  }

  return a1;
}

uint64_t **sub_221387688(void *a1, id *a2, uint64_t a3, uint64_t a4)
{
  if (*a2)
  {
    v6 = objc_msgSend_hash(*a2, a2, a3, a4);
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if ((objc_msgSend_isEqualToString_(v12[2], a2, *a2, a4) & 1) == 0)
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_221387908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2213875C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_221387924(unint64_t *a1, uint64_t *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_22107C148();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_221387A50(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  sub_221088030(40 * v2, a2);
  v15 = 40 * v2 + 40;
  v7 = a1[1];
  v8 = 40 * v2 + *a1 - v7;
  sub_221387AA8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_221387B18(&v13);
  return v12;
}

void sub_221387A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_221387B18(va);
  _Unwind_Resume(a1);
}

void sub_221387A50(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_22107C238();
}

void sub_221387AA8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_221088030(a4, v7);
      v7 += 5;
      a4 = v8 + 40;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_2210C82EC(v6);
      v6 += 5;
    }
  }
}

uint64_t sub_221387B18(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_2210C82EC(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t **sub_221387B68(void *a1, id *a2, uint64_t a3, uint64_t a4)
{
  result = sub_221387218(a1, a2, a3, a4);
  if (result)
  {
    sub_221087680(a1, result, v6);
    sub_2213875C4(v6);
    return 1;
  }

  return result;
}

uint64_t *sub_221387BB4(void *a1, unsigned int *a2)
{
  result = sub_2211DC534(a1, a2);
  if (result)
  {
    sub_221087680(a1, result, v4);
    sub_221087E7C(v4);
    return 1;
  }

  return result;
}

uint64_t sub_221387C00(double a1)
{
  v1 = fabs(a1);
  if (v1 >= 1.0)
  {
    if (v1 >= 60.0)
    {
      if (v1 >= 3600.0)
      {
        if (v1 >= 86400.0 || v1 < 3600.0)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 5;
      }
    }

    else
    {
      return 6;
    }
  }

  else
  {
    return 7;
  }
}

uint64_t sub_221387C78(char a1)
{
  if ((a1 & 0x10) != 0)
  {
    v1 = 6;
  }

  else
  {
    v1 = 7;
  }

  if ((a1 & 8) != 0)
  {
    v2 = 5;
  }

  else
  {
    v2 = v1;
  }

  if ((a1 & 4) != 0)
  {
    v3 = 4;
  }

  else
  {
    v3 = v2;
  }

  if ((a1 & 2) != 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  if (a1)
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_221387CBC(unsigned int a1)
{
  v1 = 0x2010080402011010uLL >> (8 * a1);
  if (a1 >= 8)
  {
    LOBYTE(v1) = 16;
  }

  return v1 & 0x3F;
}

unint64_t __C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result & 0xFFFF00000000;
  v4 = a2 & 0xFFFF00000000;
  if (result != 0x7FFFFFFFLL || v3 == 0x7FFF00000000 || v4 == 0x7FFF00000000)
  {
    if (result != 0x7FFFFFFFLL && v3 == 0x7FFF00000000 && v4 == 0x7FFF00000000 && a2 != 0x7FFFFFFFLL)
    {
      return a3 & 0xFFFF00000000 | result;
    }
  }

  else if (a2 == 0x7FFFFFFFLL)
  {
    return a3 | v3;
  }

  return result;
}

uint64_t sub_221387E00(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = result & 0xFFFF00000000;
  v11 = a2 & 0xFFFF00000000;
  if (result != 0x7FFFFFFFLL || v10 == 0x7FFF00000000 || v11 == 0x7FFF00000000)
  {
    if (result != 0x7FFFFFFFLL && v10 == 0x7FFF00000000 && v11 == 0x7FFF00000000 && a2 != 0x7FFFFFFFLL)
    {
      if (a3 == 1)
      {
        return (a4 + (a10 << 32)) & 0xFFFF00000000 | result;
      }

      else
      {
        return a6 & 0xFFFF00000000 | result;
      }
    }
  }

  else if (a2 == 0x7FFFFFFFLL)
  {
    v12 = a6 | v10;
    v13 = a4 | v10;
    if (a3 == 1)
    {
      return v13;
    }

    else
    {
      return v12;
    }
  }

  return result;
}

id sub_221387F30(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v25);
  v8 = objc_msgSend_const_astNodeArray(v3, v5, v6, v7);
  sub_2212BC6C4(v21, v8, &v25);
  TSCEASTStreamIterator::rewrite(v21, v9, v10, v11);
  v15 = objc_msgSend_columnRowUIDMap(v4, v12, v13, v14);
  v18 = objc_msgSend_cellRegionForUIDRange_(v15, v16, v22, v17);

  v21[0] = &unk_2834A4000;
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v21, v19);

  return v18;
}

void sub_221388028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22138805C(&a9, v13);

  _Unwind_Resume(a1);
}

void sub_22138805C(TSCEASTStreamIterator *this, TSCEASTNodeArray *a2)
{
  *this = &unk_2834A4000;
  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    *(this + 18) = v4;
    operator delete(v4);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(this, a2);
}

void sub_221388304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221388330(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2213889B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSTHiddenStateExtent;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_22138AD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  v31 = *(v28 - 88);
  if (v31)
  {
    *(v28 - 80) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void sub_22138B8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22138BC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22138C5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22138C7AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22138D0D0(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_22138E33C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22138E9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  TSUIndexSet::~TSUIndexSet((v16 - 120));

  _Unwind_Resume(a1);
}

void sub_22138F538(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_22138F630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_221390F58(uint64_t a1, const char *a2, const char *a3, uint64_t a4)
{
  v13 = a2;
  v14 = a3;
  result = objc_msgSend_previousGroupNodeUidForUpdatedGroupNodeUid_(*(a1 + 32), a2, &v13, a4);
  if (result != v13 || v6 != v14)
  {
    v9 = objc_msgSend_containsUuid_(*(*(a1 + 40) + 136), v6, result, v6);
    v10 = *(*(a1 + 40) + 136);
    if (v9)
    {
      result = objc_msgSend_addUUID_(v10, v8, v13, v14);
      if (result)
      {
        v12 = 48;
LABEL_10:
        result = objc_msgSend_addUUID_(*(a1 + v12), v11, v13, v14);
      }
    }

    else
    {
      result = objc_msgSend_removeUUID_(v10, v8, v13, v14);
      if (result)
      {
        v12 = 56;
        goto LABEL_10;
      }
    }

    *(*(a1 + 40) + 497) = 1;
  }

  return result;
}

void sub_221391434(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  v8 = objc_msgSend_groupUid(v3, v5, v6, v7);
  objc_msgSend_removeUUID_(v4, v9, v8, v9);
}

void sub_22139209C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, id obj, void *a16)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_2213932AC(void *a1, void *a2, _BYTE *a3)
{
  v27 = a2;
  v8 = objc_msgSend_cell(v27, v5, v6, v7);
  v12 = v8;
  if (v8)
  {
    v13 = objc_msgSend_valueType(v8, v9, v10, v11);
    if (v13 == 7)
    {
      v17 = objc_msgSend_durationFormat(v12, v14, v15, v16);
      v21 = objc_msgSend_asDurationFormat(v17, v18, v19, v20);
      v25 = objc_msgSend_durationUnitLargest(v21, v22, v23, v24);

      v26 = *(a1[5] + 8);
      if (*(*(a1[4] + 8) + 24))
      {
        if (*(v26 + 24) != v25)
        {
          *(*(a1[6] + 8) + 24) = 0;
          *a3 = 1;
        }
      }

      else
      {
        *(v26 + 24) = v25;
        *(*(a1[4] + 8) + 24) = 1;
      }
    }

    else if ((v13 & 0xFFFFFFF7) == 2)
    {
      *(*(a1[7] + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

void sub_221393800(_Unwind_Exception *a1)
{
  _Block_object_dispose((v4 - 160), 8);
  TSUIndexSet::~TSUIndexSet((v3 + 48));

  _Unwind_Resume(a1);
}

uint64_t sub_2213938A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v2 = a1 + 48;
  *v2 = v3 | 3;
  *&v4.f64[0] = 0x8000000080000000;
  *&v4.f64[1] = 0x8000000080000000;
  *(v2 + 8) = vnegq_f64(v4);
  *(v2 + 24) = 0;
  return TSUIndexSet::operator=();
}

void *sub_2213938D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    if (*(*(a1 + 40) + 120) == 1)
    {
      a2 = objc_msgSend_viewRowIndexForBaseRowIndex_(v5, a2, a2, a4);
    }

    else
    {
      v6 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(v5, a2, a2, a4);
      if (v6 == 0x7FFF)
      {
        a2 = 0x7FFFFFFFLL;
      }

      else
      {
        a2 = v6;
      }
    }
  }

  result = objc_msgSend_showAtViewIndex_forAction_(*(a1 + 40), a2, a2, 2);
  if (result)
  {
    v8 = (*(*(a1 + 48) + 8) + 48);

    return TSUIndexSet::addIndex(v8);
  }

  return result;
}

void *sub_22139397C(uint64_t a1, const char *a2)
{
  result = objc_msgSend_showAtViewIndex_forAction_(*(a1 + 32), a2, a2, 2);
  if (result)
  {
    v4 = (*(*(a1 + 40) + 8) + 48);

    return TSUIndexSet::addIndex(v4);
  }

  return result;
}

void *sub_2213939E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    if (*(*(a1 + 40) + 120) == 1)
    {
      a2 = objc_msgSend_viewRowIndexForBaseRowIndex_(v5, a2, a2, a4);
    }

    else
    {
      v6 = objc_msgSend_viewColumnIndexForBaseColumnIndex_(v5, a2, a2, a4);
      if (v6 == 0x7FFF)
      {
        a2 = 0x7FFFFFFFLL;
      }

      else
      {
        a2 = v6;
      }
    }
  }

  result = objc_msgSend_hideAtViewIndex_forAction_(*(a1 + 40), a2, a2, 2);
  if (result)
  {
    v8 = (*(*(a1 + 48) + 8) + 48);

    return TSUIndexSet::addIndex(v8);
  }

  return result;
}

void *sub_221393A88(uint64_t a1, const char *a2)
{
  result = objc_msgSend_hideAtViewIndex_forAction_(*(a1 + 32), a2, a2, 2);
  if (result)
  {
    v4 = (*(*(a1 + 40) + 8) + 48);

    return TSUIndexSet::addIndex(v4);
  }

  return result;
}

void sub_221393AEC(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 40) | ((*(a2 + 8) - *a2) << 32)) + 0x100000000;
  *&v3 = *a2;
  *(&v3 + 1) = v2;
  sub_221083454(*(a1 + 32) + 472, &v3);
}

void sub_221393B3C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8) - *a2 + 1) | (*(a1 + 40) << 32);
  *&v3 = *a2 << 32;
  *(&v3 + 1) = v2;
  sub_221083454(*(a1 + 32) + 472, &v3);
}

void sub_221393FD0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_221394080(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_221394330(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v7 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(*(a1 + 32), v5, *(a1 + 40), v6);
  v11 = objc_msgSend_needsThreshold(*(a1 + 32), v8, v9, v10);
  v12 = (*(v4 + 16))(v4, v3, v7, v11);

  return v12;
}

void sub_22139464C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20)
{
  sub_22107C800(&a9, a10);
  sub_22107C860(v21 + 16, a15);
  sub_22107C860(&a19, a20);
  _Unwind_Resume(a1);
}

void sub_221394AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221394AEC(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v13 = v5;
  v10 = objc_msgSend_baseColumnIndex(v5, v7, v8, v9);
  if (objc_msgSend_containsIndex_(v6, v11, v10, v12))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void *sub_2213958D0(void *a1, void *a2, uint64_t a3, _OWORD **a4)
{
  v4 = a2[1];
  v5 = v4 ^ *a2;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ *a2;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_22;
    }

LABEL_21:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != *a2 || v10[3] != v4)
  {
    goto LABEL_21;
  }

  return v10;
}

void *sub_221395B0C(void *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    objc_msgSend_getUUIDBytes_(v3, v4, a1, v5);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return a1;
}

uint64_t sub_221395B64(unsigned __int8 *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!sub_221395C78(a1, a2, a3, a4))
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Corrupt cell memory. Crashing!", "UInt16 TSTCellStorageSizePreBNC(TSTCellStoragePreBNC *)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", 31);
    v9 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "UInt16 TSTCellStorageSizePreBNC(TSTCellStoragePreBNC *)", v11);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v12, v15, 31, 1, "Corrupt cell memory. Crashing!");

    TSUCrashBreakpoint();
    abort();
  }

  if (a1)
  {
    v6 = *(a1 + 2);
    if (*a1 >= 2u)
    {
      v7 = *(a1 + 5);
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_7:

  return sub_221395D54(v6, v7, v5);
}

BOOL sub_221395C78(unsigned __int8 *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (v4 >= 5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSTCellStorageVersionCheckPreBNC(TSTCellStoragePreBNC *)", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 319, 0, "Can't parse cell storage header version %d as PreBNC!", *a1);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v12, v13, v14);
  }

  return v4 < 5;
}

uint64_t sub_221395D54(unsigned int a1, unsigned int a2, uint16x8_t a3)
{
  LOWORD(v3) = 12;
  if (a2 | a1)
  {
    v5 = sub_22139603C(a1, a3);
    if (a2)
    {
      v6 = 16;
    }

    else
    {
      v6 = 12;
    }

    v7 = vdup_n_s16(a2);
    v8 = vshl_u16(v7, 0xFFFEFFFDFFFFFFFFLL);
    v8.i16[1] = vshl_u16(v7, 0x2000300010001).i16[1];
    v9 = vand_s8(v8, 0x4000400040004);
    v9.i16[0] = vaddv_s16(v9);
    return (v9.i32[0] + (a2 & 4) + ((a2 >> 4) & 4) + ((a2 >> 5) & 4) + v5 + v6);
  }

  return v3;
}

uint64_t sub_221395DEC(void *a1, int *a2)
{
  v3 = sub_221395E34(a1, a2);
  v4 = sub_221395FC4(a2);

  return sub_221395D54(v3, v4, v5);
}

uint64_t sub_221395E34(void *a1, int *a2)
{
  v3 = a1;
  hasCellStyle = objc_msgSend_hasCellStyle(v3, v4, v5, v6);
  hasTextStyle = objc_msgSend_hasTextStyle(v3, v8, v9, v10);
  hasConditionalStyle = objc_msgSend_hasConditionalStyle(v3, v12, v13, v14);
  v16 = *a2;
  hasFormula = objc_msgSend_hasFormula(v3, v17, v18, v19);
  hasFormulaSyntaxError = objc_msgSend_hasFormulaSyntaxError(v3, v21, v22, v23);
  hasRichText = objc_msgSend_hasRichText(v3, v25, v26, v27);
  hasCommentStorage = objc_msgSend_hasCommentStorage(v3, v29, v30, v31);
  hasImportWarningSet = objc_msgSend_hasImportWarningSet(v3, v33, v34, v35);
  if (hasCellStyle)
  {
    v40 = 2;
  }

  else
  {
    v40 = 0;
  }

  if (hasTextStyle)
  {
    v40 |= 0x80u;
  }

  if (hasConditionalStyle)
  {
    v40 |= 0xC00u;
  }

  if (v16)
  {
    v40 |= 4u;
  }

  if (hasFormula)
  {
    v40 |= 8u;
  }

  if (hasFormulaSyntaxError)
  {
    v40 |= 0x100u;
  }

  if (hasRichText)
  {
    v40 |= 0x200u;
  }

  if (hasCommentStorage)
  {
    v40 |= 0x1000u;
  }

  if (hasImportWarningSet)
  {
    v41 = v40 | 0x2000;
  }

  else
  {
    v41 = v40;
  }

  v42 = objc_msgSend_valueType(v3, v37, v38, v39);
  if (v42 == 10)
  {
    v43 = 2;
  }

  else
  {
    v44 = a2[8];
    v45 = v41 | 0x10;
    if (v42 != 3)
    {
      v45 = v41;
    }

    if (v44)
    {
      v43 = 2;
    }

    else
    {
      v43 = v42;
    }

    if (!v44)
    {
      v41 = v45;
    }
  }

  v46 = (v43 & 0xFB) == 2 || v43 == 7;
  v47 = v41 | 0x20;
  if (!v46)
  {
    v47 = v41;
  }

  if (v43 == 5)
  {
    v48 = v47 | 0x40;
  }

  else
  {
    v48 = v47;
  }

  return v48;
}

uint64_t sub_221395FC4(_DWORD *a1)
{
  v1 = a1[1];
  v2 = v1 == 0;
  v3 = v1 != 0;
  if (v2)
  {
    v4 = 8;
  }

  else
  {
    v4 = 9;
  }

  if (a1[2])
  {
    v3 = v4;
  }

  if (a1[3])
  {
    v3 |= 2u;
  }

  if (a1[4])
  {
    v3 |= 4u;
  }

  if (a1[7])
  {
    v3 |= 0x10u;
  }

  if (a1[6])
  {
    v3 |= 0x20u;
  }

  if (a1[5])
  {
    v3 |= 0x40u;
  }

  if (a1[8])
  {
    v3 |= 0x80u;
  }

  return v3;
}

uint64_t sub_22139603C(unsigned int a1, uint16x8_t a2)
{
  if (a1)
  {
    a2.i32[0] = a1;
    v2 = vshlq_u16(vdupq_n_s16(a1), xmmword_2217E18C0);
    v2.i16[0] = vshlq_u16(a2, xmmword_2217E18B0).u16[0];
    v3.i64[0] = 0x4000400040004;
    v3.i64[1] = 0x4000400040004;
    v4 = vandq_s8(v2, v3);
    v4.i16[0] = vaddvq_s16(v4);
    return (v4.i32[0] + ((a1 >> 5) & 4) + (a1 & 4) + ((a1 >> 2) & 4) + ((a1 >> 2) & 8) + ((a1 >> 3) & 8));
  }

  else
  {
    LOWORD(v5) = 0;
  }

  return v5;
}

void sub_2213960B8(unsigned __int8 *a1, void *a2)
{
  v48 = a2;
  if (*a1 >= 2u)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "void TSTV1CellStorageToCell(TSTV1CellStorage *, TSTCell_PreBNC *__strong)", v4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 329, 0, "wrong version of the storage used here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  objc_msgSend_setValueType_(v48, v3, a1[2], v4);
  objc_msgSend_setCellFlags_(v48, v14, *(a1 + 3), v15);
  v20 = *(a1 + 1);
  v21 = v20;
  if ((v20 & 2) != 0)
  {
    objc_msgSend_setCellStyleID_(v48, v16, *(a1 + 2), v18);
    v23 = v21 & 0xFFFC;
    v22 = 4;
    if ((v21 & 0x80) == 0)
    {
LABEL_5:
      if ((v23 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v22 = 0;
    v23 = v20 & 0xFFFE;
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_5;
    }
  }

  objc_msgSend_setTextStyleID_(v48, v16, *&a1[v22 + 8], v18);
  v22 += 4;
  v23 = v23 & 0xFF7E;
  if ((v23 & 4) == 0)
  {
LABEL_6:
    if ((v23 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  objc_msgSend_setCurrentFormatID_(v48, v16, *&a1[v22 + 8], v18);
  v22 += 4;
  v23 = v23 & 0xFFFFFFFB;
  if ((v23 & 8) == 0)
  {
LABEL_7:
    if ((v23 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  objc_msgSend_setFormulaID_(v48, v16, *&a1[v22 + 8], v18);
  v22 += 4;
  v23 = v23 & 0xFFF7;
  if ((v23 & 0x100) == 0)
  {
LABEL_8:
    if ((v23 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  objc_msgSend_setFormulaSyntaxErrorID_(v48, v16, *&a1[v22 + 8], v18);
  v22 += 4;
  v23 = v23 & 0xFEFF;
  if ((v23 & 0x200) == 0)
  {
LABEL_9:
    if ((v23 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  objc_msgSend_setRichTextID_(v48, v16, *&a1[v22 + 8], v18);
  v22 += 4;
  v23 = v23 & 0xFDFF;
  if ((v23 & 0x1000) == 0)
  {
LABEL_10:
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  objc_msgSend_setCommentStorageID_(v48, v16, *&a1[v22 + 8], v18);
  v22 += 4;
  v23 = v23 & 0xEFFF;
  if ((v23 & 0x10) == 0)
  {
LABEL_11:
    if ((v23 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  objc_msgSend_setStringID_(v48, v16, *&a1[v22 + 8], v18);
  v22 += 4;
  v23 = v23 & 0xFFEF;
  if ((v23 & 0x20) == 0)
  {
LABEL_12:
    if ((v23 & 0x40) == 0)
    {
      goto LABEL_13;
    }

LABEL_29:
    v26 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v16, v17, v18, *&a1[v22 + 8]);
    objc_msgSend_setDateValue_(v48, v27, v26, v28);

    v22 += 8;
    v23 = v23 & 0xFFBF;
    if (!v23)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_23:
  v24 = *&a1[v22 + 8];
  v25 = a1[2];
  if (v25 == 7)
  {
    objc_msgSend_setDurationTimeIntervalValue_(v48, v16, v17, v18, v24);
  }

  else if (v25 == 6)
  {
    objc_msgSend_setBoolValue_(v48, v16, v24 != 0.0, v18);
  }

  else
  {
    objc_msgSend_setDoubleValue_(v48, v16, v17, v18, v24);
  }

  v22 += 8;
  v23 = v23 & 0xFFDF;
  if ((v23 & 0x40) != 0)
  {
    goto LABEL_29;
  }

LABEL_13:
  if (v23)
  {
LABEL_30:
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "void TSTV1CellStorageToCell(TSTV1CellStorage *, TSTCell_PreBNC *__strong)", v18);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 428, 0, "Failed to process all storage elements in TSTV1CellStorageToCell! Starting flags:%u Final flags:%u", v21, v23);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37);
  }

LABEL_31:
  if (*(a1 + 2))
  {
    v38 = (sub_22139603C(*(a1 + 2), v19) + 8);
  }

  else
  {
    v38 = 8;
  }

  if (v22 + 8 != v38)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "void TSTV1CellStorageToCell(TSTV1CellStorage *, TSTCell_PreBNC *__strong)", v18);
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v42);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v44, v40, v43, 431, 0, "Size miscalculation!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47);
  }
}

void sub_2213964BC(unsigned __int8 *a1, void *a2)
{
  v54 = a2;
  if (*a1 >= 4u)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "void TSTV3CellStorageToCell(TSTV3CellStorage *, TSTCell_PreBNC *__strong)", v4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 455, 0, "wrong version of the storage used here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  objc_msgSend_setValueType_(v54, v3, a1[2], v4);
  objc_msgSend_setCellFlags_(v54, v14, *(a1 + 3), v15);
  objc_msgSend_setExplicitFormatFlags_(v54, v16, *(a1 + 4), v17);
  v22 = *(a1 + 4);
  v23 = v22;
  if ((v22 & 2) != 0)
  {
    objc_msgSend_setCellStyleID_(v54, v18, *(a1 + 3), v20);
    v25 = v22 & 0xFFFD;
    v24 = 4;
  }

  else
  {
    v24 = 0;
    v25 = *(a1 + 4);
  }

  v26 = v54;
  if ((v25 & 0x80) != 0)
  {
    objc_msgSend_setTextStyleID_(v54, v18, *&a1[v24 + 12], v20);
    v24 += 4;
    v25 = v25 & 0xFF7F;
    v26 = v54;
  }

  if ((v25 & 0x400) != 0)
  {
    objc_msgSend_setConditionalStyleID_(v26, v18, *&a1[v24 + 12], v20);
    v24 += 4;
    v25 = v25 & 0xFBFF;
    v26 = v54;
  }

  if ((v25 & 0x800) != 0)
  {
    objc_msgSend_setConditionalStyleAppliedRule_(v26, v18, a1[v24 + 12], v20);
    v24 += 4;
    v25 = v25 & 0xF7FF;
    v26 = v54;
  }

  if ((v25 & 4) != 0)
  {
    objc_msgSend_setCurrentFormatID_(v26, v18, *&a1[v24 + 12], v20);
    v24 += 4;
    v25 = v25 & 0xFFFB;
    v26 = v54;
  }

  if ((v25 & 8) != 0)
  {
    objc_msgSend_setFormulaID_(v26, v18, *&a1[v24 + 12], v20);
    v24 += 4;
    v25 = v25 & 0xFFF7;
    v26 = v54;
  }

  if ((v25 & 0x100) != 0)
  {
    objc_msgSend_setFormulaSyntaxErrorID_(v26, v18, *&a1[v24 + 12], v20);
    v24 += 4;
    v25 = v25 & 0xFEFF;
    v26 = v54;
  }

  if ((v25 & 0x200) != 0)
  {
    objc_msgSend_setRichTextID_(v26, v18, *&a1[v24 + 12], v20);
    v24 += 4;
    v25 = v25 & 0xFDFF;
    v26 = v54;
  }

  if ((v25 & 0x1000) != 0)
  {
    objc_msgSend_setCommentStorageID_(v26, v18, *&a1[v24 + 12], v20);
    v24 += 4;
    v25 = v25 & 0xEFFF;
    v26 = v54;
  }

  if ((v25 & 0x2000) != 0)
  {
    objc_msgSend_setImportWarningSetID_(v26, v18, *&a1[v24 + 12], v20);
    v24 += 4;
    v25 = v25 & 0xDFFF;
    v26 = v54;
  }

  if ((v25 & 0x10) != 0)
  {
    objc_msgSend_setStringID_(v26, v18, *&a1[v24 + 12], v20);
    v24 += 4;
    v25 = v25 & 0xFFEF;
    v26 = v54;
  }

  if ((v25 & 0x20) != 0)
  {
    v27 = *&a1[v24 + 12];
    v28 = a1[2];
    if (v28 == 7)
    {
      objc_msgSend_setDurationTimeIntervalValue_(v26, v18, v19, v20, v27);
    }

    else if (v28 == 6)
    {
      objc_msgSend_setBoolValue_(v26, v18, v27 != 0.0, v20);
    }

    else
    {
      objc_msgSend_setDoubleValue_(v26, v18, v19, v20, v27);
    }

    v24 += 8;
    v25 = v25 & 0xFFDF;
    v26 = v54;
  }

  if ((v25 & 0x40) != 0)
  {
    v29 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v18, v19, v20, *&a1[v24 + 12]);
    objc_msgSend_setDateValue_(v54, v30, v29, v31);

    v24 += 8;
    v25 = v25 & 0xFFBF;
    v26 = v54;
  }

  v32 = HIWORD(v22);
  if ((v22 & 0x1000000000000) != 0)
  {
    objc_msgSend_setNumberFormatID_(v26, v18, *&a1[v24 + 12], v20);
    v24 += 4;
    v33 = HIWORD(v22) & 0xFFFE;
    v26 = v54;
    if ((v22 & 0x8000000000000) == 0)
    {
LABEL_37:
      if ((v33 & 2) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v33 = HIWORD(v22);
    if ((v22 & 0x8000000000000) == 0)
    {
      goto LABEL_37;
    }
  }

  objc_msgSend_setCurrencyFormatID_(v26, v18, *&a1[v24 + 12], v20);
  LOWORD(v24) = v24 + 4;
  v33 = v33 & 0xFFFFFFF7;
  v26 = v54;
  if ((v33 & 2) == 0)
  {
LABEL_38:
    if ((v33 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_47;
  }

LABEL_46:
  objc_msgSend_setDateFormatID_(v26, v18, *&a1[v24 + 12], v20);
  LOWORD(v24) = v24 + 4;
  v33 = v33 & 0xFFFD;
  v26 = v54;
  if ((v33 & 4) == 0)
  {
LABEL_39:
    if ((v33 & 0x10) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_48;
  }

LABEL_47:
  objc_msgSend_setDurationFormatID_(v26, v18, *&a1[v24 + 12], v20);
  LOWORD(v24) = v24 + 4;
  v33 = v33 & 0xFFFB;
  v26 = v54;
  if ((v33 & 0x10) == 0)
  {
LABEL_40:
    if ((v33 & 0x20) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_49;
  }

LABEL_48:
  objc_msgSend_setControlFormatID_(v26, v18, *&a1[v24 + 12], v20);
  LOWORD(v24) = v24 + 4;
  v33 = v33 & 0xFFEF;
  v26 = v54;
  if ((v33 & 0x20) == 0)
  {
LABEL_41:
    if ((v33 & 0x40) == 0)
    {
      goto LABEL_42;
    }

LABEL_50:
    objc_msgSend_setBaseFormatID_(v26, v18, *&a1[v24 + 12], v20);
    LOWORD(v24) = v24 + 4;
    v33 = v33 & 0xFFBF;
    v26 = v54;
    if ((v33 & 0x80) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_49:
  objc_msgSend_setCustomFormatID_(v26, v18, *&a1[v24 + 12], v20);
  LOWORD(v24) = v24 + 4;
  v33 = v33 & 0xFFDF;
  v26 = v54;
  if ((v33 & 0x40) != 0)
  {
    goto LABEL_50;
  }

LABEL_42:
  if ((v33 & 0x80) != 0)
  {
LABEL_51:
    objc_msgSend_setMultipleChoiceListFormatID_(v26, v18, *&a1[v24 + 12], v20);
    LOWORD(v24) = v24 + 4;
    v33 = v33 & 0xFF7F;
  }

LABEL_52:
  if (v33 | v25)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "void TSTV3CellStorageToCell(TSTV3CellStorage *, TSTCell_PreBNC *__strong)", v20);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v39, v35, v38, 629, 0, "Failed to process all storage elements in TSTV3CellStorageToCell! Starting flags:%u Final flags:%u Starting format flags:%u Final format flags:%u", v23, v25, v32, v33);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42);
  }

  if (v24 + 12 != sub_221395D54(*(a1 + 4), HIWORD(*(a1 + 4)), v21))
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "void TSTV3CellStorageToCell(TSTV3CellStorage *, TSTCell_PreBNC *__strong)", v44);
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v48);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v50, v46, v49, 632, 0, "Size miscalculation!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53);
  }
}

void sub_221396A38(unsigned __int8 *a1, void *a2)
{
  v51 = a2;
  objc_msgSend_clear(v51, v3, v4, v5);
  if (!a1 || !sub_221395C78(a1, v6, v7, v8))
  {
    goto LABEL_63;
  }

  v11 = *a1;
  if (v11 <= 1)
  {
    sub_2213960B8(a1, v51);
    goto LABEL_63;
  }

  if (v11 <= 3)
  {
    sub_2213964BC(a1, v51);
    goto LABEL_63;
  }

  objc_msgSend_setValueType_(v51, v9, a1[1], v10);
  objc_msgSend_setCellFlags_(v51, v12, *(a1 + 3), v13);
  objc_msgSend_setExplicitFormatFlags_(v51, v14, *(a1 + 4), v15);
  v20 = *(a1 + 1);
  v21 = *(a1 + 5);
  if ((*(a1 + 1) & 2) != 0)
  {
    objc_msgSend_setCellStyleID_(v51, v16, *(a1 + 3), v18);
    v23 = v20 & 0xFFFFFFFD;
    v22 = 4;
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v22 = 0;
  v23 = *(a1 + 1);
  if ((*(a1 + 1) & 0x80) != 0)
  {
LABEL_11:
    objc_msgSend_setTextStyleID_(v51, v16, *&a1[v22 + 12], v18);
    v22 += 4;
    v23 = v23 & 0xFF7F;
  }

LABEL_12:
  if ((v23 & 0x400) != 0)
  {
    objc_msgSend_setConditionalStyleID_(v51, v16, *&a1[v22 + 12], v18);
    v22 += 4;
    v23 = v23 & 0xFBFF;
  }

  if ((v23 & 0x800) != 0)
  {
    objc_msgSend_setConditionalStyleAppliedRule_(v51, v16, a1[v22 + 12], v18);
    v22 += 4;
    v23 = v23 & 0xF7FF;
  }

  if ((v23 & 4) != 0)
  {
    objc_msgSend_setCurrentFormatID_(v51, v16, *&a1[v22 + 12], v18);
    v22 += 4;
    v23 = v23 & 0xFFFB;
  }

  if ((v23 & 8) != 0)
  {
    objc_msgSend_setFormulaID_(v51, v16, *&a1[v22 + 12], v18);
    v22 += 4;
    v23 = v23 & 0xFFF7;
  }

  if ((v23 & 0x100) != 0)
  {
    objc_msgSend_setFormulaSyntaxErrorID_(v51, v16, *&a1[v22 + 12], v18);
    v22 += 4;
    v23 = v23 & 0xFEFF;
  }

  if ((v23 & 0x200) != 0)
  {
    objc_msgSend_setRichTextID_(v51, v16, *&a1[v22 + 12], v18);
    v22 += 4;
    v23 = v23 & 0xFDFF;
  }

  if ((v23 & 0x1000) != 0)
  {
    objc_msgSend_setCommentStorageID_(v51, v16, *&a1[v22 + 12], v18);
    v22 += 4;
    v23 = v23 & 0xEFFF;
  }

  if ((v23 & 0x2000) != 0)
  {
    objc_msgSend_setImportWarningSetID_(v51, v16, *&a1[v22 + 12], v18);
    v22 += 4;
    v23 = v23 & 0xDFFF;
  }

  if ((v23 & 0x10) != 0)
  {
    objc_msgSend_setStringID_(v51, v16, *&a1[v22 + 12], v18);
    v22 += 4;
    v23 = v23 & 0xFFEF;
  }

  if ((v23 & 0x20) != 0)
  {
    v24 = *&a1[v22 + 12];
    v25 = a1[1];
    if (v25 == 7)
    {
      objc_msgSend_setDurationTimeIntervalValue_(v51, v16, v17, v18, v24);
    }

    else if (v25 == 6)
    {
      objc_msgSend_setBoolValue_(v51, v16, v24 != 0.0, v18);
    }

    else
    {
      objc_msgSend_setDoubleValue_(v51, v16, v17, v18, v24);
    }

    v22 += 8;
    v23 = v23 & 0xFFDF;
  }

  if ((v23 & 0x40) != 0)
  {
    v26 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v16, v17, v18, *&a1[v22 + 12]);
    objc_msgSend_setDateValue_(v51, v27, v26, v28);

    v22 += 8;
    v23 = v23 & 0xFFBF;
  }

  if ((v21 & 1) == 0)
  {
    v29 = v21;
    if ((v21 & 8) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  objc_msgSend_setNumberFormatID_(v51, v16, *&a1[v22 + 12], v18);
  v22 += 4;
  v29 = v21 & 0xFFFE;
  if ((v21 & 8) != 0)
  {
LABEL_43:
    objc_msgSend_setCurrencyFormatID_(v51, v16, *&a1[v22 + 12], v18);
    LOWORD(v22) = v22 + 4;
    v29 = v29 & 0xFFFFFFF7;
  }

LABEL_44:
  if ((v29 & 2) != 0)
  {
    objc_msgSend_setDateFormatID_(v51, v16, *&a1[v22 + 12], v18);
    LOWORD(v22) = v22 + 4;
    v29 = v29 & 0xFFFD;
  }

  if ((v29 & 4) != 0)
  {
    objc_msgSend_setDurationFormatID_(v51, v16, *&a1[v22 + 12], v18);
    LOWORD(v22) = v22 + 4;
    v29 = v29 & 0xFFFB;
  }

  if ((v29 & 0x10) != 0)
  {
    objc_msgSend_setControlFormatID_(v51, v16, *&a1[v22 + 12], v18);
    LOWORD(v22) = v22 + 4;
    v29 = v29 & 0xFFEF;
  }

  if ((v29 & 0x20) != 0)
  {
    objc_msgSend_setCustomFormatID_(v51, v16, *&a1[v22 + 12], v18);
    LOWORD(v22) = v22 + 4;
    v29 = v29 & 0xFFDF;
  }

  if ((v29 & 0x40) != 0)
  {
    objc_msgSend_setBaseFormatID_(v51, v16, *&a1[v22 + 12], v18);
    LOWORD(v22) = v22 + 4;
    v29 = v29 & 0xFFBF;
  }

  if ((v29 & 0x80) != 0)
  {
    objc_msgSend_setMultipleChoiceListFormatID_(v51, v16, *&a1[v22 + 12], v18);
    LOWORD(v22) = v22 + 4;
    v29 = v29 & 0xFF7F;
  }

  if (v29 | v23)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "void TSTCellStorageToCell_PreBNC(TSTCellStoragePreBNC *, TSTCell_PreBNC *__strong)", v18);
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v33);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v35, v31, v34, 853, 0, "Failed to process all storage elements in TSTCellStorageToCell! Starting flags:%u Final flags:%u Starting format flags:%u Final format flags:%u", v20, v23, v21, v29);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38);
  }

  if (*a1 < 2u)
  {
    v39 = 0;
  }

  else
  {
    v39 = *(a1 + 5);
  }

  if (v22 + 12 != sub_221395D54(*(a1 + 2), v39, v19))
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "void TSTCellStorageToCell_PreBNC(TSTCellStoragePreBNC *, TSTCell_PreBNC *__strong)", v41);
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v45);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v47, v43, v46, 856, 0, "Size miscalculation!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49, v50);
  }

LABEL_63:
}

void sub_221396F78(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = a1;
  *a2 = 4;
  v50 = v5;
  v9 = objc_msgSend_valueType(v5, v6, v7, v8);
  if (*(a3 + 32) || v9 == 10)
  {
    a2[1] = 2;
  }

  else
  {
    a2[1] = v9;
  }

  *(a2 + 2) = sub_221395E34(v50, a3);
  v13 = *(a2 + 2) & 0xFFFF0000FFFFFFFFLL | ((objc_msgSend_cellFlags(v50, v10, v11, v12) & 0xFFFFFFFDLL) << 32);
  *(a2 + 2) = v13;
  v17 = sub_221395FC4(a3);
  *(a2 + 5) = v17;
  *(a2 + 2) = v13 & 0xFFFFFFFFFFFFLL | (*(a3 + 36) << 48);
  v19 = WORD1(v13);
  if (((v13 >> 16) & 2) != 0)
  {
    *(a2 + 3) = objc_msgSend_cellStyleID(v50, v14, v15, v16);
    v21 = WORD1(v13) & 0xFFFD;
    v20 = 4;
    if ((v13 & 0x800000) == 0)
    {
LABEL_6:
      if ((v21 & 0x400) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v20 = 0;
    v21 = WORD1(v13);
    if ((v13 & 0x800000) == 0)
    {
      goto LABEL_6;
    }
  }

  *&a2[v20 + 12] = objc_msgSend_textStyleID(v50, v14, v15, v16);
  v20 += 4;
  v21 = v21 & 0xFF7F;
  if ((v21 & 0x400) == 0)
  {
LABEL_7:
    if ((v21 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  *&a2[v20 + 12] = objc_msgSend_conditionalStyleID(v50, v14, v15, v16);
  v20 += 4;
  v21 = v21 & 0xFBFF;
  if ((v21 & 0x800) == 0)
  {
LABEL_8:
    if ((v21 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_28:
  *&a2[v20 + 12] = objc_msgSend_conditionalStyleAppliedRule(v50, v14, v15, v16);
  v20 += 4;
  v21 = v21 & 0xF7FF;
  if ((v21 & 4) != 0)
  {
LABEL_9:
    *&a2[v20 + 12] = *a3;
    v20 += 4;
    v21 = v21 & 0xFFFB;
  }

LABEL_10:
  if ((v21 & 8) != 0)
  {
    *&a2[v20 + 12] = objc_msgSend_formulaID(v50, v14, v15, v16);
    v20 += 4;
    v21 = v21 & 0xFFF7;
  }

  if ((v21 & 0x100) != 0)
  {
    *&a2[v20 + 12] = objc_msgSend_formulaSyntaxErrorID(v50, v14, v15, v16);
    v20 += 4;
    v21 = v21 & 0xFEFF;
  }

  if ((v21 & 0x200) != 0)
  {
    *&a2[v20 + 12] = objc_msgSend_richTextID(v50, v14, v15, v16);
    v20 += 4;
    v21 = v21 & 0xFDFF;
  }

  if ((v21 & 0x1000) != 0)
  {
    *&a2[v20 + 12] = objc_msgSend_commentStorageID(v50, v14, v15, v16);
    v20 += 4;
    v21 = v21 & 0xEFFF;
  }

  if ((v21 & 0x2000) != 0)
  {
    *&a2[v20 + 12] = objc_msgSend_importWarningSetID(v50, v14, v15, v16);
    v20 += 4;
    v21 = v21 & 0xDFFF;
  }

  if ((v21 & 0x10) != 0)
  {
    *&a2[v20 + 12] = objc_msgSend_stringID(v50, v14, v15, v16);
    v20 += 4;
    v21 = v21 & 0xFFEF;
  }

  if ((v21 & 0x20) != 0)
  {
    if (*(a3 + 32))
    {
      *v18.i64 = objc_msgSend_popupChoiceIndex(v50, v14, v15, v16);
    }

    else
    {
      objc_msgSend_underlyingDoubleValue(v50, v14, v15, v16);
    }

    *&a2[v20 + 12] = v18.i64[0];
    v20 += 8;
    v21 = v21 & 0xFFDF;
  }

  if ((v21 & 0x40) != 0)
  {
    v22 = objc_msgSend_dateValue(v50, v14, v15, v16);
    objc_msgSend_timeIntervalSinceReferenceDate(v22, v23, v24, v25);
    v27 = v26;

    *&a2[v20 + 12] = v27;
    v20 += 8;
    v21 = v21 & 0xFFBF;
  }

  v28 = v17;
  if (v17)
  {
    *&a2[v20 + 12] = *(a3 + 4);
    v20 += 4;
    v28 = v17 & 0xFFFE;
    if ((v17 & 8) == 0)
    {
LABEL_37:
      if ((v28 & 2) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_50;
    }
  }

  else if ((v17 & 8) == 0)
  {
    goto LABEL_37;
  }

  *&a2[v20 + 12] = *(a3 + 8);
  LOWORD(v20) = v20 + 4;
  v28 = v28 & 0xFFFFFFF7;
  if ((v28 & 2) == 0)
  {
LABEL_38:
    if ((v28 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_51;
  }

LABEL_50:
  *&a2[v20 + 12] = *(a3 + 12);
  LOWORD(v20) = v20 + 4;
  v28 = v28 & 0xFFFD;
  if ((v28 & 4) == 0)
  {
LABEL_39:
    if ((v28 & 0x10) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_52;
  }

LABEL_51:
  *&a2[v20 + 12] = *(a3 + 16);
  LOWORD(v20) = v20 + 4;
  v28 = v28 & 0xFFFB;
  if ((v28 & 0x10) == 0)
  {
LABEL_40:
    if ((v28 & 0x20) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_53;
  }

LABEL_52:
  *&a2[v20 + 12] = *(a3 + 28);
  LOWORD(v20) = v20 + 4;
  v28 = v28 & 0xFFEF;
  if ((v28 & 0x20) == 0)
  {
LABEL_41:
    if ((v28 & 0x40) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

LABEL_53:
  *&a2[v20 + 12] = *(a3 + 24);
  LOWORD(v20) = v20 + 4;
  v28 = v28 & 0xFFDF;
  if ((v28 & 0x40) == 0)
  {
LABEL_42:
    if ((v28 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_54:
  *&a2[v20 + 12] = *(a3 + 20);
  LOWORD(v20) = v20 + 4;
  v28 = v28 & 0xFFBF;
  if ((v28 & 0x80) != 0)
  {
LABEL_43:
    *&a2[v20 + 12] = *(a3 + 32);
    LOWORD(v20) = v20 + 4;
    v28 = v28 & 0xFF7F;
  }

LABEL_44:
  if (v28 | v21)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void p_TSTCellToCellStoragePreBNC(TSTCell *__strong, TSTCellStoragePreBNC *, TSTNineKeyStructPreBNC *)", v16);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 1267, 0, "Failed to process all storage elements in TSTCellToCellStorage! Starting flags:%u Final flags:%u Starting format flags:%u Final format flags:%u", v19, v21, v17, v28);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37);
  }

  if (*a2 < 2u)
  {
    v38 = 0;
  }

  else
  {
    v38 = *(a2 + 5);
  }

  if (v20 + 12 != sub_221395D54(*(a2 + 2), v38, v18))
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "void p_TSTCellToCellStoragePreBNC(TSTCell *__strong, TSTCellStoragePreBNC *, TSTNineKeyStructPreBNC *)", v40);
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage_Deprecated.mm", v44);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v46, v42, v45, 1270, 0, "Size miscalculation!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49);
  }
}

uint64_t sub_221397900(uint64_t a1, uint64_t a2, TSUCellCoord a3, $925F2A0F20B28CD67DCCD182188DAC27 a4)
{
  v12.origin = a3;
  v12.size = a4;
  result = TSUCellRect::isValid(&v12);
  if (result)
  {
    result = TSUCellRect::isSingleCell(&v12);
    if ((result & 1) == 0)
    {
      v6 = *(a1 + 32);
      v7 = TSUCellRect::asString(&v12);
      objc_msgSend_appendString_(v6, v8, v7, v9);

      return objc_msgSend_appendString_(*(a1 + 32), v10, @" ", v11);
    }
  }

  return result;
}

void sub_221397E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221397E90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221397EA8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_mergeIndexesForRange_(*(a1 + 32), a2, a2, a3);
  v6 = *(*(a1 + 40) + 8);
  v9 = *(v6 + 40);
  v7 = (v6 + 40);
  v8 = v9;
  v10 = v4;
  if (v9)
  {
    objc_msgSend_addIndexes_(v8, v4, v4, v5);
  }

  else
  {
    objc_storeStrong(v7, v4);
  }
}

void sub_221398578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 168), 8);
  sub_2210BC30C(va);

  _Unwind_Resume(a1);
}

__n128 sub_221398600(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_221398650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + 40) + 8);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  v10 = objc_msgSend_columnRowUIDMap(WeakRetained, v7, v8, v9);
  v12 = v10;
  if (v10)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v10, v11, a2, a3);
  }

  else
  {
    *__p = 0u;
    v15 = 0u;
    *v13 = 0u;
  }

  sub_221398734((v5 + 48), v13);
  if (__p[1])
  {
    *&v15 = __p[1];
    operator delete(__p[1]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }
}

void *sub_221398734(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_22116C87C(a1, a2);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v3[3] = 0;
    v3[4] = 0;
    v3[5] = 0;
    *(v3 + 3) = *(a2 + 24);
    v3[5] = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    result = v3 + 6;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_2213987B4(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  sub_2212C7250(a1 + 64);

  return TSCEFormulaRewriteContextRecord::operator=(a1 + 64, a2 + 64);
}

void sub_221398804(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_msgSend_formulaObjectAtIndex_(*(*(a1 + 32) + 96), a2, a2, a4);
  v57 = xmmword_2217E18E0;
  if (v9)
  {
    v10 = *(*(a1 + 64) + 8);
    __p = objc_msgSend_coordFromIndex_(TSTFormulaStore, v6, a2, v8);
    TSCEFormulaRewriteContext::setContainingCellCoord((v10 + 48), &__p);
    v13 = objc_msgSend_copyByRewritingReferencesToUidForm_(v9, v11, *(*(a1 + 64) + 8) + 48, v12);
    objc_msgSend_addFormula_(*(a1 + 40), v14, v13, v15);
    objc_msgSend_addFormulaIndex_(*(a1 + 40), v16, a2, v17);
    *&v57 = objc_msgSend_cellRangeAtIndex_(*(*(a1 + 32) + 112), v18, a2, v19);
    *(&v57 + 1) = v20;
  }

  v21 = *(a1 + 48);
  if (v21)
  {
    objc_msgSend_modelCellRanges(v21, v6, v7, v8);
  }

  else
  {
    __p = 0;
    v54 = 0;
    v55 = 0;
  }

  v56.origin = TSUModelCellRect::largestWithoutRectsAndContainsCoord();
  v56.size = v22;
  if (__p)
  {
    v54 = __p;
    operator delete(__p);
  }

  isValid = TSUCellRect::isValid(&v56);
  v27 = *(a1 + 32);
  if (isValid)
  {
    v28 = objc_msgSend_mergeRangeCache(v27, v23, v24, v25);
    objc_msgSend_setCellRange_atIndex_(v28, v29, *&v56.origin, *&v56.size, a2);

    origin = v56.origin;
    if (v56.origin.row != v57 || ((v57 ^ *&v56.origin) & 0x101FFFF00000000) != 0)
    {
      objc_msgSend_p_moveCellFromCellCoord_toCellCoord_(*(a1 + 32), v30, v57, *&v56.origin);
      origin = v56.origin;
    }

    v32 = *(a1 + 32);
    v33 = *(v32 + 96);
    size = v56.size;
    WeakRetained = objc_loadWeakRetained((v32 + 120));
    __p = objc_msgSend_tableUID(WeakRetained, v36, v37, v38);
    v54 = v39;
    v40 = objc_msgSend_createFormulaObjectForRange_atIndex_tableUID_(v33, v39, origin, size, a2, &__p);

    objc_msgSend_setFormulaObject_atIndex_formulaReplacer_(*(*(a1 + 32) + 96), v41, v40, a2, *(a1 + 56));
    objc_msgSend_setCellRange_atIndex_(*(*(a1 + 32) + 112), v42, *&v56.origin, *&v56.size, a2);
    v46 = objc_msgSend_mergeChangeDistributor(*(a1 + 32), v43, v44, v45);
    objc_msgSend_didMergeRange_(v46, v47, *&v56.origin, *&v56.size);
  }

  else
  {
    objc_msgSend_removeCellRangeAtIndex_(v27[14], v23, a2, v25);
    objc_msgSend_clearFormulaAtIndex_formulaReplacer_(*(*(a1 + 32) + 96), v48, a2, *(a1 + 56));
    v40 = objc_msgSend_mergeChangeDistributor(*(a1 + 32), v49, v50, v51);
    objc_msgSend_didUnmergeRange_(v40, v52, v57, *(&v57 + 1));
  }
}

void sub_221398D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v23 - 152), 8);
  sub_2210BC30C(va);

  _Unwind_Resume(a1);
}

void sub_221398DF4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a1 + 40) + 8);
  v7 = objc_msgSend_tableModel(*(a1 + 32), a2, a3, a4);
  v11 = objc_msgSend_columnRowUIDMap(v7, v8, v9, v10);
  v13 = v11;
  if (v11)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v11, v12, a2, a3);
  }

  else
  {
    memset(__p, 0, sizeof(__p));
    *v17 = 0u;
  }

  v14 = v6[7];
  if (v14 >= v6[8])
  {
    v15 = sub_22116C87C(v6 + 6, v17);
    v16 = __p[1];
    v6[7] = v15;
    if (v16)
    {
      __p[2] = v16;
      operator delete(v16);
    }
  }

  else
  {
    v14[2] = 0;
    v14[3] = 0;
    *v14 = 0;
    v14[1] = 0;
    *v14 = *v17;
    v14[2] = __p[0];
    v17[0] = 0;
    v17[1] = 0;
    v14[4] = 0;
    v14[5] = 0;
    *(v14 + 3) = *&__p[1];
    v14[5] = __p[3];
    memset(__p, 0, sizeof(__p));
    v6[7] = (v14 + 6);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }
}

void sub_221398F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_22109DBB8(&a9);

  _Unwind_Resume(a1);
}

void sub_221398F30(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_formulaObjectAtIndex_(*(*(a1 + 32) + 96), a2, a2, a4);
  if (v8)
  {
    if (*(a1 + 64) != 1 || (v9 = objc_msgSend_cellRangeAtIndex_(*(*(a1 + 32) + 112), v6, a2, v7), v11 = v10, (objc_msgSend_containsModelCellCoord_(*(a1 + 40), v10, v9, v12) & 1) == 0) && (objc_msgSend_partiallyIntersectsModelCellRect_(*(a1 + 40), v13, v9, v11) & 1) != 0)
    {
      v14 = *(*(a1 + 56) + 8);
      v23 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v6, a2, v7);
      TSCEFormulaRewriteContext::setContainingCellCoord((v14 + 48), &v23);
      v15 = *(a1 + 48);
      v18 = objc_msgSend_copyByRewritingReferencesToUidForm_(v8, v16, *(*(a1 + 56) + 8) + 48, v17);
      objc_msgSend_addFormula_(v15, v19, v18, v20);

      objc_msgSend_addFormulaIndex_(*(a1 + 48), v21, a2, v22);
    }
  }
}

void sub_2213993A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_formulaObjectAtIndex_(*(*(a1 + 32) + 96), a2, a2, a4);
  if (v8)
  {
    v17 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v6, a2, v7);
    v10 = objc_msgSend_rangeFromFormulaObject_atCoord_(TSTFormulaStore, v9, v8, &v17);
    v12 = v11;
    v15 = objc_msgSend_mergeRangeCache(*(a1 + 32), v11, v13, v14);
    objc_msgSend_setCellRange_atIndex_(v15, v16, v10, v12, a2);
  }
}

void sub_221399540(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v11 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v6, a2, v7);
  v9 = objc_msgSend_rangeFromFormulaObject_atCoord_(TSTFormulaStore, v8, v5, &v11);
  objc_msgSend_setCellRange_atIndex_(*(*(a1 + 32) + 112), v10, v9, v10, a2);
}

void sub_221399B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  v22 = *(v20 - 72);
  if (v22)
  {
    *(v20 - 64) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_221399D28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_removeCellRangeAtIndex_(*(*(a1 + 32) + 112), a2, a2, a4);
  v8 = *(*(a1 + 32) + 96);

  return objc_msgSend_clearFormulaAtIndex_(v8, v6, a2, v7);
}

void sub_22139A2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a41, 8);
  if (__p)
  {
    a48 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(va, 8);
  sub_22107C2C0(&a22);
  _Block_object_dispose((v51 - 224), 8);
  sub_2210BC30C(&a22);

  _Unwind_Resume(a1);
}

__n128 sub_22139A380(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

__n128 sub_22139A3D0(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_22139A3F4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22139A40C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v8 = objc_msgSend_formulaObjectAtIndex_(*(*(a1 + 32) + 96), a2, a2, a4);
  if (v8)
  {
    v9 = *(*(a1 + 40) + 8);
    v29 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v6, a2, v7);
    TSCEFormulaRewriteContext::setContainingCellCoord((v9 + 48), &v29);
    v33 = objc_msgSend_copyByRewritingReferencesToUidForm_(v8, v10, *(*(a1 + 40) + 8) + 48, v11);
    v15 = objc_msgSend_const_astNodeArray(v33, v12, v13, v14);
    sub_2212BC6C4(&v29, v15, (*(*(a1 + 40) + 8) + 48));
    TSCEASTStreamIterator::rewrite(&v29, v16, v17, v18);
    sub_2210BAF64(*(*(a1 + 48) + 8) + 48, v30);
    sub_22139A5DC((*(*(a1 + 56) + 8) + 48), &v33);
    sub_2211531C0((*(*(a1 + 64) + 8) + 48), &v34);
    v28[0] = objc_msgSend_cellRangeAtIndex_(*(*(a1 + 32) + 112), v19, v34, v20);
    v28[1] = v21;
    objc_msgSend_p_dirtyCellsForMerge_(*(a1 + 32), v21, v28, v22);
    objc_msgSend_clearFormulaAtIndex_(*(*(a1 + 32) + 96), v23, v34, v24);
    objc_msgSend_removeCellRangeAtIndex_(*(*(a1 + 32) + 112), v25, v34, v26);
    v29 = &unk_2834A4000;
    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    if (v30[0])
    {
      v30[1] = v30[0];
      operator delete(v30[0]);
    }

    TSCEASTStreamIterator::~TSCEASTStreamIterator(&v29, v27);
  }
}

id sub_22139A5DC(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_22107C1F0(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22107C098(a1, v13);
    v7 = a1[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_22139A6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22139ADF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_22139AE64(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v13 = a3;
  v14 = a4;
  v5 = a1[5];
  if (a3 != v5 || (((v5 ^ a3) & 0x101FFFF00000000) == 0 ? (v6 = a4 == a1[6]) : (v6 = 0), !v6))
  {
    v7 = *(*(a1[4] + 8) + 40);
    v8 = sub_2210AFE68(&v13, a1 + 7);
    v10 = objc_msgSend_regionByAddingModelCellRect_(v7, v9, v8, v9, v13, v14);
    v11 = *(a1[4] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_22139B7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v49 = *(v47 - 136);
  if (v49)
  {
    *(v47 - 128) = v49;
    operator delete(v49);
  }

  *(v47 - 240) = v47 - 112;
  sub_22107C2C0((v47 - 240));

  _Unwind_Resume(a1);
}

void sub_22139B9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + 40) + 8);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  v10 = objc_msgSend_columnRowUIDMap(WeakRetained, v7, v8, v9);
  v12 = v10;
  if (v10)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v10, v11, a2, a3);
  }

  else
  {
    *__p = 0u;
    v15 = 0u;
    *v13 = 0u;
  }

  sub_221398734((v5 + 48), v13);
  if (__p[1])
  {
    *&v15 = __p[1];
    operator delete(__p[1]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }
}

void sub_22139BEAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22139BFDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22139C458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22139C470(uint64_t a1, uint64_t a2, TSUCellCoord a3, $925F2A0F20B28CD67DCCD182188DAC27 a4, _BYTE *a5)
{
  v8.origin = a3;
  v8.size = a4;
  result = TSUCellRect::isValid(&v8);
  if (result)
  {
    result = TSUCellRect::isSingleCell(&v8);
    if ((result & 1) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a5 = 1;
    }
  }

  return result;
}

void sub_22139C5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22139C5CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *a5 = 1;
  *(*(*(result + 32) + 8) + 24) = 1;
  return result;
}

void sub_22139C6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_22139C6CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *a5 = 1;
  *(*(*(result + 32) + 8) + 24) = 1;
  return result;
}

uint64_t sub_22139D0D0(unint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1 >= 0xF4240)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromRowRange(NSRange, TSUColumnRowSize)", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 382, 0, "out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  if (&a2[a1] >= 0xF4241)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromRowRange(NSRange, TSUColumnRowSize)", a4);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 383, 0, "out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  return a1;
}

unint64_t sub_22139D234(unint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v5 = &a2[a1];
  if (a1 != 0x7FFFFFFFFFFFFFFFLL && v5 != 0)
  {
    if (a1 >= 0x3E8)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromColumnRange(NSRange, TSUColumnRowSize)", a4);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 373, 0, "out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    }

    if (v5 >= 0x3EA)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUCellRangeFromColumnRange(NSRange, TSUColumnRowSize)", a4);
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 374, 0, "out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
    }
  }

  return v4 << 32;
}

void sub_22139D3A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_formulaObjectAtIndex_(*(*(a1 + 32) + 96), a2, a2, a4);
  if (v8)
  {
    v25 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v6, a2, v7);
    v9 = *(a1 + 32);
    *v23 = v25;
    *&v23[8] = *(v9 + 136);
    sub_2212C7294(v24, v23);
    v24[48] = 1;
    v10 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
    v13 = objc_msgSend_copyByRewritingWithSpec_calcEngine_containingCell_(v8, v12, v10, WeakRetained, v24);

    if (v8 != v13)
    {
      *v23 = objc_msgSend_rangeFromFormulaObject_atCoord_(TSTFormulaStore, v14, v13, &v25);
      *&v23[8] = v15;
      isValid = TSUCellRect::isValid(v23);
      v19 = *(*(a1 + 32) + 96);
      if (isValid)
      {
        objc_msgSend_setFormulaObject_atIndex_(v19, v16, v13, a2);
        objc_msgSend_setCellRange_atIndex_(*(*(a1 + 32) + 112), v20, *v23, *&v23[8], a2);
      }

      else
      {
        objc_msgSend_clearFormulaAtIndex_(v19, v16, a2, v17);
        objc_msgSend_removeCellRangeAtIndex_(*(*(a1 + 32) + 112), v21, a2, v22);
      }
    }
  }
}

__n128 sub_22139D8AC(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_22139D8D0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22139D8E8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_formulaObjectAtIndex_(*(a1[4] + 96), a2, a2, a4);
  if (v8)
  {
    v9 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v6, a2, v7);
    v10 = a1[4];
    v37 = v9;
    v38 = *(v10 + 136);
    sub_2212C7294(v39, &v37);
    v39[48] = 1;
    v11 = a1[5];
    WeakRetained = objc_loadWeakRetained((a1[4] + 128));
    v14 = objc_msgSend_copyByRewritingWithSpec_calcEngine_containingCell_(v8, v13, v11, WeakRetained, v39);

    if (v8 != v14)
    {
      v37 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v15, a2, v16);
      v18 = objc_msgSend_rangeFromFormulaObject_atCoord_(TSTFormulaStore, v17, v14, &v37);
      v20 = v19;
      objc_msgSend_setFormulaObject_atIndex_(*(a1[4] + 96), v19, v14, a2);
      v23 = *(a1[6] + 8);
      v25 = v23[7];
      v24 = v23[8];
      if (v25 >= v24)
      {
        v27 = v23[6];
        v28 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v27) >> 3);
        v29 = v28 + 1;
        if (v28 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_22107C148();
        }

        v30 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v27) >> 3);
        if (2 * v30 > v29)
        {
          v29 = 2 * v30;
        }

        if (v30 >= 0x555555555555555)
        {
          v31 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          sub_2210CDBC0((v23 + 6), v31);
        }

        v32 = 24 * v28;
        *v32 = v18;
        *(v32 + 8) = v20;
        *(v32 + 16) = a2;
        v26 = 24 * v28 + 24;
        v33 = v23[6];
        v34 = v23[7] - v33;
        v35 = (24 * v28 - v34);
        memcpy(v35, v33, v34);
        v36 = v23[6];
        v23[6] = v35;
        v23[7] = v26;
        v23[8] = 0;
        if (v36)
        {
          operator delete(v36);
        }
      }

      else
      {
        *v25 = v18;
        v25[1] = v20;
        v26 = (v25 + 3);
        v25[2] = a2;
      }

      v23[7] = v26;
      objc_msgSend_removeCellRangeAtIndex_(*(a1[4] + 112), v21, a2, v22);
    }
  }
}

void sub_22139DC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2210BDEC0(va);

  _Unwind_Resume(a1);
}

void *sub_22139DE94(void *a1, unsigned int *a2, uint64_t a3, void **a4)
{
  v4 = *a2 + 16 * *(a2 + 2);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2 + 16 * *(a2 + 2);
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
LABEL_23:
    operator new();
  }

  v10 = *a2;
  while (1)
  {
    v11 = v9[1];
    if (v11 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v7)
    {
      goto LABEL_23;
    }

LABEL_22:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  v12 = v9[2];
  v14 = v12 == v10;
  v13 = (v10 ^ v12) & 0x101FFFF00000000;
  v14 = v14 && v13 == 0;
  if (!v14)
  {
    goto LABEL_22;
  }

  return v9;
}

void sub_22139E164()
{
  v0 = objc_alloc_init(TSTCellSpec);
  v1 = qword_27CFB5498;
  qword_27CFB5498 = v0;
}

void sub_22139E2AC()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v3 = objc_msgSend_initWithProperties_(v0, v1, 913, v2, 0);
  v4 = qword_27CFB54A8;
  qword_27CFB54A8 = v3;
}

__CFString *sub_22139EA64(int a1)
{
  if ((a1 - 1) > 7)
  {
    return @"TSTCellInteractionTypeValueEditing";
  }

  else
  {
    return off_278463C28[a1 - 1];
  }
}

void sub_22139EB88(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_22139EFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22139EFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 4);
  v6 = *(a2 + 12);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = objc_msgSend_tableInfo(*(a1 + 32), a2, a3, a4);
  if (v8 != objc_msgSend_tableUID(v9, v10, v11, v12))
  {

    goto LABEL_6;
  }

  v14 = v13;

  if (v7 != v14)
  {
LABEL_6:
    LOWORD(v5) = 0x7FFF;
    goto LABEL_7;
  }

  if (v5 != v6)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTSortRuleReferenceTracker p_columnForTrackedReference:]_block_invoke", v16);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTSortRuleReferenceTracker.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 118, 0, "Ranges should be one column!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

LABEL_7:
  *(*(*(a1 + 40) + 8) + 24) = v5;
}

void sub_22139F9FC(uint64_t a1, void *a2)
{
  v13 = a2;
  objc_storeStrong((*(a1 + 32) + 48), a2);
  v7 = objc_msgSend_ownerUID(*(*(a1 + 32) + 48), v4, v5, v6);
  v8 = *(a1 + 32);
  *(v8 + 8) = v7;
  *(v8 + 16) = v9;
  v10 = sub_2212C4A5C((*(a1 + 32) + 8), 6);
  v11 = *(a1 + 32);
  *(v11 + 24) = v10;
  *(v11 + 32) = v12;
  *(*(a1 + 32) + 56) = 0;
}

int *sub_2213A00D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 24);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(v3 + 24) = v5 + 1;
    v7 = *&v4[2 * v5 + 2];
    goto LABEL_8;
  }

  if (v6 == *(v3 + 28))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 16));
    v4 = *(v3 + 32);
    v6 = *v4;
  }

  *v4 = v6 + 1;
  v7 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellReferenceArchive>(*(v3 + 16));
  v8 = *(v3 + 24);
  v9 = *(v3 + 32) + 8 * v8;
  *(v3 + 24) = v8 + 1;
  *(v9 + 8) = v7;
LABEL_8:

  return sub_2215C38E0(a2, v7);
}

void sub_2213A02F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2213A0314(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t **sub_2213A032C(uint64_t a1, TSUCellCoord *a2, uint64_t a3, uint64_t a4)
{
  row = a2[1].row;
  v38 = *a2;
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  if (v6)
  {
    v7 = objc_msgSend_idMap(v6, a2, a3, a4);
    v8 = row;
    if (*(v7 + 144))
    {
      v8 = sub_2212602C8(v7, row);
    }

    LOWORD(row) = v8;
    v5 = *(a1 + 32);
  }

  result = sub_2212E0198((v5 + 24), &v38);
  if ((result & 1) == 0)
  {
    sub_2212DFCE8((*(a1 + 32) + 24), &v38);
    v12 = *(*(*(a1 + 40) + 8) + 40);
    if (v12)
    {
      v13 = row;
      if (*(v12 + 16) == row)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v13 = row;
    }

    v14 = objc_msgSend_dgl_wholeOwnerDependenciesForOwnerID_(*(*(a1 + 32) + 8), v10, v13, v11);
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v12 = *(*(*(a1 + 40) + 8) + 40);
    if (v12 || (result = *(*(a1 + 32) + 8)) != 0 && ((v19 = row, objc_msgSend_dgl_registerOwnerID_owner_ownerIndex_(result, v17, row, 0, 0), objc_msgSend_dgl_wholeOwnerDependenciesForOwnerID_(*(*(a1 + 32) + 8), v20, v19, v21), v22 = objc_claimAutoreleasedReturnValue(), v23 = *(*(a1 + 40) + 8), v24 = *(v23 + 40), *(v23 + 40) = v22, v24, (v12 = *(*(*(a1 + 40) + 8) + 40)) != 0) || (v27 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSCEWholeOwnerDependencies unpackAfterUnarchive]_block_invoke", v26), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEWholeOwnerDependencies.mm", v30), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 116, 0, "NULL whole owner dependencies"), v31, v28, result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35), (v12 = *(*(*(a1 + 40) + 8) + 40)) != 0)))
    {
LABEL_11:
      v18 = *(a1 + 32);
      v36 = v38;
      v37 = *(v18 + 16);
      sub_2213A09F0(v12 + 64, &v36);
    }
  }

  return result;
}

uint64_t sub_2213A0A78(void *a1, uint64_t a2)
{
  v4 = a2 + 16;
  v5 = *(a2 + 16) + (*(a2 + 20) << 16);
  *(a2 + 8) = v5;
  v6 = sub_2213A0AC8(a1, v5, v4);
  sub_2210BD408(a1, a2, v6);
  return a2;
}

uint64_t sub_2213A0AC8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_2213A0C38(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    if (v19 == a2)
    {
      v21 = *(v16 + 16) == *a3 && *(a3 + 4) == *(v16 + 20);
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 != (v17 & 1);
    v24 = v17 & v23;
    v17 |= v23;
  }

  while (v24 != 1);
  return result;
}

void sub_2213A0C38(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_2213A0D28(result, prime);
    }
  }
}

void sub_2213A0D28(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22107C238();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *sub_2213A0EB0(void *a1, uint64_t a2)
{
  result = sub_2213A0F08(a1, a2);
  if (result)
  {
    v4 = result;
    do
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }
    }

    while (*(v4 + 16) == *a2 && *(v4 + 20) == *(a2 + 4));
  }

  return result;
}

uint64_t *sub_2213A0F08(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = *(a2 + 2);
  v5 = (*a2 + (v4 << 16));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v3 + (v4 << 16));
    if (*&v2 <= v5)
    {
      v7 = v5 % v2.i32[0];
    }
  }

  else
  {
    v7 = (v2.i32[0] - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (*(result + 4) == v3 && *(result + 10) == v4)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2213A0FCC(void *a1, uint64_t a2)
{
  v4 = sub_2213A0F08(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = *v5;
    sub_2210CDD3C(a1, v5);
    if (!v8)
    {
      break;
    }

    v6 = v7 + 1;
    v9 = *(v8 + 16) == *a2 && *(v8 + 20) == *(a2 + 4);
    v5 = v8;
  }

  while (v9);
  return v7;
}

uint64_t sub_2213A1408(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_styleProviderStack(*(a1 + 32), a2, a3, a4);

  if (!v5)
  {
    v9 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v6, v7, v8);
    objc_msgSend_setStyleProviderStack_(*(a1 + 32), v10, v9, v11);
  }

  v12 = objc_msgSend_styleProviderStack(*(a1 + 32), v6, v7, v8);
  objc_msgSend_addPointer_(v12, v13, *(a1 + 40), v14);

  v17 = *(a1 + 32);
  v18 = *(a1 + 40);

  return objc_msgSend_setStyleProvidingSource_(v17, v15, v18, v16);
}

void sub_2213A1518(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_styleProviderStack(*(a1 + 32), a2, a3, a4);

  if (v5)
  {
    v9 = objc_msgSend_styleProviderStack(*(a1 + 32), v6, v7, v8);
    v13 = objc_msgSend_styleProviderStack(*(a1 + 32), v10, v11, v12);
    v17 = objc_msgSend_count(v13, v14, v15, v16);
    objc_msgSend_removePointerAtIndex_(v9, v18, v17 - 1, v19);
  }

  v20 = objc_msgSend_styleProviderStack(*(a1 + 32), v6, v7, v8);
  if (v20 && (v24 = v20, objc_msgSend_styleProviderStack(*(a1 + 32), v21, v22, v23), v25 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend_count(v25, v26, v27, v28), v25, v24, v29))
  {
    v31 = objc_msgSend_styleProviderStack(*(a1 + 32), v21, v30, v23);
    v35 = objc_msgSend_styleProviderStack(*(a1 + 32), v32, v33, v34);
    v39 = objc_msgSend_count(v35, v36, v37, v38);
    v45 = objc_msgSend_pointerAtIndex_(v31, v40, v39 - 1, v41);

    objc_msgSend_setStyleProvidingSource_(*(a1 + 32), v42, v45, v43);
  }

  else
  {
    v44 = *(a1 + 32);

    objc_msgSend_setStyleProvidingSource_(v44, v21, 0, v23);
  }
}

void sub_2213A1704(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_fixedColumnWidthStack(*(a1 + 32), a2, a3, a4);

  if (!v5)
  {
    v13 = objc_msgSend_strongObjectsPointerArray(MEMORY[0x277CCAC18], v6, v7, v8);
    objc_msgSend_setFixedColumnWidthStack_(*(a1 + 32), v9, v13, v10);
  }

  v14 = objc_msgSend_fixedColumnWidthStack(*(a1 + 32), v6, v7, v8);
  objc_msgSend_addPointer_(v14, v11, *(a1 + 40), v12);
}

void sub_2213A1820(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_fixedColumnWidthStack(*(a1 + 32), a2, a3, a4);

  if (v5)
  {
    v19 = objc_msgSend_fixedColumnWidthStack(*(a1 + 32), v6, v7, v8);
    v12 = objc_msgSend_fixedColumnWidthStack(*(a1 + 32), v9, v10, v11);
    v16 = objc_msgSend_count(v12, v13, v14, v15);
    objc_msgSend_removePointerAtIndex_(v19, v17, v16 - 1, v18);
  }
}

void sub_2213A1E8C(void *result, unint64_t a2, uint64_t *a3)
{
  v3 = (result[1] - *result) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    sub_2213B5ACC(result, a2 - v3, a3);
  }
}

void sub_2213A1F98(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSTLayoutEngine;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t sub_2213A2A30(void *a1, void *a2)
{
  v3 = a1;
  v7 = a2;
  if (!v7)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "TSTCellRange TSTLayoutEngineGetRangeForHint(TSTLayoutEngine *__strong, TSTLayoutHint *__strong)", v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutEngine.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 747, 0, "invalid nil value for '%{public}s'", "layoutHint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17 = objc_msgSend_cellRange(v7, v4, v5, v6);

  return v17;
}

uint64_t sub_2213A2C08(void *a1)
{
  v1 = a1;
  if ((objc_msgSend_isDynamicallyRepressingFrozenHeaderColumns(v1, v2, v3, v4) & 1) != 0 || v1[552] != 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_dynamicRepResize(v1, v5, v6, v7) ^ 1;
  }

  return v8;
}

uint64_t sub_2213A2C6C(void *a1)
{
  v1 = a1;
  if ((objc_msgSend_isDynamicallyRepressingFrozenHeaderRows(v1, v2, v3, v4) & 1) != 0 || v1[553] != 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_dynamicRepResize(v1, v5, v6, v7) ^ 1;
  }

  return v8;
}

BOOL sub_2213A4548(uint64_t a1, TSUCellCoord a2, $925F2A0F20B28CD67DCCD182188DAC27 a3)
{
  v4.origin = a2;
  v4.size = a3;
  return TSUCellRect::numRows(&v4) > 1;
}

uint64_t sub_2213A53FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2213A5414(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v115 = v3;
  v8 = objc_msgSend_cellID(v3, v5, v6, v7);
  objc_msgSend_defaultPaddingForCellID_(v4, v9, v8, v10);
  v12 = v11;
  v14 = v13;
  v15 = *(a1 + 32);
  v19 = objc_msgSend_cellID(v115, v16, v17, v18);
  objc_msgSend_paddingForCellID_(v15, v20, v19, v21);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v12 + v14;
  v34 = v25 + v29;
  if (v34 <= v33)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v34 - v33;
  }

  v36 = objc_msgSend_cell(v115, v22, v23, v24);
  v40 = objc_msgSend_valueType(v36, v37, v38, v39);

  if (v40 == 6)
  {
    objc_opt_class();
    v47 = objc_msgSend_context(*(a1 + 40), v44, v45, v46);
    v51 = objc_msgSend_documentObject(v47, v48, v49, v50);
    v52 = TSUCheckedDynamicCast();

    v53 = *(a1 + 32);
    v57 = objc_msgSend_cell(v115, v54, v55, v56);
    v61 = objc_msgSend_cellID(v115, v58, v59, v60);
    v63 = objc_msgSend_newTextEngineForCell_atCellID_textStyle_(v53, v62, v57, v61, 0);

    v64 = [TSTTextEngineDelegate alloc];
    v68 = objc_msgSend_typesettingLocale(v52, v65, v66, v67);
    shouldHyphenate = objc_msgSend_shouldHyphenate(v52, v69, v70, v71);
    v76 = objc_msgSend_styleProvidingSource(*(a1 + 32), v73, v74, v75);
    shouldHyphenate_styleProvidingSource = objc_msgSend_initWithPadding_verticalAlignment_locale_shouldHyphenate_styleProvidingSource_(v64, v77, 0, v68, shouldHyphenate, v76, v26, v28, v30, v32);

    objc_msgSend_setDelegate_(v63, v79, shouldHyphenate_styleProvidingSource, v80);
    v82 = objc_msgSend_layoutText_context_kind_minSize_maxSize_anchor_flags_(v63, v81, @"X", 0, 5, 15, 8.0, 8.0, 4294967300.0, 50000.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
    objc_msgSend_setDelegate_(v63, v83, 0, v84);
    v85 = *(*(*(a1 + 48) + 8) + 24);
    sub_2213A5824(v82);
    v87 = v35 + v33 + v86 + *(a1 + 64) + *(a1 + 72);
    if (v85 >= v87)
    {
      v87 = v85;
    }

    *(*(*(a1 + 48) + 8) + 24) = v87;

LABEL_12:
    goto LABEL_16;
  }

  v88 = objc_msgSend_cell(v115, v41, v42, v43);
  v92 = objc_msgSend_textStyle(v88, v89, v90, v91);
  v93 = *(*(a1 + 56) + 8);
  v94 = *(v93 + 40);
  *(v93 + 40) = v92;

  if (objc_msgSend_isVariation(*(*(*(a1 + 56) + 8) + 40), v95, v96, v97))
  {
    v101 = objc_msgSend_cell(v115, v98, v99, v100);
    v52 = objc_msgSend_textStyle(v101, v102, v103, v104);

    objc_msgSend_fontHeightOfParagraphStyle_(*(a1 + 32), v105, v52, v106);
    v107 = *(*(a1 + 48) + 8);
    v109 = v35 + v33 + v108 + *(a1 + 64) + *(a1 + 72);
    if (*(v107 + 24) >= v109)
    {
      v109 = *(v107 + 24);
    }

    *(v107 + 24) = v109;
    goto LABEL_12;
  }

  v110 = *(*(a1 + 48) + 8);
  v111 = *(v110 + 24);
  v112 = *(*(a1 + 32) + 104);
  v113 = *(a1 + 64);
  v114 = *(a1 + 72);
  if (v111 < v35 + *(v112 + 8) + v113 + v114)
  {
    v111 = v35 + *(v112 + 8) + v113 + v114;
  }

  *(v110 + 24) = v111;
LABEL_16:
}

double sub_2213A5824(void *a1)
{
  v1 = a1;
  objc_msgSend_typographicBounds(v1, v2, v3, v4);
  v6 = v5;
  objc_msgSend_frameBounds(v1, v7, v8, v9);

  return v6;
}

void sub_2213A5978(uint64_t a1, unsigned int a2)
{
  if (a2 && *(a1 + 40) > a2)
  {
    v23 = *(*(*(a1 + 32) + 56) + 8 * a2);
    objc_msgSend_lockForWrite(v23, v4, v5, v6);
    objc_msgSend_invalidateSpillStrokes(v23, v7, v8, v9);
    objc_msgSend_unlock(v23, v10, v11, v12);
    v13 = *(*(*(a1 + 32) + 80) + 8 * a2);
    objc_msgSend_lockForWrite(v13, v14, v15, v16);
    objc_msgSend_invalidateSpillStrokes(v13, v17, v18, v19);
    objc_msgSend_unlock(v13, v20, v21, v22);
  }
}

void sub_2213A60DC(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_2213B5C9C(a1, v5);
  }
}

void sub_2213A6164(uint64_t a1, unsigned int a2, void *a3, void *a4, _BYTE *a5)
{
  v31 = a3;
  v9 = a4;
  v10 = a2;
  v11 = *(*(*(a1 + 32) + 8) + 8 * a2);
  v15 = *(*(*(a1 + 32) + 32) + 8 * a2);
  if (v11 && !objc_msgSend_isDefaultsOnly(v11, v12, v13, v14))
  {
    objc_msgSend_lockForWrite(v11, v12, v13, v14);
    v16 = objc_msgSend_replaceDefaultStrokeLayerWith_(v11, v17, v31, v18);
    objc_msgSend_unlock(v11, v19, v20, v21);
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  else if (v11 == v9)
  {
    v16 = 0;
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 8 * v10), a4);
    v16 = 1;
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  if (!objc_msgSend_isDefaultsOnly(v15, v12, v13, v14))
  {
    objc_msgSend_lockForWrite(v15, v22, v23, v24);
    v25 = objc_msgSend_replaceDefaultStrokeLayerWith_(v15, v26, v31, v27);
    objc_msgSend_unlock(v15, v28, v29, v30);
    goto LABEL_14;
  }

LABEL_10:
  if (v15 == v9)
  {
    v25 = 0;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 32) + 8 * v10), a4);
    v25 = 1;
  }

LABEL_14:
  if ((*(a1 + 48) & 1) == 0 && !((*(a1 + 40) != v31) | (v16 | v25) & 1))
  {
    *a5 = 1;
  }
}

void sub_2213A631C(uint64_t a1, unsigned int a2, void *a3, void *a4, _BYTE *a5)
{
  v30 = a3;
  v9 = a4;
  v10 = *(*(*(a1 + 32) + 8) + 8 * a2);
  v14 = *(*(*(a1 + 32) + 32) + 8 * a2);
  if (v10 && !objc_msgSend_isDefaultsOnly(v10, v11, v12, v13))
  {
    objc_msgSend_lockForWrite(v10, v11, v12, v13);
    v15 = objc_msgSend_replaceDefaultStrokeLayerWith_(v10, v16, v30, v17);
    if (*(a1 + 48) - 1 == a2)
    {
      objc_msgSend_invalidateCustomStrokes(v10, v18, v19, v20);
    }

    objc_msgSend_unlock(v10, v18, v19, v20);
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  else if (v10 == v9)
  {
    v15 = 0;
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 8 * a2), a4);
    v15 = 1;
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  if (!objc_msgSend_isDefaultsOnly(v14, v11, v12, v13))
  {
    objc_msgSend_lockForWrite(v14, v21, v22, v23);
    v26 = objc_msgSend_replaceDefaultStrokeLayerWith_(v14, v24, v30, v25);
    objc_msgSend_unlock(v14, v27, v28, v29);
    goto LABEL_16;
  }

LABEL_12:
  if (v14 != v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 32) + 8 * a2), a4);
    goto LABEL_19;
  }

  v26 = 0;
LABEL_16:
  if (!((*(a1 + 40) != v30) | v15 & 1) && (v26 & 1) == 0)
  {
    *a5 = 1;
  }

LABEL_19:
}

void sub_2213A64E8(uint64_t a1, unsigned int a2, void *a3, void *a4, _BYTE *a5)
{
  v31 = a3;
  v9 = a4;
  v10 = a2;
  v11 = *(*(*(a1 + 32) + 56) + 8 * a2);
  v15 = *(*(*(a1 + 32) + 80) + 8 * a2);
  if (v11 && !objc_msgSend_isDefaultsOnly(v11, v12, v13, v14))
  {
    objc_msgSend_lockForWrite(v11, v12, v13, v14);
    v16 = objc_msgSend_replaceDefaultStrokeLayerWith_(v11, v17, v31, v18);
    objc_msgSend_unlock(v11, v19, v20, v21);
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  else if (v11 == v9)
  {
    v16 = 0;
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 56) + 8 * v10), a4);
    v16 = 1;
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  if (!objc_msgSend_isDefaultsOnly(v15, v12, v13, v14))
  {
    objc_msgSend_lockForWrite(v15, v22, v23, v24);
    v27 = objc_msgSend_replaceDefaultStrokeLayerWith_(v15, v25, v31, v26);
    objc_msgSend_unlock(v15, v28, v29, v30);
    goto LABEL_14;
  }

LABEL_10:
  if (v15 != v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 80) + 8 * v10), a4);
    goto LABEL_17;
  }

  v27 = 0;
LABEL_14:
  if (!((*(a1 + 40) != v31) | v16 & 1) && (v27 & 1) == 0)
  {
    *a5 = 1;
  }

LABEL_17:
}

void sub_2213A6694(uint64_t a1, unsigned int a2, void *a3, void *a4, _BYTE *a5)
{
  v30 = a3;
  v9 = a4;
  v10 = *(*(*(a1 + 32) + 56) + 8 * a2);
  v14 = *(*(*(a1 + 32) + 80) + 8 * a2);
  if (v10 && !objc_msgSend_isDefaultsOnly(v10, v11, v12, v13))
  {
    objc_msgSend_lockForWrite(v10, v11, v12, v13);
    v15 = objc_msgSend_replaceDefaultStrokeLayerWith_(v10, v16, v30, v17);
    if (*(a1 + 48) - 1 == a2)
    {
      objc_msgSend_invalidateCustomStrokes(v10, v18, v19, v20);
    }

    objc_msgSend_unlock(v10, v18, v19, v20);
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  else if (v10 == v9)
  {
    v15 = 0;
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 56) + 8 * a2), a4);
    v15 = 1;
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  if (!objc_msgSend_isDefaultsOnly(v14, v11, v12, v13))
  {
    objc_msgSend_lockForWrite(v14, v21, v22, v23);
    v26 = objc_msgSend_replaceDefaultStrokeLayerWith_(v14, v24, v30, v25);
    objc_msgSend_unlock(v14, v27, v28, v29);
    goto LABEL_16;
  }

LABEL_12:
  if (v14 != v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 80) + 8 * a2), a4);
    goto LABEL_19;
  }

  v26 = 0;
LABEL_16:
  if (!((*(a1 + 40) != v30) | v15 & 1) && (v26 & 1) == 0)
  {
    *a5 = 1;
  }

LABEL_19:
}

void sub_2213A7FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0xFFFF00000000) != 0x7FFF00000000 && a2 == 0x7FFFFFFF)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFFLL;
  }

  else
  {
    v6 = (HIDWORD(a3) + a2);
  }

  if (a2 != 0x7FFFFFFF && (a2 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v8 = 0;
  }

  else
  {
    v8 = WORD2(a2);
  }

  v9 = WORD2(a2);
  if (WORD2(a2) != 0x7FFF)
  {
    v9 = WORD2(a2) + a3;
  }

  v10 = v9;
  v11 = v5 - v6;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 >= v5)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v6;
  }

  if (v6 >= v5)
  {
    v11 = 0;
  }

  if (v5 < v6)
  {
    v13 = v5;
  }

  v53 = v8;
  v54 = v13;
  if (v5 < v6)
  {
    v14 = v6 - v5;
  }

  else
  {
    v14 = v11;
  }

  v15 = v8;
  v16 = v8 - v10;
  if (v10 >= v8)
  {
    v16 = 0;
  }

  else
  {
    v12 = v10;
  }

  if (v10 > v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = v12;
  }

  if (v10 > v8)
  {
    v18 = v10 - v8;
  }

  else
  {
    v18 = v16;
  }

  if (v5 <= v6)
  {
    v19 = v5;
    do
    {
      if (v19 < v6)
      {
        v20 = *(*(*(a1 + 32) + 8) + 8 * v19);
        objc_msgSend_lockForWrite(v20, v21, v22, v23);
        objc_msgSend_invalidateClearedStrokesInRange_(v20, v24, v17, v18);
        objc_msgSend_unlock(v20, v25, v26, v27);
      }

      if (v19 > v5)
      {
        v28 = *(*(*(a1 + 32) + 32) + 8 * v19);
        objc_msgSend_lockForWrite(v28, v29, v30, v31);
        objc_msgSend_invalidateClearedStrokesInRange_(v28, v32, v17, v18);
        objc_msgSend_unlock(v28, v33, v34, v35);
      }

      ++v19;
    }

    while (v19 <= v6);
  }

  if (v10 >= v53)
  {
    v36 = v15;
    do
    {
      if (v36 < v10)
      {
        v37 = *(*(*(a1 + 32) + 56) + 8 * v36);
        objc_msgSend_lockForWrite(v37, v38, v39, v40);
        objc_msgSend_invalidateClearedStrokesInRange_(v37, v41, v54, v14);
        objc_msgSend_unlock(v37, v42, v43, v44);
      }

      if (v36 > v15)
      {
        v45 = *(*(*(a1 + 32) + 80) + 8 * v36);
        objc_msgSend_lockForWrite(v45, v46, v47, v48);
        objc_msgSend_invalidateClearedStrokesInRange_(v45, v49, v54, v14);
        objc_msgSend_unlock(v45, v50, v51, v52);
      }

      ++v36;
    }

    while (v10 + 1 != v36);
  }
}

unint64_t sub_2213A82DC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = sub_221119E0C(a3, a4, *(a1 + 40), *(a1 + 48));
  if (result != 0x7FFFFFFF && (result & 0xFFFF00000000) != 0x7FFF00000000 && v6 >> 32 != 0 && v6 != 0)
  {
    if (result == 0x7FFFFFFF)
    {
      v10 = 0;
    }

    else
    {
      v10 = result;
    }

    if (result == 0x7FFFFFFF)
    {
      v11 = 0x7FFFFFFFLL;
    }

    else
    {
      v11 = (HIDWORD(v6) + result);
    }

    v12 = WORD2(result);
    if (WORD2(result) == 0x7FFF)
    {
      v13 = WORD2(result);
    }

    else
    {
      v13 = (WORD2(result) + v6);
    }

    if (WORD2(result) < (v13 - 1))
    {
      v14 = WORD2(result) + 1;
      do
      {
        result = objc_msgSend_setClearedStrokeForGridColumn_beginRow_endRow_(*(a1 + 32), v6, v14, v10, v11);
        v14 = (v14 + 1);
      }

      while (v14 <= v13 - 1);
    }

    v15 = v11 - 1;
    while (1)
    {
      v10 = (v10 + 1);
      if (v10 > v15)
      {
        break;
      }

      result = objc_msgSend_setClearedStrokeForGridRow_beginColumn_endColumn_(*(a1 + 32), v6, v10, v12, v13);
    }
  }

  return result;
}

void sub_2213A9190(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_strokeLayerForLeftSideOfColumn_(*(a1 + 32), a2, a2, a4);
  v12 = objc_msgSend_strokeLayerForRightSideOfColumn_(*(a1 + 32), v7, a2, v8);
  if (!(v6 | v12))
  {
    v12 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  if (*(a1 + 40))
  {
    v13 = objc_msgSend_mutableCopy(v6, v9, v10, v11);
    v17 = objc_msgSend_mutableCopy(v12, v14, v15, v16);
    v18 = *(a1 + 40);
    v97 = MEMORY[0x277D85DD0];
    v98 = 3221225472;
    v99 = sub_2213A95C4;
    v100 = &unk_27845EBE8;
    v19 = v13;
    v101 = v19;
    v20 = v17;
    v102 = v20;
    objc_msgSend_enumerateRangesUsingBlock_(v18, v21, &v97, v22);
    v23 = v19;

    v24 = v20;
    v12 = v24;
    v6 = v23;
  }

  if (*(a1 + 88) == 1)
  {
    v25 = objc_msgSend_strokeLayerModifiedByInsertingSpaceAt_(v6, v9, *(a1 + 56), *(a1 + 64));

    v27 = objc_msgSend_strokeLayerModifiedByInsertingSpaceAt_(v12, v26, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    if (*(a1 + 89) != 1)
    {
      goto LABEL_10;
    }

    v25 = objc_msgSend_strokeLayerModifiedByRemovingRangeAt_(v6, v9, *(a1 + 56), *(a1 + 64));

    v27 = objc_msgSend_strokeLayerModifiedByRemovingRangeAt_(v12, v28, *(a1 + 56), *(a1 + 64));
  }

  v29 = v27;

  v12 = v29;
  v6 = v25;
LABEL_10:
  v30 = *(*(*(a1 + 48) + 56) + 8 * a2);
  isDefaultsOnly = objc_msgSend_isDefaultsOnly(v30, v31, v32, v33);
  if (v6)
  {
    v38 = isDefaultsOnly;
  }

  else
  {
    v38 = 0;
  }

  if (v38 == 1 && (objc_msgSend_isEmpty(v6, v35, v36, v37) & 1) == 0)
  {
    v39 = objc_msgSend_replacementWithDefaults(v30, v35, v36, v37);

    objc_storeStrong((*(*(a1 + 48) + 56) + 8 * a2), v39);
    v30 = v39;
  }

  if ((objc_msgSend_isDefaultsOnly(v30, v35, v36, v37, v97, v98, v99, v100) & 1) == 0)
  {
    hasSpillStrokeInRange = objc_msgSend_hasSpillStrokeInRange_(v30, v40, *(a1 + 72), *(a1 + 80));
    objc_msgSend_lockForWrite(v30, v42, v43, v44);
    objc_msgSend_replaceCustomStrokeLayerWith_(v30, v45, v6, v46);
    objc_msgSend_invalidateSpillStrokes(v30, v47, v48, v49);
    objc_msgSend_unlock(v30, v50, v51, v52);
    if ((hasSpillStrokeInRange & 1) == 0)
    {
      if (objc_msgSend_isEligibleForDefaultsOnlyReplacement(v30, v53, v54, v55))
      {
        v59 = objc_msgSend_strokesDefaultVendor(*(a1 + 48), v56, v57, v58);
        v62 = objc_msgSend_strokeLayerStackForColumn_(v59, v60, a2, v61);

        objc_storeStrong((*(*(a1 + 48) + 56) + 8 * a2), v62);
        v30 = v62;
      }
    }
  }

  v63 = (a2 + 1);
  v64 = *(*(*(a1 + 48) + 80) + 8 * v63);
  v68 = objc_msgSend_isDefaultsOnly(v64, v65, v66, v67);
  if (v12)
  {
    v72 = v68;
  }

  else
  {
    v72 = 0;
  }

  if (v72 == 1 && (objc_msgSend_isEmpty(v12, v69, v70, v71) & 1) == 0)
  {
    v73 = objc_msgSend_replacementWithDefaults(v64, v69, v70, v71);

    objc_storeStrong((*(*(a1 + 48) + 80) + 8 * v63), v73);
    v64 = v73;
  }

  if ((objc_msgSend_isDefaultsOnly(v64, v69, v70, v71) & 1) == 0)
  {
    v75 = objc_msgSend_hasSpillStrokeInRange_(v64, v74, *(a1 + 72), *(a1 + 80));
    objc_msgSend_lockForWrite(v64, v76, v77, v78);
    objc_msgSend_replaceCustomStrokeLayerWith_(v64, v79, v12, v80);
    objc_msgSend_invalidateSpillStrokes(v64, v81, v82, v83);
    objc_msgSend_unlock(v64, v84, v85, v86);
    if ((v75 & 1) == 0)
    {
      if (objc_msgSend_isEligibleForDefaultsOnlyReplacement(v64, v87, v88, v89))
      {
        v93 = objc_msgSend_strokesDefaultVendor(*(a1 + 48), v90, v91, v92);
        v96 = objc_msgSend_strokeLayerStackForColumn_(v93, v94, v63, v95);

        objc_storeStrong((*(*(a1 + 48) + 80) + 8 * v63), v96);
        v64 = v96;
      }
    }
  }
}

uint64_t sub_2213A95C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = &a2[a3];
  if (&a2[a3] >= a2)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = &a2[a3];
  }

  if (&a2[a3] < a2)
  {
    v6 = -a3;
  }

  else
  {
    v6 = 0;
  }

  if (a2 < v4)
  {
    v5 = a2;
    v6 = a3;
  }

  v7 = v4 == 0x7FFFFFFFFFFFFFFFLL;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v8;
  }

  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
    objc_msgSend_invalidateRange_(*(a1 + 32), 0x7FFFFFFFFFFFFFFFLL, v10, 0);
  }

  else
  {
    v11 = v9;
    objc_msgSend_invalidateRange_(*(a1 + 32), a2, v10, v9);
  }

  v13 = *(a1 + 40);

  return objc_msgSend_invalidateRange_(v13, v12, v10, v11);
}

void sub_2213A9650(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (*(a1 + 56) == 1)
  {
    v6 = objc_msgSend_modelRowForLayoutRow_(*(a1 + 32), a2, a2, a4);
  }

  v7 = objc_msgSend_strokeLayerForTopOfRow_(*(a1 + 40), a2, v6, a4);
  v13 = objc_msgSend_strokeLayerForBottomOfRow_(*(a1 + 40), v8, v6, v9);
  if (v7 | v13)
  {
    if (*(a1 + 48))
    {
      v14 = objc_msgSend_mutableCopy(v7, v10, v11, v12);
      v18 = objc_msgSend_mutableCopy(v13, v15, v16, v17);
      v19 = *(a1 + 48);
      v83 = MEMORY[0x277D85DD0];
      v84 = 3221225472;
      v85 = sub_2213A99DC;
      v86 = &unk_27845EBE8;
      v20 = v14;
      v87 = v20;
      v21 = v18;
      v88 = v21;
      objc_msgSend_enumerateRangesUsingBlock_(v19, v22, &v83, v23);
      v24 = v20;

      v25 = v21;
      v13 = v25;
      v7 = v24;
    }
  }

  else
  {
    v13 = 0;
    v7 = 0;
  }

  v26 = *(*(*(a1 + 32) + 8) + 8 * a2);
  isDefaultsOnly = objc_msgSend_isDefaultsOnly(v26, v27, v28, v29);
  if (v7)
  {
    v34 = isDefaultsOnly;
  }

  else
  {
    v34 = 0;
  }

  if (v34 == 1 && (objc_msgSend_isEmpty(v7, v31, v32, v33) & 1) == 0)
  {
    v35 = objc_msgSend_replacementWithDefaults(v26, v31, v32, v33);

    objc_storeStrong((*(*(a1 + 32) + 8) + 8 * a2), v35);
    v26 = v35;
  }

  if ((objc_msgSend_isDefaultsOnly(v26, v31, v32, v33, v83, v84, v85, v86) & 1) == 0)
  {
    objc_msgSend_lockForWrite(v26, v36, v37, v38);
    objc_msgSend_replaceCustomStrokeLayerWith_(v26, v39, v7, v40);
    objc_msgSend_unlock(v26, v41, v42, v43);
    if (objc_msgSend_isEligibleForDefaultsOnlyReplacement(v26, v44, v45, v46))
    {
      v50 = objc_msgSend_strokesDefaultVendor(*(a1 + 32), v47, v48, v49);
      v53 = objc_msgSend_strokeLayerStackForRow_(v50, v51, a2, v52);

      objc_storeStrong((*(*(a1 + 32) + 8) + 8 * a2), v53);
      v26 = v53;
    }
  }

  v54 = (a2 + 1);
  v55 = *(*(*(a1 + 32) + 32) + 8 * v54);
  v59 = objc_msgSend_isDefaultsOnly(v55, v56, v57, v58);
  if (v13)
  {
    v63 = v59;
  }

  else
  {
    v63 = 0;
  }

  if (v63 == 1 && (objc_msgSend_isEmpty(v13, v60, v61, v62) & 1) == 0)
  {
    v64 = objc_msgSend_replacementWithDefaults(v55, v60, v61, v62);

    objc_storeStrong((*(*(a1 + 32) + 32) + 8 * v54), v64);
    v55 = v64;
  }

  if ((objc_msgSend_isDefaultsOnly(v55, v60, v61, v62) & 1) == 0)
  {
    objc_msgSend_lockForWrite(v55, v65, v66, v67);
    objc_msgSend_replaceCustomStrokeLayerWith_(v55, v68, v13, v69);
    objc_msgSend_unlock(v55, v70, v71, v72);
    if (objc_msgSend_isEligibleForDefaultsOnlyReplacement(v55, v73, v74, v75))
    {
      v79 = objc_msgSend_strokesDefaultVendor(*(a1 + 32), v76, v77, v78);
      v82 = objc_msgSend_strokeLayerStackForRow_(v79, v80, v54, v81);

      objc_storeStrong((*(*(a1 + 32) + 32) + 8 * v54), v82);
      v55 = v82;
    }
  }
}

uint64_t sub_2213A99DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = &a2[a3];
  if (&a2[a3] >= a2)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = &a2[a3];
  }

  if (&a2[a3] < a2)
  {
    v6 = -a3;
  }

  else
  {
    v6 = 0;
  }

  if (a2 < v4)
  {
    v5 = a2;
    v6 = a3;
  }

  v7 = v4 == 0x7FFFFFFFFFFFFFFFLL;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v8;
  }

  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
    objc_msgSend_invalidateRange_(*(a1 + 32), 0x7FFFFFFFFFFFFFFFLL, v10, 0);
  }

  else
  {
    v11 = v9;
    objc_msgSend_invalidateRange_(*(a1 + 32), a2, v10, v9);
  }

  v13 = *(a1 + 40);

  return objc_msgSend_invalidateRange_(v13, v12, v10, v11);
}

void sub_2213A9B34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    objc_msgSend_lockForWriting(*(v5 + 904), a2, a3, a4);
    v9 = objc_msgSend_intersectingColumnsIndexSet(*(a1 + 40), v6, v7, v8);
    v13 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v10, v11, v12);
    v14 = v36;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_2213A9E40;
    v36[3] = &unk_27845EBE8;
    v36[4] = *(a1 + 32);
    v15 = v13;
    v36[5] = v15;
    objc_msgSend_enumerateRangesUsingBlock_(v9, v16, v36, v17);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_2213A9ED4;
    v35[3] = &unk_27845E958;
    v35[4] = *(a1 + 32);
    objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v15, v18, 1, v35);
    objc_msgSend_unlock(*(*(a1 + 32) + 904), v19, v20, v21);
  }

  else
  {
    objc_msgSend_lockForWriting(*(v5 + 912), 0, a3, a4);
    v9 = objc_msgSend_intersectingRowsIndexSet(*(a1 + 40), v22, v23, v24);
    v28 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v25, v26, v27);
    v14 = v38;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_2213A9DA8;
    v38[3] = &unk_27845EBE8;
    v38[4] = *(a1 + 32);
    v15 = v28;
    v38[5] = v15;
    objc_msgSend_enumerateRangesUsingBlock_(v9, v29, v38, v30);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_2213A9E34;
    v37[3] = &unk_27845E958;
    v37[4] = *(a1 + 32);
    objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v15, v31, 1, v37);
    objc_msgSend_unlock(*(*(a1 + 32) + 912), v32, v33, v34);
  }
}

uint64_t sub_2213A9DA8(uint64_t a1, const char *a2, int a3, uint64_t a4)
{
  v5 = a2;
  v7 = objc_msgSend_indexOfVisibleRowBeforeRowAtIndex_(*(a1 + 32), a2, a2, a4);
  v10 = objc_msgSend_indexOfVisibleRowAfterRowAtIndex_(*(a1 + 32), v8, (v5 + a3 - 1), v9);
  if (v10 == 0x7FFFFFFF)
  {
    v10 = objc_msgSend_numberOfRows(*(a1 + 32), v11, v12, v13);
  }

  if (v7 == 0x7FFFFFFF)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v15 = (v10 + 2) - v14;
  v16 = *(a1 + 40);

  return objc_msgSend_addIndexesInRange_(v16, v11, v14, v15);
}

uint64_t sub_2213A9E40(uint64_t a1, const char *a2, __int16 a3, uint64_t a4)
{
  v5 = a2;
  v7 = objc_msgSend_indexOfVisibleColumnBeforeColumnAtIndex_(*(a1 + 32), a2, a2, a4);
  v10 = objc_msgSend_indexOfVisibleColumnAfterColumnAtIndex_(*(a1 + 32), v8, (v5 + a3 - 1), v9);
  if (v10 == 0x7FFF)
  {
    v10 = objc_msgSend_numberOfColumns(*(a1 + 32), v11, v12, v13);
  }

  if (v7 == 0x7FFF)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v15 = v10 - v14 + 2;
  v16 = *(a1 + 40);

  return objc_msgSend_addIndexesInRange_(v16, v11, v14, v15);
}

void sub_2213AA164(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2213AA288(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v72 = objc_msgSend_newCell(*(a1 + 32), a2, a3, a4);
  objc_msgSend_getDefaultCell_forTableStyleArea_(*(a1 + 32), v6, v72, a2);
  v7 = objc_alloc_init(TSTCellStateForLayout);
  objc_msgSend_setModelCellID_(v7, v8, 0x7FFF7FFFFFFFLL, v9);
  objc_msgSend_setCell_(v7, v10, v72, v11);
  objc_msgSend_setCellPropsRowHeight_(v7, v12, 0, v13);
  objc_msgSend_setNeedWPColumn_(v7, v14, 0, v15);
  objc_msgSend_setCellWraps_(v7, v16, 0, v17);
  objc_msgSend_setPaddingInsets_(v7, v18, v19, v20, *MEMORY[0x277D81428], *(MEMORY[0x277D81428] + 8), *(MEMORY[0x277D81428] + 16), *(MEMORY[0x277D81428] + 24));
  objc_msgSend_setMinSize_(v7, v21, v22, v23, 4294967300.0, 0.0);
  objc_msgSend_setMaxSize_(v7, v24, v25, v26, 4294967300.0, 50000.0);
  objc_msgSend_setForDrawing_(v7, v27, 0, v28);
  objc_msgSend_setLayoutMergeRange_(v7, v29, 0x7FFF7FFFFFFFLL, 0);
  objc_msgSend_setInDynamicLayout_(v7, v30, 0, v31);
  objc_msgSend_setCellContents_(v7, v32, @"Q", v33);
  objc_msgSend_setLayoutCacheFlags_(v7, v34, 0, v35);
  objc_msgSend_setPageNumber_(v7, v36, 0, v37);
  objc_msgSend_setPageCount_(v7, v38, 0, v39);
  objc_msgSend_measureWithLayoutState_(*(a1 + 40), v40, v7, v41);
  objc_msgSend_sizeOfText(v7, v42, v43, v44);
  v46 = v45;
  v49 = objc_msgSend_defaultCellStyleForTableStyleArea_(*(a1 + 32), v47, a2, v48);
  v52 = objc_msgSend_valueForProperty_(v49, v50, 904, v51);
  objc_msgSend_topInset(v52, v53, v54, v55);
  v57 = v56;
  objc_msgSend_leftInset(v52, v58, v59, v60);
  objc_msgSend_bottomInset(v52, v61, v62, v63);
  v65 = v64;
  objc_msgSend_rightInset(v52, v66, v67, v68);
  v71 = v46 + v57 + v65;
  if (v71 < 8.0)
  {
    v71 = 8.0;
  }

  objc_msgSend_p_setDefaultFontHeight_forTableStyleArea_(*(a1 + 40), v69, a2, v70, v71);
}

uint64_t sub_2213AA890(void *a1, uint64_t a2)
{
  v3 = a1;
  v21 = xmmword_2217E0780;
  v10 = objc_msgSend_dynamicContentDelegate(v3, v4, v5, v6);
  if (!v10 || (objc_msgSend_dynamicContentDelegate(v3, v7, v8, v9), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, v10, (v12 & 1) == 0) || (objc_msgSend_dynamicContentDelegate(v3, v7, v8, v9), v13 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend_mergeRange_forCellID_(v13, v14, &v21, a2), v13, (v15 & 1) == 0))
  {
    v16 = objc_msgSend_tableInfo(v3, v7, v8, v9);
    *&v21 = objc_msgSend_mergeRangeAtCellID_(v16, v17, a2, v18);
    *(&v21 + 1) = v19;
  }

  return v21;
}

uint64_t sub_2213AAC8C(void *a1, uint64_t a2)
{
  v3 = a1;
  if ((objc_msgSend_isDynamicallyRevealingRowsCols_rowColIndex_(v3, v4, 0, a2) & 1) == 0)
  {
    if (objc_msgSend_isDynamicallyHidingRowsCols_rowColIndex_(v3, v5, 0, a2))
    {
      v6 = 1;
      goto LABEL_5;
    }

    v11 = objc_msgSend_emptyFilteredTable(v3, v7, v8, v9);
    if (a2)
    {
      v15 = 0;
    }

    else
    {
      v15 = v11;
    }

    if ((v15 & 1) == 0 && (objc_msgSend_processHiddenRowsForExport(v3, v12, v13, v14) & 1) == 0)
    {
      v19 = objc_msgSend_tableInfo(v3, v16, v17, v18);
      v6 = objc_msgSend_hidingActionForRowAtIndex_(v19, v20, a2, v21);

      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_5:

  return v6;
}

uint64_t sub_2213AAD64(void *a1, uint64_t a2)
{
  v3 = a1;
  if ((objc_msgSend_isDynamicallyRevealingRowsCols_rowColIndex_(v3, v4, 1, a2) & 1) == 0)
  {
    if (objc_msgSend_isDynamicallyHidingRowsCols_rowColIndex_(v3, v5, 1, a2))
    {
      hasHiddenColumnAtIndex = 1;
      goto LABEL_10;
    }

    v10 = objc_msgSend_emptyFilteredTable(v3, v7, v8, v9);
    if (a2)
    {
      v14 = 0;
    }

    else
    {
      v14 = v10;
    }

    if ((v14 & 1) == 0)
    {
      v15 = objc_msgSend_tableInfo(v3, v11, v12, v13);
      hasHiddenColumnAtIndex = objc_msgSend_hasHiddenColumnAtIndex_(v15, v16, a2, v17);

      goto LABEL_10;
    }
  }

  hasHiddenColumnAtIndex = 0;
LABEL_10:

  return hasHiddenColumnAtIndex;
}

uint64_t sub_2213AAE20(void *a1, uint64_t a2)
{
  v3 = a1;
  v9 = objc_msgSend_cellRange(v3, v4, v5, v6);
  v10 = v7;
  if (a2)
  {
    hasHiddenRowAtIndex = objc_msgSend_hasHiddenRowAtIndex_(v3, v7, (a2 - 1), v8);
  }

  else
  {
    hasHiddenRowAtIndex = 1;
  }

  if (v10 >> 32)
  {
    v12 = v9 == 0x7FFFFFFF;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v9 + HIDWORD(v10) - 1;
  }

  if (v13 >= a2)
  {
    v14 = objc_msgSend_hasHiddenRowAtIndex_(v3, v7, a2, v8);
  }

  else
  {
    v14 = 1;
  }

  return hasHiddenRowAtIndex & v14;
}

uint64_t sub_2213AAEDC(void *a1, unsigned int a2)
{
  v3 = a1;
  v9 = objc_msgSend_cellRange(v3, v4, v5, v6) >> 32;
  v10 = v7;
  if (a2)
  {
    hasHiddenColumnAtIndex = objc_msgSend_hasHiddenColumnAtIndex_(v3, v7, (a2 - 1), v8);
  }

  else
  {
    hasHiddenColumnAtIndex = 1;
  }

  if (v10)
  {
    v12 = v9 == 0x7FFF;
  }

  else
  {
    v12 = 1;
  }

  v13 = (v10 + v9 - 1);
  if (v12)
  {
    v13 = 0x7FFF;
  }

  if (v13 >= a2)
  {
    v14 = objc_msgSend_hasHiddenColumnAtIndex_(v3, v7, a2, v8);
  }

  else
  {
    v14 = 1;
  }

  return hasHiddenColumnAtIndex & v14;
}

void sub_2213AB6B4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213AB6F0(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v6 = objc_msgSend_cell(a2, a2, a3, a4);
  v10 = objc_msgSend_valueType(v6, v7, v8, v9);

  if (v10)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_2213AB80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213AB824(uint64_t a1, void *a2, _BYTE *a3)
{
  v25 = a2;
  v8 = objc_msgSend_cell(v25, v5, v6, v7);
  v12 = objc_msgSend_valueType(v8, v9, v10, v11);

  if (v12 == 6)
  {
    v16 = objc_msgSend_cell(v25, v13, v14, v15);
    *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_BOOLValue(v16, v17, v18, v19);
  }

  else
  {
    v20 = objc_msgSend_cell(v25, v13, v14, v15);
    v24 = objc_msgSend_valueType(v20, v21, v22, v23);

    if (v24)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  *a3 = *(*(*(a1 + 32) + 8) + 24);
}

uint64_t sub_2213AB9B0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_2213AC3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_2213AC4C4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_updateCellRange(*(a1 + 32), a2, a3, a4);
  v24 = objc_msgSend_tableInfo(*(a1 + 32), v5, v6, v7);
  objc_msgSend_validateTableNameEnabled(*(a1 + 32), v8, v9, v10);
  objc_msgSend_validateBandedFill(*(a1 + 32), v11, v12, v13);
  *(*(a1 + 32) + 576) = objc_msgSend_tableRowsBehaviorForTable_andEnvironment_(TSTLayoutEngine, v14, v24, *(*(a1 + 32) + 572));
  objc_msgSend_validateDynamicResizeInfo(*(a1 + 32), v15, v16, v17);
  objc_msgSend_validateChangeDescriptorQueue(*(a1 + 32), v18, v19, v20);
  objc_msgSend_validateTableNameHeight(*(a1 + 32), v21, v22, v23);
}

void sub_2213ACDB8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v28 = a2;
  if (objc_msgSend_changeDescriptor(v28, v6, v7, v8) - 37 >= 2)
  {
    *(*(*(a1 + 40) + 8) + 48) = 0x7FFF7FFFFFFFLL;
    *a4 = 1;
    goto LABEL_19;
  }

  v12 = objc_msgSend_cellRegion(v28, v9, v10, v11);
  if (objc_msgSend_isRectangle(v12, v13, v14, v15))
  {
    v19 = objc_msgSend_boundingCellRange(v12, v16, v17, v18);
    v20 = v16;
  }

  else
  {
    v20 = 0;
    v19 = 0x7FFF7FFFFFFFLL;
  }

  v21 = objc_msgSend_tableInfo(*(a1 + 32), v16, v17, v18);
  isSingleCellOrMergeRange = objc_msgSend_isSingleCellOrMergeRange_(v21, v22, v19, v20);

  v24 = *(*(a1 + 40) + 8);
  if (!isSingleCellOrMergeRange)
  {
LABEL_17:
    *(v24 + 48) = 0x7FFF7FFFFFFFLL;
    *a4 = 1;
    goto LABEL_18;
  }

  v25 = *(v24 + 48);
  if (v25 != 0x7FFFFFFF && (v25 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    if (v25 == v19 && ((v25 ^ v19) & 0xFFFF00000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  *(v24 + 48) = v19;
LABEL_18:

LABEL_19:
}

uint64_t sub_2213ACFD8(uint64_t a1, const char *a2, unint64_t a3, double a4, double a5, double a6, double a7, uint64_t a8)
{
  v8 = a2;
  v10 = a7 + a5 + a4;
  v11 = a2 == 0x7FFFFFFF;
  v12 = a2 & 0xFFFF00000000;
  if (v11 && (a2 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v13 = 0;
  }

  else
  {
    v13 = a2;
  }

  v14 = HIDWORD(a3);
  if (!HIDWORD(a3))
  {
    v11 = 1;
  }

  if (v11)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = a2 + HIDWORD(a3) - 1;
  }

  if (v13 < v15)
  {
    v16 = (a2 & 0xFFFFFFFF00000000) + v13;
    v17 = MEMORY[0x277CBF3A8];
    do
    {
      objc_msgSend_heightOfRow_skipDynamicSwap_withStrokeHeights_returnZeroIfHidden_clampToPartitionSize_maximumPartitionSize_outIsFitting_(*(a1 + 32), a2, v16, 0, 1, 1, 0, 0, *v17, v17[1], a6);
      if (v20 < 8.0)
      {
        v20 = 8.0;
      }

      v10 = v10 - v20;
      objc_msgSend_setFitHeight_forCellID_(*(*(a1 + 32) + 664), v18, v16++, v19, 8.0);
    }

    while (v15 != v16);
  }

  v21 = 8.0;
  if (v10 >= 8.0)
  {
    v21 = v10;
  }

  v22 = *(*(a1 + 32) + 664);

  return objc_msgSend_setFitHeight_forCellID_(v22, a2, (v8 + v14 - 1) | v12, a8, v21);
}

void sub_2213ADF8C(_Unwind_Exception *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213AE008(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_cellID(v3, v4, v5, v6);
  v11 = objc_msgSend_mergeRange(v3, v8, v9, v10);
  v13 = v12;
  v30.origin = v11;
  v30.size = v12;
  v17 = objc_msgSend_cell(v3, v12, v14, v15);
  if (*(a1 + 96))
  {
    if ((TSUCellRect::isValid(&v30) & 1) == 0)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTLayoutEngine p_validateFittingInfoWithCellRangeWorker:widthHeightCollection:containsMerges:validationBundle:]_block_invoke", v19);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutEngine.mm", v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 5580, 0, "this layout pass should be only merge cells");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
    }

    if (v7 == v30.origin.row && ((*&v30.origin ^ v7) & 0xFFFF00000000) == 0 && v17)
    {
      objc_msgSend_validateFittingInfoForCell_cellID_mergeRange_setFitting_layoutTask_widthHeightCollection_validationBundle_styleDefaultsCache_(*(a1 + 32), v18, v17, v7, *&v30.origin, *&v30.size, *(a1 + 97), *(a1 + 48), *(a1 + 40), *(a1 + 56), *(a1 + 64));
    }
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 48) = objc_msgSend_p_validateFittingInfoForEmptyCellsBetween_andCellID_inRange_widthHeightCollection_(*(a1 + 32), v16, *(*(*(a1 + 72) + 8) + 48), v7, *(a1 + 80), *(a1 + 88), *(a1 + 40));
    if (v17)
    {
      objc_msgSend_validateFittingInfoForCell_cellID_mergeRange_setFitting_layoutTask_widthHeightCollection_validationBundle_styleDefaultsCache_(*(a1 + 32), v29, v17, v7, v11, v13, *(a1 + 97), *(a1 + 48), *(a1 + 40), *(a1 + 56), *(a1 + 64));
    }
  }
}

void sub_2213AE364(uint64_t a1, const char *a2)
{
  v3 = (a1 + 56);
  v4 = objc_msgSend_mergesIntersectingRange_(*(a1 + 32), a2, *(a1 + 56), *(a1 + 64));
  if (objc_msgSend_count(v4, v5, v6, v7))
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = sub_2213A53FC;
    v40 = sub_2213A540C;
    v41 = objc_msgSend_regionFromRange_(TSTCellRegion, v8, *(a1 + 56), *(a1 + 64));
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_2213A53FC;
    v34 = sub_2213A540C;
    v35 = objc_msgSend_invalidRegion(TSTCellRegion, v9, v10, v11);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_2213AE67C;
    v28[3] = &unk_278463F08;
    v29 = *v3;
    v28[4] = &v36;
    v28[5] = &v30;
    objc_msgSend_enumerateRangesUsingBlock_(v4, v12, v28, v13);
    v14 = v37[5];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_2213AE730;
    v25[3] = &unk_278460BD0;
    v15 = *(a1 + 40);
    v25[4] = *(a1 + 32);
    v26 = v15;
    v27 = *(a1 + 48);
    objc_msgSend_enumerateCellRangesUsingBlock_(v14, v16, v25, v17);
    v18 = v31[5];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_2213AE74C;
    v22[3] = &unk_278460BD0;
    v19 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    v23 = v19;
    v24 = *(a1 + 48);
    objc_msgSend_enumerateCellRangesUsingBlock_(v18, v20, v22, v21);

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v36, 8);
  }

  else
  {
    objc_msgSend_p_validateFittingInfoWithCellRangeWorker_widthHeightCollection_containsMerges_validationBundle_(*(a1 + 32), v8, *(a1 + 56), *(a1 + 64), *(a1 + 40), 0, *(a1 + 48));
  }

  dispatch_group_leave(*(*(a1 + 32) + 128));
}

void sub_2213AE600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22)
{
  _Block_object_dispose((v23 - 160), 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2213AE67C(uint64_t a1, const char *a2, TSUCellCoord a3, uint64_t a4)
{
  v7 = objc_msgSend_regionBySubtractingRange_(*(*(*(a1 + 32) + 8) + 40), a2, *&a3, a4);
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = a3;
  if (TSUCellRect::contains((a1 + 48), v10))
  {
    v12 = objc_msgSend_regionByAddingRange_(*(*(*(a1 + 40) + 8) + 40), v11, *&a3, a4);
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void sub_2213AE9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v19 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2213AE9D0(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4)
{
  *(*(*(a1 + 32) + 8) + 52) = a2;
  ++*(*(*(a1 + 40) + 8) + 24);
  if (*(*(*(a1 + 48) + 8) + 24) == *(a1 + 56))
  {
    if (*(*(*(a1 + 40) + 8) + 24) >= 5)
    {
      *a3 = 1;
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_tableStyleAreaForCellID_(*(a1 + 64), a2, *(*(*(a1 + 32) + 8) + 48), a4);
  }

  v5 = *(a1 + 72);
  v6 = *(**(a1 + 80) + 8 * *(*(*(a1 + 48) + 8) + 24));
  v7 = *(*(*(a1 + 32) + 8) + 48);

  return objc_msgSend_addFittingHeight_forCellID_(v5, a2, v7, a4, v6);
}

void sub_2213AEFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2213AF028(uint64_t a1, const char *a2, int a3, uint64_t a4)
{
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 24);
  v7 = a2 - v6;
  *(v5 + 24) = v6 + a3;
  v8 = objc_msgSend_indexOfVisibleColumnBeforeColumnAtIndex_(*(a1 + 32), a2, (a2 - v6), a4);
  v11 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(*(a1 + 32), v9, v7, v10);
  if (v8 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v8;
  }

  if (v8 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v8;
  }

  if (v14 == 0x7FFF)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14 - v13 + 1;
  }

  v16 = *(a1 + 40);

  return objc_msgSend_addIndexesInRange_(v16, v12, v13, v15);
}

void sub_2213AF5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2213AF660(uint64_t a1, const char *a2, int a3)
{
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 24);
  v5 = a2 - v4;
  *(v3 + 24) = v4 + a3;
  if (a2 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2 - v4 - 1;
  }

  v7 = v5 - v6;
  v8 = v5 - v6 + 1;
  v9 = v6 >= v8;
  if (v6 <= v8)
  {
    v10 = (v7 + 1);
  }

  else
  {
    v10 = v6;
  }

  if (v9)
  {
    return objc_msgSend_addIndexesInRange_(*(a1 + 32), a2, (v7 + 1), v10 - (v7 + 1));
  }

  else
  {
    return objc_msgSend_addIndexesInRange_(*(a1 + 32), a2, v6, v10 - v6);
  }
}

void sub_2213AF754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2213AFA9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v15 = v14;

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2213AFE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v20 = v19;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213AFEDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v9 = a2;
  *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_p_containsGradientThatFillsContainerInStyle_(*(a1 + 32), v10, v9, v11);
  v13 = *(a1 + 48);
  if (*(*(v13 + 8) + 24) == 1)
  {
    v14 = 1;
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2213AFFE4;
    v16[3] = &unk_278463FA8;
    v15 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v16[5] = v13;
    objc_msgSend_enumerateWithAttributeKind_inRange_usingBlock_(v15, v12, 3, a3, a4, v16);
    v14 = *(*(*(a1 + 48) + 8) + 24);
  }

  *a5 = v14;
}

void sub_2213AFFE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_p_containsGradientThatFillsContainerInStyle_(*(a1 + 32), v7, v9, v8);
  *a5 = *(*(*(a1 + 40) + 8) + 24);
}

void sub_2213B0BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a33, 8);

  _Unwind_Resume(a1);
}

TSTWidthHeightCollection *sub_2213B0C68()
{
  v0 = objc_alloc_init(TSTWidthHeightCollection);

  return v0;
}

uint64_t sub_2213B0C98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = objc_msgSend_cellValueType(v5, v7, v8, v9);
  v14 = objc_msgSend_cell(v5, v11, v12, v13);
  IsText = objc_msgSend_valueIsText(v14, v15, v16, v17);

  v281 = 0;
  if (v10)
  {
    v22 = objc_msgSend_cell(v5, v19, v20, v21);
    v26 = objc_msgSend_formatType(v22, v23, v24, v25);

    if (v26 != 267)
    {
      v280 = 1;
      v30 = *(a1 + 32);
      v31 = objc_msgSend_cell(v5, v27, v28, v29);
      v35 = objc_msgSend_cellID(v5, v32, v33, v34);
      v279 = 0;
      objc_msgSend_getTextPropertiesWithCell_cellID_wraps_alignment_verticalAlignment_padding_(v30, v36, v31, v35, &v281, 0, &v280, &v279);
      v37 = v279;

      v278 = v37;
      objc_msgSend_edgeInsetsFromPadding_(*(a1 + 40), v38, v37, v39);
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v281 &= IsText;
      v51 = objc_msgSend_cell(v5, v48, v49, v50);
      v55 = objc_msgSend_valueType(v51, v52, v53, v54);

      switch(v55)
      {
        case 6:
          v65 = objc_msgSend_cell(v5, v56, v57, v58);
          v69 = objc_msgSend_formatType(v65, v66, v67, v68);

          if (v69 == 263)
          {
            v64 = 0;
            v275 = 1;
            goto LABEL_12;
          }

          break;
        case 8:
          v64 = 0;
LABEL_61:

          goto LABEL_62;
        case 9:
          v59 = objc_msgSend_cell(v5, v56, v57, v58);
          v63 = objc_msgSend_richTextValue(v59, v60, v61, v62);
LABEL_11:
          v64 = v63;

          v275 = 0;
LABEL_12:
          v73 = MEMORY[0x277CBF3A8];
          v74 = *MEMORY[0x277CBF3A8];
          v75 = objc_msgSend_cell(v5, v56, v57, v58);
          v79 = objc_msgSend_currentFormatUsesAccountingStyle(v75, v76, v77, v78);
          if (v64)
          {
            v83 = v79;
          }

          else
          {
            v83 = 0;
          }

          if (v83 == 1)
          {
            v84 = objc_msgSend_length(v64, v80, v81, v82);

            if (v84)
            {
              v276 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v64, v85, @"\t", &stru_2834BADA0);
              objc_opt_class();
              v91 = objc_msgSend_context(*(a1 + 32), v88, v89, v90);
              v95 = objc_msgSend_documentObject(v91, v92, v93, v94);
              v96 = TSUCheckedDynamicCast();

              v97 = *(a1 + 40);
              v101 = objc_msgSend_cell(v5, v98, v99, v100);
              v105 = objc_msgSend_cellID(v5, v102, v103, v104);
              v107 = objc_msgSend_newTextEngineForCell_atCellID_textStyle_(v97, v106, v101, v105, 0);

              v108 = [TSTTextEngineDelegate alloc];
              v109 = v280;
              v113 = objc_msgSend_typesettingLocale(v96, v110, v111, v112);
              shouldHyphenate = objc_msgSend_shouldHyphenate(v96, v114, v115, v116);
              v121 = objc_msgSend_styleProvidingSource(*(a1 + 40), v118, v119, v120);
              shouldHyphenate_styleProvidingSource = objc_msgSend_initWithPadding_verticalAlignment_locale_shouldHyphenate_styleProvidingSource_(v108, v122, v109, v113, shouldHyphenate, v121, v41, v43, v45, v47);

              objc_msgSend_setDelegate_(v107, v124, shouldHyphenate_styleProvidingSource, v125);
              v126 = v276;
              v128 = objc_msgSend_layoutText_context_kind_minSize_maxSize_anchor_flags_(v107, v127, v276, 0, 5, 15, 8.0, 0.0, 4294967300.0, 50000.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
              objc_msgSend_setDelegate_(v107, v129, 0, v130);
              objc_msgSend_range(v128, v131, v132, v133);
              if (v134)
              {
                v74 = v43 + v47 + sub_2213A5824(v128);
              }

              goto LABEL_55;
            }
          }

          else
          {
          }

          v136 = objc_msgSend_mergeRange(v5, v85, v86, v87);
          if (v136 == 0x7FFFFFFF || (v136 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v135) || !v135)
          {
            v136 = objc_msgSend_cellID(v5, v135, v136, v137);
            v135 = 0x100000001;
          }

          objc_msgSend_contentWidthForCellRange_skipDynamicSwap_(*(a1 + 40), v135, v136, v135, 0);
          v139 = v138;
          v143 = objc_msgSend_cellIDToWPColumnCache(*(a1 + 40), v140, v141, v142);
          v147 = objc_msgSend_cellID(v5, v144, v145, v146);
          v150 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v148, (v147 << 15) | WORD2(v147), v149);
          v153 = objc_msgSend_objectForKey_(v143, v151, v150, v152);

          v277 = v153;
          if (v153)
          {
            v74 = sub_2213A5824(v153);
            if (v74 == v139)
            {
              v126 = v153;
LABEL_58:

              v271 = objc_msgSend_cellID(v5, v267, v268, v269);
              v273 = v47 + v43 + 30.0;
              if (!v275)
              {
                v273 = v74;
              }

              objc_msgSend_addFittingWidth_forCellID_(v6, v270, v271, v272, v273);
              goto LABEL_61;
            }

            v157 = objc_msgSend_cellIDToWPColumnCache(*(a1 + 40), v154, v155, v156);
            v161 = objc_msgSend_cellID(v5, v158, v159, v160);
            v164 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v162, (v161 << 15) | WORD2(v161), v163);
            objc_msgSend_removeObjectForKey_(v157, v165, v164, v166);
          }

          v96 = objc_alloc_init(TSTCellStateForLayout);
          v170 = objc_msgSend_cellID(v5, v167, v168, v169);
          objc_msgSend_setModelCellID_(v96, v171, v170, v172);
          v176 = objc_msgSend_cell(v5, v173, v174, v175);
          objc_msgSend_setCell_(v96, v177, v176, v178);

          objc_msgSend_setCellPropsRowHeight_(v96, v179, 0, v180);
          objc_msgSend_setNeedWPColumn_(v96, v181, 0, v182);
          objc_msgSend_setShouldFastPathMeasureFitWidth_(v96, v183, 1, v184);
          objc_msgSend_setCellWraps_(v96, v185, v281, v186);
          objc_msgSend_setPaddingInsets_(v96, v187, v188, v189, v41, v43, v45, v47);
          objc_msgSend_setVerticalAlignment_(v96, v190, v280, v191);
          v195 = 8.0;
          if (!v281)
          {
            v195 = v139;
          }

          objc_msgSend_setMinSize_(v96, v192, v193, v194, v195, 0.0);
          if (v281)
          {
            objc_msgSend_setMaxSize_(v96, v196, v197, v198, v139, 50000.0);
          }

          else
          {
            objc_msgSend_setMaxSize_(v96, v196, v197, v198, 4294967300.0, 50000.0);
          }

          objc_msgSend_setForDrawing_(v96, v199, 1, v200);
          v204 = objc_msgSend_isInDynamicLayoutMode(*(a1 + 40), v201, v202, v203);
          objc_msgSend_setInDynamicLayout_(v96, v205, v204, v206);
          objc_msgSend_setCellContents_(v96, v207, v64, v208);
          v212 = objc_msgSend_mergeRange(v5, v209, v210, v211);
          if (v212 == 0x7FFFFFFF || (v212 & 0xFFFF00000000) == 0x7FFF00000000 || !(v213 >> 32) || !v213)
          {
            objc_msgSend_setLayoutMergeRange_(v96, v213, 0x7FFF7FFFFFFFLL, 0);
          }

          else
          {
            objc_msgSend_mergeRange(v5, v213, v214, v215);
            v217 = v216;
            v218 = *(a1 + 40);
            v221 = objc_msgSend_mergeRange(v5, v216, v219, v220);
            v224 = objc_msgSend_layoutCellIDForModelCellID_(v218, v222, v221, v223);
            objc_msgSend_setLayoutMergeRange_(v96, v225, v224, v217);
          }

          objc_opt_class();
          v226 = TSUDynamicCast();
          v107 = v226;
          if (v226)
          {
            if (objc_msgSend_hasAttachmentsThatChangeWithPageNumberOrPageCount(v226, v227, v228, v229))
            {
              v232 = 0;
              objc_msgSend_setLayoutCacheFlags_(v96, v230, 0, v231);
            }

            else
            {
              v232 = 15;
              objc_msgSend_setLayoutCacheFlags_(v96, v230, 15, v231);
            }
          }

          else
          {
            v232 = 15;
            objc_msgSend_setLayoutCacheFlags_(v96, v227, 15, v229);
          }

          objc_msgSend_measureWithLayoutState_(*(a1 + 40), v233, v96, v234);
          v238 = objc_msgSend_wpColumn(v96, v235, v236, v237);
          objc_msgSend_range(v238, v239, v240, v241);
          v243 = v242;

          if (v243)
          {
            v247 = objc_msgSend_wpColumn(v96, v244, v245, v246);
            v248 = sub_2213A5824(v247);

            v74 = v43 + v47 + v248;
          }

          else
          {
            objc_msgSend_sizeOfText(v96, v244, v245, v246);
            if (v253 == *v73 && v252 == v73[1])
            {
              v74 = v43 + v47;
            }

            else
            {
              objc_msgSend_sizeOfText(v96, v249, v250, v251);
              v74 = v254;
            }
          }

          v255 = objc_msgSend_keyVal(v96, v249, v250, v251);

          if ((v232 & 2) == 0 || !v255)
          {
            v126 = v277;
            goto LABEL_57;
          }

          shouldHyphenate_styleProvidingSource = objc_msgSend_dupContentCache(*(a1 + 40), v256, v257, v258);
          v128 = objc_msgSend_wpColumn(v96, v259, v260, v261);
          v126 = v277;
          v265 = objc_msgSend_keyVal(v96, v262, v263, v264);
          objc_msgSend_setObject_forKey_(shouldHyphenate_styleProvidingSource, v266, v128, v265);

LABEL_55:
LABEL_57:

          goto LABEL_58;
      }

      v59 = objc_msgSend_cell(v5, v56, v57, v58);
      v63 = objc_msgSend_formattedValue(v59, v70, v71, v72);
      goto LABEL_11;
    }
  }

LABEL_62:

  return 0;
}

void sub_2213B1644(uint64_t a1, void *a2)
{
  v8 = a2;
  v5 = objc_msgSend_columnToWidthMapFromCollectionArray_(*(*(a1 + 32) + 664), v3, v8, v4);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_2213B2EEC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2213B2F98;
  v8[3] = &unk_278464068;
  v3 = *(a1 + 32);
  v8[4] = *(a1 + 40);
  objc_msgSend_enumerateCellStatesUsingBlock_(v3, v4, v8, v5);
  objc_msgSend_writeToLayoutEngineCaches_(*(a1 + 32), v6, *(a1 + 48), v7);
  objc_autoreleasePoolPop(v2);
  dispatch_group_leave(*(*(a1 + 40) + 128));
}

void sub_2213B323C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213B3280(uint64_t a1, void *a2)
{
  v110 = a2;
  v6 = objc_msgSend_cellID(v110, v3, v4, v5);
  v10 = objc_msgSend_cell(v110, v7, v8, v9);
  if (objc_msgSend_hasValueOrError(v10, v11, v12, v13))
  {
    v20 = objc_msgSend_cellStyle(v10, v14, v15, v16);
    if (!v20)
    {
      v20 = objc_msgSend_defaultCellStyleForCellID_useSoftDefault_outSource_(*(a1 + 32), v17, v6, 1, 0);
    }

    v24 = objc_msgSend_textStyle(v10, v17, v18, v19);
    if (!v24)
    {
      v24 = objc_msgSend_defaultTextStyleForCellID_useSoftDefault_outSource_(*(a1 + 32), v21, v6, 1, 0);
    }

    v25 = objc_msgSend_valueType(v10, v21, v22, v23);
    v108 = objc_msgSend_valueForProperty_(v20, v26, 904, v27);
    objc_msgSend_edgeInsetsFromPadding_(*(a1 + 40), v28, v108, v29);
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    if (v25 == 9)
    {
      v109 = objc_msgSend_richTextStorageForLayout(v10, v30, v31, v32);
      v41 = 0;
      objc_msgSend_fontInfoForTextStyle_withString_(*(*(a1 + 40) + 856), v42, v24, 0);
    }

    else
    {
      v43 = objc_msgSend_cell(v110, v30, v31, v32);
      v41 = objc_msgSend_formattedValue(v43, v44, v45, v46);

      v109 = 0;
      objc_msgSend_fontInfoForTextStyle_withString_(*(*(a1 + 40) + 856), v47, v24, v41);
    }
    v48 = ;
    v51 = v48;
    if (v25 == 9 || !v48)
    {
      v55 = [TSTLayoutContentCachedKey alloc];
      v107 = objc_msgSend_initWithString_width_height_paragraphStyle_cellWraps_valueType_paddingInsets_verticalAlignment_writingDirection_naturalAlignment_styleProvidingSource_(v55, v56, v41, v24, 0, v25, 0, 0, 4294967300.0, 8.0, v34, v36, v38, v40, 0, 0);
      v60 = objc_msgSend_dupContentCache(*(a1 + 40), v57, v58, v59);
      v63 = objc_msgSend_objectForKey_(v60, v61, v107, v62);

      if (v63)
      {
        goto LABEL_19;
      }

      v106 = objc_msgSend_newTextEngineForCell_atCellID_textStyle_(*(a1 + 40), v64, v10, v6, v24);
      objc_opt_class();
      v68 = objc_msgSend_context(*(a1 + 32), v65, v66, v67);
      v72 = objc_msgSend_documentObject(v68, v69, v70, v71);
      v105 = TSUCheckedDynamicCast();

      v73 = [TSTTextEngineDelegate alloc];
      v77 = objc_msgSend_typesettingLocale(v105, v74, v75, v76);
      shouldHyphenate = objc_msgSend_shouldHyphenate(v105, v78, v79, v80);
      v85 = objc_msgSend_styleProvidingSource(*(a1 + 40), v82, v83, v84);
      shouldHyphenate_styleProvidingSource = objc_msgSend_initWithPadding_verticalAlignment_locale_shouldHyphenate_styleProvidingSource_(v73, v86, 0, v77, shouldHyphenate, v85, v34, v36, v38, v40);

      objc_msgSend_setMaxWidthForChildren_(shouldHyphenate_styleProvidingSource, v88, v89, v90, 4294967300.0);
      objc_msgSend_setDelegate_(v106, v91, shouldHyphenate_styleProvidingSource, v92);
      v94 = *MEMORY[0x277CBF348];
      v95 = *(MEMORY[0x277CBF348] + 8);
      if (v109)
      {
        objc_msgSend_layoutTextStorage_minSize_maxSize_anchor_pageNumber_pageCount_flags_(v106, v93, v109, 0, 1, 15, 4294967300.0, 0.0, 4294967300.0, 50000.0, v94, v95);
      }

      else
      {
        objc_msgSend_layoutText_context_kind_minSize_maxSize_anchor_flags_(v106, v93, v41, 0, 5, 15, 4294967300.0, 0.0, 4294967300.0, 50000.0, v94, v95);
      }
      v63 = ;
      v99 = objc_msgSend_dupContentCache(*(a1 + 40), v96, v97, v98);
      objc_msgSend_setObject_forKey_(v99, v100, v63, v107);

      objc_msgSend_setDelegate_(v106, v101, 0, v102);
      if (v63)
      {
LABEL_19:
        v103 = v36 + v40 + sub_2213A5824(v63);
        v104 = *(*(a1 + 48) + 8);
        if (v103 < *(v104 + 24))
        {
          v103 = *(v104 + 24);
        }

        *(v104 + 24) = v103;
      }
    }

    else
    {
      objc_msgSend_widthForString_(v48, v49, v41, v50);
      v53 = v36 + v40 + v52;
      v54 = *(*(a1 + 48) + 8);
      if (v53 < *(v54 + 24))
      {
        v53 = *(v54 + 24);
      }

      *(v54 + 24) = v53;
    }
  }
}

void sub_2213B3A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2213B3A78(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2213B3A9C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2213B3AB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], a2, a2, a4);
  v16 = objc_msgSend_regionByIntersectingColumnIndices_(v5, v8, v7, v9);

  if (objc_msgSend_cellCount(v16, v10, v11, v12))
  {
    objc_msgSend_unwrappedFittingWidthsForColumnInCellRegionWorker_(*(a1 + 40), v13, v16, v14);
    *(*(*(*(a1 + 48) + 8) + 48) + 8 * v6) = v15;
  }
}

uint64_t sub_2213B3C88(uint64_t a1, const char *a2)
{
  v2 = a2;
  objc_msgSend_widthOfColumn_skipDynamicSwap_returnZeroIfHidden_outIsFitting_(*(a1 + 32), a2, a2, 0, 1, 0);
  v5 = *(a1 + 40);

  return MEMORY[0x2821F9670](v5, sel_cacheWidth_ofColumn_, v2, v4);
}

double sub_2213B4860(double result)
{
  if (result < 2.0)
  {
    return 2.0;
  }

  return result;
}

void sub_2213B51AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_2213B5ACC(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_2217E0F60)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_22107C148();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_2210874C4(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_2217E0F60)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void sub_2213B5C9C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_22107C148();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      sub_22107C1F0(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    sub_22107C098(a1, v11);
    sub_22107C26C(v11);
  }
}

void sub_2213B5D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2213B62AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_cellRegion(v3, v4, v5, v6);
  v11 = objc_msgSend_boundingCellRange(v7, v8, v9, v10);
  v13 = v12;

  v17 = 0;
  v18 = *(a1 + 32);
  v19 = 0x7FFFLL;
  v20 = 0x7FFFFFFF;
  if (v11 == 0x7FFFFFFF)
  {
    goto LABEL_43;
  }

  v21 = 0;
  if ((v11 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_44;
  }

  v17 = 0;
  v19 = 0x7FFFLL;
  if (!HIDWORD(v13))
  {
    goto LABEL_43;
  }

  v21 = 0;
  if (!v13)
  {
    goto LABEL_44;
  }

  v22 = v18[5];
  if (v22 == 0x7FFFFFFF || (v22 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v17 = 0;
    v21 = 0;
    v19 = 0x7FFFLL;
    goto LABEL_44;
  }

  v17 = 0;
  v24 = v18[6];
  v19 = 0x7FFFLL;
  if (!HIDWORD(v24))
  {
LABEL_43:
    v21 = 0;
    goto LABEL_44;
  }

  v21 = 0;
  if (v24)
  {
    v20 = *MEMORY[0x277D813C8];
    v19 = *(MEMORY[0x277D813C8] + 4);
    v25 = HIDWORD(v22);
    v15 = WORD2(v11);
    v16 = WORD2(v22);
    if (WORD2(v11) <= WORD2(v22))
    {
      v26 = WORD2(v22);
    }

    else
    {
      v26 = WORD2(v11);
    }

    v27 = v22 + HIDWORD(v24) - 1;
    if (v22 == 0x7FFFFFFF)
    {
      v28 = 0;
    }

    else
    {
      v28 = v18[5];
    }

    if (v22 == 0x7FFFFFFF)
    {
      v27 = 0x7FFFFFFF;
    }

    v29 = v11;
    if (v11 <= v28)
    {
      v29 = v28;
    }

    v30 = v13 + WORD2(v11) - 1;
    if (WORD2(v11) == 0x7FFF || v13 == 0)
    {
      v30 = 0x7FFF;
    }

    v32 = v24 + v25 - 1;
    if (WORD2(v22) == 0x7FFF || v24 == 0)
    {
      LOWORD(v34) = 0x7FFF;
    }

    else
    {
      LOWORD(v34) = v32;
    }

    v14 = v34;
    if (v30 >= v34)
    {
      v34 = v34;
    }

    else
    {
      v34 = v30;
    }

    if (v11 + HIDWORD(v13) - 1 >= v27)
    {
      v35 = v27;
    }

    else
    {
      v35 = v11 + HIDWORD(v13) - 1;
    }

    v36 = v35 - v29;
    if (v35 < v29 || v26 > v34)
    {
      v21 = *(MEMORY[0x277D813C8] + 6) << 48;
      v17 = *(MEMORY[0x277D813C8] + 8);
    }

    else
    {
      v21 = 0;
      v17 = (v34 - v26 + 1) | ((v36 + 1) << 32);
      v20 = v29;
      v19 = v26;
    }
  }

LABEL_44:
  if ((v20 | (v19 << 32)) == 0x7FFF7FFFFFFFLL || !HIDWORD(v17) || !v17 || (v20 == *MEMORY[0x277D813C8] ? (v43 = ((*MEMORY[0x277D813C8] ^ (v21 | (v19 << 32))) & 0x101FFFF00000000) == 0) : (v43 = 0), v43 ? (v44 = v17 == *(MEMORY[0x277D813C8] + 8)) : (v44 = 0), v44))
  {
    v37 = objc_msgSend_layout(v18, v14, v15, v16);

    if (!v37)
    {
      goto LABEL_61;
    }

    v41 = objc_msgSend_layout(*(a1 + 32), v38, v39, v40);
    v42 = sub_2211B729C(v41, v11, v13);

    if (!v42)
    {
      goto LABEL_61;
    }
  }

  v47 = objc_msgSend_indexForSelection_(*(a1 + 40), v14, v3, v16);
  if (v47 <= 1)
  {
    v53 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSTLayoutHint overlapsWithSelectionPath:]_block_invoke_2", v46);
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayoutHint.mm", v56);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v58, v54, v57, 136, 0, "Invalid cell selection index %lu for %@", v47, *(a1 + 40));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61);
LABEL_61:
    v52 = 0;
    goto LABEL_64;
  }

  objc_opt_class();
  v50 = objc_msgSend_selectionAtIndex_(*(a1 + 40), v48, v47 - 1, v49);
  v51 = TSUDynamicCast();

  if (v51)
  {
    v52 = (*(*(a1 + 48) + 16))();
  }

  else
  {
    v52 = 0;
  }

LABEL_64:
  return v52;
}

id sub_2213B702C(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2213B70CC;
  block[3] = &unk_278462558;
  block[4] = a1;
  if (qword_27CFB54C0 != -1)
  {
    dispatch_once(&qword_27CFB54C0, block);
  }

  v1 = qword_27CFB54B8;

  return v1;
}

void sub_2213B70CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_properties(*(a1 + 32), a2, a3, a4);
  v6 = objc_msgSend_propertySetByAddingProperties_(v8, v4, 51, v5, 906, 0);
  v7 = qword_27CFB54B8;
  qword_27CFB54B8 = v6;
}

id sub_2213B7138(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  if (objc_msgSend_containsProperty_(v12, v15, 906, v16))
  {
    v20 = objc_opt_class();
    v24 = objc_msgSend_properties(v20, v21, v22, v23);
    v27 = objc_msgSend_containsAnyPropertyInProperties_(v12, v25, v24, v26);

    if (v27)
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSWPParagraphStyle(CellDiffAdditions) objectByRemovingPropertiesInMap:addingPropertiesInMap:updateInverseResetPropertyMap:updateInverseSetPropertyMap:optionalConcurrentStylesheet:]", v29);
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPParagraphStyle+CellDiffAdditions.m", v33);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v35, v31, v34, 52, 0, "Can't specify both a text style and a text style change at the same time.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38);
    }

    objc_msgSend_setObject_forProperty_(v13, v28, a1, 906);
    v41 = objc_msgSend_objectForProperty_(v12, v39, 906, v40);
  }

  else
  {
    v42 = objc_msgSend_stylesheet(a1, v17, v18, v19);
    v46 = a1;
    v130 = v13;
    if (!v42)
    {
      v47 = v11;
      v48 = MEMORY[0x277D81150];
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSWPParagraphStyle(CellDiffAdditions) objectByRemovingPropertiesInMap:addingPropertiesInMap:updateInverseResetPropertyMap:updateInverseSetPropertyMap:optionalConcurrentStylesheet:]", v45);
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPParagraphStyle+CellDiffAdditions.m", v51);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v53, v49, v52, 60, 0, "Stylesheet should not be nil. Attempting repair.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56);
      v60 = objc_msgSend_parent(v46, v57, v58, v59);
      v64 = objc_msgSend_stylesheet(v60, v61, v62, v63);
      v68 = v64;
      if (v64)
      {
        v42 = v64;
      }

      else
      {
        v69 = objc_msgSend_documentRoot(v46, v65, v66, v67);
        v42 = objc_msgSend_stylesheet(v69, v70, v71, v72);
      }

      if (v14)
      {
        objc_msgSend_repairOrReplaceErrantStyle_(v14, v73, v46, v74);
      }

      else
      {
        objc_msgSend_repairOrReplaceErrantStyle_(v42, v73, v46, v74);
      }
      v75 = ;

      if (v75 && v42)
      {
        v46 = v75;
      }

      else
      {
        v76 = MEMORY[0x277D81150];
        v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSWPParagraphStyle(CellDiffAdditions) objectByRemovingPropertiesInMap:addingPropertiesInMap:updateInverseResetPropertyMap:updateInverseSetPropertyMap:optionalConcurrentStylesheet:]", v45);
        v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPParagraphStyle+CellDiffAdditions.m", v79);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v81, v77, v80, 73, 0, "No usable style or stylesheet to vary against!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v83, v84);
        v46 = v46;
      }

      v11 = v47;
    }

    if (objc_msgSend_isVariation(v46, v43, v44, v45))
    {
      v88 = objc_msgSend_overridePropertyMap(v46, v85, v86, v87);
      v92 = objc_msgSend_copy(v88, v89, v90, v91);
    }

    else
    {
      v92 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v85, v86, v87);
    }

    v93 = objc_opt_class();
    v97 = objc_msgSend_properties(v93, v94, v95, v96);
    v129 = v11;
    v100 = objc_msgSend_propertyMapWithProperties_(v11, v98, v97, v99);

    v135[0] = MEMORY[0x277D85DD0];
    v135[1] = 3221225472;
    v135[2] = sub_2213B7674;
    v135[3] = &unk_278464128;
    v101 = v92;
    v136 = v101;
    v102 = v130;
    v137 = v102;
    v103 = v46;
    v138 = v103;
    objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v100, v104, v135, v105);
    v106 = objc_opt_class();
    v110 = objc_msgSend_properties(v106, v107, v108, v109);
    v113 = objc_msgSend_propertyMapWithProperties_(v12, v111, v110, v112);

    v131[0] = MEMORY[0x277D85DD0];
    v131[1] = 3221225472;
    v131[2] = sub_2213B76EC;
    v131[3] = &unk_278464128;
    v114 = v101;
    v132 = v114;
    v133 = v102;
    v115 = v103;
    v134 = v115;
    objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v113, v116, v131, v117);
    if (v14)
    {
      objc_opt_class();
      v124 = objc_msgSend_rootAncestor(v115, v121, v122, v123);
      v126 = objc_msgSend_variationOfStyle_propertyMap_(v14, v125, v124, v114);
      v41 = TSUDynamicCast();
    }

    else
    {
      v124 = objc_msgSend_rootAncestor(v115, v118, v119, v120);
      v41 = objc_msgSend_variationOfStyle_propertyMap_(v42, v127, v124, v114);
    }

    v11 = v129;
    v13 = v130;
  }

  return v41;
}

void sub_2213B7674(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_removeValueForProperty_(*(a1 + 32), a2, a2, a4);
  v6 = *(a1 + 40);
  v10 = objc_msgSend_boxedValueForProperty_(*(a1 + 48), v7, a2, v8);
  objc_msgSend_setBoxedObject_forProperty_(v6, v9, v10, a2);
}

void sub_2213B76EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_setBoxedObject_forProperty_(*(a1 + 32), a2, a4, a2);
  v6 = *(a1 + 40);
  v10 = objc_msgSend_boxedValueForProperty_(*(a1 + 48), v7, a2, v8);
  objc_msgSend_setBoxedObject_forProperty_(v6, v9, v10, a2);
}

void sub_2213B7E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2213B7EBC(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = objc_msgSend_children(v3, v4, v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v26, v30, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v7);
        }

        objc_opt_class();
        v13 = TSUClassAndProtocolCast();
        v17 = v13;
        if (v13 && objc_msgSend_participatesInLastRowHeight(v13, v14, v15, v16, &unk_2835990B8))
        {
          objc_msgSend_frameInRoot(v17, v18, v19, v20);
          MaxY = CGRectGetMaxY(v32);
          objc_msgSend_frameInRoot(v3, v22, v23, v24);
          *(*(*(a1 + 32) + 8) + 24) = MaxY - CGRectGetMaxY(v33) + *(*(*(a1 + 32) + 8) + 24);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v25, &v26, v30, 16);
    }

    while (v10);
  }
}

void sub_2213B9D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_2213B9D84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_frame(a2, a2, a3, a4);
  v6 = *(*(a1 + 32) + 8);
  v6[4] = v7;
  v6[5] = v8;
  v6[6] = v9;
  v6[7] = v10;
  return result;
}

TSCEASTRewriter *sub_2213BABEC(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *a1 = &unk_2834A6FA0;
  *(a1 + 25) = v7;
  return a1;
}

TSCEASTRelativeCoordRefElement *sub_2213BAC70(TSCEASTIteratorBase *a1, TSCEASTRelativeCoordRefElement *a2)
{
  if (TSCEASTElement::refFlags(a2, a1))
  {

    return sub_2213BACE0(a1, a2, v4, v5);
  }

  else
  {

    return sub_2213BB1A8(a1, a2, v4, v5);
  }
}

TSCEASTRelativeCoordRefElement *sub_2213BACE0(TSCEASTIteratorBase *a1, TSCEASTRelativeCoordRefElement *this, uint64_t a3, uint64_t a4)
{
  v83._lower = TSCEASTRelativeCoordRefElement::tableUID(this, a1, a3, a4);
  v83._upper = v6;
  v9 = objc_msgSend_rowColumnInfo(*(a1 + 25), v6, v7, v8);
  v12 = objc_msgSend_isForTable_(*(a1 + 25), v10, &v83, v11);
  v13 = *(a1 + 25);
  *__p = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
  v16 = objc_msgSend_isForTable_(v13, v14, __p, v15);
  v17 = TSCEASTRelativeCoordRefElement::spansAllRows(this, a1);
  v21 = TSCEASTRelativeCoordRefElement::spansAllColumns(this, a1);
  if ((v21 || v17) && (objc_msgSend_isColumns(v9, v18, v19, v20) & v17 & 1) == 0 && (objc_msgSend_isRows(v9, v22, v19, v20) & v21) != 1 || ((v12 | v16) & 1) == 0)
  {
    goto LABEL_40;
  }

  v23 = TSCEASTRelativeCoordRefElement::relativeCoord(this, a1, v19, v20);
  v82 = v23;
  v24 = TSCEASTRelativeCoordRefElement::preserveFlags(this, a1);
  v28 = (v24 >> 1) & 1;
  if (!objc_msgSend_isRows(v9, v25, v26, v27))
  {
    column = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate.column;
    v39 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    v31 = sub_2213BB800(*v39, ((v23 << 16) >> 48), v24 & 1, v40);
    v41 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    v37 = sub_2213BB640(*v41, v23, (v24 & 2) != 0, v42);
    LOBYTE(v28) = v24 & 1;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_9:
    if (objc_msgSend_indexIsAffected_(v9, v34, v31, v36))
    {
      if (v9)
      {
        objc_msgSend_uuidsInRange_(v9, v43, v31, 1);
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v81 = 0;
      }

      v47 = sub_221089E8C(a1);
      lower = v83._lower;
      upper = v83._upper;
      isRows = objc_msgSend_isRows(v9, v50, v51, v52);
      v55 = objc_msgSend_uuidForTableUID_andIndex_direction_(v47, v54, lower, upper, v37, isRows ^ 1u);
      v57 = v56;

      v58 = TSCEASTElement::mutableUndoTractList(this, a1);
      v62 = objc_msgSend_isRows(v9, v59, v60, v61);
      if (v62)
      {
        v66 = v55;
      }

      else
      {
        v66 = *__p[0];
      }

      if (v62)
      {
        v67 = v57;
      }

      else
      {
        v67 = *(__p[0] + 1);
      }

      if (v62)
      {
        v68 = *__p[0];
      }

      else
      {
        v68 = v55;
      }

      if (v62)
      {
        v69 = *(__p[0] + 1);
      }

      else
      {
        v69 = v57;
      }

      if (objc_msgSend_rewriteType(*(a1 + 25), v63, v64, v65) != 4 || (*(a1 + 100) & 1) != 0)
      {
        objc_msgSend_addToIncludedUidsTractColumnUid_rowUid_(v58, v70, v66, v67, v68, v69);
        v79._flags = v24 & 3;
        TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v58, &v83, &v79);
      }

      v71 = [TSCEUndoTract alloc];
      v73 = objc_msgSend_initWithColumnUid_rowUid_purpose_(v71, v72, v66, v67, v68, v69, 4);
      v79._flags = TSCEASTElement::refFlags(this, a1);
      objc_msgSend_appendUidTract_(v58, v74, v73, v75);
      v78._flags = 0;
      TSCEASTIteratorBase::createUidReference(a1, &v83, &v79, &v78, v58);
    }

    v38 = objc_msgSend_offsetForRowIndex_(v9, v43, v31, v44);
    goto LABEL_13;
  }

  column = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate.row;
  v29 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
  v31 = sub_2213BB640(*v29, v23, (v24 & 2) != 0, v30);
  v32 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
  v37 = sub_2213BB800(*v32, ((v23 << 16) >> 48), v24 & 1, v33);
  if (v12)
  {
    goto LABEL_9;
  }

LABEL_7:
  v38 = 0;
LABEL_13:
  if (v28 & 1 | ((v16 & 1) == 0))
  {
    v45 = 0;
  }

  else
  {
    v45 = objc_msgSend_offsetForRowIndex_(v9, v34, column, v36);
  }

  if (v38 | v45)
  {
    if (objc_msgSend_isRows(v9, v34, v35, v36))
    {
      if (v23 != 0x7FFFFFFF)
      {
        v82._row = v45 - v38 + v23;
      }
    }

    else if (WORD2(v23) != 0x7FFF)
    {
      v82._column = WORD2(v23) + v45 - v38;
    }

    TSCEASTRelativeCoordRefElement::setRelativeCoord(this, &v82, a1, v46);
  }

LABEL_40:

  return this;
}

void sub_2213BB128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

TSCEASTRelativeCoordRefElement *sub_2213BB1A8(uint64_t a1, TSCEASTRelativeCoordRefElement *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_rowColumnInfo(*(a1 + 200), a2, a3, a4);
  v7 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  lower = v7->var0.var0._tableUID._lower;
  upper = v7->var0.var0._tableUID._upper;
  v13 = objc_msgSend_tableUID(v6, v10, v11, v12);
  if (lower == *v13 && upper == v13[1])
  {
    v17 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v14, v15);
    v77 = v17;
    v18 = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
    v19 = TSCEASTRelativeCoordRefElement::spansAllRows(a2, a1);
    v23 = TSCEASTRelativeCoordRefElement::spansAllColumns(a2, a1);
    if (!v23 && !v19 || (objc_msgSend_isColumns(v6, v20, v21, v22) & v19 & 1) != 0 || (objc_msgSend_isRows(v6, v20, v21, v22) & v23) == 1)
    {
      v24 = (v18 >> 1) & 1;
      if (objc_msgSend_isRows(v6, v20, v21, v22))
      {
        LODWORD(v71) = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate.row;
        v25 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        v27 = sub_2213BB640(*v25, v17, (v18 & 2) != 0, v26);
        v28 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        v32 = sub_2213BB800(*v28, ((v17 << 16) >> 48), v18 & 1, v29);
      }

      else
      {
        LODWORD(v71) = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate.column;
        v33 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        v27 = sub_2213BB800(*v33, ((v17 << 16) >> 48), v18 & 1, v34);
        v35 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        v32 = sub_2213BB640(*v35, v17, (v18 & 2) != 0, v36);
        LOBYTE(v24) = v18 & 1;
      }

      if (objc_msgSend_indexIsAffected_(v6, v30, v27, v31, v71))
      {
        if (v6)
        {
          objc_msgSend_uuidsInRange_(v6, v37, v27, 1);
        }

        else
        {
          __p = 0;
          v75 = 0;
          v76 = 0;
        }

        v45 = sub_221089E8C(a1);
        isRows = objc_msgSend_isRows(v6, v46, v47, v48);
        v51 = objc_msgSend_uuidForTableUID_andIndex_direction_(v45, v50, lower, upper, v32, isRows ^ 1u);
        v53 = v52;

        v54 = TSCEASTElement::mutableUndoTractList(a2, a1);
        v58 = objc_msgSend_isRows(v6, v55, v56, v57);
        if (v58)
        {
          v62 = v53;
        }

        else
        {
          v62 = *(__p + 1);
        }

        if (v58)
        {
          v63 = *__p;
        }

        else
        {
          v63 = v51;
        }

        if (v58)
        {
          v53 = *(__p + 1);
        }

        else
        {
          v51 = *__p;
        }

        if (objc_msgSend_rewriteType(*(a1 + 200), v59, v60, v61) != 4 || (*(a1 + 100) & 1) != 0)
        {
          objc_msgSend_addToIncludedUidsTractColumnUid_rowUid_(v54, v64, v51, v62, v63, v53);
          v72.n128_u8[0] = v18 & 3;
          TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v54, &v72);
        }

        v73._flags = TSCEASTElement::refFlags(a2, a1);
        v65 = [TSCEUndoTract alloc];
        v67 = objc_msgSend_initWithColumnUid_rowUid_purpose_(v65, v66, v51, v62, v63, v53, 4);
        objc_msgSend_appendUidTract_(v54, v68, v67, v69);
        v72 = 0uLL;
        HIBYTE(v71) = 0;
        TSCEASTIteratorBase::createUidReference(a1, &v72, &v73, &v71 + 7, v54);
      }

      v42 = objc_msgSend_offsetForRowIndex_(v6, v37, v27, v38);
      if (v24)
      {
        v43 = 0;
      }

      else
      {
        v43 = objc_msgSend_offsetForRowIndex_(v6, v39, v71, v41);
      }

      if (v42 | v43)
      {
        if (objc_msgSend_isRows(v6, v39, v40, v41))
        {
          if (v17 != 0x7FFFFFFF)
          {
            v77._row = v43 - v42 + v17;
          }
        }

        else if (WORD2(v17) != 0x7FFF)
        {
          v77._column = WORD2(v17) + v43 - v42;
        }

        TSCEASTRelativeCoordRefElement::setRelativeCoord(a2, &v77, a1, v44);
      }
    }
  }

  return a2;
}

void sub_2213BB5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2213BB640(uint64_t a1, const char *a2, char a3, uint64_t a4)
{
  if (a3)
  {
    return a2;
  }

  v6 = a1;
  result = 0x7FFFFFFFLL;
  if (a2 != 0x7FFFFFFF)
  {
    if (a2 < 1)
    {
      if (a2 && v6 < -a2)
      {
        return result;
      }
    }

    else if (999999 - a2 < v6)
    {
      return result;
    }

    if (v6 == 0x7FFFFFFF)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", a4);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v10);
      v12 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v11, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v12);
    }

    else
    {
      result = v6 + a2;
      if (result < 0x7FFFFFFF)
      {
        return result;
      }

      v14 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", a4);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v17, v8, v11, 191, 0, "overflow in row, input row: %d with host row: %lu", a2, v6);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    return 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t sub_2213BB800(uint64_t a1, const char *a2, char a3, uint64_t a4)
{
  if (a3)
  {
    return a2;
  }

  v4 = 0x7FFF;
  if (a2 == 0x7FFF)
  {
    return v4;
  }

  if (a2 < 1)
  {
    if ((a2 & 0x80000000) != 0 && -a2 > WORD2(a1))
    {
      return v4;
    }
  }

  else if (999 - a2 < WORD2(a1))
  {
    return v4;
  }

  v4 = WORD2(a1) + a2;
  if ((WORD2(a1) + a2) >= 0x7FFFu)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", a4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 168, 0, "overflow in column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  return v4;
}

TSCEASTElementWithChildren *sub_2213BB918(uint64_t a1, TSCEASTElementWithChildren *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_rowColumnInfo(*(a1 + 200), a2, a3, a4);
  v7 = TSCEASTElementWithChildren::child(a2, 0);
  v8 = TSCEASTElementWithChildren::child(a2, 1u);
  if (v7)
  {
    v9 = v8;
    if (v8)
    {
      v10 = (*(*v7 + 40))(v7, a1);
      v11 = (*(*v9 + 40))(v9, a1);
      v12 = TSCEASTElement::tag(v10, a1);
      v13 = TSCEASTElement::tag(v11, a1);
      v14 = TSCEASTElement::simpleTagForTag(v12);
      if (v14 == TSCEASTElement::simpleTagForTag(v13) && v12 == 36)
      {
        __p = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
        (*(*v10 + 136))(&v131, v10, a1, &__p);
        __p = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
        (*(*v11 + 136))(&v130, v11, a1, &__p);
        v129._lower = 0;
        v129._upper = 0;
        tableUID = v132;
        if (v132 == 0uLL)
        {
          tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
        }

        v129 = tableUID;
        v19 = objc_msgSend_tableUID(v6, v15, v16, v17);
        if (v129._lower == *v19 && v129._upper == v19[1])
        {
          v20 = TSCEASTRelativeCoordRefElement::preserveFlags(v10, a1);
          v128._flags = v20 & 3 | (4 * (TSCEASTRelativeCoordRefElement::preserveFlags(v11, a1) & 3));
          v127._topLeft = v131;
          v127._bottomRight = v130;
          TSCERangeCoordinate::fixInversions(&v127, &v128);
          if (v131.row == v127._topLeft.row && ((*&v127._topLeft ^ *&v131) & 0x101FFFF00000000) == 0)
          {
            v117 = v11;
            v11 = v10;
            v24 = v9;
            v9 = v7;
          }

          else
          {
            TSCEASTElementWithChildren::setChildAtIndex(a2, v9, 0, a1);
            TSCEASTElementWithChildren::setChildAtIndex(a2, v7, 1, a1);
            v117 = v10;
            v24 = v7;
          }

          v119 = v24;
          isRows = objc_msgSend_isRows(v6, v21, v22, v23, v117);
          row = v127._topLeft.row;
          column = v127._topLeft.column;
          v31 = objc_msgSend_isRows(v6, v28, v29, v30);
          v33 = isRows ? row : column;
          v34 = v31 ? v127._bottomRight.row : v127._bottomRight.column;
          if (v6)
          {
            objc_msgSend_uuidsInRange_(v6, v32, v33, (v34 - v33 + 1));
            if (v126 != v125)
            {
              v38 = objc_msgSend_rowOrColumnUids(v6, v35, v36, v37);
              v39 = objc_alloc(MEMORY[0x277CCAA78]);
              v41 = objc_msgSend_initWithIndexesInRange_(v39, v40, v33, (v34 - v33 + 1));
              v44 = objc_msgSend_indexSetBySubtractingOurIndexesFromIndexSet_(v38, v42, v41, v43);

              if (objc_msgSend_count(v44, v45, v46, v47))
              {
                if ((objc_msgSend_containsIndex_(v44, v48, v33, v50) & 1) == 0)
                {
                  if (objc_msgSend_isRows(v6, v51, v52, v53))
                  {
                    v127._topLeft.row = objc_msgSend_firstIndex(v44, v54, v55, v56);
                  }

                  else
                  {
                    v127._topLeft.column = objc_msgSend_firstIndex(v44, v54, v55, v56);
                  }

                  topLeft = v127._topLeft;
                  LOBYTE(v124[0]) = v128._flags & 3;
                  __p = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
                  (*(*v11 + 144))(v11, topLeft, v124, a1, &__p);
                }

                if ((objc_msgSend_containsIndex_(v44, v51, v34, v53) & 1) == 0)
                {
                  if (objc_msgSend_isRows(v6, v81, v82, v83))
                  {
                    v127._bottomRight.row = objc_msgSend_lastIndex(v44, v84, v85, v86);
                  }

                  else
                  {
                    v127._bottomRight.column = objc_msgSend_lastIndex(v44, v84, v85, v86);
                  }

                  bottomRight = v127._bottomRight;
                  LOBYTE(v124[0]) = (v128._flags >> 2) & 3;
                  __p = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
                  (*(*v118 + 144))(v118, bottomRight, v124, a1, &__p);
                }

                v91 = TSCEASTElement::mutableUndoTractList(a2, a1);
                if ((*(a1 + 100) & 1) == 0)
                {
                  if (objc_msgSend_isRows(v6, v88, v89, v90))
                  {
                    __p = 0;
                    v121 = 0;
                    v122 = 0;
                    objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(v91, v92, &__p, &v125, 1, 1);
                    if (__p)
                    {
                      v121 = __p;
                      operator delete(__p);
                    }

                    if ((*(a1 + 98) & 1) == 0)
                    {
                      objc_msgSend_removeFromExcludedUidsTractRowUids_(v91, v93, &v125, v94);
                    }
                  }

                  else
                  {
                    __p = 0;
                    v121 = 0;
                    v122 = 0;
                    objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(v91, v92, &v125, &__p, 1, 1);
                    if (__p)
                    {
                      v121 = __p;
                      operator delete(__p);
                    }

                    if ((*(a1 + 98) & 1) == 0)
                    {
                      objc_msgSend_removeFromExcludedUidsTractColumnUids_(v91, v95, &v125, v96);
                    }
                  }
                }

                TSCEASTRewriter::createColonWithUidTractList(a1, v91, v9, v119);
              }

              if (objc_msgSend_isRows(v6, v48, v49, v50))
              {
                v60 = v127._topLeft.column;
              }

              else
              {
                v60 = v127._topLeft.row;
              }

              if (objc_msgSend_isRows(v6, v57, v58, v59))
              {
                v64 = v127._bottomRight.column;
              }

              else
              {
                v64 = v127._bottomRight.row;
              }

              if (objc_msgSend_isRows(v6, v61, v62, v63))
              {
                v65 = 0x7FFF;
              }

              else
              {
                v65 = 0x7FFFFFFF;
              }

              if (v60 == v65)
              {
                sub_2212F8464(&__p);
              }

              v66 = sub_221089E8C(a1);
              v70 = objc_msgSend_tableUID(v6, v67, v68, v69);
              v72 = objc_msgSend_resolverForTableUID_(v66, v71, *v70, v70[1]);

              v76 = objc_msgSend_isRows(v6, v73, v74, v75);
              if (v72)
              {
                objc_msgSend_UIDsForRange_isRows_(v72, v77, v60, v64 - v60 + 1, v76 ^ 1u);
                v78 = __p;
                v79 = v121;
              }

              else
              {
                v79 = 0;
                v78 = 0;
              }

              v97 = TSCEASTElement::mutableUndoTractList(a2, a1);
              memset(v124, 0, sizeof(v124));
              memset(v123, 0, sizeof(v123));
              if (objc_msgSend_isRows(v6, v98, v99, v100))
              {
                sub_2210BD068(v124, v78, v79, (v79 - v78) >> 4);
                v101 = v125;
                v79 = v126;
              }

              else
              {
                sub_2210BD068(v124, v125, v126, (v126 - v125) >> 4);
                v101 = v78;
              }

              sub_2210BD068(v123, v101, v79, (v79 - v101) >> 4);
              if (objc_msgSend_rewriteType(*(a1 + 200), v102, v103, v104) != 4 || (*(a1 + 100) & 1) != 0)
              {
                objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(v97, v105, v124, v123, 1, 1);
                TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v97, &v129, &v128);
              }

              v106 = [TSCEUndoTract alloc];
              v108 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v106, v107, v124, v123, 4);
              objc_msgSend_setIsRangeRef_(v108, v109, 1, v110);
              objc_msgSend_appendUidTract_(v97, v111, v108, v112);
              v113 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
              if (v129._lower == v113->var0.var0._tableUID._lower && v129._upper == v113->var0.var0._tableUID._upper)
              {
                v129._lower = 0;
                v129._upper = 0;
              }

              sub_22122B9B8(&__p, &v129, v97, &v128);
              TSCEASTIteratorBase::createUidReference(a1, &__p, v114, v115);
            }

            if (v125)
            {
              v126 = v125;
              operator delete(v125);
            }
          }
        }
      }
    }
  }

  return a2;
}

void sub_2213BC180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (v23)
  {
    operator delete(v23);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

TSCEASTElement *sub_2213BC2D8(TSCEASTIteratorBase *a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4);
  tableUID._lower = objc_msgSend_tableUID(v6, v7, v8, v9);
  tableUID._upper = v10;
  if (!(tableUID._lower | v10))
  {
    tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
  }

  v11 = *(a1 + 25);
  *v143 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
  v14 = objc_msgSend_isForTable_(v11, v12, v143, v13);
  v20 = objc_msgSend_isForTable_(*(a1 + 25), v15, &tableUID, v16);
  if ((v14 | v20))
  {
    v21 = objc_msgSend_rowColumnInfo(*(a1 + 25), v17, v18, v19);
    v143[0] = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
    v24 = objc_msgSend_absoluteCellTractRefForHostCell_(v6, v22, v143, v23);
    v137 = TSCEASTElement::mutableUndoTractList(this, a1);
    isRectangularRange = objc_msgSend_isRectangularRange(v24, v25, v26, v27);
    objc_msgSend_setPreserveRectangular_(v24, v29, isRectangularRange, v30);
    if (v14)
    {
      v34 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
      v14 = sub_2212C7330(v34);
    }

    if (!v20)
    {
      v35 = 0;
      v36 = 0;
      goto LABEL_23;
    }

    if (v24)
    {
      objc_msgSend_boundingRangeRef(v24, v31, v32, v33);
    }

    else
    {
      *v143 = 0u;
      v144 = 0u;
    }

    if (objc_msgSend_isRows(v21, v31, v32, v33))
    {
      if ((objc_msgSend_spansAllRows(v24, v37, v38, v39) & 1) == 0)
      {
        v43 = objc_msgSend_rowOrColumnUids(v21, v40, v41, v42);
        v47 = objc_msgSend_indexes(v43, v44, v45, v46);
        v50 = objc_msgSend_collapseOutRowIndexes_(v24, v48, v47, v49);
        goto LABEL_18;
      }
    }

    else if ((objc_msgSend_spansAllColumns(v24, v37, v38, v39) & 1) == 0)
    {
      v43 = objc_msgSend_rowOrColumnUids(v21, v40, v41, v42);
      v47 = objc_msgSend_indexes(v43, v51, v52, v53);
      v50 = objc_msgSend_collapseOutColumnIndexes_(v24, v54, v47, v55);
LABEL_18:
      v56 = v50;

      v35 = v56;
      if (!v24)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v35 = 0;
    if (!v24)
    {
LABEL_19:
      *v141 = 0u;
      v142 = 0u;
      goto LABEL_20;
    }

LABEL_16:
    objc_msgSend_boundingRangeRef(v24, v40, v41, v42);
LABEL_20:
    v57 = objc_msgSend_count(v35, v40, v41, v42);
    v58 = !TSCERangeRef::operator==(v143, v141);
    v59 = v57 == 0;
    v36 = v57 != 0;
    if (!v59)
    {
      v58 = 1;
    }

    v14 |= v58;
LABEL_23:
    if (objc_msgSend_isValid(v24, v31, v32, v33))
    {
      if (!v36 || (*(a1 + 100) & 1) != 0)
      {
        if (!v14)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }

      if (v21)
      {
        objc_msgSend_uuidsForIndexes_(v21, v60, v35, v62);
      }

      else
      {
        v143[0] = 0;
        v143[1] = 0;
        *&v144 = 0;
      }

      if (objc_msgSend_isRows(v21, v60, v61, v62))
      {
        v141[0] = 0;
        v141[1] = 0;
        *&v142 = 0;
        objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(v137, v115, v141, v143, 1, isRectangularRange);
        if (v141[0])
        {
          v141[1] = v141[0];
          operator delete(v141[0]);
        }

        if ((*(a1 + 98) & 1) == 0)
        {
          objc_msgSend_removeFromExcludedUidsTractRowUids_(v137, v116, v143, v117);
          if (objc_msgSend_rewriteType(*(a1 + 25), v118, v119, v120) == 4)
          {
            v121 = [TSCEUndoTract alloc];
            v141[0] = 0;
            v141[1] = 0;
            *&v142 = 0;
            v125 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v121, v122, v141, v143, 6);
            if (v141[0])
            {
              v141[1] = v141[0];
              operator delete(v141[0]);
            }

LABEL_70:
            objc_msgSend_addTractAtFront_(v137, v123, v125, v124);
          }
        }
      }

      else
      {
        v141[0] = 0;
        v141[1] = 0;
        *&v142 = 0;
        objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(v137, v115, v143, v141, 1, isRectangularRange);
        if (v141[0])
        {
          v141[1] = v141[0];
          operator delete(v141[0]);
        }

        if ((*(a1 + 98) & 1) == 0)
        {
          objc_msgSend_removeFromExcludedUidsTractColumnUids_(v137, v126, v143, v127);
          if (objc_msgSend_rewriteType(*(a1 + 25), v128, v129, v130) == 4)
          {
            v131 = [TSCEUndoTract alloc];
            v141[0] = 0;
            v141[1] = 0;
            *&v142 = 0;
            v125 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v131, v132, v143, v141, 6);
            if (v141[0])
            {
              v141[1] = v141[0];
              operator delete(v141[0]);
            }

            goto LABEL_70;
          }
        }
      }

      if (v143[0])
      {
        v143[1] = v143[0];
        operator delete(v143[0]);
      }

      if ((v14 & 1) == 0)
      {
        goto LABEL_75;
      }

LABEL_74:
      v133 = [TSCERelativeTractRef alloc];
      v143[0] = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1.coordinate;
      v135 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v133, v134, v24, v143);
      TSCEASTColonTractElement::setRelativeTractRef(this, v135, v6, a1, 0);
      TSCEASTColonTractElement::setUndoTractList(this, v137, a1);

LABEL_75:
      goto LABEL_76;
    }

    if (v21)
    {
      objc_msgSend_uuidsForIndexes_(v21, v60, v35, v62);
    }

    else
    {
      v143[0] = 0;
      v143[1] = 0;
      *&v144 = 0;
    }

    if (objc_msgSend_isRows(v21, v60, v61, v62))
    {
      v66 = objc_msgSend_spansAllColumns(v24, v63, v64, v65);
    }

    else
    {
      v66 = objc_msgSend_spansAllRows(v24, v63, v64, v65);
    }

    v70 = v66;
    v140._flags = objc_msgSend_preserveFlags(v24, v67, v68, v69);
    if (v70)
    {
      operator new();
    }

    v71 = sub_221089E8C(a1);
    v75 = objc_msgSend_tableUID(v21, v72, v73, v74);
    v77 = objc_msgSend_resolverForTableUID_(v71, v76, *v75, v75[1]);

    if (objc_msgSend_isRows(v21, v78, v79, v80))
    {
      v84 = objc_msgSend_columns(v24, v81, v82, v83);
      v86 = TSUIndexSet::asNSIndexSet(v84);
      if (v77)
      {
        objc_msgSend_UIDsForIndexes_isRows_(v77, v85, v86, 0);
LABEL_43:
        v90 = v141[0];
        v89 = v141[1];
        goto LABEL_45;
      }
    }

    else
    {
      v87 = objc_msgSend_rows(v24, v81, v82, v83);
      v86 = TSUIndexSet::asNSIndexSet(v87);
      if (v77)
      {
        objc_msgSend_UIDsForIndexes_isRows_(v77, v88, v86, 1);
        goto LABEL_43;
      }
    }

    v89 = 0;
    v90 = 0;
LABEL_45:
    v141[0] = 0;
    v141[1] = 0;
    *&v142 = 0;

    v141[0] = 0;
    v141[1] = 0;
    *&v142 = 0;
    memset(&v139[0]._lower + 1, 0, 24);
    if (objc_msgSend_isRows(v21, v91, v92, v93))
    {
      sub_2210BD068(v141, v90, v89, (v89 - v90) >> 4);
      v94 = v143[0];
      v89 = v143[1];
    }

    else
    {
      sub_2210BD068(v141, v143[0], v143[1], (v143[1] - v143[0]) >> 4);
      v94 = v90;
    }

    sub_2210BD068((&v139[0]._lower + 1), v94, v89, (v89 - v94) >> 4);
    if (objc_msgSend_rewriteType(*(a1 + 25), v95, v96, v97) != 4 || (*(a1 + 100) & 1) != 0)
    {
      objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(v137, v98, v141, &v139[0]._lower + 1, 1, isRectangularRange);
      TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v137, &tableUID, &v140);
    }

    v99 = [TSCEUndoTract alloc];
    v101 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v99, v100, v141, &v139[0]._lower + 1, 4);
    v105 = objc_msgSend_preserveRectangular(v24, v102, v103, v104);
    objc_msgSend_setPreserveRectangularRange_(v101, v106, v105, v107);
    objc_msgSend_setIsRangeRef_(v101, v108, 1, v109);
    objc_msgSend_appendUidTract_(v137, v110, v101, v111);
    v112 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    if (tableUID._lower == v112->var0.var0._tableUID._lower && tableUID._upper == v112->var0.var0._tableUID._upper)
    {
      tableUID._lower = 0;
      tableUID._upper = 0;
    }

    LOBYTE(v139[0]._lower) = TSCEASTElement::refFlags(this, a1);
    v138._flags = TSCEASTColonTractElement::colonTractFlags(this, a1, v113, v114);
    TSCEASTIteratorBase::createUidReference(a1, &tableUID, v139, &v138, v137);
  }

LABEL_76:

  return this;
}