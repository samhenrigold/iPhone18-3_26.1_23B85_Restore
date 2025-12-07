char *TIFFFetchDirectory(uint64_t a1, uint64_t a2, uint64_t *a3, int8x8_t *a4)
{
  if (!a3)
  {
    TIFFFetchDirectory_cold_1();
  }

  *(a1 + 24) = a2;
  if (a4)
  {
    *a4 = 0;
  }

  __dst = 0;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if ((v7 & 0x800) == 0)
  {
    if (_TIFFSeekOK(a1, v8))
    {
      if ((*(a1 + 18) & 8) != 0)
      {
        v30 = 0;
        if ((*(a1 + 1208))(*(a1 + 1200), &v30, 8) == 8)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabLong8(&v30);
          }

          v9 = v30.i16[0];
          if (*&v30 <= 0x1000uLL)
          {
            __dst = v30.i16[0];
            v10 = 20;
LABEL_26:
            result = _TIFFCheckMalloc(a1, v9, v10, "to read TIFF directory");
            if (!result)
            {
              return result;
            }

            v15 = result;
            v16 = (*(a1 + 1208))(*(a1 + 1200), result, v10 * __dst);
            if (v16 != v10 * __dst)
            {
              TIFFErrorExtR(a1, "TIFFFetchDirectory", "%.100s: Can not read TIFF directory");
              goto LABEL_82;
            }

            if (a4)
            {
              if ((*(a1 + 18) & 8) == 0)
              {
                v30.i32[0] = 0;
                if ((*(a1 + 1208))(*(a1 + 1200), &v30, 4) != 4)
                {
                  v30.i32[0] = 0;
                }

                LOBYTE(v18) = *(a1 + 16);
LABEL_33:
                if ((v18 & 0x80) != 0)
                {
                  TIFFSwabLong(&v30, v17);
                }

                *a4 = v30.u32[0];
                goto LABEL_66;
              }

              if ((*(a1 + 1208))(*(a1 + 1200), a4, 8) != 8)
              {
                *a4 = 0;
              }

              LOBYTE(v18) = *(a1 + 16);
LABEL_59:
              if ((v18 & 0x80) != 0)
              {
                TIFFSwabLong8(a4);
              }

              goto LABEL_66;
            }

            goto LABEL_66;
          }

          goto LABEL_43;
        }
      }

      else if ((*(a1 + 1208))(*(a1 + 1200), &__dst, 2) == 2)
      {
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabShort(&__dst);
        }

        v9 = __dst;
        if (__dst <= 0x1000u)
        {
          v10 = 12;
          goto LABEL_26;
        }

        goto LABEL_43;
      }

      TIFFErrorExtR(a1, "TIFFFetchDirectory", "%s: Can not read TIFF directory count");
    }

    else
    {
      TIFFErrorExtR(a1, "TIFFFetchDirectory", "%s: Seek error accessing TIFF directory");
    }

    return 0;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  if ((v7 & 0x80000) == 0)
  {
    if (v8 <= 0x7FFFFFFFFFFFFFFDLL)
    {
      v11 = v8 + 2;
      if ((v8 + 2) <= *(a1 + 1176))
      {
        _TIFFmemcpy(&__dst, (*(a1 + 1168) + v8), 2uLL);
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabShort(&__dst);
        }

        v12 = __dst;
        if (__dst <= 0x1000u)
        {
          v13 = 12;
          goto LABEL_49;
        }

LABEL_43:
        TIFFErrorExtR(a1, "TIFFFetchDirectory", "Sanity check on directory count failed, this is probably not a valid IFD offset");
        return 0;
      }
    }

LABEL_38:
    TIFFErrorExtR(a1, "TIFFFetchDirectory", "Can not read TIFF directory count");
    return 0;
  }

  v30 = 0;
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_38;
  }

  v11 = v8 + 8;
  if ((v8 + 8) > *(a1 + 1176))
  {
    goto LABEL_38;
  }

  _TIFFmemcpy(&v30, (*(a1 + 1168) + v8), 8uLL);
  if ((*(a1 + 16) & 0x80) != 0)
  {
    TIFFSwabLong8(&v30);
  }

  if (*&v30 > 0x1000uLL)
  {
    goto LABEL_43;
  }

  v12 = v30.u16[0];
  __dst = v30.i16[0];
  v13 = 20;
LABEL_49:
  if (!v12)
  {
    TIFFErrorExtR(a1, "TIFFFetchDirectory", "Sanity check on directory count failed, zero tag directories not supported");
    return 0;
  }

  v19 = (*(a1 + 1240))(*(a1 + 1200));
  if (__dst * v13 > v19)
  {
    TIFFWarningExtR(a1, "TIFFFetchDirectory", "Requested memory size for TIFF directory of %llu is greater than filesize %llu. Memory not allocated, TIFF directory not read", __dst * v13, v19);
    return 0;
  }

  result = _TIFFCheckMalloc(a1, __dst, v13, "to read TIFF directory");
  if (!result)
  {
    return result;
  }

  v15 = result;
  v20 = v13 * __dst;
  if ((v11 + v20) > *(a1 + 1176))
  {
    TIFFErrorExtR(a1, "TIFFFetchDirectory", "Can not read TIFF directory");
LABEL_82:
    free(v15);
    return 0;
  }

  _TIFFmemcpy(result, (*(a1 + 1168) + v11), v20);
  if (a4)
  {
    v21 = v11 + v13 * __dst;
    v18 = *(a1 + 16);
    if ((v18 & 0x80000) == 0)
    {
      v30.i32[0] = 0;
      if (v21 <= 0x7FFFFFFFFFFFFFFBLL && (v21 + 4) <= *(a1 + 1176))
      {
        _TIFFmemcpy(&v30, (*(a1 + 1168) + v21), 4uLL);
        v18 = *(a1 + 16);
      }

      goto LABEL_33;
    }

    if (v21 <= 0x7FFFFFFFFFFFFFF7 && (v21 + 8) <= *(a1 + 1176))
    {
      _TIFFmemcpy(a4, (*(a1 + 1168) + v21), 8uLL);
      v18 = *(a1 + 16);
    }

    else
    {
      *a4 = 0;
    }

    goto LABEL_59;
  }

LABEL_66:
  v22 = _TIFFCheckMalloc(a1, __dst, 32, "to read TIFF directory");
  if (!v22)
  {
    goto LABEL_82;
  }

  v24 = v22;
  if (__dst)
  {
    v25 = 0;
    v26 = v22 + 16;
    v27 = v15;
    do
    {
      v26[8] = 0;
      v28 = *(a1 + 16);
      if ((v28 & 0x80) != 0)
      {
        TIFFSwabShort(v27);
        v28 = *(a1 + 16);
        *(v26 - 8) = *v27;
        if ((v28 & 0x80) != 0)
        {
          TIFFSwabShort(v27 + 2);
          v28 = *(a1 + 16);
        }
      }

      else
      {
        *(v26 - 8) = *v27;
      }

      *(v26 - 7) = *(v27 + 1);
      if ((v28 & 0x80000) != 0)
      {
        if ((v28 & 0x80) != 0)
        {
          v23 = TIFFSwabLong8((v27 + 4));
        }

        *(v26 - 1) = *(v27 + 4);
        *v26 = *(v27 + 12);
        v29 = 20;
      }

      else
      {
        if ((v28 & 0x80) != 0)
        {
          v23 = TIFFSwabLong(v27 + 1, v23);
        }

        *(v26 - 1) = *(v27 + 1);
        *v26 = 0;
        *v26 = *(v27 + 2);
        v29 = 12;
      }

      v27 += v29;
      ++v25;
      v26 += 32;
    }

    while (v25 < __dst);
  }

  free(v15);
  *a3 = v24;
  return __dst;
}

