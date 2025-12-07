uint64_t amai_unzGoToNextFile(void *a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (!a1[14])
  {
    return 4294967196;
  }

  v2 = a1[9];
  v3 = a1[12] + 1;
  if (v2 != 0xFFFF && v3 == v2)
  {
    return 4294967196;
  }

  v5 = a1[26] + a1[27] + a1[28] + a1[13] + 46;
  a1[12] = v3;
  a1[13] = v5;
  result = unzlocal_GetCurrentFileInfoInternal(a1, (a1 + 18), a1 + 35, 0, 0, 0, 0, 0, 0);
  a1[14] = result == 0;
  return result;
}

uint64_t amai_unzLocateFile(uint64_t a1, char *__s, int a3)
{
  v21 = *MEMORY[0x29EDCA608];
  if (!a1 || strlen(__s) > 0xFF)
  {
    return 4294967194;
  }

  if (!*(a1 + 112))
  {
    return 4294967196;
  }

  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  v17 = *(a1 + 240);
  v18 = *(a1 + 256);
  v9 = *(a1 + 280);
  v19 = *(a1 + 272);
  v13 = *(a1 + 176);
  v14 = *(a1 + 192);
  v15 = *(a1 + 208);
  v16 = *(a1 + 224);
  v11 = *(a1 + 144);
  v12 = *(a1 + 160);
  v10 = *(a1 + 136);
  *(a1 + 96) = 0;
  *(a1 + 104) = v10;
  result = unzlocal_GetCurrentFileInfoInternal(a1, a1 + 144, (a1 + 280), 0, 0, 0, 0, 0, 0);
  for (*(a1 + 112) = result == 0; !result; result = amai_unzGoToNextFile(a1))
  {
    result = unzlocal_GetCurrentFileInfoInternal(a1, 0, 0, v20, 0x100uLL, 0, 0, 0, 0);
    if (result)
    {
      break;
    }

    result = amai_unzStringFileNameCompare(v20, __s, a3);
    if (!result)
    {
      return result;
    }
  }

  *(a1 + 96) = v7;
  *(a1 + 104) = v8;
  *(a1 + 240) = v17;
  *(a1 + 256) = v18;
  *(a1 + 176) = v13;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  *(a1 + 224) = v16;
  *(a1 + 144) = v11;
  *(a1 + 160) = v12;
  *(a1 + 272) = v19;
  *(a1 + 280) = v9;
  return result;
}

uint64_t amai_unzOpenCurrentFile3(uint64_t a1, _DWORD *a2, int *a3, int a4, _BYTE *a5)
{
  v55[2] = *MEMORY[0x29EDCA608];
  if (!a1 || !*(a1 + 112))
  {
    return 4294967194;
  }

  if (*(a1 + 288))
  {
    amai_unzCloseCurrentFile(a1);
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 88) + *(a1 + 280), 0))
  {
    return 4294967193;
  }

  v54 = 0;
  v55[0] = 0;
  v53 = 0;
  Long = unzlocal_getLong(a1, *(a1 + 64), v55);
  v11 = v55[0];
  Short = unzlocal_getShort(a1, *(a1 + 64), &v54);
  v13 = unzlocal_getShort(a1, *(a1 + 64), &v53);
  v14 = -103;
  if (!unzlocal_getShort(a1, *(a1 + 64), &v54))
  {
    v19 = v11 == 67324752 ? 0 : -103;
    v20 = v13 | Short | Long;
    v14 = v20 ? -1 : v19;
    if (!v20 && v11 == 67324752)
    {
      v14 = -103;
      if (v54 == *(a1 + 168))
      {
        if ((v54 & 0xFFFFFFFFFFFFFFF7) != 0)
        {
          v14 = -103;
        }

        else
        {
          v14 = 0;
        }
      }
    }
  }

  v15 = unzlocal_getLong(a1, *(a1 + 64), &v54);
  v16 = unzlocal_getLong(a1, *(a1 + 64), &v54) || v15 | v14 || v54 != *(a1 + 184) && (v53 & 8) == 0;
  v18 = 1;
  if (!unzlocal_getLong(a1, *(a1 + 64), &v54) && !v16)
  {
    v18 = v54 != *(a1 + 192) && (v53 & 8) == 0;
  }

  v21 = 1;
  if (!unzlocal_getLong(a1, *(a1 + 64), &v54) && !v18)
  {
    v21 = v54 != *(a1 + 200) && (v53 & 8) == 0;
  }

  v52 = 0;
  v22 = unzlocal_getShort(a1, *(a1 + 64), &v52);
  v23 = 0;
  v24 = v52;
  if (!v22 && !v21)
  {
    v23 = v52 == *(a1 + 208);
  }

  v51 = 0;
  if (unzlocal_getShort(a1, *(a1 + 64), &v51) || !v23)
  {
    return 4294967193;
  }

  v25 = *(a1 + 280);
  v26 = v51;
  v27 = malloc(0x120uLL);
  if (!v27)
  {
    return 4294967192;
  }

  v28 = v27;
  v29 = malloc(0x4000uLL);
  *v28 = v29;
  *(v28 + 17) = v24 + v25 + 30;
  *(v28 + 36) = v26;
  *(v28 + 19) = 0;
  *(v28 + 70) = a4;
  if (!v29)
  {
    free(v28);
    return 4294967192;
  }

  *(v28 + 16) = 0;
  if (a2)
  {
    *a2 = *(a1 + 168);
  }

  if (a3)
  {
    *a3 = 6;
    v30 = *(a1 + 160) & 6;
    if (v30 > 3)
    {
      if (v30 == 6)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }
    }

    else
    {
      if (!v30)
      {
        goto LABEL_56;
      }

      v31 = 9;
    }

    *a3 = v31;
  }

LABEL_56:
  v33 = *(a1 + 184);
  *(v28 + 20) = 0;
  *(v28 + 21) = v33;
  v34 = *(a1 + 168);
  *(v28 + 32) = *(a1 + 64);
  *(v28 + 33) = v34;
  v35 = *(a1 + 16);
  *(v28 + 12) = *a1;
  *(v28 + 13) = v35;
  v36 = *(a1 + 48);
  *(v28 + 14) = *(a1 + 32);
  *(v28 + 15) = v36;
  *(v28 + 34) = *(a1 + 88);
  *(v28 + 6) = 0;
  if (!a4 && v34 == 8)
  {
    *(v28 + 1) = 0;
    *(v28 + 4) = 0;
    *(v28 + 10) = 0;
    *(v28 + 11) = 0;
    *(v28 + 9) = 0;
    v37 = inflateInit2_((v28 + 8), -15, "1.2.12", 112);
    if (v37)
    {
      v17 = v37;
      free(v28);
      return v17;
    }

    *(v28 + 16) = 1;
    v25 = *(a1 + 280);
  }

  *(v28 + 11) = *(a1 + 192);
  *(v28 + 15) = v25 + (v26 + v24) + 30;
  *(v28 + 4) = 0;
  *(a1 + 288) = v28;
  if (!a5)
  {
    return 0;
  }

  v38 = 878082192;
  crc_table = get_crc_table();
  *(a1 + 304) = xmmword_2985615B0;
  *(a1 + 320) = 878082192;
  *(a1 + 328) = crc_table;
  v40 = *a5;
  if (*a5)
  {
    v41 = a5 + 1;
    v42 = 305419896;
    v43 = 591751049;
    do
    {
      v42 = crc_table[v40 ^ v42] ^ (v42 >> 8);
      v43 = 134775813 * (v43 + v42) + 1;
      *(a1 + 304) = v42;
      *(a1 + 312) = v43;
      v38 = crc_table[(v38 ^ BYTE3(v43))] ^ (v38 >> 8);
      *(a1 + 320) = v38;
      v44 = *v41++;
      v40 = v44;
    }

    while (v44);
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(*(a1 + 288) + 272) + *(*(a1 + 288) + 120), 0) || (*(a1 + 8))(*(a1 + 56), *(a1 + 64), v55, 12) < 0xC)
  {
    return 4294967192;
  }

  v45 = 0;
  v47 = *(a1 + 320);
  v46 = *(a1 + 328);
  v48 = *(a1 + 304);
  v49 = *(a1 + 312);
  do
  {
    v50 = *(v55 + v45) ^ (((v47 & 0xFFFD ^ 3) * (v47 | 2)) >> 8);
    *(v55 + v45) = v50;
    v48 = *(v46 + 8 * (v50 ^ v48)) ^ (v48 >> 8);
    v49 = 134775813 * (v49 + v48) + 1;
    *(a1 + 304) = v48;
    *(a1 + 312) = v49;
    v47 = *(v46 + 8 * (v47 ^ BYTE3(v49))) ^ (v47 >> 8);
    *(a1 + 320) = v47;
    ++v45;
  }

  while (v45 != 12);
  v17 = 0;
  *(*(a1 + 288) + 120) += 12;
  *(a1 + 296) = 1;
  return v17;
}

uint64_t amai_unzReadCurrentFile(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  v4 = *(a1 + 288);
  if (!v4)
  {
    return 4294967194;
  }

  if (!*v4)
  {
    return 4294967196;
  }

  if (!a3)
  {
    return 0;
  }

  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  v5 = a3;
  v6 = *(v4 + 184);
  if (v6 < a3 && !*(v4 + 280))
  {
    *(v4 + 40) = v6;
    a3 = v6;
  }

  v7 = *(v4 + 176);
  v8 = *(v4 + 16);
  if (v7 + v8 < v5 && *(v4 + 280))
  {
    a3 = v8 + v7;
    *(v4 + 40) = v8 + v7;
  }

  if (!a3)
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    while (1)
    {
      LODWORD(v10) = *(v4 + 16);
      if (!v10)
      {
        v11 = *(v4 + 176);
        if (v11)
        {
          if (v11 >= 0x4000)
          {
            v10 = 0x4000;
          }

          else
          {
            v10 = *(v4 + 176);
          }

          if ((*(v4 + 224))(*(v4 + 248), *(v4 + 256), *(v4 + 272) + *(v4 + 120), 0) || (*(v4 + 200))(*(v4 + 248), *(v4 + 256), *v4, v10) != v10)
          {
            return 0xFFFFFFFFLL;
          }

          if (*(a1 + 296))
          {
            v12 = 0;
            do
            {
              v13 = *(a1 + 328);
              v14 = *(*v4 + v12) ^ (((*(a1 + 320) & 0xFFFD ^ 3) * (*(a1 + 320) | 2u)) >> 8);
              *(*v4 + v12) ^= ((*(a1 + 320) & 0xFFFD ^ 3) * (*(a1 + 320) | 2)) >> 8;
              v15 = *(v13 + 8 * (v14 ^ *(a1 + 304))) ^ (*(a1 + 304) >> 8);
              v16 = 134775813 * (*(a1 + 312) + v15) + 1;
              *(a1 + 304) = v15;
              *(a1 + 312) = v16;
              *(a1 + 320) = *(v13 + 8 * (*(a1 + 320) ^ BYTE3(v16))) ^ (*(a1 + 320) >> 8);
              *(*v4 + v12++) = v14;
            }

            while (v10 != v12);
          }

          *(v4 + 120) += v10;
          *(v4 + 176) -= v10;
          *(v4 + 8) = *v4;
          *(v4 + 16) = v10;
        }

        else
        {
          LODWORD(v10) = 0;
        }
      }

      if (*(v4 + 264) && !*(v4 + 280))
      {
        break;
      }

      if (v10 || *(v4 + 176))
      {
        v17 = *(v4 + 40);
        v10 = v17 >= v10 ? v10 : v17;
        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            *(*(v4 + 32) + i) = *(*(v4 + 8) + i);
          }

          v19 = v10;
        }

        else
        {
          v19 = 0;
        }

        *(v4 + 160) = crc32(*(v4 + 160), *(v4 + 32), v10);
        *(v4 + 184) -= v19;
        *(v4 + 16) -= v10;
        v20 = *(v4 + 40) - v10;
        *(v4 + 40) = v20;
        *(v4 + 32) += v19;
        *(v4 + 8) += v19;
        v9 = (v10 + v9);
        *(v4 + 48) += v19;
        if (v20)
        {
          continue;
        }
      }

      return v9;
    }

    v21 = *(v4 + 48);
    v22 = *(v4 + 32);
    v23 = inflate((v4 + 8), 2);
    if ((v23 & 0x80000000) == 0 && *(v4 + 56))
    {
      v26 = *(v4 + 48);
      v27 = v26 - v21;
      *(v4 + 160) = crc32(*(v4 + 160), v22, v26 - v21);
      *(v4 + 184) -= v27;
      return 4294967293;
    }

    v24 = *(v4 + 48) - v21;
    *(v4 + 160) = crc32(*(v4 + 160), v22, v24);
    *(v4 + 184) -= v24;
    v9 = (v9 + v24);
    if (v23)
    {
      break;
    }

    if (!*(v4 + 40))
    {
      return v9;
    }
  }

  if (v23 == 1)
  {
    return v9;
  }

  else
  {
    return v23;
  }
}

uint64_t unzlocal_getByte(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = 0;
  if ((*(a1 + 8))(*(a1 + 56), a2, &v7, 1) == 1)
  {
    result = 0;
    *a3 = v7;
  }

  else if ((*(a1 + 48))(*(a1 + 56), a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }

  return result;
}

void *amai_zipOpen2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v6 = v5;
  v8 = v7;
  v9 = v3;
  v69 = *MEMORY[0x29EDCA608];
  memset(__src, 0, 512);
  if (v4)
  {
    v10 = v4[1];
    __src[0] = *v4;
    __src[1] = v10;
    v11 = v4[3];
    __src[2] = v4[2];
    __src[3] = v11;
  }

  else
  {
    amai_fill_fopen_filefunc(__src);
  }

  if (v8)
  {
    v12 = 7;
  }

  else
  {
    v12 = 11;
  }

  v13 = (*&__src[0])(*(&__src[3] + 1), v9, v12);
  *&__src[4] = v13;
  if (!v13)
  {
    return 0;
  }

  *&__src[1044] = (*(&__src[1] + 1))(*(&__src[3] + 1), v13);
  LODWORD(__src[13]) = 0;
  v14 = malloc(0x4160uLL);
  *(&__src[4] + 8) = 0u;
  DWORD2(__src[5]) = 0;
  *(&__src[1044] + 8) = 0u;
  if (v14)
  {
    *(&__src[1045] + 1) = 0;
    if (v8 == 2)
    {
      v66 = 0;
      v67 = 0;
      v63 = 0;
      v64 = 0;
      v61 = 0;
      v62 = 0;
      v60 = 0;
      v15 = *&__src[4];
      v54 = v6;
      if ((*&__src[2])(*(&__src[3] + 1), *&__src[4], 0, 2) || ((v18 = (*(&__src[1] + 1))(*(&__src[3] + 1), v15), v19 = v18, v18 >= 0xFFFF) ? (v20 = 0xFFFFLL) : (v20 = v18), (v21 = malloc(0x404uLL)) == 0))
      {
        v16 = 0;
        v58 = 0;
      }

      else
      {
        v22 = v21;
        if (v19 >= 5)
        {
          v23 = 4;
          while (2)
          {
            v24 = v23 + 1024;
            if (v23 + 1024 >= v20)
            {
              v23 = v20;
            }

            else
            {
              v23 += 1024;
            }

            v25 = v23 >= 0x404 ? 1028 : v23;
            if (!(*&__src[2])(*(&__src[3] + 1), v15, v19 - v23, 0) && (*(&__src[0] + 1))(*(&__src[3] + 1), v15, v22, v25) == v25)
            {
              v26 = (v25 - 4);
              v27 = v23 - v19 - v26;
              v28 = v25 - 3;
              v29 = &v22[v26 + 1];
              while (*(v29 - 1) != 80 || *v29 != 75 || v29[1] != 5 || v29[2] != 6)
              {
                ++v27;
                --v29;
                v30 = __OFSUB__(v28--, 1);
                if ((v28 < 0) ^ v30 | (v28 == 0))
                {
                  goto LABEL_40;
                }
              }

              if (v27)
              {
                v16 = -v27;
                v58 = 1;
                goto LABEL_45;
              }

LABEL_40:
              if (v24 < v20)
              {
                continue;
              }
            }

            break;
          }
        }

        v16 = 0;
        v58 = 0;
LABEL_45:
        free(v22);
      }

      v55 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v16, 0);
      HIDWORD(v56) = unzlocal_getLong(__src, *&__src[4], &v65);
      LODWORD(v56) = unzlocal_getShort(__src, *&__src[4], &v64);
      Short = unzlocal_getShort(__src, *&__src[4], &v63);
      v31 = unzlocal_getShort(__src, *&__src[4], &v62);
      v32 = unzlocal_getShort(__src, *&__src[4], &v61);
      v33 = v62;
      v59 = v61;
      v34 = v63;
      v35 = v64;
      Long = unzlocal_getLong(__src, *&__src[4], &v67);
      v37 = unzlocal_getLong(__src, *&__src[4], &v66);
      v38 = unzlocal_getShort(__src, *&__src[4], &v60);
      v39 = v67;
      v53 = v66;
      v40 = v16 >= v67 + v66;
      v41 = v16 - (v67 + v66);
      if (!v40 || v37 | Long | v38 || v59 != v33 || v34 || v35 || !v58 || v32 || v31 || Short || v56 || v55)
      {
        (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
LABEL_74:
        free(v14);
        return 0;
      }

      v42 = v60;
      if (v60)
      {
        v43 = malloc(v60 + 1);
        *(&__src[1045] + 1) = v43;
        if (v43)
        {
          v44 = (*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v43, v42);
          *(*(&__src[1045] + 1) + v44) = 0;
        }
      }

      *(&__src[1044] + 1) = v41;
      v45 = malloc(0xFF0uLL);
      v46 = v41;
      v47 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v41 + v53, 0);
      if (v47)
      {
        v48 = -1;
      }

      else
      {
        v48 = 0;
      }

      if (v39 && !v47)
      {
        while (1)
        {
          v49 = v39 >= 0xFF0 ? 4080 : v39;
          if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v45, v49) != v49)
          {
            break;
          }

          v50 = add_data_in_datablock(&__src[4] + 1, v45, v49);
          v48 = v50;
          v39 -= v49;
          if (!v39 || v50)
          {
            goto LABEL_78;
          }
        }

        v48 = -1;
      }

LABEL_78:
      if (v45)
      {
        free(v45);
      }

      *&__src[1044] = v46;
      *&__src[1045] = v59;
      if ((*&__src[2])(*(&__src[3] + 1), *&__src[4], v46 + v53, 0))
      {
        v52 = 0;
      }

      else
      {
        v52 = v48 == 0;
      }

      v17 = v52;
      v6 = v54;
      if (!v54)
      {
LABEL_15:
        if (v17)
        {
          memcpy(v14, __src, 0x4160uLL);
          return v14;
        }

        if (*(&__src[1045] + 1))
        {
          free(*(&__src[1045] + 1));
        }

        goto LABEL_74;
      }
    }

    else
    {
      v17 = 1;
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    *v6 = *(&__src[1045] + 1);
    goto LABEL_15;
  }

  (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
  return v14;
}

uint64_t add_data_in_datablock(void *a1, char *a2, unint64_t a3)
{
  if (!a1)
  {
    return 4294967192;
  }

  v3 = a3;
  v6 = a1[1];
  if (v6)
  {
    if (!a3)
    {
      return 0;
    }

    goto LABEL_8;
  }

  v8 = malloc(0x1010uLL);
  if (v8)
  {
    v6 = v8;
    *v8 = 0;
    *(v8 + 8) = xmmword_2985615C0;
    *a1 = v8;
    a1[1] = v8;
    if (!v3)
    {
      return 0;
    }

LABEL_8:
    v9 = v6[1];
    while (1)
    {
      if (v9)
      {
        v10 = v6[2];
      }

      else
      {
        v11 = malloc(0x1010uLL);
        if (!v11)
        {
          *v6 = 0;
          return 4294967192;
        }

        v10 = 0;
        *v11 = 0;
        *(v11 + 8) = xmmword_2985615C0;
        *v6 = v11;
        v9 = 4080;
        v6 = v11;
        a1[1] = v11;
      }

      if (v9 >= v3)
      {
        v12 = v3;
      }

      else
      {
        v12 = v9;
      }

      if (v12)
      {
        v13 = v6 + v10 + 32;
        v14 = v12;
        v15 = a2;
        do
        {
          v16 = *v15++;
          *v13++ = v16;
          --v14;
        }

        while (v14);
        v9 = v6[1];
        v10 = v6[2];
      }

      v9 -= v12;
      v6[1] = v9;
      v6[2] = v10 + v12;
      a2 += v12;
      v3 -= v12;
      if (!v3)
      {
        return 0;
      }
    }
  }

  *a1 = 0;
  a1[1] = 0;
  return 4294967192;
}

uint64_t amai_zipOpenNewFileInZip3(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, unsigned int a5, char *a6, unsigned int a7, char *__s, int a9, int a10, int a11, int a12, int a13, int a14, char *a15, uint64_t a16)
{
  v100 = *MEMORY[0x29EDCA608];
  result = 4294967194;
  if (!a1)
  {
    return result;
  }

  if ((a9 & 0xFFFFFFF7) != 0)
  {
    return result;
  }

  if (*(a1 + 88) == 1)
  {
    result = amai_zipCloseFileInZipRaw(a1, 0, 0);
    if (result)
    {
      return result;
    }
  }

  v94 = a4;
  if (a2)
  {
    v25 = a2;
  }

  else
  {
    v25 = "-";
  }

  v95 = a5;
  if (__s)
  {
    v26 = strlen(__s);
  }

  else
  {
    v26 = 0;
  }

  v27 = strlen(v25);
  if (a3)
  {
    v28 = *(a3 + 24);
    if (!v28)
    {
      v29 = *(a3 + 20);
      v30 = v29 - 80;
      if (v29 <= 0x50)
      {
        v30 = *(a3 + 20);
      }

      if (v29 <= 0x7BC)
      {
        v31 = v30;
      }

      else
      {
        v31 = v29 - 1980;
      }

      v28 = ((32 * *(a3 + 4) + (*a3 >> 1)) + (*(a3 + 8) << 11)) | (((*(a3 + 12) + 32 * *(a3 + 16) + 32) << 16) + (v31 << 25));
    }
  }

  else
  {
    v28 = 0;
  }

  *(a1 + 16640) = v28;
  v32 = 2 * ((a10 & 0xFFFFFFFE) == 8);
  *(a1 + 240) = v32;
  if (a10 == 2)
  {
    v32 = 4;
  }

  else
  {
    if (a10 != 1)
    {
      goto LABEL_25;
    }

    v32 = 6;
  }

  *(a1 + 240) = v32;
LABEL_25:
  if (a15)
  {
    *(a1 + 240) = v32 | 1;
  }

  *(a1 + 16648) = 0;
  *(a1 + 16656) = 0;
  *(a1 + 208) = 0;
  *(a1 + 248) = a9;
  *(a1 + 252) = a11;
  v33 = (*(a1 + 24))(*(a1 + 56), *(a1 + 64));
  *(a1 + 216) = v33;
  v34 = a7 + v26 + v27 + 46;
  *(a1 + 232) = v34;
  v35 = malloc(v34);
  *(a1 + 224) = v35;
  *v35 = 33639248;
  v35[1] = 1310720;
  v36 = *(a1 + 240);
  *(v35 + 4) = v36;
  if (v36 >= 0x10000)
  {
    *(v35 + 4) = -1;
  }

  v37 = *(a1 + 248);
  *(v35 + 5) = v37;
  if (v37 >= 0x10000)
  {
    *(v35 + 5) = -1;
  }

  v38 = 0;
  v39 = v35 + 3;
  v40 = *(a1 + 16640);
  do
  {
    v41 = v40;
    *(v39 + v38) = v40;
    v40 >>= 8;
    ++v38;
  }

  while (v38 != 4);
  if (v41 >= 0x100)
  {
    *v39 = -1;
  }

  *(v35 + 2) = 0;
  v35[6] = 0;
  *(v35 + 14) = v27;
  if (v27 >= 0x10000uLL)
  {
    *(v35 + 14) = -1;
  }

  *(v35 + 15) = a7;
  if (a7 >= 0x10000)
  {
    *(v35 + 15) = -1;
  }

  *(v35 + 16) = v26;
  if (v26 >= 0x10000)
  {
    *(v35 + 16) = -1;
  }

  *(v35 + 17) = 0;
  v42 = v26;
  if (a3)
  {
    v43 = *(a3 + 32);
    *(v35 + 18) = v43;
    if (v43 >= 0x10000)
    {
      *(v35 + 18) = -1;
    }

    v44 = 0;
    v45 = (v35 + 38);
    v46 = *(a3 + 40);
    do
    {
      v47 = v46;
      *(v45 + v44) = v46;
      v46 >>= 8;
      ++v44;
    }

    while (v44 != 4);
    if (v47 >= 0x100)
    {
      *v45 = -1;
    }
  }

  else
  {
    *(v35 + 18) = 0;
    *(v35 + 38) = 0;
  }

  v48 = 0;
  v49 = (v35 + 42);
  v50 = v33 - *(a1 + 16712);
  do
  {
    v51 = v50;
    *(v49 + v48) = v50;
    v50 >>= 8;
    ++v48;
  }

  while (v48 != 4);
  if (v51 >= 0x100)
  {
    *v49 = -1;
  }

  if (v27)
  {
    for (i = 0; i != v27; ++i)
    {
      *(*(a1 + 224) + i + 46) = v25[i];
    }
  }

  if (a7)
  {
    v53 = v27 + 46;
    v54 = a7;
    do
    {
      v55 = *a6++;
      *(*(a1 + 224) + v53++) = v55;
      --v54;
    }

    while (v54);
  }

  if (v26)
  {
    v56 = a7 + v27 + 46;
    do
    {
      v57 = *__s++;
      *(*(a1 + 224) + v56++) = v57;
      --v42;
    }

    while (v42);
  }

  if (!*(a1 + 224))
  {
    return 4294967192;
  }

  v96[0] = 67324752;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v96, 4) != 4)
  {
    goto LABEL_91;
  }

  LOWORD(v96[0]) = 20;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v96, 2) != 2)
  {
    goto LABEL_91;
  }

  v58 = *(a1 + 64);
  v59 = *(a1 + 240);
  LOWORD(v96[0]) = v59;
  if (v59 >= 0x10000)
  {
    LOWORD(v96[0]) = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v58, v96, 2) != 2)
  {
    goto LABEL_91;
  }

  v60 = *(a1 + 64);
  v61 = *(a1 + 248);
  LOWORD(v96[0]) = v61;
  if (v61 >= 0x10000)
  {
    LOWORD(v96[0]) = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v60, v96, 2) != 2)
  {
    goto LABEL_91;
  }

  v62 = 0;
  v63 = *(a1 + 64);
  v64 = *(a1 + 16640);
  do
  {
    v65 = v64;
    *(v96 + v62) = v64;
    v64 >>= 8;
    ++v62;
  }

  while (v62 != 4);
  if (v65 >= 0x100)
  {
    v96[0] = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v63, v96, 4) != 4)
  {
    goto LABEL_91;
  }

  v96[0] = 0;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v96, 4) != 4)
  {
    goto LABEL_91;
  }

  v96[0] = 0;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v96, 4) != 4)
  {
    goto LABEL_91;
  }

  v96[0] = 0;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v96, 4) != 4)
  {
    goto LABEL_91;
  }

  v66 = *(a1 + 64);
  LOWORD(v96[0]) = v27;
  if (v27 >= 0x10000uLL)
  {
    LOWORD(v96[0]) = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v66, v96, 2) != 2)
  {
    goto LABEL_91;
  }

  v67 = *(a1 + 64);
  LOWORD(v96[0]) = v95;
  if (v95 >= 0x10000)
  {
    LOWORD(v96[0]) = -1;
  }

  v68 = (*(a1 + 16))(*(a1 + 56), v67, v96, 2);
  v69 = v68 != 2;
  if (v68 == 2 && v27)
  {
    v69 = (*(a1 + 16))(*(a1 + 56), *(a1 + 64), v25, v27) != v27;
  }

  v70 = v95;
  if (v95 && !v69)
  {
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v94, v95) == v70)
    {
      *(a1 + 104) = 0;
      *(a1 + 128) = 0x4000;
      *(a1 + 112) = 0;
      *(a1 + 120) = a1 + 256;
      *(a1 + 136) = 0;
      v71 = a1 + 0x4000;
      v72 = a15;
      goto LABEL_97;
    }

