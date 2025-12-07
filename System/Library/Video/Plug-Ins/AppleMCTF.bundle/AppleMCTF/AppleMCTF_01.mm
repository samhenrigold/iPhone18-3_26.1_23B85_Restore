uint64_t sub_17310(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 87916);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v13 = sub_56AD0(0x1Eu);
        v14 = sub_66A18();
        v15 = sub_56B04(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 24), *a2, valuePtr, v11);
          v14 = sub_66A18();
          sub_56B04(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v20 = sub_56AD0(0x1Eu);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_MCTF_GetMaxLookBehind", 492, "pNum != __null", a1, *(a1 + 24), a2, allocator, a4, a5, valuePtr);
          v23 = sub_66A18();
          v25 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_MCTF_GetMaxLookBehind", 492, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_MCTF_GetMaxLookBehind", 492, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v16 = sub_56AD0(0x1Eu);
      v17 = sub_66A18();
      v18 = sub_56B04(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_MCTF_GetMaxLookBehind", 482, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_66A18();
        v24 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_MCTF_GetMaxLookBehind", 482);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_MCTF_GetMaxLookBehind", 482);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_17648(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 87912);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v13 = sub_56AD0(0x1Eu);
        v14 = sub_66A18();
        v15 = sub_56B04(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 24), *a2, valuePtr, v11);
          v14 = sub_66A18();
          sub_56B04(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v20 = sub_56AD0(0x1Eu);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_MCTF_GetMaxLookAhead", 536, "pNum != __null", a1, *(a1 + 24), a2, allocator, a4, a5, valuePtr);
          v23 = sub_66A18();
          v25 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_MCTF_GetMaxLookAhead", 536, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_MCTF_GetMaxLookAhead", 536, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v16 = sub_56AD0(0x1Eu);
      v17 = sub_66A18();
      v18 = sub_56B04(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_MCTF_GetMaxLookAhead", 526, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_66A18();
        v24 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_MCTF_GetMaxLookAhead", 526);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_MCTF_GetMaxLookAhead", 526);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_17980(uint64_t a1, const char **a2, const void *a3, const void *a4)
{
  valuePtr = -2;
  if (!a1 || !a2 || !a3)
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v13 = sub_56AD0(0x1Eu);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_MCTF_SetFilterStrength", 571, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v16 = sub_66A18();
        v67 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v67, "AVE_Prop_MCTF_SetFilterStrength");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_MCTF_SetFilterStrength");
      }
    }

    return 4294966295;
  }

  if (!a4)
  {
    return 0;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID != CFGetTypeID(a4))
  {
    v9 = CFArrayGetTypeID();
    if (v9 != CFGetTypeID(a4))
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v36 = sub_56AD0(0x1Eu);
        v37 = sub_66A18();
        v38 = sub_56B04(4);
        v39 = *(a1 + 24);
        v40 = CFGetTypeID(a4);
        if (v36)
        {
          v75 = v39;
          v41 = 584;
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v37, 30, v38, "AVE_Prop_MCTF_SetFilterStrength", 584, "CFNumberGetTypeID() == CFGetTypeID(pValue) || CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v75, a2, a3, a4, v40);
          v42 = sub_66A18();
          v43 = sub_56B04(4);
          CFGetTypeID(a4);
          v44 = "CFNumberGetTypeID() == CFGetTypeID(pValue) || CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_33:
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v42, 30, v43, "AVE_Prop_MCTF_SetFilterStrength", v41, v44);
        }

        else
        {
          v56 = "CFNumberGetTypeID() == CFGetTypeID(pValue) || CFArrayGetTypeID() == CFGetTypeID(pValue)";
          v57 = 584;
LABEL_47:
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v37, 30, v38, "AVE_Prop_MCTF_SetFilterStrength", v57, v56);
        }
      }

      return 4294965293;
    }
  }

  v10 = CFNumberGetTypeID();
  if (v10 != CFGetTypeID(a4))
  {
    v18 = CFArrayGetTypeID();
    if (v18 == CFGetTypeID(a4))
    {
      Count = CFArrayGetCount(a4);
      v20 = Count;
      if ((Count - 1) < 2)
      {
        v21 = 0;
        *(a1 + 1400) |= 0x2000000uLL;
        v22 = a1 + 10496;
        v23 = Count & 0x7FFFFFFF;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a4, v21);
          if (!ValueAtIndex)
          {
            if (!sub_56A8C(0x1Eu, 4))
            {
              return 4294965292;
            }

            v60 = sub_56AD0(0x1Eu);
            v46 = sub_66A18();
            v61 = sub_56B04(4);
            if (v60)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v46, 30, v61, "AVE_Prop_MCTF_SetFilterStrength", 648, "pNum != __null", a1, *(a1 + 24), a2, a3, a4);
              v62 = sub_66A18();
              v71 = sub_56B04(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v62, 30, v71, "AVE_Prop_MCTF_SetFilterStrength", 648);
              return 4294965292;
            }

            v79 = a3;
            v80 = a4;
            v76 = *(a1 + 24);
            v78 = a2;
            v73 = "pNum != __null";
            v74 = a1;
            v72 = 648;
            v70 = v61;
            v59 = "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p";
            goto LABEL_64;
          }

          v25 = ValueAtIndex;
          v26 = CFNumberGetTypeID();
          if (v26 != CFGetTypeID(v25))
          {
            if (!sub_56A8C(0x1Eu, 4))
            {
              return 4294965293;
            }

            v63 = sub_56AD0(0x1Eu);
            v37 = sub_66A18();
            v38 = sub_56B04(4);
            v64 = *(a1 + 24);
            v65 = CFGetTypeID(a4);
            if (v63)
            {
              v77 = v64;
              v41 = 654;
              printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v37, 30, v38, "AVE_Prop_MCTF_SetFilterStrength", 654, "CFNumberGetTypeID() == CFGetTypeID(pNum)", a1, v77, a2, a3, a4, v65);
              v42 = sub_66A18();
              v43 = sub_56B04(4);
              CFGetTypeID(a4);
              v44 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
              goto LABEL_33;
            }

            v56 = "CFNumberGetTypeID() == CFGetTypeID(pNum)";
            v57 = 654;
            goto LABEL_47;
          }

          CFNumberGetValue(v25, kCFNumberSInt32Type, &valuePtr);
          v27 = valuePtr;
          if (valuePtr + 1 >= 0x66)
          {
            break;
          }

          if (valuePtr != -1)
          {
            *(a1 + 1400) &= ~0x2000000uLL;
            *(a1 + 87228 + 4 * v21) = v27;
            *(v22 + 4 * v21) = (5243 * ((8 * ((3 * v27) & 0x1FFFu)) >> 2)) >> 17;
          }

          if (sub_56A8C(0x1Eu, 7))
          {
            v28 = sub_56AD0(0x1Eu);
            v29 = sub_66A18();
            v30 = sub_56B04(7);
            v31 = *(a1 + 24);
            v32 = *a2;
            v33 = *(v22 + 4 * v21);
            if (v28)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s[%d]: %d %d\n", v29, 30, v30, a1, v31, v32, v21, valuePtr, v33);
              v34 = sub_66A18();
              v35 = sub_56B04(7);
              syslog(3, "%lld %d AVE %s: %p %lld SetProp %s[%d]: %d %d", v34, 30, v35, a1, *(a1 + 24), *a2, v21, valuePtr, *(v22 + 4 * v21));
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %p %lld SetProp %s[%d]: %d %d", v29, 30, v30, a1, v31, v32, v21, valuePtr, v33);
            }
          }

          result = 0;
          if (v23 == ++v21)
          {
            return result;
          }
        }

        if (!sub_56A8C(0x1Eu, 4))
        {
          return 4294965292;
        }

        v66 = sub_56AD0(0x1Eu);
        v46 = sub_66A18();
        v47 = sub_56B04(4);
        if (v66)
        {
          v48 = 667;
          printf("%lld %d AVE %s: %s:%d %s | invalid FilterStrength  %p %lld %p %p %p %d [%d, %d]\n", v46, 30, v47, "AVE_Prop_MCTF_SetFilterStrength", 667, "(0 <= iFilterStrength && iFilterStrength <= 100) || iFilterStrength == -1", a1, *(a1 + 24), a2, a3, a4, valuePtr, 0, 100);
          goto LABEL_37;
        }

        v82 = 0;
        v83 = 100;
        v80 = a4;
        v81 = valuePtr;
        v78 = a2;
        v79 = a3;
        v74 = a1;
        v76 = *(a1 + 24);
        v58 = 667;
LABEL_50:
        v72 = v58;
        v73 = "(0 <= iFilterStrength && iFilterStrength <= 100) || iFilterStrength == -1";
        v70 = v47;
        v59 = "%lld %d AVE %s: %s:%d %s | invalid FilterStrength  %p %lld %p %p %p %d [%d, %d]";
LABEL_64:
        syslog(3, v59, v46, 30, v70, "AVE_Prop_MCTF_SetFilterStrength", v72, v73, v74, v76, v78, v79, v80, v81, v82, v83);
        return 4294965292;
      }

      if (sub_56A8C(0x1Eu, 4))
      {
        v50 = sub_56AD0(0x1Eu);
        v46 = sub_66A18();
        v51 = sub_56B04(4);
        if (!v50)
        {
          v82 = 0;
          v83 = 2;
          v80 = a4;
          v81 = v20;
          v78 = a2;
          v79 = a3;
          v74 = a1;
          v76 = *(a1 + 24);
          v72 = 639;
          v73 = "0 < iNum && iNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))";
          v70 = v51;
          v59 = "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]";
          goto LABEL_64;
        }

        printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", v46, 30, v51, "AVE_Prop_MCTF_SetFilterStrength", 639, "0 < iNum && iNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1, *(a1 + 24), a2, a3, a4, v20, 0, 2);
        v52 = sub_66A18();
        v69 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", v52, 30, v69, "AVE_Prop_MCTF_SetFilterStrength", 639, "0 < iNum && iNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1);
      }

      return 4294965292;
    }

    return 0;
  }

  CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
  v11 = valuePtr;
  if (valuePtr + 1 >= 0x66)
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v45 = sub_56AD0(0x1Eu);
      v46 = sub_66A18();
      v47 = sub_56B04(4);
      if (v45)
      {
        v48 = 598;
        printf("%lld %d AVE %s: %s:%d %s | invalid FilterStrength  %p %lld %p %p %p %d [%d, %d]\n", v46, 30, v47, "AVE_Prop_MCTF_SetFilterStrength", 598, "(0 <= iFilterStrength && iFilterStrength <= 100) || iFilterStrength == -1", a1, *(a1 + 24), a2, a3, a4, valuePtr, 0, 100);
LABEL_37:
        v49 = sub_66A18();
        v68 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid FilterStrength  %p %lld %p %p %p %d [%d, %d]", v49, 30, v68, "AVE_Prop_MCTF_SetFilterStrength", v48, "(0 <= iFilterStrength && iFilterStrength <= 100) || iFilterStrength == -1", a1);
        return 4294965292;
      }

      v82 = 0;
      v83 = 100;
      v80 = a4;
      v81 = valuePtr;
      v78 = a2;
      v79 = a3;
      v74 = a1;
      v76 = *(a1 + 24);
      v58 = 598;
      goto LABEL_50;
    }

    return 4294965292;
  }

  v12 = *(a1 + 1400);
  if (valuePtr == -1)
  {
    *(a1 + 1400) = v12 | 0x2000000;
  }

  else
  {
    *(a1 + 1400) = v12 & 0xFFFFFFFFFDFFFFFFLL;
    *(a1 + 87228) = v11;
    *(a1 + 10496) = (5243 * ((8 * ((3 * v11) & 0x1FFFu)) >> 2)) >> 17;
  }

  *(a1 + 87232) = -1;
  *(a1 + 10500) = -1;
  result = sub_56A8C(0x1Eu, 7);
  if (result)
  {
    v53 = sub_56AD0(0x1Eu);
    v54 = sub_66A18();
    v55 = sub_56B04(7);
    if (v53)
    {
      printf("%lld %d AVE %s: %p %lld SetProp %s: %d %d\n", v54, 30, v55, a1, *(a1 + 24), *a2, valuePtr, *(a1 + 10496));
      v54 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d %d", v54);
    return 0;
  }

  return result;
}

uint64_t sub_18344(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if ((*(a1 + 87232) & 0x80000000) != 0)
    {
      valuePtr = *(a1 + 10496);
      v25 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
      if (v25)
      {
        v26 = v25;
        *a5 = v25;
        result = sub_56A8C(0x1Eu, 7);
        if (!result)
        {
          return result;
        }

        v27 = sub_56AD0(0x1Eu);
        v19 = sub_66A18();
        v28 = sub_56B04(7);
        if (v27)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v19, 30, v28, a1, *(a1 + 24), *a2, valuePtr, v26);
          v19 = sub_66A18();
          sub_56B04(7);
        }

        goto LABEL_29;
      }

      if (sub_56A8C(0x1Eu, 4))
      {
        v33 = sub_56AD0(0x1Eu);
        v30 = sub_66A18();
        v34 = sub_56B04(4);
        if (v33)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v30, 30, v34, "AVE_Prop_MCTF_GetFilterStrength", 763, "pFilterStrength != __null", a1, *(a1 + 24), a2, allocator, a4, a5, valuePtr);
          v35 = sub_66A18();
          v43 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v35, 30, v43, "AVE_Prop_MCTF_GetFilterStrength", 763, "pFilterStrength != __null", a1);
          return 4294966293;
        }

        v53 = a5;
        v54 = valuePtr;
        v51 = allocator;
        v52 = a4;
        v49 = *(a1 + 24);
        v50 = a2;
        v47 = "pFilterStrength != __null";
        v48 = a1;
        v46 = 763;
        v45 = v34;
        v40 = "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d";
        goto LABEL_35;
      }
    }

    else
    {
      Mutable = CFArrayCreateMutable(allocator, *(a1 + 10508), &kCFTypeArrayCallBacks);
      if (Mutable)
      {
        v11 = Mutable;
        if (*(a1 + 10508))
        {
          v12 = 2624;
          v13 = 10496;
          while (1)
          {
            v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, (a1 + v13));
            if (!v14)
            {
              break;
            }

            v15 = v14;
            CFArrayAppendValue(v11, v14);
            CFRelease(v15);
            v16 = v12 - 2623;
            ++v12;
            v13 += 4;
            if (v16 >= *(a1 + 10508))
            {
              goto LABEL_11;
            }
          }

          if (sub_56A8C(0x1Eu, 4))
          {
            v36 = sub_56AD0(0x1Eu);
            v37 = sub_66A18();
            v38 = sub_56B04(4);
            if (v36)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d\n", v37, 30, v38, "AVE_Prop_MCTF_GetFilterStrength", 741, "pNum != __null", a1, *(a1 + 24), a2, allocator, a4, a5, v12 - 2624, *(a1 + 4 * v12));
              v39 = sub_66A18();
              v44 = sub_56B04(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d", v39, 30, v44, "AVE_Prop_MCTF_GetFilterStrength", 741, "pNum != __null", a1);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d %d", v37, 30, v38, "AVE_Prop_MCTF_GetFilterStrength", 741, "pNum != __null", a1);
            }
          }

          CFRelease(v11);
          return 4294966293;
        }

LABEL_11:
        *a5 = v11;
        result = sub_56A8C(0x1Eu, 7);
        if (!result)
        {
          return result;
        }

        v18 = sub_56AD0(0x1Eu);
        v19 = sub_66A18();
        v20 = sub_56B04(7);
        if (v18)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v19, 30, v20, a1, *(a1 + 24), *a2, *(a1 + 10508), v11);
          v19 = sub_66A18();
          sub_56B04(7);
        }

LABEL_29:
        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v19, 30);
        return 0;
      }

      if (sub_56A8C(0x1Eu, 4))
      {
        v29 = sub_56AD0(0x1Eu);
        v30 = sub_66A18();
        v31 = sub_56B04(4);
        if (v29)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d\n", v30, 30, v31, "AVE_Prop_MCTF_GetFilterStrength", 732, "pArray != __null", a1, *(a1 + 24), a2, allocator, a4, a5, 2);
          v32 = sub_66A18();
          v42 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d", v32, 30, v42, "AVE_Prop_MCTF_GetFilterStrength", 732, "pArray != __null", a1);
          return 4294966293;
        }

        v53 = a5;
        v54 = 2;
        v51 = allocator;
        v52 = a4;
        v49 = *(a1 + 24);
        v50 = a2;
        v47 = "pArray != __null";
        v48 = a1;
        v46 = 732;
        v45 = v31;
        v40 = "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %d";
LABEL_35:
        syslog(3, v40, v30, 30, v45, "AVE_Prop_MCTF_GetFilterStrength", v46, v47, v48, v49, v50, v51, v52, v53, v54);
      }
    }

    return 4294966293;
  }

  if (sub_56A8C(0x1Eu, 4))
  {
    v21 = sub_56AD0(0x1Eu);
    v22 = sub_66A18();
    v23 = sub_56B04(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v22, 30, v23, "AVE_Prop_MCTF_GetFilterStrength", 721, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
      v24 = sub_66A18();
      v41 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v24, 30, v41, "AVE_Prop_MCTF_GetFilterStrength", 721);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v23, "AVE_Prop_MCTF_GetFilterStrength", 721);
    }
  }

  return 4294966295;
}

uint64_t sub_18980(uint64_t a1, const char **a2, const void *a3, const void *a4)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v13 = sub_56AD0(0x1Eu);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_MCTF_SetLatencyMode", 809, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v16 = sub_66A18();
        v39 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v39, "AVE_Prop_MCTF_SetLatencyMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_MCTF_SetLatencyMode");
      }
    }

    return 4294966295;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(a4) || (v9 = CFNumberGetTypeID(), v9 == CFGetTypeID(a4)))
  {
    v10 = CFStringGetTypeID();
    if (v10 == CFGetTypeID(a4))
    {
      v11 = @"Low";
      if (CFEqual(a4, @"Low"))
      {
        v12 = 1;
        goto LABEL_26;
      }

      v11 = @"Medium";
      if (CFEqual(a4, @"Medium") || CFEqual(a4, @"Auto"))
      {
        v12 = 2;
LABEL_26:
        v24 = sub_4765C(v11, (a1 + 87240), 0x80u);
        sub_63330((a1 + 87240), 128, "%s", v24);
        if (sub_56A8C(0x1Eu, 7))
        {
          v25 = sub_56AD0(0x1Eu);
          v26 = sub_66A18();
          v27 = sub_56B04(7);
          if (v25)
          {
            printf("%lld %d AVE %s: %s:%d iaVTMCTFMode = %s\n", v26, 30, v27, "AVE_Prop_MCTF_SetLatencyMode", 851, (a1 + 87240));
            v28 = sub_66A18();
            v40 = sub_56B04(7);
            syslog(3, "%lld %d AVE %s: %s:%d iaVTMCTFMode = %s", v28, 30, v40, "AVE_Prop_MCTF_SetLatencyMode", 851, (a1 + 87240));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d iaVTMCTFMode = %s", v26, 30, v27, "AVE_Prop_MCTF_SetLatencyMode", 851, (a1 + 87240));
          }
        }

        goto LABEL_33;
      }

      if (sub_56A8C(0x10u, 4))
      {
        v36 = sub_56AD0(0x10u);
        v37 = sub_66A18();
        v38 = sub_56B04(4);
        if (v36)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid LatencyMode\n", v37, 16, v38, "AVE_Prop_MCTF_SetLatencyMode", 844, "false");
          sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid LatencyMode");
      }

      return 4294966295;
    }

    v17 = CFNumberGetTypeID();
    if (v17 != CFGetTypeID(a4))
    {
      v12 = 0;
LABEL_33:
      *(a1 + 10504) = v12;
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v33 = sub_56AD0(0x1Eu);
        v34 = sub_66A18();
        v35 = sub_56B04(7);
        if (v33)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v34, 30, v35, a1, *(a1 + 24), *a2, v12);
          v34 = sub_66A18();
          sub_56B04(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v34);
        return 0;
      }

      return result;
    }

    valuePtr = 0;
    CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
    v12 = valuePtr;
    if ((valuePtr - 1) < 2)
    {
      *(a1 + 87236) = valuePtr;
      goto LABEL_33;
    }

    if (sub_56A8C(0x1Eu, 4))
    {
      v29 = sub_56AD0(0x1Eu);
      v30 = sub_66A18();
      v31 = sub_56B04(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid LatencyMode %p %lld %p %p %p %d (%d, %d)\n", v30, 30, v31, "AVE_Prop_MCTF_SetLatencyMode", 865, "AVE_MCTF_Mode_Invalid < eMCTFMode && eMCTFMode < AVE_MCTF_Mode_Max", a1, *(a1 + 24), a2, a3, a4, v12, 0, 3);
        v32 = sub_66A18();
        v41 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid LatencyMode %p %lld %p %p %p %d (%d, %d)", v32, 30, v41, "AVE_Prop_MCTF_SetLatencyMode", 865, "AVE_MCTF_Mode_Invalid < eMCTFMode && eMCTFMode < AVE_MCTF_Mode_Max", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid LatencyMode %p %lld %p %p %p %d (%d, %d)", v30, 30, v31, "AVE_Prop_MCTF_SetLatencyMode", 865, "AVE_MCTF_Mode_Invalid < eMCTFMode && eMCTFMode < AVE_MCTF_Mode_Max", a1);
      }
    }

    return 4294965292;
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v19 = sub_56AD0(0x1Eu);
      v20 = sub_66A18();
      v21 = sub_56B04(4);
      v22 = *(a1 + 24);
      v23 = CFGetTypeID(a4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v20, 30, v21, "AVE_Prop_MCTF_SetLatencyMode", 820, "CFStringGetTypeID() == CFGetTypeID(pValue) || CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v22, a2, a3, a4, v23);
        v20 = sub_66A18();
        v21 = sub_56B04(4);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v20, 30, v21, "AVE_Prop_MCTF_SetLatencyMode", 820, "CFStringGetTypeID() == CFGetTypeID(pValue) || CFNumberGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }
}

uint64_t sub_1900C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, const __CFString **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10504);
    valuePtr = v10;
    if (*(a1 + 87240))
    {
      v11 = 1;
    }

    else
    {
      v11 = v10 == 0;
    }

    if (v11)
    {
      if (v10 == 1)
      {
        v16 = @"Low";
      }

      else if (v10 == 2)
      {
        v16 = @"Medium";
      }

      else
      {
        v16 = CFStringCreateWithCString(0, &unk_7EA33, 0);
      }
    }

    else
    {
      v16 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
      if (!v16)
      {
        if (sub_56A8C(0x1Eu, 4))
        {
          v17 = sub_56AD0(0x1Eu);
          v18 = sub_66A18();
          v19 = sub_56B04(4);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v18, 30, v19, "AVE_Prop_MCTF_GetLatencyMode", 918, "pNum != __null", a1, *(a1 + 24), a2, allocator, a4, a5, valuePtr);
            v20 = sub_66A18();
            v26 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v20, 30, v26, "AVE_Prop_MCTF_GetLatencyMode", 918, "pNum != __null", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v18, 30, v19, "AVE_Prop_MCTF_GetLatencyMode", 918, "pNum != __null", a1);
          }
        }

        return 4294966293;
      }
    }

    *a5 = v16;
    result = sub_56A8C(0x1Eu, 7);
    if (result)
    {
      v22 = sub_56AD0(0x1Eu);
      v23 = sub_66A18();
      v24 = sub_56B04(7);
      if (v22)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v23, 30, v24, a1, *(a1 + 24), *a2, valuePtr, a5);
        v23 = sub_66A18();
        sub_56B04(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v23, 30);
      return 0;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v12 = sub_56AD0(0x1Eu);
      v13 = sub_66A18();
      v14 = sub_56B04(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v13, 30, v14, "AVE_Prop_MCTF_GetLatencyMode", 905, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v15 = sub_66A18();
        v25 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v15, 30, v25, "AVE_Prop_MCTF_GetLatencyMode", 905);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v13, 30, v14, "AVE_Prop_MCTF_GetLatencyMode", 905);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_1938C(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      *(a1 + 87368) = Value;
      *(a1 + 640) = *(a1 + 640) & 0xFFFFFDFF | ((Value != 0) << 9);
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v11 = sub_56AD0(0x1Eu);
        v12 = sub_66A18();
        v13 = sub_56B04(7);
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 24), *a2, Value);
          v12 = sub_66A18();
          sub_56B04(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v18 = sub_56AD0(0x1Eu);
        v19 = sub_66A18();
        v20 = sub_56B04(4);
        v21 = *(a1 + 24);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_MCTF_SetOutputCopy", 978, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_66A18();
          v20 = sub_56B04(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_MCTF_SetOutputCopy", 978, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v14 = sub_56AD0(0x1Eu);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_MCTF_SetOutputCopy", 968, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_66A18();
        v23 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_MCTF_SetOutputCopy");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_MCTF_SetOutputCopy");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_196D8(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 640) & 0x200;
    v11 = &kCFBooleanFalse;
    if (v10)
    {
      v11 = &kCFBooleanTrue;
    }

    *a5 = *v11;
    result = sub_56A8C(0x1Eu, 7);
    if (result)
    {
      v13 = sub_56AD0(0x1Eu);
      v14 = sub_66A18();
      v15 = sub_56B04(7);
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 24), *a2, v10);
        v14 = sub_66A18();
        sub_56B04(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v16 = sub_56AD0(0x1Eu);
      v17 = sub_66A18();
      v18 = sub_56B04(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_MCTF_GetOutputCopy", 1017, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = sub_66A18();
        v20 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_MCTF_GetOutputCopy", 1017);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_MCTF_GetOutputCopy", 1017);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_198F8(uint64_t a1, const void *a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v11 = sub_56AD0(0x1Eu);
      v12 = sub_66A18();
      v13 = sub_56B04(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_MCTF_SetPerfFeatureOff", 1055, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = sub_66A18();
        v23 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v23, "AVE_Prop_MCTF_SetPerfFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_MCTF_SetPerfFeatureOff");
      }
    }

    return 4294966295;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a4))
  {
    CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
    v9 = valuePtr;
    if (valuePtr)
    {
      result = 0;
      *(a1 + 87372) = valuePtr;
      *(a1 + 640) &= ~v9;
      return result;
    }

    if (sub_56A8C(0x1Eu, 4))
    {
      v20 = sub_56AD0(0x1Eu);
      v21 = sub_66A18();
      v22 = sub_56B04(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid AVE_PROPERTY_KEY_PERF_FEATURE_OFF 0x%x\n", v21, 30, v22, "AVE_Prop_MCTF_SetPerfFeatureOff", 1072, "iFeature > 0", valuePtr);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid AVE_PROPERTY_KEY_PERF_FEATURE_OFF 0x%x", v21, 30, v22, "AVE_Prop_MCTF_SetPerfFeatureOff", 1072, "iFeature > 0", valuePtr);
    }

    return 4294966295;
  }

  if (sub_56A8C(0x1Eu, 4))
  {
    v15 = sub_56AD0(0x1Eu);
    v16 = sub_66A18();
    v17 = sub_56B04(4);
    v18 = *(a1 + 24);
    v19 = CFGetTypeID(a4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_MCTF_SetPerfFeatureOff", 1065, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      CFGetTypeID(a4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_MCTF_SetPerfFeatureOff", 1065, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
  }

  return 4294965293;
}

uint64_t sub_19C6C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 87372);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v13 = sub_56AD0(0x1Eu);
        v14 = sub_66A18();
        v15 = sub_56B04(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", v14, 30, v15, a1, *(a1 + 24), *a2, valuePtr, v11);
          v14 = sub_66A18();
          sub_56B04(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v20 = sub_56AD0(0x1Eu);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p 0x%x\n", v21, 30, v22, "AVE_Prop_MCTF_GetPerfFeatureOff", 1119, "pNum != __null", a1, allocator, a4, a5, valuePtr);
          v23 = sub_66A18();
          v25 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p 0x%x", v23, 30, v25, "AVE_Prop_MCTF_GetPerfFeatureOff", 1119);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p 0x%x", v21, 30, v22, "AVE_Prop_MCTF_GetPerfFeatureOff", 1119);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v16 = sub_56AD0(0x1Eu);
      v17 = sub_66A18();
      v18 = sub_56B04(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_MCTF_GetPerfFeatureOff", 1108, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_66A18();
        v24 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_MCTF_GetPerfFeatureOff", 1108);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_MCTF_GetPerfFeatureOff", 1108);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_19F90(uint64_t a1, const void *a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v11 = sub_56AD0(0x1Eu);
      v12 = sub_66A18();
      v13 = sub_56B04(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_MCTF_SetPerfFeatureOn", 1151, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = sub_66A18();
        v23 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v23, "AVE_Prop_MCTF_SetPerfFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_MCTF_SetPerfFeatureOn");
      }
    }

    return 4294966295;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a4))
  {
    CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
    v9 = valuePtr;
    if (valuePtr)
    {
      result = 0;
      *(a1 + 87376) = valuePtr;
      *(a1 + 640) |= v9;
      return result;
    }

    if (sub_56A8C(0x1Eu, 4))
    {
      v20 = sub_56AD0(0x1Eu);
      v21 = sub_66A18();
      v22 = sub_56B04(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid AVE_PROPERTY_KEY_PERF_FEATURE_ON 0x%x\n", v21, 30, v22, "AVE_Prop_MCTF_SetPerfFeatureOn", 1168, "iFeature > 0", valuePtr);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid AVE_PROPERTY_KEY_PERF_FEATURE_ON 0x%x", v21, 30, v22, "AVE_Prop_MCTF_SetPerfFeatureOn", 1168, "iFeature > 0", valuePtr);
    }

    return 4294966295;
  }

  if (sub_56A8C(0x1Eu, 4))
  {
    v15 = sub_56AD0(0x1Eu);
    v16 = sub_66A18();
    v17 = sub_56B04(4);
    v18 = *(a1 + 24);
    v19 = CFGetTypeID(a4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_MCTF_SetPerfFeatureOn", 1161, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      CFGetTypeID(a4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_MCTF_SetPerfFeatureOn", 1161, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
  }

  return 4294965293;
}

