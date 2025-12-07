void sub_275FDF8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  a13 = &a24;
  sub_275FDFB98(&a13);

  _Unwind_Resume(a1);
}

uint64_t *sub_275FDF91C(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_275FDFC30(result, a2);
    }

    sub_275FDFC18();
  }

  return result;
}

void sub_275FDF9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275FDFD1C(va);
  _Unwind_Resume(a1);
}

void **sub_275FDF9D8(uint64_t *a1, void **a2, uint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v8 = *a1;
    v9 = ((v7 - *a1) >> 4) + 1;
    if (v9 >> 60)
    {
      sub_275FDFC18();
    }

    v10 = a2 - v8;
    v11 = v6 - v8;
    v12 = v11 >> 3;
    if (v11 >> 3 <= v9)
    {
      v12 = ((v7 - *a1) >> 4) + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    v14 = v10 >> 4;
    v18[4] = a1;
    if (v13)
    {
      sub_275FDFC30(a1, v13);
    }

    v18[0] = 0;
    v18[1] = 16 * v14;
    v18[2] = 16 * v14;
    v18[3] = 0;
    sub_275FDFE0C(v18, a3);
    v4 = sub_275FDFF58(a1, v18, v4);
    sub_275FDFD1C(v18);
  }

  else if (a2 == v7)
  {
    v15 = *a3;
    v16 = *(a3 + 8);
    *v7 = v15;
    v7[1] = v16;
    a1[1] = (v7 + 2);
  }

  else
  {
    sub_275FDFD70(a1, a2, a1[1], (a2 + 2));
    objc_storeStrong(v4, *a3);
    v4[1] = *(a3 + 8);
  }

  return v4;
}

void sub_275FDFB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275FDFD1C(va);
  _Unwind_Resume(a1);
}

void sub_275FDFB98(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 2);
        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_275FDFC30(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_275FDFC78();
}

void sub_275FDFC78()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_275FDFCAC(uint64_t a1, void **a2, void **a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      v9 = v7[1];
      *a4 = v8;
      a4[1] = v9;
      a4 += 2;
      v7 += 2;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      v10 = *v6;
      v6 += 2;
    }
  }
}

uint64_t sub_275FDFD1C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_275FDFD70(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      v11 = *v10;
      v12 = *(v10 + 8);
      *v8 = v11;
      v8[1] = v12;
      v8 += 2;
      v10 += 16;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return sub_275FE0014(&v14, a2, v7, v6);
}

id sub_275FDFE0C(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *a1) >> 3;
      }

      v9 = a1[4];
      v11[4] = a1[4];
      sub_275FDFC30(v9, v8);
    }

    v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
    sub_275FE008C(v11, v5, v4, (v5 - 16 * v6));
    v4 = v7;
    a1[1] -= 16 * v6;
    a1[2] = v7;
  }

  result = *a2;
  *v4 = result;
  v4[1] = *(a2 + 8);
  a1[2] += 16;
  return result;
}

uint64_t sub_275FDFF58(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = *(a2 + 8);
  sub_275FDFCAC(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_275FDFCAC(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_275FE0014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 16);
      v7 -= 16;
      objc_storeStrong((a4 - 16), v8);
      *(a4 - 8) = *(v7 + 8);
      a4 -= 16;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_275FE008C(int a1, uint64_t a2, uint64_t a3, id *location)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      objc_storeStrong(location, *v5);
      location[1] = *(v5 + 8);
      v5 += 16;
      location += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_275FE08F0(uint64_t a1, void *a2)
{
  v32 = a2;
  v17 = objc_msgSend_null(MEMORY[0x277CBEB68], v3, v8, v9, v10, v11, v4, v5, v6, v7);
  if (v17 == v32)
  {
    v22 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v18, v19, v20, v21, v13, v14, v15, v16);
  }

  else
  {
    v22 = objc_msgSend_copyForArchiving(v32, v12, v18, v19, v20, v21, v13, v14, v15, v16);
  }

  v23 = v22;

  objc_msgSend_addObject_(*(a1 + 32), v24, v28, v29, v30, v31, v23, v25, v26, v27);
}

void sub_275FE39FC(uint64_t a1, void *a2)
{
  v41 = a2;
  if (objc_msgSend_isPartitioned(v41, v3, v8, v9, v10, v11, v4, v5, v6, v7))
  {
    v21 = *(a1 + 32);
    v22 = objc_msgSend_drawable(v41, v12, v17, v18, v19, v20, v13, v14, v15, v16);
    v32 = objc_msgSend_objectUUID(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
    objc_msgSend_addObject_(v21, v33, v37, v38, v39, v40, v32, v34, v35, v36);
  }
}

void sub_275FE451C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v15 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v15, v10, v11, v12, v13, v14, a2, v9, v7, v8);
}

void sub_275FE45C8(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CBEB18];
  v14 = objc_msgSend_count(v3, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v23 = objc_msgSend_arrayWithCapacity_(v4, v15, v19, v20, v21, v22, v14, v16, v17, v18);
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v24 = v3;
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, v27, v28, v29, v30, &v61, v65, 16, v26);
  if (v36)
  {
    v41 = *v62;
    do
    {
      v42 = 0;
      do
      {
        if (*v62 != v41)
        {
          objc_enumerationMutation(v24);
        }

        v48 = objc_msgSend_hint(*(*(&v61 + 1) + 8 * v42), v31, v37, v38, v39, v40, v32, v33, v34, v35, v61);
        if (!v48)
        {
          v48 = objc_msgSend_null(MEMORY[0x277CBEB68], v43, v49, v50, v51, v52, v44, v45, v46, v47);
        }

        objc_msgSend_addObject_(v23, v43, v49, v50, v51, v52, v48, v45, v46, v47);

        ++v42;
      }

      while (v36 != v42);
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v31, v37, v38, v39, v40, &v61, v65, 16, v35);
    }

    while (v36);
  }

  objc_msgSend_setChildHints_(*(a1 + 32), v53, v57, v58, v59, v60, v23, v54, v55, v56);
}

void sub_275FE4778(void *a1, uint64_t a2, void *a3)
{
  v12 = a1;
  v5 = a3;
  v6 = objc_opt_class();
  objc_msgSend_readRepeatedWeakReferenceMessage_class_protocol_completion_(v12, v7, v8, v9, v10, v11, a2, v6, 0, v5);
}

void sub_275FE4808(uint64_t a1, void *a2)
{
  v95 = a2;
  v3 = objc_alloc(MEMORY[0x277D81278]);
  v13 = objc_msgSend_count(v95, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v22 = objc_msgSend_initWithCapacity_(v3, v14, v18, v19, v20, v21, v13, v15, v16, v17);
  v23 = objc_alloc(MEMORY[0x277D81278]);
  v33 = objc_msgSend_count(v95, v24, v29, v30, v31, v32, v25, v26, v27, v28);
  v42 = objc_msgSend_initWithCapacity_(v23, v34, v38, v39, v40, v41, v33, v35, v36, v37);
  v52 = objc_msgSend_count(v95, v43, v48, v49, v50, v51, v44, v45, v46, v47);
  if (*(a1 + 56) == v52)
  {
    if (v52 >= 1)
    {
      v61 = 0;
      do
      {
        v62 = objc_msgSend_objectAtIndexedSubscript_(v95, v53, v57, v58, v59, v60, v61, v54, v55, v56);
        v71 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v63, v67, v68, v69, v70, v61, v64, v65, v66);
        objc_msgSend_setObject_forUncopiedKey_(v22, v72, v75, v76, v77, v78, v71, v62, v73, v74);

        v87 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v79, v83, v84, v85, v86, v61, v80, v81, v82);
        objc_msgSend_setObject_forUncopiedKey_(v42, v88, v91, v92, v93, v94, v87, v62, v89, v90);

        ++v61;
      }

      while (v61 < *(a1 + 56));
    }

    objc_storeStrong((*(a1 + 48) + 40), v22);
    objc_storeStrong((*(a1 + 48) + 112), v42);
  }

  else
  {
    *(*(a1 + 48) + 8) = 5;
  }
}

void sub_275FE57BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v37 = v5;
  objc_msgSend_CGPointValue(v6, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  v23 = v19.n128_u64[0];
  v24 = v20.n128_u64[0];
  v25 = *(a1 + 40);
  v26 = *(v25 + 64);
  if (!v26)
  {
    goto LABEL_6;
  }

  v27 = *(v25 + 56);
  v28 = *v26;
  if (v27 < *v26)
  {
    *(v25 + 56) = v27 + 1;
    v29 = *&v26[2 * v27 + 2];
    goto LABEL_8;
  }

  if (v28 == *(v25 + 60))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v25 + 48));
    v26 = *(v25 + 64);
    v28 = *v26;
  }

  *v26 = v28 + 1;
  v29 = sub_275FAF648(*(v25 + 48));
  v30 = *(v25 + 56);
  v31 = *(v25 + 64) + 8 * v30;
  *(v25 + 56) = v30 + 1;
  *(v31 + 8) = v29;
LABEL_8:
  *(v29 + 16) |= 8u;
  v32 = *(v29 + 48);
  if (!v32)
  {
    v33 = *(v29 + 8);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    v32 = sub_275FAF560(v33);
    *(v29 + 48) = v32;
  }

  *(v32 + 16) |= 1u;
  *(v29 + 16) |= 8u;
  *(v32 + 16) |= 2u;
  *(v32 + 24) = v23;
  *(v32 + 32) = v24;
  v34 = *(a1 + 32);
  *(v29 + 16) |= 4u;
  v35 = *(v29 + 40);
  if (!v35)
  {
    v36 = *(v29 + 8);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = MEMORY[0x277C92D50](v36);
    *(v29 + 40) = v35;
  }

  objc_msgSend_setWeakReferenceToObjectUUIDPath_message_(v34, v16, v19, v20, v21, v22, v37, v35, v17, v18);
}

void sub_275FE6AFC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v21 = v3;
    v13 = objc_msgSend_entryForListStyle(*(a1 + 32), v4, v9, v10, v11, v12, v5, v6, v7, v8);
    objc_msgSend_setObject_forKey_(v13, v14, v17, v18, v19, v20, *(a1 + 40), v21, v15, v16);

    v3 = v21;
  }
}

void sub_275FE77B4()
{
  v0 = objc_alloc(MEMORY[0x277D80AB8]);
  v17 = objc_msgSend_numberFormatWithFormatType_decimalPlaces_showThousandsSeparator_(MEMORY[0x277D80048], v1, v3, v4, v5, v6, 258, 0, 1, v2);
  v15 = objc_msgSend_initWithPropertiesAndValues_(v0, v7, v11, v12, v13, v14, 1350, v8, v9, v10, 0, 1349, 1, 1287, 0, 1272, 1, 1264, 1, 1286, 0, 1284, 0, 1270, 1, 1481, 0, 1466, 0, 1431, 0, 1469, 0, 1484, 1, 1433, v17, 1435, 4, 1472, 0, 1474, 0, 0);
  v16 = qword_280A404C0;
  qword_280A404C0 = v15;
}

uint64_t sub_275FE7EB0(void *a1, void *a2)
{
  v3 = a1;
  v8 = a2;
  if (v3 | v8)
  {
    isEqual = objc_msgSend_isEqual_(v3, v4, v9, v10, v11, v12, v8, v5, v6, v7);
  }

  else
  {
    isEqual = 1;
  }

  return isEqual;
}

uint64_t sub_275FE7F28(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v13 = v4;
  if (v3 == v4)
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = 0;
    if (v3 && v4)
    {
      isEqualToString = objc_msgSend_isEqualToString_(v3, v5, v9, v10, v11, v12, v4, v6, v7, v8);
    }
  }

  return isEqualToString;
}

uint64_t sub_275FE8D64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275FE8D7C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v15 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readReferenceMessage_class_protocol_completion_(v15, v10, v11, v12, v13, v14, a2, v9, v7, v8);
}

void sub_275FE8E38(void *a1, uint64_t a2, void *a3, void *a4)
{
  v15 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v15, v10, v11, v12, v13, v14, a2, v9, v7, v8);
}

void sub_275FE8EF4(uint64_t a1)
{
  v64[2] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v2 = TSUDynamicCast();
  objc_opt_class();
  v12 = objc_msgSend_selection(*(*(*(a1 + 56) + 8) + 40), v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v13 = TSUDynamicCast();

  if (v2)
  {
    if (objc_msgSend_wpKind(v2, v14, v19, v20, v21, v22, v15, v16, v17, v18))
    {
      v23 = 1;
    }

    else
    {
      v23 = v13 == 0;
    }

    if (!v23)
    {
      v24 = objc_alloc(MEMORY[0x277D80670]);
      v34 = objc_msgSend_tsck_documentRoot(*(a1 + 32), v25, v30, v31, v32, v33, v26, v27, v28, v29);
      v43 = objc_msgSend_initWithDocumentRoot_(v24, v35, v39, v40, v41, v42, v34, v36, v37, v38);

      v44 = MEMORY[0x277D806C8];
      v64[0] = v43;
      v64[1] = v13;
      v52 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v45, v48, v49, v50, v51, v64, 2, v46, v47);
      v61 = objc_msgSend_selectionPathWithSelectionArray_(v44, v53, v57, v58, v59, v60, v52, v54, v55, v56);
      v62 = *(a1 + 40);
      v63 = *(v62 + 120);
      *(v62 + 120) = v61;
    }
  }
}

void sub_275FE90B8(uint64_t a1, void *a2)
{
  v43 = a2;
  v12 = *(*(a1 + 32) + 128);
  if (v12)
  {
    v13 = objc_msgSend_mutableCopy(v12, v3, v8, v9, v10, v11, v4, v5, v6, v7);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v14, v17, v18, v19, v20, *(a1 + 40), v43, v15, v16);
    v30 = objc_msgSend_copy(v13, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    v31 = *(a1 + 32);
    v32 = *(v31 + 128);
    *(v31 + 128) = v30;
  }

  else
  {
    v33 = objc_alloc(MEMORY[0x277CBEAC0]);
    v41 = objc_msgSend_initWithObjectsAndKeys_(v33, v43, v37, v38, v39, v40, *(a1 + 40), v34, v35, v36, v43, 0);
    v42 = *(a1 + 32);
    v13 = *(v42 + 128);
    *(v42 + 128) = v41;
  }
}

void sub_275FE9194(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  v4 = *(a1 + 32);
  v5 = *(v4 + 176);
  *(v4 + 176) = v3;
}

void sub_275FE9214(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D80270]);
  v11 = objc_msgSend_initWithContext_(v2, v3, v7, v8, v9, v10, *(a1 + 40), v4, v5, v6);
  v12 = *(a1 + 32);
  v13 = *(v12 + 176);
  *(v12 + 176) = v11;
}

void sub_275FE9270(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D806B8]);
  v3 = *(a1 + 40);
  v23 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v20 = objc_msgSend_initWithContext_userDefaults_(v2, v13, v16, v17, v18, v19, v3, v23, v14, v15);
  v21 = *(a1 + 32);
  v22 = *(v21 + 184);
  *(v21 + 184) = v20;
}

void sub_275FE9AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_275FEACAC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_275FEB034(_Unwind_Exception *a1)
{
  sub_275FB56E8((v2 - 88));

  _Unwind_Resume(a1);
}

void sub_275FEB084(uint64_t a1, void *a2)
{
  v59 = a2;
  v16 = objc_msgSend_count(v59, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v21 = *(a1 + 40);
  if (*(a1 + 44) + v21 != v16)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v17, v18, v19, v20, "[TPSectionTemplatePage loadFromUnarchiver:]_block_invoke", v13, v14, v15);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionTemplatePage.mm", v25, v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v33, v34, v35, v36, v37, v23, v32, 208, 0, "Header/footer object count (%d) differes from header count (%d) + footer count (%d)", v16, *(a1 + 40), *(a1 + 44));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v43, v44, v45, v46, v39, v40, v41, v42);
    v21 = *(a1 + 40);
  }

  if (v21 < 1 || v16 < 1)
  {
    LODWORD(v48) = 0;
  }

  else
  {
    v48 = 0;
    do
    {
      v49 = objc_msgSend_objectAtIndexedSubscript_(v59, v12, v17, v18, v19, v20, v48, v13, v14, v15);
      v50 = *(a1 + 32) + 80;
      v51 = *(v50 + 8 * v48);
      *(v50 + 8 * v48) = v49;
    }

    while (++v48 < *(a1 + 40) && v48 < (v16 & 0x7FFFFFFF));
  }

  if (*(a1 + 44) >= 1 && v48 < v16)
  {
    v48 = v48;
    v53 = 3;
    do
    {
      v54 = objc_msgSend_objectAtIndexedSubscript_(v59, v12, v17, v18, v19, v20, v48, v13, v14, v15);
      v55 = *(a1 + 32) + 80;
      v56 = *(v55 + 8 * v53);
      *(v55 + 8 * v53) = v54;

      ++v48;
      v57 = v53 - 2;
      ++v53;
    }

    while (v57 < *(a1 + 44) && v48 < v16);
  }
}

void sub_275FEB278(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  v137 = objc_msgSend_context(*(a1 + 32), v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v21 = objc_msgSend_documentObject(v137, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v22 = TSUDynamicCast();
  objc_msgSend_i_setDocumentRoot_(v2, v23, v27, v28, v29, v30, v22, v24, v25, v26);

  v138 = objc_alloc_init(MEMORY[0x277D81258]);
  v40 = objc_msgSend_p_isInDocument(*(a1 + 32), v31, v36, v37, v38, v39, v32, v33, v34, v35);
  v41 = 0;
  v42 = 1;
  v43 = MEMORY[0x277D81500];
  do
  {
    v136 = v42;
    v44 = 24 * v41 + 80;
    v45 = 3;
    do
    {
      v46 = *(*(a1 + 32) + v44);
      v55 = objc_msgSend_member_(v138, v47, v51, v52, v53, v54, v46, v48, v49, v50);

      if (v55)
      {
        if (*v43 != -1)
        {
          sub_276038250();
        }

        v65 = objc_msgSend_length(v46, v56, v61, v62, v63, v64, v57, v58, v59, v60);
        v75 = objc_msgSend_context(v46, v66, v71, v72, v73, v74, v67, v68, v69, v70);
        v81 = objc_msgSend_newSubstorageWithRange_context_flags_(v46, v76, v77, v78, v79, v80, 0, v65, v75, 39);

        objc_msgSend_willModifyForUpgrade(*(a1 + 32), v82, v87, v88, v89, v90, v83, v84, v85, v86);
        objc_storeStrong((*(a1 + 32) + v44), v81);
        v46 = v81;
      }

      objc_msgSend_addObject_(v138, v56, v61, v62, v63, v64, v46, v58, v59, v60);
      if (v40)
      {
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
        v101 = objc_msgSend_parentStorage(WeakRetained, v92, v97, v98, v99, v100, v93, v94, v95, v96);
        objc_msgSend_setParentInfo_(v46, v102, v106, v107, v108, v109, v101, v103, v104, v105);

        v119 = objc_msgSend_documentRoot(v46, v110, v115, v116, v117, v118, v111, v112, v113, v114);

        if (!v119)
        {
          v120 = objc_loadWeakRetained((*(a1 + 32) + 64));
          objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v46, v121, v124, v125, v126, v127, v120, 0, v122, v123);

          v128 = objc_loadWeakRetained((*(a1 + 32) + 64));
          objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v46, v129, v132, v133, v134, v135, v128, 0, v130, v131);
        }
      }

      v44 += 8;
      --v45;
    }

    while (v45);
    v42 = 0;
    v41 = 1;
  }

  while ((v136 & 1) != 0);
}

void sub_275FEB554()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

void sub_275FEB64C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TPSectionTemplatePage;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_275FEC214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  a11 = &a22;
  sub_275FEFFF0(&a11);

  _Unwind_Resume(a1);
}

uint64_t *sub_275FEC284(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_275FF0078(result, a2);
    }

    sub_275FDFC18();
  }

  return result;
}

void sub_275FEC32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275FF0124(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_275FEC340(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      sub_275FDFC18();
    }

    v12 = a2 - v10;
    v13 = v7 - v10;
    v14 = v13 >> 3;
    if (v13 >> 3 <= v11)
    {
      v14 = ((v6 - *a1) >> 4) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 4;
    v20[4] = a1;
    if (v15)
    {
      sub_275FF0078(a1, v15);
    }

    v20[0] = 0;
    v20[1] = 16 * v16;
    v20[2] = 16 * v16;
    v20[3] = 0;
    sub_275FF01C4(v20, a3);
    v4 = sub_275FF02CC(a1, v20, v4);
    sub_275FF0124(v20);
  }

  else if (a2 == v6)
  {
    v17 = *a3;
    v18 = a3[1];
    a3[1] = 0;
    *v6 = v17;
    v6[1] = v18;
    a1[1] = (v6 + 2);
  }

  else
  {
    sub_275FF0178(a1, a2, v6, (a2 + 2));
    *v4 = *a3;
    v8 = a3[1];
    a3[1] = 0;
    v9 = v4[1];
    v4[1] = v8;
  }

  return v4;
}

void sub_275FEC46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275FF0124(va);
  _Unwind_Resume(a1);
}

void sub_275FEC9B4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_275FED5C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275FEDC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, char a11)
{
  for (i = 16; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_275FEE150(_Unwind_Exception *a1)
{
  for (i = 40; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_275FEE808(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275FEFFF0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 2;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_275FF0078(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_275FDFC78();
}

void sub_275FF00C0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v6[1] = 0;
      *a4 = v7;
      a4[1] = v8;
      a4 += 2;
      v6 += 2;
    }

    while (v6 != a3);
    while (v5 != a3)
    {

      v5 += 2;
    }
  }
}

uint64_t sub_275FF0124(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_275FF0178(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      v11 = v9[1];
      v9[1] = 0;
      *v8 = v10;
      v8[1] = v11;
      v8 += 2;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_275FF0388(a2, v7, v6);
}

uint64_t *sub_275FF01C4(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v6 = *result;
    v5 = result[1];
    if (v5 <= *v3)
    {
      v9 = v4 - v6;
      v8 = v9 == 0;
      v10 = v9 >> 3;
      if (v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      sub_275FF0078(v3[4], v11);
    }

    v7 = (((v5 - *v3) >> 4) + 1 + ((((v5 - *v3) >> 4) + 1) >> 63)) >> 1;
    result = sub_275FF03F0(v5, v4, &v5[-2 * v7]);
    v3[1] -= 16 * v7;
  }

  v12 = *a2;
  v13 = a2[1];
  a2[1] = 0;
  *v4 = v12;
  v4[1] = v13;
  v3[2] = (v4 + 2);
  return result;
}

uint64_t sub_275FF02CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a2 + 8);
  sub_275FF00C0(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  sub_275FF00C0(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t sub_275FF0388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a1)
  {
    v6 = a2;
    do
    {
      v7 = *(v6 - 16);
      v6 -= 16;
      *(a3 - 16) = v7;
      a3 -= 16;
      v8 = *(v6 + 8);
      *(v6 + 8) = 0;
      v9 = *(a3 + 8);
      *(a3 + 8) = v8;
    }

    while (v6 != a1);
  }

  return a2;
}

void *sub_275FF03F0(void *a1, void *a2, void *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      *a3 = *v4;
      v6 = v4[1];
      v4[1] = 0;
      v7 = a3[1];
      a3[1] = v6;

      v4 += 2;
      a3 += 2;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void sub_275FF1A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_275FF1A38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275FF1A50(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

void sub_275FF1B88(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  objc_msgSend_zOrderOfDrawable_(*(*(a1 + 32) + 88), v6, v10, v11, v12, v13, v5, v7, v8, v9);
  (*(*(a1 + 40) + 16))();
}

void sub_275FF3660(void *a1, void *a2)
{
  v75 = a2;
  objc_msgSend_setObject_forKey_(*(a1[4] + 80), v3, v6, v7, v8, v9, v75, a1[5], v4, v5);
  v10 = a1[8];
  v20 = objc_msgSend_count(*(*(a1[6] + 8) + 40), v11, v16, v17, v18, v19, v12, v13, v14, v15);
  if (v10 >= v20)
  {
    objc_msgSend_setObject_atIndexedSubscript_(*(*(a1[6] + 8) + 40), v21, v24, v25, v26, v27, v75, v20, v22, v23);
  }

  else
  {
    objc_msgSend_setObject_atIndexedSubscript_(*(*(a1[6] + 8) + 40), v21, v24, v25, v26, v27, v75, v10, v22, v23);
  }

  if (++*(*(a1[7] + 8) + 24) == a1[9])
  {
    v37 = 0;
    for (i = 0; i < objc_msgSend_count(*(*(a1[6] + 8) + 40), v28, v33, v34, v35, v36, v29, v30, v31, v32); ++i)
    {
      v47 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1[6] + 8) + 40), v39, v43, v44, v45, v46, i, v40, v41, v42);
      v57 = objc_msgSend_null(MEMORY[0x277CBEB68], v48, v53, v54, v55, v56, v49, v50, v51, v52);
      isEqual = objc_msgSend_isEqual_(v47, v58, v62, v63, v64, v65, v57, v59, v60, v61);

      if ((isEqual & 1) == 0)
      {
        objc_opt_class();
        v67 = TSUDynamicCast();
        objc_msgSend_insertDrawable_atZOrder_(*(a1[4] + 88), v68, v71, v72, v73, v74, v67, v37++, v69, v70);
      }
    }
  }
}

void *sub_275FF3830(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v11 = objc_msgSend_count(*(*(a1 + 32) + 80), a2, a7, a8, a9, a10, a3, a4, a5, a6);
  result = objc_msgSend_drawableCount(*(*(a1 + 32) + 88), v12, v17, v18, v19, v20, v13, v14, v15, v16);
  if (v11 != result)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v26, v27, v28, v29, "[TPPageTemplate loadFromUnarchiver:]_block_invoke_3", v23, v24, v25);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageTemplate.mm", v33, v34, v35);
    v41 = *(a1 + 32);
    v42 = *(v41 + 96);
    v52 = objc_msgSend_count(*(v41 + 80), v43, v48, v49, v50, v51, v44, v45, v46, v47);
    v62 = objc_msgSend_drawableCount(*(*(a1 + 32) + 88), v53, v58, v59, v60, v61, v54, v55, v56, v57);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v63, v64, v65, v66, v67, v31, v40, 431, 0, "In template %@ _placeholderDrawables has %lu entries but _drawablesZOrder has %lu.", v42, v52, v62);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v73, v74, v75, v76, v69, v70, v71, v72);
    v77 = *(a1 + 32);
    v78 = *(v77 + 80);
    v87[0] = MEMORY[0x277D85DD0];
    v79.n128_u64[0] = 3221225472;
    v87[1] = 3221225472;
    v87[2] = sub_275FF39C4;
    v87[3] = &unk_27A6A8A60;
    v87[4] = v77;
    return objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v78, v80, v79, v84, v85, v86, v87, v81, v82, v83);
  }

  return result;
}

void sub_275FF39C4(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = a3;
  if (objc_msgSend_zOrderOfDrawable_(*(*(a1 + 32) + 88), v4, v8, v9, v10, v11, v20, v5, v6, v7) == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_addDrawable_(*(*(a1 + 32) + 88), v12, v16, v17, v18, v19, v20, v13, v14, v15);
  }
}

void sub_275FF3CCC(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v15 = objc_msgSend_zOrderOfDrawable_(*(*(a1 + 40) + 88), v7, v11, v12, v13, v14, v5, v8, v9, v10);
  objc_msgSend_appendFormat_(v6, v16, v20, v21, v22, v23, @" {%@ : %@ (z-index:%lu)}", v17, v18, v19, v24, v5, v15);
}

void sub_275FF4D3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v29 = objc_msgSend_canvas(a2, a2, a7, a8, a9, a10, a3, a4, a5, a6);
  v21 = objc_msgSend_layoutController(v29, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  objc_msgSend_paginateThroughPageIndex_forLayoutController_(v10, v22, v25, v26, v27, v28, v11, v21, v23, v24);
}

void sub_275FF4FB8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_275FF5080;
  v12[3] = &unk_27A6A8AD8;
  objc_copyWeak(&v13, &location);
  objc_msgSend_setPostRenderAction_(v3, v4, v8, v9, v10, v11, v12, v5, v6, v7);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void sub_275FF5064(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_275FF5080(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_p_addHyperLinksInContext_forCanvas_(WeakRetained, v6, v9, v10, v11, v12, a2, v5, v7, v8);
}

void sub_275FF5320(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v37 = a2;
  v12 = objc_msgSend_includeComments(v2, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  objc_msgSend_setShouldShowComments_(v37, v13, v17, v18, v19, v20, v12, v14, v15, v16);
  objc_msgSend_setShouldShowTextCommentHighlights_(v37, v21, v25, v26, v27, v28, 0, v22, v23, v24);
  objc_msgSend_setShouldShowInstructionalText_(v37, v29, v33, v34, v35, v36, 1, v30, v31, v32);
}

void sub_275FF84CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_275FFD2D0(va);
  _Unwind_Resume(a1);
}

NSUInteger sub_275FF8CB8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_wpKind(v3, v5, v10, v11, v12, v13, v6, v7, v8, v9))
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v19, v20, v21, v22, "NSRange TPSectionCharRange(TSWPStorage * _Nonnull __strong, TPPageIndexPath * _Nonnull __strong)", v16, v17, v18);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginationStateCPPHelper.mm", v26, v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v34, v35, v36, v37, v38, v24, v33, 26, 0, "Wrong storage kind");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v44, v45, v46, v47, v40, v41, v42, v43);
  }

  v48 = *MEMORY[0x277D81490];
  v49 = objc_msgSend_sectionIndex(v4, v14, v19, v20, v21, v22, v15, v16, v17, v18);
  if (v49 < objc_msgSend_sectionCount(v3, v50, v55, v56, v57, v58, v51, v52, v53, v54))
  {
    if (v3)
    {
      objc_msgSend_sectionEnumeratorAtSectionIndex_(v3, v62, v63, v64, v65, v59, v49, v60, v61);
    }

    else
    {
      memset(v67, 0, sizeof(v67));
    }

    v48 = sub_2760007C4(v67);
    sub_2760005A4(v67);
  }

  return v48;
}

