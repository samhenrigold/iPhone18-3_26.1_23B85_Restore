uint64_t sub_10000CB20(int *a1)
{
  v1 = &lcp_gotoptions[17 * *a1];
  v2 = *(v1 + 3);
  if (*(v1 + 3))
  {
    v2 = 4 * (v1[4] != 1500);
  }

  v3 = *(v1 + 4);
  if (*(v1 + 4))
  {
    if (v1[7] == -1)
    {
      v3 = 0;
    }

    else
    {
      v3 = 6;
    }
  }

  v4 = *(v1 + 7);
  if (*(v1 + 7))
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = *(v1 + 6);
    if (*(v1 + 6))
    {
      v6 = 0;
      v5 = 5;
    }

    else
    {
      v6 = 4 * (*(v1 + 5) != 0);
    }
  }

  v7 = *(v1 + 11);
  v8 = *(v1 + 12);
  v9 = *(v1 + 8);
  v10 = *(v1 + 9);
  v11 = *(v1 + 10);
  v12 = *(v1 + 13);
  v13 = *(v1 + 14);
  if (*(v1 + 15))
  {
    v14 = *(v1 + 45) + 3;
  }

  else
  {
    v14 = 0;
  }

  v15 = v3 + v2 + 4 * (v4 != 0) + v5 + v6 + 8 * (v7 != 0);
  if (v8)
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  if (v9)
  {
    v17 = 6;
  }

  else
  {
    v17 = 0;
  }

  return v15 + v16 + v17 + 2 * (v10 != 0) + 2 * (v11 != 0) + 4 * (v12 != 0) + 2 * (v13 != 0) + v14;
}

void sub_10000CC4C(int *result, uint64_t a2, _DWORD *a3)
{
  v3 = &lcp_gotoptions[17 * *result];
  v4 = a2;
  if (*(v3 + 3))
  {
    v4 = a2;
    if (v3[4] != 1500)
    {
      *a2 = 1025;
      *(a2 + 2) = BYTE1(v3[4]);
      v4 = a2 + 4;
      *(a2 + 3) = v3[4];
    }
  }

  if (*(v3 + 4) && v3[7] != -1)
  {
    *v4 = 1538;
    *(v4 + 2) = *(v3 + 31);
    *(v4 + 3) = *(v3 + 15);
    *(v4 + 4) = BYTE1(v3[7]);
    *(v4 + 5) = v3[7];
    v4 += 6;
  }

  if (!*(v3 + 7) || (*v4 = 667026435, v4 += 4, v5 = v4, !*(v3 + 7)))
  {
    if (*(v3 + 6))
    {
      *v4 = 599917827;
      v6 = *(v3 + 24);
      if ((v6 & 2) != 0)
      {
        LOBYTE(v7) = 0x80;
      }

      else
      {
        v7 = (v6 << 29 >> 31) & 5;
      }

      if (v6)
      {
        v8 = -127;
      }

      else
      {
        v8 = v7;
      }

      v5 = v4 + 5;
      *(v4 + 4) = v8;
      if (*(v3 + 7) || *(v3 + 6))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v5 = v4;
    }

    if (*(v3 + 5))
    {
      *v5 = 599786499;
      v5 += 4;
    }
  }

LABEL_22:
  if (*(v3 + 11))
  {
    *v5 = 633341956;
    *(v5 + 4) = *(v3 + 43);
    *(v5 + 5) = *(v3 + 21);
    *(v5 + 6) = BYTE1(v3[10]);
    *(v5 + 7) = v3[10];
    v5 += 8;
  }

  if (*(v3 + 12))
  {
    *v5 = 781;
    *(v5 + 2) = 6;
    v5 += 3;
  }

  if (*(v3 + 8))
  {
    *v5 = 1541;
    *(v5 + 2) = *(v3 + 35);
    *(v5 + 3) = *(v3 + 17);
    *(v5 + 4) = BYTE1(v3[8]);
    *(v5 + 5) = v3[8];
    v5 += 6;
  }

  if (*(v3 + 9))
  {
    *v5 = 519;
    v5 += 2;
  }

  if (*(v3 + 10))
  {
    *v5 = 520;
    v5 += 2;
  }

  if (*(v3 + 13))
  {
    *v5 = 1041;
    *(v5 + 2) = BYTE1(v3[5]);
    *(v5 + 3) = v3[5];
    v5 += 4;
  }

  if (*(v3 + 14))
  {
    *v5 = 530;
    v5 += 2;
  }

  if (*(v3 + 15))
  {
    *v5 = 19;
    *(v5 + 1) = *(v3 + 45) + 3;
    v9 = v5 + 3;
    *(v5 + 2) = *(v3 + 44);
    if (*(v3 + 45))
    {
      v10 = 0;
      do
      {
        *(v9 + v10) = *(v3 + v10 + 46);
        ++v10;
      }

      while (v10 < *(v3 + 45));
      v5 = v9 + v10;
    }

    else
    {
      v5 += 3;
    }
  }

  if (v5 - a2 != *a3)
  {
    error("Bug in lcp_addci: wrong length");
  }
}

uint64_t sub_10000CED4(int *a1, uint64_t a2, int a3)
{
  v3 = &lcp_gotoptions[17 * *a1];
  if (*(v3 + 3))
  {
    v4 = v3[4];
    if (v4 != 1500)
    {
      v6 = __OFSUB__(a3, 4);
      a3 -= 4;
      if (a3 < 0 != v6 || *(a2 + 1) != 4 || *a2 != 1 || v4 != bswap32(*(a2 + 2)) >> 16)
      {
        goto LABEL_89;
      }

      a2 += 4;
    }
  }

  if (*(v3 + 4))
  {
    v5 = v3[7];
    if (v5 != -1)
    {
      v6 = __OFSUB__(a3, 6);
      a3 -= 6;
      if (a3 < 0 != v6 || *(a2 + 1) != 6 || *a2 != 2 || bswap32(*(a2 + 2)) != v5)
      {
        goto LABEL_89;
      }

      a2 += 6;
    }
  }

  if (*(v3 + 7))
  {
    v6 = __OFSUB__(a3, 4);
    a3 -= 4;
    if (a3 < 0 != v6 || *(a2 + 1) != 4 || *a2 != 3)
    {
      goto LABEL_89;
    }

    v7 = bswap32(*(a2 + 2));
    v8 = 49703;
LABEL_15:
    if (v8 != HIWORD(v7))
    {
      goto LABEL_89;
    }

    a2 += 4;
    goto LABEL_39;
  }

  if (*(v3 + 6))
  {
    v6 = __OFSUB__(a3, 5);
    a3 -= 5;
    if (a3 < 0 != v6 || *(a2 + 1) != 5 || *a2 != 3 || bswap32(*(a2 + 2)) >> 16 != 49699)
    {
      goto LABEL_89;
    }

    v9 = *(v3 + 24);
    if (v9)
    {
      v10 = 129;
    }

    else
    {
      v10 = (v9 & 2) != 0 ? 128 : (v9 << 29 >> 31) & 5;
    }

    if (v10 != *(a2 + 4))
    {
      goto LABEL_89;
    }

    a2 += 5;
  }

  else if (*(v3 + 5))
  {
    v6 = __OFSUB__(a3, 4);
    a3 -= 4;
    if (a3 < 0 != v6 || *(a2 + 1) != 4 || *a2 != 3)
    {
      goto LABEL_89;
    }

    v7 = bswap32(*(a2 + 2));
    v8 = 49187;
    goto LABEL_15;
  }

LABEL_39:
  if (*(v3 + 11))
  {
    v6 = __OFSUB__(a3, 8);
    a3 -= 8;
    if (a3 < 0 != v6 || *(a2 + 1) != 8 || *a2 != 4 || bswap32(*(a2 + 2)) >> 16 != 49189 || bswap32(*(a2 + 4)) != v3[10])
    {
      goto LABEL_89;
    }

    a2 += 8;
  }

  if (*(v3 + 12))
  {
    v6 = __OFSUB__(a3, 3);
    a3 -= 3;
    if (a3 < 0 != v6 || *(a2 + 1) != 3 || *a2 != 13 || *(a2 + 2) != 6)
    {
      goto LABEL_89;
    }

    a2 += 3;
  }

  if (*(v3 + 8))
  {
    v6 = __OFSUB__(a3, 6);
    a3 -= 6;
    if (a3 < 0 != v6 || *(a2 + 1) != 6 || *a2 != 5 || bswap32(*(a2 + 2)) != v3[8])
    {
      goto LABEL_89;
    }

    a2 += 6;
  }

  if (*(v3 + 9))
  {
    v6 = __OFSUB__(a3, 2);
    a3 -= 2;
    if (a3 < 0 != v6 || *(a2 + 1) != 2 || *a2 != 7)
    {
      goto LABEL_89;
    }

    a2 += 2;
  }

  if (*(v3 + 10))
  {
    v6 = __OFSUB__(a3, 2);
    a3 -= 2;
    if (a3 < 0 != v6 || *(a2 + 1) != 2 || *a2 != 8)
    {
      goto LABEL_89;
    }

    a2 += 2;
  }

  if (*(v3 + 13))
  {
    v6 = __OFSUB__(a3, 4);
    a3 -= 4;
    if (a3 < 0 != v6 || *(a2 + 1) != 4 || *a2 != 17 || v3[5] != bswap32(*(a2 + 2)) >> 16)
    {
      goto LABEL_89;
    }

    a2 += 4;
  }

  if (*(v3 + 14))
  {
    v6 = __OFSUB__(a3, 2);
    a3 -= 2;
    if (a3 < 0 != v6 || *(a2 + 1) != 2 || *a2 != 18)
    {
      goto LABEL_89;
    }

    a2 += 2;
  }

  if (*(v3 + 15))
  {
    v11 = *(v3 + 45);
    a3 -= v11 + 3;
    if (a3 < 0 || v11 + 3 != *(a2 + 1) || *a2 != 19 || *(a2 + 2) != *(v3 + 44))
    {
      goto LABEL_89;
    }

    if (*(v3 + 45))
    {
      v12 = (a2 + 3);
      v13 = v3 + 46;
      do
      {
        v14 = *v13++;
        if (*v12 != v14)
        {
          goto LABEL_89;
        }

        ++v12;
      }

      while (--v11);
    }
  }

  if (!a3)
  {
    return 1;
  }

LABEL_89:
  if (debug)
  {
    dbglog("lcp_acki: received bad Ack!", a2);
  }

  return 0;
}

uint64_t sub_10000D2A4(int *a1, unint64_t a2, int a3)
{
  v3 = a2;
  v4 = a1;
  v5 = &lcp_gotoptions[17 * *a1];
  v98 = *v5;
  v99 = *(v5 + 2);
  v6 = &lcp_wantoptions + 68 * *a1;
  v7 = *(v5 + 3);
  v8 = *(v5 + 4);
  LOBYTE(v9) = *(v5 + 5);
  v10 = *(v5 + 6);
  v11 = *(v5 + 7);
  v85 = *(v5 + 9);
  v86 = *(v5 + 10);
  v87 = *(v5 + 12);
  v79 = *(v5 + 13);
  v80 = *(v5 + 8);
  v90 = *(v5 + 14);
  v12 = v5[5];
  v94 = *(v5 + 11);
  v95 = v5[4];
  v82 = *(v5 + 24);
  v83 = *(v5 + 15);
  v97 = *(v5 + 27);
  v96 = *(v5 + 25);
  v13 = v5[7];
  v84 = v5[8];
  v78 = v5[9];
  v81 = v5[10];
  v101 = *(v5 + 15);
  v100 = *(v5 + 11);
  if (!v7)
  {
    goto LABEL_12;
  }

  v89 = 1;
  if (a3 < 4 || v95 == 1500)
  {
    goto LABEL_13;
  }

  if (*(a2 + 1) != 4 || *a2 != 1)
  {
LABEL_12:
    v89 = 1;
    goto LABEL_13;
  }

  v89 = 0;
  v3 = (a2 + 4);
  v14 = __rev16(*(a2 + 2));
  v15 = v14 < 0x5DD || v14 <= *(v6 + 4);
  v16 = v5[4];
  if (v15)
  {
    v16 = v14;
  }

  v95 = v16;
  a3 -= 4;
LABEL_13:
  if (!*(v5 + 4))
  {
    goto LABEL_19;
  }

  v88 = 1;
  if (v13 != -1 && a3 >= 6)
  {
    if (v3[1] == 6 && *v3 == 2)
    {
      v88 = 0;
      v17 = *(v3 + 2);
      v3 += 6;
      v13 |= bswap32(v17);
      a3 -= 6;
      goto LABEL_20;
    }

LABEL_19:
    v88 = 1;
  }

LABEL_20:
  if (*(v5 + 6) || *(v5 + 5))
  {
    if (a3 < 4)
    {
      v23 = 0;
      v22 = 0;
      v18 = 0;
      v91 = 0;
      goto LABEL_83;
    }
  }

  else
  {
    v18 = 0;
    if (!*(v5 + 7) || a3 <= 3)
    {
      v19 = *(v5 + 11);
      v20 = a3;
      v21 = v3;
      v22 = 0;
      v23 = 0;
      LOBYTE(v9) = 0;
      v10 = 0;
      goto LABEL_75;
    }
  }

  if (*v3 != 3)
  {
    v18 = 0;
    v22 = 0;
    v23 = 0;
    v19 = *(v5 + 11);
    v20 = a3;
    v21 = v3;
    goto LABEL_75;
  }

  v23 = *(v5 + 6);
  v24 = *(v5 + 5);
  v18 = 0;
  v9 = v3[1];
  if (v9 < 4 || (v20 = a3 - v9, a3 < v9))
  {
    v19 = *(v5 + 11);
    v20 = a3;
    v21 = v3;
    v22 = 0;
    LOBYTE(v9) = *(v5 + 5);
    v10 = *(v5 + 6);
    v23 = 0;
    goto LABEL_75;
  }

  v21 = v3 + 4;
  v25 = __rev16(*(v3 + 1));
  if (v9 == 4 && v25 == 49187)
  {
    if (*(v5 + 7))
    {
      LOBYTE(v11) = 0;
      v19 = *(v5 + 11);
      LOBYTE(v9) = *(v5 + 5);
      v18 = v9;
      v10 = *(v5 + 6);
      v23 = 1;
LABEL_74:
      v22 = v10;
      goto LABEL_75;
    }

    if (*(v5 + 6))
    {
      LODWORD(v9) = *(v5 + 5);
      v23 = 0;
      v10 = 0;
      LOBYTE(v11) = 0;
LABEL_53:
      v22 = 1;
      v19 = *(v5 + 11);
      v18 = v9;
      goto LABEL_75;
    }

LABEL_64:
    if (debug)
    {
      dbglog("lcp_nakci: received bad Nak!");
    }

    return 0;
  }

  if (v9 != 5 || v25 != 49699)
  {
    v76 = v11 != 0;
    v28 = *(v5 + 7);
    if (v9 == 4)
    {
      v28 = *(v5 + 7);
      if (v25 == 49703)
      {
        v28 = *(v5 + 7);
        if (*(v5 + 7))
        {
          v92 = *(v5 + 4);
          v70 = &lcp_wantoptions + 68 * *a1;
          v29 = *(v5 + 3);
          v74 = v13;
          v30 = v5[5];
          dbglog("Unexpected Conf-Nak for EAP");
          v12 = v30;
          v13 = v74;
          v7 = v29;
          v6 = v70;
          v4 = a1;
          v8 = v92;
          v28 = *(v5 + 7);
        }
      }
    }

    if (v28)
    {
      LOBYTE(v11) = 0;
      v31 = v24;
      v32 = v23;
    }

    else
    {
      if (*(v5 + 6))
      {
        v31 = v24;
      }

      else
      {
        v31 = 0;
      }

      if (*(v5 + 6))
      {
        v32 = 0;
      }

      else
      {
        v32 = v23;
      }
    }

    v21 = &v9[v3];
    v19 = *(v5 + 11);
    v18 = v24;
    v22 = v23;
    LOBYTE(v9) = v31;
    v10 = v32;
    v23 = v76;
    goto LABEL_75;
  }

  v21 = v3 + 5;
  v26 = v3[4];
  LODWORD(v9) = *(v5 + 5);
  if (*(v5 + 7))
  {
    v10 = *(v5 + 6);
    if (v26 == 5)
    {
      LOBYTE(v11) = 0;
      v34 = *(v5 + 24);
      v35 = (v82 & 4) == 0;
      v36 = 4;
    }

    else
    {
      if (v26 != 128)
      {
        if (v26 == 129)
        {
          LOBYTE(v11) = 0;
          v27 = *(v5 + 24);
          if (v82)
          {
            v27 = 1;
          }

          LOBYTE(v82) = v27;
        }

        else
        {
          LOBYTE(v11) = 0;
        }

LABEL_73:
        v23 = 1;
        v19 = *(v5 + 11);
        v18 = *(v5 + 5);
        goto LABEL_74;
      }

      LOBYTE(v11) = 0;
      v34 = *(v5 + 24);
      v35 = (v82 & 2) == 0;
      v36 = 2;
    }

    if (!v35)
    {
      v34 = v36;
    }

    LOBYTE(v82) = v34;
    goto LABEL_73;
  }

  v10 = *(v5 + 6);
  if (!v10)
  {
    v22 = 0;
    LOBYTE(v11) = 0;
    v19 = *(v5 + 11);
    v18 = *(v5 + 5);
    LOBYTE(v9) = 0;
    goto LABEL_75;
  }

  if ((v82 & 6) == 0 && (v82 & 1) == v26)
  {
    goto LABEL_64;
  }

  if (v26 == 5)
  {
    if ((v82 & 4) == 0)
    {
      goto LABEL_228;
    }

    v23 = 0;
    LOBYTE(v11) = 0;
    v68 = 4;
LABEL_232:
    LOBYTE(v82) = v68;
    goto LABEL_53;
  }

  if (v26 == 128)
  {
    if ((v82 & 2) == 0)
    {
      goto LABEL_228;
    }

    v23 = 0;
    LOBYTE(v11) = 0;
    v68 = 2;
    goto LABEL_232;
  }

  if (v26 != 129 || (v82 & 1) == 0)
  {
LABEL_228:
    v23 = 0;
    LOBYTE(v11) = 0;
    v82 &= v82 - 1;
    if (!v82)
    {
      v10 = 0;
    }

    goto LABEL_53;
  }

  v23 = 0;
  LOBYTE(v11) = 0;
  v22 = 1;
  v19 = *(v5 + 11);
  v18 = *(v5 + 5);
  LOBYTE(v82) = 1;
LABEL_75:
  v91 = 0;
  if (v19)
  {
    a3 = v20 - 8;
    if (v20 >= 8)
    {
      if (v21[1] == 8 && *v21 == 4)
      {
        v3 = v21 + 8;
        if (bswap32(*(v21 + 1)) >> 16 == 49189)
        {
          v81 = bswap32(*(v21 + 1));
        }

        else
        {
          v94 = 0;
        }

        v91 = 1;
        goto LABEL_83;
      }

      v91 = 0;
    }
  }

  a3 = v20;
  v3 = v21;
LABEL_83:
  if (*(v5 + 12) && a3 >= 3 && v3[1] == 3 && *v3 == 13)
  {
    v87 = 0;
    v3 += 3;
    a3 -= 3;
  }

  v37 = 0;
  v38 = 1;
  if (*(v5 + 8))
  {
    v39 = a3 - 6;
    if (a3 >= 6)
    {
      if (v3[1] == 6 && *v3 == 5)
      {
        v3 += 6;
        v75 = v13;
        v77 = v23;
        v40 = v8;
        v69 = v10;
        v71 = v9;
        v41 = v7;
        v73 = v4;
        v42 = v12;
        v9 = v6;
        v43 = v18;
        v44 = v22;
        v45 = magic();
        v22 = v44;
        v37 = 1;
        v18 = v43;
        v6 = v9;
        v12 = v42;
        v4 = v73;
        v7 = v41;
        v10 = v69;
        LOBYTE(v9) = v71;
        v8 = v40;
        v13 = v75;
        v23 = v77;
        v84 = v45;
        v38 = 0;
        a3 = v39;
      }

      else
      {
        v37 = 0;
        v38 = 1;
      }
    }
  }

  v46 = 0;
  if (*(v5 + 9) && a3 >= 2)
  {
    if (v3[1] == 2 && *v3 == 7)
    {
      v85 = 0;
      v3 += 2;
      v46 = 1;
      a3 -= 2;
    }

    else
    {
      v46 = 0;
    }
  }

  v47 = 0;
  if (*(v5 + 10) && a3 >= 2)
  {
    if (v3[1] == 2 && *v3 == 8)
    {
      v86 = 0;
      v3 += 2;
      v47 = 1;
      a3 -= 2;
    }

    else
    {
      v47 = 0;
    }
  }

  v48 = 0;
  if (*(v5 + 13) && a3 >= 4)
  {
    if (v3[1] == 4 && *v3 == 17)
    {
      v49 = *(v3 + 1);
      v3 += 4;
      v50 = __rev16(v49);
      if (v50 <= *(v6 + 5))
      {
        v12 = v50;
      }

      v48 = 1;
      a3 -= 4;
    }

    else
    {
      v48 = 0;
    }
  }

  v51 = 0;
  if (*(v5 + 14) && a3 >= 2)
  {
    if (v3[1] == 2 && *v3 == 18)
    {
      v90 = 0;
      v3 += 2;
      v51 = 1;
      a3 -= 2;
    }

    else
    {
      v51 = 0;
    }
  }

  if (*(v5 + 15) && a3 > 2)
  {
    if (*v3 != 19)
    {
      goto LABEL_127;
    }

    v52 = v3[1];
    if (v52 < 3)
    {
      goto LABEL_127;
    }

    a2 = a3 - v52;
    if (a3 < v52)
    {
      goto LABEL_127;
    }

    v83 = 0;
    v3 += v3[1];
    a3 -= v52;
  }

  if (a3 >= 2)
  {
LABEL_127:
    v53 = v18;
    a2 = v22;
    do
    {
      v54 = v3[1];
      if (v54 < 2)
      {
        goto LABEL_64;
      }

      a3 -= v54;
      if (a3 < 0)
      {
        goto LABEL_64;
      }

      v55 = *v3;
      if (v55 > 6)
      {
        if (*v3 <= 0x10u)
        {
          if (v55 == 7)
          {
            if (v54 == 2)
            {
              v56 = v46;
            }

            else
            {
              v56 = 1;
            }

            if (*(v5 + 9))
            {
              goto LABEL_64;
            }

            goto LABEL_187;
          }

          if (v55 == 8)
          {
            if (v54 == 2)
            {
              v56 = v47;
            }

            else
            {
              v56 = 1;
            }

            if (*(v5 + 10))
            {
              goto LABEL_64;
            }

            goto LABEL_187;
          }
        }

        else
        {
          if (v55 == 17)
          {
            if (v54 == 4)
            {
              v56 = v48;
            }

            else
            {
              v56 = 1;
            }

            if (*(v5 + 13))
            {
              goto LABEL_64;
            }

            goto LABEL_187;
          }

          if (v55 == 18)
          {
            if (v54 == 2)
            {
              v60 = v51;
            }

            else
            {
              v60 = 1;
            }

            if (*(v5 + 14) || (v60 & 1) != 0)
            {
              goto LABEL_64;
            }

            v90 = 1;
          }

          else if (v55 == 19 && (*(v5 + 15) || v54 == 2))
          {
            goto LABEL_64;
          }
        }
      }

      else if (*v3 <= 2u)
      {
        if (v55 == 1)
        {
          if (*(v5 + 3))
          {
            if (v54 == 4 && v5[4] == 1500)
            {
              v59 = v89;
            }

            else
            {
              v59 = 0;
            }

            if ((v59 & 1) == 0)
            {
              goto LABEL_64;
            }
          }

          else
          {
            v62 = v89 ^ 1;
            if (v54 != 4)
            {
              v62 = 1;
            }

            if (v62)
            {
              goto LABEL_64;
            }
          }

          v63 = __rev16(*(v3 + 1));
          if (v63 < 0x5DC)
          {
            v7 = 1;
          }

          v64 = v95;
          if (v63 < 0x5DC)
          {
            v64 = v63;
          }

          v95 = v64;
        }

        else if (v55 == 2)
        {
          if (*(v5 + 4))
          {
            v57 = v54 == 6 && v5[7] == -1;
          }

          else
          {
            v57 = v54 == 6;
          }

          v61 = v57 ? v88 : 0;
          if ((v61 & 1) == 0)
          {
            goto LABEL_64;
          }
        }
      }

      else
      {
        switch(v55)
        {
          case 3u:
            if (*(v5 + 6) | a2 || *(v5 + 5) || v53)
            {
              goto LABEL_64;
            }

            v56 = (*(v5 + 7) != 0) | v23;
LABEL_187:
            if (v56)
            {
              goto LABEL_64;
            }

            break;
          case 4u:
            if (*(v5 + 11))
            {
              v56 = 1;
            }

            else
            {
              v56 = v91;
            }

            if (v54 != 8)
            {
              goto LABEL_64;
            }

            goto LABEL_187;
          case 5u:
            if (*(v5 + 8))
            {
              v56 = 1;
            }

            else
            {
              v56 = v37;
            }

            if (v54 != 6)
            {
              goto LABEL_64;
            }

            goto LABEL_187;
        }
      }

      v3 += v54;
    }

    while (a3 > 1);
  }

  if (v4[2] == 9)
  {
    return 1;
  }

  if (v38)
  {
    v65 = 0;
  }

  else
  {
    v65 = v78 + 1;
    if (v78 + 1 >= lcp_loopbackfail)
    {
      v93 = v8;
      v66 = v7;
      v67 = v9;
      LODWORD(v9) = v12;
      notice("Serial line is looped back.", a2);
      lcp_close(*v4, "Loopback detected");
      v12 = v9;
      LOBYTE(v9) = v67;
      v7 = v66;
      v8 = v93;
      *status = 17;
    }
  }

  *v5 = v98;
  *(v5 + 2) = v99;
  *(v5 + 3) = v7;
  *(v5 + 4) = v8;
  *(v5 + 5) = v9;
  *(v5 + 6) = v10;
  *(v5 + 7) = v11;
  *(v5 + 8) = v80;
  *(v5 + 9) = v85;
  *(v5 + 10) = v86;
  *(v5 + 11) = v94;
  *(v5 + 12) = v87;
  *(v5 + 13) = v79;
  *(v5 + 14) = v90;
  *(v5 + 15) = v83;
  v5[4] = v95;
  v5[5] = v12;
  *(v5 + 24) = v82;
  *(v5 + 27) = v97;
  *(v5 + 25) = v96;
  v5[7] = v13;
  v5[8] = v84;
  v5[9] = v65;
  v5[10] = v81;
  *(v5 + 15) = v101;
  result = 1;
  *(v5 + 11) = v100;
  return result;
}

