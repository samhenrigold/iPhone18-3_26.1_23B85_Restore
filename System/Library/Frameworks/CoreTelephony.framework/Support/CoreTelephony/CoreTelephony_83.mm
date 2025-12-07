uint64_t *sub_1005555B4(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_100555690(uint64_t a1, void *a2, int *a3, _DWORD *a4)
{
  *&v8 = 0x100000001;
  *(&v8 + 1) = 0x100000001;
  *a3 = v8;
  *(a3 + 1) = v8;
  *(a3 + 4) = 0;
  v9 = sub_100554B98(a1, a2, @"timestamp", a3 + 4);
  v10 = **(a1 + 40);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v11)
    {
      v21 = PersonalityInfo::logPrefix(**(a1 + 24));
      v22 = (*(*a1 + 40))(a1);
      v71 = 136315906;
      v72 = v21;
      v73 = 2080;
      v74 = " ";
      v75 = 2080;
      v76 = v22;
      v77 = 2080;
      v78 = ", ";
      v23 = "#I %s%s%s%sInvalid message usage information, missing timestamp, skipping parsing";
      v24 = v10;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, &v71, 0x2Au);
    }

    return 0;
  }

  if (v11)
  {
    v12 = PersonalityInfo::logPrefix(**(a1 + 24));
    v13 = (*(*a1 + 40))(a1);
    v71 = 136315906;
    v72 = v12;
    v73 = 2080;
    v74 = " ";
    v75 = 2080;
    v76 = v13;
    v77 = 2080;
    v78 = ", ";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived message usage information", &v71, 0x2Au);
  }

  v14 = [a2 objectForKey:@"category-id"];
  if (!v14 || (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v15 integerValue] <= 0)
  {
    v25 = **(a1 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = PersonalityInfo::logPrefix(**(a1 + 24));
      v27 = (*(*a1 + 40))(a1);
      v71 = 136315906;
      v72 = v26;
      v73 = 2080;
      v74 = " ";
      v75 = 2080;
      v76 = v27;
      v77 = 2080;
      v78 = ", ";
      v23 = "#I %s%s%s%svoice usage category not present or invalid";
      v24 = v25;
      goto LABEL_16;
    }

    return 0;
  }

  *a4 = [v15 intValue];
  v16 = [a2 objectForKey:@"mo-sms"];
  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *a3 = [v16 intValue];
      v17 = **(a1 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = PersonalityInfo::logPrefix(**(a1 + 24));
        v19 = (*(*a1 + 40))(a1);
        v20 = *a3;
        v71 = 136316162;
        v72 = v18;
        v73 = 2080;
        v74 = " ";
        v75 = 2080;
        v76 = v19;
        v77 = 2080;
        v78 = ", ";
        v79 = 1024;
        v80 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sMO SMS: %d", &v71, 0x30u);
      }

      v16 = 1;
    }

    else
    {
      v16 = 0;
    }
  }

  v29 = [a2 objectForKey:@"mt-sms"];
  if (v29)
  {
    v30 = v29;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3[1] = [v30 intValue];
      v31 = **(a1 + 40);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = PersonalityInfo::logPrefix(**(a1 + 24));
        v33 = (*(*a1 + 40))(a1);
        v34 = a3[1];
        v71 = 136316162;
        v72 = v32;
        v73 = 2080;
        v74 = " ";
        v75 = 2080;
        v76 = v33;
        v77 = 2080;
        v78 = ", ";
        v79 = 1024;
        v80 = v34;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sMT SMS: %d", &v71, 0x30u);
      }

      v16 = 1;
    }
  }

  v35 = [a2 objectForKey:@"sms-capacity"];
  if (v35)
  {
    v36 = v35;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3[3] = [v36 intValue];
      v37 = **(a1 + 40);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = PersonalityInfo::logPrefix(**(a1 + 24));
        v39 = (*(*a1 + 40))(a1);
        v40 = a3[3];
        v71 = 136316162;
        v72 = v38;
        v73 = 2080;
        v74 = " ";
        v75 = 2080;
        v76 = v39;
        v77 = 2080;
        v78 = ", ";
        v79 = 1024;
        v80 = v40;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sMT MMS: %d", &v71, 0x30u);
      }

      v16 = 1;
    }
  }

  v41 = [a2 objectForKey:@"total-sms"];
  if (v41)
  {
    v42 = v41;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3[2] = [v42 intValue];
      v43 = **(a1 + 40);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = PersonalityInfo::logPrefix(**(a1 + 24));
        v45 = (*(*a1 + 40))(a1);
        v46 = a3[2];
        v71 = 136316162;
        v72 = v44;
        v73 = 2080;
        v74 = " ";
        v75 = 2080;
        v76 = v45;
        v77 = 2080;
        v78 = ", ";
        v79 = 1024;
        v80 = v46;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sMT MMS: %d", &v71, 0x30u);
      }

      v16 = 1;
    }
  }

  v47 = [a2 objectForKey:@"mo-mms"];
  if (v47)
  {
    v48 = v47;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3[4] = [v48 intValue];
      v49 = **(a1 + 40);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = PersonalityInfo::logPrefix(**(a1 + 24));
        v51 = (*(*a1 + 40))(a1);
        v52 = a3[4];
        v71 = 136316162;
        v72 = v50;
        v73 = 2080;
        v74 = " ";
        v75 = 2080;
        v76 = v51;
        v77 = 2080;
        v78 = ", ";
        v79 = 1024;
        v80 = v52;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sMO MMS: %d", &v71, 0x30u);
      }

      v16 = 1;
    }
  }

  v53 = [a2 objectForKey:@"mt-mms"];
  if (v53)
  {
    v54 = v53;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3[5] = [v54 intValue];
      v55 = **(a1 + 40);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = PersonalityInfo::logPrefix(**(a1 + 24));
        v57 = (*(*a1 + 40))(a1);
        v58 = a3[5];
        v71 = 136316162;
        v72 = v56;
        v73 = 2080;
        v74 = " ";
        v75 = 2080;
        v76 = v57;
        v77 = 2080;
        v78 = ", ";
        v79 = 1024;
        v80 = v58;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sMT MMS: %d", &v71, 0x30u);
      }

      v16 = 1;
    }
  }

  v59 = [a2 objectForKey:@"mms-capacity"];
  if (v59)
  {
    v60 = v59;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3[7] = [v60 intValue];
      v61 = **(a1 + 40);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = PersonalityInfo::logPrefix(**(a1 + 24));
        v63 = (*(*a1 + 40))(a1);
        v64 = a3[7];
        v71 = 136316162;
        v72 = v62;
        v73 = 2080;
        v74 = " ";
        v75 = 2080;
        v76 = v63;
        v77 = 2080;
        v78 = ", ";
        v79 = 1024;
        v80 = v64;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sMT MMS: %d", &v71, 0x30u);
      }

      v16 = 1;
    }
  }

  v65 = [a2 objectForKey:@"total-mms"];
  if (v65)
  {
    v66 = v65;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3[6] = [v66 intValue];
      v67 = **(a1 + 40);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = PersonalityInfo::logPrefix(**(a1 + 24));
        v69 = (*(*a1 + 40))(a1);
        v70 = a3[6];
        v71 = 136316162;
        v72 = v68;
        v73 = 2080;
        v74 = " ";
        v75 = 2080;
        v76 = v69;
        v77 = 2080;
        v78 = ", ";
        v79 = 1024;
        v80 = v70;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sMT MMS: %d", &v71, 0x30u);
      }

      return 1;
    }
  }

  return v16;
}

uint64_t *sub_10055617C(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_100556260(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = [a2 objectForKey:@"subscription-status"];
  if (!v8 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v19 = **(a1 + 40);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v20 = PersonalityInfo::logPrefix(**(a1 + 24));
    v21 = (*(*a1 + 40))(a1);
    v25 = 136315906;
    v26 = v20;
    v27 = 2080;
    v28 = " ";
    v29 = 2080;
    v30 = v21;
    v31 = 2080;
    v32 = ", ";
    v22 = "#I %s%s%s%sSubscription status is invalid";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v22, &v25, 0x2Au);
    return 0;
  }

  if (![v9 length])
  {
    v19 = **(a1 + 40);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v23 = PersonalityInfo::logPrefix(**(a1 + 24));
    v24 = (*(*a1 + 40))(a1);
    v25 = 136315906;
    v26 = v23;
    v27 = 2080;
    v28 = " ";
    v29 = 2080;
    v30 = v24;
    v31 = 2080;
    v32 = ", ";
    v22 = "#I %s%s%s%sReceived an empty value for subscription status";
    goto LABEL_13;
  }

  *a3 = v9;
  v10 = **(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = PersonalityInfo::logPrefix(**(a1 + 24));
    v12 = (*(*a1 + 40))(a1);
    v25 = 136316162;
    v26 = v11;
    v27 = 2080;
    v28 = " ";
    v29 = 2080;
    v30 = v12;
    v31 = 2080;
    v32 = ", ";
    v33 = 2080;
    v34 = [v9 cStringUsingEncoding:4];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived subscription status: %s", &v25, 0x34u);
  }

  result = [a2 objectForKey:@"plan-type"];
  if (result)
  {
    v14 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *a4 = v14;
      v15 = **(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = PersonalityInfo::logPrefix(**(a1 + 24));
        v17 = (*(*a1 + 40))(a1);
        v18 = [v14 cStringUsingEncoding:4];
        v25 = 136316162;
        v26 = v16;
        v27 = 2080;
        v28 = " ";
        v29 = 2080;
        v30 = v17;
        v31 = 2080;
        v32 = ", ";
        v33 = 2080;
        v34 = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived subscription plan type: %s", &v25, 0x34u);
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_10055663C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = sub_100556260(a1, a2, a3, a4);
  if (v8)
  {
    v9 = [a2 objectForKey:@"plan-mgt-type"];
    if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      *a5 = v10;
      v11 = **(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = PersonalityInfo::logPrefix(**(a1 + 24));
        v13 = (*(*a1 + 40))(a1);
        v18 = 136316162;
        v19 = v12;
        v20 = 2080;
        v21 = " ";
        v22 = 2080;
        v23 = v13;
        v24 = 2080;
        v25 = ", ";
        v26 = 2080;
        v27 = [v10 cStringUsingEncoding:4];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived subscription plan management type: %s", &v18, 0x34u);
      }
    }

    else
    {
      v14 = **(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = PersonalityInfo::logPrefix(**(a1 + 24));
        v16 = (*(*a1 + 40))(a1);
        v18 = 136315906;
        v19 = v15;
        v20 = 2080;
        v21 = " ";
        v22 = 2080;
        v23 = v16;
        v24 = 2080;
        v25 = ", ";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sno plan management type assume not cambio", &v18, 0x2Au);
      }

      *a5 = @"unknown-plan-mgt";
    }
  }

  return v8;
}

BOOL sub_100556878(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 objectForKey:@"plan-type"];
  if (!v5 || (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = **(a1 + 40);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v15 = 136315906;
    v16 = v10;
    v17 = 2080;
    v18 = " ";
    v19 = 2080;
    v20 = v11;
    v21 = 2080;
    v22 = ", ";
    v12 = "#I %s%s%s%ssubscription does not have valid plan type";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v12, &v15, 0x2Au);
    return 0;
  }

  if ([v6 isEqualToString:@"bucket"])
  {
    v7 = *(a3 + 36) | 1;
LABEL_10:
    *(a3 + 36) = v7;
    return 1;
  }

  if ([v6 isEqualToString:@"time"])
  {
    v7 = *(a3 + 36) | 2;
    goto LABEL_10;
  }

  v8 = **(a1 + 40);
  result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v13 = PersonalityInfo::logPrefix(**(a1 + 24));
    v14 = (*(*a1 + 40))(a1);
    v15 = 136315906;
    v16 = v13;
    v17 = 2080;
    v18 = " ";
    v19 = 2080;
    v20 = v14;
    v21 = 2080;
    v22 = ", ";
    v12 = "#I %s%s%s%sinvalid data plan type";
    goto LABEL_7;
  }

  return result;
}

