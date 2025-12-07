uint64_t Fax4Encode(void *a1, char *a2, uint64_t a3)
{
  v4 = a1[137];
  if (a3 % *(v4 + 8))
  {
    TIFFErrorExtR(a1, "Fax4Encode", "Fractional scanlines cannot be written");
    return 0;
  }

  else
  {
    v6 = a3;
    if (a3 < 1)
    {
      return 1;
    }

    else
    {
      while (1)
      {
        result = Fax3Encode2DRow(a1, a2, *(v4 + 136), *(v4 + 16));
        if (!result)
        {
          break;
        }

        _TIFFmemcpy(*(v4 + 136), a2, *(v4 + 8));
        v8 = *(v4 + 8);
        a2 += v8;
        v9 = v6 <= v8;
        v6 -= v8;
        if (v9)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t Fax4PostEncode(void *a1)
{
  v2 = a1[137];
  v3 = 1;
  Fax3PutBits(a1, 1u, 0xCu);
  Fax3PutBits(a1, 1u, 0xCu);
  if (*(v2 + 76) != 8)
  {
    if (a1[145] < a1[141] || TIFFFlushData1(a1))
    {
      v4 = *(v2 + 72);
      v5 = a1[144];
      a1[144] = v5 + 1;
      *v5 = v4;
      ++a1[145];
      *(v2 + 72) = 0x800000000;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t TIFFInitCCITTRLE(int8x16_t *a1)
{
  result = InitCCITTFax3(a1);
  if (result)
  {
    a1[63].i64[0] = Fax3DecodeRLE;
    a1[64].i64[0] = Fax3DecodeRLE;
    a1[65].i64[0] = Fax3DecodeRLE;
    return _cg_TIFFSetField(a1, 0x10000, v3, v4, v5, v6, v7, v8, 7);
  }

  return result;
}

uint64_t Fax3DecodeRLE(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[137];
  if (a3 % *(v8 + 8))
  {
    TIFFErrorExtR(a1, "Fax3DecodeRLE", "Fractional scanlines cannot be read", a4, a5, a6, a7, a8);
    return 0xFFFFFFFFLL;
  }

  v11 = *(v8 + 72);
  v10 = *(v8 + 76);
  v12 = *(v8 + 80);
  v13 = a1[144];
  v14 = a1[145];
  if (a3 < 1)
  {
    v20 = a1[144];
LABEL_95:
    *(v8 + 72) = v11;
    *(v8 + 76) = v10;
    *(v8 + 80) = v12;
    a1[145] = v13 - v20 + v14;
    a1[144] = v20;
    return 1;
  }

  v73 = *(v8 + 80);
  v76 = a1;
  v16 = *(v8 + 16);
  v17 = *(v8 + 64);
  v18 = v13 + v14;
  v75 = *(v8 + 4);
  v19 = *(v8 + 120);
  v20 = a1[144];
  v79 = a1[137];
  v74 = v17;
  while (1)
  {
    v77 = a3;
    v78 = a2;
    v21 = 0;
    v22 = v19;
LABEL_7:
    for (i = 0; ; i += v28)
    {
      if (v10 > 11)
      {
        goto LABEL_18;
      }

      if (v20 >= v18)
      {
        if (v10)
        {
          v10 = 12;
          goto LABEL_18;
        }

        v31 = v22;
LABEL_97:
        v53 = "tile";
        if ((v76[2] & 0x400) == 0)
        {
          v53 = "strip";
        }

        v54 = 932;
        if ((v76[2] & 0x400) == 0)
        {
          v54 = 884;
        }

        v55 = v8;
        TIFFWarningExtR(v76, "Fax3DecodeRLE", "Premature EOF at line %u of %s %u (x %u)", *(v8 + 152), v53, *(v76 + v54), v21);
        if (i)
        {
          v56 = v55;
          if (v31 < &v19[*(v55 + 104)])
          {
            *v31++ = i;
            goto LABEL_105;
          }

LABEL_138:
          v67 = v76[150];
          v68 = "tile";
          if ((v76[2] & 0x400) == 0)
          {
            v68 = "strip";
          }

          v72 = 932;
          if ((v76[2] & 0x400) == 0)
          {
            v72 = 884;
          }

          v70 = *(v76 + v72);
          v71 = *(v56 + 152);
          goto LABEL_143;
        }

        v56 = v55;
LABEL_105:
        if (v21 == v16)
        {
LABEL_106:
          v57 = v78;
        }

        else
        {
          v59 = "tile";
          if ((v76[2] & 0x400) == 0)
          {
            v59 = "strip";
          }

          v60 = 932;
          if ((v76[2] & 0x400) == 0)
          {
            v60 = 884;
          }

          v61 = "Line length mismatch";
          if (v21 < v16)
          {
            v61 = "Premature EOL";
          }

          TIFFWarningExtR(v76, "Fax3DecodeRLE", "%s at line %u of %s %u (got %u, expected %u)", v61, *(v56 + 152), v59, *(v76 + v60), v21, v16);
          v62 = v21 > v16;
          if (v21 <= v16 || v31 <= v19)
          {
            v56 = v79;
          }

          else
          {
            v63 = v31 - 1;
            v64 = v31 - 1;
            v56 = v79;
            do
            {
              v65 = *v64--;
              v21 -= v65;
              v62 = v21 > v16;
              v66 = v21 > v16 && v63 > v19;
              v63 = v64;
            }

            while (v66);
            v31 = v64 + 1;
          }

          if (v21 < v16)
          {
            if (((v31 - v19) & 4) != 0)
            {
              if (v31 >= &v19[*(v56 + 104)])
              {
                goto LABEL_138;
              }

              *v31++ = 0;
            }

            if (v31 >= &v19[*(v56 + 104)])
            {
              goto LABEL_138;
            }

            *v31++ = v16 - (v21 & ~(v21 >> 31));
            goto LABEL_106;
          }

          if (!v62)
          {
            goto LABEL_106;
          }

          v57 = v78;
          if (v31 >= &v19[*(v56 + 104)])
          {
            goto LABEL_138;
          }

          *v31 = v16;
          if (v31 + 1 >= &v19[*(v56 + 104)])
          {
            goto LABEL_138;
          }

          v31[1] = 0;
          v31 += 2;
        }

        v58 = v56;
        (*(v56 + 88))(v57, v19, v31, v16);
        v58[18] = v11;
        v58[19] = 0;
        v58[20] = v73;
        v76[145] += v76[144] - v20;
        v76[144] = v20;
        return 0xFFFFFFFFLL;
      }

      v11 |= *(v17 + *v20) << v10;
      if (v10 > 3)
      {
        v10 += 8;
      }

      else
      {
        if ((v20 + 1) < v18)
        {
          v24 = v20[1];
          v20 += 2;
          v11 |= *(v17 + v24) << (v10 + 8);
          v10 += 16;
          goto LABEL_18;
        }

        v10 = 12;
      }

      ++v20;
LABEL_18:
      v25 = &TIFFFaxWhiteTable + 8 * (v11 & 0xFFF);
      v26 = v25[1];
      v10 -= v26;
      v11 >>= v26;
      v27 = *v25;
      if (v27 < 0xB)
      {
        if (v27 == 9)
        {
          goto LABEL_22;
        }

        if (v27 != 7)
        {
          goto LABEL_49;
        }

        if (v22 >= &v19[*(v8 + 104)])
        {
          goto LABEL_122;
        }

        v29 = *(v25 + 1);
        v30 = v29 + i;
        *v22 = v29 + i;
        v31 = v22 + 1;
        v21 += v29;
        if (v21 >= v16)
        {
          goto LABEL_57;
        }

        for (i = 0; ; i += v36)
        {
          if (v10 > 12)
          {
            goto LABEL_37;
          }

          if (v20 >= v18)
          {
            if (!v10)
            {
              goto LABEL_97;
            }

            v10 = 13;
          }

          else
          {
            v11 |= *(v17 + *v20) << v10;
            if (v10 > 4)
            {
              v10 += 8;
            }

            else
            {
              if ((v20 + 1) < v18)
              {
                v32 = v20[1];
                v20 += 2;
                v11 |= *(v17 + v32) << (v10 + 8);
                v10 += 16;
                goto LABEL_37;
              }

              v10 = 13;
            }

            ++v20;
          }

LABEL_37:
          v33 = &TIFFFaxBlackTable + 8 * (v11 & 0x1FFF);
          v34 = v33[1];
          v10 -= v34;
          v11 >>= v34;
          v35 = *v33;
          if ((v35 - 10) >= 2)
          {
            break;
          }

          v36 = *(v33 + 1);
          v21 += v36;
        }

        if (v35 == 12)
        {
          v73 = 1;
          if (i)
          {
            goto LABEL_55;
          }

          goto LABEL_48;
        }

        if (v35 != 8)
        {
          goto LABEL_50;
        }

        if (v31 >= &v19[*(v8 + 104)])
        {
          goto LABEL_122;
        }

        v37 = *(v33 + 1);
        v31 = v22 + 2;
        v22[1] = v37 + i;
        v21 += v37;
        if (v21 >= v16)
        {
          goto LABEL_57;
        }

        if ((v37 + i) | v30)
        {
          v22 += 2;
        }

        goto LABEL_7;
      }

      if (v27 != 11)
      {
        break;
      }

LABEL_22:
      v28 = *(v25 + 1);
      v21 += v28;
    }

    if (v27 != 12)
    {
LABEL_49:
      v31 = v22;
LABEL_50:
      v38 = "tile";
      if ((v76[2] & 0x400) == 0)
      {
        v38 = "strip";
      }

      v39 = 932;
      if ((v76[2] & 0x400) == 0)
      {
        v39 = 884;
      }

      TIFFErrorExtR(v76, "Fax3DecodeRLE", "Bad code word at line %u of %s %u (x %u)", *(v8 + 152), v38, *(v76 + v39), v21);
      if (i)
      {
        goto LABEL_55;
      }

LABEL_48:
      v8 = v79;
      goto LABEL_57;
    }

    v73 = 1;
    v31 = v22;
    if (!i)
    {
      goto LABEL_48;
    }

LABEL_55:
    v8 = v79;
    if (v31 >= &v19[*(v79 + 104)])
    {
      goto LABEL_122;
    }

    *v31++ = i;
LABEL_57:
    if (v21 == v16)
    {
LABEL_83:
      v48 = v78;
      goto LABEL_84;
    }

    v40 = "tile";
    if ((v76[2] & 0x400) == 0)
    {
      v40 = "strip";
    }

    v41 = 932;
    if ((v76[2] & 0x400) == 0)
    {
      v41 = 884;
    }

    v42 = "Line length mismatch";
    if (v21 < v16)
    {
      v42 = "Premature EOL";
    }

    TIFFWarningExtR(v76, "Fax3DecodeRLE", "%s at line %u of %s %u (got %u, expected %u)", v42, *(v8 + 152), v40, *(v76 + v41), v21, v16);
    v43 = v21 > v16;
    if (v21 <= v16 || v31 <= v19)
    {
      v8 = v79;
    }

    else
    {
      v44 = v31 - 1;
      v45 = v31 - 1;
      v8 = v79;
      do
      {
        v46 = *v45--;
        v21 -= v46;
        v43 = v21 > v16;
        v47 = v21 > v16 && v44 > v19;
        v44 = v45;
      }

      while (v47);
      v31 = v45 + 1;
    }

    if (v21 < v16)
    {
      break;
    }

    if (!v43)
    {
      goto LABEL_83;
    }

    v48 = v78;
    if (v31 >= &v19[*(v8 + 104)])
    {
      goto LABEL_122;
    }

    *v31 = v16;
    if (v31 + 1 >= &v19[*(v8 + 104)])
    {
      goto LABEL_122;
    }

    v31[1] = 0;
    v31 += 2;
LABEL_84:
    (*(v8 + 88))(v48, v19, v31, v16);
    if ((v75 & 4) != 0)
    {
      v51 = v10 & 7;
      v10 &= 0xFFFFFFF8;
      v11 >>= v51;
      v8 = v79;
      v49 = v77;
      v17 = v74;
    }

    else
    {
      v49 = v77;
      v17 = v74;
      if ((v75 & 8) != 0)
      {
        v50 = v10 & 0xF;
        v10 &= 0xFFFFFFF0;
        v11 >>= v50;
        v20 += (v10 == 0) & v20;
      }

      v8 = v79;
    }

    v52 = *(v8 + 8);
    a2 = v48 + v52;
    ++*(v8 + 152);
    v47 = v49 <= v52;
    a3 = v49 - v52;
    if (v47)
    {
      a1 = v76;
      v13 = v76[144];
      v14 = v76[145];
      v12 = v73;
      goto LABEL_95;
    }
  }

  if (((v31 - v19) & 4) == 0)
  {
    goto LABEL_77;
  }

  if (v31 < &v19[*(v8 + 104)])
  {
    *v31++ = 0;
LABEL_77:
    if (v31 < &v19[*(v8 + 104)])
    {
      *v31++ = v16 - (v21 & ~(v21 >> 31));
      goto LABEL_83;
    }
  }

LABEL_122:
  v67 = v76[150];
  v68 = "tile";
  if ((v76[2] & 0x400) == 0)
  {
    v68 = "strip";
  }

  v69 = 932;
  if ((v76[2] & 0x400) == 0)
  {
    v69 = 884;
  }

  v70 = *(v76 + v69);
  v71 = *(v8 + 152);
LABEL_143:
  TIFFErrorExt(v67, "Fax3DecodeRLE", "Buffer overflow at line %u of %s %u", a4, a5, a6, a7, a8, v71, v68, v70);
  return 0xFFFFFFFFLL;
}

uint64_t TIFFInitCCITTRLEW(int8x16_t *a1)
{
  result = InitCCITTFax3(a1);
  if (result)
  {
    a1[63].i64[0] = Fax3DecodeRLE;
    a1[64].i64[0] = Fax3DecodeRLE;
    a1[65].i64[0] = Fax3DecodeRLE;
    return _cg_TIFFSetField(a1, 0x10000, v3, v4, v5, v6, v7, v8, 11);
  }

  return result;
}

uint64_t Fax3VGetField(uint64_t a1, int a2, void **a3)
{
  v3 = *(a1 + 1096);
  if (!v3)
  {
    Fax3VGetField_cold_1();
  }

  if (a2 > 327)
  {
    switch(a2)
    {
      case 328:
        v4 = *(v3 + 24);
        break;
      case 65540:
        **a3 = *(v3 + 88);
        return 1;
      case 65536:
        v4 = *(v3 + 4);
        break;
      default:
        goto LABEL_13;
    }

LABEL_17:
    **a3 = v4;
    return 1;
  }

  if ((a2 - 292) < 2)
  {
    v4 = *(v3 + 32);
    goto LABEL_17;
  }

  if (a2 == 326)
  {
    v4 = *(v3 + 28);
    goto LABEL_17;
  }

  if (a2 == 327)
  {
    **a3 = *(v3 + 20);
    return 1;
  }

LABEL_13:
  v5 = *(v3 + 40);

  return v5();
}

uint64_t Fax3VSetField(uint64_t a1, int a2, _DWORD *a3)
{
  v3 = *(a1 + 1096);
  if (!v3)
  {
    Fax3VSetField_cold_2();
  }

  v4 = *(v3 + 48);
  if (!v4)
  {
    Fax3VSetField_cold_1();
  }

  if (a2 <= 326)
  {
    switch(a2)
    {
      case 292:
        if (*(a1 + 120) != 3)
        {
          goto LABEL_25;
        }

        break;
      case 293:
        if (*(a1 + 120) != 4)
        {
          goto LABEL_25;
        }

        break;
      case 326:
        *(v3 + 28) = *a3;
LABEL_25:
        result = TIFFFieldWithTag(a1, a2);
        if (result)
        {
          v7 = *(result + 24);
          result = 1;
          *(a1 + ((v7 >> 3) & 0x1FFC) + 72) |= 1 << v7;
          *(a1 + 16) |= 8u;
        }

        return result;
      default:
        goto LABEL_17;
    }

    *(v3 + 32) = *a3;
    goto LABEL_25;
  }

  if (a2 >= 0x10000)
  {
    if (a2 == 65540)
    {
      *(v3 + 88) = *a3;
    }

    else
    {
      if (a2 != 0x10000)
      {
        goto LABEL_17;
      }

      *(v3 + 4) = *a3;
    }

    return 1;
  }

  if (a2 == 327)
  {
    *(v3 + 20) = *a3;
    goto LABEL_25;
  }

  if (a2 == 328)
  {
    *(v3 + 24) = *a3;
    goto LABEL_25;
  }

LABEL_17:

  return v4();
}

uint64_t Fax3PrintDir(uint64_t result, FILE *__stream, uint64_t a3)
{
  v3 = *(result + 1096);
  if (!v3)
  {
    Fax3PrintDir_cold_1();
  }

  v6 = result;
  v7 = *(result + 80);
  if ((v7 & 0x200) == 0)
  {
    if ((v7 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  if (*(result + 120) == 4)
  {
    fwrite("  Group 4 Options:", 0x12uLL, 1uLL, __stream);
    if ((*(v3 + 32) & 2) == 0)
    {
      goto LABEL_19;
    }

    v9 = " ";
    goto LABEL_18;
  }

  fwrite("  Group 3 Options:", 0x12uLL, 1uLL, __stream);
  v10 = *(v3 + 32);
  v9 = " ";
  if (v10)
  {
    fprintf(__stream, "%s2-d encoding", " ");
    v10 = *(v3 + 32);
    v9 = "+";
    if ((v10 & 4) == 0)
    {
LABEL_17:
      if ((v10 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((v10 & 4) == 0)
  {
    goto LABEL_17;
  }

  fprintf(__stream, "%sEOL padding", v9);
  v9 = "+";
  if ((*(v3 + 32) & 2) != 0)
  {
LABEL_18:
    fprintf(__stream, "%suncompressed data", v9);
  }

LABEL_19:
  result = fprintf(__stream, " (%u = 0x%x)\n", *(v3 + 32), *(v3 + 32));
  v7 = *(v6 + 80);
  if ((v7 & 8) == 0)
  {
LABEL_4:
    if ((v7 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_20:
  fwrite("  Fax Data:", 0xBuLL, 1uLL, __stream);
  v11 = *(v3 + 20);
  if (v11 == 2)
  {
    v12 = " uncorrected errors";
    v13 = 19;
  }

  else if (v11 == 1)
  {
    v12 = " receiver regenerated";
    v13 = 21;
  }

  else
  {
    if (*(v3 + 20))
    {
      goto LABEL_30;
    }

    v12 = " clean";
    v13 = 6;
  }

  fwrite(v12, v13, 1uLL, __stream);
LABEL_30:
  result = fprintf(__stream, " (%hu = 0x%hx)\n", *(v3 + 20), *(v3 + 20));
  v7 = *(v6 + 80);
  if ((v7 & 4) == 0)
  {
LABEL_5:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_31:
  result = fprintf(__stream, "  Bad Fax Lines: %u\n", *(v3 + 28));
  if ((*(v6 + 80) & 0x10) != 0)
  {
LABEL_6:
    result = fprintf(__stream, "  Consecutive Bad Fax Lines: %u\n", *(v3 + 24));
  }

LABEL_7:
  v8 = *(v3 + 56);
  if (v8)
  {

    return v8(v6, __stream, a3);
  }

  return result;
}

uint64_t Fax3SetupState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 116) == 1)
  {
    v9 = *(a1 + 1096);
    if ((*(a1 + 17) & 4) != 0)
    {
      v10 = _cg_TIFFTileRowSize(a1);
      v11 = 100;
    }

    else
    {
      v10 = _cg_TIFFScanlineSize(a1, a2, a3, a4, a5, a6, a7, a8);
      v11 = 88;
    }

    v12 = *(a1 + v11);
    if (v10 >= ((v12 + 7) >> 3))
    {
      *(v9 + 8) = v10;
      *(v9 + 16) = v12;
      v13 = (*(v9 + 32) & 1) != 0 || *(a1 + 120) == 4;
      *(v9 + 96) = 0;
      if ((v12 + 1) >= 0xFFFFFFE0)
      {
        v14 = 0;
      }

      else
      {
        v14 = (v12 & 0xFFFFFFE0) + 32;
      }

      v15 = 2 * v14;
      if (v14 < 0)
      {
        v15 = 0;
      }

      if (v13)
      {
        v14 = v15;
      }

      *(v9 + 104) = v14;
      if (v14 <= 0)
      {
        TIFFErrorExtR(a1, *a1, "Row pixels integer overflow (rowpixels %u)");
        return 0;
      }

      result = _TIFFCheckMalloc(a1, (2 * v14), 4, "for Group 3/4 run arrays");
      *(v9 + 96) = result;
      if (!result)
      {
        return result;
      }

      v17 = *(v9 + 104);
      if (v17 < 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = 8 * v17;
      }

      bzero(result, v18);
      v19 = 0;
      v20 = *(v9 + 96);
      *(v9 + 120) = v20;
      if (v13)
      {
        v19 = v20 + 4 * *(v9 + 104);
      }

      *(v9 + 112) = v19;
      if (*(a1 + 120) == 3 && (*(v9 + 32) & 1) != 0)
      {
        *(a1 + 1008) = Fax3Decode2D;
        *(a1 + 1024) = Fax3Decode2D;
        *(a1 + 1040) = Fax3Decode2D;
      }

      v21 = *(a1 + 1096);
      if (v13)
      {
        v22 = malloc_type_malloc(v10, 0x100004077774924uLL);
        *(v21 + 136) = v22;
        if (!v22)
        {
          TIFFErrorExtR(a1, "Fax3SetupState", "No space for Group 3/4 reference line");
          return 0;
        }
      }

      else
      {
        *(v21 + 136) = 0;
      }

      return 1;
    }

    TIFFErrorExtR(a1, "Fax3SetupState", "Inconsistent number of bytes per row : rowbytes=%lld rowpixels=%u");
  }

  else
  {
    TIFFErrorExtR(a1, "Fax3SetupState", "Bits/sample must be 1 for Group 3/4 encoding/decoding");
  }

  return 0;
}

uint64_t Fax3PreDecode(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    Fax3PreDecode_cold_1();
  }

  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 64) = TIFFGetBitRevTable(*(a1 + 126) != 2);
  v2 = *(v1 + 96);
  *(v1 + 120) = v2;
  if (*(v1 + 112))
  {
    v3 = (v2 + 4 * *(v1 + 104));
    *(v1 + 112) = v3;
    *v3 = *(v1 + 16);
  }

  *(v1 + 152) = 0;
  return 1;
}

uint64_t Fax3Decode1D(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[137];
  if (a3 % *(v8 + 8))
  {
    TIFFErrorExtR(a1, "Fax3Decode1D", "Fractional scanlines cannot be read", a4, a5, a6, a7, a8);
    return 0xFFFFFFFFLL;
  }

  v10 = a3;
  v12 = *(v8 + 72);
  v11 = *(v8 + 76);
  v13 = *(v8 + 80);
  v14 = a1[144];
  v15 = a1[145];
  if (a3 < 1)
  {
    v20 = a1[144];
LABEL_113:
    *(v8 + 72) = v12;
    *(v8 + 76) = v11;
    *(v8 + 80) = v13;
    a1[145] = v14 - v20 + v15;
    a1[144] = v20;
    return 1;
  }

  v80 = a1;
  v17 = *(v8 + 16);
  v18 = *(v8 + 64);
  v19 = v14 + v15;
  v81 = v17;
  v82 = *(v8 + 120);
  v20 = a1[144];
  while (2)
  {
    if (!v13)
    {
      while (1)
      {
        if (v11 > 10)
        {
          goto LABEL_19;
        }

        if (v20 >= v19)
        {
          if (!v11)
          {
            v13 = 0;
LABEL_116:
            v54 = v80;
            if (v17)
            {
              v55 = "tile";
              if ((v80[2] & 0x400) == 0)
              {
                v55 = "strip";
              }

              v56 = 932;
              if ((v80[2] & 0x400) == 0)
              {
                v56 = 884;
              }

              TIFFWarningExtR(v80, "Fax3Decode1D", "%s at line %u of %s %u (got %u, expected %u)", "Premature EOL", *(v8 + 152), v55, *(v80 + v56), 0, v17);
              v17 = v81;
              v57 = *(v8 + 104);
              if (v81 >= 1)
              {
                if (v57)
                {
                  v58 = v82;
                  *v82 = v81;
                  v59 = v82 + 1;
                  goto LABEL_178;
                }

LABEL_170:
                v60 = v54[150];
                v61 = "tile";
                if ((v54[2] & 0x400) == 0)
                {
                  v61 = "strip";
                }

                v76 = 932;
                if ((v54[2] & 0x400) == 0)
                {
                  v76 = 884;
                }

                v63 = *(v54 + v76);
                goto LABEL_175;
              }

              if (!v57)
              {
                goto LABEL_170;
              }

              v58 = v82;
              *v82 = v81;
              if (*(v8 + 104) <= 1u)
              {
                goto LABEL_170;
              }

              v59 = v82 + 2;
              v82[1] = 0;
            }

            else
            {
              v58 = v82;
              v59 = v82;
            }

LABEL_178:
            (*(v8 + 88))(a2, v58, v59);
            *(v8 + 72) = v12;
            *(v8 + 76) = 0;
            *(v8 + 80) = v13;
            v54[145] += v54[144] - v20;
            v54[144] = v20;
            if (v10 < *(v54 + 22))
            {
              return 1;
            }

            else
            {
              return 0xFFFFFFFFLL;
            }
          }

          v11 = 11;
        }

        else
        {
          v12 |= *(v18 + *v20) << v11;
          if (v11 > 2)
          {
            v11 += 8;
          }

          else
          {
            if ((v20 + 1) < v19)
            {
              v21 = v20[1];
              v20 += 2;
              v12 |= *(v18 + v21) << (v11 + 8);
              v11 += 16;
              goto LABEL_19;
            }

            v11 = 11;
          }

          ++v20;
        }

LABEL_19:
        if ((v12 & 0x7FF) == 0)
        {
          goto LABEL_22;
        }

        --v11;
        v12 >>= 1;
      }
    }

    while (1)
    {
LABEL_22:
      if (v11 <= 7)
      {
        if (v20 >= v19)
        {
          if (!v11)
          {
            goto LABEL_116;
          }

          v11 = 8;
        }

        else
        {
          v22 = *v20++;
          v12 |= *(v18 + v22) << v11;
          v11 += 8;
        }
      }

      if (v12)
      {
        break;
      }

      v11 -= 8;
      v12 >>= 8;
    }

    v79 = a2;
    if ((v12 & 1) == 0)
    {
      do
      {
        v23 = v12;
        --v11;
        v12 >>= 1;
      }

      while ((v23 & 2) == 0);
    }

    v24 = 0;
    --v11;
    v12 >>= 1;
    v25 = v82;
    v78 = v10;
LABEL_31:
    for (i = 0; ; i += v31)
    {
      if (v11 > 11)
      {
        goto LABEL_42;
      }

      if (v20 >= v19)
      {
        if (v11)
        {
          v11 = 12;
          goto LABEL_42;
        }

        v53 = v25;
LABEL_134:
        v54 = v80;
        v64 = "tile";
        if ((v80[2] & 0x400) == 0)
        {
          v64 = "strip";
        }

        v65 = 932;
        if ((v80[2] & 0x400) == 0)
        {
          v65 = 884;
        }

        TIFFWarningExtR(v80, "Fax3Decode1D", "Premature EOF at line %u of %s %u (x %u)", *(v8 + 152), v64, *(v80 + v65), v24);
        if (i)
        {
          v17 = v81;
          if (v53 >= &v82[*(v8 + 104)])
          {
            goto LABEL_170;
          }

          *v53 = i;
          v59 = v53 + 1;
        }

        else
        {
          LODWORD(v17) = v81;
          v59 = v53;
        }

        if (v24 == v17)
        {
          v13 = 0;
          a2 = v79;
          goto LABEL_144;
        }

        v66 = v59;
        v67 = "tile";
        if ((v80[2] & 0x400) == 0)
        {
          v67 = "strip";
        }

        v68 = 932;
        if ((v80[2] & 0x400) == 0)
        {
          v68 = 884;
        }

        v69 = "Premature EOL";
        if (v24 >= v17)
        {
          v69 = "Line length mismatch";
        }

        TIFFWarningExtR(v80, "Fax3Decode1D", "%s at line %u of %s %u (got %u, expected %u)", v69, *(v8 + 152), v67, *(v80 + v68), v24, v17);
        v17 = v81;
        v58 = v82;
        v70 = v24 > v81;
        if (v24 <= v81)
        {
          v59 = v66;
        }

        else
        {
          v59 = v66;
          if (v66 > v82)
          {
            v71 = v66 - 1;
            v72 = v66 - 1;
            do
            {
              v73 = *v72--;
              v24 -= v73;
              v70 = v24 > v81;
              v74 = v24 > v81 && v71 > v82;
              v71 = v72;
            }

            while (v74);
            v59 = v72 + 1;
          }
        }

        if (v24 >= v81)
        {
          if (v70)
          {
            a2 = v79;
            if (v59 >= &v82[*(v8 + 104)])
            {
              goto LABEL_170;
            }

            *v59 = v81;
            if (v59 + 1 >= &v82[*(v8 + 104)])
            {
              goto LABEL_170;
            }

            v13 = 0;
            v59[1] = 0;
            v59 += 2;
LABEL_144:
            v58 = v82;
            goto LABEL_178;
          }

          v13 = 0;
        }

        else
        {
          if (((v59 - v82) & 4) != 0)
          {
            if (v59 >= &v82[*(v8 + 104)])
            {
              goto LABEL_170;
            }

            *v59++ = 0;
          }

          if (v59 >= &v82[*(v8 + 104)])
          {
            goto LABEL_170;
          }

          v75 = v24 & ~(v24 >> 31);
          v13 = 0;
          *v59++ = v81 - v75;
        }

        a2 = v79;
        goto LABEL_178;
      }

      v12 |= *(v18 + *v20) << v11;
      if (v11 > 3)
      {
        v11 += 8;
      }

      else
      {
        if ((v20 + 1) < v19)
        {
          v27 = v20[1];
          v20 += 2;
          v12 |= *(v18 + v27) << (v11 + 8);
          v11 += 16;
          goto LABEL_42;
        }

        v11 = 12;
      }

      ++v20;
LABEL_42:
      v28 = &TIFFFaxWhiteTable + 8 * (v12 & 0xFFF);
      v29 = v28[1];
      v11 -= v29;
      v12 >>= v29;
      v30 = *v28;
      if (v30 >= 0xB)
      {
        break;
      }

      if (v30 != 9)
      {
        if (v30 != 7)
        {
          goto LABEL_73;
        }

        if (v25 >= &v82[*(v8 + 104)])
        {
          goto LABEL_128;
        }

        v32 = *(v28 + 1);
        v33 = v32 + i;
        *v25 = v32 + i;
        v34 = v25 + 1;
        v24 += v32;
        if (v24 >= v17)
        {
LABEL_111:
          v77 = 0;
          goto LABEL_81;
        }

        for (i = 0; ; i += v39)
        {
          if (v11 > 12)
          {
            goto LABEL_61;
          }

          if (v20 >= v19)
          {
            if (!v11)
            {
              v53 = v25 + 1;
              v10 = v78;
              goto LABEL_134;
            }

            v11 = 13;
          }

          else
          {
            v12 |= *(v18 + *v20) << v11;
            if (v11 > 4)
            {
              v11 += 8;
            }

            else
            {
              if ((v20 + 1) < v19)
              {
                v35 = v20[1];
                v20 += 2;
                v12 |= *(v18 + v35) << (v11 + 8);
                v11 += 16;
                goto LABEL_61;
              }

              v11 = 13;
            }

            ++v20;
          }

LABEL_61:
          v36 = &TIFFFaxBlackTable + 8 * (v12 & 0x1FFF);
          v37 = v36[1];
          v11 -= v37;
          v12 >>= v37;
          v38 = *v36;
          if ((v38 - 10) >= 2)
          {
            if (v38 == 12)
            {
              v77 = 1;
              if (i)
              {
                goto LABEL_79;
              }

              goto LABEL_81;
            }

            if (v38 != 8)
            {
              goto LABEL_74;
            }

            if (v34 >= &v82[*(v8 + 104)])
            {
              goto LABEL_128;
            }

            v40 = *(v36 + 1);
            v34 = v25 + 2;
            v25[1] = v40 + i;
            v24 += v40;
            if (v24 >= v17)
            {
              goto LABEL_111;
            }

            if ((v40 + i) | v33)
            {
              v25 += 2;
            }

            v10 = v78;
            goto LABEL_31;
          }

          v39 = *(v36 + 1);
          v24 += v39;
        }
      }

LABEL_46:
      v31 = *(v28 + 1);
      v24 += v31;
    }

    if (v30 == 11)
    {
      goto LABEL_46;
    }

    if (v30 == 12)
    {
      v77 = 1;
      v34 = v25;
      if (!i)
      {
        goto LABEL_81;
      }

LABEL_79:
      if (v34 < &v82[*(v8 + 104)])
      {
        *v34++ = i;
        goto LABEL_81;
      }

      goto LABEL_128;
    }

LABEL_73:
    v34 = v25;
LABEL_74:
    v41 = "tile";
    if ((v80[2] & 0x400) == 0)
    {
      v41 = "strip";
    }

    v42 = 932;
    if ((v80[2] & 0x400) == 0)
    {
      v42 = 884;
    }

    TIFFErrorExtR(v80, "Fax3Decode1D", "Bad code word at line %u of %s %u (x %u)", *(v8 + 152), v41, *(v80 + v42), v24);
    v77 = 0;
    v17 = v81;
    if (i)
    {
      goto LABEL_79;
    }

LABEL_81:
    if (v24 == v17)
    {
      goto LABEL_106;
    }

    v43 = "tile";
    if ((v80[2] & 0x400) == 0)
    {
      v43 = "strip";
    }

    v44 = 932;
    if ((v80[2] & 0x400) == 0)
    {
      v44 = 884;
    }

    v45 = "Premature EOL";
    if (v24 >= v17)
    {
      v45 = "Line length mismatch";
    }

    TIFFWarningExtR(v80, "Fax3Decode1D", "%s at line %u of %s %u (got %u, expected %u)", v45, *(v8 + 152), v43, *(v80 + v44), v24, v17);
    v46 = v24 > v81;
    if (v24 > v81 && v34 > v82)
    {
      v47 = v34 - 1;
      v48 = v34 - 1;
      do
      {
        v49 = *v48--;
        v24 -= v49;
        v46 = v24 > v81;
        v50 = v24 > v81 && v47 > v82;
        v47 = v48;
      }

      while (v50);
      v34 = v48 + 1;
    }

    if (v24 >= v81)
    {
      if (v46)
      {
        v51 = v79;
        v13 = v77;
        if (v34 >= &v82[*(v8 + 104)])
        {
          goto LABEL_128;
        }

        *v34 = v81;
        if (v34 + 1 >= &v82[*(v8 + 104)])
        {
          goto LABEL_128;
        }

        v34[1] = 0;
        v34 += 2;
        goto LABEL_107;
      }

LABEL_106:
      v51 = v79;
      v13 = v77;
LABEL_107:
      (*(v8 + 88))(v51, v82, v34, v81);
      v17 = v81;
      v52 = *(v8 + 8);
      a2 = v51 + v52;
      ++*(v8 + 152);
      v10 = v78 - v52;
      if (v78 > v52)
      {
        continue;
      }

      a1 = v80;
      v14 = v80[144];
      v15 = v80[145];
      goto LABEL_113;
    }

    break;
  }

  if (((v34 - v82) & 4) != 0)
  {
    if (v34 >= &v82[*(v8 + 104)])
    {
      goto LABEL_128;
    }

    *v34++ = 0;
  }

  if (v34 < &v82[*(v8 + 104)])
  {
    *v34++ = v81 - (v24 & ~(v24 >> 31));
    goto LABEL_106;
  }

LABEL_128:
  v60 = v80[150];
  v61 = "tile";
  if ((v80[2] & 0x400) == 0)
  {
    v61 = "strip";
  }

  v62 = 932;
  if ((v80[2] & 0x400) == 0)
  {
    v62 = 884;
  }

  v63 = *(v80 + v62);
LABEL_175:
  TIFFErrorExt(v60, "Fax3Decode1D", "Buffer overflow at line %u of %s %u", v17, a5, a6, a7, a8, *(v8 + 152), v61, v63);
  return 0xFFFFFFFFLL;
}

uint64_t Fax3PreEncode(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    Fax3PreEncode_cold_1();
  }

  *(v1 + 72) = 0x800000000;
  *(v1 + 128) = 0;
  v3 = *(v1 + 136);
  if (v3)
  {
    _TIFFmemset(v3, 0, *(v1 + 8));
  }

  if (*(v1 + 32))
  {
    v6 = *(a1 + 164);
    if (*(a1 + 168) == 3)
    {
      v6 = v6 * 2.54;
    }

    if (v6 <= 150.0)
    {
      v4 = 2;
    }

    else
    {
      v4 = 4;
    }

    v5 = v4 - 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *(v1 + 144) = v5;
  *(v1 + 148) = v4;
  *(v1 + 152) = 0;
  return 1;
}

uint64_t Fax3PostEncode(void *a1)
{
  v1 = a1[137];
  if (*(v1 + 76) == 8)
  {
    return 1;
  }

  if (a1[145] < a1[141] || (result = TIFFFlushData1(a1), result))
  {
    v4 = *(v1 + 72);
    v5 = a1[144];
    a1[144] = v5 + 1;
    *v5 = v4;
    ++a1[145];
    *(v1 + 72) = 0x800000000;
    return 1;
  }

  return result;
}

uint64_t Fax3Encode(void *a1, char *a2, uint64_t a3)
{
  v4 = a1[137];
  if (a3 % *(v4 + 8))
  {
    TIFFErrorExtR(a1, "Fax3Encode", "Fractional scanlines cannot be written");
    return 0;
  }

  v6 = a3;
  if (a3 < 1)
  {
    return 1;
  }

  while ((*(v4 + 4) & 2) != 0)
  {
LABEL_38:
    if ((*(v4 + 32) & 1) == 0)
    {
      result = Fax3Encode1DRow(a1, a2, *(v4 + 16));
      if (!result)
      {
        return result;
      }

      goto LABEL_48;
    }

    if (*(v4 + 128))
    {
      result = Fax3Encode2DRow(a1, a2, *(v4 + 136), *(v4 + 16));
      if (!result)
      {
        return result;
      }

      v23 = *(v4 + 144) - 1;
      *(v4 + 144) = v23;
      if (!v23)
      {
        goto LABEL_47;
      }
    }

    else
    {
      result = Fax3Encode1DRow(a1, a2, *(v4 + 16));
      if (!result)
      {
        return result;
      }

      *(v4 + 128) = 1;
      if (!*(v4 + 144))
      {
LABEL_47:
        *(v4 + 128) = 0;
        *(v4 + 144) = *(v4 + 148) - 1;
        goto LABEL_48;
      }
    }

    _TIFFmemcpy(*(v4 + 136), a2, *(v4 + 8));
LABEL_48:
    v24 = *(v4 + 8);
    a2 += v24;
    result = 1;
    v25 = v6 <= v24;
    v6 -= v24;
    if (v25)
    {
      return result;
    }
  }

  v8 = a1[137];
  v10 = *(v8 + 72);
  v9 = *(v8 + 76);
  if ((*(v8 + 32) & 4) == 0 || v9 == 4)
  {
    goto LABEL_22;
  }

  v11 = v9 < 4 ? 4 : -4;
  v12 = v11 + v9;
  if (v11 + v9 <= v9)
  {
    if (v12 >= 9)
    {
      Fax3Encode_cold_1();
    }
  }

  else
  {
    v13 = a1[145];
    do
    {
      if (v13 >= a1[141])
      {
        result = TIFFFlushData1(a1);
        if (!result)
        {
          return result;
        }
      }

      v12 -= v9;
      v14 = a1[144];
      a1[144] = v14 + 1;
      *v14 = v10;
      v13 = a1[145] + 1;
      a1[145] = v13;
      v9 = 8;
      LOBYTE(v10) = 0;
    }

    while (v12 > 8);
    LOBYTE(v10) = 0;
  }

  v9 -= v12;
  if (v9)
  {
LABEL_22:
    if (*(v8 + 32))
    {
      if (*(v8 + 128))
      {
        v17 = 2;
      }

      else
      {
        v17 = 3;
      }

      v16 = 13;
    }

    else
    {
      v16 = 12;
      v17 = 1;
    }

    if (v16 <= v9)
    {
      Fax3Encode_cold_2();
    }

    v18 = a1[145];
    do
    {
      if (v18 >= a1[141])
      {
        result = TIFFFlushData1(a1);
        if (!result)
        {
          return result;
        }
      }

      v16 -= v9;
      v19 = a1[144];
      a1[144] = v19 + 1;
      *v19 = (v17 >> v16) | v10;
      v18 = a1[145] + 1;
      a1[145] = v18;
      v9 = 8;
      LOBYTE(v10) = 0;
    }

    while (v16 > 8);
    v20 = 8 - v16;
    v21 = (_msbmask[v16] & v17) << (8 - v16);
    if (v16 == 8)
    {
      if (v18 >= a1[141])
      {
        result = TIFFFlushData1(a1);
        if (!result)
        {
          return result;
        }
      }

      v22 = a1[144];
      a1[144] = v22 + 1;
      *v22 = v21;
      ++a1[145];
      v20 = 8;
      v21 = 0;
    }

    *(v8 + 72) = v21;
    *(v8 + 76) = v20;
    goto LABEL_38;
  }

  if (a1[145] < a1[141] || (result = TIFFFlushData1(a1), result))
  {
    v15 = a1[144];
    a1[144] = v15 + 1;
    *v15 = v10;
    ++a1[145];
    v9 = 8;
    LOBYTE(v10) = 0;
    goto LABEL_22;
  }

  return result;
}

double Fax3Close(void *a1)
{
  v1 = a1[137];
  if ((*(v1 + 4) & 1) == 0 && a1[144])
  {
    if (*(v1 + 32))
    {
      if (*(v1 + 128))
      {
        v4 = 2;
      }

      else
      {
        v4 = 3;
      }

      v3 = 13;
    }

    else
    {
      v3 = 12;
      v4 = 1;
    }

    v5 = 6;
    do
    {
      Fax3PutBits(a1, v4, v3);
      --v5;
    }

    while (v5);
    if (a1[145] < a1[141] || TIFFFlushData1(a1))
    {
      v7 = *(v1 + 72);
      v8 = a1[144];
      a1[144] = v8 + 1;
      *v8 = v7;
      ++a1[145];
      *&result = 0x800000000;
      *(v1 + 72) = 0x800000000;
    }
  }

  return result;
}

uint64_t Fax3Cleanup(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    Fax3Cleanup_cold_1();
  }

  v3 = v1[6];
  *(a1 + 1288) = v1[5];
  *(a1 + 1280) = v3;
  *(a1 + 1296) = v1[7];
  v4 = v1[12];
  if (v4)
  {
    free(v4);
  }

  v5 = v1[17];
  if (v5)
  {
    free(v5);
  }

  free(*(a1 + 1096));
  *(a1 + 1096) = 0;

  return _TIFFSetDefaultCompressionState(a1);
}

uint64_t Fax3Decode2D(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = *(a1 + 1096);
  if (a3 % *(v9 + 8))
  {
    TIFFErrorExtR(a1, "Fax3Decode2D", "Fractional scanlines cannot be read", a4, a5, a6, a7, a8);
    return 0xFFFFFFFFLL;
  }

  v11 = a3;
  v12 = *(v9 + 72);
  v13 = *(v9 + 76);
  v14 = *(v9 + 80);
  v15 = *(a1 + 1152);
  v16 = *(a1 + 1160);
  if (a3 < 1)
  {
    v22 = *(a1 + 1152);
    goto LABEL_308;
  }

  v18 = v15 + v16;
  v19 = *(v9 + 16);
  v20 = *(v9 + 64);
  v21 = *(v9 + 120);
  v22 = *(a1 + 1152);
  v161 = v19;
LABEL_6:
  if (!v14)
  {
    while (1)
    {
      if (v13 > 10)
      {
        goto LABEL_19;
      }

      if (v22 >= v18)
      {
        if (!v13)
        {
          v14 = 0;
LABEL_310:
          if (v19)
          {
LABEL_311:
            v130 = "tile";
            if ((*(v8 + 16) & 0x400) == 0)
            {
              v130 = "strip";
            }

            v131 = 932;
            if ((*(v8 + 16) & 0x400) == 0)
            {
              v131 = 884;
            }

            TIFFWarningExtR(v8, "Fax3Decode2D", "%s at line %u of %s %u (got %u, expected %u)", "Premature EOL", *(v9 + 152), v130, *(v8 + v131), 0, v19);
            v19 = v161;
            v132 = *(v9 + 104);
            if (v161 < 1)
            {
              if (v132)
              {
                *v21 = v161;
                if (*(v9 + 104) > 1u)
                {
                  v133 = v21 + 2;
                  v21[1] = 0;
                  goto LABEL_383;
                }
              }
            }

            else if (v132)
            {
              *v21 = v161;
              v133 = v21 + 1;
              goto LABEL_383;
            }

            goto LABEL_373;
          }

LABEL_382:
          v133 = v21;
          goto LABEL_383;
        }

        v13 = 11;
      }

      else
      {
        v12 |= *(v20 + *v22) << v13;
        if (v13 > 2)
        {
          v13 += 8;
        }

        else
        {
          if ((v22 + 1) < v18)
          {
            v23 = v22[1];
            v22 += 2;
            v12 |= *(v20 + v23) << (v13 + 8);
            v13 += 16;
            goto LABEL_19;
          }

          v13 = 11;
        }

        ++v22;
      }

LABEL_19:
      if ((v12 & 0x7FF) == 0)
      {
        goto LABEL_22;
      }

      --v13;
      v12 >>= 1;
    }
  }

  while (1)
  {
LABEL_22:
    if (v13 <= 7)
    {
      if (v22 >= v18)
      {
        if (!v13)
        {
          goto LABEL_310;
        }

        v13 = 8;
      }

      else
      {
        v24 = *v22++;
        v12 |= *(v20 + v24) << v13;
        v13 += 8;
      }
    }

    if (v12)
    {
      break;
    }

    v13 -= 8;
    v12 >>= 8;
  }

  if ((v12 & 1) == 0)
  {
    do
    {
      v25 = v12;
      --v13;
      v12 >>= 1;
    }

    while ((v25 & 2) == 0);
  }

  v26 = v12 >> 1;
  v27 = v13 - 1;
  if (v13 <= 1)
  {
    if (v22 >= v18)
    {
      if (v13 == 1)
      {
        v14 = 0;
        v12 >>= 1;
        if (v19)
        {
          goto LABEL_311;
        }

        goto LABEL_382;
      }

      v27 = 1;
    }

    else
    {
      v28 = *v22++;
      v26 |= *(v20 + v28) << v27;
      v27 = v13 + 7;
    }
  }

  v13 = v27 - 1;
  v12 = v26 >> 1;
  v159 = a2;
  if (v26)
  {
    v31 = 0;
    v85 = v21;
    while (1)
    {
      for (i = 0; ; i += v91)
      {
        if (v13 > 11)
        {
          goto LABEL_176;
        }

        if (v22 >= v18)
        {
          if (!v13)
          {
            v35 = v85;
LABEL_322:
            v134 = "tile";
            if ((*(a1 + 16) & 0x400) == 0)
            {
              v134 = "strip";
            }

            v135 = 932;
            if ((*(a1 + 16) & 0x400) == 0)
            {
              v135 = 884;
            }

            TIFFWarningExtR(a1, "Fax3Decode2D", "Premature EOF at line %u of %s %u (x %u)", *(v9 + 152), v134, *(a1 + v135), v31);
            if (i)
            {
              v19 = v161;
              if (v35 >= &v21[*(v9 + 104)])
              {
                goto LABEL_347;
              }

              *v35 = i;
              v133 = v35 + 1;
            }

            else
            {
              LODWORD(v19) = v161;
              v133 = v35;
            }

            v8 = a1;
            if (v31 == v19)
            {
              goto LABEL_379;
            }

            v136 = v133;
            Fax3BadLength("Fax3Decode2D", a1, *(v9 + 152), v31, v161);
            v19 = v161;
            v137 = v31 > v161;
            if (v31 <= v161)
            {
              goto LABEL_362;
            }

            v133 = v136;
            if (v136 > v21)
            {
              v138 = v136 - 1;
              v139 = v136 - 1;
              do
              {
                v140 = *v139--;
                v31 -= v140;
                v137 = v31 > v161;
                v141 = v31 > v161 && v138 > v21;
                v138 = v139;
              }

              while (v141);
LABEL_361:
              v133 = v139 + 1;
            }

LABEL_363:
            if (v31 >= v19)
            {
              if (!v137)
              {
                goto LABEL_379;
              }

              a2 = v159;
              if (v133 < &v21[*(v9 + 104)])
              {
                *v133 = v19;
                if (v133 + 1 < &v21[*(v9 + 104)])
                {
                  v14 = 0;
                  v133[1] = 0;
                  v133 += 2;
                  goto LABEL_383;
                }
              }
            }

            else
            {
              if (((v133 - v21) & 4) != 0)
              {
                if (v133 >= &v21[*(v9 + 104)])
                {
                  goto LABEL_373;
                }

                *v133++ = 0;
              }

              if (v133 < &v21[*(v9 + 104)])
              {
                v14 = 0;
                *v133++ = v19 - (v31 & ~(v31 >> 31));
                goto LABEL_380;
              }
            }

LABEL_373:
            v144 = *(v8 + 1200);
            v145 = "tile";
            if ((*(v8 + 16) & 0x400) == 0)
            {
              v145 = "strip";
            }

            v151 = 932;
            if ((*(v8 + 16) & 0x400) == 0)
            {
              v151 = 884;
            }

            v147 = *(v8 + v151);
            goto LABEL_378;
          }

          v13 = 12;
        }

        else
        {
          v12 |= *(v20 + *v22) << v13;
          if (v13 > 3)
          {
            v13 += 8;
          }

          else
          {
            if ((v22 + 1) < v18)
            {
              v87 = v22[1];
              v22 += 2;
              v12 |= *(v20 + v87) << (v13 + 8);
              v13 += 16;
              goto LABEL_176;
            }

            v13 = 12;
          }

          ++v22;
        }

LABEL_176:
        v88 = &TIFFFaxWhiteTable + 8 * (v12 & 0xFFF);
        v89 = v88[1];
        v13 -= v89;
        v12 >>= v89;
        v90 = *v88;
        if (v90 < 0xB)
        {
          break;
        }

        if (v90 != 11)
        {
          if (v90 != 12)
          {
LABEL_205:
            v100 = "tile";
            if ((*(a1 + 16) & 0x400) == 0)
            {
              v100 = "strip";
            }

            v101 = 932;
            if ((*(a1 + 16) & 0x400) == 0)
            {
              v101 = 884;
            }

            v153 = *(v9 + 152);
            v102 = v21;
            v154 = v20;
            v103 = v9;
            v104 = v85;
            v105 = v11;
            TIFFErrorExtR(a1, "Fax3Decode2D", "Bad code word at line %u of %s %u (x %u)", v153, v100, *(a1 + v101), v31);
            v11 = v105;
            v85 = v104;
            v9 = v103;
            v20 = v154;
            v21 = v102;
            v19 = v161;
            v106 = 0;
LABEL_214:
            v155 = v106;
            if (i)
            {
              if (v85 >= &v21[*(v9 + 104)])
              {
                goto LABEL_347;
              }

              *v85++ = i;
            }

            v35 = v85;
LABEL_218:
            v157 = v11;
            v8 = a1;
            if (v31 == v19)
            {
              goto LABEL_282;
            }

            v108 = "tile";
            if ((*(a1 + 16) & 0x400) == 0)
            {
              v108 = "strip";
            }

            v109 = 932;
            if ((*(a1 + 16) & 0x400) == 0)
            {
              v109 = 884;
            }

            v110 = "Premature EOL";
            if (v31 >= v19)
            {
              v110 = "Line length mismatch";
            }

            TIFFWarningExtR(a1, "Fax3Decode2D", "%s at line %u of %s %u (got %u, expected %u)", v110, *(v9 + 152), v108, *(a1 + v109), v31, v19);
            v19 = v161;
            v111 = v31 > v161;
            if (v31 > v161 && v35 > v21)
            {
              v112 = v35 - 1;
              v113 = v35 - 1;
              do
              {
                v114 = *v113--;
                v31 -= v114;
                v111 = v31 > v161;
                v115 = v31 > v161 && v112 > v21;
                v112 = v113;
              }

              while (v115);
LABEL_271:
              v35 = v113 + 1;
            }

LABEL_272:
            if (v31 >= v19)
            {
              if (!v111)
              {
                goto LABEL_282;
              }

              v126 = v159;
              if (v35 < &v21[*(v9 + 104)])
              {
                *v35 = v19;
                if (v35 + 1 < &v21[*(v9 + 104)])
                {
                  v35[1] = 0;
                  v35 += 2;
                  goto LABEL_283;
                }
              }
            }

            else if (((v35 - v21) & 4) != 0)
            {
              if (v35 < &v21[*(v9 + 104)])
              {
                *v35++ = 0;
                goto LABEL_276;
              }
            }

            else
            {
LABEL_276:
              if (v35 < &v21[*(v9 + 104)])
              {
                *v35++ = v19 - (v31 & ~(v31 >> 31));
                goto LABEL_282;
              }
            }

            goto LABEL_373;
          }

LABEL_213:
          v106 = 1;
          goto LABEL_214;
        }

LABEL_180:
        v91 = *(v88 + 1);
        v31 += v91;
      }

      if (v90 == 9)
      {
        goto LABEL_180;
      }

      if (v90 != 7)
      {
        goto LABEL_205;
      }

      if (v85 >= &v21[*(v9 + 104)])
      {
        goto LABEL_347;
      }

      v92 = *(v88 + 1);
      v93 = v92 + i;
      *v85 = v92 + i;
      v35 = v85 + 1;
      v31 += v92;
      if (v31 >= v19)
      {
        goto LABEL_292;
      }

      i = 0;
      while (2)
      {
        if (v13 > 12)
        {
          goto LABEL_195;
        }

        if (v22 >= v18)
        {
          if (!v13)
          {
            goto LABEL_322;
          }

          v13 = 13;
        }

        else
        {
          v12 |= *(v20 + *v22) << v13;
          if (v13 > 4)
          {
            v13 += 8;
          }

          else
          {
            if ((v22 + 1) < v18)
            {
              v94 = v22[1];
              v22 += 2;
              v12 |= *(v20 + v94) << (v13 + 8);
              v13 += 16;
              goto LABEL_195;
            }

            v13 = 13;
          }

          ++v22;
        }

LABEL_195:
        v95 = &TIFFFaxBlackTable + 8 * (v12 & 0x1FFF);
        v96 = v95[1];
        v13 -= v96;
        v12 >>= v96;
        v97 = *v95;
        if ((v97 - 10) < 2)
        {
          v98 = *(v95 + 1);
          v31 += v98;
          i += v98;
          continue;
        }

        break;
      }

      if (v97 == 12)
      {
        ++v85;
        goto LABEL_213;
      }

      if (v97 != 8)
      {
        v156 = v85 + 1;
        v107 = v11;
        Fax3Unexpected("Fax3Decode2D", a1, *(v9 + 152), v31);
        v11 = v107;
        v19 = v161;
        v106 = 0;
        v85 = v156;
        goto LABEL_214;
      }

      if (v35 >= &v21[*(v9 + 104)])
      {
        goto LABEL_347;
      }

      v99 = *(v95 + 1);
      v35 = v85 + 2;
      v85[1] = v99 + i;
      v31 += v99;
      if (v31 >= v19)
      {
LABEL_292:
        v155 = 0;
        goto LABEL_218;
      }

      if ((v99 + i) | v93)
      {
        v85 += 2;
      }
    }
  }

  if (v19 < 1)
  {
    v155 = 0;
    v31 = 0;
    v35 = v21;
    goto LABEL_257;
  }

  v29 = 0;
  j = 0;
  v31 = 0;
  v32 = *(v9 + 112);
  v34 = v32 + 1;
  v33 = *v32;
  v35 = v21;
  while (1)
  {
    v36 = *(v9 + 104);
    if (v35 >= &v21[v36])
    {
      goto LABEL_347;
    }

    if (v13 <= 6)
    {
      if (v22 >= v18)
      {
        if (!v13)
        {
          goto LABEL_340;
        }

        v13 = 7;
      }

      else
      {
        v37 = *v22++;
        v12 |= *(v20 + v37) << v13;
        v13 += 8;
      }
    }

    v38 = &TIFFFaxMainTable + 8 * (v12 & 0x7F);
    v39 = v38[1];
    v13 -= v39;
    v12 >>= v39;
    v40 = *v38;
    if (v40 >= 4)
    {
      if (*v38 > 4u)
      {
        switch(v40)
        {
          case 5u:
            if (v35 != v21 && v33 <= v31)
            {
              v45 = &v32[v36];
              v46 = v34 + 1;
              do
              {
                if (v46 >= v45)
                {
                  goto LABEL_347;
                }

                v33 += *(v46 - 1) + *v46;
                v46 += 2;
              }

              while (v33 <= v31);
              v34 = v46 - 1;
            }

            v47 = *(v38 + 1);
            if (v33 >= v47 + v31)
            {
              v48 = v33 + v29 - v47;
              *v35++ = v48 + j;
              v31 += v48;
              v49 = *--v34;
              v33 -= v49;
              goto LABEL_66;
            }

            break;
          case 6u:
            v158 = v11;
            *v35++ = v19 - v31;
            Fax3Extension("Fax3Decode2D", a1, *(v9 + 152), v31);
            goto LABEL_251;
          case 0xCu:
            *v35++ = v19 - v31;
            v158 = v11;
            if (v13 <= 3)
            {
              if (v22 >= v18)
              {
                if (!v13)
                {
                  goto LABEL_340;
                }

                v13 = 4;
              }

              else
              {
                v129 = *v22++;
                v12 |= *(v20 + v129) << v13;
                v13 += 8;
              }
            }

            if ((v12 & 0xF) != 0)
            {
              Fax3Unexpected("Fax3Decode2D", a1, *(v9 + 152), v31);
            }

            v13 -= 4;
            v12 >>= 4;
            v155 = 1;
            goto LABEL_252;
        }

        goto LABEL_303;
      }

      if (v35 != v21 && v33 <= v31)
      {
        v50 = &v32[v36];
        v51 = v34 + 1;
        do
        {
          if (v51 >= v50)
          {
            goto LABEL_347;
          }

          v33 += *(v51 - 1) + *v51;
          v51 += 2;
        }

        while (v33 <= v31);
        v34 = v51 - 1;
      }

      v52 = *(v38 + 1);
      *v35 = j + v29 + v52 + v33;
      if (v34 >= &v32[*(v9 + 104)])
      {
        goto LABEL_347;
      }

      j = 0;
      v31 = v52 + v33;
      ++v35;
      v53 = *v34++;
      v43 = v53;
      goto LABEL_75;
    }

    if (v40 == 1)
    {
      if (v35 != v21 && v33 <= v31)
      {
        v65 = v34 + 1;
        do
        {
          if (v65 >= &v32[v36])
          {
            goto LABEL_347;
          }

          v33 += *(v65 - 1) + *v65;
          v65 += 2;
        }

        while (v33 <= v31);
        v34 = v65 - 1;
      }

      if (v34 + 1 >= &v32[v36])
      {
        goto LABEL_347;
      }

      v66 = *v34;
      v67 = v34[1];
      v34 += 2;
      v31 = v66 + v33;
      j += v29 + v66 + v33;
      v33 += v66 + v67;
      goto LABEL_113;
    }

    if (v40 == 2)
    {
      break;
    }

    if (v40 != 3)
    {
      goto LABEL_303;
    }

    if (v35 != v21 && v33 <= v31)
    {
      v41 = &v32[v36];
      v42 = v34 + 1;
      while (v42 < v41)
      {
        v33 += *(v42 - 1) + *v42;
        v42 += 2;
        if (v33 > v31)
        {
          v34 = v42 - 1;
          goto LABEL_54;
        }
      }

      goto LABEL_347;
    }

LABEL_54:
    *v35 = j + v29 + v33;
    if (v34 >= &v32[*(v9 + 104)])
    {
LABEL_347:
      v144 = *(a1 + 1200);
      v145 = "tile";
      if ((*(a1 + 16) & 0x400) == 0)
      {
        v145 = "strip";
      }

      v146 = 932;
      if ((*(a1 + 16) & 0x400) == 0)
      {
        v146 = 884;
      }

      v147 = *(a1 + v146);
      goto LABEL_378;
    }

    j = 0;
    ++v35;
    v44 = *v34++;
    v43 = v44;
    v31 = v33;
LABEL_75:
    v33 += v43;
LABEL_113:
    v29 = -v31;
    if (v31 >= v19)
    {
      if (j)
      {
        if (j + v31 < v19)
        {
          if (v13 <= 0)
          {
            if (v22 >= v18)
            {
              if (!v13)
              {
                goto LABEL_340;
              }

              v13 = 1;
            }

            else
            {
              v116 = *v22++;
              v12 |= *(v20 + v116) << v13;
              v13 += 8;
            }
          }

          if ((v12 & 1) == 0)
          {
LABEL_303:
            v158 = v11;
            Fax3Unexpected("Fax3Decode2D", a1, *(v9 + 152), v31);
            goto LABEL_251;
          }

          --v13;
          v12 >>= 1;
        }

        if (v35 >= &v21[*(v9 + 104)])
        {
          goto LABEL_347;
        }

        v155 = 0;
LABEL_254:
        *v35++ = j;
      }

      else
      {
        v155 = 0;
      }

      v8 = a1;
      goto LABEL_257;
    }
  }

  if (((v35 - v21) & 4) != 0)
  {
    while (1)
    {
      if (v13 > 12)
      {
        goto LABEL_103;
      }

      if (v22 >= v18)
      {
        if (!v13)
        {
          goto LABEL_340;
        }

        v13 = 13;
      }

      else
      {
        v12 |= *(v20 + *v22) << v13;
        if (v13 > 4)
        {
          v13 += 8;
        }

        else
        {
          if ((v22 + 1) < v18)
          {
            v60 = v22[1];
            v22 += 2;
            v12 |= *(v20 + v60) << (v13 + 8);
            v13 += 16;
            goto LABEL_103;
          }

          v13 = 13;
        }

        ++v22;
      }

LABEL_103:
      v61 = &TIFFFaxBlackTable + 8 * (v12 & 0x1FFF);
      v62 = v61[1];
      v13 -= v62;
      v12 >>= v62;
      v63 = *v61;
      if ((v63 - 10) >= 2)
      {
        if (v63 != 8)
        {
          v158 = v11;
LABEL_240:
          v117 = a1;
          v118 = "tile";
          if ((*(a1 + 16) & 0x400) == 0)
          {
            v118 = "strip";
          }

          v119 = 932;
          if ((*(a1 + 16) & 0x400) == 0)
          {
            v119 = 884;
          }

          goto LABEL_250;
        }

        v75 = *(v61 + 1);
        *v35 = v75 + j;
        v69 = v35 + 1;
        v31 += v75;
        for (j = 0; ; j += v80)
        {
          if (v13 > 11)
          {
            goto LABEL_141;
          }

          if (v22 >= v18)
          {
            if (!v13)
            {
LABEL_339:
              v35 = v69;
LABEL_340:
              v142 = "tile";
              if ((*(a1 + 16) & 0x400) == 0)
              {
                v142 = "strip";
              }

              v143 = 932;
              if ((*(a1 + 16) & 0x400) == 0)
              {
                v143 = 884;
              }

              TIFFWarningExtR(a1, "Fax3Decode2D", "Premature EOF at line %u of %s %u (x %u)", *(v9 + 152), v142, *(a1 + v143), v31);
              if (j)
              {
                v19 = v161;
                if (v35 >= &v21[*(v9 + 104)])
                {
                  goto LABEL_347;
                }

                *v35 = j;
                v133 = v35 + 1;
              }

              else
              {
                v133 = v35;
                LODWORD(v19) = v161;
              }

              v8 = a1;
              if (v31 != v19)
              {
                v136 = v133;
                Fax3BadLength("Fax3Decode2D", a1, *(v9 + 152), v31, v161);
                v19 = v161;
                v137 = v31 > v161;
                if (v31 > v161)
                {
                  v133 = v136;
                  if (v136 > v21)
                  {
                    v148 = v136 - 1;
                    v139 = v136 - 1;
                    do
                    {
                      v149 = *v139--;
                      v31 -= v149;
                      v137 = v31 > v161;
                      v150 = v31 > v161 && v148 > v21;
                      v148 = v139;
                    }

                    while (v150);
                    goto LABEL_361;
                  }

                  goto LABEL_363;
                }

LABEL_362:
                v133 = v136;
                goto LABEL_363;
              }

LABEL_379:
              v14 = 0;
LABEL_380:
              a2 = v159;
LABEL_383:
              (*(v9 + 88))(a2, v21, v133);
              *(v9 + 72) = v12;
              *(v9 + 76) = 0;
              *(v9 + 80) = v14;
              *(v8 + 1160) += *(v8 + 1152) - v22;
              *(v8 + 1152) = v22;
              return 0xFFFFFFFFLL;
            }

            v13 = 12;
          }

          else
          {
            v12 |= *(v20 + *v22) << v13;
            if (v13 > 3)
            {
              v13 += 8;
            }

            else
            {
              if ((v22 + 1) < v18)
              {
                v76 = v22[1];
                v22 += 2;
                v12 |= *(v20 + v76) << (v13 + 8);
                v13 += 16;
                goto LABEL_141;
              }

              v13 = 12;
            }

            ++v22;
          }

LABEL_141:
          v71 = &TIFFFaxWhiteTable + 8 * (v12 & 0xFFF);
          v77 = v71[1];
          v13 -= v77;
          v12 >>= v77;
          v78 = *v71;
          if (v78 != 9 && v78 != 11)
          {
            if (v78 == 7)
            {
              goto LABEL_150;
            }

            v158 = v11;
            ++v35;
LABEL_246:
            v117 = a1;
            v118 = "tile";
            if ((*(a1 + 16) & 0x400) == 0)
            {
              v118 = "strip";
            }

            v119 = 932;
            if ((*(a1 + 16) & 0x400) == 0)
            {
              v119 = 884;
            }

LABEL_250:
            TIFFErrorExtR(v117, "Fax3Decode2D", "Bad code word at line %u of %s %u (x %u)", *(v9 + 152), v118, *(a1 + v119), v31);
LABEL_251:
            v155 = 0;
LABEL_252:
            v11 = v158;
            if (j)
            {
              v19 = v161;
              if (v35 < &v21[*(v9 + 104)])
              {
                goto LABEL_254;
              }

              goto LABEL_347;
            }

            v8 = a1;
            LODWORD(v19) = v161;
LABEL_257:
            v157 = v11;
            if (v31 != v19)
            {
              v120 = "tile";
              if ((*(v8 + 16) & 0x400) == 0)
              {
                v120 = "strip";
              }

              v121 = 932;
              if ((*(v8 + 16) & 0x400) == 0)
              {
                v121 = 884;
              }

              v122 = "Premature EOL";
              if (v31 >= v19)
              {
                v122 = "Line length mismatch";
              }

              TIFFWarningExtR(v8, "Fax3Decode2D", "%s at line %u of %s %u (got %u, expected %u)", v122, *(v9 + 152), v120, *(v8 + v121), v31, v19);
              v19 = v161;
              v111 = v31 > v161;
              if (v31 > v161 && v35 > v21)
              {
                v123 = v35 - 1;
                v113 = v35 - 1;
                do
                {
                  v124 = *v113--;
                  v31 -= v124;
                  v111 = v31 > v161;
                  v125 = v31 > v161 && v123 > v21;
                  v123 = v113;
                }

                while (v125);
                goto LABEL_271;
              }

              goto LABEL_272;
            }

LABEL_282:
            v126 = v159;
LABEL_283:
            (*(v9 + 88))(v126, v21, v35);
            if (v35 < &v21[*(v9 + 104)])
            {
              *v35 = 0;
            }

            v127 = *(v9 + 112);
            *(v9 + 112) = vextq_s8(v127, v127, 8uLL);
            v128 = *(v9 + 8);
            a2 = v126 + v128;
            ++*(v9 + 152);
            v21 = v127.i64[0];
            v11 = v157 - v128;
            v19 = v161;
            v14 = v155;
            if (v157 <= v128)
            {
              v15 = *(v8 + 1152);
              v16 = *(v8 + 1160);
LABEL_308:
              *(v9 + 72) = v12;
              *(v9 + 76) = v13;
              *(v9 + 80) = v14;
              *(v8 + 1160) = v15 - v22 + v16;
              *(v8 + 1152) = v22;
              return 1;
            }

            goto LABEL_6;
          }

          v80 = *(v71 + 1);
          v31 += v80;
        }
      }

      v64 = *(v61 + 1);
      v31 += v64;
      j += v64;
    }
  }

  while (1)
  {
    if (v13 > 11)
    {
      goto LABEL_87;
    }

    if (v22 >= v18)
    {
      if (!v13)
      {
        goto LABEL_340;
      }

      v13 = 12;
    }

    else
    {
      v12 |= *(v20 + *v22) << v13;
      if (v13 > 3)
      {
        v13 += 8;
      }

      else
      {
        if ((v22 + 1) < v18)
        {
          v54 = v22[1];
          v22 += 2;
          v12 |= *(v20 + v54) << (v13 + 8);
          v13 += 16;
          goto LABEL_87;
        }

        v13 = 12;
      }

      ++v22;
    }

LABEL_87:
    v55 = &TIFFFaxWhiteTable + 8 * (v12 & 0xFFF);
    v56 = v55[1];
    v13 -= v56;
    v12 >>= v56;
    v57 = *v55;
    if (v57 != 9 && v57 != 11)
    {
      break;
    }

    v59 = *(v55 + 1);
    v31 += v59;
    j += v59;
  }

  if (v57 != 7)
  {
    v158 = v11;
    goto LABEL_246;
  }

  v68 = *(v55 + 1);
  *v35 = v68 + j;
  v69 = v35 + 1;
  v31 += v68;
  j = 0;
  while (2)
  {
    if (v13 > 12)
    {
      goto LABEL_127;
    }

    if (v22 >= v18)
    {
      if (!v13)
      {
        goto LABEL_339;
      }

      v13 = 13;
    }

    else
    {
      v12 |= *(v20 + *v22) << v13;
      if (v13 > 4)
      {
        v13 += 8;
      }

      else
      {
        if ((v22 + 1) < v18)
        {
          v70 = v22[1];
          v22 += 2;
          v12 |= *(v20 + v70) << (v13 + 8);
          v13 += 16;
          goto LABEL_127;
        }

        v13 = 13;
      }

      ++v22;
    }

LABEL_127:
    v71 = &TIFFFaxBlackTable + 8 * (v12 & 0x1FFF);
    v72 = v71[1];
    v13 -= v72;
    v12 >>= v72;
    v73 = *v71;
    if ((v73 - 10) < 2)
    {
      v74 = *(v71 + 1);
      v31 += v74;
      j += v74;
      continue;
    }

    break;
  }

  if (v73 != 8)
  {
    v158 = v11;
    ++v35;
    goto LABEL_240;
  }

LABEL_150:
  if (v69 >= &v21[*(v9 + 104)])
  {
    goto LABEL_347;
  }

  v81 = *(v71 + 1);
  v35[1] = v81 + j;
  v31 += v81;
  v35 += 2;
  if (v35 == v21 || (v33 <= v31 ? (v82 = v33 < v19) : (v82 = 0), !v82))
  {
LABEL_66:
    j = 0;
    goto LABEL_113;
  }

  v83 = v34 + 1;
  while (v83 < &v32[*(v9 + 104)])
  {
    v33 += *(v83 - 1) + *v83;
    v83 += 2;
    if (v33 > v31 || v33 >= v19)
    {
      j = 0;
      v34 = v83 - 1;
      goto LABEL_113;
    }
  }

  v144 = *(a1 + 1200);
  v145 = "tile";
  if ((*(a1 + 16) & 0x400) == 0)
  {
    v145 = "strip";
  }

  v152 = 932;
  if ((*(a1 + 16) & 0x400) == 0)
  {
    v152 = 884;
  }

  v147 = *(a1 + v152);
LABEL_378:
  TIFFErrorExt(v144, "Fax3Decode2D", "Buffer overflow at line %u of %s %u", v19, v11, a6, a7, a8, *(v9 + 152), v145, v147);
  return 0xFFFFFFFFLL;
}

uint64_t Fax3Unexpected(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if ((*(a2 + 16) & 0x400) != 0)
  {
    v4 = "tile";
  }

  else
  {
    v4 = "strip";
  }

  v5 = 932;
  if ((*(a2 + 16) & 0x400) == 0)
  {
    v5 = 884;
  }

  return TIFFErrorExtR(a2, a1, "Bad code word at line %u of %s %u (x %u)", a3, v4, *(a2 + v5), a4);
}

uint64_t Fax3BadLength(const char *a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  if ((*(a2 + 16) & 0x400) != 0)
  {
    v5 = "tile";
  }

  else
  {
    v5 = "strip";
  }

  v6 = 932;
  if ((*(a2 + 16) & 0x400) == 0)
  {
    v6 = 884;
  }

  v7 = "Line length mismatch";
  if (a4 < a5)
  {
    v7 = "Premature EOL";
  }

  return TIFFWarningExtR(a2, a1, "%s at line %u of %s %u (got %u, expected %u)", v7, a3, v5, *(a2 + v6), a4, a5);
}

uint64_t Fax3Extension(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if ((*(a2 + 16) & 0x400) != 0)
  {
    v4 = "tile";
  }

  else
  {
    v4 = "strip";
  }

  v5 = 932;
  if ((*(a2 + 16) & 0x400) == 0)
  {
    v5 = 884;
  }

  return TIFFErrorExtR(a2, a1, "Uncompressed data (not supported) at line %u of %s %u (x %u)", a3, v4, *(a2 + v5), a4);
}

uint64_t Fax3Encode1DRow(void *a1, uint64_t a2, unsigned int a3)
{
  v6 = 0;
  v41 = a1[137];
  do
  {
    v7 = a3 - v6;
    if ((a3 - v6) < 1)
    {
      v11 = 0;
      goto LABEL_39;
    }

    v8 = (a2 + (v6 >> 3));
    v9 = v6 & 7;
    if ((v6 & 7) != 0)
    {
      v10 = zeroruns[(*v8 << v9) & 0xFELL];
      if (8 - v9 < v10)
      {
        v10 = 8 - v9;
      }

      if (v10 >= v7)
      {
        v11 = a3 - v6;
      }

      else
      {
        v11 = v10;
      }

      if ((v11 + v9) < 8)
      {
        goto LABEL_39;
      }

      v7 -= v11;
      ++v8;
    }

    else
    {
      v11 = 0;
    }

    if (v7 < 128)
    {
      v12 = v8;
      goto LABEL_26;
    }

    if ((v8 & 7) != 0)
    {
      v12 = &v8[-(v8 & 7) + 8];
      v13 = -v11;
      v14 = v8 + 1;
      do
      {
        if (*v8)
        {
          v19 = zeroruns[*v8];
          goto LABEL_38;
        }

        v7 -= 8;
        ++v8;
        v13 -= 8;
      }

      while ((v14++ & 7));
      v11 = -v13;
      if (v7 + 8 > 71)
      {
        goto LABEL_22;
      }

LABEL_26:
      v16 = v7;
      if (v7 < 8)
      {
LABEL_32:
        if (v7 >= 1)
        {
          v18 = zeroruns[*v12];
          if (v7 >= v18)
          {
            v7 = v18;
          }

          v11 += v7;
        }

        goto LABEL_39;
      }

      goto LABEL_27;
    }

    v12 = v8;
LABEL_22:
    v16 = v7;
    while (!*v12)
    {
      v11 += 64;
      v7 = v16 - 64;
      ++v12;
      v17 = v16 <= 127;
      v16 -= 64;
      if (v17)
      {
        goto LABEL_26;
      }
    }

LABEL_27:
    v13 = -v11;
    while (!*v12)
    {
      v7 = v16 - 8;
      v12 = (v12 + 1);
      v13 -= 8;
      v17 = v16 <= 15;
      v16 -= 8;
      if (v17)
      {
        v11 = -v13;
        goto LABEL_32;
      }
    }

    v19 = zeroruns[*v12];
LABEL_38:
    v11 = v19 - v13;
LABEL_39:
    result = putspan(a1, v11, L"\b5");
    if (!result)
    {
      return result;
    }

    v21 = v11 + v6;
    v22 = a3 - v21;
    if (a3 <= v21)
    {
      break;
    }

    if (v22 < 1)
    {
      v26 = 0;
      goto LABEL_78;
    }

    v23 = (a2 + (v21 >> 3));
    v24 = v21 & 7;
    if ((v21 & 7) != 0)
    {
      v25 = oneruns[(*v23 << v24) & 0xFELL];
      if (8 - v24 < v25)
      {
        v25 = 8 - v24;
      }

      if (v25 >= v22)
      {
        v26 = a3 - v21;
      }

      else
      {
        v26 = v25;
      }

      if ((v26 + v24) < 8)
      {
        goto LABEL_78;
      }

      v22 -= v26;
      ++v23;
    }

    else
    {
      v26 = 0;
    }

    if (v22 < 128)
    {
      v27 = v23;
      goto LABEL_65;
    }

    if ((v23 & 7) != 0)
    {
      v27 = &v23[-(v23 & 7) + 8];
      v28 = -v26;
      v29 = v23 + 1;
      do
      {
        v30 = *v23;
        if (v30 != 255)
        {
          v35 = oneruns[v30];
          goto LABEL_77;
        }

        v22 -= 8;
        ++v23;
        v28 -= 8;
      }

      while ((v29++ & 7));
      v26 = -v28;
      if (v22 + 8 > 71)
      {
        goto LABEL_61;
      }

LABEL_65:
      v32 = v22;
      if (v22 < 8)
      {
LABEL_71:
        if (v22 >= 1)
        {
          v34 = oneruns[*v27];
          if (v22 >= v34)
          {
            v22 = v34;
          }

          v26 += v22;
        }

        goto LABEL_78;
      }

      goto LABEL_66;
    }

    v27 = v23;
LABEL_61:
    v32 = v22;
    while (*v27 == -1)
    {
      v26 += 64;
      v22 = v32 - 64;
      v27 += 8;
      v17 = v32 <= 127;
      v32 -= 64;
      if (v17)
      {
        goto LABEL_65;
      }
    }

LABEL_66:
    v28 = -v26;
    while (1)
    {
      v33 = *v27;
      if (v33 != 255)
      {
        break;
      }

      v22 = v32 - 8;
      ++v27;
      v28 -= 8;
      v17 = v32 <= 15;
      v32 -= 8;
      if (v17)
      {
        v26 = -v28;
        goto LABEL_71;
      }
    }

    v35 = oneruns[v33];
LABEL_77:
    v26 = v35 - v28;
LABEL_78:
    result = putspan(a1, v26, &TIFFFaxBlackCodes);
    if (!result)
    {
      return result;
    }

    v6 = v26 + v21;
  }

  while (v6 < a3);
  v36 = v41[1];
  if ((v36 & 0xC) == 0)
  {
    return 1;
  }

  if (v41[19] == 8)
  {
LABEL_85:
    if ((v36 & 8) != 0)
    {
      v39 = a1[144];
      if (v39)
      {
        if (a1[145] >= a1[141])
        {
          result = TIFFFlushData1(a1);
          if (!result)
          {
            return result;
          }

          v39 = a1[144];
        }

        v40 = v41[18];
        a1[144] = v39 + 1;
        *v39 = v40;
        ++a1[145];
        *(v41 + 9) = 0x800000000;
      }
    }

    return 1;
  }

  if (a1[145] < a1[141] || (result = TIFFFlushData1(a1), result))
  {
    v37 = v41[18];
    v38 = a1[144];
    a1[144] = v38 + 1;
    *v38 = v37;
    ++a1[145];
    *(v41 + 9) = 0x800000000;
    v36 = v41[1];
    goto LABEL_85;
  }

  return result;
}

uint64_t Fax3Encode2DRow(void *a1, char *a2, char *a3, unsigned int a4)
{
  v8 = 0;
  if (a4 < 1 || *a2 < 0)
  {
    goto LABEL_29;
  }

  if (a4 < 0x80)
  {
    v8 = 0;
    v9 = a2;
    v14 = a4;
  }

  else
  {
    v8 = 0;
    if ((a2 & 7) == 0)
    {
      v9 = a2;
      v13 = a4;
LABEL_13:
      while (!*v9)
      {
        v8 += 64;
        v14 = v13 - 64;
        v9 += 8;
        v15 = v13 <= 127;
        v13 -= 64;
        if (v15)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_17;
    }

    v9 = &a2[-(a2 & 7) + 8];
    v10 = a2 + 1;
    v11 = a2;
    do
    {
      if (*v11)
      {
        v17 = zeroruns[*v11];
        goto LABEL_28;
      }

      v8 += 8;
      ++v11;
      v12 = (v10++ & 7) == 0;
    }

    while (!v12);
    v13 = a4 - v8;
    v14 = a4 - v8;
    if ((a4 - v8 + 8) > 71)
    {
      goto LABEL_13;
    }
  }

LABEL_16:
  v13 = v14;
  if (v14 >= 8)
  {
LABEL_17:
    v16 = -v8;
    while (!*v9)
    {
      v14 = v13 - 8;
      ++v9;
      v16 -= 8;
      v15 = v13 <= 15;
      v13 -= 8;
      if (v15)
      {
        v8 = -v16;
        goto LABEL_22;
      }
    }

    v8 = zeroruns[*v9] - v16;
    goto LABEL_29;
  }

LABEL_22:
  if (v14 >= 1)
  {
    v17 = zeroruns[*v9];
    if (v14 < v17)
    {
      v17 = v14;
    }

LABEL_28:
    v8 += v17;
  }

LABEL_29:
  v18 = 0;
  if (a4 >= 1 && (*a3 & 0x80000000) == 0)
  {
    if (a4 < 0x80)
    {
      v18 = 0;
      v19 = a3;
      v23 = a4;
    }

    else
    {
      v18 = 0;
      if ((a3 & 7) == 0)
      {
        v19 = a3;
        v22 = a4;
LABEL_41:
        while (!*v19)
        {
          v18 += 64;
          v23 = v22 - 64;
          v19 += 8;
          v15 = v22 <= 127;
          v22 -= 64;
          if (v15)
          {
            goto LABEL_44;
          }
        }

LABEL_45:
        v24 = -v18;
        while (!*v19)
        {
          v23 = v22 - 8;
          ++v19;
          v24 -= 8;
          v15 = v22 <= 15;
          v22 -= 8;
          if (v15)
          {
            v18 = -v24;
            goto LABEL_50;
          }
        }

        v18 = zeroruns[*v19] - v24;
        goto LABEL_57;
      }

      v19 = &a3[-(a3 & 7) + 8];
      v20 = a3 + 1;
      v21 = a3;
      do
      {
        if (*v21)
        {
          v25 = zeroruns[*v21];
          goto LABEL_56;
        }

        v18 += 8;
        ++v21;
        v12 = (v20++ & 7) == 0;
      }

      while (!v12);
      v22 = a4 - v18;
      v23 = a4 - v18;
      if ((a4 - v18 + 8) > 71)
      {
        goto LABEL_41;
      }
    }

LABEL_44:
    v22 = v23;
    if (v23 < 8)
    {
LABEL_50:
      if (v23 >= 1)
      {
        v25 = zeroruns[*v19];
        if (v23 < v25)
        {
          v25 = v23;
        }

LABEL_56:
        v18 += v25;
      }

      goto LABEL_57;
    }

    goto LABEL_45;
  }

LABEL_57:
  v26 = 0;
  while (1)
  {
    v27 = a4;
    v28 = a4 - v18;
    if (a4 <= v18)
    {
      goto LABEL_130;
    }

    v29 = v18 & 7;
    v30 = &a3[v18 >> 3];
    if ((a3[v18 >> 3] >> (v18 & 7 ^ 7)))
    {
      if (v28 < 1)
      {
        goto LABEL_76;
      }

      if ((v18 & 7) != 0)
      {
        v31 = oneruns[(*v30 << v29) & 0xFELL];
        if (8 - v29 < v31)
        {
          v31 = 8 - v29;
        }

        if (v31 >= v28)
        {
          v31 = a4 - v18;
        }

        if (v31 + v29 < 8)
        {
          goto LABEL_129;
        }

        v28 -= v31;
        ++v30;
      }

      else
      {
        v31 = 0;
      }

      if (v28 < 128)
      {
        v32 = v30;
        goto LABEL_100;
      }

      if ((v30 & 7) != 0)
      {
        v32 = &v30[-(v30 & 7) + 8];
        v33 = -v31;
        v34 = v30 + 1;
        do
        {
          v35 = *v30;
          if (v35 != 255)
          {
            v43 = oneruns[v35];
            goto LABEL_128;
          }

          v28 -= 8;
          ++v30;
          v33 -= 8;
        }

        while ((v34++ & 7));
        v31 = -v33;
        if (v28 + 8 > 71)
        {
          goto LABEL_96;
        }

LABEL_100:
        v40 = v28;
        if (v28 >= 8)
        {
          goto LABEL_101;
        }

LABEL_106:
        if (v28 >= 1)
        {
          v42 = oneruns[*v32];
LABEL_123:
          if (v28 >= v42)
          {
            v28 = v42;
          }

          v31 += v28;
          goto LABEL_129;
        }

        goto LABEL_129;
      }

      v32 = v30;
LABEL_96:
      v40 = v28;
      while (*v32 == -1)
      {
        v31 += 64;
        v28 = v40 - 64;
        v32 += 8;
        v15 = v40 <= 127;
        v40 -= 64;
        if (v15)
        {
          goto LABEL_100;
        }
      }

LABEL_101:
      v33 = -v31;
      while (1)
      {
        v41 = *v32;
        if (v41 != 255)
        {
          break;
        }

        v28 = v40 - 8;
        ++v32;
        v33 -= 8;
        v15 = v40 <= 15;
        v40 -= 8;
        if (v15)
        {
          v31 = -v33;
          goto LABEL_106;
        }
      }

      v43 = oneruns[v41];
LABEL_128:
      v31 = v43 - v33;
      goto LABEL_129;
    }

    if (v28 < 1)
    {
LABEL_76:
      v31 = 0;
      goto LABEL_129;
    }

    if ((v18 & 7) != 0)
    {
      v31 = zeroruns[(*v30 << v29) & 0xFELL];
      if (8 - v29 < v31)
      {
        v31 = 8 - v29;
      }

      if (v31 >= v28)
      {
        v31 = a4 - v18;
      }

      if (v31 + v29 < 8)
      {
        goto LABEL_129;
      }

      v28 -= v31;
      ++v30;
    }

    else
    {
      v31 = 0;
    }

    if (v28 < 128)
    {
      v37 = v30;
    }

    else
    {
      if ((v30 & 7) == 0)
      {
        v37 = v30;
LABEL_111:
        v44 = v28;
        while (!*v37)
        {
          v31 += 64;
          v28 = v44 - 64;
          v37 += 8;
          v15 = v44 <= 127;
          v44 -= 64;
          if (v15)
          {
            goto LABEL_115;
          }
        }

LABEL_116:
        v33 = -v31;
        while (!*v37)
        {
          v28 = v44 - 8;
          ++v37;
          v33 -= 8;
          v15 = v44 <= 15;
          v44 -= 8;
          if (v15)
          {
            v31 = -v33;
            goto LABEL_121;
          }
        }

        v43 = zeroruns[*v37];
        goto LABEL_128;
      }

      v37 = &v30[-(v30 & 7) + 8];
      v33 = -v31;
      v38 = v30 + 1;
      do
      {
        if (*v30)
        {
          v43 = zeroruns[*v30];
          goto LABEL_128;
        }

        v28 -= 8;
        ++v30;
        v33 -= 8;
      }

      while ((v38++ & 7));
      v31 = -v33;
      if (v28 + 8 > 71)
      {
        goto LABEL_111;
      }
    }

LABEL_115:
    v44 = v28;
    if (v28 >= 8)
    {
      goto LABEL_116;
    }

LABEL_121:
    if (v28 >= 1)
    {
      v42 = zeroruns[*v37];
      goto LABEL_123;
    }

LABEL_129:
    v27 = v31 + v18;
LABEL_130:
    if (v27 < v8)
    {
      result = Fax3PutBits(a1, 1u, 4u);
      goto LABEL_219;
    }

    v46 = v18 - v8;
    if (v18 >= v8 && v46 < 4)
    {
      goto LABEL_134;
    }

    if (v18 < v8)
    {
      v47 = v8 - v18;
      if (v47 < 4)
      {
        v46 = -v47;
LABEL_134:
        result = Fax3PutBits(a1, vcodes[3 * v46 + 10], vcodes[3 * v46 + 9]);
        v26 = v8;
        if (!result)
        {
          return result;
        }

        goto LABEL_220;
      }
    }

    v27 = a4;
    v48 = a4 - v8;
    if (a4 > v8)
    {
      v49 = v8 & 7;
      v50 = &a2[v8 >> 3];
      if ((a2[v8 >> 3] >> (v8 & 7 ^ 7)))
      {
        if (v48 >= 1)
        {
          if ((v8 & 7) != 0)
          {
            v51 = oneruns[(*v50 << v49) & 0xFELL];
            if (8 - v49 < v51)
            {
              v51 = 8 - v49;
            }

            if (v51 >= v48)
            {
              v51 = a4 - v8;
            }

            if (v51 + v49 >= 8)
            {
              v48 -= v51;
              ++v50;
              goto LABEL_159;
            }

LABEL_210:
            v27 = v51 + v8;
            goto LABEL_211;
          }

          v51 = 0;
LABEL_159:
          if (v48 < 128)
          {
            v52 = v50;
            goto LABEL_181;
          }

          if ((v50 & 7) == 0)
          {
            v52 = v50;
LABEL_177:
            v60 = v48;
            while (*v52 == -1)
            {
              v51 += 64;
              v48 = v60 - 64;
              v52 += 8;
              v15 = v60 <= 127;
              v60 -= 64;
              if (v15)
              {
                goto LABEL_181;
              }
            }

            goto LABEL_182;
          }

          v52 = &v50[-(v50 & 7) + 8];
          v53 = -v51;
          v54 = v50 + 1;
          do
          {
            v55 = *v50;
            if (v55 != 255)
            {
              v63 = oneruns[v55];
              goto LABEL_209;
            }

            v48 -= 8;
            ++v50;
            v53 -= 8;
          }

          while ((v54++ & 7));
          v51 = -v53;
          if (v48 + 8 > 71)
          {
            goto LABEL_177;
          }

LABEL_181:
          v60 = v48;
          if (v48 >= 8)
          {
LABEL_182:
            v53 = -v51;
            while (1)
            {
              v61 = *v52;
              if (v61 != 255)
              {
                break;
              }

              v48 = v60 - 8;
              ++v52;
              v53 -= 8;
              v15 = v60 <= 15;
              v60 -= 8;
              if (v15)
              {
                v51 = -v53;
                goto LABEL_187;
              }
            }

            v63 = oneruns[v61];
LABEL_209:
            v51 = v63 - v53;
            goto LABEL_210;
          }

LABEL_187:
          if (v48 < 1)
          {
            goto LABEL_210;
          }

          v62 = oneruns[*v52];
LABEL_204:
          if (v48 >= v62)
          {
            v48 = v62;
          }

          v51 += v48;
          goto LABEL_210;
        }

LABEL_157:
        v51 = 0;
        goto LABEL_210;
      }

      if (v48 < 1)
      {
        goto LABEL_157;
      }

      if ((v8 & 7) != 0)
      {
        v51 = zeroruns[(*v50 << v49) & 0xFELL];
        if (8 - v49 < v51)
        {
          v51 = 8 - v49;
        }

        if (v51 >= v48)
        {
          v51 = a4 - v8;
        }

        if (v51 + v49 < 8)
        {
          goto LABEL_210;
        }

        v48 -= v51;
        ++v50;
      }

      else
      {
        v51 = 0;
      }

      if (v48 < 128)
      {
        v57 = v50;
LABEL_196:
        v64 = v48;
        if (v48 < 8)
        {
LABEL_202:
          if (v48 < 1)
          {
            goto LABEL_210;
          }

          v62 = zeroruns[*v57];
          goto LABEL_204;
        }
      }

      else
      {
        if ((v50 & 7) != 0)
        {
          v57 = &v50[-(v50 & 7) + 8];
          v53 = -v51;
          v58 = v50 + 1;
          do
          {
            if (*v50)
            {
              v63 = zeroruns[*v50];
              goto LABEL_209;
            }

            v48 -= 8;
            ++v50;
            v53 -= 8;
          }

          while ((v58++ & 7));
          v51 = -v53;
          if (v48 + 8 > 71)
          {
            goto LABEL_192;
          }

          goto LABEL_196;
        }

        v57 = v50;
LABEL_192:
        v64 = v48;
        while (!*v57)
        {
          v51 += 64;
          v48 = v64 - 64;
          v57 += 8;
          v15 = v64 <= 127;
          v64 -= 64;
          if (v15)
          {
            goto LABEL_196;
          }
        }
      }

      v53 = -v51;
      while (!*v57)
      {
        v48 = v64 - 8;
        ++v57;
        v53 -= 8;
        v15 = v64 <= 15;
        v64 -= 8;
        if (v15)
        {
          v51 = -v53;
          goto LABEL_202;
        }
      }

      v63 = zeroruns[*v57];
      goto LABEL_209;
    }

LABEL_211:
    result = Fax3PutBits(a1, 1u, 3u);
    if (!result)
    {
      return result;
    }

    if (v26 + v8 && ((a2[v26 >> 3] >> (~v26 & 7)) & 1) != 0)
    {
      result = putspan(a1, v8 - v26, &TIFFFaxBlackCodes);
      if (!result)
      {
        return result;
      }

      v65 = v27 - v8;
      v66 = a1;
      v67 = L"\b5";
    }

    else
    {
      result = putspan(a1, v8 - v26, L"\b5");
      if (!result)
      {
        return result;
      }

      v65 = v27 - v8;
      v66 = a1;
      v67 = &TIFFFaxBlackCodes;
    }

    result = putspan(v66, v65, v67);
LABEL_219:
    v26 = v27;
    if (!result)
    {
      return result;
    }

LABEL_220:
    v68 = a4 - v26;
    if (a4 <= v26)
    {
      return 1;
    }

    v69 = v26 & 7;
    v70 = v26 >> 3;
    v71 = &a2[v26 >> 3];
    v72 = (1 << (v26 & 7 ^ 7)) & a2[v26 >> 3];
    if (v72)
    {
      if (v68 < 1)
      {
        v73 = 0;
LABEL_239:
        v8 = v73 + v26;
LABEL_295:
        if (v68 < 1)
        {
          v89 = 0;
LABEL_312:
          v91 = v89 + v26;
          goto LABEL_368;
        }

        v88 = &a3[v70];
        if ((v26 & 7) != 0)
        {
          v89 = zeroruns[(*v88 << v69) & 0xFELL];
          if (8 - v69 < v89)
          {
            v89 = 8 - v69;
          }

          if (v89 >= v68)
          {
            v89 = a4 - v26;
          }

          if (v89 + v69 < 8)
          {
            goto LABEL_312;
          }

          v68 -= v89;
          ++v88;
        }

        else
        {
          v89 = 0;
        }

        if (v68 < 128)
        {
          v92 = v88;
        }

        else
        {
          if ((v88 & 7) == 0)
          {
            v92 = v88;
LABEL_334:
            v100 = v68;
            while (!*v92)
            {
              v89 += 64;
              v68 = v100 - 64;
              v92 += 8;
              v15 = v100 <= 127;
              v100 -= 64;
              if (v15)
              {
                goto LABEL_338;
              }
            }

LABEL_339:
            v93 = -v89;
            while (!*v92)
            {
              v68 = v100 - 8;
              ++v92;
              v93 -= 8;
              v15 = v100 <= 15;
              v100 -= 8;
              if (v15)
              {
                v89 = -v93;
                goto LABEL_344;
              }
            }

            v102 = zeroruns[*v92];
            goto LABEL_366;
          }

          v92 = &v88[-(v88 & 7) + 8];
          v93 = -v89;
          v94 = v88 + 1;
          do
          {
            if (*v88)
            {
              v102 = zeroruns[*v88];
              goto LABEL_366;
            }

            v68 -= 8;
            ++v88;
            v93 -= 8;
          }

          while ((v94++ & 7));
          v89 = -v93;
          if (v68 + 8 > 71)
          {
            goto LABEL_334;
          }
        }

LABEL_338:
        v100 = v68;
        if (v68 >= 8)
        {
          goto LABEL_339;
        }

LABEL_344:
        if (v68 < 1)
        {
          goto LABEL_367;
        }

        v101 = zeroruns[*v92];
        goto LABEL_361;
      }

      if ((v26 & 7) != 0)
      {
        v73 = oneruns[(*v71 << v69) & 0xFELL];
        if (8 - v69 < v73)
        {
          v73 = 8 - v69;
        }

        if (v73 >= v68)
        {
          v73 = a4 - v26;
        }

        if (v73 + v69 < 8)
        {
          goto LABEL_239;
        }

        v74 = v68 - v73;
        ++v71;
      }

      else
      {
        v73 = 0;
        v74 = a4 - v26;
      }

      if (v74 < 128)
      {
        v75 = v71;
      }

      else
      {
        if ((v71 & 7) == 0)
        {
          v75 = v71;
LABEL_261:
          v83 = v74;
          while (*v75 == -1)
          {
            v73 += 64;
            v74 = v83 - 64;
            v75 += 8;
            v15 = v83 <= 127;
            v83 -= 64;
            if (v15)
            {
              goto LABEL_265;
            }
          }

LABEL_266:
          v76 = -v73;
          while (1)
          {
            v84 = *v75;
            if (v84 != 255)
            {
              break;
            }

            v74 = v83 - 8;
            ++v75;
            v76 -= 8;
            v15 = v83 <= 15;
            v83 -= 8;
            if (v15)
            {
              v73 = -v76;
              goto LABEL_271;
            }
          }

          v86 = oneruns[v84];
          goto LABEL_293;
        }

        v75 = &v71[-(v71 & 7) + 8];
        v76 = -v73;
        v77 = v71 + 1;
        do
        {
          v78 = *v71;
          if (v78 != 255)
          {
            v86 = oneruns[v78];
            goto LABEL_293;
          }

          v74 -= 8;
          ++v71;
          v76 -= 8;
        }

        while ((v77++ & 7));
        v73 = -v76;
        if (v74 + 8 > 71)
        {
          goto LABEL_261;
        }
      }

LABEL_265:
      v83 = v74;
      if (v74 >= 8)
      {
        goto LABEL_266;
      }

LABEL_271:
      if (v74 < 1)
      {
        goto LABEL_294;
      }

      v85 = oneruns[*v75];
    }

    else
    {
      if (v68 < 1)
      {
        v73 = 0;
LABEL_249:
        v8 = v73 + v26;
        goto LABEL_303;
      }

      if ((v26 & 7) != 0)
      {
        v73 = zeroruns[(*v71 << v69) & 0xFELL];
        if (8 - v69 < v73)
        {
          v73 = 8 - v69;
        }

        if (v73 >= v68)
        {
          v73 = a4 - v26;
        }

        if (v73 + v69 < 8)
        {
          goto LABEL_249;
        }

        v74 = v68 - v73;
        ++v71;
      }

      else
      {
        v73 = 0;
        v74 = a4 - v26;
      }

      if (v74 < 128)
      {
        v80 = v71;
      }

      else
      {
        if ((v71 & 7) == 0)
        {
          v80 = v71;
LABEL_276:
          v87 = v74;
          while (!*v80)
          {
            v73 += 64;
            v74 = v87 - 64;
            v80 += 8;
            v15 = v87 <= 127;
            v87 -= 64;
            if (v15)
            {
              goto LABEL_280;
            }
          }

LABEL_281:
          v76 = -v73;
          while (!*v80)
          {
            v74 = v87 - 8;
            ++v80;
            v76 -= 8;
            v15 = v87 <= 15;
            v87 -= 8;
            if (v15)
            {
              v73 = -v76;
              goto LABEL_286;
            }
          }

          v86 = zeroruns[*v80];
LABEL_293:
          v73 = v86 - v76;
          goto LABEL_294;
        }

        v80 = &v71[-(v71 & 7) + 8];
        v76 = -v73;
        v81 = v71 + 1;
        do
        {
          if (*v71)
          {
            v86 = zeroruns[*v71];
            goto LABEL_293;
          }

          v74 -= 8;
          ++v71;
          v76 -= 8;
        }

        while ((v81++ & 7));
        v73 = -v76;
        if (v74 + 8 > 71)
        {
          goto LABEL_276;
        }
      }

LABEL_280:
      v87 = v74;
      if (v74 >= 8)
      {
        goto LABEL_281;
      }

LABEL_286:
      if (v74 < 1)
      {
        goto LABEL_294;
      }

      v85 = zeroruns[*v80];
    }

    if (v74 < v85)
    {
      v85 = v74;
    }

    v73 += v85;
LABEL_294:
    v8 = v73 + v26;
    if (v72)
    {
      goto LABEL_295;
    }

LABEL_303:
    if (v68 < 1)
    {
      v89 = 0;
LABEL_322:
      v91 = v89 + v26;
LABEL_376:
      v105 = a4 - v91;
      if ((a4 - v91) < 1)
      {
LABEL_384:
        v108 = 0;
        goto LABEL_437;
      }

      v109 = &a3[v91 >> 3];
      v110 = v91 & 7;
      if ((v91 & 7) == 0)
      {
        v108 = 0;
LABEL_395:
        if (v105 < 128)
        {
          v116 = v109;
        }

        else
        {
          if ((v109 & 7) == 0)
          {
            v116 = v109;
LABEL_419:
            v123 = v105;
            while (!*v116)
            {
              v108 += 64;
              v105 = v123 - 64;
              v116 += 8;
              v15 = v123 <= 127;
              v123 -= 64;
              if (v15)
              {
                goto LABEL_423;
              }
            }

LABEL_424:
            v112 = -v108;
            while (!*v116)
            {
              v105 = v123 - 8;
              ++v116;
              v112 -= 8;
              v15 = v123 <= 15;
              v123 -= 8;
              if (v15)
              {
                v108 = -v112;
                goto LABEL_429;
              }
            }

            v122 = zeroruns[*v116];
LABEL_436:
            v108 = v122 - v112;
            goto LABEL_437;
          }

          v116 = &v109[-(v109 & 7) + 8];
          v112 = -v108;
          v117 = v109 + 1;
          do
          {
            if (*v109)
            {
              v122 = zeroruns[*v109];
              goto LABEL_436;
            }

            v105 -= 8;
            ++v109;
            v112 -= 8;
          }

          while ((v117++ & 7));
          v108 = -v112;
          if (v105 + 8 > 71)
          {
            goto LABEL_419;
          }
        }

LABEL_423:
        v123 = v105;
        if (v105 >= 8)
        {
          goto LABEL_424;
        }

LABEL_429:
        if (v105 < 1)
        {
          goto LABEL_437;
        }

        v121 = zeroruns[*v116];
LABEL_431:
        if (v105 >= v121)
        {
          v105 = v121;
        }

        v108 += v105;
        goto LABEL_437;
      }

      v108 = zeroruns[(*v109 << v110) & 0xFELL];
      if (8 - v110 < v108)
      {
        v108 = 8 - v110;
      }

      if (v108 >= v105)
      {
        v108 = a4 - v91;
      }

      if (v108 + v110 >= 8)
      {
        v105 -= v108;
        ++v109;
        goto LABEL_395;
      }

      goto LABEL_437;
    }

    v90 = &a3[v70];
    if ((v26 & 7) != 0)
    {
      v89 = oneruns[(*v90 << v69) & 0xFELL];
      if (8 - v69 < v89)
      {
        v89 = 8 - v69;
      }

      if (v89 >= v68)
      {
        v89 = a4 - v26;
      }

      if (v89 + v69 < 8)
      {
        goto LABEL_322;
      }

      v68 -= v89;
      ++v90;
    }

    else
    {
      v89 = 0;
    }

    if (v68 < 128)
    {
      v96 = v90;
    }

    else
    {
      if ((v90 & 7) == 0)
      {
        v96 = v90;
LABEL_349:
        v103 = v68;
        while (*v96 == -1)
        {
          v89 += 64;
          v68 = v103 - 64;
          v96 += 8;
          v15 = v103 <= 127;
          v103 -= 64;
          if (v15)
          {
            goto LABEL_353;
          }
        }

LABEL_354:
        v93 = -v89;
        while (1)
        {
          v104 = *v96;
          if (v104 != 255)
          {
            break;
          }

          v68 = v103 - 8;
          ++v96;
          v93 -= 8;
          v15 = v103 <= 15;
          v103 -= 8;
          if (v15)
          {
            v89 = -v93;
            goto LABEL_359;
          }
        }

        v102 = oneruns[v104];
LABEL_366:
        v89 = v102 - v93;
        goto LABEL_367;
      }

      v96 = &v90[-(v90 & 7) + 8];
      v93 = -v89;
      v97 = v90 + 1;
      do
      {
        v98 = *v90;
        if (v98 != 255)
        {
          v102 = oneruns[v98];
          goto LABEL_366;
        }

        v68 -= 8;
        ++v90;
        v93 -= 8;
      }

      while ((v97++ & 7));
      v89 = -v93;
      if (v68 + 8 > 71)
      {
        goto LABEL_349;
      }
    }

LABEL_353:
    v103 = v68;
    if (v68 >= 8)
    {
      goto LABEL_354;
    }

LABEL_359:
    if (v68 < 1)
    {
      goto LABEL_367;
    }

    v101 = oneruns[*v96];
LABEL_361:
    if (v68 >= v101)
    {
      v68 = v101;
    }

    v89 += v68;
LABEL_367:
    v91 = v89 + v26;
    if (!v72)
    {
      goto LABEL_376;
    }

LABEL_368:
    v105 = a4 - v91;
    if ((a4 - v91) < 1)
    {
      goto LABEL_384;
    }

    v106 = &a3[v91 >> 3];
    v107 = v91 & 7;
    if ((v91 & 7) == 0)
    {
      v108 = 0;
      goto LABEL_386;
    }

    v108 = oneruns[(*v106 << v107) & 0xFELL];
    if (8 - v107 < v108)
    {
      v108 = 8 - v107;
    }

    if (v108 >= v105)
    {
      v108 = a4 - v91;
    }

    if (v108 + v107 >= 8)
    {
      v105 -= v108;
      ++v106;
LABEL_386:
      if (v105 < 128)
      {
        v111 = v106;
      }

      else
      {
        if ((v106 & 7) == 0)
        {
          v111 = v106;
LABEL_404:
          v119 = v105;
          while (*v111 == -1)
          {
            v108 += 64;
            v105 = v119 - 64;
            v111 += 8;
            v15 = v119 <= 127;
            v119 -= 64;
            if (v15)
            {
              goto LABEL_408;
            }
          }

LABEL_409:
          v112 = -v108;
          while (1)
          {
            v120 = *v111;
            if (v120 != 255)
            {
              break;
            }

            v105 = v119 - 8;
            ++v111;
            v112 -= 8;
            v15 = v119 <= 15;
            v119 -= 8;
            if (v15)
            {
              v108 = -v112;
              goto LABEL_414;
            }
          }

          v122 = oneruns[v120];
          goto LABEL_436;
        }

        v111 = &v106[-(v106 & 7) + 8];
        v112 = -v108;
        v113 = v106 + 1;
        do
        {
          v114 = *v106;
          if (v114 != 255)
          {
            v122 = oneruns[v114];
            goto LABEL_436;
          }

          v105 -= 8;
          ++v106;
          v112 -= 8;
        }

        while ((v113++ & 7));
        v108 = -v112;
        if (v105 + 8 > 71)
        {
          goto LABEL_404;
        }
      }

LABEL_408:
      v119 = v105;
      if (v105 >= 8)
      {
        goto LABEL_409;
      }

LABEL_414:
      if (v105 < 1)
      {
        goto LABEL_437;
      }

      v121 = oneruns[*v111];
      goto LABEL_431;
    }

LABEL_437:
    v18 = v108 + v91;
  }
}

uint64_t putspan(void *a1, int a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[137];
  v7 = *(v6 + 72);
  v8 = *(v6 + 76);
  if (a2 < 2624)
  {
LABEL_14:
    if (v4 >= 64)
    {
      v16 = a3 + 6 * (v4 >> 6);
      if ((v4 & 0x7FFFFFC0) != *(v16 + 382))
      {
        putspan_cold_2();
      }

      v17 = *(v16 + 380);
      v18 = *(v16 + 378);
      if (v8 < v18)
      {
        v19 = a1[145];
        v20 = v7;
        while (1)
        {
          if (v19 >= a1[141])
          {
            result = TIFFFlushData1(a1);
            if (!result)
            {
              return result;
            }
          }

          v7 = 0;
          v18 -= v8;
          v21 = a1[144];
          a1[144] = v21 + 1;
          *v21 = (v17 >> v18) | v20;
          v19 = a1[145] + 1;
          a1[145] = v19;
          v8 = 8;
          v20 = 0;
          if (v18 <= 8)
          {
            goto LABEL_23;
          }
        }
      }

      if (v18 >= 9)
      {
        putspan_cold_3();
      }

LABEL_23:
      v8 -= v18;
      v7 |= (_msbmask[v18] & v17) << v8;
      if (!v8)
      {
        if (a1[145] >= a1[141])
        {
          result = TIFFFlushData1(a1);
          if (!result)
          {
            return result;
          }
        }

        v22 = a1[144];
        a1[144] = v22 + 1;
        *v22 = v7;
        ++a1[145];
        v8 = 8;
        v7 = 0;
      }

      v4 -= *(v16 + 382);
    }

    v23 = (a3 + 6 * v4);
    v24 = v23[1];
    v25 = *v23;
    if (v8 >= v25)
    {
      if (v25 >= 9)
      {
        putspan_cold_4();
      }

LABEL_35:
      v29 = v8 - v25;
      v30 = ((_msbmask[v25] & v24) << (v8 - v25)) | v7;
      if (v8 == v25)
      {
        if (a1[145] >= a1[141])
        {
          result = TIFFFlushData1(a1);
          if (!result)
          {
            return result;
          }
        }

        v31 = a1[144];
        a1[144] = v31 + 1;
        *v31 = v30;
        ++a1[145];
        v29 = 8;
        v30 = 0;
      }

      *(v6 + 72) = v30;
      *(v6 + 76) = v29;
      return 1;
    }

    v26 = a1[145];
    v27 = v7;
    while (1)
    {
      if (v26 >= a1[141])
      {
        result = TIFFFlushData1(a1);
        if (!result)
        {
          break;
        }
      }

      v7 = 0;
      v25 -= v8;
      v28 = a1[144];
      a1[144] = v28 + 1;
      *v28 = (v24 >> v25) | v27;
      v26 = a1[145] + 1;
      a1[145] = v26;
      v8 = 8;
      v27 = 0;
      if (v25 <= 8)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    while (1)
    {
      v9 = *(a3 + 620);
      v10 = *(a3 + 618);
      if (v8 < v10)
      {
        break;
      }

      if (v10 >= 9)
      {
        putspan_cold_1();
      }

LABEL_9:
      v8 -= v10;
      v7 |= (_msbmask[v10] & v9) << v8;
      if (!v8)
      {
        if (a1[145] >= a1[141])
        {
          result = TIFFFlushData1(a1);
          if (!result)
          {
            return result;
          }
        }

        v15 = a1[144];
        a1[144] = v15 + 1;
        *v15 = v7;
        ++a1[145];
        v8 = 8;
        v7 = 0;
      }

      v4 -= *(a3 + 622);
      if (v4 <= 2623)
      {
        goto LABEL_14;
      }
    }

    v11 = a1[145];
    v12 = v7;
    while (1)
    {
      if (v11 >= a1[141])
      {
        result = TIFFFlushData1(a1);
        if (!result)
        {
          break;
        }
      }

      v7 = 0;
      v10 -= v8;
      v14 = a1[144];
      a1[144] = v14 + 1;
      *v14 = (v9 >> v10) | v12;
      v11 = a1[145] + 1;
      a1[145] = v11;
      v8 = 8;
      v12 = 0;
      if (v10 <= 8)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t Fax3PutBits(void *a1, unsigned int a2, unsigned int a3)
{
  v3 = a3;
  v6 = a1[137];
  v7 = *(v6 + 72);
  v8 = *(v6 + 76);
  if (v8 >= a3)
  {
    if (a3 >= 9)
    {
      Fax3PutBits_cold_1();
    }

LABEL_8:
    v14 = v8 - v3;
    v13 = v8 == v3;
    v15 = ((_msbmask[v3] & a2) << (v8 - v3)) | v7;
    if (v13)
    {
      if (a1[145] >= a1[141])
      {
        result = TIFFFlushData1(a1);
        if (!result)
        {
          return result;
        }
      }

      v16 = a1[144];
      a1[144] = v16 + 1;
      *v16 = v15;
      ++a1[145];
      v14 = 8;
      v15 = 0;
    }

    *(v6 + 72) = v15;
    *(v6 + 76) = v14;
    return 1;
  }

  v9 = a1[145];
  v10 = *(v6 + 72);
  while (1)
  {
    if (v9 >= a1[141])
    {
      result = TIFFFlushData1(a1);
      if (!result)
      {
        return result;
      }
    }

    v7 = 0;
    v3 -= v8;
    v12 = a1[144];
    a1[144] = v12 + 1;
    *v12 = (a2 >> v3) | v10;
    v9 = a1[145] + 1;
    a1[145] = v9;
    v8 = 8;
    LOBYTE(v10) = 0;
    if (v3 <= 8)
    {
      goto LABEL_8;
    }
  }
}

uint64_t IIO_CreateIdentityToken()
{
  if (gRunningInXPCService)
  {
    ImageIOLog("❌ ERROR: IIO_CreateIdentityToken should not be called from the ImageIOXPCService\n");
  }

  else if (IIO_CreateIdentityToken::onceToken != -1)
  {
    IIO_CreateIdentityToken_cold_1();
  }

  return IIO_CreateIdentityToken::clientTokenID;
}

xpc_object_t IIOProcessEvent(_xpc_connection_s *a1, void *a2)
{
  if (gRunningInXPCService != 1)
  {
    return 0;
  }

  source_dict = iio_xpc_get_source_dict(a2);
  uint64 = xpc_dictionary_get_uint64(a2, "iio_xpc_message_id");
  v6 = xpc_dictionary_get_uint64(a2, "iio_xpc_transacion_id");
  IIOXPCUpdatePermissions(a2);
  IIOXPCUpdateAllowableTypes(a2);
  if (!gClientPID)
  {
    gClientPID = xpc_dictionary_get_uint64(a2, "iio_xpc_msg_pid");
  }

  if (!gClientName)
  {
    string = xpc_dictionary_get_string(a2, "iio_xpc_msg_name");
    if (string)
    {
      gClientName = strdup(string);
    }
  }

  if (gIdentityToken)
  {
    if (source_dict)
    {
LABEL_9:
      v8 = xpc_dictionary_get_uint64(source_dict, "iio_xpc_src_ostype");
      goto LABEL_12;
    }
  }

  else
  {
    gIdentityToken = xpc_dictionary_copy_mach_send();
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], gIdentityToken, 0, 1);
    if (source_dict)
    {
      goto LABEL_9;
    }
  }

  v8 = 774778414;
LABEL_12:
  if (uint64 <= 3)
  {
    switch(uint64)
    {
      case 1:
        kdebug_trace();
        IIOXPCLog("➡️ XPC_READPLUGIN_IDENTIFY [%lld]\n", v6);
        ReaderHandler = IIO_ReaderHandler::GetReaderHandler(v20);
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 0x40000000;
        v37[2] = __IIOProcessEvent_block_invoke;
        v37[3] = &__block_descriptor_tmp_17_1;
        v37[4] = v6;
        v38 = v8;
        IIO_ReaderHandler::xpcTestHeader(ReaderHandler, a1, a2, v37);
        return 0;
      case 2:
        kdebug_trace();
        IIOXPCLog("➡️ XPC_READPLUGIN_IMAGECOUNT [%lld]\n", v6);
        v27 = IIO_ReaderHandler::GetReaderHandler(v26);
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 0x40000000;
        v35[2] = __IIOProcessEvent_block_invoke_2;
        v35[3] = &__block_descriptor_tmp_20;
        v35[4] = v6;
        v36 = v8;
        IIO_ReaderHandler::xpcGetImageCount(v27, a1, a2, v35);
        return 0;
      case 3:
        kdebug_trace();
        IIOXPCLog("➡️ XPC_READPLUGIN_SOURCEPROPERTIES [%lld]\n", v6);
        v13 = IIO_ReaderHandler::GetReaderHandler(v12);
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 0x40000000;
        v33[2] = __IIOProcessEvent_block_invoke_3;
        v33[3] = &__block_descriptor_tmp_23;
        v33[4] = v6;
        v34 = v8;
        IIO_ReaderHandler::xpcUpdateSourceProperties(v13, a1, a2, v33);
        return 0;
    }

LABEL_30:
    IIOXPCLog("🔺 message [%d] not handled...\n", uint64);
    return 0;
  }

  if (uint64 > 5)
  {
    if (uint64 == 6)
    {
      kdebug_trace();
      IIOXPCLog("➡️ XPC_READPLUGIN_DECODE_IMAGE [%lld]\n", v6);
      v25 = IIO_ReaderHandler::GetReaderHandler(v24);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 0x40000000;
      v29[2] = __IIOProcessEvent_block_invoke_5;
      v29[3] = &__block_descriptor_tmp_31;
      v29[4] = v6;
      v30 = v8;
      IIO_ReaderHandler::xpcDecodeImage(v25, a1, a2, v29);
      return 0;
    }

    if (uint64 == 8)
    {
      kdebug_trace();
      IIOXPCLog("➡️ XPC_READPLUGIN_WAKEUP [%lld]\n", v6);
      if (gRunningInXPCService == 1)
      {
        gIIODebugFlags = xpc_dictionary_get_uint64(a2, "iio_xpc_msg_debugflags");
        Current = CFAbsoluteTimeGetCurrent();
        if (IIO_ReaderHandler::GetReaderHandler(v15))
        {
          v16 = CFAbsoluteTimeGetCurrent();
          IIOXPCLog("    IIO_ReaderHandler::buildPluginList: %g ms\n", (v16 - Current) * 1000.0);
        }

        reply = xpc_dictionary_create_reply(a2);
        v10 = reply;
        if (reply)
        {
          v18 = iio_xpc_add_message_dict(reply);
          v19 = CFAbsoluteTimeGetCurrent();
          xpc_dictionary_set_double(v18, "iio_xpc_msg_wakeup_time", v19);
          iio_xpc_dictionary_set_error_code(v18, 0);
        }
      }

      else
      {
        v10 = 0;
      }

      IIOXPCLog("⬅️ XPC_READPLUGIN_WAKEUP [%lld]\n", v6);
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  if (uint64 != 4)
  {
    kdebug_trace();
    IIOXPCLog("➡️ XPC_READPLUGIN_DEBUG [%lld]\n", v6);
    v9 = xpc_dictionary_create_reply(a2);
    v10 = v9;
    if (v9)
    {
      v11 = iio_xpc_add_message_dict(v9);
      iio_xpc_dictionary_add_databuffer(v11, "iio_xpc_msg_call_counts", &gCallCounts, 0x30uLL);
    }

    IIOXPCLog("⬅️ XPC_READPLUGIN_DEBUG [%lld]\n", v6);
LABEL_38:
    kdebug_trace();
    return v10;
  }

  kdebug_trace();
  IIOXPCLog("➡️ XPC_READPLUGIN_INITIMAGE [%lld]\n", v6);
  v23 = IIO_ReaderHandler::GetReaderHandler(v22);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 0x40000000;
  v31[2] = __IIOProcessEvent_block_invoke_4;
  v31[3] = &__block_descriptor_tmp_26_0;
  v31[4] = v6;
  v32 = v8;
  IIO_ReaderHandler::xpcInitImage(v23, a1, a2, v31);
  return 0;
}

uint64_t __IIOProcessEvent_block_invoke(uint64_t a1, unsigned int *a2)
{
  IIOXPCLog("⬅️ XPC_READPLUGIN_IDENTIFY [%lld]\n", *(a1 + 32));

  return kdebug_trace();
}

uint64_t __IIOProcessEvent_block_invoke_2(uint64_t a1)
{
  IIOXPCLog("⬅️ XPC_READPLUGIN_IMAGECOUNT [%lld]\n", *(a1 + 32));

  return kdebug_trace();
}

uint64_t __IIOProcessEvent_block_invoke_3(uint64_t a1)
{
  IIOXPCLog("⬅️ XPC_READPLUGIN_SOURCEPROPERTIES [%lld]\n", *(a1 + 32));

  return kdebug_trace();
}

uint64_t __IIOProcessEvent_block_invoke_4(uint64_t a1)
{
  IIOXPCLog("⬅️ XPC_READPLUGIN_INITIMAGE [%lld]\n", *(a1 + 32));

  return kdebug_trace();
}

uint64_t __IIOProcessEvent_block_invoke_5(uint64_t a1)
{
  IIOXPCLog("⬅️ XPC_READPLUGIN_DECODE_IMAGE [%lld]\n", *(a1 + 32));

  return kdebug_trace();
}

void UpdateRunningInXPCService(uint64_t result, uint64_t a2)
{
  if (UpdateRunningInXPCService::onceToken != -1)
  {
    UpdateRunningInXPCService_cold_1();
  }
}

uint64_t IIO_Reader_ASTC::updateSourceProperties(__CFString ***this, IIOImageReadSession *a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  if (this[1] != kCGImageTypeIdentifierKTX)
  {
    return 4294967246;
  }

  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(this);
  v9 = *(*IIO_ReaderHandler::readerForType(ReaderHandler, 1263818784) + 56);

  return v9();
}

uint64_t IIO_Reader_ASTC::getImageCount(IIO_Reader_ASTC *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  v16 = 0;
  BytesAtOffset = IIOImageReadSession::getBytesAtOffset(a2, &v16, 0, 4);
  if (BytesAtOffset == 4 && v16 == 1554098963)
  {
    result = 0;
    if (a5)
    {
      *a5 = 1;
    }
  }

  else
  {
    v12 = *(this + 1);
    if (v12 == kCGImageTypeIdentifierKTX)
    {
      ReaderHandler = IIO_ReaderHandler::GetReaderHandler(BytesAtOffset);
      v14 = 1263818784;
    }

    else
    {
      if (v12 != kCGImageTypeIdentifierKTX2)
      {
        return 4294967246;
      }

      ReaderHandler = IIO_ReaderHandler::GetReaderHandler(BytesAtOffset);
      v14 = 1263818802;
    }

    v15 = IIO_ReaderHandler::readerForType(ReaderHandler, v14);
    return (*(*v15 + 32))(v15, a2, a3, a4, a5);
  }

  return result;
}

uint64_t IIOCreatePixelBufferWithIOSurfaceAndOptions(__IOSurface *a1)
{
  v10 = 0;
  if (a1)
  {
    v2 = gFunc_CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], a1, 0, &v10);
    if (v2)
    {
      v3 = v2;
      PixelFormat = IOSurfaceGetPixelFormat(a1);
      v5 = PixelFormat;
      v6 = PixelFormat >> 24;
      if ((PixelFormat >> 24) <= 0x7F)
      {
        v7 = *(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x40000;
      }

      else
      {
        v7 = __maskrune(PixelFormat >> 24, 0x40000uLL);
      }

      if (v7)
      {
        v8 = v6;
      }

      else
      {
        v8 = 46;
      }

      if ((v5 << 8 >> 24) > 0x7F)
      {
        __maskrune(v5 << 8 >> 24, 0x40000uLL);
      }

      if ((v5 >> 8) > 0x7F)
      {
        __maskrune(v5 >> 8, 0x40000uLL);
      }

      v5 = v5;
      if (v5 > 0x7F)
      {
        __maskrune(v5, 0x40000uLL);
      }

      IIOCMErrorString(v3);
      LogError("IIOCreatePixelBufferWithIOSurfaceAndOptions", 27, "*** ERROR: CVPixelBufferCreateWithIOSurface '%c%c%c%c' failed with: %d  (%s)\n", v8);
    }
  }

  else
  {
    LogError("IIOCreatePixelBufferWithIOSurfaceAndOptions", 31, "*** ERROR: CVPixelBufferCreateWithIOSurface failed - NULL-surface\n");
  }

  return v10;
}

uint64_t IIO_ConvertIOSurfaceToIOSurface(__IOSurface *a1, __IOSurface *a2)
{
  IIO_LoadHEIFSymbols();
  v4 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a1);
  if (!v4)
  {
    return 4294967292;
  }

  v5 = v4;
  v6 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a2);
  if (v6)
  {
    v8 = v6;
    v9 = IIO_ConvertPixelBufferToPixelBuffer(v5, v6);
    gFunc_CVPixelBufferRelease(v8, v10);
  }

  else
  {
    v9 = 4294967292;
  }

  gFunc_CVPixelBufferRelease(v5, v7);
  return v9;
}

uint64_t IIO_ConvertPixelBufferToPixelBuffer(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v4 = gFunc_VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &cf);
  if (!v4)
  {
    v4 = gFunc_VTPixelTransferSessionTransferImage(cf, a1, a2);
    CFRelease(cf);
  }

  return v4;
}

uint64_t IIOCreatePixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  IIO_LoadJPEGSymbols(a1, a2);
  v8 = gFunc_CVPixelBufferCreate(*MEMORY[0x1E695E480], a1, a2, a3, *(a4 + 8), &v10);
  if (v8)
  {
    IIOCMErrorString(v8);
    _cg_jpeg_mem_term("IIOCreatePixelBuffer", 94, "*** ERROR: CVPixelBufferCreate failed with: %d  (%s)\n");
  }

  return v10;
}

uint64_t IIOCreatePixelBufferWithBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = 0;
  IIO_LoadJPEGSymbols(a1, a2);
  v13 = gFunc_CVPixelBufferCreateWithBytes(*MEMORY[0x1E695E480], a1, a2, a4, a5, a3, IIOPixelBufferReleaseBytesCallback, 0, *(a7 + 8), &v15);
  if (v13)
  {
    IIOCMErrorString(v13);
    _cg_jpeg_mem_term("IIOCreatePixelBufferWithBuffer", 126, "*** ERROR: CVPixelBufferCreate failed with: %d  (%s)\n");
  }

  return v15;
}

uint64_t IIOPixelBufferGetAlpha(uint64_t a1)
{
  PixelFormatType = gFunc_CVPixelBufferGetPixelFormatType(a1);
  v3 = gFunc_CVBufferCopyAttachment(a1, *gIIO_kCVImageBufferAlphaChannelIsOpaque, 0);
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    v7 = v5 == CFBooleanGetTypeID() && v4 == *MEMORY[0x1E695E4D0];
    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = gFunc_CVBufferCopyAttachment(a1, *gIIO_kCVImageBufferAlphaChannelModeKey, 0);
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v4);
    if (v10 == CFStringGetTypeID())
    {
      v11 = CFStringCompare(v9, *gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha, 0);
      if (CFStringCompare(v9, *gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha, 0))
      {
        v12 = 0;
      }

      else
      {
        v12 = 3;
      }

      if (v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    v13 = 0;
  }

  result = 0;
  if (PixelFormatType > 2019963439)
  {
    v15 = PixelFormatType == 2019963440 || PixelFormatType == 2019963442;
    v16 = 2019963956;
  }

  else
  {
    v15 = PixelFormatType == 875704422 || PixelFormatType == 875704934;
    v16 = 875836518;
  }

  if (!v15 && PixelFormatType != v16)
  {
    if (v7)
    {
      return 5;
    }

    else
    {
      return v13;
    }
  }

  return result;
}

uint64_t IIOPixelBufferSetAlpha(uint64_t a1, int a2)
{
  v4 = MEMORY[0x1E695E4C0];
  if (a2 == 5)
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  result = gFunc_CVBufferSetAttachment(a1, *gIIO_kCVImageBufferAlphaChannelIsOpaque, *v4, 1);
  if (a2 == 1)
  {
    v6 = &gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha;
  }

  else
  {
    if (a2 != 3)
    {
      return result;
    }

    v6 = &gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha;
  }

  if (**v6)
  {
    v7 = gFunc_CVBufferSetAttachment;
    v8 = *gIIO_kCVImageBufferAlphaChannelModeKey;

    return v7(a1, v8);
  }

  return result;
}

void ImageIO_dumpImageData(const char *a1, const void *a2)
{
  ImageIOLog("⭕️  dumping image-%04ld to file '%s'\n", gFileIndex, a1);
  CFShow(a2);
  v6 = 0;
  v4 = getpid();
  v5 = gFileIndex++;
  asprintf(&v6, "*/IIO-%d-%04ld-%s.br2", v4, v5, a1);
  CGImageDumpToFile();
  free(v6);
}

void ImageIO_saveImageData(const char *a1, CFDataRef theData)
{
  if (!theData)
  {
    return;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  __filename = 0;
  if (Length < 21)
  {
    return;
  }

  v6 = Length;
  v7 = *BytePtr;
  if (v7 > 0x4C)
  {
    if (*BytePtr > 0x88u)
    {
      if (v7 == 137)
      {
        if (BytePtr[1] == 80 && BytePtr[2] == 78 && BytePtr[3] == 71)
        {
          v8 = "png";
          goto LABEL_78;
        }
      }

      else if (v7 == 255 && BytePtr[1] == 216 && BytePtr[2] == 255)
      {
        v8 = "jpg";
        goto LABEL_78;
      }
    }

    else
    {
      if (v7 == 77)
      {
        if (BytePtr[1] != 77)
        {
          goto LABEL_45;
        }

        goto LABEL_36;
      }

      if (v7 == 105 && BytePtr[1] == 99 && BytePtr[2] == 110 && BytePtr[3] == 115)
      {
        v8 = "icns";
        goto LABEL_78;
      }
    }

LABEL_45:
    v9 = BytePtr[4];
    if (v9 == 102 && BytePtr[5] == 116)
    {
      if (BytePtr[6] == 121 && BytePtr[7] == 112 && BytePtr[8] == 104 && BytePtr[9] == 101 && BytePtr[10] == 105 && BytePtr[11] == 99)
      {
        v8 = "heic";
        goto LABEL_78;
      }

      if (BytePtr[6] == 121 && BytePtr[7] == 112 && BytePtr[8] == 109 && BytePtr[9] == 115 && BytePtr[10] == 102 && BytePtr[11] == 49)
      {
        v8 = "heics";
        goto LABEL_78;
      }
    }

    if (v7 == 171 && BytePtr[1] == 75 && BytePtr[2] == 84 && BytePtr[3] == 88)
    {
      v8 = "KTX";
    }

    else if (v9 == 74 && BytePtr[5] == 88 && BytePtr[6] == 76 && BytePtr[7] == 32)
    {
      v8 = "JXL";
    }

    else if (v7 == 65 && BytePtr[1] == 65)
    {
      v8 = "data";
      if (BytePtr[2] == 80 && BytePtr[3] == 76)
      {
        v8 = "ATX";
      }
    }

    else
    {
      v8 = "data";
    }

    goto LABEL_78;
  }

  if (*BytePtr > 0x46u)
  {
    if (v7 == 71)
    {
      if (BytePtr[1] == 73 && BytePtr[2] == 70 && BytePtr[3] == 56)
      {
        v8 = "gif";
        goto LABEL_78;
      }

      goto LABEL_45;
    }

    if (v7 != 73 || BytePtr[1] != 73)
    {
      goto LABEL_45;
    }

LABEL_36:
    v8 = "tif";
    goto LABEL_78;
  }

  if (!*BytePtr)
  {
    if (!BytePtr[1] && !BytePtr[2] && BytePtr[3] == 12 && BytePtr[4] == 106 && BytePtr[5] == 80 && BytePtr[8] == 13 && BytePtr[9] == 10)
    {
      v8 = "jp2";
      goto LABEL_78;
    }

    goto LABEL_45;
  }

  if (v7 != 56 || BytePtr[1] != 66 || BytePtr[2] != 80 || BytePtr[3] != 83)
  {
    goto LABEL_45;
  }

  v8 = "psd";
LABEL_78:
  v10 = ImageIOTempDirPath();
  v11 = getpid();
  v12 = gFileIndex++;
  asprintf(&__filename, "%s/IIO-%d-%04ld-%s.%s", v10, v11, v12, a1, v8);
  ImageIOLog("⭕️  writing imagedata to '%s'\n", __filename);
  v13 = fopen(__filename, "w");
  if (v13)
  {
    v14 = v13;
    CFLog();
    fwrite(BytePtr, v6, 1uLL, v14);
    fclose(v14);
  }

  else
  {
    __error();
    v15 = __error();
    strerror(*v15);
    CFLog();
  }

  free(__filename);
}

uint64_t ImageIOTempDirPath()
{
  v2 = *MEMORY[0x1E69E9840];
  result = ImageIOTempDirPath::tempDirPath;
  if (!ImageIOTempDirPath::tempDirPath)
  {
    bzero(v1, 0x400uLL);
    if (confstr(65537, v1, 0x400uLL))
    {
      asprintf(&ImageIOTempDirPath::tempDirPath, "%s", v1);
    }

    return ImageIOTempDirPath::tempDirPath;
  }

  return result;
}

uint64_t IIO_HardwareEncoderDefaultValue(uint64_t a1, uint64_t a2)
{
  if (IIO_HardwareEncoderDefaultValue::onceToken != -1)
  {
    IIO_HardwareEncoderDefaultValue_cold_1();
  }

  return IIO_HardwareEncoderDefaultValue::hwEncoderDefaultValue;
}

void sub_186048CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

__int128 *CGGetImageIOVersion()
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGGetImageIOVersion", 0, 0, -1, 0);
  }

  if (CGGetImageIOVersion::onceToken != -1)
  {
    CGGetImageIOVersion_cold_1();
  }

  return &CGGetImageIOVersion::gIIOVersion;
}

void __CGGetImageIOVersion_block_invoke()
{
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.ImageIO");
  if (BundleWithIdentifier)
  {
    ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(BundleWithIdentifier, *MEMORY[0x1E695E500]);
  }

  else
  {
    ValueForInfoDictionaryKey = 0;
  }

  IIOString::IIOString(v4, ValueForInfoDictionaryKey);
  v2 = IIOString::utf8String(v4);
  MEMORY[0x186602520](__p, v2);
  IIOString::~IIOString(v4);
  if (v6 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  snprintf(&CGGetImageIOVersion::gIIOVersion, 0x40uLL, "%s", v3);
  if (!CGGetImageIOVersion::gIIOVersion)
  {
    CGGetImageIOVersion::gIIOVersion = *"unknown";
    unk_1EA8DBB68 = unk_18620BCAA;
    xmmword_1EA8DBB78 = xmmword_18620BCBA;
    unk_1EA8DBB88 = unk_18620BCCA;
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_186048E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  IIOString::~IIOString(&a11);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void TIFFCleanup(uint64_t a1)
{
  if (*(a1 + 12))
  {
    TIFFFlush(a1);
  }

  (*(a1 + 1072))(a1);
  _cg_TIFFFreeDirectory(a1);
  _TIFFCleanupIFDOffsetAndNumberMaps(a1);
  while (1)
  {
    v2 = *(a1 + 1304);
    if (!v2)
    {
      break;
    }

    *(a1 + 1304) = *v2;
    free(v2[2]);
    free(v2);
  }

  v3 = *(a1 + 1120);
  if (v3 && (*(a1 + 17) & 2) != 0)
  {
    free(v3);
  }

  if ((*(a1 + 17) & 8) != 0)
  {
    (*(a1 + 1192))(*(a1 + 1200), *(a1 + 1168), *(a1 + 1176));
  }

  if (*(a1 + 1256) && *(a1 + 1264))
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(*(a1 + 1256) + 8 * v4);
      if (*(v6 + 32) && *(v6 + 24) == 65 && TIFFFieldIsAnonymous(v6))
      {
        free(*(v6 + 32));
        free(v6);
      }

      v4 = v5;
      v7 = *(a1 + 1264) > v5++;
    }

    while (v7);
    free(*(a1 + 1256));
  }

  v8 = *(a1 + 1320);
  if (v8)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = *(a1 + 1312) + 24 * v9;
      if (*(v11 + 4))
      {
        free(*(v11 + 16));
        v8 = *(a1 + 1320);
      }

      v9 = v10;
      v7 = v8 > v10++;
    }

    while (v7);
    free(*(a1 + 1312));
  }

  if (*(a1 + 1376))
  {
    TIFFErrorExtR(a1, "TIFFCleanup", "tif_cur_cumulated_mem_alloc = %llu whereas it should be 0", *(a1 + 1376));
  }

  free(a1);
}

void _TIFFCleanupIFDOffsetAndNumberMaps(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    TIFFHashSetDestroy(v2);
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    TIFFHashSetDestroy(v3);
    *(a1 + 56) = 0;
  }
}

uint64_t _cg_TIFFClose(uint64_t result)
{
  if (result)
  {
    v2 = *(result + 1232);
    v1 = *(result + 1200);
    TIFFCleanup(result);

    return v2(v1);
  }

  return result;
}

__int128 *GetPBMLookupTable(uint64_t a1, uint64_t a2)
{
  if (GetPBMLookupTable(void)::onceToken != -1)
  {
    GetPBMLookupTable();
  }

  return &gPBMLookupTable;
}

double ___Z17GetPBMLookupTablev_block_invoke()
{
  *&v0 = -1;
  *(&v0 + 1) = -1;
  xmmword_1EA8E2558 = v0;
  unk_1EA8E2568 = v0;
  xmmword_1EA8E2538 = v0;
  unk_1EA8E2548 = v0;
  xmmword_1EA8E2518 = v0;
  unk_1EA8E2528 = v0;
  xmmword_1EA8E24F8 = v0;
  unk_1EA8E2508 = v0;
  xmmword_1EA8E24D8 = v0;
  unk_1EA8E24E8 = v0;
  xmmword_1EA8E24B8 = v0;
  unk_1EA8E24C8 = v0;
  xmmword_1EA8E2498 = v0;
  *&qword_1EA8E24A8 = v0;
  gPBMLookupTable = v0;
  unk_1EA8E2488 = v0;
  BYTE3(xmmword_1EA8E2498) = -2;
  BYTE13(gPBMLookupTable) = -3;
  *(&gPBMLookupTable + 9) = -771;
  LOBYTE(xmmword_1EA8E2498) = -3;
  BYTE13(xmmword_1EA8E2498) = 45;
  result = 7.9499289e-275;
  qword_1EA8E24A8 = 0x706050403020100;
  word_1EA8E24B0 = 2312;
  return result;
}

uint64_t png_write_PLTE(uint64_t a1, __int16 *a2, unint64_t a3, unsigned int a4)
{
  v4 = a4;
  v8 = *(a1 + 431);
  if (v8 != 3)
  {
    if (a4 <= 0x100 && *(a1 + 912) & 1 | a4)
    {
      if ((v8 & 2) != 0)
      {
        goto LABEL_11;
      }

      v10 = "Ignoring request to write a PLTE chunk in grayscale PNG";
    }

    else
    {
      v10 = "Invalid number of colors in palette";
    }

    return png_warning(a1, v10);
  }

  if (*(a1 + 912) & 1 | a4)
  {
    v9 = 1 << *(a1 + 432) >= a4;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    _cg_png_error(a1, "Invalid number of colors in palette");
  }

LABEL_11:
  v15 = 0;
  v14 = 0;
  *(a1 + 416) = a4;
  result = _cg_png_write_chunk_header(a1, 1347179589, 3 * a4);
  if (v4)
  {
    v12 = a2;
    while (v12 >= a2)
    {
      v13 = (v12 + 3);
      if (v12 + 3 > a3)
      {
        break;
      }

      v14 = *v12;
      v15 = *(v12 + 2);
      result = _cg_png_write_chunk_data(a1, &v14, 3);
      v12 = v13;
      if (!--v4)
      {
        goto LABEL_16;
      }
    }

    __break(0x5519u);
  }

  else
  {
LABEL_16:
    result = _cg_png_write_chunk_end(a1);
    *(a1 + 76) |= 2u;
  }

  return result;
}

uint64_t png_write_fdAT(uint64_t a1, Bytef *a2, uint64_t a3)
{
  _cg_png_write_chunk_header(a1, 1717846356, a3 + 4);
  v7 = bswap32(*(a1 + 924));
  _cg_png_write_chunk_data(a1, &v7, 4);
  _cg_png_write_chunk_data(a1, a2, a3);
  result = _cg_png_write_chunk_end(a1);
  ++*(a1 + 924);
  return result;
}

uint64_t png_write_sPLT(void (**a1)(void), uint64_t a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  memset(v24, 0, sizeof(v24));
  v23 = 0;
  v22 = 0;
  v4 = (a2 + 16);
  if (*(a2 + 16) == 8)
  {
    v5 = 6;
  }

  else
  {
    v5 = 10;
  }

  v6 = *(a2 + 32);
  v7 = png_check_keyword(a1, *a2, v24, v25);
  if (!v7)
  {
LABEL_22:
    _cg_png_error(a1, "sPLT: invalid keyword");
  }

  v8 = v7;
  _cg_png_write_chunk_header(a1, 1934642260, v7 + v6 * v5 + 2);
  v9 = (v8 + 1);
  if (v9 > 0x50)
  {
LABEL_21:
    __break(0x5519u);
    goto LABEL_22;
  }

  _cg_png_write_chunk_data(a1, v24, v9);
  _cg_png_write_chunk_data(a1, v4, 1);
  v10 = *(a2 + 24);
  v11 = v10 + 10 * *(a2 + 32);
  if (v10 < v11)
  {
    v12 = *(a2 + 24);
    do
    {
      v13 = (v12 + 5);
      v15 = v10 <= v12 && v13 <= v11;
      if (*v4 == 8)
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        LOBYTE(v22) = *v12;
        BYTE1(v22) = *(v12 + 2);
        BYTE2(v22) = *(v12 + 4);
        v16 = v12[3];
        v17 = &v22 + 2;
        v18 = &v22 + 3;
        v19 = &v22 + 5;
      }

      else
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        LOWORD(v22) = bswap32(*v12) >> 16;
        WORD1(v22) = bswap32(v12[1]) >> 16;
        WORD2(v22) = bswap32(v12[2]) >> 16;
        v16 = v12[3];
        BYTE6(v22) = HIBYTE(v16);
        v18 = &v22 + 7;
        v17 = &v23;
        v19 = &v23 + 1;
      }

      *v18 = v16;
      v20 = v12[4];
      *v17 = HIBYTE(v20);
      *v19 = v20;
      _cg_png_write_chunk_data(a1, &v22, v5);
      v12 = v13;
    }

    while (v13 < *(a2 + 24) + 10 * *(a2 + 32));
  }

  return _cg_png_write_chunk_end(a1);
}

void (**png_write_sBIT(uint64_t a1, unsigned __int8 *a2, int a3))(void)
{
  v11 = 0;
  if ((a3 & 2) != 0)
  {
    if (a3 == 3)
    {
      v4 = 8;
    }

    else
    {
      v4 = *(a1 + 433);
    }

    if (*a2)
    {
      v5 = v4 >= *a2;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      goto LABEL_13;
    }

    v7 = a2[1];
    if (!a2[1])
    {
      goto LABEL_13;
    }

    if (v4 < v7)
    {
      goto LABEL_13;
    }

    v8 = a2[2];
    if (!a2[2] || v4 < v8)
    {
      goto LABEL_13;
    }

    LOBYTE(v11) = *a2;
    BYTE1(v11) = v7;
    v3 = 3;
    BYTE2(v11) = v8;
    if ((a3 & 4) == 0)
    {
      return _cg_png_write_complete_chunk(a1, 1933723988, &v11, v3);
    }
  }

  else
  {
    if (!a2[3] || a2[3] > *(a1 + 433))
    {
      goto LABEL_13;
    }

    LOBYTE(v11) = a2[3];
    v3 = 1;
    if ((a3 & 4) == 0)
    {
      return _cg_png_write_complete_chunk(a1, 1933723988, &v11, v3);
    }
  }

  v9 = a2[4];
  if (a2[4] && v9 <= *(a1 + 433))
  {
    v10 = (&v11 | v3++);
    *v10 = v9;
    return _cg_png_write_complete_chunk(a1, 1933723988, &v11, v3);
  }

LABEL_13:

  return png_warning(a1, "Invalid sBIT depth specified");
}

void (**png_write_cHRM_fixed(void (**a1)(void), unsigned int *a2))(void)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 0u;
  v6 = 0u;
  png_save_int_32(&v5, a2[6]);
  png_save_int_32(&v5 + 1, a2[7]);
  png_save_int_32(&v5 + 2, *a2);
  png_save_int_32((&v5 | 0xC), a2[1]);
  png_save_int_32(&v6, a2[2]);
  png_save_int_32(&v6 + 1, a2[3]);
  png_save_int_32(&v6 + 2, a2[4]);
  png_save_int_32(&v6 + 3, a2[5]);
  return _cg_png_write_complete_chunk(a1, 1665684045, &v5, 0x20uLL);
}

void (**png_write_tRNS(void (**result)(void), Bytef *a2, Bytef *a3, unsigned __int16 *a4, int a5, int a6))(void)
{
  v17 = 0;
  v16 = 0;
  if (!a6)
  {
    v15 = a4[4];
    if (1 << *(result + 432) <= v15)
    {
      v6 = "Ignoring attempt to write tRNS chunk out-of-range for bit_depth";
      goto LABEL_18;
    }

    LOWORD(v16) = __rev16(v15);
    v14 = 2;
    return _cg_png_write_complete_chunk(result, 1951551059, &v16, v14);
  }

  if (a6 == 2)
  {
    v7 = a4[1];
    v8 = v7 >> 8;
    LOWORD(v16) = __rev16(v7);
    v9 = a4[2];
    v10 = v9 >> 8;
    HIWORD(v16) = __rev16(v9);
    v11 = a4[3];
    v17 = __rev16(v11);
    v12 = v10 | v8 | (v11 >> 8);
    if (*(result + 432) == 8 && v12 != 0)
    {
      v6 = "Ignoring attempt to write 16-bit tRNS chunk when bit_depth is 8";
      goto LABEL_18;
    }

    v14 = 6;
    return _cg_png_write_complete_chunk(result, 1951551059, &v16, v14);
  }

  if (a6 != 3)
  {
    v6 = "Can't write tRNS with an alpha channel";
    goto LABEL_18;
  }

  if (a5 < 1 || *(result + 208) < a5)
  {
    v6 = "Invalid number of transparent colors specified";
LABEL_18:

    return png_app_warning(result, v6);
  }

  if (a3 < a2 || a3 - a2 < a5)
  {
    __break(0x5519u);
  }

  else
  {

    return _cg_png_write_complete_chunk(result, 1951551059, a2, a5);
  }

  return result;
}

void (**png_write_bKGD(uint64_t a1, unsigned __int8 *a2, int a3))(void)
{
  v16 = 0;
  v15 = 0;
  if (a3 != 3)
  {
    if ((a3 & 2) != 0)
    {
      v7 = *(a2 + 1);
      v8 = v7 >> 8;
      LOWORD(v15) = __rev16(v7);
      v9 = *(a2 + 2);
      v10 = v9 >> 8;
      HIWORD(v15) = __rev16(v9);
      v11 = *(a2 + 3);
      v16 = __rev16(v11);
      v12 = v10 | v8 | (v11 >> 8);
      if (*(a1 + 432) == 8 && v12 != 0)
      {
        v4 = "Ignoring attempt to write 16-bit bKGD chunk when bit_depth is 8";
        goto LABEL_19;
      }

      v6 = 6;
    }

    else
    {
      v5 = *(a2 + 4);
      if (1 << *(a1 + 432) <= v5)
      {
        v4 = "Ignoring attempt to write bKGD chunk out-of-range for bit_depth";
        goto LABEL_19;
      }

      LOWORD(v15) = __rev16(v5);
      v6 = 2;
    }

    return _cg_png_write_complete_chunk(a1, 1649100612, &v15, v6);
  }

  if (!*(a1 + 416) && (*(a1 + 912) & 1) != 0)
  {
    LOBYTE(v3) = *a2;
    goto LABEL_17;
  }

  v3 = *a2;
  if (*(a1 + 416) > v3)
  {
LABEL_17:
    LOBYTE(v15) = v3;
    v6 = 1;
    return _cg_png_write_complete_chunk(a1, 1649100612, &v15, v6);
  }

  v4 = "Invalid background palette index";
LABEL_19:

  return png_warning(a1, v4);
}

uint64_t png_write_hIST(uint64_t a1, unsigned __int16 *a2, int a3)
{
  if (*(a1 + 416) >= a3)
  {
    LODWORD(v5) = a3;
    v9 = 0;
    v8 = 0;
    _cg_png_write_chunk_header(a1, 1749635924, 2 * a3);
    if (v5 >= 1)
    {
      v5 = v5;
      do
      {
        v7 = *a2++;
        v8 = bswap32(v7) >> 16;
        _cg_png_write_chunk_data(a1, &v8, 2);
        --v5;
      }

      while (v5);
    }

    return _cg_png_write_chunk_end(a1);
  }

  else
  {

    return png_warning(a1, "Invalid number of histogram entries specified");
  }
}

uint64_t png_write_tEXt(void (**a1)(void), char *a2, uint64_t a3, char *a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  memset(v13, 0, sizeof(v13));
  v6 = png_check_keyword(a1, a2, v13, v14);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  if (a4 && *a4)
  {
    v8 = strlen(a4);
    if (v8 > (2147483646 - v7))
    {
      v9 = "tEXt: text too long";
      goto LABEL_15;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = (v7 + 1);
  _cg_png_write_chunk_header(a1, 1950701684, v10 + v8);
  if (v10 > 0x50)
  {
LABEL_13:
    __break(0x5519u);
LABEL_14:
    v9 = "tEXt: invalid keyword";
LABEL_15:
    _cg_png_error(a1, v9);
  }

  _cg_png_write_chunk_data(a1, v13, v10);
  if (v8)
  {
    v11 = strlen(a4) + 1;
    if (&a4[v11] >= a4 && v8 <= v11)
    {
      _cg_png_write_chunk_data(a1, a4, v8);
      return _cg_png_write_chunk_end(a1);
    }

    goto LABEL_13;
  }

  return _cg_png_write_chunk_end(a1);
}

uint64_t png_write_zTXt(uint64_t a1, char *a2, uint64_t a3, char *a4, int a5)
{
  *&v22[7] = *MEMORY[0x1E69E9840];
  bzero(v19, 0x418uLL);
  if (!a5)
  {
    memset(v21, 0, sizeof(v21));
    v11 = png_check_keyword(a1, a2, v21, v22);
    if (v11)
    {
      v12 = v11;
      v13 = &v21[v11 + 1];
      if (v13 >= v22 || v13 < v21)
      {
        goto LABEL_19;
      }

      *v13 = 0;
      v15 = &a4[strlen(a4) + 1];
      v16 = a4 ? strlen(a4) : 0;
      if (v15 < a4 || v16 > v15 - a4)
      {
        goto LABEL_19;
      }

      v17 = (v12 + 2);
      v19[0] = a4;
      v19[1] = v16;
      v20 = 0;
      if (!png_text_compress(a1, 2052348020, v19, v17))
      {
        _cg_png_write_chunk_header(a1, 2052348020, v20 + v17);
        if (v17 <= 0x51)
        {
          _cg_png_write_chunk_data(a1, v21, v17);
          png_write_compressed_data_out(a1, v19);
          return _cg_png_write_chunk_end(a1);
        }

LABEL_19:
        __break(0x5519u);
      }

      v18 = *(a1 + 144);
    }

    else
    {
      v18 = "zTXt: invalid keyword";
    }

LABEL_23:
    _cg_png_error(a1, v18);
  }

  if (a5 != -1)
  {
    v18 = "zTXt: invalid compression type";
    goto LABEL_23;
  }

  return png_write_tEXt(a1, a2, a3, a4);
}

uint64_t png_write_iTXt(uint64_t a1, int a2, char *a3, uint64_t a4, char *a5, char *a6, char *a7)
{
  *&v38[6] = *MEMORY[0x1E69E9840];
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  bzero(v34, 0x418uLL);
  v13 = png_check_keyword(a1, a3, v36, v38);
  if (!v13)
  {
    goto LABEL_51;
  }

  if (a2 > 0)
  {
    if (a2 == 2)
    {
      goto LABEL_13;
    }

    if (a2 != 1)
    {
LABEL_54:
      v33 = "iTXt: invalid compression";
LABEL_55:
      _cg_png_error(a1, v33);
    }

LABEL_8:
    v14 = (v13 + 1);
    if (&v36[v14] < v38 && &v36[v14] >= v36)
    {
      v36[v14] = 0;
      v16 = 1;
      goto LABEL_18;
    }

LABEL_50:
    __break(0x5519u);
LABEL_51:
    v33 = "iTXt: invalid keyword";
    goto LABEL_55;
  }

  if (a2 == -1)
  {
    goto LABEL_8;
  }

  if (a2)
  {
    goto LABEL_54;
  }

LABEL_13:
  v14 = (v13 + 1);
  if (&v36[v14] >= v38 || &v36[v14] < v36)
  {
    goto LABEL_50;
  }

  v16 = 0;
  v36[v14] = 1;
LABEL_18:
  v18 = &v36[(v14 + 1)];
  if (v18 >= v38 || v18 < v36)
  {
    goto LABEL_50;
  }

  *v18 = 0;
  v19 = (v14 + 2);
  if (a5)
  {
    v20 = a5;
  }

  else
  {
    v20 = "";
  }

  v21 = strlen(v20) + 1;
  if (!a6)
  {
    a6 = "";
  }

  v22 = strlen(a6) + 1;
  if (!a7)
  {
    a7 = "";
  }

  v23 = v19 + v21;
  if (v21 > (2147483645 - v14))
  {
    v23 = 0x7FFFFFFF;
  }

  v24 = v23 ^ 0x7FFFFFFFu;
  v25 = v23 + v22;
  v26 = v22 <= v24 ? v25 : 0x7FFFFFFF;
  v27 = strlen(a7) + 1;
  v28 = strlen(a7);
  if ((v27 & 0x8000000000000000) != 0 || v28 > v27)
  {
    goto LABEL_50;
  }

  v34[0] = a7;
  v34[1] = v28;
  v35 = 0;
  if (v16)
  {
    if (v28 > (v26 ^ 0x7FFFFFFFu))
    {
      v33 = "iTXt: uncompressed text too long";
      goto LABEL_55;
    }

    v35 = v28;
  }

  else
  {
    if (png_text_compress(a1, 1767135348, v34, v26))
    {
      v33 = *(a1 + 144);
      goto LABEL_55;
    }

    LODWORD(v28) = v35;
  }

  _cg_png_write_chunk_header(a1, 1767135348, v28 + v26);
  if (v19 > 0x52)
  {
    goto LABEL_50;
  }

  _cg_png_write_chunk_data(a1, v36, v19);
  v29 = strlen(v20) + 1;
  if (v29 < 0)
  {
    goto LABEL_50;
  }

  if (v21 > v29)
  {
    goto LABEL_50;
  }

  _cg_png_write_chunk_data(a1, v20, v21);
  v30 = strlen(a6) + 1;
  if (v30 < 0 || v22 > v30)
  {
    goto LABEL_50;
  }

  _cg_png_write_chunk_data(a1, a6, v22);
  if ((v16 & 1) == 0)
  {
    png_write_compressed_data_out(a1, v34);
    return _cg_png_write_chunk_end(a1);
  }

  v31 = strlen(a7) + 1;
  if (v31 < 0 || v31 < v35)
  {
    goto LABEL_50;
  }

  _cg_png_write_chunk_data(a1, a7, v35);
  return _cg_png_write_chunk_end(a1);
}

void (**png_write_oFFs(void (**a1)(void), uint64_t a2, uint64_t a3, int a4))(void)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v11 = *MEMORY[0x1E69E9840];
  if (a4 >= 2)
  {
    png_warning(a1, "Unrecognized unit type for oFFs chunk");
  }

  v10 = 0;
  v9 = 0;
  png_save_int_32(&v9, v6);
  png_save_int_32(&v9 + 1, v5);
  v10 = v4;
  return _cg_png_write_complete_chunk(a1, 1866876531, &v9, 9uLL);
}

uint64_t png_write_pCAL(void (**a1)(void), char *a2, unsigned int a3, unsigned int a4, int a5, unsigned int a6, char *a7, Bytef **a8)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a5 >= 4)
  {
    goto LABEL_30;
  }

  v12 = a5;
  v45 = 0;
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v15 = png_check_keyword(a1, a2, v43, &v44);
  if (!v15)
  {
    v35 = "pCAL: invalid keyword";
LABEL_32:
    _cg_png_error(a1, v35);
  }

  v36 = a3;
  v37 = a4;
  v38 = v12;
  v16 = (v15 + 1);
  __s = a7;
  v17 = strlen(a7);
  if (a6)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = v17;
  }

  v39 = v18;
  v42 = v16;
  v19 = v16 + v18 + 10;
  v20 = png_malloc(a1, 8 * a6);
  v21 = v20;
  if (v20)
  {
    v22 = &v20[a6];
  }

  else
  {
    v22 = 0;
  }

  v23 = a6;
  v41 = a6;
  v24 = a6 - 1;
  if (a6 >= 1)
  {
    v25 = a6;
    v26 = a8;
    v27 = v20;
    while (v27 >= v21 && (v27 + 1) <= v22 && v27 <= v27 + 1)
    {
      v28 = *v26++;
      v29 = strlen(v28);
      v30 = v24-- != 0;
      if (v30)
      {
        v31 = v29 + 1;
      }

      else
      {
        v31 = v29;
      }

      *v27++ = v31;
      v19 += v29 + v30;
      if (!--v25)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_29;
  }

LABEL_18:
  _cg_png_write_chunk_header(a1, 1883455820, v19);
  if (v42 > 0x50 || (_cg_png_write_chunk_data(a1, v43, v42), png_save_int_32(&v44, v36), png_save_int_32(&v44 + 1, v37), LOBYTE(v45) = v38, HIBYTE(v45) = v41, _cg_png_write_chunk_data(a1, &v44, 10), v32 = strlen(__s) + 1, &__s[v32] < __s) || v39 > v32)
  {
LABEL_29:
    __break(0x5519u);
LABEL_30:
    v35 = "Unrecognized equation type for pCAL chunk";
    goto LABEL_32;
  }

  _cg_png_write_chunk_data(a1, __s, v39);
  if (v41 >= 1)
  {
    v33 = v21;
    while (v33 >= v21 && (v33 + 1) <= v22 && v33 <= v33 + 1 && *a8 <= &(*a8)[*v33])
    {
      _cg_png_write_chunk_data(a1, *a8++, *v33++);
      if (!--v23)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_29;
  }

LABEL_28:
  png_free(a1, v21);
  return _cg_png_write_chunk_end(a1);
}

void (**png_write_sCAL_s(void (**a1)(void), Bytef a2, char *__s, const char *a4))(void)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = strlen(__s);
  v9 = strlen(a4);
  v10 = v8 + v9 + 2;
  if (v10 < 0x41)
  {
    v12 = v9;
    memset(&v18[1], 0, 63);
    v18[0] = a2;
    v13 = strlen(__s) + 1;
    if (&__s[v13] < __s || (v14 = v8 + 1, v8 + 1 > v13) || v14 > 0x3F || (v15 = __memcpy_chk(), v15 > v15 + v14) || (v16 = &v18[v8 + 2], v17 = strlen(a4), v18 > v16) || &a4[v17 + 1] < a4 || v12 > v17 + 1 || v16 > &v19 || v12 > &v19 - v16 || (memcpy(v16, a4, v12), v16 > &v16[v12]))
    {
      __break(0x5519u);
    }

    return _cg_png_write_complete_chunk(a1, 1933787468, v18, v10);
  }

  else
  {

    return png_warning(a1, "Can't write sCAL (buffer too small)");
  }
}

void (**png_write_tIME(void (**a1)(void), unsigned __int16 *a2))(void)
{
  v4 = *(a2 + 2);
  if ((v4 - 13) >= 0xFFFFFFF4 && (v5 = *(a2 + 3), (v5 - 32) >= 0xFFFFFFE1) && (v6 = *(a2 + 4), v6 <= 0x17) && (v7 = *(a2 + 6), v7 < 0x3D))
  {
    v11 = v2;
    v12 = v3;
    v9 = *a2;
    v10[0] = HIBYTE(*a2);
    v10[1] = v9;
    v10[2] = v4;
    v10[3] = v5;
    v10[4] = v6;
    v10[5] = *(a2 + 5);
    v10[6] = v7;
    return _cg_png_write_complete_chunk(a1, 1950960965, v10, 7uLL);
  }

  else
  {

    return png_warning(a1, "Invalid time specified for tIME chunk");
  }
}

void (**png_write_acTL(uint64_t a1, int a2, int a3))(void)
{
  v6 = *MEMORY[0x1E69E9840];
  *(a1 + 960) = a2;
  v3 = a2 - (*(a1 + 920) & 1);
  v5[0] = HIBYTE(v3);
  v5[1] = BYTE2(v3);
  v5[2] = BYTE1(v3);
  v5[3] = v3;
  v5[4] = HIBYTE(a3);
  v5[5] = BYTE2(a3);
  v5[6] = BYTE1(a3);
  v5[7] = a3;
  return _cg_png_write_complete_chunk(a1, 1633899596, v5, 8uLL);
}

void (**png_write_fcTL(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, Bytef a8, unsigned __int8 a9))(void)
{
  v10 = a7;
  v11 = a6;
  v22 = *MEMORY[0x1E69E9840];
  v17 = *(a1 + 964);
  if (a5 | a4 && !v17)
  {
    v20 = "x and/or y offset for the first frame aren't 0";
    goto LABEL_9;
  }

  if (!v17 && (*(a1 + 928) != a2 || *(a1 + 932) != a3))
  {
    v20 = "width and/or height in the first frame's fcTL don't match the ones in IHDR";
LABEL_9:
    _cg_png_error(a1, v20);
  }

  png_ensure_fcTL_is_valid(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  v18 = *(a1 + 924);
  v21[0] = HIBYTE(v18);
  v21[1] = BYTE2(v18);
  v21[2] = BYTE1(v18);
  v21[3] = v18;
  v21[4] = HIBYTE(a2);
  v21[5] = BYTE2(a2);
  v21[6] = BYTE1(a2);
  v21[7] = a2;
  v21[8] = HIBYTE(a3);
  v21[9] = BYTE2(a3);
  v21[10] = BYTE1(a3);
  v21[11] = a3;
  v21[12] = HIBYTE(a4);
  v21[13] = BYTE2(a4);
  v21[14] = BYTE1(a4);
  v21[15] = a4;
  v21[16] = HIBYTE(a5);
  v21[17] = BYTE2(a5);
  v21[18] = BYTE1(a5);
  v21[19] = a5;
  v21[20] = HIBYTE(v11);
  v21[21] = v11;
  v21[22] = HIBYTE(v10);
  v21[23] = v10;
  v21[24] = a8;
  v21[25] = a9;
  result = _cg_png_write_complete_chunk(a1, 1717785676, v21, 0x1AuLL);
  ++*(a1 + 924);
  return result;
}

uint64_t png_do_write_interlace(uint64_t result, char *__dst, unint64_t a3, int a4)
{
  if (a4 > 5)
  {
    return result;
  }

  v6 = *(result + 19);
  v7 = *result;
  v56 = result;
  switch(v6)
  {
    case 4:
      v27 = &png_write_finish_row_png_pass_start[a4];
      if (v27 >= png_write_finish_row_png_pass_inc || v27 < png_write_finish_row_png_pass_start)
      {
        goto LABEL_120;
      }

      v9 = a4;
      v28 = *v27;
      v55 = v28;
      if (v7 > v28)
      {
        v11 = 0;
        result = a4;
        v29 = &png_write_finish_row_png_pass_inc[a4];
        v31 = v29 < png_write_finish_row_png_pass_ystart && v29 >= png_write_finish_row_png_pass_inc;
        v15 = __dst;
        v32 = 4;
        do
        {
          v33 = &__dst[v28 >> 1];
          if (v33 >= a3 || v33 < __dst)
          {
            goto LABEL_120;
          }

          v11 |= ((*v33 >> (~(4 * v28) & 4)) & 0xF) << v32;
          if (v32)
          {
            v32 -= 4;
            if (!v31)
            {
              goto LABEL_120;
            }
          }

          else
          {
            if (v15 >= a3)
            {
              goto LABEL_120;
            }

            if (v15 < __dst)
            {
              goto LABEL_120;
            }

            *v15++ = v11;
            v32 = 4;
            v11 = 0;
            if (!v31)
            {
              goto LABEL_120;
            }
          }

          v28 += *v29;
        }

        while (v28 < v7);
        if (v32 != 4)
        {
LABEL_76:
          if (v15 >= a3 || v15 < __dst)
          {
            goto LABEL_120;
          }

          *v15 = v11;
        }

LABEL_79:
        v9 = result;
      }

      break;
    case 2:
      v19 = &png_write_finish_row_png_pass_start[a4];
      if (v19 >= png_write_finish_row_png_pass_inc || v19 < png_write_finish_row_png_pass_start)
      {
        goto LABEL_120;
      }

      v9 = a4;
      v20 = *v19;
      v55 = v20;
      if (v7 > v20)
      {
        v11 = 0;
        result = a4;
        v21 = &png_write_finish_row_png_pass_inc[a4];
        v23 = v21 < png_write_finish_row_png_pass_ystart && v21 >= png_write_finish_row_png_pass_inc;
        v15 = __dst;
        v24 = 6;
        while (1)
        {
          v25 = &__dst[v20 >> 2];
          if (v25 >= a3 || v25 < __dst)
          {
            goto LABEL_120;
          }

          v11 |= ((*v25 >> (~(2 * v20) & 6)) & 3) << v24;
          if (v24)
          {
            v24 -= 2;
            if (!v23)
            {
              goto LABEL_120;
            }
          }

          else
          {
            if (v15 >= a3)
            {
              goto LABEL_120;
            }

            if (v15 < __dst)
            {
              goto LABEL_120;
            }

            *v15++ = v11;
            v24 = 6;
            v11 = 0;
            if (!v23)
            {
              goto LABEL_120;
            }
          }

          v20 += *v21;
          if (v20 >= v7)
          {
            if (v24 != 6)
            {
              goto LABEL_76;
            }

            goto LABEL_79;
          }
        }
      }

      break;
    case 1:
      v8 = &png_write_finish_row_png_pass_start[a4];
      if (v8 >= png_write_finish_row_png_pass_inc || v8 < png_write_finish_row_png_pass_start)
      {
        goto LABEL_120;
      }

      v9 = a4;
      v10 = *v8;
      v55 = v10;
      if (v7 > v10)
      {
        v11 = 0;
        result = a4;
        v12 = &png_write_finish_row_png_pass_inc[a4];
        v14 = v12 < png_write_finish_row_png_pass_ystart && v12 >= png_write_finish_row_png_pass_inc;
        v15 = __dst;
        v16 = 7;
        while (1)
        {
          v17 = &__dst[v10 >> 3];
          if (v17 >= a3 || v17 < __dst)
          {
            goto LABEL_120;
          }

          v11 |= ((*v17 >> (~v10 & 7)) & 1) << v16;
          if (v16)
          {
            --v16;
            if (!v14)
            {
              goto LABEL_120;
            }
          }

          else
          {
            if (v15 >= a3)
            {
              goto LABEL_120;
            }

            if (v15 < __dst)
            {
              goto LABEL_120;
            }

            *v15++ = v11;
            v16 = 7;
            v11 = 0;
            if (!v14)
            {
              goto LABEL_120;
            }
          }

          v10 += *v12;
          if (v10 >= v7)
          {
            if (v16 != 7)
            {
              goto LABEL_76;
            }

            goto LABEL_79;
          }
        }
      }

      break;
    default:
      v35 = &png_write_finish_row_png_pass_start[a4];
      if (v35 >= png_write_finish_row_png_pass_inc || v35 < png_write_finish_row_png_pass_start)
      {
        goto LABEL_120;
      }

      v9 = a4;
      v36 = *v35;
      v55 = v36;
      if (v7 > v36)
      {
        v37 = v6 >> 3;
        v54 = a4;
        v38 = &png_write_finish_row_png_pass_inc[a4];
        v40 = v38 < png_write_finish_row_png_pass_ystart && v38 >= png_write_finish_row_png_pass_inc;
        v41 = a3 - __dst;
        v42 = __dst;
        while (1)
        {
          v43 = &__dst[v37 * v36];
          if (v42 != v43)
          {
            v44 = a3 >= v43 && v43 >= __dst;
            v45 = v44 && a3 - v43 >= v37;
            v46 = !v45 || v42 > a3;
            v47 = !v46 && v42 >= __dst;
            if (!v47 || v41 < v37)
            {
              goto LABEL_120;
            }

            result = memcpy(v42, v43, v37);
            if (v42 > &v42[v37])
            {
              goto LABEL_120;
            }
          }

          if (!v40)
          {
            goto LABEL_120;
          }

          v42 += v37;
          v36 += *v38;
          v41 -= v37;
          if (v36 >= v7)
          {
            v9 = v54;
            goto LABEL_112;
          }
        }
      }

      break;
  }

LABEL_112:
  v49 = &png_write_finish_row_png_pass_inc[v9];
  if (&png_write_finish_row_png_pass_inc[v9] >= png_write_finish_row_png_pass_ystart || v49 < png_write_finish_row_png_pass_inc || &png_write_finish_row_png_pass_start[v9] >= png_write_finish_row_png_pass_inc || &png_write_finish_row_png_pass_start[v9] < png_write_finish_row_png_pass_start)
  {
LABEL_120:
    __break(0x5519u);
    return result;
  }

  v50 = (*v56 + ~v55 + *v49) / *v49;
  *v56 = v50;
  v51 = *(v56 + 19);
  v52 = (v51 * v50 + 7) >> 3;
  v53 = (v51 >> 3) * v50;
  if (v51 < 8)
  {
    v53 = v52;
  }

  *(v56 + 8) = v53;
  return result;
}

int8x16_t *png_setup_up_row(int8x16_t *result, unint64_t a2, unint64_t a3, int a4)
{
  v5 = result[22].u64[0];
  v4 = result[22].u64[1];
  if (v5 >= v4)
  {
LABEL_30:
    __break(0x5519u);
    return result;
  }

  v9 = result;
  *v5 = 2;
  CPUCapabilities = AppleGetCPUCapabilities();
  v11 = v9[21].u64[0];
  v12 = v9[20].u64[0];
  if (a4 == 4 && (CPUCapabilities & 0x100) != 0)
  {
    result = (v11 + 1);
    v13 = (v12 + 1);
    if (v5 + 1 >= v5 && result >= v11 && v13 >= v12)
    {
      return png_write_filter_row_up_neon(result, v9[21].u64[1], (v5 + 1), v4, v13, v9[20].u64[1], a2);
    }

    goto LABEL_30;
  }

  result = 0;
  if (a2)
  {
    v16 = v9[21].u64[1];
    v17 = (v12 + 1);
    v18 = v9[20].u64[1];
    v19 = (v5 + 1);
    v20 = (v11 + 1);
    v21 = a2 - 1;
    while (v20 < v16 && v20 >= v11 && v17 < v18 && v17 >= v12 && v19 < v4 && v19 >= v5)
    {
      v23 = *v20++;
      v22 = v23;
      v24 = *v17++;
      v25 = v22 - v24;
      v26 = v25;
      *v19++ = v25;
      v27 = v25;
      LODWORD(v28) = 256 - v25;
      if (v26 >= 0)
      {
        v28 = v27;
      }

      else
      {
        v28 = v28;
      }

      result = (result + v28);
      if (result > a3 || v21-- == 0)
      {
        return result;
      }
    }

    goto LABEL_30;
  }

  return result;
}

uint64_t png_write_reset(uint64_t result)
{
  *(result + 308) = 0;
  *(result + 429) = 0;
  *(result + 76) &= ~4u;
  return result;
}

uint64_t png_write_reinit(uint64_t a1, char *a2, unsigned int a3, unsigned int a4)
{
  v7 = *(a1 + 928);
  if (*(a1 + 964))
  {
    if (v7 < a3)
    {
      goto LABEL_10;
    }
  }

  else if (v7 != a3 || *(a1 + 932) != a4)
  {
    v12 = "width and/or height in the first frame's fcTL don't match the ones in IHDR";
LABEL_12:
    _cg_png_error(a1, v12);
  }

  if (*(a1 + 932) < a4)
  {
LABEL_10:
    v12 = "width and/or height for a frame greater thanthe ones in IHDR";
    goto LABEL_12;
  }

  result = _cg_png_set_IHDR(a1, a2, a3, a4, a2[44], a2[45], a2[48], a2[46], a2[47]);
  *(a1 + 280) = a3;
  *(a1 + 284) = a4;
  v9 = *(a1 + 434);
  v10 = v9 >= 8;
  v11 = (v9 >> 3) * a3;
  if (!v10)
  {
    v11 = (*(a1 + 434) * a3 + 7) >> 3;
  }

  *(a1 + 296) = v11;
  *(a1 + 292) = a3;
  return result;
}

uint64_t _cg_TIFFReadScanline(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  if (!TIFFCheckRead(a1, 0))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 92) <= a3)
  {
    TIFFErrorExtR(a1, *a1, "%u: Row out of range, max %u");
LABEL_7:
    v16 = _cg_TIFFScanlineSize(a1, v15, v8, v9, v10, v11, v12, v13);
    bzero(a2, v16);
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 170) == 2)
  {
    if (*(a1 + 130) <= a4)
    {
      TIFFErrorExtR(a1, *a1, "%hu: Sample out of range, max %hu");
      goto LABEL_7;
    }

    v14 = a3 / *(a1 + 132) + *(a1 + 224) * a4;
  }

  else
  {
    v14 = a3 / *(a1 + 132);
  }

  if (v14 != *(a1 + 884) && !TIFFFillStrip(a1, v14, v8, v9, v10, v11, v12, v13))
  {
    goto LABEL_7;
  }

  if (*(a1 + 876) > a3)
  {
    if (!*(a1 + 1136))
    {
      goto LABEL_31;
    }

    if ((*(a1 + 1128) & 0x8000000000000000) != 0)
    {
      *(a1 + 884) = -1;
      if ((*(a1 + 17) & 2) == 0)
      {
        TIFFErrorExtR(a1, "TIFFFillStripPartial", "Data buffer too small to hold part of strip %d");
        goto LABEL_7;
      }
    }

    *(a1 + 1136) = 0;
    *(a1 + 1144) = 0;
    v19 = TIFFGetStrileOffset(a1, v14, v8, v9, v10, v11, v12);
    if (!_TIFFSeekOK(a1, *(a1 + 1136) + *(a1 + 1144) + v19))
    {
      TIFFErrorExtR(a1, "TIFFFillStripPartial", "Seek error at scanline %u, strip %d");
      goto LABEL_7;
    }

    v25 = *(a1 + 1128) & ~(*(a1 + 1128) >> 63);
    if (v25 > TIFFGetStrileByteCount(a1, v14, v20, v21, v22, v23, v24) - (*(a1 + 1136) + *(a1 + 1144)))
    {
      v25 = TIFFGetStrileByteCount(a1, v14, v26, v27, v28, v29, v30) - (*(a1 + 1136) + *(a1 + 1144));
    }

    if ((*(a1 + 18) & 0x80) != 0)
    {
      _cg_TIFFReadScanline_cold_1();
    }

    if (!TIFFReadAndRealloc(a1, v25, 0, 1, 0, "TIFFFillStripPartial"))
    {
      goto LABEL_7;
    }

    *(a1 + 1136) += *(a1 + 1144);
    *(a1 + 1144) = v25;
    *(a1 + 1160) = v25;
    v31 = *(a1 + 1120);
    *(a1 + 1152) = v31;
    v32 = *(a1 + 16);
    if ((v32 & (*(a1 + 126) | 0x100)) == 0)
    {
      if ((v32 & 0x800000) != 0)
      {
        _cg_TIFFReadScanline_cold_2();
      }

      TIFFReverseBits(v31, v25);
    }

    if (*(a1 + 120) == 7 && (v33 = *(a1 + 1160), v33 < TIFFGetStrileByteCount(a1, v14, v8, v9, v10, v11, v12)) && TIFFJPEGIsFullStripRequired(a1))
    {
      v34 = TIFFFillStrip(a1, v14, v8, v9, v10, v11, v12, v13);
    }

    else
    {
LABEL_31:
      v34 = TIFFStartStrip(a1, v14, v8, v9, v10, v11, v12, v13);
    }

    if (!v34)
    {
      goto LABEL_7;
    }
  }

  v35 = *(a1 + 876);
  if (a3 != v35)
  {
    if (!(*(a1 + 1064))(a1, a3 - v35))
    {
      goto LABEL_7;
    }

    *(a1 + 876) = a3;
  }

  v36 = (*(a1 + 1008))(a1, a2, *(a1 + 1104), a4);
  *(a1 + 876) = a3 + 1;
  v17 = 0xFFFFFFFFLL;
  if (v36)
  {
    v37 = v36;
    (*(a1 + 1248))(a1, a2, *(a1 + 1104));
    if (v37 < 1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return v17;
}

uint64_t TIFFCheckRead(uint64_t a1, int a2)
{
  if (*(a1 + 12) == 1)
  {
    TIFFErrorExtR(a1, *a1, "File not open for reading");
  }

  else
  {
    if (((*(a1 + 16) >> 10) & 1) == a2)
    {
      return 1;
    }

    if (a2)
    {
      v3 = "Can not read tiles from a striped image";
    }

    else
    {
      v3 = "Can not read scanlines from a tiled image";
    }

    TIFFErrorExtR(a1, *a1, v3);
  }

  return 0;
}

size_t _cg_TIFFReadEncodedStrip(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v18 = 0;
  StripSize = TIFFReadEncodedStripGetStripSize(a1, a2, &v18);
  v15 = StripSize;
  if (StripSize != -1)
  {
    if (a4 == -1 || StripSize > a4 || *(a1 + 120) != 1 || (*(a1 + 17) & 0x208) != 0)
    {
      if (StripSize >= a4)
      {
        v16 = a4;
      }

      else
      {
        v16 = StripSize;
      }

      if (a4 != -1)
      {
        v15 = v16;
      }

      if (TIFFFillStrip(a1, a2, v9, v10, v11, v12, v13, v14))
      {
        if ((*(a1 + 1024))(a1, a3, v15, v18) >= 1)
        {
LABEL_13:
          (*(a1 + 1248))(a1, a3, v15);
          return v15;
        }
      }

      else
      {
        bzero(a3, v15);
      }
    }

    else if (TIFFReadRawStrip1(a1, a2, a3, StripSize, "TIFFReadEncodedStrip", v12, v13) == StripSize)
    {
      if ((*(a1 + 16) & (*(a1 + 126) | 0x100)) == 0)
      {
        TIFFReverseBits(a3, v15);
      }

      goto LABEL_13;
    }

    return -1;
  }

  return v15;
}

uint64_t TIFFReadEncodedStripGetStripSize(_DWORD *a1, unsigned int a2, _WORD *a3)
{
  if (!TIFFCheckRead(a1, 0))
  {
    return -1;
  }

  if (a1[57] <= a2)
  {
    TIFFErrorExtR(a1, "TIFFReadEncodedStrip", "%u: Strip out of range, max %u");
    return -1;
  }

  v12 = a1[33];
  v13 = a1[23];
  if (v12 >= v13)
  {
    v12 = a1[23];
  }

  if (!v12)
  {
    TIFFErrorExtR(a1, "TIFFReadEncodedStrip", "rowsperstrip is zero");
    return -1;
  }

  v14 = v13 / v12;
  if (v13 % v12)
  {
    ++v14;
  }

  v15 = a2 / v14;
  v16 = a2 % v14;
  if (a3)
  {
    *a3 = v15;
  }

  v17 = v13 - v16 * v12;
  if (v17 >= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v17;
  }

  result = TIFFVStripSize(a1, v18, v6, v7, v8, v9, v10, v11);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t TIFFReadRawStrip1(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if ((v7 & 0x20000) != 0)
  {
    TIFFReadRawStrip1_cold_1();
  }

  v9 = a4;
  v13 = TIFFGetStrileOffset(a1, a2, a3, a4, a5, a6, a7);
  if ((v7 & 0x800) != 0)
  {
    if (v13 < 0)
    {
      v19 = 0;
      v23 = 0;
    }

    else
    {
      v19 = TIFFGetStrileOffset(a1, a2, v14, v15, v16, v17, v18);
      v20 = *(a1 + 1176);
      if ((v19 + v9) <= v20)
      {
        v21 = v9;
      }

      else
      {
        v21 = v20 - v19;
      }

      if (v19 <= (v9 ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      if (v20 >= v19)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }
    }

    if (v23 != v9)
    {
      TIFFErrorExtR(a1, a5, "Read error at scanline %u, strip %u; got %lld bytes, expected %lld");
      return -1;
    }

    _TIFFmemcpy(a3, (*(a1 + 1168) + v19), v9);
  }

  else
  {
    if (!_TIFFSeekOK(a1, v13))
    {
      TIFFErrorExtR(a1, a5, "Seek error at scanline %u, strip %u");
      return -1;
    }

    if ((*(a1 + 1208))(*(a1 + 1200), a3, v9) != v9)
    {
      TIFFErrorExtR(a1, a5, "Read error at scanline %u; got %lld bytes, expected %lld");
      return -1;
    }
  }

  return v9;
}

uint64_t TIFFFillStrip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 18) & 2) == 0)
  {
    v10 = TIFFGetStrileByteCount(a1, a2, a3, a4, a5, a6, a7);
    v18 = v10;
    if (v10 <= 0)
    {
      TIFFErrorExtR(a1, "TIFFFillStrip", "Invalid strip byte count %llu, strip %u");
      return 0;
    }

    if (v10 > 0x100000)
    {
      v19 = _cg_TIFFStripSize(a1, v11, v12, v13, v14, v15, v16, v17);
      if (v19)
      {
        if (v19 < (v18 - 4096) / 0xAuLL)
        {
          v20 = 10 * v19 + 4096;
          TIFFErrorExtR(a1, "TIFFFillStrip", "Too large strip byte count %llu, strip %u. Limiting to %llu", v18, a2, v20);
          v18 = v20;
        }
      }
    }

    v21 = *(a1 + 16);
    if ((v21 & 0x800) != 0)
    {
      v23 = *(a1 + 1176);
      if (v18 > v23 || (v24 = TIFFGetStrileOffset(a1, a2, v12, v13, v14, v15, v16), v23 = *(a1 + 1176), v24 > v23 - v18))
      {
        v25 = TIFFGetStrileOffset(a1, a2, v12, v13, v14, v15, v16);
        TIFFErrorExtR(a1, "TIFFFillStrip", "Read error on strip %u; got %llu bytes, expected %llu", a2, v23 - v25, v18);
        *(a1 + 884) = -1;
        return 0;
      }

      v21 = *(a1 + 16);
      if ((v21 & 0x800) != 0 && (v21 & (*(a1 + 126) | 0x100)) != 0)
      {
        if ((v21 & 0x200) != 0)
        {
          v28 = *(a1 + 1120);
          if (v28)
          {
            free(v28);
            *(a1 + 1120) = 0;
            v21 = *(a1 + 16);
          }
        }

        *(a1 + 16) = v21 & 0xFFFFFDFF;
        *(a1 + 1128) = v18;
        v29 = *(a1 + 1168);
        *(a1 + 1120) = v29 + TIFFGetStrileOffset(a1, a2, v12, v13, v14, v15, v16);
        *(a1 + 1136) = 0;
        *(a1 + 1144) = v18;
        *(a1 + 16) |= 0x800000u;
        goto LABEL_33;
      }
    }

    v22 = *(a1 + 1128);
    if (v18 > v22)
    {
      *(a1 + 884) = -1;
      if ((v21 & 0x200) == 0)
      {
        TIFFErrorExtR(a1, "TIFFFillStrip", "Data buffer too small to hold strip %u");
        return 0;
      }
    }

    if ((v21 & 0x800000) != 0)
    {
      v22 = 0;
      *(a1 + 884) = -1;
      v21 &= ~0x800000u;
      *(a1 + 1120) = 0u;
      *(a1 + 16) = v21;
    }

    if ((v21 & 0x800) != 0)
    {
      if (v18 > v22 && !TIFFReadBufferSetup(a1, 0, v18))
      {
        return 0;
      }

      v26 = TIFFReadRawStrip1(a1, a2, *(a1 + 1120), v18, "TIFFFillStrip", v15, v16);
    }

    else
    {
      v26 = TIFFReadRawStripOrTile2(a1, a2, 1, v18, "TIFFFillStrip", v15, v16);
    }

    if (v26 != v18)
    {
      return 0;
    }

    *(a1 + 1136) = 0;
    *(a1 + 1144) = v18;
    if ((*(a1 + 16) & (*(a1 + 126) | 0x100)) == 0)
    {
      TIFFReverseBits(*(a1 + 1120), v18);
    }
  }

LABEL_33:

  return TIFFStartStrip(a1, a2, a3, a4, a5, a6, a7, a8);
}

size_t _TIFFReadEncodedStripAndAllocBuffer(uint64_t a1, uint64_t a2, void *a3, size_t a4, uint64_t a5)
{
  v9 = *a3;
  if (!v9)
  {
    v23 = 0;
    StripSize = TIFFReadEncodedStripGetStripSize(a1, a2, &v23);
    if (StripSize != -1)
    {
      v19 = StripSize >= a5 ? a5 : StripSize;
      v20 = a5 == -1 ? StripSize : v19;
      if (TIFFFillStrip(a1, a2, v13, v14, v15, v16, v17, v18))
      {
        v21 = malloc_type_malloc(a4, 0x50A56378uLL);
        *a3 = v21;
        if (v21)
        {
          _TIFFmemset(v21, 0, a4);
          if ((*(a1 + 1024))(a1, *a3, v20, v23) >= 1)
          {
            (*(a1 + 1248))(a1, *a3, v20);
            return v20;
          }
        }

        else
        {
          v22 = TIFFFileName(a1);
          TIFFErrorExtR(a1, v22, "No space for strip buffer");
        }
      }
    }

    return -1;
  }

  return _cg_TIFFReadEncodedStrip(a1, a2, v9, a5);
}

uint64_t TIFFReadBufferSetup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if ((v3 & 0x20000) != 0)
  {
    TIFFReadBufferSetup_cold_1();
  }

  *(a1 + 16) = v3 & 0xFF7DFFFF;
  v7 = *(a1 + 1120);
  if (v7)
  {
    if ((v3 & 0x200) != 0)
    {
      free(v7);
    }

    *(a1 + 1120) = 0;
    *(a1 + 1128) = 0;
  }

  if (a2)
  {
    *(a1 + 1128) = a3;
    *(a1 + 1120) = a2;
    *(a1 + 16) &= ~0x200u;
    return 1;
  }

  else
  {
    v10 = (a3 + 1023) & 0xFFFFFFFFFFFFFC00;
    *(a1 + 1128) = v10;
    if (v10)
    {
      v8 = 1;
      v11 = malloc_type_calloc(1uLL, v10, 0x100004077774924uLL);
      *(a1 + 1120) = v11;
      *(a1 + 16) |= 0x200u;
      if (!v11)
      {
        TIFFErrorExtR(a1, "TIFFReadBufferSetup", "No space for data buffer at scanline %u", *(a1 + 876));
        v8 = 0;
        *(a1 + 1128) = 0;
      }
    }

    else
    {
      TIFFErrorExtR(a1, "TIFFReadBufferSetup", "Invalid buffer size");
      return 0;
    }
  }

  return v8;
}

uint64_t TIFFReadRawStripOrTile2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if ((v7 & 0x800) != 0)
  {
    TIFFReadRawStripOrTile2_cold_1();
  }

  if ((v7 & 0x20000) != 0)
  {
    TIFFReadRawStripOrTile2_cold_2();
  }

  v10 = a3;
  v13 = TIFFGetStrileOffset(a1, a2, a3, a4, a5, a6, a7);
  if (_TIFFSeekOK(a1, v13))
  {
    if (TIFFReadAndRealloc(a1, a4, 0, v10, a2, a5))
    {
      return a4;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    if (v10)
    {
      TIFFErrorExtR(a1, a5, "Seek error at scanline %u, strip %u");
    }

    else
    {
      TIFFErrorExtR(a1, a5, "Seek error at row %u, col %u, tile %u");
    }

    return -1;
  }
}

uint64_t TIFFStartStrip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 16);
  if ((v10 & 0x20) == 0)
  {
    result = (*(a1 + 960))(a1, a2, a3, a4, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

    v10 = *(a1 + 16) | 0x20;
    *(a1 + 16) = v10;
  }

  *(a1 + 884) = a2;
  v12 = *(a1 + 224);
  if (v12)
  {
    *(a1 + 876) = *(a1 + 132) * (a2 % v12);
    *(a1 + 16) = v10 & 0xFFEFFFFF;
    if ((v10 & 0x20000) != 0)
    {
      *(a1 + 1152) = 0u;
    }

    else
    {
      *(a1 + 1152) = *(a1 + 1120);
      v13 = *(a1 + 1144);
      if (v13 < 1)
      {
        *(a1 + 1160) = TIFFGetStrileByteCount(a1, a2, a3, a4, a5, a6, a7);
        v12 = *(a1 + 224);
      }

      else
      {
        *(a1 + 1160) = v13;
      }
    }

    result = (*(a1 + 968))(a1, (a2 / v12), a3, a4, a5, a6, a7, a8);
    if (result)
    {
      return 1;
    }

    else
    {
      *(a1 + 884) = -1;
    }
  }

  else
  {
    TIFFErrorExt(*(a1 + 1200), "TIFFStartStrip", "Zero strips per image", a4, a5, a6, a7, a8);
    return 0;
  }

  return result;
}