uint64_t sub_10000DDC0(int *a1, unsigned __int8 *a2, int a3)
{
  v3 = &lcp_gotoptions[17 * *a1];
  v4 = *(v3 + 3);
  v5 = *(v3 + 4);
  v6 = *(v3 + 5);
  v7 = *(v3 + 6);
  v8 = *(v3 + 7);
  v9 = *(v3 + 8);
  v10 = *(v3 + 9);
  v11 = *(v3 + 10);
  v12 = *(v3 + 11);
  v13 = *(v3 + 12);
  v14 = *(v3 + 13);
  v15 = *(v3 + 14);
  v16 = *(v3 + 15);
  if (a3 >= 4 && *(v3 + 3) && a2[1] == 4 && *a2 == 1)
  {
    if (v3[4] != bswap32(*(a2 + 1)) >> 16)
    {
      goto LABEL_118;
    }

    v4 = 0;
    a2 += 4;
    a3 -= 4;
  }

  if (*(v3 + 4))
  {
    v17 = a3 < 6;
  }

  else
  {
    v17 = 1;
  }

  if (!v17 && a2[1] == 6 && *a2 == 2)
  {
    if (bswap32(*(a2 + 2)) != v3[7])
    {
      goto LABEL_118;
    }

    v5 = 0;
    a2 += 6;
    a3 -= 6;
  }

  if (*(v3 + 7))
  {
    v18 = a3 < 4;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    if (*(v3 + 7))
    {
      goto LABEL_47;
    }

    if (*(v3 + 6))
    {
      v19 = a3 < 5;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      if (!*(v3 + 6))
      {
        if (*(v3 + 5))
        {
          v20 = a3 < 4;
        }

        else
        {
          v20 = 1;
        }

        if (!v20 && a2[1] == 4 && *a2 == 3)
        {
          if (bswap32(*(a2 + 1)) >> 16 != 49187)
          {
            goto LABEL_118;
          }

          v6 = 0;
          v7 = 0;
          goto LABEL_38;
        }

        v7 = 0;
      }
    }

    else if (a2[1] == 5 && *a2 == 3)
    {
      if (bswap32(*(a2 + 1)) >> 16 != 49699)
      {
        goto LABEL_118;
      }

      v21 = *(v3 + 24);
      if (v21)
      {
        v22 = 129;
      }

      else
      {
        v22 = (v21 & 2) != 0 ? 128 : (v21 << 29 >> 31) & 5;
      }

      if (v22 != a2[4])
      {
        goto LABEL_118;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      a3 -= 5;
      a2 += 5;
      goto LABEL_47;
    }

    v8 = 0;
    goto LABEL_47;
  }

  if (a2[1] == 4 && *a2 == 3)
  {
    if (bswap32(*(a2 + 1)) >> 16 != 49703)
    {
      goto LABEL_118;
    }

LABEL_38:
    v8 = 0;
    a2 += 4;
    a3 -= 4;
  }

LABEL_47:
  if (*(v3 + 11))
  {
    v23 = a3 < 8;
  }

  else
  {
    v23 = 1;
  }

  if (!v23 && a2[1] == 8 && *a2 == 4)
  {
    if (bswap32(*(a2 + 1)) >> 16 != 49189 || bswap32(*(a2 + 1)) != v3[10])
    {
      goto LABEL_118;
    }

    v12 = 0;
    a2 += 8;
    a3 -= 8;
  }

  if (*(v3 + 12))
  {
    v24 = a3 < 3;
  }

  else
  {
    v24 = 1;
  }

  if (!v24 && a2[1] == 3 && *a2 == 13)
  {
    if (a2[2] != 6)
    {
      goto LABEL_118;
    }

    v13 = 0;
    a2 += 3;
    a3 -= 3;
  }

  if (*(v3 + 8))
  {
    v25 = a3 < 6;
  }

  else
  {
    v25 = 1;
  }

  if (!v25 && a2[1] == 6 && *a2 == 5)
  {
    if (bswap32(*(a2 + 2)) != v3[8])
    {
      goto LABEL_118;
    }

    v9 = 0;
    a2 += 6;
    a3 -= 6;
  }

  if (*(v3 + 9))
  {
    v26 = a3 < 2;
  }

  else
  {
    v26 = 1;
  }

  if (!v26 && a2[1] == 2 && *a2 == 7)
  {
    v10 = 0;
    a3 -= 2;
    a2 += 2;
  }

  if (*(v3 + 10))
  {
    v27 = a3 < 2;
  }

  else
  {
    v27 = 1;
  }

  if (!v27 && a2[1] == 2 && *a2 == 8)
  {
    v11 = 0;
    a3 -= 2;
    a2 += 2;
  }

  if (*(v3 + 13))
  {
    v28 = a3 < 4;
  }

  else
  {
    v28 = 1;
  }

  if (!v28 && a2[1] == 4 && *a2 == 17)
  {
    if (v3[5] != bswap32(*(a2 + 1)) >> 16)
    {
      goto LABEL_118;
    }

    v14 = 0;
    a2 += 4;
    a3 -= 4;
  }

  if (*(v3 + 14) && a3 >= 2 && a2[1] == 2 && *a2 == 18)
  {
    v15 = 0;
    a2 += 2;
    a3 -= 2;
  }

  if (*(v3 + 15) && (v29 = *(v3 + 45), v30 = a3 - (v29 + 3), a3 >= v29 + 3))
  {
    if (*a2 == 19 && v29 + 3 == a2[1] && a2[2] == *(v3 + 44))
    {
      if (*(v3 + 45))
      {
        a2 += 3;
        v32 = v3 + 46;
        while (1)
        {
          v33 = *v32++;
          if (*a2 != v33)
          {
            break;
          }

          ++a2;
          if (!--v29)
          {
            goto LABEL_111;
          }
        }
      }

      else
      {
LABEL_111:
        v16 = 0;
        if (!v30)
        {
LABEL_102:
          if (a1[2] == 9)
          {
            return 1;
          }

          *(v3 + 3) = v4;
          *(v3 + 4) = v5;
          *(v3 + 5) = v6;
          *(v3 + 6) = v7;
          *(v3 + 7) = v8;
          *(v3 + 8) = v9;
          *(v3 + 9) = v10;
          *(v3 + 10) = v11;
          *(v3 + 11) = v12;
          *(v3 + 12) = v13;
          *(v3 + 13) = v14;
          *(v3 + 14) = v15;
          result = 1;
          *(v3 + 15) = v16;
          return result;
        }
      }
    }
  }

  else if (!a3)
  {
    goto LABEL_102;
  }

LABEL_118:
  if (debug)
  {
    dbglog("lcp_rejci: received bad Reject!", a2);
  }

  return 0;
}

uint64_t sub_10000E260(int *a1, char *__dst, int *a3, int a4)
{
  v4 = __dst;
  v45 = &lcp_gotoptions[17 * *a1];
  v5 = &lcp_hisoptions[68 * *a1];
  v6 = &lcp_allowoptions + 68 * *a1;
  v7 = *a3;
  *(v5 + 16) = 0;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v44 = &unk_10004A3A1;
  v8 = 2;
  v9 = __dst;
LABEL_2:
  v10 = multilink;
  while (1)
  {
    v11 = v9;
    if (!v7)
    {
      break;
    }

    if (v7 < 2 || ((v12 = v9[1], v12 >= 2) ? (v13 = v7 >= v12) : (v13 = 0), !v13))
    {
      if (debug)
      {
        dbglog("lcp_reqci: bad CI length!");
      }

      LODWORD(v12) = v7;
      v7 = 0;
      goto LABEL_98;
    }

    v14 = *v9;
    v7 -= v12;
    v9 += v12;
    if (*v11 > 6u)
    {
      if (v14 <= 16)
      {
        if (v14 == 7)
        {
          if (v12 != 2 || !v6[9])
          {
            goto LABEL_98;
          }

          v5[9] = 1;
        }

        else
        {
          if (v14 != 8)
          {
LABEL_102:
            if (debug)
            {
              dbglog("lcp_reqci: rcvd unknown option %d");
            }

            goto LABEL_98;
          }

          if (v12 != 2 || !v6[10])
          {
            goto LABEL_98;
          }

          v5[10] = 1;
        }
      }

      else
      {
        switch(v14)
        {
          case 17:
            if (v12 != 4 || !v6[13] || !v10)
            {
              goto LABEL_98;
            }

            v22 = __rev16(*(v11 + 1));
            v5[13] = 1;
            *(v5 + 5) = v22;
            break;
          case 18:
            if (v12 != 2 || !v6[14] || !v10)
            {
              goto LABEL_98;
            }

            v5[14] = 1;
            break;
          case 19:
            if (v12 > 0x17 || v12 == 2 || !v6[15])
            {
              goto LABEL_98;
            }

            v16 = v11[2];
            v5[15] = 1;
            v5[44] = v16;
            v5[45] = v12 - 3;
            memcpy(v5 + 46, v11 + 3, (v12 - 3));
            break;
          default:
            goto LABEL_102;
        }
      }
    }

    else if (v14 <= 2)
    {
      if (v14 == 1)
      {
        if (v12 != 4 || !v6[3])
        {
          goto LABEL_98;
        }

        v23 = __rev16(*(v11 + 1));
        if (v23 <= 0x7F)
        {
          *v44 = -2147482623;
          v28 = v44 + 4;
          goto LABEL_133;
        }

        v5[3] = 1;
        *(v5 + 4) = v23;
      }

      else
      {
        if (v14 != 2)
        {
          goto LABEL_102;
        }

        if (v12 != 6 || !v6[4])
        {
          goto LABEL_98;
        }

        v17 = v11[4];
        v18 = (v11[2] << 16) | (v11[3] << 8) | v17;
        v19 = v11[5];
        v20 = v19 | (v18 << 8);
        if ((*(v6 + 7) & ~v20) != 0)
        {
          v27 = v18 << 8;
          *v44 = 1538;
          v44[2] = (*(v6 + 7) | v27) >> 24;
          v44[3] = (*(v6 + 7) | v27) >> 16;
          v44[4] = v17 | BYTE1(*(v6 + 7));
          v44[5] = v19 | *(v6 + 7);
          v28 = v44 + 6;
          goto LABEL_133;
        }

        v5[4] = 1;
        *(v5 + 7) = v20;
      }
    }

    else
    {
      switch(v14)
      {
        case 3:
          if (v12 < 4 || !v6[5] && !v6[6] && !v6[7])
          {
            dbglog("No auth is possible", v40);
            goto LABEL_98;
          }

          v21 = __rev16(*(v11 + 1));
          switch(v21)
          {
            case 0xC227u:
              if (v5[6] || v12 != 4 || v5[5])
              {
                if (debug)
                {
                  dbglog("lcp_reqci: rcvd AUTHTYPE EAP, rejecting...", v40);
                }

                goto LABEL_98;
              }

              if (!v6[7])
              {
                v30 = v44;
                *v44 = 3;
                v28 = v44 + 4;
                if (v6[6])
                {
LABEL_120:
                  *(v30 + 1) = -15867;
                  v30[3] = 35;
LABEL_121:
                  v32 = v6[24];
                  if (v32)
                  {
                    LOBYTE(v33) = -127;
                  }

                  else if ((v32 & 2) != 0)
                  {
                    LOBYTE(v33) = 0x80;
                  }

                  else
                  {
                    v33 = (v32 << 29 >> 31) & 5;
                  }

                  v44[4] = v33;
                  v28 = v44 + 5;
                  goto LABEL_133;
                }

                *(v44 + 1) = -16380;
                v31 = 35;
LABEL_130:
                v30[3] = v31;
                goto LABEL_133;
              }

              v5[7] = 1;
              break;
            case 0xC223u:
              if (v5[5] || v12 != 5 || v5[7])
              {
                if (debug)
                {
                  dbglog("lcp_reqci: rcvd AUTHTYPE CHAP, rejecting...", v40);
                }

                goto LABEL_98;
              }

              if (!v6[6])
              {
                *v44 = 1027;
                v28 = v44 + 4;
                if (v6[7])
                {
                  v34 = 10178;
                }

                else
                {
                  v34 = 9152;
                }

                *(v44 + 1) = v34;
                goto LABEL_133;
              }

              v25 = v11[4];
              if (v25 == 5)
              {
                if ((v6[24] & 4) == 0)
                {
                  goto LABEL_113;
                }

                v26 = 4;
              }

              else if (v25 == 128)
              {
                if ((v6[24] & 2) == 0)
                {
                  goto LABEL_113;
                }

                v26 = 2;
              }

              else
              {
                if (v25 != 129 || (v6[24] & 1) == 0)
                {
LABEL_113:
                  *v44 = 599917827;
                  goto LABEL_121;
                }

                v26 = 1;
              }

              v5[24] = v26;
              v5[6] = 1;
              break;
            case 0xC023u:
              if (v5[6] || v12 != 4 || v5[7])
              {
                if (debug)
                {
                  dbglog("lcp_reqci: rcvd AUTHTYPE PAP, rejecting...", v40);
                }

                goto LABEL_98;
              }

              if (!v6[5])
              {
                v30 = v44;
                *v44 = 3;
                v28 = v44 + 4;
                if (!v6[7])
                {
                  goto LABEL_120;
                }

                goto LABEL_118;
              }

              v5[5] = 1;
              break;
            default:
              v30 = v44;
              *v44 = 3;
              v28 = v44 + 4;
              if (v6[7])
              {
LABEL_118:
                *(v30 + 1) = -15868;
                v31 = 39;
                goto LABEL_130;
              }

              if (v6[6])
              {
                *(v44 + 1) = -15867;
                v44[3] = 35;
                goto LABEL_121;
              }

              *(v44 + 1) = -16380;
              v44[3] = 35;
LABEL_133:
              v44 = v28;
              if (!a4)
              {
                goto LABEL_134;
              }

LABEL_98:
              if (v11 != v4)
              {
                memcpy(v4, v11, v12);
              }

              v4 += v12;
              v8 = 4;
              goto LABEL_2;
          }

          break;
        case 4:
          if (v12 != 8 || !v6[11])
          {
            goto LABEL_98;
          }

          if (bswap32(*(v11 + 1)) >> 16 != 49189)
          {
            *v44 = 633341956;
            v44[4] = v6[43];
            v44[5] = *(v6 + 21);
            v44[6] = BYTE1(*(v6 + 10));
            v44[7] = *(v6 + 10);
            v28 = v44 + 8;
            goto LABEL_133;
          }

          break;
        case 5:
          if (v6[8])
          {
            if (v12 != 6)
            {
              goto LABEL_98;
            }

            v15 = *(v45 + 8) == 0;
          }

          else
          {
            if (v12 != 6 || !*(v45 + 8))
            {
              goto LABEL_98;
            }

            v15 = 0;
          }

          v24 = bswap32(*(v11 + 2));
          if (!v15 && v24 == v45[8])
          {
            v29 = magic();
            *v44 = 1541;
            v44[2] = HIBYTE(v29);
            v44[3] = BYTE2(v29);
            v44[4] = BYTE1(v29);
            v44[5] = v29;
            v44 += 6;
LABEL_134:
            v35 = v8 == 4;
            v8 = 4;
            if (!v35)
            {
              v8 = 3;
            }

            goto LABEL_2;
          }

          v5[8] = 1;
          *(v5 + 8) = v24;
          break;
        default:
          goto LABEL_102;
      }
    }

    if (v8 == 2)
    {
      goto LABEL_2;
    }
  }

  if (v8 == 4)
  {
    v37 = v4 - __dst;
  }

  else
  {
    if (v8 == 3)
    {
      v36 = v44 - &unk_10004A3A1;
      *a3 = v36;
      memcpy(__dst, &unk_10004A3A1, v36);
      goto LABEL_143;
    }

    v37 = v9 - __dst;
  }

  *a3 = v37;
LABEL_143:
  if (debug)
  {
    v38 = "REJ";
    if (v8 == 3)
    {
      v38 = "NAK";
    }

    if (v8 == 2)
    {
      v38 = "ACK";
    }

    dbglog("lcp_reqci: returning CONF%s.", v38);
  }

  return v8;
}

void sub_10000EA20(int *a1)
{
  v2 = *a1;
  v3 = &lcp_hisoptions[68 * v2];
  v4 = &lcp_gotoptions[17 * v2];
  if (!*(v4 + 8))
  {
    v4[8] = 0;
  }

  if (!v3[8])
  {
    *(v3 + 8) = 0;
  }

  if (v3[3])
  {
    v5 = *(v3 + 4);
  }

  else
  {
    v5 = 1500;
  }

  if (*(v4 + 3))
  {
    v6 = *(&lcp_wantoptions + 17 * v2 + 4);
    v7 = v4[4];
    if (v6 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    v8 = 1500;
  }

  if (v5 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v9 >= *(&lcp_allowoptions + 17 * v2 + 4))
  {
    v10 = *(&lcp_allowoptions + 17 * v2 + 4);
  }

  else
  {
    v10 = v9;
  }

  netif_set_mtu(v2, v10);
  if (v3[4])
  {
    v11 = *(v3 + 7);
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  ppp_send_config(*a1, v5, v11, v3[9], v3[10]);
  if (lax_recv)
  {
    v12 = 0;
  }

  else if (*(v4 + 4))
  {
    v12 = v4[7];
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  ppp_recv_config(*a1, v8, v12, *(v4 + 9), *(v4 + 10));
  if (v3[3])
  {
    peer_mru[*a1] = *(v3 + 4);
  }

  notify(lcp_up_notify, 0);
  sub_10000C754(*a1);
  v13 = *a1;

  link_established(v13);
}

uint64_t sub_10000EBA0(unsigned int *a1)
{
  v2 = *a1;
  v3 = &lcp_gotoptions[17 * v2];
  if (byte_10004A3A0 == 1)
  {
    untimeout(sub_10000C8A4, &lcp_fsm + 80 * v2);
    byte_10004A3A0 = 0;
    v2 = *a1;
  }

  link_down(v2);
  notify(lcp_down_notify, 0);
  v4 = 0xFFFFFFFFLL;
  ppp_send_config(*a1, 1500, 0xFFFFFFFFLL, 0, 0);
  if (*(v3 + 4))
  {
    v4 = v3[7];
  }

  result = ppp_recv_config(*a1, 1500, v4, *(v3 + 9), *(v3 + 10));
  peer_mru[*a1] = 1500;
  return result;
}

uint64_t sub_10000EC88(unsigned int *a1, int a2, char a3, unsigned __int16 *a4, int a5)
{
  v5 = 0;
  if (a2 <= 9)
  {
    if (a2 == 8)
    {
      if (a5 > 1)
      {
        if (a1[2] == 9)
        {
          v7 = __rev16(*a4);
          v8 = protocols;
          if (protocols)
          {
            v9 = &off_100043898;
            while (*v8 != v7 || !*(v8 + 80))
            {
              v10 = *v9++;
              v8 = v10;
              if (!v10)
              {
                goto LABEL_26;
              }
            }

            (*(v8 + 3))(*a1);
          }

          else
          {
LABEL_26:
            warning("Protocol-Reject for unsupported protocol 0x%x");
          }
        }

        else if (debug)
        {
          dbglog("Protocol-Reject discarded: LCP in state %d");
        }
      }

      else if (debug)
      {
        dbglog("lcp_rprotrej: Rcvd short Protocol-Reject packet!");
      }

      return 1;
    }

    if (a2 == 9)
    {
      if (a1[2] == 9)
      {
        *a4 = HIBYTE(lcp_gotoptions[17 * *a1 + 8]);
        *(a4 + 1) = HIWORD(lcp_gotoptions[17 * *a1 + 8]);
        *(a4 + 2) = BYTE1(lcp_gotoptions[17 * *a1 + 8]);
        *(a4 + 3) = lcp_gotoptions[17 * *a1 + 8];
        fsm_sdata(a1, 10, a3, a4, a5);
      }

      return 1;
    }
  }

  else
  {
    switch(a2)
    {
      case 10:
        if (a5 <= 3)
        {
          dbglog("lcp: received short Echo-Reply, length %d");
          return 1;
        }

        v6 = &lcp_gotoptions[17 * *a1];
        if (!*(v6 + 8) || bswap32(*a4) != v6[8])
        {
          dword_10004A39C = 0;
          ppp_variable_echo_stop();
          ppp_auxiliary_probe_stop();
          return 1;
        }

        goto LABEL_32;
      case 11:
        return 1;
      case 13:
        if (a1[2] == 9)
        {
          if (a5 <= 7)
          {
            dbglog("lcp: received short Time-remaining, length %d");
            return 1;
          }

          v11 = &lcp_gotoptions[17 * *a1];
          if (!*(v11 + 8) || bswap32(*a4) != v11[8])
          {
            v13[0] = bswap32(*(a4 + 1));
            v13[1] = a4 + 4;
            v13[2] = (a5 - 8);
            notify_with_ptr(lcp_timeremaining_notify, v13);
            return 1;
          }

LABEL_32:
          warning("appear to have received our own echo-reply!");
          return 1;
        }

        return 1;
    }
  }

  return v5;
}

void sub_10000EEE4(int *result)
{
  if (result[2] == 9)
  {
    info("No response to %d echo-requests", dword_10004A39C);
    notice("Serial link appears to be disconnected.");
    lcp_close(*result, "Peer not responding");
    *status = 15;
  }
}

uint64_t magic_init()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  get_host_seed();

  return getpid();
}

_BYTE *random_bytes(_BYTE *result, unsigned int a2)
{
  if (a2 >= 1)
  {
    v2 = result;
    v3 = a2;
    do
    {
      result = arc4random();
      v4 = (result >> 24) & 0x7F;
      if (!v4)
      {
        LOBYTE(v4) = 1;
      }

      *v2++ = v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v99 = 0;
  openlog("pppd", 9, 120);
  setlogmask(127);
  qword_10004A988 = pthread_self();
  link_stats_valid = 0;
  new_phase(1);
  script_env = 0;
  if (gethostname(hostname, 0x100uLL) < 0)
  {
    option_error("Couldn't get hostname: %m");
    exit(1);
  }

  byte_100047C07 = 0;
  v5 = umask(0x1FFu);
  umask(v5 | 0x12);
  v6 = getuid();
  v7 = 0;
  uid = v6;
  privileged = v6 == 0;
  if (v6)
  {
    privileged = sys_check_controller();
    v7 = uid;
  }

  slprintf(v98, 16, "%d", v7);
  script_setenv("ORIG_UID", v98);
  ngroups = getgroups(16, groups);
  magic_init();
  v8 = protocols;
  if (protocols)
  {
    v9 = &off_100043898;
    do
    {
      (*(v8 + 1))(0);
      v10 = *v9++;
      v8 = v10;
    }

    while (v10);
  }

  tty_init();
  progname = *argv;
  sys_install_options();
  if (!options_from_file() || !options_from_user() || !parse_args(argc - 1, argv + 1) || controlled && !options_from_controller() || !options_from_file())
  {
    goto LABEL_14;
  }

  devnam_fixed = 1;
  v11 = *(the_channel + 8);
  if (v11)
  {
    v11();
  }

  if (debug)
  {
    setlogmask(255);
  }

  if (geteuid())
  {
    option_error("must be root to run %s, since it is not setuid-root", *argv);
    exit(3);
  }

  if (!ppp_available())
  {
    option_error("%s", no_ppp_msg[0]);
    exit(4);
  }

  check_options();
  if (!sys_check_options())
  {
LABEL_14:
    exit(2);
  }

  v12 = auth_check_options();
  v13 = protocols;
  if (protocols)
  {
    v14 = &off_100043898;
    do
    {
      v15 = *(v13 + 14);
      if (v15)
      {
        v12 = v15(v12);
      }

      v16 = *v14++;
      v13 = v16;
    }

    while (v16);
  }

  v17 = *(the_channel + 16);
  if (v17)
  {
    v17(v12);
  }

  if (dump_options | dryrun)
  {
    init_pr_log(0, 6);
    print_options(pr_log, 0);
    end_pr_log();
    if (dryrun)
    {
      die(0);
    }
  }

  v18.n128_f64[0] = sys_init();
  v19 = system_inited_notify;
  if (system_inited_notify)
  {
    do
    {
      v20 = *v19;
      (*(v19 + 8))(*(v19 + 16), 0, v18);
      v19 = v20;
    }

    while (v20);
  }

  v21 = open("/dev/null", 2, v18.n128_f64[0]);
  dword_10004A990 = v21;
  if ((v21 & 0x80000000) != 0)
  {
    fatal("Couldn't open %s: %m", "/dev/null");
  }

  if (v21 <= 2)
  {
    do
    {
      v21 = dup(v21);
      if ((v21 & 0x80000000) != 0)
      {
        fatal("Critical shortage of file descriptors: dup failed: %m");
      }

      dword_10004A990 = v21;
    }

    while (v21 < 3);
  }

  if (!(nodetach | updetach))
  {
    detach();
  }

  v22 = getpwuid(uid);
  if (!v22 || (pw_name = v22->pw_name) == 0)
  {
    pw_name = "(unknown)";
  }

  sys_log(5u, "pppd %s (Apple version %s) started by %s, uid %d", "2.4.2", "884", pw_name, uid);
  script_setenv("PPPLOGNAME", pw_name);
  if (devnam)
  {
    script_setenv("DEVICE", &devnam);
  }

  v24 = getpid();
  slprintf(v98, 16, "%d", v24);
  script_setenv("PPPD_PID", v98);
  if (controlfd != -1)
  {
    add_fd(controlfd);
  }

  v25 = sub_100010610();
  byte_10004A994 = 0;
  if (demand)
  {
    dword_10004A998 = open_ppp_loopback();
    set_ifunit(1);
    demand_conf();
    v26 = getpid();
    sub_100010AF0(v26);
  }

  v27 = &unk_100047000;
  if (!holdfirst)
  {
    do_callback = 0;
    goto LABEL_56;
  }

  need_holdoff = 1;
  while (1)
  {
    if (v27[794])
    {
      v25 = holdoff;
    }

    else
    {
      v25 = 0;
    }

    v99 = v25;
    if (holdoff_hook)
    {
      v25 = holdoff_hook();
      v99 = v25;
    }

    if (v25 >= 1)
    {
      new_phase(11);
      timeout(sub_100011174);
      got_sigterm = 0;
      got_sighup = 0;
      do
      {
        sub_100010BF8();
        if (kill_link)
        {
          v25 = new_phase(3);
        }
      }

      while (phase == 11);
      if (!persist)
      {
LABEL_283:
        v94 = dword_10004ADB8;
        if (dword_10004ADB8 >= 1)
        {
          do
          {
            if (debug)
            {
              dbglog("Waiting for %d child processes...", v94);
              for (i = qword_10004ADC0; i; i = *(i + 32))
              {
                dbglog("  script %s, pid %d", *(i + 8), *i);
              }
            }

            if ((sub_10001117C(1) & 0x80000000) != 0)
            {
              break;
            }

            v94 = dword_10004ADB8;
          }

          while (dword_10004ADB8 > 0);
        }

        die(*status);
      }
    }

LABEL_56:
    listen_time = 0;
    v27[794] = 1;
    dword_10004A99C = -1;
    *status = 0;
    devstatus = 0;
    ++unsuccess;
    v28 = do_callback;
    doing_callback = do_callback;
    do_callback = 0;
    if (demand)
    {
      v29 = v28 == 0;
    }

    else
    {
      v29 = 0;
    }

    if (v29)
    {
      new_phase(3);
      demand_unblock();
      add_fd(dword_10004A998);
      do
      {
        sub_100010BF8();
        if (kill_link)
        {
          v30 = persist == 0;
        }

        else
        {
          v30 = 0;
        }
      }

      while (!v30 && !get_loop_output());
      remove_fd(dword_10004A998);
      if (kill_link)
      {
        v31 = persist == 0;
      }

      else
      {
        v31 = 0;
      }

      if (v31)
      {
        goto LABEL_283;
      }

      demand_block();
      info("Starting link");
    }

    v32 = start_link_hook;
    if (!start_link_hook)
    {
      break;
    }

    if (*(the_channel + 96))
    {
      v33 = retry_pre_start_link_check;
      if (retry_pre_start_link_check < 0)
      {
        v33 = 0;
        retry_pre_start_link_check = 0;
      }

      v34 = v33 + 2;
      while (1)
      {
        v25 = (*(the_channel + 96))(v25);
        if (!v25)
        {
          break;
        }

        if (--v34 < 2)
        {
          v35 = 25;
          goto LABEL_141;
        }
      }

      v32 = start_link_hook;
    }

    v99 = v32(v25);
    if (v99)
    {
      break;
    }

    v35 = 5;
LABEL_141:
    *status = v35;
LABEL_258:
    sys_statusnotify();
    if (!demand)
    {
      if (byte_10004A9B8 && unlink(&byte_10004A9B8) < 0 && *__error() != 2)
      {
        warning("unable to delete pid file %s: %m", &byte_10004A9B8);
      }

      byte_10004A9B8 = 0;
    }

    if (!persist)
    {
      goto LABEL_283;
    }

    if (maxfail >= 1 && unsuccess >= maxfail)
    {
      goto LABEL_283;
    }

    if (demand)
    {
      demand_discard();
    }
  }

  sys_publish_remoteaddress(remoteaddress);
  v36 = new_phase(2);
  v37 = connect_started_notify;
  if (connect_started_notify)
  {
    do
    {
      v38 = *v37;
      v36 = (*(v37 + 8))(*(v37 + 16), 0);
      v37 = v38;
    }

    while (v38);
  }

  LOBYTE(v39) = 0;
  v40 = 0;
  link_up_done = 0;
  redialingcount = 0;
  redialingalternate = 0;
  while (1)
  {
    if (v40 || v39)
    {
      v41 = *(the_channel + 72);
      if (v41)
      {
        v41(v36);
        LOBYTE(v39) = redialingalternate;
      }

      if (redialalternate)
      {
        v29 = v39 == 0;
        v42 = &remoteaddress;
        if (!v29)
        {
          v42 = &altremoteaddress;
        }

        sys_publish_remoteaddress(*v42);
        LOBYTE(v39) = redialingalternate;
      }
    }

    else
    {
      LOBYTE(v39) = 0;
    }

    v43 = redialtimer;
    if (redialtimer)
    {
      v44 = redialingcount == 0;
    }

    else
    {
      v44 = 1;
    }

    if (!v44 && v39 == 0)
    {
      if (hasbusystate)
      {
        new_phase(13);
        v43 = redialtimer;
      }

      sleep(v43);
      if (hasbusystate)
      {
        new_phase(2);
      }
    }

    if (kill_link)
    {
      break;
    }

    v36 = (*(the_channel + 24))(&v99);
    dword_10004A99C = v36;
    v39 = redialingalternate;
    if (redialalternate)
    {
      v39 = redialingalternate == 0;
      redialingalternate = redialingalternate == 0;
    }

    if (!v39)
    {
      ++redialingcount;
    }

    if (busycode != -1 && v99 == busycode)
    {
      v40 = redialingcount;
      if (redialingcount <= redialcount && kill_link == 0)
      {
        continue;
      }
    }

    goto LABEL_122;
  }

  v36 = dword_10004A99C;
LABEL_122:
  if ((v36 & 0x80000000) != 0)
  {
    v27 = &unk_100047000;
    if (v36 != -2)
    {
      v53 = connect_fail_notify;
      if (connect_fail_notify)
      {
        v54 = v99;
        do
        {
          v55 = *v53;
          v36 = (*(v53 + 8))(*(v53 + 16), v54);
          v53 = v55;
        }

        while (v55);
      }

      goto LABEL_254;
    }

    if (dword_10004A9A0)
    {
      sub_100010F48(1);
    }

LABEL_248:
    v36 = new_phase(10);
    v85 = disconnect_started_notify;
    v86 = *status;
    if (disconnect_started_notify)
    {
      do
      {
        v87 = *v85;
        v36 = (*(v85 + 8))(*(v85 + 16), v86);
        v85 = v87;
      }

      while (v87);
    }

    v88 = *(the_channel + 32);
    if (v88)
    {
      v36 = v88(v36);
    }

    v89 = disconnect_done_notify;
    v90 = *status;
    if (disconnect_done_notify)
    {
      do
      {
        v91 = *v89;
        v36 = (*(v89 + 8))(*(v89 + 16), v90);
        v89 = v91;
      }

      while (v91);
    }

LABEL_254:
    if (phase != 10)
    {
      v36 = new_phase(10);
    }

    v92 = *(the_channel + 72);
    if (v92)
    {
      v92(v36);
    }

    goto LABEL_258;
  }

  v27 = &unk_100047000;
  if (!link_up_done)
  {
    if (link_up_hook)
    {
      v99 = link_up_hook(v36);
      if (!v99)
      {
        v52 = 5;
LABEL_247:
        *status = v52;
        goto LABEL_248;
      }
    }

    link_up_done = 1;
  }

  v48 = connect_success_notify;
  if (connect_success_notify)
  {
    do
    {
      v49 = *v48;
      (*(v48 + 8))(*(v48 + 16), 0);
      v48 = v49;
    }

    while (v49);
  }

  sys_publish_remoteaddress(remoteaddress);
  dword_1000438E0 = (*(the_channel + 40))(dword_10004A99C);
  if ((dword_1000438E0 & 0x80000000) == 0)
  {
    if (!demand)
    {
      v50 = getpid();
      sub_100010AF0(v50);
      v51 = ifunit;
      if (demand || ifunit < 0)
      {
LABEL_135:
        if (v51 < 0)
        {
          notice("Starting negotiation on %s");
        }

        else
        {
          notice("Connect: %s <--> %s");
        }

        gettimeofday(&stru_10004A9A8, 0);
        script_unsetenv("CONNECT_TIME");
        script_unsetenv("BYTES_SENT");
        script_unsetenv("BYTES_RCVD");
        lcp_lowerup(0);
        add_fd(dword_1000438E0);
        lcp_open(0);
        *status = 10;
        new_phase(4);
        while (phase)
        {
          sub_100010BF8();
          packet = read_packet(&inpacket_buf);
          if ((packet & 0x80000000) != 0)
          {
            goto LABEL_191;
          }

          v57 = packet;
          if (packet)
          {
            if (packet > 3)
            {
              dump_packet("rcvd", &inpacket_buf, packet);
              if (snoop_recv_hook)
              {
                snoop_recv_hook(&inpacket_buf, v57);
              }

              v58 = __rev16(word_1000486FE);
              if (v58 == 49185 || dword_1000478C8 == 9)
              {
                if (v58 == 49703 || (v58 & 0xFFFFFDFF) == 0xC023 || (v58 & 0xFFFFFFFB) == 0xC021 || phase > 5 || !unexpected_network_packet(0, v58))
                {
                  v59 = protocols;
                  if (protocols)
                  {
                    v60 = &off_100043898;
                    do
                    {
                      v61 = *v59;
                      if (v58 == v61 && *(v59 + 80))
                      {
                        (*(v59 + 2))(0, &unk_100048700, (v57 - 4));
                        goto LABEL_191;
                      }

                      if (v58 == (v61 & 0x7FFF) && *(v59 + 80))
                      {
                        v62 = *(v59 + 9);
                        if (v62)
                        {
                          v62(0, &unk_100048700, (v57 - 4));
                          goto LABEL_191;
                        }

                        v63 = *(v59 + 19);
                        if (v63 && v63(0) == 9)
                        {
                          goto LABEL_191;
                        }
                      }

                      v64 = *v60++;
                      v59 = v64;
                    }

                    while (v64);
                  }

                  if (debug)
                  {
                    v65 = protocol_list;
                    if (!protocol_list)
                    {
                      goto LABEL_189;
                    }

                    v66 = &word_1000438F8;
                    while (v58 != v65)
                    {
                      v67 = *v66;
                      v66 += 8;
                      v65 = v67;
                      if (!v67)
                      {
                        goto LABEL_189;
                      }
                    }

                    if (*(v66 - 1))
                    {
                      warning("Unsupported protocol '%s' (0x%x) received");
                    }

                    else
                    {
LABEL_189:
                      warning("Unsupported protocol 0x%x received");
                    }
                  }

                  lcp_sprotrej(0, &inpacket_buf, v57);
                }

                else if (debug >= 2)
                {
                  dbglog("discarding proto 0x%x in phase %d");
                }
              }

              else if (debug >= 2)
              {
                dbglog("Discarded non-LCP packet when LCP not open", v97);
              }
            }

            else if (debug >= 2)
            {
              dbglog("received short packet:%.*B", packet);
            }
          }

          else
          {
            notice("Modem hangup");
            hungup = 1;
            if (*status != 5)
            {
              *status = 16;
            }

            lcp_lowerdown(0);
            link_terminated();
          }

LABEL_191:
          if (stop_link)
          {
            v68 = phase == 8;
          }

          else
          {
            v68 = 0;
          }

          if (v68)
          {
            new_phase(12);
            ppp_hold();
            auth_hold();
            v69 = protocols;
            if (protocols)
            {
              v70 = &off_100043898;
              do
              {
                v71 = *(v69 + 17);
                if (v71)
                {
                  v71(0);
                }

                v72 = *v70++;
                v69 = v72;
              }

              while (v72);
            }

            v73 = stop_notify;
            if (stop_notify)
            {
              do
              {
                v74 = *v73;
                (*(v73 + 8))(*(v73 + 16), 0);
                v73 = v74;
              }

              while (v74);
            }
          }

          if (cont_link)
          {
            v75 = phase == 12;
          }

          else
          {
            v75 = 0;
          }

          if (v75)
          {
            new_phase(8);
            ppp_cont();
            auth_cont();
            v76 = protocols;
            if (protocols)
            {
              v77 = &off_100043898;
              do
              {
                v78 = *(v76 + 18);
                if (v78)
                {
                  v78(0);
                }

                v79 = *v77++;
                v76 = v79;
              }

              while (v79);
            }

            v80 = cont_notify;
            if (cont_notify)
            {
              do
              {
                v81 = *v80;
                (*(v80 + 8))(*(v80 + 16), 0);
                v80 = v81;
              }

              while (v81);
            }
          }

          if (kill_link)
          {
            if (do_modem_hungup)
            {
              v82 = 0;
            }

            else
            {
              v82 = stop_link == 0;
            }

            if (!v82 || phase == 12)
            {
              if (do_modem_hungup)
              {
                notice("Modem hangup");
                do_modem_hungup = 0;
              }

              hungup = 1;
              lcp_lowerdown(0);
              link_terminated();
            }

            lcp_close(0, "User request");
          }

          if (open_ccp_flag && (phase - 7) <= 1)
          {
            dword_100047604 = 2;
            off_100041DD8(0);
          }

          sys_runloop();
        }

        if (link_stats_valid)
        {
          info("Connect time %d.%d minutes.", (link_connect_time + 5) / 0x3Cu, (link_connect_time + 5) / 6u - 10 * ((429496730 * ((link_connect_time + 5) / 6u)) >> 32));
          info("Sent %u bytes, received %u bytes.", dword_1000480D8, link_stats);
        }

        v27 = &unk_100047000;
        v84 = &off_100043000;
        if (!demand)
        {
          if (byte_10004A9B8 && unlink(&byte_10004A9B8) < 0 && *__error() != 2)
          {
            warning("unable to delete pid file %s: %m", &byte_10004A9B8);
          }

          byte_10004A9B8 = 0;
          v84 = &off_100043000;
        }

        remove_fd(*(v84 + 568));
        clean_check();
        (*(the_channel + 48))(dword_10004A99C);
        *(v84 + 568) = -1;
        if (!hungup)
        {
          lcp_lowerdown(0);
        }

        if (!demand)
        {
          script_unsetenv("IFNAME");
        }

        goto LABEL_248;
      }

      set_ifunit(1);
    }

    v51 = ifunit;
    goto LABEL_135;
  }

  v52 = 1;
  goto LABEL_247;
}

uint64_t reopen_log()
{
  openlog("pppd", 9, 120);

  return setlogmask(127);
}

uint64_t new_phase(uint64_t result)
{
  v1 = result;
  phase = result;
  if (new_phase_hook)
  {
    result = new_phase_hook(result);
  }

  v2 = phasechange;
  if (phasechange)
  {
    do
    {
      v3 = *v2;
      result = (*(v2 + 8))(*(v2 + 16), v1);
      v2 = v3;
    }

    while (v3);
  }

  return result;
}

void script_setenv(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = strlen(a2);
  v6 = v5 + v4;
  v7 = malloc_type_malloc(v5 + v4 + 3, 0x100004077774924uLL);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  slprintf(v7, v6 + 2, "%s=%s", a1, a2);
  v9 = script_env;
  if (script_env)
  {
    v10 = *script_env;
    if (*script_env)
    {
      v11 = 0;
      while (strncmp(v10, a1, v4) || v10[v4] != 61)
      {
        v12 = v11 + 1;
        v10 = v9[++v11];
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      free(v10);
      *(script_env + 8 * v11) = v8;
      return;
    }

    v12 = 0;
  }

  else
  {
    v13 = malloc_type_malloc(0x80uLL, 0x10040436913F5uLL);
    script_env = v13;
    if (!v13)
    {
      return;
    }

    v9 = v13;
    v12 = 0;
    s_env_nalloc = 16;
  }

LABEL_12:
  if (v12 + 1 >= s_env_nalloc)
  {
    v14 = malloc_type_realloc(v9, 8 * (v12 + 17), 0x10040436913F5uLL);
    if (!v14)
    {
      return;
    }

    v9 = v14;
    script_env = v14;
    s_env_nalloc = v12 + 17;
  }

  v9[v12] = v8;
  *(script_env + 8 * (v12 + 1)) = 0;
}

void die(uint64_t a1)
{
  v1 = a1;
  sub_100011970();
  notify(exitnotify, v1);
  sys_log(6u, "Exit.");
  exit(v1);
}

uint64_t ***notify(uint64_t ***result, int a2)
{
  if (result)
  {
    v2 = a2;
    do
    {
      v3 = *result;
      (result[1])(result[2], v2);
      result = v3;
    }

    while (v3);
  }

  return result;
}

void detach()
{
  if (!detached)
  {
    if (pipe(v5) == -1)
    {
      *v5 = -1;
    }

    v0 = fork();
    if (v0 < 0)
    {
      error("Couldn't detach (fork failed: %m)");
      die(1);
    }

    if (v0)
    {
      v4 = v0;
      v2 = pidchange;
      if (pidchange)
      {
        do
        {
          v3 = *v2;
          (*(v2 + 8))(*(v2 + 16), v4);
          v2 = v3;
        }

        while (v3);
      }

      if (byte_10004A9B8)
      {
        sub_1000117E8(v4);
      }

      if (byte_10004ADC8)
      {
        sub_100010AF0(v4);
      }

      exit(0);
    }

    setsid();
    chdir("/");
    dup2(dword_10004A990, 0);
    dup2(dword_10004A990, 1);
    dup2(dword_10004A990, 2);
    detached = 1;
    if (log_default)
    {
      log_to_fd = -1;
    }

    v1 = getpid();
    slprintf(v6, 16, "%d", v1);
    script_setenv("PPPD_PID", v6);
    close(v5[1]);
    complete_read(v5[0], v6, 1uLL);
    close(v5[0]);
    sys_reinit();
  }
}

uint64_t sub_100010610()
{
  *&v2.sa_mask = 1074675715;
  v2.__sigaction_u.__sa_handler = sub_100011658;
  if (sigaction(1, &v2, 0) < 0)
  {
    v1 = 1;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_100011720;
  if (sigaction(2, &v2, 0) < 0)
  {
    v1 = 2;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_100011720;
  if (sigaction(15, &v2, 0) < 0)
  {
    v1 = 15;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_100012424;
  if (sigaction(20, &v2, 0) < 0)
  {
    v1 = 20;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_10001248C;
  if (sigaction(18, &v2, 0) < 0)
  {
    v1 = 18;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_100012550;
  if (sigaction(19, &v2, 0) < 0)
  {
    v1 = 19;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_1000125E0;
  if (sigaction(30, &v2, 0) < 0)
  {
    v1 = 30;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_10001265C;
  if (sigaction(31, &v2, 0) < 0)
  {
    v1 = 31;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(6, &v2, 0) < 0)
  {
    v1 = 6;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(14, &v2, 0) < 0)
  {
    v1 = 14;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(8, &v2, 0) < 0)
  {
    v1 = 8;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(4, &v2, 0) < 0)
  {
    v1 = 4;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(13, &v2, 0) < 0)
  {
    v1 = 13;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(3, &v2, 0) < 0)
  {
    v1 = 3;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(11, &v2, 0) < 0)
  {
    v1 = 11;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(10, &v2, 0) < 0)
  {
    v1 = 10;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(7, &v2, 0) < 0)
  {
    v1 = 7;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(27, &v2, 0) < 0)
  {
    v1 = 27;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(12, &v2, 0) < 0)
  {
    v1 = 12;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(5, &v2, 0) < 0)
  {
    v1 = 5;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(26, &v2, 0) < 0)
  {
    v1 = 26;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(24, &v2, 0) < 0)
  {
    v1 = 24;
    goto LABEL_48;
  }

  v2.__sigaction_u.__sa_handler = sub_1000126C4;
  result = sigaction(25, &v2, 0);
  if ((result & 0x80000000) != 0)
  {
    v1 = 25;
LABEL_48:
    fatal("Couldn't establish signal handler (%d): %m", v1);
  }

  return result;
}

void set_ifunit(int a1)
{
  info("Using interface %s%d", "ppp", ifunit);
  slprintf(&ifname, 32, "%s%d", "ppp", ifunit);
  script_setenv("IFNAME", &ifname);
  if (a1)
  {
    v2 = getpid();
    sub_1000117E8(v2);
    v3 = getpid();

    sub_100010AF0(v3);
  }
}

void sub_100010AF0(uint64_t result)
{
  if (linkname)
  {
    v1 = result;
    script_setenv("LINKNAME", &linkname);
    slprintf(&byte_10004ADC8, 1024, "%sppp-%s.pid", "/var/run/", &linkname);
    v2 = fopen(&byte_10004ADC8, "w");
    if (v2)
    {
      v3 = v2;
      fprintf(v2, "%d\n", v1);
      if (ifname)
      {
        fprintf(v3, "%s\n", &ifname);
      }

      fclose(v3);
    }

    else
    {
      error("Failed to create pid file %s: %m", &byte_10004ADC8);
      byte_10004ADC8 = 0;
    }
  }
}

void sub_100010BF8()
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  open_ccp_flag = 0;
  kill_link = 0;
  cont_link = 0;
  stop_link = 0;
  if (!sigsetjmp(dword_10004B1E0, 1))
  {
    sigprocmask(1, &v11, 0);
    if (got_sighup || got_sigterm || got_sigusr2 || (byte_10004B2A4 & 1) != 0 || got_sigtstp || got_sigcont)
    {
      sigprocmask(2, &v11, 0);
    }

    else
    {
      byte_10004A994 = 1;
      sigprocmask(2, &v11, 0);
      if (qword_10004B1D8)
      {
        getabsolutetime(&qword_10004B1C8);
        v0 = *qword_10004B1D8 - qword_10004B1C8;
        v12 = v0;
        v1 = v0;
        v2 = *(qword_10004B1D8 + 8) - dword_10004B1D0;
        LODWORD(v13) = v2;
        if (v2 < 0)
        {
          LODWORD(v13) = v2 + 1000000;
          v12 = v0 - 1;
          v1 = v0 - 1;
        }

        if (v1 < 0)
        {
          LODWORD(v13) = 0;
          v12 = 0;
        }

        v3 = &v12;
      }

      else
      {
        v3 = 0;
      }

      v5.n128_f64[0] = wait_input(v3);
      if (wait_input_hook)
      {
        v4 = wait_input_hook(v4);
      }

      v6 = *(the_channel + 88);
      if (v6)
      {
        v6(v4, v5);
      }
    }
  }

  if (controlfd != -1 && is_ready_fd(controlfd))
  {
    ppp_control();
  }

  byte_10004A994 = 0;
  for (i = qword_10004B1D8; qword_10004B1D8; i = qword_10004B1D8)
  {
    v8.n128_f64[0] = getabsolutetime(&qword_10004B1C8);
    if (v9 < 0)
    {
      fatal("Failed to get time of day: %m", v8.n128_f64[0]);
    }

    if (*i >= qword_10004B1C8 && (*i != qword_10004B1C8 || i[2] > dword_10004B1D0))
    {
      break;
    }

    v10 = *(i + 3);
    qword_10004B1D8 = *(i + 4);
    v10(*(i + 2), v8);
    free(i);
  }

  if (got_sigtstp)
  {
    info("Stopping on signal %d.", got_sigtstp);
    stop_link = 1;
    got_sigtstp = 0;
  }

  if (got_sigcont)
  {
    info("Resuming on signal %d.", got_sigcont);
    cont_link = 1;
    got_sigcont = 0;
  }

  if (got_sighup)
  {
    info("Hangup (SIGHUP)");
    kill_link = 1;
    got_sighup = 0;
    if (*status != 16)
    {
      *status = 5;
    }
  }

  if (got_sigterm)
  {
    info("Terminating on signal %d.", got_sigterm);
    kill_link = 1;
    persist = 0;
    *status = 5;
    got_sigterm = 0;
  }

  if (byte_10004B2A4 == 1)
  {
    sub_10001117C(0);
    byte_10004B2A4 = 0;
  }

  if (got_sigusr2)
  {
    open_ccp_flag = 1;
    got_sigusr2 = 0;
  }
}

uint64_t sub_100010F48(int a1)
{
  v3.__sigaction_u.__sa_handler = 0;
  *&v3.sa_mask = 0;
  v4.__sigaction_u.__sa_handler = 1;
  *&v4.sa_mask = 0;
  sigaction(a1, &v4, &v3);
  kill(0, a1);
  return sigaction(a1, &v3, 0);
}

void script_unsetenv(const char *a1)
{
  v2 = strlen(a1);
  if (script_env)
  {
    v3 = *script_env;
    if (*script_env)
    {
      v4 = 0;
      v5 = v2;
      v6 = script_env + 8;
      while (strncmp(v3, a1, v5) || v3[v5] != 61)
      {
        v3 = *(v6 + v4);
        v4 += 8;
        if (!v3)
        {
          return;
        }
      }

      free(v3);
      do
      {
        v7 = *(script_env + v4 + 8);
        *(script_env + v4) = v7;
        v4 += 8;
      }

      while (v7);
    }
  }
}

void timeout(int a1)
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = *&a1;
  v8 = malloc_type_malloc(0x28uLL, 0x10A004043506912uLL);
  if (!v8)
  {
    fatal("Out of memory in timeout()!");
  }

  v9 = v8;
  v8[2] = v6;
  v8[3] = v7;
  getabsolutetime(&qword_10004B1C8);
  v10 = qword_10004B1C8 + v5;
  *v9 = v10;
  v11 = dword_10004B1D0 + v4;
  v9[2] = dword_10004B1D0 + v4;
  if (v11 > 999999)
  {
    v10 += v11 / 0xF4240uLL;
    *v9 = v10;
    v11 %= 0xF4240u;
    v9[2] = v11;
  }

  v12 = &qword_10004B1D8;
  v13 = qword_10004B1D8;
  if (qword_10004B1D8)
  {
    v14 = *qword_10004B1D8;
    if (v10 >= *qword_10004B1D8)
    {
      v15 = qword_10004B1D8;
      while (v10 != v14 || v11 >= *(v15 + 8))
      {
        v13 = *(v15 + 32);
        v12 = (v15 + 32);
        if (v13)
        {
          v14 = *v13;
          v15 = *(v15 + 32);
          if (v10 >= *v13)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v13 = v15;
    }
  }

LABEL_13:
  *(v9 + 4) = v13;
  *v12 = v9;
}

uint64_t sub_10001117C(int a1)
{
  if (!dword_10004ADB8)
  {
    return 0;
  }

  v12 = 0;
  v1 = a1 == 0;
  v2 = waitpid(-1, &v12, v1);
  if ((v2 - 1) <= 0xFFFFFFFD)
  {
    while (1)
    {
      v3 = qword_10004ADC0;
      if (!qword_10004ADC0)
      {
        goto LABEL_9;
      }

      v4 = &qword_10004ADC0;
      if (*qword_10004ADC0 != v2)
      {
        break;
      }

LABEL_8:
      v6 = 0;
      --dword_10004ADB8;
      *v4 = v3[4];
LABEL_10:
      if ((v12 & 0x7F) != 0 && (v12 & 0x7F) != 0x7F)
      {
        v9 = "??";
        if ((v6 & 1) == 0)
        {
          v9 = v3[1];
        }

        warning("Child process %s (pid %d) terminated with signal %d", v9, v2, v12 & 0x7F);
        if (v6)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (debug)
        {
          v7 = "??";
          if ((v6 & 1) == 0)
          {
            v7 = v3[1];
          }

          if ((v12 & 0x7F) != 0)
          {
            v8 = v12;
          }

          else
          {
            v8 = BYTE1(v12);
          }

          dbglog("Script %s finished (pid %d), status = 0x%x", v7, v2, v8);
        }

        if (v6)
        {
          goto LABEL_27;
        }
      }

      v10 = v3[2];
      if (v10)
      {
        v10(v3[3]);
      }

      free(v3);
LABEL_27:
      v2 = waitpid(-1, &v12, v1);
      if ((v2 - 1) >= 0xFFFFFFFE)
      {
        goto LABEL_28;
      }
    }

    while (1)
    {
      v5 = v3;
      v3 = v3[4];
      if (!v3)
      {
        break;
      }

      if (*v3 == v2)
      {
        v4 = v5 + 4;
        goto LABEL_8;
      }
    }

LABEL_9:
    v6 = 1;
    goto LABEL_10;
  }

LABEL_28:
  if (v2 != -1)
  {
    return 0;
  }

  if (*__error() != 10)
  {
    if (*__error() != 4)
    {
      error("Error waiting for child process: %m");
    }

    return 0;
  }

  return 0xFFFFFFFFLL;
}

void ppp_control()
{
  v0 = fcntl(controlfd, 3);
  if (v0 == -1 || (v1 = v0, fcntl(controlfd, 4, v0 | 4) == -1))
  {

    warning("Couldn't set controlfd to nonblock: %m");
  }

  else
  {
    v2 = getc(controlfile);
    if (v2 == 91)
    {
      ungetc(91, controlfile);
    }

    fcntl(controlfd, 4, v1);
    if (feof(controlfile))
    {
      goto LABEL_37;
    }

    clearerr(controlfile);
    if (v2 != 91)
    {
      return;
    }

    v9 = 0;
    if (!getword(controlfile, v10, &v9, "controller"))
    {
LABEL_37:
      die(1);
    }

    while (*v10 != 0x534E4F4954504F5BLL || *&v10[8] != 93)
    {
      if (*v10 == 0x4E4E4F435349445BLL && *&v10[5] == 0x5D5443454E4E4FLL)
      {
        error("[DISCONNECT]");
        sub_100011658(1);
      }

      else if (*v10 == 0x414E494D5245545BLL && *&v10[8] == 6112596)
      {
        error("[TERMINATE]");
        sub_100011720(15);
      }

      else
      {
        if (*v10 == 0x4C4C4154534E495BLL && *&v10[8] == 93)
        {
          sys_install();
          return;
        }

        if (*v10 == 0x4154534E494E555BLL && *&v10[8] == 6114380)
        {
          sys_uninstall();
          return;
        }

        if (*v10 == 1347372379 && *&v10[4] == 93)
        {
          goto LABEL_37;
        }
      }

      if (!getword(controlfile, v10, &v9, "controller"))
      {
        goto LABEL_37;
      }
    }

    options_from_controller();
    if (dump_options)
    {
      init_pr_log(0, 6);
      print_options(pr_log, 0);
      end_pr_log();
    }
  }
}

uint64_t sub_100011658(uint64_t result)
{
  v1 = result;
  v2 = qword_10004A988;
  if (!qword_10004A988 || (v3 = pthread_self(), result = pthread_equal(v2, v3), result))
  {
    got_sighup = v1;
    kill_link = 1;
    if (dword_10004A9A0)
    {
      result = sub_100010F48(v1);
    }

    v4 = sigreceived;
    if (sigreceived)
    {
      do
      {
        v5 = *v4;
        result = (*(v4 + 8))(*(v4 + 16), v1);
        v4 = v5;
      }

      while (v5);
    }

    if (!hungup)
    {
      *status = 5;
    }

    if (byte_10004A994 == 1)
    {
      siglongjmp(dword_10004B1E0, 1);
    }
  }

  return result;
}

uint64_t sub_100011720(uint64_t result)
{
  v1 = result;
  v2 = qword_10004A988;
  if (!qword_10004A988 || (v3 = pthread_self(), result = pthread_equal(v2, v3), result))
  {
    got_sigterm = v1;
    kill_link = 1;
    persist = 0;
    *status = 5;
    if (dword_10004A9A0)
    {
      result = sub_100010F48(v1);
    }

    v4 = sigreceived;
    if (sigreceived)
    {
      do
      {
        v5 = *v4;
        result = (*(v4 + 8))(*(v4 + 16), v1);
        v4 = v5;
      }

      while (v5);
    }

    if (byte_10004A994 == 1)
    {
      siglongjmp(dword_10004B1E0, 1);
    }
  }

  return result;
}

void sub_1000117E8(int a1)
{
  slprintf(&byte_10004A9B8, 1024, "%s%s.pid", "/var/run/", &ifname);
  v2 = fopen(&byte_10004A9B8, "w");
  if (v2)
  {
    v3 = v2;
    fprintf(v2, "%d\n", a1);

    fclose(v3);
  }

  else
  {
    error("Failed to create pid file %s: %m", &byte_10004A9B8);
    byte_10004A9B8 = 0;
  }
}

uint64_t ppp_send_config(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(the_channel + 56);
  if (!v5)
  {
    return 0;
  }

  v6 = error_count;
  v5(a2, a3, a4, a5);
  if (error_count == v6)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ppp_recv_config(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(the_channel + 64);
  if (!v5)
  {
    return 0;
  }

  v6 = error_count;
  v5(a2, a3, a4, a5);
  if (error_count == v6)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_100011970()
{
  v0 = sys_cleanup();
  if ((dword_1000438E0 & 0x80000000) == 0)
  {
    v0 = (*(the_channel + 48))(dword_10004A99C);
  }

  v1 = *(the_channel + 72);
  if (v1)
  {
    v1(v0);
  }

  if (byte_10004A9B8 && unlink(&byte_10004A9B8) < 0 && *__error() != 2)
  {
    warning("unable to delete pid file %s: %m", &byte_10004A9B8);
  }

  byte_10004A9B8 = 0;
  if (byte_10004ADC8 && unlink(&byte_10004ADC8) < 0 && *__error() != 2)
  {
    warning("unable to delete pid file %s: %m", &byte_10004ADC8);
  }

  byte_10004ADC8 = 0;
}

void update_link_stats(uint64_t a1)
{
  if (get_ppp_stats(a1, &link_stats))
  {
    v1.tv_sec = 0;
    *&v1.tv_usec = 0;
    if ((gettimeofday(&v1, 0) & 0x80000000) == 0)
    {
      link_connect_time = LODWORD(v1.tv_sec) - LODWORD(stru_10004A9A8.tv_sec);
      link_stats_valid = 1;
      slprintf(v2, 32, "%u", LODWORD(v1.tv_sec) - LODWORD(stru_10004A9A8.tv_sec));
      script_setenv("CONNECT_TIME", v2);
      slprintf(v2, 32, "%u", dword_1000480D8);
      script_setenv("BYTES_SENT", v2);
      slprintf(v2, 32, "%u", link_stats);
      script_setenv("BYTES_RCVD", v2);
    }
  }
}

void untimeout(uint64_t a1, uint64_t a2)
{
  v2 = qword_10004B1D8;
  if (qword_10004B1D8)
  {
    v3 = &qword_10004B1D8;
    while (v2[3] != a1 || v2[2] != a2)
    {
      v3 = v2 + 4;
      v2 = v2[4];
      if (!v2)
      {
        return;
      }
    }

    *v3 = v2[4];
    free(v2);
  }
}

uint64_t safe_fork()
{
  if (pipe(v7) == -1)
  {
    *v7 = -1;
  }

  v0 = fork();
  if ((v0 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = v0;
  if (v0)
  {
    close(v7[1]);
    complete_read(v7[0], &v6, 1uLL);
    v2 = v7[0];
  }

  else
  {
    sys_close();
    options_close();
    v3 = fork_notifier;
    if (fork_notifier)
    {
      do
      {
        v4 = *v3;
        (*(v3 + 8))(*(v3 + 16), 0);
        v3 = v4;
      }

      while (v4);
    }

    close(v7[0]);
    v1 = 0;
    v2 = v7[1];
  }

  close(v2);
  return v1;
}

uint64_t device_script(const char *a1, int a2, int a3, int a4, uid_t a5, const void *a6, int a7)
{
  v29 = -1;
  *__fd = -1;
  if (a6 && pipe(__fd) == -1)
  {
    error("Failed to setup pipe with device script: %m");
    return 0xFFFFFFFFLL;
  }

  ++dword_10004A9A0;
  v14 = safe_fork();
  if (v14 < 0)
  {
    --dword_10004A9A0;
    error("Failed to create child process: %m");
    return 0xFFFFFFFFLL;
  }

  v15 = v14;
  if (!v14)
  {
    v17 = a3;
    do
    {
      v18 = dup(a2);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_23;
      }
    }

    while (v18 < 3);
    close(v18);
LABEL_23:
    v19 = log_to_fd;
    v20 = a2;
    v21 = dup(a2);
    v22 = dup(v17);
    if (log_to_fd < 0)
    {
      v23 = open("/etc/ppp/connect-errors", 521, 384);
    }

    else
    {
      v23 = dup(log_to_fd);
    }

    v24 = v23;
    close(v20);
    close(v17);
    close(v19);
    close(0);
    close(1);
    v25 = close(2);
    v26 = *(the_channel + 80);
    if (v26)
    {
      v26(v25);
    }

    closelog();
    close(dword_10004A990);
    if (__fd[1] != -1)
    {
      close(__fd[1]);
      __fd[1] = -1;
    }

    dup2(v21, 0);
    close(v21);
    dup2(v22, 1);
    close(v22);
    if ((v24 & 0x80000000) == 0)
    {
      dup2(v24, 2);
      close(v24);
    }

    v27 = 3;
    if (__fd[0] != -1)
    {
      dup2(__fd[0], 3);
      close(__fd[0]);
      __fd[0] = 3;
      v27 = 4;
    }

    closeallfrom(v27);
    if (a5 == -1)
    {
      a5 = uid;
    }

    setuid(a5);
    if (getuid() == a5)
    {
      v28 = getgid();
      setgid(v28);
      execle("/bin/sh", "sh", "-c", a1, 0, 0);
      error("could not exec /bin/sh: %m");
      exit(99);
    }

    error("setuid failed");
    exit(1);
  }

  if (__fd[0] != -1)
  {
    close(__fd[0]);
    __fd[0] = -1;
  }

  if (__fd[1] != -1)
  {
    write(__fd[1], a6, a7);
    close(__fd[1]);
    __fd[1] = -1;
  }

  if (a4)
  {
    record_child(v15, a1, 0, 0);
    return 0;
  }

  else
  {
    while (waitpid(v15, &v29, 0) < 0)
    {
      if (*__error() != 4)
      {
        fatal("error waiting for (dis)connection process: %m");
      }
    }

    --dword_10004A9A0;
    return BYTE1(v29);
  }
}

void record_child(int a1, const char *a2, uint64_t a3, uint64_t a4)
{
  ++dword_10004ADB8;
  v8 = malloc_type_malloc(0x28uLL, 0x10B00401A278E7DuLL);
  if (v8)
  {
    *v8 = a1;
    v8[1] = a2;
    v8[2] = a3;
    v9 = qword_10004ADC0;
    v8[3] = a4;
    v8[4] = v9;
    qword_10004ADC0 = v8;
  }

  else
  {
    warning("losing track of %s process", a2);
  }
}

uint64_t run_program(const char *a1, char *const *a2, int a3, uint64_t a4, uint64_t a5)
{
  memset(&v16, 0, sizeof(v16));
  *__error() = 22;
  if (stat(a1, &v16) < 0 || ((v16.st_mode & 0xF000) == 0x8000 ? (v10 = (v16.st_mode & 0x49) == 0) : (v10 = 1), v10))
  {
    if (a3 || *__error() != 2)
    {
      warning("Can't execute %s: %m", a1);
    }

    return 0;
  }

  else
  {
    v13 = safe_fork();
    if (v13 == -1)
    {
      error("Failed to create child process for %s: %m", a1);
      return 0xFFFFFFFFLL;
    }

    else
    {
      v11 = v13;
      if (!v13)
      {
        setsid();
        umask(0x3Fu);
        chdir("/");
        setuid(0);
        v14 = getegid();
        setgid(v14);
        closelog();
        v15 = *(the_channel + 80);
        if (v15)
        {
          v15();
        }

        dup2(dword_10004A990, 0);
        dup2(dword_10004A990, 1);
        dup2(dword_10004A990, 2);
        close(dword_10004A990);
        closeallfrom(3);
        if (setpriority(0, 0, 0) < 0)
        {
          warning("can't reset priority to 0: %m");
        }

        execve(a1, a2, script_env);
        if (a3 || *__error() != 2)
        {
          reopen_log();
          sys_log(3u, "Can't execute %s: %m", a1);
          closelog();
        }

        _exit(-1);
      }

      if (debug)
      {
        dbglog("Script %s started (pid %d)", a1, v13);
      }

      record_child(v11, a1, a4, a5);
    }
  }

  return v11;
}

void *add_notifier(void *a1, uint64_t a2, uint64_t a3)
{
  result = malloc_type_malloc(0x18uLL, 0xA00402214FCE6uLL);
  if (!result)
  {
    novm("notifier struct");
  }

  *result = *a1;
  result[1] = a2;
  result[2] = a3;
  *a1 = result;
  return result;
}

void *add_notifier_last(void **a1, uint64_t a2, uint64_t a3)
{
  result = malloc_type_malloc(0x18uLL, 0xA00402214FCE6uLL);
  if (!result)
  {
    novm("notifier struct");
  }

  *result = 0;
  result[1] = a2;
  result[2] = a3;
  for (i = *a1; i; i = *i)
  {
    a1 = i;
  }

  *a1 = result;
  return result;
}

void remove_notifier(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1)
  {
    while (1)
    {
      v4 = v3;
      if (v3[1] == a2 && v3[2] == a3)
      {
        break;
      }

      v3 = *v3;
      a1 = v4;
      if (!*v4)
      {
        return;
      }
    }

    *a1 = *v3;
    free(v3);
  }
}

uint64_t ***notify_with_ptr(uint64_t ***result, uint64_t a2)
{
  if (result)
  {
    do
    {
      v3 = *result;
      (result[1])(result[2], a2);
      result = v3;
    }

    while (v3);
  }

  return result;
}

void sub_100012424()
{
  v0 = qword_10004A988;
  if (!qword_10004A988 || (v1 = pthread_self(), pthread_equal(v0, v1)))
  {
    byte_10004B2A4 = 1;
    if (byte_10004A994 == 1)
    {
      siglongjmp(dword_10004B1E0, 1);
    }
  }
}

uint64_t sub_10001248C(uint64_t result)
{
  v1 = result;
  v2 = qword_10004A988;
  if (!qword_10004A988 || (v3 = pthread_self(), result = pthread_equal(v2, v3), result))
  {
    got_sigtstp = v1;
    if ((phase | 4) != 0xC)
    {
      got_sighup = 1;
      if (dword_10004A9A0)
      {
        result = sub_100010F48(v1);
      }
    }

    v4 = sigreceived;
    if (sigreceived)
    {
      do
      {
        v5 = *v4;
        result = (*(v4 + 8))(*(v4 + 16), v1);
        v4 = v5;
      }

      while (v5);
    }

    if (byte_10004A994 == 1)
    {
      siglongjmp(dword_10004B1E0, 1);
    }
  }

  return result;
}

uint64_t sub_100012550(uint64_t result)
{
  v1 = result;
  v2 = qword_10004A988;
  if (!qword_10004A988 || (v3 = pthread_self(), result = pthread_equal(v2, v3), result))
  {
    got_sigcont = v1;
    v4 = sigreceived;
    if (sigreceived)
    {
      do
      {
        v5 = *v4;
        result = (*(v4 + 8))(*(v4 + 16), v1);
        v4 = v5;
      }

      while (v5);
    }

    if (byte_10004A994 == 1)
    {
      siglongjmp(dword_10004B1E0, 1);
    }
  }

  return result;
}

uint64_t sub_1000125E0()
{
  v0 = qword_10004A988;
  if (!qword_10004A988 || (v1 = pthread_self(), result = pthread_equal(v0, v1), result))
  {
    v3 = debug == 0;
    debug = debug == 0;
    if (v3)
    {
      v4 = 255;
    }

    else
    {
      v4 = 31;
    }

    return setlogmask(v4);
  }

  return result;
}

void sub_10001265C()
{
  v0 = qword_10004A988;
  if (!qword_10004A988 || (v1 = pthread_self(), pthread_equal(v0, v1)))
  {
    got_sigusr2 = 1;
    if (byte_10004A994 == 1)
    {
      siglongjmp(dword_10004B1E0, 1);
    }
  }
}

uint64_t sub_1000126C4(int a1)
{
  v2 = qword_10004A988;
  if (!qword_10004A988 || (v3 = pthread_self(), result = pthread_equal(v2, v3), result))
  {
    if (byte_10004B2A8 == 1)
    {
      _exit(127);
    }

    byte_10004B2A8 = 1;
    error("Fatal signal %d", a1);
    if (dword_10004A9A0)
    {
      sub_100010F48(15);
    }

    notify(sigreceived, a1);
    die(127);
  }

  return result;
}

uint64_t sub_100012768(const char **a1)
{
  gethostname(hostname, 0x100uLL);
  if (**a1)
  {
    if (**a1 != 46)
    {
      v2 = strlen(hostname);
      strncat(hostname, ".", 255 - v2);
    }

    v3 = strlen(hostname);
    domain = &hostname[v3];
    strncat(hostname, *a1, 255 - v3);
  }

  byte_100047C07 = 0;
  return 1;
}

uint64_t sub_100012818(const char **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (!**a1 || v2 == 47)
  {
LABEL_3:
    option_error("call option value may not contain .. or start with /");
    return 0;
  }

  v4 = *a1;
  while (v2 == 46)
  {
    if (v4[1] == 46 && (!v4[2] || v4[2] == 47))
    {
      goto LABEL_3;
    }

    do
    {
LABEL_11:
      if (v2 == 47)
      {
        break;
      }

      v5 = *++v4;
      v2 = v5;
    }

    while (v5);
    if (v2 == 47)
    {
      ++v4;
    }

    v2 = *v4;
  }

  if (v2)
  {
    goto LABEL_11;
  }

  v6 = strlen(*a1) + 16;
  v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
  if (!v7)
  {
    novm("call file name");
  }

  v8 = v7;
  slprintf(v7, v6, "%s%s", "/etc/ppp/peers/", v1);
  free(v8);
  return 1;
}

uint64_t sub_100012920()
{
  if (phase == 1)
  {
    fprintf(__stderrp, "pppd version %s (Apple version %s)\n", "2.4.2", "884");
    exit(0);
  }

  return 0;
}

uint64_t sub_100012980(uint64_t a1, uint64_t a2)
{
  if (phase == 1)
  {
    sub_10001312C();
    exit(0);
  }

  return 0;
}

uint64_t sub_1000129B4(const char **a1)
{
  if (!privileged_option)
  {
    v2 = getuid();
    seteuid(v2);
  }

  v3 = open(*a1, 2569, 420);
  if (v3 < 0)
  {
    if (*__error() == 17)
    {
      v4 = open(*a1, 9, v14);
      goto LABEL_21;
    }

    if (privileged_option)
    {
      v5 = dirname(*a1);
      sys_log(4u, "Warning: Creating directory for log file = %s\n", *a1);
      v6 = umask(0);
      v7 = (strlen(v5) + 1);
      v8 = malloc_type_malloc(v7, 0x88BFC8EEuLL);
      if (!v8)
      {
        goto LABEL_20;
      }

      v9 = v8;
      memset(&v15, 0, sizeof(v15));
      strlcpy(v8, v5, v7);
      for (i = *v9 == 47; ; ++i)
      {
        if (v9[i])
        {
          if (v9[i] != 47)
          {
            continue;
          }

          v9[i] = 0;
          v11 = 1;
        }

        else
        {
          v11 = 0;
        }

        if (!mkdir(v9, 0x1EDu) || (*__error() == 17 || *__error() == 21) && (stat(v9, &v15) & 0x80000000) == 0)
        {
          v9[i] = 47;
          if (v11)
          {
            continue;
          }
        }

        free(v9);
        umask(v6);
LABEL_20:
        v4 = open(*a1, 2569, 420);
LABEL_21:
        v3 = v4;
        break;
      }
    }
  }

  v12 = *__error();
  if (!privileged_option)
  {
    seteuid(0);
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_28:
    *__error() = v12;
    option_error("Can't open log file %s: %m", *a1);
    return 1;
  }

  if (v3 < 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  __strlcpy_chk();
  if ((dword_100044F20 & 0x80000000) == 0)
  {
    close(dword_100044F20);
  }

  dword_100044F20 = v3;
  log_to_fd = v3;
  log_default = 0;
  return 1;
}

uint64_t sub_100012BEC(const char **a1)
{
  v1 = *a1;
  if (sys_loadplugin(*a1))
  {
    option_error("Couldn't load plugin %s", v1);
  }

  return 1;
}

uint64_t sub_100012C34(const char **a1)
{
  v1 = *a1;
  if (!sys_loadplugin(*a1))
  {
    return 1;
  }

  option_error("Couldn't load plugin %s", v1);
  return 0;
}

uint64_t sub_100012C84()
{
  if (sys_check_controller())
  {
    v0 = dup(0);
    controlfd = v0;
    if (v0 == -1)
    {
      option_error("Can't duplicate control file descripor: %m");
    }

    else
    {
      controlfile = fdopen(v0, "r");
      if (controlfile)
      {
        statusfd = dup(1);
        if (statusfd != -1)
        {
          if (log_default)
          {
            log_to_fd = -1;
            log_default = 0;
          }

          result = 1;
          controlled = 1;
          return result;
        }

        option_error("Can't duplicate status file descripor: %m");
      }

      else
      {
        close(controlfd);
        option_error("Can't open control file descripor: %m");
      }
    }
  }

  else
  {
    option_error("Can't verify the controller started the connection");
  }

  if (controlfile)
  {
    fclose(controlfile);
    controlfile = 0;
    controlfd = -1;
  }

  if (statusfd == -1)
  {
    return 0;
  }

  close(statusfd);
  result = 0;
  statusfd = -1;
  return result;
}

uint64_t parse_args(int a1, const char **a2)
{
  privileged_option = privileged;
  option_source = "command line";
  option_priority = 2;
  v2 = 1;
  if (a1 >= 1)
  {
    v4 = a1;
    while (1)
    {
      v7 = *a2;
      v5 = a2 + 1;
      v6 = v7;
      v8 = sub_100012EE0(v7);
      if (!v8)
      {
        break;
      }

      v9 = (*(v8 + 2) | 2) != 2 && ((*(v8 + 8) >> 9) & 1) == 0;
      if (v4 <= v9)
      {
        option_error("too few parameters for option %s", v6);
        return 0;
      }

      if (!sub_100013190(v8, v6, v5))
      {
        return 0;
      }

      a2 = &v5[v9];
      v10 = __OFADD__(v4, ~v9);
      v4 += ~v9;
      if ((v4 < 0) ^ v10 | (v4 == 0))
      {
        return 1;
      }
    }

    option_error("unrecognized option '%s'", v6);
    if (phase == 1)
    {
      fprintf(__stderrp, "pppd version %s\nUsage: %s [ options ], where options are:\n\t<device>\tCommunicate over the named device\n\t<speed>\t\tSet the baud rate to <speed>\n\t<loc>:<rem>\tSet the local and/or remote interface IP\n\t\t\taddresses.  Either one may be omitted.\n\tasyncmap <n>\tSet the desired async map to hex <n>\n\tauth\t\tRequire authentication from peer\n        connect <p>     Invoke shell command <p> to set up the serial line\n\tcrtscts\t\tUse hardware RTS/CTS flow control\n\tdefaultroute\tAdd default route through interface\n\tfile <f>\tTake options from file <f>\n\tmodem\t\tUse modem control lines\n\tmru <n>\t\tSet MRU value to <n> for negotiation\nSee pppd(8) for more options.\n", "2.4.2", progname);
    }

    return 0;
  }

  return v2;
}

char **sub_100012EE0(const char *a1)
{
  v2 = 0;
  for (i = 1; ; i = 0)
  {
    v4 = i;
    if (general_options)
    {
      break;
    }

LABEL_6:
    if (auth_options)
    {
      v5 = &auth_options;
      while (!sub_100014528(a1, v5, v2))
      {
        v7 = v5[12];
        v5 += 12;
        if (!v7)
        {
          goto LABEL_10;
        }
      }

      return v5;
    }

LABEL_10:
    v8 = qword_10004B6B0;
    if (qword_10004B6B0)
    {
      while (1)
      {
        v5 = *v8;
        if (**v8)
        {
          break;
        }

LABEL_14:
        v8 = *(v8 + 8);
        if (!v8)
        {
          goto LABEL_15;
        }
      }

      while (!sub_100014528(a1, v5, v2))
      {
        v9 = v5[12];
        v5 += 12;
        if (!v9)
        {
          goto LABEL_14;
        }
      }

      return v5;
    }

LABEL_15:
    v5 = *the_channel;
    if (**the_channel)
    {
      while (!sub_100014528(a1, v5, v2))
      {
        v10 = v5[12];
        v5 += 12;
        if (!v10)
        {
          goto LABEL_18;
        }
      }

      return v5;
    }

LABEL_18:
    v11 = protocols;
    if (protocols)
    {
      v12 = 0;
      while (1)
      {
        v5 = *(v11 + 13);
        if (v5)
        {
          if (*v5)
          {
            break;
          }
        }

LABEL_24:
        v11 = (&protocols)[++v12];
        if (!v11)
        {
          goto LABEL_25;
        }
      }

      while (!sub_100014528(a1, v5, v2))
      {
        v13 = v5[12];
        v5 += 12;
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      return v5;
    }

LABEL_25:
    v2 = 1;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = &general_options;
  while (!sub_100014528(a1, v5, v2))
  {
    v6 = v5[12];
    v5 += 12;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  return v5;
}

void option_error(char *a1, ...)
{
  va_start(va, a1);
  vslprintf(v1, 1024, a1, va);
  if (phase == 1)
  {
    fprintf(__stderrp, "%s: %s\n", progname, v1);
  }

  sys_log(3u, "%s", v1);
}

uint64_t sub_10001312C()
{
  if (phase == 1)
  {
    return fprintf(__stderrp, "pppd version %s\nUsage: %s [ options ], where options are:\n\t<device>\tCommunicate over the named device\n\t<speed>\t\tSet the baud rate to <speed>\n\t<loc>:<rem>\tSet the local and/or remote interface IP\n\t\t\taddresses.  Either one may be omitted.\n\tasyncmap <n>\tSet the desired async map to hex <n>\n\tauth\t\tRequire authentication from peer\n        connect <p>     Invoke shell command <p> to set up the serial line\n\tcrtscts\t\tUse hardware RTS/CTS flow control\n\tdefaultroute\tAdd default route through interface\n\tfile <f>\tTake options from file <f>\n\tmodem\t\tUse modem control lines\n\tmru <n>\t\tSet MRU value to <n> for negotiation\nSee pppd(8) for more options.\n", "2.4.2", progname);
  }

  return result;
}

uint64_t sub_100013190(uint64_t a1, uint64_t a2, const char **a3)
{
  v6 = 0;
  v46 = 0;
  v7 = *(a1 + 8);
  v8 = *a1;
  current_option = *a1;
  v9 = *(a1 + 32);
  do
  {
    v10 = *(a1 + v6 + 32);
    v6 -= 96;
  }

  while ((v10 & 0x100000) != 0);
  if (v7 == 6)
  {
    v11 = &unk_10002F9F2;
  }

  else
  {
    v11 = " option";
  }

  if (((privileged_option != 0) & (v9 >> 25)) != 0)
  {
    v12 = option_priority + 100;
  }

  else
  {
    v12 = option_priority;
  }

  if ((v10 & 0x80000) == 0)
  {
    goto LABEL_10;
  }

  v13 = *(a1 + v6 + 160);
  if (v12 >= v13)
  {
    if (v12 >= 101 && v13 == 2)
    {
      warning("%s%s from %s overrides command line", v8, v11, option_source);
      v9 = *(a1 + 32);
    }

LABEL_10:
    if ((v9 & 0x4000000) != 0 && phase != 1)
    {
      option_error("%s%s cannot be changed after initialization");
      return 0;
    }

    if ((v9 & 0x1000) != 0 && !privileged_option)
    {
      option_error("using the %s%s requires root privilege");
      return 0;
    }

    if ((v9 & 0x800000) != 0 && !**(a1 + 40))
    {
      option_error("%s%s is disabled");
      return 0;
    }

    if ((v9 & 0x8000000) != 0 && devnam_fixed)
    {
      option_error("the %s%s may not be changed in %s");
      return 0;
    }

    v15 = *(a1 + 8);
    if (v15 > 3)
    {
      if (v15 <= 5)
      {
        if (v15 != 4)
        {
          if ((v9 & 0x2000) != 0)
          {
            strlcpy(*(a1 + 16), *a3, *(a1 + 48));
            v30 = *(a1 + 40);
            if (v30 && (*(a1 + 34) & 0x40) != 0)
            {
              strlcpy(v30, *a3, *(a1 + 48));
            }
          }

          else
          {
            v18 = strdup(*a3);
            if (!v18)
            {
              novm("option argument");
            }

            **(a1 + 16) = v18;
          }

          goto LABEL_95;
        }

        if ((v9 & 0x200) != 0)
        {
          v26 = (v9 >> 7) & 0xFFFFFF00 | v9;
        }

        else
        {
          result = sub_10001423C(*a3, &v46, 16);
          if (!result)
          {
            return result;
          }

          v9 = *(a1 + 32);
          v26 = v46;
        }

        v29 = *(a1 + 16);
        if ((v9 & 0x400) != 0)
        {
          v26 |= *v29;
        }

        goto LABEL_88;
      }

      if (v15 == 6)
      {
        result = (*(a1 + 16))(a2, a3, 1);
        if (!result)
        {
          return result;
        }

        goto LABEL_95;
      }

      if (v15 != 7)
      {
        goto LABEL_95;
      }
    }

    else if (v15 >= 2)
    {
      if (v15 == 2)
      {
        **(a1 + 16) = v9;
        v27 = *(a1 + 40);
        if (!v27)
        {
          goto LABEL_95;
        }

        v28 = *(a1 + 32);
        if ((v28 & 0x400000) == 0)
        {
          if ((v28 & 0x1000000) != 0)
          {
            *v27 = 0;
            goto LABEL_95;
          }

          if ((v28 & 0x10000) != 0)
          {
            LOBYTE(v9) = *v27 & ~v9;
          }

          else
          {
            if ((v28 & 0x800) == 0)
            {
              goto LABEL_95;
            }

            LOBYTE(v9) = *v27 | v9;
          }
        }

        *v27 = v9;
      }

      else if (v15 == 3)
      {
        if ((v9 & 0x200) != 0)
        {
          v17 = 0;
        }

        else
        {
          v16 = *a3;
          v47 = 0;
          result = sub_10001423C(v16, &v47, 0);
          if (!result)
          {
            return result;
          }

          v17 = v47;
          v9 = *(a1 + 32);
          if (((v9 & 0x4000) != 0 && v47 < *(a1 + 52) || (v9 & 0x8000) != 0 && v47 > *(a1 + 48)) && ((v9 & 0x10000) == 0 || v47))
          {
            result = v9 >> 14;
            if ((v9 >> 14) > 1u)
            {
              if (result == 2)
              {
                option_error("%s value must be%s <= %d");
              }

              else
              {
                option_error("%s value must be%s between %d and %d");
              }
            }

            else
            {
              if (!(v9 >> 14))
              {
                return result;
              }

              option_error("%s value must be%s >= %d");
            }

            return 0;
          }
        }

        if ((v9 & 0x80) != 0)
        {
          v31 = -256;
        }

        else
        {
          v31 = 0;
        }

        v26 = (v31 & 0xFFFFFF00 | v9) + v17;
        if ((v9 & 0x800) != 0)
        {
          v26 += **(a1 + 16);
        }

        v29 = *(a1 + 16);
        if ((v9 & 0x20000) == 0 || privileged_option)
        {
          goto LABEL_88;
        }

        v32 = *v29;
        if ((v9 & 0x40000) == 0)
        {
          goto LABEL_87;
        }

        if (!v32)
        {
LABEL_88:
          *v29 = v26;
          v33 = *(a1 + 40);
          if (v33 && (*(a1 + 34) & 0x40) != 0)
          {
            *v33 = v26;
          }

          goto LABEL_95;
        }

        if (v26)
        {
LABEL_87:
          if (v26 <= v32)
          {
            goto LABEL_88;
          }
        }

        option_error("%s value cannot be increased");
        return 0;
      }

LABEL_95:
      v34 = *(a1 + 40);
      if (v34)
      {
        v35 = *(a1 + 32);
        if ((v35 & 0x30C10800) == 0)
        {
          *v34 = (v35 & 0x1000000) == 0;
        }
      }

      v36 = a1 + v6;
      if (*(a1 + v6 + 152))
      {
        v37 = *(v36 + 176);
        if (v37)
        {
          v38 = a1 + v6;
          v39 = malloc_type_realloc(v37, 8 * *(a1 + v6 + 184) + 8, 0x10040436913F5uLL);
          if (v39)
          {
            *(v36 + 176) = v39;
            v40 = *(v38 + 184);
            v39[v40] = option_source;
            *(v38 + 184) = v40 + 1;
          }
        }

        else
        {
          v41 = malloc_type_malloc(8uLL, 0x10040436913F5uLL);
          *(v36 + 176) = v41;
          if (!v41)
          {
            novm("option other source");
          }

          *v41 = option_source;
          *(a1 + v6 + 184) = 1;
        }
      }

      else
      {
        *(v36 + 152) = option_source;
      }

      v42 = a1 + v6;
      *(v42 + 160) = v12;
      *(v42 + 162) = -21845 * ((-96 - v6) >> 5);
      if (*(a1 + 8) == 5 && (*(a1 + 34) & 1) != 0)
      {
        v43 = strlen(*a3);
        if (v43 >= 1)
        {
          v44 = 0;
          do
          {
            (*a3)[v44++] = 42;
          }

          while ((v43 & 0x7FFFFFFF) != v44);
        }
      }

      if (phase != 1)
      {
        v45 = *(a1 + 72);
        if (v45)
        {
          v45();
        }
      }

      return 1;
    }

    result = (*(a1 + 16))(a3);
    if (!result)
    {
      return result;
    }

    if (*(a1 + 34))
    {
      v19 = strlen(*a3);
      v20 = malloc_type_malloc(v19 + 25, 0x1070040319640ECuLL);
      if (v20)
      {
        v21 = v20;
        v22 = strlen(*a3);
        strlcpy(v21 + 16, *a3, v22 + 1);
        v23 = option_source;
        *v21 = 0;
        *(v21 + 1) = v23;
        v24 = (a1 + 40);
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
        *v25 = v21;
      }
    }

    goto LABEL_95;
  }

  result = 1;
  if (v12 == 2 && v13 >= 101)
  {
    option_error("%s%s set in %s cannot be overridden\n");
    return 0;
  }

  return result;
}

uint64_t options_from_list(void *a1, int a2)
{
  privileged_option = a2;
  option_source = "secrets file";
  option_priority = 3;
  if (!a1)
  {
    return 1;
  }

  v2 = a1;
  v7 = 0;
  v3 = "In secrets file: unrecognized option '%s'";
  while (1)
  {
    v4 = sub_100012EE0(v2[1]);
    if (!v4)
    {
      break;
    }

    v5 = v2;
    if ((*(v4 + 2) | 2) != 2)
    {
      v5 = v2;
      if ((*(v4 + 33) & 2) == 0)
      {
        v5 = *v2;
        if (!*v2)
        {
          v3 = "In secrets file: too few parameters for option '%s'";
          break;
        }

        v7 = v5[1];
      }
    }

    result = sub_100013190(v4, v2[1], &v7);
    if (!result)
    {
      return result;
    }

    v2 = *v5;
    if (!*v5)
    {
      return 1;
    }
  }

  option_error(v3, v2[1]);
  return 0;
}

char **override_value(const char *a1, int a2, uint64_t a3)
{
  result = sub_100012EE0(a1);
  if (result)
  {
    v6 = result + 81;
    do
    {
      v7 = *(v6 - 65);
      v6 -= 48;
    }

    while ((v7 & 0x100000) != 0);
    if ((v7 & 0x80000) != 0 && *(v6 - 1) > a2)
    {
      return 0;
    }

    else
    {
      *(v6 - 1) = a2;
      *(v6 - 5) = a3;
      *v6 = -1;
      return 1;
    }
  }

  return result;
}

void *add_options(uint64_t a1)
{
  result = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
  if (!result)
  {
    novm("option list entry");
  }

  v3 = qword_10004B6B0;
  *result = a1;
  result[1] = v3;
  qword_10004B6B0 = result;
  return result;
}

uint64_t check_options()
{
  result = dword_100044F20;
  if ((dword_100044F20 & 0x80000000) == 0 && dword_100044F20 != log_to_fd)
  {
    return close(dword_100044F20);
  }

  return result;
}

void *print_options(uint64_t (*a1)(const char *, const char *), const char *a2)
{
  a1(a2, "pppd options in effect:\n");
  sub_100013AA8(&general_options, a1, a2);
  sub_100013AA8(&auth_options, a1, a2);
  for (i = qword_10004B6B0; i; i = *(i + 8))
  {
    sub_100013AA8(*i, a1, a2);
  }

  result = sub_100013AA8(*the_channel, a1, a2);
  v6 = protocols;
  if (protocols)
  {
    v7 = &off_100043898;
    do
    {
      result = sub_100013AA8(*(v6 + 13), a1, a2);
      v8 = *v7++;
      v6 = v8;
    }

    while (v8);
  }

  return result;
}

void *sub_100013AA8(void *result, uint64_t (*a2)(const char *, const char *), const char *a3)
{
  if (*result)
  {
    v5 = result;
    while (1)
    {
      if (*(v5 + 32))
      {
        if (*(v5 + 33) != -1)
        {
          v6 = &v5[12 * *(v5 + 33)];
          v7 = *(v6 + 8);
          if ((v7 & 0x40000000) == 0)
          {
            break;
          }
        }
      }

      do
      {
LABEL_52:
        v17 = *(v5 + 130);
        v5 += 12;
      }

      while ((v17 & 0x10) != 0);
      if (!*v5)
      {
        return result;
      }
    }

    v8 = *(v6 + 2);
    if (v8 > 3)
    {
      if (v8 <= 5)
      {
        if (v8 != 4)
        {
          v13 = "??????";
          if ((v7 & 0x10000) == 0)
          {
            v13 = v6[2];
            if ((v7 & 0x2000) == 0)
            {
              v13 = *v13;
            }
          }

          v19 = v13;
          v11 = a3;
          v12 = "%s %q";
          goto LABEL_47;
        }

        (a2)(a3, "%s", *v6);
        if ((*(v6 + 33) & 2) == 0)
        {
          v11 = a3;
          v12 = " %x";
          goto LABEL_47;
        }

LABEL_48:
        (a2)(a3, "\t\t# (from %s", v5[7]);
        if (*(v5 + 22) >= 1)
        {
          v16 = 0;
          do
          {
            (a2)(a3, ", %s", *(v5[10] + 8 * v16++));
          }

          while (v16 < *(v5 + 22));
        }

        result = a2(a3, ")\n");
        goto LABEL_52;
      }

      if (v8 == 6)
      {
LABEL_26:
        if ((v7 & 0x10000000) == 0)
        {
          if ((v7 & 0x20000000) != 0)
          {
            v12 = v6[5];
            if ((v7 & 0x2000) == 0)
            {
              v12 = *v12;
            }

            v11 = "%q";
          }

          else
          {
            if ((v7 & 0x10000) != 0)
            {
              for (i = v6[5]; ; (a2)(a3, "\t\t# (from %s)\n%s ", *(i + 1), *v6))
              {
                (a2)(a3, "%q", i + 16, v19);
                i = *i;
                if (!i)
                {
                  break;
                }
              }

              goto LABEL_48;
            }

            v11 = a3;
            v12 = "xxx # [don't know how to print value]";
          }

          goto LABEL_47;
        }

        (v6[5])(v6, a2, a3);
        goto LABEL_48;
      }

      if (v8 != 7)
      {
        goto LABEL_37;
      }
    }

    else if (v8 >= 2)
    {
      if (v8 == 2)
      {
        if (*v6[2] != v7)
        {
          if ((v7 & 0x800) == 0)
          {
            goto LABEL_48;
          }

          v14 = v6[5];
          if (!v14 || (v7 & *v14) == 0)
          {
            goto LABEL_48;
          }
        }

        v11 = a3;
        v12 = "%s";
        goto LABEL_47;
      }

      if (v8 == 3)
      {
        if ((v7 & 0x80) != 0)
        {
          v9 = -256;
        }

        else
        {
          v9 = 0;
        }

        v10 = *v6[2];
        if ((v7 & 0x200) == 0)
        {
          v19 = *v6[2];
          v11 = a3;
          v12 = "%s %d";
LABEL_47:
          a2(v11, v12);
          goto LABEL_48;
        }

        v15 = (v9 & 0xFFFFFF00 | *(v6 + 8));
        (a2)(a3, "%s", *v6);
        if (v10 != v15)
        {
          if ((*(v6 + 33) & 8) != 0)
          {
            while (v10 > v15)
            {
              (a2)(a3, " %s", *v6);
              v10 -= v15;
            }

            goto LABEL_48;
          }

          v19 = v15;
          v11 = a3;
          v12 = " # oops: %d not %d\n";
          goto LABEL_47;
        }

        goto LABEL_48;
      }

LABEL_37:
      v19 = *(v6 + 2);
      v11 = a3;
      v12 = "# %s value (type %d??)";
      goto LABEL_47;
    }

    (a2)(a3, "%s", *v6);
    if ((*(v6 + 2) | 2) == 2 || (*(v6 + 33) & 2) != 0)
    {
      goto LABEL_48;
    }

    a2(a3, " ");
    v7 = *(v6 + 8);
    goto LABEL_26;
  }

  return result;
}

uint64_t getword(FILE *a1, const char *a2, _DWORD *a3, const char *a4)
{
  v8 = 0;
  *a3 = 0;
  LOBYTE(v9) = 1;
  while (1)
  {
LABEL_2:
    v10 = v9;
    v9 = v8;
    do
    {
      v8 = v9;
      v11 = getc(a1);
      if (v11 == -1)
      {
        goto LABEL_19;
      }

      v12 = v11;
      v9 = 1;
      if (v11 == 10)
      {
        if (v10)
        {
          v8 = 0;
          *a3 = 1;
        }

        goto LABEL_2;
      }
    }

    while (v8);
    if ((v10 & 1) == 0)
    {
      goto LABEL_26;
    }

    LOBYTE(v9) = 0;
    v8 = 0;
    if (v11 != 92)
    {
      if (v11 == 35)
      {
        LOBYTE(v9) = 1;
        v8 = 1;
        continue;
      }

      v13 = v11 > 0x7F ? __maskrune(v11, 0x4000uLL) : _DefaultRuneLocale.__runetype[v11] & 0x4000;
      v8 = 0;
      LOBYTE(v9) = 1;
      if (!v13)
      {
        break;
      }
    }
  }

  if (v12 != 39 && v12 != 34)
  {
LABEL_26:
    v14 = 0;
    goto LABEL_27;
  }

  v14 = v12;
  v12 = getc(a1);
  if (v12 != -1)
  {
LABEL_27:
    v15 = 0;
    while ((v10 & 1) != 0)
    {
      if (v14)
      {
        if (v12 == v14)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v12 > 0x7F)
        {
          v19 = __maskrune(v12, 0x4000uLL);
        }

        else
        {
          v19 = _DefaultRuneLocale.__runetype[v12] & 0x4000;
        }

        if (v12 == 35 || v19)
        {
          ungetc(v12, a1);
          goto LABEL_22;
        }
      }

      if (v12 == 92)
      {
LABEL_44:
        v12 = getc(a1);
        v10 ^= 1u;
        if (v12 == -1)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v15 <= 0x3FE)
        {
          a2[v15] = v12;
        }

LABEL_74:
        v12 = getc(a1);
LABEL_75:
        ++v15;
        v10 = 1;
        if (v12 == -1)
        {
          goto LABEL_20;
        }
      }
    }

    if (v12 == 10)
    {
      goto LABEL_44;
    }

    if (v12 <= 109)
    {
      switch(v12)
      {
        case 'a':
          v17 = 1;
          v18 = 7;
          goto LABEL_71;
        case 'b':
          v17 = 1;
          v18 = 8;
          goto LABEL_71;
        case 'f':
          v17 = 1;
          v18 = 12;
          goto LABEL_71;
      }
    }

    else if (v12 > 114)
    {
      if (v12 == 115)
      {
        v17 = 1;
        v18 = 32;
        goto LABEL_71;
      }

      if (v12 == 116)
      {
        v17 = 1;
        v18 = 9;
        goto LABEL_71;
      }
    }

    else
    {
      if (v12 == 110)
      {
        v17 = 1;
        v18 = 10;
        goto LABEL_71;
      }

      if (v12 == 114)
      {
        v17 = 1;
        v18 = 13;
        goto LABEL_71;
      }
    }

    if ((v12 & 0xFFFFFFF8) == 0x30)
    {
      v20 = 0;
      v18 = 0;
      do
      {
        v18 = v12 & 7 | (8 * v18);
        v12 = getc(a1);
      }

      while ((v12 & 0xFFFFFFF8) == 0x30 && v20++ < 2);
    }

    else
    {
      if (v12 != 120)
      {
        v17 = 1;
        v18 = v12;
LABEL_71:
        if (v15 <= 0x3FE)
        {
          a2[v15] = v18;
        }

        if (!v17)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }

      v12 = getc(a1);
      if (v12 <= 0xFF)
      {
        v22 = 0;
        v18 = 0;
        while ((_DefaultRuneLocale.__runetype[v12] & 0x10000) != 0)
        {
          v23 = __toupper(v12);
          if (v23 <= 58)
          {
            v24 = -48;
          }

          else
          {
            v24 = -55;
          }

          v18 = v23 + 16 * v18 + v24;
          v12 = getc(a1);
          v17 = 0;
          v25 = (v12 > 0xFF) | v22;
          v22 = 1;
          if (v25)
          {
            goto LABEL_71;
          }
        }
      }

      else
      {
        v18 = 0;
      }
    }

    v17 = 0;
    goto LABEL_71;
  }

LABEL_19:
  LODWORD(v15) = 0;
LABEL_20:
  if (ferror(a1))
  {
    if (!*__error())
    {
      *__error() = 5;
    }

    option_error("Error reading %s: %m", a4);
    die(1);
  }

  if (!v15)
  {
    return 0;
  }

LABEL_22:
  if (v15 >= 1024)
  {
    option_error("warning: word in file %s too long (%.20s...)", a4, a2);
    LODWORD(v15) = 1023;
  }

  a2[v15] = 0;
  return 1;
}

uint64_t int_option(char *a1, _DWORD *a2)
{
  v4 = 0;
  result = sub_10001423C(a1, &v4, 0);
  if (result)
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t sub_10001423C(char *a1, _DWORD *a2, int a3)
{
  __endptr = 0;
  *a2 = strtoul(a1, &__endptr, a3);
  if (__endptr != a1)
  {
    return 1;
  }

  option_error("invalid numeric parameter '%s' for %s option", a1, current_option);
  return 0;
}

uint64_t options_from_controller()
{
  v0 = 0;
  v11 = 0;
  v15 = 0;
  v16 = 0;
  v1 = privileged_option;
  privileged_option = controlled;
  option_source = "controller";
  option_priority = 2;
  while (1)
  {
    do
    {
      if (!getword(controlfile, &size[1], &v11, "controller"))
      {
LABEL_22:
        v9 = 1;
        if (!v0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    while (*&size[1] == 0x534E4F4954504F5BLL && v13 == 93);
    if (size[1] == 1347372379 && LOWORD(size[2]) == 93)
    {
      goto LABEL_22;
    }

    v4 = sub_100012EE0(&size[1]);
    if (!v4)
    {
      option_error("In controller file descriptor: unrecognized option '%s'");
      goto LABEL_26;
    }

    v5 = v4;
    v15 = 0;
    v16 = 0;
    bzero(v14, 0x400uLL);
    v6 = *(v5 + 8);
    if ((v6 | 2) != 2)
    {
      break;
    }

LABEL_13:
    if (!sub_100013190(v5, &size[1], &v15))
    {
      goto LABEL_26;
    }
  }

  if ((*(v5 + 33) & 2) != 0)
  {
    v7 = 0;
LABEL_19:
    if (v6 == 7)
    {
      size[0] = 0;
      if (!sub_10001423C(v7, size, 0))
      {
        goto LABEL_26;
      }

      v8 = size[0];
      v0 = malloc_type_malloc(size[0], 0x5561B42FuLL);
      fread(v0, v8, 1uLL, controlfile);
      v16 = v0;
    }

    goto LABEL_13;
  }

  if (getword(controlfile, v14, &v11, "controller"))
  {
    v7 = v14;
    v15 = v14;
    v6 = *(v5 + 8);
    goto LABEL_19;
  }

  option_error("In controller file descriptor: too few parameters for option '%s'");
LABEL_26:
  v9 = 0;
  if (v0)
  {
LABEL_23:
    free(v0);
  }

LABEL_24:
  privileged_option = v1;
  return v9;
}

uint64_t options_close()
{
  if (controlfile)
  {
    fclose(controlfile);
    controlfile = 0;
    controlfd = -1;
  }

  result = statusfd;
  if (statusfd != -1)
  {
    result = close(statusfd);
    statusfd = -1;
  }

  controlled = 0;
  return result;
}

uint64_t sub_100014528(const char *a1, uint64_t a2, int a3)
{
  if ((*(a2 + 8) == 6) != a3)
  {
    return 0;
  }

  if (!a3)
  {
    return strcmp(a1, *a2) == 0;
  }

  v4 = *(a2 + 16);

  return v4(a1, 0, 0);
}

uint64_t closeall()
{
  v0 = getdtablesize();
  if (v0 >= 1)
  {
    v1 = v0 + 1;
    do
    {
      close(v1 - 2);
      --v1;
    }

    while (v1 > 1);
  }

  open("/dev/null", 2, 0);
  dup(0);

  return dup(0);
}

uint64_t closeallfrom(int a1)
{
  v2 = opendir("/dev/fd");
  if (v2)
  {
    v3 = v2;
    memset(&v7, 0, 512);
    v6 = 0;
    while (!readdir_r(v3, &v7, &v6) && v6)
    {
      v4 = atoi(v6->d_name);
      if (v4 >= a1 && v4 != v3->__dd_fd)
      {
        close(v4);
      }
    }

    return closedir(v3);
  }

  else
  {
    for (result = getdtablesize(); a1 < result; result = getdtablesize())
    {
      close(a1++);
    }
  }

  return result;
}

uint64_t load_kext(uint64_t a1, int a2)
{
  v4 = fork();
  if (v4 < 0)
  {
    return 1;
  }

  v5 = v4;
  if (!v4)
  {
    closeall();
    if (a2)
    {
      execle("/sbin/kextload", "kextload", "-b", a1, 0, 0);
    }

    else
    {
      execle("/sbin/kextload", "kextload", a1, 0, 0);
    }

    exit(1);
  }

  v6 = 1;
  while (waitpid(v5, 0, 0) < 0)
  {
    if (*__error() != 4)
    {
      return v6;
    }
  }

  return 0;
}

void sys_install()
{
  if (qword_10004B978 != -1)
  {
    sub_10002D7B4();
  }

  if (byte_10004B975)
  {
    notice("Committed PPP store on install command\n");
    v0 = cfgCache;
    v1 = publish_dict;

    SCDynamicStoreSetMultiple(v0, v1, 0, 0);
  }
}

void sys_uninstall()
{
  if (qword_10004B978 != -1)
  {
    sub_10002D7B4();
  }

  if (byte_10004B975)
  {
    notice("Received uninstall command\n");
    if (publish_dict)
    {
      Count = CFDictionaryGetCount(publish_dict);
      if (Count >= 1)
      {
        v1 = Count;
        Typed = CFAllocatorAllocateTyped();
        if (Typed)
        {
          v3 = Typed;
          CFDictionaryGetKeysAndValues(publish_dict, Typed, 0);
          v4 = CFArrayCreate(kCFAllocatorDefault, v3, v1, &kCFTypeArrayCallBacks);
          SCDynamicStoreSetMultiple(cfgCache, 0, v4, 0);
          if (v4)
          {
            CFRelease(v4);
          }

          CFAllocatorDeallocate(kCFAllocatorDefault, v3);
        }
      }
    }
  }
}

BOOL sys_check_controller()
{
  if (qword_10004B978 != -1)
  {
    sub_10002D7B4();
  }

  if (byte_10004B975)
  {
    sys_log(5u, "NetworkExtension is the controller");
    return 1;
  }

  else
  {
    *sp = 0;
    memset(&v3, 0, sizeof(v3));
    euidp = 0;
    if (bootstrap_look_up(bootstrap_port, "com.apple.SystemConfiguration.PPPController-priv", &sp[1]) || sub_10002D5F0(sp[1], sp, &v3))
    {
      return 0;
    }

    else
    {
      atoken = v3;
      audit_token_to_au32(&atoken, 0, &euidp, 0, 0, 0, 0, 0, 0);
      return (sp[0] | euidp) == 0;
    }
  }
}

void sys_log(unsigned int a1, char *a2, ...)
{
  va_start(va, a2);
  if (qword_10004B978 != -1)
  {
    sub_10002D7B4();
  }

  if (byte_10004B975)
  {
    if (a1 == 6)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    if (a1 < 6)
    {
      v4 = 0;
    }

    if (a1 == 3)
    {
      v5 = 16;
    }

    else
    {
      v5 = v4;
    }

    if (a1 >= 3)
    {
      v6 = v5;
    }

    else
    {
      v6 = OS_LOG_TYPE_FAULT;
    }

    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
      if (v8)
      {
        v9 = v8;
        v10 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, v8, va);
        if (v10)
        {
          v11 = v10;
          v12 = ne_log_obj();
          if (os_log_type_enabled(v12, v6))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_impl(&_mh_execute_header, v12, v6, "%@", buf, 0xCu);
          }

          CFRelease(v11);
        }

        CFRelease(v9);
      }
    }
  }

  else
  {
    vsyslog(a1, a2, va);
  }
}

const __CFData *Unserialize(UInt8 *bytes, CFIndex length)
{
  result = CFDataCreate(0, bytes, length);
  if (result)
  {
    v3 = result;
    v4 = CFPropertyListCreateFromXMLData(0, result, 0, 0);
    CFRelease(v3);
    return v4;
  }

  return result;
}

void CopyControllerData()
{
  sp = 0;
  v7 = 0;
  v5 = 1001;
  v6 = 0;
  memset(&v4, 0, sizeof(v4));
  euidp = 0;
  if (!bootstrap_look_up(bootstrap_port, "com.apple.SystemConfiguration.PPPController-priv", &sp))
  {
    v0 = sub_10002D3BC(sp, 0, &v7, &v6, &v5, &v4);
    if (v0 | v5)
    {
      error("cannot get private system options from controller\n");
    }

    else
    {
      atoken = v4;
      audit_token_to_au32(&atoken, 0, &euidp, 0, 0, 0, 0, 0, 0);
      if (euidp)
      {
        error("cannot authenticate private system options from controller\n");
      }

      else
      {
        systemOptions = Unserialize(v7, v6);
        v1 = sub_10002D3BC(sp, 1, &v7, &v6, &v5, &v4);
        if (v1 | v5)
        {
          error("cannot get private user options from controller\n");
        }

        else
        {
          atoken = v4;
          audit_token_to_au32(&atoken, 0, &euidp, 0, 0, 0, 0, 0, 0);
          if (euidp)
          {
            error("cannot authenticate private user options from controller\n");
          }

          else
          {
            userOptions = Unserialize(v7, v6);
          }
        }
      }
    }
  }
}

void CopyServerData()
{
  v0 = SCPreferencesCreate(0, @"pppd", @"com.apple.RemoteAccessServers.plist");
  if (!v0)
  {
    fatal("Cannot open servers plist\n");
  }

  v1 = v0;
  Value = SCPreferencesGetValue(v0, @"Servers");
  if (!Value)
  {
    fatal("No servers found in servers plist\n");
  }

  v3 = CFDictionaryGetValue(Value, serveridRef);
  systemOptions = v3;
  if (!v3 || (v4 = CFGetTypeID(v3), v4 != CFDictionaryGetTypeID()))
  {
    fatal("Server ID '%s' not found in servers plist\n", serverid);
  }

  CFRetain(systemOptions);

  CFRelease(v1);
}

BOOL sys_protocolsreadynotify()
{
  byte_10004B6B8 = 1;
  dbglog("Received protocol dictionaries\n");

  return sub_100014ECC();
}

BOOL sub_100014ECC()
{
  if (demand)
  {
    return 0;
  }

  if (phase != 8 || byte_10004B6B8 == 0)
  {
    return 0;
  }

  if (acsp_use_dhcp | byte_100046F00 && byte_10004B6B9 == 0)
  {
    return 0;
  }

  if (!publish_dict)
  {
    return 1;
  }

  if (qword_10004B978 != -1)
  {
    sub_10002D7B4();
  }

  if (byte_10004B975)
  {
    if (cfgCache)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v3 = Mutable;
        v4 = CFStringCreateWithFormat(0, 0, @"%s", &ifname);
        if (v4)
        {
          v5 = v4;
          CFDictionarySetValue(v3, kSCPropInterfaceName, v4);
          CFRelease(v5);
        }

        NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceidRef, kSCEntNetIPv4);
        if (NetworkServiceEntity)
        {
          v7 = NetworkServiceEntity;
          if (!SCDynamicStoreSetValue(cfgCache, NetworkServiceEntity, v3))
          {
            v8 = SCError();
            v9 = SCErrorString(v8);
            warning("SCDynamicStoreSetValue Ifname %s failed: %s\n", &ifname, v9);
          }

          CFRelease(v7);
        }

        CFRelease(v3);
      }
    }

    sys_notify(266, 22, byte_10004B858);
    return 1;
  }

  notice("Committed PPP store\n");
  return SCDynamicStoreSetMultiple(cfgCache, publish_dict, 0, 0) != 0;
}

BOOL sys_acspdhcpreadynotify()
{
  byte_10004B6B9 = 1;
  dbglog("Received acsp/dhcp dictionaries\n");

  return sub_100014ECC();
}

double sys_init()
{
  openlog("pppd", 9, 120);
  setlogmask(127);
  if (debug)
  {
    setlogmask(255);
  }

  setsid();
  v0 = sub_1000158E8();
  ppp_sockfd = v0;
  if (v0 < 0)
  {
    fatal("Couldn't open PF_PPP: %m");
  }

  v1 = fcntl(v0, 3);
  if (v1 == -1 || fcntl(ppp_sockfd, 4, v1 | 4u) == -1)
  {
    warning("Couldn't set PF_PPP to nonblock: %m");
  }

  info = 0;
  dword_10004B6BC = socket(2, 2, 0);
  if (dword_10004B6BC < 0)
  {
    v16 = __error();
    fatal("Couldn't create IP socket: %m(%d)", *v16);
  }

  v2 = serviceid;
  if (!serviceid)
  {
    v3 = CFUUIDCreate(0);
    v4 = CFUUIDCreateString(0, v3);
    CFStringGetCString(v4, buffer, 100, 0x8000100u);
    serviceid = strdup(buffer);
    if (!serviceid)
    {
      v21 = __error();
      fatal("Couldn't allocate memory to create temporary service id: %m(%d)", *v21);
    }

    CFRelease(v4);
    CFRelease(v3);
    v2 = serviceid;
  }

  serviceidRef = CFStringCreateWithFormat(0, 0, @"%s", v2);
  if (!serviceidRef)
  {
    v17 = __error();
    fatal("Couldn't allocate memory to create service id reference: %m(%d)", *v17);
  }

  if (controlled)
  {
    if (qword_10004B978 != -1)
    {
      sub_10002D7C8();
    }

    if (byte_10004B975)
    {
      if (qword_10004B988 != -1)
      {
        sub_10002D7F0();
      }

      if (qword_10004B980)
      {
        v23 = 0;
        v24 = &v23;
        v25 = 0x2000000000;
        v26 = 0;
        v5 = dispatch_semaphore_create(0);
        dispatch_get_global_queue(0, 0);
        *buffer = _NSConcreteStackBlock;
        v28 = 0x40000000;
        v29 = sub_10001BE8C;
        v30 = &unk_10003CB80;
        v31 = &v23;
        v32 = v5;
        ne_session_get_info();
        dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(v5);
        v6 = v24[3];
        if (v6 && xpc_get_type(v6) == &_xpc_type_dictionary)
        {
          if (xpc_dictionary_get_value(v24[3], "SessionLegacyServiceConfiguration"))
          {
            systemOptions = _CFXPCCreateCFObjectFromXPCObject();
          }

          if (xpc_dictionary_get_value(v24[3], "SessionLegacyUserConfiguration"))
          {
            userOptions = _CFXPCCreateCFObjectFromXPCObject();
          }
        }

        v7 = v24[3];
        if (v7)
        {
          xpc_release(v7);
        }

        _Block_object_dispose(&v23, 8);
      }
    }

    else
    {
      CopyControllerData();
    }
  }

  cfgCache = SCDynamicStoreCreate(0, @"pppd", 0, 0);
  if (!cfgCache)
  {
    v18 = SCError();
    v19 = SCErrorString(v18);
    fatal("SCDynamicStoreCreate failed: %s", v19);
  }

  if (nodetach)
  {
    v8 = getpid();
    publish_dictnumentry(kSCEntNetPPP, @"pid", v8);
  }

  publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPStatus, phase);
  if (serverid)
  {
    serveridRef = CFStringCreateWithFormat(0, 0, @"%s", serverid);
    if (!serveridRef)
    {
      v20 = __error();
      fatal("Couldn't allocate memory to create server id reference: %m(%d)", *v20);
    }

    CopyServerData();
    publish_dictstrentry(kSCEntNetInterface, @"ServerID", serverid, 0);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  publish_dict = Mutable;
  if (!controlled && Mutable)
  {
    rls = SCDynamicStoreCreateRunLoopSource(kCFAllocatorDefault, cfgCache, 0);
    if (rls)
    {
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, rls, kCFRunLoopDefaultMode);
    }

    else
    {
      v11 = SCError();
      v12 = SCErrorString(v11);
      notice("SCDynamicStoreCreateRunLoopSource FAILED %s", v12);
    }

    SCDynamicStoreSetDisconnectCallBack();
  }

  add_notifier(&phasechange, sub_100015BCC, 0);
  add_notifier(&exitnotify, sub_100015DD0, 0);
  if (statusfd != -1)
  {
    add_notifier(&ip_up_notify, sub_100015E68, 10);
    add_notifier(&ip_down_notify, sub_100015E68, 11);
    add_notifier(&lcp_up_notify, sub_100015E68, 8);
    add_notifier(&lcp_down_notify, sub_100015E68, 9);
    add_notifier(&lcp_lowerup_notify, sub_100015E68, 6);
    add_notifier(&lcp_lowerdown_notify, sub_100015E68, 7);
    add_notifier(&auth_start_notify, sub_100015E68, 12);
    add_notifier(&auth_withpeer_fail_notify, sub_100015E68, 13);
    add_notifier(&auth_withpeer_success_notify, sub_100015E68, 14);
    add_notifier(&connectscript_started_notify, sub_100015E68, 2);
    add_notifier(&connectscript_finished_notify, sub_100015E68, 3);
    add_notifier(&terminalscript_started_notify, sub_100015E68, 4);
    add_notifier(&terminalscript_finished_notify, sub_100015E68, 5);
    add_notifier(&connect_started_notify, sub_100015E68, 15);
    add_notifier(&connect_success_notify, sub_100015E68, 17);
    add_notifier(&connect_fail_notify, sub_100015E68, 16);
    add_notifier(&disconnect_started_notify, sub_100015E68, 18);
    add_notifier(&disconnect_done_notify, sub_100015E68, 19);
    add_notifier(&stop_notify, sub_100015E68, 20);
    add_notifier(&cont_notify, sub_100015E68, 21);
  }

  add_notifier(&lcp_timeremaining_notify, sub_100015E84, 0);
  add_notifier(&auth_peer_success_notify, sub_100015F68, 0);
  add_notifier(&protocolsready_notifier, sys_protocolsreadynotify, 0);
  add_notifier(&acspdhcpready_notifier, sys_acspdhcpreadynotify, 0);
  if (!mach_timebase_info(&info))
  {
    LODWORD(v13) = info.numer;
    LODWORD(v14) = info.denom;
    *&timeScaleMicroSeconds = v13 / v14 / 1000.0;
    *&timeScaleSeconds = *&timeScaleMicroSeconds / 1000000.0;
  }

  result = 0.0;
  xmmword_10004B720 = 0u;
  unk_10004B730 = 0u;
  xmmword_10004B700 = 0u;
  unk_10004B710 = 0u;
  xmmword_10004B6E0 = 0u;
  unk_10004B6F0 = 0u;
  xmmword_10004B6C0 = 0u;
  *algn_10004B6D0 = 0u;
  xmmword_10004B740 = 0u;
  *algn_10004B750 = 0u;
  xmmword_10004B760 = 0u;
  unk_10004B770 = 0u;
  xmmword_10004B780 = 0u;
  unk_10004B790 = 0u;
  xmmword_10004B7A0 = 0u;
  unk_10004B7B0 = 0u;
  dword_10004B7C0 = 0;
  return result;
}

uint64_t sub_1000158E8()
{
  v0 = socket(34, 3, 1);
  if ((v0 & 0x80000000) != 0)
  {
    error("Couldn't open PF_PPP: %m");
    return 0xFFFFFFFFLL;
  }

  v1 = v0;
  *&v3.sa_len = 74248;
  if (connect(v0, &v3, 8u) < 0)
  {
    error("Couldn't connect to PF_PPP: %m");
    close(v1);
    return 0xFFFFFFFFLL;
  }

  return v1;
}

uint64_t publish_dictnumentry(CFStringRef entity, const void *a2, int a3)
{
  valuePtr = a3;
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceidRef, entity);
  if (!NetworkServiceEntity)
  {
    return 12;
  }

  v5 = NetworkServiceEntity;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (v6)
  {
    v7 = v6;
    publish_keyentry(v5, a2, v6);
    CFRelease(v7);
    v8 = 0;
  }

  else
  {
    v8 = 12;
  }

  CFRelease(v5);
  return v8;
}

uint64_t publish_dictstrentry(CFStringRef entity, const void *a2, const char *a3, CFStringEncoding a4)
{
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceidRef, entity);
  if (!NetworkServiceEntity)
  {
    return 12;
  }

  v8 = NetworkServiceEntity;
  v9 = CFStringCreateWithCString(0, a3, a4);
  if (v9)
  {
    v10 = v9;
    publish_keyentry(v8, a2, v9);
    CFRelease(v10);
    v11 = 0;
  }

  else
  {
    v11 = 12;
  }

  CFRelease(v8);
  return v11;
}

void sub_100015AC0()
{
  dbglog("DynamicStore Server has reconnected, republish keys");
  if (publish_dict)
  {
    Count = CFDictionaryGetCount(publish_dict);
    if (Count)
    {
      v1 = Count;
      CFRelease(cfgCache);
      cfgCache = SCDynamicStoreCreate(0, @"pppd", 0, 0);
      if (!cfgCache)
      {
        v6 = SCError();
        v7 = SCErrorString(v6);
        fatal("republish_dict SCDynamicStoreCreate failed: %s", v7);
      }

      dbglog("republish_dict: processing %d keys", v1);
      if (demand)
      {
        v2 = publish_dict;
        if (publish_dict)
        {
          v3 = cfgCache;

          SCDynamicStoreSetMultiple(v3, v2, 0, 0);
        }
      }

      else if (!sub_100014ECC())
      {
        v4 = SCError();
        v5 = SCErrorString(v4);
        warning("republish_dict SCDynamicStoreSetMultiple failed key: %s\n", v5);
      }
    }
  }
}

void sub_100015BCC(uint64_t a1, uint64_t a2)
{
  publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPStatus, a2);
  if (a2 > 3)
  {
    if (a2 <= 10)
    {
      if (a2 != 4)
      {
        if (a2 != 10)
        {
          goto LABEL_19;
        }

        unpublish_dictentry(kSCEntNetPPP, @"AuthPeerName");
        unpublish_dictentry(kSCEntNetPPP, kSCPropNetPPPCommRemoteAddress);
        unpublish_dictentry(kSCEntNetPPP, kSCPropNetPPPConnectTime);
        unpublish_dictentry(kSCEntNetPPP, kSCPropNetPPPDisconnectTime);
        v3 = 23;
        v4 = 0;
        goto LABEL_14;
      }

      dword_10004B990 = (*&timeScaleSeconds * mach_absolute_time());
      publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPConnectTime, dword_10004B990);
      if (maxconnect)
      {
        v8 = kSCPropNetPPPDisconnectTime;
        v6 = dword_10004B990 + maxconnect;
        v7 = kSCEntNetPPP;
LABEL_17:
        publish_dictnumentry(v7, v8, v6);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    if (a2 != 11)
    {
      if (a2 != 13)
      {
        goto LABEL_19;
      }

      v5 = redialtimer;
      v6 = (v5 + mach_absolute_time() * *&timeScaleSeconds);
      v7 = kSCEntNetPPP;
      v8 = kSCPropNetPPPRetryConnectTime;
      goto LABEL_17;
    }

LABEL_13:
    v4 = *status;
    v3 = 1;
LABEL_14:
    sys_notify(266, v3, v4);
    goto LABEL_19;
  }

  switch(a2)
  {
    case 0:
      goto LABEL_13;
    case 2:
      unpublish_dictentry(kSCEntNetPPP, kSCPropNetPPPRetryConnectTime);
      break;
    case 3:
      goto LABEL_13;
  }

LABEL_19:
  v9 = phase;
  if (phase)
  {
    v10 = ifunit;

    sys_notify(268, v9, v10);
  }
}

void sub_100015DD0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  unpublish_dict(kSCEntNetPPP);
  unpublish_dict(kSCEntNetDNS);
  unpublish_dict(kSCEntNetProxies);
  unpublish_dict(kSCEntNetInterface);
  sys_notify(266, 1, v2);
  if (cfgCache)
  {
    CFRelease(cfgCache);
    cfgCache = 0;
  }

  if (publish_dict)
  {
    CFRelease(publish_dict);
    publish_dict = 0;
  }
}

void sub_100015E68(uint64_t a1, uint64_t a2)
{
  if (a1 == 16)
  {
    v2 = 8;
  }

  else
  {
    v2 = a2;
  }

  sys_notify(266, a1, v2);
}

uint64_t sub_100015E84(uint64_t a1, _DWORD *a2)
{
  v3 = mach_absolute_time();
  if (*a2 == -1)
  {
    if (!maxconnect || (v4 = dword_10004B990 + maxconnect) == 0)
    {
LABEL_12:

      return unpublish_dictentry(kSCEntNetPPP, kSCPropNetPPPDisconnectTime);
    }
  }

  else
  {
    v4 = *a2 + (*&timeScaleSeconds * v3);
    if (maxconnect && v4 >= dword_10004B990 + maxconnect)
    {
      v4 = dword_10004B990 + maxconnect;
    }

    if (!v4)
    {
      goto LABEL_12;
    }
  }

  return publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPDisconnectTime, v4);
}

uint64_t sys_cleanup()
{
  if (controlled)
  {
    v0 = 1;
  }

  else
  {
    v0 = rls == 0;
  }

  if (!v0)
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(Current, rls, kCFRunLoopDefaultMode);
    CFRunLoopSourceInvalidate(rls);
    CFRelease(rls);
    rls = 0;
  }

  v3 = 0u;
  v4 = 0u;
  result = cifroute();
  if (byte_10004B7C4 == 1)
  {
    __strlcpy_chk();
    result = ioctl(dword_10004B6BC, 0xC0206911uLL, &v3);
    if (result & 0x80000000) == 0 && (v4)
    {
      LOWORD(v4) = v4 & 0xFFFE;
      result = ioctl(dword_10004B6BC, 0x80206910uLL, &v3);
    }
  }

  if (dword_10004B7C8)
  {
    result = cifaddr(result, dword_10004B7C8, dword_10004B7CC);
  }

  if (dword_10004B7D0)
  {
    return cifproxyarp();
  }

  return result;
}

uint64_t cifroute()
{
  if (addifroute)
  {
    v0 = dword_10004B848 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    route_interface(2, dword_10004B840, dword_10004B844, 23, &ifname, 0);
    dword_10004B848 = 0;
  }

  return 1;
}

uint64_t cifaddr(uint64_t a1, int a2, int a3)
{
  v6 = 0u;
  cifroute();
  dword_10004B7C8 = 0;
  __strlcpy_chk();
  v9 = 0;
  v7 = 528;
  v8 = a2;
  v12 = 0;
  v10 = 528;
  v11 = a3;
  v13 = 0uLL;
  if (ioctl(dword_10004B6BC, 0x80206919uLL, &v6) < 0)
  {
    if (*__error() != 49)
    {
      warning("Couldn't delete interface address: %m");
    }

    return 0;
  }

  else
  {
    unpublish_dict(kSCEntNetIPv4);
    return 1;
  }
}

uint64_t cifdefaultroute()
{
  byte_10004B858 = 0;
  ppp_create_ipv6_dummy_primary(1);

  return unpublish_dictentry(kSCEntNetIPv4, kSCPropNetOverridePrimary);
}

uint64_t cifproxyarp()
{
  if (byte_10004B960 != 1)
  {
    return 0;
  }

  byte_10004B960 = 0;
  BYTE3(xmmword_10004B85C) = 2;
  dword_10004B870 = ++dword_10004B95C;
  v0 = socket(17, 3, 17);
  if (v0 < 0)
  {
    error("Couldn't delete proxy arp entry: socket: %m");
  }

  else
  {
    v1 = v0;
    if ((write(v0, &xmmword_10004B85C, xmmword_10004B85C) & 0x8000000000000000) == 0)
    {
      close(v1);
      dword_10004B7D0 = 0;
      return 1;
    }

    error("Couldn't delete proxy arp entry: %m");
    close(v1);
  }

  return 0;
}

void sys_runloop()
{
  if (controlled)
  {
    v1 = 1;
  }

  else
  {
    v1 = rls == 0;
  }

  if (!v1)
  {
    if (kill_link)
    {
      Current = CFRunLoopGetCurrent();

      CFRunLoopStop(Current);
    }

    else
    {

      CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.0, 1u);
    }
  }
}

void set_network_signature(char *__s, const char *a2, const char *a3, const char *a4)
{
  if (qword_10004B7D8)
  {
    free(qword_10004B7D8);
    qword_10004B7D8 = 0;
  }

  if (__s)
  {
    v8 = strlen(__s);
    v9 = strlen(a2) + v8 + 1;
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  v10 = strlen(a3);
  v11 = strlen(a4) + v10;
  if (__s)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v9 += v12 + v11;
LABEL_9:
  if (!v9)
  {
    return;
  }

  v13 = v9 + 1;
  v14 = malloc_type_malloc(v13, 0x49FE976AuLL);
  qword_10004B7D8 = v14;
  if (v14)
  {
    *v14 = 0;
    if (__s)
    {
      strlcat(v14, __s, v13);
      strlcat(qword_10004B7D8, "=", v13);
      strlcat(qword_10004B7D8, a2, v13);
      if (!a3)
      {
        return;
      }

      strlcat(qword_10004B7D8, ";", v13);
      v14 = qword_10004B7D8;
    }

    else if (!a3)
    {
      return;
    }

    strlcat(v14, a3, v13);
    strlcat(qword_10004B7D8, "=", v13);
    v15 = qword_10004B7D8;

    strlcat(v15, a4, v13);
  }

  else
  {

    warning("no memory to create network signature");
  }
}

CFStringRef set_server_peer(in_addr a1)
{
  if (qword_10004B7E0)
  {
    CFRelease(qword_10004B7E0);
    qword_10004B7E0 = 0;
  }

  v2.s_addr = a1.s_addr;
  v3 = inet_ntoa(v2);
  result = CFStringCreateWithCString(0, v3, 0x600u);
  qword_10004B7E0 = result;
  return result;
}

uint64_t sys_close()
{
  if (dword_10004B6BC != -1)
  {
    close(dword_10004B6BC);
    dword_10004B6BC = -1;
  }

  result = ppp_sockfd;
  if (ppp_sockfd != -1)
  {
    result = close(ppp_sockfd);
    ppp_sockfd = -1;
  }

  return result;
}

void sys_notify(__int16 a1, int a2, int a3)
{
  if (statusfd != -1)
  {
    v6 = strlen(serviceid);
    v7 = v6;
    v8 = ((v6 << 32) + 0x1C00000000) >> 32;
    v9 = malloc_type_malloc(v8, 0x5FCC7D7DuLL);
    if (v9)
    {
      v10 = v9;
      bzero(v9, v8);
      v10[1] = a1;
      *v10 |= 0x8000u;
      *(v10 + 3) = v7;
      *(v10 + 4) = 8;
      memmove(v10 + 10, serviceid, v7);
      v11 = (v10 + v7 + 20);
      *v11 = a2;
      v11[1] = a3;
      if (write(statusfd, v10, v8) != v8)
      {
        warning("can't talk to PPPController : %m");
      }

      free(v10);
    }

    else
    {

      warning("no memory to send event to PPPController");
    }
  }
}

uint64_t sys_check_options()
{
  if (crtscts != 2)
  {
    return 1;
  }

  warning("DTR/CTS flow control is not supported on this system", v0, v1);
  return 0;
}

uint64_t ppp_available()
{
  no_ppp_msg[0] = "Mac OS X lacks kernel support for PPP.  \nTo include PPP support in the kernel, please follow \nthe steps detailed in the README.MacOSX file.\n";
  v0 = socket(34, 3, 1);
  if (v0 < 0)
  {
    if (noload)
    {
      return 0;
    }

    if (load_kext("com.apple.nke.ppp", 1))
    {
      return 0;
    }

    v0 = socket(34, 3, 1);
    if (v0 < 0)
    {
      return 0;
    }
  }

  close(v0);
  return 1;
}

uint64_t tty_establish_ppp(uint64_t a1)
{
  v1 = a1;
  ioctl(a1, 0x2000740DuLL, 0);
  if (sync_serial)
  {
    v2 = 14;
  }

  else
  {
    v2 = 5;
  }

  dword_100045290 = v2;
  if (ioctl(v1, 0x8004741BuLL, &dword_100045290) < 0 && *__error() != 5)
  {
    error("Couldn't set tty to PPP discipline: %m");
    return 0xFFFFFFFFLL;
  }

  v3 = generic_establish_ppp(v1, 0);
  if (v3 == -1)
  {
    if (ioctl(v1, 0x8004741BuLL, &unk_10004B7E8) < 0 && *__error() != 5)
    {
      error("ioctl(TIOCSETD, TTYDISC): %m");
    }

    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  v5 = sub_100016BE8(dword_100045294);
  sub_100016B7C(v4, v5 & 0xF0FFFFFF);
  return v4;
}

uint64_t generic_establish_ppp(int a1, uint64_t a2)
{
  v9 = 0;
  if (ioctl(a1, 0x40047437uLL, &v9) == -1)
  {
    error("Couldn't get link number: %m");
  }

  else
  {
    dbglog("using link %d", v9);
    v3 = sub_1000158E8();
    if (v3 < 0)
    {
      error("Couldn't reopen PF_PPP: %m");
    }

    else
    {
      v4 = v3;
      if (ioctl(v3, 0x80047438uLL, &v9) < 0)
      {
        error("Couldn't attach to the ppp link %d: %m");
      }

      else
      {
        v5 = fcntl(v4, 3);
        if (v5 == -1 || fcntl(v4, 4, v5 | 4u) == -1)
        {
          warning("Couldn't set ppp socket link to nonblock: %m");
        }

        dword_100045294 = v4;
        if (looped || (ifunit = -1, multilink) || (sub_100016E04() & 0x80000000) == 0)
        {
          if (a2 && ioctl(ppp_sockfd, 0x80107434uLL, a2) < 0)
          {
            error("Couldn't set the delegate interface: %m");
          }

          else
          {
            if (looped)
            {
              v6 = ppp_sockfd;
              v7 = sub_100016BE8(ppp_sockfd);
              sub_100016B7C(v6, v7 & 0xFFFFFDFF);
              looped = 0;
            }

            if (multilink || (add_fd(ppp_sockfd), (ioctl(v4, 0x8004743AuLL, &ifunit) & 0x80000000) == 0))
            {
              sub_100016FA4(kdebugflag);
              return dword_100045294;
            }

            error("Couldn't attach to PPP unit %d: %m");
          }
        }
      }

      close(v4);
    }
  }

  return 0xFFFFFFFFLL;
}

int *sub_100016B7C(int a1, int a2)
{
  v4 = a2;
  result = ioctl(a1, 0x80047459uLL, &v4);
  if ((result & 0x80000000) != 0)
  {
    result = __error();
    if (*result != 5)
    {
      v3 = v4;
      __error();
      fatal("ioctl(PPPIOCSFLAGS, %x): %m", v3);
    }
  }

  return result;
}

uint64_t sub_100016BE8(int a1)
{
  v2 = 0;
  if ((ioctl(a1, 0x4004745AuLL, &v2) & 0x80000000) == 0)
  {
    return v2;
  }

  if (*__error() != 5)
  {
    fatal("ioctl(PPPIOCGFLAGS): %m");
  }

  return 0;
}

void tty_disestablish_ppp(int a1)
{
  if (hungup)
  {
  }

  else
  {
    if (ioctl(a1, 0x8004741BuLL, &unk_10004B7E8) < 0 && *__error() != 5)
    {
      error("ioctl(TIOCSETD, TTYDISC): %m");
    }

    if (ioctl(a1, 0x2000740EuLL, 0) < 0 && *__error() != 5)
    {
      v3 = __error();
      warning("ioctl(TIOCNXCL): %m(%d)", *v3);
    }
  }

  generic_disestablish_ppp();
}

void generic_disestablish_ppp()
{
  v2 = 0;
  close(dword_100045294);
  dword_100045294 = -1;
  if (demand)
  {
    looped = 1;
    v0 = ppp_sockfd;
    v1 = sub_100016BE8(ppp_sockfd);
    sub_100016B7C(v0, v1 | 0x200);
  }

  else
  {
    unpublish_dictentry(kSCEntNetPPP, kSCPropInterfaceName);
    if ((ifunit & 0x80000000) == 0 && ioctl(ppp_sockfd, 0x8004743CuLL, &v2) < 0)
    {
      error("Couldn't release PPP unit ppp_sockfd %d: %m", ppp_sockfd);
    }
  }

  if (!multilink)
  {
    remove_fd(ppp_sockfd);
  }
}

uint64_t sub_100016E04()
{
  ifunit = req_unit;
  v0 = ioctl(ppp_sockfd, 0xC004743EuLL, &ifunit);
  if ((v0 & 0x80000000) != 0 && (req_unit & 0x80000000) == 0)
  {
    if (*__error() != 17)
    {
LABEL_7:
      error("Couldn't create new ppp unit: %m");
      return v0;
    }

    warning("Couldn't allocate PPP unit %d as it is already in use", v2);
    ifunit = -1;
    v0 = ioctl(ppp_sockfd, 0xC004743EuLL, &ifunit);
  }

  if ((v0 & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  slprintf(v3, 32, "%s%d", "ppp", ifunit);
  publish_dictstrentry(kSCEntNetPPP, kSCPropInterfaceName, v3, 0);
  return v0;
}

uint64_t add_fd(int a1)
{
  result = __darwin_check_fd_set_overflow(a1, &xmmword_10004B6C0, 0);
  if (result)
  {
    *(&xmmword_10004B6C0 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << a1;
  }

  if (dword_10004B7C0 < a1)
  {
    dword_10004B7C0 = a1;
  }

  return result;
}

void sub_100016FA4(int *result)
{
  v1 = result;
  if ((ifunit & 0x80000000) == 0 && ioctl(ppp_sockfd, 0x80047440uLL, &v1) < 0 && *__error() != 5)
  {
    error("ioctl(PPPIOCSDEBUG): %m");
  }
}

uint64_t unpublish_dictentry(CFStringRef entity, const void *a2)
{
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceidRef, entity);
  if (!NetworkServiceEntity)
  {
    return 12;
  }

  v4 = NetworkServiceEntity;
  unpublish_keyentry(NetworkServiceEntity, a2);
  CFRelease(v4);
  return 0;
}

uint64_t remove_fd(int a1)
{
  result = __darwin_check_fd_set_overflow(a1, &xmmword_10004B6C0, 0);
  if (result)
  {
    *(&xmmword_10004B6C0 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << a1);
  }

  return result;
}

void clean_check()
{
  if (!hungup && (dword_100045294 & 0x80000000) == 0)
  {
    v3 = 0;
    if (!ioctl(dword_100045294, 0x4004745AuLL, &v3))
    {
      v0 = (~v3 & 0xF000000) - 0x1000000;
      if (!(v0 >> 27))
      {
        v1 = HIBYTE(v0);
        if ((0x8Bu >> v1))
        {
          v2 = off_10003CBE0[v1];
          warning("Serial link is not 8-bit clean:");
          warning("All received characters had %s", v2);
        }
      }
    }
  }
}

void set_up_tty(int a1, int a2)
{
  if (ioctl(a1, 0x20007461uLL, 0) == -1)
  {
    error("set_up_tty, can't set controlling terminal: %m");
  }

  memset(&v6, 0, sizeof(v6));
  if (tcgetattr(a1, &v6) < 0)
  {
    error("tcgetattr: %m");
  }

  else
  {
    if ((byte_10004B7EC & 1) == 0)
    {
      *byte_10004B7F0 = v6;
      ioctl(a1, 0x40087468uLL, &unk_10004B838);
    }

    v4 = v6.c_cflag & 0xFFFFFFFFFFFF68FFLL;
    if (a2 || crtscts < 1)
    {
      if (crtscts < 0)
      {
        v4 = v6.c_cflag & 0xFFFFFFFFFFFC68FFLL;
      }
    }

    else if (crtscts != 2)
    {
      v4 = v6.c_cflag & 0xFFFFFFFFFFFC68FFLL | 0x30000;
    }

    v6.c_cflag = v4 | 0x4B00;
    if (a2 || !modem)
    {
      v6.c_cflag = v4 | 0xCB00;
    }

    *&v6.c_iflag = xmmword_10002EEB0;
    v6.c_lflag = 0;
    *&v6.c_cc[16] = 1;
    if (crtscts == -2)
    {
      v6.c_iflag = 1541;
      *&v6.c_cc[12] = 4881;
    }

    if (inspeed)
    {
      cfsetospeed(&v6, inspeed);
      cfsetispeed(&v6, inspeed);
      v5 = inspeed;
    }

    else
    {
      v5 = cfgetospeed(&v6);
      inspeed = v5;
      if (!v5)
      {
        fatal("Baud rate for %s is 0; need explicit baud rate", &devnam);
      }
    }

    baud_rate = v5;
    if (tcsetattr(a1, 2, &v6) < 0)
    {
      fatal("tcsetattr: %m");
    }

    byte_10004B7EC = 1;
  }
}

void set_up_tty_local(int a1, int a2)
{
  memset(&v5, 0, sizeof(v5));
  if (tcgetattr(a1, &v5) < 0)
  {
    error("tcgetattr: %m");
  }

  else
  {
    *&v5.c_cc[16] = 1;
    c_cflag = v5.c_cflag;
    v5.c_cflag &= ~0x8000uLL;
    if (a2 || !modem)
    {
      v5.c_cflag = c_cflag | 0x8000;
    }

    if (tcsetattr(a1, 0, &v5) < 0)
    {
      fatal("tcsetattr: %m");
    }
  }
}

uint64_t restore_tty(uint64_t result)
{
  if (byte_10004B7EC == 1)
  {
    v1 = result;
    if (!default_device)
    {
      *&byte_10004B7F0[24] &= 0xFFFFFFFFFFFFFFE7;
    }

    if (!hungup)
    {
      if (tcsetattr(result, 2, byte_10004B7F0) < 0 && *__error() != 6)
      {
        warning("tcsetattr: %m");
      }

      result = ioctl(v1, 0x80087467uLL, &unk_10004B838);
    }

    byte_10004B7EC = 0;
  }

  return result;
}

uint64_t setdtr(int a1, int a2)
{
  v3 = 2;
  if (a2)
  {
    return ioctl(a1, 0x8004746CuLL, &v3);
  }

  else
  {
    return ioctl(a1, 0x8004746BuLL, &v3);
  }
}

uint64_t get_pty(int *a1, int *a2, char *a3, uid_t a4)
{
  if (openpty(a1, a2, a3, 0, 0) < 0)
  {
    return 0;
  }

  memset(&v7, 0, sizeof(v7));
  fchown(*a2, a4, 0xFFFFFFFF);
  fchmod(*a2, 0x180u);
  if (tcgetattr(*a2, &v7))
  {
    warning("couldn't get attributes on pty: %m", *&v7.c_iflag);
  }

  else
  {
    *&v7.c_iflag = xmmword_10002EEC0;
    v7.c_cflag = v7.c_cflag & 0xFFFFFFFFFFFFE0FFLL | 0xB00;
    v7.c_lflag = 0;
    if (tcsetattr(*a2, 2, &v7) < 0)
    {
      warning("couldn't set attributes on pty: %m", *&v7.c_iflag);
    }
  }

  return 1;
}

uint64_t open_ppp_loopback()
{
  looped = 1;
  if ((sub_100016E04() & 0x80000000) != 0)
  {
    die(1);
  }

  sub_100016B7C(ppp_sockfd, 512);
  sub_100016FA4(kdebugflag);
  dword_100045294 = -1;
  return ppp_sockfd;
}

void output(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  dump_packet("sent", a2, a3);
  v6 = *(a2 + 2);
  v5 = (a2 + 2);
  if (v6 <= 0xBF)
  {
    v7 = &ppp_sockfd;
  }

  else
  {
    v7 = &dword_100045294;
  }

  if (write(*v7, v5, v3 - 2) < 0 && *__error() != 5)
  {

    error("write: %m");
  }
}

double wait_input(timeval *a1)
{
  xmmword_10004B780 = xmmword_10004B700;
  unk_10004B790 = unk_10004B710;
  xmmword_10004B7A0 = xmmword_10004B720;
  unk_10004B7B0 = unk_10004B730;
  xmmword_10004B740 = xmmword_10004B6C0;
  *algn_10004B750 = *algn_10004B6D0;
  xmmword_10004B760 = xmmword_10004B6E0;
  unk_10004B770 = unk_10004B6F0;
  if (select(dword_10004B7C0 + 1, &xmmword_10004B740, 0, 0, a1) < 0)
  {
    if (*__error() != 4)
    {
      fatal("select: %m");
    }

    result = 0.0;
    xmmword_10004B7A0 = 0u;
    unk_10004B7B0 = 0u;
    xmmword_10004B780 = 0u;
    unk_10004B790 = 0u;
    xmmword_10004B760 = 0u;
    unk_10004B770 = 0u;
    xmmword_10004B740 = 0u;
    *algn_10004B750 = 0u;
  }

  return result;
}

uint64_t wait_input_fd(int a1, int a2)
{
  v6.tv_sec = a2 / 1000;
  *(&v6.tv_usec + 1) = 0;
  v6.tv_usec = a2 % 1000;
  memset(&v8, 0, sizeof(v8));
  if (__darwin_check_fd_set_overflow(a1, &v8, 0))
  {
    *(v8.fds_bits + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << a1;
  }

  while (1)
  {
    v3 = select(a1 + 1, &v8, 0, &v8, &v6);
    v4 = v3;
    v7 = v3;
    if ((v3 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      return v4;
    }
  }

  if (v3)
  {
    if (ioctl(a1, 0x4004667FuLL, &v7, v6.tv_sec, *&v6.tv_usec) == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v7;
    }
  }

  return v4;
}

uint64_t is_ready_fd(int a1)
{
  result = __darwin_check_fd_set_overflow(a1, &xmmword_10004B740, 0);
  if (result)
  {
    return (*(&xmmword_10004B740 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> a1) & 1;
  }

  return result;
}

uint64_t read_packet(_WORD *a1)
{
  *a1 = 1023;
  v1 = a1 + 1;
  if (dword_100045294 < 0)
  {
    v2 = -1;
  }

  else
  {
    v2 = read(dword_100045294, v1, 0x5DEuLL);
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    if (*__error() != 35 && *__error() != 4)
    {
      error("read from socket link: %m");
    }
  }

  if ((ifunit & 0x80000000) == 0)
  {
    v2 = read(ppp_sockfd, v1, 0x5DEuLL);
    if (v2 < 0 && *__error() != 35 && *__error() != 4)
    {
      error("read from socket bundle: %m");
    }
  }

LABEL_12:
  if (v2 >= 1)
  {
    return (v2 + 2);
  }

  else
  {
    return v2;
  }
}

uint64_t get_loop_output()
{
  packet = read_packet(&inpacket_buf);
  if (packet < 1)
  {
    return 0;
  }

  v1 = packet;
  LODWORD(v2) = 0;
  do
  {
    if (loop_frame(&inpacket_buf, v1))
    {
      v2 = 1;
    }

    else
    {
      v2 = v2;
    }

    v1 = read_packet(&inpacket_buf);
  }

  while (v1 > 0);
  return v2;
}

void tty_send_config(uint64_t a1, int a2, int a3, int a4)
{
  v7 = a2;
  if (!hungup && (dword_100045294 & 0x80000000) == 0)
  {
    v6 = 0;
    if (ioctl(dword_100045294, 0x80047457uLL, &v7) < 0)
    {
      fatal("ioctl(PPPIOCSASYNCMAP): %m");
    }

    if (ioctl(dword_100045294, 0x4004745AuLL, &v6) < 0)
    {
      fatal("ioctl (PPPIOCGFLAGS): %m");
    }

    v6 = (a3 != 0) | (2 * (a4 != 0)) | v6 & 0xFFDFFFFC | ((sync_serial != 0) << 21);
    if (ioctl(dword_100045294, 0x80047459uLL, &v6) < 0)
    {
      fatal("ioctl(PPPIOCSFLAGS): %m");
    }

    publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPLCPCompressionPField, a3);
    publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPLCPCompressionACField, a4);
    publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPLCPTransmitACCM, v7);
  }
}

void generic_send_config(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!hungup && (dword_100045294 & 0x80000000) == 0)
  {
    v6 = 0;
    if (ioctl(dword_100045294, 0x4004745AuLL, &v6) < 0)
    {
      fatal("ioctl (PPPIOCGFLAGS): %m");
    }

    v6 = (a3 != 0) | (2 * (a4 != 0)) | v6 & 0xFFFFFFFC;
    if (ioctl(dword_100045294, 0x80047459uLL, &v6) < 0)
    {
      fatal("ioctl(PPPIOCSFLAGS): %m");
    }

    publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPLCPCompressionPField, a3);
    publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPLCPCompressionACField, a4);
  }
}

uint64_t netif_set_mtu(uint64_t a1, int a2)
{
  v4 = 0u;
  v5 = 0u;
  __strlcpy_chk();
  LODWORD(v5) = a2;
  if (ioctl(dword_10004B6BC, 0x80206934uLL, &v4) < 0)
  {
    error("ioctl (SIOCSIFMTU): %m");
  }

  return publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPLCPMTU, a2);
}

uint64_t netif_get_mtu()
{
  v1 = 0u;
  v2 = 0u;
  __strlcpy_chk();
  if ((ioctl(dword_10004B6BC, 0xC0206933uLL, &v1) & 0x80000000) == 0)
  {
    return v2;
  }

  error("ioctl (SIOCGIFMTU): %m");
  return 0;
}

void ppp_hold()
{
  v0 = 0;
  if (ioctl(dword_100045294, 0x4004745AuLL, &v0) < 0)
  {
    warning("ioctl (PPPIOCGFLAGS): %m");
  }

  else
  {
    v0 |= 0x20u;
    if (ioctl(dword_100045294, 0x80047459uLL, &v0) < 0)
    {
      warning("ioctl(PPPIOCSFLAGS): %m");
    }
  }
}

void ppp_cont()
{
  v0 = 0;
  if (ioctl(dword_100045294, 0x4004745AuLL, &v0) < 0)
  {
    warning("ioctl (PPPIOCGFLAGS): %m");
  }

  else
  {
    v0 &= ~0x20u;
    if (ioctl(dword_100045294, 0x80047459uLL, &v0) < 0)
    {
      warning("ioctl(PPPIOCSFLAGS): %m");
    }
  }
}

void tty_set_xaccm(int *result)
{
  if (!hungup && (dword_100045294 & 0x80000000) == 0 && ioctl(dword_100045294, 0x8020744FuLL, result) < 0 && *__error() != 25)
  {

    warning("ioctl(set extended ACCM): %m");
  }
}

uint64_t tty_recv_config(uint64_t result, int a2, uint64_t a3, int a4)
{
  v6 = a2;
  v7 = result;
  if (!hungup)
  {
    result = dword_100045294;
    if ((dword_100045294 & 0x80000000) == 0)
    {
      v5 = 0;
      if (ioctl(dword_100045294, 0x80047452uLL, a3, &v7) < 0)
      {
        fatal("ioctl(PPPIOCSMRU): %m");
      }

      if (ioctl(dword_100045294, 0x80047454uLL, &v6) < 0)
      {
        fatal("ioctl(PPPIOCSRASYNCMAP): %m");
      }

      if (ioctl(dword_100045294, 0x4004745AuLL, &v5) < 0)
      {
        fatal("ioctl (PPPIOCGFLAGS): %m");
      }

      v5 = v5 & 0xFFFFFFEF | (16 * (a4 == 0));
      if (ioctl(dword_100045294, 0x80047459uLL, &v5) < 0)
      {
        fatal("ioctl(PPPIOCSFLAGS): %m");
      }

      publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPLCPMRU, v7);
      return publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPLCPReceiveACCM, v6);
    }
  }

  return result;
}

uint64_t generic_recv_config(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v6 = result;
  if (!hungup)
  {
    result = dword_100045294;
    if ((dword_100045294 & 0x80000000) == 0)
    {
      v5 = 0;
      if (ioctl(dword_100045294, 0x80047452uLL, a3, &v6) < 0)
      {
        fatal("ioctl(PPPIOCSMRU): %m");
      }

      if (ioctl(dword_100045294, 0x4004745AuLL, &v5) < 0)
      {
        fatal("ioctl (PPPIOCGFLAGS): %m");
      }

      v5 = v5 & 0xFFFFFFEF | (16 * (a4 == 0));
      if (ioctl(dword_100045294, 0x80047459uLL, &v5) < 0)
      {
        fatal("ioctl(PPPIOCSFLAGS): %m");
      }

      return publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPLCPMRU, v6);
    }
  }

  return result;
}

uint64_t ccp_test(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = a2;
  v6 = a3;
  v7 = a4;
  if ((ioctl(ppp_sockfd, 0x8010744DuLL, &v5) & 0x80000000) == 0)
  {
    return 1;
  }

  if (*__error() == 55)
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

void ccp_flags_set(uint64_t a1, int a2, int a3)
{
  if (!hungup && (dword_100045294 & 0x80000000) == 0)
  {
    v5 = 0;
    if (ioctl(ppp_sockfd, 0x4004745AuLL, &v5) < 0)
    {
      error("ioctl (PPPIOCGFLAGS): %m");
    }

    else
    {
      v5 = ((a2 != 0) << 6) | ((a3 != 0) << 7) | v5 & 0xFFFFFF3F;
      if (ioctl(ppp_sockfd, 0x80047459uLL, &v5) < 0)
      {
        error("ioctl(PPPIOCSFLAGS): %m");
      }
    }
  }
}

uint64_t ccp_fatal_error()
{
  v1 = 0;
  if ((ioctl(dword_100045294, 0x4004745AuLL, &v1) & 0x80000000) == 0)
  {
    return v1 & 0x800000;
  }

  error("ioctl(PPPIOCGFLAGS): %m");
  return 0;
}

uint64_t get_ppp_stats(uint64_t a1, _DWORD *a2)
{
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  __strlcpy_chk();
  if (ioctl(dword_10004B6BC, 0xC05C697BuLL, &v7) < 0)
  {
    error("Couldn't get PPP statistics: %m");
    return 0;
  }

  else
  {
    v3 = HIDWORD(v8);
    v4 = DWORD2(v9);
    v5 = v10;
    *a2 = DWORD1(v8);
    a2[1] = v4;
    a2[2] = v3;
    a2[3] = v5;
    return 1;
  }
}

uint64_t sifvjcomp(uint64_t a1, int a2, int a3, int a4)
{
  v7 = 0;
  v8 = a4;
  if (ioctl(ppp_sockfd, 0x4004745AuLL, &v7) < 0)
  {
    error("ioctl (PPPIOCGFLAGS): %m");
  }

  else
  {
    v7 = (4 * (a2 != 0)) | (8 * (a3 == 0)) | v7 & 0xFFFFFFF3;
    if (ioctl(ppp_sockfd, 0x80047459uLL, &v7) < 0)
    {
      error("ioctl(PPPIOCSFLAGS): %m");
    }

    else
    {
      if (!a2 || (ioctl(ppp_sockfd, 0x80047451uLL, &v8) & 0x80000000) == 0)
      {
        publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPIPCPCompressionVJ, a2);
        return 1;
      }

      error("ioctl(PPPIOCSMAXCID): %m");
    }
  }

  return 0;
}

uint64_t sifup()
{
  v1 = 0u;
  v2 = 0u;
  __strlcpy_chk();
  if (ioctl(dword_10004B6BC, 0xC0206911uLL, &v1) < 0)
  {
    error("ioctl (SIOCGIFFLAGS): %m");
  }

  else
  {
    LOWORD(v2) = v2 | 1;
    if ((ioctl(dword_10004B6BC, 0x80206910uLL, &v1) & 0x80000000) == 0)
    {
      result = 1;
      byte_10004B7C4 = 1;
      return result;
    }

    error("ioctl(SIOCSIFFLAGS): %m");
  }

  return 0;
}

uint64_t sifnpmode(uint64_t a1, int a2, int a3)
{
  v6[0] = a2;
  v6[1] = a3;
  if ((ioctl(ppp_sockfd, 0x8008744BuLL, v6) & 0x80000000) == 0)
  {
    return 1;
  }

  error("ioctl(set NP %d mode to %d): %m", a2, a3);
  return 0;
}

uint64_t sifnpafmode(uint64_t a1, int a2, int a3)
{
  v6[0] = a2;
  v6[1] = a3;
  if ((ioctl(ppp_sockfd, 0x80087435uLL, v6) & 0x80000000) == 0)
  {
    return 1;
  }

  error("ioctl(set NPAF %d mode to %d): %m", a2, a3);
  return 0;
}

uint64_t sifdown()
{
  v4 = 0u;
  v5 = 0u;
  v3 = 33;
  if (ioctl(ppp_sockfd, 0xC008744CuLL, &v3))
  {
    v0 = 1;
  }

  else
  {
    v0 = HIDWORD(v3) == 1;
  }

  if (v0)
  {
    LODWORD(v3) = 87;
    if (ioctl(ppp_sockfd, 0xC008744CuLL, &v3) || HIDWORD(v3) == 1)
    {
      __strlcpy_chk();
      if (ioctl(dword_10004B6BC, 0xC0206911uLL, &v4) < 0)
      {
        error("ioctl (SIOCGIFFLAGS): %m");
      }

      else
      {
        LOWORD(v5) = v5 & 0xFFFE;
        if ((ioctl(dword_10004B6BC, 0x80206910uLL, &v4) & 0x80000000) == 0)
        {
          byte_10004B7C4 = 0;
          return 1;
        }

        error("ioctl(SIOCSIFFLAGS): %m");
      }
    }
  }

  return 0;
}

uint64_t sifroute(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  if (a4 != -1 && addifroute)
  {
    dword_10004B840 = a4 & a2;
    dword_10004B844 = a4;
    dword_10004B848 = route_interface(1, a4 & a2, a4, 23, &ifname, 0);
  }

  return 1;
}

uint64_t route_interface(int a1, int a2, int a3, char a4, const char *a5, int a6)
{
  v24 = a3;
  v25 = a2;
  v11 = socket(17, 3, 17);
  if (v11 < 0)
  {
    v17 = addr2ascii(2, &v25, 4, v27);
    v18 = addr2ascii(2, &v24, 4, v26);
    error("route_interface: open routing socket failed, %m. (address %s, mask %s, interface %s, host %d).", v17, v18, a5, a6);
  }

  else
  {
    v12 = v11;
    __buf = 0u;
    v29 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    BYTE3(__buf) = a1;
    if (a6)
    {
      v13 = 2053;
    }

    else
    {
      v13 = 2049;
    }

    BYTE2(__buf) = 5;
    DWORD1(v29) = 1;
    *(&__buf + 1) = v13 | 0x300000000;
    WORD6(v33) = 528;
    LODWORD(v34) = a2;
    v14 = strlen(a5);
    WORD6(v34) = 4628;
    if (v14 >= 0xC)
    {
      v15 = 12;
    }

    else
    {
      v15 = v14;
    }

    LOBYTE(v35) = a4;
    BYTE1(v35) = v15;
    __strncpy_chk();
    if (v24)
    {
      HIDWORD(__buf) |= 4u;
      LOWORD(v36) = 528;
      DWORD1(v36) = v24;
    }

    LOWORD(__buf) = 144;
    if ((write(v12, &__buf, 0x90uLL) & 0x8000000000000000) == 0)
    {
      close(v12);
      return 1;
    }

    if (a1 == 2)
    {
      v19 = 7;
    }

    else
    {
      v19 = 3;
    }

    v20 = __error();
    v21 = strerror(*v20);
    v22 = addr2ascii(2, &v25, 4, v27);
    v23 = addr2ascii(2, &v24, 4, v26);
    sys_log(v19, "route_interface: write routing socket failed, %s. (address %s, mask %s, interface %s, host %d).", v21, v22, v23, a5, a6);
    close(v12);
  }

  return 0;
}

uint64_t sifaddr(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  if ((byte_10004B84C & 1) == 0)
  {
    __strlcpy_chk();
    if (ioctl(dword_10004B6BC, 0xC0206950uLL, &v13) < 0)
    {
      v7 = __error();
      error("Couldn't plumb IP to the interface: %d %m", *v7);
    }

    byte_10004B84C = 1;
  }

  __strlcpy_chk();
  *(&v16 + 1) = 0;
  LODWORD(v16) = 528;
  DWORD1(v16) = a2;
  *(&v17 + 1) = 0;
  LODWORD(v17) = 528;
  DWORD1(v17) = v5;
  v18 = 0uLL;
  if (a4)
  {
    LOWORD(v18) = 528;
    DWORD1(v18) = a4;
  }

  v13 = 0u;
  v14 = 0u;
  __strlcpy_chk();
  if (ioctl(dword_10004B6BC, 0x80206919uLL, &v13) < 0 && *__error() != 49)
  {
    warning("Couldn't remove interface address: %m");
  }

  v8 = ioctl(dword_10004B6BC, 0x8040691AuLL, &v15);
  if ((v8 & 0x80000000) != 0)
  {
    if (*__error() != 17)
    {
      error("Couldn't set interface address: %m");
      return 0;
    }

    warning("Couldn't set interface address: Address %I already exists", a2);
  }

  dword_10004B7C8 = a2;
  dword_10004B7CC = v5;
  if (looplocal)
  {
    v10 = ppp_sockfd;
    v11 = sub_100016BE8(ppp_sockfd);
    sub_100016B7C(v10, v11 | 0x1000000);
    v8 = route_interface(1, a2, 0, 23, &ifname, 1);
  }

  sifroute(v8, a2, v9, a4);
  publish_stateaddr(a2, v5);
  return 1;
}

CFMutableDictionaryRef publish_stateaddr(unsigned int a1, unsigned int a2)
{
  if (!cfgCache)
  {
    return 0;
  }

  result = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (result)
  {
    v5 = result;
    Mutable = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a1, BYTE1(a1), BYTE2(a1), HIBYTE(a1));
      if (v8)
      {
        v9 = v8;
        CFArrayAppendValue(v7, v8);
        CFRelease(v9);
        CFDictionarySetValue(v5, kSCPropNetIPv4Addresses, v7);
      }

      CFRelease(v7);
    }

    v10 = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
    if (v10)
    {
      v11 = v10;
      v12 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a2, BYTE1(a2), BYTE2(a2), HIBYTE(a2));
      if (v12)
      {
        v13 = v12;
        CFArrayAppendValue(v11, v12);
        CFRelease(v13);
        CFDictionarySetValue(v5, kSCPropNetIPv4DestAddresses, v11);
      }

      CFRelease(v11);
    }

    v14 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a1, BYTE1(a1), BYTE2(a1), HIBYTE(a1));
    if (v14)
    {
      v15 = v14;
      CFDictionarySetValue(v5, kSCPropNetIPv4Router, v14);
      CFRelease(v15);
    }

    v16 = CFStringCreateWithFormat(0, 0, @"%s", &ifname);
    if (v16)
    {
      v17 = v16;
      CFDictionarySetValue(v5, kSCPropInterfaceName, v16);
      CFRelease(v17);
    }

    if (qword_10004B7D8)
    {
      v18 = CFStringCreateWithFormat(0, 0, @"%s", qword_10004B7D8);
      if (v18)
      {
        v19 = v18;
        CFDictionarySetValue(v5, @"NetworkSignature", v18);
        CFRelease(v19);
      }
    }

    if (qword_10004B7E0)
    {
      CFDictionarySetValue(v5, @"ServerAddress", qword_10004B7E0);
    }

    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceidRef, kSCEntNetIPv4);
    if (NetworkServiceEntity)
    {
      v21 = NetworkServiceEntity;
      if (!sub_100019DA0(NetworkServiceEntity, v5))
      {
        v22 = SCError();
        v23 = SCErrorString(v22);
        warning("SCDynamicStoreSetValue IP %s failed: %s\n", &ifname, v23);
      }

      CFRelease(v21);
    }

    CFRelease(v5);
    return 1;
  }

  return result;
}