void **sub_100556AA8(void **a1)
{
  sub_10006DCAC((a1 + 6), a1[7]);
  sub_10006DCAC((a1 + 3), a1[4]);
  sub_10006DCAC(a1, a1[1]);
  return a1;
}

uint64_t sub_100556AF0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_100556B70(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_100556B70(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_1005570E0(v3 - 192);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100556BD0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_1005570E0(v4 - 192);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_100556C54(unint64_t *a1, __int128 *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v4 = v3 + 1;
  if (v3 + 1 > 0x155555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v7 = 0x155555555555555;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    sub_100556EA4(a1, v7);
  }

  v14 = 0;
  v15 = 192 * v3;
  sub_100556D84((192 * v3), a2);
  v16 = 192 * v3 + 192;
  v8 = a1[1];
  v9 = 192 * v3 + *a1 - v8;
  sub_100556EFC(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_100557090(&v14);
  return v13;
}

void sub_100556D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100557090(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_100556D84(_BYTE *a1, __int128 *a2)
{
  v4 = sub_10006F264(a1, a2);
  sub_10006F264(v4 + 32, a2 + 2);
  sub_10006F264(a1 + 64, a2 + 4);
  sub_10006F264(a1 + 96, a2 + 6);
  sub_10006F264(a1 + 128, a2 + 8);
  sub_10006F264(a1 + 160, a2 + 10);
  return a1;
}

void sub_100556DEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 152) == 1 && *(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 120) == 1 && *(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 56) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100556EA4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_100556EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 96;
    v7 = a2;
    do
    {
      *(v6 - 96) = 0;
      *(v6 - 72) = 0;
      if (*(v7 + 24) == 1)
      {
        v8 = *v7;
        *(v6 - 80) = *(v7 + 16);
        *(v6 - 96) = v8;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(v6 - 72) = 1;
      }

      *(v6 - 64) = 0;
      *(v6 - 40) = 0;
      if (*(v7 + 56) == 1)
      {
        v9 = *(v7 + 32);
        *(v6 - 48) = *(v7 + 48);
        *(v6 - 64) = v9;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = 0;
        *(v6 - 40) = 1;
      }

      *(v6 - 32) = 0;
      *(v6 - 8) = 0;
      if (*(v7 + 88) == 1)
      {
        v10 = *(v7 + 64);
        *(v6 - 16) = *(v7 + 80);
        *(v6 - 32) = v10;
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 64) = 0;
        *(v6 - 8) = 1;
      }

      *v6 = 0;
      *(v6 + 24) = 0;
      if (*(v7 + 120) == 1)
      {
        v11 = *(v7 + 96);
        *(v6 + 16) = *(v7 + 112);
        *v6 = v11;
        *(v7 + 104) = 0;
        *(v7 + 112) = 0;
        *(v7 + 96) = 0;
        *(v6 + 24) = 1;
      }

      *(v6 + 32) = 0;
      *(v6 + 56) = 0;
      if (*(v7 + 152) == 1)
      {
        v12 = *(v7 + 128);
        *(v6 + 48) = *(v7 + 144);
        *(v6 + 32) = v12;
        *(v7 + 136) = 0;
        *(v7 + 144) = 0;
        *(v7 + 128) = 0;
        *(v6 + 56) = 1;
      }

      *(v6 + 64) = 0;
      *(v6 + 88) = 0;
      if (*(v7 + 184) == 1)
      {
        v13 = *(v7 + 160);
        *(v6 + 80) = *(v7 + 176);
        *(v6 + 64) = v13;
        *(v7 + 168) = 0;
        *(v7 + 176) = 0;
        *(v7 + 160) = 0;
        *(v6 + 88) = 1;
      }

      v7 += 192;
      v6 += 192;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      v5 = sub_1005570E0(v5) + 192;
    }
  }
}

