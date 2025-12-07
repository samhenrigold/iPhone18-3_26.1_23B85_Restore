uint64_t sub_1818E6124(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[4];
  v6 = *a1 + v5;
  if ((v6 < 0) ^ __OFADD__(*a1, v5) | (v6 == 0))
  {
    if ((a1[5] & 0x10) == 0)
    {
      return 0;
    }

    v6 = 1;
  }

  if (sub_1818BB128(a1, v6, 1, a4))
  {
    return 7;
  }

  bzero((*(a1 + 1) + a1[4]), *a1);
  result = 0;
  a1[4] += *a1;
  *(a1 + 10) &= 0xF9FFu;
  return result;
}

uint64_t sub_1818E61B4(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (!*a3)
  {
    v6 = *(result + 72);
    v5 = *(result + 80);
    v7 = *(a2 + 80);
    v8 = *(result + 9);
    if (*(a2 + 4) == 1)
    {
      v9 = 100;
    }

    else
    {
      v9 = 0;
    }

    v10 = (v5 + v8);
    v11 = __rev16(*(v5 + v8 + 5));
    v12 = result;
    memcpy((v7 + v11), (v5 + v11), (*(v6 + 56) - v11));
    memcpy((v7 + v9), v10, *(v12 + 18) + 2 * *(v12 + 24));
    *a2 = 0;
    result = sub_1818C6DCC(a2);
    if (!result)
    {
      result = sub_1819454C4(a2);
      if (!result)
      {
        if (!*(v6 + 33))
        {
          return result;
        }

        result = sub_181939484(a2);
      }
    }

    *a3 = result;
  }

  return result;
}

uint64_t sub_1818E6288(uint64_t a1, int a2, _BYTE *a3, int a4, unsigned __int8 *a5)
{
  v5 = (a2 - a4);
  if (a2 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a2;
  }

  if (v6 < 0)
  {
    sub_1819012D0(37608);
    return v5;
  }

  if (!a3)
  {
    if (a5)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 0;
    }

    if (result)
    {
      return result;
    }

    return v5;
  }

  if (!a5)
  {
    return 1;
  }

  if (!v6)
  {
    return v5;
  }

  v7 = v6 + 1;
  while (1)
  {
    v8 = *a3;
    if (!*a3)
    {
      break;
    }

    LODWORD(v8) = byte_181A20298[v8];
    v9 = byte_181A20298[*a5];
    if (v8 != v9)
    {
      goto LABEL_21;
    }

    ++a3;
    ++a5;
    if (--v7 <= 1)
    {
      return v5;
    }
  }

  v9 = byte_181A20298[*a5];
LABEL_21:
  result = (v8 - v9);
  if (!result)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1818E6334(unsigned __int8 *a1, double *a2, int a3, int a4)
{
  *a2 = 0.0;
  if (!a3)
  {
    return 0;
  }

  if (a4 == 1)
  {
    v5 = 1;
    v6 = a1;
    result = 1;
  }

  else
  {
    LODWORD(v8) = 3 - a4;
    if (3 - a4 >= (a3 & 0xFFFFFFFE))
    {
      result = 1;
    }

    else
    {
      v8 = v8;
      while (!a1[v8])
      {
        v8 += 2;
        if (v8 >= (a3 & 0xFFFFFFFE))
        {
          result = 1;
          goto LABEL_11;
        }
      }

      result = 4294967196;
    }

LABEL_11:
    a3 = v8 ^ 1;
    v6 = &a1[a4 & 1];
    v5 = 2;
  }

  v9 = &a1[a3];
  if (v6 >= v9)
  {
    return 0;
  }

  while (1)
  {
    v10 = *v6;
    if ((byte_181A204C8[*v6] & 1) == 0)
    {
      break;
    }

    v6 += v5;
    if (v6 >= v9)
    {
      return 0;
    }
  }

  if (v10 == 43 || v10 == 45)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  v13 = &v6[v12];
  if (v13 >= v9)
  {
    v14 = 0;
    v19 = 1;
    goto LABEL_66;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *v13;
    if ((v17 - 58) < 0xFFFFFFFFFFFFFFF6)
    {
      break;
    }

    v16 = v17 + 10 * v16 - 48;
    v13 += v5;
    v18 = v16 <= 0x1999999999999997 || v13 >= v9;
    if (!v18)
    {
      do
      {
        if (*v13 - 58 < 0xFFFFFFFFFFFFFFF6)
        {
          break;
        }

        v13 += v5;
        ++v15;
      }

      while (v13 < v9);
    }

    ++v14;
    if (v13 >= v9)
    {
      goto LABEL_53;
    }
  }

  if (v17 == 46)
  {
    result = (result + 1);
    for (v13 += v5; v13 < v9; v13 += v5)
    {
      v20 = *v13;
      if ((v20 - 58) < 0xFFFFFFFFFFFFFFF6)
      {
        break;
      }

      if (v16 < 0x1999999999999998)
      {
        v16 = v20 + 10 * v16 - 48;
        --v15;
        ++v14;
      }
    }
  }

  if (v13 >= v9)
  {
LABEL_53:
    v25 = 0;
    v23 = 1;
    v19 = 1;
    goto LABEL_54;
  }

  if ((*v13 | 0x20) != 0x65)
  {
    v25 = 0;
    v23 = 1;
LABEL_120:
    v19 = 1;
    goto LABEL_123;
  }

  v13 += v5;
  result = (result + 1);
  if (v13 >= v9)
  {
    v25 = 0;
    v19 = 0;
    v23 = 1;
    goto LABEL_54;
  }

  v21 = *v13;
  v22 = &v13[v5];
  if (v21 == 45)
  {
    v13 += v5;
    v23 = -1;
  }

  else
  {
    v23 = 1;
  }

  if (v21 == 43)
  {
    v13 = v22;
    v23 = 1;
  }

  if (v13 < v9)
  {
    v24 = *v13;
    if ((v24 - 58) >= 0xFFFFFFFFFFFFFFF6)
    {
      v25 = v24 - 48;
      for (v13 += v5; v13 < v9; v13 += v5)
      {
        v53 = *v13;
        if ((v53 - 58) < 0xFFFFFFFFFFFFFFF6)
        {
          break;
        }

        v54 = v53 + 10 * v25 - 48;
        v25 = v25 >= 10000 ? 10000 : v54;
      }

      goto LABEL_120;
    }
  }

  v25 = 0;
  v19 = 0;
LABEL_123:
  while (v13 < v9 && (byte_181A204C8[*v13] & 1) != 0)
  {
    v13 += v5;
  }

LABEL_54:
  if (!v16)
  {
LABEL_66:
    v30 = -0.0;
    if (v10 != 45)
    {
      v30 = 0.0;
    }

    goto LABEL_68;
  }

  v26 = v15 + v25 * v23;
  if (v26 < 1 || v16 >= 0x19999999999998CCLL)
  {
    if ((v26 & 0x80000000) == 0 || v16 % 0xA)
    {
      v29 = v16;
    }

    else
    {
      v28 = -v26;
      v29 = v16;
      do
      {
        v29 /= 0xAuLL;
        --v28;
      }

      while (v28 && v29 == 10 * ((v29 * 0x199999999999999AuLL) >> 64));
      v26 = -v28;
    }
  }

  else
  {
    do
    {
      v34 = v26;
      v29 = 10 * v16;
      --v26;
      if (v34 < 2)
      {
        break;
      }

      v18 = v16 >= 0x28F5C28F5C28F48;
      v16 *= 10;
    }

    while (!v18);
  }

  v35 = v29;
  v56 = v29;
  v36 = 0.0;
  if (v29 <= 1.84467441e19)
  {
    if (v29 >= v35)
    {
      v36 = (v29 - v35);
    }

    else
    {
      v36 = -(v35 - v29);
    }
  }

  v55 = v36;
  if (v26 <= 0)
  {
    if (v26 > -100)
    {
      v44 = v26;
    }

    else
    {
      do
      {
        v44 = v26 + 100;
        *&v45 = *&v35 & 0xFFFFFFFFFC000000;
        v66 = (v56 - v45) * 9.99999999e-101 + v45 * 1.18108707e-109;
        v60 = v45 * 9.99999999e-101 - (v45 * 9.99999999e-101 + v66) + v66 + (v56 - v45) * 1.18108707e-109 + v55 * 1.0e-100 + v56 * -1.99918998e-117;
        v56 = v45 * 9.99999999e-101 + v66 + v60;
        v46 = v45 * 9.99999999e-101 + v66;
        v35 = v56;
        v36 = v60 + v46 - v56;
        v55 = v36;
        v18 = __CFADD__(v26, 199);
        v26 += 100;
      }

      while (!v18);
    }

    if (v44 > -10)
    {
      v47 = v44;
    }

    else
    {
      do
      {
        v47 = v44 + 10;
        *&v48 = *&v35 & 0xFFFFFFFFFC000000;
        v67 = (v56 - v48) * 9.99999996e-11 + v48 * 3.99580284e-19;
        v61 = v48 * 9.99999996e-11 - (v48 * 9.99999996e-11 + v67) + v67 + (v56 - v48) * 3.99580284e-19 + v55 * 1.0e-10 + v56 * -3.64321973e-27;
        v56 = v48 * 9.99999996e-11 + v67 + v61;
        v49 = v48 * 9.99999996e-11 + v67;
        v35 = v56;
        v36 = v61 + v49 - v56;
        v55 = v36;
        v18 = __CFADD__(v44, 19);
        v44 += 10;
      }

      while (!v18);
    }

    if (v47 < 0)
    {
      do
      {
        *&v50 = *&v35 & 0xFFFFFFFFFC000000;
        v68 = (v56 - v50) * 0.0999999996 + v50 * 3.72529035e-10;
        v62 = v50 * 0.0999999996 - (v50 * 0.0999999996 + v68) + v68 + (v56 - v50) * 3.72529035e-10 + v55 * 0.1 + v56 * -5.55111512e-18;
        v56 = v50 * 0.0999999996 + v68 + v62;
        v51 = v50 * 0.0999999996 + v68;
        v35 = v56;
        v36 = v62 + v51 - v56;
        v55 = v36;
        v18 = __CFADD__(v47++, 1);
      }

      while (!v18);
    }
  }

  else
  {
    if (v26 >= 0x64)
    {
      do
      {
        v26 -= 100;
        *&v37 = *&v35 & 0xFFFFFFFFFC000000;
        v63 = (v56 - v37) * 9.99999995e99 + v37 * 5.15323793e91;
        v57 = v37 * 9.99999995e99 - (v37 * 9.99999995e99 + v63) + v63 + (v56 - v37) * 5.15323793e91 + v55 * 1.0e100 + v56 * -1.59028911e83;
        v56 = v37 * 9.99999995e99 + v63 + v57;
        v38 = v37 * 9.99999995e99 + v63;
        v35 = v56;
        v36 = v57 + v38 - v56;
        v55 = v36;
      }

      while (v26 > 0x63);
    }

    if (v26 >= 0xA)
    {
      do
      {
        v26 -= 10;
        *&v39 = *&v35 & 0xFFFFFFFFFC000000;
        v64 = (v56 - v39) * 1.0e10 + v39 * 0.0;
        v58 = v39 * 1.0e10 - (v39 * 1.0e10 + v64) + v64 + (v56 - v39) * 0.0 + v55 * 1.0e10 + v56 * 0.0;
        v56 = v39 * 1.0e10 + v64 + v58;
        v40 = v39 * 1.0e10 + v64;
        v35 = v56;
        v36 = v58 + v40 - v56;
        v55 = v36;
      }

      while (v26 > 9);
    }

    if (v26)
    {
      v41 = v26 + 1;
      do
      {
        *&v42 = *&v35 & 0xFFFFFFFFFC000000;
        v65 = (v56 - v42) * 10.0 + v42 * 0.0;
        v59 = v42 * 10.0 - (v42 * 10.0 + v65) + v65 + (v56 - v42) * 0.0 + v55 * 10.0 + v56 * 0.0;
        v56 = v42 * 10.0 + v65 + v59;
        v43 = v42 * 10.0 + v65;
        v35 = v56;
        v36 = v59 + v43 - v56;
        v55 = v36;
        --v41;
      }

      while (v41 > 1);
    }
  }

  v52 = v35 + v36;
  *a2 = v52;
  if (v10 == 45)
  {
    v30 = -v52;
LABEL_68:
    *a2 = v30;
  }

  if (!v19 || (v13 == v9 ? (v31 = v14 < 1) : (v31 = 1), !v31 ? (v32 = result <= 0) : (v32 = 1), v32))
  {
    if (result > 1)
    {
      v33 = result != 3 && v19 == 0;
      if (!v33 && v14 > 0)
      {
        return 0xFFFFFFFFLL;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1818E6D94(uint64_t a1)
{
  v2 = *(a1 + 328);
  v3 = *(a1 + 200);
  v4 = *(a1 + 184);
  if (v4 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = *(a1 + 128);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 120) + 8);
    do
    {
      if (!*v7)
      {
        *v7 = *(a1 + 96);
      }

      v7 += 7;
      --v6;
    }

    while (v6);
  }

  v8 = *(a1 + 96);
  if (v8)
  {
    v9 = v4 + v4 * ((v8 - 1) / v4);
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 96) = v9;
  *(a1 + 104) = v9;
  if (*(a1 + 11) || *(a1 + 9) == 4 || (v10 = *(a1 + 72), *v10) && ((*(*v10 + 96))(v10) & 0x200) != 0)
  {
    *v2 = 0xD763A120F905D5D9;
    *(v2 + 8) = -1;
  }

  else
  {
    *(v2 + 8) = 0;
    *v2 = 0;
  }

  if (*(a1 + 9) != 4)
  {
    sqlite3_initialize();
    arc4random_buf((a1 + 56), 4uLL);
  }

  *(v2 + 12) = bswap32(*(a1 + 56));
  *(v2 + 16) = bswap32(*(a1 + 36));
  *(v2 + 20) = bswap32(*(a1 + 184));
  *(v2 + 24) = bswap32(*(a1 + 200));
  bzero((v2 + 28), v5 - 28);
  v11 = -v5;
  while (1)
  {
    v11 += v5;
    if (v11 >= *(a1 + 184))
    {
      break;
    }

    result = (*(**(a1 + 80) + 24))(*(a1 + 80), v2, v5, *(a1 + 96));
    *(a1 + 96) += v5;
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void sqlite3_randomness(int N, void *P)
{
  sqlite3_initialize();
  if (N >= 1 && P)
  {

    arc4random_buf(P, N);
  }
}

uint64_t sub_1818E6F74(int a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  bzero(a3, a2);
  dword_1ED456C50 = getpid();
  v6 = sub_18192ACE0("/dev/urandom", 0, 0, 0, 0);
  if ((v6 & 0x80000000) != 0)
  {
    *__strerrbuf = 0;
    time(__strerrbuf);
    *a3 = *__strerrbuf;
    *(a3 + 2) = dword_1ED456C50;
    return 12;
  }

  else
  {
    v7 = v6;
      ;
    }

    if (off_1EE341AE0(v7))
    {
      v8 = *__error();
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v8, __strerrbuf, 0x4FuLL);
      sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 51667, v8, "close", &byte_181A2878D, __strerrbuf);
    }
  }

  return v4;
}

uint64_t sub_1818E70E0(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2 - 1;
  if (*a1 < 0xF81u)
  {
LABEL_9:
    v6 = 0;
    *(a1 + (v2 >> 3) + 16) |= 1 << (v2 & 7);
  }

  else
  {
    while (1)
    {
      v3 = *(a1 + 8);
      v4 = (a1 + 16);
      if (!v3)
      {
        break;
      }

      v5 = v2 / v3;
      a1 = *(v4 + v2 / v3);
      if (!a1)
      {
        a1 = sub_181902484(512, 0x102204086A6B74CLL);
        if (!a1)
        {
          *(v4 + v5) = 0;
          return 7;
        }

        *(a1 + 480) = 0u;
        *(a1 + 496) = 0u;
        *(a1 + 448) = 0u;
        *(a1 + 464) = 0u;
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
        *a1 = v3;
        *(v4 + v5) = a1;
      }

      v2 %= v3;
      if (*a1 <= 0xF80u)
      {
        goto LABEL_9;
      }
    }

    v7 = v2 + 1;
    v8 = v2 % 0x7C;
    v9 = *(v4 + v8);
    if (v9)
    {
      while (v9 != v7)
      {
        if ((v8 + 1) <= 0x7B)
        {
          v8 = (v8 + 1);
        }

        else
        {
          v8 = 0;
        }

        v9 = *(v4 + v8);
        if (!v9)
        {
          v10 = *(a1 + 4);
          if (v10 >= 0x3E)
          {
            goto LABEL_21;
          }

          goto LABEL_17;
        }
      }

      return 0;
    }

    v10 = *(a1 + 4);
    if (v10 < 0x7B)
    {
LABEL_17:
      v6 = 0;
      *(a1 + 4) = v10 + 1;
      *(v4 + v8) = v7;
      return v6;
    }

LABEL_21:
    v12 = a1;
    v13 = sub_181902484(496, 0x100004051E21E55);
    if (!v13)
    {
      return 7;
    }

    v14 = v13;
    memcpy(v13, v4, 0x1F0uLL);
    *v4 = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    v4[4] = 0u;
    v4[5] = 0u;
    v4[6] = 0u;
    v4[7] = 0u;
    v4[8] = 0u;
    v4[9] = 0u;
    v4[10] = 0u;
    v4[11] = 0u;
    v4[12] = 0u;
    v4[13] = 0u;
    v4[14] = 0u;
    v4[15] = 0u;
    v4[16] = 0u;
    v4[17] = 0u;
    v4[18] = 0u;
    v4[19] = 0u;
    v4[20] = 0u;
    v4[21] = 0u;
    v4[22] = 0u;
    v4[23] = 0u;
    v4[24] = 0u;
    v4[25] = 0u;
    v4[26] = 0u;
    v4[27] = 0u;
    v4[28] = 0u;
    v4[29] = 0u;
    v4[30] = 0u;
    if (*v12 % 0x3Eu)
    {
      v15 = *v12 / 0x3Eu + 1;
    }

    else
    {
      v15 = *v12 / 0x3Eu;
    }

    if (v15 <= 0xF80)
    {
      v15 = 3968;
    }

    v12[2] = v15;
    v6 = sub_1818E70E0(v12, v7);
    for (i = 0; i != 496; i += 4)
    {
      v17 = *&v14[i];
      if (v17)
      {
        v6 = sub_1818E70E0(v12, v17) | v6;
      }
    }

    v18 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_37:
      (*v18)(v14);
      return v6;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v14);
    --qword_1ED456A90;
    off_1ED452EB0(v14);
    v14 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v18 = &xmmword_1ED452F28;
      goto LABEL_37;
    }
  }

  return v6;
}

uint64_t sub_1818E73DC(uint64_t a1, int a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  result = *(a1 + 48);
  if (result)
  {
    return result;
  }

  if (!*(a1 + 344))
  {
    while (1)
    {
      v5 = *(a1 + 22);
      if (v5 >= 4 && v5 != 5)
      {
        break;
      }

      if (*(a1 + 17))
      {
        goto LABEL_13;
      }

      result = (*(**(a1 + 72) + 56))(*(a1 + 72), 4);
      if (result != 5)
      {
        if (result)
        {
          return result;
        }

LABEL_13:
        *(a1 + 22) = 4;
        break;
      }

      if (!(*(a1 + 232))(*(a1 + 240)))
      {
        return 5;
      }
    }
  }

  if (*(a1 + 11))
  {
    goto LABEL_18;
  }

  if (**(a1 + 80) && *(a1 + 9) != 4)
  {
    v9 = *(a1 + 72);
    if (*v9)
    {
      v10 = (*(*v9 + 96))(v9);
      if ((v10 & 0x200) != 0)
      {
        v11 = 1;
LABEL_43:
        if ((v10 & 0x400) == 0)
        {
          if (*(a1 + 14) | (16 * (*(a1 + 14) == 3)))
          {
            result = (*(**(a1 + 80) + 40))(*(a1 + 80));
            if (result)
            {
              return result;
            }
          }
        }

        *(a1 + 104) = *(a1 + 96);
        v15 = a2 ? v11 : 1;
        if ((v15 & 1) == 0)
        {
          *(a1 + 52) = 0;
          result = sub_1818E6D94(a1);
          if (result)
          {
            return result;
          }
        }

        goto LABEL_18;
      }
    }

    else
    {
      v10 = 0;
    }

    v16 = 0xD763A120F905D5D9;
    v17 = bswap32(*(a1 + 52));
    v12 = *(a1 + 96);
    if (v12)
    {
      v13 = *(a1 + 184) + *(a1 + 184) * ((v12 - 1) / *(a1 + 184));
    }

    else
    {
      v13 = 0;
    }

    result = (*(**(a1 + 80) + 16))(*(a1 + 80), v18, 8, v13);
    if (!result)
    {
      if (v18[0] != 0xD763A120F905D5D9)
      {
LABEL_37:
        if ((v10 & 0x400) == 0)
        {
          if (*(a1 + 12))
          {
            if (*(a1 + 14))
            {
              result = (*(**(a1 + 80) + 40))(*(a1 + 80));
              if (result)
              {
                return result;
              }
            }
          }
        }

        result = (*(**(a1 + 80) + 24))(*(a1 + 80), &v16, 12, *(a1 + 104));
        if (result)
        {
          return result;
        }

        v11 = 0;
        goto LABEL_43;
      }

      result = (*(**(a1 + 80) + 24))(*(a1 + 80), &unk_181A20D39, 1, v13);
    }

    if (result != 522 && result != 0)
    {
      return result;
    }

    goto LABEL_37;
  }

  *(a1 + 104) = *(a1 + 96);
LABEL_18:
  v7 = *(a1 + 336);
  for (i = *v7; i; i = *(i + 64))
  {
    *(i + 52) &= ~8u;
  }

  result = 0;
  v7[2] = v7[1];
  *(a1 + 21) = 4;
  return result;
}

uint64_t sub_1818E7670(void *a1, uint64_t a2)
{
  if (*a1[9] || (v14 = (*(*a1 + 40))(*a1, 0), !v14))
  {
    v4 = *(a1 + 11);
    v5 = *(a1 + 8);
    if (v4 < v5 && (*(a2 + 32) || *(a2 + 48) > v4))
    {
      v15 = a1[25] * v5;
      v6 = a1[9];
      if (*v6)
      {
        (*(*v6 + 80))(v6, 5, &v15);
        LODWORD(v5) = *(a1 + 8);
      }

      *(a1 + 11) = v5;
    }

    if (!a2)
    {
      return 0;
    }

    while (1)
    {
      v7 = *(a2 + 48);
      if (v7 > *(a1 + 8) || (*(a2 + 52) & 0x10) != 0)
      {
        v14 = 0;
      }

      else
      {
        v8 = a1[25];
        if (v7 == 1)
        {
          v9 = bswap32(bswap32(*(*(a2 + 40) + 136)) + 1);
          *(*(a2 + 8) + 24) = v9;
          *(*(a2 + 8) + 92) = v9;
          *(*(a2 + 8) + 96) = -124965376;
        }

        v10 = a1[37];
        if (v10)
        {
          v11 = v10(a1[40], *(a2 + 8), v7, 6);
          if (!v11)
          {
            return 7;
          }
        }

        else
        {
          v11 = *(a2 + 8);
        }

        v14 = (*(*a1[9] + 24))(a1[9], v11, *(a1 + 50), v8 * (v7 - 1));
        if (v7 == 1)
        {
          *(a1 + 17) = *(v11 + 24);
        }

        if (v7 > *(a1 + 10))
        {
          *(a1 + 10) = v7;
        }

        ++*(a1 + 64);
        ++*(a1 + 68);
        v12 = a1[14];
        if (v12)
        {
          sub_181934FA4(v12, v7, *(a2 + 8));
        }
      }

      if (!v14)
      {
        a2 = *(a2 + 32);
        if (a2)
        {
          continue;
        }
      }

      return v14;
    }
  }

  return v14;
}

uint64_t sub_1818E7864(uint64_t a1, __n128 a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 160);
  if (v3)
  {
    *(a1 + 160) = 0;
    if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0)
    {
      dispatch_source_cancel_and_wait();
      dispatch_release(v3);
    }
  }

  if (qword_1ED456B10)
  {
    a2.n128_f64[0] = xmmword_1ED452F18(qword_1ED456B10);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (*(v4 + 28))
    {
      v5 = *(a1 + 48);
      *(v5 + 8) = *(v4 + 40);
      *(v4 + 40) = v5;
      *(a1 + 24) = -1;
      *(a1 + 48) = 0;
    }

    sub_18192A87C(a1, a2);
  }

  v6 = *(a1 + 160);
  if (v6)
  {
    *(a1 + 160) = 0;
    if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0)
    {
      dispatch_source_cancel_and_wait();
      dispatch_release(v6);
    }
  }

  v7 = *(a1 + 104);
  if (v7)
  {
    off_1EE341CF0(v7, *(a1 + 88));
    *(a1 + 104) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v8 = *(a1 + 24);
  if ((v8 & 0x80000000) == 0)
  {
    if (off_1EE341AE0(v8))
    {
      v9 = *(a1 + 56);
      v10 = *__error();
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v10, __strerrbuf, 0x4FuLL);
      v11 = &byte_181A2878D;
      if (v9)
      {
        v11 = v9;
      }

      sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 44393, v10, "close", v11, __strerrbuf);
    }

    *(a1 + 24) = -1;
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_27:
      (*v13)(v12);
      goto LABEL_28;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v12);
    --qword_1ED456A90;
    off_1ED452EB0(v12);
    v12 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v13 = &xmmword_1ED452F28;
      goto LABEL_27;
    }
  }

LABEL_28:
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
  if (qword_1ED456B10)
  {
    xmmword_1ED452F28(qword_1ED456B10);
  }

  return 0;
}

int sqlite3_column_bytes(sqlite3_stmt *a1, int iCol)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v6 = *(*a1 + 24);
  if (v6)
  {
    xmmword_1ED452F18(v6);
  }

  v7 = *(a1 + 20);
  if (!v7 || *(a1 + 130) <= iCol)
  {
    v10 = *a1;
    *(v10 + 80) = 25;
    sub_181932D5C(v10, 25);
LABEL_9:
    v8 = &qword_181A20ED0;
    v9 = 1;
    goto LABEL_13;
  }

  v8 = (v7 + (iCol << 6));
  v9 = *(v8 + 10);
  if ((v9 & 2) != 0 && *(v8 + 22) == 1)
  {
    v11 = *(v8 + 4);
    if (!a1)
    {
      return v11;
    }

    goto LABEL_20;
  }