uint64_t sub_1A304(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 87376);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v13 = sub_56AD0(0x1Eu);
        v14 = sub_66A18();
        v15 = sub_56B04(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", v14, 30, v15, a1, *(a1 + 24), *a2, valuePtr, v11);
          v14 = sub_66A18();
          sub_56B04(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v20 = sub_56AD0(0x1Eu);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p 0x%x\n", v21, 30, v22, "AVE_Prop_MCTF_GetPerfFeatureOn", 1215, "pNum != __null", a1, allocator, a4, a5, valuePtr);
          v23 = sub_66A18();
          v25 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p 0x%x", v23, 30, v25, "AVE_Prop_MCTF_GetPerfFeatureOn", 1215);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p 0x%x", v21, 30, v22, "AVE_Prop_MCTF_GetPerfFeatureOn", 1215);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v16 = sub_56AD0(0x1Eu);
      v17 = sub_66A18();
      v18 = sub_56B04(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_MCTF_GetPerfFeatureOn", 1204, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_66A18();
        v24 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_MCTF_GetPerfFeatureOn", 1204);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_MCTF_GetPerfFeatureOn", 1204);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_1A628(void *a1, const void *a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v11 = sub_56AD0(0x1Eu);
      v12 = sub_66A18();
      v13 = sub_56B04(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_MCTF_SetDebugFeature", 1247, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = sub_66A18();
        v23 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v23, "AVE_Prop_MCTF_SetDebugFeature");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_MCTF_SetDebugFeature");
      }
    }

    return 4294966295;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a4))
  {
    CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
    v9 = valuePtr;
    if (valuePtr)
    {
      result = 0;
      a1[10923] = valuePtr;
      a1[82] = v9;
      return result;
    }

    if (sub_56A8C(0x1Eu, 4))
    {
      v20 = sub_56AD0(0x1Eu);
      v21 = sub_66A18();
      v22 = sub_56B04(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid AVE_PROPERTY_KEY_DEBUG_FEATURE 0x%llx\n", v21, 30, v22, "AVE_Prop_MCTF_SetDebugFeature", 1264, "iDebugFeature > 0", valuePtr);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid AVE_PROPERTY_KEY_DEBUG_FEATURE 0x%llx", v21, 30, v22, "AVE_Prop_MCTF_SetDebugFeature", 1264, "iDebugFeature > 0", valuePtr);
    }

    return 4294966295;
  }

  if (sub_56A8C(0x1Eu, 4))
  {
    v15 = sub_56AD0(0x1Eu);
    v16 = sub_66A18();
    v17 = sub_56B04(4);
    v18 = a1[3];
    v19 = CFGetTypeID(a4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_MCTF_SetDebugFeature", 1257, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      CFGetTypeID(a4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_MCTF_SetDebugFeature", 1257, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
  }

  return 4294965293;
}

uint64_t sub_1A994(void *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[10923];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v13 = sub_56AD0(0x1Eu);
        v14 = sub_66A18();
        v15 = sub_56B04(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %lld %p\n", v14, 30, v15, a1, a1[3], *a2, valuePtr, v11);
          v14 = sub_66A18();
          sub_56B04(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %lld %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v20 = sub_56AD0(0x1Eu);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p %lld\n", v21, 30, v22, "AVE_Prop_MCTF_GetDebugFeature", 1309, "pNum != __null", a1, allocator, a4, a5, valuePtr);
          v23 = sub_66A18();
          v25 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p %lld", v23, 30, v25, "AVE_Prop_MCTF_GetDebugFeature", 1309);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p %lld", v21, 30, v22, "AVE_Prop_MCTF_GetDebugFeature", 1309);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v16 = sub_56AD0(0x1Eu);
      v17 = sub_66A18();
      v18 = sub_56B04(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_MCTF_GetDebugFeature", 1298, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_66A18();
        v24 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_MCTF_GetDebugFeature", 1298);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_MCTF_GetDebugFeature", 1298);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_1ACB8(uint64_t a1, const char **a2, const void *a3, const __CFString *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = sub_4765C(a4, (a1 + 87392), 0x200u);
      sub_63330((a1 + 87392), 512, "%s", v9);
      strcpy((a1 + 112), (a1 + 87392));
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v11 = sub_56AD0(0x1Eu);
        v12 = sub_66A18();
        v13 = sub_56B04(7);
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %s\n", v12, 30, v13, a1, *(a1 + 24), *a2, (a1 + 87392));
          v12 = sub_66A18();
          sub_56B04(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %s", v12);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v18 = sub_56AD0(0x1Eu);
        v19 = sub_66A18();
        v20 = sub_56B04(4);
        v21 = *(a1 + 24);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_MCTF_SetSessionName", 1351, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_66A18();
          v20 = sub_56B04(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_MCTF_SetSessionName", 1351, "CFStringGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v14 = sub_56AD0(0x1Eu);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_MCTF_SetSessionName", 1341, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_66A18();
        v23 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_MCTF_SetSessionName");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_MCTF_SetSessionName");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_1B014(uint64_t a1, const char **a2, CFAllocatorRef alloc, const void *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = CFStringCreateWithCString(alloc, (a1 + 87392), 0);
    if (v10)
    {
      *a5 = v10;
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v12 = sub_56AD0(0x1Eu);
        v13 = sub_66A18();
        v14 = sub_56B04(7);
        if (v12)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %s\n", v13, 30, v14, a1, *(a1 + 24), *a2, (a1 + 87392));
          v13 = sub_66A18();
          sub_56B04(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %s", v13);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v19 = sub_56AD0(0x1Eu);
        v20 = sub_66A18();
        v21 = sub_56B04(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s\n", v20, 30, v21, "AVE_Prop_MCTF_GetSessionName", 1401, "pStr != __null", a1, alloc, a4, a5, (a1 + 87392));
          v22 = sub_66A18();
          v24 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s", v22, 30, v24, "AVE_Prop_MCTF_GetSessionName", 1401);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s", v20, 30, v21, "AVE_Prop_MCTF_GetSessionName", 1401);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v15 = sub_56AD0(0x1Eu);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_MCTF_GetSessionName", 1392, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a4, a5);
        v18 = sub_66A18();
        v23 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v23, "AVE_Prop_MCTF_GetSessionName");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v17, "AVE_Prop_MCTF_GetSessionName");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_1B310(uint64_t a1, const void *a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt8Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr - 1 >= 2)
      {
        if (sub_56A8C(0x1Eu, 4))
        {
          v20 = sub_56AD0(0x1Eu);
          v21 = sub_66A18();
          v22 = sub_56B04(4);
          if (v20)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid FilterGroupSize  %p %lld %p %p %p %d (%d, %d]\n", v21, 30, v22, "AVE_Prop_MCTF_SetFilterGroupSize", 1453, "0 < iFilterGroupSize && iFilterGroupSize <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1, *(a1 + 24), a2, a3, a4, valuePtr, 0, 2);
            v23 = sub_66A18();
            v25 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | invalid FilterGroupSize  %p %lld %p %p %p %d (%d, %d]", v23, 30, v25, "AVE_Prop_MCTF_SetFilterGroupSize", 1453, "0 < iFilterGroupSize && iFilterGroupSize <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | invalid FilterGroupSize  %p %lld %p %p %p %d (%d, %d]", v21, 30, v22, "AVE_Prop_MCTF_SetFilterGroupSize", 1453, "0 < iFilterGroupSize && iFilterGroupSize <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        result = 0;
        *(a1 + 87904) = valuePtr;
        *(a1 + 10508) = v9;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v15 = sub_56AD0(0x1Eu);
        v16 = sub_66A18();
        v17 = sub_56B04(4);
        v18 = *(a1 + 24);
        v19 = CFGetTypeID(a4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_MCTF_SetFilterGroupSize", 1443, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
          v16 = sub_66A18();
          v17 = sub_56B04(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_MCTF_SetFilterGroupSize", 1443, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v11 = sub_56AD0(0x1Eu);
      v12 = sub_66A18();
      v13 = sub_56B04(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_MCTF_SetFilterGroupSize", 1433, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = sub_66A18();
        v24 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v24, "AVE_Prop_MCTF_SetFilterGroupSize");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_MCTF_SetFilterGroupSize");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_1B6C8(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 87904);
    v10 = CFNumberCreate(allocator, kCFNumberSInt8Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_56A8C(0x1Eu, 7);
      if (result)
      {
        v13 = sub_56AD0(0x1Eu);
        v14 = sub_66A18();
        v15 = sub_56B04(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 24), *a2, valuePtr, v11);
          v14 = sub_66A18();
          sub_56B04(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_56A8C(0x1Eu, 4))
      {
        v20 = sub_56AD0(0x1Eu);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_MCTF_GetFilterGroupSize", 1498, "pNum != __null", a1, allocator, a4, a5, valuePtr);
          v23 = sub_66A18();
          v25 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p %d", v23, 30, v25, "AVE_Prop_MCTF_GetFilterGroupSize", 1498);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %p %p %p %d", v21, 30, v22, "AVE_Prop_MCTF_GetFilterGroupSize", 1498);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v16 = sub_56AD0(0x1Eu);
      v17 = sub_66A18();
      v18 = sub_56B04(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_MCTF_GetFilterGroupSize", 1487, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_66A18();
        v24 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_MCTF_GetFilterGroupSize", 1487);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_MCTF_GetFilterGroupSize", 1487);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_1B9EC(uint64_t a1, uint64_t a2, uint64_t a3, __CFDictionary *a4)
{
  v6 = a2;
  v7 = a1;
  if ((a1 - 1) > 0x21 || a4 == 0)
  {
    if (sub_56A8C(0x1Eu, 4))
    {
      v9 = sub_56AD0(0x1Eu);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d 0x%x %lld %p\n", v10, 30, v11, "AVE_Prop_MCTF_MakeDict", 1556, "AVE_DevID_None < devID && devID < AVE_DevID_Max && pDict != __null", v7, v6, a3, a4);
        v12 = sub_66A18();
        v20 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d 0x%x %lld %p", v12, 30, v20);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d 0x%x %lld %p", v10, 30, v11);
      }
    }

    return 4294966295;
  }

  else
  {
    v13 = sub_14048(&off_BCB98, 15, a1, a2, a3, a4);
    v14 = v13;
    if (v13 && sub_56A8C(0x1Eu, 4))
    {
      v15 = sub_56AD0(0x1Eu);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to make property dictionary %d 0x%x %lld %p %d\n", v16, 30, v17, "AVE_Prop_MCTF_MakeDict", 1563, "ret == 0", v7, v6, a3, a4, v14);
        v18 = sub_66A18();
        v21 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %d 0x%x %lld %p %d", v18, 30, v21, "AVE_Prop_MCTF_MakeDict");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %d 0x%x %lld %p %d", v16, 30, v17, "AVE_Prop_MCTF_MakeDict");
      }
    }
  }

  return v14;
}

uint64_t sub_1BC4C(uint64_t a1, const __CFString *a2, const void *a3)
{
  v6 = sub_146B0(&off_BCB98, 15, *(a1 + 32), 0, a1, *(a1 + 24), a2, a3);
  if (v6 && sub_56A8C(0x1Eu, 4))
  {
    v7 = sub_56AD0(0x1Eu);
    v8 = sub_66A18();
    v9 = sub_56B04(4);
    if (v7)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to set property %p %lld 0x%x %d %p %p %d\n", v8, 30, v9, "AVE_Prop_MCTF_SetProperty", 1588, "ret == 0", a1, *(a1 + 24), 0, *(a1 + 32), a2, a3, v6);
      v10 = sub_66A18();
      v12 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld 0x%x %d %p %p %d", v10, 30, v12, "AVE_Prop_MCTF_SetProperty", 1588, "ret == 0");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld 0x%x %d %p %p %d", v8, 30, v9, "AVE_Prop_MCTF_SetProperty", 1588, "ret == 0");
    }
  }

  return v6;
}

uint64_t sub_1BDCC(uint64_t a1, const void *a2, const __CFString *a3, const void *a4)
{
  v8 = sub_14C24(&off_BCB98, 15, *(a1 + 32), 0, a1, *(a1 + 24), a2, a3, a4);
  if (v8 && sub_56A8C(0x1Eu, 4))
  {
    v9 = sub_56AD0(0x1Eu);
    v10 = sub_66A18();
    v11 = sub_56B04(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to get property %p %lld 0x%x %d %p %p %p %d\n", v10, 30, v11, "AVE_Prop_MCTF_GetProperty", 1614, "ret == 0", a1, *(a1 + 24), 0, *(a1 + 32), a2, a3, a4, v8);
      v12 = sub_66A18();
      v14 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld 0x%x %d %p %p %p %d", v12, 30, v14, "AVE_Prop_MCTF_GetProperty", 1614, "ret == 0", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld 0x%x %d %p %p %p %d", v10, 30, v11, "AVE_Prop_MCTF_GetProperty", 1614, "ret == 0", a1);
    }
  }

  return v8;
}

uint64_t *sub_1BF5C(uint64_t *result, _DWORD *a2, int a3, int a4)
{
  v4 = (*result + a3 - 1) & -a3;
  *a2 = (*result + *a2 - v4) & -a4;
  *result = v4;
  return result;
}

_BYTE *sub_1BF94(_BYTE *result, char *a2, int a3)
{
  if (a3 >= 1)
  {
    do
    {
      v3 = *a2++;
      *result++ = v3;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t sub_1BFB8(const char *a1, int a2, char *a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a4;
  v7 = sub_63330(a3, a4, " in %s", a1);
  v8 = v7;
  if (a2)
  {
    return sub_63330(&a3[v7], v4 - v7, ":%d", a2) + v7;
  }

  return v8;
}

void *sub_1C03C(void *result, uint64_t a2)
{
  if (!result)
  {
    sub_76484();
  }

  *result = result;
  result[1] = result;
  result[2] = 0;
  return result;
}

uint64_t sub_1C05C(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    sub_764B0();
  }

  *result = result;
  *(result + 8) = result;
  *(result + 24) = 0;
  *(result + 16) = result;
  return result;
}

BOOL sub_1C080(void *a1)
{
  if (!a1)
  {
    sub_76534();
  }

  if (!*a1)
  {
    sub_76508();
  }

  v1 = a1[1];
  if (!v1)
  {
    sub_764DC();
  }

  return *a1 == a1 || v1 == a1;
}

BOOL sub_1C0C0(uint64_t a1)
{
  if (!a1)
  {
    sub_765B8();
  }

  if (!*a1)
  {
    sub_7658C();
  }

  if (!*(a1 + 8))
  {
    sub_76560();
  }

  result = sub_1C080(a1);
  if (!result)
  {
    v3 = *(a1 + 8);
    v4 = v3[1];
    *(a1 + 8) = v4;
    *v4 = a1;
    *v3 = v3;
    v3[1] = v3;
    v3[2] = 0;
    --*(a1 + 24);
  }

  return result;
}

uint64_t sub_1C130(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_765E4();
  }

  return *a1;
}

uint64_t sub_1C14C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_76610();
  }

  return *(a1 + 8);
}

uint64_t *sub_1C168(uint64_t *result)
{
  if (!result)
  {
    sub_76694();
  }

  v1 = *result;
  if (!*result)
  {
    sub_76668();
  }

  v2 = result[1];
  if (!v2)
  {
    sub_7663C();
  }

  *(v1 + 8) = v2;
  v3 = result[2];
  *result[1] = v1;
  *result = result;
  result[1] = result;
  if (v3)
  {
    --*(v3 + 24);
    result[2] = 0;
  }

  return result;
}

uint64_t sub_1C1C0(void *a1)
{
  if (!a1)
  {
    sub_766C0();
  }

  if (sub_1C080(a1))
  {
    return 0;
  }

  else
  {
    return a1[1];
  }
}

uint64_t sub_1C1FC(void *a1)
{
  if (!a1)
  {
    sub_766EC();
  }

  if (sub_1C080(a1))
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_1C238(uint64_t result, void *a2)
{
  if (!result)
  {
    sub_7679C();
  }

  if (!a2)
  {
    sub_76770();
  }

  if (!*result)
  {
    sub_76744();
  }

  if (!*(result + 8))
  {
    sub_76718();
  }

  *a2 = *result;
  a2[1] = result;
  *(*result + 8) = a2;
  *result = a2;
  a2[2] = result;
  ++*(result + 24);
  return result;
}

BOOL sub_1C294(void **a1)
{
  if (!a1)
  {
    sub_76820();
  }

  if (!*a1)
  {
    sub_767F4();
  }

  if (!a1[1])
  {
    sub_767C8();
  }

  result = sub_1C080(a1);
  if (!result)
  {
    v3 = *a1;
    v4 = **a1;
    *a1 = v4;
    v4[1] = a1;
    *v3 = v3;
    v3[1] = v3;
    v3[2] = 0;
    --*(a1 + 6);
  }

  return result;
}

uint64_t sub_1C304(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_7684C();
  }

  return *(a1 + 8);
}

uint64_t sub_1C320(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    sub_76878();
  }

  return result;
}

uint64_t sub_1C338(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_768A4();
  }

  return *a1;
}

uint64_t sub_1C354(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    sub_768D0();
  }

  return result;
}

uint64_t sub_1C36C(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5)
{
  *(a1 + 160) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0u;
  v10 = a1 + 128;
  *(a1 + 96) = 0u;
  v11 = a1 + 96;
  bzero(a2, 24 * a4);
  sub_1C03C(a1, v12);
  *(a1 + 64) = a3;
  *(a1 + 72) = a5 * a4;
  *(a1 + 76) = a4;
  *(a1 + 80) = a5;
  *(a1 + 88) = a2;
  sub_1C05C(v11, v13);
  sub_1C05C(v10, v14);
  if (a4 >= 1)
  {
    v15 = 0;
    do
    {
      sub_1C238(v11, (*(a1 + 88) + v15));
      v15 += 24;
    }

    while (24 * a4 != v15);
  }

  *(a1 + 164) = a4;
  return 0;
}

uint64_t sub_1C450(int a1, int a2, unsigned int a3, uint64_t *a4)
{
  result = 4294966295;
  if (a1 >= 1 && a2 >= 1)
  {
    v6 = a3;
    if (a3 <= 0x40)
    {
      if (a3)
      {
        if (!a4 || ((a3 + 127) & a3) != 0)
        {
          return result;
        }
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        v6 = 64;
      }

      *a4 = 0;
      v8 = (v6 - 1 + a2) & -v6;
      v9 = (v6 - 1 + v8) & -v6;
      if (0x7FFFFFFF / v9 <= a1)
      {
        return 4294966281;
      }

      else
      {
        v10 = malloc_type_malloc(0xA8uLL, 0x1030040A9B39151uLL);
        if (v10)
        {
          v11 = v10;
          v12 = malloc_type_malloc(24 * a1, 0x20040960023A9uLL);
          if (v12)
          {
            v13 = v12;
            v14 = v6 - 1 + v9 * a1;
            v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
            if (v15)
            {
              v16 = v15;
              sub_1C36C(v11, v13, (v15 + v6 - 1) & -v6, a1, v8);
              result = 0;
              *(v11 + 24) = v11;
              *(v11 + 32) = v13;
              *(v11 + 48) = 168;
              *(v11 + 52) = 24 * a1;
              *(v11 + 40) = v16;
              *(v11 + 56) = v14;
              *a4 = v11;
              return result;
            }

            free(v11);
            v17 = v13;
          }

          else
          {
            v17 = v11;
          }

          free(v17);
        }

        return 4294966293;
      }
    }
  }

  return result;
}

uint64_t sub_1C5D8(uint64_t a1, int a2, int a3, int a4, unsigned int a5, uint64_t *a6)
{
  v16 = a1;
  v15 = a2;
  result = 4294966295;
  if (a2 >= 1 && a3 >= 1 && a4 >= 1 && a5 <= 0x40)
  {
    if (a5)
    {
      if (!a6 || ((a5 + 127) & a5) != 0)
      {
        return result;
      }
    }

    else
    {
      if (!a6)
      {
        return result;
      }

      a5 = 64;
    }

    *a6 = 0;
    v9 = (a4 + a5 - 1) & -a5;
    sub_1BF5C(&v16, &v15, a5, a5);
    if (v15 / v9 >= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = v15 / v9;
    }

    v11 = malloc_type_malloc(0xA8uLL, 0x1030040A9B39151uLL);
    if (v11)
    {
      v12 = v11;
      v13 = malloc_type_malloc(24 * v10, 0x20040960023A9uLL);
      if (v13)
      {
        v14 = v13;
        sub_1C36C(v12, v13, v16, v10, v9);
        result = 0;
        *(v12 + 24) = v12;
        *(v12 + 32) = v14;
        *(v12 + 48) = 168;
        *(v12 + 52) = 24 * v10;
        *a6 = v12;
        return result;
      }

      free(v12);
    }

    return 4294966293;
  }

  return result;
}

uint64_t sub_1C71C(void *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (!sub_1C080(a1 + 16))
  {
    return 4294966280;
  }

  v2 = a1[5];
  if (v2)
  {
    free(v2);
    a1[5] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    free(v3);
    a1[4] = 0;
  }

  result = a1[3];
  if (result)
  {
    free(result);
    return 0;
  }

  return result;
}

BOOL sub_1C790(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2 <= a2 && v2 + *(a1 + 72) > a2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1C7C0(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 4294966295;
  if (a1 && a2)
  {
    *a2 = 0;
    v7 = sub_1C1C0((a1 + 96));
    if (v7)
    {
      v8 = v7;
      sub_1C0C0(a1 + 96);
      sub_1C238(a1 + 128, v8);
      v9 = *(a1 + 80);
      *a2 = *(a1 + 64) + (-1431655765 * ((v8 - *(a1 + 88)) >> 3) * v9);
      if (a3)
      {
        *a3 = v9;
      }

      result = 0;
      --*(a1 + 164);
    }

    else
    {
      return 4294966289;
    }
  }

  return result;
}

uint64_t sub_1C870(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 4294966295;
  }

  v3 = *(a1 + 64);
  if (a2 < v3 || v3 + *(a1 + 72) <= a2)
  {
    return 4294966295;
  }

  v4 = (*(a1 + 88) + 24 * ((a2 - v3) / *(a1 + 80)));
  sub_1C168(v4);
  sub_1C238(a1 + 96, v4);
  result = 0;
  ++*(a1 + 164);
  return result;
}

BOOL sub_1C910(_BOOL8 result)
{
  if (result)
  {
    return !sub_1C080((result + 96));
  }

  return result;
}

uint64_t sub_1C93C(uint64_t a1, int a2, void *a3)
{
  if (!a1)
  {
    return 4294966295;
  }

  result = 4294966295;
  if (a3)
  {
    if (*(a1 + 76) > a2)
    {
      result = 0;
      *a3 = *(a1 + 64) + *(a1 + 80) * a2;
    }
  }

  return result;
}

uint64_t sub_1C978(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  result = 4294966295;
  if (a1)
  {
    if (a3)
    {
      v5 = *(a1 + 64);
      if (a2 >= v5 && v5 + *(a1 + 72) > a2)
      {
        result = 0;
        *a3 = (a2 - v5) / *(a1 + 80);
      }
    }
  }

  return result;
}

uint64_t sub_1C9B8(unsigned int *a1, int a2, unsigned int a3, unsigned int *a4, _DWORD *a5)
{
  if (sub_56A8C(0x10u, 6))
  {
    v10 = sub_56AD0(0x10u);
    v11 = sub_66A18();
    v12 = sub_56B04(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p %p\n", v11, 16, v12, "AVE_MCTF_AdjustStrength", a1, a2, a3, a4, a5);
      v13 = sub_66A18();
      v54 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p %p", v13, 16, v54);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p %p", v11, 16, v12);
    }
  }

  if (a3 - 1 <= 2 && (a2 - 1) <= 0x1F && a1 && a4 && a5)
  {
    if ((a2 & 0x38) == 0x18)
    {
      v14 = qword_BCF58[a2];
      v15 = sub_4C960();
      if (v15[274] <= 0)
      {
        v16 = *(v14 + 8 * a3);
      }

      else
      {
        v16 = v15 + 274;
        *(v14 + 8 * a3) = v16;
      }

      v25 = sub_282B0(v16, a1[16]);
      if (v25)
      {
        v26 = v25;
        v58 = a5;
        sub_286EC(v25, 16, 6, "MCTF_SMap");
        v27 = qword_BD060[v26[1]](a1);
        v28 = *a4;
        if (sub_56A8C(0x10u, 6))
        {
          v29 = sub_56AD0(0x10u);
          v30 = sub_66A18();
          v31 = sub_56B04(6);
          if (v29)
          {
            printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", v30, 16, v31, "AVE_MCTF_FindRangeIdx", v26, v28, v27, a4);
            v30 = sub_66A18();
            sub_56B04(6);
          }

          syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", v30, 16);
        }

        if (v28 >= 1)
        {
          v35 = v28 + 1;
          do
          {
            v36 = sub_282E0(v26, v35 - 2);
            if (!v36)
            {
              break;
            }

            if (*(v36 + 4) < v27)
            {
              break;
            }

            *a4 = v35 - 2;
            --v35;
          }

          while (v35 > 1);
        }

        if (*a4 == v28)
        {
          for (i = v28 + 1; i < v26[2]; ++i)
          {
            v38 = sub_282E0(v26, i);
            if (!v38 || *v38 > v27)
            {
              break;
            }

            *a4 = i;
          }
        }

        if (sub_56A8C(0x10u, 6))
        {
          v39 = sub_56AD0(0x10u);
          v40 = sub_66A18();
          v41 = sub_56B04(6);
          if (v39)
          {
            printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v40, 16, v41, "AVE_MCTF_FindRangeIdx", v26, v28, v27, a4, 0);
            v42 = sub_66A18();
            v56 = sub_56B04(6);
            syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v42, 16, v56);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v40, 16, v41);
          }
        }

        a5 = v58;
        if (sub_28300(v26, *a4, v58))
        {
          if (sub_56A8C(0x10u, 4))
          {
            v43 = sub_56AD0(0x10u);
            v44 = sub_66A18();
            v45 = sub_56B04(4);
            if (v43)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get strength level for rangeIdx %p %d\n", v44, 16, v45, "AVE_MCTF_AdjustStrength", 799, "ret == 0", v26, *a4);
              v44 = sub_66A18();
              sub_56B04(4);
              a5 = v58;
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get strength level for rangeIdx %p %d", v44, 16);
          }

          v24 = 4294966296;
        }

        else
        {
          if (sub_56A8C(0x10u, 8))
          {
            v46 = sub_56AD0(0x10u);
            v47 = sub_66A18();
            v48 = sub_56B04(8);
            if (v46)
            {
              printf("%lld %d AVE %s: %s:%d %p sID 0x%x noise level %d rIdx %d s %d\n", v47, 16, v48, "AVE_MCTF_AdjustStrength", 802, a1, a1[16], v27, *a4, *v58);
              v47 = sub_66A18();
              sub_56B04(8);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %p sID 0x%x noise level %d rIdx %d s %d", v47, 16);
          }

          v24 = 0;
        }

        goto LABEL_62;
      }

      if (sub_56A8C(0x10u, 5))
      {
        v32 = sub_56AD0(0x10u);
        v33 = sub_66A18();
        v34 = sub_56B04(5);
        if (v32)
        {
          printf("%lld %d AVE %s: %s:%d %s | SensorID not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d\n", v33, 16, v34, "AVE_MCTF_AdjustStrength", 783, "pMap != NULL", a2, a1[16], a3);
          v33 = sub_66A18();
          sub_56B04(5);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | SensorID not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d", v33, 16);
      }
    }

    else if (sub_56A8C(0x10u, 5))
    {
      v21 = sub_56AD0(0x10u);
      v22 = sub_66A18();
      v23 = sub_56B04(5);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | Device not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d\n", v22, 16, v23, "AVE_MCTF_AdjustStrength", 771, "paMCTF_StrengthMapSet != NULL", a2, a1[16], a3);
        v22 = sub_66A18();
        sub_56B04(5);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Device not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d", v22, 16);
    }

    v24 = 4294966294;
    goto LABEL_62;
  }

  if (sub_56A8C(0x10u, 4))
  {
    v17 = sub_56AD0(0x10u);
    v18 = sub_66A18();
    v19 = sub_56B04(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong params, %p %d %d %p %p\n", v18, 16, v19, "AVE_MCTF_AdjustStrength", 764, "(psData != __null) && (piRangeIdx != __null) && (piStrength != __null) && eDevType > AVE_DevType_None && eDevType < AVE_DevType_Max && eMCTFWorkMode > AVE_MCTF_WorkMode_None && eMCTFWorkMode < AVE_MCTF_WorkMode_Max", a1, a2, a3, a4, a5);
      v20 = sub_66A18();
      v55 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong params, %p %d %d %p %p", v20, 16, v55, "AVE_MCTF_AdjustStrength");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong params, %p %d %d %p %p", v18, 16, v19, "AVE_MCTF_AdjustStrength");
    }
  }

  v24 = 4294966295;
