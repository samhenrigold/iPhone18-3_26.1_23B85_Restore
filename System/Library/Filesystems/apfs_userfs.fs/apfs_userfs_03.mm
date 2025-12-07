uint64_t sub_100026B88(pthread_mutex_t **a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v11 = (*(a4 + 8) >> 27) & 0x1F000;
  v19[0] = 3;
  v19[2] = v11;
  v19[3] = 448;
  v12 = *(a4 + 4);
  if (v12)
  {
    v19[0] = 2;
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  v19[1] = a3;
  if ((v12 & 0x10) != 0)
  {
    v13 = 536870916;
  }

  else
  {
    v13 = 4;
  }

  v14 = *a1;
  if (sub_100036630(a1) == 13)
  {
    v15 = a1;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_100038AF0(v14, v13 | a2, 0, v19, a4, v15, a5, &v20);
  if (!v16)
  {
    v17 = v20;
    *a6 = v20;
    sub_10003D180(v17, a5, 0);
  }

  return v16;
}

uint64_t sub_100026C78(uint64_t *a1, unint64_t a2, int a3, int a4, unsigned int a5, unsigned int a6, int a7, uint64_t a8, uint64_t a9, unint64_t *a10)
{
  v11[1] = 0;
  v14 = 0u;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v11[0] = a8;
  v12 = a4;
  v13 = a3;
  return sub_100026978(a1, a2, a5, a6, a7, v11, a9, a10);
}

uint64_t sub_100026D00(uint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6, unint64_t a7, uint64_t *a8)
{
  v38 = a7;
  v39 = a8;
  v14 = *(a6 + 28);
  if (v14 >= 0x40)
  {
    v15 = 96;
  }

  else
  {
    v15 = v14 + 32;
  }

  __chkstk_darwin(a1);
  v17 = &v38 - v16;
  bzero(&v38 - v16, v15);
  v42 = 0;
  v41 = 0x1C000000000;
  v18 = *(a6 + 20);
  v19 = (v18 << 28) & 0x80000000 | (((v18 >> 4) & 1) << 30) | (((v18 >> 5) & 1) << 27) | a2;
  if ((v18 & 0x18) == 0)
  {
    v19 = a2;
  }

  if ((a2 & 0xC0000000) != 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = v19;
  }

  if ((a2 & 0xC0000000) != 0)
  {
    v21 = (a2 >> 26) & 0x10 | (8 * (a2 >> 31)) | (a2 >> 22) & 0x20 | v18;
  }

  else
  {
    v21 = v18;
  }

  *v17 = 25987;
  *(v17 + 1) = v15;
  if (v21 > 0x1FF)
  {
    return 22;
  }

  v22 = *a1;
  *(v17 + 1) = *(v17 + 1) & 0xFFFFF07FFFFFFE00 | v21 | (((*(*(*(*a1 + 392) + 376) + 36) >> 12) & 0x1F) << 39);
  *(v17 + 3) = *a6;
  *(v17 + 1) = -267452416;
  if ((v21 & 0x80) == 0)
  {
    goto LABEL_14;
  }

  if (sub_100000F58(*(a6 + 24)))
  {
    return 22;
  }

  v31 = *(a6 + 24);
  if (v31 > 0xFFF)
  {
    return 22;
  }

  v32 = *(v17 + 1) & 0x80000FFFFFFFFFFFLL | ((*&v31 & 0x7FFFFLL) << 44);
  v33 = *(a6 + 28);
  *(v17 + 1) = v32 | ((v33 & 0x7F) << 56);
  if (v33 > 0x7F)
  {
    return 22;
  }

  if (v33 >= 0x40)
  {
    v34 = 64;
  }

  else
  {
    v34 = v33;
  }

  memcpy(v17 + 32, (a6 + 32), v34);
  v22 = *a1;
LABEL_14:
  v23 = v20 | 0x20000000;
  if (v21 < 0x100)
  {
    v23 = v20;
  }

  v24 = *(a6 + 16);
  v40[0] = v23 & 0xFFFF0000 | 2;
  v40[1] = v24;
  v25 = 3;
  if ((v23 & 0x40000000) == 0)
  {
    v25 = 1;
  }

  if ((a5 & 1) == 0)
  {
    v25 = 0;
  }

  v26 = v23 | v25;
  if ((a5 & 2) != 0)
  {
    v26 |= 4uLL;
  }

  if ((a5 & 4) != 0)
  {
    v26 |= 0x20uLL;
  }

  v27 = v26 | ((a5 & 0x200) << 23);
  if (sub_100036630(a1) == 13)
  {
    v28 = a1;
  }

  else
  {
    v28 = 0;
  }

  result = sub_10003A1E8(v22, v27, a3, v40, v17, v28, a4, v38, &v42);
  if ((a5 & 4) == 0 || result)
  {
    v30 = v42;
    if (result)
    {
      v35 = 0;
    }

    else
    {
      v35 = v42;
    }

    *v39 = v35;
    if (!result)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v30 = v42;
    if ((v42[2] & 0x10) == 0)
    {
      *v39 = v42;
LABEL_44:
      v36 = *(a6 + 8);
      result = 0;
      if (v36)
      {
        v30[53] = v36;
      }

      return result;
    }

    if (a5)
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }

    sub_10001D260(v42, v37 & (a5 << 30 >> 31));
    *v39 = 0;
    return 2;
  }

  return result;
}

uint64_t sub_100026FF8(uint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, int a6, int a7, uint64_t a8, unint64_t a9, uint64_t *a10)
{
  v11[1] = 0;
  v14 = 0u;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v11[0] = a8;
  v12 = a7;
  v13 = a5;
  return sub_100026D00(a1, a2, a3, a4, a6, v11, a9, a10);
}

uint64_t sub_100027078(atomic_ullong *a1, unint64_t a2, int a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v102 = a5;
  v103 = a6;
  v104 = a4;
  v101 = a2;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v112 = v8;
  v113 = v8;
  v110 = v8;
  v111 = v8;
  v108 = v8;
  v109 = v8;
  v106 = v8;
  v107 = v8;
  __chkstk_darwin(a1);
  v10 = (&v86 - v9);
  bzero(&v86 - v9, v11);
  v100 = a3 & 0x180;
  v12 = v100 != 0;
  if (a3)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  sub_10003BBDC(a1, v13);
  v14 = a1[7];
  if (!v14)
  {
    sub_10003C190(a1, v13);
    return 22;
  }

  v15 = *(v14 + 34);
  v16 = v15 + 1;
  v99 = v15;
  if (v15 < 8)
  {
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v17 = &v106;
    v106 = 0u;
    v107 = 0u;
  }

  else
  {
    v17 = sub_1000122F4(v15 + 1, 0x10uLL, 0x1020040FFEA222EuLL);
    if (!v17)
    {
      sub_10003C190(a1, v13);
      return 12;
    }
  }

  *v17 = a1;
  *(v17 + 4) = 0;
  sub_10003C894(a1);
  if (a3)
  {
    v18 = sub_10003BC6C(a1, 2, v103);
    if (v18)
    {
      goto LABEL_13;
    }

    if ((a1[50] & 0x80) != 0)
    {
      sub_10003D180(a1, v103, 0);
    }
  }

  v18 = 0;
LABEL_13:
  v19 = a3 & 0x20;
  v97 = &v86;
  v96 = v16;
  if (!v104 || v18 | v19)
  {
    v20 = v102;
    if (v18)
    {
      goto LABEL_99;
    }

    goto LABEL_21;
  }

  v20 = v102;
  if ((a3 & 0x10) == 0 || *(a1[7] + 34))
  {
    v18 = (v104)(a1, v102);
  }

  if (!v18)
  {
LABEL_21:
    v21 = 0;
    v89 = a3 & 0xFFFFFE4F;
    v22 = a3 & 0xFFFFFE4D | 2;
    v91 = a3 & 0xFFFFFE4C;
    if (v100)
    {
      v22 = a3 & 0xFFFFFE4C;
    }

    v23 = v19 == 0;
    if (v104)
    {
      v24 = v19 != 0;
    }

    else
    {
      v24 = 0;
    }

    v88 = v12 << 7;
    v98 = (v12 << 7) | v22;
    v90 = v22 | 0x100;
    if (v104)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    v93 = v25;
    v95 = v17;
    v94 = v24;
    do
    {
      v26 = &v17[v21];
      v27 = *v26;
      v28 = *(*v26 + 56);
      if ((*(v28 + 32) & 2) != 0 || (v29 = v26[4], *(v28 + 36) <= v29) || (a3 & 0x10) != 0 && *(v28 + 34) == 1)
      {
        if (v24)
        {
          v18 = v104();
          v27 = *v26;
        }

        else
        {
          v18 = 0;
        }

        sub_10001D260(v27, v13);
        *v26 = 0;
        --v21;
        if (v18)
        {
          break;
        }

        continue;
      }

      *v10 = 0;
      v30 = sub_10001D758(v27, v29, v10);
      if (v30)
      {
        v18 = v30;
        v55 = a1[1];
        if (v55)
        {
          v56 = (v55 + 4040);
        }

        else
        {
          v56 = (*(*(*a1 + 392) + 384) + 212);
        }

        v61 = *(*(*v26 + 56) + 34);
        v62 = sub_100038018(*v26);
        sub_100012178("%s:%d: %s level %d node 0x%llx: error getting index %d child oid: %d\n", "btree_iterate_nodes", 6433, v56, v61, v62, v26[4], v18);
        break;
      }

      ++v26[4];
      if (v99 < ++v21)
      {
        v57 = a1[1];
        if (v57)
        {
          v58 = (v57 + 4040);
        }

        else
        {
          v58 = (*(*(*a1 + 392) + 384) + 212);
        }

        v63 = &v17[v21];
        v64 = *(v63 - 2);
        v65 = *(*(v64 + 56) + 34);
        v66 = sub_100038018(v64);
        sub_100012178("%s:%d: %s level %d node 0x%llx index %d: more levels than expected\n", "btree_iterate_nodes", 6440, v58, v65, v66, *(v63 - 4) - 1);
        v18 = 22;
        break;
      }

      v31 = &v17[v21];
      *(v31 + 4) = 0;
      v32 = (v31 - 1);
      v33 = sub_10001D02C(a1, v10, v101, v98, *(*(*(v31 - 2) + 56) + 34) - 1, v103, v31);
      v18 = v33;
      if (v33)
      {
        v34 = a1[1];
        if (v34)
        {
          v35 = (v34 + 4040);
          v36 = *(*(*v32 + 56) + 34);
          v37 = sub_100038018(*v32);
          v33 = sub_100012178("%s:%d: %s level %d node 0x%llx: error getting index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6455, v35, v36, v37, *(v31 - 4) - 1, *v10, v98, v18);
        }

        else
        {
          v38 = (*(*(*a1 + 392) + 384) + 212);
          v39 = *(*(*v32 + 56) + 34);
          v40 = sub_100038018(*v32);
          v33 = sub_100012178("%s:%d: %s level %d node 0x%llx: error getting index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6455, v38, v39, v40, *(v31 - 4) - 1, *v10, v98, v18);
        }

        v20 = v102;
        if (!v100)
        {
          goto LABEL_95;
        }
      }

      else if (!v100)
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      if (*(*(*(v31 - 2) + 56) + 36) > *(v31 - 4))
      {
        v92 = &v86;
        __chkstk_darwin(v33);
        v42 = (&v86 - v41);
        bzero(&v86 - v41, v43);
        v44 = *(v31 - 4);
        if (*(*(*v32 + 56) + 36) > v44)
        {
          v45 = sub_10001D758(*v32, v44, v42);
          if (v45 || (v45 = sub_10001D02C(a1, v42, v101, v90, *(*(*v32 + 56) + 34) - 1, v103, &v105), v45))
          {
            v87 = v45;
            v46 = a1[1];
            if (v46)
            {
              v86 = (v46 + 4040);
            }

            else
            {
              v86 = (*(*(*a1 + 392) + 384) + 212);
            }

            v47 = *(*(*v32 + 56) + 34);
            v48 = sub_100038018(*v32);
            sub_100012178("%s:%d: %s level %d node 0x%llx: error prefetching index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6474, v86, v47, v48, *(v31 - 4), *v42, v90, v87);
            v20 = v102;
          }
        }
      }

      if (v18)
      {
        if (v18 != 45 && v18 != 16)
        {
          goto LABEL_95;
        }

        v50 = sub_10001D02C(a1, v10, v101, v91, *(*(*v32 + 56) + 34) - 1, v103, v31);
        if (v50)
        {
          v18 = v50;
LABEL_95:
          v77 = a1[1];
          if (v77)
          {
            v78 = (v77 + 4040);
          }

          else
          {
            v78 = (*(*(*a1 + 392) + 384) + 212);
          }

          v79 = *(*(*v32 + 56) + 34);
          v80 = sub_100038018(*v32);
          sub_100012178("%s:%d: %s level %d node 0x%llx: error getting index %d child flags 0x%x: %d\n", "btree_iterate_nodes", 6510, v78, v79, v80, *(v31 - 4) - 1, v89 | v88 | 2, v18);
          v17 = v95;
          break;
        }
      }

      else
      {
        v51 = sub_10003C714(*v31);
        if (v51)
        {
          v18 = v51;
          v67 = a1[1];
          if (v67)
          {
            v68 = (v67 + 4040);
          }

          else
          {
            v68 = (*(*(*a1 + 392) + 384) + 212);
          }

          v73 = *(*(*v31 + 56) + 34);
          v74 = sub_100038018(*v32);
          v75 = *(v31 - 4) - 1;
          v76 = sub_100038018(*v31);
          sub_100012178("%s:%d: %s level %d node 0x%llx: error ON WAIT getting index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6487, v68, v73, v74, v75, v76, v98, v18);
          sub_100037058(*v31);
          goto LABEL_94;
        }
      }

      sub_10003BBDC(*v31, v13);
      if ((a3 & 1) == 0)
      {
        goto LABEL_71;
      }

      v52 = *v31;
      v53 = sub_100036628(*v31);
      v54 = sub_10003BC6C(v52, (v53 >> 29) & 2, v103);
      if (v54)
      {
        v18 = v54;
        v59 = a1[1];
        if (v59)
        {
          v60 = (v59 + 4040);
        }

        else
        {
          v60 = (*(*(*a1 + 392) + 384) + 212);
        }

        v69 = *(*(*v31 + 56) + 34);
        v70 = sub_100038018(*v32);
        v71 = *(v31 - 4) - 1;
        v72 = sub_100038018(*v31);
        sub_100012178("%s:%d: %s level %d node 0x%llx: error MODIFYING index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6501, v60, v69, v70, v71, v72, v98, v18);
        sub_10001D260(*v31, 2);
LABEL_94:
        *v31 = 0;
        goto LABEL_95;
      }

LABEL_69:
      if (sub_100038018(*v31) != *v10)
      {
        sub_1000206C0(*(v31 - 2), (*(v31 - 4) - 1), (*v31 + 112), v103);
      }

LABEL_71:
      if (v93)
      {
        v18 = (v104)(*v31, v20);
      }

      else
      {
        v18 = 0;
      }

      v17 = v95;
      v24 = v94;
      if (v18)
      {
        break;
      }
    }

    while ((v21 & 0x8000) == 0);
  }

LABEL_99:
  v81 = v96;
  if (((v96 - 1) & 0x8000) == 0)
  {
    v82 = v99 + 1;
    v83 = &v17[v99];
    do
    {
      if (*v83)
      {
        sub_10001D260(*v83, v13);
      }

      --v83;
    }

    while (v82-- > 1);
  }

  if (v17 != &v106)
  {
    sub_1000123F8(v17, (16 * v81));
  }

  return v18;
}

uint64_t sub_100027AD8(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 22;
  }

  v2 = *(a1 + 56);
  if (!v2)
  {
    return 22;
  }

  result = 0;
  *a2 = *(v2 + 34) + 1;
  return result;
}

uint64_t sub_100027B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __chkstk_darwin(a1);
  v11 = (&v22 - v10);
  bzero(&v22 - v10, v12);
  if (a5 == 2)
  {
    if (sub_100036630(a1) == 13)
    {
      v14 = a1;
    }

    else
    {
      v14 = 0;
    }

    *(a4 + 8) = v14;
    v15 = sub_10003834C(a4);
    v16 = sub_100012668(v15);
    if (!v16)
    {
      return 22;
    }

    *(a4 + 416) = v16;
    if (a4 != a3)
    {
      *(a4 + 400) = *(a3 + 400);
    }

    v13 = sub_10003D308(a4);
    goto LABEL_11;
  }

  if (a5 == 1)
  {
    v13 = sub_10003D294(a4);
LABEL_11:
    v17 = v13;
    goto LABEL_13;
  }

  v17 = 0;
LABEL_13:
  if (!(*(*(a4 + 56) + 32) & 2 | v17))
  {
    v18 = 0;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    while (v18 < *(*(a4 + 56) + 36))
    {
      *v11 = 0;
      v19 = sub_10001D758(a4, v18, v11);
      if (v19)
      {
        return v19;
      }

      v19 = sub_10001D02C(a3, v11, 0, 2u, *(*(a4 + 56) + 34) - 1, 0, &v22);
      if (v19)
      {
        return v19;
      }

      v20 = v22;
      v17 = sub_100027B00(a1, a2, a3, v22, a5);
      sub_10003C190(v20, 1);
      sub_100037058(v20);
      ++v18;
      if (v17)
      {
        return v17;
      }
    }

    return 0;
  }

  return v17;
}

uint64_t sub_100027D18(void *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, unint64_t *a7)
{
  __chkstk_darwin(a1);
  v15 = (&v40 - v14);
  bzero(&v40 - v14, v16);
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v17 = (a3 >> 26) & 0x10 | a4 | (8 * (a3 >> 31)) | (a3 >> 22) & 0x20;
  LODWORD(v45[0]) = 2123139;
  *(v45 + 8) = *(a2 + 400);
  v18 = *(a2 + 416);
  *(&v45[0] + 1) = *(&v45[0] + 1) & 0xFFFFFFFFFFFFFE00 | BYTE8(v45[0]) & 0x47 | v17 & 0x1B8;
  *(&v45[1] + 1) = v18;
  v19 = *(a2 + 56);
  WORD2(v45[0]) = *(v19 + 32) & 0x1B;
  WORD3(v45[0]) = *(v19 + 34);
  v20 = *(a2 + 8);
  if (!v20)
  {
    v20 = *(*a2 + 392);
  }

  v43 = -21846;
  v21 = sub_10003834C(a2);
  v22 = sub_100026B88(v20, a3, v21, v45, a5, a7);
  v23 = v22;
  if (!a6 || *(*(a2 + 56) + 32) & 2 | v22)
  {
    if (!v22)
    {
      v24 = a7;
      v25 = *(*a7 + 56);
      v26 = *(a2 + 56);
      v27 = sub_10003835C(a2) - 32;
      v28 = (v25 + 32);
      v29 = v24;
      memcpy(v28, (v26 + 32), v27);
      v30 = *v24;
      if (*(*(a2 + 56) + 32))
      {
        v31 = *(v30 + 392);
        *v31 = WORD4(v45[0]) & 0x1FF;
        v31[1] = (*(&v45[0] + 1) >> 27) & 0x1F000;
        v31[2] = (DWORD2(v45[0]) >> 9) & 0x3FFF;
        v31[3] = (*(&v45[0] + 1) >> 23);
      }

      sub_100028590(v30, v45, 0);
      v23 = 0;
      goto LABEL_28;
    }

    return v23;
  }

  v41 = a7;
  v32 = 0;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  v42 = (a3 >> 23) & 0x200;
  while (1)
  {
    if (v32 >= *(*(a2 + 56) + 36))
    {
      v23 = 0;
      goto LABEL_27;
    }

    *v15 = 0;
    v33 = sub_10001D758(a2, v32, v15);
    if (v33 || (v33 = sub_10001D02C(a1, v15, 0, v42 | 2u, *(*(a2 + 56) + 34) - 1, 0, &v47), v33))
    {
      v23 = v33;
      goto LABEL_27;
    }

    v34 = v47;
    v35 = sub_100027D18(a1, v47, a3, v17, a5, a6, &v46);
    if (v35)
    {
      break;
    }

    v36 = sub_10001D454(a2, v32, &v44, &v43);
    if (v36)
    {
      v23 = v36;
LABEL_17:
      v37 = a1[1];
      if (v37)
      {
        v38 = (v37 + 4040);
      }

      else
      {
        v38 = (*(*(*a1 + 392) + 384) + 212);
      }

      sub_100012178("%s:%d: %s btree_node_insert_internal failed: %d\n", "btree_node_copy", 6692, v38, v23);
      goto LABEL_21;
    }

    *v15 = *(v46 + 112);
    v23 = sub_100020204(*v41, v32, v44, v43, v15, (*(*v41 + 407) & 0x7Fu) + 8, a5);
    if (v23)
    {
      goto LABEL_17;
    }

LABEL_21:
    sub_100037058(v46);
    sub_10003C190(v34, 1);
    sub_100037058(v34);
    v46 = 0;
    ++v32;
    if (v23)
    {
      goto LABEL_27;
    }
  }

  v23 = v35;
  sub_10003C190(v34, 1);
  sub_100037058(v34);
  if (v46)
  {
    sub_100037058(v46);
  }

LABEL_27:
  v29 = v41;
  sub_10003D180(*v41, a5, 0);
LABEL_28:
  sub_10003C190(*v29, 2);
  return v23;
}

uint64_t sub_100028138(void *a1, unint64_t a2, unsigned int a3, unint64_t a4, unint64_t *a5)
{
  *a5 = 0;
  if ((a3 & 0x18) != 0)
  {
    v9 = (a3 << 28) & 0x80000000 | (((a3 >> 4) & 1) << 30) | (((a3 >> 5) & 1) << 27) | a2;
  }

  else
  {
    v9 = a2;
  }

  sub_10003BBDC(a1, 1);
  v10 = sub_100027D18(a1, a1, v9, a3, a4, 1, a5);
  if (v10)
  {
    v11 = *a5;
    if (*a5)
    {
      v16 = 0xAAAAAAAAAAAAAAAALL;
      sub_10002822C(v11, a4, &v16);
      sub_100037058(*a5);
      *a5 = 0;
    }
  }

  else
  {
    v12 = a1[49];
    v13 = *(*a5 + 392);
    v14 = *(v12 + 16);
    *(v13 + 32) = *(v12 + 32);
    *(v13 + 16) = v14;
  }

  sub_10003C190(a1, 1);
  return v10;
}

uint64_t sub_10002822C(uint64_t a1, unint64_t a2, void *a3)
{
  sub_10003BBDC(a1, 2);
  if ((*(a1 + 19) & 0x80) != 0 || (*(a1 + 400) & 0x80) != 0)
  {
    v8 = sub_1000283A4(a1, a1, a2);
  }

  else
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = sub_100038018(v6);
    }

    else
    {
      v7 = 0;
    }

    v10 = *(*a1 + 392);
    v11 = sub_100036628(a1);
    v12 = sub_10003835C(a1);
    v13 = sub_100038018(a1);
    if (a3)
    {
      v14 = sub_10000FC30(v10, v11, v12, v7, v13, a2, 0, a3);
    }

    else
    {
      v14 = sub_10000FC54(v10, v11, v12, v7, v13, a2, 0);
    }

    v8 = v14;
    if (v14)
    {
      v15 = *(a1 + 8);
      if (v15)
      {
        v16 = (v15 + 4040);
      }

      else
      {
        v16 = (*(*(*a1 + 392) + 384) + 212);
      }

      v17 = sub_100038018(a1);
      v18 = sub_100036628(a1);
      sub_100012178("%s:%d: %s error adding btree 0x%llx type 0x%x to reap list: %d\n", "btree_delete", 6818, v16, v17, v18, v8);
    }
  }

  sub_10003C190(a1, 2);
  return v8;
}

uint64_t sub_1000283A4(void *a1, uint64_t *a2, uint64_t a3)
{
  __chkstk_darwin(a1);
  v7 = (&v14 - v6);
  bzero(&v14 - v6, v8);
  if ((*(a2[7] + 32) & 2) == 0)
  {
    v9 = 0;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    while (v9 < *(a2[7] + 36))
    {
      *v7 = 0;
      v10 = sub_10001D758(a2, v9, v7);
      if (v10 || (v10 = sub_10001D02C(a1, v7, 0, 0, *(a2[7] + 34) - 1, 0, &v14), v10))
      {
        v12 = v10;
        goto LABEL_10;
      }

      v11 = v14;
      sub_10003BBDC(v14, 2);
      v12 = sub_1000283A4(a1, v11, a3);
      sub_10003C190(v11, 2);
      sub_100037058(v11);
      ++v9;
      if (v12)
      {
        goto LABEL_10;
      }
    }
  }

  v12 = 0;
LABEL_10:
  sub_100039E90(a2, a3);
  return v12;
}

uint64_t sub_100028538(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 22;
  }

  if (sub_100036630(a1) != 2)
  {
    return 22;
  }

  result = 0;
  *a2 = *(*(a1 + 392) + 32);
  return result;
}

uint64_t sub_100028590(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 56);
  result = sub_10001C8D4(a1, a2);
  if (!result)
  {
    if (a2)
    {
      *(a1 + 400) = *(a2 + 8);
      *(a1 + 416) = *(a2 + 24);
    }

    v8 = v6 + 56 + *(v6 + 42);
    *(a1 + 376) = v6 + 56;
    *(a1 + 384) = v8;
    v9 = sub_10003835C(a1);
    v10 = *(v6 + 32);
    v11 = -40;
    if ((v10 & 1) == 0)
    {
      v11 = 0;
    }

    v12 = v6 + v9 + v11;
    *(a1 + 392) = v12;
    if (v10)
    {
      v13 = *(a1 + 400) & 0xFFFFFFFFFFFFFE00 | *v12 & 0x1FF;
      *(a1 + 400) = v13;
      v14 = v13 & 0xFFFFF07FFFFFFFFFLL | (((*(v12 + 4) >> 12) & 0x1F) << 39);
      *(a1 + 400) = v14;
      v15 = v14 & 0xFFFFFFFFFF8001FFLL | ((*(v12 + 8) & 0x3FFFLL) << 9);
      *(a1 + 400) = v15;
      *(a1 + 400) = v15 & 0xFFFFFF80007FFFFFLL | (*(v12 + 12) << 23);
      *(a1 + 408) = sub_100038018(a1);
    }

    if (a3)
    {

      return sub_100000E2C(a1, a2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002868C(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((v1[16] & 4) != 0)
  {
    if ((*(a1 + 400) & 4) == 0)
    {
      v3 = 0;
      return (v1[23] + v3 + v1[25] + v1[27]);
    }

    v2 = 4;
  }

  else
  {
    v2 = 8;
  }

  v4 = v1[21];
  v5 = sub_10001D2C0(a1, 0);
  v3 = v4 - v5 * v2;
  if (v4 < (v5 * v2))
  {
    v3 = 0;
  }

  return (v1[23] + v3 + v1[25] + v1[27]);
}

uint64_t sub_10002870C(uint64_t result, int a2, unsigned __int16 a3, __int16 *a4, unsigned __int16 *a5)
{
  if ((*(result + 400) & 0x40) != 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = (a3 + 7) & 0xFFF8;
  }

  v6 = 48;
  if (a2 != 1)
  {
    v6 = 52;
  }

  v7 = 392;
  if (a2 == 1)
  {
    v7 = 384;
  }

  v8 = *(*(result + 56) + v6);
  v9 = -1;
  if (v8 == 0xFFFF)
  {
    v13 = -1;
    if (a4)
    {
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  v11 = result;
  v24 = a4;
  v25 = a5;
  v12 = *(result + v7);
  v13 = -1;
  do
  {
    v9 = v8;
    v14 = v8;
    if (a2 == 1)
    {
      v15 = *(*(v11 + 56) + 44);
      v16 = v15 >= v9;
      v17 = v15 - v9;
      if (v17 != 0 && v16 && v17 >= 4)
      {
        v20 = *(*(v11 + 384) + v14 + 2);
        if (v20 >= 4)
        {
          if ((*(v11 + 400) & 0x40) == 0)
          {
            v20 = (v20 + 7) & 0x1FFF8;
          }

          if (v20 <= v17)
          {
            goto LABEL_33;
          }
        }
      }
    }

    else
    {
      result = sub_10003835C(v11);
      v18 = *(v11 + 56);
      if (*(v18 + 32))
      {
        v19 = -96;
      }

      else
      {
        v19 = -56;
      }

      if (v9 <= (result - *(v18 + 42) + v19 - (*(v18 + 46) + *(v18 + 44))) && v9 >= 4u)
      {
        v21 = *(*(v11 + 392) - v14 + 2);
        if (v21 >= 4)
        {
          if ((*(v11 + 400) & 0x40) == 0)
          {
            v21 = (v21 + 7) & 0x1FFF8;
          }

          if (v21 <= v9)
          {
            goto LABEL_33;
          }
        }
      }
    }

    result = sub_1000033FC(*(*v11 + 392));
    if (result)
    {
      break;
    }

LABEL_33:
    if (a2 == 1)
    {
      v22 = v14;
    }

    else
    {
      v22 = -v14;
    }

    v23 = (v12 + v22);
    if (v23[1] >= v5)
    {
      goto LABEL_39;
    }

    v8 = *v23;
    v13 = v9;
  }

  while (v8 != 0xFFFF);
  v9 = -1;
  v13 = -1;
LABEL_39:
  a4 = v24;
  a5 = v25;
  if (v24)
  {
LABEL_40:
    *a4 = v13;
  }

LABEL_41:
  if (a5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t sub_10002892C(uint64_t a1, __int16 a2, uint64_t a3)
{
  v53 = 0xAAAAAAAAAAAAAAAALL;
  v6 = *(a1 + 56);
  v7 = *(v6 + 32);
  if (v7)
  {
    v10 = sub_100027D18(0, a1, 0x88000000uLL, (16 * v7) & 0x180, a3, 0, &v53);
    if (v10)
    {
      return v10;
    }

    v11 = *(a1 + 56);
    *(v11 + 36) = 0;
    *(v11 + 44) = 0;
    v12 = *(a1 + 376);
    v13 = *(a1 + 392) - *(a1 + 384);
    *(v11 + 46) = v13;
    *(v11 + 48) = 0xFFFF0000FFFFLL;
    bzero(v12, *(v11 + 42) + v13);
    v14 = v53;
    v15 = v53[7];
    goto LABEL_11;
  }

  v48 = 2123139;
  v51 = *(a1 + 400);
  v52 = *(a1 + 416);
  v49 = v7;
  v50 = *(v6 + 34);
  v8 = *(a1 + 40);
  v47[0] = *(a1 + 36);
  v47[1] = v8;
  v47[2] = (*(a1 + 400) >> 27) & 0x1F000;
  v47[3] = 448;
  v9 = sub_100038AF0(*a1, 2281701376, 0, v47, &v48, *(a1 + 8), a3, &v53);
  if (!v9)
  {
    v16 = v53;
    v17 = v53[7];
    v18 = *(a1 + 56);
    v19 = v18[1];
    *v17 = *v18;
    v17[1] = v19;
    v20 = sub_10003D208(a1, v16);
    if (v20)
    {
      v10 = v20;
      v21 = *(a1 + 8);
      if (v21)
      {
        v22 = (v21 + 4040);
      }

      else
      {
        v22 = (*(*(*a1 + 392) + 384) + 212);
      }

      v23 = sub_100038018(a1);
      v24 = sub_100038018(v53);
      sub_100012178("%s:%d: %s obj_exchange_phys (%llx, %llx) with xid %llu failed: %d\n", "btree_node_compact", 1572, v22, v23, v24, a3, v10);
LABEL_38:
      sub_100039E98(v53);
      sub_100037058(v53);
      sub_10003D180(a1, a3, 0);
      return v10;
    }

    sub_100028590(a1, &v48, 0);
    sub_100028590(v53, &v48, 0);
    v14 = v53;
    v15 = v53[7];
    *(*(a1 + 56) + 32) |= *(v15 + 32) & 0x8000;
LABEL_11:
    v25 = sub_10001D2C0(v14, a2);
    v26 = 2;
    if ((*(v15 + 32) & 4) == 0)
    {
      v26 = 3;
    }

    sub_100028F0C(a1, (v25 << v26) & 0xFFFC);
    v27 = v53;
    v28 = v53[7];
    if (*(v28 + 36))
    {
      v29 = 0;
      while (1)
      {
        v30 = *(v28 + 32);
        v31 = *(v27 + 376);
        v32 = v29;
        v33 = (v31 + 4 * v29);
        v34 = (v31 + 8 * v29);
        if ((v30 & 4) == 0)
        {
          v33 = v34;
        }

        v35 = v31 + 8 * v32;
        if ((v30 & 4) != 0)
        {
          v36 = (*(v27 + 400) >> 9) & 0x3FFF;
        }

        else
        {
          v36 = *(v35 + 2);
        }

        v37 = *v33;
        v38 = v31 + 4 * v32 + 2;
        v39 = (v35 + 4);
        if ((v30 & 4) != 0)
        {
          v39 = v38;
        }

        v40 = *v39;
        v41 = sub_10001D3DC(v27, v32);
        if (v37 == 0xFFFF)
        {
          v43 = 0;
        }

        else
        {
          v42 = sub_10001D518(v27, v37, v36);
          if (v42)
          {
            break;
          }

          v27 = v53;
          v43 = (v53[48] + v37);
        }

        if (v40 > 0xFFFD)
        {
          v44 = 0;
        }

        else
        {
          v42 = sub_10001D644(v27, v40, v41);
          if (v42)
          {
            break;
          }

          v44 = (v53[49] - v40);
        }

        v42 = sub_100020204(a1, v32, v43, v36, v44, v41, a3);
        if (v42)
        {
          break;
        }

        v29 = v32 + 1;
        v27 = v53;
        v28 = v53[7];
        if (*(v28 + 36) <= (v32 + 1))
        {
          goto LABEL_32;
        }
      }

      v10 = v42;
      if (v7)
      {
        memcpy((*(a1 + 56) + 32), (v53[7] + 32), v53[49] - v53[7] - 32);
        v45 = a1;
      }

      else
      {
        sub_10003D208(a1, v53);
        sub_100028590(a1, 0, 0);
        v45 = v53;
      }

      sub_100028590(v45, 0, 0);
    }

    else
    {
LABEL_32:
      v10 = 0;
    }

    goto LABEL_38;
  }

  return v9;
}

uint64_t sub_100028D10(uint64_t a1, int a2, unsigned __int16 a3, int a4, int a5)
{
  if (a5 == 0xFFFF)
  {
    return 22;
  }

  if ((*(a1 + 400) & 0x40) != 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = (a3 + 7) & 0xFFF8;
  }

  v6 = 52;
  if (a2 == 1)
  {
    v6 = 48;
  }

  v7 = 384;
  if (a2 == 1)
  {
    v8 = 1;
  }

  else
  {
    v7 = 392;
    v8 = -1;
  }

  v9 = (*(a1 + 56) + v6);
  v10 = *(a1 + v7);
  v9[1] -= v5;
  if (a4 != 0xFFFF || (result = 0, *v9 == a5))
  {
    v12 = v5;
    v13 = v8;
    v14 = (v10 + a5 * v8);
    v15 = v14[1] - v12;
    if (v15 < 5u)
    {
      v17 = (v10 + v8 * a4);
      if (a4 == 0xFFFF)
      {
        v17 = v9;
      }
    }

    else
    {
      if (a4 != 0xFFFF)
      {
        v9 = (v10 + v8 * a4);
      }

      v16 = v8 * v12 + a5;
      *v9 = v16;
      v17 = (v10 + v13 * v16);
      v17[1] = v15;
    }

    result = 0;
    *v17 = *v14;
  }

  return result;
}

uint64_t sub_100028E00(uint64_t a1, int a2, unsigned __int16 a3, _WORD *a4)
{
  v14 = -1;
  v13 = -1;
  sub_10002870C(a1, a2, a3, &v13, &v14);
  if (v14 == 0xFFFF)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = (a3 + 7) & 0xFFF8;
    }

    v11 = *(a1 + 56);
    v12 = *(v11 + 46);
    if (v12 < v10)
    {
      return 28;
    }

    if (a2 == 1)
    {
      LOWORD(v9) = *(v11 + 44);
      *(v11 + 44) = v9 + v10;
      *(v11 + 46) = v12 - v10;
    }

    else
    {
      *(v11 + 46) = v12 - v10;
      if (a2 == 2)
      {
        v9 = *(a1 + 392) - *(v11 + 44) - (*(a1 + 384) + (v12 - v10));
      }

      else
      {
        LOWORD(v9) = -1;
      }
    }
  }

  else
  {
    result = sub_100028D10(a1, a2, a3, v13, v14);
    if (result)
    {
      return result;
    }

    LOWORD(v9) = v14;
  }

  result = 0;
  *a4 = v9;
  return result;
}

void sub_100028F0C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 42);
  v5 = v4 - a2;
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    memmove((*(a1 + 384) - v5), *(a1 + 384), *(v3 + 44));
    *(a1 + 384) -= v5;
    v7 = *(a1 + 56);
    *(v7 + 46) += v5;
    v8 = *(v7 + 42) - v5;
  }

  else
  {
    v6 = a2 - v4;
    memmove((*(a1 + 384) + (a2 - v4)), *(a1 + 384), *(v3 + 44));
    bzero(*(a1 + 384), v6);
    *(a1 + 384) += v6;
    v7 = *(a1 + 56);
    *(v7 + 46) -= v6;
    v8 = *(v7 + 42) + v6;
  }

  *(v7 + 42) = v8;
}

void *sub_100028FC0(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 56);
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  v6 = (a3 + a2) << v5;
  v7 = a2 + -a3;
  if ((v4 & 4) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  v9 = v7 << v8;
  if (a3 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v6 = a2 << v8;
  }

  if (a3 >= 0)
  {
    v8 = v5;
    v9 = (a2 << v5);
  }

  return memmove((*(a1 + 376) + v6), (*(a1 + 376) + v9), ((*(v3 + 36) - v7) << v8) & 0xFFFC);
}

uint64_t sub_100029030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, int a8)
{
  if (a8 != 8)
  {
    return 22;
  }

  result = 0;
  *a5 = *a7;
  return result;
}

uint64_t sub_100029050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 >= 0)
  {
    LOWORD(v7) = a3;
  }

  else
  {
    v7 = -a3;
  }

  v8 = v7;
  if (a3 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  if (a3 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a1;
  }

  v11 = *(v10 + 56);
  if ((v11[16] & 4) != 0)
  {
    if ((*(v10 + 400) & 4) == 0)
    {
      goto LABEL_19;
    }

    v12 = 4;
  }

  else
  {
    v12 = 8;
  }

  v13 = sub_10001D2C0(v10, v7) * v12;
  v14 = v11[21];
  if (v14 >= v13)
  {
    goto LABEL_19;
  }

  if (v13 - v14 <= v11[23])
  {
    sub_100028F0C(v10, v13);
    goto LABEL_19;
  }

  v15 = sub_10002892C(v10, v8, a4);
  if (!v15)
  {
LABEL_19:
    memset(__n, 170, sizeof(__n));
    v58 = -21846;
    if (v9 == a2)
    {
      if (v8 < 1)
      {
        v37 = 0;
        v38 = 0;
LABEL_60:
        v15 = 0;
      }

      else
      {
        v36 = sub_10001D454(a2, 0, &__n[10], __n);
        if (v36)
        {
          v15 = v36;
          v37 = 0;
          v38 = 0;
        }

        else
        {
          v38 = 0;
          do
          {
            v39 = sub_10001D56C(a2, v38, &__n[2], &v58);
            if (v39)
            {
              break;
            }

            v39 = sub_100020204(a1, *(*(a1 + 56) + 36), *&__n[10], *__n, *&__n[2], v58, a4);
            if (v39)
            {
              break;
            }

            v40 = *(a2 + 56);
            v41 = *(a2 + 376);
            if ((*(a2 + 400) & 0x40) != 0)
            {
              v42 = *__n;
            }

            else
            {
              v42 = (*__n + 7) & 0xFFF8;
            }

            v43 = (v42 + 7) & 0xFFF8;
            if ((*(a2 + 400) & 0x40) != 0)
            {
              v43 = *__n;
            }

            if (v43 >= 4u)
            {
              if ((v40[16] & 4) != 0)
              {
                v44 = (v41 + 4 * v38);
              }

              else
              {
                v44 = (v41 + 8 * v38);
              }

              v45 = *v44;
              v46 = (*(a2 + 384) + v45);
              v46[1] = v43;
              *v46 = v40[24];
              v40[24] = v45;
            }

            v40[25] += v43;
            v47 = v58;
            if (v58 && v58 != 65534)
            {
              if ((*(a2 + 400) & 0x40) != 0)
              {
                v48 = v58;
              }

              else
              {
                v48 = (v58 + 7) & 0xFFF8;
              }

              v49 = (v48 + 7) & 0xFFF8;
              if ((*(a2 + 400) & 0x40) == 0)
              {
                v47 = v49;
              }

              if (v47 >= 4u)
              {
                v50 = v41 + 8 * v38 + 4;
                v51 = (v41 + 4 * v38 + 2);
                if ((v40[16] & 4) == 0)
                {
                  v51 = v50;
                }

                v52 = *v51;
                v53 = (*(a2 + 392) - v52);
                v53[1] = v47;
                *v53 = v40[26];
                v40[26] = v52;
              }

              v40[27] += v47;
            }

            v37 = ++v38;
            if (v38 >= v8)
            {
              goto LABEL_60;
            }

            v39 = sub_10001D454(a2, v38, &__n[10], __n);
          }

          while (!v39);
          v15 = v39;
          v37 = v38;
        }
      }

      sub_100028FC0(a2, 0, -v37);
      *(*(a2 + 56) + 36) -= v38;
    }

    else if (v8 < 1)
    {
      v15 = 0;
    }

    else
    {
      sub_100028FC0(a2, 0, v8);
      v16 = 0;
      v17 = *(a2 + 56);
      *(v17 + 36) += v8;
      *(v17 + 32) |= 0x8000u;
      v18 = *(a2 + 376);
      do
      {
        if ((*(v17 + 32) & 4) != 0)
        {
          *(v18 + 4 * v16) = -1;
        }

        else
        {
          *(v18 + 8 * v16) = 0xFFFF0000FFFFLL;
        }

        ++v16;
      }

      while (v8 > v16);
      LOWORD(v19) = 0;
      v20 = *(*(a1 + 56) + 36);
      while (1)
      {
        v21 = sub_10001D454(a1, (v20 - 1), &__n[10], __n);
        if (v21)
        {
          break;
        }

        v21 = sub_10001D56C(a1, (*(*(a1 + 56) + 36) - 1), &__n[2], &v58);
        if (v21)
        {
          break;
        }

        v21 = sub_10001F8A0(a2, (v8 + ~v19), *&__n[10], *__n, *&__n[2], v58, a4);
        if (v21)
        {
          break;
        }

        v22 = *(a1 + 56);
        v20 = *(v22 + 36) - 1;
        *(v22 + 36) = v20;
        v23 = *(a1 + 376);
        if ((*(a1 + 400) & 0x40) != 0)
        {
          v24 = *__n;
        }

        else
        {
          v24 = (*__n + 7) & 0xFFF8;
        }

        v25 = (v24 + 7) & 0xFFF8;
        if ((*(a1 + 400) & 0x40) != 0)
        {
          v25 = *__n;
        }

        if (v25 >= 4u)
        {
          if ((*(v22 + 32) & 4) != 0)
          {
            v26 = (v23 + 4 * v20);
          }

          else
          {
            v26 = (v23 + 8 * v20);
          }

          v27 = *v26;
          v28 = (*(a1 + 384) + v27);
          v28[1] = v25;
          *v28 = *(v22 + 48);
          *(v22 + 48) = v27;
        }

        *(v22 + 50) += v25;
        v29 = v58;
        if (v58 && v58 != 65534)
        {
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v30 = v58;
          }

          else
          {
            v30 = (v58 + 7) & 0xFFF8;
          }

          v31 = (v30 + 7) & 0xFFF8;
          if ((*(a1 + 400) & 0x40) == 0)
          {
            v29 = v31;
          }

          if (v29 >= 4u)
          {
            v32 = v23 + 8 * v20 + 4;
            v33 = (v23 + 4 * v20 + 2);
            if ((*(v22 + 32) & 4) == 0)
            {
              v33 = v32;
            }

            v34 = *v33;
            v35 = (*(a1 + 392) - v34);
            v35[1] = v29;
            *v35 = *(v22 + 52);
            *(v22 + 52) = v34;
          }

          *(v22 + 54) += v29;
        }

        v19 = (v19 + 1);
        if (v19 >= v8)
        {
          v15 = 0;
          *(*(a2 + 56) + 32) &= ~0x8000u;
          goto LABEL_90;
        }
      }

      v15 = v21;
      *(*(a2 + 56) + 32) &= ~0x8000u;
      sub_100028FC0(a2, 0, (v19 - v8));
    }

LABEL_90:
    v54 = *(v9 + 56);
    if ((*(v54 + 32) & 4) != 0)
    {
      if ((*(v9 + 400) & 4) == 0)
      {
LABEL_96:
        *(v9 + 440) = 0;
        sub_10003D180(a1, a4, 0);
        sub_10003D180(a2, a4, 0);
        return v15;
      }

      v55 = 4;
    }

    else
    {
      v55 = 8;
    }

    v56 = sub_10001D2C0(v9, 8);
    if (*(v54 + 42) > (v56 * v55))
    {
      sub_100028F0C(v9, (v56 * v55));
    }

    goto LABEL_96;
  }

  return v15;
}

