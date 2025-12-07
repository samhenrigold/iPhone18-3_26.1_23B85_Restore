uint64_t sub_8F8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, int *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = DerivedStorage;
  v15 = *a2;
  v16 = 2003332927;
  if (*a2 <= 1819173228)
  {
    if (v15 > 1668641651)
    {
      if (v15 <= 1735354733)
      {
        if (v15 == 1668641652)
        {
          *a6 = 12;
          if (a5 <= 0xB)
          {
            v16 = 561211770;
            sub_C378();
          }

          else
          {
            v16 = 0;
            a7[2] = 0;
            *a7 = *"tppawwar";
          }

          return v16;
        }

        if (v15 == 1684236338)
        {
          if (a5 <= 7)
          {
            v16 = 561211770;
            sub_C3A0();
            return v16;
          }

          v16 = 0;
          *a7 = 0x200000001;
          v19 = 8;
          goto LABEL_151;
        }

        v17 = 1684434036;
      }

      else
      {
        if (v15 > 1818850925)
        {
          if (v15 == 1818850926)
          {
            *a6 = 4;
            if (a5 < 4)
            {
              return 561211770;
            }

            v16 = 0;
            v20 = *(DerivedStorage + 84) == 0;
            goto LABEL_107;
          }

          if (v15 != 1819107691)
          {
            return v16;
          }

          *a6 = 8;
          if (a5 < 8)
          {
            return 561211770;
          }

          v31 = @"Apple, Inc.";
          goto LABEL_74;
        }

        if (v15 == 1735354734)
        {
          *a6 = 4;
          if (a5 < 4)
          {
            return 561211770;
          }

          v16 = 0;
          v20 = *(DerivedStorage + 80) > 0;
          goto LABEL_107;
        }

        v17 = 1751737454;
      }

      if (v15 != v17)
      {
        return v16;
      }

      goto LABEL_59;
    }

    if (v15 <= 1668047218)
    {
      switch(v15)
      {
        case 1634429294:
          *a6 = 4;
          if (a5 < 4)
          {
            return 0;
          }

          v16 = 0;
          v20 = *DerivedStorage;
          break;
        case 1634758772:
          *a6 = 4;
          if (a5 < 4)
          {
            return 561211770;
          }

          v16 = 0;
          v20 = *(DerivedStorage + 44);
          break;
        case 1650682995:
          *a6 = 4;
          if (a5 < 4)
          {
            return 561211770;
          }

          v16 = 0;
          v20 = 1634689642;
          break;
        default:
          return v16;
      }

LABEL_107:
      *a7 = v20;
      return v16;
    }

    if (v15 == 1668047219)
    {
      *a6 = 4;
      if (a5 < 4)
      {
        return 561211770;
      }

      v16 = 0;
      v20 = 1633969526;
      goto LABEL_107;
    }

    if (v15 == 1668049764)
    {
      goto LABEL_59;
    }

    if (v15 != 1668575852)
    {
      return v16;
    }

    v21 = a5 >> 2;
    v22 = a2[1];
    switch(v22)
    {
      case 1869968496:
        goto LABEL_35;
      case 1768845428:
        v21 = 0;
        break;
      case 1735159650:
LABEL_35:
        v24 = *(DerivedStorage + 64);
        v23 = *(DerivedStorage + 72);
        v25 = v24 != 0;
        if (v23)
        {
          ++v25;
        }

        if (v21 >= v25)
        {
          v21 = v25;
        }

        if (!v21)
        {
          break;
        }

        if (!v24)
        {
          v26 = 0;
LABEL_148:
          if (v23)
          {
            a7[v26] = sub_1DF8(v23);
          }

          break;
        }

        *a7 = sub_1DF8(*(v14 + 64));
        if (v21 != 1)
        {
          v23 = *(v14 + 72);
          v26 = 1;
          goto LABEL_148;
        }

        break;
    }

    v16 = 0;
    v19 = 4 * v21;
    goto LABEL_151;
  }

  if (v15 > 1935763059)
  {
    if (v15 > 1937007733)
    {
      if (v15 > 1953653101)
      {
        if (v15 == 1953653102)
        {
          *a6 = 4;
          if (a5 < 4)
          {
            return 561211770;
          }

          v16 = 0;
          v20 = *(DerivedStorage + 40);
          goto LABEL_107;
        }

        v27 = 1969841184;
LABEL_71:
        if (v15 != v27)
        {
          return v16;
        }

        *a6 = 8;
        if (a5 < 8)
        {
          return 561211770;
        }

        v31 = *(DerivedStorage + 24);
        if (!v31)
        {
LABEL_75:
          v16 = 0;
          *a7 = v31;
          return v16;
        }

LABEL_74:
        v31 = CFRetain(v31);
        goto LABEL_75;
      }

      if (v15 == 1937007734)
      {
        *a6 = 4;
        if (a5 < 4)
        {
          return 561211770;
        }

        v16 = 0;
        v20 = 1;
        goto LABEL_107;
      }

      if (v15 != 1937009955)
      {
        return v16;
      }

      v18 = a2[1];
      if (v18 != 1869968496)
      {
        if (v18 == 1768845428)
        {
          goto LABEL_124;
        }

        if (v18 != 1735159650)
        {
          v19 = a5 & 0xFFFFFFFC;
          goto LABEL_141;
        }
      }

      if (a5 >= 4)
      {
        *a7 = sub_1DF8(*(DerivedStorage + 56));
        v19 = 4;
LABEL_141:
        v16 = 0;
        goto LABEL_151;
      }

LABEL_124:
      v19 = 0;
      goto LABEL_141;
    }

    if (v15 != 1935763060 && v15 != 1936092276)
    {
      if (v15 == 1936879204)
      {
        v28 = *(*(DerivedStorage + 48) + 44);
        v29 = 20 * v28 + 12;
        if (v29 > a5)
        {
          v16 = 561211770;
          sub_C38C();
        }

        else
        {
          bzero(a7, (20 * v28 + 12));
          v16 = 0;
          if (v28 == 1)
          {
            v30 = 6553601;
          }

          else
          {
            v30 = 6619138;
          }

          *a7 = v30;
          *a6 = v29;
        }
      }

      return v16;
    }

LABEL_59:
    *a6 = 4;
    if (a5 >= 4)
    {
      v16 = 0;
      *a7 = 0;
      return v16;
    }

    return 561211770;
  }

  if (v15 > 1853059618)
  {
    if (v15 <= 1870098019)
    {
      if (v15 == 1853059619)
      {
        v16 = 0;
        *a6 = 0;
        return v16;
      }

      if (v15 != 1853059700)
      {
        return v16;
      }

      *a6 = 8;
      if (a5 >= 8)
      {
        v16 = 0;
        *a7 = *(*(DerivedStorage + 48) + 16);
        return v16;
      }

      return 561211770;
    }

    if (v15 != 1870098020)
    {
      if (v15 != 1919512167)
      {
        return v16;
      }

      *a6 = 4;
      if (a5 < 4)
      {
        return 561211770;
      }

      v16 = 0;
      v20 = 11025;
      goto LABEL_107;
    }

    LODWORD(v32) = a5 >> 2;
    v33 = a2[1];
    if (v33 == 1869968496)
    {
      if (*(DerivedStorage + 64))
      {
        v42 = 2;
      }

      else
      {
        v42 = 1;
      }

      if (*(DerivedStorage + 72))
      {
        ++v42;
      }

      if (v32 >= v42)
      {
        v35 = v42;
      }

      else
      {
        v35 = a5 >> 2;
      }

      if (a5 >= 4)
      {
        *a7 = sub_1DF8(*(DerivedStorage + 56));
        if (v35 >= 2)
        {
          v43 = *(v14 + 64);
          if (v43)
          {
            a7[1] = sub_1DF8(v43);
            v44 = 2;
            LODWORD(v32) = 2;
            if (v35 == 2)
            {
              goto LABEL_139;
            }
          }

          else
          {
            v44 = 1;
          }

          v45 = *(v14 + 72);
          if (v45)
          {
            a7[v44] = sub_1DF8(v45);
          }

          goto LABEL_159;
        }

        goto LABEL_146;
      }
    }

    else if (v33 != 1768845428)
    {
      if (v33 != 1735159650)
      {
        goto LABEL_139;
      }

      if (*(DerivedStorage + 64))
      {
        v34 = 2;
      }

      else
      {
        v34 = 1;
      }

      if (*(DerivedStorage + 72))
      {
        ++v34;
      }

      v35 = v32 >= v34 ? v34 : a5 >> 2;
      if (a5 >= 4)
      {
        *a7 = sub_1DF8(*(DerivedStorage + 56));
        if (v35 >= 2)
        {
          v36 = *(v14 + 64);
          if (!v36)
          {
            v32 = 1;
            goto LABEL_157;
          }

          a7[1] = sub_1DF8(v36);
          v32 = 2;
          if (v35 != 2)
          {
LABEL_157:
            v46 = *(v14 + 72);
            if (v46)
            {
              a7[v32] = sub_1DF8(v46);
            }

LABEL_159:
            LODWORD(v32) = v35;
          }

LABEL_139:
          v16 = 0;
          v19 = 4 * v32;
LABEL_151:
          *a6 = v19;
          return v16;
        }

LABEL_146:
        LODWORD(v32) = 1;
        goto LABEL_139;
      }
    }

    LODWORD(v32) = 0;
    goto LABEL_139;
  }

  if (v15 == 1819173229)
  {
    v40 = *(DerivedStorage + 32);
    if (!v40 || (v41 = CFRetain(v40)) == 0)
    {
      v41 = CFRetain(@"No Name Endpoint");
    }

    *a6 = 8;
    if (a5 < 8)
    {
      v16 = 561211770;
    }

    else
    {
      v16 = 0;
      *a7 = CFRetain(v41);
    }

    if (v41)
    {
      CFRelease(v41);
    }

    return v16;
  }

  if (v15 != 1819569763)
  {
    v27 = 1836411236;
    goto LABEL_71;
  }

  v37 = *(DerivedStorage + 56);
  v38 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v38)
  {
    return 4294954514;
  }

  return v38(v37, a2, a3, a4, a5, a6, a7);
}

BOOL sub_117C(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 <= 1819173228)
  {
    if (v3 <= 1668641651)
    {
      if (v3 > 1668047218)
      {
        v5 = v3 == 1668047219 || v3 == 1668049764;
        v6 = 1668575852;
      }

      else
      {
        v5 = v3 == 1634429294 || v3 == 1634758772;
        v6 = 1650682995;
      }

      if (v5 || v3 == v6)
      {
        return 1;
      }
    }

    else
    {
      if (v3 > 1735354733)
      {
        if (v3 > 1818850925)
        {
          if (v3 == 1818850926)
          {
            return 1;
          }

          v4 = 1819107691;
        }

        else
        {
          if (v3 == 1735354734)
          {
            return 1;
          }

          v4 = 1751737454;
        }

        goto LABEL_57;
      }

      if (v3 == 1668641652)
      {
        return 1;
      }

      if (v3 == 1684236338 || v3 == 1684434036)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    if (v3 <= 1935763059)
    {
      if (v3 > 1853059618)
      {
        if (v3 <= 1870098019)
        {
          if (v3 != 1853059619)
          {
            v4 = 1853059700;
            goto LABEL_57;
          }

          return 1;
        }

        if (v3 == 1870098020)
        {
          return 1;
        }

        v4 = 1919512167;
LABEL_57:
        if (v3 != v4)
        {
          return result;
        }

        return 1;
      }

      if (v3 == 1819173229)
      {
        return 1;
      }

      if (v3 != 1819569763)
      {
        v4 = 1836411236;
        goto LABEL_57;
      }

      goto LABEL_45;
    }

    if (v3 > 1937007733)
    {
      if (v3 > 1953653101)
      {
        if (v3 == 1969841184)
        {
          return 1;
        }

        v4 = 1953653102;
      }

      else
      {
        if (v3 == 1937007734)
        {
          return 1;
        }

        v4 = 1937009955;
      }

      goto LABEL_57;
    }

    if (v3 == 1935763060 || v3 == 1936092276 || v3 == 1936879204)
    {
LABEL_45:
      v10 = a2[1];
      return v10 == 1768845428 || v10 == 1869968496;
    }
  }

  return result;
}

uint64_t sub_13D4(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v22 = 0;
  v21 = 0;
  cf = 0;
  FigHALAudioDeviceGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v18 = v8;
    sub_C164(v8);
    goto LABEL_17;
  }

  v9 = FigHALAudioObjectMapperAddMapping();
  if (v9)
  {
    v18 = v9;
    sub_C18C(v9);
    goto LABEL_17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = a3;
  *(DerivedStorage + 16) = a2;
  *DerivedStorage = v21;
  *(DerivedStorage + 40) = 1634300528;
  if (qword_18238 != -1)
  {
    sub_C1B4();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(DerivedStorage + 48) = Instance;
  }

  else if ((sub_C1DC(&v23) & 1) == 0)
  {
    v18 = v23;
    goto LABEL_17;
  }

  *(DerivedStorage + 24) = CFRetain(@"ap:ha:nd:of:fd:ev-screen");
  *(DerivedStorage + 44) = 1885433953;
  *(DerivedStorage + 32) = CFRetain(@"AirPlayHandoffDevice");
  v12 = *(DerivedStorage + 48);
  v23 = 0;
  DescriptionArray = APAudioFormatCreateDescriptionArray();
  if (DescriptionArray)
  {
    v18 = DescriptionArray;
    sub_C27C(DescriptionArray, &v23);
  }

  else
  {
    *(v12 + 64) = v23;
    if (dword_18000 <= 50 && (dword_18000 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_18000, "OSStatus APHALHandoffAudioDeviceCreate(CFAllocatorRef, FigHALAudioObjectMapper, AudioServerPlugInHostRef, FigHALAudioDeviceRef *)", 33554482, "[%s] handoffDevice = %p (objectID = %d, deviceObjectID = %d)\n", "APHALHandoffAudioDeviceCreate", v22, *DerivedStorage, v21);
    }

    v14 = sub_24D8(a1, a2, v21, a3, *(DerivedStorage + 48), (DerivedStorage + 56));
    if (v14)
    {
      v18 = v14;
      sub_C2D8(v14);
    }

    else
    {
      v15 = sub_B3E4(a1, &cf);
      if (v15)
      {
        v18 = v15;
        sub_C300(v15);
      }

      else
      {
        v16 = sub_B444(a1, a2, a3, v21, cf, (DerivedStorage + 64));
        if (v16)
        {
          v18 = v16;
          sub_C328(v16);
        }

        else
        {
          v17 = sub_B530(a1, a2, a3, v21, cf, (DerivedStorage + 72));
          v18 = v17;
          if (v17)
          {
            sub_C350(v17);
          }

          else
          {
            *a4 = v22;
            v22 = 0;
          }
        }
      }
    }
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v18;
}

void sub_16A0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[3];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[3] = 0;
  }

  v3 = DerivedStorage[4];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[4] = 0;
  }

  v4 = DerivedStorage[7];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[7] = 0;
  }

  v5 = DerivedStorage[6];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[6] = 0;
  }

  v6 = DerivedStorage[8];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[8] = 0;
  }

  v7 = DerivedStorage[9];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[9] = 0;
  }
}

uint64_t sub_17A4(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 0;
  v5 = *a2;
  if (*a2 <= 1819173228)
  {
    if (v5 > 1668641651)
    {
      if (v5 == 1819107691)
      {
        v9 = 8;
      }

      else
      {
        v9 = 0;
      }

      if (v5 == 1818850926)
      {
        v10 = 4;
      }

      else
      {
        v10 = v9;
      }

      if (v5 == 1751737454)
      {
        v11 = 4;
      }

      else
      {
        v11 = 0;
      }

      if (v5 == 1735354734)
      {
        v12 = 4;
      }

      else
      {
        v12 = v11;
      }

      if (v5 <= 1818850925)
      {
        v13 = v12;
      }

      else
      {
        v13 = v10;
      }

      if (v5 == 1684434036)
      {
        v14 = 4;
      }

      else
      {
        v14 = 0;
      }

      if (v5 == 1684236338)
      {
        v15 = 8;
      }

      else
      {
        v15 = v14;
      }

      if (v5 == 1668641652)
      {
        v16 = 12;
      }

      else
      {
        v16 = v15;
      }

      if (v5 <= 1735354733)
      {
        return v16;
      }

      else
      {
        return v13;
      }
    }

    if (v5 > 1668047218)
    {
      if (v5 != 1668047219 && v5 != 1668049764)
      {
        if (v5 == 1668575852)
        {
          v19 = vmovn_s64(vtstq_s64(DerivedStorage[4], DerivedStorage[4]));
          return 4 * ((v19.i8[4] & 1u) - v19.i32[0]);
        }

        return result;
      }
    }

    else if (v5 != 1634429294 && v5 != 1634758772 && v5 != 1650682995)
    {
      return result;
    }

    return 4;
  }

  if (v5 > 1935763059)
  {
    if (v5 <= 1937007733)
    {
      if (v5 != 1935763060 && v5 != 1936092276)
      {
        if (v5 == 1936879204)
        {
          return (20 * *(DerivedStorage[3].i64[0] + 44) + 12);
        }

        return result;
      }
    }

    else
    {
      if (v5 > 1953653101)
      {
        v6 = 1953653102;
        v7 = 4;
        v8 = 1969841184;
LABEL_67:
        if (v5 == v8)
        {
          v21 = 8;
        }

        else
        {
          v21 = 0;
        }

LABEL_70:
        if (v5 == v6)
        {
          return v7;
        }

        else
        {
          return v21;
        }
      }

      if (v5 != 1937007734)
      {
        if (v5 != 1937009955)
        {
          return result;
        }

        v17 = a2[1];
        v18 = v17 == 1869968496 || v17 == 1735159650;
        goto LABEL_63;
      }
    }

    return 4;
  }

  if (v5 <= 1853059618)
  {
    v6 = 1819173229;
    v7 = 8;
    if (v5 == 1836411236)
    {
      v20 = 8;
    }

    else
    {
      v20 = 0;
    }

    if (v5 == 1819569763)
    {
      v21 = 4;
    }

    else
    {
      v21 = v20;
    }

    goto LABEL_70;
  }

  if (v5 <= 1870098019)
  {
    v6 = 1853059619;
    v7 = 32;
    v8 = 1853059700;
    goto LABEL_67;
  }

  if (v5 != 1870098020)
  {
    v18 = v5 == 1919512167;
LABEL_63:
    if (v18)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }

  v22 = a2[1];
  if (v22 != 1869968496 && v22 != 1735159650)
  {
    return 0;
  }

  v23 = vmovn_s64(vtstq_s64(DerivedStorage[4], DerivedStorage[4]));
  return 4 * ((v23.i8[4] & 1u) - v23.i32[0]) + 4;
}

uint64_t sub_1B10(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, double *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v32 = 0;
  v33 = 0;
  if (*a2 != 1853059700)
  {
    v23 = 2003332927;
    goto LABEL_22;
  }

  v10 = DerivedStorage;
  memset(__s2, 0, 40);
  v11 = *(DerivedStorage + 48);
  v12 = *(v11 + 32);
  v28 = *(v11 + 16);
  v29 = v12;
  v30 = *(v11 + 48);
  if (a5 != 8)
  {
    v23 = 561211770;
LABEL_21:
    APSLogErrorAt();
    goto LABEL_22;
  }

  v13 = *a6;
  if (*a6 == *&v28)
  {
LABEL_19:
    v23 = 0;
    goto LABEL_22;
  }

  CMBaseObject = FigHALAudioStreamGetCMBaseObject();
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v15)
  {
    v23 = 4294954514;
    goto LABEL_21;
  }

  v16 = v15(CMBaseObject, kFigHALAudioStreamProperty_SupportedPCMFormats, kCFAllocatorDefault, &v32);
  if (v16)
  {
    v23 = v16;
    goto LABEL_21;
  }

  v17 = v32;
  Length = CFDataGetLength(v32);
  if (Length < 0x70)
  {
    v23 = 4294967246;
    v27 = 792;
LABEL_28:
    sub_C3B4(v27, v23);
  }

  else
  {
    v19 = Length / 0x38;
    BytePtr = CFDataGetBytePtr(v17);
    v21 = 0;
    do
    {
      if (*(BytePtr + 5) <= v13 && *(BytePtr + 6) >= v13)
      {
        v21 = BytePtr;
        if (*(BytePtr + 7) == HIDWORD(v29))
        {
          v21 = BytePtr;
          if (*(BytePtr + 8) >= v30)
          {
            v21 = BytePtr;
            goto LABEL_14;
          }
        }
      }

      BytePtr += 56;
      --v19;
    }

    while (v19);
    if (!v21)
    {
      v23 = 1970171760;
      v27 = 807;
      goto LABEL_28;
    }

LABEL_14:
    *__s2 = v13;
    v22 = *(v21 + 24);
    *(__s2 + 8) = *(v21 + 8);
    *(&__s2[1] + 8) = v22;
    if (!memcmp(&v28, __s2, 0x28uLL))
    {
      goto LABEL_19;
    }

    sub_1DF8(*(v10 + 56));
    v23 = FigHALAudioConfigChangeCreateRecord();
    if (v23)
    {
      APSLogErrorAt();
    }

    else
    {
      v24 = v33;
      v25 = __s2[1];
      *(v33 + 16) = __s2[0];
      *(v24 + 32) = v25;
      *(v24 + 48) = *&__s2[2];
      FigHALAudioConfigChangeSendRequest();
      v33 = 0;
    }
  }

