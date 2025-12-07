uint64_t sub_238DD1500(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 6)
  {
    return 0x5C0000002FLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238DD1534(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 162) <= 0xE10u)
  {
    v3 = 3600;
  }

  else
  {
    v3 = *(a2 + 162);
  }

  return sub_238DD1554(a2, v3);
}

uint64_t sub_238DD1554(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 166))
  {
    v2 = 0x11200000000;
    v3 = 3;
  }

  else
  {
    if (*(a1 + 160) <= a2)
    {
      v6 = sub_2393B8474();
      v7 = *(a1 + 164);
      if (v6 > v7)
      {
        v7 = v6;
      }

      if (v7 >= a2)
      {
        v2 = 0;
        v3 = 0;
        *(a1 + 162) = a2;
        return v3 | v2;
      }

      v2 = 0x11500000000;
    }

    else
    {
      v2 = 0x11300000000;
    }

    v3 = 47;
  }

  return v3 | v2;
}

double sub_238DD15F8(uint64_t a1)
{
  *(a1 + 8) = 196612;
  *(a1 + 16) = 0;
  *a1 = &unk_284BBC5B0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 64) = a1 + 56;
  *(a1 + 72) = a1 + 56;
  *(a1 + 128) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 120) = a1 + 112;
  *(a1 + 128) = a1 + 112;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 176) = a1 + 168;
  *(a1 + 184) = a1 + 168;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 232) = a1 + 224;
  *(a1 + 240) = a1 + 224;
  *(a1 + 312) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 288) = a1 + 280;
  *(a1 + 296) = a1 + 280;
  *(a1 + 368) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 344) = a1 + 336;
  *(a1 + 352) = a1 + 336;
  return result;
}

void sub_238DD16D8()
{
  v0 = +[MTRDeviceControllerFactory sharedInstance];
  sub_23952B848(v0);
}

_BYTE *sub_238DD173C(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952BE3C();
  }

  return a1 + 4;
}

uint64_t sub_238DD175C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2392CAE60(result);

    JUMPOUT(0x23EE77B60);
  }

  return result;
}

void sub_238DD17C0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 2u);
}

id *sub_238DD17F8(id *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  if (!a1)
  {
    goto LABEL_23;
  }

  v11 = [v9 unsignedLongLongValue];
  v12 = v11;
  if (HIDWORD(v11))
  {
    v18 = sub_2393D9044(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v24 = v12;
      _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "MTRServerAttribute provided too-large attribute ID: 0x%llx", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "MTRServerAttribute provided too-large attribute ID: 0x%llx", v12);
    }

    goto LABEL_23;
  }

  if ((v11 > 0xFFF4FFFF || v11 >= 0x5000u) && (v11 >> 16 || v11 - 61440 >= 0xFFF))
  {
    v19 = sub_2393D9044(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v24) = v12;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "MTRServerAttribute provided invalid attribute ID: 0x%x", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "MTRServerAttribute provided invalid attribute ID: 0x%x");
    }

    goto LABEL_23;
  }

  if (v11 == 65532)
  {
    if (v6 == 1)
    {
      v13 = [v10 objectForKeyedSubscript:@"type"];
      v14 = [@"UnsignedInteger" isEqual:v13];

      if (v14)
      {
        goto LABEL_10;
      }

      v22 = sub_2393D9044(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v10;
        _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "MTRServerAttribute for FeatureMap provided with value that is not an unsigned integer: %@", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRServerAttribute for FeatureMap provided with value that is not an unsigned integer: %@", v10);
      }
    }

    else
    {
      v20 = sub_2393D9044(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v24) = v6;
        _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "MTRServerAttribute for FeatureMap provided with invalid read privilege %d", buf, 8u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRServerAttribute for FeatureMap provided with invalid read privilege %d");
      }
    }

LABEL_23:
    v17 = 0;
    goto LABEL_24;
  }

LABEL_10:
  v15 = [v9 copy];
  v16 = [v10 copy];
  a1 = sub_238DD1B74(a1, v15, v16, v6, v5);

  v17 = a1;
LABEL_24:

  return v17;
}

id *sub_238DD1B74(id *a1, void *a2, void *a3, char a4, char a5)
{
  v10 = a2;
  v11 = a3;
  if (a1 && (v15.receiver = a1, v15.super_class = MTRServerAttribute, v12 = objc_msgSendSuper2(&v15, sel_init), (a1 = v12) != 0) && (*(v12 + 2) = 0, objc_storeStrong(v12 + 6, a2), *(a1 + 40) = a4, *(a1 + 41) = a5, a1[4] = 0xFFFFFFFF0000FFFFLL, sub_238DD1C88(a1, v11, 0)))
  {
    a1 = a1;
    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_238DD1C88(uint64_t a1, void *a2, int a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v35 = v5;
  if (a1)
  {
    v32 = [v5 objectForKeyedSubscript:@"type"];
    v31 = a3;
    v34 = a1;
    if ([@"Array" isEqual:?])
    {
      v6 = [v35 objectForKeyedSubscript:@"value"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = v6;
        v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v30, "count")}];
        if (!v36)
        {
          v45 = 0;
LABEL_43:

          v6 = v30;
          goto LABEL_44;
        }

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        obj = v30;
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v8)
        {
          v9 = *v42;
          while (2)
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v42 != v9)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v41 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v12 = sub_2393D9044(0);
                if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "MTRServerAttribute value array should contain dictionaries", buf, 2u);
                }

                if (sub_2393D5398(1u))
                {
                  sub_2393D5320(0, 1, "MTRServerAttribute value array should contain dictionaries");
                }
              }

              v13 = v11;
              v14 = [v13 objectForKeyedSubscript:@"data"];
              v40 = 0;
              v15 = sub_238EE6F58(v14, &v40);
              v16 = v40;

              if (!v15)
              {
                v45 = 0;

                goto LABEL_43;
              }

              v17 = [v15 length];
              [v36 addObject:v15];
              if (v7 <= v17)
              {
                v7 = v17;
              }
            }

            v8 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

        v6 = obj;
        goto LABEL_23;
      }

      v26 = sub_2393D9044(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v47 = v35;
        _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "MTRServerAttribute value claims to be a list but isn't: %@", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRServerAttribute value claims to be a list but isn't: %@", v35);
      }
    }

    else
    {
      v39 = 0;
      v18 = sub_238EE6F58(v35, &v39);
      v6 = v39;
      if (v18)
      {
        v7 = [v18 length];
        v36 = v18;
LABEL_23:

        os_unfair_lock_lock((v34 + 8));
        v19 = [v35 copy];
        v20 = *(v34 + 24);
        *(v34 + 24) = v19;

        v21 = sub_2393D9044(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = sub_23952BEDC(v34);
          *buf = 134218242;
          *v47 = v7;
          *&v47[8] = 2112;
          v48 = v22;
          _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_DEFAULT, "Attribute value updated (max chunk length %lu bytes): %@", buf, 0x16u);
        }

        v23 = v34;
        if (sub_2393D5398(2u))
        {
          v24 = sub_23952BEDC(v34);
          sub_2393D5320(0, 2, "Attribute value updated (max chunk length %lu bytes): %@", v7, v24);

          v23 = v34;
        }

        WeakRetained = objc_loadWeakRetained((v23 + 16));
        if (WeakRetained)
        {
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = sub_238DD24A4;
          v37[3] = &unk_278A72298;
          v37[4] = v34;
          v38 = v36;
          [WeakRetained asyncDispatchToMatterQueue:v37 errorHandler:0];
        }

        else
        {
          if (v31)
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v27 = [*(v34 + 48) unsignedLongLongValue] >> 16;
              v28 = [*(v34 + 48) unsignedLongLongValue];
              *buf = 67109376;
              *v47 = v27;
              *&v47[4] = 1024;
              *&v47[6] = v28;
              _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_DEFAULT, "Not publishing value for attribute 0x%04X_%04X; not bound to a controller", buf, 0xEu);
            }

            if (sub_2393D5398(2u))
            {
              sub_2393D5320(0, 2, "Not publishing value for attribute 0x%04X_%04X; not bound to a controller", [*(v34 + 48) unsignedLongLongValue] >> 16, objc_msgSend(*(v34 + 48), "unsignedLongLongValue"));
            }
          }

          objc_storeStrong((v34 + 56), v36);
        }

        v45 = 1;

        os_unfair_lock_unlock((v34 + 8));
        v6 = v36;
        goto LABEL_44;
      }
    }

    v45 = 0;
LABEL_44:

    a1 = v45;
  }

  return a1;
}

void sub_238DD229C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, os_unfair_lock_s *a16, void *a17, void *a18)
{
  os_unfair_lock_unlock(a16 + 2);

  _Unwind_Resume(a1);
}

void sub_238DD24A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2 + 2);
  v3 = [*(*(a1 + 32) + 56) isEqual:*(a1 + 40)];
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  if ((v3 & 1) == 0)
  {
    sub_238F39580(*(*(a1 + 32) + 32), *(*(a1 + 32) + 36), [*(*(a1 + 32) + 48) unsignedLongLongValue]);
  }

  os_unfair_lock_unlock(v2 + 2);
}

void sub_238DD2788(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 2);

  _Unwind_Resume(a1);
}

void sub_238DD2EB8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

unint64_t sub_238DD2EFC(uint64_t a1, void *a2)
{
  v4 = sub_2393C7CB8(a1);
  v5 = *(a1 + 80);
  if (v5)
  {
    sub_2393D96C8(v5);
  }

  v6 = *(a1 + 72);
  v8 = v6;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (*a2)
  {
    sub_2393D96C8(*a2);
    v6 = v8;
  }

  *a2 = v6;
  v8 = 0;
  sub_238EA1758(&v8);
  return v4;
}

void sub_238DD2F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_238EA1758(va);
  _Unwind_Resume(a1);
}

uint64_t sub_238DD2F90(uint64_t a1, void *a2)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    sub_2393D96C8(v4);
  }

  *(a1 + 72) = *a2;
  *a2 = 0;
  v5 = *(a1 + 72);
  v6 = *(v5 + 8);
  v7 = *(v5 + 24);

  return sub_2393C5ADC(a1, v6, v7);
}

void *sub_238DD2FEC(void *a1)
{
  a1[8] = &unk_284BB83A8;
  sub_238EA1758(a1 + 10);
  sub_238EA1758(a1 + 9);
  return a1;
}

void sub_238DD356C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DD3B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_238EA1758(va);
  sub_238EA1790((v21 - 96));
  _Unwind_Resume(a1);
}

void sub_238DD3F60(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DD3F98(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Command payload decoding failed: %s", sub_2393C9138()];
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v13 = [v4 UTF8String];
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v6 = v4;
    sub_2393D5320(0, 1, "%s", [v4 UTF8String]);
  }

  if (a3)
  {
    v10 = *MEMORY[0x277CCA470];
    v7 = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = [v7 localizedStringForKey:v4 value:&stru_284BD0DD8 table:0];
    v11 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];

    *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:13 userInfo:v9];
  }
}

