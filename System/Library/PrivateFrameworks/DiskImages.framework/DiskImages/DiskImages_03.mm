uint64_t sub_248DCFE44(uint64_t a1, unint64_t a2, int a3)
{
  v6 = (*(*a1 + 496))(a1);
  v7 = *(a1 + 488);
  v8 = *(a1 + 496);
  v9 = a2 % v7;
  v10 = v7 - a2 % v7;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = v10 + a2;
  if (*(a1 + 480) == 1)
  {
    v12 = v11 + 1276;
  }

  else
  {
    v12 = *(a1 + 504) + v11;
  }

  if (a2 == v8)
  {
    return 0;
  }

  if (!v6)
  {
    return 999;
  }

  result = (*(*v6 + 312))(v6, v12);
  if (!result)
  {
    *(a1 + 512) = v12;
    *(a1 + 496) = a2;
    result = sub_248DB9C7C(a1);
    if (!result && a2 > v8 && a3)
    {
      v14 = malloc_type_calloc(1uLL, 32 * *(a1 + 488), 0x100004077774924uLL);
      v21 = 0;
      if (v14)
      {
        v15 = v14;
        v16 = a2 - v8;
        if (v16)
        {
          do
          {
            if (32 * *(a1 + 488) >= v16)
            {
              v17 = v16;
            }

            else
            {
              v17 = 32 * *(a1 + 488);
            }

            v18 = (*(*a1 + 336))(a1, v8, v17, &v21, v15);
            v16 -= v21;
            v8 += v21;
            if (v18)
            {
              v19 = 1;
            }

            else
            {
              v19 = v21 == 0;
            }
          }

          while (!v19 && v16 != 0);
        }

        free(v15);
        return 0;
      }

      return 12;
    }
  }

  return result;
}

int8x8_t sub_248DD0004(uint64_t a1)
{
  v1 = vrev32q_s8(*(a1 + 32));
  *(a1 + 16) = vrev32q_s8(*(a1 + 16));
  *(a1 + 32) = v1;
  *(a1 + 48) = vrev32_s8(*(a1 + 48));
  *(a1 + 88) = vrev32q_s8(*(a1 + 88));
  *(a1 + 136) = bswap32(*(a1 + 136));
  *(a1 + 396) = vrev32_s8(*(a1 + 396));
  *(a1 + 436) = bswap32(*(a1 + 436));
  *(a1 + 696) = vrev32_s8(*(a1 + 696));
  *(a1 + 736) = bswap32(*(a1 + 736));
  *(a1 + 996) = bswap32(*(a1 + 996));
  *(a1 + 1256) = bswap64(*(a1 + 1256));
  result = vrev32_s8(*(a1 + 1264));
  *(a1 + 1264) = result;
  *(a1 + 1272) = bswap32(*(a1 + 1272));
  return result;
}

const __CFDictionary *sub_248DD00A0(uint64_t a1)
{
  v1 = sub_248DAC9B0(a1);
  v2 = MEMORY[0x277CBECE8];
  if (v1)
  {
    Mutable = v1;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      return Mutable;
    }
  }

  valuePtr = 0;
  Value = CFDictionaryGetValue(Mutable, @"owner-mode");
  if (Value && CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr))
  {
    v5 = valuePtr & 0x1C0;
  }

  else
  {
    v5 = 448;
  }

  valuePtr = v5;
  v6 = CFNumberCreate(*v2, kCFNumberSInt16Type, &valuePtr);
  CFDictionarySetValue(Mutable, @"owner-mode", v6);
  CFRelease(v6);
  return Mutable;
}

void sub_248DD0170(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x24C1EBE70);
}

const void **sub_248DD01A8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_248DD01E8(uint64_t a1)
{
  if (((*(*a1 + 592))(a1) & 1) == 0)
  {
    if (*(a1 + 778) == 1)
    {
      result = sub_248DCEC78(a1);
      if (result)
      {
        return result;
      }
    }

    else
    {
      v3 = (*(*a1 + 496))(a1);
      result = (*(*v3 + 360))(v3);
      if (result)
      {
        return result;
      }
    }
  }

  (*(*a1 + 600))(a1);
  return 0;
}

uint64_t sub_248DD02E8(unsigned __int8 *a1, uint64_t a2)
{
  (*(*a1 + 608))(a1);
  if ((*(*a1 + 592))(a1))
  {
    return 0;
  }

  v5 = a1[778];
  v6 = (*(*a1 + 496))(a1);
  if (v5 == 1)
  {
    if (!v6)
    {
      return 999;
    }

    v7 = *(*(*(*a1 + 496))(a1) + 280);

    return v7();
  }

  if (!v6 || (v8 = (*(*a1 + 496))(a1), result = (*(*v8 + 368))(v8, a2), !result))
  {
    v7 = *(*(*(*a1 + 496))(a1) + 368);

    return v7();
  }

  return result;
}

uint64_t sub_248DD052C(_BYTE *a1, void *a2)
{
  if (a1[778] == 1)
  {

    return sub_248DCEFA8(a1, a2);
  }

  else
  {
    v3 = *(*(*(*a1 + 496))(a1) + 376);

    return v3();
  }
}

uint64_t sub_248DD05E0(_BYTE *a1, void *a2)
{
  if (a1[778] == 1)
  {

    return sub_248DCEFBC(a1, a2);
  }

  else
  {
    v3 = *(*(*(*a1 + 496))(a1) + 384);

    return v3();
  }
}

uint64_t sub_248DD0694(_BYTE *a1)
{
  if (a1[778])
  {
    return 78;
  }

  v3 = *(*(*(*a1 + 496))(a1) + 392);

  return v3();
}

uint64_t sub_248DD072C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!(*(*a1 + 592))(a1))
  {
    return 9;
  }

  if (*(a1 + 778))
  {
    if (!a5)
    {
      return 22;
    }

    v9 = a1[96];
    if (v9 < a2 || a3 + a2 > v9)
    {
      return 29;
    }

    v12 = *(*(*(*a1 + 496))(a1) + 328);
  }

  else
  {
    v12 = *(*(*(*a1 + 496))(a1) + 400);
  }

  return v12();
}

uint64_t sub_248DD08EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!(*(*a1 + 592))(a1))
  {
    return 9;
  }

  if (*(a1 + 778))
  {
    if (!a5)
    {
      return 22;
    }

    v9 = a1[96];
    if (v9 < a2 || a3 + a2 > v9)
    {
      return 29;
    }

    v12 = *(*(*(*a1 + 496))(a1) + 336);
  }

  else
  {
    v12 = *(*(*(*a1 + 496))(a1) + 408);
  }

  return v12();
}

__n128 sub_248DD0ABC(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 584);
  v2 = *(a1 + 600);
  v3 = *(a1 + 616);
  v4 = *(a1 + 648);
  *(a2 + 48) = *(a1 + 632);
  *(a2 + 64) = v4;
  *(a2 + 16) = v2;
  *(a2 + 32) = v3;
  result = *(a1 + 664);
  v6 = *(a1 + 680);
  v7 = *(a1 + 696);
  *(a2 + 128) = *(a1 + 712);
  *(a2 + 96) = v6;
  *(a2 + 112) = v7;
  *(a2 + 80) = result;
  return result;
}

__n128 sub_248DD0AF4(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 312);
  v2 = *(a1 + 328);
  v3 = *(a1 + 344);
  v4 = *(a1 + 376);
  *(a2 + 48) = *(a1 + 360);
  *(a2 + 64) = v4;
  *(a2 + 16) = v2;
  *(a2 + 32) = v3;
  result = *(a1 + 392);
  v6 = *(a1 + 408);
  v7 = *(a1 + 424);
  *(a2 + 128) = *(a1 + 440);
  *(a2 + 96) = v6;
  *(a2 + 112) = v7;
  *(a2 + 80) = result;
  return result;
}

uint64_t sub_248DD0B78(void *a1, void *a2, void *a3, float a4, float a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v37 = a4;
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v8 = DIGetBundleRef();
  v9 = sub_248DD4D90(v8, @"Validating %1$@\\U2026", @"Validating %1$@\\U2026");
  v10 = *MEMORY[0x277CBECE8];
  v11 = (*(*a1 + 192))(a1);
  v12 = CFStringCreateWithFormat(v10, 0, v9, v11);
  sub_248DC869C(a1, 0, a1, v12, 16, 0, 0);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  (*(*a1 + 744))(a1, v38);
  v13 = sub_248DA7FAC(v38[0]);
  if (v13)
  {
    v14 = v13;
    v15 = sub_248DA9678(v38);
    sub_248DC869C(a1, 3, a1, 2, 0, 0, 0);
    (*(*v14 + 48))(v14);
    sub_248DC869C(a1, 1, a1, &v37, 0, 0, 0);
    v36 = 0;
    v16 = (*(*a1 + 272))(a1);
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v22 = malloc_type_malloc(0x100000uLL, 0xF8E2780DuLL);
      if (v22)
      {
        v23 = v22;
        v24 = 0;
        v25 = 0;
        v26 = a5 - a4;
        v27 = a1[33];
        v28 = a4;
        v29 = v27;
        while (1)
        {
          if (!v29)
          {
            v32 = 0;
            goto LABEL_31;
          }

          v30 = v29 >= 0x100000 ? 0x100000 : v29;
          v31 = (*(*a1 + 328))(a1, v24, v30, &v36, v23);
          if (v31)
          {
            break;
          }

          (*(*v14 + 56))(v14, v23, v30);
          v25 += v30;
          v37 = a4 + ((v25 / v27) * v26);
          if ((v37 - v28) >= 1.0)
          {
            sub_248DC869C(a1, 1, a1, &v37, 0, 0, 0);
            v28 = v37;
          }

          v24 += v30;
          v29 -= v30;
          if (sub_248DC869C(a1, 2, a1, 0, 0, 0, 0))
          {
            v32 = 112;
            goto LABEL_31;
          }
        }

        v32 = v31;
LABEL_31:
        free(v23);
        (*(*v14 + 72))(v14);
        v33 = sub_248DAB8AC(a1, v15, v14);
        if (v33)
        {
          v34 = v33;
          sub_248DC869C(a1, 0, a1, v33, 16, 0, 0);
          CFRelease(v34);
        }

        if ((*(*v15 + 152))(v15, v14))
        {
          v17 = v32;
        }

        else
        {
          v17 = 117;
        }
      }

      else
      {
        v17 = 12;
      }

      (*(*a1 + 280))(a1, 0);
    }

    DIDiskImageObjectRelease(v14);
    if (v15)
    {
      DIDiskImageObjectRelease(v15);
    }
  }

  else
  {
    v18 = DIGetBundleRef();
    v19 = sub_248DD4D90(v18, @"Unknown checksum type %1$ld.", @"Unknown checksum type %1$ld.");
    v20 = (*(*a1 + 192))(a1);
    v21 = CFStringCreateWithFormat(v10, 0, v19, v20);
    sub_248DC869C(a1, 0, a1, v21, 16, 0, 0);
    if (v21)
    {
      CFRelease(v21);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    return 0;
  }

  return v17;
}

uint64_t sub_248DD10C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  if ((*(*a1 + 592))(a1) & 1) != 0 || ((*(*a1 + 616))(a1))
  {
    return 16;
  }

  v6 = (*(*a2 + 48))(a2);
  if (!v6)
  {
    if (DIUDIFFileAccessGetResourceFile_0(a3, &v14))
    {
      v6 = 999;
    }

    else
    {
      v8 = (*(*v14 + 288))(v14, 0, 0);
      if (v8 || (v8 = (*(*v14 + 304))(v14, a2, 0, 0), v8) || (v8 = (*(*v14 + 200))(v14), v8) || (v8 = DIUDIFFileAccessWriteResourceFile_0(a3), v8))
      {
        v6 = v8;
      }

      else
      {
        v9 = sub_248DAFC18(a3);
        memcpy((a1 + 232), v9, 0x200uLL);
        v10 = *(a1 + 244);
        *(a1 + 778) = v10 & 1;
        if (v10)
        {
          v12 = *(a1 + 272);
          v11 = *(a1 + 280);
          *(a1 + 768) = v11;
          *(a1 + 760) = v12;
          sub_248DA4018(a1, v11);
          v13 = *(*(*a1 + 496))(a1);
          (*(v13 + 392))();
        }

        v6 = 0;
      }
    }

    (*(*a2 + 56))(a2);
  }

  return v6;
}

uint64_t sub_248DD1360(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v10 = 0;
  v4 = (*(*a1 + 96))(a1, a2, &v11);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v11 == 0;
  }

  if (v5)
  {
    return v4;
  }

  if (v11 < 1)
  {
    return (*(*a1 + 200))(a1);
  }

  LOWORD(v6) = 1;
  while (1)
  {
    v7 = (*(*a1 + 88))(a1);
    (*(*a1 + 80))(a1, 0);
    v8 = (*(*a1 + 112))(a1, a2, v6, &v10);
    (*(*a1 + 80))(a1, v7);
    if (v8)
    {
      break;
    }

    v4 = (*(*a1 + 192))(a1, v10);
    if (v4)
    {
      return v4;
    }

    sub_248DD4E4C(v10);
    v6 = (v6 + 1);
    if (v6 > v11)
    {
      return (*(*a1 + 200))(a1);
    }
  }

  return v8;
}

uint64_t sub_248DD1524(uint64_t a1, unsigned int (*a2)(uint64_t, void, void), uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v12 = 0;
  memset(v16, 0, sizeof(v16));
  v6 = (*(*a1 + 64))(a1, &v15 + 2);
  if (!v6)
  {
    if (SHIWORD(v15) < 1)
    {
      return (*(*a1 + 200))(a1);
    }

    else
    {
      LOWORD(v9) = 1;
      while (1)
      {
        v6 = (*(*a1 + 72))(a1, &v14, v9);
        if (v6)
        {
          break;
        }

        v6 = (*(*a1 + 96))(a1, v14, &v15);
        if (v6)
        {
          break;
        }

        if (v15 >= 1)
        {
          LOWORD(v10) = 1;
          do
          {
            v11 = (*(*a1 + 88))(a1);
            (*(*a1 + 80))(a1, 0);
            v7 = (*(*a1 + 112))(a1, v14, v10, &v13);
            (*(*a1 + 80))(a1, v11);
            if (v7)
            {
              return v7;
            }

            v6 = (*(*a1 + 208))(a1, v13, &v12, &v14, v16);
            if (v6)
            {
              return v6;
            }

            if (!a2 || a2(a3, v14, v12))
            {
              v6 = (*(*a1 + 192))(a1, v13);
              if (v6)
              {
                return v6;
              }

              sub_248DD4E4C(v13);
              v13 = 0;
            }

            v10 = (v10 + 1);
          }

          while (v10 <= v15);
        }

        v9 = (v9 + 1);
        if (v9 > SHIWORD(v15))
        {
          return (*(*a1 + 200))(a1);
        }
      }
    }
  }

  return v6;
}