uint64_t _cg_TIFFReadTileWithSize(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a5;
  v10 = a4;
  if (!TIFFCheckRead(a1, 1) || !TIFFCheckTile(a1, v10, v9, a6, a7))
  {
    return -1;
  }

  v14 = _cg_TIFFComputeTile(a1, v10, v9, a6, a7);

  return TIFFReadEncodedTile(a1, v14, a2, a3);
}

uint64_t TIFFReadEncodedTile(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int64_t a4)
{
  v8 = *(a1 + 936);
  if (!TIFFCheckRead(a1, 1))
  {
    return -1;
  }

  v14 = *(a1 + 228);
  if (v14 <= a2)
  {
    TIFFErrorExtR(a1, "TIFFReadEncodedTile", "%u: Tile out of range, max %u", a2, v14);
    return -1;
  }

  if (a4 != -1 && *(a1 + 120) == 1 && v8 <= a4 && (*(a1 + 17) & 0x208) == 0)
  {
    if (TIFFReadRawTile1(a1, a2, a3, v8, "TIFFReadEncodedTile", v12, v13) == v8)
    {
      if ((*(a1 + 16) & (*(a1 + 126) | 0x100)) == 0)
      {
        TIFFReverseBits(a3, v8);
      }

      goto LABEL_14;
    }

    return -1;
  }

  if (v8 >= a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = v8;
  }

  if (a4 != -1)
  {
    v8 = v15;
  }

  if (!TIFFFillTile(a1, a2, v9, v10, v11, v12, v13))
  {
    bzero(a3, v8);
    return -1;
  }

  if (!(*(a1 + 1040))(a1, a3, v8, (a2 / *(a1 + 224))))
  {
    return -1;
  }

LABEL_14:
  (*(a1 + 1248))(a1, a3, v8);
  return v8;
}