uint64_t TIFFFetchNormalTag(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a3;
  v125 = 0;
  v6 = *a2;
  TIFFReadDirectoryFindFieldInfo(a1, v6, &v125);
  if (v125 == -1)
  {
    TIFFErrorExtR(a1, "TIFFFetchNormalTag", "No definition found for tag %hu", v6);
    return 0;
  }

  v8 = *(*(a1 + 1256) + 8 * v125);
  if (!v8)
  {
    TIFFFetchNormalTag_cold_99();
  }

  switch(*(v8 + 16))
  {
    case 0:
      TIFFErrorExtR(a1, "TIFFFetchNormalTag", "Defined set_field_type of custom tag %u (%s) is TIFF_SETGET_UNDEFINED and thus tag is not read from file", *v8, *(v8 + 32));
      return 1;
    case 1:
      *&__s = 0.0;
      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_94();
      }

      v13 = TIFFReadDirEntryByteArray(a1, a2, &__s);
      if (v13)
      {
        goto LABEL_238;
      }

      v36 = __s;
      if (*&__s == 0.0)
      {
        if ((EvaluateIFDdatasizeReading(a1, a2) & 1) == 0)
        {
          return 0;
        }

        v40 = 0;
        goto LABEL_264;
      }

      v39 = *(a2 + 1);
      if (!v39)
      {
        goto LABEL_254;
      }

      if (__s[v39 - 1])
      {
        if (v39)
        {
          v40 = 0;
          do
          {
            if (!__s[v40])
            {
              goto LABEL_255;
            }

            ++v40;
          }

          while (v39 != v40);
          v40 = v39;
        }

        else
        {
LABEL_254:
          v40 = 0;
        }

LABEL_255:
        if ((EvaluateIFDdatasizeReading(a1, a2) & 1) == 0)
        {
          goto LABEL_275;
        }

        goto LABEL_264;
      }

      v40 = strlen(__s);
      if (!EvaluateIFDdatasizeReading(a1, a2))
      {
        goto LABEL_275;
      }

LABEL_264:
      v111 = *(a2 + 2);
      if (v40 + 1 >= v111)
      {
        if (v40 + 1 > v111)
        {
          TIFFWarningExtR(a1, "TIFFFetchNormalTag", "ASCII value for tag %s does not end in null byte. Forcing it to be null", *(v8 + 32));
          v112 = *(a2 + 1) + 1;
          if (HIDWORD(v112))
          {
            TIFFFetchNormalTag_cold_95();
          }

          v113 = malloc_type_malloc(v112, 0xDC754A6CuLL);
          if (!v113)
          {
LABEL_274:
            if (v36)
            {
LABEL_275:
              v103 = v36;
LABEL_249:
              free(v103);
            }

            return 0;
          }

          v120 = v113;
          v121 = *(a2 + 1);
          if (v121)
          {
            _TIFFmemcpy(v113, v36, v121);
            v121 = *(a2 + 2);
          }

          *(v120 + v121) = 0;
          if (v36)
          {
            free(v36);
          }

          v37 = _cg_TIFFSetField(a1, *a2, v114, v115, v116, v117, v118, v119, v120);
          v36 = v120;
          goto LABEL_277;
        }
      }

      else
      {
        TIFFWarningExtR(a1, "TIFFFetchNormalTag", "ASCII value for tag %s contains null byte in value; value incorrectly truncated during reading due to implementation limitations", *(v8 + 32));
      }

      v37 = _cg_TIFFSetField(a1, *a2, v104, v105, v106, v107, v108, v109, v36);
      if (!v36)
      {
        goto LABEL_279;
      }

LABEL_277:
      v110 = v36;
LABEL_278:
      free(v110);
LABEL_279:
      if (v37)
      {
        goto LABEL_238;
      }

      return 0;
    case 2:
      LOBYTE(__s) = 0;
      if (*(v8 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_92();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_93();
      }

      v13 = TIFFReadDirEntryByte(a1, a2, &__s, *&v7);
      if (v13)
      {
        goto LABEL_238;
      }

      v28 = *a2;
      v29 = __s;
      goto LABEL_150;
    case 3:
      LOBYTE(__s) = 0;
      if (*(v8 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_90();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_91();
      }

      v13 = TIFFReadDirEntrySbyte(a1, a2, &__s, *&v7);
      if (v13)
      {
        goto LABEL_238;
      }

      v28 = *a2;
      v29 = __s;
      goto LABEL_150;
    case 4:
      LOWORD(__s) = 0;
      if (*(v8 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_88();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_89();
      }

      v13 = TIFFReadDirEntryShort(a1, a2, &__s, *&v7);
      if (v13)
      {
        goto LABEL_238;
      }

      v28 = *a2;
      v29 = __s;
      goto LABEL_150;
    case 5:
      LOWORD(__s) = 0;
      if (*(v8 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_86();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_87();
      }

      v13 = TIFFReadDirEntrySshort(a1, a2, &__s, *&v7);
      if (v13)
      {
        goto LABEL_238;
      }

      v28 = *a2;
      v29 = __s;
      goto LABEL_150;
    case 6:
      LODWORD(__s) = 0;
      if (*(v8 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_84();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_85();
      }

      v45 = TIFFReadDirEntryLong(a1, a2, &__s, *&v7);
      goto LABEL_148;
    case 7:
      LODWORD(__s) = 0;
      if (*(v8 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_82();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_83();
      }

      v45 = TIFFReadDirEntrySlong(a1, a2, &__s, *&v7);
LABEL_148:
      v13 = v45;
      if (v45)
      {
        goto LABEL_238;
      }

      v28 = *a2;
      v29 = __s;
LABEL_150:
      result = _cg_TIFFSetField(a1, v28, v22, v23, v24, v25, v26, v27, v29);
      if (!result)
      {
        return result;
      }

      goto LABEL_238;
    case 8:
      *&__s = 0.0;
      if (*(v8 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_80();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_81();
      }

      v12 = TIFFReadDirEntryLong8(a1, a2, &__s, *&v7);
      goto LABEL_169;
    case 9:
      *&__s = 0.0;
      if (*(v8 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_78();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_79();
      }

      v12 = TIFFReadDirEntrySlong8(a1, a2, &__s, *&v7);
      goto LABEL_169;
    case 0xA:
      LODWORD(__s) = 0;
      if (*(v8 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_76();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_77();
      }

      v13 = TIFFReadDirEntryFloat(a1, a2, &__s, v7);
      if (v13)
      {
        goto LABEL_238;
      }

      if (!EvaluateIFDdatasizeReading(a1, a2))
      {
        return 0;
      }

      v20 = *a2;
      *&v21 = *&__s;
      goto LABEL_90;
    case 0xB:
      *&__s = 0.0;
      if (*(v8 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_74();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_75();
      }

      v13 = TIFFReadDirEntryDouble(a1, a2, &__s, v7);
      if (v13)
      {
        goto LABEL_238;
      }

      if (!EvaluateIFDdatasizeReading(a1, a2))
      {
        return 0;
      }

      v20 = *a2;
      v21 = __s;
LABEL_90:
      v38 = _cg_TIFFSetField(a1, v20, v14, v15, v16, v17, v18, v19, v21);
      goto LABEL_172;
    case 0xC:
      *&__s = 0.0;
      if (*(v8 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_72();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_73();
      }

      v12 = TIFFReadDirEntryIfd8(a1, a2, &__s, *&v7);
LABEL_169:
      v13 = v12;
      if (v12)
      {
        goto LABEL_238;
      }

      if (!EvaluateIFDdatasizeReading(a1, a2))
      {
        return 0;
      }

      v38 = _cg_TIFFSetField(a1, *a2, v58, v59, v60, v61, v62, v63, __s);
LABEL_172:
      if (!v38)
      {
        return 0;
      }

      goto LABEL_238;
    case 0xD:
      TIFFFetchNormalTag_cold_96();
    case 0xE:
      *&__s = 0.0;
      if (*(v8 + 4) != 2)
      {
        TIFFFetchNormalTag_cold_69();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_70();
      }

      if (*(a2 + 1) != 2)
      {
        TIFFWarningExtR(a1, "TIFFFetchNormalTag", "incorrect count for field %s, expected 2, got %llu");
        return 0;
      }

      v13 = TIFFReadDirEntryShortArray(a1, a2, &__s);
      if (v13)
      {
        goto LABEL_238;
      }

      v36 = __s;
      if (*&__s == 0.0)
      {
        TIFFFetchNormalTag_cold_71();
      }

      v37 = _cg_TIFFSetField(a1, *a2, v30, v31, v32, v33, v34, v35, *__s);
      goto LABEL_277;
    case 0x10:
      *&__s = 0.0;
      if (*(v8 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_68();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_67();
      }

      if (*(a2 + 1) != *(v8 + 4))
      {
        goto LABEL_193;
      }

      v11 = TIFFReadDirEntryByteArray(a1, a2, &__s);
      goto LABEL_190;
    case 0x11:
      *&__s = 0.0;
      if (*(v8 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_66();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_65();
      }

      if (*(a2 + 1) != *(v8 + 4))
      {
        goto LABEL_193;
      }

      v11 = TIFFReadDirEntrySbyteArray(a1, a2, &__s);
      goto LABEL_190;
    case 0x12:
      *&__s = 0.0;
      if (*(v8 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_64();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_63();
      }

      if (*(a2 + 1) != *(v8 + 4))
      {
        goto LABEL_193;
      }

      v11 = TIFFReadDirEntryShortArray(a1, a2, &__s);
      goto LABEL_190;
    case 0x13:
      *&__s = 0.0;
      if (*(v8 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_62();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_61();
      }

      if (*(a2 + 1) != *(v8 + 4))
      {
        goto LABEL_193;
      }

      v11 = TIFFReadDirEntrySshortArray(a1, a2, &__s);
      goto LABEL_190;
    case 0x14:
      *&__s = 0.0;
      if (*(v8 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_60();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_59();
      }

      if (*(a2 + 1) != *(v8 + 4))
      {
        goto LABEL_193;
      }

      v11 = TIFFReadDirEntryLongArray(a1, a2, &__s);
      goto LABEL_190;
    case 0x15:
      *&__s = 0.0;
      if (*(v8 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_58();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_57();
      }

      if (*(a2 + 1) != *(v8 + 4))
      {
        goto LABEL_193;
      }

      v11 = TIFFReadDirEntrySlongArray(a1, a2, &__s);
      goto LABEL_190;
    case 0x16:
      *&__s = 0.0;
      if (*(v8 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_56();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_55();
      }

      if (*(a2 + 1) != *(v8 + 4))
      {
        goto LABEL_193;
      }

      v11 = TIFFReadDirEntryLong8ArrayWithLimit(a1, a2, &__s, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_190;
    case 0x17:
      *&__s = 0.0;
      if (*(v8 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_54();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_53();
      }

      if (*(a2 + 1) != *(v8 + 4))
      {
        goto LABEL_193;
      }

      v11 = TIFFReadDirEntrySlong8Array(a1, a2, &__s);
      goto LABEL_190;
    case 0x18:
      *&__s = 0.0;
      if (*(v8 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_52();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_51();
      }

      if (*(a2 + 1) != *(v8 + 4))
      {
        goto LABEL_193;
      }

      v11 = TIFFReadDirEntryFloatArray(a1, a2, &__s);
      goto LABEL_190;
    case 0x19:
      *&__s = 0.0;
      if (*(v8 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_50();
      }

      if (*(v8 + 27))
      {
        TIFFFetchNormalTag_cold_49();
      }

      if (*(a2 + 1) != *(v8 + 4))
      {
LABEL_193:
        TIFFWarningExtR(a1, "TIFFFetchNormalTag", "incorrect count for field %s, expected %d, got %llu");
        return 0;
      }

      v11 = TIFFReadDirEntryDoubleArray(a1, a2, &__s);
LABEL_190:
      v13 = v11;
      if (v11)
      {
        goto LABEL_238;
      }

      if ((EvaluateIFDdatasizeReading(a1, a2) & 1) == 0)
      {
        goto LABEL_248;
      }

      v82 = *a2;
      v83 = __s;
      v84 = _cg_TIFFSetField(a1, v82, v76, v77, v78, v79, v80, v81, __s);
      goto LABEL_227;
    case 0x1B:
      *&__s = 0.0;
      if (*(v8 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_47();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_48();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v13 = TIFFReadDirEntryByteArray(a1, a2, &__s);
      if (v13)
      {
        goto LABEL_238;
      }

      v64 = EvaluateIFDdatasizeReading(a1, a2);
      v71 = __s;
      if ((v64 & 1) == 0)
      {
        if (*&__s == 0.0)
        {
          return 0;
        }

        goto LABEL_258;
      }

      v72 = *(a2 + 1);
      if (*&__s == 0.0)
      {
        v74 = 0;
        goto LABEL_283;
      }

      if (!v72 || !__s[v72 - 1])
      {
        v74 = __s;
        goto LABEL_283;
      }

      TIFFWarningExtR(a1, "TIFFFetchNormalTag", "ASCII value for ASCII array tag %s does not end in null byte. Forcing it to be null", *(v8 + 32));
      v73 = malloc_type_malloc((*(a2 + 2) + 1), 0x44B43F1EuLL);
      if (!v73)
      {
LABEL_258:
        v103 = v71;
        goto LABEL_249;
      }

      v74 = v73;
      v75 = *(a2 + 1);
      if (v75)
      {
        _TIFFmemcpy(v73, v71, v75);
        v75 = *(a2 + 2);
      }

      v74[v75] = 0;
      ++*(a2 + 1);
      free(v71);
      v72 = *(a2 + 1);
LABEL_283:
      v101 = _cg_TIFFSetField(a1, *a2, v65, v66, v67, v68, v69, v70, v72);
      if (v74)
      {
        v102 = v74;
LABEL_245:
        free(v102);
      }

LABEL_246:
      if (!v101)
      {
        return 0;
      }

      v13 = 0;
LABEL_238:
      if (v13)
      {
        TIFFReadDirEntryOutputErr(a1, v13, "TIFFFetchNormalTag", *(v8 + 32), v3);
        return 0;
      }

      return 1;
    case 0x1C:
      *&__s = 0.0;
      if (*(v8 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_45();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_46();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v10 = TIFFReadDirEntryByteArray(a1, a2, &__s);
      goto LABEL_237;
    case 0x1D:
      *&__s = 0.0;
      if (*(v8 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_43();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_44();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v10 = TIFFReadDirEntrySbyteArray(a1, a2, &__s);
      goto LABEL_237;
    case 0x1E:
      *&__s = 0.0;
      if (*(v8 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_41();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_42();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v10 = TIFFReadDirEntryShortArray(a1, a2, &__s);
      goto LABEL_237;
    case 0x1F:
      *&__s = 0.0;
      if (*(v8 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_39();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_40();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v10 = TIFFReadDirEntrySshortArray(a1, a2, &__s);
      goto LABEL_237;
    case 0x20:
      *&__s = 0.0;
      if (*(v8 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_37();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_38();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v10 = TIFFReadDirEntryLongArray(a1, a2, &__s);
      goto LABEL_237;
    case 0x21:
      *&__s = 0.0;
      if (*(v8 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_35();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_36();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v10 = TIFFReadDirEntrySlongArray(a1, a2, &__s);
      goto LABEL_237;
    case 0x22:
      *&__s = 0.0;
      if (*(v8 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_33();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_34();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v10 = TIFFReadDirEntryLong8ArrayWithLimit(a1, a2, &__s, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_237;
    case 0x23:
      *&__s = 0.0;
      if (*(v8 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_31();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_32();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v10 = TIFFReadDirEntrySlong8Array(a1, a2, &__s);
      goto LABEL_237;
    case 0x24:
      *&__s = 0.0;
      if (*(v8 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_29();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_30();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v10 = TIFFReadDirEntryFloatArray(a1, a2, &__s);
      goto LABEL_237;
    case 0x25:
      *&__s = 0.0;
      if (*(v8 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_27();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_28();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v10 = TIFFReadDirEntryDoubleArray(a1, a2, &__s);
      goto LABEL_237;
    case 0x26:
      *&__s = 0.0;
      if (*(v8 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_25();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_26();
      }

      if (*(a2 + 1) >> 16)
      {
LABEL_210:
        v13 = 1;
        goto LABEL_238;
      }

      v10 = TIFFReadDirEntryIfd8Array(a1, a2, &__s);
LABEL_237:
      v13 = v10;
      if (v10)
      {
        goto LABEL_238;
      }

      if ((EvaluateIFDdatasizeReading(a1, a2) & 1) == 0)
      {
        goto LABEL_248;
      }

      v100 = __s;
      v101 = _cg_TIFFSetField(a1, *a2, v94, v95, v96, v97, v98, v99, a2[4]);
      if (!v100)
      {
        goto LABEL_246;
      }

      v102 = v100;
      goto LABEL_245;
    case 0x27:
      *&__s = 0.0;
      if (*(v8 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_23();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_24();
      }

      v13 = TIFFReadDirEntryByteArray(a1, a2, &__s);
      if (v13)
      {
        goto LABEL_238;
      }

      v47 = EvaluateIFDdatasizeReading(a1, a2);
      v36 = __s;
      if ((v47 & 1) == 0)
      {
        goto LABEL_274;
      }

      if (*&__s == 0.0)
      {
        v56 = 0;
      }

      else
      {
        v54 = *(a2 + 1);
        if (v54 && __s[v54 - 1])
        {
          TIFFWarningExtR(a1, "TIFFFetchNormalTag", "ASCII value for ASCII array tag %s does not end in null byte. Forcing it to be null", *(v8 + 32));
          v55 = malloc_type_malloc((*(a2 + 2) + 1), 0x928A4F79uLL);
          if (!v55)
          {
            goto LABEL_275;
          }

          v56 = v55;
          v57 = *(a2 + 1);
          if (v57)
          {
            _TIFFmemcpy(v55, v36, v57);
            v57 = *(a2 + 2);
          }

          v56[v57] = 0;
          ++*(a2 + 1);
          free(v36);
        }

        else
        {
          v56 = __s;
        }
      }

      v37 = _cg_TIFFSetField(a1, *a2, v48, v49, v50, v51, v52, v53, *(a2 + 1));
      if (!v56)
      {
        goto LABEL_279;
      }

      v110 = v56;
      goto LABEL_278;
    case 0x28:
      *&__s = 0.0;
      v123 = 0;
      if (*(v8 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_21();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_22();
      }

      if (*v8 == 33723 && a2[1] == 4)
      {
        v122 = 0;
        v41 = TIFFReadDirEntryArrayWithLimit(a1, a2, &v123, 4u, &v122, 0xFFFFFFFFFFFFFFFFLL);
        v13 = v41;
        if (v41 || (v43 = v122) == 0)
        {
          *&__s = 0.0;
          if (v41)
          {
            goto LABEL_238;
          }
        }

        else
        {
          v44 = v123;
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabArrayOfLong(v122, v123, v42);
          }

          __s = v43;
          v123 = 4 * v44;
        }
      }

      else
      {
        v13 = TIFFReadDirEntryByteArray(a1, a2, &__s);
        v123 = *(a2 + 1);
        if (v13)
        {
          goto LABEL_238;
        }
      }

      if ((EvaluateIFDdatasizeReading(a1, a2) & 1) == 0)
      {
LABEL_248:
        v103 = __s;
        if (*&__s == 0.0)
        {
          return 0;
        }

        goto LABEL_249;
      }

      v91 = *a2;
      v83 = __s;
      v92 = v123;
LABEL_226:
      v84 = _cg_TIFFSetField(a1, v91, v85, v86, v87, v88, v89, v90, v92);
LABEL_227:
      v93 = v84;
      if (v83)
      {
        free(v83);
      }

      if (v93)
      {
        goto LABEL_238;
      }

      return 0;
    case 0x29:
      *&__s = 0.0;
      if (*(v8 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_19();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_20();
      }

      v9 = TIFFReadDirEntrySbyteArray(a1, a2, &__s);
      goto LABEL_223;
    case 0x2A:
      *&__s = 0.0;
      if (*(v8 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_17();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_18();
      }

      v9 = TIFFReadDirEntryShortArray(a1, a2, &__s);
      goto LABEL_223;
    case 0x2B:
      *&__s = 0.0;
      if (*(v8 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_15();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_16();
      }

      v9 = TIFFReadDirEntrySshortArray(a1, a2, &__s);
      goto LABEL_223;
    case 0x2C:
      *&__s = 0.0;
      if (*(v8 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_13();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_14();
      }

      v9 = TIFFReadDirEntryLongArray(a1, a2, &__s);
      goto LABEL_223;
    case 0x2D:
      *&__s = 0.0;
      if (*(v8 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_11();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_12();
      }

      v9 = TIFFReadDirEntrySlongArray(a1, a2, &__s);
      goto LABEL_223;
    case 0x2E:
      *&__s = 0.0;
      if (*(v8 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_9();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_10();
      }

      v9 = TIFFReadDirEntryLong8ArrayWithLimit(a1, a2, &__s, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_223;
    case 0x2F:
      *&__s = 0.0;
      if (*(v8 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_7();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_8();
      }

      v9 = TIFFReadDirEntrySlong8Array(a1, a2, &__s);
      goto LABEL_223;
    case 0x30:
      *&__s = 0.0;
      if (*(v8 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_5();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_6();
      }

      v9 = TIFFReadDirEntryFloatArray(a1, a2, &__s);
      goto LABEL_223;
    case 0x31:
      *&__s = 0.0;
      if (*(v8 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_3();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_4();
      }

      v9 = TIFFReadDirEntryDoubleArray(a1, a2, &__s);
      goto LABEL_223;
    case 0x32:
      *&__s = 0.0;
      if (*(v8 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_1();
      }

      if (*(v8 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_2();
      }

      v9 = TIFFReadDirEntryIfd8Array(a1, a2, &__s);
LABEL_223:
      v13 = v9;
      if (v9)
      {
        goto LABEL_238;
      }

      if ((EvaluateIFDdatasizeReading(a1, a2) & 1) == 0)
      {
        goto LABEL_248;
      }

      v91 = *a2;
      v92 = *(a2 + 1);
      v83 = __s;
      goto LABEL_226;
    case 0x33:
      TIFFFetchNormalTag_cold_97();
    default:
      TIFFFetchNormalTag_cold_98();
  }
}

uint64_t TIFFReadDirEntryShort(uint64_t a1, int8x8_t *a2, _WORD *a3, uint8x8_t a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  __dst[3] = v4;
  __dst[4] = v5;
  v8 = a2->u16[1];
  result = 2;
  if (v8 <= 7)
  {
    if (a2->u16[1] <= 3u)
    {
      if (v8 != 1)
      {
        if (v8 == 3)
        {
          *a3 = a2[2].i16[0];
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(a3);
          }

          return 0;
        }

        return result;
      }

      result = 0;
      LOWORD(v10) = a2[2].u8[0];
LABEL_36:
      *a3 = v10;
      return result;
    }

    if (v8 != 4)
    {
      if (v8 != 6)
      {
        return result;
      }

      v10 = a2[2].i8[0];
      if (((v10 >> 5) & 4) != 0)
      {
        return (v10 >> 5) & 4;
      }

      result = 0;
      goto LABEL_36;
    }

LABEL_22:
    v11 = a2[2].u32[0];
    __dst[0].i32[0] = v11;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabLong(__dst, a4);
      v11 = __dst[0].i32[0];
    }

    if (!HIWORD(v11))
    {
      result = 0;
LABEL_30:
      *a3 = v11;
      return result;
    }

    return 4;
  }

  if (a2->u16[1] > 0xFu)
  {
    if (v8 == 16)
    {
      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (v8 != 17)
      {
        return result;
      }

      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (result)
      {
        return result;
      }
    }

    if (!(*__dst >> 16))
    {
      result = 0;
      *a3 = __dst[0].i16[0];
      return result;
    }

    return 4;
  }

  if (v8 != 8)
  {
    if (v8 != 9)
    {
      return result;
    }

    goto LABEL_22;
  }

  v11 = a2[2].u16[0];
  __dst[0].i16[0] = a2[2].i16[0];
  if ((*(a1 + 16) & 0x80) != 0)
  {
    TIFFSwabShort(__dst);
    v11 = __dst[0].u16[0];
  }

  result = (v11 >> 13) & 4;
  if (((v11 >> 13) & 4) == 0)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t TIFFReadDirEntryPersampleShort(uint64_t a1, uint64_t a2, _WORD *a3)
{
  if (*(a2 + 8) < *(a1 + 130))
  {
    return 1;
  }

  v12 = 0;
  v3 = TIFFReadDirEntryShortArray(a1, a2, &v12);
  if (!v3)
  {
    v6 = v12;
    if (v12)
    {
      v7 = *(a1 + 130);
      v8 = *v12;
      *a3 = v8;
      v9 = 2;
      while (--v7)
      {
        v10 = *&v6[v9];
        v9 += 2;
        if (v10 != v8)
        {
          v3 = 5;
          goto LABEL_10;
        }
      }

      v3 = 0;
LABEL_10:
      free(v6);
    }
  }

  return v3;
}

uint64_t TIFFReadDirEntryOutputErr(uint64_t a1, int a2, const char *a3, uint64_t a4, int a5)
{
  if (a5)
  {
    if (a2 <= 3)
    {
      switch(a2)
      {
        case 1:
          return TIFFWarningExtR(a1, a3, "Incorrect count for %s; tag ignored");
        case 2:
          return TIFFWarningExtR(a1, a3, "Incompatible type for %s; tag ignored");
        case 3:
          return TIFFWarningExtR(a1, a3, "IO error during reading of %s; tag ignored");
      }
    }

    else
    {
      if (a2 <= 5)
      {
        if (a2 == 4)
        {
          return TIFFWarningExtR(a1, a3, "Incorrect value for %s; tag ignored");
        }

        else
        {
          return TIFFWarningExtR(a1, a3, "Cannot handle different values per sample for %s; tag ignored");
        }
      }

      if (a2 == 6)
      {
        return TIFFWarningExtR(a1, a3, "Sanity check on size of %s value failed; tag ignored");
      }

      if (a2 == 7)
      {
        return TIFFWarningExtR(a1, a3, "Out of memory reading of %s; tag ignored");
      }
    }

    TIFFReadDirEntryOutputErr_cold_1();
  }

  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:
        return TIFFErrorExtR(a1, a3, "Incorrect count for %s");
      case 2:
        return TIFFErrorExtR(a1, a3, "Incompatible type for %s");
      case 3:
        return TIFFErrorExtR(a1, a3, "IO error during reading of %s");
    }

    goto LABEL_33;
  }

  if (a2 > 5)
  {
    if (a2 == 6)
    {
      return TIFFErrorExtR(a1, a3, "Sanity check on size of %s value failed");
    }

    if (a2 == 7)
    {
      return TIFFErrorExtR(a1, a3, "Out of memory reading of %s");
    }

LABEL_33:
    TIFFReadDirEntryOutputErr_cold_2();
  }

  if (a2 == 4)
  {
    return TIFFErrorExtR(a1, a3, "Incorrect value for %s");
  }

  else
  {
    return TIFFErrorExtR(a1, a3, "Cannot handle different values per sample for %s");
  }
}

uint64_t TIFFReadDirectoryFindFieldInfo(uint64_t result, unsigned int a2, _DWORD *a3)
{
  v3 = *(result + 1264);
  if (v3)
  {
    v4 = *(result + 1256);
    v5 = -1;
    while (1)
    {
      v6 = v3 + v5;
      v7 = (v6 + (v6 >> 31)) >> 1;
      v8 = **(v4 + 8 * ((v3 + v5) / 2));
      if (v8 == a2)
      {
        break;
      }

      if (v8 >= a2)
      {
        v3 = v6 / 2;
      }

      else
      {
        v5 = v6 / 2;
      }

      if (v5 + 1 == v3)
      {
        goto LABEL_8;
      }
    }

    if ((v6 + 1) >= 3)
    {
      v9 = v4 - 8;
      do
      {
        if (**(v9 + 8 * v7) != a2)
        {
          break;
        }

        --v7;
      }

      while (v7);
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  else
  {
LABEL_8:
    LODWORD(v7) = -1;
  }

  *a3 = v7;
  return result;
}

uint64_t EvaluateIFDdatasizeReading(uint64_t a1, int8x8_t *a2)
{
  v4 = TIFFDataWidth(a2->u16[1]);
  v6 = a2[1];
  if (v4)
  {
    v7 = (v4 * v6) >> 64 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *&v6 * v4;
  v9 = *(a1 + 16);
  v10 = 8;
  if ((v9 & 0x80000) == 0)
  {
    v10 = 4;
  }

  if (v8 > v10)
  {
    v11 = *(a1 + 440);
    if (__CFADD__(v8, v11))
    {
LABEL_11:
      TIFFErrorExtR(a1, "EvaluateIFDdatasizeReading", "Too large IFD data size");
      return 0;
    }

    *(a1 + 440) = v11 + v8;
    if ((v9 & 0x80000) != 0)
    {
      v15 = *(a1 + 456);
      v16 = *(a1 + 448);
      v17 = (v15 + 16 * v16);
      *v17 = a2[2];
      if ((v9 & 0x80) != 0)
      {
        TIFFSwabLong8(v17);
        v15 = *(a1 + 456);
        v16 = *(a1 + 448);
      }
    }

    else
    {
      v13 = a2[2].u32[0];
      v18 = v13;
      if ((v9 & 0x80) != 0)
      {
        TIFFSwabLong(&v18, v5);
        v13 = v18;
      }

      v14 = v13;
      v15 = *(a1 + 456);
      v16 = *(a1 + 448);
      *(v15 + 16 * v16) = v14;
    }

    *(v15 + 16 * v16 + 8) = v8;
    *(a1 + 448) = v16 + 1;
  }

  return 1;
}

uint64_t TIFFReadDirEntryDoubleArray(uint64_t a1, unsigned __int16 *a2, double **a3)
{
  v5 = a2[1];
  v6 = v5 > 0x11;
  v7 = (1 << v5) & 0x31F7A;
  if (v6 || v7 == 0)
  {
    return 2;
  }

  v58 = v3;
  v59 = v4;
  v57 = 0;
  v56 = 0;
  result = TIFFReadDirEntryArrayWithLimit(a1, a2, &v57, 8u, &v56, 0xFFFFFFFFFFFFFFFFLL);
  if (result || (v13 = v56) == 0)
  {
    *a3 = 0;
  }

  else if (a2[1] == 12)
  {
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong8(v56, v57);
    }

    result = 0;
    *a3 = v13;
  }

  else
  {
    v14 = v57;
    v15 = malloc_type_malloc(8 * v57, 0x100004000313F17uLL);
    if (v15)
    {
      v17 = v15;
      v18 = a2[1];
      if (v18 <= 7)
      {
        if (a2[1] <= 3u)
        {
          if (v18 == 1)
          {
            if (v14)
            {
              v33 = v15;
              v34 = v13;
              do
              {
                v35 = *v34;
                v34 = (v34 + 1);
                *v33++ = v35;
                LODWORD(v14) = v14 - 1;
              }

              while (v14);
            }
          }

          else if (v18 == 3 && v14)
          {
            v30 = v15;
            v31 = v13;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                TIFFSwabShort(v31);
              }

              v32 = *v31;
              v31 = (v31 + 2);
              *v30++ = v32;
              LODWORD(v14) = v14 - 1;
            }

            while (v14);
          }
        }

        else if (v18 == 4)
        {
          if (v14)
          {
            v47 = v15;
            v48 = v13;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                TIFFSwabLong(v48, *&v16);
              }

              v49 = *v48++;
              v16 = v49;
              *v47++ = v49;
              LODWORD(v14) = v14 - 1;
            }

            while (v14);
          }
        }

        else if (v18 == 5)
        {
          if (v14)
          {
            v36 = v15;
            v37 = v13;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                v39 = TIFFSwabLong(v37, *&v16);
                v38 = *v37;
                if ((*(a1 + 16) & 0x80) != 0)
                {
                  TIFFSwabLong(v37 + 1, v39);
                }
              }

              else
              {
                v38 = *v37;
              }

              v40 = v37[1];
              if (v40)
              {
                v16 = v38 / v40;
              }

              else
              {
                v16 = 0.0;
              }

              v37 += 2;
              *v36++ = v16;
              LODWORD(v14) = v14 - 1;
            }

            while (v14);
          }
        }

        else if (v18 == 6 && v14)
        {
          v24 = v15;
          v25 = v13;
          do
          {
            v26 = *v25;
            v25 = (v25 + 1);
            *v24++ = v26;
            LODWORD(v14) = v14 - 1;
          }

          while (v14);
        }
      }

      else if (a2[1] > 0xAu)
      {
        if (v18 == 11)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabArrayOfLong(v13, v14, *&v16);
          }

          if (v14)
          {
            v53 = v17;
            v54 = v13;
            do
            {
              v55 = *v54++;
              *v53++ = v55;
              LODWORD(v14) = v14 - 1;
            }

            while (v14);
          }
        }

        else if (v18 == 16)
        {
          if (v14)
          {
            v44 = v15;
            v45 = v13;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                TIFFSwabLong8(v45);
              }

              v46 = *v45++;
              *v44++ = v46;
              LODWORD(v14) = v14 - 1;
            }

            while (v14);
          }
        }

        else if (v18 == 17 && v14)
        {
          v27 = v15;
          v28 = v13;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabLong8(v28);
            }

            v29 = *v28++;
            *v27++ = v29;
            LODWORD(v14) = v14 - 1;
          }

          while (v14);
        }
      }

      else if (v18 == 8)
      {
        if (v14)
        {
          v50 = v15;
          v51 = v13;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabShort(v51);
            }

            v52 = *v51;
            v51 = (v51 + 2);
            *v50++ = v52;
            LODWORD(v14) = v14 - 1;
          }

          while (v14);
        }
      }

      else if (v18 == 9)
      {
        if (v14)
        {
          v41 = v15;
          v42 = v13;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabLong(v42, *&v16);
            }

            v43 = *v42++;
            v16 = v43;
            *v41++ = v43;
            LODWORD(v14) = v14 - 1;
          }

          while (v14);
        }
      }

      else if (v18 == 10 && v14)
      {
        v19 = v15;
        v20 = v13;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            v22 = TIFFSwabLong(v20, *&v16);
            v21 = *v20;
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabLong(v20 + 1, v22);
            }
          }

          else
          {
            v21 = *v20;
          }

          v23 = v20[1];
          if (v23)
          {
            v16 = v21 / v23;
          }

          else
          {
            v16 = 0.0;
          }

          v20 += 2;
          *v19++ = v16;
          LODWORD(v14) = v14 - 1;
        }

        while (v14);
      }

      free(v13);
      result = 0;
      *a3 = v17;
    }

    else
    {
      free(v13);
      return 7;
    }
  }

  return result;
}

uint64_t TIFFReadDirEntryShortArray(uint64_t a1, unsigned __int16 *a2, unsigned __int16 **a3)
{
  v3 = a2[1];
  v4 = v3 > 0x11;
  v5 = (1 << v3) & 0x3035A;
  if (v4 || v5 == 0)
  {
    return 2;
  }

  v42 = 0;
  v41 = 0;
  v10 = TIFFReadDirEntryArrayWithLimit(a1, a2, &v42, 2u, &v41, 0xFFFFFFFFFFFFFFFFLL);
  if (v10 || (v11 = v41) == 0)
  {
    *a3 = 0;
    return v10;
  }

  v12 = a2[1];
  if (v12 == 3)
  {
    *a3 = v41;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfShort(v11, v42);
    }

    return 0;
  }

  if (v12 != 8)
  {
    v16 = v42;
    v17 = malloc_type_malloc(2 * v42, 0x1000040BDFB0063uLL);
    if (!v17)
    {
      free(v11);
      return 7;
    }

    v19 = v17;
    v20 = a2[1];
    if (v20 > 8)
    {
      if (v20 == 9)
      {
        if (!v16)
        {
          goto LABEL_67;
        }

        v31 = v17;
        v32 = v11;
        while (1)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            v18 = TIFFSwabLong(v32, v18);
          }

          v33 = *v32;
          if (HIWORD(*v32))
          {
            break;
          }

          ++v32;
          *v31 = v33;
          v31 += 2;
          if (!--v16)
          {
            goto LABEL_67;
          }
        }
      }

      else if (v20 == 16)
      {
        if (!v16)
        {
          goto LABEL_67;
        }

        v37 = v17;
        v38 = v11;
        while (1)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabLong8(v38);
          }

          v39 = *v38;
          if (*v38 >> 16)
          {
            break;
          }

          ++v38;
          *v37 = v39.i16[0];
          v37 += 2;
          if (!--v16)
          {
            goto LABEL_67;
          }
        }
      }

      else
      {
        if (v20 != 17 || !v16)
        {
          goto LABEL_67;
        }

        v25 = v17;
        v26 = v11;
        while (1)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabLong8(v26);
          }

          v27 = *v26;
          if (*v26 >> 16)
          {
            break;
          }

          ++v26;
          *v25 = v27.i16[0];
          v25 += 2;
          if (!--v16)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else
    {
      if (v20 == 1)
      {
        if (v16)
        {
          v28 = v17;
          v29 = v11;
          do
          {
            v30 = *v29;
            v29 = (v29 + 1);
            *v28 = v30;
            v28 += 2;
            --v16;
          }

          while (v16);
        }

        goto LABEL_67;
      }

      if (v20 != 4)
      {
        if (v20 == 6 && v16)
        {
          v21 = v17;
          v22 = v11;
          while (1)
          {
            v23 = *v22;
            if (((v23 >> 5) & 4) != 0)
            {
              break;
            }

            v22 = (v22 + 1);
            *v21 = v23;
            v21 += 2;
            if (!--v16)
            {
              goto LABEL_67;
            }
          }

          v10 = (v23 >> 5) & 4;
          goto LABEL_69;
        }

LABEL_67:
        free(v11);
        v10 = 0;
        *a3 = v19;
        return v10;
      }

      if (!v16)
      {
        goto LABEL_67;
      }

      v34 = v17;
      v35 = v11;
      while (1)
      {
        if ((*(a1 + 16) & 0x80) != 0)
        {
          v18 = TIFFSwabLong(v35, v18);
        }

        v36 = *v35;
        if (HIWORD(*v35))
        {
          break;
        }

        ++v35;
        *v34 = v36;
        v34 += 2;
        if (!--v16)
        {
          goto LABEL_67;
        }
      }
    }

    v10 = 4;
LABEL_69:
    free(v11);
    v24 = v19;
LABEL_70:
    free(v24);
    return v10;
  }

  v13 = v42;
  if (v42)
  {
    v14 = v41;
    while (1)
    {
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(v14);
      }

      v15 = *v14 >> 13;
      if ((v15 & 4) != 0)
      {
        break;
      }

      ++v14;
      if (!--v13)
      {
        goto LABEL_15;
      }
    }

    v10 = v15 & 4;
    v24 = v11;
    goto LABEL_70;
  }

LABEL_15:
  v10 = 0;
  *a3 = v11;
  return v10;
}

void CalcFinalIFDdatasizeReading(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12))
  {
    qsort(*(a1 + 456), *(a1 + 448), 0x10uLL, cmpTIFFEntryOffsetAndLength);
    v4 = *(a1 + 16);
    v5 = 20;
    if ((v4 & 0x80000) == 0)
    {
      v5 = 12;
    }

    v6 = 6;
    if ((v4 & 0x80000) != 0)
    {
      v6 = 16;
    }

    v7 = v6 + v5 * a2 + *(a1 + 24);
    v8 = *(a1 + 448);
    if (v8)
    {
      v9 = 0;
      v10 = (*(a1 + 456) + 8);
      do
      {
        v11 = *(v10 - 1);
        if (v11 == v7)
        {
          v12 = *v10;
          v13 = *v10;
        }

        else
        {
          if (v11 != v7 + 1)
          {
            break;
          }

          v12 = *v10;
          v13 = *v10 + 1;
        }

        v9 += v13;
        v7 += v12;
        v10 += 2;
        --v8;
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      if (v14 == v7 + 1)
      {
        ++v9;
      }
    }

    else
    {
      if ((*(a1 + 1224))(*(a1 + 1200), 0, 2) == v7)
      {
        v15 = -1;
LABEL_25:
        *(a1 + 440) = v15;
        return;
      }

      v4 = *(a1 + 16);
    }

    if ((v4 & 0x80000) != 0)
    {
      v15 = v9 + 20 * a2 + 16;
    }

    else
    {
      v15 = v9 + 12 * a2 + 6;
    }

    goto LABEL_25;
  }
}

uint64_t TIFFFetchStripThing(uint64_t a1, unsigned __int16 *a2, unsigned int a3, void *a4)
{
  __src = 0;
  v8 = a3;
  v9 = TIFFReadDirEntryLong8ArrayWithLimit(a1, a2, &__src, a3);
  if (v9)
  {
    v10 = v9;
    v11 = TIFFFieldWithTag(a1, *a2);
    if (v11)
    {
      v12 = *(v11 + 4);
    }

    else
    {
      v12 = "unknown tagname";
    }

    TIFFReadDirEntryOutputErr(a1, v10, "TIFFFetchStripThing", v12, 0);
    return 0;
  }

  if (*(a2 + 1) >= v8)
  {
    v18 = __src;
    goto LABEL_12;
  }

  v13 = TIFFFieldWithTag(a1, *a2);
  v14 = getenv("LIBTIFF_STRILE_ARRAY_MAX_RESIZE_COUNT");
  if (!v14)
  {
    v15 = 1000000;
    if (v13)
    {
      goto LABEL_7;
    }

LABEL_15:
    v16 = "unknown tagname";
    goto LABEL_16;
  }

  v15 = atoi(v14);
  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_7:
  v16 = *(v13 + 4);
LABEL_16:
  TIFFReadDirEntryOutputErr(a1, 1, "TIFFFetchStripThing", v16, v15 >= a3);
  if (v15 < a3)
  {
LABEL_24:
    free(__src);
    return 0;
  }

  if (a3 > 0xC80000)
  {
    v19 = (*(a1 + 1240))(*(a1 + 1200));
    if (8 * v8 > v19)
    {
      TIFFWarningExtR(a1, "TIFFFetchStripThing", "Requested memory size for StripArray of %llu is greater than filesize %llu. Memory not allocated", 8 * v8, v19);
      goto LABEL_24;
    }
  }

  v20 = _TIFFCheckMalloc(a1, v8, 8, "for strip array");
  if (!v20)
  {
    goto LABEL_24;
  }

  v18 = v20;
  v21 = *(a2 + 1);
  v22 = __src;
  if (v21)
  {
    _TIFFmemcpy(v20, __src, 8 * *(a2 + 1));
    v21 = *(a2 + 2);
  }

  _TIFFmemset(&v18[8 * v21], 0, 8 * (a3 - v21));
  free(v22);
LABEL_12:
  *a4 = v18;
  return 1;
}

uint64_t _TIFFGetMaxColorChannels(unsigned int a1)
{
  if (a1 > 0xA)
  {
LABEL_6:
    if (a1 != 32845)
    {
      return 0;
    }

    return 3;
  }

  v1 = 1;
  if (((1 << a1) & 0x744) != 0)
  {
    return 3;
  }

  if (((1 << a1) & 0xB) == 0)
  {
    if (((1 << a1) & 0x30) != 0)
    {
      return 4;
    }

    goto LABEL_6;
  }

  return v1;
}

uint64_t EstimateStripByteCounts(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!_TIFFFillStrilesInternal(a1, 0))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 228);
  if (v6 <= 0xC80000)
  {
    v9 = 0;
  }

  else
  {
    v7 = 8 * v6;
    v8 = (*(a1 + 1240))(*(a1 + 1200));
    v9 = v8;
    if (v7 > v8)
    {
      TIFFWarningExtR(a1, "EstimateStripByteCounts", "Requested memory size for StripByteCounts of %llu is greater than filesize %llu. Memory not allocated", v7, v8);
      return 0xFFFFFFFFLL;
    }
  }

  v10 = *(a1 + 240);
  if (v10)
  {
    free(v10);
  }

  v11 = _TIFFCheckMalloc(a1, *(a1 + 228), 8, "for StripByteCounts array");
  *(a1 + 240) = v11;
  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = *(a1 + 16);
  if (*(a1 + 120) == 1)
  {
    if ((v19 & 0x400) != 0)
    {
      v37 = _cg_TIFFTileSize64(a1, v12, v13, v14, v15, v16, v17, v18);
      v38 = *(a1 + 228);
      if (v38)
      {
        v39 = (v38 + 1) & 0x1FFFFFFFELL;
        v40 = vdupq_n_s64(v38 - 1);
        v41 = xmmword_186205EC0;
        v42 = (*(a1 + 240) + 8);
        v43 = vdupq_n_s64(2uLL);
        do
        {
          v44 = vmovn_s64(vcgeq_u64(v40, v41));
          if (v44.i8[0])
          {
            *(v42 - 1) = v37;
          }

          if (v44.i8[4])
          {
            *v42 = v37;
          }

          v41 = vaddq_s64(v41, v43);
          v42 += 2;
          v39 -= 2;
        }

        while (v39);
      }
    }

    else
    {
      v20 = _cg_TIFFScanlineSize64(a1, v12, v13, v14, v15, v16, v17, v18);
      v21 = *(a1 + 228);
      if (v21)
      {
        v22 = 0;
        v23 = !is_mul_ok(v20, (*(a1 + 92) / *(a1 + 224)));
        v24 = v20 * (*(a1 + 92) / *(a1 + 224));
        v25 = 8 * v21;
        while (!v23)
        {
          *(*(a1 + 240) + v22) = v24;
          v22 += 8;
          if (v25 == v22)
          {
            goto LABEL_57;
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    if ((v19 & 0x80000) != 0)
    {
      v26 = 20 * a3 + 32;
    }

    else
    {
      v26 = 12 * a3 + 14;
    }

    if (a3)
    {
      v27 = (a2 + 8);
      while (1)
      {
        v28 = TIFFDataWidth(*(v27 - 3));
        if (!v28)
        {
          break;
        }

        if (!is_mul_ok(v28, *v27))
        {
          return 0xFFFFFFFFLL;
        }

        v29 = *v27 * v28;
        if (v29 >= 9)
        {
          v30 = *v27 * v28;
        }

        else
        {
          v30 = 0;
        }

        if (v29 < 5)
        {
          v29 = 0;
        }

        if ((*(a1 + 18) & 8) != 0)
        {
          v29 = v30;
        }

        if (__CFADD__(v29, v26))
        {
          return 0xFFFFFFFFLL;
        }

        v26 += v29;
        --a3;
        v27 += 4;
        if (!a3)
        {
          goto LABEL_32;
        }
      }

      TIFFErrorExtR(a1, "EstimateStripByteCounts", "Cannot determine size of unknown tag type %hu", *(v27 - 3));
      return 0xFFFFFFFFLL;
    }

LABEL_32:
    if (!v9)
    {
      v9 = (*(a1 + 1240))(*(a1 + 1200));
    }

    if (v9 >= v26)
    {
      v31 = v26;
    }

    else
    {
      v31 = 0;
    }

    v32 = v9 - v31;
    if (*(a1 + 170) == 2)
    {
      v32 /= *(a1 + 130);
    }

    v33 = *(a1 + 228);
    v34 = *(a1 + 240);
    if (v33)
    {
      for (i = 0; i != v33; ++i)
      {
        *(v34 + 8 * i) = v32;
      }

      v36 = i - 1;
    }

    else
    {
      v36 = 0xFFFFFFFFLL;
    }

    v45 = *(*(a1 + 232) + 8 * v36);
    v46 = *(v34 + 8 * v36);
    if (__CFADD__(v46, v45))
    {
      return 0xFFFFFFFFLL;
    }

    if (v46 + v45 > v9)
    {
      v47 = v9 >= v45;
      v48 = v9 - v45;
      if (!v47)
      {
        v48 = 0;
      }

      *(v34 + 8 * v36) = v48;
    }
  }

LABEL_57:
  v49 = *(a1 + 72);
  *(a1 + 72) = v49 | 0x1000000;
  if ((v49 & 0x20000) == 0)
  {
    *(a1 + 132) = *(a1 + 92);
  }

  return 1;
}

unint64_t ByteCountLooksBad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = _TIFFGetStrileOffsetOrByteCountValue(a1, 0, a1 + 288, a1 + 240, 0, a6, a7);
  result = _TIFFGetStrileOffsetOrByteCountValue(a1, 0, a1 + 256, a1 + 232, 0, v9, v10);
  if (result)
  {
    if (v8)
    {
      if (*(a1 + 120) != 1)
      {
        return 0;
      }

      v12 = result;
      v13 = (*(a1 + 1240))(*(a1 + 1200));
      if (v13 < v12 || v8 <= v13 - v12)
      {
        if (!*(a1 + 12))
        {
          v22 = _cg_TIFFScanlineSize64(a1, v14, v15, v16, v17, v18, v19, v20);
          v23 = *(a1 + 92);
          if (v23)
          {
            v24 = v22;
            v25 = (*(a1 + 92) * v22) >> 64;
            result = 1;
            if (v25 || v8 < v24 * v23)
            {
              return result;
            }
          }
        }

        return 0;
      }
    }

    return 1;
  }

  return result;
}

void ChopUpSingleUncompressedStrip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (_TIFFGetStrileOffsetOrByteCountValue(a1, 0, a1 + 288, a1 + 240, 0, a6, a7) || !*(a1 + 12))
  {
    v10 = _TIFFGetStrileOffsetOrByteCountValue(a1, 0, a1 + 288, a1 + 240, 0, v8, v9);
    if (*(a1 + 170) != 1)
    {
      ChopUpSingleUncompressedStrip_cold_1();
    }

    v17 = v10;
    if (*(a1 + 122) != 6 || (*(a1 + 17) & 0x40) != 0)
    {
      v18 = 1;
    }

    else
    {
      v18 = *(a1 + 338);
    }

    v19 = TIFFVTileSize64(a1, v18, v11, v12, v13, v14, v15, v16);
    v23 = v19;
    if (v19 <= 0x2000)
    {
      if (!v19)
      {
        return;
      }

      v24 = 0x2000u / v19;
      v18 = (v18 * v24);
      v23 = v19 * v24;
    }

    if (v18)
    {
      if (v18 < *(a1 + 132))
      {
        v25 = *(a1 + 92);
        if (v25 < -v18)
        {
          v26 = v18 + v25 - 1;
          if (v18 <= v26)
          {
            v27 = v26 / v18;
            v28 = v26 / v18 >= 0xF4241 && *(a1 + 12) == 0;
            if (!v28 || v17 < (*(a1 + 1240))(*(a1 + 1200)) && v23 <= ((*(a1 + 1240))(*(a1 + 1200)) - v17) / (v27 - 1))
            {

              allocChoppedUpStripArrays(a1, v27, v23, v18, v20, v21, v22);
            }
          }
        }
      }
    }
  }
}

void TryChopUpUncompressedBigTiff(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = _cg_TIFFStripSize64(a1, a2, a3, a4, a5, a6, a7, a8);
  if (*(a1 + 170) != 1)
  {
    TryChopUpUncompressedBigTiff_cold_1();
  }

  if (*(a1 + 120) != 1)
  {
    TryChopUpUncompressedBigTiff_cold_2();
  }

  if ((*(a1 + 16) & 0x8400) != 0x8000)
  {
    TryChopUpUncompressedBigTiff_cold_3();
  }

  v12 = v9;
  if (!(v9 >> 31))
  {
    TryChopUpUncompressedBigTiff_cold_5();
  }

  if (_TIFFGetStrileOffsetOrByteCountValue(a1, 0, a1 + 288, a1 + 240, 0, v10, v11) || !*(a1 + 12))
  {
    v19 = *(a1 + 122) != 6 || (*(a1 + 17) & 0x40) != 0 ? 1 : *(a1 + 338);
    v20 = TIFFVStripSize64(a1, v19, v13, v14, v15, v16, v17, v18);
    if (v20 - 0x80000000 >= 0xFFFFFFFF80000001)
    {
      v24 = v20;
      v25 = *(a1 + 228);
      if (v25)
      {
        v26 = 0;
        do
        {
          v27 = v25 - 1;
          v28 = _TIFFGetStrileOffsetOrByteCountValue(a1, v26, a1 + 288, a1 + 240, 0, v22, v23);
          if (v26 == v27)
          {
            if (v28 < TIFFVStripSize64(a1, (*(a1 + 92) - *(a1 + 132) * v26), v29, v30, v21, v22, v23, v31))
            {
              return;
            }
          }

          else
          {
            if (v28 != v12)
            {
              return;
            }

            if (v26)
            {
              v32 = _TIFFGetStrileOffsetOrByteCountValue(a1, v26, a1 + 256, a1 + 232, 0, v22, v23);
              v35 = _TIFFGetStrileOffsetOrByteCountValue(a1, (v26 - 1), a1 + 256, a1 + 232, 0, v33, v34);
              if (v32 != _TIFFGetStrileOffsetOrByteCountValue(a1, (v26 - 1), a1 + 288, a1 + 240, 0, v36, v37) + v35)
              {
                return;
              }
            }
          }

          v26 = (v26 + 1);
          v25 = *(a1 + 228);
        }

        while (v26 < v25);
        v38 = v25 - 1;
      }

      else
      {
        v38 = 0xFFFFFFFFLL;
      }

      if (v24 > 0x20000000)
      {
        v39 = 1;
      }

      else
      {
        v39 = 0x20000000 / v24;
      }

      v40 = v24 * v39;
      if ((v24 * v39) >> 31)
      {
        TryChopUpUncompressedBigTiff_cold_4();
      }

      v41 = (v39 * v19);
      if (v41)
      {
        v42 = *(a1 + 92);
        if (v42 < -v41)
        {
          v43 = v41 + v42 - 1;
          if (v41 <= v43)
          {
            v44 = v43 / v41;
            v45 = v43 / v41 >= 0xF4241 && *(a1 + 12) == 0;
            if (!v45 || (v46 = _TIFFGetStrileOffsetOrByteCountValue(a1, v38, a1 + 256, a1 + 232, 0, v22, v23), v47 = (*(a1 + 1240))(*(a1 + 1200)), v50 = _TIFFGetStrileOffsetOrByteCountValue(a1, (*(a1 + 228) - 1), a1 + 288, a1 + 240, 0, v48, v49), v47 >= v46) && v50 <= v47 - v46)
            {

              allocChoppedUpStripArrays(a1, v44, v40, v41, v21, v22, v23);
            }
          }
        }
      }
    }
  }
}

uint64_t _TIFFGetOffsetFromDirNumber(uint64_t a1, unsigned int a2, void *a3)
{
  result = *(a1 + 56);
  if (result)
  {
    v5[0] = 0;
    v5[1] = a2;
    result = TIFFHashSetLookup(result, v5);
    if (result)
    {
      *a3 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t _TIFFRemoveEntryFromDirectoryListByOffset(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v9 = a2;
    v10 = 0;
    v4 = TIFFHashSetLookup(v3, &v9);
    if (v4)
    {
      v5 = v4;
      LODWORD(v10) = *(v4 + 2);
      v6 = *(a1 + 56);
      if (!v6)
      {
        TIFFErrorExtR(a1, "_TIFFRemoveEntryFromDirectoryListByOffset", "Unexpectedly tif_map_dir_number_to_offset is missing but tif_map_dir_offset_to_number exists.");
        return 0;
      }

      v7 = TIFFHashSetLookup(v6, &v9);
      if (v7)
      {
        TIFFHashSetRemove(*(a1 + 56), v7);
        TIFFHashSetRemove(*(a1 + 48), v5);
      }
    }
  }

  return 1;
}

uint64_t _TIFFGetStrileOffsetOrByteCountValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7);
  v12 = v10;
  v14 = v13;
  v15 = v9;
  v16 = v8;
  v17 = v7;
  v55 = *MEMORY[0x1E69E9840];
  if (v10)
  {
    *v10 = 0;
  }

  v18 = *(v7 + 16);
  if ((v18 & 0x5000000) != 0x1000000)
  {
    goto LABEL_9;
  }

  if ((v18 & 0x2000000) == 0 || (v19 = *(v9 + 8), v19 <= 4))
  {
    v20 = _TIFFFillStrilesInternal(v7, 1);
    if (v12 && !v20)
    {
      *v12 = 1;
    }

    goto LABEL_9;
  }

  if (v19 <= v8)
  {
    goto LABEL_66;
  }

  v22 = v8;
  v23 = *(v7 + 248);
  if (v23 <= v8)
  {
    v24 = *(v7 + 248);
    if (v8 >= 0xF4241)
    {
      if (v8 > (*(v7 + 1240))(*(v7 + 1200), v11) >> 2)
      {
        TIFFErrorExtR(v17, "_TIFFFetchStrileValue", "File too short");
        goto LABEL_66;
      }

      v24 = *(v17 + 248);
    }

    v25 = *(v17 + 228);
    if (v24 || v25 >= 0x100000)
    {
      v26 = (v16 + 1) > 0x80000 ? v16 + 1 : 0x80000;
      if (v26 << ((v16 + 1) < 0x7FFFFFFF) < v25)
      {
        v25 = v26 << ((v16 + 1) < 0x7FFFFFFF);
      }
    }

    if (v25 <= v16)
    {
      _TIFFGetStrileOffsetOrByteCountValue_cold_1();
    }

    v27 = malloc_type_realloc(*(v17 + 232), 8 * v25, 0x100004000313F17uLL);
    v28 = malloc_type_realloc(*(v17 + 240), 8 * v25, 0x100004000313F17uLL);
    if (v27)
    {
      *(v17 + 232) = v27;
      if (v28)
      {
        *(v17 + 240) = v28;
        *(v17 + 248) = v25;
        memset(&v27[8 * v23], 255, 8 * (v25 - v23));
        memset((*(v17 + 240) + 8 * v23), 255, 8 * (*(v17 + 248) - v23));
LABEL_32:
        v22 = v16;
        goto LABEL_33;
      }
    }

    else if (v28)
    {
      *(v17 + 240) = v28;
    }

    TIFFErrorExtR(v17, "_TIFFFetchStrileValue", "Cannot allocate strip offset and bytecount arrays");
    free(*(v17 + 232));
    *(v17 + 232) = 0;
    free(*(v17 + 240));
    *(v17 + 240) = 0;
    *(v17 + 248) = 0;
    goto LABEL_32;
  }

LABEL_33:
  v29 = *v14;
  if (!*v14)
  {
    goto LABEL_66;
  }

  v30 = *(v17 + 248);
  if (v30 <= v16)
  {
    goto LABEL_66;
  }

  if (*(v29 + 8 * v22) != -1)
  {
    goto LABEL_9;
  }

  if (*&v15[1] <= 4uLL)
  {
    _TIFFGetStrileOffsetOrByteCountValue_cold_2();
  }

  v31 = *(v17 + 16);
  v32 = v15->u16[1];
  if (v32 > 0xF)
  {
    if (v32 != 16 && v32 != 17)
    {
      goto LABEL_44;
    }

    v33 = 8;
  }

  else
  {
    if (v32 != 3)
    {
      if (v32 == 4)
      {
        v33 = 4;
        goto LABEL_46;
      }

LABEL_44:
      TIFFErrorExtR(v17, "_TIFFPartialReadStripArray", "Invalid type for [Strip|Tile][Offset/ByteCount] tag");
LABEL_63:
      *(v29 + 8 * v16) = 0;
      goto LABEL_65;
    }

    v33 = 2;
  }

LABEL_46:
  v52 = v33;
  bzero(v54, 0x2000uLL);
  if ((v31 & 0x80000) == 0)
  {
    v35 = v15[2].u32[0];
    v53.i32[0] = v35;
    if ((v31 & 0x80) != 0)
    {
      TIFFSwabLong(&v53, v34);
      v35 = v53.i32[0];
    }

    v36 = v35;
    goto LABEL_53;
  }

  v36 = v15[2];
  v53 = v36;
  if ((v31 & 0x80) != 0)
  {
    TIFFSwabLong8(&v53);
    v36 = v53;
  }

  if ((*&v36 & 0x8000000000000000) != 0)
  {
    TIFFErrorExtR(v17, "_TIFFPartialReadStripArray", "Cannot read offset/size for strile %d");
    goto LABEL_63;
  }

LABEL_53:
  v51 = v31;
  v37 = *&v36 + v52 * v16;
  v38 = v37 & 0xFFFFFFFFFFFFF000;
  v39 = (v37 & 0xFFFFFFFFFFFFF000) + 4096;
  if (v37 + v52 > v39)
  {
    v39 = (v37 & 0xFFFFFFFFFFFFF000) + 0x2000;
  }

  if (*&v36 + v52 * v30 < v39)
  {
    v39 = *&v36 + v52 * v30;
  }

  if (v39 <= v38)
  {
    TIFFErrorExtR(v17, "_TIFFPartialReadStripArray", "Cannot read offset/size for strile %d", v16);
    *(v29 + 8 * v16) = 0;
    goto LABEL_65;
  }

  v49 = v39 - v38;
  v50 = v39;
  if (!_TIFFSeekOK(v17, v38))
  {
    *(v29 + 8 * v16) = 0;
    goto LABEL_65;
  }

  if ((*(v17 + 1208))(*(v17 + 1200), v54, v49) < v49)
  {
    TIFFErrorExtR(v17, "_TIFFPartialReadStripArray", "Cannot read offset/size for strile around ~%d", v16);
LABEL_65:
    *(*v14 + 8 * v22) = 0;
    goto LABEL_66;
  }

  v41 = (v37 & 0xFFFu) / v52;
  if (v41 >= v16)
  {
    v41 = v16;
  }

  v42 = v16 - v41;
  v43 = v50;
  if (v16 - v41 < v30)
  {
    v44 = -v41;
    v45 = &v54[(v37 & 0xFFF) + v52 * v44];
    v46 = *&v36 + v52 + v52 * (v16 + v44);
    do
    {
      if (v46 > v43)
      {
        break;
      }

      v47 = v15->u16[1];
      if (v47 == 16)
      {
        goto LABEL_79;
      }

      if (v47 == 4)
      {
        v48 = *v45;
        v53.i32[0] = *v45;
        if (v51 < 0)
        {
          v40 = TIFFSwabLong(&v53, v40);
          v43 = v50;
          v48 = v53.u32[0];
        }

        goto LABEL_83;
      }

      if (v47 != 3)
      {
LABEL_79:
        v48 = *v45;
        v53 = *v45;
        if (v51 < 0)
        {
          v40 = TIFFSwabLong8(&v53);
          v43 = v50;
          v48 = v53;
        }
      }

      else
      {
        v48 = *v45;
        v53.i16[0] = *v45;
        if (v51 < 0)
        {
          TIFFSwabShort(&v53);
          v43 = v50;
          v48 = v53.u16[0];
        }
      }

LABEL_83:
      *(v29 + 8 * v42) = v48;
      v45 = (v45 + v52);
      ++v42;
      v46 += v52;
    }

    while (v42 < v30);
  }

LABEL_9:
  if (*v14 && *(v17 + 228) > v16)
  {
    return *(*v14 + 8 * v16);
  }

LABEL_66:
  result = 0;
  if (v12)
  {
    *v12 = 1;
  }

  return result;
}

uint64_t _TIFFFillStrilesInternal(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x5000000) != 0x1000000)
  {
    return 1;
  }

  v6 = a1 + 232;
  v5 = *(a1 + 232);
  if ((v2 & 0x2000000) != 0)
  {
    free(v5);
    free(*(a1 + 240));
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *(a1 + 16) &= ~0x2000000u;
  }

  else if (v5)
  {
    return 1;
  }

  if (!*(a1 + 264))
  {
    return 0;
  }

  v7 = TIFFFetchStripThing(a1, (a1 + 256), *(a1 + 228), v6);
  if (a2)
  {
    if (TIFFFetchStripThing(a1, (a1 + 288), *(a1 + 228), (a1 + 240)))
    {
      v7 = v7;
    }

    else
    {
      v7 = 0;
    }
  }

  _TIFFmemset((a1 + 256), 0, 0x20uLL);
  _TIFFmemset((a1 + 288), 0, 0x20uLL);
  return v7;
}

uint64_t TIFFReadDirEntryCheckedLong8(uint64_t a1, int8x8_t *a2, int8x8_t *__dst, uint8x8_t a4)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x80000) != 0)
  {
    *__dst = a2[2];
    if ((v5 & 0x80) == 0)
    {
      return 0;
    }

LABEL_8:
    TIFFSwabLong8(__dst);
    return 0;
  }

  v7 = a2[2].u32[0];
  v9 = v7;
  if ((v5 & 0x80) != 0)
  {
    TIFFSwabLong(&v9, a4);
    v7 = v9;
  }

  result = TIFFReadDirEntryData(a1, v7, 8, __dst);
  if (!result)
  {
    if ((*(a1 + 16) & 0x80) == 0)
    {
      return 0;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t TIFFReadDirEntryData(uint64_t a1, uint64_t a2, int64_t __n, void *__dst)
{
  if (__n <= 0)
  {
    TIFFReadDirEntryData_cold_1();
  }

  if ((*(a1 + 17) & 8) == 0)
  {
    if (_TIFFSeekOK(a1, a2) && (*(a1 + 1208))(*(a1 + 1200), __dst, __n) == __n)
    {
      return 0;
    }

    return 3;
  }

  if (__CFADD__(__n, a2) || (__n + a2) > *(a1 + 1176))
  {
    return 3;
  }

  _TIFFmemcpy(__dst, (*(a1 + 1168) + a2), __n);
  return 0;
}

uint64_t TIFFReadDirEntryArrayWithLimit(uint64_t a1, unsigned __int16 *a2, _DWORD *a3, unsigned int a4, void **a5, unint64_t a6)
{
  v12 = TIFFDataWidth(a2[1]);
  v14 = *(a2 + 1);
  if (v14 >= a6)
  {
    v15 = a6;
  }

  else
  {
    v15 = *(a2 + 1);
  }

  if (v15)
  {
    v16 = v12 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v18 = v12;
    if (v14 >= 0xA)
    {
      LODWORD(v19) = 10;
    }

    else
    {
      v19 = *(a2 + 1);
    }

    if (v15 > 0x7FFFFFFF / v12 || v15 > 0x7FFFFFFF / a4)
    {
      return 6;
    }

    *a3 = v15;
    v21 = v12 * v15;
    if (!v21)
    {
      TIFFReadDirEntryArrayWithLimit_cold_1();
    }

    if (v21 >= 0x6400001)
    {
      v22 = (*(a1 + 1240))(*(a1 + 1200));
      if (v22 < v21)
      {
        TIFFWarningExtR(a1, "ReadDirEntryArray", "Requested memory size for tag %d (0x%x) %u is greater than filesize %llu. Memory not allocated, tag not read", *a2, *a2, v21, v22);
        return 7;
      }
    }

    v23 = *(a1 + 16);
    if ((v23 & 0x800) != 0)
    {
      if (*(a1 + 1176) < v21)
      {
        return 3;
      }
    }

    else
    {
      v24 = v23 & 0x80000;
      if (v21 >= 9 && v24 || v21 >= 5 && !v24)
      {
        v25 = 0;
        v31 = 0;
        goto LABEL_31;
      }
    }

    v26 = _TIFFCheckMalloc(a1, *a3, v18, "ReadDirEntryArray");
    v31 = v26;
    if (!v26)
    {
      return 7;
    }

    v25 = v26;
    v23 = *(a1 + 16);
LABEL_31:
    v27 = v18 * v19;
    if ((v23 & 0x80000) != 0)
    {
      if (v27 > 8 || v21 > 8)
      {
        *v30 = *(a2 + 2);
        if ((v23 & 0x80) != 0)
        {
          TIFFSwabLong8(v30);
          v23 = *(a1 + 16);
        }

        v28 = *v30;
        if ((v23 & 0x800) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_45;
      }
    }

    else if (v27 > 4 || v21 > 4)
    {
      v30[0] = *(a2 + 4);
      if ((v23 & 0x80) != 0)
      {
        TIFFSwabLong(v30, v13);
        v23 = *(a1 + 16);
      }

      v28 = v30[0];
      if ((v23 & 0x800) == 0)
      {
LABEL_37:
        v29 = TIFFReadDirEntryDataAndRealloc(a1, v28, v21, &v31);
        goto LABEL_46;
      }

LABEL_45:
      v29 = TIFFReadDirEntryData(a1, v28, v21, v25);
LABEL_46:
      v17 = v29;
      if (v29)
      {
        free(v31);
        return v17;
      }

LABEL_48:
      v17 = 0;
      *a5 = v31;
      return v17;
    }

    _TIFFmemcpy(v25, a2 + 8, v21);
    goto LABEL_48;
  }

  v17 = 0;
  *a5 = 0;
  return v17;
}

uint64_t TIFFReadDirEntryDataAndRealloc(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  if ((*(a1 + 17) & 8) != 0)
  {
    TIFFReadDirEntryDataAndRealloc_cold_1();
  }

  if (!_TIFFSeekOK(a1, a2))
  {
    return 3;
  }

  v7 = 0;
  v8 = 0x100000;
  while (1)
  {
    if (a3 <= v7)
    {
      return 0;
    }

    v9 = a3 - v7 >= v8;
    v10 = v8 < 1048576000;
    v11 = v10 && v9;
    v12 = v10 && v9 ? v8 : a3 - v7;
    v13 = malloc_type_realloc(*a4, v12 + v7, 0x100004077774924uLL);
    if (!v13)
    {
      break;
    }

    if (v11)
    {
      v8 *= 10;
    }

    *a4 = v13;
    v14 = (*(a1 + 1208))(*(a1 + 1200), &v13[v7], v12);
    v7 += v14;
    if (v14 != v12)
    {
      return 3;
    }
  }

  TIFFErrorExtR(a1, *a1, "Failed to allocate memory for %s (%lld elements of %lld bytes each)", "TIFFReadDirEntryArray", 1, v12 + v7);
  return 7;
}

uint64_t cmpTIFFEntryOffsetAndLength(void *a1, void *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t TIFFReadDirEntryByteArray(uint64_t a1, unsigned __int16 *a2, void **a3)
{
  v3 = a2[1];
  v4 = v3 > 0x11;
  v5 = (1 << v3) & 0x303DE;
  if (v4 || v5 == 0)
  {
    return 2;
  }

  LODWORD(size) = 0;
  v39 = 0;
  v10 = TIFFReadDirEntryArrayWithLimit(a1, a2, &size, 1u, &v39, 0xFFFFFFFFFFFFFFFFLL);
  if (v10 || (v11 = v39) == 0)
  {
    *a3 = 0;
    return v10;
  }

  v12 = a2[1];
  if ((v12 - 1) < 2 || v12 == 7)
  {
    goto LABEL_14;
  }

  if (v12 != 6)
  {
    v16 = size;
    v17 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (!v17)
    {
      free(v11);
      return 7;
    }

    v19 = v17;
    v20 = a2[1];
    if (v20 > 8)
    {
      if (v20 == 9)
      {
        if (v16)
        {
          v30 = v17;
          v31 = v11;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              v18 = TIFFSwabLong(v31, v18);
            }

            v32 = *v31;
            if (*v31 > 0xFF)
            {
              goto LABEL_70;
            }

            ++v31;
            *v30++ = v32;
          }

          while (--v16);
        }
      }

      else if (v20 == 16)
      {
        if (v16)
        {
          v36 = v17;
          v37 = v11;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabLong8(v37);
            }

            v38 = *v37;
            if (*v37 > 0xFFuLL)
            {
              goto LABEL_70;
            }

            ++v37;
            *v36++ = v38.i8[0];
          }

          while (--v16);
        }
      }

      else if (v20 == 17 && v16)
      {
        v24 = v17;
        v25 = v11;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabLong8(v25);
          }

          v26 = *v25;
          if (*v25 > 0xFFuLL)
          {
            goto LABEL_70;
          }

          ++v25;
          *v24++ = v26.i8[0];
        }

        while (--v16);
      }
    }

    else if (v20 == 3)
    {
      if (v16)
      {
        v27 = v17;
        v28 = v11;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(v28);
          }

          v29 = v28->u16[0];
          if (v29 > 0xFF)
          {
            goto LABEL_70;
          }

          v28 = (v28 + 2);
          *v27++ = v29;
        }

        while (--v16);
      }
    }

    else if (v20 == 4)
    {
      if (v16)
      {
        v33 = v17;
        v34 = v11;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            v18 = TIFFSwabLong(v34, v18);
          }

          v35 = *v34;
          if (*v34 > 0xFF)
          {
            goto LABEL_70;
          }

          ++v34;
          *v33++ = v35;
        }

        while (--v16);
      }
    }

    else if (v20 == 8 && v16)
    {
      v21 = v17;
      v22 = v11;
      while (1)
      {
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabShort(v22);
        }

        v23 = v22->u16[0];
        if (v23 > 0xFF)
        {
          break;
        }

        v22 = (v22 + 2);
        *v21++ = v23;
        if (!--v16)
        {
          goto LABEL_69;
        }
      }

LABEL_70:
      free(v11);
      free(v19);
      return 4;
    }

LABEL_69:
    free(v11);
    v10 = 0;
    *a3 = v19;
    return v10;
  }

  if (!size)
  {
LABEL_14:
    v10 = 0;
    *a3 = v39;
    return v10;
  }

  v13 = 0;
  while (1)
  {
    v14 = *(v39 + v13) >> 5;
    if ((v14 & 4) != 0)
    {
      break;
    }

    if (size == ++v13)
    {
      goto LABEL_14;
    }
  }

  v10 = v14 & 4;
  free(v39);
  return v10;
}

uint64_t TIFFReadDirEntryByte(uint64_t a1, int8x8_t *a2, _BYTE *a3, uint8x8_t a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  __dst[3] = v4;
  __dst[4] = v5;
  v8 = a2->u16[1];
  result = 2;
  if (v8 <= 6)
  {
    if (a2->u16[1] > 3u)
    {
      if (v8 == 4)
      {
LABEL_22:
        v11 = a2[2].u32[0];
        __dst[0].i32[0] = v11;
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabLong(__dst, a4);
          v11 = __dst[0].i32[0];
        }

        goto LABEL_24;
      }

      if (v8 != 6)
      {
        return result;
      }

      v10 = a2[2].u8[0];
      if (((v10 >> 5) & 4) != 0)
      {
        return (v10 >> 5) & 4;
      }

      result = 0;
LABEL_27:
      *a3 = v10;
      return result;
    }

    if (v8 != 1)
    {
      if (v8 != 3)
      {
        return result;
      }

LABEL_20:
      v11 = a2[2].u16[0];
      __dst[0].i16[0] = a2[2].i16[0];
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(__dst);
        v11 = __dst[0].u16[0];
      }

LABEL_24:
      if (v11 <= 0xFF)
      {
        result = 0;
        *a3 = v11;
        return result;
      }

      return 4;
    }

LABEL_26:
    result = 0;
    LOBYTE(v10) = a2[2].i8[0];
    goto LABEL_27;
  }

  if (a2->u16[1] <= 8u)
  {
    if (v8 != 7)
    {
      if (v8 != 8)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_26;
  }

  switch(v8)
  {
    case 9u:
      goto LABEL_22;
    case 0x10u:
      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (result)
      {
        return result;
      }

      goto LABEL_29;
    case 0x11u:
      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (!result)
      {
LABEL_29:
        if (*__dst <= 0xFFuLL)
        {
          result = 0;
          *a3 = __dst[0].i8[0];
          return result;
        }

        return 4;
      }

      break;
  }

  return result;
}

uint64_t TIFFReadDirEntrySbyte(uint64_t a1, int8x8_t *a2, __int8 *a3, uint8x8_t a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  __dst[3] = v4;
  __dst[4] = v5;
  v8 = a2->u16[1];
  result = 2;
  if (v8 <= 6)
  {
    if (a2->u16[1] > 3u)
    {
      if (v8 != 4)
      {
        if (v8 != 6)
        {
          return result;
        }

        result = 0;
        LOBYTE(v12) = a2[2].i8[0];
        goto LABEL_27;
      }

      v11 = a2[2].u32[0];
      __dst[0].i32[0] = v11;
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabLong(__dst, a4);
        v11 = __dst[0].i32[0];
      }
    }

    else
    {
      if (v8 == 1)
      {
LABEL_25:
        v12 = a2[2].u8[0];
        if (((v12 >> 5) & 4) != 0)
        {
          return (v12 >> 5) & 4;
        }

        result = 0;
LABEL_27:
        *a3 = v12;
        return result;
      }

      if (v8 != 3)
      {
        return result;
      }

      v11 = a2[2].u16[0];
      __dst[0].i16[0] = a2[2].i16[0];
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(__dst);
        v11 = __dst[0].u16[0];
      }
    }

    if (v11 > 0x7F)
    {
      return 4;
    }

LABEL_35:
    result = 0;
    *a3 = v11;
    return result;
  }

  if (a2->u16[1] <= 8u)
  {
    if (v8 != 7)
    {
      if (v8 != 8)
      {
        return result;
      }

      v11 = a2[2].u16[0];
      __dst[0].i16[0] = a2[2].i16[0];
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(__dst);
        v11 = __dst[0].u16[0];
      }

      if (v11 != v11)
      {
        return 4;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  switch(v8)
  {
    case 9u:
      v11 = a2[2].u32[0];
      __dst[0].i32[0] = v11;
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabLong(__dst, a4);
        v11 = __dst[0].i32[0];
      }

      if (v11 != v11)
      {
        return 4;
      }

      goto LABEL_35;
    case 0x10u:
      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (result)
      {
        return result;
      }

      v10 = __dst[0].i8[0];
      if (*__dst > 0x7FuLL)
      {
        return 4;
      }

      goto LABEL_39;
    case 0x11u:
      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (!result)
      {
        v10 = __dst[0].i8[0];
        if (*__dst != __dst[0].i8[0])
        {
          return 4;
        }

LABEL_39:
        result = 0;
        *a3 = v10;
      }

      break;
  }

  return result;
}

uint64_t TIFFReadDirEntrySshort(uint64_t a1, int8x8_t *a2, __int16 *a3, uint8x8_t a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  __dst[3] = v4;
  __dst[4] = v5;
  v8 = a2->u16[1];
  result = 2;
  if (v8 <= 7)
  {
    if (a2->u16[1] <= 3u)
    {
      if (v8 != 1)
      {
        if (v8 != 3)
        {
          return result;
        }

        v10 = a2[2].u16[0];
        __dst[0].i16[0] = a2[2].i16[0];
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabShort(__dst);
          v10 = __dst[0].u16[0];
        }

        result = (v10 >> 13) & 4;
        if (((v10 >> 13) & 4) != 0)
        {
          return result;
        }

LABEL_35:
        *a3 = v10;
        return result;
      }

      result = 0;
      v11 = a2[2].u8[0];
LABEL_27:
      *a3 = v11;
      return result;
    }

    if (v8 != 4)
    {
      if (v8 != 6)
      {
        return result;
      }

      result = 0;
      v11 = a2[2].i8[0];
      goto LABEL_27;
    }

    v10 = a2[2].u32[0];
    __dst[0].i32[0] = v10;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabLong(__dst, a4);
      v10 = __dst[0].i32[0];
    }

    if (!(v10 >> 15))
    {
LABEL_34:
      result = 0;
      goto LABEL_35;
    }

    return 4;
  }

  if (a2->u16[1] > 0xFu)
  {
    if (v8 == 16)
    {
      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (result)
      {
        return result;
      }

      v12 = __dst[0].i16[0];
      if (*__dst >> 15)
      {
        return 4;
      }
    }

    else
    {
      if (v8 != 17)
      {
        return result;
      }

      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (result)
      {
        return result;
      }

      v12 = __dst[0].i16[0];
      if (*__dst != __dst[0].i16[0])
      {
        return 4;
      }
    }

    result = 0;
    *a3 = v12;
    return result;
  }

  if (v8 != 8)
  {
    if (v8 != 9)
    {
      return result;
    }

    v10 = a2[2].u32[0];
    __dst[0].i32[0] = v10;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabLong(__dst, a4);
      v10 = __dst[0].i32[0];
    }

    if (v10 == v10)
    {
      goto LABEL_34;
    }

    return 4;
  }

  *a3 = a2[2].i16[0];
  if ((*(a1 + 16) & 0x80) != 0)
  {
    TIFFSwabShort(a3);
  }

  return 0;
}

uint64_t TIFFReadDirEntryLong(uint64_t a1, int8x8_t *a2, unsigned int *a3, uint8x8_t a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  __dst[3] = v4;
  __dst[4] = v5;
  v8 = a2->u16[1];
  result = 2;
  if (v8 > 7)
  {
    if (a2->u16[1] > 0xFu)
    {
      if (v8 == 16)
      {
        __dst[0] = 0;
        result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
        if (result)
        {
          return result;
        }
      }

      else
      {
        if (v8 != 17)
        {
          return result;
        }

        __dst[0] = 0;
        result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
        if (result)
        {
          return result;
        }
      }

      if (HIDWORD(*__dst))
      {
        return 4;
      }

      result = 0;
      *a3 = __dst[0].i32[0];
      return result;
    }

    if (v8 == 8)
    {
      v12 = a2[2].u16[0];
      __dst[0].i16[0] = a2[2].i16[0];
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(__dst);
        v12 = __dst[0].u16[0];
      }

      result = (v12 >> 13) & 4;
      if (((v12 >> 13) & 4) == 0)
      {
        v11 = v12;
LABEL_38:
        *a3 = v11;
      }
    }

    else if (v8 == 9)
    {
      v10 = a2[2].u32[0];
      __dst[0].i32[0] = v10;
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabLong(__dst, a4);
        v10 = __dst[0].i32[0];
      }

      result = (v10 >> 29) & 4;
      if (((v10 >> 29) & 4) == 0)
      {
LABEL_16:
        *a3 = v10;
      }
    }
  }

  else
  {
    if (a2->u16[1] <= 3u)
    {
      if (v8 != 1)
      {
        if (v8 != 3)
        {
          return result;
        }

        v10 = a2[2].u16[0];
        __dst[0].i16[0] = a2[2].i16[0];
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabShort(__dst);
          v10 = __dst[0].u16[0];
        }

        result = 0;
        goto LABEL_16;
      }

      result = 0;
      v11 = a2[2].u8[0];
      goto LABEL_38;
    }

    if (v8 != 4)
    {
      if (v8 != 6)
      {
        return result;
      }

      v11 = a2[2].i8[0];
      if (((v11 >> 5) & 4) != 0)
      {
        return (v11 >> 5) & 4;
      }

      result = 0;
      goto LABEL_38;
    }

    *a3 = a2[2].u32[0];
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabLong(a3, a4);
    }

    return 0;
  }

  return result;
}

uint64_t TIFFReadDirEntrySlong(uint64_t a1, int8x8_t *a2, unsigned int *a3, uint8x8_t a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  __dst[3] = v4;
  __dst[4] = v5;
  v8 = a2->u16[1];
  result = 2;
  if (v8 <= 7)
  {
    if (a2->u16[1] <= 3u)
    {
      if (v8 != 1)
      {
        if (v8 != 3)
        {
          return result;
        }

        v10 = a2[2].u16[0];
        __dst[0].i16[0] = a2[2].i16[0];
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabShort(__dst);
          v10 = __dst[0].u16[0];
        }

        result = 0;
        goto LABEL_32;
      }

      result = 0;
      v11 = a2[2].u8[0];
LABEL_28:
      *a3 = v11;
      return result;
    }

    if (v8 != 4)
    {
      if (v8 != 6)
      {
        return result;
      }

      result = 0;
      v11 = a2[2].i8[0];
      goto LABEL_28;
    }

    v10 = a2[2].u32[0];
    __dst[0].i32[0] = v10;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabLong(__dst, a4);
      v10 = __dst[0].i32[0];
    }

    result = (v10 >> 29) & 4;
    if (((v10 >> 29) & 4) == 0)
    {
LABEL_32:
      *a3 = v10;
      return result;
    }

    return result;
  }

  if (a2->u16[1] > 0xFu)
  {
    if (v8 == 16)
    {
      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (result)
      {
        return result;
      }

      v12 = __dst[0].i32[0];
      if (*__dst >> 31)
      {
        return 4;
      }
    }

    else
    {
      if (v8 != 17)
      {
        return result;
      }

      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (result)
      {
        return result;
      }

      v12 = __dst[0].i32[0];
      if (*__dst != __dst[0].i32[0])
      {
        return 4;
      }
    }

    result = 0;
    *a3 = v12;
    return result;
  }

  if (v8 == 8)
  {
    v13 = a2[2].i16[0];
    __dst[0].i16[0] = v13;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabShort(__dst);
      v13 = __dst[0].i16[0];
    }

    result = 0;
    v11 = v13;
    goto LABEL_28;
  }

  if (v8 == 9)
  {
    *a3 = a2[2].u32[0];
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabLong(a3, a4);
    }

    return 0;
  }

  return result;
}

unint64_t TIFFReadDirEntryLong8(uint64_t a1, int8x8_t *a2, int8x8_t *__dst, uint8x8_t a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  v6 = a2->u16[1];
  result = 2;
  if (v6 <= 7)
  {
    if (a2->u16[1] > 3u)
    {
      if (v6 != 4)
      {
        if (v6 != 6)
        {
          return result;
        }

        LODWORD(v10) = a2[2].u8[0];
        if (((v10 >> 5) & 4) != 0)
        {
          return (v10 >> 5) & 4;
        }

        result = 0;
        v10 = v10;
        goto LABEL_33;
      }

      v8 = a2[2].u32[0];
      LODWORD(__dsta) = v8;
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabLong(&__dsta, a4);
        v8 = __dsta;
      }

      goto LABEL_32;
    }

    if (v6 != 1)
    {
      if (v6 != 3)
      {
        return result;
      }

      v8 = a2[2].u16[0];
      LOWORD(__dsta) = a2[2].i16[0];
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(&__dsta);
        v8 = __dsta;
      }

LABEL_32:
      result = 0;
      v10 = v8;
      goto LABEL_33;
    }

    result = 0;
    v10 = a2[2].u8[0];
LABEL_33:
    *__dst = v10;
    return result;
  }

  if (a2->u16[1] > 0xFu)
  {
    if (v6 == 16)
    {

      return TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
    }

    else if (v6 == 17)
    {
      __dsta = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, &__dsta, a4);
      if (!result)
      {
        v10 = __dsta;
        if (((__dsta >> 61) & 4) != 0)
        {
          return (__dsta >> 61) & 4;
        }

        result = 0;
        goto LABEL_33;
      }
    }
  }

  else if (v6 == 8)
  {
    v11 = a2[2].u16[0];
    LOWORD(__dsta) = a2[2].i16[0];
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabShort(&__dsta);
      v11 = __dsta;
    }

    result = (v11 >> 13) & 4;
    if (((v11 >> 13) & 4) == 0)
    {
      v10 = v11;
      goto LABEL_33;
    }
  }

  else if (v6 == 9)
  {
    v9 = a2[2].u32[0];
    LODWORD(__dsta) = v9;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabLong(&__dsta, a4);
      v9 = __dsta;
    }

    result = (v9 >> 29) & 4;
    if (((v9 >> 29) & 4) == 0)
    {
      v10 = v9;
      goto LABEL_33;
    }
  }

  return result;
}

unint64_t TIFFReadDirEntrySlong8(uint64_t a1, int8x8_t *a2, int8x8_t *__dst, uint8x8_t a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  v6 = a2->u16[1];
  result = 2;
  if (v6 <= 7)
  {
    if (a2->u16[1] > 3u)
    {
      if (v6 != 4)
      {
        if (v6 != 6)
        {
          return result;
        }

        result = 0;
        v10 = a2[2].i8[0];
        goto LABEL_30;
      }

      v8 = a2[2].u32[0];
      LODWORD(__dsta) = v8;
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabLong(&__dsta, a4);
        v8 = __dsta;
      }
    }

    else
    {
      if (v6 == 1)
      {
        result = 0;
        v10 = a2[2].u8[0];
LABEL_30:
        *__dst = v10;
        return result;
      }

      if (v6 != 3)
      {
        return result;
      }

      v8 = a2[2].u16[0];
      LOWORD(__dsta) = a2[2].i16[0];
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(&__dsta);
        v8 = __dsta;
      }
    }

    result = 0;
    v10 = v8;
    goto LABEL_30;
  }

  if (a2->u16[1] <= 0xFu)
  {
    if (v6 == 8)
    {
      v11 = a2[2].i16[0];
      LOWORD(__dsta) = v11;
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(&__dsta);
        v11 = __dsta;
      }

      result = 0;
      v10 = v11;
    }

    else
    {
      if (v6 != 9)
      {
        return result;
      }

      v9 = a2[2].i32[0];
      LODWORD(__dsta) = v9;
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabLong(&__dsta, a4);
        v9 = __dsta;
      }

      result = 0;
      v10 = v9;
    }

    goto LABEL_30;
  }

  if (v6 == 16)
  {
    __dsta = 0;
    result = TIFFReadDirEntryCheckedLong8(a1, a2, &__dsta, a4);
    if (!result)
    {
      v10 = __dsta;
      if (((__dsta >> 61) & 4) != 0)
      {
        return (__dsta >> 61) & 4;
      }

      result = 0;
      goto LABEL_30;
    }
  }

  else if (v6 == 17)
  {

    return TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
  }

  return result;
}

