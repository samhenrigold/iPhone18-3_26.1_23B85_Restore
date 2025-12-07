uint64_t sub_1000280E4(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, void *a5, void *a6, void *a7, void *a8)
{
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = v15;
  v45 = v15;
  *&v44[8] = v15;
  v43[0] = a2;
  v43[1] = a3;
  LOBYTE(v45) = 0;
  if (a4)
  {
    v16 = sub_100028500;
  }

  else
  {
    v16 = sub_10002897C;
  }

  *(&v45 + 1) = 0;
  *&v46 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  *v44 = -1;
  *&v44[5] = -1;
  v17 = sub_10003B724(a1, 0, &v46 + 1);
  if (v17)
  {
    v18 = v17;
    v19 = strerror(v17);
    sub_10004565C("unable to access the tree repairs structure: %s\n", v19);
    sub_100049C40(0x2C4, v18);
    goto LABEL_6;
  }

  if (!*(&v46 + 1))
  {
    v18 = 0;
    goto LABEL_6;
  }

  v51 = 0xAAAAAAAAAAAAAAAALL;
  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50[2] = v21;
  v50[3] = v21;
  v50[0] = v21;
  v50[1] = v21;
  v22 = malloc_type_calloc(1uLL, 0x345uLL, 0xA70541A5uLL);
  v23 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x4AAE9F65uLL);
  v41 = v23;
  v42 = v22;
  if (!v22 || (v24 = v23) == 0)
  {
    sub_10004565C("unable to allocate memory for tree repairs\n");
    v18 = 12;
    v29 = 701;
    v30 = 12;
LABEL_27:
    sub_100049C40(v29, v30);
    goto LABEL_36;
  }

  if (a3)
  {
    v25 = *(a3 + 40);
    if (((*(v25 + 264) & 1) == 0 || *(v25 + 976)) && *(a3 + 8) == 1)
    {
      v26 = sub_100046258(a3, a2, 2);
      v24 = v41;
      if (v26)
      {
        v18 = v26;
        v27 = strerror(v26);
        sub_10004565C("unable to open the volume for repairs: %s\n", v27);
        sub_100049C40(0x2C5, v18);
LABEL_24:
        v28 = v42;
LABEL_37:
        sub_100046458(a3);
LABEL_38:
        v33 = v41;
        if (!v41)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }
  }

  v31 = sub_100039F68(v50, a1, 0, v22, 2u, 0x345u, v24, 3808);
  if (v31)
  {
    v18 = v31;
    LOBYTE(v45) = 0;
    *(&v45 + 1) = 0;
    *&v46 = 0;
    goto LABEL_36;
  }

  v18 = sub_10002C648(v50, v16, v43, 1);
  if (*(&v45 + 1) >= 2uLL)
  {
    if (v45)
    {
      v32 = "Applied";
    }

    else
    {
      v32 = "Skipped";
    }

    sub_100045428("%s %llu/%llu repairs of this type in total.\n", v32, *(&v45 + 1) - v46, *(&v45 + 1));
  }

  LOBYTE(v45) = 0;
  *(&v45 + 1) = 0;
  *&v46 = 0;
  if (v18)
  {
LABEL_36:
    v28 = v42;
    if (!a3)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v48)
  {
    v34 = sub_10001C8C8(*a2);
    v18 = v34;
    if (a3 && !v34)
    {
      v35 = 0;
      v36 = 1;
      while (1)
      {
        v37 = v36;
        v38 = *(a3 + 24 + 8 * v35);
        if (v38)
        {
          v39 = sub_10001C8C8(v38);
          if (v39)
          {
            break;
          }
        }

        v36 = 0;
        v35 = 1;
        if ((v37 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      v18 = v39;
      goto LABEL_59;
    }

    if (v34)
    {
LABEL_59:
      v40 = strerror(v18);
      sub_10004565C("unable to flush deferred repairs: %s\n", v40);
      v29 = 900;
      v30 = v18;
      goto LABEL_27;
    }
  }

  v33 = v41;
  if (a3)
  {
LABEL_52:
    if (*(a3 + 12) == 1)
    {
      if (v48 == *(&v46 + 1))
      {
        *(*(a3 + 40) + 264) &= ~4uLL;
      }

      sub_100046EA0(a2, a3);
      v18 = 0;
      *(a3 + 12) = 0;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_24;
  }

  v18 = 0;
  v28 = v42;
LABEL_39:
  free(v33);
LABEL_40:
  if (v28)
  {
    free(v28);
  }

LABEL_6:
  if (a5)
  {
    *a5 += *(&v46 + 1);
  }

  if (a6)
  {
    *a6 += v47;
  }

  if (a7)
  {
    *a7 += v48;
  }

  if (a8)
  {
    *a8 += v49;
  }

  sub_10003B928(a1, 0);
  return v18;
}

uint64_t sub_100028500(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v8) = a2;
  v10 = *a5;
  v11 = *(a5 + 8);
  v12 = sub_100028998(a1, a2, (a5 + 16), *(a5 + 36));
  if (v12)
  {
    sub_100028AB4(a5);
    v13 = *a1 & 0xF;
    if (v13 >= 0xB)
    {
      return 22;
    }

    goto LABEL_6;
  }

  v13 = *a1 & 0xF;
  if (v13 >= 0xB)
  {
    return 22;
  }

  if (*(a5 + 40) == 1)
  {
LABEL_6:
    v59 = v8;
    v58 = off_100078758[v13];
    v60 = v10;
    v14 = sub_10001C8B8(*v10);
    if (!v14)
    {
      LOBYTE(v16) = 0;
      v18 = 0;
      v19 = v11 + 3;
      v20 = 1;
      while (1)
      {
        v21 = v20;
        if (v11)
        {
          v22 = v19[v18];
          if (v22)
          {
            v23 = sub_10001C8B8(v22);
            if (v23)
            {
              break;
            }
          }
        }

        v20 = 0;
        v16 = 1;
        v18 = 1;
        if ((v21 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v14 = v23;
      if ((v16 & 1) != 0 && *v19)
      {
        sub_10001C8C0(*v19);
      }

      sub_10001C8C0(*v60);
    }

    v15 = strerror(v14);
    sub_100045744("error starting transaction: %s\n", v15);
    sub_100049C40(0x36E, v14);
    v16 = 0;
LABEL_14:
    if (v12)
    {
      v8 = v59;
      v24 = v60;
      if (!v11)
      {
        goto LABEL_23;
      }

      v25 = v11[6];
      if (!v25)
      {
        v25 = v11[5];
      }

      if ((*(v25 + 56) & 0x20) == 0 || (*a1 & 0xF) != 7)
      {
LABEL_23:
        v26 = 0;
        goto LABEL_26;
      }

      if ((byte_10009A35D & 1) == 0)
      {
        sub_100045744("sealed volume fsroot corruptions cannot be repaired and will automatically be skipped\n");
        byte_10009A35D = 1;
      }

      v26 = 2;
    }

    else
    {
      v26 = 1;
      v8 = v59;
    }

    v24 = v60;
LABEL_26:
    v27 = (v58)(v24, v11, a1, v8, a3, a4, v26);
    v17 = v27;
    *(a5 + 40) = v27 != 89;
    if (v27)
    {
      if (v27 == 89)
      {
        v28 = 0;
        v17 = (*a1 << 20 >> 31) & 0x5C;
      }

      else
      {
        ++*(a5 + 88);
        ++*(a5 + 56);
        v28 = 1;
      }
    }

    else
    {
      ++*(a5 + 80);
      sub_100049BF0();
      v28 = 0;
    }

    if ((*a1 & 0x800) != 0)
    {
      ++*(a5 + 72);
    }

    if (!v16)
    {
      goto LABEL_99;
    }

    v29 = *v24;
    if (v28)
    {
      v30 = sub_10001C8D0(v29);
      if (!v30)
      {
        v30 = sub_10002CB38(v24);
      }

      if (v11)
      {
        v31 = 0;
        v32 = 0;
        v33 = 1;
        do
        {
          v34 = v33;
          v35 = v11[v31 + 3];
          if (v35)
          {
            v36 = sub_10001C8D0(v35);
            if (!v32)
            {
              v32 = v36;
            }
          }

          v33 = 0;
          v31 = 1;
        }

        while ((v34 & 1) != 0);
        if (!v32)
        {
          v32 = sub_10002CDEC(v60, v11);
        }
      }

      else
      {
        v32 = 0;
      }

      if (!v30)
      {
        v30 = v32;
      }

      if (!v30)
      {
        goto LABEL_96;
      }

      v46 = strerror(v30);
      sub_10004565C("error aborting transaction: %s\n", v46);
      v47 = 901;
      goto LABEL_95;
    }

    v37 = sub_10001C8C0(v29);
    v38 = v37 == 84;
    if (v11)
    {
      v61 = v37;
      v39 = 0;
      v40 = 0;
      v41 = 1;
      do
      {
        v42 = v41;
        v43 = v11[v39 + 3];
        if (v43)
        {
          v44 = sub_10001C8C0(v43);
          if (v44)
          {
            if (v44 == 84)
            {
              v38 = 1;
            }

            if (v40 == 84 || !v40)
            {
              v40 = v44;
            }
          }
        }

        v41 = 0;
        v39 = 1;
      }

      while ((v42 & 1) != 0);
      if (v61 == 84)
      {
        v30 = 0;
      }

      else
      {
        v30 = v61;
      }

      if (v40 == 84)
      {
        v45 = 0;
      }

      else
      {
        v45 = v40;
      }

      LODWORD(v8) = v59;
      if (v30)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v45 = 0;
      if (v37 == 84)
      {
        v30 = 0;
      }

      else
      {
        v30 = v37;
      }

      if (v30)
      {
        goto LABEL_88;
      }
    }

    if (v38 && !v45)
    {
      v48 = sub_10001C8C8(*v24);
      v30 = v48;
      if (!v11 || v48)
      {
        if (!v48)
        {
LABEL_96:
          if (v17)
          {
            v17 = v17;
          }

          else
          {
            v17 = v30;
          }

          goto LABEL_99;
        }
      }

      else
      {
        v49 = 0;
        v50 = v11 + 3;
        v51 = 1;
        while (1)
        {
          v52 = v51;
          v53 = v50[v49];
          if (v53)
          {
            v54 = sub_10001C8C8(v53);
            if (v54)
            {
              break;
            }
          }

          v51 = 0;
          v49 = 1;
          if ((v52 & 1) == 0)
          {
            v30 = 0;
            goto LABEL_96;
          }
        }

        v30 = v54;
      }

      goto LABEL_94;
    }

LABEL_88:
    if (!v30)
    {
      v30 = v45;
      if (!v45)
      {
        goto LABEL_96;
      }
    }

LABEL_94:
    v55 = strerror(v30);
    sub_10004565C("error ending transaction: %s\n", v55);
    v47 = 879;
LABEL_95:
    sub_100049C40(v47, v30);
    goto LABEL_96;
  }

  if ((*a1 & 0x800) != 0)
  {
    ++*(a5 + 72);
    v17 = 92;
  }

  else
  {
    v17 = 0;
  }

LABEL_99:
  if (v8 >= 0x11)
  {
    v56 = 17;
  }

  else
  {
    v56 = v8;
  }

  *(a5 + 36) = v56;
  memcpy((a5 + 16), a1, v56);
  ++*(a5 + 48);
  return v17;
}

uint64_t sub_10002897C(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*a1 & 0x800) != 0)
  {
    ++*(a5 + 72);
  }

  return 0;
}

uint64_t sub_100028998(unsigned __int16 *a1, unsigned int a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = *a1;
  v5 = v4 & 0xF;
  v6 = *a3;
  if (v5 < (v6 & 0xF))
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 > (v6 & 0xF))
  {
    return 1;
  }

  if (v5 != 4)
  {
    v8 = 0;
    if (a4 >= 0xD && a2 >= 0xD)
    {
      v9 = 0;
      if (v5 != 7)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  v8 = 0;
  if (a2 < 0xD)
  {
    goto LABEL_22;
  }

  v9 = 0;
  if (a4 < 0xD)
  {
    goto LABEL_23;
  }

LABEL_12:
  v10 = *(a1 + 5) >> 60;
  v11 = *(a3 + 5) >> 60;
  if (a4 >= 0x11 && a2 >= 0x11 && v10 == 14 && v11 == 14)
  {
    LODWORD(v10) = *(a1 + 13);
    LODWORD(v11) = *(a3 + 13);
  }

  v8 = a1;
  v9 = a3;
  if (v10 < v11)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 1;
  }

  if (v10 == v11)
  {
LABEL_23:
    v12 = (v4 >> 4) & 3;
    v13 = (v6 >> 4) & 3;
    if (v12 >= v13)
    {
      if (v12 > v13)
      {
        return 1;
      }

      if (v12 != 1)
      {
        return 0;
      }

      v14 = (v4 >> 6) & 0x1F;
      v15 = (v6 >> 6) & 0x1F;
      if (v14 >= v15)
      {
        if (v14 > v15)
        {
          return 1;
        }

        if (!v8 || !v9)
        {
          return 0;
        }

        v16 = *(v8 + 4);
        v17 = *(v9 + 4);
        if (v16 >= v17)
        {
          return v16 > v17;
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100028AB4(uint64_t result)
{
  v1 = result;
  v3 = (result + 48);
  v2 = *(result + 48);
  if (v2 >= 2)
  {
    if (*(result + 40))
    {
      v4 = "Applied";
    }

    else
    {
      v4 = "Skipped";
    }

    result = sub_100045428("%s %llu/%llu repairs of this type in total.\n", v4, v2 - *(result + 56), v2);
  }

  *(v1 + 40) = 0;
  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t sub_100028B2C(uint64_t *a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v10 = *a3;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10002CE54(a1, v10 & 0xF, &v20);
  if (!result)
  {
    v12 = *(a3 + 1);
    v13 = *(a3 + 5);
    v19[0] = v12;
    v19[1] = v13;
    v14 = *a3;
    v15 = (v14 >> 4) & 3;
    if (v15 == 2)
    {
      v16 = (v14 & 0x800) == 0;
      v18 = sub_10004565C;
      if (v16)
      {
        v18 = sub_100045744;
      }

      v18("need to insert spaceman free queue tree entry (0x%llx+%llu, xid %llu) to replace existing overlapping ranges\n", v13, *a5, v12);
      return sub_100029480(v20, 0, v19, 16, a5, 8, "free queue tree entry", v7);
    }

    else if (v15)
    {
      return 22;
    }

    else
    {
      v16 = (v14 & 0x800) == 0;
      v17 = sub_10004565C;
      if (v16)
      {
        v17 = sub_100045744;
      }

      v17("found spaceman free queue tree entry (0x%llx, xid %llu) which overlaps with existing range\n", v13, v12);
      return sub_10002955C(v20, 0, v19, 16, 0, "free queue tree entry", v7 != 0);
    }
  }

  return result;
}

uint64_t sub_100028C70(uint64_t *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10002CF5C(a1, a2, &v17);
  if (!result)
  {
    v13 = *(a3 + 2);
    v14 = *(a3 + 10);
    v16[0] = v13;
    v16[1] = v14;
    v15 = sub_10004565C;
    if ((*a3 & 0x800) == 0)
    {
      v15 = sub_100045744;
    }

    v15("found orphan omap mapping (oid %llu xid %llu)\n", v13, v14);
    result = sub_10002955C(v17, 0, v16, 16, 0, "omap mapping", a7 != 0);
    if (!result)
    {
      if (*a5)
      {
        return 0;
      }

      else
      {
        return sub_100002C74(a1, a2, *(a5 + 8), (*(a5 + 4) / *(a1[1] + 36)));
      }
    }
  }

  return result;
}

uint64_t sub_100028D6C(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, int a7)
{
  v7 = *a3 & 0xF;
  if (v7 == 4)
  {
    return sub_100004C90(a1, a2, (a3 + 5), a5, a7 != 0);
  }

  if (v7 == 3)
  {
    return sub_100004B50(a1, a2, *(a3 + 2), *a5, a5[1], a7 != 0);
  }

  return 22;
}

uint64_t sub_100028E00(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v10;
  v24[3] = v10;
  v24[0] = v10;
  v24[1] = v10;
  v11 = *(a3 + 1);
  result = sub_1000402AC(v24, a1, a2, v11);
  if (!result)
  {
    v13 = *a3;
    v14 = (v13 >> 4) & 3;
    if (v14 == 2)
    {
      v15 = (v13 & 0x800) == 0;
      v18 = sub_10004565C;
      if (v15)
      {
        v18 = sub_100045744;
      }

      if (v11)
      {
        v19 = "missing/invalid physical extent (%llu + %llu) with refcnt %d at snapshot %llu\n";
      }

      else
      {
        v19 = "missing/invalid physical extent (%llu + %llu) with refcnt %d\n";
      }

      v18(v19);
      v22 = *(a3 + 5) >> 60;
      if (v22 == 14)
      {
        LODWORD(v22) = *(a3 + 18);
      }

      v23 = sub_10003EDFC(v22);
      return sub_100029480(v24, v11, a3 + 5, 8, a5, 20, v23, v7);
    }

    else if (v14)
    {
      return 22;
    }

    else
    {
      v15 = (v13 & 0x800) == 0;
      v16 = sub_10004565C;
      if (v15)
      {
        v16 = sub_100045744;
      }

      if (v11)
      {
        v17 = "orphan/invalid physical extent (%llu) at snapshot %llu\n";
      }

      else
      {
        v17 = "orphan/invalid physical extent (%llu)\n";
      }

      v16(v17);
      v20 = *(a3 + 5) >> 60;
      if (v20 == 14)
      {
        LODWORD(v20) = *(a3 + 18);
      }

      v21 = sub_10003EDFC(v20);
      return sub_10002955C(v24, v11, (a3 + 5), 8, 0, v21, v7 != 0);
    }
  }

  return result;
}

uint64_t sub_100028FB0(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, _WORD *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  if ((byte_10009A35C & 1) == 0)
  {
    sub_100045744("detected invalid fsroot tree nodes (& thus data loss), pruning the nodes to make the system usable\n", a2, a3, a4);
    byte_10009A35C = 1;
  }

  v21 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10002D5F0(a1, a2, &v21);
  if (!result)
  {
    v14 = a3[1];
    v15 = *a3;
    v16 = (v15 >> 4) & 3;
    if (v16 == 2)
    {
      v18 = (v15 & 0x800) == 0;
      v20 = sub_10004565C;
      if (v18)
      {
        v20 = sub_100045744;
      }

      v20("need to insert key at id (%llu) to repair invalid internal node\n", *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL);
      return sub_100029480(v21, 0, a3 + 5, v14, a5, a6, "btree node", v7);
    }

    else if (v16)
    {
      return 22;
    }

    else
    {
      v17 = *a5 + 1;
      v18 = (v15 & 0x800) == 0;
      v19 = sub_10004565C;
      if (v18)
      {
        v19 = sub_100045744;
      }

      v19("found invalid fsroot btree node key id (%llu)\n", *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL);
      return sub_10002955C(v21, 0, a3 + 5, v14, v17, "btree node", v7);
    }
  }

  return result;
}

uint64_t sub_100029134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10002D134(a1, a2, &v15);
  if (!result)
  {
    v12 = *(a3 + 2);
    v14 = v12;
    v13 = sub_10004565C;
    if ((*a3 & 0x800) == 0)
    {
      v13 = sub_100045744;
    }

    v13("no file key rolling entry found for inode object (%llu)\n", v12);
    return sub_100029480(v15, 0, &v14, 8, a5, a6, "file key rolling", v7);
  }

  return result;
}

uint64_t sub_1000291EC(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10002D210(a1, a2, &v19);
  if (!result)
  {
    v12 = *(a3 + 1);
    v18 = v12;
    v13 = *a3;
    v14 = (v13 >> 4) & 3;
    if (v14 == 2)
    {
      v15 = (v13 & 0x800) == 0;
      v17 = sub_10004565C;
      if (v15)
      {
        v17 = sub_100045744;
      }

      v17("inode with file-id %llu has doc-id %u but doc-id tree record is missing or points to another inode\n", *a5, v12);
      return sub_100029480(v19, 0, &v18, 4, a5, a6, "doc-id tree entry", v7);
    }

    else if (v14)
    {
      return 22;
    }

    else
    {
      v15 = (v13 & 0x800) == 0;
      v16 = sub_10004565C;
      if (v15)
      {
        v16 = sub_100045744;
      }

      v16("doc-id tree record exists for doc-id %u, but no inode references this doc-id\n", v12);
      return sub_10002955C(v19, 0, &v18, 4, 0, "doc-id tree entry", v7 != 0);
    }
  }

  return result;
}

uint64_t sub_100029324(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10002D530(a1, a2, &v18);
  if (!result)
  {
    *v17 = *(a3 + 1);
    *&v17[9] = *(a3 + 11);
    v12 = *a3;
    v13 = (v12 >> 4) & 3;
    if (v13 == 2)
    {
      v14 = (v12 & 0x800) == 0;
      v16 = sub_10004565C;
      if (v14)
      {
        v16 = sub_100045744;
      }

      v16("clone group mapping record missing for (group_id %llu, private_id %llu, file_id %llu)\n", *v17, *&v17[9], *&v17[17]);
      return sub_100029480(v18, 0, v17, 25, a5, a6, "clone group tree entry", v7);
    }

    else if (v13)
    {
      return 22;
    }

    else
    {
      v14 = (v12 & 0x800) == 0;
      v15 = sub_10004565C;
      if (v14)
      {
        v15 = sub_100045744;
      }

      v15("clone group mapping record exists for (group_id %llu, private_id %llu, file_id %llu), but no inode refers to it\n", *v17, *&v17[9], *&v17[17]);
      return sub_10002955C(v18, 0, v17, 25, 0, "clone group tree entry", v7 != 0);
    }
  }

  return result;
}

uint64_t sub_100029480(_DWORD *a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5, uint64_t a6, const char *a7, int a8)
{
  if (a8 != 1 && (a8 == 2 || !sub_10004758C(qword_10009BA58, "Insert missing %s objects? ", a7)))
  {
    return 89;
  }

  v15 = sub_10003B12C(a1, a2, a3, a4, a5, a6);
  v16 = v15;
  if (v15)
  {
    v17 = strerror(v15);
    sub_10004565C("failed to insert %s object: %s\n", a7, v17);
    sub_100049C40(0x28F, v16);
  }

  return v16;
}

uint64_t sub_10002955C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, int a7)
{
  v8 = a5;
  if (a7 != 1 && (a7 == 2 || !sub_10004758C(qword_10009BA58, "Remove orphan/invalid %s objects? ", a6)))
  {
    return 89;
  }

  v13 = sub_10003B3FC(a1, a2, a3, a4, v8);
  v14 = v13;
  if (v13)
  {
    if (v13 == 2)
    {
      sub_100045744("tried to remove %s object but it wasn't there!\n", a6);
      return 0;
    }

    else
    {
      v15 = strerror(v13);
      sub_10004565C("failed to remove %s object: %s\n", a6, v15);
      sub_100049C40(0x28D, v14);
    }
  }

  return v14;
}

uint64_t sub_100029648(uint64_t a1, void *a2, unsigned __int16 *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10003F8AC(a1, a2, 3u, &v19);
  if (!result)
  {
    v11 = a3[1];
    v12 = *a3;
    v13 = (v12 >> 6) & 0x1F;
    result = 22;
    if (v13 > 0x10)
    {
      if (((v12 >> 6) & 0x1F) <= 0x12)
      {
        if (v13 == 17)
        {
          v14 = (v12 & 0x800) == 0;
          v15 = sub_10004565C;
          if (v14)
          {
            v15 = sub_100045744;
          }

          v16 = "need to set flags (0x%llx) in inode (object-id %llu)\n";
        }

        else
        {
          if (v13 != 18)
          {
            return result;
          }

          v14 = (v12 & 0x800) == 0;
          v15 = sub_10004565C;
          if (v14)
          {
            v15 = sub_100045744;
          }

          v16 = "need to clear flags (0x%llx) in inode (object-id %llu)\n";
        }
      }

      else
      {
        switch(v13)
        {
          case 0x13u:
            v14 = (v12 & 0x800) == 0;
            v15 = sub_10004565C;
            if (v14)
            {
              v15 = sub_100045744;
            }

            v16 = "need to set bsd flags (0x%x) in inode (object-id %llu)\n";
            break;
          case 0x14u:
            v14 = (v12 & 0x800) == 0;
            v15 = sub_10004565C;
            if (v14)
            {
              v15 = sub_100045744;
            }

            v16 = "need to clear bsd flags (0x%x) in inode (object-id %llu)\n";
            break;
          case 0x15u:
            v14 = (v12 & 0x800) == 0;
            v15 = sub_10004565C;
            if (v14)
            {
              v15 = sub_100045744;
            }

            v16 = "dir_nlink of inode object (id %llu) does not match expected value (%d)\n";
            break;
          default:
            return result;
        }
      }
    }

    else if (((v12 >> 6) & 0x1F) <= 0xD)
    {
      if (v13 == 12)
      {
        v14 = (v12 & 0x800) == 0;
        v15 = sub_10004565C;
        if (v14)
        {
          v15 = sub_100045744;
        }

        v16 = "nchildren of inode object (id %llu) does not match expected value (%d)\n";
      }

      else
      {
        if (v13 != 13)
        {
          return result;
        }

        v14 = (v12 & 0x800) == 0;
        v15 = sub_10004565C;
        if (v14)
        {
          v15 = sub_100045744;
        }

        v16 = "alloced_size of dstream (object-id %llu) does not match minimum found size (%llu)\n";
      }
    }

    else
    {
      switch(v13)
      {
        case 0xEu:
          v14 = (v12 & 0x800) == 0;
          v15 = sub_10004565C;
          if (v14)
          {
            v15 = sub_100045744;
          }

          v16 = "need to update default_crypto_id (%llu) of dstream (object-id %llu) with missing crypto state\n";
          break;
        case 0xFu:
          if ((v12 & 0x800) != 0)
          {
            v17 = sub_10004565C;
          }

          else
          {
            v17 = sub_100045744;
          }

          v18 = sub_10003EE2C(a3 + 5, *a5);
          v17("found unexpected %s xfield associated with inode (object-id %llu)\n", v18, *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL);
          return sub_10002AC58(v19, (*a3 >> 6) & 0x1F, a3 + 5, v11, a5, v7);
        case 0x10u:
          v14 = (v12 & 0x800) == 0;
          v15 = sub_10004565C;
          if (v14)
          {
            v15 = sub_100045744;
          }

          v16 = "need to update inode (object-id %llu) sparse bytes with (%llu)\n";
          break;
        default:
          return result;
      }
    }

    v15(v16);
    return sub_10002AC58(v19, (*a3 >> 6) & 0x1F, a3 + 5, v11, a5, v7);
  }

  return result;
}

uint64_t sub_1000299C4(uint64_t a1, void *a2, unsigned __int16 *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10003F8AC(a1, a2, 4u, &v20);
  if (!result)
  {
    v11 = a3[1];
    v12 = *a3;
    v13 = (v12 >> 4) & 3;
    if (v13 == 1)
    {
      v14 = (v12 & 0x800) == 0;
      v19 = sub_10004565C;
      if (v14)
      {
        v19 = sub_100045744;
      }

      v19("found xattr dstream (id %llu, name %.*s) that references a missing crypto state\n", *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL, *(a3 + 13), a3 + 15);
      return sub_10002AC58(v20, 25, a3 + 5, v11, a5, v7);
    }

    else if (v13)
    {
      return 22;
    }

    else
    {
      v14 = (v12 & 0x800) == 0;
      v15 = sub_10004565C;
      if (v14)
      {
        v15 = sub_100045744;
      }

      v15("found orphan/invalid xattr (id %llu, name %.*s)\n", *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL, *(a3 + 13), a3 + 15);
      v16 = v20;
      v17 = *(a3 + 5) >> 60;
      if (v17 == 14)
      {
        LODWORD(v17) = *(a3 + 13);
      }

      v18 = sub_10003EDFC(v17);
      return sub_10002955C(v16, 0, a3 + 5, v11, 0, v18, v7 != 0);
    }
  }

  return result;
}

uint64_t sub_100029B28(uint64_t a1, void *a2, unsigned __int16 *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v37 = 0;
  v11 = (a3 + 5);
  v12 = a3[1];
  v13 = *(a3 + 5) >> 60;
  result = sub_10003F8AC(a1, a2, v13, &v37);
  if (result)
  {
    return result;
  }

  if (v13 == 8)
  {
    goto LABEL_13;
  }

  if (v13 != 6)
  {
    return 22;
  }

  v15 = *a3;
  v16 = (v15 >> 4) & 3;
  if (v16 <= 1)
  {
    v17 = (v15 & 0x800) == 0;
    if (!v16)
    {
      v18 = sub_10004565C;
      if (v17)
      {
        v18 = sub_100045744;
      }

      v18("found orphan dstream id object (id %llu)\n", *v11 & 0xFFFFFFFFFFFFFFFLL);
      v19 = v37;
      v20 = *v11;
LABEL_23:
      v29 = v20 >> 60;
      if (v20 >> 60 == 14)
      {
        LODWORD(v29) = *(a3 + 13);
      }

      v30 = sub_10003EDFC(v29);
      return sub_10002955C(v19, 0, v11, v12, 0, v30, v7 != 0);
    }

    v36 = sub_10004565C;
    if (v17)
    {
      v36 = sub_100045744;
    }

    v35 = "refcnt of dstream id object (id %llu) less than expected\n";
LABEL_43:
    v36(v35);
    return sub_10002AC58(v37, (*a3 >> 6) & 0x1F, v11, v12, a5, v7);
  }

  if (v16 != 2)
  {
LABEL_13:
    if (a6)
    {
      v24 = *a5 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = 0;
    }

    v25 = *a3;
    v26 = (v25 >> 4) & 3;
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v31 = sub_10004565C;
        if ((v25 & 0x800) == 0)
        {
          v31 = sub_100045744;
        }

        v31("found file extent gap (id %llu) at logical address %llu+%llu\n", *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL, *(a3 + 13), v24);
        v22 = v37;
        v23 = *(a3 + 5);
        goto LABEL_30;
      }
    }

    else
    {
      if (!v26)
      {
        v27 = sub_10004565C;
        if ((v25 & 0x800) == 0)
        {
          v27 = sub_100045744;
        }

        v28 = "invalid";
        if ((v25 & 0x800) == 0)
        {
          v28 = "orphan";
        }

        v27("found %s file extent object (id %llu) at logical address %llu\n", v28, *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL, *(a3 + 13));
        v19 = v37;
        v20 = *(a3 + 5);
        goto LABEL_23;
      }

      v34 = (v25 >> 6) & 0x1F;
      if (v34 == 10)
      {
        v35 = "found file extent overlap (id %llu) with next extent / end of dstream at logical address %llu+%llu\n";
LABEL_41:
        v36 = sub_10004565C;
        if ((v25 & 0x800) == 0)
        {
          v36 = sub_100045744;
        }

        goto LABEL_43;
      }

      if (v34 == 11)
      {
        v35 = "need to make file extent with missing crypto state (id %llu) at logical address %llu+%llu sparse\n";
        goto LABEL_41;
      }
    }

    return 22;
  }

  v17 = (v15 & 0x800) == 0;
  v21 = sub_10004565C;
  if (v17)
  {
    v21 = sub_100045744;
  }

  v21("dstream (id %llu) does not have an associated dstream id object\n", *v11 & 0xFFFFFFFFFFFFFFFLL);
  v22 = v37;
  v23 = *v11;
LABEL_30:
  v32 = v23 >> 60;
  if (v23 >> 60 == 14)
  {
    LODWORD(v32) = *(a3 + 13);
  }

  v33 = sub_10003EDFC(v32);
  return sub_100029480(v22, 0, v11, v12, a5, a6, v33, v7);
}

uint64_t sub_100029E6C(uint64_t a1, void *a2, unsigned __int16 *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10003F8AC(a1, a2, 7u, &v21);
  if (result)
  {
    return result;
  }

  v11 = a3[1];
  v12 = *a3;
  v13 = (v12 >> 4) & 3;
  if (v13 == 1)
  {
    v18 = (v12 >> 6) & 0x1F;
    if (v18 == 23)
    {
      v19 = sub_10004565C;
      if ((v12 & 0x800) == 0)
      {
        v19 = sub_100045744;
      }

      v20 = "need to increment crypto state object (id %llu) refcount (%u)\n";
    }

    else
    {
      if (v18 != 22)
      {
        return 22;
      }

      v19 = sub_10004565C;
      if ((v12 & 0x800) == 0)
      {
        v19 = sub_100045744;
      }

      v20 = "refcnt of crypto state object (id %llu) is %s than expected (%u)\n";
    }

    v19(v20);
    return sub_10002AC58(v21, (*a3 >> 6) & 0x1F, a3 + 5, v11, a5, v7);
  }

  if (v13)
  {
    return 22;
  }

  v14 = sub_10004565C;
  if ((v12 & 0x800) == 0)
  {
    v14 = sub_100045744;
  }

  v14("found orphan/unexpected crypto state object (id %llu)\n", *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL);
  v15 = v21;
  v16 = *(a3 + 5) >> 60;
  if (v16 == 14)
  {
    LODWORD(v16) = *(a3 + 13);
  }

  v17 = sub_10003EDFC(v16);
  return sub_10002955C(v15, 0, a3 + 5, v11, 0, v17, v7 != 0);
}

uint64_t sub_10002A028(uint64_t a1, void *a2, unsigned __int16 *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10003F8AC(a1, a2, 9u, &v20);
  if (!result)
  {
    v11 = a3[1];
    v12 = *a3;
    v13 = (v12 >> 4) & 3;
    if (v13 == 1)
    {
      v14 = (v12 & 0x800) == 0;
      v19 = sub_10004565C;
      if (v14)
      {
        v19 = sub_100045744;
      }

      v19("found invalid directory record object (id %llu)\n", *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL);
      return sub_10002AC58(v20, 24, a3 + 5, v11, a5, v7);
    }

    else if (v13)
    {
      return 22;
    }

    else
    {
      v14 = (v12 & 0x800) == 0;
      v15 = sub_10004565C;
      if (v14)
      {
        v15 = sub_100045744;
      }

      v15("found orphan directory record object (id %llu)\n", *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL);
      v16 = v20;
      v17 = *(a3 + 5) >> 60;
      if (v17 == 14)
      {
        LODWORD(v17) = *(a3 + 13);
      }

      v18 = sub_10003EDFC(v17);
      return sub_10002955C(v16, 0, a3 + 5, v11, 0, v18, v7 != 0);
    }
  }

  return result;
}

uint64_t sub_10002A174(uint64_t a1, void *a2, unsigned __int16 *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v31 = 0;
  v11 = (a3 + 5);
  v12 = *(a3 + 5) >> 60;
  if (v12 == 14)
  {
    LODWORD(v12) = *(a3 + 13);
  }

  v13 = *(v11 - 3);
  result = sub_10003F8AC(a1, a2, v12, &v31);
  if (!result)
  {
    v15 = *a3;
    v16 = (v15 >> 4) & 3;
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        return 22;
      }

      v17 = (v15 & 0x800) == 0;
      v22 = sub_10004565C;
      if (v17)
      {
        v22 = sub_100045744;
      }

      v22("dir-stats (id %llu) is missing\n", *v11 & 0xFFFFFFFFFFFFFFFLL);
      v23 = v31;
      v24 = *v11 >> 60;
      if (v24 == 14)
      {
        LODWORD(v24) = *(a3 + 13);
      }

      v25 = sub_10003EDFC(v24);
      return sub_100029480(v23, 0, v11, v13, a5, a6, v25, v7);
    }

    if (!v16)
    {
      v17 = (v15 & 0x800) == 0;
      v18 = sub_10004565C;
      if (v17)
      {
        v18 = sub_100045744;
      }

      v18("found invalid dir-stats object (id %llu)\n", *v11 & 0xFFFFFFFFFFFFFFFLL);
      v19 = v31;
      v20 = *v11 >> 60;
      if (v20 == 14)
      {
        LODWORD(v20) = *(a3 + 13);
      }

      v21 = sub_10003EDFC(v20);
      return sub_10002955C(v19, 0, v11, v13, 0, v21, v7 != 0);
    }

    v26 = (v15 >> 6) & 0x1F;
    result = 22;
    if (v26 <= 4)
    {
      if (((v15 >> 6) & 0x1F) > 2)
      {
        if (v26 == 3)
        {
          v17 = (v15 & 0x800) == 0;
          v27 = sub_10004565C;
          if (v17)
          {
            v27 = sub_100045744;
          }

          v28 = "flags of dir-stats object (id %llu) does not match expected value (0x%x)\n";
        }

        else
        {
          if (v26 != 4)
          {
            return result;
          }

          v17 = (v15 & 0x800) == 0;
          v27 = sub_10004565C;
          if (v17)
          {
            v27 = sub_100045744;
          }

          v28 = "origin_id of dir-stats object (id %llu) does not match expected value (%llu)\n";
        }
      }

      else if (v26 == 1)
      {
        v17 = (v15 & 0x800) == 0;
        v27 = sub_10004565C;
        if (v17)
        {
          v27 = sub_100045744;
        }

        v28 = "chained key of dir-stats object (id %llu) does not match expected value (%llu)\n";
      }

      else
      {
        if (v26 != 2)
        {
          return result;
        }

        v17 = (v15 & 0x800) == 0;
        v27 = sub_10004565C;
        if (v17)
        {
          v27 = sub_100045744;
        }

        v28 = "descendants of dir-stats object (id %llu) does not match expected value (%llu)\n";
      }

      goto LABEL_57;
    }

    if (((v15 >> 6) & 0x1F) > 6)
    {
      if (v26 != 7)
      {
        if (v26 != 8)
        {
          return result;
        }

        if ((v15 & 0x800) != 0)
        {
          v29 = sub_10004565C;
        }

        else
        {
          v29 = sub_100045744;
        }

        sub_10003EE2C(v11, *a5);
        v30 = "%s xfield of dir-stats object (id %llu) does not match expected value (%llu)\n";
        goto LABEL_44;
      }

      v17 = (v15 & 0x800) == 0;
      v27 = sub_10004565C;
      if (v17)
      {
        v27 = sub_100045744;
      }

      v28 = "resource fork size of dir-stats object (id %llu) does not match expected value (%llu)\n";
    }

    else
    {
      if (v26 != 5)
      {
        if (v26 != 6)
        {
          return result;
        }

        if ((v15 & 0x800) != 0)
        {
          v29 = sub_10004565C;
        }

        else
        {
          v29 = sub_100045744;
        }

        sub_10003EE2C(v11, *a5);
        v30 = "%s xfield of dir-stats object (id %llu) exists unexpectedly\n";
LABEL_44:
        v29(v30);
        return sub_10002AC58(v31, (*a3 >> 6) & 0x1F, v11, v13, a5, v7);
      }

      v17 = (v15 & 0x800) == 0;
      v27 = sub_10004565C;
      if (v17)
      {
        v27 = sub_100045744;
      }

      v28 = "physical size of dir-stats object (id %llu) does not match expected value (%llu)\n";
    }

LABEL_57:
    v27(v28);
    return sub_10002AC58(v31, (*a3 >> 6) & 0x1F, v11, v13, a5, v7);
  }

  return result;
}

uint64_t sub_10002A5B0(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v23 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10002D2DC(a1, a2, &v23);
  if (!result)
  {
    v11 = a3[1];
    v12 = *a3;
    v13 = (v12 >> 4) & 3;
    if (v13 == 2)
    {
      v14 = (v12 & 0x800) == 0;
      v19 = sub_10004565C;
      if (v14)
      {
        v19 = sub_100045744;
      }

      v19("no snap_name entry found for snap_meta entry with xid %llu and name %.*s\n", *a5, *(a3 + 13), a3 + 15);
      v20 = v23;
      v21 = *(a3 + 5) >> 60;
      if (v21 == 14)
      {
        LODWORD(v21) = *(a3 + 13);
      }

      v22 = sub_10003EDFC(v21);
      return sub_100029480(v20, 0, a3 + 5, v11, a5, 8, v22, a7);
    }

    else if (v13)
    {
      return 22;
    }

    else
    {
      v14 = (v12 & 0x800) == 0;
      v15 = sub_10004565C;
      if (v14)
      {
        v15 = sub_100045744;
      }

      v15("no snap_meta entry found for snap_name entry with name %.*s\n", *(a3 + 13), a3 + 15);
      v16 = v23;
      v17 = *(a3 + 5) >> 60;
      if (v17 == 14)
      {
        LODWORD(v17) = *(a3 + 13);
      }

      v18 = sub_10003EDFC(v17);
      return sub_10002955C(v16, 0, a3 + 5, v11, 0, v18, a7 != 0);
    }
  }

  return result;
}

uint64_t sub_10002A72C(uint64_t a1, void *a2, unsigned __int16 *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v10 = (a3 + 5);
  v11 = a3[1];
  v12 = *(a3 + 5) >> 60;
  v13 = v10[1];
  v26 = 0;
  result = sub_10003F8AC(a1, a2, v12, &v26);
  if (result)
  {
    return result;
  }

  v15 = *a3;
  v16 = (v15 >> 4) & 3;
  if (v16 != 1)
  {
    if (!v16)
    {
      if (HIBYTE(v13) == 2)
      {
        v17 = (v15 & 0x800) == 0;
        v18 = sub_10004565C;
        if (v17)
        {
          v18 = sub_100045744;
        }

        v19 = "file info: found orphan attribution tag with hash (%llu)\n";
        goto LABEL_25;
      }

      if (HIBYTE(v13) == 1)
      {
        v17 = (v15 & 0x800) == 0;
        v18 = sub_10004565C;
        if (v17)
        {
          v18 = sub_100045744;
        }

        v19 = "file info: found orphan data hash (id %llu) at logical address %llu\n";
LABEL_25:
        v18(v19);
        v23 = v26;
        v24 = *v10 >> 60;
        if (v24 == 14)
        {
          LODWORD(v24) = *(a3 + 13);
        }

        v25 = sub_10003EDFC(v24);
        return sub_10002955C(v23, 0, v10, v11, 0, v25, v7 != 0);
      }
    }

    return 22;
  }

  v20 = (v15 >> 6) & 0x1F;
  result = 22;
  if (v20 <= 0x1B)
  {
    if (v20 == 26)
    {
      v17 = (v15 & 0x800) == 0;
      v21 = sub_10004565C;
      if (v17)
      {
        v21 = sub_100045744;
      }

      v22 = "file info: attribution tag (hash %llu) with invalid jobj_id (%llu)\n";
    }

    else
    {
      if (v20 != 27)
      {
        return result;
      }

      v17 = (v15 & 0x800) == 0;
      v21 = sub_10004565C;
      if (v17)
      {
        v21 = sub_100045744;
      }

      v22 = "file info: attribution tag with invalid hash (%llu)\n";
    }
  }

  else
  {
    switch(v20)
    {
      case 0x1Cu:
        v17 = (v15 & 0x800) == 0;
        v21 = sub_10004565C;
        if (v17)
        {
          v21 = sub_100045744;
        }

        v22 = "file info: attribution tag (hash %llu): total count does not match expected value (%llu)\n";
        break;
      case 0x1Du:
        v17 = (v15 & 0x800) == 0;
        v21 = sub_10004565C;
        if (v17)
        {
          v21 = sub_100045744;
        }

        v22 = "file info: attribution tag (hash %llu): physical size does not match expected value (%llu)\n";
        break;
      case 0x1Eu:
        v17 = (v15 & 0x800) == 0;
        v21 = sub_10004565C;
        if (v17)
        {
          v21 = sub_100045744;
        }

        v22 = "file info: attribution tag (hash %llu): full clone size does not match expected value (%llu)\n";
        break;
      default:
        return result;
    }
  }

  v21(v22);
  return sub_10002AC58(v26, (*a3 >> 6) & 0x1F, v10, v11, a5, v7);
}

uint64_t sub_10002A9FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10003F8AC(a1, a2, 0x10u, &v15);
  if (!result)
  {
    if ((*a3 & 0x30) != 0)
    {
      return 22;
    }

    else
    {
      v10 = *(a3 + 2);
      v11 = sub_10004565C;
      if ((*a3 & 0x800) == 0)
      {
        v11 = sub_100045744;
      }

      v11("found orphan/invalid purgeable record (file_id %llu, atime %llu)\n", *(a3 + 25), *(a3 + 17));
      v12 = v15;
      v13 = *(a3 + 5) >> 60;
      if (v13 == 14)
      {
        LODWORD(v13) = *(a3 + 13);
      }

      v14 = sub_10003EDFC(v13);
      return sub_10002955C(v12, 0, a3 + 5, v10, 0, v14, a7 != 0);
    }
  }

  return result;
}

uint64_t sub_10002AADC(uint64_t a1, void *a2, unsigned __int16 *a3, uint64_t a4, const void *a5, uint64_t a6, int a7)
{
  v24 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10003F8AC(a1, a2, 0x13u, &v24);
  if (!result)
  {
    v12 = a3[1];
    v13 = *a3;
    v14 = (v13 >> 4) & 3;
    if (v14 == 2)
    {
      v15 = (v13 & 0x800) == 0;
      v20 = sub_10004565C;
      if (v15)
      {
        v20 = sub_100045744;
      }

      v20("need to insert missing clone mapping (private_id %llu, file_id %llu)\n", *(a3 + 17), *(a3 + 25));
      v21 = v24;
      v22 = *(a3 + 5) >> 60;
      if (v22 == 14)
      {
        LODWORD(v22) = *(a3 + 13);
      }

      v23 = sub_10003EDFC(v22);
      return sub_100029480(v21, 0, a3 + 5, v12, a5, a6, v23, a7);
    }

    else if (v14)
    {
      return 22;
    }

    else
    {
      v15 = (v13 & 0x800) == 0;
      v16 = sub_10004565C;
      if (v15)
      {
        v16 = sub_100045744;
      }

      v16("found orphan/invalid clone mapping (private_id %llu, file_id %llu)\n", *(a3 + 17), *(a3 + 25));
      v17 = v24;
      v18 = *(a3 + 5) >> 60;
      if (v18 == 14)
      {
        LODWORD(v18) = *(a3 + 13);
      }

      v19 = sub_10003EDFC(v18);
      return sub_10002955C(v17, 0, a3 + 5, v12, 0, v19, a7 != 0);
    }
  }

  return result;
}

uint64_t sub_10002AC58(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, int a6)
{
  v12 = *a3 >> 60;
  if (v12 == 14)
  {
    LODWORD(v12) = *(a3 + 8);
  }

  v57 = sub_10003EDFC(v12);
  v13 = malloc_type_calloc(1uLL, 0x340uLL, 0x2FA3EB61uLL);
  v63 = -1431655766;
  v14 = malloc_type_calloc(1uLL, 0xEE0uLL, 0xF8F0F913uLL);
  v15 = v14;
  v62 = 3808;
  if (v13 && v14)
  {
    if (a6 == 1 || a6 != 2 && sub_10004758C(qword_10009BA58, "Update %s objects? ", v57))
    {
      __memcpy_chk();
      v63 = a4;
      v16 = sub_1000397B8(a1, 0, 0, v13, &v63, 832, v15, &v62);
      if (v16)
      {
        v17 = v16;
        v18 = strerror(v16);
        sub_10004565C("failed to lookup %s object: %s\n", v57, v18);
        v19 = 819;
LABEL_10:
        sub_100049C40(v19, v17);
        goto LABEL_16;
      }

      v21 = 0xAAAAAAAAAAAAAAAALL;
      v61 = 0;
      memset(v60, 170, sizeof(v60));
      if ((a2 - 13) > 1)
      {
        v24 = 0;
        v25 = 0xAAAAAAAAAAAAAAAALL;
        v26 = 0xAAAAAAAAAAAAAAAALL;
      }

      else
      {
        v17 = sub_100040474(v15 + 46, v62 - 92, 8, &v61, v60, 0, 0);
        if (v17)
        {
LABEL_22:
          v22 = *v13 & 0xFFFFFFFFFFFFFFFLL;
          v23 = strerror(v17);
          sub_10004565C("failed to get inode (id %llu) dstream: %s\n", v22, v23);
          v19 = 892;
          goto LABEL_10;
        }

        if (v60[0] < 0x28u)
        {
          v17 = 34;
          goto LABEL_22;
        }

        v24 = v61;
        v21 = *v61;
        v25 = *(v61 + 8);
        v26 = *(v61 + 16);
        *&v60[1] = *(v61 + 24);
      }

      switch(a2)
      {
        case 1:
          v35 = *a5;
          if (v12 == 10)
          {
            goto LABEL_66;
          }

          v15[4] = v35;
          goto LABEL_78;
        case 2:
        case 10:
        case 28:
          *v15 = *a5;
          goto LABEL_78;
        case 3:
          *(v15 + 12) = *a5;
          goto LABEL_78;
        case 4:
          v15[3] = *a5;
          goto LABEL_78;
        case 5:
          v44 = *a5;
          goto LABEL_64;
        case 6:
          v36 = *a5;
          LODWORD(v59) = v62 - 52;
          v37 = sub_100040708(v15 + 26, &v59, v36);
          if (v37)
          {
            v17 = v37;
            v38 = *v13 & 0xFFFFFFFFFFFFFFFLL;
            v39 = sub_10003EE2C(v13, v36);
            v40 = strerror(v17);
            sub_10004565C("failed to remove dir stats (id %llu) %s xfield: %s (%d)", v38, v39, v40, v17);
            v19 = 1377;
            goto LABEL_10;
          }

          v62 = v59 + 52;
          goto LABEL_78;
        case 7:
          v35 = *a5;
          goto LABEL_66;
        case 8:
          v59 = 0;
          v32 = sub_100040D28(v15, &v62, *a5, a5 + 4, *(a5 + 1), &v59);
          v17 = v32;
          if (!v32)
          {
            v33 = v59;
            if (v59)
            {
              free(v15);
              v15 = v33;
              goto LABEL_78;
            }
          }

          if (!v32)
          {
            goto LABEL_78;
          }

          goto LABEL_16;
        case 9:
        case 22:
          v27 = *a5;
          goto LABEL_62;
        case 11:
          v15[1] = 0;
          v15[2] = 0;
          goto LABEL_78;
        case 12:
          *(v15 + 14) = *(a5 + 14);
          goto LABEL_78;
        case 13:
          v25 = *(a5 + 1);
          goto LABEL_43;
        case 14:
          v26 = *(a5 + 2);
          if (v26 == -1)
          {
            v15[6] |= 0x10uLL;
          }

LABEL_43:
          *v24 = v21;
          *(v24 + 8) = v25;
          *(v24 + 16) = v26;
          *(v24 + 24) = *&v60[1];
          goto LABEL_78;
        case 15:
          v28 = *a5;
          LODWORD(v59) = v62 - 92;
          v29 = sub_100040708(v15 + 46, &v59, v28);
          v62 = v59 + 92;
          if (!v29)
          {
            goto LABEL_78;
          }

          v17 = v29;
          v30 = *v13 & 0xFFFFFFFFFFFFFFFLL;
          v31 = strerror(v29);
          sub_10004565C("failed to remove inode (oid 0x%llx) xfield (type %u): %s\n", v30, v28, v31);
          v19 = 893;
          goto LABEL_10;
        case 16:
          v15[6] |= 0x200uLL;
          v59 = 0;
          v41 = sub_100040C6C(v15, &v62, *a5, &v59);
          if (!v41)
          {
            goto LABEL_76;
          }

          v17 = v41;
          v42 = *v13 & 0xFFFFFFFFFFFFFFFLL;
          v43 = strerror(v41);
          sub_10004565C("failed to repair inode sparse bytes (id %llu): %s\n", v42, v43);
          v19 = 1205;
          goto LABEL_10;
        case 17:
          v46 = v15[6] | *a5;
          goto LABEL_60;
        case 18:
          v46 = v15[6] & ~*a5;
LABEL_60:
          v15[6] = v46;
          goto LABEL_78;
        case 19:
          v45 = *(v15 + 17) | *a5;
          goto LABEL_53;
        case 20:
          v45 = *(v15 + 17) & ~*a5;
LABEL_53:
          *(v15 + 17) = v45;
          goto LABEL_78;
        case 21:
          v47 = *(*(a1 + 8) + 40);
          if ((*(v47 + 57) & 2) != 0)
          {
            *(v15 + 21) = *(a5 + 21);
          }

          else
          {
            if ((*(v47 + 48) & 2) == 0)
            {
LABEL_58:
              v17 = 22;
              goto LABEL_16;
            }

            v58 = *(a5 + 21);
            v59 = 0;
            v51 = sub_10004090C(v15, &v62, 17, &v58, 8, &v59);
            if (v51)
            {
              v17 = v51;
              v52 = *v13 & 0xFFFFFFFFFFFFFFFLL;
              v53 = strerror(v51);
              sub_10004565C("failed to repair inode nlink (id %llu): %s\n", v52, v53);
              v19 = 1206;
              goto LABEL_10;
            }

LABEL_76:
            v54 = v59;
            if (v59)
            {
              free(v15);
              v15 = v54;
            }
          }

LABEL_78:
          v55 = sub_10003B12C(a1, 0, v13, v63, v15, v62);
          v17 = v55;
          if (!v55)
          {
            goto LABEL_16;
          }

          v56 = strerror(v55);
          sub_10004565C("failed to update %s object: %s\n", v57, v56);
          v19 = 706;
          break;
        case 23:
          v27 = *v15 + 1;
LABEL_62:
          *v15 = v27;
          goto LABEL_78;
        case 24:
          v34 = v13[2];
          v13[2] &= 0x3FFu;
          v13[2] = v34 & 0x3FF | (*a5 << 10);
          goto LABEL_68;
        case 25:
          *(v15 + 28) = *a5;
          goto LABEL_78;
        case 26:
          *v13 = 0xD000000000000009;
          goto LABEL_68;
        case 27:
          *(v13 + 1) = *a5 & 0xFFFFFFFFFFFFFFLL | 0x200000000000000;
LABEL_68:
          v48 = sub_10003B708(a1, 0, a3, a4);
          if (!v48)
          {
            goto LABEL_78;
          }

          v17 = v48;
          v49 = *v13 & 0xFFFFFFFFFFFFFFFLL;
          v50 = strerror(v48);
          sub_10004565C("failed to remove %s object (id %llu): %s\n", v57, v49, v50);
          v19 = 950;
          goto LABEL_10;
        case 29:
          v44 = *(a5 + 1);
LABEL_64:
          v15[1] = v44;
          goto LABEL_78;
        case 30:
          v35 = *(a5 + 2);
LABEL_66:
          v15[2] = v35;
          goto LABEL_78;
        default:
          goto LABEL_58;
      }

      goto LABEL_10;
    }

    v17 = 89;
LABEL_16:
    free(v13);
    if (!v15)
    {
      return v17;
    }

    goto LABEL_13;
  }

  sub_10004565C("unable to allocate memory for tree repairs\n");
  v17 = 12;
  sub_100049C40(0x34B, 12);
  if (v13)
  {
    goto LABEL_16;
  }

  if (v15)
  {
LABEL_13:
    free(v15);
  }

  return v17;
}

const char *sub_10002B324(const char *result, ...)
{
  va_start(va, result);
  if (dword_10007C5F0 >= 5)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

const char *sub_10002B374(const char *result, ...)
{
  va_start(va, result);
  if (dword_10007C5F0 >= 2)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

void *sub_10002B3C4(size_t a1, size_t a2, malloc_type_id_t a3)
{
  result = malloc_type_calloc(a1, a2, a3);
  if (result)
  {
    atomic_fetch_add_explicit(&qword_10009B428, a2 * a1, memory_order_relaxed);
  }

  return result;
}

void sub_10002B400(void *a1, uint64_t a2)
{
  if (a1)
  {
    free(a1);
    atomic_fetch_add_explicit(&qword_10009B428, -a2, memory_order_relaxed);
  }
}

void *sub_10002B43C(size_t a1, malloc_type_id_t a2)
{
  result = malloc_type_malloc(a1, a2);
  if (result)
  {
    atomic_fetch_add_explicit(&qword_10009B428, a1, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_10002B470(_DWORD *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v11 = -1431655766;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v6 = sub_10002B508(a2, a3, &v10, &v11);
  if (!v6)
  {
    v9 = a4;
    v7 = v10;
    v6 = sub_10003B12C(a1, 0, v10, v11, &v9, 8);
    free(v7);
  }

  return v6;
}

uint64_t sub_10002B508(unsigned int a1, const void *a2, void *a3, unsigned int *a4)
{
  v8 = a1 + 10;
  v9 = malloc_type_malloc(a1 + 10, 0x98375D02uLL);
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  *v9 = 0xBFFFFFFFFFFFFFFFLL;
  v9[4] = a1;
  memcpy(v9 + 5, a2, a1);
  *a3 = v10;
  result = 0;
  if (a4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_10002B594(uint64_t a1, unsigned int a2, const void *a3)
{
  v8 = -1431655766;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v4 = sub_10002B508(a2, a3, &v7, &v8);
  if (!v4)
  {
    v5 = v7;
    v4 = sub_10003B708(a1, 0, v7, v8);
    free(v5);
  }

  return v4;
}

uint64_t sub_10002B61C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int a5, char a6, _DWORD *a7)
{
  v13 = *a3;
  v14 = malloc_type_calloc(1uLL, 0x10AuLL, 0xAF4999DuLL);
  v15 = malloc_type_calloc(1uLL, 0x132uLL, 0xAD51FE41uLL);
  if (v14 && (v16 = v15) != 0)
  {
    v41 = 0xAAAAAAAAAAAAAAAALL;
    v42 = 0xAAAAAAAAAAAAAAAALL;
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v38[0] = v17;
    v38[1] = v17;
    v39 = v17;
    v40 = v17;
    __src[14] = v17;
    __src[15] = v17;
    __src[12] = v17;
    __src[13] = v17;
    __src[10] = v17;
    __src[11] = v17;
    __src[8] = v17;
    __src[9] = v17;
    __src[6] = v17;
    __src[7] = v17;
    __src[4] = v17;
    __src[5] = v17;
    __src[3] = v17;
    __src[1] = v17;
    __src[2] = v17;
    __src[0] = v17;
    *v14 = 0xBFFFFFFFFFFFFFFFLL;
    v18 = sub_10002D2DC(a1, a2, &v42);
    if (v18 || (v18 = sub_100039F68(v38, v42, 0, v14, 0xAu, 0x10Au, v16, 306), v18))
    {
      v19 = v18;
      v20 = strerror(v18);
      sub_10004565C("unable to setup snapshot tree iteration: %s\n", v20);
      v21 = 1266;
LABEL_6:
      sub_100049C40(v21, v19);
    }

    else if (BYTE8(v39))
    {
      v19 = 2;
    }

    else
    {
      v35 = 0;
      v23 = v13 & 0xFFFFFFFFFFFFFFFLL;
      v24 = a5 - 50;
      v36 = -1;
      do
      {
        if (*v14 >> 60 == 11 && *v16 == v23)
        {
          v37 = -1431655766;
          v25 = sub_10000EDD8(a2, v14, v39, v16, SDWORD1(v39), 0, &v37);
          if (!(v25 | v37))
          {
            v26 = v14[4];
            if (v24 <= v26)
            {
              v27 = v24;
            }

            else
            {
              v27 = v14[4];
            }

            if ((a6 & 2) != 0 && !strncmp((a4 + 50), v14 + 10, v27))
            {
              if (sub_10004758C(qword_10009BA58, "Fix snapshot meta name_len (%u) from snap name entry? ", v26))
              {
                *(a4 + 48) = v27;
                bzero((a4 + 50), v24);
                v31 = (a4 + 50);
                v32 = v14 + 5;
                v33 = v27;
                goto LABEL_29;
              }

              goto LABEL_34;
            }

            if (a6)
            {
              v28 = sub_10002B984(a4 + 50, *(a4 + 48), v14 + 10, v26);
              if (v28 < v36)
              {
                v29 = v28;
                __memcpy_chk();
                v36 = v29;
                v35 = v27;
              }
            }
          }
        }

        v30 = (*(&v38[0] + 1))(v38);
        if (v30)
        {
          v19 = v30;
          v34 = strerror(v30);
          sub_10004565C("error iterating snapshot tree: %s\n", v34);
          v21 = 1267;
          goto LABEL_6;
        }
      }

      while ((BYTE8(v39) & 1) == 0);
      if (v36 == -1)
      {
        v19 = 0;
        goto LABEL_7;
      }

      if (sub_10004758C(qword_10009BA58, "Fix snapshot meta name (%.*s) from snap name entry? ", v35, __src))
      {
        *(a4 + 48) = v35;
        bzero((a4 + 50), v35);
        v31 = (a4 + 50);
        v32 = __src;
        v33 = v35;
LABEL_29:
        memcpy(v31, v32, v33);
        v19 = 0;
        *a7 = 1;
        goto LABEL_7;
      }

LABEL_34:
      v19 = 92;
    }

LABEL_7:
    free(v14);
    free(v16);
  }

  else
  {
    sub_10004565C("failed to allocate memory for snapshot repair\n");
    v19 = 12;
    sub_100049C40(0x4F1, 12);
  }

  return v19;
}

uint64_t sub_10002B984(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4)
{
  v8 = a4;
  __chkstk_darwin(a1);
  v10 = (&v31 - v9);
  memset(&v31 - v9, 170, v11);
  v12 = 0;
  v13 = vdupq_n_s64(v8);
  v14 = v10 + 2;
  v15 = xmmword_100076F10;
  v16 = xmmword_100076F20;
  v17 = vdupq_n_s64(4uLL);
  do
  {
    v18 = vmovn_s64(vcgeq_u64(v13, v16));
    if (vuzp1_s16(v18, *v13.i8).u8[0])
    {
      *(v14 - 2) = v12;
    }

    if (vuzp1_s16(v18, *&v13).i8[2])
    {
      *(v14 - 1) = v12 + 1;
    }

    if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v15))).i32[1])
    {
      *v14 = v12 + 2;
      v14[1] = v12 + 3;
    }

    v12 += 4;
    v15 = vaddq_s64(v15, v17);
    v16 = vaddq_s64(v16, v17);
    v14 += 4;
  }

  while (((a4 + 4) & 0x1FFFC) != v12);
  if (a2)
  {
    v19 = 1;
    do
    {
      v20 = v19;
      if (a4)
      {
        v21 = v19 - 1;
        v22 = *(a1 + v19 - 1);
        v23 = v10 + 1;
        v24 = v8;
        v25 = a3;
        LOWORD(v26) = v19;
        do
        {
          v27 = *v25++;
          if (v22 != v27)
          {
            ++v21;
          }

          v28 = *v23;
          LOWORD(v26) = v26 + 1;
          if ((*v23 + 1) >= v26)
          {
            v26 = v26;
          }

          else
          {
            v26 = (v28 + 1);
          }

          if (v26 >= v21)
          {
            v26 = v21;
          }

          *v23++ = v26;
          v21 = v28;
          --v24;
        }

        while (v24);
      }
    }

    while (v19++ != a2);
    *v10 = v20;
  }

  return v10[v8];
}

uint64_t sub_10002BB60()
{
  result = sub_100039748(&unk_10009A360, 0, 0, 0x8000000, 2, 0, 0, 4096, 0, 2, 0, 0, sub_10002BBE4);
  if (!result)
  {
    result = sub_10003B84C(&unk_10009A360, 0, 0);
    if (result)
    {
      qword_10009A398 = 0;
    }
  }

  return result;
}

uint64_t sub_10002BBE4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, int *a6)
{
  result = 22;
  if (a3 >= 0x10 && a5 >= 0x10)
  {
    if (*a2 >= *a4)
    {
      if (*a2 > *a4)
      {
        v8 = 1;
        goto LABEL_7;
      }

      v9 = *(a2 + 8);
      v10 = *(a4 + 8);
      if (v9 >= v10)
      {
        v11 = *(a4 + 8);
      }

      else
      {
        v11 = *(a2 + 8);
      }

      v12 = memcmp((a2 + 10), (a4 + 10), v11);
      if ((v12 & 0x80000000) == 0)
      {
        if (v12)
        {
          v8 = 1;
        }

        else
        {
          v8 = -1;
        }

        if (v12)
        {
          v13 = 0;
        }

        else
        {
          v13 = v9 >= v10;
        }

        if (v13)
        {
          v8 = v9 > v10;
        }

        goto LABEL_7;
      }
    }

    v8 = -1;
LABEL_7:
    result = 0;
    *a6 = v8;
  }

  return result;
}

uint64_t sub_10002BCA8(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  if (!qword_10009A398)
  {
    return 0;
  }

  v5 = a2;
  v14 = a2 + 16;
  v7 = malloc_type_calloc(1uLL, 0x110uLL, 0xEFF35303uLL);
  if (v7)
  {
    v8 = v7;
    v13 = 2;
    v12 = 0;
    *v7 = a1;
    v7[4] = v5;
    __memcpy_chk();
    v9 = sub_1000397B8(dword_10009A360, 0, 0, v8, &v14, 272, &v12, &v13);
    if (v9)
    {
      v10 = v9;
      if (v9 != 2)
      {
LABEL_12:
        free(v8);
        return v10;
      }

      *v8 = a1;
      v8[4] = v5;
      __memcpy_chk();
    }

    if (a4)
    {
      HIBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 1;
    }

    v10 = sub_10003B12C(dword_10009A360, 0, v8, v14, &v12, v13);
    goto LABEL_12;
  }

  sub_10004565C("failed to allocate memory for snapshot tracking\n");
  v10 = 12;
  sub_100049C40(0x153, 12);
  return v10;
}

uint64_t sub_10002BE24(_DWORD *a1)
{
  if (qword_10009A398)
  {
    v22 = 0xAAAAAAAAAAAAAAAALL;
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v20 = v2;
    v21 = v2;
    v19[0] = v2;
    v19[1] = v2;
    v3 = malloc_type_calloc(1uLL, 0x110uLL, 0x710BD337uLL);
    if (!v3)
    {
      sub_10004565C("failed to allocate memory for snapshot validation\n");
      v6 = 12;
      sub_100049C40(0x368, 12);
LABEL_9:
      sub_10003B928(&unk_10009A360, 0);
      return v6;
    }

    v4 = v3;
    v18 = 0;
    v17 = -1431655766;
    v15 = 0;
    v16 = 0;
    v5 = sub_100039F68(v19, &unk_10009A360, 0, v3, 0x10u, 0x110u, &v18, 2);
    if (v5)
    {
      v6 = v5;
      v7 = strerror(v5);
      sub_10004565C("unable to initialize iterator for snapshot validation: %s\n", v7);
      v8 = 873;
LABEL_5:
      sub_100049C40(v8, v6);
LABEL_6:
      free(v4);
      goto LABEL_9;
    }

    while (1)
    {
      if (BYTE8(v20))
      {
        v6 = 0;
        goto LABEL_6;
      }

      if (HIBYTE(v18) == 1)
      {
        if ((v18 & 1) == 0)
        {
          sub_10004565C("no snap_meta entry found for snap_name entry with xid %llu and name %.*s\n", *v4, *(v4 + 4), v4 + 10);
          sub_100049C40(0x28C, 92);
          v10 = sub_10002B508(*(v4 + 4), v4 + 10, &v16, &v17);
          if (v10)
          {
            goto LABEL_23;
          }

          v15 = *v4;
          v11 = v16;
          v12 = sub_100027D7C(a1, 4u, 0, 0, 1, v16, v17, 0, 0);
LABEL_19:
          v6 = v12;
          free(v11);
          if (v6)
          {
            goto LABEL_6;
          }
        }
      }

      else if (v18)
      {
        sub_10004565C("no snap_name entry found for snap_meta entry with xid %llu and name %.*s\n", *v4, *(v4 + 4), v4 + 10);
        sub_100049C40(0x28E, 92);
        v10 = sub_10002B508(*(v4 + 4), v4 + 10, &v16, &v17);
        if (v10)
        {
LABEL_23:
          v6 = v10;
          goto LABEL_6;
        }

        v15 = *v4;
        v11 = v16;
        v12 = sub_100027D7C(a1, 4u, 2, 0, 1, v16, v17, &v15, 8u);
        goto LABEL_19;
      }

      v13 = (*(&v19[0] + 1))(v19);
      if (v13)
      {
        v6 = v13;
        v14 = strerror(v13);
        sub_10004565C("error iterating snapshot tree: %s\n", v14);
        v8 = 874;
        goto LABEL_5;
      }
    }
  }

  return 0;
}

uint64_t sub_10002C0AC(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6)
{
  if (!a4)
  {
    return 28;
  }

  v6 = a1;
  if (a1 <= a2 || a4 < a1)
  {
    if (0x180000000 * (a2 >> 12) > a4)
    {
      return 28;
    }

    if (a4 >> 34)
    {
      v9 = 0x1000000000;
      if (a4 >= 0x1000000000)
      {
        v10 = 0x1000000000;
      }

      else
      {
        v10 = a4;
      }

      v8 = v10 >> 5;
      if (a4 >= 0x1000000001)
      {
        if (a4 - 0x1000000000 < 0x1000000000)
        {
          v9 = a4 - 0x1000000000;
        }

        v8 += (v9 * 0x666666666666667uLL) >> 64;
        if (a4 >= 0x2000000001)
        {
          v11 = a4 - 0x2000000000;
          if (a4 - 0x2000000000 >= 0x2000000000)
          {
            v11 = 0x2000000000;
          }

          v8 += v11 >> 7;
          if (a4 >= 0x4000000001)
          {
            v8 += (a4 - 0x4000000000) / 0xA0;
          }
        }
      }
    }

    else
    {
      v8 = 0x20000000;
    }

    v6 = v8 * (a2 >> 12);
    if (v6 >= a4 >> 2)
    {
      v6 = a4 >> 2;
    }
  }

  result = 0;
  v12 = v6 / a2;
  *a5 = v12 * a2;
  *a6 = a3 - v12;
  return result;
}

unint64_t sub_10002C1B4(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
    *a5 = (a2 >> 1) / result + a3;
  }

  if (a6)
  {
    v6 = (a2 >> 4) / result;
    if (v6 >= 0x8000000 / result)
    {
      v6 = 0x8000000 / result;
    }

    *a6 = a4 - v6;
  }

  return result;
}

uint64_t sub_10002C1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (!qword_10009A3A0 || (result = sub_10002C230(a1, a2, a3, a5), !result))
  {
    result = 0;
    qword_10009A3A0 = a4;
  }

  return result;
}

uint64_t sub_10002C230(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v17 = 0;
  v6 = qword_10009A3A8;
  v5 = HIDWORD(qword_10009A3A8);
  v7 = *(a2 + 40);
  if ((*(v7 + 57) & 2) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = (*(v7 + 48) >> 1) & 1;
  }

  if (unk_10009A3B4 == dword_10009A3B0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  if (HIDWORD(qword_10009A3A8) != qword_10009A3A8 || v9 != 0)
  {
    result = sub_10003FD88(a1, a2, a3, qword_10009A3A0, &v17);
    if (result)
    {
      return result;
    }

    if (v17)
    {
      goto LABEL_17;
    }
  }

  v12 = qword_10009A3A0 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  if (v5 == v6 || (sub_10004565C("directory valence check: directory (oid 0x%llx): nchildren (%d) does not match drec count (%d)\n", qword_10009A3A0, HIDWORD(qword_10009A3A8), qword_10009A3A8), sub_100049C40(0x330, 92), *v16 = 0, v14 = 0u, v15 = 0u, v13 = 0u, *&v16[8] = qword_10009A3A8, memset(&v16[12], 0, 32), result = sub_10002C5E0(a4, 0xCu, v12, &v13), !result))
  {
    if (!v9 || (sub_10004565C("directory valence check: directory (oid 0x%llx): nlink (%d) does not match subdirectory count (%d)\n", qword_10009A3A0, unk_10009A3B4, dword_10009A3B0), sub_100049C40(0x4B7, 92), memset(v16, 0, 36), v14 = 0u, v15 = 0u, v13 = 0u, *&v16[36] = dword_10009A3B0, result = sub_10002C5E0(a4, 0x15u, v12, &v13), !result))
    {
LABEL_17:
      result = 0;
      qword_10009A3A8 = 0;
      *&dword_10009A3B0 = 0;
      qword_10009A3A0 = 0;
    }
  }

  return result;
}

uint64_t sub_10002C3DC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v8 = *a4 & 0xFFFFFFFFFFFFFFFLL;
  if (v8 == 1 || v8 == 7)
  {
    return 0;
  }

  if (v8 == qword_10009A3A0)
  {
    v12 = __OFADD__(qword_10009A3A8, 1);
    v13 = qword_10009A3A8 + 1;
    LODWORD(qword_10009A3A8) = qword_10009A3A8 + 1;
    if (v12)
    {
      sub_100045744("drec count overflow (%d)\n", v13);
      sub_100049C40(0x4B8, 92);
      LODWORD(qword_10009A3A8) = 0x7FFFFFFF;
    }

    if ((*(a6 + 16) & 0xF) == 4)
    {
      v12 = __OFADD__(dword_10009A3B0, 1);
      v14 = ++dword_10009A3B0;
      if (v12)
      {
        sub_100045744("subdir count overflow (%d)\n", v14);
        sub_100049C40(0x4B9, 92);
        dword_10009A3B0 = 0x7FFFFFFF;
      }
    }

    return 0;
  }

  v16 = a7;
  v17 = a5;
  result = sub_10002C230(a1, a2, a3, a8);
  if (!result)
  {
    sub_100045744("directory valence check: directory (oid 0x%llx): orphan directory record\n", v8);
    sub_100049C40(0x34C, -8);
    result = sub_10002C520(a8, 0, 0, a4, v17, a6, v16);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002C520(_DWORD *a1, int a2, unsigned int a3, char *a4, unsigned int a5, _BYTE *a6, unsigned int a7)
{
  if (a1)
  {
    return sub_100027D7C(a1, 7u, a2, a3, 0, a4, a5, a6, a7);
  }

  return sub_10002797C();
}

uint64_t sub_10002C578(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (qword_10009A3A0)
  {
    return sub_10002C230(a1, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002C5E0(_DWORD *a1, unsigned int a2, uint64_t a3, _BYTE *a4)
{
  v5 = a3;
  if (a1)
  {
    return sub_100027D7C(a1, 7u, 1, a2, 1, &v5, 8u, a4, 0x5Cu);
  }

  return sub_10002797C();
}

uint64_t sub_10002C648(uint64_t a1, uint64_t (*a2)(void, void, void, void, uint64_t), uint64_t a3, int a4)
{
  v8 = 0;
  while (1)
  {
    if (!a1)
    {
      return 0;
    }

    if (*(a1 + 40))
    {
      break;
    }

    v9 = a2(*(a1 + 16), *(a1 + 32), *(a1 + 24), *(a1 + 36), a3);
    if (v9)
    {
      v10 = a4 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      v8 = v9 ? v9 : v8;
      v9 = (*(a1 + 8))(a1);
      if (!v9)
      {
        continue;
      }
    }

    v8 = v9;
    break;
  }

  if (*a1)
  {
    (*a1)(a1);
  }

  return v8;
}

uint64_t sub_10002C6E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, __int128 *, int *, uint64_t), uint64_t a4)
{
  v17 = -1431655766;
  if (a1)
  {
    if (a2 && (*(a1 + 40) & 1) == 0)
    {
      while (1)
      {
        if (*(a2 + 40))
        {
          goto LABEL_4;
        }

        v17 = 3;
        v15 = *(a1 + 16);
        v16 = *(a1 + 32);
        v13 = *(a2 + 16);
        v14 = *(a2 + 32);
        v8 = a3(&v15, &v13, &v17, a4);
        if (v8)
        {
          break;
        }

        v12 = v17;
        if (v17)
        {
          v8 = (*(a1 + 8))(a1);
          if (v8)
          {
            break;
          }

          v12 = v17;
        }

        if ((v12 & 2) != 0)
        {
          v8 = (*(a2 + 8))(a2);
          if (v8)
          {
            break;
          }
        }

        if (*(a1 + 40) == 1)
        {
          goto LABEL_4;
        }
      }

LABEL_7:
      v9 = v8;
      goto LABEL_15;
    }

LABEL_4:
    while (*(a1 + 40) != 1)
    {
      v15 = *(a1 + 16);
      v16 = *(a1 + 32);
      v13 = 0uLL;
      v14 = 0;
      v8 = a3(&v15, &v13, &v17, a4);
      if (!v8)
      {
        v8 = (*(a1 + 8))(a1);
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_7;
    }
  }

  if (a2)
  {
    while ((*(a2 + 40) & 1) == 0)
    {
      v15 = *(a2 + 16);
      v16 = *(a2 + 32);
      v13 = 0uLL;
      v14 = 0;
      v10 = a3(&v13, &v15, &v17, a4);
      if (!v10)
      {
        v10 = (*(a2 + 8))(a2);
        if (!v10)
        {
          continue;
        }
      }

      v9 = v10;
      if (a1)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    }
  }

  v9 = 0;
  if (a1)
  {
LABEL_15:
    if (*a1)
    {
      (*a1)(a1);
    }
  }

LABEL_17:
  if (a2 && *a2)
  {
    (*a2)(a2);
  }

  return v9;
}

double sub_10002C8A8(uint64_t a1)
{
  if (*(a1 + 448))
  {
    sub_10003B928(a1 + 392, 0);
  }

  for (i = 192; i != 384; i += 64)
  {
    if (*(a1 + i))
    {
      *(a1 + i) = 0;
    }
  }

  if (*(a1 + 384))
  {
    *(a1 + 384) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    free(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    free(v5);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    free(v6);
  }

  if (*a1)
  {
    sub_10002F398(*a1);
  }

  *(a1 + 448) = 0;
  result = 0.0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10002C980(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    *a1 = 0;
    return sub_10002F398(result);
  }

  return result;
}

void sub_10002C998(void **a1)
{
  if (a1[103])
  {
    sub_10003B928((a1 + 96), 0);
  }

  if (a1[71])
  {
    a1[71] = 0;
  }

  if (a1[63])
  {
    a1[63] = 0;
  }

  if (a1[55])
  {
    a1[55] = 0;
  }

  if (a1[47])
  {
    a1[47] = 0;
  }

  if (a1[39])
  {
    a1[39] = 0;
  }

  if (a1[79])
  {
    a1[79] = 0;
  }

  if (a1[31])
  {
    a1[31] = 0;
  }

  if (a1[23])
  {
    a1[23] = 0;
  }

  v2 = a1[9];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    free(v4);
  }

  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = a1[v5 + 3];
    if (v8)
    {
      sub_10002F398(v8);
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  if (*a1)
  {
    free(*a1);
  }

  bzero(a1, 0x400uLL);
}

uint64_t sub_10002CAA4(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 24;
  v3 = 1;
  do
  {
    v4 = v3;
    result = *(v2 + 8 * v1);
    if (result)
    {
      *(v2 + 8 * v1) = 0;
      result = sub_10002F398(result);
    }

    v3 = 0;
    v1 = 1;
  }

  while ((v4 & 1) != 0);
  return result;
}

void sub_10002CAEC(uint64_t a1, char a2)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    free(v4);
    *(a1 + 48) = 0;
  }

  *(a1 + 14) = a2;
  v5 = *(a1 + 56);
  *(a1 + 56) = 0;
  *(a1 + 64) = v5;
  *(a1 + 568) = 0;
  *(a1 + 504) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_10002CB38(uint64_t *a1)
{
  result = sub_10002F3CC(*a1);
  if (!result)
  {
    v3 = a1[2];
    if (!v3 || (free(v3), a1[2] = 0, result = sub_10002CBE0(a1, 0), !result))
    {
      v4 = a1[3];
      if (!v4 || (free(v4), a1[3] = 0, result = sub_10002CC80(a1, 0), !result))
      {
        v5 = a1[4];
        if (!v5)
        {
          return 0;
        }

        free(v5);
        a1[4] = 0;
        result = sub_10002CD20(a1, 0, 0);
        if (!result)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002CBE0(uint64_t *a1, void *a2)
{
  v3 = a1 + 2;
  if (a1[2] || (v5 = sub_100025548(a1, 0, 0x80000000, *(a1[1] + 168), 0, 0, 17, 0, a1 + 2, (a1 + 8), 0), !v5))
  {
    v4 = 0;
    if (a2)
    {
      *a2 = *v3;
    }
  }

  else
  {
    v4 = v5;
    v6 = strerror(v5);
    sub_10004565C("verification/reading of the nx_reaper object failed: %s\n", v6);
  }

  return v4;
}

uint64_t sub_10002CC80(uint64_t *a1, void *a2)
{
  v3 = a1 + 3;
  if (a1[3] || (v5 = sub_100025548(a1, 0, 0x80000000, *(a1[1] + 152), 0, 0, 5, 0, a1 + 3, (a1 + 11), 0), !v5))
  {
    v4 = 0;
    if (a2)
    {
      *a2 = *v3;
    }
  }

  else
  {
    v4 = v5;
    v6 = strerror(v5);
    sub_10004565C("verification/reading of the spaceman object failed: %s\n", v6);
  }

  return v4;
}

uint64_t sub_10002CD20(uint64_t *a1, uint64_t a2, int **a3)
{
  if (a2)
  {
    v4 = (a2 + 72);
  }

  else
  {
    v4 = (a1 + 4);
  }

  if (*v4)
  {
    goto LABEL_5;
  }

  v6 = a1 + 1;
  if (a2)
  {
    v6 = (a2 + 40);
  }

  v7 = *v6;
  v8 = 128;
  if (!a2)
  {
    v8 = 160;
  }

  v9 = (a1 + 14);
  if (a2)
  {
    v9 = a2 + 104;
  }

  v10 = sub_100025548(a1, a2, 0x40000000, *(v7 + v8), 0, 0, 11, 0, v4, v9, 0);
  if (!v10)
  {
LABEL_5:
    v5 = 0;
    if (a3)
    {
      *a3 = *v4;
    }
  }

  else
  {
    v5 = v10;
    v11 = strerror(v10);
    sub_10004565C("verification/reading of the omap object failed: %s\n", v11);
  }

  return v5;
}

uint64_t sub_10002CDEC(uint64_t *a1, void *a2)
{
  result = sub_10002F3CC(*a1);
  if (!result)
  {
    v5 = a2[9];
    if (!v5)
    {
      return 0;
    }

    free(v5);
    a2[9] = 0;
    result = sub_10002CD20(a1, a2, 0);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002CE54(uint64_t *a1, unsigned int a2, unint64_t *a3)
{
  if (a2 > 2)
  {
    return 22;
  }

  v8 = &a1[8 * a2];
  v9 = (v8 + 17);
  if (!v8[24])
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    v3 = sub_10002CC80(a1, &v13);
    if (v3)
    {
      return v3;
    }

    v10 = sub_100039748(v9, a1, 0, 0x80000000, 2, 9, 0, *(a1[1] + 36), 16, 8, 0, *(v13 + 40 * a2 + 208), sub_100001C14);
    if (v10)
    {
      v3 = v10;
      v11 = strerror(v10);
      sub_10004565C("failed to initialize the spaceman free queue tree %d: %s\n", a2, v11);
      return v3;
    }
  }

  v3 = 0;
  if (a3)
  {
    *a3 = v9;
  }

  return v3;
}

uint64_t sub_10002CF5C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    v4 = a2 + 128;
  }

  else
  {
    v4 = (a1 + 41);
  }

  if (!*(v4 + 56))
  {
    v11 = 0xAAAAAAAAAAAAAAAALL;
    v5 = sub_10002CD20(a1, a2, &v11);
    if (v5)
    {
      return v5;
    }

    v8 = sub_100039748(v4, a1, a2, v11[10] & 0xC0000000, v11[10], 11, 0, *(a1[1] + 36), 16, 16, 0, *(v11 + 6), sub_10001F078);
    if (v8)
    {
      v5 = v8;
      v9 = strerror(v8);
      sub_10004565C("failed to initialize the omap tree: %s\n", v9);
      return v5;
    }
  }

  v5 = 0;
  if (a3)
  {
    *a3 = v4;
  }

  return v5;
}

uint64_t sub_10002D04C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2 + 192;
  if (!*(a2 + 248))
  {
    v11 = 0xAAAAAAAAAAAAAAAALL;
    v5 = sub_10002CD20(a1, a2, &v11);
    if (v5)
    {
      return v5;
    }

    v8 = sub_100039748(v4, a1, a2, v11[11] & 0xC0000000, v11[11], 19, 0, *(a1[1] + 36), 8, 16, 0, *(v11 + 7), sub_100030C88);
    if (v8)
    {
      v5 = v8;
      v9 = strerror(v8);
      sub_10004565C("failed to initialize the omap snap tree: %s\n", v9);
      return v5;
    }
  }

  v5 = 0;
  if (a3)
  {
    *a3 = v4;
  }

  return v5;
}

uint64_t sub_10002D134(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 40);
  if ((*(v4 + 56) & 0x40) != 0)
  {
    v6 = a2 + 576;
    if (*(a2 + 632) || (v7 = sub_100039748(a2 + 576, a1, a2, *(v4 + 1044) & 0xC0000000, *(v4 + 1044), 32, 0, *(*(a1 + 8) + 36), 8, 24, 0, *(v4 + 1048), sub_100030C88), !v7))
    {
      v5 = 0;
      if (a3)
      {
        *a3 = v6;
      }
    }

    else
    {
      v5 = v7;
      v8 = strerror(v7);
      sub_10004565C("failed to initialize the pfkur tree: %s\n", v8);
    }
  }

  else
  {
    sub_10004565C("get_pfkur_tree() called on non-pfk volume\n");
    return 22;
  }

  return v5;
}

uint64_t sub_10002D210(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 40);
  v5 = *(v4 + 1072);
  if (!v5)
  {
    return 2;
  }

  v6 = a2 + 640;
  if (*(a2 + 696) || (v8 = sub_100039748(a2 + 640, a1, a2, *(v4 + 1068) & 0xC0000000, *(v4 + 1068), 34, 0, *(*(a1 + 8) + 36), 4, 8, 0, v5, sub_100030C54), !v8))
  {
    v7 = 0;
    if (a3)
    {
      *a3 = v6;
    }
  }

  else
  {
    v7 = v8;
    v9 = strerror(v8);
    sub_10004565C("failed to initialize the doc-id tree: %s\n", v9);
  }

  return v7;
}

uint64_t sub_10002D2DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2 + 256;
  if (*(a2 + 312) || (v6 = sub_100039748(v4, a1, a2, *(*(a2 + 40) + 124) & 0xC0000000, *(*(a2 + 40) + 124), 16, 0, *(*(a1 + 8) + 36), 0, 0, 0, *(*(a2 + 40) + 152), sub_10003F384), !v6))
  {
    v5 = 0;
    if (a3)
    {
      *a3 = v4;
    }
  }

  else
  {
    v5 = v6;
    v7 = strerror(v6);
    sub_10004565C("failed to initialize the snap meta tree: %s\n", v7);
  }

  return v5;
}

uint64_t sub_10002D394(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2 + 320;
  if (*(a2 + 376) || (v6 = sub_100039748(v4, a1, a2, *(*(a2 + 40) + 120) & 0xC0000000, *(*(a2 + 40) + 120), 15, 0, *(*(a1 + 8) + 36), 0, 0, 0, *(*(a2 + 40) + 144), sub_10003F384), !v6))
  {
    v5 = 0;
    if (a3)
    {
      *a3 = v4;
    }
  }

  else
  {
    v5 = v6;
    v7 = strerror(v6);
    sub_10004565C("failed to initialize the extentref tree: %s\n", v7);
  }

  return v5;
}

uint64_t sub_10002D44C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[6];
  if (!v4)
  {
    v4 = a2[5];
  }

  if ((*(v4 + 56) & 0x20) != 0)
  {
    v6 = a2 + 48;
    if (a2[55] || (v7 = sub_100039748((a2 + 48), a1, a2, *(a2[5] + 1040) & 0xC0000000, *(a2[5] + 1040), 31, 0, *(*(a1 + 8) + 36), 16, 16, 0, *(a2[5] + 1032), sub_10003F1FC), !v7))
    {
      v5 = 0;
      if (a3)
      {
        *a3 = v6;
      }
    }

    else
    {
      v5 = v7;
      v8 = strerror(v7);
      sub_10004565C("failed to initialize the fext tree: %s\n", v8);
    }
  }

  else
  {
    sub_10004565C("get_fext_tree() called on unsealed volume\n", a1);
    return 22;
  }

  return v5;
}

uint64_t sub_10002D530(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a2 + 40) + 1112);
  if (!v4)
  {
    return 2;
  }

  v5 = a2 + 704;
  if (*(a2 + 760) || (v7 = sub_100039748(a2 + 704, a1, a2, 0, 2, 37, 0, *(*(a1 + 8) + 36), 0, 0, 0, v4, sub_10003F258), !v7))
  {
    v6 = 0;
    if (a3)
    {
      *a3 = v5;
    }
  }

  else
  {
    v6 = v7;
    v8 = strerror(v7);
    sub_10004565C("failed to initialize the clone group tree: %s\n", v8);
  }

  return v6;
}

uint64_t sub_10002D5F0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2 + 448;
  if (*(a2 + 504))
  {
    goto LABEL_2;
  }

  v6 = *(a2 + 40);
  v7 = *(v6 + 116);
  v8 = *(v6 + 136);
  if (*(a2 + 48))
  {
    v6 = *(a2 + 48);
  }

  if ((*(v6 + 56) & 0x20) != 0)
  {
    v9 = *(a2 + 16);
    v10 = *(a2 + 20);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = sub_100039748(v4, a1, a2, v7 & 0xC0000000, v7, 14, v9, *(*(a1 + 8) + 36), 0, 0, v10, v8, sub_10003F384);
  if (!v11)
  {
LABEL_2:
    v5 = 0;
    if (a3)
    {
      *a3 = v4;
    }
  }

  else
  {
    v5 = v11;
    v12 = strerror(v11);
    sub_10004565C("failed to initialize the fsroot tree: %s\n", v12);
  }

  return v5;
}

uint64_t sub_10002D6C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2 + 512;
  if (*(a2 + 568))
  {
    goto LABEL_2;
  }

  v6 = *(a2 + 40);
  v7 = *(v6 + 1104);
  v8 = *(v6 + 1096);
  if (*(a2 + 48))
  {
    v6 = *(a2 + 48);
  }

  if ((*(v6 + 56) & 0x20) != 0)
  {
    v9 = *(a2 + 16);
    v10 = *(a2 + 20);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = sub_100039748(v4, a1, a2, v7 & 0xC0000000, v7, 36, v9, *(*(a1 + 8) + 36), 0, 0, v10, v8, sub_10003F384);
  if (!v11)
  {
LABEL_2:
    v5 = 0;
    if (a3)
    {
      *a3 = v4;
    }
  }

  else
  {
    v5 = v11;
    v12 = strerror(v11);
    sub_10004565C("failed to initialize the secondary fsroot tree: %s\n", v12);
  }

  return v5;
}

uint64_t sub_10002D798(io_object_t a1)
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
      if (!sub_10002D9FC(v8, @"image-format-read-only"))
      {
        break;
      }

LABEL_28:
      IOObjectRelease(v9);
    }

    if (sub_10002D9FC(v9, @"Removable"))
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

BOOL sub_10002D9FC(io_registry_entry_t a1, CFStringRef key)
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

uint64_t sub_10002DA60(int a1, dev_t *a2, _DWORD *a3, _DWORD *a4, dev_t *a5)
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
        sub_10002B374("%s:%d: can't get features for device (%s)\n", "io_get_device_features", 180, v11);
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
        LODWORD(v14) = sub_10002D798(MatchingService);
        IOObjectRelease(v23);
        goto LABEL_13;
      }

      sub_10002B324("%s:%d: fd %d is type %o rdev %d (%d, %d): I/O registry entry not found\n", "io_get_device_features", 228, a1, v27.st_mode & 0xF000, v27.st_rdev, HIBYTE(v27.st_rdev), v27.st_rdev & 0xFFFFFF);
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
        sub_10002B374("%s:%d: can't get solidstate for device (%s)\n", "io_get_device_features", 244, v16);
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