LABEL_22:
  FigHALAudioConfigChangeDisposeRecord();
  if (v32)
  {
    CFRelease(v32);
  }

  return v23;
}

uint64_t sub_1DF8(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

CFTypeRef sub_1E90(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 24);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t sub_1EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 != 1718579821)
  {
    fig_log_get_emitter();
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
    goto LABEL_8;
  }

  v6 = *(DerivedStorage + 56);
  v7 = *(*(CMBaseObjectGetVTable() + 24) + 16);
  if (!v7)
  {
    v8 = 4294954514;
    goto LABEL_7;
  }

  v8 = v7(v6, 1718579821, a3);
  if (v8)
  {
LABEL_7:
    APSLogErrorAt();
    goto LABEL_8;
  }

  FigHALAudioPropertySendChanges();
LABEL_8:
  FigHALAudioConfigChangeDisposeRecord();
  return v8;
}

uint64_t sub_203C(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  if (*(DerivedStorage + 84))
  {
    if (sub_C404(&v14))
    {
      return 0;
    }

    v3 = v14;
  }

  else
  {
    if (*(DerivedStorage + 80))
    {
      return 0;
    }

    v5 = *(DerivedStorage + 48);
    v6 = *(v5 + 32);
    *(v5 + 104) = *(v5 + 16);
    *(v5 + 120) = v6;
    *(v5 + 136) = *(v5 + 48);
    v7 = *(DerivedStorage + 48);
    v8 = *(DerivedStorage + 56);
    v9 = *(v7 + 128);
    v10 = *(v7 + 104);
    *(v7 + 172) = 0;
    *(v7 + 176) = v10;
    *(v7 + 180) = v9;
    *(v7 + 200) = 0;
    v11 = *(*(CMBaseObjectGetVTable() + 24) + 32);
    if (v11)
    {
      v3 = v11(v8);
      if (!v3)
      {
        *(*(v2 + 48) + 184) = 1;
        *(v2 + 80) = 1;
        return v3;
      }
    }

    else
    {
      v3 = 4294954514;
    }

    APSLogErrorAt();
  }

  v12 = *(v2 + 56);
  v13 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  if (v13)
  {
    v13(v12);
  }

  return v3;
}

uint64_t sub_21C8(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 80) >= 1)
  {
    v2 = DerivedStorage;
    *(DerivedStorage + 80) = 0;
    v3 = *(DerivedStorage + 56);
    v4 = *(*(CMBaseObjectGetVTable() + 24) + 40);
    if (v4)
    {
      v4(v3);
    }

    *(*(v2 + 48) + 184) = 0;
  }

  return 0;
}

uint64_t sub_226C(uint64_t a1, double *a2, uint64_t *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(*(DerivedStorage + 48) + 184))
  {
    v8 = DerivedStorage;
    v9 = mach_absolute_time();
    v10 = *(v8 + 48);
    v11 = *(v10 + 176);
    if (*(v10 + 172) != v11)
    {
      *(v10 + 172) = v11;
      v12 = UpTicksPerSecond();
      v10 = *(v8 + 48);
      *(v10 + 192) = (11025 * v12 / *(v10 + 172));
    }

    v13 = *(v10 + 200);
    if (!v13)
    {
      v13 = *(v10 + 192) + v9;
      *(v10 + 200) = v13;
      *(v10 + 208) = v9;
      *(v10 + 216) = 0;
    }

    if (v9 >= v13)
    {
      *(v10 + 200) = *(v10 + 192) + v13;
      *(v10 + 208) = v13;
      v14 = *(v10 + 216) + 11025.0;
      *(v10 + 216) = v14;
    }

    else
    {
      v14 = *(v10 + 216);
      v13 = *(v10 + 208);
    }

    result = 0;
    *a2 = v14;
    *a3 = v13;
    *a4 = 0;
  }

  else
  {
    sub_C48C();
    return 1937010544;
  }

  return result;
}

uint64_t sub_2360(uint64_t a1, int a2, BOOL *a3, BOOL *a4)
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 48) + 184))
  {
    result = 0;
    *a3 = a2 == 1919513701;
    *a4 = a2 == 1919513701;
  }

  else
  {
    sub_C4A0();
    return 1937010544;
  }

  return result;
}

uint64_t sub_23CC(uint64_t a1)
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 48) + 184))
  {
    return 0;
  }

  sub_C4B4();
  return 1937010544;
}

uint64_t sub_2404(uint64_t a1)
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 48) + 184))
  {
    return 0;
  }

  sub_C4C8();
  return 1937010544;
}

void sub_243C(id a1)
{
  qword_18248 = 0;
  unk_18250 = "APHALHandoffAudioSharedState";
  qword_18258 = sub_249C;
  unk_18260 = 0;
  qword_18268 = sub_24C0;
  unk_18270 = 0u;
  unk_18280 = 0u;
  qword_18240 = _CFRuntimeRegisterClass();
}

double sub_249C(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void sub_24C0(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_24D8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, const void *a5, CFTypeRef *a6)
{
  FigHALAudioStreamGetClassID();
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    v15 = v10;
    sub_C4DC(v10);
    return v15;
  }

  v11 = FigHALAudioObjectMapperAddMapping();
  if (v11)
  {
    v15 = v11;
    sub_C504(v11);
    return v15;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 0;
  *(DerivedStorage + 1) = a4;
  DerivedStorage[4] = a3;
  DerivedStorage[5] = 50;
  v13 = CFRetain(a5);
  *(DerivedStorage + 4) = v13;
  *(DerivedStorage + 24) = 1;
  if (CFDataGetLength(v13[8]) < 0x38)
  {
    if ((sub_C52C(&v17) & 1) == 0)
    {
      return v17;
    }
  }

  else
  {
    sub_C5CC(DerivedStorage + 4);
  }

  v14 = 0;
  *a6 = 0;
  if (dword_18070 <= 50)
  {
    if (dword_18070 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return 0;
      }

      v14 = *a6;
    }

    LogPrintF(&dword_18070, "OSStatus APHALHandoffAudioStreamCreate(CFAllocatorRef, FigHALAudioObjectMapper, AudioObjectID, AudioServerPlugInHostRef, APHALHandoffAudioSharedStateRef, FigHALAudioStreamRef *)", 33554482, "inStream %{ptr} APHALHandoffAudioStreamCreate, [streamObjectID %d, ownerDeviceID %d]", v14, *DerivedStorage, DerivedStorage[4]);
    return 0;
  }

  return 0;
}

void sub_2674(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 32);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 32) = 0;
  }
}

uint64_t sub_26F4(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v7 = DerivedStorage;
    if (CFEqual(a2, kFigHALAudioStreamProperty_SupportedPCMFormats))
    {
      v8 = *(*(v7 + 32) + 64);
      if (v8)
      {
        v9 = CFRetain(v8);
      }

      else
      {
        v9 = 0;
      }

      result = 0;
      *a4 = v9;
    }

    else
    {
      return 4294954509;
    }
  }

  else
  {
    sub_C618();
    return 4294954516;
  }

  return result;
}

uint64_t sub_2798(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 <= 1935762291)
  {
    if (v3 > 1870098019)
    {
      v4 = v3 == 1870098020 || v3 == 1885762592;
      v5 = 1885762657;
    }

    else
    {
      v4 = v3 == 1650682995 || v3 == 1668047219;
      v5 = 1819569763;
    }
  }

  else if (v3 <= 1936092512)
  {
    v4 = v3 == 1935762292 || v3 == 1935894638;
    v5 = 1935960434;
  }

  else if (v3 > 1937007733)
  {
    v4 = v3 == 1952805485;
    v5 = 1937007734;
  }

  else
  {
    v4 = v3 == 1936092513;
    v5 = 1936092532;
  }

  if (v4 || v3 == v5)
  {
    return 1;
  }

  return result;
}

uint64_t sub_28BC(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 0;
  v5 = *a2;
  if (*a2 > 1935894637)
  {
    if (v5 <= 1936092531)
    {
      if (v5 == 1935894638 || v5 == 1935960434)
      {
        return 4;
      }

      if (v5 != 1936092513)
      {
        return result;
      }

      return 56 * (CFDataGetLength(*(*(DerivedStorage + 32) + 64)) / 0x38uLL);
    }

    if (v5 != 1936092532)
    {
      if (v5 == 1937007734)
      {
        return 4;
      }

      v7 = 1952805485;
LABEL_21:
      if (v5 != v7)
      {
        return result;
      }

      return 4;
    }

    return 40;
  }

  if (v5 > 1885762591)
  {
    if (v5 != 1885762592)
    {
      if (v5 != 1885762657)
      {
        v7 = 1935762292;
        goto LABEL_21;
      }

      return 56 * (CFDataGetLength(*(*(DerivedStorage + 32) + 64)) / 0x38uLL);
    }

    return 40;
  }

  if (v5 != 1650682995 && v5 != 1668047219)
  {
    v7 = 1819569763;
    goto LABEL_21;
  }

  return 4;
}

uint64_t sub_2A0C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, int *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *a2;
  result = 2003332927;
  if (*a2 <= 1935894637)
  {
    if (v12 <= 1885762591)
    {
      switch(v12)
      {
        case 1650682995:
          *a6 = 4;
          if (a5 >= 4)
          {
            result = 0;
            v14 = 1634689642;
            goto LABEL_37;
          }

          break;
        case 1668047219:
          *a6 = 4;
          if (a5 >= 4)
          {
            result = 0;
            v14 = 1634956402;
            goto LABEL_37;
          }

          break;
        case 1819569763:
          v14 = *(DerivedStorage + 20);
          *a6 = 4;
          if (a5 >= 4)
          {
            result = 0;
LABEL_37:
            *a7 = v14;
            return result;
          }

          break;
        default:
          return result;
      }

      return 561211770;
    }

    if (v12 != 1885762592)
    {
      if (v12 != 1885762657)
      {
        if (v12 != 1935762292)
        {
          return result;
        }

        *a6 = 4;
        if (a5 >= 4)
        {
          result = 0;
          v14 = *(DerivedStorage + 24);
          goto LABEL_37;
        }

        return 561211770;
      }

LABEL_23:
      v15 = 56 * (CFDataGetLength(*(*(DerivedStorage + 32) + 64)) / 0x38uLL);
      *a6 = v15;
      if (v15 <= a5)
      {
        BytePtr = CFDataGetBytePtr(*(*(DerivedStorage + 32) + 64));
        memcpy(a7, BytePtr, v15);
        return 0;
      }

      return 561211770;
    }

LABEL_25:
    *a6 = 40;
    if (a5 >= 0x28)
    {
      result = 0;
      v17 = *(DerivedStorage + 32);
      v18 = *(v17 + 16);
      v19 = *(v17 + 32);
      *(a7 + 4) = *(v17 + 48);
      *a7 = v18;
      *(a7 + 1) = v19;
      return result;
    }

    return 561211770;
  }

  if (v12 > 1936092531)
  {
    if (v12 != 1936092532)
    {
      if (v12 == 1937007734)
      {
        *a6 = 4;
        if (a5 >= 4)
        {
          result = 0;
          v14 = *(DerivedStorage + 16);
          goto LABEL_37;
        }
      }

      else
      {
        if (v12 != 1952805485)
        {
          return result;
        }

        *a6 = 4;
        if (a5 >= 4)
        {
          result = 0;
          v14 = 1936747378;
          goto LABEL_37;
        }
      }

      return 561211770;
    }

    goto LABEL_25;
  }

  switch(v12)
  {
    case 1935894638:
      *a6 = 4;
      if (a5 >= 4)
      {
        result = 0;
        v14 = 1;
        goto LABEL_37;
      }

      return 561211770;
    case 1935960434:
      *a6 = 4;
      if (a5 >= 4)
      {
        result = 0;
        *a7 = 0;
        return result;
      }

      return 561211770;
    case 1936092513:
      goto LABEL_23;
  }

  return result;
}

uint64_t sub_2CD0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int a5, __int128 *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v24 = 0;
  if (dword_18070 <= 40 && (dword_18070 != -1 || _LogCategory_Initialize()))
  {
    sub_C62C(a2, v9, v10);
  }

  v12 = *a2;
  if (*a2 != 1885762592 && v12 != 1936092532)
  {
    if (v12 != 1935762292)
    {
      v15 = 2003332927;
      goto LABEL_22;
    }

    if (a5 == 4)
    {
      v19 = *a6 != 0;
      if (*(DerivedStorage + 24) != v19)
      {
        *(DerivedStorage + 24) = v19;
        FigHALAudioPropertySendChanges();
      }

      goto LABEL_17;
    }

    v15 = 561211770;
LABEL_21:
    APSLogErrorAt();
    goto LABEL_22;
  }

  if (a5 != 40)
  {
    v15 = 561211770;
    goto LABEL_21;
  }

  v14 = a6[1];
  v21 = *a6;
  v22 = v14;
  v23 = *(a6 + 4);
  if (!memcmp(&v21, (*(DerivedStorage + 32) + 16), 0x28uLL))
  {
LABEL_17:
    v15 = 0;
    goto LABEL_22;
  }

  v15 = FigHALAudioConfigChangeCreateRecord();
  if (v15)
  {
    APSLogErrorAt();
  }

  else
  {
    v17 = v23;
    v16 = v24;
    v18 = v22;
    *(v24 + 16) = v21;
    *(v16 + 32) = v18;
    *(v16 + 48) = v17;
    FigHALAudioConfigChangeSendRequest();
    v24 = 0;
  }

LABEL_22:
  FigHALAudioConfigChangeDisposeRecord();
  return v15;
}

uint64_t sub_2EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == 1718579821)
  {
    v9 = DerivedStorage + 32;
    v8 = *(DerivedStorage + 32);
    v10 = *(a3 + 16);
    v11 = *(a3 + 32);
    *(v8 + 48) = *(a3 + 48);
    *(v8 + 16) = v10;
    *(v8 + 32) = v11;
    if (dword_18070 <= 40 && (dword_18070 != -1 || _LogCategory_Initialize()))
    {
      sub_C674(v9, v6, v7);
    }

    FigHALAudioPropertySendChanges();
    v12 = 0;
  }

  else
  {
    fig_log_get_emitter();
    v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
  }

  FigHALAudioConfigChangeDisposeRecord();
  return v12;
}

uint64_t sub_2FC4(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_18070 <= 40 && (dword_18070 != -1 || _LogCategory_Initialize()))
  {
    sub_C6CC();
  }

  if (*(DerivedStorage + 24))
  {
    *(*(DerivedStorage + 32) + 152) = 0;
  }

  return 0;
}

uint64_t sub_3040(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (dword_18070 <= 40 && (dword_18070 != -1 || _LogCategory_Initialize()))
  {
    sub_C708();
  }

  return 0;
}

uint64_t sub_30AC(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_18070 <= 40 && (dword_18070 != -1 || _LogCategory_Initialize()))
  {
    sub_C744();
  }

  v8 = *(DerivedStorage + 32);
  if (*(v8 + 184))
  {
    if (a2 == 1919513701)
    {
      result = 0;
      *(v8 + 152) = *(a4 + 144) + a3;
    }

    else
    {
      sub_C780(&v10);
      return v10;
    }
  }

  else
  {
    sub_C800();
    return 1937010544;
  }

  return result;
}

uint64_t sub_3188(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (a2)
  {
    v7 = *(DerivedStorage + 32);
    v8 = *(v7 + 16);
    v9 = *(v7 + 32);
    *(a2 + 32) = *(v7 + 48);
    *a2 = v8;
    *(a2 + 16) = v9;
  }

  if (dword_18070 <= 40 && (dword_18070 != -1 || _LogCategory_Initialize()))
  {
    sub_C814(v6, v4, v5);
  }

  return 0;
}

uint64_t sub_321C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554472, a4);
}

uint64_t sub_3234(uint64_t a1, uint64_t a2, int a3, const void *a4, uint64_t a5, const void *a6, CFTypeRef *a7)
{
  cf = 0;
  v29 = 0;
  kdebug_trace();
  FigHALAudioStreamGetClassID();
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    v24 = v12;
    sub_C86C(v12);
    goto LABEL_27;
  }

  v13 = FigHALAudioObjectMapperAddMapping();
  if (v13)
  {
    v24 = v13;
    sub_C894(v13);
    goto LABEL_27;
  }

  if (a4)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListeners();
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = DerivedStorage;
  *DerivedStorage = v29;
  *(DerivedStorage + 16) = a3;
  *(DerivedStorage + 8) = a5;
  if (!a4)
  {
    *(DerivedStorage + 24) = 0;
    v16 = DerivedStorage + 32;
LABEL_8:
    *v16 = *&kCMTimeInvalid.value;
    epoch = kCMTimeInvalid.epoch;
    goto LABEL_10;
  }

  v17 = CFRetain(a4);
  *(v15 + 24) = v17;
  v16 = v15 + 32;
  if (!v17)
  {
    goto LABEL_8;
  }

  APSGetFBOPropertyCMTime();
  *v16 = v27;
  epoch = v28;
LABEL_10:
  *(v16 + 16) = epoch;
  *(v15 + 64) = CFRetain(a6);
  *(v15 + 56) = 1;
  *(v15 + 112) = 0;
  APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
  Typed = CFAllocatorAllocateTyped();
  *(v15 + 96) = Typed;
  if (!Typed)
  {
    sub_CACC();
    v24 = 4294954510;
    goto LABEL_27;
  }

  bzero(Typed, 0x800uLL);
  IntWithDefault = APSSettingsGetIntWithDefault();
  *(v15 + 80) = IntWithDefault;
  *(v15 + 81) = 0;
  if (IntWithDefault)
  {
    v21 = CM8021ASClockCreate();
    if (v21)
    {
      v24 = v21;
      sub_C8BC(v21);
      goto LABEL_27;
    }
  }

  if (CFDataGetLength(*(*(v15 + 64) + 64)) < 0x38)
  {
    if ((sub_C8E4(&v27) & 1) == 0)
    {
      v24 = v27;
      goto LABEL_27;
    }
  }

  else
  {
    sub_C97C((v15 + 64));
  }

  if (APSSettingsGetIntWithDefault())
  {
    v22 = IsAppleInternalBuild();
    *(v15 + 72) = v22 != 0;
    if (v22)
    {
      v24 = APRealTimeAudioFileWriterCreate();
      if (dword_180E0 <= 50 && (dword_180E0 != -1 || _LogCategory_Initialize()))
      {
        sub_CA88(v15 + 64, v24, v23);
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
    *(v15 + 72) = 0;
  }

  APSAsyncLoggerGetSharedLogger();
  v25 = cf;
  *a7 = cf;
  cf = 0;
  if (dword_180E0 <= 40)
  {
    if (dword_180E0 != -1)
    {
LABEL_25:
      LogPrintF(&dword_180E0, "OSStatus APHALAudioStreamCreate(CFAllocatorRef, FigHALAudioObjectMapper, AudioObjectID, FigEndpointStreamAudioEngineRef, AudioServerPlugInHostRef, APHALAudioSharedStateRef, FigHALAudioStreamRef *)", 33554472, "APHALAudioStreamCreate - outstream %p, [streamObjectID %d, ownerDeviceID %d, audioEngine %p]", v25, *v15, *(v15 + 16), a4);
      goto LABEL_27;
    }

    if (_LogCategory_Initialize())
    {
      v25 = *a7;
      goto LABEL_25;
    }

LABEL_27:
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v24;
}

void sub_358C(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  if (*(DerivedStorage + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
    v2 = *(DerivedStorage + 24);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 24) = 0;
    }
  }

  v3 = *(DerivedStorage + 64);
  if (*(DerivedStorage + 72))
  {
    APRealTimeAudioFileWriterInvalidate();
    v3 = *(DerivedStorage + 64);
    if (v3[12])
    {
      CFRelease(v3[12]);
      v3 = *(DerivedStorage + 64);
      v3[12] = 0;
    }

    goto LABEL_8;
  }

  if (v3)
  {
LABEL_8:
    CFRelease(v3);
    *(DerivedStorage + 64) = 0;
  }

  if (*(DerivedStorage + 80))
  {
    v4 = *(DerivedStorage + 88);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 88) = 0;
    }
  }

  *(DerivedStorage + 80) = 0;
  if (*(DerivedStorage + 96))
  {
    DefaultAirPlayMallocZoneCFAllocator = APSAllocatorGetDefaultAirPlayMallocZoneCFAllocator();
    CFAllocatorDeallocate(DefaultAirPlayMallocZoneCFAllocator, *(DerivedStorage + 96));
  }

  v7 = *(DerivedStorage + 104);
  v6 = (DerivedStorage + 104);
  if (v7)
  {
    APSAudioStats_TerminateSession();
    if (dword_180E0 <= 50 && (dword_180E0 != -1 || _LogCategory_Initialize()))
    {
      sub_CAF8(v6, v8, v9);
    }

    if (*v6)
    {
      CFRelease(*v6);
      *v6 = 0;
    }
  }
}

