uint64_t sub_298B78140(uint64_t *a1, uint64_t a2, unint64_t *a3, unsigned int *a4, _BYTE *a5, unsigned int a6, unint64_t a7, uint64_t *a8, unint64_t *a9)
{
  v107 = *MEMORY[0x29EDCA608];
  v10 = *(a3 + 3);
  if (v10 <= 0x37)
  {
    v86[0] = "load command ";
    v87 = a6;
    v88 = 2307;
    v89[0] = v86;
    v90 = " ";
    v91 = 770;
    v92[0] = v89;
    v93 = "LC_SEGMENT";
    v94 = 770;
    v95[0] = v92;
    v96 = " cmdsize too small";
    v97 = 770;
    v103 = "truncated or malformed object (";
    *(&v104 + 1) = v95;
    v105.i16[4] = 515;
    v11 = &v103;
LABEL_17:
    *__s = v11;
    *&__s[16] = ")";
LABEL_18:
    v100.i16[0] = 770;
    operator new();
  }

  v12 = *a3;
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  if (*a3 < v13 || *a3 + 56 > v13 + v14)
  {
    v103 = "truncated or malformed object (";
    *(&v104 + 1) = "Structure read out-of-range";
    v105.i16[4] = 771;
    v16 = &v103;
LABEL_9:
    *__s = v16;
    *&__s[16] = ")";
    goto LABEL_18;
  }

  v18 = *v12;
  v17 = *(v12 + 4);
  v19 = *(v12 + 24);
  v20 = *(v12 + 40);
  v21 = *(a2 + 8);
  if (v21 <= 0x14 && ((1 << v21) & 0x155800) != 0)
  {
    v18 = bswap32(v18);
    v17 = bswap32(v17);
    v19 = vrev32q_s8(v19);
    v20 = vrev32q_s8(v20);
  }

  v103 = (v18 | (v17 << 32));
  v104 = *(v12 + 8);
  v105 = v19;
  v106 = v20;
  v22 = v20.i32[2];
  if (v20.i32[2] > 0x3C3C3C3u || 68 * v20.i32[2] > v10 - 56)
  {
    v83[0] = "load command ";
    v84 = a6;
    v85 = 2307;
    v86[0] = v83;
    v87 = " inconsistent cmdsize in ";
    v88 = 770;
    v89[0] = v86;
    v90 = "LC_SEGMENT";
    v91 = 770;
    v23 = " for the number of sections";
LABEL_16:
    v92[0] = v89;
    v93 = v23;
    v94 = 770;
    v95[0] = "truncated or malformed object (";
    v96 = v92;
    v97 = 515;
    v11 = v95;
    goto LABEL_17;
  }

  v67 = v19;
  v69 = v19.u32[2];
  if (v20.i32[2])
  {
    v24 = 0;
    v68 = v19.u32[0] + v19.u32[1];
    while (1)
    {
      v25 = a3;
      v26 = *a3;
      v27 = a2;
      v28 = (*(*a2 + 64))(a2);
      if (v28)
      {
        v29 = 80;
      }

      else
      {
        v29 = 68;
      }

      if (v28)
      {
        v30 = 72;
      }

      else
      {
        v30 = 56;
      }

      v31 = a4;
      v32 = a4[2];
      if (v32 >= a4[3])
      {
        sub_298B90A44(a4, a4 + 4, v32 + 1, 8);
        v31 = a4;
        v32 = a4[2];
      }

      v33 = v30 + v26 + (v29 * v24);
      *(*v31 + 8 * v32) = v33;
      ++v31[2];
      v34 = *(v27 + 16);
      if (v34 > v33 || v33 + 68 > v34 + *(v27 + 24))
      {
        break;
      }

      v36 = *(v33 + 32);
      v37 = *(v33 + 48);
      v38 = *(v33 + 64);
      v39 = *(v27 + 8);
      if (v39 <= 0x14 && ((1 << v39) & 0x155800) != 0)
      {
        v36 = vrev32q_s8(v36);
        v37 = vrev32q_s8(v37);
        v38 = bswap32(v38);
      }

      *__s = *v33;
      *&__s[8] = *(v33 + 8);
      v99 = *(v33 + 24);
      v100 = v36;
      v101 = v37;
      v102 = v38;
      v40 = *(v27 + 60);
      if (v40 == 9)
      {
        if (v67.i32[1])
        {
          if (v36.i32[1] && v36.u32[1] + v36.u32[0] > v68)
          {
            goto LABEL_124;
          }
        }
      }

      else
      {
        v44 = v37.i32[2] != 1 && v37.i32[2] != 18 && v40 != 10;
        v45 = !v44 || v14 >= v36.u32[2];
        v46 = a6;
        if (!v45)
        {
          v63 = "offset field of section ";
          goto LABEL_130;
        }

        if (v69)
        {
          v47 = 0;
        }

        else
        {
          v47 = v44;
        }

        if (v47 && v36.u32[2] < a7 && v36.i32[1] != 0)
        {
          v74[0] = "offset field of section ";
          v75 = v24;
          v76 = 2307;
          v77[0] = v74;
          v78 = " in ";
          v79 = 770;
          v80[0] = v77;
          v81 = "LC_SEGMENT";
          v82 = 770;
          v83[0] = v80;
          v84 = " command ";
          v85 = 770;
          v86[0] = v83;
          v87 = a6;
          v88 = 2306;
          v64 = " not past the headers of the file";
          goto LABEL_132;
        }

        if (v36.u32[1] + v36.u32[2] > v14 && v44)
        {
          v63 = "offset field plus size field of section ";
LABEL_130:
          v74[0] = v63;
          v75 = v24;
          v76 = 2307;
          v77[0] = v74;
          v78 = " in ";
          v79 = 770;
          v80[0] = v77;
          v81 = "LC_SEGMENT";
          v82 = 770;
          v83[0] = v80;
          v84 = " command ";
          v85 = 770;
LABEL_131:
          v86[0] = v83;
          v87 = v46;
          v88 = 2306;
          v64 = " extends past the end of the file";
LABEL_132:
          v89[0] = v86;
          v90 = v64;
          v91 = 770;
          v92[0] = "truncated or malformed object (";
          v93 = v89;
          v94 = 515;
          v95[0] = v92;
          v96 = ")";
          v97 = 770;
          operator new();
        }

        if (v36.i32[1] > v67.i32[3] && v44)
        {
          v74[0] = "size field of section ";
          v75 = v24;
          v76 = 2307;
          v77[0] = v74;
          v78 = " in ";
          v79 = 770;
          v80[0] = v77;
          v81 = "LC_SEGMENT";
          v82 = 770;
          v83[0] = v80;
          v84 = " command ";
          v85 = 770;
          v86[0] = v83;
          v87 = a6;
          v88 = 2306;
          v64 = " greater than the segment";
          goto LABEL_132;
        }

        v52 = v36.i32[1];
        if (v40 != 10 && v36.i32[1])
        {
          if (vmovn_s32(vcgtq_u32(v67, v36)).u8[0])
          {
            v74[0] = "addr field of section ";
            v75 = v24;
            v76 = 2307;
            v77[0] = v74;
            v78 = " in ";
            v79 = 770;
            v80[0] = v77;
            v81 = "LC_SEGMENT";
            v82 = 770;
            v83[0] = v80;
            v84 = " command ";
            v85 = 770;
            v86[0] = v83;
            v87 = a6;
            v88 = 2306;
            v64 = " less than the segment's vmaddr";
            goto LABEL_132;
          }

          v52 = 1;
        }

        if (v67.i32[1])
        {
          if (v52 && v36.u32[1] + v36.u32[0] > v68)
          {
LABEL_124:
            v74[0] = "addr field plus size of section ";
            v75 = v24;
            v76 = 2307;
            v77[0] = v74;
            v78 = " in ";
            v79 = 770;
            v80[0] = v77;
            v81 = "LC_SEGMENT";
            v82 = 770;
            v83[0] = v80;
            v84 = " command ";
            v85 = 770;
            v86[0] = v83;
            v87 = a6;
            v88 = 2306;
            v64 = " greater than than the segment's vmaddr plus vmsize";
            goto LABEL_132;
          }
        }

        if (v44)
        {
          v66 = v37.i64[0];
          result = sub_298B7EF50(a1, a8, v36.u32[2], v36.u32[1], "section contents");
          v37.i64[0] = v66;
          if (*a1)
          {
            return result;
          }
        }
      }

      if (v14 < v37.u32[0])
      {
        v62 = "reloff field of section ";
LABEL_127:
        v74[0] = v62;
        v75 = v24;
        v76 = 2307;
        v77[0] = v74;
        v78 = " in ";
        v79 = 770;
        v80[0] = v77;
        v81 = "LC_SEGMENT";
        v82 = 770;
        v83[0] = v80;
        v84 = " command ";
        v85 = 770;
        v46 = a6;
        goto LABEL_131;
      }

      v55 = 8 * v37.u32[1];
      if (v55 + v37.u32[0] > v14)
      {
        v62 = "reloff field plus nreloc field times sizeof(struct relocation_info) of section ";
        goto LABEL_127;
      }

      result = sub_298B7EF50(a1, a8, v37.u32[0], v55, "section relocation entries");
      if (*a1)
      {
        return result;
      }

      if (strlen(&__s[16]) == 6)
      {
        v56 = *&__s[16] == 1163157343 && *&__s[20] == 21592;
        if (v56 && strlen(__s) == 14 && *__s == 0x5F6E696168635F5FLL && *&__s[6] == 0x7374726174735F6ELL)
        {
          *a9 = v33;
        }
      }

      ++v24;
      a3 = v25;
      a2 = v27;
      if (v22 == v24)
      {
        goto LABEL_107;
      }
    }

    v95[0] = "truncated or malformed object (";
    v96 = "Structure read out-of-range";
    v97 = 771;
    v16 = v95;
    goto LABEL_9;
  }

LABEL_107:
  if (v14 < v69)
  {
    v83[0] = "load command ";
    v84 = a6;
    v85 = 2307;
    v58 = " fileoff field in ";
LABEL_111:
    v86[0] = v83;
    v87 = v58;
    v88 = 770;
    v89[0] = v86;
    v90 = "LC_SEGMENT";
    v91 = 770;
    v23 = " extends past the end of the file";
    goto LABEL_16;
  }

  if (v69 + v67.u32[3] > v14)
  {
    v83[0] = "load command ";
    v84 = a6;
    v85 = 2307;
    v58 = " fileoff field plus filesize field in ";
    goto LABEL_111;
  }

  if (v67.i32[1])
  {
    v59 = v67.i32[3] > v67.i32[1];
  }

  else
  {
    v59 = 0;
  }

  if (v59)
  {
    v83[0] = "load command ";
    v84 = a6;
    v85 = 2307;
    v86[0] = v83;
    v87 = " filesize field in ";
    v88 = 770;
    v89[0] = v86;
    v90 = "LC_SEGMENT";
    v91 = 770;
    v23 = " greater than vmsize field";
    goto LABEL_16;
  }

  result = strlen(&v104);
  v61 = result == 10 && v104 == 0x455A454741505F5FLL && WORD4(v104) == 20306;
  *a5 |= v61;
  *a1 = 0;
  return result;
}

uint64_t *sub_298B78C84(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  result = sub_298B78D28(a1, a2, a3, a4, "LC_ID_DYLIB");
  if (!*a1)
  {
    if (*a5)
    {
      v12 = "more than one LC_ID_DYLIB command";
LABEL_10:
      v13 = v12;
      v14 = 259;
      sub_298B76A80(&v13);
    }

    v10 = *(a2 + 60);
    if (v10 != 6 && v10 != 9)
    {
      v12 = "LC_ID_DYLIB load command in non-dynamic library file type";
      goto LABEL_10;
    }

    *a5 = *a3;
    *a1 = 0;
  }

  return result;
}

uint64_t *sub_298B78D28(uint64_t *result, uint64_t a2, unint64_t *a3, int a4, _BYTE *a5)
{
  if (*(a3 + 3) <= 0x17u)
  {
    v39[0] = "load command ";
    v40 = 259;
    v38 = 265;
    LODWORD(v37[0]) = a4;
    sub_298ADC860(v39, v37, v41);
    v35[0] = " ";
    v36 = 259;
    sub_298ADC860(v41, v35, v42);
    v29 = 1;
    v34 = 1;
    if (*a5)
    {
      v32[0] = a5;
      v29 = 3;
    }

    v33 = v29;
    sub_298ADC860(v42, v32, v43);
    v23 = " cmdsize too small";
LABEL_25:
    v30 = v23;
    v31 = 259;
LABEL_26:
    sub_298ADC860(v43, &v30, v45);
    sub_298B76A80(v45);
  }

  v5 = *a3;
  v6 = *(a2 + 16);
  v7 = *a3 + 24;
  v8 = v6 + *(a2 + 24);
  if (*a3 >= v6)
  {
    v9 = v7 >= v8;
    v10 = v7 == v8;
  }

  else
  {
    v9 = 1;
    v10 = 0;
  }

  if (!v10 && v9)
  {
    v43[0] = "truncated or malformed object (";
    v43[2] = "Structure read out-of-range";
    v44 = 771;
    v45[0] = v43;
    v45[2] = ")";
    v46 = 770;
    operator new();
  }

  v11 = *(v5 + 4);
  v12 = *(v5 + 8);
  v13 = *(a2 + 8);
  v9 = v13 >= 0x14;
  v10 = v13 == 20;
  v14 = (1 << v13) & 0x155800;
  v15 = !v10 && v9 || v14 == 0;
  v16 = bswap32(v11);
  v17 = bswap32(v12);
  if (!v15)
  {
    v12 = v17;
    v11 = v16;
  }

  if (v12 <= 0x17)
  {
    v39[0] = "load command ";
    v40 = 259;
    v38 = 265;
    LODWORD(v37[0]) = a4;
    sub_298ADC860(v39, v37, v41);
    v35[0] = " ";
    v36 = 259;
    sub_298ADC860(v41, v35, v42);
    v27 = 1;
    v34 = 1;
    if (*a5)
    {
      v32[0] = a5;
      v27 = 3;
    }

    v33 = v27;
    sub_298ADC860(v42, v32, v43);
    v30 = " name.offset field too small, not past the end of the dylib_command struct";
    v31 = 259;
    goto LABEL_26;
  }

  v9 = v11 >= v12;
  v18 = v11 - v12;
  if (v18 == 0 || !v9)
  {
    v39[0] = "load command ";
    v40 = 259;
    v38 = 265;
    LODWORD(v37[0]) = a4;
    sub_298ADC860(v39, v37, v41);
    v35[0] = " ";
    v36 = 259;
    sub_298ADC860(v41, v35, v42);
    v25 = 1;
    v34 = 1;
    if (*a5)
    {
      v32[0] = a5;
      v25 = 3;
    }

    v33 = v25;
    sub_298ADC860(v42, v32, v43);
    v23 = " name.offset field extends past the end of the load command";
    goto LABEL_25;
  }

  v19 = (v5 + v12);
  while (*v19++)
  {
    if (!--v18)
    {
      v39[0] = "load command ";
      v40 = 259;
      v38 = 265;
      LODWORD(v37[0]) = a4;
      sub_298ADC860(v39, v37, v41);
      v35[0] = " ";
      v36 = 259;
      sub_298ADC860(v41, v35, v42);
      v22 = 1;
      v34 = 1;
      if (*a5)
      {
        v32[0] = a5;
        v22 = 3;
      }

      v33 = v22;
      sub_298ADC860(v42, v32, v43);
      v23 = " library name extends past the end of the load command";
      goto LABEL_25;
    }
  }

  *result = 0;
  return result;
}

uint64_t sub_298B790A0(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, _BYTE *a5)
{
  v36 = *MEMORY[0x29EDCA608];
  if (*(a3 + 12) <= 0xBu)
  {
    v27[0] = "load command ";
    v28 = 259;
    v26 = 265;
    LODWORD(v25[0]) = a4;
    sub_298ADC860(v27, v25, v29);
    v23[0] = " ";
    v24 = 259;
    sub_298ADC860(v29, v23, v30);
    v16 = 1;
    v22 = 1;
    if (*a5)
    {
      v20[0] = a5;
      v16 = 3;
    }

    v21 = v16;
    sub_298ADC860(v30, v20, v31);
    v14 = " cmdsize too small";
LABEL_16:
    v18 = v14;
    v19 = 259;
    sub_298ADC860(v31, &v18, v32);
    sub_298B76A80(v32);
  }

  result = sub_298B7F278(&v33, a2, *a3);
  if (v35)
  {
    *a1 = v33;
    return result;
  }

  if (v34 <= 0xB)
  {
    v27[0] = "load command ";
    v28 = 259;
    v26 = 265;
    LODWORD(v25[0]) = a4;
    sub_298ADC860(v27, v25, v29);
    v23[0] = " ";
    v24 = 259;
    sub_298ADC860(v29, v23, v30);
    v17 = 1;
    v22 = 1;
    if (*a5)
    {
      v20[0] = a5;
      v17 = 3;
    }

    v21 = v17;
    sub_298ADC860(v30, v20, v31);
    v14 = " name.offset field too small, not past the end of the dylinker_command struct";
    goto LABEL_16;
  }

  if (HIDWORD(v33) <= v34)
  {
    v27[0] = "load command ";
    v28 = 259;
    v26 = 265;
    LODWORD(v25[0]) = a4;
    sub_298ADC860(v27, v25, v29);
    v23[0] = " ";
    v24 = 259;
    sub_298ADC860(v29, v23, v30);
    v15 = 1;
    v22 = 1;
    if (*a5)
    {
      v20[0] = a5;
      v15 = 3;
    }

    v21 = v15;
    sub_298ADC860(v30, v20, v31);
    v14 = " name.offset field extends past the end of the load command";
    goto LABEL_16;
  }

  v10 = (*a3 + v34);
  v11 = HIDWORD(v33) - v34;
  while (*v10++)
  {
    if (!--v11)
    {
      v27[0] = "load command ";
      v28 = 259;
      v26 = 265;
      LODWORD(v25[0]) = a4;
      sub_298ADC860(v27, v25, v29);
      v23[0] = " ";
      v24 = 259;
      sub_298ADC860(v29, v23, v30);
      v13 = 1;
      v22 = 1;
      if (*a5)
      {
        v20[0] = a5;
        v13 = 3;
      }

      v21 = v13;
      sub_298ADC860(v30, v20, v31);
      v14 = " dyld name extends past the end of the load command";
      goto LABEL_16;
    }
  }

  *a1 = 0;
  return result;
}

void *sub_298B793B8(void *result, uint64_t a2, int a3, unsigned int a4, void *a5, _BYTE *a6)
{
  if (a3 != 16)
  {
    v11[0] = "load command ";
    v11[2] = a4;
    v12 = 2307;
    *&v13 = v11;
    *&v14 = " ";
    LOWORD(v15) = 770;
    if (*a6)
    {
      v6 = &v13;
      *&v16 = &v13;
      *&v17 = a6;
      LOWORD(v18) = 770;
      v7 = 2;
      v8 = &v16;
    }

    else
    {
      v16 = v13;
      v17 = v14;
      v18 = v15;
      v7 = v15;
      if (v15 == 1)
      {
        v10 = " has incorrect cmdsize";
        v19[0] = " has incorrect cmdsize";
        v20 = 259;
        v9 = 3;
        goto LABEL_7;
      }

      v6 = *(&v16 + 1);
      v8 = &v16;
      if (BYTE1(v18) == 1)
      {
        v8 = v16;
      }

      else
      {
        v7 = 2;
      }
    }

    v19[0] = v8;
    v19[1] = v6;
    v19[2] = " has incorrect cmdsize";
    LOBYTE(v20) = v7;
    HIBYTE(v20) = 3;
    v9 = 2;
    v10 = v19;
LABEL_7:
    v21[0] = "truncated or malformed object (";
    v22 = v10;
    LOBYTE(v23) = 3;
    HIBYTE(v23) = v9;
    v24 = v21;
    v25 = ")";
    v26 = 770;
LABEL_8:
    operator new();
  }

  if (*a5)
  {
    v21[0] = "truncated or malformed object (";
    v22 = "more than one LC_VERSION_MIN_MACOSX, LC_VERSION_MIN_IPHONEOS, LC_VERSION_MIN_TVOS or LC_VERSION_MIN_WATCHOS command";
    v23 = 771;
    v24 = v21;
    v25 = ")";
    v26 = 770;
    goto LABEL_8;
  }

  *a5 = a2;
  *result = 0;
  return result;
}

uint64_t *sub_298B795A4(uint64_t *a1, uint64_t a2, unint64_t a3, int a4, unsigned int a5, uint64_t *a6)
{
  if (a4 != 40)
  {
    v20 = "load command ";
    v21 = a5;
    v22 = 2307;
    v9 = " LC_NOTE has incorrect cmdsize";
LABEL_23:
    v23[0] = &v20;
    v23[2] = v9;
    v24 = 770;
    v25[0] = "truncated or malformed object (";
    v26 = v23;
    v27 = 515;
    v28 = v25;
    v29 = ")";
LABEL_24:
    v30 = 770;
    operator new();
  }

  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = v7 > a3 || a3 + 40 > v7 + v6;
  if (v8)
  {
    v25[0] = "truncated or malformed object (";
    v26 = "Structure read out-of-range";
    v27 = 771;
    v28 = v25;
    v29 = ")";
    goto LABEL_24;
  }

  v10 = *(a2 + 8);
  v8 = v10 > 0x14;
  v11 = (1 << v10) & 0x155800;
  v12 = v8 || v11 == 0;
  v13 = bswap64(*(a3 + 24));
  v14 = bswap64(*(a3 + 32));
  if (v12)
  {
    v15 = *(a3 + 32);
  }

  else
  {
    v15 = v14;
  }

  if (v12)
  {
    v16 = *(a3 + 24);
  }

  else
  {
    v16 = v13;
  }

  if (v16 > v6)
  {
    v17 = a5;
    v18 = "offset field of LC_NOTE command ";
LABEL_22:
    v20 = v18;
    v21 = v17;
    v22 = 2307;
    v9 = " extends past the end of the file";
    goto LABEL_23;
  }

  if (v16 + v15 > v6)
  {
    v17 = a5;
    v18 = "size field plus offset field of LC_NOTE command ";
    goto LABEL_22;
  }

  return sub_298B7EF50(a1, a6, v16, v15, "LC_NOTE data");
}