LABEL_91:
    *(a1 + 104) = 0;
    *(a1 + 128) = 0x4000;
    *(a1 + 112) = 0;
    *(a1 + 120) = a1 + 256;
    result = 0xFFFFFFFFLL;
    *(a1 + 136) = 0;
    v71 = a1 + 0x4000;
    goto LABEL_92;
  }

  *(a1 + 104) = 0;
  *(a1 + 128) = 0x4000;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 256;
  *(a1 + 136) = 0;
  v71 = a1 + 0x4000;
  v72 = a15;
  if (v69)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_92;
  }

LABEL_97:
  if (*(a1 + 248) != 8 || *(a1 + 252))
  {
    goto LABEL_99;
  }

  if (a12 < 0)
  {
    v93 = a12;
  }

  else
  {
    v93 = -a12;
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  result = deflateInit2_((a1 + 96), a10, 8, v93, a13, a14, "1.2.12", 112);
  if (result)
  {
LABEL_92:
    *(v71 + 312) = 0;
    return result;
  }

  *(a1 + 208) = 1;
  v72 = a15;
LABEL_99:
  *(v71 + 312) = 0;
  if (!v72)
  {
    goto LABEL_107;
  }

  *(v71 + 272) = 1;
  crc_table = get_crc_table();
  *(a1 + 16688) = crc_table;
  if (!crypthead_calls++)
  {
    v75 = time(0);
    srand(v75 ^ 0xBB40E64E);
  }

  init_keys(a15, (a1 + 16664), crc_table);
  for (j = 0; j != 10; v99[j++] = (((v78 & 0xFFFD ^ 3) * (v78 | 2)) >> 8) ^ (v77 >> 7))
  {
    v77 = rand();
    v78 = *(a1 + 16680);
    v79 = crc_table[(*(a1 + 16664) ^ (v77 >> 7))] ^ (*(a1 + 16664) >> 8);
    *(a1 + 16664) = v79;
    v80 = 134775813 * (*(a1 + 16672) + v79) + 1;
    *(a1 + 16672) = v80;
    *(a1 + 16680) = crc_table[(v78 ^ BYTE3(v80))] ^ (v78 >> 8);
  }

  init_keys(a15, (a1 + 16664), crc_table);
  v81 = 0;
  v82 = *(a1 + 16680);
  v83 = *(a1 + 16664);
  v84 = *(a1 + 16672);
  do
  {
    v85 = (v82 & 0xFFFD ^ 3) * (v82 | 2);
    v86 = v99[v81];
    v83 = crc_table[(v86 ^ v83)] ^ (v83 >> 8);
    *(a1 + 16664) = v83;
    v84 = 134775813 * (v84 + v83) + 1;
    *(a1 + 16672) = v84;
    v82 = crc_table[(v82 ^ BYTE3(v84))] ^ (v82 >> 8);
    *(a1 + 16680) = v82;
    *(v96 + v81++) = v86 ^ HIBYTE(v85);
  }

  while (v81 != 10);
  v87 = ((v82 & 0xFFFFFFFD ^ 3) * (v82 | 2)) >> 8;
  v88 = crc_table[(v83 ^ BYTE2(a16))] ^ (v83 >> 8);
  *(a1 + 16664) = v88;
  v89 = 134775813 * (v84 + v88) + 1;
  *(a1 + 16672) = v89;
  v90 = crc_table[(v82 ^ BYTE3(v89))] ^ (v82 >> 8);
  *(a1 + 16680) = v90;
  v97 = v87 ^ BYTE2(a16);
  v91 = crc_table[v88 ^ BYTE3(a16)] ^ (v88 >> 8);
  *(a1 + 16664) = v91;
  v92 = 134775813 * (v89 + v91) + 1;
  *(a1 + 16672) = v92;
  *(a1 + 16680) = crc_table[(v90 ^ BYTE3(v92))] ^ (v90 >> 8);
  v98 = (((v90 & 0xFFFD ^ 3) * (v90 | 2)) >> 8) ^ BYTE3(a16);
  *(a1 + 16696) = 12;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v96, 12) != 12)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_107:
  result = 0;
  *(a1 + 88) = 1;
  return result;
}

uint64_t amai_zipWriteInFileInZip(uint64_t a1, const Bytef *a2, uInt a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (!*(a1 + 88))
  {
    return 4294967194;
  }

  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  *(a1 + 16648) = crc32(*(a1 + 16648), a2, a3);
  while (*(a1 + 104))
  {
    v4 = *(a1 + 128);
    if (v4 || (result = zipFlushWriteBuffer(a1), v4 = 0x4000, *(a1 + 128) = 0x4000, *(a1 + 120) = a1 + 256, result != -1))
    {
      if (*(a1 + 248) == 8 && !*(a1 + 252))
      {
        v10 = *(a1 + 136);
        result = deflate((a1 + 96), 0);
        LODWORD(v7) = *(a1 + 136) - v10;
      }

      else
      {
        v6 = *(a1 + 104);
        v7 = v6 >= v4 ? v4 : v6;
        if (v6)
        {
          v8 = 0;
          do
          {
            *(*(a1 + 120) + v8) = *(*(a1 + 96) + v8);
            ++v8;
          }

          while (v7 != v8);
          v6 = *(a1 + 104);
          v4 = *(a1 + 128);
        }

        result = 0;
        *(a1 + 104) = v6 - v7;
        *(a1 + 128) = v4 - v7;
        *(a1 + 96) += v7;
        v9 = *(a1 + 120) + v7;
        *(a1 + 112) += v7;
        *(a1 + 120) = v9;
        *(a1 + 136) += v7;
      }

      *(a1 + 212) += v7;
      if (!result)
      {
        continue;
      }
    }

    return result;
  }

  return 0;
}

uint64_t zipFlushWriteBuffer(uint64_t a1)
{
  v2 = *(a1 + 212);
  if (*(a1 + 16656) && v2)
  {
    v3 = (a1 + 256);
    v4 = *(a1 + 212);
    do
    {
      v5 = *(a1 + 16680);
      v6 = *(a1 + 16688);
      v7 = *(v6 + 8 * (*v3 ^ *(a1 + 16664))) ^ (*(a1 + 16664) >> 8);
      *(a1 + 16664) = v7;
      v8 = 134775813 * (*(a1 + 16672) + v7) + 1;
      *(a1 + 16672) = v8;
      *(a1 + 16680) = *(v6 + 8 * (v5 ^ BYTE3(v8))) ^ (v5 >> 8);
      *v3++ ^= ((v5 & 0xFFFD ^ 3) * (v5 | 2)) >> 8;
      --v4;
    }

    while (v4);
  }

  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), a1 + 256, v2) == *(a1 + 212))
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *(a1 + 212) = 0;
  return result;
}

uint64_t amai_zipCloseFileInZipRaw(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1 || !*(a1 + 88))
  {
    return 4294967194;
  }

  *(a1 + 104) = 0;
  if (*(a1 + 248) == 8)
  {
    do
    {
      if (!*(a1 + 128))
      {
        v33 = zipFlushWriteBuffer(a1);
        *(a1 + 128) = 0x4000;
        *(a1 + 120) = a1 + 256;
        if (v33 == -1)
        {
          v6 = 0xFFFFFFFFLL;
          goto LABEL_9;
        }
      }

      v34 = *(a1 + 136);
      v35 = deflate((a1 + 96), 4);
      *(a1 + 212) += *(a1 + 136) - v34;
    }

    while (!v35);
    if (v35 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = v35;
    }

    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 212))
  {
    if (zipFlushWriteBuffer(a1) == -1)
    {
      v6 = 0xFFFFFFFFLL;
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_9:
  if (*(a1 + 248) == 8 && !(*(a1 + 252) | v6))
  {
    v6 = deflateEnd((a1 + 96));
    *(a1 + 208) = 0;
  }

  if (!*(a1 + 252))
  {
    a3 = *(a1 + 16648);
    a2 = *(a1 + 112);
  }

  v7 = 0;
  v8 = *(a1 + 136);
  v9 = *(a1 + 16696);
  v10 = (*(a1 + 224) + 16);
  v11 = a3;
  do
  {
    v12 = v11;
    *(v10 + v7) = v11;
    v11 >>= 8;
    ++v7;
  }

  while (v7 != 4);
  v13 = v8 + v9;
  if (v12 >= 0x100)
  {
    *v10 = -1;
  }

  v14 = 0;
  v15 = (*(a1 + 224) + 20);
  v16 = v8 + v9;
  do
  {
    v17 = v16;
    *(v15 + v14) = v16;
    v16 >>= 8;
    ++v14;
  }

  while (v14 != 4);
  if (v17 >= 0x100)
  {
    *v15 = -1;
  }

  if (*(a1 + 184) == 1)
  {
    *(*(a1 + 224) + 36) = 1;
  }

  v18 = 0;
  v19 = (*(a1 + 224) + 24);
  v20 = a2;
  do
  {
    v21 = v20;
    *(v19 + v18) = v20;
    v20 >>= 8;
    ++v18;
  }

  while (v18 != 4);
  if (v21 >= 0x100)
  {
    *v19 = -1;
  }

  if (v6)
  {
    free(*(a1 + 224));
  }

  else
  {
    v6 = add_data_in_datablock((a1 + 72), *(a1 + 224), *(a1 + 232));
    free(*(a1 + 224));
    if (!v6)
    {
      v22 = (*(a1 + 24))(*(a1 + 56), *(a1 + 64));
      if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 216) + 14, 0))
      {
        goto LABEL_58;
      }

      v23 = 0;
      v24 = *(a1 + 64);
      do
      {
        v25 = a3;
        *(&v37 + v23) = a3;
        a3 >>= 8;
        ++v23;
      }

      while (v23 != 4);
      if (v25 >= 0x100)
      {
        v37 = -1;
      }

      if ((*(a1 + 16))(*(a1 + 56), v24, &v37, 4) != 4)
      {
        goto LABEL_58;
      }

      v26 = 0;
      v27 = *(a1 + 64);
      do
      {
        v28 = v13;
        *(&v38 + v26) = v13;
        v13 >>= 8;
        ++v26;
      }

      while (v26 != 4);
      if (v28 >= 0x100)
      {
        v38 = -1;
      }

      if ((*(a1 + 16))(*(a1 + 56), v27, &v38, 4) == 4)
      {
        v29 = 0;
        v30 = *(a1 + 64);
        do
        {
          v31 = a2;
          *(&v39 + v29) = a2;
          a2 >>= 8;
          ++v29;
        }

        while (v29 != 4);
        if (v31 >= 0x100)
        {
          v39 = -1;
        }

        if ((*(a1 + 16))(*(a1 + 56), v30, &v39, 4) == 4)
        {
          v32 = 0;
        }

        else
        {
          v32 = -1;
        }
      }

      else
      {
LABEL_58:
        v32 = -1;
      }

      if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), v22, 0))
      {
        v6 = 0xFFFFFFFFLL;
      }

      else
      {
        v6 = v32;
      }
    }
  }

  ++*(a1 + 16720);
  *(a1 + 88) = 0;
  return v6;
}

uint64_t amai_zipClose(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = a2;
  if (*(a1 + 88) != 1)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

LABEL_8:
    v6 = strlen(v2);
    goto LABEL_9;
  }

  v4 = amai_zipCloseFileInZipRaw(a1, 0, 0);
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_7:
  v2 = *(a1 + 16728);
  if (v2)
  {
    goto LABEL_8;
  }

  v6 = 0;
LABEL_9:
  v7 = (*(a1 + 24))(*(a1 + 56), *(a1 + 64));
  if (!v4)
  {
    v9 = *(a1 + 72);
    if (v9)
    {
      v8 = 0;
      v4 = 0;
      do
      {
        v10 = v9[2];
        if (v4)
        {
          v4 = -1;
        }

        else if (v10)
        {
          v11 = (*(a1 + 16))(*(a1 + 56), *(a1 + 64), v9 + 4);
          v10 = v9[2];
          if (v11 == v10)
          {
            v4 = 0;
          }

          else
          {
            v4 = -1;
          }
        }

        else
        {
          v4 = 0;
        }

        v8 += v10;
        v9 = *v9;
      }

      while (v9);
      goto LABEL_21;
    }

    v4 = 0;
  }

  v8 = 0;
LABEL_21:
  v12 = *(a1 + 72);
  if (v12)
  {
    do
    {
      v13 = *v12;
      free(v12);
      v12 = v13;
    }

    while (v13);
  }

  if (!v4)
  {
    v31 = 101010256;
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), &v31, 4) != 4)
    {
      goto LABEL_53;
    }

    LOWORD(v31) = 0;
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    LOWORD(v31) = 0;
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    v14 = *(a1 + 64);
    v15 = *(a1 + 16720);
    LOWORD(v31) = v15;
    if (v15 >= 0x10000)
    {
      LOWORD(v31) = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v14, &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    v16 = *(a1 + 64);
    v17 = *(a1 + 16720);
    LOWORD(v31) = v17;
    if (v17 >= 0x10000)
    {
      LOWORD(v31) = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v16, &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    v18 = 0;
    v19 = *(a1 + 64);
    do
    {
      v20 = v8;
      *(&v31 + v18) = v8;
      v8 >>= 8;
      ++v18;
    }

    while (v18 != 4);
    if (v20 >= 0x100)
    {
      v31 = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v19, &v31, 4) != 4)
    {
      goto LABEL_53;
    }

    v21 = 0;
    v22 = *(a1 + 64);
    v23 = v7 - *(a1 + 16712);
    do
    {
      v24 = v23;
      *(&v31 + v21) = v23;
      v23 >>= 8;
      ++v21;
    }

    while (v21 != 4);
    if (v24 >= 0x100)
    {
      v31 = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v22, &v31, 4) == 4)
    {
      v25 = *(a1 + 64);
      LOWORD(v31) = v6;
      if (v6 >= 0x10000)
      {
        LOWORD(v31) = -1;
      }

      v26 = (*(a1 + 16))(*(a1 + 56), v25, &v31, 2);
      if (v26 == 2)
      {
        v4 = 0;
      }

      else
      {
        v4 = -1;
      }

      if (v26 == 2 && v6)
      {
        if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v2, v6) == v6)
        {
          v4 = 0;
        }

        else
        {
          v4 = -1;
        }
      }
    }

    else
    {
LABEL_53:
      v4 = -1;
    }
  }

  v27 = (*(a1 + 40))(*(a1 + 56), *(a1 + 64));
  if (v4)
  {
    v28 = v4;
  }

  else
  {
    v28 = -1;
  }

  if (v27)
  {
    v5 = v28;
  }

  else
  {
    v5 = v4;
  }

  v29 = *(a1 + 16728);
  if (v29)
  {
    free(v29);
  }

  free(a1);
  return v5;
}

char *init_keys(char *result, void *a2, uint64_t a3)
{
  *a2 = xmmword_2985615B0;
  a2[2] = 878082192;
  v3 = *result;
  if (*result)
  {
    v6 = result + 1;
    do
    {
      result = update_keys(a2, a3, v3);
      v7 = *v6++;
      v3 = v7;
    }

    while (v7);
  }

  return result;
}

uint64_t update_keys(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8 * (*a1 ^ a3)) ^ (*a1 >> 8);
  v4 = 134775813 * (a1[1] + v3) + 1;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = *(a2 + 8 * (a1[2] ^ BYTE3(v4))) ^ (a1[2] >> 8);
  return a3;
}

uint64_t SinopeRestoreHost::create@<X0>(SinopeRestoreHost *this@<X0>, const __CFString *a2@<X1>, ACFURestoreHost **a3@<X8>)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 3, "%s::%s: BasebandUpdater Version: %s\n", "SinopeRestoreHost", "create", "AppleBasebandServices-1397");
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v7 = operator new(0xE8uLL);
  ACFURestoreHost::ACFURestoreHost(v7);
  *v7 = &unk_2A1EE8700;
  *a3 = v7;
  result = SinopeRestoreHost::init(v7, this, a2);
  if ((result & 1) == 0)
  {
    *a3 = 0;
    v9 = *(*v7 + 24);

    return v9(v7);
  }

  return result;
}

void sub_2984BB9B0(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v2 + 24))(v2);
  _Unwind_Resume(a1);
}

const __CFDictionary *SinopeRestoreHost::createRequest(const void ***a1, CFDictionaryRef **a2, uint64_t a3)
{
  if (*(a3 + 17))
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: security mode demotion disallowed for Baseband\n", "SinopeRestoreHost", "createRequest");
    return 0;
  }

  else
  {
    v5 = a2[1];
    v29 = *a2;
    v30 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = ACFURestoreHost::createRequest(a1, &v29, a3);
    v7 = v30;
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if (!v6)
    {
      v27 = ACFULogging::getLogInstance(v7);
      ACFULogging::handleMessage(v27, 2, "%s::%s: failed to create output request dictionary\n", "SinopeRestoreHost", "createRequest");
      return v6;
    }

    Value = CFDictionaryGetValue(v6, @"BbFactoryDebugEnable");
    if (Value)
    {
      v9 = Value;
      v10 = CFGetTypeID(Value);
      if (v10 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(v9))
        {
          CFDictionarySetValue(v6, @"Cellular1,BbFactoryDebugEnable", *MEMORY[0x29EDB8F00]);
        }
      }
    }

    CFDictionaryRemoveValue(v6, @"BbFactoryDebugEnable");
    if (*(a3 + 16) == 1)
    {
      v12 = ACFULogging::getLogInstance(v11);
      ACFULogging::handleMessage(v12, 0, "%s::%s: reset epro to false for all firmware file tags\n", "SinopeRestoreHost", "createRequest");
      v13 = a1[17];
      if (v13 != a1[18])
      {
        v14 = *MEMORY[0x29EDB8EF8];
        while (1)
        {
          v15 = CFDictionaryGetValue(v6, *v13);
          memset(__p, 170, sizeof(__p));
          ACFUCommon::stringFromCFString(__p, *v13);
          if (!v15)
          {
            break;
          }

          v17 = CFGetTypeID(v15);
          TypeID = CFDictionaryGetTypeID();
          if (v17 == TypeID)
          {
            CFDictionarySetValue(v15, @"EPRO", v14);
LABEL_20:
            v21 = 0;
            v22 = 1;
            goto LABEL_21;
          }

          v23 = ACFULogging::getLogInstance(TypeID);
          v24 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v24 = __p[0];
          }

          ACFULogging::handleMessage(v23, 2, "%s::%s: invalid type for %s\n", "SinopeRestoreHost", "createRequest", v24);
          v22 = 0;
          v21 = 1;
LABEL_21:
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          if ((v22 & 1) == 0)
          {
            if (v21)
            {
              CFRelease(v6);
              return 0;
            }

            return v6;
          }

          v13 += 2;
          if (v13 == a1[18])
          {
            return v6;
          }
        }

        v19 = ACFULogging::getLogInstance(v16);
        v20 = __p;
        if (SHIBYTE(__p[2]) < 0)
        {
          v20 = __p[0];
        }

        ACFULogging::handleMessage(v19, 3, "%s::%s: Tag %s doesn't exist -- continue...\n", "SinopeRestoreHost", "createRequest", v20);
        goto LABEL_20;
      }
    }
  }

  return v6;
}