size_t TIFFReadRawTile1(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if ((v7 & 0x20000) != 0)
  {
    TIFFReadRawTile1_cold_1();
  }

  v9 = a4;
  v18 = TIFFGetStrileOffset(a1, a2, a3, a4, a5, a6, a7);
  if ((v7 & 0x800) != 0)
  {
    if (TIFFGetStrileOffset(a1, a2, v13, v14, v15, v16, v17) < 0 || (v19 = *(a1 + 1176), v20 = v19 - v18, v19 < v18))
    {
      v20 = 0;
    }

    else if ((v9 & 0x8000000000000000) == 0 && (v18 & 0x8000000000000000) == 0 && (v18 + v9) <= v19)
    {
      goto LABEL_16;
    }

    if (v20 != v9)
    {
      TIFFErrorExtR(a1, a5, "Read error at row %u, col %u, tile %u; got %lld bytes, expected %lld");
      return -1;
    }

LABEL_16:
    _TIFFmemcpy(a3, (*(a1 + 1168) + v18), v9);
    return v9;
  }

  if (!_TIFFSeekOK(a1, v18))
  {
    TIFFErrorExtR(a1, a5, "Seek error at row %u, col %u, tile %u");
    return -1;
  }

  if ((*(a1 + 1208))(*(a1 + 1200), a3, v9) != v9)
  {
    TIFFErrorExtR(a1, a5, "Read error at row %u, col %u; got %lld bytes, expected %lld");
    return -1;
  }

  return v9;
}