void sub_238DD4700(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DD4B6C(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DD5494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238DD59BC(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

BOOL sub_238DD5C4C(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      *(a1 + 88) = 0;
      v3 = sub_2393C5F70(a1 + 16, (a1 + 88));
      *a1 = v3;
      *(a1 + 8) = v4;
      return v3 == 0;
    }
  }

  return result;
}

void sub_238DD605C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DD6484(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DD69A0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DD6F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_238EA1758(va);
  sub_238EA1790((v21 - 96));
  _Unwind_Resume(a1);
}

void sub_238DD73D8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DD7848(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DD7CB8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DD8218(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DD86AC(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DD8C80(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DD930C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DD9998(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DDA0A0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DDA634(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DDACBC(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DDB348(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DDBA50(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DDBFE4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DDC4F4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DDD628(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DDDBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238DDE1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238DDE784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238DDEDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238DDF34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238DDF8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238DDFF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238DE04BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238DE0A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238DE1080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238DE162C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238DE1C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238DE2A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238DE319C(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

_BYTE *sub_238DE3698(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952BFDC();
  }

  return a1 + 4;
}

_BYTE *sub_238DE36B8(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952BFDC();
  }

  return a1 + 8;
}

MTROTASoftwareUpdateProviderClusterApplyUpdateRequestParams *sub_238DE36D8(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952BFDC();
  }

  return (a1 + 1);
}

void sub_238DE3BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DE3FD4(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DE4654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DE4DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DE5354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238DE5788(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DE5E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DE62B8(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DE6804(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DE6C1C(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DE7258(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DE761C(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DE7C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238DE80F0(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DE90C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DE9710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DE9D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DEA260(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DEAAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DEAF24(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DEB6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DEBD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DEC1E0(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DEC8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DECDB0(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DED51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DED9B0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DEDD94(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DEE47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DEE890(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DEED10(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DEF180(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DEF5F0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DEFA60(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DF0050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238DF0E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238DF134C(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DF1BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238DF2220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DF2794(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DF2F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DF3488(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DF3908(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DF3E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238DF47D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20)
{
  sub_238EA1758((v25 - 248));

  _Unwind_Resume(a1);
}

void sub_238DF4E90(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DF52B8(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DF5904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DF5DB8(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DF666C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DF6CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DF7160(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DF77F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238DF7CF8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DF8264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238DF895C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va1, a21);
  va_start(va, a21);
  v22 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DF8F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_238EA1758(va);
  sub_238EA1790((v21 - 96));
  _Unwind_Resume(a1);
}

void sub_238DF93F4(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DF9D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DFA2A0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DFA6D8(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DFAF18(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DFB3B4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DFB7C0(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DFC070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DFC450(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DFCA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238DFCF44(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DFD2FC(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DFD7F8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DFDC78(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DFE168(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DFE668(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DFEAE8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DFEF58(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DFF324(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238DFF9F8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238DFFDE8(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E003C4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E008C4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E00CB4(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E01290(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E01680(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E01C5C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E0204C(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E02628(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E02A18(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E030A4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E035B8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E039A8(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E03F04(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E043F4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E048F4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E05058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_238EA1758(va);
  sub_238EA1790((v21 - 96));
  _Unwind_Resume(a1);
}

void sub_238E05584(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E05A04(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E05E74(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E062E4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E06754(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E06B20(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E07174(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E075E4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E079B0(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E08004(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E09668(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E09C98(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E0A174(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

MTRScenesManagementClusterRemoveSceneParams *sub_238E0A934(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952BFDC();
  }

  return (a1 + 2);
}

void sub_238E0AD84(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E0B1BC(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E0B778(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E0BB68(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E0C154(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E0C58C(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E0D190(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E0D5F0(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

BOOL sub_238E0D91C(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      *(a1 + 88) = 0;
      v3 = sub_2393C5ED0(a1 + 16, (a1 + 88));
      *a1 = v3;
      *(a1 + 8) = v4;
      return v3 == 0;
    }
  }

  return result;
}

void sub_238E0DEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E0E33C(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E0E878(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E0ECE8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E0F1D8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E0F6D8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E10144(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E10848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E10D34(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E11224(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E115D4(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E12000(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E123EC(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E134D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E13E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E14504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E14994(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E14EF8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E15478(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E15904(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E16250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E16CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E172A8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E17684(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E17D84(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E18380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_238EA1758(va);
  sub_238EA1790((v21 - 96));
  _Unwind_Resume(a1);
}

void sub_238E18930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E18DC0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E19FE0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E1A450(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E1A940(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E1AD30(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E1B30C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E1B6FC(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E1BCD8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E1C0C8(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E1C710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_238EA1758(va);
  sub_238EA1790((v21 - 96));
  _Unwind_Resume(a1);
}

void sub_238E1CC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_238EA1758(va);
  sub_238EA1790((v21 - 96));
  _Unwind_Resume(a1);
}

void sub_238E1D270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E1DA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E1DFB8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E1E52C(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E1ED94(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E1F3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E1F978(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E1FE50(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E20574(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E20BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E210E4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E215AC(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E21C84(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E2250C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E22A50(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E23034(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E23A64(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E242CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E24778(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E24DE0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E25330(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E2606C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_238EA1758(va);
  sub_238EA1790((v21 - 96));
  _Unwind_Resume(a1);
}

void sub_238E26874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E26D20(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E2743C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E279D0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E28774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E28C20(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E29090(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E29500(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E29970(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E29E60(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E2A360(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E2A860(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E2AD60(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E2B1E0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E2B810(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E2BCAC(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E2C2E0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E2C904(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E2D12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E2D5F4(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E2DBA4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E2DF9C(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E2E5BC(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E2EA94(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E2F74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E2FE00(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E301C8(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E30644(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E30BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E31114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E3179C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E31CBC(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E32128(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E32C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E33374(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E33A48(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E340B0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E34788(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E34DF4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E35458(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E35B30(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E3620C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E368E0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E36F4C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E3761C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E37C88(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E3836C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E389D8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E390B4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E39794(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E39F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E3A4EC(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E3AC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E3B3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E3B884(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E3BC6C(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E3C0EC(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E3C55C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E3C944(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E3CF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E3D4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E3DA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E3DFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E3E520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E3E91C(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E3EE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E3F270(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E3F8D8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E3FDE4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E410EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E41874(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 72));

  _Unwind_Resume(a1);
}

BOOL sub_238E43364(unint64_t *a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      a1[12] = 0;
      a1[11] = 0;
      v3 = sub_2393C61E0((a1 + 2), a1 + 11);
      *a1 = v3;
      a1[1] = v4;
      return v3 == 0;
    }
  }

  return result;
}

BOOL sub_238E433BC(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      *(a1 + 104) = 0u;
      *(a1 + 88) = 0u;
      v3 = sub_238F062EC((a1 + 88), a1 + 16);
      *a1 = v3;
      *(a1 + 8) = v4;
      return v3 == 0;
    }
  }

  return result;
}

void sub_238E43D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E44914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E45014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E45448(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E459C0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E45E30(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E462A0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E46710(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E46B80(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E46FF0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E474FC(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E47A1C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E47F1C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E48418(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E48838(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E48E2C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E493D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E4991C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E49DA0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E4A290(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E4A710(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E4AB80(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E4B11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_238EA1758(va);
  sub_238EA1790((v21 - 96));
  _Unwind_Resume(a1);
}

void sub_238E4B5B0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E4BAA0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E4BE88(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E4D954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E4F574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E4FC44(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E5023C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E507E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_238EA1758(va);
  sub_238EA1790((v21 - 96));
  _Unwind_Resume(a1);
}

void sub_238E50E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va1, a21);
  va_start(va, a21);
  v22 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E51440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E51A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E51E70(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E5245C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E52848(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E52F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E53474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E53A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va1, a21);
  va_start(va, a21);
  v22 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E53F10(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E542B8(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E54770(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E54BE0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E551B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E556CC(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E55B4C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E55FBC(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E564DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E56A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E57010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va1, a21);
  va_start(va, a21);
  v22 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E57458(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E57FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E58504(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E58F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E59600(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E59C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_238EA1758(va);
  sub_238EA1790((v21 - 96));
  _Unwind_Resume(a1);
}

void sub_238E5A198(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E5A8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E5AC98(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E5B194(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E5BBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E5BFE8(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E5C60C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E5CB24(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E5D3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_238EA1758(va);
  sub_238EA1790((v21 - 96));
  _Unwind_Resume(a1);
}

void sub_238E5D7B4(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E5DDD8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E5E2F0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E5EAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E5F1B8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E5F664(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E5FDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E60460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E6097C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E60F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_238EA1758(va);
  sub_238EA1790((v21 - 96));
  _Unwind_Resume(a1);
}

void sub_238E61458(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E61A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E62178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E63A78(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E65604(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E65CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_238EA1758(va);
  sub_238EA1790((v21 - 96));
  _Unwind_Resume(a1);
}

void sub_238E666AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E66D58(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E68398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_238EA1758(va);
  sub_238EA1790((v21 - 96));
  _Unwind_Resume(a1);
}

void sub_238E68D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E693F4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E6B374(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E6CE00(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E6EFC8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E6F760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E6FCC8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E700BC(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

uint64_t sub_238E71468@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3[0] = *(a2 + 72);
  if (v3[0] == 1)
  {
    v3[1] = *(a2 + 73);
  }

  result = sub_238EA4630(a1, a2, v3);
  *(result + 96) = 0;
  *(result + 98) = 0;
  *(result + 104) = 0;
  *(result + 376) = 0;
  return result;
}

BOOL sub_238E714BC(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    result = sub_238EA4698(a1);
    if (result)
    {
      if (*(a1 + 88) == 1)
      {
        *(a1 + 376) = sub_238DE36D8((a1 + 88), v3)->super.isa;
      }

      return 1;
    }
  }

  return result;
}

void sub_238E7184C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E71D3C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E721DC(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 72));

  _Unwind_Resume(a1);
}

BOOL sub_238E72E88(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      *(a1 + 88) = 0;
      v3 = sub_2393C5FC8(a1 + 16, (a1 + 88));
      *a1 = v3;
      *(a1 + 8) = v4;
      return v3 == 0;
    }
  }

  return result;
}

void sub_238E73298(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E7367C(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E73F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va1, a21);
  va_start(va, a21);
  v22 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E7449C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E749D4(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E753B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va1, a21);
  va_start(va, a21);
  v22 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E75CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va1, a21);
  va_start(va, a21);
  v22 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E7626C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E76A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va1, a21);
  va_start(va, a21);
  v22 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E7728C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E777C0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E77EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E785CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E78AF0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E7909C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_238EA1758(va);
  sub_238EA1790((v21 - 96));
  _Unwind_Resume(a1);
}

void sub_238E795AC(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E79B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_238EA1758(va);
  sub_238EA1790((v21 - 96));
  _Unwind_Resume(a1);
}

void sub_238E7A068(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E7A688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E7AC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E7B270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E7B9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E7C03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E7CE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E7D6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E7DB64(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E7DF4C(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E7E4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E7E874(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E7F024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E7F4D0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E7F878(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E7FCF4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E801E4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E807F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E80BC0(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E810E0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E814D4(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

uint64_t sub_238E8175C@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3[0] = *(a2 + 72);
  if (v3[0] == 1)
  {
    v3[1] = *(a2 + 73);
  }

  result = sub_238EA4630(a1, a2, v3);
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 128) = 0;
  return result;
}

BOOL sub_238E817AC(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    result = sub_238EA4948(a1);
    if (result)
    {
      if (*(a1 + 88) == 1)
      {
        *(a1 + 128) = sub_238DE36D8((a1 + 88), v3)->super.isa;
      }

      return 1;
    }
  }

  return result;
}

void sub_238E81C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E81FE4(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E824E0(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E82AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E82FB4(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E839D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E83FE8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E843DC(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

uint64_t sub_238E8477C@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3[0] = *(a2 + 72);
  if (v3[0] == 1)
  {
    v3[1] = *(a2 + 73);
  }

  result = sub_238EA4630(a1, a2, v3);
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 136) = 0;
  *(result + 216) = 0;
  return result;
}

BOOL sub_238E847D0(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    result = sub_238EA499C(a1);
    if (result)
    {
      if (*(a1 + 88) == 1)
      {
        *(a1 + 216) = sub_238DE36D8((a1 + 88), v3)->super.isa;
      }

      return 1;
    }
  }

  return result;
}

void sub_238E84C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E85008(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E85504(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E85C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E86068(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E86564(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E86948(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E87034(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E874B4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E87890(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E87D54(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E88130(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E885F4(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E889D0(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E88E94(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E89444(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 72));

  _Unwind_Resume(a1);
}

BOOL sub_238E8A35C(uint64_t a1)
{
  result = sub_238EA1A80(a1);
  if (result)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      *(a1 + 88) = 0;
      v3 = sub_238EA4D5C(a1 + 16, (a1 + 88));
      *a1 = v3;
      *(a1 + 8) = v4;
      return v3 == 0;
    }
  }

  return result;
}

void sub_238E8A7DC(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E8AC08(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E8B1F8(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E8B61C(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E8DA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E8E94C(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E8F244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E8FC7C(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E91BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E920A8(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E92A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E93048(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E93B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E94014(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E95790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E96238(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E98530(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E98D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E99200(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E99774(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E99BA4(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238E9BF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E9CC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  sub_238EA1758(va);
  sub_238EA1790(va1);
  _Unwind_Resume(a1);
}

void sub_238E9D128(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E9D634(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E9DC1C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E9E12C(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E9E710(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E9ED04(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238E9F280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_238EA1758(va);
  sub_238EA1790((v20 - 88));
  _Unwind_Resume(a1);
}

void sub_238E9F95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  sub_238EA1790(va);
  _Unwind_Resume(a1);
}

void sub_238E9FE28(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238EA0318(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238EA0710(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238EA0C08(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void sub_238EA0FB4(_Unwind_Exception *a1)
{
  sub_238EA1758((v3 - 56));

  _Unwind_Resume(a1);
}

void sub_238EA1520(_Unwind_Exception *a1)
{
  sub_238EA1758((v1 - 88));
  sub_238EA1790((v1 - 80));
  _Unwind_Resume(a1);
}

void *sub_238EA16C4(uint64_t a1, void *a2, char a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    sub_2393D96C8(v6);
  }

  *(a1 + 8) = *a2;
  *a2 = 0;
  sub_2393D9BEC(*(a1 + 8), a2);
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v10 = v8;
  if (v7)
  {
    sub_2393D96C8(v7);
    v8 = v10;
  }

  *(a1 + 16) = v8;
  v10 = 0;
  result = sub_238EA1758(&v10);
  *(a1 + 24) = a3;
  return result;
}

void sub_238EA1744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_238EA1758(va);
  _Unwind_Resume(a1);
}

void *sub_238EA1758(void *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  *a1 = 0;
  return a1;
}

void *sub_238EA1790(void *a1)
{
  v2 = a1 + 1;
  v3 = *a1;
  if (*a1 != a1 + 1)
  {
    do
    {
      v4 = v3[4];
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v2);
  }

  sub_238EA183C(a1, a1[1]);
  return a1;
}

void sub_238EA183C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_238EA183C(a1, *a2);
    sub_238EA183C(a1, a2[1]);

    operator delete(a2);
  }
}

void *sub_238EA1890(uint64_t a1, unint64_t *a2, void *a3)
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
      v6 = v3[4];
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

void sub_238EA195C()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void *sub_238EA19A8(void *a1)
{
  *a1 = &unk_284BA8FA8;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C80BDFB0063);
  }

  return a1;
}

void sub_238EA1A04(void *a1)
{
  *a1 = &unk_284BA8FA8;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C80BDFB0063);
  }

  JUMPOUT(0x23EE77B60);
}

BOOL sub_238EA1A80(uint64_t a1)
{
  if (*(a1 + 80) == -1)
  {
    return 0;
  }

  if (*a1)
  {
    return 0;
  }

  v3 = sub_2393C6B34(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

void sub_238EA1ADC(void *a1, unint64_t a2)
{
  *a1 = &unk_284BA8FF0;
  is_mul_ok(a2, 0x18uLL);
  operator new[]();
}

void *sub_238EA1B7C(void *a1)
{
  *a1 = &unk_284BA8FF0;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1060C803A25DE4BLL);
  }

  return a1;
}

void sub_238EA1BD8(void *a1)
{
  *a1 = &unk_284BA8FF0;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1060C803A25DE4BLL);
  }

  JUMPOUT(0x23EE77B60);
}

void sub_238EA1C54(void *a1, unint64_t a2)
{
  *a1 = &unk_284BA9028;
  is_mul_ok(a2, 0xCuLL);
  operator new[]();
}

void *sub_238EA1CF0(void *a1)
{
  *a1 = &unk_284BA9028;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C80D7A84E51);
  }

  return a1;
}

void sub_238EA1D4C(void *a1)
{
  *a1 = &unk_284BA9028;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C80D7A84E51);
  }

  JUMPOUT(0x23EE77B60);
}

void *sub_238EA1DC8(void *a1)
{
  *a1 = &unk_284BA9060;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C8077774924);
  }

  return a1;
}

void sub_238EA1E24(void *a1)
{
  *a1 = &unk_284BA9060;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x23EE77B60);
}

BOOL sub_238EA1EA0(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 90) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 106) = 0u;
  *(a1 + 122) = 0;
  *(a1 + 123) = 0;
  *(a1 + 138) = 0;
  *(a1 + 131) = 0;
  v3 = sub_238F20E04(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

void sub_238EA1F68(void *a1, unint64_t a2)
{
  *a1 = &unk_284BA9098;
  is_mul_ok(a2, 0x28uLL);
  operator new[]();
}

void *sub_238EA2004(void *a1)
{
  *a1 = &unk_284BA9098;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1050C80A4263F9ELL);
  }

  return a1;
}

void sub_238EA2060(void *a1)
{
  *a1 = &unk_284BA9098;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1050C80A4263F9ELL);
  }

  JUMPOUT(0x23EE77B60);
}

void *sub_238EA2170(void *a1)
{
  *a1 = &unk_284BA90D0;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C8022B81155);
  }

  return a1;
}

void sub_238EA21CC(void *a1)
{
  *a1 = &unk_284BA90D0;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C8022B81155);
  }

  JUMPOUT(0x23EE77B60);
}

void sub_238EA2248(void *a1, unint64_t a2)
{
  *a1 = &unk_284BA9108;
  is_mul_ok(a2, 0x18uLL);
  operator new[]();
}

void *sub_238EA22E0(void *a1)
{
  *a1 = &unk_284BA9108;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1060C80F76DDFE0);
  }

  return a1;
}

void sub_238EA233C(void *a1)
{
  *a1 = &unk_284BA9108;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1060C80F76DDFE0);
  }

  JUMPOUT(0x23EE77B60);
}

void *sub_238EA2460(void *a1)
{
  *a1 = &unk_284BA9140;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C809292CEA2);
  }

  return a1;
}

void sub_238EA24BC(void *a1)
{
  *a1 = &unk_284BA9140;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C809292CEA2);
  }

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_238EA2538(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  sub_2393C5AAC(a1 + 96);
  sub_2393C5ADC(a1 + 96, 0, 0);
  return a1;
}

BOOL sub_238EA2594(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v14 = v1;
  v15 = v2;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_2393C5AAC(&v9 + 8);
  sub_2393C5ADC(&v9 + 8, 0, 0);
  v5 = v9;
  *(a1 + 104) = v10;
  v6 = v12;
  *(a1 + 120) = v11;
  *(a1 + 136) = v6;
  *(a1 + 152) = v13;
  *(a1 + 88) = v5;
  v7 = sub_238F27730((a1 + 88), a1 + 16);
  *a1 = v7;
  *(a1 + 8) = v8;
  return v7 == 0;
}

uint64_t sub_238EA2634(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 94) = 0;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  return a1;
}

BOOL sub_238EA2698(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 94) = 0;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  v3 = sub_238F2746C(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

BOOL sub_238EA2704(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  v3 = sub_238F0B074(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_238EA275C(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  return a1;
}

BOOL sub_238EA27B8(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
  v3 = sub_238F0B234(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

void *sub_238EA28A4(void *a1)
{
  *a1 = &unk_284BA9178;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1050C809F46B219);
  }

  return a1;
}

void sub_238EA2900(void *a1)
{
  *a1 = &unk_284BA9178;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1050C809F46B219);
  }

  JUMPOUT(0x23EE77B60);
}

void *sub_238EA2A04(void *a1)
{
  *a1 = &unk_284BA91B0;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1050C80717B85FCLL);
  }

  return a1;
}

void sub_238EA2A60(void *a1)
{
  *a1 = &unk_284BA91B0;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1050C80717B85FCLL);
  }

  JUMPOUT(0x23EE77B60);
}

void *sub_238EA2B6C(void *a1)
{
  *a1 = &unk_284BA91E8;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C80EC71111DLL);
  }

  return a1;
}

void sub_238EA2BC8(void *a1)
{
  *a1 = &unk_284BA91E8;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C80EC71111DLL);
  }

  JUMPOUT(0x23EE77B60);
}

void sub_238EA2C44(void *a1, unint64_t a2)
{
  *a1 = &unk_284BA9220;
  is_mul_ok(a2, 0x30uLL);
  operator new[]();
}

void *sub_238EA2CE4(void *a1)
{
  *a1 = &unk_284BA9220;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C802F250FDELL);
  }

  return a1;
}

void sub_238EA2D40(void *a1)
{
  *a1 = &unk_284BA9220;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C802F250FDELL);
  }

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_238EA2DBC(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  sub_2393C5AAC(a1 + 96);
  sub_2393C5ADC(a1 + 96, 0, 0);
  return a1;
}

BOOL sub_238EA2E18(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v14 = v1;
  v15 = v2;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_2393C5AAC(&v9 + 8);
  sub_2393C5ADC(&v9 + 8, 0, 0);
  v5 = v9;
  *(a1 + 104) = v10;
  v6 = v12;
  *(a1 + 120) = v11;
  *(a1 + 136) = v6;
  *(a1 + 152) = v13;
  *(a1 + 88) = v5;
  v7 = sub_238F17190((a1 + 88), a1 + 16);
  *a1 = v7;
  *(a1 + 8) = v8;
  return v7 == 0;
}

BOOL sub_238EA2EB8(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 90) = 0;
  *(a1 + 96) = 0;
  v3 = sub_238F16F98(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

void sub_238EA2F0C(void *a1, unint64_t a2)
{
  *a1 = &unk_284BA9258;
  is_mul_ok(a2, 0x18uLL);
  operator new[]();
}

void *sub_238EA2FA4(void *a1)
{
  *a1 = &unk_284BA9258;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1060C80AA6B27F1);
  }

  return a1;
}

void sub_238EA3000(void *a1)
{
  *a1 = &unk_284BA9258;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1060C80AA6B27F1);
  }

  JUMPOUT(0x23EE77B60);
}

void sub_238EA307C(void *a1, unint64_t a2)
{
  *a1 = &unk_284BA9290;
  is_mul_ok(a2, 0x18uLL);
  operator new[]();
}

void *sub_238EA3118(void *a1)
{
  *a1 = &unk_284BA9290;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C80B9492974);
  }

  return a1;
}

void sub_238EA3174(void *a1)
{
  *a1 = &unk_284BA9290;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C80B9492974);
  }

  JUMPOUT(0x23EE77B60);
}

void *sub_238EA31F0(void *a1)
{
  *a1 = &unk_284BA92C8;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C8052888210);
  }

  return a1;
}

void sub_238EA324C(void *a1)
{
  *a1 = &unk_284BA92C8;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C8052888210);
  }

  JUMPOUT(0x23EE77B60);
}

void sub_238EA32C8(void *a1, unint64_t a2)
{
  *a1 = &unk_284BA9300;
  is_mul_ok(a2, 0xAuLL);
  operator new[]();
}

void *sub_238EA336C(void *a1)
{
  *a1 = &unk_284BA9300;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C80B740803ALL);
  }

  return a1;
}

void sub_238EA33C8(void *a1)
{
  *a1 = &unk_284BA9300;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C80B740803ALL);
  }

  JUMPOUT(0x23EE77B60);
}

BOOL sub_238EA3444(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  v3 = sub_238F35C4C(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

void sub_238EA3494(void *a1, unint64_t a2)
{
  *a1 = &unk_284BA9338;
  is_mul_ok(a2, 0x70uLL);
  operator new[]();
}

void *sub_238EA353C(void *a1)
{
  *a1 = &unk_284BA9338;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1050C8080B4FE94);
  }

  return a1;
}

void sub_238EA3598(void *a1)
{
  *a1 = &unk_284BA9338;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1050C8080B4FE94);
  }

  JUMPOUT(0x23EE77B60);
}

void *sub_238EA369C(void *a1)
{
  *a1 = &unk_284BA9370;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1050C807EF9F939);
  }

  return a1;
}

void sub_238EA36F8(void *a1)
{
  *a1 = &unk_284BA9370;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1050C807EF9F939);
  }

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_238EA3774(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  *(a1 + 368) = 0;
  *(a1 + 448) = 0;
  *(a1 + 472) = 0;
  *(a1 + 496) = 0;
  *(a1 + 520) = 0;
  *(a1 + 544) = 0;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  *(a1 + 624) = 0;
  *(a1 + 704) = 0;
  *(a1 + 784) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  return a1;
}

BOOL sub_238EA3810(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  *(a1 + 368) = 0;
  *(a1 + 448) = 0;
  *(a1 + 472) = 0;
  *(a1 + 496) = 0;
  *(a1 + 520) = 0;
  *(a1 + 544) = 0;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  *(a1 + 624) = 0;
  *(a1 + 704) = 0;
  *(a1 + 784) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  v3 = sub_238F068D0(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

void sub_238EA38B8(void *a1, unint64_t a2)
{
  *a1 = &unk_284BA93A8;
  is_mul_ok(a2, 0x30uLL);
  operator new[]();
}

void *sub_238EA3954(void *a1)
{
  *a1 = &unk_284BA93A8;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1070C80B6A23389);
  }

  return a1;
}

void sub_238EA39B0(void *a1)
{
  *a1 = &unk_284BA93A8;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1070C80B6A23389);
  }

  JUMPOUT(0x23EE77B60);
}

void *sub_238EA3AB4(void *a1)
{
  *a1 = &unk_284BA93E0;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1050C807EF9F939);
  }

  return a1;
}

void sub_238EA3B10(void *a1)
{
  *a1 = &unk_284BA93E0;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1050C807EF9F939);
  }

  JUMPOUT(0x23EE77B60);
}

void *sub_238EA3B8C(void *a1)
{
  *a1 = &unk_284BA9418;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C8077774924);
  }

  return a1;
}

void sub_238EA3BE8(void *a1)
{
  *a1 = &unk_284BA9418;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x23EE77B60);
}

void sub_238EA3C64(void *a1, unint64_t a2)
{
  *a1 = &unk_284BA9450;
  is_mul_ok(a2, 0x30uLL);
  operator new[]();
}

void *sub_238EA3D00(void *a1)
{
  *a1 = &unk_284BA9450;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x10D0C80EB051EDALL);
  }

  return a1;
}

void sub_238EA3D5C(void *a1)
{
  *a1 = &unk_284BA9450;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x10D0C80EB051EDALL);
  }

  JUMPOUT(0x23EE77B60);
}

void *sub_238EA3E60(void *a1)
{
  *a1 = &unk_284BA9488;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C8052888210);
  }

  return a1;
}

void sub_238EA3EBC(void *a1)
{
  *a1 = &unk_284BA9488;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C8052888210);
  }

  JUMPOUT(0x23EE77B60);
}

void *sub_238EA3F38(void *a1)
{
  *a1 = &unk_284BA94C0;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C8077774924);
  }

  return a1;
}

void sub_238EA3F94(void *a1)
{
  *a1 = &unk_284BA94C0;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x23EE77B60);
}

void sub_238EA4010(void *a1, unint64_t a2)
{
  *a1 = &unk_284BA94F8;
  is_mul_ok(a2, 0x48uLL);
  operator new[]();
}

void *sub_238EA40B0(void *a1)
{
  *a1 = &unk_284BA94F8;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1070C80A4F1E997);
  }

  return a1;
}

void sub_238EA410C(void *a1)
{
  *a1 = &unk_284BA94F8;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1070C80A4F1E997);
  }

  JUMPOUT(0x23EE77B60);
}

void *sub_238EA4210(void *a1)
{
  *a1 = &unk_284BA9530;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1050C80717B85FCLL);
  }

  return a1;
}

void sub_238EA426C(void *a1)
{
  *a1 = &unk_284BA9530;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1050C80717B85FCLL);
  }

  JUMPOUT(0x23EE77B60);
}

void sub_238EA42E8(void *a1, unint64_t a2)
{
  *a1 = &unk_284BA9568;
  is_mul_ok(a2, 0x30uLL);
  operator new[]();
}

void *sub_238EA4390(void *a1)
{
  *a1 = &unk_284BA9568;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1052C80EC0192DFLL);
  }

  return a1;
}

void sub_238EA43EC(void *a1)
{
  *a1 = &unk_284BA9568;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1052C80EC0192DFLL);
  }

  JUMPOUT(0x23EE77B60);
}

void sub_238EA4468(void *a1, unint64_t a2)
{
  *a1 = &unk_284BA95A0;
  is_mul_ok(a2, 6uLL);
  operator new[]();
}

void *sub_238EA4504(void *a1)
{
  *a1 = &unk_284BA95A0;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C804268C683);
  }

  return a1;
}

void sub_238EA4560(void *a1)
{
  *a1 = &unk_284BA95A0;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C804268C683);
  }

  JUMPOUT(0x23EE77B60);
}

BOOL sub_238EA45DC(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 90) = 0;
  *(a1 + 92) = 0;
  v3 = sub_238F255E4((a1 + 88), a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

uint64_t sub_238EA4630(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  v6 = *a3;
  *(a1 + 88) = v6;
  if (v6 == 1)
  {
    *(a1 + 89) = a3[1];
  }

  return a1;
}

BOOL sub_238EA4698(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 96) = 0;
  *(a1 + 98) = 0;
  *(a1 + 104) = 0;
  *(a1 + 376) = 0;
  v3 = sub_238F26028(a1 + 96, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

void *sub_238EA46F0(void *a1)
{
  *a1 = &unk_284BA95D8;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C8000313F17);
  }

  return a1;
}

void sub_238EA474C(void *a1)
{
  *a1 = &unk_284BA95D8;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C8000313F17);
  }

  JUMPOUT(0x23EE77B60);
}

void sub_238EA47C8(void *a1, unint64_t a2)
{
  *a1 = &unk_284BA9610;
  is_mul_ok(a2, 0x14uLL);
  operator new[]();
}

void *sub_238EA4870(void *a1)
{
  *a1 = &unk_284BA9610;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C8044078E89);
  }

  return a1;
}

void sub_238EA48CC(void *a1)
{
  *a1 = &unk_284BA9610;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C8044078E89);
  }

  JUMPOUT(0x23EE77B60);
}

BOOL sub_238EA4948(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  v3 = sub_238F2E820(a1 + 96, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

BOOL sub_238EA499C(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 136) = 0;
  *(a1 + 216) = 0;
  v3 = sub_238F2E9E0(a1 + 96, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

BOOL sub_238EA49F4(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v3 = (a1 + 88);
  v4 = a1 + 16;
  if (sub_2393C5C40(a1 + 16) == 16)
  {
    v5 = sub_2393C60CC(v4, v3);
  }

  else
  {
    v5 = 0x500000002BLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Decode.h";
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  return v5 == 0;
}

uint64_t sub_238EA4A78(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 98) = 0;
  *(a1 + 140) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  sub_2393C5AAC(a1 + 160);
  sub_2393C5ADC(a1 + 160, 0, 0);
  sub_2393C5AAC(a1 + 232);
  sub_2393C5ADC(a1 + 232, 0, 0);
  sub_2393C5AAC(a1 + 304);
  sub_2393C5ADC(a1 + 304, 0, 0);
  sub_2393C5AAC(a1 + 376);
  sub_2393C5ADC(a1 + 376, 0, 0);
  return a1;
}

BOOL sub_238EA4B40(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  v8 = v1;
  v9 = v2;
  memset(&v7[4], 0, 296);
  memset(v7, 0, 40);
  sub_2393C5AAC(&v7[4] + 8);
  sub_2393C5ADC(&v7[4] + 8, 0, 0);
  sub_2393C5AAC(&v7[9]);
  sub_2393C5ADC(&v7[9], 0, 0);
  sub_2393C5AAC(&v7[13] + 8);
  sub_2393C5ADC(&v7[13] + 8, 0, 0);
  sub_2393C5AAC(&v7[18]);
  sub_2393C5ADC(&v7[18], 0, 0);
  *(a1 + 88) = 0;
  *(a1 + 96) = *(v7 + 8);
  *(a1 + 112) = *(&v7[1] + 8);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  *(a1 + 148) = 0;
  *(a1 + 152) = v7[4];
  if (LOBYTE(v7[4]) == 1)
  {
    *(a1 + 153) = BYTE1(v7[4]);
  }

  memcpy((a1 + 160), &v7[4] + 8, 0x120uLL);
  v5 = sub_238F32474((a1 + 88), a1 + 16);
  *a1 = v5;
  *(a1 + 8) = v6;
  return v5 == 0;
}

uint64_t sub_238EA4C98(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2393C5BDC(a1 + 16, a2);
  *(a1 + 88) = 0;
  *(a1 + 90) = 0;
  *(a1 + 132) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return a1;
}

BOOL sub_238EA4CF8(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  *(a1 + 132) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 113) = 0u;
  *(a1 + 88) = 0u;
  v3 = sub_238F31D84(a1 + 88, a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  return v3 == 0;
}

unint64_t sub_238EA4D5C(uint64_t a1, _BYTE *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    v5 = *a2;
    if (v5 >= 4)
    {
      LOBYTE(v5) = 4;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238EA4DB4(uint64_t a1, _BYTE *a2)
{
  v6 = 0;
  v3 = sub_2393C5ED0(a1, &v6);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    *a2 = v6;
  }

  return v4 | v3;
}

void sub_238EA4E10(void *a1, unint64_t a2)
{
  *a1 = &unk_284BA9648;
  is_mul_ok(a2, 0x88uLL);
  operator new[]();
}

void *sub_238EA4ED4(void *a1)
{
  *a1 = &unk_284BA9648;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1070C80B96004A6);
  }

  return a1;
}

void sub_238EA4F30(void *a1)
{
  *a1 = &unk_284BA9648;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1070C80B96004A6);
  }

  JUMPOUT(0x23EE77B60);
}

void *sub_238EA5054(void *a1)
{
  *a1 = &unk_284BA9680;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1050C807739CE8DLL);
  }

  return a1;
}

void sub_238EA50B0(void *a1)
{
  *a1 = &unk_284BA9680;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1050C807739CE8DLL);
  }

  JUMPOUT(0x23EE77B60);
}

void *sub_238EA512C(void *a1)
{
  *a1 = &unk_284BA96B8;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C8077774924);
  }

  return a1;
}

void sub_238EA5188(void *a1)
{
  *a1 = &unk_284BA96B8;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x23EE77B60);
}

void *sub_238EA5204(void *a1)
{
  *a1 = &unk_284BA96F0;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C8077774924);
  }

  return a1;
}

void sub_238EA5260(void *a1)
{
  *a1 = &unk_284BA96F0;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x23EE77B60);
}

void *sub_238EA52DC(void *a1)
{
  *a1 = &unk_284BA9728;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x23EE77B40](v2, 0x1000C8077774924);
  }

  return a1;
}

void sub_238EA5338(void *a1)
{
  *a1 = &unk_284BA9728;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x23EE77B40](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x23EE77B60);
}

int *sub_238EA53DC(int a1)
{
  result = &dword_278A723F0;
  v3 = 1424;
  while (*result != a1)
  {
    result += 4;
    v3 -= 16;
    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_238EA5554(uint64_t a1, unsigned __int16 *a2)
{
  v3 = (*(*a1 + 32))(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = 8 * v4;
  for (i = (v3 + 4); *a2 != *(i - 2) || *(a2 + 1) != *i; i += 2)
  {
    v5 -= 8;
    if (!v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_238EA55DC(int a1, uint64_t a2)
{
  LOBYTE(v2) = 0;
  if (a1 <= 256)
  {
    switch(a1)
    {
      case 3:
      case 43:
      case 45:
      case 73:
      case 74:
      case 81:
      case 82:
      case 84:
      case 85:
      case 89:
      case 94:
      case 151:
      case 156:
      case 157:
      case 158:
      case 159:
        return sub_238EA5CF0(a2);
      case 4:
      case 30:
      case 46:
      case 64:
      case 65:
      case 69:
      case 91:
        return sub_238EA5D10(a2);
      case 5:
      case 7:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 38:
      case 39:
      case 58:
      case 61:
      case 66:
      case 67:
      case 68:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 88:
      case 90:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 137:
      case 138:
      case 139:
      case 140:
      case 141:
      case 142:
      case 143:
      case 146:
      case 147:
      case 150:
      case 154:
        return v2 & 1;
      case 6:
        return sub_238EA5D30(a2);
      case 8:
        return sub_238EA5D60(a2);
      case 28:
      case 41:
      case 50:
        goto LABEL_7;
      case 29:
      case 62:
      case 72:
      case 80:
      case 86:
      case 96:
      case 97:
      case 113:
      case 114:
      case 145:
      case 148:
        return sub_238EA5DA8(a2);
      case 31:
        goto LABEL_104;
      case 37:
      case 44:
      case 59:
      case 60:
      case 71:
      case 160:
        return sub_238EA5DF0(a2);
      case 40:
        return sub_238EA5E10(a2);
      case 42:
      case 52:
      case 63:
      case 83:
      case 93:
      case 149:
        return sub_238EA5E38(a2);
      case 47:
        return sub_238EA5E58(a2);
      case 48:
      case 54:
      case 56:
      case 92:
        return sub_238EA5E7C(a2);
      case 49:
      case 129:
        return sub_238EA5EA0(a2);
      case 51:
      case 55:
      case 95:
        return sub_238EA5EC4(a2);
      case 53:
        return sub_238EA5EE8(a2);
      case 57:
        return sub_238EA5F0C(a2);
      case 70:
        return sub_238EA5F4C(a2);
      case 87:
        return sub_238EA5F70(a2);
      case 98:
        return sub_238EA5FA8(a2);
      case 128:
      case 152:
        return sub_238EA5FD0(a2);
      case 144:
        return sub_238EA5FF4(a2);
      case 153:
        return sub_238EA6018(a2);
      case 155:
        return sub_238EA6070(a2);
      default:
        if (a1 == -918523)
        {
          return sub_238EA63C0(a2);
        }

        if (a1 != -918496)
        {
          return v2 & 1;
        }

        break;
    }

    return sub_238EA5D10(a2);
  }

  if (a1 <= 1282)
  {
    if (a1 > 1028)
    {
      if (a1 <= 1067)
      {
        if (a1 > 1042)
        {
          if (a1 <= 1065 && a1 != 1043 && a1 != 1045)
          {
            return v2 & 1;
          }
        }

        else
        {
          if (a1 <= 1035)
          {
            if (a1 != 1029)
            {
              if (a1 == 1030)
              {
                return sub_238EA6328(a2);
              }

              return v2 & 1;
            }

            return sub_238EA5E38(a2);
          }

          if (a1 != 1036 && a1 != 1037)
          {
            return v2 & 1;
          }
        }

        return sub_238EA5EA0(a2);
      }

      if (a1 <= 1071)
      {
        return sub_238EA5EA0(a2);
      }

      if (a1 <= 1105)
      {
        if (a1 == 1072 || a1 == 1105)
        {
          return sub_238EA5CF0(a2);
        }

        return v2 & 1;
      }

      if (a1 != 1106)
      {
        if (a1 != 1107)
        {
          return v2 & 1;
        }

        return sub_238EA5DF0(a2);
      }

      return sub_238EA5DA8(a2);
    }

    if (a1 <= 513)
    {
      if (a1 <= 260)
      {
        if (a1 == 257)
        {
          return sub_238EA6094(a2);
        }

        if (a1 == 258)
        {
          return sub_238EA610C(a2);
        }

        if (a1 != 260)
        {
          return v2 & 1;
        }

        return sub_238EA5DA8(a2);
      }

      if (a1 > 511)
      {
        if (a1 == 512)
        {
          return sub_238EA615C(a2);
        }

        else
        {
          return sub_238EA61B0(a2);
        }
      }

      if (a1 != 261)
      {
        if (a1 != 336)
        {
          return v2 & 1;
        }

        return sub_238EA5DA8(a2);
      }
    }

    else
    {
      if (a1 > 1023)
      {
        if (a1 > 1026)
        {
          if (a1 == 1027)
          {
            return sub_238EA62E8(a2);
          }

          return sub_238EA5E38(a2);
        }

        if (a1 != 1024)
        {
          if (a1 != 1026)
          {
            return v2 & 1;
          }

          return sub_238EA5E38(a2);
        }

        return sub_238EA6070(a2);
      }

      if (a1 > 767)
      {
        if (a1 == 768)
        {
          return sub_238EA6214(a2);
        }

        if (a1 == 769)
        {
          return sub_238EA6290(a2);
        }

        return v2 & 1;
      }

      if (a1 != 514)
      {
        if (a1 != 516)
        {
          return v2 & 1;
        }

        return sub_238EA5DF0(a2);
      }
    }

    return sub_238EA6138(a2);
  }

  if (a1 > 1361)
  {
    if (a1 <= 1873)
    {
      if (a1 <= 1365)
      {
        if (a1 <= 1363)
        {
          if (a1 == 1362)
          {
            return sub_238EA5F4C(a2);
          }

          return sub_238EA5D10(a2);
        }

        if (a1 == 1364)
        {
          return sub_238EA5D10(a2);
        }

        return sub_238EA5CF0(a2);
      }

      if (a1 > 1871)
      {
        if (a1 != 1872)
        {
          return sub_238EA5D10(a2);
        }

        return sub_238EA5CF0(a2);
      }

      if (a1 != 1366)
      {
        if (a1 == 1792)
        {
          return sub_238EA5FF4(a2);
        }

        return v2 & 1;
      }

      return sub_238EA5DF0(a2);
    }

    if (a1 <= 2821)
    {
      if (a1 <= 2048)
      {
        if (a1 == 1874)
        {
          return sub_238EA639C(a2);
        }

        if (a1 == 1875)
        {
          return sub_238EA5D10(a2);
        }

        return v2 & 1;
      }

      if (a1 != 2049)
      {
        if (a1 == 2050)
        {
          return sub_238EA5CF0(a2);
        }

        return v2 & 1;
      }

      return sub_238EA5E38(a2);
    }

    if (a1 > 323615743)
    {
      if (a1 == 323615744)
      {
        return sub_238EA5CF0(a2);
      }

      if (a1 == 323615747)
      {
        return sub_238EA5D10(a2);
      }

      return v2 & 1;
    }

    if (a1 != 2822)
    {
      if (a1 != 2823)
      {
        return v2 & 1;
      }

      return sub_238EA5E38(a2);
    }

    return sub_238EA6070(a2);
  }

  switch(a1)
  {
    case 1283:
    case 1285:
    case 1287:
    case 1290:
    case 1291:
    case 1292:
      return sub_238EA5CF0(a2);
    case 1284:
      return sub_238EA5DF0(a2);
    case 1286:
      return sub_238EA5EA0(a2);
    case 1288:
    case 1289:
    case 1294:
    case 1296:
LABEL_7:
      v2 = 0x3Bu >> (a2 + 8);
      if ((a2 - 65528) >= 6)
      {
        LOBYTE(v2) = 0;
      }

      return v2 & 1;
    case 1293:
    case 1295:
      return sub_238EA5FD0(a2);
    default:
      if (a1 == 1360)
      {
LABEL_104:
        result = sub_238EA5DCC(a2);
      }

      else
      {
        if (a1 != 1361)
        {
          return v2 & 1;
        }

        result = sub_238EA6378(a2);
      }

      break;
  }

  return result;
}

BOOL sub_238EA5D30(int a1)
{
  v1 = a1 - 65528;
  v2 = (a1 - 0x4000) < 4 || a1 == 0;
  return v1 <= 5 && v1 != 2 || v2;
}

BOOL sub_238EA5D60(unsigned int a1)
{
  result = 1;
  if (a1 > 0x14 || ((1 << a1) & 0x1F807F) == 0)
  {
    v3 = a1 - 65528;
    v4 = a1 == 0x4000;
    return v3 <= 5 && v3 != 2 || v4;
  }

  return result;
}

BOOL sub_238EA5F0C(unsigned int a1)
{
  result = 1;
  if (a1 > 0x18 || ((1 << a1) & 0x116FFBE) == 0)
  {
    v3 = a1 - 65528;
    return v3 <= 5 && v3 != 2;
  }

  return result;
}

uint64_t sub_238EA5F70(unsigned int a1)
{
  result = 1;
  v3 = a1 - 65528 > 5 || a1 == 65530;
  if (v3 && (a1 > 3 || a1 == 1))
  {
    return 0;
  }

  return result;
}

uint64_t sub_238EA6018(unsigned int a1)
{
  result = 1;
  if ((a1 - 35 > 0x20 || ((1 << (a1 - 35)) & 0x1E000E01FLL) == 0) && a1 >= 0xB)
  {
    v3 = a1 - 65528;
    if (v3 > 5 || v3 == 2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_238EA6094(unsigned int a1)
{
  result = 1;
  if (a1 <= 127)
  {
    if (a1 <= 0x35 && ((1 << a1) & 0x2F1FFE1FFE007FLL) != 0)
    {
      return result;
    }

    return 0;
  }

  if (a1 - 128 >= 9 && a1 - 323551232 >= 9)
  {
    v3 = a1 - 65528;
    if (v3 > 5 || v3 == 2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_238EA615C(unsigned int a1)
{
  result = 1;
  if (a1 > 0x21 || ((1 << a1) & 0x300FF1FFFLL) == 0)
  {
    v3 = a1 - 65528;
    if (v3 > 5 || v3 == 2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_238EA61B0(unsigned int a1)
{
  result = 1;
  if ((a1 > 0x3A || ((1 << a1) & 0x7F7023F5FFF03FFLL) == 0) && a1 - 64 >= 0x17)
  {
    v3 = a1 - 65528;
    if (v3 > 5 || v3 == 2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_238EA6214(unsigned int a1)
{
  result = 1;
  if ((a1 > 0x3C || ((1 << a1) & 0x1DDF07770EEF81FFLL) == 0) && (a1 - 0x4000 > 0x10 || ((1 << a1) & 0x13C7F) == 0))
  {
    v3 = a1 - 65528;
    if (v3 > 5 || v3 == 2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_238EA6290(unsigned int a1)
{
  result = 1;
  if (a1 > 0x35 || ((1 << a1) & 0x3F000100330007) == 0)
  {
    v3 = a1 - 65528;
    if (v3 > 5 || v3 == 2)
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_238EA62E8(unsigned int a1)
{
  result = 1;
  if (a1 > 0x14 || ((1 << a1) & 0x1F000F) == 0)
  {
    v3 = a1 - 65528;
    return v3 <= 5 && v3 != 2;
  }

  return result;
}

uint64_t sub_238EA6328(unsigned int a1)
{
  result = 1;
  if (a1 > 0x32 || ((1 << a1) & 0x700070007001FLL) == 0)
  {
    v3 = a1 - 65528;
    if (v3 > 5 || v3 == 2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_238EA63C0(unsigned int a1)
{
  result = 1;
  v3 = a1 - 12288;
  if (a1 >= 12288)
  {
    if (a1 - 0x4000 > 0x34 || ((1 << a1) & 0x1807F043FFFFFFLL) == 0)
    {
      v4 = a1 - 65528;
      if ((v4 > 5 || v4 == 2) && v3 >= 2)
      {
        return 0;
      }
    }
  }

  else if ((a1 > 0x34 || ((1 << a1) & 0x1F0FFFFFFFFFFFLL) == 0) && a1 - 254 >= 2 && a1 != -897279)
  {
    return 0;
  }

  return result;
}

void *sub_238EA6468(void *a1)
{
  *a1 = &unk_284BA9760;
  a1[1] = &unk_284BA8A38;
  a1[2] = 0;
  a1[4] = 0;
  qword_27DF7BD30 = (a1 + 1);
  sub_238DC45D0(0, a1);
  return a1;
}

void *sub_238EA64E4(void *a1)
{
  *a1 = &unk_284BA9760;
  sub_238DC45D0(0, 0);
  return a1;
}

void sub_238EA6538(void *a1)
{
  sub_238EA64E4(a1);

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_238EA6570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAProviderDelegateBridge.mm", 72);
  if (a3)
  {
    v6 = sub_238DB7C98(a1 + 8, a2, a3);
    v7 = v6;
    v8 = HIDWORD(v6);
    if (v6)
    {
      v9 = sub_2393D9044(9u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v13 = sub_2393C9138();
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Failed to initialize the unsolicited BDX Message handler with err %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v10 = sub_2393C9138();
        sub_2393D5320(9, 1, "Failed to initialize the unsolicited BDX Message handler with err %s", v10);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 3;
    LODWORD(v8) = 74;
  }

  return v7 | (v8 << 32);
}

uint64_t sub_238EA66BC(uint64_t a1)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAProviderDelegateBridge.mm", 85);

  return sub_238DB7D2C(a1 + 8);
}

void sub_238EA6700(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAProviderDelegateBridge.mm", 92);
  sub_238DB7D9C(a1 + 8, v3);
}

void sub_238EA6774(uint64_t a1, uint64_t a2, __int16 *a3, unsigned __int16 *a4)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAProviderDelegateBridge.mm", 189);
  v42 = 0;
  v43 = 0;
  v7 = sub_238EA6BC8(a2, a3, &v43, &v42);
  v8 = v42;
  if (v7)
  {
    v9 = (*(*a2 + 96))(a2);
    sub_238EA6DC0(v9, v40, v10);
    v11 = sub_239495304(v40[0]);
    v12 = (*(*v11 + 56))(v11);
    v14 = v13;
    (*(*v40[0] + 32))(v40[0]);
    v15 = objc_alloc_init(MTROTASoftwareUpdateProviderClusterQueryImageParams);
    v16 = sub_238EA6E80(a4, v15);
    if (v16)
    {
      sub_2393DDF30(v40, v16);
      *(v40 + 1) = 0;
      (*(*a2 + 24))(a2, a3, v40, 0);
    }

    else
    {
      v40[0] = 0;
      v40[1] = v40;
      v40[2] = 0x4812000000;
      v40[3] = sub_238EA7160;
      v40[4] = sub_238EA716C;
      v40[5] = "";
      sub_2394C4564(v41, a2);
      v37[0] = 0;
      v37[1] = v37;
      v37[2] = 0x4012000000;
      v37[3] = sub_238EA7174;
      v37[4] = nullsub_22;
      v37[5] = "";
      v38 = *a3;
      v39 = *(a3 + 2);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_238EA718C;
      v30[3] = &unk_278A729D0;
      v17 = v8;
      v31 = v17;
      v33 = v40;
      v34 = v37;
      v18 = v15;
      v32 = v18;
      v35 = v12;
      v36 = v14;
      v19 = MEMORY[0x23EE78590](v30);
      v20 = [v17 otaProviderDelegate];
      v21 = [v17 otaProviderDelegateQueue];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_238EA7DC0;
      v24[3] = &unk_278A72A20;
      v25 = v20;
      v29 = v43;
      v26 = v17;
      v27 = v18;
      v28 = v19;
      v22 = v19;
      v23 = v20;
      dispatch_async(v21, v24);

      _Block_object_dispose(v37, 8);
      _Block_object_dispose(v40, 8);
      sub_238EA9474(v41);
    }
  }
}

void sub_238EA6B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 184), 8);
  sub_238EA9474((v31 + 48));

  _Unwind_Resume(a1);
}

uint64_t sub_238EA6BC8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  (*(*a1 + 88))(v15);
  if (BYTE1(v15[0]) == 64)
  {
    v8 = +[MTRDeviceControllerFactory sharedInstance];
    v9 = (*(*a1 + 48))(a1);
    v10 = sub_23952B954(v8, v9);

    if (v10)
    {
      v11 = [v10 otaProviderDelegate];

      if (v11)
      {
        v12 = v10;
        *a4 = v10;
        *a3 = v15[1];
        v13 = 1;
LABEL_9:

        return v13;
      }

      v16 = 129;
      v17 = 0;
      (*(*a1 + 24))(a1, a2, &v16, 0);
    }

    else
    {
      v16 = 1;
      v17 = 0;
      (*(*a1 + 24))(a1, a2, &v16, 0);
    }

    v13 = 0;
    goto LABEL_9;
  }

  v16 = 1;
  v17 = 0;
  (*(*a1 + 24))(a1, a2, &v16, 0);
  return 0;
}

uint64_t sub_238EA6DC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>, uint64_t a3@<X1>)
{
  if ((*(a1 + 88) & 1) == 0)
  {
    sub_23952C064(a1);
  }

  sub_238EA903C(a1 + 64, a3, &v7);
  v5 = *sub_238EA9094(&v7, v4);
  *a2 = v5;
  result = (*(*v5 + 24))(v5);
  if (v7 == 1)
  {
    return (*(*v8 + 32))(v8);
  }

  return result;
}

unint64_t sub_238EA6E80(unsigned __int16 *a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*a1];
  [v3 setVendorID:v4];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:a1[1]];
  [v3 setProductID:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 1)];
  [v3 setSoftwareVersion:v6];

  sub_2393C5AAC(v26);
  v24 = 0;
  v25 = 0;
  sub_2393C5BDC(v26, (a1 + 4));
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  while (1)
  {
    v8 = sub_238EA1A80(&v24);
    LODWORD(v9) = v24;
    if (v24)
    {
      v8 = 0;
    }

    if (!v8)
    {
      break;
    }

    v27[0] = 0;
    v9 = sub_238EA4D5C(v26, v27);
    v24 = v9;
    v25 = v10;
    if (v9)
    {
      break;
    }

    v11 = [MEMORY[0x277CCABB0] numberWithInt:v27[0]];
    [v7 addObject:v11];
  }

  if (v9 == 33 || (v12 = v24) == 0)
  {
    [v3 setProtocolsSupported:{v7, v24}];
    if (*(a1 + 80) == 1)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{LOWORD(sub_238E0A934(a1 + 80, v14)->super.isa)}];
      [v3 setHardwareVersion:v15];
    }

    if (*(a1 + 88) == 1)
    {
      v16 = sub_238DE36B8(a1 + 88, v14);
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v16 length:v16[1] encoding:4];
      [v3 setLocation:v17];
    }

    if (*(a1 + 112) == 1)
    {
      v18 = [MEMORY[0x277CCABB0] numberWithBool:{LOBYTE(sub_238DE36D8(a1 + 112, v14)->super.isa)}];
      [v3 setRequestorCanConsent:v18];
    }

    v20 = *(a1 + 120);
    v19 = a1 + 60;
    if (v20 == 1)
    {
      v21 = sub_238DE36B8(v19, v14);
      v22 = [MEMORY[0x277CBEA90] dataWithBytes:*v21 length:v21[1]];
      [v3 setMetadataForProvider:v22];
    }

    v12 = 0;
    v13 = 0;
  }

  else
  {
    v13 = v24 & 0xFFFFFFFF00000000;
  }

  return v13 | v12;
}

uint64_t sub_238EA7174(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 48) = v2;
  return result;
}

void sub_238EA718C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_238EA72B4;
  v12[3] = &unk_278A72988;
  v16 = *(a1 + 56);
  v13 = v5;
  v14 = v6;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v17 = *(a1 + 64);
  v9 = v6;
  v10 = v5;
  [v7 asyncDispatchToMatterQueue:v12 errorHandler:&unk_284BA9788];
}

uint64_t sub_238EA72B4(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAProviderDelegateBridge.mm", 214);
  result = sub_238EA7924(*(*(a1 + 56) + 8) + 48, *(*(a1 + 64) + 8) + 48, "QueryImage", *(a1 + 32), *(a1 + 40));
  if (result)
  {
    v3 = result;
    v4 = sub_2393D9044(9u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) description];
      LODWORD(buf) = 136315138;
      *(&buf + 4) = [v5 UTF8String];
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "QueryImage: application responded with: %s", &buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      v6 = [*(a1 + 32) description];
      v7 = v6;
      sub_2393D5320(9, 3, "QueryImage: application responded with: %s", [v6 UTF8String]);
    }

    v8 = [*(a1 + 32) status];
    v9 = [v8 isEqual:&unk_284C3E4F8];

    v10 = [*(a1 + 48) protocolsSupported];
    v11 = [v10 containsObject:&unk_284C3E4F8];

    if (v11)
    {
      LOBYTE(v29[0]) = 0;
      BYTE4(v29[0]) = 0;
      v30 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      sub_238EA7AB0(*(a1 + 32), v29);
      if (v9)
      {
        v12 = sub_238DB7D20();
        if (sub_238DB7E58(v12))
        {
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Responding with Busy due to being in the middle of handling another BDX transfer", &buf, 2u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(9, 1, "Responding with Busy due to being in the middle of handling another BDX transfer");
          }

          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = 0;
          LOBYTE(buf) = 1;
          if (BYTE4(v29[0]) == 1)
          {
            v14 = sub_238DE3698(v29 + 4, v13);
          }

          else
          {
            v14 = &dword_23958E408;
          }

          BYTE4(buf) = 1;
          DWORD2(buf) = *v14;
          v25 = *(*(a1 + 64) + 8);
          *v37 = &unk_284BA9820;
          *&v37[8] = &buf;
          (*(*v3 + 64))(v3, v25 + 48, 1, v37);
          return sub_2394C4510(*(*(a1 + 56) + 8) + 48);
        }

        else
        {
          p_buf = &buf;
          v28 = 256;
          v17 = *(a1 + 72);
          v18 = [*(a1 + 32) imageURI];
          v19 = v18;
          sub_238DB9BD8(v37, [v18 UTF8String], objc_msgSend(v18, "lengthOfBytesUsingEncoding:", 4));

          v20 = sub_2394E8C70(v17, *v37, *&v37[8], &p_buf);
          if (v20)
          {
            v21 = sub_2393D9044(0);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = sub_2393C9138();
              *v37 = 136315650;
              *&v37[4] = v22;
              *&v37[12] = 2080;
              *&v37[14] = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAProviderDelegateBridge.mm";
              v38 = 1024;
              v39 = 268;
              _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "%s at %s:%d", v37, 0x1Cu);
            }

            if (sub_2393D5398(1u))
            {
              v23 = sub_2393C9138();
              sub_2393D5320(0, 1, "%s at %s:%d", v23, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAProviderDelegateBridge.mm", 268);
            }

            v24 = *(*(a1 + 64) + 8);
            sub_2393DDF30(v37, v20);
            *&v37[1] = 0;
            (*(*v3 + 24))(v3, v24 + 48, v37, 0);
          }

          else
          {
            sub_238DB9BD8(&v31, p_buf, v28);
            v30 = 1;
            v26 = *(*(a1 + 64) + 8);
            *v37 = &unk_284BA9820;
            *&v37[8] = v29;
            (*(*v3 + 64))(v3, v26 + 48, 1, v37);
          }

          return sub_2394C4510(*(*(a1 + 56) + 8) + 48);
        }
      }

      else
      {
        v16 = *(*(a1 + 64) + 8);
        *&buf = &unk_284BA9820;
        *(&buf + 1) = v29;
        (*(*v3 + 64))(v3, v16 + 48, 1, &buf);
        return sub_2394C4510(*(*(a1 + 56) + 8) + 48);
      }
    }

    else
    {
      BYTE4(buf) = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      LOBYTE(buf) = 3;
      v15 = *(*(a1 + 64) + 8);
      v29[0] = &unk_284BA9820;
      v29[1] = &buf;
      (*(*v3 + 64))(v3, v15 + 48, 1, v29);
      return sub_2394C4510(*(*(a1 + 56) + 8) + 48);
    }
  }

  return result;
}

uint64_t sub_238EA7924(uint64_t a1, uint64_t a2, const char *a3, void *a4, void *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = sub_238EA8C30(a1, a2, a3, v10);
  if (v11 && !v9)
  {
    v12 = sub_2393D9044(9u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = a3;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "%s: no data to send as a response", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "%s: no data to send as a response", a3);
    }

    *buf = 1;
    buf[2] = 0;
    (*(*v11 + 24))(v11, a2, buf, 0);
    sub_2394C4510(a1);
    v11 = 0;
  }

  return v11;
}

void sub_238EA7AB0(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 status];
  *a2 = [v4 intValue];

  v5 = [v3 delayedActionTime];

  if (v5)
  {
    v6 = [v3 delayedActionTime];
    v7 = [v6 unsignedIntValue];
    *(a2 + 4) = 1;
    *(a2 + 8) = v7;
  }

  v8 = [v3 imageURI];

  if (v8)
  {
    v9 = [v3 imageURI];
    sub_238DB9BD8(&v26, [v9 UTF8String], objc_msgSend(v9, "lengthOfBytesUsingEncoding:", 4));

    v10 = v26;
    *(a2 + 16) = 1;
    *(a2 + 24) = v10;
  }

  v11 = [v3 softwareVersion];

  if (v11)
  {
    v12 = [v3 softwareVersion];
    v13 = [v12 unsignedIntValue];
    *(a2 + 40) = 1;
    *(a2 + 44) = v13;
  }

  v14 = [v3 softwareVersionString];

  if (v14)
  {
    v15 = [v3 softwareVersionString];
    sub_238DB9BD8(&v26, [v15 UTF8String], objc_msgSend(v15, "lengthOfBytesUsingEncoding:", 4));

    v16 = v26;
    *(a2 + 48) = 1;
    *(a2 + 56) = v16;
  }

  v17 = [v3 updateToken];

  if (v17)
  {
    v18 = [v3 updateToken];
    sub_238DB6950(&v26, [v18 bytes], objc_msgSend(v18, "length"));

    v19 = v26;
    *(a2 + 72) = 1;
    *(a2 + 80) = v19;
  }

  v20 = [v3 userConsentNeeded];

  if (v20)
  {
    v21 = [v3 userConsentNeeded];
    v22 = [v21 BOOLValue];
    *(a2 + 96) = 1;
    *(a2 + 97) = v22;
  }

  v23 = [v3 metadataForRequestor];

  if (v23)
  {
    v24 = [v3 metadataForRequestor];
    sub_238DB6950(&v26, [v24 bytes], objc_msgSend(v24, "length"));

    v25 = v26;
    *(a2 + 104) = 1;
    *(a2 + 112) = v25;
  }
}

void sub_238EA7DC0(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 64)];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v2)
  {
    [v3 handleQueryImageForNodeID:v6 controller:*(a1 + 40) params:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_238EA7F10;
    v7[3] = &unk_278A729F8;
    v8 = *(a1 + 56);
    [v3 handleQueryImageForNodeID:v6 controller:v4 params:v5 completionHandler:v7];
  }
}

void sub_238EA7F20(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAProviderDelegateBridge.mm", 306);
  v32 = 0;
  v33 = 0;
  v7 = sub_238EA6BC8(a2, a3, &v33, &v32);
  v8 = v32;
  if (v7)
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x4812000000;
    v30[3] = sub_238EA7160;
    v30[4] = sub_238EA716C;
    v30[5] = "";
    sub_2394C4564(v31, a2);
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x4012000000;
    v27[3] = sub_238EA7174;
    v27[4] = nullsub_22;
    v27[5] = "";
    v28 = *a3;
    v29 = *(a3 + 2);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_238EA8224;
    v23[3] = &unk_278A72A70;
    v9 = v8;
    v24 = v9;
    v25 = v30;
    v26 = v27;
    v10 = MEMORY[0x23EE78590](v23);
    v11 = objc_alloc_init(MTROTASoftwareUpdateProviderClusterApplyUpdateRequestParams);
    sub_238EA85A4(a4, v11);
    v12 = [v9 otaProviderDelegate];
    v13 = [v9 otaProviderDelegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_238EA865C;
    block[3] = &unk_278A72A20;
    v18 = v12;
    v22 = v33;
    v19 = v9;
    v20 = v11;
    v21 = v10;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    dispatch_async(v13, block);

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v30, 8);
    sub_238EA9474(v31);
  }
}

void sub_238EA81C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  v31 = v26;

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 168), 8);
  sub_238EA9474((v29 + 48));

  _Unwind_Resume(a1);
}

void sub_238EA8224(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_238EA8318;
  v10[3] = &unk_278A72A48;
  v13 = *(a1 + 40);
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 asyncDispatchToMatterQueue:v10 errorHandler:&unk_284BA97A8];
}

uint64_t sub_238EA8318(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAProviderDelegateBridge.mm", 322);
  result = sub_238EA7924(*(*(a1 + 48) + 8) + 48, *(*(a1 + 56) + 8) + 48, "ApplyUpdateRequest", *(a1 + 32), *(a1 + 40));
  if (result)
  {
    v3 = result;
    v4 = sub_2393D9044(9u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) description];
      LODWORD(buf) = 136315138;
      *(&buf + 4) = [v5 UTF8String];
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "ApplyUpdateRequest: application responded with: %s", &buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      v6 = [*(a1 + 32) description];
      v7 = v6;
      sub_2393D5320(9, 3, "ApplyUpdateRequest: application responded with: %s", [v6 UTF8String]);
    }

    v9[0] = 0;
    v10 = 0;
    sub_238EA8504(*(a1 + 32), v9);
    v8 = *(*(a1 + 56) + 8);
    *&buf = &unk_284BA9878;
    *(&buf + 1) = v9;
    (*(*v3 + 64))(v3, v8 + 48, 3, &buf);
    return sub_2394C4510(*(*(a1 + 48) + 8) + 48);
  }

  return result;
}

void sub_238EA8504(void *a1, uint64_t a2)
{
  v5 = a1;
  v3 = [v5 action];
  *a2 = [v3 intValue];

  v4 = [v5 delayedActionTime];
  *(a2 + 4) = [v4 unsignedIntValue];
}

void sub_238EA85A4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:*a1 length:*(a1 + 8)];
  [v5 setUpdateToken:v3];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 16)];
  [v5 setNewVersion:v4];
}

void sub_238EA865C(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 64)];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v2)
  {
    [v3 handleApplyUpdateRequestForNodeID:v6 controller:*(a1 + 40) params:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_238EA87AC;
    v7[3] = &unk_278A72A98;
    v8 = *(a1 + 56);
    [v3 handleApplyUpdateRequestForNodeID:v6 controller:v4 params:v5 completionHandler:v7];
  }
}

void sub_238EA87BC(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAProviderDelegateBridge.mm", 367);
  v32 = 0;
  v33 = 0;
  v7 = sub_238EA6BC8(a2, a3, &v33, &v32);
  v8 = v32;
  if (v7)
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x4812000000;
    v30[3] = sub_238EA7160;
    v30[4] = sub_238EA716C;
    v30[5] = "";
    sub_2394C4564(v31, a2);
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x4012000000;
    v27[3] = sub_238EA7174;
    v27[4] = nullsub_22;
    v27[5] = "";
    v28 = *a3;
    v29 = *(a3 + 2);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_238EA8AC0;
    v23[3] = &unk_278A72AE8;
    v9 = v8;
    v24 = v9;
    v25 = v30;
    v26 = v27;
    v10 = MEMORY[0x23EE78590](v23);
    v11 = objc_alloc_init(MTROTASoftwareUpdateProviderClusterNotifyUpdateAppliedParams);
    sub_238EA8ECC(a4, v11);
    v12 = [v9 otaProviderDelegate];
    v13 = [v9 otaProviderDelegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_238EA8F84;
    block[3] = &unk_278A72A20;
    v18 = v12;
    v22 = v33;
    v19 = v9;
    v20 = v11;
    v21 = v10;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    dispatch_async(v13, block);

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v30, 8);
    sub_238EA9474(v31);
  }
}

void sub_238EA8A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  v31 = v26;

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 168), 8);
  sub_238EA9474((v29 + 48));

  _Unwind_Resume(a1);
}

void sub_238EA8AC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238EA8B80;
  v6[3] = &unk_278A72AC0;
  v8 = *(a1 + 40);
  v7 = v3;
  v5 = v3;
  [v4 asyncDispatchToMatterQueue:v6 errorHandler:&unk_284BA97C8];
}

uint64_t sub_238EA8B80(void *a1)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTROTAProviderDelegateBridge.mm", 382);
  result = sub_238EA8C30(*(a1[5] + 8) + 48, *(a1[6] + 8) + 48, "NotifyUpdateApplied", a1[4]);
  if (result)
  {
    v3 = *(a1[6] + 8);
    v4 = 0;
    v5 = 0;
    (*(*result + 24))(result, v3 + 48, &v4, 0);
    return sub_2394C4510(*(a1[5] + 8) + 48);
  }

  return result;
}

uint64_t sub_238EA8C30(uint64_t a1, uint64_t a2, const char *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = sub_2394C44DC(a1);
  if (!v8)
  {
    v15 = sub_2393D9044(9u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = a3;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "%s: no CommandHandler to send response", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "%s: no CommandHandler to send response", a3);
    }

    goto LABEL_12;
  }

  if (v7)
  {
    v9 = [v7 description];
    v10 = sub_23921D408(MTRError, v7);
    v11 = sub_2393D9044(9u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = a3;
      v19 = 2080;
      v20 = [v9 UTF8String];
      v21 = 2080;
      v22 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "%s: application returned error: '%s', sending error: '%s'", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      v12 = v9;
      v13 = [v9 UTF8String];
      v14 = sub_2393C9138();
      sub_2393D5320(9, 1, "%s: application returned error: '%s', sending error: '%s'", a3, v13, v14);
    }

    sub_2393DDF30(buf, v10);
    *&buf[1] = 0;
    (*(*v8 + 24))(v8, a2, buf, 0);
    sub_2394C4510(a1);

LABEL_12:
    v8 = 0;
  }

  return v8;
}

void sub_238EA8ECC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:*a1 length:*(a1 + 8)];
  [v5 setUpdateToken:v3];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 16)];
  [v5 setSoftwareVersion:v4];
}

void sub_238EA8F84(void *a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = a1[4];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[8]];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = v4;
  if (v2)
  {
    [v3 handleNotifyUpdateAppliedForNodeID:v4 controller:v5 params:v6 completion:v7];
  }

  else
  {
    [v3 handleNotifyUpdateAppliedForNodeID:v4 controller:v5 params:v6 completionHandler:v7];
  }
}

_BYTE *sub_238EA903C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + 24);
  result = (a1 + 24);
  if (v5 == 1)
  {
    v6 = *sub_238DE36B8(result, a2);

    return sub_238EA9234(a3, v6);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

_BYTE *sub_238EA9094(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952C11C();
  }

  return a1 + 8;
}

void sub_238EA90B4(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(5u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 112);
    if (sub_2394703E0(a1))
    {
      v4 = 105;
    }

    else
    {
      v4 = 114;
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = (*(*(*v5 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL);
    }

    else
    {
      v6 = "null";
    }

    *buf = 67109634;
    v12 = v3;
    v13 = 1024;
    v14 = v4;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "ExchangeContext: %u%c delegate=%s", buf, 0x18u);
  }

  if (sub_2393D5398(1u))
  {
    v7 = *(a1 + 112);
    if (sub_2394703E0(a1))
    {
      v8 = 105;
    }

    else
    {
      v8 = 114;
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = (*(*(*v9 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL);
    }

    else
    {
      v10 = "null";
    }

    sub_2393D5320(5, 1, "ExchangeContext: %u%c delegate=%s", v7, v8, v10);
  }
}

uint64_t sub_238EA9234(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  *(a1 + 8) = a2;
  (*(*a2 + 24))(a2);
  return a1;
}

uint64_t sub_238EA92A0(uint64_t a1)
{
  if (*a1 == 1)
  {
    (*(**(a1 + 8) + 32))(*(a1 + 8));
  }

  return a1;
}

void *sub_238EA92FC(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_2394C4480(a1, *(a2 + 16));
  sub_2394C4510(a2);
  return a1;
}

void *sub_238EA9350(void *result)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*result && result[1])
  {
    v1 = sub_2393D9044(0x1Bu);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v3 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/lib/support/IntrusiveList.h";
      v4 = 1024;
      v5 = 88;
      v6 = 2080;
      v7 = "!IsInList()";
      _os_log_impl(&dword_238DAE000, v1, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(27, 1, "VerifyOrDie failure at %s:%d: %s", "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/lib/support/IntrusiveList.h", 88, "!IsInList()");
    }

    abort();
  }

  return result;
}

void sub_238EA9468(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_238DC7854(a1);
}

void *sub_238EA9474(void *a1)
{
  sub_2394C4510(a1);

  return sub_238EA9350(a1);
}

uint64_t sub_238EA9518()
{
  v0 = sub_2393D9044(0x1Du);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_DEFAULT, "Using ZAP configuration...", v2, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(29, 2, "Using ZAP configuration...");
  }

  sub_238F3F92C();
  return sub_23920ABFC();
}

void sub_238EAA270()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = sub_2393D9044(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v2 = "";
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_DEFAULT, "Matter Framework Init (git: %s)", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "Matter Framework Init (git: %s)", "");
  }
}

void *sub_238EAA338(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_284BA98C0;
  a1[1] = v3;
  return a1;
}

unint64_t sub_238EAA37C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRSessionResumptionStorageBridge.mm", 38);
  v10 = sub_23952B954(*(a1 + 8), *(a2 + 8));
  v11 = v10;
  if (v10)
  {
    v12 = [v10 controllerDataStore];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a2];
    v14 = [v12 findResumptionInfoByNodeID:v13];

    if (v14)
    {
      v15 = sub_238EAA4C8(v14, &v19, a3, a4, a5);
      v16 = v15 & 0xFFFFFFFF00000000;
      v17 = v15;
    }

    else
    {
      v16 = 0x2F00000000;
      v17 = 16;
    }
  }

  else
  {
    v16 = 0x2A00000000;
    v17 = 16;
  }

  return v17 | v16;
}

unint64_t sub_238EAA4C8(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = [v9 resumptionID];
  v11 = [v10 length];

  if (v11 != 16)
  {
    v18 = sub_2393D9044(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v9 resumptionID];
      *buf = 134218240;
      v34 = [v19 length];
      v35 = 2048;
      v36 = 16;
      _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "Unable to return resumption ID: Stored size %llu does not match required size %llu", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      v20 = [v9 resumptionID];
      sub_2393D5320(0, 1, "Unable to return resumption ID: Stored size %llu does not match required size %llu", [v20 length], 16);
    }

    v17 = 0x8400000000;
    goto LABEL_13;
  }

  v12 = [v9 sharedSecret];
  v13 = [v12 length];

  if (v13 >= 0x21)
  {
    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v9 sharedSecret];
      *buf = 134218240;
      v34 = [v15 length];
      v35 = 2048;
      v36 = 32;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Unable to return resumption shared secret: Stored size %llu is larger than allowed size %llu", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      v16 = [v9 sharedSecret];
      sub_2393D5320(0, 1, "Unable to return resumption shared secret: Stored size %llu is larger than allowed size %llu", [v16 length], 32);
    }

    v17 = 0x8B00000000;
LABEL_13:
    LODWORD(v21) = 159;
    goto LABEL_14;
  }

  v23 = [v9 nodeID];
  *a2 = [v23 unsignedLongLongValue];

  v24 = [v9 resumptionID];
  v25 = [v24 bytes];
  v26 = [v9 resumptionID];
  memcpy(a3, v25, [v26 length]);

  v27 = [v9 sharedSecret];
  v28 = [v27 length];
  if (v28 <= 0x20)
  {
    a4[4] = v28;
  }

  v29 = [v9 sharedSecret];
  v30 = [v29 bytes];
  v31 = [v9 sharedSecret];
  memcpy(a4, v30, [v31 length]);

  v32 = [v9 caseAuthenticatedTags];
  v21 = sub_239221084(v32, a5);

  if (v21)
  {
    v17 = v21 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v21) = 0;
    v17 = 0;
  }

LABEL_14:

  return v17 | v21;
}

unint64_t sub_238EAA8C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v23 = a3;
  v31 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRSessionResumptionStorageBridge.mm", 57);
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:a2 length:16];
  sub_238DC9394(*(a1 + 8));
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v10 = v26 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v11)
  {
    v12 = *v26;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = objc_msgSend_fabricIndex(v14, v23);
        if ((v15 - 1) < 0xFEu)
        {
          v16 = [v14 controllerDataStore];
          v17 = [v16 findResumptionInfoByResumptionID:v9];

          if (v17)
          {
            v24 = 0;
            v20 = sub_238EAA4C8(v17, &v24, v29, a4, a5);
            v21 = v20;
            if (v20)
            {
              v18 = v20 & 0xFFFFFFFF00000000;
            }

            else
            {
              v18 = 0;
              v21 = 0;
              *v23 = v24;
              *(v23 + 8) = v15;
            }

            v19 = v21;
            goto LABEL_15;
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0x5100000000;
  v19 = 16;
LABEL_15:

  return v19 | v18;
}

uint64_t sub_238EAAB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRSessionResumptionStorageBridge.mm", 87);
  v10 = sub_23952B954(*(a1 + 8), *(a2 + 8));
  if (v10)
  {
    v11 = objc_alloc_init(MTRCASESessionResumptionInfo);
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a2];
    [(MTRCASESessionResumptionInfo *)v11 setNodeID:v12];

    v13 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:16];
    [(MTRCASESessionResumptionInfo *)v11 setResumptionID:v13];

    sub_238DB6950(v20, a4, *(a4 + 32));
    v14 = [MEMORY[0x277CBEA90] dataWithBytes:v20[0] length:v20[1]];
    [(MTRCASESessionResumptionInfo *)v11 setSharedSecret:v14];

    v15 = sub_2392213E0(a5);
    [(MTRCASESessionResumptionInfo *)v11 setCaseAuthenticatedTags:v15];

    v16 = [v10 controllerDataStore];
    [v16 storeResumptionInfo:v11];

    v17 = 0;
    v18 = 0;
  }

  else
  {
    v18 = 0x5B00000000;
    v17 = 159;
  }

  return v18 | v17;
}

uint64_t sub_238EAACCC(uint64_t a1, int a2)
{
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRSessionResumptionStorageBridge.mm", 106);
  result = sub_238DCB13C(*(a1 + 8), a2, 0, 0);
  if (result)
  {
    v5 = sub_2393D9044(9u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "ResumptionStorage::DeleteAll called for running controller", v6, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "ResumptionStorage::DeleteAll called for running controller");
    }

    abort();
  }

  return result;
}

void sub_238EAADCC(uint64_t a1)
{

  JUMPOUT(0x23EE77B60);
}

_BYTE *sub_238EAB248(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952C1BC();
  }

  return a1 + 2;
}

void sub_238EAB628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_238EAB6BC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained[6];
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_238EAB7E8;
  v9[3] = &unk_278A72B10;
  v13 = *(a1 + 48);
  v10 = v5;
  v11 = *(a1 + 40);
  v12 = v3;
  v7 = v3;
  v8 = v5;
  objc_copyWeak(&v15, (a1 + 64));
  v14 = *(a1 + 56);
  dispatch_async(v6, v9);

  objc_destroyWeak(&v15);
}

void sub_238EAB7E8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(a1 + 32))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  (*(v2 + 16))(v2, v3, *(a1 + 48));
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    (*(*(a1 + 64) + 16))();
  }
}

void sub_238EAB884(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 166);
  v3 = a2;
  if (v3)
  {
    v4 = +[MTRDeviceControllerFactory sharedInstance];
    v5 = objc_msgSend_fabricIndex(v3);
    v6 = sub_23952B954(v4, [v5 unsignedCharValue]);

    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v6;
      v8 = [v6 compressedFabricID];
      v9 = [v8 unsignedLongLongValue];
      v10 = [v3 nodeID];
      v11 = [v10 unsignedLongLongValue];
      v12 = [v3 nodeID];
      v13 = [v12 unsignedLongLongValue];
      v14 = [v3 abortHandler];
      v15 = MEMORY[0x23EE78590]();
      *buf = 138413314;
      v27 = v3;
      v28 = 2048;
      v29 = v9;
      v30 = 2048;
      v31 = v11;
      v32 = 2048;
      v33 = v13;
      v34 = 2112;
      v35 = v15;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "%@ Diagnostic log transfer timed out for %016llX-%016llX (%llu), abortHandler: %@", buf, 0x34u);

      v6 = v25;
    }

    if (sub_2393D5398(2u))
    {
      v16 = [v6 compressedFabricID];
      v17 = [v16 unsignedLongLongValue];
      v18 = [v3 nodeID];
      v19 = [v18 unsignedLongLongValue];
      v20 = [v3 nodeID];
      v21 = [v20 unsignedLongLongValue];
      v22 = [v3 abortHandler];
      v23 = MEMORY[0x23EE78590]();
      sub_2393D5320(0, 2, "%@ Diagnostic log transfer timed out for %016llX-%016llX (%llu), abortHandler: %@", v3, v17, v19, v21, v23);
    }

    v24 = sub_23921C1E4(MTRError, 0xB100000032, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm");
    [v3 abort:v24];
  }
}

void sub_238EAC830()
{
  v0 = sub_2393D9044(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_ERROR, "chipDie chipDie chipDie", v1, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1, "chipDie chipDie chipDie");
  }

  sub_238EAEDBC();
}

void sub_238EACB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MTRDownloads;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_238EAD7BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238EAD870;
  v6[3] = &unk_278A72298;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v7 = v3;
  v5 = v3;
  [v4 asyncDispatchToMatterQueue:v6 errorHandler:0];
}

void sub_238EAD87C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x21F000000ACLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm");
  (*(v1 + 16))(v1, 0);
}

uint64_t sub_238EAE2D0(uint64_t a1, void *a2)
{
  *a1 = &unk_284BA9928;
  v3 = a2;
  *(a1 + 8) = 0;
  objc_storeWeak((a1 + 8), v3);

  return a1;
}

uint64_t sub_238EAE32C(uint64_t a1)
{
  *a1 = &unk_284BA9928;
  v2 = (a1 + 8);
  objc_storeWeak((a1 + 8), 0);
  objc_destroyWeak(v2);
  return a1;
}

uint64_t sub_238EAE384(uint64_t a1)
{
  *a1 = &unk_284BA9928;
  v2 = (a1 + 8);
  objc_storeWeak((a1 + 8), 0);
  objc_destroyWeak(v2);
  return a1;
}

void sub_238EAE3DC(uint64_t a1)
{
  *a1 = &unk_284BA9928;
  v1 = (a1 + 8);
  objc_storeWeak((a1 + 8), 0);
  objc_destroyWeak(v1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_238EAE454(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));

  if (!WeakRetained)
  {
    return 0x29000000003;
  }

  v5 = (*(*a2 + 40))(a2);
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v5 length:v6 encoding:4];
  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:(*(*a2 + 48))(a2)];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(*(*a2 + 56))(a2)];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_238EAE6D4;
    v17[3] = &unk_278A72BD0;
    v17[4] = a2;
    v10 = MEMORY[0x23EE78590](v17);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_238EAE7B8;
    v16[3] = &unk_278A72BD0;
    v16[4] = a2;
    v11 = MEMORY[0x23EE78590](v16);
    v12 = objc_loadWeakRetained((a1 + 8));
    [v12 handleBDXTransferSessionBeginForFileDesignator:v7 fabricIndex:v8 nodeID:v9 completion:v10 abortHandler:v11];

    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = 0x29400000000;
    v14 = 3;
  }

  return v14 | v13;
}

void sub_238EAE69C(_Unwind_Exception *a1)
{
  v7 = v3;

  _Unwind_Resume(a1);
}

void sub_238EAE6D4(uint64_t a1, void *a2)
{
  v5 = a2;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 666);
  if (v5)
  {
    v3 = sub_23921D408(MTRError, v5);
    (*(**(a1 + 32) + 24))(*(a1 + 32), v3, v4);
  }

  else
  {
    (*(**(a1 + 32) + 16))(*(a1 + 32));
  }
}

void sub_238EAE7B8(uint64_t a1, void *a2)
{
  v5 = a2;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 677);
  v3 = sub_23921D408(MTRError, v5);
  (*(**(a1 + 32) + 24))(*(a1 + 32), v3, v4);
}

uint64_t sub_238EAE86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));

  if (!WeakRetained)
  {
    return 0x2B400000003;
  }

  v9 = (*(*a2 + 40))(a2);
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v9 length:v10 encoding:4];
  if (v11)
  {
    if (a3)
    {
      v12 = sub_23921C1E4(MTRError, a3, a4);
    }

    else
    {
      v12 = 0;
    }

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:(*(*a2 + 48))(a2)];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(*(*a2 + 56))(a2)];
    v18 = objc_loadWeakRetained((a1 + 8));
    [v18 handleBDXTransferSessionEndForFileDesignator:v11 fabricIndex:v16 nodeID:v17 error:v12];

    v15 = 0;
    v14 = 0;
  }

  else
  {
    v14 = 0x2B800000000;
    v15 = 3;
  }

  return v14 | v15;
}

