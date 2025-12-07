void sub_10002731C(uint64_t a1)
{
  v44 = 0;
  sub_100020B5C();
  v3 = v2;
  v39 = a1;
  v4 = *(a1 + 656);
  v5 = **v4;
  qsort(*v4 + 2, v5, 0x20uLL, sub_1000274F8);
  if (!v3)
  {
    v12 = 0;
    if (!v5)
    {
      goto LABEL_20;
    }

    goto LABEL_5;
  }

  v12 = malloc_type_malloc(0x1000uLL, 0x5A3B884DuLL);
  if (v5)
  {
LABEL_5:
    v13 = 0;
    v14 = 0;
    v15 = (a1 + 872);
    v16 = 32 * v5;
    while (1)
    {
      v17 = *v4;
      v18 = &(*v4)[v13 / 4];
      v19 = v18[2];
      if (v14 != v19)
      {
        break;
      }

LABEL_19:
      v13 += 32;
      if (v16 == v13)
      {
        goto LABEL_20;
      }
    }

    v20 = v18[2];
    if (v12)
    {
      v44 = 4096;
      v21 = v18[2];
      if (v21 < 0x10)
      {
        v22 = sub_100016C5C(v18[2], v12, &v44);
      }

      else
      {
        v22 = sub_100016CD8(v39, v21, v12, &v44, 0, 0, 0);
      }

      v29 = v22;
      if (!v22)
      {
        v30 = v18[2];
        v31 = v15[1];
        v40 = *v15;
        v41 = v31;
        v32 = v15[3];
        v42 = v15[2];
        v43 = v32;
        sub_10002D0A4(&v40, 511, v23, v24, v25, v26, v27, v28, v30);
      }

      if (sub_10002D444() >= 3)
      {
        v33 = *(v17 + v13 + 32);
        v34 = *(v17 + v13 + 24);
        v36 = *(v17 + v13 + 12);
        v35 = *(v17 + v13 + 16);
        v40 = xmmword_100043460;
        v41 = *&qword_100043470;
        v42 = xmmword_100043480;
        v43 = *&off_100043490;
        sub_10002D0E8(&v40, 2, "\textentType=0x%x, startBlock=0x%x, blockCount=0x%x, attrName=%s\n", v33, v36, v35, v34);
      }

      if (!v29)
      {
        goto LABEL_18;
      }

      v20 = v18[2];
    }

    v37 = v15[1];
    v40 = *v15;
    v41 = v37;
    v38 = v15[3];
    v42 = v15[2];
    v43 = v38;
    sub_10002D0A4(&v40, 607, v6, v7, v8, v9, v10, v11, v20);
LABEL_18:
    v14 = v19;
    goto LABEL_19;
  }

LABEL_20:
  if (v12)
  {
    free(v12);
  }
}