uint64_t uifaddr(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  cifroute();
  if ((byte_10004B84C & 1) == 0)
  {
    error("Interface should have been plumbed already");
    return 0xFFFFFFFFLL;
  }

  v41 = 0u;
  v39 = 0u;
  v40 = 0u;
  __strlcpy_chk();
  *(&v42 + 1) = 0;
  LODWORD(v42) = 528;
  DWORD1(v42) = a2;
  *(&v43 + 1) = 0;
  LODWORD(v43) = 528;
  DWORD1(v43) = a3;
  v44 = 0uLL;
  if (a4)
  {
    LOWORD(v44) = 528;
    DWORD1(v44) = a4;
  }

  v39 = 0u;
  v40 = 0u;
  __strlcpy_chk();
  if (ioctl(dword_10004B6BC, 0x80206919uLL, &v39) < 0 && *__error() != 49)
  {
    warning("Couldn't remove interface address: %m");
  }

  v7 = ioctl(dword_10004B6BC, 0x8040691AuLL, &v41);
  if ((v7 & 0x80000000) != 0)
  {
    if (*__error() != 17)
    {
      error("Couldn't set interface address: %m");
      return 0;
    }

    warning("Couldn't set interface address: Address %I already exists", a2);
  }

  dword_10004B7C8 = a2;
  dword_10004B7CC = a3;
  sifroute(v7, a2, v8, a4);
  if (cfgCache)
  {
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceidRef, kSCEntNetIPv4);
    if (NetworkServiceEntity)
    {
      v10 = NetworkServiceEntity;
      if (publish_dict)
      {
        Value = CFDictionaryGetValue(publish_dict, NetworkServiceEntity);
        v12 = Value;
        if (Value)
        {
          CFRetain(Value);
LABEL_18:
          v14 = CFGetTypeID(v12);
          if (v14 == CFDictionaryGetTypeID())
          {
            MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v12);
            CFRelease(v12);
            if (MutableCopy)
            {
              v16 = CFGetTypeID(MutableCopy);
              if (v16 == CFDictionaryGetTypeID())
              {
                Mutable = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
                if (Mutable)
                {
                  v18 = Mutable;
                  v19 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a2, BYTE1(a2), BYTE2(a2), BYTE3(a2), v39, v40, v41, v42, v43, v44);
                  if (v19)
                  {
                    v20 = v19;
                    CFArrayAppendValue(v18, v19);
                    CFRelease(v20);
                    CFDictionarySetValue(MutableCopy, kSCPropNetIPv4Addresses, v18);
                  }

                  CFRelease(v18);
                }

                v21 = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
                if (v21)
                {
                  v22 = v21;
                  v23 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a3, BYTE1(a3), BYTE2(a3), HIBYTE(a3));
                  if (v23)
                  {
                    v24 = v23;
                    CFArrayAppendValue(v22, v23);
                    CFRelease(v24);
                    CFDictionarySetValue(MutableCopy, kSCPropNetIPv4DestAddresses, v22);
                  }

                  CFRelease(v22);
                }

                v25 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a2, BYTE1(a2), BYTE2(a2), BYTE3(a2));
                if (v25)
                {
                  v26 = v25;
                  CFDictionarySetValue(MutableCopy, kSCPropNetIPv4Router, v25);
                  CFRelease(v26);
                }

                v27 = CFStringCreateWithFormat(0, 0, @"%s", &ifname);
                if (v27)
                {
                  v28 = v27;
                  CFDictionarySetValue(MutableCopy, kSCPropInterfaceName, v27);
                  CFRelease(v28);
                }

                if (qword_10004B7D8)
                {
                  v29 = CFStringCreateWithFormat(0, 0, @"%s", qword_10004B7D8);
                  if (v29)
                  {
                    v30 = v29;
                    CFDictionarySetValue(MutableCopy, @"NetworkSignature", v29);
                    CFRelease(v30);
                  }
                }

                if (qword_10004B7E0)
                {
                  CFDictionarySetValue(MutableCopy, @"ServerAddress", qword_10004B7E0);
                }

                if (!sub_100019DA0(v10, MutableCopy))
                {
                  v31 = SCError();
                  SCErrorString(v31);
                  warning("SCDynamicStoreSetValue IP %s failed: %s\n");
                }
              }

              else
              {
                v38 = SCError();
                SCErrorString(v38);
                warning("CFDictionaryCreateMutableCopy IP %s failed: %s\n");
              }

              v35 = MutableCopy;
              goto LABEL_47;
            }

            v36 = SCError();
            v37 = SCErrorString(v36);
            warning("CFDictionaryCreateMutableCopy IP %s failed: %s\n", &ifname, v37);
            goto LABEL_48;
          }

          v32 = 0;