uint64_t sub_238EAEA68(uint64_t a1, uint64_t a2, void *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));

  if (!WeakRetained)
  {
    return 0x2CA00000003;
  }

  v7 = (*(*a2 + 40))(a2);
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v7 length:v8 encoding:4];
  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:(*(*a2 + 48))(a2)];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(*(*a2 + 56))(a2)];
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:*a3 length:a3[1]];
    if (v12)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_238EAECD8;
      v18[3] = &unk_278A72BD0;
      v18[4] = a2;
      v13 = MEMORY[0x23EE78590](v18);
      v14 = objc_loadWeakRetained((a1 + 8));
      [v14 handleBDXTransferSessionDataForFileDesignator:v9 fabricIndex:v10 nodeID:v11 data:v12 completion:v13];

      v15 = 0;
      v16 = 0;
    }

    else
    {
      v15 = 0x2D400000000;
      v16 = 3;
    }
  }

  else
  {
    v15 = 0x2CE00000000;
    v16 = 3;
  }

  return v16 | v15;
}

void sub_238EAEC98(_Unwind_Exception *a1)
{
  v7 = v3;

  _Unwind_Resume(a1);
}

void sub_238EAECD8(uint64_t a1, void *a2)
{
  v5 = a2;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDiagnosticLogsDownloader.mm", 727);
  if (v5)
  {
    v3 = sub_23921D408(MTRError, v5);
    (*(**(a1 + 32) + 24))(*(a1 + 32), v3, v4);
  }

  else
  {
    (*(**(a1 + 32) + 32))(*(a1 + 32));
  }
}