LABEL_62:
  if (sub_56A8C(0x10u, 6))
  {
    v49 = sub_56AD0(0x10u);
    v50 = sub_66A18();
    v51 = sub_56B04(6);
    if (v49)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %p %d\n", v50, 16, v51, "AVE_MCTF_AdjustStrength", a1, a2, a3, a4, a5, v24);
      v52 = sub_66A18();
      v57 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %p %d", v52, 16, v57, "AVE_MCTF_AdjustStrength");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %p %d", v50, 16, v51, "AVE_MCTF_AdjustStrength");
    }
  }

  return v24;
}

uint64_t sub_1D314(uint64_t a1)
{
  v1 = vdupq_lane_s64(0x4170000000000000, 0);
  v1.f64[0] = *(a1 + 24);
  v2 = vmulq_f64(*(a1 + 40), v1);
  return (*(a1 + 32) * v2.f64[0] / v2.f64[1]);
}

uint64_t sub_1D348(_DWORD *a1)
{
  v2 = vdupq_lane_s64(0x4170000000000000, 0);
  v2.f64[0] = *(a1 + 3);
  v3 = vmulq_f64(*(a1 + 10), v2);
  v4 = (*(a1 + 4) * v3.f64[0] / v3.f64[1]);
  v5 = (*a1 + 0.5);
  if (v5 >= 21)
  {
    v5 = 21;
  }

  if (*a1 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (v4 >= 15)
  {
    v7 = (36 - v6);
  }

  else
  {
    v7 = v4;
  }

  if (sub_56A8C(0x10u, 8))
  {
    v8 = sub_56AD0(0x10u);
    v9 = sub_66A18();
    v10 = sub_56B04(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %p sID 0x%x gain %d snr %d noise level %d\n", v9, 16, v10, "AVE_MCTF_CalculateNoiseLevel_TotalGainSNR", 607, a1, a1[16], v4, v6, v7);
      v9 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %p sID 0x%x gain %d snr %d noise level %d", v9, 16);
  }

  return v7;
}

uint64_t sub_1D4C0(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 > 0xB)
  {
    return 0;
  }

  else
  {
    return *(a1 + 96 * (a3 > 0) + 8 * a2 + 48);
  }
}

uint64_t sub_1D4EC(uint64_t a1, void *a2)
{
  if (sub_56A8C(0x3Du, 7))
  {
    v4 = sub_56AD0(0x3Du);
    v5 = sub_66A18();
    v6 = sub_56B04(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %lld %p\n", v5, 61, v6, "AVE_Dump_Create", a1, a2);
      v7 = sub_66A18();
      v20 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Enter %lld %p", v7, 61, v20, "AVE_Dump_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %lld %p", v5, 61, v6, "AVE_Dump_Create", a1, a2);
    }
  }

  if (a2)
  {
    v8 = malloc_type_malloc(0xF0uLL, 0x1020040FC94C6CFuLL);
    if (v8)
    {
      v9 = 0;
      *(v8 + 29) = 0;
      *(v8 + 216) = 0u;
      *(v8 + 200) = 0u;
      *(v8 + 184) = 0u;
      *(v8 + 168) = 0u;
      *(v8 + 152) = 0u;
      *(v8 + 136) = 0u;
      *(v8 + 120) = 0u;
      *(v8 + 104) = 0u;
      *(v8 + 88) = 0u;
      *(v8 + 72) = 0u;
      *(v8 + 56) = 0u;
      *(v8 + 40) = 0u;
      *(v8 + 24) = 0u;
      *(v8 + 8) = 0u;
      *v8 = a1;
      *a2 = v8;
    }

    else
    {
      if (sub_56A8C(0x3Du, 4))
      {
        v13 = sub_56AD0(0x3Du);
        v14 = sub_66A18();
        v15 = sub_56B04(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create dump %lld %p\n", v14, 61, v15, "AVE_Dump_Create", 89, "pDump != __null", a1, a2);
          v14 = sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dump %lld %p", v14, 61);
      }

      v9 = 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(0x3Du, 4))
    {
      v10 = sub_56AD0(0x3Du);
      v11 = sub_66A18();
      v12 = sub_56B04(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p\n", v11, 61, v12, "AVE_Dump_Create", 85, "ppDump != __null", a1, 0);
        v11 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p", v11, 61);
    }

    v9 = 4294966295;
  }

  if (sub_56A8C(0x3Du, 7))
  {
    v16 = sub_56AD0(0x3Du);
    v17 = sub_66A18();
    v18 = sub_56B04(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Exit %lld %p %d\n", v17, 61, v18, "AVE_Dump_Create", a1, a2, v9);
      v17 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %lld %p %d", v17);
  }

  return v9;
}

uint64_t sub_1D898(void *a1)
{
  if (sub_56A8C(0x3Du, 7))
  {
    v2 = sub_56AD0(0x3Du);
    v3 = sub_66A18();
    v4 = sub_56B04(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 61, v4, "AVE_Dump_Destroy", a1);
      v5 = sub_66A18();
      v11 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 61, v11, "AVE_Dump_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 61, v4, "AVE_Dump_Destroy", a1);
    }
  }

  if (a1)
  {
    free(a1);
  }

  if (sub_56A8C(0x3Du, 7))
  {
    v6 = sub_56AD0(0x3Du);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v7, 61, v8, "AVE_Dump_Destroy", 0, 0);
      v9 = sub_66A18();
      v12 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v9, 61, v12, "AVE_Dump_Destroy", 0, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v7, 61, v8, "AVE_Dump_Destroy", 0, 0);
    }
  }

  return 0;
}

uint64_t sub_1DA10(uint64_t a1, unsigned int a2, int a3, const char *a4, char *a5, uint64_t a6)
{
  v6 = a6;
  memset(v22, 0, sizeof(v22));
  v12 = sub_63330(v22, 128, "%lld-%s-%dx%d-%s-%d", *a1, *(&off_C4128 + *(a1 + 16)), *(a1 + 24), *(a1 + 28), off_C4108[*(a1 + 32)], *(a1 + 36));
  v13 = v12;
  if ((a3 & 0x80000000) == 0)
  {
    v13 = sub_63330(v22 + v12, 128 - v12, "-MP%d", a3) + v12;
  }

  if (*(a1 + 16) == 1)
  {
    v13 += sub_63330(v22 + v13, 128 - v13, "-%s-%d", *(&off_C4158 + *(a1 + 20)), *(a1 + 44));
  }

  v14 = pthread_self();
  v15 = rand();
  v16 = &off_BD078[12 * a2];
  v17 = sub_63330(v22 + v13, 128 - v13, "-%lu-%d-%s", v14, v15 % 10000, *v16);
  if (a2 == 1)
  {
    v18 = *(a1 + 16);
    if (v18 == 1)
    {
      v19 = &v16[*(a1 + 20)];
    }

    else
    {
      v19 = &v16[v18 + 2];
    }

    goto LABEL_12;
  }

  if (((*(a1 + 12) >> a2) & 1) == 0 || (v20 = v16[2]) == 0)
  {
    v19 = (v16 + 1);
LABEL_12:
    v20 = *v19;
  }

  sub_63330(v22 + v13 + v17, 128 - (v13 + v17), ".%s", v20);
  return sub_66794(a4, 0, v22, a5, v6);
}

uint64_t sub_1DC64(_DWORD *a1, const char *a2)
{
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *__filename = 0u;
  v29 = 0u;
  if (a1[10] >= 1)
  {
    v2 = a2;
    v4 = 0;
    v27 = 0;
    for (i = a1 + 12; ; i += 24)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        if ((a1[2] & (1 << v7)) != 0 && !*&i[2 * v7])
        {
          if (a1[10] <= 1)
          {
            v8 = -1;
          }

          else
          {
            v8 = v4;
          }

          v27 = sub_1DA10(a1, v7, v8, v2, __filename, 256);
          v9 = (a1[3] & (1 << v7)) != 0 && v6 == 36;
          v10 = 8;
          if (v9)
          {
            v10 = 9;
          }

          v11 = (&off_BD078[v6])[v10];
          v12 = fopen(__filename, v11);
          *&i[2 * v7] = v12;
          if (v12)
          {
            if (!sub_56A8C(0x3Du, 6))
            {
              goto LABEL_26;
            }

            v13 = sub_56AD0(0x3Du);
            v14 = sub_66A18();
            v15 = sub_56B04(6);
            if (v13)
            {
              printf("%lld %d AVE %s: %s:%d open dump file %p %lld | %d %d %s %s\n", v14, 61, v15, "AVE_Dump_OpenFiles", 262, a1, *a1, v4, v7, __filename, v11);
              v16 = sub_66A18();
              v24 = sub_56B04(6);
              v22 = v16;
            }

            else
            {
              v24 = v15;
              v22 = v14;
            }

            syslog(3, "%lld %d AVE %s: %s:%d open dump file %p %lld | %d %d %s %s", v22, 61, v24, "AVE_Dump_OpenFiles");
          }

          else
          {
            if (!sub_56A8C(0x3Du, 4))
            {
              goto LABEL_26;
            }

            v17 = sub_56AD0(0x3Du);
            v18 = sub_66A18();
            v19 = sub_56B04(4);
            if (v17)
            {
              printf("%lld %d AVE %s: %s:%d fail to open dump file %p %lld | %d %d %s %s\n", v18, 61, v19, "AVE_Dump_OpenFiles", 257, a1, *a1, v4, v7, __filename, v11);
              v20 = sub_66A18();
              v25 = sub_56B04(4);
              v23 = v20;
            }

            else
            {
              v25 = v19;
              v23 = v18;
            }

            syslog(3, "%lld %d AVE %s: %s:%d fail to open dump file %p %lld | %d %d %s %s", v23, 61, v25, "AVE_Dump_OpenFiles");
          }

          v2 = a2;
        }

LABEL_26:
        ++v7;
        v6 += 12;
      }

      while (v6 != 144);
      if (++v4 >= a1[10])
      {
        return v27;
      }
    }
  }

  return 0;
}

uint64_t sub_1DFD0(uint64_t a1)
{
  v2 = 0;
  result = 0;
  v4 = a1 + 48;
  v5 = 1;
  do
  {
    v6 = 0;
    v7 = v5;
    v8 = v4 + 96 * v2;
    v9 = -2;
    do
    {
      if (*(v8 + v6))
      {
        v10 = v9 > 8;
      }

      else
      {
        v10 = 1;
      }

      if (!v10 && ((0x1C1u >> v9) & 1) != 0)
      {
        if (fprintf(*(v8 + v6), off_BD4F8[v9]) <= 0)
        {
          result = 4294965296;
        }

        else
        {
          result = 0;
        }
      }

      v6 += 8;
      ++v9;
    }

    while (v6 != 96);
    v5 = 0;
    v2 = 1;
  }

  while ((v7 & 1) != 0);
  return result;
}

uint64_t sub_1E094(uint64_t a1, const char *a2, int a3, int a4, int a5, int a6, void *a7, int a8, int a9, int a10, int a11)
{
  v11 = a8;
  v16 = a10;
  v17 = a11;
  if (sub_56A8C(0x3Du, 7))
  {
    v18 = sub_56AD0(0x3Du);
    v19 = sub_66A18();
    v20 = sub_56B04(7);
    if (v18)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d %d 0x%x 0x%x %p %d %d %d %d\n", v19, 61, v20, "AVE_Dump_Init", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
      v40 = sub_66A18();
      v11 = a8;
      v37 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d 0x%x 0x%x %p %d %d %d %d", v40, 61, v37, "AVE_Dump_Init", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d 0x%x 0x%x %p %d %d %d %d", v19, 61, v20, "AVE_Dump_Init", a1);
    }
  }

  if (a1 && a7)
  {
    *(a1 + 8) = a5;
    *(a1 + 12) = a6;
    *(a1 + 16) = a3;
    *(a1 + 20) = a4;
    *(a1 + 24) = *a7;
    *(a1 + 32) = a9;
    *(a1 + 36) = a10;
    *(a1 + 40) = v11;
    *(a1 + 44) = a11;
    v21 = sub_1DC64(a1, a2);
    if (!v21)
    {
      sub_1DFD0(a1);
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (sub_56A8C(0x3Du, 4))
  {
    v22 = sub_56AD0(0x3Du);
    v23 = sub_66A18();
    v24 = sub_56B04(4);
    if (v22)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %p %d %d 0x%x 0x%x %p %d %d %d %d\n", v23, 61, v24, "AVE_Dump_Init", 457, "pDump != __null && pResolution != __null", a1, a2, a3, a4, a5, a6, a7, v11, a9, a10, a11);
      v39 = sub_66A18();
      v11 = a8;
      v38 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p %d %d 0x%x 0x%x %p %d %d %d %d", v39, 61, v38, "AVE_Dump_Init", 457, "pDump != __null && pResolution != __null", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p %d %d 0x%x 0x%x %p %d %d %d %d", v23, 61, v24, "AVE_Dump_Init", 457, "pDump != __null && pResolution != __null", a1);
    }
  }

  v21 = 4294966295;
  if (a1)
  {
LABEL_14:
    v25 = 0;
    v26 = 1;
    do
    {
      v27 = 0;
      v28 = v26;
      v29 = a1 + 48 + 96 * v25;
      do
      {
        v30 = *(v29 + v27);
        if (v30)
        {
          fclose(v30);
          *(v29 + v27) = 0;
        }

        v27 += 8;
      }

      while (v27 != 96);
      v26 = 0;
      v25 = 1;
    }

    while ((v28 & 1) != 0);
    v16 = a10;
    v17 = a11;
    v11 = a8;
  }

LABEL_21:
  if (sub_56A8C(0x3Du, 7))
  {
    v31 = sub_56AD0(0x3Du);
    v32 = sub_66A18();
    v33 = sub_56B04(7);
    if (v31)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %d 0x%x 0x%x %p %d %d %d %d %d\n", v32, 61, v33, "AVE_Dump_Init", a1, a2, a3, a4, a5, a6, a7, v11, a9, v16, v17, v21);
      v34 = sub_66A18();
      v35 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d 0x%x 0x%x %p %d %d %d %d %d", v34, 61, v35, "AVE_Dump_Init", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d 0x%x 0x%x %p %d %d %d %d %d", v32, 61, v33, "AVE_Dump_Init", a1, a2);
    }
  }

  return v21;
}

uint64_t sub_1E5F0(char *a1)
{
  if (sub_56A8C(0x3Du, 7))
  {
    v2 = sub_56AD0(0x3Du);
    v3 = sub_66A18();
    v4 = sub_56B04(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 61, v4, "AVE_Dump_Uninit", a1);
      v5 = sub_66A18();
      v17 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 61, v17, "AVE_Dump_Uninit", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 61, v4, "AVE_Dump_Uninit", a1);
    }
  }

  if (a1)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = 0;
      v9 = v7;
      v10 = &a1[96 * v6 + 48];
      do
      {
        v11 = *&v10[v8];
        if (v11)
        {
          fclose(v11);
          *&v10[v8] = 0;
        }

        v8 += 8;
      }

      while (v8 != 96);
      v7 = 0;
      v6 = 1;
    }

    while ((v9 & 1) != 0);
  }

  if (sub_56A8C(0x3Du, 7))
  {
    v12 = sub_56AD0(0x3Du);
    v13 = sub_66A18();
    v14 = sub_56B04(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v13, 61, v14, "AVE_Dump_Uninit", a1, 0);
      v15 = sub_66A18();
      v18 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v15, 61, v18, "AVE_Dump_Uninit", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 61, v14, "AVE_Dump_Uninit", a1, 0);
    }
  }

  return 0;
}

uint64_t sub_1E7AC(void *a1, int a2, __CVBuffer *a3)
{
  if (sub_56A8C(0x3Du, 8))
  {
    v6 = sub_56AD0(0x3Du);
    v7 = sub_66A18();
    v8 = sub_56B04(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p\n", v7, 61, v8, "AVE_Dump_WriteInput", a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p", v7);
  }

  if (a1)
  {
    v9 = a1[12 * (a2 > 0) + 6];
    if (v9)
    {
      if (a3)
      {
        v10 = sub_52DBC(a3, *(a1 + 3) & 1, v9);
      }

      else
      {
        v10 = 4294966287;
      }
    }

    else
    {
      v10 = 4294966288;
    }
  }

  else
  {
    if (sub_56A8C(0x3Du, 4))
    {
      v11 = sub_56AD0(0x3Du);
      v12 = sub_66A18();
      v13 = sub_56B04(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v12, 61, v13, "AVE_Dump_WriteInput", 533, "pDump != __null", 0, a2, a3);
        v14 = sub_66A18();
        v20 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v14, 61, v20);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v12, 61, v13);
      }
    }

    v10 = 4294966295;
  }

  if (sub_56A8C(0x3Du, 8))
  {
    v15 = sub_56AD0(0x3Du);
    v16 = sub_66A18();
    v17 = sub_56B04(8);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d\n", v16, 61, v17, "AVE_Dump_WriteInput", a1, a2, a3, v10);
      v18 = sub_66A18();
      sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v18, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v16, 61);
    }
  }

  return v10;
}

uint64_t sub_1EA8C(void *a1, int a2, const void *a3, unsigned int a4)
{
  if (sub_56A8C(0x3Du, 8))
  {
    v8 = sub_56AD0(0x3Du);
    v9 = sub_66A18();
    v10 = sub_56B04(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d\n", v9, 61, v10, "AVE_Dump_WriteOutput", a1, a2, a3, a4);
      v9 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d", v9, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 7];
    if (v11)
    {
      v12 = 4294966287;
      if (a3 && a4 >= 1)
      {
        v13 = fwrite(a3, 1uLL, a4, v11);
        v12 = v13 == a4 ? 0 : 4294965296;
        if (sub_56A8C(0x3Du, 8))
        {
          v14 = sub_56AD0(0x3Du);
          v15 = sub_66A18();
          v16 = sub_56B04(8);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %p %d %p %d %d\n", v15, 61, v16, "AVE_Dump_WriteOutput", 596, a1, a2, a3, a4, v13);
            v17 = sub_66A18();
            v27 = sub_56B04(8);
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v17, 61, v27);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v15, 61, v16);
          }
        }
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (sub_56A8C(0x3Du, 4))
    {
      v18 = sub_56AD0(0x3Du);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteOutput", 578, "pDump != __null", 0, a2, a3, a4);
        v21 = sub_66A18();
        v28 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v21, 61, v28, "AVE_Dump_WriteOutput");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v19, 61, v20, "AVE_Dump_WriteOutput");
      }
    }

    v12 = 4294966295;
  }

  if (sub_56A8C(0x3Du, 8))
  {
    v22 = sub_56AD0(0x3Du);
    v23 = sub_66A18();
    v24 = sub_56B04(8);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %d\n", v23, 61, v24, "AVE_Dump_WriteOutput", a1, a2, a3, a4, v12);
      v25 = sub_66A18();
      sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v25, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v23, 61);
    }
  }

  return v12;
}

uint64_t sub_1EE88(void *a1, int a2, const void *a3, unsigned int a4)
{
  if (sub_56A8C(0x3Du, 8))
  {
    v8 = sub_56AD0(0x3Du);
    v9 = sub_66A18();
    v10 = sub_56B04(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d\n", v9, 61, v10, "AVE_Dump_WriteMBStats", a1, a2, a3, a4);
      v9 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d", v9, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 9];
    if (v11)
    {
      v12 = 4294966287;
      if (a3 && a4 >= 1)
      {
        v13 = fwrite(a3, 1uLL, a4, v11);
        v12 = v13 == a4 ? 0 : 4294965296;
        if (sub_56A8C(0x3Du, 8))
        {
          v14 = sub_56AD0(0x3Du);
          v15 = sub_66A18();
          v16 = sub_56B04(8);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %p %d %p %d %d\n", v15, 61, v16, "AVE_Dump_WriteMBStats", 735, a1, a2, a3, a4, v13);
            v17 = sub_66A18();
            v27 = sub_56B04(8);
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v17, 61, v27);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v15, 61, v16);
          }
        }
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (sub_56A8C(0x3Du, 4))
    {
      v18 = sub_56AD0(0x3Du);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteMBStats", 717, "pDump != __null", 0, a2, a3, a4);
        v21 = sub_66A18();
        v28 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v21, 61, v28, "AVE_Dump_WriteMBStats");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v19, 61, v20, "AVE_Dump_WriteMBStats");
      }
    }

    v12 = 4294966295;
  }

  if (sub_56A8C(0x3Du, 8))
  {
    v22 = sub_56AD0(0x3Du);
    v23 = sub_66A18();
    v24 = sub_56B04(8);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %d\n", v23, 61, v24, "AVE_Dump_WriteMBStats", a1, a2, a3, a4, v12);
      v25 = sub_66A18();
      sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v25, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v23, 61);
    }
  }

  return v12;
}

uint64_t sub_1F284(void *a1, int a2, int *a3)
{
  if (sub_56A8C(0x3Du, 8))
  {
    v6 = sub_56AD0(0x3Du);
    v7 = sub_66A18();
    v8 = sub_56B04(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p\n", v7, 61, v8, "AVE_Dump_WriteHwEventTrace", a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p", v7);
  }

  if (a1)
  {
    v9 = a1[12 * (a2 > 0) + 14];
    if (v9)
    {
      if (a3)
      {
        if (*a3 < 2)
        {
          v13 = 0;
        }

        else
        {
          v10 = a3 + 19;
          v11 = 1;
          do
          {
            v12 = fprintf(v9, "%6d, %d, %d, %d, %8lld, 0x%x, 0x%x, 0x%x, 0x%x\n", v11++, *(v10 - 8), *(v10 - 9), *(v10 - 7), *(v10 - 5), *(v10 - 3), *(v10 - 2), *(v10 - 1), *v10);
            v10 += 10;
          }

          while (v11 < *a3);
          if (v12 <= 0)
          {
            v13 = 4294965296;
          }

          else
          {
            v13 = 0;
          }
        }
      }

      else
      {
        v13 = 4294966287;
      }
    }

    else
    {
      v13 = 4294966288;
    }
  }

  else
  {
    if (sub_56A8C(0x3Du, 4))
    {
      v14 = sub_56AD0(0x3Du);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v15, 61, v16, "AVE_Dump_WriteHwEventTrace", 763, "pDump != __null", 0, a2, a3);
        v17 = sub_66A18();
        v23 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v17, 61, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v15, 61, v16);
      }
    }

    v13 = 4294966295;
  }

  if (sub_56A8C(0x3Du, 8))
  {
    v18 = sub_56AD0(0x3Du);
    v19 = sub_66A18();
    v20 = sub_56B04(8);
    if (v18)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteHwEventTrace", a1, a2, a3, v13);
      v21 = sub_66A18();
      sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v21, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v19, 61);
    }
  }

  return v13;
}

uint64_t sub_1F5C8(void *a1, int a2, int a3, double *a4)
{
  if (sub_56A8C(0x3Du, 8))
  {
    v8 = sub_56AD0(0x3Du);
    v9 = sub_66A18();
    v10 = sub_56B04(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", v9, 61, v10, "AVE_Dump_WriteVQMetrics", a1, a2, a3, a4);
      v9 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", v9, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 15];
    if (v11)
    {
      if (a4)
      {
        if (fprintf(v11, "%d, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f\n", a3, a4[3], a4[4], a4[5], *a4, a4[1], a4[2]) <= 0)
        {
          v12 = 4294965296;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 4294966287;
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (sub_56A8C(0x3Du, 4))
    {
      v13 = sub_56AD0(0x3Du);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p\n", v14, 61, v15, "AVE_Dump_WriteVQMetrics", 815, "pDump != __null", 0, a2, a3, a4);
        v16 = sub_66A18();
        v22 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v16, 61, v22);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v14, 61, v15);
      }
    }

    v12 = 4294966295;
  }

  if (sub_56A8C(0x3Du, 8))
  {
    v17 = sub_56AD0(0x3Du);
    v18 = sub_66A18();
    v19 = sub_56B04(8);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v18, 61, v19, "AVE_Dump_WriteVQMetrics", a1, a2, a3, a4, v12);
      v20 = sub_66A18();
      v23 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v20, 61, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v18, 61, v19);
    }
  }

  return v12;
}

uint64_t sub_1F904(void *a1, int a2, int a3, double *a4)
{
  if (sub_56A8C(0x3Du, 8))
  {
    v8 = sub_56AD0(0x3Du);
    v9 = sub_66A18();
    v10 = sub_56B04(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", v9, 61, v10, "AVE_Dump_WriteFPS", a1, a2, a3, a4);
      v9 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", v9, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 16];
    if (v11)
    {
      if (a4)
      {
        if (fprintf(v11, "%d, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f\n", a3, a4[2], a4[1], *a4, a4[5], a4[4], a4[3], a4[8], a4[7], a4[6]) <= 0)
        {
          v12 = 4294965296;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 4294966287;
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (sub_56A8C(0x3Du, 4))
    {
      v13 = sub_56AD0(0x3Du);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p\n", v14, 61, v15, "AVE_Dump_WriteFPS", 863, "pDump != __null", 0, a2, a3, a4);
        v16 = sub_66A18();
        v22 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v16, 61, v22);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v14, 61, v15);
      }
    }

    v12 = 4294966295;
  }

  if (sub_56A8C(0x3Du, 8))
  {
    v17 = sub_56AD0(0x3Du);
    v18 = sub_66A18();
    v19 = sub_56B04(8);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v18, 61, v19, "AVE_Dump_WriteFPS", a1, a2, a3, a4, v12);
      v20 = sub_66A18();
      v23 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v20, 61, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v18, 61, v19);
    }
  }

  return v12;
}

uint64_t sub_1FC4C(void *a1, __CVBuffer *a2)
{
  if (sub_56A8C(0x3Du, 8))
  {
    v4 = sub_56AD0(0x3Du);
    v5 = sub_66A18();
    v6 = sub_56B04(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 61, v6, "AVE_Dump_WriteRecon", a1, a2);
      v7 = sub_66A18();
      v17 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 61, v17, "AVE_Dump_WriteRecon", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 61, v6, "AVE_Dump_WriteRecon", a1, a2);
    }
  }

  if (a1)
  {
    v8 = a1[17];
    if (v8)
    {
      if (a2)
      {
        v9 = sub_52DBC(a2, (*(a1 + 3) >> 11) & 1, v8);
      }

      else
      {
        v9 = 4294966287;
      }
    }

    else
    {
      v9 = 4294966288;
    }
  }

  else
  {
    if (sub_56A8C(0x3Du, 4))
    {
      v10 = sub_56AD0(0x3Du);
      v11 = sub_66A18();
      v12 = sub_56B04(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %p\n", v11, 61, v12, "AVE_Dump_WriteRecon", 907, "pDump != __null", 0, a2);
        v11 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p", v11, 61);
    }

    v9 = 4294966295;
  }

  if (sub_56A8C(0x3Du, 8))
  {
    v13 = sub_56AD0(0x3Du);
    v14 = sub_66A18();
    v15 = sub_56B04(8);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v14, 61, v15, "AVE_Dump_WriteRecon", a1, a2, v9);
      v14 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v14);
  }

  return v9;
}

uint64_t sub_1FEEC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (sub_56A8C(0x3Cu, 7))
  {
    v6 = sub_56AD0(0x3Cu);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld\n", v7, 60, v8, "AVE_TimeStats_AddEndTime", a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld", v7);
  }

  if (!a1 || a2 > 8 || a3 < 0)
  {
    if (sub_56A8C(0x3Cu, 4))
    {
      v11 = sub_56AD0(0x3Cu);
      v12 = sub_66A18();
      v13 = sub_56B04(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld\n", v12, 60, v13, "AVE_TimeStats_AddEndTime", 282, "pTS != __null && 0 <= pos && pos < AVE_TimeStats_Pos_Max && ts >= 0", a1, a2, a3);
        v14 = sub_66A18();
        v24 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v14, 60, v24);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v12, 60, v13);
      }
    }

    v10 = 4294966295;
  }

  else
  {
    sub_422D8(*(a1 + 176));
    v9 = *(a1 + 16);
    if (v9)
    {
      if (a2 == 5)
      {
        *(v9 + 16 * (*(a1 + 24) % *(a1 + 8)) + 8) = a3;
      }

      v10 = 0;
      *(a1 + 16 * a2 + 40) = a3;
    }

    else
    {
      if (sub_56A8C(0x3Cu, 4))
      {
        v15 = sub_56AD0(0x3Cu);
        v16 = sub_66A18();
        v17 = sub_56B04(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld\n", v16, 60, v17, "AVE_TimeStats_AddEndTime", 287, "pTS->psTP != __null", a1, a2, a3);
          v18 = sub_66A18();
          v25 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v18, 60, v25);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v16, 60, v17);
        }
      }

      v10 = 4294966285;
    }

    sub_4230C(*(a1 + 176));
  }

  if (sub_56A8C(0x3Cu, 7))
  {
    v19 = sub_56AD0(0x3Cu);
    v20 = sub_66A18();
    v21 = sub_56B04(7);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d\n", v20, 60, v21, "AVE_TimeStats_AddEndTime", a1, a2, a3, v10);
      v22 = sub_66A18();
      sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v22, 60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v20, 60);
    }
  }

  return v10;
}

char *sub_202BC(int a1)
{
  if (a1 >= 35)
  {
    return 0;
  }

  else
  {
    return &qword_BD540[9 * a1];
  }
}

uint64_t sub_202D8(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = qword_BD540[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 24);
  }

  return v3;
}

uint64_t sub_20380(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = qword_BD540[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 32);
  }

  return v3;
}

