int AEAAuthDataSetEntry(AEAAuthData auth_data, uint32_t i, const char *key, const uint8_t *data, size_t data_size)
{
  if (*auth_data <= i)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataSetEntry", 172, 95, 0, "invalid auth_data index");
    return -1;
  }

  v10 = strlen(key);
  v11 = v10 + 1;
  v12 = v10 + 5;
  if (v10 + 1 >= 0xFFFFFFFFFFFFFFFCLL || (v14 = data_size + v12, __CFADD__(data_size, v12)) || v14 >= 0xFFFFFFFF)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataSetEntry", 180, 95, 0, "invalid attribute size");
    return -1;
  }

  if (v14 < 4)
  {
    goto LABEL_11;
  }

  v15 = i;
  v16 = *(*(auth_data + 2) + 8 * i);
  v17 = *(auth_data + 5);
  v18 = *&v17[v16];
  v19 = v16 + v18;
  if (__CFADD__(v16, v18))
  {
    goto LABEL_11;
  }

  v20 = *(auth_data + 3);
  v21 = v20 - v19;
  if (v20 < v19)
  {
    goto LABEL_11;
  }

  v22 = v14 - v18;
  if (v14 > v18)
  {
    v23 = v20 + v22;
    if ((v20 + v22) < 0)
    {
LABEL_11:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataSetEntry", 183, 95, 0, "alloc auth_data entry", v42, v43, v44, v45);
      return -1;
    }

    v24 = *(auth_data + 4);
    if (v24 < v23)
    {
      v25 = 0x4000;
      do
      {
        while (!v24)
        {
          v24 = 0x4000;
          if (v23 <= 0x4000)
          {
            goto LABEL_29;
          }
        }

        v26 = v24 >> 1;
        if ((v24 & (v24 >> 1)) != 0)
        {
          v26 = v24 & (v24 >> 1);
        }

        v24 += v26;
      }

      while (v24 < v23);
      v25 = v24;
      if (v24 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_44;
      }

LABEL_29:
      v43 = v22;
      v44 = v20 - v19;
      v45 = v15;
      v42 = v25;
      v32 = realloc(v17, v25);
      if (v32)
      {
        v22 = v43;
        *(auth_data + 4) = v42;
        *(auth_data + 5) = v32;
        v17 = v32;
        v21 = v20 - v19;
        v15 = v45;
        goto LABEL_31;
      }

      free(v17);
LABEL_44:
      *(auth_data + 3) = 0;
      *(auth_data + 4) = 0;
      *(auth_data + 5) = 0;
      goto LABEL_11;
    }

LABEL_31:
    if (v20 != v19)
    {
      v33 = &v17[v19];
      v34 = &v17[v19 + v22];
      v35 = v15;
      v36 = v22;
      memmove(v34, v33, v21);
      v22 = v36;
      v15 = v35;
    }

    v20 = *(auth_data + 3) + v22;
    goto LABEL_34;
  }

  if (v14 < v18)
  {
    v27 = v18 - v14;
    if (v20 != v19)
    {
      v28 = &v17[v19];
      v29 = &v17[v19 - v27];
      v30 = v15;
      v31 = v27;
      memmove(v29, v28, v21);
      v27 = v31;
      v15 = v30;
      v19 = *(auth_data + 3);
    }

    v20 = v19 - v27;
LABEL_34:
    *(auth_data + 3) = v20;
  }

  if (v16 >= 0xFFFFFFFFFFFFFFFCLL || v16 + 4 > v20)
  {
    goto LABEL_11;
  }

  *(*(auth_data + 5) + v16) = v14;
  if (*auth_data > v15)
  {
    v37 = v15;
    while (v16 < 0xFFFFFFFFFFFFFFFCLL && v16 + 4 <= *(auth_data + 3))
    {
      v38 = *(*(auth_data + 5) + v16);
      *(*(auth_data + 2) + 8 * v37) = v16;
      v16 += v38;
      if (++v37 >= *auth_data)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_11;
  }

LABEL_42:
  v39 = *(auth_data + 5);
  v40 = *(*(auth_data + 2) + 8 * v15);
  *(v39 + v40) = v14;
  v41 = (v39 + v40 + 4);
  memcpy(v41, key, v11);
  memcpy(&v41[v11], data, data_size);
  return 0;
}

int AEAAuthDataClear(AEAAuthData auth_data)
{
  *auth_data = 0;
  *(auth_data + 3) = 0;
  return 0;
}

int AEAAuthDataRemoveEntry(AEAAuthData auth_data, uint32_t i)
{
  v2 = *auth_data;
  if (*auth_data <= i || (v4 = i, v5 = *(*(auth_data + 2) + 8 * i), v6 = *(auth_data + 5), v7 = *(v6 + v5), v8 = __CFADD__(v5, v7), v9 = v5 + v7, v8) || (v10 = *(auth_data + 3), v10 < v9))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataRemoveEntry", 205, 95, 0, "invalid auth_data index %u", i);
    return -1;
  }

  else
  {
    if (v7)
    {
      if (v10 != v9)
      {
        memmove((v6 + v9 - v7), (v6 + v9), v10 - v9);
        v9 = *(auth_data + 3);
        v2 = *auth_data;
      }

      *(auth_data + 3) = v9 - v7;
    }

    v12 = v2 - 1;
    *auth_data = v12;
    if (v12 > v4)
    {
      v13 = *(auth_data + 2);
      do
      {
        *(v13 + 8 * v4) = *(v13 + 8 * v4 + 8) - v7;
        ++v4;
      }

      while (v4 < *auth_data);
    }

    return 0;
  }
}

void sub_1000EFE90(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 384);
    if (v2)
    {
      memset_s(*(a1 + 384), *(a1 + 4), 0, *(a1 + 4));
    }

    free(v2);
    v3 = *(a1 + 392);
    if (v3)
    {
      memset_s(*(a1 + 392), 544 * *(a1 + 400), 0, 544 * *(a1 + 400));
    }

    free(v3);
    memset_s(a1, 0x6C0uLL, 0, 0x6C0uLL);

    free(a1);
  }
}

uint64_t sub_1000EFF30(uint64_t a1)
{
  v2 = malloc(0x6C0uLL);
  v3 = v2;
  if (!v2)
  {
    v12 = *__error();
    v10 = "malloc";
    v11 = 22;
    goto LABEL_28;
  }

  memset_s(v2, 0x6C0uLL, 0, 0x6C0uLL);
  v4 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a1 + 64);
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  if ((sub_1000DB560((v3 + 72), v3) & 0x80000000) != 0)
  {
    v10 = "Invalid context";
    v11 = 28;
    goto LABEL_27;
  }

  v6 = *(v3 + 4);
  if (v6)
  {
    v7 = malloc(*(v3 + 4));
    *(v3 + 384) = v7;
    if (v7)
    {
      memcpy(v7, *(a1 + 2712), v6);
      goto LABEL_6;
    }

    v12 = *__error();
    v10 = "malloc";
    v11 = 34;
LABEL_28:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateNew", v11, 28, v12, v10);
    sub_1000EFE90(v3);
    return 0;
  }

LABEL_6:
  if (*v3 <= 5u && ((1 << *v3) & 0x2A) != 0)
  {
    goto LABEL_10;
  }

  if (*(a1 + 592))
  {
    v13 = *(v3 + 240);
    if (!v13)
    {
      goto LABEL_23;
    }

    v14 = v13(a1 + 332, a1 + 592);
    if (*(a1 + 332) != *(v3 + 104) || v14 < 0)
    {
      goto LABEL_23;
    }

    v15 = *(a1 + 592);
    if (v15 >= 0x101)
    {
      __break(1u);
LABEL_23:
      v10 = "Invalid signing private key in context";
      v11 = 45;
      goto LABEL_27;
    }
  }

  else
  {
    v15 = 0;
  }

  __memcpy_chk();
  *(v3 + 1188) = v15;
  memset_s((v3 + 1192 + v15), 256 - v15, 0, 256 - v15);
  *(v3 + 1712) = *(a1 + 2416);
  if (*(a1 + 332) != *(v3 + 104))
  {
    v10 = "Invalid signing public key in context";
    v11 = 55;
    goto LABEL_27;
  }

LABEL_10:
  if ((sub_1000FB160(v3 + 280, v3, (v3 + 72)) & 0x80000000) != 0)
  {
    v10 = "deriving container offsets";
    v11 = 59;
    goto LABEL_27;
  }

  v9 = *(v3 + 344);
  *(v3 + 32) = 0;
  *(v3 + 40) = v9;
  if ((sub_1000FC3DC((v3 + 72), v3, (v3 + 668), (v3 + 928), (v3 + 408), (a1 + 72), (a1 + 2152), (a1 + 332), (a1 + 852)) & 0x80000000) != 0)
  {
    v10 = "Main key derivation";
    v11 = 75;
LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  return v3;
}

uint64_t sub_1000F01DC(uint64_t a1, AAByteStream_impl *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v92 = 0;
  memset(__s, 0, sizeof(__s));
  v90 = 0;
  memset(v89, 0, sizeof(v89));
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  memset(v86, 0, sizeof(v86));
  v8 = malloc(0x6C0uLL);
  v9 = v8;
  if (!v8)
  {
    v19 = *__error();
    v20 = "malloc";
    v21 = 95;
    goto LABEL_41;
  }

  memset_s(v8, 0x6C0uLL, 0, 0x6C0uLL);
  v10 = (v9 + 668);
  if ((sub_100115E00(a1, v9, (v9 + 668), (v9 + 408), v5, v4) & 0x80000000) != 0)
  {
    v20 = "unlocking context";
    v21 = 99;
LABEL_40:
    v19 = 0;
    goto LABEL_41;
  }

  if ((sub_1000DB560((v9 + 72), v9) & 0x80000000) != 0)
  {
    v20 = "Invalid container";
    v21 = 102;
    goto LABEL_40;
  }

  if ((sub_1000FB160(v9 + 280, v9, (v9 + 72)) & 0x80000000) != 0)
  {
    v20 = "deriving container offsets";
    v21 = 103;
    goto LABEL_40;
  }

  v11 = *(v9 + 4);
  if (v11)
  {
    v12 = malloc(*(v9 + 4));
    *(v9 + 384) = v12;
    if (v12)
    {
      memcpy(v12, *(a1 + 2712), v11);
      goto LABEL_8;
    }

    v19 = *__error();
    v20 = "malloc";
    v21 = 110;
LABEL_41:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", v21, 28, v19, v20);
    v18 = 0;
    goto LABEL_42;
  }

LABEL_8:
  if (*v9 > 5u || ((1 << *v9) & 0x2A) == 0)
  {
    if (*(a1 + 592))
    {
      v27 = *(v9 + 240);
      if (!v27)
      {
        goto LABEL_36;
      }

      v28 = v27(a1 + 332, a1 + 592);
      if (*(a1 + 332) != *(v9 + 104) || v28 < 0)
      {
        goto LABEL_36;
      }

      v29 = *(a1 + 592);
      if (v29 >= 0x101)
      {
LABEL_35:
        __break(1u);
LABEL_36:
        v20 = "Invalid signing private key in context";
        v21 = 121;
        goto LABEL_40;
      }
    }

    else
    {
      v29 = 0;
    }

    __memcpy_chk();
    *(v9 + 1188) = v29;
    memset_s((v9 + 1192 + v29), 256 - v29, 0, 256 - v29);
    *(v9 + 1712) = *(a1 + 2416);
    if (*(a1 + 332) != *(v9 + 104))
    {
      v20 = "Invalid signing public key in context";
      v21 = 131;
      goto LABEL_40;
    }
  }

  v13 = *(v9 + 120);
  if (v13 >= 0x101)
  {
    goto LABEL_35;
  }

  __memcpy_chk();
  *(v9 + 928) = v13;
  memset_s((v9 + 932 + v13), 256 - v13, 0, 256 - v13);
  v14 = *(v9 + 84);
  if (v14 >= 0x101)
  {
    goto LABEL_35;
  }

  __memcpy_chk();
  LODWORD(v87[0]) = v14;
  memset_s(v87 + v14 + 4, 256 - v14, 0, 256 - v14);
  v15 = *(v9 + 84);
  if (v15 >= 0x101)
  {
    goto LABEL_35;
  }

  __memcpy_chk();
  LODWORD(v89[0]) = v15;
  memset_s(v89 + v15 + 4, 256 - v15, 0, 256 - v15);
  v16 = AAByteStreamSeek(a2, 0, 2);
  if ((v16 & 0x8000000000000000) == 0 && v16 != *(v9 + 40))
  {
    v20 = "Container size mismatch";
    v21 = 143;
    goto LABEL_40;
  }

  v17 = *(v9 + 376);
  if (v17 <= 0x100000)
  {
    v18 = 0x100000;
  }

  else
  {
    v18 = *(v9 + 376);
  }

  if (v17 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_28:
    v26 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 151, 28, *v26, "malloc");
LABEL_42:
    v23 = 0;
LABEL_43:
    v30 = 1;
    goto LABEL_44;
  }

  v22 = malloc(v18);
  if (!v22)
  {
    goto LABEL_28;
  }

  v23 = v22;
  v24 = (*(v9 + 32) + *(v9 + 16) - 1) / *(v9 + 16);
  if (HIDWORD(v24))
  {
    v25 = 155;
LABEL_51:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", v25, 28, 0, "Invalid sizes in root header");
    goto LABEL_43;
  }

  *(v9 + 400) = v24;
  v32 = *(v9 + 20);
  v33 = (v24 + v32 - 1) / v32;
  *(v9 + 404) = v33;
  if (((v32 * v33) & 0xFFFFFFFF00000000) != 0)
  {
    v25 = 158;
    goto LABEL_51;
  }

  v34 = v33 * v32;
  if (v34 >= 0xF0F0F10)
  {
    *__error() = 12;
    *(v9 + 392) = 0;
LABEL_98:
    v65 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 171, 28, v65, "malloc");
    goto LABEL_43;
  }

  v35 = calloc(v34, 0x220uLL);
  *(v9 + 392) = v35;
  if (!v35)
  {
    goto LABEL_98;
  }

  v81 = v18;
  v36 = *(v9 + 344);
  v83 = a2;
  v82 = (v9 + 668);
  if (*(v9 + 404))
  {
    v85 = 0;
    v37 = *(v9 + 376);
    while (1)
    {
      v84 = v36;
      if (*(a2 + 4))
      {
        v38 = 0;
        if (v37)
        {
          v39 = v23;
          v40 = v37;
          while (1)
          {
            v41 = (*(a2 + 4))(*a2, v39, v40, v36);
            if (v41 < 0)
            {
              break;
            }

            if (v41)
            {
              v39 += v41;
              v38 += v41;
              v36 += v41;
              v40 -= v41;
              if (v40)
              {
                continue;
              }
            }

            goto LABEL_66;
          }

          v38 = v41;
        }
      }

      else
      {
        v38 = -1;
      }

LABEL_66:
      if (v38 != v37)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 183, 28, 0, "loading cluster header");
        goto LABEL_107;
      }

      v109 = 0;
      v108 = 0u;
      v107 = 0u;
      v106 = 0u;
      v105 = 0u;
      v104 = 0u;
      v103 = 0u;
      v102 = 0u;
      v101 = 0u;
      v100 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v93 = 0u;
      memset(&v111[8], 0, 252);
      memset(v110, 0, 260);
      *&v111[8] = 19267;
      *v111 = 0x5F41454100000006;
      memset_s(&v111[10], 0xFAuLL, 0, 0xFAuLL);
      v42 = *v111;
      if (*v111 >= 0xFDu)
      {
        goto LABEL_35;
      }

      *&v111[*v111 + 4] = v85;
      *v111 = v42 + 4;
      memset_s(&v111[v42 + 8], 252 - v42, 0, 252 - v42);
      v43 = *(v9 + 144);
      if (!v43 || !*v10)
      {
        break;
      }

      v44 = v43(&v93, *(v9 + 72), v10, v111, v110);
      memset_s(v111, 0x104uLL, 0, 0x104uLL);
      v45 = 0;
      if (v44 < 0)
      {
        goto LABEL_73;
      }

LABEL_74:
      memset(v110 + 12, 0, 248);
      *(v110 + 4) = 0x4B4548435F414541;
      LODWORD(v110[0]) = 8;
      memset_s(v110 + 12, 0xF8uLL, 0, 0xF8uLL);
      memset(v111, 0, sizeof(v111));
      v46 = *(v9 + 144);
      if (!v46 || !v93)
      {
        memset_s(v110, 0x104uLL, 0, 0x104uLL);
LABEL_105:
        memset_s(&v93, 0x104uLL, 0, 0x104uLL);
LABEL_106:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 187, 28, 0, "deriving cluster header key");
LABEL_107:
        v30 = 1;
        goto LABEL_108;
      }

      v47 = v46(__s, *(v9 + 76), &v93, v110, v111);
      memset_s(v110, 0x104uLL, 0, 0x104uLL);
      if (v47 < 0)
      {
        goto LABEL_105;
      }

      memset_s(&v93, 0x104uLL, 0, 0x104uLL);
      if (v45)
      {
        goto LABEL_106;
      }

      v48 = *(v9 + 168);
      if (!v48 || LODWORD(v87[0]) != *(v9 + 84) || (v48(v23, *(v9 + 360), v87, __s, &v23[*(v9 + 360)], *(v9 + 376) - *(v9 + 360)) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 195, 28, 0, "decrypting cluster header");
        goto LABEL_107;
      }

      v49 = *(v9 + 84);
      if (v49 >= 0x101)
      {
        goto LABEL_35;
      }

      __memcpy_chk();
      LODWORD(v87[0]) = v49;
      memset_s(v87 + v49 + 4, 256 - v49, 0, 256 - v49);
      LODWORD(v50) = *(v9 + 20);
      if (v50)
      {
        v51 = 0;
        v52 = *(v9 + 368);
        v53 = *(v9 + 352);
        do
        {
          v54 = v51 + v85 * v50;
          if (v54 >= *(v9 + 400))
          {
            v37 = *(v9 + 376);
            a2 = v83;
            v36 = v37 + v84;
            v10 = (v9 + 668);
            goto LABEL_92;
          }

          v55 = (*(v9 + 392) + 544 * v54);
          *v55 = v54;
          v55[1] = *&v23[v53];
          v55[2] = *&v23[v53 + 4];
          v56 = *(v9 + 48);
          if (v56 >= 0x101)
          {
            goto LABEL_35;
          }

          v57 = v53 + 8;
          memcpy(v55 + 7, &v23[v57], *(v9 + 48));
          v55[6] = v56;
          memset_s(v55 + v56 + 28, 256 - v56, 0, 256 - v56);
          v58 = *(v9 + 84);
          if (v58 >= 0x101)
          {
            goto LABEL_35;
          }

          v53 = v57 + *(v9 + 48);
          memcpy(v55 + 72, &v23[v52], *(v9 + 84));
          v55[71] = v58;
          memset_s(v55 + v58 + 288, 256 - v58, 0, 256 - v58);
          v52 += *(v9 + 84);
          ++v51;
          LODWORD(v50) = *(v9 + 20);
        }

        while (v51 < v50);
        v37 = *(v9 + 376);
        a2 = v83;
        v36 = v37 + v84;
        v10 = (v9 + 668);
        if (!v50)
        {
          goto LABEL_95;
        }

LABEL_92:
        v59 = (v50 * v85);
        v60 = *(v9 + 400);
        v50 = v50;
        v61 = 544 * v59;
        do
        {
          if (v59 >= v60)
          {
            break;
          }

          v62 = *(v9 + 392) + v61;
          *(v62 + 16) = v36;
          v36 += *(v62 + 8);
          v61 += 544;
          ++v59;
          --v50;
        }

        while (v50);
      }

      else
      {
        v37 = *(v9 + 376);
        v36 = v37 + v84;
        a2 = v83;
        v10 = (v9 + 668);
      }

LABEL_95:
      if (++v85 >= *(v9 + 404))
      {
        goto LABEL_96;
      }
    }

    memset_s(v111, 0x104uLL, 0, 0x104uLL);
LABEL_73:
    v45 = 1;
    goto LABEL_74;
  }

LABEL_96:
  v63 = *(v9 + 40);
  v64 = v63 - v36;
  if (v63 < v36)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 230, 28, 0, "Invalid container size");
    goto LABEL_107;
  }

  *(v9 + 64) = v64;
  v18 = v81;
  if (v63 == v36 || *(a1 + 2740))
  {
    v30 = 0;
  }

  else
  {
    v66 = v36;
    memset(v111, 0, sizeof(v111));
    memset(v110, 0, 260);
    v109 = 0;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v93 = 0u;
    if (*(v9 + 248) && (*(v110 + 7) = 1262571615, *&v110[0] = 0x5F41454100000007, memset_s((v110 | 0xB), 0xF9uLL, 0, 0xF9uLL), (v67 = *(v9 + 144)) != 0) && *v82 && (v67(v111, *(v9 + 72), v82, v110, &v93) & 0x80000000) == 0)
    {
      v68 = (*(v9 + 248))(v111);
    }

    else
    {
      v68 = 0;
    }

    memset_s(v111, 0x104uLL, 0, 0x104uLL);
    memset_s(v110, 0x104uLL, 0, 0x104uLL);
    if (!v68)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 241, 28, 0, "authenticating padding");
      goto LABEL_107;
    }

    v69 = v83;
    while (1)
    {
      if (v64 >= 0x100000)
      {
        v70 = 0x100000;
      }

      else
      {
        v70 = v64;
      }

      if (!*(v69 + 4))
      {
        goto LABEL_133;
      }

      v71 = 0;
      v72 = v23;
      v73 = v66;
      v74 = v70;
      while (1)
      {
        v75 = (*(v83 + 4))(*v83, v72, v74, v73);
        if (v75 < 0)
        {
          break;
        }

        if (v75)
        {
          v72 += v75;
          v71 += v75;
          v73 += v75;
          v74 -= v75;
          if (v74)
          {
            continue;
          }
        }

        goto LABEL_127;
      }

      v71 = v75;
LABEL_127:
      if (v71 != v70)
      {
LABEL_133:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 250, 28, 0, "loading padding");
        goto LABEL_107;
      }

      v76 = *(v9 + 256);
      v69 = v83;
      if (!v76 || (v76(v68, v23, v70) & 0x80000000) != 0)
      {
        break;
      }

      v66 += v70;
      v64 -= v70;
      if (!v64)
      {
        v30 = 0;
        goto LABEL_135;
      }
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 252, 28, 0, "authenticating padding");
    v30 = 1;
LABEL_135:
    memset(v111, 0, sizeof(v111));
    v77 = *(v9 + 264);
    if (!v77)
    {
      goto LABEL_143;
    }

    if (LODWORD(v87[0]) != *(v9 + 84))
    {
      goto LABEL_143;
    }

    if ((v77(v68, v111) & 0x80000000) != 0)
    {
      goto LABEL_143;
    }

    if (*v111 != *(v9 + 84))
    {
      goto LABEL_143;
    }

    if (*v111 >= 8u)
    {
      v78 = 0;
      v79 = 4;
      do
      {
        v78 |= *&v111[v79] ^ *(v87 + v79);
        v80 = v79 + 12;
        v79 += 8;
      }

      while (v80 <= *v111);
      if (v78)
      {
LABEL_143:
        memset_s(v111, 0x104uLL, 0, 0x104uLL);
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 257, 28, 0, "authenticating padding");
        goto LABEL_107;
      }
    }

    memset_s(v111, 0x104uLL, 0, 0x104uLL);
LABEL_108:
    v18 = v81;
  }

LABEL_44:
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  memset_s(v89, 0x104uLL, 0, 0x104uLL);
  memset_s(v87, 0x104uLL, 0, 0x104uLL);
  memset_s(v86, 0x30uLL, 0, 0x30uLL);
  if (v23)
  {
    memset_s(v23, v18, 0, v18);
  }

  free(v23);
  if (v30)
  {
    sub_1000EFE90(v9);
    return 0;
  }

  return v9;
}

uint64_t sub_1000F11E4(uint64_t a1, uint64_t a2, void *__src, uint64_t a4)
{
  if (*__src == -1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerAppendSegment", 280, 28, 0, "Invalid segment id\n");
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 400);
  v9 = *(a1 + 404);
  v10 = *(a1 + 20);
  if (v8 < v10 * v9)
  {
    v11 = *(a1 + 40);
    goto LABEL_4;
  }

  *(a1 + 404) = v9 + 1;
  v18 = v10 * (v9 + 1);
  if (v18 >= 0xFFFFFFFF)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerAppendSegment", 287, 28, 0, "Container size limit reached");
    return 0xFFFFFFFFLL;
  }

  if (v18 >= 0xF0F0F10)
  {
    *__error() = 12;
LABEL_23:
    *(a1 + 392) = 0;
    v22 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerAppendSegment", 289, 28, v22, "malloc");
    return 0xFFFFFFFFLL;
  }

  v19 = *(a1 + 392);
  v20 = realloc(v19, 544 * v18);
  if (!v20)
  {
    free(v19);
    goto LABEL_23;
  }

  *(a1 + 392) = v20;
  memset_s(&v20[544 * *(a1 + 400)], 544 * (v18 - *(a1 + 400)), 0, 544 * (v18 - *(a1 + 400)));
  v11 = *(a1 + 40) + *(a1 + 376);
  *(a1 + 40) = v11;
  v8 = *(a1 + 400);
LABEL_4:
  __src[2] = v11;
  v12 = *(__src + 2);
  memcpy((*(a1 + 392) + 544 * v8), __src, 0x220uLL);
  ++*(a1 + 400);
  v13 = *(a1 + 40) + v12;
  *(a1 + 32) += *(__src + 1);
  *(a1 + 40) = v13;
  if (*(a2 + 40))
  {
    v14 = 0;
    if (v12)
    {
      v15 = __src[2];
      v16 = v12;
      while (1)
      {
        v17 = (*(a2 + 40))(*a2, a4, v16, v15);
        if (v17 < 1)
        {
          break;
        }

        a4 += v17;
        v14 += v17;
        v15 += v17;
        v16 -= v17;
        if (!v16)
        {
          goto LABEL_18;
        }
      }

      v14 = v17;
    }

LABEL_18:
    if (v14 == v12)
    {
      return 0;
    }
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerAppendSegment", 308, 28, 0, "Segment write");
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000F1420(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 40) -= v2;
    *(a1 + 64) = 0;
    if ((AAByteStreamTruncate(a2) & 0x80000000) != 0)
    {
      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerRemovePadding", 328, 28, "Warning: container truncate failed", v3, v4, v5);
    }
  }

  return 0;
}

uint64_t sub_1000F1488(uint64x2_t *a1, void *a2)
{
  v2 = a1[25].i32[0];
  if (!v2)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerRemoveLastSegment", 339, 28, 0, "No segments to remove");
    return 0xFFFFFFFFLL;
  }

  if (a1[4].i64[0])
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerRemoveLastSegment", 340, 28, 0, "Padding was not removed");
    return 0xFFFFFFFFLL;
  }

  v6 = a1[24].i64[1] + 544 * (v2 - 1);
  v7 = a1[25].i32[1];
  a1[25].i32[0] = v2 - 1;
  a1[25].i32[1] = (v2 + a1[1].i32[1] - 2) / a1[1].i32[1];
  a1[2] = vsubw_u32(a1[2], *(v6 + 4));
  memset_s(v6, 0x220uLL, 0, 0x220uLL);
  if (v7 != a1[25].i32[1])
  {
    a1[2].i64[1] -= a1[23].i64[1];
  }

  if ((AAByteStreamTruncate(a2) & 0x80000000) != 0)
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerRemoveLastSegment", 364, 28, "Warning: container truncate failed", v8, v9, v10);
  }

  return 0;
}