BOOL sub_275FF8E30(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_wpKind(v3, v5, v10, v11, v12, v13, v6, v7, v8, v9))
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v19, v20, v21, v22, "BOOL TPIsLastSection(TSWPStorage * _Nonnull __strong, TPPageIndexPath * _Nonnull __strong)", v16, v17, v18);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginationStateCPPHelper.mm", v26, v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v34, v35, v36, v37, v38, v24, v33, 39, 0, "Wrong storage kind");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v44, v45, v46, v47, v40, v41, v42, v43);
  }

  v48 = objc_msgSend_sectionIndex(v4, v14, v19, v20, v21, v22, v15, v16, v17, v18);
  if (v3)
  {
    objc_msgSend_sectionEnumeratorAtSectionIndex_(v3, v52, v53, v54, v55, v49, v48, v50, v51);
  }

  else
  {
    memset(v58, 0, sizeof(v58));
  }

  v56 = sub_2760009C4(v58);
  sub_2760005A4(v58);

  return v56;
}

uint64_t sub_275FF8F7C(void *a1)
{
  v1 = a1;
  if (objc_msgSend_wpKind(v1, v2, v7, v8, v9, v10, v3, v4, v5, v6))
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v16, v17, v18, v19, "NSUInteger TPIndexOfLastSection(TSWPStorage * _Nonnull __strong)", v13, v14, v15);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginationStateCPPHelper.mm", v23, v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v31, v32, v33, v34, v35, v21, v30, 44, 0, "Wrong storage kind");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v41, v42, v43, v44, v37, v38, v39, v40);
  }

  v45 = objc_msgSend_length(v1, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  if (v1)
  {
    objc_msgSend_sectionEnumeratorAtCharIndex_(v1, v49, v50, v51, v52, v46, v45, v47, v48);
    v53 = *(&v55[0] + 1);
  }

  else
  {
    v53 = 0;
    memset(v55, 0, sizeof(v55));
  }

  sub_2760005A4(v55);

  return v53;
}

char *sub_275FF909C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (objc_msgSend_wpKind(v5, v7, v12, v13, v14, v15, v8, v9, v10, v11))
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v21, v22, v23, v24, "NSUInteger TPNextSectionIndex(TSWPStorage * _Nonnull __strong, TPPageIndexPath * _Nonnull __strong, NSUInteger * _Nonnull)", v18, v19, v20);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginationStateCPPHelper.mm", v28, v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v36, v37, v38, v39, v40, v26, v35, 49, 0, "Wrong storage kind");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v46, v47, v48, v49, v42, v43, v44, v45);
  }

  v53 = objc_msgSend_sectionIndex(v6, v16, v21, v22, v23, v24, v17, v18, v19, v20);
  if (v5)
  {
    objc_msgSend_sectionEnumeratorAtSectionIndex_(v5, v54, v55, v56, v57, v50, v53, v51, v52);
  }

  else
  {
    memset(v70, 0, sizeof(v70));
  }

  if (sub_2760009C4(v70))
  {
    v66 = v53 + 1;
  }

  else
  {
    sub_2760005CC(v70);
    v66 = *(&v70[0] + 1);
  }

  v67 = sub_276000688(v70, v69, v62, v63, v64, v65, v58, v59, v60, v61);
  if (a3)
  {
    *a3 = v69[0];
  }

  sub_2760005A4(v70);

  return v66;
}

id sub_275FF976C(void *a1, void *a2)
{
  v99 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v14 = objc_msgSend_set(MEMORY[0x277CBEB58], v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v23 = objc_msgSend_children(v3, v15, 0, v20, v21, v22, v16, v17, v18, v19);
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, v26, v27, v28, v29, &v93, v98, 16, v25);
  if (v30)
  {
    v40 = v30;
    v41 = *v94;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v94 != v41)
        {
          objc_enumerationMutation(v23);
        }

        v43 = *(*(&v93 + 1) + 8 * i);
        v44 = objc_msgSend_info(v43, v31, v36, v37, v38, v39, v32, v33, v34, v35);

        if (v44 == v4)
        {
          objc_msgSend_addObject_(v14, v31, v36, v37, v38, v39, v43, v33, v34, v35);
        }
      }

      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v31, v36, v37, v38, v39, &v93, v98, 16, v35);
    }

    while (v40);
  }

  if (!objc_msgSend_count(v14, v45, v50, v51, v52, v53, v46, v47, v48, v49))
  {
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v62 = objc_msgSend_children(v3, v54, 0, v59, v60, v61, v55, v56, v57, v58, 0);
    v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v63, v65, v66, v67, v68, &v89, v97, 16, v64);
    if (v69)
    {
      v70 = v69;
      v71 = *v90;
      do
      {
        for (j = 0; j != v70; ++j)
        {
          if (*v90 != v71)
          {
            objc_enumerationMutation(v62);
          }

          v73 = sub_275FF976C(*(*(&v89 + 1) + 8 * j), v4);
          objc_msgSend_unionSet_(v14, v74, v78, v79, v80, v81, v73, v75, v76, v77);
        }

        v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v82, v84, v85, v86, v87, &v89, v97, 16, v83);
      }

      while (v70);
    }
  }

  return v14;
}

void sub_275FFA850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275FFA868(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v37 = objc_msgSend_p_paginationState(*(a1 + 32), a2, a7, a8, a9, a10, a3, a4, a5, a6);
  if (objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(v37, v11, v15, v16, v17, v18, *(a1 + 48), v12, v13, v14))
  {
    LOBYTE(isPaginating) = 1;
  }

  else
  {
    isPaginating = objc_msgSend_isPaginating(*(a1 + 32), v19, v24, v25, v26, v27, v20, v21, v22, v23);
    if (isPaginating)
    {
      LOBYTE(isPaginating) = objc_msgSend_isPaginationCompleteUpToDocumentPageIndex_(v37, v29, v33, v34, v35, v36, *(a1 + 48), v30, v31, v32);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = isPaginating;
}

void sub_275FFA9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275FFAA04(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v19 = objc_msgSend_p_paginationState(*(a1 + 32), a2, a7, a8, a9, a10, a3, a4, a5, a6);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_isPaginationCompleteUpToDocumentPageIndex_(v19, v11, v15, v16, v17, v18, *(a1 + 48), v12, v13, v14);
}

void sub_275FFAD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275FFADAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275FFADC4(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), 0, 1, a10);
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void sub_275FFB028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275FFB044(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), 0, 1, a10);
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void sub_275FFB1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275FFB1E8(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (objc_msgSend_canProvideInfoForPageIndex_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), a8, a9, a10))
  {
    v20 = objc_msgSend_p_paginationState(*(a1 + 32), v11, v16, v17, v18, v19, v12, v13, v14, v15);
    v77 = objc_msgSend_sectionHints(v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);

    v39 = objc_msgSend_count(v77, v30, v35, v36, v37, v38, v31, v32, v33, v34);
    if (v39)
    {
      v48 = 0;
      v49 = v39 - 1;
      while (1)
      {
        v50 = objc_msgSend_objectAtIndexedSubscript_(v77, v40, v44, v45, v46, v47, v48, v41, v42, v43);
        v59 = objc_msgSend_p_sectionAtSectionIndex_(*(a1 + 32), v51, v55, v56, v57, v58, v48, v52, v53, v54);
        if (!v59)
        {
          break;
        }

        v69 = v59;
        if (!*(*(*(a1 + 40) + 8) + 40) || (objc_msgSend_inheritPreviousHeaderFooter(v59, v60, v65, v66, v67, v68, v61, v62, v63, v64) & 1) == 0)
        {
          v72 = objc_msgSend_p_pageMasterForPageIndex_inSection_sectionHint_(*(a1 + 32), v60, v65, v66, v67, v68, *(a1 + 48), v69, v50, v64);
          v73 = *(*(a1 + 40) + 8);
          v74 = *(v73 + 40);
          *(v73 + 40) = v72;
        }

        v75 = objc_msgSend_containsDocumentPageIndex_(v50, v60, v65, v66, v67, v68, *(a1 + 48), v70, v71, v64);

        if ((v75 & 1) == 0 && v49 != v48++)
        {
          continue;
        }

        goto LABEL_14;
      }
    }

LABEL_14:
  }
}

void sub_275FFB434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275FFB44C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (objc_msgSend_canProvideInfoForPageIndex_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), a8, a9, a10))
  {
    v20 = objc_msgSend_p_paginationState(*(a1 + 32), v11, v16, v17, v18, v19, v12, v13, v14, v15);
    v94 = objc_msgSend_sectionHints(v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);

    v39 = objc_msgSend_count(v94, v30, v35, v36, v37, v38, v31, v32, v33, v34);
    if (v39)
    {
      v48 = v39;
      v49 = 0;
      while (1)
      {
        v50 = objc_msgSend_objectAtIndexedSubscript_(v94, v40, v44, v45, v46, v47, v49, v41, v42, v43);
        v59 = objc_msgSend_p_sectionAtSectionIndex_(*(a1 + 32), v51, v55, v56, v57, v58, v49, v52, v53, v54);
        if (!v59)
        {
          break;
        }

        v67 = v59;
        hasPageHintOfKind_atPageIndex = objc_msgSend_hasPageHintOfKind_atPageIndex_(v50, v60, v63, v64, v65, v66, 2, 0, v61, v62);
        if (hasPageHintOfKind_atPageIndex)
        {
          v78 = *(a1 + 48);
          if (v78 == objc_msgSend_documentStartPageIndex(v50, v68, v74, v75, v76, v77, v69, v70, v71, v72))
          {
            goto LABEL_17;
          }
        }

        if (objc_msgSend_sectionTemplateFirstPageHidesHeaderFooter(v67, v68, v74, v75, v76, v77, v69, v70, v71, v72))
        {
          v88 = *(a1 + 48);
          started = objc_msgSend_documentStartPageIndex(v50, v79, v84, v85, v86, v87, v80, v81, v82, v83);
          v91 = v88 == started;
          v92 = hasPageHintOfKind_atPageIndex ^ 1;
          if (v88 == started)
          {
            v92 = 1;
          }

          if ((v92 & 1) == 0)
          {
            v93 = *(a1 + 48);
            v91 = v93 == objc_msgSend_documentStartPageIndex(v50, v79, v84, v85, v86, v87, v90, v81, v82, v83) + 1;
          }

          if (v91)
          {
LABEL_17:
            *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_18:

            break;
          }
        }

        if (objc_msgSend_containsDocumentPageIndex_(v50, v79, v84, v85, v86, v87, *(a1 + 48), v81, v82, v83))
        {
          goto LABEL_18;
        }

        if (v48 == ++v49)
        {
          goto LABEL_20;
        }
      }
    }

LABEL_20:
  }
}

void sub_275FFB874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275FFB890(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (objc_msgSend_canProvideInfoForPageIndex_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), a8, a9, a10))
  {
    v17 = objc_msgSend_p_sectionHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v11, v13, v14, v15, v16, *(a1 + 48), 0, 1, v12);
    if (v17)
    {
      v65 = v17;
      v27 = objc_msgSend_p_paginationState(*(a1 + 32), v18, v23, v24, v25, v26, v19, v20, v21, v22);
      v37 = objc_msgSend_sectionHints(v27, v28, v33, v34, v35, v36, v29, v30, v31, v32);
      v46 = objc_msgSend_indexOfObjectIdenticalTo_(v37, v38, v42, v43, v44, v45, v65, v39, v40, v41);

      v55 = objc_msgSend_p_sectionAtSectionIndex_(*(a1 + 32), v47, v51, v52, v53, v54, v46, v48, v49, v50);
      v62 = objc_msgSend_p_pageMasterForPageIndex_inSection_sectionHint_(*(a1 + 32), v56, v58, v59, v60, v61, *(a1 + 48), v55, v65, v57);
      v63 = *(*(a1 + 40) + 8);
      v64 = *(v63 + 40);
      *(v63 + 40) = v62;

      v17 = v65;
    }
  }
}

void sub_275FFBFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275FFBFC0(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!objc_msgSend_canProvideInfoForPageIndex_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), a8, a9, a10))
  {
    return;
  }

  v17 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v11, v13, v14, v15, v16, *(a1 + 48), 0, 1, v12);
  v26 = v17;
  if (v17)
  {
    v72 = v17;
    v27 = objc_msgSend_pageKind(v17, v17, v22, v23, v24, v25, v18, v19, v20, v21);
    if (v27 > 2)
    {
      v26 = v72;
      if (v27 == 3 || v27 == 4 || v27 == 6)
      {
        v35 = *(*(a1 + 40) + 8);
        v36 = *(v35 + 24) & 0xFFFFFFFFFFFFFFFELL;
LABEL_12:
        *(v35 + 24) = v36;
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    v26 = v72;
    if (v27 != 1)
    {
      if (v27 == 2)
      {
        v35 = *(*(a1 + 40) + 8);
        v36 = 2;
        goto LABEL_12;
      }

LABEL_16:
      v37 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v31, v32, v33, v34, "[TPPaginatedPageController(LayoutInfoProvider) contentFlagsForPageIndex:]_block_invoke", v28, v29, v30);
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController_LayoutInfoProvider.m", v40, v41, v42);
      v57 = objc_msgSend_pageKind(v72, v48, v53, v54, v55, v56, v49, v50, v51, v52);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v58, v59, v60, v61, v62, v38, v47, 345, 0, "Can't produce content flags for this page kind: %ld", v57);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v68, v69, v70, v71, v64, v65, v66, v67);
      v26 = v72;
    }
  }

LABEL_13:
}

void sub_275FFC250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275FFC268(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v12 = objc_msgSend_wpKind(v2, v3, v8, v9, v10, v11, v4, v5, v6, v7);

  if (v12 == 1)
  {
    if (!objc_msgSend_shouldHeaderFooterBeVisibleForPageIndex_(*(a1 + 40), v13, v17, v18, v19, v20, *(a1 + 56), v14, v15, v16))
    {
      return;
    }

    v29 = objc_msgSend_headerFooterProviderForPageIndex_(*(a1 + 40), v21, v25, v26, v27, v28, *(a1 + 56), v22, v23, v24);
    if (v29)
    {
      v56 = v29;
      v38 = objc_msgSend_headerFooterTypeForStorage_(v29, v30, v34, v35, v36, v37, *(a1 + 32), v31, v32, v33) == -1;
      goto LABEL_8;
    }

LABEL_12:
    v55 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  v29 = objc_msgSend_sectionTemplateDrawableProviderForPageIndex_(*(a1 + 40), v39, v43, v44, v45, v46, *(a1 + 56), v40, v41, v42);
  if (!v29)
  {
    goto LABEL_12;
  }

  v56 = v29;
  v38 = objc_msgSend_indexOfSectionTemplateDrawable_(v29, v47, v51, v52, v53, v54, *(a1 + 32), v48, v49, v50) == 0x7FFFFFFFFFFFFFFFLL;
LABEL_8:
  v29 = v56;
  v55 = !v38;
LABEL_13:
  *(*(*(a1 + 48) + 8) + 24) = v55;
}

void sub_275FFC6D4(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!objc_msgSend_canProvideNumberingInfoForPageIndex_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), a8, a9, a10))
  {
    return;
  }

  v20 = objc_msgSend_p_paginationState(*(a1 + 32), v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v88 = objc_msgSend_sectionHints(v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);

  v39 = objc_msgSend_count(v88, v30, v35, v36, v37, v38, v31, v32, v33, v34);
  if (!v39)
  {
    goto LABEL_19;
  }

  v48 = v39;
  v49 = 0;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  while (1)
  {
    v50 = objc_msgSend_p_sectionAtSectionIndex_(*(a1 + 32), v40, v44, v45, v46, v47, v49, v41, v42, v43);
    if (v50)
    {
      break;
    }

LABEL_12:
    if (v48 == ++v49)
    {
      goto LABEL_17;
    }
  }

  v51 = v50;
  v52 = objc_msgSend_objectAtIndexedSubscript_(v88, v40, v44, v45, v46, v47, v49, v41, v42, v43);
  if (objc_msgSend_sectionPageNumberKind(v51, v53, v58, v59, v60, v61, v54, v55, v56, v57) == 1)
  {
    if (objc_msgSend_documentStartPageIndex(v52, v62, v67, v68, v69, v70, v63, v64, v65, v66) > *(a1 + 48))
    {
      goto LABEL_16;
    }

    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_sectionPageNumberStart(v51, v71, v76, v77, v78, v79, v72, v73, v74, v75);
    if (objc_msgSend_hasPageHintOfKind_atPageIndex_(v52, v80, v83, v84, v85, v86, 2, 0, v81, v82))
    {
      --*(*(*(a1 + 40) + 8) + 24);
    }
  }

  if ((*(a1 + 56) & 1) != 0 || !objc_msgSend_containsDocumentPageIndex_(v52, v62, v67, v68, v69, v70, *(a1 + 48), v64, v65, v66))
  {
    *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_pageCount(v52, v62, v67, v68, v69, v70, v63, v64, v65, v66);

    goto LABEL_12;
  }

  v87 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) += v87 - objc_msgSend_documentStartPageIndex(v52, v62, v67, v68, v69, v70, v63, v64, v65, v66);
LABEL_16:

LABEL_17:
  if (*(a1 + 56) == 1)
  {
    --*(*(*(a1 + 40) + 8) + 24);
  }

LABEL_19:
}

uint64_t sub_275FFC8B4(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = v3;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  sub_275FFC928(a1, v4, v5, v6, v7, v8, 0, v9, v10, v11);

  return a1;
}

void sub_275FFC928(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v11 = *(a1 + 8);
  if (v11 >= objc_msgSend_count(*a1, a2, a7, a8, a9, a10, a3, a4, a5, a6) || (objc_msgSend_objectAtIndexedSubscript_(*a1, v12, v16, v17, v18, v19, *(a1 + 8), v13, v14, v15), v20 = objc_claimAutoreleasedReturnValue(), v21 = *(a1 + 16), v31 = objc_msgSend_pageCount(v20, v22, v27, v28, v29, v30, v23, v24, v25, v26), v20, v21 >= v31))
  {
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    *(a1 + 8) = vnegq_f64(v32);
    v33 = *(a1 + 24);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  }
}

void *sub_275FFC9D4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v7;
  *a1 = v9;
  a1[1] = objc_msgSend_sectionIndex(v8, v10, v15, v16, v17, v18, v11, v12, v13, v14);
  a1[2] = objc_msgSend_pageIndex(v8, v19, v24, v25, v26, v27, v20, v21, v22, v23);
  a1[3] = 0;
  a1[4] = 0x7FFFFFFFFFFFFFFFLL;
  sub_275FFC928(a1, v28, v29, v30, v31, v32, v33, v34, v35, v36);
  sub_275FFCAD0(a1, v37, v42, v43, v44, v45, v38, v39, v40, v41);
  v55 = sub_275FFCB6C(a1, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  if (a4)
  {
    v65 = v55;
  }

  else
  {
    v65 = 1;
  }

  if ((v65 & 1) == 0)
  {
    do
    {
      if (a4 < 0)
      {
        sub_275FFCD14(a1, v56, v57, v58, v59, v60, v61, v62, v63, v64);
        v66 = 1;
      }

      else
      {
        sub_275FFCF2C(a1, v56, v57, v58, v59, v60, v61, v62, v63, v64);
        v66 = -1;
      }

      a4 += v66;
    }

    while (a4);
  }

  return a1;
}

void sub_275FFCAD0(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *(a1 + 8);
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = *(a1 + 16);
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
      if (v10)
      {
        v14 = 0;
        do
        {
          v15 = objc_msgSend_objectAtIndexedSubscript_(*a1, a2, a3, a4, a5, a6, v14, a8, a9, a10);
          v13 += objc_msgSend_pageCount(v15, v16, v21, v22, v23, v24, v17, v18, v19, v20);

          ++v14;
        }

        while (v14 < *(a1 + 8));
        v12 = *(a1 + 16);
      }

      *(a1 + 32) = v12 + v13;
    }
  }
}

BOOL sub_275FFCB6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  if (*(a1 + 16) == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v11 = *(a1 + 8);
  if (v11 == 0x7FFFFFFFFFFFFFFFLL || *(a1 + 32) == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  if (v11 >= objc_msgSend_count(*a1, a2, a7, a8, a9, a10, a3, a4, a5, a6))
  {
    v66 = MEMORY[0x277D81150];
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "BOOL TPPageHintEnumerator::isFinished() const", v13, v14, v15);
    v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, v72, v73, v74, v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHintEnumerator.mm", v69, v70, v71);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v77, v78, v79, v80, v81, v67, v76, 261, 0, "Section index is out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v82, v87, v88, v89, v90, v83, v84, v85, v86);
    return 1;
  }

  v20 = objc_msgSend_objectAtIndexedSubscript_(*a1, v12, v16, v17, v18, v19, *(a1 + 8), v13, v14, v15);
  v21 = *(a1 + 16);
  v31 = v21 >= objc_msgSend_pageCount(v20, v22, v27, v28, v29, v30, v23, v24, v25, v26);
  v40 = v31;
  if (v31)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v36, v37, v38, v39, "BOOL TPPageHintEnumerator::isFinished() const", v33, v34, v35);
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHintEnumerator.mm", v44, v45, v46);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v52, v53, v54, v55, v56, v42, v51, 266, 0, "Page index is out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v62, v63, v64, v65, v58, v59, v60, v61);
  }

  return v40;
}

uint64_t sub_275FFCD14(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  if (sub_275FFCB6C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10))
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v15, v16, v17, v18, "TPPageHintEnumerator &TPPageHintEnumerator::operator--()", v12, v13, v14);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHintEnumerator.mm", v22, v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v30, v31, v32, v33, v34, v20, v29, 114, 0, "Shouldn't be decrementing once we're finished");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v40, v41, v42, v43, v36, v37, v38, v39);
  }

  v44 = *(a1 + 24);
  *(a1 + 24) = 0;

  if (!sub_275FFCB6C(a1, v45, v46, v47, v48, v49, v50, v51, v52, v53))
  {
    while (1)
    {
      v62 = *(a1 + 32);
      if (v62)
      {
        *(a1 + 32) = v62 - 1;
      }

      v63 = *(a1 + 16);
      if (v63)
      {
        *(a1 + 16) = v63 - 1;
        return a1;
      }

      v64 = *(a1 + 8);
      if (!v64)
      {
        v117.f64[0] = NAN;
        v117.f64[1] = NAN;
        *(a1 + 8) = vnegq_f64(v117);
        v118 = *(a1 + 24);
        *(a1 + 24) = 0;
        *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;

        return a1;
      }

      *(a1 + 8) = v64 - 1;
      v65 = objc_msgSend_objectAtIndexedSubscript_(*a1, v54, v58, v59, v60, v61, v64 - 1, v55, v56, v57);
      if (objc_msgSend_pageCount(v65, v66, v71, v72, v73, v74, v67, v68, v69, v70))
      {
        break;
      }

      if (objc_msgSend_lastPageIndex(v65, v75, v80, v81, v82, v83, v76, v77, v78, v79) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v92 = MEMORY[0x277D81150];
        v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, v88, v89, v90, v91, "TPPageHintEnumerator &TPPageHintEnumerator::operator--()", v85, v86, v87);
        v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, v98, v99, v100, v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHintEnumerator.mm", v95, v96, v97);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v92, v103, v104, v105, v106, v107, v93, v102, 137, 0, "Unexpected page index for empty section");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v108, v113, v114, v115, v116, v109, v110, v111, v112);
      }
    }

    *(a1 + 16) = objc_msgSend_lastPageIndex(v65, v75, v80, v81, v82, v83, v76, v77, v78, v79);
  }

  return a1;
}

uint64_t sub_275FFCF2C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  if (sub_275FFCB6C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10))
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v15, v16, v17, v18, "TPPageHintEnumerator &TPPageHintEnumerator::operator++()", v12, v13, v14);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHintEnumerator.mm", v22, v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v30, v31, v32, v33, v34, v20, v29, 81, 0, "Shouldn't be incrementing once we're finished");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v40, v41, v42, v43, v36, v37, v38, v39);
  }

  v44 = *(a1 + 24);
  *(a1 + 24) = 0;

  if (!sub_275FFCB6C(a1, v45, v46, v47, v48, v49, v50, v51, v52, v53))
  {
    while (1)
    {
      ++*(a1 + 32);
      v62 = objc_msgSend_objectAtIndexedSubscript_(*a1, v54, v58, v59, v60, v61, *(a1 + 8), v55, v56, v57);
      v63 = *(a1 + 16);
      if (v63 + 1 < objc_msgSend_pageCount(v62, v64, v69, v70, v71, v72, v65, v66, v67, v68))
      {
        ++*(a1 + 16);
        goto LABEL_13;
      }

      v82 = *(a1 + 8);
      if (v82 + 1 >= objc_msgSend_count(*a1, v73, v78, v79, v80, v81, v74, v75, v76, v77))
      {
        v145.f64[0] = NAN;
        v145.f64[1] = NAN;
        *(a1 + 8) = vnegq_f64(v145);
        v146 = *(a1 + 24);
        *(a1 + 24) = 0;
        *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;

        goto LABEL_13;
      }

      v91 = *a1;
      v92 = *(a1 + 8) + 1;
      *(a1 + 8) = v92;
      *(a1 + 16) = 0;
      v93 = objc_msgSend_objectAtIndexedSubscript_(v91, v83, v87, v88, v89, v90, v92, v84, v85, v86);

      if (objc_msgSend_pageCount(v93, v94, v99, v100, v101, v102, v95, v96, v97, v98))
      {
        break;
      }

      if (objc_msgSend_lastPageIndex(v93, v103, v108, v109, v110, v111, v104, v105, v106, v107) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v120 = MEMORY[0x277D81150];
        v121 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v112, v116, v117, v118, v119, "TPPageHintEnumerator &TPPageHintEnumerator::operator++()", v113, v114, v115);
        v130 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, v126, v127, v128, v129, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageHintEnumerator.mm", v123, v124, v125);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v120, v131, v132, v133, v134, v135, v121, v130, 101, 0, "Unexpected page index for empty section");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v136, v141, v142, v143, v144, v137, v138, v139, v140);
      }
    }

    v62 = v93;
LABEL_13:
  }

  return a1;
}

uint64_t sub_275FFD184(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  *a1 = v5;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v7 = vnegq_f64(v6);
  *(a1 + 8) = v7;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  v21 = objc_msgSend_count(v5, v8, v7, v13, v14, v15, v9, v10, v11, v12);
  if (v21)
  {
    v26 = 0;
    v27 = 0;
    while (1)
    {
      v28 = objc_msgSend_objectAtIndexedSubscript_(*a1, v16, v22, v23, v24, v25, v27, v18, v19, v20);
      v26 += objc_msgSend_pageCount(v28, v29, v34, v35, v36, v37, v30, v31, v32, v33);
      if (v26 > a3)
      {
        break;
      }

      if (v21 == ++v27)
      {
        goto LABEL_7;
      }
    }

    *(a1 + 8) = v27;
    *(a1 + 16) = a3 - objc_msgSend_documentStartPageIndex(v28, v38, v43, v44, v45, v46, v39, v40, v41, v42);
  }

LABEL_7:
  sub_275FFC928(a1, v16, v17, v18, v19, v20, v22, v23, v24, v25);

  return a1;
}

id *sub_275FFD290(id *a1)
{
  v2 = *a1;
  *a1 = 0;

  return a1;
}

id sub_275FFD2D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  if (sub_275FFCB6C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10))
  {
    v19 = 0;
  }

  else
  {
    v19 = objc_msgSend_objectAtIndexedSubscript_(*a1, v11, v15, v16, v17, v18, *(a1 + 8), v12, v13, v14);
  }

  return v19;
}

id sub_275FFD320(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v11 = *(a1 + 24);
  if (!v11)
  {
    if (sub_275FFCB6C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10))
    {
      v21 = 0;
    }

    else
    {
      v22 = sub_275FFD2D4(a1, v12, v13, v14, v15, v16, v17, v18, v19, v20);
      v21 = objc_msgSend_pageHintForPageIndex_(v22, v23, v27, v28, v29, v30, *(a1 + 16), v24, v25, v26);
    }

    v31 = *(a1 + 24);
    *(a1 + 24) = v21;

    v11 = *(a1 + 24);
  }

  return v11;
}