uint64_t sub_20428(_DWORD *a1, const void *a2, FILE *a3)
{
  v19 = 0;
  if (sub_56A8C(0x2Eu, 7))
  {
    v6 = sub_56AD0(0x2Eu);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 46, v8, "AVE_FrameStats_PrintStatFrame", a2, a1, a3);
      v7 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2)
  {
    if (a3)
    {
      operator new[]();
    }

    v13 = 4294966288;
  }

  else
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v9 = sub_56AD0(0x2Eu);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 46, v11, "AVE_FrameStats_PrintStatFrame", 265, "(psFrame != __null) && (psMgr != __null)", a2, a1, a3);
        v12 = sub_66A18();
        v18 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 46, v18);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 46, v11);
      }
    }

    v13 = 4294966295;
  }

  if (sub_56A8C(0x74u, 7))
  {
    v14 = sub_56AD0(0x74u);
    v15 = sub_66A18();
    v16 = sub_56B04(7);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v15, 116, v16, "AVE_FrameStats_PrintStatFrame", a2, a1, a3, v13);
      v15 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v15, 116);
  }

  return v13;
}

uint64_t sub_20E10(char *a1, uint64_t a2)
{
  v2 = a2;
  v4 = NSTemporaryDirectory();
  v5 = [v4 UTF8String];

  return sub_63330(a1, v2, "%s", v5);
}

uint64_t sub_20E88(__CVBuffer *a1, uint64_t a2, uint64_t a3, _DWORD *a4, char a5)
{
  extraColumnsOnLeft = 0;
  extraRowsOnTop = 0;
  extraColumnsOnRight = 0;
  extraRowsOnBottom = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v11 = BaseAddressOfPlane;
  if (!BaseAddressOfPlane || (BaseAddressOfPlane & 0x3F) != 0)
  {
    if (sub_56A8C(3u, 4))
    {
      v13 = sub_56AD0(3u);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer base address 0x%lx\n", v14, 3, v15, "AVE_ImgBuf_VerifyUncompressed", 81, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v11);
        v14 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer base address 0x%lx", v14);
    }

    goto LABEL_39;
  }

  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  if (a5)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
    v12 = (extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight);
    v18 = (extraRowsOnTop + HeightOfPlane + extraRowsOnBottom);
    if (v12 < a2 || v18 < a3)
    {
      if (!sub_56A8C(3u, 4))
      {
        goto LABEL_39;
      }

      v35 = sub_56AD0(3u);
      v36 = sub_66A18();
      v37 = sub_56B04(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 93, "width >= videoWidth && height >= videoHeight", v12, v18, a2, a3);
        v36 = sub_66A18();
        v61 = a2;
        v62 = a3;
        v59 = v12;
        v60 = v18;
        v57 = 93;
        v58 = "width >= videoWidth && height >= videoHeight";
        v56 = sub_56B04(4);
LABEL_51:
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v36, 3, v56, "AVE_ImgBuf_VerifyUncompressed", v57, v58, v59, v60, v61, v62);
        goto LABEL_39;
      }

      v61 = a2;
      v62 = a3;
      v59 = v12;
      v60 = v18;
      v50 = "width >= videoWidth && height >= videoHeight";
      v51 = 93;
      goto LABEL_50;
    }
  }

  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  v20 = BytesPerRowOfPlane;
  if (a4[6] == 1)
  {
    v21 = (2 * ((2863311531u * (v12 + 2)) >> 32)) & 0xFFFFFFFC;
    if (!BytesPerRowOfPlane)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v12 << (a4[1] != 8);
    if (!BytesPerRowOfPlane)
    {
      goto LABEL_23;
    }
  }

  if ((BytesPerRowOfPlane & 0x3F) != 0 || v21 > BytesPerRowOfPlane)
  {
LABEL_23:
    if (sub_56A8C(3u, 4))
    {
      v32 = sub_56AD0(3u);
      v33 = sub_66A18();
      v34 = sub_56B04(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x\n", v33, 3, v34, "AVE_ImgBuf_VerifyUncompressed", 101, "stride != 0 && (stride & 0x3F) == 0 && stride >= neededStride", v20, v21);
        v33 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v33);
    }

    goto LABEL_39;
  }

  if (!a4[3])
  {
    if ((a5 & 1) != 0 || (v38 = CVPixelBufferGetWidthOfPlane(a1, 1uLL), v39 = CVPixelBufferGetHeightOfPlane(a1, 1uLL), !(v38 | v39)))
    {
      v40 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
      if (v40)
      {
        if (sub_56A8C(3u, 4))
        {
          v41 = sub_56AD0(3u);
          v42 = sub_66A18();
          v43 = sub_56B04(4);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride %x\n", v42, 3, v43, "AVE_ImgBuf_VerifyUncompressed", 120, "stride == 0", v40);
            v42 = sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride %x", v42);
        }

        goto LABEL_39;
      }

      goto LABEL_45;
    }

    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_39;
    }

    v54 = sub_56AD0(3u);
    v36 = sub_66A18();
    v37 = sub_56B04(4);
    if (v54)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 114, "width == 0 && height == 0", v38, v39, a2, a3);
      v55 = sub_66A18();
      sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v55, 3);
      goto LABEL_39;
    }

    v61 = a2;
    v62 = a3;
    v59 = v38;
    v60 = v39;
    v50 = "width == 0 && height == 0";
    v51 = 114;
LABEL_50:
    v57 = v51;
    v58 = v50;
    v56 = v37;
    goto LABEL_51;
  }

  if ((a5 & 1) != 0 || (v22 = CVPixelBufferGetWidthOfPlane(a1, 1uLL), v23 = CVPixelBufferGetHeightOfPlane(a1, 1uLL), v24 = a4[4] >> 1, v25 = (extraColumnsOnRight >> v24) + v22 + (extraColumnsOnLeft >> v24), v26 = a4[5] >> 1, v27 = (extraRowsOnBottom >> v26) + v23 + (extraRowsOnTop >> v26), a2 >> v24 <= v25) && (LODWORD(v12) = (extraColumnsOnRight >> v24) + v22 + (extraColumnsOnLeft >> v24), a3 >> v26 <= v27))
  {
    v28 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    v29 = v28;
    v30 = (2 * v12) >> (a4[4] >> 1);
    if (a4[6] == 1)
    {
      v31 = (2 * ((2863311531u * (v30 + 2)) >> 32)) & 0xFFFFFFFC;
    }

    else
    {
      v31 = v30 << (a4[1] != 8);
    }

    if (!v28 || (v28 & 0x3F) != 0 || v31 > v28)
    {
      if (sub_56A8C(3u, 4))
      {
        v46 = sub_56AD0(3u);
        v47 = sub_66A18();
        v48 = sub_56B04(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x\n", v47, 3, v48, "AVE_ImgBuf_VerifyUncompressed", 144, "stride != 0 && (stride & 0x3F) == 0 && stride >= neededStride", v29, v31);
          v49 = sub_66A18();
          sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v49);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v47);
        }
      }

      goto LABEL_39;
    }

LABEL_45:
    v44 = 0;
    goto LABEL_40;
  }

  if (sub_56A8C(3u, 4))
  {
    v52 = sub_56AD0(3u);
    v36 = sub_66A18();
    v37 = sub_56B04(4);
    if (v52)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 134, "(width >= (videoWidth >> ((pFmt->iSubWidthC) >> 1))) && (height >= (videoHeight >> ((pFmt->iSubHeightC) >> 1)))", v25, v27, a2, a3);
      v53 = sub_66A18();
      sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v53, 3);
      goto LABEL_39;
    }

    v61 = a2;
    v62 = a3;
    v59 = v25;
    v60 = v27;
    v50 = "(width >= (videoWidth >> ((pFmt->iSubWidthC) >> 1))) && (height >= (videoHeight >> ((pFmt->iSubHeightC) >> 1)))";
    v51 = 134;
    goto LABEL_50;
  }

LABEL_39:
  v44 = 4294954394;
LABEL_40:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v44;
}

uint64_t sub_21684(__CVBuffer *a1, _DWORD *a2)
{
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetIOSurface(a1);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  v5 = BaseAddressOfCompressedTileHeaderRegionOfPlane;
  if (!BaseAddressOfCompressedTileHeaderRegionOfPlane || (BaseAddressOfCompressedTileHeaderRegionOfPlane & 0x3F) != 0)
  {
    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_49;
    }

    v22 = sub_56AD0(3u);
    v23 = sub_66A18();
    v24 = sub_56B04(4);
    if (v22)
    {
      v25 = 186;
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", v23, 3, v24, "AVE_ImgBuf_VerifyHTPC", 186, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v5);
LABEL_20:
      v23 = sub_66A18();
      v63 = v5;
      v61 = v25;
      v59 = sub_56B04(4);
LABEL_27:
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx", v23, 3, v59, "AVE_ImgBuf_VerifyHTPC", v61, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v63);
      goto LABEL_49;
    }

    v63 = v5;
    v30 = 186;
LABEL_26:
    v61 = v30;
    v59 = v24;
    goto LABEL_27;
  }

  BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  v7 = BaseAddressOfCompressedTileDataRegionOfPlane;
  if (!BaseAddressOfCompressedTileDataRegionOfPlane || (BaseAddressOfCompressedTileDataRegionOfPlane & 0x3F) != 0)
  {
    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_49;
    }

    v26 = sub_56AD0(3u);
    v27 = sub_66A18();
    v28 = sub_56B04(4);
    if (v26)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v27, 3, v28, "AVE_ImgBuf_VerifyHTPC", 190, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v7);
LABEL_24:
      v29 = sub_66A18();
      sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v29);
      goto LABEL_49;
    }

LABEL_31:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v27);
    goto LABEL_49;
  }

  BytesPerCompressedTileHeaderOfPlane = IOSurfaceGetBytesPerCompressedTileHeaderOfPlane();
  WidthInCompressedTilesOfPlane = IOSurfaceGetWidthInCompressedTilesOfPlane();
  HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v13 = extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight;
  v14 = extraRowsOnTop + HeightOfPlane + extraRowsOnBottom;
  v15 = (v13 & 0xF) == 0;
  v16 = v13 >> 4;
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  if ((v14 & 7) != 0)
  {
    v18 = (v14 >> 3) + 1;
  }

  else
  {
    v18 = v14 >> 3;
  }

  if (v17 != WidthInCompressedTilesOfPlane || v18 != HeightInCompressedTilesOfPlane)
  {
    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_49;
    }

    v31 = sub_56AD0(3u);
    v32 = sub_66A18();
    v33 = sub_56B04(4);
    if (v31)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v32, 3, v33, "AVE_ImgBuf_VerifyHTPC", 214, "width == neededWidth && height == neededHeight", WidthInCompressedTilesOfPlane, HeightInCompressedTilesOfPlane, v17, v18);
      v34 = sub_66A18();
      sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v34, 3);
      goto LABEL_49;
    }

LABEL_48:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v32, 3);
    goto LABEL_49;
  }

  if ((WidthInCompressedTilesOfPlane * BytesPerCompressedTileHeaderOfPlane * HeightInCompressedTilesOfPlane) + v5 > v7)
  {
    if (sub_56A8C(3u, 4))
    {
      v19 = sub_56AD0(3u);
      v20 = sub_66A18();
      v21 = sub_56B04(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer base address/size 0x%lx 0x%lx %d %d %d\n", v20, 3, v21, "AVE_ImgBuf_VerifyHTPC", 218, "dataBaseAddr >= (baseAddr + width * height * size)", v7, v5, WidthInCompressedTilesOfPlane, HeightInCompressedTilesOfPlane, BytesPerCompressedTileHeaderOfPlane);
        v20 = sub_66A18();
        v66 = HeightInCompressedTilesOfPlane;
        v67 = BytesPerCompressedTileHeaderOfPlane;
        v64 = v5;
        v65 = WidthInCompressedTilesOfPlane;
        v62 = v7;
        v60 = 218;
        v58 = sub_56B04(4);
LABEL_57:
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer base address/size 0x%lx 0x%lx %d %d %d", v20, 3, v58, "AVE_ImgBuf_VerifyHTPC", v60, "dataBaseAddr >= (baseAddr + width * height * size)", v62, v64, v65, v66, v67);
        goto LABEL_49;
      }

      v66 = HeightInCompressedTilesOfPlane;
      v67 = BytesPerCompressedTileHeaderOfPlane;
      v64 = v5;
      v65 = WidthInCompressedTilesOfPlane;
      v62 = v7;
      v52 = 218;
      goto LABEL_56;
    }

    goto LABEL_49;
  }

  if (!a2[3])
  {
LABEL_51:
    v49 = 0;
    goto LABEL_50;
  }

  v35 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  v5 = v35;
  if (!v35 || (v35 & 0x3F) != 0)
  {
    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_49;
    }

    v51 = sub_56AD0(3u);
    v23 = sub_66A18();
    v24 = sub_56B04(4);
    if (v51)
    {
      v25 = 227;
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", v23, 3, v24, "AVE_ImgBuf_VerifyHTPC", 227, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v5);
      goto LABEL_20;
    }

    v63 = v5;
    v30 = 227;
    goto LABEL_26;
  }

  v36 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  v37 = v36;
  if (!v36 || (v36 & 0x3F) != 0)
  {
    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_49;
    }

    v53 = sub_56AD0(3u);
    v27 = sub_66A18();
    v54 = sub_56B04(4);
    if (v53)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v27, 3, v54, "AVE_ImgBuf_VerifyHTPC", 231, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v37);
      goto LABEL_24;
    }

    goto LABEL_31;
  }

  v38 = IOSurfaceGetBytesPerCompressedTileHeaderOfPlane();
  v39 = IOSurfaceGetWidthInCompressedTilesOfPlane();
  v40 = IOSurfaceGetHeightInCompressedTilesOfPlane();
  v41 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
  v42 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
  v43 = (extraColumnsOnLeft >> (a2[4] >> 1)) + v41 + (extraColumnsOnRight >> (a2[4] >> 1));
  v44 = (extraRowsOnTop >> (a2[5] >> 1)) + v42 + (extraRowsOnBottom >> (a2[5] >> 1));
  v15 = (v43 & 7) == 0;
  v45 = v43 >> 3;
  if (v15)
  {
    v46 = v45;
  }

  else
  {
    v46 = v45 + 1;
  }

  if ((v44 & 7) != 0)
  {
    v47 = (v44 >> 3) + 1;
  }

  else
  {
    v47 = v44 >> 3;
  }

  if (v46 != v39)
  {
    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_49;
    }

    v55 = sub_56AD0(3u);
    v32 = sub_66A18();
    v56 = sub_56B04(4);
    if (v55)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v32, 3, v56, "AVE_ImgBuf_VerifyHTPC", 261, "width == neededWidth", v39, v40, v46, v47);
      v57 = sub_66A18();
      sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v57, 3);
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if ((v39 * v38 * v40) + v5 <= v37)
  {
    goto LABEL_51;
  }

  if (sub_56A8C(3u, 4))
  {
    v48 = sub_56AD0(3u);
    v20 = sub_66A18();
    v21 = sub_56B04(4);
    if (v48)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer base address/size 0x%lx 0x%lx %d %d %d\n", v20, 3, v21, "AVE_ImgBuf_VerifyHTPC", 266, "dataBaseAddr >= (baseAddr + width * height * size)", v37, v5, v39, v40, v38);
      v20 = sub_66A18();
      v66 = v40;
      v67 = v38;
      v64 = v5;
      v65 = v39;
      v62 = v37;
      v60 = 266;
      v58 = sub_56B04(4);
      goto LABEL_57;
    }

    v66 = v40;
    v67 = v38;
    v64 = v5;
    v65 = v39;
    v62 = v37;
    v52 = 266;
LABEL_56:
    v60 = v52;
    v58 = v21;
    goto LABEL_57;
  }

LABEL_49:
  v49 = 4294954394;
LABEL_50:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v49;
}

uint64_t sub_21E50(__CVBuffer *a1, _DWORD *a2)
{
  extraColumnsOnLeft = 0;
  extraRowsOnTop = 0;
  extraColumnsOnRight = 0;
  extraRowsOnBottom = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetIOSurface(a1);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  v5 = BaseAddressOfCompressedTileHeaderRegionOfPlane;
  if (!BaseAddressOfCompressedTileHeaderRegionOfPlane || (BaseAddressOfCompressedTileHeaderRegionOfPlane & 0x3F) != 0)
  {
    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_44;
    }

    v32 = sub_56AD0(3u);
    v33 = sub_66A18();
    v34 = sub_56B04(4);
    if (v32)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", v33, 3, v34, "AVE_ImgBuf_VerifyInterchange", 308, "hdrBaseAddr != 0 && (hdrBaseAddr & 0x3F) == 0", v5);
LABEL_29:
      v35 = sub_66A18();
      sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx", v35);
      goto LABEL_44;
    }

LABEL_34:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx", v33);
    goto LABEL_44;
  }

  BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  v7 = BaseAddressOfCompressedTileDataRegionOfPlane;
  if (!BaseAddressOfCompressedTileDataRegionOfPlane || (BaseAddressOfCompressedTileDataRegionOfPlane & 0x3F) != 0)
  {
    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_44;
    }

    v36 = sub_56AD0(3u);
    v37 = sub_66A18();
    v38 = sub_56B04(4);
    if (v36)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v37, 3, v38, "AVE_ImgBuf_VerifyInterchange", 312, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v7);
LABEL_33:
      v39 = sub_66A18();
      sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v39);
      goto LABEL_44;
    }

LABEL_39:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v37);
    goto LABEL_44;
  }

  WidthInCompressedTilesOfPlane = IOSurfaceGetWidthInCompressedTilesOfPlane();
  HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v12 = extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight;
  v13 = extraRowsOnTop + HeightOfPlane + extraRowsOnBottom;
  v14 = (v12 & 0x1F) == 0;
  v15 = v12 >> 5;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  if ((v13 & 0x1F) != 0)
  {
    v17 = (v13 >> 5) + 1;
  }

  else
  {
    v17 = v13 >> 5;
  }

  if (v16 != WidthInCompressedTilesOfPlane || v17 != HeightInCompressedTilesOfPlane)
  {
    if (sub_56A8C(3u, 4))
    {
      v40 = sub_56AD0(3u);
      v41 = sub_66A18();
      v42 = sub_56B04(4);
      if (v40)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid Luma buffer dimension %d %d %d %d.\n", v41, 3, v42, "AVE_ImgBuf_VerifyInterchange", 332, "width == neededWidth && height == neededHeight", WidthInCompressedTilesOfPlane, HeightInCompressedTilesOfPlane, v16, v17);
        v41 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid Luma buffer dimension %d %d %d %d.", v41, 3);
    }

    goto LABEL_44;
  }

  if (a2[3])
  {
    v18 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
    v19 = v18;
    if (v18 && (v18 & 0x3F) == 0)
    {
      v20 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
      v21 = v20;
      if (v20 && (v20 & 0x3F) == 0)
      {
        v22 = IOSurfaceGetWidthInCompressedTilesOfPlane();
        v23 = IOSurfaceGetHeightInCompressedTilesOfPlane();
        v24 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
        v25 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
        v26 = (extraColumnsOnLeft >> (a2[4] >> 1)) + v24 + (extraColumnsOnRight >> (a2[4] >> 1));
        v27 = (extraRowsOnTop >> (a2[5] >> 1)) + v25 + (extraRowsOnBottom >> (a2[5] >> 1));
        v14 = (v26 & 0xF) == 0;
        v28 = v26 >> 4;
        if (v14)
        {
          v29 = v28;
        }

        else
        {
          v29 = v28 + 1;
        }

        if ((v27 & 0xF) != 0)
        {
          v30 = (v27 >> 4) + 1;
        }

        else
        {
          v30 = v27 >> 4;
        }

        if (v29 == v22)
        {
          goto LABEL_25;
        }

        if (sub_56A8C(3u, 4))
        {
          v48 = sub_56AD0(3u);
          v49 = sub_66A18();
          v50 = sub_56B04(4);
          if (v48)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid Chroma buffer dimension %d %d %d %d\n", v49, 3, v50, "AVE_ImgBuf_VerifyInterchange", 371, "width == neededWidth", v22, v23, v29, v30);
            v49 = sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid Chroma buffer dimension %d %d %d %d", v49, 3);
        }

LABEL_44:
        v31 = 4294954394;
        goto LABEL_45;
      }

      if (!sub_56A8C(3u, 4))
      {
        goto LABEL_44;
      }

      v46 = sub_56AD0(3u);
      v37 = sub_66A18();
      v47 = sub_56B04(4);
      if (v46)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v37, 3, v47, "AVE_ImgBuf_VerifyInterchange", 345, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v21);
        goto LABEL_33;
      }

      goto LABEL_39;
    }

    if (!sub_56A8C(3u, 4))
    {
      goto LABEL_44;
    }

    v43 = sub_56AD0(3u);
    v33 = sub_66A18();
    v44 = sub_56B04(4);
    if (v43)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", v33, 3, v44, "AVE_ImgBuf_VerifyInterchange", 341, "hdrBaseAddr != 0 && (hdrBaseAddr & 0x3F) == 0", v19);
      goto LABEL_29;
    }

    goto LABEL_34;
  }

LABEL_25:
  v31 = 0;
LABEL_45:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v31;
}

uint64_t sub_228D4(unsigned int *a1, const void **a2, CVPixelBufferPoolRef *a3)
{
  pixelBufferOut = 0;
  poolOut = 0;
  if (!a3 || !*a2)
  {
    if (sub_56A8C(3u, 4))
    {
      v14 = sub_56AD0(3u);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %p\n", v15, 3, v16, "AVE_VerifyImageBuffer", 476, "pImgBuf != __null && ppImgBufPool != __null", *a2, a3);
        v15 = sub_66A18();
        v16 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p", v15, 3, v16, "AVE_VerifyImageBuffer", 476, "pImgBuf != __null && ppImgBufPool != __null", *a2, a3);
    }

    goto LABEL_42;
  }

  CVPixelBufferRetain(*a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(*a2);
  v7 = sub_5D820(PixelFormatType);
  if (!v7)
  {
    if (sub_56A8C(3u, 4))
    {
      v17 = sub_56AD0(3u);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | pixel format is not supported %d\n", v18, 3, v19, "AVE_VerifyImageBuffer", 483, "pPixelFmt != __null", PixelFormatType);
        v18 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | pixel format is not supported %d", v18);
    }

    goto LABEL_42;
  }

  v8 = v7;
  v9 = sub_4E31C(*a2, v7, a1[2], a1[6], *(a1 + 52), a1[14], a1[7], a1 + 8, a1[12]);
  if (sub_56A8C(0x12u, 7))
  {
    v10 = sub_56AD0(0x12u);
    v11 = sub_66A18();
    v12 = sub_56B04(7);
    if (v10)
    {
      printf("%lld %d AVE %s: PixelFormat %x | %d %d (%d %d %d) %d %d\n", v11, 18, v12, PixelFormatType, *(v8 + 4), *(v8 + 8), *(v8 + 12), *(v8 + 16), *(v8 + 20), *(v8 + 24), *(v8 + 28));
      v13 = sub_66A18();
      v84 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: PixelFormat %x | %d %d (%d %d %d) %d %d", v13, 18, v84);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: PixelFormat %x | %d %d (%d %d %d) %d %d", v11, 18, v12);
    }
  }

  if (sub_56A8C(0x12u, 7))
  {
    v20 = sub_56AD0(0x12u);
    v21 = sub_66A18();
    v22 = sub_56B04(7);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(*a2, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(*a2, 0);
    if (v20)
    {
      printf("%lld %d AVE %s: Pixel Buffer Width %d Height %d\n", v21, 18, v22, WidthOfPlane, HeightOfPlane);
      v25 = sub_66A18();
      v26 = sub_56B04(7);
      v27 = CVPixelBufferGetWidthOfPlane(*a2, 0);
      v87 = CVPixelBufferGetHeightOfPlane(*a2, 0);
      syslog(3, "%lld %d AVE %s: Pixel Buffer Width %d Height %d", v25, 18, v26, v27, v87);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Pixel Buffer Width %d Height %d", v21, 18, v22, WidthOfPlane, HeightOfPlane);
    }
  }

  if ((v9 & 2) == 0)
  {
    sub_22450(*a2, a1[2], a1[3], a1[4], a1[5], *a1, a1[1], *(a1 + 147));
  }

  v28 = *a3;
  if (!*a3)
  {
    v35 = CVPixelBufferGetWidthOfPlane(*a2, 0);
    v36 = CVPixelBufferGetHeightOfPlane(*a2, 0);
    v37 = sub_51164(a1[2], a1[3], a1[4], a1[5], v35, v36, *a1, a1[1], PixelFormatType, &poolOut);
    if (v37)
    {
      v38 = v37;
      if (sub_56A8C(3u, 4))
      {
        v39 = sub_56AD0(3u);
        v40 = sub_66A18();
        v41 = sub_56B04(4);
        if (!v39)
        {
          v89 = v38;
          v88 = 511;
          v86 = v41;
          v83 = "%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d";
          goto LABEL_74;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d\n", v40, 3, v41, "AVE_VerifyImageBuffer", 511, "rc == noErr", v38);
        v42 = sub_66A18();
        sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d", v42);
      }

LABEL_43:
      if (pixelBufferOut)
      {
        CVPixelBufferRelease(pixelBufferOut);
        pixelBufferOut = 0;
      }

      if (poolOut)
      {
        CFRelease(poolOut);
        poolOut = 0;
      }

      goto LABEL_47;
    }

    v28 = *a3;
  }

  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = poolOut;
  }

  v30 = CVPixelBufferPoolCreatePixelBuffer(0, v29, &pixelBufferOut);
  if (v30)
  {
    v31 = v30;
    if (sub_56A8C(3u, 4))
    {
      v32 = sub_56AD0(3u);
      v33 = sub_66A18();
      v34 = sub_56B04(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to crete pixel buffer from a pool %d\n", v33, 3, v34, "AVE_VerifyImageBuffer", 517, "cvrc == kCVReturnSuccess", v31);
        v33 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to crete pixel buffer from a pool %d", v33);
    }

LABEL_42:
    v38 = 4294954394;
    goto LABEL_43;
  }

  v43 = sub_521E0(*a2, pixelBufferOut);
  if (v43)
  {
    v38 = v43;
    if (sub_56A8C(3u, 4))
    {
      v44 = sub_56AD0(3u);
      v40 = sub_66A18();
      v45 = sub_56B04(4);
      if (v44)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d\n", v40, 3, v45, "AVE_VerifyImageBuffer", 521, "rc == noErr", *a2, pixelBufferOut, v38);
        v46 = sub_66A18();
        v85 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d", v46, 3, v85);
        goto LABEL_43;
      }

      v90 = pixelBufferOut;
      v91 = v38;
      v89 = *a2;
      v88 = 521;
      v86 = v45;
      v83 = "%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d";
LABEL_74:
      syslog(3, v83, v40, 3, v86, "AVE_VerifyImageBuffer", v88, "rc == noErr", v89, v90, v91);
      goto LABEL_43;
    }

    goto LABEL_43;
  }

  CVPixelBufferRelease(*a2);
  v48 = pixelBufferOut;
  *a2 = pixelBufferOut;
  pixelBufferOut = 0;
  v49 = v9 & 2;
  sub_4E9B8(v48, v9, v8);
  if (sub_56A8C(0x12u, 7))
  {
    v50 = sub_56AD0(0x12u);
    v94 = sub_66A18();
    v51 = sub_56B04(7);
    v52 = a1[1];
    v92 = *a1;
    v53 = a1[2];
    v54 = a1[3];
    v55 = a1[4];
    v56 = a1[5];
    v57 = a1[6];
    if (v50)
    {
      printf("%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x\n", v94, 18, v51, "AVE_VerifyImageBuffer", 541, v92, v52, v53, v54, v55, v56, v57, a1[7], a1[12], *(a1 + 52), a1[14], a1[26], a1[27], a1[32], a1[33], a1[34], a1[35], a1[30], a1[31], a1[28], a1[29], *(a1 + 146), *(a1 + 144), *(a1 + 145), v9);
      v95 = sub_66A18();
      v93 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v95, 18, v93, "AVE_VerifyImageBuffer", 541, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v94, 18, v51, "AVE_VerifyImageBuffer", 541, v92, v52, v53, v54, v55, v56, v57);
    }

    v49 = v9 & 2;
  }

  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraRowsOnTop = 0;
  CVPixelBufferGetExtendedPixels(*a2, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  v58 = CVPixelBufferGetWidthOfPlane(*a2, 0);
  v59 = CVPixelBufferGetHeightOfPlane(*a2, 0);
  v60 = extraColumnsOnLeft;
  v61 = extraColumnsOnRight;
  v62 = extraColumnsOnLeft + extraColumnsOnRight + v58;
  v63 = extraRowsOnTop;
  v64 = extraRowsOnBottom;
  v65 = extraRowsOnTop + extraRowsOnBottom + v59;
  v66 = *(v8 + 28);
  v67 = *(v8 + 16);
  *(a1 + 15) = *v8;
  *(a1 + 19) = v67;
  *(a1 + 22) = v66;
  a1[26] = v62;
  a1[27] = v65;
  a1[32] = v60;
  a1[33] = v61;
  a1[34] = v63;
  a1[35] = v64;
  a1[30] = CVPixelBufferGetBytesPerRowOfPlane(*a2, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*a2, 1uLL);
  a1[31] = BytesPerRowOfPlane;
  if (*(v8 + 12))
  {
    v69 = BytesPerRowOfPlane;
  }

  else
  {
    v69 = 0;
  }

  a1[28] = a1[30];
  a1[29] = v69;
  v70 = v9 & 1;
  if ((v9 & 0x10) != 0)
  {
    v70 = 1;
  }

  *(a1 + 146) = v70;
  *(a1 + 144) = v49 >> 1;
  if ((~v9 & 0x500) != 0)
  {
    v71 = 0;
  }

  else
  {
    v71 = 5;
  }

  if ((~v9 & 0x50000) == 0)
  {
    v71 |= 0xAu;
  }

  *(a1 + 145) = v71;
  if (poolOut)
  {
    *a3 = poolOut;
  }

  if (sub_56A8C(0x12u, 7))
  {
    v72 = sub_56AD0(0x12u);
    v96 = sub_66A18();
    v73 = sub_56B04(7);
    v74 = *a1;
    v75 = a1[1];
    v76 = a1[2];
    v77 = a1[3];
    v78 = a1[4];
    v79 = a1[5];
    v80 = a1[6];
    if (v72)
    {
      printf("%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x\n", v96, 18, v73, "AVE_VerifyImageBuffer", 616, v74, v75, v76, v77, v78, v79, v80, a1[7], a1[12], *(a1 + 52), a1[14], a1[26], a1[27], a1[32], a1[33], a1[34], a1[35], a1[30], a1[31], a1[28], a1[29], *(a1 + 146), *(a1 + 144), *(a1 + 145), v9);
      v81 = sub_66A18();
      v82 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v81, 18, v82, "AVE_VerifyImageBuffer", 616, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v96, 18, v73, "AVE_VerifyImageBuffer", 616, v74, v75, v76, v77, v78, v79, v80);
    }
  }

  v38 = 0;
LABEL_47:
  if ((a1[36] & 1) == 0)
  {
    CVPixelBufferRelease(*a2);
  }

  return v38;
}