uint64_t sub_100027508(const char *a1)
{
  memset(&v11, 0, sizeof(v11));
  v1 = HIDWORD(qword_1000434A8);
  if (HIDWORD(qword_1000434A8) == -1)
  {
    v2 = *__error();
    if (byte_10004350E)
    {
      v4 = __error();
      v5 = strerror(*v4);
      *v7 = xmmword_100043460;
      v8 = *&qword_100043470;
      v9 = xmmword_100043480;
      v10 = *&off_100043490;
      sub_10002D0E8(v7, 6, "Unable to open block device %s: %s", a1, v5);
    }
  }

  else
  {
    v2 = getvfsbyname("hfs", &v11);
    if (!v2)
    {
      v7[0] = 3;
      v7[1] = v11.vfc_typenum;
      v7[2] = 1785621618;
      v7[3] = v1;
      if (sysctl(v7, 4u, 0, 0, 0, 0))
      {
        return *__error();
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_100027638(uint64_t a1, unint64_t a2, unsigned int a3, unint64_t *a4)
{
  v4 = *(a1 + 776);
  v5 = a2 + a3;
  *a4 = a2;
  if (v5 <= a2)
  {
    return -43;
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    while (1)
    {
      v7 = sub_100004C84(v4, a2, 0, v10);
      if (v7)
      {
        break;
      }

      v8 = sub_10001F3E4(*&v10[0]);
      sub_100004D50(v4, v10, 0);
      if (!v8)
      {
        return 0;
      }

      a2 = *a4 + 1;
      *a4 = a2;
      if (a2 >= v5)
      {
        return -43;
      }
    }
  }

  return v7;
}

uint64_t sub_1000276E0(uint64_t a1, int a2, char *__s, int a4, int a5, int a6)
{
  v6 = **(a1 + 656);
  v7 = *v6;
  if (v7)
  {
    v8 = v6 + 4;
    do
    {
      v9 = *(v8 - 1);
      if (v9 >= a4)
      {
        if (v9 < a5 + a4)
        {
          return sub_100026B18(a1, a2, __s, a4, a5, a6);
        }
      }

      else if (*v8 + v9 > a4)
      {
        return sub_100026B18(a1, a2, __s, a4, a5, a6);
      }

      v8 += 8;
      --v7;
    }

    while (v7);
  }

  return a1;
}

uint64_t sub_100027734(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = *(*(a1 + 776) + 44);
  sub_100020B5C();
  v15 = *(a1 + 690);
  *a4 = v15;
  if (v15 < 1)
  {
    return 0;
  }

  else
  {
    v16 = 0;
    v17 = (a3 + 4);
    v18 = (a3 + 2);
    v19 = 1;
    while (1)
    {
      if (v8)
      {
        v21 = *(v17 - 1);
        v20 = *v17;
      }

      else
      {
        v20 = *v18;
        v21 = *(v18 - 1);
      }

      if (v7 <= v21)
      {
        break;
      }

      if (v20 >= v7 - v21)
      {
        *a4 = v16;
        sub_10001ECB0(a1, 4294966786, v9, v10, v11, v12, v13, v14);
        if (sub_10002D444() >= 3)
        {
          v24 = xmmword_100043460;
          v25 = *&qword_100043470;
          v26 = xmmword_100043480;
          v27 = *&off_100043490;
          sub_10002D0E8(&v24, 2, "\tCheckExtRecord: id=%u %d:(%u,%u), maxBlocks=%u (blockCount > (maxBlocks - startBlock))\n");
        }

        return -510;
      }

      if (v8 && !v21 && v20)
      {
        *a4 = v16;
        sub_10001ECB0(a1, 4294966786, v9, v10, v11, v12, v13, v14);
        if (sub_10002D444() >= 3)
        {
          v24 = xmmword_100043460;
          v25 = *&qword_100043470;
          v26 = xmmword_100043480;
          v27 = *&off_100043490;
          sub_10002D0E8(&v24, 2, "\tCheckExtRecord: id=%u %d:(%u,%u), (startBlock == 0)\n");
        }

        return -510;
      }

      if (v21 && !v20)
      {
        *a4 = v16;
        sub_10001ECB0(a1, 4294966786, v9, v10, v11, v12, v13, v14);
        if (sub_10002D444() >= 3)
        {
          v24 = xmmword_100043460;
          v25 = *&qword_100043470;
          v26 = xmmword_100043480;
          v27 = *&off_100043490;
          sub_10002D0E8(&v24, 2, "\tCheckExtRecord: id=%u %d:(%u,%u), (blockCount == 0)\n");
        }

        return -510;
      }

      if (!v19 && v20)
      {
        *a4 = v16;
        sub_10001ECB0(a1, 4294966786, v9, v10, v11, v12, v13, v14);
        if (sub_10002D444() >= 3)
        {
          v24 = xmmword_100043460;
          v25 = *&qword_100043470;
          v26 = xmmword_100043480;
          v27 = *&off_100043490;
          sub_10002D0E8(&v24, 2, "\tCheckExtRecord: id=%u %d:(%u,%u), (blockCount != 0)\n");
        }

        return -510;
      }

      ++v16;
      v17 += 2;
      v18 += 2;
      v19 = v20;
      if (v15 == v16)
      {
        return 0;
      }
    }

    *a4 = v16;
    sub_10001ECB0(a1, 4294966786, v9, v10, v11, v12, v13, v14);
    if (sub_10002D444() >= 3)
    {
      v24 = xmmword_100043460;
      v25 = *&qword_100043470;
      v26 = xmmword_100043480;
      v27 = *&off_100043490;
      sub_10002D0E8(&v24, 2, "\tCheckExtRecord: id=%u %d:(%u,%u), maxBlocks=%u (startBlock > maxBlocks)\n");
    }

    return -510;
  }
}

uint64_t sub_100027990(uint64_t a1, int a2, uint64_t (*a3)(uint64_t, _WORD *, unsigned int *, void))
{
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v6 = *(sub_10001EDA4(a2) + 16);
  v96 = 0;
  if (a2 == 408)
  {
    v7 = 20;
  }

  else if (a2 == 136)
  {
    v7 = 24;
  }

  else
  {
    if (a2)
    {
      LOWORD(v15) = 559;
      return v15;
    }

    v7 = 22;
  }

  v102 = 0;
  v100 = 0;
  v101 = 0;
  *(a1 + 56) = 0;
  v8 = sub_100006D88(v6, 0, &v96);
  if (v8 << 16)
  {
    if (v8 << 16 == 2359296)
    {
      sub_10001ECB0(a1, 4294966776, v9, v10, v11, v12, v13, v14);
      LOWORD(v15) = -520;
    }

    else
    {
      LOWORD(v15) = v8;
    }

    v96 = 0;
    goto LABEL_15;
  }

  v16 = v96;
  v17 = sub_10001ED08(a1, a2, 0, v10, v11, v12, v13, v14);
  if (v17)
  {
    goto LABEL_11;
  }

  if (v16[1].i8[0] != 1 || v16[1].i16[1] != 3)
  {
    sub_10001ECB0(a1, 4294966770, v9, v10, v11, v12, v13, v14);
    LOWORD(v15) = -526;
    goto LABEL_22;
  }

  if (v16[1].i8[1])
  {
    LOWORD(v15) = 504;
    sub_10001ECB0(a1, 504, v9, v10, v11, v12, v13, v14);
    goto LABEL_22;
  }

  v19 = sub_100007510(v6, v16, 0);
  v102 = v19;
  if (v19 != 106)
  {
    sub_10001ECB0(a1, 4294966784, v9, v10, v11, v12, v13, v14);
    LOWORD(v15) = -512;
    goto LABEL_22;
  }

  v20 = v16[1].u16[3];
  if (v20 > 8)
  {
    goto LABEL_27;
  }

  *(v6 + 32) = v20;
  v22 = v16[2].u32[0];
  v23 = *(v6 + 56);
  if (v22 >= v23 || v20 && !v22)
  {
    if (byte_10004350E)
    {
      v107 = xmmword_100043460;
      v108 = *&qword_100043470;
      v109 = xmmword_100043480;
      v110 = *&off_100043490;
      sub_10002D0E8(&v107, 2, "Header root node %u, calculated total nodes %u, tree depth %u, header node num %u\n", v22, v23, v20, 0);
    }

    v21 = -514;
LABEL_35:
    sub_10001ECB0(a1, v21, v9, v10, v11, v12, v13, v14);
LABEL_36:
    *(a1 + v7) |= 0x100u;
LABEL_37:
    LOWORD(v15) = -1001;
    goto LABEL_22;
  }

  *(v6 + 36) = v22;
  v24 = !v22 || v20 == 0;
  if (v24 && v22 != v20)
  {
LABEL_27:
    v21 = -527;
    goto LABEL_35;
  }

  if (sub_100021DBC(a1, 1) && (v25 = v16[4].u16[0], v26 = *(v6 + 768), *(*(v26 + 8) + 40) < v25))
  {
    v27 = 0;
    LOWORD(v15) = 0;
    v28 = 0;
    v29 = (a1 + 872);
    v30 = (v26 + 40);
    v88 = v25 / *(*(v26 + 8) + 40);
    do
    {
      v31 = *v30;
      if (*v30 % v88)
      {
        *(a1 + v7) |= 0x100u;
        v32 = **(v6 + 768);
        v33 = *(a1 + 888);
        v107 = *v29;
        v108 = v33;
        v34 = *(a1 + 920);
        v109 = *(a1 + 904);
        v110 = v34;
        sub_10002D0A4(&v107, 615, v9, v10, v11, v12, v13, v14, v32);
        if (!byte_10004350E)
        {
          goto LABEL_37;
        }

        v35 = **(v6 + 768);
        v36 = *(v30 - 1);
        v37 = *v30;
        v107 = xmmword_100043460;
        v108 = *&qword_100043470;
        v109 = xmmword_100043480;
        v110 = *&off_100043490;
        sub_10002D0E8(&v107, 2, "Improperly split node in file id %u, offset %u (extent #%d), Extent <%u, %u>\n", v35, v28, v27, v36, v37);
        v31 = *v30;
        LOWORD(v15) = -1001;
      }

      v28 += v31;
      ++v27;
      v30 += 2;
    }

    while (v27 != 8);
    bzero(&v107, 0x220uLL);
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v94 = 0;
    v38 = **(v6 + 768);
    v84 = v38;
    sub_100026CB8(1, 0, v38, 0, &v108 + 4);
    v95[0] = &v103;
    v95[1] = 0x100000040;
    if (!sub_100005678(*(a1 + 784), 1u, &v107, v95, &v94, v39, v40, v41) && DWORD2(v108) == v84 && !BYTE6(v108))
    {
      v42 = 0;
      while (1)
      {
        v43 = &v103 + 2 * v42;
        v44 = v43[1];
        if (v44 % v88)
        {
          *(a1 + v7) |= 0x100u;
          v45 = *(a1 + 888);
          v90 = *v29;
          v91 = v45;
          v46 = *(a1 + 920);
          v92 = *(a1 + 904);
          v93 = v46;
          sub_10002D0A4(&v90, 615, v9, v10, v11, v12, v13, v14, v84);
          if (!byte_10004350E)
          {
            goto LABEL_37;
          }

          v47 = *v43;
          v48 = v43[1];
          v90 = xmmword_100043460;
          v91 = *&qword_100043470;
          v92 = xmmword_100043480;
          v93 = *&off_100043490;
          sub_10002D0E8(&v90, 2, "Improperly split node in file id %u, startBlock %u, index %d (offset %u), extent <%u, %u>\n", v84, HIDWORD(v108), v42, v28, v47, v48);
          v44 = v43[1];
          LOWORD(v15) = -1001;
        }

        v28 += v44;
        if (++v42 == 8)
        {
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          if (sub_100005678(*(a1 + 784), 1u, &v107, v95, &v94, v12, v13, v14))
          {
            break;
          }

          if (DWORD2(v108) != v84)
          {
            break;
          }

          v42 = 0;
          if (BYTE6(v108))
          {
            break;
          }
        }
      }
    }
  }

  else
  {
    LOWORD(v15) = 0;
  }

  v49 = *(v6 + 36);
  if (!v49)
  {
LABEL_15:
    if (!v15)
    {
      v15 = (*(a1 + v7) << 23 >> 31) & 0xFFFFFC17;
    }

    goto LABEL_22;
  }

  LOWORD(v50) = 1;
  *(a1 + 64) = 1;
  v51 = *(a1 + 72);
  *v51 = v49;
  v52 = &unk_100043000;
  *(v51 + 4) = -1;
  *(v51 + 8) = 0;
  v83 = 0;
  v85 = 1;
  while (1)
  {
    while (1)
    {
      v53 = (*(a1 + 72) + 16 * (v50 - 1));
      v54 = *v53;
      v55 = *(v53 + 2);
      *(a1 + 56) = v54;
      sub_100006F74(v6, &v96, v9, v10, v11, v12, v13, v14);
      v56 = sub_100006D88(v6, v54, &v96);
      if (v56)
      {
        LOWORD(v15) = v56;
        if (v56 == 36)
        {
          sub_10001ECB0(a1, 4294966776, v9, v10, v11, v12, v13, v14);
          LOWORD(v15) = -520;
        }

        v96 = 0;
        if (!v52[1294])
        {
          goto LABEL_15;
        }

        goto LABEL_115;
      }

      v57 = v55;
      v58 = v96;
      v89 = v57;
      if ((v57 & 0x8000) == 0)
      {
        LOWORD(v15) = 0;
        goto LABEL_112;
      }

      if (sub_10001ED08(a1, a2, v54, v10, v11, v12, v13, v14))
      {
        goto LABEL_36;
      }

      v59 = sub_100028554(a1, v58, v6, v10, v11, v12, v13, v14);
      v15 = v59;
      if (v59)
      {
        if (v59 != 65012 && v58[1].i8[0])
        {
          goto LABEL_15;
        }

        *(a1 + v7) |= 0x100u;
        v15 = 64535;
      }

      if (v58->i32[1] != v53[2])
      {
        sub_10001ECB0(a1, 4294966777, v9, v10, v11, v12, v13, v14);
        if (!v52[1294])
        {
          goto LABEL_36;
        }

        v60 = *(v97 + 24);
        v61 = v58->i32[1];
        v62 = v53[2];
        v63 = *(v97 + 32);
        v103 = xmmword_100043460;
        v104 = *&qword_100043470;
        v105 = xmmword_100043480;
        v106 = *&off_100043490;
        sub_10002D0E8(&v103, 2, "Node %d's back link is 0x%x; expected 0x%x\n    disk offset = 0x%llx, size = 0x%x\n", v54, v61, v62, v60, v63);
        if (!v52[1294])
        {
          goto LABEL_36;
        }

        v15 = 65017;
      }

      v64 = v53[3];
      if (v64 == -1)
      {
        v53[3] = v54;
      }

      else if (v58->i32[0] != v64)
      {
        sub_10001ECB0(a1, 4294966777, v9, v10, v11, v12, v13, v14);
        if (!v52[1294])
        {
          goto LABEL_36;
        }

        v65 = *(v97 + 24);
        v66 = v58->i32[0];
        v67 = v53[3];
        v68 = *(v97 + 32);
        v103 = xmmword_100043460;
        v104 = *&qword_100043470;
        v105 = xmmword_100043480;
        v106 = *&off_100043490;
        sub_10002D0E8(&v103, 2, "Node %d's forward link is 0x%x; expected 0x%x\n    disk offset = 0x%llx, size = 0x%x\n", v54, v66, v67, v65, v68);
        if (!v52[1294])
        {
          goto LABEL_36;
        }

        v15 = 65017;
      }

      if (v58[1].i8[0])
      {
        if (v58[1].u8[0] != 255)
        {
          sub_10001ECB0(a1, 4294966781, v9, v10, v11, v12, v13, v14);
          v15 = 65021;
          if (!v52[1294])
          {
            goto LABEL_22;
          }
        }
      }

      if (*(v6 + 32) - *(a1 + 64) + 1 == v58[1].u8[1])
      {
        break;
      }

      LOWORD(v15) = 504;
      sub_10001ECB0(a1, 504, v9, v10, v11, v12, v13, v14);
      if (!v52[1294])
      {
        goto LABEL_36;
      }

LABEL_95:
      if ((dword_100043528 & 0x800) == 0)
      {
        goto LABEL_96;
      }

      v103 = xmmword_100043460;
      v104 = *&qword_100043470;
      v105 = xmmword_100043480;
      v106 = *&off_100043490;
      sub_10002D0E8(&v103, 2, "Node %u:\n", v98);
      sub_10002E7B8(v96, v99, 1);
LABEL_115:
      v50 = --*(a1 + 64);
      if (v50 <= 0)
      {
        goto LABEL_147;
      }
    }

    if (v15)
    {
      goto LABEL_95;
    }

LABEL_96:
    if ((v85 & 1) == 0)
    {
      sub_100007494(v6, v58, 0, &v100, &v101, &v102);
      if (sub_10001F210(v6, &v107, v100))
      {
        if (v52[1294])
        {
          v103 = xmmword_100043460;
          v104 = *&qword_100043470;
          v105 = xmmword_100043480;
          v106 = *&off_100043490;
          sub_10002D0E8(&v103, 2, "Index key doesn't match first node key\n");
          if ((dword_100043528 & 0x400) != 0)
          {
            v69 = *v53;
            v103 = xmmword_100043460;
            v104 = *&qword_100043470;
            v105 = xmmword_100043480;
            v106 = *&off_100043490;
            sub_10002D0E8(&v103, 2, "Found (child; node %u):\n", v69);
            if ((*(v6 + 136) & 2) != 0)
            {
              v70 = *v100 + 2;
            }

            else
            {
              v70 = *v100 + 1;
            }

            sub_10002E7B8(v100, v70, 0);
            v71 = *(v53 - 4);
            v103 = xmmword_100043460;
            v104 = *&qword_100043470;
            v105 = xmmword_100043480;
            v106 = *&off_100043490;
            sub_10002D0E8(&v103, 2, "Expected (parent; node %u):\n", v71);
            if ((*(v6 + 136) & 2) != 0)
            {
              v72 = v107 + 2;
            }

            else
            {
              v72 = v107 + 1;
            }

            sub_10002E7B8(&v107, v72, 0);
          }
        }

        sub_10001ECB0(a1, 4294966779, v9, v10, v11, v12, v13, v14);
        *(a1 + v7) |= 0x100u;
        LOWORD(v15) = -1001;
      }
    }

    if (!v58[1].i8[0])
    {
      v73 = sub_100004B1C(a1);
      LOWORD(v15) = v73;
      if (v73)
      {
        goto LABEL_22;
      }
    }

    ++*(a1 + 736);
LABEL_112:
    if (!v58[1].i8[0])
    {
      v74 = v58[1].i16[1];
      v75 = v89 + 1;
      if (v74 <= (v89 + 1))
      {
        v52 = &unk_100043000;
        goto LABEL_115;
      }

      *(v53 + 2) = v75;
      v78 = ++*(a1 + 64);
      v86 = v78;
      if (v78 > 8)
      {
        goto LABEL_27;
      }

      v81 = *(a1 + 72);
      sub_100007494(v6, v58, (v89 + 1), &v100, &v101, &v102);
      v82 = *v101;
      if (!*v101 || v82 >= *(v6 + 56))
      {
LABEL_148:
        v21 = -518;
        goto LABEL_35;
      }

      v87 = v81 + 16 * v86 - 16;
      __memmove_chk();
      *v87 = v82;
      *(v87 + 4) = -1;
      *(v87 + 8) = 0;
      if (v89 > 0x7FFE)
      {
        if (!v53[2])
        {
          goto LABEL_138;
        }

        v79 = *(v87 + 12);
      }

      else
      {
        sub_100007494(v6, v58, v89, &v100, &v101, &v102);
        v79 = *v101;
        if (!*v101 || v79 >= *(v6 + 56))
        {
          goto LABEL_148;
        }
      }

      *(v87 + 8) = v79;
LABEL_138:
      *(v87 + 12) = 0;
      if (v74 - 1 <= v75)
      {
        if (!v53[3])
        {
LABEL_145:
          v85 = 0;
          v50 = *(a1 + 64);
          goto LABEL_146;
        }

        v80 = -1;
      }

      else
      {
        sub_100007494(v6, v58, (v89 + 2), &v100, &v101, &v102);
        v80 = *v101;
        if (!*v101 || v80 >= *(v6 + 56))
        {
          goto LABEL_148;
        }
      }

      *(v87 + 12) = v80;
      goto LABEL_145;
    }

    if (!v53[2])
    {
      *(v6 + 44) = v54;
    }

    if (!v53[3])
    {
      *(v6 + 48) = v54;
    }

    v76 = v58[1].u16[1];
    if (a3)
    {
      if (v58[1].i16[1])
      {
        break;
      }
    }

LABEL_127:
    v83 += v76;
    v50 = --*(a1 + 64);
LABEL_146:
    v52 = &unk_100043000;
    if (v50 <= 0)
    {
LABEL_147:
      *(v6 + 40) = v83;
      goto LABEL_15;
    }
  }

  v77 = 0;
  while (1)
  {
    sub_100007494(v6, v58, v77, &v100, &v101, &v102);
    v17 = a3(a1, v100, v101, v102);
    if (v17)
    {
      break;
    }

    if (v58[1].u16[1] <= ++v77)
    {
      LOWORD(v15) = 0;
      goto LABEL_127;
    }
  }

LABEL_11:
  LOWORD(v15) = v17;
LABEL_22:
  if (v96)
  {
    sub_100006F74(v6, &v96, v9, v10, v11, v12, v13, v14);
  }

  return v15;
}

uint64_t sub_100028554(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  if ((a3[68] & 2) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  if (*(a2 + 10))
  {
    v11 = a3;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v35 = 0;
    v34 = 0;
    v33 = 0;
    while (1)
    {
      sub_100007494(v11, a2, v15, &v34, &v33, &v35);
      a3 = v34;
      if ((v11[68] & 2) != 0)
      {
        v16 = *v34;
      }

      else
      {
        v16 = *v34;
      }

      if (v16 > v11[27])
      {
        v13 = 4294966773;
        a1 = v9;
        v27 = 4294966773;
        goto LABEL_33;
      }

      if (v14 && (sub_10001F210(v11, v14, v34) & 0x80000000) == 0)
      {
        if (v11[27] == 516 && !sub_10001F210(v11, v14, &unk_10004004C))
        {
          if (sub_10002D444() >= 1)
          {
            v29 = xmmword_100043460;
            v30 = *&qword_100043470;
            v31 = xmmword_100043480;
            v32 = *&off_100043490;
            sub_10002D0E8(&v29, 2, "Problem: b-tree key for HFS+ Private Data directory is out of order.\n");
          }

          return 476;
        }

        v13 = 4294966772;
        sub_10001ECB0(v9, 4294966772, v17, v18, v19, v20, v21, v22);
        if (sub_10002D444() >= 1)
        {
          v29 = xmmword_100043460;
          v30 = *&qword_100043470;
          v31 = xmmword_100043480;
          v32 = *&off_100043490;
          sub_10002D0E8(&v29, 2, "Records %d and %d (0-based); offsets 0x%04X and 0x%04X\n", v12 - 1, v12, v14 - a2, v34 - a2);
        }
      }

      v14 = v34;
      v12 = ++v15;
      if (v15 >= *(a2 + 10))
      {
        if (v13 == -524)
        {
          v23 = dword_100043528;
          if ((dword_100043528 & 0x400) != 0 && *(a2 + 10))
          {
            v24 = 0;
            v25 = 0;
            do
            {
              sub_100007494(v11, a2, v25, &v34, &v33, &v35);
              if ((v11[68] & 2) != 0)
              {
                v26 = *v34;
              }

              else
              {
                v26 = *v34;
              }

              v29 = xmmword_100043460;
              v30 = *&qword_100043470;
              v31 = xmmword_100043480;
              v32 = *&off_100043490;
              sub_10002D0E8(&v29, 2, "Record %d (offset 0x%04X):\n", v24, v34 - a2);
              sub_10002E7B8(v34, v10 + v26, 0);
              v29 = xmmword_100043460;
              v30 = *&qword_100043470;
              v31 = xmmword_100043480;
              v32 = *&off_100043490;
              sub_10002D0E8(&v29, 2, "--\n");
              sub_10002E7B8(v33, v35, 0);
              v29 = xmmword_100043460;
              v30 = *&qword_100043470;
              v31 = xmmword_100043480;
              v32 = *&off_100043490;
              sub_10002D0E8(&v29, 2, "\n");
              v24 = ++v25;
            }

            while (v25 < *(a2 + 10));
            v23 = dword_100043528;
          }

          if ((v23 & 0x800) != 0)
          {
            v29 = xmmword_100043460;
            v30 = *&qword_100043470;
            v31 = xmmword_100043480;
            v32 = *&off_100043490;
            sub_10002D0E8(&v29, 2, "Node:\n");
            sub_10002E7B8(a2, v11[26], 1);
          }

          return 4294966772;
        }

        return v13;
      }
    }
  }

  if (*a2 || *(a2 + 4))
  {
    return 0;
  }

  v13 = 4294966776;
  v27 = 4294966776;
LABEL_33:
  sub_10001ECB0(a1, v27, a3, a4, a5, a6, a7, a8);
  return v13;
}

uint64_t sub_100028890(uint64_t a1, int a2)
{
  v10 = *(sub_10001EDA4(a2) + 16);
  memset(v33, 0, sizeof(v33));
  v11 = *(v10 + 56) + 7;
  if (v11 >= 8)
  {
    v13 = 0;
    v14 = v11 >> 3;
    v15 = 2;
    while (1)
    {
      *(a1 + 56) = v13;
      if (v33[0])
      {
        sub_100006F74(v10, v33, v4, v5, v6, v7, v8, v9);
      }

      v16 = sub_100006D88(v10, v13, v33);
      v12 = v16;
      if (v16)
      {
        break;
      }

      v23 = v33[0];
      if (v13)
      {
        v24 = sub_10001ED08(a1, a2, v13, v18, v19, v20, v21, v22);
        if (v24)
        {
          v12 = v24;
LABEL_31:
          if (v33[0])
          {
            sub_100006F74(v10, v33, v4, v5, v6, v7, v8, v9);
          }

          return v12;
        }

        if (v23[1].i8[0] != 2)
        {
          v12 = -525;
          sub_10001ECB0(a1, 4294966771, v4, v5, v6, v7, v8, v9);
          if (byte_10004350E)
          {
            v29 = xmmword_100043460;
            v30 = *&qword_100043470;
            v31 = xmmword_100043480;
            v32 = *&off_100043490;
            sub_10002D0E8(&v29, 2, "Expected map node, got type %d\n");
          }

          goto LABEL_31;
        }

        if (v23[1].i16[1] != 1)
        {
          v12 = -525;
          sub_10001ECB0(a1, 4294966771, v4, v5, v6, v7, v8, v9);
          if (byte_10004350E)
          {
            v29 = xmmword_100043460;
            v30 = *&qword_100043470;
            v31 = xmmword_100043480;
            v32 = *&off_100043490;
            sub_10002D0E8(&v29, 2, "Expected %d records in node, found %d\n");
          }

          goto LABEL_31;
        }

        if (v23[1].i8[1])
        {
          sub_10001ECB0(a1, 504, v4, v5, v6, v7, v8, v9);
        }

        v12 = 0;
      }

      v25 = sub_100007510(v10, v23, v15);
      v15 = 0;
      v14 -= v25;
      v13 = v23->i32[0];
      if (v23->i32[0])
      {
        v26 = v14 <= 0;
      }

      else
      {
        v26 = 1;
      }

      if (v26)
      {
        if (v13)
        {
          v27 = 0;
        }

        else
        {
          v27 = v14 < 1;
        }

        if (!v27)
        {
          v12 = -522;
          sub_10001ECB0(a1, 4294966774, v4, v5, v6, v7, v8, v9);
        }

        goto LABEL_31;
      }
    }

    if (v16 == 36)
    {
      v12 = -520;
      sub_10001ECB0(a1, 4294966776, v17, v18, v19, v20, v21, v22);
    }
  }

  else
  {
    return 0;
  }

  return v12;
}

uint64_t sub_100028AB8(uint64_t a1, int a2, _WORD *a3)
{
  v5 = *(sub_10001EDA4(a2) + 16);
  v6 = **(v5 + 760);
  v28 = 0u;
  v29 = 0u;
  v7 = *(v5 + 56);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0x80;
  while (1)
  {
    if ((v9 & *v6) != 0)
    {
      goto LABEL_12;
    }

    v10 = (*(v5 + 160))(*(v5 + 768), v8, 0, &v28);
    if (v10)
    {
      break;
    }

    if (DWORD2(v29) >= 4)
    {
      v17 = v28;
      v18 = DWORD2(v29) >> 2;
      while (!*v17++)
      {
        if (!--v18)
        {
          goto LABEL_11;
        }
      }

      *a3 |= 4u;
      *(a1 + 56) = v8;
      v20 = *(a1 + 888);
      v24 = *(a1 + 872);
      v25 = v20;
      v21 = *(a1 + 920);
      v26 = *(a1 + 904);
      v27 = v21;
      sub_10002D0A4(&v24, 608, v11, v12, v13, v14, v15, v16, v8);
      if (!byte_10004350E)
      {
        if (v28)
        {
          (*(v5 + 168))(*(v5 + 768), &v28, 0);
        }

        return 0;
      }
    }

LABEL_11:
    (*(v5 + 168))(*(v5 + 768), &v28, 0);
    *&v28 = 0;
    v7 = *(v5 + 56);
LABEL_12:
    if (v9 >> 1)
    {
      v9 >>= 1;
    }

    else
    {
      ++v6;
      v9 = 0x80;
    }

    if (++v8 >= v7)
    {
      return 0;
    }
  }

  v23 = v10;
  if (byte_10004350E)
  {
    v24 = xmmword_100043460;
    v25 = *&qword_100043470;
    v26 = xmmword_100043480;
    v27 = *&off_100043490;
    sub_10002D0E8(&v24, 2, "Couldn't read node #%u\n", v8);
  }

  return v23;
}

uint64_t sub_100028C70(uint64_t a1, int a2)
{
  memset(v41, 0, 106);
  v4 = *(sub_10001EDA4(a2) + 16);
  if (a2 == 408)
  {
    v5 = 808;
    v6 = 20;
  }

  else if (a2 == 136)
  {
    v5 = 792;
    v6 = 24;
  }

  else
  {
    if (a2)
    {
      LOWORD(v8) = -1;
      return v8;
    }

    v5 = 784;
    v6 = 22;
  }

  v7 = *(a1 + v5);
  *(a1 + 56) = 0;
  v8 = sub_10001EDB4(a1, v7, v41);
  if (!v8)
  {
    v15 = *(v4 + 40);
    v16 = *(v41 + 6);
    if (v15 != *(v41 + 6))
    {
      v17 = *(a1 + 888);
      v37 = *(a1 + 872);
      v38 = v17;
      v18 = *(a1 + 920);
      v39 = *(a1 + 904);
      v40 = v18;
      sub_10002D0A4(&v37, 558, v9, v10, v11, v12, v13, v14, v36);
      __sprintf_chk(v43, 0, 0x20uLL, "%ld", *(v4 + 40));
      __sprintf_chk(v42, 0, 0x20uLL, "%ld", *(v41 + 6));
      v19 = *(a1 + 888);
      v37 = *(a1 + 872);
      v38 = v19;
      v20 = *(a1 + 920);
      v39 = *(a1 + 904);
      v40 = v20;
      sub_10002D0A4(&v37, 559, v21, v22, v23, v24, v25, v26, v43);
    }

    if (*(v4 + 32) == LOWORD(v41[0]))
    {
      if (*(v4 + 36) == *(v41 + 2))
      {
        if (*(v4 + 44) == *(v41 + 10))
        {
          if (*(v4 + 48) == *(v41 + 14))
          {
            if (*(v4 + 52) == WORD1(v41[1]))
            {
              if (*(v4 + 54) == WORD2(v41[1]))
              {
                if (*(v4 + 56) == *(&v41[1] + 6))
                {
                  if (*(v4 + 60) == *(&v41[1] + 10))
                  {
                    if (v15 != v16)
                    {
                      LOWORD(v8) = 0;
                      *(a1 + v6) |= 0x8000u;
                      return v8;
                    }

LABEL_38:
                    LOWORD(v8) = 0;
                    return v8;
                  }

                  if (sub_10002D444() >= 3)
                  {
                    v37 = xmmword_100043460;
                    v38 = *&qword_100043470;
                    v39 = xmmword_100043480;
                    v40 = *&off_100043490;
                    sub_10002D0E8(&v37, 2, "\tinvalid free nodes - calculated %d header %d \n");
                  }
                }

                else if (sub_10002D444() >= 3)
                {
                  v37 = xmmword_100043460;
                  v38 = *&qword_100043470;
                  v39 = xmmword_100043480;
                  v40 = *&off_100043490;
                  sub_10002D0E8(&v37, 2, "\tinvalid total nodes - calculated %d header %d \n");
                }
              }

              else if (sub_10002D444() >= 3)
              {
                v37 = xmmword_100043460;
                v38 = *&qword_100043470;
                v39 = xmmword_100043480;
                v40 = *&off_100043490;
                sub_10002D0E8(&v37, 2, "\tinvalid max key length - calculated %d header %d \n");
              }
            }

            else if (sub_10002D444() >= 3)
            {
              v37 = xmmword_100043460;
              v38 = *&qword_100043470;
              v39 = xmmword_100043480;
              v40 = *&off_100043490;
              sub_10002D0E8(&v37, 2, "\tinvalid node size - calculated %d header %d \n");
            }
          }

          else if (sub_10002D444() >= 3)
          {
            v37 = xmmword_100043460;
            v38 = *&qword_100043470;
            v39 = xmmword_100043480;
            v40 = *&off_100043490;
            sub_10002D0E8(&v37, 2, "\tinvalid last leaf node - calculated %d header %d \n");
          }
        }

        else if (sub_10002D444() >= 3)
        {
          v37 = xmmword_100043460;
          v38 = *&qword_100043470;
          v39 = xmmword_100043480;
          v40 = *&off_100043490;
          sub_10002D0E8(&v37, 2, "\tinvalid first leaf node - calculated %d header %d \n");
        }
      }

      else if (sub_10002D444() >= 3)
      {
        v37 = xmmword_100043460;
        v38 = *&qword_100043470;
        v39 = xmmword_100043480;
        v40 = *&off_100043490;
        sub_10002D0E8(&v37, 2, "\tinvalid root node - calculated %d header %d \n");
      }
    }

    else if (sub_10002D444() >= 3)
    {
      v37 = xmmword_100043460;
      v38 = *&qword_100043470;
      v39 = xmmword_100043480;
      v40 = *&off_100043490;
      sub_10002D0E8(&v37, 2, "\tinvalid tree depth - calculated %d header %d \n");
    }

    *(a1 + v6) |= 0x8000u;
    v33 = *(a1 + 888);
    v37 = *(a1 + 872);
    v38 = v33;
    v34 = *(a1 + 920);
    v39 = *(a1 + 904);
    v40 = v34;
    sub_10002D0A4(&v37, 550, v27, v28, v29, v30, v31, v32, v36);
    goto LABEL_38;
  }

  return v8;
}

uint64_t sub_1000290AC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  while (a3)
  {
    --a3;
    v4 = *a1++;
    v3 = v4;
    v5 = *a2++;
    if (v3 != v5)
    {
      return -1;
    }
  }

  return 0;
}

uint64_t sub_1000290D8(uint64_t a1, int a2)
{
  memset(&v32[1], 0, 24);
  v10 = *(sub_10001EDA4(a2) + 16);
  if (a2 == 408)
  {
    v11 = 20;
  }

  else if (a2 == 136)
  {
    v11 = 24;
  }

  else
  {
    if (a2)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = 22;
  }

  v32[0] = 0;
  v12 = *(v10 + 56) + 7;
  if (v12 < 8)
  {
    return 0;
  }

  v14 = 0;
  v15 = **(v10 + 760);
  v16 = v12 >> 3;
  v17 = 2;
  do
  {
    *(a1 + 56) = v14;
    if (v32[0])
    {
      sub_100006F74(v10, v32, v4, v5, v6, v7, v8, v9);
    }

    v18 = sub_100006D88(v10, v14, v32);
    if (v18)
    {
      v13 = v18;
      goto LABEL_32;
    }

    v19 = v32[0];
    v20 = sub_100007510(v10, v32[0], v17);
    v21 = *(&v19->i16[-1] + *(v10 + 52) + -2 * (v17 & 0x7FFF));
    v22 = v19 + v21;
    if (v16 >= v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = v16;
    }

    v24 = v23;
    v25 = v15;
    while (v24)
    {
      --v24;
      v26 = *v25++;
      v27 = v19->u8[v21++];
      if (v26 != v27)
      {
        *(a1 + v11) |= 0x4000u;
        sub_10001ECB0(a1, 4294966771, v4, v5, v6, v7, v8, v9);
LABEL_31:
        v13 = 0;
        goto LABEL_32;
      }
    }

    v17 = 0;
    v16 -= v23;
    v15 += v23;
    v14 = v19->i32[0];
    if (v14)
    {
      v28 = v16 <= 0;
    }

    else
    {
      v28 = 1;
    }
  }

  while (!v28);
  if (v23 >= v20)
  {
    goto LABEL_31;
  }

  v29 = &v22[v20];
  v30 = &v22[v23];
  do
  {
    if (*v30)
    {
      *(a1 + v11) |= 0x4000u;
    }

    v13 = 0;
    ++v30;
  }

  while (v30 < v29);
LABEL_32:
  if (v32[0])
  {
    sub_100006F74(v10, v32, v4, v5, v6, v7, v8, v9);
  }

  return v13;
}

uint64_t sub_1000292B0(uint64_t a1, unsigned __int16 *a2, int a3)
{
  v4 = sub_10001F138(a2, a3);
  if (a3)
  {
    v5 = -256;
  }

  else
  {
    v5 = -32;
  }

  if (a3)
  {
    v6 = -255;
  }

  else
  {
    v6 = -31;
  }

  if (v4 + v5 >= v6)
  {
    return 0;
  }

  else
  {
    return 503;
  }
}

uint64_t sub_100029308(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 48) = 1;
  v10 = *(a1 + 776);
  if (*a2 == *v10)
  {
    v11 = 0;
  }

  else
  {
    if (sub_10002D444() >= 3)
    {
      v32 = xmmword_100043460;
      v33 = *&qword_100043470;
      v34 = xmmword_100043480;
      v35 = *&off_100043490;
      sub_10002D0E8(&v32, 2, "\tinvalid MDB drSigWord \n");
    }

    v11 = 1;
  }

  if (*(a2 + 1) != *(v10 + 4))
  {
    if (sub_10002D444() >= 3)
    {
      v32 = xmmword_100043460;
      v33 = *&qword_100043470;
      v34 = xmmword_100043480;
      v35 = *&off_100043490;
      sub_10002D0E8(&v32, 2, "\tinvalid MDB drCrDate \n");
    }

    v11 = 1;
  }

  if (*(a2 + 3) != *(v10 + 5))
  {
    if (sub_10002D444() >= 3)
    {
      v32 = xmmword_100043460;
      v33 = *&qword_100043470;
      v34 = xmmword_100043480;
      v35 = *&off_100043490;
      sub_10002D0E8(&v32, 2, "\tinvalid MDB drLsMod \n");
    }

    v11 = 1;
  }

  if (a2[5] != v10[2])
  {
    if (sub_10002D444() >= 3)
    {
      v32 = xmmword_100043460;
      v33 = *&qword_100043470;
      v34 = xmmword_100043480;
      v35 = *&off_100043490;
      sub_10002D0E8(&v32, 2, "\tinvalid MDB drAtrb \n");
    }

    v11 = 1;
  }

  if (a2[7] != v10[58])
  {
    if (sub_10002D444() >= 3)
    {
      v32 = xmmword_100043460;
      v33 = *&qword_100043470;
      v34 = xmmword_100043480;
      v35 = *&off_100043490;
      sub_10002D0E8(&v32, 2, "\tinvalid MDB drVBMSt \n");
    }

    v11 = 1;
  }

  if (*(v10 + 11) != a2[9])
  {
    if (sub_10002D444() >= 3)
    {
      v32 = xmmword_100043460;
      v33 = *&qword_100043470;
      v34 = xmmword_100043480;
      v35 = *&off_100043490;
      sub_10002D0E8(&v32, 2, "\tinvalid MDB drNmAlBlks \n");
    }

    v11 = 1;
  }

  if (*(a2 + 6) != *(v10 + 15))
  {
    if (sub_10002D444() >= 3)
    {
      v32 = xmmword_100043460;
      v33 = *&qword_100043470;
      v34 = xmmword_100043480;
      v35 = *&off_100043490;
      sub_10002D0E8(&v32, 2, "\tinvalid MDB drClpSiz \n");
    }

    v11 = 1;
  }

  if (a2[14] != v10[59])
  {
    if (sub_10002D444() >= 3)
    {
      v32 = xmmword_100043460;
      v33 = *&qword_100043470;
      v34 = xmmword_100043480;
      v35 = *&off_100043490;
      sub_10002D0E8(&v32, 2, "\tinvalid MDB drAlBlSt \n");
    }

    v11 = 1;
  }

  if (*(a2 + 15) != *(v10 + 16))
  {
    if (sub_10002D444() >= 3)
    {
      v32 = xmmword_100043460;
      v33 = *&qword_100043470;
      v34 = xmmword_100043480;
      v35 = *&off_100043490;
      sub_10002D0E8(&v32, 2, "\tinvalid MDB drNxtCNID \n");
    }

    v11 = 1;
  }

  v12 = a2 + 18;
  v13 = (v10 + 62);
  v14 = *(a2 + 36) + 1;
  while (v14)
  {
    --v14;
    v16 = *v12;
    v12 = (v12 + 1);
    v15 = v16;
    v17 = *v13++;
    if (v15 != v17)
    {
      if (sub_10002D444() >= 3)
      {
        v32 = xmmword_100043460;
        v33 = *&qword_100043470;
        v34 = xmmword_100043480;
        v35 = *&off_100043490;
        sub_10002D0E8(&v32, 2, "\tinvalid MDB drVN \n");
      }

      v11 = 1;
      break;
    }
  }

  if (*(a2 + 16) != *(v10 + 6))
  {
    if (sub_10002D444() >= 3)
    {
      v32 = xmmword_100043460;
      v33 = *&qword_100043470;
      v34 = xmmword_100043480;
      v35 = *&off_100043490;
      sub_10002D0E8(&v32, 2, "\tinvalid MDB drVolBkUp \n");
    }

    v11 = 1;
  }

  if (a2[34] != v10[60])
  {
    if (sub_10002D444() >= 3)
    {
      v32 = xmmword_100043460;
      v33 = *&qword_100043470;
      v34 = xmmword_100043480;
      v35 = *&off_100043490;
      sub_10002D0E8(&v32, 2, "\tinvalid MDB drVSeqNum \n");
    }

    v11 = 1;
  }

  if (*(a2 + 35) != *(v10 + 17))
  {
    if (sub_10002D444() >= 3)
    {
      v32 = xmmword_100043460;
      v33 = *&qword_100043470;
      v34 = xmmword_100043480;
      v35 = *&off_100043490;
      sub_10002D0E8(&v32, 2, "\tinvalid MDB drWrCnt \n");
    }

    v11 = 1;
  }

  if (*(a2 + 37) != *(*(v10 + 20) + 104))
  {
    if (sub_10002D444() >= 3)
    {
      v32 = xmmword_100043460;
      v33 = *&qword_100043470;
      v34 = xmmword_100043480;
      v35 = *&off_100043490;
      sub_10002D0E8(&v32, 2, "\tinvalid MDB drXTClpSiz \n");
    }

    v11 = 1;
  }

  if (*(a2 + 39) != *(*(v10 + 21) + 104))
  {
    if (sub_10002D444() >= 3)
    {
      v32 = xmmword_100043460;
      v33 = *&qword_100043470;
      v34 = xmmword_100043480;
      v35 = *&off_100043490;
      sub_10002D0E8(&v32, 2, "\tinvalid MDB drCTClpSiz \n");
    }

    v11 = 1;
  }

  if (a2[41] != v10[57])
  {
    if (sub_10002D444() >= 3)
    {
      v32 = xmmword_100043460;
      v33 = *&qword_100043470;
      v34 = xmmword_100043480;
      v35 = *&off_100043490;
      sub_10002D0E8(&v32, 2, "\tinvalid MDB drNmRtDirs \n");
    }

    v11 = 1;
  }

  if (*(a2 + 21) != *(v10 + 8))
  {
    if (sub_10002D444() >= 3)
    {
      v32 = xmmword_100043460;
      v33 = *&qword_100043470;
      v34 = xmmword_100043480;
      v35 = *&off_100043490;
      sub_10002D0E8(&v32, 2, "\tinvalid MDB drFilCnt \n");
    }

    v11 = 1;
  }

  if (*(a2 + 22) != *(v10 + 9))
  {
    if (sub_10002D444() >= 3)
    {
      v32 = xmmword_100043460;
      v33 = *&qword_100043470;
      v34 = xmmword_100043480;
      v35 = *&off_100043490;
      sub_10002D0E8(&v32, 2, "\tinvalid MDB drDirCnt \n");
    }

    v11 = 1;
  }

  v18 = 0;
  while (v18 != 32)
  {
    v19 = *(a2 + v18 + 92);
    v20 = *(v10 + v18++ + 80);
    if (v19 != v20)
    {
      if (sub_10002D444() >= 3)
      {
        v32 = xmmword_100043460;
        v33 = *&qword_100043470;
        v34 = xmmword_100043480;
        v35 = *&off_100043490;
        sub_10002D0E8(&v32, 2, "\tinvalid MDB drFndrInfo \n");
      }

      v11 = 1;
      break;
    }
  }

  v21 = *(v10 + 20);
  if (*(v21 + 120) == *(a2 + 65))
  {
    v22 = 0;
  }

  else
  {
    sub_10001EA44(a1, 554, 3, 0, a5, a6, a7, a8);
    v22 = 1;
  }

  v23 = *(a1 + 690);
  if (v23 >= 1)
  {
    v24 = 0;
    v25 = (v21 + 26);
    v26 = a2 + 68;
    do
    {
      if (*(v26 - 1) != *(v25 - 1) || *v26 != *v25)
      {
        sub_10001EA44(a1, 554, 4, 0, a5, a6, a7, a8);
        LOWORD(v23) = *(a1 + 690);
        v22 = 1;
      }

      ++v24;
      v25 += 2;
      v26 += 2;
    }

    while (v24 < v23);
  }

  v27 = *(v10 + 21);
  if (*(v27 + 120) != *(a2 + 73))
  {
    sub_10001EA44(a1, 554, 5, 0, a5, a6, a7, a8);
    LOWORD(v23) = *(a1 + 690);
    v22 = 1;
  }

  if (v23 >= 1)
  {
    v28 = 0;
    v29 = (v27 + 26);
    v30 = a2 + 76;
    do
    {
      if (*(v30 - 1) != *(v29 - 1) || *v30 != *v29)
      {
        sub_10001EA44(a1, 554, 6, 0, a5, a6, a7, a8);
        LOWORD(v23) = *(a1 + 690);
        v22 = 1;
      }

      ++v28;
      v29 += 2;
      v30 += 2;
    }

    while (v28 < v23);
  }

  if (v11 | v22)
  {
    *(a1 + 18) |= 0x8000u;
    if (v11)
    {
      sub_10001EA44(a1, 554, 1, 0, a5, a6, a7, a8);
    }
  }

  return 0;
}

uint64_t sub_100029AA0(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 776);
  *(a1 + 48) = 1;
  v11 = *(v10 + 192);
  if (*(a2 + 8) == *(v10 + 32) || (*(a1 + 29) & 0x40) != 0)
  {
    v22 = 0;
  }

  else
  {
    v12 = *(a1 + 888);
    v78 = *(a1 + 872);
    v79 = v12;
    v13 = *(a1 + 920);
    v80 = *(a1 + 904);
    v81 = v13;
    sub_10002D0A4(&v78, 542, a3, a4, a5, a6, a7, a8, v77);
    __sprintf_chk(v83, 0, 0x20uLL, "%u", *(v10 + 32));
    __sprintf_chk(v82, 0, 0x20uLL, "%u", *(a2 + 8));
    v14 = *(a1 + 888);
    v78 = *(a1 + 872);
    v79 = v14;
    v15 = *(a1 + 920);
    v80 = *(a1 + 904);
    v81 = v15;
    sub_10002D0A4(&v78, 559, v16, v17, v18, v19, v20, v21, v83);
    v22 = 1;
  }

  if (*(a2 + 9) != *(v10 + 36) && (*(a1 + 29) & 0x40) == 0)
  {
    v23 = *(a1 + 888);
    v78 = *(a1 + 872);
    v79 = v23;
    v24 = *(a1 + 920);
    v80 = *(a1 + 904);
    v81 = v24;
    sub_10002D0A4(&v78, 541, a3, a4, a5, a6, a7, a8, v77);
    __sprintf_chk(v83, 0, 0x20uLL, "%u", *(v10 + 36));
    __sprintf_chk(v82, 0, 0x20uLL, "%u", *(a2 + 9));
    v25 = *(a1 + 888);
    v78 = *(a1 + 872);
    v79 = v25;
    v26 = *(a1 + 920);
    v80 = *(a1 + 904);
    v81 = v26;
    sub_10002D0A4(&v78, 559, v27, v28, v29, v30, v31, v32, v83);
    v22 = 1;
  }

  if (*(a2 + 12) != *(v10 + 48))
  {
    v33 = *(a1 + 888);
    v78 = *(a1 + 872);
    v79 = v33;
    v34 = *(a1 + 920);
    v80 = *(a1 + 904);
    v81 = v34;
    sub_10002D0A4(&v78, 553, a3, a4, a5, a6, a7, a8, v77);
    __sprintf_chk(v83, 0, 0x20uLL, "%u", *(v10 + 48));
    __sprintf_chk(v82, 0, 0x20uLL, "%u", *(a2 + 12));
    v35 = *(a1 + 888);
    v78 = *(a1 + 872);
    v79 = v35;
    v36 = *(a1 + 920);
    v80 = *(a1 + 904);
    v81 = v36;
    sub_10002D0A4(&v78, 559, v37, v38, v39, v40, v41, v42, v83);
    v22 = 1;
  }

  if (*(a2 + 70) != *(*(v10 + 168) + 104))
  {
    v43 = *(a1 + 888);
    v78 = *(a1 + 872);
    v79 = v43;
    v44 = *(a1 + 920);
    v80 = *(a1 + 904);
    v81 = v44;
    sub_10002D0A4(&v78, 549, a3, a4, a5, a6, a7, a8, v77);
    __sprintf_chk(v83, 0, 0x20uLL, "%u", *(*(v10 + 168) + 104));
    __sprintf_chk(v82, 0, 0x20uLL, "%u", *(a2 + 70));
    v45 = *(a1 + 888);
    v78 = *(a1 + 872);
    v79 = v45;
    v46 = *(a1 + 920);
    v80 = *(a1 + 904);
    v81 = v46;
    sub_10002D0A4(&v78, 559, v47, v48, v49, v50, v51, v52, v83);
    v22 = 1;
  }

  v53 = 0;
  v54 = *a2;
  if (v54 != 18475 && v54 != 18520)
  {
    if (sub_10002D444() >= 3)
    {
      v78 = xmmword_100043460;
      v79 = *&qword_100043470;
      v80 = xmmword_100043480;
      v81 = *&off_100043490;
      sub_10002D0E8(&v78, 2, "\tinvalid VHB signature \n");
    }

    v53 = 1;
  }

  if ((*(v10 + 72) & ~*(a2 + 9)) != 0)
  {
    if (sub_10002D444() >= 3)
    {
      v55 = *(a2 + 9);
      v56 = *(v10 + 72);
      v78 = xmmword_100043460;
      v79 = *&qword_100043470;
      v80 = xmmword_100043480;
      v81 = *&off_100043490;
      sub_10002D0E8(&v78, 2, "\tinvalid VHB encodingsBitmap, disk=0x%qx calculated=0x%qx \n", v55, v56);
    }

    v53 = 1;
  }

  if (*(v10 + 118) != (v11 >> 9))
  {
    if (sub_10002D444() >= 3)
    {
      v78 = xmmword_100043460;
      v79 = *&qword_100043470;
      v80 = xmmword_100043480;
      v81 = *&off_100043490;
      sub_10002D0E8(&v78, 2, "\tinvalid VHB AlBlSt \n");
    }

    v53 = 1;
  }

  if (*(a2 + 4) != *(v10 + 16))
  {
    if (sub_10002D444() >= 3)
    {
      v78 = xmmword_100043460;
      v79 = *&qword_100043470;
      v80 = xmmword_100043480;
      v81 = *&off_100043490;
      sub_10002D0E8(&v78, 2, "\tinvalid VHB createDate \n");
    }

    v53 = 1;
  }

  if (*(a2 + 5) != *(v10 + 20))
  {
    if (sub_10002D444() >= 3)
    {
      v78 = xmmword_100043460;
      v79 = *&qword_100043470;
      v80 = xmmword_100043480;
      v81 = *&off_100043490;
      sub_10002D0E8(&v78, 2, "\tinvalid VHB modifyDate \n");
    }

    v53 = 1;
  }

  if (*(a2 + 6) != *(v10 + 24))
  {
    if (sub_10002D444() >= 3)
    {
      v78 = xmmword_100043460;
      v79 = *&qword_100043470;
      v80 = xmmword_100043480;
      v81 = *&off_100043490;
      sub_10002D0E8(&v78, 2, "\tinvalid VHB backupDate \n");
    }

    v53 = 1;
  }

  if (*(a2 + 7) != *(v10 + 28))
  {
    if (sub_10002D444() >= 3)
    {
      v78 = xmmword_100043460;
      v79 = *&qword_100043470;
      v80 = xmmword_100043480;
      v81 = *&off_100043490;
      sub_10002D0E8(&v78, 2, "\tinvalid VHB checkedDate \n");
    }

    v53 = 1;
  }

  if (*(a2 + 14) != *(v10 + 56))
  {
    if (sub_10002D444() >= 3)
    {
      v57 = *(a2 + 14);
      v58 = *(v10 + 56);
      v78 = xmmword_100043460;
      v79 = *&qword_100043470;
      v80 = xmmword_100043480;
      v81 = *&off_100043490;
      sub_10002D0E8(&v78, 2, "\tinvalid VHB rsrcClumpSize (VH=%u, vcb=%u)\n", v57, v58);
    }

    v53 = 1;
  }

  if (*(a2 + 15) != *(v10 + 60))
  {
    if (sub_10002D444() >= 3)
    {
      v78 = xmmword_100043460;
      v79 = *&qword_100043470;
      v80 = xmmword_100043480;
      v81 = *&off_100043490;
      sub_10002D0E8(&v78, 2, "\tinvalid VHB dataClumpSize \n");
    }

    v53 = 1;
  }

  if (*(a2 + 16) != *(v10 + 64) && (*(a2 + 5) & 0x10) == 0)
  {
    if (sub_10002D444() >= 3)
    {
      v78 = xmmword_100043460;
      v79 = *&qword_100043470;
      v80 = xmmword_100043480;
      v81 = *&off_100043490;
      sub_10002D0E8(&v78, 2, "\tinvalid VHB nextCatalogID \n");
    }

    v53 = 1;
  }

  if (*(a2 + 17) != *(v10 + 68))
  {
    if (sub_10002D444() >= 3)
    {
      v78 = xmmword_100043460;
      v79 = *&qword_100043470;
      v80 = xmmword_100043480;
      v81 = *&off_100043490;
      sub_10002D0E8(&v78, 2, "\tinvalid VHB writeCount \n");
    }

    v53 = 1;
  }

  if (*(a2 + 13) != *(v10 + 52))
  {
    if (sub_10002D444() >= 3)
    {
      v78 = xmmword_100043460;
      v79 = *&qword_100043470;
      v80 = xmmword_100043480;
      v81 = *&off_100043490;
      sub_10002D0E8(&v78, 2, "\tinvalid VHB nextAllocation \n");
    }

    v53 = 1;
  }

  if (*(a2 + 11) != *(v10 + 44))
  {
    if (sub_10002D444() >= 3)
    {
      v78 = xmmword_100043460;
      v79 = *&qword_100043470;
      v80 = xmmword_100043480;
      v81 = *&off_100043490;
      sub_10002D0E8(&v78, 2, "\tinvalid VHB totalBlocks \n");
    }

    v53 = 1;
  }

  if (*(a2 + 10) != *(v10 + 40))
  {
    if (sub_10002D444() >= 3)
    {
      v78 = xmmword_100043460;
      v79 = *&qword_100043470;
      v80 = xmmword_100043480;
      v81 = *&off_100043490;
      sub_10002D0E8(&v78, 2, "\tinvalid VHB blockSize \n");
    }

    v53 = 1;
  }

  if (*(a2 + 1) != *(v10 + 4))
  {
    if (sub_10002D444() >= 3)
    {
      v78 = xmmword_100043460;
      v79 = *&qword_100043470;
      v80 = xmmword_100043480;
      v81 = *&off_100043490;
      sub_10002D0E8(&v78, 2, "\tinvalid VHB attributes \n");
    }

    v53 = 1;
  }

  if (*(a2 + 50) != *(*(v10 + 160) + 104))
  {
    if (sub_10002D444() >= 3)
    {
      v78 = xmmword_100043460;
      v79 = *&qword_100043470;
      v80 = xmmword_100043480;
      v81 = *&off_100043490;
      sub_10002D0E8(&v78, 2, "\tinvalid VHB extentsFile.clumpSize \n");
    }

    v53 = 1;
  }

  if (*(a2 + 30) != *(*(v10 + 152) + 104))
  {
    if (sub_10002D444() >= 3)
    {
      v78 = xmmword_100043460;
      v79 = *&qword_100043470;
      v80 = xmmword_100043480;
      v81 = *&off_100043490;
      sub_10002D0E8(&v78, 2, "\tinvalid VHB allocationFile.clumpSize \n");
    }

    v53 = 1;
  }

  v59 = *(v10 + 176);
  if (v59 && *(a2 + 90) != *(v59 + 104))
  {
    if (sub_10002D444() >= 3)
    {
      v78 = xmmword_100043460;
      v79 = *&qword_100043470;
      v80 = xmmword_100043480;
      v81 = *&off_100043490;
      sub_10002D0E8(&v78, 2, "\tinvalid VHB attributesFile.clumpSize \n");
    }

    v53 = 1;
  }

  v60 = 0;
  while (v60 != 32)
  {
    v61 = *(a2 + v60 + 80);
    v62 = *(v10 + 80 + v60++);
    if (v61 != v62)
    {
      if (sub_10002D444() >= 3)
      {
        v78 = xmmword_100043460;
        v79 = *&qword_100043470;
        v80 = xmmword_100043480;
        v81 = *&off_100043490;
        sub_10002D0E8(&v78, 2, "\tinvalid VHB finderInfo \n");
      }

      v53 = 1;
      break;
    }
  }

  v63 = *(v10 + 160);
  if (*(v10 + 40) * *(a2 + 51) != *(v63 + 120))
  {
    sub_10001EA44(a1, 555, 3, 0, a5, a6, a7, a8);
    v22 = 1;
  }

  v64 = *(a1 + 690);
  if (v64 >= 1)
  {
    v65 = 0;
    v66 = (v63 + 40);
    v67 = a2 + 106;
    do
    {
      if (*(v67 - 1) != *(v66 - 1) || *v67 != *v66)
      {
        sub_10001EA44(a1, 555, 4, 0, a5, a6, a7, a8);
        LOWORD(v64) = *(a1 + 690);
        v22 = 1;
      }

      ++v65;
      v66 += 2;
      v67 += 4;
    }

    while (v65 < v64);
  }

  v68 = *(v10 + 168);
  if (*(v10 + 40) * *(a2 + 71) != *(v68 + 120))
  {
    sub_10001EA44(a1, 555, 5, 0, a5, a6, a7, a8);
    LOWORD(v64) = *(a1 + 690);
    v22 = 1;
  }

  if (v64 >= 1)
  {
    v69 = 0;
    v70 = (v68 + 40);
    v71 = a2 + 146;
    do
    {
      if (*(v71 - 1) != *(v70 - 1) || *v71 != *v70)
      {
        sub_10001EA44(a1, 555, 6, 0, a5, a6, a7, a8);
        LOWORD(v64) = *(a1 + 690);
        v22 = 1;
      }

      ++v69;
      v70 += 2;
      v71 += 4;
    }

    while (v69 < v64);
  }

  v72 = *(v10 + 152);
  if (*(v10 + 40) * *(a2 + 31) != *(v72 + 120))
  {
    sub_10001EA44(a1, 555, 7, 0, a5, a6, a7, a8);
    LOWORD(v64) = *(a1 + 690);
    v22 = 1;
  }

  if (v64 >= 1)
  {
    v73 = 0;
    v74 = (v72 + 40);
    v75 = a2 + 66;
    do
    {
      if (*(v75 - 1) != *(v74 - 1) || *v75 != *v74)
      {
        sub_10001EA44(a1, 555, 8, 0, a5, a6, a7, a8);
        LOWORD(v64) = *(a1 + 690);
        v22 = 1;
      }

      ++v73;
      v74 += 2;
      v75 += 4;
    }

    while (v73 < v64);
  }

  if (v53 | v22)
  {
    *(a1 + 18) |= 0x8000u;
    if (v53)
    {
      sub_10001EA44(a1, 555, 2, 0, a5, a6, a7, a8);
    }
  }

  return 0;
}

uint64_t sub_10002A5B8(uint64_t a1, char **a2)
{
  v19 = 0;
  v3 = *(a1 + 16);
  *cStr = *a1;
  v17 = v3;
  v18 = *(a1 + 32);
  v4 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = IOServiceMatching("IOMedia");
  if (v6 && (v7 = v6, CFDictionarySetValue(v6, @"UUID", v5), (MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v7)) != 0))
  {
    v9 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"BSD Name", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v11 = CFProperty;
      if (CFStringGetCString(CFProperty, buffer, 1024, 0x8000100u))
      {
        if (byte_10004350E)
        {
          v15[0] = xmmword_100043460;
          v15[1] = *&qword_100043470;
          v15[2] = xmmword_100043480;
          v15[3] = *&off_100043490;
        }

        v12 = opendev(buffer, 0, 0, 0);
        v13 = v12;
        if (a2 && v12 != -1)
        {
          *a2 = strdup(buffer);
        }
      }

      else
      {
        v13 = 0xFFFFFFFFLL;
      }

      CFRelease(v11);
    }

    else
    {
      v13 = 0xFFFFFFFFLL;
    }

    IOObjectRelease(v9);
  }

  else
  {
    v13 = 0xFFFFFFFFLL;
  }

  CFRelease(v5);
  return v13;
}