uint64_t TIFFFillTile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((*(a1 + 18) & 2) == 0)
  {
    v9 = TIFFGetStrileByteCount(a1, a2, a3, a4, a5, a6, a7);
    v17 = v9;
    if (v9 <= 0)
    {
      TIFFErrorExtR(a1, "TIFFFillTile", "%llu: Invalid tile byte count, tile %u");
      return 0;
    }

    if (v9 > 0x100000)
    {
      v18 = _cg_TIFFTileSize(a1, v10, v11, v12, v13, v14, v15, v16);
      if (v18)
      {
        if (v18 < (v17 - 4096) / 0xAuLL)
        {
          v19 = 10 * v18 + 4096;
          TIFFErrorExtR(a1, "TIFFFillTile", "Too large tile byte count %llu, tile %u. Limiting to %llu", v17, a2, v19);
          v17 = v19;
        }
      }
    }

    v20 = *(a1 + 16);
    if ((v20 & 0x800) != 0)
    {
      if (v17 > *(a1 + 1176) || TIFFGetStrileOffset(a1, a2, v11, v12, v13, v14, v15) > (*(a1 + 1176) - v17))
      {
        *(a1 + 932) = -1;
        return 0;
      }

      v20 = *(a1 + 16);
      if ((v20 & 0x800) != 0 && (v20 & (*(a1 + 126) | 0x100)) != 0)
      {
        if ((v20 & 0x200) != 0)
        {
          v28 = *(a1 + 1120);
          if (v28)
          {
            free(v28);
            *(a1 + 1120) = 0;
            v20 = *(a1 + 16);
          }
        }

        *(a1 + 16) = v20 & 0xFFFFFDFF;
        *(a1 + 1128) = v17;
        v29 = *(a1 + 1168);
        *(a1 + 1120) = v29 + TIFFGetStrileOffset(a1, a2, v22, v23, v24, v14, v15);
        *(a1 + 1136) = 0;
        *(a1 + 1144) = v17;
        *(a1 + 16) |= 0x800000u;
        goto LABEL_34;
      }
    }

    v21 = *(a1 + 1128);
    if (v17 > v21)
    {
      *(a1 + 932) = -1;
      if ((v20 & 0x200) == 0)
      {
        TIFFErrorExtR(a1, "TIFFFillTile", "Data buffer too small to hold tile %u");
        return 0;
      }
    }

    if ((v20 & 0x800000) != 0)
    {
      v21 = 0;
      *(a1 + 932) = -1;
      v20 &= ~0x800000u;
      *(a1 + 1120) = 0u;
      *(a1 + 16) = v20;
    }

    if ((v20 & 0x800) != 0)
    {
      if (v17 > v21 && !TIFFReadBufferSetup(a1, 0, v17))
      {
        return 0;
      }

      v25 = TIFFReadRawTile1(a1, a2, *(a1 + 1120), v17, "TIFFFillTile", v14, v15);
    }

    else
    {
      v25 = TIFFReadRawStripOrTile2(a1, a2, 0, v17, "TIFFFillTile", v14, v15);
    }

    if (v25 != v17)
    {
      return 0;
    }

    *(a1 + 1136) = 0;
    *(a1 + 1144) = v17;
    v26 = *(a1 + 1120);
    if (v26 && (*(a1 + 16) & (*(a1 + 126) | 0x100)) == 0)
    {
      TIFFReverseBits(v26, v17);
    }
  }