uint64_t sub_1000F15B0(unsigned int *a1, AAByteStream_impl *a2, unsigned int *a3, _DWORD *a4, unsigned int *a5, unsigned int *a6)
{
  v107 = 0;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  *__n = 0u;
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  *v74 = 0u;
  v75 = 0u;
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  *v57 = 0u;
  v58 = 0u;
  v12 = a1[4];
  v13 = *a1;
  v14 = *a1 < 6;
  memset(v55, 0, sizeof(v55));
  v56 = 0;
  v15 = malloc(v12);
  if (!v15)
  {
    v47 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 390, 28, *v47, "malloc");
    v46 = 0xFFFFFFFFLL;
    goto LABEL_66;
  }

  if ((sub_1000FC3DC(a1 + 18, a1, v74, v57, __n, a3, a4, a5, a6) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 400, 28, 0, "generating new main key");
    v46 = 0xFFFFFFFFLL;
    goto LABEL_65;
  }

  v50 = v12;
  if (!a1[100])
  {
LABEL_47:
    v43 = LODWORD(__n[0]);
    if (LODWORD(__n[0]) >= 0x101 || (memcpy(a1 + 103, __n + 4, LODWORD(__n[0])), a1[102] = v43, memset_s(a1 + v43 + 412, 256 - v43, 0, 256 - v43), v44 = LODWORD(v74[0]), v12 = v50, LODWORD(v74[0]) >= 0x101) || (memcpy(a1 + 168, v74 + 4, LODWORD(v74[0])), a1[167] = v44, memset_s(a1 + v44 + 672, 256 - v44, 0, 256 - v44), v45 = LODWORD(v57[0]), LODWORD(v57[0]) >= 0x101))
    {
LABEL_68:
      __break(1u);
    }

    memcpy(a1 + 233, v57 + 4, LODWORD(v57[0]));
    a1[232] = v45;
    memset_s(a1 + v45 + 932, 256 - v45, 0, 256 - v45);
    v46 = 0;
    goto LABEL_65;
  }

  v16 = 0;
  v49 = v14 & (1u >> v13);
  v51 = a1 + 167;
  v53 = v15;
  while (1)
  {
    if (!*(a2 + 4))
    {
      goto LABEL_54;
    }

    v17 = *(a1 + 49) + 544 * v16;
    v18 = a1[5];
    nbyte = *(v17 + 8);
    v52 = v17;
    v19 = 0;
    if (nbyte)
    {
      v20 = *(v17 + 16);
      v21 = v15;
      v22 = *(v17 + 8);
      while (1)
      {
        v23 = (*(a2 + 4))(*a2, v21, v22, v20);
        if (v23 < 0)
        {
          break;
        }

        if (v23)
        {
          v21 += v23;
          v19 += v23;
          v20 += v23;
          v22 -= v23;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v19 = v23;
    }

LABEL_13:
    v15 = v53;
    if (v19 != nbyte)
    {
LABEL_54:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 412, 28, 0, "loading compressed segment");
      goto LABEL_63;
    }

    v124 = 0;
    v123 = 0uLL;
    v122 = 0uLL;
    v121 = 0uLL;
    v120 = 0uLL;
    v119 = 0uLL;
    v118 = 0uLL;
    v117 = 0uLL;
    v116 = 0uLL;
    v115 = 0uLL;
    v114 = 0uLL;
    v113 = 0uLL;
    v112 = 0uLL;
    v111 = 0uLL;
    v110 = 0uLL;
    v109 = 0uLL;
    v108 = 0uLL;
    *(&__s[15] + 4) = 0uLL;
    *(&__s[14] + 8) = 0uLL;
    *(&__s[13] + 8) = 0uLL;
    *(&__s[12] + 8) = 0uLL;
    *(&__s[11] + 8) = 0uLL;
    *(&__s[10] + 8) = 0uLL;
    *(&__s[9] + 8) = 0uLL;
    *(&__s[8] + 8) = 0uLL;
    *(&__s[7] + 8) = 0uLL;
    *(&__s[6] + 8) = 0uLL;
    *(&__s[5] + 8) = 0uLL;
    *(&__s[4] + 8) = 0uLL;
    *(&__s[3] + 8) = 0uLL;
    *(&__s[2] + 8) = 0uLL;
    *(&__s[1] + 8) = 0uLL;
    __s[0] = 0x5F41454100000006uLL;
    memset(v125, 0, 260);
    WORD4(__s[0]) = 19267;
    memset_s(__s + 10, 0xFAuLL, 0, 0xFAuLL);
    v24 = LODWORD(__s[0]);
    if (LODWORD(__s[0]) >= 0xFD)
    {
      goto LABEL_68;
    }

    *(__s + LODWORD(__s[0]) + 4) = v16 / v18;
    LODWORD(__s[0]) = v24 + 4;
    memset_s(__s + v24 + 8, 252 - v24, 0, 252 - v24);
    v25 = *(a1 + 18);
    if (v25 && *v51)
    {
      v26 = v25(&v108, a1[18], v51, __s, v125);
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
      v27 = 0;
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
    }

    v27 = 1;
LABEL_21:
    memset(v125 + 8, 0, 224);
    memset(&v125[14] + 8, 0, 28);
    WORD4(v125[0]) = 19283;
    *&v125[0] = 0x5F41454100000006;
    memset_s(v125 + 10, 0xFAuLL, 0, 0xFAuLL);
    v28 = LODWORD(v125[0]);
    if (LODWORD(v125[0]) >= 0xFD)
    {
      goto LABEL_68;
    }

    v29 = v16 % v18;
    *(v125 + LODWORD(v125[0]) + 4) = v16 % v18;
    LODWORD(v125[0]) = v28 + 4;
    memset_s(v125 + v28 + 8, 252 - v28, 0, 252 - v28);
    memset(__s, 0, 260);
    v30 = *(a1 + 18);
    if (!v30 || !v108)
    {
      memset_s(v125, 0x104uLL, 0, 0x104uLL);
LABEL_57:
      memset_s(&v108, 0x104uLL, 0, 0x104uLL);
LABEL_58:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 416, 28, 0, "deriving segment key");
LABEL_59:
      v46 = 0xFFFFFFFFLL;
      v15 = v53;
      goto LABEL_64;
    }

    v31 = v30(v55, a1[19], &v108, v125, __s);
    memset_s(v125, 0x104uLL, 0, 0x104uLL);
    if (v31 < 0)
    {
      goto LABEL_57;
    }

    memset_s(&v108, 0x104uLL, 0, 0x104uLL);
    if (v27)
    {
      goto LABEL_58;
    }

    v32 = *(a1 + 21);
    if (!v32 || (v33 = (v52 + 284), *(v52 + 284) != a1[21]) || (v32(v53, nbyte, v52 + 284, v55, 0, 0) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 418, 28, 0, "decrypting segment data");
      goto LABEL_59;
    }

    v124 = 0;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    memset(__s + 8, 0, 252);
    memset(v125, 0, 260);
    WORD4(__s[0]) = 19267;
    *&__s[0] = 0x5F41454100000006;
    memset_s(__s + 10, 0xFAuLL, 0, 0xFAuLL);
    v34 = LODWORD(__s[0]);
    if (LODWORD(__s[0]) >= 0xFD)
    {
      goto LABEL_68;
    }

    *(__s + LODWORD(__s[0]) + 4) = v16 / v18;
    LODWORD(__s[0]) = v34 + 4;
    memset_s(__s + v34 + 8, 252 - v34, 0, 252 - v34);
    v35 = *(a1 + 18);
    if (v35 && LODWORD(v74[0]))
    {
      v36 = v35(&v108, a1[18], v74, __s, v125);
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
      v37 = 0;
      if ((v36 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
    }

    v37 = 1;
LABEL_36:
    memset(v125 + 8, 0, 224);
    memset(&v125[14] + 8, 0, 28);
    WORD4(v125[0]) = 19283;
    *&v125[0] = 0x5F41454100000006;
    memset_s(v125 + 10, 0xFAuLL, 0, 0xFAuLL);
    v38 = LODWORD(v125[0]);
    if (LODWORD(v125[0]) >= 0xFD)
    {
      goto LABEL_68;
    }

    *(v125 + LODWORD(v125[0]) + 4) = v29;
    LODWORD(v125[0]) = v38 + 4;
    memset_s(v125 + v38 + 8, 252 - v38, 0, 252 - v38);
    memset(__s, 0, 260);
    v39 = *(a1 + 18);
    if (!v39 || !v108)
    {
      break;
    }

    v40 = v39(v55, a1[19], &v108, v125, __s);
    memset_s(v125, 0x104uLL, 0, 0x104uLL);
    v15 = v53;
    if (v40 < 0)
    {
      goto LABEL_61;
    }

    memset_s(&v108, 0x104uLL, 0, 0x104uLL);
    if (v37)
    {
      goto LABEL_62;
    }

    v41 = *(a1 + 20);
    if (!v41 || (v42 = v41(v53, nbyte, v33, v55, 0, 0), *v33 != a1[21]) || v42 < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 424, 28, 0, "decrypting segment data");
      goto LABEL_63;
    }

    if ((v49 & 1) == 0 && AAByteStreamPWrite(a2, v53, nbyte, *(v52 + 16)) != nbyte)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 429, 28, 0, "storing compressed segment");
      goto LABEL_63;
    }

    if (++v16 >= a1[100])
    {
      goto LABEL_47;
    }
  }

  memset_s(v125, 0x104uLL, 0, 0x104uLL);
  v15 = v53;
LABEL_61:
  memset_s(&v108, 0x104uLL, 0, 0x104uLL);
LABEL_62:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 422, 28, 0, "deriving segment key");
LABEL_63:
  v46 = 0xFFFFFFFFLL;
LABEL_64:
  v12 = v50;
LABEL_65:
  memset_s(v15, v12, 0, v12);
LABEL_66:
  free(v15);
  memset_s(v74, 0x104uLL, 0, 0x104uLL);
  memset_s(__n, 0x104uLL, 0, 0x104uLL);
  memset_s(v57, 0x104uLL, 0, 0x104uLL);
  memset_s(v55, 0x104uLL, 0, 0x104uLL);
  return v46;
}

uint64_t sub_1000F2144(uint64_t a1, void *a2, unsigned int a3, uint8_t *a4, uint8_t *a5, void *a6)
{
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = a5;
  }

  else
  {
    v7 = a4;
  }

  if (*(a1 + 400) <= a3)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerLoadSegment", 463, 28, 0, "Invalid segment index");
    goto LABEL_41;
  }

  if (!a2[4])
  {
    goto LABEL_20;
  }

  v11 = *(a1 + 392) + 544 * a3;
  v12 = *(v11 + 8);
  __n = *(v11 + 4);
  v36 = v11;
  if (v12)
  {
    v13 = 0;
    v14 = *(v11 + 16);
    v15 = v7;
    v16 = *(v11 + 8);
    while (1)
    {
      v17 = (a2[4])(*a2, v7, v12, v14);
      if (v17 < 0)
      {
        break;
      }

      if (v17)
      {
        v7 += v17;
        v13 += v17;
        v14 += v17;
        v12 -= v17;
        if (v12)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v13 = v17;
  }

  else
  {
    v15 = v7;
    v16 = *(v11 + 8);
    v13 = 0;
  }

LABEL_15:
  if (v13 != v16)
  {
LABEL_20:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerLoadSegment", 471, 28, 0, "loading segment");
    goto LABEL_41;
  }

  v18 = v16;
  v19 = v15;
  v20 = *(a1 + 20);
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  memset(&__s[8], 0, 252);
  memset(v48, 0, 260);
  *&__s[8] = 19267;
  memset_s(&__s[10], 0xFAuLL, 0, 0xFAuLL);
  v34 = v18;
  *&__s[10] = a3 / v20;
  *__s = 0x5F4145410000000ALL;
  memset_s(&__s[14], 0xF6uLL, 0, 0xF6uLL);
  v21 = *(a1 + 144);
  if (v21 && *(a1 + 668))
  {
    v22 = v21(v46, *(a1 + 72));
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
    v23 = 0;
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
  }

  v23 = 1;
LABEL_23:
  memset(v48 + 8, 0, 224);
  memset(&v48[14] + 8, 0, 28);
  WORD4(v48[0]) = 19283;
  *&v48[0] = 0x5F41454100000006;
  result = memset_s(v48 + 10, 0xFAuLL, 0, 0xFAuLL);
  v25 = LODWORD(v48[0]);
  if (LODWORD(v48[0]) < 0xFD)
  {
    *(v48 + LODWORD(v48[0]) + 4) = a3 % v20;
    LODWORD(v48[0]) = v25 + 4;
    memset_s(v48 + v25 + 8, 252 - v25, 0, 252 - v25);
    memset(__s, 0, sizeof(__s));
    v26 = *(a1 + 144);
    if (v26 && LODWORD(v46[0]))
    {
      v27 = v26(v42, *(a1 + 76), v46, v48, __s);
      memset_s(v48, 0x104uLL, 0, 0x104uLL);
      if ((v27 & 0x80000000) == 0)
      {
        memset_s(v46, 0x104uLL, 0, 0x104uLL);
        if (!v23)
        {
          v28 = *(a1 + 168);
          if (v28 && *(v36 + 284) == *(a1 + 84) && (v28(v19, v34) & 0x80000000) == 0)
          {
            v29 = __n;
            if (v6)
            {
              v30 = *(a1 + 24);
              if (v30 && __n > v34)
              {
                if (v30 == 774)
                {
                  v31 = sub_1000E7CEC(a4, *(a1 + 16), a5, v34);
                  if (v31 >= 0)
                  {
                    v31 = v31;
                  }

                  else
                  {
                    v31 = 0;
                  }
                }

                else
                {
                  v32 = sub_1000FB3BC(v30);
                  v31 = compression_decode_buffer(a4, *(a1 + 16), a5, v34, a6, v32);
                }

                if (v31 != __n)
                {
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerLoadSegment", 511, 28, 0, "Segment decompression", v34);
                  goto LABEL_41;
                }
              }

              else
              {
                memcpy(a4, a5, __n);
              }
            }

            if ((sub_1000FB1CC(v40, *(a1 + 12), a4, __n) & 0x80000000) != 0)
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerLoadSegment", 515, 28, 0, "computing segment checksum", v34);
            }

            else
            {
              v33 = *(a1 + 48);
              if (!v33 || !memcmp(v40 + 4, (v36 + 28), v33))
              {
                goto LABEL_42;
              }

              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerLoadSegment", 519, 28, 0, "Checksum verification failed, data corrupted", v34);
            }
          }

          else
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerLoadSegment", 485, 28, 0, "decrypting segment data", v34);
          }

LABEL_41:
          v29 = -1;
LABEL_42:
          memset_s(v44, 0x104uLL, 0, 0x104uLL);
          memset_s(v42, 0x104uLL, 0, 0x104uLL);
          memset_s(v40, 0x104uLL, 0, 0x104uLL);
          return v29;
        }

LABEL_40:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerLoadSegment", 481, 28, 0, "deriving segment key", v34);
        goto LABEL_41;
      }
    }

    else
    {
      memset_s(v48, 0x104uLL, 0, 0x104uLL);
    }

    memset_s(v46, 0x104uLL, 0, 0x104uLL);
    goto LABEL_40;
  }

  __break(1u);
  return result;
}

BOOL sub_1000F2804(uint64_t a1, unsigned int a2, void *a3, uint64_t a4)
{
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__n = 0u;
  v8 = 0u;
  if (*(a1 + 400) <= a2)
  {
    goto LABEL_6;
  }

  v4 = (*(a1 + 392) + 544 * a2);
  if (v4[1] != a4)
  {
    return 0;
  }

  if ((sub_1000FB1CC(__n, *(a1 + 12), a3, a4) & 0x80000000) != 0 || LODWORD(__n[0]) != v4[6])
  {
LABEL_6:
    v5 = 0;
  }

  else
  {
    v5 = memcmp(__n + 4, v4 + 7, LODWORD(__n[0])) == 0;
  }

  memset_s(__n, 0x104uLL, 0, 0x104uLL);
  return v5;
}

unint64_t sub_1000F2900(unint64_t result, unint64_t a2)
{
  if (result)
  {
    if (a2 > 0xF)
    {
      goto LABEL_8;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        if (result >= 8)
        {
          v4 = __clz(result);
          v5 = __clz(v4 ^ 0x3F) - v4;
          if (v5 < -31)
          {
            return -1;
          }

          a2 = 1 << (v5 + 31);
LABEL_8:
          if (!__CFADD__(result, a2 - 1))
          {
            return (result + a2 - 1) / a2 * a2;
          }

          return -1;
        }
      }

      else
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaPaddedContainerSize", 585, 28, 0, "Invalid padding_alignment", v2, v3);
        return -1;
      }
    }
  }

  return result;
}

uint64_t sub_1000F29A8(uint64_t a1, AAByteStream_impl *a2)
{
  v3 = *(a1 + 344);
  v4 = *(a1 + 376);
  if (v3 <= v4)
  {
    v5 = *(a1 + 376);
  }

  else
  {
    v5 = *(a1 + 344);
  }

  v154 = 0;
  if (v5 <= 0x100000)
  {
    v6 = 0x100000;
  }

  else
  {
    v6 = v5;
  }

  memset(__s, 0, sizeof(__s));
  v152 = 0;
  v151 = 0u;
  v150 = 0u;
  v149 = 0u;
  v148 = 0u;
  v147 = 0u;
  v146 = 0u;
  v145 = 0u;
  v144 = 0u;
  v143 = 0u;
  v142 = 0u;
  v141 = 0u;
  v140 = 0u;
  v139 = 0u;
  v138 = 0u;
  v137 = 0u;
  *v136 = 0u;
  v135 = 0;
  memset(v134, 0, sizeof(v134));
  v133 = 0;
  memset(v132, 0, sizeof(v132));
  v131 = 0;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  *v115 = 0u;
  v116 = 0u;
  v114 = 0;
  memset(v113, 0, sizeof(v113));
  v112 = 0;
  memset(v111, 0, sizeof(v111));
  v107 = 0;
  v106 = 0;
  v109 = 0u;
  v110 = 0u;
  v108 = 0u;
  if (v5 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_21:
    v17 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 620, 28, *v17, "malloc");
    v8 = 0;
    v16 = 0;
    v18 = 0;
    v19 = 0xFFFFFFFFLL;
    v20 = 1;
LABEL_25:
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
    memset_s(v136, 0x104uLL, 0, 0x104uLL);
    memset_s(v113, 0x104uLL, 0, 0x104uLL);
    memset_s(v134, 0x104uLL, 0, 0x104uLL);
    memset_s(v132, 0x104uLL, 0, 0x104uLL);
    memset_s(v115, 0x104uLL, 0, 0x104uLL);
    memset_s(v111, 0x104uLL, 0, 0x104uLL);
    memset_s(&v108, 0x30uLL, 0, 0x30uLL);
    memset_s(&v106, 0xCuLL, 0, 0xCuLL);
    if ((v20 & 1) == 0)
    {
      memset_s(v8, v6, 0, v6);
    }

    free(v8);
    if (v18)
    {
      memset_s(v18, v16, 0, v16);
    }

    free(v18);
    v21 = *(a1 + 384);
    if (v21)
    {
      memset_s(*(a1 + 384), *(a1 + 4), 0, *(a1 + 4));
    }

    free(v21);
    *(a1 + 384) = 0;
    return v19;
  }

  v7 = malloc(v6);
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v9 = *(a1 + 84);
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  if (v9 > 0x100 || (v10 = *(a1 + 136)) == 0 || (v10(__s + 4, v9) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 624, 28, 0, "generating last cluster random MAC");
LABEL_23:
    v20 = 0;
    v16 = 0;
    v18 = 0;
LABEL_24:
    v19 = 0xFFFFFFFFLL;
    goto LABEL_25;
  }

  __n = v6;
  LODWORD(__s[0]) = v9;
  v11 = *(a1 + 56);
  if (v11)
  {
    v12 = *(a1 + 40);
    v13 = sub_1000F2900(v12, v11);
    if (v13 == -1)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 631, 28, 0, "Container size is too large to allow padding");
LABEL_130:
      v20 = 0;
      v16 = 0;
      goto LABEL_131;
    }

    v14 = v13;
    if (v13 > v12)
    {
      memset(v190, 0, sizeof(v190));
      memset(v189, 0, 260);
      v188 = 0;
      v187 = 0u;
      v186 = 0u;
      v185 = 0u;
      v184 = 0u;
      v183 = 0u;
      v182 = 0u;
      v181 = 0u;
      v180 = 0u;
      v179 = 0u;
      v178 = 0u;
      v177 = 0u;
      v176 = 0u;
      v175 = 0u;
      v174 = 0u;
      v173 = 0u;
      v172 = 0u;
      if (*(a1 + 248) && (*(v189 + 7) = 1262571615, *&v189[0] = 0x5F41454100000007, memset_s((v189 | 0xB), 0xF9uLL, 0, 0xF9uLL), (v15 = *(a1 + 144)) != 0) && *(a1 + 668) && (v15(v190, *(a1 + 72)) & 0x80000000) == 0)
      {
        v16 = (*(a1 + 248))(v190);
      }

      else
      {
        v16 = 0;
      }

      memset_s(v190, 0x104uLL, 0, 0x104uLL);
      memset_s(v189, 0x104uLL, 0, 0x104uLL);
      if (!v16)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 636, 28, 0, "hashing padding");
        v20 = 0;
LABEL_131:
        v18 = 0;
LABEL_132:
        v19 = 0xFFFFFFFFLL;
LABEL_133:
        v6 = __n;
        goto LABEL_25;
      }

      nbyte = v3;
      v103 = v16;
      while (1)
      {
        if (v14 - v12 >= 0x100000)
        {
          v23 = 0x100000;
        }

        else
        {
          v23 = v14 - v12;
        }

        v24 = *(a1 + 136);
        if (!v24 || (v24(v8, v23) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 640, 28, 0, "generating padding", nbyte);
          goto LABEL_58;
        }

        v25 = *(a1 + 256);
        if (!v25 || (v25(v16, v8, v23) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 641, 28, 0, "hashing padding", nbyte);
          goto LABEL_58;
        }

        if (!*(a2 + 5))
        {
          break;
        }

        v26 = v14;
        if (v14 == v12)
        {
          v27 = 0;
        }

        else
        {
          v27 = 0;
          v28 = v8;
          v29 = v12;
          v30 = v23;
          while (1)
          {
            v31 = (*(a2 + 5))(*a2, v28, v30, v29);
            if (v31 < 1)
            {
              break;
            }

            v28 += v31;
            v27 += v31;
            v29 += v31;
            v30 -= v31;
            if (!v30)
            {
              goto LABEL_51;
            }
          }

          v27 = v31;
        }

LABEL_51:
        v16 = v103;
        if (v23 != v27)
        {
          break;
        }

        v14 = v26;
        v12 += v23;
        if (v12 >= v26)
        {
          v32 = 0;
          goto LABEL_59;
        }
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 642, 28, 0, "writing padding", nbyte);
LABEL_58:
      v32 = 1;
LABEL_59:
      v33 = *(a1 + 264);
      if (v33)
      {
        if ((v33(v16, __s) & 0x80000000) == 0 && LODWORD(__s[0]) == *(a1 + 84))
        {
          if (!v32)
          {
            *(a1 + 40) = v12;
            v3 = nbyte;
            goto LABEL_64;
          }

          goto LABEL_129;
        }

        memset_s(__s, 0x104uLL, 0, 0x104uLL);
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 645, 28, 0, "hashing padding", nbyte);
LABEL_129:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 647, 28, 0, "Padding generation and hashing failed", nbyte);
      goto LABEL_130;
    }
  }

LABEL_64:
  nbytea = v3;
  v34 = *(a1 + 404);
  v35 = v34 - 1;
  v100 = (a1 + 668);
  while (v34)
  {
    v36 = *(a1 + 20);
    v102 = v35;
    v104 = v34 - 1;
    v37 = (v36 * (v34 - 1));
    v38 = *(a1 + 400);
    if (v36 * v34 >= v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = (v36 * v34);
    }

    v40 = *(a1 + 392);
    v101 = *(v40 + 544 * v37 + 16);
    v41 = *(a1 + 368);
    v42 = *(a1 + 376);
    v43 = 0;
    if (v37 < v39)
    {
      v44 = (v40 + 544 * (v36 * v35));
      do
      {
        v45 = &v8[v43];
        *v45 = v44[1];
        *(v45 + 1) = v44[2];
        v46 = v43 + 8;
        memcpy(&v8[v46], v44 + 7, v44[6]);
        v43 = v46 + v44[6];
        memcpy(&v8[v41], v44 + 72, v44[71]);
        v41 += v44[71];
        ++v37;
        v44 += 136;
      }

      while (v37 < v39);
    }

    v47 = *(a1 + 360);
    v48 = v42;
    if (v47 > v43)
    {
      memset_s(&v8[v43], v47 - v43, 0, v47 - v43);
      v48 = *(a1 + 376);
    }

    v49 = v48 - v41;
    if (v48 > v41)
    {
      v50 = *(a1 + 136);
      if (!v50 || (v50(&v8[v41], v49) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 686, 28, 0, "generating random padding", nbytea);
        goto LABEL_130;
      }
    }

    memcpy(&v8[*(a1 + 360)], __s + 4, LODWORD(__s[0]));
    v188 = 0;
    v187 = 0u;
    v186 = 0u;
    v185 = 0u;
    v184 = 0u;
    v183 = 0u;
    v182 = 0u;
    v181 = 0u;
    v180 = 0u;
    v179 = 0u;
    v178 = 0u;
    v177 = 0u;
    v176 = 0u;
    v175 = 0u;
    v174 = 0u;
    v173 = 0u;
    v172 = 0u;
    memset(&v190[8], 0, 252);
    memset(v189, 0, 260);
    *&v190[8] = 19267;
    *v190 = 0x5F41454100000006;
    result = memset_s(&v190[10], 0xFAuLL, 0, 0xFAuLL);
    v51 = *v190;
    if (*v190 >= 0xFDu)
    {
      goto LABEL_181;
    }

    v34 = v104;
    *&v190[*v190 + 4] = v104;
    *v190 = v51 + 4;
    memset_s(&v190[v51 + 8], 252 - v51, 0, 252 - v51);
    v52 = *(a1 + 144);
    if (!v52 || !*v100)
    {
      memset_s(v190, 0x104uLL, 0, 0x104uLL);
LABEL_83:
      v54 = 1;
      goto LABEL_84;
    }

    v53 = v52(&v172, *(a1 + 72), v100, v190, v189);
    memset_s(v190, 0x104uLL, 0, 0x104uLL);
    v54 = 0;
    if (v53 < 0)
    {
      goto LABEL_83;
    }

LABEL_84:
    memset(v189 + 12, 0, 248);
    *(v189 + 4) = 0x4B4548435F414541;
    LODWORD(v189[0]) = 8;
    memset_s(v189 + 12, 0xF8uLL, 0, 0xF8uLL);
    memset(v190, 0, sizeof(v190));
    v55 = *(a1 + 144);
    if (!v55 || !v172)
    {
      memset_s(v189, 0x104uLL, 0, 0x104uLL);
LABEL_125:
      memset_s(&v172, 0x104uLL, 0, 0x104uLL);
LABEL_126:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 694, 28, 0, "derivating secondary key", nbytea);
      goto LABEL_130;
    }

    v56 = v55(v134, *(a1 + 76), &v172, v189, v190);
    memset_s(v189, 0x104uLL, 0, 0x104uLL);
    if (v56 < 0)
    {
      goto LABEL_125;
    }

    memset_s(&v172, 0x104uLL, 0, 0x104uLL);
    if (v54)
    {
      goto LABEL_126;
    }

    v57 = *(a1 + 160);
    if (!v57 || (v58 = v57(v8, *(a1 + 360), __s, v134, &v8[*(a1 + 360)], v4 - *(a1 + 360)), LODWORD(__s[0]) != *(a1 + 84)) || v58 < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 701, 28, 0, "Cluster header encryption", nbytea);
      goto LABEL_130;
    }

    v59 = *(a2 + 5);
    if (v59)
    {
      v60 = 0;
    }

    else
    {
      v60 = -1;
    }

    if (v59 && v4)
    {
      v60 = 0;
      v61 = v101 - v42;
      v62 = v8;
      v63 = v4;
      while (1)
      {
        v64 = (*(a2 + 5))(*a2, v62, v63, v61);
        if (v64 < 1)
        {
          break;
        }

        v62 += v64;
        v60 += v64;
        v61 += v64;
        v63 -= v64;
        if (!v63)
        {
          goto LABEL_101;
        }
      }

      v60 = v64;
    }

