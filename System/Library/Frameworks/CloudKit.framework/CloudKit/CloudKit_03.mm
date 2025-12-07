id *sub_188439984(id *result, const char *a2, uint64_t a3)
{
  if ((a3 & 0x40) == 0)
  {
    return objc_msgSend_setValue_forProperty_propertyInfo_inObject_(result[4], a2, qword_1EA9123A0, a2, a3, result[5]);
  }

  return result;
}

void sub_1884399A8(void *a1, void *a2, char a3, void *a4)
{
  v41 = a1;
  v7 = a2;
  v8 = a4;
  v9 = objc_opt_class();
  v10 = v7;
  v13 = objc_msgSend_UTF8String(v10, v11, v12);
  v14 = sub_188439E1C(v9, v13);
  InstanceMethod = class_getInstanceMethod(v9, v14);
  Implementation = method_getImplementation(InstanceMethod);
  if (!Implementation)
  {
    v26 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v17, v18);
    v27 = [CKSignificantIssue alloc];
    v28 = [CKSourceCodeLocation alloc];
    v30 = objc_msgSend_initWithFilePath_lineNumber_(v28, v29, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteTable.m", 1185);
    v31 = NSStringFromClass(v9);
    v33 = objc_msgSend_initWithSourceCodeLocation_format_(v27, v32, v30, @"Failed to find a setter for %@ on %@", v7, v31);
    objc_msgSend_handleSignificantIssue_actions_(v26, v34, v33, 0);

    v35 = MEMORY[0x1E696AEC0];
    v36 = NSStringFromClass(v9);
    v38 = objc_msgSend_stringWithFormat_(v35, v37, @"Failed to find a setter for %@ on %@", v7, v36);

    objc_msgSend_UTF8String(v38, v39, v40);
    _os_crash();
    __break(1u);
    JUMPOUT(0x188439C24);
  }

  v19 = Implementation;
  switch(a3)
  {
      v20 = objc_msgSend_charValue(v41, v17, v18);
      goto LABEL_17;
    case 'a':
      v20 = objc_msgSend_shortValue(v41, v17, v18);
      goto LABEL_17;
    case 'b':
      v22 = objc_msgSend_longValue(v41, v17, v18);
      goto LABEL_11;
    case 'c':
      v21 = objc_msgSend_longLongValue(v41, v17, v18);
      goto LABEL_19;
    case 'd':
      v21 = objc_msgSend_integerValue(v41, v17, v18);
      goto LABEL_19;
    case 'e':
      v20 = objc_msgSend_unsignedCharValue(v41, v17, v18);
      goto LABEL_17;
    case 'f':
      v20 = objc_msgSend_unsignedShortValue(v41, v17, v18);
      goto LABEL_17;
    case 'g':
      v22 = objc_msgSend_unsignedLongValue(v41, v17, v18);
LABEL_11:
      v23 = v22;
      v24 = v8;
      v25 = v14;
      goto LABEL_20;
    case 'h':
      v21 = objc_msgSend_unsignedLongLongValue(v41, v17, v18);
      goto LABEL_19;
    case 'i':
      v21 = objc_msgSend_unsignedIntegerValue(v41, v17, v18);
LABEL_19:
      v23 = v21;
      v24 = v8;
      v25 = v14;
      goto LABEL_20;
    case 'j':
      v20 = objc_msgSend_BOOLValue(v41, v17, v18);
LABEL_17:
      v23 = v20;
      v24 = v8;
      v25 = v14;
      goto LABEL_20;
    case 'k':
      objc_msgSend_floatValue(v41, v17, v18);
      v19(v8, v14);
      goto LABEL_21;
    case 'l':
      objc_msgSend_doubleValue(v41, v17, v18);
      v19(v8, v14);
      goto LABEL_21;
    default:
      v24 = v8;
      v25 = v14;
      v23 = v41;
LABEL_20:
      (v19)(v24, v25, v23);
LABEL_21:

      return;
  }
}

SEL sub_188439E1C(objc_class *a1, const char *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  Property = class_getProperty(a1, a2);
  v4 = property_copyAttributeValue(Property, "S");
  if (v4)
  {
    v5 = v4;
    v6 = sel_registerName(v4);
    free(v5);
    return v6;
  }

  else
  {
    v8 = strlen(a2);
    v11 = v8;
    v12 = v8 + 5;
    if (v8 + 5 >= 0x40)
    {
      v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v9, v10);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v15, "SEL setterForProperty(__unsafe_unretained Class, const char *)");
      objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v14, v17, v16, @"CKSQLiteTable.m", 66, @"property name too long: %s", a2);
    }

    MEMORY[0x1EEE9AC00](v8);
    v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v13 = 25971;
    v13[2] = 116;
    memcpy(v13 + 3, a2, v11);
    v13[3] = __toupper(v13[3]);
    *&v13[v11 + 3] = 58;
    return sel_registerName(v13);
  }
}

id sub_18843A270(void *a1, void *a2, char a3, char a4)
{
  v7 = a1;
  v8 = a2;
  v9 = objc_opt_class();
  v10 = v7;
  v13 = objc_msgSend_UTF8String(v10, v11, v12);
  Property = class_getProperty(v9, v13);
  v15 = property_copyAttributeValue(Property, "G");
  if (v15)
  {
    v16 = v15;
    v17 = sel_registerName(v15);
    free(v16);
  }

  else
  {
    v17 = sel_registerName(v13);
  }

  InstanceMethod = class_getInstanceMethod(v9, v17);
  if (!InstanceMethod)
  {
    v66 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v19, v20);
    v67 = [CKSignificantIssue alloc];
    v68 = [CKSourceCodeLocation alloc];
    v70 = objc_msgSend_initWithFilePath_lineNumber_(v68, v69, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteTable.m", 1157);
    v71 = objc_opt_class();
    v72 = NSStringFromClass(v71);
    v74 = objc_msgSend_initWithSourceCodeLocation_format_(v67, v73, v70, @"Could not find getter method for property %@ on class %@", v7, v72);
    objc_msgSend_handleSignificantIssue_actions_(v66, v75, v74, 0);

    v76 = MEMORY[0x1E696AEC0];
    v77 = objc_opt_class();
    v78 = NSStringFromClass(v77);
    v7 = objc_msgSend_stringWithFormat_(v76, v79, @"Could not find getter method for property %@ on class %@", v7, v78);

    objc_msgSend_UTF8String(v7, v80, v81);
    _os_crash();
    __break(1u);
    goto LABEL_26;
  }

  Implementation = method_getImplementation(InstanceMethod);
  switch(a3)
  {
      v22 = MEMORY[0x1E696AD98];
      v23 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithChar_(v22, v24, v23);
      break;
    case 'a':
      v49 = MEMORY[0x1E696AD98];
      v50 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithShort_(v49, v51, v50);
      break;
    case 'b':
      v40 = MEMORY[0x1E696AD98];
      v41 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithInt_(v40, v42, v41);
      break;
    case 'c':
      v43 = MEMORY[0x1E696AD98];
      v44 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithLongLong_(v43, v45, v44);
      break;
    case 'd':
      v31 = MEMORY[0x1E696AD98];
      v32 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithInteger_(v31, v33, v32);
      break;
    case 'e':
      v52 = MEMORY[0x1E696AD98];
      v53 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithUnsignedChar_(v52, v54, v53);
      break;
    case 'f':
      v55 = MEMORY[0x1E696AD98];
      v56 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithUnsignedShort_(v55, v57, v56);
      break;
    case 'g':
      v46 = MEMORY[0x1E696AD98];
      v47 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithUnsignedInt_(v46, v48, v47);
      break;
    case 'h':
      v61 = MEMORY[0x1E696AD98];
      v62 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithUnsignedLongLong_(v61, v63, v62);
      break;
    case 'i':
      v37 = MEMORY[0x1E696AD98];
      v38 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithUnsignedInteger_(v37, v39, v38);
      break;
    case 'j':
      v58 = MEMORY[0x1E696AD98];
      v59 = (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithBool_(v58, v60, v59);
      break;
    case 'k':
      v28 = MEMORY[0x1E696AD98];
      (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithFloat_(v28, v29, v30);
      break;
    case 'l':
      v34 = MEMORY[0x1E696AD98];
      (Implementation)(v8, v17);
      v25 = objc_msgSend_numberWithDouble_(v34, v35, v36);
      break;
    default:
      v25 = (Implementation)(v8, v17);
      break;
  }

  v64 = v25;
  if (v25 == qword_1EA9123A0 && (a4 & 1) == 0)
  {
LABEL_26:
    v82 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v26, v27);
    v83 = [CKSignificantIssue alloc];
    v84 = [CKSourceCodeLocation alloc];
    v86 = objc_msgSend_initWithFilePath_lineNumber_(v84, v85, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/SQLite/CKSQLiteTable.m", 1162);
    v87 = objc_opt_class();
    v88 = NSStringFromClass(v87);
    v90 = objc_msgSend_initWithSourceCodeLocation_format_(v83, v89, v86, @"Attempted to use property %@ on entry of class %@ but the property value has not been fetched into the object.", v7, v88);
    objc_msgSend_handleSignificantIssue_actions_(v82, v91, v90, 0);

    v92 = MEMORY[0x1E696AEC0];
    v93 = objc_opt_class();
    v94 = NSStringFromClass(v93);
    v96 = objc_msgSend_stringWithFormat_(v92, v95, @"Attempted to use property %@ on entry of class %@ but the property value has not been fetched into the object.", v7, v94);

    objc_msgSend_UTF8String(v96, v97, v98);
    _os_crash();
    __break(1u);
    JUMPOUT(0x18843A76CLL);
  }

  return v64;
}

BOOL sub_18843A9F8(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_expressionType(a1, a2, a3))
  {
    return 0;
  }

  v7 = objc_msgSend_constantValue(a1, v4, v5);
  v6 = v7 == 0;

  return v6;
}

pthread_mutex_t *_CKSQLDBSerializerLock(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 64);
  if (v2 == pthread_self())
  {
    return 0;
  }

  pthread_mutex_lock(v1);
  v1[1].__sig = pthread_self();
  return v1;
}

id CKSQLiteContainerAttribution_None(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

void sub_18843AF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18843AF88(uint64_t a1, const char *a2, void *a3, _BYTE *a4)
{
  v6 = objc_msgSend_wakeFromDatabase(a3, a2, a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a4 = 1;
  }
}

void sub_18843B3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18843B7F0(void *a1, const char *a2)
{
  if (a1)
  {
    if (objc_getProperty(a1, a2, 48, 1))
    {
      v5 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v3, v4);
      Property = objc_getProperty(a1, v6, 48, 1);
      objc_msgSend_endActivity_(v5, v8, Property);

      v9 = a1[6];
      a1[6] = 0;
    }

    v10 = a1[5];
    a1[5] = 0;
  }
}

void sub_18843BD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location)
{
  objc_destroyWeak((v12 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *sub_18843BD9C(void *a1, const char *a2)
{
  if (a1)
  {
    a1 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"operationID=%@", a1[34]);
    v2 = vars8;
  }

  return a1;
}

__CFString *CKBackgroundTaskPriorityDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BFE18[a1];
  }
}

id sub_18843C288()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EA919C08;
  v7 = qword_1EA919C08;
  if (!qword_1EA919C08)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1886457AC;
    v3[3] = &unk_1E70BBE90;
    v3[4] = &v4;
    sub_1886457AC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18843C350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18843C724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_18843C75C(uint64_t a1, const char *a2, void *a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_allSiteIdentifiers(a3, a2, a3);
  objc_msgSend_unionSet_(v3, v4, v5);
}

void sub_18843C858(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_18843CB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  objc_sync_exit(v9);

  _Unwind_Resume(a1);
}

void sub_18843CC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_18843CCB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_sync_enter(v6);
  v9 = objc_msgSend_clockValues(v6, v7, v8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_18843CDE4;
  v12[3] = &unk_1E70BD2E8;
  v10 = v5;
  v13 = v10;
  v14 = *(a1 + 32);
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v9, v11, v12);

  objc_sync_exit(v6);
}

void sub_18843CDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void sub_18843CDE4(uint64_t a1, void *a2)
{
  v25 = a2;
  v5 = objc_msgSend_shortValue(*(a1 + 32), v3, v4) >> 8;
  v6 = *(a1 + 40);
  v9 = objc_msgSend_modifier(v25, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v6, v10, v9);
  v12 = v5;

  if (v11)
  {
    if (objc_msgSend_shortValue(v11, v13, v14) == v12)
    {
      goto LABEL_6;
    }

    v17 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v15, v16);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v18, "[CKDistributedTimestampAttributedVector(ClockVectorSupport) clockVector_clockTypesForAllModifiers]_block_invoke_2");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v17, v20, v19, @"CKDistributedTimestampVector.mm", 1754, @"It is not possible to mix and match regular and lwwPerModifier clock types for a given site identifier modifier (rdar://84695941)");
  }

  else
  {
    v17 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v13, v12);
    v21 = *(a1 + 40);
    v19 = objc_msgSend_modifier(v25, v22, v23);
    objc_msgSend_setObject_forKeyedSubscript_(v21, v24, v17, v19);
  }

LABEL_6:
}

void sub_18843CF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_18843D094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  v22 = v21;

  _Block_object_dispose(&a15, 8);
  objc_sync_exit(v20);

  _Unwind_Resume(a1);
}

void sub_18843D0DC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  objc_sync_enter(v8);
  v9 = v6;
  objc_sync_enter(v9);
  if (objc_msgSend_timestampCount(v8, v10, v11) || objc_msgSend_timestampCount(v9, v12, v13))
  {
    v14 = objc_msgSend_allSiteIdentifiers(v8, v12, v13);
    v17 = objc_msgSend_allSiteIdentifiers(v9, v15, v16);
    v20 = objc_msgSend_mutableCopy(v14, v18, v19);
    v22 = v20;
    if (v17)
    {
      objc_msgSend_unionSet_(v20, v21, v17);
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_18843D44C;
    v26[3] = &unk_1E70BD6A8;
    v29 = v7;
    v23 = v14;
    v27 = v23;
    v24 = v17;
    v28 = v24;
    objc_msgSend_enumerateObjectsUsingBlock_(v22, v25, v26);
  }

  objc_sync_exit(v9);

  objc_sync_exit(v8);
}

void sub_18843D25C(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_18843D3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  objc_sync_exit(v13);

  _Unwind_Resume(a1);
}

void sub_18843D3DC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_count(v6, v4, v5);
}

void sub_18843D44C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v9 = v3;
  v6 = objc_msgSend_containsObject_(*(a1 + 32), v5, v3);
  v8 = objc_msgSend_containsObject_(*(a1 + 40), v7, v9);
  (*(v4 + 16))(v4, v9, v6, v8);
}

void sub_18843D4E8(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (!objc_msgSend_timestampCount(v5, v6, v7))
  {
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    if (v9)
    {
      v10 = v9;
      v11 = *(v8 + 40);
      *(v8 + 40) = v10;
    }

    else
    {
      v12 = objc_opt_new();
      v13 = *(*(a1 + 32) + 8);
      v11 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v14, v15);
  }
}

void sub_18843D6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_sync_exit(v14);

  _Unwind_Resume(a1);
}

void CKRecordKeyValueSetting.subscript.getter()
{
  sub_1883F8AF0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for Optional();
  sub_1883F70DC();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v57 - v17;
  v19 = MEMORY[0x18CFD5010](v6, v4, v16);
  v20 = [v0 objectForKey_];

  if (v20)
  {
    v21 = sub_1884049C0(v2, v2, &protocol descriptor for CKObjCRecordValueConvertible);
    if (!v21)
    {
      swift_getObjectType();
      CKRecordValue.CKToSwiftNativeValue()();
      sub_18848CE70(&v62, v61);
      sub_18844E6FC(&qword_1EA90DC50, &qword_1886F9440);
      v38 = swift_dynamicCast();
      sub_1883F90F4(v14, v38 ^ 1u, 1, v2);
      sub_1884054F4(v14);
      if (v39)
      {
        if (qword_1ED4B5C68 != -1)
        {
          sub_1883F7264(&qword_1ED4B5C68);
        }

        v40 = type metadata accessor for Logger();
        sub_1883FDE5C(v40, qword_1ED4B5C70);
        swift_unknownObjectRetain();
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138412290;
          objc_opt_self();
          v45 = swift_dynamicCastObjCClassUnconditional();
          *(v43 + 4) = v45;
          *v44 = v45;
          swift_unknownObjectRetain();
          _os_log_impl(&dword_1883EA000, v41, v42, "Error converting record value %@ to requested type", v43, 0xCu);
          sub_18840E840(v44, &qword_1EA90DC70, &unk_1886FA190);
          sub_1883F7B60();
          sub_1883F7B60();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        sub_1883FE944(&v62);
      }

      else
      {
        sub_1883FE944(&v62);
        swift_unknownObjectRelease();
      }

      (*(v11 + 32))(v8, v14, v9);
      goto LABEL_28;
    }

    v23 = v21;
    v24 = v22;
    v58 = v11;
    v59 = v9;
    v60 = v8;
    v25 = *(v22 + 24);
    v26 = type metadata accessor for Optional();
    v57[0] = v57;
    sub_1883F70DC();
    v28 = v27;
    v30 = MEMORY[0x1EEE9AC00](v29);
    v32 = v57 - v31;
    v57[1] = v20;
    v25(v20, v23, v24, v30);
    if (sub_1883F971C(v32, 1, v23) == 1)
    {
      (*(v28 + 8))(v32, v26);
      v64 = 0;
      v62 = 0u;
      v63 = 0u;
    }

    else
    {
      *(&v63 + 1) = v23;
      v64 = v24;
      sub_188403664(&v62);
      sub_1883F7930();
      (*(v46 + 32))();
    }

    sub_18847E0A0(&v62, v61, &qword_1EA90DC60, &unk_1886F9450);
    sub_18844E6FC(&qword_1EA90DC60, &unk_1886F9450);
    v47 = swift_dynamicCast();
    sub_1883F90F4(v18, v47 ^ 1u, 1, v2);
    v49 = v59;
    v48 = v60;
    v50 = v58;
    if (*(&v63 + 1))
    {
      sub_1884054F4(v18);
      if (v39)
      {
        if (qword_1ED4B5C68 != -1)
        {
          sub_1883F7264(&qword_1ED4B5C68);
        }

        v51 = type metadata accessor for Logger();
        sub_1883FDE5C(v51, qword_1ED4B5C70);
        swift_unknownObjectRetain();
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();
        swift_unknownObjectRelease();
        if (!os_log_type_enabled(v52, v53))
        {
          swift_unknownObjectRelease();

          goto LABEL_23;
        }

        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        objc_opt_self();
        v56 = swift_dynamicCastObjCClassUnconditional();
        *(v54 + 4) = v56;
        *v55 = v56;
        swift_unknownObjectRetain();
        _os_log_impl(&dword_1883EA000, v52, v53, "Error converting record value %@ to requested type", v54, 0xCu);
        sub_18840E840(v55, &qword_1EA90DC70, &unk_1886FA190);
        sub_1883F7B60();
        sub_1883F7B60();
      }
    }

    swift_unknownObjectRelease();
LABEL_23:
    (*(v50 + 32))(v48, v18, v49);
    sub_18840E840(&v62, &qword_1EA90DC60, &unk_1886F9450);
LABEL_28:
    sub_1883F8178();
    return;
  }

  sub_1883F8178();

  sub_1883F90F4(v33, v34, v35, v36);
}