uint64_t sub_275FFD3B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v10 = sub_275FFD320(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  v20 = v10;
  if (v10)
  {
    v21 = objc_msgSend_pageKind(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t sub_275FFD410(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v10 = sub_275FFD320(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  v20 = v10;
  if (v10)
  {
    v21 = objc_msgSend_range(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  }

  else
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v21;
}

uint64_t sub_275FFD47C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v10 = sub_275FFD320(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  v20 = v10;
  if (v10)
  {
    v21 = objc_msgSend_anchoredRange(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  }

  else
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v21;
}

uint64_t sub_275FFD4E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v10 = sub_275FFD320(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  v20 = v10;
  if (v10)
  {
    v21 = objc_msgSend_footnoteAutoNumberRange(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  }

  else
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v21;
}

uint64_t sub_275FFD554(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v10 = sub_275FFD320(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  v20 = v10;
  if (v10)
  {
    v21 = objc_msgSend_footnoteLayoutRange(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  }

  else
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v21;
}

id sub_275FFD5C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v10 = sub_275FFD320(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  v20 = v10;
  if (v10)
  {
    v21 = objc_msgSend_firstChildHint(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

id sub_275FFD62C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v10 = sub_275FFD320(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  v20 = v10;
  if (v10)
  {
    v21 = objc_msgSend_lastChildHint(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void sub_275FFDEDC(uint64_t a1, void *a2)
{
  v7 = a2;
  if (!v7)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v8, v9, v10, v11, "[TPViewStateRoot loadFromUnarchiver:]_block_invoke", v4, v5, v6);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPViewStateRoot.mm", v15, v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v23, v24, v25, v26, v27, v13, v22, 95, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v33, v34, v35, v36, v29, v30, v31, v32);
  }

  v37 = *(a1 + 32);
  v38 = *(v37 + 64);
  *(v37 + 64) = v7;
}

void sub_275FFDFD8(uint64_t a1, void *a2)
{
  v7 = a2;
  if (!v7)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v8, v9, v10, v11, "[TPViewStateRoot loadFromUnarchiver:]_block_invoke_2", v4, v5, v6);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPViewStateRoot.mm", v15, v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v23, v24, v25, v26, v27, v13, v22, 102, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v33, v34, v35, v36, v29, v30, v31, v32);
  }

  v37 = *(a1 + 32);
  v38 = *(v37 + 72);
  *(v37 + 72) = v7;
}

id sub_275FFFC3C(uint64_t a1)
{
  if (qword_280A404D8 != -1)
  {
    sub_2760383C8();
  }

  v2 = qword_280A404D0;

  return v2;
}

void sub_275FFFC80(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a6, a1, a2, a3, a4, a7, a8, a9, a10);
  v11 = qword_280A404D0;
  qword_280A404D0 = v10;
}

uint64_t sub_275FFFCC0(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  v7 = a2;
  objc_initWeak(a1, v7);
  *(a1 + 8) = a3;
  v8 = sub_275FFFE18(a3, v7);
  v9 = sub_27600009C(a4, v7);
  if (v8 <= v9 + 1)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v8;
  }

  if (v8 >= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v8;
  }

  *(a1 + 16) = v11;
  *(a1 + 24) = v10 - v11;
  *(a1 + 32) = a3;
  *(a1 + 40) = 1;
  sub_276000344(a1);
  sub_2760003B4(a1);
  v12 = sub_276000420(a1);
  *(a1 + 8) = v12;
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "TPSectionEnumerator::TPSectionEnumerator(TSWPStorage *__strong, TSWPAttributeIndex, TSWPAttributeIndex)", v14, v15, v16);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm", v24, v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v32, v33, v34, v35, v36, v22, v31, 34, 0, "bad section index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v42, v43, v44, v45, v38, v39, v40, v41);
  }

  return a1;
}

void sub_275FFFDE8(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);

  _Unwind_Resume(a1);
}

unint64_t sub_275FFFE18(unint64_t a1, void *a2)
{
  v3 = a2;
  v12 = objc_msgSend_attributeArrayForKind_(v3, v4, v8, v9, v10, v11, 8, v5, v6, v7);
  v21 = v12;
  if (v12)
  {
    if (!*(v12 + 24))
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "static TSWPAttributeIndex TPSectionEnumerator::firstSectionIndex(TSWPAttributeIndex, TSWPStorage *__strong)", v14, v15, v16);
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm", v25, v26, v27);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v33, v34, v35, v36, v37, v23, v32, 185, 0, "Illegal section count");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v43, v44, v45, v46, v39, v40, v41, v42);
    }

    if (a1)
    {
      do
      {
        v47 = TSWPAttributeArray::rangeForAttributeIndex(v21);
        *v114 = xmmword_27605FD20;
        if ((objc_msgSend_hasHiddenTextAtCharIndex_range_(v3, v48, xmmword_27605FD20, v51, v52, v53, v47 - 1, v114, v49, v50) & 1) == 0)
        {
          break;
        }

        v58 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v21);
        if (v58 >= a1)
        {
          v63 = MEMORY[0x277D81150];
          v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v59, v60, v61, v62, "static TSWPAttributeIndex TPSectionEnumerator::firstSectionIndex(TSWPAttributeIndex, TSWPStorage *__strong)", v55, v56, v57);
          v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm", v66, v67, v68);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v74, v75, v76, v77, v78, v64, v73, 196, 0, "Skipping past the hidden range should give us a new section");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v84, v85, v86, v87, v80, v81, v82, v83);
        }

        a1 = v58;
      }

      while (v58);
    }
  }

  else
  {
    v88 = MEMORY[0x277D81150];
    v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "static TSWPAttributeIndex TPSectionEnumerator::firstSectionIndex(TSWPAttributeIndex, TSWPStorage *__strong)", v14, v15, v16);
    v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, v94, v95, v96, v97, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm", v91, v92, v93);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v88, v99, v100, v101, v102, v103, v89, v98, 183, 0, "invalid nil value for '%{public}s'", "sectionTable");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v109, v110, v111, v112, v105, v106, v107, v108);
    a1 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return a1;
}

unint64_t sub_27600009C(unint64_t a1, void *a2)
{
  v3 = a2;
  v12 = objc_msgSend_attributeArrayForKind_(v3, v4, v8, v9, v10, v11, 8, v5, v6, v7);
  v21 = v12;
  if (v12)
  {
    v22 = *(v12 + 24);
    if (!v22)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "static TSWPAttributeIndex TPSectionEnumerator::lastSectionIndex(TSWPAttributeIndex, TSWPStorage *__strong)", v14, v15, v16);
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm", v26, v27, v28);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v34, v35, v36, v37, v38, v24, v33, 210, 0, "Illegal section count");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v44, v45, v46, v47, v40, v41, v42, v43);
      v22 = *(v21 + 6);
    }

    if (a1 + 1 < v22)
    {
      v48 = v22;
      while (1)
      {
        v49 = TSWPAttributeArray::rangeForAttributeIndex(v21);
        v116 = xmmword_27605FD20;
        if ((objc_msgSend_hasHiddenTextAtCharIndex_range_(v3, v50, xmmword_27605FD20, v53, v54, v55, &v50[v49 - 1], &v116, v51, v52) & 1) == 0)
        {
          break;
        }

        v60 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v21);
        if (v60 <= a1)
        {
          v65 = MEMORY[0x277D81150];
          v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v61, v62, v63, v64, "static TSWPAttributeIndex TPSectionEnumerator::lastSectionIndex(TSWPAttributeIndex, TSWPStorage *__strong)", v57, v58, v59);
          v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, v71, v72, v73, v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm", v68, v69, v70);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v76, v77, v78, v79, v80, v66, v75, 224, 0, "Skipping past the hidden range should give us a new section");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v86, v87, v88, v89, v82, v83, v84, v85);
        }

        a1 = v60;
        if (v60 + 1 >= v48)
        {
          goto LABEL_13;
        }
      }
    }

    v60 = a1;
  }

  else
  {
    v90 = MEMORY[0x277D81150];
    v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "static TSWPAttributeIndex TPSectionEnumerator::lastSectionIndex(TSWPAttributeIndex, TSWPStorage *__strong)", v14, v15, v16);
    v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, v96, v97, v98, v99, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm", v93, v94, v95);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v101, v102, v103, v104, v105, v91, v100, 208, 0, "invalid nil value for '%{public}s'", "sectionTable");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v106, v111, v112, v113, v114, v107, v108, v109, v110);
    v60 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_13:

  return v60;
}

void sub_276000344(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained(a1);
  v4 = sub_275FFFE18(v2, WeakRetained);
  v5 = *(a1 + 40);
  v6 = v5 + *(a1 + 32);
  if (v4 <= v6)
  {
    v7 = v5 + *(a1 + 32);
  }

  else
  {
    v7 = v4;
  }

  if (v4 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = v7 - v8;

  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
}

void sub_2760003B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained(a1);
  v4 = sub_27600009C(v2, WeakRetained);
  if (v2 <= v4 + 1)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = v2;
  }

  if (v2 >= v4 + 1)
  {
    v2 = v4 + 1;
  }

  v6 = v5 - v2;

  *(a1 + 32) = v2;
  *(a1 + 40) = v6;
}

unint64_t sub_276000420(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v4 = v1 >= v2;
  v3 = v1 - v2;
  v4 = !v4 || v3 >= *(a1 + 24);
  if (!v4)
  {
    WeakRetained = objc_loadWeakRetained(a1);
    v7 = sub_2760007C4(a1);
    VisibleCharInRange = objc_msgSend_indexOfFirstVisibleCharInRange_(WeakRetained, v8, v11, v12, v13, v14, v7, v8, v9, v10);

    if (VisibleCharInRange != 0x7FFFFFFFFFFFFFFFLL)
    {
      while (1)
      {
        v16 = sub_27600086C(a1);
        v1 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v16);
        v17 = sub_27600086C(a1);
        v18 = TSWPAttributeArray::charIndexForAttributeIndex(v17);
        v19 = v18 ? v18 - 1 : 0;
        v20 = objc_loadWeakRetained(a1);
        if (!objc_msgSend_hasHiddenTextAtCharIndex_(v20, v21, v25, v26, v27, v28, v19, v22, v23, v24))
        {
          break;
        }

        v29 = *(a1 + 32);

        if (v1 <= v29)
        {
          goto LABEL_13;
        }
      }

LABEL_13:
      v38 = *(a1 + 32);
      v4 = v1 >= v38;
      v39 = v1 - v38;
      if (!v4 || v39 >= *(a1 + 40))
      {
        v40 = MEMORY[0x277D81150];
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v34, v35, v36, v37, "TSWPAttributeIndex TPSectionEnumerator::firstVisibleSectionIndex() const", v31, v32, v33);
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm", v43, v44, v45);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v51, v52, v53, v54, v55, v41, v50, 174, 0, "Visible section index is out of bounds");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v61, v62, v63, v64, v57, v58, v59, v60);
      }
    }
  }

  return v1;
}

void *sub_2760005CC(void *a1)
{
  a1[4] += a1[5];
  a1[5] = 1;
  sub_2760003B4(a1);
  a1[1] = sub_276000420(a1);
  return a1;
}

void *sub_276000610@<X0>(id *from@<X0>, uint64_t a2@<X8>)
{
  objc_copyWeak(a2, from);
  *(a2 + 8) = from[1];
  v4 = *(from + 2);
  *(a2 + 16) = *(from + 1);
  *(a2 + 32) = v4;
  from[4] = from[4] + from[5];
  from[5] = 1;
  sub_2760003B4(from);
  result = sub_276000420(from);
  from[1] = result;
  return result;
}

id sub_276000688(id *a1, NSUInteger *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    *a2 = sub_2760007C4(a1);
    a2[1] = a2;
  }

  v12 = a1[1];
  v13 = a1[2];
  v15 = v12 >= v13;
  v14 = v12 - v13;
  v15 = !v15 || v14 >= a1[3];
  if (v15)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a3, a4, a5, a6, "TPSection *TPSectionEnumerator::section(NSRange *) const", a8, a9, a10);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm", v19, v20, v21);
    v27 = a1[1];
    v28 = NSStringFromRange(*(a1 + 1));
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v29, v30, v31, v32, v33, v17, v26, 108, 0, "section index not within enumeration range: %lu / %{public}@", v27, v28);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v39, v40, v41, v42, v35, v36, v37, v38);
    v44 = 0;
  }

  else
  {
    v43 = sub_27600086C(a1);
    v44 = TSWPAttributeArray::objectForAttributeIndex(v43);
  }

  return v44;
}

NSUInteger sub_2760007C4(id *a1)
{
  v1 = a1[4];
  v2 = a1[2];
  v4 = v1 >= v2;
  v3 = v1 - v2;
  v4 = !v4 || v3 >= a1[3];
  if (v4)
  {
    return *MEMORY[0x277D81490];
  }

  v7 = sub_27600086C(a1);
  v5 = TSWPAttributeArray::rangeForAttributeIndex(v7);
  v9 = v8;
  if (a1[5] >= 2)
  {
    v10 = sub_27600086C(a1);
    v14.location = TSWPAttributeArray::rangeForAttributeIndex(v10);
    v14.length = v11;
    v13.location = v5;
    v13.length = v9;
    return NSUnionRange(v13, v14).location;
  }

  return v5;
}

_DWORD *sub_27600086C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  v10 = objc_msgSend_attributeArrayForKind_(WeakRetained, v2, v6, v7, v8, v9, 8, v3, v4, v5);

  if (!v10)
  {
    v35 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v15, v16, v17, v18, "TSWPParagraphAttributeArray *TPSectionEnumerator::sectionTable() const", v12, v13, v14);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm", v37, v38, v39);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v44, v45, v46, v47, v48, v20, v29, 141, 0, "invalid nil value for '%{public}s'", "result");
    goto LABEL_5;
  }

  if (!*(v10 + 24))
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v15, v16, v17, v18, "TSWPParagraphAttributeArray *TPSectionEnumerator::sectionTable() const", v12, v13, v14);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionEnumerator.mm", v22, v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v30, v31, v32, v33, v34, v20, v29, 143, 0, "Illegal section count");
LABEL_5:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v54, v55, v56, v57, v50, v51, v52, v53);
  }

  return v10;
}

void sub_276001D38(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_276002B3C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_276003400(void *a1, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v12 = objc_msgSend_length(a1, a2, a7, a8, a9, a10, a3, a4, a5, a6);
  if (v12 <= a3)
  {
    v19 = a3;
  }

  else
  {
    v19 = v12;
  }

  if (v12 >= a3)
  {
    v20 = a3;
  }

  else
  {
    v20 = v12;
  }

  return objc_msgSend_sectionEnumeratorForCharRange_(a1, v15, v16, v17, v18, v13, v20, v19 - v20, v14);
}

uint64_t sub_27600345C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, const char *a5@<X1>, uint64_t a6@<X4>, uint64_t a7@<X5>, __n128 a8@<Q0>, __n128 a9@<Q1>, __n128 a10@<Q2>, __n128 a11@<Q3>)
{
  v15 = objc_msgSend_sectionIndexForCharIndex_(a1, a5, a8, a9, a10, a11, a2, a3, a6, a7);
  v16 = a2 + a3;
  if (v16 == objc_msgSend_length(a1, v17, v22, v23, v24, v25, v18, v19, v20, v21))
  {
    v35 = objc_msgSend_sectionCount(a1, v26, v31, v32, v33, v34, v27, v28, v29, v30) - 1;
  }

  else
  {
    v35 = v15;
    if (a3)
    {
      v35 = objc_msgSend_sectionIndexForCharIndex_(a1, v26, v31, v32, v33, v34, v16 - 1, v15, v29, v30);
    }
  }

  return sub_2760005A0(a4, a1, v15, v35);
}

uint64_t sub_2760034F8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, const char *a4@<X1>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, __n128 a8@<Q0>, __n128 a9@<Q1>, __n128 a10@<Q2>, __n128 a11@<Q3>)
{
  if (objc_msgSend_length(a1, a4, a8, a9, a10, a11, a2, a5, a6, a7))
  {
    v23 = objc_msgSend_length(a1, v14, v19, v20, v21, v22, v15, v16, v17, v18);
    v32 = objc_msgSend_sectionIndexForCharIndex_(a1, v24, v28, v29, v30, v31, v23, v25, v26, v27);
  }

  else
  {
    v32 = 0;
  }

  return sub_2760005A0(a3, a1, a2, v32);
}

id sub_27600356C(void *a1)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_2760036A4;
  v25 = sub_2760036B4;
  v26 = 0;
  v2 = objc_opt_class();
  v12 = objc_msgSend_length(a1, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v20[0] = MEMORY[0x277D85DD0];
  v13.n128_u64[0] = 3221225472;
  v20[1] = 3221225472;
  v20[2] = sub_2760036BC;
  v20[3] = &unk_27A6A8C98;
  v20[4] = &v21;
  objc_msgSend_enumerateAttachmentsOfClass_inTextRange_usingBlock_(a1, v14, v13, v15, v16, v17, v2, 0, v12, v20);
  v18 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v18;
}

void sub_276003684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2760036A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_2760036F4(void *a1)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_2760036A4;
  v25 = sub_2760036B4;
  v26 = 0;
  v2 = objc_opt_class();
  v12 = objc_msgSend_length(a1, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v20[0] = MEMORY[0x277D85DD0];
  v13.n128_u64[0] = 3221225472;
  v20[1] = 3221225472;
  v20[2] = sub_27600382C;
  v20[3] = &unk_27A6A8CC0;
  v20[4] = &v21;
  objc_msgSend_enumerateAttachmentsOfClass_inTextRange_usingBlock_(a1, v14, v13, v15, v16, v17, v2, 0, v12, v20);
  v18 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v18;
}

void sub_27600380C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

id sub_276003864(void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  CharIndex = objc_msgSend_findCharIndex(a3, a2, a7, a8, a9, a10, a3, a4, a5, a6);
  objc_msgSend_sectionEnumeratorForCharRange_(a1, v14, v15, v16, v17, v12, CharIndex, 1, v13);
  objc_opt_class();
  v26 = sub_276000688(v39, 0, v22, v23, v24, v25, v18, v19, v20, v21);
  v27 = TSUDynamicCast();

  v37 = objc_msgSend_backgroundFill(v27, v28, v33, v34, v35, v36, v29, v30, v31, v32);

  sub_2760005A4(v39);

  return v37;
}

id sub_276003944(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v11 = objc_msgSend_range(a1, a2, a7, a8, a9, a10, a3, a4, a5, a6);
  v17 = objc_msgSend_smartFieldsWithAttributeKind_intersectingRange_passingTest_(a1, v12, v13, v14, v15, v16, 6, v11, v12, &unk_288501238);
  v27 = v17;
  if (v17)
  {
    v28 = v17;
  }

  else
  {
    v28 = objc_msgSend_array(MEMORY[0x277CBEA60], v18, v23, v24, v25, v26, v19, v20, v21, v22);
  }

  v29 = v28;

  return v29;
}

void sub_276003C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

uint64_t sub_2760047FC(void *a1, void *a2)
{
  v3 = a1;
  v8 = a2;
  if (v3 | v8)
  {
    isEqual = objc_msgSend_isEqual_(v3, v4, v9, v10, v11, v12, v8, v5, v6, v7);
  }

  else
  {
    isEqual = 1;
  }

  return isEqual;
}

uint64_t sub_276005D38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v11 = objc_msgSend_name(a2, a2, a7, a8, a9, a10, a3, a4, a5, a6);
  isEqual = objc_msgSend_isEqual_(v11, v12, v16, v17, v18, v19, *(a1 + 32), v13, v14, v15);

  return isEqual;
}

void sub_27600613C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_2760005A4(va);
  _Unwind_Resume(a1);
}

void sub_276006A50(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_276006AA0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81438];
  *MEMORY[0x277D81438] = v0;
}

void sub_276006BB4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TPDocumentRoot;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_2760074B0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276008000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a59, 8);

  _Unwind_Resume(a1);
}

void sub_2760080C4(uint64_t a1, void *a2)
{
  v36 = a2;
  if (!v36)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v7, v8, v9, v10, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke", v4, v5, v6);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 916, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  }

  objc_msgSend_setTheme_(*(a1 + 32), v3, v7, v8, v9, v10, v36, v4, v5, v6);
}

void sub_2760081CC(uint64_t a1, void *a2)
{
  v36 = a2;
  if (!v36)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v7, v8, v9, v10, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke_2", v4, v5, v6);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 923, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  }

  objc_msgSend_setStylesheet_(*(a1 + 32), v3, v7, v8, v9, v10, v36, v4, v5, v6);
}

void sub_2760082D4(uint64_t a1, void *a2)
{
  v7 = a2;
  if (!v7)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v8, v9, v10, v11, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke_3", v4, v5, v6);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v15, v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v23, v24, v25, v26, v27, v13, v22, 931, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v33, v34, v35, v36, v29, v30, v31, v32);
  }

  v37 = *(a1 + 32);
  v38 = *(v37 + 496);
  *(v37 + 496) = v7;
}

void sub_2760083D0(uint64_t a1, void *a2)
{
  v36 = a2;
  if (!v36)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v7, v8, v9, v10, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke_4", v4, v5, v6);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 938, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  }

  objc_msgSend_setDrawablesZOrder_(*(a1 + 32), v3, v7, v8, v9, v10, v36, v4, v5, v6);
}

void sub_2760084D8(uint64_t a1, void *a2)
{
  v36 = a2;
  if (!v36)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v7, v8, v9, v10, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke_5", v4, v5, v6);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 945, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  }

  objc_msgSend_setFloatingDrawables_(*(a1 + 32), v3, v7, v8, v9, v10, v36, v4, v5, v6);
}

void sub_2760085E0(uint64_t a1, void *a2)
{
  v36 = a2;
  if (!v36)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v7, v8, v9, v10, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke_6", v4, v5, v6);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 952, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  }

  objc_msgSend_setFlowInfoContainer_(*(a1 + 32), v3, v7, v8, v9, v10, v36, v4, v5, v6);
}

uint64_t sub_2760086E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276008700(uint64_t a1, void *a2)
{
  v7 = a2;
  if (!v7)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v8, v9, v10, v11, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke", v4, v5, v6);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v15, v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v23, v24, v25, v26, v27, v13, v22, 961, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v33, v34, v35, v36, v29, v30, v31, v32);
  }

  v37 = *(*(a1 + 32) + 8);
  v38 = *(v37 + 40);
  *(v37 + 40) = v7;
}

void sub_2760087F8(uint64_t a1, void *a2)
{
  v7 = a2;
  if (!v7)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v8, v9, v10, v11, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke_2", v4, v5, v6);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v15, v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v23, v24, v25, v26, v27, v13, v22, 968, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v33, v34, v35, v36, v29, v30, v31, v32);
  }

  v37 = *(a1 + 32);
  v38 = *(v37 + 504);
  *(v37 + 504) = v7;
}

void sub_276008930(uint64_t a1, void *a2)
{
  v7 = a2;
  if (!v7)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, v8, v9, v10, v11, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke_6", v4, v5, v6);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v15, v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v23, v24, v25, v26, v27, v13, v22, 991, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v33, v34, v35, v36, v29, v30, v31, v32);
  }

  v37 = *(a1 + 32);
  v38 = *(v37 + 664);
  *(v37 + 664) = v7;
}

void sub_276008A2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v19 = objc_msgSend_object(a2, a2, a7, a8, a9, a10, a3, a4, a5, a6);
  objc_msgSend_setCustomFormatListToUpgrade_(*(a1 + 32), v11, v15, v16, v17, v18, v19, v12, v13, v14);
}