LABEL_101:
    v35 = v102 - 1;
    if (v60 != v4)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 706, 28, 0, "writing cluster header", nbytea);
      goto LABEL_130;
    }
  }

  v6 = __n;
  memset_s(v8, __n, 0, __n);
  if ((sub_1000FB054(&v106, a1) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 716, 28, 0, "encoding magic", nbytea);
    goto LABEL_23;
  }

  v65 = *(a1 + 288);
  v66 = &v8[*(a1 + 280)];
  *v66 = v106;
  *(v66 + 2) = v107;
  memcpy(&v8[v65], *(a1 + 384), *(a1 + 4));
  memcpy(&v8[*(a1 + 336)], __s + 4, LODWORD(__s[0]));
  if ((sub_1000FB078(&v108, a1) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 726, 28, 0, "encoding root header", nbytea);
    goto LABEL_23;
  }

  v67 = LODWORD(__s[0]);
  v68 = *(a1 + 4);
  v16 = (v68 + LODWORD(__s[0]));
  v69 = malloc(v16);
  v18 = v69;
  if (!v69)
  {
    v85 = *__error();
    v83 = "malloc";
    v84 = 731;
    goto LABEL_140;
  }

  memcpy(v69, __s + 4, v67);
  memcpy(&v18[v67], *(a1 + 384), v68);
  memset(v189 + 12, 0, 248);
  *(v189 + 4) = 0x4B4548525F414541;
  LODWORD(v189[0]) = 8;
  memset_s(v189 + 12, 0xF8uLL, 0, 0xF8uLL);
  memset(v190, 0, sizeof(v190));
  v70 = *(a1 + 144);
  if (!v70 || !*v100)
  {
    memset_s(v189, 0x104uLL, 0, 0x104uLL);
    goto LABEL_137;
  }

  v71 = v70(v134, *(a1 + 76), v100, v189, v190);
  memset_s(v189, 0x104uLL, 0, 0x104uLL);
  if (v71 < 0)
  {
LABEL_137:
    v83 = "derivating RHEK";
    v84 = 738;
LABEL_138:
    v85 = 0;
LABEL_140:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", v84, 28, v85, v83, nbytea);
    v20 = 0;
    goto LABEL_24;
  }

  v72 = *(a1 + 160);
  if (!v72 || (v73 = v72(&v108, 48, v136, v134, v18, v16), v74 = LODWORD(v136[0]), LODWORD(v136[0]) != *(a1 + 84)) || v73 < 0)
  {
    v83 = "Root header encryption";
    v84 = 744;
    goto LABEL_138;
  }

  v75 = *(a1 + 320);
  v76 = &v8[*(a1 + 328)];
  v77 = v109;
  *v76 = v108;
  *(v76 + 1) = v77;
  *(v76 + 2) = v110;
  memcpy(&v8[v75], v136 + 4, v74);
  memcpy(&v8[*(a1 + 312)], (a1 + 412), *(a1 + 408));
  v78 = *(a1 + 928);
  if (v78 != *(a1 + 120))
  {
    v83 = "Invalid encryption data size";
    v84 = 752;
    goto LABEL_138;
  }

  memcpy(&v8[*(a1 + 304)], (a1 + 932), v78);
  if (!*(a1 + 1188) && !*(a1 + 1712))
  {
LABEL_172:
    v95 = *(a1 + 272);
    if (v95 && (v96 = v95(a1 + 1448, v8, nbytea), *(a1 + 1448) == *(a1 + 124)) && (v96 & 0x80000000) == 0)
    {
      if (AAByteStreamPWrite(a2, v8, nbytea, 0) == nbytea)
      {
        v20 = 0;
        v19 = 0;
        goto LABEL_133;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 800, 28, 0, "writing container headers", nbytea);
    }

    else
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 796, 28, 0, "digesting prologue", nbytea);
    }

    goto LABEL_144;
  }

  v79 = *(a1 + 192);
  if (!v79 || (v80 = v79(v111, v8, nbytea), LODWORD(v111[0]) != *(a1 + 108)) || v80 < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 759, 28, 0, "digesting prologue", nbytea);
LABEL_144:
    v20 = 0;
    goto LABEL_132;
  }

  v81 = *(a1 + 1712);
  if (!v81)
  {
    v86 = *(a1 + 200);
    if (!v86 || (result = v86(v132, a1 + 1188, v111), LODWORD(v132[0]) != *(a1 + 112)) || (result & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 778, 28, 0, "signing prologue", nbytea);
      goto LABEL_144;
    }

LABEL_152:
    if (*a1)
    {
      memset(&v190[8], 0, 252);
      memset(v189, 0, 260);
      *&v190[7] = 1262834527;
      *v190 = 0x5F41454100000007;
      memset_s(&v190[11], 0xF9uLL, 0, 0xF9uLL);
      v87 = *(a1 + 144);
      if (v87 && *v100)
      {
        v88 = v87(v113, *(a1 + 72), v100, v190, v189);
        memset_s(v190, 0x104uLL, 0, 0x104uLL);
        if ((v88 & 0x80000000) == 0)
        {
          if (*(a1 + 216))
          {
            memset(v189, 0, 260);
            v188 = 0;
            v187 = 0u;
            v186 = 0u;
            v185 = 0u;
            v184 = 0u;
            v183 = 0u;
            v182 = 0u;
            v181 = 0u;
            v180 = 0u;
            v179 = 0u;
            v178 = 0u;
            v177 = 0u;
            v176 = 0u;
            v175 = 0u;
            v174 = 0u;
            v173 = 0u;
            v172 = 0u;
            v171 = 0;
            v170 = 0u;
            v169 = 0u;
            v168 = 0u;
            v167 = 0u;
            v166 = 0u;
            v165 = 0u;
            v164 = 0u;
            v163 = 0u;
            v162 = 0u;
            v161 = 0u;
            v160 = 0u;
            v159 = 0u;
            v158 = 0u;
            v157 = 0u;
            v156 = 0u;
            *v155 = 0u;
            if (LODWORD(v132[0]) == *(a1 + 112) && LODWORD(v113[0]) == *(a1 + 72))
            {
              *(&v172 + 4) = 0x324B45535F414541;
              LODWORD(v172) = 8;
              memset_s((&v172 | 0xC), 0xF8uLL, 0, 0xF8uLL);
              memset(v190, 0, sizeof(v190));
              v89 = *(a1 + 144);
              if (v89)
              {
                if (LODWORD(v113[0]))
                {
                  result = v89(v189, *(a1 + 76), v113, &v172, v190);
                  if ((result & 0x80000000) == 0)
                  {
                    v90 = LODWORD(v132[0]);
                    if (LODWORD(v132[0]) >= 0x101)
                    {
                      goto LABEL_181;
                    }

                    __memcpy_chk();
                    LODWORD(v115[0]) = v90;
                    memset_s(v115 + v90 + 4, 256 - v90, 0, 256 - v90);
                    result = (*(a1 + 216))(v115 + 4, LODWORD(v132[0]), v155, v189, 0, 0);
                    if ((result & 0x80000000) == 0)
                    {
                      v91 = LODWORD(v115[0]) + LODWORD(v155[0]);
                      if (v91 >= 0x101)
                      {
                        goto LABEL_181;
                      }

                      memcpy(v115 + LODWORD(v115[0]) + 4, v155 + 4, LODWORD(v155[0]));
                      LODWORD(v115[0]) = v91;
                      memset_s(v115 + v91 + 4, 256 - v91, 0, 256 - v91);
                      v92 = v115[0];
                      v93 = *(a1 + 116);
                      memset_s(v189, 0x104uLL, 0, 0x104uLL);
                      memset_s(v155, 0x104uLL, 0, 0x104uLL);
                      memset_s(&v172, 0x104uLL, 0, 0x104uLL);
                      if (v92 != v93)
                      {
                        goto LABEL_180;
                      }

                      goto LABEL_171;
                    }
                  }
                }
              }
            }

            memset_s(v189, 0x104uLL, 0, 0x104uLL);
            memset_s(v155, 0x104uLL, 0, 0x104uLL);
            memset_s(&v172, 0x104uLL, 0, 0x104uLL);
          }

LABEL_180:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 788, 28, 0, "encrypt signature", nbytea);
          goto LABEL_144;
        }
      }

      else
      {
        memset_s(v190, 0x104uLL, 0, 0x104uLL);
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 786, 28, 0, "deriving signature encryption key", nbytea);
      goto LABEL_144;
    }

    v94 = LODWORD(v132[0]);
    if (LODWORD(v132[0]) >= 0x101)
    {
      goto LABEL_181;
    }

    __memcpy_chk();
    LODWORD(v115[0]) = v94;
    memset_s(v115 + v94 + 4, 256 - v94, 0, 256 - v94);
LABEL_171:
    memcpy(&v8[*(a1 + 296)], v115 + 4, LODWORD(v115[0]));
    goto LABEL_172;
  }

  *v190 = 0;
  result = v81(*(a1 + 1720), 256, v132 + 4, v190, v111 + 4);
  if ((result & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 771, 28, 0, "Signing callback", nbytea);
    goto LABEL_144;
  }

  v82 = *(a1 + 112);
  if (*v190 > v82)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 772, 28, 0, "Invalid callback size return value", nbytea);
    goto LABEL_144;
  }

  if (v82 < 0x101)
  {
    LODWORD(v132[0]) = *(a1 + 112);
    result = memset_s(v132 + v82 + 4, 256 - v82, 0, 256 - v82);
    goto LABEL_152;
  }

LABEL_181:
  __break(1u);
  return result;
}

void *sub_1000F40E4(void *a1, size_t __size)
{
  if (__size >= 0x1000)
  {
    v4 = malloc(__size);
    if (v4)
    {
      v5 = v4;
      memcpy(v4, a1, __size);
      free(a1);
      return v5;
    }
  }

  return a1;
}

uint64_t sub_1000F4144()
{
  v0 = sysconf(200);
  v1 = sysconf(29);
  if (v1 <= 0 || v0 <= 0)
  {
    return 0;
  }

  else
  {
    return v1 * v0;
  }
}

uint64_t sub_1000F4184(const char *a1)
{
  __endptr = 0;
  if ((*a1 - 48) > 9)
  {
    return -1;
  }

  result = strtoll(a1, &__endptr, 10);
  v3 = *__endptr;
  if (v3 > 0x66)
  {
    switch(v3)
    {
      case 'g':
        result <<= 30;
        return result;
      case 'm':
        result <<= 20;
        return result;
      case 'k':
        result <<= 10;
        return result;
    }

    goto LABEL_9;
  }

  if (*__endptr && v3 != 98)
  {
LABEL_9:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "parseSize", 89, 3, 0, "invalid size: %s", a1);
    return -1;
  }

  return result;
}

double sub_1000F4248()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec + v1.tv_usec * 0.000001;
}

uint64_t sub_1000F4290()
{
  v3 = 0;
  v2 = 4;
  if (!sysctlbyname("hw.physicalcpu", &v3, &v2, 0, 0))
  {
    return v3;
  }

  v0 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDefaultNThreads", 107, 3, *v0, "sysctlbyname");
  return 1;
}

uint64_t sub_1000F4310(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (result + 1);
  do
  {
    v4 = *(a2 + v2);
    *(v3 - 1) = a0123456789abcd[v4 >> 4];
    *v3 = a0123456789abcd[v4 & 0xF];
    v3 += 2;
    ++v2;
  }

  while (v2 != 20);
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1000F4350(uint64_t result, unsigned int a2, unsigned __int8 *a3)
{
  if (a2)
  {
    v3 = 0;
    do
    {
      v4 = *a3++;
      *(result + v3) = a0123456789abcd[v4 >> 4];
      *(result + (v3 + 1)) = a0123456789abcd[v4 & 0xF];
      v3 += 2;
    }

    while (2 * a2 != v3);
  }

  *(result + 2 * a2) = 0;
  return result;
}

uint64_t sub_1000F439C(uint64_t a1, uint64_t a2)
{
  v2 = bswap64(*a1);
  v3 = bswap64(*a2);
  if (v2 == v3)
  {
    v2 = bswap64(*(a1 + 8));
    v3 = bswap64(*(a2 + 8));
    if (v2 == v3)
    {
      v2 = bswap32(*(a1 + 16));
      v3 = bswap32(*(a2 + 16));
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t sub_1000F43FC(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 20; ++i)
  {
    *(result + i) ^= *(a2 + i);
  }

  return result;
}

const char *sub_1000F442C(const char *result, unint64_t a2)
{
  v3 = result;
  memset(&v6, 0, sizeof(v6));
  if (a2)
  {
    v4 = a2;
    do
    {
      if (v3[v4] == 47)
      {
        v3[v4] = 0;
        result = stat(v3, &v6);
        if (!result)
        {
          break;
        }
      }

      --v4;
    }

    while (v4);
  }

  else
  {
    v4 = 0;
  }

  if (v4 < a2)
  {
    v5 = 1;
    do
    {
      if (!v3[v4])
      {
        if (!v5)
        {
          result = mkdir(v3, 0x1EDu);
        }

        v5 = 0;
        v3[v4] = 47;
      }

      ++v4;
    }

    while (a2 != v4);
  }

  return result;
}

const char *sub_1000F44EC(const char *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    memset(&v4, 0, sizeof(v4));
    do
    {
      if (v3[v2] == 47)
      {
        v3[v2] = 0;
        result = stat(v3, &v4);
        v3[v2] = 47;
      }

      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1000F456C(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = a1 - 1;
  do
  {
LABEL_2:
    for (i = v2; ; i += 2)
    {
      while (1)
      {
        v2 = i + 1;
        v5 = *(a1 + i);
        if (v5 != 47)
        {
          break;
        }

        ++i;
        if (v1)
        {
          i = v2;
          if (*(v3 + v1) != 47)
          {
            LOBYTE(v5) = 47;
LABEL_28:
            *(a1 + v1++) = v5;
            goto LABEL_2;
          }
        }
      }

      if (!*(a1 + i))
      {
        goto LABEL_29;
      }

      if (v1)
      {
        v6 = *(v3 + v1) == 47;
      }

      else
      {
        v6 = 1;
      }

      if (v5 != 46 || !v6)
      {
        goto LABEL_28;
      }

      v8 = *(a1 + v2);
      if (v8 != 47)
      {
        break;
      }
    }

    if (!*(a1 + v2))
    {
      break;
    }

    if (v8 != 46 || *(a1 + 2 + i) != 47 && *(a1 + 2 + i))
    {
      LOBYTE(v5) = 46;
      goto LABEL_28;
    }

    if (!v1)
    {
      return 0xFFFFFFFFLL;
    }

    v9 = (a1 - 2 + v1);
    v10 = v1 - 1;
    do
    {
      v1 = v10;
      if (!v10)
      {
        break;
      }

      v11 = *v9--;
      --v10;
    }

    while (v11 != 47);
    v2 = i + 3;
  }

  while (*(a1 + 2 + i));
LABEL_29:
  while (v1)
  {
    if (*(v3 + v1) != 47)
    {
      break;
    }

    --v1;
  }

  v12 = 0;
  *(a1 + v1) = 0;
  return v12;
}

uint64_t sub_1000F4680(char *a1, size_t a2, char *__s, const char *a4)
{
  v8 = strlen(__s);
  v9 = strlen(a4);
  if (v8 + v9 + 2 > a2)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v9;
  if (a1 != __s)
  {
    memcpy(a1, __s, v8);
  }

  if (v11)
  {
    if (!v8 || a1[v8 - 1] != 47)
    {
      a1[v8++] = 47;
    }

    memcpy(&a1[v8], a4, v11);
    v8 += v11;
  }

  result = 0;
  a1[v8] = 0;
  return result;
}

uint64_t sub_1000F4744(char *a1, size_t a2, char *__s, const char *a4)
{
  v8 = strlen(__s);
  v9 = strlen(a4);
  if (!v8)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 278, 3, 0, "invalid dir: %s");
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  if (v8 + v9 + 1 >= a2)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 279, 3, 0, "dir/path too long: %s");
    return 0xFFFFFFFFLL;
  }

  strlcpy(a1, __s, a2);
  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  memset(&v22, 0, sizeof(v22));
  while (1)
  {
    v12 = &a4[v11];
    v13 = strchr(&a4[v11], 47);
    v14 = v13 - a4;
    if (v13)
    {
      v15 = v13 - a4;
    }

    else
    {
      v15 = v10;
    }

    v16 = v15 - v11;
    if (v15 == v11)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 297, 3, 0, "invalid path: %s");
      return 0xFFFFFFFFLL;
    }

    v17 = v13;
    if (v16 != 2)
    {
      if (v16 == 1 && *v12 == 46)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    if (*v12 == 46 && v12[1] == 46)
    {
      break;
    }

LABEL_15:
    v18 = lstat(a1, &v22);
    if (v11)
    {
      if (v18)
      {
        if (mkdir(a1, 0x1EDu) && (lstat(a1, &v22) || (v22.st_mode & 0xF000) != 0x4000))
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 326, 3, 0, "a parent of path is not a directory: %s");
          return 0xFFFFFFFFLL;
        }
      }

      else if ((v22.st_mode & 0xF000) != 0x4000)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 316, 3, 0, "a parent of path is not a directory: %s");
        return 0xFFFFFFFFLL;
      }
    }

    else if (v18 || (v19 = v22.st_mode & 0xF000, v19 != 0x4000) && v19 != 40960)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 311, 3, 0, "dir doesn't exist, or is invalid: %s");
      return 0xFFFFFFFFLL;
    }

    v20 = &a1[v8];
    if (a1[v8 - 1] != 47)
    {
      ++v8;
      *v20 = 47;
    }

    memcpy(&a1[v8], &a4[v11], v16);
    v8 += v16;
    a1[v8] = 0;
LABEL_29:
    if (v17)
    {
      v11 = v14 + 1;
      if (v14 + 1 < v10)
      {
        continue;
      }
    }

    return 0;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 304, 3, 0, "invalid path: %s");
  return 0xFFFFFFFFLL;
}

BOOL sub_1000F4A20(_BYTE *a1, size_t __n)
{
  if (!__n)
  {
    return 1;
  }

  if (__n > 0x3FF || memchr(a1, 0, __n) || *a1 == 47)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = &a1[v5];
    v7 = memchr(&a1[v5], 47, __n - v5);
    if (!v7)
    {
      break;
    }

    v8 = v7 - a1;
    v9 = v7 - a1 - v5;
    if (v7 - a1 == v5)
    {
      return 0;
    }

    if (v5 && v9 == 1)
    {
      v10 = *v6;
      goto LABEL_13;
    }

    if (v9 == 2 && *v6 == 46)
    {
      v10 = v6[1];
LABEL_13:
      if (v10 == 46)
      {
        return 0;
      }
    }

    v5 = v8 + 1;
  }

  while (v8 + 1 < __n);
  return v5 != __n;
}

uint64_t sub_1000F4AFC(const char *a1, uint64_t a2, char *__s)
{
  result = strlen(__s);
  if (result)
  {
    if (*__s != 47)
    {
      return 0;
    }

    for (i = result; a2; --a2)
    {
      if (a1[a2] == 47)
      {
        break;
      }
    }

    if (a1[a2] != 47)
    {
      return 0;
    }

    a1[a2] = 0;
    result = realpath_DARWIN_EXTSN(a1, __sa);
    a1[a2] = 47;
    if (!result)
    {
      return result;
    }

    v8 = strlen(__sa);
    if (v8 >= i && (v9 = v8, !memcmp(__s, __sa, i)))
    {
      return v9 == i || __sa[i] == 47;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000F4C14(char *a1, size_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = confstr(65537, a1, a2);
  if (!v4)
  {
    if (issetugid())
    {
      v4 = 0;
    }

    else
    {
      v4 = getenv("TMPDIR");
      if (v4)
      {
        v4 = strlcpy(a1, v4, a2);
      }
    }
  }

  if (v4 >= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = strlen(a1);
  if (v6)
  {
    do
    {
      v7 = a1[v6 - 1];
      if (v7 != 47)
      {
        break;
      }

      --v6;
    }

    while (v6);
    if (v7 == 47)
    {
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  a1[v6] = 0;
  return v5;
}

uint64_t sub_1000F4CD8(const char *a1)
{
  v2 = opendir(a1);
  if (v2)
  {
    v3 = v2;
    memset(&v11, 0, 512);
    v10 = 0;
    while (1)
    {
      if (readdir_r(v3, &v11, &v10))
      {
        v8 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "isDirEmpty", 438, 3, *v8, "readdir_r");
        v4 = 0xFFFFFFFFLL;
        goto LABEL_24;
      }

      if (!v10)
      {
        break;
      }

      if (v11.d_namlen == 1 && v11.d_name[0] == 46)
      {
        v4 = 1;
      }

      else
      {
        v6 = v11.d_namlen == 2 && v11.d_name[0] == 46 && v11.d_name[1] == 46;
        v4 = v6;
        if (!v6)
        {
          goto LABEL_24;
        }
      }

      if (!v4)
      {
        goto LABEL_24;
      }
    }

    v4 = 1;
LABEL_24:
    closedir(v3);
  }

  else
  {
    v7 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "isDirEmpty", 428, 3, *v7, "%s", a1);
    return 0xFFFFFFFFLL;
  }

  return v4;
}

uint64_t sub_1000F4E70(const char *a1, void *a2, off_t *a3, uint64_t a4)
{
  memset(&v21, 0, sizeof(v21));
  if (lstat(a1, &v21))
  {
    v8 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 475, 3, *v8, "%s", a1);
    v9 = 0;
LABEL_3:
    free(v9);
    v9 = 0;
    st_size = 0;
    result = 0xFFFFFFFFLL;
    goto LABEL_4;
  }

  st_size = v21.st_size;
  if (v21.st_size)
  {
    v9 = malloc(v21.st_size + a4);
    if (v9)
    {
      v12 = open(a1, 0);
      if (v12 < 0)
      {
        v19 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 486, 3, v19, "%s");
      }

      else
      {
        v13 = v12;
        v14 = st_size;
        v15 = v9;
        while (1)
        {
          if (v14 >= 0x40000000)
          {
            v16 = 0x40000000;
          }

          else
          {
            v16 = v14;
          }

          v17 = read(v13, v15, v16);
          if (v17 < 0)
          {
            v20 = *__error();
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 499, 3, v20, "%s");
            goto LABEL_23;
          }

          if (v17 != v16)
          {
            break;
          }

          v15 += v16;
          v14 -= v16;
          if (!v14)
          {
            close(v13);
            goto LABEL_17;
          }
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 500, 3, 0, "reading contents: %s");
LABEL_23:
        close(v13);
      }
    }

    else
    {
      v18 = *__error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 482, 3, v18, "malloc");
    }

    goto LABEL_3;
  }

  v9 = 0;
LABEL_17:
  result = 0;
LABEL_4:
  *a2 = v9;
  *a3 = st_size;
  return result;
}

uint64_t sub_1000F507C(const char *a1, void *a2, size_t a3, off_t a4)
{
  v7 = open(a1, 0);
  if (v7 < 0)
  {
    v10 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileSegment", 521, 3, v10, "%s");
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  v9 = pread(v7, a2, a3, a4);
  close(v8);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v11 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileSegment", 524, 3, v11, "%s");
    return 0xFFFFFFFFLL;
  }

  if (v9 < a3)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileSegment", 525, 3, 0, "truncated read");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_1000F5188(const char *a1, uint64_t a2, unint64_t a3)
{
  v6 = open(a1, 1537, 420);
  if (v6 < 0)
  {
    v12 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 535, 3, *v12, "%s", a1);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
    if (a3)
    {
      v8 = 0;
      while (1)
      {
        if (a3 - v8 >= 0x10000000)
        {
          v9 = 0x10000000;
        }

        else
        {
          v9 = a3 - v8;
        }

        v10 = write(v7, (a2 + v8), v9);
        if (v10 < 0)
        {
          v13 = *__error();
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 544, 3, v13, "%s");
          goto LABEL_14;
        }

        if (!v10)
        {
          break;
        }

        v8 += v10;
        if (v8 >= a3)
        {
          goto LABEL_10;
        }
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 545, 3, 0, "write error: %s");
LABEL_14:
      v11 = 0xFFFFFFFFLL;
    }

    else
    {
LABEL_10:
      v11 = 0;
    }

    close(v7);
  }

  return v11;
}

uint64_t sub_1000F52C4(const char *a1, unint64_t a2, unint64_t a3, const char *a4)
{
  v8 = sub_100120834(0x100000uLL);
  if (v8)
  {
    v9 = sub_1000FDD20(a1, a2, a3);
    if (v9)
    {
      v10 = sub_1000FE594(a4, a3);
      if (v10)
      {
        if ((sub_100120FD4(v8, a3, sub_1000FE21C, v9, sub_1000FE740, v10) & 0x8000000000000000) == 0)
        {
          v11 = 0;
          goto LABEL_11;
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 569, 3, 0, "copy failed: %s to %s");
      }

      else
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 566, 3, 0, "opening file: %s");
      }
    }

    else
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 565, 3, 0, "opening file: %s", a1);
      v10 = 0;
    }
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 564, 3, 0, "mem buffer creation");
    v10 = 0;
    v9 = 0;
  }

  v11 = 1;
LABEL_11:
  sub_1000FE0A0(v9);
  sub_1000FE6F0(v10);
  sub_100120944(v8);
  if (v11)
  {
    unlink(a4);
  }

  return (v11 << 31 >> 31);
}