void sub_238EAEDCC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  v6 = sub_239495304(*a3);
  sub_238EAF024(v7, v6);
  (*(v5 + 16))(v5, a2, v7, 0, 0);
  if (v7[0] == 1)
  {
    (*(*v8 + 32))(v8);
  }

  sub_238EAEE8C(a1);
}

void sub_238EAEE8C(int *a1)
{
  if (!*a1)
  {
    sub_23952C254();
  }

  v1 = *a1 - 1;
  *a1 = v1;
  if (!v1)
  {
    v2 = sub_238EAF090(a1);

    j__free(v2);
  }
}

void sub_238EAEED4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 34) == 1)
  {
    v4 = MEMORY[0x277CCABB0];
    LOWORD(v5) = *sub_238EAF004((a2 + 34), a2);
    v6 = [v4 numberWithDouble:v5 / 1000.0];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 8);
  v9[0] = 0;
  v8 = sub_23921C1E4(MTRError, *(a2 + 16), *(a2 + 24));
  (*(v7 + 16))(v7, 0, v9, v8, v6);

  if (v9[0] == 1)
  {
    (*(*v10 + 32))(v10);
  }

  sub_238EAEE8C(a1);
}

_BYTE *sub_238EAF004(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952C304();
  }

  return a1 + 2;
}