uint64_t TIFFReadDirEntryFloat(uint64_t a1, int8x8_t *a2, float *a3, double a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  __dst[3] = v4;
  __dst[4] = v5;
  v8 = a2->u16[1];
  result = 2;
  if (v8 <= 8)
  {
    if (a2->u16[1] <= 4u)
    {
      if (v8 == 1)
      {
        result = 0;
        LOBYTE(a4) = a2[2].i8[0];
        *&a4 = LODWORD(a4);
      }

      else
      {
        if (v8 == 3)
        {
          v10 = a2[2].u16[0];
          __dst[0].i16[0] = a2[2].i16[0];
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(__dst);
            v10 = __dst[0].u16[0];
          }
        }

        else
        {
          if (v8 != 4)
          {
            return result;
          }

          v10 = a2[2].u32[0];
          __dst[0].i32[0] = v10;
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabLong(__dst, *&a4);
            v10 = __dst[0].i32[0];
          }
        }

        result = 0;
        *&a4 = v10;
      }

      goto LABEL_45;
    }

    if (v8 != 5)
    {
      if (v8 == 6)
      {
        result = 0;
        v12 = a2[2].i8[0];
      }

      else
      {
        if (v8 != 8)
        {
          return result;
        }

        v11 = a2[2].i16[0];
        __dst[0].i16[0] = v11;
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabShort(__dst);
          v11 = __dst[0].i16[0];
        }

        result = 0;
        v12 = v11;
      }

      *&a4 = v12;
      goto LABEL_45;
    }

    __dst[0] = 0;
    result = TIFFReadDirEntryCheckedRational(a1, a2, __dst, *&a4);
    if (result)
    {
      return result;
    }

    goto LABEL_41;
  }

  if (a2->u16[1] > 0xBu)
  {
    switch(v8)
    {
      case 0xCu:
        __dst[0] = 0;
        result = TIFFReadDirEntryCheckedDouble(a1, a2, __dst, *&a4);
        if (result)
        {
          return result;
        }

        a4 = *__dst;
        if (fabs(*__dst) > 3.40282347e38)
        {
          return 4;
        }

        result = 0;
        goto LABEL_42;
      case 0x10u:
        __dst[0] = 0;
        result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, *&a4);
        if (!result)
        {
          *&a4 = __dst[0];
          goto LABEL_45;
        }

        break;
      case 0x11u:
        __dst[0] = 0;
        result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, *&a4);
        if (!result)
        {
          *&a4 = __dst[0];
LABEL_45:
          *a3 = *&a4;
        }

        break;
    }
  }

  else
  {
    switch(v8)
    {
      case 9u:
        v13 = a2[2].i32[0];
        __dst[0].i32[0] = v13;
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabLong(__dst, *&a4);
          v13 = __dst[0].i32[0];
        }

        result = 0;
        *&a4 = v13;
        goto LABEL_45;
      case 0xAu:
        __dst[0] = 0;
        result = TIFFReadDirEntryCheckedSrational(a1, a2, __dst, *&a4);
        if (result)
        {
          return result;
        }

LABEL_41:
        a4 = *__dst;
LABEL_42:
        *&a4 = a4;
        goto LABEL_45;
      case 0xBu:
        LODWORD(a4) = a2[2].i32[0];
        *a3 = *&a4;
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabLong(a3, *&a4);
        }

        return 0;
    }
  }

  return result;
}

