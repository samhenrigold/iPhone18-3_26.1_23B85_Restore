__n128 sub_2992D06E8(char *a1, uint64_t ***a2, uint64_t ***a3, __int128 *a4)
{
  v8 = sub_29920B9DC(a2, a1);
  v9 = sub_29920B9DC(a3, a2);
  if (v8 < 0)
  {
    if (v9 < 0)
    {
      v17 = a1 + 24;
      v21 = *(a1 + 2);
      v22 = *a1;
      v24 = a3[2];
      *a1 = *a3;
      *(a1 + 2) = v24;
    }

    else
    {
      v18 = *(a1 + 2);
      v19 = *a1;
      v20 = a2[2];
      *a1 = *a2;
      *(a1 + 2) = v20;
      *a2 = v19;
      a2[2] = v18;
      v17 = (a2 + 3);
      LODWORD(v20) = *(a1 + 6);
      *(a1 + 6) = *(a2 + 6);
      *(a2 + 6) = v20;
      if ((sub_29920B9DC(a3, a2) & 0x80) == 0)
      {
        goto LABEL_11;
      }

      v21 = a2[2];
      v22 = *a2;
      v23 = a3[2];
      *a2 = *a3;
      a2[2] = v23;
    }

    *a3 = v22;
    a3[2] = v21;
    v13 = (a3 + 3);
    goto LABEL_10;
  }

  if (v9 < 0)
  {
    v10 = a2[2];
    v11 = *a2;
    v12 = a3[2];
    *a2 = *a3;
    a2[2] = v12;
    *a3 = v11;
    a3[2] = v10;
    v13 = (a2 + 3);
    LODWORD(v10) = *(a2 + 6);
    *(a2 + 6) = *(a3 + 6);
    *(a3 + 6) = v10;
    if ((sub_29920B9DC(a2, a1) & 0x80) != 0)
    {
      v14 = *(a1 + 2);
      v15 = *a1;
      v16 = a2[2];
      *a1 = *a2;
      *(a1 + 2) = v16;
      *a2 = v15;
      a2[2] = v14;
      v17 = a1 + 24;
LABEL_10:
      v25 = *v17;
      *v17 = *v13;
      *v13 = v25;
    }
  }

LABEL_11:
  if ((sub_29920B9DC(a4, a3) & 0x80) != 0)
  {
    v27 = a3[2];
    v28 = *a3;
    v29 = *(a4 + 2);
    *a3 = *a4;
    a3[2] = v29;
    *a4 = v28;
    *(a4 + 2) = v27;
    LODWORD(v27) = *(a3 + 6);
    *(a3 + 6) = *(a4 + 6);
    *(a4 + 6) = v27;
    if ((sub_29920B9DC(a3, a2) & 0x80) != 0)
    {
      v30 = a2[2];
      v31 = *a2;
      v32 = a3[2];
      *a2 = *a3;
      a2[2] = v32;
      *a3 = v31;
      a3[2] = v30;
      LODWORD(v30) = *(a2 + 6);
      *(a2 + 6) = *(a3 + 6);
      *(a3 + 6) = v30;
      if ((sub_29920B9DC(a2, a1) & 0x80) != 0)
      {
        v33 = *(a1 + 2);
        result = *a1;
        v34 = a2[2];
        *a1 = *a2;
        *(a1 + 2) = v34;
        *a2 = result;
        a2[2] = v33;
        LODWORD(v33) = *(a1 + 6);
        *(a1 + 6) = *(a2 + 6);
        *(a2 + 6) = v33;
      }
    }
  }

  return result;
}

__n128 sub_2992D0924(uint64_t a1, uint64_t ***a2, uint64_t ***a3, __int128 *a4, __int128 *a5)
{
  sub_2992D06E8(a1, a2, a3, a4);
  if ((sub_29920B9DC(a5, a4) & 0x80) != 0)
  {
    v11 = *(a4 + 2);
    v12 = *a4;
    v13 = *(a5 + 2);
    *a4 = *a5;
    *(a4 + 2) = v13;
    *a5 = v12;
    *(a5 + 2) = v11;
    LODWORD(v11) = *(a4 + 6);
    *(a4 + 6) = *(a5 + 6);
    *(a5 + 6) = v11;
    if ((sub_29920B9DC(a4, a3) & 0x80) != 0)
    {
      v14 = a3[2];
      v15 = *a3;
      v16 = *(a4 + 2);
      *a3 = *a4;
      a3[2] = v16;
      *a4 = v15;
      *(a4 + 2) = v14;
      LODWORD(v14) = *(a3 + 6);
      *(a3 + 6) = *(a4 + 6);
      *(a4 + 6) = v14;
      if ((sub_29920B9DC(a3, a2) & 0x80) != 0)
      {
        v17 = a2[2];
        v18 = *a2;
        v19 = a3[2];
        *a2 = *a3;
        a2[2] = v19;
        *a3 = v18;
        a3[2] = v17;
        LODWORD(v17) = *(a2 + 6);
        *(a2 + 6) = *(a3 + 6);
        *(a3 + 6) = v17;
        if ((sub_29920B9DC(a2, a1) & 0x80) != 0)
        {
          v20 = *(a1 + 16);
          result = *a1;
          v21 = a2[2];
          *a1 = *a2;
          *(a1 + 16) = v21;
          *a2 = result;
          a2[2] = v20;
          LODWORD(v20) = *(a1 + 24);
          *(a1 + 24) = *(a2 + 6);
          *(a2 + 6) = v20;
        }
      }
    }
  }

  return result;
}

BOOL sub_2992D0A70(__int128 *a1, __int128 *a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v9 = a2 - 2;
        v10 = sub_29920B9DC(a1 + 4, a1);
        v11 = sub_29920B9DC(a2 - 4, a1 + 32);
        if (v10 < 0)
        {
          if (v11 < 0)
          {
            v18 = a1 + 6;
            v31 = *(a1 + 2);
            v32 = *a1;
            v39 = *(a2 - 2);
            *a1 = *v9;
            *(a1 + 2) = v39;
          }

          else
          {
            v28 = *(a1 + 2);
            v29 = *a1;
            *a1 = a1[2];
            *(a1 + 2) = *(a1 + 6);
            a1[2] = v29;
            *(a1 + 6) = v28;
            v18 = a1 + 14;
            v30 = *(a1 + 6);
            *(a1 + 6) = *(a1 + 14);
            *(a1 + 14) = v30;
            if ((sub_29920B9DC(a2 - 4, a1 + 32) & 0x80) == 0)
            {
              return 1;
            }

            v31 = *(a1 + 6);
            v32 = a1[2];
            v33 = *(a2 - 2);
            a1[2] = *v9;
            *(a1 + 6) = v33;
          }

          *v9 = v32;
          *(a2 - 2) = v31;
          v15 = a2 - 2;
        }

        else
        {
          if ((v11 & 0x80000000) == 0)
          {
            return 1;
          }

          v12 = *(a1 + 6);
          v13 = a1[2];
          v14 = *(a2 - 2);
          a1[2] = *v9;
          *(a1 + 6) = v14;
          *v9 = v13;
          *(a2 - 2) = v12;
          v15 = a1 + 14;
          LODWORD(v12) = *(a1 + 14);
          *(a1 + 14) = *(a2 - 2);
          *(a2 - 2) = v12;
          if ((sub_29920B9DC(a1 + 4, a1) & 0x80) == 0)
          {
            return 1;
          }

          v16 = *(a1 + 2);
          v17 = *a1;
          *a1 = a1[2];
          *(a1 + 2) = *(a1 + 6);
          a1[2] = v17;
          *(a1 + 6) = v16;
          v18 = a1 + 6;
        }

        v40 = *v18;
        *v18 = *v15;
        *v15 = v40;
        return 1;
      case 4:
        sub_2992D06E8(a1, a1 + 4, a1 + 8, a2 - 2);
        break;
      case 5:
        sub_2992D0924(a1, a1 + 4, a1 + 8, a1 + 6, a2 - 2);
        break;
      default:
        goto LABEL_14;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 2;
    if ((sub_29920B9DC(a2 - 4, a1) & 0x80) != 0)
    {
      v6 = *(a1 + 2);
      v7 = *a1;
      v8 = *(a2 - 2);
      *a1 = *v5;
      *(a1 + 2) = v8;
      *v5 = v7;
      *(a2 - 2) = v6;
      LODWORD(v6) = *(a1 + 6);
      *(a1 + 6) = *(a2 - 2);
      *(a2 - 2) = v6;
    }

    return 1;
  }

LABEL_14:
  v19 = (a1 + 4);
  v20 = sub_29920B9DC(a1 + 4, a1);
  v21 = sub_29920B9DC(a1 + 8, a1 + 32);
  if (v20 < 0)
  {
    if (v21 < 0)
    {
      v27 = a1 + 6;
      v37 = *(a1 + 2);
      v38 = *a1;
      *a1 = *v19;
      *(a1 + 2) = *(a1 + 10);
    }

    else
    {
      v34 = *(a1 + 2);
      v35 = *a1;
      *a1 = a1[2];
      *(a1 + 2) = *(a1 + 6);
      a1[2] = v35;
      *(a1 + 6) = v34;
      v27 = a1 + 14;
      v36 = *(a1 + 6);
      *(a1 + 6) = *(a1 + 14);
      *(a1 + 14) = v36;
      if ((sub_29920B9DC(a1 + 8, a1 + 32) & 0x80) == 0)
      {
        goto LABEL_31;
      }

      v37 = *(a1 + 6);
      v38 = a1[2];
      a1[2] = *v19;
      *(a1 + 6) = *(a1 + 10);
    }

    *v19 = v38;
    *(a1 + 10) = v37;
    v24 = a1 + 22;
    goto LABEL_30;
  }

  if (v21 < 0)
  {
    v22 = *(a1 + 6);
    v23 = a1[2];
    a1[2] = *v19;
    *(a1 + 6) = *(a1 + 10);
    *v19 = v23;
    *(a1 + 10) = v22;
    v24 = a1 + 14;
    LODWORD(v22) = *(a1 + 14);
    *(a1 + 14) = *(a1 + 22);
    *(a1 + 22) = v22;
    if ((sub_29920B9DC(a1 + 4, a1) & 0x80) != 0)
    {
      v25 = *(a1 + 2);
      v26 = *a1;
      *a1 = a1[2];
      *(a1 + 2) = *(a1 + 6);
      a1[2] = v26;
      *(a1 + 6) = v25;
      v27 = a1 + 6;
LABEL_30:
      v41 = *v27;
      *v27 = *v24;
      *v24 = v41;
    }
  }

LABEL_31:
  v42 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v43 = 0;
  v44 = 0;
  while (1)
  {
    if ((sub_29920B9DC(v42, v19) & 0x80) != 0)
    {
      v50 = *v42;
      v51 = *(v42 + 2);
      *(v42 + 1) = 0;
      *(v42 + 2) = 0;
      *v42 = 0;
      v52 = *(v42 + 6);
      v45 = v43;
      while (1)
      {
        v46 = a1 + v45;
        if (*(a1 + v45 + 119) < 0)
        {
          operator delete(*(v46 + 96));
        }

        *(v46 + 96) = *(v46 + 64);
        *(v46 + 112) = *(v46 + 80);
        *(v46 + 87) = 0;
        *(v46 + 64) = 0;
        *(v46 + 120) = *(v46 + 88);
        if (v45 == -64)
        {
          break;
        }

        v47 = sub_29920B9DC(&v50, a1 + v45 + 32);
        v45 -= 32;
        if ((v47 & 0x80) == 0)
        {
          v48 = a1 + v45 + 96;
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      if (*(v48 + 23) < 0)
      {
        operator delete(*v48);
      }

      *v48 = v50;
      *(v48 + 16) = v51;
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      *(v48 + 24) = v52;
      if (++v44 == 8)
      {
        return v42 + 2 == a2;
      }
    }

    v19 = v42;
    v43 += 32;
    v42 += 2;
    if (v42 == a2)
    {
      return 1;
    }
  }
}

uint64_t **sub_2992D0EE4(uint64_t **a1, void *a2, void *a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_2992D0F94(a1, v4, *(v6 + 7), v6 + 7);
      v7 = v6[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
    }

    while (v8 != a3);
  }

  return a1;
}

uint64_t **sub_2992D0F94(uint64_t **result, uint64_t *a2, int a3, _DWORD *a4)
{
  v4 = (result + 1);
  if (result + 1 == a2 || (v5 = *(a2 + 7), v5 > a3))
  {
    v6 = *a2;
    if (*result == a2)
    {
      v8 = a2;
      goto LABEL_16;
    }

    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v12 = a2;
      do
      {
        v8 = v12[2];
        v13 = *v8 == v12;
        v12 = v8;
      }

      while (v13);
    }

    if (*(v8 + 7) < a3)
    {
LABEL_16:
      if (v6)
      {
        v14 = v8 + 1;
      }

      else
      {
        v14 = a2;
      }

      if (*v14)
      {
        return result;
      }

LABEL_39:
      operator new();
    }

    v15 = *v4;
    if (!*v4)
    {
      goto LABEL_39;
    }

    while (1)
    {
      while (1)
      {
        v16 = v15;
        v17 = *(v15 + 28);
        if (v17 <= a3)
        {
          break;
        }

        v15 = *v15;
        if (!*v16)
        {
          goto LABEL_39;
        }
      }

      if (v17 >= a3)
      {
        break;
      }

      v15 = *(v15 + 8);
      if (!v15)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    if (v5 >= a3)
    {
      return result;
    }

    v9 = a2[1];
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = *v9;
        v11 = v10;
      }

      while (v9);
    }

    else
    {
      v11 = a2;
      do
      {
        v18 = v11;
        v11 = v11[2];
      }

      while (*v11 != v18);
    }

    if (v11 == v4)
    {
      goto LABEL_39;
    }

    if (*(v11 + 7) > a3)
    {
      goto LABEL_39;
    }

    v19 = *v4;
    if (!*v4)
    {
      goto LABEL_39;
    }

    while (1)
    {
      while (1)
      {
        v20 = v19;
        v21 = *(v19 + 28);
        if (v21 <= a3)
        {
          break;
        }

        v19 = *v19;
        if (!*v20)
        {
          goto LABEL_39;
        }
      }

      if (v21 >= a3)
      {
        break;
      }

      v19 = *(v19 + 8);
      if (!v19)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

void sub_2992D1178(uint64_t a1)
{
  if ((*(a1 + 20) & 1) == 0)
  {
    __assert_rtn("init", "BurstTrieAdapter.h", 280, "m_mutable");
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_2992023B0(v2);
  }

  sub_299202338(*(a1 + 16), 0);
  *(a1 + 8) = v3;
  if (!v3)
  {
    __assert_rtn("init", "BurstTrieAdapter.h", 285, "m_trie");
  }
}

BOOL sub_2992D1200(uint64_t a1, const void *a2, uint64_t a3, _DWORD *a4)
{
  result = 0;
  if (a3)
  {
    if ((a3 & 1) == 0)
    {
      return sub_299203228(*(a1 + 8), a2, a3, a4, 0) != 0;
    }
  }

  return result;
}

void sub_2992D123C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 && a3 && (a3 & 1) == 0)
  {
    v10 = 0;
    v7 = sub_299203554(*(a1 + 8), 0, 0);
    v8 = 0;
    v9 = 0;
    do
    {
      if (!sub_29920413C(v7, (a2 + v8), 2))
      {
        break;
      }

      if (sub_299204DEC(v7, &v9))
      {
        sub_2992A5A7C(a4, &v9, a2, v8 + 2);
        if (v10)
        {
          break;
        }
      }

      v8 = v8 + 2;
    }

    while (v8 < a3);
    sub_299203738(v7);
  }
}

uint64_t sub_2992D1308(uint64_t result, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v6[4] = *MEMORY[0x29EDCA608];
  if (a3)
  {
    if ((a3 & 1) == 0)
    {
      v5 = *(result + 8);
      v6[0] = &unk_2A1F6D730;
      v6[1] = a4;
      v6[3] = v6;
      sub_299202440(v5, a2, a3, 0, v6, (2 * a5));
      return sub_299207F34(v6);
    }
  }

  return result;
}

void sub_2992D13A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299207F34(va);
  _Unwind_Resume(a1);
}

void sub_2992D1448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992A5BA0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992D154C(uint64_t a1, _DWORD **a2, _DWORD *a3)
{
  result = (*(*a1 + 32))(a1);
  if (result)
  {
    return sub_299204DEC(*a2, a3) != 0;
  }

  return result;
}

uint64_t sub_2992D15AC(uint64_t a1, void **a2, uint64_t a3, int a4)
{
  v6[4] = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v6[0] = &unk_2A1F6D7B0;
  v6[1] = a3;
  v6[3] = v6;
  sub_2992035D0(v4, 0, v6, (2 * a4));
  return sub_299208CC8(v6);
}

void sub_2992D163C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299208CC8(va);
  _Unwind_Resume(a1);
}

void sub_2992D1654(uint64_t a1)
{
  sub_2992D1A0C(a1);

  JUMPOUT(0x29C29BFB0);
}

BOOL sub_2992D168C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if ((*(a1 + 20) & 1) == 0)
  {
    __assert_rtn("addEntry", "BurstTrieAdapter.h", 117, "m_mutable");
  }

  if (!a2)
  {
    return 0;
  }

  result = 0;
  if (a3)
  {
    if ((a3 & 1) == 0)
    {
      return sub_299202020(*(a1 + 8), a2, a3, *a4);
    }
  }

  return result;
}

BOOL sub_2992D16F8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((*(a1 + 20) & 1) == 0)
  {
    __assert_rtn("removeEntry", "BurstTrieAdapter.h", 126, "m_mutable");
  }

  return sub_299202840(*(a1 + 8), a2, a3) != 0;
}

void sub_2992D1744(uint64_t a1)
{
  if ((*(a1 + 20) & 1) == 0)
  {
    __assert_rtn("clear", "BurstTrieAdapter.h", 133, "m_mutable");
  }

  sub_2992D1178(a1);
}

uint64_t sub_2992D17F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F6D730;
  a2[1] = v2;
  return result;
}

uint64_t sub_2992D1824(uint64_t result, uint64_t a2, uint64_t *a3, _BYTE **a4)
{
  if ((**a4 & 1) == 0)
  {
    v4 = *a3;
    v5 = *(result + 8);
    v8 = sub_2992021F8(*a3);
    v6 = sub_2992021DC(v4);
    v7 = sub_2992021EC(v4);
    return sub_2992A5A7C(v5, &v8, v6, v7);
  }

  return result;
}

uint64_t sub_2992D189C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6D790))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992D1958(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F6D7B0;
  a2[1] = v2;
  return result;
}

uint64_t sub_2992D1984(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int *a4, int *a5)
{
  v5 = *a3;
  v6 = *a4;
  v7 = *(a1 + 8);
  v9 = *a5;
  return sub_2992A5A7C(v7, &v9, v5, v6);
}

uint64_t sub_2992D19C0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6D810))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992D1A0C(uint64_t a1)
{
  *a1 = &unk_2A1F6D678;
  sub_2992023B0(*(a1 + 8));
  return a1;
}

uint64_t sub_2992D1AF8(void *a1)
{
  *a1 = &unk_2A1F6D920;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  return sub_2992D1A0C(a1);
}

void sub_2992D1B78(void *a1)
{
  *a1 = &unk_2A1F6D920;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  sub_2992D1A0C(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2992D1CAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4[4] = *MEMORY[0x29EDCA608];
  v4[0] = &unk_2A1F6DBD8;
  v4[1] = a3;
  v4[3] = v4;
  sub_2992CEF14(a1, a2, 0, v4, a4);
}

void sub_2992D1D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992A7808(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992D1D5C(void *a1)
{
  *a1 = &unk_2A1F6D920;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  return sub_2992D1A0C(a1);
}

void sub_2992D1DDC(void *a1)
{
  *a1 = &unk_2A1F6D920;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 72))(v2);
  }

  sub_2992D1A0C(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2992D1E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = *MEMORY[0x29EDCA608];
  v4[0] = &unk_2A1F6DB58;
  v4[1] = a3;
  v4[3] = v4;
  sub_2992D1F0C(a1, a2, v4, a4, 0);
}

void sub_2992D1EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992A7808(va);
  _Unwind_Resume(a1);
}

void sub_2992D1F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = off_2A1A9A0E8;
  if ((*off_2A1A9A0E8(&off_2A1A9A0E8) & 1) == 0)
  {
    v7 = off_2A1A9A0D0(&off_2A1A9A0D0);
    sub_2992A6BEC(v7, 256);
    _tlv_atexit(sub_2992A65C8, v7);
    *v5(&off_2A1A9A0E8) = 1;
  }

  v6 = off_2A1A9A118;
  if ((*off_2A1A9A118(&off_2A1A9A118) & 1) == 0)
  {
    v8 = off_2A1A9A100(&off_2A1A9A100);
    sub_2992A6C9C(v8, 0x100uLL);
    _tlv_atexit(sub_2992A65FC, v8);
    *v6(&off_2A1A9A118) = 1;
  }

  v9 = 0;
  operator new();
}

void sub_2992D2154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void **);
  v20 = va_arg(va1, void);
  sub_2992A5BA0(va);
  sub_2992D2E9C(va1);
  _Unwind_Resume(a1);
}