uint64_t sub_1000F5468(const char *a1, uint64_t a2)
{
  v16.tv_sec = *(a2 + 32);
  v16.tv_usec = 0;
  v17 = *(a2 + 48);
  v18 = 0;
  memset(&v15, 0, sizeof(v15));
  if (stat(a1, &v15))
  {
    if (*__error() == 1)
    {
      return 0;
    }

    v7 = 604;
LABEL_24:
    v13 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", v7, 3, *v13, "%s", a1);
    return 0xFFFFFFFFLL;
  }

  v5 = *(a2 + 16);
  if (v15.st_uid == v5)
  {
    v6 = *(a2 + 20);
    if (v15.st_gid == v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = *(a2 + 20);
  }

  if (chown(a1, v5, v6) && *__error() != 1)
  {
    v8 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", 610, 3, *v8, "%s", a1);
    v4 = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

LABEL_11:
  v4 = 0;
LABEL_13:
  v9 = *(a2 + 4);
  if (v15.st_mode != v9 && chmod(a1, v9 & 0xFFF) && *__error() != 1)
  {
    v10 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", 614, 3, *v10, "%s", a1);
    v4 = 0xFFFFFFFFLL;
  }

  v11 = *(a2 + 116) & 0xFFFFFFDF | (32 * ((v15.st_flags >> 5) & 1));
  if (v15.st_flags != v11 && chflags(a1, v11) && *__error() != 1)
  {
    v12 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", 621, 3, *v12, "%s", a1);
    v4 = 0xFFFFFFFFLL;
  }

  if (utimes(a1, &v16) && *__error() != 1)
  {
    v7 = 624;
    goto LABEL_24;
  }

  return v4;
}

uint64_t sub_1000F56CC(const char *a1, const char *a2, uint64_t a3, uint64_t a4, int a5)
{
  memset(&v37, 0, sizeof(v37));
  v9 = open(a1, 0, a3, a4);
  if (v9 < 0)
  {
    v12 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 645, 3, *v12, "%s", a1);
LABEL_19:
    v16 = 0;
LABEL_20:
    v18 = 0;
LABEL_21:
    v20 = 0;
LABEL_22:
    sub_1000FE0A0(v16);
    sub_1000FEEA8(v18, v30, v31, v32, v33, v34, v35, v36);
    sub_100120944(v20);
    unlink(a2);
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  if (fstat(v9, &v37))
  {
    v11 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 646, 3, v11, "%s");
LABEL_18:
    close(v10);
    goto LABEL_19;
  }

  if ((v37.st_mode & 0xF000) != 0x8000)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 647, 3, 0, "not a regular file: %s");
    goto LABEL_18;
  }

  v13 = sub_1000F59EC(v10);
  close(v10);
  st_size = v37.st_size;
  st_flags = v37.st_flags;
  v16 = sub_1000FDD20(a1, 0, v37.st_size);
  if (!v16)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 666, 3, 0, "open failed: %s", a1);
    goto LABEL_20;
  }

  if ((st_flags & 0x40000020) == 0x20)
  {
    v17 = a5 | 4;
  }

  else
  {
    v17 = a5;
  }

  v18 = sub_1000FE910(a2, st_size, v17 | 8u, v13, a3);
  if (!v18)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 667, 3, 0, "open failed: %s", a1);
    goto LABEL_21;
  }

  v19 = sub_100120834(0x100000uLL);
  v20 = v19;
  if (!v19)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 670, 3, 0, "alloc");
    goto LABEL_22;
  }

  v21 = sub_100120FD4(v19, st_size, sub_1000FE21C, v16, sub_1000FF09C, v18);
  if ((v21 & 0x8000000000000000) != 0 || v21 != st_size)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 674, 3, 0, "copy failed %lld");
    goto LABEL_22;
  }

  sub_1000FE0A0(v16);
  sub_1000FEEA8(v18, v22, v23, v24, v25, v26, v27, v28);
  sub_100120944(v20);
  if (!sub_1000F5468(a2, &v37))
  {
    return 0;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 690, 3, 0, "update file attributes");
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000F59EC(int a1)
{
  v4[1] = 0;
  v4[2] = 0;
  memset(v5, 0, sizeof(v5));
  v4[0] = 0x4000000000000005;
  v1 = fgetattrlist(a1, v4, v5, 0x40uLL, 1u);
  if (LODWORD(v5[0]) == 8 && v1 == 0)
  {
    return DWORD1(v5[0]);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1000F5A84(unsigned int a1)
{
  if ((a1 & 0x40000000) != 0)
  {
    return 0;
  }

  else
  {
    return (a1 >> 5) & 1;
  }
}

uint64_t sub_1000F5A94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000F5AA0(const char *a1, const char *a2)
{
  memset(&v24, 0, sizeof(v24));
  memset(&v23, 0, sizeof(v23));
  if (stat(a1, &v24))
  {
    v4 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 708, 3, v4, "%s");
LABEL_5:
    v6 = 0;
    v7 = 0;
    v8 = 0xFFFFFFFFLL;
    goto LABEL_6;
  }

  if (stat(a2, &v23))
  {
    v5 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 709, 3, v5, "%s");
    goto LABEL_5;
  }

  if ((v24.st_mode & 0xF000) != 0x8000 || (v23.st_mode & 0xF000) != 0x8000 || v24.st_size != v23.st_size)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  v10 = open(a1, 0);
  if (v10 < 0)
  {
    v18 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 714, 3, v18, "%s");
    goto LABEL_5;
  }

  v11 = v10;
  v12 = open(a2, 0);
  if (v12 < 0)
  {
    v19 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 716, 3, *v19, "%s", a2);
    close(v11);
    goto LABEL_5;
  }

  v13 = v12;
  v7 = malloc(0x40000uLL);
  v14 = malloc(0x40000uLL);
  v6 = v14;
  if (v7 && v14)
  {
    while (1)
    {
      v15 = read(v11, v7, 0x40000uLL);
      if (v15 < 0)
      {
        v21 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 723, 3, v21, "%s read");
        goto LABEL_24;
      }

      v16 = v15;
      v17 = read(v13, v6, 0x40000uLL);
      if (v17 < 0)
      {
        v22 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 725, 3, v22, "%s read");
        goto LABEL_24;
      }

      if (v16 != v17)
      {
        goto LABEL_19;
      }

      if (!v16)
      {
        break;
      }

      if (memcmp(v7, v6, v16))
      {
LABEL_19:
        v8 = 0;
        goto LABEL_25;
      }
    }

    v8 = 1;
  }

  else
  {
    v20 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 719, 3, v20, "malloc");
LABEL_24:
    v8 = 0xFFFFFFFFLL;
  }

LABEL_25:
  close(v11);
  close(v13);
LABEL_6:
  free(v7);
  free(v6);
  return v8;
}

uint64_t sub_1000F5D8C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  if (sub_1000F4680(v8, 0x800uLL, v1, v5) || sub_1000F4680(v7, 0x800uLL, v4, v3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return sub_1000F5AA0(v8, v7);
  }
}

uint64_t sub_1000F5E4C(const char *a1)
{
  memset(&v6, 0, 512);
  if ((statfs(a1, &v6) & 0x80000000) == 0)
  {
    return v6.f_bsize;
  }

  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFilesystemBlockSize", 752, 3, "statfs failed: %s\n", v2, v3, v4, a1);
  return 4096;
}

off_t sub_1000F5F24(const char *a1)
{
  memset(&v12, 0, sizeof(v12));
  if (lstat(a1, &v12))
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDiskUsage", 765, 3, "stat failed: %s\n", v2, v3, v4, a1);
    return -1;
  }

  else
  {
    if (v12.st_blocks << 9 >= v12.st_size)
    {
      st_size = v12.st_size;
    }

    else
    {
      st_size = v12.st_blocks << 9;
    }

    if (v12.st_blocks << 9)
    {
      v5 = st_size;
    }

    else
    {
      v5 = v12.st_size;
    }

    if ((v12.st_mode & 0xF000) == 0x8000)
    {
      v10 = 0;
      v11 = 0;
      v7 = ParallelCompressionAFSCGetMetadata(a1, &v11, &v10 + 1, &v10);
      if (HIDWORD(v10) != -1 && v7 == 0)
      {
        return v10;
      }
    }
  }

  return v5;
}

uint64_t sub_1000F5FF4(const char *a1)
{
  v4[1] = 0;
  v4[2] = 0;
  memset(v5, 0, sizeof(v5));
  v4[0] = 0x4000000000000005;
  v1 = getattrlist(a1, v4, v5, 0x40uLL, 1u);
  if (LODWORD(v5[0]) == 8 && v1 == 0)
  {
    return DWORD1(v5[0]);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1000F6084(const char *a1)
{
  v2 = listxattr(a1, 0, 0, 1);
  if (v2 < 0)
  {
    v11 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", 912, 3, *v11, "listxattr failed: %s", a1);
    v4 = 0;
    goto LABEL_18;
  }

  v3 = v2;
  if (!v2)
  {
    v4 = 0;
LABEL_14:
    v12 = 0;
    goto LABEL_19;
  }

  v4 = malloc(v2);
  if (!v4)
  {
    v13 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", 918, 3, v13, "malloc");
    goto LABEL_18;
  }

  v5 = listxattr(a1, v4, v3, 1);
  if (v5 < 0)
  {
    v14 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", 927, 3, v14, "listxattr failed: %s");
    goto LABEL_18;
  }

  v6 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

  v7 = v4 + 1;
  v8 = v4;
  while (*(v7 - 1))
  {
    v9 = v8;
LABEL_10:
    ++v7;
    v8 = v9;
    if (!--v6)
    {
      goto LABEL_14;
    }
  }

  v10 = removexattr(a1, v8, 1);
  v9 = v7;
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  v15 = *__error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", 941, 3, v15, "removexattr failed for name=%s: %s");
LABEL_18:
  v12 = 0xFFFFFFFFLL;
LABEL_19:
  free(v4);
  return v12;
}

uint64_t sub_1000F6224(char *a1, unint64_t a2, unsigned __int8 *a3)
{
  memset(&v10, 0, sizeof(v10));
  CC_SHA1_Init(&v10);
  if (a2)
  {
    v6 = 0;
    v7 = a2;
    do
    {
      v6 += 0x100000;
      if (v6 <= a2)
      {
        v8 = 0x100000;
      }

      else
      {
        v8 = v7;
      }

      CC_SHA1_Update(&v10, a1, v8);
      v7 -= 0x100000;
      a1 += 0x100000;
    }

    while (v6 < a2);
  }

  CC_SHA1_Final(a3, &v10);
  return 0;
}

uint64_t sub_1000F62C4(char *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a4;
  if (a2 || a3 || a4)
  {
    memset(&c, 0, sizeof(c));
    memset(&v19, 0, sizeof(v19));
    v18[0] = 0;
    v18[1] = 0;
    v8 = open(a1, 0);
    if (v8 < 0)
    {
      v15 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDigests", 983, 3, *v15, "%s", a1);
      return 0xFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
      v10 = valloc(0x100000uLL);
      if (v10)
      {
        v11 = v10;
        if (a2)
        {
          CC_SHA1_Init(&c);
        }

        if (a3)
        {
          CC_SHA256_Init(&v19);
        }

        if (v4)
        {
          sub_10010403C(v18);
        }

        while (1)
        {
          v12 = read(v9, v11, 0x100000uLL);
          v13 = v12;
          if (v12 < 0)
          {
            v14 = __error();
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDigests", 997, 3, *v14, "read");
            goto LABEL_29;
          }

          if (!v12)
          {
            break;
          }

          if (a2)
          {
            CC_SHA1_Update(&c, v11, v12);
          }

          if (a3)
          {
            CC_SHA256_Update(&v19, v11, v13);
          }

          if (v4)
          {
            sub_10010404C(v18, v11, v13);
          }
        }

        if (a2)
        {
          CC_SHA1_Final(a2, &c);
        }

        if (a3)
        {
          CC_SHA256_Final(a3, &v19);
        }

        if (v4)
        {
          sub_10010409C(v4, v18);
        }

LABEL_29:
        free(v11);
        v4 = v13 >> 63;
      }

      else
      {
        v16 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDigests", 987, 3, *v16, "malloc");
        v4 = 0xFFFFFFFFLL;
      }

      close(v9);
    }
  }

  return v4;
}

uint64_t sub_1000F64D8(const char *a1, off_t a2, unint64_t a3, uint64_t a4)
{
  v8 = open(a1, 0);
  if (v8 < 0)
  {
    v12 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1Digest", 1025, 3, *v12, "%s", a1);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
    v10 = sub_1000F6584(v8, a2, a3, a4);
    close(v9);
    return v10;
  }
}

uint64_t sub_1000F6584(int a1, off_t a2, unint64_t a3, uint64_t a4)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (fcntl(a1, 48, 1))
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1044, 3, "Warning: couldn't set F_NOCACHE\n", v8, v9, v10);
  }

  memset(&c, 0, sizeof(c));
  v11 = valloc(0x100000uLL);
  if (!v11)
  {
    v16 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1049, 3, v16, "malloc", v19, v20, *&c.h0, *&c.h2, *&c.h4, *&c.Nh, *&c.data[1], *&c.data[3], *&c.data[5], *&c.data[7], *&c.data[9], *&c.data[11], *&c.data[13], *&c.data[15]);
LABEL_16:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  CC_SHA1_Init(&c);
  if (a3)
  {
    while (1)
    {
      v12 = a3 >= 0x100000 ? 0x100000 : a3;
      v13 = pread(a1, v11, v12, a2);
      if ((v13 & 0x8000000000000000) != 0)
      {
        break;
      }

      v14 = v13;
      if (!v13)
      {
        goto LABEL_12;
      }

      if (v13 > v12)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1062, 3, 0, "error: read more bytes than requested: %zd (requested %zu)");
        goto LABEL_16;
      }

      CC_SHA1_Update(&c, v11, v13);
      a2 += v14;
      a3 -= v14;
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    v17 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1059, 3, v17, "read", v19, v20, *&c.h0, *&c.h2, *&c.h4, *&c.Nh, *&c.data[1], *&c.data[3], *&c.data[5], *&c.data[7], *&c.data[9], *&c.data[11], *&c.data[13], *&c.data[15]);
    goto LABEL_16;
  }

LABEL_12:
  CC_SHA1_Final(a4, &c);
  v15 = 0;
LABEL_17:
  free(v11);
  return v15;
}

uint64_t sub_1000F6730(const char *a1)
{
  bzero(__s, 0x410uLL);
  memset(&v4, 0, sizeof(v4));
  if (realpath_DARWIN_EXTSN(a1, __s))
  {
    if (lstat(__s, &v4) || (v4.st_mode & 0xF000) != 0x4000)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDirectoryDiskUsage", 1106, 3, 0, "Not a directory: %s");
    }

    else
    {
      v7 = sub_1000F5E4C(__s);
      v3[1] = 0;
      v3[2] = 0;
      v3[3] = sub_1000F6898;
      v3[0] = __s;
      if ((sub_1000F6984(v3, __s) & 0x80000000) == 0)
      {
        return v6;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDirectoryDiskUsage", 1115, 3, 0, "enumerating directory: %s");
    }
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDirectoryDiskUsage", 1105, 3, 0, "Invalid path: %s");
  }

  return -1;
}

uint64_t sub_1000F6898(uint64_t a1, char *a2)
{
  memset(&v10, 0, sizeof(v10));
  if (lstat(a2, &v10) < 0)
  {
    v9 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "DirectoryDiskUsageProc", 1088, 3, *v9, "lstat: %s", a2);
    return 0xFFFFFFFFLL;
  }

  v4 = v10.st_mode & 0xF000;
  if (v4 == 0x8000 || v4 == 0x4000)
  {
    v5 = *(a1 + 1032);
    v6 = sub_1000F5F24(a2);
    v7 = (v6 + (v5 - 1)) & -v5;
    if (v6 < 0)
    {
      v7 = v6;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      result = 0;
      *(a1 + 1024) += v7;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_1000F6984(void *a1, char *__s)
{
  v3 = strlen(__s);
  if (v3 - 1024 < 0xFFFFFFFFFFFFFBFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v3;
  bzero(v7, 0x400uLL);
  __memcpy_chk();
  do
  {
    v6 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
  }

  while (v7[v6 - 1] == 47);
  v7[v6] = 0;
  return sub_1000F6AEC(a1, v7, v6);
}

uint64_t sub_1000F6A60(const char *a1)
{
  memset(&v3, 0, sizeof(v3));
  if (lstat(a1, &v3))
  {
    return 0;
  }

  if ((v3.st_mode & 0xF000) == 0x4000)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v3.st_flags & 0x20002) != 0)
  {
    lchflags(a1, v3.st_flags & 0xFFFDFFFD);
  }

  return unlink(a1);
}

uint64_t sub_1000F6AEC(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    v6 = a2;
  }

  else
  {
    v6 = "/";
  }

  v7 = opendir(v6);
  if (v7)
  {
    memset(&v28, 0, 512);
    v27 = 0;
    v8 = a1[1];
    if (!v8 || (v8(*a1, a2) & 0x80000000) == 0)
    {
      if (!readdir_r(v7, &v28, &v27))
      {
        v14 = a3 + 1;
        v15 = &a2[a3];
        do
        {
          if (!v27)
          {
            v10 = 1;
            goto LABEL_10;
          }

          d_namlen = v28.d_namlen;
          if ((v28.d_namlen != 1 || v28.d_name[0] != 46) && (v28.d_namlen != 2 || v28.d_name[0] != 46 || v28.d_name[1] != 46))
          {
            v17 = v14 + v28.d_namlen;
            if (v17 > 0x3FF)
            {
              goto LABEL_9;
            }

            *v15 = 47;
            memcpy(v15 + 1, v28.d_name, d_namlen);
            a2[v17] = 0;
            memset(&v26, 0, sizeof(v26));
            v18 = lstat(a2, &v26);
            if (v18)
            {
              sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1170, 3, "lstat after readdir failed (errno=%d): %s", v19, v20, v21, v18, a2);
            }

            else if ((v26.st_flags & 0x40000000) != 0)
            {
              sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1175, 3, "skip dataless: %s", v19, v20, v21, a2, v25);
            }

            else
            {
              d_type = v28.d_type;
              if (!v28.d_type)
              {
                if ((v26.st_mode & 0xF000) == 0x4000)
                {
                  d_type = 4;
                  v28.d_type = 4;
                }

                else
                {
                  d_type = 0;
                }
              }

              v23 = a1[3];
              if (v23)
              {
                v24 = v23(*a1, a2) >> 31;
                d_type = v28.d_type;
              }

              else
              {
                LOBYTE(v24) = 0;
              }

              if (d_type == 4 && (sub_1000F6AEC(a1, a2, v17) & 0x80000000) != 0)
              {
                v10 = 0;
                *v15 = 0;
                goto LABEL_10;
              }

              *v15 = 0;
              if (v24)
              {
                goto LABEL_9;
              }
            }
          }
        }

        while (!readdir_r(v7, &v28, &v27));
      }

      v9 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1143, 3, *v9, "readdir_r");
    }

LABEL_9:
    v10 = 0;
LABEL_10:
    closedir(v7);
    v11 = a1[2];
    if (v11 && v11(*a1, a2) < 0)
    {
      v10 = 0;
    }

    if (v10)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v13 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1126, 3, *v13, "%s", a2);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1000F6E1C(char *__s)
{
  v2[0] = 0;
  v2[1] = 0;
  v2[3] = sub_1000F6E68;
  v2[2] = sub_1000F6F20;
  return sub_1000F6984(v2, __s);
}

uint64_t sub_1000F6E68(int a1, char *a2)
{
  memset(&v6, 0, sizeof(v6));
  if (lstat(a2, &v6))
  {
    v3 = 1247;
LABEL_3:
    v4 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "removeEntryProc", v3, 3, *v4, "%s", a2);
    return 0xFFFFFFFFLL;
  }

  if ((v6.st_mode & 0xF000) == 0x4000)
  {
    return 0;
  }

  result = unlink(a2);
  if (result)
  {
    v3 = 1250;
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1000F6F20(int a1, char *a2)
{
  result = rmdir(a2);
  if (result)
  {
    v4 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "removeLeaveDirProc", 1258, 3, *v4, "%s", a2);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1000F6F90(const char *a1)
{
  bzero(&v11, 0x878uLL);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  if (statfs(a1, &v11) < 0)
  {
    return -1;
  }

  LOWORD(v8) = 5;
  LODWORD(v9) = -2147352576;
  v2 = getattrlist(v11.f_mntonname, &v8, v6, 0x24uLL, 1u);
  result = -1;
  if (!v2 && LODWORD(v6[0]) == 36)
  {
    v4.i64[0] = *(v6 + 4);
    v4.i64[1] = *(v6 + 4);
    v5 = vandq_s8(vshlq_u32(v4, xmmword_10037C170), xmmword_10037C180);
    *v5.i8 = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
    return (v5.i32[0] | v5.i32[1]);
  }

  return result;
}

uint64_t sub_1000F709C(uint64_t a1, uint64_t *a2)
{
  if (AAHeaderAssign(*(a1 + 88), *(a1 + 96)) < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 199, 70, 0, "init header");
    return 0xFFFFFFFFLL;
  }

  if ((sub_1000DA780(a1, 0x200uLL) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 202, 70, 0, "invalid tar archive");
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 64);
  if (sub_1000F8234(v4, 512))
  {
    if ((sub_1000DA780(a1, 0x400uLL) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 207, 70, 0, "invalid tar archive");
      return 0xFFFFFFFFLL;
    }

    if (!sub_1000F8234(*(a1 + 64), 1024))
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 209, 70, 0, "Invalid EOF record header");
      return 0xFFFFFFFFLL;
    }

    return 1;
  }

  v113 = a2;
  v6 = 70;
  while (1)
  {
    while (1)
    {
      v7 = *(a1 + 72);
      v8 = &v4[v7];
      v9 = &v4[v7 - 356];
      v10 = *v9;
      if (v10 != 120 && v10 != 103)
      {
        break;
      }

      v122 = 0;
      if ((sub_1000F82B0(v8 - 388, 0xCuLL, &v122) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 229, 70, 0, "invalid pax header", v110);
        return 0xFFFFFFFFLL;
      }

      v11 = v122;
      if (v10 == 103 && AAHeaderClear(*(a1 + 88)) < 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 233, 70, 0, "clear header", v110);
        return 0xFFFFFFFFLL;
      }

      if ((sub_1000DA780(a1, v7 + ((v11 + 511) & 0xFFFFFFFFFFFFFE00) + 512) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 236, 70, 0, "truncated stream", v110);
        return 0xFFFFFFFFLL;
      }

      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 64) + v7;
        v14 = v13 + v11;
        while (1)
        {
          __endptr = 0;
          v15 = strtoll((v13 + v12), &__endptr, 10);
          if (!v15 || ((v12 += v15, v16 = __endptr, v12 <= v11) ? (v17 = __endptr > v14) : (v17 = 1), v17 || (v18 = (v12 - 1), v19 = (v13 + v12 - 1), *v19 != 10)))
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 249, 70, 0, "invalid xhdr entry", v110);
            return 0xFFFFFFFFLL;
          }

          v18[v13] = 0;
          v20 = &v16[-v13];
          if (&v16[-v13] < v18)
          {
            while (1)
            {
              v21 = *v16++;
              if (v21 != 32)
              {
                break;
              }

              if (++v20 >= v18)
              {
                goto LABEL_145;
              }
            }
          }

          if (v20 >= v18)
          {
LABEL_145:
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 257, 70, 0, "invalid xhdr entry", v110);
            return 0xFFFFFFFFLL;
          }

          v22 = v13;
          while (v20[v22] != 61)
          {
            --v18;
            ++v22;
            if (v20 == v18)
            {
              goto LABEL_145;
            }
          }

          v112 = v14;
          v20[v22] = 0;
          v23 = &v20[v22 + 1];
          fprintf(__stderrp, "xhdr %s: %s\n", &v20[v13], v23);
          if (!strcmp(&v20[v13], "size"))
          {
            v26.ikey = 5521732;
            v24 = 5;
LABEL_43:
            v25 = 1;
            goto LABEL_48;
          }

          if (!strcmp(&v20[v13], "path"))
          {
            v25 = 0;
            v24 = 2;
            v26.ikey = 5521744;
            goto LABEL_48;
          }

          if (!strcmp(&v20[v13], "uid"))
          {
            break;
          }

          if (!strcmp(&v20[v13], "gid"))
          {
            v25 = 1;
            v26.ikey = 4475207;
            goto LABEL_47;
          }

          if (!strcmp(&v20[v13], "uname"))
          {
            v26.ikey = 5130581;
            v24 = 2;
            goto LABEL_43;
          }

          if (!strcmp(&v20[v13], "gname"))
          {
            v24 = 2;
            v25 = 1;
            v26.ikey = 5130567;
          }

          else if (!strcmp(&v20[v13], "linkpath"))
          {
            v25 = 0;
            v24 = 2;
            v26.ikey = 4935244;
          }

          else
          {
            if (strcmp(&v20[v13], "mtime"))
            {
              goto LABEL_96;
            }

            v24 = 4;
            v25 = 1;
            v26.ikey = 5067853;
          }

LABEL_48:
          v27 = *v23;
          if (!*v23)
          {
            v31 = *(a1 + 88);
            KeyIndex = AAHeaderGetKeyIndex(v31, v26);
            if ((KeyIndex & 0x80000000) == 0 && AAHeaderRemoveField(v31, KeyIndex) < 0)
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 278, 70, 0, "removing header field", v110);
              return 0xFFFFFFFFLL;
            }

            goto LABEL_96;
          }

          if (v24 > 3)
          {
            if (v24 == 4)
            {
              v49 = v26;
              value.tv_sec = 0;
              value.tv_nsec = 0;
              value.tv_sec = strtoll(v23, &__endptr, 10);
              v50 = __endptr;
              if (__endptr && *__endptr == 46)
              {
                value.tv_nsec = strtoll(__endptr + 1, &__endptr, 10);
                v50 = __endptr;
              }

              if (v50 != v19)
              {
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 317, 70, 0, "xhdr value parsing", v110);
                return 0xFFFFFFFFLL;
              }

              v51 = *(a1 + 88);
              v52 = v49;
              v53 = AAHeaderGetKeyIndex(v51, v52);
              if (v53 < 0)
              {
                v54 = -1;
              }

              else
              {
                v54 = v53;
              }

              v55 = v49;
              if (AAHeaderSetFieldTimespec(v51, v54, v55, &value) < 0)
              {
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 318, 70, 0, "creating header", v110);
                return 0xFFFFFFFFLL;
              }
            }

            else
            {
              v33 = v26;
              v34 = strtoll(v23, &__endptr, 10);
              if (__endptr != v19)
              {
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 288, 70, 0, "xhdr value parsing", v110);
                return 0xFFFFFFFFLL;
              }

              v35 = v34;
              v36 = *(a1 + 88);
              v37 = v33;
              v38 = AAHeaderGetKeyIndex(v36, v37);
              if (v38 < 0)
              {
                v39 = -1;
              }

              else
              {
                v39 = v38;
              }

              v40 = v33;
              if (AAHeaderSetFieldBlob(v36, v39, v40, v35) < 0)
              {
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 289, 70, 0, "creating header", v110);
                return 0xFFFFFFFFLL;
              }
            }
          }

          else
          {
            if (v24 != 1)
            {
              key = v26;
              v28 = v25;
              v29 = strlen(&v20[v22 + 1]);
              v30 = v29;
              if (v28)
              {
                goto LABEL_91;
              }

              if (v29 == 1)
              {
                if (v27 == 46)
                {
                  v30 = 0;
                  goto LABEL_91;
                }

                v30 = 1;
              }

              else if (!v29 || v27 == 46 && v20[v22 + 2] == 47 && (v23 = &v20[v22 + 3], v30 = v29 - 2, v29 == 2))
              {
LABEL_91:
                v56 = *(a1 + 88);
                v57 = key;
                v58 = AAHeaderGetKeyIndex(v56, v57);
                if (v58 < 0)
                {
                  v59 = -1;
                }

                else
                {
                  v59 = v58;
                }

                v60 = key;
                if (AAHeaderSetFieldString(v56, v59, v60, v23, v30) < 0)
                {
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 309, 70, 0, "creating header", v110);
                  return 0xFFFFFFFFLL;
                }

                v11 = v122;
                goto LABEL_96;
              }

              if (v23[v30 - 1] == 47)
              {
                --v30;
              }

              goto LABEL_91;
            }

            v41 = v26;
            v42 = strtoll(v23, &__endptr, 10);
            if (__endptr != v19)
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 295, 70, 0, "xhdr value parsing", v110);
              return 0xFFFFFFFFLL;
            }

            v43 = v42;
            v44 = *(a1 + 88);
            v45 = v41;
            v46 = AAHeaderGetKeyIndex(v44, v45);
            if (v46 < 0)
            {
              v47 = -1;
            }

            else
            {
              v47 = v46;
            }

            v48 = v41;
            if (AAHeaderSetFieldUInt(v44, v47, v48, v43) < 0)
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 296, 70, 0, "creating header", v110);
              return 0xFFFFFFFFLL;
            }
          }

