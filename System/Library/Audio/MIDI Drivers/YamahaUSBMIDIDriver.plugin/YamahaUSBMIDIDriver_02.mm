void sub_1D470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  std::mutex::unlock(a10 + 1);
  sub_1298(exception_object);
}

uint64_t sub_1D4C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_1D794(a1, 0x200u);
  *v6 = off_28F18;
  *(v6 + 18) = 0;
  v7 = *a2;
  v6[10] = *a2;
  (*(v7 + 8))(v6 + 11, a2 + 1);
  v8 = *a3;
  *(a1 + 120) = *a3;
  (*(v8 + 8))(a1 + 128, a3 + 1);
  *(a1 + 165) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_4FA0(a1);
  return a1;
}

void sub_1D568(_Unwind_Exception *a1)
{
  (*(v1[15] + 24))(v1 + 16);
  (*(v1[10] + 24))(v1 + 11);
  sub_1D5B4(v1);
  _Unwind_Resume(a1);
}

void *sub_1D5B4(void *a1)
{
  *a1 = &off_28F48;
  sub_1D934(a1);
  (*(a1[4] + 24))(a1 + 5);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1D624(void *a1)
{
  sub_1DA14(a1);

  operator delete();
}

uint64_t sub_1D65C(void *a1, uint64_t a2)
{
  v3 = a1 + 1;
  if (a1[2] == a1[1])
  {
    return 0;
  }

  if (*(*a2 + 32) == 1)
  {
    (**a2)(a2 + 8, v3);
  }

  else
  {
    v6 = a1[4];
    if (*(v6 + 32) == 1)
    {
      (*v6)(a1 + 5, v3);
    }
  }

  v7 = a1[1];
  result = (*(a1 + 4) - v7);
  a1[2] = v7;
  return result;
}

uint64_t sub_1D6E8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  v4 = v2 - v1;
  v5 = *(a1 + 72);
  if (v5 == 2)
  {
    v6 = *(a1 + 120);
    if (*(v6 + 32) != 1)
    {
      goto LABEL_10;
    }

    v7 = 128;
  }

  else
  {
    if (v5 != 1)
    {
      goto LABEL_10;
    }

    v6 = *(a1 + 80);
    if ((*(v6 + 32) & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = 88;
  }

  (*v6)(a1 + v7, a1 + 8);
LABEL_10:
  if (*(a1 + 160) == 1)
  {
    *(a1 + 160) = 0;
  }

  else
  {
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  return v4;
}

void *sub_1D794(void *a1, unsigned int a2)
{
  *a1 = &off_28F48;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = &off_28F68;
  sub_1D830(a1 + 1, a2);
  return a1;
}

void sub_1D800(_Unwind_Exception *a1)
{
  (*(*(v1 + 32) + 24))(v1 + 40);
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1D830(void *a1, unint64_t a2)
{
  if (a1[2] - *a1 < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1280();
  }
}

void sub_1D8FC(void *a1)
{
  sub_1D5B4(a1);

  operator delete();
}

uint64_t sub_1D934(uint64_t a1)
{
  v3 = &off_28F68;
  v1 = (*(*a1 + 16))(a1, &v3);
  v3[3]();
  return v1;
}

void sub_1D9D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1298(exception_object);
}

void *sub_1DA14(void *a1)
{
  *a1 = off_28F18;
  sub_1D6E8(a1);
  (*(a1[15] + 24))(a1 + 16);
  (*(a1[10] + 24))(a1 + 11);

  return sub_1D5B4(a1);
}

uint64_t NewYamahaUSBMIDIDriver(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0xECu, 0xDEu, 0x95u, 0x74u, 0xFu, 0xE4u, 0x11u, 0xD4u, 0xBBu, 0x1Au, 0, 0x50u, 0xE4u, 0xCEu, 0xA5u, 0x26u);
  if (CFEqual(a2, v3))
  {
    operator new();
  }

  return 0;
}

void sub_1DC14()
{
  if ((byte_2C188 & 1) == 0)
  {
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.YamahaUSBMIDIDriver");
    if (BundleWithIdentifier)
    {
      v1 = BundleWithIdentifier;
      CFRetain(BundleWithIdentifier);
      off_2C070 = CFBundleCopyLocalizedString(v1, off_2C070, off_2C070, @"YamahaUSBMIDILocalizable");
      off_2C078 = CFBundleCopyLocalizedString(v1, off_2C078, off_2C078, @"YamahaUSBMIDILocalizable");
      off_2C080 = CFBundleCopyLocalizedString(v1, off_2C080, off_2C080, @"YamahaUSBMIDILocalizable");
      CFRelease(v1);
      byte_2C188 = 1;
    }
  }
}

uint64_t sub_1DCEC(uint64_t a1, uint64_t a2)
{
  result = sub_5FF8(a2);
  if (result)
  {
    v3 = result;
    v5 = 0;
    if ((*(*result + 104))(result, &v5 + 2) || HIWORD(v5) != 1177 || (*(*v3 + 112))(v3, &v5))
    {
      return 0;
    }

    if ((v5 & 0xFC00) == 0x1000)
    {
      return 1;
    }

    v4 = v5 & 0xFF00;
    result = 1;
    if (v4 != 0x2000 && v4 != 20480 && v5 != 5384 && (v5 & 0xFF00) != 0x7000)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DDAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_5FF8(a2);
  if (!v3)
  {
    return 0;
  }

  iterator = 0;
  v7 = -1;
  if ((*(*v3 + 224))(v3, &v7, &iterator))
  {
    return 0;
  }

  if (IOIteratorNext(iterator))
  {
    operator new();
  }

  IOObjectRelease(iterator);
  return sub_70EC(a2, 0, 0);
}

uint64_t sub_1DFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_5FF8(a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = a3;
  if (!a3)
  {
    v7 = sub_1DDAC(v5, a2);
    if (!v7)
    {
      return 0;
    }
  }

  *outDevice = 0;
  v8 = sub_7234(v7);
  v65 = 0;
  if ((*(*v6 + 272))(v6, &v65))
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_6810(a2, v65);
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = off_2C070;
  }

  if ((*(*v6 + 280))(v6, &v65))
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_6810(a2, v65);
  }

  v45 = a3;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = off_2C078;
  }

  MIDIDeviceCreate((a1 + 8), v13, v11, v13, &outDevice[1]);
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  __p = 0;
  v57 = 0;
  v58 = 0;
  v44 = v7;
  sub_7640(v7);
  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = (*(*v8 + 448))(v8, v14, 0);
    v14 = v16;
    if (!v16)
    {
      break;
    }

    v17 = v16[1];
    v18 = v16[2];
    switch(v17)
    {
      case 5:
        v15 = v18 >> 7;
        break;
      case 37:
        if (v18 == 1)
        {
          v19 = v16[3];
          if (v16[3])
          {
            v20 = 0;
            if (v15)
            {
              p_p = &v59;
            }

            else
            {
              p_p = &__p;
            }

            do
            {
              v22 = v62;
              if (v62 != v63)
              {
                while (*(v22 + 2) != v14[v20 + 4])
                {
                  v22 = (v22 + 6);
                  if (v22 == v63)
                  {
                    goto LABEL_39;
                  }
                }
              }

              if (v22 != v63 && v22 != 0)
              {
                sub_1455C(p_p, v22);
              }

LABEL_39:
              ++v20;
            }

            while (v20 != v19);
          }
        }

        break;
      case 36:
        if (v18 == 3)
        {
          LOBYTE(v54) = 3;
          v24 = v16[6];
          *(&v54 + 1) = *(v16 + 3);
          HIBYTE(v54) = v24;
          v55 = v16[2 * v16[5] + 6];
          sub_1455C(&v62, &v54);
        }

        else if (v18 == 2)
        {
          LOBYTE(v54) = 2;
          *(&v54 + 1) = *(v16 + 3);
          HIBYTE(v54) = 0;
          v55 = v16[5];
          sub_1455C(&v62, &v54);
        }

        break;
    }
  }

  v53 = 0;
  v52 = 0;
  v51 = 0;
  LOWORD(v49) = 0;
  LOWORD(v47) = 0;
  (*(*v8 + 80))(v8, &v53 + 1);
  (*(*v8 + 88))(v8, &v53);
  (*(*v8 + 104))(v8, &v49);
  (*(*v8 + 112))(v8, &v47);
  (*(*v8 + 136))(v8, &v52 + 1);
  (*(*v8 + 144))(v8, &v52);
  (*(*v8 + 152))(v8, &v51);
  v26 = v62;
  v25 = v63;
  if (v62 != v63)
  {
    do
    {
      if (*v26 == 2)
      {
        v27 = &v59;
      }

      else
      {
        v27 = &__p;
      }

      sub_1455C(v27, v26);
      v26 = (v26 + 6);
    }

    while (v26 != v25);
  }

  v28 = 0xAAAAAAAAAAAAAAABLL * ((v60 - v59) >> 1);
  v29 = -1431655765 * ((v57 - __p) >> 1);
  if (v28 <= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v28;
  }

  if (v30 >= 1)
  {
    v31 = 0;
    v32 = v28;
    v33 = v29;
    v34 = 4;
    while (1)
    {
      v35 = 0;
      v49 = &off_28E40;
      cf = 0;
      if (v31 < v32)
      {
        v35 = sub_1E5D4(a2, *(v59 + v34), v13);
      }

      if (v31 >= v33)
      {
        break;
      }

      v36 = sub_1E5D4(a2, *(__p + v34), v13);
      v37 = v36;
      if (!v35 || !v36 || !CFEqual(v35, v36))
      {
        goto LABEL_63;
      }

      CFRetain(v35);
      v38 = cf;
      cf = v35;
      if (v38)
      {
        CFRelease(v38);
      }

      CFRelease(v35);
      CFRelease(v37);
      v35 = 0;
      v37 = 0;
LABEL_69:
      MIDIDeviceAddEntity(outDevice[1], cf, 0, v31 < v32, v31 < v33, outDevice);
      if (v35)
      {
        Source = MIDIEntityGetSource(outDevice[0], 0);
        MIDIObjectSetStringProperty(Source, kMIDIPropertyName, v35);
      }

      if (v37)
      {
        Destination = MIDIEntityGetDestination(outDevice[0], 0);
        MIDIObjectSetStringProperty(Destination, kMIDIPropertyName, v37);
      }

      if (v35)
      {
        CFRelease(v35);
      }

      if (v37)
      {
        CFRelease(v37);
      }

      sub_19B70(&v49);
      ++v31;
      v34 += 6;
      if (v30 == v31)
      {
        goto LABEL_78;
      }
    }

    v37 = 0;
LABEL_63:
    if (v30 == 1)
    {
      if (v13)
      {
        CFRetain(v13);
      }

      v39 = cf;
      cf = v13;
      if (v39)
      {
        CFRelease(v39);
      }
    }

    else
    {
      sub_1A120(&v47, off_2C080, (v31 + 1));
      v40 = cf;
      cf = v48;
      v48 = v40;
      sub_19B70(&v47);
    }

    goto LABEL_69;
  }