uint64_t sub_100557090(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 192;
    sub_1005570E0(i - 192);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1005570E0(uint64_t a1)
{
  if (*(a1 + 184) == 1 && *(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_1005571AC(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_100556B70(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_100556BD0(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a2 = 0uLL;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_100557250(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_1005572D0(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1005572D0(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_100557938(v3 - 264);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100557330(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_100557938(v4 - 264);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1005573B4(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v3 = 0xF83E0F83E0F83E1 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0xF83E0F83E0F83ELL)
  {
    sub_1000CE3D4();
  }

  if (0x1F07C1F07C1F07C2 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x1F07C1F07C1F07C2 * ((a1[2] - *a1) >> 3);
  }

  if ((0xF83E0F83E0F83E1 * ((a1[2] - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
  {
    v7 = 0xF83E0F83E0F83ELL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    sub_100557684(a1, v7);
  }

  v14 = 0;
  v15 = 264 * v3;
  sub_1005574FC(264 * v3, a2);
  v16 = (264 * v3 + 264);
  v8 = a1[1];
  v9 = 264 * v3 + *a1 - v8;
  sub_1005576E0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1005578E8(&v14);
  return v13;
}

void sub_1005574E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1005578E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005574FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006F264(a1, a2);
  sub_10006F264(v4 + 32, (a2 + 32));
  sub_10006F264((a1 + 64), (a2 + 64));
  sub_10006F264((a1 + 96), (a2 + 96));
  *(a1 + 128) = *(a2 + 128);
  sub_10006F264((a1 + 136), (a2 + 136));
  sub_10006F264((a1 + 168), (a2 + 168));
  sub_10006F264((a1 + 200), (a2 + 200));
  sub_10006F264((a1 + 232), (a2 + 232));
  return a1;
}

void sub_100557584(_Unwind_Exception *exception_object)
{
  if (*(v1 + 224) == 1 && *(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
  }

  if (*(v1 + 192) == 1 && *(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 160) == 1 && *(v1 + 159) < 0)
  {
    operator delete(*(v1 + 136));
  }

  if (*(v1 + 120) == 1 && *(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 56) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100557684(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF83E0F83E0F83FLL)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_1005576E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 128;
    v7 = a2;
    do
    {
      *(v6 - 128) = 0;
      *(v6 - 104) = 0;
      if (*(v7 + 24) == 1)
      {
        v8 = *v7;
        *(v6 - 112) = *(v7 + 16);
        *(v6 - 128) = v8;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(v6 - 104) = 1;
      }

      *(v6 - 96) = 0;
      *(v6 - 72) = 0;
      if (*(v7 + 56) == 1)
      {
        v9 = *(v7 + 32);
        *(v6 - 80) = *(v7 + 48);
        *(v6 - 96) = v9;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = 0;
        *(v6 - 72) = 1;
      }

      *(v6 - 64) = 0;
      *(v6 - 40) = 0;
      if (*(v7 + 88) == 1)
      {
        v10 = *(v7 + 64);
        *(v6 - 48) = *(v7 + 80);
        *(v6 - 64) = v10;
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 64) = 0;
        *(v6 - 40) = 1;
      }

      *(v6 - 32) = 0;
      *(v6 - 8) = 0;
      if (*(v7 + 120) == 1)
      {
        v11 = *(v7 + 96);
        *(v6 - 16) = *(v7 + 112);
        *(v6 - 32) = v11;
        *(v7 + 104) = 0;
        *(v7 + 112) = 0;
        *(v7 + 96) = 0;
        *(v6 - 8) = 1;
      }

      *v6 = *(v7 + 128);
      *(v6 + 8) = 0;
      *(v6 + 32) = 0;
      if (*(v7 + 160) == 1)
      {
        v12 = *(v7 + 136);
        *(v6 + 24) = *(v7 + 152);
        *(v6 + 8) = v12;
        *(v7 + 144) = 0;
        *(v7 + 152) = 0;
        *(v7 + 136) = 0;
        *(v6 + 32) = 1;
      }

      *(v6 + 40) = 0;
      *(v6 + 64) = 0;
      if (*(v7 + 192) == 1)
      {
        v13 = *(v7 + 168);
        *(v6 + 56) = *(v7 + 184);
        *(v6 + 40) = v13;
        *(v7 + 176) = 0;
        *(v7 + 184) = 0;
        *(v7 + 168) = 0;
        *(v6 + 64) = 1;
      }

      *(v6 + 72) = 0;
      *(v6 + 96) = 0;
      if (*(v7 + 224) == 1)
      {
        v14 = *(v7 + 200);
        *(v6 + 88) = *(v7 + 216);
        *(v6 + 72) = v14;
        *(v7 + 208) = 0;
        *(v7 + 216) = 0;
        *(v7 + 200) = 0;
        *(v6 + 96) = 1;
      }

      *(v6 + 104) = 0;
      *(v6 + 128) = 0;
      if (*(v7 + 256) == 1)
      {
        v15 = *(v7 + 232);
        *(v6 + 120) = *(v7 + 248);
        *(v6 + 104) = v15;
        *(v7 + 240) = 0;
        *(v7 + 248) = 0;
        *(v7 + 232) = 0;
        *(v6 + 128) = 1;
      }

      v7 += 264;
      v6 += 264;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      v5 = sub_100557938(v5) + 264;
    }
  }
}

uint64_t sub_1005578E8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 264;
    sub_100557938(i - 264);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100557938(uint64_t a1)
{
  if (*(a1 + 256) == 1 && *(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 224) == 1 && *(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 192) == 1 && *(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 160) == 1 && *(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_100557A3C(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_1005572D0(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_100557330(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a2 = 0uLL;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_100557AE0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_100557B60(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_100557B60(uint64_t *a1)
{
  if (*a1)
  {
    sub_100557BA0(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100557BA0(uint64_t result, uint64_t a2)
{
  for (i = *(result + 8); i != a2; sub_100557BF4(result, i))
  {
    i -= 160;
  }

  *(result + 8) = a2;
}

void sub_100557BF4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 136) == 1 && *(a2 + 135) < 0)
  {
    operator delete(*(a2 + 112));
  }

  if (*(a2 + 96) == 1 && *(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  if (*(a2 + 56) == 1 && *(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 24) == 1 && *(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_100557C9C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100557BA0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_100557CF0(unint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v6 = 0x199999999999999;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100557F00(a1, v6);
  }

  v13 = 0;
  v14 = 160 * v2;
  sub_100557E20(160 * v2, a2);
  v15 = 160 * v2 + 160;
  v7 = a1[1];
  v8 = 160 * v2 + *a1 - v7;
  sub_100557F58(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1005581AC(&v13);
  return v12;
}

void sub_100557E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1005581AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100557E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006F264(a1, a2);
  sub_10006F264(v4 + 32, (a2 + 32));
  *(a1 + 64) = *(a2 + 64);
  sub_10006F264((a1 + 72), (a2 + 72));
  *(a1 + 104) = *(a2 + 104);
  sub_10006F264((a1 + 112), (a2 + 112));
  v5 = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 144) = v5;
  return a1;
}

void sub_100557E90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 96) == 1 && *(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 56) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100557F00(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100557F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v24 = a4;
  v21[0] = a1;
  v21[1] = &v23;
  v21[2] = &v24;
  v22 = 0;
  if (a2 == a3)
  {
    LOBYTE(v22) = 1;
  }

  else
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = (a2 + v7);
      v9 = a4 + v7;
      *v9 = 0;
      *(v9 + 24) = 0;
      if (*(a2 + v7 + 24) == 1)
      {
        v10 = *v8;
        *(v9 + 16) = *(v8 + 2);
        *v9 = v10;
        *(v8 + 1) = 0;
        *(v8 + 2) = 0;
        *v8 = 0;
        *(v9 + 24) = 1;
      }

      *(v9 + 32) = 0;
      *(v9 + 56) = 0;
      if (*(v8 + 56) == 1)
      {
        v11 = (a2 + v7);
        v12 = *(a2 + v7 + 32);
        *(v9 + 48) = *(a2 + v7 + 48);
        *(v9 + 32) = v12;
        v11[5] = 0;
        v11[6] = 0;
        v11[4] = 0;
        *(v9 + 56) = 1;
      }

      v13 = a4 + v7;
      v14 = a2 + v7;
      *(v13 + 64) = *(a2 + v7 + 64);
      *(a4 + v7 + 72) = 0;
      *(v13 + 96) = 0;
      if (*(a2 + v7 + 96) == 1)
      {
        v15 = *(v14 + 72);
        *(a4 + v7 + 88) = *(v14 + 88);
        *(a4 + v7 + 72) = v15;
        *(v14 + 80) = 0;
        *(v14 + 88) = 0;
        *(v14 + 72) = 0;
        *(v13 + 96) = 1;
      }

      *(v13 + 104) = *(v14 + 104);
      *(v13 + 112) = 0;
      *(v13 + 136) = 0;
      if (*(v14 + 136) == 1)
      {
        v16 = (a2 + v7);
        v17 = *(a2 + v7 + 112);
        *(v13 + 128) = *(a2 + v7 + 128);
        *(v13 + 112) = v17;
        v16[15] = 0;
        v16[16] = 0;
        v16[14] = 0;
        *(v13 + 136) = 1;
      }

      v18 = a4 + v7;
      v19 = *(a2 + v7 + 144);
      *(v18 + 152) = *(a2 + v7 + 152);
      *(v18 + 144) = v19;
      v7 += 160;
    }

    while (a2 + v7 != a3);
    v24 = a4 + v7;
    LOBYTE(v22) = 1;
    while (v5 != a3)
    {
      sub_100557BF4(a1, v5);
      v5 += 160;
    }
  }

  return sub_100558120(v21);
}

uint64_t sub_100558120(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100558158(a1);
  }

  return a1;
}

void sub_100558158(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 160;
      sub_100557BF4(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_1005581AC(uint64_t a1)
{
  sub_1005581E4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1005581E4(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 160;
    sub_100557BF4(v5, v4 - 160);
  }
}

uint64_t sub_10055822C(uint64_t a1)
{
  if (*(a1 + 136) == 1 && *(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_1005582C0(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_100557B60(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_100557C9C(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a2 = 0uLL;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_100558364(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100558448(a1, a2);
  }

  else
  {
    sub_1005583A4(a1, a2);
    result = v3 + 72;
  }

  a1[1] = result;
  return result;
}

_BYTE *sub_1005583A4(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = sub_10006F264((v4 + 24), (a2 + 24));
  v7 = *(a2 + 7);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 56) = v7;
  *(a1 + 8) = v4 + 72;
  return result;
}

uint64_t sub_100558448(unint64_t *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1000CE3D4();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_1003EA754(a1, v6);
  }

  v7 = 72 * v2;
  v16 = 0;
  v17 = v7;
  v18 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  sub_10006F264((v7 + 24), (a2 + 24));
  v9 = *(a2 + 7);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 56) = v9;
  *&v18 = v18 + 72;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  sub_1005585E0(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_100558760(&v16);
  return v15;
}

void sub_1005585B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  sub_100558760(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005585E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 == a3)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    v5 = a2;
    v7 = (a2 + 24);
    do
    {
      v8 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 1);
      *a4 = v8;
      *(v7 - 2) = 0;
      *(v7 - 1) = 0;
      *(v7 - 3) = 0;
      *(a4 + 24) = 0;
      *(a4 + 48) = 0;
      if (*(v7 + 24) == 1)
      {
        v9 = *v7;
        *(a4 + 40) = *(v7 + 2);
        *(a4 + 24) = v9;
        *(v7 + 1) = 0;
        *(v7 + 2) = 0;
        *v7 = 0;
        *(a4 + 48) = 1;
      }

      v10 = v7 - 24;
      v11 = *(v7 + 4);
      *(a4 + 64) = *(v7 + 40);
      *(a4 + 56) = v11;
      a4 += 72;
      v7 = (v7 + 72);
    }

    while (v10 + 72 != a3);
    v16 = a4;
    LOBYTE(v14) = 1;
    while (v5 != a3)
    {
      sub_1005586FC(a1, v5);
      v5 += 72;
    }
  }

  return sub_1003EA8A0(v13);
}

void sub_1005586FC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_100558760(uint64_t a1)
{
  sub_100558798(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100558798(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 72;
    sub_1005586FC(v5, v4 - 72);
  }
}

void sub_1005587E0(uint64_t *a1)
{
  if (*a1)
  {
    sub_100558820(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100558820(uint64_t result, uint64_t a2)
{
  for (i = *(result + 8); i != a2; sub_100558874(result, i))
  {
    i -= 128;
  }

  *(result + 8) = a2;
}

void sub_100558874(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 120) == 1 && *(a2 + 119) < 0)
  {
    operator delete(*(a2 + 96));
  }

  if (*(a2 + 88) == 1 && *(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  if (*(a2 + 56) == 1 && *(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 24) == 1 && *(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_10055891C(uint64_t *a1, __int128 *a2, __n128 a3)
{
  v3 = (a1[1] - *a1) >> 7;
  v4 = v3 + 1;
  if ((v3 + 1) >> 57)
  {
    sub_1000CE3D4();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 6 > v4)
  {
    v4 = v7 >> 6;
  }

  if (v7 >= 0x7FFFFFFFFFFFFF80)
  {
    v8 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v18 = a1;
  if (v8)
  {
    sub_100558AEC(a1, v8);
  }

  v15 = 0;
  v16 = v3 << 7;
  sub_100558A2C((v3 << 7), a2);
  v17 = ((v3 << 7) + 128);
  v9 = a1[1];
  v10 = (v3 << 7) + *a1 - v9;
  sub_100558B34(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100558D44(&v15);
  return v14;
}

void sub_100558A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100558D44(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_100558A2C(_BYTE *a1, __int128 *a2)
{
  v4 = sub_10006F264(a1, a2);
  sub_10006F264(v4 + 32, a2 + 2);
  sub_10006F264(a1 + 64, a2 + 4);
  sub_10006F264(a1 + 96, a2 + 6);
  return a1;
}

void sub_100558A7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 56) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100558AEC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100558B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 == a3)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 24) = 0;
      if (*(v7 + 24) == 1)
      {
        v8 = *v7;
        *(a4 + 16) = *(v7 + 16);
        *a4 = v8;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(a4 + 24) = 1;
      }

      *(a4 + 32) = 0;
      *(a4 + 56) = 0;
      if (*(v7 + 56) == 1)
      {
        v9 = *(v7 + 32);
        *(a4 + 48) = *(v7 + 48);
        *(a4 + 32) = v9;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = 0;
        *(a4 + 56) = 1;
      }

      *(a4 + 64) = 0;
      *(a4 + 88) = 0;
      if (*(v7 + 88) == 1)
      {
        v10 = *(v7 + 64);
        *(a4 + 80) = *(v7 + 80);
        *(a4 + 64) = v10;
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 64) = 0;
        *(a4 + 88) = 1;
      }

      *(a4 + 96) = 0;
      *(a4 + 120) = 0;
      if (*(v7 + 120) == 1)
      {
        v11 = *(v7 + 96);
        *(a4 + 112) = *(v7 + 112);
        *(a4 + 96) = v11;
        *(v7 + 104) = 0;
        *(v7 + 112) = 0;
        *(v7 + 96) = 0;
        *(a4 + 120) = 1;
      }

      v7 += 128;
      a4 += 128;
    }

    while (v7 != a3);
    v16 = a4;
    LOBYTE(v14) = 1;
    while (v5 != a3)
    {
      sub_100558874(a1, v5);
      v5 += 128;
    }
  }

  return sub_100558CB8(v13);
}

uint64_t sub_100558CB8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100558CF0(a1);
  }

  return a1;
}

void sub_100558CF0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 128;
      sub_100558874(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_100558D44(uint64_t a1)
{
  sub_100558D7C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100558D7C(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 128;
    sub_100558874(v5, v4 - 128);
  }
}

uint64_t sub_100558DC4(uint64_t a1)
{
  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_100558E58(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  result = sub_10004EFD0((v4 + 24), *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t sub_100558F08(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1003ECE58(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  sub_10004EFD0((v7 + 24), *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  *&v17 = v17 + 48;
  v9 = *(a1 + 8);
  v10 = v16 + *a1 - v9;
  sub_1003ECEB0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1003ECF8C(&v15);
  return v14;
}

void sub_100559068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  sub_1003ECF8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100559094(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_1005591B8(a1, v7);
  }

  v8 = (32 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0;
  *(v8 + 1) = *(a2 + 8);
  v8[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *&v17 = 32 * v2 + 32;
  v9 = a1[1];
  v10 = (32 * v2 + *a1 - v9);
  sub_100559200(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100559350(&v15);
  return v14;
}

void sub_1005591A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100559350(va);
  _Unwind_Resume(a1);
}

void sub_1005591B8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100559200(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v9 = 0;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 0;
      *(a4 + 1) = *(v6 + 8);
      a4[3] = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 4;
    }

    while (v6 != a3);
    v11 = a4;
    LOBYTE(v9) = 1;
    while (v5 != a3)
    {
      v12 = (v5 + 8);
      sub_1003ED090(&v12);
      v5 += 32;
    }
  }

  return sub_1005592C0(v8);
}

uint64_t sub_1005592C0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1005592F8(a1);
  }

  return a1;
}

void sub_1005592F8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 32;
      v4 = (v1 - 24);
      sub_1003ED090(&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **sub_100559350(void **a1)
{
  sub_100559384(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100559384(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    v4 = (i - 24);
    sub_1003ED090(&v4);
  }
}

uint64_t sub_1005593DC(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1003ECE58(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *&v17 = 48 * v2 + 48;
  v9 = *(a1 + 8);
  v10 = 48 * v2 + *a1 - v9;
  sub_1003ECEB0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1003ECF8C(&v15);
  return v14;
}

void sub_100559520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1003ECF8C(va);
  _Unwind_Resume(a1);
}

void *sub_100559534(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *a2;
  *(v3 + 16) = *(a2 + 2);
  *v3 = v4;
  if (*(a2 + 47) < 0)
  {
    result = sub_100005F2C((v3 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(v3 + 24) = v5;
  }

  v2[1] = v3 + 48;
  return result;
}

uint64_t sub_1005595A4(unint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_1003EB574(a1, v6);
  }

  v7 = 48 * v2;
  v17 = 0;
  v18 = v7;
  v19 = 48 * v2;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((v7 + 24), *(a2 + 3), *(a2 + 4));
    v7 = v18;
    v10 = v19;
  }

  else
  {
    v9 = *(a2 + 24);
    *(48 * v2 + 0x28) = *(a2 + 5);
    *(48 * v2 + 0x18) = v9;
    v10 = 48 * v2;
  }

  *&v19 = v10 + 48;
  v11 = a1[1];
  v12 = v7 + *a1 - v11;
  sub_100559704(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1005597C8(&v17);
  return v16;
}

void sub_1005596F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1005597C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100559704(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v11 = 0;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 24) = v8;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 3) = 0;
      v6 += 3;
      a4 += 48;
    }

    while (v6 != a3);
    v13 = a4;
    LOBYTE(v11) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 3));
      }

      v5 += 3;
    }
  }

  return sub_1003EB6A0(v10);
}

uint64_t sub_1005597C8(uint64_t a1)
{
  sub_100559800(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100559800(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t *sub_10055985C(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((v4 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v6;
  }

  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  result = sub_1003EB4A0((v4 + 48), *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 4));
  *(a1 + 8) = v4 + 72;
  return result;
}

void sub_10055990C(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_10055994C(unint64_t *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1000CE3D4();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_1003EB308(a1, v6);
  }

  v7 = 72 * v2;
  v16 = 0;
  v17 = v7;
  v18 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((v7 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(v7 + 40) = *(a2 + 5);
    *(v7 + 24) = v9;
  }

  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  sub_1003EB4A0((v7 + 48), *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 4));
  *&v18 = v18 + 72;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  sub_100559B30(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_100559C8C(&v16);
  return v15;
}

void sub_100559AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  sub_100559C8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100559B30(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 2);
      *a4 = v8;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 5);
      *(a4 + 24) = v9;
      *(v7 + 4) = 0;
      *(v7 + 5) = 0;
      *(v7 + 3) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = v7[3];
      *(a4 + 64) = *(v7 + 8);
      *(v7 + 6) = 0;
      *(v7 + 7) = 0;
      *(v7 + 8) = 0;
      v7 = (v7 + 72);
      a4 += 72;
    }

    while (v7 != a3);
    v14 = a4;
    LOBYTE(v12) = 1;
    while (v5 != a3)
    {
      sub_100559C34(a1, v5);
      v5 = (v5 + 72);
    }
  }

  return sub_1003EB7C4(v11);
}

void sub_100559C34(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 48);
  sub_1003EB720(&v3);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_100559C8C(uint64_t a1)
{
  sub_100559CC4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100559CC4(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 72;
    sub_100559C34(v5, v4 - 72);
  }
}

uint64_t sub_100559D0C(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_1003EB720(&v3);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100559D68(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_100559E88(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 3);
  *&v18 = 32 * v2 + 32;
  v10 = a1[1];
  v11 = 32 * v2 + *a1 - v10;
  sub_100559ED0(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1000D512C(&v16);
  return v15;
}

void sub_100559E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000D512C(va);
  _Unwind_Resume(a1);
}

void sub_100559E88(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100559ED0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v10 = 0;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 3);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return sub_100559F8C(v9);
}

uint64_t sub_100559F8C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000D4894(a1);
  }

  return a1;
}

void *sub_100559FC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_10004EFD0((v4 + 8), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  result = sub_10004EFD0((v4 + 32), *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  if (*(a2 + 79) < 0)
  {
    result = sub_100005F2C((v4 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(v4 + 72) = *(a2 + 72);
    *(v4 + 56) = v6;
  }

  *(a1 + 8) = v4 + 80;
  return result;
}

void sub_10055A090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000087B4(va);
  sub_1000087B4(va);
  *(v3 + 8) = v4;
  _Unwind_Resume(a1);
}

uint64_t sub_10055A0C8(unint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_10055A29C(a1, v6);
  }

  v7 = 80 * v2;
  v16 = 0;
  v17 = v7;
  v18 = 80 * v2;
  *v7 = *a2;
  v8 = 80 * v2;
  *(v8 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_10004EFD0((v8 + 8), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  sub_10004EFD0((v7 + 32), *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((v7 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v9 = *(a2 + 56);
    *(v7 + 72) = *(a2 + 72);
    *(v7 + 56) = v9;
  }

  *&v18 = v18 + 80;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  sub_10055A2F4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_10055A4EC(&v16);
  return v15;
}

void sub_10055A260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_1000087B4(va1);
  sub_1000087B4(va1);
  sub_10055A4EC(va);
  _Unwind_Resume(a1);
}

void sub_10055A29C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10055A2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      v8 = *(v7 + 56);
      *(a4 + 72) = *(v7 + 72);
      *(a4 + 56) = v8;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 56) = 0;
      v7 += 80;
      a4 += 80;
    }

    while (v7 != a3);
    v13 = a4;
    LOBYTE(v11) = 1;
    while (v5 != a3)
    {
      sub_10055A408(a1, v5);
      v5 += 80;
    }
  }

  return sub_10055A460(v10);
}

void sub_10055A408(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  v3 = (a2 + 32);
  sub_1000087B4(&v3);
  v3 = (a2 + 8);
  sub_1000087B4(&v3);
}

uint64_t sub_10055A460(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10055A498(a1);
  }

  return a1;
}

void sub_10055A498(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 80;
      sub_10055A408(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_10055A4EC(uint64_t a1)
{
  sub_10055A524(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10055A524(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    sub_10055A408(v5, v4 - 80);
  }
}

uint64_t sub_10055A56C(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = (a1 + 32);
  sub_1000087B4(&v3);
  v3 = (a1 + 8);
  sub_1000087B4(&v3);
  return a1;
}

uint64_t sub_10055A638(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E55860;
  a2[1] = v2;
  return result;
}

void sub_10055A664(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = **(v3 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 16));
    v6 = *(v3 + 64);
    v7 = *(v3 + 72);
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = 136316162;
    v10 = v5;
    v11 = 2080;
    v12 = " ";
    v13 = 2080;
    v14 = v6;
    v15 = 2080;
    v16 = v7;
    v17 = 2080;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s", &v9, 0x34u);
  }
}

uint64_t sub_10055A75C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10055A818(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E558E0;
  a2[1] = v2;
  return result;
}

void sub_10055A844(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = **(v3 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 16));
    v6 = *(v3 + 64);
    v7 = *(v3 + 72);
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = 136316162;
    v10 = v5;
    v11 = 2080;
    v12 = " ";
    v13 = 2080;
    v14 = v6;
    v15 = 2080;
    v16 = v7;
    v17 = 2080;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s", &v9, 0x34u);
  }
}

uint64_t sub_10055A93C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10055A9F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E55960;
  a2[1] = v2;
  return result;
}

void sub_10055AA24(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = **(v3 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 16));
    v6 = *(v3 + 64);
    v7 = *(v3 + 72);
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = 136316162;
    v10 = v5;
    v11 = 2080;
    v12 = " ";
    v13 = 2080;
    v14 = v6;
    v15 = 2080;
    v16 = v7;
    v17 = 2080;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s", &v9, 0x34u);
  }
}

uint64_t sub_10055AB1C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10055ABD8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E559E0;
  a2[1] = v2;
  return result;
}

void sub_10055AC04(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = **(v3 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 16));
    v6 = *(v3 + 64);
    v7 = *(v3 + 72);
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = 136316162;
    v10 = v5;
    v11 = 2080;
    v12 = " ";
    v13 = 2080;
    v14 = v6;
    v15 = 2080;
    v16 = v7;
    v17 = 2080;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s", &v9, 0x34u);
  }
}

uint64_t sub_10055ACFC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10055ADA4(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E55A60;
  sub_10006EA88((a1 + 3), 0);
  return a1;
}

void sub_10055AE24(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55A60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055AE78(uint64_t a1)
{
  sub_10006DCAC(a1 + 104, *(a1 + 112));
  sub_10006EC28(a1 + 80, *(a1 + 88));
  sub_10006DCAC(a1 + 56, *(a1 + 64));
  v2 = *(a1 + 40);

  sub_10006DCAC(a1 + 32, v2);
}

void *sub_10055AF4C(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E55AB0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10055AFC8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55AB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10055B098(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E55B00;
  a2[1] = v2;
  return result;
}

void sub_10055B0C4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = **(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 24));
    v6 = (*(*v3 + 40))(v3);
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = 136316162;
    v9 = v5;
    v10 = 2080;
    v11 = " ";
    v12 = 2080;
    v13 = v6;
    v14 = 2080;
    v15 = ", ";
    v16 = 2080;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s", &v8, 0x34u);
  }
}

uint64_t sub_10055B1EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10055B2A8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E55B80;
  a2[1] = v2;
  return result;
}

void sub_10055B2D4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = **(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 24));
    v6 = (*(*v3 + 40))(v3);
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = 136316162;
    v9 = v5;
    v10 = 2080;
    v11 = " ";
    v12 = 2080;
    v13 = v6;
    v14 = 2080;
    v15 = ", ";
    v16 = 2080;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s", &v8, 0x34u);
  }
}

uint64_t sub_10055B3FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10055B4B8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E55C00;
  a2[1] = v2;
  return result;
}

void sub_10055B4E4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = **(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 24));
    v6 = (*(*v3 + 40))(v3);
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = 136316162;
    v9 = v5;
    v10 = 2080;
    v11 = " ";
    v12 = 2080;
    v13 = v6;
    v14 = 2080;
    v15 = ", ";
    v16 = 2080;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s", &v8, 0x34u);
  }
}

uint64_t sub_10055B60C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10055B6C4(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E55A60;
  sub_10006EA88((a1 + 3), *a2);
  return a1;
}

void sub_10055B744(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55C80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055B798(uint64_t a1)
{
  if (*(a1 + 224) == 1 && *(a1 + 208) == 1)
  {
    v2 = (a1 + 184);
    sub_1000087B4(&v2);
  }

  if (*(a1 + 168) == 1)
  {
    if (*(a1 + 160) == 1 && *(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }

    if (*(a1 + 128) == 1 && *(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }
  }

  if (*(a1 + 88) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1)
  {
    v2 = (a1 + 24);
    sub_10013DFEC(&v2);
  }
}

void sub_10055B888(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55CD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055B8DC(uint64_t a1)
{
  sub_10006DCAC(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 32);

  sub_10006DCAC(a1 + 24, v2);
}

void sub_10055B944(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55D20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055B998(uint64_t a1)
{
  sub_10006DCAC(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 32);

  sub_10055B9E0(a1 + 24, v2);
}

void sub_10055B9E0(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10055B9E0(a1, *a2);
    sub_10055B9E0(a1, *(a2 + 1));
    if (a2[128] == 1)
    {
      if (a2[120] == 1 && a2[119] < 0)
      {
        operator delete(*(a2 + 12));
      }

      if (a2[95] < 0)
      {
        operator delete(*(a2 + 9));
      }
    }

    if (a2[64] == 1)
    {
      v4 = (a2 + 40);
      sub_100222050(&v4);
    }

    operator delete(a2);
  }
}

void sub_10055BA84(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a2;
  v6 = &v5;
  v4 = sub_10055BAEC(a1, &v5, &unk_101802C98, &v6);
  sub_10055BBD8(&v4[1].__r_.__value_.__r.__words[2], a3);
  sub_100221B44(v4 + 3, (a3 + 32));
}

uint64_t *sub_10055BAEC(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

void sub_10055BBD8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = (v3 - *a2) >> 8;
      v5 = *a2;

      sub_10055BC90(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = a1;
    sub_100222050(&v6);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_100221C3C(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 8);
    *(a1 + 24) = 1;
  }
}

uint64_t sub_10055BC90(uint64_t a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 8)
  {
    sub_100554274(a1);
    if (!HIBYTE(a4))
    {
      v9 = *(a1 + 16) - *a1;
      v10 = v9 >> 7;
      if (v9 >> 7 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFF00)
      {
        v11 = 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_100221CC4(a1, v11);
    }

    sub_1000CE3D4();
  }

  v12 = *(a1 + 8) - v8;
  if (a4 <= v12 >> 8)
  {
    sub_10055BDC8(&v17, a2, a3, v8);
    v15 = v14;
    result = *(a1 + 8);
    if (result != v14)
    {
      do
      {
        result = sub_100221F4C(result - 256);
      }

      while (result != v15);
    }

    *(a1 + 8) = v15;
  }

  else
  {
    sub_10055BDC8(&v16, a2, a2 + v12, v8);
    result = sub_100221D48(a1, (a2 + v12), a3, *(a1 + 8));
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t sub_10055BDC8(int a1, uint64_t a2, uint64_t a3, char *__dst)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_10012BF3C(__dst, v5);
    sub_10012BF3C((__dst + 32), (v5 + 32));
    sub_10012BF3C((__dst + 64), (v5 + 64));
    sub_10012BF3C(__dst + 4, (v5 + 96));
    sub_10012BF3C((__dst + 128), (v5 + 128));
    sub_10012BF3C((__dst + 160), (v5 + 160));
    sub_10012BF3C(__dst + 8, (v5 + 192));
    sub_10012BF3C((__dst + 224), (v5 + 224));
    __dst += 256;
    v5 += 256;
  }

  while (v5 != v6);
  return v6;
}

void sub_10055BEA0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55D70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055BF3C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55DC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055BF90(uint64_t a1)
{
  if (*(a1 + 168) == 1 && *(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 136) == 1 && *(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void sub_10055C05C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55E10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055C0E0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55E60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10055C1B8(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E55EB0;
  sub_10164D31C((a1 + 3), a2, a3);
  return a1;
}

void sub_10055C234(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55EB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void **sub_10055C288(uint64_t a1)
{
  sub_10006DCAC(a1 + 144, *(a1 + 152));
  sub_10006DCAC(a1 + 120, *(a1 + 128));
  sub_10006DCAC(a1 + 96, *(a1 + 104));
  sub_100005978((a1 + 48));
  sub_100005978((a1 + 40));
  sub_100005978((a1 + 32));

  return sub_100005978((a1 + 24));
}

void sub_10055C31C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55F00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055C370(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

uint64_t sub_10055C44C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E55F50;
  a2[1] = v2;
  return result;
}

void sub_10055C478(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = **(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(v3 + 24));
    v6 = (*(*v3 + 40))(v3);
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = 136316162;
    v9 = v5;
    v10 = 2080;
    v11 = " ";
    v12 = 2080;
    v13 = v6;
    v14 = 2080;
    v15 = ", ";
    v16 = 2080;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s%s", &v8, 0x34u);
  }
}

uint64_t sub_10055C5A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10055C5EC(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  theArray = 0;
  v27 = 0;
  sub_10053F344(a2, a1, a3, 0, &theArray);
  if (v27)
  {
    v7 = **(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 24));
      v9 = (*(*a1 + 40))(a1);
      v28 = 0uLL;
      v29 = 0;
      ctu::cf::assign();
      v25 = v29;
      *__p = v28;
      v10 = SHIBYTE(v29);
      v11 = v28;
      Count = CFArrayGetCount(theArray);
      *buf = 136316418;
      v13 = __p;
      if (v10 < 0)
      {
        v13 = v11;
      }

      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v9;
      v32 = 2080;
      v33 = ", ";
      v34 = 2080;
      v35 = v13;
      v36 = 2048;
      v37 = Count;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNumber of elements in %s: %lu", buf, 0x3Eu);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = theArray;
    v15 = [(__CFArray *)theArray countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v15)
    {
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v20 + 1) + 8 * i);
          if ((*(a4 + 24) & 1) == 0)
          {
            memset(buf, 0, 24);
            sub_10055D910(a4, buf);
            *&v28 = buf;
            sub_1000087B4(&v28);
          }

          memset(buf, 0, sizeof(buf));
          sub_10053E1F4(buf, v18, a1, a3, 0);
          v19 = buf[24];
          if (buf[24] == 1)
          {
            sub_100005308(a4, buf);
            v19 = buf[24];
          }

          if ((v19 & 1) != 0 && buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        v15 = [(__CFArray *)v14 countByEnumeratingWithState:&v20 objects:v30 count:16];
      }

      while (v15);
    }
  }

  if (v27 == 1)
  {
    sub_100010250(&theArray);
  }
}

void sub_10055C8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, const void *a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a24 == 1)
  {
    sub_100010250(&a23);
  }

  if (*(v32 + 24) == 1)
  {
    *(v33 - 160) = v32;
    sub_1000087B4((v33 - 160));
  }

  _Unwind_Resume(exception_object);
}

void sub_10055C96C(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  theArray = 0;
  v27 = 0;
  sub_10053F344(a2, a1, a3, 0, &theArray);
  if (v27)
  {
    v7 = **(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 24));
      v9 = (*(*a1 + 40))(a1);
      v28 = 0uLL;
      v29 = 0;
      ctu::cf::assign();
      v25 = v29;
      *__p = v28;
      v10 = SHIBYTE(v29);
      v11 = v28;
      Count = CFArrayGetCount(theArray);
      *buf = 136316418;
      v13 = __p;
      if (v10 < 0)
      {
        v13 = v11;
      }

      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v9;
      v32 = 2080;
      v33 = ", ";
      v34 = 2080;
      v35 = v13;
      v36 = 2048;
      v37 = Count;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNumber of elements in %s: %lu", buf, 0x3Eu);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = theArray;
    v15 = [(__CFArray *)theArray countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v15)
    {
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v20 + 1) + 8 * i);
          if ((*(a4 + 24) & 1) == 0)
          {
            memset(buf, 0, 24);
            sub_10055D910(a4, buf);
            *&v28 = buf;
            sub_1000087B4(&v28);
          }

          memset(buf, 0, sizeof(buf));
          sub_10053E1F4(buf, v18, a1, a3, 0);
          v19 = buf[24];
          if (buf[24] == 1)
          {
            sub_100005308(a4, buf);
            v19 = buf[24];
          }

          if ((v19 & 1) != 0 && buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        v15 = [(__CFArray *)v14 countByEnumeratingWithState:&v20 objects:v30 count:16];
      }

      while (v15);
    }
  }

  if (v27 == 1)
  {
    sub_100010250(&theArray);
  }
}