uint64_t CKRecordKeyValueSetting.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_18847E0A0(a1, v11, &qword_1EA90DC78, &qword_1886F9470);
  v8 = v12;
  if (v12)
  {
    sub_188400B68(v11, v12);
    v8 = CKRecordValueProtocol.CKToObjCRecordValue()(v8);
    sub_1883FE944(v11);
  }

  else
  {
    sub_18840E840(v11, &qword_1EA90DC78, &qword_1886F9470);
  }

  v9 = MEMORY[0x18CFD5010](a2, a3);

  [v4 setObject:v8 forKeyedSubscript:v9];
  swift_unknownObjectRelease();

  return sub_18840E840(a1, &qword_1EA90DC78, &qword_1886F9470);
}

uint64_t sub_18843DE64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_18844E6FC(a3, a4);
  sub_1883F7308();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t CKRecordValueProtocol.CKToObjCRecordValue()(uint64_t a1)
{
  sub_1883F70DC();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = *(v4 + 16);
  v10(v16 - v11, v1, a1, v9);
  sub_18844E6FC(&qword_1EA90DC58, &qword_1886F9448);
  if (swift_dynamicCast())
  {
    sub_18843E080(v16, v18);
    v12 = v19;
    v13 = v20;
    sub_188400B68(v18, v19);
    v14 = (*(v13 + 16))(v12, v13);
    sub_1883FE944(v18);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_18840E840(v16, &qword_1EA90DC60, &unk_1886F9450);
    (v10)(v7, v1, a1);
    sub_18844E6FC(&qword_1EA90DC68, &unk_1886F9460);
    swift_dynamicCast();
    return v18[0];
  }

  return v14;
}

uint64_t sub_18843E080(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_18843E0A0(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithInteger_];
}

id sub_18843E108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.forEach(_:)();
  return v4;
}

uint64_t sub_18843E240(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    hasAssetBackedDeltas = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hasAssetBackedDeltas = objc_msgSend_hasAssetBackedDeltas(v3, v6, v7);
    }

    else
    {
      hasAssetBackedDeltas = 0;
    }
  }

  return hasAssetBackedDeltas;
}

BOOL CKIsIndexedArrayKey(void *a1)
{
  v3 = 0;
  v1 = CKProcessIndexedArrayKey(a1, &v3, 0, 0);
  return v3 != 0;
}

uint64_t CKCurrentThreadQualityOfService()
{
  v0 = qos_class_self();
  if (v0 <= 16)
  {
    if (v0 == QOS_CLASS_BACKGROUND)
    {
      return 9;
    }

    return -1;
  }

  if (v0 == QOS_CLASS_USER_INTERACTIVE)
  {
    return 33;
  }

  if (v0 != QOS_CLASS_USER_INITIATED)
  {
    if (v0 == QOS_CLASS_UTILITY)
    {
      return 17;
    }

    return -1;
  }

  return 25;
}

void sub_18843EA28(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v10 = objc_msgSend_objectForKey_(*(*(a1 + 32) + 40), v9, v7);
  v13 = objc_msgSend_length(v7, v11, v12);
  v14 = &v35 - ((v13 + 17) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 64;
  v15 = v13 + 1;
  objc_msgSend_getCString_maxLength_encoding_(v7, v16, (v14 + 1), v13 + 1, 1);
  v14[v15] = 0;
  v17 = sqlite3_bind_parameter_index(*(*(a1 + 32) + 16), v14);
  if (v17)
  {
    v19 = v17;
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = objc_msgSend_unsignedLongValue(v10, v20, v21);
      }

      else
      {
        v24 = v10;
        if (v8)
        {
          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
          v36 = v24;
          v27 = objc_msgSend_tableForReferenceProperty_(WeakRetained, v26, v24);

          v37[0] = 0;
          v35 = v27;
          v29 = objc_msgSend_databaseReferenceIDForSearchingForReferent_error_(v27, v28, v8, v37);
          v30 = v37[0];
          v31 = v37[0];

          if (v31 && (objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x1E696ABC0], v32, v31) & 1) == 0)
          {
            objc_storeStrong((*(*(a1 + 40) + 8) + 40), v30);
          }

          v24 = v36;
        }

        else
        {
          v29 = 0;
        }

        v22 = 1;
        v8 = v29;
      }
    }

    else
    {
      v22 = 0;
    }

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      goto LABEL_17;
    }

    v23 = objc_msgSend_bindValue_ofType_atIndex_(*(a1 + 32), v18, v8, v22, v19);
  }

  else
  {
    v23 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v18, @"CKErrorDomain", 1, @"No binding index for %@", v7);
  }

  v33 = *(*(a1 + 40) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v23;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
LABEL_17:
    *a4 = 1;
  }
}

void sub_18843ED9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18843F074(uint64_t a1, const char *a2, void *a3, _BYTE *a4)
{
  v6 = objc_msgSend_finishInitializing(a3, a2, a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a4 = 1;
  }
}

id CKSQLiteContainerAttribution_ActivitySharing(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id sub_18843F254(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_path(a1, a2, a3);
  v6 = objc_msgSend_CKSanitizedPath(v3, v4, v5);

  return v6;
}

void sub_18843F70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void static CKDeviceCapability.fromSqliteRepresentations(_:)(uint64_t a1)
{
  v1 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  v3 = a1 + 40;
  v12 = a1 + 40;
LABEL_2:
  v4 = (v3 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_12;
    }

    v6 = *(v4 - 1);
    v7 = *v4;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v9 = MEMORY[0x18CFD5010](v6, v7);
    v10 = [ObjCClassFromMetadata fromSqliteRepresentation_];
    sub_18840370C();

    ++v1;
    v4 += 2;
    if (v6)
    {
      MEMORY[0x18CFD52F0]();
      v11 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v11 >> 1)
      {
        sub_1883F8DD4(v11);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1 = v5;
      v3 = v12;
      goto LABEL_2;
    }
  }
}

void static CKDeviceCapability.fromSqliteRepresentation(_:)()
{
  sub_1883F8AF0();
  v0 = type metadata accessor for String.Encoding();
  sub_1883F70DC();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  String.data(using:allowLossyConversion:)();
  v7 = v6;
  (*(v2 + 8))(v5, v0);
  if (v7 >> 60 != 15)
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_18843FDB8();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v8 = v22.level - 1;
    if ((*&v22.level - 1) > 2)
    {
    }

    else
    {
      sub_188440388();
      v10 = v9;
      v12 = v11;
      sub_188440388();
      v14 = v13;
      v16 = v15;

      type metadata accessor for CKDeviceCapability(v17);
      v22.level = v8;
      v22.name._countAndFlagsBits = v10;
      v22.name._object = v12;
      v22.value._countAndFlagsBits = v14;
      v22.value._object = v16;
      CKDeviceCapability.init(_:)(v18, &v22);
    }

    v19 = sub_1883F958C();
    sub_18841BA74(v19, v20);
  }

  sub_1883F8178();
}

unint64_t sub_18843FDB8()
{
  result = qword_1EA90C140;
  if (!qword_1EA90C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C140);
  }

  return result;
}

double sub_18843FE0C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_18843FE54(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_18843FE54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_18844E6FC(&qword_1EA90D848, &qword_1886F8840);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  sub_188400B68(a1, a1[3]);
  sub_1884401E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1883FE944(a1);
  }

  v23 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v20 = v10;
  v21 = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_1883FE944(a1);
  v18 = v20;
  *a2 = v9;
  a2[1] = v18;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v16;
  return result;
}

char *sub_18844006C(void *a1, const char *a2)
{
  v2 = objc_msgSend_dataUsingEncoding_(a1, a2, 1);
  v5 = objc_msgSend_mutableCopy(v2, v3, v4);

  v8 = objc_msgSend_length(v5, v6, v7);
  if (v8)
  {
    v9 = v5;
    v12 = objc_msgSend_mutableBytes(v9, v10, v11);
    if (v12)
    {
      do
      {
        v13 = *v12;
        v14 = (v13 - 48) >= 0xA && (v13 & 0xFFFFFFDF) - 65 >= 0x1A;
        if (v14 && v13 != 32 && v13 != 45)
        {
          *v12 = 95;
        }

        ++v12;
        --v8;
      }

      while (v8);
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v8 = objc_msgSend_initWithData_encoding_(v15, v16, v5, 1);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

unint64_t sub_1884401E4()
{
  result = qword_1EA90C170;
  if (!qword_1EA90C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C170);
  }

  return result;
}

uint64_t sub_18844024C(char a1)
{
  if (!a1)
  {
    return 0x6C6576656CLL;
  }

  if (a1 == 1)
  {
    return 1701667182;
  }

  return 0x65756C6176;
}

_BYTE *_s32JsonSerializableDeviceCapabilityV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x188440360);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_188440388()
{
  sub_1883F7FF0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  do
  {
    v6 = v5 - 1;
    if (v5 < 1)
    {
      break;
    }

    sub_188440414(v5, v3, v1);

    v7 = sub_1883F7BC0();
    MEMORY[0x18CFD51F0](v7);
    v5 = v6;
  }

  while (!v8);
  sub_1883FDCC0();
}

uint64_t sub_188440414(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = a3;
  if ((a3 & 0x1000000000000000) != 0)
  {
LABEL_5:
    String.UTF8View._foreignIndex(_:offsetBy:limitedBy:)();
  }

  sub_1883FEFEC();
  return sub_1884404C4(v5, v6, v7, v4);
}

uint64_t sub_1884404C4(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  if ((a2 & 0xC) == 4 << v8)
  {
    result = sub_188518088(a2, a3, a4);
    v6 = result;
  }

  if ((v7 & 0xC) == v9)
  {
    result = sub_188518088(v7, a3, a4);
    v7 = result;
  }

  v10 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 >> 14 <= 4 * v10 && v6 >> 14 >= v7 >> 14)
  {
    return v7;
  }

  __break(1u);
  return result;
}

void __swiftcall CKDeviceCapability.init(_:)(CKDeviceCapability *__return_ptr retstr, CloudKit::CKDeviceCapability *a2)
{
  sub_1883F8AF0();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = &v8[OBJC_IVAR___CKDeviceCapability__wrapped];
  v10 = *&v8[OBJC_IVAR___CKDeviceCapability__wrapped];
  v11 = *&v8[OBJC_IVAR___CKDeviceCapability__wrapped + 8];
  v12 = *&v8[OBJC_IVAR___CKDeviceCapability__wrapped + 16];
  *v9 = v3;
  *(v9 + 1) = v4;
  *(v9 + 2) = v5;
  *(v9 + 3) = v6;
  *(v9 + 4) = v7;
  v13 = v8;
  sub_1884406C8(v10, v11, v12);

  sub_1883F8178();
}

id sub_188440660()
{
  v1 = &v0[OBJC_IVAR___CKDeviceCapability__wrapped];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  sub_1884406C8(0, 0, 0);
  v3.receiver = v0;
  v3.super_class = CKDeviceCapability;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1884406C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_188440C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_188440C18(void *a1)
{
  if (a1)
  {
    if ((a1[19] & 8) == 0)
    {
      a1 = a1[17];
    }

    a1 = a1;
    v1 = vars8;
  }

  return a1;
}

void sub_188440F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188440FD8(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    v4 = objc_msgSend_importantUserRecordAccessQueue(CKContainer, a2, a3);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1886BE5B4;
    v5[3] = &unk_1E70BF2E0;
    objc_copyWeak(&v7, (a1 + 56));
    v6 = *(a1 + 32);
    dispatch_sync(v4, v5);

    objc_destroyWeak(&v7);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1884410B8(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v10) = 0;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Account access authorization refresh completed.", &v10, 2u);
  }

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(*(a1 + 32) + 8) + 24);
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEFAULT, "Notifying of account change, due to the authorization of %zu containers changing.", &v10, 0xCu);
    }

    v7 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v4, v5);
    v8 = CKAccountChangedNotificationName();
    objc_msgSend_postNotificationName_object_(v7, v9, v8, 0);
  }
}

void sub_188441344(uint64_t a1)
{
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEFAULT, "Authorization change notification received for all containers", v21, 2u);
  }

  v5 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v3, v4);
  objc_sync_enter(v5);
  if (!v5)
  {
    goto LABEL_9;
  }

  if ((v5[8] & 1) == 0)
  {
    v5[9] = 1;
LABEL_9:
    v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v6, v7);
    v11 = *(a1 + 32);
    v14 = sub_1884239B0(v11, v12, v13);
    objc_msgSend_addObserver_selector_name_object_(v10, v15, v11, sel_connectionBecameInvalid_, @"CKXPCConnectionInterrupted", v14);

    v18 = sub_1884239B0(*(a1 + 32), v16, v17);
    objc_msgSend_activate(v18, v19, v20);

    objc_sync_exit(v5);
    goto LABEL_10;
  }

  objc_sync_exit(v5);

  objc_msgSend___refreshAccountAccessAuthorization(v5, v8, v9);
LABEL_10:
}

id sub_188441668(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_singletonInstanceInGroup_(CKSQLiteKeyValueStore, a2, a1);
  if (!v4)
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v2, v3);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, "CKSQLiteKeyValueStore *keyValueStoreForTableGroup(CKSQLiteTableGroup *__strong)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v9, v8, @"CKSQLiteKeyValueStorage.m", 117, @"CKSQLiteKeyValueStorage method invoked on a table group that does not have a key value store");
  }

  return v4;
}

uint64_t CKBootDate()
{
  v0 = MEMORY[0x1E695DF00];
  v3 = CKBootTime();

  return objc_msgSend_dateWithTimeIntervalSince1970_(v0, v1, v2, v3);
}

id CKSQLiteContainerAttribution_Health(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

id CKSQLiteContainerAttribution_CloudDocs(objc_super *a1, const char *a2)
{
  v2 = objc_msgSendSuper(a1, a2);

  return v2;
}

uint64_t sub_188442124(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    hasAssetBackedDeltas = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hasAssetBackedDeltas = objc_msgSend_hasAssetBackedDeltas(v3, v6, v7);
    }

    else
    {
      hasAssetBackedDeltas = 0;
    }
  }

  return hasAssetBackedDeltas;
}

id sub_18844227C(sqlite3_stmt *a1, int a2, void *a3)
{
  v5 = a3;
  if (sqlite3_bind_null(a1, a2))
  {
    v7 = objc_msgSend_sqlErrorWithMessage_(v5, v6, @"Failed to bind NULL value");
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1884425A0()
{
  sub_1884137B8();
  if (v3)
  {
    v4 = sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
    sub_1883FD7E8(v4);
  }

  if (v2)
  {
    sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = v1;
  v6 = sub_1883F7BC0();
  sub_188442678(v6, v7, v0);
}

uint64_t sub_188442654(unint64_t a1)
{
  if (a1 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_188442678(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = a3;
  v5 = v3;
  v20 = [v3 state];
  if (a1)
  {
    v8 = sub_1883F4C9C(a1);
    if (v8)
    {
      v9 = v8;
      v22 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v9 < 0)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      v18 = v3;
      v10 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x18CFD59D0](v10, a1);
        }

        else
        {
          v11 = *(a1 + 8 * v10 + 32);
        }

        v12 = v11;
        ++v10;
        [objc_allocWithZone(CKSyncEnginePendingRecordZoneChange) initWithRecordID:v11 type:0];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v9 != v10);
      v5 = v18;
      v4 = a3;
    }
  }

  sub_1883F4C5C(0, &qword_1EA90C7C0, off_1E70BA890);
  sub_1883F84DC();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 *v4];

  v14 = [v5 state];
  if (a2)
  {
    v15 = sub_1883F4C9C(a2);
    if (v15)
    {
      v16 = v15;
      v22 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v16 & 0x8000000000000000) == 0)
      {
        while (1)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            MEMORY[0x18CFD59D0](0, a2);
          }

          else
          {
            v17 = *(a2 + 32);
          }

          sub_188410C80();
          [objc_allocWithZone(CKSyncEnginePendingRecordZoneChange) initWithRecordID:&v22 type:1];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          sub_1883F86B8();
          specialized ContiguousArray._endMutation()();
        }
      }

      goto LABEL_22;
    }

    v4 = a3;
  }

  sub_1883F84DC();
  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v14 *v4];
}

id *sub_188442930(id *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (!a2)
  {
    result = objc_msgSend_periodicExpire(result[4], 0, a3);
  }

  *(v3[4] + 88) = 0;
  return result;
}

uint64_t sub_188442B84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_18844E6FC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_188442BE8()
{
}

uint64_t sub_188442C14(uint64_t a1)
{

  return sub_1883F90F4(a1, 0, 1, v1);
}

uint64_t sub_188442C30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_18844E6FC(a3, a4);
  sub_1883F7B50();
  v5 = sub_1883F7EE0();
  v6(v5);
  return a2;
}

uint64_t sub_188442C8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_18840378C(a1, a2, a3, a4);
  sub_1883F7B50();
  (*(v6 + 16))(v4, v5);
  return v4;
}

void sub_188442DC0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (__sTestOverridesAvailable)
  {
    v5 = @"TEST_AccountInfoValidationCounter";
  }

  else
  {
    v5 = @"AccountInfoValidationCounter";
  }

  v9 = v3;
  v7 = objc_msgSend_integerForKey_(v3, v4, v5);
  if (!v7)
  {
    if (__sTestOverridesAvailable)
    {
      v8 = @"TEST_AccountInfoValidationCounter";
    }

    else
    {
      v8 = @"AccountInfoValidationCounter";
    }

    v7 = 1;
    objc_msgSend_setInteger_forKey_(v9, v6, 1, v8);
  }

  *(*(a1 + 32) + 64) = v7;
}

uint64_t sub_188442E80()
{
}