uint64_t sub_248DD1840(uint64_t a1, uint64_t a2, const unsigned __int8 *a3, void *a4)
{
  v10 = 0;
  if (a3 && a4)
  {
    v6 = *(a1 + 104);
    if (v6)
    {
      v7 = a2;
      v8 = sub_248DD89F8(a1, a2, a3);
      if (v8)
      {
        result = sub_248DA6954(a1, v7, v8, &v10);
        v6 = v10;
      }

      else
      {
        v6 = 0;
        result = 4294967104;
      }
    }

    else
    {
      result = 4294967097;
    }

    goto LABEL_6;
  }

  result = 4294967246;
  if (a4)
  {
    v6 = 0;
LABEL_6:
    *a4 = v6;
  }

  return result;
}

uint64_t sub_248DD1918(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294967246;
  }

  v3 = *(a1 + 104);
  if (!v3)
  {
    return 4294967246;
  }

  if (*(a1 + 114) != 1)
  {
    return 4294967242;
  }

  Count = CFDictionaryGetCount(v3);
  if (!Count)
  {
    return 0;
  }

  v6 = Count;
  v7 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  if (!v7)
  {
    return 4294967188;
  }

  v8 = v7;
  v9 = malloc_type_calloc(v6, 8uLL, 0x6004044C4A2DFuLL);
  if (v9)
  {
    v10 = v9;
    CFDictionaryGetKeysAndValues(*(a1 + 104), v8, v9);
    if (v6 < 1)
    {
      v17 = 0;
    }

    else
    {
      v11 = 0;
      while (1)
      {
        sub_248DA6EE8(v8[v11]);
        v12 = v10[v11];
        v13 = CFArrayGetCount(v12);
        if (v13 >= 1)
        {
          break;
        }

LABEL_14:
        if (++v11 >= v6)
        {
          v17 = 4294967104;
          goto LABEL_29;
        }
      }

      v14 = v13;
      v15 = 0;
      while (1)
      {
        v20 = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
        if (sub_248DA6B58(ValueAtIndex, ValueAtIndex, &v20))
        {
          if (v20 == a2)
          {
            break;
          }
        }

        if (v14 == ++v15)
        {
          goto LABEL_14;
        }
      }

      v19 = 0;
      if (sub_248DA6144(ValueAtIndex, @"Attributes", &v19))
      {
        if ((v19 & 8) != 0)
        {
          v17 = 4294967100;
        }

        else
        {
          CFArrayRemoveValueAtIndex(v12, v15);
          if (v14 == 1)
          {
            CFDictionaryRemoveValue(*(a1 + 104), v8[v11]);
          }

          v17 = 0;
          *(a1 + 112) |= 0x20u;
        }
      }

      else
      {
        v17 = 4294967097;
      }
    }

LABEL_29:
    free(v10);
  }

  else
  {
    v17 = 4294967188;
  }

  free(v8);
  return v17;
}

uint64_t sub_248DD1AFC(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 104))
  {
    return 4294967246;
  }

  if (*(a1 + 114) != 1)
  {
    return 4294967242;
  }

  result = sub_248DA67E0(a2);
  if (result)
  {
    v4 = result;
    CFDictionaryRemoveValue(*(a1 + 104), result);
    *(a1 + 112) |= 0x20u;
    CFRelease(v4);
    return 0;
  }

  return result;
}

uint64_t sub_248DD1BF8(uint64_t a1, _WORD *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 112);
  }

  return 0;
}

const __CFArray *sub_248DD1C18(uint64_t a1, uint64_t a2, _WORD *a3)
{
  if (!a3)
  {
    return 4294967246;
  }

  *a3 = 0;
  if (!*(a1 + 104))
  {
    return 0;
  }

  result = sub_248DA6784(a1, a2);
  if (result)
  {
    v5 = result;
    Count = CFArrayGetCount(result);
    while (1)
    {
      v7 = random();
      if (Count < 1)
      {
        break;
      }

      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
        if (ValueAtIndex)
        {
          v10 = 0;
          if (sub_248DA6144(ValueAtIndex, @"ID", &v10))
          {
            if (v10 == v7)
            {
              break;
            }
          }
        }

        if (Count == ++v8)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_14:
    result = 0;
    *a3 = v7;
  }

  return result;
}

uint64_t sub_248DD1CFC(CFDictionaryRef theDict, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{

  return sub_248DA6954(v11, v10, theDict, &a10);
}

void sub_248DD1D1C(FILE *a1, const __CFString *a2, CFStringEncoding a3)
{
  fflush(a1);
  if (a2)
  {
    Length = CFStringGetLength(a2);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, a3);
    v8 = malloc_type_malloc(MaximumSizeForEncoding, 0x6E35B2E5uLL);
    if (v8)
    {
      v9 = v8;
      usedBufLen = 0;
      v12.length = CFStringGetLength(a2);
      v12.location = 0;
      CFStringGetBytes(a2, v12, a3, 0, 0, v9, MaximumSizeForEncoding, &usedBufLen);
      v10 = fileno(a1);
      write(v10, v9, usedBufLen);
      fflush(a1);
      free(v9);
    }
  }
}

void sub_248DD1DE8(const void *a1, const void *a2, void *cf)
{
  v6 = CFGetTypeID(cf);
  if (v6 == CFDictionaryGetTypeID())
  {

    CFDictionaryReplaceValue(cf, a1, a2);
  }
}

size_t sub_248DD1EBC(uint64_t a1)
{
  v2 = MEMORY[0x277D85DF8];
  result = fwrite("## ? ...score.. ...age... ...use... ...start ... ...length...\n", 0x3EuLL, 1uLL, *MEMORY[0x277D85DF8]);
  v4 = *(a1 + 208);
  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(a1 + 216);
      v7 = *(v6 + 8 * i);
      if (v7)
      {
        v8 = *v2;
        if (*(v7 + 24))
        {
          v9 = "+";
        }

        else
        {
          v9 = " ";
        }

        v10 = sub_248DADB60(*(v6 + 8 * i));
        result = fprintf(v8, "%2d %1.1s %+9qd %9qd %9qd %12qd %12qd\n", i, v9, v10, *(v7 + 16), *(v7 + 8), *(v7 + 32), *(v7 + 40));
        v4 = *(a1 + 208);
      }
    }
  }

  return result;
}

void *sub_248DD1FA4(void *a1)
{
  *a1 = &unk_285BCC278;
  v2 = a1[7];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void *sub_248DD1FF8(size_t a1)
{

  return malloc_type_calloc(a1, 1uLL, 0x100004077774924uLL);
}

uint64_t sub_248DD201C(uint64_t result, unsigned int a2)
{
  *result = vrev32_s8(*result);
  *(result + 8) = bswap32(*(result + 8));
  *(result + 12) = bswap64(*(result + 12));
  if (a2)
  {
    v2 = (result + 56);
    v3 = a2;
    do
    {
      *v2 = bswap32(*v2);
      ++v2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_248DD20A4(const __CFArray *a1, CFArrayRef theArray, unint64_t a3, char a4)
{
  v33 = 0;
  v34 = 0;
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theArray);
  sub_248DD230C(a1, 1);
  sub_248DD230C(MutableCopy, 1);
  v35.length = CFArrayGetCount(a1);
  v35.location = 0;
  CFArraySortValues(a1, v35, sub_248DB5638, 0);
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  Count = CFArrayGetCount(MutableCopy);
  if (Count >= 1)
  {
    v8 = Count;
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, i);
      if (ValueAtIndex)
      {
        v11 = ValueAtIndex;
        v12 = CFGetTypeID(ValueAtIndex);
        if (v12 == CFDictionaryGetTypeID())
        {
          if (sub_248DB5720(v11, &v32, &v31, 0, &v30, &v29))
          {
            v14 = v31;
            v13 = v32;
            v15 = sub_248DB5940(a1, a3, 0);
            v16 = CFArrayGetCount(v15);
            if (v16 >= 1)
            {
              v17 = v13 + v14 - 1;
              v18 = v16 + 1;
              do
              {
                v19 = CFArrayGetValueAtIndex(v15, v18 - 2);
                if (v19)
                {
                  v20 = v19;
                  v21 = CFGetTypeID(v19);
                  if (v21 == CFDictionaryGetTypeID())
                  {
                    if (sub_248DB5720(v20, &v34, &v33, 0, 0, 0))
                    {
                      if (v34 <= v17)
                      {
                        v24 = v34 + v33 - 1;
                        if (v24 >= v32)
                        {
                          if (v34 <= v32)
                          {
                            v25 = v32;
                          }

                          else
                          {
                            v25 = v34;
                          }

                          if (v24 >= v17)
                          {
                            v26 = v17;
                          }

                          else
                          {
                            v26 = v34 + v33 - 1;
                          }

                          v27 = sub_248DB487C(v25, v26 - v25 + 1, 0, v30, v29, 0, v22, v23, 0);
                          CFArrayAppendValue(a1, v27);
                          CFRelease(v27);
                        }
                      }
                    }
                  }
                }

                --v18;
              }

              while (v18 > 1);
            }

            CFRelease(v15);
          }
        }
      }
    }
  }

  if ((a4 & 2) != 0)
  {
    sub_248DB58B0(a1, a3, (a4 & 0x10) != 0);
  }

  else
  {
    v36.length = CFArrayGetCount(a1);
    v36.location = 0;
    CFArraySortValues(a1, v36, sub_248DB5638, 0);
  }

  CFRelease(MutableCopy);
}

void sub_248DD230C(const __CFArray *a1, int a2)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    theString1 = 0;
    v9 = 0;
    v5 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v5 - 2);
      if (ValueAtIndex)
      {
        v7 = ValueAtIndex;
        v8 = CFGetTypeID(ValueAtIndex);
        if (v8 == CFDictionaryGetTypeID() && sub_248DB5720(v7, 0, 0, &v9, &theString1, 0) && CFStringCompare(theString1, @"Apple_Free", 1uLL) == kCFCompareEqualTo && (!a2 || !v9))
        {
          CFArrayRemoveValueAtIndex(a1, v5 - 2);
        }
      }

      --v5;
    }

    while (v5 > 1);
  }
}

__CFDictionary *sub_248DD23F4(uint64_t a1, uint64_t a2, int a3, const void *a4, const void *a5, const void *a6, __CFString **a7)
{
  v28 = a2;
  valuePtr = a1;
  v27 = a3;
  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return Mutable;
  }

  v13 = CFNumberCreate(v11, kCFNumberLongLongType, &valuePtr);
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  CFDictionarySetValue(Mutable, @"partition-start", v13);
  CFRelease(v14);
  v15 = CFNumberCreate(v11, kCFNumberLongLongType, &v28);
  if (!v15)
  {
    goto LABEL_12;
  }

  v16 = v15;
  CFDictionarySetValue(Mutable, @"partition-length", v15);
  CFRelease(v16);
  if (a3)
  {
    v17 = CFNumberCreate(v11, kCFNumberSInt32Type, &v27);
    if (v17)
    {
      v18 = v17;
      CFDictionarySetValue(Mutable, @"partition-number", v17);
      CFRelease(v18);
      if (!a4)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_12:
    CFRelease(Mutable);
    return 0;
  }

  CFDictionarySetValue(Mutable, @"partition-synthesized", *MEMORY[0x277CBED28]);
  if (a4)
  {
LABEL_7:
    CFDictionarySetValue(Mutable, @"partition-hint", a4);
  }

LABEL_8:
  if (a5)
  {
    CFDictionarySetValue(Mutable, @"partition-name", a5);
  }

  if (!a6)
  {
    goto LABEL_16;
  }

  v19 = @"partition-data";
  v20 = Mutable;
  v21 = a6;
  while (1)
  {
    CFDictionarySetValue(v20, v19, v21);
LABEL_16:
    v22 = a7;
    v26 = a7 + 1;
    v19 = *v22;
    if (!*v22)
    {
      break;
    }

    v23 = v26;
    a7 = v26 + 1;
    v21 = *v23;
    v20 = Mutable;
  }

  return Mutable;
}

char *sub_248DD25D8(char *a1)
{
  sub_248DA0C58(a1);
  *v2 = &unk_285BCC4B0;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 264) = 0u;
  sub_248DA0FD0(v2, @"thread-safe", *MEMORY[0x277CBED28]);
  return a1;
}

void *sub_248DD2664(uint64_t a1)
{
  *a1 = &unk_285BCC4B0;
  sub_248DD2B80(a1, 1);
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 264) = 0u;

  return sub_248DA1C90(a1);
}