uint64_t sub_238EAF024(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  *(a1 + 8) = a2;
  (*(*a2 + 24))(a2);
  return a1;
}

uint64_t sub_238EAF090(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 32) = 0;
    v2(a1 + 16);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 72) = 0;
    v3(a1 + 56);
    v4 = *(a1 + 72);
    if (v4)
    {
      *(a1 + 72) = 0;
      v4(a1 + 56);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(a1 + 32) = 0;
    v5(a1 + 16);
  }

  return a1;
}

uint64_t sub_238EAF118(uint64_t a1)
{
  result = 32;
  if (a1 > 48)
  {
    switch(a1)
    {
      case 192:
      case 193:
      case 194:
      case 231:
        return 33;
      case 195:
      case 199:
      case 210:
      case 228:
      case 232:
      case 233:
      case 235:
      case 236:
      case 237:
      case 239:
        return 35;
      case 196:
      case 200:
      case 208:
      case 209:
      case 227:
      case 229:
      case 240:
        return 39;
      case 197:
      case 230:
      case 238:
        return result;
      case 198:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 211:
      case 212:
      case 213:
      case 223:
      case 224:
      case 225:
      case 226:
      case 234:
      case 241:
      case 242:
      case 243:
      case 244:
      case 245:
      case 246:
        return a1;
      case 214:
      case 215:
      case 217:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 247:
        return 47;
      case 216:
        return 41;
      default:
        if (a1 == 51)
        {
          return result;
        }

        if (a1 != 49)
        {
          return a1;
        }

        return 33;
    }
  }

  if (a1 <= 26)
  {
    if (a1 == 24)
    {
      return result;
    }

    if (a1 == 25)
    {
      return 33;
    }

    return a1;
  }

  if (a1 == 27)
  {
    return 35;
  }

  if (a1 == 31)
  {
    return 39;
  }

  if (a1 != 48)
  {
    return a1;
  }

  return result;
}