uint64_t sub_235F0(int *a1, CVPixelBufferRef *a2, CVPixelBufferPoolRef *a3, uint64_t a4)
{
  pixelBufferOut = 0;
  CVPixelBufferRetain(*a2);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(*a2, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(*a2, 0);
  v10 = *a3;
  if (*a3)
  {
LABEL_2:
    v11 = CVPixelBufferPoolCreatePixelBuffer(0, v10, &pixelBufferOut);
    if (v11)
    {
      v12 = v11;
      if (sub_56A8C(3u, 4))
      {
        v13 = sub_56AD0(3u);
        v14 = sub_66A18();
        v15 = sub_56B04(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to crete pixel buffer from a pool %d\n", v14, 3, v15, "AVE_ImageBuf_Transfer", 758, "err == kCVReturnSuccess", v12);
          v14 = sub_66A18();
          v26 = "err == kCVReturnSuccess";
          v27 = v12;
          v25 = 758;
          v24 = sub_56B04(4);
        }

        else
        {
          v27 = v12;
          v25 = 758;
          v26 = "err == kCVReturnSuccess";
          v24 = v15;
        }

        v16 = "%lld %d AVE %s: %s:%d %s | failed to crete pixel buffer from a pool %d";
LABEL_20:
        syslog(3, v16, v14, 3, v24, "AVE_ImageBuf_Transfer", v25, v26, v27);
        goto LABEL_22;
      }
    }

    else
    {
      v12 = sub_531B4(*a2, pixelBufferOut);
      if (!v12)
      {
        CVPixelBufferRelease(*a2);
        *a2 = pixelBufferOut;
        return v12;
      }

      if (sub_56A8C(3u, 4))
      {
        v20 = sub_56AD0(3u);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.\n", v21, 3, v22, "AVE_ImageBuf_Transfer", 763, "err == noErr", *a2, a1[15], a4, v12);
          v21 = sub_66A18();
          v22 = sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.", v21, 3, v22, "AVE_ImageBuf_Transfer", 763, "err == noErr", *a2, a1[15], a4, v12);
      }
    }

    goto LABEL_22;
  }

  v17 = sub_51164(a1[2], a1[3], a1[4], a1[5], WidthOfPlane, HeightOfPlane, *a1, a1[1], a4, a3);
  if (!v17)
  {
    v10 = *a3;
    goto LABEL_2;
  }

  v12 = v17;
  if (sub_56A8C(3u, 4))
  {
    v18 = sub_56AD0(3u);
    v14 = sub_66A18();
    v19 = sub_56B04(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s:%d %s | failed to create a buffer pool %d\n", v14, 3, v19, "AVE_ImageBuf_Transfer", 751, "err == noErr", v12);
      v14 = sub_66A18();
      v26 = "err == noErr";
      v27 = v12;
      v25 = 751;
      v24 = sub_56B04(4);
    }

    else
    {
      v27 = v12;
      v25 = 751;
      v26 = "err == noErr";
      v24 = v19;
    }

    v16 = "%lld %d AVE %s: %s:%d %s | failed to create a buffer pool %d";
    goto LABEL_20;
  }

LABEL_22:
  CVPixelBufferRelease(*a2);
  if (pixelBufferOut)
  {
    CVPixelBufferRelease(pixelBufferOut);
    pixelBufferOut = 0;
  }

  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v12;
}

uint64_t sub_23990(uint64_t a1)
{
  v2 = sub_4C960();
  if (sub_56A8C(0xDu, 6))
  {
    v3 = sub_56AD0(0xDu);
    v4 = sub_66A18();
    v5 = sub_56B04(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v4, 13, v5, "AVE_Session_MCTF_CreatePropertyDict", a1);
      v6 = sub_66A18();
      v30 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v6, 13, v30, "AVE_Session_MCTF_CreatePropertyDict", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v4, 13, v5, "AVE_Session_MCTF_CreatePropertyDict", a1);
    }
  }

  if (a1)
  {
    if (v2[396])
    {
      v7 = 257;
    }

    else
    {
      v7 = 258;
    }

    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      if (sub_56A8C(0xDu, 4))
      {
        v19 = sub_56AD0(0xDu);
        v20 = sub_66A18();
        v21 = sub_56B04(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d\n", v20, 13, v21, "AVE_Session_MCTF_CreatePropertyDict", 60, "pDict != __null", a1, *(a1 + 24), v7, 0);
          v22 = sub_66A18();
          v32 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d", v22, 13, v32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d", v20, 13, v21);
        }
      }

      v11 = 4294966293;
      goto LABEL_29;
    }

    v9 = Mutable;
    v10 = sub_1B9EC(*(a1 + 32), v7, *(a1 + 24), Mutable);
    if (v10)
    {
      v11 = v10;
      if (sub_56A8C(0xDu, 4))
      {
        v12 = sub_56AD0(0xDu);
        v13 = sub_66A18();
        v14 = sub_56B04(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to make MCTF Property dictionary %p %lld %p %d 0x%x %d\n", v13, 13, v14, "AVE_Session_MCTF_CreatePropertyDict", 65, "ret == 0", a1, *(a1 + 24), v9, *(a1 + 32), v7, v11);
          v15 = sub_66A18();
          v31 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make MCTF Property dictionary %p %lld %p %d 0x%x %d", v15, 13, v31, "AVE_Session_MCTF_CreatePropertyDict", 65);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make MCTF Property dictionary %p %lld %p %d 0x%x %d", v13, 13, v14, "AVE_Session_MCTF_CreatePropertyDict", 65);
        }
      }

LABEL_29:
      v24 = *(a1 + 87144);
      if (v24)
      {
        CFRelease(v24);
        *(a1 + 87144) = 0;
      }

      goto LABEL_31;
    }

    v23 = *(a1 + 87144);
    if (v23)
    {
      CFRelease(v23);
    }

    v11 = 0;
    *(a1 + 87144) = v9;
  }

  else
  {
    if (sub_56A8C(0xDu, 4))
    {
      v16 = sub_56AD0(0xDu);
      v17 = sub_66A18();
      v18 = sub_56B04(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v17, 13, v18, "AVE_Session_MCTF_CreatePropertyDict", 44, "pMCTF != __null", 0);
        v17 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v17);
    }

    v11 = 4294966295;
  }

LABEL_31:
  if (sub_56A8C(0xDu, 6))
  {
    v25 = sub_56AD0(0xDu);
    v26 = sub_66A18();
    v27 = sub_56B04(6);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v26, 13, v27, "AVE_Session_MCTF_CreatePropertyDict", a1, v11);
      v28 = sub_66A18();
      v33 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v28, 13, v33, "AVE_Session_MCTF_CreatePropertyDict", a1, v11);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v26, 13, v27, "AVE_Session_MCTF_CreatePropertyDict", a1, v11);
    }
  }

  return v11;
}

uint64_t sub_23E64(uint64_t a1)
{
  if (sub_56A8C(0x10u, 6))
  {
    v2 = sub_56AD0(0x10u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 16, v4, "AVE_Session_MCTF_Open", a1);
      v5 = sub_66A18();
      v39 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 16, v39, "AVE_Session_MCTF_Open", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 16, v4, "AVE_Session_MCTF_Open", a1);
    }
  }

  if (a1)
  {
    if (*(a1 + 40))
    {
      v6 = 0;
      goto LABEL_19;
    }

    sub_56B34();
    sub_4E028();
    v10 = sub_4C960();
    sub_57D40((v10 + 138));
    *(a1 + 64) = 0;
    v11 = (a1 + 64);
    *(a1 + 10724) = 2;
    *(a1 + 16) = 3;
    sub_3B804(3, 2, (a1 + 64));
    if (*(a1 + 64))
    {
      if (sub_56A8C(0x10u, 6))
      {
        v12 = sub_56AD0(0x10u);
        v13 = sub_66A18();
        v14 = sub_56B04(6);
        if (v12)
        {
          printf("%lld %d AVE %s: %s pDrvInstance = %p\n", v13, 16, v14, "AVE_Session_MCTF_Open", *v11);
          v13 = sub_66A18();
          v14 = sub_56B04(6);
        }

        syslog(3, "%lld %d AVE %s: %s pDrvInstance = %p", v13, 16, v14, "AVE_Session_MCTF_Open", *v11);
      }

      *(a1 + 24) = sub_3BF14(*(a1 + 64));
      v23 = sub_3BF08(*(a1 + 64));
      *(a1 + 32) = v23;
      v24 = *(sub_202BC(v23) + 1);
      *(a1 + 36) = v24;
      if (v24 <= 16)
      {
        if (sub_56A8C(0x10u, 4))
        {
          v30 = sub_56AD0(0x10u);
          v31 = sub_66A18();
          v32 = sub_56B04(4);
          if (v30)
          {
            printf("%lld %d AVE %s: %s:%d %s | device type not supporte %d < %d\n", v31, 16, v32, "AVE_Session_MCTF_Open", 143, "pMCTF->eDevType >= AVE_DevType_H15", *(a1 + 36), 17);
            v31 = sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | device type not supporte %d < %d", v31);
        }

        v6 = 4294966294;
      }

      else
      {
        sub_1D4EC(*(a1 + 24), (a1 + 104));
        v25 = *(a1 + 24);
        sub_73240((a1 + 87200), v25);
        *(a1 + 664) = v10[103];
        v6 = sub_23990(a1);
        if (!v6)
        {
          *(a1 + 72) = a1;
          *(a1 + 88) = sub_24594;
          *(a1 + 40) = 1;
          goto LABEL_19;
        }

        if (sub_56A8C(0xCu, 4))
        {
          v26 = sub_56AD0(0xCu);
          v27 = sub_66A18();
          v28 = sub_56B04(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create property dictionary %p %lld %d\n", v27, 12, v28, "AVE_Session_MCTF_Open", 157, "ret == 0", a1, v25, v6);
            v29 = sub_66A18();
            v41 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create property dictionary %p %lld %d", v29, 12, v41);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create property dictionary %p %lld %d", v27, 12, v28);
          }
        }
      }
    }

    else
    {
      if (sub_56A8C(0x10u, 4))
      {
        v20 = sub_56AD0(0x10u);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create driver instance %p %d\n", v21, 16, v22, "AVE_Session_MCTF_Open", 133, "pMCTF->pDrvInstance != __null", a1, 0);
          v21 = sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create driver instance %p %d", v21, 16);
      }

      v6 = 4294966296;
    }

    for (i = *v11; *v11; v6 = 4294966296)
    {
      v34 = sub_3BF20(i);
      *v11 = 0;
      if (!v34)
      {
        break;
      }

      v35 = v34;
      if (sub_56A8C(0x10u, 4))
      {
        v36 = sub_56AD0(0x10u);
        v37 = sub_66A18();
        v38 = sub_56B04(4);
        if (v36)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Destroy failed %p %d\n", v37, 16, v38, "AVE_Session_MCTF_Open", 176, "res == noErr", a1, v35);
          v37 = sub_66A18();
          v38 = sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Destroy failed %p %d", v37, 16, v38, "AVE_Session_MCTF_Open", 176, "res == noErr", a1, v35);
      }

      i = *v11;
    }
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v7 = sub_56AD0(0x10u);
      v8 = sub_66A18();
      v9 = sub_56B04(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d\n", v8, 16, v9, "AVE_Session_MCTF_Open", 110, "pMCTF != __null", 0, 0);
        v8 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d", v8, 16);
    }

    v6 = 4294966295;
  }

LABEL_19:
  if (sub_56A8C(0x10u, 6))
  {
    v15 = sub_56AD0(0x10u);
    v16 = sub_66A18();
    v17 = sub_56B04(6);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v16, 16, v17, "AVE_Session_MCTF_Open", a1, v6);
      v18 = sub_66A18();
      v40 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v18, 16, v40, "AVE_Session_MCTF_Open", a1, v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v16, 16, v17, "AVE_Session_MCTF_Open", a1, v6);
    }
  }

  return v6;
}

uint64_t sub_24594(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_56A8C(0x10u, 6))
  {
    v6 = sub_56AD0(0x10u);
    v7 = sub_66A18();
    v8 = sub_56B04(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d\n", v7, 16, v8, "AVE_Session_MCTF_CallBack", a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %d", v7);
  }

  if (a1 && a2)
  {
    v9 = *(a2 + 2568);
    v10 = *(a2 + 2584);
    if (v9)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(*(a2 + 2568));
      if (sub_56A8C(0x10u, 8))
      {
        v12 = sub_56AD0(0x10u);
        v36 = sub_66A18();
        v13 = sub_56B04(8);
        v14 = a1[3];
        Width = CVPixelBufferGetWidth(v9);
        Height = CVPixelBufferGetHeight(v9);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d: pMCTF = %p %lld, output CVPixelFormatType = %d %lu x %lu\n", v36, 16, v13, "AVE_Session_MCTF_CallBack", 1071, a1, v14, PixelFormatType, Width, Height);
          v17 = sub_66A18();
          v18 = sub_56B04(8);
          CVPixelBufferGetWidth(v9);
          CVPixelBufferGetHeight(v9);
          syslog(3, "%lld %d AVE %s: %s:%d: pMCTF = %p %lld, output CVPixelFormatType = %d %lu x %lu", v17, 16, v18, "AVE_Session_MCTF_CallBack");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d: pMCTF = %p %lld, output CVPixelFormatType = %d %lu x %lu", v36, 16, v13, "AVE_Session_MCTF_CallBack");
        }
      }

      v28 = a1[10899];
      if (v28)
      {
        sub_41FA4(v28, v9);
      }

      v27 = sub_2738C(a1[1], *(a2 + 2552), a3, (a2 + 4560), v9);
      CVPixelBufferRelease(v9);
    }

    else
    {
      if (sub_56A8C(0x10u, 4))
      {
        v23 = sub_56AD0(0x10u);
        v24 = sub_66A18();
        v25 = sub_56B04(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | pOutBuf is NULL %p %p %d\n", v24, 16, v25, "AVE_Session_MCTF_CallBack", 1076, "pOutBuf != __null", a1, a2, a3);
          v26 = sub_66A18();
          v35 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | pOutBuf is NULL %p %p %d", v26, 16, v35);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | pOutBuf is NULL %p %p %d", v24, 16, v25);
        }
      }

      v27 = 4294966295;
    }

    VTTemporalFilterPluginSessionCleanUpAfterProcessing();
    if (v10)
    {
      CVPixelBufferRelease(v10);
    }
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v19 = sub_56AD0(0x10u);
      v20 = sub_66A18();
      v21 = sub_56B04(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v20, 16, v21, "AVE_Session_MCTF_CallBack", 1062, "pMCTF != __null && pFrame != __null", a1, a2, a3);
        v22 = sub_66A18();
        v34 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v22, 16, v34);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v20, 16, v21);
      }
    }

    v27 = 4294966295;
  }

  if (sub_56A8C(0x10u, 6))
  {
    v29 = sub_56AD0(0x10u);
    v30 = sub_66A18();
    v31 = sub_56B04(6);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d, ret = %d\n", v30, 16, v31, "AVE_Session_MCTF_CallBack", a1, a2, a3, v27);
      v32 = sub_66A18();
      sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d, ret = %d", v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d, ret = %d", v30);
    }
  }

  return v27;
}

uint64_t sub_24AA0(uint64_t a1)
{
  if (sub_56A8C(0x10u, 6))
  {
    v2 = sub_56AD0(0x10u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 16, v4, "AVE_Session_MCTF_Close", a1);
      v5 = sub_66A18();
      v27 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 16, v27, "AVE_Session_MCTF_Close", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 16, v4, "AVE_Session_MCTF_Close", a1);
    }
  }

  if (a1)
  {
    if (sub_56A8C(0x10u, 6))
    {
      v6 = sub_56AD0(0x10u);
      v7 = sub_66A18();
      v8 = sub_56B04(6);
      if (v6)
      {
        printf("%lld %d AVE %s: %s state %d\n", v7, 16, v8, "AVE_Session_MCTF_Close", *(a1 + 40));
        v7 = sub_66A18();
        v8 = sub_56B04(6);
      }

      syslog(3, "%lld %d AVE %s: %s state %d", v7, 16, v8, "AVE_Session_MCTF_Close", *(a1 + 40));
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      if (v12 == 2)
      {
        v29 = 0;
        sub_3E80C(*(a1 + 64), &v29, 1);
      }

      v13 = *(a1 + 104);
      if (v13)
      {
        sub_1E5F0(v13);
        sub_1D898(*(a1 + 104));
        *(a1 + 104) = 0;
      }

      if (sub_3BF20(*(a1 + 64)))
      {
        if (sub_56A8C(0x10u, 4))
        {
          v14 = sub_56AD0(0x10u);
          v15 = sub_66A18();
          v16 = sub_56B04(4);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Destroy failed %p %d\n", v15, 16, v16, "AVE_Session_MCTF_Close", 235, "res == noErr", a1, 0);
            v15 = sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Destroy failed %p %d", v15, 16);
        }

        v12 = 4294966296;
      }

      else
      {
        v12 = 0;
        *(a1 + 64) = 0;
        *(a1 + 40) = 0;
      }
    }

    sub_4E1A8();
    v17 = *(a1 + 87192);
    if (v17)
    {
      sub_41C70(v17);
      *(a1 + 87192) = 0;
    }

    v18 = *(a1 + 48);
    if (v18)
    {
      CFRelease(v18);
      *(a1 + 48) = 0;
    }

    v19 = *(a1 + 56);
    if (v19)
    {
      CFRelease(v19);
      *(a1 + 56) = 0;
    }

    v20 = *(a1 + 87144);
    if (v20)
    {
      CFRelease(v20);
      *(a1 + 87144) = 0;
    }

    v21 = *(a1 + 87928);
    if (v21)
    {
      CVPixelBufferRelease(v21);
      *(a1 + 87928) = 0;
    }

    sub_733FC((a1 + 87200));
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v9 = sub_56AD0(0x10u);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d\n", v10, 16, v11, "AVE_Session_MCTF_Close", 204, "pMCTF != __null", 0, 0);
        v10 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d", v10, 16);
    }

    sub_4E1A8();
    v12 = 4294966295;
  }

  if (sub_56A8C(0x10u, 6))
  {
    v22 = sub_56AD0(0x10u);
    v23 = sub_66A18();
    v24 = sub_56B04(6);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v23, 16, v24, "AVE_Session_MCTF_Close", a1, v12);
      v25 = sub_66A18();
      v28 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v25, 16, v28, "AVE_Session_MCTF_Close", a1, v12);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v23, 16, v24, "AVE_Session_MCTF_Close", a1, v12);
    }
  }

  return v12;
}

uint64_t sub_24F28(uint32x2_t *a1, unsigned int *a2)
{
  cf = 0;
  memset(v70, 0, sizeof(v70));
  if (sub_56A8C(0x10u, 6))
  {
    v4 = sub_56AD0(0x10u);
    v5 = sub_66A18();
    v6 = sub_56B04(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 16, v6, "AVE_Session_MCTF_Start", a1, a2);
      v7 = sub_66A18();
      v63 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 16, v63, "AVE_Session_MCTF_Start", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 16, v6, "AVE_Session_MCTF_Start", a1, a2);
    }
  }

  if (!a1 || !a2)
  {
    if (sub_56A8C(0x10u, 4))
    {
      v11 = sub_56AD0(0x10u);
      v12 = sub_66A18();
      v13 = sub_56B04(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v12, 16, v13, "AVE_Session_MCTF_Start", 307, "pMCTF != __null && pDimension != __null", a1, a2, 0);
        v12 = sub_66A18();
        v64 = sub_56B04(4);
      }

      else
      {
        v64 = v13;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 16, v64);
    }

    goto LABEL_22;
  }

  if (*a2 < 1 || a2[1] <= 0)
  {
    if (sub_56A8C(0x10u, 4))
    {
      v14 = sub_56AD0(0x10u);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %dx%d %d\n", v15, 16, v16, "AVE_Session_MCTF_Start", 312, "pDimension->iWidth > 0 && pDimension->iHeight > 0", a1, a2, *a2, a2[1], 0);
        v17 = sub_66A18();
        v65 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %dx%d %d", v17, 16, v65, "AVE_Session_MCTF_Start");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %dx%d %d", v15, 16, v16, "AVE_Session_MCTF_Start");
      }
    }

LABEL_22:
    v18 = 4294966295;
    goto LABEL_23;
  }

  if (sub_56A8C(0x10u, 6))
  {
    v8 = sub_56AD0(0x10u);
    v9 = sub_66A18();
    v10 = sub_56B04(6);
    if (v8)
    {
      printf("%lld %d AVE %s: %s state %d\n", v9, 16, v10, "AVE_Session_MCTF_Start", a1[5].i32[0]);
      v9 = sub_66A18();
      v10 = sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s state %d", v9, 16, v10, "AVE_Session_MCTF_Start", a1[5].i32[0]);
  }

  if (a1[5].i32[0] == 1)
  {
    v23 = sub_4C960();
    if ((*(v23 + 412) & 2) != 0)
    {
      v24 = a1 + 10899;
      v25 = sub_41844(&a1[10899], a2);
      if (v25)
      {
        v26 = v25;
        *v24 = 0;
        if (sub_56A8C(0x10u, 5))
        {
          v27 = sub_56AD0(0x10u);
          v28 = sub_66A18();
          v29 = sub_56B04(5);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d AVE_MCTF_Dump_CreateOutputFile failed %p %p %d\n", v28, 16, v29, "AVE_Session_MCTF_Start", 336, *v24, a2, v26);
            v28 = sub_66A18();
            sub_56B04(5);
          }

          syslog(3, "%lld %d AVE %s: %s:%d AVE_MCTF_Dump_CreateOutputFile failed %p %p %d", v28, 16);
        }
      }
    }

    v33 = *a2;
    v34 = a2[1];
    a1[174].i32[0] = *a2;
    a1[174].i32[1] = v34;
    v35 = sub_48670(a1[4].i32[0], 3, 2, v33, v34, 1);
    if (v35)
    {
      v36 = v35;
      if (sub_56A8C(0x10u, 4))
      {
        v37 = sub_56AD0(0x10u);
        v38 = sub_66A18();
        v39 = sub_56B04(4);
        if (v37)
        {
          printf("%lld %d AVE %s: %s:%d %s | dimensions not supported %p %p (%dx%d) %d\n", v38, 16, v39, "AVE_Session_MCTF_Start", 350, "ret == 0", a1, a2, a1[174].i32[0], a1[174].i32[1], v36);
          v40 = sub_66A18();
          v66 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | dimensions not supported %p %p (%dx%d) %d", v40, 16, v66, "AVE_Session_MCTF_Start");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | dimensions not supported %p %p (%dx%d) %d", v38, 16, v39, "AVE_Session_MCTF_Start");
        }
      }

      v18 = 4294965295;
    }

    else
    {
      v41 = sub_48758(a1[4].i32[0], 3, 2);
      v42 = a1[174];
      a1[10894] = vmax_u32(v42, *v41);
      v43 = vshr_n_u32(vadd_s32(v42, 0x1F0000001FLL), 5uLL);
      v44 = vmul_lane_s32(v43, v43, 1).u32[0];
      if (v44 >> 5 < 0xFF)
      {
        if (v44 <= 0x7F7)
        {
          v45 = &unk_B1D00;
        }

        else
        {
          v45 = &unk_B1D10;
        }
      }

      else
      {
        v45 = &unk_B1D20;
      }

      memset_pattern16(&a1[1312], v45, 8uLL);
      if (sub_56A8C(0x10u, 8))
      {
        v47 = sub_56AD0(0x10u);
        v48 = sub_66A18();
        v49 = sub_56B04(8);
        if (v47)
        {
          printf("%lld %d AVE %s: %s:%d %p %lld Default FilterStrength %d, %d\n", v48, 16, v49, "AVE_Session_MCTF_Start", 384, a1, *&a1[3], a1[1312].i32[0], a1[1312].i32[1]);
          v48 = sub_66A18();
          sub_56B04(8);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %p %lld Default FilterStrength %d, %d", v48, 16);
      }

      a1[1313].i32[0] = 2;
      a1[168] = 0xFFFFFFFF00000001;
      a1[80].i32[0] |= 0x200u;
      a1[10989] = 0x100000001;
      sub_4458C(a1);
      if ((*(v23 + 35) & 4) != 0)
      {
        a1[1313].i32[0] = 1;
      }

      v50 = *(v23 + 272);
      if ((v50 & 0x80000000) == 0)
      {
        a1[168].i32[0] = v50;
      }

      v51 = *(v23 + 273);
      if ((v51 & 0x80000000) == 0)
      {
        a1[168].i32[1] = v51;
      }

      a1[80].i32[0] = (a1[80].i32[0] | *(v23 + 16) & 0x200) & (~*(v23 + 34) | 0xFFFFFDFF);
      v52 = *(v23 + 20);
      if (v52 >= -1)
      {
        a1[80].i32[1] = v52;
      }

      v53 = sub_507A8(a1[4].u32[0], a1[2].u32[0], a1[83].u32[1], 2, *a2, a2[1], a1[10894].i32[0], a1[10894].i32[1], 0x414C4C20u, 1, v70, &cf);
      if (v53)
      {
        v18 = v53;
        if (sub_56A8C(0x10u, 4))
        {
          v54 = sub_56AD0(0x10u);
          v55 = sub_66A18();
          v56 = sub_56B04(4);
          if (v54)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create input pixel buffer attribute %d %d 0x%x %d %dx%d %dx%d 0x%x %d\n", v55, 16, v56, "AVE_Session_MCTF_Start", 437, "ret == 0", a1[4].i32[0], a1[2].i32[0], a1[83].i32[1], 2, *a2, a2[1], a1[10894].i32[0], a1[10894].i32[1], 1095519264, v18);
            v57 = sub_66A18();
            v67 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create input pixel buffer attribute %d %d 0x%x %d %dx%d %dx%d 0x%x %d", v57, 16, v67, "AVE_Session_MCTF_Start", 437);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create input pixel buffer attribute %d %d 0x%x %d %dx%d %dx%d 0x%x %d", v55, 16, v56, "AVE_Session_MCTF_Start", 437);
          }
        }
      }

      else
      {
        v58 = a1[6];
        if (v58)
        {
          CFRelease(v58);
          a1[6] = 0;
        }

        a1[6] = CFRetain(cf);
        v18 = VTTemporalFilterPluginSessionSetInputPixelBufferAttributes();
        if (v18)
        {
          if (sub_56A8C(0x10u, 4))
          {
            v59 = sub_56AD0(0x10u);
            v60 = sub_66A18();
            v61 = sub_56B04(4);
            if (v59)
            {
              printf("%lld %d AVE %s: %s:%d %s | Fail to set MCTF InputPixelBufferAttributes, %p %lld %p %p %d\n", v60, 16, v61, "AVE_Session_MCTF_Start", 450, "err == noErr", a1, *&a1[3], *&a1[1], *&a1[6], v18);
              v62 = sub_66A18();
              v68 = sub_56B04(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | Fail to set MCTF InputPixelBufferAttributes, %p %lld %p %p %d", v62, 16, v68, "AVE_Session_MCTF_Start", 450);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | Fail to set MCTF InputPixelBufferAttributes, %p %lld %p %p %d", v60, 16, v61, "AVE_Session_MCTF_Start", 450);
            }
          }

          v18 = 4294966296;
        }

        else
        {
          a1[10892].i32[0] = 0;
          a1[10991] = 0;
          a1[10992].i32[1] = 0;
          a1[5].i32[0] = 2;
        }
      }
    }
  }

  else
  {
    if (sub_56A8C(0x10u, 5))
    {
      v30 = sub_56AD0(0x10u);
      v31 = sub_66A18();
      v32 = sub_56B04(5);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d wrong state %p %d\n", v31, 16, v32, "AVE_Session_MCTF_Start", 321, a1, a1[5].i32[0]);
        v31 = sub_66A18();
        sub_56B04(5);
      }

      syslog(3, "%lld %d AVE %s: %s:%d wrong state %p %d", v31);
    }

    v18 = 4294966285;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v18)
  {
    v46 = a1[10899];
    if (v46)
    {
      sub_41C70(v46);
      a1[10899] = 0;
    }
  }

LABEL_23:
  if (sub_56A8C(0x10u, 6))
  {
    v19 = sub_56AD0(0x10u);
    v20 = sub_66A18();
    v21 = sub_56B04(6);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v20, 16, v21, "AVE_Session_MCTF_Start", a1, a2, v18);
      v20 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v20);
  }

  return v18;
}