uint64_t *sub_2992D2178(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7, _BYTE *a8, float a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v40 = result;
  v48 = *MEMORY[0x29EDCA608];
  v46 = a7;
  if ((*a8 & 1) == 0)
  {
    if (((*(*result[3] + 32))(result[3], a4) & 1) == 0)
    {
      __assert_rtn("ambiguousDfsTraverse", "AmbiguousTrieAdapter.hpp", 141, "m_trie->isValid(curCursor)");
    }

    if (a5 && (*(*a2 + 24))(a2) != a12)
    {
      goto LABEL_33;
    }

    LODWORD(v45) = 0;
    if ((a7 & 1) != 0 || (result = (*(*v40[3] + 48))(v40[3], a4, &v45), result))
    {
      result = sub_2992D272C(*(a3 + 24), a4, a10, 2 * a11, a13, a14, a12, a8, a9);
    }

    if ((*a8 & 1) == 0)
    {
LABEL_33:
      result = (*(*a2 + 24))(a2);
      if (result > a12)
      {
        result = (*(*a2 + 16))(a2, a12);
        v20 = result;
        v45 = 0;
        if (result)
        {
          v21 = 0;
          v35 = a17;
          v22 = a9;
          do
          {
            result = (*(*a2 + 72))(a2, a15, a16, a12, v21);
            if (result)
            {
              v44 = (*(*a2 + 32))(a2, a12, v45) + v22;
              v43 = (a12 + (*(*a2 + 40))(a2, a12, v45));
              result = (*(*a2 + 48))(a2, a12, v45);
              v24 = result;
              v25 = v23;
              v26 = v43;
              if (v43 != a12 || (v35 & 1) == 0)
              {
                if (v23)
                {
                  (*(*v40[3] + 40))(&v42);
                  if ((*(*v40[3] + 32))(v40[3], v42))
                  {
                    v27 = a11;
                    v28 = 2 * a11;
                    v29 = v25;
                    do
                    {
                      v30 = *v24;
                      v24 = (v24 + 2);
                      *(a10 + v28) = v30;
                      v28 += 2;
                      --v29;
                    }

                    while (v29);
                    v31 = v45;
                    if (a13)
                    {
                      *(a13 + 8 * a14) = v45;
                      v27 = a11;
                    }

                    v32 = v44;
                    sub_2992D2178(v40, a2, a3, v42, a5, a6, v46, a8, v32, a10, v27 + v25, v43, a13, a14 + 1, a12, v31, v26 == a12);
                    if (*a8)
                    {
                      return sub_2992A5BA0(&v42);
                    }
                  }

                  result = sub_2992A5BA0(&v42);
                  if (a6)
                  {
                    v33 = v43;
                    result = (*(*a2 + 24))(a2);
                    if (v33 == result)
                    {
                      result = (*(*a2 + 56))(a2, a12, v45);
                      if (result)
                      {
                        v47 = 0;
                        operator new();
                      }
                    }
                  }
                }

                else
                {
                  v34 = v44;
                  result = sub_2992D2178(v40, a2, a3, a4, a5, a6, v46, a8, v34, a10, a11, v43, a13, a14, a15, a16, v43 == a12);
                }
              }
            }

            v21 = v45 + 1;
            v45 = v21;
          }

          while (v21 < v20);
        }
      }
    }
  }

  return result;
}

void sub_2992D2700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_2992A7094(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992D272C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  v15 = a9;
  v13 = a4;
  v14 = a3;
  v11 = a6;
  v12 = a5;
  v10 = a7;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, a2, &v15, &v14, &v13, &v12, &v11, &v10, a8);
}

__n128 sub_2992D283C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6D9C8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

void ***sub_2992D2894(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a1 + 8);
  (*(**(v7 + 24) + 40))(&v15);
  if (!(*(**(v7 + 24) + 32))(*(v7 + 24), v15))
  {
    return sub_2992A5BA0(&v15);
  }

  if (v6)
  {
    v8 = (**(a1 + 24) + 2 * **(a1 + 32));
    v9 = v6;
    do
    {
      v10 = *v5++;
      *v8++ = v10;
      --v9;
    }

    while (v9);
  }

  v11 = **(a1 + 40);
  if (v11)
  {
    *(v11 + 8 * **(a1 + 48)) = **(a1 + 56);
  }

  v14 = 0;
  if ((**(a1 + 64) & 1) == 0)
  {
    if (!(*(**(v7 + 24) + 48))(*(v7 + 24), v15, &v14))
    {
      goto LABEL_11;
    }

    v11 = **(a1 + 40);
  }

  v12 = **(a1 + 80);
  sub_2992D272C(*(*(a1 + 72) + 24), v15, **(a1 + 24), 2 * (**(a1 + 32) + v6), v11, **(a1 + 48) + 1, **(a1 + 88), *(a1 + 96), v12);
LABEL_11:
  if (**(a1 + 96) == 1)
  {
    *a3 = 1;
  }

  return sub_2992A5BA0(&v15);
}

void sub_2992D2A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992A5BA0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992D2A40(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6DA28))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992D2B0C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6DA48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void sub_2992D2C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29922D43C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992D2C94(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6DB38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992D2D74(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6DAC8;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_2992D2DC4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = *v8;
  v11[0] = *a2;
  v11[1] = v9;
  result = sub_2992A7524(v7, v11, **(a1 + 24), **(a1 + 32), **(a1 + 40), **(a1 + 48), **(a1 + 56) - **(a1 + 64));
  **(a1 + 72) = (**(a1 + 72) | *a5) & 1;
  return result;
}

uint64_t sub_2992D2E50(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6DB28))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992D2E9C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2992D2F8C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F6DB58;
  a2[1] = v2;
  return result;
}

uint64_t sub_2992D2FD0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6DBB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992D308C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F6DBD8;
  a2[1] = v2;
  return result;
}

uint64_t sub_2992D30D0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6DC38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t **sub_2992D311C(uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 4 * a3;
    do
    {
      sub_2992D0F94(a1, v4, *a2, a2);
      ++a2;
      v6 -= 4;
    }

    while (v6);
  }

  return a1;
}

uint64_t *sub_2992D319C(uint64_t *result, int a2, _DWORD *a3)
{
  v3 = result[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 28);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

__n128 sub_2992D32D0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6DC58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2992D3300(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v6 = *a2;
  v7 = *(*(a1 + 8) + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 8) + 24) - v7) >> 3) <= v6)
  {
    v17 = sub_2993652F8(6u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18[0] = 0;
      _os_log_error_impl(&dword_29918C000, v17, OS_LOG_TYPE_ERROR, "Data in learning dictionary trie is corrupted.", v18, 2u);
    }
  }

  else
  {
    v8 = (v7 + 24 * v6);
    v11 = *v8;
    v9 = v8 + 1;
    v10 = v11;
    if (v11 != v9)
    {
      do
      {
        (*(**(a1 + 16) + 16))();
        if (*a6)
        {
          break;
        }

        v14 = v10[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v10[2];
            v16 = *v15 == v10;
            v10 = v15;
          }

          while (!v16);
        }

        v10 = v15;
      }

      while (v15 != v9);
    }
  }
}

uint64_t sub_2992D3414(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6DCB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992D34D4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6DCD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2992D3504(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if ((*a5 & 1) == 0)
  {
    v5 = result;
    v6 = (*(*(result + 8) + 16) + 24 * *a2);
    v9 = *v6;
    v7 = v6 + 1;
    v8 = v9;
    if (v9 != v7)
    {
      do
      {
        result = (*(**(v5 + 16) + 16))();
        if (*a5)
        {
          break;
        }

        v11 = v8[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v8[2];
            v13 = *v12 == v8;
            v8 = v12;
          }

          while (!v13);
        }

        v8 = v12;
      }

      while (v12 != v7);
    }
  }

  return result;
}

uint64_t sub_2992D35B8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6DD38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992D3678(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6DD58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2992D36A8(uint64_t a1, uint64_t a2, const void **a3, size_t *a4)
{
  memcpy(*(a1 + 16), *a3, *a4);
  v5 = *(**(a1 + 8) + 16);

  return v5();
}

uint64_t sub_2992D3718(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6DDB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992D37D8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6DDD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2992D3808(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, _BYTE *a6)
{
  v6 = *a2;
  v7 = *(*(a1 + 8) + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 8) + 24) - v7) >> 3) <= v6)
  {
    v21 = sub_2993652F8(6u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22[0] = 0;
      _os_log_error_impl(&dword_29918C000, v21, OS_LOG_TYPE_ERROR, "Data in learning dictionary trie is corrupted.", v22, 2u);
    }
  }

  else
  {
    v8 = (v7 + 24 * v6);
    v11 = *v8;
    v9 = v8 + 1;
    v10 = v11;
    if (v11 != v9)
    {
      v15 = *a3;
      v16 = *a4;
      v17 = *a5;
      do
      {
        sub_2992D3990(*(*(a1 + 16) + 24), *(v10 + 7), a2, v15, v16, v17);
        if (*a6)
        {
          break;
        }

        v18 = v10[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v10[2];
            v20 = *v19 == v10;
            v10 = v19;
          }

          while (!v20);
        }

        v10 = v19;
      }

      while (v19 != v9);
    }
  }
}

uint64_t sub_2992D3944(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6DE38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992D3990(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v8 = a5;
  v9 = a4;
  v7 = a6;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, &v10, a3, &v9, &v8, &v7);
}

__n128 sub_2992D3A68(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6DE58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2992D3A98(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, _BYTE *a8)
{
  v8 = *a2;
  v9 = *(*(a1 + 8) + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 8) + 24) - v9) >> 3) <= v8)
  {
    v25 = sub_2993652F8(6u);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_29918C000, v25, OS_LOG_TYPE_ERROR, "Data in learning dictionary trie is corrupted.", buf, 2u);
    }
  }

  else
  {
    v10 = (v9 + 24 * v8);
    v13 = *v10;
    v11 = v10 + 1;
    v12 = v13;
    if (v13 != v11)
    {
      v17 = *a3;
      v18 = *a4;
      v19 = *a5;
      v20 = *a6;
      v21 = *a7;
      do
      {
        sub_2992D3C38(*(*(a1 + 16) + 24), *(v12 + 7), a2, v17, v18, v19, v20, v21, a8);
        if (*a8)
        {
          break;
        }

        v22 = v12[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v12[2];
            v24 = *v23 == v12;
            v12 = v23;
          }

          while (!v24);
        }

        v12 = v23;
      }

      while (v23 != v11);
    }
  }
}

uint64_t sub_2992D3BEC(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6DEB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992D3C38(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a2;
  v13 = a5;
  v14 = a4;
  v11 = a7;
  v12 = a6;
  v10 = a8;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, &v15, a3, &v14, &v13, &v12, &v11, &v10, a9);
}

__n128 sub_2992D3D24(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6DED8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2992D3D54(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, _BYTE *a6)
{
  v6 = *a2;
  v7 = *(*(a1 + 8) + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 8) + 24) - v7) >> 3) <= v6)
  {
    v21 = sub_2993652F8(6u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22[0] = 0;
      _os_log_error_impl(&dword_29918C000, v21, OS_LOG_TYPE_ERROR, "Data in learning dictionary trie is corrupted.", v22, 2u);
    }
  }

  else
  {
    v8 = (v7 + 24 * v6);
    v11 = *v8;
    v9 = v8 + 1;
    v10 = v11;
    if (v11 != v9)
    {
      v15 = *a3;
      v16 = *a4;
      v17 = *a5;
      do
      {
        sub_2992D3990(*(*(a1 + 16) + 24), *(v10 + 7), a2, v15, v16, v17);
        if (*a6)
        {
          break;
        }

        v18 = v10[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v10[2];
            v20 = *v19 == v10;
            v10 = v19;
          }

          while (!v20);
        }

        v10 = v19;
      }

      while (v19 != v9);
    }
  }
}

uint64_t sub_2992D3E90(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6DF38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992D3F58(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6DF58;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992D3F90(uint64_t a1, uint64_t a2, int *a3, char **a4, void **a5, void **a6, void **a7, void **a8, uint64_t a9)
{
  v16 = *MEMORY[0x29EDCA608];
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  v12 = *a7;
  v13 = *a8;
  v15 = *a3;
  __p[5] = v11;
  __p[6] = v10;
  __p[3] = v13;
  __p[4] = v12;
  if ((*(**(*(a1 + 8) + 24) + 32))(*(*(a1 + 8) + 24)))
  {
    memset(__p, 0, 24);
    sub_2992A7DFC(__p, v9, v10 + v9, v10);
    operator new();
  }

  __assert_rtn("operator()", "AmbiguousTrieAdapter.hpp", 44, "m_trie->isValid(cursor)");
}

void sub_2992D4144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_29922D43C(va);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992D4178(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E038))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992D4258(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6DFC8;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_2992D42A8(uint64_t a1, _DWORD *a2, uint64_t *a3, uint64_t *a4, _BYTE *a5)
{
  v8 = *a3;
  v9 = *a4;
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  v12 = *v11 + *a4;
  v13 = *(v10 + 8) - *v10;
  if (v12 > v13)
  {
    sub_29920BD1C(v10, v12 - v13);
  }

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      *(**(a1 + 16) + **(a1 + 8) + i) = *(v8 + i);
    }
  }

  v15 = *(a1 + 40);
  v16 = **(a1 + 32);
  v18[0] = *a2;
  v18[1] = v16;
  result = sub_2992A7524(*(a1 + 24), v18, **(a1 + 16), v12, *v15, **(a1 + 48), **(a1 + 56) - **(a1 + 64));
  **(a1 + 72) = (**(a1 + 72) | *a5) & 1;
  return result;
}

uint64_t sub_2992D439C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E028))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992D445C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6E058;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_2992D448C(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, _BYTE *a8)
{
  v8 = *a2;
  v9 = *(*(a1 + 8) + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 8) + 24) - v9) >> 3) <= v8)
  {
    v25 = sub_2993652F8(6u);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_29918C000, v25, OS_LOG_TYPE_ERROR, "Data in learning dictionary trie is corrupted.", buf, 2u);
    }
  }

  else
  {
    v10 = (v9 + 24 * v8);
    v13 = *v10;
    v11 = v10 + 1;
    v12 = v13;
    if (v13 != v11)
    {
      v17 = *a3;
      v18 = *a4;
      v19 = *a5;
      v20 = *a6;
      v21 = *a7;
      do
      {
        sub_2992D3C38(*(*(a1 + 16) + 24), *(v12 + 7), a2, v17, v18, v19, v20, v21, a8);
        if (*a8)
        {
          break;
        }

        v22 = v12[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v12[2];
            v24 = *v23 == v12;
            v12 = v23;
          }

          while (!v24);
        }

        v12 = v23;
      }

      while (v23 != v11);
    }
  }
}

uint64_t sub_2992D45E0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E0B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992D462C(int a1, __CFDictionary *a2, void *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  result = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F72C30, 0);
  if (result)
  {
    v5 = result;
    result = sub_299377154(result);
    if (result)
    {
      if (((*(*v5 + 104))(v5) & 2) != 0)
      {
        v6 = (*(*v5 + 24))(v5);
        Length = CFStringGetLength(v6);
        if (Length == 1)
        {
          v8 = off_29EF10548;
LABEL_10:
          CFDictionaryAddValue(a2, *v8, *MEMORY[0x29EDB8F00]);
          goto LABEL_11;
        }

        if (Length >= 2)
        {
          v8 = off_29EF10550;
          goto LABEL_10;
        }
      }

LABEL_11:
      if (((*(*v5 + 104))(v5) & 0x8080) == 0)
      {
        CFDictionaryAddValue(a2, @"shapeBasedPinyinConvertedCandidateAccepted", *MEMORY[0x29EDB8F00]);
      }

      return 1;
    }
  }

  return result;
}

id **sub_2992D483C(id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2992D4A20(v2);
    MEMORY[0x29C29BFB0](v3, 0x80C40803F642BLL);
  }

  return a1;
}

id **sub_2992D4884(id **result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = result;
    result = *result;
    if (result)
    {
      if (objc_msgSend_containsObject_(result, a2, a2, a4))
      {
        objc_msgSend_removeObject_(*v4, v6, a2, v8);
      }

      if (objc_msgSend_count(*v4, v6, v7, v8) == 500)
      {
        objc_msgSend_removeObjectAtIndex_(*v4, v9, 0, v10);
      }

      objc_msgSend_addObject_(*v4, v9, a2, v10);
      v14 = objc_msgSend_array(*v4, v11, v12, v13);
      v15 = v4[1];

      return MEMORY[0x2A1C70FE8](v14, sel_writeToFile_atomically_, v15, 1);
    }
  }

  return result;
}

uint64_t *sub_2992D4920(uint64_t *a1, const char *a2, void *a3, uint64_t a4)
{
  v28[2] = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  if (a3)
  {
    v5 = a2;
    v6 = objc_msgSend_path(a3, a2, a3, a4);
    v8 = @"LearningSet_zh_Hant.plist";
    if (v5 == 1)
    {
      v8 = @"LearningSet_zh_Hans.plist";
    }

    v28[0] = v6;
    v28[1] = v8;
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v7, v28, 2);
    v12 = objc_msgSend_componentsJoinedByString_(v9, v10, @"/", v11);
    a1[1] = v12;
    v15 = objc_msgSend_arrayWithContentsOfFile_(MEMORY[0x29EDB8D80], v13, v12, v14);
    if (objc_msgSend_count(v15, v16, v17, v18) >= 0x1F5)
    {
      v22 = objc_msgSend_count(v15, v19, v20, v21);
      v15 = objc_msgSend_subarrayWithRange_(v15, v23, v22 - 500, 500);
    }

    v24 = objc_alloc(MEMORY[0x29EDB8E10]);
    *a1 = objc_msgSend_initWithArray_(v24, v25, v15, v26);
  }

  return a1;
}

uint64_t sub_2992D4A58(uint64_t a1, std::string **a2, char *__s, char *a4)
{
  *(a1 + 48) = 0u;
  v7 = (a1 + 48);
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (a1 != a2)
  {
    sub_2992C9D58(a1, *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  sub_299248D7C((a1 + 24), __s);
  sub_299248D7C(v7, a4);
  return a1;
}

void sub_2992D4AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 71) < 0)
  {
    operator delete(*v11);
  }

  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  a10 = v10;
  sub_29921EB1C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_2992D4B1C(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = a1;
  sub_29921EB1C(&v3);
  return a1;
}

double sub_2992D4B74@<D0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a2 <= 5)
  {
    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        sub_2991C6CA8(&__dst, "SELECT Identifier FROM Words WHERE Identifier = ? ");
        v7 = *a1;
        v6 = a1[1];
        if (*a1 != v6)
        {
          do
          {
            if ((*(v7 + 28) & 1) == 0 && (*(v7 + 29) & 1) == 0)
            {
              std::string::append(&__dst, " AND ", 5uLL);
              v8 = *(v7 + 23);
              if (v8 >= 0)
              {
                v9 = v7;
              }

              else
              {
                v9 = *v7;
              }

              if (v8 >= 0)
              {
                v10 = *(v7 + 23);
              }

              else
              {
                v10 = *(v7 + 8);
              }

              std::string::append(&__dst, v9, v10);
              std::string::append(&__dst, " = ?", 4uLL);
              v6 = a1[1];
            }

            v7 += 32;
          }

          while (v7 != v6);
        }
      }

      else
      {
        if (a2 != 2)
        {
          return result;
        }

        sub_2992D5040(&__dst, a1, (a1 + 3));
      }
    }

    else if (a2 == 3)
    {
      sub_2992D5040(&__dst, a1, (a1 + 6));
    }

    else
    {
      if (a2 != 4)
      {
        v5 = qword_2A1460A98;
        if (atomic_load_explicit(&qword_2A14609F8, memory_order_acquire))
        {
          goto LABEL_51;
        }

        v16 = &qword_2A14609F8;
        if (!__cxa_guard_acquire(&qword_2A14609F8))
        {
          goto LABEL_51;
        }

        v5 = qword_2A1460A98;
        sub_2991C6CA8(qword_2A1460A98, "UPDATE Words SET Seed = ? WHERE Identifier = ?");
LABEL_61:
        __cxa_atexit(MEMORY[0x29EDC9388], v5, &dword_29918C000);
        __cxa_guard_release(v16);
LABEL_51:
        std::string::operator=(a3, v5);
        return result;
      }

      sub_2991C6CA8(&__dst, "SELECT Seed");
      for (i = *a1; i != a1[1]; i += 32)
      {
        std::string::append(&__dst, ", ", 2uLL);
        v12 = *(i + 23);
        if (v12 >= 0)
        {
          v13 = i;
        }

        else
        {
          v13 = *i;
        }

        if (v12 >= 0)
        {
          v14 = *(i + 23);
        }

        else
        {
          v14 = *(i + 8);
        }

        std::string::append(&__dst, v13, v14);
      }

      std::string::append(&__dst, " FROM Words WHERE Identifier = ?", 0x20uLL);
    }

    goto LABEL_55;
  }

  if (a2 <= 7)
  {
    if (a2 == 6)
    {
      v5 = &qword_2A1460A98[6];
      if (atomic_load_explicit(&qword_2A1460A08, memory_order_acquire))
      {
        goto LABEL_51;
      }

      v16 = &qword_2A1460A08;
      if (!__cxa_guard_acquire(&qword_2A1460A08))
      {
        goto LABEL_51;
      }

      v5 = &qword_2A1460A98[6];
      sub_2991C6CA8(&qword_2A1460A98[6], "UPDATE Assist SET LastSeedValue = ? WHERE Identifier = 1");
    }

    else
    {
      v5 = &qword_2A1460A98[9];
      if (atomic_load_explicit(&qword_2A1460A10, memory_order_acquire))
      {
        goto LABEL_51;
      }

      v16 = &qword_2A1460A10;
      if (!__cxa_guard_acquire(&qword_2A1460A10))
      {
        goto LABEL_51;
      }

      v5 = &qword_2A1460A98[9];
      sub_2991C6CA8(&qword_2A1460A98[9], "UPDATE Assist SET LastUpdateTime = ? WHERE Identifier = 1");
    }

    goto LABEL_61;
  }

  switch(a2)
  {
    case 8:
      v5 = &qword_2A1460A98[3];
      if (atomic_load_explicit(&qword_2A1460A00, memory_order_acquire))
      {
        goto LABEL_51;
      }

      v16 = &qword_2A1460A00;
      if (!__cxa_guard_acquire(&qword_2A1460A00))
      {
        goto LABEL_51;
      }

      v5 = &qword_2A1460A98[3];
      sub_2991C6CA8(&qword_2A1460A98[3], "UPDATE Words SET Identifier = ? WHERE Identifier = ?");
      goto LABEL_61;
    case 9:
      v5 = &qword_2A1460A98[12];
      if (atomic_load_explicit(&qword_2A1460A18, memory_order_acquire))
      {
        goto LABEL_51;
      }

      v16 = &qword_2A1460A18;
      if (!__cxa_guard_acquire(&qword_2A1460A18))
      {
        goto LABEL_51;
      }

      v5 = &qword_2A1460A98[12];
      sub_2991C6CA8(&qword_2A1460A98[12], "UPDATE Assist SET Version = ? WHERE Identifier = 1");
      goto LABEL_61;
    case 10:
      if ((atomic_load_explicit(&qword_2A1460A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460A20))
      {
        sub_2991C6CA8(byte_2A1460B10, "SELECT COUNT(*) FROM Words");
        __cxa_atexit(MEMORY[0x29EDC9388], byte_2A1460B10, &dword_29918C000);
        __cxa_guard_release(&qword_2A1460A20);
      }

      if (byte_2A1460B10[23] < 0)
      {
        sub_2991A110C(&__dst, *byte_2A1460B10, *&byte_2A1460B10[8]);
      }

      else
      {
        __dst = *byte_2A1460B10;
      }

      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

LABEL_55:
      result = *&__dst.__r_.__value_.__l.__data_;
      *a3 = __dst;
      break;
  }

  return result;
}