uint64_t sub_3728(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v7 = DerivedStorage;
    if (CFEqual(a2, kFigHALAudioStreamProperty_SupportedPCMFormats))
    {
      v8 = *(*(v7 + 64) + 64);
      if (v8)
      {
        v9 = CFRetain(v8);
      }

      else
      {
        v9 = 0;
      }

      result = 0;
      *a4 = v9;
    }

    else
    {
      return 4294954509;
    }
  }

  else
  {
    sub_CB38();
    return 4294954516;
  }

  return result;
}

uint64_t sub_37CC(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 <= 1935762291)
  {
    if (v3 > 1870098019)
    {
      v4 = v3 == 1870098020 || v3 == 1885762592;
      v5 = 1885762657;
    }

    else
    {
      v4 = v3 == 1650682995 || v3 == 1668047219;
      v5 = 1819569763;
    }
  }

  else if (v3 <= 1936092512)
  {
    v4 = v3 == 1935762292 || v3 == 1935894638;
    v5 = 1935960434;
  }

  else if (v3 > 1937007733)
  {
    v4 = v3 == 1952805485;
    v5 = 1937007734;
  }

  else
  {
    v4 = v3 == 1936092513;
    v5 = 1936092532;
  }

  if (v4 || v3 == v5)
  {
    return 1;
  }

  return result;
}

uint64_t sub_38F0(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 0;
  v5 = *a2;
  if (*a2 > 1935894637)
  {
    if (v5 <= 1936092531)
    {
      if (v5 == 1935894638 || v5 == 1935960434)
      {
        return 4;
      }

      if (v5 != 1936092513)
      {
        return result;
      }

      return 56 * (CFDataGetLength(*(*(DerivedStorage + 64) + 64)) / 0x38uLL);
    }

    if (v5 != 1936092532)
    {
      if (v5 == 1937007734)
      {
        return 4;
      }

      v7 = 1952805485;
LABEL_21:
      if (v5 != v7)
      {
        return result;
      }

      return 4;
    }

    return 40;
  }

  if (v5 > 1885762591)
  {
    if (v5 != 1885762592)
    {
      if (v5 != 1885762657)
      {
        v7 = 1935762292;
        goto LABEL_21;
      }

      return 56 * (CFDataGetLength(*(*(DerivedStorage + 64) + 64)) / 0x38uLL);
    }

    return 40;
  }

  if (v5 != 1650682995 && v5 != 1668047219)
  {
    v7 = 1819569763;
    goto LABEL_21;
  }

  return 4;
}

uint64_t sub_3A40(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, int *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *a2;
  result = 2003332927;
  if (*a2 > 1935894637)
  {
    if (v12 <= 1936092531)
    {
      if (v12 == 1935894638)
      {
        *a6 = 4;
        if (a5 < 4)
        {
          return 561211770;
        }

        result = 0;
        v19 = 1;
        goto LABEL_37;
      }

      if (v12 == 1935960434)
      {
        *a6 = 4;
        if (a5 >= 4)
        {
          result = 0;
          *a7 = 0;
          return result;
        }

        return 561211770;
      }

      if (v12 != 1936092513)
      {
        return result;
      }

LABEL_23:
      v20 = 56 * (CFDataGetLength(*(*(DerivedStorage + 64) + 64)) / 0x38uLL);
      *a6 = v20;
      if (v20 <= a5)
      {
        BytePtr = CFDataGetBytePtr(*(*(DerivedStorage + 64) + 64));
        memcpy(a7, BytePtr, v20);
        return 0;
      }

      return 561211770;
    }

    if (v12 != 1936092532)
    {
      if (v12 == 1937007734)
      {
        *a6 = 4;
        if (a5 >= 4)
        {
          result = 0;
          v19 = *(DerivedStorage + 16);
          goto LABEL_37;
        }

        return 561211770;
      }

      if (v12 != 1952805485)
      {
        return result;
      }

      *a6 = 4;
      if (a5 < 4)
      {
        return 561211770;
      }

      result = 0;
      v19 = 1936747378;
LABEL_37:
      *a7 = v19;
      return result;
    }

LABEL_25:
    *a6 = 40;
    if (a5 >= 0x28)
    {
      result = 0;
      v22 = *(DerivedStorage + 64);
      v23 = *(v22 + 16);
      v24 = *(v22 + 32);
      *(a7 + 4) = *(v22 + 48);
      *a7 = v23;
      *(a7 + 1) = v24;
      return result;
    }

    return 561211770;
  }

  if (v12 > 1885762591)
  {
    if (v12 != 1885762592)
    {
      if (v12 != 1885762657)
      {
        if (v12 != 1935762292)
        {
          return result;
        }

        *a6 = 4;
        if (a5 < 4)
        {
          return 561211770;
        }

        result = 0;
        v19 = *(DerivedStorage + 56);
        goto LABEL_37;
      }

      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (v12 == 1650682995)
  {
    *a6 = 4;
    if (a5 < 4)
    {
      return 561211770;
    }

    result = 0;
    v19 = 1634689642;
    goto LABEL_37;
  }

  if (v12 != 1668047219)
  {
    if (v12 != 1819569763)
    {
      return result;
    }

    v14 = *(*(DerivedStorage + 64) + 16);
    v25 = *(DerivedStorage + 32);
    v15 = CMTimeConvertScale(&v26, &v25, v14, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    if ((v26.flags & 0x1D) == 1)
    {
      value = v26.value;
    }

    else
    {
      if (dword_180E0 <= 50)
      {
        if (dword_180E0 != -1 || (v15 = _LogCategory_Initialize(), v15))
        {
          sub_CB4C(v15, v16, v17);
        }
      }

      value = kCMTimeZero.value;
    }

    *a6 = 4;
    if (a5 >= 4)
    {
      result = 0;
      *a7 = value;
      return result;
    }

    return 561211770;
  }

  *a6 = 4;
  if (a5 >= 4)
  {
    result = 0;
    v19 = 1634956402;
    goto LABEL_37;
  }

  return 561211770;
}

uint64_t sub_3D98(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int a5, __int128 *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  if (dword_180E0 <= 40 && (dword_180E0 != -1 || _LogCategory_Initialize()))
  {
    sub_CB7C(a2, v9, v10);
  }

  v12 = *a2;
  if (*a2 != 1885762592 && v12 != 1936092532)
  {
    if (v12 != 1935762292)
    {
      v20 = 2003332927;
      goto LABEL_27;
    }

    if (a5 == 4)
    {
      v19 = *a6 != 0;
      if (*(DerivedStorage + 56) != v19)
      {
        *(DerivedStorage + 56) = v19;
        FigHALAudioPropertySendChanges();
      }

      goto LABEL_19;
    }

    v20 = 561211770;
LABEL_23:
    APSLogErrorAt();
    goto LABEL_27;
  }

  if (a5 != 40)
  {
    v20 = 561211770;
    goto LABEL_23;
  }

  v14 = a6[1];
  __s1 = *a6;
  v24 = v14;
  v25 = *(a6 + 4);
  if (!memcmp(&__s1, (*(DerivedStorage + 64) + 16), 0x28uLL))
  {
LABEL_19:
    v20 = 0;
    goto LABEL_27;
  }

  v15 = FigHALAudioConfigChangeCreateRecord();
  if (v15)
  {
    v20 = v15;
    APSLogErrorAt();
  }

  else
  {
    v17 = v25;
    v16 = v26;
    v18 = v24;
    *(v26 + 16) = __s1;
    *(v16 + 32) = v18;
    *(v16 + 48) = v17;
    if (dword_180E0 <= 50)
    {
      if (dword_180E0 != -1 || (v21 = _LogCategory_Initialize(), v16 = v26, v21))
      {
        LogPrintF(&dword_180E0, "OSStatus stream_SetPropertyData(FigHALAudioObjectRef, const AudioObjectPropertyAddress *, UInt32, const void *, UInt32, const void *)", 33554482, "[%s] newASBD: [%{asbd}] \n", "stream_SetPropertyData", v16 + 16);
      }
    }

    FigHALAudioConfigChangeSendRequest();
    v20 = 0;
    v26 = 0;
  }

LABEL_27:
  FigHALAudioConfigChangeDisposeRecord();
  return v20;
}

uint64_t sub_3FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 24))
  {
    sub_CD20(&v24);
    goto LABEL_31;
  }

  if (a2 == 1818326115)
  {
    memset(&v24, 0, sizeof(v24));
    APSGetFBOPropertyCMTime();
    if (dword_180E0 <= 50 && (dword_180E0 != -1 || _LogCategory_Initialize()))
    {
      time = *(DerivedStorage + 32);
      Seconds = CMTimeGetSeconds(&time);
      time = v24;
      v18 = CMTimeGetSeconds(&time);
      LogPrintF(&dword_180E0, "OSStatus stream_PerformConfigChange(FigHALAudioDeviceRef, UInt64, void *)", 33554482, "[%{ptr}] latency changed from %1.3f to %1.3f\n", a1, *&Seconds, *&v18);
    }

    *(DerivedStorage + 32) = v24;
    FigHALAudioPropertySendChanges();
    goto LABEL_25;
  }

  if (a2 != 1718579821)
  {
    fig_log_get_emitter();
    value_low = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
    goto LABEL_26;
  }

  v10 = DerivedStorage + 64;
  v9 = *(DerivedStorage + 64);
  v11 = *(a3 + 16);
  v12 = *(a3 + 32);
  *(v9 + 48) = *(a3 + 48);
  *(v9 + 16) = v11;
  *(v9 + 32) = v12;
  if (dword_180E0 <= 50 && (dword_180E0 != -1 || _LogCategory_Initialize()))
  {
    sub_CBC4(DerivedStorage + 64, v6, v7);
  }

  FigHALAudioPropertySendChanges();
  if (*(*(DerivedStorage + 64) + 72))
  {
    CompatibleTransportFromPCMAndSetDefault = APSAudioFormatDescriptionListFindCompatibleTransportFromPCMAndSetDefault();
    if (dword_180E0 > 50 || dword_180E0 == -1 && !_LogCategory_Initialize())
    {
      if (!CompatibleTransportFromPCMAndSetDefault)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }

    sub_CC1C(DerivedStorage + 64);
    if (CompatibleTransportFromPCMAndSetDefault)
    {
LABEL_29:
      sub_CC6C(CompatibleTransportFromPCMAndSetDefault, &v24);
LABEL_31:
      value_low = LODWORD(v24.value);
      goto LABEL_26;
    }
  }

LABEL_12:
  if (!*(DerivedStorage + 72))
  {
LABEL_25:
    value_low = 0;
    goto LABEL_26;
  }

  APRealTimeAudioFileWriterInvalidate();
  v14 = *(*v10 + 96);
  if (v14)
  {
    CFRelease(v14);
    *(*v10 + 96) = 0;
  }

  value_low = APRealTimeAudioFileWriterCreate();
  if (dword_180E0 <= 50 && (dword_180E0 != -1 || _LogCategory_Initialize()))
  {
    sub_CCDC(v10, value_low, v15);
  }

LABEL_26:
  FigHALAudioConfigChangeDisposeRecord();
  return value_low;
}

uint64_t sub_4308(uint64_t a1)
{
  v6 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  if (*(DerivedStorage + 24))
  {
    if (dword_180E0 <= 40 && (dword_180E0 != -1 || _LogCategory_Initialize()))
    {
      sub_CD94();
    }

    if (*(DerivedStorage + 56))
    {
      *(*(DerivedStorage + 64) + 152) = 0;
      if (IsAppleInternalBuild())
      {
        if (FigGetCFPreferenceNumberWithDefault())
        {
          v3 = CFStringCreateF(&v6, "APHALAudioStream-%{ptr}", a1);
          v4 = APSAudioStatsCreate();
          v6 = v4;
          if (v4)
          {
            sub_CDD0(v4);
          }

          else
          {
            CFRelease(v3);
          }
        }
      }
    }
  }

  else
  {
    sub_CDF8(&v6);
  }

  kdebug_trace();
  return v6;
}

uint64_t sub_4458(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  if (dword_180E0 <= 40 && (dword_180E0 != -1 || _LogCategory_Initialize()))
  {
    sub_CE6C();
  }

  v3 = *(DerivedStorage + 104);
  v2 = (DerivedStorage + 104);
  if (v3)
  {
    APSAudioStats_TerminateSession();
    if (dword_180E0 <= 50 && (dword_180E0 != -1 || _LogCategory_Initialize()))
    {
      sub_CEA8(v2, v4, v5);
    }

    if (*v2)
    {
      CFRelease(*v2);
      *v2 = 0;
    }
  }

  kdebug_trace();
  return 0;
}

uint64_t sub_4560(CMTimeValue a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v77 = *&kCMTimeInvalid.value;
  *&v79.value = *&kCMTimeInvalid.value;
  epoch = kCMTimeInvalid.epoch;
  v79.epoch = epoch;
  kdebug_trace();
  if (dword_180E0 <= 40 && (dword_180E0 != -1 || _LogCategory_Initialize()))
  {
    sub_CEE8();
  }

  v12 = *(DerivedStorage + 64);
  if (!*(v12 + 184))
  {
    sub_D198();
    value_low = 1937010544;
    goto LABEL_42;
  }

  if (a2 != 1919513701)
  {
    sub_CF24(&v84);
LABEL_87:
    value_low = LODWORD(v84.value);
    goto LABEL_42;
  }

  if (!*(DerivedStorage + 24))
  {
    sub_D124(&v84);
    goto LABEL_87;
  }

  if (!*(DerivedStorage + 56))
  {
    value_low = 0;
LABEL_42:
    kdebug_trace();
    return value_low;
  }

  if (*(DerivedStorage + 104))
  {
    APSAudioStats_ProcessAudioBuffer();
    v12 = *(DerivedStorage + 64);
  }

  v75 = epoch;
  if (*(v12 + 96))
  {
    v85[0] = 0.0;
    v84.value = a1;
    *&v84.timescale = 0;
    v84.timescale = *(v12 + 180) * a3;
    v84.epoch = *(a4 + 144);
    APSAsyncLoggerGetSharedLogger();
    APSAsyncLoggerLogMessage();
    APRealTimeAudioFileWriterWriteAudioBytes();
  }

  v13 = CMBaseObjectGetDerivedStorage();
  v14 = v13 + 64;
  v76 = a5;
  if (*(*(v13 + 64) + 152) == 0.0)
  {
    goto LABEL_39;
  }

  v15 = v13;
  v16 = *(a4 + 144);
  v17 = CMBaseObjectGetDerivedStorage();
  memset(&v82, 0, sizeof(v82));
  memset(time, 0, sizeof(time));
  v18 = *(v17 + 64);
  v19 = v16 - *(v18 + 152);
  if (v19 == 0.0)
  {
    goto LABEL_39;
  }

  v20 = v17;
  v78 = a4;
  atomic_fetch_add_explicit((v18 + 160), 1uLL, memory_order_relaxed);
  v84.value = a1;
  v21 = *(v17 + 64);
  v22 = *(v21 + 152);
  *&v84.timescale = v19 / *(v21 + 16) * 1000.0;
  v84.epoch = v22;
  v85[0] = v16;
  APSAsyncLoggerGetSharedLogger();
  APSAsyncLoggerLogMessage();
  if (*(*(v20 + 64) + 88))
  {
    if (APSRingBufferGetBytesUsed() >= 0x121)
    {
      APSRingBufferGetBytesUsed();
      if (APSRingBufferDequeueBytes())
      {
        goto LABEL_22;
      }
    }

    v23 = 12;
    do
    {
      if (APSRingBufferGetBytesUsed() < 0x18)
      {
        break;
      }

      if (APSRingBufferDequeueBytes())
      {
        goto LABEL_22;
      }

      *time = a1;
      *&time[8] = v82;
      APSAsyncLoggerGetSharedLogger();
      APSAsyncLoggerLogMessage();
      --v23;
    }

    while (v23);
  }

  sub_CF98(&v84.timescale, &v84.epoch, v85);
LABEL_22:
  v24 = *v14;
  if (*(*v14 + 80))
  {
    goto LABEL_39;
  }

  v25 = v19 / *(v24 + 16);
  if (v25 <= 0.0 || v25 >= 3.94)
  {
    if (v19 >= 0.0 || -v19 >= a3)
    {
      v35 = 0;
      *(v24 + 168) = 1;
    }

    else
    {
      v35 = -v19;
    }

    goto LABEL_40;
  }

  v26 = v19;
  if (!v19)
  {
LABEL_39:
    v35 = 0;
    goto LABEL_40;
  }

  v74 = DerivedStorage;
  v27 = *(v24 + 152);
  while (1)
  {
    v28 = *(v15 + 64);
    v29 = *(v28 + 180);
    v30 = v26 >= 0x800 / v29 ? 0x800 / v29 : v26;
    v31 = *(v28 + 144);
    v32 = *(v15 + 96);
    v33 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (!v33)
    {
      break;
    }

    v34 = v33(v31, v32, v30 * v29, v27);
    if (v34)
    {
      goto LABEL_81;
    }

    v27 += v30;
    v26 -= v30;
    if (!v26)
    {
      goto LABEL_33;
    }
  }

  v34 = 4294954514;
LABEL_81:
  sub_CFDC(v34, v14);
LABEL_33:
  v35 = 0;
  DerivedStorage = v74;
  a4 = v78;
LABEL_40:
  if (*(*(DerivedStorage + 64) + 80))
  {
    FigHALAudioConduitDeviceHALSendAudio();
    value_low = 0;
    *(*(DerivedStorage + 64) + 152) = *(a4 + 144) + a3;
    goto LABEL_42;
  }

  v38 = CMBaseObjectGetDerivedStorage();
  *&v84.value = v77;
  v84.epoch = v75;
  v39 = (*(v38 + 64) + 168);
  __swp(v39, v39);
  if (v39)
  {
    v40 = v38;
    Default = APSRealTimeAllocatorGetDefault();
    Mutable = CFDictionaryCreateMutable(Default, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v43 = Mutable;
      CMTimeMake(&v84, *(a4 + 144), *(*(v40 + 64) + 176));
      v44 = APSRealTimeAllocatorGetDefault();
      *time = v84;
      v45 = CMTimeCopyAsDictionary(time, v44);
      if (v45)
      {
        v46 = v45;
        CFDictionarySetValue(v43, kFigEndpointStreamAudioEngineFlushOption_AnchorTime, v45);
        CFDictionarySetValue(v43, kFigEndpointStreamAudioEngineFlushOption_TimelineReset, kCFBooleanTrue);
        v47 = *(*(v40 + 64) + 144);
        v48 = *(*(CMBaseObjectGetVTable() + 16) + 128);
        if (v48)
        {
          v48(v47);
        }

        v49 = *(v40 + 24);
        v50 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v50)
        {
          v50(v49, v43);
        }

        CFRelease(v43);
        CFRelease(v46);
        v35 = 0;
      }

      else
      {
        sub_D01C(v43);
      }
    }

    else
    {
      sub_D05C();
    }
  }

  v51 = *(DerivedStorage + 64);
  if (*(v51 + 152) == 0.0)
  {
    CMTimeMake(&v79, *(a4 + 144), *(v51 + 176));
    v52 = APSRealTimeAllocatorGetDefault();
    v84 = v79;
    v53 = CMTimeCopyAsDictionary(&v84, v52);
    if (!v53)
    {
      sub_D0F8();
      value_low = 4294954510;
      goto LABEL_42;
    }

    v54 = v53;
    CMBaseObject = FigEndpointStreamAudioEngineGetCMBaseObject();
    v56 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v56)
    {
      v57 = v56(CMBaseObject, kAPAudioEngineProperty_AudioSourceFirstFrameAnchorTime, v54);
      if (!v57)
      {
        v51 = *(DerivedStorage + 64);
        goto LABEL_58;
      }

      value_low = v57;
    }

    else
    {
      value_low = 4294954514;
    }

    sub_D0B4(value_low);