LABEL_34:

  return TIFFStartTile(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t _TIFFReadTileAndAllocBuffer(uint64_t a1, unsigned __int8 **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a5;
  v10 = a4;
  if (!TIFFCheckRead(a1, 1) || !TIFFCheckTile(a1, v10, v9, a6, a7))
  {
    return -1;
  }

  v14 = _cg_TIFFComputeTile(a1, v10, v9, a6, a7);

  return _TIFFReadEncodedTileAndAllocBuffer(a1, v14, a2, a3, -1);
}

uint64_t _TIFFReadEncodedTileAndAllocBuffer(uint64_t a1, uint64_t a2, unsigned __int8 **a3, int64_t a4, int64_t a5)
{
  v9 = *a3;
  if (!v9)
  {
    v12 = *(a1 + 936);
    if (!TIFFCheckRead(a1, 1))
    {
      return -1;
    }

    if (*(a1 + 228) <= a2)
    {
      TIFFErrorExtR(a1, "_TIFFReadEncodedTileAndAllocBuffer", "%u: Tile out of range, max %u");
      return -1;
    }

    if (!TIFFFillTile(a1, a2, v13, v14, v15, v16, v17))
    {
      return -1;
    }

    v18 = *(a1 + 120);
    switch(v18)
    {
      case 50002:
        if (*(a1 + 170) == 1)
        {
          v21 = 25000 * *(a1 + 130);
        }

        else
        {
          v21 = 25000;
        }

        break;
      case 50000:
        v21 = 33000;
        break;
      case 1:
        if (*(a1 + 1128) != v12)
        {
          v19 = TIFFFileName(a1);
          TIFFErrorExtR(a1, v19, "Invalid tile byte count for tile %u. Expected %llu, got %llu");
          return -1;
        }

        goto LABEL_26;
      default:
        v22 = v18 == 34925;
        v21 = 1000;
        if (v22)
        {
          v21 = 7000;
        }

        break;
    }

    if (a4 >= 100000001 && *(a1 + 1128) < v12 / v21)
    {
      v23 = TIFFFileName(a1);
      TIFFErrorExtR(a1, v23, "Likely invalid tile byte count for tile %u. Uncompressed tile size is %llu, compressed one is %llu");
      return -1;
    }

LABEL_26:
    v24 = malloc_type_malloc(a4, 0x8AEEE98uLL);
    *a3 = v24;
    if (v24)
    {
      _TIFFmemset(v24, 0, a4);
      if (v12 >= a5)
      {
        v25 = a5;
      }

      else
      {
        v25 = v12;
      }

      if (a5 == -1)
      {
        v20 = v12;
      }

      else
      {
        v20 = v25;
      }

      if ((*(a1 + 1040))(a1, *a3, v20, (a2 / *(a1 + 224))))
      {
        (*(a1 + 1248))(a1, *a3, v20);
        return v20;
      }
    }

    else
    {
      v26 = TIFFFileName(a1);
      TIFFErrorExtR(a1, v26, "No space for tile buffer");
    }

    return -1;
  }

  return TIFFReadEncodedTile(a1, a2, v9, a5);
}

uint64_t TIFFStartTile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a1 + 16);
  if ((v9 & 0x20) == 0)
  {
    if (!(*(a1 + 960))(a1))
    {
      return 0;
    }

    v9 = *(a1 + 16) | 0x20;
    *(a1 + 16) = v9;
  }

  *(a1 + 932) = a2;
  v10 = *(a1 + 100);
  if (!v10)
  {
    TIFFErrorExtR(a1, "TIFFStartTile", "Zero tilewidth");
    return 0;
  }

  v11 = *(a1 + 88);
  if (v11 >= -v10 || (v12 = v10 + v11 - 1, v10 > v12) || (v13 = a2 % (v12 / v10), v14 = *(a1 + 104), *(a1 + 876) = v14 * v13, v15 = *(a1 + 92), v15 >= -v14) || (v16 = v14 + v15 - 1, v14 > v16))
  {
    TIFFErrorExtR(a1, "TIFFStartTile", "Zero tiles");
    return 0;
  }

  *(a1 + 928) = a2 % (v16 / v14) * v10;
  *(a1 + 16) = v9 & 0xFFEFFFFF;
  if ((v9 & 0x20000) != 0)
  {
    *(a1 + 1152) = 0u;
  }

  else
  {
    *(a1 + 1152) = *(a1 + 1120);
    v18 = *(a1 + 1144);
    if (v18 < 1)
    {
      *(a1 + 1160) = TIFFGetStrileByteCount(a1, a2, a3, a4, a5, a6, a7);
    }

    else
    {
      *(a1 + 1160) = v18;
    }
  }

  v19 = *(a1 + 968);
  v20 = (a2 / *(a1 + 224));

  return v19(a1, v20);
}