LABEL_78:
  MIDIObjectSetIntegerProperty(outDevice[1], kMIDIPropertyOffline, 0);
  if (!v45)
  {
    sub_74BC(v44);
    operator delete();
  }

  v10 = outDevice[1];
  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  return v10;
}

void sub_1E55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef sub_1E5D4(uint64_t a1, int a2, const __CFString *a3)
{
  v4 = sub_6810(a1, a2);
  if (!v4)
  {
    return v4;
  }

  Length = CFStringGetLength(a3);
  v6 = Length;
  v11.location = 0;
  v11.length = Length;
  if (CFStringCompareWithOptions(v4, a3, v11, 1uLL))
  {
    return v4;
  }

  v8 = CFStringGetLength(v4);
  if (Length < v8)
  {
    while (1)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(v4, v6);
      if (CharacterAtIndex != 95 && CharacterAtIndex != 32)
      {
        break;
      }

      if (v8 == ++v6)
      {
        Length = v8;
        goto LABEL_10;
      }
    }

    Length = v6;
  }

LABEL_10:
  v12.location = Length;
  v12.length = v8 - Length;
  v10 = CFStringCreateWithSubstring(0, v4, v12);
  CFRelease(v4);
  return v10;
}

uint64_t sub_1E70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_17DDC(a1, a2))
  {
    (*(*a1 + 200))(a1, a3, a4, a2);
  }

  return MIDIObjectSetIntegerProperty(a2, kMIDIPropertyOffline, 0);
}