LABEL_78:
    CFRelease(v54);
    return value_low;
  }

  v54 = 0;
LABEL_58:
  v58 = *(a4 + 144);
  *(v51 + 152) = v58 + a3;
  v59 = *(v51 + 180);
  v60 = a3;
  *&v61 = v59 * a3;
  if (*(DerivedStorage + 80))
  {
    v62 = DerivedStorage;
    v63 = CMBaseObjectGetDerivedStorage();
    v83 = 0.0;
    *time = *&kCMTimeZero.value;
    *&time[16] = kCMTimeZero.epoch;
    v82 = *time;
    if (LODWORD(v61) >= 8)
    {
      v64 = v63;
      if (!*(v63 + 81))
      {
        v65 = *&v61 >> 3;
        v66 = v76;
        while (!*v66)
        {
          ++v66;
          if (!--v65)
          {
            goto LABEL_67;
          }
        }

        *(v63 + 81) = 1;
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(time, HostTimeClock);
        v84 = *time;
        CM8021ASClockGetClockTimeForHostTime();
        v84.value = *(v64 + 88);
        v81 = *time;
        *&v84.timescale = CMTimeGetSeconds(&v81);
        v81 = v82;
        v84.epoch = CMTimeGetSeconds(&v81);
        v85[0] = v83;
        APSAsyncLoggerGetSharedLogger();
        APSAsyncLoggerLogMessage();
      }
    }

LABEL_67:
    v51 = *(v62 + 64);
    v59 = *(v51 + 180);
  }

  else
  {
    v62 = DerivedStorage;
  }

  v68 = v35 * v59;
  if (*&v61 < v68)
  {
    sub_D088();
    value_low = 4294960587;
  }

  else
  {
    v69 = v62;
    if (*(v62 + 112))
    {
      v70 = mach_absolute_time() - *(v62 + 112);
      value_low = 0;
      if (v70 > 60 * UpTicksPerSecond())
      {
        *(v69 + 112) = 0;
      }
    }

    else
    {
      v71 = *(v51 + 144);
      v72 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v72)
      {
        value_low = v72(v71, v76 + v68, *&v61 - v68, v35 + v58);
        v73 = CMBaseObjectGetDerivedStorage();
        if (value_low == -6710)
        {
          v84.value = (((*(*(v73 + 64) + 16) & 0xFFFFFFFF80000000) != 0) << 63) | ((*(*(v73 + 64) + 16) & 0x7FFFFFFF) << 32) | *(*(v73 + 64) + 180) & 0x7FFFFFFF | *(*(v73 + 64) + 180) & 0x80000000;
          *&v84.timescale = v35 & 0x7FFFFFFF | (v60 << 32) | (((v35 & 0xFFFFFFFF80000000) != 0) << 31);
          v84.epoch = v68;
          v85[0] = v61;
          APSAsyncLoggerGetSharedLogger();
          APSAsyncLoggerLogMessage();
          *(v62 + 112) = mach_absolute_time();
          value_low = 4294960586;
        }
      }

      else
      {
        CMBaseObjectGetDerivedStorage();
        value_low = 4294954514;
      }
    }
  }

  kdebug_trace();
  if (v54)
  {
    goto LABEL_78;
  }

  return value_low;
}

uint64_t sub_4FA4(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (a2)
  {
    v7 = *(DerivedStorage + 64);
    v8 = *(v7 + 16);
    v9 = *(v7 + 32);
    *(a2 + 32) = *(v7 + 48);
    *a2 = v8;
    *(a2 + 16) = v9;
  }

  if (dword_180E0 <= 40 && (dword_180E0 != -1 || _LogCategory_Initialize()))
  {
    sub_D1AC(v6, v4, v5);
  }

  return 0;
}

uint64_t sub_5024(uint64_t result, double a2, uint64_t a3, uint64_t a4)
{
  if (dword_180E0 <= 40)
  {
    v4 = result;
    if (dword_180E0 != -1)
    {
      return sub_D204(v4, a3, a4);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_D204(v4, a3, a4);
    }
  }

  return result;
}

uint64_t sub_5094(uint64_t result, double a2, uint64_t a3, uint64_t a4)
{
  if (dword_180E0 <= 50)
  {
    v4 = result;
    if (dword_180E0 != -1)
    {
      return sub_D250(v4, a3, a4);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_D250(v4, a3, a4);
    }
  }

  return result;
}

uint64_t sub_5104(uint64_t result, double a2, uint64_t a3, uint64_t a4)
{
  if (dword_180E0 <= 50)
  {
    v4 = result;
    if (dword_180E0 != -1)
    {
      return sub_D2A8(v4, a3, a4);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_D2A8(v4, a3, a4);
    }
  }

  return result;
}

uint64_t sub_5174(uint64_t result, double a2, uint64_t a3, uint64_t a4)
{
  if (dword_180E0 <= 50)
  {
    v4 = result;
    if (dword_180E0 != -1)
    {
      return sub_D308(v4, a3, a4);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_D308(v4, a3, a4);
    }
  }

  return result;
}

void sub_51E4(unint64_t *a1, double a2)
{
  v15 = 0;
  v3 = a1[1];
  v4 = HIDWORD(*a1) & 0x7FFFFFFF;
  v5 = *a1 & 0x7FFFFFFF;
  v6 = HIDWORD(v3) & 0x7FFFFFFF;
  v7 = v3 & 0x7FFFFFFF;
  v8 = a1[2];
  v9 = a1[3];
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v10 = "bad";
  }

  else
  {
    v10 = "good";
  }

  if ((*a1 & 0x80000000) != 0)
  {
    v11 = "bad";
  }

  else
  {
    v11 = "good";
  }

  if (v3 < 0)
  {
    v12 = "bad";
  }

  else
  {
    v12 = "good";
  }

  if (v3 < 0)
  {
    v13 = "bad";
  }

  else
  {
    v13 = "good";
  }

  v14 = CFStringCreateF(&v15, "sampleRate=%u[%s] bytesPerFrame=%u[%s] ioBufferFrameSize=%u[%s] framesToDrop=%u[%s] bytesToDrop=%llu length=%llu", v4, v10, v5, v11, v6, v12, v7, v13, v8, v9);
  if (v15)
  {
    sub_D35C(v15);
    if (!v14)
    {
      return;
    }

    goto LABEL_19;
  }

  if (dword_180E0 <= 50 && (dword_180E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_180E0, "void stream_ttrLogger(const APSAsyncLoggerParameters *, Float64)", 33554482, "Streaming Audio DoIO Bounds Checking Violation: %@ (log latency: %1.3f ms)\n", v14, *&a2);
  }

  APSTapToRadarInvoke();
  if (v14)
  {
LABEL_19:
    CFRelease(v14);
  }
}

uint64_t sub_5334(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_180E0 <= 50 && (dword_180E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_180E0, "void stream_AudioEngineOutputLatencyChanged(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] received LatencyChanged notification from AudioEngine [%{ptr}], reconfiguring...\n", a2, *(DerivedStorage + 24));
  }

  v4 = FigHALAudioConfigChangeCreateRecord();
  if (v4)
  {
    return sub_D384(v4);
  }

  else
  {
    return FigHALAudioConfigChangeSendRequest();
  }
}

uint64_t sub_5434(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554482, a4);
}

uint64_t sub_5458(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  LogSetAppID();
  sub_C0F0();
  v3 = APGetEndpointManager();
  if (v3)
  {
    sub_D4E8(v3, &cf);
  }

  else
  {
    *a2 = cf;
  }

  return v3;
}

uint64_t sub_54CC(const __CFAllocator *a1, float a2, uint64_t a3, CFDataRef *a4)
{
  *bytes = a2;
  v9 = a2 <= -144.0;
  v5 = CFDataCreate(a1, bytes, 8);
  if (v5)
  {
    v6 = v5;
    result = 0;
    *a4 = v6;
  }

  else
  {
    sub_D528(&v10);
    return v10;
  }

  return result;
}

uint64_t sub_5538(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const void *a5, const void *a6, CFTypeRef *a7)
{
  FigHALAudioObjectGetClassID();
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    v17 = v12;
    sub_D590(v12);
  }

  else
  {
    v13 = FigHALAudioObjectMapperAddMapping();
    if (v13)
    {
      v17 = v13;
      sub_D5B8(v13);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = a3;
      *(DerivedStorage + 8) = 0;
      *(DerivedStorage + 12) = a4;
      if (a5)
      {
        v15 = CFRetain(a5);
      }

      else
      {
        v15 = 0;
      }

      *(DerivedStorage + 24) = v15;
      if (a6)
      {
        v16 = CFRetain(a6);
      }

      else
      {
        v16 = 0;
      }

      *(DerivedStorage + 16) = v16;
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      if (dword_18158 <= 50 && (dword_18158 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_18158, "OSStatus APHALAudioVolumeControlCreate(CFAllocatorRef, FigHALAudioObjectMapper, AudioServerPlugInHostRef, AudioObjectID, FigEndpointRef, CFDataRef, FigHALAudioObjectRef *)", 33554482, "[%{ptr}] HAL volumeControl object created for endpoint [%{ptr}]\n", 0, a5);
      }

      v17 = 0;
      *a7 = 0;
    }
  }

  return v17;
}

void sub_56D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  APSGetFBOPropertyDouble();
  v10 = v9;
  if (dword_18158 <= 40 && (dword_18158 != -1 || _LogCategory_Initialize()))
  {
    sub_D5E0(BytePtr, v10);
  }

  v11 = *(BytePtr + 1);
  if (v11)
  {
    v12 = v10 == -144.0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    if (dword_18158 <= 50)
    {
      if (dword_18158 != -1)
      {
LABEL_10:
        if (v11)
        {
          v13 = "yes";
        }

        else
        {
          v13 = "no";
        }

        LogPrintF(&dword_18158, "void volumeControl_DACPDeviceVolumeNotificationCallback(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] volumeControl DACP callback: muted = %s; volume %.3f -> %.3f", a2, v13, *BytePtr, v10, *"vdclbolg", *"", 1735159650);
        goto LABEL_19;
      }

      if (_LogCategory_Initialize())
      {
        v11 = *(BytePtr + 1);
        goto LABEL_10;
      }
    }

LABEL_19:
    *BytePtr = v10;
    FigHALAudioPropertySendChanges();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    return;
  }

  if (dword_18158 <= 50 && (dword_18158 != -1 || _LogCategory_Initialize()))
  {
    sub_D648(a2, v7, v8);
  }
}

uint64_t sub_58DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const void *a5, const void *a6, CFTypeRef *a7)
{
  cf = 0;
  FigHALAudioObjectGetClassID();
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    v18 = v12;
    sub_D684(v12);
  }

  else
  {
    v13 = FigHALAudioObjectMapperAddMapping();
    if (v13)
    {
      v18 = v13;
      sub_D6AC(v13);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = a3;
      *(DerivedStorage + 8) = 0;
      *(DerivedStorage + 12) = a4;
      if (a5)
      {
        v15 = CFRetain(a5);
      }

      else
      {
        v15 = 0;
      }

      *(DerivedStorage + 24) = v15;
      if (a6)
      {
        v16 = CFRetain(a6);
      }

      else
      {
        v16 = 0;
      }

      *(DerivedStorage + 16) = v16;
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      if (dword_18158 <= 50 && (dword_18158 != -1 || _LogCategory_Initialize()))
      {
        sub_D6D4(&cf, DerivedStorage + 24, v17);
      }

      v18 = 0;
      *a7 = cf;
    }
  }

  return v18;
}

const UInt8 *sub_5A8C(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFDataGetBytePtr(*(DerivedStorage + 16));
  v6 = result;
  if (dword_18158 <= 50)
  {
    if (dword_18158 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_D718(v6, a2, v5);
    }
  }

  if (*(v6 + 1) && *v6 > -30.0)
  {

    return sub_6B98(a2, 0, 1735159650, 0);
  }

  return result;
}

const UInt8 *sub_5B48(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  v5 = APSGetFBOPropertyInt64();
  if (dword_18158 <= 50 && (dword_18158 != -1 || _LogCategory_Initialize()))
  {
    sub_D77C(BytePtr, v5 != 0, a2);
  }

  return sub_6B98(a2, v5 != 0, 1735159650, 0);
}

void sub_5C14(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(CMBaseObjectGetVTable() + 8);
    if (*v3 >= 2uLL)
    {
      v4 = v3[8];
      if (v4)
      {
        v4(CMBaseObject);
      }
    }
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 16) = 0;
  }

  v6 = *(DerivedStorage + 24);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 24) = 0;
  }
}

CFStringRef sub_5D18(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  if (*(BytePtr + 1))
  {
    v3 = " MUTED";
  }

  else
  {
    v3 = "";
  }

  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"APAudioVolumeControl ID %d Owner %d VolumeDB %f%s", *(DerivedStorage + 8), *(DerivedStorage + 12), *BytePtr, v3);
}

uint64_t sub_5DBC(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 <= 1818453105)
  {
    if (v3 > 1668047218)
    {
      v8 = v3 == 1668047219;
      v9 = 1668506480;
    }

    else
    {
      v8 = v3 == 1650682995;
      v9 = 1667591277;
    }

    goto LABEL_16;
  }

  if (v3 > 1818456931)
  {
    v8 = v3 == 1818456932 || v3 == 1937007734;
    v9 = 1818456950;
LABEL_16:
    if (v8 || v3 == v9)
    {
      return 1;
    }

    return result;
  }

  v4 = v3 - 1818453106;
  v5 = v4 > 4;
  v6 = (1 << v4) & 0x13;
  if (!v5 && v6 != 0)
  {
    return 1;
  }

  return result;
}

uint64_t sub_5EA0(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 1818453106)
  {
    if (v2 <= 1818456931)
    {
      if (v2 != 1818453107 && v2 != 1818453110)
      {
        return 0;
      }

      return 4;
    }

    if (v2 == 1818456932 || v2 == 1818456950)
    {
      return 4;
    }

    v6 = 1937007734;
LABEL_18:
    if (v2 == v6)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }

  if (v2 <= 1668047218)
  {
    if (v2 == 1650682995)
    {
      return 4;
    }

    v6 = 1667591277;
    goto LABEL_18;
  }

  if (v2 == 1668047219)
  {
    return 4;
  }

  if (v2 == 1818453106)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 1668506480)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_5F8C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, int *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  v13 = *a2;
  if (*a2 <= 1818453106)
  {
    if (v13 <= 1668047218)
    {
      if (v13 != 1650682995)
      {
        if (v13 == 1667591277)
        {
          *a6 = 4;
          if (a5 >= 4)
          {
            v14 = 0;
            *a7 = 0;
            return v14;
          }

          return 561211770;
        }

        return 2003332927;
      }

      *a6 = 4;
      if (a5 < 4)
      {
        return 561211770;
      }

      v14 = 0;
      v15 = 1818588780;
    }

    else
    {
      switch(v13)
      {
        case 1668047219:
          *a6 = 4;
          if (a5 < 4)
          {
            return 561211770;
          }

          v14 = 0;
          v15 = 1986817381;
          break;
        case 1668506480:
          *a6 = 4;
          if (a5 < 4)
          {
            return 561211770;
          }

          v14 = 0;
          v15 = 1869968496;
          break;
        case 1818453106:
          *a6 = 16;
          if (a5 >= 0x10)
          {
            v14 = 0;
            *a7 = xmmword_F3C0;
            return v14;
          }

          return 561211770;
        default:
          return 2003332927;
      }
    }

LABEL_33:
    *a7 = v15;
    return v14;
  }

  if (v13 <= 1818456931)
  {
    if (v13 != 1818453107)
    {
      if (v13 != 1818453110)
      {
        return 2003332927;
      }

      if (*(BytePtr + 1))
      {
        v16 = -144.0;
      }

      else
      {
        APSGetFBOPropertyDouble();
        v16 = v18;
      }

      *a6 = 4;
      if (a5 < 4)
      {
        v20 = 561211770;
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    if (a5 != 4)
    {
      v20 = 561211770;
      goto LABEL_47;
    }

    v20 = 0;
    APSVolumeConvertDBToSliderValue();
  }

  else
  {
    if (v13 != 1818456932)
    {
      if (v13 != 1818456950)
      {
        if (v13 != 1937007734)
        {
          return 2003332927;
        }

        *a6 = 4;
        if (a5 < 4)
        {
          return 561211770;
        }

        v14 = 0;
        v15 = *(DerivedStorage + 12);
        goto LABEL_33;
      }

      v16 = 0.0;
      if (!*(BytePtr + 1))
      {
        APSGetFBOPropertyDouble();
        APSVolumeConvertDBToSliderValue();
      }

      *a6 = 4;
      if (a5 < 4)
      {
        v20 = 561211770;
LABEL_47:
        APSLogErrorAt();
        return v20;
      }

LABEL_45:
      *a7 = v16;
      return 0;
    }

    if (a5 != 4)
    {
      v20 = 561211770;
      goto LABEL_47;
    }

    v20 = 0;
    APSVolumeConvertSliderValueToDB();
  }

  *a6 = 4;
  *a7 = v17;
  return v20;
}

uint64_t sub_6314(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, int a5, float *a6)
{
  v10 = 1818453110;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  v13 = BytePtr;
  LODWORD(v20) = 1818453110;
  HIDWORD(v20) = a2[1];
  if (*a2 == 1818453110)
  {
    if (a5 == 4)
    {
      v16 = *a6;
      *BytePtr = *a6;
      if (dword_18158 <= 50)
      {
        if (dword_18158 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_19;
          }

          v10 = *a2;
          v16 = *v13;
        }

        LogPrintF(&dword_18158, "OSStatus volumeControl_SetPropertyData(FigHALAudioObjectRef, const AudioObjectPropertyAddress *, UInt32, const void *, UInt32, const void *)", 33554482, "[%{ptr}] [AirPlayVolume] selector = '%C', volumeDB = %.3f", a1, v10, v16, v19, v20);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    v17 = 561211770;
LABEL_15:
    APSLogErrorAt();
    return v17;
  }

  if (*a2 != 1818456950)
  {
    return 2003332927;
  }

  if (a5 != 4)
  {
    v17 = 561211770;
    goto LABEL_15;
  }

  v14 = *a6;
  APSVolumeConvertSliderValueToDB();
  *v13 = v15;
  if (dword_18158 <= 50)
  {
    if (dword_18158 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_19;
      }

      v15 = *v13;
    }

    LogPrintF(&dword_18158, "OSStatus volumeControl_SetPropertyData(FigHALAudioObjectRef, const AudioObjectPropertyAddress *, UInt32, const void *, UInt32, const void *)", 33554482, "[%{ptr}] [AirPlayVolume] selector = '%C', volumeDB = %.3f, volumeSliderValue = %.3f", a1, *a2, v15, v14, v20);
  }

LABEL_19:
  if (*(v13 + 1))
  {
    v17 = 0;
  }

  else
  {
    v17 = APSSetFBOPropertyDouble();
  }

  FigHALAudioPropertySendChanges();
  return v17;
}

void sub_657C(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_18158 <= 50 && (dword_18158 != -1 || _LogCategory_Initialize()))
  {
    sub_D83C(a1, v2, v3);
  }

  if (*(DerivedStorage + 16))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(CMBaseObjectGetVTable() + 8);
    if (*v6 >= 2uLL)
    {
      v7 = v6[8];
      if (v7)
      {
        v7(CMBaseObject);
      }
    }

    v8 = *(DerivedStorage + 16);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 16) = 0;
    }
  }

  v9 = *(DerivedStorage + 24);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 24) = 0;
  }
}

CFStringRef sub_66E4(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CFDataGetBytePtr(*(DerivedStorage + 16)) + 1))
  {
    v2 = "";
  }

  else
  {
    v2 = "Not ";
  }

  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"APAudioMuteControl ID %d Owner %d %sMuted", *(DerivedStorage + 8), *(DerivedStorage + 12), v2);
}

uint64_t sub_6760(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 > 1668047218)
  {
    v4 = v3 == 1668047219 || v3 == 1937007734;
    v5 = 1668506480;
  }

  else
  {
    v4 = v3 == 1650682995 || v3 == 1650685548;
    v5 = 1667591277;
  }

  if (v4 || v3 == v5)
  {
    return 1;
  }

  return result;
}