LABEL_13:
  if ((v9 & 0x10) == 0)
  {
    if (v9)
    {
      v11 = 0;
      if (!a1)
      {
        return v11;
      }
    }

    else
    {
      v11 = sub_18193CB44(v8, 1, v2, v3);
      if (!a1)
      {
        return v11;
      }
    }

    goto LABEL_20;
  }

  v11 = *(v8 + 4);
  if ((v9 & 0x400) != 0)
  {
    v11 += *v8;
  }

  if (a1)
  {
LABEL_20:
    v12 = *a1;
    v13 = *(a1 + 13);
    if (v13 || (v14 = *(v12 + 103), *(v12 + 103)))
    {
      v14 = sub_18193C988(v12, v13);
      v12 = *a1;
    }

    *(a1 + 13) = v14;
    v15 = *(v12 + 24);
    if (v15)
    {
      xmmword_1ED452F28(v15);
    }
  }

  return v11;
}

uint64_t sub_1818E7BDC(uint64_t a1, const char *a2, char a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (off_1EE341C48(a2) == -1)
  {
    if (*__error() == 2)
    {
      return 5898;
    }

    else
    {
      v11 = *__error();
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v11, __strerrbuf, 0x4FuLL);
      v12 = &byte_181A2878D;
      if (a2)
      {
        v12 = a2;
      }

      sqlite3_log(2570, "os_unix.c:%d: (%d) %s(%s) - %s", 51355, v11, "unlink", v12, __strerrbuf);
      return 2570;
    }
  }

  else if (a3)
  {
    v13 = 0;
    v6 = off_1EE341C60(a2, &v13);
    result = 0;
    if (!v6)
    {
      result = fsync(v13);
      if (result)
      {
        v7 = *__error();
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        *__strerrbuf = 0u;
        strerror_r(v7, __strerrbuf, 0x4FuLL);
        if (a2)
        {
          v8 = a2;
        }

        else
        {
          v8 = &byte_181A2878D;
        }

        sqlite3_log(1290, "os_unix.c:%d: (%d) %s(%s) - %s", 51365, v7, "fsync", v8, __strerrbuf);
        result = 1290;
      }

      if ((v13 & 0x80000000) == 0)
      {
        v9 = result;
        if (off_1EE341AE0(v13))
        {
          v10 = *__error();
          v17 = 0u;
          v18 = 0u;
          v15 = 0u;
          v16 = 0u;
          *__strerrbuf = 0u;
          strerror_r(v10, __strerrbuf, 0x4FuLL);
          sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 51372, v10, "close", &byte_181A2878D, __strerrbuf);
        }

        return v9;
      }
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1818E7DFC(uint64_t *a1)
{
  if (a1[2])
  {
    return a1[2];
  }

  v2 = *a1;
  if (!a1[19] && (*(v2 + 96) & 8) == 0)
  {
    *(a1 + 43) |= 4u;
  }

  if (*(v2 + 436) > 0x197u)
  {
    v3 = *(v2 + 472);
    if (v3)
    {
      v4 = (v2 + 472);
    }

    else
    {
      v3 = *(v2 + 464);
      if (!v3)
      {
        ++*(v2 + 456);
LABEL_17:
        v5 = a1;
        v3 = sub_18192A080(v2, 408, 0x10B004000C32FD6);
        a1 = v5;
        if (!v3)
        {
          return v3;
        }

LABEL_18:
        *(v3 + 248) = 0u;
        *(v3 + 232) = 0u;
        *(v3 + 216) = 0u;
        *(v3 + 200) = 0u;
        *(v3 + 184) = 0u;
        *(v3 + 168) = 0u;
        *(v3 + 152) = 0u;
        *(v3 + 136) = 0u;
        *(v3 + 376) = 0u;
        *(v3 + 392) = 0u;
        *(v3 + 344) = 0u;
        *(v3 + 360) = 0u;
        *(v3 + 312) = 0u;
        *(v3 + 328) = 0u;
        *(v3 + 280) = 0u;
        *(v3 + 296) = 0u;
        *(v3 + 264) = 0u;
        *v3 = v2;
        v8 = *(v2 + 8);
        v7 = (v2 + 8);
        v6 = v8;
        if (v8)
        {
          *(v6 + 8) = v3 + 16;
        }

        *(v3 + 8) = v7;
        *(v3 + 16) = v6;
        *v7 = v3;
        *(v3 + 24) = a1;
        a1[2] = v3;
        v9 = *(v3 + 144);
        if (*(v3 + 148) <= v9)
        {
          v11 = v3;
          sub_18194C8AC(v3, 8, 0, 1, 0);
          return v11;
        }

        else
        {
          *(v3 + 144) = v9 + 1;
          v10 = *(v3 + 136) + 40 * v9;
          *v10 = 8;
          *(v10 + 4) = 0x100000000;
          *(v10 + 12) = 0;
          *(v10 + 28) = 0;
          *(v10 + 20) = 0;
          *(v10 + 36) = 0;
        }

        return v3;
      }

      v4 = (v2 + 464);
    }

    *v4 = *v3;
    ++*(v2 + 448);
    goto LABEL_18;
  }

  if (!*(v2 + 432))
  {
    ++*(v2 + 452);
    goto LABEL_17;
  }

  if (!*(v2 + 103))
  {
    goto LABEL_17;
  }

  return 0;
}

void *sub_1818E7FBC(int32x2_t *a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, unsigned int a5, void *a6, unsigned __int8 *a7, uint64_t a8)
{
  v9 = a4;
  v10 = a3;
  memset(v306, 0, 56);
  v305 = 0;
  v12 = *a1;
  if (a1[6].i32[1])
  {
    goto LABEL_2;
  }

  v15 = (a2 + 72);
  if (*(a2 + 35))
  {
    v17 = *v15;
    v18 = *(v12 + 4);
    if (v17)
    {
      v19 = (v18 + 24);
      v20 = 0xFFFFFFFF00000000;
      do
      {
        v21 = *v19;
        v19 += 4;
        v20 += 0x100000000;
      }

      while (v21 != v17);
      v16 = a5;
      v22 = v20 >> 32;
    }

    else
    {
      v16 = a5;
      v22 = -32768;
    }

    v15 = (v18 + 32 * v22);
  }

  else
  {
    v16 = a5;
  }

  v23 = sub_1818CA520(a1, 0, *(a2 + 8), *v15);
  v24 = *(a2 + 24);
  if (v24)
  {
    v25 = *a1;
    if (*(*a1 + 824) || (v26 = *(v24 + 44) - 1, (*(v24 + 44) = v26) == 0))
    {
      sub_18194E094(v25, v24, a3, a4);
    }
  }

  *(a2 + 24) = v23;
  *(a2 + 33) |= 0x400u;
  if (!v23)
  {
    goto LABEL_2;
  }

  ++*(v23 + 44);
  if ((*(a2 + 33) & 2) != 0)
  {
    v27 = *(v23 + 16);
    if (!v27)
    {
LABEL_33:
      sub_181910730(a1, "no such index: %s", *(a2 + 48));
      a1[5].i8[3] |= 8u;
      goto LABEL_2;
    }

LABEL_26:
    v28 = *v27;
    for (i = *(a2 + 48); ; ++i)
    {
      if (*v28 == *i)
      {
        if (!*v28)
        {
          *(a2 + 56) = v27;
          break;
        }
      }

      else if (byte_181A20298[*v28] != byte_181A20298[*i])
      {
        v27 = *(v27 + 40);
        if (!v27)
        {
          goto LABEL_33;
        }

        goto LABEL_26;
      }

      ++v28;
    }
  }

  v30 = *a1;
  v31 = *(v23 + 96);
  if (v31)
  {
    v32 = (*(v30 + 4) + 24);
    v33 = -1;
    do
    {
      v34 = *v32;
      v32 += 4;
      ++v33;
    }

    while (v34 != v31);
    if (*(v23 + 88))
    {
      goto LABEL_42;
    }
  }

  else
  {
    v33 = -32768;
    if (*(v23 + 88))
    {
      goto LABEL_42;
    }
  }

  v35 = *(*(v30 + 4) + 56);
  if (!v35 || !*(v35 + 64))
  {
    goto LABEL_43;
  }

LABEL_42:
  if (a1[5].i8[2])
  {
LABEL_43:
    v300 = 0;
    HIDWORD(v305) = 0;
    goto LABEL_45;
  }

  v300 = sub_181980B5C(a1, v23, 130, v10, &v305 + 1);
LABEL_45:
  v36 = *(v23 + 63);
  if (*a2 < 2)
  {
    v37 = 0;
  }

  else
  {
    v37 = *v10;
  }

  v299 = v37;
  v295 = *(v23 + 63);
  if (v36 == 2 || v37)
  {
    if (v36 == 1)
    {
      goto LABEL_54;
    }

LABEL_53:
    if (*(v23 + 54) > 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v9 = sub_18197FEFC(a1, a2, v9, a6, a7, "UPDATE");
  a7 = 0;
  a6 = 0;
  if (*(v23 + 63) != 1)
  {
    goto LABEL_53;
  }

LABEL_54:
  if (sub_181960D84(a1, v23))
  {
    goto LABEL_2;
  }

LABEL_55:
  if (sub_181980528(a1, v23, v300))
  {
    goto LABEL_2;
  }

  v38 = a1[7].i32[0];
  v39 = v38 + 1;
  a1[7].i32[0] = v38 + 1;
  v40 = *(v23 + 16);
  v298 = v10;
  v285 = v9;
  if ((*(v23 + 48) & 0x80) != 0)
  {
    v42 = a8;
    if (!v40)
    {
      v41 = 0;
      goto LABEL_69;
    }

    v41 = *(v23 + 16);
    do
    {
      if ((*(v41 + 99) & 3) == 2)
      {
        break;
      }

      v41 = *(v41 + 40);
    }

    while (v41);
  }

  else
  {
    v41 = 0;
    v42 = a8;
  }

  if (!v40)
  {
LABEL_69:
    v43 = 0;
    v45 = v38;
    goto LABEL_70;
  }

  v43 = 0;
  v44 = v38 + 1;
  v45 = v38;
  do
  {
    if (v41 == v40)
    {
      v45 = v44;
    }

    ++v44;
    ++v43;
    v40 = *(v40 + 40);
  }

  while (v40);
  a1[7].i32[0] = v44;
LABEL_70:
  v301 = v41;
  v282 = v16;
  v283 = a6;
  if (v42)
  {
    v45 = *(v42 + 76);
    v39 = *(v42 + 80);
    a1[7].i32[0] = v38;
  }

  v278 = v38;
  v280 = v39;
  v288 = v45;
  *(a2 + 36) = v45;
  v46 = v43 + 1;
  v47 = sub_181929E8C(v12, v43 + 4 * (v46 + *(v23 + 54)) + 2, 0x100004052888210);
  if (!v47)
  {
    v9 = v285;
    v10 = v298;
    goto LABEL_2;
  }

  v48 = v47;
  v286 = v47 + *(v23 + 54);
  v269 = &v286[v43];
  memset(v269 + 1, 1, v43 + 1);
  __b = v269 + 1;
  *(v269 + v46 + 4) = 0;
  v49 = *(v23 + 54);
  if (v49 >= 1)
  {
    memset(v48, 255, 4 * v49);
  }

  *(&v306[2] + 8) = 0u;
  *(&v306[1] + 8) = 0u;
  *&v306[0] = a1;
  *(&v306[0] + 1) = a2;
  *&v306[1] = a8;
  DWORD2(v306[2]) = 512;
  v50 = sub_1818E7DFC(a1);
  if (!v50)
  {
    goto LABEL_303;
  }

  v294 = v50;
  v284 = v12;
  if (*v298 < 1)
  {
    v281 = 0;
    LOBYTE(v52) = 0;
    v292 = 0;
    v290 = -1;
LABEL_140:
    v271 = v52 + v281;
    v287 = v52;
    if ((*(v23 + 48) & 0x60) != 0)
    {
      LOWORD(v89) = *(v23 + 54);
      do
      {
        if (v89 < 1)
        {
          break;
        }

        v90 = 0;
        v91 = 0;
        v92 = 0;
        do
        {
          if ((*(v48 + v91) & 0x80000000) != 0)
          {
            v93 = *(v23 + 8) + v90;
            if ((*(v93 + 14) & 0x60) != 0)
            {
              v94 = *(v93 + 12);
              if (v94 && !*(v23 + 63) && (v96 = *(v23 + 80)) != 0 && *v96 >= v94 && (v97 = *&v96[6 * (v94 - 1) + 2], v310 = 0, v311 = v48, v307 = 0, v309 = 0u, v308 = sub_181987278, v97))
              {
                sub_181959BA0(&v307, v97);
                LOBYTE(v52) = v287;
                v95 = WORD2(v310);
              }

              else
              {
                v95 = 0;
              }

              if (!v52)
              {
                v95 &= ~2u;
              }

              if (v95)
              {
                *(v48 + v91) = 99999;
                v92 = 1;
              }
            }
          }

          ++v91;
          v89 = *(v23 + 54);
          v90 += 16;
        }

        while (v91 < v89);
      }

      while (v92);
    }

    if (*(v23 + 63) == 1)
    {
      v98 = -1;
    }

    else
    {
      v98 = 0;
    }

    *(a2 + 40) = v98;
    v99 = sub_1818D6F14(a1, v23, v48, v271);
    v274 = v99;
    v275 = v282 == 5;
    v100 = *(v23 + 16);
    if (v100)
    {
      v101 = 0;
      if (v271)
      {
        v102 = 0;
      }

      else
      {
        v102 = v99 <= 1;
      }

      v103 = !v102;
      v296 = v103;
      v12 = v284;
      v104 = v286;
      v105 = v301;
      while (1)
      {
        v116 = v100 == v105;
        v107 = v296;
        if (v116)
        {
          v107 = 1;
        }

        if ((v107 & 1) != 0 || (v108 = *(v100 + 72)) != 0 && (v310 = 0, v311 = v48, v307 = 0, v309 = 0u, v308 = sub_181987278, sub_181959BA0(&v307, v108), (v310 & 0xFFFD00000000) != 0))
        {
          v106 = a1[7].i32[1] + 1;
          a1[7].i32[1] = v106 + *(v100 + 96);
          if (!v106)
          {
            goto LABEL_171;
          }

          goto LABEL_172;
        }

        if (!*(v100 + 94))
        {
          goto LABEL_171;
        }

        v109 = 0;
        v110 = 8;
        while (1)
        {
          v111 = *(*(v100 + 8) + 2 * v109);
          if (v111 < 0)
          {
            break;
          }

          if ((*(v48 + v111) & 0x80000000) == 0)
          {
            goto LABEL_188;
          }

LABEL_184:
          ++v109;
          v110 += 24;
          if (v109 >= *(v100 + 94))
          {
            v12 = v284;
            v104 = v286;
            goto LABEL_171;
          }
        }

        v112 = *(*(v100 + 80) + v110);
        v310 = 0;
        v311 = v48;
        v307 = 0;
        v309 = 0u;
        v308 = sub_181987278;
        if (!v112)
        {
          goto LABEL_184;
        }

        sub_181959BA0(&v307, v112);
        if ((v310 & 0xFFFD00000000) == 0)
        {
          goto LABEL_184;
        }

LABEL_188:
        v106 = a1[7].i32[1] + 1;
        a1[7].i32[1] = v106 + *(v100 + 96);
        if (v282 == 11)
        {
          v113 = v275;
          if (*(v100 + 98) == 5)
          {
            v113 = 1;
          }

          v275 = v113;
        }

        v12 = v284;
        v104 = v286;
        if (!v106)
        {
LABEL_171:
          v106 = 0;
          *(v269 + v101 + 5) = 0;
        }

LABEL_172:
        v104[v101++] = v106;
        v100 = *(v100 + 40);
        v105 = v301;
        if (!v100)
        {
          v114 = v101;
          goto LABEL_196;
        }
      }
    }

    v114 = 0;
    v12 = v284;
LABEL_196:
    LODWORD(v305) = v275;
    v115 = a1[7].i32[1] + 1;
    a1[7].i32[1] = v115;
    v265 = v114;
    v286[v114] = v115;
    if (v275)
    {
      memset(__b, 1, v43 + 1);
    }

    if (!a1[3].i8[6])
    {
      *(v294 + 268) |= 0x10u;
    }

    if (v300)
    {
      v116 = 0;
    }

    else
    {
      v116 = v274 == 0;
    }

    v117 = !v116;
    sub_18195D3A8(a1, v117, v33);
    v118 = *(v23 + 63);
    if (v118 == 1)
    {
      v119 = 0;
      v293 = 0;
      v270 = 0;
      v120 = 0;
      v260 = 0;
      v121 = a8;
      v122 = v301;
      v123 = v299;
    }

    else
    {
      v260 = v286[v265];
      v124 = a1[7].i32[1];
      v119 = (v124 + 1);
      v121 = a8;
      if (v300 || v281 || v274)
      {
        v120 = v124 + 2;
        v125 = v119 + *(v23 + 54);
      }

      else
      {
        v120 = 0;
        v125 = v124 + 1;
      }

      v123 = v299;
      v122 = v301;
      if (v271)
      {
        v126 = 0;
      }

      else
      {
        v126 = v300 == 0;
      }

      v127 = v126 && v274 == 0;
      if (v127)
      {
        v128 = v125;
      }

      else
      {
        v128 = v125 + 1;
      }

      if (v127)
      {
        v129 = v119;
      }

      else
      {
        v129 = v125 + 1;
      }

      v293 = v129;
      v270 = v128 + 1;
      a1[7].i32[1] = v128 + *(v23 + 54);
    }

    if (v295 == 2)
    {
      __len = a1[46];
      a1[46] = *v23;
      if (v123)
      {
        v297 = a1;
        goto LABEL_235;
      }

      sub_18198069C(a1, v23, v285, v283, a7, v288);
      v283 = 0;
      a7 = 0;
      v297 = a1;
    }

    else
    {
      __len = 0;
      v297 = 0;
      if (v123)
      {
        goto LABEL_235;
      }
    }

    if (sub_18195ECC4(v306, v285))
    {
LABEL_233:
      v9 = v285;
      v10 = v298;
      goto LABEL_486;
    }

    v118 = *(v23 + 63);
    v121 = a8;
    v122 = v301;
    v123 = v299;
LABEL_235:
    if (v118 == 1)
    {
      v10 = v298;
      v9 = v285;
      sub_181985AD8(a1, a2, v23, v298, v292, v48, v285, v282);
LABEL_486:
      if (v297)
      {
        v297[46] = __len;
      }

      goto LABEL_488;
    }

    v263 = a1[9].i32[0] - 1;
    a1[9].i32[0] = v263;
    if ((v12[52] & 1) == 0 || *&a1[20] || a1[3].i8[6])
    {
      v261 = 0;
    }

    else
    {
      v261 = 0;
      if (!v121 && !a1[5].i8[0])
      {
        v180 = a1[7].i32[1];
        v181 = (v180 + 1);
        a1[7].i32[1] = v181;
        v261 = v180 + 1;
        sub_1818A2964(v294, 71, 0, v181, 0);
        v123 = v299;
        v122 = v301;
        v121 = a8;
      }
    }

    v264 = v119;
    if (!v123 && (*(v23 + 48) & 0x80) == 0)
    {
      sub_1818A2964(v294, 75, 0, v260, v119);
      v130 = a1[7].u32[0];
      a1[7].i32[0] = v130 + 1;
      v262 = v130;
      v131 = sub_1818A2964(v294, 117, v130, 0, v260);
      v251 = 0;
      v259 = 0;
      v257 = 0;
      if (!a8)
      {
        goto LABEL_283;
      }

LABEL_256:
      sub_1818DD640(a1, v285, v263, 16);
      v143 = 0;
      v258 = 0;
      v144 = 1;
      LODWORD(v248) = v145;
      LODWORD(v249) = v145;
      goto LABEL_257;
    }

    if (v122)
    {
      v132 = *(v122 + 94);
    }

    else
    {
      v132 = 0;
    }

    v133 = v288;
    v134 = v287;
    v135 = a1[7].i32[1];
    v136 = (v135 + 1);
    v259 = v132;
    v137 = v132;
    v138 = (v135 + v137);
    v257 = v123 + v138 + 1;
    a1[7].i32[1] = v257;
    v256 = v137;
    if (v121)
    {
      v262 = 0;
      if (!v123)
      {
        v131 = 0;
        v251 = v135 + 1;
        goto LABEL_256;
      }

      v139 = v278;
    }

    else
    {
      v254 = v120;
      if (v295 == 2)
      {
        v140 = *(v23 + 54);
      }

      else
      {
        v140 = 0;
      }

      v276 = v123 + v137 + v140;
      v153 = a1[7].u32[0];
      a1[7].i32[0] = v153 + 1;
      v262 = v153;
      v251 = v136;
      if (v122)
      {
        sub_1818A2964(v294, 75, 0, v136, v138);
        v247 = sub_1818A2964(v294, 117, v153, v276, 0);
        v154 = sub_1819572CC(a1, v122);
        if (v154)
        {
          *(v154 + 4) = v276;
          sub_181957564(v294, v154, -8, v155);
        }

        v119 = v119;
        v120 = v254;
        v131 = v247;
      }

      else
      {
        v131 = sub_1818A2964(v294, 117, v153, v276, 0);
        v119 = v119;
        v120 = v254;
      }

      if (!v299)
      {
        v275 = v305;
LABEL_283:
        v157 = 4;
        if (!v300 && !a1[3].i8[6] && !v274 && !v271 && !v275 && (!v285 || (v285[6] & 0x40) == 0))
        {
          v157 = 12;
        }

        v143 = sub_1818B507C(a1, a2, v285, 0, 0, 0, v157, v280);
        if (!v143)
        {
          goto LABEL_233;
        }

        v249 = *(v143 + 40);
        v248 = HIDWORD(v249);
        v158 = *(v143 + 66);
        v258 = *(v143 + 68) & 1;
        v144 = 1;
        if (v158 != 1)
        {
          v159 = a1[19];
          if (!v159)
          {
            v159 = a1;
          }

          v159[4].i8[0] = 1;
          v146 = v259;
          if (v158 == 2)
          {
            v144 = 2;
            if ((v249 & 0x8000000000000000) == 0 && v288 != HIDWORD(v249))
            {
              v144 = 2 * (__b[HIDWORD(v249) - v278] == 0);
            }
          }

          else
          {
            v144 = v158;
          }

          goto LABEL_258;
        }

LABEL_257:
        v146 = v259;
LABEL_258:
        v266 = v144;
        v250 = v143;
        v259 = v146;
        if ((*(v23 + 48) & 0x80) != 0)
        {
          v246 = v131;
          v256 = v146;
          v150 = v301;
          if (v256 >= 1)
          {
            v151 = 0;
            v152 = v251;
            do
            {
              sub_181959FA4(v294, v23, v288, *(*(v150 + 8) + v151), v152);
              v150 = v301;
              v152 = (v152 + 1);
              v151 += 2;
            }

            while (2 * v256 != v151);
          }

          v149 = v266;
          if (v266)
          {
            if (v246)
            {
              sub_1818B6C00(v294, v246, v141, v142);
              v149 = v266;
            }

            v131 = 0;
            LODWORD(v136) = v251;
            v257 = v251;
          }

          else
          {
            v162 = *(v150 + 32);
            if (!v162)
            {
              v162 = sub_181978718(v12, v301);
            }

            v163 = sub_1818A2964(v294, 97, v251, v256, v257);
            sub_1818B49F8(v294, v163, v162, v256);
            sub_181910A18(v294, 138, v262, v257, v251, v256);
            LODWORD(v136) = v251;
            v131 = 0;
            v149 = 0;
            v256 = 0;
          }

          v121 = a8;
          v133 = v288;
          v134 = v287;
          v123 = v299;
          LODWORD(v119) = v264;
          v139 = v278;
        }

        else
        {
          sub_1818A2964(v294, 135, v288, v119, 0);
          v149 = v266;
          if (v266)
          {
            if (v131)
            {
              sub_1818B6C00(v294, v131, v147, v148);
              v149 = v266;
              v131 = 0;
            }
          }

          else
          {
            v161 = a1[7].i32[1] + 1;
            a1[7].i32[1] = v161;
            v286[v265] = v161;
            sub_1818A2964(v294, 128, v262, v260, v119);
            v131 = 0;
            v149 = 0;
          }

          v256 = 0;
          v121 = a8;
          v133 = v288;
          v134 = v287;
          v123 = v299;
          v139 = v278;
          LODWORD(v136) = v251;
        }

        goto LABEL_310;
      }

      sub_18198678C(a1, v262, v301, v298, a2, v285, v283, a7);
      v123 = v299;
      v133 = v288;
      if (v295 == 2)
      {
        v133 = v262;
      }

      v121 = a8;
      v134 = v287;
      v139 = v278;
      LODWORD(v136) = v251;
    }

    v149 = 0;
    v156 = a1[19];
    if (!v156)
    {
      v156 = a1;
    }

    v131 = 1;
    v156[4].i8[0] = 1;
    LODWORD(v248) = v156;
    LODWORD(v249) = v156;
    v250 = 0;
    v257 = v136;
    v258 = 1;
LABEL_310:
    v289 = v133;
    v267 = v149;
    v277 = v131;
    if (v121)
    {
      __ba = 0;
      v279 = v263;
      v164 = v298;
      v165 = v293;
      goto LABEL_356;
    }

    if (!v123 && v149 != 2)
    {
      v166 = v136;
      sub_1818B9E4C(v250);
      LODWORD(v136) = v166;
      v149 = v267;
      v139 = v278;
      v133 = v289;
    }

    v167 = v301;
    if (v295 != 2)
    {
      if (!v149)
      {
        goto LABEL_326;
      }

      if ((v249 & 0x80000000) == 0)
      {
        __b[v249 - v139] = 0;
      }

      if ((v248 & 0x80000000) == 0)
      {
        __b[v248 - v139] = 0;
      }

      if (v149 == 2 && (v43 + (~v248 >> 31)) > 0)
      {
        v252 = v136;
        v168 = v139;
        v169 = sub_1818A2964(v294, 15, 0, 0, 0);
        v170 = v168;
        v131 = v277;
        sub_1818D348C(a1, v23, 0x71u, 0, v170, __b, &v307, &v304);
        LODWORD(v136) = v252;
        v167 = v301;
        v133 = v289;
        if (v169)
        {
          v171 = *(v294 + 144);
          if (v171 - 1 == v169)
          {
            *(v294 + 144) = v169;
          }

          else
          {
            if (*(*v294 + 103))
            {
              v245 = &byte_1EA831A58;
            }

            else
            {
              v245 = (*(v294 + 136) + 40 * v169);
            }

            *(v245 + 2) = v171;
            v133 = v289;
            v167 = v301;
            v131 = v277;
            LODWORD(v136) = v252;
          }
        }
      }

      else
      {
LABEL_326:
        v172 = v136;
        sub_1818D348C(a1, v23, 0x71u, 0, v139, __b, &v307, &v304);
        LODWORD(v136) = v172;
        v167 = v301;
        v133 = v289;
      }

      LODWORD(v119) = v264;
      v149 = v267;
    }

    if (v149)
    {
      v164 = v298;
      v165 = v293;
      if (v249 != v133 && v248 != v133)
      {
        sub_181910A18(v294, 28, v289, v263, v257, v256);
        v149 = v267;
        v167 = v301;
      }

      v173 = v263;
      if (v149 != 1)
      {
        v173 = a1[9].i32[0] - 1;
        a1[9].i32[0] = v173;
      }

      v279 = v173;
      if (v167)
      {
        v174 = v257;
      }

      else
      {
        v174 = v119;
      }

      sub_1818A2964(v294, 51, v174, v263, 0);
      __ba = 0;
      v134 = v287;
      v123 = v299;
LABEL_356:
      if (v134)
      {
        if (v123)
        {
          v183 = v294;
          sub_1818A2964(v294, 94, v262, v290, v165);
        }

        else
        {
          sub_181956EF4(a1, v292, v165);
          v183 = v294;
        }

        sub_1818A2964(v183, 13, v165, 0, 0);
      }

      if (v300 || v281 || v274)
      {
        if (v274)
        {
          v184 = sub_181980FF0(a1, v23);
        }

        else
        {
          v184 = 0;
        }

        v185 = sub_181980E20(a1, v300, v164, 0, 3u, v23, v282);
        v186 = v301;
        v187 = v287;
        if (*(v23 + 54) >= 1)
        {
          v188 = 0;
          v189 = 0;
          v190 = v185 | v184;
          v191.i64[0] = 0x1000100010001;
          v191.i64[1] = 0x1000100010001;
          while (1)
          {
            v192 = *(v23 + 8);
            v193 = v189;
            if ((v189 & 0x8000) == 0 && (*(v23 + 48) & 0x20) != 0)
            {
              break;
            }

LABEL_395:
            if (v190 != -1)
            {
              v214 = *(v192 + 16 * v189 + 14);
              if (v189 > 0x1F)
              {
                if ((v214 & 1) == 0)
                {
LABEL_400:
                  sub_1818A2964(v294, 75, 0, (v120 + v193), 0);
                  goto LABEL_370;
                }
              }

              else if (!((1 << v189) & v190 | v214 & 1))
              {
                goto LABEL_400;
              }
            }

            sub_181959FA4(v294, v23, v289, v189, (v120 + v193));
LABEL_370:
            ++v189;
            --v188;
            v186 = v301;
            v187 = v287;
            v191.i64[0] = 0x1000100010001;
            v191.i64[1] = 0x1000100010001;
            if (v189 >= *(v23 + 54))
            {
              goto LABEL_401;
            }
          }

          if (!v189)
          {
            v195 = 0;
LABEL_392:
            if ((*(v192 + 16 * ((v189 << 16) >> 16) + 14) & 0x20) != 0)
            {
              v193 = v189 - v195 + *(v23 + 56);
            }

            else
            {
              v193 = v195;
            }

            goto LABEL_395;
          }

          if (v189 >= 5)
          {
            if (v189 >= 0x11)
            {
              v196 = 16;
              if ((v189 & 0xF) != 0)
              {
                v196 = v189 & 0xF;
              }

              v194 = v189 - v196;
              v197 = (v192 + 142);
              v198 = 0uLL;
              v199 = v189;
              v200 = 0uLL;
              do
              {
                v201.i16[0] = *(v197 - 64);
                v201.i16[1] = *(v197 - 56);
                v201.i16[2] = *(v197 - 48);
                v201.i16[3] = *(v197 - 40);
                v201.i16[4] = *(v197 - 32);
                v201.i16[5] = *(v197 - 24);
                v201.i16[6] = *(v197 - 16);
                v201.i16[7] = *(v197 - 8);
                v202.i16[0] = *v197;
                v202.i16[1] = v197[8];
                v202.i16[2] = v197[16];
                v202.i16[3] = v197[24];
                v202.i16[4] = v197[32];
                v202.i16[5] = v197[40];
                v202.i16[6] = v197[48];
                v202.i16[7] = v197[56];
                v198 = vaddq_s16(vbicq_s8(v191, vshrq_n_u16(v201, 5uLL)), v198);
                v200 = vaddq_s16(vbicq_s8(v191, vshrq_n_u16(v202, 5uLL)), v200);
                v199 -= 16;
                v197 += 128;
              }

              while (v196 != v199);
              v195 = vaddvq_s16(vaddq_s16(v200, v198));
              if (v196 < 5)
              {
                goto LABEL_389;
              }
            }

            else
            {
              v195 = 0;
              v194 = 0;
            }

            v203 = 4;
            if ((v189 & 3) != 0)
            {
              v203 = v189 & 3;
            }

            v204 = v192 + 16 * v194;
            v205 = v194 + v188;
            v194 = v189 - v203;
            v206 = v195;
            v207 = (v204 + 46);
            v208 = v203 + v205;
            do
            {
              v209.i16[0] = *(v207 - 16);
              v209.i16[1] = *(v207 - 8);
              v209.i16[2] = *v207;
              v209.i16[3] = v207[8];
              v206 = vadd_s16(vbic_s8(0x1000100010001, vshr_n_u16(v209, 5uLL)), v206);
              v207 += 32;
              v208 += 4;
            }

            while (v208);
            v195 = vaddv_s16(v206);
          }

          else
          {
            v194 = 0;
            v195 = 0;
          }

LABEL_389:
          v210 = v194 + v188;
          v211 = (v192 + 16 * v194 + 14);
          do
          {
            v212 = *v211;
            v211 += 8;
            v195 += ((v212 >> 5) & 1) == 0;
          }

          while (!__CFADD__(v210++, 1));
          goto LABEL_392;
        }

LABEL_401:
        v164 = v298;
        if (!v186 && !v187)
        {
          sub_1818A2964(v294, 80, v264, v293, 0);
        }
      }

      v291 = sub_181980E20(a1, v300, v164, 1u, 1u, v23, v282);
      LODWORD(v216) = *(v23 + 54);
      if (v216 >= 1)
      {
        v217 = 0;
        v218 = 14;
        v219 = v270;
        do
        {
          if (v217 == *(v23 + 52))
          {
            v220 = *(v294 + 144);
            if (*(v294 + 148) <= v220)
            {
              sub_18194C8AC(v294, 75, 0, v219, 0);
            }

            else
            {
              *(v294 + 144) = v220 + 1;
              v221 = *(v294 + 136) + 40 * v220;
              *v221 = 75;
              *(v221 + 8) = v219;
              *(v221 + 12) = 0;
              *(v221 + 28) = 0;
              *(v221 + 20) = 0;
              *(v221 + 36) = 0;
            }

            goto LABEL_407;
          }

          v222 = *(*(v23 + 8) + v218);
          if ((v222 & 0x60) != 0)
          {
            LODWORD(v219) = v219 + (v222 << 26 >> 31);
          }

          else
          {
            v223 = *(v48 + v217);
            if (v223 < 0)
            {
              if (v217 > 0x1F || (v305 & 0x100000000) == 0 || ((v291 >> v217) & 1) != 0)
              {
                sub_181959FA4(v294, v23, v289, v217, v219);
                v258 = 0;
                goto LABEL_407;
              }

              v225 = v294;
              v226 = 75;
              v227 = 0;
              v224 = v219;
              v228 = 0;
            }

            else
            {
              if (!v277)
              {
                sub_181956EF4(a1, *&v164[6 * v223 + 2], v219);
                goto LABEL_407;
              }

              if (v295 != 2)
              {
                LODWORD(v216) = v259;
              }

              v224 = (v223 + v216);
              v225 = v294;
              v226 = 94;
              v227 = v262;
              v228 = v219;
            }

            sub_1818A2964(v225, v226, v227, v224, v228);
          }

LABEL_407:
          ++v217;
          v219 = (v219 + 1);
          v216 = *(v23 + 54);
          v218 += 16;
        }

        while (v217 < v216);
      }

      v229 = v264;
      if ((*(v23 + 48) & 0x60) != 0)
      {
        sub_181986E24(a1, v270, v23);
      }

      v12 = v284;
      v9 = v285;
      v10 = v298;
      v230 = v294;
      if ((v305 & 0x100000000) != 0)
      {
        sub_18195E17C(v294, v23, v270);
        sub_1819813E4(a1, v300, 130, v298, 1, v23, v264, v282, v231, v279);
        if (v295 == 2)
        {
LABEL_472:
          if (v261)
          {
            sub_1818A2964(v230, 86, v261, 1, 0);
          }

          if (v300)
          {
            sub_1819813E4(a1, v300, 130, v10, 2, v23, v229, v282, v215, v279);
          }

          if (v267 != 1)
          {
            sub_181958CD8(v230, v279);
            if (v267 == 2)
            {
              sub_1818B9E4C(v250);
            }

            else
            {
              sub_1818A2964(v230, 39, v262, __ba, 0);
            }
          }

          sub_181958CD8(v230, v263);
          if (!a1[3].i8[6] && !(a8 | *&a1[20]) && *&a1[18])
          {
            sub_18198590C(a1);
          }

          if (v261)
          {
            sub_181980A28(v230, v261, "rows updated", v244);
          }

          goto LABEL_486;
        }

        if (v301)
        {
          sub_181910A18(v294, 28, v289, v279, v257, v256);
        }

        else
        {
          sub_1818A2964(v294, 31, v289, v279, v264);
        }

        v232 = *(v23 + 54);
        if (v232 >= 1)
        {
          v233 = 0;
          v234 = 14;
          v235 = v270;
          do
          {
            v236 = *(*(v23 + 8) + v234);
            if ((v236 & 0x60) != 0)
            {
              LODWORD(v235) = v235 + (v236 << 26 >> 31);
            }

            else if ((*(v48 + v233) & 0x80000000) != 0 && v233 != *(v23 + 52))
            {
              sub_181959FA4(v294, v23, v289, v233, v235);
              LOWORD(v232) = *(v23 + 54);
            }

            ++v233;
            v235 = (v235 + 1);
            v234 += 16;
          }

          while (v233 < v232);
        }

        v10 = v298;
        v230 = v294;
        v229 = v264;
        if ((*(v23 + 48) & 0x60) != 0)
        {
          sub_181986E24(a1, v270, v23);
        }
      }

      if (v295 != 2)
      {
        sub_1818D3738(a1, v23, v286, v289, v280, v293, v229, v271, v282, v279, &v305, v48, 0);
        if (v305 || v271)
        {
          if (v301)
          {
            sub_181910A18(v230, 28, v289, v279, v257, v256);
          }

          else
          {
            sub_1818A2964(v230, 31, v289, v279, v229);
          }
        }

        if (v274)
        {
          sub_1818D7680(a1, v23, v229, 0, v48, v271);
        }

        sub_1819816BC(a1, v23, v289, v280, v286, -1);
        if (v258)
        {
          sub_1818A2964(v230, 143, v289, 0, 0);
        }

        if (v271)
        {
          v237 = 0;
        }

        else
        {
          v237 = v274 <= 1;
        }

        if (v237)
        {
          v238 = 68;
        }

        else
        {
          v238 = 4;
        }

        sub_1818A2964(v230, 130, v289, v238, v293);
        v240 = v267;
        if (v267 == 2)
        {
          v241 = *(v230 + 144);
          if (v241 >= 1)
          {
            *(*(v230 + 136) + 40 * v241 - 38) = 2;
          }
        }

        if (!a1[3].i8[6])
        {
          sub_181957564(v230, v23, -5, v239);
          v240 = v267;
        }

        if (v274)
        {
          sub_1818D7680(a1, v23, 0, v293, v48, v271);
          if (v267 == 2)
          {
            v242 = 6;
          }

          else
          {
            v242 = 4;
          }

          sub_1818D80A8(a1, v23, v289, v280, v293, v286, v242, 0, 0);
          LODWORD(v229) = v264;
          sub_18198187C(a1, v23, v10, v264, v48, v271);
        }

        else
        {
          if (v240 == 2)
          {
            v243 = 6;
          }

          else
          {
            v243 = 4;
          }

          sub_1818D80A8(a1, v23, v289, v280, v293, v286, v243, 0, 0);
          LODWORD(v229) = v264;
        }
      }

      goto LABEL_472;
    }

    v255 = v120;
    v175 = v131 ^ 1;
    if (v167)
    {
      v175 = 0;
    }

    v176 = v131;
    v164 = v298;
    if ((v175 & 1) == 0)
    {
      v253 = v136;
      v177 = (a1[9].i32[0] - 1);
      a1[9].i32[0] = v177;
      sub_1818A2964(v294, 36, v262, v263, 0);
      v165 = v293;
      v279 = v177;
      __ba = *(v294 + 144);
      if (v176)
      {
        if (v295 != 2)
        {
          if (v301)
          {
            v178 = v259;
            if (v178 >= 1)
            {
              v179 = 0;
              do
              {
                sub_1818A2964(v294, 94, v262, v179, v253 + v179);
                v179 = (v179 + 1);
              }

              while (v178 != v179);
            }

            sub_181910A18(v294, 28, v289, v279, v253, v178);
            v164 = v298;
          }

          else
          {
            sub_1818A2964(v294, 135, v262, v264, 0);
            sub_1818A2964(v294, 31, v289, v177, v264);
            v164 = v298;
          }

          goto LABEL_352;
        }
      }

      else
      {
        sub_1818A2964(v294, 134, v262, v257, 0);
        sub_181910A18(v294, 28, v289, v177, v257, 0);
      }

      v134 = v287;
      v123 = v299;
      goto LABEL_355;
    }

    sub_1818A2964(v294, 36, v262, v263, 0);
    v182 = (a1[9].i32[0] - 1);
    a1[9].i32[0] = v182;
    __ba = sub_1818A2964(v294, 135, v262, v264, 0);
    v279 = v182;
    sub_1818A2964(v294, 31, v289, v182, v264);
LABEL_352:
    v134 = v287;
    v123 = v299;
    v165 = v293;
LABEL_355:
    v120 = v255;
    goto LABEL_356;
  }

  v51 = 0;
  v52 = 0;
  v281 = 0;
  v53 = v298 + 2;
  v54 = v23 + 104;
  v290 = -1;
  v55 = v301;
  v56 = v299;
  v292 = 0;
  while (2)
  {
    if (!v56)
    {
      v57 = v52;
      v58 = sub_18195ECC4(v306, *&v53[6 * v51]);
      v54 = v23 + 104;
      v53 = v298 + 2;
      v56 = v299;
      v52 = v57;
      v55 = v301;
      if (v58)
      {
        goto LABEL_302;
      }
    }

    v59 = &v53[6 * v51];
    v60 = *(v59 + 1);
    if (v60 && (v61 = *v60, *v60))
    {
      v62 = 0;
      v63 = v60 + 1;
      do
      {
        v62 += byte_181A20298[v61];
        v64 = *v63++;
        v61 = v64;
      }

      while (v64);
    }

    else
    {
      v62 = 0;
    }

    v65 = *(v23 + 8);
    v66 = *(v23 + 54);
    v67 = *(v54 + (v62 & 0xF));
    v68 = v65 + 16 * v67;
    if (*(v68 + 11) == v62)
    {
      v69 = *v68;
      for (j = *(v59 + 1); ; ++j)
      {
        if (*v69 == *j)
        {
          if (!*v69)
          {
LABEL_105:
            if (v67 == *(v23 + 52))
            {
              v292 = *v59;
              v75 = v67;
              v52 = 1;
              v290 = v51;
            }

            else
            {
              v75 = v67;
              v76 = *(v65 + 16 * v67 + 14);
              if (v55 && (v76 & 1) != 0)
              {
                v281 = 1;
              }

              else if ((v76 & 0x60) != 0)
              {
                sub_181910730(a1, "cannot UPDATE generated column %s", *(v65 + 16 * v67));
                goto LABEL_302;
              }
            }

            *(v48 + v75) = v51;
            v77 = *v23;
            if ((v67 & 0x80000000) != 0)
            {
              goto LABEL_130;
            }

            v78 = *(v65 + 16 * v75);
            goto LABEL_131;
          }
        }

        else if (byte_181A20298[*v69] != byte_181A20298[*j])
        {
          break;
        }

        ++v69;
      }
    }

    v67 = 0;
    if (v66 <= 1)
    {
      v71 = 1;
    }

    else
    {
      v71 = v66;
    }

    do
    {
      v72 = v65 + 16 * v67;
      if (*(v72 + 11) == v62)
      {
        v73 = *v72;
        for (k = *(v59 + 1); ; ++k)
        {
          if (*v73 == *k)
          {
            if (!*v73)
            {
              goto LABEL_105;
            }
          }

          else if (byte_181A20298[*v73] != byte_181A20298[*k])
          {
            break;
          }

          ++v73;
        }
      }

      ++v67;
    }

    while (v67 != v71);
    if (v55)
    {
LABEL_247:
      sub_181910730(a1, "no such column: %s", *(v59 + 1));
      a1[5].i8[3] |= 8u;
      goto LABEL_302;
    }

    v79 = *(v59 + 1);
    for (m = "_ROWID_"; *v79 != *m; ++m)
    {
      if (byte_181A20298[*v79] != byte_181A20298[*m])
      {
        v81 = *(v59 + 1);
        for (n = "ROWID"; ; ++n)
        {
          if (*v81 == *n)
          {
            if (!*v81)
            {
              goto LABEL_129;
            }
          }

          else if (byte_181A20298[*v81] != byte_181A20298[*n])
          {
            v83 = *(v59 + 1);
            for (ii = "OID"; ; ++ii)
            {
              if (*v83 == *ii)
              {
                if (!*v83)
                {
                  goto LABEL_129;
                }
              }

              else if (byte_181A20298[*v83] != byte_181A20298[*ii])
              {
                goto LABEL_247;
              }

              ++v83;
            }
          }

          ++v81;
        }
      }

LABEL_116:
      ++v79;
    }

    if (*v79)
    {
      goto LABEL_116;
    }

LABEL_129:
    v292 = *v59;
    v77 = *v23;
    v52 = 1;
    LODWORD(v67) = -1;
    v290 = v51;
LABEL_130:
    v78 = "ROWID";
LABEL_131:
    v85 = *a1;
    v86 = *(*a1 + 528);
    if (!v86 || *(*&v85 + 197) || a1[37].i8[6])
    {
LABEL_79:
      if (++v51 >= *v298)
      {
        goto LABEL_140;
      }

      continue;
    }

    break;
  }

  v87 = v52;
  v88 = v86(*(*&v85 + 536), 23, v77, v78, *(*(v284 + 4) + 32 * v33), *&a1[46]);
  if (v88 == 1)
  {
    v160 = 23;
    sub_181910730(a1, "not authorized");
  }

  else
  {
    if ((v88 & 0xFFFFFFFD) == 0)
    {
      if (v88 == 2)
      {
        *(v48 + v67) = -1;
      }

      v55 = v301;
      v52 = v87;
      v56 = v299;
      v53 = v298 + 2;
      v54 = v23 + 104;
      goto LABEL_79;
    }

    v160 = 1;
    sub_181910730(a1, "authorizer malfunction");
  }

  a1[3].i32[0] = v160;
LABEL_302:
  v12 = v284;
LABEL_303:
  v9 = v285;
  v10 = v298;
LABEL_488:
  sub_181929C84(v12, v48);
  a6 = v283;
LABEL_2:
  result = sub_1818BB5B0(v12, a2, a3, a4);
  if (v10)
  {
    result = sub_18194E5B8(v12, v10);
  }

  if (v9)
  {
    result = sub_1819439E0(v12, v9);
  }

  if (a6)
  {
    result = sub_18194E5B8(v12, a6);
  }

  if (a7)
  {
    return sub_1819439E0(v12, a7);
  }

  return result;
}

void *sub_1818EA08C(int32x2_t *a1, uint64_t a2, unsigned __int8 *a3, void *a4, unsigned __int8 *a5)
{
  v6 = a4;
  v7 = a3;
  *v137 = 0;
  v136 = 0;
  v134 = 0u;
  v135 = 0u;
  v133 = 0u;
  v9 = *a1;
  if (a1[6].i32[1])
  {
    goto LABEL_2;
  }

  v13 = (a2 + 72);
  if (*(a2 + 35))
  {
    v14 = *v13;
    v15 = *(v9 + 4);
    if (v14)
    {
      v16 = (v15 + 24);
      v17 = 0xFFFFFFFF00000000;
      do
      {
        v18 = *v16;
        v16 += 4;
        v17 += 0x100000000;
      }

      while (v18 != v14);
      v19 = v17 >> 32;
    }

    else
    {
      v19 = -32768;
    }

    v13 = (v15 + 32 * v19);
  }

  v20 = sub_1818CA520(a1, 0, *(a2 + 8), *v13);
  v21 = *(a2 + 24);
  if (v21)
  {
    v22 = *a1;
    if (*(*a1 + 824) || (v23 = *(v21 + 44) - 1, (*(v21 + 44) = v23) == 0))
    {
      sub_18194E094(v22, v21, a3, a4);
    }
  }

  *(a2 + 24) = v20;
  *(a2 + 33) |= 0x400u;
  if (!v20)
  {
    goto LABEL_2;
  }

  ++*(v20 + 11);
  if ((*(a2 + 33) & 2) != 0)
  {
    v24 = v20[2];
    if (!v24)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v25 = *v24;
      for (i = *(a2 + 48); *v25 == *i; ++i)
      {
        if (!*v25)
        {
          *(a2 + 56) = v24;
          goto LABEL_34;
        }

LABEL_28:
        ++v25;
      }

      if (byte_181A20298[*v25] == byte_181A20298[*i])
      {
        goto LABEL_28;
      }

      v24 = *(v24 + 40);
      if (!v24)
      {
LABEL_33:
        sub_181910730(a1, "no such index: %s", *(a2 + 48));
        v10 = 0;
        a1[5].i8[3] |= 8u;
        goto LABEL_3;
      }
    }
  }

LABEL_34:
  if ((v20[11] || (v31 = *(*(*a1 + 32) + 56)) != 0 && *(v31 + 64)) && !a1[5].i8[2])
  {
    v27 = sub_181980B5C(a1, v20, 129, 0, 0);
    v29 = v20 + 63;
    v28 = *(v20 + 63);
    if (v27)
    {
      v30 = 1;
      goto LABEL_42;
    }

    v32 = sub_1818D6F14(a1, v20, 0, 0);
  }

  else
  {
    v29 = v20 + 63;
    v28 = *(v20 + 63);
    v32 = sub_1818D6F14(a1, v20, 0, 0);
    v27 = 0;
  }

  v30 = v32 != 0;
LABEL_42:
  v132 = v30;
  if (v28 == 2)
  {
    v33 = 1;
    goto LABEL_45;
  }

  v7 = sub_18197FEFC(a1, a2, v7, v6, a5, "DELETE");
  v6 = 0;
  a5 = 0;
  v33 = 0;
  if (*v29 != 1)
  {
LABEL_45:
    if (*(v20 + 27) > 0)
    {
      goto LABEL_47;
    }
  }

  if (sub_181960D84(a1, v20))
  {
LABEL_2:
    v10 = 0;
    goto LABEL_3;
  }

LABEL_47:
  if (sub_181980528(a1, v20, v27))
  {
    goto LABEL_2;
  }

  v116 = v27;
  v34 = v20[12];
  v35 = *(v9 + 4);
  if (v34)
  {
    v36 = (v35 + 24);
    LODWORD(v37) = -1;
    do
    {
      v38 = *v36;
      v36 += 4;
      v37 = (v37 + 1);
    }

    while (v38 != v34);
  }

  else
  {
    v37 = 4294934528;
  }

  v39 = *a1;
  v40 = *(*a1 + 528);
  if (v40 && !v39[197] && !a1[37].i8[6])
  {
    v68 = v40(*(v39 + 67), 9, *v20, 0, *(v35 + 32 * v37), *&a1[46]);
    if (v68 == 1)
    {
      v69 = 23;
      sub_181910730(a1, "not authorized");
    }

    else
    {
      if ((v68 & 0xFFFFFFFD) == 0)
      {
        v125 = v68;
        goto LABEL_58;
      }

      v69 = 1;
      sub_181910730(a1, "authorizer malfunction");
    }

    v10 = 0;
    a1[3].i32[0] = v69;
    goto LABEL_3;
  }

  v125 = 0;
LABEL_58:
  v130 = v33;
  v41 = a1[7].i32[0];
  v42 = v41 + 1;
  a1[7].i32[0] = v41 + 1;
  v124 = v41;
  *(a2 + 36) = v41;
  v43 = v20[2];
  if (v43)
  {
    v44 = 0;
    v45 = v42;
    do
    {
      ++v45;
      ++v44;
      v43 = *(v43 + 40);
    }

    while (v43);
    a1[7].i32[0] = v45;
  }

  else
  {
    v44 = 0;
  }

  v117 = v42;
  if (v130)
  {
    v123 = a1[46];
    a1[46] = *v20;
    v128 = a1;
  }

  else
  {
    v123 = 0;
    v128 = 0;
  }

  v129 = sub_1818E7DFC(a1);
  if (!v129)
  {
    goto LABEL_79;
  }

  v119 = v29;
  v120 = a5;
  if (!a1[3].i8[6])
  {
    *(v129 + 268) |= 0x10u;
  }

  if (a1[19])
  {
    v46 = a1[19];
  }

  else
  {
    v46 = a1;
  }

  v47 = v46[14].i32[1];
  v48 = 1 << v37;
  if ((v47 & (1 << v37)) == 0)
  {
    v46[14].i32[1] = v47 | v48;
    if (v37 == 1)
    {
      sub_1819108F4(v46);
    }
  }

  v46[14].i32[0] |= v48;
  v46[4].i8[0] |= v132;
  if (v130)
  {
    sub_18198069C(a1, v20, v7, v6, v120, v124);
    a5 = 0;
    v6 = 0;
    v137[0] = v124;
    v137[1] = v124;
  }

  else
  {
    a5 = v120;
  }

  v136 = 0;
  v134 = 0u;
  v135 = 0u;
  *&v133 = a1;
  *(&v133 + 1) = a2;
  if (sub_18195ECC4(&v133, v7))
  {
    goto LABEL_79;
  }

  if ((v9[52] & 1) == 0 || a1[3].i8[6] || *&a1[20] || a1[5].i8[0])
  {
    v115 = 0;
  }

  else
  {
    v96 = a1[7].i32[1];
    v97 = (v96 + 1);
    a1[7].i32[1] = v97;
    v115 = v96 + 1;
    sub_1818A2964(v129, 71, 0, v97, 0);
  }

  if (v125)
  {
    v50 = 0;
  }

  else
  {
    v50 = v7 == 0;
  }

  v51 = !v50;
  if (((v51 | v132) & 1) == 0 && *v119 != 1 && !*(v9 + 45))
  {
    sub_181957014(a1, v37, *(v20 + 10), 1, *v20);
    if ((v20[6] & 0x80) == 0)
    {
      if (v115)
      {
        v82 = v115;
      }

      else
      {
        v82 = 0xFFFFFFFFLL;
      }

      v83 = a5;
      v84 = *v20;
      v85 = sub_1818A2964(v129, 145, *(v20 + 10), v37, v82);
      v86 = v84;
      a5 = v83;
      sub_1818B49F8(v129, v85, v86, 0xFFFFFFFFLL);
    }

    v87 = v20[2];
    if (v87)
    {
      v122 = a5;
      if (v115)
      {
        v88 = v115;
      }

      else
      {
        v88 = 0xFFFFFFFFLL;
      }

      do
      {
        if ((*(v87 + 99) & 3) != 2 || (v89 = v88, (v20[6] & 0x80) == 0))
        {
          v89 = 0;
        }

        sub_1818A2964(v129, 145, *(v87 + 88), v37, v89);
        v87 = *(v87 + 40);
      }

      while (v87);
      v10 = 0;
      a5 = v122;
    }

    else
    {
      v10 = 0;
    }

    v49 = v128;
    v75 = v115;
    goto LABEL_203;
  }

  if (BYTE8(v135) & 0x40 | v132)
  {
    v52 = 20;
  }

  else
  {
    v52 = 28;
  }

  v126 = v52;
  if ((v20[6] & 0x80) != 0)
  {
    v56 = v20[2];
    for (j = v115; v56; v56 = *(v56 + 40))
    {
      if ((*(v56 + 99) & 3) == 2)
      {
        break;
      }
    }

    v57 = *(v56 + 94);
    v58 = a1[7].u32[0];
    v59 = a1[7].i32[1];
    LODWORD(v112) = v58;
    HIDWORD(v112) = v59 + 1;
    v114 = *(v56 + 94);
    a1[7].i32[0] = v58 + 1;
    a1[7].i32[1] = v59 + v57;
    v110 = sub_1818A2964(v129, 117, v58, v57, 0);
    *&v131[4] = v56;
    sub_181957040(a1, v56);
    v109 = 0;
  }

  else
  {
    v53 = a1[7].i32[1];
    v54 = (v53 + 1);
    a1[7].i32[1] = v54;
    v109 = v53 + 1;
    sub_1818A2964(v129, 75, 0, v54, 0);
    *&v131[4] = 0;
    v112 = 0;
    v110 = 0;
    v114 = 1;
    j = v115;
  }

  v60 = sub_1818B507C(a1, a2, v7, 0, 0, 0, v126, v117);
  if (v60)
  {
    v61 = *(v60 + 40);
    v118 = *(v60 + 66);
    if (v118 != 1)
    {
      v62 = a1[19];
      if (!v62)
      {
        v62 = a1;
      }

      v62[4].i8[0] = 1;
    }

    v111 = v60;
    if (*(v60 + 68))
    {
      v115 = j;
      v63 = v61;
      sub_1818A2964(v129, 143, v124, 0, 0);
      v61 = v63;
      j = j;
    }

    v107 = v61;
    v108 = HIDWORD(v61);
    if (j)
    {
      sub_1818A2964(v129, 86, j, 1, 0);
    }

    v64 = *&v131[4];
    v121 = a5;
    if (*&v131[4])
    {
      v106 = v114;
      if (v106 >= 1)
      {
        v65 = 0;
        v66 = HIDWORD(v112);
        do
        {
          sub_181959FA4(v129, v20, v124, *(*(v64 + 8) + v65), v66);
          v64 = *&v131[4];
          v66 = (v66 + 1);
          v65 += 2;
        }

        while (2 * v106 != v65);
      }

      if (v118)
      {
        v67 = HIDWORD(v112);
LABEL_125:
        v71 = sub_181929E8C(v9, v44 + 2, 1865547279);
        v10 = v71;
        if (!v71)
        {
          sub_1818B9E4C(v111);
          a5 = v121;
          goto LABEL_80;
        }

        v127 = v67;
        memset(v71, 1, v44 + 1);
        v10[v44 + 1] = 0;
        v74 = v124;
        if ((v107 & 0x80000000) == 0)
        {
          v10[(v107 - v124)] = 0;
        }

        v75 = v115;
        if ((v107 & 0x8000000000000000) == 0)
        {
          v10[(v108 - v124)] = 0;
        }

        if (v110)
        {
          sub_1818B6C00(v129, v110, v72, v73);
        }

        v113 = a1[9].i32[0] - 1;
        a1[9].i32[0] = v113;
        if ((v130 & 1) == 0)
        {
          if (v118 == 2)
          {
            v76 = sub_1818A2964(v129, 15, 0, 0, 0);
            sub_1818D348C(a1, v20, 0x71u, 8, v124, v10, &v137[1], v137);
            v77 = *(v129 + 144);
            if (v77 - 1 == v76)
            {
              *(v129 + 144) = v76;
              v74 = v124;
            }

            else
            {
              if (*(*v129 + 103))
              {
                v95 = &byte_1EA831A58;
              }

              else
              {
                v95 = (*(v129 + 136) + 40 * v76);
              }

              v74 = v124;
              *(v95 + 2) = v77;
            }
          }

          else
          {
            sub_1818D348C(a1, v20, 0x71u, 8, v124, v10, &v137[1], v137);
          }
        }

        if (*v119 == 1)
        {
          *v131 = 0;
          v94 = 0;
          goto LABEL_182;
        }

        if (v10[v137[1] - v74])
        {
          sub_181910A18(v129, 28, v137[1], v113, v127, v114);
        }

        v94 = 0;
        *v131 = 0;
        a5 = v121;
LABEL_181:
        if (*v119 != 1)
        {
          sub_1818D61BC(a1, v20, v116, v137[1], v137[0], v127, v114, a1[3].i8[6] == 0, 0xBu, v118, v108);
          if (v94)
          {
            goto LABEL_193;
          }

          goto LABEL_197;
        }

LABEL_182:
        for (k = v20[10]; k; k = k[5])
        {
          if (*k == v9)
          {
            break;
          }
        }

        sub_181980924(a1, v20);
        v99 = a1[19];
        if (!v99)
        {
          v99 = a1;
        }

        v99[4].i8[1] = 1;
        if (v118 == 1)
        {
          sub_1818A2964(v129, 122, v124, 0, 0);
          if (!*&a1[19])
          {
            a1[4].i8[0] = 0;
          }
        }

        v100 = sub_1818A2964(v129, 7, 0, 1, v127);
        sub_1818B49F8(v129, v100, k, 4294967285);
        v101 = *(v129 + 144);
        if (v101 >= 1)
        {
          *(*(v129 + 136) + 40 * v101 - 38) = 2;
        }

        a5 = v121;
        if (v94)
        {
LABEL_193:
          if (*&v131[4])
          {
            v102 = *v131;
            sub_1818A2964(v129, 39, v112, (*v131 + 1), 0);
            v103 = *(v129 + 144);
            if (!*(*v129 + 103))
            {
              v104 = *(v129 + 136);
LABEL_201:
              v105 = (v104 + 40 * v102);
              goto LABEL_202;
            }
          }

          else
          {
            v102 = *v131;
            sub_1818A2964(v129, 9, 0, *v131, 0);
            v103 = *(v129 + 144);
            if (!*(*v129 + 103))
            {
              v104 = *(v129 + 136);
              goto LABEL_201;
            }
          }

          v105 = &byte_1EA831A58;
LABEL_202:
          v49 = v128;
          *(v105 + 2) = v103;
LABEL_203:
          if (!a1[3].i8[6] && !*&a1[20] && *&a1[18])
          {
            sub_18198590C(a1);
          }

          if (v75)
          {
            sub_181980A28(v129, v75, "rows deleted", a4);
          }

          goto LABEL_81;
        }

LABEL_197:
        sub_181958CD8(v129, v113);
        sub_1818B9E4C(v111);
        v49 = v128;
        goto LABEL_203;
      }

      v78 = (a1[7].i32[1] + 1);
      a1[7].i32[1] = v78;
      v79 = *(v64 + 32);
      if (!v79)
      {
        v79 = sub_181978718(*a1, *&v131[4]);
      }

      v80 = sub_1818A2964(v129, 97, HIDWORD(v112), v106, v78);
      sub_1818B49F8(v129, v80, v79, v106);
      v127 = v78;
      sub_181910A18(v129, 138, v112, v78, HIDWORD(v112), v106);
      v114 = 0;
      v81 = v119;
      a5 = v121;
      v75 = v115;
    }

    else
    {
      v70 = (a1[7].i32[1] + 1);
      a1[7].i32[1] = v70;
      sub_1818A2964(v129, 135, v124, v70, 0);
      if (v118)
      {
        v67 = v70;
        goto LABEL_125;
      }

      v127 = v70;
      sub_1818A2964(v129, 156, v109, v70, 0);
      v114 = 1;
      v75 = v115;
      v81 = v119;
    }

    sub_1818B9E4C(v111);
    if ((v130 & 1) == 0)
    {
      sub_1818D348C(a1, v20, 0x71u, 8, v124, 0, &v137[1], v137);
    }

    if (*&v131[4])
    {
      *v131 = sub_1818A2964(v129, 36, v112, 0, 0);
      if (*v81 == 1)
      {
        v90 = 94;
        v91 = v112;
        v92 = 0;
        v93 = v127;
      }

      else
      {
        v90 = 134;
        v91 = v112;
        v92 = v127;
        v93 = 0;
      }

      sub_1818A2964(v129, v90, v91, v92, v93);
      v10 = 0;
      v113 = 0;
      v94 = 1;
    }

    else
    {
      *v131 = sub_1818A2964(v129, 46, v109, 0, v127);
      v10 = 0;
      v113 = 0;
      v94 = 1;
    }

    goto LABEL_181;
  }

LABEL_79:
  v10 = 0;
LABEL_80:
  v49 = v128;
LABEL_81:
  if (v49)
  {
    v49[46] = v123;
  }

LABEL_3:
  result = sub_1818BB5B0(v9, a2, a3, a4);
  if (v7)
  {
    result = sub_1819439E0(v9, v7);
  }

  if (v6)
  {
    result = sub_18194E5B8(v9, v6);
  }

  if (a5)
  {
    result = sub_1819439E0(v9, a5);
  }

  if (v10)
  {
    return sub_181939EC8(v9, v10);
  }

  return result;
}

uint64_t sub_1818EAE9C(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = *a2;
  if (v7 > 0xA9)
  {
    if (v7 != 170 && v7 != 179)
    {
      goto LABEL_21;
    }

LABEL_15:
    if (v5)
    {
      v11 = *v5;
      if (*v5 >= 1)
      {
        v12 = v5 + 9;
        while (1)
        {
          v13 = *v12;
          v12 += 18;
          if (*(a2 + 11) == v13)
          {
            break;
          }

          if (!--v11)
          {
            return 0;
          }
        }

        sub_18197F9E0(v4, v6, a2);
      }
    }

    return 0;
  }

  if (v7 == 168)
  {
    goto LABEL_15;
  }

  if (v7 != 169)
  {
LABEL_21:
    if ((*(v3 + 42) & 2) != 0)
    {
      v14 = *(v4 + 96);
      if (v14)
      {
        while (1)
        {
          v15 = *(v14 + 8);
          if ((v15 & 0x80000000) == 0 && !sub_181959260(0, a2, *v14, v15))
          {
            break;
          }

          v14 = *(v14 + 24);
          if (!v14)
          {
            return 0;
          }
        }

        if ((a2[7] & 3) == 0 && *v5 >= 1 && v5[9] == *(v14 + 8) && !*(a2 + 8))
        {
          if (*(v4 + 52))
          {
            return 2;
          }

          *&v29[16] = 0u;
          v30 = 0u;
          *v29 = 0u;
          memset(v28, 0, sizeof(v28));
          LOBYTE(v28[0]) = -86;
          *&v29[12] = *(v14 + 12);
          sub_18197F9E0(v4, v6, v28);
          if (*(v4 + 52))
          {
            return 2;
          }

          v27 = *&v29[20];
          *(*(v6 + 32) + 32 * *&v29[20] + 8) = a2;
          *(a2 + 8) = v6;
          *(a2 + 26) = v27;
          return 1;
        }
      }
    }

    return 0;
  }

  if ((*(v3 + 42) & 2) != 0 || *(a1 + 32) != a2[2] || *(a2 + 8))
  {
    return 0;
  }

  v8 = *(*v4 + 144);
  if (*(v6 + 56) < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = *(v6 + 48);
    do
    {
      if (*v10 == a2)
      {
        break;
      }

      if (!sub_181959260(0, *v10, a2, 0xFFFFFFFFLL))
      {
        break;
      }

      ++v9;
      v10 += 4;
    }

    while (v9 < *(v6 + 56));
  }

  if (v9 <= v8)
  {
    if (v9 >= *(v6 + 56))
    {
      v17 = *(*v4 + 100);
      v18 = sub_18197FC38(*v4, v6);
      LOWORD(v9) = v18;
      if ((v18 & 0x80000000) == 0)
      {
        v19 = *(v6 + 48) + 32 * v18;
        *v19 = a2;
        v20 = *(a2 + 4);
        if (v20)
        {
          v21 = *v20;
        }

        else
        {
          v21 = 0;
        }

        v22 = sub_181893B48(*v4, *(a2 + 1), v21, v17, 0);
        *(v19 + 8) = v22;
        v23 = *(a2 + 2);
        if (!v23 || (*(v22 + 4) & 0x20) != 0)
        {
          *(v19 + 24) = -1;
        }

        else
        {
          v24 = *(v4 + 56);
          *(v4 + 56) = v24 + 1;
          *(v19 + 24) = v24;
          if (v21 == 1 && (v25 = *(v23 + 32), *v25 == 1) && !sub_181959260(0, *(v25 + 8), *(*(a2 + 4) + 8), 0))
          {
            *(v19 + 28) = 0;
            *(v19 + 29) = (a2[4] & 4) != 0;
          }

          else
          {
            *(v19 + 28) = 1;
          }

          *(v19 + 30) = (*(*(v19 + 8) + 4) & 0x100000) != 0;
        }

        if ((a2[4] & 4) != 0 && !*(v19 + 29))
        {
          v26 = *(v4 + 56);
          *(v4 + 56) = v26 + 1;
        }

        else
        {
          v26 = -1;
        }

        *(v19 + 16) = v26;
      }
    }
  }

  else
  {
    sub_181910730(v4, "more than %d aggregate terms", v8);
    LOWORD(v9) = v8;
  }

  *(a2 + 26) = v9;
  *(a2 + 8) = v6;
  return 1;
}

void sub_1818EB1E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40) + *(a2 + 56);
  if (v2 && !*(a1 + 52))
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    v7 = v2 + v6 - 1;
    v8 = *(v5 + 144);
    if (*(v5 + 148) <= v8)
    {
      sub_18194C8AC(*(a1 + 16), 75, 0, v6, v7);
    }

    else
    {
      *(v5 + 144) = v8 + 1;
      v9 = *(v5 + 136) + 40 * v8;
      *v9 = 75;
      *(v9 + 8) = v6;
      *(v9 + 12) = v7;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 16) = 0;
    }

    if (*(a2 + 56) >= 1)
    {
      v10 = 0;
      v11 = *(a2 + 48) + 16;
      do
      {
        if ((*v11 & 0x80000000) == 0)
        {
          v12 = *(*(v11 - 16) + 32);
          if (v12 && *v12 == 1)
          {
            v13 = sub_181965648(a1, v12, 0, 0);
            v14 = *v11;
            v15 = *(v5 + 144);
            if (*(v5 + 148) <= v15)
            {
              v15 = sub_18194C8AC(v5, 117, v14, 0, 0);
            }

            else
            {
              *(v5 + 144) = v15 + 1;
              v16 = *(v5 + 136) + 40 * v15;
              *v16 = 117;
              *(v16 + 4) = v14;
              *(v16 + 8) = 0u;
              *(v16 + 24) = 0u;
            }

            if (*(*v5 + 103))
            {
              if (v13)
              {
                v28 = *(*v5 + 824) == 0;
              }

              else
              {
                v28 = 0;
              }

              if (v28)
              {
                v26 = (*v13)-- == 1;
                if (v26)
                {
                  sub_181939EC8(*(v13 + 2), v13);
                }
              }
            }

            else
            {
              v29 = v15;
              if (v15 < 0)
              {
                v29 = *(v5 + 144) - 1;
              }

              v30 = *(v5 + 136) + 40 * v29;
              if (*(v30 + 1))
              {
                sub_18194CB90(v5, v30, v13, 4294967288);
              }

              else if (v13)
              {
                *(v30 + 16) = v13;
                *(v30 + 1) = -8;
              }
            }

            *(v11 + 4) = v15;
            sub_18195AD8C(a1, 0, "USE TEMP B-TREE FOR %s(DISTINCT)", *(*(v11 - 8) + 56));
            if ((*(v11 + 8) & 0x80000000) != 0)
            {
              goto LABEL_11;
            }

LABEL_19:
            v17 = *(v11 - 16);
            v18 = *(v11 + 13) == 0;
            if (*(v11 + 12))
            {
              v18 += **(v17 + 32);
            }

            if (*(v11 + 14))
            {
              v18 += **(v17 + 32);
            }

            v19 = *(*(v17 + 16) + 32);
            v20 = sub_181965648(a1, v19, 0, v18);
            v21 = v20;
            if (!*(v11 + 13) && !*(a1 + 52))
            {
              ++*(v20 + 3);
            }

            v22 = *(v11 + 8);
            v23 = *v19 + v18;
            v24 = *(v5 + 144);
            if (*(v5 + 148) <= v24)
            {
              v24 = sub_18194C8AC(v5, 117, v22, v23, 0);
            }

            else
            {
              *(v5 + 144) = v24 + 1;
              v25 = *(v5 + 136) + 40 * v24;
              *v25 = 117;
              *(v25 + 4) = v22;
              *(v25 + 8) = v23;
              *(v25 + 12) = 0;
              *(v25 + 28) = 0;
              *(v25 + 20) = 0;
              *(v25 + 36) = 0;
            }

            if (*(*v5 + 103))
            {
              if (v21)
              {
                v26 = *(*v5 + 824) == 0;
              }

              else
              {
                v26 = 0;
              }

              if (v26)
              {
                v26 = (*v21)-- == 1;
                if (v26)
                {
                  sub_181939EC8(*(v21 + 2), v21);
                }
              }
            }

            else
            {
              if (v24 < 0)
              {
                v24 = *(v5 + 144) - 1;
              }

              v27 = *(v5 + 136) + 40 * v24;
              if (*(v27 + 1))
              {
                sub_18194CB90(v5, v27, v21, 4294967288);
              }

              else if (v21)
              {
                *(v27 + 16) = v21;
                *(v27 + 1) = -8;
              }
            }

            sub_18195AD8C(a1, 0, "USE TEMP B-TREE FOR %s(ORDER BY)", *(*(v11 - 8) + 56));
            goto LABEL_11;
          }

          sub_181910730(a1, "DISTINCT aggregates must have exactly one argument");
          *v11 = -1;
        }

        if ((*(v11 + 8) & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

LABEL_11:
        ++v10;
        v11 += 32;
      }

      while (v10 < *(a2 + 56));
    }
  }
}