uint64_t sub_276008AB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v545 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  if (!v11[61])
  {
    v12 = objc_alloc(MEMORY[0x277D80AE0]);
    v22 = objc_msgSend_context(*(a1 + 32), v13, v18, v19, v20, v21, v14, v15, v16, v17);
    canCullStyles = objc_msgSend_initWithContext_canCullStyles_(v12, v23, v26, v27, v28, v29, v22, 1, v24, v25);
    v31 = *(a1 + 32);
    v32 = *(v31 + 488);
    *(v31 + 488) = canCullStyles;

    v11 = *(a1 + 32);
  }

  if (!v11[60])
  {
    v33 = objc_msgSend_themeWithContext_alternate_withStylesheet_(TPTheme, a2, a7, a8, a9, a10, *(a1 + 40), 5, v11[61], a6);
    objc_msgSend_setTheme_(*(a1 + 32), v34, v38, v39, v40, v41, v33, v35, v36, v37);

    v11 = *(a1 + 32);
  }

  if (!v11[62])
  {
    objc_msgSend_pCreateBodyStorage(v11, a2, a7, a8, a9, a10, a3, a4, a5, a6);
    v11 = *(a1 + 32);
  }

  if (!v11[64])
  {
    objc_msgSend_willModifyForUpgrade(v11, a2, a7, a8, a9, a10, a3, a4, a5, a6);
    v42 = *(a1 + 32);
    v52 = objc_msgSend_bodyStorage(v42, v43, v48, v49, v50, v51, v44, v45, v46, v47);
    objc_msgSend_pCreateDrawablesZOrderBodyStorage_addAnchoredDrawables_(v42, v53, v56, v57, v58, v59, v52, 1, v54, v55);

    v11 = *(a1 + 32);
  }

  if (!v11[65])
  {
    objc_msgSend_pCreateFloatingDrawables(v11, a2, a7, a8, a9, a10, a3, a4, a5, a6);
    v11 = *(a1 + 32);
  }

  if (v11[97])
  {
    v515 = objc_opt_new();
    v536 = 0u;
    v537 = 0u;
    v538 = 0u;
    v539 = 0u;
    v68 = objc_msgSend_flowInfos(*(*(a1 + 32) + 776), v60, 0, v65, v66, v67, v61, v62, v63, v64);
    obj = v68;
    v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, v71, v72, v73, v74, &v536, v544, 16, v70);
    if (v75)
    {
      v517 = *v537;
      do
      {
        v76 = 0;
        v518 = v75;
        do
        {
          if (*v537 != v517)
          {
            objc_enumerationMutation(obj);
          }

          v77 = *(*(&v536 + 1) + 8 * v76);
          v78 = objc_opt_new();
          v534 = 0u;
          v535 = 0u;
          v532 = 0u;
          v533 = 0u;
          v87 = objc_msgSend_textboxes(v77, v79, 0, v84, v85, v86, v80, v81, v82, v83);
          v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v87, v88, v90, v91, v92, v93, &v532, v543, 16, v89);
          v519 = v77;
          if (v98)
          {
            v103 = *v533;
            do
            {
              for (i = 0; i != v98; ++i)
              {
                if (*v533 != v103)
                {
                  objc_enumerationMutation(v87);
                }

                v105 = *(*(&v532 + 1) + 8 * i);
                if (objc_msgSend_pageIndexForDrawable_(*(*(a1 + 32) + 520), v94, v99, v100, v101, v102, v105, v95, v96, v97) == 0x7FFFFFFFFFFFFFFFLL)
                {
                  objc_msgSend_addObject_(v78, v94, v99, v100, v101, v102, v105, v95, v96, v97);
                }
              }

              v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v87, v94, v99, v100, v101, v102, &v532, v543, 16, v97);
            }

            while (v98);
          }

          if (objc_msgSend_count(v78, v106, v111, v112, v113, v114, v107, v108, v109, v110))
          {
            v124 = objc_msgSend_textboxes(v519, v115, v120, v121, v122, v123, v116, v117, v118, v119);
            v134 = objc_msgSend_mutableCopy(v124, v125, v130, v131, v132, v133, v126, v127, v128, v129);

            objc_msgSend_removeObjectsInArray_(v134, v135, v139, v140, v141, v142, v78, v136, v137, v138);
            if (objc_msgSend_count(v134, v143, v148, v149, v150, v151, v144, v145, v146, v147))
            {
              if (*MEMORY[0x277D81500] != -1)
              {
                sub_2760383F0();
              }

              objc_msgSend_willModifyForUpgrade(v519, v152, v157, v158, v159, v160, v153, v154, v155, v156);
              objc_msgSend_setTextboxes_(v519, v161, v165, v166, v167, v168, v134, v162, v163, v164);
            }

            else
            {
              if (*MEMORY[0x277D81500] != -1)
              {
                sub_276038418();
              }

              objc_msgSend_addObject_(v515, v152, v157, v158, v159, v160, v519, v154, v155, v156);
            }
          }

          ++v76;
        }

        while (v76 != v518);
        v68 = obj;
        v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v169, v171, v172, v173, v174, &v536, v544, 16, v170);
      }

      while (v75);
    }

    v530 = 0u;
    v531 = 0u;
    v528 = 0u;
    v529 = 0u;
    v175 = v515;
    v187 = objc_msgSend_countByEnumeratingWithState_objects_count_(v175, v176, v178, v179, v180, v181, &v528, v542, 16, v177);
    if (v187)
    {
      v192 = *v529;
      do
      {
        for (j = 0; j != v187; ++j)
        {
          if (*v529 != v192)
          {
            objc_enumerationMutation(v175);
          }

          v194 = *(*(&v528 + 1) + 8 * j);
          objc_msgSend_willModifyForUpgrade(*(*(a1 + 32) + 776), v182, v188, v189, v190, v191, v183, v184, v185, v186);
          objc_msgSend_removeFlowInfo_(*(*(a1 + 32) + 776), v195, v199, v200, v201, v202, v194, v196, v197, v198);
        }

        v187 = objc_msgSend_countByEnumeratingWithState_objects_count_(v175, v182, v188, v189, v190, v191, &v528, v542, 16, v186);
      }

      while (v187);
    }
  }

  else
  {
    objc_msgSend_pCreateFlowInfoContainer(v11, a2, a7, a8, a9, a10, a3, a4, a5, a6);
  }

  v212 = *(*(*(a1 + 48) + 8) + 40);
  if (v212)
  {
    objc_msgSend_willBeRemovedFromDocumentRoot_(v212, v203, v208, v209, v210, v211, *(a1 + 32), v205, v206, v207);
    objc_msgSend_wasRemovedFromDocumentRoot_(*(*(*(a1 + 48) + 8) + 40), v213, v217, v218, v219, v220, *(a1 + 32), v214, v215, v216);
    if (*(a1 + 72) == 1)
    {
      objc_msgSend_pUpgradeSection_documentVersion_(*(a1 + 32), v203, v208, v209, v210, v211, *(*(*(a1 + 48) + 8) + 40), *(a1 + 56), v206, v207);
    }
  }

  objc_msgSend_pCommonInitialization(*(a1 + 32), v203, v208, v209, v210, v211, v204, v205, v206, v207);
  if (*(a1 + 72) == 1)
  {
    objc_msgSend_performHyperlinkUpgradesIfNecessaryForVersion_(*(a1 + 32), v221, v226, v227, v228, v229, *(a1 + 56), v223, v224, v225);
    objc_msgSend_p_upgradeTOCStyles(*(a1 + 32), v230, v235, v236, v237, v238, v231, v232, v233, v234);
    objc_msgSend_p_upgradeBodyTOC(*(a1 + 32), v239, v244, v245, v246, v247, v240, v241, v242, v243);
    *(*(a1 + 32) + 464) = 1;
  }

  if (*(a1 + 64) < *MEMORY[0x277D80968])
  {
    objc_msgSend_p_upgradeTOCModelForUnity20(*(a1 + 32), v221, v226, v227, v228, v229, v222, v223, v224, v225);
  }

  if ((*(a1 + 73) & 1) == 0)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v221, v226, v227, v228, v229, v222, v223, v224, v225);
    objc_msgSend_p_initializeShowInBookmarksListParagraphStylesProperty(*(a1 + 32), v248, v253, v254, v255, v256, v249, v250, v251, v252);
  }

  v257 = objc_msgSend_settings(*(a1 + 32), v221, v226, v227, v228, v229, v222, v223, v224, v225);
  hasBody = objc_msgSend_hasBody(v257, v258, v263, v264, v265, v266, v259, v260, v261, v262);

  if ((hasBody & 1) == 0)
  {
    v526 = 0u;
    v527 = 0u;
    v524 = 0u;
    v525 = 0u;
    v277 = objc_msgSend_sections(*(a1 + 32), v268, 0, v274, v275, v276, v269, v270, v271, v272);
    v288 = objc_msgSend_countByEnumeratingWithState_objects_count_(v277, v278, v280, v281, v282, v283, &v524, v541, 16, v279);
    if (v288)
    {
      v293 = *v525;
LABEL_58:
      v294 = 0;
      while (1)
      {
        if (*v525 != v293)
        {
          objc_enumerationMutation(v277);
        }

        v295 = objc_msgSend_sectionTemplatePageForType_(*(*(&v524 + 1) + 8 * v294), v284, v289, v290, v291, v292, 0, v285, v286, v287);
        v305 = objc_msgSend_pageTemplateUUIDPath(v295, v296, v301, v302, v303, v304, v297, v298, v299, v300);
        v306 = v305 == 0;

        if (v306)
        {
          break;
        }

        if (v288 == ++v294)
        {
          v288 = objc_msgSend_countByEnumeratingWithState_objects_count_(v277, v284, v289, v290, v291, v292, &v524, v541, 16, v287);
          if (v288)
          {
            goto LABEL_58;
          }

          goto LABEL_71;
        }
      }

      if (objc_msgSend_count(*(*(a1 + 32) + 736), v307, v312, v313, v314, v315, v308, v309, v310, v311) != 1)
      {

        goto LABEL_71;
      }

      v325 = objc_msgSend_firstObject(*(*(a1 + 32) + 736), v316, v321, v322, v323, v324, v317, v318, v319, v320);
      v335 = objc_msgSend_objectUUID(v325, v326, v331, v332, v333, v334, v327, v328, v329, v330);
      v345 = objc_msgSend_UUIDString(v335, v336, v341, v342, v343, v344, v337, v338, v339, v340);
      isEqualToString = objc_msgSend_isEqualToString_(v345, v346, v350, v351, v352, v353, @"6EC83440-F231-4439-8E15-2D32D699FA7F", v347, v348, v349);

      if ((isEqualToString & 1) == 0)
      {
        goto LABEL_72;
      }

      v364 = *(a1 + 64);
      v365 = 1;
      if (v364 <= 0x2000400000003 && v364 >= *MEMORY[0x277D80990])
      {
        TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Document is from a pre-release 2.4 build and could not be upgraded", "[TPDocumentRoot loadFromUnarchiver:]_block_invoke_9", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", 1195);
        v366 = MEMORY[0x277D81150];
        v375 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v367, v371, v372, v373, v374, "[TPDocumentRoot loadFromUnarchiver:]_block_invoke_9", v368, v369, v370);
        v384 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v376, v380, v381, v382, v383, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPDocumentRoot.mm", v377, v378, v379);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v366, v385, v386, v387, v388, v389, v375, v384, 1195, 1, "Document is from a pre-release 2.4 build and could not be upgraded");

        TSUCrashBreakpoint();
        abort();
      }
    }

    else
    {
LABEL_71:

LABEL_72:
      v365 = 0;
    }

    if (((objc_msgSend_count(*(*(a1 + 32) + 736), v355, v360, v361, v362, v363, v356, v357, v358, v359) != 0) & ~v365) != 0)
    {
      v522 = 0u;
      v523 = 0u;
      v520 = 0u;
      v521 = 0u;
      v408 = objc_msgSend_sections(*(a1 + 32), v390, 0, v396, v397, v398, v391, v392, v393, v394);
      v419 = objc_msgSend_countByEnumeratingWithState_objects_count_(v408, v409, v411, v412, v413, v414, &v520, v540, 16, v410);
      if (v419)
      {
        v424 = *v521;
        do
        {
          for (k = 0; k != v419; ++k)
          {
            if (*v521 != v424)
            {
              objc_enumerationMutation(v408);
            }

            v426 = objc_msgSend_sectionTemplatePageForType_(*(*(&v520 + 1) + 8 * k), v415, v420, v421, v422, v423, 0, v416, v417, v418);
            v436 = objc_msgSend_pageTemplateUUIDPath(v426, v427, v432, v433, v434, v435, v428, v429, v430, v431);
            v437 = v436 == 0;

            if (v437)
            {
              objc_msgSend_willModifyForUpgrade(v426, v438, v443, v444, v445, v446, v439, v440, v441, v442);
              v447 = [TPPageTemplate alloc];
              v457 = objc_msgSend_context(*(a1 + 32), v448, v453, v454, v455, v456, v449, v450, v451, v452);
              v467 = objc_msgSend_blankPageTemplateName(*(a1 + 32), v458, v463, v464, v465, v466, v459, v460, v461, v462);
              v473 = objc_msgSend_initWithContext_name_placeholderDrawables_placeholderTagsInZOrder_sectionTemplateDrawables_(v447, v468, v469, v470, v471, v472, v457, v467, MEMORY[0x277CBEC10], MEMORY[0x277CBEBF8], 0);

              objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v473, v474, v477, v478, v479, v480, *(a1 + 32), 0, v475, v476);
              objc_msgSend_addObject_(*(*(a1 + 32) + 736), v481, v485, v486, v487, v488, v473, v482, v483, v484);
              objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v473, v489, v492, v493, v494, v495, *(a1 + 32), 0, v490, v491);
              v505 = objc_msgSend_objectUUIDPath(v473, v496, v501, v502, v503, v504, v497, v498, v499, v500);
              objc_msgSend_i_setPageTemplateUUIDPath_(v426, v506, v510, v511, v512, v513, v505, v507, v508, v509);
            }
          }

          v419 = objc_msgSend_countByEnumeratingWithState_objects_count_(v408, v415, v420, v421, v422, v423, &v520, v540, 16, v418);
        }

        while (v419);
      }
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(*(a1 + 32), v390, v395, v396, v397, v398, v391, v392, v393, v394);
      objc_msgSend_i_upgradeSectionsForPageTemplates(*(a1 + 32), v399, v404, v405, v406, v407, v400, v401, v402, v403);
    }
  }

  if (*(a1 + 64) < *MEMORY[0x277D809A8])
  {
    objc_msgSend_upgradeParagraphStylesForTOCNavigator(*(a1 + 32), v268, v273, v274, v275, v276, v269, v270, v271, v272);
  }

  return objc_msgSend_validate_(*(*(a1 + 32) + 496), v268, v273, v274, v275, v276, 2, v270, v271, v272);
}

void sub_27600954C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

void sub_276009590()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

void sub_27600A8F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v82 = *MEMORY[0x277D85DE8];
  v76 = objc_msgSend_tocInfo(a2, a2, a7, a8, a9, a10, a3, a4, a5, a6);
  v21 = objc_msgSend_tocSettings(v76, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v30 = objc_msgSend_indexedStyles(v21, v22, 0, v27, v28, v29, v23, v24, v25, v26);
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, v33, v34, v35, v36, &v77, v81, 16, v32);
  if (v41)
  {
    v46 = 0;
    v47 = *v78;
    do
    {
      v48 = 0;
      do
      {
        if (*v78 != v47)
        {
          objc_enumerationMutation(v30);
        }

        v49 = objc_msgSend_entryStyleForParagraphStyle_(v21, v37, v42, v43, v44, v45, *(*(&v77 + 1) + 8 * v48), v38, v39, v40);
        if (objc_msgSend_containsObject_(*(a1 + 32), v50, v54, v55, v56, v57, v49, v51, v52, v53))
        {
          if ((v46 & 1) == 0)
          {
            v66 = *(a1 + 40);
            v67 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v58, v62, v63, v64, v65, a4, v59, v60, v61);
            objc_msgSend_addObject_(v66, v68, v72, v73, v74, v75, v67, v69, v70, v71);
          }

          v46 = 1;
        }

        else
        {
          objc_msgSend_addObject_(*(a1 + 32), v58, v62, v63, v64, v65, v49, v59, v60, v61);
        }

        ++v48;
      }

      while (v41 != v48);
      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v37, v42, v43, v44, v45, &v77, v81, 16, v40);
    }

    while (v41);
  }
}

void sub_27600AAE8(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v39 = objc_msgSend_entryStyleForParagraphStyle_(*(a1 + 32), a2, a3, a4, a5, a6, a2, a8, a9, a10);
  v20 = objc_msgSend_stylesheet(v39, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  if (!v20)
  {
    v30 = objc_msgSend_stylesheet(*(a1 + 40), v21, v26, v27, v28, v29, v22, v23, v24, v25);
    objc_msgSend_addStyle_(v30, v31, v35, v36, v37, v38, v39, v32, v33, v34);
  }
}

id sub_27600CE88(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 0x400u;
  v4 = *(v3 + 200);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277C92CD0](v5);
    *(v3 + 200) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TPDocumentRoot;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_27600DC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_27600DC7C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  a7.n128_u64[0] = *(a1 + 48);
  a8.n128_u64[0] = *(a1 + 56);
  v11 = objc_msgSend_p_previewImageWithImageSize_(*(a1 + 32), a2, a7, a8, a9, a10, a3, a4, a5, a6);
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void sub_27600E02C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_27600E66C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  *a4 = 1;
  v17 = objc_msgSend_bodyStorage(*(a1 + 32), v8, v13, v14, v15, v16, v9, v10, v11, v12);
  if (v17 == v7)
  {
    v19 = 0;
  }

  else
  {
    v18 = *(a1 + 40);
    if (v18)
    {
      v19 = (*(v18 + 16))(v18, v7, a3, a4);
    }

    else
    {
      v19 = 1;
    }
  }

  return v19;
}

void sub_27600F87C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (*(a1 + 32) != v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

uint64_t sub_276010CCC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_276010D24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v44[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  objc_opt_class();
  v8 = TSUDynamicCast();
  v18 = v8;
  if (v8 && objc_msgSend_isLocalizable(v8, v9, v14, v15, v16, v17, v10, v11, v12, v13))
  {
    v26 = *(a1 + 32);
    v44[0] = v18;
    v27 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v19, v22, v23, v24, v25, a3, a4, v20, v21);
    v44[1] = v27;
    v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v28, v31, v32, v33, v34, v44, 2, v29, v30);
    objc_msgSend_addObject_(v26, v36, v40, v41, v42, v43, v35, v37, v38, v39);
  }
}

void sub_276010E24(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2760117C8(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  while (1)
  {
    v12 = objc_msgSend_headerFooter_fragmentAtIndex_(*(a1 + 32), a2, a3, a4, a5, a6, a2, 0, a9, a10);
    v20 = objc_msgSend_headerFooter_fragmentAtIndex_(*(a1 + 40), v13, v16, v17, v18, v19, a2, 0, v14, v15);
    objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(*(a1 + 32), v21, v23, v24, v25, v26, a2, 0, 0, v22);
    objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(*(a1 + 40), v27, v29, v30, v31, v32, a2, v12, 0, v28);
    objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(*(a1 + 32), v33, v35, v36, v37, v38, a2, v20, 0, v34);

    operator++();
  }
}

void sub_2760118A8(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v50 = objc_msgSend_headerFooter_fragmentAtIndex_(*(a1 + 32), a2, a3, a4, a5, a6, a2, 0, a9, a10);
  v19 = objc_msgSend_headerFooter_fragmentAtIndex_(*(a1 + 32), v12, v15, v16, v17, v18, a2, 2, v13, v14);
  if (objc_msgSend_length(v50, v20, v25, v26, v27, v28, v21, v22, v23, v24) || objc_msgSend_length(v19, v29, v34, v35, v36, v37, v30, v31, v32, v33))
  {
    objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(*(a1 + 32), v29, v34, v35, v36, v37, a2, 0, 2, v33);
    objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(*(a1 + 32), v38, v40, v41, v42, v43, a2, v19, 0, v39);
    objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(*(a1 + 32), v44, v46, v47, v48, v49, a2, v50, 2, v45);
  }
}

void sub_276011CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_276011D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_27601269C(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  if (objc_msgSend_tst_hasCaseInsensitivePrefix_withLocale_(v21, v6, v9, v10, v11, v12, *(a1 + 32), *(a1 + 40), v7, v8))
  {
    objc_msgSend_addObject_(*(a1 + 48), v13, v17, v18, v19, v20, v5, v14, v15, v16);
  }
}

void sub_2760130E0(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_setStylesheetForUpgradeToSingleStylesheet_(v11, v3, v7, v8, v9, v10, *(a1 + 32), v4, v5, v6);
  }
}

void sub_27601343C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276013454(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

void sub_2760135A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2760135D4(uint64_t a1, void *a2, _BYTE *a3)
{
  v36 = a2;
  v14 = objc_msgSend_pencilAnnotationStorage(v36, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v24 = objc_msgSend_drawing(v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  objc_msgSend_pencilAnnotationDrawingScale(v24, v25, v30, v31, v32, v33, v26, v27, v28, v29);
  v35 = v34;

  if (v35 > 0.0)
  {
    *(*(*(a1 + 32) + 8) + 24) = v35;
    *a3 = 1;
  }
}

void sub_27601414C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id sub_276014698(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 1u;
  v4 = *(v3 + 24);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277C92D70](v5);
    *(v3 + 24) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TPTheme;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_276014E84(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_276014FD0(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_27601507C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_276015138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v11);

  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void sub_27601580C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  *(*(a1 + 32) + 152) = 0;
  v11 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, a7, a8, a9, a10, a3, a4, a5, a6);
  objc_msgSend_removeObserver_(v11, v12, v16, v17, v18, v19, *(a1 + 32), v13, v14, v15);

  objc_storeWeak((*(a1 + 32) + 272), 0);
  v20 = *(a1 + 32);
  v21 = *(v20 + 200);
  *(v20 + 200) = 0;

  objc_msgSend_p_destroyBodyLayoutState(*(a1 + 32), v22, v27, v28, v29, v30, v23, v24, v25, v26);
  objc_msgSend_clearOwner(*(*(a1 + 32) + 96), v31, v36, v37, v38, v39, v32, v33, v34, v35);
  v40 = *(a1 + 32);
  v41 = *(v40 + 96);
  *(v40 + 96) = 0;

  objc_msgSend_tearDown(*(*(a1 + 32) + 104), v42, v47, v48, v49, v50, v43, v44, v45, v46);
  v51 = *(a1 + 32);
  v52 = *(v51 + 104);
  *(v51 + 104) = 0;

  v53 = *(a1 + 32);
  v54 = *(v53 + 112);
  *(v53 + 112) = 0;

  v55 = *(a1 + 32);
  v56 = *(v55 + 80);
  *(v55 + 80) = 0;

  v57 = *(a1 + 32);
  v58 = *(v57 + 88);
  *(v57 + 88) = 0;

  v59 = *(a1 + 32);
  v60 = *(v59 + 128);
  *(v59 + 128) = 0;

  v61 = *(a1 + 32);
  v62 = *(v61 + 176);
  *(v61 + 176) = 0;

  v63 = *(a1 + 32);
  v64 = *(v63 + 184);
  *(v63 + 184) = 0;

  objc_msgSend_teardown(*(*(a1 + 32) + 192), v65, v70, v71, v72, v73, v66, v67, v68, v69);
  v74 = *(a1 + 32);
  v75 = *(v74 + 192);
  *(v74 + 192) = 0;

  *(*(a1 + 32) + 121) = 1;
}

void sub_276015DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276015EE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v608 = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_documentRoot(*(a1 + 32), a2, a7, a8, a9, a10, a3, a4, a5, a6);
  v21 = objc_msgSend_bodyStorage(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v571 = objc_msgSend_length(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);

  v573 = *(MEMORY[0x277D81490] + 8);
  v574 = *MEMORY[0x277D81490];
  v599 = 0u;
  v600 = 0u;
  v601 = 0u;
  v602 = 0u;
  obj = objc_msgSend_sectionHints(*(a1 + 40), v31, 0, v36, v37, v38, v32, v33, v34, v35);
  v569 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, v41, v42, v43, v44, &v599, v607, 16, v40);
  if (v569)
  {
    v581 = 0;
    v568 = *v600;
    v54 = v573;
    v55 = v574;
    do
    {
      for (i = 0; i != v569; ++i)
      {
        if (*v600 != v568)
        {
          objc_enumerationMutation(obj);
        }

        v56 = *(*(&v599 + 1) + 8 * i);
        if (objc_msgSend_documentStartPageIndex(v56, v45, v50, v51, v52, v53, v46, v47, v48, v49) != v581)
        {
          v434 = MEMORY[0x277D81150];
          v435 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v62, v63, v64, v65, "[TPPaginatedPageController restoreFromLayoutState:]_block_invoke", v59, v60, v61);
          v444 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v436, v440, v441, v442, v443, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v437, v438, v439);
          started = objc_msgSend_documentStartPageIndex(v56, v445, v450, v451, v452, v453, v446, v447, v448, v449);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v434, v455, v456, v457, v458, v459, v435, v444, 484, 0, "inconsistent hint pageIndex: %lu instead of %lu", started, v581);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v460, v465, v466, v467, v468, v461, v462, v463, v464);
          *(*(*(a1 + 56) + 8) + 24) = 0;
          goto LABEL_65;
        }

        v597 = 0u;
        v598 = 0u;
        v595 = 0u;
        v596 = 0u;
        v572 = objc_msgSend_pageHints(v56, v57, 0, v63, v64, v65, v58, v59, v60, v61);
        v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v572, v66, v68, v69, v70, v71, &v595, v606, 16, v67);
        if (!v72)
        {
          goto LABEL_60;
        }

        v579 = *v596;
        while (2)
        {
          v582 = 0;
          v578 = v72;
          do
          {
            if (*v596 != v579)
            {
              objc_enumerationMutation(v572);
            }

            v82 = *(*(&v595 + 1) + 8 * v582);
            if (objc_msgSend_pageKind(v82, v73, v78, v79, v80, v81, v74, v75, v76, v77) == 1)
            {
              v92 = objc_msgSend_range(v82, v83, v88, v89, v90, v91, v84, v85, v86, v87);
              if (&v93[v92] > v571)
              {
                v360 = MEMORY[0x277D81150];
                v361 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, v98, v99, v100, v101, "[TPPaginatedPageController restoreFromLayoutState:]_block_invoke", v95, v96, v97);
                v370 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v362, v366, v367, v368, v369, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v363, v364, v365);
                v380 = objc_msgSend_range(v82, v371, v376, v377, v378, v379, v372, v373, v374, v375);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v360, v381, v382, v383, v384, v385, v361, v370, 492, 0, "bad hint: out of range (%lu > %lu)", &v381[v380], v571);

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v386, v391, v392, v393, v394, v387, v388, v389, v390);
                goto LABEL_59;
              }

              v580 = objc_msgSend_anchoredRange(v82, v93, v98, v99, v100, v101, v94, v95, v96, v97);
              v577 = v102;
              v111 = objc_msgSend_range(v82, v102, v107, v108, v109, v110, v103, v104, v105, v106);
              v576 = v112;
              if (v55 != 0x7FFFFFFFFFFFFFFFLL)
              {
                if (v111 != &v54[v55])
                {
                  v395 = MEMORY[0x277D81150];
                  v396 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v112, v117, v118, v119, v120, "[TPPaginatedPageController restoreFromLayoutState:]_block_invoke", v114, v115, v116);
                  v405 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v397, v401, v402, v403, v404, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v398, v399, v400);
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v395, v406, v407, v408, v409, v410, v396, v405, 502, 0, "Hints' ranges are inconsistent");
                  goto LABEL_58;
                }

                if (v580 != &v573[v574])
                {
                  v411 = MEMORY[0x277D81150];
                  v396 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v112, v117, v118, v119, v120, "[TPPaginatedPageController restoreFromLayoutState:]_block_invoke", v114, v115, v116);
                  v405 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v412, v416, v417, v418, v419, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v413, v414, v415);
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v411, v420, v421, v422, v423, v424, v396, v405, 507, 0, "Hints' anchored ranges are inconsistent");
LABEL_58:

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v425, v430, v431, v432, v433, v426, v427, v428, v429);
LABEL_59:
                  *(*(*(a1 + 56) + 8) + 24) = 0;
                  goto LABEL_60;
                }
              }

              v575 = v111;
              v593 = 0u;
              v594 = 0u;
              v591 = 0u;
              v592 = 0u;
              v121 = objc_msgSend_anchoredDrawablePositions(v82, v112, 0, v118, v119, v120, v113, v114, v115, v116);
              v128 = objc_msgSend_countByEnumeratingWithState_objects_count_(v121, v122, v124, v125, v126, v127, &v591, v605, 16, v123);
              if (v128)
              {
                v129 = *v592;
                while (2)
                {
                  for (j = 0; j != v128; ++j)
                  {
                    if (*v592 != v129)
                    {
                      objc_enumerationMutation(v121);
                    }

                    v131 = *(*(&v591 + 1) + 8 * j);
                    objc_opt_class();
                    v141 = objc_msgSend_documentRoot(*(a1 + 32), v132, v137, v138, v139, v140, v133, v134, v135, v136);
                    v151 = objc_msgSend_context(v141, v142, v147, v148, v149, v150, v143, v144, v145, v146);
                    v160 = objc_msgSend_objectWithUUIDPath_(v151, v152, v156, v157, v158, v159, v131, v153, v154, v155);
                    v161 = TSUDynamicCast();

                    v171 = objc_msgSend_owningAttachmentNoRecurse(v161, v162, v167, v168, v169, v170, v163, v164, v165, v166);
                    LODWORD(v141) = v171 == 0;

                    if (v141)
                    {
                      v186 = MEMORY[0x277D81150];
                      v187 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v172, v176, v177, v178, v179, "[TPPaginatedPageController restoreFromLayoutState:]_block_invoke", v173, v174, v175);
                      v196 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v188, v192, v193, v194, v195, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v189, v190, v191);
                      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v186, v197, v198, v199, v200, v201, v187, v196, 519, 0, "bad hint: detached drawable");

                      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v202, v207, v208, v209, v210, v203, v204, v205, v206);
                      *(*(*(a1 + 56) + 8) + 24) = 0;

                      goto LABEL_27;
                    }
                  }

                  v128 = objc_msgSend_countByEnumeratingWithState_objects_count_(v121, v180, v182, v183, v184, v185, &v591, v605, 16, v181);
                  if (v128)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_27:

              v589 = 0u;
              v590 = 0u;
              v587 = 0u;
              v588 = 0u;
              v219 = objc_msgSend_startingPartitionedAttachments(v82, v211, 0, v216, v217, v218, v212, v213, v214, v215);
              v226 = objc_msgSend_countByEnumeratingWithState_objects_count_(v219, v220, v222, v223, v224, v225, &v587, v604, 16, v221);
              if (v226)
              {
                v227 = *v588;
                while (2)
                {
                  for (k = 0; k != v226; ++k)
                  {
                    if (*v588 != v227)
                    {
                      objc_enumerationMutation(v219);
                    }

                    v229 = *(*(&v587 + 1) + 8 * k);
                    objc_opt_class();
                    v239 = objc_msgSend_documentRoot(*(a1 + 32), v230, v235, v236, v237, v238, v231, v232, v233, v234);
                    v249 = objc_msgSend_context(v239, v240, v245, v246, v247, v248, v241, v242, v243, v244);
                    v258 = objc_msgSend_objectWithUUID_(v249, v250, v254, v255, v256, v257, v229, v251, v252, v253);
                    v259 = TSUDynamicCast();

                    if (!v259)
                    {
                      v274 = MEMORY[0x277D81150];
                      v275 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v260, v264, v265, v266, v267, "[TPPaginatedPageController restoreFromLayoutState:]_block_invoke", v261, v262, v263);
                      v284 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v276, v280, v281, v282, v283, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v277, v278, v279);
                      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v274, v285, v286, v287, v288, v289, v275, v284, 528, 0, "bad hint: missing partitionable attachment");

                      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v290, v295, v296, v297, v298, v291, v292, v293, v294);
                      *(*(*(a1 + 56) + 8) + 24) = 0;
                      goto LABEL_37;
                    }
                  }

                  v226 = objc_msgSend_countByEnumeratingWithState_objects_count_(v219, v268, v270, v271, v272, v273, &v587, v604, 16, v269);
                  if (v226)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_37:

              v54 = v576;
              v573 = v577;
              v574 = v580;
              v55 = v575;
              if (*(*(*(a1 + 56) + 8) + 24) != 1)
              {
                v574 = v580;
                v55 = v575;
                goto LABEL_60;
              }
            }

            if (objc_msgSend_pageKind(v82, v83, v88, v89, v90, v91, v84, v85, v86, v87) != 5)
            {
              v299 = objc_msgSend_documentRoot(*(a1 + 32), v73, v78, v79, v80, v81, v74, v75, v76, v77);
              v309 = objc_msgSend_floatingDrawables(v299, v300, v305, v306, v307, v308, v301, v302, v303, v304);
              v318 = objc_msgSend_drawablesOnPageIndex_(v309, v310, v314, v315, v316, v317, v581, v311, v312, v313);

              v585 = 0u;
              v586 = 0u;
              v583 = 0u;
              v584 = 0u;
              v319 = v318;
              v326 = objc_msgSend_countByEnumeratingWithState_objects_count_(v319, v320, v322, v323, v324, v325, &v583, v603, 16, v321);
              if (v326)
              {
                v327 = *v584;
                while (2)
                {
                  for (m = 0; m != v326; ++m)
                  {
                    if (*v584 != v327)
                    {
                      objc_enumerationMutation(v319);
                    }

                    objc_opt_class();
                    v329 = TSUDynamicCast();
                    isLinked = objc_msgSend_isLinked(v329, v330, v335, v336, v337, v338, v331, v332, v333, v334);

                    if (isLinked)
                    {
                      v349 = objc_msgSend_flowHints(v82, v340, v345, v346, v347, v348, v341, v342, v343, v344);
                      v359 = objc_msgSend_count(v349, v350, v355, v356, v357, v358, v351, v352, v353, v354) == 0;

                      if (v359)
                      {
                        *(*(*(a1 + 56) + 8) + 24) = 0;
                      }

                      goto LABEL_50;
                    }
                  }

                  v326 = objc_msgSend_countByEnumeratingWithState_objects_count_(v319, v340, v345, v346, v347, v348, &v583, v603, 16, v344);
                  if (v326)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_50:
            }

            ++v581;
            ++v582;
          }

          while (v582 != v578);
          v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v572, v73, v78, v79, v80, v81, &v595, v606, 16, v77);
          if (v72)
          {
            continue;
          }

          break;
        }

LABEL_60:

        if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      v569 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, v50, v51, v52, v53, &v599, v607, 16, v49);
    }

    while (v569);
  }

LABEL_65:

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    objc_msgSend_setSectionHints_(*(*(a1 + 32) + 80), v469, v473, v474, v475, v476, *(a1 + 48), v470, v471, v472);
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (objc_msgSend_sectionIndex(*(a1 + 40), v477, v482, v483, v484, v485, v478, v479, v480, v481) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v495 = *(*(a1 + 32) + 80);
        v496 = objc_msgSend_sectionIndex(*(a1 + 40), v486, v491, v492, v493, v494, v487, v488, v489, v490);
        objc_msgSend_setSectionIndex_(v495, v497, v501, v502, v503, v504, v496, v498, v499, v500);
      }

      if (objc_msgSend_sectionPageIndex(*(a1 + 40), v486, v491, v492, v493, v494, v487, v488, v489, v490) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v514 = *(*(a1 + 32) + 80);
        v515 = objc_msgSend_sectionPageIndex(*(a1 + 40), v505, v510, v511, v512, v513, v506, v507, v508, v509);
        objc_msgSend_setPageIndex_(v514, v516, v520, v521, v522, v523, v515, v517, v518, v519);
      }

      if (objc_msgSend_documentPageIndex(*(a1 + 40), v505, v510, v511, v512, v513, v506, v507, v508, v509) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v533 = *(*(a1 + 32) + 80);
        v534 = objc_msgSend_documentPageIndex(*(a1 + 40), v524, v529, v530, v531, v532, v525, v526, v527, v528);
        objc_msgSend_setDocumentPageIndex_(v533, v535, v539, v540, v541, v542, v534, v536, v537, v538);
      }

      if (objc_msgSend_lastPageCount(*(a1 + 40), v524, v529, v530, v531, v532, v525, v526, v527, v528) != 0x7FFFFFFFFFFFFFFFLL)
      {
        PageCount = objc_msgSend_lastPageCount(*(a1 + 40), v543, v548, v549, v550, v551, v544, v545, v546, v547);
        v554 = *(a1 + 32);
        v553 = (a1 + 32);
        *(v554 + 136) = PageCount;
        v555 = *v553;
        v565 = objc_msgSend_pageHintCount(*(*v553 + 80), v556, v561, v562, v563, v564, v557, v558, v559, v560);
        v566 = *(v555 + 136);
        if (v566 <= v565)
        {
          v566 = v565;
        }

        *(*v553 + 136) = v566;
      }
    }
  }
}