void sub_10055CC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, const void *a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a24 == 1)
  {
    sub_100010250(&a23);
  }

  if (*(v32 + 24) == 1)
  {
    *(v33 - 160) = v32;
    sub_1000087B4((v33 - 160));
  }

  _Unwind_Resume(exception_object);
}

void sub_10055CCEC(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *v15 = 0u;
  v16 = 0u;
  sub_10053E1F4(v15, a2, a1, a3, 0);
  if (BYTE8(v16) == 1)
  {
    v5 = SBYTE7(v16);
    if (SBYTE7(v16) < 0)
    {
      sub_100005F2C(v12, v15[0], v15[1]);
    }

    else
    {
      *v12 = *v15;
      v13 = v16;
    }

    if (SHIBYTE(v13) < 0)
    {
      sub_100005F2C(&__dst, v12[0], v12[1]);
    }

    else
    {
      __dst = *v12;
      v22 = v13;
    }

    v17 = 0;
    if (SHIBYTE(v22) < 0)
    {
      sub_100005F2C(__p, __dst, *(&__dst + 1));
    }

    else
    {
      *__p = __dst;
      __p[2] = v22;
    }

    v19 = 0;
    if (ctu::cf::convert_copy())
    {
      v6 = v17;
      v17 = v19;
      v20 = v6;
      sub_100005978(&v20);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v7 = v17;
    v14 = v17;
    v17 = 0;
    sub_100005978(&v17);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__dst);
    }

    MatchingEAPMethod = DataUtils::getMatchingEAPMethod(v7, v8);
    sub_100005978(&v14);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
      if (!MatchingEAPMethod)
      {
LABEL_19:
        if ((v5 & 0x80000000) == 0)
        {
          return;
        }

LABEL_23:
        operator delete(v15[0]);
        return;
      }
    }

    else if (!MatchingEAPMethod)
    {
      goto LABEL_19;
    }

    memset(__p, 0, 24);
    ctu::cf::assign();
    *(&__dst + 7) = *(&__p[1] + 7);
    *&__dst = __p[1];
    v10 = HIBYTE(__p[2]);
    v11 = __p[1];
    *a4 = __p[0];
    *(a4 + 8) = v11;
    *(a4 + 15) = *(&__dst + 7);
    *(a4 + 23) = v10;
    *(a4 + 24) = 1;
    if (v5 < 0)
    {
      goto LABEL_23;
    }
  }
}