uint64_t sub_25B38(uint64_t a1)
{
  v20 = 0;
  if (sub_56A8C(0x10u, 6))
  {
    v2 = sub_56AD0(0x10u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 16, v4, "AVE_Session_MCTF_Stop", a1);
      v5 = sub_66A18();
      v18 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 16, v18, "AVE_Session_MCTF_Stop", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 16, v4, "AVE_Session_MCTF_Stop", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      if (v6 == 2 && sub_3EF90(*(a1 + 64), &v20))
      {
        if (sub_56A8C(0x10u, 4))
        {
          v7 = sub_56AD0(0x10u);
          v8 = sub_66A18();
          v9 = sub_56B04(4);
          if (v7)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Complete %s:%d failed.\n", v8, 16, v9, "AVE_Session_MCTF_Stop", 513, "res == noErr", "AVE_Session_MCTF_Stop", 513);
            v8 = sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Complete %s:%d failed.", v8, 16);
        }

        v6 = 4294966296;
      }

      else
      {
        v6 = 0;
        *(a1 + 40) = 1;
        *(a1 + 87920) = 0;
      }
    }
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v10 = sub_56AD0(0x10u);
      v11 = sub_66A18();
      v12 = sub_56B04(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d\n", v11, 16, v12, "AVE_Session_MCTF_Stop", 498, "pMCTF != __null", 0, 0);
        v11 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d", v11, 16);
    }

    v6 = 4294966295;
  }

  if (sub_56A8C(0x10u, 6))
  {
    v13 = sub_56AD0(0x10u);
    v14 = sub_66A18();
    v15 = sub_56B04(6);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v14, 16, v15, "AVE_Session_MCTF_Stop", a1, v6);
      v16 = sub_66A18();
      v19 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v16, 16, v19, "AVE_Session_MCTF_Stop", a1, v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v14, 16, v15, "AVE_Session_MCTF_Stop", a1, v6);
    }
  }

  return v6;
}

uint64_t sub_25E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v8;
  buffer = v13;
  v146 = 0;
  v18 = v8 + 86016;
  v145 = 0;
  v144 = 0;
  pixelBuffer = 0;
  v142 = 0;
  memset(v141, 0, sizeof(v141));
  v19 = *(v8 + 87136);
  v20 = *(v8 + 10508);
  if (sub_56A8C(0x10u, 8))
  {
    v21 = sub_56AD0(0x10u);
    v22 = sub_66A18();
    v23 = sub_56B04(8);
    if (v21)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p\n", v22, 16, v23, "AVE_Session_MCTF_Process", v17, v16, v14, v12, v10);
      v24 = sub_66A18();
      v116 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", v24, 16, v116);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", v22, 16, v23);
    }
  }

  v25 = buffer;
  if (v12 && v16 && buffer)
  {
    if (*(v17 + 40) != 2)
    {
      if (sub_56A8C(0x10u, 5))
      {
        v40 = sub_56AD0(0x10u);
        v41 = sub_66A18();
        v42 = sub_56B04(5);
        if (v40)
        {
          printf("%lld %d AVE %s: %s:%d wrong state %p %d\n", v41, 16, v42, "AVE_Session_MCTF_Process", 636, v17, *(v17 + 40));
          v41 = sub_66A18();
          sub_56B04(5);
        }

        syslog(3, "%lld %d AVE %s: %s:%d wrong state %p %d", v41);
      }

      v43 = 4294966285;
      goto LABEL_90;
    }

    if (!*(v18 + 1120))
    {
      v26 = sub_4C960();
      *&v149[0] = *(v17 + 1392);
      PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
      v28 = sub_5D820(PixelFormatType);
      if (!v28)
      {
        if (sub_56A8C(3u, 4))
        {
          v69 = sub_56AD0(3u);
          v70 = sub_66A18();
          v71 = sub_56B04(4);
          v72 = *(v17 + 24);
          v73 = CVPixelBufferGetPixelFormatType(buffer);
          if (v69)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v70, 3, v71, "AVE_Session_MCTF_Process", 651, "pPixelFmt != __null", v17, v72, v73);
            v70 = sub_66A18();
            v71 = sub_56B04(4);
            CVPixelBufferGetPixelFormatType(buffer);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x", v70, 3, v71);
        }

        v43 = 4294966288;
        goto LABEL_90;
      }

      if (v26[420])
      {
        v29 = v26 + 420;
      }

      else
      {
        v29 = 0;
      }

      sub_1E094(*(v17 + 104), v29, *(v17 + 16), 4, *(v26 + 103), *(v26 + 104), v149, 1, *(v28 + 3), *(v28 + 1), 0);
      v25 = buffer;
    }

    sub_1E7AC(*(v17 + 104), 0, v25);
    if ((*(v18 + 1904) & 1) == 0)
    {
      v44 = sub_44184(v17, &buffer, &v146, &v145, &v144 + 1, &v144, 1);
      if (v44)
      {
        v45 = v44;
        if (sub_56A8C(0x10u, 4))
        {
          v46 = sub_56AD0(0x10u);
          v47 = sub_66A18();
          v48 = sub_56B04(4);
          if (v46)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE_VerifyImageBuffer failed, ret = %d, pMCTF = %p, %p, %lld\n", v47, 16, v48, "AVE_Session_MCTF_Process", 682, "ret == noErr", v45, v17, *(v17 + 8), *(v17 + 24));
            v47 = sub_66A18();
            v48 = sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_VerifyImageBuffer failed, ret = %d, pMCTF = %p, %p, %lld", v47, 16, v48, "AVE_Session_MCTF_Process");
        }

        goto LABEL_89;
      }

      bzero(&v149[1] + 8, 0x1080uLL);
      *&v149[0] = v17 + 624;
      *(&v149[0] + 1) = v17 + 1392;
      v62 = *(v17 + 104);
      *&v149[1] = v17 + 10704;
      *&v149[2] = v62;
      memcpy(v150, (v17 + 87200), sizeof(v150));
      v152 = v17 + 11952;
      v153 = v17 + 24188;
      v154 = v17 + 31992;
      v155 = v17 + 41624;
      v156 = v17 + 63112;
      v63 = sub_3C464(*(v17 + 64), v149, v17 + 72, 1, 0, 0, 0, v17 + 112, (v17 + 11724), 0);
      if (v63)
      {
        v64 = v63;
        if (sub_56A8C(0x10u, 4))
        {
          v65 = sub_56AD0(0x10u);
          v66 = sub_66A18();
          v67 = sub_56B04(4);
          if (v65)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Start failed, res = %d, pMCTF = %p, %p, %lld\n", v66, 16, v67, "AVE_Session_MCTF_Process", 703, "res == noErr", v64, v17, *(v17 + 8), *(v17 + 24));
            v68 = sub_66A18();
            v118 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Start failed, res = %d, pMCTF = %p, %p, %lld", v68, 16, v118, "AVE_Session_MCTF_Process");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Start failed, res = %d, pMCTF = %p, %p, %lld", v66, 16, v67, "AVE_Session_MCTF_Process");
          }
        }

        goto LABEL_89;
      }

      *(v18 + 1904) = 1;
    }

    if (!*(v17 + 56))
    {
      v49 = CVPixelBufferGetPixelFormatType(buffer);
      v50 = sub_5D820(v49);
      if (*(v50 + 6) != 3)
      {
        memset(&v149[1], 0, 28);
        v149[0] = 0u;
        v51 = *(v50 + 28);
        v52 = *v50;
        v149[1] = *(v50 + 1);
        *(&v149[1] + 12) = v51;
        v149[0] = v52;
        DWORD2(v149[1]) = 3;
        v53 = sub_5D858(v149);
        if (!v53)
        {
          if (sub_56A8C(0x10u, 4))
          {
            v93 = sub_56AD0(0x10u);
            v94 = sub_66A18();
            v95 = sub_56B04(4);
            if (v93)
            {
              printf("%lld %d AVE %s: %s:%d %s | Find output pixel format failed, %p %p %lld %d %d %d %d %d %d %d\n", v94, 16, v95, "AVE_Session_MCTF_Process", 725, "inputFormat != 0", v17, *(v17 + 8), *(v17 + 24), LODWORD(v149[2]), DWORD2(v149[1]), HIDWORD(v149[0]), DWORD1(v149[0]), DWORD2(v149[0]), LODWORD(v149[1]), DWORD1(v149[1]));
              v94 = sub_66A18();
              v95 = sub_56B04(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | Find output pixel format failed, %p %p %lld %d %d %d %d %d %d %d", v94, 16, v95, "AVE_Session_MCTF_Process", 725, "inputFormat != 0", v17, *(v17 + 8), *(v17 + 24), LODWORD(v149[2]), DWORD2(v149[1]), HIDWORD(v149[0]), DWORD1(v149[0]), DWORD2(v149[0]), LODWORD(v149[1]), DWORD1(v149[1]));
          }

          goto LABEL_89;
        }

        v49 = v53;
      }

      v54 = sub_4394C(v17, v49);
      if (v54)
      {
        v55 = v54;
        if (sub_56A8C(0x10u, 4))
        {
          v56 = sub_56AD0(0x10u);
          v57 = sub_66A18();
          v58 = sub_56B04(4);
          if (v56)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE_Session_MCTF_BuildDestPixelBufAttributes failed, %p %p %lld 0x%x %d\n", v57, 16, v58, "AVE_Session_MCTF_Process", 731, "ret == 0", v17, *(v17 + 8), *(v17 + 24), v49, v55);
            v57 = sub_66A18();
            v58 = sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_Session_MCTF_BuildDestPixelBufAttributes failed, %p %p %lld 0x%x %d", v57, 16, v58, "AVE_Session_MCTF_Process", 731, "ret == 0", v17, *(v17 + 8), *(v17 + 24), v49, v55);
        }

        goto LABEL_89;
      }
    }

    OutputPixelBuffer = VTTemporalFilterPluginSessionCreateOutputPixelBuffer();
    if (OutputPixelBuffer || !pixelBuffer)
    {
      if (sub_56A8C(0x10u, 4))
      {
        v59 = sub_56AD0(0x10u);
        v60 = sub_66A18();
        v61 = sub_56B04(4);
        if (v59)
        {
          printf("%lld %d AVE %s: %s:%d %s | VTTemporalFilterPluginSessionCreateOutputPixelBuffer failed, pMCTF = %p, %p, %lld, %d, %p\n", v60, 16, v61, "AVE_Session_MCTF_Process", 740, "res == noErr && pOutBuf!= __null", v17, *(v17 + 8), *(v17 + 24), OutputPixelBuffer, pixelBuffer);
          v60 = sub_66A18();
          v61 = sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | VTTemporalFilterPluginSessionCreateOutputPixelBuffer failed, pMCTF = %p, %p, %lld, %d, %p", v60, 16, v61, "AVE_Session_MCTF_Process", 740);
      }

      goto LABEL_89;
    }

    if (sub_56A8C(0x10u, 8))
    {
      v31 = sub_56AD0(0x10u);
      v129 = sub_66A18();
      v32 = sub_56B04(8);
      v33 = CVPixelBufferGetPixelFormatType(pixelBuffer);
      if (v31)
      {
        printf("%lld %d AVE %s: %s:%d: pOutBuf = %p, CMPixelFormatType = %d, pMCTF = %p, %p, %lld\n", v129, 16, v32, "AVE_Session_MCTF_Process", 743, pixelBuffer, v33, v17, *(v17 + 8), *(v17 + 24));
        v34 = sub_66A18();
        v35 = sub_56B04(8);
        CVPixelBufferGetPixelFormatType(pixelBuffer);
        syslog(3, "%lld %d AVE %s: %s:%d: pOutBuf = %p, CMPixelFormatType = %d, pMCTF = %p, %p, %lld", v34, 16, v35, "AVE_Session_MCTF_Process");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d: pOutBuf = %p, CMPixelFormatType = %d, pMCTF = %p, %p, %lld", v129, 16, v32, "AVE_Session_MCTF_Process");
      }
    }

    if (*(v17 + 656))
    {
      sub_53078(pixelBuffer, 0);
    }

    v74 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldPropagate);
    if (v74)
    {
      v75 = v74;
      CVBufferSetAttachments(pixelBuffer, v74, kCVAttachmentMode_ShouldPropagate);
      if ((*(v17 + 1403) & 2) != 0)
      {
        sub_539B4(buffer, v141);
      }

      CFRelease(v75);
    }

    v76 = sub_44184(v17, &buffer, &v146, &v145, &v144 + 1, &v144, 0);
    if (v76)
    {
      v77 = v76;
      if (sub_56A8C(0x10u, 4))
      {
        v78 = sub_56AD0(0x10u);
        v79 = sub_66A18();
        v80 = sub_56B04(4);
        if (v78)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE_Session_MCTF_VerifyImageBuffer failed, ret = %d, pMCTF = %p, %p, %lld\n", v79, 16, v80, "AVE_Session_MCTF_Process", 774, "ret == noErr", v77, v17, *(v17 + 8), *(v17 + 24));
          v81 = sub_66A18();
          v119 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_Session_MCTF_VerifyImageBuffer failed, ret = %d, pMCTF = %p, %p, %lld", v81, 16, v119, "AVE_Session_MCTF_Process");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_Session_MCTF_VerifyImageBuffer failed, ret = %d, pMCTF = %p, %p, %lld", v79, 16, v80, "AVE_Session_MCTF_Process");
        }
      }

LABEL_89:
      v43 = 4294966296;
      goto LABEL_90;
    }

    bzero(v148, 0x1738uLL);
    v139 = 0u;
    v140 = 0u;
    v138 = 0u;
    memset(v137, 0, sizeof(v137));
    v135 = 0u;
    v136 = 0u;
    v134 = 0u;
    memset(v130, 0, sizeof(v130));
    v131 = 0;
    bzero(v149, 0x4A40uLL);
    v132 = v16;
    v133 = buffer;
    v82 = pixelBuffer;
    v83 = *(v18 + 1912);
    *(&v134 + 1) = pixelBuffer;
    *(&v135 + 1) = v83;
    *&v138 = v149;
    *(&v138 + 1) = v148;
    if ((*(v17 + 641) & 2) == 0)
    {
      *(v18 + 1912) = pixelBuffer;
      CVPixelBufferRetain(v82);
    }

    *(v137 + 8) = *v12;
    v84 = v12[2];
    *(&v137[3] + 8) = *(v17 + 87176);
    *(&v137[1] + 1) = v84;
    *(&v137[4] + 1) = v130;
    sub_44808(v17, v10, v148, v149);
    v151[0] = -1;
    if ((*(v17 + 1403) & 2) != 0)
    {
      v85 = sub_1C9B8(v141, *(v17 + 36), 1u, (v17 + 87940), v151);
      if (v85)
      {
        v43 = v85;
        if (!sub_56A8C(0x10u, 4))
        {
LABEL_90:
          sub_2738C(*(v17 + 8), v16, v43, v12, pixelBuffer);
          if (pixelBuffer)
          {
            CVPixelBufferRelease(pixelBuffer);
            pixelBuffer = 0;
          }

          VTTemporalFilterPluginSessionCleanUpAfterProcessing();
          goto LABEL_93;
        }

        v86 = sub_56AD0(0x10u);
        v87 = sub_66A18();
        v88 = sub_56B04(4);
        if (v86)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE_MCTF_AdjustStrength failed %p %p %d %d\n", v87, 16, v88, "AVE_Session_MCTF_Process", 828, "ret == 0", v17, *(v17 + 8), *(v17 + 24), v43);
          v89 = sub_66A18();
          v120 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_MCTF_AdjustStrength failed %p %p %d %d", v89, 16, v120);
          goto LABEL_90;
        }

        v127 = *(v17 + 24);
        v128 = v43;
        v125 = v17;
        v126 = *(v17 + 8);
        v123 = 828;
        v124 = "ret == 0";
        v122 = v88;
        v115 = "%lld %d AVE %s: %s:%d %s | AVE_MCTF_AdjustStrength failed %p %p %d %d";
LABEL_120:
        syslog(3, v115, v87, 16, v122, "AVE_Session_MCTF_Process", v123, v124, v125, v126, v127, v128);
        goto LABEL_90;
      }
    }

    if (sub_56A8C(0x10u, 8))
    {
      v90 = sub_56AD0(0x10u);
      v91 = sub_66A18();
      v92 = sub_56B04(8);
      if (v90)
      {
        printf("%lld %d AVE %s: %s:%d %p %lld PerFrameData.iDynamicStrength %d rangeIdx %d\n", v91, 16, v92, "AVE_Session_MCTF_Process", 832, v17, *(v17 + 24), v151[0], *(v18 + 1924));
        v91 = sub_66A18();
        sub_56B04(8);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %p %lld PerFrameData.iDynamicStrength %d rangeIdx %d", v91, 16);
    }

    v101 = *(v18 + 1120);
    *(v18 + 1120) = v101 + 1;
    DWORD2(v140) = v101;
    HIDWORD(v140) = v19 % v20;
    if (v145)
    {
      v102 = buffer;
    }

    else
    {
      v102 = 0;
    }

    *(&v136 + 1) = v102;
    if (sub_56A8C(0x10u, 8))
    {
      v103 = sub_56AD0(0x10u);
      v104 = sub_66A18();
      v105 = sub_56B04(8);
      v106 = DWORD2(v140);
      v107 = CVPixelBufferGetPixelFormatType(v133);
      if (v103)
      {
        printf("%lld %d AVE %s: %s:%d: input frameNumber = %d, CMPixelFormatType = %d, pMCTF = %p, %p, %lld\n", v104, 16, v105, "AVE_Session_MCTF_Process", 852, v106, v107, v17, *(v17 + 8), *(v17 + 24));
        v104 = sub_66A18();
        v105 = sub_56B04(8);
        CVPixelBufferGetPixelFormatType(v133);
      }

      syslog(3, "%lld %d AVE %s: %s:%d: input frameNumber = %d, CMPixelFormatType = %d, pMCTF = %p, %p, %lld", v104, 16, v105, "AVE_Session_MCTF_Process");
    }

    v108 = sub_3F77C(*(v17 + 64), &v132);
    v43 = v108;
    if (v108)
    {
      if (v108 != -536870173)
      {
        if (sub_56A8C(0x10u, 4))
        {
          v112 = sub_56AD0(0x10u);
          v113 = sub_66A18();
          v114 = sub_56B04(4);
          if (v112)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Process failed, ret = %d, pMCTF = %p, %p, %lld\n", v113, 16, v114, "AVE_Session_MCTF_Process", 865, "ret == noErr", v43, v17, *(v17 + 8), *(v17 + 24));
            v113 = sub_66A18();
            v114 = sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Process failed, ret = %d, pMCTF = %p, %p, %lld", v113, 16, v114, "AVE_Session_MCTF_Process");
        }

        goto LABEL_89;
      }

      v43 = 3758097123;
      if (!sub_56A8C(0x10u, 5))
      {
        goto LABEL_90;
      }

      v109 = sub_56AD0(0x10u);
      v87 = sub_66A18();
      v110 = sub_56B04(5);
      if (v109)
      {
        printf("%lld %d AVE %s: %s:%d: device returned kIOReturnNoPower, reject the frame, pMCTF = %p, %p, %lld\n", v87, 16, v110, "AVE_Session_MCTF_Process", 859, v17, *(v17 + 8), *(v17 + 24));
        v111 = sub_66A18();
        sub_56B04(5);
        syslog(3, "%lld %d AVE %s: %s:%d: device returned kIOReturnNoPower, reject the frame, pMCTF = %p, %p, %lld", v111, 16);
        goto LABEL_90;
      }

      v125 = *(v17 + 8);
      v126 = *(v17 + 24);
      v123 = 859;
      v124 = v17;
      v122 = v110;
      v115 = "%lld %d AVE %s: %s:%d: device returned kIOReturnNoPower, reject the frame, pMCTF = %p, %p, %lld";
      goto LABEL_120;
    }
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v36 = sub_56AD0(0x10u);
      v37 = sub_66A18();
      v38 = sub_56B04(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %d\n", v37, 16, v38, "AVE_Session_MCTF_Process", 629, "pMCTF != __null && pID != __null && pPixelBuf != __null && pPTS != __null", v17, v16, buffer, v12, v10, 0);
        v39 = sub_66A18();
        v117 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %d", v39, 16, v117, "AVE_Session_MCTF_Process", 629, "pMCTF != __null && pID != __null && pPixelBuf != __null && pPTS != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %d", v37, 16, v38, "AVE_Session_MCTF_Process", 629, "pMCTF != __null && pID != __null && pPixelBuf != __null && pPTS != __null");
      }
    }

    v43 = 4294966295;
  }

LABEL_93:
  if (sub_56A8C(0x10u, 8))
  {
    v96 = sub_56AD0(0x10u);
    v97 = sub_66A18();
    v98 = sub_56B04(8);
    if (v96)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %d\n", v97, 16, v98, "AVE_Session_MCTF_Process", v17, v16, buffer, v12, v10, v43);
      v99 = sub_66A18();
      v121 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v99, 16, v121, "AVE_Session_MCTF_Process");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v97, 16, v98, "AVE_Session_MCTF_Process");
    }
  }

  return v43;
}

uint64_t sub_2738C(const void *a1, const void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a4;
  if (sub_56A8C(0x10u, 8))
  {
    v8 = sub_56AD0(0x10u);
    v9 = sub_66A18();
    v10 = sub_56B04(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d: pSession = %p, pID = %p, PTS.value = %lld\n", v9, 16, v10, "AVE_Session_MCTF_EmitAndConclude", 557, a1, a2, v7);
      v9 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s:%d: pSession = %p, pID = %p, PTS.value = %lld", v9, 16);
  }

  v11 = VTTemporalFilterPluginSessionEmitOutputFrame();
  if (v11)
  {
    if (sub_56A8C(0x10u, 4))
    {
      v12 = sub_56AD0(0x10u);
      v13 = sub_66A18();
      v14 = sub_56B04(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | VTTemporalFilterPluginSessionEmitOutputFrame failed, pSession = %p, err = %d\n", v13, 16, v14, "AVE_Session_MCTF_EmitAndConclude", 563, "err == noErr", a1, v11);
        v13 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | VTTemporalFilterPluginSessionEmitOutputFrame failed, pSession = %p, err = %d", v13, 16);
    }

    v11 = 4294966296;
  }

  VTTemporalFilterPluginSessionConcludeInputFrame();
  return v11;
}

uint64_t sub_275BC(uint64_t a1)
{
  v23 = 0;
  if (sub_56A8C(0x10u, 6))
  {
    v2 = sub_56AD0(0x10u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 16, v4, "AVE_Session_MCTF_Complete", a1);
      v5 = sub_66A18();
      v21 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 16, v21, "AVE_Session_MCTF_Complete", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 16, v4, "AVE_Session_MCTF_Complete", a1);
    }
  }

  if (a1)
  {
    if (sub_56A8C(0x10u, 6))
    {
      v6 = sub_56AD0(0x10u);
      v7 = sub_66A18();
      v8 = sub_56B04(6);
      if (v6)
      {
        printf("%lld %d AVE %s: %s state %d\n", v7, 16, v8, "AVE_Session_MCTF_Complete", *(a1 + 40));
        v7 = sub_66A18();
        v8 = sub_56B04(6);
      }

      syslog(3, "%lld %d AVE %s: %s state %d", v7, 16, v8, "AVE_Session_MCTF_Complete", *(a1 + 40));
    }

    if (*(a1 + 40) == 2 && *(a1 + 87920) == 1 && sub_3EF90(*(a1 + 64), &v23))
    {
      if (sub_56A8C(0x10u, 4))
      {
        v12 = sub_56AD0(0x10u);
        v13 = sub_66A18();
        v14 = sub_56B04(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Complete %s:%d failed.\n", v13, 16, v14, "AVE_Session_MCTF_Complete", 918, "res == noErr", "AVE_Session_MCTF_Complete", 918);
          v13 = sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE_USL_Drv_Complete %s:%d failed.", v13, 16);
      }

      v15 = 4294966296;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v9 = sub_56AD0(0x10u);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d\n", v10, 16, v11, "AVE_Session_MCTF_Complete", 904, "pMCTF != __null", 0, 0);
        v10 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d", v10, 16);
    }

    v15 = 4294966295;
  }

  if (sub_56A8C(0x10u, 6))
  {
    v16 = sub_56AD0(0x10u);
    v17 = sub_66A18();
    v18 = sub_56B04(6);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v17, 16, v18, "AVE_Session_MCTF_Complete", a1, v15);
      v19 = sub_66A18();
      v22 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v19, 16, v22, "AVE_Session_MCTF_Complete", a1, v15);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v17, 16, v18, "AVE_Session_MCTF_Complete", a1, v15);
    }
  }

  return v15;
}

uint64_t sub_279B8(uint64_t a1, void *a2)
{
  if (sub_56A8C(0xDu, 8))
  {
    v4 = sub_56AD0(0xDu);
    v5 = sub_66A18();
    v6 = sub_56B04(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 13, v6, "AVE_Session_MCTF_GetPropertyDict", a1, a2);
      v7 = sub_66A18();
      v21 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 13, v21, "AVE_Session_MCTF_GetPropertyDict", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 13, v6, "AVE_Session_MCTF_GetPropertyDict", a1, a2);
    }
  }

  if (a1 && a2)
  {
    *a2 = 0;
    v8 = *(a1 + 87144);
    if (v8)
    {
      v9 = CFGetRetainCount(*(a1 + 87144));
      if (v9 != 1 && sub_56A8C(0xDu, 5))
      {
        v10 = sub_56AD0(0xDu);
        v11 = sub_66A18();
        v12 = sub_56B04(5);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d property dictionary reference count %p %lld %d\n", v11, 13, v12, "AVE_Session_MCTF_GetPropertyDict", 959, a1, *(a1 + 24), v9);
          v11 = sub_66A18();
          sub_56B04(5);
        }

        syslog(3, "%lld %d AVE %s: %s:%d property dictionary reference count %p %lld %d", v11, 13);
      }

      CFRetain(v8);
      v16 = 0;
    }

    else
    {
      v16 = 4294966288;
    }

    *a2 = v8;
  }

  else
  {
    if (sub_56A8C(0xDu, 4))
    {
      v13 = sub_56AD0(0xDu);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v14, 13, v15, "AVE_Session_MCTF_GetPropertyDict", 946, "pMCTF != __null && ppDict != __null", a1, a2);
        v14 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v14, 13);
    }

    v16 = 4294966295;
  }

  if (sub_56A8C(0xDu, 8))
  {
    v17 = sub_56AD0(0xDu);
    v18 = sub_66A18();
    v19 = sub_56B04(8);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v18, 13, v19, "AVE_Session_MCTF_GetPropertyDict", a1, a2, v16);
      v18 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v18);
  }

  return v16;
}

uint64_t sub_27D30(const void *a1, const void *a2, const __CFString *a3, const void *a4)
{
  if (sub_56A8C(0x10u, 6))
  {
    v8 = sub_56AD0(0x10u);
    v9 = sub_66A18();
    v10 = sub_56B04(6);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", v9, 16, v10, "AVE_Session_MCTF_GetProperty", a1, a2, a3, a4);
      v9 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", v9, 16);
  }

  if (a1 && a3 && a4)
  {
    v11 = sub_1BDCC(a1, a2, a3, a4);
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v12 = sub_56AD0(0x10u);
      v13 = sub_66A18();
      v14 = sub_56B04(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %d\n", v13, 16, v14, "AVE_Session_MCTF_GetProperty", 995, "pMCTF != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, 0);
        v15 = sub_66A18();
        v21 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %d", v15, 16, v21, "AVE_Session_MCTF_GetProperty", 995);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %d", v13, 16, v14, "AVE_Session_MCTF_GetProperty", 995);
      }
    }

    v11 = 4294966295;
  }

  if (sub_56A8C(0x10u, 6))
  {
    v16 = sub_56AD0(0x10u);
    v17 = sub_66A18();
    v18 = sub_56B04(6);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d\n", v17, 16, v18, "AVE_Session_MCTF_GetProperty", a1, a2, a3, a4, v11);
      v19 = sub_66A18();
      v22 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v19, 16, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v17, 16, v18);
    }
  }

  return v11;
}

uint64_t sub_28000(const void *a1, const __CFString *a2, const void *a3)
{
  if (sub_56A8C(0x10u, 6))
  {
    v6 = sub_56AD0(0x10u);
    v7 = sub_66A18();
    v8 = sub_56B04(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 16, v8, "AVE_Session_MCTF_SetProperty", a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2 && a3)
  {
    v9 = sub_1BC4C(a1, a2, a3);
  }

  else
  {
    if (sub_56A8C(0x10u, 4))
    {
      v10 = sub_56AD0(0x10u);
      v11 = sub_66A18();
      v12 = sub_56B04(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d\n", v11, 16, v12, "AVE_Session_MCTF_SetProperty", 1027, "pMCTF != __null && pKey != __null && pValue != __null", a1, a2, a3, 0);
        v13 = sub_66A18();
        v18 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v13, 16, v18, "AVE_Session_MCTF_SetProperty");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v11, 16, v12, "AVE_Session_MCTF_SetProperty");
      }
    }

    v9 = 4294966295;
  }

  if (sub_56A8C(0x10u, 6))
  {
    v14 = sub_56AD0(0x10u);
    v15 = sub_66A18();
    v16 = sub_56B04(6);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v15, 16, v16, "AVE_Session_MCTF_SetProperty", a1, a2, a3, v9);
      v15 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v15, 16);
  }

  return v9;
}