uint64_t _TIFFSwab16BitData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    _TIFFSwab16BitData_cold_1();
  }

  return TIFFSwabArrayOfShort(a2, a3 >> 1);
}

uint64_t _TIFFSwab24BitData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 3 * (a3 / 3))
  {
    _TIFFSwab24BitData_cold_1();
  }

  return TIFFSwabArrayOfTriples(a2, a3 / 3);
}

__int32 *_TIFFSwab32BitData(uint64_t a1, __int32 *a2, uint64_t a3, uint8x8_t a4)
{
  if ((a3 & 3) != 0)
  {
    _TIFFSwab32BitData_cold_1();
  }

  return TIFFSwabArrayOfLong(a2, a3 >> 2, a4);
}

int8x8_t *_TIFFSwab64BitData(uint64_t a1, int8x8_t *a2, uint64_t a3)
{
  if ((a3 & 7) != 0)
  {
    _TIFFSwab64BitData_cold_1();
  }

  return TIFFSwabArrayOfLong8(a2, a3 >> 3);
}

uint64_t TIFFReadAndRealloc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v10 = a3 + a2;
  v11 = a1 + 1120;
  v12 = 0x100000;
  do
  {
    if (a2 <= v9)
    {
      return 1;
    }

    v14 = v12 < 1048576000 && a2 - v9 >= v12;
    v15 = *(a1 + 1128);
    v16 = v10 > v15;
    if (v14 && v16)
    {
      v17 = 10 * v12;
    }

    else
    {
      v17 = v12;
    }

    if (v14 && v16)
    {
      v18 = v12;
    }

    else
    {
      v18 = a2 - v9;
    }

    v19 = v9 + a3 + v18;
    if (v19 <= v15)
    {
      result = *v11;
      if (!*v11)
      {
        return result;
      }
    }

    else
    {
      if ((*(a1 + 17) & 2) == 0)
      {
        TIFFReadAndRealloc_cold_1();
      }

      v20 = (v19 + 1023) & 0xFFFFFFFFFFFFFC00;
      *(a1 + 1128) = v20;
      if (!v20)
      {
        TIFFErrorExtR(a1, a6, "Invalid buffer size");
        return 0;
      }

      result = malloc_type_realloc(*v11, v20, 0x100004077774924uLL);
      if (!result)
      {
        TIFFErrorExtR(a1, a6, "No space for data buffer at scanline %u", *(a1 + 876));
        free(*(a1 + 1120));
        result = 0;
        *v11 = 0;
        *(v11 + 8) = 0;
        return result;
      }

      *v11 = result;
    }

    v22 = (*(a1 + 1208))(*(a1 + 1200), result + a3 + v9, v18);
    v9 += v22;
    v12 = v17;
  }

  while (v22 == v18);
  bzero((*(a1 + 1120) + a3 + v9), *(a1 + 1128) - a3 - v9);
  if (a4)
  {
    TIFFErrorExtR(a1, a6, "Read error at scanline %u; got %lld bytes, expected %lld");
  }

  else
  {
    TIFFErrorExtR(a1, a6, "Read error at row %u, col %u, tile %u; got %lld bytes, expected %lld");
  }

  return 0;
}