void sub_1818EB5A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a1 + 52))
  {
    return;
  }

  v4 = a3;
  v5 = a2;
  v7 = *(a1 + 16);
  *a3 = 1;
  if (*(a3 + 56) < 1)
  {
LABEL_126:
    v71 = 0;
    if (v5)
    {
      v90 = v5;
      if (*(v4 + 44))
      {
        goto LABEL_128;
      }
    }

    goto LABEL_131;
  }

  v8 = 0;
  v90 = 0;
  v9 = *(a3 + 48);
  v86 = a1 + 184;
  v87 = a2;
  do
  {
    v94 = v8;
    v10 = *(*v9 + 32);
    if (*(*v9 + 7))
    {
      v15 = *(*(*v9 + 72) + 72);
      if (*(v4 + 44) && v5 && (*(*(v9 + 8) + 4) & 0x20) != 0)
      {
        if (!v90)
        {
          v90 = *(a1 + 60) + 1;
          *(a1 + 60) = v90;
        }

        v16 = *(v7 + 36);
        if (*(v7 + 37) <= v16)
        {
          v24 = v15;
          sub_18194C8AC(v7, 80, v5, v90, 0);
          v15 = v24;
        }

        else
        {
          *(v7 + 36) = v16 + 1;
          v17 = &v7[17][5 * v16];
          *v17 = 80;
          *(v17 + 4) = v5;
          *(v17 + 8) = v90;
          *(v17 + 12) = 0;
          *(v17 + 28) = 0;
          *(v17 + 20) = 0;
          *(v17 + 36) = 0;
        }
      }

      v11 = (*(a1 + 72) - 1);
      *(a1 + 72) = v11;
      sub_1818DD640(a1, v15, v11, 16);
      if ((*(v9 + 24) & 0x80000000) != 0)
      {
        goto LABEL_7;
      }

LABEL_25:
      v12 = *v10;
      v25 = *(*(*v9 + 16) + 32);
      v26 = *v25;
      if (!*(v9 + 29))
      {
        ++v26;
      }

      if (*(v9 + 28))
      {
        v27 = *v10;
      }

      else
      {
        v27 = 0;
      }

      if (*(v9 + 30))
      {
        v28 = *v10;
      }

      else
      {
        v28 = 0;
      }

      v29 = v26 + v27 + v28;
      v91 = v11;
      v93 = v29 + 1;
      if (v29)
      {
        v30 = *(a1 + 44);
        if (v30 <= v29)
        {
          v32 = *(a1 + 60);
          v14 = v32 + 1;
          *(a1 + 60) = v32 + v93;
        }

        else
        {
          v14 = *(a1 + 48);
          *(a1 + 44) = v30 - v93;
          *(a1 + 48) = v14 + v93;
        }
      }

      else if (*(a1 + 31))
      {
        v31 = *(a1 + 31) - 1;
        *(a1 + 31) = v31;
        v14 = *(v86 + 4 * v31);
      }

      else
      {
        v14 = *(a1 + 60) + 1;
        *(a1 + 60) = v14;
      }

      sub_1819588AC(a1, v25, v14, 0, 1);
      v33 = *v25;
      if (*(v9 + 29))
      {
        if (*(v9 + 28))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v35 = *(v9 + 24);
        v36 = v33 + v14;
        v37 = *(v7 + 36);
        if (*(v7 + 37) <= v37)
        {
          sub_18194C8AC(v7, 126, v35, v36, 0);
        }

        else
        {
          *(v7 + 36) = v37 + 1;
          v38 = &v7[17][5 * v37];
          *v38 = 126;
          *(v38 + 4) = v35;
          *(v38 + 8) = v36;
          *(v38 + 12) = 0;
          *(v38 + 28) = 0;
          *(v38 + 20) = 0;
          *(v38 + 36) = 0;
        }

        ++v33;
        if (*(v9 + 28))
        {
LABEL_42:
          v34 = v33 + v14;
          sub_1819588AC(a1, v10, v33 + v14, 0, 1);
          v33 += v12;
          if (!*(v9 + 30))
          {
            goto LABEL_59;
          }

          goto LABEL_49;
        }
      }

      v34 = v14;
      if (!*(v9 + 30))
      {
        goto LABEL_59;
      }

LABEL_49:
      if (*(v9 + 28))
      {
        v39 = v34;
      }

      else
      {
        v39 = v14;
      }

      if (v12 >= 1)
      {
        v40 = v14 + v33;
        v41 = v12;
        do
        {
          v43 = *(v7 + 36);
          if (*(v7 + 37) > v43)
          {
            *(v7 + 36) = v43 + 1;
            v42 = &v7[17][5 * v43];
            *v42 = 181;
            *(v42 + 4) = v39;
            *(v42 + 8) = v40;
            *(v42 + 12) = 0;
            *(v42 + 28) = 0;
            *(v42 + 20) = 0;
            *(v42 + 36) = 0;
          }

          else
          {
            sub_18194C8AC(v7, 181, v39, v40, 0);
          }

          ++v39;
          ++v40;
          --v41;
        }

        while (v41);
        v5 = v87;
      }

LABEL_59:
      LODWORD(v11) = v91;
      v44 = *(v9 + 16);
      if ((v44 & 0x80000000) != 0)
      {
        goto LABEL_67;
      }

LABEL_63:
      if (v10)
      {
        if (!v11)
        {
          LODWORD(v11) = *(a1 + 72) - 1;
          *(a1 + 72) = v11;
        }

        *(v9 + 16) = sub_18197EE48(a1, a4, v44, v11, v10, v34);
      }

      goto LABEL_67;
    }

    LODWORD(v11) = 0;
    if ((*(v9 + 24) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_7:
    if (!v10)
    {
      v14 = 0;
      v18 = (v9 + 8);
      v12 = 0;
      v19 = v94;
      if ((*(*(v9 + 8) + 4) & 0x20) == 0)
      {
        v12 = 0;
        goto LABEL_105;
      }

      goto LABEL_90;
    }

    v12 = *v10;
    if (*v10 == 1)
    {
      if (*(a1 + 31))
      {
        v13 = *(a1 + 31) - 1;
        *(a1 + 31) = v13;
        v14 = *(v86 + 4 * v13);
      }

      else
      {
        v14 = *(a1 + 60) + 1;
        *(a1 + 60) = v14;
      }
    }

    else
    {
      v20 = *(a1 + 44);
      v21 = __OFSUB__(v20, v12);
      v22 = v20 - v12;
      if (v22 < 0 != v21)
      {
        v23 = *(a1 + 60);
        v14 = v23 + 1;
        *(a1 + 60) = v23 + v12;
      }

      else
      {
        v14 = *(a1 + 48);
        *(a1 + 44) = v22;
        *(a1 + 48) = v14 + v12;
      }
    }

    sub_1819588AC(a1, v10, v14, 0, 1);
    v93 = 0;
    v34 = v14;
    v44 = *(v9 + 16);
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

LABEL_67:
    v4 = a3;
    if ((*(v9 + 24) & 0x80000000) == 0)
    {
      v12 = v93;
      v45 = v93 - 1;
      v46 = v93 - 1 + v14;
      v47 = *(v7 + 36);
      if (*(v7 + 37) <= v47)
      {
        sub_18194C8AC(v7, 97, v14, v93 - 1, v45 + v14);
      }

      else
      {
        *(v7 + 36) = v47 + 1;
        v48 = &v7[17][5 * v47];
        *v48 = 97;
        *(v48 + 4) = v14;
        *(v48 + 8) = v45;
        *(v48 + 12) = v46;
        *(v48 + 24) = 0;
        *(v48 + 32) = 0;
        *(v48 + 16) = 0;
      }

      v49 = *(v9 + 24);
      v50 = *(v7 + 36);
      if (*(v7 + 37) <= v50)
      {
        sub_18194CAFC(v7, 138, v49, v45 + v14, v14, v45);
      }

      else
      {
        *(v7 + 36) = v50 + 1;
        v51 = &v7[17][5 * v50];
        *v51 = 64906;
        *(v51 + 4) = v49;
        *(v51 + 8) = v46;
        *(v51 + 12) = v14;
        *(v51 + 16) = v45;
        *(v51 + 24) = 0;
        *(v51 + 32) = 0;
      }

      v19 = v94;
      if (v93 == 1)
      {
        goto LABEL_77;
      }

      goto LABEL_115;
    }

    v18 = (v9 + 8);
    if ((*(*(v9 + 8) + 4) & 0x20) == 0)
    {
      v19 = v94;
      goto LABEL_105;
    }

    if (v12 < 1)
    {
      v19 = v94;
    }

    else
    {
      v92 = v11;
      v53 = (v10 + 2);
      v54 = 1;
      do
      {
        v55 = *v53;
        v53 += 3;
        v56 = sub_1818B4720(a1, v55);
        if (v56)
        {
          v57 = 0;
        }

        else
        {
          v57 = v54 < v12;
        }

        ++v54;
      }

      while (v57);
      v19 = v94;
      LODWORD(v11) = v92;
      if (v56)
      {
        if (v90)
        {
          goto LABEL_94;
        }

        goto LABEL_91;
      }
    }

LABEL_90:
    v56 = *(*a1 + 16);
    if (v90)
    {
      goto LABEL_94;
    }

LABEL_91:
    if (*(v4 + 44))
    {
      v90 = *(a1 + 60) + 1;
      *(a1 + 60) = v90;
    }

    else
    {
      v90 = 0;
    }

LABEL_94:
    v58 = v11;
    v59 = *(v7 + 36);
    v60 = v56;
    if (*(v7 + 37) <= v59)
    {
      v59 = sub_18194C8AC(v7, 85, v90, 0, 0);
    }

    else
    {
      *(v7 + 36) = v59 + 1;
      v61 = &v7[17][5 * v59];
      *v61 = 85;
      *(v61 + 4) = v90;
      *(v61 + 8) = 0u;
      *(v61 + 24) = 0u;
    }

    if (!*(*v7 + 103))
    {
      if (v59 < 0)
      {
        v59 = *(v7 + 36) - 1;
      }

      v62 = &v7[17][5 * v59];
      if (*(v62 + 1))
      {
        sub_18194CB90(v7, v62, v60, 4294967294);
      }

      else if (v60)
      {
        *(v62 + 16) = v60;
        *(v62 + 1) = -2;
      }
    }

    LODWORD(v11) = v58;
    v5 = v87;
LABEL_105:
    v63 = *(v4 + 16) + v19 + *(v4 + 40);
    v64 = *(v7 + 36);
    if (*(v7 + 37) <= v64)
    {
      sub_18194C8AC(v7, 162, 0, v14, v63);
    }

    else
    {
      *(v7 + 36) = v64 + 1;
      v65 = &v7[17][5 * v64];
      *v65 = 162;
      *(v65 + 8) = v14;
      *(v65 + 12) = v63;
      *(v65 + 24) = 0;
      *(v65 + 32) = 0;
      *(v65 + 16) = 0;
    }

    v66 = *v18;
    if (*(*v7 + 103))
    {
      if ((*(v66 + 4) & 0x10) != 0)
      {
        sub_181939EC8(*v7, v66);
      }
    }

    else
    {
      v67 = &v7[17][5 * *(v7 + 36)];
      *(v67 - 39) = -7;
      *(v67 - 24) = v66;
    }

    v68 = *(v7 + 36);
    if (v68 >= 1)
    {
      *(&v7[17][5 * v68 - 4] - 3) = v12;
    }

    if (v12 == 1)
    {
LABEL_77:
      if (v14)
      {
        v52 = *(a1 + 31);
        if (v52 <= 7)
        {
          *(a1 + 31) = v52 + 1;
          *(v86 + 4 * v52) = v14;
        }
      }

      goto LABEL_117;
    }

LABEL_115:
    if (*(a1 + 44) < v12)
    {
      *(a1 + 44) = v12;
      *(a1 + 48) = v14;
    }

LABEL_117:
    if (!v11)
    {
      goto LABEL_120;
    }

    v69 = v7[3];
    v70 = ~v11;
    if (*(v69 + 72) + *(v69 + 76) >= 0)
    {
      *(*(v69 + 80) + 4 * v70) = *(v7 + 36);
LABEL_120:
      if (*(a1 + 52))
      {
        return;
      }

      goto LABEL_121;
    }

    sub_18195CB84(v69, v7, v70);
    if (*(a1 + 52))
    {
      return;
    }

LABEL_121:
    v8 = v19 + 1;
    v9 += 32;
  }

  while (v8 < *(v4 + 56));
  if (!v90)
  {
    goto LABEL_126;
  }

LABEL_128:
  v71 = *(v7 + 36);
  if (*(v7 + 37) <= v71)
  {
    v71 = sub_18194C8AC(v7, 16, v90, 0, 0);
  }

  else
  {
    *(v7 + 36) = v71 + 1;
    v72 = &v7[17][5 * v71];
    *v72 = 16;
    *(v72 + 4) = v90;
    *(v72 + 8) = 0u;
    *(v72 + 24) = 0u;
  }

LABEL_131:
  if (*(v4 + 44) < 1)
  {
LABEL_152:
    *v4 = 0;
    if (v71)
    {
      v84 = *(v7 + 36);
      if (v84 - 1 == v71)
      {
        *(v7 + 36) = v71;
      }

      else
      {
        if (*(*v7 + 103))
        {
          v85 = &byte_1EA831A58;
        }

        else
        {
          v85 = &v7[17][5 * v71];
        }

        *(v85 + 2) = v84;
      }
    }
  }

  else
  {
    v73 = 0;
    v74 = *(v4 + 32);
    while (1)
    {
      if (*(a1 + 16))
      {
        v75 = *(v74 + 8);
        v76 = *(v4 + 16) + v73;
        v77 = sub_1818B8080(a1, v75, v76);
        if (v77 != v76)
        {
          v78 = v77;
          if (!v75)
          {
            goto LABEL_146;
          }

          while (1)
          {
            v79 = *(v75 + 1);
            if ((v79 & 0x82000) == 0)
            {
              break;
            }

            if ((v79 & 0x80000) != 0)
            {
              v75 = *(*(v75 + 4) + 8);
              if (!v75)
              {
                goto LABEL_146;
              }
            }

            else
            {
              if (*v75 != 114)
              {
                break;
              }

              v75 = *(v75 + 2);
              if (!v75)
              {
                goto LABEL_146;
              }
            }
          }

          if ((v79 & 0x400000) != 0 || *v75 == 176)
          {
            v80 = 80;
          }

          else
          {
LABEL_146:
            v80 = 81;
          }

          v81 = *(a1 + 16);
          v82 = *(v81 + 144);
          if (*(v81 + 148) <= v82)
          {
            sub_18194C8AC(v81, v80, v78, v76, 0);
          }

          else
          {
            *(v81 + 144) = v82 + 1;
            v83 = *(v81 + 136) + 40 * v82;
            *v83 = v80;
            *(v83 + 2) = 0;
            *(v83 + 4) = v78;
            *(v83 + 8) = v76;
            *(v83 + 1) = 0;
            *(v83 + 12) = 0;
            *(v83 + 28) = 0;
            *(v83 + 20) = 0;
            *(v83 + 36) = 0;
          }
        }
      }

      if (*(a1 + 52))
      {
        break;
      }

      ++v73;
      v74 += 32;
      if (v73 >= *(v4 + 44))
      {
        goto LABEL_152;
      }
    }
  }
}

uint64_t sub_1818EBF64(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  WORD2(v7) = 1;
  *(&v7 + 1) = *(a1 + 24);
  v10[2] = a1;
  v10[3] = 0;
  v10[0] = &v6;
  v10[1] = a2;
  LOBYTE(v12) = *(*(&v7 + 1) + 100);
  (*(a2 + 32))(v10);
  if (*(a1 + 32) >= 1)
  {
    sub_181929C84(*(a1 + 24), *(a1 + 40));
  }

  v3 = v7;
  *a1 = v6;
  *(a1 + 16) = v3;
  v4 = v9;
  *(a1 + 32) = v8;
  *(a1 + 48) = v4;
  return HIDWORD(v11);
}

void sub_1818EBFF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = a1[1];
    if (v5 && *(v5 + 32))
    {
      v6 = a1[2];
      if ((*(v6 + 20) & 0x80000000) == 0)
      {
        v7 = sub_18190C2E0(a1, 0, a3, a4);
        if (!v7)
        {
          goto LABEL_8;
        }

LABEL_13:
        v8 = *v7;
LABEL_14:
        v9 = *a1;
        if ((*(*a1 + 20) & 0x9000) != 0)
        {

          sub_18193D288(v9, v8);
        }

        else
        {
          *v9 = v8;
          *(v9 + 20) = 4;
        }

        return;
      }

      v7 = *(v6 + 8);
      if (v7)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1819012D0(100772);
    }

LABEL_8:
    v8 = 0;
    goto LABEL_14;
  }

  sub_1819012D0(100772);
}