LABEL_42:
          v33 = SCError();
          v34 = SCErrorString(v33);
          warning("SCDynamicStoreCopyValue IP %s failed: %s\n", &ifname, v34);
          if ((v32 & 1) == 0)
          {
            v35 = v12;
LABEL_47:
            CFRelease(v35);
          }

LABEL_48:
          CFRelease(v10);
          return 1;
        }
      }

      else
      {
        v12 = SCDynamicStoreCopyValue(cfgCache, NetworkServiceEntity);
        if (v12)
        {
          goto LABEL_18;
        }
      }

      v32 = 1;
      goto LABEL_42;
    }
  }

  return 1;
}

uint64_t unpublish_dict(CFStringRef entity)
{
  if (!cfgCache)
  {
    return 0;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceidRef, entity);
  if (!NetworkServiceEntity)
  {
    return 12;
  }

  v2 = NetworkServiceEntity;
  if (publish_dict)
  {
    CFDictionaryRemoveValue(publish_dict, NetworkServiceEntity);
  }

  v3 = SCDynamicStoreRemoveValue(cfgCache, v2) == 0;
  CFRelease(v2);
  return v3;
}

uint64_t sif6addr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = socket(30, 2, 0);
  if (v5 < 0)
  {
    error("Can't create IPv6 socket: %m");
  }

  else
  {
    v6 = v5;
    if (if_nametoindex(&ifname))
    {
      memset(v19, 0, sizeof(v19));
      __strlcpy_chk();
      if (ioctl(v6, 0xC080696EuLL, v19) < 0)
      {
        error("sif6addr: can't attach IPv6 protocol: %m", v8);
      }

      else
      {
        v16 = 0u;
        v17 = 0;
        *&v13[16] = 0u;
        v12 = 0u;
        *v13 = 0u;
        v10 = 0u;
        v11 = 0u;
        __strlcpy_chk();
        LOWORD(v11) = 7708;
        WORD4(v11) = -32514;
        *&v12 = a2;
        WORD5(v11) = htons();
        WORD6(v12) = 7708;
        *&v13[4] = __PAIR32__(WORD5(v11), -32514);
        *&v13[12] = a3;
        *&v13[24] = 7708;
        v14 = -1;
        v15 = -1;
        v18 = -1;
        if ((ioctl(v6, 0xC0806982uLL, &v10) & 0x80000000) == 0)
        {
          close(v6);
          return 1;
        }

        error("sif6addr: can't set LL address: %m", v9);
      }
    }

    else
    {
      error("sifaddr6: no interface %s");
    }

    close(v6);
  }

  return 0;
}