void sub_10055CEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_100005978(&a21);
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_10055CF78(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  theArray = 0;
  v29 = 0;
  sub_10053F344(a2, a1, a3, 0, &theArray);
  if (v29)
  {
    v7 = **(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 24));
      v9 = (*(*a1 + 40))(a1);
      v19[0] = 0;
      v19[1] = 0;
      v20 = 0;
      ctu::cf::assign();
      v27 = 0;
      *__p = 0u;
      Count = CFArrayGetCount(theArray);
      *buf = 136316418;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v9;
      LOWORD(v31[0]) = 2080;
      *(v31 + 2) = ", ";
      WORD1(v31[1]) = 2080;
      *(&v31[1] + 4) = __p;
      WORD2(v31[2]) = 2048;
      *(&v31[2] + 6) = Count;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNumber of elements in %s: %lu", buf, 0x3Eu);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = theArray;
    v12 = [(__CFArray *)theArray countByEnumeratingWithState:&v22 objects:v32 count:16, v19[0]];
    if (v12)
    {
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v15 objectForKey:@"mschap-username"];
          v17 = [v15 objectForKey:@"mschap-password"];
          memset(v31, 0, 32);
          memset(buf, 0, sizeof(buf));
          sub_10053E1F4(v19, v16, a1, a3, 0);
          sub_10016A270(buf, v19);
          if (v21 == 1 && SHIBYTE(v20) < 0)
          {
            operator delete(v19[0]);
          }

          sub_10053E1F4(v19, v17, a1, a3, 0);
          sub_10016A270(v31, v19);
          if (v21 == 1 && SHIBYTE(v20) < 0)
          {
            operator delete(v19[0]);
          }

          if ((buf[24] & 1) != 0 || (v18 = v31[3], LOBYTE(v31[3]) == 1))
          {
            if ((*(a4 + 24) & 1) == 0)
            {
              v19[0] = 0;
              v19[1] = 0;
              v20 = 0;
              sub_10055DA34(a4, v19);
              __p[0] = v19;
              sub_100220E18(__p);
            }

            sub_10055DAB4(a4, buf);
            v18 = v31[3];
          }

          if ((v18 & 1) != 0 && SHIBYTE(v31[2]) < 0)
          {
            operator delete(v31[0]);
          }

          if (buf[24] == 1 && buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        v12 = [(__CFArray *)v11 countByEnumeratingWithState:&v22 objects:v32 count:16];
      }

      while (v12);
    }
  }

  if (v29 == 1)
  {
    sub_100010250(&theArray);
  }
}