void sub_276016C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_276016FC0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  if (objc_msgSend_isInsertionPoint(*(a1 + 32), a2, a7, a8, a9, a10, a3, a4, a5, a6))
  {
    v20 = *(a1 + 40);
    v21 = objc_msgSend_insertionCharIndex(*(a1 + 32), v11, v16, v17, v18, v19, v12, v13, v14, v15);
    v31 = objc_msgSend_caretLFAffinity(*(a1 + 32), v22, v27, v28, v29, v30, v23, v24, v25, v26);
    v37 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(v20, v32, v33, v34, v35, v36, v21, 0, v31, 1, 0);
    if (v37 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v46 = v37;
      v47 = *(a1 + 48);

      objc_msgSend_addIndex_(v47, v38, v42, v43, v44, v45, v46, v39, v40, v41);
    }
  }

  else if (objc_msgSend_isRange(*(a1 + 32), v11, v16, v17, v18, v19, v12, v13, v14, v15))
  {
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = sub_276017104;
    v58[3] = &unk_27A6A9130;
    v48 = *(a1 + 32);
    v58[4] = *(a1 + 40);
    v60 = *(a1 + 64);
    v57 = *(a1 + 48);
    v49 = v57.n128_u64[0];
    v59 = v57;
    objc_msgSend_enumerateRanges_(v48, v50, v57, v54, v55, v56, v58, v51, v52, v53);
  }
}

uint64_t sub_276017104(uint64_t a1, const char *a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  objc_msgSend_p_pageRangeForRange_forcePagination_includingEmptyPages_caretAffinity_leadingCharIndex_outEndIsValid_(*(a1 + 32), a2, a4, a5, a6, a7, a2, a3, *(a1 + 56), 0, 0, 0x7FFFFFFFFFFFFFFFLL, *(a1 + 48));
  v12 = *(a1 + 40);

  return MEMORY[0x2821F9670](v12, sel_addIndexesInRange_, v8, v9, v10, v11);
}

__n128 sub_27601745C(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_27601746C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v11 = *(a1 + 56);
  if (v11 || (v12 = *(a1 + 64), v12 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v14 = v12 == *(*(a1 + 32) + 248) + *(*(a1 + 32) + 240);
    v13 = 1;
  }

  if ((*(a1 + 88) & 1) != 0 || (v15 = *(a1 + 32), v16 = v15[30], v17 = *(a1 + 48), v16 > v17) || (v18 = v17 + v11, v15[31] + v16 < v17 + v11 || v14) || (objc_msgSend_documentRoot(v15, a2, a7, a8, a9, a10, a3, a4, a5, a6), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend_bodyStorage(v19, v20, v25, v26, v27, v28, v21, v22, v23, v24), v29 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend_length(v29, v30, v35, v36, v37, v38, v31, v32, v33, v34), v29, v19, v18 == v39))
  {
    v40 = *(a1 + 32);
    if (v13)
    {
      v41 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(v40, a2, a7, a8, a9, a10, *(a1 + 64), *(a1 + 88), *(a1 + 80), 1, 0);
      v48 = *(*(a1 + 40) + 8);
      if (v41 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v44 = *MEMORY[0x277D81490];
        *(v48 + 48) = *MEMORY[0x277D81490];
      }

      else
      {
        *(v48 + 48) = v41;
        *(v48 + 56) = 1;
      }

      v77 = *(a1 + 72);
      if (v77)
      {
        *v77 = 1;
      }

      v78 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v42, v44, v45, v46, v47, v41, 0, 0, v43);
      v88 = v78;
      if ((*(a1 + 88) & 1) == 0 && objc_msgSend_pageKind(v78, v79, v84, v85, v86, v87, v80, v81, v82, v83) == 1)
      {
        v272 = 0;
        v97 = objc_msgSend_rangeAndChildHints_(v88, v89, v93, v94, v95, v96, &v272, v90, v91, v92);
        v99 = v98;
        v100 = v272;
        v101 = (*(a1 + 32) + 240);
        *v101 = v97;
        v101[1] = v99;
        if (objc_msgSend_count(v100, v102, v107, v108, v109, v110, v103, v104, v105, v106))
        {
          *(*(a1 + 32) + 256) = 0x7FFFFFFFFFFFFFFFLL;
          *(*(a1 + 32) + 240) = *MEMORY[0x277D81490];
        }

        else
        {
          *(*(a1 + 32) + 256) = *(*(*(a1 + 40) + 8) + 48);
        }
      }
    }

    else
    {
      v49 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(v40, a2, a7, a8, a9, a10, *(a1 + 48), *(a1 + 88), 0, 1, 0);
      v59 = objc_msgSend_documentRoot(*(a1 + 32), v50, v55, v56, v57, v58, v51, v52, v53, v54);
      v69 = objc_msgSend_bodyStorage(v59, v60, v65, v66, v67, v68, v61, v62, v63, v64);
      v76 = v69;
      if (v69)
      {
        objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(v69, v72, v73, v74, v75, v70, *(a1 + 56) + *(a1 + 48), 0, v71);
      }

      else
      {
        v271 = 0;
        memset(v270, 0, sizeof(v270));
      }

      if ((TSWPParagraphEnumerator::isFirstParagraph(v270) & 1) == 0)
      {
        TSWPParagraphEnumerator::operator--();
      }

      v111 = objc_alloc(MEMORY[0x277D80E18]);
      v121 = objc_msgSend_documentRoot(*(a1 + 32), v112, v117, v118, v119, v120, v113, v114, v115, v116);
      v131 = objc_msgSend_bodyStorage(v121, v122, v127, v128, v129, v130, v123, v124, v125, v126);
      v132 = TSWPParagraphEnumerator::paragraphTextRange(v270);
      v139 = *(a1 + 56);
      v140 = v139 + *(a1 + 48);
      if (v132 <= v140)
      {
        v141 = v139 + *(a1 + 48);
      }

      else
      {
        v141 = v132;
      }

      if (v132 >= v140)
      {
        v142 = objc_msgSend_initWithStorage_subRange_(v111, v133, v135, v136, v137, v138, v131, v140, v141 - v140, v134);
      }

      else
      {
        v142 = objc_msgSend_initWithStorage_subRange_(v111, v133, v135, v136, v137, v138, v131, v132, v141 - v132, v134);
      }

      v143 = v142;

      v158 = *(a1 + 56) + *(a1 + 48);
      if (objc_msgSend_length(v143, v144, v149, v150, v151, v152, v145, v146, v147, v148))
      {
        v164 = TSWPPreviousCharIndexFromTextSource();
        if (v164 >= *(a1 + 48))
        {
          v179 = objc_msgSend_documentRoot(*(a1 + 32), v159, v165, v166, v167, v168, v160, v161, v162, v163);
          v189 = objc_msgSend_bodyStorage(v179, v180, v185, v186, v187, v188, v181, v182, v183, v184);
          v198 = objc_msgSend_characterAtIndex_(v189, v190, v194, v195, v196, v197, v164, v191, v192, v193);
          v199 = IsParagraphBreakingCharacter();
          if (v198 == 8232)
          {
            v200 = 1;
          }

          else
          {
            v200 = v199;
          }

          if (v200)
          {
            v158 = v164;
          }

          v169 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(*(a1 + 32), v201, v202, v203, v204, v205, v158, *(a1 + 88), v200 ^ 1u, *(a1 + 89), 0);
        }

        else
        {
          v169 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(*(a1 + 32), v159, v165, v166, v167, v168, *(a1 + 48), *(a1 + 88), 0, *(a1 + 89), 0);
        }
      }

      else
      {
        v169 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(*(a1 + 32), v153, v154, v155, v156, v157, v158, *(a1 + 88), 0, *(a1 + 89), 0);
      }

      if (v169 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v169 = objc_msgSend_documentPageIndex(*(*(a1 + 32) + 80), v170, v175, v176, v177, v178, v171, v172, v173, v174);
      }

      else
      {
        v206 = *(a1 + 72);
        if (v206)
        {
          *v206 = 1;
        }
      }

      v207 = v169 - v49;
      if (v169 < v49)
      {
        v208 = MEMORY[0x277D81150];
        v209 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v170, v175, v176, v177, v178, "[TPPaginatedPageController p_pageRangeForRange:forcePagination:includingEmptyPages:caretAffinity:leadingCharIndex:outEndIsValid:]_block_invoke", v172, v173, v174);
        v218 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v210, v214, v215, v216, v217, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v211, v212, v213);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v208, v219, v220, v221, v222, v223, v209, v218, 839, 0, "selection should end after it starts");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v224, v229, v230, v231, v232, v225, v226, v227, v228);
      }

      v233 = *(*(a1 + 40) + 8);
      *(v233 + 48) = v49;
      *(v233 + 56) = v207 + 1;
      if (*(*(*(a1 + 40) + 8) + 56) == 1)
      {
        v234 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v170, v175, v176, v177, v178, v49, *(a1 + 89), 0, v174);
        v244 = v234;
        if ((*(a1 + 88) & 1) == 0 && objc_msgSend_pageKind(v234, v235, v240, v241, v242, v243, v236, v237, v238, v239) == 1)
        {
          v269 = 0;
          v253 = objc_msgSend_rangeAndChildHints_(v244, v245, v249, v250, v251, v252, &v269, v246, v247, v248);
          v255 = v254;
          v256 = v269;
          v257 = (*(a1 + 32) + 240);
          *v257 = v253;
          v257[1] = v255;
          if (objc_msgSend_count(v256, v258, v263, v264, v265, v266, v259, v260, v261, v262))
          {
            *(*(a1 + 32) + 256) = 0x7FFFFFFFFFFFFFFFLL;
            *(*(a1 + 32) + 240) = *MEMORY[0x277D81490];
          }

          else
          {
            *(*(a1 + 32) + 256) = *(*(*(a1 + 40) + 8) + 48);
          }
        }
      }

      TSWPParagraphEnumerator::~TSWPParagraphEnumerator(v270);
    }
  }

  else
  {
    v267 = *(*(a1 + 40) + 8);
    *(v267 + 48) = *(*(a1 + 32) + 256);
    *(v267 + 56) = 1;
    v268 = *(a1 + 72);
    if (v268)
    {
      *v268 = 1;
    }
  }
}

void sub_2760179E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  TSWPParagraphEnumerator::~TSWPParagraphEnumerator(va);
  _Unwind_Resume(a1);
}

void sub_276017BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_BYTE *sub_276017BD8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  if (objc_msgSend_isInsertionPoint(*(a1 + 32), a2, a7, a8, a9, a10, a3, a4, a5, a6))
  {
    v20 = *(a1 + 40);
    v21 = objc_msgSend_start(*(a1 + 32), v11, v16, v17, v18, v19, v12, v13, v14, v15);
    v31 = objc_msgSend_caretLFAffinity(*(a1 + 32), v22, v27, v28, v29, v30, v23, v24, v25, v26);
    result = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(v20, v32, v33, v34, v35, v36, v21, 0, v31, 0, 0);
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      return result;
    }

    v38 = result;
    v39 = 1;
    goto LABEL_10;
  }

  result = objc_msgSend_isRange(*(a1 + 32), v11, v16, v17, v18, v19, v12, v13, v14, v15);
  if (result)
  {
    v49 = *(a1 + 40);
    v50 = objc_msgSend_start(*(a1 + 32), v40, v45, v46, v47, v48, v41, v42, v43, v44);
    v38 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(v49, v51, v52, v53, v54, v55, v50, 0, 0, 0, 0);
    v56 = *(a1 + 40);
    v66 = objc_msgSend_end(*(a1 + 32), v57, v62, v63, v64, v65, v58, v59, v60, v61);
    result = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(v56, v67, v68, v69, v70, v71, v66, 0, 1, 0, 0);
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      result = objc_msgSend_documentPageIndex(*(*(a1 + 40) + 80), v72, v77, v78, v79, v80, v73, v74, v75, v76);
    }

    if (v38 != 0x7FFFFFFFFFFFFFFFLL && result != 0x7FFFFFFFFFFFFFFFLL)
    {
      v39 = &result[-v38 + 1];
LABEL_10:
      v81 = *(*(a1 + 48) + 8);
      *(v81 + 48) = v38;
      *(v81 + 56) = v39;
    }
  }

  return result;
}

void sub_276017DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_276017DF8(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = objc_msgSend_p_bodyRangeForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), *(a1 + 56), 0, a10);
  v12 = *(*(a1 + 40) + 8);
  *(v12 + 48) = result;
  *(v12 + 56) = v13;
  return result;
}

void sub_276017F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_276017F3C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = objc_msgSend_p_anchoredRangeForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), *(a1 + 56), 0, a10);
  v12 = *(*(a1 + 40) + 8);
  *(v12 + 48) = result;
  *(v12 + 56) = v13;
  return result;
}

void sub_276018244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_27601825C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = objc_msgSend_p_footnoteLayoutRangeForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), *(a1 + 56), 0, a10);
  v12 = *(*(a1 + 40) + 8);
  *(v12 + 48) = result;
  *(v12 + 56) = v13;
  return result;
}

void sub_27601835C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(*(*(a1 + 32) + 80), a2, a3, a4, a5, a6, *(a1 + 48), a8, a9, a10) & 1) == 0)
  {
    v19 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v15, v16, v17, v18, "[TPPaginatedPageController pageBeginsWithPaginatedAttachment:]_block_invoke", v12, v13, v14);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v21, v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v29, v30, v31, v32, v33, v53, v28, 947, 0, "page must be laid out to tell if it starts with a paginated attachment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v39, v40, v41, v42, v35, v36, v37, v38);
  }

  v54 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v11, v15, v16, v17, v18, *(a1 + 48), 0, 0, v14);
  v52 = objc_msgSend_firstChildHint(v54, v43, v48, v49, v50, v51, v44, v45, v46, v47);

  if (v52)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_276018550(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(*(*(a1 + 32) + 80), a2, a3, a4, a5, a6, *(a1 + 48), a8, a9, a10) & 1) == 0)
  {
    v19 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v15, v16, v17, v18, "[TPPaginatedPageController pageEndsWithPaginatedAttachment:]_block_invoke", v12, v13, v14);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v21, v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v29, v30, v31, v32, v33, v53, v28, 962, 0, "page must be laid out to tell if it ends with a paginated attachment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v39, v40, v41, v42, v35, v36, v37, v38);
  }

  v54 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v11, v15, v16, v17, v18, *(a1 + 48), 0, 0, v14);
  v52 = objc_msgSend_lastChildHint(v54, v43, v48, v49, v50, v51, v44, v45, v46, v47);

  if (v52)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_276018744(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(*(*(a1 + 32) + 80), a2, a3, a4, a5, a6, *(a1 + 48), a8, a9, a10) & 1) == 0)
  {
    v19 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v15, v16, v17, v18, "[TPPaginatedPageController pageAtIndexHasBody:]_block_invoke", v12, v13, v14);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v21, v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v29, v30, v31, v32, v33, v52, v28, 977, 0, "page must be laid out to tell if it has a body");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v39, v40, v41, v42, v35, v36, v37, v38);
  }

  v53 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v11, v15, v16, v17, v18, *(a1 + 48), 0, 0, v14);
  if (objc_msgSend_pageKind(v53, v43, v48, v49, v50, v51, v44, v45, v46, v47) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void *sub_276018938(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  result = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), 0, 0, *(a1 + 56), 0);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void *sub_276018A48(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = objc_msgSend_p_pageIndexForAnchoredCharIndex_forcePagination_searchAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), *(a1 + 56), 0, a10);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void *sub_276018BD0(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = objc_msgSend_p_pageIndexForFootnoteIndex_forcePagination_searchAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), *(a1 + 56), 0, a10);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_276018CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276018D14(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, 0, *(a1 + 56), 0, a10);
  if (v11)
  {
    v21 = 0;
    while (1)
    {
      v47 = v11;
      if (objc_msgSend_sectionIndex(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16) >= *(a1 + 48))
      {
        break;
      }

      ++v21;

      v11 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v22, v24, v25, v26, v27, v21, *(a1 + 56), 0, v23);
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    v28 = *(*(a1 + 40) + 8);
    *(v28 + 48) = v21;
    *(v28 + 56) = 1;
  }

LABEL_7:
  v29 = *(*(*(a1 + 40) + 8) + 48);
  if (v29 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v12, v17, v18, v19, v20, v29 + 1, *(a1 + 56), 0, v16);
    if (v30)
    {
      v40 = v29 + 2;
      while (1)
      {
        v48 = v30;
        if (objc_msgSend_sectionIndex(v30, v31, v36, v37, v38, v39, v32, v33, v34, v35) > *(a1 + 48))
        {
          break;
        }

        ++*(*(*(a1 + 40) + 8) + 56);

        v30 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v41, v43, v44, v45, v46, v40, *(a1 + 56), 0, v42);
        ++v40;
        if (!v30)
        {
          goto LABEL_15;
        }
      }

      v30 = v48;
LABEL_15:
    }
  }
}

void sub_276018F44(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), *(a1 + 56), 0, a10);
  if (v11)
  {
    v21 = v11;
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_sectionIndex(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
    v11 = v21;
  }
}

void sub_2760190AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2760190C4(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = objc_msgSend_p_sectionHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), *(a1 + 56), 0, a10);
  if (v11)
  {
    v72 = v11;
    v23 = objc_msgSend_documentPageRange(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
    v28 = v21;
    v11 = v72;
    if (v21)
    {
      v29 = objc_msgSend_p_bodyRangeForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v21, v24, v25, v26, v27, v23, *(a1 + 56), 0, v22);
      v31 = v30;
      v41 = objc_msgSend_p_bodyRangeForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v30, v33, v34, v35, v36, &v28[v23 - 1], *(a1 + 56), 0, v32);
      v46 = v37;
      if (v41 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v47 = MEMORY[0x277D81150];
        v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v42, v43, v44, v45, "[TPPaginatedPageController sectionBodyRangeForPageIndex:forcePagination:]_block_invoke", v38, v39, v40);
        v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v50, v51, v52);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v58, v59, v60, v61, v62, v48, v57, 1097, 0, "Not laid out through end of section");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v68, v69, v70, v71, v64, v65, v66, v67);
      }

      v74.location = v29;
      v74.length = v31;
      v75.location = v41;
      v75.length = v46;
      *(*(*(a1 + 40) + 8) + 48) = NSUnionRange(v74, v75);
      v11 = v72;
    }
  }
}

void sub_276019328(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = objc_msgSend_p_sectionHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), *(a1 + 56), 0, a10);
  if (v11)
  {
    v21 = v11;
    *(*(*(a1 + 40) + 8) + 24) = *(a1 + 48) - objc_msgSend_documentPageRange(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
    v11 = v21;
  }
}

void sub_276019494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2760194AC(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = objc_msgSend_p_sectionHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), *(a1 + 64), 0, a10);
  if (v11)
  {
    v31 = v11;
    v21 = objc_msgSend_documentPageRange(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
    v30 = *(*(a1 + 40) + 8);
    *(v30 + 48) = v21;
    *(v30 + 56) = v22;
    v11 = v31;
    if (*(a1 + 56))
    {
      **(a1 + 56) = objc_msgSend_isPaginationCompleteUpToDocumentPageIndex_(*(*(a1 + 32) + 80), v22, v26, v27, v28, v29, *(*(*(a1 + 40) + 8) + 56) + *(*(*(a1 + 40) + 8) + 48), v23, v24, v25);
      v11 = v31;
    }
  }
}

void sub_27601968C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2760196AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2760196C4(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = objc_msgSend_p_cachedPageLayoutForPageIndex_preferredLayoutController_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), 0, a9, a10);
  v62 = v11;
  if (v11)
  {
    v21 = objc_msgSend_info(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

    if (!v21)
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v27, v28, v29, v30, "[TPPaginatedPageController pageInfoForPageIndex:]_block_invoke", v24, v25, v26);
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v34, v35, v36);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v42, v43, v44, v45, v46, v32, v41, 1147, 0, "cached page layout should have an info");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v52, v53, v54, v55, v48, v49, v50, v51);
    }

    v56 = objc_msgSend_info(v62, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    v57 = *(*(a1 + 40) + 8);
    v58 = *(v57 + 40);
    *(v57 + 40) = v56;

    v11 = v62;
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v59 = objc_msgSend_p_pageInfoForPageAtIndex_(*(a1 + 32), v12, v17, v18, v19, v20, *(a1 + 48), v14, v15, v16);
    v60 = *(*(a1 + 40) + 8);
    v61 = *(v60 + 40);
    *(v60 + 40) = v59;

    v11 = v62;
  }
}

void sub_276019934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_276019954(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v74 = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_sectionHints(*(*(a1 + 32) + 80), a2, a7, a8, a9, a10, a3, a4, a5, a6);
  v21 = objc_msgSend_count(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  if (v21)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v30 = objc_msgSend_sectionHints(*(*(a1 + 32) + 80), v22, 0, v27, v28, v29, v23, v24, v25, v26, 0);
    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, v33, v34, v35, v36, &v69, v73, 16, v32);
    if (v42)
    {
      v47 = *v70;
      do
      {
        v48 = 0;
        do
        {
          if (*v70 != v47)
          {
            objc_enumerationMutation(v30);
          }

          v49 = *(*(*(a1 + 40) + 8) + 40);
          v50 = MEMORY[0x277CCABB0];
          v51 = objc_msgSend_pageCount(*(*(&v69 + 1) + 8 * v48), v37, v43, v44, v45, v46, v38, v39, v40, v41);
          v60 = objc_msgSend_numberWithUnsignedInteger_(v50, v52, v56, v57, v58, v59, v51, v53, v54, v55);
          objc_msgSend_addObject_(v49, v61, v65, v66, v67, v68, v60, v62, v63, v64);

          ++v48;
        }

        while (v42 != v48);
        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v37, v43, v44, v45, v46, &v69, v73, 16, v41);
      }

      while (v42);
    }
  }
}

void sub_276019C14(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v213 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 56), 0, 0, *(a1 + 64), 0);
  v17 = objc_msgSend_orderedSelections(*(a1 + 40), v8, v13, v14, v15, v16, v9, v10, v11, v12);
  v26 = objc_msgSend_indexOfObjectPassingTest_(v17, v18, v22, v23, v24, v25, &unk_2885012D8, v19, v20, v21);

  objc_opt_class();
  v35 = objc_msgSend_selectionAtIndex_(*(a1 + 40), v27, v31, v32, v33, v34, v26, v28, v29, v30);
  v204 = TSUCheckedDynamicCast();

  objc_opt_class();
  v45 = objc_msgSend_documentRoot(*(a1 + 32), v36, v41, v42, v43, v44, v37, v38, v39, v40);
  v55 = objc_msgSend_bodyStorage(v45, v46, v51, v52, v53, v54, v47, v48, v49, v50);
  v64 = objc_msgSend_attachmentAtCharIndex_(v55, v56, v60, v61, v62, v63, *(a1 + 56), v57, v58, v59);
  v205 = TSUCheckedDynamicCast();

  v74 = objc_msgSend_infos(v204, v65, v70, v71, v72, v73, v66, v67, v68, v69);
  v84 = objc_msgSend_drawable(v205, v75, v80, v81, v82, v83, v76, v77, v78, v79);
  LOBYTE(v55) = objc_msgSend_containsObject_(v74, v85, v89, v90, v91, v92, v84, v86, v87, v88);

  if ((v55 & 1) == 0)
  {
    v101 = MEMORY[0x277D81150];
    v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, v97, v98, v99, v100, "[TPPaginatedPageController pageIndicesForPartitionableAttachmentAtBodyCharIndex:selectionPath:forcePagination:]_block_invoke", v94, v95, v96);
    v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, v107, v108, v109, v110, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v104, v105, v106);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v101, v112, v113, v114, v115, v116, v102, v111, 1189, 0, "Selection path %@ doesn't contain attachment at %lu", *(a1 + 40), *(a1 + 56));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v117, v122, v123, v124, v125, v118, v119, v120, v121);
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v126 = 0;
  }

  else
  {
    v126 = v7;
  }

  while (1)
  {
    v127 = v126;
    v128 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v93, v97, v98, v99, v100, v126, *(a1 + 64), *(a1 + 64) ^ 1u, v96);
    v137 = v128;
    if (!v128)
    {
      break;
    }

    v211 = 0;
    v138 = objc_msgSend_rangeAndChildHints_(v128, v129, v133, v134, v135, v136, &v211, v130, v131, v132);
    v140 = v139;
    v146 = v211;
    v151 = *(a1 + 56);
    if (v151 < v138)
    {
      goto LABEL_28;
    }

    if (v151 <= v138 + v140 && (objc_msgSend_pageKind(v137, v141, v147, v148, v149, v150, v142, v143, v144, v145) == 1 || v146))
    {
      v209 = 0u;
      v210 = 0u;
      v207 = 0u;
      v208 = 0u;
      obj = v146;
      v158 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v152, v154, v155, v156, v157, &v207, v212, 16, v153);
      if (v158)
      {
        v159 = *v208;
        while (2)
        {
          for (i = 0; i != v158; ++i)
          {
            if (*v208 != v159)
            {
              objc_enumerationMutation(obj);
            }

            v161 = TSUProtocolCast();
            if (objc_msgSend_overlapsWithSelectionPath_(v161, v162, v166, v167, v168, v169, *(a1 + 40), v163, v164, v165, &unk_288546710))
            {
              objc_msgSend_addIndex_(*(a1 + 48), v170, v174, v175, v176, v177, v127, v171, v172, v173);

              goto LABEL_21;
            }
          }

          v158 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v178, v180, v181, v182, v183, &v207, v212, 16, v179);
          if (v158)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:

      v193 = *(a1 + 56);
      if (v193 < v138 + v140)
      {
        v194 = v193 >= v138;
        v195 = v193 - v138;
        if (v194 && v195 < v140 && !objc_msgSend_count(*(a1 + 48), v184, v189, v190, v191, v192, v185, v186, v187, v188))
        {
          objc_msgSend_addIndex_(*(a1 + 48), v196, v200, v201, v202, v203, v127, v197, v198, v199);
        }

LABEL_28:

        break;
      }
    }

    v126 = v127 + 1;
  }
}