void sub_298B7976C(uint64_t *a1, uint64_t a2, unint64_t *a3, _DWORD *a4, int a5, int a6, uint64_t a7, unint64_t *a8)
{
  v9 = *a3;
  v10 = *(a2 + 16);
  if (*a3 < v10 || v9 + 24 > v10 + *(a2 + 24))
  {
    v31 = "Structure read out-of-range";
    goto LABEL_31;
  }

  v13 = *(v9 + 20);
  v14 = *(a2 + 8);
  v33 = v14 > 0x14;
  v15 = (1 << v14) & 0x155800;
  v16 = v33 || v15 == 0;
  v17 = bswap32(*(v9 + 8));
  v18 = bswap32(v13);
  if (v16)
  {
    v19 = v13;
  }

  else
  {
    v19 = v18;
  }

  if (v16)
  {
    v20 = *(v9 + 8);
  }

  else
  {
    v20 = v17;
  }

  if (8 * v19 + 24 != *(a3 + 3))
  {
    v49[0] = "load command ";
    v50 = 259;
    v48 = 265;
    LODWORD(v47[0]) = a5;
    sub_298ADC860(v49, v47, v51);
    v40 = " LC_BUILD_VERSION_COMMAND has incorrect cmdsize";
    goto LABEL_62;
  }

  v22 = a4[2];
  if (v22 != v19)
  {
    if (v22 <= v19)
    {
      if (a4[3] < v19)
      {
        v23 = a5;
        v41 = v20;
        v24 = a6;
        v43 = a7;
        v25 = a8;
        sub_298B90A44(a4, a4 + 4, v19, 8);
        a8 = v25;
        a7 = v43;
        a6 = v24;
        v20 = v41;
        a5 = v23;
        v22 = a4[2];
      }

      if (v22 != v19)
      {
        v26 = a5;
        v42 = v20;
        v27 = a6;
        v44 = a7;
        v28 = a8;
        bzero((*a4 + 8 * v22), 8 * (v19 - v22));
        a8 = v28;
        a7 = v44;
        a6 = v27;
        v20 = v42;
        a5 = v26;
      }
    }

    a4[2] = v19;
  }

  if (v19)
  {
    **a4 = v9 + 24;
    if (v19 != 1)
    {
      *(*a4 + 8) = v9 + 32;
      if (v19 != 2)
      {
        v29 = v9 + 40;
        for (i = 2; i != v19; ++i)
        {
          *(*a4 + 8 * i) = v29;
          v29 += 8;
        }
      }
    }
  }

  if (!*a7)
  {
    *a7 = *a3;
    if ((a6 & 0x8000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

  if ((a6 & 0x8000000) == 0 && *a8)
  {
    v31 = "more than two LC_BUILD_VERSION load commands";
LABEL_31:
    v52[0] = v31;
    v53 = 259;
    goto LABEL_32;
  }

  *a8 = *a3;
  v32 = *(a2 + 16);
  v33 = *a7 < v32 || *a7 + 24 > v32 + *(a2 + 24);
  if (v33)
  {
    sub_298B868A8("Malformed MachO file.", 1);
  }

  v34 = *(*a7 + 8);
  v35 = *(a2 + 8);
  v36 = bswap32(v34);
  if (((1 << v35) & 0x155800) == 0)
  {
    v36 = *(*a7 + 8);
  }

  if (v35 <= 0x14)
  {
    v34 = v36;
  }

  if ((v34 == 6 || v34 == 1) && (v34 != 1 || v20 == 6) && (v34 != 6 || v20 == 1))
  {
    goto LABEL_27;
  }

  if ((a6 & 0x8000000) == 0)
  {
    v31 = "the two LC_BUILD_VERSION load commands are not for the platforms MACOS and MACCATALYST";
    goto LABEL_31;
  }

LABEL_59:
  if (v20 - 6 >= 4 && v20 != 1)
  {
    v49[0] = "the LC_BUILD_VERSION, command ";
    v50 = 259;
    v48 = 265;
    LODWORD(v47[0]) = a5;
    sub_298ADC860(v49, v47, v51);
    v40 = ", platform value is not allowed when the mach header flag MH_SIM_SUPPORT is set";
LABEL_62:
    v45 = v40;
    v46 = 259;
    sub_298ADC860(v51, &v45, v52);
LABEL_32:
    sub_298B76A80(v52);
  }

LABEL_27:
  *a1 = 0;
}

uint64_t sub_298B79AA8(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v23 = *MEMORY[0x29EDCA608];
  if (*(a3 + 12) <= 0xBu)
  {
    v16[0] = "load command ";
    v17 = 259;
    v15 = 265;
    LODWORD(v14[0]) = a4;
    sub_298ADC860(v16, v14, v18);
    v11 = " LC_RPATH cmdsize too small";
    goto LABEL_12;
  }

  result = sub_298B7F33C(&v20, a2, *a3);
  if (v22)
  {
    *a1 = v20;
    return result;
  }

  if (v21 <= 0xB)
  {
    v16[0] = "load command ";
    v17 = 259;
    v15 = 265;
    LODWORD(v14[0]) = a4;
    sub_298ADC860(v16, v14, v18);
    v11 = " LC_RPATH path.offset field too small, not past the end of the rpath_command struct";
LABEL_12:
    v12 = v11;
    v13 = 259;
    sub_298ADC860(v18, &v12, v19);
    sub_298B76A80(v19);
  }

  if (HIDWORD(v20) <= v21)
  {
    v16[0] = "load command ";
    v17 = 259;
    v15 = 265;
    LODWORD(v14[0]) = a4;
    sub_298ADC860(v16, v14, v18);
    v11 = " LC_RPATH path.offset field extends past the end of the load command";
    goto LABEL_12;
  }

  v8 = (*a3 + v21);
  v9 = HIDWORD(v20) - v21;
  while (*v8++)
  {
    if (!--v9)
    {
      v16[0] = "load command ";
      v17 = 259;
      v15 = 265;
      LODWORD(v14[0]) = a4;
      sub_298ADC860(v16, v14, v18);
      v11 = " LC_RPATH library name extends past the end of the load command";
      goto LABEL_12;
    }
  }

  *a1 = 0;
  return result;
}

int8x16_t sub_298B79C84(int8x16_t *a1, uint64_t a2, int8x16_t *a3)
{
  v3 = *(a2 + 16);
  v4 = v3 > a3 || a3[1].u64 + 4 > v3 + *(a2 + 24);
  if (v4)
  {
    sub_298B868A8("Malformed MachO file.", 1);
  }

  result = *a3;
  *a1 = *a3;
  a1[1].i32[0] = a3[1].i32[0];
  v6 = *(a2 + 8);
  v4 = v6 > 0x14;
  v7 = (1 << v6) & 0x155800;
  if (!v4 && v7 != 0)
  {
    result = vrev32q_s8(*a1);
    *a1 = result;
    a1[1].i32[0] = bswap32(a1[1].u32[0]);
  }

  return result;
}

void *sub_298B79D08(void *result, unint64_t a2, uint64_t a3, unsigned int a4, unint64_t a5, uint64_t a6, void *a7)
{
  if (*a7)
  {
    v16[0] = "truncated or malformed object (";
    v17 = "more than one LC_ENCRYPTION_INFO and or LC_ENCRYPTION_INFO_64 command";
    v18 = 771;
    v19 = v16;
    v20 = ")";
    goto LABEL_8;
  }

  if (a2 < a5)
  {
    v7 = "cryptoff field of ";
LABEL_7:
    v8[0] = v7;
    v8[2] = "LC_ENCRYPTION_INFO";
    v9 = 771;
    v10[0] = v8;
    v10[2] = " command ";
    v11 = 770;
    v12[0] = v10;
    v12[2] = a4;
    v13 = 2306;
    v14[0] = v12;
    v14[2] = " extends past the end of the file";
    v15 = 770;
    v16[0] = "truncated or malformed object (";
    v17 = v14;
    v18 = 515;
    v19 = v16;
    v20 = ")";
LABEL_8:
    v21 = 770;
    operator new();
  }

  if (a6 + a5 > a2)
  {
    v7 = "cryptoff field plus cryptsize field of ";
    goto LABEL_7;
  }

  *a7 = a3;
  *result = 0;
  return result;
}

void *sub_298B79E74(void *result, uint64_t a2, unint64_t a3, unsigned int a4, unsigned int a5)
{
  v6 = result;
  if (a4 <= 0xB)
  {
    v32[0] = "load command ";
    v33 = a5;
    v34 = 2307;
    v35 = v32;
    v36 = " LC_LINKER_OPTION cmdsize too small";
LABEL_3:
    v37 = 770;
    v38[0] = "truncated or malformed object (";
    v39 = &v35;
    v40 = 515;
    v41 = v38;
    v42 = ")";
    goto LABEL_7;
  }

  v7 = *(a2 + 16);
  if (v7 > a3 || (v8 = (a3 + 12), a3 + 12 > v7 + *(a2 + 24)))
  {
    v38[0] = "truncated or malformed object (";
    v39 = "Structure read out-of-range";
    v40 = 771;
    v41 = v38;
    v42 = ")";
LABEL_7:
    v43 = 770;
    operator new();
  }

  v9 = *(a3 + 4);
  v10 = *(a3 + 8);
  v11 = *(a2 + 8);
  v12 = v11 > 0x14;
  v13 = (1 << v11) & 0x155800;
  v14 = v12 || v13 == 0;
  v15 = bswap32(v9);
  v16 = bswap32(v10);
  if (v14)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  if (!v14)
  {
    v9 = v15;
  }

  LODWORD(v18) = 0;
  v19 = v9 - 12;
  if (v9 != 12)
  {
    while (1)
    {
      if (!*v8)
      {
        do
        {
          v20 = v19;
          v21 = *++v8;
          --v19;
          if (v21)
          {
            v22 = 1;
          }

          else
          {
            v22 = v20 == 1;
          }
        }

        while (!v22);
        if (v20 == 1)
        {
          goto LABEL_29;
        }
      }

      v18 = (v18 + 1);
      result = memchr(v8, 0, v19);
      if (!result)
      {
        break;
      }

      v23 = result - v8;
      if (result - v8 == -1)
      {
        break;
      }

      if (v19 < v23)
      {
        v23 = v19;
      }

      v24 = v23 + 1;
      v8 += v24;
      v19 -= v24;
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    v26[0] = "load command ";
    v27 = a5;
    v28 = 2307;
    v29[0] = v26;
    v30 = " LC_LINKER_OPTION string #";
    v31 = 770;
    v32[0] = v29;
    v33 = v18;
    v34 = 2306;
    v25 = " is not NULL terminated";
    goto LABEL_33;
  }

LABEL_29:
  if (v17 != v18)
  {
    v26[0] = "load command ";
    v27 = a5;
    v28 = 2307;
    v29[0] = v26;
    v30 = " LC_LINKER_OPTION string count ";
    v31 = 770;
    v32[0] = v29;
    v33 = v17;
    v34 = 2306;
    v25 = " does not match number of strings";
LABEL_33:
    v35 = v32;
    v36 = v25;
    goto LABEL_3;
  }

  *v6 = 0;
  return result;
}

uint64_t *sub_298B7A124(uint64_t *result, uint64_t a2, unsigned int a3, int a4, _BYTE *a5, _BYTE *a6, unsigned int a7, _BYTE *a8)
{
  if (a7 <= 0xB)
  {
    v38[0] = "load command ";
    v39 = 259;
    v37 = 265;
    LODWORD(v36[0]) = a4;
    sub_298ADC860(v38, v36, v40);
    v34[0] = " ";
    v35 = 259;
    sub_298ADC860(v40, v34, v42);
    v20 = 1;
    HIBYTE(v33) = 1;
    if (*a5)
    {
      v32[0] = a5;
      v21 = 3;
    }

    else
    {
      v21 = 1;
    }

    LOBYTE(v33) = v21;
    sub_298ADC860(v42, v32, v43);
    v30[0] = " ";
    v31 = 259;
    sub_298ADC860(v43, v30, v44);
    HIBYTE(v29) = 1;
    if (*a8)
    {
      v28[0] = a8;
      v20 = 3;
    }

    LOBYTE(v29) = v20;
    sub_298ADC860(v44, v28, v45);
    v26 = ".offset field too small, not past the end of the ";
    v27 = 259;
    sub_298ADC860(v45, &v26, v46);
    v22 = 1;
    v25 = 1;
    if (*a6)
    {
      v23 = a6;
      v22 = 3;
    }

    v24 = v22;
    v18 = &v23;
    goto LABEL_17;
  }

  v10 = a3 - a7;
  if (a3 <= a7)
  {
    v40[0] = "load command ";
    v41 = 259;
    v39 = 265;
    LODWORD(v38[0]) = a4;
    sub_298ADC860(v40, v38, v42);
    v36[0] = " ";
    v37 = 259;
    sub_298ADC860(v42, v36, v43);
    v16 = 1;
    HIBYTE(v35) = 1;
    if (*a5)
    {
      v34[0] = a5;
      v17 = 3;
    }

    else
    {
      v17 = 1;
    }

    LOBYTE(v35) = v17;
    sub_298ADC860(v43, v34, v44);
    v32[0] = " ";
    v33 = 259;
    sub_298ADC860(v44, v32, v45);
    HIBYTE(v31) = 1;
    if (*a8)
    {
      v30[0] = a8;
      v16 = 3;
    }

    LOBYTE(v31) = v16;
    sub_298ADC860(v45, v30, v46);
    v15 = ".offset field extends past the end of the load command";
LABEL_16:
    v28[0] = v15;
    v29 = 259;
    v18 = v28;
LABEL_17:
    sub_298ADC860(v46, v18, v47);
    sub_298B76A80(v47);
  }

  v11 = (a2 + a7);
  while (*v11++)
  {
    if (!--v10)
    {
      v40[0] = "load command ";
      v41 = 259;
      v39 = 265;
      LODWORD(v38[0]) = a4;
      sub_298ADC860(v40, v38, v42);
      v36[0] = " ";
      v37 = 259;
      sub_298ADC860(v42, v36, v43);
      v13 = 1;
      HIBYTE(v35) = 1;
      if (*a5)
      {
        v34[0] = a5;
        v14 = 3;
      }

      else
      {
        v14 = 1;
      }

      LOBYTE(v35) = v14;
      sub_298ADC860(v43, v34, v44);
      v32[0] = " ";
      v33 = 259;
      sub_298ADC860(v44, v32, v45);
      HIBYTE(v31) = 1;
      if (*a8)
      {
        v30[0] = a8;
        v13 = 3;
      }

      LOBYTE(v31) = v13;
      sub_298ADC860(v45, v30, v46);
      v15 = " name extends past the end of the load command";
      goto LABEL_16;
    }
  }

  *result = 0;
  return result;
}

uint64_t sub_298B7A474(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = v2 > a2 || a2 + 12 > v2 + *(a1 + 24);
  if (v3)
  {
    sub_298B868A8("Malformed MachO file.", 1);
  }

  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  v3 = v5 > 0x14;
  v6 = (1 << v5) & 0x155800;
  v7 = v3 || v6 == 0;
  v8 = bswap32(v4);
  if (v7)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_298B7A4D8(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, _BYTE *a5)
{
  v66 = *MEMORY[0x29EDCA608];
  if (*(a3 + 12) <= 7u)
  {
    v59[0] = "load command ";
    v60 = 259;
    v58 = 265;
    LODWORD(v57[0]) = a4;
    sub_298ADC860(v59, v57, v61);
    v25 = 1;
    HIBYTE(v56) = 1;
    if (*a5)
    {
      v55[0] = a5;
      v25 = 3;
    }

    LOBYTE(v56) = v25;
    sub_298ADC860(v61, v55, v62);
    v53[0] = " cmdsize too small";
    v54 = 259;
    v24 = v53;
    goto LABEL_39;
  }

  result = sub_298B7F400(&v64, a2, *a3);
  if (v65)
  {
    *a1 = v64;
  }

  else
  {
    if (HIDWORD(v64) >= 9)
    {
      v11 = 0;
      v12 = *a3 + HIDWORD(v64);
      v13 = (*a3 + 8);
      v14 = *(a2 + 52);
      while ((v13 + 1) <= v12)
      {
        result = *(a2 + 8);
        v15 = result > 0x14 || ((1 << result) & 0x155800) == 0;
        v16 = bswap32(*v13);
        if (v15)
        {
          v17 = *v13;
        }

        else
        {
          v17 = v16;
        }

        if ((v13 + 2) > v12)
        {
          v57[0] = "load command ";
          v58 = 259;
          v56 = 265;
          LODWORD(v55[0]) = a4;
          sub_298ADC860(v57, v55, v59);
          v21 = " count in ";
          goto LABEL_35;
        }

        v18 = v13[1];
        v19 = bswap32(v18);
        if (((1 << result) & 0x155800) == 0)
        {
          v19 = v13[1];
        }

        if (result <= 0x14)
        {
          v18 = v19;
        }

        if (v14 > 17)
        {
          if (v14 > 16777227)
          {
            if (v14 != 16777228 && v14 != 33554444)
            {
LABEL_66:
              v53[0] = "unknown cputype (";
              v54 = 259;
              v52 = 265;
              LODWORD(v51[0]) = v14;
              sub_298ADC860(v53, v51, v55);
              v49[0] = ") load command ";
              v50 = 259;
              sub_298ADC860(v55, v49, v57);
              v48 = 265;
              LODWORD(v47[0]) = a4;
              sub_298ADC860(v57, v47, v59);
              v45[0] = " for ";
              v46 = 259;
              sub_298ADC860(v59, v45, v61);
              v26 = 1;
              HIBYTE(v44) = 1;
              if (*a5)
              {
                v43[0] = a5;
                v26 = 3;
              }

              LOBYTE(v44) = v26;
              sub_298ADC860(v61, v43, v62);
              v27 = " command can't be checked";
              goto LABEL_89;
            }

            if (v17 == 6)
            {
              if (v18 != 68)
              {
                v53[0] = "load command ";
                v54 = 259;
                v52 = 265;
                LODWORD(v51[0]) = a4;
                sub_298ADC860(v53, v51, v55);
                v49[0] = " count not ARM_THREAD_STATE64_COUNT for flavor number ";
                v50 = 259;
                sub_298ADC860(v55, v49, v57);
                v48 = 265;
                LODWORD(v47[0]) = v11;
                sub_298ADC860(v57, v47, v59);
                v29 = " which is a ARM_THREAD_STATE64 flavor in ";
                goto LABEL_86;
              }

              v13 += 70;
              if (v13 > v12)
              {
                v57[0] = "load command ";
                v58 = 259;
                v56 = 265;
                LODWORD(v55[0]) = a4;
                sub_298ADC860(v57, v55, v59);
                v20 = " ARM_THREAD_STATE64 extends past end of command in ";
                goto LABEL_92;
              }
            }

            else
            {
              if (v17 != 7)
              {
                goto LABEL_73;
              }

              if (v18 != 4)
              {
                v53[0] = "load command ";
                v54 = 259;
                v52 = 265;
                LODWORD(v51[0]) = a4;
                sub_298ADC860(v53, v51, v55);
                v49[0] = " count not ARM_EXCEPTION_STATE64_COUNT for flavor number ";
                v50 = 259;
                sub_298ADC860(v55, v49, v57);
                v48 = 265;
                LODWORD(v47[0]) = v11;
                sub_298ADC860(v57, v47, v59);
                v29 = " which is a ARM_EXCEPTION_STATE64 flavor in ";
LABEL_86:
                v45[0] = v29;
                v46 = 259;
                sub_298ADC860(v59, v45, v61);
                v30 = 1;
                HIBYTE(v44) = 1;
                if (*a5)
                {
                  v43[0] = a5;
                  v30 = 3;
                }

                LOBYTE(v44) = v30;
                sub_298ADC860(v61, v43, v62);
                v27 = " command";
LABEL_89:
                v41[0] = v27;
                v42 = 259;
                v24 = v41;
                goto LABEL_39;
              }

              v13 += 6;
              if (v13 > v12)
              {
                v57[0] = "load command ";
                v58 = 259;
                v56 = 265;
                LODWORD(v55[0]) = a4;
                sub_298ADC860(v57, v55, v59);
                v20 = " ARM_EXCEPTION_STATE64 extends past end of command in ";
                goto LABEL_92;
              }
            }
          }

          else if (v14 == 16777223)
          {
            if (v17 <= 6)
            {
              if (v17 == 4)
              {
                if (v18 != 42)
                {
                  v53[0] = "load command ";
                  v54 = 259;
                  v52 = 265;
                  LODWORD(v51[0]) = a4;
                  sub_298ADC860(v53, v51, v55);
                  v49[0] = " count not x86_THREAD_STATE64_COUNT for flavor number ";
                  v50 = 259;
                  sub_298ADC860(v55, v49, v57);
                  v48 = 265;
                  LODWORD(v47[0]) = v11;
                  sub_298ADC860(v57, v47, v59);
                  v29 = " which is a x86_THREAD_STATE64 flavor in ";
                  goto LABEL_86;
                }

                v13 += 44;
                if (v13 > v12)
                {
                  v57[0] = "load command ";
                  v58 = 259;
                  v56 = 265;
                  LODWORD(v55[0]) = a4;
                  sub_298ADC860(v57, v55, v59);
                  v20 = " x86_THREAD_STATE64 extends past end of command in ";
                  goto LABEL_92;
                }
              }

              else
              {
                if (v17 != 6)
                {
                  goto LABEL_73;
                }

                if (v18 != 4)
                {
                  v53[0] = "load command ";
                  v54 = 259;
                  v52 = 265;
                  LODWORD(v51[0]) = a4;
                  sub_298ADC860(v53, v51, v55);
                  v49[0] = " count not x86_EXCEPTION_STATE64_COUNT for flavor number ";
                  v50 = 259;
                  sub_298ADC860(v55, v49, v57);
                  v48 = 265;
                  LODWORD(v47[0]) = v11;
                  sub_298ADC860(v57, v47, v59);
                  v29 = " which is a x86_EXCEPTION_STATE64 flavor in ";
                  goto LABEL_86;
                }

                v13 += 6;
                if (v13 > v12)
                {
                  v57[0] = "load command ";
                  v58 = 259;
                  v56 = 265;
                  LODWORD(v55[0]) = a4;
                  sub_298ADC860(v57, v55, v59);
                  v20 = " x86_EXCEPTION_STATE64 extends past end of command in ";
                  goto LABEL_92;
                }
              }
            }

            else
            {
              switch(v17)
              {
                case 9:
                  if (v18 != 6)
                  {
                    v53[0] = "load command ";
                    v54 = 259;
                    v52 = 265;
                    LODWORD(v51[0]) = a4;
                    sub_298ADC860(v53, v51, v55);
                    v49[0] = " count not x86_EXCEPTION_STATE_COUNT for flavor number ";
                    v50 = 259;
                    sub_298ADC860(v55, v49, v57);
                    v48 = 265;
                    LODWORD(v47[0]) = v11;
                    sub_298ADC860(v57, v47, v59);
                    v29 = " which is a x86_EXCEPTION_STATE flavor in ";
                    goto LABEL_86;
                  }

                  v13 += 8;
                  if (v13 > v12)
                  {
                    v57[0] = "load command ";
                    v58 = 259;
                    v56 = 265;
                    LODWORD(v55[0]) = a4;
                    sub_298ADC860(v57, v55, v59);
                    v20 = " x86_EXCEPTION_STATE extends past end of command in ";
                    goto LABEL_92;
                  }

                  break;
                case 8:
                  if (v18 != 133)
                  {
                    v53[0] = "load command ";
                    v54 = 259;
                    v52 = 265;
                    LODWORD(v51[0]) = a4;
                    sub_298ADC860(v53, v51, v55);
                    v49[0] = " count not x86_FLOAT_STATE_COUNT for flavor number ";
                    v50 = 259;
                    sub_298ADC860(v55, v49, v57);
                    v48 = 265;
                    LODWORD(v47[0]) = v11;
                    sub_298ADC860(v57, v47, v59);
                    v29 = " which is a x86_FLOAT_STATE flavor in ";
                    goto LABEL_86;
                  }

                  v13 += 135;
                  if (v13 > v12)
                  {
                    v57[0] = "load command ";
                    v58 = 259;
                    v56 = 265;
                    LODWORD(v55[0]) = a4;
                    sub_298ADC860(v57, v55, v59);
                    v20 = " x86_FLOAT_STATE extends past end of command in ";
                    goto LABEL_92;
                  }

                  break;
                case 7:
                  if (v18 != 44)
                  {
                    v53[0] = "load command ";
                    v54 = 259;
                    v52 = 265;
                    LODWORD(v51[0]) = a4;
                    sub_298ADC860(v53, v51, v55);
                    v49[0] = " count not x86_THREAD_STATE_COUNT for flavor number ";
                    v50 = 259;
                    sub_298ADC860(v55, v49, v57);
                    v48 = 265;
                    LODWORD(v47[0]) = v11;
                    sub_298ADC860(v57, v47, v59);
                    v29 = " which is a x86_THREAD_STATE flavor in ";
                    goto LABEL_86;
                  }

                  v13 += 46;
                  if (v13 > v12)
                  {
                    v57[0] = "load command ";
                    v58 = 259;
                    v56 = 265;
                    LODWORD(v55[0]) = a4;
                    sub_298ADC860(v57, v55, v59);
                    v20 = " x86_THREAD_STATE extends past end of command in ";
                    goto LABEL_92;
                  }

                  break;
                default:
                  goto LABEL_73;
              }
            }
          }

          else
          {
            if (v14 != 18)
            {
              goto LABEL_66;
            }

            if (v17 != 1)
            {
LABEL_73:
              v49[0] = "load command ";
              v50 = 259;
              v48 = 265;
              LODWORD(v47[0]) = a4;
              sub_298ADC860(v49, v47, v51);
              v45[0] = " unknown flavor (";
              v46 = 259;
              sub_298ADC860(v51, v45, v53);
              v44 = 265;
              LODWORD(v43[0]) = v17;
              sub_298ADC860(v53, v43, v55);
              v41[0] = ") for flavor number ";
              v42 = 259;
              sub_298ADC860(v55, v41, v57);
              v40 = 265;
              LODWORD(v39[0]) = v11;
              sub_298ADC860(v57, v39, v59);
              v37 = " in ";
              v38 = 259;
              sub_298ADC860(v59, &v37, v61);
              v28 = 1;
              v36 = 1;
              if (*a5)
              {
                v34[0] = a5;
                v28 = 3;
              }

              v35 = v28;
              sub_298ADC860(v61, v34, v62);
              v32 = " command";
              v33 = 259;
              v24 = &v32;
              goto LABEL_39;
            }

            if (v18 != 40)
            {
              v53[0] = "load command ";
              v54 = 259;
              v52 = 265;
              LODWORD(v51[0]) = a4;
              sub_298ADC860(v53, v51, v55);
              v49[0] = " count not PPC_THREAD_STATE_COUNT for flavor number ";
              v50 = 259;
              sub_298ADC860(v55, v49, v57);
              v48 = 265;
              LODWORD(v47[0]) = v11;
              sub_298ADC860(v57, v47, v59);
              v29 = " which is a PPC_THREAD_STATE flavor in ";
              goto LABEL_86;
            }

            v13 += 42;
            if (v13 > v12)
            {
              v57[0] = "load command ";
              v58 = 259;
              v56 = 265;
              LODWORD(v55[0]) = a4;
              sub_298ADC860(v57, v55, v59);
              v20 = " PPC_THREAD_STATE extends past end of command in ";
              goto LABEL_92;
            }
          }
        }

        else if (v14 == 7)
        {
          if (v17 != 1)
          {
            goto LABEL_73;
          }

          if (v18 != 16)
          {
            v53[0] = "load command ";
            v54 = 259;
            v52 = 265;
            LODWORD(v51[0]) = a4;
            sub_298ADC860(v53, v51, v55);
            v49[0] = " count not x86_THREAD_STATE32_COUNT for flavor number ";
            v50 = 259;
            sub_298ADC860(v55, v49, v57);
            v48 = 265;
            LODWORD(v47[0]) = v11;
            sub_298ADC860(v57, v47, v59);
            v29 = " which is a x86_THREAD_STATE32 flavor in ";
            goto LABEL_86;
          }

          v13 += 18;
          if (v13 > v12)
          {
            v57[0] = "load command ";
            v58 = 259;
            v56 = 265;
            LODWORD(v55[0]) = a4;
            sub_298ADC860(v57, v55, v59);
            v20 = " x86_THREAD_STATE32 extends past end of command in ";
LABEL_92:
            v53[0] = v20;
            v54 = 259;
            sub_298ADC860(v59, v53, v61);
            v31 = 1;
            HIBYTE(v52) = 1;
            if (*a5)
            {
              v51[0] = a5;
              v31 = 3;
            }

            LOBYTE(v52) = v31;
            sub_298ADC860(v61, v51, v62);
            v23 = " command";
LABEL_38:
            v49[0] = v23;
            v50 = 259;
            v24 = v49;
LABEL_39:
            sub_298ADC860(v62, v24, v63);
            sub_298B76A80(v63);
          }
        }

        else
        {
          if (v14 != 12)
          {
            goto LABEL_66;
          }

          if (v17 != 1)
          {
            goto LABEL_73;
          }

          if (v18 != 17)
          {
            v53[0] = "load command ";
            v54 = 259;
            v52 = 265;
            LODWORD(v51[0]) = a4;
            sub_298ADC860(v53, v51, v55);
            v49[0] = " count not ARM_THREAD_STATE_COUNT for flavor number ";
            v50 = 259;
            sub_298ADC860(v55, v49, v57);
            v48 = 265;
            LODWORD(v47[0]) = v11;
            sub_298ADC860(v57, v47, v59);
            v29 = " which is a ARM_THREAD_STATE flavor in ";
            goto LABEL_86;
          }

          v13 += 19;
          if (v13 > v12)
          {
            v57[0] = "load command ";
            v58 = 259;
            v56 = 265;
            LODWORD(v55[0]) = a4;
            sub_298ADC860(v57, v55, v59);
            v20 = " ARM_THREAD_STATE extends past end of command in ";
            goto LABEL_92;
          }
        }

        ++v11;
        if (v13 >= v12)
        {
          goto LABEL_40;
        }
      }

      v57[0] = "load command ";
      v58 = 259;
      v56 = 265;
      LODWORD(v55[0]) = a4;
      sub_298ADC860(v57, v55, v59);
      v21 = "flavor in ";
LABEL_35:
      v53[0] = v21;
      v54 = 259;
      sub_298ADC860(v59, v53, v61);
      v22 = 1;
      HIBYTE(v52) = 1;
      if (*a5)
      {
        v51[0] = a5;
        v22 = 3;
      }

      LOBYTE(v52) = v22;
      sub_298ADC860(v61, v51, v62);
      v23 = " extends past end of command";
      goto LABEL_38;
    }

LABEL_40:
    *a1 = 0;
  }

  return result;
}

uint64_t *sub_298B7B250(uint64_t *a1, uint64_t a2, unint64_t *a3, unsigned int a4, unint64_t *a5, uint64_t *a6)
{
  if (*(a3 + 3) != 16)
  {
    v27 = "load command ";
    v28 = a4;
    v29 = 2307;
    v8 = " LC_TWOLEVEL_HINTS has incorrect cmdsize";
LABEL_5:
    v30[0] = &v27;
    v30[2] = v8;
    v31 = 770;
    v32[0] = "truncated or malformed object (";
    v33 = v30;
    v34 = 515;
    v35 = v32;
    v36 = ")";
    goto LABEL_13;
  }

  if (*a5)
  {
    v7 = "more than one LC_TWOLEVEL_HINTS command";
LABEL_12:
    v32[0] = "truncated or malformed object (";
    v33 = v7;
    v34 = 771;
    v35 = v32;
    v36 = ")";
LABEL_13:
    v37 = 770;
    operator new();
  }

  v9 = *a3;
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *a3 < v10 || *a3 + 16 > v10 + v11;
  if (v12)
  {
    v7 = "Structure read out-of-range";
    goto LABEL_12;
  }

  v14 = *(v9 + 8);
  v13 = *(v9 + 12);
  v15 = *(a2 + 8);
  v12 = v15 > 0x14;
  v16 = (1 << v15) & 0x155800;
  v17 = v12 || v16 == 0;
  v18 = bswap32(v14);
  v19 = bswap32(v13);
  if (v17)
  {
    v19 = v13;
  }

  if (v17)
  {
    v20 = v14;
  }

  else
  {
    v20 = v18;
  }

  if (v11 < v20)
  {
    v21 = a4;
    v22 = "offset field of LC_TWOLEVEL_HINTS command ";
LABEL_28:
    v27 = v22;
    v28 = v21;
    v29 = 2307;
    v8 = " extends past the end of the file";
    goto LABEL_5;
  }

  v23 = 4 * v19;
  if (v23 + v20 > v11)
  {
    v21 = a4;
    v22 = "offset field plus nhints times sizeof(struct twolevel_hint) field of LC_TWOLEVEL_HINTS command ";
    goto LABEL_28;
  }

  result = sub_298B7EF50(a1, a6, v20, v23, "two level hints");
  if (!*a1)
  {
    *a5 = *a3;
  }

  return result;
}

uint64_t sub_298B7B460(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = (*(*a2 + 64))(a2);
  v9 = (*a4 + *(a4 + 12));
  v10 = 28;
  if (v8)
  {
    v10 = 32;
  }

  if ((v9 + 2) > *(a2 + 16) + *(a2 + 360) + *(a2 + 68) + v10)
  {
    v16 = "load command ";
    v17 = 259;
    v15 = 265;
    LODWORD(v14[0]) = a3 + 1;
    sub_298ADC860(&v16, v14, v18);
    v12 = " extends past the end all load commands in the file";
    v13 = 259;
    sub_298ADC860(v18, &v12, v19);
    sub_298B76A80(v19);
  }

  return sub_298B7ED64(a1, a2, v9, a3 + 1);
}

uint64_t sub_298B7B5B4(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 16);
  v3 = v2 > a2 || (a2 + 4) > v2 + *(a1 + 24);
  if (v3)
  {
    sub_298B868A8("Malformed MachO file.", 1);
  }

  LODWORD(v4) = *a2;
  LODWORD(v5) = a2[1];
  v6 = *(a1 + 8);
  v3 = v6 > 0x14;
  v7 = (1 << v6) & 0x155800;
  v8 = v3 || v7 == 0;
  v9 = bswap32(v4);
  v10 = bswap32(v5);
  if (v8)
  {
    v4 = v4;
  }

  else
  {
    v4 = v9;
  }

  if (v8)
  {
    v5 = v5;
  }

  else
  {
    v5 = v10;
  }

  return v4 | (v5 << 32);
}

double sub_298B7B624@<D0>(uint64_t result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  v5 = v4 > a2 || a2 + 24 > v4 + *(result + 24);
  if (v5)
  {
    sub_298B868A8("Malformed MachO file.", 1);
  }

  v6 = *a2;
  *a3 = *a2;
  *(a3 + 16) = *(a2 + 2);
  v7 = *(result + 8);
  v5 = v7 > 0x14;
  v8 = (1 << v7) & 0x155800;
  if (!v5 && v8 != 0)
  {

    *&v6 = sub_298B7F22C(a3);
  }

  return *&v6;
}

unint64_t sub_298B7B6A4(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = v2 > a2 || a2 + 12 > v2 + *(a1 + 24);
  if (v3)
  {
    sub_298B868A8("Malformed MachO file.", 1);
  }

  v4 = *a2;
  v5 = HIWORD(*a2);
  v6 = *(a1 + 8);
  v3 = v6 > 0x14;
  v7 = (1 << v6) & 0x155800;
  v8 = v3 || v7 == 0;
  v9 = bswap32(v4);
  v10 = __rev16(v5);
  if (v8)
  {
    v11 = v4;
  }

  else
  {
    v11 = v9;
  }

  if (v8)
  {
    v5 = v5;
  }

  else
  {
    v5 = v10;
  }

  return v4 & 0xFFFF00000000 | (v5 << 48) | v11;
}

uint64_t sub_298B7B72C(uint64_t a1, void *a2)
{
  result = (*(*a1 + 64))(a1);
  v4 = 12;
  if (result)
  {
    v4 = 16;
  }

  *a2 += v4;
  return result;
}

size_t sub_298B7B78C@<X0>(size_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 272);
  v4 = *(result + 16);
  v5 = *(result + 24);
  if (v3)
  {
    v6 = v3 < v4 || v3 + 24 > v4 + v5;
    if (v6)
    {
      goto LABEL_18;
    }

    LODWORD(v3) = *(v3 + 16);
    v7 = *(result + 8);
    v6 = v7 > 0x14;
    v8 = (1 << v7) & 0x155800;
    v9 = v6 || v8 == 0;
    v10 = bswap32(v3);
    if (!v9)
    {
      LODWORD(v3) = v10;
    }
  }

  v3 = v3;
  if (v5 < v3)
  {
    v3 = *(result + 24);
  }

  v11 = v4 + v5;
  if (v4 > a2 || (a2 + 2) > v11)
  {
LABEL_18:
    sub_298B868A8("Malformed MachO file.", 1);
  }

  v13 = *a2;
  v14 = *(result + 8);
  v15 = bswap32(*a2);
  if (((1 << v14) & 0x155800) == 0)
  {
    v15 = *a2;
  }

  if (v14 <= 0x14)
  {
    v13 = v15;
  }

  if (v13)
  {
    v16 = v4 + v3;
    v17 = v16 + v13;
    if (v17 < v4 || v17 >= v11)
    {
      v29 = "bad string index: ";
      v30 = 259;
      v28 = 265;
      LODWORD(v27[0]) = v13;
      v20 = result;
      sub_298ADC860(&v29, v27, v31);
      v25 = " for symbol at index ";
      v26 = 259;
      sub_298ADC860(v31, &v25, v32);
      v24 = 269;
      v22 = sub_298B7B960(v20, a2);
      v23 = &v22;
      sub_298ADC860(v32, &v23, v33);
      sub_298B76A80(v33);
    }

    if (v4)
    {
      result = strlen((v16 + v13));
    }

    else
    {
      result = 0;
    }

    *(a3 + 16) &= ~1u;
    *a3 = v17;
    *(a3 + 8) = result;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) &= ~1u;
  }

  return result;
}

unint64_t sub_298B7B960(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 272);
  if (!v2)
  {
    sub_298B868A8("getSymbolIndex() called with no symbol table symbol", 1);
  }

  v3 = *(a1 + 16);
  v4 = v2 < v3 || v2 + 24 > v3 + *(a1 + 24);
  if (v4)
  {
    sub_298B868A8("Malformed MachO file.", 1);
  }

  v5 = *(v2 + 8);
  v6 = *(a1 + 8);
  v4 = v6 > 0x14;
  v7 = (1 << v6) & 0x155800;
  v8 = v4 || v7 == 0;
  v9 = bswap32(v5);
  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = v9;
  }

  v13 = (*(*a1 + 64))();
  v14 = 12;
  if (v13)
  {
    v14 = 16;
  }

  return (a2 - (*(a1 + 16) + v10)) / v14;
}