void sub_1E7A0(int a1, uint64_t a2, uint64_t a3, MIDIObjectRef a4)
{
  if (!a4)
  {
    return;
  }

  v8 = sub_5FF8(a2);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = a3;
  if (!a3)
  {
    v10 = sub_1DDAC(0, a2);
    if (!v10)
    {
      return;
    }
  }

  v52 = a2;
  v48 = a3;
  v49 = v10;
  v11 = sub_7234(v10);
  v71[0] = 0;
  if (sub_17E28(a1, a4))
  {
    str = 0;
    v65 = 0;
    v62 = 0;
    if (MIDIObjectGetStringProperty(a4, kMIDIPropertyManufacturer, &str))
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_13;
    }

    if (CFEqual(str, off_2C070) && !(*(*v9 + 272))(v9, v71))
    {
      v12 = sub_6810(a2, v71[0]);
      if (v12)
      {
        MIDIObjectSetStringProperty(a4, kMIDIPropertyManufacturer, v12);
        v13 = 1;
        goto LABEL_12;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = 0;
LABEL_12:
    CFRelease(str);
    str = 0;
LABEL_13:
    if (MIDIObjectGetStringProperty(a4, kMIDIPropertyModel, &v65))
    {
      v14 = 0;
    }

    else
    {
      if (CFEqual(v65, off_2C078) && !(*(*v9 + 280))(v9, v71))
      {
        v14 = sub_6810(v52, v71[0]);
        if (v14)
        {
          MIDIObjectSetStringProperty(a4, kMIDIPropertyModel, v14);
          MIDIObjectSetStringProperty(a4, kMIDIPropertyName, v14);
          v13 = 1;
        }
      }

      else
      {
        v14 = 0;
      }

      CFRelease(v65);
      v65 = 0;
    }

    if (MIDIObjectGetStringProperty(a4, kMIDIPropertyName, &v62))
    {
      v15 = 0;
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (CFEqual(v62, off_2C078) && !(*(*v9 + 280))(v9, v71))
      {
        v15 = sub_6810(v52, v71[0]);
        if (v15)
        {
          MIDIObjectSetStringProperty(a4, kMIDIPropertyModel, v15);
          MIDIObjectSetStringProperty(a4, kMIDIPropertyName, v15);
          v13 = 1;
        }
      }

      else
      {
        v15 = 0;
      }

      CFRelease(v62);
      v62 = 0;
      if (!v12)
      {
LABEL_22:
        if (v14)
        {
          CFRelease(v14);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        if (v13)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    CFRelease(v12);
    goto LABEL_22;
  }

LABEL_27:
  if (!sub_17F38(a1, a4))
  {
LABEL_105:
    if (!v48)
    {
      sub_74BC(v49);
      operator delete();
    }

    return;
  }

LABEL_28:
  sub_17F38(a1, a4);
  str = 0;
  v69 = 0;
  v70 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  sub_7640(v49);
  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = (*(*v11 + 448))(v11, v16, 0);
    v16 = v18;
    if (!v18)
    {
      break;
    }

    v19 = v18[1];
    v20 = v18[2];
    switch(v19)
    {
      case 5:
        v17 = v20 >> 7;
        break;
      case 37:
        if (v20 == 1)
        {
          v21 = v18[3];
          if (v18[3])
          {
            v22 = 0;
            if (v17)
            {
              v23 = &v65;
            }

            else
            {
              v23 = &v62;
            }

            do
            {
              v24 = str;
              if (str != v69)
              {
                while (BYTE2(v24->isa) != v16[v22 + 4])
                {
                  v24 = (v24 + 6);
                  if (v24 == v69)
                  {
                    goto LABEL_50;
                  }
                }
              }

              if (v24 != v69 && v24 != 0)
              {
                sub_1455C(v23, v24);
              }

LABEL_50:
              ++v22;
            }

            while (v22 != v21);
          }
        }

        break;
      case 36:
        if (v20 == 3)
        {
          LOBYTE(v60) = 3;
          v26 = v18[6];
          *(&v60 + 1) = *(v18 + 3);
          HIBYTE(v60) = v26;
          v61 = v18[2 * v18[5] + 6];
          sub_1455C(&str, &v60);
        }

        else if (v20 == 2)
        {
          LOBYTE(v60) = 2;
          *(&v60 + 1) = *(v18 + 3);
          HIBYTE(v60) = 0;
          v61 = v18[5];
          sub_1455C(&str, &v60);
        }

        break;
    }
  }

  LOBYTE(v57) = 0;
  v59 = 0;
  v58 = 0;
  LOWORD(v55) = 0;
  LOWORD(v53) = 0;
  (*(*v11 + 80))(v11, &v57);
  (*(*v11 + 88))(v11, &v59 + 1);
  (*(*v11 + 104))(v11, &v55);
  (*(*v11 + 112))(v11, &v53);
  (*(*v11 + 136))(v11, &v59);
  (*(*v11 + 144))(v11, &v58 + 1);
  (*(*v11 + 152))(v11, &v58);
  v28 = str;
  v27 = v69;
  if (str != v69)
  {
    do
    {
      if (*v28 == 2)
      {
        v29 = &v65;
      }

      else
      {
        v29 = &v62;
      }

      sub_1455C(v29, v28);
      v28 = (v28 + 6);
    }

    while (v28 != v27);
  }

  v30 = 0xAAAAAAAAAAAAAAABLL * ((v66 - v65) >> 1);
  v31 = v62;
  v32 = -1431655765 * ((v63 - v62) >> 1);
  if (v30 <= v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = v30;
  }

  if (v33 < 1)
  {
LABEL_99:
    if (v31)
    {
      v63 = v31;
      operator delete(v31);
    }

    if (v65)
    {
      v66 = v65;
      operator delete(v65);
    }

    if (str)
    {
      v69 = str;
      operator delete(str);
    }

    goto LABEL_105;
  }

  v34 = 0;
  v50 = v32;
  v51 = v30;
  v35 = 4;
  while (1)
  {
    cf = 0;
    v57 = 0;
    v55 = &off_28E40;
    Entity = MIDIDeviceGetEntity(a4, v34);
    if (!Entity)
    {
      break;
    }

    if (v34 >= v51)
    {
      v37 = 0;
    }

    else
    {
      v37 = sub_1E5D4(v52, *(&v65->isa + v35), 0);
    }

    if (v34 >= v50)
    {
      v41 = 0;
      v39 = 0;
      v40 = v37 != 0;
    }

    else
    {
      v38 = sub_1E5D4(v52, *(&v62->isa + v35), 0);
      v39 = v38;
      v40 = v37 != 0;
      v41 = v38 != 0;
      if (v37 && v38)
      {
        if (CFEqual(v37, v38))
        {
          CFRetain(v37);
          v42 = cf;
          cf = v37;
          if (v42)
          {
            CFRelease(v42);
          }

          CFRelease(v37);
          CFRelease(v39);
          v37 = 0;
          v39 = 0;
          goto LABEL_83;
        }

        v41 = 1;
        v40 = 1;
      }
    }

    if (v33 == 1)
    {
      if (MIDIObjectGetStringProperty(a4, kMIDIPropertyModel, &v57))
      {
        if (v40)
        {
          CFRelease(v37);
        }

        if (v41)
        {
          CFRelease(v39);
        }

        break;
      }

      v43 = v57;
      if (v57)
      {
        CFRetain(v57);
      }

      v44 = cf;
      cf = v43;
      if (v44)
      {
        CFRelease(v44);
      }
    }

    else
    {
      sub_1A120(&v53, off_2C080, (v34 + 1));
      v45 = cf;
      cf = v54;
      v54 = v45;
      sub_19B70(&v53);
    }

LABEL_83:
    MIDIObjectSetStringProperty(Entity, kMIDIPropertyName, cf);
    if (v37)
    {
      Source = MIDIEntityGetSource(Entity, 0);
      MIDIObjectSetStringProperty(Source, kMIDIPropertyName, v37);
    }

    if (v39)
    {
      Destination = MIDIEntityGetDestination(Entity, 0);
      MIDIObjectSetStringProperty(Destination, kMIDIPropertyName, v39);
    }

    if (v37)
    {
      CFRelease(v37);
    }

    if (v39)
    {
      CFRelease(v39);
    }

    sub_19B70(&v55);
    ++v34;
    v35 += 6;
    if (v33 == v34)
    {
      v31 = v62;
      goto LABEL_99;
    }
  }

  sub_19B70(&v55);
  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (str)
  {
    v69 = str;
    operator delete(str);
  }
}

void sub_1EFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  sub_19B70(&a19);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  v30 = *(v28 - 120);
  if (v30)
  {
    *(v28 - 112) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void sub_1F028(void *a1, uint64_t a2)
{
  sub_1F098(a1, a2);

  operator delete();
}

void *sub_1F098(void *a1, uint64_t a2)
{
  *a1 = off_29080;
  v3 = a1[11];
  if (v3)
  {
    CFRelease(v3);
  }

  return sub_2B9C(a1, a2);
}

void sub_1F100(uint64_t a1, MIDIDeviceListRef a2)
{
  if (!*(a1 + 88))
  {
    Current = CFRunLoopGetCurrent();
    *(a1 + 88) = Current;
    CFRetain(Current);
  }

  operator new();
}

uint64_t sub_1F190(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  return 0;
}

void sub_1F1D8(uint64_t a1, uint64_t a2)
{
  sub_2278(a1, a2);
  v3 = qword_2C0F8;
  if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315650;
    v5 = "IOServiceClient.cpp";
    v6 = 1024;
    v7 = 68;
    v8 = 2048;
    v9 = a1;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] IOServiceClient(%p)::IOServiceClient() - failure", &v4, 0x1Cu);
  }
}

void sub_1F2A0()
{
  if (__cxa_guard_acquire(byte_2C100))
  {
    qword_2C0F8 = os_log_create("com.apple.coremidi", "ioserv");

    __cxa_guard_release(byte_2C100);
  }
}

uint64_t sub_1F300(uint64_t a1, mach_port_t *a2)
{
  existing = 0;
  v4 = CFRetain(*(a1 + 56));
  sub_2278(v4, v5);
  v6 = qword_2C0F8;
  if (os_log_type_enabled(qword_2C0F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 56);
    *buf = 136315906;
    v11 = "IOServiceClient.cpp";
    v12 = 1024;
    v13 = 140;
    v14 = 2048;
    v15 = a1;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] IOServiceClient(%p)ScanServices() - getting matching services for dictionary: %@", buf, 0x26u);
  }

  if (!IOServiceGetMatchingServices(*a2, *(a1 + 56), &existing))
  {
    sub_25E4(a1, existing);
  }

  result = existing;
  if (existing)
  {
    return IOObjectRelease(existing);
  }

  return result;
}

void sub_1F458()
{
  if (__cxa_guard_acquire(byte_2C110))
  {
    qword_2C108 = os_log_create("com.apple.coremidi", "ciemit");

    __cxa_guard_release(byte_2C110);
  }
}

void sub_1F4B8()
{
  if (__cxa_guard_acquire(byte_2C120))
  {
    qword_2C118 = os_log_create("com.apple.coremidi", "usbdev");

    __cxa_guard_release(byte_2C120);
  }
}

void sub_1F518(uint64_t a1, uint64_t a2)
{
  sub_6330(a1, a2);
  if (sub_77C4())
  {
    sub_7788();
    sub_7798();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  sub_77B8();
}

void sub_1F5BC(uint64_t a1, uint64_t a2)
{
  sub_6330(a1, a2);
  v2 = qword_2C118;
  if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_ERROR))
  {
    v3[0] = 136315650;
    sub_7788();
    sub_77A8();
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBInterface::Open() - err = 0x%x", v3, 0x18u);
  }

  sub_77B8();
}