void sub_1000295B8(uint64_t a1, int a2, uint64_t a3)
{
  v9 = 2123139;
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  v6 = *(a1 + 56);
  v10 = *(v6 + 32) & 0x18 | v5;
  v11 = a2;
  v12 = *(a1 + 400);
  v13 = *(a1 + 416);
  bzero((v6 + 32), ((*(a1 + 400) >> 27) & 0x1F000) - 72);
  v7 = *(a1 + 56);
  v8 = sub_10003835C(a1);
  sub_10001CC90(v7, v8, &v9);
  sub_100028590(a1, &v9, 0);
  sub_10003D180(a1, a3, 0);
}

void *sub_10002967C(void *result, uint64_t a2, uint64_t a3)
{
  if (result[54] == *(a3 + 112))
  {
    v4 = result;
    v5 = *(a2 + 56);
    if ((*(v5 + 32) & 2) != 0 || !*(v5 + 36))
    {
      result[54] = *(a2 + 112);
    }

    else
    {
      __chkstk_darwin(result);
      v7 = (&v12 - v6);
      bzero(&v12 - v6, v8);
      result = sub_10001D758(a2, (*(*(a2 + 56) + 36) - 1), v7);
      if (result)
      {
        v9 = v4[1];
        if (v9)
        {
          v10 = (v9 + 4040);
        }

        else
        {
          v10 = (*(*(*v4 + 392) + 384) + 212);
        }

        result = sub_100012178("%s:%d: %s failed to update rightmost leaf field: %d\n", "bt_update_last_leaf", 2521, v10, result);
        v11 = 0;
      }

      else
      {
        v11 = *v7;
      }

      v4[54] = v11;
    }
  }

  return result;
}

void sub_1000297DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v10 = a6;
  v71 = a6;
  __chkstk_darwin(a1);
  v17 = (&v62 - v16);
  bzero(&v62 - v16, v18);
  v69 = 0xAAAAAAAAAAAAAAAALL;
  v68 = -21846;
  v19 = *(a4 + 56);
  if (!a2)
  {
    if ((*(v19 + 32) & 2) != 0 || *(v19 + 36) != 1)
    {
      return;
    }

    if (a5 || v10 && (*(v10 + 16) & 0x10) != 0)
    {
      if (sub_10001D758(a4, 0, v17) || sub_10001D02C(a1, v17, a7, 3u, *(*(a4 + 56) + 34) - 1, a8, &v71))
      {
        return;
      }

      v10 = v71;
      if ((*(a1 + 400) & 0x10) != 0 && *(v71 + 112) != *v17)
      {
        sub_1000206C0(a4, 0, (v71 + 112), a8);
      }

      v44 = 1;
    }

    else
    {
      v44 = 0;
    }

    if (sub_10002868C(v10) > 0x27)
    {
      v46 = *(v10 + 56);
      if (*(v46 + 46) > 0x27u || ((*(v46 + 32) & 4) == 0 || (*(v10 + 400) & 4) != 0) && (sub_10002892C(v10, 0, a8), *(*(v10 + 56) + 46) > 0x27u))
      {
        sub_100024734(a4, 0, a8);
        sub_1000295B8(a4, (*(*(a4 + 56) + 34) - 1), a8);
        v47 = sub_100029050(a4, v10, -*(*(v10 + 56) + 36), a8);
        if (!v47)
        {
          sub_10002967C(a1, a4, v10);
          sub_100039E90(v10, a8);
          if (v44)
          {
            sub_10003C190(v10, 2);
            sub_100037058(v10);
          }

          atomic_fetch_add_explicit((*(a1 + 392) + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
          sub_10003D180(a1, a8, 0);
          return;
        }

        v48 = *(a1 + 8);
        if (v48)
        {
          v49 = (v48 + 4040);
        }

        else
        {
          v49 = (*(*(*a1 + 392) + 384) + 212);
        }

        sub_100012178("%s:%d: %s failed to move all entries: %d\n", "bt_merge_nodes", 4374, v49, v47);
        sub_100029050(a4, v10, *(*(a4 + 56) + 36), a8);
        sub_1000295B8(a4, (*(*(a4 + 56) + 34) + 1), a8);
        if (!sub_10001D454(v10, 0, &v69, &v68))
        {
          *v17 = *(v10 + 112);
          sub_100020204(a4, 0, v69, v68, v17, (*(a4 + 407) & 0x7F) + 8, a8);
        }
      }
    }

    if (!v44)
    {
      return;
    }

    sub_10003C190(v10, 2);
    v61 = v10;
    goto LABEL_106;
  }

  if (*(v19 + 36))
  {
    if (*(*(a2 + 56) + 36) - 1 > a3)
    {
      v20 = (a3 + 1);
      if (!sub_10001D758(a2, v20, v17))
      {
        v70 = 0xAAAAAAAAAAAAAAAALL;
        if (!sub_10001D02C(a1, v17, a7, 3u, *(*(a2 + 56) + 34) - 1, a8, &v70))
        {
          if ((*(a1 + 400) & 0x10) != 0 && v70[14] != *v17)
          {
            sub_1000206C0(a2, v20, v70 + 14, a8);
          }

          v21 = *(a4 + 56);
          if ((*(v21 + 32) & 4) != 0)
          {
            v50 = *(v21 + 36);
            v24 = v70;
            v66 = v70[7];
            v43 = *(v66 + 36);
            v51 = v43 + v50;
            if (v43 + v50 <= sub_10001D2C0(a4, 0))
            {
              v67 = 0;
              LOWORD(v29) = v43;
            }

            else
            {
              if (v50 >= (v51 >> 1))
              {
                v29 = 0;
              }

              else
              {
                v29 = (v51 >> 1) - v50;
              }

              v67 = v29;
            }
          }

          else
          {
            v63 = v20;
            v22 = 8 * sub_10001D2C0(a4, 0);
            v23 = sub_10002868C(a4);
            v24 = v70;
            v25 = sub_10002868C(v70);
            v26 = 0;
            v27 = 0;
            v66 = v24[7];
            v67 = 0;
            v28 = *(v66 + 36);
            v64 = v23 - ((v25 + v23) >> 1);
            v65 = v28;
            do
            {
              LOWORD(v29) = v26;
              if (v65 <= v26)
              {
                break;
              }

              if (v26 && !v67)
              {
                v30 = 8 * (sub_10001D2C0(a4, v26) & 0x1FFF);
                v31 = v30 >= v22;
                v32 = v30 - v22;
                if (!v31)
                {
                  v32 = 0;
                }

                if ((v32 + v27) <= v64)
                {
                  v33 = 0;
                }

                else
                {
                  v33 = v26;
                }

                v67 = v33;
              }

              v34 = v24[50];
              v35 = *(v66 + 32);
              if ((v34 & 0x40) != 0)
              {
                if ((v35 & 4) != 0)
                {
                  v37 = (v34 >> 9) & 0x3FFF;
                }

                else
                {
                  v37 = *(v24[47] + 8 * v29 + 2);
                }
              }

              else
              {
                if ((v35 & 4) != 0)
                {
                  v36 = (v34 >> 9) & 0x3FFF;
                }

                else
                {
                  v36 = *(v24[47] + 8 * v29 + 2);
                }

                v37 = (v36 + 7) & 0x1FFF8;
              }

              v38 = v37 + v27;
              v39 = sub_10001D3DC(v24, v29);
              if (v39 == 65534)
              {
                v40 = 0;
              }

              else
              {
                v40 = v39;
              }

              if ((v34 & 0x40) == 0)
              {
                v40 = (v40 + 7) & 0x1FFF8;
              }

              v27 = v38 + v40;
              v26 = (v29 + 1);
              v41 = 8 * (sub_10001D2C0(a4, v26) & 0x1FFF);
              v31 = v41 >= v22;
              v42 = v41 - v22;
              if (!v31)
              {
                v42 = 0;
              }
            }

            while (v42 + v27 <= v23);
            LOWORD(v20) = v63;
            v43 = v65;
          }

          if (v43 != v29)
          {
            if ((*(*(a2 + 56) + 32) & 4) != 0)
            {
              v52 = (*(a2 + 400) >> 9) & 0x3FFF;
            }

            else
            {
              v52 = *(*(a2 + 376) + 8 * v20 + 2);
            }

            if ((*(v66 + 32) & 4) != 0)
            {
              v53 = (*(v24 + 100) >> 9) & 0x3FFF;
            }

            else
            {
              v53 = *(v24[47] + 8 * v67 + 2);
            }

            v68 = v53;
            v54 = *(a2 + 400);
            if ((v54 & 0x40) != 0)
            {
              v55 = v52;
            }

            else
            {
              v55 = (v52 + 7) & 0x1FFF8;
            }

            v56 = (v53 + 7) & 0x1FFF8;
            if ((v54 & 0x40) != 0)
            {
              v56 = v53;
            }

            if (v55 >= v56)
            {
              LOWORD(v29) = v67;
            }

            else
            {
              if ((v54 & 0x40) == 0)
              {
                LOWORD(v53) = (v53 + 7) & 0xFFF8;
                LOWORD(v52) = (v52 + 7) & 0xFFF8;
              }

              v57 = sub_100020798(a2, 0, 0, 0, v53 - v52, 0, 0);
              LOWORD(v29) = v67;
              if (!v57)
              {
                goto LABEL_105;
              }
            }
          }

          if (v29 && !sub_100029050(a4, v24, -v29, a8))
          {
            if (*(v24[7] + 36))
            {
              v58 = sub_10001D454(v24, 0, &v69, &v68);
              if (v58 || (v58 = sub_10001F8A0(a2, v20, v69, v68, 0, 0, a8)) != 0)
              {
                v59 = *(a1 + 8);
                if (v59)
                {
                  v60 = (v59 + 4040);
                }

                else
                {
                  v60 = (*(*(*a1 + 392) + 384) + 212);
                }

                sub_100012178("%s:%d: %s btree_node_key_update failed: %d\n", "bt_merge_nodes", 4515, v60, v58);
              }
            }

            else
            {
              sub_100024734(a2, v20, a8);
              sub_10002967C(a1, a2, v24);
              sub_100039E90(v24, a8);
              atomic_fetch_add_explicit((*(a1 + 392) + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
              sub_10003D180(a1, a8, 0);
            }
          }

LABEL_105:
          sub_10003C190(v24, 2);
          v61 = v24;
LABEL_106:
          sub_100037058(v61);
        }
      }
    }
  }

  else
  {
    sub_100024734(a2, a3, a8);
    v45 = *(a2 + 56);
    if ((*(v45 + 32) & 1) != 0 && !*(v45 + 36))
    {
      sub_1000295B8(a2, 0, a8);
    }

    sub_10002967C(a1, a2, a4);
    sub_100039E90(a4, a8);
    atomic_fetch_add_explicit((*(a1 + 392) + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);

    sub_10003D180(a1, a8, 0);
  }
}

uint64_t sub_10002A028(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned int a4, char *a5)
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0x10000;
  }

  if ((v5 - 65537) < 0xFFFF0001)
  {
    return 22;
  }

  bzero(a5, 0x558uLL);
  if (!a1 || (result = sub_100011924((a5 + 16)), !result))
  {
    *a5 = a1;
    *(a5 + 1) = a2;
    *(a5 + 22) = a3 | (v5 << 8);
    v11 = sub_1000122F4(v5, 0x18uLL, 0x1000040504FFAC1uLL);
    *(a5 + 10) = v11;
    if (v11)
    {
      sub_10002A104(a5);
      return 0;
    }

    else
    {
      if (a1)
      {
        j__pthread_mutex_destroy((a5 + 16));
      }

      return 12;
    }
  }

  return result;
}

uint64_t sub_10002A104(uint64_t result)
{
  v1 = *(result + 88);
  if (v1 <= 0x2FF)
  {
    v5 = (v1 >> 8) - 1;
    v2 = *(result + 80);
  }

  else
  {
    v2 = *(result + 80);
    v3 = 1;
    v4 = 1;
    do
    {
      *(v2 + 24 * v4++) = (v3 + 1);
      v3 = v4;
      v5 = (*(result + 88) >> 8) - 1;
    }

    while (v5 > v4);
  }

  *(v2 + 24 * v5) = 0;
  *(result + 92) = 1;
  return result;
}

void sub_10002A174(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      sub_1000123F8(v2, 24 * (*(a1 + 88) >> 8));
      *(a1 + 80) = 0;
    }

    if (*a1)
    {
      j__pthread_mutex_destroy((a1 + 16));
      *a1 = 0;
    }
  }
}