unint64_t sub_298B7BA3C(uint64_t a1, unint64_t *a2)
{
  if ((*(*a1 + 64))(a1))
  {
    v4 = *(a1 + 16);
    v5 = v4 > a2 || (a2 + 2) > v4 + *(a1 + 24);
    if (v5)
    {
      sub_298B868A8("Malformed MachO file.", 1);
    }

    result = a2[1];
    v7 = *(a1 + 8);
    v5 = v7 > 0x14;
    v8 = (1 << v7) & 0x155800;
    if (!v5 && v8 != 0)
    {
      return bswap64(result);
    }
  }

  else
  {
    sub_298B7B6A4(a1, a2);
    return v10;
  }

  return result;
}

void *sub_298B7BAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  result = (*(*a1 + 40))(&v8);
  if (v9)
  {
    v7 = v8;
    if (v8)
    {
      *(a3 + 8) |= 1u;
      *a3 = v7;
      return result;
    }
  }

  else
  {
    if (v8)
    {
      *(a3 + 8) &= ~1u;
      *a3 = 0;
      return result;
    }

    if ((v8 & 0x10) != 0)
    {
      result = sub_298B815C8(a1, a2);
      goto LABEL_5;
    }
  }

  result = (*(*a1 + 96))(a1, a2);
LABEL_5:
  *(a3 + 8) &= ~1u;
  *a3 = result;
  return result;
}

uint64_t sub_298B7BC0C(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x29EDCA608];
  (*(*a1 + 40))(v11);
  if ((v11[0] & 0x10) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = v5 > a2 || (a2 + 1) > v5 + *(a1 + 24);
  if (v6)
  {
    sub_298B868A8("Malformed MachO file.", 1);
  }

  v7 = *(a1 + 8);
  v6 = v7 > 0x14;
  v8 = (1 << v7) & 0x155800;
  v9 = v6 || v8 == 0;
  v10 = HIWORD(*a2);
  if (v9)
  {
    v10 = HIBYTE(*a2);
  }

  return (1 << (v10 & 0xF));
}

unint64_t sub_298B7BCFC(uint64_t a1, unint64_t a2)
{
  v4 = (*(*a1 + 64))(a1);
  v5 = *(a1 + 16);
  v6 = v5 + *(a1 + 24);
  if (v4)
  {
    v7 = v5 > a2 || a2 + 16 > v6;
    if (!v7)
    {
      result = *(a2 + 8);
      v9 = *(a1 + 8);
      v7 = v9 > 0x14;
      v10 = (1 << v9) & 0x155800;
      if (!v7 && v10 != 0)
      {
        return bswap64(result);
      }

      return result;
    }

LABEL_22:
    sub_298B868A8("Malformed MachO file.", 1);
  }

  if (v5 > a2 || a2 + 12 > v6)
  {
    goto LABEL_22;
  }

  v13 = *(a2 + 8);
  v14 = *(a1 + 8);
  v7 = v14 > 0x14;
  v15 = (1 << v14) & 0x155800;
  v16 = v7 || v15 == 0;
  v17 = bswap32(v13);
  if (v16)
  {
    return v13;
  }

  else
  {
    return v17;
  }
}

uint64_t sub_298B7BDE4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = *(result + 16);
  if (v4 > a2 || a2 + 8 > v4 + *(result + 24))
  {
    sub_298B868A8("Malformed MachO file.", 1);
  }

  if ((*(a2 + 4) & 0xE0) != 0)
  {
    *(a3 + 8) &= ~1u;
    v13 = 3;
LABEL_24:
    *a3 = v13;
    return result;
  }

  v6 = *(a2 + 4) & 0xE;
  if (v6 != 14)
  {
    if (!v6)
    {
      *(a3 + 8) &= ~1u;
      *a3 = 0;
      return result;
    }

    *(a3 + 8) &= ~1u;
    v13 = 1;
    goto LABEL_24;
  }

  v7 = result;
  result = (*(*result + 128))(v15);
  if (v16)
  {
    v14 = v15[0];
    v15[0] = 0;
    *(a3 + 8) |= 1u;
    *a3 = v14;
  }

  else
  {
    v8 = v15[0];
    v9 = v15[1];
    result = (*(*v7 + 360))(v7);
    if (v9 == v10 && v8 == result)
    {
      *(a3 + 8) &= ~1u;
      v12 = 1;
    }

    else
    {
      result = (*(*v9 + 208))(v9, v8);
      if ((result & 1) != 0 || (result = (*(*v9 + 216))(v9, v8), result))
      {
        *(a3 + 8) &= ~1u;
        v12 = 2;
      }

      else
      {
        *(a3 + 8) &= ~1u;
        v12 = 5;
      }
    }

    *a3 = v12;
  }

  if (v16)
  {
    result = v15[0];
    v15[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t sub_298B7C028@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 16);
  if (v3 > a2)
  {
    goto LABEL_41;
  }

  v4 = (a2 + 1);
  if ((a2 + 1) > v3 + *(result + 24))
  {
    goto LABEL_41;
  }

  v5 = *a2;
  v6 = *(result + 8);
  v7 = v6 > 0x14;
  v8 = (1 << v6) & 0x155800;
  v9 = v7 || v8 == 0;
  v10 = __rev16(HIWORD(*a2));
  if (v9)
  {
    v11 = HIWORD(*a2);
  }

  else
  {
    v11 = v10;
  }

  v12 = HIDWORD(v5);
  v13 = HIDWORD(*a2) & 0xE;
  if ((v5 & 0xE000000000) != 0)
  {
    v14 = (32 * ((HIDWORD(*a2) & 0xE) == 10)) | 0x80;
  }

  else
  {
    v14 = 32 * ((HIDWORD(*a2) & 0xE) == 10);
  }

  if ((v5 & 0x100000000) == 0)
  {
    v15 = v14 & 0xFFFFFDFF | (((HIDWORD(v5) >> 4) & 1) << 9);
    goto LABEL_14;
  }

  if ((v5 & 0xE00000000) == 0)
  {
    v19 = a3;
    v20 = result;
    result = (*(*result + 64))();
    v21 = *(v20 + 16);
    v22 = v21 + *(v20 + 24);
    if (result)
    {
      if (v21 <= a2 && (a2 + 2) <= v22)
      {
        v23 = *v4;
        v24 = *(v20 + 8);
        a3 = v19;
        if (v24 <= 0x14 && ((1 << v24) & 0x155800) != 0)
        {
          v23 = bswap64(v23);
        }

LABEL_35:
        if (v23)
        {
          v25 = v14 | 0x12;
        }

        else
        {
          v25 = v14 | 3;
        }

        goto LABEL_38;
      }
    }

    else if (v21 <= a2 && a2 + 12 <= v22)
    {
      v26 = *(v20 + 8);
      v27 = bswap32(*v4);
      if (((1 << v26) & 0x155800) == 0)
      {
        v27 = *v4;
      }

      if (v26 <= 0x14)
      {
        v23 = v27;
      }

      else
      {
        v23 = *v4;
      }

      a3 = v19;
      goto LABEL_35;
    }

LABEL_41:
    sub_298B868A8("Malformed MachO file.", 1);
  }

  v25 = v14 | 2;
LABEL_38:
  v28 = v25 | 0x40;
  v29 = v25 | 0x200;
  if ((v12 & 0x10) != 0)
  {
    v15 = v29;
  }

  else
  {
    v15 = v28;
  }

LABEL_14:
  v16 = v15 | 4;
  if ((v11 & 0xC0) == 0)
  {
    v16 = v15;
  }

  v17 = v16 | (32 * v11) & 0x100;
  if (v13 == 2)
  {
    v17 |= 8u;
  }

  *(a3 + 8) &= ~1u;
  *a3 = v17;
  return result;
}

_DWORD *sub_298B7C218@<X0>(_DWORD *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 2);
  if (v4 > a2)
  {
    goto LABEL_19;
  }

  v5 = v4 + *(result + 3);
  if ((a2 + 1) > v5)
  {
    goto LABEL_19;
  }

  v6 = (WORD2(*a2) >> 8);
  if (!(WORD2(*a2) >> 8))
  {
    result = (*(*result + 360))(result);
    *(a3 + 16) &= ~1u;
    *a3 = result;
    *(a3 + 8) = v7;
    return result;
  }

  v8 = (v6 - 1);
  if (v8 >= result[22])
  {
    v19[0] = "bad section index: ";
    v19[2] = v6;
    v20 = 2563;
    v21[0] = v19;
    v21[2] = " for symbol at index ";
    v22 = 770;
    v9 = *(result + 34);
    if (!v9)
    {
      sub_298B868A8("getSymbolIndex() called with no symbol table symbol", 1);
    }

    if (v9 >= v4 && v9 + 24 <= v5)
    {
      v10 = *(v9 + 8);
      v11 = result[2];
      v12 = bswap32(v10);
      if (((1 << v11) & 0x155800) == 0)
      {
        v12 = v10;
      }

      if (v11 <= 0x14)
      {
        v13 = v12;
      }

      else
      {
        v13 = v10;
      }

      v14 = result;
      v15 = (*(*result + 64))();
      v16 = 12;
      if (v15)
      {
        v16 = 16;
      }

      v18 = (a2 - *(v14 + 2) - v13) / v16;
      v23[0] = v21;
      v23[2] = &v18;
      v24 = 3330;
      v25[0] = "truncated or malformed object (";
      v25[2] = v23;
      v26 = 515;
      v27 = v25;
      v28 = ")";
      v29 = 770;
      operator new();
    }

LABEL_19:
    sub_298B868A8("Malformed MachO file.", 1);
  }

  *(a3 + 16) &= ~1u;
  *a3 = v8;
  *(a3 + 8) = result;
  return result;
}

size_t sub_298B7C45C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(*(a1 + 80) + 8 * a2);
  if (*(v3 + 15))
  {
    result = 16;
  }

  else
  {
    v5 = a3;
    result = strlen(*(*(a1 + 80) + 8 * a2));
    a3 = v5;
  }

  *(a3 + 16) &= ~1u;
  *a3 = v3;
  *(a3 + 8) = result;
  return result;
}

unint64_t sub_298B7C4B8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v13 = *MEMORY[0x29EDCA608];
  if ((*(*a1 + 64))(a1))
  {
    v4 = *(*(a1 + 80) + 8 * v2);
    v5 = *(a1 + 16);
    v6 = v4 < v5 || v4 + 80 > v5 + *(a1 + 24);
    if (v6)
    {
      sub_298B868A8("Malformed MachO file.", 1);
    }

    result = *(v4 + 32);
    v8 = *(a1 + 8);
    v6 = v8 > 0x14;
    v9 = (1 << v8) & 0x155800;
    if (!v6 && v9 != 0)
    {
      return bswap64(result);
    }
  }

  else
  {
    sub_298B7C64C(v11, a1, v2);
    return v12;
  }

  return result;
}

double sub_298B7C5C0(_OWORD *result, uint64_t a2, unsigned int a3)
{
  v4 = *(*(a2 + 80) + 8 * a3);
  v5 = *(a2 + 16);
  if (v4 < v5 || (v4 + 5) > v5 + *(a2 + 24))
  {
    sub_298B868A8("Malformed MachO file.", 1);
  }

  *result = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[4];
  result[3] = v4[3];
  result[4] = v9;
  result[1] = v7;
  result[2] = v8;
  v10 = *(a2 + 8);
  if (v10 <= 0x14 && ((1 << v10) & 0x155800) != 0)
  {

    *&v7 = sub_298B806D8(result);
  }

  return *&v7;
}

int8x16_t sub_298B7C64C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(*(a2 + 80) + 8 * a3);
  v4 = *(a2 + 16);
  if (v3 < v4 || v3 + 68 > v4 + *(a2 + 24))
  {
    sub_298B868A8("Malformed MachO file.", 1);
  }

  v6 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  v8 = *(a2 + 8);
  if (v8 <= 0x14 && ((1 << v8) & 0x155800) != 0)
  {
    result = vrev32q_s8(*(a1 + 32));
    v9 = vrev32q_s8(*(a1 + 48));
    *(a1 + 32) = result;
    *(a1 + 48) = v9;
    *(a1 + 64) = bswap32(*(a1 + 64));
  }

  return result;
}