uint64_t sub_67E4(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 1668047218)
  {
    if (v2 != 1937007734 && v2 != 1668506480 && v2 != 1668047219)
    {
      return 0;
    }

    return 4;
  }

  if (v2 == 1650682995)
  {
    return 4;
  }

  if (v2 == 1667591277)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 1650685548)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_6874(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, int *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *a2;
  result = 2003332927;
  if (*a2 > 1668047218)
  {
    if (v12 == 1668047219)
    {
      *a6 = 4;
      if (a5 > 3)
      {
        v14 = 1836414053;
        goto LABEL_21;
      }

      return 561211770;
    }

    if (v12 == 1668506480)
    {
      *a6 = 4;
      if (a5 > 3)
      {
        v14 = 1869968496;
        goto LABEL_21;
      }

      return 561211770;
    }

    if (v12 != 1937007734)
    {
      return result;
    }

    *a6 = 4;
    if (a5 < 4)
    {
      return 561211770;
    }

    v15 = (DerivedStorage + 12);
    goto LABEL_18;
  }

  if (v12 != 1650682995)
  {
    if (v12 != 1650685548)
    {
      if (v12 != 1667591277)
      {
        return result;
      }

      *a6 = 4;
      if (a5 > 3)
      {
        v14 = 0;
LABEL_21:
        result = 0;
        *a7 = v14;
        return result;
      }

      return 561211770;
    }

    *a6 = 4;
    if (a5 < 4)
    {
      return 561211770;
    }

    v15 = CFDataGetBytePtr(*(DerivedStorage + 16)) + 4;
LABEL_18:
    v14 = *v15;
    goto LABEL_21;
  }

  *a6 = 4;
  if (a5 > 3)
  {
    v14 = 1953458028;
    goto LABEL_21;
  }

  return 561211770;
}

uint64_t sub_69E4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, unsigned int *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  if (*a2 != 1650685548)
  {
    return 2003332927;
  }

  if (a5 != 4)
  {
    v18 = 561211770;
    goto LABEL_16;
  }

  v13 = *a6;
  if (v13 != *(BytePtr + 1))
  {
    if (dword_18158 <= 50 && (dword_18158 != -1 || _LogCategory_Initialize()))
    {
      sub_D878(v13, a1, v12);
    }

    v14 = *(DerivedStorage + 24);
    if (v13)
    {
      v15 = &kCFBooleanTrue;
    }

    else
    {
      v15 = &kCFBooleanFalse;
    }

    v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v16)
    {
      v17 = v16(v14, kAPEndpointProperty_IsHALMuted, *v15);
      if (!v17)
      {
        goto LABEL_12;
      }

      v18 = v17;
    }

    else
    {
      v18 = 4294954514;
    }

LABEL_16:
    APSLogErrorAt();
    return v18;
  }

LABEL_12:
  sub_6B98(a1, v13, a2[1], a2[2]);
  return 0;
}

const UInt8 *sub_6B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFDataGetBytePtr(*(DerivedStorage + 16));
  v8 = result;
  if (dword_18158 <= 50)
  {
    if (dword_18158 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_D8D0(v8, a2, a1);
    }
  }

  if (*(v8 + 1) != a2)
  {
    *(v8 + 1) = a2;

    return FigHALAudioPropertySendOneChange();
  }

  return result;
}

uint64_t sub_6C78(const __CFAllocator *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, CFDictionaryRef theDict, CFTypeRef *a7)
{
  v102 = 0;
  v103 = 0;
  v100 = 0;
  v101 = 0;
  if (!theDict)
  {
    sub_E018();
    v50 = 0;
    v49 = 0;
    v22 = 0;
    v20 = 0;
    v30 = 4294950576;
    goto LABEL_167;
  }

  *label = 0;
  v108 = 0;
  cf = 0;
  v105 = 0;
  v106 = 0;
  v104 = 0;
  Value = CFDictionaryGetValue(theDict, kAPHALAudioDeviceCreationOption_AudioStreamOverride);
  v13 = kFigHALAudioConduitDeviceBrokeredDeviceCreationOption_Conduit;
  v14 = CFDictionaryGetValue(theDict, kFigHALAudioConduitDeviceBrokeredDeviceCreationOption_Conduit);
  v95 = a7;
  v98 = a1;
  if (!v14)
  {
    if (a4)
    {
      v20 = CFRetain(a4);
    }

    else
    {
      v20 = 0;
    }

    v21 = CFRetain(theDict);
    if (!Value)
    {
      if (a5)
      {
        v22 = CFRetain(a5);
      }

      else
      {
        v22 = 0;
      }

      MutableCopy = v21;
      v96 = 0;
      v26 = 0;
      v24 = kCFAllocatorDefault;
      goto LABEL_22;
    }

    if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_181C8, "OSStatus device_copyEndpointAndEndpointStreamFromCreationParameters(CFAllocatorRef, FigEndpointRef, FigEndpointStreamRef, CFDictionaryRef, FigEndpointRef *, FigEndpointStreamRef *, CFStringRef *, Boolean *, CFDictionaryRef *, CFDictionaryRef *)", 33554482, "Replacing Audio endpoint stream[%{ptr}] with BufferedAudio endpoint stream[%{ptr}]\n", a5, Value);
    }

    v22 = CFRetain(Value);
    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v32)
    {
      MutableCopy = v21;
      v24 = kCFAllocatorDefault;
      v33 = v32(CMBaseObject, kFigEndpointStreamProperty_AudioEngineClone, kCFAllocatorDefault, &v108);
      if (v33)
      {
        v30 = v33;
      }

      else
      {
        v34 = FigEndpointStreamAudioEngineGetCMBaseObject();
        v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v35)
        {
          v36 = v35(v34, kAPEndpointStreamAudioEngineProperty_StartupOptions, kCFAllocatorDefault, &cf);
          if (!v36)
          {
            v96 = cf;
            cf = 0;
            v26 = 1;
            goto LABEL_22;
          }

          v30 = v36;
        }

        else
        {
          v30 = 4294954514;
        }
      }
    }

    else
    {
      v30 = 4294954514;
      MutableCopy = v21;
    }

    APSLogErrorAt();
LABEL_39:
    v96 = 0;
    v26 = 0;
    goto LABEL_40;
  }

  v15 = v14;
  v16 = sub_7F80(v14, kFigHALAudioConduitDeviceProperty_DeviceUID, "Default DeviceUID", &v105);
  if (v16)
  {
    v30 = v16;
    sub_D934(v16);
    v20 = 0;
    v22 = 0;
    MutableCopy = 0;
    goto LABEL_39;
  }

  v17 = sub_7F80(v15, kFigHALAudioConduitDeviceProperty_ModelUID, "Default ModelUID", &v104);
  v18 = a2;
  if (v17)
  {
    v30 = v17;
    sub_D944(v17);
LABEL_201:
    v20 = 0;
    v22 = 0;
    MutableCopy = 0;
    v96 = 0;
    v26 = 0;
    goto LABEL_41;
  }

  v19 = sub_7F80(v15, kFigHALAudioConduitDeviceProperty_DeviceName, "Default DeviceName", &v106);
  if (v19)
  {
    v30 = v19;
    sub_D954(v19);
    goto LABEL_201;
  }

  if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_181C8, "OSStatus device_copyEndpointAndEndpointStreamFromCreationParameters(CFAllocatorRef, FigEndpointRef, FigEndpointStreamRef, CFDictionaryRef, FigEndpointRef *, FigEndpointStreamRef *, CFStringRef *, Boolean *, CFDictionaryRef *, CFDictionaryRef *)", 33554482, "Conduit [%{ptr}] properties: deviceName=%@ deviceUID=%@ modelUID=%@", v15, v106, v105, v104);
  }

  v23 = APEndpointStreamAudioAVCCreate();
  if (v23)
  {
    v30 = v23;
    sub_D964(v23);
    goto LABEL_201;
  }

  v24 = kCFAllocatorDefault;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    sub_D98C();
    v20 = 0;
    v22 = 0;
    v96 = 0;
    v26 = 0;
    v30 = 4294960568;
    goto LABEL_41;
  }

  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  v20 = 0;
  v96 = 0;
  v26 = 0;
  v22 = *label;
  *label = 0;
LABEL_22:
  v27 = FigEndpointStreamGetCMBaseObject();
  v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v28)
  {
    v30 = 4294954514;
LABEL_27:
    APSLogErrorAt();
LABEL_40:
    v18 = a2;
    goto LABEL_41;
  }

  v29 = v28(v27, kFigEndpointStreamProperty_ID, v24, &v101);
  if (v29)
  {
    v30 = v29;
    goto LABEL_27;
  }

  v18 = a2;
  if (v101)
  {
    v30 = 0;
  }

  else
  {
    sub_D9B8(&v109);
    v30 = v109;
  }

LABEL_41:
  if (*label)
  {
    CFRelease(*label);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v108)
  {
    CFRelease(v108);
  }

  if (v105)
  {
    CFRelease(v105);
  }

  if (v104)
  {
    CFRelease(v104);
  }

  if (v106)
  {
    CFRelease(v106);
  }

  if (v30)
  {
    sub_DA2C(v30);
LABEL_193:
    v49 = 0;
    v50 = 0;
    Intersection = 0;
    goto LABEL_160;
  }

  FigHALAudioDeviceGetClassID();
  v37 = CMDerivedObjectCreate();
  if (v37)
  {
    v30 = v37;
    sub_DA54(v37);
    goto LABEL_193;
  }

  v38 = FigHALAudioObjectMapperAddMapping();
  if (v38)
  {
    v30 = v38;
    sub_DA7C(v38);
    goto LABEL_193;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = a3;
  *(DerivedStorage + 16) = v18;
  *DerivedStorage = 0;
  if (v20)
  {
    v40 = CFRetain(v20);
  }

  else
  {
    v40 = 0;
  }

  *(DerivedStorage + 96) = v40;
  if (v22)
  {
    v41 = CFRetain(v22);
  }

  else
  {
    v41 = 0;
  }

  *(DerivedStorage + 104) = v41;
  *(DerivedStorage + 89) = v26;
  *(DerivedStorage + 88) = 0;
  *(DerivedStorage + 24) = v101;
  v101 = 0;
  *(DerivedStorage + 64) = 0;
  if (qword_182C8 != -1)
  {
    sub_DAA4();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 160) = 0;
    *(Instance + 168) = 0;
    *(DerivedStorage + 120) = Instance;
  }

  else if ((sub_DACC(label) & 1) == 0)
  {
    v49 = 0;
    v50 = 0;
    Intersection = 0;
    v30 = *label;
    goto LABEL_160;
  }

  SNPrintF(label, 64, "APHALAudioDevice.%{ptr}.notification", v103);
  v43 = dispatch_queue_create(label, 0);
  *(DerivedStorage + 160) = v43;
  if (!v43)
  {
    sub_DFA4(&v108);
    v49 = 0;
    v50 = 0;
    Intersection = 0;
    v30 = v108;
    goto LABEL_160;
  }

  v44 = CFDictionaryGetValue(theDict, v13);
  *(*(DerivedStorage + 120) + 80) = v44;
  if (v44)
  {
    CFRetain(v44);
  }

  v45 = FigEndpointStreamGetCMBaseObject();
  v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v46)
  {
    v30 = 4294954514;
LABEL_75:
    APSLogErrorAt();
    v49 = 0;
    v50 = 0;
    Intersection = 0;
LABEL_160:
    v60 = v96;
    goto LABEL_161;
  }

  v47 = v46(v45, kFigEndpointStreamProperty_AudioEngineClone, kCFAllocatorDefault, DerivedStorage + 112);
  if (v47)
  {
    v30 = v47;
    goto LABEL_75;
  }

  if (*(DerivedStorage + 89))
  {
    v94 = *(DerivedStorage + 112);
    v48 = APAudioEngineBufferedAdapterCreate();
    if (v48)
    {
      v30 = v48;
      sub_DB64(v48);
LABEL_204:
      v49 = 0;
LABEL_210:
      Intersection = 0;
      goto LABEL_105;
    }
  }

  else
  {
    v94 = 0;
  }

  if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
  {
    sub_DB8C();
  }

  v52 = APSRealTimeWritableCreate();
  if (v52)
  {
    v30 = v52;
    sub_DBD0(v52);
    goto LABEL_204;
  }

  v53 = CFDictionaryGetValue(MutableCopy, kAPHALAudioDeviceCreationOption_AudioDeviceType);
  if (!v53 || (v54 = CFRetain(v53)) == 0)
  {
    sub_DF78();
    v49 = 0;
    Intersection = 0;
    v30 = 4294950576;
    goto LABEL_105;
  }

  v49 = v54;
  v55 = CFDictionaryGetValue(MutableCopy, kAPHALAudioDeviceCreationOption_NetworkClockType);
  if (v55)
  {
    v55 = CFRetain(v55);
  }

  *(DerivedStorage + 72) = v55;
  v56 = CFDictionaryGetValue(MutableCopy, kAPHALAudioDeviceCreationOption_EndpointName);
  if (v56)
  {
    v56 = CFRetain(v56);
  }

  *(DerivedStorage + 32) = v56;
  v57 = CFDictionaryGetValue(MutableCopy, kAPHALAudioDeviceCreationOption_ModelUID);
  if (v57)
  {
    v57 = CFRetain(v57);
  }

  *(DerivedStorage + 40) = v57;
  if (FigCFDictionaryGetInt32IfPresent())
  {
    *(DerivedStorage + 48) = 0;
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetFloatIfPresent();
  if (-999.0 == -999 && dword_181C8 <= 60 && (dword_181C8 != -1 || _LogCategory_Initialize()))
  {
    sub_DBF8();
  }

  if (FigCFEqual())
  {
    v58 = 1668506482;
  }

  else
  {
    v58 = 1634300528;
  }

  *(DerivedStorage + 80) = v58;
  if (FigCFEqual())
  {
    v59 = 1885433975;
  }

  else if (FigCFEqual())
  {
    v59 = 1885433971;
  }

  else if (FigCFEqual())
  {
    v59 = 1885433953;
  }

  else
  {
    v61 = FigCFEqual();
    v59 = 1885433964;
    if (!v61)
    {
      if (!FigCFEqual())
      {
        goto LABEL_110;
      }

      v59 = 1885565807;
    }
  }

  *(DerivedStorage + 84) = v59;
LABEL_110:
  v62 = kFigEndpointStreamProperty_SupportedAudioFormatDescriptions;
  v63 = FigEndpointStreamGetCMBaseObject();
  v92 = MutableCopy;
  v93 = v20;
  if (sub_80CC(v63, v62, kCFAllocatorDefault, &v100) == -12784)
  {
    v64 = kFigEndpointStreamProperty_SupportedPCMFormats;
    v65 = *(DerivedStorage + 120);
    v66 = FigEndpointStreamGetCMBaseObject();
    v67 = sub_80CC(v66, v64, kCFAllocatorDefault, v65 + 64);
    if (v67)
    {
      v30 = v67;
      sub_DD7C(v67);
      Intersection = 0;
      v20 = v93;
      goto LABEL_105;
    }

    Intersection = 0;
    goto LABEL_130;
  }

  v68 = APSAudioFormatDescriptionListCreateWithFigEndpointStreamAudioFormatDescriptionArray();
  if (v68)
  {
    v30 = v68;
    sub_DC3C(v68);
    goto LABEL_210;
  }

  if (!*(*(DerivedStorage + 120) + 72))
  {
    APSLogErrorAt();
    if (dword_181C8 <= 90 && (dword_181C8 != -1 || _LogCategory_Initialize()))
    {
      sub_DD40();
    }

    Intersection = 0;
    goto LABEL_215;
  }

  if (!APSAudioFormatDescriptionListGetFormatCount())
  {
    v74 = kFigEndpointStreamProperty_SupportedPCMFormats;
    v75 = *(DerivedStorage + 120);
    v76 = FigEndpointStreamGetCMBaseObject();
    v77 = sub_80CC(v76, v74, kCFAllocatorDefault, v75 + 64);
    if (v77)
    {
      v30 = v77;
      sub_DD18(v77);
      Intersection = 0;
      goto LABEL_223;
    }

    Intersection = 0;
    goto LABEL_128;
  }

  APSSettingsGetIntWithDefault();
  Intersection = APSAudioFormatDescriptionListCreateIntersection();
  if (!APSAudioFormatDescriptionListGetFormatCount())
  {
    v78 = kFigEndpointStreamProperty_SupportedPCMFormats;
    v79 = *(DerivedStorage + 120);
    v80 = FigEndpointStreamGetCMBaseObject();
    v81 = sub_80CC(v80, v78, kCFAllocatorDefault, v79 + 64);
    if (v81)
    {
      v30 = v81;
      sub_DCF0(v81);
      goto LABEL_223;
    }

LABEL_128:
    v82 = *(*(DerivedStorage + 120) + 72);
    if (v82)
    {
      CFRelease(v82);
      *(*(DerivedStorage + 120) + 72) = 0;
    }

    goto LABEL_130;
  }

  ASRDArrayPCM = APSAudioFormatDescriptionListCreateASRDArrayPCM();
  if (ASRDArrayPCM)
  {
    v30 = ASRDArrayPCM;
    sub_DC64(ASRDArrayPCM);
    goto LABEL_105;
  }

  v70 = *(DerivedStorage + 120);
  v71 = *(v70 + 72);
  *(v70 + 72) = Intersection;
  if (Intersection)
  {
    CFRetain(Intersection);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  DefaultFormat = APSAudioFormatDescriptionListGetDefaultFormat();
  *(*(DerivedStorage + 120) + 56) = DefaultFormat;
  if (!DefaultFormat)
  {
    APSLogErrorAt();
    if (dword_181C8 <= 90 && (dword_181C8 != -1 || _LogCategory_Initialize()))
    {
      sub_DCB4();
    }

LABEL_215:
    v30 = 4294960579;
    goto LABEL_105;
  }

  PCMASBD = APSAudioFormatDescriptionGetPCMASBD();
  if (PCMASBD)
  {
    v30 = PCMASBD;
    sub_DC8C(PCMASBD);
LABEL_223:
    v20 = v93;
    goto LABEL_105;
  }

LABEL_130:
  v83 = *(*(DerivedStorage + 120) + 64);
  if (v83)
  {
    Length = CFDataGetLength(v83);
    BytePtr = CFDataGetBytePtr(*(*(DerivedStorage + 120) + 64));
    if (Length >= 0x38)
    {
      v86 = BytePtr;
      v87 = 0;
      do
      {
        if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_181C8, "OSStatus APHALAudioDeviceCreateForEndpointStream(CFAllocatorRef, FigHALAudioObjectMapper, AudioServerPlugInHostRef, FigEndpointRef, FigEndpointStreamRef, CFDictionaryRef, FigHALAudioDeviceRef *)", 33554482, "[%{ptr}] AudioDeviceType [%@]. SupportedPCMFormat[%d]: [%{asbd}]\n", v103, v49, v87, v86);
        }

        ++v87;
        v86 += 56;
      }

      while (Length / 0x38 != v87);
    }
  }

  if (*(*(DerivedStorage + 120) + 72))
  {
    v108 = 0;
    MutableCopy = v92;
    v20 = v93;
    v88 = a2;
    if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
    {
      APSAudioFormatDescriptionListCopyDebugString();
      if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
      {
        sub_DDA4();
      }

      if (v108)
      {
        CFRelease(v108);
      }
    }
  }

  else
  {
    MutableCopy = v92;
    v20 = v93;
    v88 = a2;
    if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
    {
      sub_DDE4();
    }
  }

  v89 = sub_3234(v98, v88, 0, *(DerivedStorage + 112), a3, *(DerivedStorage + 120), (DerivedStorage + 136));
  if (v89)
  {
    v30 = v89;
    sub_DE20(v89);
  }

  else
  {
    if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
    {
      sub_DE48();
    }

    v90 = sub_7E7C(v103);
    if (!v90)
    {
      v50 = v94;
      if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
      {
        sub_DF28();
      }

      v30 = 0;
      *v95 = v103;
      v103 = 0;
      goto LABEL_160;
    }

    v30 = v90;
    sub_DF00(v90);
  }

LABEL_105:
  v60 = v96;
  v50 = v94;
LABEL_161:
  if (v60)
  {
    CFRelease(v60);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (Intersection)
  {
    CFRelease(Intersection);
  }

LABEL_167:
  if (v100)
  {
    CFRelease(v100);
  }

  if (v101)
  {
    CFRelease(v101);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (v103)
  {
    CFRelease(v103);
  }

  return v30;
}

uint64_t sub_7E7C(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  v1 = FigNotificationCenterAddWeakListener();
  if (v1)
  {
    v3 = v1;
    sub_E02C(v1);
  }

  else
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v2 = FigNotificationCenterAddWeakListener();
    v3 = v2;
    if (v2)
    {
      sub_E03C(v2);
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v4 = FigNotificationCenterAddWeakListener();
      if (v4)
      {
        v6 = v4;
        sub_E04C(v4);
        return v6;
      }
    }
  }

  return v3;
}