LABEL_96:
          v14 = v112;
          if (v12 >= v11)
          {
            goto LABEL_97;
          }
        }

        v26.ikey = 4475221;
        v25 = 1;
LABEL_47:
        v24 = 1;
        goto LABEL_48;
      }

LABEL_97:
      if (*v9 == 103 && AAHeaderAssign(*(a1 + 96), *(a1 + 88)) < 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 330, 70, 0, "update global header", v110);
        return 0xFFFFFFFFLL;
      }

      v4 = *(a1 + 64);
      v6 = 70;
    }

    if ((v61 = *(a1 + 88)) != 0 && (v62.ikey = 5521744, v63 = AAHeaderGetKeyIndex(*(a1 + 88), v62), (v63 & 0x80000000) == 0) && ((FieldString = AAHeaderGetFieldString(v61, v63, 0x400uLL, &__s, 0), FieldString <= 1) ? (v65 = 1) : (v65 = FieldString), v65 < 0 || FieldString < 2))
    {
      if (v65 < 0)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v66 = 0;
      v67 = v8 - 512;
      do
      {
        if (!v67[v66])
        {
          break;
        }

        ++v66;
      }

      while (v66 != 100);
      for (i = 0; i != 155; ++i)
      {
        if (!v8[i - 167])
        {
          break;
        }
      }

      do
      {
        v69 = v66;
        if (!v66)
        {
          break;
        }

        --v66;
      }

      while (v67[v69 - 1] == 47);
      v70 = i - 1022;
      while (v70 != -1022)
      {
        v71 = v8[v70-- + 854];
        if (v71 != 47)
        {
          if (v69 + v70 >= 0xFFFFFFFFFFFFFBFFLL)
          {
            __memcpy_chk();
            v72 = v70 + 1024;
            v125[v70 + 1021] = 47;
            goto LABEL_122;
          }

LABEL_143:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 337, 70, 0, "invalid header", v110);
          return 0xFFFFFFFFLL;
        }
      }

      if (v69 - 1023 < 0xFFFFFFFFFFFFFBFFLL)
      {
        goto LABEL_143;
      }

      v72 = 0;
LABEL_122:
      v73 = &__s + v72;
      memcpy(&__s + v72, v8 - 512, v69);
      v73[v69] = 0;
    }

    v74 = strrchr(&__s, 47);
    v75 = *v9;
    if (v75 != 48)
    {
      break;
    }

    if (v74)
    {
      p_s = v74 + 1;
    }

    else
    {
      p_s = &__s;
    }

    if (*p_s != 46)
    {
      goto LABEL_162;
    }

    v77 = v74 + 2;
    if (!v74)
    {
      v77 = &v124;
    }

    if (*v77 != 95)
    {
LABEL_162:
      v81 = 0;
      v83 = 0;
      v85 = 0;
      v84 = 0;
      v82 = 1;
      goto LABEL_168;
    }

    value.tv_sec = 0;
    if ((sub_1000F82B0(v8 - 388, 0xCuLL, &value) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 346, 70, 0, "invalid header", v110);
      return 0xFFFFFFFFLL;
    }

    tv_sec = value.tv_sec;
    if ((sub_1000DA780(a1, v7 + ((value.tv_sec + 511) & 0xFFFFFFFFFFFFFE00) + 512) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 350, 70, 0, "truncated stream", v110);
      return 0xFFFFFFFFLL;
    }

    if (tv_sec >= 0x18)
    {
      v4 = *(a1 + 64);
      v79 = *&v4[v7] == 0x20007160500 && *&v4[v7 + 8] == 0x5820534F2063614DLL;
      if (v79 && *&v4[v7 + 16] == 0x2020202020202020)
      {
        continue;
      }
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 361, 70, 0, "invalid ._ entry", v110);
    return 0xFFFFFFFFLL;
  }

  v81 = 0;
  v82 = 1;
  if (*v9 <= 0x32u)
  {
    v83 = 0;
    v85 = 0;
    v84 = 0;
    switch(v75)
    {
      case 0:
        goto LABEL_168;
      case 49:
        v81 = 0;
        v85 = 0;
        v84 = 0;
        v82 = 0;
        v83 = 1;
        v6 = 72;
        goto LABEL_168;
      case 50:
        v83 = 0;
        v85 = 0;
        v84 = 0;
        v82 = 0;
        v81 = 1;
        v6 = 76;
        goto LABEL_168;
    }

LABEL_161:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 392, 70, 0, "Non supported entry type %u");
    return 0xFFFFFFFFLL;
  }

  if (*v9 > 0x34u)
  {
    if (v75 == 53)
    {
      v81 = 0;
      v83 = 0;
      v85 = 0;
      v84 = 0;
      v82 = 0;
      v6 = 68;
      goto LABEL_168;
    }

    v83 = 0;
    v85 = 0;
    v84 = 0;
    if (v75 == 55)
    {
      goto LABEL_168;
    }

    goto LABEL_161;
  }

  v81 = 0;
  v83 = 0;
  if (v75 == 51)
  {
    v85 = 0;
    v82 = 0;
    v84 = 1;
    v6 = 67;
  }

  else
  {
    v84 = 0;
    v82 = 0;
    v85 = 1;
    v6 = 66;
  }

LABEL_168:
  v86.ikey = 5265748;
  if (AAHeaderSetFieldUInt(*(a1 + 88), 0xFFFFFFFF, v86, v6) < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 394, 70, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  v87.ikey = 5521744;
  if (AAHeaderGetKeyIndex(*(a1 + 88), v87) < 0)
  {
    v88 = &__s;
    v89 = strlen(&__s);
    v90 = v89;
    if (v89 == 1 && __s == 46)
    {
      v90 = 0;
    }

    else
    {
      v88 = &__s;
      if (v89 >= 2 && __s == 46 && v124 == 47)
      {
        v88 = v125;
        v90 = v89 - 2;
      }
    }

    v91.ikey = 5521744;
    if (AAHeaderSetFieldString(*(a1 + 88), 0xFFFFFFFF, v91, v88, v90) < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 405, 70, 0, "creating header", v110);
      return 0xFFFFFFFFLL;
    }
  }

  if ((v81 | v83) == 1)
  {
    v92.ikey = 4935244;
    if (AAHeaderGetKeyIndex(*(a1 + 88), v92) < 0)
    {
      v93 = 0;
      v94 = v8 - 355;
      while (v94[v93])
      {
        if (++v93 == 100)
        {
          goto LABEL_190;
        }
      }

      if (!v93)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 412, 70, 0, "invalid linkname", v110);
        return 0xFFFFFFFFLL;
      }

      if (v93 != 1)
      {
LABEL_190:
        if (*v94 == 46 && *(v8 - 354) == 47)
        {
          v94 = v8 - 353;
          v93 -= 2;
        }
      }

      v95.ikey = 4935244;
      if (AAHeaderSetFieldString(*(a1 + 88), 0xFFFFFFFF, v95, v94, v93) < 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 417, 70, 0, "creating header", v110);
        return 0xFFFFFFFFLL;
      }
    }
  }

  if ((v85 | v84) == 1)
  {
    value.tv_sec = 0;
    v122 = 0;
    if ((sub_1000F82B0(v8 - 183, 8uLL, &value) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 424, 70, 0, "invalid header", v110);
      return 0xFFFFFFFFLL;
    }

    if ((sub_1000F82B0(v8 - 175, 8uLL, &v122) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 425, 70, 0, "invalid header", v110);
      return 0xFFFFFFFFLL;
    }

    v96.ikey = 5653828;
    if ((sub_1000F835C(*(a1 + 88), v96, value.tv_sec) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 426, 70, 0, "creating header", v110);
      return 0xFFFFFFFFLL;
    }

    v97.ikey = 3294532;
    if ((sub_1000F835C(*(a1 + 88), v97, v122) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 427, 70, 0, "creating header", v110);
      return 0xFFFFFFFFLL;
    }
  }

  size = 0;
  if ((sub_1000F82B0(v8 - 388, 0xCuLL, &size) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 432, 70, 0, "invalid header", v110);
    return 0xFFFFFFFFLL;
  }

  if (v82)
  {
    v98.ikey = 5521732;
    v99 = AAHeaderGetKeyIndex(*(a1 + 88), v98);
    if ((v99 & 0x80000000) != 0)
    {
      v100.ikey = 5521732;
      if (AAHeaderSetFieldBlob(*(a1 + 88), 0xFFFFFFFF, v100, size) < 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 438, 70, 0, "creating header", v110);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      value.tv_sec = 0;
      if (AAHeaderGetFieldBlob(*(a1 + 88), v99, &size, &value) < 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 443, 70, 0, "looking up header", v110);
        return 0xFFFFFFFFLL;
      }
    }
  }

  v117 = 0;
  v118 = 0;
  v116 = 0;
  if ((sub_1000F82B0(v8 - 412, 8uLL, &v118) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 449, 70, 0, "invalid header", v110);
    return 0xFFFFFFFFLL;
  }

  if ((sub_1000F82B0(v8 - 404, 8uLL, &v117) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 450, 70, 0, "invalid header", v110);
    return 0xFFFFFFFFLL;
  }

  if ((sub_1000F82B0(v8 - 396, 8uLL, &v116) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 451, 70, 0, "invalid header", v110);
    return 0xFFFFFFFFLL;
  }

  v101.ikey = 4476749;
  if ((sub_1000F835C(*(a1 + 88), v101, v118) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 452, 70, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  v102.ikey = 4475221;
  if ((sub_1000F835C(*(a1 + 88), v102, v117) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 453, 70, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  v103.ikey = 4475207;
  if ((sub_1000F835C(*(a1 + 88), v103, v116) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 454, 70, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  v115.tv_sec = 0;
  v115.tv_nsec = 0;
  v114 = 0;
  if ((sub_1000F82B0(v8 - 376, 0xCuLL, &v114) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 459, 70, 0, "invalid header", v110);
    return 0xFFFFFFFFLL;
  }

  v115.tv_sec = v114;
  if ((sub_1000F83CC(*(a1 + 88), &v115) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 461, 70, 0, "creating header", v110);
    return 0xFFFFFFFFLL;
  }

  v104 = 0;
  v105 = v8 - 247;
  while (v105[v104])
  {
    if (++v104 == 32)
    {
      goto LABEL_239;
    }
  }

  if (!v104)
  {
LABEL_240:
    v107 = 0;
    v108 = v8 - 215;
    while (v108[v107])
    {
      if (++v107 == 32)
      {
        goto LABEL_245;
      }
    }

    if (v107)
    {
LABEL_245:
      v109.ikey = 5130567;
      if ((sub_1000F8434(*(a1 + 88), v109, v108, v107) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 467, 70, 0, "creating header", v110);
        return 0xFFFFFFFFLL;
      }
    }

    result = 0;
    *v113 = (size + 511) & 0xFFFFFFFFFFFFFE00;
    return result;
  }

LABEL_239:
  v106.ikey = 5130581;
  if ((sub_1000F8434(*(a1 + 88), v106, v105, v104) & 0x80000000) == 0)
  {
    goto LABEL_240;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", 465, 70, 0, "creating header", v110);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000F8234(_BYTE *a1, uint64_t a2)
{
  v2 = &a1[a2];
  if (a2 >= 1 && (a1 & 7) != 0)
  {
    v3 = a1 + 1;
    while (!*a1)
    {
      if (++a1 < v2)
      {
        if ((v3++ & 7))
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    return 0;
  }

  else
  {
LABEL_9:
    while (a1 + 8 <= v2)
    {
      v5 = *a1;
      a1 += 8;
      if (v5)
      {
        return 0;
      }
    }

    while (a1 < v2)
    {
      if (*a1)
      {
        return 0;
      }

      ++a1;
    }

    return 1;
  }
}

uint64_t sub_1000F82B0(_BYTE *a1, unint64_t a2, unint64_t *a3)
{
  v3 = *a1;
  v4 = 0xFFFFFFFFLL;
  if (*a1 && v3 != 128 && v3 != 255)
  {
    v5 = 0;
    if (a2)
    {
      while (a1[v5] == 32)
      {
        if (a2 == ++v5)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    v6 = a2 - v5;
    if (a2 <= v5)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = 0;
    v8 = 0;
    v9 = -3 * v5 + 3 * a2;
    v10 = &a1[v5];
    while (1)
    {
      v12 = *v10++;
      v11 = v12;
      if ((v12 & 0xF8) != 0x30)
      {
        break;
      }

      v7 += 3;
      v8 = v11 & 7 | (8 * v8);
      if (!--v6)
      {
        v7 = v9;
        break;
      }
    }

    if (v7 - 65 >= 0xFFFFFFFFFFFFFFC0)
    {
      v4 = 0;
      *a3 = v8;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t sub_1000F835C(AAHeader_impl *a1, AAFieldKey key, uint64_t a3)
{
  if ((AAHeaderGetKeyIndex(a1, key) & 0x80000000) == 0)
  {
    return 0;
  }

  v7 = key;

  return AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v7, a3);
}

uint64_t sub_1000F83CC(AAHeader_impl *a1, const timespec *a2)
{
  v4.ikey = 5067853;
  if ((AAHeaderGetKeyIndex(a1, v4) & 0x80000000) == 0)
  {
    return 0;
  }

  v6.ikey = 5067853;

  return AAHeaderSetFieldTimespec(a1, 0xFFFFFFFF, v6, a2);
}

uint64_t sub_1000F8434(AAHeader_impl *a1, AAFieldKey key, const char *a3, size_t a4)
{
  if ((AAHeaderGetKeyIndex(a1, key) & 0x80000000) == 0)
  {
    return 0;
  }

  v9 = key;

  return AAHeaderSetFieldString(a1, 0xFFFFFFFF, v9, a3, a4);
}

uint64_t sub_1000F84AC(uint64_t (**a1)(), uint64_t a2)
{
  if (a1[1] == sub_1000F84E4 && *(*a1 + 4) == a2)
  {
    return *(*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unsigned int *sub_1000F84E4(unsigned int *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[144];
    v3 = v2 == 0;
    if (*(result + 17))
    {
      sub_1000F9DA8(result, -1, -1);
      sub_1000E79CC(*(v1 + 17));
    }

    v4 = *(v1 + 12);
    if (v4)
    {
      v5 = v1[22];
      if (v5)
      {
        v6 = 0;
        do
        {
          v7 = v6;
          v9 = *v4;
          v4 += 20;
          v8 = v9;
          if (v9)
          {
            ++v6;
          }

          --v5;
        }

        while (v5);
        if (v6)
        {
          if (v8)
          {
            v10 = v7 + 1;
          }

          else
          {
            v10 = v7;
          }

          do
          {
            v11 = v1[37];
            if (!v11)
            {
              break;
            }

            v12 = v1[39];
            if (!v12)
            {
              v12 = v1[36];
            }

            v13 = v12 - 1;
            v14 = *(*(v1 + 20) + 4 * (v12 - 1));
            v1[39] = v13;
            v1[37] = v11 - 1;
            if (v14 >= v1[22])
            {
              break;
            }

            v15 = *(v1 + 12) + 160 * v14;
            *(v15 + 144) = -1;
            if (!pthread_mutex_lock((v15 + 24)))
            {
              v16 = *(v15 + 16);
              *(v15 + 16) = v16 + 1;
              if (v16 || !pthread_cond_broadcast((v15 + 88)))
              {
                pthread_mutex_unlock((v15 + 24));
              }
            }

            sub_1000E79CC(*v15);
            *v15 = 0;
            --v10;
          }

          while (v10);
        }
      }
    }

    v17 = *(v1 + 4);
    if (v17)
    {
      v3 = v17(*(v1 + 1)) >= 0 && v2 == 0;
    }

    v19 = *(v1 + 14);
    if (v19)
    {
      if (v1[26])
      {
        v20 = 0;
        v21 = 16;
        do
        {
          free(*(*(v1 + 14) + v21));
          ++v20;
          v21 += 32;
        }

        while (v20 < v1[26]);
        v19 = *(v1 + 14);
      }

      free(v19);
    }

    free(*(v1 + 10));
    v22 = *(v1 + 16);
    if (v22)
    {
      if (v1[30])
      {
        v23 = 0;
        v24 = 88;
        do
        {
          v25 = (*(v1 + 16) + v24);
          if (!pthread_mutex_destroy(&v25[-2].__opaque[24]))
          {
            pthread_cond_destroy(v25);
          }

          ++v23;
          v24 += 136;
        }

        while (v23 < v1[30]);
        v22 = *(v1 + 16);
      }

      free(v22);
    }

    free(*(v1 + 23));
    *(v1 + 21) = 0;
    *(v1 + 22) = 0;
    *(v1 + 23) = 0;
    v26 = *(v1 + 12);
    if (v26)
    {
      if (v1[22])
      {
        v27 = 0;
        v28 = 88;
        do
        {
          v29 = (*(v1 + 12) + v28);
          if (!pthread_mutex_destroy(&v29[-2].__opaque[24]))
          {
            pthread_cond_destroy(v29);
          }

          ++v27;
          v28 += 160;
        }

        while (v27 < v1[22]);
        v26 = *(v1 + 12);
      }

      free(v26);
    }

    free(*(v1 + 20));
    *(v1 + 18) = 0;
    *(v1 + 19) = 0;
    *(v1 + 20) = 0;
    free(*(v1 + 8));
    if (!pthread_mutex_destroy((v1 + 52)) && !pthread_cond_destroy((v1 + 68)))
    {
      free(*(v1 + 25));
    }

    if (!pthread_mutex_destroy((v1 + 84)) && !pthread_cond_destroy((v1 + 100)))
    {
      free(*(v1 + 41));
    }

    if (!pthread_mutex_destroy((v1 + 116)) && !pthread_cond_destroy(v1 + 11))
    {
      free(*(v1 + 57));
    }

    if ((*v1 & 0x8000000000000000) != 0)
    {
      fprintf(__stderrp, "%12llu blocks\n", *(v1 + 7));
      fprintf(__stderrp, "%12u blocks in cache\n", v1[26]);
      v30 = __stderrp;
      v31 = atomic_load(v1 + 75);
      fprintf(v30, "%12llu blocks computed\n", v31);
      v32 = __stderrp;
      v33 = atomic_load(v1 + 76);
      fprintf(v32, "%12llu requests processed\n", v33);
    }

    free(v1);
    return (v3 - 1);
  }

  return result;
}

void *sub_1000F8834(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = calloc(1uLL, 0x68uLL);
  v18 = malloc(0x268uLL);
  v19 = v18;
  if (v18)
  {
    memset_s(v18, 0x268uLL, 0, 0x268uLL);
    if (v17)
    {
      if (a4 < a3)
      {
        v20 = "Cache size must be >= n_workers";
        v21 = 653;
        goto LABEL_23;
      }

      *(v19 + 16) = a6;
      *(v19 + 24) = a7;
      *v19 = a9;
      *(v19 + 8) = a5;
      *(v19 + 48) = a2;
      *(v19 + 32) = a8;
      *(v19 + 40) = a1;
      *(v19 + 56) = (a1 + a2 - 1) / a2;
      *(v19 + 104) = a4;
      *(v19 + 88) = a3;
      *(v19 + 120) = 2 * a3;
      v23 = 3 * a3 + 1;
      *(v19 + 72) = v23;
      if (a9 < 0)
      {
        fprintf(__stderrp, "%12llu blocks in file\n", (a1 + a2 - 1) / a2);
        fprintf(__stderrp, "%12u blocks in cache\n", *(v19 + 104));
        fprintf(__stderrp, "%12u workers\n", *(v19 + 88));
        fprintf(__stderrp, "%12u requests\n", *(v19 + 120));
        fprintf(__stderrp, "%12u messages\n", *(v19 + 72));
        v23 = *(v19 + 72);
      }

      *(v19 + 192) = 0;
      *(v19 + 196) = v23;
      v24 = calloc(v23, 4uLL);
      *(v19 + 200) = v24;
      if (v24)
      {
        if (pthread_mutex_init((v19 + 208), 0))
        {
LABEL_10:
          v28 = "SharedArrayInit: pthread_mutex_init failed\n";
          v29 = 56;
LABEL_22:
          sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayInit", v29, 0, v28, v25, v26, v27);
          v20 = "SharedArrayInit";
          v21 = 684;
          goto LABEL_23;
        }

        if (pthread_cond_init((v19 + 272), 0))
        {
LABEL_12:
          v28 = "SharedArrayInit: pthread_cond_init failed\n";
          v29 = 57;
          goto LABEL_22;
        }

        v30 = *(v19 + 72);
        *(v19 + 320) = 0;
        *(v19 + 324) = v30;
        v31 = calloc(v30, 4uLL);
        *(v19 + 328) = v31;
        if (v31)
        {
          if (pthread_mutex_init((v19 + 336), 0))
          {
            goto LABEL_10;
          }

          if (pthread_cond_init((v19 + 400), 0))
          {
            goto LABEL_12;
          }

          v32 = *(v19 + 120);
          *(v19 + 448) = 0;
          *(v19 + 452) = v32;
          v33 = calloc(v32, 4uLL);
          *(v19 + 456) = v33;
          if (v33)
          {
            if (pthread_mutex_init((v19 + 464), 0))
            {
              goto LABEL_10;
            }

            if (!pthread_cond_init((v19 + 528), 0))
            {
              v34 = *(v19 + 56);
              if (v34 < 0x800000001)
              {
                v36 = calloc(v34, 4uLL);
                *(v19 + 64) = v36;
                if (v36)
                {
                  v37 = *(v19 + 56);
                  if (v37)
                  {
                    memset(v36, 255, 4 * v37);
                  }

                  v38 = calloc(*(v19 + 104), 0x20uLL);
                  *(v19 + 112) = v38;
                  if (!v38)
                  {
                    v22 = *__error();
                    v20 = "malloc";
                    v21 = 693;
                    goto LABEL_24;
                  }

                  v39 = *(v19 + 104);
                  if (v39)
                  {
                    v40 = 0;
                    v41 = *(v19 + 48);
                    v42 = (v38 + 16);
                    while (1)
                    {
                      *(v42 - 1) = -1;
                      atomic_store(0, v42 - 4);
                      v43 = malloc(v41);
                      *v42 = v43;
                      if (!v43)
                      {
                        break;
                      }

                      ++v40;
                      v42 += 8;
                      if (v40 >= v39)
                      {
                        goto LABEL_34;
                      }
                    }

                    v22 = *__error();
                    v20 = "malloc";
                    v21 = 700;
                    goto LABEL_24;
                  }

LABEL_34:
                  v44 = calloc(*(v19 + 72), 8uLL);
                  *(v19 + 80) = v44;
                  if (!v44)
                  {
                    v22 = *__error();
                    v20 = "malloc";
                    v21 = 705;
                    goto LABEL_24;
                  }

                  if (*(v19 + 72))
                  {
                    v45 = 0;
                    while ((sub_1000F902C((v19 + 192), v45) & 0x80000000) == 0)
                    {
                      if (++v45 >= *(v19 + 72))
                      {
                        goto LABEL_39;
                      }
                    }

                    v20 = "SharedArrayPush";
                    v21 = 708;
                    goto LABEL_23;
                  }

LABEL_39:
                  v46 = *(v19 + 120);
                  if (v46 < 0x3C3C3C3D)
                  {
                    v47 = calloc(v46, 0x88uLL);
                    *(v19 + 128) = v47;
                    if (v47)
                    {
                      v48 = *(v19 + 120);
                      v49 = malloc(4 * v48);
                      *(v19 + 184) = v49;
                      if (v49)
                      {
                        *(v19 + 176) = 0;
                        *(v19 + 168) = v48;
                        *(v19 + 172) = 0;
                        if (!v48)
                        {
LABEL_52:
                          v52 = *(v19 + 88);
                          if (v52 < 0x33333334)
                          {
                            v53 = calloc(v52, 0xA0uLL);
                            *(v19 + 96) = v53;
                            if (v53)
                            {
                              v54 = *(v19 + 88);
                              v55 = malloc(4 * v54);
                              *(v19 + 160) = v55;
                              if (v55)
                              {
                                *(v19 + 152) = 0;
                                *(v19 + 144) = v54;
                                *(v19 + 148) = 0;
                                if (v54)
                                {
                                  v56 = 0;
                                  v57 = 0;
                                  while (1)
                                  {
                                    v58 = *(v19 + 96) + v56;
                                    if ((sub_1000F913C(v58 + 16) & 0x80000000) != 0)
                                    {
                                      v20 = "SemInit";
                                      v21 = 729;
                                      goto LABEL_23;
                                    }

                                    *(v58 + 8) = v19;
                                    *(v58 + 136) = v57;
                                    if (*(v19 + 148) >= *(v19 + 144))
                                    {
                                      v20 = "LocalArrayPush";
                                      v21 = 732;
                                      goto LABEL_23;
                                    }

                                    v59 = *(v19 + 156);
                                    *(*(v19 + 160) + 4 * v59) = v57;
                                    v60 = *(v19 + 148);
                                    v61 = v59 + 1 == *(v19 + 144) ? 0 : v59 + 1;
                                    *(v19 + 156) = v61;
                                    *(v19 + 148) = v60 + 1;
                                    if ((sub_1000E766C(v58, sub_1000F9188, v58, 0) & 0x80000000) != 0)
                                    {
                                      break;
                                    }

                                    ++v57;
                                    v56 += 160;
                                    if (v57 >= *(v19 + 88))
                                    {
                                      goto LABEL_68;
                                    }
                                  }

                                  v20 = "Worker thread creation";
                                  v21 = 733;
                                }

                                else
                                {
LABEL_68:
                                  if ((sub_1000E766C((v19 + 136), sub_1000F92DC, v19, 0) & 0x80000000) == 0)
                                  {
                                    v17[2] = sub_1000F99E8;
                                    v17[4] = sub_1000F9A04;
                                    v17[6] = sub_1000F9D38;
                                    v17[7] = sub_1000F9D84;
                                    *v17 = v19;
                                    v17[1] = sub_1000F84E4;
                                    return v17;
                                  }

                                  v20 = "Stream thread creation";
                                  v21 = 737;
                                }
                              }

                              else
                              {
                                v20 = "LocalArrayInit";
                                v21 = 725;
                              }

                              goto LABEL_23;
                            }
                          }

                          else
                          {
                            *__error() = 12;
                            *(v19 + 96) = 0;
                          }

                          v22 = *__error();
                          v20 = "malloc";
                          v21 = 724;
                          goto LABEL_24;
                        }

                        v50 = 0;
                        v51 = 16;
                        while (1)
                        {
                          if ((sub_1000F913C(*(v19 + 128) + v51) & 0x80000000) != 0)
                          {
                            v20 = "SemInit";
                            v21 = 718;
                            goto LABEL_23;
                          }

                          if ((sub_1000F902C((v19 + 448), v50) & 0x80000000) != 0)
                          {
                            break;
                          }

                          ++v50;
                          v51 += 136;
                          if (v50 >= *(v19 + 120))
                          {
                            goto LABEL_52;
                          }
                        }

                        v20 = "SharedArrayPush";
                        v21 = 719;
                      }

                      else
                      {
                        v20 = "LocalArrayInit";
                        v21 = 714;
                      }

LABEL_23:
                      v22 = 0;
                      goto LABEL_24;
                    }
                  }

                  else
                  {
                    *__error() = 12;
                    *(v19 + 128) = 0;
                  }

                  v22 = *__error();
                  v20 = "malloc";
                  v21 = 713;
                  goto LABEL_24;
                }
              }

              else
              {
                *__error() = 12;
                *(v19 + 64) = 0;
              }

              v22 = *__error();
              v20 = "malloc";
              v21 = 688;
              goto LABEL_24;
            }

            goto LABEL_12;
          }
        }
      }

      v28 = "SharedArrayInit: malloc failed\n";
      v29 = 55;
      goto LABEL_22;
    }
  }

  v22 = *__error();
  v20 = "malloc";
  v21 = 650;
LABEL_24:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "AAGenericRandomAccessInputStreamOpen", v21, 33, v22, v20);
  free(v17);
  sub_1000F84E4(v19);
  return 0;
}

uint64_t sub_1000F902C(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    v7 = "SharedArrayPush: pthread_mutex_lock failed\n";
    v8 = 117;
  }

  else
  {
    v9 = *a1;
    v10 = a1[1];
    v11 = *a1;
    if (*a1 < v10)
    {
      *(*(a1 + 1) + 4 * v9) = a2;
      v11 = *a1;
    }

    *a1 = v11 + 1;
    if (v11 || !pthread_cond_broadcast((a1 + 20)))
    {
      if (pthread_mutex_unlock((a1 + 4)))
      {
        v7 = "SharedArrayPush: pthread_mutex_unlock failed\n";
        v8 = 124;
      }

      else
      {
        if (v9 < v10)
        {
          return 0;
        }

        v7 = "SharedArrayPush: stack is full\n";
        v8 = 125;
      }
    }

    else
    {
      v7 = "SharedArrayPush: pthread_cond_broadcast failed\n";
      v8 = 122;
    }
  }

  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", v8, 0, v7, v4, v5, v6);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000F913C(uint64_t a1)
{
  *a1 = 0;
  if (pthread_mutex_init((a1 + 8), 0))
  {
    return 0xFFFFFFFFLL;
  }

  if (pthread_cond_init((a1 + 72), 0))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_1000F9188(uint64_t a1)
{
  v2 = 1;
  v3 = *(a1 + 8);
  while (1)
  {
    if (pthread_mutex_lock((a1 + 24)))
    {
      goto LABEL_7;
    }

    while (1)
    {
      v4 = *(a1 + 16);
      if (v4 > 0)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 88), (a1 + 24)))
      {
        goto LABEL_7;
      }
    }

    *(a1 + 16) = v4 - 1;
    if (pthread_mutex_unlock((a1 + 24)))
    {
LABEL_7:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "workerProc", 365, 33, 0, "SemAcquire");
      v2 = 0;
    }

    v5 = *(a1 + 144);
    if (v5 == -1)
    {
      return a1;
    }

    if (((*(v3 + 16))(*(v3 + 8), *(a1 + 136), v5, *(*(v3 + 112) + 32 * *(a1 + 152) + 16)) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "workerProc", 374, 33, 0, "get block data");
      v2 = 0;
    }

    *(a1 + 156) = v2;
    if ((sub_1000F9DA8(v3, -1, *(a1 + 136)) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "workerProc", 381, 33, 0, "send worker message");
      v2 = 0;
    }
  }
}

uint64_t sub_1000F92DC(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    while (1)
    {
      if (pthread_mutex_lock((a1 + 336)))
      {
        v6 = 91;
        v7 = "SharedArrayPop: pthread_mutex_lock failed\n";
        goto LABEL_9;
      }

      while (1)
      {
        v8 = *(a1 + 320);
        if (v8)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 400), (a1 + 336)))
        {
          v6 = 94;
          v7 = "SharedArrayPop: pthread_cond_wait failed\n";
          goto LABEL_9;
        }
      }

      v9 = v8 - 1;
      *(a1 + 320) = v9;
      v10 = *(*(a1 + 328) + 4 * v9);
      if (!pthread_mutex_unlock((a1 + 336)))
      {
        break;
      }

      v6 = 98;
      v7 = "SharedArrayPop: pthread_mutex_unlock failed\n";
LABEL_9:
      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v6, 0, v7, v3, v4, v5);
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 186, 33, 0, "SharedArrayPop");
      *(a1 + 576) = 1;
    }

    v11 = (*(a1 + 80) + 8 * v10);
    v13 = *v11;
    v12 = v11[1];
    if ((sub_1000F902C((a1 + 192), v10) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 192, 33, 0, "SharedArrayPush");
      *(a1 + 576) = 1;
    }

    if ((v12 & v13) == 0xFFFFFFFF)
    {
      v14 = 1;
    }

    else
    {
      v14 = v2;
    }

    v56 = v14;
    v15 = v13;
    if (v12 != -1)
    {
      atomic_fetch_add_explicit((a1 + 600), 1uLL, memory_order_relaxed);
      v16 = *(a1 + 96) + 160 * v12;
      v17 = *(a1 + 112) + 32 * *(v16 + 152);
      if (*(v16 + 156))
      {
        atomic_fetch_add(v17, 1u);
        atomic_fetch_add((v17 + 4), 0xFFFFFFFF);
        *(v17 + 24) = atomic_fetch_add((a1 + 592), 1uLL);
        v18 = *(v16 + 152);
      }

      else
      {
        atomic_fetch_add((v17 + 4), 0xFFFFFFFF);
        *(v17 + 24) = atomic_fetch_add((a1 + 592), 1uLL);
        *(v17 + 8) = -1;
        v18 = -3;
      }

      *(*(a1 + 64) + 4 * *(v16 + 144)) = v18;
      *(v16 + 144) = -1;
      *(v16 + 152) = -1;
      if (*(a1 + 148) >= *(a1 + 144))
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 242, 33, 0, "LocalArrayPush");
        *(a1 + 576) = 1;
      }

      else
      {
        v19 = *(a1 + 156);
        *(*(a1 + 160) + 4 * v19) = v12;
        v20 = *(a1 + 148);
        if (v19 + 1 == *(a1 + 144))
        {
          v21 = 0;
        }

        else
        {
          v21 = v19 + 1;
        }

        *(a1 + 156) = v21;
        *(a1 + 148) = v20 + 1;
      }
    }

    v22 = *(a1 + 172);
    if (v15 == -1)
    {
      goto LABEL_30;
    }

    atomic_fetch_add_explicit((a1 + 608), 1uLL, memory_order_relaxed);
    v23 = *(a1 + 168);
    if (v22 < v23)
    {
      if (*(a1 + 176))
      {
        v23 = *(a1 + 176);
      }

      v24 = v23 - 1;
      *(*(a1 + 184) + 4 * v24) = v15;
      v22 = *(a1 + 172) + 1;
      *(a1 + 172) = v22;
      *(a1 + 176) = v24;
LABEL_30:
      if (v22)
      {
        goto LABEL_33;
      }

      goto LABEL_96;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 254, 33, 0, "LocalArrayEnqueue");
    *(a1 + 576) = 1;
    v22 = *(a1 + 172);
    if (v22)
    {
LABEL_33:
      v25 = 0;
      while (1)
      {
        v26 = *(a1 + 172);
        if (v26)
        {
          v27 = *(a1 + 180);
          if (!v27)
          {
            v27 = *(a1 + 168);
          }

          v28 = v27 - 1;
          v29 = *(*(a1 + 184) + 4 * (v27 - 1));
          *(a1 + 180) = v28;
          *(a1 + 172) = v26 - 1;
        }

        else
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 262, 33, 0, "LocalArrayDequeue");
          *(a1 + 576) = 1;
          v29 = -1;
        }

        v30 = *(a1 + 128) + 136 * v29;
        if (v56)
        {
          break;
        }

        v32 = *(*(a1 + 64) + 4 * *v30);
        if (v32 < *(a1 + 104))
        {
          *(v30 + 8) = v32;
          v33 = *(a1 + 112) + 32 * v32;
          atomic_fetch_add(v33, 1u);
          *(v33 + 24) = atomic_fetch_add((a1 + 592), 1uLL);
          if (!pthread_mutex_lock((v30 + 24)))
          {
            v34 = *(v30 + 16);
            *(v30 + 16) = v34 + 1;
            if ((v34 || !pthread_cond_broadcast((v30 + 88))) && !pthread_mutex_unlock((v30 + 24)))
            {
              goto LABEL_81;
            }
          }

          v38 = 292;
          goto LABEL_79;
        }

        if (v32 == -3)
        {
          *(v30 + 8) = -1;
          if (!pthread_mutex_lock((v30 + 24)))
          {
            v35 = *(v30 + 16);
            *(v30 + 16) = v35 + 1;
            if ((v35 || !pthread_cond_broadcast((v30 + 88))) && !pthread_mutex_unlock((v30 + 24)))
            {
              goto LABEL_81;
            }
          }

          v38 = 303;
          goto LABEL_79;
        }

        v36 = *(a1 + 168);
        if (*(a1 + 172) >= v36)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 308, 33, 0, "LocalArrayEnqueue");
          *(a1 + 576) = 1;
        }

        else
        {
          if (*(a1 + 176))
          {
            v36 = *(a1 + 176);
          }

          v37 = v36 - 1;
          *(*(a1 + 184) + 4 * v37) = v29;
          ++*(a1 + 172);
          *(a1 + 176) = v37;
        }

        if (v32 == -1 && *(a1 + 148))
        {
          v39 = *v30;
          if (*(a1 + 56) <= *v30)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "runWorker", 149, 33, 0, "Invalid block_id, or no workers available");
            goto LABEL_95;
          }

          while (!*(a1 + 104))
          {
            v43 = -1;
LABEL_73:
            v41 = v43;
            v47 = *(a1 + 112) + 32 * v43;
            v48 = 1;
            atomic_compare_exchange_strong(v47, &v48, 0);
            if (v48 == 1)
            {
              *(*(a1 + 64) + 4 * *(v47 + 8)) = -1;
              *(v47 + 8) = -1;
              goto LABEL_85;
            }
          }

          v40 = 0;
          v41 = 0;
          v42 = -1;
          v43 = -1;
          while (1)
          {
            v44 = *(a1 + 112);
            if (!atomic_load((v44 + v40 + 4)))
            {
              if (*(v44 + v40 + 8) == -1)
              {
                v47 = v44 + v40;
                v43 = v41;
LABEL_85:
                atomic_fetch_add((v47 + 4), 1u);
                *(*(a1 + 112) + 32 * v41 + 8) = v39;
                v49 = *(a1 + 148);
                if (v49)
                {
                  v50 = *(a1 + 156);
                  if (!v50)
                  {
                    v50 = *(a1 + 144);
                  }

                  v51 = v50 - 1;
                  v52 = *(*(a1 + 160) + 4 * v51);
                  *(a1 + 156) = v51;
                  *(a1 + 148) = v49 - 1;
                  v53 = *(a1 + 96) + 160 * v52;
                  *(v53 + 144) = v39;
                  *(v53 + 152) = v43;
                  *(*(a1 + 64) + 4 * v39) = -2;
                  if (!pthread_mutex_lock((v53 + 24)))
                  {
                    v54 = *(v53 + 16);
                    *(v53 + 16) = v54 + 1;
                    if ((v54 || !pthread_cond_broadcast((v53 + 88))) && !pthread_mutex_unlock((v53 + 24)))
                    {
                      break;
                    }
                  }

                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "runWorker", 167, 33, 0, "SemRelease");
                }

                else
                {
                  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "runWorker", 159, 33, 0, "LocalArrayPop");
                }

LABEL_95:
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 313, 33, 0, "run worker");
LABEL_80:
                *(a1 + 576) = 1;
                break;
              }

              v46 = *(v44 + v40 + 24);
              if (v46 < v42)
              {
                v42 = v46;
                v43 = v41;
              }
            }

            ++v41;
            v40 += 32;
            if (v41 >= *(a1 + 104))
            {
              goto LABEL_73;
            }
          }
        }