void sub_1F684()
{
  if (__cxa_guard_acquire(byte_2C130))
  {
    qword_2C128 = os_log_create("com.apple.coremidi", "usbdvm");

    __cxa_guard_release(byte_2C130);
  }
}

void sub_1F6E4(uint64_t a1)
{
  v2 = MIDIGetDriverIORunLoop();
  source = 0;
  if (!v2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v4 = v2;
  v5 = (*(**(a1 + 104) + 40))(*(a1 + 104));
  source = v5;
  v6 = v5 == 0;
  if (!v5)
  {
    v2 = (*(**(a1 + 104) + 32))(*(a1 + 104), &source);
    v7 = 0;
    if (v2 || !source)
    {
      goto LABEL_11;
    }

    sub_8568(v2, v3);
    v8 = qword_2C138;
    v9 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_DEBUG);
    v5 = source;
    if (v9)
    {
      *buf = 136315906;
      v14 = "USBMIDIDevice.cpp";
      v15 = 1024;
      v16 = 307;
      v17 = 2048;
      v18 = a1;
      v19 = 2048;
      v20 = source;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] USBMIDIDevice(%p)::RegisterAsyncSource() created CFRunLoopSource %p", buf, 0x26u);
      v5 = source;
    }
  }

  v2 = CFRunLoopContainsSource(v4, v5, kCFRunLoopDefaultMode);
  if (!v2)
  {
    CFRunLoopAddSource(v4, source, kCFRunLoopDefaultMode);
  }

  v7 = v6;