uint64_t sub_27601A0A4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t sub_27601A1F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v323 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  v12 = objc_msgSend_withPageLayoutRecursionCount(v11, a2, a7, a8, a9, a10, a3, a4, a5, a6);
  objc_msgSend_setWithPageLayoutRecursionCount_(v11, v13, v17, v18, v19, v20, v12 + 1, v14, v15, v16);
  v21 = *(a1 + 56);
  v31 = objc_msgSend_documentRoot(*(a1 + 32), v22, v27, v28, v29, v30, v23, v24, v25, v26);
  isAlternativePageIndex_documentRoot = objc_msgSend_isAlternativePageIndex_documentRoot_(TPPageInfo, v32, v35, v36, v37, v38, v21, v31, v33, v34);

  v49 = *(a1 + 56);
  if (v49 >= 0x7FFFFFFFFFFFFFFFLL && (v50 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v45, v46, v47, v48, "[TPPaginatedPageController withPageLayoutAtIndex:preferredLayoutController:executeBlock:]_block_invoke", v42, v43, v44), v51 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v56, v57, v58, v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v53, v54, v55), v60 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v61, v62, v63, v64, v65, v51, v60, 1247, 0, "Illegal page index: %lu", *(a1 + 56)), v60, v51, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v71, v72, v73, v74, v67, v68, v69, v70), v49 = *(a1 + 56), v49 > 0x7FFFFFFFFFFFFFFELL))
  {
    if ((isAlternativePageIndex_documentRoot & 1) == 0)
    {
      v75 = *(a1 + 32);
      v76 = v75[20];
      goto LABEL_19;
    }
  }

  else
  {
    v75 = *(a1 + 32);
    v76 = v75[20];
    if (!((v76 == v49) | isAlternativePageIndex_documentRoot & 1))
    {
LABEL_19:
      if (v76 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v157 = MEMORY[0x277D81150];
        v158 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v45, v46, v47, v48, "[TPPaginatedPageController withPageLayoutAtIndex:preferredLayoutController:executeBlock:]_block_invoke", v42, v43, v44);
        v167 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v159, v163, v164, v165, v166, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v160, v161, v162);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v157, v168, v169, v170, v171, v172, v158, v167, 1280, 0, "Laying out page index %lu while inside didLayOutPageIndex: %lu", *(a1 + 56), *(*(a1 + 32) + 160));

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v173, v178, v179, v180, v181, v174, v175, v176, v177);
        v75 = *(a1 + 32);
      }

      objc_msgSend_setAllowParagraphMetrics_(v75, v40, v45, v46, v47, v48, 0, v42, v43, v44);
      v191 = 0;
      v192 = 1;
      v193 = MEMORY[0x277D81408];
      while (1)
      {
        v194 = v192;
        v195 = objc_msgSend_documentPageIndex(*(*(a1 + 32) + 80), v182, v187, v188, v189, v190, v183, v184, v185, v186);
        v196 = *(a1 + 56);
        if (v195 > v196)
        {
          break;
        }

        if (v191)
        {
          if (*v193 != -1)
          {
            sub_276038440();
          }

          v196 = *(a1 + 56);
        }

        objc_msgSend_p_paginateThroughPageIndex_forLayoutController_clearOffscreenInfos_(*(a1 + 32), v182, v187, v188, v189, v190, v196, *(a1 + 40), 0, v186);
        v192 = 0;
        v191 = 1;
        if ((v194 & 1) == 0)
        {
          v196 = *(a1 + 56);
          break;
        }
      }

      objc_msgSend_p_withPageLayoutAtIndex_preferredLayoutController_executeBlock_(*(a1 + 32), v182, v187, v188, v189, v190, v196, *(a1 + 40), *(a1 + 48), v186);
      objc_msgSend_setAllowParagraphMetrics_(*(a1 + 32), v197, v201, v202, v203, v204, 1, v198, v199, v200);
      if (objc_msgSend_withPageLayoutRecursionCount(*(a1 + 32), v205, v210, v211, v212, v213, v206, v207, v208, v209) < 1)
      {
        v214 = objc_msgSend_canvas(*(*(a1 + 32) + 104), v148, v153, v154, v155, v156, v149, v150, v151, v152);
        objc_msgSend_setInfosToDisplay_(v214, v215, v219, v220, v221, v222, 0, v216, v217, v218);
      }

      goto LABEL_36;
    }
  }

  v320 = 0u;
  v321 = 0u;
  v318 = 0u;
  v319 = 0u;
  v77 = objc_msgSend_rootLayout(*(a1 + 40), v40, 0, v46, v47, v48, v41, v42, v43, v44);
  v87 = objc_msgSend_children(v77, v78, v83, v84, v85, v86, v79, v80, v81, v82);

  v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v87, v88, v90, v91, v92, v93, &v318, v322, 16, v89);
  if (v94)
  {
    v95 = *v319;
    while (2)
    {
      for (i = 0; i != v94; ++i)
      {
        if (*v319 != v95)
        {
          objc_enumerationMutation(v87);
        }

        objc_opt_class();
        v97 = TSUCheckedDynamicCast();
        v107 = v97;
        if (v97 && objc_msgSend_pageIndex(v97, v98, v103, v104, v105, v106, v99, v100, v101, v102) == *(a1 + 56))
        {
          (*(*(a1 + 48) + 16))();

          goto LABEL_36;
        }
      }

      v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v87, v108, v110, v111, v112, v113, &v318, v322, 16, v109);
      if (v94)
      {
        continue;
      }

      break;
    }
  }

  v114 = *(a1 + 56);
  v124 = objc_msgSend_documentRoot(*(a1 + 32), v115, v120, v121, v122, v123, v116, v117, v118, v119);
  if (objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v125, v128, v129, v130, v131, v114, v124, v126, v127))
  {
  }

  else
  {
    isDocSetupPageIndex = objc_msgSend_isDocSetupPageIndex_(TPPageInfo, v132, v136, v137, v138, v139, *(a1 + 56), v133, v134, v135);

    if ((isDocSetupPageIndex & 1) == 0)
    {
      v282 = MEMORY[0x277D81150];
      v283 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, v144, v145, v146, v147, "[TPPaginatedPageController withPageLayoutAtIndex:preferredLayoutController:executeBlock:]_block_invoke", v141, v142, v143);
      v292 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v284, v288, v289, v290, v291, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v285, v286, v287);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v282, v293, v294, v295, v296, v297, v283, v292, 1276, 0, "Failed to find page that was just laid out");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v298, v303, v304, v305, v306, v299, v300, v301, v302);
      goto LABEL_36;
    }
  }

  v224 = *(a1 + 32);
  if (v224[20] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v225 = MEMORY[0x277D81150];
    v226 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, v144, v145, v146, v147, "[TPPaginatedPageController withPageLayoutAtIndex:preferredLayoutController:executeBlock:]_block_invoke", v141, v142, v143);
    v235 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v227, v231, v232, v233, v234, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v228, v229, v230);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v225, v236, v237, v238, v239, v240, v226, v235, 1263, 0, "Laying out page index %lu while inside didLayOutPageIndex: %lu", *(a1 + 56), *(*(a1 + 32) + 160));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v241, v246, v247, v248, v249, v242, v243, v244, v245);
    v224 = *(a1 + 32);
  }

  objc_msgSend_setAllowParagraphMetrics_(v224, v140, v144, v145, v146, v147, 0, v141, v142, v143);
  objc_msgSend_p_withPageLayoutAtIndex_preferredLayoutController_executeBlock_(*(a1 + 32), v250, v252, v253, v254, v255, *(a1 + 56), *(a1 + 40), *(a1 + 48), v251);
  objc_msgSend_setAllowParagraphMetrics_(*(a1 + 32), v256, v260, v261, v262, v263, 1, v257, v258, v259);
  v273 = objc_msgSend_canvas(*(*(a1 + 32) + 104), v264, v269, v270, v271, v272, v265, v266, v267, v268);
  objc_msgSend_setInfosToDisplay_(v273, v274, v278, v279, v280, v281, 0, v275, v276, v277);

LABEL_36:
  v307 = *(a1 + 32);
  v308 = objc_msgSend_withPageLayoutRecursionCount(v307, v148, v153, v154, v155, v156, v149, v150, v151, v152);
  return objc_msgSend_setWithPageLayoutRecursionCount_(v307, v309, v313, v314, v315, v316, v308 - 1, v310, v311, v312);
}

void sub_27601A844()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_27601A9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27601AA24(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = objc_msgSend_p_pageIndicesForFlow_withSelection_forcePagination_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 40), *(a1 + 48), 0, a10);
  *(*(*(a1 + 56) + 8) + 24) = objc_msgSend_count(v20, v11, v16, v17, v18, v19, v12, v13, v14, v15) != 0;
}

void sub_27601AB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_27601AB74(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  result = objc_msgSend_p_isPaginationComplete(*(a1 + 32), a2, a7, a8, a9, a10, a3, a4, a5, a6);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_27601AC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27601B464(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v59 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isPaginating(*(a1 + 32), a2, a7, a8, a9, a10, a3, a4, a5, a6))
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v11 = *(a1 + 40);
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, v14, v15, v16, v17, &v54, v58, 16, v13);
    if (v18)
    {
      v19 = *v55;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v55 != v19)
          {
            objc_enumerationMutation(v11);
          }

          objc_opt_class();
          v21 = TSUDynamicCast();
          canAnchor = objc_msgSend_canAnchor(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);

          if ((canAnchor & 1) == 0)
          {
            *(*(*(a1 + 48) + 8) + 24) = 0;
            goto LABEL_13;
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v32, v34, v35, v36, v37, &v54, v58, 16, v33);
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v38 = *(a1 + 56);
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = sub_27601B67C;
      v50[3] = &unk_27A6A9330;
      v39 = *(a1 + 32);
      v40 = *(a1 + 40);
      v41 = *(a1 + 48);
      v42 = *(a1 + 32);
      v51 = v40;
      v52 = v42;
      v53 = v41;
      objc_msgSend_withPageLayoutAtIndex_executeBlock_(v39, v43, v46, v47, v48, v49, v38, v50, v44, v45);
    }
  }
}

void sub_27601B67C(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = *(a1 + 32);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, v7, v8, v9, v10, &v21, v25, 16, v6);
  if (v14)
  {
    v19 = *v22;
LABEL_3:
    v20 = 0;
    while (1)
    {
      if (*v22 != v19)
      {
        objc_enumerationMutation(v4);
      }

      *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_p_canAnchorDrawable_toPageLayout_(*(a1 + 40), v11, v15, v16, v17, v18, *(*(&v21 + 1) + 8 * v20), v3, v12, v13, v21);
      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        break;
      }

      if (v14 == ++v20)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v11, v15, v16, v17, v18, &v21, v25, 16, v13);
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

uint64_t sub_27601B928(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(*(a1 + 32) + 176);
  if (!v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277D81258]);
    v13 = *(a1 + 32);
    v14 = *(v13 + 176);
    *(v13 + 176) = v12;

    v11 = *(*(a1 + 32) + 176);
  }

  v15 = *(a1 + 40);

  return objc_msgSend_addObject_(v11, a2, a3, a4, a5, a6, v15, a8, a9, a10);
}

void sub_27601BD48(uint64_t a1)
{
  v399 = *MEMORY[0x277D85DE8];
  v389 = *(*(a1 + 32) + 96);
  v11 = objc_msgSend_dirtyRanges(v389, v2, v7, v8, v9, v10, v3, v4, v5, v6);
  v390 = objc_msgSend_copy(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  *(*(a1 + 32) + 153) = 1;
  PageIndexNeedingLayout = objc_msgSend_firstPageIndexNeedingLayout(*(a1 + 32), v21, v26, v27, v28, v29, v22, v23, v24, v25);
  v40 = objc_msgSend_documentRoot(*(a1 + 32), v31, v36, v37, v38, v39, v32, v33, v34, v35);
  v50 = objc_msgSend_settings(v40, v41, v46, v47, v48, v49, v42, v43, v44, v45);
  v388 = PageIndexNeedingLayout;
  hasBody = objc_msgSend_hasBody(v50, v51, v56, v57, v58, v59, v52, v53, v54, v55);

  v70 = 0;
  v71 = 0;
  while (v70 < objc_msgSend_count(v390, v61, v66, v67, v68, v69, v62, v63, v64, v65))
  {
    v395 = 0;
    v396 = 0;
    v397 = 0;
    if (v390)
    {
      objc_msgSend_dirtyRangeAtIndex_(v390, v77, v78, v79, v80, v72, v70, v74, v75);
      v82 = v395;
      if (((v395 != 0) & hasBody) == 1)
      {
        v83 = objc_msgSend_documentRoot(*(a1 + 32), v72, v77, v78, v79, v80, v81, v74, v75, v76);
        v93 = objc_msgSend_bodyStorage(v83, v84, v89, v90, v91, v92, v85, v86, v87, v88);
        v94 = v395 - 1;
        v103 = objc_msgSend_attachmentAtCharIndex_(v93, v95, v99, v100, v101, v102, v395 - 1, v96, v97, v98);

        if (v103 && (objc_msgSend_isPartitioned(v103, v104, v109, v110, v111, v112, v105, v106, v107, v108) & 1) != 0)
        {
          v94 = v395;
        }
      }

      else
      {
        v94 = v395;
      }
    }

    else
    {
      v82 = 0;
      v94 = 0;
    }

    v113 = objc_msgSend_p_pageHintIndexForCharIndex_(*(a1 + 32), v72, v77, v78, v79, v80, v94 - v71, v74, v75, v76);
    v122 = objc_msgSend_p_pageHintIndexForAnchoredCharIndex_(*(a1 + 32), v114, v118, v119, v120, v121, v82 - v71, v115, v116, v117);
    if (v122 >= v113)
    {
      v124 = v113;
    }

    else
    {
      v124 = v122;
    }

    if (v124 != 0x7FFFFFFFFFFFFFFFLL || (ValidCharIndex = objc_msgSend_p_lastValidCharIndex(*(a1 + 32), v61, v66, v67, v68, v69, v123, v63, v64, v65), ValidCharIndex != 0x7FFFFFFFFFFFFFFFLL) && (objc_msgSend_documentRoot(*(a1 + 32), v61, v66, v67, v68, v69, v62, v63, v64, v65), v126 = objc_claimAutoreleasedReturnValue(), objc_msgSend_bodyStorage(v126, v127, v132, v133, v134, v135, v128, v129, v130, v131), v136 = objc_claimAutoreleasedReturnValue(), v146 = objc_msgSend_length(v136, v137, v142, v143, v144, v145, v138, v139, v140, v141), v136, v126, v395 == ValidCharIndex) && v396 == v146 - ValidCharIndex && (v147 = *(a1 + 32), v148 = objc_msgSend_documentPageIndex(v147[10], v61, v66, v67, v68, v69, v62, v63, v64, v65), v124 = objc_msgSend_p_textPageIndexPrecedingPageIndex_(v147, v149, v153, v154, v155, v156, v148, v150, v151, v152), v124 != 0x7FFFFFFFFFFFFFFFLL))
    {
      if (hasBody)
      {
        v157 = 0;
      }

      else
      {
        v157 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v61, v66, v67, v68, v69, v124, 0, 1, v65);
      }

      objc_msgSend_p_setNeedsLayoutOnPageIndex_(*(a1 + 32), v61, v66, v67, v68, v69, v124, v63, v64, v65);
      if (v157)
      {
        v158 = objc_msgSend_sectionHints(*(*(a1 + 32) + 80), v61, v66, v67, v68, v69, v62, v63, v64, v65);
        v168 = objc_msgSend_count(v158, v159, v164, v165, v166, v167, v160, v161, v162, v163);

        v178 = objc_msgSend_pageIndex(v157, v169, v174, v175, v176, v177, v170, v171, v172, v173);
        v193 = objc_msgSend_sectionIndex(v157, v179, v184, v185, v186, v187, v180, v181, v182, v183);
        if (v193 < v168)
        {
          v198 = v178 + 1;
          v199 = v124 + 1;
          do
          {
            v200 = objc_msgSend_sectionHints(*(*(a1 + 32) + 80), v188, v194, v195, v196, v197, v189, v190, v191, v192);
            v209 = objc_msgSend_objectAtIndexedSubscript_(v200, v201, v205, v206, v207, v208, v193, v202, v203, v204);

            v219 = objc_msgSend_pageHints(v209, v210, v215, v216, v217, v218, v211, v212, v213, v214);
            v229 = objc_msgSend_count(v219, v220, v225, v226, v227, v228, v221, v222, v223, v224);

            v238 = v229 > v198;
            v239 = v229 - v198;
            if (v238)
            {
              do
              {
                objc_msgSend_p_setNeedsLayoutOnPageIndex_(*(a1 + 32), v230, v234, v235, v236, v237, v199++, v231, v232, v233);
                --v239;
              }

              while (v239);
            }

            v198 = 0;
            ++v193;
          }

          while (v193 != v168);
        }

        break;
      }
    }

    v71 += v397;
    ++v70;
  }

  objc_msgSend_p_destroyBodyLayoutState(*(a1 + 32), v72, v77, v78, v79, v80, v73, v74, v75, v76);
  objc_msgSend_setBodyCharIndex_(*(*(a1 + 32) + 80), v240, v244, v245, v246, v247, 0x7FFFFFFFFFFFFFFFLL, v241, v242, v243);
  objc_msgSend_setFootnoteIndex_(*(*(a1 + 32) + 80), v248, v252, v253, v254, v255, 0x7FFFFFFFFFFFFFFFLL, v249, v250, v251);
  if (objc_msgSend_p_isPaginationComplete(*(a1 + 32), v256, v261, v262, v263, v264, v257, v258, v259, v260))
  {
    v273 = MEMORY[0x277D81150];
    v274 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v265, v269, v270, v271, v272, "[TPPaginatedPageController p_processBodyLayoutInvalidation]_block_invoke", v266, v267, v268);
    v283 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v275, v279, v280, v281, v282, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v276, v277, v278);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v273, v284, v285, v286, v287, v288, v274, v283, 2094, 0, "layout should not be complete after the layout manager claims to need layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v289, v294, v295, v296, v297, v290, v291, v292, v293);
  }

  v393 = 0u;
  v394 = 0u;
  v391 = 0u;
  v392 = 0u;
  v298 = *(*(a1 + 32) + 176);
  v305 = objc_msgSend_countByEnumeratingWithState_objects_count_(v298, v299, v301, v302, v303, v304, &v391, v398, 16, v300);
  if (v305)
  {
    v306 = *v392;
    isBodyTextPaginationCoherentForPageController_atPageIndex = 1;
    do
    {
      v308 = 0;
      v309 = isBodyTextPaginationCoherentForPageController_atPageIndex;
      do
      {
        if (*v392 != v306)
        {
          objc_enumerationMutation(v298);
        }

        v315 = TSUProtocolCast();
        isBodyTextPaginationCoherentForPageController_atPageIndex = (v315 == 0) & v309;
        if (v315 && ((v309 ^ 1) & 1) == 0)
        {
          v320 = *(a1 + 32);
          v321 = objc_msgSend_documentPageIndex(*(v320 + 80), v310, v316, v317, v318, v319, v311, v312, v313, v314, &unk_288546998);
          isBodyTextPaginationCoherentForPageController_atPageIndex = objc_msgSend_isBodyTextPaginationCoherentForPageController_atPageIndex_(v315, v322, v325, v326, v327, v328, v320, v321, v323, v324);
        }

        ++v308;
        v309 = isBodyTextPaginationCoherentForPageController_atPageIndex;
      }

      while (v305 != v308);
      v305 = objc_msgSend_countByEnumeratingWithState_objects_count_(v298, v329, v331, v332, v333, v334, &v391, v398, 16, v330);
    }

    while (v305);
  }

  else
  {
    isBodyTextPaginationCoherentForPageController_atPageIndex = 1;
  }

  if (v388)
  {
    v344 = objc_msgSend_backgroundPaginationController(*(a1 + 32), v335, v340, v341, v342, v343, v336, v337, v338, v339);
    isBackgroundPaginationSuspended = objc_msgSend_isBackgroundPaginationSuspended(v344, v345, v350, v351, v352, v353, v346, v347, v348, v349);

    if (((isBackgroundPaginationSuspended | isBodyTextPaginationCoherentForPageController_atPageIndex) & 1) == 0)
    {
      v363 = MEMORY[0x277D81150];
      v364 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v355, v359, v360, v361, v362, "[TPPaginatedPageController p_processBodyLayoutInvalidation]_block_invoke", v356, v357, v358);
      v373 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v365, v369, v370, v371, v372, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v366, v367, v368);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v363, v374, v375, v376, v377, v378, v364, v373, 2109, 0, "canvas view should need layout after the layout manager claims to need layout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v379, v384, v385, v386, v387, v380, v381, v382, v383);
    }
  }
}

void sub_27601CB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v23 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_27601CB8C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 56) - 1, 0, 1, a10);
  if (v11)
  {
    v86 = v11;
    v24 = objc_msgSend_p_pageHintForPageIndexPath_(*(a1 + 32), v11, v15, v16, v17, v18, v11, v12, v13, v14);
    if (!v24)
    {
      v60 = MEMORY[0x277D81150];
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v25, v26, v27, v28, "[TPPaginatedPageController pageOriginForPageIndex:allowAfterPaginationPoint:]_block_invoke", v21, v22, v23);
      v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v66, v67, v68, v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v63, v64, v65);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v71, v72, v73, v74, v75, v61, v70, 2185, 0, "invalid nil value for '%{public}s'", "previousPageHint");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v81, v82, v83, v84, v77, v78, v79, v80);
LABEL_13:

      v11 = v86;
      goto LABEL_14;
    }

    isPageLayoutRightToLeft = objc_msgSend_isPageLayoutRightToLeft(*(a1 + 32), v19, v25, v26, v27, v28, v20, v21, v22, v23);
    v39 = objc_msgSend_documentRoot(*(a1 + 32), v30, v35, v36, v37, v38, v31, v32, v33, v34);
    v49 = objc_msgSend_writingDirection(v39, v40, v45, v46, v47, v48, v41, v42, v43, v44);

    if (v49 == 1)
    {
      v59 = objc_msgSend_pageColumn(v24, v50, v55, v56, v57, v58, v51, v52, v53, v54) != 1;
    }

    else
    {
      if (!isPageLayoutRightToLeft)
      {
LABEL_9:
        if (*(*(*(a1 + 40) + 8) + 24) == isPageLayoutRightToLeft)
        {
          v85 = objc_msgSend_pageRow(v24, v50, v55, v56, v57, v58, v51, v52, v53, v54) + 1;
        }

        else
        {
          v85 = objc_msgSend_pageRow(v24, v50, v55, v56, v57, v58, v51, v52, v53, v54);
        }

        *(*(*(a1 + 48) + 8) + 24) = v85;
        goto LABEL_13;
      }

      v59 = objc_msgSend_pageColumn(v24, v50, v55, v56, v57, v58, v51, v52, v53, v54) == 0;
    }

    *(*(*(a1 + 40) + 8) + 24) = v59;
    goto LABEL_9;
  }

LABEL_14:
}

void sub_27601CF18(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = objc_msgSend_i_pageHintForPageIndex_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), a8, a9, a10);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_pageKind(v20, v11, v16, v17, v18, v19, v12, v13, v14, v15);
}

void sub_27601D2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27601D310(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v11 = *(a1 + 32);
  v12 = objc_msgSend_pageCount(v11, a2, a7, a8, a9, a10, a3, a4, a5, a6);
  v24 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(v11, v13, v15, v16, v17, v18, v12 - 1, 0, 1, v14);
  v29 = *(a1 + 32);
  if (v24)
  {
    objc_msgSend_p_pageHintForPageIndexPath_(v29, v19, v25, v26, v27, v28, v24, v21, v22, v23);
  }

  else
  {
    objc_msgSend_p_lastValidPageHint(v29, v19, v25, v26, v27, v28, v20, v21, v22, v23);
  }
  v68 = ;
  if (v68)
  {
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_pageRow(v68, v30, v35, v36, v37, v38, v31, v32, v33, v34) + 1;
    v39 = *(a1 + 32);
    v40 = *(*(*(a1 + 40) + 8) + 24);
    if (v40 != *(v39 + 224))
    {
      *(v39 + 224) = v40;
    }
  }

  else
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v35, v36, v37, v38, "[TPPaginatedPageController pageHeightCountForPageViewState:]_block_invoke", v32, v33, v34);
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v44, v45, v46);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v52, v53, v54, v55, v56, v42, v51, 2327, 0, "invalid nil value for '%{public}s'", "lastUsablePageHint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v62, v63, v64, v65, v58, v59, v60, v61);
  }

  v66 = *(*(a1 + 40) + 8);
  if (!*(v66 + 24))
  {
    LODWORD(v67) = *(*(a1 + 32) + 224);
    if (v67 <= 1)
    {
      v67 = 1;
    }

    else
    {
      v67 = v67;
    }

    *(v66 + 24) = v67;
  }
}

void sub_27601D694(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v44 = *MEMORY[0x277D85DE8];
  objc_msgSend_verticalPageSeparation(*(a1 + 32), a2, a7, a8, a9, a10, a3, a4, a5, a6);
  *(*(a1 + 32) + 216) = v11;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v20 = objc_msgSend_pageLayouts(*(*(a1 + 32) + 72), v12, 0, v17, v18, v19, v13, v14, v15, v16, 0);
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, v23, v24, v25, v26, &v39, v43, 16, v22);
  if (v32)
  {
    v37 = *v40;
    do
    {
      v38 = 0;
      do
      {
        if (*v40 != v37)
        {
          objc_enumerationMutation(v20);
        }

        objc_msgSend_invalidatePosition(*(*(&v39 + 1) + 8 * v38++), v27, v33, v34, v35, v36, v28, v29, v30, v31);
      }

      while (v32 != v38);
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v27, v33, v34, v35, v36, &v39, v43, 16, v31);
    }

    while (v32);
  }
}

void sub_27601DB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27601DBF4(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), a2, a3, a4, a5, a6, *(a1 + 48), 0, 1, a10);
  if (v11)
  {
    v55 = v11;
    v19 = objc_msgSend_p_pageHintForPageIndexPath_(*(a1 + 32), v11, v15, v16, v17, v18, v11, v12, v13, v14);
    v29 = v19;
    if (v19)
    {
      *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_pageColumn(v19, v20, v25, v26, v27, v28, v21, v22, v23, v24);
    }

    else
    {
      v30 = MEMORY[0x277D81150];
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v25, v26, v27, v28, "[TPPaginatedPageController adjacentPageIndexForPageIndex:]_block_invoke", v22, v23, v24);
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v33, v34, v35);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v41, v42, v43, v44, v45, v31, v40, 2425, 0, "invalid nil value for '%{public}s'", "pageHint");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v51, v52, v53, v54, v47, v48, v49, v50);
    }

    v11 = v55;
  }
}

void sub_27601DF98(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_27601E198(uint64_t a1, void *a2, _BYTE *a3)
{
  v105 = *MEMORY[0x277D85DE8];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v98 = a2;
  v12 = objc_msgSend_children(v98, v4, 0, v9, v10, v11, v5, v6, v7, v8);
  obj = v12;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v15, v16, v17, v18, &v100, v104, 16, v14);
  if (v19)
  {
    v20 = *v101;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v101 != v20)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v22 = TSUDynamicCast();
        objc_opt_class();
        v32 = objc_msgSend_info(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
        v33 = TSUDynamicCast();

        if (v33)
        {
          v43 = *(a1 + 32);
          v44 = objc_msgSend_objectUUID(v33, v34, v39, v40, v41, v42, v35, v36, v37, v38);
          LODWORD(v43) = objc_msgSend_containsObject_(v43, v45, v49, v50, v51, v52, v44, v46, v47, v48);

          if (v43)
          {
            v68 = *(a1 + 40);
            v69 = objc_msgSend_info(v98, v53, v58, v59, v60, v61, v54, v55, v56, v57);
            v79 = objc_msgSend_pageIndex(v69, v70, v75, v76, v77, v78, v71, v72, v73, v74);
            objc_msgSend_addIndex_(v68, v80, v84, v85, v86, v87, v79, v81, v82, v83);

            if (objc_msgSend_count(*(a1 + 32), v88, v93, v94, v95, v96, v89, v90, v91, v92) == 1)
            {
              *a3 = 1;
            }

            v12 = obj;
            goto LABEL_14;
          }
        }
      }

      v12 = obj;
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v62, v64, v65, v66, v67, &v100, v104, 16, v63);
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

void sub_27601ED74(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v10 = *(a1 + 32);
  v38 = objc_msgSend_userInfo(*(a1 + 40), a2, a7, a8, a9, a10, a3, a4, a5, a6);
  v19 = objc_msgSend_objectForKeyedSubscript_(v38, v11, v15, v16, v17, v18, @"resetMetricsCache", v12, v13, v14);
  v29 = objc_msgSend_BOOLValue(v19, v20, v25, v26, v27, v28, v21, v22, v23, v24);
  objc_msgSend_p_forceRestartPaginationAndResetMetricsCache_(v10, v30, v34, v35, v36, v37, v29, v31, v32, v33);
}

void sub_276020EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v20 = v17;

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v19 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_276020F54(void *a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, double a7, __n128 a8, __n128 a9, __n128 a10)
{
  v41 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = objc_msgSend_pageHints(a2, a2, 0, a8, a9, a10, a3, a4, a5, a6, 0);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v15, v16, v17, v18, &v36, v40, 16, v14);
  if (v24)
  {
    v29 = *v37;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v37 != v29)
        {
          objc_enumerationMutation(v12);
        }

        v31 = *(*(&v36 + 1) + 8 * i);
        if (objc_msgSend_pageKind(v31, v19, v25, v26, v27, v28, v20, v21, v22, v23) == 1)
        {
          v32 = objc_msgSend_range(v31, v19, v25, v26, v27, v28, v20, v21, v22, v23);
          v33 = a1[6];
          if (v33 < v32)
          {
            goto LABEL_16;
          }

          v34 = v33 - v32;
          if (!v34 || v34 < v19)
          {
            *(*(a1[4] + 8) + 24) = 1;
LABEL_16:
            *a4 = 1;
            goto LABEL_17;
          }
        }

        ++*(*(a1[5] + 8) + 24);
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v19, v25, v26, v27, v28, &v36, v40, 16, v23);
      if (v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
}

void sub_276021218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_276021260(void *a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, double a7, __n128 a8, __n128 a9, __n128 a10)
{
  v41 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = objc_msgSend_pageHints(a2, a2, 0, a8, a9, a10, a3, a4, a5, a6, 0);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v15, v16, v17, v18, &v36, v40, 16, v14);
  if (v24)
  {
    v29 = *v37;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v37 != v29)
        {
          objc_enumerationMutation(v12);
        }

        v31 = *(*(&v36 + 1) + 8 * i);
        if (objc_msgSend_pageKind(v31, v19, v25, v26, v27, v28, v20, v21, v22, v23) == 1)
        {
          v32 = objc_msgSend_anchoredRange(v31, v19, v25, v26, v27, v28, v20, v21, v22, v23);
          v33 = a1[6];
          if (v33 < v32)
          {
            goto LABEL_16;
          }

          v34 = v33 - v32;
          if (!v34 || v34 < v19)
          {
            *(*(a1[4] + 8) + 24) = 1;
LABEL_16:
            *a4 = 1;
            goto LABEL_17;
          }
        }

        ++*(*(a1[5] + 8) + 24);
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v19, v25, v26, v27, v28, &v36, v40, 16, v23);
      if (v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
}

void sub_27602182C(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *(a1 + 32);
  v19 = objc_msgSend_pageInfoForPageIndex_(*(a1 + 40), a2, a3, a4, a5, a6, a2, a8, a9, a10);
  objc_msgSend_addObject_(v10, v11, v15, v16, v17, v18, v19, v12, v13, v14);
}

void sub_276021F78(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = objc_msgSend_pageInfoForPageIndex_(*(a1 + 32), a2, a3, a4, a5, a6, a2, a8, a9, a10);
  objc_msgSend_addObject_(*(a1 + 40), v11, v15, v16, v17, v18, v19, v12, v13, v14);
}

void sub_276022CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 120), 8);

  _Unwind_Resume(a1);
}