void sub_2984BBCA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void SinopeRestoreHost::modifyRequestForNonPersistentDemotion(const void ***this, __CFDictionary *a2)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Modifying request for non-persistent demotion\n", "SinopeRestoreHost", "modifyRequestForNonPersistentDemotion");
  CFDictionarySetValue(a2, @"Cellular1,SocLiveNonce", *MEMORY[0x29EDB8F00]);
  v5 = this[17];
  if (v5 == this[18])
  {
    return;
  }

  v6 = *MEMORY[0x29EDB8EF8];
  while (1)
  {
    Value = CFDictionaryGetValue(a2, *v5);
    memset(__p, 170, sizeof(__p));
    ACFUCommon::stringFromCFString(__p, *v5);
    if (!Value)
    {
      v11 = ACFULogging::getLogInstance(v8);
      if (SHIBYTE(__p[2]) >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      ACFULogging::handleMessage(v11, 3, "%s::%s: Tag %s doesn't exist -- continue...\n", "SinopeRestoreHost", "modifyRequestForNonPersistentDemotion", v12);
      goto LABEL_10;
    }

    v9 = CFGetTypeID(Value);
    TypeID = CFDictionaryGetTypeID();
    if (v9 != TypeID)
    {
      break;
    }

    CFDictionarySetValue(Value, @"Trusted", v6);
LABEL_10:
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v5 += 2;
    if (v5 == this[18])
    {
      return;
    }
  }

  v13 = ACFULogging::getLogInstance(TypeID);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  ACFULogging::handleMessage(v13, 2, "%s::%s: invalid type for %s\n", "SinopeRestoreHost", "modifyRequestForNonPersistentDemotion", v14);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2984BBE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SinopeRestoreHost::~SinopeRestoreHost(SinopeRestoreHost *this)
{
  ACFURestoreHost::~ACFURestoreHost(this);

  operator delete(v1);
}

uint64_t SinopeRestoreHost::init(SinopeRestoreHost *this, const __CFDictionary *a2, const __CFString *a3)
{
  v52 = *MEMORY[0x29EDCA608];
  v45 = xmmword_29EE9B8B0;
  v46 = *&off_29EE9B8C0;
  *&v47 = @"BbFactoryDebugEnable";
  v41 = xmmword_29EE9B870;
  v42 = *&off_29EE9B880;
  v43 = xmmword_29EE9B890;
  v44 = *&off_29EE9B8A0;
  *__src = xmmword_29EE9B850;
  *&__src[16] = *&off_29EE9B860;
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(this + 5, __src, &v47 + 8, 0x11uLL);
  v45 = xmmword_29EE9B938;
  v46 = *&off_29EE9B948;
  v47 = xmmword_29EE9B958;
  *&v48 = @"Cellular1,BbFactoryActivationManifestKeyHash";
  v41 = xmmword_29EE9B8F8;
  v42 = *&off_29EE9B908;
  v43 = xmmword_29EE9B918;
  v44 = *&off_29EE9B928;
  *__src = xmmword_29EE9B8D8;
  *&__src[16] = *&off_29EE9B8E8;
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(this + 8, __src, &v48 + 8, 0x13uLL);
  *__src = @"@Cellular1,Ticket";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(this + 11, __src, &__src[8], 1uLL);
  *__src = @"Cellular1,Ticket";
  std::vector<__CFString const*>::__assign_with_size[abi:ne200100]<__CFString const* const*,__CFString const* const*>(this + 14, __src, &__src[8], 1uLL);
  v47 = xmmword_29EE9B9F0;
  v48 = *&off_29EE9BA00;
  v49 = xmmword_29EE9BA10;
  v50 = *&off_29EE9BA20;
  v43 = xmmword_29EE9B9B0;
  v44 = *&off_29EE9B9C0;
  v45 = xmmword_29EE9B9D0;
  v46 = *&off_29EE9B9E0;
  *__src = xmmword_29EE9B970;
  *&__src[16] = *&off_29EE9B980;
  v41 = xmmword_29EE9B990;
  v42 = *&off_29EE9B9A0;
  std::vector<ACFURestoreHost::FileList>::__assign_with_size[abi:ne200100]<ACFURestoreHost::FileList const*,ACFURestoreHost::FileList const*>(this + 17, __src, v51, 0xCuLL);
  TypeID = CFNumberGetTypeID();
  *__src = @"Cellular1,ChipID";
  *&__src[8] = TypeID;
  v6 = CFNumberGetTypeID();
  *&__src[16] = @"Cellular1,BoardID";
  *&__src[24] = v6;
  v7 = CFNumberGetTypeID();
  *&v41 = @"Cellular1,SecurityDomain";
  *(&v41 + 1) = v7;
  v8 = CFBooleanGetTypeID();
  *&v42 = @"Cellular1,ProductionMode";
  *(&v42 + 1) = v8;
  v9 = CFBooleanGetTypeID();
  *&v43 = @"Cellular1,SecurityMode";
  *(&v43 + 1) = v9;
  v10 = CFBooleanGetTypeID();
  *&v44 = @"Cellular1,UID_MODE";
  *(&v44 + 1) = v10;
  v11 = CFNumberGetTypeID();
  *&v45 = @"Cellular1,ECID";
  *(&v45 + 1) = v11;
  v12 = CFDataGetTypeID();
  *&v46 = @"Cellular1,Nonce";
  *(&v46 + 1) = v12;
  v13 = CFBooleanGetTypeID();
  *&v47 = @"Cellular1,BbFactoryDebugEnable";
  *(&v47 + 1) = v13;
  v14 = CFBooleanGetTypeID();
  *&v48 = @"Cellular1,BbFATPCalibrationEnable";
  *(&v48 + 1) = v14;
  v15 = CFBooleanGetTypeID();
  *&v49 = @"Cellular1,BbCalibrationEnable";
  *(&v49 + 1) = v15;
  v16 = CFBooleanGetTypeID();
  *&v50 = @"Cellular1,BbProvisioningEnable";
  *(&v50 + 1) = v16;
  v17 = CFBooleanGetTypeID();
  v51[0] = @"Cellular1,BbActivationBypassEnable";
  v51[1] = v17;
  v18 = CFBooleanGetTypeID();
  v51[2] = @"Cellular1,FDRAllowUnsealed";
  v51[3] = v18;
  v19 = CFDataGetTypeID();
  v51[4] = @"Cellular1,BbFDRSecurityKeyHash";
  v51[5] = v19;
  v20 = CFDataGetTypeID();
  v51[6] = @"Cellular1,BbProvisioningManifestKeyHash";
  v51[7] = v20;
  v21 = CFDataGetTypeID();
  v51[8] = @"Cellular1,BbActivationManifestKeyHash";
  v51[9] = v21;
  v22 = CFBooleanGetTypeID();
  v51[10] = @"Cellular1,HardwareConfigLockOverride";
  v51[11] = v22;
  v23 = CFDataGetTypeID();
  v51[12] = @"Cellular1,BbFactoryActivationManifestKeyHash";
  v51[13] = v23;
  v24 = CFBooleanGetTypeID();
  v51[14] = @"BbFactoryDebugEnable";
  v51[15] = v24;
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__assign_unique<std::pair<__CFString const* const,unsigned long> const*>(this + 20, __src, &v52);
  *(this + 23) = @"Cellular1,BbFDRSecurityKeyHash";
  memset(__src, 170, 24);
  GetBasebandTatsuTagToFileNameMap(__src);
  v25 = *__src;
  if (*__src != &__src[8])
  {
    v26 = (this + 208);
    do
    {
      v27 = CFStringCompare(v25[4], @"Cellular1,LLB", 0) == kCFCompareEqualTo;
      v28 = v25[4];
      v29 = *v26;
      v30 = (this + 208);
      v31 = (this + 208);
      if (*v26)
      {
        while (1)
        {
          while (1)
          {
            v31 = v29;
            v32 = v29[4];
            if (v32 <= v28)
            {
              break;
            }

            v29 = *v31;
            v30 = v31;
            if (!*v31)
            {
              goto LABEL_10;
            }
          }

          if (v32 >= v28)
          {
            break;
          }

          v29 = v31[1];
          if (!v29)
          {
            v30 = v31 + 1;
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        v33 = operator new(0x30uLL);
        v33[4] = v28;
        *(v33 + 20) = v27;
        std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(this + 25, v31, v30, v33);
      }

      v34 = v25[1];
      if (v34)
      {
        do
        {
          v35 = v34;
          v34 = v34->isa;
        }

        while (v34);
      }

      else
      {
        do
        {
          v35 = v25[2];
          v36 = *v35 == v25;
          v25 = v35;
        }

        while (!v36);
      }

      v25 = v35;
    }

    while (v35 != &__src[8]);
  }

  *(this + 28) = @"Baseband";
  v37 = ACFURestoreHost::init(this, a2, a3);
  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(__src, *&__src[8]);
  return v37;
}

const void *SinopeRestoreHost::copyFirmwareUpdater(uint64_t a1, const __CFDictionary *a2, int a3)
{
  memset(&v49, 170, sizeof(v49));
  GetBasebandTatsuTagToFileNameMap(&v47);
  v6 = std::map<__CFString const*,std::string>::at(&v47, kBasebandRTKitOS);
  if (*(v6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, *v6, v6[1]);
  }

  else
  {
    v7 = *v6;
    v49.__r_.__value_.__r.__words[2] = v6[2];
    *&v49.__r_.__value_.__l.__data_ = v7;
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(&v47, *(&v47 + 1));
  v8 = CFDictionaryContainsKey(a2, *(a1 + 8));
  if (v8)
  {
    v9 = ACFURestoreHost::copyDataFromFileDictionary(*(a1 + 8), a2, a3);
    v10 = v9;
    if (!v9 || (v11 = CFGetTypeID(v9), v11 != CFDataGetTypeID()))
    {
      std::string::basic_string[abi:ne200100]<0>(v45, "copyFirmware: rooted override data unavailable");
      v12 = ACFUError::addError(a1 + 24, v45, 0x3E8uLL, 0);
      if (v46 < 0)
      {
        operator delete(v45[0]);
      }

      LogInstance = ACFULogging::getLogInstance(v12);
      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: rooted override data unavailable\n", "SinopeRestoreHost", "copyFirmwareUpdater");
      goto LABEL_41;
    }

LABEL_12:
    ACFUFTABFile::create(v10, 0, 0xFFFF, &v47);
    v17 = v47;
    if (v47)
    {
      if ((*(*v47 + 16))(v47, &v49))
      {
        v18 = (*(*v17 + 40))(v17);
        if (v18 && (TypeID = CFDataGetTypeID(), v20 = CFGetTypeID(v18), TypeID == v20))
        {
          v21 = ACFULogging::getLogInstance(v20);
          std::string::basic_string[abi:ne200100]<0>(&v35, "SinopeRestoreHost");
          v22 = std::string::append(&v35, "::");
          v23 = *&v22->__r_.__value_.__l.__data_;
          v36.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
          *&v36.__r_.__value_.__l.__data_ = v23;
          v22->__r_.__value_.__l.__size_ = 0;
          v22->__r_.__value_.__r.__words[2] = 0;
          v22->__r_.__value_.__r.__words[0] = 0;
          v24 = std::string::append(&v36, "copyFirmwareUpdater");
          v25 = *&v24->__r_.__value_.__l.__data_;
          v48 = v24->__r_.__value_.__r.__words[2];
          v47 = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          ACFULogging::handleMessageCFType(v21, &v47, 3, "outData", v18);
          if (SHIBYTE(v48) < 0)
          {
            operator delete(v47);
          }

          if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v36.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v35.__r_.__value_.__l.__data_);
          }

          (*(*v17 + 24))(v17);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "copyFirmware: could not create output data");
          v27 = ACFUError::addError(a1 + 24, __p, 0x3E8uLL, 0);
          if (v38 < 0)
          {
            operator delete(__p[0]);
          }

          v28 = ACFULogging::getLogInstance(v27);
          ACFULogging::handleMessage(v28, 2, "%s::%s: could not create output data\n", "SinopeRestoreHost", "copyFirmwareUpdater");
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v39, "copyFirmware: bundle firmware specified is invalid");
        v31 = ACFUError::addError(a1 + 24, v39, 0x3E8uLL, 0);
        if (v40 < 0)
        {
          operator delete(v39[0]);
        }

        v32 = ACFULogging::getLogInstance(v31);
        ACFULogging::handleMessage(v32, 2, "%s::%s: bundle firmware specified is invalid\n", "SinopeRestoreHost", "copyFirmwareUpdater");
        v18 = 0;
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v41, "copyFirmware: failed to init firmware");
      v29 = ACFUError::addError(a1 + 24, v41, 0xFA0uLL, 0);
      if (v42 < 0)
      {
        operator delete(v41[0]);
      }

      v30 = ACFULogging::getLogInstance(v29);
      v17 = 0;
      ACFULogging::handleMessage(v30, 2, "%s::%s: failed to init firmware\n", "SinopeRestoreHost", "copyFirmwareUpdater");
      v18 = 0;
    }

    goto LABEL_23;
  }

  v14 = ACFULogging::getLogInstance(v8);
  ACFULogging::handleMessage(v14, 0, "%s::%s: no firmware override specified\n", "SinopeRestoreHost", "copyFirmwareUpdater");
  v15 = ACFURestoreHost::copyDataFromFileDictionary(@"Cellular1,RTKitOS", a2, a3);
  v10 = v15;
  if (v15)
  {
    v16 = CFGetTypeID(v15);
    if (v16 == CFDataGetTypeID())
    {
      goto LABEL_12;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v43, "copyFirmware: rtkitos bundle data unavailable");
  v33 = ACFUError::addError(a1 + 24, v43, 0x3E8uLL, 0);
  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  v34 = ACFULogging::getLogInstance(v33);
  ACFULogging::handleMessage(v34, 2, "%s::%s: rtkitos bundle data unavailable\n", "SinopeRestoreHost", "copyFirmwareUpdater");
LABEL_41:
  v18 = 0;
  v17 = 0;
  if (v10)
  {
LABEL_23:
    CFRelease(v10);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (v17)
  {
    (*(*v17 + 56))(v17);
  }

  return v18;
}

void sub_2984BC8AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (*(v47 - 73) < 0)
  {
    operator delete(*(v47 - 96));
  }

  _Unwind_Resume(exception_object);
}

void *std::map<__CFString const*,std::string>::at(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2[4];
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE99680, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *std::vector<__CFString const*>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 8 * v4;
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(8 * a2);
}

void *std::vector<ACFURestoreHost::FileList>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFURestoreHost::FileList>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 16 * v4;
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<ACFURestoreHost::FileList>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(16 * a2);
}

uint64_t *std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__node_assign_unique(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  v6 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        if (v6 >= v8)
        {
          break;
        }

        v5 = *v7;
        v4 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= v6)
      {
        return v7;
      }

      v5 = v7[1];
      if (!v5)
      {
        v4 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = (a1 + 8);
LABEL_9:
    v9 = a2[1];
    a3[4] = v6;
    a3[5] = v9;
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v7, v4, a3);
  }

  return a3;
}

uint64_t *std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void *std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t *a1)
{
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(*a1, a1[2]);
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      a1[1] = v2;
    }

    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE99688, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

void std::vector<char *>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v12 = operator new(8 * v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * (v8 >> 3)];
    *v13 = a2;
    v6 = v13 + 8;
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = v6;
    *(a1 + 16) = &v12[8 * v11];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

const __CFDictionary *ParseUpdaterDebugArgs(const __CFDictionary *result, uint64_t a2)
{
  v44 = *MEMORY[0x29EDCA608];
  if (result)
  {
    result = CFDictionaryGetValue(result, @"Options");
    if (result)
    {
      v3 = result;
      v35[0] = 0xAAAAAAAAAAAAAAAALL;
      v35[1] = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(v35, result);
      Bool = ctu::cf::map_adapter::getBool(v35, @"RestoreInternal");
      value = 0;
      if (CFDictionaryGetValueIfPresent(v3, @"DebugArgs", &value))
      {
        v5 = CFGetTypeID(value);
        if (v5 == CFStringGetTypeID())
        {
          memset(&__p, 170, sizeof(__p));
          memset(__b, 170, sizeof(__b));
          CFStringGetCString(value, __b, 1024, 0x8000100u);
          std::string::basic_string[abi:ne200100]<0>(&__p, __b);
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            std::string::operator=((a2 + 40), &__p);
            *&v40[1] = 0;
            v41 = 0;
            v42 = 0;
            std::operator+<char>();
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            __p = *__b;
            if (__b[23] >= 0)
            {
              v8 = HIBYTE(*&__b[16]);
            }

            else
            {
              v8 = *&__b[8];
            }

            if (v8)
            {
              v9 = 0;
              v10 = MEMORY[0x29EDCA600];
              do
              {
                while (1)
                {
                  v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                  v12 = v11->__r_.__value_.__s.__data_[v9];
                  v13 = (v12 & 0x80000000) != 0 ? __maskrune(v12, 0x4000uLL) : *(v10 + 4 * v12 + 60) & 0x4000;
                  v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                  if (v9 >= v8 || !v13)
                  {
                    break;
                  }

                  v14->__r_.__value_.__s.__data_[v9++] = 0;
                }

                std::vector<char *>::push_back[abi:ne200100](&v40[1], v14 + v9);
                v15 = v9 + 1;
                do
                {
                  v16 = v15;
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    p_p = &__p;
                  }

                  else
                  {
                    p_p = __p.__r_.__value_.__r.__words[0];
                  }

                  v18 = p_p->__r_.__value_.__s.__data_[v16];
                  if ((v18 & 0x80000000) != 0)
                  {
                    v19 = __maskrune(v18, 0x4000uLL);
                  }

                  else
                  {
                    v19 = *(v10 + 4 * v18 + 60) & 0x4000;
                  }

                  v15 = v16 + 1;
                }

                while (v16 < v8 && !v19);
                v9 = v16;
              }

              while (v16 < v8);
            }

            std::vector<char *>::push_back[abi:ne200100](&v40[1], 0);
            v20 = MEMORY[0x29EDCA660];
            v21 = MEMORY[0x29EDCA650];
            *MEMORY[0x29EDCA658] = 1;
            *v20 = 1;
            while (1)
            {
              v22 = *&v40[1];
              v23 = getopt_long(((v41 - *&v40[1]) >> 3) - 1, *&v40[1], "dmfl:tnp:iuseb:o:", &ParseDebugArgs(std::string &,UpdaterDebugArgs &,BOOL)::long_options, 0);
              switch(v23)
              {
                case 'b':
                  if (!Bool)
                  {
                    continue;
                  }

                  std::string::basic_string[abi:ne200100]<0>(&v38[1], *v21);
                  v24 = v40[0];
                  if ((v40[0] & 0x8000000000000000) != 0)
                  {
                    v25 = *&v38[1];
                    v26 = v39;
                    if (strncasecmp("ROM", *&v38[1], v39))
                    {
                      goto LABEL_70;
                    }

                    *(a2 + 64) = 0;
LABEL_85:
                    operator delete(v25);
                  }

                  else
                  {
                    v25 = &v38[1];
                    v26 = v40[0];
                    if (!strncasecmp("ROM", &v38[1], v40[0]))
                    {
                      *(a2 + 64) = 0;
                    }

                    else
                    {
LABEL_70:
                      if (!strncasecmp("PL", v25, v26))
                      {
                        v31 = 1;
                      }

                      else
                      {
                        v31 = 2;
                      }

                      *(a2 + 64) = v31;
                      if (v24 < 0)
                      {
                        v25 = *&v38[1];
                        goto LABEL_85;
                      }
                    }
                  }

                  continue;
                case 'c':
                case 'g':
                case 'h':
                case 'j':
                case 'k':
                case 'q':
                case 'r':
                  continue;
                case 'd':
                  *(a2 + 35) = 1;
                  continue;
                case 'e':
                  *(a2 + 37) = 1;
                  continue;
                case 'f':
                  if (Bool)
                  {
                    *(a2 + 8) = 1;
                  }

                  continue;
                case 'i':
                  if (Bool)
                  {
                    *(a2 + 32) = 1;
                  }

                  continue;
                case 'l':
                  *(a2 + 4) = atoi(*v21);
                  continue;
                case 'm':
                  *(a2 + 36) = 1;
                  continue;
                case 'n':
                  if (Bool)
                  {
                    *(a2 + 9) = 1;
                  }

                  continue;
                case 'o':
                  if (!Bool)
                  {
                    continue;
                  }

                  std::string::basic_string[abi:ne200100]<0>(v36, *v21);
                  v29 = v38[0];
                  if ((v38[0] & 0x8000000000000000) != 0)
                  {
                    v25 = *v36;
                    v30 = v37;
                    if (!strncasecmp("UART", *v36, v37))
                    {
                      *(a2 + 65) = 0;
                      goto LABEL_85;
                    }

LABEL_76:
                    if (!strncasecmp("PCIE", v25, v30))
                    {
                      v32 = 1;
                    }

                    else
                    {
                      v32 = 2;
                    }

                    *(a2 + 65) = v32;
                    if (v29 < 0)
                    {
                      v25 = *v36;
                      goto LABEL_85;
                    }
                  }

                  else
                  {
                    v25 = v36;
                    v30 = v38[0];
                    if (strncasecmp("UART", v36, v38[0]))
                    {
                      goto LABEL_76;
                    }

                    *(a2 + 65) = 0;
                  }

                  continue;
                case 'p':
                  if (!Bool)
                  {
                    continue;
                  }

                  std::string::basic_string[abi:ne200100]<0>(__b, *v21);
                  v27 = std::stol(__b, 0, 10);
                  v28 = v27;
                  if ((__b[23] & 0x80000000) != 0)
                  {
                    operator delete(*__b);
                    if ((v28 & 0x8000000000000000) == 0)
                    {
LABEL_82:
                      *(a2 + 16) = v28;
                      *(a2 + 24) = 1;
                    }
                  }

                  else if ((v27 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_82;
                  }

                  break;
                case 's':
                  if (Bool)
                  {
                    *(a2 + 34) = 1;
                  }

                  continue;
                case 't':
                  if (Bool)
                  {
                    *a2 = 1;
                  }

                  continue;
                case 'u':
                  if (Bool)
                  {
                    *(a2 + 33) = 1;
                  }

                  continue;
                default:
                  if (v23 != -1)
                  {
                    continue;
                  }

                  if (v22)
                  {
                    operator delete(v22);
                  }

                  v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                  goto LABEL_89;
              }
            }
          }

LABEL_89:
          if (v7 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      return MEMORY[0x29C28BA90](v35);
    }
  }

  return result;
}

void GetBasebandTatsuTagToFileNameMap(void *a1@<X8>)
{
  v15[3] = *MEMORY[0x29EDCA608];
  memset(a1, 170, 24);
  v3 = @"Cellular1,LLB";
  std::string::basic_string[abi:ne200100]<0>(v4, "illb");
  v4[3] = @"Cellular1,iBSS";
  std::string::basic_string[abi:ne200100]<0>(v5, "ibss");
  v5[3] = @"Cellular1,PMUFW";
  std::string::basic_string[abi:ne200100]<0>(v6, "apmu");
  v6[3] = @"Cellular1,PMUFW2";
  std::string::basic_string[abi:ne200100]<0>(v7, "pmfw");
  v7[3] = @"Cellular1,iBootData";
  std::string::basic_string[abi:ne200100]<0>(v8, "ibdt");
  v8[3] = @"Cellular1,RTKitOS";
  std::string::basic_string[abi:ne200100]<0>(v9, "rkos");
  v9[3] = @"Cellular1,CdpAscDl";
  std::string::basic_string[abi:ne200100]<0>(v10, "cdpd");
  v10[3] = @"Cellular1,CdpAscUl";
  std::string::basic_string[abi:ne200100]<0>(v11, "cdpu");
  v11[3] = @"Cellular1,CdpHost";
  std::string::basic_string[abi:ne200100]<0>(v12, "cdph");
  v12[3] = @"Cellular1,L1CL1S";
  std::string::basic_string[abi:ne200100]<0>(v13, "l1cs");
  v13[3] = @"Cellular1,ProvisioningFirmware";
  std::string::basic_string[abi:ne200100]<0>(v14, "prfw");
  v14[3] = @"Cellular1,Recipe";
  std::string::basic_string[abi:ne200100]<0>(v15, "rcpi");
  std::map<__CFString const*,std::string>::map[abi:ne200100](a1, &v3, 12);
  v2 = 48;
  do
  {
    if (*(&v4[v2 - 1] - 1) < 0)
    {
      operator delete(v4[v2 - 4]);
    }

    v2 -= 4;
  }

  while (v2 * 8);
}

void sub_2984BD9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = v10 + 360;
  v13 = -384;
  while (1)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    v12 -= 32;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t ***std::map<__CFString const*,std::string>::map[abi:ne200100](uint64_t ***a1, unint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t SinopeUpdaterGetTags(ACFULogging *a1, void (*a2)(void *, const char *), void *a3, CFErrorRef *a4)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
  if (inited)
  {
    v14 = inited;
    v15 = ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage(v15, 2, "%s::%s: failed to init logging\n", "SinopeRestoreInfo", "SinopeUpdaterGetTags");
    v16 = *MEMORY[0x29EDB8ED8];
    v17 = v14;
LABEL_9:
    v12 = 0;
    *a4 = CFErrorCreate(v16, @"SinopeRestoreInfo", v17, 0);
    return v12;
  }

  v10 = SinopeRestoreHost::create(a1, @"SinopeRestoreInfo", &v20);
  v11 = v20;
  if (!v20)
  {
    v18 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v18, 2, "%s::%s: failed to create host object\n", "SinopeRestoreInfo", "SinopeUpdaterGetTags");
    v16 = *MEMORY[0x29EDB8ED8];
    v17 = 4000;
    goto LABEL_9;
  }

  v12 = (**v20)(v20);
  if (!v12)
  {
    v19 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v19, 2, "%s::%s: failed to get tags\n", "SinopeRestoreInfo", "SinopeUpdaterGetTags");
    *a4 = ACFURestoreHost::getError(v11);
  }

  (*(*v11 + 24))(v11);
  return v12;
}

const __CFData *SinopeUpdaterCopyFirmware(ACFULogging *a1, void (*a2)(void *, const char *), void *a3, CFErrorRef *a4)
{
  v7 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  inited = ACFULogging::initLog(LogInstance, v7, a2, a3);
  if (inited)
  {
    v23 = inited;
    v24 = ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage(v24, 2, "%s::%s: failed to init logging\n", "SinopeRestoreInfo", "SinopeUpdaterCopyFirmware");
    v21 = 0;
    *a4 = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"SinopeRestoreInfo", v23, 0);
    return v21;
  }

  v10 = *MEMORY[0x29EDB8ED8];
  v11 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@.%@", @"DeviceInfo", @"ACFUFirmware");
  if (!v11)
  {
    v25 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v25, 2, "%s::%s: failed to create Baseband Firmware override key path (read)\n", "SinopeRestoreInfo", "SinopeUpdaterCopyFirmware");
    return 0;
  }

  v12 = v11;
  ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
  if (!ValueForKeyPathInDict)
  {
    v17 = 0;
    goto LABEL_9;
  }

  TypeID = CFStringGetTypeID();
  v15 = CFGetTypeID(ValueForKeyPathInDict);
  if (TypeID != v15)
  {
    v29 = ACFULogging::getLogInstance(v15);
    CFGetTypeID(ValueForKeyPathInDict);
    ACFULogging::handleMessage(v29, 2, "%s::%s: Baseband Firmware override has wrong type %lu\n");
LABEL_26:
    v20 = 0;
    v21 = 0;
    ValueForKeyPathInDict = 0;
    goto LABEL_13;
  }

  v16 = CFStringCreateWithFormat(v10, 0, @"%@.%@", @"Options", @"ACFUFirmware");
  if (!v16)
  {
    v30 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v30, 2, "%s::%s: failed to create Baseband Firmware override key path (write)\n");
    goto LABEL_26;
  }

  v17 = v16;
  v18 = AMSupportCopySetValueForKeyPathInDict();
  ValueForKeyPathInDict = v18;
  if (!v18)
  {
    v31 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v31, 2, "%s::%s: failed to copy options\n", "SinopeRestoreInfo", "SinopeUpdaterCopyFirmware");
    v21 = 0;
    v20 = 0;
    goto LABEL_12;
  }

  v7 = v18;
LABEL_9:
  v19 = SinopeRestoreHost::create(v7, @"SinopeRestoreInfo", &v32);
  v20 = v32;
  if (!v32)
  {
    v26 = ACFULogging::getLogInstance(v19);
    ACFULogging::handleMessage(v26, 2, "%s::%s: failed to create host object\n", "SinopeRestoreInfo", "SinopeUpdaterCopyFirmware");
    Error = CFErrorCreate(v10, @"SinopeRestoreInfo", 4000, 0);
    goto LABEL_22;
  }

  v21 = ACFURestoreHost::copyFirmware(v32);
  if (!v21)
  {
    v28 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v28, 2, "%s::%s: failed to copy firmware\n", "SinopeRestoreInfo", "SinopeUpdaterCopyFirmware");
    Error = ACFURestoreHost::getError(v20);
LABEL_22:
    v21 = 0;
    *a4 = Error;
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v17)
  {
LABEL_12:
    CFRelease(v17);
  }

LABEL_13:
  CFRelease(v12);
  if (ValueForKeyPathInDict)
  {
    CFRelease(ValueForKeyPathInDict);
  }

  if (v20)
  {
    (*(*v20 + 24))(v20);
  }

  return v21;
}

__CFDictionary *SinopeUpdaterCreateRequest(const __CFDictionary *a1, void (*a2)(void *, const char *), void *a3, CFErrorRef *a4)
{
  v65[0] = 0xAAAAAAAAAAAAAAAALL;
  v65[1] = 0xAAAAAAAAAAAAAAAALL;
  ACFUError::ACFUError(v65, @"SinopeRestoreInfo");
  v63 = 0;
  v64 = 0;
  v62 = 0xAAAAAAAAAAAA0000;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v56 = v8;
  v57 = v8;
  LOBYTE(v56) = 0;
  DWORD1(v56) = 0;
  WORD4(v56) = 0;
  LOBYTE(v57) = 0;
  BYTE8(v57) = 0;
  v60 = 0xAAAAAAAAAAAA0202;
  __p[1] = 0;
  v59 = 0uLL;
  __p[0] = 0xAAAA000000000000;
  v61[0] = @"Cellular1,ProductionMode";
  v61[1] = @"Cellular1,SecurityMode";
  LogInstance = ACFULogging::getLogInstance(v9);
  inited = ACFULogging::initLog(LogInstance, a1, a2, a3);
  if (inited)
  {
    v37 = ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage(v37, 2, "%s::%s: failed to init logging\n");
LABEL_38:
    v25 = 0;
LABEL_42:
    Copy = 0;
    goto LABEL_12;
  }

  if (!a4)
  {
    v38 = ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage(v38, 2, "%s::%s: null error parameter\n");
    goto LABEL_38;
  }

  v12 = ParseUpdaterDebugArgs(a1, &v56);
  if ((BYTE3(__p[0]) & 1) != 0 || BYTE4(__p[0]) == 1)
  {
    LOBYTE(v62) = 1;
  }

  v13 = ACFULogging::getLogInstance(v12);
  ACFULogging::handleMessage(v13, 0, "%s::%s: Let's check if we need to take the regular bbticket vs prov flow\n", "SinopeRestoreInfo", "SinopeUpdaterCreateRequest");
  Value = CFDictionaryGetValue(a1, @"DeviceInfo");
  v15 = Value;
  if (!Value)
  {
    v39 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v39, 2, "%s::%s: null device info\n", "SinopeRestoreInfo", "SinopeUpdaterCreateRequest");
    v23 = *MEMORY[0x29EDB8ED8];
    v40 = 4001;
LABEL_46:
    CFError = CFErrorCreate(v23, @"SinopeRestoreInfo", v40, 0);
LABEL_47:
    v25 = 0;
LABEL_35:
    Copy = 0;
    *a4 = CFError;
    goto LABEL_12;
  }

  v16 = CFGetTypeID(Value);
  TypeID = CFDictionaryGetTypeID();
  if (v16 != TypeID)
  {
    v41 = ACFULogging::getLogInstance(TypeID);
    ACFULogging::handleMessage(v41, 2, "%s::%s: incorrect device info type\n", "SinopeRestoreInfo", "SinopeUpdaterCreateRequest");
LABEL_44:
    v23 = *MEMORY[0x29EDB8ED8];
    v40 = 4002;
    goto LABEL_46;
  }

  v18 = CFDictionaryGetValue(v15, @"BasebandProvInfo");
  v19 = v18;
  if (v18)
  {
    v20 = ACFULogging::getLogInstance(v18);
    ACFULogging::handleMessage(v20, 0, "%s::%s: Prov flow\n", "SinopeRestoreInfo", "SinopeUpdaterCreateRequest");
    v21 = CFGetTypeID(v19);
    v22 = CFDictionaryGetTypeID();
    if (v21 == v22)
    {
      v23 = *MEMORY[0x29EDB8ED8];
      Copy = CFDictionaryCreateCopy(*MEMORY[0x29EDB8ED8], v15);
      if (Copy)
      {
        v25 = 0;
        goto LABEL_12;
      }

      v44 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v44, 2, "%s::%s: failed to create options cp\n", "SinopeRestoreInfo", "SinopeUpdaterCreateRequest");
      v40 = 4000;
      goto LABEL_46;
    }

    v43 = ACFULogging::getLogInstance(v22);
    ACFULogging::handleMessage(v43, 2, "%s::%s: incorrect baseband prov info type\n", "SinopeRestoreInfo", "SinopeUpdaterCreateRequest");
    goto LABEL_44;
  }

  v27 = ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage(v27, 0, "%s::%s: Regular bbticket flow\n", "SinopeRestoreInfo", "SinopeUpdaterCreateRequest");
  v28 = SinopeRestoreHost::create(a1, @"SinopeRestoreInfo", &v55);
  v25 = v55;
  if (!v55)
  {
    v45 = ACFULogging::getLogInstance(v28);
    ACFULogging::handleMessage(v45, 2, "%s::%s: failed to create host object\n", "SinopeRestoreInfo", "SinopeUpdaterCreateRequest");
    CFError = CFErrorCreate(*MEMORY[0x29EDB8ED8], @"SinopeRestoreInfo", 4000, 0);
    goto LABEL_47;
  }

  v29 = CFDictionaryGetValue(a1, @"FirmwareData");
  v30 = v29;
  if (!v29 || (v31 = CFDataGetTypeID(), v29 = CFGetTypeID(v30), v31 != v29))
  {
    v42 = ACFULogging::getLogInstance(v29);
    ACFULogging::handleMessage(v42, 0, "%s::%s: Invalid or no firmware file present in restore options\n", "SinopeRestoreInfo", "SinopeUpdaterCreateRequest");
    goto LABEL_42;
  }

  GetBasebandTatsuTagToFileNameMap(v53);
  RTKitFirmware::create(v53, v30, 0, &v55);
  std::shared_ptr<RTKitFirmware>::operator=[abi:ne200100]<RTKitFirmware,std::default_delete<RTKitFirmware>,0>(&v63, &v55);
  v32 = v55;
  v55 = 0;
  if (v32)
  {
    (*(*v32 + 56))(v32);
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(v53, v54);
  if (!v63)
  {
    v35 = ACFULogging::getLogInstance(v33);
    ACFULogging::handleMessage(v35, 2, "%s::%s: Failed to find firmware\n", "SinopeRestoreInfo", "SinopeUpdaterCreateRequest");
    std::string::basic_string[abi:ne200100]<0>(v51, "SinopeUpdaterCreateRequest: failed to open firmware");
    ACFUError::addError(v65, v51, 0x3E8uLL, 0);
    if (v52 < 0)
    {
      operator delete(v51[0]);
    }

    CFError = ACFUError::getCFError(v65);
    goto LABEL_35;
  }

  v49 = v63;
  v50 = v64;
  if (v64)
  {
    atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Copy = (*(*v25 + 8))(v25, &v49, v61);
  v34 = v50;
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (!Copy)
  {
    v46 = ACFULogging::getLogInstance(v34);
    ACFULogging::handleMessage(v46, 2, "%s::%s: failed to create request dict\n", "SinopeRestoreInfo", "SinopeUpdaterCreateRequest");
    std::string::basic_string[abi:ne200100]<0>(v47, "SinopeUpdaterCreateRequest: failed to create request dict");
    ACFUError::addError(v65, v47, 0xFA1uLL, 0);
    if (v48 < 0)
    {
      operator delete(v47[0]);
    }

    CFError = ACFURestoreHost::getError(v25);
    goto LABEL_35;
  }

  if (BYTE4(__p[0]) == 1)
  {
    SinopeRestoreHost::modifyRequestForNonPersistentDemotion(v25, Copy);
  }

LABEL_12:
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  if (v25)
  {
    (*(*v25 + 24))(v25);
  }

  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  ACFUError::~ACFUError(v65);
  return Copy;
}

void sub_2984BE5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (v39)
  {
    (*(*v39 + 24))(v39, a2, a3, a4, a5, a6, a7, a8);
  }

  v42 = *(v40 - 88);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  ACFUError::~ACFUError((v40 - 80));
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<RTKitFirmware  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<RTKitFirmware  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t ACFUDataContainer::DirectDataRef::DirectDataRef(uint64_t this, void *a2, uint64_t a3, char a4)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 16) = a4;
  *(this + 17) = 1;
  return this;
}