uint64_t TIFFReadDirEntryDouble(uint64_t a1, int8x8_t *a2, int8x8_t *__dst, double a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  v6 = a2->u16[1];
  result = 2;
  if (v6 > 8)
  {
    if (a2->u16[1] > 0xBu)
    {
      switch(v6)
      {
        case 0xCu:

          return TIFFReadDirEntryCheckedDouble(a1, a2, __dst, *&a4);
        case 0x10u:
          __dsta = 0.0;
          result = TIFFReadDirEntryCheckedLong8(a1, a2, &__dsta, *&a4);
          if (result)
          {
            return result;
          }

          a4 = __dsta;
LABEL_48:
          v9 = *&a4;
          goto LABEL_49;
        case 0x11u:
          __dsta = 0.0;
          result = TIFFReadDirEntryCheckedLong8(a1, a2, &__dsta, *&a4);
          if (!result)
          {
            v9 = *&__dsta;
LABEL_49:
            *__dst = v9;
          }

          break;
      }
    }

    else
    {
      if (v6 == 9)
      {
        v12 = a2[2].i32[0];
        LODWORD(__dsta) = v12;
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabLong(&__dsta, *&a4);
          v12 = LODWORD(__dsta);
        }

        result = 0;
        v9 = v12;
        goto LABEL_49;
      }

      if (v6 != 10)
      {
        if (v6 != 11)
        {
          return result;
        }

        LODWORD(a4) = a2[2].i32[0];
        LODWORD(__dsta) = LODWORD(a4);
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabLong(&__dsta, *&a4);
          LODWORD(a4) = LODWORD(__dsta);
        }

        result = 0;
        v9 = *&a4;
        goto LABEL_49;
      }

      return TIFFReadDirEntryCheckedSrational(a1, a2, __dst, *&a4);
    }
  }

  else
  {
    if (a2->u16[1] <= 4u)
    {
      if (v6 != 1)
      {
        if (v6 == 3)
        {
          v8 = a2[2].u16[0];
          LOWORD(__dsta) = a2[2].i16[0];
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(&__dsta);
            v8 = LOWORD(__dsta);
          }
        }

        else
        {
          if (v6 != 4)
          {
            return result;
          }

          v8 = a2[2].u32[0];
          LODWORD(__dsta) = v8;
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabLong(&__dsta, *&a4);
            v8 = LODWORD(__dsta);
          }
        }

        result = 0;
        v9 = v8;
        goto LABEL_49;
      }

      result = 0;
      LOBYTE(a4) = a2[2].i8[0];
      goto LABEL_48;
    }

    if (v6 != 5)
    {
      if (v6 == 6)
      {
        result = 0;
        v11 = a2[2].i8[0];
      }

      else
      {
        if (v6 != 8)
        {
          return result;
        }

        v10 = a2[2].i16[0];
        LOWORD(__dsta) = v10;
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabShort(&__dsta);
          v10 = LOWORD(__dsta);
        }

        result = 0;
        v11 = v10;
      }

      v9 = v11;
      goto LABEL_49;
    }

    return TIFFReadDirEntryCheckedRational(a1, a2, __dst, *&a4);
  }

  return result;
}