uint64_t sub_10002A1D4(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (HIBYTE(*(a1 + 88)))
  {
    v5 = *a1;
    v4 = *(a1 + 8);
    sub_10002A174(a1);
    result = sub_10002A028(v5, v4, v2, (v2 >> 8), a1);
    if (result)
    {
      v6 = *(a1 + 88);
      v7 = "main";
      if (v6 == 1)
      {
        v7 = "tier2";
      }

      result = sub_100012178("%s:%d: %s dev %d Error reinitializing %s free extent cache: %d\n", "spaceman_free_extent_cache_reset", 262, (*(*a1 + 384) + 212), v6, v7, result);
      *(a1 + 280) |= 2uLL;
    }
  }

  else
  {
    bzero((a1 + 92), 0x4FCuLL);
    bzero(*(a1 + 80), 24 * (v2 >> 8));

    return sub_10002A104(a1);
  }

  return result;
}

uint64_t sub_10002A2E8(uint64_t a1, unint64_t a2)
{
  if (a2 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (*(*(*(a1 + 8) + 376) + 48 * *(a1 + 88) + 56) / v2 > 0x64)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  if ((*(a1 + 280) & 2) != 0 || (*(a1 + 88) >> 8) - 1 > *(a1 + 94))
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 176);
  if (v5 <= *(a1 + 224))
  {
    v5 = *(a1 + 224);
  }

  if (v5 < *(a1 + 248) || (v6 = *(a1 + 128), (v6 - *(a1 + 120)) > 3))
  {
LABEL_15:
    v3 = 0;
  }

  else
  {
    *(a1 + 328) = v6;
    v3 = 1;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return v3;
}

void sub_10002A3BC(void *a1)
{
  v32 = 0xAAAAAAAAAAAAAAAALL;
  if (!sub_100042E24(a1, &v32))
  {
    v1 = 0;
    for (i = 1; ; i = 0)
    {
      v3 = i;
      v4 = v32[47] + 48 * v1;
      v7 = *(v4 + 48);
      v5 = v4 + 48;
      v6 = v7;
      if (!v7)
      {
        goto LABEL_42;
      }

      v8 = v32[v1 + 197];
      if (!v8)
      {
        goto LABEL_42;
      }

      v31 = v3;
      v9 = *(v5 + 24);
      v10 = *(v8 + 94);
      if (*v8)
      {
        pthread_mutex_lock((v8 + 16));
      }

      v11 = v8 + 1264;
      if (sub_10002C3F0(v8, v8 + 1264, 1u))
      {
        v30 = 0;
      }

      else
      {
        v30 = *(*(v8 + 80) + 24 * *(v11 + 4 * *(v8 + 1361)) + 8) & 0xFFFFFFFFFFFFFLL;
      }

      if (sub_10002D5AC(v8, v8 + 1264))
      {
        v12 = 0;
        v13 = 0;
      }

      else
      {
        v29 = *(*(v8 + 80) + 24 * *(v11 + 4 * *(v8 + 1361))) & 0xFFFFFFFFFFFFFLL;
        if (sub_10002C3F0(v8, v8 + 1264, 0))
        {
          v13 = 0;
          v12 = v29;
        }

        else
        {
          v14 = (*(v8 + 80) + 24 * *(v11 + 4 * *(v8 + 1361)));
          v12 = v29;
          v13 = (*v14 & 0xFFFFFFFFFFFFFLL) - v29 + (v14[1] & 0xFFFFFFFFFFFFFLL);
        }
      }

      v15 = *(v8 + 96);
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = *(v8 + 96);
      }

      if (v9)
      {
        v17 = v9;
      }

      else
      {
        v17 = v16;
      }

      if (v10)
      {
        v18 = v15 / v10;
      }

      else
      {
        v18 = 0;
      }

      sub_1000120D8("%s:%d: %s dev %d smfree %lld/%lld table %d/%d blocks %lld %lld:%lld:%lld %d.%02d%% range %lld:%lld %d.%02d%% scans %lld\n", "spaceman_fxc_print_stats", 477, (*(*v8 + 384) + 212), *(v8 + 88), v9, v6, v10, (*(v8 + 88) >> 8) - 1, v15, *(v8 + 120), v18, v30, 10000 * v15 / v17 / 0x64, 10000 * v15 / v17 % 0x64, v12, v13, 10000 * v13 / v6 / 0x64, 10000 * v13 / v6 % 0x64, *(v8 + 336));
      v19 = (v8 + 272);
      v20 = 3;
      do
      {
        v21 = *(v19 - 4);
        if (v21)
        {
          if (v9)
          {
            v22 = v9;
          }

          else
          {
            v22 = *(v19 - 4);
          }

          v23 = *(v19 - 5);
          if (v23)
          {
            v24 = v21 / v23;
          }

          else
          {
            v24 = 0;
          }

          sub_1000120D8("%s:%d: %s dev %d scan_stats[%d]: foundmax %lld extents %lld blocks %lld long %lld avg %lld %d.%02d%% range %lld:%lld %d.%02d%%\n", "spaceman_fxc_print_stats", 496, (*(*v8 + 384) + 212), *(v8 + 88), v20 - 1, *v19, v23, v21, *(v19 - 3), v24, 10000 * v21 / v22 / 0x64, 10000 * v21 / v22 % 0x64, *(v19 - 2), *(v19 - 1), 10000 * *(v19 - 1) / v6 / 0x64, 10000 * *(v19 - 1) / v6 % 0x64);
        }

        v19 -= 6;
        --v20;
      }

      while (v20);
      v25 = *(v8 + 344);
      v26 = *v8;
      if (v25)
      {
        sub_1000120D8("%s:%d: %s dev %d Searches: %lld success %lld fail %lld partial %lld, bm search yes:%lld (%lld/%lld/%lld) no:%lld/%lld\n", "spaceman_fxc_print_stats", 509, (*(v26 + 384) + 212), *(v8 + 88), v25, *(v8 + 352), *(v8 + 424), *(v8 + 416), *(v8 + 448), *(v8 + 456), *(v8 + 464), *(v8 + 472), *(v8 + 432), *(v8 + 440));
        v27 = *(v8 + 360);
        v3 = v31;
        if (v27)
        {
          v28 = *(v8 + 368) / v27;
        }

        else
        {
          v28 = 0;
        }

        sub_1000120D8("%s:%d: %s dev %d Remainders: zero %lld one %lld tiny %lld small %lld good %lld, total %lld blocks %lld avg %lld\n", "spaceman_fxc_print_stats", 515, (*(*v8 + 384) + 212), *(v8 + 88), *(v8 + 408), *(v8 + 400), *(v8 + 392), *(v8 + 384), *(v8 + 376), v27, *(v8 + 368), v28);
        if (!*v8)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v3 = v31;
        if (!v26)
        {
          goto LABEL_42;
        }
      }

      pthread_mutex_unlock((v8 + 16));
LABEL_42:
      v1 = 1;
      if ((v3 & 1) == 0)
      {
        sub_100037058(v32);
        return;
      }
    }
  }
}

uint64_t sub_10002A7AC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = a2 + 1576;
  for (i = 1; ; i = 0)
  {
    v7 = i;
    if (!*(v5 + 8 * v4))
    {
      v8 = *(*(a2 + 376) + 48 * v4 + 48);
      if (v8)
      {
        v9 = sub_1000122F4(1uLL, 0x558uLL, 0x10200402E7C0D0DuLL);
        *(v5 + 8 * v4) = v9;
        if (!v9)
        {
          v12 = 12;
          goto LABEL_13;
        }

        v10 = v8 >> 18;
        if (v8 >> 18 >= 0xFF80)
        {
          LODWORD(v10) = 65408;
        }

        v11 = sub_10002A028(a1, a2, v4, v10 + 128, v9);
        if (v11)
        {
          break;
        }
      }
    }

    v4 = 1;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v11;
  v13 = *(v5 + 8 * v4);
  if (v13)
  {
    *(v13 + 280) |= 2uLL;
  }

LABEL_13:
  sub_100012178("%s:%d: %s failed to initialize free extent cache for device %d, error %d\n", "spaceman_free_extent_cache_setup", 1556, (*(a1 + 384) + 212), v4, v12);
  return v12;
}

uint64_t sub_10002A8DC(unsigned __int8 *a1, int a2, unint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  v4 = a4;
  if ((a4 | a3) >> 52)
  {
    return 84;
  }

  if (!a4)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  v8 = *(a1 + 35);
  if ((v8 & 2) == 0)
  {
    v9 = &a1[48 * ((v8 & 4) == 0) + 136];
    v11 = *(v9 + 5);
    v10 = (v9 + 40);
    if (v11 < v4)
    {
      *v10 = v4;
    }

    v74 = -21846;
    v12 = sub_10002AFFC(a1, v4, a3);
    if (v12 == 55)
    {
      v13 = &a1[16 * (a2 ^ 1)];
      v14 = *(v13 + 37);
      if (v14)
      {
        if (v14 < a3 && v4 + a3 < *(v13 + 38))
        {
          sub_10002B21C(a1, a3, v4);
          v15 = 0;
          *(v13 + 37) = a3;
          goto LABEL_27;
        }
      }
    }

    v16 = sub_100042D38(*a1, *(a1 + 1), a3, v4);
    if (v16)
    {
      v17 = v16;
      if (sub_100011490(*a1))
      {
        sub_100012178("%s:%d: %s dev %d free extent %lld:%lld appears to span container metadata and should not be free: %d\n", "spaceman_free_extent_cache_insert", 1648, (*(*a1 + 384) + 212), a1[88], a3, v4, v17);
      }

      goto LABEL_23;
    }

    v18 = a1 + 1068;
    v19 = sub_10002B264(a1, 0, a3, v4, (a1 + 1068));
    if (v19)
    {
      goto LABEL_25;
    }

    v21 = *&v18[4 * a1[1165]];
    v22 = a1 + 1166;
    v23 = *(a1 + 1148);
    *(a1 + 1230) = *(a1 + 1132);
    *(a1 + 1246) = v23;
    *(a1 + 631) = *(a1 + 582);
    v24 = *(a1 + 1084);
    *(a1 + 1166) = *v18;
    *(a1 + 1182) = v24;
    v25 = *(a1 + 1116);
    *(a1 + 1198) = *(a1 + 1100);
    *(a1 + 1214) = v25;
    if (v21)
    {
      v73 = a1 + 136;
      v15 = 0;
    }

    else
    {
      v47 = sub_10002D734(a1, (a1 + 1166), -1);
      v15 = v47;
      if ((v47 & 0xFFFFFFFD) != 0)
      {
        goto LABEL_26;
      }

      v73 = a1 + 136;
      if (v47 == 2)
      {
        v15 = 2;
        goto LABEL_33;
      }
    }

    v26 = *&v22[4 * a1[1263]];
    v27 = (*(a1 + 10) + 24 * *&v22[4 * a1[1263]]);
    v28 = *v27 & 0xFFFFFFFFFFFFFLL;
    v29 = v27[1] & 0xFFFFFFFFFFFFFLL;
    if (v29 + v28 >= a3)
    {
      v4 = v4 + a3 - v28;
      v48 = *(a1 + 1246);
      *(a1 + 1132) = *(a1 + 1230);
      *(a1 + 1148) = v48;
      *(a1 + 582) = *(a1 + 631);
      v49 = *(a1 + 1182);
      *v18 = *v22;
      *(a1 + 1084) = v49;
      v50 = *(a1 + 1214);
      *(a1 + 1100) = *(a1 + 1198);
      *(a1 + 1116) = v50;
      if (v4 <= v29)
      {
        if (v15)
        {
          v15 = 1;
          goto LABEL_26;
        }

        goto LABEL_27;
      }

      v19 = sub_10002B390(a1, v28, v29, v4, v26);
      if (v19)
      {
LABEL_25:
        v15 = v19;
LABEL_26:
        sub_100012178("%s:%d: %s dev %d Error %d, reinitializing\n", "spaceman_free_extent_cache_insert", 1881, (*(*a1 + 384) + 212), a1[88], v15);
        sub_10002A1D4(a1);
        goto LABEL_27;
      }

      v51 = &v73[48 * ((*(a1 + 70) & 4) == 0)];
      v53 = *(v51 + 5);
      v52 = (v51 + 40);
      if (v53 < v4)
      {
        *v52 = v4;
      }

      sub_10002B694(a1, v28, v4);
      v15 = 0;
LABEL_34:
      v30 = a1[1165];
      if (v30 < 0 || *&v18[4 * v30])
      {
        if (v15)
        {
          goto LABEL_26;
        }

        goto LABEL_37;
      }

      if (v12 == 55)
      {
        v54 = sub_10002D734(a1, (a1 + 1068), 1);
        if (v54)
        {
          v15 = v54;
          v55 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_76;
        }

        v61 = *&v18[4 * a1[1165]];
        v62 = (*(a1 + 10) + 24 * *&v18[4 * a1[1165]]);
        v63 = *v62;
        v55 = *v62 & 0xFFFFFFFFFFFFFLL;
        if (v28 + v4 < v55)
        {
          v15 = 2;
LABEL_76:
          sub_10002B21C(a1, v28, v4);
          v64 = &a1[16 * (a2 ^ 1)];
          *(v64 + 37) = v28;
          *(v64 + 38) = v55;
          if (v15 != 2)
          {
            goto LABEL_26;
          }

LABEL_23:
          v15 = 0;
          goto LABEL_27;
        }

        v65 = v62[1] & 0xFFFFFFFFFFFFFLL;
        v66 = v55 - v28 + v65;
        if (v55 == *(a1 + 14))
        {
          *(a1 + 14) = v28;
        }

        *v62 = v63 & 0xFFF0000000000000 | v28;
        v19 = sub_10002B390(a1, v28, v65, v55 - v28 + v65, v61);
        if (!v19)
        {
          v67 = &v73[48 * ((*(a1 + 70) & 4) == 0)];
          v69 = *(v67 + 5);
          v68 = (v67 + 40);
          if (v69 >= v66)
          {
            goto LABEL_23;
          }

          v15 = 0;
          *v68 = v66;
LABEL_27:
          if (*a1)
          {
            pthread_mutex_unlock((a1 + 16));
          }

          return v15;
        }
      }

      else
      {
        v74 = 0;
        v19 = sub_10002B710(a1, v28, v4, &v74, (a1 + 1068));
        if (!v19)
        {
          v56 = sub_10002B97C(a1, 1u, v28, v4, &v74);
          if (v56)
          {
            v15 = v56;
            if (!sub_10002BA58(a1, v28, v4))
            {
              sub_10002BAD4(a1, v74);
            }

            goto LABEL_26;
          }

          v70 = *(a1 + 15);
          if (v70 - 1 >= v4 || v4 == v70 && v28 > *(a1 + 14))
          {
            *(a1 + 14) = v28;
            *(a1 + 15) = v4;
          }

          if (v4 > *(a1 + 16))
          {
            *(a1 + 16) = v4;
          }

          v15 = sub_10002B264(a1, 0, v28, v4, (a1 + 1068));
          sub_10002B694(a1, v28, v4);
          LOBYTE(v30) = a1[1165];
          if (v15)
          {
            goto LABEL_26;
          }

LABEL_37:
          v71 = *&v18[4 * v30];
          v31 = v28 + v4;
          v32 = v4;
          v72 = v28 + v4;
          while (1)
          {
            v33 = *(a1 + 1148);
            *(a1 + 1230) = *(a1 + 1132);
            *(a1 + 1246) = v33;
            *(a1 + 631) = *(a1 + 582);
            v34 = *(a1 + 1084);
            *v22 = *v18;
            *(a1 + 1182) = v34;
            v35 = *(a1 + 1116);
            *(a1 + 1198) = *(a1 + 1100);
            *(a1 + 1214) = v35;
            v36 = sub_10002D734(a1, (a1 + 1166), 1);
            if (v36)
            {
              break;
            }

            v37 = *&v22[4 * a1[1263]];
            v38 = (*(a1 + 10) + 24 * *&v22[4 * a1[1263]]);
            v39 = *v38 & 0xFFFFFFFFFFFFFLL;
            if (v31 < v39)
            {
              goto LABEL_67;
            }

            v40 = v28;
            v41 = v38[1] & 0xFFFFFFFFFFFFFLL;
            if (v41 + v39 >= v31)
            {
              v42 = v41 + v39 - v31;
            }

            else
            {
              v42 = 0;
            }

            sub_10002BB1C(a1, (a1 + 1166));
            v43 = sub_10002B264(a1, 1u, v39, v41, (a1 + 1068));
            if (v43)
            {
              v60 = v43;
LABEL_73:
              sub_100012178("%s:%d: %s dev %d Failed to find successor node in length tree: %d\n", "spaceman_free_extent_cache_insert", 1852, (*(*a1 + 384) + 212), a1[88], v60);
              v15 = v60;
              goto LABEL_26;
            }

            if (!*&v18[4 * a1[1165]])
            {
              v60 = 2;
              goto LABEL_73;
            }

            v28 = v40;
            if (v39 == *(a1 + 14))
            {
              v44 = *(a1 + 1148);
              *(a1 + 1230) = *(a1 + 1132);
              *(a1 + 1246) = v44;
              *(a1 + 631) = *(a1 + 582);
              v45 = *(a1 + 1084);
              *v22 = *v18;
              *(a1 + 1182) = v45;
              v46 = *(a1 + 1116);
              *(a1 + 1198) = *(a1 + 1100);
              *(a1 + 1214) = v46;
              sub_10002BE14(a1, (a1 + 1166));
            }

            v32 += v42;
            sub_10002BB1C(a1, (a1 + 1068));
            sub_10002BAD4(a1, v37);
            v15 = sub_10002B264(a1, 0, v40, v4, (a1 + 1068));
            v31 = v72;
            if (v15)
            {
              goto LABEL_26;
            }
          }

          v15 = v36;
          if (v36 != 2)
          {
            goto LABEL_26;
          }

LABEL_67:
          if (v32 <= v4)
          {
            goto LABEL_23;
          }

          v19 = sub_10002B390(a1, v28, v4, v32, v71);
          if (!v19)
          {
            v57 = &v73[48 * ((*(a1 + 70) & 4) == 0)];
            v59 = *(v57 + 5);
            v58 = (v57 + 40);
            if (v59 >= v32)
            {
              goto LABEL_23;
            }

            v15 = 0;
            *v58 = v32;
            goto LABEL_27;
          }

          goto LABEL_25;
        }
      }

      goto LABEL_25;
    }

LABEL_33:
    v28 = a3;
    goto LABEL_34;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return 45;
}

uint64_t sub_10002AFFC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 92))
  {
    return 0;
  }

  v5 = *(a1 + 120);
  if (v5 > a2)
  {
    return 55;
  }

  v7 = *(a1 + 112);
  if (v5 == a2 && v7 < a3)
  {
    return 55;
  }

  if (v7)
  {
    v9 = (a1 + 480);
    if (sub_10002B264(a1, 0, v7, v5, a1 + 480) || (v10 = 4 * *(a1 + 577), v11 = *(v9 + v10), !*(v9 + v10)))
    {
      sub_100012178("%s:%d: %s dev %d Failed to find smallest extent in paddr tree: %d\n");
    }

    else
    {
      sub_10002BB1C(a1, a1 + 480);
      if (sub_10002B264(a1, 1u, *(a1 + 112), *(a1 + 120), a1 + 480) || !*(v9 + 2 * *(a1 + 577)))
      {
        sub_100012178("%s:%d: %s dev %d Failed to find smallest extent %d in length tree: %d\n");
      }

      else
      {
        sub_10002B21C(a1, *(a1 + 112), *(a1 + 120));
        v12 = *(a1 + 560);
        *(a1 + 642) = *(a1 + 544);
        *(a1 + 658) = v12;
        *(a1 + 674) = *(a1 + 576);
        v13 = *(a1 + 496);
        *(a1 + 578) = *v9;
        *(a1 + 594) = v13;
        v14 = *(a1 + 528);
        *(a1 + 610) = *(a1 + 512);
        *(a1 + 626) = v14;
        v15 = sub_10002D734(a1, a1 + 578, 1);
        if (!v15)
        {
          *(a1 + 112) = vandq_s8(*(*(a1 + 80) + 24 * *(a1 + 578 + 4 * *(a1 + 675))), vdupq_n_s64(0xFFFFFFFFFFFFFuLL));
          goto LABEL_23;
        }

        if (v15 == 2)
        {
          *(a1 + 112) = 0;
          *(a1 + 120) = 0;
          *(a1 + 128) = 0;
LABEL_23:
          sub_10002BB1C(a1, a1 + 480);
          sub_10002BAD4(a1, v11);
          return 0;
        }

        sub_100012178("%s:%d: %s dev %d Failed to find next smallest extent in length tree: %d\n");
      }
    }

    return 3;
  }

  return 0;
}

uint64_t sub_10002B21C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a1 + 48 * ((*(a1 + 280) & 4) == 0);
  if (*(v3 + 152) < a3)
  {
    *(v3 + 152) = a3;
  }

  v4.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v4.i64[1] = a3;
  *(v3 + 136) = vaddq_s64(*(v3 + 136), v4);
  return sub_10002C708(v3 + 136, a2, a3);
}