void sub_276022DC8(uint64_t a1, void *a2)
{
  v107 = a2;
  v12 = objc_msgSend_pageIndex(v107, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  if (v12 != objc_msgSend_documentPageIndex(*(*(a1 + 32) + 80), v13, v18, v19, v20, v21, v14, v15, v16, v17))
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v26, v27, v28, v29, "[TPPaginatedPageController p_layOutNextPageForLayoutController:dirtyRange:]_block_invoke", v23, v24, v25);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v33, v34, v35);
    v50 = objc_msgSend_pageIndex(v107, v41, v46, v47, v48, v49, v42, v43, v44, v45);
    v60 = objc_msgSend_documentPageIndex(*(*(a1 + 32) + 80), v51, v56, v57, v58, v59, v52, v53, v54, v55);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v61, v62, v63, v64, v65, v31, v40, 4312, 0, "Page to be laid out doesn't match pagination state: %lu vs %lu", v50, v60);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v71, v72, v73, v74, v67, v68, v69, v70);
  }

  objc_msgSend_p_layOutIntoPageLayout_outDidSync_(*(a1 + 32), v22, v26, v27, v28, v29, v107, *(*(a1 + 40) + 8) + 24, v24, v25);
  v75 = MEMORY[0x277D80DC0];
  v85 = objc_msgSend_bodyLayout(v107, v76, v81, v82, v83, v84, v77, v78, v79, v80);
  v95 = objc_msgSend_columns(v85, v86, v91, v92, v93, v94, v87, v88, v89, v90);
  v104 = objc_msgSend_rangeOfColumns_(v75, v96, v100, v101, v102, v103, v95, v97, v98, v99);
  v105 = *(*(a1 + 48) + 8);
  *(v105 + 48) = v104;
  *(v105 + 56) = v106;
}

void sub_276023F90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  if ((objc_msgSend_hasHiddenTextAtCharIndex_(*(a1 + 32), v6, v10, v11, v12, v13, a4, v7, v8, v9) & 1) == 0)
  {
    v23 = *(a1 + 40);
    v24 = objc_msgSend_containedStorage(v33, v14, v19, v20, v21, v22, v15, v16, v17, v18);
    objc_msgSend_addFootnoteReferenceStorage_(v23, v25, v29, v30, v31, v32, v24, v26, v27, v28);
  }
}

BOOL sub_27602402C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v11 = MEMORY[0x277D80DC0];
  v12 = objc_msgSend_columns(*(a1 + 32), a2, a7, a8, a9, a10, a3, a4, a5, a6);
  v21 = objc_msgSend_rangeOfColumns_(v11, v13, v17, v18, v19, v20, v12, v14, v15, v16);
  v23 = v22;

  v33 = objc_msgSend_columns(*(a1 + 32), v24, v29, v30, v31, v32, v25, v26, v27, v28);
  v43 = objc_msgSend_lastObject(v33, v34, v39, v40, v41, v42, v35, v36, v37, v38);
  if ((objc_msgSend_layoutResultFlags(v43, v44, v49, v50, v51, v52, v45, v46, v47, v48) & 0x800) != 0)
  {
    v82 = 1;
  }

  else
  {
    v62 = objc_msgSend_documentRoot(*(a1 + 40), v53, v58, v59, v60, v61, v54, v55, v56, v57);
    v72 = objc_msgSend_bodyStorage(v62, v63, v68, v69, v70, v71, v64, v65, v66, v67);
    v82 = v21 + v23 == objc_msgSend_length(v72, v73, v78, v79, v80, v81, v74, v75, v76, v77);
  }

  return v82;
}

void sub_276026C10(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v126 = *MEMORY[0x277D85DE8];
  isPaginationComplete = objc_msgSend_p_isPaginationComplete(*(a1 + 32), a2, a7, a8, a9, a10, a3, a4, a5, a6);
  v21 = objc_msgSend_documentPageIndex(*(*(a1 + 32) + 80), v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v22 = v21;
  v106 = isPaginationComplete;
  if (isPaginationComplete)
  {
    v23 = *(a1 + 32);
  }

  else
  {
    v22 = v21 + 1;
    v23 = *(a1 + 32);
    if ((v21 + 1) <= *(v23 + 136))
    {
      goto LABEL_29;
    }
  }

  *(v23 + 136) = v22;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v24 = *(*(a1 + 32) + 176);
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, v27, v28, v29, v30, &v119, v125, 16, v26);
  if (v31)
  {
    v32 = *v120;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v120 != v32)
        {
          objc_enumerationMutation(v24);
        }

        v34 = TSUProtocolCast();
        objc_msgSend_canvasSizeWillChangeForPageController_(v34, v35, v39, v40, v41, v42, *(a1 + 32), v36, v37, v38, &unk_288546998);
        v43 = TSUProtocolCast();
        objc_msgSend_pageCountDidChangeForPageController_(v43, v44, v48, v49, v50, v51, *(a1 + 32), v45, v46, v47, &unk_2885469F8);
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v52, v54, v55, v56, v57, &v119, v125, 16, v53);
    }

    while (v31);
  }

  if (v106)
  {
    v58 = *(a1 + 32);
    v59 = *(v58 + 144);
    if (v22 != v59)
    {
      v60 = v22 > v59;
      *(v58 + 144) = v22;
      objc_initWeak(&location, *(a1 + 32));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_276027058;
      block[3] = &unk_27A6A9510;
      objc_copyWeak(&v116, &location);
      v117 = v60;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v69 = objc_msgSend_pageLayouts(*(*(a1 + 32) + 72), v61, 0, v66, v67, v68, v62, v63, v64, v65);
      v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v70, v72, v73, v74, v75, &v111, v124, 16, v71);
      if (v81)
      {
        v86 = *v112;
        do
        {
          for (j = 0; j != v81; ++j)
          {
            if (*v112 != v86)
            {
              objc_enumerationMutation(v69);
            }

            objc_msgSend_invalidateLayoutsForPageCountChange(*(*(&v111 + 1) + 8 * j), v76, v82, v83, v84, v85, v77, v78, v79, v80);
          }

          v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v76, v82, v83, v84, v85, &v111, v124, 16, v80);
        }

        while (v81);
      }

      objc_destroyWeak(&v116);
      objc_destroyWeak(&location);
    }

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v88 = *(*(a1 + 32) + 176);
    v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, v91, v92, v93, v94, &v107, v123, 16, v90);
    if (v99)
    {
      v104 = *v108;
      do
      {
        for (k = 0; k != v99; ++k)
        {
          if (*v108 != v104)
          {
            objc_enumerationMutation(v88);
          }

          objc_msgSend_paginationCompletedForPageController_(*(*(&v107 + 1) + 8 * k), v95, v100, v101, v102, v103, *(a1 + 32), v96, v97, v98);
        }

        v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v95, v100, v101, v102, v103, &v107, v123, 16, v98);
      }

      while (v99);
    }
  }

LABEL_29:
  *(*(a1 + 32) + 152) = 0;
}

void sub_276026FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_276027058(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (WeakRetained && (WeakRetained[121] & 1) == 0)
  {
    v13 = objc_msgSend_documentRoot(WeakRetained, v3, v8, v9, v10, v11, v4, v5, v6, v7);
    v23 = objc_msgSend_accessController(v13, v14, v19, v20, v21, v22, v15, v16, v17, v18);
    v32[0] = MEMORY[0x277D85DD0];
    v24.n128_u64[0] = 3221225472;
    v32[1] = 3221225472;
    v32[2] = sub_276027150;
    v32[3] = &unk_27A6A94E8;
    v32[4] = v13;
    v33 = *(a1 + 40);
    objc_msgSend_performWrite_(v23, v25, v24, v29, v30, v31, v32, v26, v27, v28);
  }
}

void sub_276027150(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v19 = objc_msgSend_bodyStorage(*(a1 + 32), a2, a7, a8, a9, a10, a3, a4, a5, a6);
  objc_msgSend_invalidatePageCountAttachmentCharIndexes_(v19, v11, v15, v16, v17, v18, *(a1 + 40), v12, v13, v14);
}

void sub_2760277E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275FFD2D0(va);

  _Unwind_Resume(a1);
}

void sub_2760278D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275FFD2D0(va);

  _Unwind_Resume(a1);
}

void sub_2760279CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_275FFD2D0(va);

  _Unwind_Resume(a1);
}

void sub_276027F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276027F9C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  if (objc_msgSend_p_isPaginationComplete(*(a1 + 32), a2, a7, a8, a9, a10, a3, a4, a5, a6))
  {
    result = 1;
  }

  else
  {
    result = objc_msgSend_p_layOutNextPageOnceWithOffscreenLayoutController(*(a1 + 32), v11, v16, v17, v18, v19, v12, v13, v14, v15);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_27602809C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[121] & 1) == 0 && WeakRetained[152] == 1)
  {
    objc_msgSend_p_updatePageCount(WeakRetained, v1, v6, v7, v8, v9, v2, v3, v4, v5);
  }
}

void sub_2760281D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2760281E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v47 = objc_msgSend_canvas(*(*(a1 + 32) + 104), a2, a7, a8, a9, a10, a3, a4, a5, a6);
  v20 = objc_msgSend_layoutController(v47, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v21 = *(a1 + 32);
  v22 = objc_opt_new();
  objc_msgSend_p_layOutNextPageForLayoutController_dirtyRange_(v21, v23, v26, v27, v28, v29, v20, v22, v24, v25);

  objc_msgSend_setInfosToDisplay_(v47, v30, v34, v35, v36, v37, 0, v31, v32, v33);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_p_didLayOut(*(a1 + 32), v38, v43, v44, v45, v46, v39, v40, v41, v42);
}

void sub_2760293DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v545 = *MEMORY[0x277D85DE8];
  objc_msgSend_willInflate(*(a1 + 32), a2, a7, a8, a9, a10, a3, a4, a5, a6);
  if ((objc_msgSend_isPaginating(*(a1 + 40), v11, v16, v17, v18, v19, v12, v13, v14, v15) & 1) == 0)
  {
    v29 = objc_msgSend_pageIndex(*(a1 + 32), v20, v25, v26, v27, v28, v21, v22, v23, v24);
    v530 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 40), v30, v32, v33, v34, v35, v29, 0, 0, v31);
    v44 = v530;
    if (!v530)
    {
LABEL_46:

      return;
    }

    v50 = objc_msgSend_p_pageHintForPageIndexPath_(*(a1 + 40), v36, v40, v41, v42, v43, v530, v37, v38, v39);
    if (!v50)
    {
      v55 = MEMORY[0x277D81150];
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v51, v52, v53, v54, "[TPPaginatedPageController i_inflateColumnsInBodyLayout:]_block_invoke", v47, v48, v49);
      v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v61, v62, v63, v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v58, v59, v60);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v66, v67, v68, v69, v70, v56, v65, 5747, 0, "invalid nil value for '%{public}s'", "pageHint");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v76, v77, v78, v79, v72, v73, v74, v75);
    }

    if (objc_msgSend_pageKind(v50, v45, v51, v52, v53, v54, v46, v47, v48, v49) != 1)
    {
      v89 = MEMORY[0x277D81150];
      v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, v85, v86, v87, v88, "[TPPaginatedPageController i_inflateColumnsInBodyLayout:]_block_invoke", v82, v83, v84);
      v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, v95, v96, v97, v98, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v92, v93, v94);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v89, v100, v101, v102, v103, v104, v90, v99, 5748, 0, "Can't inflate columns on a non-text page");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v105, v110, v111, v112, v113, v106, v107, v108, v109);
    }

    v529 = objc_msgSend_firstChildHint(v50, v80, v85, v86, v87, v88, v81, v82, v83, v84);
    if (v29 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_isFirstHint(v529, v114, v119, v120, v121, v122, v115, v116, v117, v118) & 1) == 0)
    {
      v255 = objc_msgSend_sectionHints(*(*(a1 + 40) + 80), v114, v119, v120, v121, v122, v115, v116, v117, v118);
      sub_275FFD28C(&v537, v255, v29 - 1);

      while (1)
      {
        v265 = sub_275FFD320(&v537, v256, v257, v258, v259, v260, v261, v262, v263, v264);
        v266 = v265 == 0;

        if (v266)
        {
          break;
        }

        if (sub_275FFD3B8(&v537, v267, v268, v269, v270, v271, v272, v273, v274, v275) == 1)
        {
          v123 = sub_275FFD62C(&v537, v276, v277, v278, v279, v280, v281, v282, v283, v284);
          if (v123)
          {
            sub_275FFD2D0(&v537);
            goto LABEL_11;
          }

          v294 = sub_275FFD5C0(&v537, v285, v286, v287, v288, v289, v290, v291, v292, v293);
          if (v294)
          {
            v470 = MEMORY[0x277D81150];
            v471 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v276, v281, v282, v283, v284, "[TPPaginatedPageController i_inflateColumnsInBodyLayout:]_block_invoke", v278, v279, v280);
            v480 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v472, v476, v477, v478, v479, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v473, v474, v475);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v470, v481, v482, v483, v484, v485, v471, v480, 5765, 0, "inconsistent previous child hint");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v486, v491, v492, v493, v494, v487, v488, v489, v490);
            break;
          }
        }

        sub_275FFCD14(&v537, v276, v277, v278, v279, v280, v281, v282, v283, v284);
      }

      sub_275FFD2D0(&v537);
      v495 = MEMORY[0x277D81150];
      v504 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v496, v500, v501, v502, v503, "[TPPaginatedPageController i_inflateColumnsInBodyLayout:]_block_invoke", v497, v498, v499);
      v513 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v505, v509, v510, v511, v512, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v506, v507, v508);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v495, v514, v515, v516, v517, v518, v504, v513, 5773, 0, "Failed to find previous child hint for %lu", v29);

      v123 = 0;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v519, v524, v525, v526, v527, v520, v521, v522, v523);
    }

    else
    {
      v123 = 0;
    }

LABEL_11:
    if (!v50)
    {
      v230 = MEMORY[0x277D81150];
      v231 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, v119, v120, v121, v122, "[TPPaginatedPageController i_inflateColumnsInBodyLayout:]_block_invoke", v116, v117, v118);
      v240 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v232, v236, v237, v238, v239, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v233, v234, v235);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v230, v241, v242, v243, v244, v245, v231, v240, 5776, 0, "Nil page hint for %{public}@\n%@", v530, *(a1 + 40));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v246, v251, v252, v253, v254, v247, v248, v249, v250);
LABEL_45:

      v44 = v530;
      goto LABEL_46;
    }

    v537 = 0;
    v538 = &v537;
    v539 = 0x4012000000;
    v540 = sub_27601745C;
    v541 = nullsub_2;
    v542 = &unk_2760658C2;
    v543 = *MEMORY[0x277D81490];
    v124 = objc_msgSend_documentRoot(*(a1 + 40), v114, v543, v120, v121, v122, v115, v116, v117, v118);
    if (objc_msgSend_laysOutBodyVertically(v124, v125, v130, v131, v132, v133, v126, v127, v128, v129))
    {
      v143 = objc_msgSend_documentRoot(*(a1 + 40), v134, v139, v140, v141, v142, v135, v136, v137, v138);
      v153 = objc_msgSend_settings(v143, v144, v149, v150, v151, v152, v145, v146, v147, v148);
      hasFacingPages = objc_msgSend_hasFacingPages(v153, v154, v159, v160, v161, v162, v155, v156, v157, v158);

      if ((((v29 & 1) == 0) & hasFacingPages) != 1)
      {
LABEL_28:
        v295 = *(a1 + 32);
        v296 = *(*(a1 + 40) + 96);
        v297 = objc_msgSend_hints(v50, v164, v169, v170, v171, v172, v165, v166, v167, v168);
        v307 = objc_msgSend_anchoredDrawablePositions(v50, v298, v303, v304, v305, v306, v299, v300, v301, v302);
        objc_msgSend_inflateTarget_fromHints_childHint_anchoredDrawablePositions_footnoteLayoutRange_(v296, v308, v309, v310, v311, v312, v295, v297, v123, v307, v538[6], v538[7]);

        v322 = objc_msgSend_columns(*(a1 + 32), v313, v318, v319, v320, v321, v314, v315, v316, v317);
        v332 = objc_msgSend_count(v322, v323, v328, v329, v330, v331, v324, v325, v326, v327) == 0;

        if (v332)
        {
          v342 = MEMORY[0x277D81150];
          v343 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v333, v338, v339, v340, v341, "[TPPaginatedPageController i_inflateColumnsInBodyLayout:]_block_invoke", v335, v336, v337);
          v352 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v344, v348, v349, v350, v351, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v345, v346, v347);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v342, v353, v354, v355, v356, v357, v343, v352, 5803, 0, "should have created columns unless we're in the process of doing layout");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v358, v363, v364, v365, v366, v359, v360, v361, v362);
        }

        v367 = objc_msgSend_lastChildHint(v50, v333, v338, v339, v340, v341, v334, v335, v336, v337);

        v533 = 0u;
        v534 = 0u;
        v531 = 0u;
        v532 = 0u;
        v376 = objc_msgSend_columns(*(a1 + 32), v368, 0, v373, v374, v375, v369, v370, v371, v372);
        v386 = objc_msgSend_reverseObjectEnumerator(v376, v377, v382, v383, v384, v385, v378, v379, v380, v381);

        v398 = objc_msgSend_countByEnumeratingWithState_objects_count_(v386, v387, v389, v390, v391, v392, &v531, v544, 16, v388);
        if (v398)
        {
          v403 = *v532;
          while (2)
          {
            for (i = 0; i != v398; i = i + 1)
            {
              if (*v532 != v403)
              {
                objc_enumerationMutation(v386);
              }

              v405 = *(*(&v531 + 1) + 8 * i);
              if (objc_msgSend_lineCount(v405, v393, v399, v400, v401, v402, v394, v395, v396, v397))
              {
                hasPartitionedAttachmentContinuationAt = objc_msgSend_hasPartitionedAttachmentContinuationAt_(v405, v393, v399, v400, v401, v402, 1, v395, v396, v397);
                if (hasPartitionedAttachmentContinuationAt)
                {
                  v416 = objc_msgSend_lineCount(v405, v407, v412, v413, v414, v415, v408, v409, v410, v411);
                  v398 = objc_msgSend_partitionedLayoutOfLineFragmentAtIndex_(v405, v417, v421, v422, v423, v424, v416 - 1, v418, v419, v420);
                }

                else
                {
                  v398 = 0;
                }

                goto LABEL_42;
              }
            }

            v398 = objc_msgSend_countByEnumeratingWithState_objects_count_(v386, v393, v399, v400, v401, v402, &v531, v544, 16, v397);
            if (v398)
            {
              continue;
            }

            break;
          }
        }

        hasPartitionedAttachmentContinuationAt = 0;
LABEL_42:

        if (hasPartitionedAttachmentContinuationAt != (v367 != 0))
        {
          v433 = MEMORY[0x277D81150];
          v434 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v425, v429, v430, v431, v432, "[TPPaginatedPageController i_inflateColumnsInBodyLayout:]_block_invoke", v426, v427, v428);
          v443 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v435, v439, v440, v441, v442, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v436, v437, v438);
          v453 = objc_msgSend_lastChildHint(v50, v444, v449, v450, v451, v452, v445, v446, v447, v448);
          v454 = objc_opt_class();
          v455 = objc_opt_class();
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v433, v456, v457, v458, v459, v460, v434, v443, 5817, 0, "page hint doesn't match layout for partition at end (%lu). %{public}@ vs %{public}@", v29, v454, v455);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v461, v466, v467, v468, v469, v462, v463, v464, v465);
        }

        _Block_object_dispose(&v537, 8);
        goto LABEL_45;
      }

      v124 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 40), v164, v169, v170, v171, v172, v29 - 1, 0, 1, v168);
      if (v124)
      {
        v181 = objc_msgSend_p_pageHintForPageIndexPath_(*(a1 + 40), v173, v177, v178, v179, v180, v124, v174, v175, v176);
        v191 = v181;
        if (v181 && (objc_msgSend_terminatedByBreak(v181, v182, v187, v188, v189, v190, v183, v184, v185, v186) & 1) == 0)
        {
          v536 = 0;
          v200 = objc_msgSend_rangeAndChildHints_(v191, v192, v196, v197, v198, v199, &v536, v193, v194, v195);
          v528 = v201;
          v202 = v200;
          v203 = v536;
          v213 = objc_msgSend_documentRoot(*(a1 + 40), v204, v209, v210, v211, v212, v205, v206, v207, v208);
          v223 = objc_msgSend_bodyStorage(v213, v214, v219, v220, v221, v222, v215, v216, v217, v218);

          v535[0] = MEMORY[0x277D85DD0];
          v224.n128_u64[0] = 3221225472;
          v535[1] = 3221225472;
          v535[2] = sub_276029E54;
          v535[3] = &unk_27A6A9560;
          v535[4] = &v537;
          objc_msgSend_enumerateFootnoteAttachmentsInTextRange_usingBlock_(v223, v225, v224, v227, v228, v229, v202, v528, v535, v226);
        }
      }

      else
      {
        v191 = 0;
      }
    }

    goto LABEL_28;
  }
}

void sub_276029C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSUInteger sub_276029E54(uint64_t a1, uint64_t a2, NSRange a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5.location = *(v4 + 48);
  v5.length = 1;
  v6 = *(MEMORY[0x277D81490] + 8);
  if (v5.location != *MEMORY[0x277D81490] || *(v4 + 56) != v6)
  {
    if (*MEMORY[0x277D81490] == a3.location && v6 == 1)
    {
      a3.location = *(v4 + 48);
      v5.length = *(v4 + 56);
    }

    else
    {
      v5.length = *(v4 + 56);
      a3.length = 1;
      v5 = NSUnionRange(v5, a3);
      a3.location = v5.location;
      v4 = *(*(a1 + 32) + 8);
    }
  }

  *(v4 + 48) = a3.location;
  *(v4 + 56) = v5.length;
  return v5.location;
}

void sub_276029F7C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  if ((objc_msgSend_isPaginating(*(a1 + 32), a2, a7, a8, a9, a10, a3, a4, a5, a6) & 1) == 0)
  {
    v20 = *(a1 + 32);
    v21 = objc_msgSend_pageIndex(*(a1 + 40), v11, v16, v17, v18, v19, v12, v13, v14, v15);
    v28 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(v20, v22, v24, v25, v26, v27, v21, 0, 0, v23);
    if (v28)
    {
      v88 = v28;
      v36 = objc_msgSend_p_pageHintForPageIndexPath_(*(a1 + 32), v28, v32, v33, v34, v35, v28, v29, v30, v31);
      if (objc_msgSend_pageKind(v36, v37, v42, v43, v44, v45, v38, v39, v40, v41) != 1 && objc_msgSend_pageKind(v36, v46, v51, v52, v53, v54, v47, v48, v49, v50) != 6 && objc_msgSend_pageKind(v36, v46, v51, v52, v53, v54, v47, v48, v49, v50) != 4 && objc_msgSend_pageKind(v36, v46, v51, v52, v53, v54, v47, v48, v49, v50) != 3)
      {
        v55 = MEMORY[0x277D81150];
        v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v51, v52, v53, v54, "[TPPaginatedPageController i_inflateFootnotesInFootnoteContainer:]_block_invoke", v48, v49, v50);
        v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v61, v62, v63, v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v58, v59, v60);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v66, v67, v68, v69, v70, v56, v65, 5831, 0, "Can't inflate footnotes on this kind of page");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v76, v77, v78, v79, v72, v73, v74, v75);
      }

      v80 = *(*(a1 + 32) + 112);
      v81 = objc_msgSend_footnoteLayoutRange(v36, v46, v51, v52, v53, v54, v47, v48, v49, v50);
      objc_msgSend_inflateFootnotesInRange_intoFootnoteContainer_(v80, v82, v84, v85, v86, v87, v81, v82, *(a1 + 40), v83);

      v28 = v88;
    }
  }
}

void sub_27602A1E8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  if ((objc_msgSend_isPaginating(*(a1 + 32), a2, a7, a8, a9, a10, a3, a4, a5, a6) & 1) == 0)
  {
    v20 = objc_msgSend_pageIndex(*(a1 + 40), v11, v16, v17, v18, v19, v12, v13, v14, v15);
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = MEMORY[0x277D81150];
      v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v25, v26, v27, v28, "[TPPaginatedPageController i_inflateTextFlowsOnPage:]_block_invoke", v22, v23, v24);
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v31, v32, v33);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v39, v40, v41, v42, v43, v106, v38, 5843, 0, "Invalid page index for %@", *(a1 + 40));

      v53 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v53, v44, v49, v50, v51, v52, v45, v46, v47, v48);
    }

    else
    {
      v107 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(*(a1 + 32), v21, v25, v26, v27, v28, v20, 0, 0, v24);
      v62 = objc_msgSend_p_pageHintForPageIndexPath_(*(a1 + 32), v54, v58, v59, v60, v61, v107, v55, v56, v57);
      if (objc_msgSend_pageKind(v62, v63, v68, v69, v70, v71, v64, v65, v66, v67) == 5 || !objc_msgSend_pageKind(v62, v72, v77, v78, v79, v80, v73, v74, v75, v76))
      {
        v81 = MEMORY[0x277D81150];
        v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, v77, v78, v79, v80, "[TPPaginatedPageController i_inflateTextFlowsOnPage:]_block_invoke", v74, v75, v76);
        v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, v87, v88, v89, v90, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v84, v85, v86);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v92, v93, v94, v95, v96, v82, v91, 5847, 0, "Can't inflate footnotes on this kind of page");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v97, v102, v103, v104, v105, v98, v99, v100, v101);
      }

      objc_msgSend_layOutFlowsIfNeededOnPage_(*(*(a1 + 32) + 192), v72, v77, v78, v79, v80, *(a1 + 40), v74, v75, v76);
    }
  }
}

void sub_27602A500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

id *sub_27602A520(id *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  if (*result[6])
  {
    v10 = result;
    v11 = objc_msgSend_sectionHints(*(result[4] + 10), a2, a7, a8, a9, a10, a3, a4, a5, a6);
    sub_275FFD28C(v99, v11, *v10[6] - 1);

    while (1)
    {
      v21 = sub_275FFD320(v99, v12, v13, v14, v15, v16, v17, v18, v19, v20);

      if (!v21)
      {
        break;
      }

      if (sub_275FFD3B8(v99, v22, v23, v24, v25, v26, v27, v28, v29, v30) == 1)
      {
        v40 = sub_275FFD320(v99, v31, v32, v33, v34, v35, v36, v37, v38, v39);
        v50 = objc_msgSend_hints(v40, v41, v46, v47, v48, v49, v42, v43, v44, v45);

        if (objc_msgSend_count(v50, v51, v56, v57, v58, v59, v52, v53, v54, v55))
        {
          v68 = objc_msgSend_objectAtIndexedSubscript_(v50, v60, v64, v65, v66, v67, 0, v61, v62, v63);
          if (objc_msgSend_lineFragmentCount(v68, v69, v74, v75, v76, v77, v70, v71, v72, v73))
          {
            v96 = sub_275FFD320(v99, v78, v79, v80, v81, v82, v83, v84, v85, v86);
            v97 = *(v10[5] + 1);
            v98 = *(v97 + 40);
            *(v97 + 40) = v96;

            *v10[6] = sub_275FFD698(v99);
            return sub_275FFD2D0(v99);
          }
        }
      }

      else if (sub_275FFD3B8(v99, v31, v32, v33, v34, v35, v36, v37, v38, v39) == 5)
      {
        return sub_275FFD2D0(v99);
      }

      sub_275FFCD14(v99, v87, v88, v89, v90, v91, v92, v93, v94, v95);
    }

    return sub_275FFD2D0(v99);
  }

  return result;
}

void sub_27602A66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_275FFD2D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27602A81C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  result = objc_msgSend_isPaginating(*(a1 + 32), a2, a7, a8, a9, a10, a3, a4, a5, a6);
  if ((result & 1) == 0)
  {
    v16 = *(*(a1 + 32) + 192);

    return MEMORY[0x2821F9670](v16, sel_invalidateFlows_startingPage_, v12, v13, v14, v15);
  }

  return result;
}

void *sub_27602AC48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  if (objc_msgSend_isPaginating(*(a1 + 32), a2, a7, a8, a9, a10, a3, a4, a5, a6))
  {
    v20 = *(a1 + 40);
    result = objc_msgSend_documentPageIndex(*(*(a1 + 32) + 80), v11, v16, v17, v18, v19, v12, v13, v14, v15);
    if (v20 != result)
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v26, v27, v28, v29, "[TPPaginatedPageController i_setNeedsDynamicLayoutForLayoutController:onPageIndex:]_block_invoke", v23, v24, v25);
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v43, v44, v45);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v51, v52, v53, v54, v55, v41, v50, 5930, 0, "pages shouldn't need dynamic layout while another page is being laid out");

      v65 = MEMORY[0x277D81150];

      return objc_msgSend_logBacktraceThrottled(v65, v56, v61, v62, v63, v64, v57, v58, v59, v60);
    }
  }

  else
  {
    objc_msgSend_p_invalidatePageIndex_(*(a1 + 32), v11, v16, v17, v18, v19, *(a1 + 40), v13, v14, v15);
    v39 = *(a1 + 32);

    return objc_msgSend_p_interruptBackgroundPagination(v39, v30, v35, v36, v37, v38, v31, v32, v33, v34);
  }

  return result;
}

void sub_27602AFDC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  objc_msgSend_restartPaginationFromFirstPage(*(*(a1 + 32) + 80), a2, a7, a8, a9, a10, a3, a4, a5, a6);
  objc_msgSend_p_performPaginationResetAndMetricsReset_(*(a1 + 32), v11, v15, v16, v17, v18, *(a1 + 40), v12, v13, v14);
  objc_msgSend_p_destroyBodyLayoutState(*(a1 + 32), v19, v24, v25, v26, v27, v20, v21, v22, v23);
  v28.n128_f64[0] = CFAbsoluteTimeGetCurrent();
  v29 = v28.n128_f64[0];
  objc_msgSend_paginateThroughPageIndex_(*(a1 + 32), v30, v28, v34, v35, v36, -1, v31, v32, v33);
  v37.n128_f64[0] = CFAbsoluteTimeGetCurrent();
  v38 = v37.n128_f64[0] - v29;
  v47 = objc_msgSend_documentPageIndex(*(*(a1 + 32) + 80), v39, v37, v44, v45, v46, v40, v41, v42, v43);
  v48 = *MEMORY[0x277D85DF8];
  v49.n128_f64[0] = v47 / v38;
  v67 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v50, v49, v54, v55, v56, @"Layout of %lu pages took %g seconds (%g pages / sec)", v51, v52, v53, v47, *&v38, v49.n128_u64[0]);
  v66 = objc_msgSend_UTF8String(v67, v57, v62, v63, v64, v65, v58, v59, v60, v61);
  fprintf(v48, "%s\n", v66);
}