uint64_t TIFFReadDirEntryIfd8(uint64_t a1, int8x8_t *a2, int8x8_t *__dst, uint8x8_t a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  v6 = a2->u16[1];
  result = 2;
  if (v6 > 0xF)
  {
    if (v6 == 16 || v6 == 18)
    {

      return TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
    }
  }

  else if (v6 == 4 || v6 == 13)
  {
    v9 = a2[2].u32[0];
    v11 = v9;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabLong(&v11, a4);
      v9 = v11;
    }

    result = 0;
    *__dst = v9;
  }

  return result;
}

uint64_t TIFFReadDirEntrySbyteArray(uint64_t a1, unsigned __int16 *a2, void **a3)
{
  v3 = a2[1];
  v4 = v3 > 0x11;
  v5 = (1 << v3) & 0x303DA;
  if (v4 || v5 == 0)
  {
    return 2;
  }

  LODWORD(size) = 0;
  v39 = 0;
  v10 = TIFFReadDirEntryArrayWithLimit(a1, a2, &size, 1u, &v39, 0xFFFFFFFFFFFFFFFFLL);
  if (v10 || (v11 = v39) == 0)
  {
    *a3 = 0;
    return v10;
  }

  v12 = a2[1];
  if (v12 != 7)
  {
    if (v12 == 6)
    {
LABEL_14:
      v10 = 0;
      *a3 = v39;
      return v10;
    }

    if (v12 != 1)
    {
      v16 = size;
      v17 = malloc_type_malloc(size, 0x100004077774924uLL);
      if (!v17)
      {
        free(v11);
        return 7;
      }

      v19 = v17;
      v20 = a2[1];
      if (v20 > 8)
      {
        if (v20 == 9)
        {
          if (v16)
          {
            v30 = v17;
            v31 = v11;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                v18 = TIFFSwabLong(v31, v18);
              }

              v32 = *v31;
              if (v32 != v32)
              {
                goto LABEL_70;
              }

              ++v31;
              *v30++ = v32;
            }

            while (--v16);
          }
        }

        else if (v20 == 16)
        {
          if (v16)
          {
            v36 = v17;
            v37 = v11;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                TIFFSwabLong8(v37);
              }

              v38 = *v37;
              if (*v37 > 0x7FuLL)
              {
                goto LABEL_70;
              }

              ++v37;
              *v36++ = v38.i8[0];
            }

            while (--v16);
          }
        }

        else if (v20 == 17 && v16)
        {
          v24 = v17;
          v25 = v11;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabLong8(v25);
            }

            v26 = *v25;
            if (*v25 != v25->i8[0])
            {
              goto LABEL_70;
            }

            ++v25;
            *v24++ = v26.i8[0];
          }

          while (--v16);
        }
      }

      else if (v20 == 3)
      {
        if (v16)
        {
          v27 = v17;
          v28 = v11;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabShort(v28);
            }

            v29 = v28->u16[0];
            if (v29 > 0x7F)
            {
              goto LABEL_70;
            }

            v28 = (v28 + 2);
            *v27++ = v29;
          }

          while (--v16);
        }
      }

      else if (v20 == 4)
      {
        if (v16)
        {
          v33 = v17;
          v34 = v11;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              v18 = TIFFSwabLong(v34, v18);
            }

            v35 = *v34;
            if (*v34 > 0x7F)
            {
              goto LABEL_70;
            }

            ++v34;
            *v33++ = v35;
          }

          while (--v16);
        }
      }

      else if (v20 == 8 && v16)
      {
        v21 = v17;
        v22 = v11;
        while (1)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(v22);
          }

          v23 = v22->u16[0];
          if (v23 != v23)
          {
            break;
          }

          v22 = (v22 + 2);
          *v21++ = v23;
          if (!--v16)
          {
            goto LABEL_69;
          }
        }

LABEL_70:
        free(v11);
        free(v19);
        return 4;
      }

LABEL_69:
      free(v11);
      v10 = 0;
      *a3 = v19;
      return v10;
    }
  }

  if (!size)
  {
    goto LABEL_14;
  }

  v13 = 0;
  while (1)
  {
    v14 = *(v39 + v13) >> 5;
    if ((v14 & 4) != 0)
    {
      break;
    }

    if (size == ++v13)
    {
      goto LABEL_14;
    }
  }

  v10 = v14 & 4;
  free(v39);
  return v10;
}

uint64_t TIFFReadDirEntrySshortArray(uint64_t a1, unsigned __int16 *a2, void **a3)
{
  v3 = a2[1];
  v4 = v3 > 0x11;
  v5 = (1 << v3) & 0x3035A;
  if (v4 || v5 == 0)
  {
    return 2;
  }

  v41 = 0;
  v40 = 0;
  v10 = TIFFReadDirEntryArrayWithLimit(a1, a2, &v41, 2u, &v40, 0xFFFFFFFFFFFFFFFFLL);
  if (v10 || (v11 = v40) == 0)
  {
    *a3 = 0;
    return v10;
  }

  v12 = a2[1];
  if (v12 == 8)
  {
    *a3 = v40;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfShort(v11, v41);
    }

    return 0;
  }

  if (v12 != 3)
  {
    v16 = v41;
    v17 = malloc_type_malloc(2 * v41, 0x1000040BDFB0063uLL);
    if (!v17)
    {
      free(v11);
      return 7;
    }

    v19 = v17;
    v20 = a2[1];
    if (v20 > 8)
    {
      if (v20 == 9)
      {
        if (v16)
        {
          v30 = v17;
          v31 = v11;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              v18 = TIFFSwabLong(v31, v18);
            }

            v32 = *v31;
            if (v32 != v32)
            {
              goto LABEL_68;
            }

            ++v31;
            *v30++ = v32;
          }

          while (--v16);
        }
      }

      else if (v20 == 16)
      {
        if (v16)
        {
          v36 = v17;
          v37 = v11;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabLong8(v37);
            }

            v38 = *v37;
            if (*v37 >> 15)
            {
              goto LABEL_68;
            }

            ++v37;
            *v36++ = v38.i16[0];
          }

          while (--v16);
        }
      }

      else if (v20 == 17 && v16)
      {
        v24 = v17;
        v25 = v11;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabLong8(v25);
          }

          v26 = *v25;
          if (*v25 != v25->i16[0])
          {
            goto LABEL_68;
          }

          ++v25;
          *v24++ = v26.i16[0];
        }

        while (--v16);
      }
    }

    else
    {
      if (v20 == 1)
      {
        if (v16)
        {
          v27 = v17;
          v28 = v11;
          do
          {
            v29 = v28->u8[0];
            v28 = (v28 + 1);
            *v27++ = v29;
            --v16;
          }

          while (v16);
        }

        goto LABEL_66;
      }

      if (v20 != 4)
      {
        if (v20 == 6 && v16)
        {
          v21 = v17;
          v22 = v11;
          do
          {
            v23 = v22->i8[0];
            v22 = (v22 + 1);
            *v21++ = v23;
            --v16;
          }

          while (v16);
        }

        goto LABEL_66;
      }

      if (v16)
      {
        v33 = v17;
        v34 = v11;
        while (1)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            v18 = TIFFSwabLong(v34, v18);
          }

          v35 = *v34;
          if (*v34 >> 15)
          {
            break;
          }

          ++v34;
          *v33++ = v35;
          if (!--v16)
          {
            goto LABEL_66;
          }
        }

LABEL_68:
        free(v11);
        free(v19);
        return 4;
      }
    }

LABEL_66:
    free(v11);
    v10 = 0;
    *a3 = v19;
    return v10;
  }

  v13 = v41;
  if (v41)
  {
    v14 = v40;
    while (1)
    {
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(v14);
      }

      v15 = *v14 >> 13;
      if ((v15 & 4) != 0)
      {
        break;
      }

      v14 += 2;
      if (!--v13)
      {
        goto LABEL_15;
      }
    }

    v10 = v15 & 4;
    free(v11);
  }

  else
  {
LABEL_15:
    v10 = 0;
    *a3 = v11;
  }

  return v10;
}

uint64_t TIFFReadDirEntryLongArray(uint64_t a1, unsigned __int16 *a2, __int16 **a3)
{
  v3 = a2[1];
  v4 = v3 > 0x11;
  v5 = (1 << v3) & 0x3035A;
  if (v4 || v5 == 0)
  {
    return 2;
  }

  v42 = 0;
  v41 = 0;
  v10 = TIFFReadDirEntryArrayWithLimit(a1, a2, &v42, 4u, &v41, 0xFFFFFFFFFFFFFFFFLL);
  if (v10 || (v12 = v41) == 0)
  {
    *a3 = 0;
    return v10;
  }

  v13 = a2[1];
  if (v13 == 4)
  {
    *a3 = v41;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong(v12, v42, v11);
    }

    return 0;
  }

  if (v13 != 9)
  {
    v17 = v42;
    v18 = malloc_type_malloc(4 * v42, 0x100004052888210uLL);
    if (!v18)
    {
      free(v12);
      return 7;
    }

    v19 = v18;
    v20 = a2[1];
    if (v20 > 7)
    {
      if (v20 != 8)
      {
        if (v20 == 16)
        {
          if (!v17)
          {
            goto LABEL_66;
          }

          v37 = v18;
          v38 = v12;
          while (1)
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabLong8(v38);
            }

            v39 = *v38;
            if (HIDWORD(*v38))
            {
              break;
            }

            ++v38;
            *v37 = v39.i32[0];
            v37 += 2;
            if (!--v17)
            {
              goto LABEL_66;
            }
          }
        }

        else
        {
          if (v20 != 17 || !v17)
          {
            goto LABEL_66;
          }

          v25 = v18;
          v26 = v12;
          while (1)
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabLong8(v26);
            }

            v27 = *v26;
            if (HIDWORD(*v26))
            {
              break;
            }

            ++v26;
            *v25 = v27.i32[0];
            v25 += 2;
            if (!--v17)
            {
              goto LABEL_66;
            }
          }
        }

        v10 = 4;
LABEL_70:
        free(v12);
        v24 = v19;
LABEL_71:
        free(v24);
        return v10;
      }

      if (v17)
      {
        v31 = v18;
        v32 = v12;
        while (1)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(v32);
          }

          v33 = *v32;
          if (((v33 >> 13) & 4) != 0)
          {
            break;
          }

          v32 = (v32 + 2);
          *v31 = v33;
          v31 += 2;
          if (!--v17)
          {
            goto LABEL_66;
          }
        }

        v10 = (v33 >> 13) & 4;
        goto LABEL_70;
      }
    }

    else if (v20 == 1)
    {
      if (v17)
      {
        v28 = v18;
        v29 = v12;
        do
        {
          v30 = *v29;
          v29 = (v29 + 1);
          *v28 = v30;
          v28 += 2;
          --v17;
        }

        while (v17);
      }
    }

    else if (v20 == 3)
    {
      if (v17)
      {
        v34 = v18;
        v35 = v12;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(v35);
          }

          v36 = *v35;
          v35 = (v35 + 2);
          *v34 = v36;
          v34 += 2;
          --v17;
        }

        while (v17);
      }
    }

    else if (v20 == 6 && v17)
    {
      v21 = v18;
      v22 = v12;
      while (1)
      {
        v23 = *v22;
        if (((v23 >> 5) & 4) != 0)
        {
          break;
        }

        v22 = (v22 + 1);
        *v21 = v23;
        v21 += 2;
        if (!--v17)
        {
          goto LABEL_66;
        }
      }

      v10 = (v23 >> 5) & 4;
      goto LABEL_70;
    }

LABEL_66:
    free(v12);
    v10 = 0;
    *a3 = v19;
    return v10;
  }

  v14 = v42;
  if (v42)
  {
    v15 = v41;
    while (1)
    {
      if ((*(a1 + 16) & 0x80) != 0)
      {
        v11 = TIFFSwabLong(v15, v11);
      }

      v16 = *v15 >> 29;
      if ((v16 & 4) != 0)
      {
        break;
      }

      ++v15;
      if (!--v14)
      {
        goto LABEL_15;
      }
    }

    v10 = v16 & 4;
    v24 = v12;
    goto LABEL_71;
  }

LABEL_15:
  v10 = 0;
  *a3 = v12;
  return v10;
}

uint64_t TIFFReadDirEntrySlongArray(uint64_t a1, unsigned __int16 *a2, void **a3)
{
  v3 = a2[1];
  v4 = v3 > 0x11;
  v5 = (1 << v3) & 0x3035A;
  if (v4 || v5 == 0)
  {
    return 2;
  }

  v41 = 0;
  v40 = 0;
  v10 = TIFFReadDirEntryArrayWithLimit(a1, a2, &v41, 4u, &v40, 0xFFFFFFFFFFFFFFFFLL);
  if (v10 || (v12 = v40) == 0)
  {
    *a3 = 0;
    return v10;
  }

  v13 = a2[1];
  if (v13 == 9)
  {
    *a3 = v40;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong(v12, v41, v11);
    }

    return 0;
  }

  if (v13 != 4)
  {
    v17 = v41;
    v18 = malloc_type_malloc(4 * v41, 0x100004052888210uLL);
    if (!v18)
    {
      free(v12);
      return 7;
    }

    v19 = v18;
    v20 = a2[1];
    if (v20 <= 7)
    {
      if (v20 == 1)
      {
        if (v17)
        {
          v27 = v18;
          v28 = v12;
          do
          {
            v29 = *v28;
            v28 = (v28 + 1);
            *v27++ = v29;
            --v17;
          }

          while (v17);
        }
      }

      else if (v20 == 3)
      {
        if (v17)
        {
          v33 = v18;
          v34 = v12;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabShort(v34);
            }

            v35 = *v34;
            v34 = (v34 + 2);
            *v33++ = v35;
            --v17;
          }

          while (v17);
        }
      }

      else if (v20 == 6 && v17)
      {
        v21 = v18;
        v22 = v12;
        do
        {
          v23 = *v22;
          v22 = (v22 + 1);
          *v21++ = v23;
          --v17;
        }

        while (v17);
      }

      goto LABEL_64;
    }

    if (v20 == 8)
    {
      if (v17)
      {
        v30 = v18;
        v31 = v12;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(v31);
          }

          v32 = *v31;
          v31 = (v31 + 2);
          *v30++ = v32;
          --v17;
        }

        while (v17);
      }

      goto LABEL_64;
    }

    if (v20 == 16)
    {
      if (v17)
      {
        v36 = v18;
        v37 = v12;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabLong8(v37);
          }

          v38 = *v37;
          if (*v37 >> 31)
          {
            goto LABEL_66;
          }

          ++v37;
          *v36++ = v38.i32[0];
        }

        while (--v17);
      }
    }

    else if (v20 == 17 && v17)
    {
      v24 = v18;
      v25 = v12;
      while (1)
      {
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabLong8(v25);
        }

        v26 = *v25;
        if (*v25 != v25->i32[0])
        {
          break;
        }

        ++v25;
        *v24++ = v26.i32[0];
        if (!--v17)
        {
          goto LABEL_64;
        }
      }