void sub_248DD26E0(uint64_t a1)
{
  sub_248DD2664(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DD2718(uint64_t a1, CFDictionaryRef theDict, char **a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a1 && theDict && a3)
  {
    Value = CFDictionaryGetValue(theDict, @"VectoredBackingStoreCallbackData");
    if (Value)
    {
      v5 = Value;
      TypeID = CFDataGetTypeID();
      if (TypeID == CFGetTypeID(v5))
      {
        operator new();
      }
    }
  }

  else if (a3)
  {
    *a3 = 0;
  }

  return 22;
}

__n128 sub_248DD2884(uint64_t a1, CFDataRef theData)
{
  *buffer = 0;
  if (theData && CFDataGetLength(theData) == 8)
  {
    v8.location = 0;
    v8.length = 8;
    CFDataGetBytes(theData, v8, buffer);
    v5 = *buffer;
    if (!**buffer)
    {
      v6 = *(*buffer + 8);
      *(a1 + 272) = v6;
      *(a1 + 208) = v6;
      *(a1 + 224) = *(v5 + 24);
      *(a1 + 240) = *(v5 + 40);
      result = *(v5 + 56);
      *(a1 + 256) = result;
    }
  }

  return result;
}

uint64_t sub_248DD2918(void *a1, const __CFURL *a2)
{
  sub_248DA1140(a1, a2);
  v3 = *(*a1 + 688);

  return v3(a1);
}

uint64_t sub_248DD2978(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = getpid();
  v4 = CFStringCreateWithFormat(v2, 0, @"%d:%p", v3, a1);
  if (!v4)
  {
    return 999;
  }

  v5 = v4;
  (*(*a1 + 552))(a1, v4);
  CFRelease(v5);
  return 0;
}

uint64_t sub_248DD2A18(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 568))(a1))
  {
    if (a2)
    {
      if ((*(*a1 + 88))(a1) == a2)
      {
        return 0;
      }

      else
      {
        return 13;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = (*(a1 + 216))(a1, *(a1 + 272), a2);
    if (!result)
    {

      return sub_248DA2374(a1, a2);
    }
  }

  return result;
}

uint64_t sub_248DD2AE8(uint64_t a1)
{
  if (((*(*a1 + 568))(a1) & 1) != 0 || (result = (*(a1 + 224))(a1, *(a1 + 272)), !result))
  {
    (*(*a1 + 576))(a1);
    return 0;
  }

  return result;
}

uint64_t sub_248DD2B80(void *a1, uint64_t a2)
{
  (*(*a1 + 584))(a1);
  if ((*(*a1 + 568))(a1))
  {
    return 0;
  }

  v5 = a1[32];
  v6 = a1[34];

  return v5(a1, v6, a2);
}

uint64_t sub_248DD2C40(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 22;
  }

  *a2 = 0;
  return (*(a1 + 264))(a1, *(a1 + 272), a2);
}