uint64_t sub_10002DD10(io_object_t *a1, _BYTE *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v4 = IOObjectConformsTo(*a1, "AppleAPFSSnapshot");
  v5 = *a1;
  if (v4)
  {
    parent = -1431655766;
    if (IORegistryEntryGetParentEntry(v5, "IOService", &parent))
    {
      return 0;
    }

    IOObjectRelease(*a1);
    v5 = parent;
    *a1 = parent;
    if (a2)
    {
      *a2 = 1;
    }
  }

  result = IOObjectConformsTo(v5, "AppleAPFSVolume");
  if (result)
  {
    return *a1;
  }

  return result;
}

const char *sub_10002DDB4(const char *a1)
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

  return v1;
}

unint64_t sub_10002DDF8(char *a1, _DWORD *a2)
{
  if (!sub_10002DE7C(a1))
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

BOOL sub_10002DE7C(const char *a1)
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

BOOL sub_10002DF20(const char *a1, const char *a2)
{
  v2 = sub_10002DF74(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2 == kCFBooleanTrue;
  CFRelease(v2);
  return v3;
}

CFTypeRef sub_10002DF74(const char *a1, const char *a2)
{
  v3 = a1;
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v4 = *(v3 + 5);
    v3 += 5;
    if (v4 == 114)
    {
      ++v3;
    }
  }

  if (*v3 == 114)
  {
    v5 = v3 + 1;
  }

  else
  {
    v5 = v3;
  }

  v6 = IOBSDNameMatching(kIOMasterPortDefault, 0, v5);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
  if (!MatchingService)
  {
    return 0;
  }

  v8 = MatchingService;
  v9 = CFStringCreateWithCString(0, a2, 0x8000100u);
  if (v9)
  {
    v10 = v9;
    CFProperty = IORegistryEntryCreateCFProperty(v8, v9, kCFAllocatorDefault, 0);
    CFRelease(v10);
  }

  else
  {
    CFProperty = 0;
  }

  IOObjectRelease(v8);
  return CFProperty;
}

uint64_t sub_10002E05C(io_registry_entry_t a1, const char *a2)
{
  iterator = -1431655766;
  if (IORegistryEntryGetChildIterator(a1, "IOService", &iterator))
  {
    return 0;
  }

  while (1)
  {
    v4 = IOIteratorNext(iterator);
    v3 = v4;
    if (!v4 || IOObjectConformsTo(v4, a2))
    {
      break;
    }

    IOObjectRelease(v3);
  }

  IOObjectRelease(iterator);
  return v3;
}

uint64_t sub_10002E0DC(char *a1, int a2)
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

const char *sub_10002E16C(const char *result)
{
  if (result)
  {
    v1 = result;
    if (!strncmp(result, "/dev/", 5uLL))
    {
      v2 = *(v1 + 5);
      v1 += 5;
      if (v2 == 114)
      {
        ++v1;
      }
    }

    v3 = IOBSDNameMatching(kIOMasterPortDefault, 0, v1);

    return IOServiceGetMatchingService(kIOMasterPortDefault, v3);
  }

  return result;
}

const char *sub_10002E1E8(const char *a1, _BYTE *a2)
{
  result = sub_10002E16C(a1);
  object = result;
  if (result)
  {
    v4 = sub_10002DD10(&object, a2);
    result = object;
    if (!v4)
    {
      IOObjectRelease(object);
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002E23C(io_registry_entry_t a1)
{
  v9 = -1431655766;
  iterator = -1431655766;
  object = -1431655766;
  if (IORegistryEntryGetChildIterator(a1, "IOService", &iterator))
  {
    return 0;
  }

  v2 = IOIteratorNext(iterator);
  if (!v2)
  {
LABEL_19:
    v1 = 0;
    v5 = iterator;
    goto LABEL_21;
  }

  v3 = v2;
  while (1)
  {
    if (!IOObjectConformsTo(v3, "AppleAPFSContainerScheme") || IORegistryEntryGetChildIterator(v3, "IOService", &v9))
    {
      goto LABEL_18;
    }

    v4 = IOIteratorNext(v9);
    if (v4)
    {
      break;
    }

LABEL_17:
    IOObjectRelease(v9);
LABEL_18:
    IOObjectRelease(v3);
    v3 = IOIteratorNext(iterator);
    if (!v3)
    {
      goto LABEL_19;
    }
  }

  v5 = v4;
  while (1)
  {
    if (!IOObjectConformsTo(v5, "AppleAPFSMedia") || IORegistryEntryGetChildIterator(v5, "IOService", &object))
    {
      goto LABEL_16;
    }

    v6 = IOIteratorNext(object);
    if (v6)
    {
      break;
    }

LABEL_15:
    IOObjectRelease(object);
LABEL_16:
    IOObjectRelease(v5);
    v5 = IOIteratorNext(v9);
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  v1 = v6;
  while (!IOObjectConformsTo(v1, "AppleAPFSContainer"))
  {
    IOObjectRelease(v1);
    v1 = IOIteratorNext(object);
    if (!v1)
    {
      goto LABEL_15;
    }
  }

  IOObjectRelease(iterator);
  IOObjectRelease(v9);
  IOObjectRelease(object);
  IOObjectRelease(v3);
LABEL_21:
  IOObjectRelease(v5);
  return v1;
}

uint64_t sub_10002E3D8(char *__s, _DWORD *a2, io_connect_t *a3, io_registry_entry_t *a4, int a5)
{
  parent = -1431655766;
  if (a2)
  {
    v9 = strrchr(__s, 47);
    if (v9)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = __s;
    }

    v20 = 0;
    v11 = sub_10002E1E8(v10, &v20);
    if (v11)
    {
      v12 = v11;
      if (IORegistryEntryGetParentEntry(v11, "IOService", &parent))
      {
        v13 = 49158;
LABEL_24:
        IOObjectRelease(v12);
        return v13;
      }

      if (IOObjectConformsTo(parent, "AppleAPFSContainer"))
      {
        v17 = sub_10002E0DC(v10, v20);
        *a2 = v17;
        if (v17 != -1)
        {
          v16 = parent;
LABEL_17:
          v13 = IOServiceOpen(v16, mach_task_self_, 0, a3);
          v18 = parent;
          if (a4 && !v13)
          {
            *a4 = parent;
            goto LABEL_24;
          }

LABEL_23:
          IOObjectRelease(v18);
          goto LABEL_24;
        }

        v13 = 49154;
      }

      else
      {
        v13 = 49231;
      }

      v18 = parent;
      goto LABEL_23;
    }
  }

  else
  {
    v15 = sub_10002E16C(__s);
    if (v15)
    {
      v12 = v15;
      v16 = sub_10002E05C(v15, "AppleAPFSContainer");
      parent = v16;
      if (!v16)
      {
        if (!a5 || (v16 = sub_10002E23C(v12), (parent = v16) == 0))
        {
          v13 = 49231;
          goto LABEL_24;
        }
      }

      goto LABEL_17;
    }
  }

  return 49154;
}

uint64_t sub_10002E53C(uint64_t a1, uint64_t a2)
{
  if (((*(*(a2 + 40) + 264) | 0x100u) & 0x109) == 0x100)
  {
    v27 = 0xAAAAAAAAAAAAAAAALL;
    v28 = 0xAAAAAAAAAAAAAAAALL;
    v3 = sub_10002E908(a1, a2, &v28, &v27);
    if (v3)
    {
      v4 = v3;
      if (v3 != 2)
      {
        sub_10004565C("iOS encryption rolling state object: cannot get ierso xattr\n");
        v5 = 1143;
LABEL_16:
        sub_100049C40(v5, v4);
        return v4;
      }

      return 0;
    }

    v7 = v28;
    if (v27 <= 4)
    {
      sub_10004565C("iOS encryption rolling state object: xattr record too small (%zu)\n", v27);
      v4 = 92;
      v8 = 1136;
LABEL_19:
      v11 = 92;
LABEL_20:
      sub_100049C40(v8, v11);
LABEL_21:
      v9 = v7;
      goto LABEL_22;
    }

    if ((*v28 & 3) != 2)
    {
      sub_10004565C("iOS encryption rolling state object: xattr invalid storage type, flags (%hu)\n", *v28);
      v4 = 92;
      v8 = 1137;
      goto LABEL_19;
    }

    v10 = v28[1];
    if (v10 + 4 != v27)
    {
      sub_10004565C("iOS encryption rolling state object: xattr payload (%hu) does not match record size (%zu)\n", v28[1], v27);
      v4 = 92;
      v8 = 1138;
      goto LABEL_19;
    }

    if (v10 <= 3)
    {
      sub_10004565C("iOS encryption rolling state object: xattr payload (%hu) is too small\n", v28[1]);
      v4 = 92;
      v8 = 1139;
      goto LABEL_19;
    }

    v13 = *(v28 + 1);
    if (v13 > 2)
    {
      sub_100045744("iOS encryption rolling state object: ierso version (%u) unrecognized\n", *(v28 + 1));
      sub_100049C40(0x474, -6);
      v4 = 0;
      goto LABEL_21;
    }

    v14 = qword_100076F30[v13];
    if (v14 != v10)
    {
      sub_10004565C("iOS encryption rolling state object: size (%u), version (%u) does not match expected size (%zu)\n", v10, *(v28 + 1), v14);
      v4 = 92;
      v8 = 1141;
      goto LABEL_19;
    }

    v15 = malloc_type_calloc(1uLL, 0x170uLL, 0x1000040BCF37258uLL);
    if (!v15)
    {
      sub_10004565C("iOS encryption rolling state object: failed to allocate ierso\n");
      v4 = 12;
      v8 = 1142;
      v11 = 12;
      goto LABEL_20;
    }

    v16 = v15;
    __memcpy_chk();
    v17 = *v16;
    if (!*v16)
    {
      *(v16 + 32) = 1;
    }

    v18 = 48;
    if (!*(a2 + 56))
    {
      v18 = 40;
    }

    v19 = *(a2 + v18);
    v21 = *(v16 + 8);
    v20 = *(v16 + 16);
    v22 = *(v19 + 176);
    if (v20 > v21 || (v21 < v22 ? (v23 = v22 >> 60 == 0) : (v23 = 0), !v23))
    {
      sub_10004565C("iOS encryption rolling state object: epoch unordered: current_id (%llu) <= epoch (%llu) < apfs_next_obj_id (%llu) <= MAX_JOBJ_ID (%llu)\n", v20, v21, v22, 0xFFFFFFFFFFFFFFFLL);
      v4 = 92;
      v24 = 1128;
LABEL_38:
      sub_100049C40(v24, 92);
LABEL_39:
      free(v16);
      goto LABEL_21;
    }

    if (*(v16 + 24) >> 55)
    {
      sub_10004565C("iOS encryption rolling state object: current_offset (%llu) too large\n", *(v16 + 24));
      v4 = 92;
      v24 = 1129;
      goto LABEL_38;
    }

    v25 = *(v16 + 32);
    if ((v25 - 1) >= 2)
    {
      sub_10004565C("iOS encryption rolling state object: (version %u) invalid policy (%u)\n", v17, v25);
      v4 = 92;
      v24 = 1130;
      goto LABEL_38;
    }

    v26 = *(v16 + 36);
    if (v25 == 1)
    {
      if (v26 >= 2)
      {
        sub_10004565C("iOS encryption rolling state object: (version %u) lite rolling has invalid current_state (%u)\n", v17, v26);
        v24 = 1131;
LABEL_56:
        v4 = 92;
        goto LABEL_38;
      }
    }

    else if (v26 - 1 >= 2)
    {
      if (v26)
      {
        sub_10004565C("iOS encryption rolling state object: (version %u) full rolling has unrecognized current_state (%u)\n", v17, v26);
        v24 = 1133;
        goto LABEL_56;
      }

      if (v20)
      {
        sub_10004565C("iOS encryption rolling state object: (version %u) current_state unset, yet non-zero current_id (%llu)", v17, v20);
        v24 = 1132;
        goto LABEL_56;
      }
    }

    v4 = sub_10002EACC(v16);
    if (!v4)
    {
      sub_10002EB3C(v16);
    }

    goto LABEL_39;
  }

  v28 = 0xAAAAAAAAAAAAAAAALL;
  v6 = sub_10002E908(a1, a2, &v28, &v27);
  if (!v6)
  {
    sub_10004565C("iOS encryption rolling state object: non-iOS content protected volume unexpectedly has ierso\n");
    v4 = 92;
    sub_100049C40(0x479, 92);
    v9 = v28;
LABEL_22:
    free(v9);
    return v4;
  }

  v4 = v6;
  if (v6 != 2)
  {
    sub_10004565C("iOS encryption rolling state object: cannot determine absence of ierso xattr\n");
    v5 = 1144;
    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_10002E908(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = 38;
  v23 = 3804;
  v25 = 0x4000000000000003;
  v26 = 28;
  strcpy(v27, "com.apple.system.apfs.ierso");
  v8 = malloc_type_malloc(0xEDCuLL, 0xBC85CF50uLL);
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  v10 = *(a2 + 48);
  v11 = 48;
  if (!*(a2 + 56))
  {
    v11 = 40;
  }

  v12 = *(a2 + v11);
  v13 = *(a2 + 48);
  if (!v10)
  {
    v13 = *(a2 + 40);
  }

  v14 = *(v12 + 116);
  v15 = *(v12 + 136);
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[2] = v16;
  v22[3] = v16;
  v22[0] = v16;
  v22[1] = v16;
  if ((*(v13 + 56) & 0x20) != 0)
  {
    v17 = *(a2 + 16);
  }

  else
  {
    v17 = 0;
  }

  if (!v10)
  {
    v10 = *(a2 + 40);
  }

  if ((*(v10 + 56) & 0x20) != 0)
  {
    v19 = *(a2 + 20);
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_100039748(v22, a1, a2, v14 & 0xC0000000, v14, 14, v17, *(*(a1 + 8) + 36), 0, 0, v19, v15, sub_10003F384);
  if (v20)
  {
    v18 = v20;
  }

  else
  {
    v18 = sub_1000397B8(v22, *(a2 + 56), 0, &v25, &v24, 38, v9, &v23);
    if (!v18)
    {
      *a3 = v9;
      *a4 = v23;
      return v18;
    }
  }

  free(v9);
  return v18;
}

uint64_t sub_10002EACC(_DWORD *a1)
{
  if (a1[8] != 2 || a1[9] != 2 || memchr(a1 + 10, 0, 0x80uLL))
  {
    return 0;
  }

  sub_10004565C("iOS encryption rolling state object: current_xattr is unterminated\n");
  v1 = 92;
  sub_100049C40(0x46E, 92);
  return v1;
}

double sub_10002EB3C(uint64_t a1)
{
  v2 = sub_10000EC94();
  v4 = *(a1 + 168);
  v5 = *(a1 + 176);
  if (!v4)
  {
    v4 = v2;
  }

  if (!v5)
  {
    v5 = v2;
  }

  if (v4 > v5 || v5 > v2)
  {
    sub_100045744("iOS encryption rolling state object: (version %u) timestamps unordered: start_time (%llu) <= end_time (%llu) <= current_time (%llu)\n", *a1, v4, v5, v2);

    sub_100049C40(0x46F, -4);
  }

  return result;
}

uint64_t sub_10002EBC8(uint64_t **a1, void **a2, int a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v8 = 22;
  if (a3 <= 0x7FFFFFF)
  {
    if (a3 == 0x80000000)
    {
      v9 = sub_100031300(*a1, a5, 0, 0, &v22);
    }

    else
    {
      if (a3)
      {
        goto LABEL_17;
      }

      v9 = sub_10001F0D4(*a1, a1[1], a5, a4, &v22);
    }

    v8 = v9;
    if (!v9)
    {
      v12 = v23;
      v13 = *(a1 + 6);
      goto LABEL_14;
    }

LABEL_17:
    v14 = *a2;
    if (!*a2)
    {
      v14 = malloc_type_malloc(*(a1 + 6), 0x6FE5E56FuLL);
      *a2 = v14;
      if (!v14)
      {
        return 12;
      }
    }

    if (!v8)
    {
      v15 = **a1;
      if ((v23 & 0x400000000) != 0)
      {
        v19 = a1[1];
        if ((WORD2(v23) & 0x700) == 0x100)
        {
          v17 = 4;
        }

        else
        {
          v17 = 0;
        }

        if ((WORD2(v23) & 0x700) == 0x100)
        {
          v18 = a5 ^ HIDWORD(v24) | a5 & 0xFFFFFFFF00000000 ^ (v24 << 32);
        }

        else
        {
          v18 = 0;
        }

        if (v19)
        {
          v20 = v19[(BYTE4(v23) >> 5) + 3];
          v21 = &v19[12 * (BYTE4(v23) >> 5) + 104];
          if (v20)
          {
            v15 = v20;
            v16 = v21;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
      }

      return sub_10002F454(v15, v22, v23 / *((*a1)[1] + 36), v14, v16, 0, 0, v18, v17);
    }

    return v8;
  }

  if (a3 == 0x40000000)
  {
    LODWORD(v23) = *(a1 + 6);
    v13 = v23;
    v22 = a5;
    v12 = v23;
LABEL_14:
    if (v12 == v13)
    {
      v8 = 0;
    }

    else
    {
      v8 = 22;
    }

    goto LABEL_17;
  }

  if (a3 != 0x8000000)
  {
    goto LABEL_17;
  }

  v10 = *(a1 + 6);

  return sub_10001C564(v10, a5, a2);
}

uint64_t sub_10002EDA8(uint64_t **a1, void *__src, int a3, uint64_t a4, uint64_t a5)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  result = 22;
  if (a3 <= 0x7FFFFFF)
  {
    if (a3 == 0x80000000)
    {
      result = sub_100031300(*a1, a5, 0, 0, &v19);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3)
      {
        return result;
      }

      result = sub_10001F0D4(*a1, a1[1], a5, a4, &v19);
      if (result)
      {
        return result;
      }
    }

    v10 = *(a1 + 6);
    if (v20 != v10)
    {
      return 22;
    }

    goto LABEL_15;
  }

  if (a3 == 0x40000000)
  {
    v10 = *(a1 + 6);
    LODWORD(v20) = v10;
    v19 = a5;
LABEL_15:
    v11 = **a1;
    if ((v20 & 0x400000000) != 0)
    {
      v15 = a1[1];
      if ((WORD2(v20) & 0x700) == 0x100)
      {
        v13 = 4;
      }

      else
      {
        v13 = 0;
      }

      if ((WORD2(v20) & 0x700) == 0x100)
      {
        v14 = a5 ^ HIDWORD(v21) | a5 & 0xFFFFFFFF00000000 ^ (v21 << 32);
      }

      else
      {
        v14 = 0;
      }

      if (v15)
      {
        v16 = v15[(BYTE4(v20) >> 5) + 3];
        v17 = &v15[12 * (BYTE4(v20) >> 5) + 104];
        if (v16)
        {
          v11 = v16;
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    result = sub_10002F4BC(v11, v19, v10 / *((*a1)[1] + 36), __src, v12, v14, v13);
    if (!result)
    {
      v18 = a1[1];
      result = 0;
      if (v18)
      {
        *(v18 + 12) = 1;
      }
    }

    return result;
  }

  if (a3 == 0x8000000)
  {
    v9 = *(a1 + 6);

    return sub_10001C59C(v9, a5, __src);
  }

  return result;
}

uint64_t sub_10002EF64(uint64_t **a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = a5;
  v28 = 0uLL;
  v29 = 0;
  if (a3 && a5)
  {
    return 22;
  }

  if (a3 && a3 != 0x40000000)
  {
    if (a3 != 0x8000000)
    {
      return 45;
    }

    result = sub_10001C3D8(*(a1 + 6), &v28, a2);
    if (!result)
    {
      *a6 = v28;
    }

    return result;
  }

  v13 = *a1;
  if (!(*a1)[3])
  {
    return 22;
  }

  v14 = a1[1];
  v15 = (*(a1 + 6) / *(v13[1] + 36));
  if (v14)
  {
    v16 = (*(v14[2].i64[1] + 264) & 1) == 0;
    if ((*(v14[2].i64[1] + 264) & 1) == 0 && !a3)
    {
      result = sub_100001D64(v13, v14, 0, v15, &v28);
      if (result)
      {
        return result;
      }

      v16 = 1;
      goto LABEL_28;
    }
  }

  else
  {
    v16 = 0;
  }

  if (*(a1 + 12) == 11)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  result = sub_100001D64(v13, v14, v17, v15, &v28);
  if (result)
  {
    return result;
  }

  if (a3)
  {
    v7 = v28;
LABEL_24:
    *a6 = v7;
    if (!a2)
    {
      return 0;
    }

    if (*a2)
    {
      return 0;
    }

    v18 = malloc_type_malloc(*(a1 + 6), 0x9583098AuLL);
    *a2 = v18;
    if (v18)
    {
      return 0;
    }

    else
    {
      return 12;
    }
  }

LABEL_28:
  if (!v7)
  {
    v19 = (*a1)[1];
    v7 = *(v19 + 88);
    *(v19 + 88) = v7 + 1;
  }

  DWORD2(v28) = *(a1 + 6);
  v20 = a1[1];
  if (v16)
  {
    v21 = HIDWORD(v28) | 4;
    v22 = *(v20 + 72);
    if (v22 && (*(v22 + 32) & 0x10) != 0)
    {
      v21 = HIDWORD(v28) | 0x14;
    }

    HIDWORD(v28) = v21 & 0xFFFFFF1F | (32 * (*(*(v20 + 40) + 1096) != 0));
  }

  v23 = *a1;
  v26 = v28;
  v27 = v29;
  result = sub_10001F1AC(v23, v20, v7, a4, &v26);
  if (!result)
  {
    result = sub_100030D18(*a1, v24, v25);
    if (!result)
    {
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t sub_10002F164(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  memset(v11, 0, sizeof(v11));
  if (a2 != 0x8000000)
  {
    if ((a2 | 0x40000000) != 0x40000000)
    {
      return 45;
    }

    v8 = *a1;
    if (!*(*a1 + 24))
    {
      return 22;
    }

    v9 = *(a1 + 24);
    v10 = *(v8[1] + 36);
    if (a2)
    {
      v11[0] = a4;
    }

    else
    {
      LODWORD(result) = sub_10001F210(v8, *(a1 + 8), a4, a3, v11);
      if (result == 2)
      {
        sub_100045744("tried to remove oid %llu from the omap but it wasn't there\n", v4);
        return 0;
      }

      if (result)
      {
        if (result == 17)
        {
          return 0;
        }

        else
        {
          return result;
        }
      }

      v8 = *a1;
      v4 = v11[0];
    }

    return sub_100002C74(v8, *(a1 + 8), v4, v9 / v10);
  }

  v6 = *(a1 + 24);

  return sub_10001C500(v6, a4);
}

uint64_t sub_10002F278(int a1)
{
  v7 = -1431655766;
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v6.st_blksize = v2;
  *v6.st_qspare = v2;
  v6.st_birthtimespec = v2;
  *&v6.st_size = v2;
  v6.st_mtimespec = v2;
  v6.st_ctimespec = v2;
  *&v6.st_uid = v2;
  v6.st_atimespec = v2;
  *&v6.st_dev = v2;
  memset(&__b, 170, sizeof(__b));
  if (!ioctl(a1, 0x40046418uLL, &v7))
  {
    return v7;
  }

  if (!fstatfs(a1, &__b))
  {
    return __b.f_bsize;
  }

  if (!fstat(a1, &v6))
  {
    return v6.st_blksize;
  }

  v3 = __error();
  v4 = strerror(*v3);
  sub_10002B374("%s:%d: can't get the device block size (%s). assuming 512\n", "io_get_device_block_size", 57, v4);
  return 512;
}

uint64_t sub_10002F3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 72);
  v8 = *(v7 + 32);
  if (v8)
  {

    return v8();
  }

  else
  {
    v10 = (*(v7 + 24))();
    v11 = v10;
    v12 = *a6;
    if (*a6)
    {
      *(a6 + 96) = v10;
      v12(a6);
    }

    return v11;
  }
}

uint64_t sub_10002F454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a9)
  {
    v9 = *(*(a1 + 72) + 40);
    if (v9)
    {
      return v9();
    }

    else
    {
      return 45;
    }
  }

  else if (a6)
  {
    return sub_10002F3DC(a1, a2, a3, a4, a5, a7);
  }

  else
  {
    return (*(*(a1 + 72) + 24))();
  }
}

uint64_t sub_10002F4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = *(a1 + 72);
  if (!a7)
  {
    return (*(v7 + 64))();
  }

  v8 = *(v7 + 72);
  if (v8)
  {
    return v8();
  }

  else
  {
    return 45;
  }
}

uint64_t sub_10002F4F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 68);
  if (v3 && (v4 = *(a2 + 88)) != 0)
  {
    v5 = *(a2 + 24);
    v7 = *(a2 + 32);
    return sub_10001BF60((a1 + 212), v3, 5u, v5, *(a2 + 16), &v7, v4, 0, 0);
  }

  else
  {
    result = aio_error((a2 + 8));
    if (result == -1)
    {
      return *__error();
    }
  }

  return result;
}

uint64_t sub_10002F574(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2)
  {
    *a2 = a1[22];
  }

  if (a3)
  {
    *a3 = a1[23];
  }

  if (a4)
  {
    *a4 = a1[24];
  }

  if (a5)
  {
    *a5 = a1[25];
  }

  return 0;
}

uint64_t sub_10002F5BC(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if ((a9 & 0xFFFFFFFA) != 0 || (a8 != 0) == a9 < 4)
  {
    if ((a8 != 0) != a9 < 4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 22;
    }

    if ((a9 & 0xFFFFFFFA) != 0)
    {
      v11 = 45;
    }

    else
    {
      v11 = v10;
    }

    sub_10002B374("%s:%d: failed to read blknum 0x%llx size %zu flags 0x%x error %d dev_name = %s\n", "fd_dev_read_extended", 597, a2, a3, a9, v11, (a1 + 212));
    return v11;
  }

  else if (a6)
  {

    return sub_100030810(a1, a2, a3, a4, a5, a9, a7, a8);
  }

  else
  {

    return sub_10003045C(a1, a2, a3, a4, a5, a9, a8);
  }
}

uint64_t sub_10002F69C(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  aiocblist = (a2 + 8);
  v5 = *(a1 + 68);
  if (v5 && (v6 = *(a2 + 88)) != 0)
  {
    v7 = *(a2 + 24);
    v17 = *(a2 + 32);
    v8 = sub_10001BF60((a1 + 212), v5, 3u, v7, *(a2 + 16), &v17, v6, 0, 0);
    if (!v8)
    {
      if (v17 == *(a2 + 32))
      {
        v8 = 0;
      }

      else
      {
        v8 = 5;
      }
    }
  }

  else if (aio_suspend(&aiocblist, 1, 0) || (v11 = aio_return(v4), v11 == -1))
  {
    v8 = *__error();
  }

  else
  {
    v12 = v11;
    if (v11 >= *(a2 + 32))
    {
      v8 = 0;
    }

    else
    {
      v8 = 5;
    }

    v13 = *(a2 + 88);
    if (v13)
    {
      v14 = *(v13 + 72);
      if (v14)
      {
        v15 = *(a1 + 84);
        v16 = *(a2 + 24);
        *(v14 + 8) = *(a2 + 16) / v15;
        sub_10000D37C(v13, v16, v16, v12, *(a2 + 16), v15, 0);
      }
    }
  }

  v9 = *a2;
  if (*a2)
  {
    *(a2 + 96) = v8;
    v9(a2);
  }

  return v8;
}

uint64_t sub_10002F7C0(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  if ((a7 & 0xFFFFFFFA) != 0 || (a6 != 0) == a7 < 4)
  {
    if ((a6 != 0) != a7 < 4)
    {
      v9 = 0;
    }

    else
    {
      v9 = 22;
    }

    if ((a7 & 0xFFFFFFFA) != 0)
    {
      v10 = 45;
    }

    else
    {
      v10 = v9;
    }

    sub_10002B374("%s:%d: failed to write blknum 0x%llx size %zu flags 0x%x error %d dev_name = %s\n", "fd_dev_write_extended", 845, a2, a3, a7, v10, (a1 + 212));
    return v10;
  }

  else
  {

    return sub_10003097C(a1, a2, a3, a4, a5, a7, a6);
  }
}

uint64_t sub_10002F86C(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 36);
    if (v5)
    {
      result = sub_1000306D4(a1, *(a1 + 40), v5, v4, *(a1 + 48), *(a1 + 56) & 1, 0);
      if (result)
      {
        return result;
      }

      *(a1 + 36) = 0;
    }
  }

  fsync(*a1);
  v7 = *(a1 + 4);
  if ((v7 & 0x80000000) == 0)
  {
    fsync(v7);
  }

  if (!a2 && (*(a1 + 88) & 2) != 0)
  {
    v9 = ioctl(*a1, 0x80186416uLL, &v10, 0, 0, 2);
  }

  else
  {
    v8 = *a1;
    if ((*(a1 + 64) & 0xF000) == 0x8000)
    {
      v9 = fcntl(v8, 51, 0);
    }

    else
    {
      v9 = ioctl(v8, 0x20006416uLL, 0, v10, v11);
    }
  }

  if (v9 == -1)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002F974(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(a1 + 112);
  v5 = v4 > a2;
  v6 = v4 - a2;
  if (!v5 || v6 < a3)
  {
    return 6;
  }

  v10 = *(a1 + 192);
  if (!v10)
  {
    return 45;
  }

  if (a4 != 1)
  {
    return 22;
  }

  v13 = *(a1 + 200);
  if (v13 >= *(a1 + 204) || *(a1 + 208) != 1)
  {
    result = sub_10002FA34(a1);
    if (result)
    {
      return result;
    }

    v13 = *(a1 + 200);
    v10 = *(a1 + 192);
  }

  result = 0;
  *(a1 + 200) = v13 + 1;
  v14 = *(a1 + 84);
  v15 = (v10 + 16 * v13);
  *v15 = v14 * a2;
  v15[1] = v14 * a3;
  *(a1 + 208) = 1;
  return result;
}

uint64_t sub_10002FA34(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (!v1)
  {
    return 45;
  }

  v3 = *(a1 + 200);
  if (!v3)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v7 = v1;
  v4 = *(a1 + 208);
  v8 = v3;
  v9 = v4;
  if (ioctl(*a1, 0x80406459uLL, &v7) == -1)
  {
    v5 = *__error();
    if (v5)
    {
      sub_10002B374("%s:%d: hinting %d blocks from hint_list failed w/: %d (entry %lld:%lld ; %lld:%lld)\n", "fd_dev_hint_flush", 936, *(a1 + 200), v5, **(a1 + 192), *(*(a1 + 192) + 8), *(*(a1 + 192) + 16), *(*(a1 + 192) + 24));
    }
  }

  else
  {
    v5 = 0;
  }

  bzero(*(a1 + 192), 16 * *(a1 + 204));
  *(a1 + 200) = 0;
  return v5;
}

uint64_t sub_10002FB18(uint64_t a1)
{
  v2 = (a1 + 212);
  v3 = strlen((a1 + 212));
  v4 = *(a1 + 24);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = *(a1 + 36);
  if (!v5)
  {
    v7 = 0;
LABEL_9:
    sub_10002B400(v4, (*(a1 + 84) * *(a1 + 32)));
    *(a1 + 24) = 0;
    goto LABEL_10;
  }

  v6 = sub_1000306D4(a1, *(a1 + 40), v5, v4, *(a1 + 48), *(a1 + 56) & 1, 0);
  v7 = v6;
  if (v6)
  {
    sub_10002B374("%s:%d: Hit an error flushing the cache, %d dev_name = %s\n", "fd_dev_close", 333, v6, v2);
  }

  *(a1 + 36) = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(a1 + 192))
  {
    v8 = sub_10002FA34(a1);
    v7 = v8;
    if (v8)
    {
      sub_10002B374("%s:%d: Hit an error flushing the hint list, %d dev_name = %s\n", "fd_dev_close", 346, v8, v2);
    }

    sub_10002B400(*(a1 + 192), 16 * *(a1 + 204));
    *(a1 + 192) = 0;
  }

  if (close(*a1))
  {
    v7 = *__error();
  }

  v9 = *(a1 + 4);
  if ((v9 & 0x80000000) == 0 && close(v9))
  {
    v7 = *__error();
  }

  v10 = *(a1 + 8);
  if ((v10 & 0x80000000) == 0 && close(v10))
  {
    v7 = *__error();
  }

  sub_10001C070(*(a1 + 68));
  sub_10002B400(a1, v3 + 216);
  return v7;
}

uint64_t sub_10002FC90(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 112) * *(a1 + 84) / a2;
  *(a1 + 84) = a2;
  *(a1 + 112) = v2;
  return 0;
}

uint64_t sub_10002FCDC(int a1, void *a2)
{
  memset(__b, 170, sizeof(__b));
  *a2 = 0;
  if (fcntl(a1, 50, __b))
  {
    LOBYTE(__b[0]) = 0;
  }

  if (__b[0] ^ 0x7665642F | LOBYTE(__b[1]) ^ 0x2F)
  {
    v4 = 0;
  }

  else
  {
    v4 = 5;
  }

  v5 = strlen(__b + v4);
  v6 = sub_10002B3C4(1uLL, v5 + 216, 0xC2501DC2uLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  *(v6 + 4) = -1;
  *v6 = a1;
  strlcpy(v6 + 212, __b + v4, v5 + 1);
  v8 = sub_10002FE18(v7);
  if (v8)
  {
    sub_10002B400(v7, v5 + 216);
  }

  else
  {
    *a2 = v7;
  }

  return v8;
}

uint64_t sub_10002FE18(uint64_t a1)
{
  v20 = -1431655766;
  v18 = -1431655766;
  v19 = -1431655766;
  v17 = -1431655766;
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v16.st_blksize = v2;
  *v16.st_qspare = v2;
  v16.st_birthtimespec = v2;
  *&v16.st_size = v2;
  v16.st_mtimespec = v2;
  v16.st_ctimespec = v2;
  *&v16.st_uid = v2;
  v16.st_atimespec = v2;
  *&v16.st_dev = v2;
  if (fstat(*a1, &v16))
  {
    v3 = __error();
    v4 = *v3;
    sub_10002B374("%s:%d: Couldn't fstat dev_fd (%d), err %d dev_name = %s\n", "dev_init_common", 1035, *a1, *v3, (a1 + 212));
  }

  else
  {
    *(a1 + 72) = off_10007C5F8;
    v5 = sub_10002F278(*a1);
    *(a1 + 80) = v5;
    *(a1 + 84) = v5;
    v6 = *a1;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v7.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v7.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v21.st_blksize = v7;
    *v21.st_qspare = v7;
    v21.st_birthtimespec = v7;
    *&v21.st_size = v7;
    v21.st_mtimespec = v7;
    v21.st_ctimespec = v7;
    *&v21.st_uid = v7;
    v21.st_atimespec = v7;
    *&v21.st_dev = v7;
    if (ioctl(v6, 0x40086419uLL, &v22))
    {
      if (fstat(v6, &v21))
      {
        v8 = __error();
        v9 = strerror(*v8);
        sub_10002B374("%s:%d: can't get block count (%s)\n", "io_get_num_device_blocks", 78, v9);
        v10 = 0;
      }

      else
      {
        st_size = v21.st_size;
        v10 = st_size / sub_10002F278(v6);
      }
    }

    else
    {
      v10 = v22;
    }

    *(a1 + 112) = v10;
    sub_10002DA60(*a1, &v20, &v19, &v18, &v17);
    v12 = v19;
    *(a1 + 88) = v20;
    *(a1 + 92) = v12;
    v13 = v17;
    *(a1 + 96) = v18;
    *(a1 + 100) = v13;
    *(a1 + 64) = v16.st_mode;
    *(a1 + 104) = 0;
    v14 = *(a1 + 80) >> 4;
    *(a1 + 204) = *(a1 + 80) >> 4;
    v4 = 0;
    *(a1 + 192) = sub_10002B3C4(v14, 0x10uLL, 0x1000040451B5BE8uLL);
    *(a1 + 200) = 0;
  }

  return v4;
}

uint64_t sub_10002FFDC(char *a1, int a2, uint64_t *a3)
{
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v6 = 5;
  }

  else
  {
    v6 = 0;
  }

  v7 = &a1[v6];
  v8 = strlen(&a1[v6]);
  *a3 = 0;
  v9 = sub_10002B3C4(1uLL, v8 + 216, 0xB22E4C5DuLL);
  if (v9)
  {
    v10 = v9;
    v11.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v11.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v37.st_blksize = v11;
    *v37.st_qspare = v11;
    v37.st_birthtimespec = v11;
    *&v37.st_size = v11;
    v37.st_mtimespec = v11;
    v37.st_ctimespec = v11;
    *&v37.st_uid = v11;
    v37.st_atimespec = v11;
    *&v37.st_dev = v11;
    v9[17] = 0;
    v12 = v9 + 17;
    if (stat(a1, &v37) || (v37.st_mode & 0xF000) != 0x4000)
    {
      v15 = sub_10002DDF8(a1, 0);
      if (v15)
      {
        v16 = v15;
        *(v10 + 8) = -1;
        v17 = open(a1, a2 & 0xFFFFFFCF | 0x10);
        *(v10 + 4) = v17;
        if (v17 < 0)
        {
          v25 = __error();
          v14 = *v25;
          v26 = strerror(*v25);
          sub_10002B374("%s:%d: failed to open volume device %s: %s\n", "dev_init", 1163, a1, v26);
        }

        else
        {
          v18 = open(v16, a2 & 0xFFFFFFCF | 0x10);
          *v10 = v18;
          if ((v18 & 0x80000000) == 0)
          {
            if (sub_10002DF68(v7))
            {
              v19 = sub_10001BEF4(v7, v12);
              if (v19)
              {
                v14 = v19;
                v20 = strerror(v19);
                sub_10002B374("%s:%d: failed to open connection for multikey crypto i/o on device %s: %s\n", "dev_init", 1177, v16, v20);
                close(*v10);
                close(*(v10 + 4));
LABEL_35:
                free(v16);
LABEL_42:
                sub_10002B400(v10, v8 + 216);
                return v14;
              }
            }

            goto LABEL_33;
          }

          v27 = __error();
          v14 = *v27;
          v28 = strerror(*v27);
          sub_10002B374("%s:%d: failed to open container device %s: %s\n", "dev_init", 1169, v16, v28);
          close(*(v10 + 4));
        }
      }

      else
      {
        *(v10 + 4) = -1;
        v21 = open(a1, a2);
        *v10 = v21;
        if ((v21 & 0x80000000) == 0)
        {
LABEL_32:
          v16 = 0;
LABEL_33:
          v33 = sub_10002FE18(v10);
          if (v33)
          {
            v14 = v33;
            goto LABEL_35;
          }

          strlcpy((v10 + 212), v7, v8 + 1);
          free(v16);
LABEL_43:
          v14 = 0;
          *a3 = v10;
          return v14;
        }

        v22 = 30;
        while (*__error() == 16 && v22 != 0)
        {
          sub_10002B374("%s:%d: open %s hit EBUSY, attempts remaining: %u dev_name = %s\n", "dev_init", 1189, a1, v22, v7);
          sleep(1u);
          v24 = open(a1, a2);
          *v10 = v24;
          --v22;
          if ((v24 & 0x80000000) == 0)
          {
            v16 = 0;
            goto LABEL_33;
          }
        }

        v16 = 0;
        v14 = *__error();
      }
    }

    else
    {
      memset(__b, 170, sizeof(__b));
      memset(v39, 170, sizeof(v39));
      memset(__str, 170, sizeof(__str));
      snprintf(__b, 0x400uLL, "%s/apfs", a1);
      snprintf(__str, 0x400uLL, "%s/apfs_data", a1);
      snprintf(v39, 0x400uLL, "%s/nx", a1);
      v13 = open(__b, a2);
      *(v10 + 4) = v13;
      if (v13 < 0)
      {
        v14 = *__error();
      }

      else
      {
        v14 = 0;
      }

      v29 = open(__str, a2);
      *(v10 + 8) = v29;
      if (v29 < 0)
      {
        v14 = *__error();
      }

      v30 = open(v39, a2);
      v31 = v30;
      *v10 = v30;
      v32 = *(v10 + 4);
      if ((v32 & 0x80000000) == 0 && (*(v10 + 8) & 0x80000000) == 0 && (v30 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      if (!v14)
      {
        v14 = *__error();
        v31 = *v10;
        v32 = *(v10 + 4);
      }

      v34 = *(v10 + 8);
      v35 = strerror(v14);
      sub_10002B374("%s:%d: failed to open apfs/nx special devices ['%s'(%d) / '%s'(%d) / '%s'(%d)] - err %d (%s) dev_name = '%s'\n", "dev_init", 1150, __b, v32, __str, v34, v39, v31, v14, v35, v7);
      close(*v10);
      close(*(v10 + 4));
      close(*(v10 + 8));
      v16 = 0;
    }

    free(v16);
    if (v14)
    {
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  return 12;
}

uint64_t sub_10003045C(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7)
{
  v14 = sub_100030640(a1, a2, a3);
  if (!v14)
  {
    v15 = *(a1 + 84);
    if ((a2 & 0x8000000000000000) == 0 && is_mul_ok(a2, v15) && (v16 = a2 * v15, ((a2 * v15) & 0x8000000000000000) == 0) && is_mul_ok(a3, v15))
    {
      v18 = a3 * v15;
      if (a5 && (v19 = *(a1 + 68)) != 0)
      {
        v20 = a7 == 0;
        if ((a6 & 4) != 0)
        {
          v21 = 0;
        }

        else
        {
          v21 = v16;
        }

        if ((a6 & 4) != 0)
        {
          v20 = 0;
        }

        if (a7)
        {
          v22 = a7;
        }

        else
        {
          v22 = v21;
        }

        v30 = v18;
        v23 = sub_10001BF60((a1 + 212), v19, 1u, a4, v16, &v30, a5, v22, v20);
        if (v30 == v18)
        {
          v24 = 0;
        }

        else
        {
          v24 = 5;
        }

        if (v23)
        {
          return v23;
        }

        else
        {
          return v24;
        }
      }

      else
      {
        if (!a5 || (v25 = *(a1 + 4), v25 < 0))
        {
          v25 = *a1;
        }

        v26 = pread(v25, a4, a3 * v15, a2 * v15);
        v27 = v26;
        if (v26 < 0)
        {
          v28 = __error();
          v14 = *v28;
          if (v14 == 6)
          {
            v14 = 6;
          }

          else
          {
            sub_10002B374("%s:%d: blknum 0x%llx size %zu, error %d dev_name = %s\n", "fd_dev_read_helper", 484, a2, a3, *v28, (a1 + 212));
          }
        }

        else if (v26 == v18)
        {
          v14 = 0;
        }

        else
        {
          v14 = 5;
        }

        if (a5)
        {
          if (v27 >= 1)
          {
            v29 = *(a5 + 72);
            if (v29)
            {
              if (a6)
              {
                *(v29 + 8) = a2;
              }

              sub_10000D37C(a5, a4, a4, v27, v16, *(a1 + 84), 0);
            }
          }
        }
      }
    }

    else
    {
      sub_10002B374("%s:%d: blknum %lld size %zu blksize %u invalid, dev_name = %s\n", "fd_dev_read_helper", 448, a2, a3, *(a1 + 84), (a1 + 212));
      return 22;
    }
  }

  return v14;
}

uint64_t sub_100030640(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 36);
    if (v7)
    {
      v8 = *(a1 + 40);
      if (a3 + a2 > v8 && v8 + v7 > a2)
      {
        result = sub_1000306D4(a1, v8, v7, v6, *(a1 + 48), *(a1 + 56) & 1, 0);
        if (result)
        {
          return result;
        }

        *(a1 + 36) = 0;
      }
    }
  }

  v10 = *(a1 + 112);
  if (v10 - a2 >= a3 && v10 > a2)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_1000306D4(uint64_t a1, unint64_t a2, unint64_t a3, void *__buf, uint64_t a5, char a6, uint64_t a7)
{
  v9 = *(a1 + 112);
  v10 = v9 > a2;
  v11 = v9 - a2;
  if (!v10 || v11 < a3)
  {
    return 6;
  }

  v25[3] = v7;
  v25[4] = v8;
  v14 = *(a1 + 84);
  if ((a2 & 0x8000000000000000) == 0 && is_mul_ok(a2, v14) && (v16 = a2 * v14, ((a2 * v14) & 0x8000000000000000) == 0) && is_mul_ok(a3, v14))
  {
    v17 = a3 * v14;
    if (a5 && (v18 = *(a1 + 68)) != 0)
    {
      v19 = a7 == 0;
      if ((a6 & 4) != 0)
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

      if ((a6 & 4) != 0)
      {
        v19 = 0;
      }

      if (a7)
      {
        v21 = a7;
      }

      else
      {
        v21 = v20;
      }

      v25[0] = v17;
      LODWORD(result) = sub_10001BF60((a1 + 212), v18, 4u, __buf, v16, v25, a5, v21, v19);
      if (v25[0] == v17)
      {
        v22 = 0;
      }

      else
      {
        v22 = 5;
      }

      if (result)
      {
        return result;
      }

      else
      {
        return v22;
      }
    }

    else
    {
      if (!a5 || (v23 = *(a1 + 4), v23 < 0))
      {
        v23 = *a1;
      }

      v24 = pwrite(v23, __buf, a3 * v14, v16);
      if (v24 < 0)
      {
        return *__error();
      }

      else if (v24 == v17)
      {
        return 0;
      }

      else
      {
        return 5;
      }
    }
  }

  else
  {
    sub_10002B374("%s:%d: blknum %lld size %zu blksize %u invalid, dev_name = %s\n", "_fd_dev_write", 702, a2, a3, *(a1 + 84), (a1 + 212));
    return 22;
  }
}

uint64_t sub_100030810(char *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_100030640(a1, a2, a3);
  if (v16)
  {
    goto LABEL_2;
  }

  *(a7 + 8) = 0u;
  v19 = (a7 + 8);
  *(a7 + 88) = a5;
  *(a7 + 24) = 0u;
  *(a7 + 40) = 0u;
  *(a7 + 56) = 0u;
  *(a7 + 72) = 0u;
  v20 = *(a1 + 21);
  v21 = v20 * a2;
  *(a7 + 16) = v20 * a2;
  *(a7 + 24) = a4;
  v22 = v20 * a3;
  *(a7 + 32) = v22;
  if (!a5 || (v23 = *(a1 + 17)) == 0)
  {
    if (a5)
    {
      v27 = *(a1 + 1);
      if (v27 < 0)
      {
        v27 = *a1;
      }

      v19->aio_fildes = v27;
      if (a6)
      {
        v28 = *(a5 + 72);
        if (v28)
        {
          *(v28 + 8) = a2;
        }
      }
    }

    else
    {
      v19->aio_fildes = *a1;
    }

    if (!aio_read(v19))
    {
      return 0;
    }

    if (*__error() == 35)
    {
      v16 = 16;
    }

    else
    {
      v16 = *__error();
      if (!v16)
      {
        return v16;
      }
    }

    goto LABEL_2;
  }

  v24 = (a6 & 4) == 0;
  if ((a6 & 4) != 0)
  {
    v25 = 0;
  }

  else
  {
    v25 = v21;
  }

  if (a8)
  {
    v26 = a8;
  }

  else
  {
    v26 = v25;
  }

  if (a8)
  {
    v24 = 0;
  }

  v29 = v22;
  v16 = sub_10001BF60(a1 + 212, v23, 2u, a4, v21, &v29, a5, v26, v24);
  if (v16)
  {
LABEL_2:
    v17 = *a7;
    if (*a7)
    {
      *(a7 + 96) = v16;
      v17(a7);
    }
  }

  return v16;
}

uint64_t sub_10003097C(uint64_t a1, unint64_t a2, unint64_t a3, char *__buf, uint64_t a5, int a6, uint64_t a7)
{
  if (*(a1 + 60) && !*(a1 + 24))
  {
    v14 = *(a1 + 84);
    v15 = v14 <= 0x100000 ? 0x100000 / v14 : 1;
    *(a1 + 32) = v15;
    v16 = sub_10002B43C(v15 * v14, 0x835B50A5uLL);
    *(a1 + 24) = v16;
    *(a1 + 36) = 0;
    if (!v16)
    {
      return 12;
    }
  }

  if (!a5)
  {
    if (!*(a1 + 24))
    {
      goto LABEL_45;
    }

LABEL_23:
    if (!a3)
    {
      return 0;
    }

    v26 = *(a1 + 36);
    while (1)
    {
      while (1)
      {
        v27 = *(a1 + 32) - v26;
        v28 = a3 <= v27 ? a3 : v27;
        if ((a6 & 4) != 0 || ((*(a1 + 56) ^ a6) & 1) != 0 || a2 != *(a1 + 40) + v26)
        {
          break;
        }

        if (*(a1 + 48) != a5 || v28 == 0)
        {
          break;
        }

        v31 = *(a1 + 24);
        v32 = *(a1 + 84);
        v33 = v32 * v26;
        if (a5 && *(a5 + 72))
        {
          sub_10000D37C(a5, __buf, (v31 + v33), (v32 * v28), a2 * v32, v32, 1);
          *(*(a5 + 72) + 8) += v28;
        }

        else
        {
          memcpy((v31 + v33), __buf, (v32 * v28));
        }

        v26 = *(a1 + 36) + v28;
        *(a1 + 36) = v26;
        a2 += v28;
        a3 -= v28;
        __buf += (*(a1 + 84) * v28);
        if (!a3)
        {
          return 0;
        }
      }

      if (v26)
      {
        v30 = sub_1000306D4(a1, *(a1 + 40), v26, *(a1 + 24), *(a1 + 48), *(a1 + 56) & 1, a7);
        if (v30)
        {
          break;
        }
      }

      v26 = 0;
      *(a1 + 36) = 0;
      *(a1 + 40) = a2;
      *(a1 + 48) = a5;
      *(a1 + 56) = a6;
    }

    return v30;
  }

  v17 = *(a5 + 72);
  if ((a6 & 1) != 0 && v17)
  {
    *(v17 + 8) = a2;
  }

  if (*(a1 + 24))
  {
    goto LABEL_23;
  }

  if (v17)
  {
    v18 = sub_10002B43C(*(a1 + 84), 0x4C8514E4uLL);
    if (v18)
    {
      v19 = v18;
      v20 = *(a1 + 84);
      if (a3)
      {
        v21 = a3 - 1;
        do
        {
          sub_10000D37C(a5, __buf, v19, v20, a2 * v20, v20, 1);
          ++*(*(a5 + 72) + 8);
          v22 = sub_1000306D4(a1, a2, 1uLL, v19, a5, a6, a7);
          v23 = v22;
          v20 = *(a1 + 84);
          v25 = v21-- != 0;
          if (v22)
          {
            break;
          }

          ++a2;
          __buf += v20;
        }

        while (v25);
      }

      else
      {
        v23 = 0;
      }

      sub_10002B400(v19, v20);
      return v23;
    }

    return 12;
  }

LABEL_45:

  return sub_1000306D4(a1, a2, a3, __buf, a5, a6, a7);
}

uint64_t sub_100030C54(uint64_t a1, _DWORD *a2, int a3, _DWORD *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 4 && a5 == 4)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

uint64_t sub_100030C88(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 8 && a5 == 8)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

uint64_t sub_100030CBC(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 16 && a5 == 16)
  {
    if (*a2 >= *a4)
    {
      if (*a2 > *a4)
      {
        v7 = 1;
      }

      else
      {
        v8 = a2[1];
        v9 = a4[1];
        v10 = v8 >= v9;
        v7 = v8 > v9;
        if (!v10)
        {
          v7 = -1;
        }
      }
    }

    else
    {
      v7 = -1;
    }

    result = 0;
    *a6 = v7;
  }

  return result;
}

uint64_t sub_100030D18(uint64_t *a1, double a2, int8x16_t a3)
{
  v4 = a1[1];
  v5 = *(v4 + 36);
  v13.i64[0] = 0;
  v14 = 0;
  v13.i64[1] = v5;
  v6 = *(v4 + 104);
  v7 = (*(v4 + 140) + *(v4 + 136) - 1) % (v6 & 0x7FFFFFFFu);
  v8 = *(v4 + 112);
  if (v6 < 0)
  {
    result = sub_100031504(a1, v8, v7, &v13, 0);
    if (result)
    {
      return result;
    }
  }

  else
  {
    v13.i64[0] = v8 + v7;
  }

  v11 = v13;
  v12 = v14;
  result = sub_100026A10(a1, 0, v4, v11.i64, v13, a3);
  if (!result)
  {
    v13.i64[0] = 0;
    v11 = v13;
    v12 = v14;
    return sub_100026A10(a1, 0, v4, v11.i64, v13, v10);
  }

  return result;
}

uint64_t sub_100030DE8(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 104);
  if ((v4 & 0x7FFFFFFFu) <= a2)
  {
    return 22;
  }

  v7 = *(v3 + 112);
  if (v4 < 0)
  {
    return sub_100031504(a1, v7, a2, a3, 0);
  }

  result = 0;
  *a3 = v7 + a2;
  return result;
}

uint64_t sub_100030E2C(uint64_t *a1, int a2, int a3, size_t size, uint64_t a5, void *a6, uint64_t a7)
{
  v7 = a1[1];
  v8 = *(v7 + 140);
  v9 = *(v7 + 148);
  v10 = *(v7 + 36);
  v74 = 0;
  v72.i64[0] = 0;
  v73 = 0;
  v72.i64[1] = v10;
  v11 = size / v10;
  if (size % v10)
  {
    return 22;
  }

  v16 = size;
  v69 = v9;
  v20 = malloc_type_calloc(1uLL, size, 0x90A0C383uLL);
  if (!v20)
  {
    return 12;
  }

  v21 = (*(v7 + 140) + *(v7 + 136) - 2) % (*(v7 + 104) & 0x7FFFFFFFu);
  v22 = a1[1];
  v23 = *(v22 + 104);
  v68 = v20;
  v67 = v8;
  if ((v23 & 0x7FFFFFFFu) <= v21)
  {
    v12 = 22;
    goto LABEL_29;
  }

  v24 = *(v22 + 112);
  if (v23 < 0)
  {
    v26 = sub_100031504(a1, v24, v21, &v72, 0);
    if (v26)
    {
      goto LABEL_22;
    }

    v65 = a3;
    v25 = v72.i64[0];
  }

  else
  {
    v65 = a3;
    v25 = v24 + v21;
    v72.i64[0] = v24 + v21;
  }

  v26 = sub_100025548(a1, 0, 0x40000000, v25, 0, 0, 12, 0, &v74, 0, 0);
  if (v26)
  {
LABEL_22:
    v12 = v26;
    goto LABEL_29;
  }

  v64 = v25;
  v29 = v74;
  if (v74[9] >= ((v10 - 40) / 0x28))
  {
    v63 = v74;
    v60 = v72.i32[3];
    v61 = v72.i32[2];
    v46 = v73;
    v74 = 0;
    v47 = sub_100030DE8(a1, (*(v7 + 140) + *(v7 + 136) - 1) % (*(v7 + 104) & 0x7FFFFFFFu), &v72);
    if (v47)
    {
      v12 = v47;
    }

    else
    {
      v59 = v46;
      v29 = malloc_type_calloc(1uLL, v10, 0x7433E636uLL);
      v74 = v29;
      if (v29)
      {
        *(v29 + 1) = v72.i64[0];
        v33 = a1[1];
        *(v29 + 2) = *(v33 + 16);
        v27.i64[0] = 1073741836;
        *(v29 + 3) = 1073741836;
        v29[8] |= 1u;
        v35 = v63;
        v63[8] &= ~1u;
        v48 = *(v7 + 140);
        v49 = *(v7 + 104) & 0x7FFFFFFF;
        v50 = (*(v7 + 136) + v48) % v49;
        *(v7 + 140) = v48 + 1;
        if (*(v7 + 128) == v50)
        {
          *(v7 + 128) = (v49 + v50 + 1) % v49;
        }

        v30 = v64;
        v31 = v60;
        v32 = v59;
        v34 = v61;
        goto LABEL_11;
      }

      v12 = 12;
    }

    v35 = v63;
    goto LABEL_28;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = a1[1];
  v34 = v10;
  v35 = 0;
LABEL_11:
  v36 = a2 | 0x80000000;
  v37 = &v29[10 * v29[9] + 10];
  *v37 = v36;
  *(v37 + 4) = v65;
  *(v37 + 8) = v16;
  *(v37 + 16) = a5;
  v38 = *(v7 + 88);
  *(v7 + 88) = v38 + 1;
  *(v37 + 24) = v38;
  LODWORD(v37) = *(v7 + 148);
  v39 = (*(v7 + 144) + v37) % (*(v7 + 108) & 0x7FFFFFFFu);
  *(v7 + 148) = v11 + v37;
  v40 = *(v33 + 108);
  if ((v40 & 0x7FFFFFFFu) > v39)
  {
    v41 = &v29[10 * v29[9] + 10];
    v42 = *(v33 + 120);
    if (v40 < 0)
    {
      v62 = v34;
      v51 = v35;
      v52 = v31;
      v53 = v32;
      v54 = sub_100031504(a1, v42, v39, (v41 + 32), 0);
      v34 = v62;
      v32 = v53;
      v31 = v52;
      v35 = v51;
      if (v54)
      {
        v12 = v54;
        if (!v51)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }

    else
    {
      *(v41 + 32) = v42 + v39;
    }

    if (*(v7 + 132) == v39)
    {
      *(v7 + 132) = (v39 + (*(v7 + 108) & 0x7FFFFFFF) + 1) % (*(v7 + 108) & 0x7FFFFFFFu);
    }

    v43 = v74;
    ++v74[9];
    if (v35)
    {
      v70.i64[0] = v30;
      v70.i64[1] = __PAIR64__(v31, v34);
      v71 = v32;
      v44 = v35;
      v45 = sub_100026A10(a1, 0, v35, v70.i64, v27, v28);
      if (v45)
      {
        v12 = v45;
        v35 = v44;
LABEL_28:
        free(v35);
        goto LABEL_29;
      }

      v43 = v74;
    }

    else
    {
      v44 = 0;
    }

    v70 = v72;
    v71 = v73;
    v55 = sub_100026A10(a1, 0, v43, v70.i64, v72, v28);
    if (v55 || (v55 = sub_100030D18(a1, v56, v57), v55))
    {
      v12 = v55;
      v35 = v44;
      if (!v44)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v58 = v74;
      v35 = v44;
      if (a7)
      {
        *a7 = *&v74[10 * (v74[9] - 1) + 18];
        *(a7 + 8) = v16;
        *(a7 + 12) = 0;
        *(a7 + 16) = 0;
      }

      v12 = 0;
      v68[1] = *&v58[10 * (v58[9] - 1) + 16];
      v68[2] = *(v7 + 16);
      *(v68 + 6) = v36;
      *(v68 + 7) = v65;
      *a6 = v68;
      if (!v44)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_28;
  }

  v12 = 22;
  if (v35)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (v74)
  {
    free(v74);
  }

  if (v12)
  {
    free(v68);
    *(v7 + 140) = v67;
    *(v7 + 148) = v69;
  }

  return v12;
}

uint64_t sub_100031300(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v10 = a1[1];
  v11 = v10[9];
  v12 = malloc_type_malloc(v11, 0x96FA381CuLL);
  if (!v12)
  {
    return 12;
  }

  v13 = v12;
  if (v10[35] == 1)
  {
    v14 = 0;
    v15 = 0;
LABEL_4:
    v16 = 2 * (v15 == v14);
  }

  else
  {
    v15 = 0;
    v28 = 0xAAAAAAAAAAAAAAAALL;
    v17 = (v11 - 40) / 0x28;
    while (1)
    {
      v18 = (v10[34] + v15) % (v10[26] & 0x7FFFFFFF);
      v19 = a1[1];
      v20 = *(v19 + 104);
      if ((v20 & 0x7FFFFFFFu) <= v18)
      {
        break;
      }

      v21 = *(v19 + 112);
      if (v20 < 0)
      {
        v22 = sub_100031504(a1, v21, v18, &v28, 0);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v28 = v21 + v18;
      }

      v22 = sub_10002F3CC(*a1);
      if (v22)
      {
LABEL_27:
        v16 = v22;
        goto LABEL_29;
      }

      if (v13[6] != 1073741836)
      {
        goto LABEL_26;
      }

      v23 = v13[9];
      if (v17 < v23)
      {
        goto LABEL_26;
      }

      if (v23)
      {
        v24 = 0;
        v25 = v13 + 18;
        while (*(v25 - 1) != a2)
        {
          ++v24;
          v25 += 5;
          if (v23 == v24)
          {
            goto LABEL_18;
          }
        }

        if (a4 && *(v25 - 8) != (a3 | a4 | 0x80000000))
        {
LABEL_26:
          v16 = 92;
          goto LABEL_29;
        }

        if (a5)
        {
          *a5 = *v25;
          *(a5 + 8) = *(v25 - 6);
          LODWORD(v23) = v13[9];
        }

        v26 = v10[35];
        if (v23 > v24)
        {
LABEL_25:
          v14 = v26 - 1;
          goto LABEL_4;
        }
      }

      else
      {
LABEL_18:
        v26 = v10[35];
      }

      if (++v15 >= v26 - 1)
      {
        goto LABEL_25;
      }
    }

    v16 = 22;
  }

LABEL_29:
  free(v13);
  return v16;
}

uint64_t sub_100031504(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[2] = v8;
  v16[3] = v8;
  v16[0] = v8;
  v16[1] = v8;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = a3;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v11 = 16;
  v12 = 8;
  result = sub_100039748(v16, a1, 0, 0x40000000, 2, 10, 0, *(*(a1 + 8) + 36), 8, 16, 0, a2, sub_100030C88);
  if (!result)
  {
    result = sub_1000397B8(v16, 0, 0xFFFFFFFFLL, &v15, &v12, 8, &v13, &v11);
    if (!result)
    {
      v10 = v14 - (a3 - v15);
      if (v14 <= a3 - v15)
      {
        return 2;
      }

      else
      {
        *a4 = v13 + a3 - v15;
        result = 0;
        if (a5)
        {
          *a5 = v10;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100031608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void, void, uint64_t), uint64_t a4)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[2] = v6;
  v12[3] = v6;
  v12[0] = v6;
  v12[1] = v6;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v10[2] = v6;
  v10[3] = v6;
  v10[0] = v6;
  v10[1] = v6;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  v9 = 0;
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  result = sub_100039748(v12, a1, 0, 0x40000000, 2, 10, 0, *(*(a1 + 8) + 36), 8, 16, 0, a2, sub_100030C88);
  if (!result)
  {
    result = sub_100039F68(v10, v12, 0, &v9, 8u, 8u, v8, 16);
    if (!result)
    {
      return sub_10002C648(v10, a3, a4, 0);
    }
  }

  return result;
}

uint64_t sub_1000316E8(int8x16_t *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v40 = 0;
  v38 = 0uLL;
  v39 = 0;
  v36 = 0uLL;
  v37 = 0;
  v14 = a1[1].i64[0];
  if (*(v14 + 48))
  {
    v15 = sub_100025548(a1->i64, 0, 0x80000000, *(v14 + 56), 0, 0, 18, 0, &v40, &v38, 0);
    if (v15)
    {
LABEL_3:
      v17 = v15;
      goto LABEL_24;
    }
  }

  else
  {
    v15 = sub_1000319A8(a1->i64, 0, &v40, &v38);
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v18 = v40;
  if ((v40[11] - v40[12]) > 1)
  {
    v20 = v40;
    v18 = 0;
  }

  else
  {
    v36 = v38;
    v37 = v39;
    v40 = 0;
    v19 = sub_1000319A8(a1->i64, v18, &v40, &v38);
    if (v19)
    {
LABEL_19:
      v17 = v19;
LABEL_23:
      free(v18);
      goto LABEL_24;
    }

    v20 = v40;
  }

  v22 = v20[14];
  v21 = v20[15];
  v23 = &v20[10 * v21 + 16];
  v20[15] = *v23;
  if (v22 != -1)
  {
    v20[10 * v22 + 16] = v21;
  }

  v24 = (8 * a7) & 0x10;
  if (v20[13] == -1)
  {
    v20[13] = v21;
  }

  v20[14] = v21;
  ++v20[12];
  *(v23 + 8) = a2;
  *(v23 + 12) = a3;
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  *(v23 + 32) = a6;
  *v23 = -1;
  *(v23 + 4) = v24 | 5;
  v25 = v40;
  v26 = a1[1].i64[0];
  v27 = *(v26 + 32);
  *(v26 + 32) = v27 + 1;
  v29 = v25[14];
  v28 = v25[15];
  v30 = &v25[10 * v28 + 16];
  v25[15] = *v30;
  if (v29 != -1)
  {
    v25[10 * v29 + 16] = v28;
  }

  if (v25[13] == -1)
  {
    v25[13] = v28;
  }

  v25[14] = v28;
  ++v25[12];
  *(v30 + 8) = a2;
  *(v30 + 12) = a3;
  *(v30 + 16) = a4;
  *(v30 + 24) = a5;
  *(v30 + 32) = v27;
  *v30 = -1;
  *(v30 + 4) = v24 | (a7 << 31 >> 31) & 0xC | 3;
  if (v18)
  {
    v34 = v36;
    v35 = v37;
    v19 = sub_100026A10(a1->i64, 0, v18, v34.i64, v36, v16);
    if (v19)
    {
      goto LABEL_19;
    }
  }

  v34 = v38;
  v35 = v39;
  v17 = sub_100026A10(a1->i64, 0, v40, v34.i64, v38, v16);
  if (!v17)
  {
    v32 = a1[1].i64[0];
    v34 = a1[4];
    v35 = a1[5].i64[0];
    v17 = sub_100026A10(a1->i64, 0, v32, v34.i64, v34, v31);
  }

  if (v18)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (v40)
  {
    free(v40);
  }

  return v17;
}

uint64_t sub_1000319A8(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  memset(v31, 170, sizeof(v31));
  v7 = a1[2];
  result = sub_100030E2C(a1, 18, 0, *(a1[1] + 36), 0, &v31[1] + 1, v31);
  if (result)
  {
    return result;
  }

  v9 = *(&v31[1] + 1);
  *(*(&v31[1] + 1) + 32) = 0;
  v10 = (DWORD2(v31[0]) - 64) / 0x28;
  *(v9 + 44) = v10;
  *(v9 + 52) = -1;
  *(v9 + 60) = 0;
  if (v10)
  {
    v11 = 0;
    v12 = (v10 - 1);
    v13 = vdupq_n_s64(v10 - 1);
    v14 = (v10 + 3) & 0x1FFFFFFFCLL;
    v15 = xmmword_100076F10;
    v16 = xmmword_100076F20;
    v17 = vdupq_n_s64(1uLL);
    v18 = vdupq_n_s64(4uLL);
    v19 = (v9 + 104);
    do
    {
      v20 = vmovn_s64(vcgeq_u64(v13, v16));
      v21 = vaddq_s64(v16, v17);
      if (vuzp1_s16(v20, *v13.i8).u8[0])
      {
        v22 = v21.i32[0];
        if (v11 >= v12)
        {
          v22 = -1;
        }

        *(v19 - 10) = v22;
      }

      if (vuzp1_s16(v20, *&v13).i8[2])
      {
        if (v11 + 1 >= v12)
        {
          v23 = -1;
        }

        else
        {
          v23 = v21.i32[2];
        }

        *v19 = v23;
      }

      v24 = vaddq_s64(v15, v17);
      v25 = vmovn_s64(vcgeq_u64(v13, v15));
      if (vuzp1_s16(*&v13, v25).i32[1])
      {
        if (v11 + 2 >= v12)
        {
          v26 = -1;
        }

        else
        {
          v26 = v24.i32[0];
        }

        v19[10] = v26;
      }

      if (vuzp1_s16(*&v13, v25).i8[6])
      {
        if (v11 + 3 >= v12)
        {
          v27 = -1;
        }

        else
        {
          v27 = v24.i32[2];
        }

        v19[20] = v27;
      }

      v11 += 4;
      v15 = vaddq_s64(v15, v18);
      v16 = vaddq_s64(v16, v18);
      v19 += 40;
    }

    while (v14 != v11);
  }

  v28 = *(v9 + 8);
  *(v7 + 56) = v28;
  if (!a2)
  {
    *(v7 + 48) = v28;
    v30 = 1;
    goto LABEL_28;
  }

  *(a2 + 32) = v28;
  v29 = *(v7 + 68);
  if (v29)
  {
    v30 = v29 + 1;
LABEL_28:
    *(v7 + 68) = v30;
  }

  if (a4)
  {
    *a4 = v31[0];
    *(a4 + 16) = *&v31[1];
  }

  result = 0;
  *a3 = v9;
  return result;
}

uint64_t sub_100031B78(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  if (*(a1[1] + 36) * a4 >= 0x100000)
  {
    v8 = 0x100000;
  }

  else
  {
    v8 = *(a1[1] + 36) * a4;
  }

  v9 = malloc_type_malloc(v8, 0xA5FFDFFBuLL);
  if (v9)
  {
    v10 = v9;
    if (v4)
    {
      v11 = v8 / *(a1[1] + 36);
      while (1)
      {
        if (v4 >= v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = v4;
        }

        v13 = sub_10001C898(*a1);
        if (v13)
        {
          v15 = v13;
          v16 = strerror(v13);
          sub_10004565C("blockcopy: unable to read paddr 0x%llx block_count 0x%llx: %s\n", a2, v12, v16);
          v17 = 611;
          goto LABEL_17;
        }

        v14 = sub_10001C8A8(*a1);
        if (v14)
        {
          break;
        }

        a2 += v12;
        a3 += v12;
        v4 -= v12;
        if (!v4)
        {
          goto LABEL_13;
        }
      }

      v15 = v14;
      v18 = strerror(v14);
      sub_10004565C("blockcopy: unable to write paddr 0x%llx block_count 0x%llx: %s\n", a3, v12, v18);
      v17 = 612;
LABEL_17:
      sub_100049C40(v17, v15);
    }

    else
    {
LABEL_13:
      v15 = 0;
    }

    free(v10);
  }

  else
  {
    sub_10004565C("blockcopy: unable to allocate memory for buffer_size 0x%zx.\n", v8);
    v15 = 12;
    sub_100049C40(0x262, 12);
  }

  return v15;
}

uint64_t sub_100031CD8(void *a1, char a2, unint64_t a3, int a4, int a5, int a6, int8x16_t a7, int8x16_t a8)
{
  if (sub_10003ED88(a1, (a1 + 1), (a6 - 8), 0, a7, a8))
  {
    sub_10004565C("object (oid 0x%llx): o_cksum (0x%llx) is invalid for object\n", a1[1], *a1);
    v13 = 92;
    sub_100049C40(5, 92);
    if ((a2 & 1) == 0)
    {
LABEL_6:
      if ((a2 & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (a1[1])
  {
    goto LABEL_6;
  }

  sub_10004565C("object (oid 0x%llx): o_oid invalid\n", 0);
  v13 = 92;
  sub_100049C40(6, 92);
  if ((a2 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v14 = a1[2];
  if (!v14)
  {
    sub_10004565C("object (oid 0x%llx): o_xid invalid, o_xid is 0\n", a1[1]);
    v13 = 92;
    sub_100049C40(7, 92);
    v14 = a1[2];
  }

  if (v14 > a3)
  {
    sub_10004565C("object (oid 0x%llx): o_xid invalid, o_xid %llu is greater than nx_next_xid: %llu\n", a1[1], v14, a3);
    v13 = 92;
    sub_100049C40(8, 92);
  }

LABEL_12:
  if ((a2 & 4) != 0 && *(a1 + 6) != a4)
  {
    sub_10004565C("object (oid 0x%llx): o_type invalid, o_type 0x%x should be 0x%x\n", a1[1], *(a1 + 6), a4);
    v13 = 92;
    sub_100049C40(9, 92);
  }

  if ((a2 & 8) != 0 && *(a1 + 7) != a5)
  {
    sub_10004565C("object (oid 0x%llx): o_subtype invalid, o_subtype 0x%x should be 0x%x\n", a1[1], *(a1 + 7), a5);
    v13 = 92;
    sub_100049C40(0xA, 92);
  }

  return v13;
}

unsigned int *sub_100031E70(uint64_t a1, _BYTE *a2)
{
  v4 = sub_10002F380(a1);
  if (v4 <= 0x1000)
  {
    v5 = 4096;
  }

  else
  {
    v5 = v4;
  }

  v6 = sub_10002F38C(a1);
  v7 = malloc_type_calloc(1uLL, v5, 0xF6CF7D2AuLL);
  if (!v7)
  {
LABEL_13:
    sub_10004565C("failed to allocate memory to read the container superblock\n");
    sub_100049C40(0x56, 12);
    return 0;
  }

  v8 = v7;
  while (1)
  {
    sub_10002F380(a1);
    v9 = sub_10002F3CC(a1);
    if (v9)
    {
      v16 = v9;
      sub_10004565C("failed to read container superblock\n");
      v15 = 87;
      v17 = v16;
LABEL_25:
      sub_100049C40(v15, v17);
      free(v8);
      return 0;
    }

    if (v8[8] != 1112758350)
    {
      sub_1000394A4(v8, v5);
      sub_10004565C("Device does not contain a valid APFS container.\n");
      v15 = 88;
LABEL_24:
      v17 = 22;
      goto LABEL_25;
    }

    v10.i32[0] = v8[9];
    if ((v10.i32[0] - 65537) < 0xFFFF0FFF || (v11 = v10.i32[0] % sub_10002F380(a1), v10 = v8[9], v11) || (v12 = vcnt_s8(v10), v12.i16[0] = vaddlv_u8(v12), v12.i32[0] >= 2u))
    {
      sub_10004565C("nx_block_size of %u is invalid\n", v10.i32[0]);
      v15 = 89;
      goto LABEL_24;
    }

    if (v10.i32[0] == sub_10002F380(a1))
    {
      break;
    }

    sub_10002F3A4(a1);
    v5 = v8[9];
    free(v8);
    v6 = sub_10002F38C(a1);
    v8 = malloc_type_calloc(1uLL, v5, 0xF6CF7D2AuLL);
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (*(v8 + 5) - 1 >= v6)
  {
    sub_100045744("nx_block_count is %llu, while device block count is %llu\n", *(v8 + 5), v6);
    sub_100049C40(0x1F9, -7);
    *(v8 + 5) = v6;
    *a2 = 1;
  }

  if (!sub_100031CD8(v8, 15, *(v8 + 12), -2147483647, 0, v8[9], v13, v14))
  {
    return v8;
  }

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v22[0] = a1;
  v22[1] = v8;
  v21[0] = v22;
  v21[1] = 0;
  v18 = v8[26];
  if ((v18 & 0x7FFFFFF8) == 0)
  {
    goto LABEL_23;
  }

  v19 = *(v8 + 14);
  if ((v18 & 0x80000000) != 0)
  {
    if (!sub_100031608(v22, v19, sub_100049FC8, v21))
    {
      goto LABEL_29;
    }

LABEL_23:
    sub_10004565C("cannot find checkpoint area because container superblock is too damaged\n");
    v15 = 506;
    goto LABEL_24;
  }

  v51[1] = v8[26];
  v52 = 0;
  v51[0] = v19;
  if (sub_100049FC8(&v52, 8, v51, 16, v21))
  {
    goto LABEL_23;
  }

LABEL_29:
  *a2 = 1;
  return v8;
}

uint64_t sub_100032164(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a2 + 8) != 1)
  {
    sub_10004565C("nx_sb->nx_o.o_oid != OID_NX_SUPERBLOCK, %llu\n", *(a2 + 8));
    v8 = 92;
    v9 = 51;
    goto LABEL_12;
  }

  if (*(a2 + 32) != 1112758350)
  {
    sub_10004565C("nx_superblock magic number invalid: 0x%X\n", *(a2 + 32));
    v8 = 92;
    v9 = 52;
    goto LABEL_12;
  }

  v6 = sub_10002F38C(a1);
  if (*(a2 + 40) - 1 >= v6)
  {
    sub_10004565C("nx_block_count is %llu, while device block count is %llu\n", *(a2 + 40), v6);
    v11 = 53;
    v12 = 92;
    goto LABEL_15;
  }

  if ((*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    sub_100045744("nx_features has unsupported flags: (0x%llX)\n", *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL);
    sub_100049C40(0x36, -3);
  }

  if (*(a2 + 56))
  {
    sub_100045744("nx_read_only_compatible_features has unsupported flags: (0x%llX)\n", *(a2 + 56));
    v7 = qword_10009BA60;
    *(qword_10009BA60 + 32) = 1;
    *(v7 + 41) = 1;
    sub_100047570(qword_10009BA58, 1);
    sub_100049C40(0x37, -3);
  }

  if ((*(a2 + 64) & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    if (uuid_is_null((a2 + 72)))
    {
      sub_10004565C("nx_uuid is NULL\n");
      v8 = 92;
      v9 = 57;
      goto LABEL_12;
    }

    if (*(a2 + 88) <= 0x3FFuLL)
    {
      sub_10004565C("nx_next_oid (%llu) is less than the minimum (%u)\n", *(a2 + 88), 1024);
      v8 = 92;
      v9 = 58;
      goto LABEL_12;
    }

    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
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
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v48 = a1;
    v49 = a2;
    v13 = *(a2 + 104) & 0x7FFFFFFF;
    v46 = &v48;
    v47 = 0;
    if (v13 <= 7)
    {
      sub_10004565C("nx_xp_desc_blocks (%u) is less than 8\n", v13);
      v8 = 92;
      v9 = 59;
      goto LABEL_12;
    }

    if (sub_100032A3C(&v48, &v46))
    {
      sub_10004565C("NX checkpoint desc range is invalid: 0x%llx+0x%x\n", *(a2 + 112), *(a2 + 104));
      v8 = 92;
      v9 = 60;
      goto LABEL_12;
    }

    if (v47 != (*(a2 + 104) & 0x7FFFFFFF))
    {
      sub_10004565C("NX checkpoint desc blocks field is %u, but sum of ranges is %llu\n", *(a2 + 104) & 0x7FFFFFFF, v47);
      v8 = 92;
      v9 = 574;
      goto LABEL_12;
    }

    if ((*(a2 + 108) & 0x7FFFFFFFu) <= 7)
    {
      sub_10004565C("nx_xp_data_blocks (%u) is less than 8\n", *(a2 + 108) & 0x7FFFFFFF);
      v8 = 92;
      v9 = 61;
      goto LABEL_12;
    }

    v47 = 0;
    if (sub_100032AAC(&v48, sub_100049FC8, &v46))
    {
      sub_10004565C("NX checkpoint data range is invalid: 0x%llx+0x%x\n", *(a2 + 120), *(a2 + 108));
      v8 = 92;
      v9 = 62;
      goto LABEL_12;
    }

    v14 = *(a2 + 108) & 0x7FFFFFFF;
    if (v47 != v14)
    {
      sub_10004565C("NX checkpoint data blocks field is %u, but sum of ranges is %llu\n", *(a2 + 108) & 0x7FFFFFFF, v47);
      v8 = 92;
      v9 = 575;
      goto LABEL_12;
    }

    v15 = *(a2 + 104) & 0x7FFFFFFF;
    if (*(a2 + 128) >= v15)
    {
      sub_10004565C("nx_xp_desc_next (%u) is larger than the # of nx_xp_desc_blocks (%u)\n", *(a2 + 128), v15);
      v8 = 92;
      v9 = 63;
      goto LABEL_12;
    }

    if (*(a2 + 132) >= v14)
    {
      sub_10004565C("nx_xp_data_next (%u) is larger than the # of nx_xp_data_blocks (%u)\n", *(a2 + 132), v14);
      v8 = 92;
      v9 = 64;
      goto LABEL_12;
    }

    if ((a3 & 1) != 0 || *(a2 + 140) || *(a2 + 148) || *(a2 + 136) || *(a2 + 144))
    {
      if (*(a2 + 136) >= v15)
      {
        sub_10004565C("nx_xp_desc_index (%u) is larger than nx_xp_desc_blocks (%u)\n", *(a2 + 136), v15);
        v8 = 92;
        v9 = 65;
        goto LABEL_12;
      }

      v16 = *(a2 + 140);
      if (v16 <= 1)
      {
        sub_10004565C("nx_xp_desc_len (%u) is less than 2\n", *(a2 + 140));
        v8 = 92;
        v9 = 66;
        goto LABEL_12;
      }

      if (v16 >= v15)
      {
        sub_10004565C("nx_xp_desc_len (%u) is larger than nx_xp_desc_blocks (%u)\n", *(a2 + 140), v15);
        v8 = 92;
        v9 = 67;
        goto LABEL_12;
      }

      if (*(a2 + 144) >= v14)
      {
        sub_10004565C("nx_xp_data_index (%u) is is larger than nx_xp_data_blocks (%u)\n", *(a2 + 144), v14);
        v8 = 92;
        v9 = 68;
        goto LABEL_12;
      }

      v17 = *(a2 + 148);
      if (v17 <= 1)
      {
        sub_10004565C("nx_xp_data_len (%u) is less than 2\n", *(a2 + 148));
        v8 = 92;
        v9 = 69;
        goto LABEL_12;
      }

      if (v17 >= v14)
      {
        sub_10004565C("nx_xp_data_len (%u) is larger than nx_xp_data_blocks (%u)\n", *(a2 + 148), v14);
        v8 = 92;
        v9 = 70;
        goto LABEL_12;
      }
    }

    if (!*(a2 + 152))
    {
      sub_10004565C("nx_spaceman_oid is invalid\n");
      v8 = 92;
      v9 = 71;
      goto LABEL_12;
    }

    if (!*(a2 + 160))
    {
      sub_10004565C("nx_omap_oid is invalid\n");
      v8 = 92;
      v9 = 72;
      goto LABEL_12;
    }

    if ((*(a2 + 168) - 1) <= 0x3FE)
    {
      sub_10004565C("nx_reaper_oid (%llu) is less than minimum OID (%d)\n", *(a2 + 168), 1024);
      v8 = 92;
      v9 = 73;
      goto LABEL_12;
    }

    if ((*(a2 + 180) - 101) < 0xFFFFFF9C)
    {
      sub_10004565C("nx_max_file_systems (%u) is invalid\n", *(a2 + 180));
      v8 = 92;
      v9 = 74;
      goto LABEL_12;
    }

    for (i = 0; i != 100; ++i)
    {
      v19 = *(a2 + 184 + 8 * i);
      if ((v19 - 1) < 0x3FF)
      {
        sub_10004565C("nx_fs_oid (%llu) at index (%d) is less than minimum OID (%d)\n", v19, i, 1024);
        v8 = 92;
        v9 = 75;
        goto LABEL_12;
      }
    }

    if (*(a2 + 1264) >= 8uLL)
    {
      sub_100045744("nx_flags (0x%llx) has an unknown flag set \n", *(a2 + 1264));
      sub_100049C40(0x4C, -3);
    }

    v20 = *(a2 + 1312);
    if (v20 != 1)
    {
      sub_100045744("nx_ephemeral_info 0: invalid version (%u), should be: (%d)\n", *(a2 + 1312), 1);
      sub_100049C40(0x4D, -6);
    }

    if (WORD1(v20) != 4)
    {
      sub_100045744("nx_ephemeral_info 0: invalid structures per fs (%u), should be: (%d)\n", WORD1(v20), 4);
      sub_100049C40(0x4E, -8);
    }

    if ((v20 - 0x900000000) <= 0xFFFFFFF7FFFFFFFFLL)
    {
      sub_100045744("nx_ephemeral_info 0: invalid minimum block count per structure (%u), should be less than: (%d)\n", WORD1(v20), 8);
      sub_100049C40(0x4F, -7);
    }

    for (j = 0; j != 3; ++j)
    {
      v22 = *(a2 + 1320 + 8 * j);
      if (v22)
      {
        sub_100045744("nx_ephemeral_info %d: invalid info (0x%llx)\n", j + 1, v22);
        sub_100049C40(0x50, -10);
      }
    }

    v23 = *(a2 + 1400);
    if (v23)
    {
      v24 = *(a2 + 1392);
      v25 = *(v49 + 40);
      v26 = v25 - v23 >= v24 && v25 > v23;
      v27 = !v26 || v24 < 1;
      if (v27 || v25 <= v24)
      {
        sub_10004565C("NX media keylocker data range is invalid: 0x%llx+%llu\n", *(a2 + 1392), v23);
        v8 = 92;
        v9 = 949;
        goto LABEL_12;
      }
    }

    v29 = *(a2 + 1304);
    if (v29)
    {
      v30 = *(a2 + 1296);
      v31 = *(v49 + 40);
      v32 = v31 - v29 >= v30 && v31 > v29;
      v33 = !v32 || v30 < 1;
      if (v33 || v31 <= v30)
      {
        sub_10004565C("NX keybag data range is invalid: 0x%llx+%llu\n", *(a2 + 1296), v29);
        v8 = 92;
        v9 = 81;
        goto LABEL_12;
      }
    }

    v35 = *(a2 + 1248);
    if (v35)
    {
      v36 = *(a2 + 1240);
      v37 = *(v49 + 40);
      v38 = v37 - v35 >= v36 && v37 > v35;
      v39 = !v38 || v36 < 1;
      if (v39 || v37 <= v36)
      {
        sub_10004565C("NX blocked out range is invalid: 0x%llx+%llu\n", *(a2 + 1240), v35);
        v8 = 92;
        v9 = 82;
        goto LABEL_12;
      }
    }

    if (*(a2 + 1352))
    {
      sub_10004565C("nx_fusion_mt_oid should be invalid but isn't\n");
      v8 = 92;
      v9 = 83;
      goto LABEL_12;
    }

    if (*(a2 + 1360))
    {
      sub_10004565C("nx_fusion_wbc_oid should be invalid but isn't\n");
      v8 = 92;
      v9 = 84;
      goto LABEL_12;
    }

    if (*(a2 + 1376) || *(a2 + 1368))
    {
      sub_100045744("nx_fusion_wbc should be empty but isn't\n");
      sub_100049C40(0x5BF, -6);
    }

    v41 = *(a2 + 1384);
    v42 = v41 - 1;
    if (v41 <= 0x3B9AC9BB15066FFFLL && v42 > 0x4BFFE92108FFELL)
    {
      return 0;
    }

    memset(v79, 170, 17);
    *__str = 0xAAAAAAAAAAAAAAAALL;
    v43 = sub_10001D6AC(v41, __str, 25);
    if (!v43)
    {
      v43 = __str;
      snprintf(__str, 0x19uLL, "%llu", v41);
    }

    if (v41 <= 0x3B9AC9BB15066FFFLL)
    {
      if (v42 >= 0xE8D4A50FFFLL)
      {
        v45 = "nx_newest_mounted_version is less than expected: %s\n";
      }

      else
      {
        v45 = "nx_newest_mounted_version should not start with a 0: %s\n";
      }

      if (v42 < 0xE8D4A50FFFLL)
      {
        v44 = 859;
      }

      else
      {
        v44 = 860;
      }

      if (v42 > 0x4BFFE92108FFELL)
      {
        return 0;
      }

      sub_100045744(v45, v43);
    }

    else
    {
      v44 = 858;
      sub_100045744("nx_newest_mounted_version is greater than expected: %s\n");
    }

    v11 = v44;
    v12 = -6;
LABEL_15:
    sub_100049C40(v11, v12);
    return 0;
  }

  sub_10004565C("nx_incompatible_features has unsupported flags: (0x%llX)\n", *(a2 + 64) & 0xFFFFFFFFFFFFFFFDLL);
  v8 = 92;
  v9 = 56;
LABEL_12:
  sub_100049C40(v9, 92);
  return v8;
}

uint64_t sub_100032A3C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 104);
  v6 = *(v4 + 112);
  if ((v5 & 0x80000000) != 0)
  {

    return sub_100031608(a1, v6, sub_100049FC8, a2);
  }

  else
  {
    v9 = 0;
    v8[0] = v6;
    v8[1] = v5;
    return sub_100049FC8(&v9, 8, v8, 16, a2);
  }
}

uint64_t sub_100032AAC(uint64_t a1, uint64_t (*a2)(void *, uint64_t, void *, uint64_t, uint64_t), uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(v5 + 108);
  v7 = *(v5 + 120);
  if ((v6 & 0x80000000) != 0)
  {

    return sub_100031608(a1, v7, a2, a3);
  }

  else
  {
    v10 = 0;
    v9[0] = v7;
    v9[1] = v6;
    return a2(&v10, 8, v9, 16, a3);
  }
}

uint64_t sub_100032B14(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 && *(a1 + 16) > *(a2 + 16))
  {
    sub_100045614("the checkpoint superblock has a lower o_xid (%lld) than the %s (%lld)\n");
    return 92;
  }

  if (*(a1 + 36) != *(a2 + 36))
  {
    sub_100045614("checkpoint<->%s mismatch on nx_block_size: %d %d\n");
    return 92;
  }

  if (*(a1 + 40) != *(a2 + 40))
  {
    sub_100045614("checkpoint<->%s mismatch on nx_block_count: %lld %lld\n");
    return 92;
  }

  if (uuid_compare((a1 + 72), (a2 + 72)))
  {
    sub_100045614("checkpoint<->%s mismatch on uuid\n");
    return 92;
  }

  if (*(a1 + 1280) != *(a2 + 1280) || *(a1 + 1288) != *(a2 + 1288))
  {
    sub_100045614("checkpoint<->%s mismatch on fusion uuid\n");
    return 92;
  }

  if (*(a1 + 104) != *(a2 + 104))
  {
    sub_100045614("checkpoint<->%s mismatch on nx_xp_desc_blocks: %d %d\n");
    return 92;
  }

  if (*(a1 + 108) != *(a2 + 108))
  {
    sub_100045614("checkpoint<->%s mismatch on nx_xp_data_blocks: %d %d\n");
    return 92;
  }

  if (*(a1 + 112) != *(a2 + 112))
  {
    sub_100045614("checkpoint<->%s mismatch on nx_xp_desc_base: %lld %lld\n");
    return 92;
  }

  if (*(a1 + 120) != *(a2 + 120))
  {
    sub_100045614("checkpoint<->%s mismatch on nx_xp_data_base: %lld %lld\n");
    return 92;
  }

  return 0;
}

uint64_t sub_100032CE0(uint64_t a1, uint64_t a2, void **a3, unint64_t *a4)
{
  v99 = a3;
  v95 = a4;
  v96 = &v91;
  __chkstk_darwin(a1);
  v7 = &v91 - ((v6 + 15) & 0x1FFFFFFF0);
  if (v6)
  {
    memset(&v91 - ((v6 + 15) & 0x1FFFFFFF0), 170, v6);
  }

  v129 = 0xAAAAAAAAAAAAAAAALL;
  v8 = *(a2 + 1264);
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
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v100 = a1;
  *v99 = 0;
  if (!*(a2 + 140) || !*(a2 + 148) || !*(a2 + 136) || !*(a2 + 144) || sub_10002F3B0(a1) || (v8 & 2) == 0)
  {
    goto LABEL_132;
  }

  v9 = (*(a2 + 140) + *(a2 + 136) - 1) % (*(a2 + 104) & 0x7FFFFFFFu);
  v10 = 1;
  v97 = 1;
  do
  {
    v11 = 0;
    while (1)
    {
      v12 = *(a2 + 104);
      v13 = v9 - v11 + (v12 & 0x7FFFFFFF);
      v14 = v13 % (v12 & 0x7FFFFFFFu);
      *&v101 = a2;
      v15 = *(a2 + 112);
      if (v12 < 0)
      {
        v24 = sub_100031504(&v100, v15, v13 % (v12 & 0x7FFFFFFFu), &v129, 0);
        if (v24)
        {
          v19 = v24;
          v25 = strerror(v24);
          sub_100045744("failed to look up checkpoint block address: %s\n", v25);
          v23 = 542;
          goto LABEL_17;
        }
      }

      else
      {
        v129 = v15 + v14;
      }

      v16 = sub_10002F3CC(a1);
      if (v16)
      {
        v19 = v16;
        v20 = v9;
        v21 = v129;
        v22 = strerror(v16);
        v90 = v21;
        v9 = v20;
        sub_10004565C("dev_read(%llu, 1): %s\n", v90, v22);
        v23 = 127;
LABEL_17:
        v26 = v19;
        goto LABEL_18;
      }

      if (!*(v7 + 1) && *v99)
      {
        return 0;
      }

      if (*(v7 + 6) == -2147483647)
      {
        if (sub_100031CD8(v7, 11, *(v7 + 2), 0, 0, *(a2 + 36), v17, v18))
        {
          sub_100045744("checkpoint %d (xid %llu) fsck_obj_phys failed\n");
          goto LABEL_19;
        }

        if (sub_100032B14(a2, v7, v11 == 0))
        {
          sub_100045744("checkpoint %d (xid %llu) superblock disagrees with block 0\n");
          goto LABEL_19;
        }

        v27 = *(v7 + 35);
        v28 = (v27 + *(v7 + 34) - 1) % (*(v7 + 26) & 0x7FFFFFFFu);
        if (v14 != v28)
        {
          sub_100045744("xp_sb->nx_xp_desc_index (%d) doesn't match index block (%d)\n", v28, v14);
          v23 = 128;
          goto LABEL_34;
        }

        if (v27 + v11 <= (*(a2 + 104) & 0x7FFFFFFFu))
        {
          break;
        }
      }

LABEL_19:
      if (++v11 == v10)
      {
        goto LABEL_130;
      }
    }

    if (sub_100032164(a1, v7, 1))
    {
      sub_100045744("checkpoint %d (xid %llu) superblock is invalid\n");
      goto LABEL_19;
    }

    *&v101 = v7;
    v130 = 0xAAAAAAAAAAAAAAAALL;
    v131 = 0;
    if (*(v7 + 35) == 1)
    {
      goto LABEL_113;
    }

    v29 = 0;
    while (1)
    {
      v30 = *(v7 + 34);
      HIDWORD(v91) = v29;
      v31 = (v30 + v29) % (*(v7 + 26) & 0x7FFFFFFFu);
      v32 = *(v101 + 104);
      if ((v32 & 0x7FFFFFFFu) <= v31)
      {
        v34 = 22;
LABEL_98:
        LODWORD(v98) = v34;
        v59 = strerror(v34);
        sub_10004565C("failed to look up checkpoint block address %d: %s\n", v31, v59);
        v61 = 540;
        v60 = v98;
        goto LABEL_109;
      }

      v33 = *(v101 + 112);
      if (v32 < 0)
      {
        v34 = sub_100031504(&v100, v33, v31, &v130, 0);
        if (v34)
        {
          goto LABEL_98;
        }
      }

      else
      {
        v130 = v33 + v31;
      }

      if (v131)
      {
        free(v131);
        v131 = 0;
      }

      v35 = sub_100025548(&v100, 0, 0x40000000, v130, 0, 0, 12, 0, &v131, 0, 0);
      v36 = v35 == 0;
      if (v35)
      {
        goto LABEL_110;
      }

      v37 = v131;
      if (*(v131 + 1) != v130)
      {
        sub_10004565C("cpm_o.o_oid (0x%llx) doesn't match the physical address (0x%llx)\n", *(v131 + 1), v130);
        v61 = 107;
        goto LABEL_108;
      }

      v38 = *(v101 + 16);
      if (*(v131 + 2) != v38)
      {
        sub_10004565C("checkpoint map o_xid (0x%llx) doesn't match checkpoint superblock o_xid (0x%llx)\n", *(v131 + 2), v38);
        v61 = 108;
        goto LABEL_108;
      }

      v39 = v131[9];
      if (!v39)
      {
        sub_10004565C("cpm_count is 0\n");
        v61 = 109;
        goto LABEL_108;
      }

      v40 = *(v101 + 36);
      v92 = v101;
      v93 = v40;
      v41 = (v40 - 40) / 0x28uLL;
      if (v41 < v39)
      {
        sub_10004565C("cpm_count (%u) is larger than the max that this block size can accommodate (%u)\n", v39, v41);
        v61 = 110;
        goto LABEL_108;
      }

      LODWORD(v91) = v35 == 0;
      v42 = *(v7 + 35);
      v43 = v131[8];
      v94 = v131;
      if (v43 >= 2)
      {
        sub_100045744("cpm_flags has an unknown flag set 0x%x\n", v43);
        sub_100049C40(0x6F, -3);
        v37 = v94;
        v43 = v94[8];
      }

      if (HIDWORD(v91) == v42 - 2)
      {
        if ((v43 & 1) == 0)
        {
          sub_10004565C("cpm_flags has invalid flags set: 0x%x\n", v43);
          v61 = 112;
          goto LABEL_108;
        }
      }

      else if (v43)
      {
        sub_10004565C("cpm_flags has invalid flags set: 0x%x\n", v43);
        v61 = 113;
        goto LABEL_108;
      }

      if (v37[9])
      {
        break;
      }

LABEL_88:
      v36 = v91;
      v29 = HIDWORD(v91) + 1;
      if (HIDWORD(v91) + 1 >= (*(v7 + 35) - 1))
      {
        goto LABEL_110;
      }
    }

    v44 = 0;
    v45 = v37 + 18;
    while (2)
    {
      v46 = *(v45 - 8);
      if ((v46 & 0xC0000000) != 0x80000000)
      {
        sub_10004565C("cpm_map[%d].cpm_type storage type (0x%x) != OBJ_EPHEMERAL\n", v44, v46 & 0xC0000000);
        v61 = 114;
        goto LABEL_108;
      }

      v47 = *(v45 - 8) > 0x12u || ((1 << v46) & 0x6002C) == 0;
      v98 = v44;
      if (v47)
      {
        sub_100045744("cpm_map[%d].cpm_type object type (0x%x) is invalid!\n", v44, v46);
        sub_100049C40(0x73, -5);
        LODWORD(v44) = v98;
      }

      v48 = *(v45 - 7);
      if ((v48 & 0xC0000000) != 0)
      {
        sub_10004565C("cpm_map[%d].cpm_subtype has nonzero storage type (0x%x)\n", v44, v48 & 0xC0000000);
        v61 = 649;
        goto LABEL_108;
      }

      if ((*(v45 - 7) > 0x24u || ((1 << v48) & 0x100009CA01) == 0) && *(v45 - 7) != 255)
      {
        sub_100045744("cmp_map[%d].cpm_subtype object type (0x%x) is invalid!\n", v44, v48);
        sub_100049C40(0x28A, -5);
        LODWORD(v44) = v98;
      }

      if ((*(v45 - 2) - 1) <= 0x3FE)
      {
        sub_10004565C("cpm_map[%d].cpm_fs_oid (%llu) is less than minimum oid (%u)!\n", v44, *(v45 - 2), 1024);
        v61 = 515;
        goto LABEL_108;
      }

      if (!*(v45 - 1))
      {
        sub_10004565C("cpm_map[%d].cpm_oid object type is invalid!\n", v44);
        v61 = 116;
        goto LABEL_108;
      }

      v49 = *(v45 - 6);
      if (!v49)
      {
        sub_10004565C("xp_map->cpm_map[%d].cpm_size is 0\n", v44);
        v61 = 121;
        goto LABEL_108;
      }

      if (v49 % v93)
      {
        sub_10004565C("xp_map->cpm_map[%d].cpm_size (%u) is not a multiple of nx_block_size (%u)\n", v44, *(v45 - 6), v93);
        v61 = 122;
        goto LABEL_108;
      }

      v132[0] = *v45;
      v132[1] = (v49 / v93);
      v50 = *(v101 + 120);
      if ((*(v101 + 108) & 0x80000000) != 0)
      {
        if (!sub_100031608(&v100, v50, sub_10004A074, v132))
        {
LABEL_96:
          sub_10004565C("cpm_map[%d].cpm_paddr (%llu) + cpm_size (%u) is not in the checkpoint data area\n", v98, *v45, *(v45 - 6));
          v61 = 538;
          goto LABEL_108;
        }
      }

      else
      {
        v133[1] = *(v101 + 108);
        v134 = 0;
        v133[0] = v50;
        if (!sub_10004A074(&v134, 8, v133, 16, v132))
        {
          goto LABEL_96;
        }
      }

      v51 = *v45;
      v133[0] = *v45;
      v52 = *(v101 + 108);
      v53 = *(v101 + 120);
      if ((v52 & 0x80000000) == 0)
      {
        v54 = v51 - v53;
        if (v51 < v53)
        {
          goto LABEL_105;
        }

        v55 = v98;
        if (v54 >= v52)
        {
          goto LABEL_106;
        }

        goto LABEL_79;
      }

      if (sub_100031608(&v100, v53, sub_100033FB4, v133) == -1)
      {
        v54 = v133[0];
        v55 = v98;
LABEL_79:
        v56 = v92[36];
        if (v54 >= v56)
        {
          v57 = v54 >= (v92[37] + v56);
          v58 = v94;
          if (v57)
          {
            sub_10004565C("nx_xp_data_index (%u) puts the checkpoint data outside of its range\n", v92[36]);
            v61 = 120;
            goto LABEL_108;
          }
        }

        else
        {
          v57 = v54 + (v92[27] & 0x7FFFFFFF) >= (v92[37] + v56);
          v58 = v94;
          if (v57)
          {
            sub_10004565C("nx_xp_data_index (%u) puts the checkpoint data outside of its range\n", v92[36]);
            v61 = 119;
            goto LABEL_108;
          }
        }

        v44 = v55 + 1;
        v45 += 5;
        if (v44 >= v58[9])
        {
          goto LABEL_88;
        }

        continue;
      }

      break;
    }

    v51 = *v45;
LABEL_105:
    LODWORD(v55) = v98;
LABEL_106:
    sub_10004565C("could not look up cpm_map[%d].cpm_paddr (%llu) in checkpoint data area\n", v55, v51);
    v61 = 539;
LABEL_108:
    v60 = 92;
LABEL_109:
    sub_100049C40(v61, v60);
    v36 = 0;
LABEL_110:
    if (v131)
    {
      free(v131);
    }

    if (!v36)
    {
      sub_100045744("checkpoint %d (xid %llu) checkpoint map is invalid\n");
      goto LABEL_19;
    }

LABEL_113:
    if (sub_10002CBE0(&v100, 0) || sub_10002CC80(&v100, 0) || sub_10002CD20(&v100, 0, 0) || (v133[0] = 0, sub_10002CF5C(&v100, 0, v133)) || sub_10003570C(v133[0], 0, 0, 0, 0, 0))
    {
LABEL_118:
      v62 = v100;
      v100 = 0;
      *&v101 = 0;
      sub_10002C8A8(&v100);
      v100 = v62;
      sub_100045744("checkpoint %d (xid %llu) failed consistency check\n", v14, *(v7 + 2));
      v23 = 990;
LABEL_34:
      v26 = -7;
LABEL_18:
      sub_100049C40(v23, v26);
      goto LABEL_19;
    }

    v132[0] = 0;
    v63 = v101;
    if (*(v101 + 180))
    {
      v64 = 0;
      do
      {
        v65 = *(v63 + 8 * v64 + 184);
        if (v65)
        {
          if (sub_100025548(&v100, 0, 0, v65, 0, 0, 13, 0, v132, 0, 0))
          {
            goto LABEL_118;
          }

          free(v132[0]);
          v132[0] = 0;
          v63 = v101;
        }

        ++v64;
      }

      while (v64 < *(v63 + 180));
    }

    v66 = v100;
    v100 = 0;
    *&v101 = 0;
    sub_10002C8A8(&v100);
    v100 = v66;
    if (*v99)
    {
      free(*v99);
    }

    v67 = malloc_type_malloc(*(a2 + 36), 0x3D218F84uLL);
    *v99 = v67;
    if (!v67)
    {
      sub_10004565C("malloc(%u)\n", *(a2 + 36));
      v86 = 12;
      v87 = 129;
      v88 = 12;
      goto LABEL_164;
    }

    memcpy(v67, v7, 0x588uLL);
    v68 = v95;
    *v95 = v129;
    *(v68 + 2) = *(a2 + 36);
LABEL_130:
    if (*v99)
    {
      return 0;
    }

    if ((v97 & 1) == 0)
    {
      goto LABEL_162;
    }

LABEL_132:
    v69 = *(a2 + 104);
    if ((v69 & 0x7FFFFFFF) == 0)
    {
LABEL_161:
      sub_10004565C("no valid checkpoint found\n", v91);
      v86 = 92;
      v87 = 126;
      goto LABEL_163;
    }

    v70 = 0;
    v71 = 0;
    LODWORD(v98) = 0;
    v72 = 0;
    while (2)
    {
      *&v101 = a2;
      v73 = *(a2 + 112);
      if ((v69 & 0x80000000) == 0)
      {
        v129 = v70 + v73;
        goto LABEL_136;
      }

      v81 = sub_100031504(&v100, v73, v70, &v129, 0);
      if (v81)
      {
        v77 = v81;
        v82 = strerror(v81);
        sub_100045744("failed to look up checkpoint block address %d: %s\n", v70, v82);
        v80 = 541;
LABEL_140:
        v83 = v77;
LABEL_141:
        sub_100049C40(v80, v83);
      }

      else
      {
LABEL_136:
        v74 = sub_10002F3CC(a1);
        if (v74)
        {
          v77 = v74;
          v78 = v129;
          v79 = strerror(v74);
          sub_10004565C("dev_read(%llu, 1): %s\n", v78, v79);
          v80 = 124;
          goto LABEL_140;
        }

        if (*(v7 + 1))
        {
          if (sub_100031CD8(v7, 10, *(v7 + 2), 0, 0, *(a2 + 36), v75, v76))
          {
            sub_100045744("checkpoint %d fsck_obj_phys failed\n", v70);
            goto LABEL_142;
          }

          v84 = *(v7 + 6);
          if (v84 != -2147483647 && v84 != 1073741836)
          {
            sub_100045744("checkpoint %d obj->o_type is invalid: (0x%x)\n", v70, v84);
            v80 = 125;
            v83 = -5;
            goto LABEL_141;
          }
        }

        v85 = *(v7 + 2);
        if (v85 == v72 && v71)
        {
          v71 = 1;
          if (*(v7 + 6) != -2147483647)
          {
            goto LABEL_142;
          }
        }

        else
        {
          if (v85 < v72)
          {
            goto LABEL_142;
          }

          v71 = *(v7 + 6) == -2147483647;
        }

        v72 = *(v7 + 2);
        LODWORD(v98) = v70;
      }

LABEL_142:
      ++v70;
      v69 = *(a2 + 104);
      v10 = v69 & 0x7FFFFFFF;
      if (v70 < (v69 & 0x7FFFFFFFu))
      {
        continue;
      }

      break;
    }

    if (!v72)
    {
      goto LABEL_161;
    }

    v97 = 0;
    v9 = v98;
  }

  while (v10);
  if (*v99)
  {
    return 0;
  }

LABEL_162:
  sub_10004565C("no valid checkpoint\n", v91);
  v86 = 92;
  v87 = 130;
LABEL_163:
  v88 = 92;
LABEL_164:
  sub_100049C40(v87, v88);
  return v86;
}

uint64_t sub_100033A0C(uint64_t *a1)
{
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v2 = a1[1];
  v3 = *(v2 + 36);
  v4 = sub_100025548(a1, 0, 0x40000000, *(v2 + 1272), 0, 0, 20, 0, &v22, 0, 1);
  if (!v4)
  {
    v6 = v22;
    if (*(v22 + 8) == 1380209482)
    {
      v7 = *(v22 + 9);
      if (v7 == 1)
      {
        if (!*(v22 + 10))
        {
          sub_10004565C("invalid EFI jumpstart record file length: %d\n", 0);
          v5 = 92;
          v9 = 92;
          goto LABEL_10;
        }

        v8 = *(v22 + 11);
        if (!v8 || v8 > (v3 - 176) >> 4)
        {
          sub_10004565C("invalid EFI jumpstart record number of extents: %d\n", *(v22 + 11));
          v5 = 92;
          v9 = 93;
LABEL_10:
          sub_100049C40(v9, 92);
LABEL_13:
          free(v22);
          return v5;
        }

        v11 = 0;
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = &v6[v11];
          v15 = *(v14 + 22);
          v16 = *(v14 + 23);
          v17 = *(a1[1] + 40);
          if (v17 - v16 < v15 || v17 <= v16 || v15 < 1 || v17 <= v15)
          {
            sub_10004565C("NX jumpstart record range is invalid: 0x%llx+%llu\n", v15, v16);
            v5 = 92;
            v9 = 1243;
            goto LABEL_10;
          }

          v13 += v16;
          sub_1000422DC(a1, v15, v16, 0, 0x40000000, v15, 0, 0, 0x14u, 1u);
          ++v12;
          v6 = v22;
          v11 += 16;
        }

        while (v12 < *(v22 + 11));
        v21 = *(v22 + 10);
        if (v13 * v3 != (v21 + v3 - 1) / v3 * v3)
        {
          sub_10004565C("the EFI jumpstart entry has length %u but occupies %llu blocks of size %u\n", v21, v13, v3);
          v5 = 92;
          v9 = 95;
          goto LABEL_10;
        }
      }

      else
      {
        sub_100045744("found EFI jumpstart record of unknown version %d (max known: %d)\n", v7, 1);
        sub_100049C40(0x5B, -6);
      }

      v5 = 0;
      goto LABEL_13;
    }

    sub_10004565C("the EFI jumpstart record magic number is invalid: 0x%x\n", *(v22 + 8));
    v5 = 92;
    v9 = 90;
    goto LABEL_10;
  }

  v5 = v4;
  sub_10004565C("verification/reading of the EFI jumpstart record failed\n");
  return v5;
}

uint64_t sub_100033C3C(uint64_t a1, uint64_t a2, unint64_t *a3, int a4, unint64_t *a5, int a6)
{
  if (a4 == 8 && a6 == 16)
  {
    v6 = *a3;
    v7 = *a5;
    v8 = a5[1];
    v9 = *(*(a1 + 8) + 40);
    v10 = v9 - v8;
    if (v9 > v8 && v6 >= 1 && v9 > v6 && v10 >= v6 && v7 >= 1 && v9 > v7 && v10 >= v7)
    {
      return 0;
    }

    sub_10004565C("evict mapping range is invalid: (0x%llx+%llu --> 0x%llx+%llu)\n", v6, v8, *a5, v8);
    v17 = 850;
  }

  else
  {
    sub_10004565C("unexpected key (%u) / val (%u) size in evict mapping tree\n", a4, a6);
    v17 = 849;
  }

  v18 = 92;
  sub_100049C40(v17, 92);
  return v18;
}

uint64_t sub_100033CE8(uint64_t a1)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[2] = v2;
  v11[3] = v2;
  v11[0] = v2;
  v11[1] = v2;
  v10[0] = a1;
  v10[1] = 0;
  v3 = *(a1 + 8);
  if ((*(v3 + 104) & 0x80000000) != 0)
  {
    sub_100039748(v11, a1, 0, 0x40000000, 2, 10, 0, *(v3 + 36), 8, 16, 0, *(v3 + 112), sub_100030C88);
    v6 = sub_10003570C(v11, 0, sub_100033F7C, v10, 0, 1);
    if (v6)
    {
      v5 = v6;
      sub_10004565C("NX checkpoint descriptor area fragmented metadata tree is invalid\n");
      return v5;
    }

    v3 = *(a1 + 8);
  }

  if ((*(v3 + 108) & 0x80000000) != 0 && (sub_100039748(v11, a1, 0, 0x40000000, 2, 10, 0, *(v3 + 36), 8, 16, 0, *(v3 + 120), sub_100030C88), v7 = sub_10003570C(v11, 0, sub_100033F7C, v10, 0, 1), v7))
  {
    v5 = v7;
    sub_10004565C("NX checkpoint data area fragmented metadata tree is invalid\n");
  }

  else
  {
    v4 = *(a1 + 24);
    if ((*(v4 + 164) & 0x80000000) != 0)
    {
      sub_100039748(v11, a1, 0, 0x40000000, 2, 10, 0, *(*(a1 + 8) + 36), 8, 16, 0, *(v4 + 168), sub_100030C88);
      v8 = sub_10003570C(v11, 0, sub_100033F7C, v10, 0, 1);
      if (v8)
      {
        v5 = v8;
        sub_10004565C("Spaceman internal pool bitmap fragmented metadata tree is invalid\n");
        return v5;
      }

      v4 = *(a1 + 24);
    }

    if ((*(v4 + 152) & 0x8000000000000000) != 0)
    {
      sub_100039748(v11, a1, 0, 0x40000000, 2, 10, 0, *(*(a1 + 8) + 36), 8, 16, 0, *(v4 + 176), sub_100030C88);
      v5 = sub_10003570C(v11, 0, sub_100033F7C, v10, 0, 1);
      if (v5)
      {
        sub_10004565C("Spaceman internal pool fragmented metadata tree is invalid\n");
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_100033F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void *a7)
{
  if (sub_100049FC8(a3, a4, a5, a6, a7))
  {
    return 92;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100033FB4(void *a1, int a2, void *a3, int a4, void *a5)
{
  result = 92;
  if (a2 == 8 && a4 == 16)
  {
    v7 = *a5 - *a3;
    if (*a5 < *a3 || v7 >= a3[1])
    {
      return 0;
    }

    else
    {
      *a5 = *a1 + v7;
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

char *sub_100034004(char *result)
{
  if ((byte_10009A3B8 & 1) == 0)
  {
    if (dword_10009A3BC <= 0xFF && (v1 = result, (result = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL)) != 0))
    {
      *result = v1;
      *(result + 1) = 0;
      *off_10007C6B0 = result;
      off_10007C6B0 = (result + 8);
      ++dword_10009A3BC;
    }

    else
    {
      result = sub_100045614("more than %d inodes tracked as rolling, disabling pfkur tracking repairs\n", 256);
      byte_10009A3B8 = 1;
    }
  }

  return result;
}

uint64_t sub_1000340B4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (byte_10009A3B8)
  {
LABEL_8:
    v13 = 0;
LABEL_9:
    v6 = off_10007C6A8;
    if (!off_10007C6A8)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v7 = v6;
      v6 = v6[1];
      v8 = off_10007C6A8;
      if (off_10007C6A8 != v7)
      {
        break;
      }

      off_10007C6A8 = *(off_10007C6A8 + 1);
      if (!off_10007C6A8)
      {
        v11 = &off_10007C6A8;
LABEL_16:
        off_10007C6B0 = v11;
      }

LABEL_17:
      free(v7);
      if (!v6)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v9 = v8;
      v8 = v8[1];
    }

    while (v8 != v7);
    v10 = v8[1];
    v9[1] = v10;
    v11 = (v9 + 1);
    if (v10)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v3 = off_10007C6A8;
  if (off_10007C6A8)
  {
    while (1)
    {
      sub_100045744("missing upgrade-rolling entry for inode (%llu)\n", *v3);
      sub_100049C40(0x3C2, -2);
      memset(v14, 0, sizeof(v14));
      if (a3)
      {
        v5 = sub_100027D7C(a3, 8u, 2, 0, 1, v3, 8u, v14, 0x18u);
        if (v5)
        {
          v13 = v5;
          goto LABEL_9;
        }
      }

      else
      {
        sub_10002797C();
      }

      v3 = *(v3 + 1);
      if (!v3)
      {
        goto LABEL_8;
      }
    }
  }

  v13 = 0;
LABEL_20:
  dword_10009A3BC = 0;
  byte_10009A3B8 = 0;
  return v13;
}