LABEL_66:
      free(v12);
      free(v19);
      return 4;
    }

LABEL_64:
    free(v12);
    v10 = 0;
    *a3 = v19;
    return v10;
  }

  v14 = v41;
  if (v41)
  {
    v15 = v40;
    while (1)
    {
      if ((*(a1 + 16) & 0x80) != 0)
      {
        v11 = TIFFSwabLong(v15, v11);
      }

      v16 = *v15 >> 29;
      if ((v16 & 4) != 0)
      {
        break;
      }

      ++v15;
      if (!--v14)
      {
        goto LABEL_15;
      }
    }

    v10 = v16 & 4;
    free(v12);
  }

  else
  {
LABEL_15:
    v10 = 0;
    *a3 = v12;
  }

  return v10;
}

uint64_t TIFFReadDirEntrySlong8Array(uint64_t a1, unsigned __int16 *a2, void **a3)
{
  v3 = a2[1];
  v4 = v3 > 0x11;
  v5 = (1 << v3) & 0x3035A;
  if (v4 || v5 == 0)
  {
    return 2;
  }

  v40 = 0;
  v39 = 0;
  v10 = TIFFReadDirEntryArrayWithLimit(a1, a2, &v40, 8u, &v39, 0xFFFFFFFFFFFFFFFFLL);
  if (v10 || (v11 = v39) == 0)
  {
    *a3 = 0;
  }

  else
  {
    v12 = a2[1];
    if (v12 == 17)
    {
      *a3 = v39;
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabArrayOfLong8(v11, v40);
      }

      return 0;
    }

    else if (v12 == 16)
    {
      v13 = v40;
      if (v40)
      {
        v14 = v39;
        while (1)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabLong8(v14);
          }

          if (((*v14 >> 61) & 4) != 0)
          {
            break;
          }

          ++v14;
          if (!--v13)
          {
            goto LABEL_15;
          }
        }

        v10 = (*v14 >> 61) & 4;
        free(v11);
      }

      else
      {
LABEL_15:
        v10 = 0;
        *a3 = v11;
      }
    }

    else
    {
      v15 = v40;
      v16 = malloc_type_malloc(8 * v40, 0x100004000313F17uLL);
      if (v16)
      {
        v18 = v16;
        v19 = a2[1];
        if (v19 > 5)
        {
          if (v19 == 6)
          {
            if (v15)
            {
              v29 = v16;
              v30 = v11;
              do
              {
                v31 = v30->i8[0];
                v30 = (v30 + 1);
                *v29++ = v31;
                --v15;
              }

              while (v15);
            }
          }

          else if (v19 == 8)
          {
            if (v15)
            {
              v35 = v16;
              v36 = v11;
              do
              {
                if ((*(a1 + 16) & 0x80) != 0)
                {
                  TIFFSwabShort(v36);
                }

                v37 = v36->i16[0];
                v36 = (v36 + 2);
                *v35++ = v37;
                --v15;
              }

              while (v15);
            }
          }

          else if (v19 == 9 && v15)
          {
            v23 = v16;
            v24 = v11;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                v17 = TIFFSwabLong(v24, v17);
              }

              v25 = *v24++;
              *v23++ = v25;
              --v15;
            }

            while (v15);
          }
        }

        else if (v19 == 1)
        {
          if (v15)
          {
            v26 = v16;
            v27 = v11;
            do
            {
              v28 = v27->u8[0];
              v27 = (v27 + 1);
              *v26++ = v28;
              --v15;
            }

            while (v15);
          }
        }

        else if (v19 == 3)
        {
          if (v15)
          {
            v32 = v16;
            v33 = v11;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                TIFFSwabShort(v33);
              }

              v34 = v33->u16[0];
              v33 = (v33 + 2);
              *v32++ = v34;
              --v15;
            }

            while (v15);
          }
        }

        else if (v19 == 4 && v15)
        {
          v20 = v16;
          v21 = v11;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              v17 = TIFFSwabLong(v21, v17);
            }

            v22 = *v21++;
            *v20++ = v22;
            --v15;
          }

          while (v15);
        }

        free(v11);
        v10 = 0;
        *a3 = v18;
      }

      else
      {
        free(v11);
        return 7;
      }
    }
  }

  return v10;
}

uint64_t TIFFReadDirEntryFloatArray(uint64_t a1, unsigned __int16 *a2, float **a3)
{
  v5 = a2[1];
  v6 = v5 > 0x11;
  v7 = (1 << v5) & 0x31F7A;
  if (v6 || v7 == 0)
  {
    return 2;
  }

  v60 = v3;
  v61 = v4;
  v59 = 0;
  v58 = 0;
  result = TIFFReadDirEntryArrayWithLimit(a1, a2, &v59, 4u, &v58, 0xFFFFFFFFFFFFFFFFLL);
  if (result || (v14 = v58) == 0)
  {
    *a3 = 0;
  }

  else if (a2[1] == 11)
  {
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong(v58, v59, v13);
    }

    result = 0;
    *a3 = v14;
  }

  else
  {
    v15 = v59;
    v16 = malloc_type_malloc(4 * v59, 0x100004052888210uLL);
    if (v16)
    {
      v18 = v16;
      v19 = a2[1];
      if (v19 <= 7)
      {
        if (a2[1] <= 3u)
        {
          if (v19 == 1)
          {
            if (v15)
            {
              v33 = v16;
              v34 = v14;
              do
              {
                v35 = *v34;
                v34 = (v34 + 1);
                *v33++ = v35;
                LODWORD(v15) = v15 - 1;
              }

              while (v15);
            }
          }

          else if (v19 == 3 && v15)
          {
            v30 = v16;
            v31 = v14;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                TIFFSwabShort(v31);
              }

              v32 = *v31;
              v31 = (v31 + 2);
              *v30++ = v32;
              LODWORD(v15) = v15 - 1;
            }

            while (v15);
          }
        }

        else if (v19 == 4)
        {
          if (v15)
          {
            v46 = v16;
            v47 = v14;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                v17 = TIFFSwabLong(v47, v17);
              }

              v48 = *v47++;
              *v17.i32 = v48;
              *v46++ = v48;
              LODWORD(v15) = v15 - 1;
            }

            while (v15);
          }
        }

        else if (v19 == 5)
        {
          if (v15)
          {
            v36 = v16;
            v37 = v14;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                v17 = TIFFSwabLong(v37, v17);
                v38 = *v37;
                if ((*(a1 + 16) & 0x80) != 0)
                {
                  v17 = TIFFSwabLong(v37 + 1, v17);
                }
              }

              else
              {
                v38 = *v37;
              }

              v39 = v37[1];
              if (v39)
              {
                *v17.i32 = v38 / v39;
              }

              else
              {
                v17 = 0;
              }

              v37 += 2;
              *v36++ = *v17.i32;
              LODWORD(v15) = v15 - 1;
            }

            while (v15);
          }
        }

        else if (v19 == 6 && v15)
        {
          v24 = v16;
          v25 = v14;
          do
          {
            v26 = *v25;
            v25 = (v25 + 1);
            *v24++ = v26;
            LODWORD(v15) = v15 - 1;
          }

          while (v15);
        }
      }

      else if (a2[1] > 0xBu)
      {
        if (v19 == 12)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabArrayOfLong8(v14, v15);
          }

          if (v15)
          {
            v52 = v18;
            v53 = v14;
            do
            {
              v54 = *v53++;
              v55 = v54;
              v56 = 3.40282347e38;
              if (v54 <= 3.40282347e38)
              {
                v56 = v55;
                if (v55 < -3.40282347e38)
                {
                  v56 = -3.40282347e38;
                }
              }

              v57 = v56;
              *v52++ = v57;
              LODWORD(v15) = v15 - 1;
            }

            while (v15);
          }
        }

        else if (v19 == 16)
        {
          if (v15)
          {
            v43 = v16;
            v44 = v14;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                TIFFSwabLong8(v44);
              }

              v45 = *v44++;
              *v43++ = v45;
              LODWORD(v15) = v15 - 1;
            }

            while (v15);
          }
        }

        else if (v19 == 17 && v15)
        {
          v27 = v16;
          v28 = v14;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabLong8(v28);
            }

            v29 = *v28++;
            *v27++ = v29;
            LODWORD(v15) = v15 - 1;
          }

          while (v15);
        }
      }

      else if (v19 == 8)
      {
        if (v15)
        {
          v49 = v16;
          v50 = v14;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabShort(v50);
            }

            v51 = *v50;
            v50 = (v50 + 2);
            *v49++ = v51;
            LODWORD(v15) = v15 - 1;
          }

          while (v15);
        }
      }

      else if (v19 == 9)
      {
        if (v15)
        {
          v40 = v16;
          v41 = v14;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              v17 = TIFFSwabLong(v41, v17);
            }

            v42 = *v41++;
            *v17.i32 = v42;
            *v40++ = v42;
            LODWORD(v15) = v15 - 1;
          }

          while (v15);
        }
      }

      else if (v19 == 10 && v15)
      {
        v20 = v16;
        v21 = v14;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            v17 = TIFFSwabLong(v21, v17);
            v22 = *v21;
            if ((*(a1 + 16) & 0x80) != 0)
            {
              v17 = TIFFSwabLong(v21 + 1, v17);
            }
          }

          else
          {
            v22 = *v21;
          }

          v23 = v21[1];
          if (v23)
          {
            *v17.i32 = v22 / v23;
          }

          else
          {
            v17 = 0;
          }

          v21 += 2;
          *v20++ = *v17.i32;
          LODWORD(v15) = v15 - 1;
        }

        while (v15);
      }

      free(v14);
      result = 0;
      *a3 = v18;
    }

    else
    {
      free(v14);
      return 7;
    }
  }

  return result;
}

uint64_t TIFFReadDirEntryIfd8Array(uint64_t a1, unsigned __int16 *a2, unsigned int **a3)
{
  v5 = a2[1];
  v6 = v5 > 0x12;
  v7 = (1 << v5) & 0x52010;
  if (v6 || v7 == 0)
  {
    return 2;
  }

  v24 = v3;
  v25 = v4;
  v23 = 0;
  v22 = 0;
  result = TIFFReadDirEntryArrayWithLimit(a1, a2, &v23, 8u, &v22, 0xFFFFFFFFFFFFFFFFLL);
  if (result || (v13 = v22) == 0)
  {
    *a3 = 0;
  }

  else if ((a2[1] | 2) == 0x12)
  {
    *a3 = v22;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong8(v13, v23);
    }

    return 0;
  }

  else
  {
    v14 = v23;
    v15 = malloc_type_malloc(8 * v23, 0x100004000313F17uLL);
    if (v15)
    {
      v17 = v15;
      v18 = a2[1];
      if ((v18 == 13 || v18 == 4) && v14)
      {
        v19 = v15;
        v20 = v13;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            v16 = TIFFSwabLong(v20, v16);
          }

          v21 = *v20++;
          *v19 = v21;
          v19 += 2;
          --v14;
        }

        while (v14);
      }

      free(v13);
      result = 0;
      *a3 = v17;
    }

    else
    {
      free(v13);
      return 7;
    }
  }

  return result;
}

uint64_t TIFFReadDirEntryCheckedRational(uint64_t a1, uint64_t a2, double *a3, uint8x8_t a4)
{
  __dst = 0;
  v5 = *(a1 + 16);
  if ((v5 & 0x80000) != 0)
  {
    __dst = *(a2 + 16);
    if ((v5 & 0x80) == 0)
    {
LABEL_9:
      v9 = 0.0;
      if (__dst)
      {
        v10 = HIDWORD(__dst) == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v9 = __dst / HIDWORD(__dst);
      }

      result = 0;
      *a3 = v9;
      return result;
    }

LABEL_8:
    TIFFSwabArrayOfLong(&__dst, 2, a4);
    goto LABEL_9;
  }

  v7 = *(a2 + 16);
  v11 = v7;
  if ((v5 & 0x80) != 0)
  {
    TIFFSwabLong(&v11, a4);
    v7 = v11;
  }

  result = TIFFReadDirEntryData(a1, v7, 8, &__dst);
  if (!result)
  {
    if ((*(a1 + 16) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t TIFFReadDirEntryCheckedSrational(uint64_t a1, uint64_t a2, double *a3, uint8x8_t a4)
{
  __dst = 0;
  v5 = *(a1 + 16);
  if ((v5 & 0x80000) != 0)
  {
    __dst = *(a2 + 16);
    if ((v5 & 0x80) == 0)
    {
LABEL_9:
      v9 = 0.0;
      if (__dst)
      {
        v10 = HIDWORD(__dst) == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v9 = __dst / HIDWORD(__dst);
      }

      result = 0;
      *a3 = v9;
      return result;
    }

LABEL_8:
    TIFFSwabArrayOfLong(&__dst, 2, a4);
    goto LABEL_9;
  }

  v7 = *(a2 + 16);
  v11 = v7;
  if ((v5 & 0x80) != 0)
  {
    TIFFSwabLong(&v11, a4);
    v7 = v11;
  }

  result = TIFFReadDirEntryData(a1, v7, 8, &__dst);
  if (!result)
  {
    if ((*(a1 + 16) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t TIFFReadDirEntryCheckedDouble(uint64_t a1, int8x8_t *a2, int8x8_t *__dst, uint8x8_t a4)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x80000) != 0)
  {
    *__dst = a2[2];
    if ((v5 & 0x80) == 0)
    {
      return 0;
    }

LABEL_8:
    TIFFSwabLong8(__dst);
    return 0;
  }

  v7 = a2[2].u32[0];
  v9 = v7;
  if ((v5 & 0x80) != 0)
  {
    TIFFSwabLong(&v9, a4);
    v7 = v9;
  }

  result = TIFFReadDirEntryData(a1, v7, 8, __dst);
  if (!result)
  {
    if ((*(a1 + 16) & 0x80) == 0)
    {
      return 0;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t TIFFReadDirEntryLong8ArrayWithLimit(uint64_t a1, unsigned __int16 *a2, unsigned __int8 **a3, unint64_t a4)
{
  v4 = a2[1];
  v5 = v4 > 0x11;
  v6 = (1 << v4) & 0x3035A;
  if (v5 || v6 == 0)
  {
    return 2;
  }

  v42 = 0;
  v41 = 0;
  v11 = TIFFReadDirEntryArrayWithLimit(a1, a2, &v42, 8u, &v41, a4);
  if (v11 || (v12 = v41) == 0)
  {
    *a3 = 0;
    return v11;
  }

  v13 = a2[1];
  if (v13 == 16)
  {
    *a3 = v41;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong8(v12, v42);
    }

    return 0;
  }

  if (v13 != 17)
  {
    v16 = v42;
    v17 = malloc_type_malloc(8 * v42, 0x100004000313F17uLL);
    if (!v17)
    {
      free(v12);
      return 7;
    }

    v19 = v17;
    v20 = a2[1];
    if (v20 <= 5)
    {
      if (v20 == 1)
      {
        if (v16)
        {
          v28 = v17;
          v29 = v12;
          do
          {
            v30 = v29->u8[0];
            v29 = (v29 + 1);
            *v28 = v30;
            v28 += 8;
            --v16;
          }

          while (v16);
        }
      }

      else if (v20 == 3)
      {
        if (v16)
        {
          v34 = v17;
          v35 = v12;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabShort(v35);
            }

            v36 = v35->u16[0];
            v35 = (v35 + 2);
            *v34 = v36;
            v34 += 8;
            --v16;
          }

          while (v16);
        }
      }

      else if (v20 == 4 && v16)
      {
        v21 = v17;
        v22 = v12;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            v18 = TIFFSwabLong(v22, v18);
          }

          v23 = *v22++;
          *v21 = v23;
          v21 += 8;
          --v16;
        }

        while (v16);
      }

      goto LABEL_65;
    }

    if (v20 == 6)
    {
      if (v16)
      {
        v31 = v17;
        v32 = v12;
        while (1)
        {
          v33 = v32->u8[0];
          if (((v33 >> 5) & 4) != 0)
          {
            break;
          }

          v32 = (v32 + 1);
          *v31 = v33;
          v31 += 8;
          if (!--v16)
          {
            goto LABEL_65;
          }
        }

        v11 = (v33 >> 5) & 4;
        goto LABEL_69;
      }
    }

    else if (v20 == 8)
    {
      if (v16)
      {
        v37 = v17;
        v38 = v12;
        while (1)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(v38);
          }

          v39 = v38->u16[0];
          if (((v39 >> 13) & 4) != 0)
          {
            break;
          }

          v38 = (v38 + 2);
          *v37 = v39;
          v37 += 8;
          if (!--v16)
          {
            goto LABEL_65;
          }
        }

        v11 = (v39 >> 13) & 4;
        goto LABEL_69;
      }
    }

    else if (v20 == 9 && v16)
    {
      v25 = v17;
      v26 = v12;
      while (1)
      {
        if ((*(a1 + 16) & 0x80) != 0)
        {
          v18 = TIFFSwabLong(v26, v18);
        }

        v27 = *v26;
        if (((v27 >> 29) & 4) != 0)
        {
          break;
        }

        ++v26;
        *v25 = v27;
        v25 += 8;
        if (!--v16)
        {
          goto LABEL_65;
        }
      }

      v11 = (v27 >> 29) & 4;
LABEL_69:
      free(v12);
      v24 = v19;
LABEL_70:
      free(v24);
      return v11;
    }

LABEL_65:
    free(v12);
    v11 = 0;
    *a3 = v19;
    return v11;
  }

  v14 = v42;
  if (v42)
  {
    v15 = v41;
    while (1)
    {
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabLong8(v15);
      }

      if (((*v15 >> 61) & 4) != 0)
      {
        break;
      }

      ++v15;
      if (!--v14)
      {
        goto LABEL_15;
      }
    }

    v11 = (*v15 >> 61) & 4;
    v24 = v12;
    goto LABEL_70;
  }

LABEL_15:
  v11 = 0;
  *a3 = v12;
  return v11;
}

void allocChoppedUpStripArrays(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = _TIFFGetStrileOffsetOrByteCountValue(a1, 0, a1 + 256, a1 + 232, 0, a6, a7);
  v14 = _TIFFGetStrileOffsetOrByteCountValue(a1, (*(a1 + 228) - 1), a1 + 256, a1 + 232, 0, v12, v13);
  v17 = _TIFFGetStrileOffsetOrByteCountValue(a1, (*(a1 + 228) - 1), a1 + 288, a1 + 240, 0, v15, v16);
  if (!__CFADD__(v17, v14))
  {
    v18 = v17 + v14 - v11;
    if (v17 + v14 >= v11)
    {
      if (a2 <= 0x640000 || (v19 = (*(a1 + 1240))(*(a1 + 1200)), 16 * a2 <= v19))
      {
        v20 = a2;
        v21 = _TIFFCheckMalloc(a1, a2, 8, "for chopped StripByteCounts array");
        v22 = _TIFFCheckMalloc(a1, a2, 8, "for chopped StripOffsets array");
        v29 = v22;
        if (v21 && v22)
        {
          if (a2)
          {
            v30 = v22;
            v31 = v21;
            do
            {
              if (a3 >= v18)
              {
                a3 = v18;
              }

              *v31++ = a3;
              if (a3)
              {
                v32 = v11;
              }

              else
              {
                v32 = 0;
              }

              *v30++ = v32;
              v11 += a3;
              v18 -= a3;
              --v20;
            }

            while (v20);
          }

          *(a1 + 224) = a2;
          *(a1 + 228) = a2;
          _cg_TIFFSetField(a1, 278, v23, v24, v25, v26, v27, v28, a4);
          free(*(a1 + 240));
          free(*(a1 + 232));
          *(a1 + 232) = v29;
          *(a1 + 240) = v21;
          *(a1 + 16) |= 0x4000000u;
        }

        else
        {
          if (v21)
          {
            free(v21);
          }

          if (v29)
          {

            free(v29);
          }
        }
      }

      else
      {
        TIFFWarningExtR(a1, "allocChoppedUpStripArrays", "Requested memory size for StripByteCount and StripOffsets %llu is greater than filesize %llu. Memory not allocated", 16 * a2, v19);
      }
    }
  }
}

void BCTextureImp::~BCTextureImp(BCTextureImp *this, uint64_t a2, const char *a3)
{
  *this = &unk_1EF4D4A30;
  if (*(this + 3))
  {
    Source = CGImageSourceGetSource(*(this + 4));
    if (Source)
    {
      IIOImageReadSession::releaseBytePointer(Source, *(this + 3));
    }
  }

  v5 = *(this + 4);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 4) = 0;

  _cg_jpeg_mem_term(this, a2, a3);
}

{
  BCTextureImp::~BCTextureImp(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t BCTextureImp::loadDataFromXPCObject(BCTextureImp *this, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "iio_xpc_plugin_data_bc_imp", &length);
  if (length == 544)
  {
    memcpy(this + 16, data, 0x220uLL);
    *(this + 3) = 0;
    *(this + 4) = 0;
    *(this + 2) = 0;
  }

  return 0;
}

uint64_t BCTextureImp::textureDataLockData(BCTextureImp *this, IIOImageReadSession *a2, unint64_t a3, unint64_t a4, IIOImageRead **a5, unint64_t *a6, unint64_t *a7)
{
  if (!*(this + 2))
  {
    *(this + 2) = IIOImageReadSession::retainBytePointer(a2, this + 3, 1);
    v13 = IIOImageSource::cf(a2);
    *(this + 4) = v13;
    CFRetain(v13);
    if (!*(this + 2))
    {
      _cg_jpeg_mem_term("textureDataLockData", 140, "*** Can't access image data\n");
    }
  }

  if (a3 >= 0x1F)
  {
    a3 = 31;
  }

  *a5 = IIOImageReadSession::getSize(a2);
  v14 = this + 8 * a3;
  *a6 = *(v14 + 6);
  *a7 = *(v14 + 38);
  return *(this + 2);
}

void BCReadPlugin::BCReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *v5 = &unk_1EF4D4A78;
  *(v5 + 520) = 0u;
  operator new();
}

void sub_185FDDC5C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 66);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  IIOReadPlugin::~IIOReadPlugin(v1);
  _Unwind_Resume(a1);
}

void sub_185FDDD6C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 66);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  IIOReadPlugin::~IIOReadPlugin(v1);
  _Unwind_Resume(a1);
}