void sub_2992D4F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  __cxa_guard_abort(&qword_2A1460A18);
  if (*(v16 + 23) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(a1);
}

std::string *sub_2992D5040(std::string *a1, uint64_t *a2, uint64_t a3)
{
  sub_2991C6CA8(&v19, "INSERT INTO ");
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = std::string::append(&v19, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v20, " (Seed", 6uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  a1->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&a1->__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  for (i = *a2; i != a2[1]; i += 32)
  {
    std::string::append(a1, ", ", 2uLL);
    v14 = *(i + 23);
    if (v14 >= 0)
    {
      v15 = i;
    }

    else
    {
      v15 = *i;
    }

    if (v14 >= 0)
    {
      v16 = *(i + 23);
    }

    else
    {
      v16 = *(i + 8);
    }

    std::string::append(a1, v15, v16);
  }

  std::string::append(a1, ") VALUES (?", 0xBuLL);
  if (a2[1] != *a2)
  {
    v17 = 0;
    do
    {
      std::string::append(a1, ",?", 2uLL);
      ++v17;
    }

    while (v17 < (a2[1] - *a2) >> 5);
  }

  return std::string::append(a1, ")", 1uLL);
}

void sub_2992D51C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2992D5214()
{
  if ((atomic_load_explicit(&qword_2A14609E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14609E0))
  {
    sub_2991C6CA8(qword_2A1460A50, "DELETE FROM Words WHERE Identifier = ?");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1460A50, &dword_29918C000);
    __cxa_guard_release(&qword_2A14609E0);
  }

  return qword_2A1460A50;
}

void *sub_2992D52B4()
{
  if ((atomic_load_explicit(&qword_2A14609E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14609E8))
  {
    sub_2991C6CA8(qword_2A1460A68, "SELECT Identifier FROM Words ORDER BY Seed DESC");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1460A68, &dword_29918C000);
    __cxa_guard_release(&qword_2A14609E8);
  }

  return qword_2A1460A68;
}

void *sub_2992D5354()
{
  if ((atomic_load_explicit(&qword_2A14609F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14609F0))
  {
    sub_2991C6CA8(qword_2A1460A80, "SELECT Identifier FROM Words ORDER BY Identifier ASC");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A1460A80, &dword_29918C000);
    __cxa_guard_release(&qword_2A14609F0);
  }

  return qword_2A1460A80;
}

std::string *sub_2992D53F4@<X0>(const char *a1@<X1>, std::string *a2@<X8>)
{
  sub_2991C6CA8(a2, "SELECT Identifier, ");
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v4 = strlen(a1);
  std::string::append(a2, a1, v4);
  return std::string::append(a2, " FROM Words", 0xBuLL);
}

void sub_2992D5464(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2992D5480@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, std::string *a3@<X8>)
{
  sub_2991C6CA8(&v22, "CREATE TABLE ");
  sub_2991C6CA8(__p, a2);
  if ((v21 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v7 = v21;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v22, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v23, " (Identifier INTEGER PRIMARY KEY, Seed INTEGER", 0x2EuLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  a3->__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&a3->__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v12 = *a1;
  if (*a1 != a1[1])
  {
    while (1)
    {
      std::string::append(a3, ", ", 2uLL);
      v13 = *(v12 + 23);
      v14 = v13 >= 0 ? v12 : *v12;
      v15 = v13 >= 0 ? *(v12 + 23) : *(v12 + 8);
      std::string::append(a3, v14, v15);
      std::string::append(a3, " ", 1uLL);
      v16 = *(v12 + 24);
      if (v16 == 1)
      {
        break;
      }

      if (!v16)
      {
        v17 = "BLOB";
        v18 = 4;
LABEL_24:
        std::string::append(a3, v17, v18);
      }

      v12 += 32;
      if (v12 == a1[1])
      {
        return std::string::append(a3, ")", 1uLL);
      }
    }

    v17 = "INTEGER";
    v18 = 7;
    goto LABEL_24;
  }

  return std::string::append(a3, ")", 1uLL);
}

void sub_2992D5638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 + 23) < 0)
  {
    operator delete(*v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992D569C(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1460A28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460A28))
  {
    sub_2991C6CA8(&xmmword_2A1460B28, "CREATE TABLE Assist (Identifier INTEGER PRIMARY KEY, LastSeedValue INTEGER, LastUpdateTime REAL, Version INTEGER DEFAULT 0)");
    __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A1460B28, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460A28);
  }

  if (byte_2A1460B3F < 0)
  {
    v2 = xmmword_2A1460B28;

    sub_2991A110C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_2A1460B28;
    *(a1 + 16) = unk_2A1460B38;
  }
}

void sub_2992D5788(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1460A30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460A30))
  {
    sub_2991C6CA8(&xmmword_2A1460B40, "INSERT INTO Assist (LastSeedValue, LastUpdateTime, Version) VALUES (0, 0, 0)");
    __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A1460B40, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460A30);
  }

  if (byte_2A1460B57 < 0)
  {
    v2 = xmmword_2A1460B40;

    sub_2991A110C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_2A1460B40;
    *(a1 + 16) = unk_2A1460B50;
  }
}

void sub_2992D5874(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(qword_2A1460A38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_2A1460A38))
  {
    sub_2991C6CA8(&xmmword_2A1460B58, "SELECT LastSeedValue FROM Assist WHERE Identifier = 1");
    __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A1460B58, &dword_29918C000);
    __cxa_guard_release(qword_2A1460A38);
  }

  if (byte_2A1460B6F < 0)
  {
    v2 = xmmword_2A1460B58;

    sub_2991A110C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_2A1460B58;
    *(a1 + 16) = unk_2A1460B68;
  }
}

void sub_2992D5960(std::string *a1@<X8>)
{
  sub_2991C6CA8(&v11, "SELECT ");
  v2 = strlen(off_2A145F3B0[0]);
  v3 = std::string::append(&v11, off_2A145F3B0[0], v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v12, ", ", 2uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = strlen(off_2A145F3B8);
  v8 = std::string::append(&v13, off_2A145F3B8, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v14, " FROM Words", 0xBuLL);
  *a1 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_2992D5AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992D5B0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  result = sub_2991C6CA8(a3, "SELECT Identifier FROM Words WHERE ");
  v7 = *a1;
  v8 = a1[1];
  if (*a1 != v8)
  {
    v9 = 1;
    do
    {
      result = sub_29920B95C(a2, v7);
      if (a2 + 8 != result)
      {
        if ((v9 & 1) == 0)
        {
          std::string::append(a3, " AND ", 5uLL);
        }

        v10 = *(v7 + 23);
        if (v10 >= 0)
        {
          v11 = v7;
        }

        else
        {
          v11 = *v7;
        }

        if (v10 >= 0)
        {
          v12 = *(v7 + 23);
        }

        else
        {
          v12 = *(v7 + 8);
        }

        std::string::append(a3, v11, v12);
        result = std::string::append(a3, " = ?", 4uLL);
        v9 = 0;
      }

      v7 += 32;
    }

    while (v7 != v8);
  }

  return result;
}

void sub_2992D5BE8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2992D5C04@<X0>(uint64_t *a1@<X1>, std::string *a2@<X8>)
{
  sub_2991C6CA8(a2, "SELECT Identifier, Seed, ");
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    for (i = 0; ; i = 1)
    {
      v8 = (v4 + v5);
      if ((*(v4 + v5 + 23) & 0x80000000) == 0)
      {
        break;
      }

      v8 = *v8;
      if (i)
      {
        goto LABEL_7;
      }

LABEL_8:
      v9 = strlen(v8);
      std::string::append(a2, v8, v9);
      ++v6;
      v4 = *a1;
      v5 += 32;
      if (v6 >= (a1[1] - *a1) >> 5)
      {
        return std::string::append(a2, " FROM Words", 0xBuLL);
      }
    }

    if ((i & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    std::string::append(a2, ", ", 2uLL);
    goto LABEL_8;
  }

  return std::string::append(a2, " FROM Words", 0xBuLL);
}

void sub_2992D5CDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992D5CFC(uint64_t a1)
{
  result = sub_2992D6ECC(0);
  if (result)
  {
    return (*(*a1 + 16))(a1) != 0;
  }

  return result;
}

uint64_t sub_2992D5D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 16))(a1);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v6 = off_2A1461EA8;
  v14 = off_2A1461EA8;
  if (!off_2A1461EA8)
  {
    v7 = sub_2992D7060();
    v12[3] = dlsym(v7, "ITDecoderSetLinguisticContext");
    off_2A1461EA8 = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v6)
  {
    v9 = dlerror();
    v10 = abort_report_np("%s", v9);
    _Block_object_dispose(&v11, 8);
    _Unwind_Resume(v10);
  }

  return v6(v5, a2, a3);
}

uint64_t sub_2992D5EA8(uint64_t a1)
{
  v1 = (*(*a1 + 16))(a1);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v2 = off_2A1461EB0;
  v10 = off_2A1461EB0;
  if (!off_2A1461EB0)
  {
    v3 = sub_2992D7060();
    v8[3] = dlsym(v3, "ITDecoderClearNeuralNetworkBuffer");
    off_2A1461EB0 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v5 = dlerror();
    v6 = abort_report_np("%s", v5);
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return v2(v1);
}

uint64_t sub_2992D5FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a1 + 16))(a1);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v8 = off_2A1461EB8;
  v16 = off_2A1461EB8;
  if (!off_2A1461EB8)
  {
    v9 = sub_2992D7060();
    v14[3] = dlsym(v9, "ITDecoderEnumerateCandidates");
    off_2A1461EB8 = v14[3];
    v8 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v8)
  {
    v11 = dlerror();
    v12 = abort_report_np("%s", v11);
    _Block_object_dispose(&v13, 8);
    _Unwind_Resume(v12);
  }

  return v8(v7, a2, a3, a4);
}

uint64_t sub_2992D6138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v5 = off_2A1461EC0;
  v13 = off_2A1461EC0;
  if (!off_2A1461EC0)
  {
    v6 = sub_2992D7060();
    v11[3] = dlsym(v6, "ITCandidateEnumerateTokenIDs");
    off_2A1461EC0 = v11[3];
    v5 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v5)
  {
    v8 = dlerror();
    v9 = abort_report_np("%s", v8);
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  return v5(a2, a3);
}

uint64_t sub_2992D6254(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v3 = off_2A1461EC8;
  v11 = off_2A1461EC8;
  if (!off_2A1461EC8)
  {
    v4 = sub_2992D7060();
    v9[3] = dlsym(v4, "ITCandidateGetScore");
    off_2A1461EC8 = v9[3];
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v3)
  {
    v6 = dlerror();
    v7 = abort_report_np("%s", v6);
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  return v3(a2);
}

void *sub_2992D6368(void *a1, uint64_t a2)
{
  *a1 = &unk_2A1F6E118;
  a1[1] = a2;
  a1[2] = sub_2992D6458(*(a2 + 72));
  v4 = sub_2992D6A28();
  if (*(a2 + 4) == 2)
  {
    v5 = @"zh-Hant";
  }

  else
  {
    v5 = @"zh-Hans";
  }

  v6 = sub_2992D64F8(v4, v5, a1[2]);
  a1[3] = v6;
  v7 = a1[1];
  v8 = *(v7 + 72);
  if (v8)
  {
    sub_29920FD9C(*(v8 + 8), a1, sub_2992D6B2C);
    v7 = a1[1];
    v6 = a1[3];
  }

  *(v7 + 96) = v6 != 0;
  return a1;
}

void sub_2992D642C(_Unwind_Exception *a1)
{
  sub_2992D6CA8(v1 + 1, 0);
  sub_29920FE30(v1, 0);
  _Unwind_Resume(a1);
}

CFURLRef sub_2992D6458(uint64_t a1)
{
  if (!a1 || *(a1 + 6) != 1)
  {
    return 0;
  }

  v3 = *(a1 + 184);
  v4 = *(a1 + 8);
  if (*(v4 + 5) != 1 || (v5 = *(v4 + 40)) == 0)
  {
    v5 = *(v4 + 32);
  }

  v6 = (*(*v3 + 24))(v3, v5);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *MEMORY[0x29EDB8ED8];

  return CFURLCreateWithFileSystemPath(v8, v7, kCFURLPOSIXPathStyle, 1u);
}

uint64_t sub_2992D64F8(const void *a1, const void *a2, const void *a3)
{
  v36 = *MEMORY[0x29EDCA608];
  if (!sub_2992D6ECC(0))
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  err[1] = Mutable;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v7 = qword_2A1460BB0;
  v30 = qword_2A1460BB0;
  if (!qword_2A1460BB0)
  {
    *&buf = MEMORY[0x29EDCA5F8];
    *(&buf + 1) = 0x40000000;
    v33 = sub_2992D71FC;
    v34 = &unk_29EF10A78;
    v35 = &v27;
    v8 = sub_2992D7060();
    v9 = dlsym(v8, "kITDecoderLocaleKey");
    *(v35[1] + 3) = v9;
    qword_2A1460BB0 = *(v35[1] + 3);
    v7 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v7)
  {
    goto LABEL_31;
  }

  CFDictionarySetValue(Mutable, *v7, a2);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v10 = qword_2A1460BB8;
  v30 = qword_2A1460BB8;
  if (!qword_2A1460BB8)
  {
    *&buf = MEMORY[0x29EDCA5F8];
    *(&buf + 1) = 0x40000000;
    v33 = sub_2992D724C;
    v34 = &unk_29EF10AA0;
    v35 = &v27;
    v11 = sub_2992D7060();
    v12 = dlsym(v11, "kITDecoderNeuralTypeKey");
    *(v35[1] + 3) = v12;
    qword_2A1460BB8 = *(v35[1] + 3);
    v10 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v10)
  {
    goto LABEL_31;
  }

  CFDictionarySetValue(Mutable, *v10, a1);
  if (!a3)
  {
    goto LABEL_13;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v13 = qword_2A1460BC0;
  v30 = qword_2A1460BC0;
  if (!qword_2A1460BC0)
  {
    *&buf = MEMORY[0x29EDCA5F8];
    *(&buf + 1) = 0x40000000;
    v33 = sub_2992D729C;
    v34 = &unk_29EF10AC8;
    v35 = &v27;
    v14 = sub_2992D7060();
    v15 = dlsym(v14, "kITTouchTranscoderBundleURLKey");
    *(v35[1] + 3) = v15;
    qword_2A1460BC0 = *(v35[1] + 3);
    v13 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v13)
  {
LABEL_31:
    v25 = dlerror();
    abort_report_np("%s", v25);
    __break(1u);
  }

  CFDictionarySetValue(Mutable, *v13, a3);
LABEL_13:
  err[0] = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v16 = off_2A1460BC8;
  v30 = off_2A1460BC8;
  if (!off_2A1460BC8)
  {
    *&buf = MEMORY[0x29EDCA5F8];
    *(&buf + 1) = 0x40000000;
    v33 = sub_2992D72EC;
    v34 = &unk_29EF10AF0;
    v35 = &v27;
    v17 = sub_2992D7060();
    v18 = dlsym(v17, "ITDecoderCreate");
    *(v35[1] + 3) = v18;
    off_2A1460BC8 = *(v35[1] + 3);
    v16 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v16)
  {
    goto LABEL_31;
  }

  v19 = (v16)(Mutable, err);
  if (v19)
  {
    goto LABEL_24;
  }

  v20 = err[0];
  if (!err[0])
  {
    v23 = sub_2993652F8(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_29918C000, v23, OS_LOG_TYPE_ERROR, "Failed to create CTC decoder: (null)", &buf, 2u);
      if (!Mutable)
      {
        return v19;
      }

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v27 = err[0];
  v21 = CFErrorCopyDescription(err[0]);
  v31 = v21;
  v22 = sub_2993652F8(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v21;
    _os_log_error_impl(&dword_29918C000, v22, OS_LOG_TYPE_ERROR, "Failed to create CTC decoder: %@", &buf, 0xCu);
    if (!v21)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v21)
  {
LABEL_20:
    CFRelease(v21);
  }

LABEL_21:
  CFRelease(v20);
LABEL_24:
  if (Mutable)
  {
LABEL_25:
    CFRelease(Mutable);
  }

  return v19;
}

void sub_2992D69B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992D6A28()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v0 = qword_2A1460BA0;
  v8 = qword_2A1460BA0;
  if (!qword_2A1460BA0)
  {
    v1 = sub_2992D7060();
    v6[3] = dlsym(v1, "kITDecoderNeuralTypeValueTap");
    qword_2A1460BA0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v3 = dlerror();
    v4 = abort_report_np("%s", v3);
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  return *v0;
}

void sub_2992D6B2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_2992D6458(*(*(a2 + 8) + 72));
    v4 = v3;
    v5 = *(a2 + 16);
    if (v3)
    {
      if (v5 && CFEqual(v3, v5))
      {
        CFRelease(v4);
        return;
      }
    }

    else if (!v5)
    {
      return;
    }

    v6 = sub_2992D6A28();
    if (*(*(a2 + 8) + 4) == 2)
    {
      v7 = @"zh-Hant";
    }

    else
    {
      v7 = @"zh-Hans";
    }

    v8 = sub_2992D64F8(v6, v7, v4);
    sub_2992D6CA8((a2 + 24), v8);
    *(*(a2 + 8) + 96) = *(a2 + 24) != 0;
    sub_29920FE30((a2 + 16), v4);
  }
}

void sub_2992D6BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992D6C14(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 72);
  if (v2)
  {
    sub_29920FDEC(*(v2 + 8), a1);
  }

  sub_2992D6CA8((a1 + 24), 0);
  sub_29920FE30((a1 + 16), 0);
  return a1;
}