uint64_t sub_10002A778(uint64_t a1)
{
  if (!dword_100043434)
  {
    sub_100020B5C();
    v3 = v2;
    v4 = malloc_type_malloc(0x80uLL, 0x100004052888210uLL);
    qword_100047428 = v4;
    *&v5 = -1;
    *(&v5 + 1) = -1;
    *v4 = v5;
    v4[1] = v5;
    v4[2] = v5;
    v4[3] = v5;
    v4[4] = v5;
    v4[5] = v5;
    v4[6] = v5;
    v4[7] = v5;
    v6 = malloc_type_malloc(0x80uLL, 0x100004052888210uLL);
    qword_100047420 = v6;
    *v6 = 0u;
    v6[1] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    v6[4] = 0u;
    v6[5] = 0u;
    v6[6] = 0u;
    v6[7] = 0u;
    dword_100047438 = *(*(a1 + 776) + 44);
    if ((dword_100047438 & 0x3FF) != 0)
    {
      v7 = (dword_100047438 >> 10) + 1;
    }

    else
    {
      v7 = dword_100047438 >> 10;
    }

    dword_10004743C = v7;
    v8 = malloc_type_calloc((v7 + 7) >> 3, 1uLL, 0x100004077774924uLL);
    v9 = v8;
    qword_100047430 = v8;
    v10 = dword_10004743C - 1;
    if ((dword_10004743C - 1) > 7)
    {
      v12 = v10 >> 3;
      *v8 = 0;
      if (v10 >> 3 >= 2)
      {
        bzero(v8 + 1, (v12 - 1));
      }

      v11 = 510 << (v10 & 7);
      v9 += v12;
    }

    else
    {
      v11 = 255 << dword_10004743C;
    }

    *v9 &= v11;
    dword_100043588 = 0;
    sub_10002BB18();
    v13 = qword_100043580;
    qword_100047410 = qword_100043580;
    qword_100043580 = *(qword_100043580 + 8);
    *(v13 + 8) = 0;
    dword_100043434 = 1;
    dword_100047418 = 0;
    if (v3)
    {
      v14 = *(*(a1 + 776) + 40);
      if (v14 == 1024)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      if (v14 == 512)
      {
        v16 = 3;
      }

      else
      {
        v16 = v15;
      }

      sub_10002A950(0, v16);
      if (*(*(a1 + 776) + 40) == 512)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      sub_10002A950(dword_100047438 + ~(*(*(a1 + 776) + 40) == 512), v17);
    }
  }

  return 0;
}