void ACFUDataContainer::DirectDataRef::~DirectDataRef(ACFUDataContainer::DirectDataRef *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 1);
    if (v3)
    {
      if (*(this + 17) == 1)
      {
        if (*(this + 16))
        {
          if (v2 % sysconf(29))
          {
            v4 = sysconf(29);
            v5 = sysconf(29);
            LogInstance = ACFULogging::getLogInstance(v5);
            v3 += v2 % v5;
            ACFULogging::handleMessage(LogInstance, 4, "%s::%s: unmaping new length for page alignment (alignedLength: %zu. originalLength: %zu)\n", "ACFUDataContainer", "~DirectDataRef", v3, *(this + 1));
            v2 = v2 / v4 * v4;
          }

          v7 = munmap(v2, v3);
          if (v7 == -1)
          {
            v8 = ACFULogging::getLogInstance(v7);
            v9 = __error();
            v10 = strerror(*v9);
            ACFULogging::handleMessage(v8, 2, "%s::%s: failed to unmap file: (%s)\n", "ACFUDataContainer", "~DirectDataRef", v10);
          }
        }

        else
        {
          free(*this);
        }
      }
    }
  }
}

void ACFUDataContainer::create(ACFUDataContainer *this@<X0>, ACFUDataContainer **a2@<X8>)
{
  v4 = operator new(0x20uLL);
  *v4 = 0;
  v4[2] = -1;
  *(v4 + 2) = 0;
  *(v4 + 12) = 0;
  *a2 = v4;
  if ((ACFUDataContainer::init(v4, this) & 1) == 0)
  {
    std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](a2, 0);
    LogInstance = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to init data container object\n", "ACFUDataContainer", "create");
  }
}

{
  v4 = operator new(0x20uLL);
  *v4 = 0;
  v4[2] = -1;
  *(v4 + 2) = 0;
  *(v4 + 12) = 0;
  *a2 = v4;
  if ((ACFUDataContainer::init(v4, this) & 1) == 0)
  {
    std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](a2, 0);
    LogInstance = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to init data container object\n", "ACFUDataContainer", "create");
  }
}

uint64_t ACFUDataContainer::init(ACFUDataContainer *this, const __CFData *a2)
{
  if (a2)
  {
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, a2);
      *this = MutableCopy;
      if (MutableCopy)
      {
        return 1;
      }

      v7 = "%s::%s: failed to allocate space for file object\n";
    }

    else
    {
      v7 = "%s::%s: data is of an unsupported type\n";
    }
  }

  else
  {
    v7 = "%s::%s: bad parameter!\n";
  }

  ACFUDataContainer::init(v7);
  return 0;
}

uint64_t ACFUDataContainer::init(ACFUDataContainer *this, __CFData *a2)
{
  if (a2)
  {
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      v5 = AMSupportSafeRetain();
      *this = v5;
      if (v5)
      {
        return 1;
      }

      v7 = "%s::%s: failed to allocate space for file object\n";
    }

    else
    {
      v7 = "%s::%s: data is of an unsupported type\n";
    }
  }

  else
  {
    v7 = "%s::%s: bad parameter!\n";
  }

  ACFUDataContainer::init(v7);
  return 0;
}

void ACFUDataContainer::create(const __CFString *this@<X0>, const __CFString *a2@<X1>, ACFUDataContainer **a3@<X8>)
{
  v3 = a2;
  v6 = operator new(0x20uLL);
  *v6 = 0;
  v6[2] = -1;
  *(v6 + 2) = 0;
  *(v6 + 12) = 0;
  *a3 = v6;
  if ((ACFUDataContainer::init(v6, this, v3) & 1) == 0)
  {
    std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](a3, 0);
    LogInstance = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to init data container object\n", "ACFUDataContainer", "create");
  }
}

uint64_t ACFUDataContainer::init(ACFUDataContainer *this, __CFString *a2, char a3)
{
  ACFUCommon::stringFromCFString(&v30, a2);
  v33 = v31;
  *v32 = v30;
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    if (HIBYTE(v31))
    {
      v7 = v32;
      goto LABEL_6;
    }

LABEL_39:
    LogInstance = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to acquire file path string\n");
    goto LABEL_20;
  }

  if (!v32[1])
  {
    goto LABEL_39;
  }

  v7 = v32[0];
LABEL_6:
  if (access(v7, 0))
  {
    *(this + 25) = 1;
    if (v33 >= 0)
    {
      v8 = v32;
    }

    else
    {
      v8 = v32[0];
    }

    v9 = open(v8, 514, 438);
  }

  else
  {
    if (v33 >= 0)
    {
      v10 = v32;
    }

    else
    {
      v10 = v32[0];
    }

    if (access(v10, 6))
    {
      if (v33 >= 0)
      {
        v11 = v32;
      }

      else
      {
        v11 = v32[0];
      }

      v12 = access(v11, 4);
      if (v12)
      {
        v13 = ACFULogging::getLogInstance(v12);
        v14 = __error();
        strerror(*v14);
        ACFULogging::handleMessage(v13, 2, "%s::%s: no read or write permissions to file: (%s)\n");
        goto LABEL_20;
      }

      v17 = ACFULogging::getLogInstance(v12);
      ACFULogging::handleMessage(v17, 2, "%s::%s: no write permissions to file... attempting to open file as read-only\n", "ACFUDataContainer", "init");
      if (v33 >= 0)
      {
        v18 = v32;
      }

      else
      {
        v18 = v32[0];
      }

      v9 = open(v18, 0);
    }

    else
    {
      *(this + 25) = 1;
      if (v33 >= 0)
      {
        v16 = v32;
      }

      else
      {
        v16 = v32[0];
      }

      v9 = open(v16, 2);
    }
  }

  *(this + 2) = v9;
  if ((v9 & 0x80000000) != 0)
  {
    v26 = ACFULogging::getLogInstance(v9);
    v27 = __error();
    strerror(*v27);
    ACFULogging::handleMessage(v26, 2, "%s::%s: failed to open file error: (%s)\n");
    goto LABEL_20;
  }

  Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], a2);
  *(this + 2) = Copy;
  if (!Copy)
  {
    v28 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v28, 2, "%s::%s: failed to create copy of file path\n");
    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    MutableFileDatafromFilePath = ACFUCommon::createMutableFileDatafromFilePath(a2, v20, v21);
    *this = MutableFileDatafromFilePath;
    if (MutableFileDatafromFilePath)
    {
      v22 = 0;
      goto LABEL_35;
    }

    v29 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v29, 2, "%s::%s: failed to acquire firmware data from file path\n");
LABEL_20:
    v15 = 0;
    goto LABEL_36;
  }

  v22 = 1;
LABEL_35:
  *(this + 24) = v22;
  v15 = 1;
LABEL_36:
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  return v15;
}

void sub_2984BEEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFData *ACFUDataContainer::copyData(ACFUDataContainer *this)
{
  if (*(this + 24) != 1)
  {
    if (*this)
    {
      AMSupportSafeRetain();
      return *this;
    }

    else
    {
      ACFUDataContainer::copyData(0);
      return 0;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v2 = *(this + 2);
  if (!v2)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: file path has not been initialized\n");
    goto LABEL_22;
  }

  ACFUCommon::stringFromCFString(&v13, v2);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  v16 = v14;
  *__p = v13;
  if (SHIBYTE(v14) < 0)
  {
    if (__p[1])
    {
      v4 = __p[0];
      goto LABEL_12;
    }

LABEL_19:
    v9 = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(v9, 2, "%s::%s: failed to acquire file path c string\n");
    goto LABEL_22;
  }

  if (!HIBYTE(v14))
  {
    goto LABEL_19;
  }

  v4 = __p;
LABEL_12:
  v6 = stat(v4, &v17);
  if (v6 != -1)
  {
    v5 = ACFUDataContainer::copyData(this, 0, v17.st_size);
    goto LABEL_14;
  }

  v10 = ACFULogging::getLogInstance(v6);
  v11 = __error();
  v12 = strerror(*v11);
  ACFULogging::handleMessage(v10, 2, "%s::%s: failed to obtain file stats: (%s)\n", "ACFUDataContainer", "copyData", v12);
LABEL_22:
  v5 = 0;
LABEL_14:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_2984BF034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

__CFData *ACFUDataContainer::copyData(ACFUDataContainer *this, const __CFString *a2, unint64_t a3)
{
  if (!a3)
  {
    ACFUDataContainer::copyData(this);
    return 0;
  }

  v3 = a3;
  v4 = a2;
  Length = ACFUDataContainer::getLength(this, a2);
  if (!Length)
  {
    ACFUDataContainer::copyData(0);
    return 0;
  }

  if (Length <= v4)
  {
    ACFUDataContainer::copyData(Length);
    return 0;
  }

  v7 = v4;
  v8 = Length - v4;
  if (v8 < v3)
  {
    LogInstance = ACFULogging::getLogInstance(Length);
    ACFULogging::handleMessage(LogInstance, 4, "%s::%s: reducing requested length %zu -> %zu\n", "ACFUDataContainer", "copyData", v3, v8);
    v3 = v8;
  }

  if (*(this + 24) != 1)
  {
    if (*this)
    {
      Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0);
      if (Mutable)
      {
        BytePtr = CFDataGetBytePtr(*this);
        CFDataAppendBytes(Mutable, &BytePtr[v7], v3);
      }

      else
      {
        ACFUDataContainer::copyData(0);
      }

      return Mutable;
    }

    ACFUDataContainer::copyData(Length);
    return 0;
  }

  if ((*(this + 2) & 0x80000000) != 0)
  {
    ACFUDataContainer::copyData(Length);
    return 0;
  }

  v10 = (v4 / sysconf(29));
  v11 = sysconf(29);
  v12 = (v10 * v11);
  v13 = v4 - v12;
  v14 = ACFULogging::getLogInstance(v11);
  ACFULogging::handleMessage(v14, 4, "%s::%s: paging in new length for page alignment (Requested: %zu. Aligned: %zu)\n", "ACFUDataContainer", "copyData", v3, v3 + v13);
  v15 = mmap(0, v3 + v13, 1, 2, *(this + 2), v12);
  if (v15 == -1)
  {
    ACFUDataContainer::copyData(0xFFFFFFFFFFFFFFFFLL);
    return 0;
  }

  v16 = v15;
  v17 = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  Mutable = v17;
  if (v17)
  {
    CFDataAppendBytes(v17, &v16[v13], v3);
    v19 = munmap(v16, v3 + v13);
    if (v19 == -1)
    {
      v20 = ACFULogging::getLogInstance(v19);
      v21 = __error();
      v22 = strerror(*v21);
      ACFULogging::handleMessage(v20, 4, "%s::%s: failed to un-map file: (%s)\n", "ACFUDataContainer", "copyData", v22);
    }
  }

  else
  {
    ACFUDataContainer::copyData(0);
  }

  return Mutable;
}

CFIndex ACFUDataContainer::getLength(ACFUCommon **this, const __CFString *a2)
{
  if (*(this + 24) == 1)
  {
    ACFUCommon::stringFromCFString(__p, this[2]);
    if (v12 >= 0)
    {
      v2 = __p;
    }

    else
    {
      v2 = __p[0];
    }

    v3 = stat(v2, &v13);
    if (v3 == -1)
    {
      LogInstance = ACFULogging::getLogInstance(v3);
      if (v12 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      v9 = __error();
      v10 = strerror(*v9);
      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to determine file size for path '%s' (%s)\n", "ACFUDataContainer", "getLength", v8, v10);
      st_size = 0;
    }

    else
    {
      st_size = v13.st_size;
    }

    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    return st_size;
  }

  else
  {
    v5 = *this;

    return CFDataGetLength(v5);
  }
}

void sub_2984BF424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ACFUDataContainer::copyDirectData(ACFUDataContainer *this@<X0>, size_t __size@<X2>, unsigned int a3@<W1>, ACFUDataContainer::DirectDataRef **a4@<X8>)
{
  *a4 = 0;
  if (!__size)
  {
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid offset value\n");
    return;
  }

  if (*(this + 24) == 1)
  {
    if ((*(this + 2) & 0x80000000) != 0)
    {
      v23 = ACFULogging::getLogInstance(this);
      ACFULogging::handleMessage(v23, 2, "%s::%s: invalid file descriptor\n", "ACFUDataContainer", "copyDirectData");
      return;
    }

    v8 = sysconf(29);
    v9 = sysconf(29);
    v10 = ACFULogging::getLogInstance(v9);
    v11 = (v9 * (a3 / v8));
    v12 = a3 - v11;
    ACFULogging::handleMessage(v10, 4, "%s::%s: paging in new length for page alignment (Requested: %zu. Aligned: %zu)\n", "ACFUDataContainer", "copyDirectData", __size, v12 + __size);
    v13 = mmap(0, v12 + __size, 1, 1, *(this + 2), v11);
    if (v13 == -1)
    {
      v26 = ACFULogging::getLogInstance(0xFFFFFFFFFFFFFFFFLL);
      v27 = __error();
      v28 = strerror(*v27);
      ACFULogging::handleMessage(v26, 2, "%s::%s: failed to map file: (%s)\n", "ACFUDataContainer", "copyDirectData", v28);
      return;
    }

    v14 = operator new(0x18uLL);
    *v14 = &v13[v12];
    v15 = 1;
  }

  else
  {
    v16 = *this;
    if (!*this)
    {
      v24 = ACFULogging::getLogInstance(this);
      ACFULogging::handleMessage(v24, 2, "%s::%s: object does not hold any data\n");
      return;
    }

    v17 = malloc(__size);
    if (!v17)
    {
      v25 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v25, 2, "%s::%s: unable to allocate data\n");
      return;
    }

    v18 = v17;
    BytePtr = CFDataGetBytePtr(v16);
    memcpy(v18, &BytePtr[a3], __size);
    v14 = operator new(0x18uLL);
    v15 = 0;
    *v14 = v18;
  }

  v14[1] = __size;
  *(v14 + 16) = v15;
  *(v14 + 17) = 1;
  std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](a4, v14);
  if (!**a4)
  {
    v21 = ACFULogging::getLogInstance(v20);
    ACFULogging::handleMessage(v21, 4, "%s::%s: failed to create file data\n");
  }
}

uint64_t ACFUDataContainer::setData(const __CFString **this, __CFData *a2)
{
  if (*(this + 24) == 1)
  {
    ACFUDataContainer::setData(this);
    return 0;
  }

  v3 = *this;
  if (v3)
  {
    CFRelease(v3);
    *this = 0;
  }

  v4 = AMSupportSafeRetain();
  *this = v4;
  if (!v4)
  {
    ACFUDataContainer::setData(0);
    return 0;
  }

  if (*(this + 25) != 1)
  {
    return 1;
  }

  v5 = this[2];
  if (!v5)
  {
    ACFUDataContainer::setData(v4);
    return 0;
  }

  v6 = CFURLCreateWithString(*MEMORY[0x29EDB8ED8], v5, 0);
  if (!v6)
  {
    ACFUDataContainer::setData(0);
    return 0;
  }

  v7 = v6;
  v8 = 1;
  v9 = AMSupportWriteDataToFileURL();
  CFRelease(v7);
  if (v9)
  {
    ACFUDataContainer::setData(v9);
    return 0;
  }

  return v8;
}

uint64_t ACFUDataContainer::getData(ACFUDataContainer *this)
{
  if (*(this + 24) != 1)
  {
    return *this;
  }

  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: cannot aquire reference for a memory optimized data container. Please use copyData() instead\n", "ACFUDataContainer", "getData");
  return 0;
}

void ACFUDataContainer::~ACFUDataContainer(ACFUDataContainer *this)
{
  v2 = *(this + 2);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  if (*this)
  {
    CFRelease(*this);
    *this = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
    *(this + 2) = 0;
  }
}

void std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](ACFUDataContainer **a1, ACFUDataContainer *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    ACFUDataContainer::~ACFUDataContainer(v3);

    operator delete(v4);
  }
}

void std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](ACFUDataContainer::DirectDataRef **a1, ACFUDataContainer::DirectDataRef *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    ACFUDataContainer::DirectDataRef::~DirectDataRef(v3);

    operator delete(v4);
  }
}

void ACFUDataContainer::copyData(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: object does not hold any data\n", "ACFUDataContainer", "copyData");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: offset out of range\n", "ACFUDataContainer", "copyData");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create mutable data in unoptimized path\n", "ACFUDataContainer", "copyData");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create mutable data in optimized path\n", "ACFUDataContainer", "copyData");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  v2 = __error();
  v3 = strerror(*v2);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to map file: (%s)\n", "ACFUDataContainer", "copyData", v3);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid file descriptor\n", "ACFUDataContainer", "copyData");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get backing length\n", "ACFUDataContainer", "copyData");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid length value\n", "ACFUDataContainer", "copyData");
}

void ACFUDataContainer::setData(ACFULogging *a1)
{
  v1 = a1;
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to overwrite file (%d)\n", "ACFUDataContainer", "setData", v1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create path url\n", "ACFUDataContainer", "setData");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: file path has not been initialized\n", "ACFUDataContainer", "setData");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed obtain new file data\n", "ACFUDataContainer", "setData");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: cannot setData for a memory optimized data container.\n", "ACFUDataContainer", "setData");
}

__CFDictionary *ACFURestoreHost::getTags(CFDictionaryRef *this)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    ArrayFromList = ACFURestoreHost::createArrayFromList(this + 5);
    if (ArrayFromList)
    {
      v4 = ArrayFromList;
      v5 = ACFURestoreHost::createArrayFromList(this + 14);
      if (v5)
      {
        v6 = v5;
        Value = CFDictionaryGetValue(this[2], @"DeviceInfo");
        if (Value && (v8 = CFGetTypeID(Value), v8 == CFDictionaryGetTypeID()))
        {
          CFDictionaryAddValue(Mutable, @"BuildIdentityTags", v4);
          CFDictionaryAddValue(Mutable, @"ResponseTags", v6);
          LogInstance = ACFULogging::getLogInstance(v9);
          std::string::basic_string[abi:ne200100]<0>(&v16, "ACFURestoreHost");
          v11 = std::string::append(&v16, "::");
          v12 = *&v11->__r_.__value_.__l.__data_;
          v17.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
          *&v17.__r_.__value_.__l.__data_ = v12;
          v11->__r_.__value_.__l.__size_ = 0;
          v11->__r_.__value_.__r.__words[2] = 0;
          v11->__r_.__value_.__r.__words[0] = 0;
          v13 = std::string::append(&v17, "getTags");
          v14 = *&v13->__r_.__value_.__l.__data_;
          v19 = v13->__r_.__value_.__r.__words[2];
          *__p = v14;
          v13->__r_.__value_.__l.__size_ = 0;
          v13->__r_.__value_.__r.__words[2] = 0;
          v13->__r_.__value_.__r.__words[0] = 0;
          ACFULogging::handleMessageCFType(LogInstance, __p, 0, "Request Tags:", Mutable);
          if (SHIBYTE(v19) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v17.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v16.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v20, "getTags: failed to get device info list");
          ACFUError::addError((this + 3), v20, 0xFA1uLL, 0);
          ACFURestoreHost::getTags(v20);
        }

        CFRelease(v6);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v21, "getTags: failed to create response tag list");
        ACFUError::addError((this + 3), v21, 0xFA0uLL, 0);
        ACFURestoreHost::getTags(v21);
      }

      CFRelease(v4);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "getTags: failed to create build identity tag list");
      ACFUError::addError((this + 3), v22, 0xFA0uLL, 0);
      ACFURestoreHost::getTags(v22);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v23, "getTags: failed to allocate output dictionary");
    ACFUError::addError((this + 3), v23, 0xFA0uLL, 0);
    ACFURestoreHost::getTags(v23);
  }

  return Mutable;
}

void sub_2984BFF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef ACFURestoreHost::createArrayFromList(const void ***a1)
{
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  if (Mutable)
  {
    v4 = Mutable;
    for (i = *a1; i != a1[1]; ++i)
    {
      v6 = *i;
      CFArrayAppendValue(v4, v6);
    }

    Copy = CFArrayCreateCopy(v2, v4);
    CFRelease(v4);
    return Copy;
  }

  else
  {
    ACFURestoreHost::createArrayFromList(0);
    return 0;
  }
}

const __CFData *ACFURestoreHost::copyFirmware(ACFURestoreHost *this)
{
  v2 = *MEMORY[0x29EDB8ED8];
  v3 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"Firmware/%@/Rooted/ftab.bin", *(this + 28));
  if (!v3)
  {
    ACFURestoreHost::copyFirmware(0);
    return 0;
  }

  v4 = v3;
  v5 = CFDictionaryGetValue(*(this + 2), @"DestBundlePath");
  v6 = v5;
  if (v5)
  {
    LogInstance = ACFULogging::getLogInstance(v5);
    v8 = std::string::basic_string[abi:ne200100]<0>(&v135, "ACFURestoreHost");
    v9 = std::string::append(v8, "::");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v136.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v136.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v136, "copyFirmware");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v137.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v137.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(LogInstance, &v137, 0, "personalizedURL: ", v6);
    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v135.__r_.__value_.__l.__data_);
    }
  }

  v13 = CFDictionaryContainsKey(*(this + 2), @"BundleDataDict");
  v14 = v13;
  v15 = ACFULogging::getLogInstance(v13);
  if (!v14)
  {
    ACFULogging::handleMessage(v15, 0, "%s::%s: running host invoked restore info -- using bundleURL\n", "ACFURestoreHost", "copyFirmware");
    Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!Mutable)
    {
      ACFURestoreHost::copyFirmware(0);
      goto LABEL_180;
    }

    v28 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!v28)
    {
      ACFURestoreHost::copyFirmware(0);
      goto LABEL_180;
    }

    v20 = v28;
    v29 = CFDictionaryGetValue(*(this + 2), @"BundlePath");
    if (!v29 || (v30 = v29, v31 = CFURLGetTypeID(), v31 != CFGetTypeID(v30)))
    {
      std::string::basic_string[abi:ne200100]<0>(v133, "copyFirmware: failed to get src bundle URL");
      ACFUError::addError(this + 24, v133, 0xFA1uLL, 0);
      ACFURestoreHost::copyFirmware(v133);
      v25 = 0;
LABEL_19:
      v27 = v4;
LABEL_167:
      CFRelease(v27);
      goto LABEL_168;
    }

    v32 = CFDictionaryGetValue(*(this + 2), @"Options");
    v111 = v4;
    if (v32 && (v34 = v32, v35 = CFGetTypeID(v32), v35 == CFDictionaryGetTypeID()))
    {
      cf.__r_.__value_.__r.__words[0] = 0;
      v36 = CFDictionaryGetValue(v34, @"ACFUFirmware");
      if (v36)
      {
        TypeID = CFStringGetTypeID();
        if (TypeID == CFGetTypeID(v36))
        {
          if (v6)
          {
            AMSupportCopyURLWithAppendedComponent();
            std::string::basic_string[abi:ne200100]<0>(v132, "copyFirmware: failed to create personalized rooted FW URL");
            ACFUError::addError(this + 24, v132, 0xFA0uLL, 0);
            ACFURestoreHost::copyFirmware(v132);
LABEL_187:
            v25 = 0;
            goto LABEL_19;
          }

          URLFromString = AMSupportCreateURLFromString();
          if (!URLFromString)
          {
            std::string::basic_string[abi:ne200100]<0>(v131, "copyFirmware: failed to create src rooted FW URL");
            ACFUError::addError(this + 24, v131, 0xFA0uLL, 0);
            ACFURestoreHost::copyFirmware(v131);
            goto LABEL_187;
          }

          v39 = URLFromString;
          CFDictionaryAddValue(Mutable, *(this + 1), URLFromString);
          CFDictionaryAddValue(v20, *(this + 1), v39);
          CFRelease(v39);
        }
      }

      v110 = v36 != 0;
    }

    else
    {
      v110 = 0;
    }

    v40 = *(this + 17);
    if (v40 != *(this + 18))
    {
      v41 = 0;
      while (1)
      {
        v129 = 0;
        value = 0;
        PathFromBuildID = ACFURestoreHost::getPathFromBuildID(*(this + 2), *v40, v33);
        ACFUCommon::stringFromCFString(&v137, *v40);
        if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v137.__r_.__value_.__l.__size_)
          {
            std::string::__init_copy_ctor_external(&v136, v137.__r_.__value_.__l.__data_, v137.__r_.__value_.__l.__size_);
            goto LABEL_43;
          }
        }

        else if (*(&v137.__r_.__value_.__s + 23))
        {
          v136 = v137;
          goto LABEL_43;
        }

        v43 = std::string::basic_string[abi:ne200100]<0>(&v136, "UNDEF");