int *sub_282B0(int *result, int a2)
{
  if (result)
  {
    v3 = *result++;
    v2 = v3;
    if (v3 < 1)
    {
      return 0;
    }

    else
    {
      while (*result != a2)
      {
        result += 24;
        if (!--v2)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_282E0(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 8) <= a2)
    {
      return 0;
    }

    else
    {
      result += 12 * a2 + 12;
    }
  }

  return result;
}

uint64_t sub_28300(uint64_t result, int a2, _DWORD *a3)
{
  if (result)
  {
    v3 = result;
    if (*(result + 8) <= a2)
    {
      return 4294966296;
    }

    else
    {
      result = 0;
      *a3 = *(v3 + 12 * a2 + 20);
    }
  }

  return result;
}

uint64_t sub_28334(char *a1, _DWORD *a2)
{
  v2 = 4294966295;
  if (a1 && a2)
  {
    v4 = 0;
    v5 = a2 + 1;
    v6 = a2 + 4;
    do
    {
      v7 = 0;
      v5[24 * v4 + 1] = 1;
      do
      {
        *&v6[v7] = -NAN;
        v7 += 3;
      }

      while (v7 != 21);
      ++v4;
      v6 += 24;
    }

    while (v4 != 5);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v2 = 0;
    v11 = 1;
    v12 = -1;
    v13 = 0x7FFFFFFF;
    while (1)
    {
      while (1)
      {
        v14 = *a1;
        if (v14 <= 0x54)
        {
          break;
        }

        if (*a1 <= 0x6Bu)
        {
          if (v14 == 85)
          {
            goto LABEL_29;
          }

          if (v14 == 99)
          {
LABEL_31:
            v12 = 0;
            goto LABEL_38;
          }

          if (v14 != 105)
          {
            goto LABEL_36;
          }

LABEL_26:
          ++a1;
          v12 = 1;
        }

        else if (*a1 > 0x73u)
        {
          if (v14 == 116)
          {
            goto LABEL_32;
          }

          if (v14 != 117)
          {
            goto LABEL_36;
          }

LABEL_29:
          ++a1;
          v12 = 4;
        }

        else
        {
          if (v14 == 108)
          {
            goto LABEL_30;
          }

          if (v14 != 115)
          {
            goto LABEL_36;
          }

LABEL_33:
          ++a1;
          v12 = 5;
        }
      }

      if (*a1 > 0x4Bu)
      {
        switch(v14)
        {
          case 'L':
LABEL_30:
            ++a1;
            v12 = 3;
            break;
          case 'S':
            goto LABEL_33;
          case 'T':
LABEL_32:
            ++a1;
            v12 = 2;
            break;
          default:
            goto LABEL_36;
        }
      }

      else
      {
        if (*a1 > 0x42u)
        {
          if (v14 == 67)
          {
            goto LABEL_31;
          }

          if (v14 != 73)
          {
            goto LABEL_36;
          }

          goto LABEL_26;
        }

        if (v14 == 32)
        {
          goto LABEL_38;
        }

        if (!*a1)
        {
          return v2;
        }

LABEL_36:
        if (v14 - 48 < 0xA || (v14 & 0xFFFFFFDF) - 65 <= 0x19)
        {
          __endptr = 0;
          v15 = strtol(a1, &__endptr, 0);
          if (v12 > 2)
          {
            if (v12 == 3)
            {
              v10 = v15;
            }

            else if (v12 == 4)
            {
              v13 = v15;
            }

            else if (v9 > 4 || (v16 = &v5[24 * v9], v17 = v16[2], v17 > 6))
            {
              if (sub_56A8C(0x10u, 4))
              {
                v20 = sub_56AD0(0x10u);
                v21 = sub_66A18();
                v22 = sub_56B04(4);
                if (v20)
                {
                  if (v9 > 4)
                  {
                    v23 = -1;
                  }

                  else
                  {
                    v23 = v5[24 * v9 + 2];
                  }

                  printf("%lld %d AVE %s: %s:%d Invalid bounds %d %d\n", v21, 16, v22, "AVE_MCTF_SMap_Parse", 266, v9, v23);
                  v21 = sub_66A18();
                  v22 = sub_56B04(4);
                  if (v9 > 4)
                  {
                    v24 = -1;
                  }

                  else
                  {
                    v24 = v5[24 * v9 + 2];
                  }
                }

                else if (v9 > 4)
                {
                  v24 = -1;
                }

                else
                {
                  v24 = v5[24 * v9 + 2];
                }

                syslog(3, "%lld %d AVE %s: %s:%d Invalid bounds %d %d", v21, 16, v22, "AVE_MCTF_SMap_Parse", 266, v9, v24);
              }

              v2 = 4294966278;
            }

            else
            {
              *v16 = v8;
              v16[1] = v11;
              v18 = &v16[3 * v17];
              v18[3] = v10;
              v18[4] = v13;
              v18[5] = v15;
              v19 = v17 + 1;
              v16[2] = v19;
              if (*a2 <= v9)
              {
                *a2 = v9 + 1;
              }

              v10 = 0;
              if (v19 == 7)
              {
                v8 = 0;
                v11 = 1;
              }

              v13 = 0x7FFFFFFF;
            }
          }

          else if (v12)
          {
            if (v12 == 1)
            {
              if (v9 != v15)
              {
                v11 = 1;
                v10 = 0;
                v13 = 0x7FFFFFFF;
              }

              v9 = v15;
            }

            else if (v12 == 2)
            {
              v11 = v15;
            }
          }

          else
          {
            v8 = v15;
          }

          a1 = __endptr;
        }

        else
        {
LABEL_38:
          ++a1;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_286EC(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  v7 = a3;
  if (sub_56A8C(a2, a3))
  {
    v8 = *(a1 + 8);
    if (v8 >= 1)
    {
      v9 = 0;
      if (v8 >= 7)
      {
        v10 = 7;
      }

      else
      {
        v10 = v8;
      }

      v11 = (a1 + 12);
      do
      {
        if (sub_56A8C(a2, v7))
        {
          v12 = sub_56AD0(a2);
          if (a3 < 0)
          {
            if ((-a3 & 0x20) != 0)
            {
              v16 = 0;
            }

            else
            {
              v16 = v12;
            }

            if (v16 == 1)
            {
              printf("\t[%p %s rI:%d/%d L:%d U:%d S:%d]\n", v11, a4, v9, *(a1 + 8), *v11, v11[1], v11[2]);
            }

            syslog(3, "\t[%p %s rI:%d/%d L:%d U:%d S:%d]", v11);
          }

          else
          {
            v13 = v12 ^ 1;
            v14 = sub_66A18();
            v15 = sub_56B04(v7);
            if (((v13 | ((a3 & 0x20) >> 5)) & 1) == 0)
            {
              printf("%lld %d AVE %s: \t[%p %s rI:%d/%d L:%d U:%d S:%d]\n", v14, a2, v15, v11, a4, v9, *(a1 + 8), *v11, v11[1], v11[2]);
              v14 = sub_66A18();
              sub_56B04(v7);
            }

            syslog(3, "%lld %d AVE %s: \t[%p %s rI:%d/%d L:%d U:%d S:%d]", v14, a2);
          }
        }

        ++v9;
        v11 += 3;
      }

      while (v10 != v9);
    }
  }

  return 0;
}

uint64_t sub_288F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 137792;
  v5 = a1 + 25784;
  sub_3B3DC(a1 + 16);
  *(a1 + 29328) = *(a2 + 16);
  *(v5 + 3552) = *a2;
  *(a1 + 29352) = *(a2 + 32);
  *(a1 + 29312) = *(a2 + 72);
  *(v4 + 16) = *(a2 + 204);
  *(v4 + 12) = *(a2 + 200);
  *(v4 + 24) = *(a2 + 208);
  *a1 = 0;
  *(a1 + 8) = 0;
  *v4 = *(a2 + 216);
  v6 = *(a2 + 40);
  *(a1 + 29296) = *(a2 + 56);
  *(a1 + 29280) = v6;
  v7 = *(a2 + 80);
  if (v7)
  {
    memcpy((a1 + 29368), v7, 0x300uLL);
  }

  v8 = *(a2 + 88);
  if (v8)
  {
    memcpy((a1 + 30136), v8, 0x2460uLL);
  }

  memcpy((a1 + 39448), *(a2 + 96), 0x4E0uLL);
  v9 = *(a2 + 96);
  *(a1 + 40696) = *(a2 + 104);
  v10 = *(v9 + 20);
  if (v10 == 2)
  {
    v16 = *(a2 + 144);
    if (v16)
    {
      memcpy((a1 + 45152), v16, 0x2FCCuLL);
    }

    v17 = 0;
    v18 = 1;
    do
    {
      v19 = v18;
      v20 = *(a2 + 152 + 8 * v17);
      if (v20)
      {
        memcpy((a1 + 57388 + 7804 * v17), v20, 0x1E7CuLL);
      }

      v21 = *(a2 + 168 + 8 * v17);
      if (v21)
      {
        memcpy((a1 + 72996 + 9632 * v17), v21, 0x25A0uLL);
      }

      v18 = 0;
      v17 = 1;
    }

    while ((v19 & 1) != 0);
    v22 = *(a2 + 184);
    if (v22)
    {
      memcpy((a1 + 92264), v22, 0x53F0uLL);
    }

    v13 = *(a2 + 192);
    if (v13)
    {
      v14 = (a1 + 113752);
      v15 = 24024;
      goto LABEL_25;
    }
  }

  else if (v10 == 1)
  {
    v11 = *(a2 + 120);
    if (v11)
    {
      memcpy((a1 + 40712), v11, 0x6B4uLL);
    }

    v12 = *(a2 + 128);
    if (v12)
    {
      memcpy((a1 + 42428), v12, 0x180uLL);
    }

    v13 = *(a2 + 136);
    if (v13)
    {
      v14 = (a1 + 42812);
      v15 = 2340;
LABEL_25:
      memcpy(v14, v13, v15);
    }
  }

  else if (sub_56A8C(0x2Eu, 4))
  {
    if (sub_56AD0(0x2Eu))
    {
      v23 = sub_66A18();
      v24 = sub_56B04(4);
      printf("%lld %d AVE %s: codectype not recognized! %d\n", v23, 46, v24, *(*(a2 + 96) + 20));
    }

    v25 = sub_66A18();
    v26 = sub_56B04(4);
    syslog(3, "%lld %d AVE %s: codectype not recognized! %d", v25, 46, v26, *(*(a2 + 96) + 20));
  }

  *(a1 + 29100) = 0;
  *(a1 + 29084) = 0u;
  *(a1 + 29112) = 0u;
  bzero((a1 + 28032), 0x418uLL);
  *(v5 + 3488) = -1;
  *(v5 + 3492) = 0;
  *(a1 + 29360) = 0;
  *v5 = 0;
  *(a1 + 143688) = 0;
  *(a1 + 25792) = 0u;
  *(a1 + 25808) = 0u;
  *(a1 + 25824) = 0u;
  *(a1 + 25840) = 0u;
  *(a1 + 25856) = 0u;
  *(a1 + 25872) = 0u;
  *(a1 + 25888) = 0u;
  *(a1 + 25904) = 0u;
  *(a1 + 25920) = 0u;
  *(a1 + 25936) = 0u;
  *(a1 + 25952) = 0u;
  *(a1 + 25968) = 0u;
  *(a1 + 25984) = 0u;
  *(a1 + 26000) = 0u;
  *(a1 + 26016) = 0u;
  *(a1 + 26032) = 0u;
  *(a1 + 26048) = 0u;
  *(a1 + 26064) = 0u;
  *(a1 + 26080) = 0u;
  *(a1 + 26096) = 0u;
  *(a1 + 26112) = 0u;
  *(a1 + 26128) = 0u;
  *(a1 + 26144) = 0u;
  *(a1 + 26160) = 0u;
  *(a1 + 26176) = 0u;
  *(a1 + 26192) = 0u;
  *(a1 + 26208) = 0u;
  *(a1 + 26224) = 0u;
  *(a1 + 26240) = 0u;
  *(a1 + 26256) = 0u;
  *(a1 + 26920) = 0u;
  *(a1 + 26936) = 0u;
  *(a1 + 26888) = 0u;
  *(a1 + 26904) = 0u;
  *(a1 + 26856) = 0u;
  *(a1 + 26872) = 0u;
  *(a1 + 26824) = 0u;
  *(a1 + 26840) = 0u;
  *(a1 + 26792) = 0u;
  *(a1 + 26808) = 0u;
  *(a1 + 26760) = 0u;
  *(a1 + 26776) = 0u;
  *(a1 + 26728) = 0u;
  *(a1 + 26744) = 0u;
  *(a1 + 26696) = 0u;
  *(a1 + 26712) = 0u;
  *(a1 + 26664) = 0u;
  *(a1 + 26680) = 0u;
  *(a1 + 26632) = 0u;
  *(a1 + 26648) = 0u;
  *(a1 + 26600) = 0u;
  *(a1 + 26616) = 0u;
  *(a1 + 26568) = 0u;
  *(a1 + 26584) = 0u;
  *(a1 + 26536) = 0u;
  *(a1 + 26552) = 0u;
  *(a1 + 26504) = 0u;
  *(a1 + 26520) = 0u;
  *(a1 + 26472) = 0u;
  *(a1 + 26488) = 0u;
  bzero((a1 + 27072), 0x3C0uLL);
  *(a1 + 143680) = 0;
  *(a1 + 143664) = 0u;
  *(a1 + 143696) = *(a2 + 232);
  return a1;
}

uint64_t sub_28D10(uint64_t a1)
{
  v2 = -240;
  do
  {
    v3 = a1 + v2;
    v4 = *(a1 + v2 + 26272);
    if (v4)
    {
      IOSurfaceUnlock(v4, 0, 0);
      CFRelease(*(v3 + 26272));
      *(v3 + 26272) = 0;
    }

    v5 = *(v3 + 26952);
    if (v5)
    {
      IOSurfaceUnlock(v5, 0, 0);
      CFRelease(*(v3 + 26952));
      *(v3 + 26952) = 0;
    }

    v6 = a1 + v2;
    v7 = *(a1 + v2 + 27552);
    if (v7)
    {
      IOSurfaceUnlock(v7, 0, 0);
      CFRelease(*(v6 + 27552));
      *(v6 + 27552) = 0;
    }

    v8 = *(v6 + 28032);
    if (v8)
    {
      IOSurfaceUnlock(v8, 0, 0);
      CFRelease(*(v6 + 28032));
      *(v6 + 28032) = 0;
    }

    v2 += 8;
  }

  while (v2);
  if (*(a1 + 29360))
  {
    FigFormatDescriptionRelease();
    *(a1 + 29360) = 0;
  }

  v9 = *(a1 + 29112);
  if (v9)
  {
    free(v9);
    *(a1 + 29112) = 0;
    *(a1 + 29120) = 0;
  }

  sub_3B5C0((a1 + 25448));
  sub_3B5C0((a1 + 25400));
  v10 = *(a1 + 25368);
  if (v10)
  {
    *(a1 + 25376) = v10;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_28E2C(uint64_t a1, const void *a2, char *a3, unsigned int *a4, int *a5)
{
  v136[0] = 0;
  v134 = 0;
  v135 = 0;
  if (sub_56A8C(0x2Eu, 7))
  {
    v9 = sub_56AD0(0x2Eu);
    v10 = sub_66A18();
    v11 = sub_56B04(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %p %p %p\n", v10, 46, v11, "AVE_FrameRecv", "CreateVideoFormatDesc", a2, a3, a4, a5);
      v12 = sub_66A18();
      v115 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %p %p %p", v12, 46, v115);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %p %p %p", v10, 46, v11);
    }
  }

  if (a5 && *a5)
  {
    v129 = a1 + 39252;
    if (sub_56A8C(0x2Eu, 8))
    {
      v13 = sub_56AD0(0x2Eu);
      v14 = sub_66A18();
      v15 = sub_56B04(8);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d sPSInfo.iNum %d\n", v14, 46, v15, "AVE_FrameRecv", "CreateVideoFormatDesc", 244, *a5);
        v14 = sub_66A18();
        sub_56B04(8);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d sPSInfo.iNum %d", v14);
    }

    v131 = a2;
    v127 = (a1 + 30136);
    v128 = a1;
    v133 = a5;
    if (*a5 >= 1)
    {
      v26 = 0;
      v27 = a5 + 4;
      do
      {
        if (sub_56A8C(0x2Eu, 8))
        {
          v28 = sub_56AD0(0x2Eu);
          v29 = sub_66A18();
          v30 = sub_56B04(8);
          v31 = *(v27 - 3);
          v32 = *(v27 - 2);
          v33 = *(v27 - 1);
          v34 = *v27;
          if (v28)
          {
            printf("%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d\n", v29, 46, v30, "AVE_FrameRecv", "CreateVideoFormatDesc", 249, v26, v31, v32, *(v27 - 1), v34);
            v29 = sub_66A18();
            v30 = sub_56B04(8);
            v31 = *(v27 - 3);
            v32 = *(v27 - 2);
            v33 = *(v27 - 1);
            v34 = *v27;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d", v29, 46, v30, "AVE_FrameRecv", "CreateVideoFormatDesc", 249, v26, v31, v32, v33, v34);
          a5 = v133;
        }

        ++v26;
        v27 += 4;
      }

      while (v26 < *a5);
    }

    v35 = (a1 + 39448);
    v36 = *(a1 + 39468);
    if (v36 == 1)
    {
      v45 = (a1 + 40712);
      v20 = sub_602A4(0, a3, a5, (a1 + 40712), &v135);
      a2 = v131;
      if (v135)
      {
        if (*(a1 + 41808))
        {
          CFDictionarySetValue(v135, kCMFormatDescriptionExtension_FullRangeVideo, kCFBooleanTrue);
        }

        v46 = *v127;
        v47 = *(a1 + 40748);
        if (v47 > 3)
        {
          v49 = 0;
        }

        else
        {
          v48 = (&unk_B7C54 + 8 * v47);
          v50 = *v48;
          v49 = v48[1];
          v46 -= v50 * *(a1 + 41896);
        }

        v58 = *(a1 + 30140) - *(a1 + 41904) * v49;
        if (sub_56A8C(0x2Eu, 8))
        {
          v59 = sub_56AD0(0x2Eu);
          v60 = sub_66A18();
          v61 = sub_56B04(8);
          if (v59)
          {
            printf("%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d\n", v60, 46, v61, "AVE_FrameRecv", "CreateVideoFormatDesc", 277, *(a1 + 30136), *(a1 + 30140), v46, v58, *(a1 + 41896), *(a1 + 41904));
            v62 = sub_66A18();
            v118 = sub_56B04(8);
            syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v62, 46, v118);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v60, 46, v61);
          }

          a2 = v131;
        }

        if (*v35 == 2)
        {
          VideoFormatDescription = VTTileEncoderSessionCreateVideoFormatDescription();
        }

        else
        {
          VideoFormatDescription = VTEncoderSessionCreateVideoFormatDescription();
        }

        v67 = VideoFormatDescription;
        if (!VideoFormatDescription)
        {
          v19 = 0;
LABEL_137:
          a5 = v133;
          goto LABEL_17;
        }

        if (sub_56A8C(0x2Eu, 4))
        {
          v68 = sub_56AD0(0x2Eu);
          v69 = sub_66A18();
          v70 = sub_56B04(4);
          if (v68)
          {
            a2 = v131;
            printf("%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %p %p %d\n", v69, 46, v70, "AVE_FrameRecv", "CreateVideoFormatDesc", 305, "res == noErr", *v35, v131, v46, v58, v135, (a1 + 29360), v67);
            v71 = sub_66A18();
            v119 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %p %p %d", v71, 46, v119, "AVE_FrameRecv", "CreateVideoFormatDesc", 305, "res == noErr");
          }

          else
          {
            a2 = v131;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %p %p %d", v69, 46, v70, "AVE_FrameRecv", "CreateVideoFormatDesc", 305, "res == noErr");
          }
        }

        v19 = 0;
LABEL_108:
        v20 = 4294966296;
        goto LABEL_137;
      }

      if (sub_56A8C(0x2Eu, 4))
      {
        v54 = sub_56AD0(0x2Eu);
        v55 = sub_66A18();
        v56 = sub_56B04(4);
        if (v54)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to make avcC dictionary %p %p %p %p %d\n", v55, 46, v56, "AVE_FrameRecv", "CreateVideoFormatDesc", 261, "pCFDict != __null", a3, a5, v45, &v135, v20);
          v57 = sub_66A18();
          v117 = sub_56B04(4);
          a5 = v133;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make avcC dictionary %p %p %p %p %d", v57, 46, v117, "AVE_FrameRecv", "CreateVideoFormatDesc", 261);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make avcC dictionary %p %p %p %p %d", v55, 46, v56, "AVE_FrameRecv", "CreateVideoFormatDesc", 261);
        }
      }

      v19 = 0;
    }

    else
    {
      a2 = v131;
      v37 = a1;
      if (v36 == 2)
      {
        v38 = *(a1 + 30144);
        v39 = sub_87A0(*(v128 + 143696), a4[10], 64);
        if (v39 >= 1)
        {
          v40 = v39;
          v41 = malloc_type_malloc(v39, 0x100004077774924uLL);
          if (!v41)
          {
            if (sub_56A8C(0x2Eu, 4))
            {
              v63 = sub_56AD0(0x2Eu);
              v64 = sub_66A18();
              v65 = sub_56B04(4);
              if (v63)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | failed to allocate SEI buffer %d\n", v64, 46, v65, "AVE_FrameRecv", "CreateVideoFormatDesc", 323, "piSEIData != __null", v40);
                v64 = sub_66A18();
                sub_56B04(4);
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to allocate SEI buffer %d", v64, 46);
            }

            v19 = 0;
            goto LABEL_114;
          }

          v19 = v41;
          if (sub_56A8C(0x2Eu, 7))
          {
            v42 = sub_56AD0(0x2Eu);
            v43 = sub_66A18();
            v44 = sub_56B04(7);
            if (v42)
            {
              printf("%lld %d AVE %s: %s::%s:%d allocated %d bytes for ambient viewing environment\n", v43, 46, v44, "AVE_FrameRecv", "CreateVideoFormatDesc", 326, v40);
              v43 = sub_66A18();
              sub_56B04(7);
              v37 = v128;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d allocated %d bytes for ambient viewing environment", v43);
            a5 = v133;
          }

          v72 = sub_12F4(*(v37 + 143696), a4[10], 64, v19, v40, v136);
          if (v72)
          {
            v20 = v72;
            if (!sub_56A8C(0x2Eu, 4))
            {
              goto LABEL_17;
            }

            v73 = sub_56AD0(0x2Eu);
            v74 = sub_66A18();
            v75 = sub_56B04(4);
            if (v73)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | failed to add SEI %d %p %p %p %p %d\n", v74, 46, v75, "AVE_FrameRecv", "CreateVideoFormatDesc", 334, "ret == 0", v40, v19, v35, a4, v136, v20);
              v76 = sub_66A18();
              a2 = v131;
              v120 = sub_56B04(4);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add SEI %d %p %p %p %p %d", v76, 46, v120, "AVE_FrameRecv", "CreateVideoFormatDesc", 334, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add SEI %d %p %p %p %p %d", v74, 46, v75, "AVE_FrameRecv", "CreateVideoFormatDesc", 334, "ret == 0");
            }

            goto LABEL_137;
          }

          if (v136[0])
          {
LABEL_83:
            if (*v129 >= 2u)
            {
              MVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults = VTEncoderSessionCreateMVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults();
              if (sub_56A8C(0x2Eu, 4))
              {
                v92 = sub_56AD0(0x2Eu);
                v93 = sub_66A18();
                v94 = sub_56B04(4);
                if (v92)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %s | failed to create SEI %p %d %d %p %d\n", v93, 46, v94, "AVE_FrameRecv", "CreateVideoFormatDesc", 354, "pSEI3D != __null", v131, *(v129 + 1252), *(v129 + 1253), &v134, MVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults);
                  v95 = sub_66A18();
                  v124 = sub_56B04(4);
                  a5 = v133;
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create SEI %p %d %d %p %d", v95, 46, v124, "AVE_FrameRecv", "CreateVideoFormatDesc");
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create SEI %p %d %d %p %d", v93, 46, v94, "AVE_FrameRecv", "CreateVideoFormatDesc");
                }
              }

LABEL_114:
              v20 = 4294966293;
              goto LABEL_17;
            }

            v20 = sub_61370(0, a3, v133, v19, v136[0], 0, 0, (v37 + 57388), &v135);
            v78 = v135;
            if (v135)
            {
              if (*v129 < 2u)
              {
                a2 = v131;
                a5 = v133;
              }

              else
              {
                a5 = v133;
                v20 = sub_624F0(1, a3, v133, (v37 + 57388), v135);
                v78 = v135;
                a2 = v131;
                if (!v135)
                {
                  if (sub_56A8C(0x2Eu, 4))
                  {
                    v79 = sub_56AD0(0x2Eu);
                    v80 = sub_66A18();
                    v81 = sub_56B04(4);
                    if (v79)
                    {
                      a5 = v133;
                      printf("%lld %d AVE %s: %s::%s:%d %s | failed to add lhvC dictionary %p %p %p %p %d\n", v80, 46, v81, "AVE_FrameRecv", "CreateVideoFormatDesc", 373, "pCFDict != __null", a3, v133, (v37 + 57388), v135, v20);
                      v82 = sub_66A18();
                      v121 = sub_56B04(4);
                      a2 = v131;
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add lhvC dictionary %p %p %p %p %d", v82, 46, v121, "AVE_FrameRecv", "CreateVideoFormatDesc", 373);
                    }

                    else
                    {
                      a5 = v133;
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add lhvC dictionary %p %p %p %p %d", v80, 46, v81, "AVE_FrameRecv", "CreateVideoFormatDesc", 373);
                    }
                  }

                  goto LABEL_17;
                }
              }

              if (*(v37 + 64508))
              {
                CFDictionarySetValue(v78, kCMFormatDescriptionExtension_FullRangeVideo, kCFBooleanTrue);
              }

              if ((v38 & 0x800) != 0)
              {
                v20 = sub_66118(a2, (v37 + 40676), *(v129 + 216), v135);
                if (v20)
                {
                  if (!sub_56A8C(0x2Eu, 4))
                  {
                    goto LABEL_17;
                  }

                  v88 = sub_56AD0(0x2Eu);
                  v89 = sub_66A18();
                  v90 = sub_56B04(4);
                  if (v88)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %s | failed to create crypto SINF %p %p %d %p %d\n", v89, 46, v90, "AVE_FrameRecv", "CreateVideoFormatDesc", 392, "ret == 0", a2, (v37 + 40676), *(v129 + 216), v135, v20);
                    v91 = sub_66A18();
                    v123 = sub_56B04(4);
                    a2 = v131;
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create crypto SINF %p %p %d %p %d", v91, 46, v123, "AVE_FrameRecv", "CreateVideoFormatDesc", 392);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create crypto SINF %p %p %d %p %d", v89, 46, v90, "AVE_FrameRecv", "CreateVideoFormatDesc", 392);
                  }

                  goto LABEL_137;
                }

                v87 = 1902671459;
              }

              else
              {
                v87 = 1752589105;
              }

              v130 = v87;
              v96 = *v127;
              v97 = *(v37 + 57840);
              if (v97 > 3)
              {
                v99 = 0;
              }

              else
              {
                v98 = (&unk_B7C54 + 8 * v97);
                v100 = *v98;
                v99 = v98[1];
                v96 -= v100 * *(v37 + 57872);
              }

              v101 = v127[1] - *(v37 + 57880) * v99;
              if (sub_56A8C(0x2Eu, 8))
              {
                v102 = sub_56AD0(0x2Eu);
                v126 = sub_66A18();
                v103 = sub_56B04(8);
                if (v102)
                {
                  printf("%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d\n", v126, 46, v103, "AVE_FrameRecv", "CreateVideoFormatDesc", 403, *v127, v127[1], v96, v101, *(v37 + 57872), *(v37 + 57880));
                  v104 = sub_66A18();
                  v105 = sub_56B04(8);
                  v37 = v128;
                  syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v104, 46, v105);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v126, 46, v103);
                }
              }

              v106 = (v37 + 29360);
              if (*v35 == 2)
              {
                v107 = VTTileEncoderSessionCreateVideoFormatDescription();
              }

              else
              {
                v107 = VTEncoderSessionCreateVideoFormatDescription();
              }

              v108 = v107;
              if (v107)
              {
                if (sub_56A8C(0x2Eu, 4))
                {
                  v109 = sub_56AD0(0x2Eu);
                  v110 = sub_66A18();
                  v111 = sub_56B04(4);
                  v112 = *v35;
                  if (v109)
                  {
                    v125 = v96;
                    a2 = v131;
                    printf("%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %d %p %p %d\n", v110, 46, v111, "AVE_FrameRecv", "CreateVideoFormatDesc", 431, "res == noErr", v112, v131, v130, v125, v101, v135, v106, v108);
                    v113 = sub_66A18();
                    v114 = sub_56B04(4);
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %d %p %p %d", v113, 46, v114, "AVE_FrameRecv", "CreateVideoFormatDesc", 431, "res == noErr", *v35);
                  }

                  else
                  {
                    a2 = v131;
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %d %p %p %d", v110, 46, v111, "AVE_FrameRecv", "CreateVideoFormatDesc", 431, "res == noErr", v112);
                  }

                  goto LABEL_108;
                }

                v20 = 4294966296;
              }
            }

            else if (sub_56A8C(0x2Eu, 4))
            {
              v83 = sub_56AD0(0x2Eu);
              v84 = sub_66A18();
              v85 = sub_56B04(4);
              if (v83)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | failed to make hvcC dictionary %p %p %p %d %p %d %p %p %d\n", v84, 46, v85, "AVE_FrameRecv", "CreateVideoFormatDesc", 365, "pCFDict != __null", a3, v133, v19, v136[0], 0, 0, (v37 + 57388), &v135, v20);
                v86 = sub_66A18();
                a5 = v133;
                v122 = sub_56B04(4);
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make hvcC dictionary %p %p %p %d %p %d %p %p %d", v86, 46, v122, "AVE_FrameRecv", "CreateVideoFormatDesc", 365, "pCFDict != __null", a3, v133, v19);
              }

              else
              {
                a5 = v133;
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make hvcC dictionary %p %p %p %d %p %d %p %p %d", v84, 46, v85, "AVE_FrameRecv", "CreateVideoFormatDesc", 365, "pCFDict != __null", a3, v133, v19);
              }

              a2 = v131;
              goto LABEL_17;
            }

            a2 = v131;
            goto LABEL_137;
          }

          free(v19);
        }

        v19 = 0;
        goto LABEL_83;
      }

      if (sub_56A8C(0x2Eu, 4))
      {
        v51 = sub_56AD0(0x2Eu);
        v52 = sub_66A18();
        v53 = sub_56B04(4);
        if (v51)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | encode type %d not recognized.\n", v52, 46, v53, "AVE_FrameRecv", "CreateVideoFormatDesc", 437, "false", *(a1 + 39468));
          v52 = sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | encode type %d not recognized.", v52, 46);
      }

      v19 = 0;
      v20 = 4294966281;
    }
  }

  else
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v16 = sub_56AD0(0x2Eu);
      v17 = sub_66A18();
      v18 = sub_56B04(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p\n", v17, 46, v18, "AVE_FrameRecv", "CreateVideoFormatDesc", 241, "(psInfo != __null) && (psInfo->iNum != 0)", a5);
        v17 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p", v17, 46);
    }

    v19 = 0;
    v20 = 4294966295;
  }