LABEL_11:
  sub_8568(v2, v3);
  v10 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    v11 = "failure";
    *buf = 136315906;
    v14 = "USBMIDIDevice.cpp";
    if (v7)
    {
      v11 = "success";
    }

    v15 = 1024;
    v16 = 313;
    v17 = 2048;
    v18 = a1;
    v19 = 2080;
    v20 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d [*] USBMIDIDevice(%p)::RegisterAsyncSource() = %s", buf, 0x26u);
  }
}

void sub_1F8F0()
{
  if (__cxa_guard_acquire(byte_2C140))
  {
    qword_2C138 = os_log_create("com.apple.coremidi", "usbmio");

    __cxa_guard_release(byte_2C140);
  }
}

void sub_1F950(uint64_t a1, _BYTE *a2)
{
  sub_8568(a1, a2);
  v4 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "USBMIDIDevice.cpp";
    v7 = 1024;
    v8 = 240;
    v9 = 2048;
    v10 = a1;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d [-] USBMIDIDevice(%p)::Initialize() encountered an error and is exiting prematurely.", &v5, 0x1Cu);
  }

  *a2 = 0;
}

void sub_1FA28(NSObject *a1, int a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315650;
    v5 = "USBMIDIDevice.cpp";
    v6 = 1024;
    v7 = 496;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&dword_0, a1, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBMIDIDevice::FindPipes: failed (0x%x)", &v4, 0x18u);
  }
}