void sub_238EE3648(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 24);
  if (v4 == 65533)
  {
    v8 = 1;
    *(a2 + 68) = 1;
  }

  else
  {
    if (v4 != 65532)
    {
      *a3 = 134;
      *(a3 + 2) = 0;
      v6 = 1;
      goto LABEL_7;
    }

    v8 = 0;
    *(a2 + 68) = 1;
  }

  v5 = sub_238DC7424(a2, &v8);
  v6 = 0;
  *a3 = v5;
  *(a3 + 8) = v7;
LABEL_7:
  *(a3 + 16) = v6;
}

void sub_238EE36FC(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a2 + 24);
  if (v10 == 4)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v11 = sub_238F233B4(&v13, a3);
    if (!v11)
    {
      sub_238EE4278((result + 32), (a2 + 16), &v13, a4, a5);
      return;
    }
  }

  else if (v10 == 2)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v11 = sub_238F233B4(&v13, a3);
    if (!v11)
    {
      sub_238EE4048((result + 32), (a2 + 16), &v13, a4, a5);
      return;
    }
  }

  else
  {
    if (v10)
    {
      *a5 = 129;
      *(a5 + 2) = 0;
      *(a5 + 16) = 1;
      goto LABEL_11;
    }

    v13 = 0;
    sub_2393C5AAC(&v14);
    sub_2393C5ADC(&v14, 0, 0);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v11 = sub_238F22F5C(&v13, a3);
    if (!v11)
    {
      sub_238EE3848((result + 32), (a2 + 16), &v13, a4, a5);
      return;
    }
  }

  *a5 = v11;
  *(a5 + 8) = v12;
  *(a5 + 16) = 0;