uint64_t sub_10002A950(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1;
  if (a2 + a1 > dword_100047438)
  {
    return 60;
  }

  v18 = 0;
  dword_100047418 += a2;
  v5 = sub_10002ADE4(a1, &v18, 1);
  if (v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v7 = (v3 >> 5) & 0x1F;
  v8 = &v18[v7];
  v9 = v3 & 0x1F;
  if ((v3 & 0x1F) != 0)
  {
    v10 = 0xFFFFFFFF >> v9;
    v11 = 32 - v9;
    v12 = 0xFFFFFFFF >> (v9 + a2);
    if (v11 > a2)
    {
      v13 = ~v12;
    }

    else
    {
      v13 = 0x7FFFFFFF;
    }

    v14 = v13 & v10;
    v15 = (bswap32(*v8) & v14) != 0;
    *v8++ |= bswap32(v14);
    if (a2 >= v11)
    {
      v16 = a2 - v11;
    }

    else
    {
      v16 = 0;
    }

    v17 = v7 ^ 0x1F;
    if (v7 == 31 || v11 >= a2)
    {
      sub_10002AC10(v3);
    }
  }

  else
  {
    v15 = 0;
    v17 = 32 - v7;
    v16 = a2;
  }

  if (v16 >= 0x20)
  {
    do
    {
      if (!v17)
      {
        v3 = (v3 + 1024);
        v6 = sub_10002ADE4(v3, &v18, 1);
        if (v6)
        {
          goto LABEL_34;
        }

        v17 = 32;
        v8 = v18;
      }

      if (*v8)
      {
        v15 = 1;
      }

      *v8++ = -1;
      --v17;
      v16 -= 32;
      if (!v16 || !v17)
      {
        sub_10002AC10(v3);
      }
    }

    while (v16 > 0x1F);
  }

  if (v16)
  {
    if (v17)
    {
LABEL_30:
      if (bswap32(*v8) > 0xFFFFFFFF >> v16)
      {
        v15 = 1;
      }

      *v8 |= bswap32(~(0xFFFFFFFF >> v16));
      sub_10002AC10(v3);
      goto LABEL_34;
    }

    v3 = (v3 + 1024);
    v6 = sub_10002ADE4(v3, &v18, 1);
    if (!v6)
    {
      v8 = v18;
      goto LABEL_30;
    }
  }

LABEL_34:
  if (v15)
  {
    return 511;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10002AB64()
{
  if (dword_100043434)
  {
    free(qword_100047428);
    qword_100047428 = 0;
    free(qword_100047420);
    qword_100047420 = 0;
    free(qword_100047430);
    qword_100047430 = 0;
    v0 = dword_100043588;
    if (dword_100043588 >= 1)
    {
      do
      {
        dword_100043588 = v0 - 1;
        free(qword_100043590[v0 - 1]);
        v0 = dword_100043588;
      }

      while (dword_100043588 > 0);
    }

    qword_100043580 = 0;
    qword_100047410 = 0;
    dword_100043434 = 0;
  }

  return 0;
}

void sub_10002AC10(uint64_t result)
{
  v1 = result >> 13;
  v2 = 1 << ((result >> 10) & 7);
  v3 = qword_100047410;
  if ((v2 & *(qword_100047430 + v1)) == 0 && qword_100047410 != 0)
  {
    v5 = result >> 10;
    while (1)
    {
      v6 = *(v3 + 16);
      if (v6 == v5)
      {
        break;
      }

      v3 = *(v3 + 8 * (v6 < v5));
      if (!v3)
      {
        return;
      }
    }

    if (result >= 0x400)
    {
      if (!bcmp((v3 + 20), qword_100047428, 0x80uLL))
      {
        sub_10002AD24(v5);
        if (v7)
        {
          *(qword_100047430 + v1) |= v2;
          ++dword_100043438;
          --dword_10004343C;
        }
      }

      if (!bcmp((v3 + 20), qword_100047420, 0x80uLL))
      {
        sub_10002AD24(v5);
        if (v8)
        {
          --dword_10004343C;
        }
      }
    }
  }
}

double sub_10002AD24(unsigned int a1)
{
  v2 = qword_100047410;
  if (*(qword_100047410 + 16) != a1 && qword_100047410 != 0)
  {
    v4 = *(qword_100047410 + 16);
    if (v4 == a1)
    {
      v5 = 0;
LABEL_11:
      v6 = *(v2 + 8);
      if (v6)
      {
        v7 = *(v2 + 8);
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
        *v8 = *v2;
      }

      else
      {
        v6 = *v2;
      }

      v5[*v5 != v2] = v6;
      *(v2 + 144) = 0;
      result = 0.0;
      *(v2 + 112) = 0u;
      *(v2 + 128) = 0u;
      *(v2 + 80) = 0u;
      *(v2 + 96) = 0u;
      *(v2 + 48) = 0u;
      *(v2 + 64) = 0u;
      *(v2 + 16) = 0u;
      *(v2 + 32) = 0u;
      *v2 = 0u;
      *(v2 + 8) = qword_100043580;
      qword_100043580 = v2;
    }

    else
    {
      while (1)
      {
        v5 = v2;
        v2 = *(v2 + 8 * (v4 < a1));
        if (!v2)
        {
          break;
        }

        v4 = *(v2 + 16);
        if (v4 == a1)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002ADE4(unsigned int a1, uint64_t *a2, int a3)
{
  *a2 = 0;
  v5 = a1 >> 10;
  v6 = a1 >> 13;
  v7 = *(qword_100047430 + v6);
  v8 = 1 << ((a1 >> 10) & 7);
  if ((v8 & v7) != 0)
  {
    if (a3 != 2)
    {
      v13 = qword_100047428;
      goto LABEL_14;
    }

    *(qword_100047430 + v6) = v7 & ~v8;
    --dword_100043438;
    v9 = 1;
  }

  else
  {
    v10 = qword_100047410;
    if (qword_100047410)
    {
      while (1)
      {
        v11 = *(v10 + 16);
        if (v11 == v5)
        {
          break;
        }

        v10 = *(v10 + 8 * (v11 < v5));
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v13 = v10 + 20;
      goto LABEL_14;
    }

LABEL_7:
    if (a3 != 1)
    {
      v13 = qword_100047420;
      goto LABEL_14;
    }

    v9 = 0;
  }

  v12 = sub_10002BA38(v5, v9);
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v12 + 20;
LABEL_14:
  *a2 = v13;
LABEL_15:
  if (*a2)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10002AECC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1;
  if (a2 + a1 > dword_100047438)
  {
    return 60;
  }

  v18 = 0;
  dword_100047418 -= a2;
  v5 = sub_10002ADE4(a1, &v18, 2);
  if (v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v7 = (v3 >> 5) & 0x1F;
  v8 = &v18[v7];
  v9 = v3 & 0x1F;
  if ((v3 & 0x1F) != 0)
  {
    v10 = 0xFFFFFFFF >> v9;
    v11 = 32 - v9;
    v12 = 0xFFFFFFFF >> (v9 + a2);
    if (v11 > a2)
    {
      v13 = ~v12;
    }

    else
    {
      v13 = 0x7FFFFFFF;
    }

    v14 = v13 & v10;
    v15 = (v14 & ~bswap32(*v8)) != 0;
    *v8++ &= bswap32(~v14);
    if (a2 >= v11)
    {
      v16 = a2 - v11;
    }

    else
    {
      v16 = 0;
    }

    v17 = v7 ^ 0x1F;
    if (v7 == 31 || v11 >= a2)
    {
      sub_10002AC10(v3);
    }
  }

  else
  {
    v15 = 0;
    v17 = 32 - v7;
    v16 = a2;
  }

  if (v16 >= 0x20)
  {
    do
    {
      if (!v17)
      {
        v3 = (v3 + 1024);
        v6 = sub_10002ADE4(v3, &v18, 2);
        if (v6)
        {
          goto LABEL_34;
        }

        v17 = 32;
        v8 = v18;
      }

      if (*v8 != -1)
      {
        v15 = 1;
      }

      *v8++ = 0;
      --v17;
      v16 -= 32;
      if (!v16 || !v17)
      {
        sub_10002AC10(v3);
      }
    }

    while (v16 > 0x1F);
  }

  if (v16)
  {
    if (v17)
    {
LABEL_30:
      if ((bswap32(*v8) | (0xFFFFFFFF >> v16)) != 0xFFFFFFFF)
      {
        v15 = 1;
      }

      *v8 &= bswap32(0xFFFFFFFF >> v16);
      sub_10002AC10(v3);
      goto LABEL_34;
    }

    v3 = (v3 + 1024);
    v6 = sub_10002ADE4(v3, &v18, 2);
    if (!v6)
    {
      v8 = v18;
      goto LABEL_30;
    }
  }

LABEL_34:
  if (v15)
  {
    return 511;
  }

  else
  {
    return v6;
  }
}

void sub_10002B0E0(uint64_t a1, int a2)
{
  v3 = *(a1 + 776);
  v4 = *(a1 + 800);
  sub_100020B5C();
  v6 = v5;
  v7 = *(v3 + 44) - dword_100047418;
  if (*(v3 + 48) != v7)
  {
    *(v3 + 48) = v7;
    *(v3 + 196) |= 0xFF00u;
  }

  v35[0] = 0;
  v29 = v4;
  if (v5)
  {
    v8 = 0;
    v9 = (8 * *(v4 + 128) - 1);
  }

  else
  {
    v8 = *(v3 + 116);
    v9 = 4095;
  }

  memset(&v35[1], 0, 24);
  if (dword_100047438)
  {
    v10 = 0;
    v28 = 0;
    v11 = 0;
    v12 = 0;
    v36 = 0;
    v27 = (a1 + 872);
    do
    {
      sub_10002ADE4(v12, &v36, 3);
      if ((v12 & v9) == 0)
      {
        if (v6)
        {
          if (v35[0])
          {
            sub_10000508C(v29, v35, v11);
            if (v13)
            {
              return;
            }
          }

          if (sub_100004E04(v29, v8, 0, v35))
          {
            return;
          }
        }

        else
        {
          if (v35[0])
          {
            sub_100004D50(v3, v35, v11 | 0x10);
            if (v14)
            {
              return;
            }
          }

          if (sub_100004C84(v3, v8, 16, v35))
          {
            return;
          }
        }

        v11 = 0;
        v10 = v35[0];
        *(a1 + 56) = v8++;
      }

      v15 = v36;
      if (memcmp(v36, v10 + ((v12 & v9) >> 3), 0x80uLL))
      {
        if (a2)
        {
          memmove(v10 + ((v12 & v9) >> 3), v15, 0x80uLL);
          v11 = 1;
        }

        else
        {
          for (i = 0; i != 128; ++i)
          {
            if ((v15[i] & ~*(v10 + ((v12 & v9) >> 3) + i)) != 0)
            {
              *(a1 + 18) |= 0x2000u;
              v25 = v27[1];
              v31 = *v27;
              v32 = v25;
              v26 = v27[3];
              v33 = v27[2];
              v34 = v26;
              sub_10002D0A4(&v31, 556, v16, v17, v18, v19, v20, v21, v27);
              goto LABEL_32;
            }
          }

          *(a1 + 18) |= 0x2000u;
          if (!v28)
          {
            v23 = v27[1];
            v31 = *v27;
            v32 = v23;
            v24 = v27[3];
            v33 = v27[2];
            v34 = v24;
            sub_10002D0A4(&v31, 609, v16, v17, v18, v19, v20, v21, v27);
          }

          v28 = 1;
        }

        ++*(a1 + 736);
      }

      v12 += 1024;
    }

    while (v12 < dword_100047438);
  }

  else
  {
    v11 = 0;
  }

LABEL_32:
  if (v35[0])
  {
    if (v6)
    {
      sub_10000508C(v29, v35, v11);
    }

    else
    {
      sub_100004D50(v3, v35, v11 | 0x10);
    }
  }
}

uint64_t sub_10002B37C(uint64_t result)
{
  v1 = *(result + 776);
  if (dword_100047438)
  {
    v2 = 0;
    v3 = 0;
    v9 = 0;
    do
    {
      result = sub_10002ADE4(v2, &v9, 3);
      if (v9 == qword_100047428)
      {
        v3 += 1024;
      }

      else if (v9 != qword_100047420)
      {
        for (i = 0; i != 32; ++i)
        {
          v5 = *(v9 + 4 * i);
          if (v5)
          {
            if (v5 == -1)
            {
              v3 += 32;
            }

            else
            {
              v6 = bswap32(v5);
              do
              {
                v3 += v6 & 1;
                v7 = v6 > 1;
                v6 >>= 1;
              }

              while (v7);
            }
          }
        }
      }

      v2 += 1024;
    }

    while (v2 < dword_100047438);
  }

  else
  {
    v3 = 0;
  }

  if (dword_100047418 != v3)
  {
    dword_100047418 = v3;
  }

  v8 = *(v1 + 44) - v3;
  if (*(v1 + 48) != v8)
  {
    *(v1 + 48) = v8;
    *(v1 + 196) |= 0xFF00u;
  }

  return result;
}

uint64_t sub_10002B498(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (dword_100047438)
  {
    v5 = 0;
    v6 = 0;
    v19 = 0;
    v7 = 1024;
    v8 = a2;
    while (1)
    {
      sub_10002ADE4(v6, &v19, 3);
      if (dword_100047438 - v6 < 0x400)
      {
        v7 = dword_100047438 - v6;
      }

      if (v19 == qword_100047428)
      {
        v5 = 0;
        v8 = a2;
      }

      else
      {
        if (v19 != qword_100047420)
        {
          v9 = 0;
          v10 = v6;
          while (1)
          {
            v11 = *(v19 + 4 * v9);
            if (v11 == -1)
            {
              v5 = 0;
              v8 = a2;
            }

            else
            {
              v12 = v7 - 32 * v9;
              if (v12 >= 0x20)
              {
                v12 = 32;
              }

              if (v7 == 1024)
              {
                v12 = 32;
              }

              if (!v12)
              {
                goto LABEL_38;
              }

              v13 = bswap32(v11);
              v14 = v12;
              v15 = v10;
              do
              {
                if ((v13 & 0x80000000) != 0)
                {
                  v5 = 0;
                  v8 = a2;
                }

                else
                {
                  if (v8 == a2)
                  {
                    v5 = v15;
                  }

                  else
                  {
                    v5 = v5;
                  }

                  if (!--v8)
                  {
                    goto LABEL_36;
                  }
                }

                v13 *= 2;
                ++v15;
                --v14;
              }

              while (v14);
              if (v12 != 32)
              {
                goto LABEL_38;
              }
            }

            ++v9;
            v10 += 32;
            if (v9 == 32)
            {
              goto LABEL_34;
            }
          }
        }

        if (v8 == a2)
        {
          v5 = v6;
        }

        else
        {
          v5 = v5;
        }

        v16 = v8 >= v7;
        v8 -= v7;
        if (v8 == 0 || !v16)
        {
LABEL_36:
          *a3 = v5;
          goto LABEL_43;
        }
      }

LABEL_34:
      v6 += 1024;
      if (v6 >= dword_100047438)
      {
        goto LABEL_38;
      }
    }
  }

  v5 = 0;
  v8 = a2;
LABEL_38:
  if (v8)
  {
    v17 = 0;
  }

  else
  {
    v17 = v5;
  }

  *a3 = v17;
  if (v8)
  {
    return 28;
  }

LABEL_43:

  return sub_10002A950(v5, a2);
}

uint64_t sub_10002B664(uint64_t a1)
{
  qword_100047440 = &unk_100047450;
  *&dword_100047448 = 0;
  if (dword_100047438)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v14 = 0;
    do
    {
      if ((v5 & 0x3FF) != 0)
      {
        sub_1000309D0();
      }

      sub_10002ADE4(v5, &v14, 3);
      v6 = v14;
      if (v14 == qword_100047428)
      {
        if (v3)
        {
          sub_10002B860(a1, v4, v3);
          v2 += v3;
        }

        v3 = 0;
        v5 += 1024;
        v7 = dword_100047438;
      }

      else if (v14 == qword_100047420)
      {
        if (!v3)
        {
          v4 = v5;
        }

        v7 = dword_100047438;
        v11 = dword_100047438 - v5;
        if (dword_100047438 - v5 >= 0x400)
        {
          v11 = 1024;
        }

        v3 += v11;
        v5 += 1024;
      }

      else
      {
        v7 = dword_100047438;
        if (v5 < dword_100047438)
        {
          v8 = 0;
          do
          {
            if ((v5 & 0x1F) != 0)
            {
              sub_1000309FC();
            }

            if (v5 < v7)
            {
              v9 = bswap32(*(v6 + 4 * v8));
              v10 = 0x80000000;
              do
              {
                if ((v10 & v9) != 0)
                {
                  if (v3)
                  {
                    sub_10002B860(a1, v4, v3);
                    v2 += v3;
                    v7 = dword_100047438;
                    v3 = 0;
                  }
                }

                else
                {
                  if (!v3)
                  {
                    v4 = v5;
                  }

                  ++v3;
                }

                ++v5;
                if (v10 < 2)
                {
                  break;
                }

                v10 >>= 1;
              }

              while (v5 < v7);
            }

            if (v8 > 0x1E)
            {
              break;
            }

            ++v8;
          }

          while (v5 < v7);
        }
      }
    }

    while (v5 < v7);
    if (v3)
    {
      sub_10002B860(a1, v4, v3);
      v2 += v3;
    }
  }

  else
  {
    v2 = 0;
  }

  sub_10002B928();
  v13[0] = xmmword_100043460;
  v13[1] = *&qword_100043470;
  v13[2] = xmmword_100043480;
  v13[3] = *&off_100043490;
  return sub_10002D128(v13, 65, "Trimmed %u allocation blocks.\n", v2);
}

void sub_10002B860(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v13[0] = xmmword_100043460;
  v13[1] = *&qword_100043470;
  v13[2] = xmmword_100043480;
  v13[3] = *&off_100043490;
  sub_10002D128(v13, 65, "Trimming: startBlock=%10u, blockCount=%10u\n", a2, a3);
  v6 = *(*(a1 + 776) + 40) * a2;
  sub_100020B5C();
  v7 = *(a1 + 776);
  if (v8)
  {
    v9 = *(v7 + 192);
  }

  else
  {
    v9 = *(v7 + 118) << 9;
  }

  v10 = *(v7 + 40) * a3;
  v11 = dword_100047448;
  v12 = (&unk_100047450 + 16 * dword_100047448);
  *v12 = v9 + v6;
  v12[1] = v10;
  dword_100047448 = v11 + 1;
  if (v11 == 255)
  {
    sub_10002B928();
  }
}

uint64_t sub_10002B928()
{
  if (dword_100047448)
  {
    result = ioctl(qword_1000434A8, 0x8010641FuLL, &qword_100047440);
    if (result == -1)
    {
      v1 = *__error();
      v2 = xmmword_100043460;
      v3 = *&qword_100043470;
      v4 = xmmword_100043480;
      v5 = *&off_100043490;
      result = sub_10002D128(&v2, 66, "TrimFlush: error %d\n", v1);
    }

    dword_100047448 = 0;
  }

  else
  {
    v2 = xmmword_100043460;
    v3 = *&qword_100043470;
    v4 = xmmword_100043480;
    v5 = *&off_100043490;
    return sub_10002D128(&v2, 65, "TrimFlush: nothing to flush\n");
  }

  return result;
}

uint64_t sub_10002B9EC()
{
  v1 = 0;
  if (ioctl(qword_1000434A8, 0x4004644CuLL, &v1) >= 0)
  {
    return v1 & 0x10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002BA38(unsigned int a1, int a2)
{
  v4 = qword_100043580;
  if (qword_100043580 || (sub_10002BB18(), (v4 = qword_100043580) != 0))
  {
    qword_100043580 = *(v4 + 8);
    ++dword_10004343C;
    *(v4 + 8) = 0;
    *(v4 + 16) = a1;
    if (a2 == 1)
    {
      memmove((v4 + 20), qword_100047428, 0x80uLL);
      a1 = *(v4 + 16);
    }

    else
    {
      *(v4 + 132) = 0u;
      *(v4 + 116) = 0u;
      *(v4 + 100) = 0u;
      *(v4 + 84) = 0u;
      *(v4 + 68) = 0u;
      *(v4 + 52) = 0u;
      *(v4 + 36) = 0u;
      *(v4 + 20) = 0u;
    }

    v5 = &qword_100047410;
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      while (1)
      {
        v5 = v6;
        if (a1 <= *(v6 + 16))
        {
          break;
        }

        v6 = *(v6 + 8);
        if (!v6)
        {
          ++v5;
          goto LABEL_11;
        }
      }
    }

LABEL_11:
    *v5 = v4;
  }

  return v4;
}

void sub_10002BB18()
{
  if (dword_100043588 <= 1999)
  {
    v0 = malloc_type_malloc(0x10B30uLL, 0x1020040952FC7B9uLL);
    if (v0)
    {
      v1 = v0;
      bzero(v0, 0x10B30uLL);
      v2 = 0;
      v3 = v1 + 152;
      v4 = vdupq_n_s64(0x1C1uLL);
      do
      {
        v5 = vorrq_s8(vdupq_n_s64(v2), xmmword_100031250);
        if (vmovn_s64(vcgtq_u64(v4, v5)).u8[0])
        {
          *(v3 - 144) = v3;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1C1uLL), v5)).i32[1])
        {
          *(v3 + 8) = v3 + 152;
        }

        v2 += 2;
        v3 += 304;
      }

      while (v2 != 450);
      qword_100043580 = v1;
      v6 = dword_100043588++;
      qword_100043590[v6] = v1;
    }
  }
}

uint64_t sub_10002BBF4(const char *a1)
{
  v2 = qword_1000434E8;
  qword_1000434F8 = a1;
  byte_1000434B5 = byte_1000434B4;
  *&v81.f_bsize = xmmword_100043460;
  *&v81.f_bfree = *&qword_100043470;
  *&v81.f_files = xmmword_100043480;
  *v81.f_fsid.val = *&off_100043490;
  sub_10002D0E8(&v81, 2, "");
  if (byte_100043508)
  {
    if (!dword_1000434E0)
    {
      memset(&v81, 0, 144);
      if (stat(qword_1000434F8, &v81) != -1 && (v81.f_iosize & 0xB000 | 0x4000) == 0x6000)
      {
        memset(&v80, 0, sizeof(v80));
        v3 = fileno(__stdinp);
        if (fstat(v3, &v80) != -1 && LODWORD(v81.f_bavail) == v80.st_dev)
        {
          v75 = xmmword_100043460;
          v76 = *&qword_100043470;
          v77 = xmmword_100043480;
          v78 = *&off_100043490;
          v4 = "ERROR: input redirected from target volume for live verify.\n";
LABEL_14:
          v7 = &v75;
LABEL_99:
          v24 = 2;
          goto LABEL_100;
        }

        v5 = fileno(__stdoutp);
        if (fstat(v5, &v80) != -1 && LODWORD(v81.f_bavail) == v80.st_dev)
        {
          v75 = xmmword_100043460;
          v76 = *&qword_100043470;
          v77 = xmmword_100043480;
          v78 = *&off_100043490;
          v4 = "ERROR:  output redirected to target volume for live verify.\n";
          goto LABEL_14;
        }

        v6 = fileno(__stderrp);
        if (fstat(v6, &v80) != -1 && LODWORD(v81.f_bavail) == v80.st_dev)
        {
          v75 = xmmword_100043460;
          v76 = *&qword_100043470;
          v77 = xmmword_100043480;
          v78 = *&off_100043490;
          v4 = "ERROR:  error output redirected to target volume for live verify.\n";
          goto LABEL_14;
        }
      }
    }
  }

  if (byte_10004350E && byte_10004350B)
  {
    *&v81.f_bsize = xmmword_100043460;
    *&v81.f_bfree = *&qword_100043470;
    *&v81.f_files = xmmword_100043480;
    *v81.f_fsid.val = *&off_100043490;
    sub_10002D0E8(&v81, 1, "starting\n");
  }

  memset(&v80, 0, sizeof(v80));
  v79 = 0;
  if (dword_1000434E0)
  {
    *&v81.f_bsize = xmmword_100043460;
    *&v81.f_bfree = *&qword_100043470;
    *&v81.f_files = xmmword_100043480;
    *v81.f_fsid.val = *&off_100043490;
    sub_10002D0E8(&v81, 2, "fsck_hfs: detonator_run (%s).\n", a1);
    memset(&v81, 0, 144);
    if (fstat(SHIDWORD(qword_1000434A8), &v81))
    {
      v75 = xmmword_100043460;
      v76 = *&qword_100043470;
      v77 = xmmword_100043480;
      v78 = *&off_100043490;
      sub_10002D0E8(&v75, 4, "fsck_hfs: fstat %s", a1);
    }

    if (lseek(SHIDWORD(qword_1000434A8), 0, 0) == -1)
    {
      v8 = HIDWORD(qword_1000434A8);
      v9 = *__error();
      v75 = xmmword_100043460;
      v76 = *&qword_100043470;
      v77 = xmmword_100043480;
      v78 = *&off_100043490;
      sub_10002D0E8(&v75, 4, "fsck_hfs: Could not seek %d for dev: %s, errorno %d", v8, a1, v9);
    }

    sub_10002D42C(1);
  }

  else
  {
    if (stat(a1, &v80) < 0)
    {
      v19 = __error();
      v20 = strerror(*v19);
      *&v81.f_bsize = xmmword_100043460;
      *&v81.f_bfree = *&qword_100043470;
      *&v81.f_files = xmmword_100043480;
      *v81.f_fsid.val = *&off_100043490;
      v65 = a1;
      v67 = v20;
      v18 = "Can't stat %s: %s\n";
      goto LABEL_62;
    }

    if ((v80.st_mode & 0xF000) != 0x2000)
    {
      *&v81.f_bsize = xmmword_100043460;
      *&v81.f_bfree = *&qword_100043470;
      *&v81.f_files = xmmword_100043480;
      *v81.f_fsid.val = *&off_100043490;
      sub_10002D0E8(&v81, 3, "%s is not a character device", a1);
      if (!sub_10002CBDC("CONTINUE"))
      {
LABEL_73:
        if (byte_10004350B)
        {
          *&v81.f_bsize = xmmword_100043460;
          *&v81.f_bfree = *&qword_100043470;
          *&v81.f_files = xmmword_100043480;
          *v81.f_fsid.val = *&off_100043490;
          v4 = "CAN'T CHECK FILE SYSTEM.";
LABEL_75:
          v7 = &v81;
          v24 = 3;
LABEL_100:
          sub_10002D0E8(v7, v24, v4, v65, v67);
        }

        return 8;
      }
    }

    if (!(byte_100043509 | byte_10004350D) && !strncmp(a1, "/dev/rdisk", 0xAuLL))
    {
      snprintf(&v81, 0x401uLL, "/dev/%s", a1 + 6);
      v10 = sub_100027508(&v81);
      if (byte_10004350E)
      {
        v75 = xmmword_100043460;
        v76 = *&qword_100043470;
        v77 = xmmword_100043480;
        v78 = *&off_100043490;
        sub_10002D0E8(&v75, 2, "journal_replay(%s) returned %d\n", &v81, v10);
      }
    }
  }

  if (!(byte_10004350B | byte_1000434B6))
  {
    if (byte_100043509 || byte_10004350D || HIDWORD(qword_1000434A8) == -1)
    {
      *&v81.f_bsize = xmmword_100043460;
      *&v81.f_bfree = *&qword_100043470;
      *&v81.f_files = xmmword_100043480;
      *v81.f_fsid.val = *&off_100043490;
      sub_10002D0E8(&v81, 2, "** %s (NO WRITE)\n");
    }

    else
    {
      *&v81.f_bsize = xmmword_100043460;
      *&v81.f_bfree = *&qword_100043470;
      *&v81.f_files = xmmword_100043480;
      *v81.f_fsid.val = *&off_100043490;
      sub_10002D0E8(&v81, 2, "** %s\n");
    }
  }

  v11 = sub_10002D408();
  if (v11 == -1)
  {
    *&v81.f_bsize = xmmword_100043460;
    *&v81.f_bfree = *&qword_100043470;
    *&v81.f_files = xmmword_100043480;
    *v81.f_fsid.val = *&off_100043490;
    v18 = "Device block size was not initialized\n";
LABEL_62:
    v21 = 2;
LABEL_72:
    sub_10002D0E8(&v81, v21, v18, v65, v67);
    goto LABEL_73;
  }

  v12 = v11;
  v13 = xmmword_1000434D0;
  if (!xmmword_1000434D0 && !byte_10004350D)
  {
    v74 = 8;
    *&v75 = 0;
    if (sysctlbyname("hw.memsize", &v75, &v74, 0, 0) == -1)
    {
      *&v81.f_bsize = xmmword_100043460;
      *&v81.f_bfree = *&qword_100043470;
      *&v81.f_files = xmmword_100043480;
      *v81.f_fsid.val = *&off_100043490;
      sub_10002D0E8(&v81, 6, "sysctlbyname failed, not auto-setting cache size\n");
      v13 = xmmword_1000434D0;
    }

    else
    {
      if (byte_100043508)
      {
        v14 = 1;
      }

      else
      {
        v14 = byte_1000434B4 == 0;
      }

      v15 = !v14;
      if (!dword_1000434E0)
      {
        v73 = 0;
        v74 = 4;
        if (sysctlbyname("kern.safeboot", &v73, &v74, 0, 0) != -1 && v73 && byte_1000434B4 && !byte_100043508)
        {
          if (byte_10004350E)
          {
            *&v81.f_bsize = xmmword_100043460;
            *&v81.f_bfree = *&qword_100043470;
            *&v81.f_files = xmmword_100043480;
            *v81.f_fsid.val = *&off_100043490;
            sub_10002D0E8(&v81, 6, "Safe mode and single-user, setting memsize to a maximum of 2gbytes\n");
          }

          v16 = v75;
          if (v75 >= 0x80000000)
          {
            v16 = 0x80000000;
          }

          *&v75 = v16;
        }
      }

      v17 = 3;
      if (v15)
      {
        v17 = 1;
      }

      v13 = v75 >> v17;
      *&xmmword_1000434D0 = v75 >> v17;
    }
  }

  sub_100001DA0(v13, &v79 + 1, &v79, byte_10004350E);
  if (byte_100043508)
  {
    v22 = byte_1000434B4 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = !v22;
  if (sub_100001E98(&unk_100048450, qword_1000434A8, SHIDWORD(qword_1000434A8), v12, HIDWORD(v79), v79, 0x101u, v23))
  {
    *&v81.f_bsize = xmmword_100043460;
    *&v81.f_bfree = *&qword_100043470;
    *&v81.f_files = xmmword_100043480;
    *v81.f_fsid.val = *&off_100043490;
    v18 = "Can't initialize disk cache\n";
    v21 = 3;
    goto LABEL_72;
  }

  if (!byte_10004350B && byte_1000434B4 && !byte_1000434B6)
  {
    *&v81.f_bsize = xmmword_100043460;
    *&v81.f_bfree = *&qword_100043470;
    *&v81.f_files = xmmword_100043480;
    *v81.f_fsid.val = *&off_100043490;
    sub_10002D0E8(&v81, 2, "** Root file system\n");
  }

  if (byte_1000434C1 && byte_100043509)
  {
    BYTE3(xmmword_100043510) = 5;
  }

  if (dword_1000434BC && !sub_10002D438())
  {
    *&v81.f_bsize = xmmword_100043460;
    *&v81.f_bfree = *&qword_100043470;
    *&v81.f_files = xmmword_100043480;
    *v81.f_fsid.val = *&off_100043490;
    v4 = "BTree rebuild requested but writing disabled\n";
    goto LABEL_98;
  }

  if (qword_100043448 && xmmword_100043510)
  {
    *&v81.f_bsize = xmmword_100043460;
    *&v81.f_bfree = *&qword_100043470;
    *&v81.f_files = xmmword_100043480;
    *v81.f_fsid.val = *&off_100043490;
    v4 = "Cannot scan for bad blocks and ask for listed blocks to file mapping\n";
LABEL_98:
    v7 = &v81;
    goto LABEL_99;
  }

  v70 = a1;
  if (!xmmword_100043510)
  {
    goto LABEL_148;
  }

  *&v81.f_bsize = xmmword_100043460;
  *&v81.f_bfree = *&qword_100043470;
  *&v81.f_files = xmmword_100043480;
  *v81.f_fsid.val = *&off_100043490;
  sub_10002D0E8(&v81, 2, "Scanning entire disk for bad blocks\n");
  v25 = qword_1000434A8;
  v26 = signal(29, sub_10002D038);
  if (dword_100043520 == -1)
  {
    v27 = 512;
  }

  else
  {
    v27 = dword_100043520;
  }

  v28 = *(&xmmword_100043510 + 1) * v27;
  v69 = v26;
  v29 = 0x100000;
  if (v27 > 0x100000)
  {
    goto LABEL_102;
  }

  do
  {
    v30 = malloc_type_malloc(v29, 0xE9B6EC3CuLL);
    v31 = v30;
    v29 >>= v30 == 0;
  }

  while (!v30 && v29 >= v27);
  if (v30)
  {
    v68 = 0;
  }

  else
  {
LABEL_102:
    *&v81.f_bsize = xmmword_100043460;
    *&v81.f_bfree = *&qword_100043470;
    *&v81.f_files = xmmword_100043480;
    *v81.f_fsid.val = *&off_100043490;
    sub_10002D0E8(&v81, 3, "Cannot allocate buffer for disk scan.\n");
    v31 = 0;
    v68 = 1;
  }

  v33 = 0;
  v71 = 0;
  while (1)
  {
    while (1)
    {
      if (byte_10004862C == 1)
      {
        *&v81.f_bsize = xmmword_100043460;
        *&v81.f_bfree = *&qword_100043470;
        *&v81.f_files = xmmword_100043480;
        *v81.f_fsid.val = *&off_100043490;
        if (v28)
        {
          sub_10002D0E8(&v81, 0, "Scanning offset %lld of %lld (%d%%)\n");
        }

        else
        {
          sub_10002D0E8(&v81, 0, "Scanning offset %lld\n");
        }

        byte_10004862C = 0;
      }

      v34 = pread(v25, v31, v29, v33);
      if (v34 == v29)
      {
        v35 = 100 * (v29 + v33);
        do
        {
          v33 += v29;
          if (byte_10004862C == 1)
          {
            *&v81.f_bsize = xmmword_100043460;
            *&v81.f_bfree = *&qword_100043470;
            *&v81.f_files = xmmword_100043480;
            *v81.f_fsid.val = *&off_100043490;
            if (v28)
            {
              sub_10002D0E8(&v81, 0, "Scanning offset %lld of %lld (%d%%)\n");
            }

            else
            {
              sub_10002D0E8(&v81, 0, "Scanning offset %lld\n");
            }

            byte_10004862C = 0;
          }

          v34 = pread(v25, v31, v29, v33);
          v35 += 100 * v29;
        }

        while (v34 == v29);
      }

      if (v34 == -1)
      {
        break;
      }

      if (!v34)
      {
        goto LABEL_145;
      }

      if (v34 < v29)
      {
        if (v34 % v27)
        {
          v36 = v27 + v27 * (v34 % v27);
        }

        else
        {
          v36 = v34;
        }

LABEL_123:
        v33 += v36;
      }
    }

    if (*__error() == 5)
    {
      break;
    }

    if (*__error() != 4)
    {
      v45 = __error();
      v46 = strerror(*v45);
      *&v81.f_bsize = xmmword_100043460;
      *&v81.f_bfree = *&qword_100043470;
      *&v81.f_files = xmmword_100043480;
      *v81.f_fsid.val = *&off_100043490;
      v65 = v33;
      v67 = v46;
      v4 = "Got a non I/O error reading disk at offset %llu:  %s\n";
      goto LABEL_75;
    }
  }

  v36 = 0;
  if (!v29)
  {
    goto LABEL_123;
  }

  v37 = v27;
  while (1)
  {
    v72 = v36;
    v38 = v37;
    v39 = v33 + v36;
    v40 = pread(v25, v31, v38, v33 + v36);
    if (v40 != -1)
    {
      if (!v40)
      {
        goto LABEL_145;
      }

      goto LABEL_138;
    }

    if (*__error() == 5)
    {
      break;
    }

    v43 = __error();
    v44 = strerror(*v43);
    *&v81.f_bsize = xmmword_100043460;
    *&v81.f_bfree = *&qword_100043470;
    *&v81.f_files = xmmword_100043480;
    *v81.f_fsid.val = *&off_100043490;
    sub_10002D0E8(&v81, 3, "Got a non I/O error reading disk at offset %llu: %s\n", v39, v44);
    v40 = -1;
LABEL_138:
    v37 = v27;
    if (v40 != v27)
    {
      *&v81.f_bsize = xmmword_100043460;
      *&v81.f_bfree = *&qword_100043470;
      *&v81.f_files = xmmword_100043480;
      *v81.f_fsid.val = *&off_100043490;
      sub_10002D0E8(&v81, 1, "During disk scan, did not get block size (%zd) read, got %zd instead.  Skipping rest of this block.\n", v27, v40);
    }

    v42 = v72;
LABEL_141:
    v36 = v42 + v37;
    if (v36 >= v29)
    {
      goto LABEL_123;
    }
  }

  if (byte_10004350E)
  {
    *&v81.f_bsize = xmmword_100043460;
    *&v81.f_bfree = *&qword_100043470;
    *&v81.f_files = xmmword_100043480;
    *v81.f_fsid.val = *&off_100043490;
    sub_10002D0E8(&v81, 6, "Bad block at offset %lld\n", v39);
  }

  v41 = sub_10002D2D0();
  sub_10002CACC((v39 / v41));
  ++v71;
  v42 = v72;
  v37 = v27;
  if (v71 < 0x29)
  {
    goto LABEL_141;
  }

  if (byte_10004350E)
  {
    *&v81.f_bsize = xmmword_100043460;
    *&v81.f_bfree = *&qword_100043470;
    *&v81.f_files = xmmword_100043480;
    *v81.f_fsid.val = *&off_100043490;
    sub_10002D0E8(&v81, 6, "Got %u errors, maxing out so stopping scan\n", v71);
  }

LABEL_145:
  if ((v68 & 1) == 0)
  {
    free(v31);
  }

  signal(29, v69);
LABEL_148:
  v47 = qword_1000434A8;
  v48 = HIDWORD(qword_1000434A8);
  v49 = SBYTE3(xmmword_100043510);
  v50 = SBYTE2(xmmword_100043510);
  v51 = dword_1000434C8;
  v52 = sub_10002D438();
  *&v81.f_bsize = xmmword_100043460;
  *&v81.f_bfree = *&qword_100043470;
  *&v81.f_files = xmmword_100043480;
  *v81.f_fsid.val = *&off_100043490;
  v53 = sub_1000031E0(v70, v47, v48, v49, v50, &v81, v51, v52, *&xmmword_100043480, &dword_1000434A4, byte_100043508, dword_1000434BC);
  v54 = v53;
  if (byte_10004350E)
  {
    *&v81.f_bsize = xmmword_100043460;
    *&v81.f_bfree = *&qword_100043470;
    *&v81.f_files = xmmword_100043480;
    *v81.f_fsid.val = *&off_100043490;
    sub_10002D0E8(&v81, 2, "\tCheckHFS returned %d, fsmodified = %d\n", v53, dword_1000434A4);
  }

  if (!byte_1000434B5)
  {
    sub_10000219C(&unk_100048450);
    if (!byte_10004350D)
    {
      f_flags = 0;
      goto LABEL_155;
    }

    switch(v54)
    {
      case 0xDu:
        *&v81.f_bsize = xmmword_100043460;
        *&v81.f_bfree = *&qword_100043470;
        *&v81.f_files = xmmword_100043480;
        *v81.f_fsid.val = *&off_100043490;
        sub_10002D0E8(&v81, 1, "QUICKCHECK ONLY; FILESYSTEM DIRTY\n");
        break;
      case 6u:
        *&v81.f_bsize = xmmword_100043460;
        *&v81.f_bfree = *&qword_100043470;
        *&v81.f_files = xmmword_100043480;
        *v81.f_fsid.val = *&off_100043490;
        sub_10002D0E8(&v81, 1, "QUICKCHECK ONLY; NO HFS SIGNATURE FOUND\n");
        break;
      case 0u:
        *&v81.f_bsize = xmmword_100043460;
        *&v81.f_bfree = *&qword_100043470;
        *&v81.f_files = xmmword_100043480;
        *v81.f_fsid.val = *&off_100043490;
        sub_10002D0E8(&v81, 1, "QUICKCHECK ONLY; FILESYSTEM CLEAN\n");
        return 0;
      default:
        return 8;
    }

    return 3;
  }

  memset(&v81, 0, 512);
  if (statfs(v2, &v81))
  {
    f_flags = 0;
  }

  else
  {
    f_flags = v81.f_flags;
  }

  sub_10000219C(&unk_100048450);
LABEL_155:
  if (byte_1000434B5 && dword_1000434A4)
  {
    memset(&v80, 0, 48);
    if (!byte_10004350B)
    {
      *&v81.f_bsize = xmmword_100043460;
      *&v81.f_bfree = *&qword_100043470;
      *&v81.f_files = xmmword_100043480;
      *v81.f_fsid.val = *&off_100043490;
      sub_10002D0A4(&v81, 122, v56, v57, v58, v59, v60, v61, v66);
    }

    if (f_flags)
    {
      memset(&v80, 0, 48);
      if (byte_10004350E)
      {
        *&v81.f_bsize = xmmword_100043460;
        *&v81.f_bfree = *&qword_100043470;
        *&v81.f_files = xmmword_100043480;
        *v81.f_fsid.val = *&off_100043490;
        sub_10002D0E8(&v81, 6, "doing update / reload mount for %s now\n", v2);
      }

      if (mount("hfs", v2, f_flags | 0x50000, &v80))
      {
        v62 = __error();
        v63 = strerror(*v62);
        *&v81.f_bsize = xmmword_100043460;
        *&v81.f_bfree = *&qword_100043470;
        *&v81.f_files = xmmword_100043480;
        *v81.f_fsid.val = *&off_100043490;
        sub_10002D0E8(&v81, 6, "update/reload mount for %s failed: %s\n", v2, v63);
        goto LABEL_164;
      }

      return 8 * (v54 != 0);
    }

    else
    {
LABEL_164:
      if (!byte_10004350B)
      {
        *&v81.f_bsize = xmmword_100043460;
        *&v81.f_bfree = *&qword_100043470;
        *&v81.f_files = xmmword_100043480;
        *v81.f_fsid.val = *&off_100043490;
        sub_10002D0E8(&v81, 2, "\n***** REBOOT NOW *****\n");
      }

      sync();
      return 4;
    }
  }

  else if (v54 == 47 || v54 == 0)
  {
    return v54;
  }

  else
  {
    return 8;
  }
}

void *sub_10002CACC(void *result)
{
  v1 = result;
  v2 = qword_100043448;
  if (!qword_100043448)
  {
    result = malloc_type_malloc(0x1000uLL, 0x100004000313F17uLL);
    v2 = result;
    qword_100043448 = result;
    if (!result)
    {
      v4 = xmmword_100043460;
      v5 = *&qword_100043470;
      v6 = xmmword_100043480;
      v7 = *&off_100043490;
      result = sub_10002D0E8(&v4, 3, "Can't allocate memory for block list.\n");
      v2 = qword_100043448;
    }
  }

  v3 = dword_100043440;
  if ((dword_100043440 & 0x1FF) == 0)
  {
    result = malloc_type_realloc(v2, 8 * dword_100043440 + 4096, 0x100004000313F17uLL);
    v2 = result;
    if (!result)
    {
      v4 = xmmword_100043460;
      v5 = *&qword_100043470;
      v6 = xmmword_100043480;
      v7 = *&off_100043490;
      result = sub_10002D0E8(&v4, 3, "Can't allocate memory for block list (%llu entries).\n", dword_100043440);
    }

    qword_100043448 = v2;
    v3 = dword_100043440;
  }

  dword_100043440 = v3 + 1;
  *(v2 + v3) = v1;
  return result;
}

BOOL sub_10002CBDC(char *__s1)
{
  if (byte_10004350B)
  {
    v5 = xmmword_100043460;
    v6 = *&qword_100043470;
    v7 = xmmword_100043480;
    v8 = *&off_100043490;
    sub_10002D0E8(&v5, 3, "INTERNAL ERROR: GOT TO reply()");
  }

  v2 = strcmp(__s1, "CONTINUE");
  v5 = xmmword_100043460;
  v6 = *&qword_100043470;
  v7 = xmmword_100043480;
  v8 = *&off_100043490;
  sub_10002D0E8(&v5, 2, "\n");
  if (v2 && (byte_100043509 || qword_1000434A8 < 0))
  {
    v5 = xmmword_100043460;
    v6 = *&qword_100043470;
    v7 = xmmword_100043480;
    v8 = *&off_100043490;
    sub_10002D0E8(&v5, 2, "%s? no\n\n", __s1);
    return 0;
  }

  else if (byte_10004350A || !v2 && byte_100043509)
  {
    v5 = xmmword_100043460;
    v6 = *&qword_100043470;
    v7 = xmmword_100043480;
    v8 = *&off_100043490;
    sub_10002D0E8(&v5, 2, "%s? yes\n\n", __s1);
    return 1;
  }

  else
  {
    do
    {
      v5 = xmmword_100043460;
      v6 = *&qword_100043470;
      v7 = xmmword_100043480;
      v8 = *&off_100043490;
      sub_10002D0E8(&v5, 2, "%s? [yn] ", __s1);
      fflush(__stdoutp);
      v4 = getc(__stdinp);
      if (v4 != 10)
      {
        while (getc(__stdinp) != 10)
        {
          if (feof(__stdinp))
          {
            return 0;
          }
        }
      }
    }

    while ((v4 & 0xDF) != 0x59 && (v4 & 0xDF) != 0x4E);
    v5 = xmmword_100043460;
    v6 = *&qword_100043470;
    v7 = xmmword_100043480;
    v8 = *&off_100043490;
    sub_10002D0E8(&v5, 2, "\n");
    return (v4 & 0x5F) == 89;
  }
}

uint64_t sub_10002CDD8(uint64_t result, uint64_t a2)
{
  v4 = 1;
  if (*(&xmmword_100043480 + 1))
  {
    result = (*(&xmmword_100043480 + 1))(qword_100043478, result, a2);
  }

  if (byte_1000434B4)
  {
    result = sysctlbyname("kern.progressmeterenable", 0, 0, &v4, 4uLL);
    if (byte_10004350E)
    {
      v2 = result == -1;
    }

    else
    {
      v2 = 0;
    }

    if (v2)
    {
      result = __error();
      if (*result != 2)
      {
        v3[0] = xmmword_100043460;
        v3[1] = *&qword_100043470;
        v3[2] = xmmword_100043480;
        v3[3] = *&off_100043490;
        return sub_10002D0E8(v3, 7, "sysctl(%s) failed", "kern.progressmeterenable");
      }
    }
  }

  return result;
}

uint64_t sub_10002CEA4(uint64_t result)
{
  v3 = result;
  if (off_100043490)
  {
    result = off_100043490(qword_100043478, result);
  }

  if (byte_1000434B4)
  {
    result = sysctlbyname("kern.progressmeter", 0, 0, &v3, 4uLL);
    if (byte_10004350E)
    {
      v1 = result == -1;
    }

    else
    {
      v1 = 0;
    }

    if (v1)
    {
      result = __error();
      if (*result != 2)
      {
        v2[0] = xmmword_100043460;
        v2[1] = *&qword_100043470;
        v2[2] = xmmword_100043480;
        v2[3] = *&off_100043490;
        return sub_10002D0E8(v2, 7, "sysctl(%s) failed", "kern.progressmeter");
      }
    }
  }

  return result;
}

uint64_t sub_10002CF68(uint64_t result)
{
  v3 = 0;
  if (off_100043498)
  {
    result = off_100043498(qword_100043478, result);
  }

  if (byte_1000434B4)
  {
    result = sysctlbyname("kern.progressmeterenable", 0, 0, &v3, 4uLL);
    if (byte_10004350E)
    {
      v1 = result == -1;
    }

    else
    {
      v1 = 0;
    }

    if (v1)
    {
      result = __error();
      if (*result != 2)
      {
        v2[0] = xmmword_100043460;
        v2[1] = *&qword_100043470;
        v2[2] = xmmword_100043480;
        v2[3] = *&off_100043490;
        return sub_10002D0E8(v2, 7, "sysctl(%s) failed", "kern.progressmeterenable");
      }
    }
  }

  return result;
}

double sub_10002D048()
{
  xmmword_100043510 = 0u;
  *&dword_100043520 = 0u;
  *&dword_1000434F0 = 0u;
  *&qword_100043500 = 0u;
  xmmword_1000434D0 = 0u;
  *&dword_1000434E0 = 0u;
  *&dword_1000434B0 = 0u;
  *&byte_1000434C0 = 0u;
  *&dword_1000434A0 = 0u;
  BYTE3(xmmword_100043510) = 2;
  *(&xmmword_1000434D0 + 1) = 512;
  dword_1000434A0 = -1;
  result = NAN;
  qword_1000434A8 = -1;
  return result;
}

uint64_t sub_10002D08C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&xmmword_100043460 = a4;
  *(&xmmword_100043460 + 1) = result;
  qword_100043470 = a2;
  qword_100043478 = a5;
  *&xmmword_100043480 = a3;
  return result;
}

uint64_t sub_10002D0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 16))
  {
    return (*(a1 + 16))(*(a1 + 24), a2, &a9, a4, a5, a6, a7, a8);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10002D0E8(uint64_t result, uint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  if (*(result + 8))
  {
    return (*(result + 8))(*(result + 24), a2, a3, va);
  }

  return result;
}

uint64_t sub_10002D128(uint64_t result, int a2, const char *a3, ...)
{
  va_start(va, a3);
  if (*(result + 32))
  {
    return (*(result + 32))(*(result + 24), a2, a3, va);
  }

  return result;
}

uint64_t sub_10002D45C(uint64_t result, uint64_t (*a2)(void, void), uint64_t (*a3)(void, void))
{
  *(&xmmword_100043480 + 1) = result;
  off_100043490 = a2;
  off_100043498 = a3;
  return result;
}

uint64_t sub_10002D470(uint64_t a1, uint64_t a2, char *a3, va_list a4)
{
  result = sub_10002D18C();
  if ((result & a2) != 0)
  {
    sub_100001B5C("\t", v8, v9, v10, v11, v12, v13, v14, v15);

    return sub_100001B88(a3, a4);
  }

  return result;
}

void start(int a1, char **a2)
{
  __endptr = 0;
  v4 = sub_10002E978();
  sub_10002D048();
  v91 = v4;
  sub_10002D08C(sub_10002E34C, sub_10002EE28, sub_10002D470, 0, v4);
  v5 = strrchr(*a2, 47);
  sub_10002D1A4(v5);
  if (sub_10002D198())
  {
    v6 = (sub_10002D198() + 1);
  }

  else
  {
    v6 = *a2;
  }

  sub_10002D1A4(v6);
  v7 = 0;
  while (1)
  {
    while (1)
    {
      v8 = getopt(a1, a2, "b:B:c:dD:e:EfgJlm:npqrR:SuxXy");
      if (v8 > 68)
      {
        break;
      }

      switch(v8)
      {
        case 66:
          v15 = optarg;
          v16 = fopen(optarg, "r");
          if (!v16)
          {
            sub_10002E448(3, "Can't open %s\n", v15);
          }

          *&v96.f_bsize = 0;
          if (fscanf(v16, "%lli", &v96) >= 1)
          {
            do
            {
              sub_10002CACC(*&v96.f_bsize);
            }

            while (fscanf(v16, "%lli", &v96) > 0);
          }

          fclose(v16);
          break;
        case 68:
          v13 = strtoul(optarg, 0, 0);
          sub_10002D180(v13);
          if (!sub_10002D18C())
          {
            v14 = sub_10002D198();
            sub_10002E448(6, "%s: invalid debug development argument.  Assuming zero\n", v14);
          }

          break;
        case -1:
          v29 = optind;
          if (!sub_10002D3A8() && sub_10002D3C0())
          {
            sub_10002D3B4(0);
          }

          if (!sub_10002D2D0())
          {
            sub_10002D2C4(512);
          }

          if (sub_10002D234())
          {
            sub_10002D39C(0);
          }

          v30 = a1 - v29;
          if (signal(2, 1) != 1)
          {
            signal(2, sub_100000828);
          }

          if (v30 <= 0)
          {
            sub_10002D198();
            sub_10002E448(6, "%s: missing special-device\n");
LABEL_90:
            sub_10002E47C();
          }

          sub_10002D3F0(2);
          sub_10002D3E4(2);
          if (sub_10002D348())
          {
            sub_10002D3E4(2);
          }

          if (sub_10002D390())
          {
            sub_10002D3F0(0);
            sub_10002D3E4(0);
            LODWORD(v31) = 1;
          }

          else
          {
            if (sub_10002D378())
            {
              sub_10002D3F0(4);
            }

            LODWORD(v31) = 2;
          }

          if (sub_10002D360())
          {
            LODWORD(v31) = 1;
            sub_10002D3E4(1);
            if (sub_10002D378())
            {
              v32 = 2;
            }

            else
            {
              v32 = 1;
            }

            sub_10002D3F0(v32);
          }

          if (sub_10002D3A8())
          {
            v31 = 3;
          }

          else
          {
            v31 = v31;
          }

          if (sub_10002D330())
          {
            sub_10002D3E4(0);
          }

          if (sub_10002D24C())
          {
            sub_10002D3F0(3);
            sub_10002D3E4(3);
          }

          v33 = &a2[v29];
          sub_10002D450(v31);
          sub_10002EC4C(v91, 0);
          sub_10002EB40(v91, sub_100001AC4);
          sub_10002EC30(v91, sub_1000019E4);
          if (sub_10002D234())
          {
            if (sub_10002D21C())
            {
              v34 = 3;
            }

            else
            {
              v34 = 2;
            }
          }

          else
          {
            v34 = 1;
          }

          sub_10002EC68(v91, v34);
          v35 = 0;
          v36 = "/";
          while (1)
          {
            v38 = *v33++;
            v37 = v38;
            memset(&v96, 0, 144);
            memset(&v95, 0, sizeof(v95));
            memset(&v94, 0, sizeof(v94));
            sub_10002D1E0(0);
            if (stat(v36, &v96) < 0)
            {
              sub_10002E448(0, v36);
              sub_10002E448(2, "Can't stat root\n", v89);
              goto LABEL_127;
            }

            if (!strncmp(v37, "/dev/fd/", 8uLL))
            {
LABEL_117:
              sub_10002D2DC(1);
              goto LABEL_127;
            }

            v39 = 0;
            while (1)
            {
              sub_10002D2DC(0);
              if (stat(v37, &v95) < 0)
              {
                sub_10002E448(0, v37);
LABEL_126:
                sub_10002E448(2, "Can't stat %s\n");
                goto LABEL_127;
              }

              v40 = v95.st_mode & 0xF000;
              if (v40 == 24576)
              {
                break;
              }

              if (v39 & 1 | (v40 != 0x2000))
              {
                goto LABEL_127;
              }

              v41 = sub_10002E714(v37);
              v39 = 1;
              if (!strncmp(v41, "/dev/fd/", 8uLL))
              {
                goto LABEL_117;
              }
            }

            if (v96.f_bsize == v95.st_rdev)
            {
              sub_10002D1E0(1);
            }

            v42 = sub_10002E67C(v37);
            if (stat(v42, &v94) < 0)
            {
              sub_10002E448(0, v42);
              goto LABEL_126;
            }

            if ((v94.st_mode & 0xF000) == 0x2000)
            {
              v37 = v42;
            }

            else
            {
              sub_10002E448(2, "%s is not a character device\n");
            }

LABEL_127:
            sub_10002D2F4(v37);
            v43 = sub_10002D300();
            if (sub_10002D2E8() || (v45 = strdup(v43), !sub_10002E714(v45)))
            {
              v44 = 0;
            }

            else
            {
              *&v96.f_bsize = 0;
              v46 = getmntinfo(&v96, 2);
              if (v46 < 1)
              {
LABEL_134:
                v44 = 0;
              }

              else
              {
                v47 = v46;
                v48 = (*&v96.f_bsize + 1112);
                while (strcmp(v45, v48))
                {
                  v48 += 2168;
                  if (!--v47)
                  {
                    goto LABEL_134;
                  }
                }

                v44 = strdup(v48 - 1024);
              }

              free(v45);
            }

            if (sub_10002D1EC())
            {
              if (v44)
              {
                free(v44);
              }

              v44 = strdup(v36);
            }

            if (!v44)
            {
              goto LABEL_149;
            }

            memset(&v96, 0, 512);
            if (statfs(v44, &v96))
            {
              goto LABEL_149;
            }

            if (!sub_10002D318())
            {
              if (v96.f_flags)
              {
                sub_10002D1F8(1);
                goto LABEL_149;
              }

              sub_10002E448(2, "ERROR: volume %s is mounted with write access. Re-run with (-l) to freeze volume.\n");
              goto LABEL_211;
            }

            v49 = open(v44, 0);
            sub_10002D168(v49);
            if ((sub_10002D174() & 0x80000000) != 0)
            {
              sub_10002E448(2, "ERROR: could not open %s to freeze the volume.\n", v44);
              free(v44);
              goto LABEL_211;
            }

            v50 = sub_10002D174();
            if (fcntl(v50, 53, 0))
            {
              free(v44);
              v88 = __error();
              strerror(*v88);
              sub_10002E448(2, "ERROR: could not freeze volume (%s)\n");
              goto LABEL_211;
            }

LABEL_149:
            sub_10002D420(v44);
            if (sub_10002D2E8())
            {
              *&v96.f_bsize = 0;
              v51 = strtol(v37 + 8, &v96, 10);
              if (**&v96.f_bsize)
              {
                sub_10002E448(4, "fsck_hfs: Invalid file descriptor path: %s", v37);
              }

              v52 = v51;
            }

            else
            {
              if (sub_10002D204())
              {
                v53 = open(v37, 2);
              }

              else
              {
                v53 = open(v37, 34);
              }

              v54 = v53;
              if (sub_10002D330() || sub_10002D390() || (v54 & 0x80000000) != 0)
              {
                sub_10002D1C8(0xFFFFFFFFLL);
                if (sub_10002D360())
                {
                  sub_10002E448(3, "** %s (NO WRITE ACCESS)\n", v37);
                }
              }

              v52 = v54;
            }

            sub_10002D1C8(v52);
            if (sub_10002D1D4() < 1)
            {
              v57 = open(v37, 0);
              v58 = __error();
              v59 = strerror(*v58);
              sub_10002E448(2, "Can't open %s: %s\n", v37, v59);
              if ((v57 & 0x80000000) == 0)
              {
                sub_10002D1B0(v57);
                goto LABEL_167;
              }

LABEL_211:
              if (sub_10002D360())
              {
                sub_10002E448(3, "CAN'T CHECK FILE SYSTEM.");
              }

              else if (sub_10002D348())
              {
                sub_10002E5CC();
              }

              exit(8);
            }

            v55 = sub_10002D1D4();
            v56 = dup(v55);
            sub_10002D1B0(v56);
            if ((sub_10002D1BC() & 0x80000000) != 0)
            {
              v85 = __error();
              v86 = strerror(*v85);
              sub_10002E448(2, "Can't dup fd for reading on %s: %s\n", v37, v86);
              v87 = sub_10002D1D4();
              close(v87);
              goto LABEL_211;
            }

LABEL_167:
            v60 = sub_10002D1BC();
            *&v96.f_bsize = 0;
            v95.st_dev = 0;
            if (ioctl(v60, 0x40046418uLL, &v95) < 0)
            {
              v83 = __error();
              strerror(*v83);
              sub_10002E448(2, "Can't get device block size (%s)\n");
              goto LABEL_211;
            }

            if ((v95.st_dev & (v95.st_dev - 1)) != 0)
            {
              sub_10002E448(2, "Physical block size is not a power of 2\n", v90);
              goto LABEL_211;
            }

            if (v95.st_dev > 0x4000u)
            {
              sub_10002E448(2, "Physical block size cannot be greater than 16 KiB\n", v90);
              goto LABEL_211;
            }

            sub_10002D3FC(v95.st_dev);
            if (ioctl(v60, 0x40086419uLL, &v96) < 0)
            {
              v84 = __error();
              strerror(*v84);
              sub_10002E448(2, "Can't get device block count (%s)\n");
              goto LABEL_211;
            }

            v61 = v36;
            sub_10002D414(*&v96.f_bsize);
            if (!sub_10002D2E8() && !sub_10002D330() && !sub_10002D390())
            {
              v62 = strlen(v37);
              v63 = malloc_type_malloc(v62 + 2, 0x37280573uLL);
              if (v63)
              {
                v64 = v63;
                v65 = strcpy(v63, v37);
                v66 = strrchr(v65, 47);
                if (v66 && (v67 = v66, v68 = v66 + 1, v66[1] == 114))
                {
                  v69 = strlen(v66 + 2);
                  memmove(v68, v67 + 2, v69 + 1);
                  if (sub_10002D204())
                  {
                    v70 = open(v64, 1);
                  }

                  else
                  {
                    v70 = open(v64, 33);
                  }

                  v71 = v70;
                  sub_10002D42C(0);
                  if (v71 >= 1)
                  {
                    sub_10002D42C(1);
                    free(v64);
                    goto LABEL_197;
                  }

                  v92 = v71;
                }

                else
                {
                  sub_10002D42C(0);
                  v92 = -1;
                }

                v72 = getfsstat(0, 0, 2);
                if ((v72 & 0x80000000) == 0)
                {
                  v73 = 2168 * v72;
                  v74 = malloc_type_malloc(2168 * v72, 0x100004087E0324AuLL);
                  if (v74)
                  {
                    v75 = v74;
                    v76 = getfsstat(v74, v73, 2);
                    if ((v76 & 0x80000000) == 0)
                    {
                      v77 = v76;
                      if (!v76)
                      {
                        goto LABEL_194;
                      }

                      v78 = v75;
                      while (strcmp(v78->f_mntfromname, v64))
                      {
                        ++v78;
                        if (!--v77)
                        {
                          goto LABEL_194;
                        }
                      }

                      if (v78->f_flags)
                      {
LABEL_194:
                        sub_10002D42C(1);
                      }
                    }

                    free(v75);
                  }
                }

                free(v64);
                v71 = v92;
                if (v92 != -1)
                {
LABEL_197:
                  close(v71);
                }
              }
            }

            v79 = sub_10002BBF4(v37);
            v80 = sub_10002D1BC();
            v81 = sub_10002D1D4();
            if (v80 >= 1)
            {
              close(v80);
            }

            if (v81)
            {
              close(v81);
            }

            v35 |= v79;
            v82 = v30-- <= 1;
            v36 = v61;
            if (v82)
            {
              if (v91)
              {
                sub_10002EAD0(v91);
              }

              exit(v35);
            }
          }

        default:
LABEL_83:
          sub_10002E47C();
      }
    }

    switch(v8)
    {
      case 'R':
        v9 = optarg;
        if (!optarg)
        {
          goto LABEL_28;
        }

        break;
      case 'S':
        sub_10002D3CC(1);
        continue;
      case 'T':
      case 'U':
      case 'V':
      case 'W':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'a':
      case 'h':
      case 'i':
      case 'j':
      case 'k':
      case 'o':
      case 's':
      case 't':
      case 'u':
      case 'v':
      case 'w':
        goto LABEL_83;
      case 'X':
        sub_10002D45C(sub_10002F704, sub_10002F768, sub_10002F784);
        continue;
      case 'b':
        v26 = atoi(optarg);
        sub_10002D2C4(v26);
        if (v26 >= 512 && ((v26 + 0x7FFFFFFFLL) & v26) == 0)
        {
          continue;
        }

        sub_10002D198();
        sub_10002E448(6, "%s invalid block size %d\n");
        goto LABEL_70;
      case 'c':
        v22 = strtoull(optarg, &__endptr, 0);
        sub_10002D2AC(v22);
        v23 = __endptr;
        if (*__endptr)
        {
          v24 = sub_10002D2B8();
          v25 = __tolower(*v23);
          switch(v25)
          {
            case 'm':
              v7 = v24 << 20;
              break;
            case 'k':
              v7 = v24 << 10;
              break;
            case 'g':
              v7 = v24 << 30;
              break;
            default:
              v7 = 0;
              break;
          }
        }

        sub_10002D2AC(v7);
        continue;
      case 'd':
        sub_10002D39C(1);
        continue;
      case 'e':
        v17 = optarg;
        if (!optarg)
        {
          continue;
        }

        if (!strcasecmp(optarg, "embedded"))
        {
          v18 = 1;
        }

        else
        {
          v18 = strcasecmp(v17, "desktop");
          if (v18)
          {
            continue;
          }
        }

        sub_10002D3D8(v18);
        continue;
      case 'f':
        goto LABEL_41;
      case 'g':
        goto LABEL_57;
      case 'l':
        sub_10002D30C(1);
        sub_10002D324(1);
        sub_10002D33C(0);
LABEL_41:
        sub_10002D36C(1);
        continue;
      case 'm':
        sub_10002D270(1);
        v19 = strtol(optarg, 0, 8);
        sub_10002D294(v19);
        v20 = sub_10002D2A0();
        if (v19 == v19 && v20 != 0)
        {
          continue;
        }

        sub_10002D198();
        sub_10002E448(6, "%s: %ld is invalid mode argument\n");
        goto LABEL_90;
      case 'n':
        sub_10002D324(1);
        sub_10002D33C(0);
        sub_10002D3E4(0);
        continue;
      case 'p':
        sub_10002D354(1);
        continue;
      case 'q':
        sub_10002D384(1);
        continue;
      case 'r':
        v28 = sub_10002D264();
        sub_10002D240(1);
        sub_10002D258(v28 | 1u);
        continue;
      case 'x':
        sub_10002D210(1);
LABEL_57:
        sub_10002D228(1);
        continue;
      case 'y':
LABEL_28:
        sub_10002D33C(1);
        sub_10002D324(0);
        sub_10002D3E4(2);
        continue;
      default:
        if (v8 == 69)
        {
          sub_10002D27C(1);
          continue;
        }

        if (v8 == 74)
        {
          sub_10002D3B4(1);
          continue;
        }

        goto LABEL_83;
    }

    while (1)
    {
      v10 = *v9;
      if (v10 <= 0x62)
      {
        break;
      }

      if (v10 == 101)
      {
        v11 = 2;
      }

      else
      {
        if (v10 != 99)
        {
          goto LABEL_69;
        }

        v11 = 1;
      }

LABEL_15:
      v12 = sub_10002D264();
      sub_10002D240(1);
      sub_10002D258(v12 | v11);
      ++v9;
    }

    if (v10 == 97)
    {
      break;
    }

    if (*v9)
    {
LABEL_69:
      sub_10002D198();
LABEL_70:
      exit(2);
    }
  }

  v11 = 4;
  goto LABEL_15;
}

void sub_10002E34C(int a1, int a2, char *a3, __darwin_va_list a4)
{
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 1:

        sub_100001824(a3, a4);
        break;
      case 2:

        sub_100001B88(a3, a4);
        break;
      case 0:

        perror(a3);
        break;
    }
  }

  else if (a2 <= 5)
  {
    if (a2 == 3)
    {

      sub_1000014C0(a3, a4);
    }

    else if (a2 == 4)
    {
      verr(1, a3, a4);
    }
  }

  else if (a2 == 6)
  {
    v5 = __stderrp;

    sub_100001C9C(v5, a3, a4);
  }

  else if (a2 == 7)
  {

    vwarn(a3, a4);
  }
}

void sub_10002E47C()
{
  v0 = sub_10002D198();
  sub_10002E448(6, "usage: %s [-b [size] B [path] c [size] e [mode] ESdfglx m [mode] npqruy] special-device\n", v0);
  sub_10002E448(6, "  b size = size of physical blocks (in bytes) for -B option\n");
  sub_10002E448(6, "  B path = file containing physical block numbers to map to paths\n");
  sub_10002E448(6, "  c size = cache size (ex. 512m, 1g)\n");
  sub_10002E448(6, "  e mode = emulate 'embedded' or 'desktop'\n");
  sub_10002E448(6, "  E = exit on first major error\n");
  sub_10002E448(6, "  d = output debugging info\n");
  sub_10002E448(6, "  f = force fsck even if clean (preen only) \n");
  sub_10002E448(6, "  g = GUI output mode\n");
  sub_10002E448(6, "  x = XML output mode\n");
  sub_10002E448(6, "  l = live fsck (lock down and test-only)\n");
  sub_10002E448(6, "  m arg = octal mode used when creating lost+found directory \n");
  sub_10002E448(6, "  n = assume a no response \n");
  sub_10002E448(6, "  p = just fix normal inconsistencies \n");
  sub_10002E448(6, "  q = quick check returns clean, dirty, or failure \n");
  sub_10002E448(6, "  r = rebuild catalog btree \n");
  sub_10002E448(6, "  S = Scan disk for bad blocks\n");
  sub_10002E448(6, "  u = usage \n");
  sub_10002E448(6, "  y = assume a yes response \n");
  exit(1);
}

uint64_t sub_10002E5CC()
{
  result = sub_10002D174();
  if ((result & 0x80000000) == 0)
  {
    v1 = sub_10002D174();
    fcntl(v1, 54, 0);
    v2 = sub_10002D174();
    close(v2);

    return sub_10002D168(0xFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_10002E628()
{
  sub_10002D02C();
  v0 = sub_10002D1D4();
  v1 = sub_10002D1BC();
  result = close(v1);
  if ((v0 & 0x80000000) == 0)
  {
    v3 = sub_10002D1D4();

    return close(v3);
  }

  return result;
}

void *sub_10002E67C(char *a1)
{
  v1 = strrchr(a1, 47);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  *v1 = 0;
  v3 = &unk_10004862D;
  __strlcpy_chk();
  *v2 = 47;
  __strlcat_chk();
  __strlcat_chk();
  return v3;
}

char *sub_10002E714(char *a1)
{
  v2 = strrchr(a1, 47);
  if (v2)
  {
    v3 = v2;
    memset(&v6, 0, sizeof(v6));
    if ((stat(a1, &v6) & 0x80000000) == 0 && (v6.st_mode & 0xF000) == 0x2000 && v3[1] == 114)
    {
      v4 = strlen(v3 + 2);
      memmove(v3 + 1, v3 + 2, v4 + 1);
    }
  }

  return a1;
}

uint64_t sub_10002E7B8(uint64_t result, unsigned int a2, int a3)
{
  v17[16] = 0;
  if (a2)
  {
    v4 = result;
    v5 = 0;
    v12 = a2;
    v6 = a2;
    do
    {
      if (a3 && (v5 & 0xF) == 0)
      {
        v13 = xmmword_100043460;
        v14 = *&qword_100043470;
        v15 = xmmword_100043480;
        v16 = *&off_100043490;
        sub_10002D0E8(&v13, 2, "%08X: ", v5);
      }

      v7 = *(v4 + v5);
      v13 = xmmword_100043460;
      v14 = *&qword_100043470;
      v15 = xmmword_100043480;
      v16 = *&off_100043490;
      result = sub_10002D0E8(&v13, 2, "%02X ", v7);
      if ((v7 - 127) >= 0xFFFFFFA1)
      {
        v8 = v7;
      }

      else
      {
        v8 = 46;
      }

      v17[v5 & 0xF] = v8;
      if ((v5 & 0xF) == 0xF)
      {
        v13 = xmmword_100043460;
        v14 = *&qword_100043470;
        v15 = xmmword_100043480;
        v16 = *&off_100043490;
        result = sub_10002D0E8(&v13, 2, "  %s\n", v17);
      }

      ++v5;
    }

    while (v6 != v5);
    v9 = v12 & 0xF;
    if ((v12 & 0xF) != 0)
    {
      v10 = v9 | 0xFFFFFFF0;
      do
      {
        v13 = xmmword_100043460;
        v14 = *&qword_100043470;
        v15 = xmmword_100043480;
        v16 = *&off_100043490;
        sub_10002D0E8(&v13, 2, "   ");
      }

      while (!__CFADD__(v10++, 1));
      v17[v9] = 0;
      v13 = xmmword_100043460;
      v14 = *&qword_100043470;
      v15 = xmmword_100043480;
      v16 = *&off_100043490;
      return sub_10002D0E8(&v13, 2, "  %s\n", v17);
    }
  }

  return result;
}

FILE **sub_10002E978()
{
  v0 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A00407214414DuLL);
  v1 = v0;
  if (v0)
  {
    if (sub_10002E9F4(v0, &unk_100041A58) == -1)
    {
      sub_10002EAD0(v1);
      return 0;
    }

    else
    {
      v1[5] = sub_10002EB5C;
    }
  }

  return v1;
}

uint64_t sub_10002E9F4(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      if (!*(a2 + 8))
      {
        return 0;
      }

      v5 = 0;
      v6 = (a2 + 48);
      do
      {
        v7 = *v6;
        v6 += 5;
        ++v5;
      }

      while (v7);
      v8 = malloc_type_realloc(*(a1 + 32), 8 * (*(a1 + 24) + v5), 0x2004093837F09uLL);
      if (v8)
      {
        *(a1 + 32) = v8;
        v9 = *(a1 + 24);
        v10 = 8 * v9;
        v11 = v5;
        do
        {
          *(*(a1 + 32) + v10) = v4;
          v10 += 8;
          v4 += 40;
          --v11;
        }

        while (v11);
        v12 = *(a1 + 32);
        v13 = v9 + v5;
        *(a1 + 24) = v13;
        qsort(v12, v13, 8uLL, sub_10002EE10);
        return 0;
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void sub_10002EAD0(FILE **a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      free(v2);
    }

    if (a1[1])
    {
      fclose(*a1);
    }

    v3 = a1[8];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = a1[9];
    if (v4)
    {
      _Block_release(v4);
    }

    free(a1);
  }
}

uint64_t sub_10002EB40(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 40) = a2;
  return result;
}

FILE **sub_10002EB5C(FILE **result, char *a2)
{
  if (result)
  {
    v2 = result;
    v3 = *result;
    if (!*result)
    {
      v3 = __stdoutp;
    }

    fputs(a2, v3);
    if (*v2)
    {
      v4 = *v2;
    }

    else
    {
      v4 = __stdoutp;
    }

    return fflush(v4);
  }

  return result;
}

void sub_10002EBC8(uint64_t a1, int a2, void *aBlock)
{
  if (a1)
  {
    if (a2 == 2)
    {
      v5 = (a1 + 72);
      v4 = *(a1 + 72);
      if (!v4)
      {
LABEL_6:
        if (aBlock)
        {
          *v5 = _Block_copy(aBlock);
        }

        return;
      }
    }

    else
    {
      if (a2 != 1)
      {
        return;
      }

      v5 = (a1 + 64);
      v4 = *(a1 + 64);
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    _Block_release(v4);
    *v5 = 0;
    goto LABEL_6;
  }
}

uint64_t sub_10002EC30(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 48) = a2;
  return result;
}

uint64_t sub_10002EC4C(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a1 = a2;
  return result;
}

uint64_t sub_10002EC68(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 16) = a2;
  return result;
}

uint64_t sub_10002EC84(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void sub_10002EC90(uint64_t a1, char *__format, va_list a3)
{
  if (!a1)
  {
    return;
  }

  v5 = vsnprintf(__str, 0x400uLL, __format, a3);
  if (v5 < 0x401)
  {
LABEL_10:
    if (*(a1 + 58) == 1)
    {
      v11 = *(a1 + 48);
      if (!v11)
      {
        return;
      }
    }

    else
    {
      v11 = *(a1 + 40);
      if (!v11)
      {
        return;
      }
    }

    v11(a1, __str);
    return;
  }

  v6 = v5;
  v7 = v5 + 1;
  v8 = malloc_type_malloc(v7, 0x1225A67DuLL);
  if (!v8)
  {
    strcpy(__str, "* * * cannot allocate memory * * *\n");
    goto LABEL_10;
  }

  v9 = v8;
  if (v7 <= vsnprintf(v8, v6, __format, a3))
  {
    strcpy(__str, " * * * cannot allocate memory * * *\n");
    free(v9);
    goto LABEL_10;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v10(a1, v9);
  }

  free(v9);
}

uint64_t sub_10002EE28(uint64_t a1, uint64_t a2, va_list a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = sub_10002EF7C(a1, a2);
  if (!v4)
  {
    sub_100030A28();
  }

  v5 = v4;
  v6 = *(a1 + 16) - 1;
  if (v6 > 2)
  {
    v7 = sub_10002F6FC;
  }

  else
  {
    v7 = off_10003C548[v6];
  }

  if (*(a1 + 64))
  {
    v9 = (*(*(a1 + 64) + 16))();
    v8 = v9;
    if (v9 == -1)
    {
      return v8;
    }

    if (v9 == 1)
    {
      return 0;
    }
  }

  *(a1 + 58) = 1;
  sub_10002EFC8(a1, v5, a3);
  *(a1 + 58) = 0;
  if (*(a1 + 40))
  {
    v8 = (v7)(a1, v5, a3);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 72))
  {
    v10 = (*(*(a1 + 72) + 16))();
    if (v10 == -1)
    {
      return v10;
    }

    if (v10 == 1)
    {
      return 0;
    }
  }

  return v8;
}

void *sub_10002EF7C(uint64_t a1, int a2)
{
  __key = a2;
  result = bsearch(&__key, *(a1 + 32), *(a1 + 24), 8uLL, sub_10002F7A0);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t sub_10002EFC8(uint64_t a1, uint64_t a2, va_list a3)
{
  v5 = *(a2 + 16);
  if (v5 != 8)
  {
    v19[5] = v3;
    v19[6] = v4;
    v18 = 0;
    v19[0] = 0;
    v7 = v5 - 1;
    if (v7 > 8)
    {
      v8 = "";
      v9 = "";
    }

    else
    {
      v8 = off_10003C560[v7];
      v9 = *(&off_10003C5A8 + v7);
    }

    vasprintf(&v18, *(a2 + 8), a3);
    if (v18)
    {
      asprintf(v19, "%s%s%s\n", v8, v18, v9);
      free(v18);
      v16 = v19[0];
      if (v19[0])
      {
        sub_10002EDE4(a1, "%s", v10, v11, v12, v13, v14, v15, v19[0]);
        free(v16);
      }
    }
  }

  return 0;
}

uint64_t sub_10002F09C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_10002F7B4(*(a2 + 8));
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v5;
  v13 = *(a2 + 16) - 1;
  if (v13 > 8)
  {
    v14 = 63;
  }

  else
  {
    v14 = dword_100032208[v13];
  }

  if (*a2 != 119)
  {
    sub_10002EDE4(a1, "(%c,%s,%d)\n", v6, v7, v8, v9, v10, v11, v14, v5, *(a2 + 24));
  }

  if (*(a2 + 24) >= 1)
  {
    for (i = 0; i < *(a2 + 24); ++i)
    {
      v17 = *(*(a2 + 32) + 4 * i);
      if (v17 > 7)
      {
        if (v17 == 8)
        {
          v21 = a3;
          a3 += 2;
          sub_10002EDE4(a1, "(%d %%)\n", v6, v7, v8, v9, v10, v11, *v21);
          continue;
        }

        if (v17 == 9)
        {
LABEL_12:
          v18 = a3;
          a3 += 2;
          sub_10002EDE4(a1, "%s\n", v6, v7, v8, v9, v10, v11, *v18);
          continue;
        }

        if (v17 != 10)
        {
          goto LABEL_23;
        }

        v19 = a3;
        a3 += 2;
        sub_10002EDE4(a1, "%llu\n", v6, v7, v8, v9, v10, v11, *v19);
      }

      else
      {
        if ((v17 - 3) < 5)
        {
          goto LABEL_12;
        }

        if (v17 == 1)
        {
          v23 = a3;
          a3 += 2;
          sub_10002EDE4(a1, "%d\n", v6, v7, v8, v9, v10, v11, *v23);
          continue;
        }

        if (v17 != 2)
        {
LABEL_23:
          v22 = a3;
          a3 += 2;
          sub_10002EDE4(a1, "%p\n", v6, v7, v8, v9, v10, v11, *v22);
          continue;
        }

        v20 = a3;
        a3 += 2;
        sub_10002EDE4(a1, "%ld\n", v6, v7, v8, v9, v10, v11, *v20);
      }
    }
  }

  free(v12);
  return 0;
}

uint64_t sub_10002F2B4(uint64_t a1, char **a2, uint64_t *a3)
{
  v5 = sub_10002F7B4(a2[1]);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v5;
  sub_10002EDE4(a1, "%s", v6, v7, v8, v9, v10, v11, "<plist version=1.0>\n");
  sub_10002EDE4(a1, "%s", v13, v14, v15, v16, v17, v18, "\t<dict>\n");
  v25 = *(a2 + 4) - 1;
  if (v25 > 8)
  {
    v26 = "UNKNOWN";
  }

  else
  {
    v26 = (&off_10003C5F0)[v25];
  }

  sub_10002EDE4(a1, "\t\t<key>%s</key> <string>%s</string>\n", v19, v20, v21, v22, v23, v24, "fsck_msg_type", v26);
  if (*a2 != 119)
  {
    if (*(a2 + 5))
    {
      v34 = "1";
    }

    else
    {
      v34 = "0";
    }

    sub_10002EDE4(a1, "\t\t<key>%s</key> <integer>%s</integer>\n", v28, v29, v30, v31, v32, v33, "fsck_verbosity", v34);
    sub_10002EDE4(a1, "\t\t<key>%s</key> <integer>%u</integer>\n", v35, v36, v37, v38, v39, v40, "fsck_msg_number", *a2);
    sub_10002EDE4(a1, "\t\t<key>%s</key> <string>%s</string>\n", v41, v42, v43, v44, v45, v46, "fsck_msg_string", v12);
  }

  if (*(a2 + 6) >= 1)
  {
    sub_10002EDE4(a1, "\t\t<key>%s</key>\n", v28, v29, v30, v31, v32, v33, "parameters");
    sub_10002EDE4(a1, "%s", v47, v48, v49, v50, v51, v52, "\t\t<array>\n");
    if (*(a2 + 6) >= 1)
    {
      for (i = 0; i < *(a2 + 6); ++i)
      {
        v61 = *&a2[4][4 * i];
        if (v61 > 5)
        {
          if (v61 <= 7)
          {
            if (v61 == 6)
            {
              v80 = a3++;
              v63 = sub_10002F904(*v80, v59);
              sub_10002EDE4(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v81, v82, v83, v84, v85, v86, "directory", v63);
            }

            else
            {
              v72 = a3++;
              v63 = sub_10002F904(*v72, v59);
              sub_10002EDE4(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v73, v74, v75, v76, v77, v78, "volumename", v63);
            }

            goto LABEL_34;
          }

          if (v61 == 8)
          {
            goto LABEL_29;
          }

          if (v61 == 9)
          {
            v101 = a3++;
            v63 = sub_10002F904(*v101, v59);
            sub_10002EDE4(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v102, v103, v104, v105, v106, v107, "fstype", v63);
LABEL_34:
            free(v63);
            continue;
          }

          if (v61 != 10)
          {
            goto LABEL_36;
          }

          v70 = a3++;
          sub_10002EDE4(a1, "\t\t\t<integer>%llu</integer>\n", v53, v54, v55, v56, v57, v58, *v70);
        }

        else
        {
          if (v61 > 2)
          {
            if (v61 == 3)
            {
              v87 = a3++;
              v63 = sub_10002F904(*v87, v59);
              sub_10002EDE4(a1, "\t\t\t<string>%s</string>\n", v88, v89, v90, v91, v92, v93, v63, v115);
            }

            else if (v61 == 4)
            {
              v94 = a3++;
              v63 = sub_10002F904(*v94, v59);
              sub_10002EDE4(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v95, v96, v97, v98, v99, v100, "path", v63);
            }

            else
            {
              v62 = a3++;
              v63 = sub_10002F904(*v62, v59);
              sub_10002EDE4(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v64, v65, v66, v67, v68, v69, "file", v63);
            }

            goto LABEL_34;
          }

          if (v61 == 1)
          {
LABEL_29:
            v79 = a3++;
            sub_10002EDE4(a1, "\t\t\t<integer>%d</integer>\n", v53, v54, v55, v56, v57, v58, *v79);
            continue;
          }

          if (v61 != 2)
          {
LABEL_36:
            v108 = a3++;
            sub_10002EDE4(a1, "\t\t\t<integer>%p</integer>\n", v53, v54, v55, v56, v57, v58, *v108);
            continue;
          }

          v71 = a3++;
          sub_10002EDE4(a1, "\t\t\t<integer>%ld</integer>\n", v53, v54, v55, v56, v57, v58, *v71);
        }
      }
    }

    sub_10002EDE4(a1, "%s", v53, v54, v55, v56, v57, v58, "\t\t</array>\n");
  }

  sub_10002EDE4(a1, "%s", v28, v29, v30, v31, v32, v33, "\t</dict>\n");
  sub_10002EDE4(a1, "%s", v109, v110, v111, v112, v113, v114, "</plist>\n");
  free(v12);
  return 0;
}

uint64_t sub_10002F704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = os_variant_has_internal_content();
  if (result)
  {
    byte_10004864D = 1;

    return _FSKitCheckStart(a2, a3);
  }

  return result;
}

void sub_10002F768(uint64_t a1, uint64_t a2)
{
  if (byte_10004864D == 1)
  {
    _FSKitCheckUpdate(a2);
  }
}

void sub_10002F784(uint64_t a1, uint64_t a2)
{
  if (byte_10004864D == 1)
  {
    _FSKitCheckDone(a2);
  }
}

_BYTE *sub_10002F7B4(char *__s)
{
  v1 = __s;
  for (i = 1; __s; i = (i + 5))
  {
    __s = strchr(__s + 1, 37);
  }

  v3 = strlen(v1);
  v4 = malloc_type_calloc(1uLL, i + v3, 0x519AF52BuLL);
  v5 = v4;
  if (v4)
  {
    v6 = *v1;
    v7 = v4;
    if (*v1)
    {
      v8 = 0;
      v9 = 0;
      v10 = v4;
      do
      {
        if (v8)
        {
          v11 = v6 - 65;
          v12 = ((1 << (v6 - 65)) & 0x94E97D0094407DLL) == 0;
          v8 = v11 > 0x37 || v12;
          v7 = v10;
        }

        else
        {
          *v10 = v6;
          v7 = v10 + 1;
          if (*v1 == 37)
          {
            if (v1[1] == 37)
            {
              v8 = 0;
              v7 = v10 + 2;
              v10[1] = 37;
              ++v1;
            }

            else
            {
              v7 += sprintf(v10 + 1, "%d$@", ++v9);
              v8 = 1;
            }
          }

          else
          {
            v8 = 0;
          }
        }

        v13 = *++v1;
        v6 = v13;
        v10 = v7;
      }

      while (v13);
    }

    *v7 = 0;
  }

  return v5;
}

char *sub_10002F904(uint64_t a1, double a2)
{
  result = __chkstk_darwin(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = __s1;
    bzero(__s1, 0x1801uLL);
    while (1)
    {
      v5 = *v3;
      if (v5 <= 0x26)
      {
        if (v5 == 34)
        {
          *v4 = 1869967654;
          *(v4 + 2) = 15220;
          goto LABEL_15;
        }

        if (v5 == 38)
        {
          *v4 = 1886216486;
          v4[4] = 59;
          v6 = 5;
          goto LABEL_18;
        }

        if (!*v3)
        {
          return strdup(__s1);
        }
      }

      else
      {
        switch(v5)
        {
          case '\'':
            *v4 = 1869635878;
            *(v4 + 2) = 15219;
LABEL_15:
            v6 = 6;
            goto LABEL_18;
          case '<':
            *v4 = 997485606;
            goto LABEL_13;
          case '>':
            *v4 = 997484326;
LABEL_13:
            v6 = 4;
            goto LABEL_18;
        }
      }

      *v4 = v5;
      v6 = 1;
LABEL_18:
      v4 += v6;
      ++v3;
    }
  }

  return result;
}

uint64_t sub_10002FA58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v55 = 0;
  if (ioctl(a1, 0x40046418uLL, a3, a4, a5, &v55) == -1)
  {
    v55 = a4;
    v13 = a4;
  }

  else
  {
    v13 = v55;
    if (v55 < a4)
    {
      v59 = xmmword_100043460;
      v60 = *&qword_100043470;
      v61 = xmmword_100043480;
      v62 = *&off_100043490;
      sub_10002D0E8(&v59, 6, "%s:  journal block size %u < min block size %zu for %s\n");
      return 0xFFFFFFFFLL;
    }

    if (v55 % a4)
    {
      v59 = xmmword_100043460;
      v60 = *&qword_100043470;
      v61 = xmmword_100043480;
      v62 = *&off_100043490;
      sub_10002D0E8(&v59, 6, "%s:  journal block size %u is not a multiple of fs block size %zu for %s\n");
      return 0xFFFFFFFFLL;
    }
  }

  sub_100030270(a1, v12, a2, v13, &v56);
  if (v14)
  {
    v59 = xmmword_100043460;
    v60 = *&qword_100043470;
    v61 = xmmword_100043480;
    v62 = *&off_100043490;
    sub_10002D0E8(&v59, 6, "%s:  unable to load journal header from %s\n");
    return 0xFFFFFFFFLL;
  }

  if (v56.n128_u32[1] == 305419896)
  {
    v16 = &off_1000433A8;
  }

  else
  {
    if (v56.n128_u32[1] != 2018915346)
    {
      v59 = xmmword_100043460;
      v60 = *&qword_100043470;
      v61 = xmmword_100043480;
      v62 = *&off_100043490;
      sub_10002D0E8(&v59, 6, "%s:  Unknown journal endian magic number %#x from %s\n");
      return 0xFFFFFFFFLL;
    }

    v16 = &off_1000433C8;
  }

  v17 = v56.n128_u32[0];
  if ((*(v16[2] + 2))(v16[2], v56.n128_u32[0]) != 1246645368 && (*(v16[2] + 2))(v16[2], v17) != 1246250066)
  {
    v59 = xmmword_100043460;
    v60 = *&qword_100043470;
    v61 = xmmword_100043480;
    v62 = *&off_100043490;
    sub_10002D0E8(&v59, 6, "%s:  Unknown journal header magic number %#x from %s\n");
    return 0xFFFFFFFFLL;
  }

  v18 = DWORD2(v58);
  if ((*(v16[2] + 2))(v16[2], DWORD2(v58)) < a4 || (v19 = (*(v16[2] + 2))(v16[2], v18), v19 > v55))
  {
    v59 = xmmword_100043460;
    v60 = *&qword_100043470;
    v61 = xmmword_100043480;
    v62 = *&off_100043490;
    sub_10002D0E8(&v59, 6, "%s: jnl: %s: open: bad jhdr size (%d) \n");
    return 0xFFFFFFFFLL;
  }

  v47 = v18;
  v20 = (*(v16[2] + 2))(v16[2], DWORD1(v58));
  DWORD1(v58) = 0;
  if ((*(v16[2] + 2))(v16[2], v17) == 1246645368)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v22 = (v22 + v56.n128_u8[v21++]) ^ (v22 << 8);
    }

    while (v21 != 44);
    if ((v22 ^ v20) != 0xFFFFFFFF)
    {
      v59 = xmmword_100043460;
      v60 = *&qword_100043470;
      v61 = xmmword_100043480;
      v62 = *&off_100043490;
      sub_10002D0E8(&v59, 6, "%s:  Invalid journal checksum from %s\n");
      return 0xFFFFFFFFLL;
    }
  }

  (*(v16[2] + 2))(v16[2], v20);
  v23 = (*(v16[3] + 2))(v16[3], v56.n128_u64[1]);
  v24 = (*(v16[3] + 2))(v16[3], v57);
  v25 = a2 + (*(v16[2] + 2))(v16[2], v18);
  v49 = a1;
  v26 = 0;
  v27 = 0;
  v50 = (*(v16[2] + 2))(v16[2], v47);
  v51 = v25;
  v29 = v24 + a2;
  v52 = a3 - v50;
  v53 = v24 + a2;
  v30 = v23 + a2;
  v54 = v23 + a2;
  v45 = v58;
  for (i = v23; ; v23 = i)
  {
    while (v30 == v29 && !v26)
    {
      v53 = v51 + v23 - v50;
      v26 = 1;
      v29 = v53;
    }

    v48 = sub_100030360(&v49, v16, v28);
    if (!v48)
    {
      if (!v26)
      {
        goto LABEL_63;
      }

      return 0;
    }

    if (v26)
    {
      if (v27)
      {
        v31 = *(v48 + 7);
        if (v31)
        {
          if ((*(v16[2] + 2))(v16[2], v31) != v27 && (*(v16[2] + 2))(v16[2], *(v48 + 7)) != v27 + 1)
          {
LABEL_60:
            free(v48);
            return 0;
          }
        }
      }
    }

    v32 = (*(v16[2] + 2))(v16[2], v45);
    v33 = (*(v16[2] + 2))(v16[2], v47);
    v34 = (*(v16[2] + 2))(v16[2], *(v48 + 1));
    if ((*(v16[2] + 2))(v16[2], *(v48 + 1)) >= 2)
    {
      break;
    }

LABEL_46:
    v27 = (*(v16[2] + 2))(v16[2], *(v48 + 7));
    free(v48);
    v29 = v53;
    v30 = v54;
  }

  v46 = v33;
  v35 = &v48[v34];
  v36 = (v48 + 40);
  v37 = -1;
  v38 = 1;
  v39 = &v48[v32];
  while (1)
  {
    if (v39 > v35)
    {
      if (!byte_10004350E)
      {
        goto LABEL_57;
      }

      v59 = xmmword_100043460;
      v60 = *&qword_100043470;
      v61 = xmmword_100043480;
      v62 = *&off_100043490;
      sub_10002D0E8(&v59, 2, "\tData out of range for block_list_header\n", v43);
      goto LABEL_55;
    }

    if (v35 - v39 < (*(v16[2] + 2))(v16[2], *v36))
    {
      if (!byte_10004350E)
      {
        goto LABEL_57;
      }

      v59 = xmmword_100043460;
      v60 = *&qword_100043470;
      v61 = xmmword_100043480;
      v62 = *&off_100043490;
      sub_10002D0E8(&v59, 2, "\tData size for block %d out of range for block_list_header\n");
      goto LABEL_55;
    }

    if (&v39[(*(v16[2] + 2))(v16[2], *v36)] > v35)
    {
      if (!byte_10004350E)
      {
        goto LABEL_57;
      }

      v59 = xmmword_100043460;
      v60 = *&qword_100043470;
      v61 = xmmword_100043480;
      v62 = *&off_100043490;
      sub_10002D0E8(&v59, 2, "\tData end out of range for block_list_header\n", v43);
      goto LABEL_55;
    }

    if ((*(v16[3] + 2))(v16[3], *(v36 - 1)) != -1)
    {
      break;
    }

LABEL_45:
    v42 = *v36;
    v36 += 4;
    v39 += (*(v16[2] + 2))(v16[2], v42);
    ++v38;
    v37 = -2;
    if (v38 >= (*(v16[2] + 2))(v16[2], *(v48 + 1)))
    {
      goto LABEL_46;
    }
  }

  if ((*(v16[2] + 2))(v16[2], *v36))
  {
    if (a7)
    {
      v40 = (*(v16[3] + 2))(v16[3], *(v36 - 1)) * v46;
      v41 = (*(v16[2] + 2))(v16[2], *v36);
      if ((*(a7 + 16))(a7, v40, v39, v41) == -1)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_45;
  }

  if (!byte_10004350E)
  {
    goto LABEL_57;
  }

  v59 = xmmword_100043460;
  v60 = *&qword_100043470;
  v61 = xmmword_100043480;
  v62 = *&off_100043490;
  sub_10002D0E8(&v59, 2, "\tInvalid block size block_list_header\n", v43);
LABEL_55:
  if (byte_10004350E)
  {
    v59 = xmmword_100043460;
    v60 = *&qword_100043470;
    v61 = xmmword_100043480;
    v62 = *&off_100043490;
    sub_10002D0E8(&v59, 2, "\tTransaction replay failed, returned %d\n", v37);
  }

LABEL_57:
  if (v26)
  {
    if (byte_10004350E)
    {
      v59 = xmmword_100043460;
      v60 = *&qword_100043470;
      v61 = xmmword_100043480;
      v62 = *&off_100043490;
      sub_10002D0E8(&v59, 2, "\t\tAnd we don't care\n");
    }

    goto LABEL_60;
  }

  free(v48);
LABEL_63:
  if (byte_10004350E)
  {
    v59 = xmmword_100043460;
    v60 = *&qword_100043470;
    v61 = xmmword_100043480;
    v62 = *&off_100043490;
    sub_10002D0E8(&v59, 2, "Journal was bad, stopped replaying\n", v43);
  }

  return 0xFFFFFFFFLL;
}