id variable initialization expression of TPPaginationState._pageIndexPath()
{
  v0 = objc_allocWithZone(TPPageIndexPath);

  return [v0 initWithSectionIndex:0 pageIndex:0];
}

uint64_t sub_27602B1E0()
{
  result = sub_2760384B4();
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t variable initialization expression of TPPageLayoutCache.accessQueue()
{
  v0 = sub_2760385C4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2760385B4();
  MEMORY[0x28223BE20]();
  sub_2760384E4();
  MEMORY[0x28223BE20]();
  sub_27602B424();
  sub_2760384D4();
  v5[1] = MEMORY[0x277D84F90];
  sub_27602B470();
  sub_27602B4C8(&qword_280A40108, &unk_27605FD70);
  sub_27602B510();
  sub_276038614();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  return sub_2760385E4();
}

unint64_t sub_27602B424()
{
  result = qword_280A400F8;
  if (!qword_280A400F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A400F8);
  }

  return result;
}

unint64_t sub_27602B470()
{
  result = qword_280A40100;
  if (!qword_280A40100)
  {
    sub_2760385B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A40100);
  }

  return result;
}

uint64_t sub_27602B4C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_27602B510()
{
  result = qword_280A40110;
  if (!qword_280A40110)
  {
    sub_27602B574(&qword_280A40108, &unk_27605FD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A40110);
  }

  return result;
}

uint64_t sub_27602B574(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_27602B5C4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_2760384F4();
  swift_endAccess();
  result = swift_endAccess();
  static OS_os_log.logPaginationCat = v0;
  return result;
}

uint64_t *OS_os_log.logPaginationCat.unsafeMutableAddressor()
{
  if (qword_280A400F0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.logPaginationCat;
}

id static OS_os_log.logPaginationCat.getter()
{
  if (qword_280A400F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.logPaginationCat;

  return v0;
}

void static OS_os_log.logPaginationCat.setter(uint64_t a1)
{
  if (qword_280A400F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static OS_os_log.logPaginationCat;
  static OS_os_log.logPaginationCat = a1;
}

uint64_t (*static OS_os_log.logPaginationCat.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280A400F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

Swift::UInt_optional __swiftcall TPPaginatedPageController.adjacentPage(forPageIndex:)(Swift::UInt forPageIndex)
{
  v2 = [v1 adjacentPageIndexForPageIndex_];
  v3 = sub_2760384B4();
  v4 = v3 >= 0;
  v5 = v2 == v3;
  v6 = v4 && v5;
  if (v4 && v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2;
  }

  result.value = v7;
  result.is_nil = v6;
  return result;
}

uint64_t TPPaginationState.isInvalid.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_isInvalid;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TPPaginationState.isInvalid.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_isInvalid;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id TPPaginationState.pageIndexPath.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t TPPaginationState.pageIndexPath.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_2760384C4();
}

id sub_27602BBDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_27602BC44(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_2760384C4();
}

void (*TPPaginationState.pageIndexPath.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = swift_getKeyPath();
  *(v4 + 56) = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_27602BD84;
}

void sub_27602BD84(id **a1, char a2)
{
  v3 = *a1;
  v4 = *a1 + 3;
  v5 = *v4;
  (*a1)[4] = *v4;
  v6 = v3[5];
  if (a2)
  {
    v7 = v5;
    sub_2760384C4();
  }

  else
  {
    sub_2760384C4();
  }

  free(v3);
}

uint64_t TPPaginationState.documentPageIndex.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*TPPaginationState.documentPageIndex.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = swift_getKeyPath();
  *(v4 + 56) = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_27602FDD8;
}

uint64_t TPPaginationState.lastLaidOutSectionIndex.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__lastLaidOutSectionIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27602C084@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__lastLaidOutSectionIndex;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t TPPaginationState.bodyLayoutState.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__bodyLayoutState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TPPaginationState.bodyLayoutState.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_2760384C4();
}

uint64_t sub_27602C26C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__bodyLayoutState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_27602C2C4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_2760384C4();
}

uint64_t (*TPPaginationState.bodyLayoutState.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = swift_getKeyPath();
  *(v4 + 56) = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__bodyLayoutState;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_27602C3F4;
}

uint64_t TPPaginationState.bodyCharIndex.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__bodyCharIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*TPPaginationState.bodyCharIndex.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = swift_getKeyPath();
  *(v4 + 56) = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__bodyCharIndex;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_27602FDD8;
}

uint64_t TPPaginationState.footnoteIndex.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__footnoteIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27602C63C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;
  return sub_2760384C4();
}

uint64_t sub_27602C6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_2760384C4();
}

uint64_t sub_27602C740(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_2760384C4();
}

uint64_t (*TPPaginationState.footnoteIndex.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = swift_getKeyPath();
  *(v4 + 56) = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__footnoteIndex;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_27602FDD8;
}

void sub_27602C890(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  *(*a1 + 32) = *(*a1 + 24);
  v3 = v2;
  sub_2760384C4();

  free(v1);
}

uint64_t TPPaginationState.sectionHints.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_2760384C4();
}

uint64_t sub_27602CAF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_27602CB50(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_2760384C4();
}

void (*TPPaginationState.sectionHints.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = swift_getKeyPath();
  *(v4 + 56) = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_27602CC90;
}

void sub_27602CC90(id **a1, char a2)
{
  v3 = *a1;
  (*a1)[4] = (*a1)[3];
  v4 = v3[5];
  if (a2)
  {

    sub_2760384C4();
  }

  else
  {
    sub_2760384C4();
  }

  free(v3);
}

void (*TPPaginationState.sectionIndex.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = [*(v1 + v5) sectionIndex];
  return sub_27602CE20;
}

id sub_27602CE38(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  return [*(a1 + v5) *a3];
}

id sub_27602CEA0(SEL *a1)
{
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  return [*(v1 + v3) *a1];
}

id sub_27602CF04(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  return [*(a1 + v7) *a4];
}

id sub_27602CF74(uint64_t a1, SEL *a2)
{
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  return [*(v2 + v5) *a2];
}

void (*TPPaginationState.pageIndex.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = [*(v1 + v5) pageIndex];
  return sub_27602D074;
}

void sub_27602D080(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = *a1;
  [*(*(*a1 + 32) + *(*a1 + 40)) *a3];

  free(v3);
}

uint64_t TPPaginationState.pageHintCount.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    goto LABEL_12;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (v4 >= 1)
    {

      v5 = 0;
      v6 = 0;
      while (1)
      {
        v7 = (v3 & 0xC000000000000001) != 0 ? MEMORY[0x277C92160](v6, v3) : *(v3 + 8 * v6 + 32);
        v8 = v7;
        v9 = [v7 pageCount];

        v10 = __CFADD__(v5, v9);
        v5 += v9;
        if (v10)
        {
          break;
        }

        if (v4 == ++v6)
        {

          return v5;
        }
      }

      __break(1u);
LABEL_12:
      result = sub_276038654();
      v4 = result;
      if (!result)
      {
        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t TPPaginationState.lastLaidOutDocumentPageIndex.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    return v2 - 1;
  }

  result = sub_2760384B4();
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

id TPPaginationState.section.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v2 = [*(v0 + v1) sectionIndex];
  v3 = *(v0 + OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage);
  if (v2 >= [v3 sectionCount])
  {
    return 0;
  }

  result = [v3 sectionAtSectionIndex:v2 effectiveRange:0];
  if (result)
  {
    v5 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

unint64_t TPPaginationState.sectionHint.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v2 = [*(v0 + v1) sectionIndex];
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    result = sub_276038654();
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < 1 || v2 >= result)
  {
    return 0;
  }

  v7 = *(v0 + v3);
  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = MEMORY[0x277C92160](v2, v7);

    return v8;
  }

  else if (v2 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
  }

  else
  {
    return *(v7 + 8 * v2 + 32);
  }

  return result;
}

NSUInteger TPPaginationState.sectionCharRange.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage);
  v2 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  return sub_275FF8CB8(v1, *(v0 + v2));
}

BOOL TPPaginationState.onLastSection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage);
  v2 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  return sub_275FF8E30(v1, *(v0 + v2));
}

BOOL TPPaginationState.isPaginationComplete.getter()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v2 = [*(v0 + v1) sectionIndex];
  return sub_275FF8F7C(*(v0 + OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage)) < v2;
}

uint64_t TPPaginationState.description.getter()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D811A8]) initWithObject_];
  v3 = sub_276038504();
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  [*(v0 + v4) sectionIndex];
  sub_2760387A4();
  v5 = sub_276038504();

  [v2 addField:v3 value:v5];

  v6 = sub_276038504();
  [*(v0 + v4) pageIndex];
  sub_2760387A4();
  v7 = sub_276038504();

  [v2 addField:v6 value:v7];

  v8 = sub_276038504();
  v9 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  v18 = *(v1 + v9);
  sub_2760387A4();
  v10 = sub_276038504();

  [v2 addField:v8 value:v10];

  v11 = sub_276038504();
  v12 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__bodyCharIndex;
  swift_beginAccess();
  v17 = *(v1 + v12);
  sub_2760387A4();
  v13 = sub_276038504();

  [v2 addField:v11 value:{v13, v17, v18}];

  v14 = [v2 descriptionString];
  v15 = sub_276038514();

  return v15;
}

uint64_t sub_27602DAD0(void *a1)
{
  v1[OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_isInvalid] = 0;
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  *&v1[v3] = [objc_allocWithZone(TPPageIndexPath) initWithSectionIndex:0 pageIndex:0];
  *&v1[OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex] = 0;
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__lastLaidOutSectionIndex;
  result = sub_2760384B4();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  *&v1[v4] = result;
  *&v1[OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__bodyLayoutState] = 0;
  v6 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__bodyCharIndex;
  result = sub_2760384B4();
  if (result < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *&v1[v6] = result;
  v7 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__footnoteIndex;
  result = sub_2760384B4();
  if ((result & 0x8000000000000000) == 0)
  {
    *&v1[v7] = result;
    *&v1[OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints] = MEMORY[0x277D84F90];
    *&v1[OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage] = a1;
    v18.receiver = v1;
    v18.super_class = type metadata accessor for TPPaginationState();
    v8 = a1;
    v9 = objc_msgSendSuper2(&v18, sel_init);
    v10 = objc_allocWithZone(TPSectionHint);
    v11 = v9;
    v12 = [v10 init];
    v13 = [objc_allocWithZone(TPPageHint) init];
    [v13 setPageKind_];
    sub_27602B4C8(&qword_280A40168, &unk_276060058);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_27605FD80;
    *(v14 + 56) = sub_27602FD90(0, &qword_280A40170, off_27A6A7750);
    *(v14 + 32) = v13;
    v15 = v13;
    v16 = sub_276038544();

    [v12 setPageHints_];

    v19.super.isa = v12;
    TPPaginationState.addSectionHint(_:)(v19);

    v17 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_isInvalid;
    swift_beginAccess();
    v11[v17] = 0;

    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

id TPPaginationState.copy(with:)@<X0>(char **a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage);
  v5 = type metadata accessor for TPPaginationState();
  v6 = objc_allocWithZone(v5);
  v7 = sub_27602DAD0(v4);
  v8 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v9 = *(v2 + v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v9;
  v11 = v7;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v11;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v12;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v13;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v14;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v15;
  sub_2760384C4();
  v17 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  swift_beginAccess();
  v18 = *(v2 + v17);
  if (v18 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_276038654())
  {
    if (!i)
    {
LABEL_14:
      swift_getKeyPath();
      swift_getKeyPath();
      v24 = v16;
      sub_2760384C4();
      v25 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_isInvalid;
      result = swift_beginAccess();
      v24[v25] = 0;
      a1[3] = v5;
      *a1 = v24;
      return result;
    }

    v29 = MEMORY[0x277D84F90];

    result = sub_276038724();
    if (i < 0)
    {
      break;
    }

    v26 = v16;
    v27 = v5;
    v28 = a1;
    v21 = 0;
    a1 = &selRef_bezierPathByFlatteningPath;
    while (1)
    {
      v16 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x277C92160](v21, v18);
      }

      else
      {
        if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v22 = *(v18 + 8 * v21 + 32);
      }

      v23 = v22;
      result = [v22 copyForArchiving];
      if (!result)
      {
        goto LABEL_19;
      }

      sub_276038704();
      v5 = *(v29 + 16);
      sub_276038734();
      sub_276038744();
      sub_276038714();
      ++v21;
      if (v16 == i)
      {

        a1 = v28;
        v16 = v26;
        v5 = v27;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_27602E1DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

id TPPaginationState.copyForCaching()@<X0>(char **a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage);
  v5 = type metadata accessor for TPPaginationState();
  v6 = objc_allocWithZone(v5);
  v7 = sub_27602DAD0(v4);
  v8 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v9 = *(v2 + v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v9;
  v11 = v7;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v11;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v12;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v13;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v14;
  sub_2760384C4();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v15;
  sub_2760384C4();
  v17 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  swift_beginAccess();
  v18 = *(v2 + v17);
  if (v18 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_276038654())
  {
    if (!i)
    {
LABEL_14:
      swift_getKeyPath();
      swift_getKeyPath();
      v24 = v16;
      sub_2760384C4();
      v25 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_isInvalid;
      result = swift_beginAccess();
      v24[v25] = 0;
      a1[3] = v5;
      *a1 = v24;
      return result;
    }

    v29 = MEMORY[0x277D84F90];

    result = sub_276038724();
    if (i < 0)
    {
      break;
    }

    v26 = v16;
    v27 = v5;
    v28 = a1;
    v21 = 0;
    a1 = &selRef_bezierPathByFlatteningPath;
    while (1)
    {
      v16 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x277C92160](v21, v18);
      }

      else
      {
        if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v22 = *(v18 + 8 * v21 + 32);
      }

      v23 = v22;
      result = [v22 copyForCaching];
      if (!result)
      {
        goto LABEL_19;
      }

      sub_276038704();
      v5 = *(v29 + 16);
      sub_276038734();
      sub_276038744();
      sub_276038714();
      ++v21;
      if (v16 == i)
      {

        a1 = v28;
        v16 = v26;
        v5 = v27;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall TPPaginationState.isPaginationComplete(through:)(Swift::UInt through)
{
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  return *(v1 + v3) > through;
}

Swift::Bool __swiftcall TPPaginationState.isPaginationComplete(upTo:)(Swift::UInt upTo)
{
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  return *(v1 + v3) >= upTo;
}

_NSRange __swiftcall TPPaginationState.footnoteRange(inBodyTextRange:)(_NSRange inBodyTextRange)
{
  v2 = [*(v1 + OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage) footnoteRangeForTextRange_];
  result.length = v3;
  result.location = v2;
  return result;
}

Swift::Void __swiftcall TPPaginationState.restartPagination(fromPageIndexPath:documentPageIndex:)(TPPageIndexPath fromPageIndexPath, Swift::UInt documentPageIndex)
{
  isa = fromPageIndexPath.super.isa;
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v5 = *&v2[v4];
  [v5 setSectionIndex_];

  v6 = *&v2[v4];
  [v6 setPageIndex_];

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v2;
  sub_2760384C4();
  if (qword_280A400F0 == -1)
  {
    if ((sub_2760384B4() & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  swift_once();
  if (sub_2760384B4() < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  sub_2760384C4();
  if ((sub_2760384B4() & 0x8000000000000000) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    sub_2760384C4();
    return;
  }

LABEL_7:
  __break(1u);
}

Swift::Void __swiftcall TPPaginationState.restartPaginationFromFirstPage()()
{
  v3.super.isa = [objc_allocWithZone(TPPageIndexPath) initWithSectionIndex:0 pageIndex:0];
  isa = v3.super.isa;
  v3._sectionIndex = 0;
  TPPaginationState.restartPagination(fromPageIndexPath:documentPageIndex:)(v3, v0);
}

Swift::Void __swiftcall TPPaginationState.backUp(to:documentPageIndex:)(TPPageIndexPath to, Swift::UInt documentPageIndex)
{
  sectionIndex = to._sectionIndex;
  isa = to.super.isa;
  v5 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  v6 = *&v2[v5];
  if (v6)
  {
    if (v6 == sectionIndex)
    {
      return;
    }
  }

  else
  {
    sub_276038764();
    v10 = swift_allocObject();
    v10[2] = 8;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
    v15 = sub_276038754();
    v11 = objc_opt_self();
    sub_2760386D4();
    v12 = sub_276038504();

    sub_2760386D4();
    v13 = sub_276038504();

    sub_2760386D4();
    v14 = sub_276038504();

    [v11 handleFailureInFunction:v12 file:v13 lineNumber:207 isFatal:0 format:v14 args:v15];

    if (*&v2[v5] == sectionIndex)
    {
      return;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v2;
  v8 = isa;
  sub_2760384C4();
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v7;
  sub_2760384C4();
}

Swift::Void __swiftcall TPPaginationState.advancePageIndex()()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = [v2 pageIndex];
  if (v3 == -1)
  {
    __break(1u);
  }

  else
  {
    [v2 setPageIndex_];

    swift_getKeyPath();
    swift_getKeyPath();
    v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
    swift_beginAccess();
    if (*&v0[v4] != -1)
    {
      v5 = v0;
      sub_2760384C4();
      return;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall TPPaginationState.advanceSectionIndex()()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__pageIndexPath;
  swift_beginAccess();
  v2 = *&v0[OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_bodyStorage];
  v3 = *&v0[v1];
  [v3 setSectionIndex_];

  [*&v0[v1] setPageIndex_];
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v0;
  sub_2760384C4();
}

TPPageIndexPath_optional __swiftcall TPPaginationState.pageIndexPath(forPageIndex:)(Swift::UInt forPageIndex)
{
  v3 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__documentPageIndex;
  swift_beginAccess();
  if (*(v1 + v3) <= forPageIndex)
  {
    goto LABEL_22;
  }

  v7 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_22:
    v18 = 0;
    goto LABEL_23;
  }

LABEL_18:
  v14 = sub_276038654();
  if (v14 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
  }

  v9 = v14;
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_4:
  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *(v1 + v7);
    if ((v12 & 0xC000000000000001) != 0)
    {

      v13 = MEMORY[0x277C92160](v10, v12);
    }

    else
    {
      if (v10 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v13 = *(v12 + 8 * v10 + 32);
    }

    v14 = [v13 pageCount];
    v15 = v11 + v14;
    if (__CFADD__(v11, v14))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v15 > forPageIndex)
    {
      break;
    }

    ++v10;

    v11 = v15;
    if (v9 == v10)
    {
      goto LABEL_22;
    }
  }

  v16 = forPageIndex >= v11;
  forPageIndex -= v11;
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = [objc_allocWithZone(TPPageIndexPath) initWithSectionIndex:v10 pageIndex:forPageIndex];

  v18 = v17;
LABEL_23:
  result.value._pageIndex = v5;
  result.value._sectionIndex = v4;
  result.value.super.isa = v18;
  result.is_nil = v6;
  return result;
}

void __swiftcall TPPaginationState.pageHint(forPageIndex:)(TPPageHint_optional *__return_ptr retstr, Swift::UInt forPageIndex)
{
  v12 = TPPaginationState.pageIndexPath(forPageIndex:)(forPageIndex);
  if (!v12.value.super.isa)
  {
    return;
  }

  isa = v12.value.super.isa;
  v5 = [(objc_class *)v12.value.super.isa sectionIndex:v12.value._pageIndex];
  v6 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (v7 >> 62)
  {
    v8 = sub_276038654();
    if (v8 <= 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 <= 0)
    {
LABEL_11:

      return;
    }
  }

  if (v5 >= v8)
  {
    goto LABEL_11;
  }

  v9 = [(objc_class *)isa sectionIndex];
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *(v2 + v6);
  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v11 = v9;

    v10 = MEMORY[0x277C92160](v11, v5);

    goto LABEL_9;
  }

  if (v9 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v5 + 8 * v9 + 32);
LABEL_9:
    [v10 pageHintForPageIndex_];

    return;
  }

  __break(1u);
}

Swift::Void __swiftcall TPPaginationState.addSectionHint(_:)(TPSectionHint a1)
{
  v2 = v1;
  isa = a1.super.isa;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  swift_beginAccess();
  v7 = *&v2[v4];

  v5 = isa;
  MEMORY[0x277C91FB0]();
  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_276038574();
  }

  sub_276038594();
  v6 = v2;
  sub_2760384C4();
}

Swift::Void __swiftcall TPPaginationState.removeAllSectionHints()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_2760384C4();
}

Swift::Void __swiftcall TPPaginationState.trimSectionHints(fromIndex:)(Swift::UInt fromIndex)
{
  if ((fromIndex & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_6:
    v6 = sub_276038654();
    if (v6 >= v3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v1 = v2;
  v3 = fromIndex;
  v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState__sectionHints;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5 >> 62)
  {
    goto LABEL_6;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 >= v3)
  {
LABEL_4:
    swift_getKeyPath();
    swift_getKeyPath();

    sub_27602FC28(v3, v6);
    v7 = v1;
    sub_2760384C4();
    return;
  }

LABEL_7:
  __break(1u);
}

Swift::Void __swiftcall TPPaginationState.invalidate()()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_isInvalid;
  swift_beginAccess();
  *(v0 + v1) = 1;
}

id TPPaginationState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TPPaginationState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPPaginationState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27602FA0C()
{
  v1 = OBJC_IVAR____TtC14PagesQuicklook17TPPaginationState_isInvalid;
  result = swift_beginAccess();
  *(v0 + v1) = 1;
  return result;
}

unint64_t sub_27602FA5C(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_276038654();
    }

    result = sub_2760386F4();
    *v2 = result;
  }

  return result;
}

uint64_t sub_27602FB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_27602FD90(0, &qword_280A40160, &off_27A6A7770);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_276038654();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_276038654();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_27602FC28(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_276038654();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_276038654();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_27602FA5C(result, 1);

  return sub_27602FB18(v5, v3, 0);
}

void *sub_27602FD00(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_27602FD44(void *a1)
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

uint64_t sub_27602FD90(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_27602FDF4()
{
  v1 = *v0;
  sub_2760387D4();
  MEMORY[0x277C92260](v1);
  return sub_2760387F4();
}

uint64_t sub_27602FE68(uint64_t a1)
{
  v2 = *v1;
  sub_2760387D4();
  MEMORY[0x277C92260](v2);
  return sub_2760387F4();
}

uint64_t sub_27602FEAC(void *a1)
{
  v2 = v1;
  v4 = [a1 layoutController];
  if (!v4)
  {
    sub_276038764();
    v5 = swift_allocObject();
    v5[2] = 8;
    v5[3] = 0;
    v5[4] = 0;
    v5[5] = 0;
    v6 = sub_276038754();
    v7 = objc_opt_self();
    sub_2760386D4();
    v8 = sub_276038504();

    sub_2760386D4();
    v9 = sub_276038504();

    sub_2760386D4();
    v10 = sub_276038504();

    [v7 handleFailureInFunction:v8 file:v9 lineNumber:50 isFatal:0 format:v10 args:v6];

    v4 = v10;
  }

  v11 = *&v1[OBJC_IVAR____TtC14PagesQuicklook17TPPageLayoutCache_accessQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_276034174;
  *(v13 + 24) = v12;
  v19[4] = sub_2760344E4;
  v19[5] = v13;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_276030124;
  v19[3] = &unk_288501498;
  v14 = _Block_copy(v19);
  v15 = a1;
  v16 = v2;

  dispatch_sync(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2760301B4(void *a1)
{
  v2 = v1;
  v4 = [a1 layoutController];
  if (!v4)
  {
    sub_276038764();
    v5 = swift_allocObject();
    v5[2] = 8;
    v5[3] = 0;
    v5[4] = 0;
    v5[5] = 0;
    v6 = sub_276038754();
    v7 = objc_opt_self();
    sub_2760386D4();
    v8 = sub_276038504();

    sub_2760386D4();
    v9 = sub_276038504();

    sub_2760386D4();
    v10 = sub_276038504();

    [v7 handleFailureInFunction:v8 file:v9 lineNumber:60 isFatal:0 format:v10 args:v6];

    v4 = v10;
  }

  v11 = *&v1[OBJC_IVAR____TtC14PagesQuicklook17TPPageLayoutCache_accessQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_276034114;
  *(v13 + 24) = v12;
  v19[4] = sub_276034134;
  v19[5] = v13;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_276030124;
  v19[3] = &unk_288501420;
  v14 = _Block_copy(v19);
  v15 = a1;
  v16 = v2;

  dispatch_sync(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27603042C(void *a1, uint64_t a2, char a3)
{
  v6 = OBJC_IVAR____TtC14PagesQuicklook17TPPageLayoutCache_pendingUpdates;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v8 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_2760319FC(0, *(v7 + 2) + 1, 1, v7);
    *(a2 + v6) = v7;
  }

  v11 = *(v7 + 2);
  v10 = *(v7 + 3);
  if (v11 >= v10 >> 1)
  {
    v7 = sub_2760319FC((v10 > 1), v11 + 1, 1, v7);
  }

  *(v7 + 2) = v11 + 1;
  v12 = &v7[16 * v11];
  v12[32] = a3;
  *(v12 + 5) = v8;
  *(a2 + v6) = v7;
  return swift_endAccess();
}

uint64_t sub_276030584(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14PagesQuicklook17TPPageLayoutCache_pendingUpdates;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v50 = *(v3 + 16);
  if (v50)
  {
    v46 = v2;
    v4 = OBJC_IVAR____TtC14PagesQuicklook17TPPageLayoutCache_pageLayoutCache;
    v49 = v3 + 32;

    swift_beginAccess();
    v5 = 0;
    v47 = a1;
    v48 = v4;
    while (1)
    {
      v8 = (v49 + 16 * v5);
      v9 = *v8;
      v10 = *(v8 + 1);
      v11 = *(a1 + v4);
      v12 = v11 & 0xC000000000000001;
      if (v9)
      {
        if (v12)
        {
          v13 = v10;

          v14 = sub_276038684();

          if ((v14 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (!*(v11 + 16))
          {
            v37 = v10;
            goto LABEL_26;
          }

          sub_27602FD90(0, &qword_280A401A0, off_27A6A7760);
          v10;

          v25 = sub_2760385F4();
          v26 = -1 << *(v11 + 32);
          v27 = v25 & ~v26;
          if (((*(v11 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
LABEL_18:

            a1 = v47;
LABEL_26:
            sub_276038764();
            v38 = swift_allocObject();
            v38[2] = 8;
            v38[3] = 0;
            v38[4] = 0;
            v38[5] = 0;
            v39 = sub_276038754();
            v40 = objc_opt_self();
            sub_2760386D4();
            v41 = sub_276038504();

            sub_2760386D4();
            v42 = sub_276038504();

            sub_2760386D4();
            v43 = sub_276038504();

            [v40 handleFailureInFunction:v41 file:v42 lineNumber:140 isFatal:0 format:v43 args:v39];

            v4 = v48;

            goto LABEL_5;
          }

          v28 = ~v26;
          while (1)
          {
            v29 = *(*(v11 + 48) + 8 * v27);
            v30 = sub_276038604();

            if (v30)
            {
              break;
            }

            v27 = (v27 + 1) & v28;
            if (((*(v11 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          a1 = v47;
          v4 = v48;
        }

        swift_beginAccess();
        v15 = sub_276033560(v10);
        swift_endAccess();
      }

      else
      {
        if (v12)
        {
          v16 = v10;

          v17 = sub_276038684();

          if (v17)
          {
            goto LABEL_12;
          }
        }

        else if (*(v11 + 16))
        {
          sub_27602FD90(0, &qword_280A401A0, off_27A6A7760);
          v10;

          v31 = sub_2760385F4();
          v32 = -1 << *(v11 + 32);
          v33 = v31 & ~v32;
          if ((*(v11 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
          {
            v34 = ~v32;
            while (1)
            {
              v35 = *(*(v11 + 48) + 8 * v33);
              v36 = sub_276038604();

              if (v36)
              {
                break;
              }

              v33 = (v33 + 1) & v34;
              if (((*(v11 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
              {
                goto LABEL_3;
              }
            }

            a1 = v47;
LABEL_12:
            sub_276038764();
            v18 = swift_allocObject();
            v18[2] = 8;
            v18[3] = 0;
            v18[4] = 0;
            v18[5] = 0;
            v19 = sub_276038754();
            v20 = objc_opt_self();
            sub_2760386D4();
            v21 = sub_276038504();

            sub_2760386D4();
            v22 = sub_276038504();

            sub_2760386D4();
            v23 = sub_276038504();

            v24 = v20;
            v4 = v48;
            [v24 handleFailureInFunction:v21 file:v22 lineNumber:132 isFatal:0 format:v23 args:v19];

            goto LABEL_5;
          }

LABEL_3:

          v4 = v48;
        }

        else
        {
          v44 = v10;
        }

        swift_beginAccess();
        v6 = v10;
        sub_2760329B8(&v51, v6);
        v7 = v51;
        swift_endAccess();

        a1 = v47;
      }

LABEL_5:
      if (++v5 == v50)
      {

        v2 = v46;
        break;
      }
    }
  }

  *(a1 + v2) = MEMORY[0x277D84F90];
}