void *__cdecl sqlite3_aggregate_context(sqlite3_context *a1, int nBytes)
{
  if (a1 && (v5 = *(a1 + 1)) != 0 && *(v5 + 32))
  {
    v6 = *(a1 + 2);
    if (*(v6 + 20) < 0)
    {
      return *(v6 + 8);
    }

    else
    {

      return sub_18190C2E0(a1, nBytes, v2, v3);
    }
  }

  else
  {
    sub_1819012D0(100772);
    return 0;
  }
}

void *sub_1818EC12C(void *result, int a2, uint64_t *a3, uint64_t a4)
{
  if (!result || (v6 = result[1]) == 0 || !*(v6 + 32))
  {
    result = sub_1819012D0(100772);
    if (!a2)
    {
      return result;
    }

    v8 = 0;
    v9 = *a3;
    if (*a3)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v7 = result[2];
  if ((*(v7 + 20) & 0x80000000) == 0)
  {
    result = sub_18190C2E0(result, 8, a3, a4);
    v8 = result;
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_18:
    if (!v8)
    {
      return result;
    }

    goto LABEL_15;
  }

  v8 = *(v7 + 8);
  if (!a2)
  {
    goto LABEL_18;
  }

LABEL_6:
  v9 = *a3;
  if (*a3)
  {
LABEL_7:
    v10 = (0x5555555555555555uLL >> *(v9 + 20)) & 1;
    goto LABEL_11;
  }

LABEL_10:
  result = sub_1819012D0(99877);
  LODWORD(v10) = 1;
LABEL_11:
  if (v10)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
LABEL_15:
    ++*v8;
  }

  return result;
}