__n128 sub_100030270(uint64_t a1, double a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  v7 = __chkstk_darwin(a1, a2);
  v9 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = pread(v7, v9, v8, v10);
  if (v11 != -1 && v11 == a4)
  {
    v14 = v9[1];
    *a5 = *v9;
    a5[1] = v14;
    result = v9[2];
    a5[2] = result;
  }

  else
  {
    v15[0] = xmmword_100043460;
    v15[1] = *&qword_100043470;
    v15[2] = xmmword_100043480;
    v15[3] = *&off_100043490;
    sub_10002D0E8(v15, 7, "tried to read %zu for journal header buffer, got %zd", a4, v11);
  }

  return result;
}

char *sub_100030360(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a1 + 8);
  __chkstk_darwin(a1, a3);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v6, v5);
  v7 = sub_100030624(a1, v6, v5);
  if (v7 == -1 || v7 != v5)
  {
    if (byte_10004350E)
    {
      v17 = xmmword_100043460;
      v18 = *&qword_100043470;
      v19 = xmmword_100043480;
      v20 = *&off_100043490;
      sub_10002D0E8(&v17, 2, "%s:  wanted %zd, got %zd\n", "getJournalTransaction", v5, v7);
    }

    return 0;
  }

  if (!(*(*(a2 + 16) + 16))())
  {
    return 0;
  }

  v9 = (*(*(a2 + 16) + 16))();
  v10 = 0;
  v11 = 0;
  v6[2] = 0;
  do
  {
    v11 = (v11 + *(v6 + v10++)) ^ (v11 << 8);
  }

  while (v10 != 32);
  v6[2] = (*(*(a2 + 16) + 16))();
  if ((v11 ^ v9) != 0xFFFFFFFF)
  {
    if (byte_10004350E)
    {
      v17 = xmmword_100043460;
      v18 = *&qword_100043470;
      v19 = xmmword_100043480;
      v20 = *&off_100043490;
      sub_10002D0E8(&v17, 0, "%s(%d):  hdr has bad checksum, returning NULL\n", "getJournalTransaction", 216);
    }

    return 0;
  }

  if (v5 > (*(*(a2 + 16) + 16))())
  {
    return 0;
  }

  v12 = (*(*(a2 + 16) + 16))();
  v13 = malloc_type_malloc(v12, 0x923B342FuLL);
  if (v13)
  {
    v14 = (*(*(a2 + 16) + 16))();
    bzero(v13, v14);
    memcpy(v13, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v15 = (*(*(a2 + 16) + 16))() - v5;
    if (sub_100030624(a1, v13 + v5, v15) != v15)
    {
      free(v13);
      return 0;
    }
  }

  return v13;
}