void sub_10055D300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, const void *a31, __int16 a32, char a33, char a34, uint64_t a35)
{
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a32 == 1)
  {
    sub_100010250(&a31);
  }

  if (*(v35 + 24) == 1)
  {
    a35 = v35;
    sub_100220E18(&a35);
  }

  _Unwind_Resume(exception_object);
}

void sub_10055D3C8(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 224) = 0;
  *(a4 + 192) = 0u;
  *(a4 + 208) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v31 = 0;
  v32 = 0;
  sub_10053F620(a2, a1, a3, 0, &v31);
  if (a2)
  {
    __p = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v22 = 0u;
    *v23 = 0u;
    v20 = 0u;
    *v21 = 0u;
    v18 = 0u;
    *v19 = 0u;
    *v17 = 0u;
    sub_10055DF64(a4, v17);
    if (BYTE8(v30) == 1 && SBYTE7(v30) < 0)
    {
      operator delete(__p);
    }

    if (BYTE8(v28) == 1 && SBYTE7(v28) < 0)
    {
      operator delete(v27);
    }

    if (BYTE8(v26) == 1 && SBYTE7(v26) < 0)
    {
      operator delete(v25);
    }

    if (BYTE8(v24) == 1 && SBYTE7(v24) < 0)
    {
      operator delete(v23[0]);
    }

    if (BYTE8(v22) == 1 && SBYTE7(v22) < 0)
    {
      operator delete(v21[0]);
    }

    if (BYTE8(v20) == 1 && SBYTE7(v20) < 0)
    {
      operator delete(v19[0]);
    }

    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    theDict = 0;
    v15 = 0;
    v16 = 0;
    if (v32 == 1)
    {
      theDict = v31;
      if (v31)
      {
        CFRetain(v31);
      }

      LOBYTE(v15) = 1;
    }

    v16 = a1;
    Value = CFDictionaryGetValue(theDict, @"dn");
    sub_10053E1F4(v17, Value, a1, @"dn", 0);
    sub_10016A270(a4, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v8 = CFDictionaryGetValue(theDict, @"organization");
    sub_10053E1F4(v17, v8, v16, @"organization", 0);
    sub_10016A270(a4 + 32, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v9 = CFDictionaryGetValue(theDict, @"department");
    sub_10053E1F4(v17, v9, v16, @"department", 0);
    sub_10016A270(a4 + 64, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v10 = CFDictionaryGetValue(theDict, @"city");
    sub_10053E1F4(v17, v10, v16, @"city", 0);
    sub_10016A270(a4 + 96, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v11 = CFDictionaryGetValue(theDict, @"state");
    sub_10053E1F4(v17, v11, v16, @"state", 0);
    sub_10016A270(a4 + 128, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v12 = CFDictionaryGetValue(theDict, @"country");
    sub_10053E1F4(v17, v12, v16, @"country", 0);
    sub_10016A270(a4 + 160, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v13 = CFDictionaryGetValue(theDict, @"email");
    sub_10053E1F4(v17, v13, v16, @"email", 0);
    sub_10016A270(a4 + 192, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    if (v15 == 1)
    {
      sub_10001021C(&theDict);
    }
  }

  if (v32 == 1)
  {
    sub_10001021C(&v31);
  }
}

void sub_10055D80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100220D30(va);
  if (*(v10 - 40) == 1)
  {
    sub_10001021C((v10 - 48));
  }

  if (*(v9 + 224) == 1)
  {
    sub_100220D30(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10055D86C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 456) == 1)
  {
    sub_10012BF3C(a1, a2);
    sub_100220FC4(a1 + 32, a2 + 32);
    sub_100220FC4(a1 + 64, a2 + 64);
    sub_10012BF3C((a1 + 96), (a2 + 96));
    sub_100221094(a1 + 128, (a2 + 128));
    sub_10012BF3C((a1 + 160), (a2 + 160));
    sub_10012BF3C((a1 + 192), (a2 + 192));
    sub_1002215C0((a1 + 224), a2 + 224);
  }

  else
  {
    sub_1002217D8(a1, a2);
    *(a1 + 456) = 1;
  }

  return a1;
}

uint64_t sub_10055D910(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_100071A6C(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

__n128 sub_10055D990(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_100071A6C(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_1000087B4(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a2 = 0uLL;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_10055DA34(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_100221268(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_10055DAB4(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10055DBE4(a1, a2);
  }

  else
  {
    sub_10055DB64(a1, a2);
    result = v3 + 64;
  }

  a1[1] = result;
  return result;
}

void sub_10055DAF4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 56) == 1 && *(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 24) == 1 && *(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

_BYTE *sub_10055DB64(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  sub_10006F264(v4, a2);
  result = sub_10006F264(v4 + 32, a2 + 2);
  *(a1 + 8) = v4 + 64;
  return result;
}

void sub_10055DBB0(_Unwind_Exception *exception_object)
{
  if (*(v2 + 24) == 1 && *(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_10055DBE4(void *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_1000CE3D4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_1002214F0(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 6;
  sub_10006F264((v2 << 6), a2);
  sub_10006F264(((v2 << 6) + 32), a2 + 2);
  v16 = ((v2 << 6) + 64);
  v8 = a1[1];
  v9 = (v2 << 6) + *a1 - v8;
  sub_10055DD24(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_10055DE40(&v14);
  return v13;
}

void sub_10055DCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 24) == 1 && *(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  sub_10055DE40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10055DD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 24) = 0;
      if (*(v7 + 24) == 1)
      {
        v8 = *v7;
        *(a4 + 16) = *(v7 + 16);
        *a4 = v8;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(a4 + 24) = 1;
      }

      *(a4 + 32) = 0;
      *(a4 + 56) = 0;
      if (*(v7 + 56) == 1)
      {
        v9 = *(v7 + 32);
        *(a4 + 48) = *(v7 + 48);
        *(a4 + 32) = v9;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = 0;
        *(a4 + 56) = 1;
      }

      v7 += 64;
      a4 += 64;
    }

    while (v7 != a3);
    v14 = a4;
    LOBYTE(v12) = 1;
    while (v5 != a3)
    {
      sub_10055DAF4(a1, v5);
      v5 += 64;
    }
  }

  return sub_1002213B4(v11);
}

uint64_t sub_10055DE40(uint64_t a1)
{
  sub_10055DE78(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10055DE78(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 64;
    sub_10055DAF4(v5, v4 - 64);
  }
}

__n128 sub_10055DEC0(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_100221268(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_100220E18(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a2 = 0uLL;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_10055DF64(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 224) == 1)
  {
    sub_10055DFA0(a1, a2);
  }

  else
  {
    sub_10055E030(a1, a2);
  }

  return a1;
}

uint64_t sub_10055DFA0(uint64_t a1, __n128 *a2)
{
  sub_10016A270(a1, a2);
  sub_10016A270(a1 + 32, a2 + 2);
  sub_10016A270(a1 + 64, a2 + 4);
  sub_10016A270(a1 + 96, a2 + 6);
  sub_10016A270(a1 + 128, a2 + 8);
  sub_10016A270(a1 + 160, a2 + 10);
  sub_10016A270(a1 + 192, a2 + 12);
  return a1;
}

uint64_t sub_10055E030(uint64_t result, __int128 *a2)
{
  *result = 0;
  *(result + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v2 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v2;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(result + 24) = 1;
  }

  *(result + 32) = 0;
  *(result + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v3 = a2[2];
    *(result + 48) = *(a2 + 6);
    *(result + 32) = v3;
    *(a2 + 40) = 0uLL;
    *(a2 + 4) = 0;
    *(result + 56) = 1;
  }

  *(result + 64) = 0;
  *(result + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v4 = a2[4];
    *(result + 80) = *(a2 + 10);
    *(result + 64) = v4;
    *(a2 + 72) = 0uLL;
    *(a2 + 8) = 0;
    *(result + 88) = 1;
  }

  *(result + 96) = 0;
  *(result + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    v5 = a2[6];
    *(result + 112) = *(a2 + 14);
    *(result + 96) = v5;
    *(a2 + 104) = 0uLL;
    *(a2 + 12) = 0;
    *(result + 120) = 1;
  }

  *(result + 128) = 0;
  *(result + 152) = 0;
  if (*(a2 + 152) == 1)
  {
    v6 = a2[8];
    *(result + 144) = *(a2 + 18);
    *(result + 128) = v6;
    *(a2 + 136) = 0uLL;
    *(a2 + 16) = 0;
    *(result + 152) = 1;
  }

  *(result + 160) = 0;
  *(result + 184) = 0;
  if (*(a2 + 184) == 1)
  {
    v7 = a2[10];
    *(result + 176) = *(a2 + 22);
    *(result + 160) = v7;
    *(a2 + 168) = 0uLL;
    *(a2 + 20) = 0;
    *(result + 184) = 1;
  }

  *(result + 192) = 0;
  *(result + 216) = 0;
  if (*(a2 + 216) == 1)
  {
    v8 = a2[12];
    *(result + 208) = *(a2 + 26);
    *(result + 192) = v8;
    *(a2 + 200) = 0uLL;
    *(a2 + 24) = 0;
    *(result + 216) = 1;
  }

  *(result + 224) = 1;
  return result;
}

uint64_t sub_10055E1C0(uint64_t result, __n128 *a2)
{
  if (*(result + 224) == a2[14].n128_u8[0])
  {
    if (*(result + 224))
    {

      return sub_10055DFA0(result, a2);
    }
  }

  else if (*(result + 224))
  {
    result = sub_100220D30(result);
    *(result + 224) = 0;
  }

  else
  {

    return sub_10055E030(result, a2);
  }

  return result;
}

void sub_10055E218(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  theArray = 0;
  v27 = 0;
  sub_10053F344(a2, a1, a3, 0, &theArray);
  if (v27)
  {
    v7 = **(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 24));
      v9 = (*(*a1 + 40))(a1);
      v28 = 0uLL;
      v29 = 0;
      ctu::cf::assign();
      v25 = v29;
      *__p = v28;
      v10 = SHIBYTE(v29);
      v11 = v28;
      Count = CFArrayGetCount(theArray);
      *buf = 136316418;
      v13 = __p;
      if (v10 < 0)
      {
        v13 = v11;
      }

      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v9;
      v32 = 2080;
      v33 = ", ";
      v34 = 2080;
      v35 = v13;
      v36 = 2048;
      v37 = Count;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNumber of elements in %s: %lu", buf, 0x3Eu);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = theArray;
    v15 = [(__CFArray *)theArray countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v15)
    {
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v20 + 1) + 8 * i);
          if ((*(a4 + 24) & 1) == 0)
          {
            memset(buf, 0, 24);
            sub_10055D910(a4, buf);
            *&v28 = buf;
            sub_1000087B4(&v28);
          }

          memset(buf, 0, sizeof(buf));
          sub_10053E1F4(buf, v18, a1, a3, 0);
          v19 = buf[24];
          if (buf[24] == 1)
          {
            sub_100005308(a4, buf);
            v19 = buf[24];
          }

          if ((v19 & 1) != 0 && buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        v15 = [(__CFArray *)v14 countByEnumeratingWithState:&v20 objects:v30 count:16];
      }

      while (v15);
    }
  }

  if (v27 == 1)
  {
    sub_100010250(&theArray);
  }
}

void sub_10055E4E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, const void *a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a24 == 1)
  {
    sub_100010250(&a23);
  }

  if (*(v32 + 24) == 1)
  {
    *(v33 - 160) = v32;
    sub_1000087B4((v33 - 160));
  }

  _Unwind_Resume(exception_object);
}

void sub_10055E598(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  theArray = 0;
  v27 = 0;
  sub_10053F344(a2, a1, a3, 0, &theArray);
  if (v27)
  {
    v7 = **(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 24));
      v9 = (*(*a1 + 40))(a1);
      v28 = 0uLL;
      v29 = 0;
      ctu::cf::assign();
      v25 = v29;
      *__p = v28;
      v10 = SHIBYTE(v29);
      v11 = v28;
      Count = CFArrayGetCount(theArray);
      *buf = 136316418;
      v13 = __p;
      if (v10 < 0)
      {
        v13 = v11;
      }

      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v9;
      v32 = 2080;
      v33 = ", ";
      v34 = 2080;
      v35 = v13;
      v36 = 2048;
      v37 = Count;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNumber of elements in %s: %lu", buf, 0x3Eu);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = theArray;
    v15 = [(__CFArray *)theArray countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v15)
    {
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v20 + 1) + 8 * i);
          if ((*(a4 + 24) & 1) == 0)
          {
            memset(buf, 0, 24);
            sub_10055D910(a4, buf);
            *&v28 = buf;
            sub_1000087B4(&v28);
          }

          memset(buf, 0, sizeof(buf));
          sub_10053E1F4(buf, v18, a1, a3, 0);
          v19 = buf[24];
          if (buf[24] == 1)
          {
            sub_100005308(a4, buf);
            v19 = buf[24];
          }

          if ((v19 & 1) != 0 && buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        v15 = [(__CFArray *)v14 countByEnumeratingWithState:&v20 objects:v30 count:16];
      }

      while (v15);
    }
  }

  if (v27 == 1)
  {
    sub_100010250(&theArray);
  }
}

void sub_10055E860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, const void *a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a24 == 1)
  {
    sub_100010250(&a23);
  }

  if (*(v32 + 24) == 1)
  {
    *(v33 - 160) = v32;
    sub_1000087B4((v33 - 160));
  }

  _Unwind_Resume(exception_object);
}

void sub_10055E918(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *v15 = 0u;
  v16 = 0u;
  sub_10053E1F4(v15, a2, a1, a3, 0);
  if (BYTE8(v16) == 1)
  {
    v5 = SBYTE7(v16);
    if (SBYTE7(v16) < 0)
    {
      sub_100005F2C(v12, v15[0], v15[1]);
    }

    else
    {
      *v12 = *v15;
      v13 = v16;
    }

    if (SHIBYTE(v13) < 0)
    {
      sub_100005F2C(&__dst, v12[0], v12[1]);
    }

    else
    {
      __dst = *v12;
      v22 = v13;
    }

    v17 = 0;
    if (SHIBYTE(v22) < 0)
    {
      sub_100005F2C(__p, __dst, *(&__dst + 1));
    }

    else
    {
      *__p = __dst;
      __p[2] = v22;
    }

    v19 = 0;
    if (ctu::cf::convert_copy())
    {
      v6 = v17;
      v17 = v19;
      v20 = v6;
      sub_100005978(&v20);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v7 = v17;
    v14 = v17;
    v17 = 0;
    sub_100005978(&v17);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__dst);
    }

    MatchingEAPMethod = DataUtils::getMatchingEAPMethod(v7, v8);
    sub_100005978(&v14);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
      if (!MatchingEAPMethod)
      {
LABEL_19:
        if ((v5 & 0x80000000) == 0)
        {
          return;
        }

LABEL_23:
        operator delete(v15[0]);
        return;
      }
    }

    else if (!MatchingEAPMethod)
    {
      goto LABEL_19;
    }

    memset(__p, 0, 24);
    ctu::cf::assign();
    *(&__dst + 7) = *(&__p[1] + 7);
    *&__dst = __p[1];
    v10 = HIBYTE(__p[2]);
    v11 = __p[1];
    *a4 = __p[0];
    *(a4 + 8) = v11;
    *(a4 + 15) = *(&__dst + 7);
    *(a4 + 23) = v10;
    *(a4 + 24) = 1;
    if (v5 < 0)
    {
      goto LABEL_23;
    }
  }
}

void sub_10055EB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_100005978(&a21);
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_10055EBA4(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  theArray = 0;
  v29 = 0;
  sub_10053F344(a2, a1, a3, 0, &theArray);
  if (v29)
  {
    v7 = **(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 24));
      v9 = (*(*a1 + 40))(a1);
      v19[0] = 0;
      v19[1] = 0;
      v20 = 0;
      ctu::cf::assign();
      v27 = 0;
      *__p = 0u;
      Count = CFArrayGetCount(theArray);
      *buf = 136316418;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v9;
      LOWORD(v31[0]) = 2080;
      *(v31 + 2) = ", ";
      WORD1(v31[1]) = 2080;
      *(&v31[1] + 4) = __p;
      WORD2(v31[2]) = 2048;
      *(&v31[2] + 6) = Count;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNumber of elements in %s: %lu", buf, 0x3Eu);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = theArray;
    v12 = [(__CFArray *)theArray countByEnumeratingWithState:&v22 objects:v32 count:16, v19[0]];
    if (v12)
    {
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v15 objectForKey:@"mschap-username"];
          v17 = [v15 objectForKey:@"mschap-password"];
          memset(v31, 0, 32);
          memset(buf, 0, sizeof(buf));
          sub_10053E1F4(v19, v16, a1, a3, 0);
          sub_10016A270(buf, v19);
          if (v21 == 1 && SHIBYTE(v20) < 0)
          {
            operator delete(v19[0]);
          }

          sub_10053E1F4(v19, v17, a1, a3, 0);
          sub_10016A270(v31, v19);
          if (v21 == 1 && SHIBYTE(v20) < 0)
          {
            operator delete(v19[0]);
          }

          if ((buf[24] & 1) != 0 || (v18 = v31[3], LOBYTE(v31[3]) == 1))
          {
            if ((*(a4 + 24) & 1) == 0)
            {
              v19[0] = 0;
              v19[1] = 0;
              v20 = 0;
              sub_10055DA34(a4, v19);
              __p[0] = v19;
              sub_100220E18(__p);
            }

            sub_10055DAB4(a4, buf);
            v18 = v31[3];
          }

          if ((v18 & 1) != 0 && SHIBYTE(v31[2]) < 0)
          {
            operator delete(v31[0]);
          }

          if (buf[24] == 1 && buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        v12 = [(__CFArray *)v11 countByEnumeratingWithState:&v22 objects:v32 count:16];
      }

      while (v12);
    }
  }

  if (v29 == 1)
  {
    sub_100010250(&theArray);
  }
}