LABEL_11:
  *(a5 + 24) = 1;
}

void sub_238EE3848(uint64_t *a1@<X0>, unsigned __int16 *a2@<X1>, unsigned __int16 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  if (sub_238EE44A8(a1, *a2))
  {
    v9 = 129;
LABEL_74:
    *a5 = v9;
    *(a5 + 2) = 0;
    v36 = 1;
    *(a5 + 16) = 1;
    goto LABEL_75;
  }

  v10 = sub_2393D9044(0x1Du);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "OTA Provider received QueryImage", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(29, 2, "OTA Provider received QueryImage");
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *a3;
    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "  VendorID: 0x%x", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(29, 3, "  VendorID: 0x%x", *a3);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = a3[1];
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "  ProductID: %u", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(29, 3, "  ProductID: %u", a3[1]);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = *(a3 + 1);
    *buf = 67109120;
    *&buf[4] = v13;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "  SoftwareVersion: %u", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(29, 3, "  SoftwareVersion: %u", *(a3 + 1));
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "  ProtocolsSupported: [", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(29, 3, "  ProtocolsSupported: [");
  }

  sub_2393C5AAC(v44);
  v42 = 0;
  v43 = 0;
  sub_2393C5BDC(v44, (a3 + 4));
  v14 = sub_238EA1A80(&v42);
  if (v42)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  if (v15)
  {
    do
    {
      v45[0] = 0;
      v42 = sub_238EA4D5C(v44, v45);
      v43 = v16;
      if (v42)
      {
        break;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v45[0];
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "    %u", buf, 8u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(29, 3, "    %u", v45[0]);
      }

      v17 = sub_238EA1A80(&v42);
    }

    while (!v42 && v17);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "  ]", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(29, 3, "  ]");
  }

  if (*(a3 + 80) == 1)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      isa_low = LOWORD(sub_238E0A934(a3 + 80, v20)->super.isa);
      *buf = 67109120;
      *&buf[4] = isa_low;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "  HardwareVersion: %u", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      v22 = sub_238E0A934(a3 + 80, v19);
      sub_2393D5320(29, 3, "  HardwareVersion: %u", LOWORD(v22->super.isa));
    }
  }

  if (*(a3 + 88) == 1)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v24 = sub_238DE36B8(a3 + 88, v23);
      sub_238EE46A4(buf, *v24, *(v24 + 1), 1);
      *v49 = 136315138;
      v50 = *buf;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "  Location: %s", v49, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      v25 = sub_238DE36B8(a3 + 88, v19);
      sub_238EE46A4(buf, *v25, *(v25 + 1), 1);
      sub_2393D5320(29, 3, "  Location: %s", *buf);
    }
  }

  if (*(a3 + 112) == 1)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v27 = LOBYTE(sub_238DE36D8(a3 + 112, v26)->super.isa);
      *buf = 67109120;
      *&buf[4] = v27;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "  RequestorCanConsent: %u", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      v28 = sub_238DE36D8(a3 + 112, v19);
      sub_2393D5320(29, 3, "  RequestorCanConsent: %u", LOBYTE(v28->super.isa));
    }
  }

  if (*(a3 + 120) == 1)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v30 = *(sub_238DE36B8(a3 + 120, v29) + 1);
      *buf = 67109120;
      *&buf[4] = v30;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "  MetadataForProvider: %u", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      v31 = sub_238DE36B8(a3 + 120, v19);
      sub_2393D5320(29, 3, "  MetadataForProvider: %u", *(v31 + 1));
    }
  }

  if (*(a3 + 88) == 1 && *(sub_238DE36B8(a3 + 88, v19) + 1) != 2)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v38 = *(sub_238DE36B8(a3 + 88, v37) + 1);
      *buf = 67109376;
      *&buf[4] = v38;
      v47 = 1024;
      v48 = 2;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "location param length %u != expected length %u", buf, 0xEu);
    }

    if (sub_2393D5398(1u))
    {
      v40 = sub_238DE36B8(a3 + 88, v39);
      sub_2393D5320(29, 1, "location param length %u != expected length %u", *(v40 + 1), 2);
    }

    goto LABEL_73;
  }

  if (*(a3 + 120) == 1 && *(sub_238DE36B8(a3 + 120, v19) + 1) >= 0x201uLL)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v33 = *(sub_238DE36B8(a3 + 120, v32) + 1);
      *buf = 67109376;
      *&buf[4] = v33;
      v47 = 1024;
      v48 = 512;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "metadata size %u exceeds max %u", buf, 0xEu);
    }

    if (sub_2393D5398(1u))
    {
      v35 = sub_238DE36B8(a3 + 120, v34);
      sub_2393D5320(29, 1, "metadata size %u exceeds max %u", *(v35 + 1), 512);
    }