uint64_t sub_1818EC1FC(uint64_t result, int *a2)
{
  if (a2 && *a2 >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 9;
    do
    {
      if (*v5 < 0)
      {
        v6 = *(v3 + 56);
        *(v3 + 56) = v6 + 1;
        *v5 = v6;
        if ((*(v5 - 3) & 4) != 0)
        {
          result = sub_1818EC1FC(v3, *(**(v5 + 9) + 40));
        }
      }

      ++v4;
      v5 += 18;
    }

    while (v4 < *a2);
  }

  return result;
}

uint64_t *sub_1818EC294(uint64_t *result, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (*(a4 + 64))
  {
    return result;
  }

  v5 = *(a2 + 24 * a3 + 8);
  v6 = *result;
  if (v5)
  {
    v7 = a5;
    v8 = a4;
    v9 = result;
    result = sub_1818C7FEC(*result, v5, 0, 0);
    v10 = result;
    if (*(v6 + 103))
    {
      if (result)
      {

        return sub_1819439E0(v6, result);
      }

      return result;
    }

    result = v9;
    a4 = v8;
    a5 = v7;
  }

  else
  {
    if (*(v6 + 103))
    {
      return result;
    }

    v10 = 0;
  }

  if (a5 >= 1)
  {
    v30 = 0uLL;
    v31 = 0uLL;
    v29[0] = 0;
    v29[1] = sub_18195F9E0;
    DWORD2(v31) = a5;
    if (v10)
    {
      v11 = result;
      v12 = a4;
      sub_181959BA0(v29, v10);
      a4 = v12;
      result = v11;
    }
  }

  if (*a4 == 114)
  {
    v13 = *(a4 + 8);
    if (v13)
    {
      v14 = a4;
      v15 = result;
      v16 = strlen(*(a4 + 8)) & 0x3FFFFFFF;
      if (v16)
      {
        v17 = sub_181929E8C(*v15, v16 + 81, 0x1032040B79D87BDLL);
        if (v17)
        {
          *(v17 + 3) = 0u;
          *(v17 + 4) = 0u;
          *(v17 + 1) = 0u;
          *(v17 + 2) = 0u;
          *v17 = 0u;
          *v17 = 114;
          *(v17 + 26) = -1;
          v18 = v17 + 10;
          v17[1] = v17 + 10;
          v19 = v17;
          memcpy(v17 + 10, v13, v16);
          *(v18 + v16) = 0;
          *(v19 + 10) = 1;
          v19[2] = v10;
          *(v19 + 1) |= 0x2200u;
          v10 = v19;
        }
      }

      result = v15;
      a4 = v14;
    }
  }

  v24 = *v10;
  v27 = *(v10 + 3);
  v28 = *(v10 + 4);
  v25 = *(v10 + 1);
  v26 = *(v10 + 2);
  v20 = *(a4 + 64);
  v22 = *(a4 + 16);
  v21 = *(a4 + 32);
  *(v10 + 3) = *(a4 + 48);
  *(v10 + 4) = v20;
  *(v10 + 1) = v22;
  *(v10 + 2) = v21;
  *v10 = *a4;
  *a4 = v24;
  *(a4 + 16) = v25;
  *(a4 + 32) = v26;
  *(a4 + 48) = v27;
  *(a4 + 64) = v28;
  if (*(a4 + 7))
  {
    v23 = *(a4 + 72);
    if (v23)
    {
      *(v23 + 112) = a4;
    }
  }

  return sub_18195B158(result, sub_18195B270, v10);
}