uint64_t sub_7F80(uint64_t a1, uint64_t a2, uint64_t a3, const __CFString **a4)
{
  theString = 0;
  v8 = FigHALAudioConduitDeviceCopyProperty();
  v12 = v8;
  if (v8)
  {
    sub_E05C(v8);
  }

  else
  {
    if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_181C8, "OSStatus device_copyPropertyFromConduitDevice(FigHALAudioConduitDeviceRef, const CFStringRef, const char *, CFStringRef *)", 33554482, "Conduit [%{ptr}] property: %@ is %s. A default value will be used.", a1, a2, "null");
    }

    v9 = CFStringCreateF(&v12, "%s:%{ptr}", a3, a1);
    theString = v9;
    if (!v12)
    {
      *a4 = v9;
      return v12;
    }

    sub_E100(v12);
  }

  if (theString)
  {
    CFRelease(theString);
  }

  return v12;
}

uint64_t sub_80CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

void sub_8188(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  sub_8440(a1);
  v5 = DerivedStorage[3];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[3] = 0;
  }

  v6 = DerivedStorage[5];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[5] = 0;
  }

  v7 = DerivedStorage[4];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[4] = 0;
  }

  v8 = DerivedStorage[7];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[7] = 0;
  }

  v9 = DerivedStorage[12];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[12] = 0;
  }

  v10 = DerivedStorage[13];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[13] = 0;
  }

  v11 = DerivedStorage[14];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[14] = 0;
  }

  if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_181C8, "void device_Finalize(CMBaseObjectRef)", 33554482, "[%{ptr}] Releasing APHALAudioStream [%{ptr}]\n", a1, DerivedStorage[17]);
  }

  v12 = DerivedStorage[17];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[17] = 0;
  }

  v13 = DerivedStorage[18];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[18] = 0;
  }

  v14 = DerivedStorage[19];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[19] = 0;
  }

  v15 = DerivedStorage[22];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[22] = 0;
  }

  v16 = DerivedStorage[9];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[9] = 0;
  }

  v17 = DerivedStorage[16];
  if (v17)
  {
    CFRelease(v17);
    DerivedStorage[16] = 0;
  }

  v18 = DerivedStorage[20];
  if (v18)
  {
    dispatch_release(v18);
    DerivedStorage[20] = 0;
  }

  v19 = DerivedStorage[15];
  if (v19)
  {
    if (v19[10])
    {
      CFRelease(v19[10]);
      v19 = DerivedStorage[15];
      v19[10] = 0;
    }

    CFRelease(v19);
    DerivedStorage[15] = 0;
  }

  if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
  {
    sub_E128(a1, v3, v4);
  }
}

uint64_t sub_8440(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  mach_absolute_time();
  if (*(DerivedStorage + 168) < 1)
  {
    return 0;
  }

  *(DerivedStorage + 168) = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    CFDictionarySetInt64();
  }

  v4 = FigEndpointStreamAudioEngineSuspendSync();
  v7 = v4;
  if (v4)
  {
    if (v4 == -15486)
    {
      if (dword_181C8 <= 90 && (dword_181C8 != -1 || _LogCategory_Initialize()))
      {
        sub_E164(a1, v5, v6);
      }

      v7 = 0;
    }

    else if (dword_181C8 <= 90 && (dword_181C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_181C8, "OSStatus device_StopIO(FigHALAudioDeviceRef)", 33554522, "### [%{ptr}] ESAE suspend failed err=%#m\n", a1, v7);
    }
  }

  v8 = *(DerivedStorage + 136);
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  if (v9)
  {
    v9(v8);
  }

  v10 = *(*(DerivedStorage + 120) + 144);
  if (v10)
  {
    CFRelease(v10);
    *(*(DerivedStorage + 120) + 144) = 0;
  }

  v11 = *(DerivedStorage + 176);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 176) = 0;
  }

  v12 = *(DerivedStorage + 56);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 56) = 0;
  }

  v13 = *(DerivedStorage + 120);
  v14 = *(v13 + 88);
  if (v14)
  {
    CFRelease(v14);
    v13 = *(DerivedStorage + 120);
    *(v13 + 88) = 0;
  }

  *(v13 + 184) = 0;
  if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
  {
    sub_E1A0();
    if (!Mutable)
    {
      return v7;
    }

    goto LABEL_29;
  }

  if (Mutable)
  {
LABEL_29:
    CFRelease(Mutable);
  }

  return v7;
}

uint64_t sub_86BC(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  *(DerivedStorage + 172) = 1;
  v3 = *(DerivedStorage + 136);
  if (v3)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v4)
    {
      v4(v3);
    }

    FigHALAudioObjectMapperRemoveMapping();
  }

  return FigHALAudioObjectMapperRemoveMapping();
}

uint64_t sub_87BC(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = APSGetFBOPropertyInt64();
  result = 0;
  *(DerivedStorage + 64) = v4;
  if (dword_181C8 <= 50)
  {
    if (dword_181C8 != -1)
    {
      return LogPrintF(&dword_181C8, "void AudioEngineDynamicLatencyOffsetChangedCallback(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Updated dynamic latency offset to %d ms\n", a2, v4);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&dword_181C8, "void AudioEngineDynamicLatencyOffsetChangedCallback(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554482, "[%{ptr}] Updated dynamic latency offset to %d ms\n", a2, v4);
    }
  }

  return result;
}

BOOL sub_88A4(uint64_t a1, int *a2)
{
  result = 0;
  v5 = *a2;
  if (*a2 > 1818850925)
  {
    if (v5 <= 1919512166)
    {
      if (v5 > 1836411235)
      {
        if (v5 > 1853059699)
        {
          if (v5 == 1853059700)
          {
            return 1;
          }

          v6 = 1870098020;
        }

        else
        {
          if (v5 == 1836411236)
          {
            return 1;
          }

          v6 = 1853059619;
        }

        goto LABEL_61;
      }

      if (v5 <= 1819173228)
      {
        if (v5 == 1818850926)
        {
          return 1;
        }

        v6 = 1819107691;
        goto LABEL_61;
      }

      if (v5 == 1819173229)
      {
        return 1;
      }

      v7 = 1819569763;
      goto LABEL_51;
    }

    if (v5 > 1937007733)
    {
      if (v5 > 1953653101)
      {
        if (v5 != 1953653102)
        {
          if (v5 == 1987012963)
          {

            return sub_A05C(a1);
          }

          v6 = 1969841184;
          goto LABEL_61;
        }

        return 1;
      }

      if (v5 == 1937007734)
      {
        return 1;
      }

      v6 = 1937009955;
      goto LABEL_61;
    }

    if (v5 <= 1936092275)
    {
      if (v5 == 1919512167)
      {
        return 1;
      }

      v7 = 1935763060;
      goto LABEL_51;
    }

    if (v5 != 1936092276)
    {
      v7 = 1936879204;
LABEL_51:
      if (v5 != v7)
      {
        return result;
      }
    }

LABEL_52:
    v8 = a2[1];
    return v8 == 1768845428 || v8 == 1869968496;
  }

  if (v5 > 1668510817)
  {
    if (v5 <= 1684434035)
    {
      if (v5 <= 1668641651)
      {
        if (v5 == 1668510818)
        {
          return 1;
        }

        v6 = 1668575852;
        goto LABEL_61;
      }

      if (v5 == 1668641652)
      {
        return 1;
      }

      v7 = 1684236338;
      goto LABEL_51;
    }

    if (v5 > 1735354733)
    {
      if (v5 == 1735354734)
      {
        return 1;
      }

      v6 = 1751737454;
      goto LABEL_61;
    }

    if (v5 != 1684434036)
    {
      if (v5 == 1718383987)
      {

        return sub_9F6C(a1);
      }

      return result;
    }

    goto LABEL_52;
  }

  if (v5 > 1651798131)
  {
    if (v5 <= 1668047218)
    {
      if (v5 != 1651798132)
      {
        if (v5 == 1667658618)
        {
          return sub_A158(a1) != 0;
        }

        return result;
      }

      return 1;
    }

    if (v5 == 1668047219)
    {
      return 1;
    }

    v6 = 1668049764;
  }

  else if (v5 > 1634759531)
  {
    if (v5 == 1634759532)
    {
      return 1;
    }

    v6 = 1650682995;
  }

  else
  {
    if (v5 == 1634429294)
    {
      return 1;
    }

    v6 = 1634758772;
  }

LABEL_61:
  if (v5 == v6)
  {
    return 1;
  }

  return result;
}

uint64_t sub_8C40(uint64_t a1, int *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 0;
  v5 = *a2;
  if (*a2 > 1818850925)
  {
    if (v5 > 1919512166)
    {
      if (v5 > 1937007733)
      {
        if (v5 > 1953653101)
        {
          v6 = 1953653102;
          v7 = 4;
          if (v5 == 1987012963)
          {
            v8 = 4;
          }

          else
          {
            v8 = 0;
          }

          if (v5 == 1969841184)
          {
            v9 = 8;
          }

          else
          {
            v9 = v8;
          }

LABEL_65:
          if (v5 == v6)
          {
            return v7;
          }

          else
          {
            return v9;
          }
        }

        if (v5 != 1937007734)
        {
          if (v5 != 1937009955)
          {
            return result;
          }

          v21 = a2[1];
          v22 = v21 == 1869968496 || v21 == 1735159650;
          goto LABEL_70;
        }

        return 4;
      }

      if (v5 <= 1936092275)
      {
        v6 = 1919512167;
        v7 = 4;
        v10 = 1935763060;
        goto LABEL_32;
      }

      if (v5 == 1936092276)
      {
        return 4;
      }

      if (v5 == 1936879204)
      {
        return (20 * *(DerivedStorage[7].i64[1] + 44) + 12);
      }

      return result;
    }

    if (v5 <= 1836411235)
    {
      v12 = 1819173228;
      if (v5 == 1819569763)
      {
        v13 = 4;
      }

      else
      {
        v13 = 0;
      }

      if (v5 == 1819173229)
      {
        v14 = 8;
      }

      else
      {
        v14 = v13;
      }

      v15 = 1818850926;
      v16 = 1819107691;
LABEL_40:
      if (v5 == v16)
      {
        v19 = 8;
      }

      else
      {
        v19 = 0;
      }

      if (v5 == v15)
      {
        v20 = 4;
      }

      else
      {
        v20 = v19;
      }

      if (v5 <= v12)
      {
        return v20;
      }

      else
      {
        return v14;
      }
    }

    if (v5 > 1853059699)
    {
      if (v5 == 1853059700)
      {
        return 8;
      }

      if (v5 == 1870098020)
      {
        v23 = a2[1];
        if (v23 == 1869968496 || v23 == 1735159650)
        {
          v24 = vmovn_s64(vtstq_s64(DerivedStorage[9], DerivedStorage[9]));
          return 4 * ((v24.i8[4] & 1u) - v24.i32[0]) + 4;
        }

        else
        {
          return 0;
        }
      }

      return result;
    }

    v6 = 1836411236;
    v7 = 8;
    v17 = v5 == 1853059619;
    v9 = 32;
    goto LABEL_63;
  }

  if (v5 > 1668510817)
  {
    if (v5 > 1684434035)
    {
      v12 = 1735354733;
      if (v5 == 1751737454)
      {
        v18 = 4;
      }

      else
      {
        v18 = 0;
      }

      if (v5 == 1735354734)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }

      v15 = 1684434036;
      v16 = 1718383987;
      goto LABEL_40;
    }

    if (v5 <= 1668641651)
    {
      if (v5 == 1668510818)
      {
        return 4;
      }

      if (v5 == 1668575852)
      {
        v11 = vmovn_s64(vtstq_s64(DerivedStorage[9], DerivedStorage[9]));
        return 4 * ((v11.i8[4] & 1u) - v11.i32[0]);
      }

      return result;
    }

    v6 = 1668641652;
    v7 = 60;
    v17 = v5 == 1684236338;
    v9 = 8;
LABEL_63:
    if (!v17)
    {
      v9 = 0;
    }

    goto LABEL_65;
  }

  if (v5 > 1651798131)
  {
    if (v5 > 1668047218)
    {
      if (v5 != 1668047219)
      {
        v22 = v5 == 1668049764;
LABEL_70:
        if (v22)
        {
          return 4;
        }

        else
        {
          return 0;
        }
      }

      return 4;
    }

    v6 = 1651798132;
    v7 = 40;
    v10 = 1667658618;
    goto LABEL_32;
  }

  if (v5 <= 1634759531)
  {
    v6 = 1634429294;
    v7 = 4;
    v10 = 1634758772;
LABEL_32:
    v17 = v5 == v10;
    v9 = 4;
    goto LABEL_63;
  }

  if (v5 == 1634759532 || v5 == 1650682995)
  {
    return 4;
  }

  return result;
}