LABEL_17:
  if (v135)
  {
    CFRelease(v135);
    v135 = 0;
  }

  if (v19)
  {
    free(v19);
  }

  if (v134)
  {
    CFRelease(v134);
    v134 = 0;
  }

  if (sub_56A8C(0x2Eu, 7))
  {
    v21 = sub_56AD0(0x2Eu);
    v22 = sub_66A18();
    v23 = sub_56B04(7);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %p %p %p %d\n", v22, 46, v23, "AVE_FrameRecv", "CreateVideoFormatDesc", a2, a3, a4, a5, v20);
      v24 = sub_66A18();
      v116 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %p %p %p %d", v24, 46, v116, "AVE_FrameRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %p %p %p %d", v22, 46, v23, "AVE_FrameRecv");
    }
  }

  return v20;
}

uint64_t sub_2A568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a2 + 3180);
    if (v4 >= 0x1E)
    {
      v11 = 3758097084;
      if (sub_56A8C(0x2Eu, 4))
      {
        v15 = sub_56AD0(0x2Eu);
        v16 = sub_66A18();
        v17 = sub_56B04(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v16, 46, v17, "AVE_FrameRecv", "DoneWithThisFrameFromTheHW", 476, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
          v16 = sub_66A18();
          v17 = sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v16, 46, v17, "AVE_FrameRecv", "DoneWithThisFrameFromTheHW", 476, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      }
    }

    else
    {
      v6 = *(a1 + 8 * v4 + 27072);
      if (v6)
      {
        v7 = a3;
        if (sub_56A8C(0x2Eu, 7))
        {
          v8 = sub_56AD0(0x2Eu);
          v9 = sub_66A18();
          v10 = sub_56B04(7);
          if (v8)
          {
            printf("%lld %d AVE %s: %s::%s:%d DoneWithThis PlaneNumber %d size %d\n", v9, 46, v10, "AVE_FrameRecv", "DoneWithThisFrameFromTheHW", 483, *(a2 + 3180), *(v6 + 288));
            v9 = sub_66A18();
            sub_56B04(7);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d DoneWithThis PlaneNumber %d size %d", v9);
        }

        sub_1F5C8(*(a1 + 40704), *(a2 + 20), *(a2 + 40), (v6 + 45320));
        sub_1F904(*(a1 + 40704), *(a2 + 20), *(a2 + 40), (a2 + 72664));
        v22 = sub_1D4C0(*(a1 + 40704), 7u, *(a2 + 20));
        sub_4FAFC((v6 + 42608), v22, *(a2 + 40));
        v23 = sub_1D4C0(*(a1 + 40704), 6u, *(a2 + 20));
        sub_4F1E8((v6 + 4720), (a2 + 33012), v23, *(a2 + 40), v7);
        sub_1F284(*(a1 + 40704), *(a2 + 20), (v6 + 42760));
        bzero(v6, 0xBAA8uLL);
      }

      else if (sub_56A8C(3u, 4))
      {
        v11 = sub_56AD0(3u);
        v18 = sub_66A18();
        v19 = sub_56B04(4);
        if (!v11)
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL");
          return v11;
        }

        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v18, 3, v19, "DoneWithThisFrameFromTheHW", 480, "codedHeader != __null");
        v20 = sub_66A18();
        v21 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v20, 3, v21, "DoneWithThisFrameFromTheHW", 480, "codedHeader != __null");
      }

      return 0;
    }
  }

  else
  {
    v11 = 3758097084;
    if (sub_56A8C(3u, 4))
    {
      v12 = sub_56AD0(3u);
      v13 = sub_66A18();
      v14 = sub_56B04(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: DoneWithThisFrameFromTheHW Frame == NULL\n", v13, 3, v14, "DoneWithThisFrameFromTheHW", 473, "Frame != __null");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: DoneWithThisFrameFromTheHW Frame == NULL");
    }
  }

  return v11;
}

uint64_t sub_2A9CC(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  if (sub_56A8C(0x2Eu, 7))
  {
    v6 = sub_56AD0(0x2Eu);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %d %d\n", v7, 46, v8, "AVE_FrameRecv", "CollectSlicesInfo", a2, a3);
      v7 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %d %d", v7);
  }

  if (a2 >= 0x1E)
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v18 = sub_56AD0(0x2Eu);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong plane number %d\n", v19, 46, v20, "AVE_FrameRecv", "CollectSlicesInfo", 521, "0 <= iPlaneNumber && iPlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", a1, a2);
        v19 = sub_66A18();
        v49 = sub_56B04(4);
      }

      else
      {
        v49 = v20;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong plane number %d", v19, 46, v49);
    }

    goto LABEL_46;
  }

  if (a3 >= 2)
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v21 = sub_56AD0(0x2Eu);
      v22 = sub_66A18();
      v23 = sub_56B04(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong layer ID %d\n", v22, 46, v23, "AVE_FrameRecv", "CollectSlicesInfo", 524, "0 <= iLayerID && iLayerID < ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1, a3);
        v22 = sub_66A18();
        v50 = sub_56B04(4);
      }

      else
      {
        v50 = v23;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong layer ID %d", v22, 46, v50);
    }

    goto LABEL_46;
  }

  v9 = *&a1[2 * a2 + 6768];
  if (!v9)
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v24 = sub_56AD0(0x2Eu);
      v25 = sub_66A18();
      v26 = sub_56B04(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d\n", v25, 46, v26, "AVE_FrameRecv", "CollectSlicesInfo", 528, "codedHeader != __null", a1, a2);
        v27 = sub_66A18();
        v51 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d", v27, 46, v51);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d", v25, 46, v26);
      }
    }

    goto LABEL_46;
  }

  v10 = a1 + 7008;
  v11 = v9 + 12 * a3;
  v12 = &a1[3 * a3];
  v13 = *(v11 + 144);
  v14 = v12 + 7271;
  v12[7273] = *(v11 + 152);
  *(v12 + 7271) = v13;
  if (sub_56A8C(0x2Eu, 7))
  {
    v15 = sub_56AD0(0x2Eu);
    v16 = sub_66A18();
    v17 = sub_56B04(7);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s:%d Filler[%d] %d %d\n", v16, 46, v17, "AVE_FrameRecv", "CollectSlicesInfo", 531, a3, *(v14 + 7), v14[2]);
      v16 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d Filler[%d] %d %d", v16, 46);
  }

  a1[7270] = 3 * *(v9 + 140);
  memcpy(a1 + 7008, (v9 + 280), 0x204uLL);
  if (sub_56A8C(0x2Eu, 7))
  {
    v28 = sub_56AD0(0x2Eu);
    v29 = sub_66A18();
    v30 = sub_56B04(7);
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s:%d slice number %d\n", v29, 46, v30, "AVE_FrameRecv", "CollectSlicesInfo", 539, *v10);
      v29 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d slice number %d", v29);
  }

  if (*v10 > 0x20)
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v41 = sub_56AD0(0x2Eu);
      v42 = sub_66A18();
      v43 = sub_56B04(4);
      if (v41)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong slices %d\n", v42, 46, v43, "AVE_FrameRecv", "CollectSlicesInfo", 542, "0 <= m_sSliceInfo.iNum && m_sSliceInfo.iNum <= ((32) < (256) ? (32) : (256))", a1, *v10);
        v42 = sub_66A18();
        v43 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong slices %d", v42, 46, v43, "AVE_FrameRecv", "CollectSlicesInfo", 542, "0 <= m_sSliceInfo.iNum && m_sSliceInfo.iNum <= ((32) < (256) ? (32) : (256))", a1, *v10);
    }

LABEL_46:
    v40 = 4294966295;
    goto LABEL_47;
  }

  if (*v10)
  {
    v31 = 0;
    v32 = a1 + 7012;
    do
    {
      if (sub_56A8C(0x2Eu, 7))
      {
        v33 = sub_56AD0(0x2Eu);
        v34 = sub_66A18();
        v35 = sub_56B04(7);
        v36 = *(v32 - 3);
        v37 = *(v32 - 2);
        v38 = *(v32 - 1);
        v39 = *v32;
        if (v33)
        {
          printf("%lld %d AVE %s: %s::%s:%d slice %2d offset %8d size %8d header offset %8d size %8d\n", v34, 46, v35, "AVE_FrameRecv", "CollectSlicesInfo", 548, v31, v36, v37, *(v32 - 1), v39);
          v34 = sub_66A18();
          v35 = sub_56B04(7);
          v36 = *(v32 - 3);
          v37 = *(v32 - 2);
          v38 = *(v32 - 1);
          v39 = *v32;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d slice %2d offset %8d size %8d header offset %8d size %8d", v34, 46, v35, "AVE_FrameRecv", "CollectSlicesInfo", 548, v31, v36, v37, v38, v39);
      }

      ++v31;
      v32 += 4;
    }

    while (v31 < *v10);
    v40 = 0;
  }

  else
  {
    v40 = 0;
  }

LABEL_47:
  if (sub_56A8C(0x2Eu, 7))
  {
    v44 = sub_56AD0(0x2Eu);
    v45 = sub_66A18();
    v46 = sub_56B04(7);
    if (v44)
    {
      printf("%lld %d AVE %s: %s::%s Exit %d %d %d\n", v45, 46, v46, "AVE_FrameRecv", "CollectSlicesInfo", a2, a3, v40);
      v47 = sub_66A18();
      sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %d %d %d", v47);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %d %d %d", v45);
    }
  }

  return v40;
}

uint64_t sub_2B26C(void **a1, unsigned int *a2, char *a3, int a4, int a5, int a6)
{
  v31 = a1 + 17227;
  if (sub_56A8C(0x2Eu, 7))
  {
    v12 = sub_56AD0(0x2Eu);
    v13 = sub_66A18();
    v14 = sub_56B04(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d %d %d\n", v13, 46, v14, "AVE_FrameRecv", "AddAllSEIs", a1, *v31, a2, a3, a4, a5, a6);
      v15 = sub_66A18();
      v30 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d %d %d", v15, 46, v30, "AVE_FrameRecv", "AddAllSEIs");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d %d %d", v13, 46, v14, "AVE_FrameRecv", "AddAllSEIs");
    }
  }

  if (a2 && a3)
  {
    if (a2[795] >= 0x1E)
    {
      v16 = 3758097084;
      if (sub_56A8C(0x2Eu, 4))
      {
        v21 = sub_56AD0(0x2Eu);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v22, 46, v23, "AVE_FrameRecv", "AddAllSEIs", 579, "0 <= pFrame->PlaneNumber && pFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", a2[795]);
          v22 = sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v22, 46);
      }
    }

    else
    {
      *(v31 + 2) = 0;
      if (!a6 || (v16 = 0, (a5 & 1) == 0))
      {
        v32 = 0;
        sub_2B71C(a1, &v32, a2);
        v17 = sub_12F4(a1[17962], a2[10], v32, a3, a4, v31 + 2);
        v16 = sub_668C8(v17);
      }
    }
  }

  else
  {
    v16 = 3758097084;
    if (sub_56A8C(3u, 4))
    {
      v18 = sub_56AD0(3u);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | H264FrameRec ERROR\n", v19, 3, v20, "AVE_FrameRecv", "AddAllSEIs", 575, "pFrame != __null && pBuf != __null");
        v19 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | H264FrameRec ERROR", v19);
    }
  }

  if (sub_56A8C(0x2Eu, 7))
  {
    v24 = sub_56AD0(0x2Eu);
    v25 = sub_66A18();
    v26 = sub_56B04(7);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d %d %d\n", v25, 46, v26, "AVE_FrameRecv", "AddAllSEIs", a1, *v31, a2, a3, a4, a5, a6, v16);
      v27 = sub_66A18();
      v28 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d %d %d", v27, 46, v28, "AVE_FrameRecv", "AddAllSEIs");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d %d %d", v25, 46, v26, "AVE_FrameRecv", "AddAllSEIs");
    }
  }

  return v16;
}

uint64_t sub_2B71C(void *a1, uint64_t *a2, _DWORD *a3)
{
  v6 = a1 + 39468;
  if (sub_56A8C(0xD3u, 7))
  {
    v7 = sub_56AD0(0xD3u);
    v8 = sub_66A18();
    v9 = sub_56B04(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p\n", v8, 211, v9, "AVE_FrameRecv", "DecideSEIBits", a1, a1[17227], a2, a3);
      v10 = sub_66A18();
      v21 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", v10, 211, v21);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", v8, 211, v9);
    }
  }

  v11 = a3[614];
  if (v11)
  {
    v12 = v11 == 3;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || !a3[10])
  {
    if (a3[10])
    {
      v13 = 0x6B00000381;
    }

    else
    {
      v13 = 0x3FF000003E1;
    }

    v14 = 2;
    if (!a3[10])
    {
      v14 = 6;
    }
  }

  else
  {
    v13 = 0x6300000381;
    v14 = 2;
  }

  if (v6[156] == 1 && *v6 == 2)
  {
    v15 = v13 | v14;
    if (v11 == 3 || a3[7432] == 21)
    {
      v13 = v15 | 0x18;
    }

    else
    {
      v13 = v15 | 8;
    }
  }

  *a2 = v13;
  if (sub_56A8C(0xD3u, 7))
  {
    v16 = sub_56AD0(0xD3u);
    v17 = sub_66A18();
    v18 = sub_56B04(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p 0x%llx %d\n", v17, 211, v18, "AVE_FrameRecv", "DecideSEIBits", a1, a1[17227], a2, a3, v13, 0);
      v19 = sub_66A18();
      v22 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p 0x%llx %d", v19, 211, v22, "AVE_FrameRecv", "DecideSEIBits");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p 0x%llx %d", v17, 211, v18, "AVE_FrameRecv", "DecideSEIBits");
    }
  }

  return 0;
}

uint64_t sub_2B9C0(void *a1, unsigned int *a2, int a3, char *a4)
{
  if (sub_56A8C(0x2Eu, 7))
  {
    v8 = sub_56AD0(0x2Eu);
    v9 = sub_66A18();
    v10 = sub_56B04(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %d %p\n", v9, 46, v10, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", a1, a1[17227], a2, a3, a4);
      v11 = sub_66A18();
      v36 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %d %p", v11, 46, v36, "AVE_FrameRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %d %p", v9, 46, v10, "AVE_FrameRecv");
    }
  }

  if (!a2 || a3 < 1 || !a4)
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v20 = sub_56AD0(0x2Eu);
      v21 = sub_66A18();
      v22 = sub_56B04(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %d %p\n", v21, 46, v22, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 709, "(psEncFrameInfo != __null) && (iSize > 0) && (piFinalBuf != __null)", a1, a1[17227], a2, a3, a4);
        v23 = sub_66A18();
        v37 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %d %p", v23, 46, v37, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 709);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %d %p", v21, 46, v22, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 709);
      }
    }

    goto LABEL_31;
  }

  v12 = *a2;
  if (v12 < 1)
  {
    v13 = 0;
    goto LABEL_21;
  }

  v13 = 0;
  v14 = 6;
  do
  {
    v13 += a2[v14];
    v14 += 8;
    --v12;
  }

  while (v12);
  if (v13 != a3)
  {
LABEL_21:
    if (sub_56A8C(0x2Eu, 4))
    {
      v24 = sub_56AD0(0x2Eu);
      v25 = sub_66A18();
      v26 = sub_56B04(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong total size %p %lld %p %d %p %d\n", v25, 46, v26, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 717, "size == iSize", a1, a1[17227], a2, a3, a4, v13);
        v25 = sub_66A18();
        v26 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong total size %p %lld %p %d %p %d", v25, 46, v26, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 717, "size == iSize");
    }

    goto LABEL_31;
  }

  v15 = 0;
  v16 = a2 + 4;
  v17 = a4;
  while (*v16)
  {
    v18 = v16[2];
    if (v18 <= 0)
    {
      break;
    }

    memcpy(v17, *v16, v18);
    *(v16 + 2) = v17;
    v17 += v16[2];
    ++v15;
    v16 += 8;
    if (v15 >= *a2)
    {
      v19 = 0;
      goto LABEL_32;
    }
  }

  if (sub_56A8C(0x2Eu, 4))
  {
    v27 = sub_56AD0(0x2Eu);
    v28 = sub_66A18();
    v29 = sub_56B04(4);
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p %d\n", v28, 46, v29, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 727, "(psEncFrameInfo->saEntry[i].sBuf.pBuf != __null) && (psEncFrameInfo->saEntry[i].sBuf.iSize > 0)", a1, a1[17227], a2, v16, v16[2]);
      v28 = sub_66A18();
      v29 = sub_56B04(4);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p %d", v28, 46, v29, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 727);
  }

LABEL_31:
  v19 = 4294966295;
LABEL_32:
  if (sub_56A8C(0x2Eu, 7))
  {
    v30 = sub_56AD0(0x2Eu);
    v31 = sub_66A18();
    v32 = sub_56B04(7);
    if (v30)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %d %p %d\n", v31, 46, v32, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", a1, a1[17227], a2, a3, a4, v19);
      v33 = sub_66A18();
      v34 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d %p %d", v33, 46, v34, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d %p %d", v31, 46, v32, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer");
    }
  }

  return v19;
}

uint64_t sub_2BFC0(uint64_t a1, uint64_t a2)
{
  if (sub_56A8C(0x2Eu, 7))
  {
    v4 = sub_56AD0(0x2Eu);
    v5 = sub_66A18();
    v6 = sub_56B04(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p\n", v5, 46, v6, "AVE_FrameRecv", "SendPS", a2);
      v7 = sub_66A18();
      v74 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v7, 46, v74, "AVE_FrameRecv", "SendPS", a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v5, 46, v6, "AVE_FrameRecv", "SendPS", a2);
    }
  }

  if (!*(a1 + 29352))
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v20 = sub_56AD0(0x2Eu);
      v21 = sub_66A18();
      v22 = sub_56B04(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | nobody wants this SPS PPS header. dump it\n", v21, 46, v22, "AVE_FrameRecv", "SendPS", 757, "m_pSession != __null");
        v21 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | nobody wants this SPS PPS header. dump it", v21);
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v23 = sub_56AD0(0x2Eu);
      v24 = sub_66A18();
      v25 = sub_56B04(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter psFrameInfo == NULL\n", v24, 46, v25, "AVE_FrameRecv", "SendPS", 760, "psFrameInfo != __null");
        v24 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter psFrameInfo == NULL", v24);
    }

    goto LABEL_33;
  }

  v8 = *(a2 + 3180);
  if (v8 >= 0x1E)
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v26 = sub_56AD0(0x2Eu);
      v27 = sub_66A18();
      v28 = sub_56B04(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v27, 46, v28, "AVE_FrameRecv", "SendPS", 764, "0 <= psFrameInfo->PlaneNumber && psFrameInfo->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
        v27 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v27, 46);
    }

LABEL_33:
    v32 = 4294966295;
    goto LABEL_34;
  }

  v9 = a1 + 143664;
  v10 = *(a1 + 8 * v8 + 27072);
  if (v10)
  {
    v11 = v10 + 45056;
    v12 = (v10 + 45392);
    v13 = *(v10 + 45392);
    if (v13 > 0)
    {
      v14 = v10 + 16 * (v13 - 1) + 45396;
      v15 = *(v14 + 8);
      LODWORD(v14) = *(v14 + 12);
      v16 = __OFADD__(v14, v15);
      LODWORD(v14) = v14 + v15;
      *(a1 + 143680) = v14;
      if ((v14 < 0) ^ v16 | (v14 == 0))
      {
        if (sub_56A8C(0x2Eu, 4))
        {
          v40 = sub_56AD0(0x2Eu);
          v41 = sub_66A18();
          v42 = sub_56B04(4);
          if (v40)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | wrong PS size %d\n", v41, 46, v42, "AVE_FrameRecv", "SendPS", 777, "m_iPSSize > 0", *(a1 + 143680));
            v41 = sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong PS size %d", v41, 46);
        }

        v32 = 4294966281;
        goto LABEL_58;
      }

      v79 = v10;
      v80 = (v10 + 45392);
      if (sub_56A8C(0x2Eu, 7))
      {
        v17 = sub_56AD0(0x2Eu);
        v18 = sub_66A18();
        v19 = sub_56B04(7);
        if (v17)
        {
          printf("%lld %d AVE %s: %s::%s:%d codec %d PSInfo num %d size %d\n", v18, 46, v19, "AVE_FrameRecv", "SendPS", 780, *(a1 + 39468), *v12, *(a1 + 143680));
          v18 = sub_66A18();
          sub_56B04(7);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d codec %d PSInfo num %d size %d", v18, 46);
      }

      v43 = sub_2CED0(a1, *(a1 + 143680), (a1 + 143672), *(a2 + 2552));
      *v9 = v43;
      if (!v43)
      {
        if (sub_56A8C(0x2Eu, 4))
        {
          v48 = sub_56AD0(0x2Eu);
          v49 = sub_66A18();
          v50 = sub_56B04(4);
          if (v48)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to create buffer. %d %p %p\n", v49, 46, v50, "AVE_FrameRecv", "SendPS", 785, "m_piPSOutput != __null", *(a1 + 143680), (a1 + 143672), *(a1 + 143672));
            v51 = sub_66A18();
            v76 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create buffer. %d %p %p", v51, 46, v76, "AVE_FrameRecv");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create buffer. %d %p %p", v49, 46, v50, "AVE_FrameRecv");
          }
        }

        v32 = 4294966293;
        goto LABEL_58;
      }

      if (sub_56A8C(0x2Eu, 7))
      {
        v44 = sub_56AD0(0x2Eu);
        v45 = sub_66A18();
        v46 = sub_56B04(7);
        if (v44)
        {
          printf("%lld %d AVE %s: %s::%s:%d create buffer %p %d %p\n", v45, 46, v46, "AVE_FrameRecv", "SendPS", 788, *v9, *(a1 + 143680), *(a1 + 143672));
          v47 = sub_66A18();
          v75 = sub_56B04(7);
          syslog(3, "%lld %d AVE %s: %s::%s:%d create buffer %p %d %p", v47, 46, v75);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d create buffer %p %d %p", v45, 46, v46);
        }
      }

      v78 = (a1 + 143664);
      if (*v12 >= 1)
      {
        v53 = 0;
        v54 = (v11 + 352);
        do
        {
          if (sub_56A8C(0x2Eu, 8))
          {
            v55 = sub_56AD0(0x2Eu);
            v56 = sub_66A18();
            v57 = sub_56B04(8);
            v58 = *(v54 - 3);
            v59 = *(v54 - 2);
            v60 = *(v54 - 1);
            v61 = *v54;
            if (v55)
            {
              printf("%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d\n", v56, 46, v57, "AVE_FrameRecv", "SendPS", 793, v53, v58, v59, *(v54 - 1), v61);
              v56 = sub_66A18();
              v57 = sub_56B04(8);
              v58 = *(v54 - 3);
              v59 = *(v54 - 2);
              v60 = *(v54 - 1);
              v61 = *v54;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d", v56, 46, v57, "AVE_FrameRecv", "SendPS", 793, v53, v58, v59, v60, v61);
            v12 = v80;
          }

          ++v53;
          v54 += 4;
        }

        while (v53 < *v12);
      }

      v9 = a1 + 143664;
      memcpy(*(a1 + 143664), (v79 + 45732), *(a1 + 143680));
      if (sub_56A8C(0x2Eu, 8))
      {
        v62 = sub_56AD0(0x2Eu);
        v63 = sub_66A18();
        v64 = sub_56B04(8);
        if (v62)
        {
          printf("%lld %d AVE %s: %s::%s:%d %d %p\n", v63, 46, v64, "AVE_FrameRecv", "SendPS", 800, *(a1 + 39448), *(a1 + 29352));
          v63 = sub_66A18();
          sub_56B04(8);
          v12 = v80;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %d %p", v63, 46);
      }

      v65 = *(a1 + 29352);
      if (v65 == &dword_0 + 1)
      {
        if (*(a1 + 29288) && *(a1 + 29280))
        {
          if (sub_56A8C(0x2Eu, 7))
          {
            v71 = sub_56AD0(0x2Eu);
            v72 = sub_66A18();
            v73 = sub_56B04(7);
            if (v71)
            {
              printf("%lld %d AVE %s: %s::%s:%d calling emitEncodedFrame on %d bytes (SPS PPS)\n", v72, 46, v73, "AVE_FrameRecv", "SendPS", 810, *(a1 + 143680));
              v72 = sub_66A18();
              sub_56B04(7);
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d calling emitEncodedFrame on %d bytes (SPS PPS)", v72);
          }

          (*(a1 + 29288))(*(a1 + 29280), *(a1 + 143664), *(a1 + 143680), 0, *(a1 + 39468));
        }

        *(a1 + 25784) = 1;
      }

      else
      {
        if (*(a1 + 39252) >= 2u)
        {
          sub_62A40(a1 + 57388, a1 + 137776, 4);
          sub_62A94(a1 + 57388, (a1 + 137780), 6u);
          v65 = *(a1 + 29352);
        }

        v66 = sub_28E2C(a1, v65, *v78, a2, v12);
        if (v66)
        {
          v32 = v66;
          if (sub_56A8C(0x2Eu, 4))
          {
            v67 = sub_56AD0(0x2Eu);
            v68 = sub_66A18();
            v69 = sub_56B04(4);
            if (v67)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %p %p %p %d\n", v68, 46, v69, "AVE_FrameRecv", "SendPS", 831, "ret == 0", *(a1 + 29352), *v78, a2, v32);
              v70 = sub_66A18();
              v77 = sub_56B04(4);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %p %p %p %d", v70, 46, v77, "AVE_FrameRecv", "SendPS");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %p %p %p %d", v68, 46, v69, "AVE_FrameRecv", "SendPS");
            }
          }

          goto LABEL_58;
        }
      }

      sub_1EA8C(*(a1 + 40704), *(a2 + 20), *(a1 + 143664), *(a1 + 143680));
      v32 = 0;
      goto LABEL_34;
    }

    if (sub_56A8C(0x2Eu, 4))
    {
      v37 = sub_56AD0(0x2Eu);
      v38 = sub_66A18();
      v39 = sub_56B04(4);
      if (v37)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong PS number %p %d\n", v38, 46, v39, "AVE_FrameRecv", "SendPS", 772, "psPSInfo->iNum > 0", v12, *v12);
        v38 = sub_66A18();
        v39 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong PS number %p %d", v38, 46, v39, "AVE_FrameRecv", "SendPS", 772, "psPSInfo->iNum > 0", v12, *v12);
    }
  }

  else if (sub_56A8C(0x2Eu, 4))
  {
    v29 = sub_56AD0(0x2Eu);
    v30 = sub_66A18();
    v31 = sub_56B04(4);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | m_CodedBuffPointerDataHeader[%d] == NULL\n", v30, 46, v31, "AVE_FrameRecv", "SendPS", 768, "codedHeader != __null", *(a2 + 3180));
      v30 = sub_66A18();
      v31 = sub_56B04(4);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | m_CodedBuffPointerDataHeader[%d] == NULL", v30, 46, v31, "AVE_FrameRecv", "SendPS", 768, "codedHeader != __null", *(a2 + 3180));
  }

  v32 = 4294966296;
LABEL_58:
  *(v9 + 16) = 0;
  if (*v9)
  {
    sub_2D3A0(a1, *v9);
    *v9 = 0;
  }

  v52 = *(v9 + 8);
  if (v52)
  {
    CFRelease(v52);
    *(v9 + 8) = 0;
  }

LABEL_34:
  if (sub_56A8C(0x2Eu, 7))
  {
    v33 = sub_56AD0(0x2Eu);
    v34 = sub_66A18();
    v35 = sub_56B04(7);
    if (v33)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %d\n", v34, 46, v35, "AVE_FrameRecv", "SendPS", a2, v32);
      v34 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %d", v34);
  }

  return v32;
}