unint64_t sub_298B7C6EC(uint64_t a1, unsigned int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  if ((*(*a1 + 64))(a1))
  {
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    memset(v21, 0, sizeof(v21));
    sub_298B7C5C0(v21, a1, a2);
    result = *(&v22 + 1);
    v14 = v23;
    v16 = v24;
  }

  else
  {
    v4 = *(*(a1 + 80) + 8 * a2);
    v5 = *(a1 + 16);
    v6 = v4 < v5 || (v4 + 17) > v5 + *(a1 + 24);
    if (v6)
    {
      sub_298B868A8("Malformed MachO file.", 1);
    }

    v8 = v4[9];
    v7 = v4[10];
    v9 = v4[14];
    v10 = *(a1 + 8);
    v6 = v10 > 0x14;
    v11 = (1 << v10) & 0x155800;
    v12 = v6 || v11 == 0;
    v13 = bswap32(v8);
    v14 = bswap32(v7);
    v15 = bswap32(v9);
    if (v12)
    {
      v14 = v7;
    }

    if (v12)
    {
      v16 = v9;
    }

    else
    {
      v16 = v15;
    }

    if (v12)
    {
      result = v8;
    }

    else
    {
      result = v13;
    }
  }

  if (v16 != 1 && v16 != 12)
  {
    v19 = *(a1 + 24);
    v20 = v19 - v14;
    if (v20 >= result)
    {
      v20 = result;
    }

    if (v19 >= v14)
    {
      return v20;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_298B7C838(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x29EDCA608];
  if ((*(*a1 + 64))(a1))
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    memset(v19, 0, sizeof(v19));
    sub_298B7C5C0(v19, a1, a2);
    LODWORD(v16) = v21;
    v17 = *(&v20 + 1);
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
  }

  else
  {
    v6 = *(*(a1 + 80) + 8 * a2);
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    v9 = v6 < v7 || v6 + 68 > v7 + v8;
    if (v9)
    {
      sub_298B868A8("Malformed MachO file.", 1);
    }

    v11 = *(v6 + 36);
    v10 = *(v6 + 40);
    v12 = *(a1 + 8);
    v9 = v12 > 0x14;
    v13 = (1 << v12) & 0x155800;
    v14 = v9 || v13 == 0;
    v15 = bswap32(v11);
    LODWORD(v16) = bswap32(v10);
    if (v14)
    {
      LODWORD(v16) = v10;
    }

    if (v14)
    {
      v17 = v11;
    }

    else
    {
      v17 = v15;
    }
  }

  v16 = v16;
  if (v8 < v16)
  {
    v16 = v8;
  }

  v18 = v8 - v16;
  if (v18 >= v17)
  {
    v18 = v17;
  }

  *(a3 + 16) &= ~1u;
  *a3 = v16 + v7;
  *(a3 + 8) = v18;
}

uint64_t sub_298B7C984(uint64_t a1, unsigned int a2)
{
  v4 = (*(*a1 + 64))(a1);
  v5 = *(*(a1 + 80) + 8 * a2);
  v6 = *(a1 + 16);
  v7 = v6 + *(a1 + 24);
  if (v4)
  {
    v8 = v5 < v6 || v5 + 80 > v7;
    if (!v8)
    {
      v9 = *(v5 + 52);
      goto LABEL_12;
    }

LABEL_18:
    sub_298B868A8("Malformed MachO file.", 1);
  }

  if (v5 < v6 || v5 + 68 > v7)
  {
    goto LABEL_18;
  }

  v9 = *(v5 + 44);
LABEL_12:
  v11 = *(a1 + 8);
  v8 = v11 > 0x14;
  v12 = (1 << v11) & 0x155800;
  v13 = v8 || v12 == 0;
  v14 = bswap32(v9);
  if (!v13)
  {
    LOBYTE(v9) = v14;
  }

  return 1 << v9;
}

uint64_t sub_298B7CA54(uint64_t a1, unsigned int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((*(*a1 + 64))(a1))
  {
    v13 = 0u;
    memset(v12, 0, sizeof(v12));
    sub_298B7C5C0(v12, a1, a2);
    v7 = v13;
  }

  else
  {
    v4 = *(*(a1 + 80) + 8 * a2);
    v5 = *(a1 + 16);
    v6 = v4 < v5 || v4 + 68 > v5 + *(a1 + 24);
    if (v6)
    {
      sub_298B868A8("Malformed MachO file.", 1);
    }

    v7 = *(v4 + 56);
    v8 = *(a1 + 8);
    v6 = v8 > 0x14;
    v9 = (1 << v8) & 0x155800;
    if (!v6 && v9 != 0)
    {
      v7 = bswap32(v7);
    }
  }

  return v7 >> 31;
}

BOOL sub_298B7CB5C(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if ((*(*a1 + 64))(a1))
  {
    v4 = *(*(a1 + 80) + 8 * a2);
    v5 = *(a1 + 16);
    v6 = v4 < v5 || v4 + 80 > v5 + *(a1 + 24);
    if (v6)
    {
      sub_298B868A8("Malformed MachO file.", 1);
    }

    v7 = *(v4 + 64);
    v8 = *(a1 + 8);
    v6 = v8 > 0x14;
    v9 = (1 << v8) & 0x155800;
    if (!v6 && v9 != 0)
    {
      v7 = bswap32(v7);
    }
  }

  else
  {
    v16 = 0;
    v15 = 0u;
    memset(v14, 0, sizeof(v14));
    sub_298B7C64C(v14, a1, a2);
    v7 = DWORD2(v15);
  }

  v12 = v7 != 1 && v7 != 12;
  return v7 >= 0 && v12;
}

BOOL sub_298B7CC78(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if ((*(*a1 + 64))(a1))
  {
    v4 = *(*(a1 + 80) + 8 * a2);
    v5 = *(a1 + 16);
    v6 = v4 < v5 || v4 + 80 > v5 + *(a1 + 24);
    if (v6)
    {
      sub_298B868A8("Malformed MachO file.", 1);
    }

    v7 = *(v4 + 64);
    v8 = *(a1 + 8);
    v6 = v8 > 0x14;
    v9 = (1 << v8) & 0x155800;
    if (!v6 && v9 != 0)
    {
      v7 = bswap32(v7);
    }
  }

  else
  {
    v16 = 0;
    v15 = 0u;
    memset(v14, 0, sizeof(v14));
    sub_298B7C64C(v14, a1, a2);
    v7 = DWORD2(v15);
  }

  v12 = v7 == 1 || v7 == 12;
  return v7 >= 0 && v12;
}

uint64_t sub_298B7CD94(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  (*(*a1 + 144))(&v10);
  v1 = v10;
  if (v12)
  {
    v10 = 0;
    v8 = v1;
    sub_298AE72FC(&v8, &v9);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    if (v12)
    {
      result = v10;
      v10 = 0;
      if (!result)
      {
        return result;
      }

      (*(*result + 8))(result);
    }

    return 0;
  }

  if (v11 < 7)
  {
    return 0;
  }

  if (*v10 == 1701076831 && *(v10 + 3) == 1735746149)
  {
    return 1;
  }

  if (v11 == 7)
  {
    return *v10 == 1885429599 && *(v10 + 3) == 1701605488;
  }

  if (*v10 == 0x67756265647A5F5FLL)
  {
    return 1;
  }

  if (*v10 == 1885429599 && *(v10 + 3) == 1701605488)
  {
    return 1;
  }

  if (v11 != 11)
  {
    return 0;
  }

  if (*v10 == 0x6E695F6264675F5FLL && *(v10 + 3) == 0x7865646E695F6264)
  {
    return 1;
  }

  return *v10 == 0x5F74666977735F5FLL && *(v10 + 3) == 0x7473615F74666977;
}

BOOL sub_298B7CFDC(uint64_t a1, unsigned int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((*(*a1 + 64))(a1))
  {
    v14 = 0u;
    memset(v13, 0, sizeof(v13));
    sub_298B7C5C0(v13, a1, a2);
    LOBYTE(v7) = v14;
  }

  else
  {
    v4 = *(*(a1 + 80) + 8 * a2);
    v5 = *(a1 + 16);
    v6 = v4 < v5 || v4 + 68 > v5 + *(a1 + 24);
    if (v6)
    {
      sub_298B868A8("Malformed MachO file.", 1);
    }

    v7 = *(v4 + 56);
    v8 = *(a1 + 8);
    v6 = v8 > 0x14;
    v9 = (1 << v8) & 0x155800;
    if (!v6 && v9 != 0)
    {
      LOBYTE(v7) = bswap32(v7);
    }
  }

  return v7 == 1 || v7 == 12;
}

uint64_t sub_298B7D0F0(void *a1, unsigned int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *(a1[10] + 8 * a2);
  if (*(v2 + 31))
  {
    v3 = 0;
  }

  else
  {
    v12 = a1;
    v13 = strlen((v2 + 16));
    a1 = v12;
    v3 = v13 == 6;
  }

  (*(*a1 + 144))(v14);
  v5 = v15;
  if (v15)
  {
    v6 = v14[0];
    v14[0] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  else
  {
    v4 = v3 && (*(v2 + 16) == 1280073567 ? (v8 = *(v2 + 20) == 19798) : (v8 = 0), v8 ? (v9 = 0) : (v9 = 1), !v9 ? (v10 = v14[1] == 9) : (v10 = 0), v10) && *v14[0] == 0x646F637469625F5FLL && *(v14[0] + 8) == 101;
  }

  return v4 & ~v5 & 1;
}

BOOL sub_298B7D284(uint64_t a1, unsigned int a2)
{
  v4 = (*(*a1 + 64))(a1);
  v5 = *(*(a1 + 80) + 8 * a2);
  v6 = *(a1 + 16);
  v7 = v6 + *(a1 + 24);
  if (v4)
  {
    v8 = v5 < v6 || v5 + 80 > v7;
    if (!v8)
    {
      v9 = *(v5 + 48);
      goto LABEL_12;
    }

LABEL_18:
    sub_298B868A8("Malformed MachO file.", 1);
  }

  if (v5 < v6 || v5 + 68 > v7)
  {
    goto LABEL_18;
  }

  v9 = *(v5 + 40);
LABEL_12:
  v11 = *(a1 + 8);
  v8 = v11 > 0x14;
  v12 = (1 << v11) & 0x155800;
  v13 = v8 || v12 == 0;
  v14 = bswap32(v9);
  if (!v13)
  {
    v9 = v14;
  }

  return v9 == 0;
}

unint64_t sub_298B7D35C(uint64_t a1, unsigned int a2)
{
  v4 = (*(*a1 + 64))(a1);
  v5 = *(*(a1 + 80) + 8 * a2);
  v6 = *(a1 + 16);
  v7 = v6 + *(a1 + 24);
  if (v4)
  {
    v8 = v5 < v6 || v5 + 80 > v7;
    if (!v8)
    {
      LODWORD(v5) = *(v5 + 60);
      goto LABEL_12;
    }

LABEL_19:
    sub_298B868A8("Malformed MachO file.", 1);
  }

  if (v5 < v6 || v5 + 68 > v7)
  {
    goto LABEL_19;
  }

  LODWORD(v5) = *(v5 + 52);
LABEL_12:
  v10 = *(a1 + 8);
  v8 = v10 > 0x14;
  v11 = (1 << v10) & 0x155800;
  v12 = v8 || v11 == 0;
  v13 = bswap32(v5);
  if (v12)
  {
    v5 = v5;
  }

  else
  {
    v5 = v13;
  }

  return a2 | (v5 << 32);
}

double sub_298B7D428@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 280);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v2 < v3 || &v2[5] > v3 + *(a1 + 24))
    {
      sub_298B868A8("Malformed MachO file.", 1);
    }

    v5 = v2[3];
    *(a2 + 32) = v2[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v2[4];
    v6 = v2[1];
    *a2 = *v2;
    *(a2 + 16) = v6;
    v7 = *(a1 + 8);
    if (v7 <= 0x14 && ((1 << v7) & 0x155800) != 0)
    {
      v8 = vrev32q_s8(*(a2 + 16));
      *a2 = vrev32q_s8(*a2);
      *(a2 + 16) = v8;
      v9 = vrev32q_s8(*(a2 + 48));
      *(a2 + 32) = vrev32q_s8(*(a2 + 32));
      *(a2 + 48) = v9;
      v6 = vrev32q_s8(*(a2 + 64));
      *(a2 + 64) = v6;
    }
  }

  else
  {
    *a2 = 0x500000000BLL;
    v6.i64[0] = 0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0;
  }

  return *v6.i64;
}

uint64_t sub_298B7D508(uint64_t a1, unint64_t a2)
{
  v3 = sub_298B7D54C(a1, a2);
  v4 = v3 >= 0 || *(a1 + 52) == 16777223;
  v5 = v3 & 0xFFFFFF;
  if (v4)
  {
    return v3;
  }

  return v5;
}

uint64_t sub_298B7D54C(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 60) == 1)
  {
    v4 = (*(*a1 + 64))(a1);
    v5 = *(*(a1 + 80) + 8 * a2);
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    v8 = v6 + v7;
    if (v4)
    {
      v9 = v5 < v6 || (v5 + 20) > v8;
      if (!v9)
      {
        LODWORD(v5) = v5[14];
        goto LABEL_27;
      }
    }

    else if (v5 >= v6 && (v5 + 17) <= v8)
    {
      LODWORD(v5) = v5[12];
LABEL_27:
      v19 = *(a1 + 8);
      v9 = v19 > 0x14;
      v20 = (1 << v19) & 0x155800;
      if (!v9 && v20 != 0)
      {
        LODWORD(v5) = bswap32(v5);
      }

      goto LABEL_35;
    }

LABEL_48:
    sub_298B868A8("Malformed MachO file.", 1);
  }

  v5 = *(a1 + 280);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v5)
  {
    if (v5 < v6 || (v5 + 20) > v6 + v7)
    {
      goto LABEL_48;
    }

    v11 = v5[16];
    v12 = v5[18];
    v13 = *(a1 + 8);
    v9 = v13 > 0x14;
    v14 = (1 << v13) & 0x155800;
    v15 = v9 || v14 == 0;
    LODWORD(v5) = bswap32(v11);
    v16 = bswap32(v12);
    if (v15)
    {
      LODWORD(v5) = v11;
    }

    if (v15)
    {
      v17 = v12;
    }

    else
    {
      v17 = v16;
    }
  }

  else
  {
    v17 = 0;
  }

  if (a2)
  {
    LODWORD(v5) = v17;
  }

LABEL_35:
  v22 = (v6 + v5 + 8 * HIDWORD(a2));
  v23 = v6 + v7;
  if (v22 < v6 || (v22 + 2) > v23)
  {
    goto LABEL_48;
  }

  LODWORD(v25) = *v22;
  LODWORD(v26) = v22[1];
  v27 = *(a1 + 8);
  v28 = bswap32(v25);
  v29 = bswap32(v26);
  if (((1 << v27) & 0x155800) == 0)
  {
    v28 = v25;
    v29 = v26;
  }

  if (v27 <= 0x14)
  {
    v25 = v28;
  }

  else
  {
    v25 = v25;
  }

  if (v27 <= 0x14)
  {
    v26 = v29;
  }

  else
  {
    v26 = v26;
  }

  return v25 | (v26 << 32);
}

uint64_t sub_298B7D6E4(uint64_t a1, unint64_t a2)
{
  v3 = sub_298B7D54C(a1, a2);
  if (*(a1 + 52) != 16777223 && v3 < 0)
  {
    return (*(*a1 + 56))(a1);
  }

  v5 = *(a1 + 8);
  if (v5 > 0x14 || ((1 << v5) & 0x155800) == 0)
  {
    v7 = HIDWORD(v3) & 0xFFFFFF;
  }

  else
  {
    v7 = HIDWORD(v3) >> 8;
  }

  if (v5 - 11 > 9)
  {
    if ((v3 & 0x800000000000000) != 0)
    {
      goto LABEL_14;
    }

    return (*(*a1 + 56))(a1);
  }

  if ((dword_298D1AA08[v5 - 11] & HIDWORD(v3)) == 0)
  {
    return (*(*a1 + 56))(a1);
  }

LABEL_14:
  v8 = *(a1 + 272);
  if (v8)
  {
    v12 = *(a1 + 16);
    if (v8 < v12 || v8 + 24 > v12 + *(a1 + 24))
    {
      sub_298B868A8("Malformed MachO file.", 1);
    }

    v13 = *(v8 + 8);
    v14 = bswap32(v13);
    if (((1 << v5) & 0x155800) == 0)
    {
      v14 = v13;
    }

    if (v5 <= 0x14)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*(*a1 + 64))(a1))
  {
    v10 = 16;
  }

  else
  {
    v10 = 12;
  }

  return *(a1 + 16) + v9 + v10 * v7;
}

uint64_t sub_298B7D870(uint64_t a1, unint64_t a2)
{
  v3 = sub_298B7D54C(a1, a2);
  if (*(a1 + 52) != 16777223 && (v3 & 0x80000000) != 0)
  {
    return BYTE3(v3) & 0xF;
  }

  v5 = *(a1 + 8);
  v6 = v5 > 0x14;
  v7 = (1 << v5) & 0x155800;
  v8 = v6 || v7 == 0;
  v9 = HIDWORD(v3) >> 28;
  if (!v8)
  {
    return BYTE4(v3) & 0xF;
  }

  return v9;
}

void sub_298B7D8F4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*(*a1 + 320))(a1, a2);
  v6 = (*(*a1 + 392))(a1);
  v7 = 0;
  if (v6 <= 4)
  {
    if (!v6)
    {
      goto LABEL_19;
    }

    if (v6 != 1)
    {
      v8 = 0;
      if (v6 != 3)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }

    if (v5 > 9)
    {
      goto LABEL_19;
    }

    v9 = off_29EEB56B8;
  }

  else
  {
    if (v6 <= 36)
    {
      if (v6 != 5)
      {
        v8 = 0;
        if (v6 != 21)
        {
          goto LABEL_20;
        }

        if (v5 <= 0xF)
        {
          v9 = off_29EEB5768;
          goto LABEL_26;
        }

        goto LABEL_19;
      }

LABEL_10:
      if (v5 <= 0xB)
      {
        v9 = off_29EEB5708;
        goto LABEL_26;
      }

LABEL_19:
      v8 = "Unknown";
      v7 = 7;
LABEL_20:
      v10 = a3[1];
      v11 = v10 + v7;
      if (a3[2] >= v10 + v7)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (v6 == 38)
    {
      if (v5 > 9)
      {
        goto LABEL_19;
      }

      v9 = off_29EEB5668;
    }

    else
    {
      v8 = 0;
      if (v6 != 37)
      {
        goto LABEL_20;
      }

      if (v5 > 5)
      {
        goto LABEL_19;
      }

      v9 = off_29EEB5638;
    }
  }

LABEL_26:
  v8 = v9[v5];
  v7 = strlen(v8);
  v10 = a3[1];
  v11 = v10 + v7;
  if (a3[2] < v10 + v7)
  {
LABEL_21:
    sub_298B90C08(a3, a3 + 3, v11, 1);
    v10 = a3[1];
  }

LABEL_22:
  if (v7)
  {
    memcpy((*a3 + v10), v8, v7);
    v10 = a3[1];
  }

  a3[1] = v10 + v7;
}

uint64_t sub_298B7DAB8(void *a1)
{
  v2 = a1[34];
  if (!v2)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  sub_298B7B624(a1, v2, &v7);
  v4 = a1[34];
  if (!v4 || HIDWORD(v8) == 0)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = sub_298B7B624(a1, v4, &v10);
  if (!a1[34] || !HIDWORD(v11))
  {
    sub_298B868A8("Requested symbol index is out of range.", 1);
  }

  (*(*a1 + 64))(a1, v6);
  return a1[2] + v11;
}

uint64_t sub_298B7DB84(void *a1, unsigned int a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (!a1[34])
  {
    v8 = 0x1800000002;
    v9 = 0;
    v10 = 0;
    goto LABEL_3;
  }

  v4.n128_f64[0] = sub_298B7B624(a1, a1[34], &v8);
  if (a1[34])
  {
    v5 = HIDWORD(v9) > a2;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
LABEL_3:
    sub_298B868A8("Requested symbol index is out of range.", 1);
  }

  if ((*(*a1 + 64))(a1, v4))
  {
    v6 = 16;
  }

  else
  {
    v6 = 12;
  }

  return a1[2] + v9 + v6 * a2;
}

uint64_t sub_298B7DC58(void *a1)
{
  v2 = a1[34];
  if (!v2)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v4.n128_f64[0] = sub_298B7B624(a1, v2, &v7);
  if (!a1[34] || HIDWORD(v8) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 64))(a1, v4))
  {
    v6 = 16;
  }

  else
  {
    v6 = 12;
  }

  return a1[2] + (v8 + HIDWORD(v8) * v6);
}

uint64_t sub_298B7DD1C(uint64_t a1)
{
  if ((*(*a1 + 64))(a1))
  {
    return 8;
  }

  else
  {
    return 4;
  }
}

const char *sub_298B7DD64(_DWORD *a1)
{
  v1 = a1[13];
  if (((*(*a1 + 64))(a1) & 1) == 0)
  {
    if (v1 > 17)
    {
      if (v1 == 18)
      {
        return "Mach-O 32-bit ppc";
      }

      if (v1 == 33554444)
      {
        return "Mach-O arm64 (ILP32)";
      }
    }

    else
    {
      if (v1 == 7)
      {
        return "Mach-O 32-bit i386";
      }

      if (v1 == 12)
      {
        return "Mach-O arm";
      }
    }

    return "Mach-O 32-bit unknown";
  }

  if (v1 > 16777233)
  {
    if (v1 == 16777234)
    {
      return "Mach-O 64-bit ppc64";
    }

    if (v1 != 33554444)
    {
      return "Mach-O 64-bit unknown";
    }

    return "Mach-O arm64 (ILP32)";
  }

  if (v1 != 16777223)
  {
    if (v1 == 16777228)
    {
      return "Mach-O arm64";
    }

    return "Mach-O 64-bit unknown";
  }

  return "Mach-O 64-bit x86-64";
}

uint64_t *sub_298B7DEF8@<X0>(uint64_t *result@<X0>, int a2@<W1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (result <= 16777227)
  {
    if (result <= 16777222)
    {
      if (result == 7)
      {
        if ((a2 & 0xFFFFFF) != 3)
        {
          goto LABEL_9;
        }

        if (a4)
        {
          *a4 = "i386";
        }

        v5 = "i386-apple-darwin";
      }

      else if (result == 12)
      {
        v6 = a2 & 0xFFFFFF;
        if ((a2 & 0xFFFFFFu) > 0xA)
        {
          if ((a2 & 0xFFFFFFu) <= 0xD)
          {
            if (v6 == 11)
            {
              if (a3)
              {
                *a3 = "cortex-a7";
              }

              if (a4)
              {
                *a4 = "armv7s";
              }

              v5 = "armv7s-apple-darwin";
            }

            else
            {
              if (v6 != 12)
              {
                goto LABEL_9;
              }

              if (a3)
              {
                *a3 = "cortex-a7";
              }

              if (a4)
              {
                *a4 = "armv7k";
              }

              v5 = "armv7k-apple-darwin";
            }
          }

          else
          {
            switch(v6)
            {
              case 14:
                if (a3)
                {
                  *a3 = "cortex-m0";
                }

                if (a4)
                {
                  *a4 = "armv6m";
                }

                v5 = "armv6m-apple-darwin";
                break;
              case 15:
                if (a3)
                {
                  *a3 = "cortex-m3";
                }

                if (a4)
                {
                  *a4 = "armv7m";
                }

                v5 = "thumbv7m-apple-darwin";
                break;
              case 16:
                if (a3)
                {
                  *a3 = "cortex-m4";
                }

                if (a4)
                {
                  *a4 = "armv7em";
                }

                v5 = "thumbv7em-apple-darwin";
                break;
              default:
                goto LABEL_9;
            }
          }
        }

        else if ((a2 & 0xFFFFFFu) <= 6)
        {
          if (v6 == 5)
          {
            if (a4)
            {
              *a4 = "armv4t";
            }

            v5 = "armv4t-apple-darwin";
          }

          else
          {
            if (v6 != 6)
            {
              goto LABEL_9;
            }

            if (a4)
            {
              *a4 = "armv6";
            }

            v5 = "armv6-apple-darwin";
          }
        }

        else
        {
          switch(v6)
          {
            case 7:
              if (a4)
              {
                *a4 = "armv5e";
              }

              v5 = "armv5e-apple-darwin";
              break;
            case 8:
              if (a4)
              {
                *a4 = "xscale";
              }

              v5 = "xscale-apple-darwin";
              break;
            case 9:
              if (a4)
              {
                *a4 = "armv7";
              }

              v5 = "armv7-apple-darwin";
              break;
            default:
              goto LABEL_9;
          }
        }
      }

      else
      {
        if (result != 18 || (a2 & 0xFFFFFF) != 0)
        {
          goto LABEL_9;
        }

        if (a4)
        {
          *a4 = "ppc";
        }

        v5 = "ppc-apple-darwin";
      }
    }

    else
    {
      if (result != 16777223)
      {
        goto LABEL_9;
      }

      if ((a2 & 0xFFFFFF) == 8)
      {
        if (a4)
        {
          *a4 = "x86_64h";
        }

        v5 = "x86_64h-apple-darwin";
      }

      else
      {
        if ((a2 & 0xFFFFFF) != 3)
        {
          goto LABEL_9;
        }

        if (a4)
        {
          *a4 = "x86_64";
        }

        v5 = "x86_64-apple-darwin";
      }
    }

LABEL_62:
    v7 = v5;
    v8 = 259;
    return sub_298CF26DC(a5, &v7);
  }

  if (result != 16777228)
  {
    if (result == 16777234)
    {
      if ((a2 & 0xFFFFFF) != 0)
      {
        goto LABEL_9;
      }

      if (a4)
      {
        *a4 = "ppc64";
      }

      v5 = "ppc64-apple-darwin";
    }

    else
    {
      if (result != 33554444 || (a2 & 0xFFFFFF) != 1)
      {
        goto LABEL_9;
      }

      if (a3)
      {
        *a3 = "apple-s4";
      }

      if (a4)
      {
        *a4 = "arm64_32";
      }

      v5 = "arm64_32-apple-darwin";
    }

    goto LABEL_62;
  }

  if ((a2 & 0xFFFFFF) == 2)
  {
    if (a3)
    {
      *a3 = "apple-a12";
    }

    if (a4)
    {
      *a4 = "arm64e";
    }

    v5 = "arm64e-apple-darwin";
    goto LABEL_62;
  }

  if ((a2 & 0xFFFFFF) == 0)
  {
    if (a3)
    {
      *a3 = "cyclone";
    }

    if (a4)
    {
      *a4 = "arm64";
    }

    v5 = "arm64-apple-darwin";
    goto LABEL_62;
  }

LABEL_9:
  *(a5 + 1) = 0u;
  *(a5 + 2) = 0u;
  *a5 = 0u;
  return result;
}

uint64_t sub_298B7E2F8(uint64_t a1)
{
  v1 = *(a1 + 52);
  if (v1 <= 16777222)
  {
    if (v1 == 7)
    {
      return 37;
    }

    if (v1 != 12)
    {
      if (v1 == 18)
      {
        return 21;
      }

      return 0;
    }

    return 1;
  }

  else if (v1 > 16777233)
  {
    if (v1 != 16777234)
    {
      if (v1 == 33554444)
      {
        return 5;
      }

      return 0;
    }

    return 23;
  }

  else
  {
    if (v1 != 16777223)
    {
      if (v1 == 16777228)
      {
        return 3;
      }

      return 0;
    }

    return 38;
  }
}

double sub_298B7E3B4@<D0>(uint64_t result@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *(result + 16);
  if (v4 > a2 || (a2 + 5) > v4 + *(result + 24))
  {
    sub_298B868A8("Malformed MachO file.", 1);
  }

  v6 = a2[3];
  a3[2] = a2[2];
  a3[3] = v6;
  a3[4] = a2[4];
  v7 = a2[1];
  *a3 = *a2;
  a3[1] = v7;
  v8 = *(result + 8);
  if (v8 <= 0x14 && ((1 << v8) & 0x155800) != 0)
  {

    *&v7 = sub_298B806D8(a3);
  }

  return *&v7;
}