uint64_t sub_188442EA0()
{
  v1 = *(v0 + 128);
  if ([*(v1 + 16) needsToFetchDatabaseChanges])
  {
    return 1;
  }

  v2 = CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter();
  v3 = sub_1883F4C9C(v2);

  if (v3 || sub_188427168() || sub_1884EFAA0())
  {
    return 1;
  }

  else
  {
    return [*(v1 + 16) needsToSaveDatabaseSubscription];
  }
}

uint64_t sub_188442F3C(uint64_t a1)
{
}

uint64_t sub_188442F58()
{
}

uint64_t sub_188442FB8()
{
  sub_1883FD7A0();
  sub_1883FC738();
  CKSyncEngine.State.pendingRecordZoneChanges.getter();
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v24 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = 32;
    do
    {
      v6 = *(v2 + v5);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 += 16;
      --v3;
    }

    while (v3);

    v7 = v24;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = sub_188443204(v7);
  CKSyncEngine.State.pendingDatabaseChanges.getter();
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = (v10 + 40);
    do
    {
      v13 = *(v12 - 1);
      if (*v12 == 1)
      {
        v14 = v13;
      }

      else
      {
        v15 = [v13 zoneID];
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v12 += 16;
      --v11;
    }

    while (v11);

    v16 = v4;
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v0[2] = sub_1884043A8(v16);
  v17 = CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter();
  v18 = sub_1884043A8(v17);
  sub_1884433B0(v18);
  v0[4] = sub_1883F5DF8(v0[2]);

  v0[5] = sub_188510860(v8);

  v19 = swift_task_alloc();
  v0[6] = v19;
  *v19 = v0;
  v19[1] = sub_1884F0610;
  sub_1883FE860();
  sub_1883F9968();

  return sub_1884E5CF0(v20, v21);
}

__n128 sub_188443300(__n128 *a1)
{
  v1[10].n128_u64[0] = a1;
  result = v1[4];
  a1[1] = result;
  return result;
}

id sub_188443320(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void sub_1884433B0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1883FDE28();
    sub_1883F4C5C(v2, v3, v4);
    sub_1883FDE28();
    sub_1883F66E4(v5, v6, v7);
    sub_1883F84DC();
    Set.Iterator.init(_cocoa:)();
    v1 = v25[1];
    v8 = v25[2];
    v9 = v25[3];
    v10 = v25[4];
    v11 = v25[5];
  }

  else
  {
    v10 = 0;
    sub_1883F9AD4();
    v8 = (v1 + 56);
    v9 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(v12 << v14);
    }

    else
    {
      v15 = v12;
    }

    v11 = (v15 & *(v1 + 56));
  }

  v16 = (v9 + 64) >> 6;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v17 = v10;
    v18 = v10;
    if (!v11)
    {
      break;
    }

LABEL_12:
    sub_1883FA4B8();
    v21 = (v20 & v19);
    v23 = *(*(v1 + 48) + ((v18 << 9) | (8 * v22)));
    if (!v23)
    {
LABEL_18:
      v24 = sub_1883F7BC0();
      sub_1883F70C4(v24);
      return;
    }

    while (1)
    {
      sub_188501374(v25, v23, &qword_1ED4B5CC8, off_1E70BA650, &qword_1EA90E598, &qword_1886FB740);

      v10 = v18;
      v11 = v21;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        swift_dynamicCast();
        v23 = v25[0];
        v18 = v10;
        v21 = v11;
        if (v25[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v18 = (v17 + 1);
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v16)
    {
      goto LABEL_18;
    }

    ++v17;
    if (v8[v18])
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Int sub_1884435B0()
{
  *(v0 + 6368) = 0;

  return sub_18850C174();
}

uint64_t sub_1884435D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1883F98A8();
  sub_1884008A8();
  Strong = swift_weakLoadStrong();
  v15[5] = Strong;
  if (!Strong)
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v43 = v15[4];
    v44 = type metadata accessor for Logger();
    sub_1883F85F4(v44, qword_1EA90C9F8);

    v45 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      sub_1883F9984();
      sub_1883F8C00();
      sub_18840531C();
      *v43 = 136315138;
      v46 = sub_1883FE43C();
      sub_1883FB598(v46, v47, v48, v49, v50, v51);
      sub_1883FE2FC();
      *(v43 + 4) = v16;
      sub_1883F831C();
      _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
      sub_1883F8EAC();
      sub_1883F82B8();
    }

    goto LABEL_23;
  }

  v18 = Strong;
  if (!sub_1883F4C9C(v15[2]) && !sub_1883F4C9C(v15[3]))
  {
LABEL_22:

LABEL_23:
    sub_1883F90C4();
    sub_1883FEB30();

    return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }

  sub_1884043A8(v19);
  v20 = sub_1884F481C();
  v21 = sub_1883F4C9C(v20);
  v22 = MEMORY[0x1E69E7CC0];
  if (!v21)
  {
LABEL_12:
    v30 = v15[4];
    sub_1884F041C(v22, v14);
    sub_1883F5DF8(v31);
    sub_1884F481C();

    if (*(v30 + 160))
    {
      v32 = v15[3];
      sub_1883F7E80();
      v33 = swift_allocObject();
      v15[6] = v33;
      v33[2] = v14;
      v33[3] = v32;
      v33[4] = v18;
      a10 = sub_188442F84(&unk_1886FAFC0);

      v34 = swift_task_alloc();
      v15[7] = v34;
      *v34 = v15;
      v34[1] = sub_1884E5D1C;
      sub_1883FEB30();

      return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
    }

    goto LABEL_22;
  }

  a11 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v21 & 0x8000000000000000) == 0)
  {
    a10 = v14;
    v24 = 0;
    v25 = v15[3];
    v26 = v25 & 0xC000000000000001;
    v27 = v25 + 32;
    do
    {
      if (v26)
      {
        v28 = MEMORY[0x18CFD59D0](v24, v15[3]);
      }

      else
      {
        v28 = *(v27 + 8 * v24);
      }

      v29 = v28;
      ++v24;
      [v28 zoneID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v21 != v24);
    v22 = a11;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1884438DC()
{

  sub_1883F7E80();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_188443920(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return sub_188405594(sub_1884C848C);
}

uint64_t sub_18844393C()
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883F877C();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  sub_188428FFC(v1);
  sub_1884F4464();
  sub_188404D5C();

  return sub_188443A2C(v3, v4, v5, v6, v7);
}

void *sub_1884439D8(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x50uLL);
}

uint64_t sub_1884439F0()
{

  return swift_arrayDestroy();
}

uint64_t sub_188443A0C()
{
}

uint64_t sub_188443A2C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  *(v5 + 48) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_188443A58, 0, 0);
}

uint64_t sub_188443A58()
{
  sub_1883FB4AC();
  if (*(v0 + 48))
  {
    v1 = *(v0 + 56);
    swift_getObjectType();
    v2 = *(v1 + 8);
    swift_unknownObjectRetain();
    v9 = (v2 + *v2);
    v3 = swift_task_alloc();
    v4 = sub_188403070(v3);
    *v4 = v5;
    v4[1] = sub_1884F0FFC;
    v6 = sub_1883FF484(*(v0 + 24));

    return v9(v6);
  }

  else
  {
    **(v0 + 16) = 0;
    sub_1883F816C();

    return v8();
  }
}

uint64_t sub_188443BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1884FEB54;

  return sub_1884FE6A4(a1, a2, a3);
}

void sub_188443C7C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_188443C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v398 = v14;
  if (__sTestOverridesAvailable == 1)
  {
    v16 = *(v14 + 560);
    v17 = *(v14 + 552);
    sub_18841FC48();
    v19 = sub_1884E6148() == v17 && v18 == v16;
    if (v19)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v21 = [objc_opt_self() defaultCenter];
    if (qword_1EA90CBD0 != -1)
    {
      swift_once();
    }

    [v21 postNotificationName:qword_1EA919C98 object:*(v14 + 592)];
  }

LABEL_12:
  v22 = *(v14 + 728);
  v23 = *(v14 + 624);
  sub_1884F4464();
  sub_18841D168(v24, v25, v26, v27);
  sub_1884F4464();
  sub_18841D168(v28, v29, v30, v31);
  v32 = sub_1883F971C(v22, 1, v23);
  sub_1883F9FEC(v22, &unk_1EA90D7B0, &dword_1886F8780);
  if (v32 == 1)
  {
    v33 = *(v14 + 720);
    v34 = *(v14 + 624);
    v35 = *(v14 + 592);
    v36 = OBJC_IVAR____TtC8CloudKit10SyncEngine_earliestStartDateForSchedulerActivities;
    sub_1883FF050();
    swift_beginAccess();
    sub_18841D168(v35 + v36, v33, &unk_1EA90D7B0, &dword_1886F8780);
    v37 = sub_1883F9014();
    if (sub_1883F971C(v37, v38, v34) == 1)
    {
      sub_1883F9FEC(*(v14 + 720), &unk_1EA90D7B0, &dword_1886F8780);
    }

    else
    {
      v39 = *(*(v14 + 632) + 32);
      v39(*(v14 + 680), *(v14 + 720), *(v14 + 624));
      Date.timeIntervalSinceNow.getter();
      if (v40 <= 0.0)
      {
        (*(*(v14 + 632) + 8))(*(v14 + 680), *(v14 + 624));
      }

      else
      {
        sub_188404C38();
        if (!v19)
        {
          sub_1883F7480(&qword_1EA90C9F0);
        }

        v41 = type metadata accessor for Logger();
        sub_1883F85F4(v41, qword_1EA90C9F8);

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.debug.getter();

        v44 = os_log_type_enabled(v42, v43);
        v45 = *(v14 + 736);
        if (v44)
        {
          sub_1883F9984();
          v15 = sub_1884061C4();
          *__src = v15;
          dword_1886F8780 = 136315138;
          v46 = sub_1883FE43C();
          sub_1884F4538(v46, v47, v48, v49, v50, v51, v52, v53, v367, v374, v381, log, v388, v392);
          sub_1883F9B0C();
          unk_1886F8784 = 0x1EA90C000;
          sub_188427428(&dword_1883EA000, v54, v55, "%s setting earliestStartDate based on the last provided earliestStartDate");
          sub_188404FD4();
          sub_1883FD784();
        }

        sub_1883F9FEC(v45, &unk_1EA90D7B0, &dword_1886F8780);
        v56 = *(v14 + 736);
        v39(v56, *(v14 + 680), *(v14 + 624));
        sub_188442C14(v56);
      }
    }
  }

  v57 = *(*(v14 + 592) + 144);
  v58 = objc_opt_self();
  v59 = &selRef_setStringValue_forKey_;
  v60 = [v58 sharedScheduler];
  v61 = sub_1883F7EE0();
  v62 = MEMORY[0x18CFD5010](v61);
  v63 = [v60 activityForActivityIdentifier_];

  v393 = v58;
  if (!v63)
  {
    sub_188404C38();
    if (!v19)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v388 = sub_1884F44F4();
    sub_1883F85F4(v388, qword_1EA90C9F8);

    v66 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1884F49A0();

    if (sub_1883F9084())
    {
      v67 = *(v14 + 560);
      sub_18840FB34();
      sub_18840C660();
      sub_1884F45EC();
      *v15 = 136315394;
      v68 = sub_1883FE43C();
      sub_1884F4538(v68, v69, v70, v71, v72, v73, v74, v75, v367, v374, v381, log, v388, v58);
      sub_1884F44B4();

      *(v15 + 4) = v58;
      v76 = sub_1883F9AC0();
      v77 = v67;
      v59 = &selRef_setStringValue_forKey_;
      *(v15 + 14) = sub_1883FE340(v76, v77, v78);
      sub_1884F464C(&dword_1883EA000, v66, v60, "%s creating new activity %s", v368, v375);
      sub_1884439F0();
      sub_1884037D8();
      sub_1883FC7E4();
    }

    v79 = *(v14 + 576);
    objc_allocWithZone(CKSchedulerActivity);

    v80 = v57;
    v81 = sub_1883F7E8C();
    v84 = sub_1884F2B14(v81, v82, v83, v79);
    if (!v84)
    {
      sub_188404C38();
      if (!v19)
      {
        sub_1883F7480(&qword_1EA90C9F0);
      }

      sub_1883F85F4(v388, qword_1EA90C9F8);
      v147 = Logger.logObject.getter();
      v148 = static os_log_type_t.fault.getter();
      v149 = os_log_type_enabled(v147, v148);
      v150 = *(v14 + 736);
      if (v149)
      {
        v151 = swift_slowAlloc();
        *v151 = 0;
        _os_log_impl(&dword_1883EA000, v147, v148, "BUG IN CLOUDKIT: No activity to submit in engine", v151, 2u);
        sub_1883F82B8();
      }

      v152 = v150;
      goto LABEL_105;
    }

    v64 = v84;
    goto LABEL_40;
  }

  v64 = v63;
  v65 = [v64 nullableContainer];
  if (v65)
  {
  }

  else
  {
    [v64 setContainer_];
  }

  v85 = *(v14 + 560);
  v86 = *(v14 + 552);
  v87 = [v58 sharedScheduler];
  v88 = MEMORY[0x18CFD5010](v86, v85);
  LOBYTE(v86) = [v87 hasPendingActivityWithActivityIdentifier_];

  if ((v86 & 1) == 0)
  {
    sub_188404C38();
    if (!v19)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v92 = sub_1884F469C();
    sub_1883F85F4(v92, qword_1EA90C9F8);

    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = *(v14 + 560);
      sub_18840FB34();
      *__src = sub_18842D4DC();
      *v58 = 136315394;
      v96 = sub_1883FE43C();
      sub_1884F4538(v96, v97, v98, v99, v100, v101, v102, v103, v367, v374, v381, log, v388, v58);
      sub_1883F8020();

      v104 = sub_1884F44D8();
      v59 = &selRef_setStringValue_forKey_;
      *(v58 + 14) = sub_1883FE340(v104, v95, v105);
      sub_1884F48F8(&dword_1883EA000, v106, v107, "%s asked to submit an activity which the scheduler knows about, but which is not pending. Gonna submit that activity %s");
      sub_1884038F4();
      sub_1883FC7E4();
      sub_1883FD784();
    }

    goto LABEL_40;
  }

  v89 = *(v14 + 624);
  sub_18841D168(*(v14 + 736), *(v14 + 712), &unk_1EA90D7B0, &dword_1886F8780);
  v90 = sub_1883F9014();
  if (sub_1883F971C(v90, v91, v89) != 1)
  {
    (*(*(v14 + 632) + 32))(*(v14 + 672), *(v14 + 712), *(v14 + 624));
    v109 = [v64 earliestStartDate];
    v388 = v64;
    if (!v109)
    {
      sub_188404C38();
      if (!v19)
      {
        sub_1883F7480(&qword_1EA90C9F0);
      }

      v153 = *(v14 + 672);
      v154 = *(v14 + 640);
      v155 = *(v14 + 632);
      v156 = *(v14 + 624);
      v157 = sub_1884F469C();
      sub_1883FDE5C(v157, qword_1EA90C9F8);
      (*(v155 + 16))(v154, v153, v156);

      v158 = Logger.logObject.getter();
      v159 = static os_log_type_t.debug.getter();

      v160 = os_log_type_enabled(v158, v159);
      v161 = *(v14 + 672);
      v162 = *(v14 + 640);
      v163 = *(v14 + 632);
      v164 = *(v14 + 624);
      if (v160)
      {
        v165 = *(v14 + 560);
        v376 = *(v14 + 552);
        v166 = sub_1883FE540();
        v383 = swift_slowAlloc();
        *__src = v383;
        *v166 = 136315650;
        v167 = sub_1883FE43C();
        sub_1884F4538(v167, v168, v169, v170, v171, v172, v173, v174, v367, v376, v383, log, v388, v393);
        log = v161;
        sub_1884F44B4();

        *(v166 + 4) = v161;
        *(v166 + 12) = 2080;
        *(v166 + 14) = sub_1883FE340(v374, v165, __src);
        *(v166 + 22) = 2080;
        sub_1883F8C4C();
        sub_1883FE8FC(v175, v176, MEMORY[0x1E6969570]);
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_1883F90D4();
        v177 = *(v163 + 8);
        v177(v162, v164);
        v178 = sub_1883FE340(v162, v161, __src);

        *(v166 + 24) = v178;
        _os_log_impl(&dword_1883EA000, v158, v159, "%s re-submitting activity %s and overwriting nil earliest start date to new date (%s)", v166, 0x20u);
        swift_arrayDestroy();
        sub_1883F7B60();
        v59 = &selRef_setStringValue_forKey_;
        sub_1883F7B60();
        v64 = v388;

        v177(v161, v164);
      }

      else
      {

        v216 = *(v163 + 8);
        v217 = v162;
        v64 = v388;
        v216(v217, v164);
        v218 = sub_1883F712C();
        (v216)(v218);
      }

      goto LABEL_91;
    }

    v110 = v109;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    sub_188404C38();
    if (!v19)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    log = *(v14 + 672);
    v111 = *(v14 + 664);
    v112 = *(v14 + 656);
    v113 = *(v14 + 648);
    v114 = *(v14 + 632);
    v115 = *(v14 + 624);
    v116 = sub_1884F4680();
    sub_1883FDE5C(v116, qword_1EA90C9F8);
    v117 = *(v114 + 16);
    v117(v112, v111, v115);
    v117(v113, log, v115);

    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.debug.getter();

    v120 = os_log_type_enabled(v118, v119);
    v121 = *(v14 + 648);
    v122 = *(v14 + 632);
    v123 = *(v14 + 624);
    if (v120)
    {
      v124 = *(v14 + 560);
      v125 = *(v14 + 552);
      v369 = *(v14 + 648);
      v126 = swift_slowAlloc();
      v382 = swift_slowAlloc();
      *__src = v382;
      *v126 = 136315906;
      v127 = sub_1883FE43C();
      sub_1884F4538(v127, v128, v129, v130, v131, v132, v133, v134, v369, v374, v382, v118, v64, v393);
      LODWORD(v374) = v119;
      sub_1884F44B4();

      *(v126 + 4) = v119;
      *(v126 + 12) = 2080;
      *(v126 + 14) = sub_1883FE340(v125, v124, __src);
      *(v126 + 22) = 2080;
      sub_1883F8C4C();
      sub_1883FE8FC(v135, v136, MEMORY[0x1E6969570]);
      sub_1883FF6E8();
      v137 = dispatch thunk of CustomStringConvertible.description.getter();
      v139 = v138;
      v140 = *(v122 + 8);
      v141 = sub_1883FB5D4();
      v140(v141);
      v142 = sub_1883FE340(v137, v139, __src);

      *(v126 + 24) = v142;
      *(v126 + 32) = 2080;
      sub_1883FF6E8();
      dispatch thunk of CustomStringConvertible.description.getter();
      (v140)(v367, v123);
      v143 = sub_1884F4640();
      v146 = sub_1883FE340(v143, v144, v145);

      *(v126 + 34) = v146;
      _os_log_impl(&dword_1883EA000, log, v119, "%s re-submitting activity %s and overwriting earliestStartDate (%s to new date (%s)", v126, 0x2Au);
      swift_arrayDestroy();
      sub_1883F7B60();
      sub_1883FC7E4();
    }

    else
    {

      v140 = *(v122 + 8);
      (v140)(v121, v123);
      v179 = sub_1883FB5D4();
      v140(v179);
    }

    v59 = &selRef_setStringValue_forKey_;
    sub_1884F4640();
    v180 = static Date.< infix(_:_:)();
    v181 = sub_1883FB5D4();
    v140(v181);
    v182 = sub_1883F84DC();
    v140(v182);
    v64 = v388;
    if ((v180 & 1) == 0)
    {
      goto LABEL_58;
    }

LABEL_40:
    v108 = 1;
    goto LABEL_92;
  }

  sub_1883F9FEC(*(v14 + 712), &unk_1EA90D7B0, &dword_1886F8780);