uint64_t sub_248DD2C5C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (!(*(*a1 + 568))(a1))
  {
    return 9;
  }

  result = 22;
  if (a4 && a5)
  {
    v11 = a1[29];
    v12 = a1[34];

    return v11(a1, v12, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_248DD2D28(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (!(*(*a1 + 568))(a1))
  {
    return 9;
  }

  result = 22;
  if (a4 && a5)
  {
    if ((*(*a1 + 72))(a1))
    {
      v11 = a1[30];
      v12 = a1[34];

      return v11(a1, v12, a2, a3, a4, a5);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void *sub_248DD2E4C(void *a1)
{
  sub_248DC3D38(a1);
  *v2 = &unk_285BCC798;
  v2[16] = 32;
  a1[15] = malloc_type_calloc(1uLL, 0x20uLL, 0x100004077774924uLL);
  a1[14] = malloc_type_malloc(0x68uLL, 0x1000040ED882C02uLL);
  a1[17] = MEMORY[0x277D85BD0];
  a1[18] = MEMORY[0x277D85BD8];
  a1[19] = MEMORY[0x277D85BC8];
  return a1;
}

void sub_248DD2F20(void *a1)
{
  sub_248DC3EB0(a1);

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DD2F84(void *a1)
{
  sub_248DC3D38(a1);
  *v2 = &unk_285BCC868;
  v2[16] = 48;
  a1[15] = malloc_type_calloc(1uLL, 0x30uLL, 0x100004077774924uLL);
  a1[14] = malloc_type_malloc(0xD0uLL, 0x10000400F93440CuLL);
  a1[17] = MEMORY[0x277D85BE8];
  a1[18] = MEMORY[0x277D85BF0];
  a1[19] = MEMORY[0x277D85BE0];
  return a1;
}

void sub_248DD3058(void *a1)
{
  sub_248DC3EB0(a1);

  JUMPOUT(0x24C1EBE70);
}

void *sub_248DD30BC(void *a1)
{
  sub_248DC3D38(a1);
  *v2 = &unk_285BCC938;
  v2[16] = 64;
  a1[15] = malloc_type_calloc(1uLL, 0x40uLL, 0x100004077774924uLL);
  a1[14] = malloc_type_malloc(0xD0uLL, 0x10000400F93440CuLL);
  a1[17] = MEMORY[0x277D85C08];
  a1[18] = MEMORY[0x277D85C10];
  a1[19] = MEMORY[0x277D85C00];
  return a1;
}

void sub_248DD3190(void *a1)
{
  sub_248DC3EB0(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DD31F4(uint64_t a1, unsigned int a2, unsigned int a3, unint64_t a4, __CFDictionary **a5, void ***a6, int *a7, __CFArray **a8, char a9)
{
  allocator = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  v104 = a7;
  if (!a1)
  {
    v19 = 0;
    v25 = 0;
    v26 = 0;
    v21 = 22;
    goto LABEL_32;
  }

  v102 = a2;
  if (a2 == 6)
  {
    v18 = 31;
  }

  else
  {
    v18 = 23;
  }

  value[0] = 0;
  v101 = a1;
  v19 = sub_248DB36D8(a1, v18);
  v20 = CFGetTypeID(v19);
  if (v20 == CFDictionaryGetTypeID())
  {
    v21 = 999;
    if (CFDictionaryGetValueIfPresent(v19, @"partitions", value))
    {
      v22 = CFGetTypeID(value[0]);
      TypeID = CFArrayGetTypeID();
      v24 = v22 != TypeID;
      if (v22 == TypeID)
      {
        v21 = 0;
      }

      else
      {
        v21 = 999;
      }

      if (!v19)
      {
        goto LABEL_25;
      }

LABEL_23:
      if (v24)
      {
        CFRelease(v19);
        v19 = 0;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v21 = 999;
  }

  v24 = 1;
  if (v19)
  {
    goto LABEL_23;
  }

LABEL_25:
  if (v21)
  {
LABEL_26:
    v26 = 0;
    goto LABEL_27;
  }

  theArray = CFDictionaryGetValue(v19, @"partitions");
  v29 = CFDictionaryGetValue(v19, @"partition-scheme");
  if (v29)
  {
    v30 = CFStringCompare(v29, @"Apple", 0) != kCFCompareEqualTo;
  }

  else
  {
    v30 = 1;
  }

  Count = CFArrayGetCount(theArray);
  if (v102 == 5)
  {
    value[0] = &stru_285BCD368;
    v32 = CFArrayGetCount(theArray);
    sub_248DB7478(theArray, v32 - 1, 0, 0, value, 0);
    if (value[0])
    {
      v32 -= CFStringCompare(value[0], @"Apple_Free", 0) == kCFCompareEqualTo;
    }

    v102 = 2;
  }

  else
  {
    v32 = Count;
  }

  v99 = malloc_type_calloc(v32, 8uLL, 0x80040B8603338uLL);
  if (!v99)
  {
    v26 = 0;
    v25 = 0;
    v27 = 0;
    v21 = 12;
    goto LABEL_28;
  }

  v108 = 0;
  v110 = 0;
  v94 = v32;
  if (v32 < 1)
  {
LABEL_213:
    v21 = 0;
LABEL_214:
    if (!a6)
    {
      goto LABEL_221;
    }

LABEL_219:
    if (v21)
    {
      goto LABEL_221;
    }

    v26 = v99;
    v25 = v94;
LABEL_222:
    v21 = 0;
    v27 = 1;
    if (!a5)
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v93 = a3;
  v33 = 0;
  v98 = v32;
  v109 = 0;
  v34 = -2;
  if (v32 != 1)
  {
    v34 = 0;
  }

  v107 = 0;
  v91 = a9 != 0;
  v105 = 0;
  v106 = 0;
  v35 = -1;
  if (v30)
  {
    v35 = v34;
  }

  v96 = a4;
  v97 = v35;
  v92 = *MEMORY[0x277CBED28];
  v95 = Mutable;
  while (1)
  {
    v36 = sub_248DB7478(theArray, v33, &v110, &v109, &v107, &v106);
    if (v36)
    {
LABEL_216:
      v21 = v36;
LABEL_217:
      sub_248DC203C(v99, v98);
      goto LABEL_26;
    }

    v37 = sub_248DB01B0(&v105);
    if (v37)
    {
      break;
    }

    v38 = v105;
    v99[v33] = v105;
    v39 = *v38;
    *(v39 + 8) = v110;
    *(v39 + 16) = 0;
    *(v39 + 36) = v97 + v33;
    if (CFStringCompare(v107, @"Apple_HFS", 0) == kCFCompareEqualTo || CFStringCompare(v107, @"Apple_HFSX", 0) == kCFCompareEqualTo)
    {
      v36 = sub_248DB3258(v101, v110, v109, &v108);
      if (v36)
      {
        goto LABEL_216;
      }

      v41 = v108;
      v42 = v105;
      v112 = 0;
      valuePtr = 0;
      value[0] = 0;
      v111 = 0;
      MKMediaRef = DIMediaKitCreateMKMediaRef(v108, allocator, 0, value);
      if (MKMediaRef)
      {
        v21 = MKMediaRef;
        v44 = 0;
        a4 = v96;
LABEL_124:
        if (value[0])
        {
          CFRelease(value[0]);
          value[0] = 0;
        }

        if (v44)
        {
          CFRelease(v44);
        }

        Mutable = v95;
        goto LABEL_182;
      }

      v49 = (*(*v41 + 96))(v41);
      v44 = 0;
      v50 = 0;
      if (v102 <= 6)
      {
        if (((1 << v102) & 0x2C) != 0)
        {
          v111 = v49;
          v51 = v42;
          a4 = v96;
          v50 = sub_248DD4118(v51, v49, v93, v96);
          v44 = 0;
          if (!v50)
          {
            v49 = 0;
          }

          goto LABEL_118;
        }

        if (((1 << v102) & 0x42) != 0)
        {
          v55 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionarySetValue(v55, @"Record Runs", v92);
          CFDictionarySetValue(v55, @"Record Container", v92);
          CFDictionarySetValue(v55, @"Record Markers", v92);
          v44 = MKCFCreateFSInfo();
          if (v55)
          {
            CFRelease(v55);
          }

          v50 = v112;
          if (!v112)
          {
            if (v44)
            {
              v56 = sub_248DAE894(v44, @"Volume block size");
              if (v56)
              {
                if (CFNumberGetValue(v56, kCFNumberSInt64Type, &valuePtr))
                {
                  valuePtr >>= 9;
                  v57 = sub_248DB3174(v44, @"Data Runs");
                  if (v57)
                  {
                    v50 = sub_248DD42F8(v42, v57, v49, v93, v96, v91, &v111);
                    if (v50)
                    {
                      a4 = v96;
                    }

                    else
                    {
                      v49 -= v111;
                      v111 = v49;
                      v50 = sub_248DD4118(v42, v49, 2u, v96);
                      a4 = v96;
                      if (!v50)
                      {
                        v49 -= v111;
                      }
                    }

                    goto LABEL_118;
                  }
                }
              }
            }

            v50 = 999;
          }
        }
      }

      a4 = v96;
LABEL_118:
      if (v49)
      {
        v66 = v50 == 0;
      }

      else
      {
        v66 = 0;
      }

      if (v66)
      {
        v21 = 116;
      }

      else
      {
        v21 = v50;
      }

      goto LABEL_124;
    }

    if (CFStringCompare(v107, @"Apple_APFS", 0) == kCFCompareEqualTo)
    {
      v36 = sub_248DB3258(v101, v110, v109, &v108);
      if (v36)
      {
        goto LABEL_216;
      }

      v52 = v108;
      v53 = v105;
      v112 = 0;
      valuePtr = 0;
      value[0] = 0;
      v111 = 0;
      v54 = DIMediaKitCreateMKMediaRef(v108, allocator, 0, value);
      if (v54)
      {
        v21 = v54;
        v48 = 0;
        Mutable = v95;
        goto LABEL_178;
      }

      v62 = (*(*v52 + 96))(v52);
      v48 = 0;
      v63 = 0;
      if (v102 <= 6)
      {
        if (((1 << v102) & 0x2C) != 0)
        {
          v111 = v62;
          v63 = sub_248DD4118(v53, v62, v93, a4);
          v48 = 0;
          if (!v63)
          {
            v62 = 0;
          }
        }

        else if (((1 << v102) & 0x42) != 0)
        {
          v67 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionarySetValue(v67, @"Record Runs", v92);
          CFDictionarySetValue(v67, @"Record Container", v92);
          CFDictionarySetValue(v67, @"Record Markers", v92);
          v90 = MKCFCreateFSInfo();
          if (v67)
          {
            CFRelease(v67);
          }

          v63 = v112;
          if (v112)
          {
            Mutable = v95;
            v48 = v90;
            goto LABEL_134;
          }

          v48 = v90;
          if (v90 && (v72 = sub_248DAE894(v90, @"Volume block size")) != 0 && CFNumberGetValue(v72, kCFNumberSInt64Type, &valuePtr) && (valuePtr >>= 9, (v73 = sub_248DB3174(v90, @"Data Runs")) != 0))
          {
            v63 = sub_248DD42F8(v53, v73, v62, v93, a4, v91, &v111);
            if (!v63)
            {
              v62 -= v111;
              v111 = v62;
              v63 = sub_248DD4118(v53, v62, 2u, a4);
              if (!v63)
              {
                v62 -= v111;
              }
            }
          }

          else
          {
            v63 = 999;
          }
        }
      }

      Mutable = v95;
LABEL_134:
      if (v62)
      {
        v68 = v63 == 0;
      }

      else
      {
        v68 = 0;
      }

      if (v68)
      {
        v21 = 116;
      }

      else
      {
        v21 = v63;
      }

      goto LABEL_178;
    }

    if (CFStringCompare(v107, @"DOS_FAT_32", 0) == kCFCompareEqualTo || CFStringCompare(v107, @"DOS_FAT_16", 0) == kCFCompareEqualTo || CFStringCompare(v107, @"DOS_FAT_16_S", 0) == kCFCompareEqualTo || CFStringCompare(v107, @"Windows_FAT_16", 0) == kCFCompareEqualTo || CFStringCompare(v107, @"Windows_FAT_32", 0) == kCFCompareEqualTo || CFStringCompare(v107, @"DOS_FAT_12", 0) == kCFCompareEqualTo)
    {
      v36 = sub_248DB3258(v101, v110, v109, &v108);
      if (v36)
      {
        goto LABEL_216;
      }

      v45 = v108;
      v46 = v105;
      value[0] = 0;
      v47 = DIMediaKitCreateMKMediaRef(v108, allocator, 0, value);
      if (!v47)
      {
        v58 = (*(*v45 + 96))(v45);
        v59 = v58;
        valuePtr = 0;
        if (v102 > 6)
        {
          goto LABEL_175;
        }

        if (((1 << v102) & 0x2C) == 0)
        {
          if (((1 << v102) & 0x42) == 0)
          {
            goto LABEL_175;
          }

          v64 = v58;
          v65 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionarySetValue(v65, @"Record On Bits", v92);
          v112 = 0;
          v89 = MKCFCreateFSInfo();
          if (v65)
          {
            CFRelease(v65);
          }

          v21 = v112;
          if (v112)
          {
            a4 = v96;
            v59 = v64;
          }

          else
          {
            v59 = v64;
            if (v89)
            {
              v111 = 0;
              v69 = sub_248DAE894(v89, @"Volume block size");
              if (v69)
              {
                if (CFNumberGetValue(v69, kCFNumberSInt64Type, &v111) && (v111 >>= 9, (v70 = sub_248DB3174(v89, @"Data Runs")) != 0))
                {
                  v71 = sub_248DD42F8(v46, v70, v64, v93, v96, 0, &valuePtr);
                  if (!v71)
                  {
                    v59 = v64 - valuePtr;
                    valuePtr = v59;
                    v87 = v46;
                    a4 = v96;
                    v21 = sub_248DD4118(v87, v59, 2u, v96);
                    if (!v21)
                    {
                      v59 -= valuePtr;
                    }

                    goto LABEL_154;
                  }

                  v21 = v71;
                }

                else
                {
                  v21 = 999;
                }

                goto LABEL_209;
              }
            }

            v21 = 999;
            a4 = v96;
          }

LABEL_154:
          if (v59)
          {
            v74 = 116;
          }

          else
          {
            v74 = 0;
          }

          if (!v21)
          {
            v21 = v74;
          }

          v48 = v89;
          goto LABEL_178;
        }

LABEL_104:
        v60 = v46;
        a4 = v96;
        v61 = sub_248DD4118(v60, v59, v93, v96);
        if (!v61)
        {
          goto LABEL_177;
        }

        v21 = v61;
        v89 = 0;
        goto LABEL_154;
      }

      goto LABEL_83;
    }

    if (CFStringCompare(v107, @"Windows_NTFS", 0) == kCFCompareEqualTo)
    {
      v36 = sub_248DB3258(v101, v110, v109, &v108);
      if (v36)
      {
        goto LABEL_216;
      }

      v75 = v108;
      v46 = v105;
      value[0] = 0;
      v47 = DIMediaKitCreateMKMediaRef(v108, allocator, 0, value);
      if (!v47)
      {
        v76 = (*(*v75 + 96))(v75);
        v59 = v76;
        valuePtr = 0;
        if (v102 > 6)
        {
          goto LABEL_175;
        }

        if (((1 << v102) & 0x2C) == 0)
        {
          if (((1 << v102) & 0x42) != 0)
          {
            v88 = v76;
            v77 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            CFDictionarySetValue(v77, @"Record On Bits", v92);
            v112 = 0;
            v89 = MKCFCreateFSInfo();
            if (v77)
            {
              CFRelease(v77);
            }

            v21 = v112;
            if (!v112)
            {
              if (v89)
              {
                v111 = 0;
                v78 = sub_248DAE894(v89, @"Volume block size");
                if (v78 && CFNumberGetValue(v78, kCFNumberSInt64Type, &v111) && (v111 >>= 9, (v79 = sub_248DB3174(v89, @"Data Runs")) != 0))
                {
                  v80 = sub_248DD42F8(v46, v79, v88, v93, v96, 0, &valuePtr);
                  if (v80)
                  {
                    v21 = v80;
                  }

                  else
                  {
                    valuePtr = v88 - valuePtr;
                    v88 = valuePtr;
                    v21 = sub_248DD4118(v46, valuePtr, 2u, v96);
                    if (!v21)
                    {
                      v88 -= valuePtr;
                    }
                  }
                }

                else
                {
                  v21 = 999;
                }

                Mutable = v95;
              }

              else
              {
                v21 = 999;
              }
            }

            v59 = v88;
LABEL_209:
            a4 = v96;
            goto LABEL_154;
          }

LABEL_175:
          a4 = v96;
          if (v59)
          {
            v48 = 0;
            v21 = 116;
            goto LABEL_178;
          }

LABEL_177:
          v21 = 0;
          v48 = 0;
          goto LABEL_178;
        }

        goto LABEL_104;
      }

LABEL_83:
      v21 = v47;
      v48 = 0;
      a4 = v96;
LABEL_178:
      if (value[0])
      {
        CFRelease(value[0]);
        value[0] = 0;
      }

      if (v48)
      {
        CFRelease(v48);
      }

LABEL_182:
      if (v21)
      {
        goto LABEL_217;
      }

      if (v108)
      {
        DIDiskImageObjectRelease(v108);
        v108 = 0;
      }

      goto LABEL_185;
    }

    v40 = v107;
    if (v107 && (CFStringCompare(v107, @"Apple_Free", 0) == kCFCompareEqualTo || CFStringCompare(v40, @"Apple_Void", 0) == kCFCompareEqualTo || CFStringCompare(v40, @"Apple_Scratch", 0) == kCFCompareEqualTo || CFStringCompare(v40, @"Linux_Swap", 0) == kCFCompareEqualTo || CFStringCompare(v40, @"0657FD6D-A4AB-43C4-84E5-0933C84B4F4F", 0) == kCFCompareEqualTo))
    {
      switch(v102)
      {
        case 6u:
          goto LABEL_195;
        case 3u:
          v84 = v105;
          v85 = v109;
          v86 = 1;
          break;
        case 1u:
LABEL_195:
          v84 = v105;
          v85 = v109;
          v86 = 2;
          break;
        default:
          v84 = v105;
          v85 = v109;
          v86 = 0x7FFFFFFF;
          break;
      }

      v21 = sub_248DD4118(v84, v85, v86, a4);
      if (v21)
      {
        goto LABEL_214;
      }

      goto LABEL_185;
    }

    v37 = sub_248DD4118(v105, v109, v93, a4);
    if (v37)
    {
      break;
    }

LABEL_185:
    v37 = sub_248DD4118(v105, 0, 0xFFFFFFFF, a4);
    if (v37)
    {
      break;
    }

    nullsub_4();
    v110 += v109;
    v81 = DIGetBundleRef();
    v82 = sub_248DD4D90(v81, @"%1$@ (%2$@ : %3$d)", @"%1$@ (%2$@ : %3$d)");
    v83 = CFStringCreateWithFormat(allocator, 0, v82, v106, v107, v33);
    CFArrayAppendValue(Mutable, v83);
    if (v83)
    {
      CFRelease(v83);
    }

    if (v82)
    {
      CFRelease(v82);
    }

    if (v98 == ++v33)
    {
      goto LABEL_213;
    }
  }

  v21 = v37;
  if (a6)
  {
    goto LABEL_219;
  }

LABEL_221:
  v25 = v94;
  sub_248DC203C(v99, v94);
  v26 = 0;
  if (!v21)
  {
    goto LABEL_222;
  }

LABEL_27:
  v25 = 0;
  v27 = 0;
LABEL_28:
  if (v19)
  {
    CFRelease(v19);
    v19 = 0;
  }

LABEL_30:
  if (!a8 || (v27 & 1) == 0)
  {
LABEL_32:
    if (Mutable)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  if (a6)
  {
    *a6 = v26;
  }

  if (v104)
  {
    *v104 = v25;
  }

  if (a5)
  {
    *a5 = v19;
  }

  if (a8)
  {
    *a8 = Mutable;
  }

  return v21;
}

uint64_t sub_248DD4118(uint64_t *a1, unint64_t a2, unsigned int a3, unint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 22;
  }

  v7 = a2;
  result = 22;
  if (a3 > -2)
  {
    v9 = 0;
    v10 = 1;
    if (a3 > 2147483645)
    {
      if (a3 == 2147483646)
      {
        goto LABEL_24;
      }
    }

    else if (a3 >= 3)
    {
      if (a3 != -1)
      {
        return result;
      }

      goto LABEL_24;
    }

    v9 = a2;
    if (a2)
    {
      goto LABEL_20;
    }

    return 0;
  }

  v9 = a4;
  if (a3 + 2147483644 < 5 || a3 == 0x80000000)
  {
    if (a2)
    {
      if (!a4)
      {
        v10 = 1;
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    return 0;
  }

  if (a3 != -2147483647)
  {
    return result;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = 20;
LABEL_20:
  if (a2 % v9)
  {
    v10 = a2 / v9 + 1;
  }

  else
  {
    v10 = a2 / v9;
  }

  if (!v10)
  {
    return 0;
  }

LABEL_24:
  v11 = *(v5 + 200);
  v12 = *(v5 + 16);
  nullsub_4();
  v13 = sub_248DD4EEC(a1);
  result = sub_248DD4D98();
  if (!result)
  {
    sub_248DD4E90(a1, v13 + 40 * v10);
    result = sub_248DD4D98();
    if (!result)
    {
      v14 = *a1;
      *(v14 + 200) = *(*a1 + 200) + v10;
      *(v14 + 16) += v7;
      if (a3 + 0x80000000 <= 8 && ((1 << a3) & 0x1F3) != 0 && v9 > *(v14 + 32))
      {
        *(v14 + 32) = v9;
      }

      v15 = v14 + 40 * v11 + 204;
      do
      {
        result = 0;
        if (v9 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v9;
        }

        *v15 = a3;
        *(v15 + 4) = 0;
        *(v15 + 8) = v12;
        *(v15 + 16) = v16;
        *(v15 + 24) = 0;
        *(v15 + 32) = 0;
        v15 += 40;
        v12 += v16;
        v7 -= v16;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t sub_248DD42F8(uint64_t *a1, const __CFArray *a2, unint64_t a3, unsigned int a4, unint64_t a5, int a6, unint64_t *a7)
{
  if (!a1 || !*a1)
  {
    return 22;
  }

  sub_248DD4EF8();
  v33 = a1;
  nullsub_4();
  Count = CFArrayGetCount(a2);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v35 = 0;
  v13 = 0;
  v14 = Count & ~(Count >> 63);
  v36 = 2048;
  while (v14 != v12)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v12);
    valuePtr = -1;
    if (!ValueAtIndex)
    {
      goto LABEL_10;
    }

    v16 = ValueAtIndex;
    value = CFDictionaryGetValue(ValueAtIndex, @"Type");
    CFDictionaryGetValueIfPresent(v16, @"Type", &value);
    if (!value)
    {
      goto LABEL_10;
    }

    CFNumberGetValue(value, kCFNumberSInt16Type, &valuePtr);
    v37 = valuePtr;
    value = CFDictionaryGetValue(v16, @"Origin");
    CFNumberGetValue(value, kCFNumberSInt64Type, &v38);
    v17 = v37;
    if (v37 < 2u)
    {
      value = CFDictionaryGetValue(v16, @"Length");
      CFNumberGetValue(value, kCFNumberSInt64Type, &v39);
      goto LABEL_9;
    }

    if (v37 == 2)
    {
      v39 = 0;
      v24 = sub_248DB31F4(v16, @"Marker");
      value = v24;
      if (v24)
      {
        if (CFEqual(v24, @"Embedded Start"))
        {
          v10 = 1;
        }

        else if (CFEqual(value, @"Embedded End"))
        {
          v10 = 2;
        }

        else if (CFEqual(value, @"Volume Start"))
        {
          v10 = 3;
        }

        else if (CFEqual(value, @"Volume End"))
        {
          v10 = 4;
        }

        else
        {
          v10 = -1;
        }
      }

      else
      {
LABEL_9:
        v10 = 0;
      }

LABEL_10:
      v17 = v37;
      goto LABEL_11;
    }

    v10 = 0;
LABEL_11:
    if (v17 == 2)
    {
      v21 = 0;
      v22 = v10 == 4 && a6 == 1;
      v23 = v36;
      if (v22)
      {
        v23 = 0;
      }

      v36 = v23;
      goto LABEL_37;
    }

    if (v17 == 1)
    {
      v18 = v38;
      if (v11 > v38)
      {
        goto LABEL_54;
      }

      v19 = v11;
      v20 = v38 - v35;
      if (v38 - v35 < v36)
      {
        v13 += v20;
        v21 = 0;
        if (v39)
        {
          v13 += v39;
          v35 = v39 + v38;
        }

        else
        {
          v35 = v38;
        }

        goto LABEL_36;
      }

      if (v13)
      {
        v25 = sub_248DD4118(v33, v13, a4, a5);
        if (v25)
        {
          v21 = v25;
LABEL_36:
          v11 = v19;
          goto LABEL_37;
        }

        v19 += v13;
      }

      v21 = sub_248DD4118(v33, v20, 2u, a5);
      if (!v21)
      {
        v11 = v19 + v20;
        v13 = v39;
        v35 = v39 + v18;
        goto LABEL_37;
      }

      v13 = 0;
      goto LABEL_36;
    }

    v21 = 0;
LABEL_37:
    ++v12;
    if (v21)
    {
      goto LABEL_58;
    }
  }

  if (v13)
  {
    v26 = a5;
    v27 = sub_248DD4118(v33, v13, a4, a5);
    if (v27)
    {
LABEL_50:
      v21 = v27;
      goto LABEL_58;
    }

    v11 += v13;
  }

  else
  {
    v26 = a5;
  }

  if (a3 >= v11)
  {
    if (a3 != v11)
    {
      v27 = sub_248DD4118(v33, a3 - v11, 2u, v26);
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v21 = 0;
    v11 = a3;
  }

  else
  {
LABEL_54:
    v21 = 999;
  }

LABEL_58:
  nullsub_4();
  if (a7)
  {
    *a7 = v11;
  }

  return v21;
}

uint64_t sub_248DD4684(uint64_t a1)
{
  *a1 = &unk_285BCCD10;
  free(*(a1 + 40));
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_248DD46E8(uint64_t a1, char *a2)
{
  v3 = MEMORY[0x277D85DF8];
  if (a2)
  {
    fputs(a2, *MEMORY[0x277D85DF8]);
  }

  v4 = pthread_mutex_trylock((a1 + 8));
  v5 = "<locked>";
  if (!v4)
  {
    v5 = "<unlocked>";
  }

  result = fprintf(*v3, "%s (items %d, reserve %d)\n", v5, *(a1 + 136), *(a1 + 144));
  if (*(a1 + 120))
  {
    result = puts("<aborting>");
  }

  for (i = *(a1 + 128); i; i = i[9])
  {
    result = (*(*i + 16))(i, 0);
  }

  if (!v4)
  {

    return pthread_mutex_unlock((a1 + 8));
  }

  return result;
}

void sub_248DD47F8(uint64_t a1)
{
  sub_248DAB68C(a1);

  JUMPOUT(0x24C1EBE70);
}

uint64_t sub_248DD4830(uint64_t a1, char *a2)
{
  v3 = MEMORY[0x277D85DF8];
  if (a2)
  {
    fputs(a2, *MEMORY[0x277D85DF8]);
  }

  v4 = pthread_mutex_trylock((a1 + 8));
  v5 = "<locked>";
  if (!v4)
  {
    v5 = "<unlocked>";
  }

  result = fprintf(*v3, "%s\n", v5);
  if (!v4)
  {

    return pthread_mutex_unlock((a1 + 8));
  }

  return result;
}

uint64_t sub_248DD48E4(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = (*(*a1 + 64))(a1, &v4, a2, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return v4;
}

void sub_248DD494C(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  __strlcpy_chk();
  if (cStr[0] == 5)
  {
    cStr[0] = -27;
  }

  v5 = 0;
  while (1)
  {
    v6 = cStr[v5];
    v7 = v5 ? 32 : 33;
    if (v7 > v6 || memchr("*+,./:;<=>?[\\]|", cStr[v5], 0x11uLL))
    {
      break;
    }

    if (++v5 == 12)
    {
      LODWORD(v5) = 1;
      break;
    }
  }

  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5 == 0;
  }

  if (v8)
  {
    cStr[0] = 0;
  }

  for (i = 10; i != -1; --i)
  {
    if (cStr[i] != 32)
    {
      break;
    }

    cStr[i] = 0;
  }

  v10 = getuid();
  if (!getpwuid(v10))
  {
    goto LABEL_59;
  }

  __strlcpy_chk();
  __strlcat_chk();
  v11 = open(__str, 0, 0);
  if (v11 < 0)
  {
    goto LABEL_59;
  }

  v12 = v11;
  v13 = read(v11, __str, 0x400uLL);
  __str[v13 & ~(v13 >> 63)] = 0;
  close(v12);
  v14 = strtol(__str, 0, 0);
  if (v14 > 20)
  {
    if (v14 <= 35)
    {
      if (v14 <= 28)
      {
        if (v14 == 21)
        {
          v15 = 1053;
          goto LABEL_57;
        }

        if (v14 == 25)
        {
          v15 = 1057;
          goto LABEL_57;
        }

        goto LABEL_56;
      }

      if (v14 != 29)
      {
        if (v14 == 35)
        {
          v15 = 1044;
          goto LABEL_57;
        }

        goto LABEL_56;
      }
    }

    else if (v14 <= 37)
    {
      if (v14 != 36)
      {
        v15 = 1046;
        goto LABEL_57;
      }
    }

    else if (v14 != 38)
    {
      if (v14 != 140)
      {
        if (v14 != 152)
        {
LABEL_56:
          v15 = -1;
          goto LABEL_57;
        }

LABEL_48:
        v15 = 1043;
        goto LABEL_57;
      }

      goto LABEL_52;
    }

    v15 = 1042;
    goto LABEL_57;
  }

  if (v14 > 3)
  {
    if (v14 > 5)
    {
      if (v14 == 6)
      {
        v15 = 1029;
        goto LABEL_57;
      }

      if (v14 != 7)
      {
        goto LABEL_56;
      }

      goto LABEL_48;
    }

    if (v14 != 4)
    {
      v15 = 1047;
      goto LABEL_57;
    }

LABEL_52:
    v15 = 1049;
    goto LABEL_57;
  }

  if (v14 <= 1)
  {
    if (!v14)
    {
      goto LABEL_59;
    }

    if (v14 == 1)
    {
      v15 = 1056;
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (v14 == 2)
  {
    v15 = 1059;
  }

  else
  {
    v15 = 1058;
  }

LABEL_57:
  v16 = CFStringCreateWithCString(0, cStr, v15);
  if (v16)
  {
LABEL_58:
    CFDictionarySetValue(a1, a2, v16);
    CFRelease(v16);
    return;
  }

LABEL_59:
  v16 = CFStringCreateWithCString(0, cStr, 0x410u);
  if (v16)
  {
    goto LABEL_58;
  }

  CFDictionarySetValue(a1, a2, @"UNTITLED");
}

int8x8_t sub_248DD4C70(uint64_t *a1)
{
  v1.i64[0] = *a1;
  v1.i64[1] = *a1;
  result = vqtbl1_s8(v1, 0x607040500010203);
  *a1 = result;
  return result;
}

uint64_t sub_248DD4CA4(uint64_t result, int a2, unint64_t a3)
{
  if (*(result + 112))
  {
    v4 = result;
    v7 = a2 != 0;
    if (a3 < 4)
    {
      goto LABEL_6;
    }

    v5 = a3 >> 2;
    do
    {
      --v5;
      result = (*(v4 + 144))(*(v4 + 112), &v7, 4);
    }

    while (v5);
    v6 = a3 + 4;
    if (a3 + 4 >= 2)
    {
LABEL_6:
      result = (*(v4 + 144))(*(v4 + 112), &v7, 2);
      v6 = a3 + 2;
    }

    if (v6)
    {
      return (*(v4 + 144))(*(v4 + 112), &v7, 1);
    }
  }

  return result;
}

void *sub_248DD4DA0(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x100004000313F17uLL);
  if (a1)
  {
    v3 = malloc_type_calloc(1uLL, a1 + 4, 0x100004052888210uLL);
    *&v3[a1] = a1;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  v2[1] = a1;
  return v2;
}

void *sub_248DD4E18()
{
  result = malloc_type_calloc(1uLL, 0x10uLL, 0x100004000313F17uLL);
  *result = 0;
  result[1] = 0;
  return result;
}

void sub_248DD4E4C(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      free(v2);
    }
  }

  free(a1);
}

char *sub_248DD4E90(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    result = malloc_type_realloc(v4, a2 + 4, 0x100004052888210uLL);
  }

  else
  {
    result = malloc_type_calloc(1uLL, a2 + 4, 0x100004052888210uLL);
  }

  *&result[a2] = a2;
  *a1 = result;
  *(a1 + 8) = a2;
  return result;
}

__CFDictionary *sub_248DD4F00(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v60 = a3;
  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v57 = 0;
  v58 = 0;
  if (!Mutable)
  {
    return 0;
  }

  v9 = Mutable;
  v59 = 0;
  if (DIMediaKitCreateMKMediaRef(a1, v7, 0, &v58))
  {
    v10 = 0;
    goto LABEL_15;
  }

  v56 = 0;
  v11 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v12 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(v11, @"Include most", *MEMORY[0x277CBED28]);
  v13 = MKCFReadMedia();
  CFRelease(v11);
  if (!v13)
  {
    v10 = sub_248DD54AC(a1, a2, 0, 0, 0, 0, 0, 1, v60, 0);
    v14 = v10 == 0;
    goto LABEL_10;
  }

  v54 = 0;
  v55 = 0;
  if (sub_248DD5780(v13, &v54, &v55) || (v15 = sub_248DB31F4(v54, @"ID"), sub_248DD58A8(a2, a1, v58, v54, &v60, &v59)))
  {
    v10 = 0;
    v14 = 1;
    goto LABEL_10;
  }

  v17 = (*(*a1 + 96))(a1);
  v38 = v60;
  v39 = v17;
  v10 = sub_248DD5C2C(v15, 0, 0, 0, a2, 0, v17, v17, v60, v59, 0);
  Count = CFArrayGetCount(v55);
  v19 = sub_248DB31B4(v55, 0);
  v43 = Count - 1;
  if (Count < 1)
  {
    v14 = 0;
    goto LABEL_68;
  }

  v20 = v19;
  v37 = v12;
  v21 = 0;
  v41 = a4 | ((a2 & 0x10) >> 4);
  v42 = 0;
  do
  {
    if (v21 >= v43)
    {
      v44 = 0;
    }

    else
    {
      v44 = sub_248DB31B4(v55, v21 + 1);
    }

    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    value = 0;
    valuePtr = 0;
    v47 = 0;
    if (sub_248DD5D98(v20, &value, &v52, &v51, &v48, &v47, &v50))
    {
      v22 = v47;
      if (v41)
      {
        v23 = v47;
        v24 = a2 & 0xFFFFFFF8 | 4;
      }

      else
      {
        if (v44)
        {
          valuePtr = 0;
          v25 = sub_248DAE894(v44, @"Offset");
          if (v25)
          {
            v26 = CFNumberGetValue(v25, kCFNumberLongLongType, &valuePtr);
            v23 = v47;
            if (v26)
            {
              v57 = valuePtr - (v48 + v47);
              v22 = v47;
            }
          }

          else
          {
            v23 = v47;
          }
        }

        else
        {
          v57 = v39 - (v47 + v48);
          v23 = v47;
          if (v60 - (v39 - v47) > v47)
          {
            v22 = v60 - (v39 - v47);
          }
        }

        v24 = a2;
      }

      v42 = sub_248DB3258(a1, v48, v23, &v53);
      if (!v42)
      {
        theDict = sub_248DD54AC(v53, v24, value, v52, v52, v51, v48, v59, v22, v50);
        if (!theDict)
        {
          v42 = 0;
          goto LABEL_63;
        }

        if (v57)
        {
          v27 = CFNumberCreate(0, kCFNumberSInt64Type, &v57);
          CFDictionarySetValue(theDict, @"postamble", v27);
          CFRelease(v27);
        }

        if ((v24 & 0x10) != 0 || !sub_248DD5ED8(theDict))
        {
          if (Count != 1)
          {
LABEL_61:
            v36 = 0;
            goto LABEL_62;
          }

          v32 = v39;
          v33 = v39;
          if ((a2 & 4) == 0)
          {
            v35 = v47;
            v34 = v48;
            v36 = sub_248DD60EC(v54, &v57);
            if (v36)
            {
LABEL_62:
              v42 = v36;
              CFArrayAppendValue(v9, theDict);
              CFRelease(theDict);
              goto LABEL_63;
            }

            v33 = v35 + v34 + v57;
            v32 = v39;
          }
        }

        else
        {
          if (value)
          {
            CFDictionarySetValue(v10, @"partition-resize-id-hint", value);
            LODWORD(v45) = v21;
            v28 = CFNumberCreate(v7, kCFNumberIntType, &v45);
            CFDictionarySetValue(v10, @"partition-resize-hint", v28);
            CFRelease(v28);
          }

          if (Count != 1)
          {
            goto LABEL_61;
          }

          if ((a2 & 4) == 0)
          {
            CFDictionarySetValue(theDict, @"can-trigger-image-resize", v37);
          }

          v30 = v47;
          v29 = v48;
          v45 = 0;
          v31 = sub_248DAE894(theDict, @"content-min-length");
          if (v31 && CFNumberGetValue(v31, kCFNumberLongLongType, &v45))
          {
            v30 = v45;
          }

          else
          {
            v45 = v30;
          }

          v32 = v39;
          if ((a2 & 4) != 0)
          {
            v33 = v39;
          }

          else
          {
            v33 = v30 + v29 + v57;
          }
        }

        sub_248DD5F14(v10, a2, v33, v32, v38, v59);
        goto LABEL_61;
      }
    }

LABEL_63:
    if (v53)
    {
      DIDiskImageObjectRelease(v53);
    }

    ++v21;
    v20 = v44;
    --Count;
  }

  while (Count);
  v14 = v42 != 0;
LABEL_68:
  if (CFArrayGetCount(v9))
  {
    CFDictionarySetValue(v10, @"subcontent-list", v9);
    CFRelease(v9);
    v9 = 0;
  }

LABEL_10:
  if (v14 && v10)
  {
    CFRelease(v10);
    v10 = 0;
  }

  if (v13)
  {
    CFRelease(v13);
  }

LABEL_15:
  if (v58)
  {
    CFRelease(v58);
    v58 = 0;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v10;
}

__CFDictionary *sub_248DD54AC(uint64_t *a1, uint64_t a2, const void *a3, __CFString *a4, const void *a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  cf = 0;
  if (!a1)
  {
    return 0;
  }

  v17 = a9;
  if (!a9)
  {
    v19 = *a1;
    if ((a2 & 4) != 0)
    {
      v20 = (*(v19 + 96))(a1);
    }

    else
    {
      v20 = (*(v19 + 112))(a1);
    }

    v17 = v20;
  }

  v21 = (*(*a1 + 96))(a1);
  if (!a4)
  {
    if ((a2 & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_17:
    v26 = (*(*a1 + 96))(a1);
    if (a8 <= 1)
    {
      a8 = 1;
    }

    goto LABEL_19;
  }

  v22 = CFStringCompare(a4, @"Apple_APFS", 0);
  if ((a2 & 8) != 0 || v22 == kCFCompareEqualTo)
  {
    goto LABEL_17;
  }

LABEL_12:
  MKMediaRef = DIMediaKitCreateMKMediaRef(a1, *MEMORY[0x277CBECE8], 0, &cf);
  if (cf && !MKMediaRef && !MKHFSGetResizeLimits())
  {
    v26 = v38;
    v28 = v39 | a8;
    if (a8 && v39)
    {
      if (v28)
      {
        v29 = 0;
        v31 = v39;
        v30 = a8;
      }

      else
      {
        v29 = 0;
        v30 = a8;
        v31 = v39;
        do
        {
          v31 >>= 1;
          v30 >>= 1;
          ++v29;
        }

        while (((v31 | v30) & 1) == 0);
      }

      do
      {
        v32 = v31;
        v31 >>= 1;
      }

      while ((v32 & 1) == 0);
      do
      {
        do
        {
          v33 = v30;
          v30 >>= 1;
        }

        while ((v33 & 1) == 0);
        v34 = v32 - v33;
        if (v32 < v33)
        {
          v35 = v33 - v32;
        }

        else
        {
          v32 = v33;
          v35 = v34;
        }

        v30 = v35 >> 1;
      }

      while (v35 > 1);
      v28 = v32 << v29;
    }

    if (a8 / v28 * v39 <= 1)
    {
      a8 = 1;
    }

    else
    {
      a8 = a8 / v28 * v39;
    }

    if (v37 < v17)
    {
      v17 = v37;
    }

LABEL_19:
    if (v21 - (v21 - v26) / a8 * a8 >= v21)
    {
      v24 = v21;
    }

    else
    {
      v24 = v21 - (v21 - v26) / a8 * a8;
    }

    v25 = (((v17 - v21) / a8 * a8) & ~(((v17 - v21) / a8 * a8) >> 63)) + v21;
    goto LABEL_23;
  }

  v24 = (*(*a1 + 96))(a1);
  a4 = @"unknown";
  v25 = v24;
  v21 = v24;
LABEL_23:
  v18 = sub_248DD5C2C(a4, a3, a5, a6, a2, a7, v24, v21, v25, a8, a10);
  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

uint64_t sub_248DD5780(const __CFDictionary *a1, const __CFDictionary **a2, const __CFArray **a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  v5 = sub_248DB3174(a1, @"Schemes");
  if (!v5)
  {
    return 45;
  }

  v6 = v5;
  if (!CFArrayGetCount(v5))
  {
    return 45;
  }

  if (CFArrayGetCount(v6) < 2)
  {
    v7 = sub_248DB31B4(v6, 0);
    goto LABEL_12;
  }

  if (!sub_248DC7D70(v6))
  {
    return 45;
  }

  v7 = CFArrayDictionarySearchWithIndexOptions();
LABEL_12:
  v9 = v7;
  if (!v7)
  {
    return 22;
  }

  v10 = sub_248DB31F4(v7, @"ID");
  if (!v10)
  {
    return 22;
  }

  if (CFEqual(v10, @"ISO9660"))
  {
    return 22;
  }

  v11 = sub_248DB3174(v9, @"Sections");
  v12 = sub_248DD6AF0(v11);
  if (!v12)
  {
    return 22;
  }

  v13 = sub_248DB3174(v12, @"Partitions");
  if (!v13)
  {
    return 22;
  }

  v14 = v13;
  if (!CFArrayGetCount(v13))
  {
    return 22;
  }

  if (a3)
  {
    *a3 = v14;
  }

  result = 0;
  if (a2)
  {
    *a2 = v9;
  }

  return result;
}

uint64_t sub_248DD58A8(char a1, uint64_t *a2, uint64_t a3, const __CFDictionary *a4, uint64_t *a5, uint64_t *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    *a6 = 0;
  }

  if (a5)
  {
    v11 = MKMediaCopyProperty();
    if (v11)
    {
      v12 = v11;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID != CFGetTypeID(v12) || (v14 = sub_248DB3174(a4, @"Sections"), (v15 = sub_248DD6AF0(v14)) == 0))
      {
        v20 = 22;
        goto LABEL_16;
      }

      valuePtr = 0;
      v16 = sub_248DAE894(v15, @"Media Block Size");
      if (!v16 || !CFNumberGetValue(v16, kCFNumberSInt64Type, &valuePtr))
      {
        valuePtr = 512;
      }

      v17 = sub_248DB31F4(a4, @"ID");
      v18 = v17;
      if (v17 && CFEqual(v17, @"APM"))
      {
        v27 = 0;
        v19 = (*(*a2 + 48))(a2, 0, 1, &v27, v29);
        if (v19)
        {
          v20 = v19;
LABEL_16:
          CFRelease(v12);
          return v20;
        }

        sub_248DC4B00(v29);
      }

      if (a6)
      {
        *a6 = valuePtr / 512;
      }

      if (*a5)
      {
        v20 = 0;
        goto LABEL_16;
      }

      v22 = *a2;
      if ((a1 & 4) != 0)
      {
        v25 = (*(v22 + 96))(a2);
      }

      else
      {
        v23 = (*(v22 + 112))(a2);
        if (v23 < (*(*a2 + 96))(a2))
        {
          v23 = (*(*a2 + 96))(a2);
        }

        v24 = v23;
        if (!v18)
        {
          goto LABEL_33;
        }

        if (CFEqual(v18, @"APM"))
        {
          v24 = 0xFFFFFFFFLL * valuePtr / 512;
LABEL_33:
          if (v24 < (*(*a2 + 96))(a2))
          {
            v24 = (*(*a2 + 96))(a2);
          }

          v20 = 0;
          if (v23 >= v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = v23;
          }

          *a5 = v26;
          goto LABEL_16;
        }

        v24 = v23;
        if (CFEqual(v18, @"GPT"))
        {
          goto LABEL_33;
        }

        v24 = v23;
        if (CFEqual(v18, @"MBR"))
        {
          goto LABEL_33;
        }

        v25 = (*(*a2 + 96))(a2);
      }

      v20 = 0;
      *a5 = v25;
      goto LABEL_16;
    }
  }

  return 22;
}

__CFDictionary *sub_248DD5C2C(__CFString *a1, const void *a2, const void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void *value)
{
  v13 = a5;
  v22 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  sub_248DD5F14(Mutable, v13, a7, a8, a9, a10);
  if (a1)
  {
    v19 = a1;
  }

  else
  {
    v19 = @"unknown";
  }

  CFDictionarySetValue(Mutable, @"content-hint", v19);
  if (a3)
  {
    CFDictionarySetValue(Mutable, @"partition-type", a3);
  }

  if (a4)
  {
    CFDictionarySetValue(Mutable, @"partition-name", a4);
  }

  if (a2)
  {
    CFDictionarySetValue(Mutable, @"partition-ID", a2);
  }

  if (value)
  {
    CFDictionarySetValue(Mutable, @"partition-UUID", value);
  }

  valuePtr = a6;
  v20 = CFNumberCreate(v22, kCFNumberLongLongType, &valuePtr);
  CFDictionarySetValue(Mutable, @"content-start", v20);
  if (v20)
  {
    CFRelease(v20);
  }

  return Mutable;
}

uint64_t sub_248DD5D98(const __CFDictionary *a1, const void **a2, const void **a3, const void **a4, void *a5, void *a6, const void **a7)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = sub_248DAE894(a1, @"Partition ID");
  }

  if (a3)
  {
    *a3 = sub_248DB31F4(a1, @"Type");
  }

  if (a4)
  {
    *a4 = sub_248DB31F4(a1, @"Name");
  }

  if (a7)
  {
    *a7 = sub_248DB31F4(a1, @"GUID");
  }

  if (!a5 || (result = sub_248DAE894(a1, @"Offset")) != 0 && (result = CFNumberGetValue(result, kCFNumberLongLongType, a5), result))
  {
    if (!a6)
    {
      return 1;
    }

    result = sub_248DAE894(a1, @"Size");
    if (result)
    {
      result = CFNumberGetValue(result, kCFNumberLongLongType, a6);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

const __CFString *sub_248DD5ED8(const __CFDictionary *a1)
{
  result = sub_248DB31F4(a1, @"content-hint");
  if (result)
  {
    return (CFStringCompare(result, @"unknown", 0) != kCFCompareEqualTo);
  }

  return result;
}

void sub_248DD5F14(__CFDictionary *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1)
  {
    valuePtr = 0;
    if (a5 <= a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = a5;
    }

    if ((a2 & 1) == 0)
    {
      v8 = a4;
    }

    if (a3 >= a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = a3;
    }

    if ((a2 & 2) == 0)
    {
      v9 = a4;
    }

    if (a6 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = a6;
    }

    v11 = a4 - (a4 - v9) / v10 * v10;
    if (v11 >= a4)
    {
      v11 = a4;
    }

    if ((a4 - v9) % v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    v13 = (v8 - a4) / v10 * v10;
    if (v8 - a4 == v13)
    {
      v14 = v8;
    }

    else
    {
      v14 = (v13 & ~(v13 >> 63)) + a4;
    }

    CFDictionaryRemoveValue(a1, @"content-min-length");
    v15 = *MEMORY[0x277CBECE8];
    if (v12 != a4)
    {
      valuePtr = v12;
      v16 = CFNumberCreate(v15, kCFNumberLongLongType, &valuePtr);
      CFDictionarySetValue(a1, @"content-min-length", v16);
      CFRelease(v16);
    }

    CFDictionaryRemoveValue(a1, @"content-max-length");
    if (v14 != a4)
    {
      valuePtr = v14;
      v17 = CFNumberCreate(v15, kCFNumberLongLongType, &valuePtr);
      CFDictionarySetValue(a1, @"content-max-length", v17);
      CFRelease(v17);
    }

    CFDictionaryRemoveValue(a1, @"content-granularity");
    if (v12 != v14)
    {
      valuePtr = v10;
      v18 = CFNumberCreate(v15, kCFNumberLongLongType, &valuePtr);
      CFDictionarySetValue(a1, @"content-granularity", v18);
      CFRelease(v18);
    }

    valuePtr = a4;
    v19 = CFNumberCreate(v15, kCFNumberLongLongType, &valuePtr);
    CFDictionarySetValue(a1, @"content-length", v19);
    CFRelease(v19);
  }
}

uint64_t sub_248DD60EC(const __CFDictionary *a1, unint64_t *a2)
{
  v9 = 0;
  valuePtr = 0;
  if (!a2)
  {
    return 22;
  }

  v3 = sub_248DB3174(a1, @"Sections");
  v4 = sub_248DD6AF0(v3);
  if (!v4)
  {
    return 2;
  }

  v5 = v4;
  v6 = sub_248DAE894(v4, @"Overhead");
  if (!v6)
  {
    return 2;
  }

  CFNumberGetValue(v6, kCFNumberLongLongType, &valuePtr);
  v7 = sub_248DAE894(v5, @"Offset");
  if (!v7)
  {
    return 2;
  }

  CFNumberGetValue(v7, kCFNumberLongLongType, &v9);
  if (valuePtr - v9 < 0)
  {
    return 2;
  }

  result = 0;
  *a2 = (valuePtr - v9 + 8 * (((valuePtr - v9) & 7) != 0)) & 0xFFFFFFFFFFFFFFF8;
  return result;
}

uint64_t sub_248DD61A4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v52 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (a4)
  {
    v6 = 19;
  }

  else
  {
    v6 = 3;
  }

  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 | 0x20;
  }

  v8 = (*(*a1 + 456))(a1, v7, 0, 1);
  if (!v8)
  {
    return 999;
  }

  v9 = v8;
  v46 = 1;
  v10 = (*(*a1 + 96))(a1);
  v47 = v10;
  valuePtr = v10;
  v11 = sub_248DAE894(v9, @"content-min-length");
  if (v11)
  {
    CFNumberGetValue(v11, kCFNumberLongLongType, &valuePtr);
  }

  v12 = sub_248DAE894(v9, @"content-max-length");
  if (v12)
  {
    CFNumberGetValue(v12, kCFNumberLongLongType, &v47);
  }

  v13 = sub_248DAE894(v9, @"content-granularity");
  if (v13)
  {
    CFNumberGetValue(v13, kCFNumberLongLongType, &v46);
  }

  if (a2 == -1)
  {
    v14 = valuePtr;
  }

  else
  {
    v14 = a2;
  }

  if (v14 == 1)
  {
    v14 = v47;
  }

  if (v14 < valuePtr)
  {
    warnx("resize request is below minimum size allowed.");
LABEL_50:
    v23 = 0;
    v22 = 22;
    goto LABEL_33;
  }

  if (v14 > v47)
  {
    warnx("resize request is above maximum size allowed.");
    goto LABEL_50;
  }

  v15 = (v10 - v14) / v46 * v46;
  v16 = (v14 - v10) / v46 * v46;
  v17 = v14 <= v10;
  if (v14 > v10)
  {
    v18 = (v14 - v10) / v46 * v46;
  }

  else
  {
    v18 = (v10 - v14) / v46 * v46;
  }

  if (v17)
  {
    v19 = v10 - v15;
  }

  else
  {
    v19 = v16 + v10;
  }

  if (!v18)
  {
    v22 = 0;
    goto LABEL_32;
  }

  v20 = *MEMORY[0x277CBECE8];
  MKMediaRef = DIMediaKitCreateMKMediaRef(a1, *MEMORY[0x277CBECE8], 0, &cf);
  if (!MKMediaRef)
  {
    v44 = 0;
    Mutable = CFDictionaryCreateMutable(v20, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v26 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(Mutable, @"Include most", *MEMORY[0x277CBED28]);
    v23 = MKCFReadMedia();
    CFRelease(Mutable);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v42 = 0;
    v43 = 0;
    v27 = sub_248DD5780(v23, &v42, &v43);
    if (v27)
    {
      goto LABEL_47;
    }

    v28 = sub_248DB31F4(v42, @"ID");
    v29 = v28;
    v30 = @"Fit Map to Container";
    if (v28 && CFEqual(v28, @"APM"))
    {
      v30 = @"Fit Map to Media";
    }

    v27 = (*(*a1 + 104))(a1, v19);
    if (v27 || (v27 = DIMediaKitCreateMKMediaRef(a1, v20, 0, &cf), v27))
    {
LABEL_47:
      v22 = v27;
      goto LABEL_33;
    }

    cf1 = v29;
    v31 = sub_248DB3174(v23, @"Schemes");
    Count = CFArrayGetCount(v31);
    if (Count >= 1)
    {
      v33 = Count;
      for (i = 0; i < v33; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v31, i);
        v36 = sub_248DB31F4(ValueAtIndex, @"ID");
        if (v36 && CFEqual(v36, @"ISO9660"))
        {
          CFArrayRemoveValueAtIndex(v31, i--);
          --v33;
        }
      }
    }

    v37 = CFDictionaryCreateMutable(v20, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(v37, v30, v26);
    v22 = MKCFWriteMedia();
    CFRelease(v37);
    if (!cf1 || v22)
    {
      goto LABEL_33;
    }

    if (CFEqual(cf1, @"APM"))
    {
      v41 = 0;
      v22 = (*(*a1 + 48))(a1, 0, 1, &v41, &v49);
      if (v22)
      {
        goto LABEL_33;
      }

      sub_248DC4B00(&v49);
      if ((v50 & 0xFE00) != 0)
      {
        v38 = v50 >> 9;
      }

      else
      {
        v38 = 1;
      }

      if (v19 % v38)
      {
        v39 = v19 / v38 + 1;
      }

      else
      {
        v39 = v19 / v38;
      }

      if (v39 != v51)
      {
        if (v39 > 0xFFFFFFFFLL)
        {
          v22 = 999;
          goto LABEL_33;
        }

        v51 = v39;
        sub_248DB0A18(&v49);
        v27 = (*(*a1 + 64))(a1, 0, 1, &v41, &v49);
        goto LABEL_47;
      }
    }

    else if (!CFEqual(cf1, @"GPT"))
    {
      CFEqual(cf1, @"MBR");
    }

    v22 = 0;
    goto LABEL_33;
  }

  v22 = MKMediaRef;
LABEL_32:
  v23 = 0;
LABEL_33:
  CFRelease(v9);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return v22;
}

uint64_t sub_248DD66F8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  cf = 0;
  if (a4)
  {
    v12 = (*(*a1 + 96))(a1);
    if (v12 <= a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = v12;
    }
  }

  else
  {
    v13 = 0;
  }

  if (a5)
  {
    v14 = 11;
  }

  else
  {
    v14 = 3;
  }

  v15 = (*(*a1 + 456))(a1, v14, v13, 0);
  if (!v15)
  {
    return 999;
  }

  v16 = v15;
  v32 = 1;
  v17 = (*(*a1 + 96))(a1);
  v33 = v17;
  valuePtr = v17;
  if (a6 < 0)
  {
    v19 = sub_248DAE894(v16, @"content-min-length");
    if (v19)
    {
      CFNumberGetValue(v19, kCFNumberLongLongType, &valuePtr);
    }
  }

  else
  {
    valuePtr = a6;
  }

  v20 = sub_248DAE894(v16, @"content-max-length");
  if (v20)
  {
    CFNumberGetValue(v20, kCFNumberLongLongType, &v33);
  }

  v21 = sub_248DAE894(v16, @"content-granularity");
  if (v21)
  {
    CFNumberGetValue(v21, kCFNumberLongLongType, &v32);
  }

  if (a2 == -1)
  {
    v22 = valuePtr;
  }

  else
  {
    v22 = a2;
  }

  if (v22 == 1)
  {
    v23 = v33;
  }

  else
  {
    v23 = v22;
  }

  if (v23 < valuePtr)
  {
    warnx("resize request is below minimum size allowed.");
  }

  else
  {
    if (v23 <= v33)
    {
      if (v23 <= v17)
      {
        if (v17 - v23 != (v17 - v23) % v32)
        {
          v30 = a3;
          v24 = v17 - (v17 - v23) / v32 * v32;
          goto LABEL_34;
        }
      }

      else if (v23 - v17 != (v23 - v17) % v32)
      {
        v24 = v23 - (v23 - v17) % v32;
        v25 = (*(*a1 + 104))(a1, v24);
        if (v25)
        {
LABEL_45:
          MKMediaRef = v25;
          goto LABEL_49;
        }

        v30 = a3;
LABEL_34:
        v26 = *MEMORY[0x277CBECE8];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionarySetValue(Mutable, @"Writable", *MEMORY[0x277CBED28]);
        MKMediaRef = DIMediaKitCreateMKMediaRef(a1, v26, Mutable, &cf);
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (!cf)
        {
          goto LABEL_49;
        }

        if ((a5 & 1) == 0)
        {
          MKMediaRef = MKHFSResizeVolume();
          if (MKMediaRef)
          {
            goto LABEL_49;
          }
        }

        v28 = a4 ? v30 : v24;
        if (v23 > v17 || !v28)
        {
          goto LABEL_49;
        }

        v25 = (*(*a1 + 104))(a1);
        goto LABEL_45;
      }

      MKMediaRef = 0;
      goto LABEL_49;
    }

    warnx("resize request is above maximum size allowed.");
  }

  MKMediaRef = 22;
LABEL_49:
  CFRelease(v16);
  if (cf)
  {
    CFRelease(cf);
  }

  return MKMediaRef;
}

const __CFDictionary *sub_248DD6A24(const __CFArray *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  if (a1 && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      v7 = sub_248DB31B4(a1, v6);
      if (v7)
      {
        v8 = v7;
        v9 = sub_248DAE894(v7, @"partition-ID");
        if (!v9)
        {
          goto LABEL_8;
        }

        if (CFEqual(v3, v9))
        {
          break;
        }
      }

      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v8;
}

const __CFDictionary *sub_248DD6AF0(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    v5 = sub_248DB31B4(a1, v4);
    if (v5)
    {
      v6 = v5;
      v7 = sub_248DB31F4(v5, @"ID");
      if (v7)
      {
        if (CFEqual(v7, @"MAP"))
        {
          break;
        }
      }
    }

    if (v3 == ++v4)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_248DD6BE8(uint64_t a1, char *a2, size_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x400uLL, 0xC37FC7BBuLL);
  if (v6)
  {
    v7 = v6;
    if (sub_248DD6B98((a1 + 72)))
    {
      v8 = strstr((a1 + 1112), "://");
      if (!v8 || (v9 = v8 + 3, (v10 = strchr(v8 + 3, 47)) == 0))
      {
        v12 = 22;
LABEL_17:
        free(v7);
        return v12;
      }

      if (v10 - v9 >= 1023)
      {
        v11 = 1023;
      }

      else
      {
        v11 = v10 - v9;
      }

      __memcpy_chk();
      *(v7 + v11) = 0;
      if (!a2)
      {
LABEL_16:
        v12 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      if (strncmp((a1 + 1112), "/dev/disk", 9uLL))
      {
        strncmp((a1 + 1112), "/dev/rdisk", 0xAuLL);
      }

      __strlcpy_chk();
      if (!a2)
      {
        goto LABEL_16;
      }
    }

    strlcpy(a2, v7, a3);
    goto LABEL_16;
  }

  return 12;
}

uint64_t sub_248DD6D6C(const char *a1, unsigned int *a2, unsigned int *a3, int a4, int a5, int a6, int a7, int a8)
{
  result = sub_248DC83F0(a1, a2, a3, a4, a5, a6, a7, a8, v12[0], v12[1], v13, v14[0], v14[1], v14[2]);
  if (!result)
  {
    if (a2)
    {
      DWORD1(v12[0]) = bswap32(*a2);
    }

    if (a3)
    {
      DWORD2(v12[0]) = bswap32(*a3);
    }

    return setattrlist(a1, v14, v12 + 4, 0x20uLL, 0);
  }

  return result;
}

uint64_t sub_248DD6E48(const __CFDictionary *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v7 = sub_248DA1560(a1);
  if (sub_248DA0728(a1, @"exclusive-open-locks-are-optional", 0))
  {
    sub_248DC8438();
    (*(v8 + 32))(a2, @"exclusive-open-locks-are-optional");
  }

  if (!sub_248DA0728(a1, @"skip-permissions-check", 0))
  {
    sub_248DC8438();
    v10 = (*(v9 + 80))(a2, v7);
    *a4 = v10;
    if (v10)
    {
      return 1;
    }
  }

  sub_248DC8438();
  if ((*(v11 + 760))(a2))
  {
    sub_248DC8438();
    (*(v12 + 32))(a2, @"bs-io-scheduling");
  }

  sub_248DA159C(a2, a1);
  v13 = sub_248DA0728(a1, @"bs-no-follow", 0);
  result = 0;
  *(a2 + 369) = v13;
  return result;
}

void sub_248DD7010(uint64_t *a1, uint64_t a2)
{
  sub_248DA7A20(a1, a2);
  v4 = sub_248DA7A64(a1);
  sub_248DBCD50(a2, a1 + 20, v4 ^ 1);
}

uint64_t sub_248DD70C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_248DC7A7C();
  (*(v5 + 80))();
  v11 = 0;
  sub_248DC7A7C();
  v7 = (*(v6 + 328))();
  if (!v7)
  {
    sub_248DCD140();
    v9 = (*(v8 + 96))(a1);
    sub_248DD201C(a3, v9);
  }

  return v7;
}

uint64_t sub_248DD71A0(void **a1, uint64_t a2, const void *a3)
{
  sub_248DC7A7C();
  v6 = (*(v5 + 80))();
  sub_248DCD19C();
  v9 = malloc_type_malloc(v7, v8);
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  memmove(v9, a3, v6);
  v11 = ((*a1)[12])(a1);
  sub_248DD201C(v10, v11);
  v12 = (*(*a1[3] + 336))();
  free(v10);
  return v12;
}

uint64_t sub_248DD72C4(uint64_t a1)
{
  sub_248DC7A7C();
  v4 = (*(v3 + 80))();
  v5 = *(a1 + 112);
  result = sub_248DC018C(a1, v5 + v4);
  if (result)
  {
    return result;
  }

  sub_248DCD17C();
  v8 = *(a1 + 80);
  if (!v8)
  {
    v10 = malloc_type_malloc(v4, v7);
    if (sub_248DCD15C(v10))
    {
      goto LABEL_6;
    }

    return 12;
  }

  v9 = malloc_type_realloc(v8, v4 * (*(a1 + 32) + 1), v7);
  if (!v9)
  {
    return 12;
  }

  sub_248DCD15C(v9);
LABEL_6:
  v11 = *(a1 + 32);
  *(a1 + 32) = v11 + 1;
  if (v11 == -1)
  {
    v12 = 0;
  }

  else
  {
    sub_248DCA174();
    v12 = (v1 + (*(v13 + 80))(a1) * v11);
  }

  v24 = 0;
  bzero(v12, v4);
  v14 = *(a1 + 32);
  *v12 = 1936749171;
  v12[1] = v14 - 1;
  v15 = v14 - 2;
  if (v14 < 2)
  {
    v20 = *(a1 + 72);
    *(v20 + 20) = v5;
    v19 = (v20 + 12);
  }

  else
  {
    v16 = *(a1 + 80);
    sub_248DCA174();
    v18 = v16 + (*(v17 + 80))(a1) * v15;
    *(v18 + 12) = v5;
    v19 = (v18 + 8);
  }

  *v19 |= 1u;
  v21 = sub_248DCD104();
  result = (*(v22 + 336))(v21, v5, v4, &v24, v12);
  if (!result)
  {
    v12[2] &= ~1u;
    sub_248DCA174();
    return (*(v23 + 120))(a1);
  }

  return result;
}

uint64_t sub_248DD74A8(uint64_t a1, uint64_t a2)
{
  theArray = 0;
  v17 = 0;
  v16 = 0;
  sub_248DC7A7C();
  v5 = (*(v4 + 176))();
  if (v5)
  {
    goto LABEL_2;
  }

  if (a2)
  {
    sub_248DCA174();
    (*(v7 + 344))(a2, 100.0);
    sub_248DCA174();
    if ((*(v8 + 352))(a2))
    {
      v9 = 2728;
LABEL_13:
      syslog(5, "CSparseFile::compact(): line %d: returning kDI_USERCANCELED", v9);
      v6 = 112;
      goto LABEL_14;
    }
  }

  sub_248DCD140();
  v5 = (*(v10 + 192))(a1);
  if (v5)
  {
LABEL_2:
    v6 = v5;
    goto LABEL_14;
  }

  if (a2)
  {
    sub_248DCA174();
    if ((*(v11 + 352))(a2))
    {
      v9 = 2739;
      goto LABEL_13;
    }
  }

  sub_248DCD140();
  v13 = (*(v12 + 200))(a1);
  v6 = v13;
  if (a2 && !v13)
  {
    sub_248DCA174();
    (*(v14 + 344))(a2, 100.0);
  }

LABEL_14:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v6;
}

uint64_t sub_248DD780C(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  sub_248DC7A7C();
  v7 = (*(v6 + 64))();
  v52 = a3;
  v53 = 0;
  *a3 = 0;
  if (a2)
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      if (*(a1 + 16) < a2)
      {
        v53 = 0;
      }

      else
      {
        v53 = *(v8 + 8 * (a2 - 1));
      }
    }
  }

  v9 = v7 << 9;
  v10 = *(a1 + 72);
  sub_248DCD124();
  v12 = (*(v11 + 80))(a1);
  sub_248DCD124();
  v14 = 0;
  if (!(*(v13 + 88))(a1))
  {
    v56 = 0;
    v57 = 0;
    v15 = 0;
    v54 = 0;
    v55 = 0;
    goto LABEL_19;
  }

  v56 = 0;
  v57 = 0;
  v15 = 0;
  v54 = 0;
  v55 = 0;
  v16 = 0;
  v17 = (v10 + 64);
  do
  {
    v18 = *v17;
    if (!*v17)
    {
      goto LABEL_51;
    }

    if (!(v14 & 1 | (v18 != -1)))
    {
      v56 = (*(a1 + 72) + 12);
      v14 = 1;
      v54 = v17;
    }

    if (v18 == a2)
    {
      v57 = (*(a1 + 72) + 12);
      v15 = 1;
      v55 = v17;
    }

    sub_248DCD168();
    if (v19)
    {
      v15 = 1;
      v14 = 1;
      goto LABEL_18;
    }

    ++v16;
    ++v17;
    sub_248DCD124();
  }

  while (v16 < (*(v20 + 88))(a1));
  if ((v14 & 1) == 0)
  {
LABEL_19:
    v21 = 1;
    while (1)
    {
      v22 = *(a1 + 32);
      if (v21 > v22)
      {
        goto LABEL_51;
      }

      v23 = v21 - 1;
      v24 = *(a1 + 80);
      if (v24 && v22 > v23)
      {
        break;
      }

      v26 = 0;
      if ((v14 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_29:
      sub_248DCD124();
      if ((*(v29 + 96))(a1))
      {
        v30 = 0;
        v31 = (v26 + 56);
        do
        {
          v32 = *v31;
          if (!*v31)
          {
            goto LABEL_51;
          }

          if (!(v14 & 1 | (v32 != -1)))
          {
            v33 = *(a1 + 80);
            if (v33 && *(a1 + 32) > v23)
            {
              sub_248DCD124();
              v35 = v33 + (*(v34 + 80))(a1) * v23;
              v32 = *v31;
            }

            else
            {
              v35 = 0;
              v32 = -1;
            }

            v56 = (v35 + 8);
            v14 = 1;
            v54 = v31;
          }

          if (v32 == a2)
          {
            v36 = *(a1 + 80);
            if (v36 && *(a1 + 32) > v23)
            {
              sub_248DCD124();
              v38 = v36 + (*(v37 + 80))(a1) * v23;
            }

            else
            {
              v38 = 0;
            }

            v57 = (v38 + 8);
            v15 = 1;
            v55 = v31;
          }

          sub_248DCD168();
          if (v39)
          {
            v15 = 1;
            v14 = 1;
            break;
          }

          ++v30;
          ++v31;
          sub_248DCD124();
        }

        while (v30 < (*(v40 + 96))(a1));
      }

      ++v21;
      if (v14 & 1) != 0 && (v15)
      {
        goto LABEL_50;
      }
    }

    sub_248DCD124();
    v26 = v24 + (*(v27 + 80))(a1) * v23;
    if (v14)
    {
      goto LABEL_29;
    }

LABEL_28:
    sub_248DCD124();
    v12 += (*(v28 + 80))(a1);
    goto LABEL_29;
  }

LABEL_18:
  if ((v15 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_50:
  v15 = 1;
  v14 = 1;
LABEL_51:
  v41 = 999;
  if (v14 & 1) != 0 && (v15)
  {
    if (v12 >= v53)
    {
      return 0;
    }

    if (v9 >= 0x100000)
    {
      v42 = 0x100000;
    }

    else
    {
      v42 = v9;
    }

    sub_248DCD19C();
    v44 = malloc_type_malloc(v42, v43);
    if (!v44)
    {
      return 12;
    }

    v45 = v44;
    if (v9)
    {
      sub_248DC7A7C();
      v47 = (*(v46 + 328))();
      if (!v47)
      {
        v41 = 999;
LABEL_67:
        free(v45);
        return v41;
      }
    }

    else
    {
      *v55 = -1;
      *v57 |= 1u;
      *v54 = a2;
      *v56 |= 1u;
      sub_248DCD124();
      v47 = (*(v48 + 120))(a1);
      if (!v47)
      {
        sub_248DC7A7C();
        (*(v49 + 472))();
        if (a2)
        {
          v50 = *(a1 + 8);
          if (v50)
          {
            if (*(a1 + 16) >= a2)
            {
              *(v50 + 8 * (a2 - 1)) = v12;
            }
          }
        }

        v41 = 0;
        *v52 = 1;
        goto LABEL_67;
      }
    }

    v41 = v47;
    goto LABEL_67;
  }

  return v41;
}

uint64_t sub_248DD7D7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v3 = v1 - 1;
    v4 = *(a1 + 80);
    if (v4 && v3 < *(a1 + 32))
    {
      sub_248DCA174();
      v6 = v4 + (*(v5 + 80))(a1) * v3;
    }

    else
    {
      v6 = 0;
    }

    sub_248DCA174();
    if ((*(v7 + 96))(a1))
    {
      v8 = 0;
      v9 = v6 + 56;
      while ((*(v9 + 4 * v8) + 1) <= 1)
      {
        sub_248DCA174();
        if (++v8 >= (*(v10 + 96))(a1))
        {
          goto LABEL_10;
        }
      }

      return 0;
    }

LABEL_10:
    if (v1 == 1)
    {
      break;
    }

    v11 = *(a1 + 80);
    sub_248DCA174();
    v13 = v11 + (*(v12 + 80))(a1) * (v1 - 2);
    v14 = *(v13 + 12);
    *(v13 + 12) = 0;
    sub_248DCD130(v13);
    v15 = *(a1 + 80);
    sub_248DCA174();
    v17 = (*(v16 + 80))(a1);
    v18 = malloc_type_realloc(v15, v17 * (*(a1 + 32) - 1), 0x100004021716A34uLL);
    if (!v18)
    {
      return 12;
    }

    *(a1 + 80) = v18;
    --*(a1 + 32);
    sub_248DCA174();
    result = (*(v19 + 120))(a1);
    if (result)
    {
      return result;
    }

    v21 = sub_248DCD104();
    result = (*(v22 + 312))(v21, v14);
    if (result)
    {
      return result;
    }

    *(a1 + 112) = v14;
    *(a1 + 120) = v14;
    v23 = sub_248DCD104();
    (*(v24 + 472))(v23, 1);
    v1 = v3;
  }

  v25 = *(a1 + 72);
  v26 = *(v25 + 20);
  sub_248DCD114(v25);
  *(v28 + 20) = 0;
  if (v27)
  {
    free(v27);
    *(a1 + 80) = 0;
  }

  *(a1 + 32) = 0;
  sub_248DCA174();
  result = (*(v29 + 120))(a1);
  if (!result)
  {
    v30 = sub_248DCD104();
    result = (*(v31 + 312))(v30, v26);
    if (!result)
    {
      *(a1 + 112) = v26;
      *(a1 + 120) = v26;
      v32 = sub_248DCD104();
      (*(v33 + 472))(v32, 1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_248DD8058(uint64_t a1)
{
  sub_248DC7A7C();
  v3 = (*(v2 + 64))() << 9;
  v4 = *(a1 + 32);
  if (!v4)
  {
    sub_248DCA174();
    v10 = (*(v9 + 80))(a1);
    sub_248DCA174();
    v12 = (*(v11 + 88))(a1);
    if (!v12)
    {
      goto LABEL_26;
    }

    v13 = *(a1 + 72);
    v14 = v12;
    v15 = v13 + 60;
    while (1)
    {
      v16 = *(v15 + 4 * v14);
      if (v16)
      {
        if (v16 != -1)
        {
LABEL_25:
          v10 += v3 * v14;
          goto LABEL_26;
        }

        *(v15 + 4 * v14) = 0;
        *(v13 + 12) |= 1u;
      }

      if (!--v14)
      {
        goto LABEL_26;
      }
    }
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = (v4 - 1);
    sub_248DCA174();
    v8 = v5 + (*(v7 + 80))(a1) * v6;
    v4 = *(a1 + 32);
  }

  else
  {
    v8 = 0;
  }

  if (v4 == 1)
  {
    v17 = (*(a1 + 72) + 20);
  }

  else
  {
    v18 = 0;
    if (v4)
    {
      v19 = *(a1 + 80);
      if (v19)
      {
        v20 = (v4 - 2);
        sub_248DCA174();
        v18 = v19 + (*(v21 + 80))(a1) * v20;
      }
    }

    v17 = (v18 + 12);
  }

  v22 = *v17;
  sub_248DCA174();
  v10 = (*(v23 + 80))(a1) + v22;
  sub_248DCA174();
  v25 = (*(v24 + 96))(a1);
  if (v25)
  {
    v14 = v25;
    v26 = v8 + 52;
    do
    {
      v27 = *(v26 + 4 * v14);
      if (v27)
      {
        if (v27 != -1)
        {
          goto LABEL_25;
        }

        *(v26 + 4 * v14) = 0;
        *(v8 + 8) |= 1u;
      }

      --v14;
    }

    while (v14);
  }

LABEL_26:
  sub_248DCA174();
  result = (*(v28 + 120))(a1);
  if (!result)
  {
    v30 = sub_248DCD104();
    result = (*(v31 + 312))(v30, v10);
    if (!result)
    {
      *(a1 + 112) = v10;
      *(a1 + 120) = v10;
      v32 = sub_248DCD104();
      (*(v33 + 472))(v32, 1);
      return 0;
    }
  }

  return result;
}

const __CFDictionary *sub_248DD82EC(uint64_t a1)
{
  v2 = (*(**(a1 + 176) + 192))(*(a1 + 176));
  if (v2)
  {
    v3 = *MEMORY[0x277CBECE8];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v2);
    if (MutableCopy)
    {
      v5 = MutableCopy;
      v6 = CFStringCreateWithFormat(v3, 0, @"sectors %qd-%qd", *(a1 + 160), *(a1 + 160) + *(a1 + 168) - 1);
      if (v6)
      {
        v7 = v6;
        CFDictionarySetValue(v5, @"sector-range", v6);
        Copy = CFDictionaryCreateCopy(v3, v5);
        CFRelease(v7);
      }

      else
      {
        Copy = CFDictionaryCreateCopy(v3, v5);
      }

      CFRelease(v2);
      v2 = Copy;
    }

    else
    {
      v5 = v2;
    }

    CFRelease(v5);
  }

  return v2;
}

uint64_t sub_248DD83FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v28 = 0;
  pthread_rwlock_wrlock((a1 + 160));
  if (!a5)
  {
LABEL_33:
    v13 = 0;
    v17 = 22;
    goto LABEL_30;
  }

  sub_248DCA174();
  if ((*(v10 + 296))(a1))
  {
    v11 = *(a1 + 360);
    if (v11 < a2 || a3 + a2 > v11)
    {
      goto LABEL_33;
    }

    v21 = a4;
    v13 = 0;
    while (a3)
    {
      v27 = 0;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      sub_248DAACE4(a1, a2, &v26, &v27, &v25, &v24, &v23, &v22, 0);
      if (v24 - (a2 - v25) >= a3)
      {
        v14 = a3;
      }

      else
      {
        v14 = v24 - (a2 - v25);
      }

      v15 = 1;
      if (v27 >= -2147483639)
      {
        switch(v27)
        {
          case -1:
            v15 = 999;
            break;
          case 0:
          case 2:
            break;
          case 1:
            sub_248DCA174();
            v19 = *(*(v18 + 296))(a1);
            v15 = (*(v19 + 336))();
            break;
          default:
            if (v27 == 2147483646)
            {
              v15 = 1;
            }

            else
            {
              v15 = 108;
            }

            break;
        }
      }

      a3 -= v14;
      v13 += v14;
      a2 += v14;
      a5 += v14 << 9;
      if (v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = v14 == 0;
      }

      if (v16)
      {
        v17 = 999;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        goto LABEL_29;
      }
    }

    v17 = 0;
LABEL_29:
    a4 = v21;
  }

  else
  {
    v13 = 0;
    v17 = 999;
  }

LABEL_30:
  if (a4)
  {
    *a4 = v13;
  }

  pthread_rwlock_unlock((a1 + 160));
  return v17;
}

uint64_t sub_248DD8640(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  *(a1 + 912) = 1;
  *(a1 + 916) = 0;
  v4 = malloc_type_calloc(8uLL, 1uLL, 0x80040B8603338uLL);
  *(a1 + 928) = v4;
  if (!v4)
  {
    return 12;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *(a1 + 936) = Mutable;
  if (!Mutable)
  {
    return 12;
  }

  v16 = 0;
  bzero(pStr, 0x100uLL);
  v7 = (*(*a2 + 120))(a2, 1651272547, 0, &v16);
  **(a1 + 928) = v16;
  if (v7)
  {
    return v7;
  }

  v8 = (*(*a2 + 320))(a2);
  (*(*a2 + 248))(a2, v16);
  if (!v8)
  {
    v9 = CFStringCreateWithPascalString(v5, pStr, 0);
    if (v9)
    {
      v10 = v9;
      CFArrayAppendValue(*(a1 + 936), v9);
    }

    else
    {
      v14 = DIGetBundleRef();
      v15 = sub_248DD4D90(v14, @"restricted segment %d", @"restricted segment %d");
      v10 = CFStringCreateWithFormat(v5, 0, v15, *(a1 + 448));
      CFRelease(v15);
      CFArrayAppendValue(*(a1 + 936), v10);
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    CFRelease(v10);
LABEL_11:
    nullsub_4();
    v11 = *v16;
    v12 = sub_248DD4EEC(v16);
    if (sub_248DA7058(v11, v12))
    {
      return 108;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_248DD88B0(uint64_t a1, _BYTE *a2, uint64_t a3, int a4)
{
  v14 = 0;
  if (!a2)
  {
    return 4294967246;
  }

  v13 = 0;
  *a2 = 0;
  result = (*(*a1 + 120))(a1, 1398034979, a3, &v14);
  if (!result)
  {
    if (!v14)
    {
      return 4294967104;
    }

    result = (*(*a1 + 160))(a1, v14, &v13);
    if (!result)
    {
      if (a4 >= 1 && **v14 >= a4)
      {
        v8 = (*v14 + 2);
        if (a4 == 1)
        {
          v9 = 0;
        }

        else
        {
          v9 = 0;
          LOWORD(v10) = 1;
          do
          {
            v11 = *v8 + 1;
            v8 += v11;
            v9 += v11;
            v10 = (v10 + 1);
          }

          while (v10 < a4);
        }

        v12 = *v8;
        if (v9 + v12 >= v13)
        {
          return 4294967106;
        }

        memmove(a2, v8, v12 + 1);
      }

      return 0;
    }
  }

  return result;
}

const __CFDictionary *sub_248DD89F8(uint64_t a1, uint64_t a2, const unsigned __int8 *a3)
{
  if (!*(a1 + 104))
  {
    return 0;
  }

  v4 = sub_248DA6784(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Count = CFArrayGetCount(v4);
  v7 = CFStringCreateWithPascalString(*MEMORY[0x277CBECE8], a3, 0);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (Count < 1)
  {
LABEL_11:
    v11 = 0;
  }

  else
  {
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
      if (ValueAtIndex)
      {
        v11 = ValueAtIndex;
        Value = CFDictionaryGetValue(ValueAtIndex, @"Name");
        if (Value)
        {
          v13 = Value;
          v14 = CFGetTypeID(Value);
          if (v14 == CFStringGetTypeID() && CFStringCompare(v13, v8, 0) == kCFCompareEqualTo)
          {
            break;
          }
        }
      }

      if (Count == ++v9)
      {
        goto LABEL_11;
      }
    }
  }

  CFRelease(v8);
  return v11;
}

uint64_t sub_248DD8AF0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = 4294967246;
  if (a2)
  {
    if (a3)
    {
      *a3 = sub_248DD4EEC(a2);
      return sub_248DD4D98();
    }
  }

  return result;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}