void BCReadPlugin::~BCReadPlugin(BCReadPlugin *this)
{
  *this = &unk_1EF4D4A78;
  v2 = *(this + 64);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 62);
  if (v3)
  {
    (**(v3 + 8))();
  }

  v4 = *(this + 66);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  IIOReadPlugin::~IIOReadPlugin(this);
}

{
  BCReadPlugin::~BCReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t BCReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 13)
  {
    return IIOReadPlugin::setupImageProviderCallbackV3(a1, a2, IIO_Reader::CopyImageBlockSetProc, 0, 0, IIO_Reader::CopyImageTextureDataProc);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

uint64_t BCReadPlugin::loadDataFromXPCObject(BCReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_bc", &length);
    if (length == 48)
    {
      v6 = *data;
      v7 = data[2];
      *(this + 30) = data[1];
      *(this + 31) = v7;
      *(this + 29) = v6;
      *(this + 62) = 0;
      return (*(**(this + 65) + 16))(*(this + 65), a2);
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t BCReadPlugin::saveDataToXPCObject(BCReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!result)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_bc", this + 464, 0x30uLL);
    v5 = *(**(this + 65) + 24);

    return v5();
  }

  return result;
}

uint64_t BCReadPlugin::initialize(BCReadPlugin *this, IIODictionary *a2)
{
  v90 = *MEMORY[0x1E69E9840];
  v78 = 0;
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  IIOScanner::IIOScanner(&v73, *(this + 3));
  if (*(this + 369) != 1)
  {
    goto LABEL_108;
  }

  v3 = *(this + 65);
  v4 = *(this + 55);
  if (v4 == 1145193326)
  {
    memset(v89, 0, 44);
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    __dst = 0u;
    v79 = 0uLL;
    LODWORD(v80) = 0;
    if (IIOScanner::getBytesAtOffset(&v73, &v78, *(this + 26), 4uLL) != 4)
    {
      goto LABEL_108;
    }

    Size = IIOImageReadSession::getSize(*(this + 3));
    if (v78 != 542327876)
    {
      goto LABEL_108;
    }

    v24 = Size;
    *(this + 26) = 4;
    if (IIOScanner::getBytesAtOffset(&v73, &__dst, 4, 0x7CuLL) != 124)
    {
      goto LABEL_108;
    }

    v25 = __dst.i32[1];
    if ((__dst.i8[4] & 1) == 0)
    {
      v30 = "*** ERROR: ddsHeader.dwFlags is missing 'DDSD_CAPS'\n";
      v29 = 360;
      goto LABEL_180;
    }

    v26 = __dst.i8[4] & 6;
    v27 = "*** ERROR: ddsHeader.dwFlags is missing 'has_DDSD_WIDTH'\n";
    if ((__dst.i8[4] & 2) != 0)
    {
      v28 = 362;
    }

    else
    {
      v28 = 361;
    }

    if ((__dst.i8[4] & 2) == 0)
    {
      v27 = "*** ERROR: ddsHeader.dwFlags is missing 'DDSD_HEIGHT'\n";
    }

    if (v26 == 6)
    {
      v29 = 363;
    }

    else
    {
      v29 = v28;
    }

    if (v26 == 6)
    {
      v30 = "*** ERROR: ddsHeader.dwFlags is missing 'DDSD_PIXELFORMAT'\n";
    }

    else
    {
      v30 = v27;
    }

    if ((~__dst.i32[1] & 0x1006) != 0)
    {
      goto LABEL_180;
    }

    *(this + 26) += 124;
    *(this + 372) = 0;
    v7 = __dst.u32[3];
    if ((v25 & 8) != 0)
    {
      v31 = v85;
    }

    else if ((__dst.i32[3] + 3) >= 4)
    {
      v31 = (__dst.i32[3] + 3) & 0xFFFFFFFC;
    }

    else
    {
      v31 = 4;
    }

    v8 = __dst.u32[2];
    if (v24 <= __dst.u32[3])
    {
      v67 = 375;
    }

    else
    {
      if (v24 > __dst.u32[2])
      {
        if (v24 <= v31)
        {
          _cg_jpeg_mem_term("initialize", 377, "*** ERROR: bad pitchOrLinearSize: %d  (fileSize: %ld)\n");
          goto LABEL_108;
        }

        *(this + 120) = (__dst.i32[3] + 3) >> 2;
        *(this + 121) = (v8 + 3) >> 2;
        if ((v25 & 0x20000) != 0)
        {
          v43 = DWORD2(v85);
          if (DWORD2(v85))
          {
            v44 = v7 <= v8 ? v8 : v7;
            if (v43 > (log(v44) / 0.693147181))
            {
              _cg_jpeg_mem_term("initialize", 386, "*** ERROR: bad dwMipMapCount (%d) max: %d\n");
            }
          }
        }

        v45 = bswap32(v89[0].u32[0]);
        if (v45)
        {
          if (v45 != 1146630448)
          {
            if (v45 == 1146639409)
            {
              v46 = (2 * v7 + 6) & 0x3FFFFFFF8;
              if (!v7)
              {
                v46 = 8;
              }

              if (v24 <= (v46 * v8) >> 2)
              {
                _cg_jpeg_mem_term("initialize", 407, "*** ERROR: corrupt file:  pitch*height: %ld  (fileSize: %ld)\n");
                goto LABEL_108;
              }
            }

            goto LABEL_106;
          }

          if (IIOScanner::getBytesAtOffset(&v73, &v79, *(this + 26), 0x14uLL) != 20)
          {
            goto LABEL_108;
          }

          *(this + 26) += 20;
          v47 = dxgi_to_gl(v79);
          *(this + 119) = v47;
          if (v47 || v79 != 87)
          {
            goto LABEL_107;
          }

          *(this + 119) = 34952;
          *(this + 127) = v89[0].i32[1];
          *(v89 + 8) = xmmword_186208E00;
          v48 = 33619971;
LABEL_155:
          *(this + 122) = v48;
          v47 = 34952;
          goto LABEL_156;
        }

        if ((BYTE12(v88) & 0x40) == 0)
        {
LABEL_106:
          v47 = fourcc_to_gl(v45);
          *(this + 119) = v47;
LABEL_107:
          if (!v47)
          {
            goto LABEL_108;
          }

LABEL_156:
          v54 = DWORD2(v85);
          if (DWORD2(v85) >= 0x1F)
          {
            v54 = 31;
          }

          if ((v25 & 0x20000) != 0)
          {
            LODWORD(v55) = v54;
          }

          else
          {
            LODWORD(v55) = 1;
          }

          *(this + 118) = v55;
          v56 = *(this + 26);
          v57 = 0;
          v58 = BCReadPlugin::bytesPerBlock(v47);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          else
          {
            v55 = v55;
          }

          while (1)
          {
            v59 = (v7 >> v57) + 3;
            if (v59 <= 7)
            {
              v60 = 1;
            }

            else
            {
              v60 = v59 >> 2;
            }

            v61 = (v8 >> v57) + 3;
            if (v61 <= 7)
            {
              v62 = 1;
            }

            else
            {
              v62 = v61 >> 2;
            }

            v63 = v58 * v62 * v60;
            if (v57 <= 0x1F)
            {
              v64 = v3 + 8 * v57;
              *(v64 + 48) = v56;
              *(v64 + 304) = v63;
            }

            v65 = __CFADD__(v56, v63);
            v56 += v63;
            if (v65)
            {
              goto LABEL_108;
            }

            if (v56 > IIOImageReadSession::getSize(*(this + 3)))
            {
              _cg_jpeg_mem_term("initialize", 544, "*** WARNING: file truncated. Only the first %lu miplevels of %lu complete\n");
              *(this + 118) = v57;
              if (v57)
              {
LABEL_177:
                *(this + 58) = *(v3 + 304);
                goto LABEL_66;
              }

              _cg_jpeg_mem_term("initialize", 549, "*** ERROR: file to small to contain a single image / miplevel\n");
              goto LABEL_108;
            }

            if (v55 == ++v57)
            {
              goto LABEL_177;
            }
          }
        }

        *(this + 119) = 34952;
        v50 = v89[0].i32[1];
        *(this + 127) = v89[0].i32[1];
        v51 = vrev32q_s8(*(v89 + 8));
        *(v89 + 8) = v51;
        if ((v51.i32[1] & v51.i32[0]) != 0)
        {
          v30 = "*** overlapping R-G channels\n";
          v29 = 449;
          goto LABEL_180;
        }

        if ((v51.i32[2] & v51.i32[0]) != 0)
        {
          v30 = "*** overlapping R-B channels\n";
          v29 = 450;
          goto LABEL_180;
        }

        if ((v51.i32[2] & v51.i32[1]) != 0)
        {
          v30 = "*** overlapping G-B channels\n";
          v29 = 451;
          goto LABEL_180;
        }

        if ((v51.i32[3] & v51.i32[0]) != 0)
        {
          v30 = "*** overlapping R-A channels\n";
          v29 = 453;
          goto LABEL_180;
        }

        if ((v51.i32[3] & v51.i32[1]) != 0)
        {
          v30 = "*** overlapping G-A channels\n";
          v29 = 454;
          goto LABEL_180;
        }

        if ((v51.i32[3] & v51.i32[2]) != 0)
        {
          v30 = "*** overlapping B-A channels\n";
          v29 = 455;
          goto LABEL_180;
        }

        v52 = v51.i32[1] | v51.i32[0] | v51.i32[2] | v51.i32[3];
        if (v50 == 24)
        {
          if (v52 != -256)
          {
            v53 = 459;
LABEL_210:
            _cg_jpeg_mem_term("initialize", v53, "*** overlapping RGBA channels?  bitMask: %08X\n");
            goto LABEL_108;
          }
        }

        else if (v52 != -1)
        {
          v53 = 461;
          goto LABEL_210;
        }

        if (v51.i32[0] > 65279)
        {
          if (v51.i32[0] == 65280)
          {
            v48 = 0x2000000;
          }

          else
          {
            if (v51.i32[0] != 16711680)
            {
              goto LABEL_108;
            }

            v48 = 0x1000000;
          }
        }

        else if (v51.i32[0] == -16777216)
        {
          v48 = 0;
        }

        else
        {
          if (v51.i32[0] != 255)
          {
            goto LABEL_108;
          }

          v48 = 50331648;
        }

        if (v51.i32[1] > 65279)
        {
          if (v51.i32[1] == 65280)
          {
            v48 |= 0x20000u;
          }

          else
          {
            if (v51.i32[1] != 16711680)
            {
              goto LABEL_108;
            }

            v48 |= 0x10000u;
          }
        }

        else if (v51.i32[1] != -16777216)
        {
          if (v51.i32[1] != 255)
          {
            goto LABEL_108;
          }

          v48 |= 0x30000u;
        }

        if (v51.i32[2] > 65279)
        {
          if (v51.i32[2] == 65280)
          {
            v48 |= 0x200u;
          }

          else
          {
            if (v51.i32[2] != 16711680)
            {
              goto LABEL_108;
            }

            v48 |= 0x100u;
          }
        }

        else if (v51.i32[2] != -16777216)
        {
          if (v51.i32[2] != 255)
          {
            goto LABEL_108;
          }

          v48 |= 0x300u;
        }

        if (v51.i32[3] <= 254)
        {
          if (v51.i32[3] == -16777216)
          {
            goto LABEL_155;
          }

          if (v51.i32[3])
          {
            goto LABEL_108;
          }
        }

        else if (v51.i32[3] != 255)
        {
          if (v51.i32[3] == 65280)
          {
            v48 |= 2u;
          }

          else
          {
            if (v51.i32[3] != 16711680)
            {
              goto LABEL_108;
            }

            v48 |= 1u;
          }

          goto LABEL_155;
        }

        v48 |= 3u;
        goto LABEL_155;
      }

      v67 = 376;
    }

    _cg_jpeg_mem_term("initialize", v67, "*** ERROR: bad dimension: %d x %d  (fileSize: %ld)\n");
    goto LABEL_108;
  }

  if (v4 == 1261584963)
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    if (IIOScanner::getBytesAtOffset(&v73, &v79, *(this + 26), 0x50uLL) == 80)
    {
      if (!IsKTX2Header(&v79))
      {
        v18 = "*** ERROR: invalid KTX2Header\n";
        v19 = 646;
        goto LABEL_186;
      }

      if (v80 == 1)
      {
        if (v74 <= v81)
        {
          v30 = "*** ERROR: Invalid numberOfArrayElements (%d).\n";
          v29 = 649;
        }

        else if (DWORD1(v82) + v82 > v74)
        {
          v29 = 653;
          v30 = "*** ERROR: Invalid dfdOffset / dfdLength  (%d / %d).\n";
        }

        else
        {
          if (HIDWORD(v82) + DWORD2(v82) <= v74)
          {
            if (!v83 || (v18 = "*** ERROR: Invalid scgdOffset / scgdLength  (%d / %d).\n", v19 = 663, !__CFADD__(v83, *(&v83 + 1))) && v83 + *(&v83 + 1) <= v74)
            {
              if (IIOScanner::getBytesAtOffset(&v73, &v70, *(this + 26) + 80, 0x18uLL) == 24)
              {
                if (v71 + v70 <= v74)
                {
                  v88 = 0u;
                  memset(v89, 0, 24);
                  v86 = 0u;
                  v87 = 0u;
                  __dst = 0u;
                  v85 = 0u;
                  v69 = 0;
                  if (!CreateKtxStream(&__dst, *(this + 3)))
                  {
                    if (!ktxTexture2_CreateFromStream(&__dst, 0, &v69))
                    {
                      *(this + 62) = v69;
                      v20 = HIDWORD(v79);
                      *(this + 126) = HIDWORD(v79);
                      v21 = v20 - 131;
                      if (v21 >= 0x10)
                      {
                        v22 = 0;
                      }

                      else
                      {
                        v22 = dword_186208E70[v21];
                      }

                      *(this + 119) = v22;
                      *(this + 372) = 0;
                      v32 = *(&v80 + 4);
                      *(this + 60) = vshr_n_u32(vadd_s32(*(&v80 + 4), 0x300000003), 2uLL);
                      v33 = DWORD2(v81);
                      if (DWORD2(v81) >= 0x1F)
                      {
                        v33 = 31;
                      }

                      *(this + 118) = v33;
                      *(this + 58) = *(v3 + 304);
                      LODWORD(v8) = HIDWORD(v32);
                      LODWORD(v7) = v32;
                      goto LABEL_66;
                    }

                    _cg_jpeg_mem_term("initialize", 678, "*** ERROR: ktxTexture2_CreateFromStream failed [%d]\n");
                  }

LABEL_108:
                  kdebug_trace();
                  v42 = 4294967246;
                  goto LABEL_109;
                }

                v18 = "*** ERROR: corrupt Level info - byteOffset: %ld  byteLength: %ld\n";
                v19 = 669;
              }

              else
              {
                v18 = "*** ERROR: failed to read KTX2LevelInfo\n";
                v19 = 666;
              }
            }

LABEL_186:
            _cg_jpeg_mem_term("initialize", v19, v18);
            goto LABEL_108;
          }

          v29 = 657;
          v30 = "*** ERROR: Invalid kvdOffset / kvdLength  (%d / %d).\n";
        }
      }

      else
      {
        v30 = "*** ERROR: Invalid typeSize (%d). typeSize must be 1 for block-compressed or supercompressed formats.\n";
        v29 = 648;
      }

LABEL_180:
      _cg_jpeg_mem_term("initialize", v29, v30);
      goto LABEL_108;
    }

    v18 = "*** ERROR: failed to read KTX2Header\n";
    v19 = 643;
    goto LABEL_186;
  }

  if (v4 != 1262633838)
  {
    LODWORD(v7) = 0;
    *(this + 61) = 0;
    *(this + 62) = 0;
    goto LABEL_69;
  }

  v86 = 0u;
  v87 = 0u;
  __dst = 0u;
  v85 = 0u;
  if (IIOScanner::getBytesAtOffset(&v73, &__dst, *(this + 26), 0x40uLL) != 64)
  {
    goto LABEL_108;
  }

  SwapKTXHeader(&__dst);
  v5 = __dst.i32[3];
  *(this + 119) = HIDWORD(v85);
  *(this + 372) = v5 == 67305985;
  v68 = *(&v86 + 4);
  v6 = IIOImageReadSession::getSize(*(this + 3));
  LODWORD(v7) = v68.i32[0];
  if (v6 <= v68.u32[0])
  {
    v66 = 573;
LABEL_191:
    _cg_jpeg_mem_term("initialize", v66, "*** bad dimension: %d x %d  (fileSize: %d)\n");
    goto LABEL_108;
  }

  LODWORD(v8) = v68.i32[1];
  if (v6 <= v68.u32[1])
  {
    v66 = 574;
    goto LABEL_191;
  }

  *(this + 60) = vshr_n_u32(vadd_s32(v68, 0x300000003), 2uLL);
  v9 = DWORD2(v87);
  v10 = HIDWORD(v87) + 64;
  *(this + 26) = v10;
  if (v9 >= 0x1F)
  {
    v11 = 31;
  }

  else
  {
    v11 = v9;
  }

  *(this + 118) = v11;
  if (v9)
  {
    v12 = 0;
    v13 = v74;
    v14 = v10;
    while (1)
    {
      *&v79 = 0;
      if (IIOScanner::getBytesAtOffset(&v73, &v79, v14, 8uLL) != 8)
      {
        break;
      }

      v15 = v14 + 4;
      v16 = v13 - (v14 + 4);
      if (v13 <= v14 + 4)
      {
        *(this + 118) = v12;
        goto LABEL_62;
      }

      if (v79 < v16)
      {
        v16 = v79;
      }

      if (v12 <= 0x1F)
      {
        v17 = v3 + 8 * v12;
        *(v17 + 48) = v15;
        *(v17 + 304) = v16;
      }

      v10 = v16 + v15;
      v14 = ((v16 + 3) & 0xFFFFFFFFFFFFFFFCLL) + v15;
      if (++v12 >= *(this + 118))
      {
        goto LABEL_62;
      }
    }

    _cg_jpeg_mem_term("initialize", 592, "*** BC - failed to read %d bytes\n");
    goto LABEL_108;
  }

LABEL_62:
  v34 = *(this + 121) * *(this + 120);
  v35 = BCReadPlugin::bytesPerBlock(*(this + 119));
  if (!is_mul_ok(v34, v35))
  {
    v30 = "*** ERROR: BC-image too big\n";
    v29 = 622;
    goto LABEL_180;
  }

  if (*(v3 + 304) < v34 * v35)
  {
    v30 = "*** ERROR: BC-levelSize too small\n";
    v29 = 624;
    goto LABEL_180;
  }

  if (v10 > IIOImageReadSession::getSize(*(this + 3)))
  {
    IIOImageReadSession::getSize(*(this + 3));
    _cg_jpeg_mem_term("initialize", 625, "***ERROR: BC (KTX) file truncated. File Size: %lu, expected %lu\n");
    goto LABEL_108;
  }

  *(this + 58) = *(v3 + 304);
  *(this + 26) += 4;
LABEL_66:
  *(this + 61) = v7;
  *(this + 62) = v8;
  if (!v8 && v7)
  {
    *(this + 62) = 1;
  }

LABEL_69:
  *(this + 308) = vshl_n_s32(*(this + 480), 2uLL);
  v36 = *(this + 119);
  v37 = 2;
  v38 = 8;
  v39 = 32;
  if (v36 <= 36493)
  {
    if (v36 == 36283)
    {
      *(this + 85) = 1196573017;
      *(this + 32) = 0x200000100080008;
    }

    else
    {
      if (v36 != 36284)
      {
        v40 = 2;
        if (v36 != 36286)
        {
          goto LABEL_76;
        }

        goto LABEL_75;
      }

      *(this + 373) = 1;
      *(this + 85) = 1196573017;
      *(this + 32) = 0x100000100100010;
      LODWORD(v7) = 2 * v7;
    }

    v41 = MEMORY[0x1E695F128];
    goto LABEL_80;
  }

  v40 = 2;
  if ((v36 - 36494) < 2)
  {
LABEL_75:
    v37 = 1;
    *(this + 373) = 1;
    v40 = 3;
    v38 = 16;
    v39 = 64;
  }

LABEL_76:
  *(this + 85) = 1380401696;
  *(this + 129) = v39;
  *(this + 128) = v38;
  *(this + 130) = 4;
  *(this + 263) = v37;
  *(this + 262) = 3;
  LODWORD(v7) = v7 << v40;
  v41 = MEMORY[0x1E695F1C0];
LABEL_80:
  *(this + 63) = v7;
  *(this + 20) = CGColorSpaceCreateWithName(*v41);
  *(this + 374) = 0;
  getenv("IIO_useV3");
  *(this + 204) = 1;
  if (*(this + 194) == 1)
  {
    ImageIOLog("    BC:\n");
  }

  v42 = 0;
LABEL_109:
  IIOScanner::~IIOScanner(&v73);
  return v42;
}

void sub_185FDECE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

uint64_t dxgi_to_gl(int a1)
{
  v1 = a1 - 71;
  if (a1 - 71) < 0x1D && ((0x1B0036DBu >> v1))
  {
    return dword_186208EB0[v1];
  }

  _cg_jpeg_mem_term("dxgi_to_gl", 1454, "*** ERROR: dxgi-format '%d' not handled\n");
  return 0;
}

uint64_t fourcc_to_gl(int a1)
{
  if (a1 <= 1111700818)
  {
    if (a1 == 1096042802)
    {
      return 36285;
    }

    if (a1 != 1111700563)
    {
      if (a1 == 1111700565)
      {
        return 36283;
      }

      return 0;
    }

    return 36284;
  }

  else if (a1 > 1146639410)
  {
    if (a1 != 1146639413)
    {
      if (a1 == 1146639411)
      {
        return 33778;
      }

      return 0;
    }

    return 33779;
  }

  else
  {
    if (a1 != 1111700819)
    {
      if (a1 == 1146639409)
      {
        return 33777;
      }

      return 0;
    }

    return 36286;
  }
}

uint64_t BCReadPlugin::bytesPerBlock(BCReadPlugin *this)
{
  if ((this - 33776) >= 2 && (this - 35916) >= 2 && (this - 36283) >= 2)
  {
    return 16;
  }

  else
  {
    return 8;
  }
}