LABEL_58:
  sub_1884C7AD8(__src);
  if (v396)
  {
    v190 = v397;
    sub_1884F4958((v14 + 272), v183, v184, v185, v186, v187, v188, v189, v367, v374, v381, log, v388, v393);
    v191 = v190;
    sub_1883F9FEC(v14 + 272, &unk_1EA90E4D0, &unk_1886FB460);
  }

  else
  {
    sub_1884F4958((v14 + 368), v183, v184, v185, v186, v187, v188, v189, v367, v374, v381, log, v388, v393);
    sub_1883F9FEC(v14 + 368, &unk_1EA90E4D0, &unk_1886FB460);
    v191 = *MEMORY[0x1E696A3A8];
  }

  v192 = [v64 fileProtectionType];
  v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v195 = v194;
  if (v193 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v195 == v196)
  {
  }

  else
  {
    v193 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v193 & 1) == 0)
    {
      sub_188404C38();
      if (!v19)
      {
        sub_1883F7480(&qword_1EA90C9F0);
      }

      v198 = sub_1884F44F4();
      sub_1883F85F4(v198, qword_1EA90C9F8);

      v199 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_1884F49A0();

      if (os_log_type_enabled(v199, v195))
      {
        sub_1883FB634();
        sub_18840C660();
        sub_1884F45EC();
        *v193 = 136315394;
        v200 = sub_1883FE43C();
        sub_1884F4538(v200, v201, v202, v203, v204, v205, v206, v207, v367, v374, v381, log, v388, v393);
        sub_1884F44C0();
        *(v193 + 4) = v59;
        v208 = sub_1883F9AC0();
        v64 = v388;
        *(v193 + 14) = sub_1883FE340(v208, log, v209);
        sub_1884F464C(&dword_1883EA000, v199, v195, "%s re-submitting activity %s and overwriting file protection type", v370, v377);
        sub_1884439F0();
        sub_1884037D8();
        sub_1883FC7E4();
      }

LABEL_90:
LABEL_91:
      v108 = 1;
      goto LABEL_92;
    }
  }

  if (*(v14 + 760) == 1)
  {
    goto LABEL_73;
  }

  v212 = sub_1884C7D1C(v210, v211);
  v213 = [v64 xpcActivityCriteriaOverrides];
  if (!v212)
  {
    if (v213)
    {
      sub_188404C38();
      if (!v19)
      {
        sub_1883F7480(&qword_1EA90C9F0);
      }

      v219 = sub_1884F44F4();
      sub_1883F85F4(v219, qword_1EA90C9F8);

      v220 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_1884F49A0();

      if (os_log_type_enabled(v220, v195))
      {
        sub_1883FB634();
        sub_18840C660();
        sub_1884F45EC();
        *v193 = 136315394;
        v221 = sub_1883FE43C();
        sub_1884F4538(v221, v222, v223, v224, v225, v226, v227, v228, v367, v374, v381, log, v388, v393);
        sub_1884F44C0();
        *(v193 + 4) = v59;
        v229 = sub_1883F9AC0();
        v64 = v388;
        *(v193 + 14) = sub_1883FE340(v229, log, v230);
        sub_1884F464C(&dword_1883EA000, v220, v195, "%s re-submitting activity %s and removing criteria overrides", v371, v378);
        sub_1884439F0();
        sub_1884037D8();
        sub_1883FC7E4();
      }

      swift_unknownObjectRelease();

      goto LABEL_91;
    }

    goto LABEL_73;
  }

  if (!v213)
  {
    sub_188404C38();
    if (!v19)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v231 = sub_1884F44F4();
    sub_1883F85F4(v231, qword_1EA90C9F8);

    v199 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1884F49A0();

    if (os_log_type_enabled(v199, v195))
    {
      sub_1883FB634();
      sub_18840C660();
      sub_1884F45EC();
      *v193 = 136315394;
      v232 = sub_1883FE43C();
      sub_1884F4538(v232, v233, v234, v235, v236, v237, v238, v239, v367, v374, v381, log, v388, v393);
      sub_1884F44C0();
      *(v193 + 4) = v59;
      v240 = sub_1883F9AC0();
      v64 = v388;
      *(v193 + 14) = sub_1883FE340(v240, log, v241);
      sub_1884F464C(&dword_1883EA000, v199, v195, "%s re-submitting activity %s with criteria overrides", v372, v379);
      sub_1884439F0();
      sub_1884037D8();
      sub_1883FC7E4();
    }

    swift_unknownObjectRelease();

    goto LABEL_90;
  }

  v214 = sub_1883FF6E8();
  if (xpc_equal(v214, v215))
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_73:

    v108 = 0;
    goto LABEL_92;
  }

  sub_188404C38();
  if (!v19)
  {
    sub_1883F7480(&qword_1EA90C9F0);
  }

  v352 = sub_1884F4680();
  sub_1883F85F4(v352, qword_1EA90C9F8);

  v353 = Logger.logObject.getter();
  v354 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v353, v354))
  {
    v384 = *(v14 + 552);
    logb = *(v14 + 560);
    v355 = sub_18840FB34();
    *__src = sub_18840BE14();
    *v355 = 136315394;
    v356 = sub_1883FE43C();
    sub_1884F4538(v356, v357, v358, v359, v360, v361, v362, v363, v367, v374, v384, logb, v388, v393);
    sub_1883F8020();

    sub_188412590();
    *(v355 + 14) = sub_1883FE340(v381, log, v364);
    sub_1884F48D8(&dword_1883EA000, v365, v366, "%s re-submitting activity %s and overwriting criteria overrides");
    sub_18841FC2C();
    sub_1884F4470();
    sub_1884037D8();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v108 = 1;
  v59 = &selRef_setStringValue_forKey_;
LABEL_92:
  *(v14 + 744) = v64;
  v242 = *(v14 + 584);
  if (v242 && v242[2])
  {

    v243 = sub_1884F34A4(v64);
    if (!v243)
    {
      v243 = MEMORY[0x1E69E7CC0];
    }

    sub_18841F88C(v243);
    v245 = v244;

    sub_18841F88C(v246);
    v248 = v247;

    v250 = sub_1884F04DC(v249, v248);
    v251 = sub_1884F2B88(v250, v245);

    if ((v251 & 1) == 0)
    {
      sub_188404C38();
      if (!v19)
      {
        sub_1883F7480(&qword_1EA90C9F0);
      }

      v270 = sub_1884F4680();
      sub_1883F85F4(v270, qword_1EA90C9F8);

      v271 = Logger.logObject.getter();
      v272 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v271, v272))
      {
        loga = *(v14 + 552);
        v390 = *(v14 + 560);
        v273 = sub_18840FB34();
        *__src = sub_18840BE14();
        *v273 = 136315394;
        v274 = sub_1883FE43C();
        sub_1884F4538(v274, v275, v276, v277, v278, v279, v280, v281, v367, v374, v381, loga, v390, v393);
        sub_1883F8020();

        sub_188412590();
        *(v273 + 14) = sub_1883FE340(log, v388, v282);
        sub_1884F48D8(&dword_1883EA000, v283, v284, "%s re-submitting activity %s to add related application bundle identifiers");
        sub_18841FC2C();
        sub_1884F4470();
        sub_1884037D8();
      }

      v59 = &selRef_setStringValue_forKey_;
      v285 = sub_1884DD410(v242);
      v242 = v286;
      *__src = v285;
      v396 = v286;

      sub_1884DC3C0(v245);

      sub_1884F34FC(v396, v64);
LABEL_113:
      sub_188404C38();
      if (!v19)
      {
        sub_1883F7480(&qword_1EA90C9F0);
      }

      v287 = sub_1884F469C();
      sub_1883F85F4(v287, qword_1EA90C9F8);

      v288 = Logger.logObject.getter();
      v289 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v288, v289))
      {
        v391 = *(v14 + 560);
        sub_18840FB34();
        *__src = sub_18842D4DC();
        *v242 = 136315394;
        v290 = sub_1883FE43C();
        sub_1884F4538(v290, v291, v292, v293, v294, v295, v296, v297, v367, v374, v381, log, v391, v393);
        sub_1883F8020();

        v298 = sub_1884F44D8();
        *(v242 + 14) = sub_1883FE340(v298, v388, v299);
        sub_1884F48F8(&dword_1883EA000, v300, v301, "%s submitting scheduler activity %s");
        sub_1884038F4();
        sub_1883FC7E4();
        sub_1883FD784();
      }

      v302 = *(v14 + 624);
      sub_1884F4464();
      sub_18841D168(v303, v304, v305, v306);
      v307 = sub_1883F9014();
      LODWORD(v302) = sub_1883F971C(v307, v308, v302);
      v309 = sub_1883F84DC();
      sub_1883F9FEC(v309, v310, &dword_1886F8780);
      if (v302 != 1)
      {
        v311 = *(v14 + 624);
        sub_18841D168(*(v14 + 736), *(v14 + 696), &unk_1EA90D7B0, &dword_1886F8780);
        v312 = sub_1883F9014();
        v314 = sub_1883F971C(v312, v313, v311);
        if (v314 == 1)
        {
          __break(1u);
          return MEMORY[0x1EEE6DEC8](v314, v315, v316, v317, v318, v319, v320, v321, a9, a10, a11, a12, a13, a14);
        }

        Date.timeIntervalSinceNow.getter();
        v323 = v322;
        v324 = sub_1884F4640();
        v325(v324);
        if (v323 <= 0.0)
        {
          v326 = *(v14 + 624);
          sub_1883F9FEC(*(v14 + 736), &unk_1EA90D7B0, &dword_1886F8780);
          v327 = sub_1883F9014();
          sub_1883F90F4(v327, v328, 1, v326);
        }
      }

      v329 = *(v14 + 624);
      sub_18841D168(*(v14 + 736), *(v14 + 688), &unk_1EA90D7B0, &dword_1886F8780);
      v330 = sub_1883F9014();
      if (sub_1883F971C(v330, v331, v329) == 1)
      {
        isa = 0;
      }

      else
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        v333 = sub_1883FB5D4();
        v334(v333);
      }

      v335 = *(v14 + 760);
      [v64 setEarliestStartDate_];

      [v64 setUserRequestedBackupTask_];
      sub_1884C7AD8(__src);
      if (v396)
      {
        v343 = v397;
        sub_1884F4958((v14 + 80), v336, v337, v338, v339, v340, v341, v342, v367, v374, v381, log, v388, v393);
        v344 = v343;
        sub_1883F9FEC(v14 + 80, &unk_1EA90E4D0, &unk_1886FB460);
        [v64 setFileProtectionType_];
      }

      else
      {
        sub_1884F4958((v14 + 176), v336, v337, v338, v339, v340, v341, v342, v367, v374, v381, log, v388, v393);
        v345 = sub_1883F9FEC(v14 + 176, &unk_1EA90E4D0, &unk_1886FB460);
      }

      if ((*(v14 + 760) & 1) == 0)
      {
        [v64 setXpcActivityCriteriaOverrides_];
        swift_unknownObjectRelease();
      }

      v347 = *(v14 + 616);
      v348 = *(v14 + 608);
      v349 = *(v14 + 600);
      v350 = [v394 v59[146]];
      *(v14 + 752) = v350;
      *(v14 + 16) = v14;
      *(v14 + 24) = sub_1884F0218;
      swift_continuation_init();
      *(v14 + 520) = v349;
      v351 = sub_188403664((v14 + 496));
      CheckedContinuation.init(continuation:function:)();
      (*(v348 + 32))(v351, v347, v349);
      *(v14 + 464) = MEMORY[0x1E69E9820];
      *(v14 + 472) = 1107296256;
      *(v14 + 480) = sub_1884F05E0;
      *(v14 + 488) = &unk_1EFA2C1F8;
      [v350 submitActivity:v64 completionHandler:v14 + 464];
      (*(v348 + 8))(v351, v349);
      v314 = v14 + 16;

      return MEMORY[0x1EEE6DEC8](v314, v315, v316, v317, v318, v319, v320, v321, a9, a10, a11, a12, a13, a14);
    }
  }

  if (v108)
  {
    goto LABEL_113;
  }

  sub_188404C38();
  if (!v19)
  {
    sub_1883F7480(&qword_1EA90C9F0);
  }

  v252 = *(v14 + 560);
  v253 = type metadata accessor for Logger();
  sub_1883F85F4(v253, qword_1EA90C9F8);

  v254 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_188405254();

  v255 = sub_1884F4988();
  v256 = *(v14 + 736);
  if (v255)
  {
    v257 = *(v14 + 560);
    sub_18840FB34();
    sub_18840C660();
    sub_1884F45EC();
    *v252 = 136315394;
    v258 = sub_1883FE43C();
    sub_1884F4538(v258, v259, v260, v261, v262, v263, v264, v265, v367, v374, v381, log, v64, v393);
    sub_1883FDE10();
    *(v252 + 4) = v108;
    v266 = sub_1883F9AC0();
    *(v252 + 14) = sub_1883FE340(v266, v257, v267);
    sub_1884F464C(&dword_1883EA000, v254, v242, "%s already have a scheduler activity for %s", v373, v380);
    sub_1884439F0();
    sub_1884037D8();
    sub_1883FC7E4();
  }

  else
  {
  }

  v152 = v256;
LABEL_105:
  sub_1883F9FEC(v152, &unk_1EA90D7B0, &dword_1886F8780);
  sub_1883FAAE4();

  sub_1883F816C();

  return v268();
}

uint64_t CKSessionConfiguration.anySessionConfiguration.getter()
{
  v2 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_188445B70(v1 + v2, v4);
  sub_18844E6FC(&unk_1EA90E078, &unk_1886FA090);
  type metadata accessor for AnySessionConfiguration();
  return swift_dynamicCast();
}

void sub_188445778()
{
  sub_1883F8AF0();
  v26 = type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity.Payload();
  sub_1883F70DC();
  v25 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1883F7100();
  sub_1883FEA80();
  type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity();
  sub_1883F70DC();
  v23 = v6;
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1883F7100();
  v9 = v8 - v7;
  v10 = sub_18844E6FC(&qword_1EA90E228, &unk_1886FA940);
  sub_1883F8AE4(v10);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1883F9824();
  v12 = type metadata accessor for AnySessionConfiguration();
  sub_1883F70DC();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1883F7100();
  sub_1883FED1C();
  v16 = type metadata accessor for AuthenticatedSession.Configuration.Encryption();
  sub_1883F70DC();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1883F7100();
  v22 = v21 - v20;
  sub_188445AC0();
  AnySessionConfiguration.encryption.getter();
  (*(v14 + 8))(v0, v12);
  if (sub_1883F971C(v2, 1, v16) == 1)
  {
    sub_188442B84(v2, &qword_1EA90E228, &unk_1886FA940);
  }

  else
  {
    (*(v18 + 32))(v22, v2, v16);
    AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter();
    AuthenticatedSession.Configuration.Encryption.ServiceIdentity.payload.getter();
    (*(v23 + 8))(v9, v24);
    (*(v18 + 8))(v22, v16);
    (*(v25 + 88))(v1, v26);
    (*(v25 + 8))(v1, v26);
  }

  sub_1883F8178();
}

id sub_188445AC0()
{
  result = [v1 ckSessionConfiguration];
  if (result)
  {
    type metadata accessor for CKSessionConfiguration();
    swift_dynamicCastClassUnconditional();
    CKSessionConfiguration.anySessionConfiguration.getter();

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188445B70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_188445BE4()
{
  sub_1883F8AF0();
  type metadata accessor for BundleID.Payload();
  sub_1883F70DC();
  MEMORY[0x1EEE9AC00](v3);
  sub_1883F7100();
  sub_1883F8424(v4);
  type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI.Payload();
  sub_1883F70DC();
  v40 = v6;
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1883F7100();
  sub_1883FE66C();
  type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI();
  sub_1883F70DC();
  v38 = v8;
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  sub_1883F7100();
  v11 = v10 - v9;
  type metadata accessor for BundleID();
  sub_1883F70DC();
  v36 = v13;
  v37 = v12;
  MEMORY[0x1EEE9AC00](v12);
  sub_1883F7100();
  v35 = v15 - v14;
  v16 = sub_18844E6FC(&qword_1EA90E258, &qword_1886FA960);
  sub_1883F8AE4(v16);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v17);
  sub_1883FED1C();
  v18 = type metadata accessor for AnySessionConfiguration();
  sub_1883F70DC();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1883F7100();
  sub_1883FEA80();
  v22 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  sub_1883F70DC();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  sub_1883F7100();
  v28 = v27 - v26;
  sub_188445AC0();
  AnySessionConfiguration.account.getter();
  (*(v20 + 8))(v1, v18);
  if (sub_1883F971C(v0, 1, v22) == 1)
  {
    sub_188442B84(v0, &qword_1EA90E258, &qword_1886FA960);
LABEL_8:
    sub_1883FF490();
    goto LABEL_9;
  }

  (*(v24 + 32))(v28, v0, v22);
  AuthenticatedSession.Configuration.Account.accessGrantedVia.getter();
  AuthenticatedSession.Configuration.Account.AuthorizationUI.payload.getter();
  (*(v38 + 8))(v11, v39);
  if ((*(v40 + 88))(v2, v41) != *MEMORY[0x1E6994808])
  {
    (*(v24 + 8))(v28, v22);
    (*(v40 + 8))(v2, v41);
    goto LABEL_8;
  }

  (*(v40 + 96))(v2, v41);
  (*(v36 + 32))(v35, v2, v37);
  BundleID.payload.getter();
  (*(v36 + 8))(v35, v37);
  (*(v24 + 8))(v28, v22);
  v29 = sub_1883F7CD4();
  if (v30(v29) != *MEMORY[0x1E69948C0])
  {
    v33 = sub_1883F7E8C();
    v34(v33);
    goto LABEL_8;
  }

  v31 = sub_1883F7E8C();
  v32(v31);
LABEL_9:
  sub_1883F8178();
}

id sub_188446078(void *a1)
{
  v1 = a1;
  sub_188445BE4();
  v3 = v2;
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x18CFD5010](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1884460F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = objc_msgSend_needsDecryption(v3, v5, v6);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void sub_1884466D0(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v4;
      v5 = v4;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v8 = objc_msgSend_deltasToSave(v5, v6, v7);
      v41[0] = v8;
      v30 = v5;
      v11 = objc_msgSend_unmergedDeltas(v5, v9, v10);
      v41[1] = v11;
      v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v41, 2);

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v36, v42, 16);
      if (v15)
      {
        v16 = v15;
        v17 = *v37;
        do
        {
          v18 = 0;
          do
          {
            if (*v37 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v36 + 1) + 8 * v18);
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v20 = v19;
            v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v32, v40, 16);
            if (v22)
            {
              v25 = v22;
              v26 = *v33;
              do
              {
                v27 = 0;
                do
                {
                  if (*v33 != v26)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v28 = objc_msgSend_asset(*(*(&v32 + 1) + 8 * v27), v23, v24);

                  if (v28)
                  {
                    ++*(*(*(a1 + 32) + 8) + 24);
                  }

                  ++v27;
                }

                while (v25 != v27);
                v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v32, v40, 16);
              }

              while (v25);
            }

            ++v18;
          }

          while (v18 != v16);
          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v29, &v36, v42, 16);
        }

        while (v16);
      }

      v4 = v31;
    }
  }
}