uint64_t sub_9048(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int *a6, uint64_t a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = DerivedStorage;
  v14 = *a2;
  if (*a2 <= 1818850925)
  {
    if (v14 <= 1668510817)
    {
      if (v14 <= 1651798131)
      {
        if (v14 > 1634759531)
        {
          if (v14 == 1634759532)
          {
            *a6 = 4;
            if (a5 >= 4)
            {
              v15 = 0;
              v16 = *(DerivedStorage + 48);
              goto LABEL_136;
            }

            return 561211770;
          }

          if (v14 == 1650682995)
          {
            *a6 = 4;
            if (a5 >= 4)
            {
              v15 = 0;
              v16 = 1634689642;
              goto LABEL_136;
            }

            return 561211770;
          }
        }

        else
        {
          if (v14 == 1634429294)
          {
            *a6 = 4;
            if (a5 < 4)
            {
              return 0;
            }

            v15 = 0;
            v16 = *DerivedStorage;
            goto LABEL_136;
          }

          if (v14 == 1634758772)
          {
            *a6 = 4;
            if (a5 >= 4)
            {
              v15 = 0;
              v16 = *(DerivedStorage + 84);
              goto LABEL_136;
            }

            return 561211770;
          }
        }

        return 2003332927;
      }

      if (v14 > 1668047218)
      {
        if (v14 == 1668047219)
        {
          *a6 = 4;
          if (a5 >= 4)
          {
            v15 = 0;
            v16 = 1633969526;
            goto LABEL_136;
          }

          return 561211770;
        }

        v24 = 1668049764;
        goto LABEL_81;
      }

      if (v14 == 1651798132)
      {
        CMBaseObjectGetDerivedStorage();
        APSRealTimeWritableRead();
        *a6 = 40;
        if (a5 < 0x28)
        {
          return 561211770;
        }

        v15 = 0;
        *a7 = 0;
        *(a7 + 8) = 0uLL;
        __asm { FMOV            V0.2D, #1.0 }

        *(a7 + 24) = _Q0;
      }

      else
      {
        if (v14 != 1667658618)
        {
          return 2003332927;
        }

        *a6 = 4;
        if (a5 < 4)
        {
          return 561211770;
        }

        v15 = 0;
        *a7 = sub_A158(a1);
      }

      return v15;
    }

    if (v14 > 1684434035)
    {
      if (v14 > 1735354733)
      {
        if (v14 == 1735354734)
        {
          *a6 = 4;
          if (a5 >= 4)
          {
            v15 = 0;
            v16 = *(DerivedStorage + 168) > 0;
            goto LABEL_136;
          }

          return 561211770;
        }

        v24 = 1751737454;
        goto LABEL_81;
      }

      if (v14 == 1684434036)
      {
        goto LABEL_82;
      }

      if (v14 != 1718383987)
      {
        return 2003332927;
      }

      return 1970171760;
    }

    if (v14 > 1668641651)
    {
      if (v14 != 1668641652)
      {
        if (v14 != 1684236338)
        {
          return 2003332927;
        }

        if (a5 <= 7)
        {
          v15 = 561211770;
          sub_E254();
          return v15;
        }

        v15 = 0;
        *a7 = 0x200000001;
        v29 = 8;
LABEL_171:
        *a6 = v29;
        return v15;
      }

      *a6 = 60;
      if (a5 <= 0x3B)
      {
        v15 = 561211770;
        sub_E22C();
      }

      else
      {
        v15 = 0;
        *a7 = *"tppawwar";
        *(a7 + 16) = *"wwar";
        *(a7 + 32) = xmmword_F420;
        *(a7 + 44) = *(&xmmword_F420 + 12);
      }

      return v15;
    }

    if (v14 == 1668510818)
    {
      goto LABEL_82;
    }

    if (v14 != 1668575852)
    {
      return 2003332927;
    }

    v17 = a5 >> 2;
    v18 = a2[1];
    switch(v18)
    {
      case 1869968496:
        goto LABEL_24;
      case 1768845428:
        v17 = 0;
        break;
      case 1735159650:
LABEL_24:
        v20 = *(DerivedStorage + 144);
        v19 = *(DerivedStorage + 152);
        v21 = v20 != 0;
        if (v19)
        {
          ++v21;
        }

        if (v17 >= v21)
        {
          v17 = v21;
        }

        if (!v17)
        {
          break;
        }

        if (!v20)
        {
          v22 = 0;
LABEL_168:
          if (v19)
          {
            *(a7 + 4 * v22) = sub_1DF8(v19);
          }

          break;
        }

        *a7 = sub_1DF8(v13[18]);
        if (v17 != 1)
        {
          v19 = v13[19];
          v22 = 1;
          goto LABEL_168;
        }

        break;
    }

    v15 = 0;
    v29 = 4 * v17;
    goto LABEL_171;
  }

  if (v14 > 1919512166)
  {
    if (v14 > 1937007733)
    {
      if (v14 > 1953653101)
      {
        if (v14 == 1953653102)
        {
          *a6 = 4;
          if (a5 >= 4)
          {
            v15 = 0;
            v16 = *(DerivedStorage + 80);
            goto LABEL_136;
          }

          return 561211770;
        }

        if (v14 != 1969841184)
        {
          if (v14 == 1987012963)
          {
            *a6 = 4;
            if (a5 >= 4)
            {
              v15 = 0;
              v16 = *(DerivedStorage + 88);
LABEL_136:
              *a7 = v16;
              return v15;
            }

            return 561211770;
          }

          return 2003332927;
        }

LABEL_123:
        *a6 = 8;
        if (a5 < 8)
        {
          return 561211770;
        }

        v23 = v13[3];
        if (!v23)
        {
          goto LABEL_126;
        }

        goto LABEL_125;
      }

      if (v14 == 1937007734)
      {
        *a6 = 4;
        if (a5 >= 4)
        {
          v15 = 0;
          v16 = 1;
          goto LABEL_136;
        }

        return 561211770;
      }

      if (v14 != 1937009955)
      {
        return 2003332927;
      }

      v28 = a2[1];
      if (v28 != 1869968496)
      {
        if (v28 == 1768845428)
        {
          goto LABEL_139;
        }

        if (v28 != 1735159650)
        {
          v29 = a5 & 0xFFFFFFFC;
          goto LABEL_148;
        }
      }

      if (a5 >= 4)
      {
        *a7 = sub_1DF8(*(DerivedStorage + 136));
        v29 = 4;
LABEL_148:
        v15 = 0;
        goto LABEL_171;
      }

LABEL_139:
      v29 = 0;
      goto LABEL_148;
    }

    if (v14 <= 1936092275)
    {
      if (v14 == 1919512167)
      {
        *a6 = 4;
        if (a5 >= 4)
        {
          v15 = 0;
          v16 = 11025;
          goto LABEL_136;
        }

        return 561211770;
      }

      v24 = 1935763060;
LABEL_81:
      if (v14 != v24)
      {
        return 2003332927;
      }

      goto LABEL_82;
    }

    if (v14 != 1936092276)
    {
      if (v14 != 1936879204)
      {
        return 2003332927;
      }

      v25 = *(*(DerivedStorage + 120) + 44);
      v26 = 20 * v25 + 12;
      if (v26 > a5)
      {
        v15 = 561211770;
        sub_E240();
      }

      else
      {
        bzero(a7, (20 * v25 + 12));
        if (v25 == 8)
        {
          *(a7 + 8) = 0x100000008;
          *(a7 + 32) = 2;
          *(a7 + 52) = 3;
          *(a7 + 72) = 4;
          *(a7 + 92) = 5;
          *(a7 + 112) = 6;
          *(a7 + 132) = 49;
          *(a7 + 152) = 51;
        }

        else
        {
          if (v25 == 1)
          {
            v27 = 6553601;
          }

          else
          {
            v27 = 6619138;
          }

          *a7 = v27;
        }

        v15 = 0;
        *a6 = v26;
      }

      return v15;
    }

LABEL_82:
    *a6 = 4;
    if (a5 < 4)
    {
      return 561211770;
    }

    v15 = 0;
    *a7 = 0;
    return v15;
  }

  if (v14 <= 1836411235)
  {
    if (v14 > 1819173228)
    {
      if (v14 == 1819173229)
      {
        v40 = *(DerivedStorage + 32);
        if (!v40 || (v41 = CFRetain(v40)) == 0)
        {
          v41 = CFRetain(@"No Name Endpoint");
        }

        *a6 = 8;
        if (a5 < 8)
        {
          v15 = 561211770;
        }

        else
        {
          v15 = 0;
          *a7 = CFRetain(v41);
        }

        if (v41)
        {
          CFRelease(v41);
        }

        return v15;
      }

      v24 = 1819569763;
      goto LABEL_81;
    }

    if (v14 == 1818850926)
    {
      *a6 = 4;
      if (a5 >= 4)
      {
        v15 = 0;
        v16 = *(DerivedStorage + 172) == 0;
        goto LABEL_136;
      }

      return 561211770;
    }

    if (v14 != 1819107691)
    {
      return 2003332927;
    }

    *a6 = 8;
    if (a5 < 8)
    {
      return 561211770;
    }

    v23 = @"Apple, Inc.";
LABEL_125:
    v23 = CFRetain(v23);
LABEL_126:
    v15 = 0;
    *a7 = v23;
    return v15;
  }

  if (v14 > 1853059699)
  {
    if (v14 == 1853059700)
    {
      *a6 = 8;
      if (a5 < 8)
      {
        return 561211770;
      }

      v15 = 0;
      *a7 = *(*(DerivedStorage + 120) + 16);
      return v15;
    }

    if (v14 != 1870098020)
    {
      return 2003332927;
    }

    LODWORD(v30) = a5 >> 2;
    v31 = a2[1];
    if (v31 == 1869968496)
    {
      if (*(DerivedStorage + 144))
      {
        v42 = 2;
      }

      else
      {
        v42 = 1;
      }

      if (*(DerivedStorage + 152))
      {
        ++v42;
      }

      if (v30 >= v42)
      {
        v33 = v42;
      }

      else
      {
        v33 = a5 >> 2;
      }

      if (a5 >= 4)
      {
        *a7 = sub_1DF8(*(DerivedStorage + 136));
        if (v33 >= 2)
        {
          v43 = v13[18];
          if (v43)
          {
            *(a7 + 4) = sub_1DF8(v43);
            v44 = 2;
            LODWORD(v30) = 2;
            if (v33 == 2)
            {
              goto LABEL_159;
            }
          }

          else
          {
            v44 = 1;
          }

          v46 = v13[19];
          if (v46)
          {
            *(a7 + 4 * v44) = sub_1DF8(v46);
          }

          goto LABEL_179;
        }

        goto LABEL_166;
      }
    }

    else if (v31 != 1768845428)
    {
      if (v31 != 1735159650)
      {
        goto LABEL_159;
      }

      if (*(DerivedStorage + 144))
      {
        v32 = 2;
      }

      else
      {
        v32 = 1;
      }

      if (*(DerivedStorage + 152))
      {
        ++v32;
      }

      v33 = v30 >= v32 ? v32 : a5 >> 2;
      if (a5 >= 4)
      {
        *a7 = sub_1DF8(*(DerivedStorage + 136));
        if (v33 >= 2)
        {
          v34 = v13[18];
          if (!v34)
          {
            v30 = 1;
            goto LABEL_177;
          }

          *(a7 + 4) = sub_1DF8(v34);
          v30 = 2;
          if (v33 != 2)
          {
LABEL_177:
            v47 = v13[19];
            if (v47)
            {
              *(a7 + 4 * v30) = sub_1DF8(v47);
            }

LABEL_179:
            LODWORD(v30) = v33;
          }

LABEL_159:
          v15 = 0;
          v29 = 4 * v30;
          goto LABEL_171;
        }

LABEL_166:
        LODWORD(v30) = 1;
        goto LABEL_159;
      }
    }

    LODWORD(v30) = 0;
    goto LABEL_159;
  }

  if (v14 == 1836411236)
  {
    v23 = *(DerivedStorage + 40);
    if (!v23)
    {
      goto LABEL_123;
    }

    *a6 = 8;
    if (a5 < 8)
    {
      return 561211770;
    }

    goto LABEL_125;
  }

  if (v14 != 1853059619)
  {
    return 2003332927;
  }

  v15 = 0;
  *a6 = 0;
  return v15;
}

uint64_t sub_9A04(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int a5, double *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage;
  v42 = 0;
  v43 = 0;
  v12 = *a2;
  if (*a2 == 1718383987)
  {
    if (sub_9F6C(a1))
    {
      v25 = 0;
      *(*(v11 + 120) + 168) = 1;
    }

    else
    {
      v25 = 1970171760;
      sub_E2A4();
    }

    goto LABEL_47;
  }

  if (v12 == 1987012963)
  {
    if (!sub_A05C(a1))
    {
      v25 = 1970171760;
      sub_E290();
      goto LABEL_47;
    }

    if (a5 != 4)
    {
      v25 = 561211770;
      goto LABEL_38;
    }

    v27 = *a6;
    *(v11 + 88) = *a6;
    v28 = CMBaseObjectGetDerivedStorage();
    *&__s2[0] = 0;
    if (v27)
    {
      v29 = &kCFBooleanTrue;
    }

    else
    {
      v29 = &kCFBooleanFalse;
    }

    CMBaseObject = FigEndpointStreamGetCMBaseObject();
    v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v31)
    {
      v32 = v31(CMBaseObject, kFigEndpointStreamProperty_Type, kCFAllocatorDefault, __s2);
      if (!v32)
      {
        if (FigCFEqual())
        {
          if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
          {
            v33 = "true";
            if (!v27)
            {
              v33 = "false";
            }

            LogPrintF(&dword_181C8, "void device_setHTFTIsActive(FigHALAudioObjectRef, Boolean)", 33554482, "[%{ptr}] Updating 'usingVoice' property with value: %s; endpoint stream [%{ptr}].\n", a1, v33, *(v28 + 104));
          }

          v34 = FigEndpointStreamGetCMBaseObject();
          v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v35)
          {
            v35(v34, kAPEndpointStreamProperty_IsHomeTheaterFaceTime, *v29);
          }
        }

        goto LABEL_44;
      }
    }

    else
    {
      v32 = 4294954514;
    }

    sub_E268(v32);
LABEL_44:
    if (*&__s2[0])
    {
      CFRelease(*&__s2[0]);
    }

    goto LABEL_46;
  }

  if (v12 != 1853059700)
  {
    v25 = 2003332927;
    goto LABEL_47;
  }

  memset(__s2, 0, 40);
  v13 = *(DerivedStorage + 120);
  v14 = *(v13 + 32);
  __s1 = *(v13 + 16);
  v39 = v14;
  v40 = *(v13 + 48);
  if (a5 != 8)
  {
    v25 = 561211770;
LABEL_38:
    APSLogErrorAt();
    goto LABEL_47;
  }

  v15 = *a6;
  if (*a6 == *&__s1)
  {
LABEL_46:
    v25 = 0;
    goto LABEL_47;
  }

  v16 = FigHALAudioStreamGetCMBaseObject();
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v17)
  {
    v25 = 4294954514;
    goto LABEL_38;
  }

  v18 = v17(v16, kFigHALAudioStreamProperty_SupportedPCMFormats, kCFAllocatorDefault, &v42);
  if (v18)
  {
    v25 = v18;
    goto LABEL_38;
  }

  v19 = v42;
  Length = CFDataGetLength(v42);
  if (Length < 0x70)
  {
    v25 = 4294967246;
    v37 = 1341;
LABEL_55:
    sub_E2B8(v37, v25);
  }

  else
  {
    v21 = Length / 0x38;
    BytePtr = CFDataGetBytePtr(v19);
    v23 = 0;
    do
    {
      if (*(BytePtr + 5) <= v15 && *(BytePtr + 6) >= v15)
      {
        v23 = BytePtr;
        if (*(BytePtr + 7) == HIDWORD(v39))
        {
          v23 = BytePtr;
          if (*(BytePtr + 8) >= v40)
          {
            v23 = BytePtr;
            goto LABEL_16;
          }
        }
      }

      BytePtr += 56;
      --v21;
    }

    while (v21);
    if (!v23)
    {
      v25 = 1970171760;
      v37 = 1358;
      goto LABEL_55;
    }

LABEL_16:
    *__s2 = v15;
    v24 = *(v23 + 24);
    *(__s2 + 8) = *(v23 + 8);
    *(&__s2[1] + 8) = v24;
    if (!memcmp(&__s1, __s2, 0x28uLL))
    {
      goto LABEL_46;
    }

    sub_1DF8(*(v11 + 136));
    v25 = FigHALAudioConfigChangeCreateRecord();
    if (v25)
    {
      APSLogErrorAt();
    }

    else
    {
      v26 = v43;
      *(v43 + 16) = __s2[0];
      *(v26 + 32) = __s2[1];
      *(v26 + 48) = *&__s2[2];
      FigHALAudioConfigChangeSendRequest();
      v43 = 0;
    }
  }

LABEL_47:
  FigHALAudioConfigChangeDisposeRecord();
  if (v42)
  {
    CFRelease(v42);
  }

  return v25;
}

BOOL sub_9F6C(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  cf1 = 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v3 = v2(CMBaseObject, kFigEndpointStreamProperty_Type, kCFAllocatorDefault, &cf1);
    if (!v3)
    {
      v4 = CFEqual(cf1, kFigEndpointStreamType_LowLatencyAudio) == 0;
      goto LABEL_4;
    }
  }

  else
  {
    v3 = 4294954514;
  }

  sub_E308(v3);
  v4 = 1;
LABEL_4:
  if (cf1)
  {
    CFRelease(cf1);
  }

  return v4;
}

BOOL sub_A05C(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  cf1 = 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    v3 = 4294954514;
    goto LABEL_9;
  }

  v3 = v2(CMBaseObject, kFigEndpointStreamProperty_Type, kCFAllocatorDefault, &cf1);
  if (v3)
  {
LABEL_9:
    sub_E35C(v3);
    goto LABEL_10;
  }

  if (cf1)
  {
    v4 = CFEqual(cf1, kFigEndpointStreamType_LowLatencyAudio) != 0;
    goto LABEL_5;
  }

  sub_E330();
LABEL_10:
  v4 = 0;
LABEL_5:
  if (cf1)
  {
    CFRelease(cf1);
  }

  return v4;
}

uint64_t sub_A158(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf1 = 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    v5 = 4294954514;
    goto LABEL_16;
  }

  v5 = v4(CMBaseObject, kFigEndpointStreamProperty_Type, kCFAllocatorDefault, &cf1);
  if (v5)
  {
LABEL_16:
    sub_E384(v5);
    v9 = 0;
    goto LABEL_33;
  }

  if (CFEqual(cf1, kFigEndpointStreamType_LowLatencyAudio) && !*(DerivedStorage + 88))
  {
    UInt32 = 128;
  }

  else if (*(*(DerivedStorage + 120) + 80))
  {
    v6 = FigHALAudioConduitDeviceCopyProperty();
    if (v6)
    {
      if (dword_181C8 <= 90 && ((v7 = v6, dword_181C8 != -1) || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_181C8, "UInt32 device_getCalculatedBufferFrameSize(FigHALAudioObjectRef)", 33554522, "[%{ptr}] Conduit device %{ptr} returned %d for DesiredNumberPackets; using %u for BufferFrameSize\n", a1, *(*(DerivedStorage + 120) + 80), v7, 480);
        UInt32 = 480;
      }

      else
      {
        UInt32 = 480;
      }
    }

    else
    {
      UInt32 = FigCFNumberGetUInt32();
      if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_181C8, "UInt32 device_getCalculatedBufferFrameSize(FigHALAudioObjectRef)", 33554482, "[%{ptr}] Conduit device %{ptr} DesiredNumberPackets for BufferFrameSize: %u\n", a1, *(*(DerivedStorage + 120) + 80), UInt32);
      }
    }
  }

  else
  {
    UInt32 = 0;
  }

  IntWithDefault = APSSettingsGetIntWithDefault();
  if (IntWithDefault)
  {
    v9 = IntWithDefault;
    if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_181C8, "UInt32 device_getCalculatedBufferFrameSize(FigHALAudioObjectRef)", 33554482, "[%{ptr}] Using forced BufferFrameSize %u instead of %u for stream type %@.\n", a1, v9, UInt32, cf1);
    }
  }

  else
  {
    if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
    {
      if (*(DerivedStorage + 88))
      {
        v11 = "true";
      }

      else
      {
        v11 = "false";
      }

      LogPrintF(&dword_181C8, "UInt32 device_getCalculatedBufferFrameSize(FigHALAudioObjectRef)", 33554482, "[%{ptr}] BufferFrameSize set to %u; and 'usingVoice' property is %s.\n", a1, UInt32, v11);
    }

    v9 = UInt32;
  }

LABEL_33:
  if (cf1)
  {
    CFRelease(cf1);
  }

  return v9;
}

uint64_t sub_A490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(CMBaseObject, a2, a3);
  }

  return result;
}

CFTypeRef sub_A544(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 24);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t sub_A57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 != 1818326115 && a2 != 1718579821)
  {
    fig_log_get_emitter();
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v10[1]);
    goto LABEL_10;
  }

  if (!a3)
  {
    sub_E3AC(v10);
    v8 = v10[0];
    goto LABEL_10;
  }

  v6 = *(DerivedStorage + 136);
  v7 = *(*(CMBaseObjectGetVTable() + 24) + 16);
  if (!v7)
  {
    v8 = 4294954514;
    goto LABEL_8;
  }

  v8 = v7(v6, a2, a3);
  if (v8)
  {
LABEL_8:
    APSLogErrorAt();
    goto LABEL_10;
  }

  FigHALAudioPropertySendChanges();
LABEL_10:
  FigHALAudioConfigChangeDisposeRecord();
  return v8;
}

uint64_t sub_A728(uint64_t a1)
{
  v55[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v53 = kCMTimeInvalid;
  v54 = 0;
  v52 = v53;
  v50 = 0;
  v51 = 0;
  *bytes = 0u;
  v49 = 0u;
  mach_absolute_time();
  if (!*(DerivedStorage + 112))
  {
    sub_E7C8(v55, &time);
    goto LABEL_100;
  }

  if (*(DerivedStorage + 172))
  {
    sub_E424(v55, &time);
LABEL_100:
    Mutable = 0;
    SInt32 = 0;
    v5 = 0;
    if (!LODWORD(time.value))
    {
      goto LABEL_76;
    }

    goto LABEL_65;
  }

  APSRealTimeAllocatorGetDefault();
  if (*(DerivedStorage + 168))
  {
LABEL_4:
    Mutable = 0;
LABEL_5:
    SInt32 = 0;
    v5 = 0;
    goto LABEL_64;
  }

  v7 = DerivedStorage + 120;
  v6 = *(DerivedStorage + 120);
  v8 = *(v6 + 32);
  *(v6 + 104) = *(v6 + 16);
  *(v6 + 120) = v8;
  *(v6 + 136) = *(v6 + 48);
  v9 = *(DerivedStorage + 120);
  v10 = *(v9 + 128);
  v11 = *(v9 + 104);
  *(v9 + 172) = 0;
  *(v9 + 176) = v11;
  *(v9 + 180) = v10;
  *(v9 + 168) = 0;
  *(*(DerivedStorage + 120) + 160) = 0;
  v13 = (DerivedStorage + 176);
  v12 = *(DerivedStorage + 176);
  if (v12)
  {
    CFRelease(v12);
    *v13 = 0;
  }

  if (FigCFEqual())
  {
    v14 = kCFAllocatorDefault;
    v15 = CMTimeSyncClockCreateForSystemDomainClockIdentifier();
    v55[0] = v15;
    if (v15)
    {
      sub_E4AC(v15);
      goto LABEL_4;
    }

    v16 = v54;
  }

  else
  {
    HostTimeClock = CMClockGetHostTimeClock();
    if (HostTimeClock)
    {
      v16 = CFRetain(HostTimeClock);
    }

    else
    {
      v16 = 0;
    }

    v54 = v16;
    v14 = kCFAllocatorDefault;
  }

  v18 = CMTimebaseCreateWithSourceClock(v14, v16, (DerivedStorage + 176));
  v55[0] = v18;
  if (v18)
  {
    sub_E4D4(v18);
    goto LABEL_4;
  }

  CMClockGetTime(&v53, v54);
  v19 = v54;
  v20 = CMClockGetHostTimeClock();
  time = v53;
  CMSyncConvertTime(&v52, &time, v19, v20);
  v21 = *v13;
  time = kCMTimeZero;
  immediateSourceTime = v53;
  v22 = CMTimebaseSetRateAndAnchorTime(v21, 1.0, &time, &immediateSourceTime);
  v55[0] = v22;
  if (v22)
  {
    sub_E4FC(v22);
    goto LABEL_4;
  }

  v23 = APAudioSourceConduitCreate();
  v55[0] = v23;
  if (v23)
  {
    sub_E524(v23);
    goto LABEL_4;
  }

  if (IsAppleInternalBuild())
  {
    APSRingBufferCreate();
  }

  v24 = *(DerivedStorage + 136);
  v25 = *(*(CMBaseObjectGetVTable() + 24) + 32);
  if (!v25)
  {
    v26 = 4294954514;
    v55[0] = -12782;
    goto LABEL_92;
  }

  v26 = v25(v24);
  v55[0] = v26;
  if (v26)
  {
LABEL_92:
    sub_E7A0(v26);
    goto LABEL_4;
  }

  Mutable = CFDictionaryCreateMutable(v14, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    time = v52;
    v27 = FigCFDictionarySetCMTime();
    v55[0] = v27;
    if (v27)
    {
      sub_E54C(v27);
      goto LABEL_5;
    }

    FigCFDictionarySetValue();
    if (*(*v7 + 56))
    {
      ASBD = APSAudioFormatDescriptionGetASBD();
      v5 = CFDataCreate(v14, ASBD, 40);
      if (v5)
      {
        FigCFDictionarySetValue();
        if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
        {
          sub_E574(DerivedStorage + 120);
        }

        goto LABEL_39;
      }

      sub_E5C8(v55);
    }

    else
    {
      if (*(DerivedStorage + 84) != 1885433964 || *(*v7 + 44) < 3u)
      {
        v5 = 0;
        goto LABEL_39;
      }

      v29 = ASBDToAPAudioFormat();
      v55[0] = v29;
      if (v29)
      {
        sub_E608(v29);
        goto LABEL_5;
      }

      APAudioFormatGetTransportAudioFormatForPCMFormatSender();
      v30 = APAudioFormatToASBD();
      v55[0] = v30;
      if (v30)
      {
        sub_E630(v30);
        goto LABEL_5;
      }

      v5 = CFDataCreate(v14, bytes, 40);
      if (v5)
      {
        FigCFDictionarySetValue();
        if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_181C8, "OSStatus device_StartIO(FigHALAudioDeviceRef)", 33554482, "[%{ptr}] LLA Multichannel Audio format %{asbd} sent to audio engine for transport format.\n", a1, bytes);
        }

LABEL_39:
        if (*(DerivedStorage + 89))
        {
          FigCFDictionarySetValue();
        }

        v31 = FigEndpointStreamAudioEngineResumeSync();
        v55[0] = v31;
        if (v31)
        {
          sub_E658(v31);
          SInt32 = 0;
          goto LABEL_64;
        }

        mach_absolute_time();
        SInt32 = FigCFNumberCreateSInt32();
        sub_A490(*(DerivedStorage + 104), kFigEndpointStreamProperty_SubStreamResumptionTimeOutMs, SInt32);
        v32 = FigEndpointStreamAudioEngineSetEndpointStreamSync();
        v55[0] = v32;
        if (v32 <= 200400)
        {
          if (v32 == -15486)
          {
            if (dword_181C8 <= 90 && (dword_181C8 != -1 || _LogCategory_Initialize()))
            {
              sub_E6BC(a1, v33, v34);
            }

            goto LABEL_53;
          }

          if (!v32)
          {
            goto LABEL_55;
          }
        }

        else if (v32 == 200401 || v32 == 200470)
        {
          if (dword_181C8 <= 90 && (dword_181C8 != -1 || _LogCategory_Initialize()))
          {
            sub_E680(a1, v33, v34);
          }

LABEL_53:
          v55[0] = 0;
LABEL_55:
          mach_absolute_time();
          v35 = APSGetFBOPropertyInt64();
          if (v55[0])
          {
            v36 = 0;
          }

          else
          {
            v36 = v35;
          }

          *(DerivedStorage + 64) = v36;
          if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_181C8, "OSStatus device_StartIO(FigHALAudioDeviceRef)", 33554482, "[%{ptr}] Setting dynamic latency offset to %d\n", a1, v36);
          }

          APSSettingsGetDouble();
          v37 = APSZTSControllerCreate();
          v55[0] = v37;
          if (v37)
          {
            sub_E6F8(v37);
          }

          else
          {
            *(*(DerivedStorage + 120) + 184) = 1;
            *(DerivedStorage + 168) = 1;
          }

          goto LABEL_64;
        }

        APSLogErrorAt();
        if (dword_181C8 <= 90 && (dword_181C8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_181C8, "OSStatus device_StartIO(FigHALAudioDeviceRef)", 33554522, "### [%{ptr}] ESAE resume failed err=%#m\n", a1, v55[0]);
        }

LABEL_64:
        if (!v55[0])
        {
          goto LABEL_76;
        }

        goto LABEL_65;
      }

      sub_E720(v55);
    }
  }

  else
  {
    sub_E760(v55);
    v5 = 0;
  }

  SInt32 = 0;