void sub_10055EF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, const void *a31, __int16 a32, char a33, char a34, uint64_t a35)
{
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a32 == 1)
  {
    sub_100010250(&a31);
  }

  if (*(v35 + 24) == 1)
  {
    a35 = v35;
    sub_100220E18(&a35);
  }

  _Unwind_Resume(exception_object);
}

void sub_10055EFF4(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 224) = 0;
  *(a4 + 192) = 0u;
  *(a4 + 208) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v31 = 0;
  v32 = 0;
  sub_10053F620(a2, a1, a3, 0, &v31);
  if (a2)
  {
    __p = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v22 = 0u;
    *v23 = 0u;
    v20 = 0u;
    *v21 = 0u;
    v18 = 0u;
    *v19 = 0u;
    *v17 = 0u;
    sub_10055DF64(a4, v17);
    if (BYTE8(v30) == 1 && SBYTE7(v30) < 0)
    {
      operator delete(__p);
    }

    if (BYTE8(v28) == 1 && SBYTE7(v28) < 0)
    {
      operator delete(v27);
    }

    if (BYTE8(v26) == 1 && SBYTE7(v26) < 0)
    {
      operator delete(v25);
    }

    if (BYTE8(v24) == 1 && SBYTE7(v24) < 0)
    {
      operator delete(v23[0]);
    }

    if (BYTE8(v22) == 1 && SBYTE7(v22) < 0)
    {
      operator delete(v21[0]);
    }

    if (BYTE8(v20) == 1 && SBYTE7(v20) < 0)
    {
      operator delete(v19[0]);
    }

    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    theDict = 0;
    v15 = 0;
    v16 = 0;
    if (v32 == 1)
    {
      theDict = v31;
      if (v31)
      {
        CFRetain(v31);
      }

      LOBYTE(v15) = 1;
    }

    v16 = a1;
    Value = CFDictionaryGetValue(theDict, @"dn");
    sub_10053E1F4(v17, Value, a1, @"dn", 0);
    sub_10016A270(a4, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v8 = CFDictionaryGetValue(theDict, @"organization");
    sub_10053E1F4(v17, v8, v16, @"organization", 0);
    sub_10016A270(a4 + 32, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v9 = CFDictionaryGetValue(theDict, @"department");
    sub_10053E1F4(v17, v9, v16, @"department", 0);
    sub_10016A270(a4 + 64, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v10 = CFDictionaryGetValue(theDict, @"city");
    sub_10053E1F4(v17, v10, v16, @"city", 0);
    sub_10016A270(a4 + 96, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v11 = CFDictionaryGetValue(theDict, @"state");
    sub_10053E1F4(v17, v11, v16, @"state", 0);
    sub_10016A270(a4 + 128, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v12 = CFDictionaryGetValue(theDict, @"country");
    sub_10053E1F4(v17, v12, v16, @"country", 0);
    sub_10016A270(a4 + 160, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    v13 = CFDictionaryGetValue(theDict, @"email");
    sub_10053E1F4(v17, v13, v16, @"email", 0);
    sub_10016A270(a4 + 192, v17);
    if (BYTE8(v18) == 1 && SBYTE7(v18) < 0)
    {
      operator delete(v17[0]);
    }

    if (v15 == 1)
    {
      sub_10001021C(&theDict);
    }
  }

  if (v32 == 1)
  {
    sub_10001021C(&v31);
  }
}

void sub_10055F438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100220D30(va);
  if (*(v10 - 40) == 1)
  {
    sub_10001021C((v10 - 48));
  }

  if (*(v9 + 224) == 1)
  {
    sub_100220D30(v9);
  }

  _Unwind_Resume(a1);
}

void sub_10055F4B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E55FD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_10055F51C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_10055F620(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56020;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055F674(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    v2 = (a1 + 152);
    sub_100557C9C(&v2);
  }

  if (*(a1 + 144) == 1)
  {
    v2 = (a1 + 120);
    sub_100557330(&v2);
  }

  if (*(a1 + 112) == 1)
  {
    v2 = (a1 + 88);
    sub_100556BD0(&v2);
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void sub_10055F74C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055F7A0(uint64_t a1)
{
  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void sub_10055F838(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E560C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055F88C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void sub_10055F8C4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56110;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055F918(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void sub_10055F950(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56160;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055F9A4(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 136) == 1 && *(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = (a1 + 24);
  sub_10016C644(&v2);
}

void sub_10055FA64(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E561B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055FAE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56200;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055FB38(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    v2 = (a1 + 88);
    sub_1003EA960(&v2);
  }

  if (*(a1 + 80) == 1)
  {
    v2 = (a1 + 56);
    sub_1003EA960(&v2);
  }

  if (*(a1 + 48) == 1)
  {
    v2 = (a1 + 24);
    sub_1003EA960(&v2);
  }
}

void sub_10055FBD8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56250;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055FC2C(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v3[1] = v1;
    v3[2] = v2;
    v3[0] = (a1 + 32);
    sub_10022C488(v3);
  }
}

void sub_10055FC8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E562A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055FD10(void ***a1)
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
        v6 = v4 - 32;
        v7 = (v4 - 24);
        sub_1003ED090(&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_10055FDAC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E562F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055FE30(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_100559C34(a1, i))
  {
    i -= 72;
  }

  *(a1 + 8) = a2;
}

void sub_10055FEA4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56340;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055FF48(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56390;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10055FFCC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100560020(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100560020(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_10055A408(a1, i))
  {
    i -= 80;
  }

  *(a1 + 8) = a2;
}

void sub_100560094(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E563E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100560110(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56430;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100560190(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056023C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100560254(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_1004FBF38();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1005604D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005604F8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100560878(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_1005606FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100560738(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E564D8;
  return result;
}

void *sub_10056081C(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E53150;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100560878(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = a4[1];
    v15[0] = *a4;
    v15[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v14, a5);
    sub_100060E84(&v13, a6);
    sub_100441148(a1, a2, a3, v15, &v14, &v13);
  }

  if (!v10)
  {
    v11 = a4[1];
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E9488(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100560994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1005609BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x1005609B4);
  }

  JUMPOUT(0x1005609B0);
}

void sub_1005609FC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56518;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100560A7C(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100560B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100560B40(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_1004FBF38();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100560DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100560DE4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100561094(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100560FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100561024(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E565C0;
  return result;
}

void sub_100561094(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = a4[1];
    v15[0] = *a4;
    v15[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v14, a5);
    sub_100060E84(&v13, a6);
    sub_1004412F4(a1, a2, a3, v15, &v14, &v13);
  }

  if (!v10)
  {
    v11 = a4[1];
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E965C(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_1005611B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1005611D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x1005611D0);
  }

  JUMPOUT(0x1005611CCLL);
}

void sub_100561218(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56600;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100561298(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_1005612D0(uint64_t a1@<X0>, int a2@<W1>, const __CFDictionary *a3@<X2>, uint64_t **a4@<X4>, void *a5@<X8>)
{
  if (a2 != 6000)
  {
    v8 = **(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(**(a1 + 24));
      v10 = (*(*a1 + 40))(a1);
      *buf = 136315906;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v12 = 2080;
      v13 = v10;
      v14 = 2080;
      v15 = ", ";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
    }

LABEL_7:
    sub_1005619B4();
  }

  sub_1005410A0(a3, a1, a4, buf);
  v7 = *&buf[8];
  if (*buf)
  {
    goto LABEL_7;
  }

  *a5 = 0;
  a5[1] = 0;
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_100561460(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10055AED8();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1005616E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100561704(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100561A84(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100561908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100561944(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E566A8;
  return result;
}

void *sub_100561A28(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E55AB0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100561A84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E6500(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100561BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100561BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100561BC0);
  }

  JUMPOUT(0x100561BBCLL);
}

void sub_100561C08(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E566E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100561C88(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100561CC0(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100541860();
  }

  v6 = **(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(**(a1 + 24));
    v8 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v10 = 2080;
    v11 = v8;
    v12 = 2080;
    v13 = ", ";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_1005623A4();
}

void sub_100561E50(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_1005624F4();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1005620D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005620F4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_1005625C4(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_1005622F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100562334(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E567C0;
  return result;
}

void *sub_100562418(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56800;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100562494(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56800;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100562568(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56800;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_1005625C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E66D4(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_1005626E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100562708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100562700);
  }

  JUMPOUT(0x1005626FCLL);
}

void sub_100562748(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1005627C8(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100562800(uint64_t a1, int a2)
{
  if (sub_100541E50(a1, a2))
  {
    sub_100541F78();
  }

  v6 = **(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(**(a1 + 24));
    v8 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v10 = 2080;
    v11 = v8;
    v12 = 2080;
    v13 = ", ";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_100562EF0();
}

void sub_10056299C(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100563040();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100562C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100562C40(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100563110(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100562E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100562E80(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E56928;
  return result;
}

void *sub_100562F64(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56968;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100562FE0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1005630B4(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56968;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100563110(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E68A8(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_10056322C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100563254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x10056324CLL);
  }

  JUMPOUT(0x100563248);
}

void sub_100563294(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E569B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100563314(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_10056334C(uint64_t a1, int a2)
{
  if (sub_100541E50(a1, a2))
  {
    sub_1005433E0();
  }

  v6 = **(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(**(a1 + 24));
    v8 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v10 = 2080;
    v11 = v8;
    v12 = 2080;
    v13 = ", ";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_100563A8C();
}

void sub_1005634E8(uint64_t a1@<X0>, __int128 *a2@<X1>, CFDictionaryRef *a3@<X2>, uint64_t *a5@<X4>, _OWORD *a6@<X8>)
{
  v11 = **(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = PersonalityInfo::logPrefix(**(a1 + 24));
    v13 = (*(*a1 + 40))(a1);
    v14 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v26 = 2080;
    v27 = v13;
    v28 = 2080;
    v29 = ", ";
    v30 = 2080;
    v31 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v22 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (v22)
  {
    v15 = *(v22 + 32);
    v23 = *(v22 + 24);
    v24 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v15 = 0;
    v23 = 0;
    v24 = 0;
  }

  sub_100543158(*a3, a1, &v23, buf);
  if (!v22)
  {
    if (v15)
    {
      sub_100004A34(v15);
    }

    sub_100563B5C();
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = *buf;
  v17 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v22 + 32);
  *(v22 + 24) = v16;
  *(v22 + 32) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  v19 = *a5;
  v20 = a5[1];
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *(v22 + 16);
  *(v22 + 8) = v19;
  *(v22 + 16) = v20;
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  *a6 = v22;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1005637A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005637DC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100563C2C(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_1005639E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100563A1C(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E56A90;
  return result;
}

void *sub_100563B00(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E4A8B0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void *sub_100563BD0(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E4A8B0;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100563C2C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E6A7C(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100563D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100563D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100563D68);
  }

  JUMPOUT(0x100563D64);
}

void sub_100563DB0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56AD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100563E30(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100563E68(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100544154();
  }

  v5 = **(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 24));
    v7 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v9 = 2080;
    v10 = v7;
    v11 = 2080;
    v12 = ", ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056454C();
}

void sub_100563FF8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_10056469C();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100564278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056429C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_10056476C(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_1005644A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_1005644DC(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E56BA8;
  return result;
}

void *sub_1005645C0(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56BE8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056463C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56BE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100564710(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56BE8;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_10056476C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E6C50(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100564888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1005648B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x1005648A8);
  }

  JUMPOUT(0x1005648A4);
}

void sub_1005649A4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56C38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100564A24(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100564A5C(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100544BB0();
  }

  v5 = **(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 24));
    v7 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v9 = 2080;
    v10 = v7;
    v11 = 2080;
    v12 = ", ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_100565144();
}

void sub_100564BF0(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100565294();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100564E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100564E94(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100565364(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100565098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_1005650D4(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E56CE0;
  return result;
}

void *sub_1005651B8(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56D20;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100565234(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56D20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100565308(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56D20;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100565364(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E6E24(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100565480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1005654A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x1005654A0);
  }

  JUMPOUT(0x10056549CLL);
}

void sub_10056559C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56D70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10056561C(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100565654(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100544FC0();
  }

  v5 = **(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 24));
    v7 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v9 = 2080;
    v10 = v7;
    v11 = 2080;
    v12 = ", ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_100565D3C();
}

void sub_1005657E8(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100565E8C();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100565A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100565A8C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6, const void **a7)
{
  v14 = **(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 24));
    v16 = (*(*a1 + 40))(a1);
    v17 = sub_100A38E30(a4);
    if (*a5)
    {
      v18 = sub_100531604(**a5);
    }

    else
    {
      v18 = "??";
    }

    *buf = 136316418;
    v29 = v15;
    v30 = 2080;
    v31 = " ";
    v32 = 2080;
    v33 = v16;
    v34 = 2080;
    v35 = ", ";
    v36 = 2080;
    v37 = v17;
    v38 = 2080;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPosting result %s: %s", buf, 0x3Eu);
  }

  v19 = a3[1];
  if (v19)
  {
    v20 = std::__shared_weak_count::lock(v19);
    if (v20)
    {
      v21 = v20;
      v22 = *a3;
      if (v22)
      {
        v23 = *(a5 + 8);
        v26 = *a5;
        v27 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100010024(&v25, a6);
        sub_100060E84(&v24, a7);
        sub_100565F5C(v22, a2, a4, &v26, &v25, &v24);
        sub_10000A1EC(&v24);
        sub_10001021C(&v25);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }

      sub_100004A34(v21);
    }
  }
}

void sub_100565C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void *sub_100565CCC(void *result, uint64_t *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = off_101E554B8;
  result[1] = v5;
  result[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  result[3] = *a4;
  result[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  result[5] = a3;
  *result = off_101E56E18;
  return result;
}

void *sub_100565DB0(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56E58;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100565E2C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56E58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100565F00(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E56E58;
  sub_1004FC088((a1 + 3), a2, a3);
  return a1;
}

void sub_100565F5C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6)
{
  v10 = *(a1 + 8);
  if (v10 == 1)
  {
    v12 = *(a4 + 8);
    v14[1] = *a4;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100010024(v14, a5);
    sub_100060E84(&v13, a6);
    TMKXPCServer.shutdown()();
    sub_10000A1EC(&v13);
    sub_10001021C(v14);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else if (!v10)
  {
    v11 = *(a4 + 8);
    v18[0] = *a4;
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100010024(&v17, a5);
    sub_100060E84(&v16, a6);
    sub_1003E6FF8(a1, a2, a3, v18, &v17, &v16);
  }
}

void sub_100566078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1005660A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, uint64_t a16)
{
  sub_10000A1EC(&a13);
  sub_10001021C(&a14);
  if (!a16)
  {
    JUMPOUT(0x100566098);
  }

  JUMPOUT(0x100566094);
}

void sub_1005660E0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E56EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100566160(void *a1)
{
  sub_10053DF3C(a1);

  operator delete();
}

void sub_100566198(uint64_t a1, int a2)
{
  if (a2 == 6000)
  {
    sub_100548C40();
  }

  v5 = **(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 24));
    v7 = (*(*a1 + 40))(a1);
    *buf = 136315906;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v9 = 2080;
    v10 = v7;
    v11 = 2080;
    v12 = ", ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sskipping response parsing due to status", buf, 0x2Au);
  }

  sub_10056687C();
}

void sub_100566328(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = **(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 24));
    v11 = (*(*a1 + 40))(a1);
    v12 = (*(*a1 + 40))(a1);
    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = 2080;
    v22 = v11;
    v23 = 2080;
    v24 = ", ";
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sPrepare result for %s", buf, 0x34u);
  }

  v19 = *a2;
  if (*(a2 + 1))
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *buf = 0;
  *&buf[8] = 0;
  if (!v19)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_1005669CC();
  }

  v14 = *(v19 + 24);
  v13 = *(v19 + 32);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *buf = v14;
    *&buf[8] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *buf = *(v19 + 24);
  }

  v15 = *(v19 + 32);
  *(v19 + 24) = v14;
  *(v19 + 32) = v13;
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  v16 = *a4;
  v17 = a4[1];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(v19 + 16);
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  *a5 = v19;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}