LABEL_43:
        if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v137.__r_.__value_.__l.__data_);
        }

        v137 = v136;
        if (PathFromBuildID)
        {
          if (v6)
          {
            v45 = AMSupportCopyURLWithAppendedComponent();
            if (v45 || !v129)
            {
              std::string::basic_string[abi:ne200100]<0>(v124, "copyFirmware: failed to create personalized FW URL");
              v71 = ACFUError::addError(this + 24, v124, 0xFA0uLL, 0);
              if (v125 < 0)
              {
                operator delete(v124[0]);
              }

              v72 = ACFULogging::getLogInstance(v71);
              ACFULogging::handleMessage(v72, 2, "%s::%s: copyFirmware: failed to create personalized FW URL (status: %d)\n", "ACFURestoreHost", "copyFirmware", v45);
              goto LABEL_79;
            }

            doesPathExist = ACFUCommon::doesPathExist(v129, v44);
            if (doesPathExist)
            {
              v47 = ACFULogging::getLogInstance(doesPathExist);
              std::string::basic_string[abi:ne200100]<0>(&cf, "ACFURestoreHost");
              v48 = std::string::append(&cf, "::");
              v49 = *&v48->__r_.__value_.__l.__data_;
              v135.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
              *&v135.__r_.__value_.__l.__data_ = v49;
              v48->__r_.__value_.__l.__size_ = 0;
              v48->__r_.__value_.__r.__words[2] = 0;
              v48->__r_.__value_.__r.__words[0] = 0;
              v50 = std::string::append(&v135, "copyFirmware");
              v51 = *&v50->__r_.__value_.__l.__data_;
              v136.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
              *&v136.__r_.__value_.__l.__data_ = v51;
              v50->__r_.__value_.__l.__size_ = 0;
              v50->__r_.__value_.__r.__words[2] = 0;
              v50->__r_.__value_.__r.__words[0] = 0;
              ACFULogging::handleMessageCFType(v47, &v136, 0, "Firmware Object: ", *v40);
              if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v136.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v135.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(cf.__r_.__value_.__l.__data_);
              }

              v53 = ACFULogging::getLogInstance(v52);
              std::string::basic_string[abi:ne200100]<0>(&cf, "ACFURestoreHost");
              v54 = std::string::append(&cf, "::");
              v55 = *&v54->__r_.__value_.__l.__data_;
              v135.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
              *&v135.__r_.__value_.__l.__data_ = v55;
              v54->__r_.__value_.__l.__size_ = 0;
              v54->__r_.__value_.__r.__words[2] = 0;
              v54->__r_.__value_.__r.__words[0] = 0;
              v56 = std::string::append(&v135, "copyFirmware");
              v57 = *&v56->__r_.__value_.__l.__data_;
              v136.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
              *&v136.__r_.__value_.__l.__data_ = v57;
              v56->__r_.__value_.__l.__size_ = 0;
              v56->__r_.__value_.__r.__words[2] = 0;
              v56->__r_.__value_.__r.__words[0] = 0;
              ACFULogging::handleMessageCFType(v53, &v136, 0, "Personalized Bundle FW URL: ", v129);
              if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v136.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v135.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(cf.__r_.__value_.__l.__data_);
              }

              v41 = 1;
            }

            else if (v129)
            {
              CFRelease(v129);
              v41 = 0;
              v129 = 0;
            }

            else
            {
              v41 = 0;
            }
          }

          v67 = AMSupportCopyURLWithAppendedComponent();
          if (v67 || !value)
          {
            std::string::basic_string[abi:ne200100]<0>(v122, "copyFirmware: failed to create default FW URL");
            v69 = ACFUError::addError(this + 24, v122, 0xFA0uLL, 0);
            if (v123 < 0)
            {
              operator delete(v122[0]);
            }

            v70 = ACFULogging::getLogInstance(v69);
            ACFULogging::handleMessage(v70, 2, "%s::%s: copyFirmware: failed to create default FW URL, (status: %d)\n", "ACFURestoreHost", "copyFirmware", v67);
LABEL_79:
            v63 = 4;
            goto LABEL_89;
          }

          if (v41)
          {
            v68 = v129;
          }

          else
          {
            v68 = value;
          }

          CFDictionaryAddValue(Mutable, *v40, v68);
          CFDictionaryAddValue(v20, *v40, value);
          if (value)
          {
            CFRelease(value);
            v63 = 0;
            value = 0;
          }

          else
          {
            v63 = 0;
          }
        }

        else
        {
          if (*(v40 + 8) != 1)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "copyFirmware: failed to find FW");
            v64 = ACFUError::addError(this + 24, __p, 0xFA1uLL, 0);
            if (v127 < 0)
            {
              operator delete(__p[0]);
            }

            v65 = ACFULogging::getLogInstance(v64);
            if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v66 = &v137;
            }

            else
            {
              v66 = v137.__r_.__value_.__r.__words[0];
            }

            ACFULogging::handleMessage(v65, 2, "%s::%s: copyFirmware: failed to find FW (%s) in build ID\n", "ACFURestoreHost", "copyFirmware", v66);
            goto LABEL_79;
          }

          v58 = ACFULogging::getLogInstance(v43);
          std::string::basic_string[abi:ne200100]<0>(&cf, "ACFURestoreHost");
          v59 = std::string::append(&cf, "::");
          v60 = *&v59->__r_.__value_.__l.__data_;
          v135.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
          *&v135.__r_.__value_.__l.__data_ = v60;
          v59->__r_.__value_.__l.__size_ = 0;
          v59->__r_.__value_.__r.__words[2] = 0;
          v59->__r_.__value_.__r.__words[0] = 0;
          v61 = std::string::append(&v135, "copyFirmware");
          v62 = *&v61->__r_.__value_.__l.__data_;
          v136.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
          *&v136.__r_.__value_.__l.__data_ = v62;
          v61->__r_.__value_.__l.__size_ = 0;
          v61->__r_.__value_.__r.__words[2] = 0;
          v61->__r_.__value_.__r.__words[0] = 0;
          ACFULogging::handleMessageCFType(v58, &v136, 0, "skipping optional file...", *v40);
          if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v136.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v135.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(cf.__r_.__value_.__l.__data_);
          }

          v63 = 29;
        }

LABEL_89:
        if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v137.__r_.__value_.__l.__data_);
          if (!v63)
          {
            goto LABEL_94;
          }
        }

        else if (!v63)
        {
          goto LABEL_94;
        }

        if (v63 != 29)
        {
          v25 = 0;
          goto LABEL_166;
        }

LABEL_94:
        v40 += 16;
        if (v40 == *(this + 18))
        {
          goto LABEL_103;
        }
      }
    }

    v41 = 0;
LABEL_103:
    v73 = (*(*this + 40))(this, Mutable, 0);
    v25 = v73;
    if (v73)
    {
      v74 = HIDWORD(v110);
    }

    else
    {
      v74 = HIDWORD(v110);
      if (v41)
      {
        v75 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v75, 0, "%s::%s: attempting copyFirmwareUpdater again with source bundle file map\n", "ACFURestoreHost", "copyFirmware");
        v73 = (*(*this + 40))(this, v20, 0);
        v25 = v73;
      }

      if (!v25)
      {
        std::string::basic_string[abi:ne200100]<0>(v120, "copyFirmware: updater failed to find firmware data with bundleURL");
        v105 = ACFUError::addError(this + 24, v120, 0xFA0uLL, 0);
        v25 = 0;
        v106 = "%s::%s: updater failed to find firmware data with bundleURL\n";
        if (v121 < 0)
        {
          v107 = v120;
          goto LABEL_174;
        }

        goto LABEL_175;
      }
    }

    v76 = !v110;
    if (!v6)
    {
      v76 = 1;
    }

    if (((v74 | v76) & 1) == 0)
    {
      v77 = ACFULogging::getLogInstance(v73);
      ACFULogging::handleMessage(v77, 0, "%s::%s: copying preflighted rooted firmware into the dst bundle...\n", "ACFURestoreHost", "copyFirmware");
      v73 = ACFURestoreHost::copyToPersonalizedBundlePath(v78, *(this + 2), v111, v25);
      if (v73)
      {
        std::string::basic_string[abi:ne200100]<0>(v118, "copyFirmware: failed to perform destination bundle copy of rooted firmware");
        v105 = ACFUError::addError(this + 24, v118, 0xFA3uLL, 0);
        v106 = "%s::%s: failed to perform destination bundle copy of rooted firmware\n";
        if (v119 < 0)
        {
          v107 = v118;
LABEL_174:
          operator delete(*v107);
        }

LABEL_175:
        v109 = ACFULogging::getLogInstance(v105);
        ACFULogging::handleMessage(v109, 2, v106, "ACFURestoreHost", "copyFirmware");
LABEL_166:
        v27 = v111;
        goto LABEL_167;
      }
    }

    if ((v6 == 0) | v41 & 1)
    {
      if (v41)
      {
        v79 = ACFULogging::getLogInstance(v73);
        ACFULogging::handleMessage(v79, 0, "%s::%s: removing any personalized bits of bundle firmware\n", "ACFURestoreHost", "copyFirmware");
        v80 = *(this + 17);
        if (v80 != *(this + 18))
        {
          while (1)
          {
            v81 = CFDictionaryGetValue(Mutable, *v80);
            if (v81 || *(v80 + 8) != 1)
            {
              if ((ACFUCommon::removeFileWithURL(v81, v82) & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(v112, "copyFirmware: failed to remove bundle fw personalized bits");
                v105 = ACFUError::addError(this + 24, v112, 0x3ECuLL, 0);
                v106 = "%s::%s: failed to remove bundle fw personalized bits\n";
                if (v113 < 0)
                {
                  v107 = v112;
                  goto LABEL_174;
                }

                goto LABEL_175;
              }
            }

            else
            {
              v83 = ACFULogging::getLogInstance(0);
              v84 = std::string::basic_string[abi:ne200100]<0>(&v135, "ACFURestoreHost");
              v85 = std::string::append(v84, "::");
              v86 = *&v85->__r_.__value_.__l.__data_;
              v136.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
              *&v136.__r_.__value_.__l.__data_ = v86;
              v85->__r_.__value_.__l.__size_ = 0;
              v85->__r_.__value_.__r.__words[2] = 0;
              v85->__r_.__value_.__r.__words[0] = 0;
              v87 = std::string::append(&v136, "copyFirmware");
              v88 = *&v87->__r_.__value_.__l.__data_;
              v137.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
              *&v137.__r_.__value_.__l.__data_ = v88;
              v87->__r_.__value_.__l.__size_ = 0;
              v87->__r_.__value_.__r.__words[2] = 0;
              v87->__r_.__value_.__r.__words[0] = 0;
              ACFULogging::handleMessageCFType(v83, &v137, 0, "skipping removal of optional file...", *v80);
              if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v137.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v136.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v135.__r_.__value_.__l.__data_);
              }
            }

            v80 += 16;
            if (v80 == *(this + 18))
            {
              goto LABEL_166;
            }
          }
        }
      }

      goto LABEL_166;
    }

    v89 = ACFULogging::getLogInstance(v73);
    ACFULogging::handleMessage(v89, 0, "%s::%s: copying preflighted bundle firmware into the dst bundle...\n", "ACFURestoreHost", "copyFirmware");
    v91 = *(this + 17);
    if (v91 == *(this + 18))
    {
      goto LABEL_166;
    }

    while (1)
    {
      v92 = ACFURestoreHost::getPathFromBuildID(*(this + 2), *v91, v90);
      ACFUCommon::stringFromCFString(&v137, *v91);
      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v137.__r_.__value_.__l.__size_)
        {
          std::string::__init_copy_ctor_external(&v136, v137.__r_.__value_.__l.__data_, v137.__r_.__value_.__l.__size_);
          goto LABEL_132;
        }
      }

      else if (*(&v137.__r_.__value_.__s + 23))
      {
        v136 = v137;
        goto LABEL_132;
      }

      v93 = std::string::basic_string[abi:ne200100]<0>(&v136, "UNDEF");
LABEL_132:
      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      v137 = v136;
      if (v92)
      {
        if (!ACFURestoreHost::copyToPersonalizedBundlePath(v93, *(this + 2), v92, v25))
        {
          v94 = 0;
          goto LABEL_152;
        }

        std::string::basic_string[abi:ne200100]<0>(v114, "copyFirmware: failed to perform destination bundle copy of rooted firmware");
        v103 = ACFUError::addError(this + 24, v114, 0xFA3uLL, 0);
        if (v115 < 0)
        {
          operator delete(v114[0]);
        }

        v104 = ACFULogging::getLogInstance(v103);
        ACFULogging::handleMessage(v104, 2, "%s::%s: failed to perform destination bundle copy of rooted firmware\n", "ACFURestoreHost", "copyFirmware");
        goto LABEL_151;
      }

      if (*(v91 + 8) != 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v116, "copyFirmware: failed to find FW in personalized path");
        v100 = ACFUError::addError(this + 24, v116, 0xFA1uLL, 0);
        if (v117 < 0)
        {
          operator delete(v116[0]);
        }

        v101 = ACFULogging::getLogInstance(v100);
        if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v102 = &v137;
        }

        else
        {
          v102 = v137.__r_.__value_.__r.__words[0];
        }

        ACFULogging::handleMessage(v101, 2, "%s::%s: failed to find FW (%s) in build ID in personalized path\n", "ACFURestoreHost", "copyFirmware", v102);
LABEL_151:
        v94 = 4;
        goto LABEL_152;
      }

      v95 = ACFULogging::getLogInstance(v93);
      std::string::basic_string[abi:ne200100]<0>(&cf, "ACFURestoreHost");
      v96 = std::string::append(&cf, "::");
      v97 = *&v96->__r_.__value_.__l.__data_;
      v135.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
      *&v135.__r_.__value_.__l.__data_ = v97;
      v96->__r_.__value_.__l.__size_ = 0;
      v96->__r_.__value_.__r.__words[2] = 0;
      v96->__r_.__value_.__r.__words[0] = 0;
      v98 = std::string::append(&v135, "copyFirmware");
      v99 = *&v98->__r_.__value_.__l.__data_;
      v136.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
      *&v136.__r_.__value_.__l.__data_ = v99;
      v98->__r_.__value_.__l.__size_ = 0;
      v98->__r_.__value_.__r.__words[2] = 0;
      v98->__r_.__value_.__r.__words[0] = 0;
      ACFULogging::handleMessageCFType(v95, &v136, 0, "skipping copying of optional file...", *v91);
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(cf.__r_.__value_.__l.__data_);
      }

      v94 = 48;
LABEL_152:
      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
        if (v94)
        {
LABEL_156:
          if (v94 != 48)
          {
            goto LABEL_166;
          }
        }
      }

      else if (v94)
      {
        goto LABEL_156;
      }

      v91 += 16;
      if (v91 == *(this + 18))
      {
        goto LABEL_166;
      }
    }
  }

  ACFULogging::handleMessage(v15, 0, "%s::%s: running device invoked restore info -- using bundleData\n", "ACFURestoreHost", "copyFirmware");
  v16 = CFDictionaryGetValue(*(this + 2), @"BundleDataDict");
  if (v16 && (v17 = v16, v18 = CFDictionaryGetTypeID(), v16 = CFGetTypeID(v17), v18 == v16))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v2, 0, v17);
    if (MutableCopy)
    {
      v20 = MutableCopy;
      v21 = CFDictionaryGetValue(*(this + 2), @"FirmwareData");
      if (v21)
      {
        v22 = v21;
        v23 = CFDataGetTypeID();
        if (v23 == CFGetTypeID(v22))
        {
          CFDictionarySetValue(v20, *(this + 1), v22);
        }
      }

      v24 = (*(*this + 40))(this, v20, 1);
      if (v24)
      {
        v25 = v24;
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v134, "copyFirmware: updater failed to find firmware data with bundleData");
        ACFUError::addError(this + 24, v134, 0xFA0uLL, 0);
        ACFURestoreHost::copyFirmware(v134);
        v25 = 0;
      }

      Mutable = 0;
      goto LABEL_19;
    }

    ACFURestoreHost::copyFirmware(0);
  }

  else
  {
    ACFURestoreHost::copyFirmware(v16);
  }

  Mutable = 0;
LABEL_180:
  v25 = 0;
  v20 = v4;
LABEL_168:
  CFRelease(v20);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v25;
}

void sub_2984C11E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

ACFULogging *ACFURestoreHost::getPathFromBuildID(ACFURestoreHost *this, const __CFDictionary *a2, const __CFString *a3)
{
  v3 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%@.%@.%@.%@", @"BuildIdentity", a2, @"Info", @"Path");
  if (v3)
  {
    v4 = v3;
    ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
    if (ValueForKeyPathInDict)
    {
      TypeID = CFStringGetTypeID();
      if (TypeID != CFGetTypeID(ValueForKeyPathInDict))
      {
        ACFURestoreHost::getPathFromBuildID(ValueForKeyPathInDict);
      }
    }

    else
    {
      ACFURestoreHost::getPathFromBuildID(0);
    }

    CFRelease(v4);
  }

  else
  {
    ACFURestoreHost::getPathFromBuildID(0);
    return 0;
  }

  return ValueForKeyPathInDict;
}

uint64_t ACFURestoreHost::copyToPersonalizedBundlePath(ACFURestoreHost *this, CFDictionaryRef theDict, const __CFString *a3, const __CFData *a4)
{
  Value = CFDictionaryGetValue(theDict, @"DestBundlePath");
  if (Value && (v5 = Value, v6 = CFURLGetTypeID(), Value = CFGetTypeID(v5), v6 == Value))
  {
    v7 = AMSupportCopyURLWithAppendedComponent();
    if (v7)
    {
      ACFURestoreHost::copyToPersonalizedBundlePath(v7);
      return 4000;
    }

    v8 = MEMORY[0x29C28AF20](0);
    if (v8)
    {
      ACFURestoreHost::copyToPersonalizedBundlePath(v8);
      return 1003;
    }

    v9 = AMSupportWriteDataToFileURL();
    if (v9)
    {
      ACFURestoreHost::copyToPersonalizedBundlePath(v9);
      return 1004;
    }

    doesPathExist = ACFUCommon::doesPathExist(0, v10);
    if (!doesPathExist)
    {
      ACFURestoreHost::copyToPersonalizedBundlePath(doesPathExist);
      return 1004;
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(Value);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: destination bundle was not specified, so we are skipping the copy step...\n", "ACFURestoreHost", "copyToPersonalizedBundlePath");
  }

  return 0;
}

__CFDictionary *ACFURestoreHost::createRequest(uint64_t a1, CFDictionaryRef **a2, uint64_t a3)
{
  allocator = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    std::string::basic_string[abi:ne200100]<0>(v125, "createRequest: Failed to allocate output dictionary");
    ACFUError::addError(a1 + 24, v125, 0xFA0uLL, 0);
    ACFURestoreHost::createRequest(v125, (a1 + 24));
    return 0;
  }

  v7 = Mutable;
  v8 = *(a1 + 88);
  if (v8 != *(a1 + 96))
  {
    v9 = *MEMORY[0x29EDB8F00];
    do
    {
      v10 = *v8++;
      CFDictionaryAddValue(v7, v10, v9);
    }

    while (v8 != *(a1 + 96));
  }

  ACFUCommon::parseDebugArgs(&__s, *(a1 + 16), "validateDeviceId");
  v12 = __s.__r_.__value_.__r.__words[0];
  if (!__s.__r_.__value_.__r.__words[0])
  {
    LogInstance = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: skipping device identity validation against build identity\n", "ACFURestoreHost", "createRequest");
  }

  v14 = CFDictionaryGetValue(*(a1 + 16), @"BuildIdentity");
  if (!v14 || (v15 = v14, TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(v15)))
  {
    std::string::basic_string[abi:ne200100]<0>(v124, "createRequest: Failed to get build identity dict from options");
    ACFUError::addError(a1 + 24, v124, 0xFA1uLL, 0);
    ACFURestoreHost::createRequest(v124);
    goto LABEL_123;
  }

  v17 = CFDictionaryGetValue(*(a1 + 16), @"DeviceInfo");
  if (!v17 || (v18 = v17, v19 = CFDictionaryGetTypeID(), v19 != CFGetTypeID(v18)))
  {
    std::string::basic_string[abi:ne200100]<0>(v123, "createRequest: Failed to get build identity dict from options");
    ACFUError::addError(a1 + 24, v123, 0xFA1uLL, 0);
    ACFURestoreHost::createRequest(v123);
    goto LABEL_123;
  }

  if (v12)
  {
    std::map<__CFString const*,unsigned long>::map[abi:ne200100](v121, a1 + 160);
    v20 = ACFURestoreHost::validateDeviceInfoAgainstBuildIdentity((a1 + 64), (a1 + 40), v18, v15, v121);
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v121, v122);
    if ((v20 & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v120, "createRequest: Failed to validate device identity tags");
      ACFUError::addError(a1 + 24, v120, 0xFA9uLL, 0);
      ACFURestoreHost::createRequest(v120);
      goto LABEL_123;
    }
  }

  std::map<__CFString const*,unsigned long>::map[abi:ne200100](v118, a1 + 160);
  v21 = ACFURestoreHost::populateDictFromIdentity((a1 + 40), v118, v15, v7);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v118, v119);
  if ((v21 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v117, "createRequest: Failed to build parameters out of build identity");
    ACFUError::addError(a1 + 24, v117, 0xFA4uLL, 0);
    ACFURestoreHost::createRequest(v117);
    goto LABEL_123;
  }

  std::map<__CFString const*,unsigned long>::map[abi:ne200100](v115, a1 + 160);
  v22 = ACFURestoreHost::populateDictFromIdentity((a1 + 64), v115, v18, v7);
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(v115, v116);
  if ((v22 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v114, "createRequest: Failed to build parameters out of device identity");
    ACFUError::addError(a1 + 24, v114, 0xFA4uLL, 0);
    ACFURestoreHost::createRequest(v114);
    goto LABEL_123;
  }

  if (*a3)
  {
    v24 = CFDictionaryGetValue(v18, *a3);
    if (!v24 || (v25 = v24, v26 = CFDataGetTypeID(), v23 = CFGetTypeID(v25), v26 != v23))
    {
      std::string::basic_string[abi:ne200100]<0>(v113, "createRequest: Production mode not present in device info. This is fatal!");
      ACFUError::addError(a1 + 24, v113, 0xFA1uLL, 0);
      ACFURestoreHost::createRequest(v113);
      goto LABEL_123;
    }
  }

  else
  {
    v25 = 0;
  }

  v27 = *(a3 + 8);
  if (v27)
  {
    v28 = CFDictionaryGetValue(v18, v27);
    if (!v28 || (v29 = v28, v30 = CFDataGetTypeID(), v23 = CFGetTypeID(v29), v30 != v23))
    {
      std::string::basic_string[abi:ne200100]<0>(v112, "createRequest: Security mode not present in device info. This is fatal!");
      ACFUError::addError(a1 + 24, v112, 0xFA1uLL, 0);
      ACFURestoreHost::createRequest(v112);
      goto LABEL_123;
    }
  }

  else
  {
    v29 = 0;
  }

  v91 = v29;
  v92 = v25;
  theDict = v18;
  v31 = *(a1 + 136);
  if (v31 != *(a1 + 144))
  {
    value = *MEMORY[0x29EDB8F00];
    do
    {
      ACFUCommon::stringFromCFString(&__s, *v31);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__s.__r_.__value_.__l.__size_)
        {
          std::string::__init_copy_ctor_external(&v110, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
          goto LABEL_33;
        }
      }

      else if (*(&__s.__r_.__value_.__s + 23))
      {
        v110 = __s;
        goto LABEL_33;
      }

      std::string::basic_string[abi:ne200100]<0>(&v110, "UNDEF");
LABEL_33:
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      __s = v110;
      v32 = CFDictionaryGetValue(v15, *v31);
      v33 = v32;
      if (!v32)
      {
        if (*(v31 + 8) == 1)
        {
          v37 = ACFULogging::getLogInstance(0);
          ACFULogging::handleMessage(v37, 0, "%s::%s: optional tag %s missing from build identity, skipping\n");
          goto LABEL_42;
        }

LABEL_49:
        std::string::basic_string[abi:ne200100]<0>(__p, "createRequest: could not find FW in build ID");
        v43 = ACFUError::addError(a1 + 24, __p, 0x3EDuLL, 0);
        if (v109 < 0)
        {
          operator delete(__p[0]);
        }

        v44 = ACFULogging::getLogInstance(v43);
        ACFULogging::handleMessage(v44, 2, "%s::%s: could not find FW (%s) in build ID\n");
LABEL_52:
        v38 = 4;
        goto LABEL_71;
      }

      v34 = CFGetTypeID(v32);
      if (v34 != CFDictionaryGetTypeID())
      {
        goto LABEL_49;
      }

      if (*a2)
      {
        MeasureDataWithTag = ACFUFirmware::getMeasureDataWithTag(*a2, *v31);
        if (!MeasureDataWithTag)
        {
          v36 = ACFULogging::getLogInstance(0);
          ACFULogging::handleMessage(v36, 0, "%s::%s: tag %s missing from firmware, skipping\n");
LABEL_42:
          v38 = 24;
          goto LABEL_71;
        }
      }

      else
      {
        MeasureDataWithTag = CFDictionaryGetValue(v33, @"Digest");
        if (!MeasureDataWithTag)
        {
          std::string::basic_string[abi:ne200100]<0>(v106, "createRequest: no digest in build ID");
          v56 = ACFUError::addError(a1 + 24, v106, 0x3EDuLL, 0);
          if (v107 < 0)
          {
            operator delete(v106[0]);
          }

          v57 = ACFULogging::getLogInstance(v56);
          ACFULogging::handleMessage(v57, 2, "%s::%s: no digest in build ID (%s)\n");
          goto LABEL_52;
        }
      }

      v39 = CFGetTypeID(MeasureDataWithTag);
      if (v39 != CFDataGetTypeID())
      {
        std::string::basic_string[abi:ne200100]<0>(v104, "createRequest: wrong digest type");
        v48 = ACFUError::addError(a1 + 24, v104, 0x3EDuLL, 0);
        if (v105 < 0)
        {
          operator delete(v104[0]);
        }

        v49 = ACFULogging::getLogInstance(v48);
        ACFULogging::handleMessage(v49, 2, "%s::%s: wrong digest type (%s)\n");
        goto LABEL_52;
      }

      v40 = CFDictionaryGetValue(v33, @"Trusted");
      v41 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (!v41)
      {
        std::string::basic_string[abi:ne200100]<0>(v102, "createRequest: failed to allocate internal data structure");
        v50 = ACFUError::addError(a1 + 24, v102, 0xFA0uLL, 0);
        if (v103 < 0)
        {
          operator delete(v102[0]);
        }

        v51 = ACFULogging::getLogInstance(v50);
        ACFULogging::handleMessage(v51, 2, "%s::%s: failed to allocate internal data structure\n", "ACFURestoreHost", "createRequest");
        goto LABEL_52;
      }

      if (*a3)
      {
        if (*(a3 + 16) == 1)
        {
          v42 = *std::map<__CFString const*,std::string>::at(a1 + 200, v31);
        }

        else
        {
          v42 = 0;
        }

        ACFURestoreHost::createBoolFromData(&v110, v92);
        if (v110.__r_.__value_.__s.__data_[8] == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v100, "createRequest: epro data to BOOLean conversion failure");
          v52 = ACFUError::addError(a1 + 24, v100, 0x3EDuLL, 0);
          if (v101 < 0)
          {
            operator delete(v100[0]);
          }

          v53 = ACFULogging::getLogInstance(v52);
          ACFULogging::handleMessage(v53, 2, "%s::%s: epro data to BOOLean conversion failure\n", "ACFURestoreHost", "createRequest");
          goto LABEL_52;
        }

        if (v42)
        {
          CFDictionaryAddValue(v41, @"DPRO", value);
          v45 = MEMORY[0x29EDB8EF8];
        }

        else
        {
          v45 = &v110;
        }

        CFDictionaryAddValue(v41, @"EPRO", v45->__r_.__value_.__l.__data_);
      }

      if (*(a3 + 8))
      {
        if (*(a3 + 17) == 1)
        {
          v46 = *(std::map<__CFString const*,std::string>::at(a1 + 200, v31) + 1);
        }

        else
        {
          v46 = 0;
        }

        ACFURestoreHost::createBoolFromData(&v110, v91);
        if (v110.__r_.__value_.__s.__data_[8] == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v98, "createRequest: esec data to BOOLean conversion failure");
          v54 = ACFUError::addError(a1 + 24, v98, 0x3EDuLL, 0);
          if (v99 < 0)
          {
            operator delete(v98[0]);
          }

          v55 = ACFULogging::getLogInstance(v54);
          ACFULogging::handleMessage(v55, 2, "%s::%s: esec data to BOOLean conversion failure\n", "ACFURestoreHost", "createRequest");
          goto LABEL_52;
        }

        if (v46)
        {
          CFDictionaryAddValue(v41, @"DSEC", value);
          v47 = MEMORY[0x29EDB8EF8];
        }

        else
        {
          v47 = &v110;
        }

        CFDictionaryAddValue(v41, @"ESEC", v47->__r_.__value_.__l.__data_);
      }

      CFDictionaryAddValue(v41, @"Digest", MeasureDataWithTag);
      if (v40)
      {
        CFDictionaryAddValue(v41, @"Trusted", v40);
      }

      CFDictionaryAddValue(v7, *v31, v41);
      CFRelease(v41);
      v38 = 0;