uint64_t cif6addr()
{
  v0 = socket(30, 2, 0);
  if (v0 < 0)
  {
    error("Can't create IPv6 socket: %m");
  }

  else
  {
    v1 = v0;
    memset(v4, 0, sizeof(v4));
    memset(v3, 0, sizeof(v3));
    __strlcpy_chk();
    if ((ioctl(v1, 0xC0206951uLL, v4) & 0x80000000) == 0)
    {
      close(v1);
      return 1;
    }

    __strlcpy_chk();
    if (ioctl(v1, 0xC1206983uLL, v3) < 0)
    {
      warning("Can't stop LL address: %m");
    }

    __strlcpy_chk();
    if (ioctl(v1, 0xC120696FuLL, v3) < 0)
    {
      warning("Can't detach IPv6 protocol: %m");
    }

    close(v1);
  }

  return 0;
}

uint64_t ether_to_eui64(uint64_t a1)
{
  v2 = IOServiceMatching("IOEthernetInterface");
  if (v2)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v4 = Mutable;
      CFDictionarySetValue(Mutable, @"IOPrimaryInterface", kCFBooleanTrue);
      CFDictionarySetValue(v2, @"IOPropertyMatch", v4);
      CFRelease(v4);
    }
  }

  *existing = 0;
  MatchingServices = IOServiceGetMatchingServices(kIOMasterPortDefault, v2, existing);
  if (MatchingServices)
  {
    ParentEntry = MatchingServices;
LABEL_6:
    warning("Can't get hardware interface address for en0 (error = %d)\n", ParentEntry);
    return 0;
  }

  v15 = 0;
  *buffer = 0;
  v8 = IOIteratorNext(existing[0]);
  if (v8)
  {
    v9 = v8;
    do
    {
      ParentEntry = IORegistryEntryGetParentEntry(v9, "IOService", &existing[1]);
      if (!ParentEntry)
      {
        CFProperty = IORegistryEntryCreateCFProperty(existing[1], @"IOMACAddress", kCFAllocatorDefault, 0);
        if (CFProperty)
        {
          v11 = CFProperty;
          v17.location = 0;
          v17.length = 6;
          CFDataGetBytes(CFProperty, v17, buffer);
          CFRelease(v11);
        }

        IOObjectRelease(existing[1]);
      }

      IOObjectRelease(v9);
      v9 = IOIteratorNext(existing[0]);
    }

    while (v9);
    IOObjectRelease(existing[0]);
    if (ParentEntry)
    {
      goto LABEL_6;
    }
  }

  else
  {
    IOObjectRelease(existing[0]);
  }

  if (*buffer == dword_10004B84D && v15 == word_10004B851)
  {
    return 0;
  }

  if (*buffer == dword_100045298 && v15 == word_10004529C)
  {
    return 0;
  }

  *a1 = buffer[0] | 2;
  *(a1 + 1) = *&buffer[1];
  *(a1 + 3) = -257;
  *(a1 + 5) = buffer[3];
  *(a1 + 6) = v15;
  return 1;
}