void IIO_Reader_WebP::~IIO_Reader_WebP(IIO_Reader_WebP *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t IIO_Reader_WebP::validateVP8_VP8L(IIO_Reader_WebP *this, IIOScanner *a2, unsigned int a3, int a4)
{
  v4 = *(a2 + 3);
  if (v4 + a3 - 8 > *(a2 + 2))
  {
    IIO_Reader_WebP::validateVP8_VP8L();
    return 1;
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  WebPGetFeaturesInternal(*(a2 + 1) + v4 - 8, a3, v12, 521);
  if (*(this + 116) == 1)
  {
    ++*(this + (a4 != 1448097824) + 22);
    if (a4 == 1448097868 && *(this + 117) == 1)
    {
      _cg_jpeg_mem_term("validateVP8_VP8L", 90, "ERROR: VP8L and ALPH sub-chunks in ANMF are not allowed\n");
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    if (*&v12[0] != *(this + 108))
    {
      _cg_jpeg_mem_term("validateVP8_VP8L", 95, "ERROR: frame size VP8/VP8L sub-chunk does not match ANMF header frame size\n");
      v11 = *(this + 119);
      v10 = this + 119;
      if ((v11 & 1) == 0)
      {
LABEL_19:
        result = 0;
        *v10 = 1;
        return result;
      }

LABEL_18:
      _cg_jpeg_mem_term("validateVP8_VP8L", 101, "ERROR: more than one VP8/VP8L chunks in ANMF are not allowed\n");
      goto LABEL_19;
    }

    if (*(this + 119))
    {
      v10 = this + 119;
      goto LABEL_18;
    }

    *(this + 119) = 1;
    if (v7)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (*(this + 13) || *(this + 14))
  {
    _cg_jpeg_mem_term("validateVP8_VP8L", 111, "*** ERROR: multiple VP8/VP8L chunks not allowed\n");
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  if (*(this + 17) || *(this + 18))
  {
    _cg_jpeg_mem_term("validateVP8_VP8L", 117, "*** ERROR: VP8/VP8L and ANIM/ANMF chunks are not allowed\n");
    return 0;
  }

  if (!v8)
  {
    return 0;
  }

LABEL_24:
  ++*(this + 26);
  return 1;
}

uint64_t IIO_Reader_WebP::validateALPH(IIO_Reader_WebP *this, IIOScanner *a2)
{
  if (*(this + 116) == 1)
  {
    ++*(this + 24);
    v3 = *(this + 118);
    if (v3 == 1)
    {
      _cg_jpeg_mem_term("validateALPH", 153, "*** ERROR: more than one ALPH sub-chunks in an ANMF chunk\n");
    }

    *(this + 118) = 1;
    if (*(this + 119) == 1)
    {
      v4 = "*** ERROR: ALPHA sub-chunk detected after VP8 sub-chunk in an ANMF chunk\n";
      v5 = 160;
LABEL_15:
      _cg_jpeg_mem_term("validateALPH", v5, v4);
      return 0;
    }

    return v3 ^ 1u;
  }

  else
  {
    if (*(this + 17) || *(this + 18))
    {
      _cg_jpeg_mem_term("validateALPH", 168, "*** ERROR: ALPHA chunk and ANIM/ANMF chunk are both detected\n");
      result = 0;
    }

    else
    {
      result = 1;
    }

    if (!*(this + 15))
    {
      _cg_jpeg_mem_term("validateALPH", 173, "*** ERROR: ALPHA chunk detected before VP8X chunk\n");
      result = 0;
    }

    if (*(this + 13))
    {
      _cg_jpeg_mem_term("validateALPH", 178, "*** ERROR: ALPHA chunk detected after VP8 chunk\n");
      result = 0;
    }

    if (*(this + 16))
    {
      v4 = "*** ERROR: Multiple ALPHA chunks detected\n";
      v5 = 183;
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t IIO_Reader_WebP::validateANMF(IIO_Reader_WebP *this, IIOScanner *a2, unsigned int a3)
{
  v6 = *(this + 116);
  if (v6 == 1)
  {
    _cg_jpeg_mem_term("validateANMF", 211, "ERROR: nested ANMF chunks are not allowed\n");
  }

  if (*(this + 17))
  {
    v7 = v6 ^ 1u;
  }

  else
  {
    _cg_jpeg_mem_term("validateANMF", 216, "*** ERROR: ANMF without ANIM are not allowed\n");
    v7 = 0;
  }

  if (a3 > 0x10)
  {
    IIOScanner::getVal24(a2);
    IIOScanner::getVal24(a2);
    *(this + 27) = IIOScanner::getVal24(a2) + 1;
    *(this + 28) = IIOScanner::getVal24(a2) + 1;
    IIOScanner::getVal24(a2);
    *(this + 11) = 0;
    *(this + 24) = 0;
    *(this + 59) = 0;
  }

  else
  {
    _cg_jpeg_mem_term("validateANMF", 232, "*** ERROR: ANMF chunk size too small (%d)\n");
    v7 = 0;
  }

  *(this + 116) = 1;
  return v7;
}

BOOL IIO_Reader_WebP::validateICCP(IIO_Reader_WebP *this, IIOScanner *a2)
{
  v3 = *(this + 15);
  v4 = v3 != 0;
  if (!v3)
  {
    _cg_jpeg_mem_term("validateICCP", 260, "*** ERROR: ICCP chunk detected before VP8X chunk.");
  }

  if (*(this + 13) || *(this + 14) || *(this + 17))
  {
    _cg_jpeg_mem_term("validateICCP", 267, "*** ERROR: ICCP chunk detected after image data.");
    return 0;
  }

  return v4;
}