uint64_t sub_100030624(uint64_t a1, char *__buf, unint64_t a3)
{
  v4 = __buf;
  v6 = *(a1 + 4);
  if (v6 <= 1)
  {
    v7 = 0;
    if (a3)
    {
      v8 = *(a1 + 40);
      while (1)
      {
        v9 = *(a1 + 32);
        if (v9 < v8)
        {
          v9 = *(a1 + 24) + *(a1 + 16);
        }

        v10 = v9 - v8;
        v11 = a3 - v7 >= v10 ? v10 : a3 - v7;
        if (!v11)
        {
          break;
        }

        v12 = pread(*a1, v4, v11, v8);
        if (v12 == -1)
        {
          v17 = xmmword_100043460;
          v18 = *&qword_100043470;
          v19 = xmmword_100043480;
          v20 = *&off_100043490;
          sub_10002D0E8(&v17, 7, "pread(%d, %p, %zu, %llu)");
          return v7;
        }

        v13 = v12;
        if (v12 != v11 && byte_10004350E != 0)
        {
          v17 = xmmword_100043460;
          v18 = *&qword_100043470;
          v19 = xmmword_100043480;
          v20 = *&off_100043490;
          sub_10002D0E8(&v17, 6, "%s(%d):  Wanted to read %zu, but only read %zd\n", "journalRead", 150, v11, v12);
        }

        v8 = *(a1 + 40) + v13;
        *(a1 + 40) = v8;
        v15 = *(a1 + 16);
        if (v8 == *(a1 + 24) + v15)
        {
          *(a1 + 40) = v15;
          ++*(a1 + 4);
          v8 = v15;
        }

        v7 += v13;
        v4 += v13;
        if (v7 >= a3)
        {
          return v7;
        }
      }

      if (byte_10004350E)
      {
        v17 = xmmword_100043460;
        v18 = *&qword_100043470;
        v19 = xmmword_100043480;
        v20 = *&off_100043490;
        sub_10002D0E8(&v17, 6, "Journal read amount is 0, is that right?\n");
      }
    }
  }

  else
  {
    v17 = xmmword_100043460;
    v18 = *&qword_100043470;
    v19 = xmmword_100043480;
    v20 = *&off_100043490;
    sub_10002D0E8(&v17, 6, "%s(%p, %p, %zu):  journal buffer wrap count = %d\n", "journalRead", a1, __buf, a3, v6);
    return -1;
  }

  return v7;
}