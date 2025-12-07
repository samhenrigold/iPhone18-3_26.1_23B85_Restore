uint64_t sub_10004BB6C(uint64_t *a1, uint64_t a2, uint64_t a3, BOOL *a4, void *a5, void *a6, void *a7, unsigned int a8)
{
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v13 = sub_10004BC48(a1, a2, a3, &v18);
  if (!v13)
  {
    v14 = v18;
    v15 = *(v18 + 9) & 1;
    *a4 = !(*(v18 + 36) & 1);
    if (a5)
    {
      *a5 = v14[2];
    }

    if (a6)
    {
      *a6 = v14[6];
    }

    v13 = 0;
    if (a7 && !v15)
    {
      v16 = sub_10004BCD8(*(v14 + 10));
      if (v16 <= a8)
      {
        memcpy(a7, v14 + *(v14 + 11), v16);
        v13 = 0;
      }

      else
      {
        v13 = 34;
      }
    }

    free(v14);
  }

  return v13;
}

uint64_t sub_10004BC48(uint64_t *a1, uint64_t a2, uint64_t a3, int **a4)
{
  v5 = *(a2 + 48);
  if (!v5)
  {
    v5 = *(a2 + 40);
  }

  v6 = sub_100025548(a1, a2, 0, *(v5 + 1024), a3, 0, 30, 0, a4, 0, 0);
  if (v6)
  {
    sub_10004565C("integrity_meta: failed to copy object (0x%llx:0x%llx)\n", *(v5 + 1024), a3);
    sub_100049C40(0x376, v6);
  }

  return v6;
}

uint64_t sub_10004BCD8(char a1)
{
  if ((a1 - 1) > 7u)
  {
    return 0;
  }

  else
  {
    return dword_100077124[(a1 - 1)];
  }
}

uint64_t sub_10004BD04(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v5 = *(a1[1] + 36);
  v6 = sub_10004BC48(a1, a2, a3, &v21);
  if (v6)
  {
    return v6;
  }

  v7 = v21;
  v8 = *(v21 + 1);
  v9 = *(v21 + 8);
  if (v9)
  {
    v10 = *(v21 + 9);
    if (v10 >= 4)
    {
      sub_100045744("integrity_meta: (0x%llx:0x%llx): unknown flags (0x%x)\n", v8, a3, v10);
      sub_100049C40(0x378, -3);
      v7 = v21;
    }

    v11 = v7[10];
    if ((v11 & 0xFFFFFF00) > 0xF00 || (v7[10] & 0xFD) == 0 || v7[10] >= 9u)
    {
      sub_10004565C("integrity_meta: (0x%llx:0x%llx): unknown hash type (%u)\n", v8, a3, v11);
      v6 = 92;
      v14 = 889;
    }

    else
    {
      v15 = sub_10004BCD8(v11);
      v16 = v15;
      v17 = v7[11];
      if (v17 + v15 > v5)
      {
        goto LABEL_22;
      }

      if (v9 > 2)
      {
        v18 = 48;
      }

      else
      {
        v18 = 128;
        if (v7[8] == 1)
        {
          v18 = 48;
        }
      }

      if (v18 <= v17)
      {
        if (!sub_1000082B8(v7 + v17, 0, (8 * v15), v17))
        {
          if (*(v21 + 8) < 2u || (v20 = *(v21 + 6), (v20 != 0) == (*(v21 + 9) & 1)))
          {
            v6 = 0;
            *(a2 + 16) = *(v21 + 10);
            *(a2 + 20) = v16;
          }

          else
          {
            sub_10004565C("integrity_meta: (0x%llx:0x%llx): unexpected flags (0x%x) for xid (%llu)\n", v8, a3, *(v21 + 9), v20);
            sub_100049C40(0x3B3, 92);
            v6 = 0;
          }

          goto LABEL_24;
        }

        sub_10004565C("integrity_meta: (0x%llx:0x%llx): invalid root hash\n", v8, a3);
        v6 = 92;
        v14 = 891;
      }

      else
      {
LABEL_22:
        sub_10004565C("integrity_meta: (0x%llx:0x%llx): invalid root hash offset (%u+%u) > %u\n", v8, a3, v17, v15, v5);
        v6 = 92;
        v14 = 890;
      }
    }
  }

  else
  {
    sub_10004565C("integrity_meta: (0x%llx:0x%llx): invalid version\n", *(v21 + 1), a3);
    v6 = 92;
    v14 = 887;
  }

  sub_100049C40(v14, 92);
LABEL_24:
  if (v21)
  {
    free(v21);
  }

  return v6;
}

uint64_t sub_10004BF14(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  if (*(a1 + 72) != 1)
  {
    return 0;
  }

  if ((*(a2 + 32) & 8) != 0)
  {
    v10 = sub_100000860(*(a1 + 40));
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __s2[2] = v11;
    __s2[3] = v11;
    __s2[0] = v11;
    __s2[1] = v11;
    sub_100000934(v10, v12, a4, a2, __s2);
    if (memcmp(a3 + 1, __s2, *(a1 + 44)))
    {
      sub_10004565C("hash validation: invalid node hash for node %llu (root oid: %llu, seal xid: %lld, broken xid: %lld)\n", *a3, *(a1 + 64), *(a1 + 48), *(a1 + 56));
      v7 = 92;
      v8 = 928;
      goto LABEL_6;
    }

    return 0;
  }

  sub_10004565C("hash validation: invalid node %llu (root %llu)\n", *a3, *(a1 + 64));
  v7 = 92;
  v8 = 927;
LABEL_6:
  sub_100049C40(v8, 92);
  return v7;
}