LABEL_65:
  v38 = *(DerivedStorage + 136);
  v39 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  if (v39)
  {
    v39(v38);
  }

  v40 = *(*(DerivedStorage + 120) + 144);
  if (v40)
  {
    CFRelease(v40);
    *(*(DerivedStorage + 120) + 144) = 0;
  }

  v41 = *(DerivedStorage + 176);
  if (v41)
  {
    CFRelease(v41);
    *(DerivedStorage + 176) = 0;
  }

  v42 = *(DerivedStorage + 56);
  if (v42)
  {
    CFRelease(v42);
    *(DerivedStorage + 56) = 0;
  }

  v43 = *(DerivedStorage + 112);
  if (v43)
  {
    v44 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v44)
    {
      v44(v43, 0, 0, 0);
    }
  }

LABEL_76:
  if (v54)
  {
    CFRelease(v54);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  mach_absolute_time();
  if (dword_181C8 <= 50)
  {
    if (dword_181C8 != -1 || _LogCategory_Initialize())
    {
      sub_E850();
    }

    if (dword_181C8 <= 50 && (dword_181C8 != -1 || _LogCategory_Initialize()))
    {
      sub_E8AC();
    }
  }

  return v55[0];
}

uint64_t sub_B0D8(uint64_t a1, double *a2, void *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(*(DerivedStorage + 120) + 184))
  {
    v8 = DerivedStorage;
    mach_absolute_time();
    ZeroTimeStamp = APSZTSControllerGetZeroTimeStamp();
    if (ZeroTimeStamp)
    {
      v10 = ZeroTimeStamp;
      sub_E908(ZeroTimeStamp);
    }

    else
    {
      *a2 = 0.0;
      *a3 = 0;
      *a4 = 0;
      if (*(*(v8 + 120) + 88))
      {
        APSRingBufferEnqueueBytes();
      }

      kdebug_trace();
      return 0;
    }
  }

  else
  {
    sub_E930();
    return 1937010544;
  }

  return v10;
}

uint64_t sub_B1F4(uint64_t a1, int a2, BOOL *a3, BOOL *a4)
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 120) + 184))
  {
    result = 0;
    *a3 = a2 == 1919513701;
    *a4 = a2 == 1919513701;
  }

  else
  {
    sub_E944();
    return 1937010544;
  }

  return result;
}

uint64_t sub_B260(uint64_t a1)
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 120) + 184))
  {
    return 0;
  }

  sub_E958();
  return 1937010544;
}

uint64_t sub_B298(uint64_t a1)
{
  if (*(*(CMBaseObjectGetDerivedStorage() + 120) + 184))
  {
    return 0;
  }

  sub_E96C();
  return 1937010544;
}

void sub_B2D0(id a1)
{
  qword_182D8 = 0;
  unk_182E0 = "APHALAudioSharedState";
  qword_182E8 = sub_B330;
  unk_182F0 = 0;
  qword_182F8 = sub_B354;
  unk_18300 = 0u;
  unk_18310 = 0u;
  qword_182D0 = _CFRuntimeRegisterClass();
}

double sub_B330(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void sub_B354(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[7] = 0;
}

uint64_t sub_B3B4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 33554522, a4);
}

uint64_t sub_B3E4(const __CFAllocator *a1, CFDataRef *a2)
{
  *bytes = 3240582185;
  v3 = CFDataCreate(a1, bytes, 8);
  if (v3)
  {
    v4 = v3;
    result = 0;
    *a2 = v4;
  }

  else
  {
    sub_E980(&v7);
    return v7;
  }

  return result;
}

uint64_t sub_B444(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const void *a5, CFTypeRef *a6)
{
  FigHALAudioObjectGetClassID();
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    v14 = v10;
    sub_E9FC(v10);
  }

  else
  {
    v11 = FigHALAudioObjectMapperAddMapping();
    if (v11)
    {
      v14 = v11;
      sub_EA24(v11);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = a3;
      *(DerivedStorage + 8) = 0;
      *(DerivedStorage + 12) = a4;
      if (a5)
      {
        v13 = CFRetain(a5);
      }

      else
      {
        v13 = 0;
      }

      v14 = 0;
      *(DerivedStorage + 16) = v13;
      *a6 = 0;
    }
  }

  return v14;
}

uint64_t sub_B530(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const void *a5, CFTypeRef *a6)
{
  FigHALAudioObjectGetClassID();
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    v14 = v10;
    sub_EA4C(v10);
  }

  else
  {
    v11 = FigHALAudioObjectMapperAddMapping();
    if (v11)
    {
      v14 = v11;
      sub_EA74(v11);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = a3;
      *(DerivedStorage + 8) = 0;
      *(DerivedStorage + 12) = a4;
      if (a5)
      {
        v13 = CFRetain(a5);
      }

      else
      {
        v13 = 0;
      }

      v14 = 0;
      *(DerivedStorage + 16) = v13;
      *a6 = 0;
    }
  }

  return v14;
}

void sub_B61C(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }
}

CFStringRef sub_B650(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  if (*(BytePtr + 1))
  {
    v3 = " MUTED";
  }

  else
  {
    v3 = "";
  }

  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"APAudioVolumeControl ID %d Owner %d VolumeDB %f%s", *(DerivedStorage + 8), *(DerivedStorage + 12), *BytePtr, v3);
}

uint64_t sub_B6F4(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 <= 1818453105)
  {
    if (v3 > 1668047218)
    {
      v8 = v3 == 1668047219;
      v9 = 1668506480;
    }

    else
    {
      v8 = v3 == 1650682995;
      v9 = 1667591277;
    }

    goto LABEL_16;
  }

  if (v3 > 1818456931)
  {
    v8 = v3 == 1818456932 || v3 == 1937007734;
    v9 = 1818456950;
LABEL_16:
    if (v8 || v3 == v9)
    {
      return 1;
    }

    return result;
  }

  v4 = v3 - 1818453106;
  v5 = v4 > 4;
  v6 = (1 << v4) & 0x13;
  if (!v5 && v6 != 0)
  {
    return 1;
  }

  return result;
}

uint64_t sub_B7D8(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 1818453106)
  {
    if (v2 <= 1818456931)
    {
      if (v2 != 1818453107 && v2 != 1818453110)
      {
        return 0;
      }

      return 4;
    }

    if (v2 == 1818456932 || v2 == 1818456950)
    {
      return 4;
    }

    v6 = 1937007734;
LABEL_18:
    if (v2 == v6)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }

  if (v2 <= 1668047218)
  {
    if (v2 == 1650682995)
    {
      return 4;
    }

    v6 = 1667591277;
    goto LABEL_18;
  }

  if (v2 == 1668047219)
  {
    return 4;
  }

  if (v2 == 1818453106)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 1668506480)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_B8C4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, float *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  v13 = *a2;
  v14 = 2003332927;
  if (v13 > 1818453106)
  {
    if (v13 <= 1818456931)
    {
      if (v13 != 1818453107)
      {
        if (v13 != 1818453110)
        {
          return v14;
        }

        if (*(BytePtr + 1))
        {
          v16 = -1022361600;
        }

        else
        {
          v16 = *BytePtr;
        }

        *a6 = 4;
        if (a5 < 4)
        {
          v14 = 561211770;
          goto LABEL_46;
        }

LABEL_43:
        v14 = 0;
        goto LABEL_44;
      }

      if (a5 != 4)
      {
        v14 = 561211770;
        goto LABEL_46;
      }

      APSVolumeConvertDBToSliderValue();
    }

    else
    {
      if (v13 != 1818456932)
      {
        if (v13 != 1818456950)
        {
          if (v13 != 1937007734)
          {
            return v14;
          }

          *a6 = 4;
          if (a5 < 4)
          {
            return 561211770;
          }

          v14 = 0;
          v15 = *(DerivedStorage + 12);
LABEL_33:
          *a7 = v15;
          return v14;
        }

        v16 = 0;
        if (!*(BytePtr + 1))
        {
          APSVolumeConvertDBToSliderValue();
        }

        *a6 = 4;
        if (a5 < 4)
        {
          v14 = 561211770;
LABEL_46:
          APSLogErrorAt();
          return v14;
        }

        goto LABEL_43;
      }

      if (a5 != 4)
      {
        v14 = 561211770;
        goto LABEL_46;
      }

      APSVolumeConvertSliderValueToDB();
    }

    v14 = 0;
    *a6 = 4;
LABEL_44:
    *a7 = v16;
    return v14;
  }

  if (v13 <= 1668047218)
  {
    if (v13 != 1650682995)
    {
      if (v13 != 1667591277)
      {
        return v14;
      }

      *a6 = 4;
      if (a5 >= 4)
      {
        v14 = 0;
        *a7 = 0.0;
        return v14;
      }

      return 561211770;
    }

    *a6 = 4;
    if (a5 < 4)
    {
      return 561211770;
    }

    v14 = 0;
    v15 = 1818588780;
    goto LABEL_33;
  }

  switch(v13)
  {
    case 1668047219:
      *a6 = 4;
      if (a5 < 4)
      {
        return 561211770;
      }

      v14 = 0;
      v15 = 1986817381;
      goto LABEL_33;
    case 1668506480:
      *a6 = 4;
      if (a5 < 4)
      {
        return 561211770;
      }

      v14 = 0;
      v15 = 1869968496;
      goto LABEL_33;
    case 1818453106:
      *a6 = 16;
      if (a5 >= 0x10)
      {
        v14 = 0;
        *a7 = xmmword_F3C0;
        return v14;
      }

      return 561211770;
  }

  return v14;
}

uint64_t sub_BBD0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int a5, float *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
  if (*a2 == 1818453110)
  {
    if (a5 == 4)
    {
      v11 = *a6;
      goto LABEL_7;
    }

    v12 = 561211770;
LABEL_11:
    APSLogErrorAt();
    return v12;
  }

  if (*a2 != 1818456950)
  {
    return 2003332927;
  }

  if (a5 != 4)
  {
    v12 = 561211770;
    goto LABEL_11;
  }

  APSVolumeConvertSliderValueToDB();
LABEL_7:
  *BytePtr = v11;
  FigHALAudioPropertySendChanges();
  return 0;
}

CFStringRef sub_BD1C(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CFDataGetBytePtr(*(DerivedStorage + 16)) + 1))
  {
    v2 = "";
  }

  else
  {
    v2 = "Not ";
  }

  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"APAudioMuteControl ID %d Owner %d %sMuted", *(DerivedStorage + 8), *(DerivedStorage + 12), v2);
}

uint64_t sub_BD98(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 > 1668047218)
  {
    v4 = v3 == 1668047219 || v3 == 1937007734;
    v5 = 1668506480;
  }

  else
  {
    v4 = v3 == 1650682995 || v3 == 1650685548;
    v5 = 1667591277;
  }

  if (v4 || v3 == v5)
  {
    return 1;
  }

  return result;
}

uint64_t sub_BE1C(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 1668047218)
  {
    if (v2 != 1937007734 && v2 != 1668506480 && v2 != 1668047219)
    {
      return 0;
    }

    return 4;
  }

  if (v2 == 1650682995)
  {
    return 4;
  }

  if (v2 == 1667591277)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 1650685548)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_BEAC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6, int *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *a2;
  result = 2003332927;
  if (*a2 > 1668047218)
  {
    if (v12 == 1668047219)
    {
      *a6 = 4;
      if (a5 > 3)
      {
        v14 = 1836414053;
        goto LABEL_21;
      }

      return 561211770;
    }

    if (v12 == 1668506480)
    {
      *a6 = 4;
      if (a5 > 3)
      {
        v14 = 1869968496;
        goto LABEL_21;
      }

      return 561211770;
    }

    if (v12 != 1937007734)
    {
      return result;
    }

    *a6 = 4;
    if (a5 < 4)
    {
      return 561211770;
    }

    v15 = (DerivedStorage + 12);
    goto LABEL_18;
  }

  if (v12 != 1650682995)
  {
    if (v12 != 1650685548)
    {
      if (v12 != 1667591277)
      {
        return result;
      }

      *a6 = 4;
      if (a5 > 3)
      {
        v14 = 0;
LABEL_21:
        result = 0;
        *a7 = v14;
        return result;
      }

      return 561211770;
    }

    *a6 = 4;
    if (a5 < 4)
    {
      return 561211770;
    }

    v15 = CFDataGetBytePtr(*(DerivedStorage + 16)) + 4;
LABEL_18:
    v14 = *v15;
    goto LABEL_21;
  }

  *a6 = 4;
  if (a5 > 3)
  {
    v14 = 1953458028;
    goto LABEL_21;
  }

  return 561211770;
}

uint64_t sub_C01C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*a2 != 1650685548)
  {
    return 2003332927;
  }

  if (a5 == 4)
  {
    v10 = *a6;
    BytePtr = CFDataGetBytePtr(*(DerivedStorage + 16));
    if (v10 != *(BytePtr + 1))
    {
      *(BytePtr + 1) = v10 != 0;
      FigHALAudioPropertySendOneChange();
    }

    return 0;
  }

  else
  {
    v12 = 561211770;
    APSLogErrorAt();
  }

  return v12;
}

uint64_t sub_C0F0()
{
  if (IsAppleInternalBuild())
  {
    LogControl();
  }

  else
  {
    LogControl();
    v0 = dlsym(0xFFFFFFFFFFFFFFFFLL, "MediaControlSenderLogControl");
    if (v0)
    {
      v0("?.*:output2=");
    }
  }

  return LogControl();
}

uint64_t sub_C1DC(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  APSLogErrorAt();
  return 0;
}

uint64_t sub_C27C(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }

  return APSLogErrorAt();
}

BOOL sub_C404(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

uint64_t sub_C52C(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  APSLogErrorAt();
  return 0;
}

double sub_C5CC(uint64_t *a1)
{
  BytePtr = CFDataGetBytePtr(*(*a1 + 64));
  v3 = *a1;
  v4 = *BytePtr;
  v5 = *(BytePtr + 1);
  *(v3 + 48) = *(BytePtr + 4);
  *(v3 + 16) = v4;
  *(v3 + 32) = v5;
  result = *(BytePtr + 5);
  *(*a1 + 16) = result;
  return result;
}

uint64_t sub_C780(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t sub_C8E4(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  APSLogErrorAt();
  return 0;
}

const UInt8 *sub_C97C(uint64_t *a1)
{
  result = APSAudioFormatDescriptionListGetFormatCount();
  if (result)
  {
    if (dword_180E0 < 51)
    {
      if (dword_180E0 != -1 || (result = _LogCategory_Initialize(), result))
      {
        v4 = "Verifying default output format [%{asbd}]";
        return sub_5434(&dword_180E0, "OSStatus VerifyDefaultOutputFormat(APHALAudioStreamStorage *)", v3, v4);
      }
    }
  }

  else
  {
    result = CFDataGetBytePtr(*(*a1 + 64));
    v5 = *a1;
    v6 = *result;
    v7 = *(result + 1);
    *(v5 + 48) = *(result + 4);
    *(v5 + 16) = v6;
    *(v5 + 32) = v7;
    *(*a1 + 16) = *(result + 5);
    if (dword_180E0 < 51)
    {
      if (dword_180E0 != -1)
      {
        v4 = "Initializing default output format [%{asbd}]";
        return sub_5434(&dword_180E0, "OSStatus VerifyDefaultOutputFormat(APHALAudioStreamStorage *)", v3, v4);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        v4 = "Initializing default output format [%{asbd}]";
        return sub_5434(&dword_180E0, "OSStatus VerifyDefaultOutputFormat(APHALAudioStreamStorage *)", v3, v4);
      }
    }
  }

  return result;
}

uint64_t sub_CC6C(uint64_t a1, _DWORD *a2)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  sub_544C();
  result = FigSignalErrorAtGM(v3);
  *a2 = result;
  return result;
}

uint64_t sub_CD20(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  sub_544C();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t sub_CDF8(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  sub_544C();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t sub_CF24(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  sub_544C();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t sub_CFDC(uint64_t a1, uint64_t a2)
{
  result = APSLogErrorAt();
  *(*a2 + 168) = 1;
  return result;
}

uint64_t sub_D124(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  sub_544C();
  result = FigSignalErrorAtGM(v2);
  *a1 = result;
  return result;
}

uint64_t *APHALPlugin_Create(uint64_t a1, const void *a2)
{
  if (APSIsRemoteHALPluginLoadingEnabled())
  {
    if (!FigServer_IsAirplayd())
    {
      return 0;
    }

    off_18150 = 0;
  }

  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
  if (!CFEqual(a2, v3))
  {
    return 0;
  }

  v4 = &qword_182A8;
  qword_182A8 = FigHALPluginDriverGetInterface();
  if (FigHALAudioObjectMapperCreate() || FigHALAudioCreateBrokeredPluginObjectWithSpecialInstantiator())
  {
    APSLogErrorAt();
    return 0;
  }

  FigAtomicIncrement32();
  return v4;
}

void sub_D4E8(uint64_t a1, CFTypeRef *a2)
{
  APSLogErrorAt();
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t sub_D528(_DWORD *a1)
{
  APSLogErrorAt();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t sub_D5E0(uint64_t a1, float a2)
{
  v2 = "YES";
  if (!*(a1 + 4))
  {
    v2 = "NO";
  }

  return LogPrintF(&dword_18158, "void volumeControl_DACPDeviceVolumeNotificationCallback(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)", 33554472, "isMuted = %s, newVolume = %f", v2, a2);
}

uint64_t sub_D9B8(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t sub_DACC(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  if (!v2)
  {
    return 1;
  }

  APSLogErrorAt();
  return 0;
}

uint64_t sub_DFA4(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t sub_E05C(uint64_t a1)
{
  result = APSLogErrorAt();
  if (dword_181C8 <= 90)
  {
    if (dword_181C8 != -1)
    {
      return sub_B3B4(&dword_181C8, "OSStatus device_copyPropertyFromConduitDevice(FigHALAudioConduitDeviceRef, const CFStringRef, const char *, CFStringRef *)", v2, "Copy property %@ from conduit [%{ptr}] failed with error=%d");
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_B3B4(&dword_181C8, "OSStatus device_copyPropertyFromConduitDevice(FigHALAudioConduitDeviceRef, const CFStringRef, const char *, CFStringRef *)", v2, "Copy property %@ from conduit [%{ptr}] failed with error=%d");
    }
  }

  return result;
}

uint64_t sub_E1A0()
{
  mach_absolute_time();
  v0 = UpTicksPerSecond();
  sub_B390(v0);
  return sub_5434(&dword_181C8, "OSStatus device_StopIO(FigHALAudioDeviceRef)", v1, "[%{ptr}] StopIO total: %1.3f ms\n");
}

uint64_t sub_E3AC(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t sub_E424(_DWORD *a1, _DWORD *a2)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = result;
  *a1 = result;
  return result;
}

uint64_t sub_E5C8(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t sub_E720(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t sub_E760(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -12786;
  return result;
}

uint64_t sub_E7C8(_DWORD *a1, _DWORD *a2)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  sub_5410();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = result;
  *a1 = result;
  return result;
}

uint64_t sub_E850()
{
  v0 = UpTicksPerSecond();
  sub_B390(v0);
  return sub_5434(&dword_181C8, "OSStatus device_StartIO(FigHALAudioDeviceRef)", v1, "[%{ptr}] StartIO total: %1.3f ms\n");
}

uint64_t sub_E8AC()
{
  v0 = UpTicksPerSecond();
  sub_B390(v0);
  return sub_5434(&dword_181C8, "OSStatus device_StartIO(FigHALAudioDeviceRef)", v1, "[%{ptr}] StartIO setEndpointStream: %1.3f ms\n");
}

uint64_t sub_E980(_DWORD *a1)
{
  APSLogErrorAt();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}