unsigned __int8 *sub_1818EC4E8(uint64_t **a1, unsigned __int8 *a2)
{
  v2 = a2;
  if (!a2)
  {
    return v2;
  }

  v4 = *(a2 + 1);
  if ((v4 & 3) != 0 && *(a2 + 14) == *(a1 + 2))
  {
    *(a2 + 14) = *(a1 + 3);
  }

  v5 = *a2;
  if (v5 == 179)
  {
    if (*(a2 + 11) == *(a1 + 2))
    {
      *(a2 + 11) = *(a1 + 3);
    }

    goto LABEL_21;
  }

  if (v5 != 168 || (v4 & 0x20) != 0 || *(a2 + 11) != *(a1 + 2))
  {
LABEL_21:
    *(a2 + 2) = sub_1818EC4E8(a1, *(a2 + 2));
    *(v2 + 3) = sub_1818EC4E8(a1, *(v2 + 3));
    v13 = *(v2 + 4);
    if ((v2[5] & 0x10) != 0)
    {
      sub_181969010(a1, *(v2 + 4), 1);
    }

    else if (v13 && *v13 >= 1)
    {
      v14 = 0;
      v15 = 2;
      do
      {
        *&v13[v15] = sub_1818EC4E8(a1, *&v13[v15]);
        ++v14;
        v15 += 6;
      }

      while (v14 < *v13);
    }

    if (v2[7])
    {
      v16 = *(v2 + 9);
      *(v16 + 72) = sub_1818EC4E8(a1, *(v16 + 72));
      v17 = *(v16 + 16);
      if (v17 && *v17 >= 1)
      {
        v18 = 0;
        v19 = 2;
        do
        {
          *&v17[v19] = sub_1818EC4E8(a1, *&v17[v19]);
          ++v18;
          v19 += 6;
        }

        while (v18 < *v17);
      }

      v20 = *(v16 + 24);
      if (v20 && *v20 >= 1)
      {
        v21 = 0;
        v22 = 2;
        do
        {
          *&v20[v22] = sub_1818EC4E8(a1, *&v20[v22]);
          ++v21;
          v22 += 6;
        }

        while (v21 < *v20);
      }
    }

    return v2;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  v6 = *(a2 + 12);
  v7 = a1[3][3 * v6 + 1];
  v8 = *v7;
  v9 = v8;
  if (v8 == 176)
  {
    v9 = v7[2];
  }

  v10 = a1[3][3 * v6 + 1];
  if (v9 != 177)
  {
    if (v9 != 139)
    {
      goto LABEL_15;
    }

    v10 = *(v7 + 4);
  }

  if (**(v10 + 32) >= 2)
  {
    v23 = *a1;
    if ((v7[5] & 0x10) != 0)
    {
      if (!*(v23 + 13))
      {
        sub_181910730(v23, "sub-select returns %d columns - expected %d");
      }
    }

    else
    {
      sub_181910730(v23, "row value misused");
    }

    return v2;
  }

LABEL_15:
  v11 = **a1;
  if (!*(a1 + 4))
  {
    goto LABEL_42;
  }

  if (v8 != 168)
  {
    v12 = *(a1 + 3);
    goto LABEL_41;
  }

  v12 = *(a1 + 3);
  if (*(v7 + 11) != v12)
  {
LABEL_41:
    LOBYTE(v37) = -77;
    *&v38 = v7;
    HIDWORD(v39) = v12;
    LODWORD(v40) = -99;
    v7 = &v37;
    DWORD1(v37) = 0x40000;
  }

LABEL_42:
  v24 = sub_1818C7FEC(v11, v7, 0, 0);
  v25 = v24;
  if (*(v11 + 103))
  {
    if (v24)
    {
      sub_1819439E0(v11, v24);
    }
  }

  else
  {
    if (*(a1 + 4))
    {
      v24[1] |= 0x200000u;
    }

    if (*v24 == 171)
    {
      v26 = v24[1];
      v27 = v24;
      if ((v26 & 0x82000) != 0)
      {
        v28 = v24[1];
        v27 = v24;
        do
        {
          if ((v28 & 0x80000) != 0)
          {
            v29 = (*(v27 + 4) + 8);
          }

          else
          {
            if (*v27 != 114)
            {
              break;
            }

            v29 = (v27 + 4);
          }

          v27 = *v29;
          v28 = v27[1];
        }

        while ((v28 & 0x82000) != 0);
      }

      v30 = *(*(v27 + 1) + 4) == 0;
      *v24 = -100;
      v24[1] = v26 | 0x800;
      v24[2] = v30;
    }

    v31 = sub_1818B4720(*a1, v24);
    v32 = sub_1818B4720(*a1, a1[4][3 * v6 + 1]);
    if (v31 != v32 || (v34 = *v25, v34 != 114) && v34 != 168)
    {
      if (v32)
      {
        v33 = *v32;
      }

      else
      {
        v33 = "BINARY";
      }

      v25 = sub_18195F910(*a1, v25, v33);
    }

    *(v25 + 1) &= ~0x200u;
    v35 = *(v2 + 1);
    if ((v35 & 3) != 0)
    {
      sub_181961AFC(v25, *(v2 + 14), v35 & 3);
    }

    sub_1819439E0(v11, v2);
    return v25;
  }

  return v2;
}

__int128 *sub_1818EC90C(uint64_t a1, __int128 *a2, uint64_t a3, unsigned __int8 *a4)
{
  v28 = 0;
  v29 = 0;
  if (!a4)
  {
    return a2;
  }

  if (*a4 != 168)
  {
    return a2;
  }

  v4 = *(a4 + 9);
  if (!v4)
  {
    return a2;
  }

  if (*(v4 + 63) != 1)
  {
    return a2;
  }

  v5 = (v4 + 80);
  do
  {
    v6 = *v5;
    v7 = *v5;
    v8 = *v7;
    v5 = (v7 + 5);
  }

  while (v8 != a1);
  v9 = v6[2];
  v10 = *(*v9 + 144);
  if (!v10)
  {
    return a2;
  }

  if (!v10(v9, a3, *(a2 + 7), &v29, &v28))
  {
    return a2;
  }

  v13 = *(a2 + 7);
  if (v13)
  {
    v14 = (strlen(v13) & 0x3FFFFFFF) + 73;
  }

  else
  {
    v14 = 73;
  }

  if (!a1)
  {
    v16 = sub_181902484(v14, 0x10F00408277036CLL);
    if (v16)
    {
      goto LABEL_16;
    }

    return a2;
  }

  v16 = sub_181929E8C(a1, v14, 0x10F00408277036CLL);
  if (!v16)
  {
    return a2;
  }

LABEL_16:
  v17 = v16;
  bzero(v16, v14);
  v18 = a2;
  v19 = a2[1];
  v20 = a2[2];
  v21 = *(a2 + 8);
  v17[3] = a2[3];
  v22 = *a2;
  v17[1] = v19;
  v17[2] = v20;
  *v17 = v22;
  v23 = v17 + 72;
  *(v17 + 7) = v17 + 72;
  *(v17 + 8) = v21;
  v24 = v17;
  v25 = *(v18 + 7);
  if (v25)
  {
    v26 = (strlen(*(v18 + 7)) & 0x3FFFFFFF) + 1;
  }

  else
  {
    v26 = 1;
  }

  memcpy(v23, v25, v26);
  v27 = v28;
  result = v24;
  *(v24 + 3) = v29;
  *(v24 + 1) = v27;
  *(v24 + 1) |= 0x10u;
  return result;
}

void sub_1818ECA90(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v53 = 0;
  if (!a2 || !v4)
  {
    return;
  }

  v6 = *a2;
  if (*a2 > 0x32u)
  {
    if ((v6 - 53) < 6)
    {
LABEL_25:
      v21 = *(a2 + 2);
      v22 = *v21;
      if (v22 == 176)
      {
        v22 = v21[2];
      }

      v23 = *(a2 + 2);
      if (v22 != 177)
      {
        if (v22 != 139)
        {
LABEL_31:
          v26 = a4;
          v27 = sub_181957E00(a1, *(a2 + 2), &v53 + 1);
          v28 = sub_181957E00(a1, *(a2 + 3), &v53);
          sub_1818DDB44(a1, *(a2 + 2), *(a2 + 3), v6, v27, v28, a3, v26, (*(a2 + 1) >> 10) & 1);
          goto LABEL_71;
        }

        v23 = *(v21 + 4);
      }

      if (**(v23 + 32) <= 1)
      {
        goto LABEL_31;
      }

LABEL_42:
      v32 = *(a2 + 1);
      if ((v32 & 0x10000001) != 0x10000000)
      {
        if ((v32 & 0x20000001) == 0x20000000)
        {
          goto LABEL_71;
        }

        v35 = a3;
        v36 = a4;
        v37 = sub_181957E00(a1, a2, &v53 + 1);
        v14 = v37;
        v38 = v36 != 0;
        v39 = *(v4 + 144);
        if (*(v4 + 148) > v39)
        {
          *(v4 + 144) = v39 + 1;
          v40 = *(v4 + 136) + 40 * v39;
          *v40 = 16;
          *(v40 + 4) = v37;
          *(v40 + 8) = v35;
          *(v40 + 12) = v38;
          *(v40 + 24) = 0;
          *(v40 + 32) = 0;
          *(v40 + 16) = 0;
          goto LABEL_71;
        }

        v42 = v4;
        v43 = 16;
        v44 = v35;
        goto LABEL_70;
      }

      v33 = *(v4 + 144);
      if (*(v4 + 148) > v33)
      {
        *(v4 + 144) = v33 + 1;
        v34 = *(v4 + 136) + 40 * v33;
        *v34 = 9;
        *(v34 + 8) = a3;
LABEL_67:
        *(v34 + 12) = 0;
        *(v34 + 28) = 0;
        *(v34 + 20) = 0;
        *(v34 + 36) = 0;
        goto LABEL_71;
      }

      v42 = v4;
      v43 = 9;
      v44 = a3;
      v14 = 0;
LABEL_69:
      v38 = 0;
LABEL_70:
      sub_18194C8AC(v42, v43, v14, v44, v38);
      goto LABEL_71;
    }

    if ((v6 - 51) < 2)
    {
      v12 = a3;
      v13 = sub_181957E00(a1, *(a2 + 2), &v53 + 1);
      v14 = v13;
      if (HIDWORD(v53))
      {
        v15 = *(*v4 + 103) ? &byte_1EA831A58 : (*(v4 + 136) + 40 * *(v4 + 144) - 40);
        if (*(v15 + 3) == v13 && *v15 == 94)
        {
          *(v15 + 1) |= 0x80u;
        }
      }

      v48 = *(v4 + 144);
      if (*(v4 + 148) > v48)
      {
        *(v4 + 144) = v48 + 1;
        v34 = *(v4 + 136) + 40 * v48;
        *v34 = v6;
        *(v34 + 2) = 0;
        *(v34 + 4) = v13;
        *(v34 + 8) = v12;
        *(v34 + 1) = 0;
        goto LABEL_67;
      }

      v42 = v4;
      v43 = v6;
      v44 = v12;
      goto LABEL_69;
    }

    if (v6 != 175)
    {
      goto LABEL_42;
    }

    v30 = *(a2 + 3);
    while (1)
    {
      v31 = *(v30 + 4);
      if ((v31 & 0x82000) == 0)
      {
        break;
      }

      if ((v31 & 0x80000) != 0)
      {
        v30 = *(*(v30 + 32) + 8);
      }

      else
      {
        if (*v30 != 114)
        {
          break;
        }

        v30 = *(v30 + 16);
      }
    }

    v45 = a2[2] == 46;
    v29 = *(a2 + 2);
    a4 = (16 * v45);
    if (((v45 ^ (*(*(v30 + 8) + 4) != 0)) & 1) == 0)
    {
      sub_1818ECA90(a1, v29, a3, a4);
      goto LABEL_71;
    }

LABEL_52:
    sub_1818DD640(a1, v29, a3, a4);
    goto LABEL_71;
  }

  if (*a2 > 0x2Cu)
  {
    if ((v6 - 45) >= 2)
    {
      if (v6 == 49)
      {
        sub_181958D08(a1, a2, a3, sub_1818ECA90, a4);
        goto LABEL_71;
      }

      if (v6 == 50)
      {
        v7 = *(a1 + 72);
        *(a1 + 72) = v7 - 1;
        v8 = a3;
        if (a4)
        {
          v9 = a3;
        }

        else
        {
          v9 = v7 - 1;
        }

        sub_1818DFA70(a1, a2, v7 - 1, v9);
        v10 = *(v4 + 144);
        if (*(v4 + 148) <= v10)
        {
          sub_18194C8AC(v4, 9, 0, v8, 0);
        }

        else
        {
          *(v4 + 144) = v10 + 1;
          v11 = *(v4 + 136) + 40 * v10;
          *v11 = 9;
          *(v11 + 8) = v8;
          *(v11 + 12) = 0;
          *(v11 + 28) = 0;
          *(v11 + 20) = 0;
          *(v11 + 36) = 0;
        }

        v46 = *(v4 + 24);
        v47 = -v7;
        if (*(v46 + 72) + *(v46 + 76) < 0)
        {
          sub_18195CB84(v46, v4, v47);
        }

        else
        {
          *(*(v46 + 80) + 4 * v47) = *(v4 + 144);
        }

        goto LABEL_71;
      }

      goto LABEL_42;
    }

    if (v6 == 45)
    {
      v6 = 54;
    }

    else
    {
      v6 = 53;
    }

    LODWORD(a4) = 128;
    goto LABEL_25;
  }

  if ((v6 - 43) >= 2)
  {
    if (v6 != 19)
    {
      goto LABEL_42;
    }

    v29 = *(a2 + 2);
    goto LABEL_52;
  }

  v16 = a4;
  v19 = sub_18195CE30(a2);
  if (v19 == a2)
  {
    if (v6 == 44)
    {
      v41 = (*(a1 + 72) - 1);
      *(a1 + 72) = v41;
      sub_1818DD640(a1, *(a2 + 2), v41, v16 ^ 0x10);
      sub_1818ECA90(a1, *(a2 + 3), a3, v16);
      sub_181958CD8(v4, v41);
      goto LABEL_71;
    }

    sub_1818ECA90(a1, *(a2 + 2), a3, v16);
    v20 = *(a2 + 3);
  }

  else
  {
    v20 = v19;
  }

  sub_1818ECA90(a1, v20, a3, v16);
LABEL_71:
  v49 = HIDWORD(v53);
  if (HIDWORD(v53))
  {
    v50 = *(a1 + 31);
    if (v50 <= 7)
    {
      *(a1 + 31) = v50 + 1;
      *(a1 + 4 * v50 + 184) = v49;
    }
  }

  v51 = v53;
  if (v53)
  {
    v52 = *(a1 + 31);
    if (v52 <= 7)
    {
      *(a1 + 31) = v52 + 1;
      *(a1 + 4 * v52 + 184) = v51;
    }
  }
}

int sqlite3_bind_parameter_index(sqlite3_stmt *a1, const char *zName)
{
  if (!zName)
  {
    return 0;
  }

  v4 = strlen(zName);
  if (!a1)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(*a1 + 24);
  if (v6)
  {
    xmmword_1ED452F18(v6);
  }

  v7 = *(a1 + 22);
  if (v7)
  {
    v8 = v5 & 0x3FFFFFFF;
    v9 = *(v7 + 4);
    v10 = 2;
    while (1)
    {
      v11 = v7 + 4 * v10;
      if (!strncmp((v11 + 8), zName, v8) && !*(v11 + 8 + v8))
      {
        break;
      }

      v10 += *(v11 + 4);
      if (v10 >= v9)
      {
        goto LABEL_12;
      }
    }

    result = *v11;
  }

  else
  {
LABEL_12:
    result = 0;
  }

  v13 = *(*a1 + 24);
  if (v13)
  {
    v14 = result;
    xmmword_1ED452F28(v13);
    return v14;
  }

  return result;
}

int sqlite3_bind_double(sqlite3_stmt *a1, int a2, double a3)
{
  if (a2 <= 0)
  {
    if (a1)
    {
      v8 = *a1;
      if (*a1)
      {
        *(v8 + 80) = 25;
        sub_181932D5C(v8, 25);
      }

      else
      {
        sqlite3_log(21, "API called with finalized prepared statement", a3);
      }
    }

    else
    {
      sqlite3_log(21, "API called with NULL prepared statement", a3);
    }

    LODWORD(v6) = 25;
  }

  else
  {
    v5 = (a2 - 1);
    LODWORD(v6) = sub_1818DF6EC(a1, a2 - 1);
    if (!v6)
    {
      v7 = *(a1 + 16) + (v5 << 6);
      if ((*(v7 + 20) & 0x9000) != 0)
      {
        sub_18193CA54(v7);
      }

      else
      {
        *(v7 + 20) = 1;
      }

      *v7 = a3;
      *(v7 + 20) = 8;
      v6 = *(*a1 + 24);
      if (v6)
      {
        xmmword_1ED452F28(v6);
        LODWORD(v6) = 0;
      }
    }
  }

  return v6;
}

void sub_1818ED1CC(uint64_t a1, uint64_t a2, sqlite3_value **a3)
{
  if (sub_1818D0D40(*a3, a3[1], *(*(*(a1 + 24) + 136) + 40 * *(a1 + 32) - 24)))
  {
    v5 = *a3;

    sqlite3_result_value(a1, v5);
  }
}

int sqlite3_value_int(sqlite3_value *a1)
{
  if (!a1)
  {
    sub_1819012D0(92237);
LABEL_5:
    LODWORD(v2) = 0;
    return v2;
  }

  v1 = *(a1 + 10);
  if ((v1 & 0x24) != 0)
  {
    return *a1;
  }

  if ((v1 & 8) == 0)
  {
    if ((v1 & 0x12) != 0 && *(a1 + 1))
    {
      LODWORD(v2) = sub_18193CFCC(a1);
      return v2;
    }

    goto LABEL_5;
  }

  v3 = *a1;
  if (*a1 >= -9.22337204e18)
  {
    if (v3 <= 9.22337204e18)
    {
      return v3;
    }

    else
    {
      LODWORD(v2) = -1;
    }
  }

  else
  {
    LODWORD(v2) = 0;
  }

  return v2;
}

void sqlite3_result_int(sqlite3_context *a1, int a2)
{
  if (a1)
  {
    v2 = *a1;
    if ((*(v2 + 20) & 0x9000) != 0)
    {
      sub_18193D288(v2, a2);
    }

    else
    {
      *v2 = a2;
      *(v2 + 20) = 4;
    }
  }
}

uint64_t sub_1818ED318(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a1[19])
  {
    v7 = a1[19];
  }

  else
  {
    v7 = a1;
  }

  v8 = *a1;
  if (*a1)
  {
    v9 = sub_181929E8C(*a1, 0x28uLL, 0x1020040BF36A85DLL);
    if (!v9)
    {
      return v9;
    }
  }

  else
  {
    v9 = sub_181902484(40, 0x1020040BF36A85DLL);
    if (!v9)
    {
      return v9;
    }
  }

  v76 = 0u;
  memset(v77, 0, sizeof(v77));
  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  memset(v72, 0, sizeof(v72));
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 8) = v7[21];
  v7[21] = v9;
  if (v8)
  {
    v10 = sub_181929E8C(v8, 0x30uLL, 0x10B004030A81E6FLL);
    if (v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = sub_181902484(48, 0x10B004030A81E6FLL);
    if (v10)
    {
LABEL_10:
      v11 = 0uLL;
      *(v10 + 16) = 0u;
      *(v10 + 32) = 0u;
      *v10 = 0u;
      *(v9 + 16) = v10;
      v12 = v7[2];
      *(v10 + 40) = *(v12 + 376);
      *(v12 + 376) = v10;
      *v9 = a2;
      *(v9 + 24) = a4;
      *(v9 + 28) = -1;
      memset(v72 + 8, 0, 176);
      memset(v77 + 8, 0, 136);
      *(&v73 + 1) = *(v8 + 344);
      *(v8 + 344) = v72;
      *&v72[0] = v8;
      if (*(v8 + 103))
      {
        sub_181910730(v72, "out of memory");
        v11 = 0uLL;
      }

      v81 = v11;
      v80 = v11;
      v79 = v11;
      v78 = v72;
      *(&v72[9] + 1) = v7;
      *&v72[10] = a3;
      *&v77[6] = *a2;
      BYTE7(v72[2]) = *(a2 + 16);
      WORD6(v72[1]) = *(a1 + 14);
      BYTE4(v72[2]) = *(a1 + 36);
      *&v75 = 0;
      v13 = sub_1818E7DFC(v72);
      if (!v13)
      {
        if (*(a1 + 13))
        {
          if (*(&v72[0] + 1))
          {
            sub_181929C84(*&v72[0], *(&v72[0] + 1));
          }
        }

        else
        {
          a1[1] = *(&v72[0] + 1);
          v18 = DWORD2(v72[1]);
          *(a1 + 13) = DWORD1(v72[3]);
          *(a1 + 6) = v18;
        }

        goto LABEL_95;
      }

      v16 = v13;
      if (*a2)
      {
        v14 = sub_1818A8BAC(v8, "-- TRIGGER %s", *a2);
        if (*(*v16 + 103))
        {
          if (v14)
          {
            sub_181939EC8(*v16, v14);
          }
        }

        else
        {
          v17 = v16[17] + 40 * *(v16 + 36);
          if (*(v17 - 39))
          {
            sub_18194CB90(v16, v17 - 40, v14, 4294967290);
          }

          else if (v14)
          {
            *(v17 - 24) = v14;
            *(v17 - 39) = -6;
          }
        }
      }

      v19 = *(a2 + 24);
      v69 = v9;
      v66 = v7;
      v67 = a1;
      v64 = v16;
      v65 = v10;
      if (v19)
      {
        v20 = sub_1818C7FEC(v8, v19, 0, 0);
        if (*(v8 + 103) || sub_18195ECC4(&v78, v20))
        {
          v63 = 0;
          if (!v20)
          {
            goto LABEL_33;
          }

          goto LABEL_31;
        }

        v62 = (DWORD2(v72[4]) - 1);
        DWORD2(v72[4]) = v62;
        v63 = v62;
        sub_1818DD640(v72, v20, v62, 16);
        if (v20)
        {
LABEL_31:
          sub_1819439E0(v8, v20);
        }
      }

      else
      {
        v63 = 0;
      }

LABEL_33:
      v68 = a2;
      v21 = *(a2 + 56);
      v22 = a4;
      if (v21)
      {
        v23 = *&v72[1];
        v24 = *&v72[0];
        while (1)
        {
          v25 = v22;
          if (v22 == 11)
          {
            v25 = v21[1];
          }

          BYTE9(v72[2]) = v25;
          if (*(v21 + 9))
          {
            v26 = sub_1818A8BAC(v24, "-- %s", *(v21 + 9));
            v27 = *(v23 + 144);
            if (*(v23 + 148) <= v27)
            {
              v27 = sub_18194C8AC(v23, 184, 0x7FFFFFFF, 1, 0);
            }

            else
            {
              *(v23 + 144) = v27 + 1;
              v28 = *(v23 + 136) + 40 * v27;
              *v28 = 184;
              *(v28 + 4) = 0x17FFFFFFFLL;
              *(v28 + 12) = 0;
              *(v28 + 28) = 0;
              *(v28 + 20) = 0;
              *(v28 + 36) = 0;
            }

            if (*(*v23 + 103))
            {
              if (v26)
              {
                sub_181939EC8(*v23, v26);
              }
            }

            else
            {
              if (v27 < 0)
              {
                v27 = *(v23 + 144) - 1;
              }

              v29 = *(v23 + 136) + 40 * v27;
              if (*(v29 + 1))
              {
                sub_18194CB90(v23, v29, v26, 4294967290);
              }

              else if (v26)
              {
                *(v29 + 16) = v26;
                *(v29 + 1) = -6;
              }
            }
          }

          v30 = *v21;
          if (v30 == 128)
          {
            break;
          }

          if (v30 == 129)
          {
            v35 = sub_181981C18(v72, v21);
            v36 = *(v21 + 5);
            if (v36)
            {
              v37 = sub_1818C7FEC(v24, v36, 0, 0);
            }

            else
            {
              v37 = 0;
            }

            sub_1818EA08C(v72, v35, v37, 0, 0);
          }

          else
          {
            if (v30 != 130)
            {
              v83 = 0;
              memset(v82, 0, sizeof(v82));
              v49 = sub_1818CB220(v24, *(v21 + 2), 0);
              LOBYTE(v82[0]) = 4;
              *(&v82[1] + 1) = 0;
              *(v82 + 4) = 0uLL;
              sub_1818A9A10(v72, v49, v82);
              if (v49)
              {
                sub_1818BB408(v24, v49, 1, v15);
              }

              goto LABEL_36;
            }

            v31 = sub_181981C18(v72, v21);
            v32 = sub_1818C83A0(v24, *(v21 + 6), 0);
            v33 = *(v21 + 5);
            if (v33)
            {
              v34 = sub_1818C7FEC(v24, v33, 0, 0);
            }

            else
            {
              v34 = 0;
            }

            sub_1818E7FBC(v72, v31, v32, v34, BYTE9(v72[2]), 0, 0, 0);
          }

          v50 = *(v23 + 144);
          if (*(v23 + 148) > v50)
          {
LABEL_80:
            *(v23 + 144) = v50 + 1;
            v51 = *(v23 + 136) + 40 * v50;
            *v51 = -125;
            *(v51 + 1) = 0u;
            *(v51 + 17) = 0u;
            *(v51 + 32) = 0;
            goto LABEL_36;
          }

LABEL_35:
          sub_18194C8AC(v23, 131, 0, 0, 0);
LABEL_36:
          v21 = *(v21 + 10);
          if (!v21)
          {
            goto LABEL_83;
          }
        }

        v71 = sub_181981C18(v72, v21);
        v38 = sub_1818CB220(v24, *(v21 + 2), 0);
        v39 = *(v21 + 7);
        if (v39)
        {
          v40 = sub_181929E8C(v24, 8 * *v39 + 8, 0x10040436913F5);
          v41 = v40;
          if (v40)
          {
            v42 = *v39;
            *v40 = *v39;
            if (v42 >= 1)
            {
              v43 = 1;
              while (1)
              {
                v46 = *&v39[2 * v43];
                if (v46)
                {
                  v47 = strlen(*&v39[2 * v43]);
                  v48 = v47;
                  if (v24)
                  {
                    v44 = sub_181929E8C(v24, v47 + 1, 354097263);
                    if (!v44)
                    {
                      goto LABEL_64;
                    }

LABEL_71:
                    memcpy(v44, v46, v48 + 1);
                    goto LABEL_64;
                  }

                  v44 = sub_181902484(v47 + 1, 354097263);
                  if (v44)
                  {
                    goto LABEL_71;
                  }
                }

                else
                {
                  v44 = 0;
                }

LABEL_64:
                *&v41[2 * v43] = v44;
                if (v43++ >= *v39)
                {
                  v22 = a4;
                  break;
                }
              }
            }
          }
        }

        else
        {
          v41 = 0;
        }

        v52 = BYTE9(v72[2]);
        v53 = sub_181981E48(v24, *(v21 + 8));
        sub_1818D195C(v72, v71, v38, v41, v52, v53);
        v50 = *(v23 + 144);
        if (*(v23 + 148) > v50)
        {
          goto LABEL_80;
        }

        goto LABEL_35;
      }

LABEL_83:
      v9 = v69;
      if (v63)
      {
        v54 = *(v64 + 24);
        v14 = ~v63;
        if (*(v54 + 72) + *(v54 + 76) < 0)
        {
          sub_18195CB84(v54, v64, v14);
        }

        else
        {
          *(*(v54 + 80) + 4 * v14) = *(v64 + 144);
        }
      }

      v55 = *(v64 + 144);
      if (*(v64 + 148) <= v55)
      {
        sub_18194C8AC(v64, 70, 0, 0, 0);
      }

      else
      {
        *(v64 + 144) = v55 + 1;
        v56 = *(v64 + 136) + 40 * v55;
        *v56 = 70;
        *(v56 + 1) = 0u;
        *(v56 + 17) = 0u;
        *(v56 + 32) = 0;
      }

      v57 = *(&v72[0] + 1);
      if (*(v67 + 13))
      {
        if (!*(&v72[0] + 1))
        {
          goto LABEL_94;
        }

        sub_181929C84(*&v72[0], *(&v72[0] + 1));
        if (*(v67 + 13))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v67[1] = *(&v72[0] + 1);
        v60 = DWORD1(v72[3]);
        v61 = DWORD2(v72[1]);
        *(v67 + 13) = DWORD1(v72[3]);
        *(v67 + 6) = v61;
        if (v60)
        {
          goto LABEL_94;
        }
      }

      v58 = *(v64 + 136);
      sub_18194CD5C(v64, v66 + 30);
      *(v65 + 8) = *(v64 + 144);
      *(v64 + 136) = 0;
      *v65 = v58;
LABEL_94:
      *(v65 + 12) = vrev64_s32(*(&v72[3] + 8));
      *(v65 + 32) = v68;
      *(v69 + 28) = v75;
      sub_181901AB4(v64, v57, v14, v15);
LABEL_95:
      sub_181910CA0(v72);
      return v9;
    }
  }

  *(v9 + 16) = 0;
  return 0;
}

int sqlite3_bind_null(sqlite3_stmt *a1, int a2)
{
  if (a2 <= 0)
  {
    if (a1)
    {
      v4 = *a1;
      if (*a1)
      {
        *(v4 + 80) = 25;
        sub_181932D5C(v4, 25);
      }

      else
      {
        sqlite3_log(21, "API called with finalized prepared statement");
      }
    }

    else
    {
      sqlite3_log(21, "API called with NULL prepared statement");
    }

    LODWORD(v3) = 25;
  }

  else
  {
    LODWORD(v3) = sub_1818DF6EC(a1, a2 - 1);
    if (!v3)
    {
      v3 = *(*a1 + 24);
      if (v3)
      {
        xmmword_1ED452F28(v3);
        LODWORD(v3) = 0;
      }
    }
  }

  return v3;
}