void sub_2992D6C70(uint64_t a1)
{
  sub_2992D6C14(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2992D6CA8(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void *sub_2992D6CE0(void *a1, uint64_t a2)
{
  *a1 = &unk_2A1F6E140;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v4 = qword_2A1460BA8;
  v13 = qword_2A1460BA8;
  if (!qword_2A1460BA8)
  {
    v5 = sub_2992D7060();
    v11[3] = dlsym(v5, "kITDecoderNeuralTypeValuePath");
    qword_2A1460BA8 = v11[3];
    v4 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v4)
  {
    v8 = dlerror();
    v9 = abort_report_np("%s", v8);
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  if (*(a2 + 4) == 2)
  {
    v6 = @"zh-Hant";
  }

  else
  {
    v6 = @"zh-Hans";
  }

  a1[1] = sub_2992D64F8(*v4, v6, 0);
  return a1;
}

void sub_2992D6E74(uint64_t a1)
{
  sub_2992D6CA8((a1 + 8), 0);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992D6ECC(uint64_t a1)
{
  if (!qword_2A1461EA0)
  {
    qword_2A1461EA0 = _sl_dlopen();
  }

  return qword_2A1461EA0;
}

uint64_t sub_2992D6F9C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_2A1461EA0 = result;
  return result;
}

void *sub_2992D7010(uint64_t a1)
{
  v2 = sub_2992D7060();
  result = dlsym(v2, "ITDecoderSetLinguisticContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1461EA8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2992D7060()
{
  v3 = 0;
  v0 = sub_2992D6ECC(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

void *sub_2992D70BC(uint64_t a1)
{
  v2 = sub_2992D7060();
  result = dlsym(v2, "ITDecoderClearNeuralNetworkBuffer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1461EB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992D710C(uint64_t a1)
{
  v2 = sub_2992D7060();
  result = dlsym(v2, "ITDecoderEnumerateCandidates");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1461EB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992D715C(uint64_t a1)
{
  v2 = sub_2992D7060();
  result = dlsym(v2, "ITCandidateEnumerateTokenIDs");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1461EC0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992D71AC(uint64_t a1)
{
  v2 = sub_2992D7060();
  result = dlsym(v2, "ITCandidateGetScore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1461EC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992D71FC(uint64_t a1)
{
  v2 = sub_2992D7060();
  result = dlsym(v2, "kITDecoderLocaleKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1460BB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992D724C(uint64_t a1)
{
  v2 = sub_2992D7060();
  result = dlsym(v2, "kITDecoderNeuralTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1460BB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992D729C(uint64_t a1)
{
  v2 = sub_2992D7060();
  result = dlsym(v2, "kITTouchTranscoderBundleURLKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1460BC0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992D72EC(uint64_t a1)
{
  v2 = sub_2992D7060();
  result = dlsym(v2, "ITDecoderCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_2A1460BC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2992D733C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

void *sub_2992D7370(uint64_t a1)
{
  v2 = sub_2992D7060();
  result = dlsym(v2, "kITDecoderNeuralTypeValueTap");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1460BA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2992D73C0(uint64_t a1)
{
  v2 = sub_2992D7060();
  result = dlsym(v2, "kITDecoderNeuralTypeValuePath");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2A1460BA8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2992D7410(uint64_t a1, const char *a2)
{
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  result = sqlite3_prepare_v2(*(a1 + 16), a2, -1, (a1 + 8), 0);
  if (result)
  {
    if (result == 26 || result == 11)
    {
      exception = __cxa_allocate_exception(4uLL);
      *exception = 1;
      goto LABEL_10;
    }

LABEL_9:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 4;
LABEL_10:
    __cxa_throw(exception, &unk_2A1F6D658, 0);
  }

  return result;
}

int *sub_2992D748C(int *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 1) = 0;
  *(a1 + 2) = a3;
  sub_2992D7410(a1, a4);
  if (a2 && *(a1 + 1))
  {
    sub_2992D7790(*a1, a1, v5);
  }

  return a1;
}

sqlite3_stmt *sub_2992D74EC(uint64_t ***a1)
{
  v2 = *a1;
  if (v2)
  {
    v4 = a1;
    sub_2992D7A58(v2, &v4);
  }

  result = a1[1];
  if (result)
  {
    result = sqlite3_finalize(result);
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_2992D7538(uint64_t a1)
{
  result = sqlite3_step(*(a1 + 8));
  if (result == 26 || result == 11)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1;
    __cxa_throw(exception, &unk_2A1F6D658, 0);
  }

  return result;
}

uint64_t sub_2992D7580(uint64_t a1, int a2, const void *a3, uint64_t a4, int a5)
{
  if (a5 && !a4)
  {
    v7 = sub_2992FE0BC();
    a3 = *v7;
    a4 = v7[1];
  }

  v8 = 2 * a4;
  v9 = *(a1 + 8);

  return sqlite3_bind_blob(v9, a2, a3, v8, 0xFFFFFFFFFFFFFFFFLL);
}

void *sub_2992D75D4@<X0>(uint64_t a1@<X0>, int a2@<W1>, void **a3@<X8>)
{
  result = sqlite3_column_bytes(*(a1 + 8), a2);
  if (result > 1)
  {
    v7 = result >> 1;
    sub_2991A650C(a3, v7);
    v8 = *a3;
    v9 = sqlite3_column_blob(*(a1 + 8), a2);

    return memcpy(v8, v9, 2 * v7);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_2992D7674(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992D7690(uint64_t a1)
{
  sub_2992D76D4(a1);
  sub_29921B8CC(a1 + 24, *(a1 + 32));
  sub_29921B8CC(a1, *(a1 + 8));
  return a1;
}

void sub_2992D76D4(void *a1)
{
  sub_2992D7ADC(&v6, a1);
  v2 = v6;
  if (v6 != v7)
  {
    do
    {
      sub_2992D74EC(v2[4]);
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != v7);
  }

  sub_2992D77F8(a1);
  sub_29921B8CC(&v6, v7[0]);
}

uint64_t **sub_2992D7790(uint64_t **a1, int *a2, int a3)
{
  v6 = a3;
  v7 = a2;
  sub_2992D78B8(a1, &v7, &v7);
  v7 = &v6;
  result = sub_2992D7984(a1 + 3, &v6, &unk_299400092, &v7);
  result[5] = a2;
  return result;
}

void sub_2992D77F8(void *a1)
{
  v2 = a1 + 3;
  v3 = a1[3];
  v4 = a1 + 4;
  if (v3 != a1 + 4)
  {
    do
    {
      v5 = v3[5];
      if (v5)
      {
        sub_2992D74EC(v3[5]);
        MEMORY[0x29C29BFB0](v5, 0x20C40960023A9);
      }

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  sub_29921B8CC(v2, a1[4]);
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = v4;
}

uint64_t *sub_2992D78B8(uint64_t **a1, unint64_t *a2, uint64_t *a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t **sub_2992D7984(uint64_t **a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 8);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_2992D7A58(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 1;
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == a1 + 1 || v3 < v4[4])
  {
    return 0;
  }

  sub_299280C44(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *sub_2992D7ADC(uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_2992D7B34(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *sub_2992D7B34(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_2992D7BBC(v5, (v5 + 8), v4 + 4, v4 + 4);
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

uint64_t *sub_2992D7BBC(uint64_t **a1, void *a2, unint64_t *a3, uint64_t *a4)
{
  v4 = *sub_2992D7C54(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *sub_2992D7C54(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
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

language_modeling::v1::LanguageModel **sub_2992D7DFC(language_modeling::v1::LanguageModel **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    language_modeling::v1::LanguageModel::~LanguageModel(v2);
    MEMORY[0x29C29BFB0]();
  }

  return a1;
}

void sub_2992D7E44(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v14 = *MEMORY[0x29EDCA608];
  v6 = sub_2992774EC(a1);
  sub_2991C6CA8(&v13, v6);
  v7 = std::string::append(&v13, "-UniLM", 6uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v12 = v7->__r_.__value_.__r.__words[2];
  *__p = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v9 = sub_2993652F8(0xDu);
  if (os_signpost_enabled(v9))
  {
    v10 = __p;
    if (v12 < 0)
    {
      v10 = __p[0];
    }

    LODWORD(v13.__r_.__value_.__l.__data_) = 136315138;
    *(v13.__r_.__value_.__r.__words + 4) = v10;
    _os_signpost_emit_with_name_impl(&dword_29918C000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "getSharedUniLanguageModel", "Creating UniLM with identifier [%s]", &v13, 0xCu);
  }

  sub_2992D7FC8(a3, v4, 0, v3, __p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2992D7F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992D7FC8(uint64_t *a1, int a2, char a3, int a4, uint64_t a5)
{
  v38 = *MEMORY[0x29EDCA608];
  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 0x40000000;
  v27[2] = sub_2992D8B80;
  v27[3] = &unk_29EF10B60;
  v27[4] = a5;
  v28 = a2;
  v29 = a3;
  if (qword_2A1461D50 != -1)
  {
    dispatch_once(&qword_2A1461D50, &unk_2A1F65DA8);
  }

  v30[0] = MEMORY[0x29EDCA5F8];
  v30[1] = 0x40000000;
  v31 = sub_2992D911C;
  v32 = &unk_29EF10B88;
  v34 = a5;
  v35 = qword_2A1461D48;
  v36 = 0;
  v33 = v27;
  if ((atomic_load_explicit(&qword_2A1460BD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460BD8))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_2A1460BE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460BE0))
  {
    __cxa_atexit(MEMORY[0x29EDC93D8], &stru_2A145F468, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460BE0);
  }

  std::mutex::lock(&stru_2A145F468);
  v6 = qword_2A1460BD0;
  v7 = sub_2991C0548(qword_2A1460BD0, a5);
  v8 = v6[1];
  if (!*&v8)
  {
    goto LABEL_21;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*v6 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_21:
    v16 = sub_2993652F8(0xDu);
    v17 = os_signpost_id_make_with_pointer(v16, a5);
    v18 = sub_2993652F8(0xDu);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = v18;
      if (os_signpost_enabled(v18))
      {
        if (*(a5 + 23) >= 0)
        {
          v20 = a5;
        }

        else
        {
          v20 = *a5;
        }

        *buf = 136315138;
        *&buf[4] = v20;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "SingletonResourceManagerLoad", "Load resource with key: [%s]", buf, 0xCu);
      }
    }

    *buf = (v31)(v30);
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v9)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v8)
      {
        v15 %= *&v8;
      }
    }

    else
    {
      v15 &= *&v8 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_21;
    }

LABEL_20:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  if (!sub_2991C09F4(v6, v14 + 2, a5))
  {
    goto LABEL_20;
  }

  v21 = v14[6];
  if (!v21)
  {
    goto LABEL_21;
  }

  if (v21->__shared_owners_ == -1 || a4 != 0)
  {
    goto LABEL_21;
  }

  v23 = std::__shared_weak_count::lock(v21);
  if (v23)
  {
    v24 = v14[5];
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(&stru_2A145F468);
  *a1 = v24;
  a1[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_2991A893C(v23);
  }
}

void sub_2992D891C(unsigned int a1@<W0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = sub_2992774EC(a1);
  sub_2991C6CA8(&v13, v6);
  v7 = std::string::append(&v13, "Siri-UniLM", 0xAuLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v12 = v7->__r_.__value_.__r.__words[2];
  *__p = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v9 = sub_2993652F8(0xDu);
  if (os_signpost_enabled(v9))
  {
    v10 = __p;
    if (v12 < 0)
    {
      v10 = __p[0];
    }

    LODWORD(v13.__r_.__value_.__l.__data_) = 136315138;
    *(v13.__r_.__value_.__r.__words + 4) = v10;
    _os_signpost_emit_with_name_impl(&dword_29918C000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "getSharedSiriUniLanguageModel", "Creating Siri UniLM with identifier [%s]", &v13, 0xCu);
  }

  sub_2992D7FC8(a3, a1, 1, a2, __p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2992D8A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992D8AA0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_2A1F6E198[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void sub_2992D8AFC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_2992D8B10(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_2A1F6E1A8[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void sub_2992D8B6C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_2992D8B80(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = sub_2993652F8(7u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    if (*(v3 + 23) < 0)
    {
      v3 = *v3;
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_debug_impl(&dword_29918C000, v2, OS_LOG_TYPE_DEBUG, "[getAsyncUniLanguageModel] Actually creating UniLM with identifier [%s]", buf, 0xCu);
  }

  operator new();
}

void sub_2992D9034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, char *a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char *a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_2992D9740(a23);
  if (*(v33 - 65) < 0)
  {
    operator delete(*(v33 - 88));
  }

  sub_2992D95C8(a29);
  sub_2992D957C(v31, 0);
  sub_2992D7DFC(v30);
  MEMORY[0x29C29BFB0](v29, v32);
  _Unwind_Resume(a1);
}

void sub_2992D9204(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v3);
  v5 = *v2;
  *v2 = 0;
  if (v5)
  {
    sub_2992D951C(v5);
  }

  MEMORY[0x29C29BFB0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_2992D926C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2992D9374(v2);
    MEMORY[0x29C29BFB0](v3, 0x10F2C40E01BBEB9);
  }

  return a1;
}

void sub_2992D92B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992D92F0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2992D9374(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2992D9334(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E218))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992D9374(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = atomic_load((a1 + 40));
  if (v2 == 1)
  {
    v3 = (a1 + 112);
    do
    {
      v4 = dispatch_time(0, 1000000);
      if (sub_29929A2D8(a1, v4, 0))
      {
        break;
      }

      v5 = atomic_load((a1 + 40));
      if (v5 == 2)
      {
        break;
      }

      v6 = sub_2993652F8(1u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = a1 + 112;
        if (*(a1 + 135) < 0)
        {
          v8 = *v3;
        }

        *buf = 136315138;
        v12 = v8;
        _os_log_error_impl(&dword_29918C000, v6, OS_LOG_TYPE_ERROR, "Still waiting for resource [%s] to complete in background.", buf, 0xCu);
      }

      v7 = atomic_load((a1 + 40));
    }

    while (v7 == 1);
  }

  std::mutex::lock((a1 + 48));
  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 8));
  dispatch_release(*(a1 + 16));
  std::mutex::unlock((a1 + 48));
  if (*(a1 + 144) == 1)
  {
    std::mutex::unlock(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  std::mutex::~mutex((a1 + 48));
  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    sub_2992D951C(v9);
  }

  return a1;
}

void sub_2992D950C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2991EDA10(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992D951C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_2992D957C((result + 16), 0);
    sub_2992D7DFC((v1 + 8));

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

language_modeling::v1::LanguageModelSession *sub_2992D957C(language_modeling::v1::LanguageModelSession **a1, language_modeling::v1::LanguageModelSession *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    language_modeling::v1::LanguageModelSession::~LanguageModelSession(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void sub_2992D95C8(char *a1)
{
  if (a1)
  {
    sub_2992D95C8(*a1);
    sub_2992D95C8(*(a1 + 1));
    sub_2992D8AA0((a1 + 56));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t *sub_2992D962C(uint64_t **a1, uint64_t ***a2, _OWORD **a3)
{
  v4 = a1 + 1;
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v6 = v3;
      if ((sub_29920B9DC(a2, v3 + 32) & 0x80) == 0)
      {
        break;
      }

      v3 = *v6;
      v4 = v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    if ((sub_29920B9DC(v6 + 4, a2) & 0x80) == 0)
    {
      break;
    }

    v4 = (v6 + 1);
    v3 = v6[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (!*v4)
  {
LABEL_7:
    operator new();
  }

  return *v4;
}

void sub_2992D9740(char *a1)
{
  if (a1)
  {
    sub_2992D9740(*a1);
    sub_2992D9740(*(a1 + 1));
    sub_2992D8B10((a1 + 56));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t *sub_2992D97A4(uint64_t **a1, uint64_t ***a2, _OWORD **a3)
{
  v4 = a1 + 1;
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v6 = v3;
      if ((sub_29920B9DC(a2, v3 + 32) & 0x80) == 0)
      {
        break;
      }

      v3 = *v6;
      v4 = v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    if ((sub_29920B9DC(v6 + 4, a2) & 0x80) == 0)
    {
      break;
    }

    v4 = (v6 + 1);
    v3 = v6[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (!*v4)
  {
LABEL_7:
    operator new();
  }

  return *v4;
}

uint64_t sub_2992D98B8(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7)
{
  v32 = *MEMORY[0x29EDCA608];
  v23 = 0;
  v24 = a4;
  if (*(a1 + 24) < 2uLL)
  {
    return 0;
  }

  if (a2)
  {
    v14 = a3 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (!v14)
  {
    v16 = *(a1 + 8);
    v17 = 1;
    v18 = a3;
    v19 = a2;
    while (1)
    {
      v20 = *v19++;
      v21 = *(v16 + 8 * v17) + v20 + 1;
      if (*(v16 + 8 * v21 + 4) != v17)
      {
        return 0;
      }

      v17 = v21;
      if (!--v18)
      {
        goto LABEL_15;
      }
    }
  }

  v21 = 1;
LABEL_15:
  if (!sub_29931CE7C(a1, a5, &v24, &v23, a7, v21, 0, a3) && (v15 & a6) == 1)
  {
    v22 = 2 * sub_299217570(a2, a3 >> 1);
    if (v22)
    {
      v31 = 0;
      memset(v30, 0, sizeof(v30));
      v27 = 0u;
      v28 = 0;
      v25[0] = a1;
      v25[1] = 0;
      v25[2] = 0;
      v25[3] = a2;
      v25[4] = a3;
      v25[5] = a5;
      v26 = a7;
      LODWORD(v27) = 2;
      v29 = v30 + (a3 - v22) + 2;
      LOBYTE(v30[0]) = 1;
      BYTE1(v30[0]) = a3 != v22;
      sub_2992D9A90(a1, v25, 1, a2, a3 - v22, &a2[(a3 - v22)], v22, 0, 0, 0, &v23, 0, 0);
    }
  }

  return v23;
}

BOOL sub_2992D9A90(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, char *a6, uint64_t a7, unsigned __int16 *a8, __n128 a9, unsigned int a10, unint64_t *a11, BOOL a12, int a13)
{
  v13 = a7;
  v14 = a3;
  v15 = a9.n128_f32[0];
  v17 = a1;
  v18 = a12;
  v86 = *MEMORY[0x29EDCA608];
  v19 = *(a1 + 8);
  v20 = *(v19 + 8 * a3);
  v21 = *(a2 + 64);
  if (v21 == 2)
  {
    if (a7 | a5 | a10)
    {
      goto LABEL_30;
    }

    v28 = (v19 + 8 * v20);
    if (v28[1] == a3)
    {
      if (a13)
      {
        v29 = *v28;
        if (v29 < 0)
        {
          if (*(a2 + 40))
          {
            v30 = (a12 & *(a2 + 81)) == 0;
            v31 = *a11;
            v32 = *(a2 + 72);
            v33 = *a11 + 1;
            *a11 = v33;
            v34 = *(a2 + 40);
            v35 = *(a2 + 48) + 24 * v31;
            v36 = -v29;
            a9.n128_u64[0] = 0;
            if (!v30)
            {
              a9.n128_f32[0] = v15;
            }

            *(v35 + 12) = *(a2 + 88) - a2 + v32 - 98;
            *(v35 + 1) = a12;
            *v35 = *(a2 + 82);
            *(v35 + 4) = a9.n128_u32[0];
            *(v35 + 8) = v36;
            if (v33 >= v34)
            {
              return 1;
            }
          }

          else
          {
            ++*a11;
          }
        }
      }
    }

    if (*(a2 + 97) == 1)
    {
      v37 = (v20 + 1);
      for (i = 257; i >= 2; --i)
      {
        if (*(*(v17 + 8) + 8 * v37 + 4) == v14)
        {
          v39 = a5;
          v40 = v13;
          ++*(a2 + 72);
          v41 = 1;
          v42 = v17;
          v43 = v17;
          v44 = a4;
          v45 = a6;
          a9.n128_f32[0] = v15;
          if (sub_2992D9A90(v43, a2, v37, a4, 0, a6, 0, a8, a9, 0, a11, a12, 1))
          {
            return v41;
          }

          --*(a2 + 72);
          v13 = v40;
          a6 = v45;
          a4 = v44;
          v17 = v42;
          a5 = v39;
          v14 = a3;
        }

        v37 = (v37 + 1);
      }
    }

    goto LABEL_30;
  }

  if (v21 != 1)
  {
    if (!v21 && !(a7 | a5 | a10))
    {
      v22 = (v19 + 8 * v20);
      if (v22[1] != a3)
      {
        return 0;
      }

      v23 = *v22;
      return v23 < 0 && sub_2992DAF38(a2, a12, -v23, a11, a9.n128_f32[0]);
    }

LABEL_30:
    if (a5)
    {
      v19 = *(v17 + 8);
      LODWORD(v20) = *(v19 + 8 * v14);
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  if (a5)
  {
LABEL_32:
    v46 = v20 + *a4 + 1;
    if (*(v19 + 8 * v46 + 4) != v14)
    {
      return 0;
    }

    a9.n128_f32[0] = v15;
    return sub_2992D9A90(v17, a2, v46, a4 + 1, (a5 - 1), a6, v13, a8, a9, a10, a11, a12, a13);
  }

  v24 = (v19 + 8 * v20);
  if (v24[1] == a3)
  {
    v25 = *v24;
    if (v25 < 0)
    {
      v26 = a6;
      v27 = sub_2992DAF38(a2, a12, -v25, a11, a9.n128_f32[0]);
      a6 = v26;
      if (v27)
      {
        return 1;
      }
    }
  }

LABEL_35:
  if (a10)
  {
    if (*(a2 + 81) != 1 || (v47 = a8 - *(a2 + 24), (v47 & 1) != 0) || (v48 = *(a2 + 32), (v48 & 1) != 0) || v48 < 2 || (v49 = *(a2 + 56), (v49 & 1) != 0) || (v50 = a6, v51 = sub_299254EB8(*(a2 + 8), *(a2 + 16), v15, (v47 >> 1) + 1, ((v47 & 0xFFFFFFFE) + v49) >> 1, (v49 + v48) >> 1, v84, 0xEuLL), a6 = v50, !v51))
    {
      v84[0] = *a8;
      v85 = v15;
      v51 = 1;
    }

    else if (v51 < 1)
    {
      return 0;
    }

    v52 = a6;
    v76 = v17;
    v78 = v14;
    v53 = v51;
    v54 = 1;
    v55 = v84;
    v79 = v51;
    v56 = 1;
    while (1)
    {
      v81 = 0;
      v82 = 0;
      if (!v18)
      {
        v18 = *v55 != *a8;
      }

      v57 = a10 < 4 || *(a2 + 16) ? 0 : a8[1];
      if (!*(a2 + 8) && !*(a2 + 16) || *(a2 + 82) && (*(a2 + 80) != 1 || (*(a2 + 96) & 1) == 0))
      {
        break;
      }

      v58 = sub_299216378(v18, v52, v13, *v55, v83, 16, &v82, &v81, v57);
      if (v58 == -2)
      {
        goto LABEL_66;
      }

      v60 = v58;
      if (v58 == -1)
      {
        return v56;
      }

      v61 = v81;
      if (v81 > 7)
      {
        goto LABEL_66;
      }

      v62 = *(a2 + 88);
      if (v58)
      {
        goto LABEL_62;
      }

LABEL_64:
      v59.n128_u32[0] = *(v55 + 1);
      if (sub_2992D9A90(v76, a2, v78, v83, v60, v82, v61, a8 + 1, v59, a10 - 2, a11, v18, a13))
      {
        return v56;
      }

      *(a2 + 88) = v62;
LABEL_66:
      v56 = v54++ < v79;
      v55 += 4;
      if (!--v53)
      {
        return 0;
      }
    }

    *v83 = *v55;
    v81 = 0;
    v82 = 0;
    v60 = 2;
    v62 = *(a2 + 88);
LABEL_62:
    memcpy(v62, v52, v13);
    v63 = (*(a2 + 88) + v13);
    *(a2 + 88) = v63;
    v61 = v81;
    if (!v81)
    {
      *v63 = *v55;
      *(a2 + 88) += 2;
      v61 = v81;
    }

    goto LABEL_64;
  }

  if (!v13)
  {
    return 0;
  }

  if (*(a2 + 96) != 1)
  {
    return 0;
  }

  v64 = *(a2 + 88);
  v65 = a6;
  v66 = sub_299216BF4(a6, v13);
  if (!v66)
  {
    return 0;
  }

  v67 = v66;
  memcpy(*(a2 + 88), v65, v13);
  *(a2 + 88) += v13;
  if (*(a2 + 32) == v13 && *(a2 + 64) == 2)
  {
    *(a2 + 97) = 0;
  }

  v69 = *v67;
  if (v67[1] == *v67)
  {
LABEL_82:
    *(a2 + 88) = v64;
    return 0;
  }

  v70 = 0;
  v71 = 0;
  v41 = 1;
  while (1)
  {
    v72 = v69 + v70;
    v73 = *(v72 + 23);
    if (v73 < 0)
    {
      v74 = *v72;
      v73 = *(v72 + 8);
    }

    else
    {
      v74 = v72;
    }

    v68.n128_f32[0] = v15;
    if (sub_2992D9A90(v17, a2, v14, v74, v73, 0, 0, a8, v68, 0, a11, a12, 1))
    {
      return v41;
    }

    ++v71;
    v69 = *v67;
    v70 += 24;
    if (v71 >= 0xAAAAAAAAAAAAAAABLL * ((v67[1] - *v67) >> 3))
    {
      goto LABEL_82;
    }
  }
}

unint64_t sub_2992DA124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = 0;
  v10 = a4;
  v9 = 0;
  if (*(a1 + 24) >= 2uLL)
  {
    sub_2992DA188(a1, a5, &v10, &v9, a6, 1u, a2, a3, a7, 0);
    return v9;
  }

  return v7;
}

BOOL sub_2992DA188(uint64_t a1, unint64_t a2, void *a3, unint64_t *a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10)
{
  v14 = a10;
  if (a8)
  {
    v17 = 0;
    v18 = 0;
    while (1)
    {
      if (a7)
      {
        if (a8 + v17)
        {
          if (((a8 + v17) & 1) == 0)
          {
            v19 = sub_2993C4A54(*(a7 + v18), a9);
            if (v19)
            {
              break;
            }
          }
        }
      }

      v20 = *(a1 + 8);
      v21 = *(v20 + 8 * a6) + *(a7 + v18) + 1;
      if (*(v20 + 8 * v21 + 4) != a6)
      {
        return 0;
      }

      ++v18;
      --v17;
      a6 = v21;
      if (!(a8 + v17))
      {
        a6 = v21;
        goto LABEL_11;
      }
    }

    v24 = v19[1] - *v19;
    if ((v24 >> 1) >= 1)
    {
      v25 = 0;
      v37 = a7 - v17;
      v36 = a8 + v17 - 2;
      v26 = v24 >> 1;
      for (i = (*v19 + 1); ; i += 2)
      {
        if (!v14 && v25 != 0)
        {
          v14 = 1;
        }

        v29 = *(a1 + 8);
        v30 = *(v29 + 8 * a6) + *(i - 1) + 1;
        v31 = (v29 + 8 * v30);
        if (v31[1] == a6)
        {
          v32 = *v31 + *i + 1;
          if (*(v29 + 8 * v32 + 4) == v30 && sub_2992DA188(a1, a2, a3, a4, a5, v32, v37 + 2, v36, a9, v14))
          {
            break;
          }
        }

        if (v26 == ++v25)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  v20 = *(a1 + 8);
LABEL_11:
  v22 = (v20 + 8 * *(v20 + 8 * a6));
  if (v22[1] != a6)
  {
    return 0;
  }

  v23 = *v22;
  if ((v23 & 0x80000000) == 0)
  {
    return 0;
  }

  if (*a3)
  {
    --*a3;
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v33 = *a4;
  v34 = a5 + 24 * *a4;
  *(v34 + 12) = (a10 != 0) << 8;
  *a4 = ++v33;
  *(v34 + 8) = -v23;
  return v33 >= a2;
}

unint64_t sub_2992DA3B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6)
{
  v6 = 0;
  v8 = 0;
  if (*(a1 + 24) >= 2uLL)
  {
    sub_2992DA40C(a1, a4, &v8, a5, 1u, a2, a3, a2, a6, 0);
    return v8;
  }

  return v6;
}

uint64_t sub_2992DA40C(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, __int16 a8, unsigned int a9, int a10)
{
  if (!a7)
  {
    return 0;
  }

  v16 = 0;
  v17 = 0;
  v18 = a10;
  v19 = a6 - a8;
  while (1)
  {
    if (a6)
    {
      if (a7 != v17 && ((a7 + v16) & 1) == 0)
      {
        v20 = sub_2993C4A54(*(a6 + v17), a9);
        if (v20)
        {
          break;
        }
      }
    }

    v21 = *(a1 + 8);
    v22 = *(v21 + 8 * a5) + *(a6 + v17) + 1;
    v23 = (v21 + 8 * v22);
    if (v23[1] != a5)
    {
      return 0;
    }

    v24 = (v21 + 8 * *v23);
    if (v24[1] == v22)
    {
      if (a2)
      {
        v25 = *v24;
        if (v25 < 0)
        {
          v26 = *a3;
          v27 = a4 + 24 * *a3;
          v28 = a10 ? (v19 + v17 + 1) | 0x100 : v19 + v17 + 1;
          *(v27 + 12) = v28;
          *a3 = v26 + 1;
          *(v27 + 8) = -v25;
          if (v26 + 1 >= a2)
          {
            return 1;
          }
        }
      }
    }

    ++v17;
    --v16;
    a5 = v22;
    if (a7 == v17)
    {
      return 0;
    }
  }

  v29 = v20[1] - *v20;
  if ((v29 >> 1) < 1)
  {
    return 0;
  }

  v30 = 0;
  v48 = a6 + v17;
  v31 = a7 - v17 - 2;
  v47 = a6 - a8 + v17 + 2;
  v32 = v29 >> 1;
  for (i = (*v20 + 1); ; i += 2)
  {
    if (v18)
    {
      v34 = 1;
    }

    else
    {
      v34 = v30 == 0;
    }

    if (!v34)
    {
      v18 = 1;
    }

    v35 = *(a1 + 8);
    v36 = *(v35 + 8 * a5) + *(i - 1) + 1;
    v37 = (v35 + 8 * v36);
    if (v37[1] == a5)
    {
      v38 = *v37 + *i + 1;
      v39 = (v35 + 8 * v38);
      if (v39[1] == v36)
      {
        v40 = (v35 + 8 * *v39);
        if (v40[1] == v38)
        {
          v41 = *v40;
          if (v41 < 0)
          {
            v42 = *a3;
            v43 = a4 + 24 * *a3;
            v44 = v47;
            if (v18)
            {
              v44 = v47 | 0x100;
            }

            *(v43 + 12) = v44;
            v45 = v42 + 1;
            *a3 = v45;
            *(v43 + 8) = -v41;
            if (v45 >= a2)
            {
              break;
            }
          }
        }

        if (sub_2992DA40C(a1, a2, a3, a4, v38, v48 + 2, v31, a8, a9, v18))
        {
          break;
        }
      }
    }

    if (v32 == ++v30)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_2992DA68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = 0;
  v10 = a4;
  v9 = 0;
  if (*(a1 + 24) >= 2uLL)
  {
    sub_2992DA6F4(a1, a5, &v10, &v9, a6, 1u, a2, a3, a2, a7, 0);
    return v9;
  }

  return v7;
}

uint64_t sub_2992DA6F4(uint64_t a1, unint64_t a2, void *a3, unint64_t *a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11)
{
  v12 = a6;
  v15 = a11;
  if (a8)
  {
    v17 = 0;
    v18 = 0;
    while (1)
    {
      if (a7)
      {
        if (a8 + v17)
        {
          if (((a8 + v17) & 1) == 0)
          {
            v19 = sub_2993C4A54(*(a7 + v18), a10);
            if (v19)
            {
              break;
            }
          }
        }
      }

      v20 = *(a1 + 8);
      a6 = *(v20 + 8 * v12) + *(a7 + v18) + 1;
      if (*(v20 + 8 * a6 + 4) != v12)
      {
        return 0;
      }

      ++v18;
      --v17;
      v12 = a6;
      if (!(a8 + v17))
      {
        goto LABEL_9;
      }
    }

    v22 = v19[1] - *v19;
    if ((v22 >> 1) < 1)
    {
      return 0;
    }

    v23 = 0;
    v32 = a7 - v17;
    v31 = a8 + v17 - 2;
    v24 = v22 >> 1;
    for (i = (*v19 + 1); ; i += 2)
    {
      if (v15)
      {
        v26 = 1;
      }

      else
      {
        v26 = v23 == 0;
      }

      if (!v26)
      {
        v15 = 1;
      }

      v27 = *(a1 + 8);
      v28 = *(v27 + 8 * v12) + *(i - 1) + 1;
      v29 = (v27 + 8 * v28);
      if (v29[1] == v12)
      {
        v30 = *v29 + *i + 1;
        if (*(v27 + 8 * v30 + 4) == v28)
        {
          if (sub_2992DA6F4(a1, a2, a3, a4, a5, v30, v32 + 2, v31, a9, a10, v15))
          {
            break;
          }
        }
      }

      if (v24 == ++v23)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
LABEL_9:

    return sub_2992DAFC0(a1, a2, a3, a4, a5, a6, 0, a7 - a9, a11);
  }
}

uint64_t sub_2992DA8EC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = a2;
  if (a4)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      if (a3)
      {
        if (a4 != v17 && ((a4 + v16) & 1) == 0)
        {
          v18 = sub_2993C4A54(*(a3 + v17), 14);
          if (v18)
          {
            break;
          }
        }
      }

      v19 = *(a1 + 8);
      v20 = *(a3 + v17);
      v21 = *(v19 + 8 * v12) + v20 + 1;
      if (*(v19 + 8 * v21 + 4) != v12)
      {
        return 0;
      }

      *(a7 + v17++) = v20;
      --v16;
      v12 = v21;
      if (a4 == v17)
      {
        a7 += v17;
        goto LABEL_11;
      }
    }

    v24 = v18[1] - *v18;
    if ((v24 >> 1) >= 1)
    {
      v35 = a3 + v17;
      v36 = a8;
      v34 = a4 - v17 - 2;
      v25 = a7 + v17;
      v26 = v24 >> 1;
      for (i = (*v18 + 1); ; i += 2)
      {
        v28 = *(i - 1);
        *(a7 + v17) = v28;
        v29 = *(a1 + 8);
        v30 = (v28 + *(v29 + 8 * v12) + 1);
        if (*(v29 + 8 * v30 + 4) == v12)
        {
          v31 = *i;
          *(v25 + 1) = v31;
          v32 = *(a1 + 8);
          v33 = v31 + *(v32 + 8 * v30) + 1;
          if (*(v32 + 8 * v33 + 4) == v30)
          {
            if (sub_2992DA8EC(a1, v33, v35 + 2, v34, a5, a6, v25 + 2, v36))
            {
              break;
            }
          }
        }

        if (!--v26)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  else
  {
    v21 = a2;
LABEL_11:
    v22 = (*(a1 + 8) + 8 * *(*(a1 + 8) + 8 * v21));
    if (v22[1] == v21 && (*v22 & 0x80000000) != 0)
    {
      result = 0;
      if (-*v22 != a5)
      {
        return result;
      }

      *a8 = a7 - a6;
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2992DAAD4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int a6)
{
  v13 = 0;
  if (*(a1 + 24) < 2uLL)
  {
    return 0;
  }

  v7 = 1;
  v8 = a5;
  if (a2 && a3)
  {
    v9 = 1;
    v8 = a5;
    do
    {
      v10 = *(a1 + 8);
      v12 = *a2++;
      v11 = v12;
      v7 = *(v10 + 8 * v9) + v12 + 1;
      if (*(v10 + 8 * v7 + 4) != v9)
      {
        return 0;
      }

      *v8++ = v11;
      v9 = v7;
    }

    while (--a3);
  }

  sub_2992DB118(a1, v7, a6, a4, a5, v8, &v13);
  return v13;
}

uint64_t sub_2992DAB70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v5 = 0;
  v7 = 0;
  if (a1[3] >= 2)
  {
    sub_2992DABC8(a1, 1u, a2, a3, a4, a5, a5, &v7);
    return v7;
  }

  return v5;
}

uint64_t *sub_2992DABC8(uint64_t *result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, void *a8)
{
  v11 = a2;
  v12 = result;
  if (a4)
  {
    v31 = a8;
    v15 = 0;
    v16 = 0;
    while (1)
    {
      if (a3)
      {
        if (a4 != v16 && ((a4 + v15) & 1) == 0)
        {
          result = sub_2993C4A54(*(a3 + v16), 14);
          if (result)
          {
            break;
          }
        }
      }

      v17 = v12[1];
      v18 = *(a3 + v16);
      a2 = *(v17 + 8 * v11) + v18 + 1;
      if (*(v17 + 8 * a2 + 4) != v11)
      {
        return result;
      }

      a7[v16++] = v18;
      --v15;
      v11 = a2;
      if (a4 == v16)
      {
        a7 += v16;
        a8 = v31;
        goto LABEL_10;
      }
    }

    v19 = result[1] - *result;
    if ((v19 >> 1) >= 1)
    {
      v30 = a3 + v16;
      v29 = a4 - v16 - 2;
      v20 = &a7[v16];
      v21 = v19 >> 1;
      v22 = (*result + 1);
      do
      {
        v23 = *(v22 - 1);
        a7[v16] = v23;
        v24 = v12[1];
        v25 = (v23 + *(v24 + 8 * v11) + 1);
        if (*(v24 + 8 * v25 + 4) == v11)
        {
          v26 = *v22;
          v20[1] = v26;
          v27 = v12[1];
          v28 = v26 + *(v27 + 8 * v25) + 1;
          if (*(v27 + 8 * v28 + 4) == v25)
          {
            result = sub_2992DABC8(v12, v28, v30 + 2, v29, a5, a6, (v20 + 2));
          }
        }

        v22 += 2;
        --v21;
      }

      while (v21);
    }
  }

  else
  {
LABEL_10:

    return sub_2992DB118(v12, a2, 0, a5, a6, a7, a8);
  }

  return result;
}

unint64_t sub_2992DADB0(uint64_t a1, unsigned __int16 *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, char a10)
{
  v22 = *MEMORY[0x29EDCA608];
  if (*(a1 + 24) < 2uLL)
  {
    return 0;
  }

  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v18 = 0x10000;
  v16[0] = 0;
  v16[1] = a6;
  v16[2] = a7;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  v16[7] = a8;
  BYTE1(v18) = a10;
  v17 = a9;
  v19 = v20 + 2;
  BYTE1(v20[0]) = 1;
  v15 = 0;
  if (!sub_2992D9A90(a1, v16, 1, 0, 0, 0, 0, a2, 0, a3, &v15, 0, 0))
  {
    LOBYTE(v20[0]) = v17 == 2;
    BYTE2(v18) = 0;
    *(&v17 + 1) = 0;
    v14.n128_u64[0] = 0;
    sub_2992D9A90(a1, v16, 1, 0, 0, 0, 0, a2, v14, a3, &v15, 0, 0);
  }

  return v15;
}

uint64_t sub_2992DAF38(uint64_t a1, int a2, int a3, unint64_t *a4, float a5)
{
  if (*(a1 + 40))
  {
    v5 = ((a2 != 0) & *(a1 + 81)) == 0;
    v6 = *a4;
    v7 = *(a1 + 72);
    v8 = *a4 + 1;
    *a4 = v8;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48) + 24 * v6;
    if (v5)
    {
      a5 = 0.0;
    }

    *(v10 + 12) = *(a1 + 88) - a1 + v7 - 98;
    *(v10 + 1) = a2;
    *v10 = *(a1 + 82);
    *(v10 + 4) = a5;
    *(v10 + 8) = a3;
    if (v8 >= v9)
    {
      return 1;
    }
  }

  else
  {
    ++*a4;
  }

  return 0;
}

uint64_t sub_2992DAFC0(uint64_t a1, unint64_t a2, void *a3, unint64_t *a4, uint64_t a5, unsigned int a6, int a7, __int16 a8, int a9)
{
  v15 = *(a1 + 8);
  v16 = *(v15 + 8 * a6);
  if (a7)
  {
    v17 = (v15 + 8 * v16);
    if (v17[1] == a6)
    {
      v18 = *v17;
      if (v18 < 0)
      {
        if (*a3)
        {
          --*a3;
        }

        else if (a2)
        {
          v23 = *a4;
          v24 = a5 + 24 * *a4;
          v25 = a8 | 0x100;
          if (!a9)
          {
            v25 = a8;
          }

          *(v24 + 12) = v25;
          v26 = v23 + 1;
          *a4 = v26;
          *(v24 + 8) = -v18;
          if (v26 >= a2)
          {
            return 1;
          }
        }

        else
        {
          ++*a4;
        }
      }
    }
  }

  v19 = v16 + 1;
  v20 = 257;
  v21 = 1;
  while (*(*(a1 + 8) + 8 * v19 + 4) != a6 || !sub_2992DAFC0(a1, a2, a3, a4, a5, v19, 1, a8 + 1, a9))
  {
    ++v19;
    if (--v20 <= 1)
    {
      return 0;
    }
  }

  return v21;
}

uint64_t sub_2992DB118(uint64_t a1, unsigned int a2, int a3, int a4, uint64_t a5, _BYTE *a6, void *a7)
{
  v13 = *(a1 + 8);
  v14 = *(v13 + 8 * a2);
  if (a3 && (v15 = (v13 + 8 * v14), v15[1] == a2) && (v16 = *v15, v16 < 0) && -v16 == a4)
  {
    *a7 = &a6[-a5];
    return 1;
  }

  else
  {
    v18 = 0;
    v19 = v14 + 1;
    v17 = 1;
    while (1)
    {
      *a6 = v18;
      if (*(*(a1 + 8) + 8 * v19 + 4) == a2)
      {
        if (sub_2992DB118(a1, v19, 1, a4, a5, a6 + 1, a7))
        {
          break;
        }
      }

      ++v18;
      ++v19;
      if (v18 == 256)
      {
        return 0;
      }
    }
  }

  return v17;
}

uint64_t sub_2992DB210(unsigned int **a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  if (a1[1])
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  v6 = *a3;
  v7 = &a3[v6 == 12306];
  v8 = a4 - (v6 == 12306);
  if (v8 == 7)
  {
    v12 = 0;
    goto LABEL_15;
  }

  if (v8 != 8)
  {
    return 0;
  }

  v9 = 0;
  for (i = &word_29945D6A2; *i != v7[3]; ++i)
  {
    v9 -= 2;
    if (v9 == -8)
    {
      return 0;
    }
  }

  result = 0;
  if (-v9 != -2)
  {
    v12 = 1;
LABEL_15:
    v13 = 0;
    while (1)
    {
      v14 = v13 == 3 ? v12 : 0;
      if ((v14 & 1) == 0)
      {
        v15 = v7[v13];
        v16 = v15 - 48;
        v17 = (v15 + 240);
        if (v16 >= 0xA && v17 > 9)
        {
          break;
        }
      }

      if (v8 == ++v13)
      {
        sub_299322EB0(**a1);
        operator new();
      }
    }

    return 0;
  }

  return result;
}

void sub_2992DB760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v36 = *(v34 - 112);
  if (v36)
  {
    *(v34 - 104) = v36;
    operator delete(v36);
  }

  if (v33)
  {
    operator delete(v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992DB804(uint64_t result, void *a2, const void *a3, unint64_t a4, const void *a5, const void *a6, const void *a7, const void *a8, int a9, int a10)
{
  *&v19 = *MEMORY[0x29EDCA608];
  if (a5 || !a6)
  {
    if (a8)
    {
      v10 = a7 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (!v10 && a4 <= 0xFF)
    {
      buf = 0uLL;
      v13 = 0;
      v14 = a8;
      v15 = a4;
      v16 = a6;
      v17 = 0;
      v18 = 2;
      memset(__p, 0, sizeof(__p));
      sub_2992DBD58(__p, &buf, &v19, 1uLL);
      operator new();
    }
  }
}

void sub_2992DBAAC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17)
{
  if (a13)
  {
    (*(*a13 + 16))(a13, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992DBB6C(uint64_t a1, _WORD *a2, const void *a3)
{
  v6 = *(a1 + 40);
  v7 = *(*(*(a1 + 32) + 8) + 24);
  if (!v7)
  {
    if (*(a1 + 96))
    {
      v8 = 1;
    }

    else
    {
      v8 = 4;
    }

    if (*(a1 + 96))
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }

    sub_2992DB804(v6, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 56), *(a1 + 64), *(a1 + 72), ((*(a1 + 80) - *(a1 + 72)) >> 1), v8, v9);
    v7 = *(*(*(a1 + 32) + 8) + 24);
  }

  v10 = 2 * v7 + 2;
  if (a2)
  {
    v11 = a3;
  }

  else
  {
    v11 = 0;
  }

  sub_2992DB804(v6, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 56), *(a1 + 64), a2, v11, v10, 2);
  __p = 0;
  v14 = 0;
  v15 = 0;
  sub_299218E20(&__p, 0x5BuLL);
  if ((*(a1 + 97) & 1) == 0)
  {
    v12 = 12306;
    sub_29922E664(&__p, &v12);
  }

  sub_29925493C(&v12, *(a1 + 72), *(a1 + 80), &__p);
  v12 = 32;
  sub_29922E664(&__p, &v12);
  sub_29925493C(&v12, a2, &a2[a3], &__p);
  sub_2992DB804(v6, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 56), *(a1 + 64), __p, ((v14 - __p) >> 1), 2 * *(*(*(a1 + 32) + 8) + 24) + 3, 2);
  ++*(*(*(a1 + 32) + 8) + 24);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }
}

void sub_2992DBD00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2992DBD24(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v2 = (a1 + 72);
  v2[2] = 0;
  return sub_299215EC0(v2, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 1);
}

void sub_2992DBD40(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }
}

uint64_t *sub_2992DBD58(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_29921E95C(result, a4);
  }

  return result;
}

void sub_2992DBDC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2992DBDDC(uint64_t a1, uint64_t a2)
{
  if (a2 < 1)
  {
    return 1;
  }

  else
  {
    v2 = 0;
    for (i = 0; i != a2; v2 = i >= a2)
    {
      v4 = *(a1 + 2 * i);
      if ((v4 - 12549) >= 0x25)
      {
        v5 = 0;
        for (j = word_299413998; *j != v4; ++j)
        {
          v5 -= 2;
          if (v5 == -10)
          {
            return v2;
          }
        }

        if (-v5 == -2)
        {
          break;
        }
      }

      ++i;
    }
  }

  return v2;
}

uint64_t sub_2992DBE70()
{
  if ((atomic_load_explicit(&qword_2A1461ED8, memory_order_acquire) & 1) == 0)
  {
    v1 = __cxa_guard_acquire(&qword_2A1461ED8);
    if (v1)
    {
      qword_2A1461ED0 = sub_2992DBEE4(v1);
      __cxa_guard_release(&qword_2A1461ED8);
    }
  }

  return qword_2A1461ED0;
}

CFPropertyListRef sub_2992DBEE4(uint64_t a1)
{
  v1 = sub_29936C2B8();
  v2 = sub_29936C3FC(v1, 2, off_2A145F738[0], off_2A145F700[0], 0);
  if (v2[23] >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = *v2;
  }

  v4 = CFStringCreateWithCString(0, v3, 0x8000100u);
  v5 = sub_299279090(v4);
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

void sub_2992DBF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

BOOL sub_2992DBF8C(const __CFArray *a1)
{
  v2 = sub_2992DBE70();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFArrayGetCount(a1) < 1)
  {
    return 1;
  }

  v4 = 0;
  v5 = *MEMORY[0x29EDB8ED8];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
    v7 = CFStringGetLength(ValueAtIndex) - 1;
    CharacterAtIndex = CFStringGetCharacterAtIndex(ValueAtIndex, v7);
    v9 = 0;
    v10 = word_299413998;
    while (*v10 != CharacterAtIndex)
    {
      v9 -= 2;
      ++v10;
      if (v9 == -10)
      {
        goto LABEL_10;
      }
    }

    if (-v9 != -2)
    {
      v15.location = 0;
      v15.length = v7;
      v11 = CFStringCreateWithSubstring(v5, ValueAtIndex, v15);
      Value = CFDictionaryGetValue(v3, v11);
      CFRelease(v11);
      goto LABEL_11;
    }

LABEL_10:
    Value = CFDictionaryGetValue(v3, ValueAtIndex);
LABEL_11:
    v13 = Value != 0;
    if (!Value)
    {
      break;
    }

    CFArraySetValueAtIndex(a1, v4++, Value);
  }

  while (v4 < CFArrayGetCount(a1));
  return v13;
}

void sub_2992DC0EC(unsigned __int16 *a1@<X0>, unint64_t a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2)
  {
    v6 = &a1[a2];
    v7 = a1;
    while (2)
    {
      for (i = 0; i != 5; ++i)
      {
        if (*v7 == word_299413998[i])
        {
          if (v7 != v6)
          {
            v9 = v7 - a1;
            if (v7 - a1 != -2)
            {
              v10 = 0;
              v11 = 0;
              while (2)
              {
                v12 = v9 >> 1;
                v13 = (v9 >> 1) - v11 + 1;
                v14 = a3[2];
                if (v10 >= v14)
                {
                  v15 = *a3;
                  v16 = v10 - *a3;
                  v17 = v16 >> 3;
                  v18 = (v16 >> 3) + 1;
                  if (v18 >> 61)
                  {
                    sub_299212A8C();
                  }

                  v19 = v14 - v15;
                  if (v19 >> 2 > v18)
                  {
                    v18 = v19 >> 2;
                  }

                  v20 = v19 >= 0x7FFFFFFFFFFFFFF8;
                  v21 = 0x1FFFFFFFFFFFFFFFLL;
                  if (!v20)
                  {
                    v21 = v18;
                  }

                  if (v21)
                  {
                    sub_299236FB8(a3, v21);
                  }

                  *(8 * v17) = v13;
                  v10 = (8 * v17 + 8);
                  memcpy(0, v15, v16);
                  v22 = *a3;
                  *a3 = 0;
                  a3[1] = v10;
                  a3[2] = 0;
                  if (v22)
                  {
                    operator delete(v22);
                  }
                }

                else
                {
                  *v10++ = v13;
                }

                a3[1] = v10;
                v11 = v12 + 1;
                if (a2 > v12 + 1)
                {
                  v23 = &a1[v11];
LABEL_24:
                  v24 = 0;
                  while (*v23 != word_299413998[v24])
                  {
                    if (++v24 == 5)
                    {
                      if (++v23 != v6)
                      {
                        goto LABEL_24;
                      }

                      return;
                    }
                  }

                  if (v23 != v6)
                  {
                    v9 = v23 - a1;
                    if (v9 != -2)
                    {
                      continue;
                    }
                  }
                }

                break;
              }
            }
          }

          return;
        }
      }

      if (++v7 != v6)
      {
        continue;
      }

      break;
    }
  }
}

void sub_2992DC2AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992DC420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  sub_2992530BC(&a11, 0);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_2992DC488(void *a1)
{
  *a1 = &unk_2A1F6E278;
  sub_2992DC4E0(a1);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2992DC4E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  v2 = a1 + 8;
  if (v1 != v3)
  {
    do
    {
      if (*v1)
      {
        (*(**v1 + 8))(*v1);
      }

      ++v1;
    }

    while (v1 != v3);
    v1 = *v2;
  }

  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  if (v1)
  {

    operator delete(v1);
  }
}

void sub_2992DC584(void *a1)
{
  sub_2992DC488(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992DC730(int a1, CFMutableDictionaryRef theDict, uint64_t a3, char a4)
{
  result = 0;
  if (a3 && (a4 & 1) == 0)
  {
    v6 = *(a3 + 87);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a3 + 72);
    }

    if (v6)
    {
      return 0;
    }

    v8 = *MEMORY[0x29EDB8F00];
    CFDictionaryAddValue(theDict, @"predictionCandidateAccepted", *MEMORY[0x29EDB8F00]);
    v9 = (*(*a3 + 96))(a3);
    result = 1;
    if (v9 <= 75)
    {
      if (v9 == 67)
      {
        v10 = off_29EF103F0;
        goto LABEL_22;
      }

      if (v9 == 71)
      {
        v10 = off_29EF103B0;
        goto LABEL_22;
      }

      if (v9 != 74)
      {
        return result;
      }
    }

    else
    {
      if (v9 > 79)
      {
        if (v9 == 88)
        {
          v10 = off_29EF103C0;
        }

        else
        {
          if (v9 != 80)
          {
            return result;
          }

          v10 = off_29EF103E0;
        }

        goto LABEL_22;
      }

      if (v9 != 76)
      {
        if (v9 != 77)
        {
          return result;
        }

        v10 = off_29EF103D8;
        goto LABEL_22;
      }
    }

    v10 = off_29EF103E8;
LABEL_22:
    CFDictionaryAddValue(theDict, *v10, v8);
    return 1;
  }

  return result;
}

uint64_t sub_2992DC9CC(int **a1, uint64_t a2, const void *a3, const void *a4, const void *a5, char *a6, const void *a7, char *a8, int a9, int a10, unsigned __int16 **a11, int a12, int a13, int a14, unsigned __int8 a15, uint64_t a16)
{
  v43[0] = a3;
  v43[1] = a4;
  v42[0] = a5;
  v42[1] = a6;
  v41[0] = a7;
  v41[1] = a8;
  if (a5)
  {
    if (a7)
    {
      __p = 0;
      v39 = 0;
      v40 = 0;
      if (a8 <= 0x20 && a6 <= 0x20)
      {
        if (a8 && a6)
        {
          v18 = 0;
          v19 = 0;
          v20 = a8 - 1;
          while (1)
          {
            v37 = v18;
            v21 = v18;
            while (1)
            {
              v18 = v21 + 1;
              if (v20 == v21 || ((1 << v21) & a10) != 0)
              {
                break;
              }

              ++v21;
              if (a8 == v18)
              {
                v18 = -1;
                break;
              }
            }

            v22 = 0;
            while ((a6 - v19 - 1) != v22 && ((1 << (v19 + v22)) & a9) == 0)
            {
              if ((a6 - v19) == ++v22)
              {
                goto LABEL_39;
              }
            }

            if (v18 == -1)
            {
              break;
            }

            v34 = &v22[v19];
            if (&v22[v19] == -2)
            {
              break;
            }

            v23 = *a11;
            if (0xCCCCCCCCCCCCCCCDLL * ((v39 - __p) >> 3) >= a11[1] - *a11 || v18 <= v37 || v34 < v19)
            {
              break;
            }

            v33 = 0xCCCCCCCCCCCCCCCDLL * ((v39 - __p) >> 3);
            v24 = v22 + 1;
            if (*(a2 + 56) == 1)
            {
              sub_29926D860(a2, &v19[a16]);
              v26 = v25;
              if (sub_29926D860(a2, &v19[a16 + 1 + v22]))
              {
                v28 = v27 == 0;
              }

              else
              {
                v28 = 1;
              }

              if (v28)
              {
                v24 = 0;
              }

              else
              {
                v24 = v27 - v26;
              }

              v23 = *a11;
            }

            v29 = a15;
            if (v37)
            {
              v29 = 0;
            }

            v46 = 0;
            v44 = 0u;
            v45 = 0u;
            WORD4(v45) = v29 - v37 + v18;
            WORD5(v45) = v24;
            WORD6(v45) = v22 + 1;
            HIWORD(v45) = v23[v33];
            LOWORD(v46) = HIWORD(v45);
            *(&v46 + 5) = 513;
            LODWORD(v44) = 3;
            sub_2992DD840(&__p, &v44);
            if (v18 < a8)
            {
              v19 = v34 + 1;
              if (v34 + 1 < a6)
              {
                continue;
              }
            }

            goto LABEL_35;
          }
        }

        else
        {
LABEL_35:
          sub_299255778(0);
          v30 = *a11;
          v31 = a11[1];
          if (*a11 == v31)
          {
LABEL_38:
            sub_2992DC898(a1, v43, v41, v42, a12, 0, &__p, 0, 0.0, a13, a14, 0);
          }

          while (qword_2A1461DC0 > *v30)
          {
            if (++v30 == v31)
            {
              goto LABEL_38;
            }
          }
        }

LABEL_39:
        if (__p)
        {
          v39 = __p;
          operator delete(__p);
        }
      }
    }
  }

  return 0;
}

void sub_2992DCCD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992DCCFC(int **a1, uint64_t a2)
{
  sub_299255778(0);
  if (!a2)
  {
    return a2;
  }

  v4 = (*(*a2 + 48))(a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 - 1;
  do
  {
    v6 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
    v7 = (*(*a2 + 352))(a2, v6 - 1);
    v8 = (*(*a2 + 344))(a2, v6);
  }

  while (!sub_299255970(&qword_2A1461DC0, v7, v8));
  v30 = a1;
  *v31 = 0u;
  *v32 = 0u;
  v33 = 0u;
  *__p = 0u;
  *cf = 0u;
  v9 = (*(*a2 + 544))(a2);
  v10 = (a2 + 96);
  v11 = *(a2 + 119);
  v12 = (a2 + 96);
  if (v11 < 0)
  {
    v12 = *v10;
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_26:
    v14 = 0;
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!v6)
  {
    goto LABEL_26;
  }

LABEL_8:
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = (*(*a2 + 568))(a2, v13);
    v16 = (*(*a2 + 312))(a2, v13);
    v17 = (*(*a2 + 320))(a2, v13);
    v18 = (*(*a2 + 344))(a2, v13);
    v19 = (*(*a2 + 352))(a2, v13);
    sub_2992738F8(&v30, v9, v15, v16, v12, v17, v18, v19);
    v20 = (*(*a2 + 568))(a2, v13);
    v21 = (*(*a2 + 320))(a2, v13);
    v22 = (*(*a2 + 320))(a2, v13);
    v9 += v20;
    v12 += v21;
    ++v13;
    v14 += v22;
  }

  while (v6 != v13);
  v10 = (a2 + 96);
  if ((*(a2 + 119) & 0x80) != 0)
  {
LABEL_11:
    v10 = *v10;
  }

LABEL_12:
  if (v10)
  {
    v23 = v14;
  }

  else
  {
    v23 = 0;
  }

  v29[0] = v10;
  v29[1] = v23;
  v24 = (*(*a2 + 112))(a2);
  v25 = *(a2 + 220);
  v26 = (*(*a2 + 96))(a2);
  v27 = (*(*a2 + 408))(a2);
  a2 = sub_299273A90(&v30, v29, v24, v25, 0, v26, v27);
  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  cf[1] = 0;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v32[1])
  {
    *&v33 = v32[1];
    operator delete(v32[1]);
  }

  if (v31[0])
  {
    v31[1] = v31[0];
    operator delete(v31[0]);
  }

  return a2;
}

void sub_2992DD1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_299273B40(va);
  _Unwind_Resume(a1);
}

unsigned int *sub_2992DD1CC(int **a1, unsigned int *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = (*(*a2 + 48))(a2);
    if (v4)
    {
      v5 = v4;
      v42 = a1;
      *v43 = 0u;
      *v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v6 = (*(*v2 + 544))(v2);
      v7 = v2 + 24;
      if (*(v2 + 119) < 0)
      {
        v7 = *(v2 + 12);
      }

      if (*(v2 + 87) >= 0)
      {
        v8 = (v2 + 16);
      }

      else
      {
        v8 = *(v2 + 8);
      }

      v9 = v5 - 1;
      if (v5 == 1)
      {
        v35 = 0;
      }

      else
      {
        v10 = 0;
        v35 = 0;
        do
        {
          v11 = (*(*v2 + 568))(v2, v10);
          v12 = (*(*v2 + 312))(v2, v10);
          v13 = (*(*v2 + 320))(v2, v10);
          v14 = (*(*v2 + 344))(v2, v10);
          v15 = (*(*v2 + 352))(v2, v10);
          sub_2992738F8(&v42, v6, v11, v12, v7, v13, v14, v15);
          v16 = (*(*v2 + 568))(v2, v10);
          v17 = (*(*v2 + 320))(v2, v10);
          v18 = (*(*v2 + 312))(v2, v10);
          v19 = (*(*v2 + 312))(v2, v10);
          v6 += v16;
          v7 += v17;
          v8 += 2 * v18;
          ++v10;
          v35 += v19;
        }

        while (v9 != v10);
      }

      v20 = (*(*v2 + 568))(v2, v9);
      v41 = (*(*v2 + 320))(v2, v9) - 1;
      v21 = (*(*v2 + 320))(v2, v9);
      memset(v39, 0, sizeof(v39));
      v40 = 1065353216;
      if (!v8)
      {
        v21 = 0;
      }

      v36[0] = v8;
      v36[1] = v21;
      sub_299216DAC(v36, 0, v39, 0, &__p);
      if (v38 < 0)
      {
        operator delete(__p);
      }

      v22 = sub_299230B70(v39, &v41);
      if (v22)
      {
        v23 = v22[3];
        v24 = v41;
        v25 = (*(*v2 + 344))(v2, v9);
        v26 = (*(*v2 + 352))(v2, v9);
        sub_2992738F8(&v42, v6, v20 - 1, v23, v7, v24, v25, v26);
        v27 = v41;
        sub_29921ED28(v39);
        if (*(v2 + 119) < 0)
        {
          v28 = *(v2 + 12);
        }

        else
        {
          v28 = v2 + 24;
        }

        v29 = v27 + v35;
        if (!v28)
        {
          v29 = 0;
        }

        *&v39[0] = v28;
        *(&v39[0] + 1) = v29;
        v30 = (*(*v2 + 112))(v2);
        v31 = v2[55];
        v32 = (*(*v2 + 96))(v2);
        v33 = (*(*v2 + 408))(v2);
        v2 = sub_299273A90(&v42, v39, v30, v31, 0, v32, v33);
      }

      else
      {
        sub_29921ED28(v39);
        v2 = 0;
      }

      if (*(&v47 + 1))
      {
        CFRelease(*(&v47 + 1));
      }

      *(&v47 + 1) = 0;
      if (v46)
      {
        *(&v46 + 1) = v46;
        operator delete(v46);
      }

      if (v44[1])
      {
        *&v45 = v44[1];
        operator delete(v44[1]);
      }

      if (v43[0])
      {
        v43[1] = v43[0];
        operator delete(v43[0]);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_2992DD800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  sub_29921ED28(va);
  sub_299273B40(va1);
  _Unwind_Resume(a1);
}

void sub_2992DD840(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      sub_29921E9A8();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_29921E9C0(a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 4);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(a1 + 8) = v8;
}

BOOL sub_2992DD948(const void *a1, const void *a2)
{
  v6[0] = a1;
  v6[1] = a2;
  sub_2992DD9A4();
  sub_29923A9CC(v6, __p);
  v2 = sub_2992DE460(__p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_2992DD9A4()
{
  v101 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1460BE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460BE8))
  {
    sub_299217DF0(__dst, L"今日");
    if (SHIBYTE(v40) < 0)
    {
      sub_29922C89C(&v41, __dst[0], __dst[1]);
    }

    else
    {
      v41 = *__dst;
      v42 = v40;
    }

    v43 = 0;
    sub_299217DF0(v37, L"明日");
    if (SHIBYTE(v38) < 0)
    {
      sub_29922C89C(&v44, v37[0], v37[1]);
    }

    else
    {
      v44 = *v37;
      v45 = v38;
    }

    v46 = 1;
    sub_299217DF0(&v35, byte_29945D7BC);
    if (SHIBYTE(v36) < 0)
    {
      sub_29922C89C(&v47, v35, *(&v35 + 1));
    }

    else
    {
      v47 = v35;
      v48 = v36;
    }

    v49 = 2;
    sub_299217DF0(v33, byte_29945D7C4);
    if (SHIBYTE(v34) < 0)
    {
      sub_29922C89C(&v50, v33[0], v33[1]);
    }

    else
    {
      v50 = *v33;
      v51 = v34;
    }

    v52 = 3;
    sub_299217DF0(&v31, asc_29945D7CE);
    if (SHIBYTE(v32) < 0)
    {
      sub_29922C89C(&v53, v31, *(&v31 + 1));
    }

    else
    {
      v53 = v31;
      v54 = v32;
    }

    v55 = 4;
    sub_299217DF0(v29, byte_29945D7D8);
    if (SHIBYTE(v30) < 0)
    {
      sub_29922C89C(&v56, v29[0], v29[1]);
    }

    else
    {
      v56 = *v29;
      v57 = v30;
    }

    v58 = 4;
    sub_299217DF0(&v27, L"昨日");
    if (SHIBYTE(v28) < 0)
    {
      sub_29922C89C(&v59, v27, *(&v27 + 1));
    }

    else
    {
      v59 = v27;
      v60 = v28;
    }

    v61 = 255;
    sub_299217DF0(v25, byte_29945D7E2);
    if (SHIBYTE(v26) < 0)
    {
      sub_29922C89C(&v62, v25[0], v25[1]);
    }

    else
    {
      v62 = *v25;
      v63 = v26;
    }

    v64 = 254;
    sub_299217DF0(&v23, byte_29945D7EA);
    if (SHIBYTE(v24) < 0)
    {
      sub_29922C89C(&v65, v23, *(&v23 + 1));
    }

    else
    {
      v65 = v23;
      v66 = v24;
    }

    v67 = 256;
    sub_299217DF0(v21, "eg\bg");
    if (SHIBYTE(v22) < 0)
    {
      sub_29922C89C(&v68, v21[0], v21[1]);
    }

    else
    {
      v68 = *v21;
      v69 = v22;
    }

    v70 = 257;
    sub_299217DF0(&v19, byte_29945D7F6);
    if (SHIBYTE(v20) < 0)
    {
      sub_29922C89C(&v71, v19, *(&v19 + 1));
    }

    else
    {
      v71 = v19;
      v72 = v20;
    }

    v73 = 258;
    sub_299217DF0(v17, "HQ\bg");
    if (SHIBYTE(v18) < 0)
    {
      sub_29922C89C(&v74, v17[0], v17[1]);
    }

    else
    {
      v74 = *v17;
      v75 = v18;
    }

    v76 = 511;
    sub_299217DF0(&v15, aHq);
    if (SHIBYTE(v16) < 0)
    {
      sub_29922C89C(&v77, v15, *(&v15 + 1));
    }

    else
    {
      v77 = v15;
      v78 = v16;
    }

    v79 = 510;
    sub_299217DF0(v13, byte_29945D80C);
    if (SHIBYTE(v14) < 0)
    {
      sub_29922C89C(&v80, v13[0], v13[1]);
    }

    else
    {
      v80 = *v13;
      v81 = v14;
    }

    v82 = 512;
    sub_299217DF0(v11, "egt^");
    if (SHIBYTE(v12) < 0)
    {
      sub_29922C89C(&v83, v11[0], v11[1]);
    }

    else
    {
      v83 = *v11;
      v84 = v12;
    }

    v85 = 513;
    sub_299217DF0(v9, byte_29945D818);
    if (SHIBYTE(v10) < 0)
    {
      sub_29922C89C(&v86, v9[0], v9[1]);
    }

    else
    {
      v86 = *v9;
      v87 = v10;
    }

    v88 = 514;
    sub_299217DF0(v7, byte_29945D820);
    if (SHIBYTE(v8) < 0)
    {
      sub_29922C89C(&v89, v7[0], v7[1]);
    }

    else
    {
      v89 = *v7;
      v90 = v8;
    }

    v91 = 767;
    sub_299217DF0(v5, "(ft^");
    if (SHIBYTE(v6) < 0)
    {
      sub_29922C89C(&v92, v5[0], v5[1]);
    }

    else
    {
      v92 = *v5;
      v93 = v6;
    }

    v94 = 767;
    sub_299217DF0(v3, byte_29945D82C);
    if (SHIBYTE(v4) < 0)
    {
      sub_29922C89C(&v95, v3[0], v3[1]);
    }

    else
    {
      v95 = *v3;
      v96 = v4;
    }

    v97 = 766;
    sub_299217DF0(__p, "HQ");
    if (SHIBYTE(v2) < 0)
    {
      sub_29922C89C(&v98, __p[0], __p[1]);
    }

    else
    {
      v98 = *__p;
      v99 = v2;
    }

    v100 = 765;
    sub_2992DF064(&v41, 20);
    v0 = 80;
    do
    {
      if (SHIBYTE(__dst[v0 + 1]) < 0)
      {
        operator delete(__dst[v0 - 1]);
      }

      v0 -= 4;
    }

    while (v0 * 8);
    if (SHIBYTE(v2) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v4) < 0)
    {
      operator delete(v3[0]);
    }

    if (SHIBYTE(v6) < 0)
    {
      operator delete(v5[0]);
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[0]);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33[0]);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(v37[0]);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(__dst[0]);
    }

    __cxa_atexit(sub_2992DF550, &xmmword_2A1461EE0, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460BE8);
  }
}

void sub_2992DE160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a65 < 0)
  {
    operator delete(a63);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  if (a69 < 0)
  {
    operator delete(a68);
  }

  if (a71 < 0)
  {
    operator delete(a70);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  if (a79 < 0)
  {
    operator delete(a78);
  }

  if (a81 < 0)
  {
    operator delete(a80);
  }

  if (a83 < 0)
  {
    operator delete(a82);
  }

  if (a85 < 0)
  {
    operator delete(a84);
  }

  while (v86 != &a86)
  {
    v88 = *(v86 - 9);
    v86 -= 4;
    if (v88 < 0)
    {
      operator delete(*v86);
    }
  }

  __cxa_guard_abort(&qword_2A1460BE8);
  _Unwind_Resume(a1);
}

unsigned __int16 *sub_2992DE460(unsigned __int16 *a1)
{
  v2 = sub_29923AF34(&xmmword_2A1461EE0, a1);
  v3 = *(&xmmword_2A1461EE0 + 1);
  if (!*(&xmmword_2A1461EE0 + 1))
  {
    return 0;
  }

  v4 = v2;
  v5 = vcnt_s8(*(&xmmword_2A1461EE0 + 8));
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = v2;
    if (v2 >= *(&xmmword_2A1461EE0 + 1))
    {
      v7 = v2 % *(&xmmword_2A1461EE0 + 1);
    }
  }

  else
  {
    v7 = (*(&xmmword_2A1461EE0 + 1) - 1) & v2;
  }

  v8 = *(xmmword_2A1461EE0 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = *(i + 1);
    if (v4 == v10)
    {
      if (sub_29923AF78(&xmmword_2A1461EE0, i + 8, a1))
      {
        return i;
      }
    }

    else
    {
      if (v6 > 1)
      {
        if (v10 >= v3)
        {
          v10 %= v3;
        }
      }

      else
      {
        v10 &= v3 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

CFMutableArrayRef sub_2992DE574(const void *a1, const char *Mutable, uint64_t a3, uint64_t a4)
{
  v5 = Mutable;
  if ((atomic_load_explicit(&qword_2A1460BF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460BF8))
  {
    qword_2A1460BF0 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x29EDB8DE0], Mutable, @"ja_JP", a4);
    __cxa_guard_release(&qword_2A1460BF8);
  }

  if ((atomic_load_explicit(&qword_2A1460C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460C08))
  {
    qword_2A1460C00 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x29EDB8DE0], Mutable, @"en_US", a4);
    __cxa_guard_release(&qword_2A1460C08);
  }

  if (qword_2A1460C48 != -1)
  {
    dispatch_once(&qword_2A1460C48, &unk_2A1F6E2D8);
  }

  objc_msgSend_setYear_(qword_2A1460C10, Mutable, 0x7FFFFFFFFFFFFFFFLL, a4);
  objc_msgSend_setMonth_(qword_2A1460C10, v7, 0x7FFFFFFFFFFFFFFFLL, v8);
  objc_msgSend_setDay_(qword_2A1460C10, v9, 0x7FFFFFFFFFFFFFFFLL, v10);
  if (v5)
  {
    v11 = qword_2A1460C10;
    v138[0] = a1;
    v138[1] = v5;
    sub_2992DD9A4();
    sub_29923A9CC(v138, __p);
    v15 = sub_2992DE460(__p);
    if (v137 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15)
    {
      v13 = *(v15 + 40);
      v16 = *(v15 + 41);
      if (v16 == 2)
      {
        objc_msgSend_setYear_(v11, v12, v13, v14);
      }

      else if (v16 == 1)
      {
        objc_msgSend_setMonth_(v11, v12, v13, v14);
      }

      else if (!*(v15 + 41))
      {
        objc_msgSend_setDay_(v11, v12, v13, v14);
      }
    }

    v17 = MEMORY[0x29EDB8CB0];
    if (!a3)
    {
      if (sub_299277A3C("MECABRA_TEST"))
      {
        if ((atomic_load_explicit(&qword_2A1460C58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460C58))
        {
          qword_2A1460C50 = objc_alloc_init(MEMORY[0x29EDB8DB8]);
          __cxa_guard_release(&qword_2A1460C58);
        }

        objc_msgSend_setYear_(qword_2A1460C50, v18, 2014, v20);
        objc_msgSend_setMonth_(qword_2A1460C50, v21, 5, v22);
        objc_msgSend_setDay_(qword_2A1460C50, v23, 30, v24);
        v27 = objc_msgSend_calendarWithIdentifier_(MEMORY[0x29EDB8D98], v25, *v17, v26);
        v30 = objc_msgSend_dateFromComponents_(v27, v28, qword_2A1460C50, v29);
      }

      else
      {
        v30 = objc_msgSend_date(MEMORY[0x29EDB8DB0], v18, v19, v20);
      }

      a3 = v30;
    }

    if (objc_msgSend_day(qword_2A1460C10, v12, v13, v14) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_month(qword_2A1460C10, v31, v32, v33) == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_year(qword_2A1460C10, v34, v35, v36) == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    v5 = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 6, MEMORY[0x29EDB9000]);
    v39 = objc_msgSend_calendarWithIdentifier_(MEMORY[0x29EDB8D98], v37, *v17, v38);
    v41 = objc_msgSend_dateByAddingComponents_toDate_options_(v39, v40, qword_2A1460C10, a3, 0);
    if (objc_msgSend_day(qword_2A1460C10, v42, v43, v44) != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_setCalendar_(qword_2A1460C18, v45, qword_2A1460C20, v47);
      objc_msgSend_setDateFormat_(qword_2A1460C18, v79, @"M/d", v80);
      v83 = objc_msgSend_stringFromDate_(qword_2A1460C18, v81, v41, v82);
      CFArrayAppendValue(v5, v83);
      objc_msgSend_setDateStyle_(qword_2A1460C18, v84, 1, v85);
      v88 = objc_msgSend_stringFromDate_(qword_2A1460C18, v86, v41, v87);
      CFArrayAppendValue(v5, v88);
      objc_msgSend_setDateFormat_(qword_2A1460C18, v89, @"M月d日(E)", v90);
      v93 = objc_msgSend_stringFromDate_(qword_2A1460C18, v91, v41, v92);
      CFArrayAppendValue(v5, v93);
      objc_msgSend_setDateStyle_(qword_2A1460C18, v94, 3, v95);
      v98 = objc_msgSend_stringFromDate_(qword_2A1460C18, v96, v41, v97);
      CFArrayAppendValue(v5, v98);
      objc_msgSend_setCalendar_(qword_2A1460C18, v99, qword_2A1460C28, v100);
      objc_msgSend_setDateStyle_(qword_2A1460C18, v101, 3, v102);
      objc_msgSend_setDateFormat_(qword_2A1460C18, v103, @"Gy年M月d日", v104);
      v107 = objc_msgSend_stringFromDate_(qword_2A1460C18, v105, v41, v106);
      CFArrayAppendValue(v5, v107);
      objc_msgSend_setDateFormat_(qword_2A1460C18, v108, @"GGGGGyy/MM/dd", v109);
      v112 = objc_msgSend_stringFromDate_(qword_2A1460C18, v110, v41, v111);
      CFArrayAppendValue(v5, v112);
      objc_msgSend_setDateFormat_(qword_2A1460C18, v113, @"EEEE", v114);
      v78 = objc_msgSend_stringFromDate_(qword_2A1460C18, v115, v41, v116);
      goto LABEL_32;
    }

    if (objc_msgSend_month(qword_2A1460C10, v45, v46, v47) != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_setCalendar_(qword_2A1460C18, v48, qword_2A1460C20, v50);
      objc_msgSend_setDateFormat_(qword_2A1460C18, v117, @"M月", v118);
      v121 = objc_msgSend_stringFromDate_(qword_2A1460C18, v119, v41, v120);
      CFArrayAppendValue(v5, v121);
      objc_msgSend_setLocale_(qword_2A1460C18, v122, qword_2A1460C00, v123);
      objc_msgSend_setDateFormat_(qword_2A1460C18, v124, @"MMMM", v125);
      v128 = objc_msgSend_stringFromDate_(qword_2A1460C18, v126, v41, v127);
      CFArrayAppendValue(v5, v128);
      objc_msgSend_setLocale_(qword_2A1460C18, v129, qword_2A1460BF0, v130);
      v132 = objc_msgSend_component_fromDate_(qword_2A1460C20, v131, 8, v41);
      v78 = objc_msgSend_objectAtIndex_(qword_2A1460C30, v133, v132 - 1, v134);
      goto LABEL_32;
    }

    if (objc_msgSend_year(qword_2A1460C10, v48, v49, v50) != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_setCalendar_(qword_2A1460C18, v51, qword_2A1460C20, v52);
      objc_msgSend_setDateFormat_(qword_2A1460C18, v53, @"y年", v54);
      v57 = objc_msgSend_stringFromDate_(qword_2A1460C18, v55, v41, v56);
      CFArrayAppendValue(v5, v57);
      objc_msgSend_setCalendar_(qword_2A1460C18, v58, qword_2A1460C28, v59);
      objc_msgSend_setDateFormat_(qword_2A1460C18, v60, @"Gy年", v61);
      v64 = objc_msgSend_stringFromDate_(qword_2A1460C18, v62, v41, v63);
      CFArrayAppendValue(v5, v64);
      objc_msgSend_setDateFormat_(qword_2A1460C18, v65, @"GGGGGy", v66);
      v69 = objc_msgSend_stringFromDate_(qword_2A1460C18, v67, v41, v68);
      CFArrayAppendValue(v5, v69);
      v71 = objc_msgSend_component_fromDate_(qword_2A1460C20, v70, 4, v41);
      if (v71 >= 1)
      {
        v74 = (v71 + 8) % 0xCuLL;
        v75 = objc_msgSend_objectAtIndexedSubscript_(qword_2A1460C38, v72, v74, v73);
        CFArrayAppendValue(v5, v75);
        v78 = objc_msgSend_objectAtIndexedSubscript_(qword_2A1460C40, v76, v74, v77);
LABEL_32:
        CFArrayAppendValue(v5, v78);
      }
    }
  }

  return v5;
}

void *sub_2992DEB84()
{
  qword_2A1460C10 = objc_alloc_init(MEMORY[0x29EDB8DB8]);
  qword_2A1460C20 = objc_msgSend_calendarWithIdentifier_(MEMORY[0x29EDB8D98], v0, *MEMORY[0x29EDB8CB0], v1);
  qword_2A1460C28 = objc_msgSend_calendarWithIdentifier_(MEMORY[0x29EDB8D98], v2, *MEMORY[0x29EDB8CB8], v3);
  qword_2A1460C18 = objc_alloc_init(MEMORY[0x29EDB9F78]);
  objc_msgSend_setLocale_(qword_2A1460C18, v4, qword_2A1460BF0, v5);
  objc_msgSend_setFormatterBehavior_(qword_2A1460C18, v6, 1040, v7);
  objc_msgSend_setTimeStyle_(qword_2A1460C18, v8, 0, v9);
  qword_2A1460C30 = &unk_2A1F83700;
  qword_2A1460C38 = &unk_2A1F83718;
  result = &unk_2A1F83730;
  qword_2A1460C40 = result;
  return result;
}

void sub_2992DEC54(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = v4 - 2;
  if (v4 - 2 <= 2)
  {
    v8 = *a1;
    if (v4 <= 2)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    v33 = v9;
    if (v4 == 4)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    __p = 0;
    v39 = 0;
    v40 = 0;
    if (v4 >= 3)
    {
      if (a2)
      {
        v11 = 58;
      }

      else
      {
        v11 = -230;
      }

      v36 = v11;
      v12 = 3 - v10;
      do
      {
        if (v5 + v12 == 3)
        {
          v13 = 100;
        }

        else
        {
          v13 = 10;
        }

        if (v5 + v12 == 3 && a3 / v13 <= 24 && a3 % v13 <= 59)
        {
          v39 = __p;
          if (v4 == 4)
          {
            sub_29922E664(&__p, v8);
            v14 = 1;
          }

          else
          {
            v14 = 0;
          }

          v15 = &v8[v14];
          sub_29922E664(&__p, v15);
          v37 = v36;
          sub_29922E664(&__p, &v37);
          sub_29922E664(&__p, v15 + 1);
          sub_29922E664(&__p, v15 + 2);
          (*(a4 + 16))(a4);
          v39 = __p;
          if (v4 == 4)
          {
            sub_29922E664(&__p, v8);
            v16 = 1;
          }

          else
          {
            v16 = 0;
          }

          v17 = &v8[v16];
          sub_29922E664(&__p, v17);
          v37 = 26178;
          sub_29922E664(&__p, &v37);
          sub_29922E664(&__p, v17 + 1);
          sub_29922E664(&__p, v17 + 2);
          v37 = 20998;
          sub_29922E664(&__p, &v37);
          (*(a4 + 16))(a4);
        }

        --v12;
      }

      while (v12);
    }

    if (a2)
    {
      v18 = 47;
    }

    else
    {
      v18 = -241;
    }

    v35 = v18;
    v19 = v33;
    if (v10 > v33)
    {
      v19 = v10;
    }

    v20 = v19 + 1;
    do
    {
      if (v5 == v10)
      {
        v21 = 100;
      }

      else
      {
        v21 = 10;
      }

      v22 = *v8;
      if (v22 != 48 && v22 != 65296)
      {
        v23 = v8[v10];
        if (v23 != 48)
        {
          v24 = a3 / v21;
          v25 = a3 % v21;
          v26 = a3 / v21 - 1;
          v27 = v25 < 1 || v26 > 0xB;
          v28 = v27 || v23 == 65296;
          if (!v28 && v25 <= word_2994139F2[v26])
          {
            v39 = __p;
            if (v24 < 0xA)
            {
              v29 = 0;
            }

            else
            {
              sub_29922E664(&__p, v8);
              v29 = 1;
            }

            sub_29922E664(&__p, &v8[v29]);
            v37 = v35;
            sub_29922E664(&__p, &v37);
            v30 = v29 + 1;
            if (v25 >= 0xA)
            {
              sub_29922E664(&__p, &v8[v30]);
              v30 = v29 | 2;
            }

            sub_29922E664(&__p, &v8[v30]);
            (*(a4 + 16))(a4);
            v39 = __p;
            if (v24 < 0xA)
            {
              v31 = 0;
            }

            else
            {
              sub_29922E664(&__p, v8);
              v31 = 1;
            }

            sub_29922E664(&__p, &v8[v31]);
            v37 = 26376;
            sub_29922E664(&__p, &v37);
            v32 = v31 + 1;
            if (v25 >= 0xA)
            {
              sub_29922E664(&__p, &v8[v32]);
              v32 = v31 | 2;
            }

            sub_29922E664(&__p, &v8[v32]);
            v37 = 26085;
            sub_29922E664(&__p, &v37);
            (*(a4 + 16))(a4);
          }
        }
      }

      ++v10;
    }

    while (v20 != v10);
    if (__p)
    {
      v39 = __p;
      operator delete(__p);
    }
  }
}

void sub_2992DF02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2992DF064(_BOOL8 result, uint64_t a2)
{
  xmmword_2A1461EE0 = 0u;
  *&qword_2A1461EF0 = 0u;
  dword_2A1461F00 = 1065353216;
  if (a2)
  {
    v2 = result;
    v12 = (result + 32 * a2);
    do
    {
      v3 = sub_29923AF34(&xmmword_2A1461EE0, v2);
      v4 = v3;
      v5 = *(&xmmword_2A1461EE0 + 1);
      if (!*(&xmmword_2A1461EE0 + 1))
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(*(&xmmword_2A1461EE0 + 8));
      v6.i16[0] = vaddlv_u8(v6);
      v7 = v6.u32[0];
      if (v6.u32[0] > 1uLL)
      {
        v8 = v3;
        if (v3 >= *(&xmmword_2A1461EE0 + 1))
        {
          v8 = v3 % *(&xmmword_2A1461EE0 + 1);
        }
      }

      else
      {
        v8 = (*(&xmmword_2A1461EE0 + 1) - 1) & v3;
      }

      v9 = *(xmmword_2A1461EE0 + 8 * v8);
      if (!v9 || (v10 = *v9) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v11 = *(v10 + 1);
        if (v11 == v4)
        {
          break;
        }

        if (v7 > 1)
        {
          if (v11 >= v5)
          {
            v11 %= v5;
          }
        }

        else
        {
          v11 &= v5 - 1;
        }

        if (v11 != v8)
        {
          goto LABEL_19;
        }

LABEL_18:
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      result = sub_29923AF78(&xmmword_2A1461EE0, v10 + 8, v2);
      if (!result)
      {
        goto LABEL_18;
      }

      v2 += 16;
    }

    while (v2 != v12);
  }

  return result;
}

void sub_2992DF520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992DF554(va);
  sub_29923B058(&xmmword_2A1461EE0);
  _Unwind_Resume(a1);
}

uint64_t *sub_2992DF554(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1 && *(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    operator delete(v2);
  }

  return a1;
}

double sub_2992DF5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a2 + 544))(a2);
  if (v6)
  {
    v7 = v5;
    v8 = 2 * v6;
    while (1)
    {
      v9 = *v7;
      v10 = u_charType(v9);
      v11 = v9 != 12295 && v10 == 10;
      v12 = v11;
      v13 = 1;
      if (v10 == 11 || v12 || (v9 - 13056) < 0x7B || (v9 - 13183) <= 0x80)
      {
        break;
      }

      ++v7;
      v8 -= 2;
      if (!v8)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v13 = 0;
  }

  v14 = sub_299237120();
  v15 = v14;
  v16 = *(a3 + 8);
  v17 = *a3;
  v18 = a1;
  if (*a3 == v16)
  {
LABEL_24:
    v21 = 0.0;
    if (!v13)
    {
      return v21;
    }
  }

  else
  {
    v19 = *(*(a1 + 8) + 8);
    v20 = *a3;
    do
    {
      if (*(v19 + 60) == *v20 || *(v19 + 56) == *v20)
      {
        return v14[14];
      }

      ++v20;
    }

    while (v20 != v16);
    while (*v17)
    {
      if (++v17 == v16)
      {
        goto LABEL_24;
      }
    }
  }

  if (!(*(*a2 + 48))(a2))
  {
    return 0.0;
  }

  v22 = 0;
  v21 = 0.0;
  v68 = v15;
  do
  {
    v23 = (*(*a2 + 560))(a2, v22);
    if ((*v23 - 3) < 2)
    {
      goto LABEL_123;
    }

    if (*v23 == 9)
    {
      v21 = v21 + v15[13];
      goto LABEL_123;
    }

    v24 = v23;
    v25 = sub_2992C71F4(a2, v22);
    v71 = v26;
    v72 = v25;
    (*(**(*(v18 + 8) + 8) + 40))(&__str);
    v27 = 0;
    v28 = 0;
    v73 = 0;
    v29 = 0;
    v74 = 0;
    v75 = 0;
LABEL_31:
    v30 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    while ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (v28 >= HIBYTE(__str.__r_.__value_.__r.__words[2]))
      {
        goto LABEL_92;
      }

      v33 = v28;
      LODWORD(v34) = v28 + 1;
      v35 = __str.__r_.__value_.__s.__data_[v28];
      if ((__str.__r_.__value_.__s.__data_[v28] & 0x80000000) == 0)
      {
LABEL_43:
        v28 = v34;
        goto LABEL_67;
      }

      v36 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
LABEL_45:
      if (v36 == v34)
      {
        goto LABEL_90;
      }

      v37 = v34;
      if (v35 < 0xE0)
      {
        if (v35 < 0xC2)
        {
          goto LABEL_90;
        }

        v40 = v35 & 0x1F;
      }

      else
      {
        if (v35 > 0xEF)
        {
          if (v35 > 0xF4)
          {
            goto LABEL_90;
          }

          v41 = p_str->__r_.__value_.__s.__data_[v34];
          if (((byte_299413A20[v41 >> 4] >> (v35 + 16)) & 1) == 0)
          {
            goto LABEL_90;
          }

          v34 = v28 + 2;
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            v42 = __str.__r_.__value_.__r.__words[0];
            if (__str.__r_.__value_.__l.__size_ == v34)
            {
              goto LABEL_90;
            }
          }

          else
          {
            if (v34 == HIBYTE(__str.__r_.__value_.__r.__words[2]))
            {
              goto LABEL_90;
            }

            v42 = &__str;
          }

          v39 = v42->__r_.__value_.__s.__data_[v34] ^ 0x80;
          if (v39 > 0x3F)
          {
LABEL_90:
            v54 = 0.0;
            if ((v27 & 1) == 0)
            {
              goto LABEL_120;
            }

            v55 = v75 + 1;
            goto LABEL_93;
          }

          v38 = v41 & 0x3F | ((v35 - 240) << 6);
        }

        else
        {
          v38 = v35 & 0xF;
          if (((a00000000000000[v35 & 0xF] >> (p_str->__r_.__value_.__s.__data_[v34] >> 5)) & 1) == 0)
          {
            goto LABEL_90;
          }

          v39 = p_str->__r_.__value_.__s.__data_[v34] & 0x3F;
        }

        LODWORD(v34) = v34 + 1;
        if (size == v34)
        {
          goto LABEL_90;
        }

        v37 = v34;
        v40 = v39 | (v38 << 6);
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &__str;
      }

      else
      {
        v43 = __str.__r_.__value_.__r.__words[0];
      }

      v44 = v43->__r_.__value_.__s.__data_[v37] ^ 0x80;
      if (v44 > 0x3F)
      {
        goto LABEL_90;
      }

      v35 = v44 | (v40 << 6);
      v28 = v34 + 1;
LABEL_67:
      if (v35 != 32)
      {
        std::string::basic_string(&v76, &__str, v33, v28 - v33, v78);
        if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v76;
        }

        else
        {
          v45 = v76.__r_.__value_.__r.__words[0];
        }

        if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = HIBYTE(v76.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v46 = v76.__r_.__value_.__l.__size_;
        }

        v47 = *(*(*(v18 + 8) + 8) + 8);
        v48 = (*(*v47 + 504))(v47, v45, v46);
        v69 = v48 == 0;
        if (v48)
        {
          v49 = 0;
        }

        else
        {
          v50 = u_charType(v35);
          v49 = 1;
          if (v50 != 27 && v35 - 65038 >= 2 && v35 != 8205)
          {
            v49 = v50 == 26;
          }

          if (!v73 || !v49)
          {
            v51 = sub_2992C7FAC(v35);
            v52 = v75;
            if (v51 == -1)
            {
              v52 = v75 + 1;
            }

            v75 = v52;
          }

          v53 = v74;
          if (v29)
          {
            v53 = v74 + (!v73 || !v49);
          }

          v74 = v53;
          v18 = a1;
        }

        if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v76.__r_.__value_.__l.__data_);
        }

        v29 = v69;
        v27 |= v69;
        v73 = v49;
        v15 = v68;
        goto LABEL_31;
      }
    }

    if (v28 < SLODWORD(__str.__r_.__value_.__r.__words[1]))
    {
      v33 = v28;
      LODWORD(v34) = v28 + 1;
      v35 = *(__str.__r_.__value_.__r.__words[0] + v28);
      if ((*(__str.__r_.__value_.__r.__words[0] + v28) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      v36 = __str.__r_.__value_.__l.__size_;
      goto LABEL_45;
    }

LABEL_92:
    v54 = 0.0;
    v55 = v75;
    if ((v27 & 1) == 0)
    {
      goto LABEL_120;
    }

LABEL_93:
    v56 = v24[1];
    v57 = sub_299237120();
    v58 = *v72;
    if (v58 == 9787 || (u_charType(v58) - 19) > 0xA)
    {
      if (v56 < 18001)
      {
        v59 = 0.0;
        if (v56 >= 3001)
        {
          v59 = (v56 - 3000) / 15000.0 * v57[8] + 0.0;
        }
      }

      else
      {
        v59 = v57[8] + 0.0;
      }

      if (!v71)
      {
        goto LABEL_119;
      }

      if (v71 == 1)
      {
        v60 = v57[11];
      }

      else
      {
        v61 = *v72;
        if ((v61 - 12353) < 0x56 || v61 == 12316 || v61 == 12540)
        {
          goto LABEL_119;
        }

        v62 = 0;
        for (i = 1; i != v71; ++i)
        {
          v64 = v72[i];
          if ((v64 - 12353) >= 0x56 && v64 != 12540 && v64 != 12316)
          {
            break;
          }

          v62 = i >= v71 - 1;
        }

        if (!v62)
        {
          goto LABEL_119;
        }

        v60 = v57[12];
      }

      v59 = v59 + v60;
    }

    else
    {
      v59 = v57[7];
    }

LABEL_119:
    v54 = v59 + v55 * v15[9] + v74 * v15[10];
    v30 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
LABEL_120:
    if (v30 < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v21 = v21 + v54;
LABEL_123:
    ++v22;
  }

  while (v22 < (*(*a2 + 48))(a2));
  return v21;
}

void sub_2992DFC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992DFCA4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v101 = *MEMORY[0x29EDCA608];
  v93 = -1;
  v8 = sub_299237120();
  v9 = v8;
  v10 = *(a2 + 48);
  if ((*(a2 + 56) - v10) >> 3 >= *(v8 + 156))
  {
    v11 = *(v8 + 156);
  }

  else
  {
    v11 = (*(a2 + 56) - v10) >> 3;
  }

  v12 = *(a1 + 8);
  if (v12 && ((*(*v12 + 48))(v12) & 1) != 0)
  {
    (*(**(a1 + 8) + 32))(*(a1 + 8), a3);
    v90 = 0;
    v91 = 0;
    v92 = 0;
    sub_29928EF5C(&v90, v11);
    v82 = v9;
    v83 = a1;
    v80 = a3;
    v81 = a4;
    sub_29920DF4C(v89, (*(a2 + 56) - *(a2 + 48)) >> 3, &v93);
    v13 = *(a2 + 48);
    v85 = a2;
    if (*(a2 + 56) != v13)
    {
      v14 = 0;
      do
      {
        v15 = *(v13 + 8 * v14);
        if ((*(*v15 + 408))(v15) == 1 || 0xAAAAAAAAAAAAAAABLL * ((v91 - v90) >> 3) >= v11)
        {
          break;
        }

        v16 = (*(*v15 + 96))(v15);
        v17 = (*(*v15 + 408))(v15);
        if (v16 != 71 && (v16 != 76 && v16 != 74 || v17))
        {
          *(v89[0] + v14) = 0xAAAAAAAAAAAAAAABLL * ((v91 - v90) >> 3);
          (*(**(a1 + 8) + 16))(__p);
          v18 = v91;
          if (v91 >= v92)
          {
            v19 = 0xAAAAAAAAAAAAAAABLL * ((v91 - v90) >> 3);
            v20 = v19 + 1;
            if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_299212A8C();
            }

            if (0x5555555555555556 * ((v92 - v90) >> 3) > v20)
            {
              v20 = 0x5555555555555556 * ((v92 - v90) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v92 - v90) >> 3) >= 0x555555555555555)
            {
              v21 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v21 = v20;
            }

            *v96 = &v90;
            if (v21)
            {
              sub_29920DDE0(&v90, v21);
            }

            v22 = (8 * ((v91 - v90) >> 3));
            *v22 = 0;
            v22[1] = 0;
            v22[2] = 0;
            *v22 = *__p;
            v22[2] = v88;
            __p[0] = 0;
            __p[1] = 0;
            v88 = 0;
            v23 = 24 * v19 + 24;
            v24 = (24 * v19 - (v91 - v90));
            memcpy(v22 - (v91 - v90), v90, v91 - v90);
            v25 = v90;
            v26 = v92;
            v90 = v24;
            v91 = v23;
            v92 = 0;
            *&buf[16] = v25;
            v95 = v26;
            *buf = v25;
            *&buf[8] = v25;
            sub_29920DE38(buf);
            v91 = v23;
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          else
          {
            *v91 = 0;
            *(v18 + 1) = 0;
            *(v18 + 2) = 0;
            *v18 = *__p;
            *(v18 + 2) = v88;
            v91 = v18 + 24;
          }
        }

        ++v14;
        v13 = *(a2 + 48);
      }

      while (v14 < (*(a2 + 56) - v13) >> 3);
    }

    v27 = sub_2993652F8(0xCu);
    v28 = v81;
    v29 = a2;
    v30 = a1;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v78 = (*(**(a1 + 8) + 56))(*(a1 + 8));
      v79 = "Montreal";
      if (v78 == 1)
      {
        v79 = "RNNLM";
      }

      *buf = 136315138;
      *&buf[4] = v79;
      _os_log_debug_impl(&dword_29918C000, v27, OS_LOG_TYPE_DEBUG, "[Inference Engine: %s]", buf, 0xCu);
    }

    (*(**(a1 + 8) + 64))(__p);
    v31 = v82;
    v32 = (*(a2 + 56) - *(a2 + 48)) >> 3;
    *buf = 0;
    sub_2991DEB68(v81, v32, buf);
    v33 = v80;
    v34 = *(a2 + 48);
    if (*(a2 + 56) != v34)
    {
      v35 = 0;
      while (1)
      {
        v36 = *(v34 + 8 * v35);
        if ((*(*v36 + 408))(v36) == 1)
        {
          goto LABEL_99;
        }

        if (((*(*v36 + 96))(v36) == 76 || (*(*v36 + 96))(v36) == 74) && !(*(*v36 + 408))(v36))
        {
          (*(**(v30 + 8) + 16))(buf);
          v40 = sub_2992DF5C0(v30, v36, buf);
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          v37 = 0.0;
          goto LABEL_43;
        }

        if ((*(*v36 + 96))(v36) == 71)
        {
          break;
        }

        v38 = *(v89[0] + v35);
        if (v38 == -1)
        {
          v37 = v31[5];
          goto LABEL_42;
        }

        v39 = *(__p[0] + v38);
        v40 = sub_2992DF5C0(v30, v36, &v90[24 * v38]);
        v37 = v39;
LABEL_43:
        v41 = 0.0;
        if ((*(*v36 + 96))(v36) != 71)
        {
          v41 = (*(**(v30 + 16) + 16))(*(v30 + 16), v33, v36) * 0.1;
        }

        if ((**(v30 + 24) & 0x6000002) == 0x4000002)
        {
          v42 = 0.0;
        }

        else
        {
          v42 = v31[3];
        }

        v43 = (*(*v36 + 48))(v36);
        if (v43)
        {
          v44 = v43 - 1;
          if (*(*(*v36 + 560))(v36, v43 - 1) == 8 || *(*(*v36 + 560))(v36, v44) == 10)
          {
            v42 = v31[4];
            v45 = (*(*v36 + 544))(v36);
            v47 = v46;
            v48 = (*(*v36 + 552))(v36);
            v84 = v49;
            if (v47 < 5 || (v50 = *(v29 + 48), *(v29 + 56) == v50))
            {
LABEL_85:
              v31 = v82;
            }

            else
            {
              v51 = v48;
              v52 = 0;
              while (1)
              {
                v53 = *(v50 + 8 * v52);
                if (v53 != v36 && (*(*v53 + 408))(v53) != 1)
                {
                  v54 = (*(*v53 + 544))(v53);
                  v56 = v55;
                  v57 = (*(*v53 + 552))(v53);
                  v59 = v45 || v56 == 0;
                  v60 = v59;
                  v61 = v47 >= v56 && v56 + 2 >= v47;
                  if (v61 && v60)
                  {
                    v63 = v57;
                    v64 = v58;
                    v65 = memcmp(v45, v54, 2 * v56);
                    v66 = v51 || v64 == 0;
                    v67 = v66;
                    v68 = !v65 && v84 >= v64;
                    v69 = !v68 || !v67;
                    if (!v69 && !memcmp(v51, v63, 2 * v64))
                    {
                      break;
                    }
                  }
                }

                ++v52;
                v29 = v85;
                v50 = *(v85 + 48);
                if (v52 >= (*(v85 + 56) - v50) >> 3)
                {
                  v33 = v80;
                  v28 = v81;
                  v30 = v83;
                  goto LABEL_85;
                }
              }

              v77 = *(v89[0] + v52);
              v31 = v82;
              if (v77 != -1 && v37 > *(__p[0] + v77))
              {
                v37 = *(__p[0] + v77);
              }

              v33 = v80;
              v28 = v81;
              v29 = v85;
              v30 = v83;
            }
          }
        }

        v70 = v42 * v36[55] / v31[2];
        *(*v28 + 8 * v35) = v41 + v40 + v37 - v70;
        v71 = sub_2993652F8(0xCu);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
        {
          v72 = sub_2993652F8(0xCu);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
          {
            v73 = (*(*v36 + 544))(v36);
            sub_299277B3C(&v86, v73, v74);
            v75 = &v86;
            if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v75 = v86.__r_.__value_.__r.__words[0];
            }

            v76 = *(*v28 + 8 * v35);
            *buf = 136316418;
            *&buf[4] = v75;
            *&buf[12] = 2048;
            *&buf[14] = v37;
            *&buf[22] = 2048;
            v95 = v76;
            *v96 = 2048;
            *&v96[2] = -v40;
            v97 = 2048;
            v98 = -v41;
            v99 = 2048;
            v100 = v70;
            _os_log_debug_impl(&dword_29918C000, v72, OS_LOG_TYPE_DEBUG, "[%s] Adjust Static LM Score: %.3f -> %.3f Penalties: (UNK: %.3f, LM: %.3f, Match: %.3f)", buf, 0x3Eu);
            if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v86.__r_.__value_.__l.__data_);
            }
          }
        }

        ++v35;
        v34 = *(v29 + 48);
        if (v35 >= (*(v29 + 56) - v34) >> 3)
        {
          goto LABEL_99;
        }
      }

      v37 = (*(*v36 + 392))(v36);
LABEL_42:
      v40 = 0.0;
      goto LABEL_43;
    }

LABEL_99:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v89[0])
    {
      v89[1] = v89[0];
      operator delete(v89[0]);
    }

    *buf = &v90;
    sub_29920E060(buf);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

void sub_2992E0814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char *__p, char *a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  __p = &a27;
  sub_29920E060(&__p);
  _Unwind_Resume(a1);
}

void sub_2992E08DC(const void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = sub_2993652F8(0xDu);
  v4 = os_signpost_id_make_with_pointer(v3, a1);
  v5 = sub_2993652F8(0xDu);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MecabraThaiInit", "ThaiEngine engine init", buf, 2u);
    }
  }

  operator new();
}

void sub_2992E0DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2992E11C0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2992E11C0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_29929234C(v2);
    MEMORY[0x29C29BFB0](v3, 0x10F0C40E34FE0DELL);
  }

  return a1;
}

void sub_2992E1208(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, const __CFArray *a5)
{
  v23 = *MEMORY[0x29EDCA608];
  v8 = sub_2993652F8(3u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = a2;
    _os_log_debug_impl(&dword_29918C000, v8, OS_LOG_TYPE_DEBUG, "[ThaiEngine::analyzeString] analysisStr: [%@]", buf, 0xCu);
  }

  ptr = 0;
  v9 = sub_2993652F8(0xDu);
  ptr = os_signpost_id_make_with_pointer(v9, &ptr);
  v10 = sub_2993652F8(0xDu);
  v11 = ptr;
  if (ptr - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v10;
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v11, "MecabraAnalyzeStringWithContext", &unk_29945DB9F, buf, 2u);
    }
  }

  (*(**(a1 + 104) + 32))(*(a1 + 104));
  sub_29932CA50(*(a1 + 104), 1);
  if (a2 && a5)
  {
    Length = CFStringGetLength(a2);
    if (Length <= CFArrayGetCount(a5))
    {
      operator new();
    }
  }

  *buf = &unk_2A1F65118;
  *&buf[8] = 0u;
  v18 = 0u;
  v19 = 1065353216;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  sub_299276BDC(a2, __p);
  sub_2993E5900(__p[0], (__p[1] - __p[0]) >> 1, 0, v15);
  sub_2992E17D0(a1, buf, v15, __p);
}

void sub_2992E1534(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  MEMORY[0x29C29BFB0](v19, 0x60C40AA6EF139, a3, a4, a5, a6, a7, a8);
  sub_2992E5624(&a9, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992E15D8(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 72) + 56))(*(a1 + 72));
  v4 = sub_2993652F8(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v12[0] = 0;
    _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[ThaiEngine::fillResultCandidateSet] Final Candidates", v12, 2u);
  }

  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  if (v5 != v6)
  {
    v7 = 0;
    do
    {
      v8 = *v5;
      v9 = v7 + 1;
      *(*v5 + 8) = v7 + 1;
      if (v7 <= 3)
      {
        (*(*v8 + 528))(v8, 12, "Autocorrected", 1);
        v8 = *v5;
      }

      *v5++ = 0;
      v10 = sub_29928A270(v8);
      (*(**(a1 + 72) + 16))(*(a1 + 72), v10);

      v7 = v9;
    }

    while (v5 != v6);
  }

  return (*(**(a1 + 72) + 64))(*(a1 + 72));
}

uint64_t sub_2992E1758(uint64_t a1)
{
  result = (*(**(a1 + 104) + 80))(*(a1 + 104));
  v3 = *(a1 + 96);
  if (v3)
  {
    result = *v3;
    if (*v3)
    {

      return MEMORY[0x2A1C680D0]();
    }
  }

  return result;
}

void sub_2992E1FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v19 = va_arg(va1, const void *);
  sub_2992E6A00(v17 - 192);
  sub_2992E3B48(va, 0);
  sub_29939B024(va1);
  _Unwind_Resume(a1);
}

void sub_2992E210C()
{
  sub_29921F128(v0 - 192);
  v1 = *(v0 - 232);
  *(v0 - 232) = 0;
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  JUMPOUT(0x2992E20D4);
}

void sub_2992E214C(void *a1, int a2)
{
  if (a2)
  {
    sub_2991EDA10(a1);
  }

  JUMPOUT(0x2992E2104);
}

void sub_2992E2164(uint64_t a1, void *a2, const __CFString *a3, const __CFArray *a4)
{
  sub_2993E5CC4(a4, v8);
  sub_299276BDC(a3, &__p);
  sub_2992E17D0(a1, a2, v8, &__p);
}

void sub_2992E220C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *__p, uint64_t *a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  a13 = &unk_2A1F65C80;
  __p = &a14;
  sub_29922CB20(&__p);
  _Unwind_Resume(a1);
}

void sub_2992E2260(uint64_t a1, const __CFString *a2, const __CFArray *a3)
{
  (*(**(a1 + 104) + 32))(*(a1 + 104));
  sub_29932CA50(*(a1 + 104), 1);
  v6 = &unk_2A1F65118;
  v7 = 0u;
  v8 = 0u;
  v9 = 1065353216;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  sub_2992E2164(a1, &v6, a2, a3);
}

uint64_t sub_2992E2370(uint64_t a1, CFArrayRef theArray, uint64_t a3, uint64_t a4)
{
  if (!theArray)
  {
    return 0;
  }

  if (!CFArrayGetCount(theArray))
  {
    sub_2992E2508(a1, a4, a3);
    sub_2992E2658(a1);
    return 1;
  }

  v8 = sub_2992C0B24(theArray);
  if (!v8)
  {
    v11 = sub_2992C0BE0(theArray);
    if (v11)
    {
      v12 = v11;
      Length = CFStringGetLength(v11);
      v10 = Length != 0;
      if (Length)
      {
        sub_2992E2508(a1, a4, a3);
        if (*(a1 + 225) == 1)
        {
          sub_2992E2260(a1, v12, theArray);
        }

        v16 = sub_2992C0E90(theArray);
        sub_2992E1208(a1, v12, v14, v15, v16);
      }

      CFRelease(v12);
      return v10;
    }

    return 0;
  }

  if (v8 != CFArrayGetCount(theArray))
  {
    return 0;
  }

  return sub_2992E2888(a1, theArray, a3, a4);
}

void sub_2992E24D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_299229F00(&a9, 0);
  sub_299219AB4(&a10, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992E2508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a2)
  {
    operator new();
  }

  v5 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
    v6 = *(a1 + 64);
  }

  else
  {
    v6 = 0;
  }

  sub_299256E88(a1 + 8, v6);
  *(*(a1 + 104) + 96) = 1;
  result = sub_2993B5454(v3, 0, 0);
  *(a1 + 56) = result;
  return result;
}

uint64_t sub_2992E2658(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  ptr = 0;
  v2 = sub_2993652F8(0xDu);
  ptr = os_signpost_id_make_with_pointer(v2, &ptr);
  v3 = sub_2993652F8(0xDu);
  v4 = ptr;
  if (ptr - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v3;
    if (os_signpost_enabled(v3))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MecabraPredictionAnalyzeWithContext", &unk_29945DB9F, &v10, 2u);
    }
  }

  (*(**(a1 + 120) + 16))(&v10);
  *buf = &unk_2A1F65CF8;
  v15 = sub_2992AD278;
  v16 = buf;
  sub_2992AB9D4(&v10, buf);
  sub_29922D72C(buf);
  sub_2992AC684(&v10, 5, "Final", 0, 1);
  sub_2992E15D8(a1, &v10);
  v6 = sub_2993652F8(0xDu);
  v7 = ptr;
  if (ptr - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v6;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v8, OS_SIGNPOST_INTERVAL_END, v7, "MecabraPredictionAnalyzeWithContext", &unk_29945DB9F, buf, 2u);
    }
  }

  v10 = &unk_2A1F65118;
  *buf = &v12;
  sub_29921EC68(buf);
  sub_29921ED28(&v11);
  return 1;
}