LABEL_71:
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
        if (v38)
        {
LABEL_75:
          if (v38 != 24)
          {
            goto LABEL_123;
          }
        }
      }

      else if (v38)
      {
        goto LABEL_75;
      }

      v31 += 16;
    }

    while (v31 != *(a1 + 144));
  }

  if (!*(a1 + 184))
  {
    goto LABEL_112;
  }

  v58 = CFDictionaryGetValue(*(a1 + 16), @"Options");
  if (v58 && (v59 = v58, v60 = CFDictionaryContainsKey(v58, @"TrustObjectDigest"), v60))
  {
    v61 = ACFULogging::getLogInstance(v60);
    ACFULogging::handleMessage(v61, 0, "%s::%s: Using FDR trust object hash in updater options override\n", "ACFURestoreHost", "createRequest");
    v62 = CFDictionaryGetValue(v59, @"TrustObjectDigest");
    if (!v62 || (v63 = v62, v64 = CFDataGetTypeID(), v65 = CFGetTypeID(v63), v64 != v65))
    {
      std::string::basic_string[abi:ne200100]<0>(v97, "createRequest: Invalid FDR trust object hash in updater options override");
      ACFUError::addError(a1 + 24, v97, 0x3EDuLL, 0);
      ACFURestoreHost::createRequest(v97);
      goto LABEL_123;
    }
  }

  else
  {
    v66 = CFDictionaryContainsKey(theDict, @"ACFU,FDRTrustObjectHash");
    v67 = v66;
    v68 = ACFULogging::getLogInstance(v66);
    if (!v67)
    {
      ACFULogging::handleMessage(v68, 0, "%s::%s: Requesting FDR trust object hash\n", "ACFURestoreHost", "createRequest");
      v73 = CFDataCreateMutable(allocator, 0);
      if (!v73)
      {
        std::string::basic_string[abi:ne200100]<0>(v95, "createRequest: Failed to create empty trust object hash");
        ACFUError::addError(a1 + 24, v95, 0xFA0uLL, 0);
        ACFURestoreHost::createRequest(v95);
        goto LABEL_123;
      }

      v74 = v73;
      CFDictionarySetValue(v7, *(a1 + 184), v73);
      CFRelease(v74);
      v63 = 0;
      goto LABEL_106;
    }

    ACFULogging::handleMessage(v68, 0, "%s::%s: Using FDR trust object hash in client updater override\n", "ACFURestoreHost", "createRequest");
    v69 = CFDictionaryGetValue(theDict, @"ACFU,FDRTrustObjectHash");
    if (!v69 || (v63 = v69, v70 = CFDataGetTypeID(), v65 = CFGetTypeID(v63), v70 != v65))
    {
      std::string::basic_string[abi:ne200100]<0>(v96, "createRequest: Invalid FDR trust object hash in client updater override");
      ACFUError::addError(a1 + 24, v96, 0x3EDuLL, 0);
      ACFURestoreHost::createRequest(v96);
      goto LABEL_123;
    }
  }

  v71 = ACFULogging::getLogInstance(v65);
  ACFULogging::handleMessage(v71, 0, "%s::%s: Applying FDR trust object hash override\n", "ACFURestoreHost", "createRequest");
  CFDictionarySetValue(v7, *(a1 + 184), v63);
LABEL_106:
  v75 = ACFULogging::getLogInstance(v72);
  std::string::basic_string[abi:ne200100]<0>(&v94, "ACFURestoreHost");
  v76 = std::string::append(&v94, "::");
  v77 = *&v76->__r_.__value_.__l.__data_;
  v110.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
  *&v110.__r_.__value_.__l.__data_ = v77;
  v76->__r_.__value_.__l.__size_ = 0;
  v76->__r_.__value_.__r.__words[2] = 0;
  v76->__r_.__value_.__r.__words[0] = 0;
  v78 = std::string::append(&v110, "createRequest");
  v79 = *&v78->__r_.__value_.__l.__data_;
  __s.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
  *&__s.__r_.__value_.__l.__data_ = v79;
  v78->__r_.__value_.__l.__size_ = 0;
  v78->__r_.__value_.__r.__words[2] = 0;
  v78->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v75, &__s, 4, "FDR Trust Object Digest: ", v63);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

LABEL_112:
  if (*(a1 + 192))
  {
    v23 = CFDictionaryGetValue(theDict, @"ACFU,FDRAllowUnsealed");
    if (v23)
    {
      v80 = v23;
      v81 = CFGetTypeID(v23);
      v23 = CFBooleanGetTypeID();
      if (v81 == v23)
      {
        v23 = CFBooleanGetValue(v80);
        if (v23)
        {
          v82 = ACFULogging::getLogInstance(v23);
          ACFULogging::handleMessage(v82, 0, "%s::%s: allowing unsealed FDR data\n", "ACFURestoreHost", "createRequest");
          CFDictionaryAddValue(v7, *(a1 + 192), *MEMORY[0x29EDB8F00]);
        }
      }
    }
  }

  v83 = ACFULogging::getLogInstance(v23);
  std::string::basic_string[abi:ne200100]<0>(&v94, "ACFURestoreHost");
  v84 = std::string::append(&v94, "::");
  v85 = *&v84->__r_.__value_.__l.__data_;
  v110.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
  *&v110.__r_.__value_.__l.__data_ = v85;
  v84->__r_.__value_.__l.__size_ = 0;
  v84->__r_.__value_.__r.__words[2] = 0;
  v84->__r_.__value_.__r.__words[0] = 0;
  v86 = std::string::append(&v110, "createRequest");
  v87 = *&v86->__r_.__value_.__l.__data_;
  __s.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
  *&__s.__r_.__value_.__l.__data_ = v87;
  v86->__r_.__value_.__l.__size_ = 0;
  v86->__r_.__value_.__r.__words[2] = 0;
  v86->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v83, &__s, 0, "Request Dictionary:", v7);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

LABEL_123:
  if (ACFUError::hasError((a1 + 24)))
  {
    CFRelease(v7);
    return 0;
  }

  return v7;
}

void sub_2984C2374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ACFURestoreHost::validateDeviceInfoAgainstBuildIdentity(const __CFString ***a1, const __CFString *a2, const __CFDictionary *a3, const __CFDictionary *a4, uint64_t a5)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
    v80 = 1;
    return v80 & 1;
  }

  v7 = a5;
  cf2 = 0;
  cf = 0;
  v88 = (a5 + 8);
  while (1)
  {
    isa = a2->isa;
    info = a2->info;
    if (a2->isa != info)
    {
      while (*isa != *v5)
      {
        if (++isa == info)
        {
          goto LABEL_33;
        }
      }
    }

    if (isa == info)
    {
      goto LABEL_33;
    }

    ACFUCommon::stringFromCFString(v94, *v5);
    Value = CFDictionaryGetValue(a3, *v5);
    if (!Value)
    {
      LogInstance = ACFULogging::getLogInstance(0);
      v22 = v94;
      if (v95 < 0)
      {
        v22 = v94[0];
      }

      v23 = "%s::%s: tag '%s' not found in device info, skipping validation\n";
      goto LABEL_27;
    }

    v13 = CFDictionaryGetValue(a4, *v5);
    v14 = v13;
    if (!v13)
    {
      LogInstance = ACFULogging::getLogInstance(0);
      v22 = v94;
      if (v95 < 0)
      {
        v22 = v94[0];
      }

      v23 = "%s::%s: tag '%s' not found in build identity, skipping validation\n";
      goto LABEL_27;
    }

    v15 = *v88;
    if (!*v88)
    {
      goto LABEL_18;
    }

    v16 = *v5;
    v17 = v88;
    do
    {
      v18 = v15[4];
      v19 = v18 >= v16;
      v20 = v18 < v16;
      if (v19)
      {
        v17 = v15;
      }

      v15 = v15[v20];
    }

    while (v15);
    if (v17 == v88 || v16 < v17[4])
    {
LABEL_18:
      LogInstance = ACFULogging::getLogInstance(v13);
      v22 = v94;
      if (v95 < 0)
      {
        v22 = v94[0];
      }

      v23 = "%s::%s: tag '%s' not found in tss-request map, skipping validation\n";
LABEL_27:
      v24 = 3;
      ACFULogging::handleMessage(LogInstance, 3, v23, "ACFURestoreHost", "validateDeviceInfoAgainstBuildIdentity", v22);
      v25 = 0;
      goto LABEL_28;
    }

    v85 = CFGetTypeID(Value);
    v82 = CFGetTypeID(v14);
    v26 = std::map<__CFString const*,std::string>::at(v7, v5);
    v27 = *v26;
    v28 = ACFULogging::getLogInstance(v26);
    v83 = a4;
    v84 = v7;
    if (v95 >= 0)
    {
      v29 = v94;
    }

    else
    {
      v29 = v94[0];
    }

    ACFUCommon::cfTypeDescription(&v92, v85, 1);
    v30 = SHIBYTE(v93);
    v31 = v92;
    ACFUCommon::cfTypeDescription(&__p, v27, 1);
    v32 = &v92;
    if (v30 < 0)
    {
      v32 = v31;
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    ACFULogging::handleMessage(v28, 4, "%s::%s: attempting to convert tag '%s' from device info type (%s) to tss-request map type (%s)\n", "ACFURestoreHost", "validateDeviceInfoAgainstBuildIdentity", v29, v32, p_p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v93) < 0)
    {
      operator delete(v92);
      if (!cf)
      {
        goto LABEL_49;
      }

LABEL_48:
      CFRelease(cf);
      goto LABEL_49;
    }

    if (cf)
    {
      goto LABEL_48;
    }

LABEL_49:
    v34 = ACFURestoreHost::convertCFType(Value, v27);
    cf = v34;
    if (v34)
    {
      v35 = ACFULogging::getLogInstance(v34);
      if (v95 >= 0)
      {
        v36 = v94;
      }

      else
      {
        v36 = v94[0];
      }

      ACFUCommon::cfTypeDescription(&v92, v82, 1);
      v37 = SHIBYTE(v93);
      v38 = v92;
      ACFUCommon::cfTypeDescription(&__p, v27, 1);
      v39 = &v92;
      if (v37 < 0)
      {
        v39 = v38;
      }

      v40 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v40 = __p.__r_.__value_.__r.__words[0];
      }

      ACFULogging::handleMessage(v35, 4, "%s::%s: attempting to convert tag '%s' from build identity type (%s) to tss-request map type (%s)\n", "ACFURestoreHost", "validateDeviceInfoAgainstBuildIdentity", v36, v39, v40);
      a4 = v83;
      v7 = v84;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v93) < 0)
      {
        operator delete(v92);
      }

      if (cf2)
      {
        CFRelease(cf2);
      }

      cf2 = ACFURestoreHost::convertCFType(v14, v27);
      if (cf2)
      {
        v41 = CFEqual(cf, cf2);
        if (v41)
        {
          v24 = 0;
          v25 = 1;
          goto LABEL_28;
        }

        v54 = ACFULogging::getLogInstance(v41);
        if (v95 >= 0)
        {
          v55 = v94;
        }

        else
        {
          v55 = v94[0];
        }

        ACFULogging::handleMessage(v54, 2, "%s::%s: tag '%s' has different values in device info and build identity\n", "ACFURestoreHost", "validateDeviceInfoAgainstBuildIdentity", v55);
        v57 = ACFULogging::getLogInstance(v56);
        std::string::basic_string[abi:ne200100]<0>(&v90, "ACFURestoreHost");
        v58 = std::string::append(&v90, "::");
        v59 = *&v58->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v59;
        v58->__r_.__value_.__l.__size_ = 0;
        v58->__r_.__value_.__r.__words[2] = 0;
        v58->__r_.__value_.__r.__words[0] = 0;
        v60 = std::string::append(&__p, "validateDeviceInfoAgainstBuildIdentity");
        v61 = *&v60->__r_.__value_.__l.__data_;
        v93 = v60->__r_.__value_.__r.__words[2];
        v92 = v61;
        v60->__r_.__value_.__l.__size_ = 0;
        v60->__r_.__value_.__r.__words[2] = 0;
        v60->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType(v57, &v92, 2, "device info value: ", Value);
        if (SHIBYTE(v93) < 0)
        {
          operator delete(v92);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        v63 = ACFULogging::getLogInstance(v62);
        std::string::basic_string[abi:ne200100]<0>(&v90, "ACFURestoreHost");
        v64 = std::string::append(&v90, "::");
        v65 = *&v64->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v65;
        v64->__r_.__value_.__l.__size_ = 0;
        v64->__r_.__value_.__r.__words[2] = 0;
        v64->__r_.__value_.__r.__words[0] = 0;
        v66 = std::string::append(&__p, "validateDeviceInfoAgainstBuildIdentity");
        v67 = *&v66->__r_.__value_.__l.__data_;
        v93 = v66->__r_.__value_.__r.__words[2];
        v92 = v67;
        v66->__r_.__value_.__l.__size_ = 0;
        v66->__r_.__value_.__r.__words[2] = 0;
        v66->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType(v63, &v92, 2, "device info value converted: ", cf);
        if (SHIBYTE(v93) < 0)
        {
          operator delete(v92);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        v69 = ACFULogging::getLogInstance(v68);
        std::string::basic_string[abi:ne200100]<0>(&v90, "ACFURestoreHost");
        v70 = std::string::append(&v90, "::");
        v71 = *&v70->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v71;
        v70->__r_.__value_.__l.__size_ = 0;
        v70->__r_.__value_.__r.__words[2] = 0;
        v70->__r_.__value_.__r.__words[0] = 0;
        v72 = std::string::append(&__p, "validateDeviceInfoAgainstBuildIdentity");
        v73 = *&v72->__r_.__value_.__l.__data_;
        v93 = v72->__r_.__value_.__r.__words[2];
        v92 = v73;
        v72->__r_.__value_.__l.__size_ = 0;
        v72->__r_.__value_.__r.__words[2] = 0;
        v72->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType(v69, &v92, 2, "build identity value: ", v14);
        if (SHIBYTE(v93) < 0)
        {
          operator delete(v92);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        v75 = ACFULogging::getLogInstance(v74);
        std::string::basic_string[abi:ne200100]<0>(&v90, "ACFURestoreHost");
        v76 = std::string::append(&v90, "::");
        v77 = *&v76->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v77;
        v76->__r_.__value_.__l.__size_ = 0;
        v76->__r_.__value_.__r.__words[2] = 0;
        v76->__r_.__value_.__r.__words[0] = 0;
        v78 = std::string::append(&__p, "validateDeviceInfoAgainstBuildIdentity");
        v79 = *&v78->__r_.__value_.__l.__data_;
        v93 = v78->__r_.__value_.__r.__words[2];
        v92 = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType(v75, &v92, 2, "build identity value converted: ", cf2);
        if (SHIBYTE(v93) < 0)
        {
          operator delete(v92);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v48 = ACFULogging::getLogInstance(0);
        if (v95 >= 0)
        {
          v49 = v94;
        }

        else
        {
          v49 = v94[0];
        }

        ACFUCommon::cfTypeDescription(&v92, v82, 1);
        v50 = SHIBYTE(v93);
        v51 = v92;
        ACFUCommon::cfTypeDescription(&__p, v27, 1);
        v52 = &v92;
        if (v50 < 0)
        {
          v52 = v51;
        }

        v53 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v53 = __p.__r_.__value_.__r.__words[0];
        }

        ACFULogging::handleMessage(v48, 2, "%s::%s: failed to convert tag '%s' from build identity type (%s) to tss-request map type (%s)\n", "ACFURestoreHost", "validateDeviceInfoAgainstBuildIdentity", v49, v52, v53);
        a4 = v83;
        v7 = v84;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v93) < 0)
        {
          operator delete(v92);
        }

        cf2 = 0;
      }
    }

    else
    {
      v42 = ACFULogging::getLogInstance(0);
      if (v95 >= 0)
      {
        v43 = v94;
      }

      else
      {
        v43 = v94[0];
      }

      ACFUCommon::cfTypeDescription(&v92, v85, 1);
      v44 = SHIBYTE(v93);
      v45 = v92;
      ACFUCommon::cfTypeDescription(&__p, v27, 1);
      v46 = &v92;
      if (v44 < 0)
      {
        v46 = v45;
      }

      v47 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v47 = __p.__r_.__value_.__r.__words[0];
      }

      ACFULogging::handleMessage(v42, 2, "%s::%s: failed to convert tag '%s' from device info type (%s) to tss-request map type (%s)\n", "ACFURestoreHost", "validateDeviceInfoAgainstBuildIdentity", v43, v46, v47);
      a4 = v83;
      v7 = v84;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v93) < 0)
      {
        operator delete(v92);
      }

      cf = 0;
    }

    v25 = 0;
    v24 = 8;
LABEL_28:
    if ((v95 & 0x80000000) == 0)
    {
      break;
    }

    operator delete(v94[0]);
    if ((v25 & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_33:
    if (++v5 == v6)
    {
      v80 = 1;
      goto LABEL_119;
    }
  }

  if (v25)
  {
    goto LABEL_33;
  }

LABEL_32:
  if (v24 < 4)
  {
    goto LABEL_33;
  }

  v80 = 0;
LABEL_119:
  if (cf)
  {
    CFRelease(cf);
  }

  if (cf2)
  {
    CFRelease(cf2);
  }

  return v80 & 1;
}

void sub_2984C2E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 121) < 0)
  {
    operator delete(*(v33 - 144));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFURestoreHost::populateDictFromIdentity(unint64_t **a1, uint64_t a2, CFDictionaryRef theDict, __CFDictionary *a4)
{
  v4 = *a1;
  if (*a1 != a1[1])
  {
    v8 = (a2 + 8);
    do
    {
      v9 = *v8;
      v10 = *v4;
      if (!*v8)
      {
        goto LABEL_11;
      }

      v11 = v8;
      do
      {
        v12 = v9[4];
        v13 = v12 >= v10;
        v14 = v12 < v10;
        if (v13)
        {
          v11 = v9;
        }

        v9 = v9[v14];
      }

      while (v9);
      if (v11 != v8 && v10 >= v11[4])
      {
        Value = CFDictionaryGetValue(theDict, v10);
        if (Value)
        {
          v19 = Value;
          v20 = std::map<__CFString const*,std::string>::at(a2, v4);
          result = ACFURestoreHost::convertCFType(v19, *v20);
          if (!result)
          {
            return result;
          }

          v22 = result;
          CFDictionarySetValue(a4, *v4, result);
          CFRelease(v22);
          goto LABEL_20;
        }

        ACFUCommon::stringFromCFString(__p, *v4);
        LogInstance = ACFULogging::getLogInstance(v23);
        if (v28 >= 0)
        {
          v25 = __p;
        }

        else
        {
          v25 = __p[0];
        }

        ACFULogging::handleMessage(LogInstance, 3, "%s::%s: tag '%s' not found in identity dictionary, ignoring\n", "ACFURestoreHost", "populateDictFromIdentity", v25);
      }

      else
      {
LABEL_11:
        ACFUCommon::stringFromCFString(__p, *v4);
        v16 = ACFULogging::getLogInstance(v15);
        if (v28 >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        ACFULogging::handleMessage(v16, 3, "%s::%s: tag '%s' not found in tss-request map, ignoring\n", "ACFURestoreHost", "populateDictFromIdentity", v17);
      }

      if (v28 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_20:
      ++v4;
    }

    while (v4 != a1[1]);
  }

  return 1;
}

void sub_2984C3100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ACFURestoreHost::createBoolFromData(uint64_t *__return_ptr a1@<X8>, ACFURestoreHost *this@<X0>)
{
  v4 = *MEMORY[0x29EDB8EF8];
  otherNumber = 0;
  valuePtr = 0;
  v5 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, &valuePtr);
  if (v5)
  {
    v7 = v5;
    Num64Num32FromData = ACFURestoreHost::createNum64Num32FromData(this, &otherNumber, v6);
    v9 = Num64Num32FromData;
    if (Num64Num32FromData)
    {
      v10 = otherNumber;
      if (CFNumberCompare(v7, otherNumber, 0))
      {
        v4 = *MEMORY[0x29EDB8F00];
      }
    }

    else
    {
      LogInstance = ACFULogging::getLogInstance(Num64Num32FromData);
      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: CFData to CFBoolean conversion failure\n", "ACFURestoreHost", "createBoolFromData");
      v10 = otherNumber;
    }

    v11 = !v9;
    CFRelease(v7);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    ACFURestoreHost::createBoolFromData(0);
    v11 = 1;
  }

  *a1 = v4;
  *(a1 + 8) = v11;
}

CFErrorRef ACFURestoreHost::getError(ACFURestoreHost *this)
{
  if (!ACFUError::hasError((this + 24)))
  {
    return 0;
  }

  return ACFUError::getCFError((this + 24));
}

void ACFURestoreHost::~ACFURestoreHost(ACFURestoreHost *this)
{
  *this = &unk_2A1EE8780;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
    *(this + 2) = 0;
  }

  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(this + 200, *(this + 26));
  std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::destroy(this + 160, *(this + 21));
  v3 = *(this + 17);
  if (v3)
  {
    *(this + 18) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    *(this + 6) = v7;
    operator delete(v7);
  }

  ACFUError::~ACFUError(this + 3);
}

uint64_t ACFURestoreHost::init(const void **this, const __CFDictionary *a2, const __CFString *a3)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: ACFU Version: %s\n", "ACFURestoreHost", "init", "AppleConvergedFirmwareUpdater-454.0.1~2939");
  if (a2)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v8)
  {
    v11 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v11, 2, "%s::%s: bad parameter: options %p, domain %p\n", "ACFURestoreHost", "init", a2, a3);
  }

  else
  {
    this[2] = a2;
    AMSupportSafeRetain();
    AppendedDomain = ACFUError::createAppendedDomain(this + 3, a3);
  }

  if (this[5] == this[6] || this[17] == this[18] || this[8] == this[9] || this[11] == this[12] || this[14] == this[15] || !this[22] || !this[27] || !this[28])
  {
    v12 = ACFULogging::getLogInstance(AppendedDomain);
    ACFULogging::handleMessage(v12, 2, "%s::%s: initialization failure due to incomplete parameters\n", "ACFURestoreHost", "init");
    return 0;
  }

  return v9;
}