int8x16_t *sub_298B7E43C(int8x16_t *result, uint64_t a2, int8x16_t *a3)
{
  v3 = *(a2 + 16);
  v4 = a3 + 1;
  v5 = (v3 + *(a2 + 24));
  if (v3 <= a3)
  {
    v6 = v4 >= v5;
    v7 = v4 == v5;
  }

  else
  {
    v6 = 1;
    v7 = 0;
  }

  if (!v7 && v6)
  {
    v12[0] = "truncated or malformed object (";
    v12[2] = "Structure read out-of-range";
    v13 = 771;
    v14 = v12;
    v15 = ")";
    v16 = 770;
    operator new();
  }

  v8 = *a3;
  v9 = *(a2 + 8);
  v6 = v9 >= 0x14;
  v7 = v9 == 20;
  v10 = (1 << v9) & 0x155800;
  if ((v7 || !v6) && v10 != 0)
  {
    v8 = vrev32q_s8(v8);
  }

  result[1].i8[0] &= ~1u;
  *result = v8;
  return result;
}

void sub_298B7E52C(void *a1@<X0>, void *a2@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a1[39];
  if (v3)
  {
    sub_298B7E43C(&v24, a1, v3);
    if (v25)
    {
      *a2 = a2 + 2;
      a2[1] = 0x600000000;
      if (v24.i64[0])
      {
        (*(*v24.i64[0] + 8))(v24.i64[0]);
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = v24.u32[2];
      v21 = v23;
      v22 = 0x800000000;
      v8 = a1[2];
      v9 = a1[3];
LABEL_4:
      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (v9 - v7 != v10)
      {
        v13 = *(v8 + v7 + v10);
        v14 = v13 & 0x7F;
        if (v12 >= 0x3F)
        {
          v15 = v14 > 1;
          if (v12 != 63)
          {
            v15 = v14 != 0;
          }

          if (v15)
          {
            break;
          }
        }

        v11 += v14 << v12;
        v12 += 7;
        ++v10;
        if ((v13 & 0x80) == 0)
        {
          if (!v11)
          {
            break;
          }

          if (v5 >= HIDWORD(v22))
          {
            v19 = v8;
            v20 = v6;
            v16 = v11;
            v17 = v7;
            v18 = v10;
            sub_298B90A44(&v21, v23, v5 + 1, 8);
            LODWORD(v10) = v18;
            v8 = v19;
            v11 = v16;
            v7 = v17;
            v6 = v20;
            v5 = v22;
          }

          v7 += v10;
          v6 += v11;
          *(v21 + v5) = v6;
          v5 = v22 + 1;
          LODWORD(v22) = v22 + 1;
          goto LABEL_4;
        }
      }

      *a2 = a2 + 2;
      a2[1] = 0x600000000;
      if (v5)
      {
        sub_298AF7A74(a2, &v21);
      }

      if (v21 != v23)
      {
        free(v21);
      }
    }
  }

  else
  {
    *a2 = a2 + 2;
    a2[1] = 0x600000000;
  }
}

void sub_298B7E74C(__int128 *a1)
{
  v5 = *(a1 + 1);
  if (v5 >= 4)
  {
    v6 = 4;
  }

  else
  {
    v6 = *(a1 + 1);
  }

  if (v5 < 4 || (v7 = *a1, memcmp(*a1, "\xFE\xED\xFA\xCE", v6)) && memcmp(v7, "\xCE\xFA\xED\xFE\xFE\xED\xFA\xCF", v6) && memcmp(v7, "\xFE\xED\xFA\xCF", v6) && memcmp(v7, "\xCF\xFA\xED\xFEUnrecognized MachO magic number", v6))
  {
    operator new();
  }

  sub_298B749F4();
}

const char *sub_298B7E8D4(uint64_t a1, void *a2, uint64_t a3)
{
  result = a2;
  if (a3 == 14 && *a2 == 0x74735F6775626564 && *(a2 + 6) == 0x7366666F5F727473)
  {
    return "debug_str_offsets";
  }

  return result;
}

uint64_t sub_298B7E930(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 <= 15)
  {
    if (a3 == 14)
    {
      if (*a2 == 0x3574666977735F5FLL && *(a2 + 6) == 0x6F746F72705F3574)
      {
        return 6;
      }
    }

    else if (a3 == 15)
    {
      if (*a2 == 0x3574666977735F5FLL && *(a2 + 7) == 0x736F746F72705F35)
      {
        return 7;
      }

      if (*a2 == 0x3574666977735F5FLL && *(a2 + 7) == 0x6D756E65706D5F35)
      {
        return 9;
      }
    }

    else if (a3 == 11 && *a2 == 0x5F74666977735F5FLL && *(a2 + 3) == 0x7473615F74666977)
    {
      return 10;
    }

    return 11;
  }

  if (a3 != 16)
  {
    return 11;
  }

  if (*a2 == 0x3574666977735F5FLL && a2[1] == 0x646D646C6569665FLL)
  {
    return 0;
  }

  if (*a2 == 0x3574666977735F5FLL && a2[1] == 0x7974636F7373615FLL)
  {
    return 1;
  }

  if (*a2 == 0x3574666977735F5FLL && a2[1] == 0x6E69746C6975625FLL)
  {
    return 2;
  }

  if (*a2 == 0x3574666977735F5FLL && a2[1] == 0x657275747061635FLL)
  {
    return 3;
  }

  if (*a2 == 0x3574666977735F5FLL && a2[1] == 0x666572657079745FLL)
  {
    return 4;
  }

  if (*a2 != 0x3574666977735F5FLL || a2[1] != 0x7274736C6665725FLL)
  {
    if (*a2 == 0x3574666977735F5FLL && a2[1] == 0x73636E756663615FLL)
    {
      return 8;
    }

    return 11;
  }

  return 5;
}

void sub_298B7EB6C(void *a1)
{
  *a1 = &unk_2A1F1D7A8;
  v2 = a1[33];
  a1[33] = 0;
  if (v2)
  {
    sub_298B804A4(v2);
  }

  v3 = a1[29];
  if (v3 != a1 + 31)
  {
    free(v3);
  }

  v4 = a1[26];
  if (v4 != a1 + 28)
  {
    free(v4);
  }

  v5 = a1[16];
  if (v5 != a1 + 18)
  {
    free(v5);
  }

  v6 = a1[13];
  if (v6 != a1 + 15)
  {
    free(v6);
  }

  v7 = a1[10];
  if (v7 != a1 + 12)
  {
    free(v7);
  }

  JUMPOUT(0x29C2945F0);
}

void sub_298B7EC40(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

double sub_298B7EC54@<D0>(uint64_t a1@<X8>)
{
  v3 = 0uLL;
  v4 = 0;
  sub_298CF1750(&v3, "", 0);
  *(a1 + 24) &= ~1u;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_298B7ED64(uint64_t result, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  v4 = *(a2 + 16);
  if (v4 > a3 || (v5 = v4 + *(a2 + 24), (a3 + 2) > v5))
  {
    v22[0] = "Structure read out-of-range";
    v23 = 259;
    sub_298B76A80(v22);
  }

  LODWORD(v7) = *a3;
  LODWORD(v6) = a3[1];
  v8 = *(a2 + 8);
  v9 = v8 >= 0x14;
  v11 = v8 == 20;
  v10 = (1 << v8) & 0x155800;
  v11 = !v11 && v9 || v10 == 0;
  v12 = bswap32(v7);
  v13 = bswap32(v6);
  if (v11)
  {
    v6 = v6;
  }

  else
  {
    v6 = v13;
  }

  if (v11)
  {
    v7 = v7;
  }

  else
  {
    v7 = v12;
  }

  if (a3 + v6 > v5)
  {
    v18[0] = "load command ";
    v19 = 259;
    v17 = 265;
    LODWORD(v16[0]) = a4;
    sub_298ADC860(v18, v16, v20);
    v14 = " extends past end of file";
    v15 = 259;
    sub_298ADC860(v20, &v14, v22);
    sub_298B76A80(v22);
  }

  if (v6 <= 7)
  {
    v16[0] = "load command ";
    v16[2] = a4;
    v17 = 2307;
    v18[0] = v16;
    v18[2] = " with size less than 8 bytes";
    v19 = 770;
    v20[0] = "truncated or malformed object (";
    v20[2] = v18;
    v21 = 515;
    v22[0] = v20;
    v22[2] = ")";
    v23 = 770;
    operator new();
  }

  *(result + 16) &= ~1u;
  *result = a3;
  *(result + 8) = v7 | (v6 << 32);
  return result;
}

uint64_t *sub_298B7EF50(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t a4, _BYTE *a5)
{
  v45 = a4;
  v46 = a3;
  if (a4)
  {
    v5 = a2[1];
    if (v5 != a2)
    {
      v6 = a4 + a3;
      v7 = v5[2];
      while (1)
      {
        if (v7 <= a3 && v5[3] + v7 > a3 || v6 > v7 && v6 < v5[3] + v7 || v7 >= a3 && v6 >= v5[3] + v7)
        {
          v8 = 1;
          v34 = 1;
          if (*a5)
          {
            v32[0] = a5;
            v9 = 3;
          }

          else
          {
            v9 = 1;
          }

          v33 = v9;
          v30 = " at offset ";
          v31 = 259;
          sub_298ADC860(v32, &v30, v35);
          v29 = 269;
          v28 = &v46;
          sub_298ADC860(v35, &v28, v36);
          v26 = " with a size of ";
          v27 = 259;
          sub_298ADC860(v36, &v26, v37);
          v25 = 269;
          v24 = &v45;
          sub_298ADC860(v37, &v24, v38);
          v22 = ", overlaps ";
          v23 = 259;
          sub_298ADC860(v38, &v22, v39);
          v10 = v5[4];
          v21 = 1;
          if (*v10)
          {
            v19[0] = v10;
            v8 = 3;
          }

          v20 = v8;
          sub_298ADC860(v39, v19, v40);
          v17 = " at offset ";
          v18 = 259;
          sub_298ADC860(v40, &v17, v41);
          v16 = 269;
          v15[0] = (v5 + 2);
          sub_298ADC860(v41, v15, v42);
          v13 = " with a size of ";
          v14 = 259;
          sub_298ADC860(v42, &v13, v43);
          v12 = 269;
          v11[0] = (v5 + 3);
          sub_298ADC860(v43, v11, v44);
          sub_298B76A80(v44);
        }

        v5 = v5[1];
        if (v5 == a2)
        {
          break;
        }

        v7 = v5[2];
        if (v6 <= v7)
        {
          operator new();
        }
      }
    }

    operator new();
  }

  *result = 0;
  return result;
}

int8x8_t sub_298B7F22C(uint64_t a1)
{
  *a1 = vrev32q_s8(*a1);
  result = vrev32_s8(*(a1 + 16));
  *(a1 + 16) = result;
  return result;
}

int8x16_t sub_298B7F248(int8x16_t *a1)
{
  v1 = vrev32q_s8(a1[1]);
  *a1 = vrev32q_s8(*a1);
  a1[1] = v1;
  v2 = vrev32q_s8(a1[3]);
  a1[2] = vrev32q_s8(a1[2]);
  a1[3] = v2;
  result = vrev32q_s8(a1[4]);
  a1[4] = result;
  return result;
}

uint64_t sub_298B7F278(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = a3 + 12;
  v5 = v3 + *(a2 + 24);
  if (v3 <= a3)
  {
    v6 = v4 >= v5;
    v7 = v4 == v5;
  }

  else
  {
    v6 = 1;
    v7 = 0;
  }

  if (!v7 && v6)
  {
    v15 = "Structure read out-of-range";
    v16 = 259;
    sub_298B76A80(&v15);
  }

  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *(a2 + 8);
  v6 = v10 >= 0x14;
  v7 = v10 == 20;
  v11 = (1 << v10) & 0x155800;
  v12 = !v7 && v6 || v11 == 0;
  v13 = COERCE_DOUBLE(vrev32_s8(*&v8));
  v14 = bswap32(v9);
  if (!v12)
  {
    v9 = v14;
  }

  *(result + 16) &= ~1u;
  if (!v12)
  {
    v8 = v13;
  }

  *result = v8;
  *(result + 8) = v9;
  return result;
}

uint64_t sub_298B7F33C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = a3 + 12;
  v5 = v3 + *(a2 + 24);
  if (v3 <= a3)
  {
    v6 = v4 >= v5;
    v7 = v4 == v5;
  }

  else
  {
    v6 = 1;
    v7 = 0;
  }

  if (!v7 && v6)
  {
    v15 = "Structure read out-of-range";
    v16 = 259;
    sub_298B76A80(&v15);
  }

  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *(a2 + 8);
  v6 = v10 >= 0x14;
  v7 = v10 == 20;
  v11 = (1 << v10) & 0x155800;
  v12 = !v7 && v6 || v11 == 0;
  v13 = COERCE_DOUBLE(vrev32_s8(*&v8));
  v14 = bswap32(v9);
  if (!v12)
  {
    v9 = v14;
  }

  *(result + 16) &= ~1u;
  if (!v12)
  {
    v8 = v13;
  }

  *result = v8;
  *(result + 8) = v9;
  return result;
}

uint64_t sub_298B7F400(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = *(a2 + 16);
  v4 = v3 > a3 || (a3 + 2) > v3 + *(a2 + 24);
  if (v4)
  {
    v12 = "Structure read out-of-range";
    v13 = 259;
    sub_298B76A80(&v12);
  }

  LODWORD(v5) = *a3;
  LODWORD(v6) = a3[1];
  v7 = *(a2 + 8);
  v4 = v7 > 0x14;
  v8 = (1 << v7) & 0x155800;
  v9 = v4 || v8 == 0;
  v10 = bswap32(v5);
  v11 = bswap32(v6);
  if (v9)
  {
    v6 = v6;
  }

  else
  {
    v6 = v11;
  }

  if (v9)
  {
    v5 = v5;
  }

  else
  {
    v5 = v10;
  }

  *(result + 8) &= ~1u;
  *result = v5 | (v6 << 32);
  return result;
}

void sub_298B7F4BC(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_298B7F4FC(a1, a2);
  }

  sub_298ADDDA0();
}

void sub_298B7F4FC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {

    operator new();
  }

  sub_298ADDDA0();
}

uint64_t **sub_298B7F538(void *a1, unsigned __int8 *a2, uint64_t a3, __int128 **a4)
{
  v4 = a2;
  v6 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v7 = a2[23];
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = sub_298B7F920(&v26, a2, v7);
  v9 = v8;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_43;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = v8;
    if (v8 >= *&v10)
    {
      v12 = v8 % *&v10;
    }
  }

  else
  {
    v12 = (*&v10 - 1) & v8;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_43:
    operator new();
  }

  v15 = v4[23];
  if (v15 >= 0)
  {
    v16 = v4[23];
  }

  else
  {
    v16 = *(v4 + 1);
  }

  if (v15 < 0)
  {
    v4 = *v4;
  }

  if (v11.u32[0] < 2uLL)
  {
    while (1)
    {
      v17 = v14[1];
      if (v17 == v9)
      {
        v18 = *(v14 + 39);
        v19 = v18;
        if (v18 < 0)
        {
          v18 = v14[3];
        }

        if (v18 == v16)
        {
          v20 = v19 >= 0 ? (v14 + 2) : v14[2];
          if (!memcmp(v20, v4, v16))
          {
            return v14;
          }
        }
      }

      else if ((v17 & (*&v10 - 1)) != v12)
      {
        goto LABEL_43;
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v21 = v14[1];
    if (v21 == v9)
    {
      break;
    }

    if (v21 >= *&v10)
    {
      v21 %= *&v10;
    }

    if (v21 != v12)
    {
      goto LABEL_43;
    }

LABEL_31:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_43;
    }
  }

  v22 = *(v14 + 39);
  v23 = v22;
  if (v22 < 0)
  {
    v22 = v14[3];
  }

  if (v22 != v16)
  {
    goto LABEL_31;
  }

  v24 = v23 >= 0 ? (v14 + 2) : v14[2];
  if (memcmp(v24, v4, v16))
  {
    goto LABEL_31;
  }

  return v14;
}

unint64_t sub_298B7F920(uint64_t a1, void *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 <= 0x40)
    {
      return sub_298B7FD84(a2, a3);
    }

    else
    {
      v4 = *(a2 + a3 - 56);
      v5 = *(a2 + a3 - 16);
      v6 = *(a2 + a3 - 8);
      v7 = v4 + v5;
      v9 = *(a2 + a3 - 48);
      v8 = *(a2 + a3 - 40);
      v10 = *(a2 + a3 - 24);
      v11 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v9 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ (v9 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v9 + v4 + v13;
      v15 = __ROR8__(v14, 44);
      v16 = v14 + v8;
      v17 = v7 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v18 = v10 + v5 + v17;
      v19 = v15 + v13 + __ROR8__(v13 + v8 + v12, 21);
      v20 = v18 + v6;
      v21 = __ROR8__(v18, 44) + v17 + __ROR8__(v17 + v8 + v6, 21);
      v22 = a2[1];
      v24 = a2[6];
      v23 = a2[7];
      v25 = (0xB492B66FBE98F273 * __ROR8__(*a2 - 0x4B6D499041670D8DLL * v8 + v16 + v7 + v22, 37)) ^ v21;
      v26 = a2[5];
      v27 = v26 + v16 - 0x4B6D499041670D8DLL * __ROR8__(v7 + v24 + v19, 42);
      v28 = v12 + v20;
      v29 = *a2 - 0x4B6D499041670D8DLL * v19;
      v31 = a2[2];
      v30 = a2[3];
      v32 = v29 + v20 + v25 + v30;
      v33 = v29 + v22 + v31 + v30;
      v34 = __ROR8__(v29 + v22 + v31, 44) + v29;
      v35 = (a3 - 1) & 0xFFFFFFFFFFFFFFC0;
      v36 = 0xB492B66FBE98F273 * __ROR8__(v28, 33);
      v37 = v34 + __ROR8__(v32, 21);
      v38 = v36 + v21 + a2[4];
      v39 = v26 + v24 + v38;
      v40 = __ROR8__(v39, 44);
      v41 = v39 + v23;
      v42 = v40 + v38 + __ROR8__(v27 + v31 + v38 + v23, 21);
      if (v35 == 64)
      {
        v43 = v25;
      }

      else
      {
        v46 = 64 - v35;
        v47 = a2 + 15;
        do
        {
          v48 = *(v47 - 6);
          v49 = v36 + v33 + v27 + v48;
          v50 = *(v47 - 1);
          v51 = *(v47 - 2);
          v27 = v51 + v33 - 0x4B6D499041670D8DLL * __ROR8__(v27 + v37 + v50, 42);
          v52 = v25 + v41;
          v53 = *(v47 - 5);
          v54 = *(v47 - 4);
          v55 = *(v47 - 7) - 0x4B6D499041670D8DLL * v37;
          v56 = v55 + v41 + v54;
          v57 = v55 + v48 + v53;
          v33 = v57 + v54;
          v58 = __ROR8__(v57, 44) + v55;
          v43 = (0xB492B66FBE98F273 * __ROR8__(v49, 37)) ^ v42;
          v36 = 0xB492B66FBE98F273 * __ROR8__(v52, 33);
          v37 = v58 + __ROR8__(v56 + v43, 21);
          v59 = v36 + v42 + *(v47 - 3);
          v41 = v51 + v50 + v59 + *v47;
          v42 = __ROR8__(v51 + v50 + v59, 44) + v59 + __ROR8__(v27 + v53 + v59 + *v47, 21);
          v47 += 8;
          v25 = v43;
          v46 += 64;
        }

        while (v46);
      }

      v44 = v43 - 0x4B6D499041670D8DLL * (v27 ^ (v27 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v33)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v33)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v33)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v33)))) >> 47));
      v45 = v36 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v37)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v37)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v45 ^ ((0x9DDFEA08EB382D69 * (v45 ^ v44)) >> 47) ^ (0x9DDFEA08EB382D69 * (v45 ^ v44)))) ^ ((0x9DDFEA08EB382D69 * (v45 ^ ((0x9DDFEA08EB382D69 * (v45 ^ v44)) >> 47) ^ (0x9DDFEA08EB382D69 * (v45 ^ v44)))) >> 47));
    }
  }

  else if (a3 > 0x10)
  {
    return sub_298B7FCD8(a2, a3);
  }

  else
  {
    return sub_298B7FBE0(a2, a3);
  }
}

unint64_t sub_298B7FBE0(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v5 = *(a1 + a2 - 4);
      v6 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v5);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
    }
  }

  else
  {
    v2 = *(a1 + a2 - 8);
    v3 = __ROR8__(v2 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
  }

  return result;
}