void sub_1818EDC84(_DWORD *a1, int a2, unsigned __int8 **a3, uint64_t a4)
{
  if (a1)
  {
    v7 = *(*a1 + 24);
    v8 = *(*(a1 + 1) + 8);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v41 = 0;
  v9 = *a3;
  if (!*a3)
  {
    sub_1819012D0(93690);
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v10 = *(v9 + 20);
  if ((v10 & 2) != 0 && *(v9 + 22) == 1)
  {
    v11 = *(v9 + 16);
    goto LABEL_13;
  }

  if ((v10 & 0x10) == 0)
  {
    if ((v10 & 1) == 0)
    {
      v11 = sub_18193CB44(v9, 1, a3, a4);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = *(v9 + 16);
  if ((*(v9 + 20) & 0x400) != 0)
  {
    v11 += *v9;
  }

LABEL_13:
  if (v11 > *(v7 + 168))
  {
    if (!a1)
    {
      return;
    }

    a1[9] = 1;
    v12 = "LIKE or GLOB pattern too complex";
LABEL_16:
    v13 = *a1;

    sub_1818900D0(v13, v12, -1, 1, 0xFFFFFFFFFFFFFFFFLL);
    return;
  }

  if (a2 == 3)
  {
    v14 = a3[2];
    if (!v14)
    {
      return;
    }

    v15 = *(v14 + 10);
    if ((~v15 & 0x202) != 0 || v14[22] != 1)
    {
      if (v15)
      {
        return;
      }

      v16 = sub_18193CB70(v14, 1, a3, a4);
      if (!v16)
      {
        return;
      }
    }

    else
    {
      v16 = *(v14 + 1);
      if (!v16)
      {
        return;
      }
    }

    if (v16 == -1)
    {
      goto LABEL_61;
    }

    v17 = *v16;
    if (!*v16)
    {
      goto LABEL_61;
    }

    v27 = 0;
    v28 = *v16;
    v29 = v16;
    do
    {
      v32 = v27;
      if (v28 < 0xC0)
      {
        v30 = *++v29;
        v28 = v30;
      }

      else
      {
        do
        {
          v33 = *++v29;
          v28 = v33;
        }

        while ((v33 & 0xC0) == 0x80);
      }

      ++v27;
      if (v28)
      {
        v31 = v29 + 1 == 0;
      }

      else
      {
        v31 = 1;
      }
    }

    while (!v31);
    if (v32)
    {
LABEL_61:
      if (!a1)
      {
        return;
      }

      a1[9] = 1;
      v12 = "ESCAPE expression must be a single character";
      goto LABEL_16;
    }

    if (v17 >= 0xC0)
    {
      v34 = byte_181A20D3A[v17 - 192];
      v35 = v16[1];
      if ((v35 & 0xC0) == 0x80)
      {
        v36 = v16 + 2;
        do
        {
          v34 = v35 & 0x3F | (v34 << 6);
          v37 = *v36++;
          v35 = v37;
        }

        while ((v37 & 0xC0) == 0x80);
      }

      if (v34 < 0x80 || v34 >> 1 == 0x7FFF || v34 >> 11 == 27)
      {
        v17 = 65533;
      }

      else
      {
        v17 = v34;
      }
    }

    if (v17 == *v8 || v17 == v8[1])
    {
      v40 = *v8;
      v41 = v40;
      if (v17 == v40)
      {
        LOBYTE(v41) = 0;
      }

      if (v17 == BYTE1(v40))
      {
        BYTE1(v41) = 0;
      }

      v8 = &v41;
    }
  }

  else
  {
    v17 = v8[2];
  }

  v18 = *a3;
  if (!*a3)
  {
    goto LABEL_36;
  }

  v19 = *(v18 + 20);
  if ((~v19 & 0x202) != 0 || *(v18 + 22) != 1)
  {
    if ((v19 & 1) == 0)
    {
      v20 = sub_18193CB70(v18, 1, a3, a4);
      v21 = a3[1];
      if (!v21)
      {
        return;
      }

      goto LABEL_37;
    }

LABEL_36:
    v20 = 0;
    v21 = a3[1];
    if (!v21)
    {
      return;
    }

    goto LABEL_37;
  }

  v20 = *(v18 + 8);
  v21 = a3[1];
  if (!v21)
  {
    return;
  }

LABEL_37:
  v22 = *(v21 + 10);
  if ((~v22 & 0x202) != 0 || v21[22] != 1)
  {
    if (v22)
    {
      return;
    }

    v23 = sub_18193CB70(v21, 1, a3, a4);
  }

  else
  {
    v23 = *(v21 + 1);
  }

  if (v23)
  {
    if (v20)
    {
      v24 = sub_1818EDFDC(v20, v23, v8, v17);
      if (a1)
      {
        v25 = v24 == 0;
        v26 = *a1;
        if ((*(*a1 + 20) & 0x9000) != 0)
        {
          sub_18193D288(v26, v25);
        }

        else
        {
          *v26 = v25;
          *(v26 + 20) = 4;
        }
      }
    }
  }
}

uint64_t sub_1818EDFDC(unsigned __int8 *a1, char *a2, unsigned __int8 *a3, int a4)
{
  v103 = a1;
  if (a1 && a2)
  {
    v4 = 0;
    v5 = a3[1];
    v6 = *a3;
    v7 = a3[3];
    while (1)
    {
      v10 = *a1;
      v8 = a1 + 1;
      v9 = v10;
      v11 = v8;
      v103 = v8;
      if ((v10 & 0x80) == 0)
      {
        break;
      }

      if (v9 < 0xC0)
      {
        goto LABEL_15;
      }

      v9 = byte_181A20D3A[v9 - 192];
      v12 = *v8;
      if ((*v8 & 0xC0) == 0x80)
      {
        do
        {
          v13 = *++v11;
          v9 = v12 & 0x3F | (v9 << 6);
          v12 = v13;
        }

        while ((v13 & 0xC0) == 0x80);
        v103 = v11;
      }

      v14 = 65533;
      if (v9 >> 1 != 0x7FFF && v9 >= 0x80 && (v9 & 0xFFFFF800) != 0xD800)
      {
        break;
      }

LABEL_17:
      if (v14 != a4)
      {
        a1 = v11;
        goto LABEL_120;
      }

      if (a3[2])
      {
        v16 = *a2++;
        v15 = v16;
        v17 = v16 - 192;
        if (v16 < 0xC0)
        {
          goto LABEL_213;
        }

        v15 = byte_181A20D3A[v17];
        v18 = *a2;
        if ((*a2 & 0xC0) == 0x80)
        {
          do
          {
            v19 = *++a2;
            v15 = v18 & 0x3F | (v15 << 6);
            v18 = v19;
          }

          while ((v19 & 0xC0) == 0x80);
        }

        v20 = 65533;
        if (v15 >> 1 != 0x7FFF && v15 >= 0x80 && (v15 & 0xFFFFF800) != 0xD800)
        {
LABEL_213:
          v20 = v15;
          if (!v15)
          {
            return 1;
          }
        }

        a1 = v11 + 1;
        v103 = v11 + 1;
        v21 = *v11;
        if (v21 < 0xC0)
        {
          goto LABEL_33;
        }

        v21 = byte_181A20D3A[v21 - 192];
        v22 = *a1;
        if ((*a1 & 0xC0) == 0x80)
        {
          do
          {
            v23 = *++a1;
            v21 = v22 & 0x3F | (v21 << 6);
            v22 = v23;
          }

          while ((v23 & 0xC0) == 0x80);
          v103 = a1;
        }

        v24 = 0;
        v25 = 65533;
        if (v21 >> 1 == 0x7FFF || v21 < 0x80)
        {
          v26 = 0;
          goto LABEL_61;
        }

        v26 = 0;
        if ((v21 & 0xFFFFF800) != 0xD800)
        {
LABEL_33:
          if (v21 == 94)
          {
            v27 = a1 + 1;
            v103 = a1 + 1;
            v21 = *a1;
            if (v21 < 0xC0)
            {
              v24 = 1;
              ++a1;
              if (v21 == 93)
              {
LABEL_42:
                v26 = v20 == 93;
                v30 = a1 + 1;
                v103 = a1 + 1;
                v25 = *a1;
                if (v25 >= 0xC0)
                {
                  v31 = byte_181A20D3A[v25 - 192];
                  v32 = *v30;
                  if ((*v30 & 0xC0) == 0x80)
                  {
                    do
                    {
                      v33 = *++v30;
                      v31 = v32 & 0x3F | (v31 << 6);
                      v32 = v33;
                    }

                    while ((v33 & 0xC0) == 0x80);
                    v103 = v30;
                  }

                  if (v31 < 0x80 || v31 >> 1 == 0x7FFF || v31 >> 11 == 27)
                  {
                    v25 = 65533;
                  }

                  else
                  {
                    v25 = v31;
                  }
                }

                a1 = v30;
                goto LABEL_61;
              }
            }

            else
            {
              v21 = byte_181A20D3A[v21 - 192];
              v28 = *v27;
              if ((*v27 & 0xC0) == 0x80)
              {
                do
                {
                  v29 = *++v27;
                  v21 = v28 & 0x3F | (v21 << 6);
                  v28 = v29;
                }

                while ((v29 & 0xC0) == 0x80);
                v103 = v27;
              }

              a1 = v27;
              v26 = 0;
              v25 = 65533;
              v24 = 1;
              if (v21 >> 1 == 0x7FFF || v21 < 0x80 || (v21 & 0xFFFFF800) == 0xD800)
              {
                goto LABEL_61;
              }
            }
          }

          else
          {
            v24 = 0;
            if (v21 == 93)
            {
              goto LABEL_42;
            }
          }

          v26 = 0;
          v25 = v21;
        }

LABEL_61:
        v36 = 0;
        while (v25 == 45)
        {
          v39 = *a1;
          if (v39 == 93 || v36 == 0 || v39 == 0)
          {
            goto LABEL_82;
          }

          ++a1;
          if (v39 >= 0xC0)
          {
            v46 = byte_181A20D3A[v39 - 192];
            v47 = *a1;
            if ((*a1 & 0xC0) == 0x80)
            {
              do
              {
                v48 = *++a1;
                v46 = v47 & 0x3F | (v46 << 6);
                v47 = v48;
              }

              while ((v48 & 0xC0) == 0x80);
            }

            if (v46 < 0x80 || v46 >> 1 == 0x7FFF || v46 >> 11 == 27)
            {
              v39 = 65533;
            }

            else
            {
              v39 = v46;
            }
          }

          v51 = v20 <= v39 && v20 >= v36;
          v36 = 0;
          if (v51)
          {
            v26 = 1;
          }

LABEL_85:
          v42 = *a1++;
          v25 = v42;
          v43 = v42 - 192;
          if (v42 >= 0xC0)
          {
            v25 = byte_181A20D3A[v43];
            v44 = *a1;
            if ((*a1 & 0xC0) == 0x80)
            {
              do
              {
                v45 = *++a1;
                v25 = v44 & 0x3F | (v25 << 6);
                v44 = v45;
              }

              while ((v45 & 0xC0) == 0x80);
            }

            if (v25 < 0x80 || v25 >> 1 == 0x7FFF || v25 >> 11 == 27)
            {
              v25 = 65533;
            }
          }
        }

        if (!v25)
        {
          return 1;
        }

        if (v25 != 93)
        {
LABEL_82:
          if (v20 == v25)
          {
            v26 = 1;
          }

          v36 = v25;
          goto LABEL_85;
        }

        v103 = a1;
        v86 = 1;
        if (v26 == v24)
        {
          return v86;
        }
      }

      else
      {
        a1 = v11 + 1;
        v103 = v11 + 1;
        v52 = *v11;
        if (v52 >= 0xC0)
        {
          v52 = byte_181A20D3A[v52 - 192];
          v53 = *a1;
          if ((*a1 & 0xC0) == 0x80)
          {
            do
            {
              v54 = *++a1;
              v52 = v53 & 0x3F | (v52 << 6);
              v53 = v54;
            }

            while ((v54 & 0xC0) == 0x80);
            v103 = a1;
          }

          v14 = 65533;
          if (v52 >> 1 == 0x7FFF || v52 < 0x80)
          {
            v4 = a1;
            goto LABEL_120;
          }

          v4 = a1;
          if ((v52 & 0xFFFFF800) == 0xD800)
          {
            goto LABEL_120;
          }
        }

        v14 = v52;
        v4 = a1;
        if (!v52)
        {
          return 1;
        }

LABEL_120:
        v56 = *a2++;
        v55 = v56;
        v57 = v56 - 192;
        if (v56 >= 0xC0)
        {
          v55 = byte_181A20D3A[v57];
          v58 = *a2;
          if ((*a2 & 0xC0) == 0x80)
          {
            do
            {
              v59 = *++a2;
              v55 = v58 & 0x3F | (v55 << 6);
              v58 = v59;
            }

            while ((v59 & 0xC0) == 0x80);
          }

          if (v55 < 0x80 || v55 >> 1 == 0x7FFF || v55 >> 11 == 27)
          {
            v55 = 65533;
          }
        }

        if (v14 != v55 && (!v7 || (v55 | v14) > 0x7F || byte_181A20298[v14] != byte_181A20298[v55]))
        {
          if (v14 != v5)
          {
            return 1;
          }

          v86 = 1;
          if (!v55 || a1 == v4)
          {
            return v86;
          }
        }
      }
    }

    if (!v9)
    {
      return *a2 != 0;
    }

LABEL_15:
    if (v9 == v6)
    {
      while (1)
      {
        v64 = *v11++;
        v63 = v64;
        v103 = v11;
        v65 = v64 - 192;
        if (v64 >= 0xC0)
        {
          v66 = byte_181A20D3A[v65];
          v67 = *v11;
          if ((*v11 & 0xC0) == 0x80)
          {
            do
            {
              v68 = *++v11;
              v66 = v67 & 0x3F | (v66 << 6);
              v67 = v68;
            }

            while ((v68 & 0xC0) == 0x80);
            v103 = v11;
          }

          if (v66 < 0x80 || v66 >> 1 == 0x7FFF || v66 >> 11 == 27)
          {
            v63 = 65533;
          }

          else
          {
            v63 = v66;
          }
        }

        v71 = v5 && v63 == v5;
        v72 = v71;
        if (v63 != v6 && !v72)
        {
          break;
        }

        if (v63 == v5)
        {
          v75 = *a2++;
          v74 = v75;
          v76 = v75 - 192;
          if (v75 < 0xC0)
          {
            goto LABEL_172;
          }

          v74 = byte_181A20D3A[v76];
          v77 = *a2;
          if ((*a2 & 0xC0) == 0x80)
          {
            do
            {
              v78 = *++a2;
              v74 = v77 & 0x3F | (v74 << 6);
              v77 = v78;
            }

            while ((v78 & 0xC0) == 0x80);
          }

          if (v74 >> 1 != 0x7FFF && v74 >= 0x80 && (v74 & 0xFFFFF800) != 0xD800)
          {
LABEL_172:
            v86 = 2;
            if (!v74)
            {
              return v86;
            }
          }
        }
      }

      if (!v63)
      {
        return 0;
      }

      v79 = a4;
      v80 = a3;
      if (v63 == a4)
      {
        if (a3[2])
        {
          if (*a2)
          {
            v81 = v11 - 1;
            while (1)
            {
              v83 = a2;
              v84 = sub_1818EDFDC(v81, a2, a3, a4);
              if (v84 != 1)
              {
                break;
              }

              a2 = v83;
              if (*v83 < 0xC0u)
              {
                v82 = *(v83 + 1);
                a2 = (v83 + 1);
              }

              else
              {
                do
                {
                  v85 = *++a2;
                  v82 = v85;
                }

                while ((v85 & 0xC0) == 0x80);
              }

              a4 = v79;
              a3 = v80;
              v86 = 2;
              if (!v82)
              {
                return v86;
              }
            }

            return v84;
          }

          return 2;
        }

        v87 = a2;
        v88 = sub_18194E43C(&v103);
        a2 = v87;
        v63 = v88;
        if (!v88)
        {
          return 2;
        }
      }

      if (v63 < 0x80)
      {
        if (v7)
        {
          v89 = a2;
          v90 = (~byte_181A204C8[v63] | 0xDF) & v63;
          v91 = byte_181A20298[v63];
          __charset[2] = 0;
        }

        else
        {
          v89 = a2;
          v91 = 0;
          v90 = v63;
        }

        __charset[0] = v90;
        __charset[1] = v91;
        v100 = v103;
        while (1)
        {
          v101 = &v89[strcspn(v89, __charset)];
          if (!*v101)
          {
            break;
          }

          v89 = v101 + 1;
          v84 = sub_1818EDFDC(v100, v101 + 1, v80, v79);
          if (v84 != 1)
          {
            return v84;
          }
        }

        return 2;
      }

      v92 = v103;
      while (2)
      {
        v94 = *a2++;
        v93 = v94;
        if ((v94 & 0x80) != 0)
        {
          if (v93 < 0xC0)
          {
            v95 = v93;
          }

          else
          {
            v93 = byte_181A20D3A[v93 - 192];
            v96 = *a2;
            if ((*a2 & 0xC0) == 0x80)
            {
              do
              {
                v97 = *++a2;
                v93 = v96 & 0x3F | (v93 << 6);
                v96 = v97;
              }

              while ((v97 & 0xC0) == 0x80);
            }

            v95 = 65533;
            if (v93 >> 1 != 0x7FFF && v93 >= 0x80 && (v93 & 0xFFFFF800) != 0xD800)
            {
              goto LABEL_192;
            }
          }
        }

        else
        {
LABEL_192:
          v95 = v93;
          if (!v93)
          {
            return 2;
          }
        }

        if (v95 == v63)
        {
          v98 = a2;
          v99 = sub_1818EDFDC(v92, a2, v80, v79);
          a2 = v98;
          v86 = v99;
          if (v99 != 1)
          {
            return v86;
          }
        }

        continue;
      }
    }

    v14 = v9;
    goto LABEL_17;
  }

  sub_1819012D0(139644);
  return 1;
}

int sqlite3_bind_blob(sqlite3_stmt *a1, int a2, const void *a3, int n, void (__cdecl *a5)(void *))
{
  if (n < 0)
  {
    return sub_1819012D0(101409);
  }

  else
  {
    return sub_1818DF574(a1, a2, a3, n, a5, 0);
  }
}

sqlite3_stmt *__cdecl sqlite3_next_stmt(sqlite3 *pDb, sqlite3_stmt *pStmt)
{
  if (!pDb)
  {
    v3 = "NULL";
    goto LABEL_11;
  }

  v2 = *(pDb + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_11:
    sqlite3_log(21, "API call with %s database connection pointer", v3);
    v4 = 101836;
    goto LABEL_12;
  }

  if (v2 != 118)
  {
    if (v2 != 109)
    {
      v3 = "invalid";
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  if (pStmt && *pStmt != pDb)
  {
    v4 = 101841;
LABEL_12:
    sub_1819012D0(v4);
    return 0;
  }

  if (*(pDb + 3))
  {
    xmmword_1ED452F18(*(pDb + 3));
    v8 = *(pDb + 3);
    v9 = (pDb + 8);
    if (pStmt)
    {
      v9 = (pStmt + 16);
    }

    result = *v9;
    if (v8)
    {
      v10 = *v9;
      xmmword_1ED452F28(v8);
      return v10;
    }
  }

  else
  {
    v11 = (pDb + 8);
    if (pStmt)
    {
      v11 = (pStmt + 16);
    }

    return *v11;
  }

  return result;
}

uint64_t sub_1818EE950(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  sub_18192A708(a1);
  sub_18192B800(a1, 0, 0);
  v4 = *(a1 + 160);
  if (v4)
  {
    *(a1 + 160) = 0;
    if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0)
    {
      dispatch_source_cancel_and_wait();
      dispatch_release(v4);
    }
  }

  if (qword_1ED456B10)
  {
    v3.n128_f64[0] = xmmword_1ED452F18(qword_1ED456B10);
  }

  v5 = *(v2 + 16);
  if (v5)
  {
    v3.n128_f64[0] = xmmword_1ED452F18(v5);
  }

  if (*(v2 + 28))
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 48);
    *(v7 + 8) = *(v6 + 40);
    *(v6 + 40) = v7;
    *(a1 + 24) = -1;
    *(a1 + 48) = 0;
  }

  v8 = *(v2 + 16);
  if (v8)
  {
    v3.n128_f64[0] = xmmword_1ED452F28(v8);
  }

  sub_18192A87C(a1, v3);
  v9 = *(a1 + 160);
  if (v9)
  {
    *(a1 + 160) = 0;
    if ((_dispatch_is_fork_of_multithreaded_parent() & 1) == 0)
    {
      dispatch_source_cancel_and_wait();
      dispatch_release(v9);
    }
  }

  v10 = *(a1 + 104);
  if (v10)
  {
    off_1EE341CF0(v10, *(a1 + 88));
    *(a1 + 104) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v11 = *(a1 + 24);
  if ((v11 & 0x80000000) == 0)
  {
    if (off_1EE341AE0(v11))
    {
      v12 = *(a1 + 56);
      v13 = *__error();
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v13, __strerrbuf, 0x4FuLL);
      v14 = &byte_181A2878D;
      if (v12)
      {
        v14 = v12;
      }

      sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 44393, v13, "close", v14, __strerrbuf);
    }

    *(a1 + 24) = -1;
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v16 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_29:
      (*v16)(v15);
      goto LABEL_30;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v15);
    --qword_1ED456A90;
    off_1ED452EB0(v15);
    v15 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v16 = &xmmword_1ED452F28;
      goto LABEL_29;
    }
  }

LABEL_30:
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
  if (qword_1ED456B10)
  {
    xmmword_1ED452F28(qword_1ED456B10);
  }

  return 0;
}

uint64_t sub_1818EEBE4(uint64_t result)
{
  v1 = *(result + 32);
  v2 = __OFSUB__(v1--, 1);
  *(result + 32) = v1;
  if (!((v1 < 0) ^ v2 | (v1 == 0)))
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 8);
  *(result + 8) = 0;
  v5 = *(result + 24);
  if (v5)
  {
    v6 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_9:
      (*v6)(v5);
      goto LABEL_10;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v5);
    --qword_1ED456A90;
    off_1ED452EB0(v5);
    v5 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v6 = &xmmword_1ED452F28;
      goto LABEL_9;
    }
  }

LABEL_10:
  *(v3 + 24) = 0;
  *(v3 + 16) = 0;
  if (v4)
  {
    while (1)
    {
      v7 = *v4;
      if (*(v3 + 1))
      {
        v8 = v4[3];
        if (v8)
        {
          v9 = &off_1ED452EB0;
          if (!dword_1ED452E80)
          {
            goto LABEL_21;
          }

          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v8);
          --qword_1ED456A90;
          off_1ED452EB0(v8);
          v8 = xmmword_1ED456AF0;
          if (xmmword_1ED456AF0)
          {
            break;
          }
        }
      }

LABEL_22:
      v10 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v4);
        --qword_1ED456A90;
        off_1ED452EB0(v4);
        v4 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_13;
        }

        v10 = &xmmword_1ED452F28;
      }

      (*v10)(v4);
LABEL_13:
      v4 = v7;
      if (!v7)
      {
        goto LABEL_27;
      }
    }

    v9 = &xmmword_1ED452F28;
LABEL_21:
    (*v9)(v8);
    goto LABEL_22;
  }

LABEL_27:
  *(v3 + 4) = 0;
  v11 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_32;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v3);
  --qword_1ED456A90;
  result = off_1ED452EB0(v3);
  v3 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v11 = &xmmword_1ED452F28;
LABEL_32:
    v12 = *v11;

    return v12(v3);
  }

  return result;
}

uint64_t sub_1818EEE54(uint64_t a1, unsigned int a2, signed int a3, char *a4, int a5)
{
  v5 = *(a1 + 136);
  if (*(a1 + 86) >= *(v5 + 24))
  {
    v14 = 84372;
    goto LABEL_5;
  }

  v11 = *(a1 + 32);
  sub_181938B20(a1);
  v12 = *(a1 + 56);
  v13 = *(a1 + 68);
  if (v12 - *(v5 + 80) > (v11[14] - v13))
  {
    v14 = 84387;
LABEL_5:

    return sub_18193596C(v14, v5);
  }

  __src = a4;
  if (v13 > a2)
  {
    if (a3 + a2 <= v13)
    {
      v16 = a3;
    }

    else
    {
      v16 = v13 - a2;
    }

    v17 = (v12 + a2);
    if (!a5)
    {
      v23 = v16;
      v24 = a4;
      v25 = v17;
LABEL_25:
      memcpy(v24, v25, v23);
      result = 0;
LABEL_26:
      v21 = 0;
      v22 = &a4[v16];
      a3 -= v16;
      if (result)
      {
        goto LABEL_87;
      }

      goto LABEL_27;
    }

    v18 = *(v5 + 112);
    v19 = *(v18 + 40);
    if ((*(v18 + 52) & 4) != 0 && v19[8] >= *(v18 + 48))
    {
      if (!v19[32])
      {
LABEL_24:
        v23 = v16;
        v24 = v17;
        v25 = a4;
        goto LABEL_25;
      }

      result = sub_1819360C0(*(v5 + 112));
    }

    else
    {
      result = v19[12];
      if (result)
      {
        goto LABEL_26;
      }

      v20 = *(v5 + 112);
      if (v19[46] <= v19[50])
      {
        result = sub_1818D8DD8(v20);
      }

      else
      {
        result = sub_181936438(v20);
      }
    }

    if (result)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  result = 0;
  v21 = a2 - v13;
  v22 = a4;
LABEL_27:
  if (a3)
  {
    v26 = v11[14];
    v27 = v26 - 4;
    v28 = *(a1 + 68);
    v29 = bswap32(*(v12 + v28));
    v59 = v29;
    if ((*(a1 + 1) & 4) != 0)
    {
      v35 = *(a1 + 16);
      v36 = v21 / v27;
      if (*(v35 + 4 * (v21 / v27)))
      {
        v37 = v36;
        v29 = *(v35 + 4 * v36);
        v59 = v29;
        v21 %= v27;
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v30 = v22;
      v31 = v29;
      v32 = *(a1 + 16);
      v33 = (v26 - v28 + *(a1 + 64) - 5) / v27;
      if (v32 && xmmword_1ED452EC0(v32) >= 4 * v33)
      {
        v34 = *(a1 + 16);
      }

      else
      {
        if (off_1ED453038 && off_1ED453038(413))
        {
          return 7;
        }

        v34 = sub_18190287C(*(a1 + 16), 8 * v33, 0x100004052888210);
        if (!v34)
        {
          return 7;
        }

        *(a1 + 16) = v34;
      }

      bzero(v34, 4 * v33);
      v37 = 0;
      *(a1 + 1) |= 4u;
      v29 = v31;
      v22 = v30;
    }

    if (v29)
    {
      v38 = 4 * v37;
      while (1)
      {
        if (v29 > v11[16])
        {
          return sub_18190EDA8(84458);
        }

        v39 = *(a1 + 16);
        *(v39 + v38) = v29;
        if (v21 < v27)
        {
          break;
        }

        v46 = *(v39 + v38 + 4);
        if (v46)
        {
          result = 0;
          v59 = v46;
        }

        else
        {
          result = sub_181944028(v11, v29, 0, &v59);
        }

        v21 -= v27;
LABEL_84:
        if (result)
        {
          goto LABEL_87;
        }

        v29 = v59;
        v38 += 4;
        if (!v59)
        {
          goto LABEL_86;
        }
      }

      v57 = v22;
      if (v21 + a3 <= v27)
      {
        v40 = a3;
      }

      else
      {
        v40 = v27 - v21;
      }

      if (!(a5 | v21))
      {
        v41 = *v11;
        v42 = **(*v11 + 72);
        if (v42)
        {
          if (!**(v41 + 336) && !*(v41 + 296))
          {
            v50 = *(v41 + 344);
            v55 = v29;
            if (v50)
            {
              LODWORD(v58) = 0;
              sub_18193452C(v50, v29, &v58);
              if (v58)
              {
                goto LABEL_52;
              }

              v42 = **(v41 + 72);
            }

            if (((*(v42 + 96))() & 0x8000) != 0 && v57 - 4 >= __src)
            {
              v54 = *(v57 - 1);
              result = (*(**(*v11 + 72) + 16))(*(*v11 + 72), v57 - 4, (v40 + 4), v11[13] * (v55 - 1));
              v21 = 0;
              v59 = bswap32(*(v57 - 1));
              *(v57 - 1) = v54;
              goto LABEL_82;
            }
          }
        }
      }

LABEL_52:
      v58 = 0;
      result = (*(*v11 + 288))();
      if (!result)
      {
        v43 = *(v58 + 8);
        v59 = bswap32(*v43);
        v44 = v21 + 4;
        if (!a5)
        {
          v47 = v40;
          v48 = v43 + v44;
          v49 = v57;
LABEL_75:
          memcpy(v49, v48, v47);
          result = 0;
LABEL_76:
          v51 = v58;
          if (v58)
          {
            v52 = result;
            if ((*(v58 + 52) & 0x20) != 0)
            {
              v53 = *(v58 + 40);
              --*(v53 + 152);
              *(v51 + 32) = *(v53 + 168);
              *(v53 + 168) = v51;
              (*(**(v53 + 72) + 144))(*(v53 + 72), *(v53 + 200) * (*(v51 + 48) - 1), *(v51 + 8));
            }

            else
            {
              sub_181932B68(v58);
            }

            v21 = 0;
            result = v52;
          }

          else
          {
            v21 = 0;
          }

          goto LABEL_82;
        }

        v45 = *(v58 + 40);
        if ((*(v58 + 52) & 4) != 0 && v45[8] >= *(v58 + 48))
        {
          if (!v45[32])
          {
LABEL_74:
            v47 = v40;
            v49 = v43 + v44;
            v48 = v57;
            goto LABEL_75;
          }

          result = sub_1819360C0(v58);
        }

        else
        {
          result = v45[12];
          if (result)
          {
            goto LABEL_76;
          }

          if (v45[46] <= v45[50])
          {
            result = sub_1818D8DD8(v58);
          }

          else
          {
            result = sub_181936438(v58);
          }
        }

        if (result)
        {
          goto LABEL_76;
        }

        goto LABEL_74;
      }

LABEL_82:
      a3 -= v40;
      if (!a3)
      {
        return result;
      }

      v22 = &v57[v40];
      goto LABEL_84;
    }

LABEL_86:
    result = 0;
  }

LABEL_87:
  if (!result && a3)
  {
    return sub_18193596C(84542, v5);
  }

  return result;
}

void *__cdecl sqlite3_user_data(void *result)
{
  if (result)
  {
    return *(*(result + 1) + 8);
  }

  return result;
}

uint64_t sub_1818EF3D0(uint64_t a1, int a2)
{
  v3 = *(a1 + 18);
  v4 = *(a1 + 24);
  v5 = (v3 + 2 * v4);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = v6[14];
  v9 = &v7[*(a1 + 9)];
  if (v9[7] <= a2)
  {
    v18 = __rev16(*(v9 + 1));
    v10 = v8 - 4;
    if (v18 > v8 - 4)
    {
      v23 = 80904;
      goto LABEL_25;
    }

    if (v18)
    {
      v19 = __rev16(*&v7[v18]);
      if (v19 > v10)
      {
        v23 = 80907;
        goto LABEL_25;
      }

      if (!v19 || !v7[v19] && !v7[v19 + 1])
      {
        v35 = &v7[*(a1 + 9)];
        v24 = __rev16(*(v9 + 5));
        v25 = v18 - v24;
        if (v18 <= v24)
        {
          v23 = 80915;
          goto LABEL_25;
        }

        v26 = __rev16(*&v7[v18 + 2]);
        v27 = v26 + v18;
        if (v19)
        {
          if (v19 < v27)
          {
            v23 = 80918;
            goto LABEL_25;
          }

          v28 = __rev16(*&v7[v19 + 2]);
          if ((v28 + v19) > v8)
          {
            v23 = 80920;
            goto LABEL_25;
          }

          v29 = v19;
          memmove(&v7[v28 + v27], &v7[v27], (v19 - v27));
          v25 = v18 - v24;
          v26 += v28;
        }

        else
        {
          if (v27 > v8)
          {
            v22 = 20;
LABEL_24:
            v23 = v22 | 0x13C08u;
            goto LABEL_25;
          }

          v29 = 0;
          v28 = 0;
        }

        v14 = v26 + v24;
        memmove(&v7[v14], &v7[v24], v25);
        v36 = v7;
        if (v3 >= v5)
        {
          v20 = v35;
        }

        else
        {
          v30 = &v7[v3];
          v20 = v35;
          do
          {
            v31 = __rev16(*v30);
            v32 = v26;
            if (v31 < v18 || (v32 = v28, v31 < v29))
            {
              *v30 = bswap32(v31 + v32) >> 16;
            }

            ++v30;
          }

          while (v30 < &v7[v5]);
        }

        goto LABEL_20;
      }
    }
  }

  else
  {
    v10 = v8 - 4;
  }

  v33 = v3 + 2 * v4;
  v34 = &v7[*(a1 + 9)];
  v36 = *(a1 + 80);
  if (*(a1 + 24))
  {
    v11 = __rev16(*(v9 + 5));
    v12 = *(*v6 + 328);
    memcpy(v12, v7, v8);
    v13 = &v7[v3 + 1];
    LODWORD(v14) = v8;
    while (1)
    {
      v15 = __rev16(*(v13 - 1));
      if (v15 > v10)
      {
        break;
      }

      v16 = (*(a1 + 120))(a1, &v12[v15]);
      LODWORD(v14) = v14 - v16;
      if (v14 < v11 || (v15 + v16) > v8)
      {
        v23 = 80963;
        goto LABEL_25;
      }

      *(v13 - 1) = bswap32(v14) >> 16;
      memcpy(&v36[v14], &v12[v15], v16);
      v13 += 2;
      if (!--v4)
      {
        goto LABEL_19;
      }
    }

    v22 = 53;
    goto LABEL_24;
  }

  LODWORD(v14) = v6[14];
LABEL_19:
  LODWORD(v5) = v33;
  v20 = v34;
  v34[7] = 0;
LABEL_20:
  if (v14 - v5 + v20[7] == *(a1 + 20))
  {
    *(v20 + 5) = bswap32(v14) >> 16;
    *(v20 + 1) = 0;
    bzero(&v36[v5], v14 - v5);
    return 0;
  }

  v23 = 80977;
LABEL_25:

  return sub_18193596C(v23, a1);
}

_DWORD *sub_1818EF720(_DWORD *result, int a2, int a3, int a4, _DWORD *a5)
{
  if (!*a5)
  {
    if (a2 == 1)
    {
      v6 = 1;
      v7 = a3;
      v8 = a4;
      v9 = a5;
      v10 = 0;
    }

    else
    {
      if (!a2)
      {
        result = sub_18190EDA8(80330);
        *a5 = result;
        return result;
      }

      v7 = a3;
      v8 = a4;
      v9 = a5;
      v6 = a2;
      v11 = (a2 - 2) / (result[14] / 5u + 1) * (result[14] / 5u + 1);
      if (v11 + 1 == dword_1EA8315A8 / result[13])
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v10 = v12 + v11;
    }

    result = (*(*result + 288))();
    if (result)
    {
      *v9 = result;
      return result;
    }

    if (*MEMORY[0x10])
    {
      v13 = 80343;
    }

    else
    {
      v14 = 5 * (~v10 + v6);
      if (v14 >= 0)
      {
        v15 = (MEMORY[8] + v14);
        if (*v15 != v7 || bswap32(*(v15 + 1)) != v8)
        {
          v16 = sub_1818D8D88(0);
          *v9 = v16;
          if (!v16)
          {
            *v15 = v7;
            v15[1] = HIBYTE(v8);
            v15[2] = BYTE2(v8);
            v15[3] = BYTE1(v8);
            v15[4] = v8;
          }
        }

        return 0;
      }

      v13 = 80348;
    }

    *v9 = sub_18190EDA8(v13);
    return 0;
  }

  return result;
}

sqlite3_int64 sqlite3_last_insert_rowid(sqlite3 *a1)
{
  if (a1)
  {
    v1 = *(a1 + 113);
    switch(v1)
    {
      case 186:
        goto LABEL_5;
      case 118:
        return *(a1 + 7);
      case 109:
LABEL_5:
        v2 = "unopened";
        break;
      default:
        v2 = "invalid";
        break;
    }
  }

  else
  {
    v2 = "NULL";
  }

  sqlite3_log(21, "API call with %s database connection pointer", v2);
  sub_1819012D0(192786);
  return 0;
}

uint64_t sub_1818EF99C(uint64_t result, int a2, int a3)
{
  if (!result)
  {
    return result;
  }

  if (*(result + 16) != 2)
  {
    return 0;
  }

  v3 = *(result + 8);
  v4 = result;
  if (*(result + 17) && (++*(result + 20), !*(result + 18)))
  {
    v8 = a3;
    v9 = a2;
    sub_181932DEC(result);
    a2 = v9;
    a3 = v8;
    if (v9 != 2)
    {
      goto LABEL_12;
    }
  }

  else if (a2 != 2)
  {
    goto LABEL_12;
  }

  v5 = *(v3 + 16);
  if (!v5 || (v6 = a2, v7 = a3, result = sub_18193880C(v5, 0, 0), a2 = v6, a3 = v7, !result))
  {
LABEL_12:
    v10 = a3;
    result = sub_18193C13C(*v3, a2, a3);
    if (!result)
    {
      if (v10 < 0 && (*(v3 + 40) & 0x10) != 0)
      {
        *(v3 + 64) = 0;
      }

      result = sub_1818D1728(v3);
      v11 = bswap32(*(*(*(v3 + 24) + 80) + 28));
      if (!v11)
      {
        v11 = *(*v3 + 32);
      }

      *(v3 + 64) = v11;
    }
  }

  if (*(v4 + 17))
  {
    v12 = *(v4 + 20) - 1;
    *(v4 + 20) = v12;
    if (!v12)
    {
      v13 = result;
      sub_181932ECC(v4);
      return v13;
    }
  }

  return result;
}

uint64_t sub_1818EFAC4(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*(result + 8))
  {
    for (i = 16; i != 512; i += 8)
    {
      sub_1818EFAC4(*(v1 + i));
    }
  }

  v3 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_10;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v3 = &xmmword_1ED452F28;
LABEL_10:
    v4 = *v3;

    return v4(v1);
  }

  return result;
}