CFTypeRef ACFURestoreHost::convertCFType(__CFString *this, ACFUCommon *a2)
{
  v4 = CFGetTypeID(this);
  LogInstance = ACFULogging::getLogInstance(v4);
  ACFUCommon::cfTypeDescription(&cf, a2, 1);
  data_high = SHIBYTE(cf.data);
  isa = cf.isa;
  ACFUCommon::cfTypeDescription(__p, v4, 1);
  if (data_high >= 0)
  {
    p_cf = &cf;
  }

  else
  {
    p_cf = isa;
  }

  if (v32 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  ACFULogging::handleMessage(LogInstance, 4, "%s::%s: desired type %s, received type %s\n", "ACFURestoreHost", "convertCFType", p_cf, v9);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(cf.data) < 0)
  {
    operator delete(cf.isa);
  }

  if (v4 == a2)
  {
    v11 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v11, 4, "%s::%s: no conversion necessary\n", "ACFURestoreHost", "convertCFType");
    return CFRetain(this);
  }

  if (CFNumberGetTypeID() != a2 || (v13 = CFStringGetTypeID(), v4 != v13))
  {
    if (CFNumberGetTypeID() == a2 && (v18 = CFDataGetTypeID(), v4 == v18))
    {
      v19 = ACFULogging::getLogInstance(v18);
      ACFULogging::handleMessage(v19, 4, "%s::%s: converting from data to number\n", "ACFURestoreHost", "convertCFType");
      cf.isa = 0;
      Num64Num32FromData = ACFURestoreHost::createNum64Num32FromData(this, &cf, v20);
      if (!Num64Num32FromData)
      {
        v22 = ACFULogging::getLogInstance(Num64Num32FromData);
        ACFULogging::handleMessage(v22, 2, "%s::%s: failed to convert from number to data\n");
        goto LABEL_21;
      }
    }

    else
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID != a2 || (TypeID = CFDataGetTypeID(), v4 != TypeID))
      {
        v26 = ACFULogging::getLogInstance(TypeID);
        ACFUCommon::cfTypeDescription(&cf, a2, 1);
        v27 = SHIBYTE(cf.data);
        v28 = cf.isa;
        ACFUCommon::cfTypeDescription(__p, v4, 1);
        if (v27 >= 0)
        {
          v29 = &cf;
        }

        else
        {
          v29 = v28;
        }

        if (v32 >= 0)
        {
          v30 = __p;
        }

        else
        {
          v30 = __p[0];
        }

        ACFULogging::handleMessage(v26, 2, "%s::%s: unsupported conversion: desired type %s, received type %s\n", "ACFURestoreHost", "convertCFType", v29, v30);
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(cf.data) < 0)
        {
          operator delete(cf.isa);
        }

        return 0;
      }

      v24 = ACFULogging::getLogInstance(TypeID);
      ACFULogging::handleMessage(v24, 4, "%s::%s: converting from data to BOOLean\n", "ACFURestoreHost", "convertCFType");
      ACFURestoreHost::createBoolFromData(&cf, this);
      if (LOBYTE(cf.info) == 1)
      {
        ACFURestoreHost::convertCFType(v25);
        return 0;
      }
    }

    return cf.isa;
  }

  v14 = ACFULogging::getLogInstance(v13);
  ACFULogging::handleMessage(v14, 4, "%s::%s: converting from string to number\n", "ACFURestoreHost", "convertCFType");
  cf.isa = 0;
  v16 = ACFURestoreHost::createNum32FromString(this, &cf, v15);
  if (v16)
  {
    return cf.isa;
  }

  v17 = ACFULogging::getLogInstance(v16);
  ACFULogging::handleMessage(v17, 2, "%s::%s: failed to convert from string to number\n");
LABEL_21:
  result = cf.isa;
  if (!cf.isa)
  {
    return result;
  }

  CFRelease(cf.isa);
  return 0;
}

void sub_2984C3730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFURestoreHost::createNum32FromString(const __CFString *this, const __CFString *a2, const __CFNumber **a3)
{
  valuePtr = 0;
  ACFUCommon::stringFromCFString(&__str, this);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    valuePtr = std::stoi(&__str, 0, 0);
    v6 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
    a2->isa = v6;
    if (v6)
    {
      v7 = 1;
      goto LABEL_6;
    }

    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to create CF number from int value\n");
  }

  else
  {
    v9 = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(v9, 2, "%s::%s: failed to get string\n");
  }

  v7 = 0;
LABEL_6:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v7;
}

BOOL ACFURestoreHost::createNum64Num32FromData(ACFURestoreHost *this, const __CFData *a2, const __CFNumber **a3)
{
  Length = CFDataGetLength(this);
  BytePtr = CFDataGetBytePtr(this);
  if (Length - 1 >= 8)
  {
    ACFURestoreHost::createNum64Num32FromData(Length);
  }

  else
  {
    if (Length < 5)
    {
      valuePtr = 0;
      memcpy(&valuePtr, BytePtr, Length);
      v7 = *MEMORY[0x29EDB8ED8];
      p_valuePtr = &valuePtr;
      v9 = kCFNumberSInt32Type;
    }

    else
    {
      __dst = 0;
      memcpy(&__dst, BytePtr, Length);
      v7 = *MEMORY[0x29EDB8ED8];
      p_valuePtr = &__dst;
      v9 = kCFNumberSInt64Type;
    }

    *a2 = CFNumberCreate(v7, v9, p_valuePtr);
  }

  return Length - 1 < 8;
}

void ACFURestoreHost::ACFURestoreHost(ACFURestoreHost *this)
{
  *this = &unk_2A1EE8780;
  *(this + 1) = @"ACFU,RootedFW";
  *(this + 2) = 0;
  ACFUError::ACFUError((this + 24), @"RestoreHost");
  *(this + 21) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 19) = 0;
  *(this + 20) = this + 168;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = this + 208;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

uint64_t *std::map<__CFString const*,unsigned long>::map[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::map<__CFString const*,unsigned long>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__CFString const*,unsigned long>,std::__tree_node<std::__value_type<__CFString const*,unsigned long>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::map<__CFString const*,unsigned long>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<__CFString const*,unsigned long>,std::__tree_node<std::__value_type<__CFString const*,unsigned long>,void *> *,long>>>(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,unsigned long> const&>(v5, (v5 + 8), v4 + 4, v4 + 2);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,unsigned long> const&>(uint64_t ***a1, void *a2, unint64_t *a3, _OWORD *a4)
{
  v6 = std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__find_equal<__CFString const*>(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    *(v7 + 2) = *a4;
    std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__insert_node_at(a1, v11, v8, v7);
  }

  return v7;
}

void *std::__tree<std::__value_type<__CFString const*,unsigned long>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,unsigned long>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,unsigned long>>>::__find_equal<__CFString const*>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void ACFURestoreHost::getTags(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get device info list\n", "ACFURestoreHost", "getTags");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create response tag list\n", "ACFURestoreHost", "getTags");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create build identity tag list\n", "ACFURestoreHost", "getTags");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to allocate output dictionary\n", "ACFURestoreHost", "getTags");
}

void ACFURestoreHost::copyFirmware(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: updater failed to find firmware data with bundleData\n", "ACFURestoreHost", "copyFirmware");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: copyFirmware: failed to create src rooted FW URL\n", "ACFURestoreHost", "copyFirmware");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_11();
  ACFULogging::handleMessage(v1, 2, "%s::%s: failed to create personalized rooted FW URL (status: %d)\n", v2, v3, v4);
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get src bundle URL\n", "ACFURestoreHost", "copyFirmware");
}

void ACFURestoreHost::copyFirmware(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create mutable copy of source device firmware data dictionary (type: %hhu)\n", "ACFURestoreHost", "copyFirmware", 1);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed due to incompatible bundle data dictionary\n", "ACFURestoreHost", "copyFirmware");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to allocate source bundle firmware path dictionary (type: %hhu)\n", "ACFURestoreHost", "copyFirmware", 0);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to allocate bundle firmware path dictionary (type: %hhu)\n", "ACFURestoreHost", "copyFirmware", 0);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to allocate data for personalized path\n", "ACFURestoreHost", "copyFirmware");
}

void ACFURestoreHost::getPathFromBuildID(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  v3 = CFGetTypeID(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: path has wrong type %lu\n", "ACFURestoreHost", "getPathFromBuildID", v3);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get dict entry\n", "ACFURestoreHost", "getPathFromBuildID");
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to create build ID key path\n", "ACFURestoreHost", "getPathFromBuildID");
}

void ACFURestoreHost::copyToPersonalizedBundlePath(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_11();
  ACFULogging::handleMessage(v1, 2, "%s::%s: failed to create destination path URL (status: %d)\n", v2, v3, v4);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_11();
  ACFULogging::handleMessage(v1, 2, "%s::%s: failed to create directory @ dstPathURL (status: %d)\n", v2, v3, v4);
}

{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_11();
  ACFULogging::handleMessage(v1, 2, "%s::%s: failed to copy data to dstPathURL (status: %d)\n", v2, v3, v4);
}

{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: destination path does not exist after creation attempt (status: %d)\n", "ACFURestoreHost", "copyToPersonalizedBundlePath", 0);
}

void ACFURestoreHost::createRequest(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to validate device identity tags\n", "ACFURestoreHost", "createRequest");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to build parameters out of build identity\n", "ACFURestoreHost", "createRequest");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to build parameters out of device identity\n", "ACFURestoreHost", "createRequest");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: production mode not present in device info. This is fatal!\n", "ACFURestoreHost", "createRequest");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: security mode not present in device info. This is fatal!\n", "ACFURestoreHost", "createRequest");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Invalid FDR trust object hash in updater options override\n", "ACFURestoreHost", "createRequest");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Invalid FDR trust object hash in client updater override\n", "ACFURestoreHost", "createRequest");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to create empty trust object hash\n", "ACFURestoreHost", "createRequest");
}

{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to get build identity dict from options\n", "ACFURestoreHost", "createRequest");
}

BOOL ACFURestoreHost::createRequest(uint64_t a1, ACFUError *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to allocate output dictionary\n", "ACFURestoreHost", "createRequest");
  return ACFUError::hasError(a2);
}

void ACFURestoreHost::createNum64Num32FromData(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  OUTLINED_FUNCTION_0_11();
  ACFULogging::handleMessage(v1, 2, "%s::%s: data length %ld is not within range\n", v2, v3, v4);
}

void ACFUErrorContainer::ACFUErrorContainer(std::string *this, __int128 *a2, std::string::size_type a3, std::string::size_type a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  this[1].__r_.__value_.__r.__words[0] = a3;
  this[1].__r_.__value_.__l.__size_ = a4;
  AMSupportSafeRetain();
}

void sub_2984C4918(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ACFUErrorContainer::~ACFUErrorContainer(ACFUErrorContainer *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
    *(this + 4) = 0;
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void ACFUError::ACFUError(ACFUError *this, const __CFString *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  v5 = operator new(0x18uLL);
  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
  v6 = 0;
  std::unique_ptr<std::vector<ACFUErrorContainer>>::reset[abi:ne200100](v4, v5);
  std::unique_ptr<std::vector<ACFUErrorContainer>>::reset[abi:ne200100](&v6, 0);
  *this = a2;
  AMSupportSafeRetain();
}

CFErrorRef ACFUError::getCFError(ACFUError *this)
{
  if (**(this + 1) == *(*(this + 1) + 8))
  {
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 4, "%s::%s: Looks like there is no error present; Nothing to be done here.\n", "ACFUError", "getCFError");
    return 0;
  }

  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v4 = *(*(this + 1) + 8);
  v5 = (v4 - 40);
  if (*(v4 - 17) < 0)
  {
    v5 = *v5;
  }

  v6 = CFStringCreateWithCString(v2, v5, 0x8000100u);
  if (v6)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB8F38], v6);
    v8 = *(*(this + 1) + 8);
    if (*(v8 - 8))
    {
      v9 = ACFULogging::getLogInstance(v7);
      ACFULogging::handleMessage(v9, 3, "%s::%s: Populating underlying error\n", "ACFUError", "getCFError");
      CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB8F68], *(*(*(this + 1) + 8) - 8));
      v8 = *(*(this + 1) + 8);
    }

    v10 = CFErrorCreate(v2, *this, *(v8 - 16), Mutable);
    if (v10)
    {
      if (!Mutable)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v13 = "%s::%s: failed to create CFError object\n";
  }

  else
  {
    v13 = "%s::%s: failed to create CFString for error object\n";
  }

  ACFUError::getCFError(v13);
  v10 = 0;
  if (Mutable)
  {
LABEL_9:
    CFRelease(Mutable);
  }

LABEL_10:
  if (v6)
  {
    CFRelease(v6);
  }

  return v10;
}

uint64_t ACFUError::addError(uint64_t a1, uint64_t a2, std::string::size_type a3, std::string::size_type a4)
{
  v7 = a4;
  v8 = a3;
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 16))
  {
    result = std::vector<ACFUErrorContainer>::__emplace_back_slow_path<std::string const&,long &,__CFError *&>(*(a1 + 8), a2, &v8, &v7);
  }

  else
  {
    std::allocator<ACFUErrorContainer>::construct[abi:ne200100]<ACFUErrorContainer,std::string const&,long &,__CFError *&>(*(a1 + 8), *(v4 + 8), a2, &v8, &v7);
    result = v5 + 40;
    *(v4 + 8) = v5 + 40;
  }

  *(v4 + 8) = result;
  return result;
}

const void *ACFUError::createAppendedDomain(const void **this, const __CFString *a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 3, MEMORY[0x29EDB9000]);
  CFArrayAppendValue(Mutable, *this);
  CFArrayAppendValue(Mutable, a2);
  Copy = CFArrayCreateCopy(v4, Mutable);
  if (*this)
  {
    CFRelease(*this);
    *this = 0;
  }

  *this = CFStringCreateByCombiningStrings(v4, Copy, @"::");
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  return *this;
}

void ACFUError::~ACFUError(void ***this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
    *this = 0;
  }

  std::unique_ptr<std::vector<ACFUErrorContainer>>::reset[abi:ne200100](this + 1, 0);
}

void std::unique_ptr<std::vector<ACFUErrorContainer>>::reset[abi:ne200100](void ***a1, void **a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<ACFUErrorContainer>::__destroy_vector::operator()[abi:ne200100](&v3);
    operator delete(v2);
  }
}

void std::vector<ACFUErrorContainer>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        ACFUErrorContainer::~ACFUErrorContainer((v4 - 40));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<ACFUErrorContainer>::__emplace_back_slow_path<std::string const&,long &,__CFError *&>(uint64_t a1, uint64_t a2, std::string::size_type *a3, std::string::size_type *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    std::vector<__CFString const*>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v10 = 0x666666666666666;
  }

  else
  {
    v10 = v5;
  }

  v21 = a1;
  if (v10)
  {
    v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFUErrorContainer>>(a1, v10);
  }

  else
  {
    v11 = 0;
  }

  v18 = v11;
  v19 = (v11 + 40 * v4);
  *(&v20 + 1) = v11 + 40 * v10;
  std::allocator<ACFUErrorContainer>::construct[abi:ne200100]<ACFUErrorContainer,std::string const&,long &,__CFError *&>(a1, v19, a2, a3, a4);
  *&v20 = v19 + 40;
  v12 = *(a1 + 8);
  v13 = v19 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ACFUErrorContainer>,ACFUErrorContainer*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<ACFUErrorContainer>::~__split_buffer(&v18);
  return v17;
}

void sub_2984C4F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ACFUErrorContainer>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<ACFUErrorContainer>::construct[abi:ne200100]<ACFUErrorContainer,std::string const&,long &,__CFError *&>(int a1, std::string *this, uint64_t a3, std::string::size_type *a4, std::string::size_type *a5)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  ACFUErrorContainer::ACFUErrorContainer(this, &__p, *a4, *a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2984C4FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<ACFUErrorContainer>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x666666666666667)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(40 * a2);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ACFUErrorContainer>,ACFUErrorContainer*>(int a1, ACFUErrorContainer *this, ACFUErrorContainer *a3, uint64_t a4)
{
  if (this != a3)
  {
    v6 = this;
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = v6 + v7;
      if (*(v6 + v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        v8->__r_.__value_.__r.__words[2] = *(v9 + 2);
        *&v8->__r_.__value_.__l.__data_ = v10;
      }

      *(a4 + v7 + 24) = *(v6 + v7 + 24);
      v7 += 40;
    }

    while ((v6 + v7) != a3);
    while (v6 != a3)
    {
      ACFUErrorContainer::~ACFUErrorContainer(v6);
      v6 = (v6 + 40);
    }
  }
}

void sub_2984C50E4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 + v2 - 40);
    v5 = -v2;
    do
    {
      ACFUErrorContainer::~ACFUErrorContainer(v4);
      v4 = (v6 - 40);
      v5 += 40;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ACFUErrorContainer>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    ACFUErrorContainer::~ACFUErrorContainer((i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t ACFULogging::initLog(ACFULogging *this, CFDictionaryRef theDict, void (*a3)(void *, const char *), void *a4)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Options");
    if (Value && (v9 = Value, TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(v9)) && (v11 = CFDictionaryGetValue(v9, @"RestoreInternal")) != 0)
    {
      v12 = v11;
      v13 = CFGetTypeID(v11);
      v14 = 2;
      if (v13 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(v12) == 1)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }
      }
    }

    else
    {
      v14 = 2;
    }

    *(this + 9) = a3;
    *(this + 10) = a4;
    ACFUCommon::parseDebugArgs(&v19, theDict, "logLevel");
    v16 = HIDWORD(v19);
    if (HIDWORD(v19) == 4006)
    {
      ACFULogging::getLogInstance(v15);
      ACFULogging::handleMessage(&unk_2A13B95B0, 3, "%s::%s: Key: %s not found while parsing debugArgs, but this is not error\n");
LABEL_16:
      v17 = v14;
      goto LABEL_17;
    }

    if (HIDWORD(v19))
    {
      ACFULogging::getLogInstance(v15);
      ACFULogging::handleMessage(&unk_2A13B95B0, 0, "%s::%s: Failed to parse debugArgs\n", "ACFULogging", "initLog");
      return v16;
    }

    v17 = v19;
    if (v19 >= 5)
    {
      ACFULogging::getLogInstance(v15);
      ACFULogging::handleMessage(&unk_2A13B95B0, 3, "%s::%s: Unexpected value: %u for Key: %s\n");
      goto LABEL_16;
    }
  }

  else
  {
    *(this + 9) = a3;
    *(this + 10) = a4;
    v17 = 2;
  }

LABEL_17:
  v16 = 0;
  *(this + 22) = v17;
  return v16;
}

void *ACFULogging::getLogInstance(ACFULogging *this)
{
  if ((atomic_load_explicit(_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    ACFULogging::getLogInstance();
  }

  return &unk_2A13B95B0;
}

void ACFULogging::handleMessage(uint64_t a1, signed int a2, const char *a3, ...)
{
  va_start(va, a3);
  if (*(a1 + 72))
  {
    if (*(a1 + 88) < a2)
    {
      return;
    }
  }

  else if (!os_log_type_enabled(*(a1 + 3168), *(a1 + a2)))
  {
    return;
  }

  std::mutex::lock((a1 + 8));
  if (vsnprintf((a1 + 92), 0xC00uLL, a3, va) >= 0xC01)
  {
    strcpy((a1 + 3099), "\n------ Internal buffer is too small, truncating bytes! ------\n");
  }

  ACFULogging::log(a1, *(a1 + a2), a1 + 92);
  std::mutex::unlock((a1 + 8));
}

void ACFULogging::ACFULogging(ACFULogging *this)
{
  *this = 17830144;
  *(this + 4) = 2;
  *(this + 1) = 850045863;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = 0;
  *(this + 22) = 2;
  bzero(this + 92, 0xC00uLL);
  *(this + 396) = 0;
  v2 = os_log_create("com.apple.AppleConvergedFirmwareUpdater", "service");
  v3 = *(this + 396);
  *(this + 396) = v2;
}

void ACFULogging::log(ACFULogging *this, os_log_type_t a2, uint64_t type)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = *(this + 9);
  if (v4)
  {
    v5 = *(this + 10);

    v4(v5, type);
  }

  else
  {
    v7 = *(this + 396);
    if (os_log_type_enabled(v7, a2))
    {
      v8 = 136315138;
      v9 = type;
      _os_log_impl(&dword_29849C000, v7, a2, "%s", &v8, 0xCu);
    }
  }
}

void ACFULogging::handleMessageBinary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v8 = a3;
  v10 = a1;
  v40 = *MEMORY[0x29EDCA608];
  if (*(a1 + 72))
  {
    if (*(a1 + 88) < a3)
    {
      return;
    }
  }

  else if (!os_log_type_enabled(*(a1 + 3168), *(a1 + a3)))
  {
    return;
  }

  std::mutex::lock((v10 + 8));
  if (a5)
  {
    v11 = 0;
    if (a5 <= 0x3E80)
    {
      v12 = 0xFFFFFFFFLL;
    }

    else
    {
      v12 = 112;
    }

    if (a5 <= 0x3E80)
    {
      a6 = 0;
    }

    v35 = v10;
    v33 = v12;
    v34 = a6;
    do
    {
      v13 = a6 ^ 1;
      if (v11 != v12)
      {
        v13 = 1;
      }

      if ((v13 & 1) == 0)
      {
        if (*(a2 + 23) >= 0)
        {
          v14 = a2;
        }

        else
        {
          v14 = *a2;
        }

        ACFULogging::handleMessageInternal(v10, v8, "%s -- middle of buffer snipped -- \n", v14);
        v11 = a5 - 112;
      }

      v38 = 0u;
      memset(v39, 0, sizeof(v39));
      v37 = 0u;
      v15 = a5 - v11;
      if (a5 == v11)
      {
        *(v39 + 15) = 538976288;
        *&v16 = 0x2020202020202020;
        *(&v16 + 1) = 0x2020202020202020;
        v38 = v16;
        v39[0] = v16;
        v17 = 51;
        v37 = v16;
      }

      else
      {
        v18 = v8;
        if (v15 >= 0x10)
        {
          v15 = 16;
        }

        v19 = (a4 + v11);
        if (v15 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v15;
        }

        v21 = (54 - 3 * v20) - 3;
        v22 = (a4 + v11);
        v23 = v20;
        v24 = &v37 + 1;
        do
        {
          v25 = *v22++;
          v26 = a0123456789abcd[v25 & 0xF];
          *(v24 - 1) = a0123456789abcd[v25 >> 4];
          *v24 = v26;
          v24[1] = 32;
          v24 += 3;
          v21 += 3;
          --v23;
        }

        while (v23);
        memset(v24 - 1, 32, 3 * (17 - v20));
        v27 = &v37;
        v28 = 0;
        do
        {
          v30 = *v19++;
          v29 = v30;
          if ((v30 - 32) >= 0x5F)
          {
            v29 = 46;
          }

          *(v27 + v21) = v29;
          v27 = (v27 + 1);
          --v28;
          --v20;
        }

        while (v20);
        v17 = v21 - v28;
        v8 = v18;
        v10 = v35;
        a6 = v34;
        v12 = v33;
      }

      strcpy(&v37 + v17, "\r\n");
      if (*(a2 + 23) >= 0)
      {
        v31 = a2;
      }

      else
      {
        v31 = *a2;
      }

      ACFULogging::handleMessageInternal(v10, v8, "%s %04zx  %s", v31, v11, &v37);
      v11 += 16;
    }

    while (v11 < a5);
    if (a6)
    {
      if (*(a2 + 23) >= 0)
      {
        v32 = a2;
      }

      else
      {
        v32 = *a2;
      }

      ACFULogging::handleMessageInternal(v10, v8, "%s (snipped)\n", v32);
    }
  }

  std::mutex::unlock((v10 + 8));
}

void ACFULogging::handleMessageInternal(char *a1, int a2, const char *a3, ...)
{
  va_start(va, a3);
  if (vsnprintf(a1 + 92, 0xC00uLL, a3, va) >= 0xC01)
  {
    strcpy(a1 + 3099, "\n------ Internal buffer is too small, truncating bytes! ------\n");
  }

  ACFULogging::log(a1, a1[a2], (a1 + 92));
}

void ACFULogging::handleMessageCFType(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5)
{
  __p[0] = 0;
  __p[1] = 0;
  v17 = 0;
  if (*(a1 + 72))
  {
    if (*(a1 + 88) < a3)
    {
      return;
    }
  }

  else if (!os_log_type_enabled(*(a1 + 3168), *(a1 + a3)))
  {
    return;
  }

  std::mutex::lock((a1 + 8));
  if (a5)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v11 = CFStringCreateWithFormat(*MEMORY[0x29EDB8ED8], 0, @"%s: %s\n %@\n", v10, a4, a5);
    v12 = v11;
    if (v11)
    {
      ACFUCommon::stringFromCFString(&v14, v11);
      v17 = v15;
      *__p = v14;
      if (SHIBYTE(v15) < 0)
      {
        if (__p[1])
        {
          v13 = __p[0];
        }

        else
        {
          v13 = "UNDEF";
        }
      }

      else
      {
        v13 = __p;
        if (!HIBYTE(v15))
        {
          v13 = "UNDEF";
        }
      }

      ACFULogging::handleMessageInternal(a1, a3, "%s", v13);
      CFRelease(v12);
    }

    else
    {
      ACFULogging::handleMessageInternal(a1, 2, "%s::%s: failed to format CFString\n");
    }
  }

  else
  {
    ACFULogging::handleMessageInternal(a1, 2, "%s::%s: CFType to be printed is NULL\n");
  }

  std::mutex::unlock((a1 + 8));
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2984C5AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  std::mutex::unlock((v20 + 8));
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ACFULogging::getLogInstance()
{
  if (__cxa_guard_acquire(_MergedGlobals))
  {
    ACFULogging::ACFULogging(&unk_2A13B95B0);
    __cxa_atexit(ACFULogging::~ACFULogging, &unk_2A13B95B0, &dword_29849C000);

    __cxa_guard_release(_MergedGlobals);
  }
}

void ACFUFTABFile::create(const __CFData *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, ACFUFile **a4@<X8>)
{
  v8 = operator new(0x60uLL);
  ACFUFile::ACFUFile(v8);
  *v8 = &unk_2A1EE87D0;
  *(v8 + 7) = 0;
  *(v8 + 6) = 0;
  *(v8 + 5) = v8 + 48;
  *(v8 + 16) = 0;
  *(v8 + 11) = 0;
  *(v8 + 10) = 0;
  *(v8 + 9) = v8 + 80;
  if ((a2 & 2) != 0)
  {
    ACFUFTABFile::~ACFUFTABFile(v8);
    operator delete(v18);
    v20 = "%s::%s: function does not support memory optimization flow\n";
LABEL_18:
    LogInstance = ACFULogging::getLogInstance(v19);
    ACFULogging::handleMessage(LogInstance, 2, v20, "ACFUFTABFile", "create");
    v8 = 0;
LABEL_11:
    *a4 = v8;
    return;
  }

  v9 = ACFUFTABFile::init(v8, a1);
  if ((v9 & 1) == 0)
  {
    v19 = (*(*v8 + 56))(v8);
    v20 = "%s::%s: failed to open file\n";
    goto LABEL_18;
  }

  if (a3 == 0xFFFF)
  {
LABEL_9:
    if (a2 >= 3)
    {
      v22 = ACFULogging::getLogInstance(v9);
      ACFULogging::handleMessage(v22, 2, "%s::%s: invalid optimization mask\n");
    }

    else
    {
      *(v8 + 16) = a2;
      v14 = ACFULogging::getLogInstance(v9);
      ACFULogging::handleMessage(v14, 4, "%s::%s: Object initialized!\n");
    }

    goto LABEL_11;
  }

  ACFUFTABFile::embeddedFTABFilenamesForChipRevision(v23, a3);
  v11 = v23[0];
  v12 = v23[1];
  while (1)
  {
    if (v11 == v12)
    {
      v13 = ACFULogging::getLogInstance(v10);
      ACFULogging::handleMessage(v13, 4, "%s::%s: Didn't find a matching embedded ftab\n", "ACFUFTABFile", "create");
      v24 = v23;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
      goto LABEL_9;
    }

    v10 = (*(*v8 + 16))(v8, v11);
    if (v10)
    {
      break;
    }

    v11 += 24;
  }

  v15 = ACFULogging::getLogInstance(v10);
  v16 = v11;
  if (*(v11 + 23) < 0)
  {
    v16 = *v11;
  }

  ACFULogging::handleMessage(v15, 0, "%s::%s: Using embedded ftab '%s'\n", "ACFUFTABFile", "create", v16);
  v17 = (**v8)(v8, v11);
  ACFUFTABFile::create(v17, a2, 0xFFFF, a4);
  v24 = v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
  (*(*v8 + 56))(v8);
}