LABEL_73:
    v9 = 133;
    goto LABEL_74;
  }

  (***a1)(*a1, a4, a2, a3);
  v36 = 0;
  *a5 = 0;
LABEL_75:
  *(a5 + 24) = v36;
}

uint64_t sub_238EE4048@<X0>(uint64_t *a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  result = sub_238EE44A8(a1, *a2);
  if (result)
  {
    v11 = 129;
LABEL_18:
    *a5 = v11;
    *(a5 + 2) = 0;
    v15 = 1;
    *(a5 + 16) = 1;
    goto LABEL_19;
  }

  v12 = sub_2393D9044(0x1Du);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "OTA Provider received ApplyUpdateRequest", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(29, 2, "OTA Provider received ApplyUpdateRequest");
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a3 + 8);
    *buf = 67109120;
    v17 = v13;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "  Update Token: %u", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(29, 3, "  Update Token: %u", *(a3 + 8));
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = *(a3 + 16);
    *buf = 67109120;
    v17 = v14;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "  New Version: %u", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(29, 3, "  New Version: %u", *(a3 + 16));
  }

  result = sub_238EE4584(*a3, *(a3 + 8));
  if ((result & 1) == 0)
  {
    v11 = 133;
    goto LABEL_18;
  }

  result = (*(**a1 + 8))(*a1, a4, a2, a3);
  v15 = 0;
  *a5 = 0;
LABEL_19:
  *(a5 + 24) = v15;
  return result;
}

uint64_t sub_238EE4278@<X0>(uint64_t *a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  result = sub_238EE44A8(a1, *a2);
  if (result)
  {
    v11 = 129;
LABEL_18:
    *a5 = v11;
    *(a5 + 2) = 0;
    v15 = 1;
    *(a5 + 16) = 1;
    goto LABEL_19;
  }

  v12 = sub_2393D9044(0x1Du);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "OTA Provider received NotifyUpdateApplied", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(29, 2, "OTA Provider received NotifyUpdateApplied");
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a3 + 8);
    *buf = 67109120;
    v17 = v13;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "  Update Token: %u", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(29, 3, "  Update Token: %u", *(a3 + 8));
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = *(a3 + 16);
    *buf = 67109120;
    v17 = v14;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "  Software Version: %u", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(29, 3, "  Software Version: %u", *(a3 + 16));
  }

  result = sub_238EE4584(*a3, *(a3 + 8));
  if ((result & 1) == 0)
  {
    v11 = 133;
    goto LABEL_18;
  }

  result = (*(**a1 + 16))(*a1, a4, a2, a3);
  v15 = 0;
  *a5 = 0;
LABEL_19:
  *(a5 + 24) = v15;
  return result;
}

BOOL sub_238EE44A8(uint64_t *a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!*a1)
  {
    v4 = sub_2393D9044(0x1Du);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v7 = a2;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "No OTAProviderDelegate set for ep:%u", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(29, 1, "No OTAProviderDelegate set for ep:%u", a2);
    }
  }

  return v2 == 0;
}

BOOL sub_238EE4584(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a2 - 8;
  if ((a2 - 8) >= 0x19)
  {
    v3 = a2;
    v4 = sub_2393D9044(0x1Du);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      v7 = 8;
      v8 = 1024;
      v9 = 32;
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Expected size in [%u, %u] for UpdateToken, got %u", buf, 0x14u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(29, 1, "Expected size in [%u, %u] for UpdateToken, got %u", 8, 32, v3);
    }
  }

  return v2 < 0x19;
}

uint64_t sub_238EE46A4(uint64_t a1, const void *a2, size_t a3, int a4)
{
  *(a1 + 24) = 0;
  v6 = (a1 + 24);
  *a1 = a1 + 24;
  *(a1 + 8) = xmmword_23958E620;
  sub_2393D5CDC(a1, a2, a3);
  v7 = *(a1 + 16);
  if (*(a1 + 8) < v7)
  {
    v7 = *(a1 + 8);
  }

  *(*a1 + v7) = 0;
  if (a4)
  {
    sub_2393D6F78(a1);
  }

  v8 = *(a1 + 8);
  if (v8 >= *(a1 + 16))
  {
    v8 = *(a1 + 16);
  }

  for (; v8; --v8)
  {
    if (!*v6)
    {
      *v6 = 46;
    }

    ++v6;
  }

  return a1;
}

void sub_238EE512C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x14C00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm");
  (*(v1 + 16))(v1);
}

void sub_238EE51B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x15600000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm");
  (*(v1 + 16))(v1);
}

void sub_238EE523C(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void *a5)
{
  v7 = a4;
  v8 = a5;
  if (!v7)
  {
    operator new();
  }

  v9 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_238EE5B94;
  block[3] = &unk_278A71698;
  v12 = *(a1 + 64);
  v11 = v7;
  dispatch_async(v9, block);
}

void sub_238EE5958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);
  (*(*v60 + 8))(v60, a2, a3, a4, a5, a6, a7, a8);
  sub_238EE6094(&a53);

  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  sub_239495880(va);
  if (v58)
  {
    MEMORY[0x23EE77B60](v58, 0x1000C40FD6F1FF4);
  }

  if (a14)
  {
    MEMORY[0x23EE77B60](a14, 0x1000C403E1C8BA9);
  }

  _Unwind_Resume(a1);
}

void sub_238EE5BA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained setCppClusterStateCache:0];
    [WeakRetained setBaseDevice:0];
  }
}

void sub_238EE5C1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_238EE5CCC;
  v7[3] = &unk_278A71698;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t sub_238EE5CCC(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_238EE5CEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_238EE5D9C;
  v7[3] = &unk_278A71698;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t sub_238EE5D9C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_238EE5DBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_238EE5E6C;
  v7[3] = &unk_278A71698;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}