LABEL_81:
        if (++v25 == v22)
        {
          goto LABEL_96;
        }
      }

      *(v30 + 8) = -1;
      if (!pthread_mutex_lock((v30 + 24)))
      {
        v31 = *(v30 + 16);
        *(v30 + 16) = v31 + 1;
        if ((v31 || !pthread_cond_broadcast((v30 + 88))) && !pthread_mutex_unlock((v30 + 24)))
        {
          goto LABEL_81;
        }
      }

      v38 = 272;
LABEL_79:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", v38, 33, 0, "SemRelease");
      goto LABEL_80;
    }

LABEL_96:
    v2 = 0;
    if (v56)
    {
      v2 = v56;
      if (*(a1 + 148) == *(a1 + 88))
      {
        return a1;
      }
    }
  }
}

uint64_t sub_1000F99E8(uint64_t a1, char *a2, unint64_t a3)
{
  if (*(a1 + 576))
  {
    return -1;
  }

  else
  {
    return sub_1000F9A04(a1, a2, a3, atomic_fetch_add((a1 + 584), a3));
  }
}

uint64_t sub_1000F9A04(uint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 576))
  {
    return -1;
  }

  if (!a3)
  {
    return 0;
  }

  v5 = a4;
  if ((a4 & 0x8000000000000000) == 0)
  {
    v7 = a4 + a3;
    if (a4 + a3 >= *(a1 + 40))
    {
      v7 = *(a1 + 40);
    }

    if (__CFADD__(a4, a3))
    {
      v8 = *(a1 + 40);
    }

    else
    {
      v8 = v7;
    }

    if (v8 > a4)
    {
      v9 = a4 / *(a1 + 48);
      if (v9 < *(a1 + 56))
      {
        v4 = 0;
        v11 = (a1 + 448);
        while (1)
        {
          v12 = *(a1 + 48);
          if (pthread_mutex_lock((a1 + 464)))
          {
            v24 = "SharedArrayPop: pthread_mutex_lock failed\n";
            v25 = 91;
LABEL_38:
            sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v25, 0, v24, v13, v14, v15);
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "acquireCachedBlock", 395, 33, 0, "SharedArrayPop");
            goto LABEL_39;
          }

          while (!*v11)
          {
            if (pthread_cond_wait((a1 + 528), (a1 + 464)))
            {
              v24 = "SharedArrayPop: pthread_cond_wait failed\n";
              v25 = 94;
              goto LABEL_38;
            }
          }

          v16 = *v11 - 1;
          *(a1 + 448) = v16;
          v17 = *(*(a1 + 456) + 4 * v16);
          if (pthread_mutex_unlock((a1 + 464)))
          {
            v24 = "SharedArrayPop: pthread_mutex_unlock failed\n";
            v25 = 98;
            goto LABEL_38;
          }

          v18 = *(a1 + 128) + 136 * v17;
          *v18 = v9;
          *(v18 + 8) = -1;
          if ((sub_1000F9DA8(a1, v17, -1) & 0x80000000) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "acquireCachedBlock", 404, 33, 0, "send request");
            v26 = 0;
          }

          else
          {
            v26 = 1;
          }

          if (pthread_mutex_lock((v18 + 24)))
          {
            goto LABEL_26;
          }

          while (1)
          {
            v19 = *(v18 + 16);
            if (v19 > 0)
            {
              break;
            }

            if (pthread_cond_wait((v18 + 88), (v18 + 24)))
            {
              goto LABEL_26;
            }
          }

          *(v18 + 16) = v19 - 1;
          if (pthread_mutex_unlock((v18 + 24)))
          {
LABEL_26:
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "acquireCachedBlock", 410, 33, 0, "SemAcquire");
            v26 = 0;
          }

          v20 = *(v18 + 8);
          if ((sub_1000F902C((a1 + 448), v17) & 0x80000000) != 0)
          {
            break;
          }

          if (!v26 || v20 == -1)
          {
            goto LABEL_39;
          }

          v21 = v9 * v12;
          v27 = v9 * v12 + v12;
          if (v27 >= v8)
          {
            v22 = v8;
          }

          else
          {
            v22 = v9 * v12 + v12;
          }

          memcpy(a2, (*(*(a1 + 112) + 32 * v20 + 16) + v5 - v21), v22 - v5);
          v4 += v22 - v5;
          atomic_fetch_add((*(a1 + 112) + 32 * v20), 0xFFFFFFFF);
          if (v27 < v8)
          {
            a2 += v22 - v5;
            ++v9;
            v5 = v22;
            if (v9 < *(a1 + 56))
            {
              continue;
            }
          }

          return v4;
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "acquireCachedBlock", 418, 33, 0, "SharedArrayPush");
LABEL_39:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "graisPRead", 464, 33, 0, "acquire segment in cache");
        return -1;
      }
    }

    return 0;
  }

  return -1;
}

unint64_t sub_1000F9D38(uint64_t a1, unint64_t a2, int a3)
{
  if (!*(a1 + 576))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        a2 += atomic_fetch_add((a1 + 584), a2);
        return a2;
      }

      if (a3 != 2)
      {
        return -1;
      }

      a2 += *(a1 + 40);
    }

    atomic_store(a2, (a1 + 584));
    return a2;
  }

  return -1;
}

uint64_t sub_1000F9D84(uint64_t result)
{
  if (!*(result + 576))
  {
    *(result + 576) = 1;
    v1 = *(result + 24);
    if (v1)
    {
      return v1(*(result + 8));
    }
  }

  return result;
}

uint64_t sub_1000F9DA8(uint64_t a1, int a2, int a3)
{
  if (pthread_mutex_lock((a1 + 208)))
  {
    v9 = "SharedArrayPop: pthread_mutex_lock failed\n";
    v10 = 91;
LABEL_8:
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v10, 0, v9, v6, v7, v8);
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "sendMessage", 339, 33, 0, "SharedArrayPop");
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v11 = *(a1 + 192);
    if (v11)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 272), (a1 + 208)))
    {
      v9 = "SharedArrayPop: pthread_cond_wait failed\n";
      v10 = 94;
      goto LABEL_8;
    }
  }

  v12 = v11 - 1;
  *(a1 + 192) = v12;
  v13 = *(*(a1 + 200) + 4 * v12);
  if (pthread_mutex_unlock((a1 + 208)))
  {
    v9 = "SharedArrayPop: pthread_mutex_unlock failed\n";
    v10 = 98;
    goto LABEL_8;
  }

  v15 = (*(a1 + 80) + 8 * v13);
  *v15 = a2;
  v15[1] = a3;
  if ((sub_1000F902C((a1 + 320), v13) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "sendMessage", 347, 33, 0, "SharedArrayPush");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

char *sub_1000F9EEC(unint64_t a1)
{
  if (a1 - 0x100000000 > 0xFFFFFFFF00000000)
  {
    v2 = getpagesize();
    if (v2 <= 0x197)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 252, 73, 0, "Incompatible page size");
      return 0;
    }

    v5 = v2;
    if (a1 >> 2 < v2)
    {
      v6 = 1;
    }

    else
    {
      v6 = (a1 >> 2) / v2;
    }

    v7 = v6 * v2;
    v8 = valloc(v2 + 4 * v7);
    v3 = v8;
    if (!v8)
    {
      v15 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 262, 73, *v15, "malloc");
      return v3;
    }

    *(v8 + 50) = 0;
    *(v8 + 23) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 21) = 0u;
    *(v8 + 22) = 0u;
    *(v8 + 19) = 0u;
    *(v8 + 20) = 0u;
    *(v8 + 17) = 0u;
    *(v8 + 18) = 0u;
    *(v8 + 15) = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 13) = 0u;
    *(v8 + 14) = 0u;
    *(v8 + 11) = 0u;
    *(v8 + 12) = 0u;
    *(v8 + 9) = 0u;
    *(v8 + 10) = 0u;
    *(v8 + 7) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 5) = 0u;
    *(v8 + 6) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    *v8 = 0u;
    *(v8 + 48) = -1;
    atomic_store(2u, v8 + 101);
    *v8 = 0x600000000;
    v9 = calloc(6uLL, 4uLL);
    *(v3 + 1) = v9;
    if (v9)
    {
      if (pthread_mutex_init((v3 + 4), 0))
      {
        v13 = "SharedArrayInit: pthread_mutex_init failed\n";
        v14 = 56;
      }

      else
      {
        if (!pthread_cond_init((v3 + 20), 0))
        {
          *(v3 + 16) = 0x600000000;
          v16 = calloc(6uLL, 4uLL);
          *(v3 + 17) = v16;
          if (v16)
          {
            if (pthread_mutex_init((v3 + 36), 0))
            {
              v20 = "SharedArrayInit: pthread_mutex_init failed\n";
              v21 = 56;
            }

            else
            {
              if (!pthread_cond_init((v3 + 52), 0))
              {
                v22 = 0;
                for (i = v3 + 68; ; i += 4)
                {
                  *i = 0;
                  i[1] = 0;
                  *(i - 2) = v3 + v5;
                  *(i - 1) = v7;
                  if ((sub_1000FA288(v3 + 32, v22) & 0x80000000) != 0)
                  {
                    break;
                  }

                  ++v22;
                  v5 += v7;
                  if (v22 == 4)
                  {
                    return v3;
                  }
                }

                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 283, 73, 0, "SharedArrayPush");
                goto LABEL_19;
              }

              v20 = "SharedArrayInit: pthread_cond_init failed\n";
              v21 = 57;
            }
          }

          else
          {
            v20 = "SharedArrayInit: malloc failed\n";
            v21 = 55;
          }

          sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v21, 0, v20, v17, v18, v19);
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 270, 73, 0, "SharedArrayInit");
LABEL_19:
          if (!pthread_mutex_destroy((v3 + 4)) && !pthread_cond_destroy((v3 + 20)))
          {
            free(*(v3 + 1));
          }

          if (!pthread_mutex_destroy((v3 + 36)) && !pthread_cond_destroy((v3 + 52)))
          {
            free(*(v3 + 17));
          }

          free(v3);
          return 0;
        }

        v13 = "SharedArrayInit: pthread_cond_init failed\n";
        v14 = 57;
      }
    }

    else
    {
      v13 = "SharedArrayInit: malloc failed\n";
      v14 = 55;
    }

    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v14, 0, v13, v10, v11, v12);
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 269, 73, 0, "SharedArrayInit");
    goto LABEL_19;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 247, 73, 0, "SharedBuffer invalid capacity: %zu");
  return 0;
}

uint64_t sub_1000FA288(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    v7 = "SharedArrayPush: pthread_mutex_lock failed\n";
    v8 = 117;
  }

  else
  {
    v9 = *a1;
    v10 = a1[1];
    v11 = *a1;
    if (*a1 < v10)
    {
      *(*(a1 + 1) + 4 * v9) = a2;
      v11 = *a1;
    }

    *a1 = v11 + 1;
    if (v11 || !pthread_cond_broadcast((a1 + 20)))
    {
      if (pthread_mutex_unlock((a1 + 4)))
      {
        v7 = "SharedArrayPush: pthread_mutex_unlock failed\n";
        v8 = 124;
      }

      else
      {
        if (v9 < v10)
        {
          return 0;
        }

        v7 = "SharedArrayPush: stack is full\n";
        v8 = 125;
      }
    }

    else
    {
      v7 = "SharedArrayPush: pthread_cond_broadcast failed\n";
      v8 = 122;
    }
  }

  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", v8, 0, v7, v4, v5, v6);
  return 0xFFFFFFFFLL;
}

void sub_1000FA398(uint64_t a1)
{
  if (a1)
  {
    if (!pthread_mutex_destroy((a1 + 16)) && !pthread_cond_destroy((a1 + 80)))
    {
      free(*(a1 + 8));
    }

    if (!pthread_mutex_destroy((a1 + 144)) && !pthread_cond_destroy((a1 + 208)))
    {
      free(*(a1 + 136));
    }

    free(a1);
  }
}

uint64_t sub_1000FA42C(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  if (a2)
  {
    if (!atomic_load((a1 + 400)))
    {
      if (atomic_load((a1 + 392)))
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFillFromStream", 365, 73, 0, "write after EOF");
      }

      else
      {
        v9 = a2;
        v10 = 0;
        v11 = a1 + 256;
        while (1)
        {
          v12 = *(a1 + 384);
          if (v12 <= 3)
          {
            v17 = *(v11 + 32 * v12 + 24);
          }

          else
          {
            if (pthread_mutex_lock((a1 + 144)))
            {
              v25 = "SharedArrayPop: pthread_mutex_lock failed\n";
              v26 = 91;
LABEL_24:
              sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v26, 0, v25, v13, v14, v15);
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFillFromStream", 378, 73, 0, "SharedArrayPop");
              goto LABEL_25;
            }

            while (1)
            {
              v16 = *(a1 + 128);
              if (v16)
              {
                break;
              }

              if (pthread_cond_wait((a1 + 208), (a1 + 144)))
              {
                v25 = "SharedArrayPop: pthread_cond_wait failed\n";
                v26 = 94;
                goto LABEL_24;
              }
            }

            v18 = v16 - 1;
            *(a1 + 128) = v18;
            v12 = *(*(a1 + 136) + 4 * v18);
            if (pthread_mutex_unlock((a1 + 144)))
            {
              v25 = "SharedArrayPop: pthread_mutex_unlock failed\n";
              v26 = 98;
              goto LABEL_24;
            }

            if (v12 > 3)
            {
              goto LABEL_25;
            }

            v17 = 0;
            *(a1 + 384) = v12;
            v19 = (a1 + 272 + 32 * v12);
            *v19 = 0;
            v19[1] = 0;
          }

          v20 = (v11 + 32 * v12);
          if (v20[1] - v17 >= v9)
          {
            v21 = v9;
          }

          else
          {
            v21 = v20[1] - v17;
          }

          v22 = a3(a4, *v20 + v17, v21);
          if (v22 < 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFillFromStream", 393, 73, 0, "stream read");
            goto LABEL_25;
          }

          v23 = v22;
          if (!v22)
          {
            break;
          }

          v24 = v20[3] + v22;
          v20[3] = v24;
          if (v24 == v20[1] && (sub_1000FA6F0(a1) & 0x80000000) != 0)
          {
            goto LABEL_25;
          }

          v10 += v23;
          v9 -= v23;
          if (!v9)
          {
            goto LABEL_30;
          }
        }

        if ((sub_1000FA66C(a1) & 0x80000000) == 0)
        {
LABEL_30:
          if ((sub_1000FA6F0(a1) & 0x80000000) == 0)
          {
            return v10;
          }
        }
      }

LABEL_25:
      sub_1000FA760(a1);
    }
  }

  return -1;
}