void ACFUFTABFile::embeddedFTABFilenamesForChipRevision(uint64_t *__return_ptr a1@<X8>, ACFUFTABFile *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (this >= 0x40)
  {
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Chip major revision seems unreasonable: %d\n");
  }

  else if ((this & 0xFu) >= 6)
  {
    v9 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v9, 2, "%s::%s: Chip minor revision seems unreasonable: %d\n");
  }

  else
  {
    v3 = (this >> 4) + 97;
    v4 = snprintf(__str, 5uLL, "_%c%cf", v3, this & 0xF | 0x30u);
    v5 = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(v5, 4, "%s::%s: %s\n", "ACFUFTABFile", "embeddedFTABFilenamesForChipRevision", __str);
    std::string::basic_string[abi:ne200100]<0>(__p, __str);
    std::vector<std::string>::push_back[abi:ne200100](a1, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = snprintf(__str, 5uLL, "_%cxf", v3);
    v7 = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(v7, 4, "%s::%s: %s\n", "ACFUFTABFile", "embeddedFTABFilenamesForChipRevision", __str);
    std::string::basic_string[abi:ne200100]<0>(__p, __str);
    std::vector<std::string>::push_back[abi:ne200100](a1, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2984C6010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t ACFUFTABFile::setManifestOnData(ACFUDataContainer **this, CFDataRef theData, __CFData **a3)
{
  v5 = this;
  if (!a3)
  {
    v6 = this[1];
    if (!v6)
    {
      ACFUFTABFile::setManifestOnData(0);
      return 0;
    }

    this = ACFUDataContainer::isOptimized(v6);
    if (this)
    {
      ACFUFTABFile::setManifestOnData(this);
      return 0;
    }
  }

  if (!theData)
  {
    ACFUFTABFile::setManifestOnData(this);
    return 0;
  }

  Length = CFDataGetLength(theData);
  if (Length <= 0)
  {
    ACFUFTABFile::setManifestOnData(Length);
    return 0;
  }

  if (a3)
  {
    if (!*a3)
    {
      ACFUFTABFile::setManifestOnData(Length);
      return 0;
    }

    isValidFileData = ACFUFTABFile::isValidFileData(v5, *a3, 0);
    if ((isValidFileData & 1) == 0)
    {
      ACFUFTABFile::setManifestOnData(isValidFileData);
      return 0;
    }

    if (*(v5 + 16) != 1)
    {
      v9 = *a3;
      if (*a3)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }
  }

  else if (*(v5 + 16) != 1)
  {
    isValidFileData = ACFUDataContainer::getData(*(v5 + 1));
    v9 = isValidFileData;
    if (isValidFileData)
    {
LABEL_11:
      v10 = *(CFDataGetBytePtr(v9) + 10);
      v11 = CFDataGetLength(theData);
      BytePtr = CFDataGetBytePtr(v9);
      if (*(BytePtr + 5))
      {
        LogInstance = ACFULogging::getLogInstance(BytePtr);
        ACFULogging::handleMessage(LogInstance, 0, "%s::%s: manifest existing in FTAB is being deleted\n", "ACFUFTABFile", "setManifestOnData");
        ACFUFTABFile::removeManifestPadding(v14, v9);
        v15 = *(CFDataGetBytePtr(v9) + 4);
        v28.length = *(CFDataGetBytePtr(v9) + 5);
        v28.location = v15;
        CFDataDeleteBytes(v9, v28);
        *(CFDataGetBytePtr(v9) + 4) = 0;
        *(CFDataGetBytePtr(v9) + 5) = 0;
      }

      v16 = CFDataGetLength(v9);
      v17 = v10 - 1;
      v18 = *&CFDataGetBytePtr(v9)[16 * v17 + 52];
      v19 = CFDataGetBytePtr(v9);
      v20 = ((*(v19 + 4 * v17 + 14) + v18) + 3) & 0x1FFFFFFFCLL;
      v21 = __OFSUB__(v20, v16);
      v22 = v20 - v16;
      if (v22 < 0 != v21)
      {
        ACFUFTABFile::setManifestOnData(v19);
      }

      else
      {
        if (!((v22 < 0) ^ v21 | (v22 == 0)))
        {
          v23 = ACFULogging::getLogInstance(v19);
          ACFULogging::handleMessage(v23, 0, "%s::%s: padding %ld byte(s) at the end of ftab\n", "ACFUFTABFile", "setManifestOnData", v22);
          CFDataIncreaseLength(v9, v22);
        }

        *(CFDataGetBytePtr(v9) + 5) = v11;
        *(CFDataGetBytePtr(v9) + 4) = v20;
        v24 = CFDataGetBytePtr(theData);
        CFDataAppendBytes(v9, v24, v11);
        if (a3)
        {
          v25 = *a3;

          return ACFUFTABFile::isValidFileData(v5, v25, 0);
        }

        if ((*(*v5 + 88))(v5))
        {

          return ACFUFTABFile::isCacheValid(v5);
        }
      }

      return 0;
    }

LABEL_25:
    ACFUFTABFile::setManifestOnData(isValidFileData);
    return 0;
  }

  return ACFUFTABFile::setManifestToTopOnData(v5, theData, 0);
}

uint64_t ACFUFTABFile::isValidFileData(ACFUFTABFile *this, CFDataRef theData, char a3)
{
  v6 = theData;
  if (!theData)
  {
    v8 = (this + 8);
    isOptimized = *(this + 1);
    if (!isOptimized)
    {
      v6 = 0;
      v37 = "%s::%s: no file data?!\n";
      goto LABEL_69;
    }

    isOptimized = ACFUDataContainer::isOptimized(isOptimized);
    if (isOptimized)
    {
      if (a3)
      {
        v6 = 0;
        v37 = "%s::%s: header only validation unsupported with optimized data\n";
        goto LABEL_69;
      }

      isOptimized = ACFUDataContainer::copyData(*v8, 0, 0x30uLL);
      v6 = isOptimized;
      if (isOptimized)
      {
        isOptimized = CFDataGetBytePtr(isOptimized);
        if (!isOptimized)
        {
LABEL_68:
          v37 = "%s::%s: failed to get byte pointer\n";
          goto LABEL_69;
        }

        v9 = isOptimized;
        isOptimized = ACFUDataContainer::copyData(*v8, (16 * *(isOptimized + 10) + 32), 0x10uLL);
        if (isOptimized)
        {
          v10 = isOptimized;
          BytePtr = CFDataGetBytePtr(isOptimized);
          if (BytePtr)
          {
            v12 = &v9[*(BytePtr + 1) + *(BytePtr + 2)];
            CFRelease(v10);
            v14 = v9;
            goto LABEL_12;
          }

          CFRelease(v10);
          goto LABEL_68;
        }

        v37 = "%s::%s: failed to aquire ftab file header\n";
LABEL_69:
        LogInstance = ACFULogging::getLogInstance(isOptimized);
        ACFULogging::handleMessage(LogInstance, 2, v37, "ACFUFTABFile", "isValidFileData");
        std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](v8, 0);
        goto LABEL_61;
      }

LABEL_64:
      v37 = "%s::%s: failed to copy ftab header\n";
      goto LABEL_69;
    }

    isOptimized = ACFUDataContainer::copyData(*v8);
    v6 = isOptimized;
    if (!isOptimized)
    {
      goto LABEL_64;
    }
  }

  v9 = CFDataGetBytePtr(v6);
  v14 = CFDataGetBytePtr(v6);
  Length = CFDataGetLength(v6);
  v12 = &v14[Length];
LABEL_12:
  if ((v12 - v14) <= 0x30)
  {
    ACFUFTABFile::isValidFileData(Length);
    goto LABEL_58;
  }

  v16 = (v9 + 40);
  v15 = *(v9 + 10);
  v17 = &v14[16 * v15 + 48];
  if (v17 > v12)
  {
    ACFUFTABFile::isValidFileData(Length);
    goto LABEL_58;
  }

  v18 = *(v9 + 5);
  v19 = &v14[*(v9 + 4)];
  if ((a3 & 1) == 0 && &v19[v18] > v12)
  {
    ACFUFTABFile::isValidFileData(Length);
    goto LABEL_58;
  }

  if (*(v9 + 4) != 0x62617466736F6B72)
  {
    ACFUFTABFile::isValidFileData(Length);
    goto LABEL_58;
  }

  if ((v15 - 192) <= 0xFFFFFF40)
  {
    ACFUFTABFile::isValidFileData((v9 + 40));
    goto LABEL_58;
  }

  if (v18 && v19 < v17)
  {
    ACFUFTABFile::isValidFileData(Length);
LABEL_58:
    v31 = 0;
    if (theData)
    {
      return 0;
    }

    goto LABEL_59;
  }

  cf = v6;
  if (theData)
  {
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = *&CFDataGetBytePtr(theData)[v20 + 52];
      v23 = CFDataGetBytePtr(theData);
      if ((a3 & 1) == 0)
      {
        v24 = &v14[v22 + *(v23 + v20 + 56)];
        if (v24 > v12 || v24 < v17)
        {
          ACFUFTABFile::isValidFileData(v23);
          goto LABEL_49;
        }
      }

      v26 = CFDataGetBytePtr(theData);
      if (&v14[*(v26 + v20 + 52)] < v17)
      {
        break;
      }

      ++v21;
      v20 += 16;
      if (v21 >= *v16)
      {
        return 1;
      }
    }

    ACFUFTABFile::isValidFileData(v26);
LABEL_49:
    v31 = 0;
LABEL_50:
    v6 = cf;
    if (theData)
    {
      return 0;
    }

LABEL_59:
    std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](this + 1, 0);
    if (v31)
    {
      CFRelease(v31);
    }

LABEL_61:
    v27 = 0;
    if (!v6)
    {
      return v27;
    }

    goto LABEL_43;
  }

  v28 = 0;
  v29 = 48;
  do
  {
    v30 = ACFUDataContainer::copyData(*(this + 1), v29, 0x10uLL);
    v31 = v30;
    if (!v30)
    {
      ACFUFTABFile::isValidFileData(0);
      goto LABEL_50;
    }

    v32 = CFDataGetBytePtr(v30);
    if (!v32)
    {
      ACFUFTABFile::isValidFileData(0);
      goto LABEL_50;
    }

    v33 = &v14[v32[1]];
    if ((a3 & 1) == 0)
    {
      v34 = &v33[v32[2]];
      if (v34 > v12 || v34 < v17)
      {
        ACFUFTABFile::isValidFileData(v32);
        goto LABEL_50;
      }
    }

    if (v33 < v17)
    {
      ACFUFTABFile::isValidFileData(v32);
      goto LABEL_50;
    }

    CFRelease(v31);
    ++v28;
    v29 = (v29 + 16);
  }

  while (v28 < *v16);
  v27 = 1;
  v6 = cf;
  if (!cf)
  {
    return v27;
  }

LABEL_43:
  CFRelease(v6);
  return v27;
}

uint64_t ACFUFTABFile::setManifestToTopOnData(ACFUFTABFile *this, const __CFData *a2, __CFData **a3)
{
  if (!a3)
  {
    v51 = *(this + 1);
    if (!v51)
    {
      ACFUFTABFile::setManifestToTopOnData(0);
      return 0;
    }

    isOptimized = ACFUDataContainer::isOptimized(v51);
    if (isOptimized)
    {
      ACFUFTABFile::setManifestToTopOnData(isOptimized);
      return 0;
    }

    Data = ACFUDataContainer::getData(*(this + 1));
    v7 = Data;
    if (Data)
    {
      goto LABEL_5;
    }

LABEL_25:
    ACFUFTABFile::setManifestToTopOnData(Data);
    return 0;
  }

  if (!*a3)
  {
    ACFUFTABFile::setManifestToTopOnData(this);
    return 0;
  }

  Data = ACFUFTABFile::isValidFileData(this, *a3, 0);
  if ((Data & 1) == 0)
  {
    ACFUFTABFile::setManifestToTopOnData(Data);
    return 0;
  }

  v7 = *a3;
  if (!*a3)
  {
    goto LABEL_25;
  }

LABEL_5:
  v8 = *(CFDataGetBytePtr(v7) + 10);
  BytePtr = CFDataGetBytePtr(v7);
  if (*(BytePtr + 5))
  {
    LogInstance = ACFULogging::getLogInstance(BytePtr);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: manifest existing in FTAB is being deleted\n", "ACFUFTABFile", "setManifestToTopOnData");
    v12 = ACFUFTABFile::removeManifestPadding(v11, v7);
    v13 = *(CFDataGetBytePtr(v7) + 4);
    v81.length = *(CFDataGetBytePtr(v7) + 5);
    v81.location = v13;
    CFDataDeleteBytes(v7, v81);
    if (v12 && v8)
    {
      v14 = 52;
      v15 = v8;
      do
      {
        v16 = *(CFDataGetBytePtr(v7) + 5);
        v17 = CFDataGetBytePtr(v7);
        *&v17[v14] -= v16;
        v14 += 16;
        --v15;
      }

      while (v15);
    }

    *(CFDataGetBytePtr(v7) + 4) = 0;
    *(CFDataGetBytePtr(v7) + 5) = 0;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  if (!Mutable)
  {
    ACFUFTABFile::setManifestToTopOnData(0);
    return 0;
  }

  v76 = Mutable;
  v19 = a2;
  v78 = this;
  v74 = CFDataGetBytePtr(v7);
  v73 = *(CFDataGetBytePtr(v7) + 13);
  v72 = *&CFDataGetBytePtr(v7)[16 * (v8 - 1) + 52];
  v71 = *&CFDataGetBytePtr(v7)[16 * (v8 - 1) + 56];
  v20 = *(CFDataGetBytePtr(v7) + 13);
  v21 = (v20 + 3) & 0xFFFFFFFC;
  v77 = v8;
  v22 = (v21 - v20);
  v23 = v22 + *(CFDataGetBytePtr(v7) + 13);
  *(CFDataGetBytePtr(v7) + 4) = v23;
  v75 = v19;
  Length = CFDataGetLength(v19);
  v25 = CFDataGetBytePtr(v7);
  *(v25 + 5) = Length;
  v26 = ACFULogging::getLogInstance(v25);
  v27 = *(CFDataGetBytePtr(v7) + 4);
  v28 = CFDataGetBytePtr(v7);
  ACFULogging::handleMessage(v26, 0, "%s::%s: manifestOffset: %u, manifestSize: %u\n", "ACFUFTABFile", "setManifestToTopOnData", v27, *(v28 + 5));
  v29 = *(CFDataGetBytePtr(v7) + 4);
  v30 = CFDataGetBytePtr(v7);
  v31 = (*(v30 + 5) + v29);
  LODWORD(v26) = (v31 + 3) & 0xFFFFFFFC;
  v32 = (v26 - v31);
  v33 = ACFULogging::getLogInstance(v30);
  v65 = v21 - v20;
  v70 = v21;
  v34 = v20;
  ACFULogging::handleMessage(v33, 0, "%s::%s: startOfManifestUnaligned: %ld, startOfManifestAligned: %ld, paddingBeforeManifestStart: %u\n", "ACFUFTABFile", "setManifestToTopOnData", v20, (v20 + 3) & 0x1FFFFFFFCLL, v65);
  v36 = ACFULogging::getLogInstance(v35);
  v66 = v26 - v31;
  v69 = v26;
  v37 = v31;
  ACFULogging::handleMessage(v36, 0, "%s::%s: endOfManifestUnaligned: %ld, endOfManifestAligned: %ld, paddingAfterManifestEnd: %u\n", "ACFUFTABFile", "setManifestToTopOnData", v31, (v31 + 3) & 0x1FFFFFFFCLL, v66);
  v67 = v32;
  v68 = v22;
  if (v77)
  {
    v38 = 0;
    v39 = v32 + v22;
    v40 = 16 * v77;
    while (1)
    {
      v41 = *(CFDataGetBytePtr(v7) + 5);
      v42 = CFDataGetBytePtr(v7);
      *&v42[v38 + 52] += v39 + v41;
      if (!a3)
      {
        v43 = CFDataGetBytePtr(v7);
        v80 = 4;
        LODWORD(v79) = *&v43[v38 + 48];
        BYTE4(v79) = 0;
        v44 = CFDataGetBytePtr(v7);
        updated = ACFUFTABFile::updateCache(v78, &v79, *&v44[v38 + 52], 0);
        v46 = updated;
        if ((updated & 1) == 0)
        {
          v47 = ACFULogging::getLogInstance(updated);
          ACFULogging::handleMessage(v47, 2, "%s::%s: failed to update cache\n", "ACFUFTABFile", "setManifestToTopOnData");
        }

        if (v80 < 0)
        {
          operator delete(v79);
        }

        if (!v46)
        {
          break;
        }
      }

      v38 += 16;
      if (v40 == v38)
      {
        v48 = v78;
        v50 = v75;
        v49 = v76;
        goto LABEL_27;
      }
    }

    v63 = 0;
    v49 = v76;
    goto LABEL_46;
  }

  v40 = 0;
  v48 = this;
  v50 = v75;
  v49 = v76;
LABEL_27:
  v53 = CFDataGetBytePtr(v7);
  CFDataAppendBytes(v49, v53, 48);
  v54 = CFDataGetBytePtr(v7);
  CFDataAppendBytes(v49, v54 + 48, v40);
  if (v70 != v34)
  {
    v56 = ACFULogging::getLogInstance(v55);
    ACFULogging::handleMessage(v56, 0, "%s::%s: paddingBeforeManifestStart %u bytes\n", "ACFUFTABFile", "setManifestToTopOnData", v68);
    CFDataIncreaseLength(v49, v68);
  }

  v57 = CFDataGetBytePtr(v50);
  v58 = CFDataGetBytePtr(v7);
  CFDataAppendBytes(v49, v57, *(v58 + 5));
  if (v69 != v37)
  {
    v60 = ACFULogging::getLogInstance(v59);
    ACFULogging::handleMessage(v60, 0, "%s::%s: paddingAfterManifestEnd %u bytes\n", "ACFUFTABFile", "setManifestToTopOnData", v67);
    CFDataIncreaseLength(v49, v67);
  }

  CFDataAppendBytes(v49, &v74[v73], v72 - v73 + v71);
  if (!a3)
  {
    if (ACFUDataContainer::setData(v48[1], v49) && ((*v48)[11])(v48))
    {
      isCacheValid = ACFUFTABFile::isCacheValid(v48);
      goto LABEL_36;
    }

LABEL_45:
    v63 = 0;
    goto LABEL_46;
  }

  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  v61 = AMSupportSafeRetain();
  *a3 = v61;
  if (!v61)
  {
    ACFUFTABFile::setManifestToTopOnData(0);
    goto LABEL_45;
  }

  isCacheValid = ACFUFTABFile::isValidFileData(v48, v61, 0);
LABEL_36:
  v63 = isCacheValid;
LABEL_46:
  CFRelease(v49);
  return v63;
}

void sub_2984C6CB4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUFTABFile::removeManifestPadding(ACFUFTABFile *this, CFDataRef theData)
{
  if (!theData)
  {
    ACFUFTABFile::removeManifestPadding(this);
    return 0;
  }

  v3 = *(CFDataGetBytePtr(theData) + 5);
  BytePtr = CFDataGetBytePtr(theData);
  if (!v3)
  {
    ACFUFTABFile::removeManifestPadding(BytePtr);
    return 0;
  }

  v5 = *(BytePtr + 4);
  if (v5 >= *(CFDataGetBytePtr(theData) + 13))
  {
    v15 = *(CFDataGetBytePtr(theData) + 10) - 1;
    v16 = *&CFDataGetBytePtr(theData)[16 * v15 + 52];
    v17 = CFDataGetBytePtr(theData);
    v18 = (*(v17 + 4 * v15 + 14) + v16);
    LogInstance = ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: manifest at the end - startOfManifest: %u, endOfFiles: %u, padding: %u\n", "ACFUFTABFile", "removeManifestPadding", v5, v18, v5 - v18);
    v22.location = v18;
    v22.length = v5 - v18;
    CFDataDeleteBytes(theData, v22);
    v20 = CFDataGetBytePtr(theData);
    result = 0;
    *(v20 + 4) = v18;
  }

  else
  {
    v6 = v5 + v3;
    v7 = CFDataGetBytePtr(theData);
    v8 = *(v7 + 13);
    v9 = v8 - v6;
    v10 = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(v10, 0, "%s::%s: manifest is at top - endOfManifest: %u, startOfFiles: %u, paddingAfterManifestEnd: %u\n", "ACFUFTABFile", "removeManifestPadding", v6, v8, v8 - v6);
    v21.location = (*(CFDataGetBytePtr(theData) + 4) + v3);
    v21.length = (v8 - v6);
    CFDataDeleteBytes(theData, v21);
    if (*(CFDataGetBytePtr(theData) + 10))
    {
      v11 = 0;
      v12 = 52;
      do
      {
        v13 = CFDataGetBytePtr(theData);
        *&v13[v12] -= v9;
        ++v11;
        v12 += 16;
      }

      while (v11 < *(CFDataGetBytePtr(theData) + 10));
    }

    return 1;
  }

  return result;
}

BOOL ACFUFTABFile::isCacheValid(ACFUFTABFile *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    ACFUFTABFile::isCacheValid(0);
    return 0;
  }

  v3 = ACFUDataContainer::copyData(v2, 0, 0x30uLL);
  if (!v3)
  {
    ACFUFTABFile::isCacheValid(0);
    return 0;
  }

  v4 = v3;
  BytePtr = CFDataGetBytePtr(v3);
  if (!BytePtr)
  {
    ACFUFTABFile::isCacheValid(0);
    v8 = 0;
    goto LABEL_25;
  }

  v6 = *(BytePtr + 10);
  CFRelease(v4);
  if (*(this + 7) != v6)
  {
    ACFUFTABFile::isCacheValid(v7);
    return 0;
  }

  if (!v6)
  {
    return 1;
  }

  v8 = 0;
  v20 = v6;
  v9 = 48;
  v10 = 1;
  do
  {
    v11 = ACFUDataContainer::copyData(*(this + 1), v9, 0x10uLL);
    if (!v11)
    {
      ACFUFTABFile::isCacheValid(0);
      return 0;
    }

    v4 = v11;
    v12 = CFDataGetBytePtr(v11);
    v22 = 4;
    LODWORD(__p[0]) = *v12;
    BYTE4(__p[0]) = 0;
    v13 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(this + 40, __p);
    if ((this + 48) == v13)
    {
      LogInstance = ACFULogging::getLogInstance(v13);
      if (v22 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      ACFULogging::handleMessage(LogInstance, 2, "%s::%s: cache does not have entry for file %s. Cache is invalid\n", "ACFUFTABFile", "isCacheValid", v16);
    }

    else if (*(v13 + 15) == *(v12 + 1))
    {
      if (*(v13 + 14) == *(v12 + 2))
      {
        CFRelease(v4);
        v4 = 0;
        v14 = 1;
        goto LABEL_12;
      }

      v18 = ACFULogging::getLogInstance(v13);
      ACFULogging::handleMessage(v18, 2, "%s::%s: cache does not hold correct size for file %s. Cache size: %d. FTAB size: %d. Cache is invalid\n");
    }

    else
    {
      v17 = ACFULogging::getLogInstance(v13);
      ACFULogging::handleMessage(v17, 2, "%s::%s: cache does not hold correct offset for file %s. Cache offset: %d. FTAB offset: %d. Cache is invalid\n");
    }

    v14 = 0;
LABEL_12:
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v14 & 1) == 0)
    {
      break;
    }

    v8 = v10 >= v20;
    v9 = (v9 + 16);
    ++v10;
    LODWORD(v6) = v6 - 1;
  }

  while (v6);
  if (!v4)
  {
    return v8;
  }

LABEL_25:
  CFRelease(v4);
  return v8;
}

void sub_2984C70F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUFTABFile::updateCache(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = std::__tree<std::__value_type<std::string,void const*>,std::__map_value_compare<std::string,std::__value_type<std::string,void const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,void const*>>>::find<std::string>(a1 + 40, a2);
  v9 = (a2 + 23);
  v10 = *(a2 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 8);
  }

  if (v10 != 4)
  {
    ACFUFTABFile::updateCache(v9);
    return 0;
  }

  v11 = a1 + 48;
  if (!(a4 | a3))
  {
    LogInstance = ACFULogging::getLogInstance(v9);
    if (*(a2 + 23) >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    if (v11 == v8)
    {
      ACFULogging::handleMessage(LogInstance, 4, "%s::%s: attempting to delete file from cache that does not exist. File: %s\n", "ACFUFTABFile", "updateCache", v17);
    }

    else
    {
      ACFULogging::handleMessage(LogInstance, 4, "%s::%s: removing file from FTAB cache. File: %s\n", "ACFUFTABFile", "updateCache", v17);
      std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__erase_unique<std::string>((a1 + 40), a2);
    }

    return 1;
  }

  if (v11 == v8)
  {
    v18 = ACFULogging::getLogInstance(v9);
    if (*(a2 + 23) >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    if (a3 && a4)
    {
      ACFULogging::handleMessage(v18, 4, "%s::%s: Adding new file to FTAB cache. File: %s, offset: %u, size: %u\n", "ACFUFTABFile", "updateCache", v19, a3, a4);
      v22 = a2;
      *(std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 40), a2, &std::piecewise_construct, &v22, &v21) + 15) = a3;
      v22 = a2;
      v14 = (a1 + 40);
      v15 = a2;
      goto LABEL_24;
    }

    ACFULogging::handleMessage(v18, 2, "%s::%s: attempting to add new file to cache, but not both size and offset are provided. File: %s\n", "ACFUFTABFile", "updateCache", v19);
    return 0;
  }

  v12 = ACFULogging::getLogInstance(v9);
  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  ACFULogging::handleMessage(v12, 4, "%s::%s: ftab cache entry updated. File: %s, offset: %u, size: %u\n", "ACFUFTABFile", "updateCache", v13, a3, a4);
  if (a3)
  {
    v22 = a2;
    *(std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 40), a2, &std::piecewise_construct, &v22, &v21) + 15) = a3;
  }

  if (!a4)
  {
    return 1;
  }

  v22 = a2;
  v14 = (a1 + 40);
  v15 = a2;
LABEL_24:
  *(std::__tree<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::__map_value_compare<std::string,std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ACFUFTABFile::CachedFileMetadata>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v14, v15, &std::piecewise_construct, &v22, &v21) + 14) = a4;
  return 1;
}