void sub_1FB0C()
{
  if (__cxa_guard_acquire(byte_2C150))
  {
    qword_2C148 = os_log_create("com.apple.coremidi", "usbmdm");

    __cxa_guard_release(byte_2C150);
  }
}

void sub_1FB6C(void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = a2;
  v6 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  if (v6)
  {
    sub_43D0(v6);
  }

  sub_1081C(v6, a2);
  v7 = qword_2C148;
  if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "USBMIDIDeviceManager.cpp";
    v10 = 1024;
    v11 = 393;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d      [AQAMIDI] USB MIDI device initialization failed.", &v8, 0x12u);
  }

  *a3 = v4;
}

void sub_1FC54()
{
  if (__cxa_guard_acquire(byte_2C160))
  {
    qword_2C158 = os_log_create("com.apple.coremidi", "usbmba");

    __cxa_guard_release(byte_2C160);
  }
}

void sub_1FCB8()
{
  if (__cxa_guard_acquire(byte_2C170))
  {
    qword_2C168 = os_log_create("com.apple.coremidi", "proton");

    __cxa_guard_release(byte_2C170);
  }
}

void sub_1FD18(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  sub_1A95C(a1, a2);
  v3 = qword_2C168;
  if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315650;
    v5 = "MIDIProtocolNegotiator.cpp";
    v6 = 1024;
    v7 = 360;
    v8 = 1024;
    v9 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] handleMessage failed with 0x%x", &v4, 0x18u);
  }
}

void sub_1FDDC()
{
  if (__cxa_guard_acquire(byte_2C180))
  {
    qword_2C178 = os_log_create("com.apple.coremidi", "umptrs");
    __cxa_guard_release(byte_2C180);
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}