uint64_t sub_1000FA66C(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 392), &v1, 1u);
  if (v1)
  {
    return 0;
  }

  if ((sub_1000FA6F0(a1) & 0x80000000) == 0)
  {
    if ((sub_1000FAA6C(a1, -2) & 0x80000000) == 0)
    {
      return 0;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "sendEOF", 351, 73, 0, "SharedArrayEnqueue");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000FA6F0(unsigned int *a1)
{
  v3 = a1[96];
  a1[96] = -1;
  if (v3 > 3)
  {
    return 0;
  }

  if ((sub_1000FAA6C(a1, v3) & 0x80000000) == 0)
  {
    return 0;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "currentWriteBufferFull", 324, 73, 0, "SharedArrayEnqueue", v1, v2);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000FA760(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    atomic_compare_exchange_strong((result + 400), &v2, 1u);
    if (!v2)
    {
      if ((sub_1000FA288((result + 128), -1) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferAbort", 500, 73, 0, "SharedArrayPush");
      }

      result = sub_1000FAA6C(v1, -1);
      if ((result & 0x80000000) != 0)
      {

        return sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferAbort", 501, 73, 0, "SharedArrayPush");
      }
    }
  }

  return result;
}

uint64_t sub_1000FA824(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  if (!a2)
  {
    return -1;
  }

  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  if (!atomic_load((a1 + 396)))
  {
    v11 = a2;
    v6 = 0;
    while (1)
    {
      v12 = *(a1 + 388);
      if (v12 >= 4)
      {
        if (pthread_mutex_lock((a1 + 16)))
        {
          v25 = "SharedArrayPop: pthread_mutex_lock failed\n";
          v26 = 91;
          goto LABEL_26;
        }

        while (!*a1)
        {
          if (pthread_cond_wait((a1 + 80), (a1 + 16)))
          {
            v25 = "SharedArrayPop: pthread_cond_wait failed\n";
            v26 = 94;
            goto LABEL_26;
          }
        }

        v16 = *a1 - 1;
        *a1 = v16;
        v12 = *(*(a1 + 8) + 4 * v16);
        if (pthread_mutex_unlock((a1 + 16)))
        {
          v25 = "SharedArrayPop: pthread_mutex_unlock failed\n";
          v26 = 98;
LABEL_26:
          sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v26, 0, v25, v13, v14, v15);
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFlushToStream", 448, 73, 0, "SharedArrayDequeue");
LABEL_27:
          sub_1000FA760(a1);
          return -1;
        }

        if (v12 == 4294967294)
        {
          v27 = 0;
          atomic_compare_exchange_strong((a1 + 396), &v27, 1u);
          return v6;
        }

        if (v12 > 3)
        {
          goto LABEL_27;
        }

        *(a1 + 388) = v12;
      }

      v17 = (a1 + 256 + 32 * v12);
      v18 = v17[2];
      if (v17[3] - v18 >= v11)
      {
        v19 = v11;
      }

      else
      {
        v19 = v17[3] - v18;
      }

      v20 = a3(a4, *v17 + v18, v19);
      if (v20 <= 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFlushToStream", 469, 73, 0, "stream write");
        goto LABEL_27;
      }

      v21 = v20;
      v22 = v17[3];
      v23 = v17[2] + v20;
      v17[2] = v23;
      if (v23 == v22)
      {
        v24 = *(a1 + 388);
        *(a1 + 388) = -1;
        if (v24 <= 3 && (sub_1000FA288((a1 + 128), v24) & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "currentReadBufferEmpty", 337, 73, 0, "SharedArrayPush");
          goto LABEL_27;
        }
      }

      v6 += v21;
      v11 -= v21;
      if (!v11)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t sub_1000FAA6C(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    v7 = "SharedArrayPush: pthread_mutex_lock failed\n";
    v8 = 157;
  }

  else
  {
    v9 = *a1;
    v10 = a1[1];
    if (v9 >= v10)
    {
      v11 = *a1;
    }

    else
    {
      if (v9)
      {
        memmove((*(a1 + 1) + 4), *(a1 + 1), 4 * v9);
      }

      **(a1 + 1) = a2;
      v11 = *a1;
    }

    *a1 = v11 + 1;
    if (v11 || !pthread_cond_broadcast((a1 + 20)))
    {
      if (pthread_mutex_unlock((a1 + 4)))
      {
        v7 = "SharedArrayPush: pthread_mutex_unlock failed\n";
        v8 = 168;
      }

      else
      {
        if (v9 < v10)
        {
          return 0;
        }

        v7 = "SharedArrayPush: stack is full\n";
        v8 = 169;
      }
    }

    else
    {
      v7 = "SharedArrayPush: pthread_cond_broadcast failed\n";
      v8 = 166;
    }
  }

  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayEnqueue", v8, 0, v7, v4, v5, v6);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000FAB94(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  if (!a3)
  {
    return sub_1000FA66C(a1);
  }

  v5 = a2;
  return sub_1000FA42C(a1, a3, sub_1000FABF4, &v5);
}

size_t sub_1000FABF4(const void **a1, void *__dst, size_t a3)
{
  memcpy(__dst, *a1, a3);
  *a1 = *a1 + a3;
  return a3;
}

uint64_t sub_1000FAC38(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  v7[1] = v3;
  v7[2] = v4;
  v7[0] = a2;
  return sub_1000FA824(a1, a3, sub_1000FAC8C, v7);
}

size_t sub_1000FAC8C(void **a1, const void *a2, size_t a3)
{
  memcpy(*a1, a2, a3);
  *a1 = *a1 + a3;
  return a3;
}

uint64_t sub_1000FACD4(uint64_t a1, unsigned int a2)
{
  if (a2 < 6)
  {
    *a1 = a2;
    *(a1 + 12) = 2;
    *(a1 + 48) = 32;
    *(a1 + 56) = 1;
    *(a1 + 16) = 0x10000100000;
    *(a1 + 24) = 2049;
    if (a2)
    {
      v2 = 0;
      if (a2 == 5)
      {
        *(a1 + 8) = 0;
      }
    }

    else
    {
      v2 = 0;
      *(a1 + 56) = 0;
    }
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithProfile", 31, 79, 0, "Invalid profile: %u", a2);
    return 0xFFFFFFFFLL;
  }

  return v2;
}

uint64_t sub_1000FAD8C(int a1)
{
  if (a1 == 2)
  {
    return 32;
  }

  else
  {
    return 8 * (a1 == 1);
  }
}

uint64_t sub_1000FADA8(unsigned int *a1, _DWORD *a2)
{
  if (*a2 == 826361153)
  {
    v2 = a2[2];
    if (v2 < 0x4000001)
    {
      v3 = a2[1];
      if ((v3 & 0xFFFFFF) < 6)
      {
        v4 = 0;
        *a1 = v3 & 0xFFFFFF;
        a1[1] = v2;
        a1[2] = HIBYTE(v3);
        return v4;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithMagic", 57, 79, 0, "Invalid profile: %u");
    }

    else
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithMagic", 55, 79, 0, "Invalid AEA container (auth_data_size)");
    }
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithMagic", 54, 79, 0, "Invalid magic bytes");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000FAE84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 25);
  if (v2 > 2)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithRootHeader", 74, 79, 0, "Invalid checksum in root header: %u");
    return 0xFFFFFFFFLL;
  }

  *(a1 + 12) = v2;
  if (v2 == 2)
  {
    v3 = 32;
  }

  else
  {
    v3 = 8 * (v2 == 1);
  }

  *(a1 + 48) = v3;
  v4 = *(a2 + 24);
  if (v4 <= 0x64)
  {
    switch(v4)
    {
      case '-':
        v5 = 0;
        break;
      case '4':
        v5 = 256;
        break;
      case 'b':
        v5 = 1794;
        break;
      default:
        goto LABEL_19;
    }
  }

  else if (*(a2 + 24) > 0x77u)
  {
    if (v4 == 120)
    {
      v5 = 774;
    }

    else
    {
      if (v4 != 122)
      {
        goto LABEL_19;
      }

      v5 = 1285;
    }
  }

  else
  {
    if (v4 != 101)
    {
      if (v4 == 102)
      {
        v5 = 2304;
        goto LABEL_23;
      }

LABEL_19:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithRootHeader", 81, 79, 0, "Invalid compression algorithm key in root header: %u");
      return 0xFFFFFFFFLL;
    }

    v5 = 2049;
  }

LABEL_23:
  *(a1 + 24) = v5;
  v6 = *(a2 + 16);
  if ((v6 - 268435457) > 0xF0003FFE)
  {
    *(a1 + 16) = v6;
    v7 = *(a2 + 20);
    if ((v7 - 262145) > 0xFFFC001E)
    {
      v8 = 0;
      *(a1 + 20) = v7;
      *(a1 + 32) = *a2;
      return v8;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithRootHeader", 89, 79, 0, "Invalid segments per cluster count in root header: %u");
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithRootHeader", 85, 79, 0, "Invalid segment size in root header: %u");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000FB054(_DWORD *a1, _DWORD *a2)
{
  *a1 = 826361153;
  v2 = a2[1];
  a1[1] = *a2 & 0xFFFFFF | (a2[2] << 24);
  a1[2] = v2;
  return 0;
}

uint64_t sub_1000FB078(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 <= 1284)
  {
    switch(v4)
    {
      case 0:
        v5 = 45;
        goto LABEL_18;
      case 256:
        v5 = 52;
        goto LABEL_18;
      case 774:
        v5 = 120;
        goto LABEL_18;
    }
  }

  else if (v4 > 2048)
  {
    if (v4 == 2049)
    {
      v5 = 101;
      goto LABEL_18;
    }

    if (v4 == 2304)
    {
      v5 = 102;
      goto LABEL_18;
    }
  }

  else
  {
    if (v4 == 1285)
    {
      v5 = 122;
      goto LABEL_18;
    }

    if (v4 == 1794)
    {
      v5 = 98;
LABEL_18:
      v6 = 0;
      *(a1 + 25) = *(a2 + 12);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v5;
      *a1 = *(a2 + 32);
      return v6;
    }
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaRootHeaderInit", 117, 79, 0, "Invalid compression algorithm in context", v2, v3);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000FB160(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a2[5];
  *a1 = xmmword_10037C1C0;
  v4 = a2[1] + 12;
  v5 = a3[12];
  v6 = v4 + a3[11];
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  v7 = v6 + v5;
  v8 = a3[3];
  v9 = v7 + a3[2];
  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  v10 = v9 + v8;
  v11 = v9 + v8 + 48;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v11 + v8;
  *(a1 + 72) = 0;
  v12 = (a2[12] + 8) * v3;
  *(a1 + 80) = v12;
  *(a1 + 88) = v12 + v8;
  *(a1 + 96) = v12 + v8 + v8 * v3;
  return 0;
}

uint64_t sub_1000FB1CC(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a4;
    v6 = a3;
    if (a2 == 2)
    {
      memset(&v16, 0, sizeof(v16));
      CC_SHA256_Init(&v16);
      CC_SHA256_Update(&v16, v6, v5);
      CC_SHA256_Final((a1 + 4), &v16);
      *a1 = 32;
      v12 = (a1 + 36);
      v13 = 224;
      v14 = 224;
LABEL_14:
      memset_s(v12, v13, 0, v14);
      return 0;
    }

    if (a2 == 1)
    {
      v7 = (0xC6A4A7935BD1E995 * a4) ^ 0xE2236FDC26A5F6D2;
      v8 = a3 + a4;
      if (a4 >= 16)
      {
        do
        {
          v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v6) ^ ((0xC6A4A7935BD1E995 * *v6) >> 47))) ^ v7)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v6[1]) ^ ((0xC6A4A7935BD1E995 * v6[1]) >> 47))));
          v9 = v6 + 2;
          v10 = (v6 + 4);
          v6 += 2;
        }

        while (v10 <= v8);
      }

      else
      {
        v9 = a3;
      }

      if (v9 + 1 <= v8)
      {
        do
        {
          v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v9) ^ ((0xC6A4A7935BD1E995 * *v9) >> 47))) ^ v7);
          v11 = v9 + 2 > v8;
          ++v9;
        }

        while (!v11);
      }

      if ((a4 & 7) != 0)
      {
        *v16.count = 0;
        __memcpy_chk();
        v7 *= 0xC6A4A7935BD1E995;
      }

      *(a1 + 4) = (0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) >> 47);
      *a1 = 8;
      v12 = (a1 + 12);
      v13 = 248;
      v14 = 248;
      goto LABEL_14;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaChecksum", 228, 79, 0, "Invalid checksum mode");
    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    *a1 = 0;
  }

  return result;
}