uint64_t sub_1818EFBBC(uint64_t a1, uint64_t a2, int a3, unsigned int (*a4)(uint64_t), uint64_t a5, unsigned int a6, int a7, uint64_t a8, _DWORD *a9, _DWORD *a10)
{
  v188 = *MEMORY[0x1E69E9840];
  v171 = 0;
  if (*(a1 + 66))
  {
    return 8;
  }

  v15 = a4;
  *(a1 + 160) = a2;
  if (a2)
  {
    if (a4)
    {
      if (*(a2 + 788))
      {
        LODWORD(v175) = *(a2 + 788);
        v18 = *(a1 + 8);
        if (*v18)
        {
          v19 = a3;
          (*(*v18 + 80))(v18, 34, &v175);
          a3 = v19;
        }
      }
    }
  }

  v170 = a3;
  if (*(a1 + 63) || (v22 = (*(**(a1 + 8) + 112))(*(a1 + 8), 1, 1, 10), v20 = v170, !v22))
  {
    *(a1 + 65) = 1;
    v20 = v170;
    if (v170)
    {
      while (!*(a1 + 63))
      {
        v21 = (*(**(a1 + 8) + 112))(*(a1 + 8), 0, 1, 10);
        v22 = v21;
        if (!v15 || v21 != 5)
        {
          if (v21)
          {
            if (v21 != 5)
            {
              if (v21 != 773)
              {
                goto LABEL_34;
              }

              LODWORD(v175) = 0;
              v23 = *(a1 + 8);
              if (*v23)
              {
                (*(*v23 + 80))(v23, 34, &v175);
              }
            }

LABEL_22:
            v15 = 0;
            v20 = 0;
            goto LABEL_24;
          }

          break;
        }

        if (!v15(a5))
        {
          goto LABEL_22;
        }
      }

      *(a1 + 64) = 1;
    }

LABEL_24:
    LODWORD(v175) = 0;
    v24 = **(a1 + 8);
    if (v24)
    {
      (*(v24 + 80))();
    }

    v22 = sub_1818A5900(a1, &v171);
    if (v20)
    {
      v25 = *(a1 + 160);
      if (v25)
      {
        v26 = *(v25 + 788);
        if (v26)
        {
          LODWORD(v175) = v26;
          v27 = *(a1 + 8);
          if (*v27)
          {
            (*(*v27 + 80))(v27, 34, &v175);
          }
        }
      }
    }

    if (v171)
    {
      v28 = *(a1 + 8);
      if (**v28 >= 3)
      {
        (*(*v28 + 144))(v28, 0, 0);
      }
    }

LABEL_34:
    if (!v22)
    {
      v32 = *(a1 + 88);
      if (v32 && ((*(a1 + 86) | (*(a1 + 86) << 16)) & 0x1FE00) != a7)
      {
        v22 = sub_18190EDA8(78588);
        goto LABEL_240;
      }

      v33 = **(a1 + 48);
      if (*(v33 + 96) >= v32)
      {
        v41 = 0;
        v22 = 0;
        v42 = **(a1 + 48);
        if (!v20)
        {
          goto LABEL_233;
        }

        goto LABEL_212;
      }

      v161 = a6;
      v162 = (*(a1 + 86) | (*(a1 + 86) << 16)) & 0x1FE00;
      v22 = 0;
      v159 = a8;
      v160 = *(a1 + 92);
      v166 = **(a1 + 48);
      v34 = v33 + 100;
      for (i = 1; i != 5; ++i)
      {
        v37 = *(v34 + 4 * i);
        if (v32 > v37)
        {
          v38 = v32;
          while (1)
          {
            if (*(a1 + 63))
            {
              goto LABEL_61;
            }

            v39 = (*(**(a1 + 8) + 112))(*(a1 + 8), (i + 3), 1, 10);
            v22 = v39;
            if (!v15 || v39 != 5)
            {
              break;
            }

            if (!v15(a5))
            {
              goto LABEL_74;
            }
          }

          if (v39)
          {
            if (v39 == 5)
            {
              v15 = 0;
              v32 = v37;
            }

            else
            {
              if (v39 != 773)
              {
                goto LABEL_240;
              }

              LODWORD(v175) = 0;
              v40 = *(a1 + 8);
              if (*v40)
              {
                (*(*v40 + 80))(v40, 34, &v175);
              }

LABEL_74:
              v15 = 0;
              v22 = 5;
              v32 = v37;
            }
          }

          else
          {
LABEL_61:
            if (i == 1)
            {
              v36 = v38;
            }

            else
            {
              v36 = -1;
            }

            *(v34 + 4 * i) = v36;
            if (!*(a1 + 63))
            {
              (*(**(a1 + 8) + 112))(*(a1 + 8), (i + 3), 1, 9);
            }

            v32 = v38;
            v22 = 0;
          }
        }
      }

      v42 = v166;
      if (*(v166 + 96) < v32)
      {
        v155 = v32;
        v43 = *(v166 + 96);
        v44 = *(a1 + 88);
        if (sqlite3_initialize())
        {
          v22 = 7;
          goto LABEL_35;
        }

        v153 = a5;
        v154 = v20;
        v45 = ((v44 + 4096) + 0xFFFFFFFF021) >> 12;
        v46 = v44;
        v47 = (v45 + 1) << 8;
        v48 = 2 * v46;
        v49 = v47 + 2 * v46;
        v158 = v46;
        if (v46 >= 0x1000)
        {
          v50 = 4096;
        }

        else
        {
          v50 = v46;
        }

        v51 = sub_181902484(v49 + (2 * v50), 0x1000040BDFB0063);
        if (!v51)
        {
          v22 = 7;
          v20 = v154;
          goto LABEL_35;
        }

        v152 = a2;
        v52 = v51;
        bzero(v51, v49);
        v52[1] = v45 + 1;
        v53 = ((v43 + 4097) + 0xFFFFFFFF021) >> 12;
        if (v53 > v45)
        {
LABEL_91:
          v20 = v154;
          a5 = v153;
          v42 = v166;
          v54 = v162;
          while (1)
          {
            if (*(a1 + 63))
            {
              goto LABEL_181;
            }

            v55 = (*(**(a1 + 8) + 112))(*(a1 + 8), 3, 1, 10);
            v22 = v55;
            if (!v15 || v55 != 5)
            {
              break;
            }

            if (!v15(v153))
            {
              goto LABEL_96;
            }
          }

          if (v55)
          {
            if (v55 == 773)
            {
              LODWORD(v175) = 0;
              v118 = *(a1 + 8);
              if (*v118)
              {
                (*(*v118 + 80))(v118, 34, &v175);
              }

LABEL_96:
              v41 = v52;
              goto LABEL_209;
            }

            goto LABEL_191;
          }

LABEL_181:
          v119 = *(v166 + 96);
          *(v166 + 128) = v155;
          v120 = (v161 >> 2) & 3;
          if (v120)
          {
            v121 = (*(**(a1 + 16) + 40))(*(a1 + 16), v120);
            if (v121)
            {
              goto LABEL_183;
            }
          }

          *&v175 = v160 * v162;
          __buf = 0;
          (*(**(a1 + 8) + 80))(*(a1 + 8), 39, 0);
          v22 = (*(**(a1 + 8) + 48))(*(a1 + 8), &__buf);
          if (v22)
          {
            goto LABEL_185;
          }

          if (__buf < v175)
          {
            if ((__buf + *(a1 + 88) * v162 + 0x10000) < v175)
            {
              v121 = sub_18190EDA8(76418);
LABEL_183:
              v22 = v121;
LABEL_185:
              v41 = v52;
              goto LABEL_186;
            }

            v134 = *(a1 + 8);
            if (*v134)
            {
              (*(*v134 + 80))(v134, 5, &v175);
            }
          }

          v165 = (v161 >> 2) & 3;
          v41 = v52;
          v135 = v52[1];
          v136 = v155;
          if (v135 < 1)
          {
LABEL_278:
            v22 = 0;
            *v41 = -1;
          }

          else
          {
            v137 = 0;
            v168 = v119;
            while (1)
            {
              v138 = *v41;
              v139 = -1;
              do
              {
                v141 = &v52[8 * v135 - 6];
                v142 = v141[6];
                v143 = *v141;
                if (v142 > v143)
                {
                  v144 = *(v141 + 2);
                  v145 = v142 - v143;
                  v146 = v143 + 1;
                  v147 = (*(v141 + 1) + 2 * v143);
                  while (1)
                  {
                    v149 = *v147++;
                    v148 = v149;
                    v150 = *(v144 + 4 * v149);
                    if (v150 > v138)
                    {
                      break;
                    }

                    *v141 = v146++;
                    if (!--v145)
                    {
                      goto LABEL_262;
                    }
                  }

                  if (v150 < v139)
                  {
                    v137 = v141[7] + v148;
                    v139 = v150;
                  }
                }

LABEL_262:
                ;
              }

              while (v135-- > 1);
              *v41 = v139;
              if (v139 == -1)
              {
                v22 = 0;
                goto LABEL_283;
              }

              if (*(v152 + 424))
              {
                break;
              }

              if (v137 > v119 && v137 <= v136 && v139 <= v160)
              {
                v54 = v162;
                v151 = (*(**(a1 + 16) + 16))(*(a1 + 16), v159, v162, (v162 | 0x18) * (v137 - 1) + 56);
                if (v151)
                {
                  v22 = v151;
                  a5 = v153;
                  v42 = v166;
                  v41 = v52;
                  v120 = v165;
                  goto LABEL_186;
                }

                v22 = (*(**(a1 + 8) + 24))(*(a1 + 8), v159, v162, v162 * (v139 - 1));
                v41 = v52;
                v136 = v155;
                v119 = v168;
                if (v22)
                {
                  goto LABEL_283;
                }
              }

              v135 = v41[1];
              if (v135 <= 0)
              {
                goto LABEL_278;
              }
            }

            if (*(v152 + 103))
            {
              v22 = 7;
            }

            else
            {
              v22 = 9;
            }
          }

LABEL_283:
          a5 = v153;
          v42 = v166;
          v54 = v162;
          v120 = v165;
LABEL_186:
          v122 = *(a1 + 8);
          if (*v122)
          {
            (*(*v122 + 80))(v122, 37, 0);
            v41 = v52;
          }

          if (v22)
          {
            if (*(a1 + 63))
            {
              goto LABEL_208;
            }

            goto LABEL_190;
          }

          v125 = v155;
          if (v155 == *(**(a1 + 48) + 16))
          {
            v126 = (*(**(a1 + 8) + 32))(*(a1 + 8), v54 * *(a1 + 92));
            if (v126)
            {
              v22 = v126;
              v41 = v52;
              if (!*(a1 + 63))
              {
LABEL_190:
                (*(**(a1 + 8) + 112))(*(a1 + 8), 3, 1, 9);
LABEL_191:
                v41 = v52;
              }

LABEL_208:
              if (v22 == 5)
              {
LABEL_209:
                v22 = 0;
                if (!v20)
                {
LABEL_233:
                  if (v41)
                  {
                    v130 = &off_1ED452EB0;
                    if (dword_1ED452E80)
                    {
                      if (xmmword_1ED456AF0)
                      {
                        v131 = v41;
                        xmmword_1ED452F18(xmmword_1ED456AF0);
                        v41 = v131;
                      }

                      v132 = v41;
                      qword_1ED456A48[0] -= xmmword_1ED452EC0(v41);
                      --qword_1ED456A90;
                      off_1ED452EB0(v132);
                      v41 = xmmword_1ED456AF0;
                      if (!xmmword_1ED456AF0)
                      {
                        goto LABEL_240;
                      }

                      v130 = &xmmword_1ED452F28;
                    }

                    (*v130)(v41);
                  }

LABEL_240:
                  if (v22 == 5 || !v22)
                  {
                    if (a9)
                    {
                      *a9 = *(a1 + 88);
                    }

                    if (a10)
                    {
                      *a10 = *(**(a1 + 48) + 96);
                    }
                  }

                  goto LABEL_35;
                }
              }

              else if (!v20)
              {
                goto LABEL_233;
              }

LABEL_212:
              if (v22)
              {
                goto LABEL_233;
              }

              if (*(v42 + 96) >= *(a1 + 88))
              {
                if (v20 < 2)
                {
                  v22 = 0;
                  goto LABEL_233;
                }

                v127 = v41;
                LODWORD(__buf) = 0;
                sqlite3_initialize();
                arc4random_buf(&__buf, 4uLL);
                while (1)
                {
                  if (*(a1 + 63))
                  {
                    goto LABEL_227;
                  }

                  v128 = (*(**(a1 + 8) + 112))(*(a1 + 8), 4, 4, 10);
                  v22 = v128;
                  if (!v15 || v128 != 5)
                  {
                    break;
                  }

                  if (!v15(a5))
                  {
                    v22 = 5;
LABEL_232:
                    v41 = v127;
                    goto LABEL_233;
                  }
                }

                if (!v128)
                {
LABEL_227:
                  if (v20 == 3)
                  {
                    sub_1819382DC(a1, __buf);
                    v22 = (*(**(a1 + 16) + 32))(*(a1 + 16), 0);
                  }

                  else
                  {
                    v22 = 0;
                  }

                  if (!*(a1 + 63))
                  {
                    (*(**(a1 + 8) + 112))(*(a1 + 8), 4, 4, 9);
                  }

                  goto LABEL_232;
                }

                v41 = v127;
                if (v128 != 773)
                {
                  goto LABEL_233;
                }

                LODWORD(v175) = 0;
                v129 = *(a1 + 8);
                if (*v129)
                {
                  (*(*v129 + 80))(v129, 34, &v175);
                  v41 = v127;
                }
              }

              v22 = 5;
              goto LABEL_233;
            }

            v41 = v52;
            v125 = v155;
            if (v120)
            {
              v133 = (*(**(a1 + 8) + 40))(*(a1 + 8), v120);
              v41 = v52;
              v125 = v155;
              if (v133)
              {
                v22 = v133;
                if (!*(a1 + 63))
                {
                  goto LABEL_190;
                }

                goto LABEL_208;
              }
            }
          }

          v22 = 0;
          *(v42 + 96) = v125;
          if (!*(a1 + 63))
          {
            goto LABEL_190;
          }

          goto LABEL_208;
        }

        v56 = v52;
        v53 = v53;
        v57 = v45;
        v58 = v53;
        if (v53 <= v57)
        {
          v53 = v57;
        }

        v156 = v53;
        v157 = v57;
        v59 = v47 + v48;
        v60 = v52 + 2;
        v61 = v52 + v59;
        v62.i64[0] = 0x8000800080008;
        v62.i64[1] = 0x8000800080008;
        v63.i64[0] = 0x10001000100010;
        v63.i64[1] = 0x10001000100010;
LABEL_102:
        __buf = 0;
        v173 = 0;
        v174 = 0;
        if (v58 < *(a1 + 40))
        {
          v65 = *(*(a1 + 48) + 8 * v58);
          v173 = v65;
          if (v65)
          {
            v66 = v58 == 0;
            v67 = 136;
            if (v58)
            {
              v67 = 0;
            }

            v68 = v65 + v67;
            goto LABEL_112;
          }
        }

        v69 = sub_1819346F0(a1, v58, &v173);
        v22 = v69;
        if (v173)
        {
          v66 = v58 == 0;
          v67 = 136;
          if (v58)
          {
            v67 = 0;
          }

          v56 = v52;
          if (v69)
          {
            goto LABEL_196;
          }

          v68 = v173 + v67;
          v62.i64[0] = 0x8000800080008;
          v62.i64[1] = 0x8000800080008;
          v63.i64[0] = 0x10001000100010;
          v63.i64[1] = 0x10001000100010;
LABEL_112:
          if (v66)
          {
            v70 = 0;
          }

          else
          {
            v70 = ((v58 << 12) - 34);
          }

          v71 = (0x4000 - v67) >> 2;
          if (v58 == v157)
          {
            v72 = (v158 - v70);
          }

          else
          {
            v72 = v71;
          }

          v73 = v56[1];
          v167 = &v60[8 * v73] + 2 * v70;
          v169 = v72;
          v163 = v70 | 1;
          LODWORD(v174) = v70 | 1;
          v164 = v58;
          if (v72 <= 0)
          {
            v76 = 0;
            v77 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v182 = 0u;
            v183 = 0u;
            v180 = 0u;
            v181 = 0u;
            v178 = 0u;
            v179 = 0u;
            v176 = 0u;
            v177 = 0u;
            v78 = 1;
            v175 = 0u;
            goto LABEL_156;
          }

          v74 = 32 * v73;
          if (v72 < 4)
          {
            v75 = 0;
LABEL_131:
            v87 = (v60 + 2 * v75 + 2 * v70 + v74);
            do
            {
              *v87++ = v75++;
            }

            while (v72 != v75);
LABEL_133:
            v88 = 0;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v182 = 0u;
            v183 = 0u;
            v180 = 0u;
            v181 = 0u;
            v178 = 0u;
            v179 = 0u;
            v176 = 0u;
            v177 = 0u;
            v175 = 0u;
            while (1)
            {
              v76 = (v167 + 2 * v88);
              v90 = 0;
              v77 = 1;
              if (v88)
              {
                break;
              }

LABEL_134:
              v89 = &v175 + v90;
              *(v89 + 1) = v76;
              *v89 = v77;
              ++v88;
              LODWORD(v72) = v169;
              if (v88 == v169)
              {
                v78 = v90 + 1;
                if (v90 + 1 > 0xC)
                {
                  goto LABEL_101;
                }

LABEL_156:
                v104 = v78;
                while (2)
                {
                  if (((v72 >> v104) & 1) == 0)
                  {
                    goto LABEL_158;
                  }

                  v105 = &v175 + v104;
                  v106 = *(v105 + 1);
                  v107 = *v105;
                  v108 = v107 > 0;
                  v109 = v77 > 0;
                  if (v77 <= 0 && v107 < 1)
                  {
                    v77 = 0;
                    goto LABEL_157;
                  }

                  v110 = 0;
                  v111 = 0;
                  v112 = 0;
                  while (2)
                  {
                    if (!v108)
                    {
                      v115 = v112;
LABEL_169:
                      ++v112;
                      v114 = &v76[2 * v115];
                      goto LABEL_170;
                    }

                    v113 = v111;
                    if (v109 && *(v68 + 4 * v106[v111]) >= *(v68 + 4 * *&v76[2 * v112]))
                    {
                      v115 = v112;
                      goto LABEL_169;
                    }

                    ++v111;
                    v114 = &v106[v113];
LABEL_170:
                    v116 = *v114;
                    v117 = *(v68 + 4 * v116);
                    *&v61[2 * v110] = v116;
                    if (v111 < v107 && *(v68 + 4 * v106[v111]) == v117)
                    {
                      ++v111;
                    }

                    v108 = v111 < v107;
                    ++v110;
                    v109 = v112 < v77;
                    if (v112 < v77 || v111 < v107)
                    {
                      continue;
                    }

                    break;
                  }

                  v77 = v110;
LABEL_157:
                  memcpy(v106, v52 + v49, (2 * v77));
                  v56 = v52;
                  v76 = v106;
                  v62.i64[0] = 0x8000800080008;
                  v62.i64[1] = 0x8000800080008;
                  v63.i64[0] = 0x10001000100010;
                  v63.i64[1] = 0x10001000100010;
                  LODWORD(v72) = v169;
LABEL_158:
                  if (++v104 != 13)
                  {
                    continue;
                  }

                  break;
                }

LABEL_101:
                v60 = v52 + 2;
                v64 = &v52[8 * v164 + 2];
                *(v64 + 24) = v77;
                *(v64 + 28) = v163;
                *(v64 + 8) = v167;
                *(v64 + 16) = v68;
                v58 = v164 + 1;
                if (v164 == v156)
                {
                  goto LABEL_91;
                }

                goto LABEL_102;
              }
            }

            v91 = (v167 + 2 * v88);
LABEL_138:
            v92 = &v175 + v90;
            v76 = *(v92 + 1);
            v93 = *v92;
            v94 = v93 > 0;
            v95 = v77 > 0;
            if (v77 <= 0 && v93 < 1)
            {
              v77 = 0;
              goto LABEL_137;
            }

            v96 = 0;
            v97 = 0;
            v98 = 0;
            while (1)
            {
              if (v94)
              {
                v99 = v97;
                if (!v95 || *(v68 + 4 * *&v76[2 * v97]) < *(v68 + 4 * *&v91[2 * v98]))
                {
                  ++v97;
                  v100 = &v76[2 * v99];
                  goto LABEL_148;
                }

                v101 = v98;
              }

              else
              {
                v101 = v98;
              }

              ++v98;
              v100 = &v91[2 * v101];
LABEL_148:
              v102 = *v100;
              v103 = *(v68 + 4 * v102);
              *&v61[2 * v96] = v102;
              if (v97 < v93 && *(v68 + 4 * *&v76[2 * v97]) == v103)
              {
                ++v97;
              }

              v94 = v97 < v93;
              ++v96;
              v95 = v98 < v77;
              if (v98 >= v77 && v97 >= v93)
              {
                v77 = v96;
LABEL_137:
                memcpy(v76, v52 + v49, (2 * v77));
                v56 = v52;
                ++v90;
                v91 = v76;
                v62.i64[0] = 0x8000800080008;
                v62.i64[1] = 0x8000800080008;
                v63.i64[0] = 0x10001000100010;
                v63.i64[1] = 0x10001000100010;
                if (((v88 >> v90) & 1) == 0)
                {
                  goto LABEL_134;
                }

                goto LABEL_138;
              }
            }
          }

          if (v72 >= 0x10)
          {
            v75 = v72 & 0x7FFFFFF0;
            v79 = (v52 + 2 * v70 + v74 + 24);
            v80 = v75;
            v81 = xmmword_181A1FED0;
            do
            {
              v79[-1] = v81;
              *v79 = vaddq_s16(v81, v62);
              v81 = vaddq_s16(v81, v63);
              v79 += 2;
              v80 -= 16;
            }

            while (v80);
            v72 = v169;
            if (v75 == v169)
            {
              goto LABEL_133;
            }

            if ((v169 & 0xC) == 0)
            {
              goto LABEL_131;
            }
          }

          else
          {
            v75 = 0;
          }

          v82 = v75;
          v83 = vdup_n_s16(v75);
          v75 = v72 & 0x7FFFFFFC;
          v84 = vorr_s8(v83, 0x3000200010000);
          v85 = (v60 + 2 * v82 + 2 * v70 + v74);
          v86 = v82 - v75;
          do
          {
            *v85++ = v84;
            v84 = vadd_s16(v84, 0x4000400040004);
            v86 += 4;
          }

          while (v86);
          v72 = v169;
          if (v75 == v169)
          {
            goto LABEL_133;
          }

          goto LABEL_131;
        }

        if (v69 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v69;
        }

        v56 = v52;
LABEL_196:
        v123 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          v20 = v154;
          a5 = v153;
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
            v56 = v52;
          }

          v124 = v56;
          qword_1ED456A48[0] -= xmmword_1ED452EC0(v56);
          --qword_1ED456A90;
          off_1ED452EB0(v124);
          v56 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            v41 = 0;
            v42 = v166;
            goto LABEL_208;
          }

          v123 = &xmmword_1ED452F28;
          v42 = v166;
        }

        else
        {
          v20 = v154;
          a5 = v153;
          v42 = v166;
        }

        (*v123)(v56);
      }

      v41 = 0;
      goto LABEL_208;
    }
  }

LABEL_35:
  if (v171)
  {
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
  }

  LODWORD(v175) = 0;
  v29 = *(a1 + 8);
  if (*v29)
  {
    (*(*v29 + 80))(v29, 34, &v175);
  }

  *(a1 + 160) = 0;
  if (*(a1 + 64))
  {
    if (!*(a1 + 63))
    {
      (*(**(a1 + 8) + 112))(*(a1 + 8), 0, 1, 9);
    }

    *(a1 + 64) = 0;
    *(a1 + 124) = 0;
    *(a1 + 67) = 0;
  }

  if (*(a1 + 65))
  {
    if (!*(a1 + 63))
    {
      (*(**(a1 + 8) + 112))(*(a1 + 8), 1, 1, 9);
    }

    *(a1 + 65) = 0;
  }

  if (v22 == 773)
  {
    v30 = 5;
  }

  else
  {
    v30 = v22;
  }

  if (v30)
  {
    v31 = 1;
  }

  else
  {
    v31 = v20 == v170;
  }

  if (v31)
  {
    return v30;
  }

  else
  {
    return 5;
  }
}