void sub_18844694C(uint64_t a1, uint64_t a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_size(v4, v5, v6);
LABEL_5:
    *(*(*(a1 + 32) + 8) + 24) += v7;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_size_(v4, v8, 0);
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v4;
    v9 = v4;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v12 = objc_msgSend_deltasToSave(v9, v10, v11);
    v50[0] = v12;
    v38 = v9;
    v15 = objc_msgSend_unmergedDeltas(v9, v13, v14);
    v50[1] = v15;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, v50, 2);

    obj = v17;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v45, v51, 16);
    if (v19)
    {
      v20 = v19;
      v21 = *v46;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v46 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v45 + 1) + 8 * i);
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v24 = v23;
          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v41, v49, 16);
          if (v26)
          {
            v29 = v26;
            v30 = *v42;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v42 != v30)
                {
                  objc_enumerationMutation(v24);
                }

                v32 = *(*(&v41 + 1) + 8 * j);
                v33 = objc_msgSend_asset(v32, v27, v28);

                if (v33)
                {
                  v34 = objc_msgSend_asset(v32, v27, v28);
                  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_size(v34, v35, v36);
                }
              }

              v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v41, v49, 16);
            }

            while (v29);
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v45, v51, 16);
      }

      while (v20);
    }

    v4 = v39;
  }

LABEL_6:
}

void sub_188446D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_188446DAC(void *a1, const char *a2)
{
  v2 = objc_msgSend_base64EncodedStringWithOptions_(a1, a2, 0);
  v5 = objc_msgSend_mutableCopy(v2, v3, v4);

  v8 = objc_msgSend_length(v5, v6, v7);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v5, v9, @"+", @"-", 0, 0, v8);
  v12 = objc_msgSend_length(v5, v10, v11);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v5, v13, @"/", @"_", 0, 0, v12);
  v16 = objc_msgSend_length(v5, v14, v15);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v5, v17, @"=", &stru_1EFA32970, 0, 0, v16);

  return v5;
}

uint64_t sub_188447554(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend_needsDecryption(v3, v6, v7))
  {
    hasAssetBackedDeltas = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hasAssetBackedDeltas = objc_msgSend_hasAssetBackedDeltas(v3, v8, v9);
    }

    else
    {
      hasAssetBackedDeltas = 0;
    }
  }

  return hasAssetBackedDeltas;
}

void sub_188447A68(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v34 = a3;
  v5 = v4;
  objc_sync_enter(v5);
  v6 = MEMORY[0x1E695DFA8];
  v40 = v5;
  v9 = objc_msgSend_allKeys(v5, v7, v8);
  v35 = objc_msgSend_setWithArray_(v6, v10, v9);

  v39 = objc_msgSend_changedKeysSet(v40, v11, v12);
  v15 = objc_msgSend_setByAddingObjectsFromSet_(v35, v13, v39);
  if (v34)
  {
    v38 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @" (%@)", v34);
  }

  else
  {
    v38 = &stru_1EFA32970;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v15;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v41, v45, 16);
  if (v18)
  {
    v19 = *v42;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v42 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v41 + 1) + 8 * i);
        v22 = objc_msgSend_valueForKey_(v40, v17, v21);
        if (objc_msgSend_containsObject_(v39, v23, v21))
        {
          v24 = @" (modified)";
        }

        else
        {
          v24 = &stru_1EFA32970;
        }

        if (objc_opt_respondsToSelector())
        {
          v25 = v22;
          v26 = *(a1 + 32);
          v27 = CKStringWithObject(v25);
          v30 = objc_msgSend_objCType(v25, v28, v29);
          objc_msgSend_appendFormat_(v26, v31, @"\t%@%@%@ -> %@ (type %s)\n", v21, v24, v38, v27, v30);
        }

        else
        {
          v32 = *(a1 + 32);
          v25 = CKStringWithObject(v22);
          objc_msgSend_appendFormat_(v32, v33, @"\t%@%@%@ -> %@\n", v21, v24, v38, v25);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v41, v45, 16);
    }

    while (v18);
  }

  objc_sync_exit(v40);
}

id CKStringWithObject(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = CKStringWithArray(v1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = CKStringWithData(v1);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = CKStringWithDictionary(v1);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2 = CKStringWithSet(v1);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v3, @"%@", v1);
          }

          else
          {
            objc_msgSend_description(v1, v3, v4);
          }
          v2 = ;
        }
      }
    }
  }

  v5 = v2;

  return v5;
}

id CKStringWithArray(void *a1)
{
  v1 = a1;
  v3 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v2, @"[");
  v6 = objc_msgSend_objectEnumerator(v1, v4, v5);
  v9 = objc_msgSend_nextObject(v6, v7, v8);
  if (v9)
  {
    v12 = v9;
    do
    {
      if (objc_msgSend_length(v3, v10, v11) != 1)
      {
        objc_msgSend_appendString_(v3, v13, @", ");
      }

      v14 = CKStringWithObject(v12);
      objc_msgSend_appendString_(v3, v15, v14);

      v18 = objc_msgSend_nextObject(v6, v16, v17);

      v12 = v18;
    }

    while (v18);
  }

  objc_msgSend_appendString_(v3, v10, @"]");

  return v3;
}

id CKStringWithData(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_bytes(v1, v2, v3);
  v7 = objc_msgSend_length(v1, v5, v6);

  return CKStringWithBytes(v4, v7);
}

id CKStringWithBytes(unsigned __int8 *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = a2;
      _os_log_impl(&dword_1883EA000, v4, OS_LOG_TYPE_INFO, "Warn: That size was ridiculous: %lu. Refusing to create a string from bytes that long", &v6, 0xCu);
    }

    v3 = 0;
  }

  else
  {
    v3 = CKStringWithNibbles(a1, 2 * a2);
  }

  return v3;
}

id CKStringWithNibbles(unsigned __int8 *a1, unint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x8000000000000000) != 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v14 = 134217984;
      v15 = a2;
      _os_log_impl(&dword_1883EA000, v12, OS_LOG_TYPE_INFO, "Warn: That size was ridiculous: %lu. Refusing to create a string that log.", &v14, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v4 = malloc_type_malloc(2 * a2, 0x1000040BDFB0063uLL);
    v5 = v4;
    if (a2)
    {
      v6 = 0;
      do
      {
        v8 = *a1++;
        v7 = v8;
        v4[v6] = a0123456789abcd_1[v8 >> 4];
        if (v6 + 1 < a2)
        {
          v4[v6 + 1] = a0123456789abcd_1[v7 & 0xF];
        }

        v6 += 2;
      }

      while (v6 < a2);
    }

    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = objc_msgSend_initWithCharactersNoCopy_length_freeWhenDone_(v9, v10, v5, a2, 1);
  }

  return v11;
}

id sub_1884487CC(void *a1, const char *a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFA8];
  v5 = objc_msgSend_count(a1, a2, a3);
  v7 = objc_msgSend_setWithCapacity_(v4, v6, v5);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = a1;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v40, v44, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v40 + 1) + 8 * i);
        if (objc_msgSend_conformsToProtocol_(v14, v15, &unk_1EFA9C3D0))
        {
          v18 = objc_msgSend_CKDeepCopy(v14, v16, v17);
        }

        else
        {
          if (objc_msgSend_conformsToProtocol_(v14, v16, &unk_1EFA8BF50))
          {
            v28 = MEMORY[0x1E696AEC0];
            v29 = objc_opt_class();
            v30 = NSStringFromClass(v29);
            v31 = NSStringFromProtocol(&unk_1EFA9C3D0);
            v33 = objc_msgSend_stringWithFormat_(v28, v32, @"Collection with class %@ does not support %@", v30, v31, v40);

            goto LABEL_18;
          }

          if (!objc_msgSend_conformsToProtocol_(v14, v19, &unk_1EFA87B00))
          {
            v34 = MEMORY[0x1E696AEC0];
            v35 = objc_opt_class();
            v30 = NSStringFromClass(v35);
            v33 = objc_msgSend_stringWithFormat_(v34, v36, @"Object with class %@ cannot be copied", v30);
LABEL_18:

            v37 = [CKException alloc];
            v39 = objc_msgSend_initWithName_format_(v37, v38, *MEMORY[0x1E695D940], @"%@", v33);
            objc_exception_throw(v39);
          }

          v18 = objc_msgSend_copyWithZone_(v14, v20, 0);
        }

        v21 = v18;

        objc_msgSend_addObject_(v7, v22, v21);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v23, &v40, v44, 16);
    }

    while (v11);
  }

  v26 = objc_msgSend_copy(v7, v24, v25);

  return v26;
}

__CFString *CKStringFromCKMMCSEncryptionSupport(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E70BCF88[a1 - 1];
  }
}

uint64_t sub_188448C24(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 32) + 8));
  *(*(a1 + 32) + 73) = 0;
  v4 = *(a1 + 32);
  if (v4[72])
  {
    objc_msgSend_postFinishedNotice(v4, v2, v3);
  }

  else
  {
    v5 = objc_msgSend_processingDelay(v4, v2, v3);
    if (v5)
    {
      objc_msgSend_delayPostBy_(*(a1 + 32), v6, v5);
    }
  }

  dispatch_resume(*(*(a1 + 32) + 80));
  v7 = (*(a1 + 32) + 8);

  return pthread_mutex_unlock(v7);
}