uint64_t sub_1000FB3BC(uint64_t result)
{
  if (result == 256)
  {
    return 257;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1000FB3CC(unsigned int *a1, int *a2, _DWORD *a3, unsigned int *a4, _DWORD *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, _DWORD *a9, _DWORD *a10, uint64_t (*a11)(uint64_t, void, char *, __int128 *, unsigned int *, void), uint64_t a12)
{
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  v16 = *a2;
  v17 = *a2 & 0xFFFFFF | (a2[2] << 24);
  if (*a2 > 2)
  {
    if ((v16 - 3) >= 2)
    {
      if (v16 != 5)
      {
        goto LABEL_68;
      }

      v118 = 0;
      v117 = 0uLL;
      v116 = 0uLL;
      v115 = 0uLL;
      v114 = 0uLL;
      v113 = 0uLL;
      v112 = 0uLL;
      v111 = 0uLL;
      v110 = 0uLL;
      v109 = 0uLL;
      v108 = 0uLL;
      v107 = 0uLL;
      v106 = 0uLL;
      v105 = 0uLL;
      v104 = 0uLL;
      v103 = 0uLL;
      v102 = 0uLL;
      v101 = 0;
      v100 = 0uLL;
      v99 = 0uLL;
      v98 = 0uLL;
      v97 = 0uLL;
      v96 = 0uLL;
      v95 = 0uLL;
      v94 = 0uLL;
      v93 = 0uLL;
      v92 = 0uLL;
      v91 = 0uLL;
      v90 = 0uLL;
      v89 = 0uLL;
      v88 = 0uLL;
      v87 = 0uLL;
      v86 = 0uLL;
      *__n = 0uLL;
      v84 = 0;
      v83 = 0uLL;
      v82 = 0uLL;
      v81 = 0uLL;
      v79 = 0uLL;
      v80 = 0uLL;
      v77 = 0uLL;
      v78 = 0uLL;
      v75 = 0uLL;
      v76 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      v69 = 0uLL;
      v70 = 0uLL;
      *v68 = 0uLL;
      v67 = 0;
      memset(v66, 0, sizeof(v66));
      v65 = 0;
      memset(v64, 0, sizeof(v64));
      if (*(a1 + 10) && *(a1 + 9))
      {
        if (*a5 >= 0x14u)
        {
          if (*a10 == a1[2])
          {
            WORD2(__n[1]) = 21584;
            *(__n + 4) = *"AEA_SCRYPT";
            LODWORD(__n[0]) = 10;
            memset_s((__n | 0xE), 0xF6uLL, 0, 0xF6uLL);
            result = (*(a1 + 9))(&v102, 2 * a1[2], a10, __n, v68);
            if ((result & 0x80000000) != 0)
            {
              v38 = -4;
            }

            else
            {
              v51 = a1[2];
              if (v51 >= 0x101)
              {
                goto LABEL_139;
              }

              __memcpy_chk();
              LODWORD(v66[0]) = v51;
              result = memset_s(v66 + v51 + 4, 256 - v51, 0, 256 - v51);
              v52 = a1[2];
              if (v52 >= 0x101)
              {
                goto LABEL_139;
              }

              __memcpy_chk();
              LODWORD(v64[0]) = v52;
              memset_s(v64 + v52 + 4, 256 - v52, 0, 256 - v52);
              memset_s(&v102, 0x104uLL, 0, 0x104uLL);
              if (((*(a1 + 10))(&v102, a5 + 1, *a5, a1[14], v66) & 0x80000000) != 0)
              {
                v38 = -5;
              }

              else
              {
                memset(v133, 0, sizeof(v133));
                v132 = 0u;
                v131 = 0u;
                v130 = 0u;
                v129 = 0u;
                v128 = 0u;
                v127 = 0u;
                v126 = 0u;
                v125 = 0u;
                v124 = 0u;
                v123 = 0u;
                v122 = 0u;
                v121 = 0u;
                v120 = 0u;
                *&__s[8] = 0u;
                if (v102 == *a1)
                {
                  if (LODWORD(v64[0]) == a1[2])
                  {
                    if (LODWORD(v68[0]) == a1[5])
                    {
                      if (*a7 == a1[8])
                      {
                        *&__s[7] = 1263354207;
                        *__s = 0x5F41454100000007;
                        result = memset_s(&__s[11], 0xF9uLL, 0, 0xF9uLL);
                        v53 = *__s;
                        if (*__s >= 0xFDu)
                        {
                          goto LABEL_139;
                        }

                        *&__s[*__s + 4] = v17;
                        *__s = v53 + 4;
                        result = memset_s(&__s[v53 + 8], 252 - v53, 0, 252 - v53);
                        v54 = *__s + LODWORD(v68[0]);
                        if (v54 >= 0x101)
                        {
                          goto LABEL_139;
                        }

                        memcpy(&__s[*__s + 4], v68 + 4, LODWORD(v68[0]));
                        *__s = v54;
                        result = memset_s(&__s[v54 + 4], 256 - v54, 0, 256 - v54);
                        v55 = *__s + LODWORD(v68[0]);
                        if (v55 >= 0x101)
                        {
                          goto LABEL_139;
                        }

                        memcpy(&__s[*__s + 4], v68 + 4, LODWORD(v68[0]));
                        *__s = v55;
                        result = memset_s(&__s[v55 + 4], 256 - v55, 0, 256 - v55);
                        v56 = *a7;
                        v57 = *__s + v56;
                        if (v57 >= 0x101)
                        {
                          goto LABEL_139;
                        }

                        memcpy(&__s[*__s + 4], a7 + 1, v56);
                        *__s = v57;
                        memset_s(&__s[v57 + 4], 256 - v57, 0, 256 - v57);
                        v58 = *(a1 + 9);
                        v59 = -1;
                        if (v58 && v102)
                        {
                          v59 = v58(a3, *a1, &v102, __s, v64);
                        }

                        if (*a3 == *a1)
                        {
                          v38 = v59;
                        }

                        else
                        {
                          v38 = -1006;
                        }

                        memset_s(__s, 0x104uLL, 0, 0x104uLL);
                        if (v38)
                        {
                          memset_s(a3, 0x104uLL, 0, 0x104uLL);
                        }
                      }

                      else
                      {
                        v38 = -1005;
                      }
                    }

                    else
                    {
                      v38 = -1003;
                    }
                  }

                  else
                  {
                    v38 = -1002;
                  }
                }

                else
                {
                  v38 = -1001;
                }
              }
            }
          }

          else
          {
            v38 = -3;
          }
        }

        else
        {
          v38 = -2;
        }
      }

      else
      {
        v38 = -1;
      }

      memset_s(&v102, 0x104uLL, 0, 0x104uLL);
      memset_s(__n, 0x104uLL, 0, 0x104uLL);
      memset_s(v66, 0x104uLL, 0, 0x104uLL);
      v49 = v64;
    }

    else
    {
      if (a11 && *a8)
      {
        *&v102 = 0;
        v27 = a6 + 1;
        result = a11(a12, a1[6], v62 + 4, &v102, a6 + 1, *a6);
        if ((result & 0x80000000) != 0)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyExisting", 321, 79, 0, "DH callback", v28, v29);
          goto LABEL_78;
        }

        if (v102 != a1[6])
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyExisting", 322, 79, 0, "DH callback returning invalid shared secret size");
          goto LABEL_78;
        }

        if (v102 >= 0x101)
        {
          goto LABEL_139;
        }

        LODWORD(v62[0]) = v102;
        memset_s(v62 + v102 + 4, 256 - v102, 0, 256 - v102);
        memset(v133, 0, sizeof(v133));
        v132 = 0u;
        v131 = 0u;
        v130 = 0u;
        v129 = 0u;
        v128 = 0u;
        v127 = 0u;
        v126 = 0u;
        v125 = 0u;
        v124 = 0u;
        v123 = 0u;
        v122 = 0u;
        v121 = 0u;
        v120 = 0u;
        *&__s[8] = 0u;
        if (LODWORD(v62[0]) == *a1)
        {
          if (*a10 == a1[2])
          {
            if (*a6 == a1[5])
            {
              if (*a8 != *a6)
              {
                v38 = -1004;
                goto LABEL_75;
              }

              if (*a7 == a1[8])
              {
                *&__s[7] = 1263354207;
                *__s = 0x5F41454100000007;
                result = memset_s(&__s[11], 0xF9uLL, 0, 0xF9uLL);
                v30 = *__s;
                if (*__s < 0xFDu)
                {
                  *&__s[*__s + 4] = v17;
                  *__s = v30 + 4;
                  result = memset_s(&__s[v30 + 8], 252 - v30, 0, 252 - v30);
                  v31 = *a6;
                  v32 = *__s + v31;
                  if (v32 < 0x101)
                  {
                    memcpy(&__s[*__s + 4], v27, v31);
                    *__s = v32;
                    result = memset_s(&__s[v32 + 4], 256 - v32, 0, 256 - v32);
                    v33 = *a8;
                    v34 = *__s + v33;
                    if (v34 < 0x101)
                    {
                      memcpy(&__s[*__s + 4], a8 + 1, v33);
                      *__s = v34;
                      result = memset_s(&__s[v34 + 4], 256 - v34, 0, 256 - v34);
                      v35 = *a7;
                      v36 = *__s + v35;
                      if (v36 < 0x101)
                      {
                        memcpy(&__s[*__s + 4], a7 + 1, v35);
                        *__s = v36;
                        memset_s(&__s[v36 + 4], 256 - v36, 0, 256 - v36);
                        v22 = *(a1 + 9);
                        v37 = -1;
                        if (!v22 || !LODWORD(v62[0]))
                        {
LABEL_118:
                          if (*a3 == *a1)
                          {
                            v38 = v37;
                          }

                          else
                          {
                            v38 = -1006;
                          }

                          memset_s(__s, 0x104uLL, 0, 0x104uLL);
                          if (!v38)
                          {
                            goto LABEL_75;
                          }

                          v49 = a3;
                          goto LABEL_74;
                        }

                        v23 = *a1;
                        v25 = v62;
                        v24 = a3;
LABEL_115:
                        v37 = v22(v24, v23, v25, __s, a10);
                        goto LABEL_118;
                      }
                    }
                  }
                }

                goto LABEL_139;
              }

              goto LABEL_116;
            }

            goto LABEL_36;
          }

          goto LABEL_71;
        }

LABEL_37:
        v38 = -1001;
        goto LABEL_75;
      }

      v118 = 0;
      v117 = 0uLL;
      v116 = 0uLL;
      v115 = 0uLL;
      v114 = 0uLL;
      v113 = 0uLL;
      v112 = 0uLL;
      v111 = 0uLL;
      v110 = 0uLL;
      v109 = 0uLL;
      v108 = 0uLL;
      v107 = 0uLL;
      v106 = 0uLL;
      v105 = 0uLL;
      v104 = 0uLL;
      v103 = 0uLL;
      v102 = 0uLL;
      v101 = 0;
      v100 = 0uLL;
      v99 = 0uLL;
      v98 = 0uLL;
      v97 = 0uLL;
      v96 = 0uLL;
      v95 = 0uLL;
      v94 = 0uLL;
      v93 = 0uLL;
      v92 = 0uLL;
      v91 = 0uLL;
      v90 = 0uLL;
      v89 = 0uLL;
      v88 = 0uLL;
      v87 = 0uLL;
      v86 = 0uLL;
      *__n = 0uLL;
      if (*(a1 + 9) && (v40 = *(a1 + 14)) != 0 && *(a1 + 20))
      {
        if (*a6 == a1[5])
        {
          if (*a9 == a1[4])
          {
            if ((v40(&v102, a6, a9, a4, a5) & 0x80000000) != 0)
            {
              v38 = -4;
            }

            else if (v102 == a1[6])
            {
              if (((*(a1 + 20))(__n, a9) & 0x80000000) != 0)
              {
                v38 = -6;
              }

              else
              {
                memset(v133, 0, sizeof(v133));
                v132 = 0u;
                v131 = 0u;
                v130 = 0u;
                v129 = 0u;
                v128 = 0u;
                v127 = 0u;
                v126 = 0u;
                v125 = 0u;
                v124 = 0u;
                v123 = 0u;
                v122 = 0u;
                v121 = 0u;
                v120 = 0u;
                *&__s[8] = 0u;
                if (v102 == *a1)
                {
                  if (*a10 == a1[2])
                  {
                    if (*a6 == a1[5])
                    {
                      if (LODWORD(__n[0]) == *a6)
                      {
                        if (*a7 == a1[8])
                        {
                          *&__s[7] = 1263354207;
                          *__s = 0x5F41454100000007;
                          result = memset_s(&__s[11], 0xF9uLL, 0, 0xF9uLL);
                          v41 = *__s;
                          if (*__s >= 0xFDu)
                          {
                            goto LABEL_139;
                          }

                          *&__s[*__s + 4] = v17;
                          *__s = v41 + 4;
                          result = memset_s(&__s[v41 + 8], 252 - v41, 0, 252 - v41);
                          v42 = *a6;
                          v43 = *__s + v42;
                          if (v43 >= 0x101)
                          {
                            goto LABEL_139;
                          }

                          memcpy(&__s[*__s + 4], a6 + 1, v42);
                          *__s = v43;
                          result = memset_s(&__s[v43 + 4], 256 - v43, 0, 256 - v43);
                          v44 = *__s + LODWORD(__n[0]);
                          if (v44 >= 0x101)
                          {
                            goto LABEL_139;
                          }

                          memcpy(&__s[*__s + 4], __n + 4, LODWORD(__n[0]));
                          *__s = v44;
                          result = memset_s(&__s[v44 + 4], 256 - v44, 0, 256 - v44);
                          v45 = *a7;
                          v46 = *__s + v45;
                          if (v46 >= 0x101)
                          {
                            goto LABEL_139;
                          }

                          memcpy(&__s[*__s + 4], a7 + 1, v45);
                          *__s = v46;
                          memset_s(&__s[v46 + 4], 256 - v46, 0, 256 - v46);
                          v47 = *(a1 + 9);
                          v48 = -1;
                          if (v47 && v102)
                          {
                            v48 = v47(a3, *a1, &v102, __s, a10);
                          }

                          if (*a3 == *a1)
                          {
                            v38 = v48;
                          }

                          else
                          {
                            v38 = -1006;
                          }

                          memset_s(__s, 0x104uLL, 0, 0x104uLL);
                          if (v38)
                          {
                            memset_s(a3, 0x104uLL, 0, 0x104uLL);
                          }
                        }

                        else
                        {
                          v38 = -1005;
                        }
                      }

                      else
                      {
                        v38 = -1004;
                      }
                    }

                    else
                    {
                      v38 = -1003;
                    }
                  }

                  else
                  {
                    v38 = -1002;
                  }
                }

                else
                {
                  v38 = -1001;
                }
              }
            }

            else
            {
              v38 = -5;
            }
          }

          else
          {
            v38 = -3;
          }
        }

        else
        {
          v38 = -2;
        }
      }

      else
      {
        v38 = -1;
      }

      memset_s(&v102, 0x104uLL, 0, 0x104uLL);
      v49 = __n;
    }

LABEL_74:
    memset_s(v49, 0x104uLL, 0, 0x104uLL);
    goto LABEL_75;
  }

  if ((v16 - 1) < 2)
  {
    memset(v133, 0, sizeof(v133));
    v132 = 0uLL;
    v131 = 0uLL;
    v130 = 0uLL;
    v129 = 0uLL;
    v128 = 0uLL;
    v127 = 0uLL;
    v126 = 0uLL;
    v125 = 0uLL;
    v124 = 0uLL;
    v123 = 0uLL;
    v122 = 0uLL;
    v121 = 0uLL;
    v120 = 0uLL;
    *&__s[8] = 0uLL;
    if (*a4 == *a1)
    {
      if (*a10 == a1[2])
      {
        if (!a1[5])
        {
          if (*a7 == a1[8])
          {
            *&__s[7] = 1263354207;
            *__s = 0x5F41454100000007;
            memset_s(&__s[11], 0xF9uLL, 0, 0xF9uLL);
            *&__s[*__s + 4] = v17;
            *__s = 11;
            memset_s(&__s[15], 0xF5uLL, 0, 0xF5uLL);
            memset_s(&__s[*__s + 4], 256 - *__s, 0, 256 - *__s);
            result = memset_s(&__s[*__s + 4], 256 - *__s, 0, 256 - *__s);
            v20 = *a7;
            v21 = *__s + v20;
            if (v21 < 0x101)
            {
              memcpy(&__s[*__s + 4], a7 + 1, v20);
              *__s = v21;
              memset_s(&__s[v21 + 4], 256 - v21, 0, 256 - v21);
              v22 = *(a1 + 9);
              if (v22 && *a4)
              {
                v23 = *a1;
                v24 = a3;
                v25 = a4;
                goto LABEL_115;
              }

LABEL_117:
              v37 = -1;
              goto LABEL_118;
            }

            goto LABEL_139;
          }

LABEL_116:
          v38 = -1005;
          goto LABEL_75;
        }

        goto LABEL_36;
      }

LABEL_71:
      v38 = -1002;
      goto LABEL_75;
    }

    goto LABEL_37;
  }

  if (v16)
  {
LABEL_68:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyExisting", 351, 79, 0, "Unsupported profile", a7, a8);
    goto LABEL_78;
  }

  memset(v133, 0, sizeof(v133));
  v132 = 0uLL;
  v131 = 0uLL;
  v130 = 0uLL;
  v129 = 0uLL;
  v128 = 0uLL;
  v127 = 0uLL;
  v126 = 0uLL;
  v125 = 0uLL;
  v124 = 0uLL;
  v123 = 0uLL;
  v122 = 0uLL;
  v121 = 0uLL;
  v120 = 0uLL;
  *&__s[8] = 0uLL;
  if (*a6 != *a1)
  {
    goto LABEL_37;
  }

  if (*a10 != a1[2])
  {
    goto LABEL_71;
  }

  if (a1[5])
  {
LABEL_36:
    v38 = -1003;
LABEL_75:
    if ((v38 & 0x80000000) == 0)
    {
      v50 = 0;
LABEL_81:
      memset_s(v62, 0x104uLL, 0, 0x104uLL);
      return v50;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyExisting", 353, 79, 0, "Main key derivation failed (%d)", a7, a8);
LABEL_78:
    if (a3)
    {
      memset_s(a3, 0x104uLL, 0, 0x104uLL);
    }

    v50 = 0xFFFFFFFFLL;
    goto LABEL_81;
  }

  if (*a7 != a1[8])
  {
    goto LABEL_116;
  }

  *&__s[7] = 1263354207;
  *__s = 0x5F41454100000007;
  memset_s(&__s[11], 0xF9uLL, 0, 0xF9uLL);
  *&__s[*__s + 4] = v17;
  *__s = 11;
  memset_s(&__s[15], 0xF5uLL, 0, 0xF5uLL);
  memset_s(&__s[*__s + 4], 256 - *__s, 0, 256 - *__s);
  result = memset_s(&__s[*__s + 4], 256 - *__s, 0, 256 - *__s);
  v60 = *a7;
  v61 = *__s + v60;
  if (v61 < 0x101)
  {
    memcpy(&__s[*__s + 4], a7 + 1, v60);
    *__s = v61;
    memset_s(&__s[v61 + 4], 256 - v61, 0, 256 - v61);
    v22 = *(a1 + 9);
    if (v22 && *a6)
    {
      v23 = *a1;
      v24 = a3;
      v25 = a6;
      goto LABEL_115;
    }

    goto LABEL_117;
  }

LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_1000FC3DC(unsigned int *a1, int *a2, _DWORD *a3, unsigned int *a4, char *__s, unsigned int *a6, _DWORD *a7, unsigned int *a8, unsigned int *a9)
{
  v16 = *a2;
  v17 = a2[2];
  v18 = a1[2];
  if (__s)
  {
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
  }

  if (v18 > 0x100 || (v19 = *(a1 + 8)) == 0 || (v19(__s + 4, v18) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyNew", 380, 79, 0, "generating random salt");
    return 0xFFFFFFFFLL;
  }

  v60 = a3;
  v20 = v16 & 0xFFFFFF | (v17 << 24);
  *__s = v18;
  v21 = *a2;
  if (*a2 > 2)
  {
    if ((v21 - 3) >= 2)
    {
      if (v21 != 5)
      {
        goto LABEL_53;
      }

      v101 = 0;
      v100 = 0u;
      v99 = 0u;
      v98 = 0u;
      v97 = 0u;
      v96 = 0u;
      v95 = 0u;
      v94 = 0u;
      v93 = 0u;
      v92 = 0u;
      v91 = 0u;
      v90 = 0u;
      v89 = 0u;
      v88 = 0u;
      v87 = 0u;
      v86 = 0u;
      __sa = 0u;
      v84 = 0;
      memset(v83, 0, sizeof(v83));
      v82 = 0;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      *__n = 0u;
      v67 = 0u;
      v65 = 0;
      memset(v64, 0, sizeof(v64));
      v63 = 0;
      memset(v62, 0, sizeof(v62));
      if (*(a1 + 10) && *(a1 + 9))
      {
        if (*a7 >= 0x14u)
        {
          if (v18 == a1[2])
          {
            WORD6(v83[0]) = 21584;
            *(v83 + 4) = *"AEA_SCRYPT";
            LODWORD(v83[0]) = 10;
            memset_s((v83 | 0xE), 0xF6uLL, 0, 0xF6uLL);
            result = (*(a1 + 9))(&__sa, 2 * a1[2], __s, v83, __n);
            if ((result & 0x80000000) != 0)
            {
              v22 = -4;
            }

            else
            {
              v44 = a1[2];
              if (v44 >= 0x101)
              {
                goto LABEL_118;
              }

              __memcpy_chk();
              LODWORD(v64[0]) = v44;
              result = memset_s(v64 + v44 + 4, 256 - v44, 0, 256 - v44);
              v45 = a1[2];
              if (v45 >= 0x101)
              {
                goto LABEL_118;
              }

              __memcpy_chk();
              LODWORD(v62[0]) = v45;
              memset_s(v62 + v45 + 4, 256 - v45, 0, 256 - v45);
              memset_s(&__sa, 0x104uLL, 0, 0x104uLL);
              if (((*(a1 + 10))(&__sa, a7 + 1, *a7, a1[14], v64) & 0x80000000) != 0)
              {
                v22 = -5;
              }

              else
              {
                memset(v116, 0, sizeof(v116));
                v115 = 0u;
                v114 = 0u;
                v113 = 0u;
                v112 = 0u;
                v111 = 0u;
                v110 = 0u;
                v109 = 0u;
                v108 = 0u;
                v107 = 0u;
                v106 = 0u;
                v105 = 0u;
                v104 = 0u;
                v103 = 0u;
                *&v102[8] = 0u;
                if (__sa == *a1)
                {
                  if (LODWORD(v62[0]) == a1[2])
                  {
                    if (LODWORD(__n[0]) == a1[5])
                    {
                      if (*a8 == a1[8])
                      {
                        *&v102[7] = 1263354207;
                        *v102 = 0x5F41454100000007;
                        result = memset_s(&v102[11], 0xF9uLL, 0, 0xF9uLL);
                        v46 = *v102;
                        if (*v102 >= 0xFDu)
                        {
                          goto LABEL_118;
                        }

                        *&v102[*v102 + 4] = v20;
                        *v102 = v46 + 4;
                        result = memset_s(&v102[v46 + 8], 252 - v46, 0, 252 - v46);
                        v47 = *v102 + LODWORD(__n[0]);
                        if (v47 >= 0x101)
                        {
                          goto LABEL_118;
                        }

                        memcpy(&v102[*v102 + 4], __n + 4, LODWORD(__n[0]));
                        *v102 = v47;
                        result = memset_s(&v102[v47 + 4], 256 - v47, 0, 256 - v47);
                        v48 = *v102 + LODWORD(__n[0]);
                        if (v48 >= 0x101)
                        {
                          goto LABEL_118;
                        }

                        memcpy(&v102[*v102 + 4], __n + 4, LODWORD(__n[0]));
                        *v102 = v48;
                        result = memset_s(&v102[v48 + 4], 256 - v48, 0, 256 - v48);
                        v49 = *a8;
                        v50 = *v102 + v49;
                        if (v50 >= 0x101)
                        {
                          goto LABEL_118;
                        }

                        memcpy(&v102[*v102 + 4], a8 + 1, v49);
                        *v102 = v50;
                        memset_s(&v102[v50 + 4], 256 - v50, 0, 256 - v50);
                        v51 = *(a1 + 9);
                        v52 = -1;
                        if (v51 && __sa)
                        {
                          v52 = v51(a3, *a1, &__sa, v102, v62);
                        }

                        if (*a3 == *a1)
                        {
                          v22 = v52;
                        }

                        else
                        {
                          v22 = -1006;
                        }

                        memset_s(v102, 0x104uLL, 0, 0x104uLL);
                        if (v22)
                        {
                          memset_s(v60, 0x104uLL, 0, 0x104uLL);
                        }
                      }

                      else
                      {
                        v22 = -1005;
                      }
                    }

                    else
                    {
                      v22 = -1003;
                    }
                  }

                  else
                  {
                    v22 = -1002;
                  }
                }

                else
                {
                  v22 = -1001;
                }
              }
            }
          }

          else
          {
            v22 = -3;
          }
        }

        else
        {
          v22 = -2;
        }
      }

      else
      {
        v22 = -1;
      }

      memset_s(&__sa, 0x104uLL, 0, 0x104uLL);
      memset_s(v83, 0x104uLL, 0, 0x104uLL);
      memset_s(v64, 0x104uLL, 0, 0x104uLL);
      p_sa = v62;
    }

    else
    {
      v101 = 0;
      v100 = 0u;
      v99 = 0u;
      v98 = 0u;
      v97 = 0u;
      v96 = 0u;
      v95 = 0u;
      v94 = 0u;
      v93 = 0u;
      v92 = 0u;
      v91 = 0u;
      v90 = 0u;
      v89 = 0u;
      v88 = 0u;
      v87 = 0u;
      v86 = 0u;
      __sa = 0u;
      if (*(a1 + 9) && (v24 = *(a1 + 13)) != 0)
      {
        if (*a9 == a1[5])
        {
          if ((v24(&__sa, a4, a9) & 0x80000000) != 0)
          {
            v22 = -3;
          }

          else
          {
            v25 = *a4;
            if (*a4 == a1[5])
            {
              if (__sa == a1[6])
              {
                memset(v116, 0, sizeof(v116));
                v115 = 0u;
                v114 = 0u;
                v113 = 0u;
                v112 = 0u;
                v111 = 0u;
                v110 = 0u;
                v109 = 0u;
                v108 = 0u;
                v107 = 0u;
                v106 = 0u;
                v105 = 0u;
                v104 = 0u;
                v103 = 0u;
                *&v102[8] = 0u;
                if (__sa == *a1)
                {
                  if (*__s == a1[2])
                  {
                    if (*a9 == v25)
                    {
                      if (*a8 == a1[8])
                      {
                        *&v102[7] = 1263354207;
                        *v102 = 0x5F41454100000007;
                        result = memset_s(&v102[11], 0xF9uLL, 0, 0xF9uLL);
                        v26 = *v102;
                        if (*v102 >= 0xFDu)
                        {
                          goto LABEL_118;
                        }

                        *&v102[*v102 + 4] = v20;
                        *v102 = v26 + 4;
                        result = memset_s(&v102[v26 + 8], 252 - v26, 0, 252 - v26);
                        v27 = *a4;
                        v28 = *v102 + v27;
                        if (v28 >= 0x101)
                        {
                          goto LABEL_118;
                        }

                        memcpy(&v102[*v102 + 4], a4 + 1, v27);
                        *v102 = v28;
                        result = memset_s(&v102[v28 + 4], 256 - v28, 0, 256 - v28);
                        v29 = *a9;
                        v30 = *v102 + v29;
                        if (v30 >= 0x101)
                        {
                          goto LABEL_118;
                        }

                        memcpy(&v102[*v102 + 4], a9 + 1, v29);
                        *v102 = v30;
                        result = memset_s(&v102[v30 + 4], 256 - v30, 0, 256 - v30);
                        v31 = *a8;
                        v32 = *v102 + v31;
                        if (v32 >= 0x101)
                        {
                          goto LABEL_118;
                        }

                        memcpy(&v102[*v102 + 4], a8 + 1, v31);
                        *v102 = v32;
                        memset_s(&v102[v32 + 4], 256 - v32, 0, 256 - v32);
                        v33 = *(a1 + 9);
                        v34 = -1;
                        if (v33 && __sa)
                        {
                          v34 = v33(a3, *a1, &__sa, v102, __s);
                        }

                        v58 = *a1;
                        v59 = a3;
                        if (*a3 == v58)
                        {
                          v22 = v34;
                        }

                        else
                        {
                          v22 = -1006;
                        }

                        memset_s(v102, 0x104uLL, 0, 0x104uLL);
                        if (v22)
                        {
                          memset_s(v59, 0x104uLL, 0, 0x104uLL);
                        }
                      }

                      else
                      {
                        v22 = -1005;
                      }
                    }

                    else
                    {
                      v22 = -1004;
                    }
                  }

                  else
                  {
                    v22 = -1002;
                  }
                }

                else
                {
                  v22 = -1001;
                }
              }

              else
              {
                v22 = -5;
              }
            }

            else
            {
              v22 = -4;
            }
          }
        }

        else
        {
          v22 = -2;
        }
      }

      else
      {
        v22 = -1;
      }

      p_sa = &__sa;
    }

LABEL_109:
    memset_s(p_sa, 0x104uLL, 0, 0x104uLL);
    goto LABEL_110;
  }

  if ((v21 - 1) < 2)
  {
    memset(v116, 0, sizeof(v116));
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    *&v102[8] = 0u;
    if (*a6 == *a1)
    {
      if (v18 == a1[2])
      {
        if (a1[5])
        {
LABEL_11:
          v22 = -1003;
LABEL_110:
          if ((v22 & 0x80000000) == 0)
          {
            return 0;
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyNew", 437, 79, 0, "Main key derivation failed (%d)");
          return 0xFFFFFFFFLL;
        }

        if (*a8 == a1[8])
        {
          qmemcpy(&v102[4], "AEA_AMK", 7);
          memset_s(&v102[11], 0xF9uLL, 0, 0xF9uLL);
          *&v102[11] = v20;
          *v102 = 11;
          memset_s(&v102[15], 0xF5uLL, 0, 0xF5uLL);
          memset_s(&v102[15], 0xF5uLL, 0, 0xF5uLL);
          result = memset_s(&v102[15], 0xF5uLL, 0, 0xF5uLL);
          v53 = *a8;
          v54 = v53 + 11;
          if (v53 + 11 < 0x101)
          {
            memcpy(&v102[*v102 + 4], a8 + 1, v53);
            *v102 = v54;
            memset_s(&v102[v54 + 4], 256 - v54, 0, 256 - v54);
            v39 = *(a1 + 9);
            if (v39)
            {
              if (*a6)
              {
                v40 = *a1;
                v41 = a3;
                v42 = a6;
                goto LABEL_80;
              }

              goto LABEL_89;
            }

            goto LABEL_86;
          }

          goto LABEL_118;
        }

LABEL_83:
        v22 = -1005;
        goto LABEL_110;
      }

LABEL_57:
      v22 = -1002;
      goto LABEL_110;
    }

LABEL_52:
    v22 = -1001;
    goto LABEL_110;
  }

  if (v21)
  {
LABEL_53:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyNew", 435, 79, 0, "Unsupported profile");
    return 0xFFFFFFFFLL;
  }

  v35 = a1[12];
  if (a4)
  {
    memset_s(a4, 0x104uLL, 0, 0x104uLL);
  }

  if (v35 > 0x100 || (v36 = *(a1 + 8)) == 0 || (v36(a4 + 1, v35) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyNew", 390, 79, 0, "generating random encryption key");
    return 0xFFFFFFFFLL;
  }

  *a4 = v35;
  memset(v116, 0, sizeof(v116));
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  *&v102[8] = 0u;
  if (v35 != *a1)
  {
    goto LABEL_52;
  }

  if (*__s != a1[2])
  {
    goto LABEL_57;
  }

  if (a1[5])
  {
    goto LABEL_11;
  }

  if (*a8 != a1[8])
  {
    goto LABEL_83;
  }

  qmemcpy(&v102[4], "AEA_AMK", 7);
  memset_s(&v102[11], 0xF9uLL, 0, 0xF9uLL);
  *&v102[11] = v20;
  *v102 = 11;
  memset_s(&v102[15], 0xF5uLL, 0, 0xF5uLL);
  memset_s(&v102[15], 0xF5uLL, 0, 0xF5uLL);
  result = memset_s(&v102[15], 0xF5uLL, 0, 0xF5uLL);
  v37 = *a8;
  v38 = v37 + 11;
  if (v37 + 11 < 0x101)
  {
    memcpy(&v102[*v102 + 4], a8 + 1, v37);
    *v102 = v38;
    memset_s(&v102[v38 + 4], 256 - v38, 0, 256 - v38);
    v39 = *(a1 + 9);
    if (v39)
    {
      if (*a4)
      {
        v40 = *a1;
        v41 = a3;
        v42 = a4;
LABEL_80:
        v55 = v39(v41, v40, v42, v102, __s);
LABEL_90:
        v56 = *a1;
        v57 = a3;
        if (*a3 == v56)
        {
          v22 = v55;
        }

        else
        {
          v22 = -1006;
        }

        memset_s(v102, 0x104uLL, 0, 0x104uLL);
        if (!v22)
        {
          goto LABEL_110;
        }

        p_sa = v57;
        goto LABEL_109;
      }

LABEL_89:
      v55 = -1;
      goto LABEL_90;
    }

LABEL_86:
    v55 = -1;
    goto LABEL_90;
  }

LABEL_118:
  __break(1u);
  return result;
}

int AEAStreamSign(AAByteStream encrypted_stream, AEAContext context)
{
  v58 = 0;
  memset(__s, 0, sizeof(__s));
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  *v40 = 0u;
  v41 = 0u;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  if (*context <= 5u && ((1 << *context) & 0x2A) != 0)
  {
    v4 = 0;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v25 = 0uLL;
    v24 = 0;
    v22 = 0uLL;
    v23 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
LABEL_15:
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
    memset_s(v40, 0x104uLL, 0, 0x104uLL);
    memset_s(v38, 0x104uLL, 0, 0x104uLL);
    memset_s(&v18, 0x68uLL, 0, 0x68uLL);
    memset_s(&v25, 0xD0uLL, 0, 0xD0uLL);
    return v4;
  }

  v5 = *(context + 340);
  v6 = *(context + 341);
  v36 = 0uLL;
  v37 = 0uLL;
  v34 = 0uLL;
  v35 = 0uLL;
  v32 = 0uLL;
  v33 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  v25 = 0uLL;
  v24 = 0;
  v22 = 0uLL;
  v23 = 0uLL;
  v20 = 0uLL;
  v21 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  if ((sub_1000DB560(&v25, context) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "AEAStreamSign", 467, 79, 0, "initializing crypto params", v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_14;
  }

  v7 = *(context + 5);
  v18 = xmmword_10037C1C0;
  *&v19 = *(context + 1) + 12;
  *(&v19 + 1) = v19 + HIDWORD(v27);
  *&v20 = *(&v19 + 1) + v28;
  *(&v20 + 1) = v20 + DWORD2(v25);
  *&v21 = *(&v20 + 1) + HIDWORD(v25);
  *(&v21 + 1) = v21 + 48;
  v22 = v21 + 48 + HIDWORD(v25);
  v8 = (*(context + 12) + 8) * v7 + HIDWORD(v25);
  *&v23 = (*(context + 12) + 8) * v7;
  *(&v23 + 1) = v8;
  v24 = v8 + HIDWORD(v25) * v7;
  memset_s(&v5[v19], HIDWORD(v27), 0, HIDWORD(v27));
  if (!*(&v32 + 1) || (v9 = (*(&v32 + 1))(v38, v5, v6), LODWORD(v38[0]) != DWORD1(v27)) || v9 < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "AEAStreamSign", 474, 79, 0, "digesting prologue", v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_14;
  }

  v10 = *(context + 302);
  if (v10)
  {
    *&v80[0] = 0;
    result = v10(*(context + 303), 256, __s + 4, v80, v38 + 4);
    if (result < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "AEAStreamSign", 484, 79, 0, "signing prologue digest", v18, v19, v20, v21, v22, v23, v24);
      goto LABEL_14;
    }

    if (*&v80[0] > DWORD2(v27))
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "AEAStreamSign", 485, 79, 0, "invalid signature size", v18, v19, v20, v21, v22, v23, v24);
LABEL_14:
      v4 = -1;
      goto LABEL_15;
    }

    if (DWORD2(v27) >= 0x101)
    {
      goto LABEL_46;
    }

    LODWORD(__s[0]) = DWORD2(v27);
    result = memset_s(__s + DWORD2(v27) + 4, 256 - DWORD2(v27), 0, 256 - DWORD2(v27));
  }

  else if (!v33 || (result = (v33)(__s, context + 592, v38), LODWORD(__s[0]) != DWORD2(v27)) || result < 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "AEAStreamSign", 490, 79, 0, "signing prologue", v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_14;
  }

  if (*context)
  {
    if (!v34)
    {
      goto LABEL_36;
    }

    v79 = 0;
    memset(v78, 0, sizeof(v78));
    v77 = 0;
    memset(v76, 0, sizeof(v76));
    v75 = 0;
    v74 = 0u;
    v73 = 0u;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    *__n = 0u;
    if (LODWORD(__s[0]) != DWORD2(v27))
    {
      goto LABEL_35;
    }

    if (*(context + 408) != v25)
    {
      goto LABEL_35;
    }

    *(v76 + 4) = 0x324B45535F414541;
    LODWORD(v76[0]) = 8;
    memset_s((v76 | 0xC), 0xF8uLL, 0, 0xF8uLL);
    v81 = 0;
    memset(v80, 0, sizeof(v80));
    if (!*(&v29 + 1))
    {
      goto LABEL_35;
    }

    if (!*(context + 408))
    {
      goto LABEL_35;
    }

    result = (*(&v29 + 1))(v78, DWORD1(v25), context + 1632, v76, v80);
    if (result < 0)
    {
      goto LABEL_35;
    }

    v12 = LODWORD(__s[0]);
    if (LODWORD(__s[0]) >= 0x101)
    {
      goto LABEL_46;
    }

    __memcpy_chk();
    LODWORD(v40[0]) = v12;
    memset_s(v40 + v12 + 4, 256 - v12, 0, 256 - v12);
    result = (v34)(v40 + 4, LODWORD(__s[0]), __n, v78, 0, 0);
    if (result < 0)
    {
LABEL_35:
      memset_s(v78, 0x104uLL, 0, 0x104uLL);
      memset_s(__n, 0x104uLL, 0, 0x104uLL);
      memset_s(v76, 0x104uLL, 0, 0x104uLL);
      goto LABEL_36;
    }

    v13 = LODWORD(v40[0]) + LODWORD(__n[0]);
    if (v13 < 0x101)
    {
      memcpy(v40 + LODWORD(v40[0]) + 4, __n + 4, LODWORD(__n[0]));
      LODWORD(v40[0]) = v13;
      memset_s(v40 + v13 + 4, 256 - v13, 0, 256 - v13);
      v14 = v40[0];
      v15 = HIDWORD(v27);
      memset_s(v78, 0x104uLL, 0, 0x104uLL);
      memset_s(__n, 0x104uLL, 0, 0x104uLL);
      memset_s(v76, 0x104uLL, 0, 0x104uLL);
      if (v14 == v15)
      {
LABEL_39:
        memcpy(&v5[v19], v40 + 4, LODWORD(v40[0]));
        if (AAByteStreamPWrite(encrypted_stream, v5, v6, 0) == v6)
        {
          if (*(&v37 + 1))
          {
            v17 = (*(&v37 + 1))(context + 1892, v5, v6);
            if (*(context + 473) == DWORD1(v28) && (v17 & 0x80000000) == 0)
            {
              v4 = 0;
              goto LABEL_15;
            }
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "AEAStreamSign", 505, 79, 0, "digesting prologue", v18, v19, v20, v21, v22, v23, v24);
        }

        else
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "AEAStreamSign", 502, 79, 0, "writing updated prologue", v18, v19, v20, v21, v22, v23, v24);
        }

        goto LABEL_14;
      }

LABEL_36:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "AEAStreamSign", 497, 79, 0, "encrypt signature", v18, v19, v20, v21, v22, v23, v24);
      goto LABEL_14;
    }
  }

  else
  {
    v16 = LODWORD(__s[0]);
    if (LODWORD(__s[0]) < 0x101)
    {
      __memcpy_chk();
      LODWORD(v40[0]) = v16;
      memset_s(v40 + v16 + 4, 256 - v16, 0, 256 - v16);
      goto LABEL_39;
    }
  }

LABEL_46:
  __break(1u);
  return result;
}

void *sub_1000FD964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc(0x80uLL);
  v7 = v6;
  if (v6)
  {
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 2) = 0u;
    *(v6 + 3) = 0u;
    *v6 = 0u;
    *(v6 + 1) = 0u;
    j__CC_SHA1_Init(v6);
    v7[13] = a1;
    v7[14] = a2;
    v7[15] = a3;
  }

  else
  {
    v8 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OSHA1StreamCreate", 76, 29, *v8, "malloc");
  }

  return v7;
}