uint64_t sub_10002B264(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  *(a5 + 96) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 96) = a2;
  v10 = *(a1 + 2 * a2 + 104);
  *a5 = v10;
  if (v10)
  {
    *(a5 + 2) = *(*(a1 + 80) + 24 * v10 + 8 * (a2 != 0) + 7);
  }

  for (i = *(a5 + 4 * *(a5 + 97)); *(a5 + 4 * *(a5 + 97)); i = *(a5 + 4 * *(a5 + 97)))
  {
    v12 = (*(a1 + 80) + 24 * i);
    if (a2)
    {
      v13 = v12[1] & 0xFFFFFFFFFFFFFLL;
      v14 = v13 > a4;
      v15 = v13 < a4;
      if (v14)
      {
        v15 = -1;
      }

      if (!v15)
      {
        v16 = *v12 & 0xFFFFFFFFFFFFFLL;
        v14 = v16 < a3;
        v15 = v16 > a3;
        if (v14)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v17 = *v12 & 0xFFFFFFFFFFFFFLL;
      v14 = v17 <= a3;
      v15 = v17 < a3;
      if (!v14)
      {
        goto LABEL_17;
      }
    }

    if (!v15)
    {
      return 0;
    }

    if (v15 < 0)
    {
LABEL_17:
      v18 = a1;
      v19 = a5;
      v20 = -1;
      goto LABEL_18;
    }

    v18 = a1;
    v19 = a5;
    v20 = 1;
LABEL_18:
    result = sub_10002D640(v18, v19, v20);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_10002B390(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5)
{
  v30 = a5;
  v10 = a1 + 676;
  v11 = *(a1 + 112);
  v12 = sub_10002B264(a1, 1u, a2, a3, a1 + 676);
  if (v12)
  {
    return v12;
  }

  if (!*(v10 + 4 * *(a1 + 773)))
  {
    return 2;
  }

  if (*(v10 + 4 * *(a1 + 773)) != a5)
  {
    sub_100012178("%s:%d: %s dev %d length tree search for 0x%llx 0x%llx returned node %d instead of %d\n", "spaceman_fxc_update_length", 1400, (*(*a1 + 384) + 212), *(a1 + 88), a2, a3, *(v10 + 4 * *(a1 + 773)), a5);
    return 22;
  }

  v15 = (a1 + 774);
  v16 = *(a1 + 96);
  v17 = *(a1 + 80) + 24 * a5;
  *(v17 + 8) = *(v17 + 8) & 0xFFF0000000000000 | a4 & 0xFFFFFFFFFFFFFLL;
  *(a1 + 96) = a4 - a3 + v16;
  if (a4 <= a3)
  {
    if (v11 != a2)
    {
      v22 = *(v10 + 80);
      *(a1 + 838) = *(v10 + 64);
      *(a1 + 854) = v22;
      *(a1 + 870) = *(v10 + 96);
      v23 = *(v10 + 16);
      *v15 = *v10;
      *(a1 + 790) = v23;
      v24 = *(v10 + 48);
      *(a1 + 806) = *(v10 + 32);
      *(a1 + 822) = v24;
      v25 = sub_10002D734(a1, a1 + 774, -1);
      if (v25)
      {
        v13 = v25;
        if (v25 == 2)
        {
          sub_100012178("%s:%d: %s dev %d Failed to find length tree predecessor for node that wasn't the smallest\n", "spaceman_fxc_update_length", 1463, (*(*a1 + 384) + 212), *(a1 + 88));
        }

        return v13;
      }

      if ((*(*(a1 + 80) + 24 * *(v15 + 2 * *(a1 + 871)) + 8) & 0xFFFFFFFFFFFFFuLL) >= a4)
      {
        v28 = *(a1 + 120);
        if (v28 > a4 || v28 == a4 && *(a1 + 112) < a2)
        {
          *(a1 + 112) = a2;
          *(a1 + 120) = a4;
        }

        goto LABEL_37;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v18 = *(v10 + 80);
    *(a1 + 838) = *(v10 + 64);
    *(a1 + 854) = v18;
    *(a1 + 870) = *(v10 + 96);
    v19 = *(v10 + 16);
    *v15 = *v10;
    *(a1 + 790) = v19;
    v20 = *(v10 + 48);
    *(a1 + 806) = *(v10 + 32);
    *(a1 + 822) = v20;
    v21 = sub_10002D734(a1, a1 + 774, 1);
    if (v21)
    {
      v13 = v21;
      if (v21 != 2)
      {
        return v13;
      }

      if (v11 == a2)
      {
        *(a1 + 120) = a4;
      }

      if (*(a1 + 128) >= a4)
      {
        return 0;
      }

      v13 = 0;
LABEL_39:
      *(a1 + 128) = a4;
      return v13;
    }

    v26 = vandq_s8(*(*(a1 + 80) + 24 * *(v15 + 2 * *(a1 + 871))), vdupq_n_s64(0xFFFFFFFFFFFFFuLL));
    if (v26.i64[1] < a4 || (v26.i64[1] == a4 ? (v27 = v26.i64[0] <= a2) : (v27 = 1), !v27))
    {
      if (v11 == a2)
      {
        *(a1 + 112) = v26;
      }

LABEL_37:
      sub_10002BB1C(a1, v10);
      v13 = sub_10002B97C(a1, 1u, a2, a4, &v30);
      goto LABEL_38;
    }

    if (v11 != a2)
    {
LABEL_32:
      v13 = 0;
      goto LABEL_38;
    }
  }

  v13 = 0;
  *(a1 + 120) = a4;
LABEL_38:
  v29 = *(a1 + 128);
  if (v29 < a4)
  {
    goto LABEL_39;
  }

  if (v29 == a3)
  {
    sub_10002C388(a1);
  }

  return v13;
}

unint64_t sub_10002B694(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = result + 296;
  v6 = a2 - 1;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = (v5 + 16 * v4);
    if (*v9)
    {
      result = sub_100011DE8(v6, a3 + 2, *v9, v9[1] - *v9, 0);
      if (result)
      {
        *v9 = 0;
      }
    }

    v7 = 0;
    v4 = 1;
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t sub_10002B710(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  v6 = *(a5 + 96);
  if (a4)
  {
    LOWORD(v7) = *a4;
    if (*a4)
    {
      v8 = *(a1 + 80);
      v9 = v8 + 24 * *a4;
      *(v9 + 4 * v6 + 16) = 0;
      *(v9 + 8 * (v6 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
      goto LABEL_10;
    }
  }

  v7 = *(a1 + 92);
  if (v7 <= *(a1 + 88) >> 8)
  {
    if (!*(a1 + 92))
    {
      return 12;
    }

    v11 = (*(a1 + 80) + 24 * *(a1 + 92));
    *(a1 + 92) = *v11;
    ++*(a1 + 94);
    *(a1 + 96) += a3;
    v11[1] = 0;
    v11[2] = 0;
    *v11 = 0;
    if (a4)
    {
      *a4 = v7;
    }

    v8 = *(a1 + 80);
    v12 = (v8 + 24 * v7);
    *v12 = a2;
    v12[1] = a3;
LABEL_10:
    v10 = *(a5 + 97);
    v13 = (a5 + 4 * v10);
    *v13 = v7;
    v13[1] = 0;
    if (!v10)
    {
      *(a1 + 2 * v6 + 104) = v7;
      return v10;
    }

    v14 = v10;
    *(v8 + 24 * *(a5 + 4 * (v10 - 1)) + 4 * v6 + 2 * ((*(a5 + 4 * (v10 - 1) + 3) + 1 + (((*(a5 + 4 * (v10 - 1) + 3) + 1) & 0x8000u) >> 15)) >> 1) + 16) = v7;
    v15 = v10;
    if ((v10 & 0x80000000) == 0)
    {
      while (!*(a5 + 4 * v15 + 2))
      {
        v16 = v15--;
        if (v16 <= 0)
        {
          v15 = -1;
          break;
        }
      }
    }

    v17 = (v15 + 1);
    if (v17 < v14)
    {
      LOBYTE(v18) = v15 + 1;
      do
      {
        v19 = (a5 + 4 * v18);
        v20 = *(v19 + 3);
        *(v8 + 8 * (v6 != 0) + 24 * *v19 + 7) = v20;
        *(v19 + 2) = v20;
        v18 = (v18 + 1);
      }

      while (v18 < v14);
    }

    if ((v15 & 0x80) == 0)
    {
      v21 = (a5 + 4 * v15);
      v22 = *(v21 + 3);
      if (!(*(v21 + 2) + v22))
      {
        v10 = 0;
        *(v8 + 24 * *v21 + 8 * (v6 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
        return v10;
      }

      if (*(v21 + 2) == *(v21 + 3))
      {
        if (v15)
        {
          v23 = (v8 + 24 * *(a5 + 4 * (v15 - 1)) + 4 * v6 + 2 * ((*(a5 + 4 * (v15 - 1) + 3) + 1 + (((*(a5 + 4 * (v15 - 1) + 3) + 1) & 0x8000u) >> 15)) >> 1) + 16);
        }

        else
        {
          v23 = (a1 + 2 * v6 + 104);
        }

        v24 = -v22;
        v25 = (a5 + 4 * v17);
        v26 = *(v25 + 2);
        if (v26 == *(v21 + 3))
        {
          sub_10002D810(a1, v6, v24, *v21, v23);
        }

        else if (v26 == v24)
        {
          sub_10002D8F0(a1, v6, v22, *v21, *v25, v23);
        }
      }
    }

    return 0;
  }

  return 22;
}

uint64_t sub_10002B97C(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, _WORD *a5)
{
  if ((a4 | a3) >> 52)
  {
    return 84;
  }

  v10 = a1 + 872;
  if (!a5 || !*a5)
  {
    sub_10002AFFC(a1, a4, a3);
  }

  result = sub_10002B264(a1, a2, a3, a4, v10);
  if (!result)
  {
    if (*(v10 + 4 * *(a1 + 969)))
    {
      return 17;
    }

    else
    {

      return sub_10002B710(a1, a3, a4, a5, v10);
    }
  }

  return result;
}

uint64_t sub_10002BA58(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 | a2) >> 52)
  {
    return 84;
  }

  v4 = a1 + 970;
  result = sub_10002B264(a1, 0, a2, a3, a1 + 970);
  if (!result)
  {
    if (*(v4 + 4 * *(a1 + 1067)))
    {
      sub_10002BB1C(a1, v4);
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_10002BAD4(uint64_t result, unsigned int a2)
{
  if (a2 <= *(result + 88) >> 8)
  {
    v2 = (*(result + 80) + 24 * a2);
    v3 = v2[1] & 0xFFFFFFFFFFFFFLL;
    --*(result + 94);
    *(result + 96) -= v3;
    *v2 = *(result + 92);
    *(result + 92) = a2;
  }

  return result;
}

uint64_t sub_10002BB1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  v4 = *(a2 + 97);
  v5 = (a2 + 4 * *(a2 + 97));
  v6 = *(a1 + 80);
  result = v6 + 24 * *v5;
  v8 = result + 4 * v3;
  v9 = *(v8 + 18);
  v10 = *(a2 + 97) - 1;
  if (v4 < 1)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v11 = (a2 + 4 * v10);
    v12 = *v11;
    v13 = ((*(v11 + 3) + 1 + (((*(v11 + 3) + 1) & 0x8000u) >> 15)) >> 1);
  }

  v14 = 8 * (*(a2 + 96) != 0);
  v15 = *(v8 + 16);
  v16 = a1 + 2 * v3;
  if (v9)
  {
    v17 = *(result + 8 * (*(a2 + 96) != 0));
    result = 24;
    v18 = v6 + 24 * v9 + 4 * v3;
    v21 = *(v18 + 16);
    v20 = (v18 + 16);
    v19 = v21;
    if (v21)
    {
      *(a2 + 4 * *(a2 + 97) + 3) = 1;
      v22 = v4 + 1;
      *(a2 + 97) = v4 + 1;
      v23 = a2 + 4 * (v4 + 1);
      *v23 = v9;
      *(v23 + 3) = 0;
      v24 = v9;
      do
      {
        v10 = v22;
        v25 = v24;
        v24 = v19;
        *(a2 + 4 * v22++ + 3) = -1;
        v26 = a2 + 4 * v22;
        *v26 = v24;
        *(v26 + 3) = 0;
        v27 = v6 + 24 * v24 + 4 * v3;
        v29 = *(v27 + 16);
        v28 = (v27 + 16);
        v19 = v29;
      }

      while (v29);
      result = v24;
      v30 = v6 + 24 * v24;
      v31 = v30 + 4 * v3;
      *(v6 + 24 * v25 + 4 * v3 + 16) = *(v31 + 18);
      *(v31 + 18) = v9;
      *v28 = v15;
      *(v30 + v14 + 7) = HIBYTE(v17);
      v32 = v6 + 24 * v12 + 4 * v3 + 2 * v13 + 16;
      if (v4)
      {
        v33 = v32;
      }

      else
      {
        v33 = (v16 + 104);
      }

      *v33 = result;
      *(v5 + 3) = 1;
      *v5 = result;
      *(a2 + 97) = v10;
      if ((v10 & 0x80) != 0)
      {
        return result;
      }
    }

    else
    {
      *v20 = v15;
      v35 = (v6 + 24 * v12 + 4 * v3 + 2 * v13 + 16);
      if (!v4)
      {
        v35 = (v16 + 104);
      }

      *v35 = v9;
      *(v6 + 24 * v9 + v14 + 7) = HIBYTE(v17);
      *(v5 + 3) = 1;
      *v5 = v9;
      v10 = v4;
      if ((v4 & 0x80) != 0)
      {
        return result;
      }
    }
  }

  else
  {
    if (*(a2 + 97))
    {
      v34 = (v6 + 24 * v12 + 4 * v3 + 2 * v13 + 16);
    }

    else
    {
      v34 = (v16 + 104);
    }

    *v34 = v15;
    *(a2 + 97) = v10;
    if ((v10 & 0x80) != 0)
    {
      return result;
    }
  }

  v36 = (v16 + 104);
  v37 = v10 + 1;
  v38 = (a2 + 4 * v10);
  do
  {
    v39 = *v38;
    v40 = *(a1 + 80);
    v41 = v40 + 24 * *v38;
    v42 = *(v41 + v14);
    v43 = *(v38 + 3);
    v44 = (HIBYTE(v42) - *(v38 + 3));
    if (v44 < 0)
    {
      v44 = -v44;
    }

    if (v44 > 1)
    {
      v45 = v36;
      if (v37 != 1)
      {
        v45 = (v40 + 24 * *(v38 - 2) + 4 * v3 + 2 * ((*(v38 - 1) + 1 + (((*(v38 - 1) + 1) & 0x8000u) >> 15)) >> 1) + 16);
      }

      v46 = v40 + 24 * *v38 + 4 * v3 + 2 * ((-v43 + 1 + (((-v43 + 1) & 0x8000u) >> 15)) >> 1);
      v47 = HIBYTE(*(v40 + 24 * *(v46 + 16) + v14));
      if (v47 == v43)
      {
        result = sub_10002D8F0(a1, v3, -v43, v39, *(v46 + 16), v45);
      }

      else
      {
        result = sub_10002D810(a1, v3, v43, v39, v45);
        if (!v47)
        {
          return result;
        }
      }
    }

    else
    {
      *(v41 + v14) = v42 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v42) - v43) << 56);
      if (!HIBYTE(v42))
      {
        return result;
      }
    }

    v38 -= 2;
  }

  while (v37-- > 1);
  return result;
}

const char *sub_10002BE14(uint64_t a1, uint64_t a2)
{
  result = sub_10002D734(a1, a2, 1);
  if (result == 2)
  {
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  else if (result)
  {
    return sub_100012178("%s:%d: %s dev %d Failed to find successor node from length tree while updating smallest: %d\n", "spaceman_fxc_update_smallest_with_successor", 1520, (*(*a1 + 384) + 212), *(a1 + 88), result);
  }

  else
  {
    *(a1 + 112) = vandq_s8(*(*(a1 + 80) + 24 * *(a2 + 4 * *(a2 + 97))), vdupq_n_s64(0xFFFFFFFFFFFFFuLL));
  }

  return result;
}

uint64_t sub_10002BEC0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return 22;
  }

  if ((a3 | a2) >> 52)
  {
    return 84;
  }

  if (!a3)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  if ((*(a1 + 280) & 2) == 0)
  {
    v6 = (a1 + 1068);
    v35 = -21846;
    v7 = sub_10002B264(a1, 0, a2, a3, a1 + 1068);
    if (v7)
    {
LABEL_8:
      v8 = v7;
LABEL_9:
      sub_100012178("%s:%d: %s dev %d Error %d, reinitializing\n", "spaceman_free_extent_cache_remove", 2076, (*(*a1 + 384) + 212), *(a1 + 88), v8);
      sub_10002A1D4(a1);
      goto LABEL_10;
    }

    v10 = (a1 + 1166);
    v11 = a3 + a2;
    v12 = 4 * *(a1 + 1165);
    v13 = *(v6 + v12);
    if (*(v6 + v12))
    {
      goto LABEL_20;
    }

    v20 = *(a1 + 1148);
    *(a1 + 1230) = *(a1 + 1132);
    *(a1 + 1246) = v20;
    *(a1 + 1262) = *(a1 + 1164);
    v21 = *(a1 + 1084);
    *v10 = *v6;
    *(a1 + 1182) = v21;
    v22 = *(a1 + 1116);
    *(a1 + 1198) = *(a1 + 1100);
    *(a1 + 1214) = v22;
    v23 = sub_10002D734(a1, a1 + 1166, -1);
    if (v23 == 2)
    {
      goto LABEL_43;
    }

    v8 = v23;
    if (v23)
    {
      goto LABEL_9;
    }

    v24 = (*(a1 + 80) + 24 * *(v10 + 2 * *(a1 + 1263)));
    v25 = v24[1] & 0xFFFFFFFFFFFFFLL;
    v26 = v25 + (*v24 & 0xFFFFFFFFFFFFFLL);
    if (v26 <= a2)
    {
      goto LABEL_43;
    }

    v7 = sub_10002B390(a1, *v24 & 0xFFFFFFFFFFFFFLL, v25, a2 - (*v24 & 0xFFFFFFFFFFFFFLL), *(v10 + 2 * *(a1 + 1263)));
    if (v7)
    {
      goto LABEL_8;
    }

    v27 = v26 - v11;
    if (v26 <= v11)
    {
LABEL_43:
      v32 = sub_10002D734(a1, a1 + 1068, 1);
      if (v32 != 2)
      {
        v8 = v32;
        if (v32)
        {
          goto LABEL_9;
        }

        v13 = *(v6 + 2 * *(a1 + 1165));
LABEL_20:
        v14 = (*(a1 + 80) + 24 * v13);
        v15 = *v14;
        v16 = *v14 & 0xFFFFFFFFFFFFFLL;
        v17 = v14[1] & 0xFFFFFFFFFFFFFLL;
        v18 = v17 + v16;
        if (v11 >= v17 + v16)
        {
          while (1)
          {
            sub_10002BB1C(a1, a1 + 1068);
            v28 = sub_10002B264(a1, 1u, v16, v17, a1 + 1068);
            if (v28)
            {
              v33 = v28;
              sub_100012178("%s:%d: %s dev %d Failed to delete covered node from length tree: %d\n", "spaceman_free_extent_cache_remove", 2016, (*(*a1 + 384) + 212), *(a1 + 88), v28);
              v8 = v33;
              goto LABEL_9;
            }

            if (v16 == *(a1 + 112))
            {
              v29 = *(a1 + 1148);
              *(a1 + 1230) = *(a1 + 1132);
              *(a1 + 1246) = v29;
              *(a1 + 1262) = *(a1 + 1164);
              v30 = *(a1 + 1084);
              *v10 = *v6;
              *(a1 + 1182) = v30;
              v31 = *(a1 + 1116);
              *(a1 + 1198) = *(a1 + 1100);
              *(a1 + 1214) = v31;
              sub_10002BE14(a1, a1 + 1166);
            }

            sub_10002BB1C(a1, a1 + 1068);
            sub_10002BAD4(a1, v13);
            if (v17 == *(a1 + 128))
            {
              sub_10002C388(a1);
            }

            v8 = sub_10002B264(a1, 0, v16, v17, a1 + 1068);
            if (!v8)
            {
              v8 = sub_10002D734(a1, a1 + 1068, 1);
            }

            if (v8)
            {
              break;
            }

            v13 = *(v6 + 2 * *(a1 + 1165));
            v14 = (*(a1 + 80) + 24 * *(v6 + 2 * *(a1 + 1165)));
            v15 = *v14;
            v16 = *v14 & 0xFFFFFFFFFFFFFLL;
            v17 = v14[1] & 0xFFFFFFFFFFFFFLL;
            v18 = v17 + v16;
            if (v11 < v17 + v16)
            {
              goto LABEL_21;
            }
          }

          if (v8 == 2)
          {
            goto LABEL_47;
          }

          sub_100012178("%s:%d: %s dev %d Failed to get next extent: %d\n", "spaceman_free_extent_cache_remove", 2047, (*(*a1 + 384) + 212), *(a1 + 88), v8);
          goto LABEL_9;
        }

LABEL_21:
        if (v11 > v16)
        {
          if (v16 == *(a1 + 112))
          {
            *(a1 + 112) = v11;
          }

          *v14 = v15 & 0xFFF0000000000000 | v11 & 0xFFFFFFFFFFFFFLL;
          v19 = sub_10002B390(a1, v11, v17, v18 - v11, v13);
          v8 = v19;
          if (!v19)
          {
            goto LABEL_10;
          }

          sub_100012178("%s:%d: %s dev %d Failed to update partially-covered node in length tree: %d\n", "spaceman_free_extent_cache_remove", 2070, (*(*a1 + 384) + 212), *(a1 + 88), v19);
          goto LABEL_9;
        }
      }
    }

    else
    {
      v35 = 0;
      if (sub_10002B97C(a1, 0, v11, v26 - v11, &v35))
      {
LABEL_32:
        sub_10002B21C(a1, v11, v26 - v11);
        goto LABEL_47;
      }

      if (sub_10002B97C(a1, 1u, v11, v26 - v11, &v35))
      {
        if (!sub_10002BA58(a1, v11, v26 - v11))
        {
          sub_10002BAD4(a1, v35);
        }

        goto LABEL_32;
      }

      v34 = *(a1 + 120);
      if (v27 < v34 || v27 == v34 && v11 > *(a1 + 112))
      {
        *(a1 + 112) = v11;
        *(a1 + 120) = v27;
      }

      if (v27 > *(a1 + 128))
      {
        v8 = 0;
        *(a1 + 128) = v27;
LABEL_10:
        if (*a1)
        {
          pthread_mutex_unlock((a1 + 16));
        }

        return v8;
      }
    }

LABEL_47:
    v8 = 0;
    goto LABEL_10;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return 45;
}

uint64_t sub_10002C388(uint64_t a1)
{
  v2 = a1 + 676;
  result = sub_10002C3F0(a1, a1 + 676, 1u);
  if (result == 2)
  {
    v4 = 0;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v4 = *(*(a1 + 80) + 24 * *(v2 + 4 * *(a1 + 773)) + 8) & 0xFFFFFFFFFFFFFLL;
  }

  *(a1 + 128) = v4;
  return result;
}

uint64_t sub_10002C3F0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 96) = a3;
  v5 = *(a1 + 2 * a3 + 104);
  *a2 = v5;
  if (v5)
  {
    *(a2 + 2) = *(*(a1 + 80) + 24 * v5 + 8 * (a3 != 0) + 7);
  }

  while (1)
  {
    v6 = *(a2 + 97);
    if (!*(a2 + 4 * v6))
    {
      break;
    }

    result = sub_10002D640(a1, a2, 1);
    if (result)
    {
      return result;
    }
  }

  v8 = v6 - 1;
  *(a2 + 97) = v8;
  return (v8 >> 6) & 2;
}

BOOL sub_10002C494(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  v4 = *(a1 + 280);
  v5 = (v4 & 6) == 0;
  if ((v4 & 6) == 0)
  {
    *(a1 + 280) = v4 | 4;
    v6 = *(a1 + 288);
    if (v6)
    {
      if (a2)
      {
LABEL_9:
        *a2 = v6;
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 1;
      *(a1 + 288) = 1;
      if (a2)
      {
        goto LABEL_9;
      }
    }

    *(a1 + 280) = v4 | 0xC;
LABEL_12:
    if (!*a1)
    {
      return 1;
    }

    goto LABEL_13;
  }

  if (*a1)
  {
LABEL_13:
    pthread_mutex_unlock((a1 + 16));
    return v5;
  }

  return 0;
}

uint64_t sub_10002C540(uint64_t result, unint64_t a2, char a3)
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 8);
  if (*result)
  {
    result = pthread_mutex_lock((result + 16));
  }

  v7 = *(v5 + 280);
  if ((v7 & 6) != 0)
  {
    if (a3)
    {
      *(v5 + 184) = *(v5 + 136);
      *(v5 + 200) = *(v5 + 152);
      *(v5 + 216) = *(v5 + 168);
      *(v5 + 280) = v7 & 0xFFFFFFFFFFFFFFF3;
      *(v5 + 136) = 0u;
      *(v5 + 152) = 0u;
      *(v5 + 168) = 0u;
      goto LABEL_19;
    }

    if (*(*(v6 + 376) + 48 * *(v5 + 88) + 48) > a2 && ((v8 = *(v5 + 288), (v7 & 8) != 0) || v8 <= a2))
    {
      v9 = 0;
      if (v8 < a2)
      {
        *(v5 + 288) = a2;
      }
    }

    else
    {
      v9 = 1;
    }

    v10 = v7 & 0xFFFFFFFFFFFFFFF3;
    v12 = (v5 + 136);
    v11 = *(v5 + 136);
    *(v5 + 280) = v10;
    if (v11)
    {
      v13 = *(v5 + 184) + v11;
      v14 = *(v5 + 200);
      v15 = *(v5 + 152);
      v16 = *(v5 + 192) + *(v5 + 144);
      *(v5 + 184) = v13;
      *(v5 + 192) = v16;
      if (v14 < v15)
      {
        *(v5 + 200) = v15;
      }

      v17 = *(v5 + 176);
      if (*(v5 + 224) < v17)
      {
        *(v5 + 224) = v17;
      }

      result = sub_10002C708(v5 + 184, *(v5 + 160), *(v5 + 168));
      *(v5 + 152) = 0u;
      *(v5 + 168) = 0u;
      *v12 = 0u;
      if ((v9 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    *(v5 + 152) = 0u;
    *(v5 + 168) = 0u;
    *v12 = 0u;
    if (v9)
    {
LABEL_19:
      v18 = *(v5 + 336) + 1;
      *(v5 + 328) = 0;
      *(v5 + 336) = v18;
      *(v5 + 232) = *(v5 + 184);
      *(v5 + 248) = *(v5 + 200);
      *(v5 + 264) = *(v5 + 216);
      *(v5 + 184) = 0u;
      *(v5 + 200) = 0u;
      *(v5 + 216) = 0u;
      *(v5 + 288) = 0;
      v19 = *(v5 + 280);
      if ((v19 & 1) == 0)
      {
        *(v5 + 280) = v19 | 1;
      }
    }
  }

LABEL_21:
  if (*v5)
  {

    return pthread_mutex_unlock((v5 + 16));
  }

  return result;
}

uint64_t sub_10002C708(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 24);
  if (v3)
  {
    if (v3 <= a2)
    {
      v4 = *(result + 32);
    }

    else
    {
      v4 = v3 - a2 + *(result + 32);
      *(result + 24) = a2;
      *(result + 32) = v4;
      v3 = a2;
    }

    v5 = v4 + v3;
    if (a3 + a2 > v5)
    {
      *(result + 32) = v4 + a3 + a2 - v5;
    }
  }

  else
  {
    *(result + 24) = a2;
    *(result + 32) = a3;
  }

  return result;
}

unint64_t sub_10002C758(__int16 a1, unint64_t a2, unint64_t a3)
{
  if ((a1 & 0x1000) == 0)
  {
    return a2;
  }

  if (a3 <= 1)
  {
    return a3 + 1;
  }

  if (a3 + (a3 >> 1) >= a2)
  {
    return a2;
  }

  else
  {
    return a3 + (a3 >> 1);
  }
}

uint64_t sub_10002C780(void *a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  v4 = *a3;
  v5 = *a4;
  *a3 = 0;
  *a4 = 0;
  if (!a1)
  {
    return 6;
  }

  ++a1[43];
  if (!v5)
  {
    ++a1[44];
    return 22;
  }

  v10 = *(*a1 + 376);
  v11 = *(v10 + 1248);
  if (v11 && !*(a1 + 88))
  {
    v13 = *(v10 + 1240);
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v75 = 0;
  v76[0] = 0;
  v71 = 0;
  v72 = 0;
  pthread_mutex_lock((a1 + 2));
  if ((a1[35] & 2) != 0)
  {
    if (*a1)
    {
      pthread_mutex_unlock((a1 + 2));
    }

    return 6;
  }

  v73 = 0xAAAAAAAAAAAAAAAALL;
  v74 = 0xAAAAAAAAAAAAAAAALL;
  v15 = (a1 + 1068);
  v69 = 0xAAAAAAAAAAAAAAAALL;
  v70 = 0xAAAAAAAAAAAAAAAALL;
  v16 = sub_10002B264(a1, 1u, v4, v5, a1 + 1068);
  if (!v16)
  {
    if (*(v15 + 2 * *(a1 + 1165)))
    {
      v17 = (a1[10] + 24 * *(v15 + 2 * *(a1 + 1165)));
      v18 = *v17 & 0xFFFFFFFFFFFFFLL;
      v74 = v18;
      v19 = v17[1];
      v20 = v19 & 0xFFFFFFFFFFFFFLL;
      v70 = v19 & 0xFFFFFFFFFFFFFLL;
      if (v12)
      {
        sub_1000312B4(v18, v19 & 0xFFFFFFFFFFFFFLL, v13, v11, a2, v4, &v74, &v70);
        v20 = v70;
        v18 = v74;
      }

      if (v20)
      {
        v21 = sub_100031394(*a1, a1[1], *(a1 + 88), v18, v20, a2, v4, &v73, &v69);
        v18 = v74;
        v22 = v70;
        if (v21)
        {
          v75 = v74;
          v71 = v70;
          v18 = v73;
          v74 = v73;
          v22 = v69;
          v70 = v69;
        }
      }

      else
      {
        v22 = 0;
      }

      v76[0] = v18;
      v72 = v22;
      if (v22 == v5)
      {
        goto LABEL_21;
      }
    }

    v27 = v12;
    v28 = v13;
    v29 = (a1 + 1166);
    v30 = *(a1 + 1148);
    *(a1 + 1230) = *(a1 + 1132);
    *(a1 + 1246) = v30;
    *(a1 + 631) = *(a1 + 582);
    v31 = *(a1 + 1084);
    *(a1 + 1166) = *v15;
    *(a1 + 1182) = v31;
    v32 = *(a1 + 1116);
    *(a1 + 1198) = *(a1 + 1100);
    *(a1 + 1214) = v32;
    v68 = v27;
    v16 = sub_10002CE98(a1, a1 + 1166, v27, v28, v11, a2, v4, v5, 0xFFFFFFFFFFFFFFFFLL, v76, &v72, &v75, &v71, 0x301u);
    if (!v16)
    {
      v33 = *(a1 + 1148);
      *(a1 + 1230) = *(a1 + 1132);
      *(a1 + 1246) = v33;
      *(a1 + 631) = *(a1 + 582);
      v34 = *(a1 + 1084);
      *v29 = *v15;
      *(a1 + 1182) = v34;
      v35 = *(a1 + 1116);
      *(a1 + 1198) = *(a1 + 1100);
      *(a1 + 1214) = v35;
      v16 = sub_10002CE98(a1, a1 + 1166, v68, v28, v11, a2, v4, v5, 0xFFFFFFFFFFFFFFFFLL, v76, &v72, &v75, &v71, 0x502u);
      if (!v16)
      {
        v67 = v28;
        v39 = v71;
        if (v72 >= v5)
        {
          v41 = v71;
          v39 = v72;
          v40 = v68;
        }

        else
        {
          v40 = v68;
          if (v71 <= v72)
          {
            v41 = v71;
            v39 = v72;
          }

          else
          {
            v41 = 0;
            v42 = v75;
            v75 = 0;
            v76[0] = v42;
            v71 = 0;
            v72 = v39;
            a2 = a2 & 0xFFFFDFFF;
          }
        }

        if (v39 < v5 && (a2 & 0x1000) == 0)
        {
          goto LABEL_21;
        }

        if (v4 <= v76[0])
        {
          v45 = v76[0] - v4;
        }

        else
        {
          if (v4 - v76[0] < v39)
          {
            goto LABEL_21;
          }

          v45 = v4 - (v39 + v76[0]);
        }

        if (!v45)
        {
          goto LABEL_21;
        }

        v61 = v41;
        v64 = v76[0];
        v65 = v39;
        v66 = v45;
        v16 = sub_10002B264(a1, 0, v4, v5, a1 + 1068);
        if (!v16)
        {
          if (*(v15 + 2 * *(a1 + 1165)))
          {
            v46 = (a1[10] + 24 * *(v15 + 2 * *(a1 + 1165)));
            v47 = *v46 & 0xFFFFFFFFFFFFFLL;
            v74 = v47;
            v48 = v46[1];
            v49 = v48 & 0xFFFFFFFFFFFFFLL;
            v70 = v48 & 0xFFFFFFFFFFFFFLL;
            if (v40)
            {
              sub_1000312B4(v47, v48 & 0xFFFFFFFFFFFFFLL, v67, v11, a2, v4, &v74, &v70);
              v49 = v70;
              v47 = v74;
            }

            if (v49)
            {
              v50 = sub_100031394(*a1, a1[1], *(a1 + 88), v47, v49, a2, v4, &v73, &v69);
              v47 = v74;
              v51 = v70;
              if (v50)
              {
                v52 = v61;
                v59 = v74;
                v62 = v70;
                if (sub_10002D178(v4, v5, v75, v52, v74, v70, a2))
                {
                  v75 = v59;
                  v71 = v62;
                }

                v47 = v73;
                v74 = v73;
                v51 = v69;
                v70 = v69;
              }
            }

            else
            {
              v51 = 0;
            }

            v60 = v47;
            v63 = v51;
            if (sub_10002D178(v4, v5, v64, v65, v47, v51, a2))
            {
              v76[0] = v60;
              v72 = v63;
              goto LABEL_21;
            }
          }

          v53 = *(a1 + 1148);
          *(a1 + 1230) = *(a1 + 1132);
          *(a1 + 1246) = v53;
          *(a1 + 631) = *(a1 + 582);
          v54 = *(a1 + 1084);
          *v29 = *v15;
          *(a1 + 1182) = v54;
          v55 = *(a1 + 1116);
          *(a1 + 1198) = *(a1 + 1100);
          *(a1 + 1214) = v55;
          v16 = sub_10002CE98(a1, a1 + 1166, v40, v67, v11, a2, v4, v5, v66, v76, &v72, &v75, &v71, 0x1802u);
          if (!v16)
          {
            v56 = *(a1 + 1148);
            *(a1 + 1230) = *(a1 + 1132);
            *(a1 + 1246) = v56;
            *(a1 + 631) = *(a1 + 582);
            v57 = *(a1 + 1084);
            *v29 = *v15;
            *(a1 + 1182) = v57;
            v58 = *(a1 + 1116);
            *(a1 + 1198) = *(a1 + 1100);
            *(a1 + 1214) = v58;
            v16 = sub_10002CE98(a1, a1 + 1166, v68, v67, v11, a2, v4, v5, v66, v76, &v72, &v75, &v71, 0x1801u);
            if (!v16)
            {
LABEL_21:
              if (*a1)
              {
                pthread_mutex_unlock((a1 + 2));
              }

              v23 = v72;
              if (!v72 && v71)
              {
                v76[0] = v75;
                v23 = v71;
              }

              v24 = v23 - v5;
              if (v23 > v5)
              {
                v25.i64[0] = vdupq_n_s64(1uLL).u64[0];
                v25.i64[1] = v23 - v5;
                *(a1 + 45) = vaddq_s64(*(a1 + 45), v25);
                if (v24 == 1)
                {
                  result = 0;
                  v26 = 50;
                }

                else if (v24 >= 8)
                {
                  result = 0;
                  v43 = v24 >= 0x10;
                  v26 = 47;
                  if (!v43)
                  {
                    v26 = 48;
                  }
                }

                else
                {
                  result = 0;
                  v26 = 49;
                }

                goto LABEL_56;
              }

              if (v23 >= v5)
              {
                result = 0;
                v26 = 51;
              }

              else
              {
                if ((a2 & 0x1000) != 0)
                {
                  v38 = 0;
                }

                else
                {
                  v38 = 28;
                }

                if (sub_10002D324(a1, a2, v5, v23))
                {
                  result = 3;
                }

                else
                {
                  result = v38;
                }

                if ((a2 & 0x1000) == 0)
                {
                  v5 = 0;
                  v76[0] = 0;
LABEL_79:
                  v44 = 53;
                  goto LABEL_57;
                }

                if (!v23)
                {
                  v5 = 0;
                  if (result)
                  {
                    result = result;
                  }

                  else
                  {
                    result = 28;
                  }

                  goto LABEL_79;
                }

                v26 = 52;
              }

              v5 = v23;
LABEL_56:
              ++a1[v26];
              v44 = 44;
LABEL_57:
              ++a1[v44];
              *a3 = v76[0];
              *a4 = v5;
              return result;
            }
          }
        }
      }
    }
  }

  v36 = *(a1 + 88);
  v37 = "main";
  if (v36 == 1)
  {
    v37 = "tier2";
  }

  sub_100012178("%s:%d: %s dev %d Error searching %s free extent cache: %d; Reinitializing.\n", "spaceman_free_extent_cache_search", 3031, (*(*a1 + 384) + 212), v36, v37, v16);
  sub_10002A1D4(a1);
  if (*a1)
  {
    pthread_mutex_unlock((a1 + 2));
  }

  return 3;
}

uint64_t sub_10002CE98(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, uint64_t *a10, unint64_t *a11, uint64_t *a12, unint64_t *a13, unsigned int a14)
{
  if ((a14 & 3) == 0 || (a14 & 0x1F00) == 0)
  {
    return 22;
  }

  v17 = a6;
  v19 = a2;
  v20 = a1;
  memset(v44, 170, 32);
  if (a14)
  {
    v21 = 1;
  }

  else
  {
    v21 = -1;
  }

  v15 = sub_10002D734(a1, a2, v21);
  if ((v15 & 0xFFFFFFFD) == 0)
  {
    v36 = a5;
    v23 = 0;
    v39 = v21;
    v41 = v17;
    v37 = v20;
    v38 = v19;
    do
    {
      if (v15 == 2)
      {
        return 0;
      }

      v24 = (*(v20 + 80) + 24 * *(v19 + 4 * *(v19 + 97)));
      v25 = *v24 & 0xFFFFFFFFFFFFFLL;
      v44[3] = v25;
      v26 = v24[1] & 0xFFFFFFFFFFFFFLL;
      v44[1] = v26;
      if (a3)
      {
        sub_1000312B4(v25, v26, a4, v36, v17, a7, &v44[3], &v44[1]);
        v27 = v44[1];
        if (!v44[1])
        {
          goto LABEL_42;
        }
      }

      else
      {
        v27 = v26;
        if (!v26)
        {
LABEL_42:
          if ((a14 & 0x1000) != 0 && v23 > 0x7E)
          {
            return v15;
          }

          goto LABEL_47;
        }
      }

      v28 = sub_100031394(*v20, *(v20 + 8), *(v20 + 88), v44[3], v27, v17, a7, &v44[2], v44);
      v29 = v44[3];
      v30 = v44[1];
      if (v28)
      {
        if (sub_10002D178(a7, a8, *a12, *a13, v44[3], v44[1], v17))
        {
          *a12 = v29;
          *a13 = v30;
        }

        v29 = v44[2];
        v44[3] = v44[2];
        v30 = v44[0];
        v44[1] = v44[0];
      }

      v31 = *a11;
      if (sub_10002D178(a7, a8, *a10, *a11, v29, v30, v41))
      {
        *a10 = v29;
        *a11 = v30;
        v31 = v30;
        if ((a14 & 0x800) != 0)
        {
          return v15;
        }
      }

      v32 = v26 == a8 && v30 == v26;
      v33 = v32;
      if ((*&v33 & ((a14 & 0x100) >> 8) & 1) != 0 || ((v31 > a8) & (a14 >> 9)) != 0)
      {
        return v15;
      }

      if ((a14 & 0x400) != 0 && v26 < a8 && v26 <= v31)
      {
        return v15;
      }

      v17 = v41;
      v20 = v37;
      v19 = v38;
      if ((a14 & 0x1000) != 0)
      {
        if (v23 > 0x7E)
        {
          return v15;
        }

        v35 = v29 - a7;
        if (v29 < a7)
        {
          if (a7 - v29 >= v30)
          {
            v35 = a7 - (v29 + v30);
          }

          else
          {
            v35 = 0;
          }
        }

        if (v35 >= a9)
        {
          return v15;
        }
      }

LABEL_47:
      v15 = sub_10002D734(v20, v19, v39);
      ++v23;
    }

    while ((v15 & 0xFFFFFFFD) == 0);
  }

  return v15;
}

BOOL sub_10002D178(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, __int16 a7)
{
  if (!a6)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  if (a4 < a2)
  {
    if (a6 <= a4)
    {
      if (a6 != a4 || (a7 & 0x4000) == 0)
      {
        return 0;
      }

      if (a1 <= a3)
      {
        v9 = a3 - a1;
      }

      else
      {
        v9 = a1 - a3 >= a6 ? a1 - (a3 + a6) : 0;
      }

      if (a1 <= a5)
      {
        v12 = a5 - a1;
      }

      else
      {
        v12 = a1 - a5 >= a6 ? a1 - (a5 + a6) : 0;
      }

      if (v12 >= v9)
      {
        return 0;
      }
    }

    return 1;
  }

  if (a4 != a2)
  {
    v10 = a4 - a2;
    if (a4 > a2)
    {
      v11 = a6 - a2;
      if (a6 >= a2)
      {
        if (a6 == a2 || v10 <= 0xF && v11 > v10)
        {
          return 1;
        }

        if ((a7 & 0x4000) != 0)
        {
          if (a1 <= a3)
          {
            v14 = a3 - a1;
          }

          else if (a1 - a3 >= a4)
          {
            v14 = a1 - (a3 + a4);
          }

          else
          {
            v14 = 0;
          }

          if (a1 <= a5)
          {
            v15 = a5 - a1;
          }

          else if (a1 - a5 >= a6)
          {
            v15 = a1 - (a5 + a6);
          }

          else
          {
            v15 = 0;
          }

          return v11 >= 0x10 && v15 < v14;
        }

        if (v11 < v10 && v11 > 0xF)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (a6 < a4 || a6 != a4 && (a7 & 0x4000) == 0)
  {
    return 0;
  }

  if (a1 <= a3)
  {
    v8 = a3 - a1;
  }

  else
  {
    v8 = a1 - a3 >= a4 ? a1 - (a3 + a4) : 0;
  }

  if (a1 <= a5)
  {
    v13 = a5 - a1;
  }

  else
  {
    v13 = a1 - a5 >= a6 ? a1 - (a5 + a6) : 0;
  }

  if (v13 >= v8)
  {
    return 0;
  }

  result = 1;
  if (a6 != a4 && a6 - a4 <= 0xF)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10002D324(uint64_t a1, __int16 a2, unint64_t a3, unint64_t a4)
{
  v8 = a3;
  if ((a2 & 0x1000) != 0)
  {
    if (a4 > 1)
    {
      v8 = a4 + (a4 >> 1);
      if (v8 >= a3)
      {
        v8 = a3;
      }
    }

    else
    {
      v8 = a4 + 1;
    }
  }

  v42 = v8;
  v9 = *(a1 + 200);
  v10 = *(a1 + 208);
  v11 = *(a1 + 160);
  if (*(a1 + 152) > v9)
  {
    v9 = *(a1 + 152);
  }

  v12 = *(a1 + 168);
  if (v10)
  {
    v14 = v10 - v11;
    v13 = v10 <= v11;
    v15 = v12 + v11;
    if (v10 < v11)
    {
      v11 = *(a1 + 208);
    }

    if (v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    v17 = *(a1 + 216) + v16;
    if (v15 > v17 + v11)
    {
      v12 = v15 - v11;
    }

    else
    {
      v12 = v17;
    }
  }

  v18 = *(a1 + 136);
  v19 = *(a1 + 144);
  v21 = *(a1 + 184);
  v20 = *(a1 + 192);
  v23 = *(a1 + 248);
  v22 = *(a1 + 256);
  if (v9 <= v23)
  {
    v24 = *(a1 + 248);
  }

  else
  {
    v24 = v9;
  }

  v25 = sub_100011DE8(v22, *(a1 + 264), v11, v12, 0);
  v26 = *(a1 + 96);
  v27 = *(*(*(a1 + 8) + 376) + 48 * *(a1 + 88) + 72);
  if (v26 == v27)
  {
    goto LABEL_21;
  }

  if ((*(a1 + 280) & 1) == 0)
  {
LABEL_52:
    *(a1 + 440) = 0;
    result = 1;
    v29 = 448;
    goto LABEL_53;
  }

  v30 = v20 + v19;
  if (!v26 && v27 && v30 + *(a1 + 240))
  {
    v41 = 456;
    goto LABEL_51;
  }

  if ((a2 & 0x1000) == 0 || a4 <= (3 * a3) >> 2)
  {
    if (v24 >= v42)
    {
      v41 = 464;
      goto LABEL_51;
    }

    if (v24 <= a4)
    {
      v31 = a4;
    }

    else
    {
      v31 = v24;
    }

    if (v42 <= *(a1 + 240) + v30 + v31 + v31 * (v18 + v21 + *(a1 + 232)))
    {
      v32 = *(a1 + 94);
      v33 = *(a1 + 88) >> 8;
      v34 = v33 - 1;
      v35 = v33 - v32;
      if (v35 <= 4)
      {
        LODWORD(v36) = v35 + 4;
      }

      else
      {
        LODWORD(v36) = 8;
      }

      v36 = v36;
      if (v34 <= v32)
      {
        v36 = 4;
      }

      v37 = (64 - v42) >> 4;
      if (v42 >= 0x40)
      {
        v37 = 0;
      }

      v38 = v36 + v37 + (*(a1 + 440) >> 14);
      if (v34 / 10 <= v32)
      {
        v39 = *(a1 + 128);
        if (v39 < *(a1 + 328))
        {
          v40 = *(a1 + 176);
          if (v40 <= *(a1 + 224))
          {
            v40 = *(a1 + 224);
          }

          if (v40 >= *(a1 + 248) && v39 - *(a1 + 120) < 4)
          {
            v38 = 1;
          }
        }
      }

      if (v30 > (v12 - v25 + *(a1 + 264)) / v38)
      {
        v41 = 472;
LABEL_51:
        ++*(a1 + v41);
        goto LABEL_52;
      }
    }
  }

LABEL_21:
  result = 0;
  ++*(a1 + 440);
  v29 = 432;
LABEL_53:
  ++*(a1 + v29);
  return result;
}

uint64_t sub_10002D5AC(uint64_t a1, uint64_t a2)
{
  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 96) = 0;
  v4 = *(a1 + 104);
  *a2 = v4;
  if (v4)
  {
    *(a2 + 2) = *(*(a1 + 80) + 24 * v4 + 7);
  }

  while (1)
  {
    v5 = *(a2 + 97);
    if (!*(a2 + 4 * v5))
    {
      break;
    }

    result = sub_10002D640(a1, a2, -1);
    if (result)
    {
      return result;
    }
  }

  v7 = v5 - 1;
  *(a2 + 97) = v7;
  return (v7 >> 6) & 2;
}

uint64_t sub_10002D640(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = *(a2 + 97);
  v4 = (a2 + 4 * *(a2 + 97));
  *(v4 + 3) = a3;
  if (v3 < 23)
  {
    v7 = v3 + 1;
    *(a2 + 97) = v3 + 1;
    v8 = *(a1 + 80);
    v9 = *v4;
    v10 = *(a2 + 96);
    v11 = *(v8 + 24 * v9 + 4 * v10 + ((a3 + 1) & 0x1FE) + 16);
    v12 = a2 + 4 * v7;
    *v12 = v11;
    *(v12 + 3) = 0;
    if (v11)
    {
      v13 = *(v8 + 24 * v11 + 8 * (v10 != 0) + 7);
    }

    else
    {
      v13 = 0;
    }

    result = 0;
    *(v12 + 2) = v13;
  }

  else
  {
    v5 = "length";
    if (!*(a2 + 96))
    {
      v5 = "paddr";
    }

    sub_100012178("%s:%d: %s dev %d %s tree: PATH TOO LONG: %d\n", "spaceman_fxtp_add_child", 752, (*(*a1 + 384) + 212), *(a1 + 88), v5, v3);
    return 84;
  }

  return result;
}

uint64_t sub_10002D734(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = a2;
  v4 = -a3;
  v5 = *(a2 + 97);
  if (*(*(a1 + 80) + 24 * *(a2 + 4 * v5) + 4 * *(a2 + 96) + ((a3 + 1) & 0x1FE) + 16))
  {
    v6 = a1;
    while (1)
    {
      result = sub_10002D640(a1, a2, a3);
      if (result)
      {
        break;
      }

      v8 = *(v3 + 97);
      if (!*(v3 + 4 * v8))
      {
        v13 = v8 - 1;
        *(v3 + 97) = v13;
        v11 = (v3 + 4 * v13 + 3);
        goto LABEL_12;
      }

      a1 = v6;
      a2 = v3;
      a3 = v4;
    }
  }

  else
  {
    LODWORD(v5) = v5;
    do
    {
      v9 = __OFSUB__(v5, 1);
      LODWORD(v5) = v5 - 1;
      if (v5 < 0 != v9)
      {
        return 2;
      }

      v10 = a2 + 4 * v5;
      v12 = *(v10 + 3);
      v11 = (v10 + 3);
    }

    while (v12 != v4);
    *(a2 + 97) = v5;
LABEL_12:
    result = 0;
    *v11 = 0;
  }

  return result;
}

uint64_t sub_10002D810(uint64_t result, unsigned int a2, int a3, unsigned int a4, unsigned __int16 *a5)
{
  v5 = *(result + 80);
  v6 = v5 + 24 * a4 + 4 * a2 + 2 * ((-a3 + 1 + (((-a3 + 1) & 0x8000u) >> 15)) >> 1);
  v7 = *(v6 + 16);
  v8 = v5 + 24 * v7;
  v9 = v8 + 4 * a2 + 2 * ((a3 + 1 + (((a3 + 1) & 0x8000u) >> 15)) >> 1);
  *(v6 + 16) = *(v9 + 16);
  *(v9 + 16) = a4;
  *a5 = v7;
  if (*(v8 + 8 * (a2 != 0) + 7))
  {
    *(v5 + 24 * a4 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
    v12 = *(v8 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v5 + 24 * a4;
    v11 = *(v10 + 8 * (a2 != 0));
    if (a3 == -1)
    {
      *(v10 + 8 * (a2 != 0)) = v11 & 0xFFFFFFFFFFFFFFLL | 0x100000000000000;
      v12 = *(v8 + 8 * (a2 != 0)) | 0xFF00000000000000;
    }

    else
    {
      *(v10 + 8 * (a2 != 0)) = v11 | 0xFF00000000000000;
      v12 = *(v8 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL | 0x100000000000000;
    }
  }

  *(v8 + 8 * (a2 != 0)) = v12;
  return result;
}

uint64_t sub_10002D8F0(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned __int16 *a6)
{
  v6 = *(a1 + 80);
  v7 = -a3 + 1 + (((-a3 + 1) & 0x8000u) >> 15);
  v8 = v6 + 24 * a5 + 4 * a2 + 2 * (v7 >> 1);
  v9 = (v7 >> 1);
  v10 = *(v8 + 16);
  v11 = v6 + 24 * v10;
  result = v11 + 4 * a2 + 16;
  v13 = a3 + 1 + (((a3 + 1) & 0x8000u) >> 15);
  v14 = v13 >> 1;
  v15 = (v13 >> 1);
  *(v8 + 16) = *(result + 2 * v15);
  *(result + 2 * v15) = a5;
  *(v6 + 24 * a4 + 4 * a2 + 2 * v14 + 16) = *(result + 2 * v9);
  *(result + 2 * v9) = a4;
  *a6 = v10;
  v16 = HIBYTE(*(v11 + 8 * (a2 != 0)));
  if (v16 == a3)
  {
    *(v6 + 24 * a4 + 8 * (a2 != 0) + 7) = -a3;
    v17 = v6 + 24 * a5;
    v18 = *(v17 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v6 + 24 * a4 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
    v17 = v6 + 24 * a5;
    v18 = *(v17 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL;
    if (v16)
    {
      v18 |= a3 << 56;
    }
  }

  *(v17 + 8 * (a2 != 0)) = v18;
  *(v11 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
  return result;
}

uint64_t sub_10002D9EC(uint64_t result)
{
  if (result)
  {
    if (*(result + 504))
    {
      return snprintf((result + 4040), 0x20uLL, "%ss%d:%lld");
    }

    else
    {
      return snprintf((result + 4040), 0x20uLL, "%ss%d");
    }
  }

  return result;
}

uint64_t sub_10002DA5C(uint64_t a1)
{
  *(a1 + 32) = 1112756289;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 116) = 0x4000000200000002;
  *(a1 + 124) = 1073741826;
  *(a1 + 1040) = vdup_n_s32(0x40000002u);
  *(a1 + 1068) = 2;
  *(a1 + 1104) = 2;
  return 0;
}

uint64_t sub_10002DAAC(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = sub_10002E740(a1, *(v2 + 116));
  if (v3)
  {
    return v3;
  }

  v3 = sub_10002E740(a1, *(v2 + 120));
  if (v3)
  {
    return v3;
  }

  v3 = sub_10002E740(a1, *(v2 + 124));
  if (v3)
  {
    return v3;
  }

  v6 = *(v2 + 56);
  if ((v6 & 0x20) != 0)
  {
    v3 = sub_10002E740(a1, *(v2 + 1040));
    if (v3)
    {
      return v3;
    }

    v6 = *(v2 + 56);
  }

  if ((v6 & 0x40) != 0)
  {
    v3 = sub_10002E740(a1, *(v2 + 1044));
    if (v3)
    {
      return v3;
    }
  }

  v3 = sub_10002E688(a1 + 3296, "apfs-stream-id-lock", 0x100u);
  if (v3)
  {
    return v3;
  }

  v7 = sub_10002E688(a1 + 3432, "apfs-dir-stats-id-lock", 0x10u);
  if (v7)
  {
    v4 = v7;
LABEL_16:
    sub_10002E6F4(a1 + 3296);
    return v4;
  }

  v8 = sub_100017B50(a1 + 3648, 0x20u);
  if (v8)
  {
    v4 = v8;
    sub_10002E6F4(a1 + 3432);
    goto LABEL_16;
  }

  *(a1 + 376) = v2;
  *(a1 + 392) = *(*a1 + 392);
  sub_100011924((a1 + 1216));
  sub_100011924((a1 + 1280));
  sub_100011924((a1 + 1344));
  sub_100011924((a1 + 1408));
  sub_100011924((a1 + 1472));
  sub_100011924((a1 + 1664));
  sub_100011924((a1 + 1536));
  sub_100011924((a1 + 1600));
  sub_100011924((a1 + 1152));
  sub_100011924((a1 + 3232));
  sub_100011924((a1 + 1728));
  sub_100011924((a1 + 3952));
  sub_100011930((a1 + 1792));
  sub_100011930((a1 + 3008));
  sub_100011930((a1 + 1992));
  sub_100031598(a1 + 3832, 0xE10u, 0x18u);
  sub_10002D9EC(a1);
  *(a1 + 600) = 0;
  if ((*(*(a1 + 376) + 57) & 1) != 0 && (sub_10001BD20(a1) & 1) == 0)
  {
    *(a1 + 696) = 1;
  }

  sub_100011924((a1 + 4072));
  sub_10001193C((a1 + 4136));
  return 0;
}

uint64_t sub_10002DCFC(uint64_t a1)
{
  v2 = *(a1 + 3632);
  if (v2 && !*(*a1 + 940))
  {
    sub_100037058(v2);
  }

  sub_10002E6F4(a1 + 3432);
  sub_10002E6F4(a1 + 3296);
  sub_100031638(a1 + 3832);
  j__pthread_rwlock_destroy((a1 + 2808));
  j__pthread_rwlock_destroy((a1 + 2600));
  j__pthread_rwlock_destroy((a1 + 2400));
  j__pthread_rwlock_destroy((a1 + 2192));
  j__pthread_rwlock_destroy((a1 + 1992));
  j__pthread_rwlock_destroy((a1 + 3008));
  j__pthread_rwlock_destroy((a1 + 1792));
  j__pthread_mutex_destroy((a1 + 3232));
  j__pthread_mutex_destroy((a1 + 1152));
  j__pthread_mutex_destroy((a1 + 1216));
  j__pthread_mutex_destroy((a1 + 1536));
  j__pthread_mutex_destroy((a1 + 1600));
  j__pthread_mutex_destroy((a1 + 1408));
  j__pthread_mutex_destroy((a1 + 1472));
  j__pthread_mutex_destroy((a1 + 1664));
  j__pthread_mutex_destroy((a1 + 1280));
  j__pthread_mutex_destroy((a1 + 1344));
  j__pthread_mutex_destroy((a1 + 1728));
  j__pthread_mutex_destroy((a1 + 3952));
  sub_100017C48(a1 + 3648);
  j__pthread_mutex_destroy((a1 + 4072));
  sub_100011944((a1 + 4136));
  return 0;
}

uint64_t sub_10002DE04(uint64_t a1, char a2, uint64_t a3, unsigned int a4, unint64_t a5)
{
  v24 = 0;
  if (a4 < 0x14)
  {
    return 28;
  }

  v8 = *(a3 + 16);
  if (v8 >= 5)
  {
    sub_100012178("%s:%d: %s bogus phase, %u\n", "apfs_reap", 637, (a1 + 4040), v8);
    return 5;
  }

  v11 = sub_10003BC6C(a1, 0, a5);
  if (v11)
  {
    v5 = v11;
    sub_100012178("%s:%d: %s failed to modify the apfs_t before reaping (error %d).\n", "apfs_reap", 643, (a1 + 4040), v11);
    return v5;
  }

  if (a2)
  {
    sub_10004BFAC(*(a1 + 392), a1, a5);
    sub_100039E90(a1, a5);
    return 0;
  }

  v5 = 0;
  v12 = *(a3 + 16);
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v12 != 3)
      {
        return v5;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (v12)
    {
      if (v12 != 1)
      {
        return v5;
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    v13 = sub_10002E778(a1, a5, &v24, a3);
    if (v13)
    {
      return v13;
    }

    *a3 = 0;
    *(a3 + 16) = 2;
  }

  v13 = sub_10002E938(a1, a5, *(*(a1 + 376) + 144), &v24, a3);
  if (v13)
  {
    return v13;
  }

  v14 = *(a1 + 376);
  v15 = *(v14 + 224);
  if (*(v14 + 232) != v15)
  {
    sub_100012178("%s:%d: %s freed != alloced (%llu freed, %llu alloced)\n", "apfs_reap", 677, (a1 + 4040), *(v14 + 232), v15);
    v14 = *(a1 + 376);
  }

  v16 = *(v14 + 56);
  if ((v16 & 0x20) != 0)
  {
    v17 = sub_1000019C8(a1, *(v14 + 1040), 5, a5, 0, 0);
    if (v17)
    {
      v5 = v17;
      strerror(v17);
      sub_100012178("%s:%d: %s supplemental_tree_destroy(fext_tree) failed: %d (%s)\n");
      return v5;
    }

    v14 = *(a1 + 376);
    v16 = *(v14 + 56);
  }

  if ((v16 & 0x40) != 0)
  {
    v18 = sub_1000019C8(a1, *(v14 + 1044), 6, a5, 0, 0);
    if (v18)
    {
      v5 = v18;
      strerror(v18);
      sub_100012178("%s:%d: %s supplemental_tree_destroy(pfkur_tree) failed: %d (%s)\n");
      return v5;
    }
  }

  *(a3 + 16) = 3;
LABEL_31:
  sub_100038034(*(*(a1 + 392) + 392), a1);
  v19 = *(a1 + 3568);
  if (v19)
  {
    sub_100037058(v19);
    *(a1 + 3568) = 0;
  }

  v20 = *(a1 + 3616);
  if (v20)
  {
    sub_100037058(v20);
    *(a1 + 3616) = 0;
  }

  v21 = *(a1 + 3576);
  if (v21)
  {
    sub_100037058(v21);
    *(a1 + 3576) = 0;
  }

  v5 = sub_10003F794(a1, *(*(a1 + 376) + 128), a5, 0);
  if (v5)
  {
    sub_100012178("%s:%d: %s omap_destroy returned %d!\n");
  }

  else
  {
    v22 = *(a1 + 376);
    *(v22 + 976) = 0;
    *(v22 + 1032) = 0;
    *(v22 + 1048) = 0;
    *(v22 + 1096) = 0;
    *(v22 + 1112) = 0;
    *(v22 + 128) = 0u;
    *(v22 + 144) = 0u;
    *(v22 + 1072) = 0u;
    sub_100019634(a1, a5);
    *(a3 + 16) = 4;
  }

  return v5;
}

uint64_t sub_10002E140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a3 + 20) & 0x40) != 0)
  {
    return 0;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  v5 = *(*(a3 + 376) + 128);
  if (!v5)
  {
    goto LABEL_13;
  }

  v9 = sub_10003A1E8(*(a1 + 392), 0x40000000uLL, v5, &xmmword_10006A8D8, 0, a3, 0, 0, &v15);
  if (v9)
  {
    v10 = v9;
    v11 = *(a1 + 400);
    if (!v11 || !*(v11 + 76))
    {
      sub_100012178("%s:%d: %s failed to get omap %lld: %d\n");
    }

    return v10;
  }

  v10 = sub_10003FB1C(a3, a2, v15, a4);
  v12 = v15[2];
  sub_100037058(v15);
  if (!v10)
  {
    if ((v12 & 0x4000000000) == 0)
    {
      return 0;
    }

LABEL_13:
    sub_10003CD64(a3, 1);
    return 0;
  }

  v13 = *(a1 + 400);
  if (!v13 || !*(v13 + 76))
  {
    sub_100012178("%s:%d: %s omap checkpoint traverse (op %d) failed: %d\n");
  }

  return v10;
}

uint64_t sub_10002E290(uint64_t a1)
{
  v1 = *(a1 + 504);
  if (!v1)
  {
    v1 = a1;
  }

  v2 = *(*(v1 + 376) + 264) & 0x109;
  if (v2 <= 7)
  {
    return v2 == 0;
  }

  if (v2 == 8)
  {
    return 2;
  }

  return 3;
}

uint64_t sub_10002E2E0(uint64_t *a1, uint64_t *a2, unint64_t a3, unint64_t a4, uint64_t *a5)
{
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a1;
  }

  v10 = v9[47];
  v11 = *(v10 + 116);
  v12 = *(v10 + 136);
  memset(&v14[2], 0, 64);
  v14[0] = *off_10006C6F8;
  v14[1] = unk_10006C708;
  if ((*(v10 + 56) & 0x20) == 0 || (result = sub_100001264(a1, v14), !result))
  {
    if (v11 == 2)
    {
      return sub_100026D00(a1, v11 & 0xFFFF0000, v12, a3, a4 != 0, v14, a4, a5);
    }

    else
    {
      return 22;
    }
  }

  return result;
}

uint64_t sub_10002E408(uint64_t a1)
{
  if (*(*(a1 + 376) + 57))
  {
    return sub_10001BD20(a1) ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002E43C(uint64_t *a1, uint64_t *a2, unint64_t a3, unint64_t a4, uint64_t *a5)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  if ((*(a1[47] + 57) & 1) == 0)
  {
    return 45;
  }

  v10 = v5[47];
  v11 = *(v10 + 1104);
  v12 = *(v10 + 1096);
  if (sub_10001BD20(a1))
  {
    return 45;
  }

  if (v11 != 2)
  {
    return 22;
  }

  return sub_100026D00(a1, v11 & 0xFFFF0000, v12, a3, a4 != 0, off_10006C758, a4, a5);
}

uint64_t sub_10002E52C(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (*(a1[47] + 120) == 2)
  {
    return sub_100026D00(a1, *(a1[47] + 120) & 0xFFFF0000, a2, 0, a3 != 0, &off_10006C7B8, a3, a4);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_10002E570(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v3 = a1[47];
  if (*(v3 + 124) == 2)
  {
    return sub_100026D00(a1, *(v3 + 124) & 0xFFFF0000, *(v3 + 152), 0, a2 != 0, &off_10006C818, a2, a3);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_10002E5B4(uint64_t *a1, int a2, uint64_t *a3, unint64_t a4, unint64_t a5, uint64_t *a6)
{
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a1;
  }

  v7 = v6[47];
  if (*(v7 + 1068) != 2)
  {
    return 22;
  }

  v8 = 1072;
  if (a2)
  {
    v8 = 1080;
  }

  return sub_100026D00(a1, *(v7 + 1068) & 0xFFFF0000, *(v7 + v8), a4, a5 != 0, off_10006C878, a5, a6);
}

uint64_t sub_10002E64C(uint64_t a1)
{
  v1 = *(*(a1 + 376) + 964);
  result = 1;
  if (v1 > 63)
  {
    if (v1 != 64 && v1 != 576)
    {
      return 0;
    }
  }

  else
  {
    if (v1)
    {
      v3 = v1 == 2;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002E688(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a1 + 120) = a3;
  v4 = sub_1000122F4(a3, 0x10uLL, 0x10200405730B0C9uLL);
  *(a1 + 112) = v4;
  if (!v4)
  {
    return 12;
  }

  sub_100011924(a1);
  sub_10001193C((a1 + 64));
  return 0;
}

void sub_10002E6F4(uint64_t a1)
{
  sub_100011944((a1 + 64));
  j__pthread_mutex_destroy(a1);
  v2 = *(a1 + 112);
  v3 = 16 * *(a1 + 120);

  sub_1000123F8(v2, v3);
}

uint64_t sub_10002E740(uint64_t a1, int a2)
{
  if ((a2 | 0x40000000u) >> 30 == 1 && a2 == 2)
  {
    return 0;
  }

  else
  {
    return sub_1000033FC(*(*a1 + 392));
  }
}

uint64_t sub_10002E778(uint64_t a1, unint64_t a2, unint64_t *a3, unint64_t *a4)
{
  v17 = 0;
  v18 = 0;
  v8 = a4[1];
  if (v8)
  {
    while (1)
    {
LABEL_2:
      v9 = sub_100001558(a1, v8, &v18);
      if (v9)
      {
        v14 = v9;
        sub_100012178("%s:%d: %s Couldn't find snapshot metadata for xid %llu\n");
        return v14;
      }

      v10 = v18;
      v11 = *(v18 + 2);
      if (v11)
      {
        v12 = sub_10002E938(a1, a2, v11, a3, a4);
        if (v12)
        {
          return v12;
        }

        v10 = v18;
      }

      sub_100001678(a1, 5, *(v10 + 3), a2, 0);
      sub_100001678(a1, 6, *(v18 + 3), a2, 0);
      sub_1000015F8(a1, *(v18 + 3), a2);
      v13 = sub_1000406AC(a1, a4[1], &v17);
      if (v13)
      {
        break;
      }

      v8 = v17;
      *a4 = 0;
      a4[1] = v8;
    }

    v14 = v13;
    if (v13 == 2)
    {
      goto LABEL_13;
    }

    sub_100012178("%s:%d: %s lookup_next_snapshot() returned %d\n", "apfs_reap_snapshots", 615, (a1 + 4040), v13);
  }

  else
  {
    v15 = sub_1000406AC(a1, 0, &v17);
    if (!v15)
    {
      v8 = v17;
      a4[1] = v17;
      goto LABEL_2;
    }

    v14 = v15;
    if (v15 == 2)
    {
LABEL_13:
      sub_100001764(a1, a2, 0);
      return 0;
    }

    else
    {
      sub_100012178("%s:%d: %s Hit %d looking up first snapshot\n");
    }
  }

  return v14;
}

uint64_t sub_10002E938(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v10;
  v24[3] = v10;
  v24[0] = v10;
  v24[1] = v10;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0;
  memset(v21, 170, 20);
  v11 = sub_10002E52C(a1, a3, 0, &v23);
  if (v11)
  {
    v12 = v11;
    sub_100012178("%s:%d: apfs_get_extentref_tree(oid=%llu) returned %d\n", "apfs_reap_extentref_blocks", 510, a3, v11);
  }

  else
  {
    v22 = *a5 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    sub_100025DA4(v24, v23, 0, 4, &v22, 8, 8, v21, 0x14u, 0);
    if ((v13 & 0xFFFFFFFD) != 0)
    {
      v12 = v13;
      sub_100012178("%s:%d: %s tree_iter_init() returned %d\n", "apfs_reap_extentref_blocks", 520, (a1 + 4040), v13);
    }

    else
    {
      while (1)
      {
        if (sub_100025F1C(v24))
        {
          sub_10002822C(v23, a2, 0);
          v12 = 0;
          goto LABEL_5;
        }

        v15 = v22 & 0xFFFFFFFFFFFFFFFLL;
        *a5 = v22 & 0xFFFFFFFFFFFFFFFLL;
        if (v21[0] >> 60 == 1 && v21[1] <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v17 = v21[0] & 0xFFFFFFFFFFFFFFFLL;
          if ((v21[0] & 0xFFFFFFFFFFFFFFFLL) != 0)
          {
            if (sub_10001BC68(a1, a2, v15, v21[0] & 0xFFFFFFFFFFFFFFFLL))
            {
              sub_100012178("%s:%d: %s extent at lba %llu len %llu couldn't be freed: %d\n");
            }
          }

          else
          {
            sub_100012178("%s:%d: %s found bogus 0-length extent at lba %llu, ignoring\n");
          }

          v18 = *a4 + v17;
          *a4 = v18;
          if (v18 > 0x4000)
          {
            break;
          }
        }

        v19 = sub_100025F38(v24);
        if ((v19 & 0xFFFFFFFD) != 0)
        {
          v20 = v19;
          sub_100012178("%s:%d: %s iter_next returned %d\n", "apfs_reap_extentref_blocks", 552, (a1 + 4040), v19);
          v12 = v20;
          goto LABEL_5;
        }
      }

      v12 = 36;
    }
  }

LABEL_5:
  if (v23)
  {
    sub_100037058(v23);
  }

  return v12;
}

void sub_10002EB60(uint64_t a1, int a2, void *a3)
{
  if (a2 == 1)
  {
    if (a3)
    {

      sub_1000123F8(a3, 96);
    }
  }

  else
  {
    sub_100012178("%s:%d: %s invalid crypto object type %u\n", "crypto_obj_free", 310, (a1 + 4040), a2);
  }
}

void sub_10002EBC8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000123F8(a2, 96);
  }
}

uint64_t sub_10002EBDC(uint64_t a1, int a2)
{
  if (!a1)
  {
    panic("assertion failed: %s", "apfs");
  }

  if (*(a1 + 504))
  {
    panic("assertion failed: %s", "!((apfs)->apfs_main_apfs != ((void*)0))");
  }

  if (a2 != 1)
  {
    return 22;
  }

  v3 = sub_1000122F4(1uLL, 0x58uLL, 0x10E0040FEB14155uLL);
  if (v3)
  {
    v4 = v3;
    *v3 = a1;
    *(v3 + 72) = 1;
    *(v3 + 10) = off_10006C8D8;
    v3[5] = 2048;
    v3[7] = 102;
    v5 = sub_100011D5C(0x800u, v3 + 3);
    *(v4 + 4) = v5;
    if (v5)
    {
      v4[2] = v4[3] + 1;
      *(v4 + 5) = 0;
      v4[4] = 0;
      *(v4 + 6) = v4 + 10;
      *(v4 + 7) = 0;
      *(v4 + 8) = v4 + 14;
      sub_10002ED20(a1, 1, 0);
      *(a1 + 1016) = v4;
      sub_10002EDC4(a1, 1, 0);
      return 0;
    }

    sub_1000123F8(v4, 88);
  }

  return 12;
}

uint64_t sub_10002ED20(uint64_t a1, int a2, void *a3)
{
  if (!a1)
  {
    panic("assertion failed: %s", "apfs");
  }

  if (a2 != 1)
  {
    panic("assertion failed: %s", "0");
  }

  v5 = *(a1 + 504);
  if (!v5)
  {
    v5 = a1;
  }

  result = pthread_mutex_lock(v5 + 16);
  if (a3)
  {
    v7 = *(a1 + 504);
    if (!v7)
    {
      v7 = a1;
    }

    *a3 = *(v7 + 1016);
  }

  return result;
}

uint64_t sub_10002EDC4(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    panic("assertion failed: %s", "apfs");
  }

  if (a2 != 1)
  {
    panic("assertion failed: %s", "0");
  }

  v3 = *(a1 + 504);
  if (a3)
  {
    if (v3)
    {
      v4 = *(a1 + 504);
    }

    else
    {
      v4 = a1;
    }

    *(v4 + 1016) = 0;
  }

  if (!v3)
  {
    v3 = a1;
  }

  return pthread_mutex_unlock(v3 + 16);
}

uint64_t sub_10002EE7C(uint64_t a1, int a2, uint64_t *a3)
{
  v25 = 0;
  sub_10002ED20(a1, a2, &v25);
  v6 = v25;
  if (!v25)
  {
    v14 = 22;
    goto LABEL_24;
  }

  v7 = *a3;
  v8 = *(v25 + 32);
  v9 = *a3 & *(v25 + 12);
  v10 = *(v8 + 8 * v9);
  if (v10)
  {
    v11 = *(v8 + 8 * v9);
    while (*v11 != v7)
    {
      v11 = v11[2];
      if (!v11)
      {
        goto LABEL_6;
      }
    }

    v14 = 17;
  }

  else
  {
LABEL_6:
    v12 = *(v25 + 16);
    if (v12 >= *(v25 + 20))
    {
      v13 = *(v25 + 40);
      if (*(v25 + 72) == 2)
      {
        if (v13)
        {
          panic("assertion failed: %s", "((&crypto_cache->free_list)->tqh_first == ((void*)0))");
        }

        sub_100012178("%s:%d: %s cannot insert new ep %llu because the policy cache is full\n", "crypto_hash_insert", 951, (*v25 + 4040), v7);
        v14 = 16;
        goto LABEL_24;
      }

      if (v13)
      {
        v15 = v13[4];
        v16 = v13[5];
        v17 = (v25 + 48);
        if (v15)
        {
          v17 = (v15 + 40);
        }

        *v17 = v16;
        *v16 = v15;
        v18 = v13[2];
        v19 = v13[3];
        if (v18)
        {
          *(v18 + 24) = v19;
        }

        *v19 = v18;
        (**(v6 + 80))(v6);
        v12 = *(v6 + 16) - 1;
        v8 = *(v6 + 32);
        v9 = *a3 & *(v6 + 12);
        v10 = *(v8 + 8 * v9);
      }
    }

    a3[2] = v10;
    *(a3 + 2) = 1;
    v20 = (v8 + 8 * v9);
    if (v10)
    {
      *(v10 + 24) = a3 + 2;
    }

    v14 = 0;
    *v20 = a3;
    a3[3] = v20;
    v22 = *(v6 + 56);
    v21 = (v6 + 56);
    a3[4] = v22;
    v23 = (v22 + 40);
    if (!v22)
    {
      v23 = v21 + 1;
    }

    *v23 = a3 + 4;
    *v21 = a3;
    a3[5] = v21;
    *(v21 - 10) = v12 + 1;
  }

LABEL_24:
  sub_10002EDC4(a1, a2, 0);
  return v14;
}

uint64_t sub_10002F040(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8) - 1;
  *(a2 + 8) = v2;
  if (v2 < 0)
  {
    panic("crypto object retain count %d is not valid (crypto-id %lld, type %u apfs %p)\n", v2, *a2, *(result + 72), *result);
  }

  if (!v2)
  {
    v3 = *(*(result + 80) + 8);

    return v3();
  }

  return result;
}

uint64_t sub_10002F0D8(uint64_t a1, int a2, uint64_t a3)
{
  v9 = 0;
  sub_10002ED20(a1, a2, &v9);
  if (a3 && v9)
  {
    if (*(v9 + 72) != 1)
    {
      goto LABEL_9;
    }

    if (a3 != 5)
    {
      v6 = *v9;
      if (*(*v9 + 504))
      {
        v6 = *(*v9 + 504);
      }

      if (a3 != 4 || (*(*(v6 + 376) + 264) & 0x100) == 0)
      {
LABEL_9:
        v7 = *(v9[4] + 8 * (*(v9 + 3) & a3));
        if (v7)
        {
          while (*v7 != a3)
          {
            v7 = v7[2];
            if (!v7)
            {
              return sub_10002EDC4(a1, a2, 0);
            }
          }

          sub_10002F040(v9, v7);
        }
      }
    }
  }

  return sub_10002EDC4(a1, a2, 0);
}

uint64_t sub_10002F1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 20) = *(a2 + 48);
  v3 = *(a2 + 56);
  *(a3 + 28) = *(a2 + 12);
  *(a3 + 32) = v3;
  *(a3 + 36) = *(a2 + 60);
  return 0;
}

unint64_t sub_10002F1DC(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x40)
  {
    return 0;
  }

  v3 = a2;
  v5 = sub_10002E290(a1);
  if (v5 == 1)
  {
    v9 = sub_10002E290(a1);
    v7 = 255;
    if (v9 != 1)
    {
      v8 = "get_vol_crypto(apfs) == VOL_CPROTECTED";
LABEL_9:
      panic("assertion failed: %s", v8);
    }

    return (v7 >> v3) & 1;
  }

  if (v5 == 3)
  {
    v6 = sub_10002E290(a1);
    v7 = 223;
    if (v6 != 3)
    {
      v8 = "get_vol_crypto(apfs) == VOL_PFKEY";
      goto LABEL_9;
    }

    return (v7 >> v3) & 1;
  }

  return 0;
}

void sub_10002F290(uint64_t a1, _DWORD *a2)
{
  v3 = a2[22];
  if (v3)
  {
    panic("cst %llu hit zero retain count but still has ep related retain count (%u)\n", *a2, v3);
  }

  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  v6 = (a1 + 64);
  if (v4)
  {
    v6 = (v4 + 40);
  }

  *v6 = v5;
  *v5 = v4;
  if (*(a1 + 16) <= *(a1 + 20))
  {
    v9 = *(a1 + 48);
    *(a2 + 4) = 0;
    *(a2 + 5) = v9;
    *v9 = a2;
    *(a1 + 48) = a2 + 8;
  }

  else
  {
    v7 = *(a2 + 2);
    v8 = *(a2 + 3);
    if (v7)
    {
      *(v7 + 24) = v8;
    }

    *v8 = v7;
    sub_1000123F8(a2, 96);
    --*(a1 + 16);
  }
}

uint64_t sub_10002F340(io_object_t a1)
{
  v1 = a1;
  IOObjectRetain(a1);
  if (!v1)
  {
    return 0;
  }

  iterator = -1431655766;
  while (1)
  {
    parent = -1431655766;
    if (IOObjectConformsTo(v1, "AppleAPFSContainerScheme"))
    {
      break;
    }

    if (IOObjectConformsTo(v1, "IOBlockStorageDevice"))
    {
      goto LABEL_15;
    }

    if (IORegistryEntryGetParentEntry(v1, "IOService", &parent))
    {
      parent = 0;
    }

    IOObjectRelease(v1);
    v1 = parent;
    if (!parent)
    {
      return 0;
    }
  }

  v3 = IORegistryEntrySearchCFProperty(v1, "IOService", @"Device Characteristics", kCFAllocatorDefault, 3u);
  if (v3)
  {
    v4 = v3;
    Value = CFDictionaryGetValue(v3, @"Target Disk Mode");
    if (Value)
    {
      v6 = CFBooleanGetValue(Value);
      CFRelease(v4);
      if (v6)
      {
LABEL_15:
        v2 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      CFRelease(v4);
    }
  }

  if (IORegistryEntryGetParentIterator(v1, "IOService", &iterator))
  {
    goto LABEL_15;
  }

  while (1)
  {
    while (1)
    {
      v8 = IOIteratorNext(iterator);
      if (!v8)
      {
        v2 = 0;
        goto LABEL_32;
      }

      v9 = v8;
      if (!sub_10002F5A4(v8, @"image-format-read-only"))
      {
        break;
      }

LABEL_28:
      IOObjectRelease(v9);
    }

    if (sub_10002F5A4(v9, @"Removable"))
    {
      break;
    }

    v10 = IORegistryEntrySearchCFProperty(v9, "IOService", @"Protocol Characteristics", kCFAllocatorDefault, 3u);
    if (!v10)
    {
      goto LABEL_28;
    }

    v11 = v10;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(v11) || (v13 = CFDictionaryGetValue(v11, @"Physical Interconnect Location")) == 0 || (v14 = v13, v15 = CFStringGetTypeID(), v15 != CFGetTypeID(v14)))
    {
      CFRelease(v11);
      goto LABEL_28;
    }

    v16 = CFEqual(v14, @"Internal");
    CFRelease(v11);
    IOObjectRelease(v9);
    if (!v16)
    {
      goto LABEL_31;
    }
  }

  IOObjectRelease(v9);
LABEL_31:
  v2 = 1;
LABEL_32:
  IOObjectRelease(iterator);
LABEL_16:
  IOObjectRelease(v1);
  return v2;
}

BOOL sub_10002F5A4(io_registry_entry_t a1, CFStringRef key)
{
  v2 = IORegistryEntrySearchCFProperty(a1, "IOService", key, kCFAllocatorDefault, 3u);
  if (!v2)
  {
    return 0;
  }

  v3 = v2 == kCFBooleanTrue;
  CFRelease(v2);
  return v3;
}

uint64_t sub_10002F608(int a1, dev_t *a2, _DWORD *a3, _DWORD *a4, dev_t *a5)
{
  if (a2)
  {
    v27.st_dev = -1431655766;
    if (ioctl(a1, 0x4004644CuLL, &v27))
    {
      if (*__error() != 25)
      {
        v10 = __error();
        v11 = strerror(*v10);
        sub_100012178("%s:%d: can't get features for device (%s)\n", "io_get_device_features", 180, v11);
      }

      st_dev = 0;
    }

    else
    {
      st_dev = v27.st_dev;
    }

    *a2 = st_dev;
  }

  if (a3)
  {
    *a3 = (fcntl(a1, 3) & 3) != 0;
  }

  if (a4)
  {
    v13.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v13.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v27.st_blksize = v13;
    *v27.st_qspare = v13;
    v27.st_birthtimespec = v13;
    *&v27.st_size = v13;
    v27.st_mtimespec = v13;
    v27.st_ctimespec = v13;
    *&v27.st_uid = v13;
    v27.st_atimespec = v13;
    *&v27.st_dev = v13;
    if (!fstat(a1, &v27) && (v27.st_mode & 0xB000 | 0x4000) == 0x6000)
    {
      v14 = IOServiceMatching("IOMedia");
      if (!v14)
      {
        goto LABEL_13;
      }

      v25 = v27.st_rdev & 0xFFFFFF;
      valuePtr = HIBYTE(v27.st_rdev);
      v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (v18)
      {
        v19 = v18;
        CFDictionarySetValue(v14, @"BSD Major", v18);
        CFRelease(v19);
      }

      v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v25);
      if (v20)
      {
        v21 = v20;
        CFDictionarySetValue(v14, @"BSD Minor", v20);
        CFRelease(v21);
      }

      MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v14);
      if (MatchingService)
      {
        v23 = MatchingService;
        LODWORD(v14) = sub_10002F340(MatchingService);
        IOObjectRelease(v23);
        goto LABEL_13;
      }

      sub_100012088("%s:%d: fd %d is type %o rdev %d (%d, %d): I/O registry entry not found\n", "io_get_device_features", 228, a1, v27.st_mode & 0xF000, v27.st_rdev, HIBYTE(v27.st_rdev), v27.st_rdev & 0xFFFFFF);
    }

    LODWORD(v14) = 0;
LABEL_13:
    *a4 = v14;
  }

  if (a5)
  {
    v27.st_dev = -1431655766;
    if (ioctl(a1, 0x4004644FuLL, &v27))
    {
      if (*__error() != 25)
      {
        v15 = __error();
        v16 = strerror(*v15);
        sub_100012178("%s:%d: can't get solidstate for device (%s)\n", "io_get_device_features", 244, v16);
      }

      v17 = 1;
    }

    else
    {
      v17 = v27.st_dev;
    }

    *a5 = v17;
  }

  return 0;
}

uint64_t sub_10002F8B8(char *__s2, char *a2, char *a3, size_t a4, char **a5)
{
  if (!strncmp("/dev/", __s2, 5uLL))
  {
    v10 = 5;
  }

  else
  {
    v10 = 0;
  }

  v11 = &__s2[v10];
  if (!strncmp(&__s2[v10], "disk", 4uLL))
  {
    result = snprintf(a2, a4, "%s%s", "/dev/", v11);
    if (a3)
    {
      result = snprintf(a3, a4, "%sr%s");
    }

    goto LABEL_14;
  }

  if (!strncmp(v11, "rdisk", 5uLL))
  {
    result = snprintf(a2, a4, "%s%s", "/dev/", v11 + 1);
    if (a3)
    {
      result = snprintf(a3, a4, "%s%s");
    }

LABEL_14:
    if (!a5)
    {
      return result;
    }

    a2 += 5;
    goto LABEL_16;
  }

  result = strlcpy(a2, __s2, a4);
  if (a3)
  {
    result = strlcpy(a3, __s2, a4);
  }

  if (a5)
  {
LABEL_16:
    *a5 = a2;
  }

  return result;
}

unint64_t sub_10002F9FC(char *a1, _DWORD *a2)
{
  if (!sub_10002FA80(a1))
  {
    return 0;
  }

  result = strrchr(a1, 115);
  if (result)
  {
    v5 = result;
    result = strtoul((result + 1), 0, 10);
    if (result)
    {
      v6 = result;
      result = strndup(a1, v5 - a1);
      if (result)
      {
        if (a2)
        {
          *a2 = v6 - 1;
        }
      }
    }
  }

  return result;
}

BOOL sub_10002FA80(const char *a1)
{
  v1 = a1;
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v2 = *(v1 + 5);
    v1 += 5;
    if (v2 == 114)
    {
      ++v1;
    }
  }

  v3 = IOBSDNameMatching(kIOMasterPortDefault, 0, v1);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v3);
  if (!MatchingService)
  {
    return 0;
  }

  v5 = MatchingService;
  v6 = IOObjectConformsTo(MatchingService, "AppleAPFSVolume") != 0;
  IOObjectRelease(v5);
  return v6;
}

uint64_t sub_10002FB18(io_registry_entry_t *a1, const char *a2)
{
  iterator = -1431655766;
  if (IORegistryEntryGetChildIterator(*a1, "IOService", &iterator))
  {
    return 0;
  }

  v4 = IOIteratorNext(iterator);
  if (!v4)
  {
LABEL_6:
    IOObjectRelease(iterator);
    return 0;
  }

  v5 = v4;
  while (!IOObjectConformsTo(v5, a2))
  {
    IOObjectRelease(v5);
    v5 = IOIteratorNext(iterator);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  IOObjectRelease(iterator);
  IOObjectRelease(*a1);
  *a1 = v5;
  return 1;
}

uint64_t sub_10002FBCC(char *a1, int a2)
{
  v4 = strrchr(a1, 115);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v5 = v4 - 1;
    while (v5 > a1)
    {
      v7 = *v5--;
      v6 = v7;
      if ((v7 - 48) >= 0xA)
      {
        if (v6 != 115)
        {
          return 0xFFFFFFFFLL;
        }

        v4 = v5 + 1;
        goto LABEL_8;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_8:
  if (v4 <= a1 || *(v4 - 1) == 47)
  {
    return 0xFFFFFFFFLL;
  }

  return strtoul(v4 + 1, 0, 10) - 1;
}

uint64_t sub_10002FC5C(uint64_t a1, unint64_t a2)
{
  v26 = 0;
  if (*(a1 + 637) == 1)
  {
    sub_100012088("%s:%d: %s Skipping metazone_init() as backing store is sparse\n", "spaceman_metazone_init", 72, (*(a1 + 384) + 212));
    return 0;
  }

  memset(v27, 170, sizeof(v27));
  v2 = sub_100042E24(a1, &v26);
  if (v2)
  {
    return v2;
  }

  v4 = v26;
  if (!v26)
  {
    return 19;
  }

  if (!*(v26 + 376))
  {
    v2 = 19;
    goto LABEL_32;
  }

  if (*(v26 + 1112) & 1) != 0 || (*(v26 + 1216))
  {
    v2 = 0;
LABEL_32:
    sub_100037058(v4);
    return v2;
  }

  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = v26;
    v9 = v26 + 104 * v5;
    *(v9 + 1112) = 0;
    *(v9 + 1016) = 0u;
    *(v9 + 1032) = 0u;
    *(v9 + 1048) = 0u;
    *(v9 + 1064) = 0u;
    *(v9 + 1080) = 0u;
    *(v9 + 1096) = 0u;
    v10 = *(v8 + 376);
    v11 = *(v10 + 32);
    v12 = *(v10 + 48 * v5 + 48);
    if (is_mul_ok(v12, v11))
    {
      v13 = v12 * v11;
    }

    else
    {
      v13 = 0x40000000000;
    }

    if (!sub_100012524(a2, v11, v12, v13, &v27[2], &v27[1]))
    {
      v14 = v8 + 104 * v5;
      v15 = v27[1] + v27[2] / v11;
      sub_10001262C(v11, v27[2], v27[1], v15, v27, 0);
      v16 = v27[1];
      *(v14 + 1016) = v27[1];
      *(v14 + 1032) = v16;
      v17 = v27[0];
      *(v14 + 1024) = v27[0];
      *(v14 + 1042) = 1;
      *(v14 + 1048) = v17;
      *(v14 + 1064) = v27[0];
      *(v14 + 1056) = v15;
      *(v14 + 1074) = 1;
      *(v14 + 1113) = 1;
      v18 = v26;
      v19 = *(v26 + 1000 + 8 * v5);
      if (v19 < v15 && v19 >= v27[1])
      {
        if (v15 == v12)
        {
          v21 = 0;
        }

        else
        {
          v21 = v15;
        }

        *(v26 + 1000 + 8 * v5) = v21;
      }

      if (*(v18 + 8 * v5 + 1496))
      {
        v22 = *(*(v18 + 376) + 36);
        v23 = v27[1] / v22;
        v24 = (v15 - 1) / v22;
        if (v23 <= v24)
        {
          do
          {
            *(*(v26 + 8 * v5 + 1496) + 4 * v23++) |= 0x4000000u;
          }

          while (v23 <= v24);
          v18 = v26;
        }
      }

      *(v18 + 104 * v5 + 1112) = 1;
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  v2 = 0;
  v4 = v26;
  if (v26)
  {
    goto LABEL_32;
  }

  return v2;
}

void sub_10002FEB4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 1112) == 1 && *(a2 + 1113) == 1)
  {
    if (*(a2 + 1016) <= a3 && *(a2 + 1024) > a3)
    {
      if (*(a2 + 1032) <= a3)
      {
        return;
      }

      v3 = (a2 + 1032);
      goto LABEL_15;
    }

    if (*(a2 + 1048) <= a3 && *(a2 + 1056) > a3)
    {
      if (*(a2 + 1064) <= a3)
      {
        return;
      }

      v3 = (a2 + 1064);
      goto LABEL_15;
    }

    if (*(a2 + 1080) <= a3 && *(a2 + 1088) > a3 && *(a2 + 1096) > a3)
    {
      v3 = (a2 + 1096);
LABEL_15:
      *v3 = a3;
    }
  }
}

uint64_t sub_10002FF54(uint64_t result, unsigned int a2, int a3, unint64_t a4)
{
  v4 = result + 104 * a2 + 1016;
  if (a3)
  {
    if (a3 == 2)
    {
      v5 = (result + 104 * a2 + 1080);
      v6 = 88;
      v7 = 80;
      v8 = 72;
    }

    else
    {
      if (a3 != 1)
      {
        return result;
      }

      v5 = (result + 104 * a2 + 1048);
      v6 = 56;
      v7 = 48;
      v8 = 40;
    }
  }

  else
  {
    v6 = 24;
    v7 = 16;
    v8 = 8;
    v5 = (result + 104 * a2 + 1016);
  }

  v9 = *v5;
  if (v9 <= a4 && *(v4 + v8) > a4)
  {
    *(v4 + v7) = a4;
LABEL_18:
    *(v4 + v6) = 0;
    return result;
  }

  if (*(v4 + v7) == v9)
  {
    *(v4 + v7) = a4;
    v10 = 1;
  }

  else
  {
    if (*(v4 + v6) < 0)
    {
      *(v4 + v7) = v9;
      goto LABEL_18;
    }

    v11 = *(v4 + v6);
    if (!v11)
    {
      *(v4 + v7) = v9;
      return result;
    }

    *(v4 + v7) = a4;
    v10 = v11 + 1;
  }

  *(v4 + v6) = v10;
  return result;
}

uint64_t sub_100030018(void *a1, unsigned int a2, int a3)
{
  if (a3 == 2)
  {
    v3 = &a1[13 * a2 + 137];
    if (BYTE2(a1[13 * a2 + 138]) != 1)
    {
      v3 = &a1[13 * a2 + 133];
    }
  }

  else if (a3 == 1)
  {
    v3 = &a1[13 * a2 + 133];
  }

  else if (a3)
  {
    v5 = a2;
    v6 = a1[1];
    if (v6)
    {
      v7 = (v6 + 4040);
    }

    else
    {
      v7 = (*(*(*a1 + 392) + 384) + 212);
    }

    sub_100012178("%s:%d: %s tried to get metazone alloc index for unknown type: %d\n", "spaceman_get_metazone_alloc_index", 348, v7, a3);
    v3 = &a1[v5 + 125];
  }

  else
  {
    v3 = &a1[13 * a2 + 129];
  }

  return *v3;
}

uint64_t sub_1000300D8(void *a1)
{
  v18 = 0;
  v2 = sub_100042E24(a1, &v18);
  if (v2)
  {
    goto LABEL_17;
  }

  pthread_mutex_lock(v18 + 6);
  v3 = v18;
  v4 = *&v18[5].__opaque[48];
  if ((*(v4 + 144) & 1) == 0 || !*(v4 + 336))
  {
    v5 = *(v4 + 116);
    if (!v5)
    {
      v5 = *(v4 + 112);
    }

    v6 = (*(v4 + 128) + 8 * v5);
    v7 = *(v4 + 32);
    if (v6 + 2184 <= (v6 + v7 - 1) / v7 * v7)
    {
      memmove((v4 + 2520), (v4 + 336), v6 - 336);
      v10 = vadd_s32(*(v4 + 324), vdup_n_s32(0x888u));
      *(v4 + 324) = v10;
      v11 = (*(v4 + 332) + 2184);
      *(v4 + 332) = v11;
      v12 = (*(v4 + 80) + 2184);
      *(v4 + 80) = v12;
      v13 = (*(v4 + 128) + 2184);
      *&v3[13].__opaque[32] = v4 + v10.u32[0];
      *(v4 + 128) = v13;
      *&v3[13].__opaque[40] = v4 + v10.u32[1];
      *&v3[13].__opaque[48] = v4 + v11;
      v3[14].__sig = v4 + v12;
      *v3[14].__opaque = v4 + v13;
      *(v4 + 336) = 0x9D800000001;
      bzero((v4 + 344), 0x880uLL);
      *(v4 + 144) |= 1u;
    }

    else
    {
      v8 = *v18->__opaque;
      if (v8)
      {
        v9 = (v8 + 4040);
      }

      else
      {
        v9 = (*(*(v18->__sig + 392) + 384) + 212);
      }

      sub_100012088("%s:%d: %s refusing to upgrade spaceman! new_smp_size %u old_smp_size %u block_size %u\n", "spaceman_upgrade_sm_version_0_to_1", 398, v9, v6 + 2184, v6, v7);
      sub_100012128("%s:%d: %s failed to upgrade spaceman from version 0 to 1: %d\n", "spaceman_allocation_init", 456, (a1[48] + 212), 27);
    }
  }

  sub_100046A8C(a1, v18);
  v2 = sub_10002FC5C(a1, 0);
  if (v2)
  {
LABEL_17:
    v16 = v2;
  }

  else
  {
    sub_100030328(v18);
    v14 = 1;
    while (1)
    {
      v15 = sub_100030578(a1, v14);
      if (v15)
      {
        break;
      }

      if (++v14 == 5)
      {
        v2 = sub_10002A7AC(a1, v18);
        goto LABEL_17;
      }
    }

    v16 = v15;
    sub_100012178("%s:%d: %s failed to initialize data zone for allocations of size %llu, error %d\n", "spaceman_allocation_init", 491, (a1[48] + 212), v14, v15);
  }

  if (v18)
  {
    pthread_mutex_unlock(v18 + 6);
    sub_100037058(v18);
  }

  return v16;
}

const char *sub_100030328(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 47);
    if (*(v2 + 144))
    {
      if (*(v2 + 336))
      {
        v3 = 0;
        v4 = v2 + 344;
        v25 = v2 + 368;
        v26 = v2 + 48;
        v5 = 1;
        do
        {
          v27 = v5;
          v6 = *(v26 + 48 * v3);
          if (v6)
          {
            v7 = 0;
            v8 = (v25 + 1088 * v3);
            do
            {
              v9 = v4 + 1088 * v3 + 136 * v7;
              if (*v9 >= v6 || ((v10 = *(v9 + 8), v10 <= v6) ? (v11 = *v9 > v10) : (v11 = 1), v11))
              {
                v12 = *(v1 + 1);
                if (v12)
                {
                  v13 = (v12 + 4040);
                }

                else
                {
                  v13 = (*(*(*v1 + 392) + 384) + 212);
                }

                result = sub_100012128("%s:%d: %s Persistent allocation zone at slot %llu has invalid current boundaries\n", "spaceman_sanitize_datazone", 676, v13, v7);
                v14 = 1;
              }

              else
              {
                v14 = 0;
              }

              v15 = 0;
              v16 = v8;
              while (1)
              {
                v17 = *(v16 - 1);
                if (v17 >= v6)
                {
                  break;
                }

                if (*v16 > v6 || v17 > *v16)
                {
                  break;
                }

                ++v15;
                v16 += 2;
                if (v15 == 7)
                {
                  if (*(v9 + 130) <= 6u)
                  {
                    if ((v14 & 1) == 0)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_35;
                  }

LABEL_31:
                  v21 = *(v1 + 1);
                  if (v21)
                  {
                    v22 = (v21 + 4040);
                  }

                  else
                  {
                    v22 = (*(*(*v1 + 392) + 384) + 212);
                  }

                  sub_100012128("%s:%d: %s Persistent allocation zone at slot %llu has invalid previous boundary index\n", "spaceman_sanitize_datazone", 695, v22, v7);
                  goto LABEL_35;
                }
              }

              v19 = *(v1 + 1);
              if (v19)
              {
                v20 = (v19 + 4040);
              }

              else
              {
                v20 = (*(*(*v1 + 392) + 384) + 212);
              }

              sub_100012128("%s:%d: %s Persistent allocation zone at slot %llu has invalid previous boundary %llu\n", "spaceman_sanitize_datazone", 686, v20, v7, v15);
              if (*(v9 + 130) >= 7u)
              {
                goto LABEL_31;
              }

LABEL_35:
              v23 = *(v1 + 1);
              if (v23)
              {
                v24 = (v23 + 4040);
              }

              else
              {
                v24 = (*(*(*v1 + 392) + 384) + 212);
              }

              result = sub_100012128("%s:%d: %s Clearing persistent allocation zone at slot %llu\n", "spaceman_sanitize_datazone", 701, v24, v7);
              *(v9 + 128) = 0;
              *(v9 + 96) = 0u;
              *(v9 + 112) = 0u;
              *(v9 + 64) = 0u;
              *(v9 + 80) = 0u;
              *(v9 + 32) = 0u;
              *(v9 + 48) = 0u;
              *v9 = 0u;
              *(v9 + 16) = 0u;
LABEL_39:
              ++v7;
              v8 += 17;
            }

            while (v7 != 8);
          }

          v5 = 0;
          v3 = 1;
        }

        while ((v27 & 1) != 0);
      }
    }
  }

  return result;
}

uint64_t sub_100030578(void *a1, uint64_t a2)
{
  v12 = 0;
  v4 = sub_100042E24(a1, &v12);
  if (v4)
  {
    return v4;
  }

  if (!v12)
  {
    return 19;
  }

  v6 = v12[47];
  if (!v6)
  {
    v4 = 19;
    goto LABEL_15;
  }

  if ((a2 - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    v4 = 22;
    goto LABEL_15;
  }

  v7 = &v12[4 * a2 - 4];
  if (v7[156])
  {
    goto LABEL_14;
  }

  v8 = *(v6 + 56);
  if (*(v12 + 1112) != 1 || v8 < 8)
  {
    goto LABEL_14;
  }

  v10 = v7 + 153;
  *(v12 + 1352) = 1;
  *(v7 + 153) = 0u;
  *(v7 + 155) = 0u;
  v11 = sub_1000306D4(v12, 0, a2);
  if (v11)
  {
    v4 = v11;
    sub_100012178("%s:%d: %s failed to initialize allocation zone for allocations of %llu blocks from disk: error %d\n", "spaceman_datazone_init", 600, (a1[48] + 212), a2, v11);
  }

  else
  {
    if (*(v10 + 25))
    {
LABEL_14:
      v4 = 0;
      goto LABEL_15;
    }

    sub_100012088("%s:%d: %s allocation zone on dev %d for allocations of %llu blocks starting at paddr %llu\n", "spaceman_datazone_init", 611, (a1[48] + 212), 0, a2, *v10);
    v4 = 0;
    *(v10 + 24) = 1;
  }

LABEL_15:
  if (v12)
  {
    sub_100037058(v12);
  }

  return v4;
}

uint64_t sub_1000306D4(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = 22;
  if (a1 && (a3 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v6 = a3 - 1;
    v7 = &a1[17 * a2 + 149 + 4 * a3];
    v8 = a1[47];
    if ((*(v8 + 144) & 1) != 0 && *(v8 + 336))
    {
      v9 = v8 + 344;
      v10 = a3;
      v11 = -1;
      LOBYTE(v12) = 1;
      v13 = 8;
      v14 = v6;
      do
      {
        v15 = v14 & 7;
        v16 = *(v8 + 344 + 1088 * a2 + 136 * v15 + 128);
        if (v16 == v10)
        {
          v19 = (v9 + 1088 * a2 + 136 * v15);
          v7[2] = v19;
          v20 = sub_100030900(a1, a2, v6, *v19 / *(v8 + 36));
          v3 = v20;
          if (v20)
          {
            v21 = a1[1];
            if (v21)
            {
              v22 = (v21 + 4040);
            }

            else
            {
              v22 = (*(*(*a1 + 392) + 384) + 212);
            }

            sub_100012178("%s:%d: %s failed to update allocation zone boundaries: error %d\n", "spaceman_initialize_allocation_zone_from_disk", 965, v22, v20);
          }

          return v3;
        }

        v17 = v11 == -1 && v16 == 0;
        v12 = (v16 != 0) & v12;
        if (v17)
        {
          v11 = v15;
        }

        v14 = v15 + 1;
        --v13;
      }

      while (v13);
      if (v12)
      {
        goto LABEL_14;
      }

      v3 = 0;
      v7[2] = v9 + 1088 * a2 + 136 * v11;
      *(v7 + 25) = 1;
    }

    else
    {
LABEL_14:
      v3 = 0;
      *(v7 + 25) = 257;
    }
  }

  return v3;
}

void sub_100030854(uint64_t a1)
{
  if (a1)
  {
    v1 = 0;
    v2 = a1 + 1224;
    v3 = a1 + 1250;
    v4 = 1;
    do
    {
      v5 = v4;
      if (*(v2 + 136 * v1 + 128) == 1)
      {
        v6 = (v3 + 136 * v1);
        v7 = 4;
        do
        {
          if (*(v6 - 2) == 1 && *v6 == 1)
          {
            v8 = *(v6 - 10);
            if (v8)
            {
              *(v6 - 2) = 0;
              sub_1000123F8(v8, 136);
              *(v6 - 10) = 0;
            }
          }

          v6 += 32;
          --v7;
        }

        while (v7);
      }

      v4 = 0;
      v1 = 1;
    }

    while ((v5 & 1) != 0);
  }
}

uint64_t sub_100030900(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  v6 = *(a1 + 376);
  v7 = v6 + 48 * a2;
  v8 = *(v7 + 56);
  if (v8 <= a4)
  {
    return 22;
  }

  v9 = a3;
  v10 = a2;
  v11 = a1 + 136 * a2 + 32 * a3;
  v12 = v11 + 1224;
  v13 = *(v11 + 1240);
  v14 = *(v6 + 36);
  v15 = *(v7 + 48);
  v16 = *(v11 + 1224);
  v17 = *(v11 + 1250) == 1 && v13 == 0;
  if (v17)
  {
    v13 = sub_1000122F4(1uLL, 0x88uLL, 0x1000040B5CA6940uLL);
    *(v12 + 16) = v13;
    if (!v13)
    {
      return 12;
    }
  }

  if (*(v12 + 24) == 1)
  {
    v18 = v13[65];
    v19 = (v13 + 8);
    v20 = 7;
    v21 = v18;
    while (1)
    {
      v22 = v21 % 7;
      v23 = &v19[16 * (v21 % 7)];
      if (*(v23 + 1))
      {
        if (*v23 / *(*(a1 + 376) + 36) == a4)
        {
          break;
        }
      }

      ++v21;
      if (!--v20)
      {
        goto LABEL_19;
      }
    }

    if (v22 == v18)
    {
LABEL_19:
      *&v19[16 * v18] = *v12;
      v13[65] = v18 + 1 - 7 * ((((v18 + 1 - ((9363 * (v18 + 1)) >> 16)) >> 1) + ((9363 * (v18 + 1)) >> 16)) >> 2);
      goto LABEL_20;
    }

    do
    {
      if (v22 == 6)
      {
        v28 = 0;
      }

      else
      {
        v28 = v22 + 1;
      }

      *&v19[16 * v22] = *&v19[16 * v28];
      v22 = v28;
    }

    while (v28 != v18);
    v29 = v18 - 1;
    v17 = v18 == 0;
    v30 = 6;
    if (!v17)
    {
      v30 = v29;
    }

    *&v19[16 * v30] = *v12;
  }

LABEL_20:
  v25 = v14 * a4;
  v26 = v14 + v14 * a4;
  if (v8 - 1 == a4)
  {
    v26 = v15;
  }

  *v13 = v25;
  *(v13 + 1) = v26;
  *v12 = v25;
  *(v12 + 8) = v26;
  v13[64] = v9 + 1;
  *(v12 + 25) = 0;
  v27 = a1 + 8 * v10;
  if (*(v12 + 24) == 1)
  {
    *(*(v27 + 1496) + 4 * (v16 / v14)) &= ~0x8000000u;
  }

  result = 0;
  *(*(v27 + 1496) + 4 * a4) |= 0x8000000u;
  return result;
}

uint64_t sub_100030B28(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (*(result + 136 * a2 + 1352) == 1)
    {
      v2 = (result + 136 * a2 + 1249);
      v3 = 4;
      result = 4;
      do
      {
        if ((*(v2 - 1) & 1) != 0 || (*v2 & 1) == 0)
        {
          result = (result - 1);
        }

        v2 += 32;
        --v3;
      }

      while (v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100030B84(void *a1, unsigned int a2, unint64_t a3, _BYTE *a4)
{
  if (!a1 || LOBYTE(a1[17 * a2 + 169]) != 1 || *(a1[47] + 48 * a2 + 56) <= a3)
  {
    return 22;
  }

  v8 = 0;
  for (i = &a1[17 * a2 + 156] + 1; ; i += 32)
  {
    if ((*(i - 1) & 1) == 0 && *i == 1)
    {
      v10 = *(a1[a2 + 187] + 4 * a3);
      v11 = v10 & 0xC000000;
      v12 = *&v10 & 0xFFFFFFLL;
      if (!v11 && v8 < v12)
      {
        break;
      }
    }

    if (++v8 == 4)
    {
      return 0;
    }
  }

  v16 = sub_100030900(a1, a2, v8, a3);
  v17 = a1[1];
  if (v16)
  {
    v14 = v16;
    if (v17)
    {
      v18 = (v17 + 4040);
    }

    else
    {
      v18 = (*(*(*a1 + 392) + 384) + 212);
    }

    sub_100012178("%s:%d: %s failed to assign chunk %llu to allocation zone %llu\n", "spaceman_evaluate_chunk_for_disabled_allocation_zones", 1135, v18, a3, v8);
  }

  else
  {
    if (v17)
    {
      v19 = (v17 + 4040);
    }

    else
    {
      v19 = (*(*(*a1 + 392) + 384) + 212);
    }

    sub_100012088("%s:%d: %s allocation zone on dev %d for allocations of %llu blocks starting at paddr %llu\n", "spaceman_evaluate_chunk_for_disabled_allocation_zones", 1140, v19, a2, v8 + 1, *(i - 25));
    v14 = 0;
    *(i - 1) = 1;
    *a4 = 1;
  }

  return v14;
}

uint64_t sub_100030D28(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v4 = 22;
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      v6 = a3;
      if (a3 <= 1 && a4 <= 3)
      {
        v8 = *(a2 + 376);
        memset(v74, 170, 32);
        v72 = 0;
        v73 = 0;
        v9 = a3;
        v10 = a2 + 136 * a3 + 32 * a4;
        v11 = *(v10 + 1224);
        v12 = v8[9];
        v13 = *(v10 + 1240);
        v14 = v8 + 12;
        v15 = *&v8[12 * a3 + 14];
        if (!v13)
        {
          goto LABEL_14;
        }

        v16 = *(v13 + 130);
        v17 = v13 + 16;
        v18 = 7;
        while (1)
        {
          v19 = (v17 + 16 * v16);
          v20 = v19[1];
          if (v20)
          {
            if (v20 <= *&v14[12 * a3])
            {
              v21 = *v19 / v12;
              v22 = *(*(v5 + 1496 + 8 * a3) + 4 * v21);
              v23 = v22 & 0xC000000;
              v24 = *&v22 & 0xFFFFFFLL;
              if (!v23 && v24 > a4)
              {
                break;
              }
            }
          }

          v16 = (v16 + 1 - 7 * ((613566757 * (v16 + 1)) >> 32));
          if (!--v18)
          {
            goto LABEL_14;
          }
        }

        if (v21 < v15)
        {
          v32 = 0;
LABEL_55:
          v57 = sub_100030900(v5, v6, a4, v21);
          if (v57)
          {
            v4 = v57;
            sub_100012178("%s:%d: %s failed to update allocate zone %llu: error %d\n");
          }

          else
          {
            v59 = *(v5 + 1592);
            if (v59)
            {
              ++*(v59 + (v9 << 6) + 8 * a4 + 120);
            }

            if (*(v5 + 1600))
            {
              v60 = (*(v5 + 1608) + 16 * *(v5 + 1604));
              v4 = 0;
              *v60 = sub_100031B28();
              v60[1] = (16 * (v21 & 0xFFFFFFFFFFLL)) | (2 * a4) | (v32 << 44) | v9;
              v61 = *(v5 + 1604);
              if ((v61 + 1) < *(v5 + 1600))
              {
                v62 = v61 + 1;
              }

              else
              {
                v62 = 0;
              }

              *(v5 + 1604) = v62;
            }

            else
            {
              v4 = 0;
            }
          }
        }

        else
        {
LABEL_14:
          v26 = v11 / v12;
          v27 = v8[10];
          v28 = v15 - 1;
          v30 = v26 + 1 == v27 || v26 == v28;
          v31 = &v14[12 * a3];
          LODWORD(v14) = v31[4];
          if (v14 > v30)
          {
            v70 = 0;
            v32 = 0;
            v67 = v31;
            v68 = (v26 / v27);
            v64 = v26;
            v65 = v5 + 896;
            v63 = v5;
            v33 = v5 + 1496;
            v69 = -1;
            v21 = -1;
            do
            {
              v34 = (v68 + v30) % v14;
              if (v31[5])
              {
                v35 = v8[11];
                v36 = v34 / v35;
                v37 = v69;
                v38 = v70;
                if (v34 / v35 != v69 || v70 == 0)
                {
                  v40 = *(*(v65 + 8 * v9) + 8 * v36);
                  if (v73)
                  {
                    sub_100037058(v73);
                    v73 = 0;
                  }

                  v74[2] = v8;
                  v74[3] = __PAIR64__(v36, a3);
                  v41 = sub_10003A1E8(*(a1 + 392), 0x40000000, v40, &xmmword_10006A940, &v74[2], 0, 0, 0, &v73);
                  if (v41)
                  {
                    v4 = v41;
                    sub_100012178("%s:%d: %s error getting cab %d: %d\n", "spaceman_get_new_chunk_for_allocation_zone", 1248, (*(a1 + 384) + 212), v36, v41);
                    goto LABEL_58;
                  }

                  v38 = *(v73 + 56);
                  v35 = v8[11];
                  v37 = v36;
                }

                v69 = v37;
                v70 = v38;
                v42 = (v38 + 8 * (v34 - v35 * v37) + 40);
                v6 = a3;
              }

              else
              {
                v42 = (*(v65 + 8 * v9) + 8 * v34);
              }

              v43 = *v42;
              v74[0] = v8;
              v74[1] = __PAIR64__(v34, v6);
              v44 = sub_10003A1E8(*(a1 + 392), 0x40000000, v43, &xmmword_10006A950, v74, 0, 0, 0, &v72);
              if (v44)
              {
                v4 = v44;
                sub_100012178("%s:%d: %s error getting cib %d: %d\n");
                goto LABEL_58;
              }

              if (v30)
              {
                LODWORD(v45) = 0;
              }

              else
              {
                LODWORD(v45) = v64 % v8[10] + 1;
              }

              v31 = v67;
              v46 = *(v72 + 56);
              v47 = *(v46 + 36);
              v48 = v47 >= v45;
              v49 = v47 - v45;
              if (v49 != 0 && v48)
              {
                v50 = v34 * v8[10];
                v45 = v45;
                v51 = (v46 + 32 * v45 + 60);
                v52 = v21;
                do
                {
                  v53 = *v51;
                  v51 += 8;
                  v54 = v53 & 0xFFFFF;
                  if (v32 < v54)
                  {
                    v21 = v50 + v45;
                    v55 = *(*(v33 + 8 * v9) + 4 * (v50 + v45));
                    if ((v55 & 0xC000000) == 0 && (*&v55 & 0xFFFFFFuLL) > a4)
                    {
                      v32 = v54;
                      v52 = v50 + v45;
                      if (v54 == v8[9])
                      {
                        break;
                      }
                    }
                  }

                  ++v45;
                  v21 = v52;
                  --v49;
                }

                while (v49);
              }

              if (v32 == v8[9])
              {
                break;
              }

              sub_100037058(v72);
              v72 = 0;
              ++v30;
              v14 = v67[4];
            }

            while (v30 < v14);
            v5 = v63;
            if (v21 != -1)
            {
              goto LABEL_55;
            }
          }

          v4 = 28;
        }

LABEL_58:
        if (v73)
        {
          sub_100037058(v73);
        }

        if (v72)
        {
          sub_100037058(v72);
        }
      }
    }
  }

  return v4;
}

BOOL sub_1000311F8(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8 * a2 + 1496);
  if (!v4)
  {
    return 0;
  }

  v5 = a1 + 104 * a2;
  if (*(v5 + 1112) == 1)
  {
    v6 = v5 + 1016;
    v7 = 40;
    if (*(v6 + 90))
    {
      v7 = 72;
    }

    if (*v6 <= a3 && *(v6 + v7) > a3)
    {
      return 1;
    }
  }

  if ((*(v4 + 4 * (a3 / *(*(a1 + 376) + 36))) & 0x8000000) == 0)
  {
    return 0;
  }

  if (a4 <= 4 && (v9 = a1 + 136 * a2 + 32 * a4, *(v9 + 1216) == 1) && (v10 = (v9 + 1192), *v10 <= a3))
  {
    return v10[1] <= a3;
  }

  else
  {
    return 1;
  }
}

BOOL sub_1000312B4(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, __int16 a5, unint64_t a6, unint64_t *a7, unint64_t *a8)
{
  v19 = 0;
  v14 = sub_100011DE8(a1, a2, a3, a4, &v19);
  if (v14)
  {
    v15 = a2 - v14;
    if (a2 == v14)
    {
      v16 = 0;
LABEL_17:
      *a8 = v16;
      return v14 != 0;
    }

    v16 = v19 - a1;
    if (v19 == a1)
    {
      v17 = v14 + a1;
LABEL_6:
      *a7 = v17;
LABEL_7:
      v16 = v15;
      goto LABEL_17;
    }

    v15 = a2 - (v16 + v14);
    if ((a5 & 0x4000) != 0)
    {
      if (a6 > v19 && a2 != v16 + v14 && (v19 + v14 <= a6 || a6 - v19 > v19 + v14 - a6))
      {
        *a7 = v19 + v14;
        goto LABEL_7;
      }
    }

    else if (v15 > v16)
    {
      v17 = v19 + v14;
      goto LABEL_6;
    }

    *a7 = a1;
    goto LABEL_17;
  }

  return v14 != 0;
}

uint64_t sub_100031394(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, __int16 a6, unint64_t a7, unint64_t *a8, unint64_t *a9)
{
  v12 = a5;
  v13 = a4;
  v15 = a2;
  v16 = *(a1 + 1024);
  if (v16)
  {
    v17 = 0;
    if (!a3 && (*(a1 + 634) & 1) == 0)
    {
      v18 = *(a1 + 1016);
      if ((a6 & 0x200) != 0)
      {
        if (v18 && sub_1000312B4(a4, a5, 0, v18, a6, a7, a8, a9))
        {
          v13 = *a8;
          v12 = *a9;
          v17 = 1;
        }

        else
        {
          v17 = 0;
        }

        v18 += v16;
        v16 = *(*(a2 + 376) + 48) - v18;
      }

      else
      {
        v17 = 0;
      }

      v19 = sub_1000312B4(v13, v12, v18, v16, a6, a7, a8, a9);
      v15 = a2;
      if (v19)
      {
        v13 = *a8;
        v12 = *a9;
        v17 = 1;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  if ((a6 & 0x2000) != 0)
  {
    v20 = v15 + 104 * a3;
    if (*(v20 + 1112) == 1)
    {
      v21 = v20 + 1016;
      v22 = 40;
      if (*(v21 + 90))
      {
        v22 = 72;
      }

      if (sub_1000312B4(v13, v12, *v21, *(v21 + v22) - *v21, a6, a7, a8, a9))
      {
        v13 = *a8;
        v12 = *a9;
        v17 = 1;
      }
    }

    if (*(v15 + 136 * a3 + 1352) == 1)
    {
      v23 = (v15 + 136 * a3 + 1248);
      v24 = 4;
      do
      {
        if (*v23 == 1 && sub_1000312B4(v13, v12, *(v23 - 3), *(v23 - 2) - *(v23 - 3), a6, a7, a8, a9))
        {
          v13 = *a8;
          v12 = *a9;
          v17 = 1;
        }

        v23 += 32;
        --v24;
      }

      while (v24);
    }
  }

  return v17 & 1;
}

uint64_t sub_100031598(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = sub_100011924(a1);
  if (!result)
  {
    v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v8);
    *(a1 + 64) = v8.tv_sec / a2 * a2;
    *(a1 + 72) = a2;
    *(a1 + 76) = a3;
    v7 = sub_1000124AC(a3, 8uLL);
    *(a1 + 80) = v7;
    if (v7)
    {
      result = 0;
      *(a1 + 88) = 0;
    }

    else
    {
      j__pthread_mutex_destroy(a1);
      return 12;
    }
  }

  return result;
}

uint64_t sub_100031638(uint64_t a1)
{
  sub_1000123F8(*(a1 + 80), 8 * *(a1 + 76));
  *(a1 + 80) = 0;

  return j__pthread_mutex_destroy(a1);
}

const char *sub_100031680(const char *result, uint64_t a2, void *a3, unint64_t a4)
{
  v11 = a4;
  if ((*(a2 + 64) & 2) != 0)
  {
    v6 = result;
    if (a4)
    {

      return sub_100031778(result, a2, a3, a4);
    }

    else
    {
      v7 = sub_100018D78(result, 4, 2, 0, &v11);
      if (v7)
      {
        v8 = v7;
        v9 = *(a2 + 8);
        v10 = strerror(v7);
        return sub_100012178("%s:%d: %s failed to enter tx to update size tracking for ino %llu: %s (%d); size tracking may go out of sync\n", "update_size_tracking", 5147, v6 + 4040, v9, v10, v8);
      }

      else
      {
        sub_100031778(v6, a2, a3, v11);
        return sub_100018D88(v6, 4, 2, 0, v11);
      }
    }
  }

  return result;
}

const char *sub_100031778(const char *result, uint64_t a2, void *a3, unint64_t a4)
{
  if ((*(a2 + 64) & 2) != 0)
  {
    v7 = result;
    __dst = 0xAAAAAAAAAAAAAAAALL;
    if (sub_100050564((a2 + 408), 10, 0, &__dst, 8uLL) || !__dst)
    {
      result = sub_100011490(*(v7 + 49));
      if (result)
      {
        return sub_100012178("%s:%d: %s ino %llu is flagged to maintain dir-stats but has no dir-stats key\n", "update_dir_stats", 689, v7 + 4040, *(a2 + 8));
      }
    }

    else
    {
      return sub_10003183C(v7, __dst, a3, 0, 0, a4);
    }
  }

  return result;
}

uint64_t sub_10003183C(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  if ((*(*(a1 + 376) + 56) & 0x200) != 0)
  {
    v9 = 18;
  }

  else
  {
    v9 = 10;
  }

  v33[1] = -1431655766;
  v33[0] = v9;
  v34 = a2;
  v35 = 0;
  v36 = *a3;
  v37 = a3[4];
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  sub_10004FDE8(&v39, 0);
  if (a3[2])
  {
    HIDWORD(v40) |= 4u;
    sub_10005029C(&v39, 1, 0, a3 + 2, 8uLL);
  }

  if (a3[3])
  {
    HIDWORD(v40) |= 8u;
    sub_10005029C(&v39, 3, 0, a3 + 3, 8uLL);
  }

  v10 = (a4 >> 5) & 1;
  v11 = a4 & 0xFFFFFFDF;
  if (a3[5])
  {
    HIDWORD(v40) |= 0x800u;
    sub_10005029C(&v39, 4, 0, a3 + 5, 8uLL);
  }

  v12 = 0;
  LOBYTE(v13) = 0;
  v14 = 0;
  v31 = (a1 + 4040);
  v15 = v10;
  while (1)
  {
    BYTE1(v33[0]) = 4;
    DWORD2(v40) = v11;
    *&v38 = a3[6];
    if (v10)
    {
      v16 = 32;
    }

    else
    {
      v16 = 0;
    }

    v17 = v11 | v16;
    if (v13)
    {
      v17 |= 0x100000u;
    }

    if (v10 & 1) != 0 || (v13)
    {
      DWORD2(v40) = v17;
    }

    if (v15 == 1)
    {
      v18 = 0x4000;
      goto LABEL_24;
    }

    if (v15 == 2)
    {
      DWORD2(v40) = v17 | 0x40;
      if (v34 == v12)
      {
        v18 = 16448;
LABEL_24:
        DWORD2(v40) = v17 | v18;
      }
    }

    v19 = sub_10001689C(a1, 1, v33, a6);
    if ((v19 & 0xFFFFFFFD) != 0)
    {
      v20 = v19;
      v21 = v34;
      v22 = strerror(v19);
      sub_100012178("%s:%d: %s failed to update dir-stats %llu: %s (%d)\n", "update_dir_stats_by_key_ext", 574, v31, v21, v22, v20);
    }

    if ((DWORD2(v40) & 0x400000) == 0)
    {
      break;
    }

    v24 = 0;
    if (!v34)
    {
      goto LABEL_51;
    }

LABEL_48:
    if (v24)
    {
      goto LABEL_51;
    }

    if (++v14 == 1025)
    {
      goto LABEL_52;
    }
  }

  if (v15)
  {
    v23 = v34;
    v10 = (DWORD2(v40) >> 5) & 1;
  }

  else
  {
    v23 = v34;
    if ((BYTE8(v40) & 0x40) != 0)
    {
      v25 = v34;
    }

    else
    {
      v25 = v12;
    }

    LOBYTE(v10) = (BYTE8(v40) & 0x20) != 0;
    if ((BYTE8(v40) & 0x20) != 0)
    {
      v15 = 1;
    }

    else
    {
      v12 = v25;
      v15 = (BYTE8(v40) & 0x40) >> 5;
    }
  }

  v13 = (DWORD2(v40) >> 20) & 1;
  if (a5)
  {
    v26 = v23 == a5;
  }

  else
  {
    v26 = 0;
  }

  v27 = *(&v38 + 1);
  v24 = v26 || v23 == *(&v38 + 1);
  v34 = *(&v38 + 1);
  *(&v38 + 1) = 0;
  if (v27)
  {
    goto LABEL_48;
  }

LABEL_51:
  if (v14 < 0x400)
  {
    return sub_1000501C0(&v39);
  }

LABEL_52:
  if (sub_100011490(*(a1 + 392)))
  {
    sub_100012178("%s:%d: %s stopped updating dir-stats due to chain being too long\n", "update_dir_stats_by_key_ext", 627, v31);
  }

  return sub_1000501C0(&v39);
}

uint64_t sub_100031B28()
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v1.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_REALTIME, &v1);
  return sub_100031B60(&v1.tv_sec);
}

uint64_t sub_100031B60(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 / 1000000000;
  v4 = v2 % 1000000000;
  if (*a1 < 0 && v2 >= 1)
  {
    v5 = v3 + 1;
    v4 -= 1000000000;
  }

  else
  {
    v6 = v2 >= 0;
    if (v2 < 0)
    {
      v5 = v3 - 1;
    }

    else
    {
      v5 = v2 / 1000000000;
    }

    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = v4 + 1000000000;
    }

    if (v1 >= 1)
    {
      v4 = v7;
    }

    else
    {
      v5 = v3;
    }
  }

  v8 = v1 + v5;
  if (__OFADD__(v1, v5) || (v9 = 1000000000 * v8, (v8 * 1000000000) >> 64 != (1000000000 * v8) >> 63) || (result = v4 + v9, __OFADD__(v4, v9)))
  {
    if (v1 > 0)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return 0x8000000000000000;
    }
  }

  return result;
}

uint64_t sub_100031BFC(uint64_t *a1, int *a2, unint64_t *a3)
{
  v6 = sub_100012434(*(a1[47] + 36), 0xD3A61ACFuLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v8 = a1[47];
  if ((*(v8 + 104) & 0x7FFFFFFF) != 0)
  {
    v9 = 0;
    v18 = 0;
    v10 = 0;
    v11 = -1;
    while (1)
    {
      *(v7 + 6) = 0;
      if (sub_10001124C(a1, v9, &v19) || sub_100050964(a1[48]))
      {
        sub_100012178("%s:%d: %s couldn't read checkpoint descriptor block %d @ 0x%llx: %d\n");
      }

      else
      {
        v14 = *(v7 + 6);
        if (v14 == -2147483647)
        {
          goto LABEL_12;
        }

        if (v14)
        {
          if (v14 == 1073741836)
          {
LABEL_12:
            if (sub_100003490(v7, *(a1[47] + 36), v12, v13))
            {
              sub_100012178("%s:%d: %s invalid checksum for object type 0x%x @ checkpoint descriptor block %d @ 0x%llx\n");
            }

            else if (*(v7 + 7))
            {
              sub_100012178("%s:%d: %s found unexpected subtype 0x%x for object type 0x%x @ checkpoint descriptor block %d\n");
            }

            else
            {
              v15 = v7[2];
              if (v15)
              {
                if (v15 >= v10)
                {
                  v16 = *(v7 + 6);
                  if (v15 == v10 && v18 && v16 != -2147483647)
                  {
                    v18 = 1;
                  }

                  else
                  {
                    v18 = v16 == -2147483647;
                    v10 = v7[2];
                    v11 = v9;
                  }
                }
              }

              else
              {
                sub_100012178("%s:%d: %s found unexpected xid %lld @ checkpoint descriptor block %d\n");
              }
            }

            goto LABEL_7;
          }

          sub_100012178("%s:%d: %s found unexpected object type 0x%x @ checkpoint descriptor block %d\n");
        }
      }

LABEL_7:
      ++v9;
      v8 = a1[47];
      if (v9 >= (*(v8 + 104) & 0x7FFFFFFFu))
      {
        goto LABEL_27;
      }
    }
  }

  v10 = 0;
  v11 = -1;
LABEL_27:
  sub_1000123F8(v7, *(v8 + 36));
  *a2 = v11;
  *a3 = v10;
  return 2 * (v10 == 0);
}

uint64_t sub_100031E78(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int8x16_t a5, int8x16_t a6)
{
  v10 = sub_100003490(a2, *(a1 + 36), a5, a6);
  v11 = *(a2 + 36);
  if (!v11)
  {
    goto LABEL_19;
  }

  if (v10)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  if (*(a2 + 24) == 1073741836)
  {
    v13 = v10 != 0;
  }

  else
  {
    v13 = v12;
  }

  if (*(a2 + 28))
  {
    ++v13;
  }

  if (*(a2 + 16) != *(a1 + 16))
  {
    ++v13;
  }

  v14 = *(a2 + 8) == a3 ? v13 : v13 + 1;
  v15 = *(a1 + 36);
  v16 = v14 | *(a2 + 32) & 1 ^ (a4 != 0);
  if (v11 <= (v15 - 40) / 0x28uLL && v16 == 0)
  {
    v19 = 0;
    v20 = *(a1 + 108);
    v21 = (a2 + 72);
    while (v11 != v19)
    {
      v23 = *(v21 - 8);
      v22 = *(v21 - 7);
      if ((v23 & 0xC0000000) == 0x80000000)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (*(v21 - 8) > 0x12u || ((1 << *(v21 - 8)) & 0x6002C) == 0)
      {
        v26 = v24;
      }

      else
      {
        v26 = (v23 & 0xC0000000) != 0x80000000;
      }

      if ((v22 & 0xC0000000) != 0)
      {
        ++v26;
      }

      if ((*(v21 - 7) > 0x24u || ((1 << v22) & 0x100009CA01) == 0) && *(v21 - 7) != 255)
      {
        ++v26;
      }

      if (!*(v21 - 1))
      {
        ++v26;
      }

      if ((v20 & 0x80000000) != 0)
      {
        v32 = v19;
      }

      else
      {
        v27 = *v21;
        v28 = *(a1 + 120);
        if (*v21 < v28)
        {
          ++v26;
        }

        if (v27 >= v28 + v20)
        {
          ++v26;
        }

        v29 = v27 - v28;
        v30 = *(a1 + 144);
        if (v30 <= v29)
        {
          v31 = 0;
        }

        else
        {
          v31 = *(a1 + 108);
        }

        v32 = v31 - v30 + v29;
        if (v32 >= *(a1 + 148))
        {
          ++v26;
        }
      }

      v33 = *(v21 - 6);
      if (v33)
      {
        v34 = v26;
      }

      else
      {
        v34 = v26 + 1;
      }

      if (!(v34 | (v33 % v15 != 0)))
      {
        ++v19;
        v21 += 5;
        if (v33 / v15 <= *(a1 + 148) - v32)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    return 0;
  }

  else
  {
LABEL_19:

    return sub_1000033FC(0);
  }
}

BOOL sub_10003208C(uint64_t a1, uint64_t a2, const char *a3)
{
  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
    v7 = 0;
  }

  else
  {
    sub_100012178("%s:%d: %s<->superblock mismatch on uuid\n", "nx_superblock_agrees_with_main_superblock", 254, a3);
    v7 = 1;
  }

  if (*(a1 + 1280) != *(a2 + 1280) || *(a1 + 1288) != *(a2 + 1288))
  {
    sub_100012178("%s:%d: %s<->superblock mismatch on fusion uuid\n", "nx_superblock_agrees_with_main_superblock", 258, a3);
    ++v7;
  }

  v9 = *(a1 + 16);
  if (v9 > *(a2 + 16))
  {
    sub_100012178("%s:%d: the %s superblock has a lower XID %lld than the main superblock %lld\n", "nx_superblock_agrees_with_main_superblock", 263, a3, *(a2 + 16), v9);
  }

  v10 = *(a2 + 36);
  if (*(a1 + 36) != v10)
  {
    sub_100012178("%s:%d: %s<->superblock mismatch on block size: %d %d\n", "nx_superblock_agrees_with_main_superblock", 269, a3, *(a1 + 36), v10);
    ++v7;
  }

  v11 = *(a2 + 40);
  if (*(a1 + 40) != v11)
  {
    sub_100012178("%s:%d: %s<->superblock mismatch on block count: %lld %lld\n", "nx_superblock_agrees_with_main_superblock", 274, a3, *(a1 + 40), v11);
    ++v7;
  }

  v12 = *(a2 + 104);
  if (*(a1 + 104) != v12)
  {
    sub_100012178("%s:%d: %s<->superblock mismatch on checkpoint descriptor block count: %d %d\n", "nx_superblock_agrees_with_main_superblock", 279, a3, *(a1 + 104), v12);
    ++v7;
  }

  v13 = *(a2 + 108);
  if (*(a1 + 108) != v13)
  {
    sub_100012178("%s:%d: %s<->superblock mismatch on checkpoint data block count: %d %d\n", "nx_superblock_agrees_with_main_superblock", 284, a3, *(a1 + 108), v13);
    ++v7;
  }

  v14 = *(a2 + 112);
  if (*(a1 + 112) != v14)
  {
    sub_100012178("%s:%d: %s<->superblock mismatch on checkpoint descriptor base address: %lld %lld\n", "nx_superblock_agrees_with_main_superblock", 289, a3, *(a1 + 112), v14);
    ++v7;
  }

  v15 = *(a2 + 120);
  if (*(a1 + 120) != v15)
  {
    sub_100012178("%s:%d: %s<->superblock mismatch on checkpoint data base address: %lld %lld\n", "nx_superblock_agrees_with_main_superblock", 294, a3, *(a1 + 120), v15);
    v7 = 1;
  }

  return v7 == 0;
}

uint64_t sub_100032298(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int *a5)
{
  v25 = 0;
  v26 = 0;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  *a5 = -1;
  v5 = *(a2 + 104) & 0x7FFFFFFF;
  if (!v5)
  {
    return 2;
  }

  v6 = a5;
  v11 = 0;
  v12 = 0;
  v23 = (a1 + 424);
  while (1)
  {
    if (v11 && (*(a2 + 1264) & 2) != 0)
    {
      return 35;
    }

    v13 = (v5 + a3) % v5;
    v27 = -1;
    if (sub_10001124C(a1, v13, &v27) || sub_100050964(*(a1 + 384)))
    {
      sub_100012178("%s:%d: %s couldn't read checkpoint descriptor block %d @ %lld: %d\n");
      goto LABEL_8;
    }

    if (*(a4 + 24) != -2147483647)
    {
      goto LABEL_8;
    }

    if (sub_100003584(a4, *(a2 + 36), 1, v14, v15))
    {
      sub_100012178("%s:%d: %s checkpoint superblock %d @ %lld: failed sanity check: %d\n");
      goto LABEL_8;
    }

    v22 = v6;
    v16 = *(a2 + 64);
    if ((v16 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      break;
    }

    v6 = v22;
    if (sub_10003208C(a2, a4, "checkpoint"))
    {
      v17 = *(a4 + 140);
      v18 = *(a2 + 104) & 0x7FFFFFFF;
      if (v13 == (*(a4 + 136) + v17 - 1) % v18)
      {
        if (v17 <= v11 + v18)
        {
          if (sub_100010DCC(a1, 0, 1, 0, 1) || sub_100010DCC(a1, *(a4 + 112), *(a4 + 104) & 0x7FFFFFFF, *(a4 + 104) < 0, 0) || sub_100010DCC(a1, *(a4 + 120), *(a4 + 108) & 0x7FFFFFFF, *(a4 + 108) < 0, 0))
          {
            sub_100012178("%s:%d: %s xid %lld at index %d failed to load checkpoint metadata ranges (overlap?): %d\n");
          }

          else if (sub_100032938(a1, a4))
          {
            sub_100012178("%s:%d: %s xid %lld validation failed for checkpoint at index %d: %d\n");
          }

          else
          {
            if (!sub_100032A48(a1, a4, &v26, &v25))
            {
              memcpy(*(a1 + 376), a4, *(a2 + 36));
              *(*(a1 + 392) + 400) = *(*(a1 + 376) + 88);
              if (sub_10000E700(a1, 0, 2))
              {
                sub_100012178("%s:%d: %s xid %lld failed to fix up checkpoint data: %d\n");
LABEL_37:
                sub_1000358E8(*(a1 + 392), 0);
                *(a1 + 408) = 0;
                *(a1 + 736) = 0;
                *v23 = 0u;
                v23[1] = 0u;
                v23[2] = 0u;
                memcpy(*(a1 + 376), a2, *(a2 + 36));
                *(*(a1 + 392) + 400) = *(*(a1 + 376) + 88);
                goto LABEL_8;
              }

              if (*(a1 + 628) == 1)
              {
                if (*(a1 + 631) == 1)
                {
                  sub_1000120D8("%s:%d: %s probe of external device... skipping recent sanity checks.\n", "nx_checkpoint_find_valid_checkpoint", 586, (*(a1 + 384) + 212));
                }

                else
                {
                  sub_1000120D8("%s:%d: %s sanity checking all recently-changed container state... please be patient.\n", "nx_checkpoint_find_valid_checkpoint", 595, (*(a1 + 384) + 212));
                  if (sub_1000093F8(a1))
                  {
                    sub_100012178("%s:%d: %s xid %lld sanity check of recently-changed structures failed: %d\n");
                    goto LABEL_37;
                  }
                }
              }

              if (sub_100042E24(a1, &v24))
              {
                sub_100012178("%s:%d: %s xid %lld failed to get spaceman: %d\n");
              }

              else
              {
                v19 = sub_100010DCC(a1, *(v24[47] + 168), *(v24[47] + 164) & 0x7FFFFFFF, *(v24[47] + 164) < 0, 0);
                if (v19)
                {
                  sub_100037058(v24);
                }

                else
                {
                  v19 = sub_100010DCC(a1, *(v24[47] + 176), *(v24[47] + 152), *(v24[47] + 152) < 0, 0);
                  sub_100037058(v24);
                  if (!v19)
                  {
                    v21 = *(*(a1 + 376) + 16);
                    if (v21 < v26)
                    {
                      sub_100012178("%s:%d: %s warning: best valid checkpoint xid %lld is less than max free queue oldest xid %lld seen in checkpoint %lld\n", "nx_checkpoint_find_valid_checkpoint", 633, (*(a1 + 384) + 212), v21, v26, v25);
                    }

                    result = 0;
                    *v22 = v13;
                    return result;
                  }
                }

                sub_100012178("%s:%d: %s xid %lld failed to load spaceman metadata ranges (overlap?): %d\n", "nx_checkpoint_find_valid_checkpoint", 626, (*(a1 + 384) + 212), *(a4 + 16), v19);
                v6 = v22;
              }

              goto LABEL_37;
            }

            sub_100012178("%s:%d: %s xid %lld data for checkpoint at index %d couldn't be loaded: %d\n");
          }

          sub_1000358E8(*(a1 + 392), 0);
          *(a1 + 408) = 0;
          *(a1 + 736) = 0;
          *v23 = 0u;
          v23[1] = 0u;
          v23[2] = 0u;
        }

        else
        {
          sub_100012178("%s:%d: %s xid %lld checkpoint superblock index %d doesn't fit in blocks remaining: %d > %d\n");
        }
      }

      else
      {
        sub_100012178("%s:%d: %s xid %lld checkpoint superblock index %d doesn't match index block was found at: %d\n");
      }
    }

LABEL_8:
    ++v12;
    v5 = *(a2 + 104) & 0x7FFFFFFF;
    --a3;
    --v11;
    if (v12 >= v5)
    {
      return 2 * (*v6 == -1);
    }
  }

  sub_100012178("%s:%d: %s unsupported nx_incompatible_features (0x%llx): unable to mount\n", "nx_checkpoint_find_valid_checkpoint", 497, (*(a1 + 384) + 212), v16 & 0xFFFFFFFFFFFFFFFDLL);
  if ((v16 & 0x100) != 0)
  {
    sub_100012178("%s:%d: %s Fusion is not supported anymore\n", "nx_checkpoint_find_valid_checkpoint", 499, (*(a1 + 384) + 212));
  }

  return 75;
}

uint64_t sub_100032938(uint64_t *a1, unsigned int *a2)
{
  v4 = sub_100012434(a2[9], 0x9BA6ADA8uLL);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (a2[35] == 1)
  {
LABEL_3:
    v6 = 0;
  }

  else
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_10001124C(a1, (v7 + a2[34]) % (a2[26] & 0x7FFFFFFF), &v12);
      if (v8)
      {
        break;
      }

      v8 = sub_100050964(a1[48]);
      if (v8)
      {
        break;
      }

      v8 = sub_100031E78(a2, v5, v12, v7 == a2[35] - 2, v9, v10);
      if (v8)
      {
        break;
      }

      if (++v7 >= a2[35] - 1)
      {
        goto LABEL_3;
      }
    }

    v6 = v8;
  }

  sub_1000123F8(v5, a2[9]);
  return v6;
}

uint64_t sub_100032A48(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v45[0] = 0;
  v6 = *(*(a1 + 376) + 36);
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  v42 = 0;
  v7 = sub_100012434(v6, 0xB5246107uLL);
  if (v7)
  {
    v8 = v7;
    v40 = 0xAAAAAAAAAAAAAAAALL;
    v41 = 0xAAAAAAAAAAAAAAAALL;
    if (*(a2 + 140) - 1 < 1)
    {
LABEL_28:
      sub_1000123F8(v8, v6);
      return 0;
    }

    else
    {
      v9 = 0;
      v10 = *(a2 + 144);
      v11 = *(a2 + 136);
      v34 = (v7 + 10);
      v38 = v6 - 1;
      v33 = *(a2 + 140) - 1;
      while (1)
      {
        v41 = 0;
        v12 = sub_10001124C(a1, v11, &v41);
        if (v12 || (v12 = sub_100050964(*(a1 + 384)), v12) || (v12 = sub_100003490(v8, v6, v13, v14), v12))
        {
          v31 = v12;
          sub_100012178("%s:%d: %s couldn't read checkpoint descriptor map block %d @ %lld: %d\n");
LABEL_39:
          sub_1000123F8(v8, v6);
LABEL_40:
          sub_1000358E8(*(a1 + 392), 0);
          *(a1 + 408) = 0;
          *(a1 + 736) = 0;
          *(a1 + 424) = 0u;
          *(a1 + 440) = 0u;
          *(a1 + 456) = 0u;
          return v31;
        }

        v35 = v9;
        v36 = v11;
        if (v8[9])
        {
          break;
        }

LABEL_27:
        v11 = (v36 + 1) % (*(a2 + 104) & 0x7FFFFFFFu);
        v9 = v35 + 1;
        if (v35 + 1 == v33)
        {
          goto LABEL_28;
        }
      }

      v15 = 0;
      v16 = v34;
      while (1)
      {
        v17 = *(v16 + 2);
        v41 = 0;
        v18 = sub_100011290(a1, v10, &v41, &v40);
        if (v18)
        {
          v31 = v18;
          sub_100012178("%s:%d: %s couldn't read checkpoint data block %d @ %lld: %d\n", "nx_checkpoint_load_data", 387, (*(a1 + 384) + 212), v10, v41, v18);
          goto LABEL_39;
        }

        if (v41 != *(v16 + 4))
        {
          break;
        }

        v19 = *(a2 + 144);
        v20 = v10;
        if (v10 < v19)
        {
          v20 = (*(a2 + 108) & 0x7FFFFFFF) + v10;
        }

        v21 = v20 - v19;
        v22 = *(a2 + 148);
        v23 = (v38 + v17) / v6;
        if (v21 >= v22 || v21 + v23 > v22)
        {
          sub_100012178("%s:%d: %s checkpoint mapping (%d,%d) extends beyond checkpoint data range: %d,%d\n", "nx_checkpoint_load_data", 403, (*(a1 + 384) + 212), v21, (v38 + v17) / v6, *(a2 + 144), v22);
          goto LABEL_33;
        }

        v45[0] = 0;
        v24 = sub_100038E6C(*v16, v45, &v43);
        HIDWORD(v43) = *(v16 + 1);
        LODWORD(v44) = v17;
        if (v24)
        {
          v31 = v24;
LABEL_38:
          sub_100012178("%s:%d: %s failed to load checkpoint data of type 0x%x:0x%x @ %lld\n");
          goto LABEL_39;
        }

        v25 = sub_10003C214(*(a1 + 392), v45[0] | 0x80000000, *(v16 + 3), &v43, v41, v10, v40, *(a2 + 16), &v42);
        if (v25)
        {
          v31 = v25;
          goto LABEL_38;
        }

        if (a3)
        {
          v26 = v42;
          if (!*a4)
          {
            v27 = sub_100036630(v42);
            v26 = v42;
            if (v27 == 5)
            {
              tv_nsec = v42[3].tv_nsec;
              v29 = tv_nsec[32];
              if (v29 <= tv_nsec[27])
              {
                v29 = tv_nsec[27];
              }

              *a3 = v29;
              v30 = tv_nsec[37];
              if (v30 <= v29)
              {
                v30 = v29;
              }

              *a3 = v30;
              *a4 = *(a2 + 16);
            }
          }
        }

        else
        {
          v26 = v42;
        }

        sub_100037058(v26);
        v10 = (v23 + v10) % (*(a2 + 108) & 0x7FFFFFFFu);
        ++v15;
        v16 += 40;
        if (v15 >= v8[9])
        {
          goto LABEL_27;
        }
      }

      sub_100012178("%s:%d: %s unexpected checkpoint map entry address: 0x%llx, expected 0x%llx\n", "nx_checkpoint_load_data", 392, (*(a1 + 384) + 212), *(v16 + 4), v41);
LABEL_33:
      v31 = sub_1000033FC(0);
      sub_1000123F8(v8, v6);
      if (v31)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    sub_100012178("%s:%d: %s couldn't allocate memory for checkpoint map block\n", "nx_checkpoint_load_data", 358, (*(a1 + 384) + 212));
    return 12;
  }

  return v31;
}