uint64_t sub_188448E74()
{
  v1 = sub_18844E6FC(&qword_1EA90D1D8, &qword_1886F7028);
  sub_1883F70DC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_188448F48()
{

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_188448F7C()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188449140()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1884492A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1884492F4()
{

  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

id sub_188449390@<X0>(void *a1@<X8>)
{
  result = CKDatabase.DatabaseChange.Modification.zoneID.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1884494D0()
{
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_188449514()
{
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_188449548()
{

  sub_188405D30();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_188449594()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1884496D4()
{

  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_188449708()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188449750()
{
  sub_18844E6FC(&qword_1EA90D598, &qword_1886F7FE8);
  sub_1883F7158();
  v3 = *(v2 + 80);
  sub_1883F8DA4();
  v5(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, ((((((((v1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_18844984C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18844988C()
{
  sub_18844E6FC(&qword_1EA90D5B8, &qword_1886F8020);
  sub_1883F7158();
  v5 = *(v4 + 80);
  sub_1883F8DA4();
  v7(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + 16, v5 | 7);
}

uint64_t sub_188449950@<X0>(uint64_t *a1@<X8>)
{
  result = CKDatabaseSubscription.recordType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_188449990@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_188472FA0(*a1, a2, *v3);
  *a3 = result;
  return result;
}

char *sub_1884499F4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[32 * a2] <= __dst)
  {
    return memmove(__dst, __src, 32 * a2);
  }

  return __src;
}

uint64_t sub_188449A20()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188449A58()
{

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_188449B58(uint64_t a1)
{

  v1 = sub_1883F7228();
  return CKZoneFeature.name.setter(v1);
}

uint64_t sub_188449B9C(uint64_t a1)
{

  v1 = sub_1883F7228();
  return CKZoneFeature.value.setter(v1);
}

uint64_t sub_188449C74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_188449C54(*a1, a1[1], a1[2]);
  *a2 = result;
  return result;
}

__n128 sub_188449D48(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_188449DC8(void *a1)
{
  type metadata accessor for Array();
  type metadata accessor for Dictionary();
  sub_1883F91B8();
  swift_getWitnessTable();
  sub_1883FEFD4();
  type metadata accessor for LazyMapSequence();
  sub_1883FEC94();
  swift_getWitnessTable();
  sub_1883F9C10();
  swift_getWitnessTable();
  sub_1883FEFD4();
  type metadata accessor for FlattenSequence();
  sub_1883FE600();
  swift_getWitnessTable();
  type metadata accessor for LazySequence();
  sub_1883F7EC8();
  swift_getWitnessTable();
  sub_1883F8E20();
  swift_getWitnessTable();
  sub_1883F87A4();
  swift_getWitnessTable();
  sub_1883F8400();
  swift_getWitnessTable();
  sub_1884054BC();
  return swift_getWitnessTable();
}

uint64_t sub_188449EF4(void *a1)
{
  type metadata accessor for Array();
  sub_1883F9C10();
  swift_getWitnessTable();
  type metadata accessor for LazyMapSequence();
  sub_1883F87A4();
  swift_getWitnessTable();
  sub_1883F8E20();
  return swift_getWitnessTable();
}

uint64_t sub_188449F70(void *a1)
{
  type metadata accessor for Array();
  sub_1883F87A4();

  return swift_getWitnessTable();
}

uint64_t sub_18844A030(char a1)
{
  if (a1)
  {
    return 0x4449656E6F7ALL;
  }

  else
  {
    return 0x614E64726F636572;
  }
}

__n128 sub_18844A0A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

unint64_t sub_18844A0D8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&unk_1EFA259B0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_18844A124(char a1)
{
  result = 0x656D614E656E6F7ALL;
  switch(a1)
  {
    case 1:
      result = 0x6D614E72656E776FLL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6573616261746164;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_18844A1F4@<X0>(uint64_t *a1@<X8>)
{
  result = CKRecordZone.parent.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18844A24C@<X0>(uint64_t *a1@<X8>)
{
  result = CKRecordZoneSubscription.recordType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18844A2A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18844A2EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CKShareTransferRepresentation.ExportedShare(255, *a1, a1[1], a4);
  sub_1883F9C6C();
  swift_getWitnessTable();
  type metadata accessor for ProxyRepresentation();
  sub_1883FA0E0();
  return swift_getWitnessTable();
}

uint64_t sub_18844A35C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CKShareTransferRepresentation.ExportedShare(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  type metadata accessor for DataRepresentation();
  sub_1883F7C40();
  swift_getWitnessTable();
  type metadata accessor for _ConditionalTransferRepresentation();
  swift_getTupleTypeMetadata();
  swift_getWitnessTable();
  type metadata accessor for TupleTransferRepresentation();
  return swift_getWitnessTable();
}

uint64_t sub_18844A45C()
{
  sub_1883F9C84();
  result = CKNotificationInfo.alertLocalizationArgs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_18844A488()
{
  sub_1883F9C84();
  result = CKNotificationInfo.titleLocalizationArgs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_18844A4B4()
{
  sub_1883F9C84();
  result = CKNotificationInfo.subtitleLocalizationArgs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_18844A4E0()
{
  sub_1883F9C84();
  result = CKNotificationInfo.desiredKeys.getter();
  *v0 = result;
  return result;
}

uint64_t sub_18844A50C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844A570()
{
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844A5A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18844A5EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18844A624()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_18844A67C()
{
  _Block_release(*(v0 + 16));
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844A6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
    v9 = a1 + *(a3 + 20);

    return sub_1883F971C(v9, a2, v8);
  }
}

uint64_t sub_18844A748(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
    v8 = v5 + *(a4 + 20);

    return sub_1883F90F4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18844A804()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844A83C()
{
  v1 = type metadata accessor for UUID();
  sub_1883F70DC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_18844A910()
{
  sub_1883F8AF0();
  sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  sub_1883F70DC();
  v2 = sub_1883FA3B4();
  sub_1883F70DC();
  v4 = v3;
  v5 = (v1 + *(v3 + 80) + 8) & ~*(v3 + 80);
  v6 = sub_1883FDA80();
  v7(v6);

  (*(v4 + 8))(v0 + v5, v2);
  sub_1883F8178();

  return MEMORY[0x1EEE6BDD0](v8, v9, v10);
}

uint64_t sub_18844AA38()
{
  sub_1883F8AF0();
  sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  sub_1883F70DC();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for UUID();
  sub_1883F70DC();
  v7 = v6;
  v8 = (((v2 + 24) & ~v2) + v4 + *(v6 + 80)) & ~*(v6 + 80);

  v9 = sub_1883FDA80();
  v10(v9);
  (*(v7 + 8))(v0 + v8, v5);
  sub_1883F8178();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_18844AB64()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_18844ABA4()
{
  sub_1883F8AF0();
  sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  sub_1883F70DC();
  v2 = sub_1883FA3B4();
  sub_1883F70DC();
  v4 = v3;
  v5 = (v1 + *(v3 + 80) + 8) & ~*(v3 + 80);
  v6 = sub_1883FDA80();
  v7(v6);

  (*(v4 + 8))(v0 + v5, v2);
  swift_unknownObjectRelease();
  sub_1883F8178();

  return MEMORY[0x1EEE6BDD0](v8, v9, v10);
}

uint64_t sub_18844ACE0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_18844E6FC(&qword_1EA90E0D0, &qword_1886FA1A0);
      v10 = *(a3 + 24);
    }

    return sub_1883F971C(a1 + v10, a2, v9);
  }
}

void *sub_18844ADB8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_18844E6FC(&qword_1EA90E0D0, &qword_1886FA1A0);
      v10 = *(a4 + 24);
    }

    return sub_1883F90F4(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_18844AEBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18844AF94()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_18844E6FC(&qword_1EA90E1D0, qword_1886FA7C8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_18844AFEC()
{
  MEMORY[0x18CFD7FA0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844B024()
{
  v1 = type metadata accessor for SessionID();
  sub_1883F70DC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_18844B110()
{

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18844B144()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844B17C@<X0>(uint64_t *a1@<X8>)
{
  result = CKQueryOperation.desiredKeys.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18844B1DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18844B21C()
{

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18844B250()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844B288@<X0>(uint64_t *a1@<X8>)
{
  result = CKFetchRecordsOperation.desiredKeys.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18844B2E8()
{

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18844B31C()
{
  _Block_release(*(v0 + 16));
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844B390@<X0>(uint64_t *a1@<X8>)
{
  result = CKFetchRecordZoneChangesConfiguration.desiredKeys.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18844B430()
{

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18844B464()
{
  _Block_release(*(v0 + 16));
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844B4F8()
{

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18844B52C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844B594()
{

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18844B5C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844B630()
{

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18844B664()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844B69C@<X0>(uint64_t *a1@<X8>)
{
  result = CKFetchShareMetadataOperation.rootRecordDesiredKeys.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18844B6FC()
{

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18844B730()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844B798()
{

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18844B7CC()
{
  _Block_release(*(v0 + 16));
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844B800@<X0>(uint64_t *a1@<X8>)
{
  result = CKFetchSubscriptionsOperation.subscriptionIDs.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18844B874()
{

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18844B8A8()
{
  _Block_release(*(v0 + 16));
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844B8DC@<X0>(uint64_t *a1@<X8>)
{
  result = CKModifySubscriptionsOperation.subscriptionIDsToDelete.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18844B980()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844B9E0()
{

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18844BA14()
{
  _Block_release(*(v0 + 16));
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844BA8C()
{

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18844BAC0()
{
  _Block_release(*(v0 + 16));
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844BB54()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18844BB8C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844BBD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18844BC10()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844BC5C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844BC9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18844BCE0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844BD20()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18844BD64()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18844BD9C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844BDE8()
{

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18844BE1C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844BE84()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844BEBC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_18844BF14()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_18844BF80()
{

  v0 = sub_1883F7D04();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18844BFB0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18844BFE8()
{
  sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
  sub_1883F7158();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_18844C078()
{
  type metadata accessor for UUID();
  sub_1883FF434();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v1 + v5, v0);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v7, v4 | 7);
}

uint64_t sub_18844C12C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_18844C184()
{
  type metadata accessor for UUID();
  sub_1883FF434();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v0);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v7, v4 | 7);
}

uint64_t sub_18844C240()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18844C2B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_18844C2F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1883F5E14();
      sub_188426A14(v2 + 32, v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_18844C384()
{

  sub_188443314();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844C3EC()
{
  sub_1883F7B88();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844C424()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_18844C47C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_18844C4C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18844C4FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18844C5A0()
{
  swift_unknownObjectRelease();

  sub_18840FB98();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18844C5EC()
{

  sub_1883F8708();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18844C624()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  sub_1883FEFF8();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

xpc_object_t sub_18844C698@<X0>(uint64_t *a1@<X8>)
{
  result = CKSyncEngine.Configuration.xpcActivityCriteriaOverrides.getter();
  *a1 = result;
  return result;
}

void sub_18844C704()
{
  sub_1883F9C84();
  CKSyncEngine.State.pendingRecordZoneChanges.getter();
  *v0 = v1;
}

void sub_18844C730()
{
  sub_1883F9C84();
  CKSyncEngine.State.pendingDatabaseChanges.getter();
  *v0 = v1;
}

uint64_t sub_18844C75C()
{
  sub_1883F9C84();
  result = CKSyncEngine.State.hasPendingUntrackedChanges.getter();
  *v0 = result & 1;
  return result;
}

id sub_18844C7DC()
{
  sub_1883F9C84();
  result = CKSyncEngine.State.serverChangeTokenForDatabase.getter();
  *v0 = result;
  return result;
}

uint64_t sub_18844C980()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_18844CAB0(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t sub_18844CB58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E676953656C6966 && a2 == 0xED00006572757461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001886FED90 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736B6E756863 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18844CCB0(char a1)
{
  if (!a1)
  {
    return 0x6E676953656C6966;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x736B6E756863;
}

Swift::Int sub_18844CD44(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](v2);
  return Hasher._finalize()();
}

uint64_t sub_18844CD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18844CB58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18844CDD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18844CC74();
  *a1 = result;
  return result;
}

uint64_t sub_18844CE00(uint64_t a1)
{
  v2 = sub_18844E744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18844CE3C(uint64_t a1)
{
  v2 = sub_18844E744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18844CE78(void *a1)
{
  v3 = v1;
  v5 = sub_18844E6FC(&qword_1EA90D030, &qword_1886F6BD0);
  sub_1883F70DC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  sub_188400B68(a1, a1[3]);
  sub_18844E744();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + 32);
    v12[15] = 2;
    sub_18844E6FC(&qword_1EA90D018, &qword_1886F6BC8);
    sub_18844E834(&qword_1EA90D038, sub_18844E8AC, MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_18844D054@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_18844E6FC(&qword_1EA90D008, &qword_1886F6BC0);
  sub_1883F70DC();
  MEMORY[0x1EEE9AC00](v5);
  sub_188400B68(a1, a1[3]);
  sub_18844E744();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1883FE944(a1);
  }

  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v8 = v7;
  v15 = v6;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v9;
  sub_18844E6FC(&qword_1EA90D018, &qword_1886F6BC8);
  sub_18844E834(&qword_1EA90D020, sub_18844E7E0, MEMORY[0x1E69E6330]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = sub_1883F70CC();
  v11(v10);
  result = sub_1883FE944(a1);
  *a2 = v15;
  a2[1] = v8;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v16;
  return result;
}

double sub_18844D2CC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_18844D054(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

Swift::Int sub_18844D32C(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](a1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_18844D384(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  sub_188470B58(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_18844D3D0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](a1);
  return Hasher._finalize()();
}

Swift::Int sub_18844D418(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](a1);
  return Hasher._finalize()();
}

Swift::Int sub_18844D460(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](a2 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_18844D4A8(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_18844D528(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](a2);
  return Hasher._finalize()();
}

Swift::Int sub_18844D56C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  Hasher.init(_seed:)();
  sub_188470B58(v4, v2);
  return Hasher._finalize()();
}

Swift::Int sub_18844D5B0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](a2);
  return Hasher._finalize()();
}

uint64_t sub_18844D5F4(uint64_t a1)
{
  v2 = sub_18844DDA0(&unk_1EA90CAF0, type metadata accessor for CKError, &unk_1886F650C);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18844D660(uint64_t a1)
{
  v2 = sub_18844DDA0(&unk_1EA90CAF0, type metadata accessor for CKError, &unk_1886F650C);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_18844D6CC(uint64_t a1)
{
  v2 = sub_18844DDA0(&qword_1EA90CAE0, type metadata accessor for CKError, &unk_1886F6978);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

void sub_18844D738()
{
  sub_1883F9B38();
  nullsub_4();
  *v0 = v1;
}

uint64_t sub_18844D770(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_18844D7E8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_18844D868(uint64_t a1)
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = MEMORY[0x18CFD5010](v1);

  return v2;
}

uint64_t sub_18844D8B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18844D868(a1);
  *a2 = result;
  return result;
}

uint64_t sub_18844D8FC(uint64_t a1)
{
  v2 = sub_18844DDA0(&qword_1EA90CAE0, type metadata accessor for CKError, &unk_1886F6978);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_18844D968(uint64_t a1)
{
  v2 = sub_18844DDA0(&qword_1EA90CAE0, type metadata accessor for CKError, &unk_1886F6978);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_18844D9D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844DDA0(&qword_1EA90CAE0, type metadata accessor for CKError, &unk_1886F6978);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_18844DA64(uint64_t a1)
{
  v2 = sub_18844DDA0(&qword_1EA90C588, type metadata accessor for CKUnderlyingError, &unk_1886F6878);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_18844DAD0(uint64_t a1)
{
  v2 = sub_18844DDA0(&qword_1EA90C588, type metadata accessor for CKUnderlyingError, &unk_1886F6878);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_18844DB3C(void *a1, uint64_t a2)
{
  v4 = sub_18844DDA0(&qword_1EA90C588, type metadata accessor for CKUnderlyingError, &unk_1886F6878);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_18844DBCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844DDA0(&qword_1EA90C588, type metadata accessor for CKUnderlyingError, &unk_1886F6878);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

Swift::Int sub_18844DC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_18844DCA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x18CFD5010](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t sub_18844DCF0()
{
  v1 = sub_1883F9B38();
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_18844DD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18844DDA0(&qword_1EA90CAE0, type metadata accessor for CKError, &unk_1886F6978);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_18844DDA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18844DDE8(uint64_t a1)
{
  v2 = sub_18844DDA0(&qword_1EA90C590, type metadata accessor for CKUnderlyingError, &unk_1886F6628);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18844DE54(uint64_t a1)
{
  v2 = sub_18844DDA0(&qword_1EA90C590, type metadata accessor for CKUnderlyingError, &unk_1886F6628);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_18844DEC0(uint64_t a1)
{
  v2 = sub_18844DDA0(&qword_1EA90C588, type metadata accessor for CKUnderlyingError, &unk_1886F6878);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_18844DF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18844DDA0(&qword_1EA90C588, type metadata accessor for CKUnderlyingError, &unk_1886F6878);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_18844DFF8(uint64_t a1)
{
  v2 = sub_18844DDA0(&qword_1EA90CF28, type metadata accessor for FileProtectionType, &unk_1886F67E8);
  v3 = sub_18844DDA0(&qword_1EA90CF30, type metadata accessor for FileProtectionType, &unk_1886F6788);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18844E18C(uint64_t a1)
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = MEMORY[0x18CFD51D0](v1);

  return v2;
}

uint64_t sub_18844E1C4(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_18844E218(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

__n128 sub_18844E59C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18844E5B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18844E5F0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_18844E654(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18844E674(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_18844E6B0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_18844E6FC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_18844E744()
{
  result = qword_1EA90D010;
  if (!qword_1EA90D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D010);
  }

  return result;
}

uint64_t sub_18844E798(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_18844E7E0()
{
  result = qword_1EA90D028;
  if (!qword_1EA90D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D028);
  }

  return result;
}

uint64_t sub_18844E834(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_18844E798(&qword_1EA90D018, &qword_1886F6BC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18844E8AC()
{
  result = qword_1EA90D040;
  if (!qword_1EA90D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D040);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18844EA7C()
{
  result = qword_1EA90D048;
  if (!qword_1EA90D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D048);
  }

  return result;
}

unint64_t sub_18844EAD4()
{
  result = qword_1EA90D050;
  if (!qword_1EA90D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D050);
  }

  return result;
}

unint64_t sub_18844EB2C()
{
  result = qword_1EA90D058;
  if (!qword_1EA90D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D058);
  }

  return result;
}

__n128 sub_18844EB90(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_18844EBAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18844EBEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18844EC48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001886FEE30 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D75736B63656863 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6874676E656CLL && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x80000001886FEE50 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_18844EDB0(char a1)
{
  result = 0x6D75736B63656863;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6874676E656CLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_18844EE3C(void *a1)
{
  v3 = v1;
  v5 = sub_18844E6FC(&qword_1EA90D190, &qword_1886F6D88);
  sub_1883F70DC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19[-v9 - 4];
  sub_188400B68(a1, a1[3]);
  sub_18844F364();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  sub_1883F9B44(v11, v12, &v21);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v20 = 1;
    sub_1883F9B44(v13, v14, &v20);
    v19[1] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[5];
    v16 = v3[6];
    v19[0] = 3;
    sub_1883F9B44(v15, v16, v19);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_18844EFC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_18844E6FC(&qword_1EA90D180, &qword_1886F6D80);
  sub_1883F70DC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  sub_188400B68(a1, a1[3]);
  sub_18844F364();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1883FE944(a1);
  }

  v28 = 0;
  v11 = sub_1883F86EC(&v28);
  v13 = v12;
  v25 = v11;
  v27 = 1;
  v23 = sub_1883F86EC(&v27);
  v24 = v14;
  v26[1] = 2;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v26[0] = 3;
  v15 = sub_1883F86EC(v26);
  v17 = v16;
  v18 = v15;
  (*(v7 + 8))(v10, v5);

  v19 = v24;

  sub_1883FE944(a1);

  *a2 = v25;
  a2[1] = v13;
  v21 = v22;
  a2[2] = v23;
  a2[3] = v19;
  a2[4] = v21;
  a2[5] = v18;
  a2[6] = v17;
  return result;
}

uint64_t sub_18844F234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18844EC48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18844F25C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18844EDA8();
  *a1 = result;
  return result;
}

uint64_t sub_18844F284(uint64_t a1)
{
  v2 = sub_18844F364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18844F2C0(uint64_t a1)
{
  v2 = sub_18844F364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_18844F2FC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_18844EFC0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t sub_18844F364()
{
  result = qword_1EA90D188;
  if (!qword_1EA90D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D188);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChunkInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ChunkInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18844F520()
{
  result = qword_1EA90D198;
  if (!qword_1EA90D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D198);
  }

  return result;
}

unint64_t sub_18844F578()
{
  result = qword_1EA90D1A0;
  if (!qword_1EA90D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D1A0);
  }

  return result;
}

unint64_t sub_18844F5D0()
{
  result = qword_1EA90D1A8;
  if (!qword_1EA90D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D1A8);
  }

  return result;
}

uint64_t sub_18844F624()
{
  sub_18844E6FC(&qword_1EA90D228, &qword_1886F70A0);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  qword_1EA919C78 = result;
  return result;
}

id sub_18844F690()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E698F6D0]) init];
  [v0 set:1 allowsExpensiveAccess:?];
  if (qword_1EA90CB00 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA919C78;
  os_unfair_lock_lock((qword_1EA919C78 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    [v0 setNetworkingDelegate_];
    swift_unknownObjectRelease();
  }

  return v0;
}

uint64_t sub_18844F774()
{
  sub_1883FB4AC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 32) = v0;
  v12 = swift_task_alloc();
  *(v1 + 40) = v12;
  *v12 = v1;
  v12[1] = sub_18844F838;

  return sub_18844FA28(v11, v9, v7, v5, v3);
}

uint64_t sub_18844F838()
{
  sub_1883FB4AC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1883F78EC();
  v9 = v8;
  sub_1883F78D4();
  *v10 = v9;
  v11 = *v1;
  sub_1883F7110();
  *v12 = v11;

  if (v0)
  {
    v13 = *(v11 + 8);

    return v13();
  }

  else
  {
    v9[6] = v3;
    v9[7] = v5;
    v9[8] = v7;
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v15, v16, v17);
  }
}

uint64_t sub_18844F984()
{
  sub_1883F78E0();
  super_class = v0[3].super_class;
  receiver = v0[4].receiver;
  v3 = v0[3].receiver;
  v4 = v0[2].receiver;
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___CKAssetStreamHandle_assetStreamHandleInternal];
  *v6 = receiver;
  *(v6 + 1) = super_class;
  *(v6 + 2) = v3;
  v0[1].receiver = v5;
  v0[1].super_class = v4;
  v7 = objc_msgSendSuper2(v0 + 1, sel_init);
  v8 = v0->super_class;

  return v8(v7);
}

uint64_t sub_18844FA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  sub_1883F7FD8();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18844FA5C()
{
  sub_1883F78E0();
  if (sub_188451E1C(v0[10], v0[11]))
  {
    type metadata accessor for CKError(0);
    v0[8] = 8;
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_1883FD9AC();
    sub_1884547F0(v1, v2, &unk_1886F6978);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    sub_1883F816C();

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_18844FBA0;
    v6 = v0[9];

    return sub_188451E70(v6);
  }
}

uint64_t sub_18844FBA0()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v3 = v2;
  *v3 = *v1;
  v2[15] = v4;
  v2[16] = v5;
  v2[17] = v0;

  if (v0)
  {
    sub_1883F816C();

    return v6();
  }

  else
  {
    sub_1883F7FD8();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_18844FCC4()
{
  sub_1883FC738();
  v1 = v0[17];
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_18845479C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    sub_188423CCC(v0[15], v0[16]);

    sub_1883F816C();

    return v4();
  }

  else
  {
    v3 = v0[10];
    v2 = v0[11];

    v6 = sub_188452428(v0[6], v3, v2);
    sub_188423CCC(v0[15], v0[16]);

    sub_1883F816C();
    v10 = v7;
    v8 = v0[12];
    v9 = v0[13];

    return v10(v6, v8, v9);
  }
}

uint64_t sub_18844FF0C(uint64_t a1, void *a2, void *a3, const void *a4, uint64_t a5)
{
  v9 = type metadata accessor for URL();
  v5[2] = v9;
  v5[3] = *(v9 - 8);
  v5[4] = swift_task_alloc();
  v5[5] = _Block_copy(a4);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a2;
  v11 = a3;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v5[6] = v12;
  v5[7] = v14;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v5[8] = v16;
  swift_getObjCClassMetadata();
  v17 = swift_task_alloc();
  v5[9] = v17;
  *v17 = v5;
  v17[1] = sub_1884500A0;

  return sub_18844F774();
}

void sub_1884500A0()
{
  sub_1883FC738();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;
  *v7 = *v1;

  v8 = v5[7];
  v9 = v5[6];
  v10 = v5[5];
  (*(v5[3] + 8))(v5[4], v5[2]);

  sub_188423CCC(v9, v8);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](v10, v4, 0);
    _Block_release(v10);
  }

  sub_1883F9968();

  __asm { BRAA            X1, X16 }
}

id sub_1884502C0()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = sub_1883FA2CC();
  sub_188423C74(v4, v5);
  v6 = sub_1883FA2CC();
  v8 = sub_188450384(v6, v7);
  if (v1)
  {
    v11 = sub_1883FA2CC();
    sub_188423CCC(v11, v12);
    sub_1883FF6E8();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = &v0[OBJC_IVAR___CKAssetStreamHandle_assetStreamHandleInternal];
    *v13 = v8;
    v13[1] = v9;
    v13[2] = v10;
    v17.receiver = v0;
    v17.super_class = ObjectType;
    v2 = objc_msgSendSuper2(&v17, sel_init);
    v14 = sub_1883FA2CC();
    sub_188423CCC(v14, v15);
  }

  return v2;
}

uint64_t sub_188450384(uint64_t a1, unint64_t a2)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_188454528();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_188423CCC(a1, a2);

  if (!v2)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1884504DC()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_188453EC8();
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v0;
}

void sub_18845066C()
{
  sub_1883F8AF0();
  v56 = v0;
  v57 = v1;
  v54 = v2;
  v55 = v3;
  v5 = v4;
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_1883F70DC();
  v62 = v7;
  v63 = v6;
  MEMORY[0x1EEE9AC00](v6);
  sub_1883F911C();
  v61 = v8;
  sub_1883FEC2C();
  v59 = type metadata accessor for OS_dispatch_queue.Attributes();
  sub_1883F7B50();
  MEMORY[0x1EEE9AC00](v9);
  sub_1883F911C();
  v60 = v10;
  sub_1883FEC2C();
  v11 = type metadata accessor for DispatchQoS();
  v12 = sub_1883F8AE4(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1883F911C();
  v58 = v13;
  sub_1883FEC2C();
  v14 = type metadata accessor for UUID();
  sub_1883F70DC();
  v53 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1883F7100();
  v19 = v18 - v17;
  v20 = sub_1883FF6E8();
  v22 = sub_18844E6FC(v20, v21);
  v23 = sub_1883F8AE4(v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v53 - v27;
  v29 = type metadata accessor for URL();
  sub_1883F70DC();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  sub_1883F7100();
  v35 = v34 - v33;
  sub_18845457C(v5, v28, &qword_1EA90D240, &qword_1886F70B0);
  sub_188405CF0(v28);
  if (!v36)
  {
    (*(v31 + 32))(v35, v28, v29);
LABEL_6:
    v40 = objc_allocWithZone(MEMORY[0x1E6988168]);
    v41 = v54;

    v43 = sub_18845404C(v35, v41, v42);
    v67 = &type metadata for AssetStreamHandleInternal;
    v44 = sub_1884545DC();
    v64 = v55;
    v65 = v56;
    v68 = v44;
    v66 = v57;
    v45 = objc_allocWithZone(type metadata accessor for LoadingRequestHandler());
    swift_bridgeObjectRetain_n();

    v46 = LoadingRequestHandler.init(streamHandle:type:)();
    v47 = [v43 resourceLoader];
    sub_188454630();
    v48 = v46;
    static DispatchQoS.unspecified.getter();
    v64 = MEMORY[0x1E69E7CC0];
    sub_1883F9538();
    sub_1884547F0(v49, v50, MEMORY[0x1E69E8040]);
    sub_18844E6FC(&qword_1EA90D260, &qword_1886F70B8);
    sub_188454674();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v62 + 104))(v61, *MEMORY[0x1E69E8090], v63);
    sub_188414700();
    v51 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    [v47 setDelegate:v48 queue:v51];

    type metadata accessor for PlayerItem();
    v52 = v48;
    dispatch thunk of static PlayerItem.makePlayerItem(with:delegate:)();

    sub_1883F8178();
    return;
  }

  sub_1884036C4();
  UUID.init()();
  sub_1883FF05C();
  sub_1884547F0(v37, v38, MEMORY[0x1E69695E0]);
  v39 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18CFD5140](v39);

  (*(v53 + 8))(v19, v14);
  URL.init(string:)();

  sub_188405CF0(v25);
  if (!v36)
  {
    (*(v31 + 32))(v35, v25, v29);
    sub_188405CF0(v28);
    if (!v36)
    {
      sub_1883F9FEC(v28, &qword_1EA90D240, &qword_1886F70B0);
    }

    goto LABEL_6;
  }

  __break(1u);
}

void sub_188450CEC()
{
  sub_1883F8AF0();
  v54 = v0;
  v55 = v1;
  v52 = v2;
  v53 = v3;
  v62 = v4;
  v63 = v5;
  v7 = v6;
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_1883F70DC();
  v60 = v9;
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F911C();
  v59 = v10;
  sub_1883FEC2C();
  v57 = type metadata accessor for OS_dispatch_queue.Attributes();
  sub_1883F7B50();
  MEMORY[0x1EEE9AC00](v11);
  sub_1883F911C();
  v58 = v12;
  sub_1883FEC2C();
  v13 = type metadata accessor for DispatchQoS();
  v14 = sub_1883F8AE4(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1883F911C();
  v56 = v15;
  sub_1883FEC2C();
  v16 = type metadata accessor for UUID();
  sub_1883F70DC();
  v51 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1883F7100();
  v21 = v20 - v19;
  v22 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  v23 = sub_1883F8AE4(v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v51 - v27;
  v29 = type metadata accessor for URL();
  sub_1883F70DC();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  sub_1883F7100();
  v35 = v34 - v33;
  sub_18845457C(v7, v28, &qword_1EA90D240, &qword_1886F70B0);
  if (sub_1884041DC(v28) != 1)
  {
    (*(v31 + 32))(v35, v28, v29);
LABEL_6:
    v39 = objc_allocWithZone(MEMORY[0x1E6988168]);
    v40 = v52;

    v42 = sub_18845404C(v35, v40, v41);
    v67 = &type metadata for AssetStreamHandleInternal;
    v43 = sub_1884545DC();
    v64 = v53;
    v65 = v54;
    v68 = v43;
    v66 = v55;
    v44 = objc_allocWithZone(type metadata accessor for LoadingRequestHandler());
    swift_bridgeObjectRetain_n();

    v45 = LoadingRequestHandler.init(streamHandle:type:)();
    v46 = [v42 resourceLoader];
    sub_188454630();
    v47 = v45;
    static DispatchQoS.unspecified.getter();
    v64 = MEMORY[0x1E69E7CC0];
    sub_1883F9538();
    sub_1884547F0(v48, v49, MEMORY[0x1E69E8040]);
    sub_18844E6FC(&qword_1EA90D260, &qword_1886F70B8);
    sub_188454674();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v60 + 104))(v59, *MEMORY[0x1E69E8090], v61);
    sub_188414700();
    v50 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    [v46 setDelegate:v47 queue:v50];

    objc_allocWithZone(type metadata accessor for AssetExportSession());

    AssetExportSession.init(avAsset:presetName:delegate:)();
    sub_1883F8178();
    return;
  }

  sub_1884036C4();
  UUID.init()();
  sub_1883FF05C();
  sub_1884547F0(v36, v37, MEMORY[0x1E69695E0]);
  v38 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18CFD5140](v38);

  (*(v51 + 8))(v21, v16);
  URL.init(string:)();

  if (sub_1884041DC(v25) != 1)
  {
    (*(v31 + 32))(v35, v25, v29);
    if (sub_1884041DC(v28) != 1)
    {
      sub_1883F9FEC(v28, &qword_1EA90D240, &qword_1886F70B0);
    }

    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1884513D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x80000001886FEF80 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_188451478()
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](0);
  return Hasher._finalize()();
}

Swift::Int sub_1884514E4(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](0);
  return Hasher._finalize()();
}

uint64_t sub_188451528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1884513D0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_188451570@<X0>(_BYTE *a1@<X8>)
{
  result = _sSo18CKDeviceCapabilityC8CloudKitE20supportsSecureCodingSbvgZ_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18845159C(uint64_t a1)
{
  v2 = sub_188453E74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1884515D8(uint64_t a1)
{
  v2 = sub_188453E74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_188451614()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AssetStreamHandle()
{
  return objc_opt_self();
}

{
  return MEMORY[0x1EEDF3FA8]();
}

uint64_t sub_1884516B8(void *a1)
{
  v3 = sub_18844E6FC(&qword_1EA90D1B8, &qword_1886F7010);
  sub_1883F70DC();
  v5 = v4;
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1883F83A4();
  sub_188400B68(a1, a1[3]);
  sub_188453E74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_188453EC8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v1, v3);
}

void *sub_188451844(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = sub_18844E6FC(&qword_1EA90D230, &qword_1886F70A8);
  sub_1883F70DC();
  v20 = v7;
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = sub_188400B68(a1, a1[3]);
  sub_188453E74();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1883FE944(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v20;
    sub_188454528();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v19;
    v15 = &v3[OBJC_IVAR___CKAssetStreamHandle_assetStreamHandleInternal];
    *v15 = v18;
    *(v15 + 2) = v14;
    v17.receiver = v3;
    v17.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v17, sel_init);
    (*(v12 + 8))(v10, v6);
    sub_1883FE944(a1);
  }

  return v11;
}

void *sub_188451A1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_188451800(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

__n128 sub_188451AA0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_188451AB4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188451AF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_188451B54()
{
  sub_1883F8AF0();
  v1 = v0;
  v2 = sub_1883F4C9C(v0);
  v3 = 0;
  v4 = 0;
  while (1)
  {
    if (v2 == v3)
    {
      sub_1883F8178();
      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x18CFD59D0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      break;
    }

    v6 = *&v5[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_range];
    v7 = *&v5[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_range + 8];

    v8 = v7 - v6;
    if (__OFSUB__(v7, v6))
    {
      goto LABEL_15;
    }

    ++v3;
    v9 = __OFADD__(v4, v8);
    v4 += v8;
    if (v9)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_188451C1C()
{
  sub_188451B54();
  if (v0 < 0)
  {
    __break(1u);
  }
}

uint64_t sub_188451C44()
{
  sub_1883F7120();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v7 = sub_18844E6FC(&qword_1EA90D1D0, &qword_1886F7020);
  v0[8] = v7;
  v0[9] = *(v7 - 8);
  v0[10] = swift_task_alloc();
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_188451D10()
{
  sub_1883FC738();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v10 = *(v0 + 40);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v7 + 16) = v10;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  *(v7 + 48) = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8790], v3);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

  sub_1883F816C();

  return v8();
}

BOOL sub_188451E1C(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_188451E70(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for URL();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for URLRequest();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_188451F8C, 0, 0);
}

uint64_t sub_188451F8C()
{
  sub_1883F7120();
  (*(v0[6] + 16))(v0[7], v0[4], v0[5]);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v1 = [objc_opt_self() sharedManager];
  v0[11] = v1;
  if (v1)
  {
    type metadata accessor for AssetStreamHandle();
    v3 = sub_18844F690();
    v0[12] = v3;
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_18845209C;
    v1 = v0[10];
    v2 = v3;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEDF0D18](v1, v2);
}

uint64_t sub_18845209C()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F78D4();
  *v4 = v3;
  v5 = *v1;
  sub_1883F78D4();
  *v6 = v5;
  v9[14] = v7;
  v9[15] = v8;
  v9[16] = v10;
  v9[17] = v0;

  v11 = *(v2 + 88);

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1884521E4()
{
  sub_1883FC738();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1 && [v1 statusCode] == 200)
  {
    v2 = v0[16];
    (*(v0[9] + 8))(v0[10], v0[8]);

    sub_1883F9968();

    __asm { BRAA            X3, X16 }
  }

  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  type metadata accessor for CKError(0);
  v0[3] = 4;
  sub_188498E9C(MEMORY[0x1E69E7CC0]);
  sub_1883FD9AC();
  sub_1884547F0(v11, v12, &unk_1886F6978);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();
  sub_188423CCC(v7, v5);

  (*(v9 + 8))(v8, v10);

  sub_1883F816C();
  sub_1883F9968();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1884523A8()
{
  sub_1883F7120();
  (*(v0[9] + 8))(v0[10], v0[8]);

  sub_1883F816C();

  return v1();
}

uint64_t sub_188452428(uint64_t result, uint64_t a2, void *a3)
{
  v6 = 0;
  v7 = *(result + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v9 = result + 32;
  if (!v7)
  {
    return v8;
  }

  while (1)
  {
    v10 = *(v9 + 32);
    v13[1] = *(v9 + 16);
    v13[2] = v10;
    v13[0] = *v9;
    v14 = *(v9 + 48);
    v11 = v6 + v10;
    if (__OFADD__(v6, v10))
    {
      break;
    }

    if (v11 < v6)
    {
      goto LABEL_12;
    }

    objc_allocWithZone(type metadata accessor for ChunkStreamHandle(0));
    sub_188454838(v13, v12);
    sub_188423C74(a2, a3);
    sub_18845A1C0(v13, a2, a3, v6, v11);
    if (v3)
    {

      return v8;
    }

    MEMORY[0x18CFD52F0]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v8 = v15;
    v9 += 56;
    --v7;
    v6 = v11;
    if (!v7)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_188452584(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E61486B6E756863 && a2 == 0xEC00000073656C64;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079547465737361 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_188452698(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_1884526E0(char a1)
{
  if (a1)
  {
    return 0x7079547465737361;
  }

  else
  {
    return 0x6E61486B6E756863;
  }
}

uint64_t sub_188452724(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_18844E6FC(&qword_1EA90D210, &qword_1886F7078);
  sub_1883F70DC();
  v9 = v8;
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v10);
  sub_1883F83A4();
  sub_188400B68(a1, a1[3]);
  sub_188454128();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_18844E6FC(&qword_1EA90D1F8, &qword_1886F7070);
  sub_18845417C(&qword_1EA90D218, &qword_1EA90D220, &unk_1886F753C, MEMORY[0x1E69E6300]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v5, v7);
}

uint64_t sub_1884528E4(void *a1)
{
  sub_18844E6FC(&qword_1EA90D1E8, &qword_1886F7068);
  sub_1883F70DC();
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1883F83A4();
  v4 = a1[3];
  sub_188400B68(a1, v4);
  sub_188454128();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_18844E6FC(&qword_1EA90D1F8, &qword_1886F7070);
    sub_18845417C(&qword_1EA90D200, &qword_1EA90D208, &unk_1886F7564, MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v4 = v8;
    KeyedDecodingContainer.decode(_:forKey:)();
    v6 = sub_1883F7E48();
    v7(v6);
  }

  sub_1883FE944(a1);
  return v4;
}

uint64_t sub_188452B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_188452584(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_188452B3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_188452658();
  *a1 = result;
  return result;
}

uint64_t sub_188452B64(uint64_t a1)
{
  v2 = sub_188454128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_188452BA0(uint64_t a1)
{
  v2 = sub_188454128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_188452BDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1884528E4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_188452C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v10 = sub_18844E6FC(&qword_1EA90D1D8, &qword_1886F7028);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v23 - v15;
  v17 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v16, 1, 1, v17);
  (*(v11 + 16))(v13, a1, v10);
  v18 = (*(v11 + 80) + 72) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  v21 = v23;
  v20 = v24;
  *(v19 + 6) = a4;
  *(v19 + 7) = v21;
  *(v19 + 8) = v20;
  (*(v11 + 32))(&v19[v18], v13, v10);

  sub_188453610();
  return AsyncThrowingStream.Continuation.onTermination.setter();
}

uint64_t sub_188452E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v12;
  v8[6] = a4;
  v8[7] = a7;
  v9 = sub_18844E6FC(&qword_1EA90D1E0, &qword_1886F7060);
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_188452F14, 0, 0);
}

void sub_188452F14()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v26 = MEMORY[0x1E69E7CC0];
  v4 = sub_1883F4C9C(v3);
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = v3 + 32;
  v9 = v1;
  while (v4 != v5)
  {
    if (v6)
    {
      v10 = MEMORY[0x18CFD59D0](v5, v0[6]);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_29;
      }

      v10 = *(v8 + 8 * v5);
    }

    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v11 = *&v10[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_range + 8];
    if (v11 <= v0[7] || (v12 = *&v10[OBJC_IVAR____TtC8CloudKit17ChunkStreamHandle_range], v12 >= v0[8]) || v9 == v2 || v12 == v11)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 = v1;
    }

    ++v5;
  }

  v0[13] = v26;
  v13 = sub_1883F4C9C(v26);
  v0[14] = v13;
  if (!v13)
  {

    sub_1883F9744();
    sub_18844E6FC(&qword_1EA90D1D8, &qword_1886F7028);
    AsyncThrowingStream.Continuation.finish(throwing:)();

    sub_1883F816C();
    sub_1883FEB30();

    __asm { BRAA            X1, X16 }
  }

  if (v13 < 1)
  {
    goto LABEL_30;
  }

  v14 = sub_1883FDD1C(0);
  if (v16)
  {
    v17 = *(v15 + 8 * v14 + 32);
  }

  else
  {
    v17 = MEMORY[0x18CFD59D0](v14);
  }

  v0[16] = v17;
  static Task<>.checkCancellation()();
  sub_18840546C();
  if (v20 != v21)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v22 = swift_task_alloc();
  v0[17] = v22;
  *v22 = v0;
  sub_1883F9B60(v22);
  sub_1883FEB30();

  sub_188456CAC(v23, v24);
}

uint64_t sub_1884531AC()
{
  sub_1883FB4AC();
  v3 = v2;
  v5 = v4;
  sub_1883F78EC();
  v7 = v6;
  sub_1883F78D4();
  *v8 = v7;
  v9 = *v1;
  sub_1883F7110();
  *v10 = v9;
  v7[18] = v0;

  if (!v0)
  {
    v7[19] = v3;
    v7[20] = v5;
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1884532C8()
{
  v1 = v0[20];
  v0[2] = v1;
  v2 = v0[19];
  v3 = v0[16];
  v5 = v0[11];
  v4 = v0[12];
  v25 = v0[10];
  v0[3] = v2;
  sub_188423C74(v1, v2);
  v6 = sub_1883FF6E8();
  sub_18844E6FC(v6, v7);
  AsyncThrowingStream.Continuation.yield(_:)();

  sub_188423CCC(v1, v2);
  (*(v5 + 8))(v4, v25);
  for (i = v0[18]; ; i = 0)
  {
    v9 = sub_1883FB49C();
    if (v10)
    {

      sub_1883F9744();
      sub_18844E6FC(&qword_1EA90D1D8, &qword_1886F7028);
      AsyncThrowingStream.Continuation.finish(throwing:)();

      sub_1883F816C();
      sub_1883FEB30();

      __asm { BRAA            X1, X16 }
    }

    v11 = sub_1883FDD1C(v9);
    v13 = v10 ? *(v12 + 8 * v11 + 32) : MEMORY[0x18CFD59D0](v11);
    v0[16] = v13;
    static Task<>.checkCancellation()();
    if (!i)
    {
      break;
    }

    v14 = v0[16];
    v0[4] = i;
    v15 = sub_1883FF6E8();
    sub_18844E6FC(v15, v16);
    AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  sub_18840546C();
  if (v19 != v20)
  {
    __break(1u);
  }

  else
  {
    v21 = swift_task_alloc();
    v0[17] = v21;
    *v21 = v0;
    sub_1883F9B60(v21);
    sub_1883FEB30();

    sub_188456CAC(v22, v23);
  }
}

void sub_1884534B0()
{
  sub_1883FB4AC();
  sub_18840ACE0();
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v2 = sub_1883FB49C();
  if (v3)
  {

    sub_1883F9744();
    sub_18844E6FC(&qword_1EA90D1D8, &qword_1886F7028);
    AsyncThrowingStream.Continuation.finish(throwing:)();

    sub_1883F816C();

    v12();
  }

  else
  {
    v4 = sub_1883FDD1C(v2);
    if (v3)
    {
      v6 = *(v5 + 8 * v4 + 32);
    }

    else
    {
      v6 = MEMORY[0x18CFD59D0](v4);
    }

    *(v0 + 128) = v6;
    static Task<>.checkCancellation()();
    sub_18840546C();
    if (v7 != v8)
    {
      __break(1u);
    }

    else
    {
      v9 = swift_task_alloc();
      *(v0 + 136) = v9;
      *v9 = v0;
      v10 = sub_1883F9B60(v9);

      sub_188456CAC(v10, v11);
    }
  }
}

void sub_188453610()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v8);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10;
  v12 = sub_1883FA2CC();
  sub_18845457C(v12, v13, &qword_1EA90E6A0, &qword_1886F7030);
  v14 = type metadata accessor for TaskPriority();
  v15 = sub_1883F971C(v11, 1, v14);

  if (v15 == 1)
  {
    sub_1883F9FEC(v11, &qword_1EA90E6A0, &qword_1886F7030);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v14 - 8) + 8))(v11, v14);
  }

  v16 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      sub_1883F8708();
      v21 = swift_allocObject();
      *(v21 + 16) = v3;
      *(v21 + 24) = v1;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v22 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v24[1] = 7;
      v24[2] = v22;
      v24[3] = v20;
      swift_task_create();

      sub_1883F9FEC(v5, &qword_1EA90E6A0, &qword_1886F7030);

      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_1883F9FEC(v5, &qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8708();
  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  *(v23 + 24) = v1;
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  swift_task_create();
LABEL_14:
  sub_1883F8178();
}

void sub_1884538D0()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v8);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10;
  v12 = sub_1883FA2CC();
  sub_18845457C(v12, v13, &qword_1EA90E6A0, &qword_1886F7030);
  v14 = type metadata accessor for TaskPriority();
  v15 = sub_1884041DC(v11);

  if (v15 == 1)
  {
    sub_1883F9FEC(v11, &qword_1EA90E6A0, &qword_1886F7030);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v14 - 8) + 8))(v11, v14);
  }

  v16 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      sub_1883F8708();
      v21 = swift_allocObject();
      *(v21 + 16) = v3;
      *(v21 + 24) = v1;

      sub_18844E6FC(&qword_1EA90E0F0, &qword_1886F7090);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v22 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v22;
      v24[3] = v20;
      swift_task_create();

      sub_1883F9FEC(v5, &qword_1EA90E6A0, &qword_1886F7030);

      goto LABEL_13;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_1883F9FEC(v5, &qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8708();
  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  *(v23 + 24) = v1;
  sub_18844E6FC(&qword_1EA90E0F0, &qword_1886F7090);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  swift_task_create();
LABEL_13:
  sub_1883F8178();
}

uint64_t sub_188453BE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1884061E0;

  return sub_188451C44();
}

uint64_t sub_188453CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_188453D74;

  return MEMORY[0x1EEDF4078](a1, a2, a3, a4);
}

uint64_t sub_188453D74()
{
  sub_1883F78E0();
  v3 = v2;
  v5 = v4;
  sub_1883F78EC();
  v6 = *v1;
  sub_1883F7110();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

unint64_t sub_188453E74()
{
  result = qword_1EA90D1C0;
  if (!qword_1EA90D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D1C0);
  }

  return result;
}

unint64_t sub_188453EC8()
{
  result = qword_1EA90D1C8;
  if (!qword_1EA90D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D1C8);
  }

  return result;
}

uint64_t sub_188453F2C()
{
  sub_1883FC738();
  v0 = sub_18844E6FC(&qword_1EA90D1D8, &qword_1886F7028);
  sub_1883F8AE4(v0);
  v1 = swift_task_alloc();
  v2 = sub_1883F7E38(v1);
  *v2 = v3;
  v2[1] = sub_188442BE4;
  sub_1883F9968();

  return sub_188452E3C(v4, v5, v6, v7, v8, v9, v10, v11);
}

id sub_18845404C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, NSURL *a3@<X8>)
{
  v4 = v3;
  URL._bridgeToObjectiveC()(a3);
  v8 = v7;
  if (a2)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [v4 initWithURL:v8 options:v9.super.isa];

  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

unint64_t sub_188454128()
{
  result = qword_1EA90D1F0;
  if (!qword_1EA90D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D1F0);
  }

  return result;
}

uint64_t sub_18845417C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_18844E798(&qword_1EA90D1F8, &qword_1886F7070);
    sub_1884547F0(a2, type metadata accessor for ChunkStreamHandle, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_188454218(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_18845430C;

  return v5(v2 + 32);
}

uint64_t sub_18845430C()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F78D4();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  sub_1883F7110();
  *v7 = v6;

  *v5 = *(v2 + 32);
  sub_1883F816C();

  return v8();
}

uint64_t sub_188454408()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F78B4(v1);

  return v4(v3);
}

uint64_t sub_188454498()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F78B4(v1);

  return v4(v3);
}

unint64_t sub_188454528()
{
  result = qword_1EA90D238;
  if (!qword_1EA90D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D238);
  }

  return result;
}

uint64_t sub_18845457C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_18844E6FC(a3, a4);
  sub_1883F7B50();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1884545DC()
{
  result = qword_1EA90D248;
  if (!qword_1EA90D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D248);
  }

  return result;
}

unint64_t sub_188454630()
{
  result = qword_1EA90D250;
  if (!qword_1EA90D250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90D250);
  }

  return result;
}

unint64_t sub_188454674()
{
  result = qword_1EA90D268;
  if (!qword_1EA90D268)
  {
    sub_18844E798(&qword_1EA90D260, &qword_1886F70B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D268);
  }

  return result;
}

uint64_t sub_1884546D8()
{
  sub_1883FB4AC();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1884061E0;

  return sub_18844FF0C(v2, v3, v4, v5, v6);
}

unint64_t sub_18845479C()
{
  result = qword_1EA90D270;
  if (!qword_1EA90D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D270);
  }

  return result;
}

uint64_t sub_1884547F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for AssetStreamHandleInternal.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetStreamHandleInternal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetStreamHandle.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for AssetStreamHandle.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_188454B0C()
{
  result = qword_1EA90D278;
  if (!qword_1EA90D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D278);
  }

  return result;
}

unint64_t sub_188454B64()
{
  result = qword_1EA90D280;
  if (!qword_1EA90D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D280);
  }

  return result;
}

unint64_t sub_188454BBC()
{
  result = qword_1EA90D288;
  if (!qword_1EA90D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D288);
  }

  return result;
}

unint64_t sub_188454C14()
{
  result = qword_1EA90D290;
  if (!qword_1EA90D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D290);
  }

  return result;
}

unint64_t sub_188454C6C()
{
  result = qword_1EA90D298;
  if (!qword_1EA90D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D298);
  }

  return result;
}

unint64_t sub_188454CC4()
{
  result = qword_1EA90D2A0;
  if (!qword_1EA90D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D2A0);
  }

  return result;
}

void *sub_188454D24(_CCCryptor *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_188454E20(a1, a2, a3, a4);
  if (v9)
  {
    v10 = v9;
    sub_188423CCC(a3, a4);
    sub_188423CCC(a1, a2);
    *(v4 + 16) = v10;
  }

  else
  {
    sub_188455C98();
    swift_allocError();
    swift_willThrow();
    sub_188423CCC(a3, a4);
    sub_188423CCC(a1, a2);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

CCCryptorRef sub_188454E20(CCCryptorRef result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      v15 = result >> 32;
      if (result >> 32 >= result)
      {
        v16 = result;
        sub_188423C74(a3, a4);
        v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v13 = v16;
        v14 = v15;
        goto LABEL_8;
      }

      __break(1u);
      break;
    case 2uLL:
      v11 = *(result + 2);
      v10 = *(result + 3);
      sub_188423C74(a3, a4);
      v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = v11;
      v14 = v10;
LABEL_8:
      result = sub_18845552C(v13, v14, v12, a3, a4);
      break;
    case 3uLL:
      sub_188423C74(a3, a4);
      v9 = 0;
      v8 = 0;
      goto LABEL_5;
    default:
      sub_188423C74(a3, a4);
      v8 = a2 & 0xFFFFFFFFFFFFFFLL;
      v9 = v7;
LABEL_5:
      result = sub_188455484(v9, v8, a3, a4);
      break;
  }

  return result;
}

uint64_t sub_188454F34()
{
  CCCryptorRelease(*(v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_188454F90(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, CCCryptorRef *a5@<X8>)
{
  cryptorRef[1] = *MEMORY[0x1E69E9840];
  switch(a4 >> 62)
  {
    case 1uLL:
      if (a3 >> 32 < a3)
      {
        __break(1u);
      }

      sub_188423C74(a3, a4);
      v13 = a4 & 0x3FFFFFFFFFFFFFFFLL;
      v14 = a3;
      v15 = a3 >> 32;
      goto LABEL_11;
    case 2uLL:
      v11 = *(a3 + 16);
      v12 = *(a3 + 24);
      sub_188423C74(a3, a4);
      v13 = a4 & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v11;
      v15 = v12;
LABEL_11:
      v18 = sub_1884555F4(v14, v15, v13, a1, a2, a3, a4);
      if (v5)
      {

        __break(1u);
      }

      else
      {
        v17 = v18;
LABEL_13:
        *a5 = v17;
      }

      return;
    case 3uLL:
      memset(key, 0, 14);
      goto LABEL_5;
    default:
      key[0] = a3;
      LOWORD(key[1]) = a4;
      BYTE2(key[1]) = BYTE2(a4);
      BYTE3(key[1]) = BYTE3(a4);
      BYTE4(key[1]) = BYTE4(a4);
      BYTE5(key[1]) = BYTE5(a4);
LABEL_5:
      cryptorRef[0] = 0;
      v16 = MEMORY[0x18CFD45F0](a3, a4);
      if (CCCryptorCreateWithMode(1u, 3u, 0, 0, a1, key, v16, 0, 0, 0, 0, cryptorRef))
      {
        v17 = 0;
      }

      else
      {
        v17 = cryptorRef[0];
      }

      sub_188423CCC(a3, a4);
      sub_188423CCC(a3, a4);
      goto LABEL_13;
  }
}

uint64_t sub_188455194(uint64_t a1, unint64_t a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x18CFD45F0]();
  v9[0] = MEMORY[0x18CFD45E0](v5);
  v9[1] = v6;
  v8 = 0;
  sub_188423C74(a1, a2);

  sub_188455700(v9, a1, a2, v2, &v8);
  return v9[0];
}

uint64_t sub_188455238(void *dataOut, int a2, uint64_t a3, unint64_t a4, uint64_t a5, size_t *dataOutMoved)
{
  dataIn[2] = *MEMORY[0x1E69E9840];
  switch(a4 >> 62)
  {
    case 1uLL:
      if (a3 > a3 >> 32)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      sub_188423C74(a3, a4);
      v16 = __DataStorage._bytes.getter();
      if (v16)
      {
        v22 = __DataStorage._offset.getter();
        if (__OFSUB__(a3, v22))
        {
          goto LABEL_22;
        }

        v16 += a3 - v22;
      }

      MEMORY[0x18CFD43A0]();
      if (__OFSUB__(HIDWORD(a3), a3))
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
      }

      v21 = *(a5 + 16);
      v20 = HIDWORD(a3) - a3;
LABEL_16:
      CCCryptorUpdate(v21, v16, v20, dataOut, v20, dataOutMoved);

      return sub_188423CCC(a3, a4);
    case 2uLL:
      v15 = *(a3 + 16);

      sub_188423C74(a3, a4);
      v16 = __DataStorage._bytes.getter();
      if (!v16)
      {
        goto LABEL_6;
      }

      v17 = __DataStorage._offset.getter();
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_21;
      }

      v16 += v15 - v17;
LABEL_6:
      MEMORY[0x18CFD43A0]();
      v19 = *(a3 + 16);
      v18 = *(a3 + 24);
      v20 = v18 - v19;
      if (__OFSUB__(v18, v19))
      {
        goto LABEL_19;
      }

      v21 = *(a5 + 16);
      goto LABEL_16;
    case 3uLL:
      memset(dataIn, 0, 14);
      v12 = *(a5 + 16);
      v11 = 0;
      v13 = dataOut;
      v14 = 0;
      goto LABEL_9;
    default:
      dataIn[0] = a3;
      LOWORD(dataIn[1]) = a4;
      BYTE2(dataIn[1]) = BYTE2(a4);
      BYTE3(dataIn[1]) = BYTE3(a4);
      BYTE4(dataIn[1]) = BYTE4(a4);
      BYTE5(dataIn[1]) = BYTE5(a4);
      v11 = BYTE6(a4);
      v12 = *(a5 + 16);
      v13 = dataOut;
      v14 = BYTE6(a4);
LABEL_9:
      CCCryptorUpdate(v12, dataIn, v11, v13, v14, dataOutMoved);
      return sub_188423CCC(a3, a4);
  }
}

CCCryptorRef sub_188455484(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v8 = a1;
  v10 = WORD2(a2);
  v9 = a2;
  sub_188454F90(&v8, &v8 + BYTE6(a2), a3, a4, v11);
  result = sub_188423CCC(a3, a4);
  if (!v4)
  {
    return v11[0];
  }

  return result;
}

CCCryptorRef sub_18845552C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v11 = (v11 + a1 - result);
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = MEMORY[0x18CFD43A0]();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = v11 + v15;
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  sub_188454F90(v11, v17, a4, a5, &v18);
  result = sub_188423CCC(a4, a5);
  if (!v5)
  {
    return v18;
  }

  return result;
}

CCCryptorRef sub_1884555F4(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  cryptorRef[1] = *MEMORY[0x1E69E9840];
  v11 = __DataStorage._bytes.getter();
  if (v11)
  {
    v12 = v11;
    v13 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v13))
    {
      __break(1u);
    }

    v14 = (a1 - v13 + v12);
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x18CFD43A0]();
  cryptorRef[0] = 0;
  v15 = MEMORY[0x18CFD45F0](a6, a7);
  if (CCCryptorCreateWithMode(1u, 3u, 0, 0, a4, v14, v15, 0, 0, 0, 0, cryptorRef))
  {
    v16 = 0;
  }

  else
  {
    v16 = cryptorRef[0];
  }

  sub_188423CCC(a6, a7);
  return v16;
}

uint64_t sub_188455700(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, size_t *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v5 = a1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v26 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      sub_188423C74(a2, a3);

      sub_188423C74(a2, a3);

      sub_188423C74(v6, v5);
      sub_188423CCC(v6, v5);
      *a1 = xmmword_1886F7310;
      sub_188423CCC(0, 0xC000000000000000);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v6;
      v29 = v6 >> 32;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      if (v29 < v6)
      {
        goto LABEL_28;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
        goto LABEL_29;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v30 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v28 = v6;
      v26 = v30;
      v29 = v6 >> 32;
LABEL_16:
      v38 = a1;
      v31 = v29 - v28;
      if (v29 < v28)
      {
        goto LABEL_25;
      }

      sub_188423C74(a2, a3);

      result = __DataStorage._bytes.getter();
      if (!result)
      {
        goto LABEL_31;
      }

      v32 = result;
      v33 = __DataStorage._offset.getter();
      v34 = v6 - v33;
      if (__OFSUB__(v6, v33))
      {
        goto LABEL_27;
      }

      v35 = MEMORY[0x18CFD43A0]();
      if (v35 >= v31)
      {
        v36 = v31;
      }

      else
      {
        v36 = v35;
      }

      sub_188455238((v32 + v34), v32 + v34 + v36, a2, a3, a4, a5);
      sub_188423CCC(a2, a3);

      sub_188423CCC(a2, a3);

      sub_188423CCC(a2, a3);
      *v38 = v6;
      v38[1] = v26 | 0x4000000000000000;
      goto LABEL_23;
    case 2uLL:
      sub_188423C74(a2, a3);

      sub_188423C74(a2, a3);

      sub_188423C74(v6, v5);
      sub_188423CCC(v6, v5);
      *&dataOut = v6;
      *(&dataOut + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      v14 = a1;
      *a1 = xmmword_1886F7310;
      sub_188423CCC(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v15 = *(&dataOut + 1);
      v16 = *(dataOut + 16);
      v17 = *(dataOut + 24);
      sub_188423C74(a2, a3);

      result = __DataStorage._bytes.getter();
      if (!result)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v19 = result;
      v20 = __DataStorage._offset.getter();
      v21 = v16 - v20;
      if (__OFSUB__(v16, v20))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v22 = __OFSUB__(v17, v16);
      v23 = v17 - v16;
      if (v22)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      v24 = MEMORY[0x18CFD43A0]();
      if (v24 >= v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = v24;
      }

      sub_188455238((v19 + v21), v19 + v21 + v25, a2, a3, a4, a5);
      sub_188423CCC(a2, a3);

      sub_188423CCC(a2, a3);

      sub_188423CCC(a2, a3);
      *v14 = dataOut;
      v14[1] = v15 | 0x8000000000000000;
LABEL_23:

      sub_188423CCC(a2, a3);

    case 3uLL:
      *(&dataOut + 7) = 0;
      *&dataOut = 0;
      sub_188423C74(a2, a3);

      sub_188455238(&dataOut, &dataOut, a2, a3, a4, a5);
      sub_188423CCC(a2, a3);
      goto LABEL_23;
    default:
      sub_188423C74(a2, a3);

      sub_188423C74(a2, a3);

      sub_188423CCC(v6, v5);
      *&dataOut = v6;
      WORD4(dataOut) = v5;
      BYTE10(dataOut) = BYTE2(v5);
      BYTE11(dataOut) = BYTE3(v5);
      BYTE12(dataOut) = BYTE4(v5);
      BYTE13(dataOut) = BYTE5(v5);
      BYTE14(dataOut) = BYTE6(v5);
      sub_188455238(&dataOut, &dataOut + BYTE6(v5), a2, a3, a4, a5);
      v12 = dataOut;
      v13 = DWORD2(dataOut) | ((WORD6(dataOut) | (BYTE14(dataOut) << 16)) << 32);
      sub_188423CCC(a2, a3);

      sub_188423CCC(a2, a3);
      *a1 = v12;
      a1[1] = v13;
      goto LABEL_23;
  }
}

unint64_t sub_188455C98()
{
  result = qword_1EA90D2A8;
  if (!qword_1EA90D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D2A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ChunkDataDecryptor.Error(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}