void ppp_create_ipv6_dummy_primary(int a1)
{
  valuePtr = 1;
  if (noipv6override)
  {
    v1 = 1;
  }

  else
  {
    v1 = cfgCache == 0;
  }

  if (!v1 && serviceidRef != 0)
  {
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceidRef, kSCEntNetIPv6);
    if (NetworkServiceEntity)
    {
      v5 = NetworkServiceEntity;
      if (a1)
      {
        unpublish_dict(NetworkServiceEntity);
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v7 = Mutable;
          v8 = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
          if (v8)
          {
            v9 = v8;
            CFArrayAppendValue(v8, @"::1");
            CFDictionarySetValue(v7, kSCPropNetIPv6Addresses, v9);
            CFRelease(v9);
          }

          CFDictionarySetValue(v7, kSCPropNetIPv6Router, @"::1");
          v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
          if (v10)
          {
            v11 = v10;
            CFDictionarySetValue(v7, kSCPropNetOverridePrimary, v10);
            CFRelease(v11);
          }

          CFDictionarySetValue(v7, @"IsNULL", kCFBooleanTrue);
          v12 = CFStringCreateWithFormat(0, 0, @"%s", &ifname);
          if (v12)
          {
            v13 = v12;
            CFDictionarySetValue(v7, kSCPropInterfaceName, v12);
            CFRelease(v13);
          }

          sub_100019DA0(v5, v7);
          CFRelease(v7);
        }
      }

      CFRelease(v5);
    }
  }
}