uint64_t sub_10004C028(uint64_t a1)
{
  v298 = -1431655766;
  v297 = -1431655766;
  v2 = sub_10001D820();
  *v295 = 0u;
  v296 = 0u;
  *v294 = 0u;
  v293 = 0;
  v292 = 0;
  v3 = malloc_type_calloc(1uLL, 0x58uLL, 0x1030040202D4F4CuLL);
  qword_10009BA60 = v3;
  if (!v3)
  {
    sub_10004565C("failed to allocate memory for fsck_state\n");
LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v4 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  *(v3 + 10) = *(a1 + 80);
  v3[3] = v6;
  v3[4] = v7;
  v3[2] = v5;
  v8 = *(qword_10009BA60 + 24);
  if (v8 == -1 && (*(qword_10009BA60 + 46) & 1) == 0)
  {
    v9 = *(qword_10009BA60 + 47) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  if ((*(qword_10009BA60 + 40) & 1) == 0 && *(qword_10009BA60 + 42) == 1)
  {
    sub_100045F58();
  }

  v10 = sub_100047360();
  if (!v10)
  {
    sub_10004565C("Could not initialize message output\n");
    v12 = 151;
    goto LABEL_13;
  }

  v11 = v10;
  sub_100047570(v10, *(qword_10009BA60 + 32));
  sub_100047554(v11, *(qword_10009BA60 + 36));
  if (sub_1000473DC(v11, &unk_10007C708))
  {
    sub_10004565C("Could not initialize APFS-specific messages\n");
    v12 = 152;
LABEL_13:
    sub_100049C40(v12, 12);
    goto LABEL_14;
  }

  sub_10004751C(v11, sub_1000453E8);
  sub_100047538(v11, sub_10004530C);
  qword_10009BA58 = v11;
  if (v8 == -1)
  {
    sub_10000D060(0, 0, 0);
  }

  else
  {
    sub_10000D154(0, 0);
  }

  sub_100049BE4(*(qword_10009BA60 + 8));
  sub_100049BD8(2);
  v291 = 0;
  v16 = sub_1000464C8(v2, v294, &v291);
  if (v16)
  {
LABEL_30:
    v14 = v16;
    v13 = 0;
    goto LABEL_16;
  }

  while (1)
  {
    if (v291)
    {
      v13 = 0;
      v34 = qword_10009BA60;
      if (*(qword_10009BA60 + 40))
      {
        goto LABEL_73;
      }

      v14 = 0;
      v35 = 0;
      v36 = 106;
      goto LABEL_65;
    }

    v16 = sub_1000469C4(v2, v296);
    if (v16)
    {
      goto LABEL_30;
    }

    v290 = 0;
    v16 = sub_100046A58(v2, v296, &v290);
    if (v16)
    {
      goto LABEL_30;
    }

    if (BYTE8(v296) == 1)
    {
      v16 = sub_100046D6C(v2, v294, *(qword_10009BA60 + 49));
      if (v16)
      {
        goto LABEL_30;
      }
    }

    sub_100049BD8(3);
    v13 = sub_100031E70(*v2, &v292);
    if (!v13)
    {
      goto LABEL_56;
    }

    sub_100047FFC(v11, 201, v23, v24, v25, v26, v27, v28);
    if ((v292 & 1) == 0)
    {
      if (sub_100032164(*v2, v13, 0))
      {
        goto LABEL_56;
      }
    }

    nullsub_3();
    sub_100049BD8(4);
    if (sub_100032CE0(*v2, v13, v2 + 1, v2 + 5))
    {
      v37 = v11;
      v38 = 304;
      goto LABEL_57;
    }

    sub_100047FFC(v11, 222, v23, v24, v25, v26, v27, v28, *(*(v2 + 1) + 16));
    sub_100049BD8(5);
    if (v292 == 1)
    {
      if (sub_10004758C(qword_10009BA58, "Fix corrupt container superblock? ") != 1)
      {
        goto LABEL_56;
      }

      v29 = *(v2 + 1);
      v30 = v29[9];
      memcpy(v13, v29, 0x588uLL);
      *__str = 0;
      *&__str[8] = v30;
      *&__str[12] = 0;
      *&__str[16] = 0;
      if (sub_100026A10(v2, 0, v13, __str, v31, v32))
      {
        goto LABEL_56;
      }

      sub_100049BF0();
    }

    if (*(qword_10009BA60 + 40) == 1)
    {
      if (*(*(v2 + 1) + 1264))
      {
LABEL_56:
        v37 = v11;
        v38 = 301;
LABEL_57:
        sub_100047FFC(v37, v38, v23, v24, v25, v26, v27, v28);
        v35 = 0;
        v14 = 8;
      }

      else
      {
        v14 = sub_10004DB58(v11, v2);
        v35 = 0;
      }

LABEL_58:
      v36 = 106;
LABEL_59:
      v34 = qword_10009BA60;
      if (*(qword_10009BA60 + 40))
      {
        if (v14)
        {
          if (v14 == 8)
          {
            v14 = 3;
          }

          else
          {
            v14 = v14;
          }

          v39 = v11;
          v40 = 126;
          goto LABEL_78;
        }

LABEL_73:
        sub_100047FFC(v11, 125, v17, v18, v19, v20, v21, v22);
        v14 = 0;
LABEL_79:
        v44 = sub_100049C28();
        v45 = sub_100049C34();
        if (!v14)
        {
          if (*(qword_10009BA60 + 50) == 1 && v44 | v45)
          {
            if (*(qword_10009BA60 + 40))
            {
              v14 = 3;
            }

            else
            {
              v14 = 8;
            }

            sub_100045428("%d failures and %d warnings issued; failing execution as requested.\n", v45, v44);
          }

          else
          {
            v14 = 0;
          }
        }

        goto LABEL_16;
      }

LABEL_65:
      if (v8 == -1)
      {
        if (v14)
        {
          v40 = 127;
        }

        else
        {
          v40 = 128;
        }

        v270 = *v34;
        v39 = v11;
LABEL_78:
        sub_100047FFC(v39, v40, v17, v18, v19, v20, v21, v22, v270);
      }

      else
      {
        if (v35)
        {
          v41 = 105;
        }

        else
        {
          v41 = 104;
        }

        if (v14)
        {
          v42 = v36;
        }

        else
        {
          v42 = v41;
        }

        v43 = sub_10001D82C(v2, *(v34 + 24));
        sub_10004F00C(v11, v42, v43);
      }

      goto LABEL_79;
    }

    if (v292 != 1 || !sub_1000460CC(*(qword_10009BA60 + 8)))
    {
      break;
    }

    v292 = 0;
    nullsub_3();
    sub_10001D95C();
    free(v13);
    sub_10002C8A8(v2);
    *v295 = 0u;
    v296 = 0u;
    *v294 = 0u;
    sub_100046094(*(qword_10009BA60 + 8));
    sub_100049BE4(*(qword_10009BA60 + 8));
    sub_100049BD8(2);
    v291 = 0;
    v14 = sub_1000464C8(v2, v294, &v291);
    v13 = 0;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  sub_100040DF8(v2);
  v33 = *(*(v2 + 1) + 1384);
  if (v33 > 0x959D39220F1C2)
  {
    memset(__str, 170, 25);
    v46 = sub_10001D6AC(v33, __str, 25);
    if (!v46)
    {
      v46 = __str;
      snprintf(__str, 0x19uLL, "%llu", *(*(v2 + 1) + 1384));
    }

    sub_100045744("container has been mounted by APFS version %s, which is newer than %s\n", v46, "2632.40.15.0.2");
    if (*(qword_10009BA60 + 45))
    {
      sub_100045744("enabling overallocation repairs because -o was passed; this may cause data loss\n");
    }

    else
    {
      sub_100045744("disabling overallocation repairs by default; use -o to override\n");
    }
  }

  else
  {
    *(qword_10009BA60 + 45) = 1;
  }

  v47 = sub_1000279BC((v2 + 392), 0);
  if (v47)
  {
LABEL_93:
    v48 = v47;
LABEL_94:
    sub_10004565C("failed to initialize tree for container repairs\n");
    v49 = 926;
    v50 = v48;
    goto LABEL_95;
  }

  v14 = 0;
  v271 = 0;
  while (1)
  {
    sub_100049BD8(6);
    if (*(v13 + 159))
    {
      if (sub_100046E74(v2))
      {
        sub_100045744("found unexpected EFI jumpstart record\n");
      }

      else
      {
        sub_100047FFC(v11, 211, v51, v52, v53, v54, v55, v56);
        if (sub_100033A0C(v2))
        {
          v266 = v11;
          v267 = 312;
          goto LABEL_334;
        }
      }
    }

    sub_100049BD8(7);
    if (*(*(v2 + 1) + 1256))
    {
      *&v69 = 0xAAAAAAAAAAAAAAAALL;
      *(&v69 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v301 = v69;
      v302 = v69;
      *__str = v69;
      *&__str[16] = v69;
      sub_100047FFC(v11, 218, v63, v64, v65, v66, v67, v68);
      sub_100039748(__str, v2, 0, 0x40000000, 2, 33, 0, *(*(v2 + 1) + 36), 8, 16, 0, *(*(v2 + 1) + 1256), sub_100030C88);
      if (sub_10003570C(__str, 0, sub_100033C3C, 0, 0, 1))
      {
        v266 = v11;
        v267 = 319;
        goto LABEL_334;
      }
    }

    sub_100049BD8(8);
    if (sub_10002CBE0(v2, 0))
    {
      v36 = 106;
      v14 = 8;
      goto LABEL_337;
    }

    if (sub_1000239E0(v2))
    {
      goto LABEL_335;
    }

    sub_100049BD8(9);
    sub_100047FFC(v11, 203, v70, v71, v72, v73, v74, v75);
    if (sub_10002CC80(v2, 0))
    {
      goto LABEL_309;
    }

    if (v8 == -1 && (*(qword_10009BA60 + 54) & 1) == 0)
    {
      sub_10004D92C(v2);
    }

    if (sub_10004A0FC(v2, &v293))
    {
LABEL_309:
      v266 = v11;
      v267 = 303;
      goto LABEL_334;
    }

    v76 = *(v2 + 1);
    if ((*(v76 + 104) & 0x80000000) != 0 || (*(v76 + 108) & 0x80000000) != 0 || (v77 = *(v2 + 3), (*(v77 + 164) & 0x80000000) != 0) || (*(v77 + 152) & 0x8000000000000000) != 0)
    {
      sub_100049BD8(10);
      sub_100047FFC(v11, 213, v78, v79, v80, v81, v82, v83);
      if (sub_100033CE8(v2))
      {
        v266 = v11;
        v267 = 315;
        goto LABEL_334;
      }
    }

    sub_100049BD8(11);
    sub_100047FFC(v11, 217, v84, v85, v86, v87, v88, v89);
    if (sub_10004B72C(v2, &v293))
    {
      v266 = v11;
      v267 = 318;
      goto LABEL_334;
    }

    if (v293)
    {
      v91 = *(v2 + 3);
      *__str = *(v2 + 88);
      *&__str[16] = *(v2 + 13);
      v92 = sub_100026A10(v2, 0, v91, __str, *__str, v90);
      if (v92)
      {
        v242 = v92;
        sub_100047FFC(v11, 303, v93, v94, v95, v96, v97, v98);
        v268 = 782;
LABEL_331:
        sub_100049C40(v268, v242);
        goto LABEL_335;
      }

      sub_100049BF0();
      v293 = 0;
    }

    sub_1000424B0(v2);
    sub_100049BD8(12);
    sub_100047FFC(v11, 204, v99, v100, v101, v102, v103, v104);
    if (sub_10002CD20(v2, 0, 0))
    {
      goto LABEL_335;
    }

    if (v8 == -1)
    {
      sub_10001DBD0(0, *(*(v2 + 1) + 88), *(*(v2 + 4) + 88));
      if (sub_10000D854(v2, 0))
      {
LABEL_313:
        v266 = v11;
        v267 = 305;
        goto LABEL_334;
      }

      if (*(qword_10009BA60 + 54) == 1)
      {
        sub_10004D92C(v2);
      }
    }

    else if (sub_10000D854(v2, 0))
    {
      goto LABEL_313;
    }

    v105 = *(v2 + 1);
    if (*(v105 + 1400) || *(v105 + 1304))
    {
      sub_100049BD8(30);
      sub_100047FFC(v11, 223, v106, v107, v108, v109, v110, v111);
      if (sub_1000208CC(v2))
      {
        goto LABEL_311;
      }
    }

    if (v290 == 1)
    {
      v112 = sub_100046BE8(v2, v296);
      if (v112)
      {
        v14 = v112;
        goto LABEL_16;
      }
    }

    v289[0] = 0;
    v289[1] = 0;
    sub_10001D914(v2, &v298, &v297);
    if (v298 < v297)
    {
      break;
    }

LABEL_272:
    sub_100049BD8(22);
    sub_100047FFC(v11, 210, v230, v231, v232, v233, v234, v235);
    if ((v9 & 1) == 0)
    {
      goto LABEL_279;
    }

    v242 = sub_10004B648(v2, v289, &v293);
    if (!v242 && v293)
    {
      v244 = *(v2 + 3);
      *__str = *(v2 + 88);
      *&__str[16] = *(v2 + 13);
      v242 = sub_100026A10(v2, 0, v244, __str, *__str, v243);
    }

    if (v242)
    {
      sub_100047FFC(v11, 303, v236, v237, v238, v239, v240, v241);
      v268 = 1098;
      goto LABEL_331;
    }

    if (v293)
    {
      sub_100049BF0();
      v293 = 0;
    }

LABEL_279:
    if (v8 == -1)
    {
      if (sub_10001E224(v2, 0, 0))
      {
        goto LABEL_333;
      }

      if (sub_100021BA0(v2))
      {
LABEL_311:
        v266 = v11;
        v267 = 324;
        goto LABEL_334;
      }
    }

    sub_100049BD8(32);
    byte_10007C6B8 &= v9;
    if (sub_100009950(v2))
    {
      v266 = v11;
      v267 = 325;
      goto LABEL_334;
    }

    sub_100049BD8(22);
    if (sub_100043E8C(v2))
    {
      goto LABEL_333;
    }

    sub_100049BD8(23);
    v274 = 0;
    v275 = 0;
    v273 = 0;
    *__str = 0;
    sub_10003B724((v2 + 392), 0, __str);
    v251 = *__str;
    for (i = v298; i < v297; ++i)
    {
      v253 = sub_10001D82C(v2, i);
      if (*(*(v2 + 1) + 8 * i + 184))
      {
        *__str = 0;
        sub_10003B724((v253 + 768), 0, __str);
        v251 += *__str;
      }
    }

    if (!v251)
    {
      goto LABEL_300;
    }

    sub_100047FFC(v11, 216, v245, v246, v247, v248, v249, v250);
    v260 = sub_1000280E4((v2 + 392), v2, 0, byte_10007C6B8, 0, &v275, &v274, &v273);
    v261 = v298;
    v262 = v297;
    while (v261 < v262)
    {
      if (*(*(v2 + 1) + 8 * v261 + 184))
      {
        v263 = sub_10001D82C(v2, v261);
        v264 = sub_1000280E4((v263 + 768), v2, v263, byte_10007C6B8, 0, &v275, &v274, &v273);
        if (!v260)
        {
          v260 = v264;
        }

        v262 = v297;
      }

      ++v261;
    }

    if (v260)
    {
      if (v273)
      {
        v269 = 316;
      }

      else
      {
        v269 = 317;
      }

      sub_100047FFC(v11, v269, v254, v255, v256, v257, v258, v259);
      v14 = 8;
      v36 = 110;
      goto LABEL_337;
    }

    if ((byte_10007C6B8 & 1) == 0 && v275)
    {
      sub_10004565C("Unable to perform deferred repairs without full space verification\n");
      if (*(qword_10009BA60 + 24) != -1)
      {
        sub_10004565C("Try running fsck against the entire APFS container instead of a volume\n");
      }

LABEL_335:
      v14 = 8;
LABEL_336:
      v36 = 106;
LABEL_337:
      v35 = v271;
      goto LABEL_59;
    }

    if (v274)
    {
      if (!sub_100049C04())
      {
        sub_10004565C("Reached max number of fsck passes during repair\n");
        v14 = 8;
        v35 = 1;
        goto LABEL_58;
      }

      sub_100045428("Restarting after deferred repairs...\n");
      sub_100041108();
      sub_100040DF8(v2);
      v48 = sub_1000279BC((v2 + 392), 0);
      v271 = 1;
      if (v48)
      {
        goto LABEL_94;
      }
    }

    else
    {
LABEL_300:
      sub_100049BD8(24);
      if (byte_10007C6B8 != 1 || !sub_100041484())
      {
        goto LABEL_321;
      }

      if (*(qword_10009BA60 + 44) == 1)
      {
        sub_1000414C4();
        if (sub_10004758C(qword_10009BA58, "Fix overlapped extents? "))
        {
          if (!sub_100041594(v2))
          {
            *(qword_10009BA60 + 44) = 0;
LABEL_321:
            sub_100049BD8(25);
            goto LABEL_336;
          }
        }

        else
        {
          sub_100049C40(0x1CB, 92);
        }

LABEL_333:
        v266 = v11;
        v267 = 311;
LABEL_334:
        sub_100047FFC(v266, v267, v57, v58, v59, v60, v61, v62);
        goto LABEL_335;
      }

      sub_100045428("Overlap repair pass...\n");
      *(qword_10009BA60 + 44) = 1;
      v47 = sub_1000279BC((v2 + 392), 0);
      if (v47)
      {
        goto LABEL_93;
      }
    }
  }

  v113 = v298 + 23;
  while (2)
  {
    if (!*(*(v2 + 1) + 8 * v113))
    {
      goto LABEL_151;
    }

    v114 = v113 - 23;
    v115 = sub_10001D82C(v2, v113 - 23);
    sub_100049BE4(*v115);
    sub_100049BD8(13);
    sub_100047FFC(v11, 101, v116, v117, v118, v119, v120, v121, *v115);
    sub_100047FFC(v11, 206, v122, v123, v124, v125, v126, v127);
    v128 = sub_1000279BC((v115 + 768), v115);
    if (v128)
    {
      v265 = v128;
      sub_10004565C("failed to initialize tree for volume repairs\n");
      v49 = 705;
      v50 = v265;
      goto LABEL_95;
    }

    v129 = v113;
    v130 = (v115 + 40);
    v131 = *(v2 + 1);
    v272 = v129;
    if (!*(v115 + 5))
    {
      if (!sub_100025548(v2, 0, 0, *(v131 + 8 * v129), 0, 0, 13, 0, v115 + 5, (v115 + 80), 0))
      {
        goto LABEL_139;
      }

      goto LABEL_142;
    }

    if (sub_10001DC68(0, *(v131 + 8 * v129), 1))
    {
      sub_100045744("object (oid 0x%llx): Unable to mark the omap entry of the apfs_sb at index (%u) in use for omap space verification\n", *(*(v2 + 1) + 8 * v272), v114);
      sub_100049C40(0x3DD, -7);
    }

LABEL_139:
    if (v8 != -1)
    {
      *&v138 = 0xAAAAAAAAAAAAAAAALL;
      *(&v138 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v313 = v138;
      v314 = v138;
      v311 = v138;
      v312 = v138;
      v309 = v138;
      v310 = v138;
      v307 = v138;
      v308 = v138;
      v305 = v138;
      v306 = v138;
      v303 = v138;
      v304 = v138;
      v301 = v138;
      v302 = v138;
      *__str = v138;
      *&__str[16] = v138;
      __strlcpy_chk();
      v315 = __str;
      sub_10000D154(*v130, &v315);
    }

    v288 = 0;
    v286 = 0u;
    v287 = 0u;
    v284 = 0;
    memset(v283, 0, sizeof(v283));
    v285 = 16;
    v139 = *v130;
    LODWORD(v286) = *(*v130 + 960);
    sub_10004DD08(v11, v139);
    if (sub_10004DDF8(v2, *v130, v114, &v293))
    {
LABEL_142:
      v140 = v11;
      v141 = 307;
      goto LABEL_143;
    }

    sub_100049BD8(14);
    sub_100047FFC(v11, 204, v144, v145, v146, v147, v148, v149);
    if (sub_10002CD20(v2, v115, 0))
    {
      goto LABEL_144;
    }

    if ((*(qword_10009BA60 + 46) & 1) == 0)
    {
      sub_10001DBD0(1, *(*(v2 + 1) + 88), *(*(v115 + 9) + 88));
    }

    if (sub_10000D854(v2, v115))
    {
      v140 = v11;
      v141 = 305;
      goto LABEL_143;
    }

    v150 = *(*v130 + 1000);
    if (v150)
    {
      v151 = sub_10001DC68(1, v150, 1);
      if (v151)
      {
        v152 = v151;
        sub_100045744("object (oid 0x%llx): Unable to mark the omap entry of the apfs_snap_meta_ext_oid in use for omap space verification\n", *(*v130 + 1000));
        sub_100049C40(0x3D5, v152);
      }
    }

    sub_100049BD8(15);
    v153 = *v130;
    if ((*(*v130 + 264) & 1) == 0 || *(v153 + 976))
    {
      if (v115[8] == 1)
      {
        v154 = sub_100046258(v115, v2, v296);
        if (v154)
        {
          sub_100049C40(0x45F, v154);
          v14 = 66;
          goto LABEL_16;
        }

        v153 = *v130;
      }

      if (*(v153 + 976) && sub_10003DF5C(v2, v115))
      {
        v140 = v11;
        v141 = 314;
        goto LABEL_143;
      }
    }

    sub_100049BD8(17);
    if (*(*v130 + 152))
    {
      *__str = 0xAAAAAAAAAAAAAAAALL;
      sub_10002BB60();
      sub_100047FFC(v11, 209, v155, v156, v157, v158, v159, v160);
      if (sub_10002D2DC(v2, v115, __str) || sub_10003570C(*__str, 0, sub_10000F144, v283, 0, 1) || sub_10002BE24(v115 + 192))
      {
        v140 = v11;
        v141 = 310;
        goto LABEL_143;
      }
    }

    sub_100049BD8(19);
    v167 = *v130;
    if ((*(*v130 + 264) & 1) != 0 && !*(v167 + 976))
    {
      v115[9] = 1;
      v169 = v115 + 9;
      v170 = *(qword_10009BA60 + 46);
      LOBYTE(v171) = v170 ^ 1;
    }

    else
    {
      v168 = *(v115 + 3);
      v115[9] = v168 != 0;
      v169 = v115 + 9;
      v170 = *(qword_10009BA60 + 46);
      LOBYTE(v171) = v170 ^ 1;
      if ((v170 & 1) == 0 && !v168)
      {
        v172 = *(v115 + 6);
        if (!v172)
        {
          v172 = v167;
        }

        v171 = (*(v172 + 56) >> 5) & 1;
      }
    }

    v115[10] = v171;
    v115[11] = v170;
    sub_100047FFC(v11, 205, v161, v162, v163, v164, v165, v166);
    v280 = 0u;
    v281 = 0u;
    v282 = 0;
    v278 = 0;
    memset(v277, 0, sizeof(v277));
    v279 = 16;
    LODWORD(v280) = *(*(v115 + 5) + 960);
    if (sub_10000DDA4(v2, v115, v277, 0, v173))
    {
      goto LABEL_189;
    }

    if ((*(qword_10009BA60 + 46) & 1) == 0 && v284 != v278)
    {
      sub_100045744("omap has %llu snaphots but snap meta tree has %llu\n", v278, v284);
    }

    if (v285 < v279)
    {
      v285 = v279;
    }

    if (v286 < v280)
    {
      LODWORD(v286) = v280;
    }

    if ((*(qword_10009BA60 + 46) & 1) == 0 && sub_100004ED8(v2, v115, (v115 + 768)))
    {
LABEL_189:
      v140 = v11;
      v141 = 306;
      goto LABEL_143;
    }

    sub_100049BD8(16);
    v174 = *(v115 + 6);
    if (!v174)
    {
      v174 = *v130;
    }

    if ((*(v174 + 56) & 0x20) != 0 && sub_10004BD04(v2, v115, 0))
    {
      goto LABEL_144;
    }

    *&out[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v175 = 0xAAAAAAAAAAAAAAAALL;
    *(&v175 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *out = v175;
    *&out[16] = v175;
    uuid_unparse((*v130 + 240), out);
    v176 = *v130;
    if ((*(*v130 + 56) & 0x10) != 0)
    {
      *v169 = 0;
      sub_100045744("Volume %s is incompletely restored, skipping the fsroot tree.\n");
LABEL_207:
      v177 = 0;
      goto LABEL_208;
    }

    if (*(v176 + 160))
    {
      *v169 = 0;
      sub_100045744("Volume %s has revert_to_xid set, skipping the fsroot tree.\n");
      goto LABEL_207;
    }

    if (((*(v176 + 264) & 1) == 0 || *(v176 + 976)) && !*(v115 + 3))
    {
      sub_100045744("Volume %s is encrypted and crypto I/O failed/was skipped, skipping the fsroot tree.\n");
      goto LABEL_207;
    }

    sub_10001F400(v115);
    *__str = 0xAAAAAAAAAAAAAAAALL;
    v191 = sub_10002D5F0(v2, v115, __str);
    if (!v191)
    {
      sub_10001476C(*__str, 0);
      sub_100005298(v2, v115, 0);
      v192 = *(v115 + 5);
      if (v192[134] || v192[135])
      {
        sub_100049BD8(28);
        sub_100047FFC(v11, 221, v193, v194, v195, v196, v197, v198);
        if (sub_1000059E8(v2, v115, 0))
        {
          goto LABEL_224;
        }

        v192 = *v130;
      }

      if (v192[139])
      {
        sub_100049BD8(33);
        sub_100047FFC(v11, 225, v205, v206, v207, v208, v209, v210);
        if ((*(*v130 + 57) & 2) == 0)
        {
          sub_10004565C("found clone group tree in invalid volume format\n");
          v115[13] = 1;
        }

        if (sub_100038C78(v2, v115, 0, v283))
        {
          v141 = 326;
          goto LABEL_239;
        }
      }

      sub_100049BD8(16);
      sub_100047FFC(v11, 207, v211, v212, v213, v214, v215, v216);
      if (sub_10003570C(*__str, 0, sub_10000F144, v283, 0, 0) || *(*v130 + 1096) && (sub_10002D6C4(v2, v115, __str) || sub_100014830(v2, v115, v115 + 192) || sub_10003570C(*__str, 0, sub_10000F144, v283, 0, 0)) || *v169 == 1 && sub_10002E53C(v2, v115) || sub_100014884(v2, v115, 0, v115 + 192))
      {
        v141 = 308;
LABEL_239:
        v140 = v11;
LABEL_143:
        sub_100047FFC(v140, v141, v132, v133, v134, v135, v136, v137);
      }

      else
      {
        if (sub_10000583C(v2, v115, 0))
        {
LABEL_224:
          v141 = 322;
          goto LABEL_239;
        }

        v177 = 1;
LABEL_208:
        sub_1000053DC();
        v178 = *(v115 + 6);
        if (!v178)
        {
          v178 = *v130;
        }

        if ((*(v178 + 56) & 0x20) != 0)
        {
          sub_10001F400(v115);
          *__str = 0xAAAAAAAAAAAAAAAALL;
          sub_100049BD8(26);
          sub_100047FFC(v11, 219, v185, v186, v187, v188, v189, v190);
          if (sub_10002D44C(v2, v115, __str) || sub_10003570C(*__str, 0, sub_100014238, v283, 0, 1))
          {
            v140 = v11;
            v141 = 320;
            goto LABEL_143;
          }
        }

        sub_100049BD8(18);
        sub_100047FFC(v11, 208, v179, v180, v181, v182, v183, v184);
        v276 = 0xAAAAAAAAAAAAAAAALL;
        if (sub_10002D394(v2, v115, &v276) || sub_10003570C(v276, 0, sub_10000F144, v283, 0, 1))
        {
          v140 = v11;
          v141 = 309;
          goto LABEL_143;
        }

        if (!sub_10002045C(v115, 0))
        {
          if ((*(*v130 + 56) & 0x40) != 0)
          {
            *__str = 0xAAAAAAAAAAAAAAAALL;
            sub_100049BD8(27);
            sub_100047FFC(v11, 220, v217, v218, v219, v220, v221, v222);
            if (sub_10002D134(v2, v115, __str) || sub_10003570C(*__str, 0, sub_100034204, v283, 0, 1) || sub_1000340B4(v2, v115, v115 + 192))
            {
              v140 = v11;
              v141 = 321;
              goto LABEL_143;
            }
          }

          if (v177)
          {
            sub_100049BD8(31);
            sub_100047FFC(v11, 224, v199, v200, v201, v202, v203, v204);
            if (sub_10001E224(v2, v115, 1))
            {
              v140 = v11;
              v141 = 323;
              goto LABEL_143;
            }
          }

          else
          {
            sub_10001DC28(1);
          }

          sub_100046458(v115);
          sub_100049BD8(21);
          if (v115[9] == 1 && sub_10004EB94(*v130, v283, &v293) || (v115[11] & 1) == 0 && sub_10004EEB8(v2, *v130, v289, &v293))
          {
            goto LABEL_142;
          }

          if ((*(*v130 + 264) & 4) != 0)
          {
            *__str = 0;
            sub_10003B724((v115 + 768), 0, __str);
            if (!*__str && (v293 || (v115[12] & 1) != 0 || sub_10004758C(qword_10009BA58, "Clear volume inconsistent bit? ")))
            {
              *(*v130 + 264) &= ~4uLL;
              v293 = 1;
              goto LABEL_267;
            }
          }

          if (!v293 && v115[12] != 1)
          {
            goto LABEL_145;
          }

LABEL_267:
          v229 = sub_100046EA0(v2, v115);
          if (v229 && v293)
          {
            sub_100047FFC(v11, 307, v223, v224, v225, v226, v227, v228);
            sub_100049C40(0xA7, v229);
            goto LABEL_144;
          }

          sub_100049BF0();
          v293 = 0;
          v115[12] = 0;
          if (!v229)
          {
LABEL_145:
            v9 &= v115[11] ^ 1;
            if (v115[13])
            {
              v14 = 8;
            }

            else
            {
              v14 = v14;
            }

            *__str = 0;
            sub_10003B724((v115 + 768), 0, __str);
            if (*__str)
            {
              v142 = 109;
              v113 = v272;
            }

            else
            {
              if (v115[13])
              {
                v142 = 108;
              }

              else
              {
                v142 = 104;
              }

              v113 = v272;
              if (v8 != -1 && !v115[13])
              {
                goto LABEL_151;
              }
            }

            sub_10004F00C(v11, v142, v115);
LABEL_151:
            sub_100049BE4(*(qword_10009BA60 + 8));
            v143 = v113 - 22;
            ++v113;
            if (v143 >= v297)
            {
              goto LABEL_272;
            }

            continue;
          }
        }
      }

LABEL_144:
      sub_10001DC28(1);
      sub_100009510();
      sub_1000147E8(v115);
      sub_1000053DC();
      v115[11] = 1;
      v115[13] = 1;
      goto LABEL_145;
    }

    break;
  }

  v50 = v191;
  v49 = 1533;
LABEL_95:
  sub_100049C40(v49, v50);
LABEL_15:
  v14 = 71;
LABEL_16:
  sub_100046024();
  sub_10001D95C();
  if (v13)
  {
    free(v13);
  }

  sub_10002C8A8(v2);
  if (v295[1])
  {
    free(v295[1]);
  }

  if (v294[1])
  {
    free(v294[1]);
  }

  sub_100041108();
  if (byte_10009B0F0 == 1)
  {
    sub_10001C614();
  }

  sub_10000D2A0();
  return v14;
}

void sub_10004D92C(uint64_t *a1)
{
  if (a1)
  {
    if (*(qword_10009BA60 + 54))
    {
      v11 = -1431655766;
      v12 = -1431655766;
      v10 = 0;
      memset(__b, 170, sizeof(__b));
      sub_10001D914(a1, &v12, &v11);
      v2 = v12;
      if (v12 >= v11)
      {
        sub_10000D060(a1[3], __b, 0);
      }

      else
      {
        v3 = 0;
        do
        {
          v4 = *(a1[1] + 8 * v2 + 184);
          if (v4)
          {
            if (sub_100025548(a1, 0, 0, v4, 0, 0, 13, 0, &v10, 0, 0) || (v6 = malloc_type_calloc(1uLL, 0x100uLL, 0x3ABAA1DCuLL)) == 0)
            {
              v5 = &byte_10005C3F3;
            }

            else
            {
              v5 = v6;
              __strlcpy_chk();
            }

            __b[v3] = v5;
            v3 = (v3 + 1);
            if (v10)
            {
              free(v10);
            }
          }

          v10 = 0;
          ++v2;
        }

        while (v2 < v11);
        sub_10000D060(a1[3], __b, v3);
        if (v3 >= 1)
        {
          v7 = v3;
          v8 = __b;
          do
          {
            if (*v8 != &byte_10005C3F3)
            {
              free(*v8);
            }

            ++v8;
            --v7;
          }

          while (v7);
        }
      }

      return;
    }

    v9 = a1[3];
  }

  else
  {
    v9 = 0;
  }

  sub_10000D060(v9, 0, 0);
}

uint64_t sub_10004DB58(uint64_t a1, uint64_t *a2)
{
  v35 = 0;
  sub_100040DF8(a2);
  sub_100049BD8(12);
  sub_100047FFC(a1, 204, v4, v5, v6, v7, v8, v9);
  if (sub_10002CD20(a2, 0, 0))
  {
    return 8;
  }

  if (sub_10000D854(a2, 0))
  {
    v16 = a1;
    v17 = 305;
    goto LABEL_4;
  }

  v36 = -1431655766;
  v37 = -1431655766;
  sub_10001D914(a2, &v37, &v36);
  v19 = v37;
  if (v37 >= v36)
  {
    return 0;
  }

  while (1)
  {
    if (!*(a2[1] + 8 * v19 + 184))
    {
      goto LABEL_16;
    }

    v20 = sub_10001D82C(a2, v19);
    sub_100049BE4(*v20);
    sub_100049BD8(13);
    sub_100047FFC(a1, 101, v21, v22, v23, v24, v25, v26, *v20);
    sub_100047FFC(a1, 206, v27, v28, v29, v30, v31, v32);
    v34 = (v20 + 40);
    v33 = *(v20 + 5);
    if (!v33)
    {
      if (sub_100025548(a2, 0, 0, *(a2[1] + 8 * v19 + 184), 0, 0, 13, 0, v20 + 5, (v20 + 80), 0))
      {
        break;
      }

      v33 = *v34;
    }

    sub_10004DD08(a1, v33);
    if (sub_10004DDF8(a2, *v34, v19, &v35))
    {
      break;
    }

    if (v35)
    {
      if (sub_100046EA0(a2, v20))
      {
        break;
      }

      sub_100049BF0();
      v35 = 0;
    }

LABEL_16:
    if (++v19 >= v36)
    {
      return 0;
    }
  }

  v16 = a1;
  v17 = 307;
LABEL_4:
  sub_100047FFC(v16, v17, v10, v11, v12, v13, v14, v15);
  return 8;
}

uint64_t sub_10004DD08(uint64_t a1, uint64_t a2)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[14] = v3;
  v13[15] = v3;
  v13[12] = v3;
  v13[13] = v3;
  v13[10] = v3;
  v13[11] = v3;
  v13[8] = v3;
  v13[9] = v3;
  v13[6] = v3;
  v13[7] = v3;
  v13[4] = v3;
  v13[5] = v3;
  v13[2] = v3;
  v13[3] = v3;
  v13[0] = v3;
  v13[1] = v3;
  v12[0] = v3;
  v12[1] = v3;
  v11[0] = v3;
  v11[1] = v3;
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  return sub_100047FFC(a1, 124, v4, v5, v6, v7, v8, v9, v13, v12, v11);
}

uint64_t sub_10004DDF8(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  v8 = *(a1 + 8);
  v9 = *(v8 + 96);
  v10 = *(v8 + 40);
  v11 = sub_10000EC94();
  v12 = *(a2 + 32);
  if (v12 != 1112756289)
  {
    sub_10004565C("apfs superblock at index %u: apfs_magic invalid: %d\n", *(a2 + 36), v12);
    v15 = 92;
    v21 = 14;
LABEL_24:
    sub_100049C40(v21, 92);
    return v15;
  }

  v13 = v11;
  v14 = *(a1 + 24);
  if (*(a2 + 36) != a3)
  {
    sub_10004565C("apfs_fs_index (%d) is not valid (%d)\n", *(a2 + 36), a3);
    v15 = 92;
    sub_100049C40(0xF, 92);
    if (!sub_10004758C(qword_10009BA58, "Fix apfs_fs_index(oid 0x%llx, xid 0x%llx)? ", *(a2 + 8), *(a2 + 16)))
    {
      return v15;
    }

    *(a2 + 36) = a3;
    *a4 = 1;
  }

  if ((*(a2 + 40) & 0xFFFFFFFFFFFFFFE0) != 0)
  {
    sub_100045744("apfs superblock at index %u: apfs_features has unrecognized features (0x%llX)\n", *(a2 + 36), *(a2 + 40) & 0xFFFFFFFFFFFFFFE0);
    sub_100049C40(0x10, -3);
  }

  if ((*(a2 + 48) & 0xFFFFFFFFFFFFFFF1) != 0)
  {
    sub_100045744("apfs superblock at index %u: apfs_readonly_compatible_features has unsupported flags: (0x%llX)\n", *(a2 + 36), *(a2 + 48) & 0xFFFFFFFFFFFFFFF1);
    v16 = qword_10009BA60;
    *(qword_10009BA60 + 32) = 1;
    *(v16 + 41) = 1;
    sub_100047570(qword_10009BA58, 1);
    sub_100049C40(0x11, -3);
  }

  v17 = *(a2 + 56);
  if ((v17 & 0xFFFFFFFFFFFFFC00) != 0 || (*(a2 + 56) & 9) == 9)
  {
    sub_10004565C("apfs superblock at index %u: apfs_incompatible_features has unsupported flags: (0x%llX)\n", *(a2 + 36), v17 & 0xFFFFFFFFFFFFFC00);
    v15 = 92;
    v21 = 18;
    goto LABEL_24;
  }

  if (v17 >= 0x200 && (*(a2 + 48) & 2) != 0)
  {
    sub_10004565C("apfs superblock at index %u: incompatible features set (apfs_readonly_compatible_features: (0x%llX), apfs_incompatible_features: (0x%llX))\n", *(a2 + 36), *(a2 + 48), v17);
    v15 = 92;
    v21 = 1210;
    goto LABEL_24;
  }

  if (*(a2 + 64) > v13)
  {
    sub_100045744("apfs superblock at index %u: apfs_unmount_time (%llu) is greater than current time (%llu)\n", *(a2 + 36), *(a2 + 64), v13);
    sub_100049C40(0x13, -4);
  }

  if (v14)
  {
    v18 = *(*(a1 + 8) + 40) - (v14[30] + v14[9]);
    if (*(a2 + 88) > v18)
    {
      sub_100045744("apfs superblock at index %u: apfs_fs_alloc_count (%llu) is greater than container wide allocated count (%llu)\n", *(a2 + 36), *(a2 + 88), v18);
      sub_100049C40(0x308, -7);
    }

    v19 = *(a2 + 72);
    if (v19)
    {
      v20 = *(*(a1 + 8) + 40);
      if (v19 <= v20)
      {
        v23 = v14[23];
        if (v19 > v23)
        {
          sub_100045744("apfs superblock at index %u: apfs_fs_reserve_block_count (%llu) is greater than spaceman reserve block count (%llu) for a guaranteed-minimum space FS\n", *(a2 + 36), *(a2 + 72), v23);
          sub_100049C40(0x14, -7);
          v19 = *(a2 + 72);
        }
      }

      else
      {
        sub_10004565C("apfs superblock at index %u: apfs_fs_reserve_block_count (%llu) is greater than the container block count (%llu)\n", *(a2 + 36), *(a2 + 72), v20);
        v15 = 92;
        sub_100049C40(0x448, 92);
        if (!sub_10004758C(qword_10009BA58, "Fix apfs_fs_reserve_block_count(oid 0x%llx, xid 0x%llx)? ", *(a2 + 8), *(a2 + 16)))
        {
          return v15;
        }

        v19 = 0;
        *(a2 + 72) = 0;
        *a4 = 1;
      }

      if (v19 >= *(a2 + 88))
      {
        v19 = *(a2 + 88);
      }

      v24 = v14[24];
      if (v19 > v24)
      {
        sub_100045744("apfs superblock at index %u: apfs reserve alloc count (%llu) is greater than spaceman reserve alloc count (%llu) for a guaranteed-minimum space FS\n", *(a2 + 36), v19, v24);
        sub_100049C40(0x309, -7);
      }
    }
  }

  v25 = *(a2 + 80);
  if (v25)
  {
    if (*(a2 + 72) > v25)
    {
      sub_10004565C("apfs superblock at index %u: apfs_fs_reserve_block_count (%llu) must not be greater than apfs_fs_quota_block_count (%llu)\n", *(a2 + 36), *(a2 + 72), v25);
      v15 = 92;
      v21 = 21;
      goto LABEL_24;
    }

    if (v25 > v10)
    {
      sub_100045744("apfs superblock at index %u: apfs_fs_quota_block_count (%llu) should not be greater than nx_block_count (%llu) for an FS with quota\n", *(a2 + 36), *(a2 + 80), v10);
      sub_100049C40(0x16, -7);
      v25 = *(a2 + 80);
    }

    if (*(a2 + 88) > v25)
    {
      sub_10004565C("apfs superblock at index %u: apfs_fs_alloc_count (%llu) must not be greater than apfs_fs_quota_block_count (%llu)\n", *(a2 + 36), *(a2 + 88), v25);
      v15 = 92;
      v21 = 23;
      goto LABEL_24;
    }
  }

  v26 = *(a2 + 116);
  if (v26 >> 30 == 3 || *(a2 + 116) != 2)
  {
    sub_10004565C("apfs superblock at index %u: apfs_root_tree_type is invalid: 0x%x\n", *(a2 + 36), v26);
    v15 = 92;
    v21 = 24;
    goto LABEL_24;
  }

  v27 = *(a2 + 120);
  if (v27 >> 30 == 3 || *(a2 + 120) != 2)
  {
    sub_10004565C("apfs superblock at index %u: apfs_extentref_tree_type is invalid: 0x%x\n", *(a2 + 36), v27);
    v15 = 92;
    v21 = 25;
    goto LABEL_24;
  }

  v28 = *(a2 + 124);
  if (v28 >> 30 == 3 || *(a2 + 124) != 2)
  {
    sub_10004565C("apfs superblock at index %u: apfs_snap_meta_tree_type is invalid: 0x%x\n", *(a2 + 36), v28);
    v15 = 92;
    v21 = 26;
    goto LABEL_24;
  }

  if (!*(a2 + 128))
  {
    sub_10004565C("apfs superblock at index %u: apfs_omap_oid is invalid.\n", *(a2 + 36));
    v15 = 92;
    v21 = 27;
    goto LABEL_24;
  }

  if (!*(a2 + 136))
  {
    sub_10004565C("apfs superblock at index %u: apfs_root_tree_oid is invalid.\n", *(a2 + 36));
    v15 = 92;
    v21 = 28;
    goto LABEL_24;
  }

  v29 = *(a2 + 56);
  if ((v29 & 0x100) != 0)
  {
    if ((*(a2 + 264) & 1) != 0 && !*(a2 + 976))
    {
      sub_10004565C("apfs superblock at index %u: apfs_fs_flags (0x%llx) inconsistent with apfs_incompatible_features secondary fsroot bit (0x%llx)\n", *(a2 + 36), *(a2 + 264), v29);
      v15 = 92;
      v21 = 1160;
      goto LABEL_24;
    }

    if (!*(a2 + 1096))
    {
      sub_10004565C("apfs superblock at index %u: apfs_sec_root_tree_oid is invalid\n", *(a2 + 36));
      v15 = 92;
      v21 = 1161;
      goto LABEL_24;
    }

    if (*(a2 + 1104) >> 30 == 3 || *(a2 + 1104) != 2)
    {
      sub_10004565C("apfs superblock at index %u: apfs_sec_root_tree_type is invalid\n", *(a2 + 36));
      v15 = 92;
      v21 = 1162;
      goto LABEL_24;
    }
  }

  else
  {
    v30 = *(a2 + 1096);
    if (v30)
    {
      sub_100045744("apfs superblock at index %u: apfs_sec_root_tree_oid (%llu) set on incompatible volume\n", *(a2 + 36), v30);
      sub_100049C40(0x48B, -2);
    }
  }

  if (!*(a2 + 144))
  {
    sub_10004565C("apfs superblock at index %u: apfs_extentref_tree_oid is invalid.\n", *(a2 + 36));
    v15 = 92;
    v21 = 29;
    goto LABEL_24;
  }

  v31 = *(a2 + 160);
  if (v31 >= v9)
  {
    sub_10004565C("apfs superblock at index %u: apfs_revert_to_xid (%llu) should be less than nx_next_xid (%llu)\n", *(a2 + 36), *(a2 + 160), v9);
    v15 = 92;
    v21 = 30;
    goto LABEL_24;
  }

  if (v31 && !*(a2 + 168))
  {
    sub_10004565C("apfs superblock at index %u: apfs_revert_to_xid is %llu, but sblock oid is invalid\n", *(a2 + 36), v31);
    v15 = 92;
    v21 = 31;
    goto LABEL_24;
  }

  v32 = *(a2 + 224);
  if (*(a2 + 232) > v32)
  {
    sub_100045744("apfs superblock at index %u: apfs_total_blocks_freed (%llu) should not be greater than apfs_total_blocks_alloced (%llu)\n", *(a2 + 36), *(a2 + 232), v32);
    sub_100049C40(0x20, -7);
  }

  if (uuid_is_null((a2 + 240)))
  {
    sub_10004565C("apfs superblock at index %u: apfs_vol_uuid is NULL\n", *(a2 + 36));
    v15 = 92;
    v21 = 33;
    goto LABEL_24;
  }

  if (*(a2 + 256) > v13)
  {
    sub_100045744("apfs superblock at index %u: apfs_last_mod_time (%llu) is greater than current time (%llu)\n", *(a2 + 36), *(a2 + 256), v13);
    sub_100049C40(0x22, -4);
  }

  v33 = *(a2 + 264);
  if (v33 >= 0x1000)
  {
    sub_100045744("apfs superblock at index %u: apfs_fs_flags has an unknown flag set 0x%llx\n", *(a2 + 36), v33);
    sub_100049C40(0x23, -3);
    v33 = *(a2 + 264);
  }

  v34 = v33 & 0x109;
  if ((*(a2 + 48) & 2) == 0)
  {
    v35 = *(a2 + 56);
    if ((v34 != 256) == ((v35 >> 6) & 1))
    {
      sub_10004565C("apfs superblock at index %u: apfs_fs_flags (0x%llx) PFK bit inconsistent with apfs_incompatible_features (0x%llx) PFK bit\n", *(a2 + 36), v33, v35);
      v15 = 92;
      v21 = 998;
      goto LABEL_24;
    }
  }

  if ((v34 & (v34 - 1)) != 0)
  {
    sub_10004565C("apfs superblock at index %u: apfs_fs_flags has conflicting encryption flags 0x%llx\n", *(a2 + 36), v34);
    v15 = 92;
    v21 = 999;
    goto LABEL_24;
  }

  if ((v33 & 0x80) == 0)
  {
    goto LABEL_84;
  }

  v40 = *(a2 + 1024);
  if (*(a2 + 56) & 0x20 | v40)
  {
LABEL_115:
    sub_10004565C("apfs superblock at index %u: apfs_fs_flags (0x%llx) previously sealed bit inconsistent with apfs_incompatible_features (0x%llx) / apfs_integrity_meta_oid (%llu) / apfs_fext_tree_oid (%llu)\n", *(a2 + 36), v33, *(a2 + 56), v40, *(a2 + 1032));
    v15 = 92;
    v21 = 951;
    goto LABEL_24;
  }

  if (*(a2 + 1032))
  {
    v40 = 0;
    goto LABEL_115;
  }

LABEL_84:
  if ((v33 & 1) == 0 || *(a2 + 976))
  {
    if ((*(a2 + 56) & 0x20) != 0)
    {
      sub_10004565C("apfs superblock at index %u: apfs_fs_flags (0x%llx) indicates sealed volume is not fully unencrypted\n", *(a2 + 36), v33);
      v15 = 92;
      v21 = 917;
      goto LABEL_24;
    }

    sub_10004F0C8((a2 + 96), a2);
  }

  if (!*(a2 + 704))
  {
    sub_10004565C("apfs superblock at index %u: apfs_volname[0] == 0\n", *(a2 + 36));
    v15 = 92;
    v21 = 36;
    goto LABEL_24;
  }

  if (strnlen((a2 + 272), 0x20uLL) == 32)
  {
    sub_10004565C("apfs superblock at index %u: apfs_formatted_by.id (%.*s) is not NULL terminated.\n", *(a2 + 36), 32, (a2 + 272));
    v15 = 92;
    sub_100049C40(0x25, 92);
    if (!sub_10004758C(qword_10009BA58, "Fix apfs_formatted_by.id(oid 0x%llx, xid 0x%llx)? ", *(a2 + 8), *(a2 + 16)))
    {
      return v15;
    }

    *(a2 + 303) = 0;
    *a4 = 1;
  }

  if (*(a2 + 304) > v13)
  {
    sub_100045744("apfs superblock at index %u: apfs_formatted_by.timestamp (%llu) is greater than current time (%llu)\n", *(a2 + 36), *(a2 + 304), v13);
    sub_100049C40(0x26, -4);
  }

  __s1 = (a2 + 704);
  if (*(a2 + 312) > v9)
  {
    sub_100045744("apfs superblock at index %u: apfs_formatted_by.last_xid (0x%llx) is greater than nx_next_xid (0x%llx)\n", *(a2 + 36), *(a2 + 312), v9);
    sub_100049C40(0x27, -2);
  }

  v36 = 0;
  v37 = a2 + 320;
  do
  {
    v38 = *(v37 + 32);
    if (!v38)
    {
      break;
    }

    if (strnlen(v37, 0x20uLL) == 32)
    {
      v39 = v37;
      sub_10004565C("apfs superblock at index %u: apfs_modified_by[%d].id (%.*s) is not NULL terminated.\n", *(a2 + 36), v36, 32, v37);
      v15 = 92;
      sub_100049C40(0x28, 92);
      if (!sub_10004758C(qword_10009BA58, "Fix apfs_modified_by[%d].id(oid 0x%llx, xid 0x%llx)? ", v36, *(a2 + 8), *(a2 + 16)))
      {
        return v15;
      }

      v37 = v39;
      *(v39 + 31) = 0;
      *a4 = 1;
      v38 = *(v39 + 32);
    }

    if (v38 > v13)
    {
      sub_100045744("apfs superblock at index %u: apfs_modified_by[%d].timestamp (%llu) is greater than current time (%llu)\n", *(a2 + 36), v36, v38, v13);
      sub_100049C40(0x29, -4);
    }

    if (*(v37 + 40) > v9)
    {
      sub_100045744("apfs superblock at index %u: apfs_modified_by[%d].last_xid (0x%llx) is greater than nx_next_xid (0x%llx)\n", *(a2 + 36), v36, *(v37 + 40), v9);
      sub_100049C40(0x2A, -2);
    }

    ++v36;
    v37 += 48;
  }

  while (v36 != 8);
  if (strnlen(__s1, 0x100uLL) == 256)
  {
    sub_10004565C("apfs superblock at index %u: apfs_volname (%.*s) is not NULL terminated.\n", *(a2 + 36), 256, __s1);
    v15 = 92;
    sub_100049C40(0x2B, 92);
    if (!sub_10004758C(qword_10009BA58, "Fix apfs_volname(oid 0x%llx, xid 0x%llx)? ", *(a2 + 8), *(a2 + 16)))
    {
      return v15;
    }

    *(a2 + 959) = 0;
    *a4 = 1;
  }

  if (*(a2 + 960) <= 2u)
  {
    sub_10004565C("apfs superblock at index %u: apfs_next_doc_id (%u) should not be less than MIN_DOC_ID (%d)\n", *(a2 + 36), *(a2 + 960), 3);
    v15 = 92;
    v21 = 44;
    goto LABEL_24;
  }

  if (*(a2 + 216) && !*(a2 + 1000))
  {
    sub_100045614("apfs_sb: object (oid 0x%llx): apfs_snap_meta_ext_oid invalid\n", *(a2 + 8));
  }

  v41 = *(a2 + 56);
  if ((v41 & 0x20) != 0)
  {
    if (!*(a2 + 1032))
    {
      sub_10004565C("apfs superblock at index %u: apfs_fext_tree_oid is invalid.\n", *(a2 + 36));
      v15 = 92;
      v21 = 909;
      goto LABEL_24;
    }

    v48 = *(a2 + 1040);
    if (v48 >> 30 == 3 || *(a2 + 1040) != 2)
    {
      sub_10004565C("apfs superblock at index %u: apfs_fext_tree_type is invalid: %u\n", *(a2 + 36), v48);
      v15 = 92;
      v21 = 910;
      goto LABEL_24;
    }

    if (!*(a2 + 1024))
    {
      sub_10004565C("apfs superblock at index %u: apfs_integrity_meta_oid is invalid.\n", *(a2 + 36));
      v15 = 92;
      v21 = 911;
      goto LABEL_24;
    }
  }

  if ((v41 & 0x40) != 0)
  {
    if (!*(a2 + 1048))
    {
      sub_10004565C("apfs superblock at index %u: apfs_pfkur_tree_oid is invalid.\n", *(a2 + 36));
      v15 = 92;
      v21 = 970;
      goto LABEL_24;
    }

    v42 = *(a2 + 1044);
    if (v42 >> 30 == 3 || *(a2 + 1044) != 2)
    {
      sub_10004565C("apfs superblock at index %u: apfs_pfkur_tree_type is invalid: 0x%x\n", *(a2 + 36), v42);
      v15 = 92;
      v21 = 971;
      goto LABEL_24;
    }
  }

  v43 = *(*(a1 + 8) + 96);
  if (*(a2 + 1056) >= v43)
  {
    sub_100045744("apfs superblock at index %u: apfs_doc_id_index_xid (%llu) is greater than or equal to container nx_next_xid (%llu)\n", *(a2 + 36), *(a2 + 1056), v43);
    sub_100049C40(0x40F, -2);
  }

  v44 = *(a2 + 1064);
  if (v44 >= 0x20)
  {
    sub_100045744("apfs superblock at index %u: apfs_doc_id_index_flags has unrecognized flags (0x%x)\n", *(a2 + 36), v44);
    sub_100049C40(0x410, -3);
    v44 = *(a2 + 1064);
  }

  if ((v44 & 1) == 0)
  {
    if (*(a2 + 1080))
    {
      sub_100045744("apfs superblock at index %u: apfs_prev_doc_id_tree_oid is set (%llu), despite apfs_doc_id_index_flags (0x%x)\n", *(a2 + 36), *(a2 + 1080), v44);
      sub_100049C40(0x411, -3);
    }

    if (*(a2 + 1088))
    {
      sub_100045744("apfs superblock at index %u: apfs_doc_id_fixup_cursor is set (%llu), despite apfs_doc_id_index_flags (0x%x)\n", *(a2 + 36), *(a2 + 1088), *(a2 + 1064));
      sub_100049C40(0x412, -3);
      if (sub_10004758C(qword_10009BA58, "Fix apfs_doc_id_fixup_cursor? "))
      {
        *(a2 + 1088) = 0;
        *a4 = 1;
      }
    }
  }

  v45 = *(a2 + 176);
  if (*(a2 + 1088) >= v45)
  {
    sub_100045744("apfs superblock at index %u: apfs_doc_id_fixup_cursor (%llu) is greater than or equal to apfs_next_obj_id (%llu)\n", *(a2 + 36), *(a2 + 1088), v45);
    sub_100049C40(0x413, -2);
  }

  if (*(a2 + 1072) || *(a2 + 1080))
  {
    v46 = *(a2 + 1068);
    if (v46 >> 30 == 3 || *(a2 + 1068) != 2)
    {
      sub_10004565C("apfs superblock at index %u: apfs_doc_id_tree_type is invalid: %u\n", *(a2 + 36), v46);
      v15 = 92;
      sub_100049C40(0x414, 92);
      if (!sub_10004758C(qword_10009BA58, "Fix apfs_doc_id_tree_type? "))
      {
        return v15;
      }

      *(a2 + 1068) = 2;
      *a4 = 1;
    }
  }

  v47 = *(a2 + 1108);
  if (v47 >= 4)
  {
    sub_100045744("apfs superblock at index %u: unknown clone group tree flags: 0x%x\n", *(a2 + 36), v47);
    if (sub_10000ED68(a1, *(a2 + 1108), 3))
    {
      *(a2 + 1108) &= 3u;
      *a4 = 1;
    }

    sub_100049C40(0x5EC, -3);
  }

  return 0;
}

uint64_t sub_10004EB94(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 176);
  if (v6 < *(a2 + 40))
  {
    sub_10004565C("apfs_next_obj_id is not valid (expected %llu, actual %llu)\n", *(a2 + 40), v6);
    v7 = 92;
    sub_100049C40(0x2D, 92);
    if (!sub_10004758C(qword_10009BA58, "Fix apfs_next_obj_id(oid 0x%llx, xid 0x%llx)? ", *(a1 + 8), *(a1 + 16)))
    {
      return v7;
    }

    *(a1 + 176) = *(a2 + 40);
    *a3 = 1;
  }

  v8 = *(a1 + 960);
  if (v8 < *(a2 + 48))
  {
    sub_10004565C("apfs_next_doc_id is not valid (expected %u, actual %u)\n", *(a2 + 48), v8);
    v7 = 92;
    sub_100049C40(0x415, 92);
    if (!sub_10004758C(qword_10009BA58, "Fix apfs_next_doc_id(oid 0x%llx, xid 0x%llx)? ", *(a1 + 8), *(a1 + 16)))
    {
      return v7;
    }

    *(a1 + 960) = *(a2 + 48);
    *a3 = 1;
  }

  v9 = *(a1 + 184);
  if (v9 != *a2)
  {
    sub_100045744("apfs_num_files is not valid (expected %llu, actual %llu)\n", *a2, v9);
    sub_100049C40(0x2E, -8);
    if (sub_10004758C(qword_10009BA58, "Fix apfs_num_files(oid 0x%llx, xid 0x%llx)? ", *(a1 + 8), *(a1 + 16)))
    {
      *(a1 + 184) = *a2;
      *a3 = 1;
    }
  }

  v10 = *(a1 + 192);
  if (v10 != *(a2 + 8))
  {
    sub_100045744("apfs_num_directories is not valid (expected %llu, actual %llu)\n", *(a2 + 8), v10);
    sub_100049C40(0x2F, -8);
    if (sub_10004758C(qword_10009BA58, "Fix apfs_num_directories(oid 0x%llx, xid 0x%llx)? ", *(a1 + 8), *(a1 + 16)))
    {
      *(a1 + 192) = *(a2 + 8);
      *a3 = 1;
    }
  }

  v11 = *(a1 + 200);
  if (v11 != *(a2 + 16))
  {
    sub_100045744("apfs_num_symlinks is not valid (expected %llu, actual %llu)\n", *(a2 + 16), v11);
    sub_100049C40(0x30, -8);
    if (sub_10004758C(qword_10009BA58, "Fix apfs_num_symlinks(oid 0x%llx, xid 0x%llx)? ", *(a1 + 8), *(a1 + 16)))
    {
      *(a1 + 200) = *(a2 + 16);
      *a3 = 1;
    }
  }

  v12 = *(a1 + 208);
  if (v12 != *(a2 + 24))
  {
    sub_100045744("apfs_num_other_fsobjects is not valid (expected %llu, actual %llu)\n", *(a2 + 24), v12);
    sub_100049C40(0x31, -8);
    if (sub_10004758C(qword_10009BA58, "Fix apfs_num_other_fsobjects(oid 0x%llx, xid 0x%llx)? ", *(a1 + 8), *(a1 + 16)))
    {
      *(a1 + 208) = *(a2 + 24);
      *a3 = 1;
    }
  }

  v13 = *(a1 + 216);
  if (v13 != *(a2 + 32))
  {
    sub_100045744("apfs_num_snapshots is not valid (expected %llu, actual %llu)\n", *(a2 + 32), v13);
    sub_100049C40(0x32, -8);
    if (sub_10004758C(qword_10009BA58, "Fix apfs_num_snapshots(oid 0x%llx, xid 0x%llx)? ", *(a1 + 8), *(a1 + 16)))
    {
      *(a1 + 216) = *(a2 + 32);
      *a3 = 1;
    }
  }

  v14 = *(a1 + 1136);
  if (v14 >= *(a2 + 56))
  {
    return 0;
  }

  sub_10004565C("apfs_clonegroup_next_id is not valid (expected %llu, actual %llu)\n", *(a2 + 56), v14);
  v7 = 92;
  sub_100049C40(0x5ED, 92);
  if (sub_10004758C(qword_10009BA58, "Fix apfs_clonegroup_next_id(oid 0x%llx, xid 0x%llx)? ", *(a1 + 8), *(a1 + 16)))
  {
    v7 = 0;
    *(a1 + 1136) = *(a2 + 56);
    *a3 = 1;
  }

  return v7;
}

uint64_t sub_10004EEB8(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  v7 = a2[9];
  v8 = *a3;
  if (v7 > *(*(a1 + 8) + 40) - *a3)
  {
    sub_10004565C("apfs_fs_reserve_block_count brings total reserve block count beyond the container block count (max %llu, actual %llu)\n", *(*(a1 + 8) + 40) - *a3, v7);
    v9 = 92;
    sub_100049C40(0x449, 92);
    if (!sub_10004758C(qword_10009BA58, "Fix apfs_fs_reserve_block_count(oid 0x%llx, xid 0x%llx)? ", a2[1], a2[2]))
    {
      return v9;
    }

    v7 = 0;
    a2[9] = 0;
    *a4 = 1;
    v8 = *a3;
  }

  *a3 = v8 + v7;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v9 = sub_10004213C(a2[1], &v12);
  if (!v9)
  {
    v10 = a2[11];
    if (v10 != v12)
    {
      sub_100045744("apfs_fs_alloc_count is not valid (expected %llu, actual %llu)\n", v12, v10);
      sub_100049C40(0x367, -8);
      if (sub_10004758C(qword_10009BA58, "Fix apfs_fs_alloc_count(oid 0x%llx, xid 0x%llx)? ", a2[1], a2[2]))
      {
        v10 = v12;
        a2[11] = v12;
        *a4 = 1;
      }

      else
      {
        v10 = a2[11];
      }
    }

    if (a2[9] < v10)
    {
      v10 = a2[9];
    }

    a3[1] += v10;
  }

  return v9;
}

uint64_t sub_10004F00C(uint64_t a1, int a2, void *a3)
{
  memset(dst, 170, sizeof(dst));
  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v6;
  *&out[16] = v6;
  v7 = a3[5];
  if (v7)
  {
    uuid_copy(dst, (v7 + 240));
  }

  else
  {
    uuid_clear(dst);
  }

  uuid_unparse(dst, out);
  return sub_100047FFC(a1, a2, v8, v9, v10, v11, v12, v13, *a3, out);
}

char *sub_10004F0C8(char *result, uint64_t a2)
{
  v3 = result;
  if (*result != 5)
  {
    sub_100045744("apfs object (oid 0x%llx): crypto major version (%u) is not CP_CURRENT (%u)\n", *(a2 + 8), *result, 5);
    result = sub_100049C40(0xC, -6);
  }

  v4 = *(v3 + 1);
  if (v4)
  {
    sub_100045744("apfs object (oid 0x%llx): cpflags (%u) should be 0\n", *(a2 + 8), v4);

    return sub_100049C40(0xD, -3);
  }

  return result;
}

unint64_t sub_10004F16C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  v5 = a2 + a1;
  v6 = a4 + a3;
  if (a2 + a1 > a3)
  {
    v7 = v6 >= a1;
    v8 = v6 == a1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = !v8 && v7 && v5 >= a1;
  if (!v9 || v6 < a3)
  {
    return 0;
  }

  if (a1 <= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a1;
  }

  if (v5 >= v6)
  {
    v5 = a4 + a3;
  }

  if (a5)
  {
    *a5 = v11;
  }

  return v5 - v11;
}

uint64_t sub_10004F1B0(unint64_t a1)
{
  if (a1 > 0x8AC7230489E7FFFFLL)
  {
    return 19;
  }

  if (a1 > 0xDE0B6B3A763FFFFLL)
  {
    return 18;
  }

  if (a1 > 0x16345785D89FFFFLL)
  {
    return 17;
  }

  if (a1 > 0x2386F26FC0FFFFLL)
  {
    return 16;
  }

  if (a1 > 0x38D7EA4C67FFFLL)
  {
    return 15;
  }

  if (a1 > 0x5AF3107A3FFFLL)
  {
    return 14;
  }

  if (a1 > 0x9184E729FFFLL)
  {
    return 13;
  }

  if (a1 > 0xE8D4A50FFFLL)
  {
    return 12;
  }

  if (a1 > 0x174876E7FFLL)
  {
    return 11;
  }

  if (a1 > 0x2540BE3FFLL)
  {
    return 10;
  }

  if (a1 > 0x3B9AC9FF)
  {
    return 9;
  }

  if (a1 > 0x5F5E0FF)
  {
    return 8;
  }

  if (a1 > 0x98967F)
  {
    return 7;
  }

  if (a1 > 0xF423F)
  {
    return 6;
  }

  if (a1 >> 5 > 0xC34)
  {
    return 5;
  }

  if (a1 >> 4 > 0x270)
  {
    return 4;
  }

  if (a1 > 0x3E7)
  {
    return 3;
  }

  if (a1 <= 0x63)
  {
    return a1 > 9;
  }

  return 2;
}

uint64_t sub_10004F380(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if ((result & 0x3FFF | 0xC000) == result)
  {
    return result & 0x3FFF;
  }

  if (result < 0x6C)
  {
    return result;
  }

  result = 6;
  if (v1 > -536870194)
  {
    if (v1 > -536870182)
    {
      if (v1 <= -536870173)
      {
        if (v1 != -536870181)
        {
          if (v1 == -536870174)
          {
            return 1;
          }

          return 94;
        }

        return 28;
      }

      if (v1 == -536870172)
      {
        return result;
      }

      v3 = 745;
    }

    else
    {
      if (v1 <= -536870188)
      {
        if (v1 != -536870193)
        {
          if (v1 != -536870190)
          {
            return 94;
          }

          return 16;
        }

        return 30;
      }

      if (v1 == -536870187)
      {
        return 16;
      }

      v3 = 729;
    }

    if (v1 != (v3 | 0xE0000000))
    {
      return 94;
    }

    return result;
  }

  if (v1 > -536870207)
  {
    if (v1 <= -536870199)
    {
      if (v1 != -536870206)
      {
        if (v1 == -536870201)
        {
          return 45;
        }

        return 94;
      }

      return 22;
    }

    if (v1 == -536870198)
    {
      return 5;
    }

    v2 = 717;
LABEL_25:
    if (v1 == (v2 | 0xE0000000))
    {
      return 13;
    }

    return 94;
  }

  if (v1 == -536870211)
  {
    return 12;
  }

  if (v1 != -536870208)
  {
    v2 = 705;
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_10004F548(const void *a1, CC_LONG a2)
{
  *md = 0u;
  v8 = 0u;
  *&v6.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v6.wbuf[6] = v4;
  *&v6.wbuf[10] = v4;
  *&v6.hash[6] = v4;
  *&v6.wbuf[2] = v4;
  *v6.count = v4;
  *&v6.hash[2] = v4;
  CC_SHA256_Init(&v6);
  CC_SHA256_Update(&v6, a1, a2);
  CC_SHA256_Final(md, &v6);
  return *(&v8 + 1) & 0x1FFFFFFFFFFFFFLL;
}

uint64_t sub_10004F5EC(int a1, uint64_t a2, size_t a3, void *a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = a3;
    do
    {
      while (1)
      {
        v10 = read(a1, (a2 + v8), v9);
        if (v10 == -1)
        {
          break;
        }

        if (v10)
        {
          v8 += v10;
          v9 = a3 - v8;
          if (a3 > v8)
          {
            continue;
          }
        }

        goto LABEL_10;
      }
    }

    while (*__error() == 4);
    return *__error();
  }

  else
  {
    v8 = 0;
LABEL_10:
    result = 0;
    *a4 = v8;
  }

  return result;
}

uint64_t sub_10004F6BC()
{

  return ccder_blob_encode_implicit_raw_octet_string();
}

uint64_t sub_10004F6E4()
{

  return sub_1000526D8(v1 - 32, 0x8000000000000003, (v0 + 48), 40);
}

uint64_t sub_10004F740(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a12, uint64_t a10, uint64_t a11)
{

  return ccder_blob_decode_range();
}

uint64_t sub_10004F760()
{
  sub_10004FCC0(&unk_100078C18 != 0, 62, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_10004FCC0(sub_10004F8E8 != 0, 63, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return sub_10004F8E8();
}

uint64_t sub_10004F818(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_10004FCC0(&unk_100078C18 != 0, 70, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_10004FCC0(sub_10004F958 != 0, 71, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return sub_10004F958(a1, v2);
}

uint64_t sub_10004F8E8()
{
  v0 = ccrng();
  sub_10004FCC0(v0 != 0, 22, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  sub_10004FCC0(0, 23, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  return v0;
}

uint64_t sub_10004F958(uint64_t a1, unsigned int a2)
{
  v4 = sub_10004F760();
  v5 = (*v4)(v4, a2, a1) == 0;

  return sub_10004FCC0(v5, 31, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
}

unint64_t sub_10004F9B4(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return info.numer * a1 / info.denom;
}

BOOL sub_10004F9F4(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = *a1++;
    v2 |= v3;
    --a2;
  }

  while (a2);
  return v2 != 0;
}

uint64_t sub_10004FA20(const char *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a1;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__str = 0u;
  v17 = 0u;
  v5 = &__stdoutp;
  if (a3 >= 0x41)
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %sdump %s (len = %zd)%s%s\n", "aks", &byte_10005C3F3, -1, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, "dump_bytes_internal", ":", 844, &byte_10005C3F3, &byte_10005C3F3, a1, a3, &byte_10005C3F3, &byte_10005C3F3);
    v4 = &byte_10005C3F3;
  }

  else if (!a3)
  {
    return memset_s(__str, 0x81uLL, 0, 0x81uLL);
  }

  v6 = 0;
  v15 = v3;
  do
  {
    v7 = v5;
    if (v3 - v6 >= 0x40)
    {
      v8 = 64;
    }

    else
    {
      v8 = v3 - v6;
    }

    if (v3 != v6)
    {
      v9 = (a2 + v6);
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      v11 = __str;
      do
      {
        v12 = *v9++;
        snprintf(v11, 3uLL, "%02x", v12);
        v11 += 2;
        --v10;
      }

      while (v10);
    }

    v5 = v7;
    fprintf(*v7, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %s%s%s[%04zu,%04zu): %s%s%s%s\n", "aks", &byte_10005C3F3, -1, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, "dump_bytes_internal", ":", 854, &byte_10005C3F3, &byte_10005C3F3, v4, &byte_10005C3F3, v6, v8 + v6, &byte_10005C3F3, __str, &byte_10005C3F3, &byte_10005C3F3);
    v6 += v8;
    v3 = v15;
  }

  while (v6 < v15);
  return memset_s(__str, 0x81uLL, 0, 0x81uLL);
}

_BYTE *sub_10004FC10(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 0x10)
  {
    v2 = 16;
  }

  else
  {
    v2 = a2;
  }

  if (a2)
  {
    v4 = byte_10009B0C0;
    v5 = v2;
    do
    {
      v6 = *a1++;
      snprintf(v4, 3uLL, "%02x", v6);
      v4 += 2;
      --v5;
    }

    while (v5);
  }

  byte_10009B0C0[2 * v2] = 0;
  return byte_10009B0C0;
}

uint64_t sub_10004FCA4(uint64_t result)
{
  if (result == 0 || result >= 0xFFFFFFDA)
  {
    return dword_100077174[(result + 38)];
  }

  return result;
}

uint64_t sub_10004FCC0(uint64_t result, int a2, const char *a3)
{
  if ((result & 1) == 0)
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed REQUIRE condition (%s:%d)\n%s\n", "aks", &byte_10005C3F3, -1, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, "REQUIRE_func", ":", 1134, &byte_10005C3F3, a3, a2, &byte_10005C3F3);
    abort();
  }

  return result;
}

uint64_t sub_10004FD4C(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a1 = off_10007CE90;
  return result;
}

uint64_t sub_10004FD70(uint64_t a1, void *a2, unint64_t *a3, const unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = 0;
  }

  v11[2] = v6;
  v11[3] = v7;
  v11[0] = v8;
  v11[1] = 0;
  if (!a2)
  {
    a2 = &unk_100077210;
  }

  v9 = sub_100050734(v11, a2, a3, a4, a5, a6);
  return sub_10004FCA4(v9);
}

uint64_t sub_10004FDBC(uint64_t a1, void *a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  if (a1)
  {
    v10 = *(a1 + 8);
  }

  else
  {
    v10 = 0;
  }

  v14[2] = v5;
  v14[3] = v6;
  v14[0] = v10;
  v14[1] = 0;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = &unk_100077210;
  }

  v12 = sub_100050A28(v14, 0, v11, a3, a4, 0, a5);
  return sub_10004FCA4(v12);
}

uint64_t sub_10004FE1C(uint64_t a1, uint64_t a2, void *a3, const unsigned __int8 *a4, uint64_t a5)
{
  if (a1)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v7 = 0;
  }

  v10[2] = v5;
  v10[3] = v6;
  v10[0] = v7;
  v10[1] = 0;
  if (!a3)
  {
    a3 = &unk_100077210;
  }

  v8 = sub_100050DB0(v10, a2, a3, a4, a5);
  return sub_10004FCA4(v8);
}

uint64_t sub_10004FE68(uint64_t a1, void *a2, unint64_t *a3, const unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = 0;
  }

  v11[2] = v6;
  v11[3] = v7;
  v11[0] = v8;
  v11[1] = 0;
  if (!a2)
  {
    a2 = &unk_100077210;
  }

  v9 = sub_100053910(v11, a2, a3, a4, a5, a6);
  return sub_10004FCA4(v9);
}

uint64_t sub_10004FEB4(uint64_t a1, int a2, uint64_t *a3)
{
  if (a1)
  {
    v5 = *(a1 + 8);
  }

  else
  {
    v5 = 0;
  }

  v8[2] = v3;
  v8[3] = v4;
  v8[0] = v5;
  v8[1] = 0;
  v6 = sub_100052360(v8, a2, a3);
  return sub_10004FCA4(v6);
}

uint64_t sub_10004FF08(uint64_t a1, void *a2, _DWORD *a3)
{
  if (a1)
  {
    v5 = *(a1 + 8);
  }

  else
  {
    v5 = 0;
  }

  v8[2] = v3;
  v8[3] = v4;
  v8[0] = v5;
  v8[1] = 0;
  v6 = sub_100052FC0(v8, a2, a3);
  return sub_10004FCA4(v6);
}

uint64_t sub_10004FF44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  if (a1)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v9 = 0;
  }

  v12[2] = v7;
  v12[3] = v8;
  v12[0] = v9;
  v12[1] = 0;
  if (!a4)
  {
    a4 = &unk_100077210;
  }

  v10 = sub_100050024(v12, a2, a3, a4, a5, a6, a7);
  return sub_10004FCA4(v10);
}

uint64_t sub_10004FF90(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  if (a1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = 0;
  }

  v11[2] = v6;
  v11[3] = v7;
  v11[0] = v8;
  v11[1] = 0;
  if (!a3)
  {
    a3 = &unk_100077210;
  }

  v9 = sub_100050A28(v11, a2, a3, a4, a5, 0, a6);
  return sub_10004FCA4(v9);
}

uint64_t sub_10004FFEC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    return (sub_10004FFE8)(a1, a3, a4, a5, a6);
  }

  else
  {
    return (sub_10004FFE4)(a1, a3, a4, a5, a6);
  }
}

uint64_t sub_100050024(uint64_t *a1, int a2, uint64_t a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v12 = 4294967284;
  if (a2 > 9)
  {
    if (a2 <= 11)
    {
      if (a2 == 10)
      {
        return 0;
      }
    }

    else if (a2 != 22 && a2 != 15)
    {
      if (a2 != 12)
      {
        return v12;
      }

      goto LABEL_4;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v41 = 0u;
    memset(v42, 0, sizeof(v42));
    v40 = 0u;
    if (a5)
    {
      if (*a5 && (v16 = a5[1]) != 0 && (v17 = sub_100052174(*a5, *a5 + v16, &v40, 1), v17))
      {
        v12 = v17;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0xFFFFFFFFLL;
    }

LABEL_30:
    memset_s(&v40, 0xB0uLL, 0, 0xB0uLL);
    return v12;
  }

  if (a2 > 4)
  {
    if (a2 != 7)
    {
      if (a2 == 5)
      {
        sub_1000543F4(a6, &v40);
      }

      else
      {
        if (a2 != 6)
        {
          return v12;
        }

        sub_100054354(a6, &v40);
      }

      return v40;
    }

    v19 = *a1;
    *&v39[0] = 0;
    __s = 0u;
    v59 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v41 = 0u;
    memset(v42, 0, sizeof(v42));
    v40 = 0u;
    v57[0] = 0uLL;
    if (a4 && *a4 && a4[1])
    {
      if (!a5)
      {
        goto LABEL_39;
      }

      v20 = *a5;
      if (!*a5)
      {
        goto LABEL_39;
      }

      v21 = a5[1];
      if (!v21)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (!a5)
      {
        goto LABEL_50;
      }

      v20 = *a5;
      if (!*a5)
      {
        goto LABEL_50;
      }

      v21 = a5[1];
      if (!v21)
      {
        goto LABEL_50;
      }

      if (!a4)
      {
LABEL_39:
        v12 = 4294967285;
        goto LABEL_51;
      }
    }

    v22 = sub_100052354(v20, v20 + v21, &v40);
    if (v22 || (v22 = sub_100053CB4(a4, &v40, &__s, v39, v19, v57), v22) || (v19 & 8) != 0 && (v22 = sub_10004FD44(), v22))
    {
      v12 = v22;
      goto LABEL_51;
    }

LABEL_50:
    v12 = 0;
LABEL_51:
    memset_s(&__s, 0x20uLL, 0, 0x20uLL);
    if (*&v57[0])
    {
      memset_s(*&v57[0], *(&v57[0] + 1), 0, *(&v57[0] + 1));
      free(*&v57[0]);
    }

    goto LABEL_30;
  }

  if ((a2 - 1) >= 4)
  {
    return v12;
  }

LABEL_4:
  v13 = *a1;
  v35 = 0;
  __s = 0u;
  v59 = 0u;
  memset(v57, 0, sizeof(v57));
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
  v43 = 0u;
  v41 = 0u;
  memset(v42, 0, sizeof(v42));
  v40 = 0u;
  memset(v39, 0, sizeof(v39));
  v33 = 0;
  __n = 0;
  __count = 0;
  memset(dst, 0, sizeof(dst));
  v37 = 0uLL;
  v31 = 0;
  v14 = sub_100052360(0, 1, &__count);
  if (v14)
  {
    goto LABEL_98;
  }

  if (!__count)
  {
    goto LABEL_108;
  }

  if (!a6 || !*a6)
  {
    v12 = 4294967285;
    goto LABEL_22;
  }

  v12 = 4294967285;
  if (a7)
  {
    v15 = a6[1];
    if (v15)
    {
      v14 = sub_100051FB4(*a6, *a6 + v15, &v40);
      if (v14)
      {
        goto LABEL_98;
      }

      if ((v13 & 0x40) != 0)
      {
        if (a5 && a5[1] == 16)
        {
          uuid_copy(dst, *a5);
LABEL_15:
          v12 = 4294967284;
          goto LABEL_22;
        }

        goto LABEL_22;
      }

      v14 = sub_100052E70(v13, 1, a4, a5, &__s, &v35, &v31, dst, &v37, &v33);
      if (v14)
      {
        goto LABEL_98;
      }

      if (a2 != 3)
      {
        if (a2 == 2)
        {
          if (BYTE5(v42[0]) != 1)
          {
            sub_100054570();
          }
        }

        else if (a2 == 1 && BYTE5(v42[0]) != 1)
        {
          sub_1000545D8();
        }

        goto LABEL_15;
      }

      if (BYTE5(v42[0]) != 1)
      {
        if (BYTE5(v42[0]))
        {
          goto LABEL_15;
        }

        if ((v42[0] & 0x1000) != 0)
        {
          if ((v42[0] & 2) != 0)
          {
            goto LABEL_15;
          }

          if (((v31 ^ LODWORD(v42[0])) & 1) == 0)
          {
            v14 = sub_10005285C(0, 0, &v40, v57);
            if (!v14)
            {
              v14 = sub_10005419C(&v40, &__s, v35, v57);
              if (!v14)
              {
                *(v42 + 6) = v37;
                goto LABEL_74;
              }
            }

LABEL_98:
            v12 = v14;
            goto LABEL_22;
          }

          fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s kek and unmanaged vek device protection mismatch vek:%x, kek:%x%s\n", "aks", &byte_10005C3F3, -1, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, "_cmd_handle_vek", ":", 2811, &byte_10005C3F3, LODWORD(v42[0]), v31, &byte_10005C3F3);
LABEL_105:
          v12 = 4294967287;
          goto LABEL_22;
        }

LABEL_101:
        v12 = 4294967288;
        goto LABEL_22;
      }

      if ((v56 & 2) != 0)
      {
        goto LABEL_101;
      }

      if ((v31 & 1) == 0)
      {
        goto LABEL_105;
      }

      v14 = sub_10005285C(0, 0, &v40, v57);
      if (v14)
      {
        goto LABEL_98;
      }

      LODWORD(v29) = 0;
      if (sub_10004F9F4(&__s, 32))
      {
        if (sub_10004F9F4(v57, 32))
        {
          if (*(&v40 + 1))
          {
            goto LABEL_15;
          }

          LODWORD(v56) = v56 | 2;
          v36 = 40;
          if (!sub_100054640(0x20u, &v29) || v29 > 0x28)
          {
            goto LABEL_22;
          }

          if (sub_10005136C(&__s, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, v57, 0x20u, &v45, &v36))
          {
            goto LABEL_109;
          }

          if (v42[0])
          {
            v28 = sub_10004FFE8;
            if ((v42[0] & 0x2000) == 0)
            {
              v28 = sub_10004FFE4;
            }

            if (((v28)(1, &unk_10009B578, &v45, &v45, 32) & 1) == 0)
            {
LABEL_109:
              v12 = 0xFFFFFFFFLL;
              goto LABEL_22;
            }
          }

          *(v42 + 6) = v37;
          if (*(&v40 + 1))
          {
            goto LABEL_15;
          }

          LODWORD(v56) = v56 & 0xFFFFFFFE;
LABEL_74:
          v23 = calloc(__count, 1uLL);
          if (!v23)
          {
            v12 = 4294967279;
            goto LABEL_22;
          }

          v24 = v23;
          v29 = v23;
          v30 = &v23[__count];
          if (!sub_1000519E4(&v29, &v40))
          {
            v12 = 4294967273;
            goto LABEL_97;
          }

          v25 = v30;
          v26 = &v24[__count] - v30;
          v27 = *a7;
          if (*a7)
          {
            if (v26 > *(a7 + 8))
            {
              v12 = 0xFFFFFFFFLL;
LABEL_97:
              memset_s(v24, __count, 0, __count);
              free(v24);
              goto LABEL_22;
            }
          }

          else
          {
            v27 = calloc(&v24[__count] - v30, 1uLL);
            if (!v27)
            {
              v12 = 4294967279;
              goto LABEL_97;
            }

            *a7 = v27;
            v25 = v30;
          }

          *(a7 + 8) = v26;
          memcpy(v27, &v24[v25 - v29], v26);
          v12 = 0;
          goto LABEL_97;
        }

        sub_100054508();
      }

      else
      {
        sub_1000544A0();
      }

LABEL_108:
      v12 = 4294967286;
    }
  }

LABEL_22:
  memset_s(&__s, 0x20uLL, 0, 0x20uLL);
  memset_s(v57, 0x20uLL, 0, 0x20uLL);
  memset_s(v39, 0x20uLL, 0, 0x20uLL);
  if (v33)
  {
    memset_s(v33, __n, 0, __n);
    free(v33);
  }

  return v12;
}

uint64_t sub_100050734(void *a1, uint64_t a2, unint64_t *a3, const unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  memset(v35, 0, sizeof(v35));
  *v27 = 32;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  memset(__s, 0, sizeof(__s));
  __count = 0;
  v12 = a3 && *a3 && a3[1] != 0;
  v33 = 0uLL;
  v34 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
  v13 = sub_100052360(0, 1, &__count);
  if (v13)
  {
    goto LABEL_29;
  }

  if (!__count)
  {
    v14 = 4294967286;
    goto LABEL_30;
  }

  v14 = 4294967285;
  if (!a4 || !a5 || !*a5 || __count > *(a5 + 8))
  {
    goto LABEL_30;
  }

  if (v12)
  {
    if (!a3)
    {
      goto LABEL_30;
    }

    if (!*a3)
    {
      goto LABEL_30;
    }

    v15 = a3[1];
    if (!v15)
    {
      goto LABEL_30;
    }

    v13 = sub_100052354(*a3, *a3 + v15, __s);
    if (!v13)
    {
      v13 = sub_100053CB4(a2, __s, v35, v27, *a1, 0);
      if (!v13)
      {
        v13 = sub_1000533EC(a4, WORD4(__s[1]) & 0x2809, v35, *v27, v29, &v31);
        if (!v13)
        {
          *(&v29[2] + 6) = *(&__s[1] + 14);
          goto LABEL_19;
        }
      }
    }

    goto LABEL_29;
  }

  v13 = sub_1000533EC(a4, 0, 0, 0, v29, &v31);
  if (v13)
  {
LABEL_29:
    v14 = v13;
LABEL_30:
    memset_s(__s, 0xB0uLL, 0, 0xB0uLL);
    goto LABEL_27;
  }

LABEL_19:
  v16 = calloc(__count, 1uLL);
  if (!v16)
  {
    v14 = 4294967279;
    goto LABEL_30;
  }

  v17 = v16;
  v24 = v16;
  v25 = &v16[__count];
  if (sub_1000519E4(&v24, v29))
  {
    v18 = v25;
    v19 = v24;
    v20 = &v17[__count] - v25;
    *(a5 + 8) = v20;
    memcpy(*a5, &v18[v17 - v19], v20);
    if (a6)
    {
      v21 = *a6;
      if (*a6 && *(a6 + 8) >= 0x20uLL)
      {
        v14 = 0;
        *(a6 + 8) = 32;
        v22 = v32;
        *v21 = v31;
        v21[1] = v22;
      }

      else
      {
        v14 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 4294967273;
  }

  memset_s(__s, 0xB0uLL, 0, 0xB0uLL);
  memset_s(v17, __count, 0, __count);
  free(v17);
LABEL_27:
  memset_s(v35, 0x20uLL, 0, 0x20uLL);
  memset_s(&v31, 0x40uLL, 0, 0x40uLL);
  return v14;
}

uint64_t sub_100050A28(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7)
{
  memset(__s, 0, 32);
  v28 = 32;
  v34 = 0;
  v32 = 0u;
  memset(v33, 0, sizeof(v33));
  v31 = 0u;
  v9 = a4 && *a4 && *(a4 + 8) != 0;
  v37 = 0uLL;
  v38 = 0uLL;
  v35 = 0uLL;
  v36 = 0uLL;
  v26 = 0;
  __n = 0;
  memset(v30, 0, sizeof(v30));
  memset(dst, 0, sizeof(dst));
  v25 = 0;
  if (!a5 || !*a5 || (v10 = a5[1]) == 0)
  {
LABEL_46:
    v12 = 4294967285;
    goto LABEL_13;
  }

  if (v9)
  {
    v11 = *a1;
    if ((v11 & 0x40) != 0)
    {
      if (a4 && *(a4 + 8) == 16)
      {
        uuid_copy(dst, *a4);
        v12 = 4294967284;
        goto LABEL_13;
      }

      goto LABEL_46;
    }

    v14 = sub_100052E70(v11, (a2 >> 1) & 1, a3, a4, __s, &v28, &v25, dst, v30, &v26);
    if (v14)
    {
      goto LABEL_47;
    }

    v14 = sub_100051FB4(*a5, *a5 + a5[1], &v31);
    if (v14)
    {
      goto LABEL_47;
    }

    v15 = __s;
  }

  else
  {
    v14 = sub_100051FB4(*a5, *a5 + v10, &v31);
    if (v14)
    {
LABEL_47:
      v12 = v14;
      goto LABEL_13;
    }

    uuid_copy(v30, v33 + 6);
    v15 = 0;
  }

  if (v9)
  {
    v16 = v28;
  }

  else
  {
    v16 = 0;
  }

  v14 = sub_10005285C(v15, v16, &v31, &v35);
  if (v14)
  {
    goto LABEL_47;
  }

  if (!a7)
  {
LABEL_25:
    v12 = 0;
    v13 = "successful";
    goto LABEL_26;
  }

  v17 = *a7;
  if (*a7 && *(a7 + 8) >= 0x20uLL)
  {
    *(a7 + 8) = 32;
    v18 = v36;
    *v17 = v35;
    v17[1] = v18;
    goto LABEL_25;
  }

  v12 = 0xFFFFFFFFLL;
LABEL_13:
  v42 = 0uLL;
  if ((byte_10009B570 & 1) == 0)
  {
    v13 = "failed";
LABEL_26:
    v42 = v32;
    goto LABEL_34;
  }

  v40 = 0;
  v41[0] = 0;
  *(v41 + 6) = 0;
  if (v9)
  {
    sub_10004FA20("kek group", v30, 0x10uLL);
  }

  if (a5)
  {
    if (*a5)
    {
      v19 = a5[1];
      if (v19)
      {
        sub_100051C2C(*a5, *a5 + v19, &v40, 0, 0, &v42, 0, 1);
        sub_10004FA20("vek group", &v40 + 6, 0x10uLL);
      }
    }
  }

  v13 = "failed";
LABEL_34:
  v20 = __stdoutp;
  if (v9)
  {
    v21 = dst;
  }

  else
  {
    v21 = &v42;
  }

  if (v9)
  {
    v22 = "user";
  }

  else
  {
    v22 = "volume";
  }

  v23 = sub_10004FC10(v21, 0x10uLL);
  fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %s %s unlock %s (%d)%s\n", "aks", &byte_10005C3F3, -1, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, "_unlock_result", ":", 4034, &byte_10005C3F3, v22, v23, v13, v12, &byte_10005C3F3);
  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  memset_s(&v35, 0x40uLL, 0, 0x40uLL);
  if (v26)
  {
    memset_s(v26, __n, 0, __n);
    free(v26);
  }

  return v12;
}

uint64_t sub_100050DC4(_BYTE *a1, int a2, uint64_t a3, const unsigned __int8 *a4, const unsigned __int8 *a5, __int128 *a6, uint64_t a7)
{
  v12 = a2;
  memset(__s, 0, sizeof(__s));
  if ((a2 & 8) != 0)
  {
    v14 = 10249;
  }

  else
  {
    v14 = (a2 << 9) & 0x800;
  }

  __count = 0;
  v15 = sub_100052360(0, 2, &__count);
  if (v15)
  {
    goto LABEL_16;
  }

  if (!__count)
  {
    v21 = 4294967286;
    goto LABEL_19;
  }

  if (!a7 || !*a7 || __count > *(a7 + 8))
  {
    v21 = 4294967285;
LABEL_19:
    memset_s(__s, 0xB0uLL, 0, 0xB0uLL);
    return v21;
  }

  v15 = sub_100053584(a5, a4, v14 | v12 & 1u, a3, a6, __s, *a1 & 4);
  if (v15)
  {
LABEL_16:
    v21 = v15;
    goto LABEL_19;
  }

  v16 = calloc(__count, 1uLL);
  if (!v16)
  {
    v21 = 4294967279;
    goto LABEL_19;
  }

  v17 = v16;
  v23 = v16;
  v24 = &v16[__count];
  if (sub_100051FC0(&v23, __s))
  {
    v18 = v24;
    v19 = v23;
    v20 = &v17[__count] - v24;
    *(a7 + 8) = v20;
    memcpy(*a7, &v18[v17 - v19], v20);
    v21 = 0;
  }

  else
  {
    v21 = 4294967273;
  }

  memset_s(__s, 0xB0uLL, 0, 0xB0uLL);
  memset_s(v17, __count, 0, __count);
  free(v17);
  return v21;
}

uint64_t sub_100050FD8(void *a1)
{

  return memset_s(a1, 0x20uLL, 0, 0x20uLL);
}

uint64_t sub_100051004(void *a1)
{

  return memset_s(a1, 0xB0uLL, 0, 0xB0uLL);
}

uint64_t sub_10005106C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unint64_t a6, void *a7, void *a8)
{
  v43 = a1;
  v44 = a3;
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_encrypt_mode();
  __chkstk_darwin(v14);
  v45 = &v36 - v15;
  bzero(&v36 - v15, v15);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  bzero(&v36 - v17, v17);
  v19 = 0xFFFFFFFFLL;
  if (HIDWORD(a6) || (a6 - 40) < 0xFFFFFFE0)
  {
    goto LABEL_31;
  }

  v38 = &v36;
  v39 = a8;
  v40 = a6;
  v37 = a7;
  if (!a4)
  {
    v20 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v20 || !a8 || *a8 < a6 + 8)
    {
      sub_100054668(__s);
      goto LABEL_32;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v39 >= v40 + 8)
  {
LABEL_15:
    v21 = v40 >> 3;
    if (v40 >> 3 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    v23 = 8;
    v24 = v22;
    do
    {
      v25 = *a5++;
      *(__s + v23) = v25;
      v23 += 16;
      --v24;
    }

    while (v24);
    v26 = 0;
    *&__s[0] = v44;
    v27 = 1;
    v41 = v21;
    v42 = v22;
    do
    {
      v43 = v27;
      v44 = v26;
      v28 = __s;
      v29 = 1;
      do
      {
        if (a4)
        {
          if ((a4(1, &unk_10009B578, v28, v28, 16) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          cccbc_clear_iv();
          sub_100051060(v14, v45, v18, 0x10uLL);
        }

        v30 = *v28;
        v28 += 2;
        *&__s[v29 % v21] = v30 ^ bswap64(v27++);
        ++v29;
        --v22;
      }

      while (v22);
      v26 = v44 + 1;
      v22 = v42;
      v27 = v43 + v41;
    }

    while (v44 != 5);
    v31 = v37;
    *v37 = *&__s[0];
    v32 = v31 + 1;
    v33 = __s + 1;
    do
    {
      v34 = *v33;
      v33 += 2;
      *v32++ = v34;
      --v22;
    }

    while (v22);
    v19 = 0;
    *v39 = (v40 & 0x38) + 8;
LABEL_31:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      return v19;
    }

LABEL_32:
    cc_clear();
    return v19;
  }

LABEL_6:
  sub_100054668(__s);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10005136C(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = sub_10005106C(a1, a2, a3, a4, a5, a6, a7, &v11);
  sub_10004FCC0(HIDWORD(v11) == 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

uint64_t sub_1000513D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unint64_t a6, void *a7, void *a8)
{
  v40 = a3;
  v46 = a1;
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_decrypt_mode();
  __chkstk_darwin(v14);
  v47 = &v38 - v15;
  bzero(&v38 - v15, v15);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  bzero(&v38 - v17, v17);
  v19 = 0xFFFFFFFFLL;
  if (HIDWORD(a6))
  {
    goto LABEL_33;
  }

  v45 = a6;
  v20 = a6 >> 3;
  if (v20 - 6 < 0xFFFFFFFC)
  {
    goto LABEL_33;
  }

  v41 = &v38;
  v42 = a8;
  v39 = a7;
  if (!a4)
  {
    v21 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v21 || !a8 || *a8 < v45 - 8)
    {
      sub_100054668(__s);
      goto LABEL_34;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v42 >= v45 - 8)
  {
LABEL_15:
    *&__s[0] = *a5;
    v22 = v20 - 1;
    if (v20 != 1)
    {
      v23 = __s + 1;
      v24 = a5 + 1;
      v25 = v20 - 1;
      do
      {
        v26 = *v24++;
        *v23 = v26;
        v23 += 2;
        --v25;
      }

      while (v25);
    }

    v27 = 6 * v20 - 6;
    v44 = 1 - v20;
    v28 = 5;
    v43 = &__s[v20 - 2];
    do
    {
      LODWORD(v46) = v28;
      if (v45 >= 0x10)
      {
        v29 = v43;
        v30 = v20 - 1;
        v31 = v27;
        do
        {
          *v29 = *&__s[v30 % v22] ^ bswap64(v31);
          if (a4)
          {
            if ((a4(0, &unk_10009B578, v29, v29, 16) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            cccbc_clear_iv();
            sub_100051060(v14, v47, v18, 0x10uLL);
          }

          --v31;
          v29 -= 2;
          v32 = __OFSUB__(v30--, 1);
        }

        while (!((v30 < 0) ^ v32 | (v30 == 0)));
      }

      v28 = v46 - 1;
      v27 += v44;
    }

    while (v46);
    if (*&__s[0] == v40)
    {
      v33 = v39;
      if (v20 != 1)
      {
        v34 = __s + 1;
        v35 = v20 - 1;
        do
        {
          v36 = *v34;
          v34 += 2;
          *v33++ = v36;
          --v35;
        }

        while (v35);
      }

      v19 = 0;
      *v42 = 8 * v22;
    }

    else
    {
      v19 = 0xFFFFFFFFLL;
    }

LABEL_33:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      return v19;
    }

LABEL_34:
    cc_clear();
    return v19;
  }

LABEL_6:
  sub_100054668(__s);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100051720(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = sub_1000513D8(a1, a2, a3, a4, a5, a6, a7, &v11);
  sub_10004FCC0(HIDWORD(v11) == 0, 261, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

BOOL sub_10005178C(unsigned int a1, unsigned int *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

BOOL sub_1000517A0(unint64_t a1, unint64_t *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

uint64_t sub_1000517B4(void *a1)
{

  return memset_s(a1, 0x40uLL, 0, 0x40uLL);
}

uint64_t sub_100051880(uint64_t result)
{
  v1 = *(result + 120);
  if ((v1 & 0x20) == 0)
  {
    v2 = result;
    if (!memcmp((result + 8), &unk_100077144, 0x10uLL))
    {
      sub_10004F694();
      result = fprintf(v5, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s personal recovery key%s\n", "aks", v6);
    }

    else if (!memcmp((v2 + 8), &unk_100077154, 0x10uLL))
    {
      sub_10004F694();
      result = fprintf(v7, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s icloud recovery key%s\n", "aks", v8);
    }

    else
    {
      result = memcmp((v2 + 8), &unk_100077164, 0x10uLL);
      if (result)
      {
LABEL_9:
        *(v2 + 120) = v1 | 0x20;
        return result;
      }

      sub_10004F694();
      result = fprintf(v3, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s institutional recovery key%s\n", "aks", v4);
    }

    v1 = *(v2 + 120) | 0x10;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1000519E4(uint64_t *a1, uint64_t a2)
{
  v8 = 0u;
  memset(v7, 0, sizeof(v7));
  v5 = *a1;
  v4 = a1[1];
  if (*(a2 + 37))
  {
    sub_10004F818(&v8 + 8, 8);
  }

  else
  {
    *(&v8 + 1) = *a2;
  }

  if (*(a2 + 8) || *(a2 + 37))
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s error %d%s\n", "aks", &byte_10005C3F3, -1, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, "fv_encode_vek_blob", ":", 775, &byte_10005C3F3, -12, &byte_10005C3F3);
    return 0;
  }

  else
  {
    result = sub_10004F6BC();
    if (result)
    {
      sub_10004F6A8();
      result = ccder_blob_encode_implicit_raw_octet_string();
      if (result)
      {
        result = ccder_blob_encode_implicit_raw_octet_string();
        if (result)
        {
          result = ccder_blob_encode_implicit_uint64();
          if (result)
          {
            result = ccder_blob_encode_tl();
            if (result)
            {
              result = sub_100051B94(a1, v7, *(a2 + 32), v5 + a1[1] - *a1, v4 - a1[1]);
              if (result)
              {
                return ccder_blob_encode_tl();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100051B94(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2)
  {
    return 0;
  }

  a2[1] = a4;
  a2[2] = a5;
  if (!sub_100052540(a2, a3, 0))
  {
    return 0;
  }

  sub_10004F6A8();
  if (!ccder_blob_encode_implicit_raw_octet_string() || !ccder_blob_encode_implicit_raw_octet_string())
  {
    return 0;
  }

  return ccder_blob_encode_implicit_uint64();
}

uint64_t sub_100051C2C(unint64_t a1, unint64_t a2, unsigned int *a3, _OWORD *a4, void *a5, _OWORD *a6, void *a7, int a8)
{
  v43.n128_u64[0] = a1;
  v43.n128_u64[1] = a2;
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  if (a1 == a2)
  {
    return 4294967277;
  }

  v42 = 0;
  v46 = 0uLL;
  if (!ccder_blob_decode_range())
  {
    return 4294967277;
  }

  if (sub_10005274C(&v43, 0x8000000000000000, v47, v14, v15, v16, v17, v18, v19, v20))
  {
    if (*&v47[0])
    {
      return 4294967277;
    }
  }

  else
  {
    *&v47[0] = 0;
  }

  if (!sub_1000526D8(&v43, 0x8000000000000001, &v47[1] + 8, 32))
  {
    return 4294967277;
  }

  if (!sub_1000526D8(&v43, 0x8000000000000002, &v48 + 8, 8))
  {
    return 4294967277;
  }

  v21 = v43.n128_u64[0];
  __src[0] = 0;
  v45 = 0;
  if (!ccder_blob_decode_tag())
  {
    return 4294967277;
  }

  if (!ccder_blob_decode_len())
  {
    return 4294967277;
  }

  if ((v45 & 0xFFFFFFFFFFFFFFEFLL) != 0xA000000000000003)
  {
    return 4294967277;
  }

  *(&v47[0] + 1) = v21;
  *&v47[1] = __src[0] + v43.n128_u64[0] - v21;
  if (!sub_10005274C(&v43, 0x8000000000000000, &v42, v22, v23, v24, v25, v26, v27, v28))
  {
    return 4294967277;
  }

  if (!sub_1000526D8(&v43, 0x8000000000000001, &v46, 16))
  {
    return 4294967277;
  }

  v45 = 0;
  *__src = v43;
  if (!ccder_blob_decode_tl())
  {
    return 4294967277;
  }

  v36 = v45;
  if (v45 > 4)
  {
    v37 = __src[0];
    if (v45 >= 0x16)
    {
      v38 = 22;
    }

    else
    {
      v38 = v45;
    }

    memcpy(a3, __src[0], v38);
    v43.n128_u64[0] = v37 + v36;
  }

  else
  {
    v44 = 0;
    if (sub_10005274C(&v43, 0x8000000000000002, &v44, v29, v30, v31, v32, v33, v34, v35))
    {
      *a3 = v44;
    }
  }

  v39 = *a3;
  *__src = 0u;
  v50 = 0u;
  if (*&v47[0])
  {
    v40 = 4294967284;
  }

  else
  {
    v40 = 4294967290;
    if (sub_100052540(v47, v39, __src))
    {
      if (!memcmp(__src, &v47[1] + 8, 0x20uLL))
      {
        v40 = 0;
      }

      else
      {
        v40 = 4294967290;
      }
    }
  }

  if (((v40 == -6) & ~a8) != 0 || !v40)
  {
    if (a5)
    {
      *a5 = v42;
    }

    if (a6)
    {
      *a6 = v46;
    }

    if (a4)
    {
      *a4 = v43;
    }

    if (a7)
    {
      if (*&v47[0])
      {
        return 4294967284;
      }

      else
      {
        v40 = 0;
        *a7 = *(&v48 + 1);
      }
    }

    else
    {
      return 0;
    }
  }

  return v40;
}

uint64_t sub_100051EFC(unint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v6 = 0uLL;
  if (a1 == a2)
  {
    return 4294967277;
  }

  result = sub_100051C2C(a1, a2, (a3 + 32), &v6, (a3 + 8), (a3 + 16), a3, a4);
  if (result)
  {
    return result;
  }

  if (*(a3 + 36))
  {
    if (*(a3 + 36) == 1)
    {
      goto LABEL_7;
    }

    return 4294967277;
  }

  if ((*(a3 + 32) & 4) != 0)
  {
    return 4294967277;
  }

  *(a3 + 36) = 1;
LABEL_7:
  if (*(a3 + 8) || *(a3 + 37))
  {
    return 4294967284;
  }

  if (sub_1000526D8(&v6, 0x8000000000000003, (a3 + 56), 40))
  {
    return 0;
  }

  return 4294967277;
}

uint64_t sub_100051FC0(uint64_t *a1, uint64_t a2)
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  v5 = *a1;
  v4 = a1[1];
  v7 = 0;
  sub_10004F818(&v11, 8);
  if (*a2)
  {
    return 0;
  }

  if ((*(a2 + 24) & 0x80) == 0 || (result = ccder_blob_encode_implicit_uint64(), result))
  {
    if (*(a2 + 29) == 1)
    {
      result = sub_10004F6BC();
      if (!result)
      {
        return result;
      }

      goto LABEL_12;
    }

    if (*(a2 + 29))
    {
      return 0;
    }

    result = ccder_blob_encode_implicit_raw_octet_string();
    if (result)
    {
      result = ccder_blob_encode_implicit_uint64();
      if (result)
      {
        if ((sub_10004F6BC() & 1) == 0)
        {
          return 0;
        }

LABEL_12:
        sub_10004F6A8();
        result = ccder_blob_encode_implicit_raw_octet_string();
        if (result)
        {
          result = ccder_blob_encode_implicit_raw_octet_string();
          if (result)
          {
            result = ccder_blob_encode_implicit_uint64();
            if (result)
            {
              result = ccder_blob_encode_tl();
              if (result)
              {
                result = sub_100051B94(a1, &v7, *(a2 + 24), v5 + a1[1] - *a1, v4 - a1[1]);
                if (result)
                {
                  return ccder_blob_encode_tl();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100052174(unint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v26 = 0uLL;
  if (a1 == a2)
  {
    return 4294967277;
  }

  result = sub_100051C2C(a1, a2, (a3 + 24), &v26, a3, (a3 + 8), 0, a4);
  if (result)
  {
    return result;
  }

  if (*(a3 + 28))
  {
    if (*(a3 + 28) != 2)
    {
      return 4294967277;
    }
  }

  else
  {
    *(a3 + 28) = 2;
    v6 = *(a3 + 24);
    if (!*(a3 + 29) && (v6 & 4) != 0)
    {
      *(a3 + 29) = 1;
    }

    if ((v6 & 2) == 0)
    {
      *(a3 + 120) |= 1u;
    }
  }

  if (*a3)
  {
    return 4294967284;
  }

  if (*(a3 + 29) == 1)
  {
    if (!sub_10004F6E4())
    {
      return 4294967277;
    }
  }

  else
  {
    if (*(a3 + 29))
    {
      return 4294967284;
    }

    if (!sub_10004F6E4() || !sub_10005274C(&v26, 0x8000000000000004, (a3 + 88), v7, v8, v9, v10, v11, v12, v13) || (sub_1000526D8(&v26, 0x8000000000000005, (a3 + 96), 16) & 1) == 0)
    {
      return 4294967277;
    }
  }

  v21 = *(a3 + 24);
  if ((v21 & 0x80) != 0)
  {
    if (!sub_10005274C(&v26, 0x8000000000000006, (a3 + 112), v14, v15, v16, v17, v18, v19, v20))
    {
      return 4294967277;
    }

    v21 = *(a3 + 24);
  }

  if ((v21 & 0x100) != 0)
  {
    if ((v21 & 2) != 0)
    {
      sub_10004F694();
      fprintf(v22, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s kek constraint violation 1%s\n", "aks", v23);
    }

    else
    {
      if (v21)
      {
        goto LABEL_25;
      }

      sub_10004F694();
      fprintf(v24, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s kek constraint violation 2%s\n", "aks", v25);
    }

    return 4294967277;
  }

LABEL_25:
  sub_100051880(a3);
  return 0;
}

uint64_t sub_100052360(uint64_t a1, int a2, uint64_t *a3)
{
  if ((a2 - 2) >= 2)
  {
    if (a2 != 1)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = qword_10009B0B0;
    if (!qword_10009B0B0)
    {
      ccder_sizeof_implicit_uint64();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_implicit_uint64();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof();
      ccder_sizeof_raw_octet_string();
      v5 = &qword_10009B0B0;
      goto LABEL_7;
    }
  }

  else
  {
    v4 = qword_10009B0B8;
    if (!qword_10009B0B8)
    {
      ccder_sizeof_implicit_uint64();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_implicit_uint64();
      ccder_sizeof_implicit_uint64();
      ccder_sizeof_raw_octet_string();
      v5 = &qword_10009B0B8;
LABEL_7:
      ccder_sizeof();
      ccder_sizeof_raw_octet_string();
      v4 = ccder_sizeof();
      *v5 = v4;
    }
  }

  v6 = 0xFFFFFFFFLL;
  if (a3 && v4)
  {
    v6 = 0;
    *a3 = v4;
  }

  return v6;
}

uint64_t sub_100052540(void *a1, unsigned int a2, void *a3)
{
  v13 = 1301;
  v12[2] = 387978753;
  memset(__s, 0, sizeof(__s));
  v5 = ccsha256_di();
  __chkstk_darwin(v5);
  bzero(v12 - v6, v7);
  if (*a1 || (sub_10004F6D8(), ccdigest_init(), sub_10004F6D8(), ccdigest_update(), sub_10004F6D8(), ccdigest_update(), v9 = sub_10004F6D8(), v10(v9), cc_clear(), (a2 & 1) != 0) && !sub_10004FFEC(1, (a2 >> 13) & 1, &unk_10009B578, __s, __s, 32))
  {
    v8 = 0;
  }

  else
  {
    cchmac();
    v8 = 1;
  }

  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  return v8;
}

uint64_t sub_1000526D8(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  sub_10004F728(a1);
  sub_10004F704();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    sub_10004F734(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3)
    {
      return sub_10004F718(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (v22 == a4)
    {
      v13 = memcpy(a3, v14, v22);
      return sub_10004F718(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t sub_10005274C(__n128 *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, __n128 a10)
{
  if (a3)
  {
    *a3 = 0;
  }

  result = sub_10004F740(*a1, a1, a2, a3, a4, a5, a6, a7, a8, a10, v13, v14);
  if (result)
  {
    if (ccn_read_uint())
    {
      return 0;
    }

    else
    {
      *a1 = v15;
      if (a3)
      {
        *a3 = 0;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1000527C8(void *a1, uint64_t a2, char a3)
{
  memset_s(a1, 0x10uLL, 0, 0x10uLL);
  if (a2 && *a2 && (v6 = *(a2 + 8)) != 0)
  {
    if (a3)
    {
      return 4294967285;
    }

    else
    {
      v8 = calloc(v6, 1uLL);
      if (v8)
      {
        *a1 = v8;
        v9 = *a2;
        v10 = *(a2 + 8);
        a1[1] = v10;
        memcpy(v8, v9, v10);
        return 0;
      }

      else
      {
        return 4294967279;
      }
    }
  }

  else
  {
    result = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_10005285C(_OWORD *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v51, 0, sizeof(v51));
  v50 = 32;
  v4 = *(a3 + 32);
  if ((v4 & 2) != 0)
  {
    v5 = 24;
  }

  else
  {
    v5 = 40;
  }

  if (*(a3 + 8))
  {
    goto LABEL_5;
  }

  if (*(a3 + 37) == 1)
  {
    if ((v4 & 0x2000) != 0)
    {
      sub_10004F694();
      fprintf(v32, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s sep managed vek cannot have flag_no_ephdm%s\n", "aks", v33, v42, v43, v44, v45, v46, *(&v46 + 1), ":", 616, &byte_10005C3F3, &byte_10005C3F3);
      v6 = 4294967257;
      goto LABEL_50;
    }

    *&v12 = __chkstk_darwin(a1);
    v48 = 0;
    v46 = v12;
    v47 = v12;
    LODWORD(v52) = 0;
    v6 = 4294967285;
    if (!sub_10005178C(0x28u, &v52) || v52 > 0x20)
    {
      goto LABEL_50;
    }

    if (a1)
    {
      v13 = *(a3 + 112);
      v46 = *(a3 + 96);
      v47 = v13;
      v48 = *(a3 + 128);
      if (*(a3 + 32))
      {
        sub_100050FB0();
        v20 = v19;
        if (v21)
        {
          v20 = sub_10004FFE4;
        }

        v22 = (v20)(0, &unk_10009B578, &v46, &v46);
        v6 = 0xFFFFFFFFLL;
        if (HIDWORD(a2) || (v22 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else if (HIDWORD(a2))
      {
        goto LABEL_55;
      }

      v18 = 0;
    }

    else
    {
      v17 = *(a3 + 72);
      v46 = *(a3 + 56);
      v47 = v17;
      v48 = *(a3 + 88);
      if (HIDWORD(a2))
      {
LABEL_55:
        v6 = 0xFFFFFFFFLL;
        goto LABEL_50;
      }

      if ((*(a3 + 33) & 0x20) != 0)
      {
        v18 = sub_10004FFE8;
      }

      else
      {
        v18 = sub_10004FFE4;
      }
    }

    if (a1)
    {
      v23 = a2;
    }

    else
    {
      v23 = 0;
    }

    if (sub_100051720(a1, v23, 0xA6A6A6A6A6A6A6A6, v18, &v46, 0x28u, a4, &v50))
    {
      sub_10004F694();
      fprintf(v34, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s kek failed to unwrap vek; mix-n-match?%s\n", "aks", v35, v36, v37, v38, v39, v40, v41, ":", 634, &byte_10005C3F3, &byte_10005C3F3);
      v6 = 4294967294;
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (*(a3 + 37))
  {
LABEL_5:
    v6 = 4294967284;
    goto LABEL_50;
  }

  if ((v4 & 0x1000) != 0)
  {
    v49 = 0;
    v6 = 4294967285;
    if (sub_1000517A0(v5, &v49) && v49 <= 0x20)
    {
      v14 = *(a3 + 72);
      v52 = *(a3 + 56);
      v53 = v14;
      v54 = *(a3 + 88);
      if (sub_100052D38(a3, v51))
      {
        goto LABEL_51;
      }

      v15 = v51;
      v16 = 32;
LABEL_45:
      if (!sub_100051720(v15, v16, 0xA6A6A6A6A6A6A6A6, 0, &v52, v5, a4, &v50))
      {
LABEL_46:
        if ((*(a3 + 32) & 2) == 0)
        {
LABEL_49:
          v6 = 0;
          goto LABEL_50;
        }

        if (v50 == 16)
        {
          v26 = ccsha256_di();
          __chkstk_darwin(v26);
          bzero(&v49 - v27, v28);
          v52 = 0u;
          v53 = 0u;
          sub_100051040();
          ccdigest_init();
          sub_100051040();
          ccdigest_update();
          sub_100051040();
          ccdigest_update();
          v29 = sub_100051040();
          v30(v29);
          cc_clear();
          *(a4 + 16) = v52;
          sub_100050FD8(&v52);
          goto LABEL_49;
        }

LABEL_51:
        v6 = 0xFFFFFFFFLL;
        goto LABEL_50;
      }

LABEL_52:
      v6 = 4294967294;
    }
  }

  else
  {
    if (!a1)
    {
      goto LABEL_52;
    }

    LODWORD(v49) = 0;
    v6 = 4294967285;
    if (sub_10005178C(v5, &v49) && v49 <= 0x20)
    {
      v11 = *(a3 + 72);
      v52 = *(a3 + 56);
      v53 = v11;
      v54 = *(a3 + 88);
      if ((v4 & 1) == 0)
      {
        if (HIDWORD(a2))
        {
          goto LABEL_51;
        }

        goto LABEL_44;
      }

      v24 = sub_10004FFE8;
      if ((v4 & 0x2000) == 0)
      {
        v24 = sub_10004FFE4;
      }

      v25 = (v24)(0, &unk_10009B578, a3 + 56, &v52);
      v6 = 0xFFFFFFFFLL;
      if (!HIDWORD(a2) && (v25 & 1) != 0)
      {
LABEL_44:
        v15 = a1;
        v16 = a2;
        goto LABEL_45;
      }
    }
  }

LABEL_50:
  sub_100050FD8(v51);
  return v6;
}

uint64_t sub_100052D38(uint64_t a1, _OWORD *a2)
{
  bzero(v13, 0x88uLL);
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  v11 = 0u;
  if (*(a1 + 37))
  {
    v4 = 4294967284;
  }

  else
  {
    v14 = 32;
    *&v12[0] = *a1;
    ccsha256_di();
    if (cchkdf())
    {
      goto LABEL_10;
    }

    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

    sub_100050FB0();
    v6 = v5;
    if (v7)
    {
      v6 = sub_10004FFE4;
    }

    if (!(v6)(1, &unk_10009B578, &v10, &v10, 32))
    {
LABEL_10:
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
LABEL_8:
      v4 = 0;
      v8 = v11;
      *a2 = v10;
      a2[1] = v8;
    }
  }

  sub_100050FD8(&v10);
  sub_100050FD8(v12);
  return v4;
}

uint64_t sub_100052E70(uint64_t a1, int a2, uint64_t a3, unint64_t *a4, void *a5, size_t *a6, _DWORD *a7, unsigned __int8 *a8, unsigned __int8 *a9, void **a10)
{
  v17 = a1;
  bzero(&v25, 0xB0uLL);
  v18 = 4294967285;
  if (a3)
  {
    if (a4)
    {
      if (a5)
      {
        if (a6)
        {
          if (a7)
          {
            if (a8)
            {
              if (a9)
              {
                if (*a4)
                {
                  v19 = a4[1];
                  if (v19)
                  {
                    v20 = sub_100052354(*a4, *a4 + v19, &v25);
                    if (!v20)
                    {
                      uuid_copy(a8, v26);
                      uuid_copy(a9, v28);
                      v21 = v29;
                      *a7 = v27;
                      v22 = v21 & 0xFFFFFFF7;
                      if (a2)
                      {
                        v23 = 0;
                      }

                      else
                      {
                        v23 = 8;
                      }

                      v29 = v22 | v23;
                      v20 = sub_100053CB4(a3, &v25, a5, a6, v17, a10);
                    }

                    v18 = v20;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_100051004(&v25);
  return v18;
}

uint64_t sub_100052FC0(uint64_t a1, void *a2, _DWORD *a3)
{
  bzero(v46, 0x118uLL);
  bzero(v44, 0xB0uLL);
  LOWORD(v43) = 0;
  *(&v43 + 2) = 0;
  *(&v43 + 1) = 0;
  if (a2 && *a2)
  {
    v5 = 4294967285;
    if (a3 && a2[1])
    {
      memset_s(a3, 0x58uLL, 0, 0x58uLL);
      v6 = sub_100051020();
      v5 = sub_100051C2C(v6, v7, v8, v9, v10, v11, v12, 1);
      if (v5 == -6)
      {
        a3[9] |= 0x2000000u;
        v13 = sub_100051020();
        v5 = sub_100051C2C(v13, v14, v15, v16, v17, v18, v19, 0);
      }

      if (v5)
      {
        sub_10004F694();
        v42 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed to decode blob%s\n";
      }

      else
      {
        *(a3 + 5) = v43;
        v23 = sub_100050FC4();
        if (sub_100052174(v23, v24, v44, v25))
        {
          v26 = sub_100050FC4();
          if (sub_100051EFC(v26, v27, v46, v28))
          {
            sub_100050FF4();
            v5 = 0xFFFFFFFFLL;
            fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s unknown blob type %i%s\n", "aks", v21, 0xFFFFFFFFLL);
            goto LABEL_10;
          }

          v33 = sub_100050FC4();
          v36 = sub_100051EFC(v33, v34, v46, v35);
          if (!v36)
          {
            *a3 = 1;
            v37 = v49;
            *(a3 + 65) = v49;
            a3[10] = v47;
            if (v37)
            {
              if (v37 != 1)
              {
                goto LABEL_26;
              }

              v38 = v50;
              if (v50)
              {
                a3[9] |= 8u;
              }

              if ((v38 & 2) == 0)
              {
                goto LABEL_26;
              }

              v39 = a3[9] | 4;
              goto LABEL_25;
            }

            if ((v48 & 0x10) != 0)
            {
              v39 = a3[9] | 0x8000000;
LABEL_25:
              a3[9] = v39;
            }

LABEL_26:
            v5 = 0;
            goto LABEL_10;
          }

          v5 = v36;
          sub_10004F694();
          v42 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed to decode vek%s\n";
        }

        else
        {
          v29 = sub_100050FC4();
          v32 = sub_100052174(v29, v30, v44, v31);
          if (!v32)
          {
            *a3 = 2;
            a3[10] = v44[0];
            *(a3 + 65) = v45;
            goto LABEL_26;
          }

          v5 = v32;
          sub_10004F694();
          v42 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed to decode kek%s\n";
        }
      }

      fprintf(v40, v42, "aks", v41);
    }
  }

  else
  {
    v5 = 4294967285;
  }

LABEL_10:
  sub_100051004(v44);
  return v5;
}

uint64_t sub_1000533EC(const unsigned __int8 *a1, int a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v8 = a4;
  memset(v18, 0, sizeof(v18));
  v16 = 0;
  memset(v17, 0, sizeof(v17));
  bzero(a5, 0x118uLL);
  a5[36] = 1;
  *(a5 + 8) = a2 & 0xFFFFFFFD;
  uuid_copy(a5 + 16, a1);
  sub_10004F818(a5, 8);
  sub_10004F818(a6, 32);
  if (*(a5 + 1) || a5[37])
  {
    v12 = 4294967284;
    goto LABEL_4;
  }

  if (a3)
  {
    if (!sub_10005419C(a5, a3, v8, a6))
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v15 = 40;
  v12 = 4294967285;
  if (sub_100054640(0x20u, &v16) && v16 <= 0x28)
  {
    v14 = sub_100052D38(a5, v17);
    if (v14)
    {
      v12 = v14;
      goto LABEL_4;
    }

    if (!sub_10005136C(v17, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, a6, 0x20u, a5 + 7, &v15))
    {
      *(a5 + 8) |= 0x1000u;
LABEL_11:
      v12 = 0;
      goto LABEL_4;
    }

LABEL_13:
    v12 = 0xFFFFFFFFLL;
  }

LABEL_4:
  sub_100050FD8(v17);
  sub_100050FD8(v18);
  return v12;
}

uint64_t sub_100053584(const unsigned __int8 *a1, const unsigned __int8 *a2, int a3, uint64_t a4, __int128 *a5, unsigned __int8 *a6, char a7)
{
  memset(v40, 0, sizeof(v40));
  __n = 0;
  v37 = 32;
  v38 = 0u;
  v39 = 0u;
  __s = 0;
  v34 = 0;
  if (!a2)
  {
    v15 = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  if (a6)
  {
    v12 = sub_1000527C8(&__s, a4, (a7 & 4) != 0);
    if (!v12)
    {
      if (a5)
      {
        v13 = a5[1];
        v38 = *a5;
        v39 = v13;
      }

      else
      {
        sub_10004F818(&v38, 32);
      }

      bzero(a6, 0xB0uLL);
      *(a6 + 6) = (8 * a3) & 0x10 | a3 & 0xFFFFF9BD;
      v14 = a6 + 24;
      a6[28] = 2;
      if (uuid_compare(byte_100077220, a1))
      {
        *(a6 + 30) = *a1;
      }

      else
      {
        v17 = 16;
        while (1)
        {
          uuid_generate(a6 + 30);
          if (a6[30] || a6[31])
          {
            break;
          }

          if (!--v17)
          {
            sub_10004F694();
            fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed to generate valid kek group uuid after 16 attempts%s\n", "aks", v19, v28, v29, v30, v31, v32, v33, ":", 4364, &byte_10005C3F3, &byte_10005C3F3);
            v15 = 4294967286;
            goto LABEL_13;
          }
        }
      }

      uuid_copy(a6 + 8, a2);
      sub_100051880(a6);
      if (*a6)
      {
        goto LABEL_12;
      }

      if (a6[29] != 1)
      {
        if (a6[29])
        {
LABEL_12:
          v15 = 4294967284;
          goto LABEL_13;
        }

        sub_10004F818((a6 + 96), 16);
        memset(v41, 0, sizeof(v41));
        v20 = mach_continuous_time();
        ccsha256_di();
        if (ccpbkdf2_hmac())
        {
          v23 = 0;
        }

        else
        {
          v21 = mach_continuous_time();
          sub_100050FD8(v41);
          v22 = sub_10004F9B4(v21 - v20);
          v23 = 100000;
          if (v22)
          {
            v23 = 0x174876E800 / v22;
          }
        }

        if (v23 <= 0x186A0)
        {
          v23 = 100000;
        }

        *(a6 + 11) = v23;
      }

      v12 = sub_100053E40(a6, __s, __n, v40, &v37);
      if (!v12)
      {
        LODWORD(v41[0]) = 40;
        v15 = 4294967285;
        if (sub_100054640(0x20u, &v34) && v34 <= 0x28)
        {
          if (sub_10005136C(v40, v37, 0xA6A6A6A6A6A6A6A6, 0, &v38, 0x20u, a6 + 6, v41))
          {
            goto LABEL_41;
          }

          if ((*v14 & 1) == 0)
          {
            goto LABEL_35;
          }

          sub_100050FB0();
          v25 = v24;
          if (v26)
          {
            v25 = sub_10004FFE4;
          }

          if (((v25)(1, &unk_10009B578, a6 + 48, a6 + 48, 32) & 1) == 0)
          {
LABEL_41:
            v15 = 0xFFFFFFFFLL;
          }

          else
          {
LABEL_35:
            v27 = sub_10004F68C();
            if (v27 <= 0x15)
            {
              bzero(v14 + v27, 22 - v27);
            }

            v15 = 0;
          }
        }

        goto LABEL_13;
      }
    }

    v15 = v12;
  }

  else
  {
    v15 = 4294967285;
  }

LABEL_13:
  if (__s)
  {
    memset_s(__s, __n, 0, __n);
    free(__s);
  }

LABEL_15:
  sub_100050FD8(v40);
  sub_100050FD8(&v38);
  return v15;
}

uint64_t sub_100053910(void *a1, uint64_t a2, unint64_t *a3, const unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  memset(v46, 0, sizeof(v46));
  memset(v45, 0, sizeof(v45));
  __n = 0;
  v37 = 32;
  v12 = *a1 & 0x40;
  bzero(v41, 0xB0uLL);
  bzero(v39, 0xB0uLL);
  v13 = sub_100052360(0, 2, &__n);
  if (v13)
  {
    goto LABEL_33;
  }

  if (!__n)
  {
    v15 = 0;
    v14 = 0;
    v16 = 4294967286;
    goto LABEL_22;
  }

  v14 = 0;
  v15 = 0;
  v16 = 4294967285;
  if (a4 && a5 && a6)
  {
    if (!*a6)
    {
      goto LABEL_32;
    }

    v17 = *(a6 + 8);
    if (!v17)
    {
      goto LABEL_32;
    }

    v14 = 0;
    v15 = 0;
    v16 = 4294967285;
    if (a3 && __n <= v17)
    {
      v18 = *a3;
      if (*a3)
      {
        v19 = a3[1];
        if (v19)
        {
          if (v12)
          {
            memset(dst, 0, sizeof(dst));
            if (v19 == 16)
            {
              uuid_copy(dst, v18);
              if (uuid_compare(dst, a4))
              {
                v16 = 4294967284;
              }

              else
              {
                sub_100050FF4();
                v16 = 0xFFFFFFFFLL;
                fprintf(v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s user uuid unexpectedly match new kek uuid%s\n", "aks", v27, -1, v28, v29, v30, v31, v32, v33, 4762, &byte_10005C3F3, &byte_10005C3F3);
              }
            }

            else
            {
              v16 = 4294967285;
            }

            goto LABEL_20;
          }

          v13 = sub_100052354(*a3, &v18[v19], v41);
          if (!v13)
          {
            if ((v42 & 0x80) != 0 && v44)
            {
              v15 = 0;
              v14 = 0;
              v16 = 4294967263;
              goto LABEL_22;
            }

            v13 = sub_100053CB4(a2, v41, v46, &v37, *a1, 0);
            if (!v13)
            {
              v15 = v42;
              v21 = sub_100053584(v43, a4, v42, a5, v46, v39, *a1);
              if (!v21)
              {
                v22 = calloc(__n, 1uLL);
                v14 = v22;
                if (v22)
                {
                  v34 = v22;
                  v35 = &v22[__n];
                  if (sub_100051FC0(&v34, v39))
                  {
                    v23 = v35;
                    v24 = v34;
                    v25 = &v14[__n] - v35;
                    *(a6 + 8) = v25;
                    memcpy(*a6, &v23[v14 - v24], v25);
                    v16 = 0;
                  }

                  else
                  {
                    v16 = 4294967273;
                  }
                }

                else
                {
                  v16 = 4294967279;
                }

                goto LABEL_22;
              }

              v16 = v21;
LABEL_21:
              v14 = 0;
              goto LABEL_22;
            }
          }

LABEL_33:
          v16 = v13;
LABEL_20:
          v15 = 0;
          goto LABEL_21;
        }
      }

LABEL_32:
      v15 = 0;
      v14 = 0;
      v16 = 4294967285;
    }
  }

LABEL_22:
  if (byte_10009B570)
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %sresult: %d; oti: %d; passcode_change: %d; cf: 0x%x; of: 0x%x; nf: 0x%x%s\n", "aks", &byte_10005C3F3, -1, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, "fv_rewrap_kek", ":", 4804, &byte_10005C3F3, &byte_10005C3F3, v16, v12 >> 6, 0, v15, v15, v40, &byte_10005C3F3);
  }

  sub_100051004(v41);
  sub_100051004(v39);
  if (v14)
  {
    memset_s(v14, __n, 0, __n);
    free(v14);
  }

  sub_100050FD8(v46);
  sub_100050FD8(v45);
  return v16;
}

uint64_t sub_100053CB4(uint64_t a1, uint64_t a2, void *a3, size_t *a4, char a5, void **a6)
{
  memset(v20, 0, sizeof(v20));
  *&__n[1] = 32;
  __src = 0u;
  v19 = 0u;
  __n[0] = 32;
  __s = 0;
  __smax = 0;
  v6 = 4294967285;
  if (a1 && a2)
  {
    v11 = sub_1000527C8(&__s, a1, (a5 & 4) != 0);
    if (v11 || (v11 = sub_100053E40(a2, __s, __smax, v20, &__n[1]), v11) || (v11 = sub_100053FE0(a2, v20, __n[1], &__src, __n), v11))
    {
      v6 = v11;
    }

    else
    {
      if (a3 && a4)
      {
        if ((*(a2 + 120) & 1) != 0 && !sub_10004F9F4(&v19, 16))
        {
          *(a2 + 24) |= 0x10u;
        }

        if ((*(a2 + 24) & 0x10) != 0)
        {
          v12 = 16;
          __n[0] = 16;
        }

        else
        {
          v12 = __n[0];
        }

        memcpy(a3, &__src, v12);
        *a4 = v12;
      }

      v6 = 0;
      if (a6)
      {
        v13 = __smax;
        *a6 = __s;
        a6[1] = v13;
        __s = 0;
        __smax = 0;
      }
    }
  }

  sub_100050FD8(v20);
  sub_100050FD8(&__src);
  if (__s)
  {
    memset_s(__s, __smax, 0, __smax);
    free(__s);
  }

  return v6;
}

uint64_t sub_100053E40(uint64_t a1, void *__src, size_t __n, void *a4, size_t *a5)
{
  memset(v17, 0, sizeof(v17));
  if (*(a1 + 28) != 2 || *a5 != 32)
  {
    v15 = 4294967285;
    goto LABEL_20;
  }

  v10 = *(a1 + 24);
  if ((v10 & 2) != 0)
  {
    v11 = 16;
  }

  else
  {
    v11 = 32;
  }

  if (v10)
  {
    ccsha256_di();
    sub_10005104C();
    if (j__ccpbkdf2_hmac())
    {
      goto LABEL_16;
    }

    sub_100050FB0();
    v13 = v12;
    if (v14)
    {
      v13 = sub_10004FFE4;
    }

    if (!(v13)(1, &unk_10009B578, v17, v17, v11))
    {
      goto LABEL_22;
    }
  }

  if (!*a1)
  {
    if (*(a1 + 29) != 1)
    {
      if (*(a1 + 29))
      {
        goto LABEL_12;
      }

      ccsha256_di();
      sub_10005104C();
      if (j__ccpbkdf2_hmac())
      {
LABEL_16:
        v15 = 4294967274;
        goto LABEL_20;
      }

LABEL_19:
      memcpy(a4, v17, v11);
      v15 = 0;
      *a5 = v11;
      goto LABEL_20;
    }

    if (__n <= 0x20)
    {
      memcpy(v17, __src, __n);
      v11 = __n;
      goto LABEL_19;
    }

LABEL_22:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

LABEL_12:
  v15 = 4294967284;
LABEL_20:
  sub_100050FD8(v17);
  return v15;
}

uint64_t sub_100053FE0(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, _DWORD *a5)
{
  if (*a5 != 32)
  {
    return 4294967285;
  }

  if (*a1 || *(a1 + 29) > 1u)
  {
    return 4294967284;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    *a5 = 16;
    v10 = 24;
  }

  else
  {
    v10 = 40;
  }

  v12 = v10;
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  HIDWORD(v20) = 0;
  if (!sub_10005178C(v15, &v20 + 1))
  {
    return 4294967285;
  }

  v16 = HIDWORD(v20);
  if (HIDWORD(v20) > *a5)
  {
    return 4294967285;
  }

  memcpy(v14, (a1 + 48), v12);
  if (*(a1 + 24))
  {
    sub_100050FB0();
    v18 = v17;
    if (v19)
    {
      v18 = sub_10004FFE4;
    }

    if (!(v18)(0, &unk_10009B578, v14, v14, v16))
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = sub_100051720(a2, a3, 0xA6A6A6A6A6A6A6A6, 0, v14, v12, a4, a5);
  if (result)
  {
    return 4294967291;
  }

  return result;
}

uint64_t sub_10005419C(uint64_t a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4)
{
  v18 = 0;
  if (!sub_10004F9F4(a2, 32))
  {
    sub_10004F694();
    fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Internal Error: Null KEK, file radar%s\n", "aks", v15);
    return 4294967286;
  }

  if (!sub_10004F9F4(a4, 32))
  {
    sub_10004F694();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Internal Error: Null VEK, file radar%s\n", "aks", v17);
    return 4294967286;
  }

  if (*(a1 + 8))
  {
    return 4294967284;
  }

  v9 = sub_100054640(0x20u, &v18);
  result = 4294967285;
  if (v9 && v18 <= 0x28)
  {
    if (!sub_10005136C(a2, a3, 0xA6A6A6A6A6A6A6A6, 0, a4, 0x20u, (a1 + 56), &v18))
    {
      v10 = *(a1 + 32);
      if ((v10 & 1) == 0)
      {
LABEL_13:
        result = 0;
        *(a1 + 32) = v10 & 0xFFFFEFFF;
        return result;
      }

      sub_100050FB0();
      v12 = v11;
      if (v13)
      {
        v12 = sub_10004FFE4;
      }

      if ((v12)(1, &unk_10009B578, a1 + 56, a1 + 56, 32))
      {
        v10 = *(a1 + 32);
        goto LABEL_13;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100054354(unint64_t *a1, _DWORD *a2)
{
  bzero(v6, 0x118uLL);
  if (a1 && *a1 && (v4 = a1[1]) != 0)
  {
    result = sub_100051EFC(*a1, *a1 + v4, v6, 1);
  }

  else
  {
    result = 4294967285;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1000543F4(unint64_t *a1, _DWORD *a2)
{
  bzero(v6, 0x118uLL);
  if (a1 && *a1 && (v4 = a1[1]) != 0)
  {
    result = sub_100051FB4(*a1, *a1 + v4, v6);
    if (!result)
    {
      if (v6[37] == 1)
      {
        result = 0;
      }

      else
      {
        result = 4294967285;
      }
    }
  }

  else
  {
    result = 4294967285;
  }

  *a2 = result;
  return result;
}

BOOL sub_100054640(unsigned int a1, _DWORD *a2)
{
  v2 = a1 + 15;
  v3 = v2 << 31 >> 31;
  v4 = v3 == v2;
  v5 = v3 != v2;
  if (v4)
  {
    *a2 = v2 & 0xFFFFFFF8;
  }

  return !v5;
}