unint64_t sub_298B7FCD8(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * ((v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v5);
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_298B7FD84(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

uint64_t **sub_298B7FE44(void *a1, unsigned __int8 *a2)
{
  v2 = a2;
  v4 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v5 = a2[23];
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_298B7F920(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v16 = v12[1];
        if (v16 == v8)
        {
          v17 = *(v12 + 39);
          v18 = v17;
          if (v17 < 0)
          {
            v17 = v12[3];
          }

          if (v17 == v14)
          {
            v19 = v18 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v19, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v16 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v20 = v12[1];
      if (v20 == v8)
      {
        v21 = *(v12 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v12[3];
        }

        if (v21 == v14)
        {
          v23 = v22 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v23, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v20 >= *&v7)
        {
          v20 %= *&v7;
        }

        if (v20 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void *sub_298B7FFF8(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v8 = a1;
    sub_298B80190(a1, 2 * v5);
    v10 = *a3;
    v11 = *(v8 + 4) - 1;
    v12 = (37 * *a3) & v11;
    a4 = (*v8 + 24 * v12);
    v13 = *a4;
    if (*a3 == *a4)
    {
      goto LABEL_17;
    }

    v14 = 0;
    v15 = 1;
    while (v13 != -1)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v13 == -2;
      }

      if (v16)
      {
        v14 = a4;
      }

      v17 = v12 + v15++;
      v12 = v17 & v11;
      a4 = (*v8 + 24 * v12);
      v13 = *a4;
      if (v10 == *a4)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (v5 + ~v4 - *(a1 + 3) > v5 >> 3)
    {
      goto LABEL_3;
    }

    v8 = a1;
    sub_298B80190(a1, v5);
    v10 = *a3;
    v19 = *(v8 + 4) - 1;
    v20 = (37 * *a3) & v19;
    a4 = (*v8 + 24 * v20);
    v21 = *a4;
    if (*a3 == *a4)
    {
LABEL_17:
      a1 = v8;
      ++*(v8 + 2);
      if (v10 == -1)
      {
        return a4;
      }

      goto LABEL_4;
    }

    v14 = 0;
    v22 = 1;
    while (v21 != -1)
    {
      if (v14)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21 == -2;
      }

      if (v23)
      {
        v14 = a4;
      }

      v24 = v20 + v22++;
      v20 = v24 & v19;
      a4 = (*v8 + 24 * v20);
      v21 = *a4;
      if (v10 == *a4)
      {
        goto LABEL_17;
      }
    }
  }

  if (v14)
  {
    a4 = v14;
  }

  a1 = v8;
LABEL_3:
  v6 = *a4;
  ++*(a1 + 2);
  if (v6 != -1)
  {
LABEL_4:
    --*(a1 + 3);
  }

  return a4;
}

void *sub_298B80190(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    a1[1] = 0;
    v10 = *(a1 + 4);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = &result[3 * (v16 & 0x1FFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -1;
        v17[3] = -1;
        v17 += 6;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v26 = *v20;
            if (*v20 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v27 = *(a1 + 4) - 1;
              v28 = v27 & (37 * v26);
              v25 = *a1 + 24 * v28;
              v29 = *v25;
              if (v26 != *v25)
              {
                v30 = 0;
                v31 = 1;
                while (v29 != -1)
                {
                  if (v30)
                  {
                    v32 = 0;
                  }

                  else
                  {
                    v32 = v29 == -2;
                  }

                  if (v32)
                  {
                    v30 = v25;
                  }

                  v33 = v28 + v31++;
                  v28 = v33 & v27;
                  v25 = *a1 + 24 * (v33 & v27);
                  v29 = *v25;
                  if (v26 == *v25)
                  {
                    goto LABEL_26;
                  }
                }

                if (v30)
                {
                  v25 = v30;
                }
              }

LABEL_26:
              *v25 = v26;
              *(v25 + 8) = *(v20 + 1);
              ++*(a1 + 2);
            }

            v20 += 3;
          }

          while (v20 != &v4[3 * v3]);
        }

        JUMPOUT(0x29C2945E0);
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[3 * v10];
    do
    {
      *v12 = -1;
      v12 += 3;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  a1[1] = 0;
  v13 = *(a1 + 4);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_21:
      v24 = &result[3 * v13];
      do
      {
        *v15 = -1;
        v15 += 3;
      }

      while (v15 != v24);
      return result;
    }

    v21 = v14 / 0x18 + 1;
    v15 = &result[3 * (v21 & 0x1FFFFFFFFFFFFFFELL)];
    v22 = result;
    v23 = v21 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v22 = -1;
      v22[3] = -1;
      v22 += 6;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

void *sub_298B803F0(void *a1)
{
  *a1 = &unk_2A1F1D7A8;
  v2 = a1[33];
  a1[33] = 0;
  if (v2)
  {
    sub_298B804A4(v2);
  }

  v3 = a1[29];
  if (v3 != a1 + 31)
  {
    free(v3);
  }

  v4 = a1[26];
  if (v4 != a1 + 28)
  {
    free(v4);
  }

  v5 = a1[16];
  if (v5 != a1 + 18)
  {
    free(v5);
  }

  v6 = a1[13];
  if (v6 != a1 + 15)
  {
    free(v6);
  }

  v7 = a1[10];
  if (v7 != a1 + 12)
  {
    free(v7);
  }

  return a1;
}

void sub_298B804A4(void **a1)
{
  if (*a1 != a1 + 2)
  {
    free(*a1);
  }

  JUMPOUT(0x29C2945F0);
}

int8x16_t *sub_298B80500(int8x16_t *result, uint64_t a2, int8x16_t *a3)
{
  v7 = *(a2 + 16);
  v8 = v7 > a3 || &a3[2] > v7 + *(a2 + 24);
  if (v8)
  {
    v16 = v4;
    v17 = v3;
    v18 = v5;
    v19 = v6;
    v14 = "Structure read out-of-range";
    v15 = 259;
    sub_298B76A80(&v14);
  }

  v9 = *a3;
  v10 = a3[1];
  v11 = *(a2 + 8);
  v8 = v11 > 0x14;
  v12 = (1 << v11) & 0x155800;
  if (!v8 && v12 != 0)
  {
    v9 = vrev32q_s8(v9);
    v10 = vrev32q_s8(v10);
  }

  result[2].i8[0] &= ~1u;
  *result = v9;
  result[1] = v10;
  return result;
}

uint64_t *sub_298B805BC(uint64_t *result, char *a2, _BYTE *a3, unint64_t a4)
{
  v4 = result;
  v5 = result[2];
  v6 = *result;
  if (a4 > (v5 - *result) >> 3)
  {
    if (v6)
    {
      result[1] = v6;
      v14 = v6;
      v15 = a4;
      operator delete(v14);
      a4 = v15;
      v5 = 0;
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v16 = v5 >> 2;
      if (v5 >> 2 <= a4)
      {
        v16 = a4;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      sub_298B7F4BC(v4, v17);
    }

    sub_298ADDDA0();
  }

  v7 = result[1];
  v8 = v7 - v6;
  if (a4 <= (v7 - v6) >> 3)
  {
    v13 = a3 - a2;
    if (a3 != a2)
    {
      result = memmove(v6, a2, v13);
    }

    v12 = &v6[v13];
  }

  else
  {
    v9 = &a2[v8];
    if (v7 != v6)
    {
      v10 = a3;
      result = memmove(*result, a2, v8);
      a3 = v10;
      v7 = v4[1];
    }

    v11 = (a3 - v9);
    if (a3 != v9)
    {
      result = memmove(v7, v9, a3 - v9);
    }

    v12 = &v11[v7];
  }

  v4[1] = v12;
  return result;
}

int8x8_t sub_298B806D8(uint64_t a1)
{
  v1 = vrev32q_s8(*(a1 + 48));
  *(a1 + 32) = vrev64q_s8(*(a1 + 32));
  *(a1 + 48) = v1;
  result = vrev32_s8(*(a1 + 64));
  *(a1 + 64) = result;
  *(a1 + 72) = bswap32(*(a1 + 72));
  return result;
}

double sub_298B80704(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (a2 && *(a2 + 52) > a3)
  {
    v3 = *(a2 + 16) + 8;
    if (*(a2 + 48) == -889275714)
    {
      v4 = (v3 + 20 * a3);
      v5 = bswap32(v4[1].u32[0]);
      v6 = vrev32q_s8(*v4);
      *(a1 + 12) = v6;
      *(a1 + 28) = v5;
    }

    else
    {
      v7 = v3 + 32 * a3;
      *v6.i8 = vrev32_s8(*(v7 + 24));
      v8 = vrev64q_s8(*(v7 + 8));
      *(a1 + 32) = vrev32_s8(*v7);
      *(a1 + 40) = v8;
      *(a1 + 56) = v6.i64[0];
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return *v6.i64;
}

uint64_t sub_298B8084C(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v12 = *a2;
  v11 = a2[1];
  *(a1 + 8) = 1;
  *(a1 + 16) = v12;
  *(a1 + 32) = v11;
  *a1 = &unk_2A1F1D980;
  *(a1 + 48) = 0;
  v13 = *(a1 + 24);
  if (v13 <= 7)
  {
    LODWORD(v156[0]) = 2;
    sub_298B81438(v157, v156);
  }

  v14 = *(a1 + 16);
  v15 = __rev32(v14->i64[0]);
  v16 = HIDWORD(v15);
  *(a1 + 48) = v15;
  if (!HIDWORD(v15))
  {
    v62 = "contains zero architecture types";
    goto LABEL_95;
  }

  if (v15 == -889275714)
  {
    v17 = (20 * HIDWORD(v15) + 8);
    if (v13 < v17)
    {
      goto LABEL_5;
    }

    v21 = &v14->i64[1];
    if (v16 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = HIDWORD(v15);
    }

    v23 = &v14->u32[3];
    while (1)
    {
      v24 = bswap32(v23[1]);
      if (v24 + bswap32(v23[2]) > v13)
      {
        break;
      }

      v3 = bswap32(v23[3]);
      if (v3 > 0xF)
      {
        v8 = bswap32(*(v23 - 1));
        v6 = bswap32(*v23);
        goto LABEL_55;
      }

      if ((~(-1 << v3) & v24) != 0)
      {
        v8 = bswap32(*(v23 - 1));
        v6 = bswap32(*v23);
        v141[0] = "offset: ";
        v142 = 259;
        goto LABEL_63;
      }

      if (v17 > v24)
      {
        v45 = bswap32(*(v23 - 1));
        v6 = bswap32(*v23);
        goto LABEL_41;
      }

      v23 += 5;
      if (!--v22)
      {
        v25 = 1;
        goto LABEL_20;
      }
    }

    v48 = bswap32(*(v23 - 1));
    LODWORD(v3) = bswap32(*v23);
LABEL_49:
    v149[0] = "offset plus size of cputype (";
    v150 = 259;
    v148 = 265;
    LODWORD(v147[0]) = v48;
    sub_298ADC860(v149, v147, v151);
    v145[0] = ") cpusubtype (";
    v146 = 259;
    sub_298ADC860(v151, v145, v154);
    if (*(a1 + 48) == -889275714)
    {
      v49 = v3;
    }

    else
    {
      v49 = v24;
    }

    v144 = 265;
    LODWORD(v143[0]) = v49 & 0xFFFFFF;
    sub_298ADC860(v154, v143, v156);
    v141[0] = ") extends past the end of the file";
    v142 = 259;
    goto LABEL_53;
  }

  if (v15 != -889275713)
  {
    v62 = "bad magic number";
LABEL_95:
    v157[0] = v62;
    v158 = 259;
    sub_298B814A0(v156, v157);
  }

  v63 = (32 * (HIDWORD(v15) & 0x7FFFFFF)) | 8;
  if (v13 < v63)
  {
LABEL_5:
    v154[0] = "fat_arch";
    v18 = "";
    v155 = 259;
    if (v15 != -889275714)
    {
      v18 = "_64";
    }

    v19 = 1;
    v153 = 1;
    if (*v18)
    {
      v151[0] = v18;
      v19 = 3;
    }

    v152 = v19;
    sub_298ADC860(v154, v151, v156);
    v149[0] = " structs would extend past the end of the file";
    v150 = 259;
    sub_298ADC860(v156, v149, v157);
    sub_298B814A0(v147, v157);
  }

  v21 = &v14->i64[1];
  if (v16 <= 1)
  {
    v64 = 1;
  }

  else
  {
    v64 = HIDWORD(v15);
  }

  v65 = v14 + 1;
  do
  {
    v24 = bswap64(v65->i64[0]);
    if (v24 + bswap64(v65->u64[1]) > v13)
    {
      v48 = bswap32(v65[-1].u32[2]);
      LODWORD(v24) = bswap32(v65[-1].u32[3]);
      goto LABEL_49;
    }

    v4 = bswap32(v65[1].u32[0]);
    if (v4 >= 0x10)
    {
      v7 = bswap32(v65[-1].u32[2]);
      v5 = bswap32(v65[-1].u32[3]);
      LODWORD(v3) = v4;
LABEL_55:
      v141[0] = "align (2^";
      v142 = 259;
      v140 = 265;
      LODWORD(v139[0]) = v3;
      sub_298ADC860(v141, v139, v143);
      v137[0] = ") too large for cputype (";
      v138 = 259;
      sub_298ADC860(v143, v137, v145);
      if (*(a1 + 48) == -889275714)
      {
        v50 = v8;
      }

      else
      {
        v50 = v7;
      }

      v136 = 265;
      LODWORD(v135[0]) = v50;
      sub_298ADC860(v145, v135, v147);
      v133[0] = ") cpusubtype (";
      v134 = 259;
      sub_298ADC860(v147, v133, v149);
      if (*(a1 + 48) == -889275714)
      {
        v51 = v6;
      }

      else
      {
        v51 = v5;
      }

      v132 = 265;
      LODWORD(v131[0]) = v51 & 0xFFFFFF;
      sub_298ADC860(v149, v131, v151);
      v129[0] = ") (maximum 2^";
      v130 = 259;
      sub_298ADC860(v151, v129, v154);
      v128 = 265;
      v52 = 15;
LABEL_73:
      LODWORD(v127[0]) = v52;
      sub_298ADC860(v154, v127, v156);
      v125[0] = ")";
      v126 = 259;
      sub_298ADC860(v156, v125, v157);
      sub_298B814A0(v122, v157);
    }

    if ((v24 & ~(-1 << v4)) != 0)
    {
      v7 = bswap32(v65[-1].u32[2]);
      v5 = bswap32(v65[-1].u32[3]);
      v141[0] = "offset: ";
      v142 = 259;
LABEL_63:
      v120[0] = v24;
      v140 = 269;
      v139[0] = v120;
      sub_298ADC860(v141, v139, v143);
      v137[0] = " for cputype (";
      v138 = 259;
      sub_298ADC860(v143, v137, v145);
      if (*(a1 + 48) == -889275714)
      {
        v53 = v8;
      }

      else
      {
        v53 = v7;
      }

      v136 = 265;
      LODWORD(v135[0]) = v53;
      sub_298ADC860(v145, v135, v147);
      v133[0] = ") cpusubtype (";
      v134 = 259;
      sub_298ADC860(v147, v133, v149);
      if (*(a1 + 48) == -889275714)
      {
        v54 = v6;
      }

      else
      {
        v54 = v5;
      }

      v132 = 265;
      LODWORD(v131[0]) = v54 & 0xFFFFFF;
      sub_298ADC860(v149, v131, v151);
      v129[0] = ") not aligned on it's alignment (2^";
      v130 = 259;
      sub_298ADC860(v151, v129, v154);
      if (*(a1 + 48) == -889275714)
      {
        v52 = v3;
      }

      else
      {
        v52 = v4;
      }

      v128 = 265;
      goto LABEL_73;
    }

    if (v24 < v63)
    {
      v45 = bswap32(v65[-1].u32[2]);
      v5 = bswap32(v65[-1].u32[3]);
      v3 = v24;
      v24 = 0;
LABEL_41:
      v145[0] = "cputype (";
      v146 = 259;
      v144 = 265;
      LODWORD(v143[0]) = v45;
      sub_298ADC860(v145, v143, v147);
      v141[0] = ") cpusubtype (";
      v142 = 259;
      sub_298ADC860(v147, v141, v149);
      if (*(a1 + 48) == -889275714)
      {
        v46 = v6;
      }

      else
      {
        v46 = v5;
      }

      v140 = 265;
      LODWORD(v139[0]) = v46 & 0xFFFFFF;
      sub_298ADC860(v149, v139, v151);
      v137[0] = ") offset ";
      v138 = 259;
      sub_298ADC860(v151, v137, v154);
      if (*(a1 + 48) == -889275714)
      {
        v47 = v24;
      }

      else
      {
        v47 = v3;
      }

      v129[0] = v47;
      v136 = 269;
      v135[0] = v129;
      sub_298ADC860(v154, v135, v156);
      v133[0] = " overlaps universal headers";
      v134 = 259;
      sub_298ADC860(v156, v133, v157);
      sub_298B814A0(v131, v157);
    }

    v65 += 2;
    --v64;
  }

  while (v64);
  v25 = 0;
LABEL_20:
  v26 = v15 >> 33;
  if (v25)
  {
    if (v26)
    {
      v27 = bswap32(v14[1].u32[1]);
      v28 = bswap32(v14[1].u32[0]);
      v5 = bswap32(v14->u32[3]);
      v29 = bswap32(v14->u32[2]);
      v30 = (v21 + 4);
      v31 = 1;
      do
      {
        v32 = v28;
        v33 = v27;
        v34 = v28 + v27;
        v35 = v30;
        v36 = v31;
        do
        {
          v6 = bswap32(*(v35 - 3));
          v4 = bswap32(*(v35 - 2));
          if (v29 == v6 && ((v4 ^ v5) & 0xFFFFFF) == 0)
          {
            goto LABEL_108;
          }

          v38 = bswap32(*(v35 - 1));
          v39 = bswap32(*v35);
          v40 = v38 + v39;
          if (v32 >= v38 && v40 > v32)
          {
            goto LABEL_75;
          }

          v42 = v34 > v38;
          if (v34 < v40)
          {
            v43 = 1;
          }

          else
          {
            v42 = 0;
            v43 = v32 > v38;
          }

          if (v42 || !v43)
          {
            goto LABEL_75;
          }

          v35 += 5;
          ++v36;
        }

        while (v36 < v16);
        v44 = v21 + 5 * v31;
        v29 = bswap32(*v44);
        v5 = bswap32(v44[1]);
        v28 = bswap32(v44[2]);
        v27 = bswap32(v44[3]);
        v30 += 5;
        ++v31;
      }

      while (v31 != v16);
    }
  }

  else if (v26)
  {
    v67 = vrev64q_s8(v14[1]);
    v68 = bswap32(v14->u32[3]);
    v29 = bswap32(v14->u32[2]);
    v69 = (v21 + 6);
    for (i = 1; i != v16; ++i)
    {
      v71 = v67.i64[0];
      v72 = vaddvq_s64(v67);
      v73 = v69;
      v74 = i;
      do
      {
        v75 = bswap32(*(v73 - 4));
        v76 = bswap32(*(v73 - 3));
        if (v29 == v75 && ((v76 ^ v68) & 0xFFFFFF) == 0)
        {
          v4 = v68;
LABEL_108:
          v149[0] = "contains two of the same architecture (cputype (";
          v150 = 259;
          v148 = 265;
          LODWORD(v147[0]) = v29;
          sub_298ADC860(v149, v147, v151);
          v145[0] = ") cpusubtype (";
          v146 = 259;
          sub_298ADC860(v151, v145, v154);
          if (*(a1 + 48) == -889275714)
          {
            v66 = v5;
          }

          else
          {
            v66 = v4;
          }

          v144 = 265;
          LODWORD(v143[0]) = v66 & 0xFFFFFF;
          sub_298ADC860(v154, v143, v156);
          v141[0] = "))";
          v142 = 259;
LABEL_53:
          sub_298ADC860(v156, v141, v157);
          sub_298B814A0(v139, v157);
        }

        v78 = bswap64(*(v73 - 1));
        v79 = bswap64(*v73);
        v80 = v78 + v79;
        v81 = v71 < v78 || v71 >= v80;
        if (!v81 || ((v82 = v72 > v78, v72 < v80) ? (v83 = 1) : (v82 = 0, v83 = v71 > v78), v82 || !v83))
        {
          v32 = 0;
          v33 = 0;
          v38 = 0;
          v39 = 0;
          v90 = v78;
          v91 = v79;
          v85 = v68;
          v86 = v71;
          v87 = v67.i64[1];
          v88 = v75;
          v89 = v76;
LABEL_75:
          v127[0] = "cputype (";
          v128 = 259;
          v126 = 265;
          LODWORD(v125[0]) = v29;
          sub_298ADC860(v127, v125, v129);
          v122[0] = ") cpusubtype (";
          v123 = 259;
          sub_298ADC860(v129, v122, v131);
          v55 = v85;
          if (*(a1 + 48) == -889275714)
          {
            v55 = v5;
          }

          v121 = 265;
          LODWORD(v120[0]) = v55 & 0xFFFFFF;
          sub_298ADC860(v131, v120, v133);
          v118 = ") at offset ";
          v119 = 259;
          sub_298ADC860(v133, &v118, v135);
          if (*(a1 + 48) == -889275714)
          {
            v56 = v32;
          }

          else
          {
            v56 = v86;
          }

          v117 = 269;
          v115 = v56;
          v116 = &v115;
          sub_298ADC860(v135, &v116, v137);
          v113 = " with a size of ";
          v114 = 259;
          sub_298ADC860(v137, &v113, v139);
          if (*(a1 + 48) == -889275714)
          {
            v57 = v33;
          }

          else
          {
            v57 = v87;
          }

          v112 = 269;
          v110 = v57;
          v111 = &v110;
          sub_298ADC860(v139, &v111, v141);
          v108 = ", overlaps cputype (";
          v109 = 259;
          sub_298ADC860(v141, &v108, v143);
          v58 = v88;
          if (*(a1 + 48) == -889275714)
          {
            v58 = v6;
          }

          v107 = 265;
          LODWORD(v106[0]) = v58;
          sub_298ADC860(v143, v106, v145);
          v104 = ") cpusubtype (";
          v105 = 259;
          sub_298ADC860(v145, &v104, v147);
          v59 = v89;
          if (*(a1 + 48) == -889275714)
          {
            v59 = v4;
          }

          v103 = 265;
          LODWORD(v102[0]) = v59 & 0xFFFFFF;
          sub_298ADC860(v147, v102, v149);
          v100 = ") at offset ";
          v101 = 259;
          sub_298ADC860(v149, &v100, v151);
          if (*(a1 + 48) == -889275714)
          {
            v60 = v38;
          }

          else
          {
            v60 = v90;
          }

          v99 = 269;
          v97 = v60;
          v98 = &v97;
          sub_298ADC860(v151, &v98, v154);
          v95 = " with a size of ";
          v96 = 259;
          sub_298ADC860(v154, &v95, v156);
          if (*(a1 + 48) == -889275714)
          {
            v61 = v39;
          }

          else
          {
            v61 = v91;
          }

          v94 = 269;
          v92 = v61;
          v93 = &v92;
          sub_298ADC860(v156, &v93, v157);
          sub_298B814A0(&v124, v157);
        }

        v73 += 4;
        ++v74;
      }

      while (v74 < v16);
      v84 = &v21[4 * i];
      v29 = bswap32(*v84);
      v68 = bswap32(*(v84 + 1));
      v67 = vrev64q_s8(*(v84 + 1));
      v69 += 4;
    }
  }

  *a3 = 0;
  return a1;
}

void sub_298B814A0(uint64_t *a1, char *a2)
{
  sub_298B996A4(a2, &v6);
  v2 = std::string::insert(&v6, 0, "truncated or malformed fat file (");
  v3 = v2->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = *&v2->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v9, ")");
  v5 = v4->__r_.__value_.__r.__words[2];
  *__p = *&v4->__r_.__value_.__l.__data_;
  v8 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v6.__r_.__value_.__l.__data_);
LABEL_3:
  operator new();
}

uint64_t sub_298B815C8(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  (*(*a1 + 40))(&v8);
  if (v9)
  {
    v7 = v8;
    v8 = 0;
    sub_298B85A28(&v7, 1);
  }

  result = (*(*a1 + 112))(a1, a2);
  if (v9)
  {
    v5 = v8;
    v8 = 0;
    if (v5)
    {
      v6 = result;
      (*(*v5 + 8))(v5);
      return v6;
    }
  }

  return result;
}

void *sub_298B816D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  result = (*(*a1 + 80))(&v8);
  if (v10)
  {
    v6 = v8;
    v8 = 0;
    *a3 = v6;
    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = *(a2 + 32);
    if (v9 <= *(a2 + 24) - result)
    {
      if (v9)
      {
        v7 = v9;
        result = memcpy(result, v8, v9);
        *(a2 + 32) += v7;
        *a3 = 0;
        if ((v10 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        *a3 = 0;
        if ((v10 & 1) == 0)
        {
          return result;
        }
      }
    }

    else
    {
      result = sub_298B9BCEC(a2, v8, v9);
      *a3 = 0;
      if ((v10 & 1) == 0)
      {
        return result;
      }
    }
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t sub_298B81864(uint64_t a1)
{
  v2 = (*(*a1 + 352))(a1);
  v4 = v3;
  v5 = (*(*a1 + 360))(a1);
  v6 = v4;
  v8 = v7;
  v14 = v2;
  v15 = v6;
  if (v6 == v7 && v2 == v5)
  {
    return 0;
  }

  v10 = v2;
  do
  {
    v11 = (*(*v6 + 264))(v6, v10);
    if (v11)
    {
      break;
    }

    (*(*v15 + 136))(v15, &v14);
    v10 = v14;
    v6 = v15;
  }

  while (v15 != v8 || v14 != v5);
  return v11;
}

uint64_t sub_298B819A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) &= ~1u;
  *a3 = a2;
  *(a3 + 8) = result;
  return result;
}

uint64_t sub_298B819BC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    a2 = sub_298CEFFAC(*a1, *(a1 + 8));
  }

  if ((a2 - 10) >= 0xB)
  {
    switch(a2)
    {
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
        __break(1u);
        JUMPOUT(0x298B81AB4);
      case 22:
        break;
      default:
        sub_298B74304();
        result = sub_298B85574(2, a3);
        *(a3 + 8) |= 1u;
        return result;
    }
  }

  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  sub_298B7E74C(v7);
}

uint64_t sub_298B81B58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  v14 = 261;
  v11 = a1;
  *&v12 = a2;
  sub_298B8D930(&v11, 0, &v17, 0xFFFFFFFFFFFFFFFFLL, 0, 1, 0, 0);
  if (v18)
  {
    v4 = v17;
    if (v17)
    {
      v11 = &unk_2A1F1DB10;
      v12 = v17;
      operator new();
    }
  }

  else
  {
    v4 = v17;
  }

  v5 = v4[1];
  v6 = v4[2] - v5;
  v7 = (*(*v4 + 16))(v4);
  v11 = v5;
  *&v12 = v6;
  *(&v12 + 1) = v7;
  v13 = v8;
  result = sub_298B819BC(&v11, 0, &v15);
  v10 = v15;
  if ((v16 & 1) != 0 && v15)
  {
    *(a3 + 16) |= 1u;
    *a3 = v10;
    return (*(*v4 + 8))(v4);
  }

  else
  {
    *(a3 + 16) &= ~1u;
    *a3 = v10;
    *(a3 + 8) = v4;
  }

  return result;
}

uint64_t *sub_298B81D18@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    a2 = sub_298CEFFAC(*a1, *(a1 + 8));
  }

  if (a2 - 4 < 0x11 || a2 <= 0x1F && ((1 << a2) & 0xEE400000) != 0)
  {
    if (((1 << a2) & 0xE85FFBD0) == 0 && ((1 << a2) & 0x2000420) == 0)
    {
      operator new();
    }

    v5 = *(a1 + 16);
    v8[0] = *a1;
    v8[1] = v5;
    sub_298B819BC(v8, a2, &v9);
    *(a3 + 8) = *(a3 + 8) & 0xFE | v10 & 1;
    v6 = v9;
    v9 = 0;
    *a3 = v6;
    return sub_298B74024(&v9);
  }

  else
  {
    sub_298B74304();
    result = sub_298B85574(2, a3);
    *(a3 + 8) |= 1u;
  }

  return result;
}

void sub_298B81EC4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a3 == 2)
  {
    v11 = *(a2 + 32);
    if ((*(a2 + 24) - v11) <= 9)
    {
      v7 = "__imp_aux_";
      v8 = a1;
      v9 = a2;
      v10 = 10;
      goto LABEL_7;
    }

    *(v11 + 8) = 24440;
    *v11 = *"__imp_aux_";
    v16 = *(a2 + 32) + 10;
  }

  else
  {
    if (a3)
    {
      v12 = *(a1 + 16);
      v13 = (v12 + 20);
      if (a3 == 3)
      {
        goto LABEL_36;
      }

      v14 = *(v12 + 6);
      if (v14 != 42574 && v14 != 42561)
      {
        goto LABEL_36;
      }

      goto LABEL_22;
    }

    v6 = *(a2 + 32);
    if ((*(a2 + 24) - v6) <= 5)
    {
      v7 = "__imp_";
      v8 = a1;
      v9 = a2;
      v10 = 6;
LABEL_7:
      sub_298B9BCEC(v9, v7, v10);
      a1 = v8;
      goto LABEL_17;
    }

    *(v6 + 4) = 24432;
    *v6 = 1835622239;
    v16 = *(a2 + 32) + 6;
  }

  *(a2 + 32) = v16;
LABEL_17:
  v17 = *(a1 + 16);
  v13 = (v17 + 20);
  v18 = *(v17 + 6);
  if (v18 != 42574 && v18 != 42561)
  {
    goto LABEL_36;
  }

LABEL_22:
  v20 = strlen(v13);
  v41 = v13;
  v42 = v20;
  v21 = *v13;
  if (v21 == 63)
  {
    v24 = sub_298B96A54(&v41, "$$h", 3uLL, 0);
    if (v24 != -1)
    {
      v25 = v42;
      if (v42 > v24 + 3)
      {
        if (v24 < v42)
        {
          v25 = v24;
        }

        *&__dst = v41;
        *(&__dst + 1) = v25;
        v38 = &v41[v24 + 3];
        v39 = v42 - (v24 + 3);
        v40 = 1285;
        sub_298B996A4(&__dst, __p);
        goto LABEL_45;
      }
    }

LABEL_36:
    v26 = strlen(v13);
    v27 = *(a2 + 32);
    if (v26 <= *(a2 + 24) - v27)
    {
      if (v26)
      {
        memcpy(v27, v13, v26);
        *(a2 + 32) += v26;
      }
    }

    else
    {
      sub_298B9BCEC(a2, v13, v26);
    }

    *a4 = 0;
    return;
  }

  if (v21 != 35)
  {
    goto LABEL_36;
  }

  if (v20)
  {
    v22 = v13 + 1;
  }

  else
  {
    v22 = v13;
  }

  v23 = v20 - (v20 != 0);
  if (v23 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  if (v23 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v38) = v20 - (v20 != 0);
  if (v20 >= 2)
  {
    memmove(&__dst, v22, v23);
  }

  *(&__dst + v23) = 0;
  *__p = __dst;
  v35 = v38;
LABEL_45:
  v36 = 1;
  v28 = HIBYTE(v35);
  if (SHIBYTE(v35) >= 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  if (SHIBYTE(v35) >= 0)
  {
    v30 = SHIBYTE(v35);
  }

  else
  {
    v30 = __p[1];
  }

  v31 = *(a2 + 32);
  if (v30 <= *(a2 + 24) - v31)
  {
    if (v30)
    {
      v33 = v30;
      memcpy(v31, v29, v30);
      *(a2 + 32) += v33;
    }

    *a4 = 0;
  }

  else
  {
    sub_298B9BCEC(a2, v29, v30);
    v28 = HIBYTE(v35);
    v32 = v36;
    *a4 = 0;
    if ((v32 & 1) == 0)
    {
      return;
    }
  }

  if (v28 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_298B82218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((*(v1 + 18) & 3) == 1)
  {
    return 1;
  }

  v3 = *(v1 + 6);
  if (v3 == 42561 || v3 == 42574)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

void sub_298B82264(unsigned int *a1@<X0>, unint64_t *a3@<X8>)
{
  v3 = a1[2];
  if (v3 == 32)
  {
    v4 = bswap32(*a1);
    v5 = 32;
    goto LABEL_5;
  }

  if (v3 == 16)
  {
    v4 = bswap32(*a1) >> 16;
    v5 = 16;
LABEL_5:
    *(a3 + 2) = v5;
    *a3 = v4;
    return;
  }

  if (v3 <= 0x40)
  {
    v6 = bswap64(*a1) >> -v3;
    *(a3 + 2) = v3;
    v7 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
    if (!v3)
    {
      v7 = 0;
    }

    *a3 = v6 & v7;
    return;
  }

  v8 = (v3 + 63) & 0xFFFFFFC0;
  *(a3 + 2) = v8;
  if (v8 > 0x40)
  {
    operator new[]();
  }

  *a3 = 0;
  v9 = (v3 + 63) >> 6;
  v10 = *a1;
  if (v3 <= 0x440 || ((v11 = ((8 * v9 + 0x7FFFFFFF8) & 0x7FFFFFFF8) + 8, v11 + v10) ? (v12 = v10 + v11 - 8 * v9 >= 8 * v9) : (v12 = 1), !v12))
  {
    v13 = 0;
LABEL_25:
    v19 = ~v13 + v9;
    v20 = (8 * v13);
    do
    {
      *v20++ = bswap64(*(v10 + 8 * v19--));
    }

    while (v19 != -1);
    goto LABEL_27;
  }

  v13 = ((v3 + 63) >> 6) & 0x7FFFFFC;
  v14 = v9 - 1;
  v15 = 16;
  v16 = v13;
  do
  {
    v17 = v10 + 8 * v14;
    v18 = vrev64q_s8(vextq_s8(*(v17 - 24), *(v17 - 24), 8uLL));
    *(v15 - 16) = vrev64q_s8(vextq_s8(*(v17 - 8), *(v17 - 8), 8uLL));
    *v15 = v18;
    v14 -= 4;
    v15 += 32;
    v16 -= 4;
  }

  while (v16);
  if (v9 != v13)
  {
    goto LABEL_25;
  }

LABEL_27:
  if (v8 != v3)
  {
    *a3 = 0;
    *(a3 + 2) = v3;
  }
}

_BYTE *sub_298B82544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_298B9CDFC();
  v44 = *(a2 + 16);
  v45 = 2;
  sub_298B82FF0(v6, &v44);
  v7 = (*(*a1 + 16))(a1);
  if (!v8)
  {
    goto LABEL_54;
  }

  v9 = v7;
  v10 = v8;
  v11 = *(a2 + 10);
  if ((v11 & 0x400) != 0)
  {
    v16 = sub_298B9CDFC();
    v13 = v16;
    v17 = v16[4];
    if (v16[3] - v17 > 1uLL)
    {
      *v17 = 15392;
      v18 = (v16[4] + 2);
      v13[4] = v18;
    }

    else
    {
      sub_298B9BCEC(v16, " <", 2uLL);
      v18 = v13[4];
    }

    v19 = *(a2 + 56);
    if (v19)
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = v9;
    }

    if (v19)
    {
      v10 = *(a2 + 56);
    }

    if (v10 <= v13[3] - v18)
    {
      memcpy(v18, v20, v10);
      v23 = v13[3];
      v21 = (v13[4] + v10);
      v13[4] = v21;
      if ((v23 - v21) > 3)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_298B9BCEC(v13, v20, v10);
      v21 = v13[4];
      if (v13[3] - v21 > 3uLL)
      {
LABEL_17:
        *v21 = 774778430;
        v22 = v13[4] + 4;
LABEL_35:
        v13[4] = v22;
        goto LABEL_54;
      }
    }

    sub_298B9BCEC(v13, ">...", 4uLL);
    goto LABEL_54;
  }

  v12 = (v11 >> 3) & 3;
  if (!v12)
  {
    v24 = (*(*a2 + 8))(a2);
    v13 = sub_298B9CDFC();
    if (v24 == 1)
    {
      goto LABEL_5;
    }

LABEL_21:
    if (*(a2 + 24) == 1)
    {
      v25 = " <";
    }

    else
    {
      v25 = "=<";
    }

    v26 = v13[4];
    if (v13[3] - v26 > 1uLL)
    {
      *v26 = *v25;
      v27 = (v13[4] + 2);
      v13[4] = v27;
    }

    else
    {
      sub_298B9BCEC(v13, v25, 2uLL);
      v27 = v13[4];
    }

    v31 = *(a2 + 56);
    if (v31)
    {
      v32 = *(a2 + 48);
    }

    else
    {
      v32 = v9;
    }

    if (v31)
    {
      v10 = *(a2 + 56);
    }

    if (v10 <= v13[3] - v27)
    {
      memcpy(v27, v32, v10);
      v33 = (v13[4] + v10);
      v13[4] = v33;
    }

    else
    {
      sub_298B9BCEC(v13, v32, v10);
      v33 = v13[4];
    }

    while (1)
    {
      if (v33 < v13[3])
      {
        goto LABEL_53;
      }

      v35 = v13[2];
      if (v35)
      {
        v13[4] = v35;
        sub_298B9BB84(v13);
        v33 = v13[4];
LABEL_53:
        v13[4] = v33 + 1;
        *v33 = 62;
        goto LABEL_54;
      }

      if (!*(v13 + 14))
      {
        break;
      }

      sub_298B9AE98(v13);
      v33 = v13[4];
    }

    LOBYTE(v44) = 62;
    sub_298B9BB84(v13);
    goto LABEL_54;
  }

  v13 = sub_298B9CDFC();
  if (v12 != 1)
  {
    goto LABEL_21;
  }

LABEL_5:
  v14 = v13[4];
  if ((v13[3] - v14) > 2)
  {
    *(v14 + 2) = 60;
    *v14 = 15707;
    v15 = (v13[4] + 3);
    v13[4] = v15;
  }

  else
  {
    sub_298B9BCEC(v13, "[=<", 3uLL);
    v15 = v13[4];
  }

  v28 = *(a2 + 56);
  if (v28)
  {
    v29 = *(a2 + 48);
  }

  else
  {
    v29 = v9;
  }

  if (v28)
  {
    v10 = *(a2 + 56);
  }

  if (v10 <= v13[3] - v15)
  {
    memcpy(v15, v29, v10);
    v34 = v13[3];
    v30 = (v13[4] + v10);
    v13[4] = v30;
    if ((v34 - v30) > 1)
    {
      goto LABEL_34;
    }
  }

  else
  {
    sub_298B9BCEC(v13, v29, v10);
    v30 = v13[4];
    if (v13[3] - v30 > 1uLL)
    {
LABEL_34:
      *v30 = 23870;
      v22 = v13[4] + 2;
      goto LABEL_35;
    }
  }

  sub_298B9BCEC(v13, ">]", 2uLL);
LABEL_54:
  v37 = *(a2 + 32);
  v36 = *(a2 + 40);
  v38 = *(a2 + 24);
  if (v38 == 1)
  {
    v39 = 7;
  }

  else
  {
    v39 = v38 + 7;
  }

  (*(*a1 + 16))(a1);
  if (v40)
  {
    v41 = 6;
    if ((*(a2 + 10) & 0x400) == 0)
    {
      v41 = 3;
    }

    v42 = *(a2 + 56);
    if (!v42)
    {
      LODWORD(v42) = v40;
    }

    v39 += v41 + v42;
  }

  return sub_298B831BC(v37, v36, v3, v39);
}

atomic_ullong sub_298B82978(uint64_t a1)
{
  if (atomic_load_explicit(qword_2A13C2C38, memory_order_acquire))
  {
    result = qword_2A13C2C38[0];
    v6 = a1;
    if ((*(a1 + 10) & 0x2000) == 0)
    {
LABEL_3:
      v5[0] = result;
      v5[1] = &v6;
      result = sub_298B83B78(result, a1, sub_298B83F44, v5);
      goto LABEL_8;
    }
  }

  else
  {
    sub_298B8D820(qword_2A13C2C38, sub_298B84548, sub_298B84850);
    result = qword_2A13C2C38[0];
    v6 = a1;
    if ((*(a1 + 10) & 0x2000) == 0)
    {
      goto LABEL_3;
    }
  }

  v3 = *(result + 72);
  if (v3 >= *(result + 76))
  {
    v4 = result;
    sub_298B90A44(result + 64, (result + 80), v3 + 1, 8);
    result = v4;
    LODWORD(v3) = *(v4 + 72);
  }

  *(*(result + 64) + 8 * v3) = a1;
  ++*(result + 72);
LABEL_8:
  *(a1 + 10) |= 0x4000u;
  return result;
}

uint64_t sub_298B82A8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = result;
  if ((*(result + 10) & 0x4000) == 0)
  {
    *(result + 16) = a2;
    *(result + 24) = a3;
    if (a3 != 1)
    {
      return result;
    }

LABEL_7:
    *(v8 + 10) |= 0x1000u;
    return result;
  }

  if (!atomic_load_explicit(qword_2A13C2C38, memory_order_acquire))
  {
    sub_298B8D820(qword_2A13C2C38, sub_298B84548, sub_298B84850);
  }

  v11[0] = a2;
  v11[1] = a3;
  v9[0] = qword_2A13C2C38[0];
  v9[1] = &v10;
  v9[2] = v11;
  v10 = v8;
  result = sub_298B83B78(qword_2A13C2C38[0], v8, sub_298B8434C, v9);
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  if (a3 == 1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t *sub_298B82B78()
{
  if (atomic_load_explicit(&qword_2A13C2C00, memory_order_acquire))
  {
    return &qword_2A13C3630;
  }

  if (__cxa_guard_acquire(&qword_2A13C2C00))
  {
    qword_2A13C3630 = "General options";
    *algn_2A13C3638 = 15;
    qword_2A13C3640 = "";
    unk_2A13C3648 = 0;
    if (!atomic_load_explicit(qword_2A13C2C38, memory_order_acquire))
    {
      sub_298B8D820(qword_2A13C2C38, sub_298B84548, sub_298B84850);
    }

    v1 = qword_2A13C2C38[0];
    v2 = *(qword_2A13C2C38[0] + 112);
    if (*(qword_2A13C2C38[0] + 120) != v2)
    {
      goto LABEL_7;
    }

    v3 = *(qword_2A13C2C38[0] + 132);
    if (v3)
    {
      v4 = 0;
      v5 = 8 * v3;
      v6 = *(qword_2A13C2C38[0] + 112);
      while (*v6 != &qword_2A13C3630)
      {
        if (*v6 == -2)
        {
          v4 = v6;
        }

        ++v6;
        v5 -= 8;
        if (!v5)
        {
          if (!v4)
          {
            goto LABEL_18;
          }

          *v4 = &qword_2A13C3630;
          --*(v1 + 136);
          goto LABEL_8;
        }
      }

      goto LABEL_8;
    }

LABEL_18:
    if (v3 < *(qword_2A13C2C38[0] + 128))
    {
      *(qword_2A13C2C38[0] + 132) = v3 + 1;
      *(v2 + 8 * v3) = &qword_2A13C3630;
    }

    else
    {
LABEL_7:
      sub_298B905B0(qword_2A13C2C38[0] + 112, &qword_2A13C3630);
    }

LABEL_8:
    __cxa_guard_release(&qword_2A13C2C00);
  }

  return &qword_2A13C3630;
}

void *sub_298B82CC8(uint64_t a1)
{
  if (!atomic_load_explicit(qword_2A13C2C38, memory_order_acquire))
  {
    sub_298B8D820(qword_2A13C2C38, sub_298B84548, sub_298B84850);
  }

  v2 = qword_2A13C2C38[0];
  result = (qword_2A13C2C38[0] + 112);
  v4 = *(qword_2A13C2C38[0] + 112);
  if (*(qword_2A13C2C38[0] + 120) != v4)
  {
LABEL_4:

    return sub_298B905B0(result, a1);
  }

  v5 = *(qword_2A13C2C38[0] + 132);
  if (!v5)
  {
LABEL_16:
    if (v5 < *(qword_2A13C2C38[0] + 128))
    {
      *(qword_2A13C2C38[0] + 132) = v5 + 1;
      *(v4 + 8 * v5) = a1;
      return result;
    }

    goto LABEL_4;
  }

  v6 = 0;
  v7 = 8 * v5;
  v8 = *(qword_2A13C2C38[0] + 112);
  while (*v8 != a1)
  {
    if (*v8 == -2)
    {
      v6 = v8;
    }

    ++v8;
    v7 -= 8;
    if (!v7)
    {
      if (!v6)
      {
        goto LABEL_16;
      }

      *v6 = a1;
      --*(v2 + 136);
      return result;
    }
  }

  return result;
}

uint64_t sub_298B82DCC(uint64_t a1, uint64_t **a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_298B9BCEC(a1, a2, v3);
}

uint64_t sub_298B82DE8(void *a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = a4;
    v8 = a3;
    if (a4)
    {
LABEL_3:
      if (!atomic_load_explicit(qword_2A13C2C38, memory_order_acquire))
      {
        sub_298B8D820(qword_2A13C2C38, sub_298B84548, sub_298B84850);
      }

      v9 = *(qword_2A13C2C38[0] + 23);
      if (v9 >= 0)
      {
        v10 = qword_2A13C2C38[0];
      }

      else
      {
        v10 = *qword_2A13C2C38[0];
      }

      if (v9 >= 0)
      {
        v11 = *(qword_2A13C2C38[0] + 23);
      }

      else
      {
        v11 = *(qword_2A13C2C38[0] + 8);
      }

      sub_298B9BCEC(a5, v10, v11);
      v12 = *(a5 + 32);
      if ((*(a5 + 24) - v12) > 9)
      {
        *(v12 + 8) = 8293;
        *v12 = *": for the ";
        *(a5 + 32) += 10;
      }

      else
      {
        sub_298B9BCEC(a5, ": for the ", 0xAuLL);
      }

      v20[0] = v8;
      v20[1] = v7;
      v20[2] = 0;
      sub_298B82FF0(a5, v20);
      goto LABEL_18;
    }
  }

  else
  {
    v8 = a1[2];
    v7 = a1[3];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v13 = a1[4];
  v14 = a1[5];
  v15 = *(a5 + 32);
  if (v14 <= *(a5 + 24) - v15)
  {
    if (v14)
    {
      v19 = v14;
      memcpy(v15, v13, v14);
      *(a5 + 32) += v19;
    }
  }

  else
  {
    sub_298B9BCEC(a5, v13, v14);
  }

LABEL_18:
  v16 = *(a5 + 32);
  if ((*(a5 + 24) - v16) > 8)
  {
    *(v16 + 8) = 32;
    *v16 = *" option: ";
    *(a5 + 32) += 9;
    sub_298B99AA0(a2, a5);
    v17 = *(a5 + 32);
    if (*(a5 + 24) != v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_298B9BCEC(a5, " option: ", 9uLL);
    sub_298B99AA0(a2, a5);
    v17 = *(a5 + 32);
    if (*(a5 + 24) != v17)
    {
LABEL_20:
      *v17 = 10;
      ++*(a5 + 32);
      return 1;
    }
  }

  sub_298B9BCEC(a5, "\n", 1uLL);
  return 1;
}

uint64_t sub_298B82FF0(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v15 = v17;
  v16 = xmmword_298D1A0E0;
  v6 = 0;
  if (v5)
  {
    do
    {
      if ((v6 + 1) > *(&v16 + 1))
      {
        sub_298B90C08(&v15, v17, v6 + 1, 1);
        v6 = v16;
      }

      *(v15 + v6) = 32;
      v6 = v16 + 1;
      *&v16 = v16 + 1;
      --v5;
    }

    while (v5);
    v7 = *(&v16 + 1);
  }

  else
  {
    v7 = 8;
  }

  if (v4 <= 1)
  {
    v8 = "-";
  }

  else
  {
    v8 = "--";
  }

  if (v4 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (v7 < v6 + v9)
  {
    sub_298B90C08(&v15, v17, v6 + v9, 1);
    v6 = v16;
  }

  memcpy(v15 + v6, v8, v9);
  *&v16 = v16 + v9;
  sub_298B9BCEC(a1, v15, v16);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a1 + 32);
  if (v11 <= *(a1 + 24) - v12)
  {
    if (v11)
    {
      v13 = *(a2 + 8);
      memcpy(v12, v10, v11);
      *(a1 + 32) += v13;
    }
  }

  else
  {
    sub_298B9BCEC(a1, v10, v11);
  }

  if (v15 != v17)
  {
    free(v15);
  }

  return a1;
}

uint64_t sub_298B83188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    ++*(a1 + 8);
  }

  return (**a1)(a1, a2, a3, a4, a5, a6);
}

_BYTE *sub_298B831BC(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;
  __s2 = 10;
  v6 = sub_298B96A54(&v40, &__s2, 1uLL, 0);
  if (v6 == -1)
  {
    v38 = 0;
    v39 = 0;
    v35 = v40;
    v9 = sub_298B9CDFC();
    v10 = a3 - a4;
    if (a3 - a4 < 0x50)
    {
LABEL_9:
      sub_298B9BCEC(v9, "                                                                                ", v10 & 0x7F);
      goto LABEL_15;
    }
  }

  else
  {
    if (v6 >= *(&v40 + 1))
    {
      v7 = *(&v40 + 1);
    }

    else
    {
      v7 = v6;
    }

    if (*(&v40 + 1) >= v6 + 1)
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = *(&v40 + 1);
    }

    *&v35 = v40;
    *(&v35 + 1) = v7;
    v38 = v40 + v8;
    v39 = *(&v40 + 1) - v8;
    v9 = sub_298B9CDFC();
    v10 = a3 - a4;
    if (a3 - a4 < 0x50)
    {
      goto LABEL_9;
    }
  }

  do
  {
    if (v10 >= 0x4F)
    {
      v11 = 79;
    }

    else
    {
      v11 = v10;
    }

    sub_298B9BCEC(v9, "                                                                                ", v11);
    v10 -= v11;
  }

  while (v10);
LABEL_15:
  v12 = v9[4];
  if ((v9[3] - v12) <= 2)
  {
    sub_298B9BCEC(v9, " - ", 3uLL);
    result = v9[4];
    v15 = *(&v35 + 1);
    v14 = v35;
    if (*(&v35 + 1) <= v9[3] - result)
    {
      goto LABEL_17;
    }

LABEL_23:
    sub_298B9BCEC(v9, v14, v15);
    result = v9[4];
    if (v9[3] != result)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  *(v12 + 2) = 32;
  *v12 = 11552;
  v17 = v9[3];
  result = (v9[4] + 3);
  v9[4] = result;
  v15 = *(&v35 + 1);
  v14 = v35;
  if (*(&v35 + 1) > (v17 - result))
  {
    goto LABEL_23;
  }

LABEL_17:
  if (v15)
  {
    v16 = v15;
    memcpy(result, v14, v15);
    result = (v9[4] + v16);
    v9[4] = result;
  }

  if (v9[3] == result)
  {
LABEL_24:
    result = sub_298B9BCEC(v9, "\n", 1uLL);
    if (!v39)
    {
      return result;
    }

LABEL_27:
    while (1)
    {
      __s2 = 10;
      v18 = sub_298B96A54(&v38, &__s2, 1uLL, 0);
      if (v18 == -1)
      {
        v22 = 0;
        v23 = 0;
        v19 = v38;
        v20 = v39;
      }

      else
      {
        v19 = v38;
        v20 = v18 >= v39 ? v39 : v18;
        v21 = v39 >= v18 + 1 ? v18 + 1 : v39;
        v22 = v38 + v21;
        v23 = v39 - v21;
      }

      v36 = v19;
      v37 = v20;
      v38 = v22;
      v39 = v23;
      v24 = sub_298B9CDFC();
      v25 = v24;
      v26 = a3;
      if (a3 >= 0x50)
      {
        break;
      }

      sub_298B9BCEC(v24, "                                                                                ", a3 & 0x7F);
LABEL_38:
      result = *(v25 + 32);
      if (v37 <= *(v25 + 24) - result)
      {
        if (v37)
        {
          memcpy(result, v36, v37);
          result = (*(v25 + 32) + v37);
          *(v25 + 32) = result;
        }
      }

      else
      {
        sub_298B9BCEC(v25, v36, v37);
        result = *(v25 + 32);
      }

      if (*(v25 + 24) == result)
      {
        result = sub_298B9BCEC(v25, "\n", 1uLL);
        if (!v39)
        {
          return result;
        }
      }

      else
      {
        *result = 10;
        ++*(v25 + 32);
        if (!v39)
        {
          return result;
        }
      }
    }

    while (1)
    {
      if (v26 >= 0x4F)
      {
        v27 = 79;
      }

      else
      {
        v27 = v26;
      }

      v28 = *(v25 + 32);
      v29 = *(v25 + 24) - v28;
      if (v29 < v27)
      {
        v31 = v27;
        v30 = "                                                                                ";
        while (1)
        {
          v32 = *(v25 + 16);
          v34 = v30;
          if (!v32)
          {
            break;
          }

LABEL_61:
          if (v28 == v32)
          {
            v29 *= v31 / v29;
            v31 -= v29;
            sub_298B9BB84(v25);
            v28 = *(v25 + 32);
            v33 = *(v25 + 24) - v28;
            if (v31 <= v33)
            {
              sub_298B9BE18(v25, &v34[v29], v31);
              goto LABEL_56;
            }
          }

          else
          {
            sub_298B9BE18(v25, v30, v29);
            *(v25 + 32) = *(v25 + 16);
            sub_298B9BB84(v25);
            v31 -= v29;
            v28 = *(v25 + 32);
            v33 = *(v25 + 24) - v28;
          }

          v30 = &v34[v29];
          v29 = v33;
          if (v33 >= v31)
          {
            goto LABEL_45;
          }
        }

        while (1)
        {
          if (!*(v25 + 56))
          {
            sub_298B9BB84(v25);
            goto LABEL_56;
          }

          sub_298B9AE98(v25);
          v28 = *(v25 + 32);
          v29 = *(v25 + 24) - v28;
          if (v29 >= v31)
          {
            break;
          }

          v32 = *(v25 + 16);
          v30 = v34;
          if (v32)
          {
            goto LABEL_61;
          }
        }

        v30 = v34;
      }

      else
      {
        v30 = "                                                                                ";
        v31 = v27;
      }

LABEL_45:
      if (v31 <= 1)
      {
        if (!v31)
        {
          goto LABEL_55;
        }

        if (v31 == 1)
        {
          goto LABEL_54;
        }
      }

      else
      {
        switch(v31)
        {
          case 2uLL:
            goto LABEL_51;
          case 3uLL:
            goto LABEL_50;
          case 4uLL:
            v28[3] = v30[3];
            v28 = *(v25 + 32);
LABEL_50:
            v28[2] = v30[2];
            v28 = *(v25 + 32);
LABEL_51:
            v28[1] = v30[1];
            v28 = *(v25 + 32);
LABEL_54:
            *v28 = *v30;
            goto LABEL_55;
        }
      }

      memcpy(v28, v30, v31);
LABEL_55:
      *(v25 + 32) += v31;
LABEL_56:
      v26 -= v27;
      if (!v26)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_20:
  *result = 10;
  ++v9[4];
  if (v39)
  {
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_298B83644(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, _DWORD *a7)
{
  if (a6 > 3)
  {
    if (a6 != 5)
    {
      if (a6 != 4 || *a5 != 1702195828 && *a5 != 1163219540 && *a5 != 1702195796)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if ((*a5 != 1936482662 || a5[4] != 101) && (*a5 != 1397506374 || a5[4] != 69) && (*a5 != 1936482630 || a5[4] != 101))
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (!a6)
    {
      goto LABEL_12;
    }

    if (a6 != 1)
    {
LABEL_25:
      v20 = v7;
      v21 = v8;
      v17 = 1283;
      v16[0] = "'";
      v16[2] = a5;
      v16[3] = a6;
      v18[0] = v16;
      v18[2] = "' is invalid value for BOOLean argument! Try 0 or 1";
      v19 = 770;
      v15 = sub_298B9CEA8();
      sub_298B82DE8(a2, v18, 0, 0, v15);
      return 1;
    }

    v9 = *a5;
    if (v9 != 48)
    {
      if (v9 != 49)
      {
        goto LABEL_25;
      }

LABEL_12:
      result = 0;
      *a7 = 1;
      return result;
    }
  }

  result = 0;
  *a7 = 2;
  return result;
}

void sub_298B837B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = a3;
  v9 = sub_298B9CDFC();
  v31 = *(a2 + 16);
  v32 = 2;
  sub_298B82FF0(v9, &v31);
  v10 = sub_298B9CDFC();
  v11 = a5 - *(a2 + 24);
  if (v11 >= 0x50)
  {
    do
    {
      if (v11 >= 0x4F)
      {
        v12 = 79;
      }

      else
      {
        v12 = v11;
      }

      v10 = sub_298B9BCEC(v10, "                                                                                ", v12);
      v11 -= v12;
    }

    while (v11);
  }

  else
  {
    sub_298B9BCEC(v10, "                                                                                ", v11 & 0x7F);
  }

  __p = 0;
  v40 = 0;
  v41 = 0;
  DWORD2(v31) = 0;
  v35 = 0;
  v36 = 0;
  p_p = &__p;
  v37 = 0;
  *&v31 = &unk_2A1F1E040;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  if ((v7 & 0x80000000) != 0)
  {
    v13 = -v7;
    v14 = 1;
  }

  else
  {
    v13 = v7;
    v14 = 0;
  }

  sub_298B8FC48(&v31, v13, 0, 0, v14);
  sub_298B9AE14(&v31);
  v15 = sub_298B9CDFC();
  v16 = *(v15 + 32);
  if (*(v15 + 24) - v16 > 1uLL)
  {
    *v16 = 8253;
    *(v15 + 32) += 2;
  }

  else
  {
    v15 = sub_298B9BCEC(v15, "= ", 2uLL);
  }

  if (v41 >= 0)
  {
    v17 = &__p;
  }

  else
  {
    v17 = __p;
  }

  if (v41 >= 0)
  {
    v18 = HIBYTE(v41);
  }

  else
  {
    v18 = v40;
  }

  sub_298B9BCEC(v15, v17, v18);
  v19 = SHIBYTE(v41);
  if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
  {
    v19 = v40;
    if (v40 < 8)
    {
      goto LABEL_21;
    }
  }

  else if (SHIBYTE(v41) <= 7)
  {
LABEL_21:
    v20 = 8 - v19;
    goto LABEL_24;
  }

  v20 = 0;
LABEL_24:
  v21 = sub_298B9CDFC();
  v22 = sub_298B9BCEC(v21, "                                                                                ", v20);
  v23 = *(v22 + 32);
  if ((*(v22 + 24) - v23) > 0xA)
  {
    *(v23 + 7) = 540701804;
    *v23 = *" (default: ";
    *(v22 + 32) += 11;
    v29 = *(a4 + 12);
    v25 = sub_298B9CDFC();
    if (v29 != 1)
    {
      goto LABEL_26;
    }

LABEL_31:
    v30 = *(a4 + 8);
    if ((v30 & 0x80000000) != 0)
    {
      sub_298B8FC48(v25, -v30, 0, 0, 1);
      v27 = sub_298B9CDFC();
      v28 = v27[4];
      if (v27[3] - v28 <= 1uLL)
      {
        goto LABEL_33;
      }
    }

    else
    {
      sub_298B8FC48(v25, v30, 0, 0, 0);
      v27 = sub_298B9CDFC();
      v28 = v27[4];
      if (v27[3] - v28 <= 1uLL)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_28;
  }

  sub_298B9BCEC(v22, " (default: ", 0xBuLL);
  v24 = *(a4 + 12);
  v25 = sub_298B9CDFC();
  if (v24 == 1)
  {
    goto LABEL_31;
  }

LABEL_26:
  v26 = v25[4];
  if ((v25[3] - v26) <= 0xB)
  {
    sub_298B9BCEC(v25, "*no default*", 0xCuLL);
    v27 = sub_298B9CDFC();
    v28 = v27[4];
    if (v27[3] - v28 > 1uLL)
    {
      goto LABEL_28;
    }

LABEL_33:
    sub_298B9BCEC(v27, ")\n", 2uLL);
    if (SHIBYTE(v41) < 0)
    {
      goto LABEL_29;
    }

    return;
  }

  *(v26 + 8) = 712273013;
  *v26 = *"*no default*";
  v25[4] += 12;
  v27 = sub_298B9CDFC();
  v28 = v27[4];
  if (v27[3] - v28 <= 1uLL)
  {
    goto LABEL_33;
  }

LABEL_28:
  *v28 = 2601;
  v27[4] += 2;
  if (SHIBYTE(v41) < 0)
  {
LABEL_29:
    operator delete(__p);
  }
}

uint64_t sub_298B83B78(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v5 = *(a2 + 108) - *(a2 + 112);
  if (!v5)
  {
    v6 = &qword_2A13C2C08;
LABEL_3:
    if (!atomic_load_explicit(v6, memory_order_acquire))
    {
      v31 = a3;
      sub_298B8D820(v6, sub_298B848F4, sub_298B84964);
      a3 = v31;
    }

    v7 = *v6;

    return (a3)(a4, v7);
  }

  v8 = a2 + 88;
  if (v5 == 1)
  {
    v9 = *(a2 + 96);
    v10 = 16;
    if (v9 == *(a2 + 88))
    {
      v10 = 20;
    }

    v11 = *(v8 + v10);
    if (v11)
    {
      v12 = 8 * v11;
      v13 = &v9[v11];
      while (*v9 >= 0xFFFFFFFFFFFFFFFELL)
      {
        ++v9;
        v12 -= 8;
        if (!v12)
        {
          v9 = v13;
          break;
        }
      }
    }

    v14 = *v9;
    v6 = qword_2A13C2C20;
    if (atomic_load_explicit(qword_2A13C2C20, memory_order_acquire))
    {
      if (v14 != qword_2A13C2C20[0])
      {
        goto LABEL_18;
      }
    }

    else
    {
      v33 = a3;
      v22 = result;
      v23 = a2;
      sub_298B8D820(qword_2A13C2C20, sub_298B848F4, sub_298B84964);
      a3 = v33;
      a2 = v23;
      result = v22;
      if (v14 != qword_2A13C2C20[0])
      {
        goto LABEL_18;
      }
    }

    v24 = *(result + 280);
    v25 = 16;
    if (v24 == *(result + 272))
    {
      v25 = 20;
    }

    v26 = *(result + 272 + v25);
    if (v26)
    {
      v27 = 8 * v26;
      v28 = *(result + 280);
      while (*v28 >= 0xFFFFFFFFFFFFFFFELL)
      {
        ++v28;
        v27 -= 8;
        if (!v27)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      v28 = *(result + 280);
    }

    v29 = (v24 + 8 * v26);
    if (v28 != v29)
    {
      v34 = a3;
      do
      {
        v30 = *v28++;
        v34(a4, v30);
        a3 = v34;
        if (v28 == v29)
        {
          break;
        }

        while (*v28 >= 0xFFFFFFFFFFFFFFFELL)
        {
          if (++v28 == v29)
          {
            goto LABEL_3;
          }
        }
      }

      while (v28 != v29);
    }

    goto LABEL_3;
  }

LABEL_18:
  v15 = *(a2 + 96);
  v16 = 16;
  if (v15 == *(a2 + 88))
  {
    v16 = 20;
  }

  v17 = *(v8 + v16);
  if (v17)
  {
    v18 = 8 * v17;
    for (i = *(a2 + 96); *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
    {
      v18 -= 8;
      if (!v18)
      {
        return result;
      }
    }
  }

  else
  {
    i = *(a2 + 96);
  }

  v20 = (v15 + 8 * v17);
  if (i != v20)
  {
    v32 = a3;
    do
    {
      v21 = *i++;
      result = (v32)(a4, v21);
      if (i == v20)
      {
        break;
      }

      while (*i >= 0xFFFFFFFFFFFFFFFELL)
      {
        if (++i == v20)
        {
          return result;
        }
      }
    }

    while (i != v20);
  }

  return result;
}

uint64_t sub_298B83E24(uint64_t *a1, void *a2, size_t a3, uint64_t a4, size_t *a5)
{
  v9 = sub_298B96440(a1, a2, a3, a4);
  v10 = *a1;
  v11 = v9;
  v12 = *(*a1 + 8 * v9);
  if (v12 == -8)
  {
    --*(a1 + 4);
  }

  else if (v12)
  {
    return 0;
  }

  v14 = operator new(a3 + 17, 8uLL);
  v15 = v14;
  v16 = (v14 + 2);
  if (a3)
  {
    memcpy(v14 + 2, a2, a3);
  }

  v16[a3] = 0;
  v17 = *a5;
  *v15 = a3;
  v15[1] = v17;
  *(v10 + 8 * v11) = v15;
  ++*(a1 + 3);
  v18 = (*a1 + 8 * sub_298B96888(a1, v11));
  if (*v18)
  {
    v19 = *v18 == -8;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    do
    {
      v21 = v18[1];
      ++v18;
      v20 = v21;
      if (v21)
      {
        v22 = v20 == -8;
      }

      else
      {
        v22 = 1;
      }
    }

    while (v22);
  }

  return 1;
}

uint64_t sub_298B83F58(uint64_t result, size_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = result;
    if ((*(a2 + 10) & 0x2000) != 0)
    {
      v7 = *(a2 + 16);
      result = sub_298BA724C(v7, *(a2 + 24));
      v8 = *(a3 + 136);
      if (v8)
      {
        v9 = v8 - 1;
        v10 = (v8 - 1) & result;
        v11 = *(a3 + 128);
        v12 = v11 + 8 * v8 + 8;
        v13 = 1;
        v14 = *(v11 + 8 * v10);
        if (v14)
        {
          while (1)
          {
            v37 = v13;
            v38 = v9;
            v39 = v11;
            v40 = v8;
            if (v14 != -8 && *(v12 + 4 * v10) == result && v5 == *v14)
            {
              v35 = result;
              v36 = v10;
              v34 = v12;
              v31 = memcmp(v7, v14 + *(a3 + 148), v5);
              v10 = v36;
              v32 = v31;
              v12 = v34;
              result = v35;
              if (!v32)
              {
                break;
              }
            }

            v9 = v38;
            v10 = (v10 + v37) & v38;
            v13 = v37 + 1;
            v11 = v39;
            v8 = v40;
            v14 = *(v39 + 8 * v10);
            if (!v14)
            {
              goto LABEL_5;
            }
          }

          if (v36 != -1 && v36 != v40)
          {
            return result;
          }
        }
      }
    }

LABEL_5:
    v41 = *(a2 + 16);
    v42[0] = a2;
    v15 = sub_298BA724C(v41, *(&v41 + 1));
    result = sub_298B83E24((a3 + 128), v41, *(&v41 + 1), v15, v42);
    if ((result & 1) == 0)
    {
      v19 = sub_298B9CEA8();
      v20 = v19;
      v21 = *(v6 + 23);
      if (v21 >= 0)
      {
        v22 = v6;
      }

      else
      {
        v22 = *v6;
      }

      if (v21 >= 0)
      {
        v23 = *(v6 + 23);
      }

      else
      {
        v23 = *(v6 + 8);
      }

      v24 = sub_298B9BCEC(v19, v22, v23);
      v25 = *(v24 + 32);
      if (*(v24 + 24) - v25 > 0x1CuLL)
      {
        qmemcpy(v25, ": CommandLine Error: Option '", 29);
        v29 = *(v20 + 24);
        result = *(v20 + 32) + 29;
        *(v20 + 32) = result;
        v26 = *(a2 + 16);
        v27 = *(a2 + 24);
        if (v27 <= v29 - result)
        {
LABEL_19:
          if (v27)
          {
            v28 = v27;
            memcpy(result, v26, v27);
            result = *(v20 + 32) + v28;
            *(v20 + 32) = result;
          }

          if ((*(v20 + 24) - result) <= 0x1C)
          {
LABEL_22:
            result = sub_298B9BCEC(v20, "' registered more than once!\n", 0x1DuLL);
            v16 = 1;
            v17 = *(a2 + 10);
            if ((v17 & 0x180) != 0x80)
            {
              goto LABEL_27;
            }

LABEL_7:
            v18 = *(a3 + 40);
            if (v18 >= *(a3 + 44))
            {
              result = sub_298B90A44(a3 + 32, (a3 + 48), v18 + 1, 8);
              LODWORD(v18) = *(a3 + 40);
            }

            *(*(a3 + 32) + 8 * v18) = a2;
            ++*(a3 + 40);
            if (v16)
            {
              goto LABEL_48;
            }

            return result;
          }

LABEL_26:
          qmemcpy(result, "' registered more than once!\n", 29);
          *(v20 + 32) += 29;
          v16 = 1;
          v17 = *(a2 + 10);
          if ((v17 & 0x180) != 0x80)
          {
            goto LABEL_27;
          }

          goto LABEL_7;
        }
      }

      else
      {
        sub_298B9BCEC(v20, ": CommandLine Error: Option '", 0x1DuLL);
        result = *(v20 + 32);
        v26 = *(a2 + 16);
        v27 = *(a2 + 24);
        if (v27 <= *(v20 + 24) - result)
        {
          goto LABEL_19;
        }
      }

      sub_298B9BCEC(v20, v26, v27);
      result = *(v20 + 32);
      if ((*(v20 + 24) - result) <= 0x1C)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }
  }

  v16 = 0;
  v17 = *(a2 + 10);
  if ((v17 & 0x180) == 0x80)
  {
    goto LABEL_7;
  }

LABEL_27:
  if ((v17 & 0x800) != 0)
  {
    v30 = *(a3 + 88);
    if (v30 >= *(a3 + 92))
    {
      result = sub_298B90A44(a3 + 80, (a3 + 96), v30 + 1, 8);
      LODWORD(v30) = *(a3 + 88);
    }

    *(*(a3 + 80) + 8 * v30) = a2;
    ++*(a3 + 88);
    if ((v16 & 1) == 0)
    {
      return result;
    }

    goto LABEL_48;
  }

  if ((v17 & 7) != 4)
  {
    if (v16)
    {
      goto LABEL_48;
    }

    return result;
  }

  if (*(a3 + 152))
  {
    *&v41 = "Cannot specify more than one option with cl::ConsumeAfter!";
    v43 = 259;
    v33 = sub_298B9CEA8();
    sub_298B82DE8(a2, &v41, 0, 0, v33);
    *(a3 + 152) = a2;
    goto LABEL_48;
  }

  *(a3 + 152) = a2;
  if (v16)
  {
LABEL_48:
    sub_298B868A8("inconsistency in registered CommandLine options", 1);
  }

  return result;
}

uint64_t sub_298B8434C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = **(a1 + 8);
  v5 = *(a1 + 16);
  v31 = *v5;
  v32 = *(v5 + 8);
  v33 = v4;
  v6 = sub_298BA724C(v31, v32);
  if ((sub_298B83E24((a2 + 128), v31, v32, v6, &v33) & 1) == 0)
  {
    v20 = sub_298B9CEA8();
    v21 = sub_298B82DCC(v20, v3);
    v22 = sub_298B00584(v21, ": CommandLine Error: Option '");
    v23 = sub_298B63DC4(v22, *(v4 + 16), *(v4 + 24));
    sub_298B00584(v23, "' registered more than once!\n");
    sub_298B868A8("inconsistency in registered CommandLine options", 1);
  }

  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  result = sub_298BA724C(v7, v8);
  v10 = *(a2 + 136);
  if (v10)
  {
    v11 = v10 - 1;
    v12 = (v10 - 1) & result;
    v13 = *(a2 + 128);
    v14 = v13 + 8 * v10 + 8;
    if (v8)
    {
      v15 = *(a2 + 148);
      v16 = 1;
      v17 = *(v13 + 8 * v12);
      if (!v17)
      {
        return result;
      }

      while (1)
      {
        if (v17 != -8 && *(v14 + 4 * v12) == result && v8 == *v17)
        {
          v29 = result;
          v30 = v12;
          v27 = v14;
          v28 = v15;
          v26 = v16;
          v24 = memcmp(v7, v17 + v15, v8);
          v16 = v26;
          v14 = v27;
          v15 = v28;
          v25 = v24;
          result = v29;
          v12 = v30;
          if (!v25)
          {
            break;
          }
        }

        v12 = (v12 + v16++) & v11;
        v17 = *(v13 + 8 * v12);
        if (!v17)
        {
          return result;
        }
      }
    }

    else
    {
      v18 = 1;
      v19 = *(v13 + 8 * v12);
      if (!v19)
      {
        return result;
      }

      while (v19 == -8 || *(v14 + 4 * v12) != result || *v19)
      {
        v12 = (v12 + v18++) & v11;
        v19 = *(v13 + 8 * v12);
        if (!v19)
        {
          return result;
        }
      }

      v30 = v12;
    }

    if (v30 != -1 && v30 != v10)
    {
      sub_298B9671C((a2 + 128), *(v13 + 8 * v30));

      JUMPOUT(0x29C2945E0);
    }
  }

  return result;
}

uint64_t sub_298B84850(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 280);
    if (v2 != *(v1 + 272))
    {
      free(v2);
    }

    v3 = *(v1 + 120);
    if (v3 != *(v1 + 112))
    {
      free(v3);
    }

    v4 = *(v1 + 64);
    if (v4 != (v1 + 80))
    {
      free(v4);
    }

    v5 = *(v1 + 40);
    if (v5)
    {
      *(v1 + 48) = v5;
      operator delete(v5);
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t sub_298B84964(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 140))
    {
      v2 = *(result + 136);
      if (v2)
      {
        v3 = 0;
        v4 = 8 * v2;
        do
        {
          v5 = *(*(v1 + 128) + v3);
          if (v5 != -8 && v5 != 0)
          {
            MEMORY[0x29C2945E0]();
          }

          v3 += 8;
        }

        while (v4 != v3);
      }
    }

    free(*(v1 + 128));
    v7 = *(v1 + 80);
    if (v7 != (v1 + 96))
    {
      free(v7);
    }

    v8 = *(v1 + 32);
    if (v8 != (v1 + 48))
    {
      free(v8);
    }

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t sub_298B84A30(unsigned __int8 **a1, unsigned __int8 *a2)
{
  for (i = *a1; i != a2; *a1 = i)
  {
    v3 = *i;
    v4 = byte_298D1AA47[*i];
    if (a2 - i <= v4)
    {
      return 0;
    }

    v5 = i;
    v6 = 0;
    v7 = v4 + 1;
    i += v4 + 1;
    if (v4 > 1u)
    {
      if (v4 != 2)
      {
        if (v4 != 3)
        {
          return v6;
        }

        if (v5[v4] > -65)
        {
          return 0;
        }

        v7 = 3;
      }

      v9 = &v5[v7];
      v10 = *(v9 - 1);
      v8 = v9 - 1;
      if (v10 > -65)
      {
        return 0;
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_25;
      }

      v8 = i;
      if (v4 != 1)
      {
        return v6;
      }
    }

    if (*(v8 - 1) > -65)
    {
      return 0;
    }

    v11 = *(v8 - 1);
    if (v3 > 239)
    {
      if (v3 == 240)
      {
        if (v11 < 0x90)
        {
          return 0;
        }
      }

      else
      {
        if (v3 != 244)
        {
LABEL_25:
          v6 = 0;
          if (v3 < -62 || v3 > 0xF4)
          {
            return v6;
          }

          continue;
        }

        if (v11 > 0x8F)
        {
          return 0;
        }
      }
    }

    else if (v3 == 224)
    {
      if (v11 < 0xA0)
      {
        return 0;
      }
    }

    else
    {
      if (v3 != 237)
      {
        goto LABEL_25;
      }

      if (v11 > 0x9F)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_298B84B58(unint64_t *a1, unsigned __int8 *a2, unsigned int **a3, unint64_t a4, int a5, int a6)
{
  v6 = *a1;
  v7 = *a3;
  if (*a1 >= a2)
  {
    *a1 = v6;
    *a3 = v7;
    return 0;
  }

  v8 = 0;
  if (a5)
  {
    v9 = a6 == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = !v9;
  while (1)
  {
    while (1)
    {
      v11 = *v6;
      v12 = byte_298D1AA47[*v6];
      if (&a2[-v6] > v12)
      {
        break;
      }

      if (v10)
      {
        *a1 = v6;
        *a3 = v7;
        return 1;
      }

LABEL_50:
      if (v6 == a2)
      {
        v26 = 0;
        goto LABEL_69;
      }

      if (v11 - 194 < 0x1E || v6 + 1 == a2)
      {
        goto LABEL_56;
      }

      v27 = *(v6 + 1);
      if (v11 == 224)
      {
        if ((v27 & 0xE0) == 0xA0)
        {
          v26 = 2;
        }

        else
        {
          v26 = 1;
        }

        goto LABEL_69;
      }

      if (v11 - 225 <= 0xB)
      {
        goto LABEL_63;
      }

      if (v11 == 237)
      {
        v28 = v27 < -96;
LABEL_66:
        if (v28)
        {
          v26 = 2;
        }

        else
        {
          v26 = 1;
        }

        goto LABEL_69;
      }

      if ((v11 & 0xFE) == 0xEE)
      {
LABEL_63:
        v28 = v27 < -64;
        goto LABEL_66;
      }

      v29 = (v6 + 2);
      if (v11 == 240)
      {
        if ((v27 - 144) <= 0x2F)
        {
          goto LABEL_80;
        }

LABEL_56:
        v26 = 1;
        goto LABEL_69;
      }

      if (v11 - 241 <= 2)
      {
        if (v27 <= -65)
        {
          goto LABEL_80;
        }

        goto LABEL_56;
      }

      if (v11 != 244)
      {
        goto LABEL_56;
      }

      v30 = v27;
      v26 = 1;
      if (v30 <= -113)
      {
LABEL_80:
        if (v29 == a2)
        {
          v26 = 2;
        }

        else if (*v29 >= -64)
        {
          v26 = 2;
        }

        else
        {
          v26 = 3;
        }
      }

LABEL_69:
      v6 += v26;
      v8 = 3;
      *v7++ = 65533;
      if (v6 >= a2)
      {
        goto LABEL_86;
      }
    }

    if (v7 >= a4)
    {
      *a1 = v6;
      *a3 = v7;
      return 2;
    }

    v13 = byte_298D1AA47[*v6];
    v14 = v12 + 1;
    if (v13 > 1)
    {
      break;
    }

    if (!byte_298D1AA47[*v6])
    {
      goto LABEL_30;
    }

    v15 = v6 + v14;
LABEL_20:
    v18 = *(v15 - 1);
    if (v18 > -65)
    {
      goto LABEL_49;
    }

    if (*v6 > 0xEFu)
    {
      if (v11 == 240)
      {
        if (v18 < 0x90u)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v11 != 244)
        {
LABEL_30:
          if (v11 < -62 || v11 >= 0xF5)
          {
            goto LABEL_49;
          }

          goto LABEL_32;
        }

        if (v18 > 0x8Fu)
        {
          goto LABEL_49;
        }
      }
    }

    else if (v11 == 224)
    {
      if (v18 < 0xA0u)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v11 != 237)
      {
        goto LABEL_30;
      }

      if (v18 > 0x9Fu)
      {
        goto LABEL_49;
      }
    }

LABEL_32:
    v19 = 0;
    if (byte_298D1AA47[*v6] > 1u)
    {
      if (v13 != 2)
      {
        v19 = v11 << 6;
        v21 = *++v6;
        v11 = v21;
      }

      v22 = *++v6;
      v19 = (v19 + v11) << 6;
      v11 = v22;
LABEL_40:
      v23 = *(v6 + 1);
      v6 += 2;
      v20 = ((v19 + v11) << 6) + v23 - dword_298D1AB48[v12];
      if (v20 >= 0x110000)
      {
        goto LABEL_35;
      }

LABEL_41:
      v24 = v20 & 0x1FF800;
      if ((v20 & 0x1FF800) == 0xD800)
      {
        v20 = 65533;
      }

      if (!a5 && v24 == 55296)
      {
        *a1 = v6 + ~v12;
        *a3 = v7;
        return 3;
      }

      *v7++ = v20;
      if (v6 >= a2)
      {
LABEL_86:
        *a1 = v6;
        *a3 = v7;
        return v8;
      }
    }

    else
    {
      if (byte_298D1AA47[*v6])
      {
        goto LABEL_40;
      }

      ++v6;
      v20 = v11 - dword_298D1AB48[v12];
      if (v20 < 0x110000)
      {
        goto LABEL_41;
      }

LABEL_35:
      v8 = 3;
      *v7++ = 65533;
      if (v6 >= a2)
      {
        goto LABEL_86;
      }
    }
  }

  if (v13 == 2 || v13 == 3 && (v14 = byte_298D1AA47[*v6], *(v6 + v12) <= -65))
  {
    v16 = v6 + v14;
    v17 = *(v16 - 1);
    v15 = v16 - 1;
    if (v17 <= -65)
    {
      goto LABEL_20;
    }
  }

LABEL_49:
  if (a5)
  {
    goto LABEL_50;
  }

  *a1 = v6;
  *a3 = v7;
  return 3;
}