uint64_t BCReadPlugin::decodeDXTCtoRGBX(BCReadPlugin *this, IIOImageReadSession *a2, vImage_Buffer *a3, unsigned int a4, int a5)
{
  if (a4 > 2)
  {
    v8 = at_alpha_not_premultiplied;
  }

  else
  {
    v8 = dword_186208F24[a4];
  }

  v9 = *(this + 119);
  if (v9 > 36282)
  {
    if (v9 > 36491)
    {
      if ((v9 - 36492) < 2)
      {
        if (a5)
        {
          v12 = at_texel_format_bgra8_unorm;
        }

        else
        {
          v12 = at_texel_format_rgba8_unorm;
        }

        v11 = at_block_format_bc7;
        goto LABEL_48;
      }

      if (v9 == 36494)
      {
        v11 = at_block_format_bc6;
      }

      else
      {
        if (v9 != 36495)
        {
          goto LABEL_40;
        }

        v11 = at_block_format_bc6u;
      }
    }

    else
    {
      if (v9 <= 36284)
      {
        if (v9 == 36283)
        {
          v11 = at_block_format_bc4;
          v12 = at_texel_format_l8_unorm;
        }

        else
        {
          v11 = at_block_format_bc4s;
          v12 = at_texel_format_l16_float;
        }

        goto LABEL_48;
      }

      if (v9 == 36285)
      {
        if (a5)
        {
          v12 = at_texel_format_bgra8_unorm;
        }

        else
        {
          v12 = at_texel_format_rgba8_unorm;
        }

        v11 = at_block_format_bc5;
        goto LABEL_48;
      }

      if (v9 != 36286)
      {
        goto LABEL_40;
      }

      v11 = at_block_format_bc5s;
    }

    v12 = at_texel_format_rgba16_float;
    goto LABEL_48;
  }

  if (v9 > 35915)
  {
    if ((v9 - 35916) >= 2)
    {
      if (v9 != 35918)
      {
        v10 = 35919;
LABEL_16:
        if (v9 == v10)
        {
          if (a5)
          {
            v12 = at_texel_format_bgra8_unorm;
          }

          else
          {
            v12 = at_texel_format_rgba8_unorm;
          }

          v11 = at_block_format_bc3;
          goto LABEL_48;
        }

LABEL_40:
        _cg_jpeg_mem_term("decodeDXTCtoRGBX", 964, "*** BC - unknown GL pixel format [0x%X]\n");
        return 4294967246;
      }

      goto LABEL_32;
    }
  }

  else if ((v9 - 33776) >= 2)
  {
    if (v9 != 33778)
    {
      v10 = 33779;
      goto LABEL_16;
    }

LABEL_32:
    if (a5)
    {
      v12 = at_texel_format_bgra8_unorm;
    }

    else
    {
      v12 = at_texel_format_rgba8_unorm;
    }

    v11 = at_block_format_bc2;
    goto LABEL_48;
  }

  if (a5)
  {
    v12 = at_texel_format_bgra8_unorm;
  }

  else
  {
    v12 = at_texel_format_rgba8_unorm;
  }

  v11 = at_block_format_bc1;
LABEL_48:
  v14 = *(this + 65);
  v43 = 0;
  v15 = IIOImageReadSession::retainBytePointer(a2, &v43, 0);
  v16 = *(this + 56);
  if (v16 > 0x1F)
  {
    if (!v15)
    {
      goto LABEL_55;
    }

    v18 = 0;
    v19 = 0;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_55;
    }

    v17 = v14 + 8 * v16;
    v18 = *(v17 + 304);
    v19 = *(v17 + 48);
  }

  v20 = v15 + v19;
  if (((v15 + v19) & 0xF) == 0)
  {
    v26 = 0;
    goto LABEL_66;
  }

  IIOImageReadSession::releaseBytePointer(a2, v43);
  v43 = 0;
LABEL_55:
  Size = IIOImageReadSession::getSize(a2);
  v22 = *(this + 56);
  if (v22 > 0x1F)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(v14 + 8 * v22 + 48);
  }

  v18 = Size - v23;
  if (Size == v23)
  {
    goto LABEL_64;
  }

  v20 = malloc_type_malloc(Size - v23, 0x100004077774924uLL);
  v24 = *(this + 56);
  if (v24 > 0x1F)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v14 + 8 * v24 + 48);
  }

  if (v18 != IIOImageReadSession::getBytesAtOffset(a2, v20, v25, v18))
  {
    _cg_jpeg_mem_term("decodeDXTCtoRGBX", 1004, "got: %ld expected: %ld\n");
    v26 = v20;
    if (!v20)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  v26 = v20;
  if (v20)
  {
LABEL_66:
    v27 = at_encoder_create(v12, v8, v11, v8, 0);
    if (v27)
    {
      v28 = v27;
      height = a3->height;
      dest.texels = a3->data;
      rowBytes = a3->rowBytes;
      dest.validSize.x = a3->width;
      dest.validSize.y = height;
      *(&dest.validSize + 3) = 0;
      dest.rowBytes = rowBytes;
      dest.validSize.z = 1;
      dest.sliceBytes = 0;
      v31 = *&dest.validSize.x;
      *&v44.x = *&dest.validSize.x;
      v44.z = 1;
      block_counts = at_encoder_get_block_counts(v27, v44);
      v33 = block_counts;
      v34 = HIDWORD(block_counts);
      src.blocks = v20;
      src.rowBytes = at_encoder_get_block_size(v28) * block_counts;
      src.sliceBytes = v34 * v33 * at_encoder_get_block_size(v28);
      outSize = 0;
      *&v45.x = *&dest.validSize.x;
      v45.z = 1;
      v35.bits = at_block_get_features(v11, &src, v45, v18, &outSize, at_flags_default).bits;
      if (outSize > v18)
      {
        v36.bits = v35.bits;
        v37 = HIDWORD(v31);
        _cg_jpeg_mem_term("decodeDXTCtoRGBX", 1035, "*** expected size > file size (%d > %d)\n");
        v38 = v18 / (v33 << (LODWORD(v36.bits) >> 5)) * ((v36.bits >> 22) & 0xFFF);
        if (v38 >= 0xFFFFFFFF)
        {
          LODWORD(v38) = -1;
        }

        if (v38 >= v37)
        {
          LODWORD(v38) = v37;
        }

        dest.validSize.y = v38;
      }

      v39 = at_encoder_decompress_texels(v28, &src, &dest, at_flags_default);
      if (v39)
      {
        LogError("decodeDXTCtoRGBX", 1048, "at_encoder_decompress_texels returned: %ld\n", v39);
      }

      CFRelease(v28);
    }

    if (!v26)
    {
      goto LABEL_78;
    }

LABEL_77:
    free(v26);
    goto LABEL_78;
  }

LABEL_64:
  BCReadPlugin::decodeDXTCtoRGBX();
LABEL_78:
  if (v43)
  {
    IIOImageReadSession::releaseBytePointer(a2, v43);
  }

  return 0;
}

uint64_t BCReadPlugin::decodeDXTCtoRGBX(BCReadPlugin *this, void *a2, size_t a3, vImage_Buffer *a4, unsigned int a5, int a6)
{
  if (a5 > 2)
  {
    v9 = at_alpha_not_premultiplied;
  }

  else
  {
    v9 = dword_186208F24[a5];
  }

  v10 = *(this + 119);
  if (v10 > 36282)
  {
    if (v10 > 36491)
    {
      if ((v10 - 36492) < 2)
      {
        if (a6)
        {
          v13 = at_texel_format_bgra8_unorm;
        }

        else
        {
          v13 = at_texel_format_rgba8_unorm;
        }

        v12 = at_block_format_bc7;
        goto LABEL_48;
      }

      if (v10 == 36494)
      {
        v12 = at_block_format_bc6;
      }

      else
      {
        if (v10 != 36495)
        {
          goto LABEL_40;
        }

        v12 = at_block_format_bc6u;
      }
    }

    else
    {
      if (v10 <= 36284)
      {
        if (v10 == 36283)
        {
          v12 = at_block_format_bc4;
          v13 = at_texel_format_l8_unorm;
        }

        else
        {
          v12 = at_block_format_bc4s;
          v13 = at_texel_format_l16_float;
        }

        goto LABEL_48;
      }

      if (v10 == 36285)
      {
        if (a6)
        {
          v13 = at_texel_format_bgra8_unorm;
        }

        else
        {
          v13 = at_texel_format_rgba8_unorm;
        }

        v12 = at_block_format_bc5;
        goto LABEL_48;
      }

      if (v10 != 36286)
      {
        goto LABEL_40;
      }

      v12 = at_block_format_bc5s;
    }

    v13 = at_texel_format_rgba16_float;
    goto LABEL_48;
  }

  if (v10 > 35915)
  {
    if ((v10 - 35916) >= 2)
    {
      if (v10 != 35918)
      {
        v11 = 35919;
LABEL_16:
        if (v10 == v11)
        {
          if (a6)
          {
            v13 = at_texel_format_bgra8_unorm;
          }

          else
          {
            v13 = at_texel_format_rgba8_unorm;
          }

          v12 = at_block_format_bc3;
          goto LABEL_48;
        }

LABEL_40:
        _cg_jpeg_mem_term("decodeDXTCtoRGBX", 1127, "*** BC - unknown GL pixel format\n");
        return 4294967246;
      }

      goto LABEL_32;
    }
  }

  else if ((v10 - 33776) >= 2)
  {
    if (v10 != 33778)
    {
      v11 = 33779;
      goto LABEL_16;
    }

LABEL_32:
    if (a6)
    {
      v13 = at_texel_format_bgra8_unorm;
    }

    else
    {
      v13 = at_texel_format_rgba8_unorm;
    }

    v12 = at_block_format_bc2;
    goto LABEL_48;
  }

  if (a6)
  {
    v13 = at_texel_format_bgra8_unorm;
  }

  else
  {
    v13 = at_texel_format_rgba8_unorm;
  }

  v12 = at_block_format_bc1;
LABEL_48:
  v14 = at_encoder_create(v13, v9, v12, v9, 0);
  if (!v14)
  {
    return 4294967246;
  }

  v15 = v14;
  height = a4->height;
  dest.texels = a4->data;
  rowBytes = a4->rowBytes;
  dest.validSize.x = a4->width;
  dest.validSize.y = height;
  *(&dest.validSize + 3) = 0;
  dest.rowBytes = rowBytes;
  dest.validSize.z = 1;
  dest.sliceBytes = 0;
  v18 = height;
  *&v31.x = *&dest.validSize.x;
  v31.z = 1;
  block_counts = at_encoder_get_block_counts(v14, v31);
  v20 = block_counts;
  v21 = HIDWORD(block_counts);
  src.blocks = a2;
  src.rowBytes = at_encoder_get_block_size(v15) * block_counts;
  src.sliceBytes = v21 * v20 * at_encoder_get_block_size(v15);
  outSize = 0;
  *&v32.x = *&dest.validSize.x;
  v32.z = 1;
  v22.bits = at_block_get_features(v12, &src, v32, a3, &outSize, at_flags_default).bits;
  if (outSize > a3)
  {
    v23.bits = v22.bits;
    _cg_jpeg_mem_term("decodeDXTCtoRGBX", 1170, "*** expected size > file size (%d > %d)\n");
    v24 = a3 / (v20 << (LODWORD(v23.bits) >> 5)) * ((v23.bits >> 22) & 0xFFF);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    if (v24 >= v18)
    {
      LODWORD(v24) = v18;
    }

    dest.validSize.y = v24;
  }

  v25 = at_encoder_decompress_texels(v15, &src, &dest, at_flags_default);
  if (v25)
  {
    LogError("decodeDXTCtoRGBX", 1183, "at_encoder_decompress_texels returned: %ld\n", v25);
    v26 = 4294967246;
  }

  else
  {
    v26 = 0;
  }

  CFRelease(v15);
  return v26;
}

uint64_t BCReadPlugin::decodeImageImp(uint64_t a1, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v63[0] = 0;
  seed = 0;
  if (*(a1 + 442) == 1 && *(a1 + 424) != 16)
  {
    return 4294967246;
  }

  *(a1 + 424) = 16;
  *(a1 + 316) = ImageIOAlignRowBytes(*(a1 + 316), 0x10uLL);
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v8 = *(a1 + 220);
    v9 = v8 >> 24;
    v10 = MEMORY[0x1E69E9830];
    if ((v8 >> 24) <= 0x7F)
    {
      v11 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
    }

    else
    {
      v11 = __maskrune(v9, 0x40000uLL);
      v8 = *(a1 + 220);
    }

    if (v11)
    {
      v13 = (v8 >> 24);
    }

    else
    {
      v13 = 46;
    }

    v14 = v8 << 8 >> 24;
    if (v14 <= 0x7F)
    {
      v15 = *(v10 + 4 * v14 + 60) & 0x40000;
    }

    else
    {
      v15 = __maskrune(v14, 0x40000uLL);
      v8 = *(a1 + 220);
    }

    if (v15)
    {
      v16 = (v8 << 8 >> 24);
    }

    else
    {
      v16 = 46;
    }

    v17 = v8 >> 8;
    if (v17 <= 0x7F)
    {
      v18 = *(v10 + 4 * v17 + 60) & 0x40000;
    }

    else
    {
      v18 = __maskrune(v17, 0x40000uLL);
      v8 = *(a1 + 220);
    }

    if (v18)
    {
      v19 = (v8 >> 8);
    }

    else
    {
      v19 = 46;
    }

    if (v8 <= 0x7F)
    {
      if ((*(v10 + 4 * v8 + 60) & 0x40000) != 0)
      {
        goto LABEL_25;
      }
    }

    else if (__maskrune(v8, 0x40000uLL))
    {
LABEL_25:
      v20 = *(a1 + 220);
LABEL_28:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v13, v16, v19, v20, iioTypeStr[a3], "virtual OSStatus BCReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_29;
    }

    v20 = 46;
    goto LABEL_28;
  }

LABEL_29:
  IIOReadPlugin::debugDecodeImage(a1, a2);
  v21 = *(a1 + 24);
  if (v21)
  {
    v22 = IIOImageReadSession::mapData(v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a1 + 308);
  v24 = *(a1 + 312);
  v25 = *(a1 + 316);
  if (a3 == 3)
  {
    v55 = a4;
    BlockArray = IIOReadPlugin::allocateBlockArray(a1, *(a1 + 104));
    v34 = *(a1 + 312);
    LODWORD(v35) = *(a1 + 308);
    v33 = v35;
    v31 = v34;
    v54 = *(a1 + 316) * v34;
    BaseAddress = _ImageIO_Malloc(v54, *(a1 + 416), v63, kImageMalloc_BC_Data[0], 0, 0);
    v32 = 0;
LABEL_39:
    v56 = a3;
    if (!BaseAddress)
    {
      v40 = 0;
      goto LABEL_66;
    }

    if (*(a1 + 220) == 1261584963)
    {
      DataSize = Ktx2GetDataSize(*(a1 + 504), v23, v24);
      if (DataSize)
      {
        v37 = v32;
        v32 = v22;
        v38 = DataSize;
        v39 = malloc_type_calloc(DataSize, 1uLL, 0x100004077774924uLL);
        if (v39)
        {
          v40 = v39;
          v58 = *(a1 + 224);
          v59 = v39;
          v60 = v38;
          v61 = 0;
          v41 = *(a1 + 496);
          if (v41)
          {
            v22 = v32;
            if (!(*(*(v41 + 8) + 40))())
            {
              dest.data = BaseAddress;
              dest.height = v24;
              dest.width = v23;
              dest.rowBytes = v25;
              v32 = v37;
              if (*(a1 + 24))
              {
                BlockArray = BCReadPlugin::decodeDXTCtoRGBX(a1, v59, v61, &dest, *(a1 + 326), *(a1 + 437) == 0);
              }

              if (BlockArray)
              {
                goto LABEL_48;
              }

LABEL_55:
              if (*(a1 + 322) == 32 && *(a1 + 320) == 8 && *(a1 + 438) == 1)
              {
                dest.data = BaseAddress;
                v45 = *(a1 + 308);
                v46.i64[0] = v45;
                v46.i64[1] = HIDWORD(v45);
                *&dest.height = vextq_s8(v46, v46, 8uLL);
                dest.rowBytes = *(a1 + 316);
                vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
              }

              if (v56 == 3)
              {
                v47 = 0;
                v64.origin.x = 0.0;
                v64.origin.y = 0.0;
                v64.size.width = v33;
                v64.size.height = v31;
                **(a1 + 96) = IIOReadPlugin::createImageBlock(a1, BaseAddress, v54, v64, *(a1 + 316), *(a1 + 371));
                if (CGRectEqualToRect(*(a1 + 120), *MEMORY[0x1E695F050]))
                {
                  v48 = 0;
                }

                else
                {
                  v65.origin.x = 0.0;
                  v65.origin.y = 0.0;
                  v65.size.width = v33;
                  v65.size.height = v31;
                  *(&v48 - 1) = CGRectUnion(*(a1 + 120), v65);
                  v47 = v49;
                  v33 = v50;
                  v31 = v51;
                }

                BlockArray = 0;
                *(a1 + 120) = v47;
                *(a1 + 128) = v48;
                *(a1 + 136) = v33;
                *(a1 + 144) = v31;
                if ((v32 & 1) == 0)
                {
LABEL_75:
                  if (v40)
                  {
                    free(v40);
                  }

                  goto LABEL_77;
                }

                BaseAddress = 0;
LABEL_71:
                IOSurfaceUnlock(*v55, 0, &seed);
LABEL_72:
                if (v56 == 3 && BaseAddress)
                {
                  _ImageIO_Free(BaseAddress, v63[0]);
                }

                goto LABEL_75;
              }

              BlockArray = 0;
LABEL_66:
              if (!v32)
              {
                goto LABEL_72;
              }

              goto LABEL_71;
            }
          }

          else
          {
            LogFault("decodeImageImp", 1275, "*** _bc._ktxTexture is NULL\n");
            v22 = v32;
          }

          BlockArray = 4294967246;
          if ((v37 & 1) == 0)
          {
            goto LABEL_72;
          }

          goto LABEL_71;
        }

        BlockArray = 4294967188;
        v22 = v32;
        LOBYTE(v32) = v37;
      }

      else
      {
        BlockArray = 4294967229;
      }

      v40 = 0;
      if ((v32 & 1) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    dest.data = BaseAddress;
    dest.height = v24;
    dest.width = v23;
    dest.rowBytes = v25;
    v42 = *(a1 + 24);
    if (v42)
    {
      v43 = *(a1 + 437);
      if (*(a1 + 476) == 34952)
      {
        v44 = BCReadPlugin::decode8888toRGBX(a1, v42, &dest, v29, v43 == 0);
      }

      else
      {
        v44 = BCReadPlugin::decodeDXTCtoRGBX(a1, v42, &dest, *(a1 + 326), v43 == 0);
      }

      BlockArray = v44;
    }

    v40 = 0;
    if (BlockArray)
    {
LABEL_48:
      *(a1 + 104) = 0;
      if ((v32 & 1) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    goto LABEL_55;
  }

  if (a3 == 1 && a4 && *a4)
  {
    IOSurfaceLock(*a4, 0, &seed);
    BaseAddress = IOSurfaceGetBaseAddress(*a4);
    v27 = v22;
    Height = IOSurfaceGetHeight(*a4);
    v55 = a4;
    BlockArray = 0;
    v30 = IOSurfaceGetBytesPerRow(*a4) * Height;
    v22 = v27;
    v54 = v30;
    v63[0] = v30;
    v31 = 0.0;
    v32 = 1;
    v33 = 0.0;
    goto LABEL_39;
  }

  BlockArray = 0;
LABEL_77:
  if (v22)
  {
    v52 = *(a1 + 24);
    if (v52)
    {
      IIOImageReadSession::unmapData(v52);
    }
  }

  return BlockArray;
}

uint64_t BCReadPlugin::copyImageTextureData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 512);
  if (!v4)
  {
    v16 = xmmword_1EF4D4B98;
    v17 = *off_1EF4D4BA8;
    v5 = IIOImageRead::imageCount(*(a1 + 32));
    memset(v15, 0, sizeof(v15));
    IIODictionary::IIODictionary(v15);
    IIONumber::IIONumber(v14, *(a1 + 244));
    IIODictionary::setObjectForKey(v15, v14, @"width");
    IIONumber::~IIONumber(v14);
    IIONumber::IIONumber(v14, *(a1 + 248));
    IIODictionary::setObjectForKey(v15, v14, @"height");
    IIONumber::~IIONumber(v14);
    v6 = *(a1 + 476);
    if (v6 <= 36282)
    {
      v7 = 8;
      if (v6 > 35915)
      {
        if ((v6 - 35916) < 2)
        {
          goto LABEL_21;
        }

        v8 = -35918;
      }

      else
      {
        if ((v6 - 33776) < 2)
        {
          goto LABEL_21;
        }

        v8 = -33778;
      }

      if ((v6 + v8) >= 2)
      {
        goto LABEL_47;
      }

LABEL_20:
      v7 = 16;
      goto LABEL_21;
    }

    if (v6 > 36491)
    {
      if (v6 > 36493)
      {
        if (v6 == 36494)
        {
          goto LABEL_20;
        }

        v9 = 36495;
      }

      else
      {
        if (v6 == 36492)
        {
          goto LABEL_20;
        }

        v9 = 36493;
      }

      if (v6 == v9)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ((v6 - 36283) < 2)
      {
        v7 = 2;
        goto LABEL_21;
      }

      if ((v6 - 36285) < 2)
      {
        v7 = 4;
        goto LABEL_21;
      }
    }

LABEL_47:
    v7 = 0;
LABEL_21:
    IIONumber::IIONumber(v14, v7 * *(a1 + 480));
    IIODictionary::setObjectForKey(v15, v14, @"rowBytes");
    IIONumber::~IIONumber(v14);
    IIONumber::IIONumber(v14, *(a1 + 476));
    IIODictionary::setObjectForKey(v15, v14, @"glInternalFormat");
    IIONumber::~IIONumber(v14);
    IIONumber::IIONumber(v14, v5);
    IIODictionary::setObjectForKey(v15, v14, @"mipmapLevelCount");
    IIONumber::~IIONumber(v14);
    IIONumber::IIONumber(v14, 1);
    IIODictionary::setObjectForKey(v15, v14, @"faceCount");
    IIONumber::~IIONumber(v14);
    ColorSpace = CGImageProviderGetColorSpace();
    IIODictionary::setObjectForKey(v15, ColorSpace, @"colorSpace");
    IIODictionary::setObjectForKey(v15, *MEMORY[0x1E695E4C0], @"supportsTiledLayout");
    IIONumber::IIONumber(v14, *(a1 + 476));
    IIODictionary::setObjectForKey(v15, v14, @"pixelFormatGL");
    IIONumber::~IIONumber(v14);
    v11 = *(a1 + 476);
    if (v11 <= 36282)
    {
      if (v11 > 35915)
      {
        if ((v11 - 35916) < 2)
        {
          v12 = 131;
          goto LABEL_55;
        }

        if (v11 == 35918)
        {
          v12 = 133;
          goto LABEL_55;
        }

        if (v11 == 35919)
        {
          v12 = 135;
          goto LABEL_55;
        }
      }

      else
      {
        if ((v11 - 33776) < 2)
        {
          v12 = 130;
          goto LABEL_55;
        }

        if (v11 == 33778)
        {
          v12 = 132;
          goto LABEL_55;
        }

        if (v11 == 33779)
        {
          v12 = 134;
          goto LABEL_55;
        }
      }

      goto LABEL_50;
    }

    if (v11 > 36491)
    {
      if (v11 <= 36493)
      {
        if (v11 == 36492)
        {
          v12 = 152;
        }

        else
        {
          v12 = 153;
        }

LABEL_55:
        IIONumber::IIONumber(v14, v12);
        IIODictionary::setObjectForKey(v15, v14, @"pixelFormatMetal");
        IIONumber::~IIONumber(v14);
        IIOImageSource::cf(*(a1 + 32));
        operator new();
      }

      if (v11 == 36494)
      {
        v12 = 150;
        goto LABEL_55;
      }

      if (v11 == 36495)
      {
        v12 = 151;
        goto LABEL_55;
      }
    }

    else
    {
      if (v11 <= 36284)
      {
        if (v11 == 36283)
        {
          v12 = 140;
        }

        else
        {
          v12 = 141;
        }

        goto LABEL_55;
      }

      if (v11 == 36285)
      {
        v12 = 142;
        goto LABEL_55;
      }

      if (v11 == 36286)
      {
        v12 = 143;
        goto LABEL_55;
      }
    }

LABEL_50:
    v12 = 0;
    goto LABEL_55;
  }

  CFRetain(v4);
  return *(a1 + 512);
}